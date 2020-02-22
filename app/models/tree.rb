class Tree < ApplicationRecord
  def method_without_arguments
    'a String from method_without_arguments'
  end

  def method_with_arguments(argument1, argument2)
    "#{argument1}" + " " + "#{argument2}"
  end
end
