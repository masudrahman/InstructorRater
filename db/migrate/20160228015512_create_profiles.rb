class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :university
      t.text :description

      t.timestamps null: false
    end
  end
end
