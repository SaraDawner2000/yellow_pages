class Entry
  attr_accessor :name, :phone_number
  def initialize(name, phone_number)
    @name = name
    self.phone_number = phone_number
  end
  def phone_number=(value)
    until value =~ /^\d{10}$/ do
      puts "Please enter valid phone number in the format \"+1-xxxxxxxxxx\""
      value = gets.chomp
    end
    @phone_number = "+1-(#{value[0,3]})-#{value[3,3]}-#{value[6,3]}"
  end
end

