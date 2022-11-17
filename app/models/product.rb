class Product < ApplicationRecord
    belongs_to :category
    belongs_to :line_item
end
