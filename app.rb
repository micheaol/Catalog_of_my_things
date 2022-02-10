require 'colorize'
require_relative 'classes/bookshelf'

class App
  def initialize
    @book_shelf = BookShelf.new
    @album_shelf = AlbumShelf.new
  end

  def run
    show_menu
    selection = gets.chomp
    case selection
    when '1'
      @book_shelf.start
    when '2'
      @album_shelf.start
    else
      puts 'GoodBye'.blue
      nil
    end
  end

  def show_menu
    puts 'Select an option to create'.blue
    puts '--------------------------------------------------------------------'.white
    puts '1.- Work with books'.green
    puts '0.- Close App'.light_green
  end
end