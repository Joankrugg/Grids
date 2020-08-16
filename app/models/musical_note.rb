class MusicalNote < ApplicationRecord
  has_many :grids, dependent: :destroy
end
