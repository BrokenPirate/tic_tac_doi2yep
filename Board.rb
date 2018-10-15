class Board
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases


  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe

    cell_1 = BoardCase.new(1, "1")
    cell_2 = BoardCase.new(2, "2")
    cell_3 = BoardCase.new(3, "3")
    cell_4 = BoardCase.new(4, "4")
    cell_5 = BoardCase.new(5, "5")
    cell_6 = BoardCase.new(6, "6")
    cell_7 = BoardCase.new(7, "7")
    cell_8 = BoardCase.new(8, "8")
    cell_9 = BoardCase.new(9, "9")
    @cells = [cell_1, cell_2, cell_3, cell_4, cell_5, cell_6, cell_7, cell_8, cell_9]

  end

  def to_s
  #TO DO : afficher le plateau

    puts "\n     |     |     "
    puts "  #{cells[0].value}  |  #{cells[1].value}  |  #{cells[2].value}  "
    puts "_____|_____|_____"
    puts "     |     |     "
    puts "  #{cells[3].value}  |  #{cells[4].value}  |  #{cells[5].value}  "
    puts "_____|_____|_____"
    puts "     |     |     "
    puts "  #{cells[6].value}  |  #{cells[7].value}  |  #{cells[8].value}  "
    puts "     |     |     "



  end

  def play
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
  
            def get_player_choice(choice, player_team, player)                                      # On recoit la volonté de jeu du player appelé, sa marque et son nom et on appelle la fonction de changement de valeur d'une cell
          self.set_cell_value(choice, player_team, player)
            end

                def set_cell_value(choice, player_team, player)                                         # On change la valeur de la cell choisie par la marque du joueur, en ajoutant de la couleur
                  if cell_playable?(@cell[choice-1])
                    if player_team == "X"
                      @cell[choice-1].value = cell.red
                    else                @cell[choice-1].value = cell.green
                      end
                    else
                    puts "Taken ! Please try again !"                                             # Appelle la fonction qui check si la cell a déjà été modifiée
                    choice = (gets.chomp).to_i
                    self.set_cell_value(choice, player_team, player)
                  end
                end

                          def cell_playable?(cell)                                                            # Regarde si la cell est deja modifiée
                            if cell.value.to_i == cell.index_cell
                              return true
                              else
                              return false
                            end
                          end

  end


    #TO DO : qui gagne ?
  def victory(player)                                                               # Recense toutes les conditions de victoire (8 au total)

    if @cells[0].value == @cells[1].value && @cells[1].value == @cells[2].value
      return true

    elsif @cells[3].value == @cells[4].value && @cells[4].value == @cells[5].value
      return true

    elsif @cells[6].value == @cells[7].value && @cells[7].value == @cells[8].value
      return true

    elsif @cells[0].value == @cells[3].value && @cells[3].value == @cells[6].value
      return true

    elsif @cells[1].value == @cells[4].value && @cells[4].value == @cells[7].value
      return true

    elsif @cells[2].value == @cells[5].value && @cells[5].value == @cells[8].value
      return true

    elsif @cells[2].value == @cells[4].value && @cells[4].value == @cells[6].value
      return true

    elsif @cells[0].value == @cells[4].value && @cells[4].value == @cells[8].value
      return true

    end
  end
end

