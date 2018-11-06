class Outer < ApplicationRecord
  belongs_to :user
  has_many :foods
  has_many :homes
  has_many :clothings
end
