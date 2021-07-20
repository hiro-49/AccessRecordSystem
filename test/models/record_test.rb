require "test_helper"

class RecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @record = Record.new(name:"KAZUKI FUKASAWA", number:"16T3060N", temperature: 36.7)
    @record.save
  end 
  
  test "should be valid" do
    assert @record.valid?
  end
  
  test "name should be present" do
    @record.name = "    "
    assert_not @record.valid?
  end
  
  test "number should be present" do
    @record.number = "    "
    assert_not @record.valid?
  end
  
  test "name should be correct value" do
    @record.name = "A" * 21
    assert_not @record.valid?
  end
  
  test "number should be correct value" do
    @record.number = "AGR155A4"
    assert_not @record.valid?
  end
  
  test "temperature should be correct value" do
    @record.temperature = 30.5
    assert_not @record.valid?
    @record.temperature = 37.8
    assert_not @record.valid?
  end
end
