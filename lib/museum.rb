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

  def patrons_by_exhibit_intreset
    # in progress
    exhibits.reduce({}) do |acc, exhibit|
      acc[exhibit] = patrons.interests
      acc
    end
  end
end
