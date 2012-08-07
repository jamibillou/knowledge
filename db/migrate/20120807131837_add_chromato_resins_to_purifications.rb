class AddChromatoResinsToPurifications < ActiveRecord::Migration
  def change
    add_column :purifications, :chromato_resins, :string

  end
end
