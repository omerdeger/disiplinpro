require 'test_helper'

class EventTest < ActiveSupport::TestCase
 
  test "should not save event without title" do
    event = Event.new
    assert_not event.save
  end

end
