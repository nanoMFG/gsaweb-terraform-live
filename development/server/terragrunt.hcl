terraform {
  source =
    "github.com:nanomfg/gsaweb-terraform.git//server?ref=main"
}
inputs = {
  name = "gsaweb"
  env  = "development"
}
