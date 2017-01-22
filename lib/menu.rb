# Menu class
class Menu
  attr_accessor :menu

  def initialize
    @menu = "  Spis nowych gier \n"
    @menu << "----------------------------------\n"
    @menu << "1. Dodaj nową gre \n"
    @menu << "2. Usun gre \n"
    @menu << "3. Edytuj podana gre \n"
    @menu << "4. Wyswietl wszystkie gry \n"
    @menu << "0. Wyjscie\n"
    @menu << "----------------------------------\n"
  end

  def to_s
    menu
  end

  def clear
    system 'clear'
    system 'cls'
  end
end
