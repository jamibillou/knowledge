class AddCleavageSiteToExpressions < ActiveRecord::Migration
  def change
    add_column :expressions, :cleavage_site, :string

  end
end
