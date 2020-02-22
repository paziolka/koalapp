class TreeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :species, :description, :method_without_arguments

  attribute :method_with_arguments do |object|
    object.method_with_arguments("answer for all questions:", 42)
  end
end
