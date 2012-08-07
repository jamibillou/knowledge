class AddFieldsToPurifications < ActiveRecord::Migration
  def change
    add_column :purifications, :inclusion_buffer, :string

    add_column :purifications, :resins, :string

  end
end
