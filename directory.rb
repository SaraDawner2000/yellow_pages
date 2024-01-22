require "./entry.rb"
class Directory
  def entries
    @entries ||= []
  end 
  def help
    puts "Commands: "
    puts "1 - add entry"
    puts "2 - search entries"
    puts "3 - print all entries"
    puts "4 - delete all entries"
    puts "5 - exit app"
  end 

  def run
    self.help
    command = gets.chomp.to_i
    until [1, 2, 3, 4, 5].include?(command) do
      puts "Please enter valid command"
      command = gets.chomp.to_i
    end
    while command != 5
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
      puts "Enter next command: "
      command = gets.chomp.to_i
      until [1, 2, 3, 4, 5, 6].include?(command) do
        puts "Please enter valid command"
        command = gets.chomp.to_i
      end
    end
    puts "Yellow pages app closed."
  end

  def add
    puts "Enter name: "
    name = gets.chomp
    puts "Enter phone number: "
    phone_number = gets.chomp
    entries.push(Entry.new(name, phone_number))
    puts "New entry added"
  end

  def search_entries   
    puts "Create entry?"
    command = gets.chomp.to_i
    until [1, 0].include?(command) do
      puts "Please enter valid command"
      command = gets.chomp.to_i
    end
    if command  == 1
      self.add
      "New entry added"
    else
      "Entry not added"
    end
    puts "Update this entry?"
    command = gets.chomp.to_i
    until [1, 0].include?(command) do
      puts "Please enter valid command"
      command = gets.chomp.to_i
    end
    if command  == 1
      self.add
      "New entry added"
    else
      "Entry not added"
    end
  end
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



  def delete_all_entries
    entries.clear()
    puts "All entries deleted"
  end
end
