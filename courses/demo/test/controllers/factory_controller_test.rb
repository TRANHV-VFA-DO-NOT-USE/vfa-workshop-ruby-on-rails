require 'test_helper'

class FactoryControllerTest < ActionDispatch::IntegrationTest
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
