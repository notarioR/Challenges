class DeleteChallengeId < ActiveRecord::Migration
  def change
	remove_column :challenges, :challenge_id
	add_column :votes, :challenge_id, :integer
  end
end
