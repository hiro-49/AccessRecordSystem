require "test_helper"

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @member = Member.new(name:"KAZUKI FUKASAWA", number:"16T3060N", idm:"1234567890ABCDEF")
    @member.save
  end 
  
  test "should be valid" do
    assert @member.valid?
  end
  
  test "name should be present" do
    @member.name = "    "
    assert_not @member.valid?
  end
  
  test "number should be present" do
    @member.number = "    "
    assert_not @member.valid?
  end
  
  test "idm should be present" do
    @member.idm = "    "
    assert_not @member.valid?
  end
  
  test "name should be correct value" do
    @member.name = "A" * 21
    assert_not @member.valid?
  end
  
  test "number should be correct value" do
    @member.number = "AGR155A4"
    assert_not @member.valid?
  end
  
  test "idm should be correct value" do
    @member.idm = "1234567890GHIJKL"
    assert_not @member.valid?
    @member.idm = "1234567890"
    assert_not @member.valid?
    @member.idm = "1234567890ABCDEFAB"
    assert_not @member.valid?
  end
  
  test "number should be unique" do
    duplicate_member = @member.dup
    duplicate_member.idm = "0987654321ABCDEF"
    assert_not duplicate_member.valid?
  end
  
  test "idm should be unique" do
    duplicate_member = @member.dup
    duplicate_member.number = "17T3000S"
    assert_not duplicate_member.valid?
  end
end
