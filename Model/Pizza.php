<?php

abstract  class Pizza
{
    private $type;
    private $size;
    private $sauce;

    abstract public function inputType($type);
    abstract public function inputSize($size);
    abstract public function inputSauce($sauce);

    abstract public function getType();
    abstract public function getSize();
    abstract public function getSauce();

}