resource "aws_ami_from_instance" "clone" {
  name               = var.clone_name
  source_instance_id = var.source_id
  tags   = {
    Name = var.clone_name
  }
}

resource "aws_instance" "new" {
  ami                    = "${aws_ami_from_instance.clone.id}"
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.sg_ids]
  key_name               = var.ssh_key_name
  
  root_block_device {
    volume_size = var.volume_size
    volume_type = var.volume_type
    tags   = {
      Name = var.instance_name
    }
  }

  tags   = {
    Name = var.instance_name
  }
}