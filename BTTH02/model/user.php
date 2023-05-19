<?php
    include('model/DB.php');
    class user{
        public function __construct(){}
        public function getAll(){
            $sql = "select * from users";
            $stmt = pdo($sql);
            return $stmt->fetchAll();
        }
    }