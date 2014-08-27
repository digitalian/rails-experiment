rails-experiment
================

OIAX default App

・デモサイト短縮URL @ heroku

  職員
  > http://rails-experiment.herokuapp.com/
  
  管理者
  > http://rails-experiment.herokuapp.com/admin
  
  顧客
  > http://rails-experiment.herokuapp.com/mypage




起動準備
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


※ developmentとtestはmysqlで、productionはheroku無料の縛りから、postgresqlを使用しています。