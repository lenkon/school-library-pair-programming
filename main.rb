require './app'

MyApp = App.new

def choose_option
  MyApp.show_list
  option = gets.chomp
  return MyApp.save_exit if option == '7'

  action = MyApp.options[option]
  if action
    MyApp.send(action)
  else
    puts 'Invalid value!'
  end
  true
end

def run
  option = choose_option
  run if option
end

def main
  puts 'Welcome to school library App!'
  run
end
main
