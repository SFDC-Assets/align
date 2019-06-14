sfdx force:org:create -f config/project-scratch-def.json -d 1 -s
sfdx force:source:push
sfdx force:user:permset:assign -n Align_Concierge
sfdx force:apex:execute -f scripts/makeData.cls
sfdx force:user:password:generate
sfdx force:org:open -p /lightning/o/Lead/list?filterName=All_Leads

sfdx shane:heroku:repo:deploy -g mshanemc -r align-web-demo -n `basename "${PWD/mshanemc-/}"` -t autodeployed-demos -o DOCTOR_ID=`sfdx shane:data:id:query -o Account -w "Name = 'Bella Smile'"`
heroku access:add platformpmmdemos@gmail.com -a `basename "${PWD/mshanemc-/}"` --permissions deploy,operate,manage
sfdx shane:heroku:connect -a `basename "${PWD/mshanemc-/}"` -f config/invisalign-web-demo.json -e custom