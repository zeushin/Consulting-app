class PagesController < ApplicationController

  def index
    @consultings = Consulting.all
  end

  def export_json
    @consultings = Consulting.all
    aFile = File.new("consultings.json", "w")
    aFile.write(@consultings.to_json(:include => {:cautions => {}, :news => {}, :consultant => {:include => {:careers => {}, :books => {}}}}))
    aFile.close
    render :json => @consultings.to_json(:include => {:cautions => {}, :news => {}, :consultant => {:include => {:careers => {}, :books => {}}}})
  end

  def import_json

  end

end
