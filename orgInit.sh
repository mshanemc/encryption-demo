sfdx force:org:create -f config/project-scratch-def.json -d 1 -s
sfdx force:source:push
sfdx force:user:permset:assign -n Encryption_Master
sfdx force:data:tree:import -f data/Account-Contact.json

sfdx force:org:open -p /one/one.app#/setup/PlatformEncryptionKeyManagement/page?address=%2Fplatformencryption%2FPlatformEncryptionKeyManagementUi.apexp