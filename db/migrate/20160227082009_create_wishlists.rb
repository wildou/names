class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.string :title
      t.references :user, index: true, foreign_key: true
      t.references :name, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
