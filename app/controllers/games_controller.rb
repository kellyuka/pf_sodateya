class GamesController < ApplicationController
  def top
  end

  def search
    case 
    when params[:gohan_data].to_i  == 0 && params[:ohuro_data].to_i  == 0 && params[:sanpo_data].to_i == 0 && params[:sleep_data].to_i == 0 then 
      @wanko = Wanko.find(9)
    when params[:gohan_data].to_i > 4 then
      @wanko = Wanko.find(1)
    when params[:ohuro_data].to_i > 2 then
      @wanko = Wanko.find(2)
    when params[:sleep_data].to_i > 4 then
      @wanko = Wanko.find(3)
    when params[:gohan_data].to_i < 2 then
      @wanko = Wanko.find(4)
    when params[:ohuro_data].to_i < 1 then
      @wanko = Wanko.find(5)
    when params[:sanpo_data].to_i < 1 then
      @wanko = Wanko.find(6)
    when params[:sleep_data].to_i < 3 then
      @wanko = Wanko.find(7)
    else
      @wanko = Wanko.find(8)
    end
  end

  def complete
    @collections = current_user.collections
    @wanko = Wanko.find(10)
  end
end
