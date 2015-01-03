class Phonebook
  def self.start!(name)
    new(name).start!
  end

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def start!
    puts "Starting #{name}..."
    puts "Press 1 to add a new contact"
    puts "Press 2 to display all contacts"
    puts "Press ANY KEY to EXIT"

    choice = gets

    case choice.to_i
    when 1
      add_contact.process!
    when 2
      display_contacts.process!
    else
      exit
    end
  end

  private

  def add_contact
    AddContact.new
  end

  def display_contacts
    DisplayContacts.new
  end
end
