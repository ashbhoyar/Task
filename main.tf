resource "aws_instance" "frontend" {
  ami           = var.ami  
  instance_type = var.instance_type
  tags = {
    Name = "Frontend Server"
  }
}


resource "aws_instance" "Backend" {
  ami           = var.ami  
  instance_type = var.instance_type
  tags = {
    Name = "Backend Server"
  }
}

resource "aws_instance" "Database" {
  ami           = "ami-0ad21ae1d0696ad58"  # ubuntu ami image
  instance_type = var.instance_type
  tags = {
    Name = " Database Server"
  }
}

