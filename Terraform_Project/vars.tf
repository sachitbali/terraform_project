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

}