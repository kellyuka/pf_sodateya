# frozen_string_literal: true

class UserSessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = login(params[:email], params[:password])

    if @user
      redirect_back_or_to(login_path, notice:t('.login'))
    else
      flash.now[:alert] = t('defaults.message.error')
      render :new
    end
  end

  def destroy
    logout
    redirect_to(:users, notice:t('.logout'))
  end
end
