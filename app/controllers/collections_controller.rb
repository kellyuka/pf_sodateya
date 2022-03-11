class CollectionsController < ApplicationController
  before_action :require_login

  def create
    @wanko = Wanko.find(params[:wanko_id])
    current_user.collection(@wanko)
    @count = current_user.collections.count
  end

  def index
    @collections = current_user.collections.order(wanko_id: :asc)
  end
end
