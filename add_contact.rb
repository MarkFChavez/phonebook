class AddContact
  def process!
    Contact.create!(name: contact_name, number: contact_number)
    puts "Added as a new contact!"
  end

  private

  def contact_name
    puts "Enter name of contact:"
    gets
  end

  def contact_number
    puts "Enter number of contact:"
    gets
  end
end
