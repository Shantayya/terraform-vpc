#My goal is to build a configuration that will:
```
1. Create a vpc (size /16 CIDR block 10.0.0.0/16).
2. Create 1 public subnet (for EC2 instance) in Availability Zone 1 (size /24 CIDR block 10.0.0.0/24). This subnet is associated with a route table that has a route to to an Internet Gateway.
3. Create 1 private subnet (for RDS) in Availability Zone 2 (size /24 CIDR block 10.0.1.0/24).
4. Create separate security groups for each subnet.
5. Create 3 EC2 (web servers) instances in public subnet in AZ 1 within subnet range. Each instances should have an Elastic IPv4 associated with it. Each instance must be accessible from the internet.
6. Install Docker on web servers & clone code from github repo.
7. Create a NAT Gateway in public subnet in AZ 1 with its own Elastic IPv4 address.
8. Create an Elastic IP for NAT Gateway.
9. Create 3 EC2 (db) instances in a private subnet in AZ 2 (within subnet range). Instances should be able to send requests to the internet using NAT Gateway.
10. Create route tables for each subnet.
11. Create an Internet Gateway that connects VPC to the internet and other AWS services.
12. Create main route table associated with private subnet. This table should contain an entry that ebables instances in the subnet to communicate with other instances in the VPC over IPv4, and an entry that enables instances in the subnet to communicate with the internet through the NAT Gateway over IPv4.
13. (Optional) Create subdomains for public subnet instances
14. (Optional) Output urls, public IPs, and other relevant information in a human readable format
```