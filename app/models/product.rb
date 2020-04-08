class Product < ApplicationRecord
  has_one_attached :image
  has_many :category
  accepts_nested_attributes_for :category, allow_destroy:  true
  validates :name, presence: true
end
