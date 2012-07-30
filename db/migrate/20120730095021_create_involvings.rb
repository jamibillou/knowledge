class CreateInvolvings < ActiveRecord::Migration
  def change
    create_table :involvings do |t|
      t.integer :project_id
      t.integer :user_id

      t.timestamps
    end
  end
end
