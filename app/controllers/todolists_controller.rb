class TodolistsController < ApplicationController
  def new
   @book = Book.new
  end
  
  def create

    list = List.new(list_params)

    list.save

    redirect_to '/top'
  end
  
  def index
    @books = Book.all
  end
  
  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
  
  def edit
   @book = Book.find(params[:id])
  end
 
 
end
