include "root" {
  path = find_in_parent_folders()
}
terraform {
  source = "github.com/nanoMFG/gsaweb-terraform.git//server?ref=main"
}
inputs = {
  name = "gsaweb"
  env  = "development"
  subnet_zone = "us-east-2a"
  instance_type = "t3.micro"
  instance_ami = "ami-097a2df4ac947655f"
  instance_key = "gsaweb-development-key"
}