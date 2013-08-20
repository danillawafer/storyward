class CreateVotes < ActiveRecord::Migration
  def change
  	create_table :votes do |t|
  		t.belongs_to :user
  		t.belongs_to :road
  		t.string :direction

  		t.timestamps
  	end
  end
end
