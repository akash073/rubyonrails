class SemisterDecorator
  attr_reader :component

  #must method for decorator.But why?
  #IMHO it will contain reference model in component
  def initialize(component)
    @component=component
  end
  def semister_name
    component.name
  end

  #default method_missing
  #Author prefer to put it two implementation at the end of decorator
  #1. The first is the name of the method you were trying to call.
  #2. The second is the args (*args) that were passed to the method.
  #3. The third is a block (&block) that was passed to the method.
  def method_missing(method_name, *args, &block)
    component.send(method_name,*args,&block)
  end

  #respond_to_missing implementation
  def respond_to_missing?(method_name,include_all =false)
    component.respond_to?(method_name,include_all) || super
  end

end