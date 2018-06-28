class Hero
  attr_accessor :name, :power, :bio

  HERO = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    HERO << self
  end

  def self.all
    HERO
  end
  
  def self.clear
    all.clear
  end

end
