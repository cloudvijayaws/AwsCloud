#Ec2 instance
resource "aws_instance" "myvm" {
    ami = "ami-04b6c97b14c54de18"
    instance_type = "t2.micro"
    user_data = file("${path.module}/app1-install.sh")
    tags = {
        "Name" = "ec2 vm"
    }
  
}