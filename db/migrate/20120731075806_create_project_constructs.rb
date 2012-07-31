class CreateProjectConstructs < ActiveRecord::Migration
  def change
    create_table :project_constructs do |t|
      t.integer :project_id
      t.integer :construct_id

      t.timestamps
    end
  end
end
