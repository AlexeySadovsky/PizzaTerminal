<?php


interface CheckInterface
{

    public function inputTypeCost($type);

    public function inputSizeCost($size);

    public function inputSauceCost($sauce);

    public function costCalculation();

}