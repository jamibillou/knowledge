class CreatePurifications < ActiveRecord::Migration
  def change
    create_table :purifications do |t|
      t.integer :project_id
      t.string :lysis
      t.string :lysis_buffer
      t.string :clarification
      t.string :preparation_extract
      t.string :refolding_mode
      t.string :refolding_buffer
      t.string :presence_of
      t.string :chromatography
      t.string :endotoxin
      t.string :final_buffer
      t.string :concentration
      t.string :final_filtration
      t.string :final_productivity

      t.timestamps
    end
  end
end
