# Add your code here
require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help

  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"

end


def list(array)

  list_with_numbers = {}

  array.each_with_index do |item, index|
    list_with_numbers["#{index + 1}"] = item
    puts "#{index + 1}. #{item}"
  end
list_with_numbers
end


def play(songs)
  songs_list = list(songs)

    puts "Please enter a song name or number:"
    user_input = gets.chomp

      songs_list.each do |key, value|
        if user_input == key || value
          puts "Playing #{value}"
        end
      end
    puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  puts "Please enter a command:"

  user_input = gets.chomp

  while user_input != exit do
    if user_input == "help"
       help
    elsif user_input == "list"
       list(songs)
    elsif user_input == "play"
       play(songs)
    end
  user_input = gets.chomp
  end

end
