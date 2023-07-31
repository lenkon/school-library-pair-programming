require './app'
MyApp = App.new

def choose_option
  option = gets.chomp
  return false if option == '7'
  action = MyApp.options[option]

  def show_list
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end

  if action
    MyApp.send(action)
  else
    puts 'Invalid value!'
  end
  true
end

def run
  show_list
  option = choose_option
  run if option
end

def main
  puts 'Welcome to school library App!'
  run
end
main
