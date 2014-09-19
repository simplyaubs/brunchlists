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

  def show
    @brunch_list = BrunchList.find(params[:id])
  end

  def edit
    @brunch_list = BrunchList.find(params[:id])
  end

  def update
    @brunch_list = BrunchList.find(params[:id])
    @brunch_list.update_attributes!(brunch_list_params)

    redirect_to brunch_lists_path(@brunch_list)
  end

  private
  def brunch_list_params
    params.require(:brunch_list).permit(:restaurant, :rating)
  end
end