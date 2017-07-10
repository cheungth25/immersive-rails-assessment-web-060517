class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  validates :guest_id, presence: true
  validates :episode_id, presence: true
  validates :rating, presence: true
end
