<?php
require_once('models/UserModel.php');
$model = new UserModel();
$users = $model->getAll();
echo json_encode($users);
?>