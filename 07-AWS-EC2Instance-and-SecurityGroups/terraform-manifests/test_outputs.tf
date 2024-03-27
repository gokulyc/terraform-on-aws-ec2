output "out1" {
  description = "The ID of the security group"
  #value       = module.public_bastion_sg.this_security_group_id
  value       = data.aws_ami.amzlinux2
}
