class Restaurant < ApplicationRecord
  has_many :reviews
  CATEGORIES = ["chinese","italian", "japanese", "french", "belgian"]
  validates :address, :category, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: {in: CATEGORIES, message: "The category is invalid"}
end
