class RemoveTypeFromNames < ActiveRecord::Migration
  def change
    remove_column :names, :type, :string
  end
end
