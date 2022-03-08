# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[edit update destroy]

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show; end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit; end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: t('defaults.message.created', item: User.model_name.human)
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: t('defaults.message.updated', item: User.model_name.human)
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: t('defaults.message.destroyed', item: User.model_name.human)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = current_user
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
