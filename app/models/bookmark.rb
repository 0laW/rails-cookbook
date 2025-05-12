class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :comment, length: { minimum: 6 }
  # bookmark must be linked to a recipe and a category, and the [recipe, category] pairings should be unique
  validates :recipe_id, uniqueness: { scope: :category_id }
  # scope groups them - makes a "pairing"/association, that's why order doesn't matter:
  # ^same as = validates :category_id, uniqueness: { scope: :recipe_id }
end
