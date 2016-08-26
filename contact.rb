# Copy your entire Contact class from the old crm assignment here.
# Then, run the following at the command line:
#
#   ruby test/contact_test.rb
#
# If your implementation of the Contact class is 'right', then you should see that all tests pass!
gem 'activerecord', '=4.2.7'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm-web.sqlite3')

class Contact < ActiveRecord::Base

  field :first_name, as: :string
  field :last_name,  as: :string
  field :email,      as: :string
  field :note,       as: :string


  # attr_reader :id
  # attr_accessor :first_name, :last_name, :email, :note

  # @@contacts = []
  # @@id = 1
  #
  # def self.id
  #   @@id
  # end
  #
  # def self.delete_all
  #   @@contacts = []
  # end
  #
  # def update(attr, value)
  #   if attr == "first_name"
  #     self.first_name = value
  #   elsif attr == "last_name"
  #     self.last_name = value
  #   elsif attr == "email"
  #     self.email = value
  #   elsif attr == "note"
  #     self.note = value
  #   end
  # end
  #
  # def delete
  #   @@contacts.delete_if { |contact| contact.id == self.id }
  #   end
  #
  #
  #  def self.find_by(attr, value)
  #   @@contacts.each do |contact|
  #   if attr == "first_name" && contact.first_name == value
  #     return contact
  #   elsif attr == "last_name" && contact.last_name == value
  #     return contact
  #   elsif attr == "email" && contact.email == value
  #     return contact
  #   elsif attr == "note" && contact.note == value
  #     return contact
  #   end
  #   end
  # end

  def full_name
  return "#{self.first_name} #{self.last_name}"
  end

  # def self.id=(id)
  #   @@id = id
  # end
  #
  # def self.create(first_name, last_name, email, note)
  #   new_contact = Contact.new(first_name, last_name, email, note)
  #   @@contacts << new_contact
  #   return new_contact
  # end
  #
  # def self.all
  #   @@contacts
  # end


  # # This method should initialize the contact's attributes
  # def initialize(first_name, last_name, email, note)
  #   @first_name = first_name
  #   @last_name = last_name
  #   @email = email
  #   @note = note
  #   @id = @@id
  #   @@id += 1
  # end
  #
  #
  # # This method should accept an id as an argument
  # # and return the contact who has that id
  # def self.find(id)
  #   @@contacts.find { |contact| contact.id == id}
  #   # @@contacts.each do |contact|
  #     # if id == contact.id
  #     #   return contact
  #   #   end
  #     # end
  #   # return nil
  # end
  #
  # def main_menu
  #   while true
  #     print_main_menu
  #     user_selected = gets.to_i
  #     call_option(user_selected)
  #   end
  # end

end

Contact.auto_upgrade!
