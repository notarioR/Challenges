class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :mail
      t.timestamps
    end
  end
end
