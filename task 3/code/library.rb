class LibraryItem
  def initialize(title, author, year)
    @title = title
    @author = author
    @year = year
  end

  def display_info
    puts "Title: #{@title}"
    puts "Author: #{@author}"
    puts "Year: #{@year}"
  end
end

class Book < LibraryItem
  def initialize(title, author, year, genre)
    super(title, author, year)
    @genre = genre
  end

  def display_info
    puts "Book"
    super
    puts "Genre: #{@genre}"
    puts
  end
end

class DVD < LibraryItem
  def initialize(title, director, year, genre)
    super(title, director, year)
    @director = director
    @genre = genre
  end

  def display_info
    puts "DVD"
    puts "Title: #{@title}"
    puts "Director: #{@director}"
    puts "Year: #{@year}"
    puts "Genre: #{@genre}"
    puts
  end
end

class CD < LibraryItem
  def initialize(title, artist, year, genre)
    super(title, artist, year)
    @artist = artist
    @genre = genre
  end

  def display_info
    puts "CD"
    puts "Title: #{@title}"
    puts "Artist: #{@artist}"
    puts "Year: #{@year}"
    puts "Genre: #{@genre}"
    puts
  end
end

class Library
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def remove_item(item)
    @items.delete(item)
  end

  def display_item(item)
    item.display_info
  end

  def display_all_items
    @items.each do |item|
      display_item(item)
    end
  end
end

book = Book.new("Concepts of Programming Languages", "Robert Sebesta", 2015, "Programming")
dvd = DVD.new("Inception", "Christopher Nolan", 2010, "Science Fiction")
cd = CD.new("A Day at the Races", "Queen", 1976, "Rock")

book.display_info
dvd.display_info
cd.display_info

library = Library.new
library.add_item(book)
library.add_item(dvd)
library.add_item(cd)

library.display_all_items
