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
			puts
			puts gossip.author + " : " + gossip.content
		end
		puts
	end

	def destroy_gossip(gossips)
		prompt = TTY::Prompt.new
		prompt.select("Choisis le potin que tu veux supprimer", cycle: true) do |menu|
			gossips.size.times do |i|
				menu.choice "#{gossips[i].author} : #{gossips[i].content}", -> { return gossips[i] }
			end
		end
	end
end