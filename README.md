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

- 各レポジトリ直下のファイルをオリジナルとして実行したい`/modules`配下にシンボリックリンクを配置すること
- ファイルの編集・修正はオリジナルのみ行うこと

```bash
cd xxx
ls -s /mnt/c/code/terraform-aws/provider.tf provider.tf
ln -s /mnt/c/code/terraform-aws/variables.tf variables.tf
```
