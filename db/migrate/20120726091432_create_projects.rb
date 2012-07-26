class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :company
      t.string :name
      t.string :contact
      t.string :contact_info
      t.text :lab_books

      t.timestamps
    end
  end
end
