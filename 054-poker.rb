class Card
	RANKS={'2'=>2,'3'=>3,'4'=>4,'5'=>5,'6'=>6,'7'=>7,'8'=>8,'9'=>9,'T'=>10,'J'=>11,'Q'=>12,'K'=>13,'A'=>14}
	attr_accessor :rank, :suit
	def initialize(rank, suit)
		@rank,@suit = RANKS[rank],suit
	end

	def to_s
		"#{@rank}#{@suit}"
	end

	def inspect
		to_s
	end
end

class Hand
	attr_reader :suits, :ranks

	def initialize(cards)
		cards=cards.collect {|c| Card.new(*c.split('')) }
		@suits = ['C','D','H','S'].collect {|s| [s, cards.select {|c| c.suit == s }] }.select {|s| s[1].length > 0 }
		@ranks = (2..14).collect {|r| [r, cards.select {|c| c.rank == r }] }.select {|r| r[1].length > 0 }
	end

	def score
		(full_house? ? 9000 + n_of_a_kind?[0][0] :
		 (flush? ? 8000 + @ranks[-1][0] :
		  (straight? ? 7000 + @ranks[-1][0] :
		   (three_of_a_kind? ? 6000 + n_of_a_kind?[0][0] :
		    (two_pairs? ? 5000 + n_of_a_kind?[0][0] :
		     (two_of_a_kind? ? 4000 + n_of_a_kind?[0][0] :
		      @ranks[-1][0]))))))
	end

	def flush?
		@suits.length == 1
	end

	def n_of_a_kind?
		counts = @ranks.collect{|r| [r[0], r[1].length] }
		maxcount = counts.inject(0) {|max, a| [a[1],max].max }
		counts = counts.select {|c| c[1] > 1 }.sort {|a,b| (a[1] == b[1] ? b[0] <=> a[0] : b[1] <=> a[1]) }
		counts.length > 0 ? counts : false
	end

	def three_of_a_kind?
		n=n_of_a_kind?
		n && n[0][1] == 3
	end

	def two_of_a_kind?
		n=n_of_a_kind?
		n && n.find {|i| i[1] == 2 }
	end

	def two_pairs?
		n=n_of_a_kind?
		n && n.length == 2 && n[0][1] == 2 && n[1][1] == 2
	end

	def full_house?
		three_of_a_kind? && two_of_a_kind?
	end

	def straight?
		s = @ranks[0][0] - 1
		@ranks.all? {|r| r[0] == (s+=1) && r[1].length == 1 }
	end

	def to_s
		@ranks.collect {|r| r[1]}.join(' ')
	end
end
players = [0,0]
games = IO.readlines("input/054.txt").collect {|l| [Hand.new(l.split[0,5]), Hand.new(l.split[5,5])] }
games.each {|g|
	scores = [g[0].score, g[1].score]
	scores[g[0].ranks[-1][0] < g[1].ranks[-1][0] ? 0 : 1] = 0 if scores[0] == scores[1]
	players[scores[0] > scores[1] ? 0 : 1] += 1
}
p players
