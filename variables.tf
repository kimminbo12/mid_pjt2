# common
variable "prefix" {
    default = "user01"
}

# for vpc
variable "vpc1-cidr" {
    default = "10.0.0.0/16"
}

variable "vpc2-cidr" {
    default = "20.0.0.0/16"
}

#for subnet
variable "az-1a" {
    default = "ap-northeast-2a"
}

variable "az-1b" {
    default = "ap-northeast-2c"
}

variable "az-2a" {
    default = "ap-northeast-2a"
}

variable "az-2b" {
    default = "ap-northeast-2c"
}

variable "subnet1a-cidr" {
    default = "10.0.1.0/24"
}

variable "subnet1b-cidr" {
    default = "10.0.2.0/24"
}

variable "subnet2a-cidr" {
    default = "20.0.1.0/24"
}

variable "subnet2b-cidr" {
    default = "20.0.2.0/24"
}


# custom AMI (web server)
variable "amazon_linux" {
    # default = "ami-0f44900104ca6dfb0"
    default = "ami-0bd7691bf6470fe9c" // add on pengsu image in index.html
}

variable "cloud9-cidr" {
    default = "0.0.0.0/0" // cloud9 public ip addr
}

variable "alb_account_id" {
    default = "600734575887" // ap-northeast-2 Asia Pacific (Seoul) 600734575887
}

variable "region" {
    default = "ap-northeast-2" // ap-northeast-2 Asia Pacific (Seoul) 600734575887
}
