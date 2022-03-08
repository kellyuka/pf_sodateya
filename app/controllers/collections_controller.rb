class CollectionsController < ApplicationController
  def new
    @wanko = Wanko.new
    @collection = Collection.new
  end

  def create
    @wanko = Wanko.find(params[:wanko_id])
    current_user.collection(@wanko)
  end

  def index
    @collections = current_user.collections.order(wanko_id: :asc)
  end
end