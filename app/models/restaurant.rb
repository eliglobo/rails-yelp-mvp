class Restaurant < ApplicationRecord
#   A restaurant must have a name, an address and a category.
# A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
# When a restaurant is destroyed, all of its reviews must be destroyed as well.
validates :name, :address, :category, presence: true
validates :category, inclusion:{in: ["chinese", "italian", "japanese", "french", "belgian"]}
has_many :reviews, dependent: :destroy
end
