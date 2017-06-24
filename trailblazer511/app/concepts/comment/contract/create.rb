module Comment::Contract
  class Create < Reform::Form
    property :name
    #property :length

    #validates :title,  length: 2..33
    #validates :length, numericality: true
    validates :name, presence: true
  end
end