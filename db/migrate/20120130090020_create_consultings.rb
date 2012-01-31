class CreateConsultings < ActiveRecord::Migration
  def change
    create_table :consultings do |t|
      t.string :topic
      t.string :movie
      t.integer :consultant_id

      t.timestamps
    end
  end
end
