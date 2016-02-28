class Name < ActiveRecord::Base

  has_many :users, through: :wishlists
  validates :name, presence: true, uniqueness: true
  as_enum :gender, female: 1, male: 0

  scope :gender, -> (gender) { where gender: gender }
  scope :country, -> (country) { where country: country }
end
