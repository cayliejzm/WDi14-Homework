class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.text :name
      t.text :nationality
      t.date :dob
      t.text :climate
      t.text :image

      t.timestamps
    end
  end
end
