<?php
    include('../model/DB.php');
    class student{
        public function __construct(){}
        public function getAll(){
            $sql = "select * from students";
            $stmt = pdo($sql);
            return $stmt->fetchAll();
        }
    }