app.controller('postsCtrl', function ($scope, $modal, $filter, $rootScope, $routeParams, $location, $http, Data,toaster) {
	$scope.post = {};
	Data.get('posts').then(function (data) {
		$scope.posts = data.data;
	});
	
	$scope.changePostStatus = function (post) {
		post.status = (post.status == "Active" ? "Inactive" : "Active");
		Data.put("posts/" + post.id, {
			status: post.status
		});
	};
	
	$scope.deletePost = function (post) {
		if (confirm("Are you sure to remove the post")) {
			Data.delete("posts/" + post.id).then(function (result) {
				$scope.posts = _.without($scope.posts, _.findWhere($scope.posts, {
					id: post.id
				}));
			});
		}
	};
	
	$scope.open = function (p, size) {
		var modalInstance = $modal.open({
			templateUrl: 'views/postEdit.html',
			controller: 'postEditCtrl',
			size: size,
			resolve: {
				item: function () {
					return p;
				}
			}
		});
		modalInstance.result.then(function (selectedObject) {
			if (selectedObject.save == "insert") {
				$scope.posts.push(selectedObject);
				$scope.posts = $filter('orderBy')($scope.posts, 'id', 'reverse');
			} else if (selectedObject.save == "update") {
				p.content_url = selectedObject.content_url;
				p.content_what = selectedObject.content_what;
				p.content_potential = selectedObject.content_potential;
				p.html = selectedObject.html;
				p.category = selectedObject.category;
				p.title = selectedObject.title;
				p.subtitle = selectedObject.subtitle;
				p.style = selectedObject.style;
				p.class = selectedObject.class;
			}
		});
	};

	$scope.columns = [
//		{
//			text: "ID",
//			predicate: "id",
//			sortable: true,
//			dataType: "number"
//		},
		{
			text: "Category",
			predicate: "category",
			sortable: true
		},
		{
			text: "Title",
			predicate: "title",
			sortable: true
		},
//		{
//			text: "Subtitle",
//			predicate: "subtitle",
//			sortable: true
//		},
//		{
//			text: "Image",
//			predicate: "image",
//			sortable: true
//		},
//		{
//			text: "Author firstname",
//			predicate: "author_firstname",
//			sortable: true
//		},
//		{
//			text: "Author lastname",
//			predicate: "author_lastname",
//			sortable: true
//		},
//		{
//			text: "Author avatar",
//			predicate: "author_avatar",
//			sortable: true
//		},
//		{
//			text: "Submitted firstname",
//			predicate: "submitted_firstname",
//			sortable: true
//		},
//		{
//			text: "Submitted lastname",
//			predicate: "submitted_lastname",
//			sortable: true
//		},
//		{
//			text: "Submitted avatar",
//			predicate: "submitted_avatar",
//			sortable: true
//		},
//		{
//			text: "Content url",
//			predicate: "content_url",
//			sortable: true
//		},
		{
			text: "Content what",
			predicate: "content_what",
			reverse: true,
			sortable: true
		},
//		{
//			text: "Content potential",
//			predicate: "content_potential",
//			sortable: true
//		},
//		{
//			text: "HTML",
//			predicate: "html",
//			sortable: true
//		},
		{
			text: "Style",
			predicate: "style",
			reverse: true,
			sortable: true
		},
//		{
//			text: "Class",
//			predicate: "class",
//			reverse: true,
//			sortable: true
//		},
		{
			text: "Status",
			predicate: "status",
			sortable: true
		},
		{
			text: "Action",
			predicate: "",
			sortable: false
		}
	];
	
	//initially set those objects to null to avoid undefined error
	$scope.login = {};
	$scope.signup = {};
	$scope.doLogin = function (user) {
		Data.post('login', {
			user: user
		}).then(function (results) {
			//toaster.pop('error','','red',1000,'trustedHtml'); console.log(results.status);
			if (results.status == "success") {
				$location.path('admin');
			}else{
				console.log(results);
			}
		});
	};
	$scope.signup = {email:'',password:'',name:''};
	$scope.signUp = function (user) {
		Data.post('signUp', {
			user: user
		}).then(function (results) {
			//Data.toast(results);
			if (results.status == "success") {
				$location.path('admin');
			}
		});
	};
	$scope.logout = function () {
		Data.get('logout').then(function (results) {
			//Data.toast(results);
			$location.path('/');
		});
	}

});


app.controller('postEditCtrl', function ($scope, $modalInstance, item, Data) {

	$scope.post = angular.copy(item);

	$scope.cancel = function () {
		$modalInstance.dismiss('Close');
	};
	$scope.title = (item.id > 0) ? 'Edit Post' : 'Add Post';
	$scope.buttonText = (item.id > 0) ? 'Update Post' : 'Add New Post';

	var original = item;
	$scope.isClean = function () {
		return angular.equals(original, $scope.post);
	}
	$scope.savePost = function (post) {
		post.uid = $scope.uid;
		if (post.id > 0) {
			Data.put('posts/' + post.id, post).then(function (result) {
				if (result.status != 'error') {
					var x = angular.copy(post);
					x.save = 'update';
					$modalInstance.close(x);
				} else {
					console.log(result);
				}
			});
		} else {
			post.status = 'Inactive';
			Data.post('posts', post).then(function (result) {
				if (result.status != 'error') {
					var x = angular.copy(post);
					x.save = 'insert';
					x.id = result.data;
					$modalInstance.close(x);
				} else {
					console.log(result);
				}
			});
		}
	};
});