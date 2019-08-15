# frozen_string_literal: true

require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = 'SampleRailsApp'
  end
  test 'should get root' do
    get root_url
    assert_response :success
    assert_select 'title', @base_title.to_s
  end
  test 'should get home' do
    get home_url
    assert_response :success
    assert_select 'title', @base_title.to_s
  end

  test 'should get help' do
    get help_url
    assert_response :success
    assert_select 'title', "Help | #{@base_title}"
  end

  test 'should get about' do
    get about_url
    assert_response :success
    assert_select 'title', "About | #{@base_title}"
  end
end
