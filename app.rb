require 'bundler'
Bundler.require

require_relative 'lib/board'
require_relative 'lib/player'
require_relative 'lib/menu'

choix = 1

while choix == 1        #boucle qui permet de lancer la partie grâce aux fichiers menu.rb et board.rb

	menu = Menu.new
	board = Board.new
	choix = menu.repeat    #permet de rejouer la partie tant que l'utilisateur le désire, car si choix (gets chomp =1 celà implique que la partie recommance, et donc qu'on répète la boucle située dans board.rb)

 end
