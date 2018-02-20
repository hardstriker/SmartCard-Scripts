# SmartCard only for 'sudo' command

Mac OS X Sierra 10.12.6 and above has this enabled by default.

The following package will complete the following two items when pushed out with Jamf Pro:

1. Use the following command to backup the current 'sudo' settings as a pre-install script:
' sudo cp /etc/pam.d/sudo /etc/pam.d/sudo_backup_`date "+%Y-%m-%d_%H:%M"` '

2. Then it replaces all the content of the /etc/pam.d/sudo file with the following:

auth        sufficient    pam_smartcard.so
auth        required      pam_opendirectory.so
auth        required      pam_deny.so
account     required      pam_permit.so
password    required      pam_deny.so
session     required      pam_permit.so
