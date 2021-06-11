class Total < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :major
  validate :protein
  validate :fat
  validate :carb
  validate :calorie
  belongs_to :user
end