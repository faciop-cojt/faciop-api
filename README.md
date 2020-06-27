# faciop-api
- 2020年度COJTで作成しているソフトのバックエンドAPI.
- Nuxt(typescript)で実装中…
- フロントエンド
  - https://github.com/faciop-cojt/faciop-client
- 3Dモデルの試着部分の実装
  - https://github.com/faciop-cojt/faciop-face-detection-sandbox

## 初めにやって

```bash
# 依存パッケージgem入れる
$ bundle install

# データベースセットアップ
$ rails db:migrate
$ rails db:seeds

# localhost:3000にサーバ立てる
$ rails s -p 3000
```

## 図

- できれば、いいなあ

![er](https://raw.githubusercontent.com/faciop-cojt/faciop-api/master/er.png)
