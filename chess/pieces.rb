class Pieces

  attr_reader :name

  def initialize(name)#,start_pos)
    @type = name
    #@start_pos = start_pos
  end

  def name 
    @type
  end

end