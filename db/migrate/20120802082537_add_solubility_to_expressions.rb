class AddSolubilityToExpressions < ActiveRecord::Migration
  def change
    add_column :expressions, :solubility, :string

  end
end
