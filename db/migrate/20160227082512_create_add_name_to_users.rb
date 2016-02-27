class CreateAddNameToUsers < ActiveRecord::Migration
  def change
    create_table :add_name_to_users do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
