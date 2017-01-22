# Manager class
require 'date'
class Date
  def self.parsable?(string)
    begin
      parse(string)
      true
    rescue ArgumentError
      false
    end
  end
end
class Manager
  class << self; attr_accessor :gra end
  @@gra = []
  def add_gra(title, producer, price, wiek, typgry, sdate)
    id = @@gra.length + 1
    m = Gra.new(id, title, producer, price, wiek, typgry, sdate)
    @@gra.push(m)
  end

  def list_gra
    @@gra.each do |i|
      print "\n"
      print i.id
      print '. Tytul: '
      print i.title
      print ' Producent: '
      print i.producer
      print ' Cena początkowa: '
      print i.price
      print ' Minimalny wiek: '
      print i.wiek
      print ' Rodzaj gry: '
      print i.typgry
      print ' Data Premiery: '
      print i.sdate
    end
  end

  def exist_gra(id)
    id = id.to_i - 1
    return 1 if @@gra[id]
  end

  def delete_gra(id)
    id = id.to_i - 1
    @@gra.delete_at(id)
    @@gra.each do |i|
      i.id = i.id - 1 if i.id > id
    end
  end

  def update_gra(id, title, producer, price, wiek, typgry, sdate)
    if exist_gra(id).nil?
      print 'Gra o takim ID nie istnieje'
    else
      @@gra[id - 1] &&= Gra.new(id, title, producer, price, wiek, typgry, sdate)
      print 'Gra zostala zmieniona'
    end
  end

  def numeric?(obj)
    obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/).nil? ? true : false
  end
def czydata?(obj)
    obj.to_s.match(/\d{2}-\d{2}-\d{4}/).nil? ? true : false
  end




end
