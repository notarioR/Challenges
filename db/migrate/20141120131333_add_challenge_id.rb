class AddChallengeId < ActiveRecord::Migration
  def change
  	 add_column :challenges, :challenge_id, :integer
  end
end
