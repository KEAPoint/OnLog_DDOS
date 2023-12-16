provider "aws" {
  region = "us-east-1" # 예시로 us-east-1을 사용

  default_tags {
    tags = {
      Unv  = "GCU"
      Team = "KEAPoint"
    }
  }
}

resource "aws_instance" "kea-004-ddos-server" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "kea-004-ddos-server"
  }
  
  user_data = file("./scripts/init.sh")
}