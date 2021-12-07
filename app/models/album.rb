class Album < ApplicationRecord
    belongs_to :song
    has_many :song
end
