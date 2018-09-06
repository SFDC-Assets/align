sfdx force:org:create -f config/project-scratch-def.json -d 30 -s
sfdx force:source:push
sfdx force:user:permset:assign -n Align_Concierge
sfdx force:user:password:generate
sfdx force:org:open