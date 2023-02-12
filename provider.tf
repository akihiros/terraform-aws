# AWSのcredentials情報は、Terraform実行サーバの環境変数として指定すること
# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY
# AWS_DEFAULT_REGION = ap-northeast-1

provider "aws" {
    region = local.location[terraform.workspace]
}
