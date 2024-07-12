class View


    def create_gossip

        puts"Saisissez le nom de l'auteur"
        print">"
        author = gets.chomp
        puts"Saisissez la phrase  gossip"
        print">"
        content = gets.chomp
        params = {author: author, content: content}
        #puts "#{params}"
        return params
    end
    def index_gossips (all_gossips)
        all_gossips.each do |line|
            puts line[':author']
            puts  
            puts""
        end

    end
end
#View.new.create_gossip