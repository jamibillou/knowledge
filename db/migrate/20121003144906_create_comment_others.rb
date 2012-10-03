class CreateCommentOthers < ActiveRecord::Migration
  def change
    create_table :comment_others do |t|
      t.integer :other_id

      t.timestamps
    end
  end
end
