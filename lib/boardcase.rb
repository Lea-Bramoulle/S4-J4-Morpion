class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
    attr_accessor :value, :case_id

  def initialize(case_id )
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @case_id = case_id
    @value

  end

end