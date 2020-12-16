class Grid < ApplicationRecord

    belongs_to :song
    belongs_to :section
    belongs_to :type
    belongs_to :musical_note, optional: true
    belongs_to :musical_scale, optional: true
    belongs_to :second_musical_note, optional: true
    belongs_to :second_musical_scale, optional: true
    belongs_to :third_musical_note, optional: true
    belongs_to :third_musical_scale, optional: true
    belongs_to :fourth_musical_note, optional: true
    belongs_to :fourth_musical_scale, optional: true
    validates :location, presence: true

end

