class ConsultantsController < ApplicationController

  def index
    @consultants = Consultant.all
  end

  def show
    @consultant = Consultant.find_by_id(params[:id])
  end

  def new
    if params[:consultant_id]
      @consultant = Consultant.find_by_id(params[:consultant_id])
    else
      @consultant = Consultant.new
    end
  end

  def create
    @consultant = Consultant.new(params[:consultant])
    
    if @consultant.save
      redirect_to new_career_path(:consultant_id => @consultant.id)
    else
      render 'new'
    end
  end

  def update
    @consultant = Consultant.find_by_id(params[:id])
    
    if @consultant.save
      redirect_to new_career_path(:consultant_id => @consultant.id)
    else
      render 'new'
    end
  end

  def destroy
    @consultant = Consultant.find_by_id(params[:id])
    @consultant.delete
    redirect_to root_path
  end

end
