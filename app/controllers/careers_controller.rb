class CareersController < ApplicationController
  def new
    @career = Career.new
    @consultant_id = params[:consultant_id] unless @consultant_id
    @careers = Career.find(:all, :conditions => "consultant_id = '#{@consultant_id}'")
  end

  def create
    @career = Career.new(params[:career])
    @career.save
    redirect_to :action => :new, :consultant_id => @career.consultant_id
  end

  def update
    @career = Career.new(params[:id])
    @career.save
    redirect_to :action => :new, :consultant_id => @career.consultant_id
  end

  def destroy
    @career = Career.find_by_id(params[:id])
    @career.delete
    redirect_to :action => :new, :consultant_id => @career.consultant_id
  end

end
