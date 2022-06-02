
#!/bin/sh
aws ec2 run-instances --image-id ami-09439f09c55136ecf --count 1 --instance-type t2.micro --key-name ec2 --security-group-ids sg-0c9dc5d6922f89648 --subnet-id subnet-dcd974b7  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=ibutsko-ec2}]'
instanceid=$(aws ec2 describe-instances --filters "Name=tag-value,Values=ibutsko-ec2" "Name=instance-state-name,Values=running,pending" --query 'Reservations[*].Instances[*].InstanceId' --output text)
echo "$instanceid"
aws ec2 describe-instance-status --instance-id ${instanceid}
#echo "export instanceid=${instanceid}" >> ~/.bashrc
#source ~/.bashrc
#cat ~/.bashrc | grep instanceid
