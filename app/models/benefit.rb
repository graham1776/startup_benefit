class Benefit < ActiveRecord::Base
  belongs_to :category
  has_many :reccomendations
end
