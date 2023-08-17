variable "AWS_REGION" {
  default = "us-east-2"
}

variables "AMIS" {
  type = map
  default = {
    us-east-2  = "ami"
    us-east-2a = "ami"
    us-east-2b = "ami"
    ap-south-1 = "ami"
  }
  variables "PRIVATE_KEY" {
    default = "key.pem"
  }
  variable "PUBIC_KEY" {
    default = "key.pub"
  }
  variable "USERNAME" {
    default = "ubuntu"
  }

  variable "MYIP" {
    default = "rabbit"
  }
  variable "DBPASS" {
    default = "admin123"
  }
  variable "DBNAME" {
    default = "accounts"
  }
  variable "INSTANCE_COUNT" {
    default = "1"
  }
  variable "VPC_NAME" {
    default = "vprofile-VPC"
  }
  variable "ZONE1" {
    default = "us-east-2a"
  }
  variable "ZONE2" {
    default = "us-east-2b"
  }
  variable "ZONE3" {
    default = "us-east-2c"
  }
  variable "VPC_CIDR" {
    default = "172.1.1.0/16"
  }
  variable "PubSub1CIDR" {
    default = "172.1.1.0/24"
  }
  variable "PubSub2CIDR" {
    default = "172.1.2.0/24"
  }
  variable "PubSub3CIDR" {
    default = "172.1.3.0/24"
  }
  variable "PriSub1CIDR" {
    default = "172.1.4.0/24"
  }
  variable "PriSub2CIDR" {
    default = "172.1.5.0/24"
  }
  variable "PriSub3CIDR" {
    default = "172.1.6.0/24"
  }
}