<?php

$serverName= "localhost"; //IP O DOMINIO
$userName="root";
$password="";
$dbName="tiendam2020m";

//CRAR LA CONECCION 
$conn = new mysqli($serverName,$userName,$password,$dbName);

//verificar la coneccion

if($conn->connect_error){
    die("error al conectar:" .$conn->connect_error);

}


