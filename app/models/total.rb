class Total < ApplicationRecord
  validate :protein
  validate :fat
  validate :carb
  validate :calorie
  belongs_to :user
end