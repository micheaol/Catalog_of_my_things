class Genre
  attr_accessor :items

  def initialize(name, _genre)
    @id = Random.rand(110..1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.add_genre(self)
  end
end
