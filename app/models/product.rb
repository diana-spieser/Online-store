class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :name, presence: true
  validates :description, presence: true
  has_one_attached :photo
end
