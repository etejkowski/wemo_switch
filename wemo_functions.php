<?php
function getSwitchPort($ip) {
    return shell_exec('sh scripts/getSwitchPort.sh '.$ip);
}

function getSwitchState($ip) {
    return shell_exec('sh scripts/getSwitchState.sh '.$ip);
}

function getSwitchSignalStrength($ip) {
    return shell_exec('sh scripts/getSwitchSignalStrength.sh '.$ip);
}

function getSwitchDeviceIcon($ip) {
    return shell_exec('sh scripts/getSwitchDeviceIcon.sh '.$ip);
}

function getSwitchFriendlyName($ip) {
    return shell_exec('sh scripts/getSwitchFriendlyName.sh '.$ip);
}

function setSwitchOn($ip) {
    echo shell_exec('sh scripts/setSwitchOn.sh '.$ip);
}

function setSwitchOff($ip) {
    echo shell_exec('sh scripts/setSwitchOff.sh '.$ip);
}


function setSwitchToggle($ip, $state) {

	//$state = getSwitchState($ip);
	//echo 'statNation='.$state;
    if(strcmp($state,'ON')==0){
		echo shell_exec('sh scripts/setSwitchOff.sh '.$ip);
    } else {
		echo shell_exec('sh scripts/setSwitchOn.sh '.$ip);
    }
}


?>
