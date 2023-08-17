variable "AWS_REGION" {
    default = "us-east-2"
}

variables AMIS {
    type =map
    default = {
        us-east-2 = "ami"
        us-east-2a = "ami"
        us-east-2b = "ami"
        ap-south-1 = "ami"
    }
variables PRIVATE_KEY {
    default = "key.pem"    
}
variable PUBIC_KEY {
    default = "key.pub"
    }
variable USERNAME {
    default = "ubuntu"
}

variable MYIP {
    default = "rabbit"
}
variable DBPASS {
    default = "admin123"
}
variable DBNAME {
    default = "accounts"
}
variable INSTANCE_COUNT {
    default ="1"
}

}