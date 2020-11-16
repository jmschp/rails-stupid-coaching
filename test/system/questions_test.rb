require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test 'visiting the home render the form' do
    visit root
    assert_selector 'h1', text: 'Stupid Coaching'
    assert_selector 'h2', text: 'The coach awaits your questions'
  end
end
