<?php
header( "refresh:0;url=./" );
require_once("wemo_functions.php");
setSwitchToggle($_GET["IP"],$_GET["STATE"]);
?>
