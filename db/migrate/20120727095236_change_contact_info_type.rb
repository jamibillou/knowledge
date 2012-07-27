class ChangeContactInfoType < ActiveRecord::Migration
  def up
  	change_column :projects, :contact_info, :text
  end

  def down
  end
end
