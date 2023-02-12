# troubleshooting

## Error: multiple EC2 VPCs matched; use additional constraints to reduce matches to a single EC2 VPC

- シンボリックリンクで`variables.tf`を参照した際に、定義しているモジュールと同じものをdataで読み込もうとしてエラー
- 対策：シンボリックリンクの運用を断念
