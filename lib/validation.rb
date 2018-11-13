module Validation
  def validate_object(obj, klass)
      raise WrongObjectError unless obj.is_a?(klass)    
  end
  def validate_string(s)
      raise WrongStringError     unless /\w/ =~ s
  end
  #validate house number, which can include integers and letters. Example, 7 A, 62 K
  def validate_house(s)
      raise WrongHouseError unless /^[a-zA-Z0-9 _.-]*$/ =~ s
  end
end