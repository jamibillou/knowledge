class CreateExpressions < ActiveRecord::Migration
  def change
    create_table :expressions do |t|
      t.integer :project_id
      t.string :system
      t.string :vector_backbone
      t.string :gene
      t.string :tag
      t.string :compartment
      t.string :strain
      t.string :medium
      t.string :culture
      t.string :temperature
      t.string :status

      t.timestamps
    end
  end
end
