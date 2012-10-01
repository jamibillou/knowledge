class AddStatusToOthers < ActiveRecord::Migration
  def change
    add_column :others, :status, :string

  end
end
