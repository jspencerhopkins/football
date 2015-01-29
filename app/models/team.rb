class Team < ActiveRecord::Base

	belongs_to :city
	has_one :coach
	has_many :home_games, class_name: "Game", foreign_key: :home_team_id
	has_many :away_games, class_name: "Game", foreign_key: :away_team_id

	# def division_rivals
 #     Team.where(conference: self.conference, division: self.division).where.not(id: self.id)
	# end

	#Define Team#won? which should say whether a team won a particular game. 
	#Test it against the data you entered.

	def to_s
		if city.name == 'Boston'
			"New England #{name}"
		else
			"#{city} #{name}"
		end
	end

end