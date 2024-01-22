require "./entry.rb"
class Directory
  #create array variable for storing the entries
  def entries
    @entries ||= []
  end 
  #print out informational message about available commands
  def help
    puts "Commands: "
    puts "1 - add entry"
    puts "2 - search entries"
    puts "3 - print all entries"
    puts "4 - delete all entries"
    puts "5 - exit app"
  end 
  #main method of class
  def run
    self.help
    command = gets.chomp.to_i
    #check validity of entered command, prompt user again if invalid
    until [1, 2, 3, 4, 5].include?(command) do
      puts "Please enter valid command"
      command = gets.chomp.to_i
    end
    #while loop that lasts until the command 5 (exit app) is entered
    while command != 5
      #case statement for executing method depending on user inputted command
      case command
      when 1
        self.add
      when 2
        self.search_entries
      when 3
        self.print_all_entries
      when 4
        self.delete_all_entries
      end
      #prompt to enter next command with validity check
      puts "Enter next command: "
      command = gets.chomp.to_i
      until [1, 2, 3, 4, 5, 6].include?(command) do
        puts "Please enter valid command"
        command = gets.chomp.to_i
      end
    end
    puts "Yellow pages app closed."
  end
  #add method utilizing the Entry custom class
  def add
    puts "Enter name: "
    name = gets.chomp
    puts "Enter phone number: "
    phone_number = gets.chomp
    entries.push(Entry.new(name, phone_number))
    puts "New entry added"
  end

  def search_entries 
    #allows user to select search by name or by phone number
    puts "Search by name [0] or phone number [1]?"
    name_or_number_command = self.two_option_command_selector
    if name_or_number_command == 0
      puts "Enter name: "
      search_name = gets.chomp
      search_result = entries.find {|entry| entry.name == search_name}
    else
      puts "Enter phone number: "
      search_number = gets.chomp
      until search_number =~ /^\d{10}$/ do
        puts "Please enter valid phone number in the format \"+1-xxxxxxxxxx\""
        search_number = gets.chomp
      end
      search_result = entries.find {|entry| entry.phone_number == "+1-(#{search_number[0,3]})-#{search_number[3,3]}-#{search_number[6,3]}"}
    end
    #if the search result is nil (the default output for Enumberable#find if no matching element was found), prints "Entry not found", else prints first matched entry
    if search_result == nil
      puts "Entry not found"
    else
      puts "Entry found in directory: "
      puts "#{search_result.name}, #{search_result.phone_number}"
    end
  end
  #If entries present, iterates over entries array and prints content. If no entries present, prints informational message
  def print_all_entries
    unless entries == []
      puts "Current entries: "
      entries.each do |entry|
        puts "#{entry.name}, #{entry.phone_number}"
      end
    else
      puts "Directory empty"
    end
  end
  #empties entries array using the array method Array#clear()
  def delete_all_entries
    entries.clear()
    puts "All entries deleted"
  end

  def two_option_command_selector
    command = gets.chomp.to_i
    until [1, 0].include?(command) do
      puts "Please enter valid command"
      command = gets.chomp.to_i
    end
    return command
  end

end
