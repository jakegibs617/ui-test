class Game < ActiveRecord::Base
  validates :score, presence: true, numericality: { only_integer: true }

  belongs_to :user
end
