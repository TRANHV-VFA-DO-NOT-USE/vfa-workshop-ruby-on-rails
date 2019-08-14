## Testing in Rails

Update file factory.yml in test>fixtures
```
one:
  name: Lab1

two:
  name: Lab2
```

- Update file factory_controller_test.rb in folder test>controllers
```
require 'test_helper'

class FactoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get factory_index_url
    assert_response :success
  end
  
  test "should create Factory" do
    post "/factory", params: { factory: { name: 'New test factory' } }   
    Factory.count.eql?(3)
    assert_redirected_to factory_index_path
  end
  test "should create Factory failed" do
    post "/factory", params: { factory: { concho: 'New test factory' } }   
    Factory.count.eql?(2)
  end
end
```

More info:
https://guides.rubyonrails.org/testing.html
