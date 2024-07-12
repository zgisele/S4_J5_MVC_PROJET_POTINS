
require_relative 'view'
require_relative 'gossip'


class Controller
    def initialize
        @view = View.new
    end
    def create_gossip
        params = @view.create_gossip
        #@gossip = Gossip.new(author, content)
        gossip = Gossip.new(params[:author],params[:content])
        save_data = gossip.save
        puts"Vous ete  #{gossip.author} et vous dit #{gossip.content }"
    end

    def index_gossips

        all_gossips = Gossip.all
        @view.index_gossips(all_gossips)

    end

end