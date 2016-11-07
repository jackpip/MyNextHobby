class Hobby < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :resources, dependent: :destroy
  has_many :users
end
