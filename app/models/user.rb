class User < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  # validates :total_score, numericality: { only_integer: true }
  # scope :userscores, -> (user) { where(id: game.user_ids) }

end
