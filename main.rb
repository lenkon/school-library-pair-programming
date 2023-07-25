require './app'
MyApp = App.new
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

def choose_option
  options = {
    '1' => :list_books,
    '2' => :list_people,
    '3' => :create_person,
    '4' => :create_book,
    '5' => :create_rental,
    '6' => :list_rentals
  }
  fun = gets.chomp
  return false if fun == '7'

  action = options[fun]

  if action
    MyApp.send(action)
  else
    puts 'Invalid value!'
  end
  true
end

def list_options
  show_list
  option = choose_option
  list_options if option
end

def main
  puts 'Welcome to school library App!'
  list_options
end
main
