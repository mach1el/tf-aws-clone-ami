# tf-aws-clone-ami
This module will clone an AMI from your instance then create a new instance based on that cloned AMI

## Variables
Explaining some used variables in the module

- `clone_name` - Tag your cloned AMI
- `source_id` - ID of original instance
- `sg_ids`  - ID of Security group,can be a list
## Usage
You can use this template by below following steps

1.Put module reouce to your template
```
module aws_clone_ami {
  source        = https://github.com/mach1el/tf-aws-clone-ami
  aws_region    = var.aws_region
  clone_name    = var.clone_name
  source_id     = var.source_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  sg_ids        = var.sg_ids
  ssh_key_name  = var.ssh_key_name
  volume_type   = var.volume_type
  volume_size   = var.volume_size
  instance_name = var.instance_name
}
```
2. Setting up your variables in `terraform.tfvars` or `-var` through directly command

- aws_region
- clone_name
- source_id
- instance_type
- subnet_id
- sg_ids
- ssh_key_name
- volume_type
- volume_size
- instance_name