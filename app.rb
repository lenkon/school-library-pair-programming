require './decorator'
require './trimmer_decorator'
require './capitalize_decorator'
require './person'
require './classroom'
require './nameable'
require './book'
require './rental'
require './create'
require './list'

class App
  attr_reader :options

  def initialize(books_list = [], people_list = [])
    @books_list = books_list
    @people_list = people_list
    @options = {
      '1' => :list_books,
      '2' => :list_people,
      '3' => :create_person,
      '4' => :create_book,
      '5' => :create_rental,
      '6' => :list_rentals
    }
    @create = Create.new
    @list = List.new
  end

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

  def list_books
    @list.books(@books_list)
    gets.chomp
  end

  def list_people
    @list.people(@people_list)
    gets.chomp
  end

  def create_person
    @people_list << @create.person
    gets.chomp
  end

  def create_book
    @books_list << @create.book
    gets.chomp
  end

  def create_rental
    @create.rental(@books_list, @people_list)
    gets.chomp
  end

  def list_rentals
    @list.rentals(@people_list)
    gets.chomp
  end
end
