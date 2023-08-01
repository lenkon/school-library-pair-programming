require 'json'

class Save
  def books(list)
    File.open('books.json', 'w', &:write) if list.empty?
    data = []
    list.each do |book|
      data << [book.title, book.author]
    end
    File.write('books.json', JSON.generate(data))
  end

  def people(list)
    File.open('people.json', 'w', &:write) if list.empty?
    data = []
    list.each do |person|
      data << if person.instance_of?(Student)
                [person.class, person.age, person.name, person.parent_permission, person.id]
              else
                [person.class, person.age, person.name, person.specialization, person.id]
              end
    end
    File.write('people.json', JSON.generate(data))
  end

  def rentals(books, people)
    File.open('rentals.json', 'w', &:write) if books.empty?
    data = []
    books.each_with_index do |book, book_index|
      rental_data = []
      book.rentals.each do |rental|
        index = nil
        people.each_with_index do |person, person_index|
          index = person_index if person.id == rental.person.id
        end
        rental_data << [rental.date, index, book_index]
      end
      data << rental_data
    end
    File.write('rentals.json', JSON.generate(data))
  end
end
