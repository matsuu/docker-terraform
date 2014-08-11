# Dockerfile For Terraform Development Version

## Howto

    git clone https://github.com/matsuu/docker-terraform.git
    cd docker-terraform
    docker build -t terraform .
    vi sample.tf
    docker run -it --rm -v "`pwd`:/terraform" terraform plan
    docker run -it --rm -v "`pwd`:/terraform" terraform apply

## Destroy

    docker run -it --rm -v "`pwd`:/terraform" terraform plan -destroy -out=destroy.tfplan
    docker run -it --rm -v "`pwd`:/terraform" terraform apply destroy.tfplan

## References

- [Terraform official](http://www.terraform.io/)
- [hashicorp/terraform](https://github.com/hashicorp/terraform)
