# README

## 使い方(例)

1. 任意の場所に`git clone`する
2. Terraform実行用のIAMを作成する



3. `~/.bashrc`に環境変数を記載する
4. provider.tfとvariables.tfのシンボリックリンクを作成する

```bash
# /.bashrcの例
export AWS_ACCESS_KEY_ID=xxx
export AWS_SECRET_ACCESS_KEY=xxx
export AWS_DEFAULT_REGION=ap-northeast-1
```

## provider.tfとvariables.tfの取り扱い

- ~~各レポジトリ直下のファイルをオリジナルとして実行したい`/modules`配下にシンボリックリンクを配置すること~~
- ~~ファイルの編集・修正はオリジナルのみ行うこと~~

- シンボリックを利用する場合、[こちら](./troubleshooting.md)のエラーが発生するため個別にファイルを用意すること

## 実行方法

```bash
terraform init
terraform workspace new DEV
terraform plan
terraform apply
```

## Terraformのインストール

- Ubuntu (WSL2)の場合

```bash
# unzipが必要
sudo apt install unzip

# githubからclone
git clone https://github.com/tfutils/tfenv.git ~/.tfenv
echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile

# インストールできるversionの一覧を表示
tfenv list-remote

# 任意のversionをインストール
tfenv install 1.3.8
tfenv use 1.3.8

# 確認
terraform -v
tfenv list
```
