class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :link_address
      t.integer :consulting_id

      t.timestamps
    end
  end
end
