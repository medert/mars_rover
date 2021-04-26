require 'pry'
require_relative './lib/grid'
require_relative './lib/plateau'
require_relative './lib/rover'
include Grid

MENU = ["[1] - Input command sequences via command line",
        "[2] - Input command sequences via .txt file"]
menu_choice = nil

while menu_choice == nil
  puts MENU
  puts
  print "Please choose input type: "
  menu_choice = gets.chomp.to_i
  puts

  case 
  when menu_choice == 1
    puts "Please, input sequence and end with 'Enter'." 
    input = gets("\n\n").chomp
    File.write('console_input.txt',input)
    input_file = File.open("console_input.txt")
    puts
  when menu_choice == 2
    input_file = File.open("input.txt")
    puts
  else
    puts "You must select number from menu"
    menu_choice = nil
  end
end

size = input_file.readline.sub("Plateau:",'').chomp
plateau = Plateau.new(size)

while !input_file.eof?
  arr = input_file.readline.sub(" Landing",'').chomp.split(':')
  rover = Rover.new(arr[0],plateau)
  rover.land(arr[1])
  
  instructions = input_file.readline.chomp.split(':')
  rover.move(instructions[1])
  
  puts "#{rover.name}:#{rover.location}"
end

input_file.close

