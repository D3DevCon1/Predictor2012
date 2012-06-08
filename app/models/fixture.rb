class Fixture < ActiveRecord::Base
  attr_accessible :away_score, :away_team, :home_score, :home_team, :matchdate, :winner
end
