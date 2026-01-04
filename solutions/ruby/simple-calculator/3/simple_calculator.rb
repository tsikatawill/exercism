class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation, 'Operation not allowed' unless ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError, 'Invalid argument type' unless first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)

    "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
  rescue ZeroDivisionError
    'Division by zero is not allowed.'
  end

  class UnsupportedOperation < StandardError
  end
end
