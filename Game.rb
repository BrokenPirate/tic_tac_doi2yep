class Game
  def initialize
    #TO DO : créé 2 joueurs, créé un board
            puts "Player 1 will be playing X -> Whats Player 1 name ?"
            @player1 = Player.new(@player_name, "x")
            puts "Player 2 will be playing O -> Whats Player 2 name ?"
            @player2 = Player.new(@player_name, "o")
            puts "#{@player1.player_name} will play X"
            puts "#{@player2.player_name} will play O"
            
            Board.new
            @current_player = @player1
  end

  def go
    # TO DO : lance la partie
  end

  def turn(player)
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
    @choice = 0
    @board_game.show
    # choose number btwn 1..9

            @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
  end

end