class Name < ActiveRecord::Base
  as_enum :gender, female: 1, male: 0
  has_many :users, through: :wishlists
  validates :name, presence: true, uniqueness: true

  scope :gender, -> (gender) { where gender: gender }
  scope :country, -> (country) { where country: country }
end
