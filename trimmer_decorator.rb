require './decorator'

class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name.to_s[0..9]
  end
end
