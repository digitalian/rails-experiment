rails-experiment
================

OIAX default App

・デモサイト短縮URL @ codeanywhere

  職員
  > http://urx.nu/bffs
  
  管理者
  > http://urx.nu/bfga
  
  顧客
  > http://urx.nu/bfgp
  
　※常時起動している訳ではないです。



起動準備

1.Vagrant

    vagrant up
    vagrant ssh
  
  を実行
  
2.Bundle

    cd /vagrant/mysql/
    bin/bundle
  
3.DBセットアップ

    bin/rake db:create
    bin/rake db:migrate
    bin/rake db:reset
　
4.VirtualHostの修正

    config/route.rb
  
  を任意のドメインに修正（ex. localhostなど）
