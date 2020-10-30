class Instrument < ApplicationRecord
  has_many :instrument_playings
  has_many :users, through: :instrument_playings
end
