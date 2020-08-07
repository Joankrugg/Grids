class MusicalNote < ApplicationRecord
  belongs_to :grids, dependent: :destroy
end
