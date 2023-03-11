<?php
require_once('./models/UserfipModel.php');

// A controller class. Handles the linkage between the specific
// URL passed by the user and DB fetch/put methods in the model class.

class Userfip {

private $model;
public $userfip;
public $json;


public function __construct() {
	$this->model = new UserfipModel();
}



public function loadViews() {
	//get content through the model
	//load views that match the content
	require_once('views/head.php');
	require_once('views/nav.php');
	require_once('views/search.php');
	require_once('views/form.php');


	
	// what content should be passed back based on URL parameters?


	//route: localhost/cristine/index.php?id=1

	if(isset($_GET['id']) && !isset($_GET['task'])) {
		//run query method A on the model
		//load view(s) to match the model data
		$userfip = $this->model->getOne($_GET['id']);
		require_once('views/detail.php');


	//route: localhost/cristine/index.php?str=john

	}else if(isset($_GET['str'])) {
		//run query method B on the model
		//load view(s) to match THAT model data
		$userfip = $this->model->search('user_lname',$_GET['str']);
		$rows = $this->model->rows;
		require_once('views/list.php');


//route: localhost/cristine/index.php?task=create
//		 localhost/cristine/index.php?task=update
//		 localhost/cristine/index.php?task=delete

	}else if(isset($_GET['task'])) {
		if($_GET['task'] == 'create') {
			//$_POST['name of the imput'] values from a form
			$formvalues = [$_POST['user_lname'],$_POST['user_fname'],$_POST['user_username'],$_POST['user_password'],$_POST['user_image'],$_POST['user_role']];
			$userfip = $this->model->newUser($formvalues);
			header("location:index.php");

		}else if($_GET['task'] == 'delete') {
			$userfip = $this->model->deleteUser($_GET['id']);
			header("location:index.php");

		}else if($_GET['task'] == 'update') {
			//POST values from a form, could also be hidden field for id value
			$formvalues = [$_POST['user_id'],$_POST['user_lname'],$_POST['user_fname'],$_POST['user_username'],$_POST['user_password'],$_POST['user_image'],$_POST['user_role'],$_GET['id']];
			$userfip = $this->model->updateUser($formvalues);
			header("location:index.php");
		}

		

// default route:localhost/cristine/

	}else{ 
		$userfip = $this->model->getAll();
		$rows = $this->model->rows;
		require_once('views/list.php');
	}

	require_once('views/footer.php');

}

        

		// public function json() {
		// 	if(isset($_GET['task']) && $_GET['task'] == 'json') {
		// 		$json = json_encode($userfip, JSON_PRETTY_PRINT);
		// 		$userfip = $this->model->getUsersJSON($userfip);
		// 		header("location:json_only.php");
        //         echo $json;
		// 	}
		// }

}

