class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, :limit => 128, :null => false
      t.string :url, :null => false
      t.integer :price, :null => false
      t.string :send_price, :null => false, :limit => 32
      t.string :tax, :null => false, :limit => 16
      t.text :comment
      t.string :m_id, :null => false, :limit => 16, :unique => true
      t.string :size, :null => true
      t.string :item_state, :null => true
      t.string :send_method, :null => true
      t.string :send_area, :null => true
      t.string :shipping_date, :null => true

      t.timestamps
    end
  end
end
