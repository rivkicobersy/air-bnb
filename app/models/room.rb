class Room < ApplicationRecord
  belongs_to :user
  has_many :room_images
  has_many :reservations
  has_many :reviews, through: :reservations

  def is_reserved?
    [true, false].sample
  end
end
