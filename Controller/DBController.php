<?php

include "DBInterface.php";

class DBController implements DBInterface
{

    private $idDB;
    private $name;
    private $password;
    private $db;

    public function __construct() {
        $this->idDB = "localhost";
        $this->name = "root";
        $this->password = "root";
        $this->db = "pizza-terminal";
    }

    public function getData($tableName, $id){
        try {

            $dbh = new PDO('mysql:host='.$this->idDB.';dbname='.$this->db, $this->name, $this->password);
            $dbh->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );

            // query

            if($tableName === 'pizza-type') {
                $sql = "SELECT * FROM `pizza-type` WHERE id=(:id)";
            }
            if($tableName === 'pizza-size') {
                $sql = "SELECT * FROM `pizza-size` WHERE id=(:id)";
            }
            if($tableName === 'pizza-sauce') {
                $sql = "SELECT * FROM `pizza-sauce` WHERE id=(:id)";
            }

            $query = $dbh->prepare($sql);
            $query->execute(array('id' => (int)$id));


            $array = $query->fetch(PDO::FETCH_ASSOC);

            // Null connection
            $dbh = null;

        } catch (PDOException $e) { // if exception
            print "Error!: " . $e->getMessage() . "<br/>";
            die();
        }

        return array($array["cost"], $array["name"]);
    }

}