Factory.sequence(:email) {|n| "somebody_#{n}@example.com" }

Factory.define(:user) do |user|
  user.email { Factory.next(:email) }
  user.password "password"
  user.password_confirmation "password"
end
