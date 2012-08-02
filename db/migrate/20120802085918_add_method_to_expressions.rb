class AddMethodToExpressions < ActiveRecord::Migration
  def change
    add_column :expressions, :method, :string

  end
end
