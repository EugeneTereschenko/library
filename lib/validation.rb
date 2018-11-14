module Validation
  def validate_object(object, klass)
      raise WrongClassError unless object.is_a?(klass)
  end
  def validate_string(string)
      raise EmptyStringError if string.empty?
  end
end