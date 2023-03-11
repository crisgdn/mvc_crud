<?php

require_once('Database.php');

class UserfipModel extends Database {
	

public function __construct() {
	parent::__construct();
	$this->table = 'tbl_userfip';
	$this->fields = "user_lname,user_fname,user_username,user_password,user_image,user_role";
	
}

public function newUser($formvalues) {
	$statement = "(" . $this->fields . ") VALUES (?, ?, ?, ?, ?, ?)";
	$this->create($statement,$formvalues);
}

public function updateUser($formvalues) {
	$statement = " SET user_lname=?,user_fname=?,user_username=?,user_password=?,user_image=?,user_role=? WHERE id=?";
	$this->update($statement,$formvalues);
}

public function deleteUser($id) {
	//code to be sure the deletion should happen
	$this->delete($id);
}

public function getUsersJSON($userfip) {
	$json = json_encode($userfip);
	header('Content-Type: application/json');
	echo $json;
}


}