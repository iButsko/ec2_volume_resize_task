#!/bin/bash
instanceid=$(aws ec2 describe-instances --filters "Name=tag-value,Values=ibutsko-ec2" "Name=instance-state-name,Values=running" --query 'Reservations[*].Instances[*].InstanceId' --output text)
echo "volume size before modifying"
aws ec2 describe-volumes --region eu-central-1 --filters Name=attachment.instance-id,Values=${instanceid} | grep Size;


#status_check="ok"
#while [ "$status_check" = "ok" ]
#        do
#                status_check=$(aws ec2 describe-instance-status --instance-id ${instanceid} --filters "Name=instance-status.status,Values=ok" --output text)
#        done

volumeid="$(aws ec2 describe-volumes  --filters "Name=attachment.instance-id,Values=${instanceid}"  --query "Volumes[*].VolumeId" --output text)";
echo ${volumeid}
aws ec2 modify-volume --size 25 --volume-id ${volumeid};
echo "volume size after modifying"
aws ec2 describe-volumes --region eu-central-1 --filters Name=attachment.instance-id,Values=${instanceid} | grep Size
