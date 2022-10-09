# Lab Goals
A sandbox lab to practice IAC, terraform and AWS ec2 orchestration

# Prerequisites
- AWS account
- Terraform installed
- AWS CLI installed
- AWS credentials configured
- SSH key pair
- SSH agent running
- SSH agent configured with the SSH key pair

# Usage
- Clone the repo
- Create a terraform.tfvars file with the following variables or set you role in:
```
vim ~/.aws/credentials
```
```
AWS_ACCESS_KEY_ID = "XXXXXXXXXXXXXXXXXXXX"
AWS_SECRET_ACCESS_KEY = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
AWS_DEFAULT_REGION = "us-east-1"
AWS_SSH_KEY_NAME = "mykeypair"
AWS_SSH_KEY_PATH = "~/.ssh/mykeypair.pem"
```
- Run `terraform init`
- Run `terraform plan`
- Run `terraform apply`
- Run `terraform destroy`

# Current Lab Architecture
![img.png](img.png)

# TODO
- [ ] AWS EC2 web instance
- [ ] Second AWS EC2 private instance
- [ ] VPC
- [ ] EIP
- [ ] Public and Private Subnet
- [ ] NAT Gateway
- [ ] Internet Gateway
- [ ] Routing tables
- [ ] VPC Security Groups
- [ ] IAM Role
- [ ] IAM Policy
- [ ] IAM Instance Profile
- [ ] Key Pair

# Vocabulary
- IAC: Infrastructure as Code
- Terraform: IAC tool
- AWS: Amazon Web Services
- EC2: Elastic Compute Cloud
- SSH: Secure Shell
- VPC: Virtual Private Cloud
- EIP: Elastic IP
- Subnet: Network partition
- NAT Gateway: Network Address Translation
- Internet Gateway: Gateway to the internet
- Routing tables: Routing rules
- Security Groups: Firewall rules
- IAM: Identity and Access Management
- Key Pair: SSH key pair

# Related Concepts

### What is IAC?
IAC is the process of managing and provisioning infrastructure through machine-readable definition files, rather than using a manual process. IAC tools allow you to use a high-level programming language to manage and provision infrastructure resources. IAC tools are also known as Infrastructure as Code (IaC) tools.

### What is Terraform?
Terraform is an open-source IAC tool created by HashiCorp. It enables users to define and provision a datacenter infrastructure using a high-level configuration language known as HashiCorp Configuration Language (HCL), or optionally JSON. Terraform can manage existing and popular service providers as well as custom in-house solutions.

### What is AWS?
AWS is a subsidiary of Amazon that provides on-demand cloud computing platforms and APIs to individuals, companies, and governments, on a metered pay-as-you-go basis. These cloud computing web services provide a variety of basic abstract technical infrastructure and distributed computing building blocks and tools.

### What is EC2?
EC2 is a web service that provides secure, resizable compute capacity in the cloud. It is designed to make web-scale cloud computing easier for developers. Amazon EC2’s simple web service interface allows you to obtain and configure capacity with minimal friction. It provides you with complete control of your computing resources and lets you run on Amazon’s proven computing environment.

### What is SSH Key Pair?
An SSH key pair is a pair of cryptographic keys used to authenticate and encrypt data transferred between two computers over an SSH connection. The public key is stored on the server, and the private key is stored on the client. The private key is used to decrypt the data, and the public key is used to encrypt the data.

### What is EIP?

Elastic IP (EIP) is a static IP address that you can associate with your AWS resources. You can associate an EIP with an instance or a network interface. You can also associate an EIP with a network interface that is attached to an instance. After you associate an EIP with a resource, the resource is reachable from the internet using the EIP address. You can also associate an EIP with a resource in a VPC, and the resource is reachable from the internet using the EIP address. You can associate an EIP with a resource in a VPC, and the resource is reachable from the internet using the EIP address.


# References
- [Terraform](https://www.terraform.io/)
- [AWS](https://aws.amazon.com/)
- [EC2](https://aws.amazon.com/ec2/)
- [SSH Key Pair](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
- [Terraform AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [Terraform AWS EC2 Instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance)
- [Terraform AWS EC2 Key Pair](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair)
- [Terraform AWS EC2 Security Group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)
- [Terraform AWS EC2 Security Group Rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule)
- [Terraform AWS EC2 Subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet)
- [Terraform AWS EC2 VPC](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)
- [Terraform AWS EC2 VPC Endpoint](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint)
- [Terraform AWS EC2 VPC Endpoint Route Table Association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint_route_table_association)
- [Terraform AWS EC2 VPC Endpoint Subnet Association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint_subnet_association)
