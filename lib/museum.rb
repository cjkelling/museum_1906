class Museum
  attr_reader :name, :exhibits, :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    patron.interests
  end

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    exhibit_interest = {}
    @patrons.each do |patron|
      p patron.interests
      @exhibits.each do |exhibit|
        p exhibit.name
        if exhibit.name == patron.interests
          exhibit_interest[exhibit] = patron
        else
          exhibit_interest[exhibit] = []
        end
      end
    end
    exhibit_interest
  end
end
