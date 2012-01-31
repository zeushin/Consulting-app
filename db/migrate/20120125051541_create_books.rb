class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :subject
      t.string :author
      t.string :publisher
      t.string :year
      t.integer :consultant_id

      t.timestamps
    end
  end
end
