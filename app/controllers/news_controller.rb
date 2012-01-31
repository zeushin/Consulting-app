class NewsController < ApplicationController
  def new
    @news = News.new
    @consulting_id = params[:consulting_id] unless @consulting_id
    @newses = News.find(:all, :conditions => "consulting_id = '#{@consulting_id}'")
  end

  def create
    @news = News.new(params[:news])
    @news.save
    redirect_to :action => :new, :consulting_id => @news.consulting_id
  end

  def update
    @news = News.new(params[:id])
    @news.save
    redirect_to :action => :new, :consulting_id => @news.consulting_id
  end

  def destroy
    @news = News.find_by_id(params[:id])
    @news.delete
    redirect_to :action => :new, :consulting_id => @news.consulting_id
  end

end
