class View
	def create_gossip
		puts "Entrez le nom de l'auteur du potin"
		print ">"
		author = gets.chomp
		puts "Entrez le contenu du potin"
		print ">"
		content = gets.chomp
		return {"content" => content, "author" => author}
	end

	def index_gossips(gossips)
		gossips.each do |gossip|
			puts gossip.author
			puts gossip.content
			puts
		end
	end
end