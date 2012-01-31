class AddPhotoToConsultants < ActiveRecord::Migration
  def change
    add_column :consultants, :photo, :string
  end
end
