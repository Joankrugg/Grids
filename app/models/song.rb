class Song < ApplicationRecord
  belongs_to :user
  has_many :grids, dependent: :destroy
end
