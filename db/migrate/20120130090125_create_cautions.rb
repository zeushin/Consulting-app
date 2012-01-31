class CreateCautions < ActiveRecord::Migration
  def change
    create_table :cautions do |t|
      t.string :content
      t.integer :consulting_id

      t.timestamps
    end
  end
end
