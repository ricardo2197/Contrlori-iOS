<?php
$username = "";
$database = "";
    mysql_connect("url", $username,$pass);
    @mysql_select_db($database) or die("NO DATABASE");
    $traseu = $_POST["traseu"];
    $detali = $_POST["detali"];
    $date = date("Y-m-d H:i:s");
   $traseu= trim($traseu, "<> &?!+%=");
    $detali = trim($detali, "<> &?!+%=");
    if ($traseu != "" AND $detali != ""){
    $query = "INSERT INTO Controlori VALUES ('','$traseu','$detali','$date')";
    mysql_query($query) or die (mysql_error());
        echo "Successful";}
    mysql_close();
    ?>

    

