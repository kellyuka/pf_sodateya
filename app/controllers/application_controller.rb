# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def not_authenticated
    redirect_to login_path, alert: t('defaults.message.require_login')
  end

  def require_admin
    redirect_to root_path, alert: t('defaults.message.require_admin')	unless current_user.admin?
  end
end
