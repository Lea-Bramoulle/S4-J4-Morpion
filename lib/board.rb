class Board

	def initialize
	  @valeur = []

		tab_position = ["A1","A2","A3","B1","B2","B3","C1","C2","C3"]
		@tab_win = ["a","b","c","d","e","f","g","h","i"]                   # dès qu'une valeur X ou O est placée, elle est s'injecte dans cetableau et remplace la valeur initiale (nous permet de tester les égalité et donc déterminer s'il y a victoire ou défaite)


	  i = 0  		              #au début de la partie on atribu des " " pour que toutesles cases soient vides avant d'être remplies / remplacées par des X ou O

	  while i < 10
	    @valeur[i] = " "
	    i = i + 1
	  end

	@tour_de_jeu = 0
	 while @tour_de_jeu < 9

  	    puts "    1   2   3".green
  	    puts "  +---+---+---+".green
  	    print "A | ".green
  	    print "#{@valeur[1]}".red
  	    print " | ".green
  	    print "#{@valeur[2]}".red
  	    print " | ".green
  	    print "#{@valeur[3]}".red
  	    puts " | ".green

  	    puts "  +---+---+---+".green
  	    print "B | ".green
  	    print "#{@valeur[4]}".red
  	    print " | ".green
  	    print "#{@valeur[5]}".red
  	    print " | ".green
  	    print "#{@valeur[6]}".red
  	    puts " | ".green

  	    puts "  +---+---+---+".green
  	    print "C | ".green
  	    print "#{@valeur[7]}".red
  	    print " | ".green
  	    print "#{@valeur[8]}".red
  	    print " | ".green
  	    print "#{@valeur[9]}".red
   	    puts " | ".green
  	    puts "  +---+---+---+".green

	    puts "Sur quelle case souhaites-tu jouer frr ? (A1 à C3)"
	    print "> "
	    reponse = gets.chomp

		 z = 1

	   tab_position.each do |item|									#on va passer sur chacune des valeurs du tableau contenant les positions du bpard (de A1 à C3) pour vérifier si une de ces valeurs est égale au gets.chomp où le joueur entre la case où il souhaite positionner son symbole X ou O
  	     if reponse != item												#Si la valeur entrée dans le gets.chomp ne correspond à aucune des cases du board, on retourne en haut de la boucle
					 z = z + 1
  	     else
					system('clear')													#pour raffraichir la fenetre du terminal
					if @valeur[z] == " "
					  if @tour_de_jeu % 2 == 0							#si on est à un tour de jeu impaire (tour numéro 1 3 5 7 (on initialise z à 1)) alors on considère que c'est le joueur 1 qui joue, donc qui a le symbole X sur le board
					    @valeur[z] = "X"
							@tab_win[z] = "X"
					  else																	#else, le module est différent de 0 donc tour de boucle impaire donc joueur 2 qui joue avec le symbole O
					    @valeur[z] = "O"
							@tab_win[z] = "O"
					  end
					  @tour_de_jeu = @tour_de_jeu + 1
					else
					  puts "La place est deja prise !"
				  end
			 end

	  end




	if @tab_win[1] == @tab_win[2] && @tab_win[3] == @tab_win[1]    #permet de tester une égalité de victoire
		 puts "La partie est terminée ! Vainueur en A1 A2 A3"
		 		@tour_de_jeu = 11                                        #s'il y a victoire, on passele tour de jeu à 11 pour sortir de laboucle précédente et donc arreter la partie

	elsif @tab_win[4] == @tab_win[5] && @tab_win[6] == @tab_win[4]
		puts "La partie est terminée ! Vainueur en B1 B2 B3 "
		@tour_de_jeu = 11

	elsif @tab_win[7] == @tab_win[8] && @tab_win[9] == @tab_win[7]
		puts "La partie est terminée ! Vainueur en C1 C2 C3 "
		@tour_de_jeu = 11

	elsif @tab_win[1] == @tab_win[4] && @tab_win[7] == @tab_win[1]
		puts "La partie est terminée ! Vainueur en : A1 B1 C1 "
		@tour_de_jeu = 11

	elsif @tab_win[2] == @tab_win[5] && @tab_win[8] == @tab_win[2]
		puts "La partie est terminée ! Vainueur en A2 B2 C2 "
		@tour_de_jeu = 11

	elsif @tab_win[3] == @tab_win[6] && @tab_win[9] == @tab_win[3]
		puts "La partie est terminée ! Vainueur en : A3 B3 C3 "
		@tour_de_jeu = 11

	elsif @tab_win[1] == @tab_win[5] && @tab_win[9] == @tab_win[1]
		puts "La partie est terminée ! Vainueur en A1 B2 C3 "
		@tour_de_jeu = 11

	elsif @tab_win[3] == @tab_win[5] && @tab_win[7] == @tab_win[3]
		puts "vLa partie est terminée ! Vainueur en : A3 B2 C1 "
		@tour_de_jeu = 11
end
end

if @tour_de_jeu == 9              #S'il n'y a pas de victoire avantle tour 9, il y a donc égalité et aucun gagnant.
	puts "Il y a égalité les frères. Vous êtes des noobs"
end

end
end
