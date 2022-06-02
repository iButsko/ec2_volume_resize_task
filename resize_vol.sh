#!/bin/bash
instanceid=$(aws ec2 describe-instances --filters "Name=tag-value,Values=ibutsko-ec2" "Name=instance-state-name,Values=running" --query 'Reservations[*].Instances[*].InstanceId' --output text)
echo "volume size before modifying"
aws ec2 describe-volumes --region eu-central-1 --filters Name=attachment.instance-id,Values=${instanceid} | grep Size;

volumeid="$(aws ec2 describe-volumes  --filters "Name=attachment.instance-id,Values=${instanceid}"  --query "Volumes[*].VolumeId" --output text)";
echo ${volumeid}
aws ec2 modify-volume --size 25 --volume-id ${volumeid};
sleep 30
echo "volume size after modifying"
aws ec2 describe-volumes --region eu-central-1 --filters Name=attachment.instance-id,Values=${instanceid} | grep Size
