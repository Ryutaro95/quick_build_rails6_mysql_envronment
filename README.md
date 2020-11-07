# 素早くRails6 x MySQL x docker-compose環境構築

## プロジェクト名変更
clone後に好きなプロジェクト名に変更してください

```bash
$ mv quick_build_rails6_mysql_envronment your_project_name
```

## Railsプロジェクト作成

```bash
$ docker-compose run api rails new . --force --database=mysql --skip-bundle # --api <- APIモードで作成
```

## 環境構築

```bash
$ docker-compose build
$ docker-compose up # -d バックグランドで起動
```
