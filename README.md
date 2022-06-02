# CLI tool for resizing EC2 Primary EBS volume with CLI tools wich up EC2 and down EC2
CLI tool to resize EBS EC2 primary volume using CLI tools that creates EC2 and kills EC2. 
This repository includes several bash scripts. 

- The first one - ec2_up.sh - launched an ec2 instance using ami, sg, etc. and showing the instance ID.
![image](https://user-images.githubusercontent.com/58728445/171665727-3c8d4f6b-8c1f-4d61-9708-c2d971025021.png)
- The second one - resize_vol.sh - looks for ec2 by instance id and resizes EBS, in this case up to 20gb.
![image](https://user-images.githubusercontent.com/58728445/171678581-b35132b9-3110-479a-bfb6-acbdad2c8142.png)
- The last one - ec2_down - terminate ec2 by instance id
![image](https://user-images.githubusercontent.com/58728445/171679204-05d2cc49-9a3e-456c-a7c8-e4f8940f196a.png)

# Examples
- output  ec2_up.sh  script
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-09439f09c55136ecf",
            "InstanceId": "i-00fb8a9d7f53178cb",
            "InstanceType": "t2.micro",
            "KeyName": "ec2",
            "LaunchTime": "2022-06-02T16:41:11.000Z",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "eu-central-1a",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-20-201.eu-central-1.compute.internal",
            "PrivateIpAddress": "172.31.20.201",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-dcd974b7",
            "VpcId": "vpc-1f312f77",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "a7c5020b-8c53-484f-ba2a-b7d15671ece8",
            "EbsOptimized": false,
            "EnaSupport": true,
            "Hypervisor": "xen",
            "NetworkInterfaces": [
                {
                    "Attachment": {
                        "AttachTime": "2022-06-02T16:41:11.000Z",
                        "AttachmentId": "eni-attach-03c6ca5194bf07971",
                        "DeleteOnTermination": true,
                        "DeviceIndex": 0,
                        "Status": "attaching",
                        "NetworkCardIndex": 0
                    },
                    "Description": "",
                    "Groups": [
                        {
                            "GroupName": "ibutsko-for-ec2-test",
                            "GroupId": "sg-0c9dc5d6922f89648"
                        }
                    ],
                    "Ipv6Addresses": [],
                    "MacAddress": "02:47:04:65:9c:68",
                    "NetworkInterfaceId": "eni-08314b86fac20d4f1",
                    "OwnerId": "043751989667",
                    "PrivateDnsName": "ip-172-31-20-201.eu-central-1.compute.internal",
                    "PrivateIpAddress": "172.31.20.201",
                    "PrivateIpAddresses": [
                        {
                            "Primary": true,
                            "PrivateDnsName": "ip-172-31-20-201.eu-central-1.compute.internal",
                            "PrivateIpAddress": "172.31.20.201"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Status": "in-use",
                    "SubnetId": "subnet-dcd974b7",
                    "VpcId": "vpc-1f312f77",
                    "InterfaceType": "interface"
                }
            ],
            "RootDeviceName": "/dev/xvda",
            "RootDeviceType": "ebs",
            "SecurityGroups": [
                {
                    "GroupName": "ibutsko-for-ec2-test",
                    "GroupId": "sg-0c9dc5d6922f89648"
                }
            ],
            "SourceDestCheck": true,
            "StateReason": {
                "Code": "pending",
                "Message": "pending"
            },
            "Tags": [
                {
                    "Key": "Name",
                    "Value": "ibutsko-ec2"
                }
            ],
            "VirtualizationType": "hvm",
            "CpuOptions": {
                "CoreCount": 1,
                "ThreadsPerCore": 1
            },
            "CapacityReservationSpecification": {
                "CapacityReservationPreference": "open"
            },
            "MetadataOptions": {
                "State": "pending",
                "HttpTokens": "optional",
                "HttpPutResponseHopLimit": 1,
                "HttpEndpoint": "enabled",
                "HttpProtocolIpv6": "disabled",
                "InstanceMetadataTags": "disabled"
            },
            "EnclaveOptions": {
                "Enabled": false
            },
            "PrivateDnsNameOptions": {
                "HostnameType": "ip-name",
                "EnableResourceNameDnsARecord": false,
                "EnableResourceNameDnsAAAARecord": false
            }
        }
    ],
    "OwnerId": "043751989667",
    "ReservationId": "r-078d4ae1189ae729a"
}
i-00fb8a9d7f53178cb
{
    "InstanceStatuses": []
}
