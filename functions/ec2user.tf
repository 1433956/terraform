resource "aws_instance" "expese" {
    count=length(var.instance)
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids =[ aws_security_group.allow_all.id ]

    tags = merge(
        var.common_tags,
        {
            Component=var.instance[count.index]
            Name= var.instance[count.index]
        }

        
    )
    
}
resource "aws_security_group" "allow_all" {

    name=var.sg_name
    description = var.sg_description
    ingress {
        from_port        = var.from_port
        to_port          = var.to_port
        protocol         = "-1"
        cidr_blocks      = var.cidr_blocks
        ipv6_cidr_blocks = ["::/0"]
    }
    egress {
        from_port        = var.from_port
        to_port          = var.to_port
        protocol         = "-1"
        cidr_blocks      = var.cidr_blocks
        ipv6_cidr_blocks = var.ipv6_cidr_blocks
    }
    tags =merge(

        var.common_tags,
        {
            Name="allow_all"
        }
    )
    #var.sg_tags
    
  
}