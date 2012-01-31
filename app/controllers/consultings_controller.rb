class ConsultingsController < ApplicationController
  def new
    if params[:consulting_id]
      @consulting = Consulting.find_by_id(params[:consulting_id])
    else
      @consulting = Consulting.new
    end
    @consultants = Consultant.all
  end

  def create
    @consulting = Consulting.new(params[:consulting])
    @consultants = Consultant.all
    if @consulting.save
      redirect_to new_caution_path(:consulting_id => @consulting.id)
    else
      render 'new'
    end
  end

  def update
    @consulting = Consulting.find_by_id(params[:id])

    if @consulting.save
      redirect_to new_caution_path(:consulting_id => @consulting.id)
    else
      render 'new'
    end
  end

  def destroy
    @consulting = Consulting.find_by_id(params[:id])
    @consulting.delete
    redirect_to root_path
  end

end
