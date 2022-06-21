# Make internship-library resources on Heroku as IaC

Create resources on Heroku with terraform.

# Install terraform binary with brew

```bash
brew install terraform
```

## How to use

```bash
git clone git@github.com:andriimokii/internship-library-infra.git
cd internship-library-infra
terraform init -backend-config=config.s3.tfbackend
terraform apply
```
