class Restaurant < ActiveRecord::Base

  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :adress, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian)}
end
