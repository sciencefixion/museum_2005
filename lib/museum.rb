class Museum
  attr_reader :name,
              :exhibits,
              :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommended = []
    exhibits.each do |exhibit|
      patron.interests.each do |interest|
        recommended << exhibit if exhibit.name.include?(interest)
      end
    end
    recommended
  end

  def admit(patron)
    @patrons << patron
  end
end
