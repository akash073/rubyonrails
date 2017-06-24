require "trailblazer"

class Comment::Create < Trailblazer::Operation
#  extend Contract::DSL

 # contract do
    # this is a Reform::Form class!
 #   property :name, validates: {presence: true}
 # end
  step Model( Comment, :new )
  step :create
 # step Contract::Build()
  #step Contract::Validate( key: :comment )
  #step Contract::Persist( )

  def create(options)
    name =  options["params"]["comment"]["name"]
    Comment.create!(:name => name)
  end
end