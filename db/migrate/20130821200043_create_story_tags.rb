class CreateStoryTags < ActiveRecord::Migration
  def change
  	create_table :story_tags do |t|
  		t.belongs_to :story
  		t.belongs_to :tag

  		t.timestamps
  	end
  end
end
