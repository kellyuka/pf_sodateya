# frozen_string_literal: true

class WankosController < ApplicationController
  before_action :set_wanko, only: %i[show edit update destroy]
  before_action :require_login, only: %i[new destroy]
  before_action :require_admin

  # GET /wankos
  def index
    @wankos = Wanko.all
  end

  # GET /wankos/1
  def show; end

  # GET /wankos/new
  def new
    @wanko = Wanko.new
  end

  # GET /wankos/1/edit
  def edit; end

  # POST /wankos
  def create
    @wanko = Wanko.new(wanko_params)

    if @wanko.save
      redirect_to @wanko, notice: 'わんこを作成しました'
    else
      render :new
    end
  end

  # PATCH/PUT /wankos/1
  def update
    if @wanko.update(wanko_params)
      redirect_to @wanko, notice: 'わんこを更新しました'
    else
      render :edit
    end
  end

  # DELETE /wankos/1
  def destroy
    @wanko.destroy
    redirect_to wankos_url, notice: 'わんこを削除しました'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_wanko
    @wanko = Wanko.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def wanko_params
    params.require(:wanko).permit(:name, :description, :picture, :picture_cache)
  end
end
