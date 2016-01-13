<?php
header( "refresh:0;url=./" );
require_once("wemo_functions.php");
setSwitchOff($_GET["IP"]);
?>
