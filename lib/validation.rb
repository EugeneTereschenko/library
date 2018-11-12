module Validation
  def validate_o(obj, cl)
    if obj.nil?
      raise ValidationError.new('Empty obj')
    end
    unless obj.is_a?(cl)
      raise ValidationError.new('Wrong class obj')      
    end
  end
  def validate_s(s)
    unless /\w/ =~ s
      raise ValidationError.new('Wrong string s')
    end
  end
end