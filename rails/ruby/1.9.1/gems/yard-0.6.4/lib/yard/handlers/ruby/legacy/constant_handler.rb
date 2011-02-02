# (see Ruby::ConstantHandler)
class YARD::Handlers::Ruby::Legacy::ConstantHandler < YARD::Handlers::Ruby::Legacy::Base
  include YARD::Handlers::Ruby::StructHandlerMethods
  HANDLER_MATCH = /\A[A-Z]\w*\s*=[^=]\s*/m
  handles HANDLER_MATCH
  
  process do
    # Don't document CONSTANTS if they're set in second class objects (methods) because
    # they're not "static" when executed from a method
    return unless owner.is_a? NamespaceObject
    
    name, value = *statement.tokens.to_s.split(/\s*=\s*/, 2)
    if value =~ /\A\s*Struct.new(?:\s*\(?|\b)/
      process_structclass(name, $')
    else
      register ConstantObject.new(namespace, name) {|o| o.source = statement; o.value = value.strip }
    end
  end
  
  private
  
  def process_structclass(classname, parameters)
    klass = create_class(classname, P(:Struct))
    create_attributes(klass, extract_parameters(parameters))
  end
  
  def extract_parameters(parameters)
    members = tokval_list(YARD::Parser::Ruby::Legacy::TokenList.new(parameters), TkSYMBOL)
    members.map {|m| m.to_s }
  end
end
