class Category < ApplicationRecord
  has_many :tasks
  translates :name
end
