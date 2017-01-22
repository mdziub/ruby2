# Gra class
class Gra
  attr_accessor :id, :title, :producer, :price, :wiek, :typgry, :sdate

  def initialize(id, title, producer, price, wiek, typgry, sdate)
    @id = id
    @title = title
    @producer = producer
    @price = price
    @wiek = wiek
    @typgry = typgry
    @sdate = sdate
  end
end
