class Scoreline < ActiveRecord::Base
  attr_accessible :away_score, :home_score, :winner
end
