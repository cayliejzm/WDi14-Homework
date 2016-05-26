class CreateWonders < ActiveRecord::Migration
  def change
    create_table :wonders do |t|
      t.text :title
      t.text :year_discovered
      t.text :image
      t.integer :place_id
      
      t.timestamps
    end
  end
end
