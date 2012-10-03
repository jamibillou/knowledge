class CreateCommentProjects < ActiveRecord::Migration
  def change
    create_table :comment_projects do |t|
      t.integer :project_id

      t.timestamps
    end
  end
end
