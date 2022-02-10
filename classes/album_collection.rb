require 'colorize'
require_relative './add_music_album'

class AlbumShelf
  def initialize
    @add_album = AddMusicAlbum.new
  end

  def show_menu
    puts 'What do you wish to do? Please enter the number of your choice'.blue
    puts '--------------------------------------------------------------------'.white
    puts '1.- List all albums'.green
    puts '2.- Add a music album'.green
    puts '0.- Close App'.light_green
  end

  def start
    show_menu
    response = gets.chomp
    case response
    when '1'
      @add_album.fetch_album
      @add_album.list_albums
      start
    when '2'
      @add_album.fetch_albums
      @add_album.add_albums
      puts 'Book Created Succesfully'.light_blue
      start
    when '0'
      puts 'GoodBye'.blue
    else
      puts 'Not a valid option, please try again'.red
      start
    end
  end
end
