class GamesController < ApplicationController
  before_action :require_login, only: %i[sugosugi]

  def top; end

  def search
    if params[:gohan_data].to_i == 0 && params[:ohuro_data].to_i == 0 && params[:sanpo_data].to_i == 0 && params[:sleep_data].to_i == 0
      @wanko = Wanko.find(9)
    elsif params[:gohan_data].to_i > 4
      @wanko = Wanko.find(2)
    elsif params[:ohuro_data].to_i > 2
      @wanko = Wanko.find(4)
    elsif params[:sleep_data].to_i > 4
      @wanko = Wanko.find(7)
    elsif params[:gohan_data].to_i < 2
      @wanko = Wanko.find(1)
    elsif params[:ohuro_data].to_i < 1
      @wanko = Wanko.find(3)
    elsif params[:sanpo_data].to_i < 1
      @wanko = Wanko.find(5)
    elsif params[:sleep_data].to_i < 3
      @wanko = Wanko.find(6)
    else
      @wanko = Wanko.find(8)
    end
    @count = current_user.collections.count if logged_in?
  end

  def sugosugi
    @collections = current_user.collections
    @count = current_user.collections.count
    if @count < 8
      redirect_to root_path, alert: t('defaults.message.require_count')
    end
    @wanko = Wanko.find(10)
  end
end
