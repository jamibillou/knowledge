class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fullname, :string

    add_column :users, :title, :string

  end
end
