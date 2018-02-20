# Attribute-Mapping

Built into Sierra 10.12 and High Sierra 10.13 is the ability for organizations to build out Active Directory attribute mapping
for SmartCards. If the mapping is done correctly could allow any individual with the correct certificate on their SmartCard to log
into the Mac without the need of creating a local user account beforehand.

LOCAL ACCOUNTS
1. Download and change the name of Local-SmartcardLogin.plist to "SmartcardLogin.plist"
1. Customize the SmartCardLogin.plist to build the correct field mappings to AD for your environment.
2. Use Composer to build a package that installs this plist into the /etc folder
3. Use Jamf Pro to distribute to your Macs

MOBILE ACCOUNTS
1. Download and change the name of Mobile-SmartcardLogin.plist to "SmartcardLogin.plist"
2. Customize the SmartCardLogin.plist to build the correct field mappings to AD for your environment.
3. Use Composer to build a package that installs this plist into the /etc folder
4. Use Jamf Pro to distribute to your Macs

