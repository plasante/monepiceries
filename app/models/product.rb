class Product < ApplicationRecord
  belongs_to :category
  belongs_to :store
  belongs_to :description
  belongs_to :provider
end
