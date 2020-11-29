# github

This project manages the eleven-labs github organization with terraform

[![terraform](https://github.com/eleven-labs/github/workflows/terraform/badge.svg?branch=master&event=push)](https://github.com/btp-force/tf-github/actions?query=workflow:terraform+branch:master)

## Requirements
- [`terraform`](https://www.terraform.io/downloads.html) `~> 0.12.29`

## Usage
```bash
# aws configuration
export AWS_ACCESS_KEY_ID=[secure]
export AWS_SECRET_ACCESS_KEY=[secure]
export AWS_DEFAULT_REGION=eu-west-3

# github configuration
export GITHUB_ORGANIZATION=eleven-labs
export GITHUB_TOKEN=[secure]

# initialize terraform working directory
terraform init

# select terraform workspace
terraform workspace select prd

# plan terraform changes
terraform plan
```

> :warning: never apply changes manually
>
> changes should be applied by the [CI/CD](https://github.com/btp-force/tf-github/actions?query=workflow:terraform) when the feature branch is merged into master

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License ([Source](https://github.com/eleven-labs/github/blob/master/LICENSE))

> MIT License
>
> Copyright (c) 2019 eleven-labs
>
> Permission is hereby granted, free of charge, to any person obtaining a copy
> of this software and associated documentation files (the "Software"), to deal
> in the Software without restriction, including without limitation the rights
> to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> copies of the Software, and to permit persons to whom the Software is
> furnished to do so, subject to the following conditions:
>
> The above copyright notice and this permission notice shall be included in all
> copies or substantial portions of the Software.
>
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
> SOFTWARE.
