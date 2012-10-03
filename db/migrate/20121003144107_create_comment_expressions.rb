class CreateCommentExpressions < ActiveRecord::Migration
  def change
    create_table :comment_expressions do |t|
      t.integer :expression_id

      t.timestamps
    end
  end
end
