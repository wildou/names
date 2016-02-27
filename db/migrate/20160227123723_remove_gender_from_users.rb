class RemoveGenderFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :gender_cd, :integer
  end
end
