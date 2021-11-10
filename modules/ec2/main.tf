resource "aws_key_pair" "ec2-pub" {
  key_name   = "key-for-ec2-terraform"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDC8lXx+LfYtJ/bdeO+tDMKNum6fZCJscDUE5HNfGGViE/atUP6XXOM8HEkwzHc7P6YNrY22syz+MWhqzVKWSxJ3wG2VypEtf0z1rsYb5QR78EPqmYx8Ns7ZkR+XBSd59H25w5bY0AQGOifHX/S4mkmUmT/eVRN9Wkm9HcTEVCycRbaUivW/DJqSv0MgcnxVFKPLHEaAvfIxwMmoppW6aN8cHXwmSitO2IL/f9B3IyIgIYbYLruVCD+ZevHK1mRbTdyBXATviIBTT0MoMxzZJ33faxVyGTqKAKb7LmosUhJae/BwXVGjNwRggvtO5vDKl4gfyikOhFMCdF7R/uVYnYP aiman.shahbad@AimanS-LP"
}



resource "aws_instance" "pri-ec2" {
  ami           = "ami-087c17d1fe0178315"
  instance_type = "t2.micro"
  subnet_id = var.pri1-sub
  associate_public_ip_address= "false"
  vpc_security_group_ids= ["${var.ec2-sg}",]
  key_name=  aws_key_pair.ec2-pub.id
  user_data = <<EOF
		#!/bin/bash
        yum update -y
        yum install -y httpd
        systemctl start httpd
        systemctl enable httpd
        echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html

        yum install postgresql-server postgresql-contrib
        postgresql-setup initdb
        systemctl start postgresql
        systemctl enable postgresql
	EOF


  tags = {
    Name = "pri1-task-vpc"
  }
}

