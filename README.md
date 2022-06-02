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
