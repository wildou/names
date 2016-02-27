class AddGenderCdToNames < ActiveRecord::Migration
  def change
    add_column :names, :gender_cd, :integer
  end
end
