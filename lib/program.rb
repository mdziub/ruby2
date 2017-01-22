require_relative 'menu'
require_relative 'gra'
require_relative 'manager'
# Run class
class Run
  @manager = Manager.new
  @menu = Menu.new
  i = 1
  while i == 1
    @menu.clear
    puts @menu.to_s
    printf "\n Wybierz opcje: "
    case gets.chomp
    when '1'
      puts
        title = ''
     	producer = ''
	price = ''
	wiek = ''
	typgry = ''
	sdate = ''

      loop do
        puts 'Podaj nazwę gry: '
        title = gets.chomp
        break if title != ''
      end

      loop do
        puts 'Podaj producenta: '
        producer = gets.chomp
        break if producer != ''
      end

      loop do
        puts 'Podaj cene: '
        price = gets.chomp
        break if @manager.numeric?(price) == false
      end

	loop do
        puts 'Podaj minimalny wiek: '
        wiek = gets.chomp
        break if @manager.numeric?(wiek) == false
      end

	loop do
        puts 'Podaj typ gry: '
        typgry = gets.chomp
        break if typgry != ''
      end

	loop do
        puts 'Podaj date premiery: '
        sdate = gets.chomp
        break if @manager.czydata?(sdate) == false
	
      end


      @manager.add_gra(title, producer, price, wiek, typgry, sdate)
      print 'Gra zostala dodana'
      gets

    when '2'
      puts
      puts 'Podaj ID gry, ktorą chcesz usunac '
      id = gets.chomp
      if @manager.exist_gra(id) == 1
        @manager.delete_gra(id)
        puts 'Gra została usunieta'
      else
        puts 'Gra o takim ID nie istnieje'
      end
      gets

    when '3'
      title = ''
      producer = ''
      price = ''
	wiek = ''
	typgry = ''
	sdate = ''
      puts
	puts 'podaj ID gry'
	id = gets.chomp
	id = id.to_i
      loop do
        puts 'Podaj nazwę gry: '
        title = gets.chomp
        break if title != ''
      end
      loop do
        puts 'Podaj producenta: '
        producer = gets.chomp
        break if producer != ''
      end
      loop do
        puts 'Podaj cene: '
        price = gets.chomp
        break if price != ''
      end
	loop do
        puts 'Podaj minimalny wiek: '
        wiek= gets.chomp
        break if wiek != ''
      end
	loop do
        puts 'Podaj typ gry: '
        typgry = gets.chomp
        break if typgry != ''
      end
	loop do
         puts 'Podaj date premiery: '
         sdate = gets.chomp
         break if sdate != ''
	end
      @manager.update_gra(id, title, producer, price, wiek, typgry, sdate)
      
      gets

    when '4'
      puts
      print "---- Lista Gier ---- \n"
      @manager.list_gra
      printf "\n"
      gets.chomp
    when '0'
      break
    else
      puts 'Podales zly znak'
      gets
    end
  end

  @runclass = Run.new
  @runclass
end
