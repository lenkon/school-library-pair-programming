require './decorator'
require './trimmer_decorator'
require './capitalize_decorator'
require './person'
require './teacher'
require './student'
require './classroom'
require './nameable'
require './book'
require './rental'

class App
  def initialize(books_list = [], people_list = [])
    @books_list = books_list
    @people_list = people_list
  end

  def list_books
    puts 'No books' if @books_list.empty?
    @books_list.each do |book|
      puts "Title: \"#{book.title}\", Author: #{book.author}"
    end
  end

  def list_people
    puts 'No people' if @people_list.empty?
    @people_list.each do |person|
      puts "[#{person.class}] Name: \"#{person.name}\", ID: #{person.id}, Age: #{person.age}"
    end
  end

  def create_student
    print 'Age: '
    student_age = gets.chomp.to_i
    print 'Name: '
    student_name = gets.chomp
    print 'Has parent permission? [Y/N]: '
    parent_permission = true
    has_parent_permission = gets.chomp.upcase
    case has_parent_permission
    when 'Y'
      parent_permission = true
    when 'N'
      parent_permission = false
    else
      print 'Invalid value! '
    end
    @people_list << Student.new(nil, student_age, student_name, parent_permission: parent_permission)
    puts 'Person created successfully'
  end

  def create_teacher
    print 'Age: '
    teacher_age = gets.chomp.to_i
    print 'Name: '
    teacher_name = gets.chomp
    print 'Specialization: '
    teacher_specialization = gets.chomp
    @people_list << Teacher.new(teacher_specialization, teacher_age, teacher_name)
    puts 'Person created successfully'
  end

  def create_person
    print 'Do you want to creat a student (1) or a teacher (2)? [Input the number]: '
    person_type = gets.chomp
    case person_type
    when '1'
      create_student
    when '2'
      create_teacher
    else
      print 'Invalid value! '
    end
  end

  def create_book
    print 'Title: '
    book_title = gets.chomp
    print 'Author: '
    book_author = gets.chomp
    @books_list << Book.new(book_title, book_author)
    puts 'Book created successfully'
  end

  def create_rental
    puts 'Select a book from the following list by number'
    @books_list.each_with_index do |book, index|
      puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
    end
    book_index = gets.chomp.to_i
    puts 'Select a person from the following list by number (not id)'
    @people_list.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: \"#{person.name}\", ID: #{person.id}, Age: #{person.age}"
    end
    person_index = gets.chomp.to_i
    print 'Date: '
    rental_date = gets.chomp
    Rental.new(rental_date, @people_list[person_index], @books_list[book_index])
    puts 'Rental created successfully'
  end

  def list_rentals
    @people_list.each do |person|
      puts "- [#{person.class}] Name: \"#{person.name}\", ID: #{person.id}, Age: #{person.age}"
    end
    print 'ID of person: '
    person_id = gets.chomp.to_i
    person_obj = @people_list.find { |person| person.id == person_id }
    puts 'Rentals:'
    person_obj.rentals.each do |rental|
      puts "Date: #{rental.date}, Book: \"#{rental.book.title}\" by #{rental.book.author}"
    end
  end
end
