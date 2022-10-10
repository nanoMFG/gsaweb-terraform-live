include "root" {
  path = find_in_parent_folders()
}
terraform {
  source = "git@github.com:nanoMFG/gsaweb-terraform.git//server?ref=main"
}
inputs = {
  name = "gsaweb"
  env  = "development"
}
