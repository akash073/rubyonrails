class Album < ActiveRecord::Base
  validates_presence_of :title
  validates :title, length: { minimum: 1, maximum: 100 }
end
