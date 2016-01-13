<html>
<body bgcolor="#e0eee0">
<h1>WeMo Light Switch Functions</h1>
<?php
require_once("wemo_functions.php");

//GET THE DATA
//these two lines must come first! (IP and port)
$ip = '192.168.1.132';//change this to match the fixed IP of your wemo switch
$port = getSwitchPort($ip);

$state = getSwitchState($ip);
$strength = getSwitchSignalStrength($ip);
$name = getSwitchFriendlyName($ip);

//DISPLAY THE DATA
echo 'Switch Friendly Name: '.$name.'<br><br>';
echo 'Switch State: '.$state.'<br><br>';

echo 'Switch IP: '.$ip.'<br>';
echo 'Switch Port: '.$port.'<br>';
echo 'Switch Signal Strength: '.$strength.'<br><br>';


//doesn't work?
//$icon = getSwitchDeviceIcon($ip);
//echo 'Switch icon: '.$icon.'<br><br>';


//SET THE SWITCH
echo '<a href="wemoSetSwitchOn.php?IP='.$ip.'">Turn Switch On</a><br><br>';
echo '<a href="wemoSetSwitchOff.php?IP='.$ip.'">Turn Switch Off</a><br><br>';
echo '<a href="wemoToggleSwitch.php?IP='.$ip.'&STATE='.$state.'">Toggle Switch</a><br><br>';

?>
</body>
</html>
