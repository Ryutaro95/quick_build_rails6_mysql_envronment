# 素早くRails6 x MySQL x docker-compose環境構築
clone後、好きなプロジェクト名に変更する

## Railsプロジェクト作成

```bash
$ docker-compose run api rails new . --force --database=mysql --skip-bundle # --api <- APIモードで作成
```

## 環境構築

```bash
$ docker-compose build
$ docker-compose up # -d バックグランドで起動
```
