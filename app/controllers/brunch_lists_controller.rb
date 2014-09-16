class BrunchListsController < ApplicationController

  def index
    @brunch_list = BrunchList.new
    @brunch_lists = BrunchList.all
  end

  def create
    @brunch_list = BrunchList.create(brunch_list_params)
    if @brunch_list.save
      redirect_to brunch_lists_path
    else
      render :index
    end
  end

  private
  def brunch_list_params
    params.require(:brunch_list).permit(:restaurant, :rating)
  end
end