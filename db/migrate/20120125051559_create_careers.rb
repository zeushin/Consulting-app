class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :since_date
      t.string :until_date
      t.string :substance
      t.integer :consultant_id
        
      t.timestamps
    end
  end
end
