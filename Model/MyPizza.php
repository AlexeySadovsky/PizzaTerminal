<?php

include "Pizza.php";

class MyPizza extends Pizza
{
    private $type;
    private $size;
    private $sauce;

    public function getType(){
        return $this->type;
    }
    public function getSize(){
        return $this->size;
    }
    public function getSauce(){
        return $this->sauce;
    }

    public function inputType($type){
        $this->type = $type;
    }
    public function inputSize($size){
        $this->size = $size;
    }
    public function inputSauce($sauce){
        $this->sauce = $sauce;
    }
}