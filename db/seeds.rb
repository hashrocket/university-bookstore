["student@hashrocket.edu","rocketeer@hashrocket.edu"].each do |email|
  Factory(:user , :email => email)
end

Factory(:book)
Factory(:war_and_peace)
Factory(:neuromancer)
Factory(:jython)
Factory(:railsway)
Factory(:dune)
Factory(:hitchhicker)
Factory(:hamlet)
