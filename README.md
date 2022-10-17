# gsaweb-terraform-live
Terragrunt live code for running infrastructure deployments.

The directory structure is: `<project name>/<project env>/<module>`, eg: `myproject/production/server`.  Each of these directories should contain a `terragrunt.hcl` file that configures s specific Terraform module (eg "server") for that project/environment.

