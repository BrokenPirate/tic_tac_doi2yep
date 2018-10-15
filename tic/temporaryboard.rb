  class BoardCase                     # Classe qui crée une nouvelle session de jeu

  attr_accessor :name, :value

  def initialize(name, value)
    @name = name.to_i
    @value = value
  end

end

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

  def show
  #TO DO : afficher le plateau

    puts "\n     |     |     "
    puts "  #{@cells[0].value}  |  #{@cells[1].value}  |  #{@cells[2].value}  "
    puts "_____|_____|_____"
    puts "     |     |     "
    puts "  #{@cells[3].value}  |  #{@cells[4].value}  |  #{@cells[5].value}  "
    puts "_____|_____|_____"
    puts "     |     |     "
    puts "  #{@cells[6].value}  |  #{@cells[7].value}  |  #{@cells[8].value}  "
    puts "     |     |     "

  end

  initialize
  show