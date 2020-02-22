object @tree
attributes :id, :species, :description, :method_without_arguments
node(:method_with_arguments) { |object| object.method_with_arguments("answer for all questions:", 42) }
