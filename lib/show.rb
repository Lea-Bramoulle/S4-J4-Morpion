class Show 

  def show_board(board)
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
  end

end


@plateau = []

@plateau << a1 = BoardCase.new("A1")
@plateau << a2 = BoardCase.new("A2")
@plateau << a3 = BoardCase.new("A3")
puts ""
@plateau << b1 = BoardCase.new("B1")
@plateau << b2 = BoardCase.new("B2")
@plateau << b3 = BoardCase.new("B3")
puts ""
@plateau << c1 = BoardCase.new("C1")
@plateau << c2 = BoardCase.new("C2")
@plateau << c3 = BoardCase.new("C3")






i = 0

plateau = Hash.new
plateau["A1"] = ""
plateau["A2"] = ""
plateau["A3"] = ""
plateau["B1"] = ""
plateau["B2"] = ""
plateau["B3"] = ""
plateau["C1"] = ""
plateau["C2"] = ""
plateau["C3"] = ""

while i < plateau.size
  BoardCase.new(plateau[i])
  i = i + 1
end

puts plateau
