# def main_menu
#   puts "CHEATSHEET"
#   puts "1: Command line"
#   puts "2: Search"
#   puts "3: Exit"
#   puts "***Make a selection***"
#   choice = gets.to_i
#
#   case choice
#     when 1
#       man_menu
#     when 2
#       search
#     when 3
#       exit
#   end
# end
#
# def man_menu
#   puts "COMMAND LINE"
#   puts "1: cp"
#   puts "2: mv"
#   puts "3: cd"
#   puts "4: Main Menu"
#   puts "***MAKE SELECTION***"
#   choice2 = gets.to_i
#
#   case choice2
#     when 1
#       puts `man cp`
#     when 2
#       puts `man mv`
#     when 3
#       puts `man cd`
#     when 4
#       main_menu
#   end
# end
#
# def search
#   puts "Enter a manuals page to search for"
#   search_choice = gets
#   puts `man #{search_choice}`
# end
#
# main_menu

#with if statement
def main_menu
  puts "--- CHEATSHEET ---"
  puts "1: Command line"
  puts "2: Search"
  puts "3: Exit"
  puts "*** Make a selection ***"
  choice = gets.to_i

  case choice
    when 1
      man_menu
    when 2
      search
    when 3
      puts "Thanks for using the program"
      exit
    else
      error_num
  end
end

def man_menu
  puts "--- COMMAND LINE ---"
  puts "1: cp"
  puts "2: mv"
  puts "3: cd"
  puts "4: Main Menu"
  puts "5: Exit"
  puts "*** MAKE SELECTION ***"
  choice2 = gets.to_i

  case choice2
    when 1
      puts `man cp`
      man_menu
    when 2
      puts `man mv`
      man_menu
    when 3
      puts `man cd`
      man_menu
    when 4
      main_menu
    when 5
      exit
    else
      error_num
  end
end

def search
  puts "Enter a manuals page to search for"
  search_choice = gets.strip
  puts `man #{search_choice}`
  main_menu
end

def error_num
  puts "Try again"
  main_menu
end

main_menu
