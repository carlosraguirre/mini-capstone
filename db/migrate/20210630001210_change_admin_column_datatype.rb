class ChangeAdminColumnDatatype < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :admin, :integer
    add_column :users, :admin, :boolean
  end
end
