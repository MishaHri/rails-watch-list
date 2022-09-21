class ListsController < ApplicationController
  # reads all
  before_action :set_list, only: [:show, :destroy]

  def new
    @list =List.new()
  end

  def create
    @list = List.new(list_params)
  end

  def index
    @list = Lists.all
  end

  def update
  end

  # reads just one

  def show
    @list = List.find(params[:id])
  end

  def destroy
    @List.destroy
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end
