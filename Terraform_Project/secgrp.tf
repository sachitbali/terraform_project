resource "aws_security_group" "vprofile-bean-elb-sg" {
    name = "vprofile-bean-elb-sg"
    description = "Security group for bean-elb"
    vpc_id = "module.vpc.vpc_id"
    egress {
        from_port = 0
        //-1 means all protocol and doesn't need any other infor to be provided
        protocol = "-1"
        to_port = 0
        cidr_blocks =   ["0.0.0.0/0"]
    }
    ingress {
        from_port = 80
        protocol = "tcp"
        to_port = 80
        cidr_blocks = ["0.0.0.0/0"]
    }
}
resource "aws_security_group" "vprofile-bastion-sg"{
    name = "vprofile-bastion-sg"
    description = "Security group for bastion ec2 instance"
    vpc_id = module.vpc.vpc_id

    egress {
        from_port = 0
        protocol  = "-1"
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 0
        protocol = "tcp"
        to_port = 22
        cidr_blocks = [var.MYIP]
        }
}
resource "aws_security_group" "vprofile_prod_sg" {
    name = "vprofile-prod-sg"
    description = "Security group for beanstalk instances"
    vpc_id = module.vpc.vpc_id

    egress {
        from_port = 0
        protocol = "-1"
        to_port = "0"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}


