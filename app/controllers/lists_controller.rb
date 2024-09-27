class ListsController < ApplicationController
  before_action :find_list, only: [ :show ]
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list, notice: "dada!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  private
  def find_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
