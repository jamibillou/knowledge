class CreateCommentPurifications < ActiveRecord::Migration
  def change
    create_table :comment_purifications do |t|
      t.integer :purification_id

      t.timestamps
    end
  end
end
