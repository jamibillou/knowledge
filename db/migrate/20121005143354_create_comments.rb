class CreateComments < ActiveRecord::Migration
  def change
  	reate_table :comments do |t|
      t.text 		:content
      t.integer :commentable_id
      t.string  :commentable_type
      t.integer :author_id

      t.timestamps
    end
  end
end
