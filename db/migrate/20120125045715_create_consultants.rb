class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|
      t.string :name
      t.string :department
      t.string :job
      t.string :homepage
      t.string :facebook
      t.string :twitter
      t.string :email
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
