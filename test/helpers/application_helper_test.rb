# frozen_string_literal: true

require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test 'full title helper' do
    assert_equal full_title,         'SampleRailsApp'
    assert_equal full_title('Help'), 'Help | SampleRailsApp'
  end
end
