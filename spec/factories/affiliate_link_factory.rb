Factory.define :affiliate_link do |factory|
  factory.name "My Awesome Traffic Source"
  factory.visits_count 42
  factory.association(:book)
  factory.association(:user)
end
