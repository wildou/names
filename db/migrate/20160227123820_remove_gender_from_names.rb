class RemoveGenderFromNames < ActiveRecord::Migration
  def change
    remove_column :names, :gender, :string
  end
end
