# digital_ocean_infra
Digital Ocean infra configurations 

Droplet Setup for linux course. :)
More coming up...

### How to run

1. Install terraform in your machine (if you use mac):
    ```Shell
    brew tap hashicorp/tap
    brew install hashicorp/tap/terraform
    ```
    or install in your OS: https://learn.hashicorp.com/tutorials/terraform/install-cli

2. Go to the project's root and create a file called: `var_t.tfvars`. Add your DigitalOcean token in the first line of the file: `do_token="yourTokenHere"`

3. Run ```terraform init && terraform apply --var-file var_t.tfvars```




