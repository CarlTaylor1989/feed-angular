var app = angular.module('FeedApp', ['ngRoute', 'ui.bootstrap', 'ngAnimate', 'ngSanitize', 'iso.directives', 'toaster']);
app.config(['$routeProvider',
  function ($routeProvider) {
		$routeProvider
		.when('/', {
			templateUrl: 'views/main.html',
			controller: 'MainCtrl',
			reloadOnSearch: false
		})
		.when('/login', {
			title: 'Login',
			controller: 'postsCtrl',
			templateUrl: 'views/login.html'
		})
		.when('/admin', {
			title: 'Admin',
			controller: 'postsCtrl',
			templateUrl: 'views/admin.html'
		})
		.when('/logout', {
			title: 'Logout',
			controller: 'logoutCtrl',
			templateUrl: 'views/login.html'
		})
		.when('/signup', {
			title: 'Signup',
			controller: 'postsCtrl',
			templateUrl: 'views/signup.html'
		})
		.when('/:id', {
			controller: 'PostController',
			templateUrl: 'views/post.html'
		})
		.otherwise({
			redirectTo: '/',
			controller: 'MainCtrl',
			templateUrl: 'views/main.html'
		});
	
}]).run(function ($rootScope, $location, Data) {
	$rootScope.$on("$routeChangeStart", function (event, next, current) {
		$rootScope.authenticated = false;
		Data.get('session').then(function (results) {
			if (results.uid) {
				$rootScope.authenticated = true;
				$rootScope.uid = results.uid;
				$rootScope.name = results.name;
				$rootScope.email = results.email;
			} else {
				var nextUrl = next.$$route.originalPath;
				if (nextUrl == '' || nextUrl == '/' || nextUrl == '/:id' || nextUrl == '/signup') {

				} else {
					$location.path("/login");
				}
			}
		});
	});
});
app.service('articleService',function(){
	var holdId;
	var setArticleId = function(artId){
		holdId = artId;
	};
	var getArticleId = function(){
		return holdId;
	};
	return{
		setArticleId:setArticleId,
		getArticleId:getArticleId
	};
});
app.factory('posts', ['$http', function ($http) {
	return $http.get('api/v1/posts')
		.success(function (data) {
			return data.data;
		})
		.error(function (err) {
			return err;
		});
}]);

app.controller('PostController', ['$scope', '$sce', 'posts', '$routeParams','$location','articleService', function ($scope, $sce, posts, $routeParams,$location, articleService) {
	posts.success(function (data) {
		data.data = data.data.reverse();
		var tempData = [];
		//Could do better with these iterations but works for now
		for(var i=0; i<data.data.length;i++){
			if(data.data[i].status === 'Active'){
				tempData.push(data.data[i]);
			}
		}
		for(var x=0; x<tempData.length;x++){
			var tmpId = $routeParams.id.split('_');
			if(tempData[x].id == articleService.getArticleId() || tempData[x].id == tmpId[1]){
				$scope.post = tempData[x];
			}
		}
		$scope.pageClass = 'page-article';
		$scope.loadHTMLcontent = function (html) {
			return $sce.trustAsHtml(html);
		};
	});
}]);

'use strict';

angular.module('FeedApp')
	.controller('MainCtrl', function ($scope, $rootScope,Data,toaster,$routeParams,$location,articleService) {
		// Set $rootScope.layout empty - this sets class to body
		$rootScope.layout = 'home';
		$scope.pageClass = 'page-home';
		$scope.savePostFromHome = function(){
			//No validation at the moment - TODO: validate entries
			var postObj = {};
			postObj.title = "New Entry";
			postObj.submitted_firstname = $scope.submitted_firstname;
			postObj.submitted_lastname = $scope.submitted_lastname;
			postObj.submitted_email = $scope.submitted_email;
			postObj.content_url = $scope.content_url;
			postObj.content_what = $scope.content_what;
			if(postObj){
				Data.post('/posts',postObj).then(function(response){
					
				});
			}else{
				
			}
		};
		$scope.navButtonClicked = function(index){
			$routeParams.id=index;
			articleService.setArticleId(index);
		};
		$rootScope.submissionForm = false;
		$rootScope.toggle = function() {			
			$rootScope.submissionForm = !$rootScope.submissionForm;
		};
	})
	.directive('storyHover', function () {
		return {
			restrict: 'A',
			link: function ($scope, $element) {
				$element.hover(
					function () {
						$(this).removeClass('loaded').removeClass('out').addClass('over');
					},
					function () {
						$(this).removeClass('over').addClass('out');
					}
				);
			}
		};
	})
	.directive('resize', function ($window) {
		return function (scope, element) {
			var w = angular.element($window);
			var grid = angular.element('#isotopeContainer');
			var item = angular.element('.item');
			var columnNum = 1,
				columnWidth = 0;
			scope.getWindowDimensions = function () {
				return {
					'gridh': grid.height(),
					'gridw': grid.width()
				};
			};
			scope.columnWidth = function () {

			};

			scope.$watch(scope.getWindowDimensions, function (newValue, oldValue) {
				scope.windowHeight = newValue.gridh;
				scope.windowWidth = newValue.gridw;
				/*
				scope.style = function () {
						return {
								'height': (newValue.itemH) + 'px'.
								'width': (newValue.w / 5) + 'px'
						};
				};
				*/
			}, true);

			w.bind('resize', function () {
				scope.$apply();
			});
		};
	})
	.controller('isotopeData', function ($scope, $http, $location, $timeout,Data) {
		$http.get('api/v1/posts').then(function(postResult){
			$scope.isodata = [];
			var activeData = [];
			$scope.isodata = postResult.data.data.map(function(obj){
				var tempObj = {};
				if(obj.status === 'Active'){
					tempObj = obj;
					tempObj.beauUrl = tempObj.title.replace(/\s/g,'-')+'_'+tempObj.id;
					return tempObj;
				}
			});
			for(var i=0; i<$scope.isodata.length; i++){
				if($scope.isodata[i] != undefined){
					activeData.push($scope.isodata[i]);
				}
			}
			$scope.isodata = activeData;
			$scope.isodata = $scope.isodata.reverse();
			// Add view query string to url & initialise
			$timeout(function () {
				$scope.init = function () {
					var isoTab = $location.search().cat;
					$('.btn-' + isoTab).trigger('click');
				};
				$scope.init();
			});
			// Isotope query param
			$scope.isoTab = function (category) {
				if (category.length === 0) {
					$location.search('cat', null);
				} else {
					$location.search('cat', category);
				}
			};
			// Passing isotope options to scope
			$scope.$emit('iso-option', {
				resizable: false,
				itemSelector: '.story',
				isResizeBound: false,
				masonry: {
					columnWidth: 300,
					gutterWidth: 10
				}
			});
			// Shuffle function
			$scope.isoShuffle = function () {
				$scope.$emit('iso-method', {
					name: 'shuffle',
					params: null
				});
			};
		});
	});
