class RemoveUniversityFromRatings < ActiveRecord::Migration
  def change
  	remove_column :ratings, :university, :string
  	add_column :ratings, :university_id, :integer
  end
end
