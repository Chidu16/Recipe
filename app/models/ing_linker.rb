class IngLinker < ApplicationRecord
    belongs_to :recipe
    belongs_to :ingredient
end
