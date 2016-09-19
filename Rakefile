task default: ['test:all']

namespace :test do
  desc 'Run the tests'
  task :all do
    Rake::Task['test:units'].invoke
    Rake::Task['test:functional'].invoke
  end

  desc 'Run the units test'
  task :units do
    ruby 'test/units/velocity_test.rb'
    ruby 'test/units/weight_test.rb'
  end

  desc 'Run the functionals test'
  task :functional do
    ruby 'test/functionals/velocity_test.rb'
    ruby 'test/functionals/weight_test.rb'
  end
end
