require './decorator'
class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name.upcase.slice(0, 10)
  end
end
