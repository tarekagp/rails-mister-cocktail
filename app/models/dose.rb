class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail, message: "error in cocktail/dose relation" }
end
