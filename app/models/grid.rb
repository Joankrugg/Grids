class Grid < ApplicationRecord
  belongs_to :song
  belongs_to :section
  belongs_to :type
end
