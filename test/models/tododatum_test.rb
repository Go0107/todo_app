require "test_helper"

class TododatumTest < ActiveSupport::TestCase
  
  def setup
    @todo = Tododatum.new(title: "寝る")
  end

  test "title should be present true" do
    @todo.title = "a"
    assert @todo.valid?
  end

  test "title should be present false" do
    @todo.title = ""
    assert_not @todo.valid?
  end
end
