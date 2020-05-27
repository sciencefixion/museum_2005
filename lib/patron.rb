class Patron
  def initialize(attributes)
    @name = attributes[:name]
    @spending_money = attributes[:spending_money]
    @interests = []
  end
end
