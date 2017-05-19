class Author < ActiveRecord::Base
  #first relationship
  has_many :articles
  #validation
  validates_presence_of :menu_item

  #Decorator logic
end
