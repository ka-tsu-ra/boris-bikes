# The purpose of this class is to give us an instance of
# something that includes 'BikeContainer', to initially run tests against

class BikeContainerTest
  include BikeContainer
end

# `it_behaves_like 'a bike container'` imports all the tests in the shared example
describe BikeContainerTest do 
  it_behaves_like 'a bike container'
  
end