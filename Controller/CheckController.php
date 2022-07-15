<?php

include "CheckInterface.php";

class CheckController implements CheckInterface
{

    private $typeCost;
    private $sizeCost;
    private $sauceCost;
    private $usdCourse;

     public function __construct() {
         $data = file_get_contents("https://www.nbrb.by/api/exrates/rates/431");
         $course = json_decode($data, true);
         $this->usdCourse = $course['Cur_OfficialRate'];
     }

     public function getTypeCost(){
         return $this->typeCost;
     }
    public function getSizeCost(){
        return $this->sizeCost;
    }
    public function getSauceCost(){
        return $this->sauceCost;
    }


    public function inputTypeCost($type){
        $this->typeCost = $type * (float)$this->usdCourse;
    }

    public function inputSizeCost($size){
        $this->sizeCost = $size;
    }

    public function inputSauceCost($sauce){
        $this->sauceCost = $sauce * (float)$this->usdCourse;
    }

    public function costCalculation(){
        $cost = ((float)$this->typeCost  +  (float)$this->sauceCost) * (float)$this->sizeCost;
        return $cost;
    }


}