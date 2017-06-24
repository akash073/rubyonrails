require "trailblazer"

class Comment::Create < Trailblazer::Operation
  extend Contract::DSL
  step     Model( Comment, :new )
  step     :create
  # ..
  def create(options)
    name =  options["params"]["comment"]["name"]
    Comment.create!(:name => name)
  end
end