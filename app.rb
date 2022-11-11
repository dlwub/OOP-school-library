require './book'
require './classroom'
require './person'
require './rental'
require './student'
require './teacher'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
    @class = ''
  end

  def choose_task
    puts 'Please choose an option by entering a number:'
    options = ['List all books', 'List all people', 'Create a person',
               'Create a book', 'Create a rental', 'List all rentals', 'Exit']
    options.each.with_index(1) do |option, index|
      puts "#{index} - #{option}"
    end
  end

  def do_task(input)
    case input
    when 1 then list_books
    when 2 then list_people
    when 3 then create_person
    when 4 then create_book
    when 5 then create_rental
    when 6 then list_rentals
    end
  end

  def list_books
    @books.each_with_index do |book, index|
      puts "#{index}) Title:#{book.title}, Author:#{book.author}"
    end
  end

  def list_people
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person.role}] Name:#{person.name}, Id:#{person.id}, Age:#{person.age}"
    end
  end

  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    input = gets.chomp.to_i
    case input
    when 1 then create_student
    when 2 then create_teacher
    end
    puts 'Person created successfully.'
  end

  def create_student
    puts 'Age:'
    age = gets.chomp.to_i
    puts 'Name:'
    name = gets.chomp
    puts 'Has parent permission? [y/n]'
    parent_permission = gets.chomp
    parent_permission = parent_permission == 'y'
    student = Student.new(age, 'Student', @class, name, parent_permission)
    @people << student
  end

  def create_teacher
    puts 'Age:'
    age = gets.chomp.to_i
    puts 'Name:'
    name = gets.chomp
    puts 'Specialization'
    specialization = gets.chomp
    teacher = Teacher.new(specialization, age, 'Teacher', name)
    @people << teacher
  end

  def create_book
    puts 'Title:'
    title = gets.chomp
    puts 'Author:'
    author = gets.chomp
    book = Book.new(title, author)
    @books << book
    puts 'Book created successfully.'
  end

  def create_rental
    puts 'Select a book from the following list by number:'
    list_books
    book_chosen = gets.chomp.to_i
    book = @books[book_chosen]
    puts 'Select a person from the following list by number (not id):'
    list_people
    person_chosen = gets.chomp.to_i
    person = @people[person_chosen]
    puts 'Date:'
    date = gets.chomp
    rental = Rental.new(date, book, person)
    @rentals << rental
    puts 'Rental created successfully.'
  end

  def list_rentals
    puts 'Id of person'
    id = gets.chomp.to_i
    @rentals.each do |rental|
      puts "Date: #{rental.date}, Book: #{rental.book.title} by #{rental.book.author}" if rental.person.id == id
    end
  end
end
