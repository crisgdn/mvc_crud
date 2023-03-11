<?php
require_once('models/UserfipModel.php');
$model = new UserfipModel();
$userfip = $model->getAll();
echo json_encode($userfip);
?>