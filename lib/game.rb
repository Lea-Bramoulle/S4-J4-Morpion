class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
    attr_accessor :current_player, :status, :board, :players


  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player

    puts ""
    puts "Bonjour la plèbe, tu va t'appréter à jouer une/des petite(s) parties de morpion."
    puts "-"*60
    puts " "

    puts "Donnez moi le nom du premier joueur, et vu que tu es le premier tu auras la valeur 'X'"
    @name = gets.chomp.to_s
    player1 = Player.new(@name, @value="X")


    puts "Donner moi le nom du deuxieme joueur"
    @name = gets.chomp.to_s
    player2 = Player.new(@name, @value="O")

    players =[]
    players << player1
    players << player2

    return players




    #puts player1.name
    #puts player2.name
    #puts player1.value
    #puts player2.value


  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul




  end

end
