class AddDetailToConsultings < ActiveRecord::Migration
  def change
    add_column :consultings, :detail, :string, :limit => 50000
  end
end
