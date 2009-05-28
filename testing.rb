gem "rspec", :lib => false, :version => '>= 1.2.6'
gem "rspec-rails", :lib => false, :version => '>= 1.2.6'
gem "webrat"
gem "cucumber"

generate(:rspec)
generate(:cucumber)