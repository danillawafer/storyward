class CreateRoads < ActiveRecord::Migration
  def change
  	create_table :roads do |t|
  		t.belongs_to :user
  		t.belongs_to :story
  		t.integer :up_votes, default: 0
  		t.integer :down_votes, default: 0
  		t.string :content

  		t.timestamps
  	end
  end
end
