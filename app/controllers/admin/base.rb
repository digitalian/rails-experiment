class Admin::Base < ApplicationController
  #before_action :check_source_ip_address
  before_action :authorize
  before_action :check_account
  before_action :check_timeout

  private
  def current_admin_member
    if session[:admin_member_id]
      @current_admin_member ||=
        AdminMember.find_by(id: session[:admin_member_id])
    end
  end

  helper_method :current_admin_member

  def check_source_ip_address
    raise IpAddressRejected unless AllowedSource.include?('admin', request.ip)
  end

  def authorize
    unless current_admin_member
      flash.alert = '管理者としてログインしてください。'
      redirect_to :admin_login
    end
  end
  def check_account
    if current_admin_member && !current_admin_member.active?
      session.delete(:admin_member_id)
      flash.alert = 'アカウントが無効になりました。'
      redirect_to :admin_root
    end
  end

  TIMEOUT = 60.minutes

  def check_timeout
    if current_admin_member
      if session[:last_access_time] >= TIMEOUT.ago
        session[:last_access_time] = Time.current
      else
      session.delete(:admin_member_id)
      flash.alert = 'セッションがタイムアウトしました。'
      redirect_to :admin_login
      end
    end
  end
end
