require 'json'
require './app'

class Open
  def books
    return [] unless File.exist?('books.json')

    list = JSON.parse(File.read('books.json'))
    books_list = []
    list.each do |book|
      books_list << Book.new(book[0], book[1])
    end
    books_list
  end

  def people
    return [] unless File.exist?('people.json')

    list = JSON.parse(File.read('people.json'))
    people_list = []
    list.each do |person|
      people_list << if person[0] == 'Student'
                       Student.new(nil, person[1], person[2], parent_permission: person[3])
                     else
                       Teacher.new(nil, person[1], person[2])
                     end
    end
    people_list
  end

  def rentals(books, people)
    return [] unless File.exist?('rentals.json')

    list = JSON.parse(File.read('rentals.json'))
    list.each do |book|
      book.each do |rental|
        Rental.new(rental[0], people[rental[1]], books[rental[2]]) if rental[1]
      end
    end
  end
end
