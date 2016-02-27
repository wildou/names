class Name < ActiveRecord::Base
  has_many :users, through: :wishlists
  validates :name, presence: true, uniqueness: true
end
