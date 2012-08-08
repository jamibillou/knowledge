class CreateOthers < ActiveRecord::Migration
  def change
    create_table :others do |t|
      t.integer :project_id
      t.string :plasmid_unstability
      t.string :post_translational
      t.string :impurities
      t.string :aggregration
      t.boolean :lyophilisation

      t.timestamps
    end
  end
end
