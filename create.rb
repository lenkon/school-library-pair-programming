require './teacher'
require './student'
require './book'
require './rental'

class Create
  def person
    print 'Do you want to creat a student (1) or a teacher (2)? [Input the number]: '
    type = gets.chomp
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    case type
    when '1'
      student(name, age)
    when '2'
      teacher(name, age)
    else
      puts 'Invalid value!, try again!'
      person
    end
  end

  def student(name, age)
    print 'Has parent permission? [Y/N]: '
    permission = true
    has_permission = gets.chomp.upcase
    case has_permission
    when 'Y'
      permission = true
    when 'N'
      permission = false
    else
      print 'Invalid value! '
      return
    end
    puts 'Person created successfully, press Enter to continue!'
    Student.new(nil, age, name, parent_permission: permission)
  end

  def teacher(name, age)
    print 'Specialization: '
    specialization = gets.chomp
    puts 'Person created successfully, press Enter to continue!'
    Teacher.new(specialization, age, name)
  end

  def book
    print 'Title: '
    book_title = gets.chomp
    print 'Author: '
    book_author = gets.chomp
    puts 'Book created successfully, press Enter to continue!'
    Book.new(book_title, book_author)
  end

  def rental(books, people)
    puts 'Select a book from the following list by number'
    books.each_with_index do |book, index|
      puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
    end
    book_index = gets.chomp.to_i
    puts 'Select a person from the following list by number (not id)'
    people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: \"#{person.name}\", ID: #{person.id}, Age: #{person.age}"
    end
    person_index = gets.chomp.to_i
    print 'Date: '
    rental_date = gets.chomp
    Rental.new(rental_date, people[person_index], books[book_index])
    puts 'Rental created successfully, press Enter to continue!'
  end
end
