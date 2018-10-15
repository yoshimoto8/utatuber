class Movie < ApplicationRecord
  belongs_to :youtuber, dependent: :destroy
end
