class CreateConstructs < ActiveRecord::Migration
  def change
    create_table :constructs do |t|

      t.timestamps
    end
  end
end
