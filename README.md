# gsaweb-terraform-live
Terragrunt live code for running infrastructure deployments.  

### Notes
* This repo, while somewhat reusable is currently hardcoded in some places for `gsaweb` and is explicitly associated with the [gsaweb-terrafrom](https://github.com/nanoMFG/gsaweb-terraform) modules repository.

### Layout
The directory structure is:  
`<project name>/<project env>/<module>`, eg: `gsaweb/production/server`   
Each of these subdirectories should contain a `terragrunt.hcl` file that configures a specific Terraform module(from anywhere @ some version) (eg "server" ) for that project/environment.  The sub directory names become in effect, local names for the remote terrafrom modules to be configured.  
```
├── terragrunt.hcl
├── gsaweb  
│   ├── production
│       ├── server
│           ├── terragrunt.hcl
│       ├── database
│           ├── terragrunt.hcl
│       ├── keystore
│           ├── terragrunt.hcl
│   ├── development
│       ├── server
│           ├── terragrunt.hcl
│   
```
...based on Terragrunt's DRY programming for infrastructure [key features](https://terragrunt.gruntwork.io/docs/getting-started/quick-start/#key-features).

### Remote State Configuration(s)
The top-level `terragrunt.hcl` defines a both a [terragrunt-managed remote state](https://terragrunt.gruntwork.io/docs/getting-started/quick-start/#keep-your-backend-configuration-dry) and a [common provider definition](https://terragrunt.gruntwork.io/docs/getting-started/quick-start/#keep-your-provider-configuration-dry).

### Provisioning the Environments
The above Directory structure is designed to allow `terragrunt run-all` to be run for each environment. For example:  
```
> cd gsweb/development
> terragrun run-all init
...
```

