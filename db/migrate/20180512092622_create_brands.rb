class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :name, :null => false, :limit => 32

      t.timestamps
    end
  end
end
