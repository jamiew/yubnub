require File.dirname(__FILE__) + '/../test_helper'

class CommandTest < ActiveSupport::TestCase
  fixtures :commands

  def setup
    @gim = Command.find :first, :conditions => "name='gim'"  
  end

  def test_truth
    assert true
  end
end
