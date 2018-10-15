class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)

  
    def initialize(idx, value)
        #TO DO doit régler sa valeur, ainsi que son numéro de cell
    	@index_cell = idx.to_i
    	@value = value
 	 end
  
 	 def to_s
 	   #TO DO : doit renvoyer la valeur au format string
 	 end

end
