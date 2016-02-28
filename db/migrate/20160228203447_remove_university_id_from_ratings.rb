class RemoveUniversityIdFromRatings < ActiveRecord::Migration
  def change
  	remove_column :ratings, :university_id, :integer
  	add_column :ratings, :profile_id, :integer
  end
end
