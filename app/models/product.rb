class Product < ApplicationRecord
  validates :category_id, presence: true
  validates :name, presence: true
  validates :description, presence: true
  belongs_to :user
  belongs_to :category
  has_one_attached :photo
end
