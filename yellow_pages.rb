class Directory
  def help
    puts "Commands: "
    puts "1 - add entry"
    puts "2 - search by name"
    puts "3 - search by phone #"
    puts "4 - print all entries"
    puts "5 - delete all entries"
    puts "6 - exit app"
  end 
  def run
    self.help
    command = gets.chomp.to_i
    until [1, 2, 3, 4, 5, 6].include?(command) do
      puts "Please enter valid command"
      command = gets.chomp.to_i
    end
    while command != 6
      case command
      when 1
        self.add
      when 2
        self.search_by_name
      when 3
        self.search_by_number
      when 4
        self.print_all_entries
      when 5
        self.delete_all_entries
      end
      command = gets.chomp.to_i
      until [1, 2, 3, 4, 5, 6].include?(command) do
        puts "Please enter valid command"
        command = gets.chomp.to_i
      end
    end
  end
end
yellow_pages = Directory.new
yellow_pages.run
