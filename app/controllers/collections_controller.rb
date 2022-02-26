class CollectionsController < ApplicationController
  def new
    
    binding.pry
    
    @wanko = Wanko.new
    @collection = Collection.new
  end

  def create
    @wanko = Wanko.find(params[:wanko_id])
    current_user.collection(@wanko)r
  end
  
end