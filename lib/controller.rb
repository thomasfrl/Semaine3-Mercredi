class Controller
	def initialize
		@view = View.new
	end

	def create_gossip
		params = @view.create_gossip
		gossip = Gossip.new(params["author"], params["content"])
		gossip.save
	end

	def index_gossips
		gossips = Gossip.all
		@view.index_gossips(gossips)
	end

end
