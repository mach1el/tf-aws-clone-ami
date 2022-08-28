output "clone_id" {
  value = aws_ami_from_instance.clone.id
}

output "new_id" {
  value = aws_instance.new.id
}