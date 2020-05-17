class Song < ApplicationRecord
  belongs_to :user
  has_many :grids
  has_many :boxes
end
