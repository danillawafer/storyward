class CreateStories < ActiveRecord::Migration
  def change
  	create_table :stories do |t|
  		t.belongs_to :user
  		t.string :title
  		t.text :content

  		t.timestamps
  	end
  end
end
