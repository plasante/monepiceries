class Category < ApplicationRecord
  has_many :sub_categories
  has_and_belongs_to_many :lists
end
