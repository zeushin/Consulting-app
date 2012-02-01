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
      @consulting = Consulting.new
      render 'new'
    end
  end

  def update
    @consulting = Consulting.find_by_id(params[:id])

    @consulting.update_attributes(params[:consulting])

    # @consulting.topic = params[:consulting][:topic]
    # @consulting.consultant_id = params[:consulting][:consultant_id]
    # @consulting.detail = params[:consulting][:detail]
    # @consulting.movie = params[:consulting][:movie]

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
