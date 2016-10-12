class Artist < ActiveRecord::Base
  has_many :albums

  validates :artist, presence: true
  validates :name, presence: true
end
