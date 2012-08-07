class AddStatusToPurifications < ActiveRecord::Migration
  def change
    add_column :purifications, :status, :string

  end
end
