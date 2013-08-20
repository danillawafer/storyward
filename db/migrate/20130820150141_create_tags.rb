class CreateTags < ActiveRecord::Migration
  def change
  	create_table :tags do |t|
  		t.string :name
  		t.belongs_to :story

  		t.timestamps
  	end
  end
end
