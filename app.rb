FILENAME = "contacts.csv"

require_relative "contact"
require_relative "add_contact"
require_relative "display_contacts"
require_relative "phonebook"

Phonebook.start!("Mark's Phonebook")
