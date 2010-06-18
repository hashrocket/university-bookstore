namespace :example do

  desc "Show available tags"
  task :list do
    sh 'git tag -n1'
  end

  tasks = {
    1 => "Generate the rails application using terrarails gem",
    2 => "Customer views",
    3 => "Customer views books index page",
    4 => "Customer views book details page",
    5 => "User signs in",
    6 => "User creates an affiliate link for a book",
    7 => "System counts visits to affiliate link",
    8 => "Customer purchases a book",
  }

  tasks.each do |number, description|
    desc description
    task :"#{number}" do
      sh "git checkout example_#{number}"
      sh 'rake db:drop db:create db:migrate db:seed'
      sh 'git checkout .'
    end
  end

end
