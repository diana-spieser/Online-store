class Category < ApplicationRecord
  belongs_to :user
  has_many :products
  validates :name, presence: true
  # validates :description, presence: true
  has_one_attached :photo
end
