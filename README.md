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

    vagrant up
    vagrant ssh

  を実行
  
2.Bundle

    cd /vagrant/
    bin/bundle
  
3.DBセットアップ

    bin/rake db:create
    bin/rake db:migrate
    bin/rake db:reset
　
4.VirtualHostの修正

    config/route.rb
  
  を任意のドメインに修正（ex.localhostなど）

***

##補足情報

 developmentとtestはmysqlで、productionはheroku無料の縛りから、postgresqlを使用しています。
 
 ちな、herokuへアップ時は、developと同環境にて、下記コマンドでprecompileが必要でした。

    bin/rake assets:precompile RAILS_ENV=production

 ログインに使用するテストデータは、下記フォルダを参照のこと。

    db/seeds/

 .ruby-versionの中身は、rvmを考慮し「ruby-2.1.2」を使用してます（「2.1.2」ではなく。)