class Comment::Create < Trailblazer::Operation
  include Model
  step Model( Comment, :new )
  #step Policy::Pundit( Application::Policy, :create? )
  #step Contract::Build( constant: Song::Contract::Create )
  #step Contract::Validate()
  #step Contract::Persist()
  #fail Notifier::DBError
  step :create

  def create(params)
   a = 0;
  end
end