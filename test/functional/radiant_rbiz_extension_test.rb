require File.dirname(__FILE__) + '/../test_helper'

class RadiantRbizExtensionTest < Test::Unit::TestCase
  
  # Replace this with your real tests.
  def test_this_extension
    flunk
  end
  
  def test_initialization
    assert_equal File.join(File.expand_path(RAILS_ROOT), 'vendor', 'extensions', 'radiant_rbiz'), RadiantRbizExtension.root
    assert_equal 'Radiant RBiz', RadiantRbizExtension.extension_name
  end
  
end
