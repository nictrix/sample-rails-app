# frozen_string_literal: true

require 'application_system_test_case'

class RootTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit root_url
    assert_selector 'h1', text: 'Sample Rails App'
  end

  test 'go to users' do
    visit root_url
    click_on 'Users'

    assert_text 'Users'
    click_on 'Home'
  end
end
