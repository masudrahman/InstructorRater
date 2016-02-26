class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :first_name
      t.string :last_name
      t.string :university
      t.text :comments

      t.timestamps null: false
    end
  end
end
