class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :plateau, :count_turn


  def initialize

    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe

    @plateau = []


    a1 = BoardCase.new("A1")
    a2 = BoardCase.new("A2")
    a3 = BoardCase.new("A3")
    b1 = BoardCase.new("B1")
    b2 = BoardCase.new("B2")
    b3 = BoardCase.new("B3")
    c1 = BoardCase.new("C1")
    c2 = BoardCase.new("C2")
    c3 = BoardCase.new("C3")

    @plateau << a1.case_id
    @plateau << a2.case_id
    @plateau << a3.case_id
    @plateau << b1.case_id
    @plateau << b2.case_id
    @plateau << b3.case_id
    @plateau << c1.case_id
    @plateau << c2.case_id
    @plateau << c3.case_id

    puts c3.case_id


  end

  def play_turn
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire

    puts " où souhaites-tu placer ton symbole ? (choisi entre a1 et c3)"
    @case_id = gets.chomp.to_s

      i = 0
      @count_turn = 0
      tab = []

      while i < @plateau.size

        if plateau[i] == @case_id
          if  @count_turn%2 == 0
            hash = Hash.new
            hash[plateau[i]] = "X"
            tab << hash
          else plateau[i] == @case_id
            hash = Hash.new
            hash[plateau[i]] = "O"
            tab << hash
          end
        end
        i = i +1
        @count_turn +=1
      end

      puts tab

    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)


  end



  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul

    puts tab[0]



  end

end
