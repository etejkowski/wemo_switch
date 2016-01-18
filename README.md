# wemo_switch
php code for operating the Wemo Switch from a web page

This example is based on code created by ceemjay (info@mk437.cm), based on work by rich@netmagi.com.

Instructions:

1. Place the wemo_switch folder in a readable folder of your local web server. 
2. Open the file named index.php and change the IP address within to the fixed IP address of your Wemo Switch.
3. Using the terminal, navigate to the "scripts" folder and change the permissions of each file within the script folder to 755, like this:
 
sudo chmod 755 getSwitchDeviceIcon.sh

sudo chmod 755 getSwitchFriendlyName.sh

sudo chmod 755 getSwitchPort.sh

sudo chmod 755 getSwitchSignalStrength.sh

sudo chmod 755 getSwitchState.sh

sudo chmod 755 setSwitchOff.sh

sudo chmod 755 setSwitchOn.sh

You're all ready to go! Navigate to the wemo_switch folder with your web browser to see it work. 
