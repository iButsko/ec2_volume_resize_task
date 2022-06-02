# CLI tool for resizing EC2 Primary EBS volume with CLI tools wich up EC2 and down EC2
CLI tool to resize EBS EC2 primary volume using CLI tools that creates EC2 and kills EC2. 
This repository includes several bash scripts. 

- The first one - ec2_up.sh - launched an ec2 instance using ami, sg, etc. and showing the instance ID.
![image](https://user-images.githubusercontent.com/58728445/171683005-1abe8202-9042-48c1-a657-060f5807293a.png)
- The second one - resize_vol.sh - looks for ec2 by instance id and resizes EBS, in this case up to 20gb.
![image](https://user-images.githubusercontent.com/58728445/171678581-b35132b9-3110-479a-bfb6-acbdad2c8142.png)
- The last one - ec2_down - terminate ec2 by instance id
![image](https://user-images.githubusercontent.com/58728445/171679204-05d2cc49-9a3e-456c-a7c8-e4f8940f196a.png)

## Examples
###### result of ec2_up.sh  script
![image](https://user-images.githubusercontent.com/58728445/171681727-4b514f00-9efd-4871-a801-091db3fac4df.png)
#### result resize_vol.sh script
###### before resize
![image](https://user-images.githubusercontent.com/58728445/171683649-868e06df-2a08-4773-abb0-98916ea650fa.png)
######output scpript
![image](https://user-images.githubusercontent.com/58728445/171683936-e78656b0-505d-4ef0-b3a4-a46cd8fd2733.png)
######after resize
![image](https://user-images.githubusercontent.com/58728445/171684012-926b36b4-90d7-4ee0-8d82-0b3c3bb3abb7.png)
