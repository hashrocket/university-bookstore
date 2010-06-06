namespace :example do

  desc "Show available tags"
  task :list do
    sh 'git tag -n1'
  end

  desc "Generate the rails application using terrarails gem"
  task :"1" do
    sh 'git checkout example_1'
    sh 'rake db:drop db:create db:migrate db:seed'
    sh 'git checkout .'
  end

  desc "Customer views books index page"
  task :"2" do
    sh 'git checkout example_2'
    sh 'rake db:drop db:create db:migrate db:seed'
    sh 'git checkout .'
  end

  desc "Customer views book details page"
  task :"3" do
    sh 'git checkout example_3'
    sh 'rake db:drop db:create db:migrate db:seed'
    sh 'git checkout .'
  end

  desc "User signs in"
  task :"4" do
    sh 'git checkout example_4'
    sh 'rake db:drop db:create db:migrate db:seed'
    sh 'git checkout .'
  end

  desc "User creates an affiliate link for a book"
  task :"5" do
    sh 'git checkout example_5'
    sh 'rake db:drop db:create db:migrate db:seed'
    sh 'git checkout .'
  end

  desc "System counts visits to affiliate link"
  task :"6" do
    sh 'git checkout example_6'
    sh 'rake db:drop db:create db:migrate db:seed'
    sh 'git checkout .'
  end

  desc "Customer purchases a book"
  task :"7" do
    sh 'git checkout example_7'
    sh 'rake db:drop db:create db:migrate db:seed'
    sh 'git checkout .'
  end

end
