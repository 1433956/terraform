variable "ami_id" {
    type = string
    description = "image  AMI ID of joindevops RHEL9"
    default ="ami-09c813fb71547fc4f"
  
}
variable "instance_type" {
    type =string
    description = "type of instance"
    default = "t3.micro"
  
}
variable "tags" {
     type=map(string)
    default = {
       
        Name="mysql"
    }  
}
 variable "sg_name" {
    default = "allow_all"
    type = string 
 }
 variable "sg_description" {
    default = "allow all security traffic"
   
 }
 variable "from_port" {
    default = 0
    type = number
   
 }
 variable "to_port" {
    default = 0
    type = number
   
 }
 variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
    type = list
   
 }
  variable "ipv6_cidr_blocks" {
    default =["::/0"]

    type = list(string)
   
 }
 variable "sg_tags" {
    default = {
        Name = "allow-all"
    }
}
variable "instance" {
   default = ["mysql","catalogue","frontend"]
  
}
variable "zone_id" {
   default = "Z04391491005OGSNXNQQX"
  
}
variable "domain_name" {
  default = "devops73.site"
}

