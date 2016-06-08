<?php
require_once 'dbHandler.php';
require_once 'passwordHash.php';
require '.././libs/Slim/Slim.php';
require_once 'dbHelper.php';

\Slim\Slim::registerAutoloader();
$app = new \Slim\Slim();
$app = \Slim\Slim::getInstance();
$db = new dbHelper();

// User id from db - Global Variable
$user_id = NULL;

require_once 'authentication.php';

/**
 * Database Helper Function templates
 */
/*
select(table name, where clause as associative array)
insert(table name, data as associative array, mandatory column names as array)
update(table name, column names as associative array, where clause as associative array, required columns as array)
delete(table name, where clause as array)
*/

// Posts
$app->get('/posts', function() { 
	global $db;
	$rows = $db->select("posts","id,category,title,subtitle,image,author_firstname,author_lastname,author_avatar,submitted_firstname,submitted_lastname,submitted_email,submitted_avatar,content_url,content_what,content_potential,html,style,class,status",array());
	echoResponse(200, $rows);
});

$app->post('/posts', function() use ($app) { 
	$data = json_decode($app->request->getBody());
	$mandatory = array('title');
	global $db;
	$rows = $db->insert("posts", $data, $mandatory);
	if($rows["status"]=="success")
		$rows["message"] = "Post added successfully.";
	echoResponse(200, $rows);
});

$app->put('/posts/:id', function($id) use ($app) { 
	$data = json_decode($app->request->getBody());
	$condition = array('id'=>$id);
	$mandatory = array();
	global $db;
	$rows = $db->update("posts", $data, $condition, $mandatory);
	if($rows["status"]=="success")
		$rows["message"] = "Post information updated successfully.";
	echoResponse(200, $rows);
});

$app->delete('/posts/:id', function($id) { 
	global $db;
	$rows = $db->delete("posts", array('id'=>$id));
	if($rows["status"]=="success")
		$rows["message"] = "Post removed successfully.";
	echoResponse(200, $rows);
});

function verifyRequiredParams($required_fields,$request_params) {
	$error = false;
	$error_fields = "";
	foreach ($required_fields as $field) {
		if (!isset($request_params->$field) || strlen(trim($request_params->$field)) <= 0) {
			$error = true;
			$error_fields .= $field . ', ';
		}
	}
	if ($error) {
		// Required field(s) are missing or empty
		// echo error json and stop the app
		$response = array();
		$response["status"] = "error";
		$response["message"] = 'Required field(s) ' . substr($error_fields, 0, -2) . ' is missing or empty';
		echoResponse(200, $response);
		$app->stop();
	}
}

function echoResponse($status_code, $response) {
	global $app;
	$app->status($status_code);
	$app->contentType('application/json');
	echo json_encode($response,JSON_NUMERIC_CHECK);
}

$app->run();
?>