class BooksController < ApplicationController
  def new
    @book = Book.new
    @consultant_id = params[:consultant_id] unless @consultant_id
    @books = Book.find(:all, :conditions => "consultant_id = '#{@consultant_id}'")
  end

  def create
    @book = Book.new(params[:book])
    @book.save
    redirect_to :action => :new, :consultant_id => @book.consultant_id
  end

  def destroy
    @book = Book.find_by_id(params[:id])
    @book.delete
    redirect_to :action => :new, :consultant_id => @book.consultant_id
  end

end
