class List
  def books(list)
    puts 'No books' if list.empty?
    list.each do |book|
      puts "Title: \"#{book.title}\", Author: #{book.author}"
    end
    puts 'Press Enter to continue!'
  end

  def people(list)
    puts 'No people' if list.empty?
    list.each do |person|
      puts "[#{person.class}] Name: \"#{person.name}\", ID: #{person.id}, Age: #{person.age}"
    end
    puts 'Press Enter to continue!'
  end

  def rentals(list)
    list.each do |person|
      puts "- [#{person.class}] Name: \"#{person.name}\", ID: #{person.id}, Age: #{person.age}"
    end
    print 'ID of person: '
    person_id = gets.chomp.to_i
    person_obj = list.find { |person| person.id == person_id }
    puts 'Rentals:'
    person_obj.rentals.each do |rental|
      puts "Date: #{rental.date}, Book: \"#{rental.book.title}\" by #{rental.book.author}"
    end
    puts 'Press Enter to continue!'
  end
end
