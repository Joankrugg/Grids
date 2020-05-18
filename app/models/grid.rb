class Grid < ApplicationRecord
  belongs_to :song
  belongs_to :section
  belongs_to :type
  belongs_to :musical_note
  belongs_to :musical_scale
  belongs_to :second_musical_note
  belongs_to :second_musical_scale
  belongs_to :third_musical_note
  belongs_to :third_musical_scale
  belongs_to :fourth_musical_note
  belongs_to :fourth_musical_scale
end
