# frozen_string_literal: true

class UserSessionsController < ApplicationController
  before_action :require_login, only: [:destroy]

  def new
    @user = User.new
  end

  def create
    @user = login(params[:email], params[:password])

    if @user
      redirect_to root_path, notice: t('.login')
    else
      flash.now[:alert] = t('defaults.message.login_error')
      render :new
    end
  end

  def destroy
    logout
    redirect_to(:users, notice: t('.logout'))
  end
end
