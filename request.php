<?php
$username = "";
$database = "";
    mysql_connect("URL", $username,$pass);
    @mysql_select_db($database) or die("NO DATABASE");
    $query = "SELECT * FROM Controlori";
    $result = mysql_query($query) or die(mysql_error());
    $num = mysql_numrows($result);
    mysql_close();
    $rows = array();
    while ($r = mysql_fetch_assoc($result))
    {
        $rows[]=$r;
    }
    echo json_encode($rows);
?>
