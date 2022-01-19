class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all

  end

  def show
     @book = Book.find(params[:id])
  end

  def new

  end

  def create
    @books = Book.all
    @book = Book.new(book_params)
    if @book.save
     redirect_to book_path(@book.id), notice: 'Book was successfully created.'
    else
     render :index
    end
  end


  def edit
   @book = Book.find(params[:id])
  end

  def update
   @books = Book.all    
    @book = Book.find(params[:id])
    if @book.update(book_params)
    redirect_to book_path(@book.id), notice: 'Book was successfully updated.'
    else
     render :show
    end
  end

  def destroy
   book = Book.find(params[:id])
   book.destroy
   redirect_to '/books'
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
