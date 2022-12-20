class Category < ApplicationRecord
  has_many :products
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates_associated :products
  has_one_attached :photo
end
