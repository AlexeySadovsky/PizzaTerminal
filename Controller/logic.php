<?php
include "../Model/MyPizza.php";
include "DBController.php";
include "CheckController.php";

$db = new DBController;
$pizza = new MyPizza;
$check = new CheckController;

$pizza->inputType($_POST['type']);
$pizza->inputSize($_POST['size']);
$pizza->inputSauce($_POST['sauce']);

$typeData = $db->getData('pizza-type', $pizza->getType());
$sizeData =  $db->getData('pizza-size', $pizza->getSize());
$sauceData =  $db->getData( 'pizza-sauce', $pizza->getSauce());

$check->inputTypeCost($typeData[0]);
$check->inputSizeCost($sizeData[0]);
$check->inputSauceCost($sauceData[0]);

$cost = $check->costCalculation();




$data = array($typeData[1], round($check->getTypeCost(),2), $sizeData[1], "x" . $check->getSizeCost(), $sauceData[1], round($check->getSauceCost(),2), round($cost, 2));

echo json_encode($data);
