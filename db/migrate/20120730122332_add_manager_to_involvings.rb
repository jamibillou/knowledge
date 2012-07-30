class AddManagerToInvolvings < ActiveRecord::Migration
  def change
    add_column :involvings, :manager, :boolean

  end
end
