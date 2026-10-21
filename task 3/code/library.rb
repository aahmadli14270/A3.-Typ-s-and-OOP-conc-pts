class LibraryItem
  attr_reader :title

  def initialize(title, author, year)
    @title = title
    @author = author
    @year = year
    @bought = false
  end

  def buy
    @bought = true
  end

  def return_item
    @bought = false
  end

  def to_s
    "#{@title} by #{@author} (#{@year})"
  end

  def display_info
    puts "Title of the item: #{@title}"
    puts "Author of the item: #{@author}"
    puts "Year: #{@year}"
    if not @bought
      puts "Status of the item: available"
    else
      puts "Status of the item: bought"
    end
  end
end

class Book < LibraryItem
  def initialize(title, author, year, genre, pages = 0)
    super(title, author, year)
    @genre = genre
    @pages = pages
  end

  def to_s
    "Book: #{@title} by #{@author} (#{@year}), #{@genre}, #{@pages} pages"
  end

  def display_info
    puts "Book"
    super
    puts "Genre: #{@genre}"
    puts "Pages: #{@pages}"
    puts
  end
end

class DVD < LibraryItem
  def initialize(title, director, year, genre, minutes = 0)
    super(title, director, year)
    @director = director
    @genre = genre
    @minutes = minutes
  end

  def to_s
    "DVD: #{@title} by #{@director} (#{@year}), #{@minutes} min"
  end

  def display_info
    puts "DVD"
    puts "Title: #{@title}"
    puts "Director: #{@director}"
    puts "Year: #{@year}"
    puts "Genre: #{@genre}"
    puts "Minutes: #{@minutes}"
    if not @bought
      puts "Status of the item: available"
    else
      puts "Status of the item: bought"
    end
    puts
  end
end

class CD < LibraryItem
  def initialize(title, artist, year, genre, tracks = 0)
    super(title, artist, year)
    @artist = artist
    @genre = genre
    @tracks = tracks
  end

  def to_s
    "CD: #{@title} by #{@artist} (#{@year}), #{@tracks} tracks"
  end

  def display_info
    puts "CD"
    puts "Title: #{@title}"
    puts "Artist: #{@artist}"
    puts "Year: #{@year}"
    puts "Genre: #{@genre}"
    puts "Tracks: #{@tracks}"
    if not @bought
      puts "Status of the item: available"
    else
      puts "Status of the item: bought"
    end
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

  def count
    @items.length
  end

  def find_by_title(title)
    @items.each do |item|
      if item.title == title
        return item
      end
    end
    nil
  end
end

book = Book.new("Əlqəmə", "Kəramət Böyükçöl", 2021, "Psychological Fiction", 160)
dvd = DVD.new("Inception", "Christopher Nolan", 2010, "Science Fiction", 148)
cd = CD.new("A Day at the Races", "Queen", 1976, "Rock", 10)

book.display_info
dvd.display_info
cd.display_info

library = Library.new
library.add_item(book)
library.add_item(dvd)
library.add_item(cd)

library.display_all_items

puts "Count: #{library.count}"
found = library.find_by_title("Inception")
found.buy
found.display_info

puts book
puts dvd
puts cd
