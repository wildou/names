class AddGenderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender_cd, :integer
  end
end
