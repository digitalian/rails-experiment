rails-experiment
================

**OIAX App**

##デモサイトURL @ heroku

  職員
  >http://rails-experiment.herokuapp.com/staff
  
  管理者
  >http://rails-experiment.herokuapp.com/admin
  
  顧客
  >http://rails-experiment.herokuapp.com/mypage

***

##起動準備
Vagrant上で実行する場合は、下記通りとなります。

1.Vagrant

```sh
    vagrant up
    vagrant ssh
```

  を実行
  
2.Bundle

```sh
    cd /vagrant/
    bin/bundle
```
  
3.DBセットアップ

```bin/sh
    bin/rake db:create
    bin/rake db:migrate
    bin/rake db:reset
```

4.VirtualHostの修正

```bin/sh
    config/route.rb
```

  を任意のドメインに修正（ex.localhostなど）

***

##補足情報

 developmentとtestはmysqlで、productionはheroku無料の縛りから、postgresqlを使用しています。
 
 ちな、herokuへアップ時は、developmentと同環境にて、下記コマンドでprecompileが必要でした。

```bin/sh
    bin/rake assets:clean assets:precompile RAILS_ENV=production
```

 ログインに使用するテストデータは、下記フォルダを参照のこと。

```bin/sh
    db/seeds/
```

 herokuのDBリセットは下記コマンドで。
 
 ```bin/sh
    heroku pg:reset DATABASE
    heroku run rake db:migrate
    heroku run rake db:seed
 ```

 .ruby-versionの中身は、rvmを考慮し「ruby-2.1.2」を使用してます（「2.1.2」ではなく。)
 
 IPアドレス制限機能を実装しました、管理者でログイン後、任意のIPアドレスを追加してください。
 （管理者にも実装できますが、デモなので職員のみ実装しています。）
 
 プログラム機能実装しました。
 
 bootstrap風のスタイルにしましたw ちゃんと適用するのはそのうち気が向いたらにしま...
 
 twitter-bootstrapをgemでインストールする際は、public/assetsを削除する必要があった。
 (assets:cleanできえないことが判明。)
 
###今後の予定

 ・問い合わせ機能（掲示板）
 
 ・プログラム参加者の予約リストをPDFで出力
 
 ・対顧客へのCMS機能も実装したいなぁ
 
