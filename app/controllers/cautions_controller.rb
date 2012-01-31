class CautionsController < ApplicationController
  def new
    @caution = Caution.new
    @consulting_id = params[:consulting_id] unless @consulting_id
    @cautions = Caution.find(:all, :conditions => "consulting_id = '#{@consulting_id}'")
  end

  def create
    @caution = Caution.new(params[:caution])
    @caution.save
    redirect_to :action => :new, :consulting_id => @caution.consulting_id
  end

  def update
    @caution = Caution.new(params[:id])
    @caution.save
    redirect_to :action => :new, :consulting_id => @caution.consulting_id
  end

  def destroy
    @caution = Caution.find_by_id(params[:id])
    @caution.delete
    redirect_to :action => :new, :consulting_id => @caution.consulting_id
  end

end
