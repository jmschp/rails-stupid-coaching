require 'application_system_test_case'

class QuestionsTest < ApplicationSystemTestCase
  test 'visiting the home render the form' do
    visit root_url
    assert_selector 'h1', text: 'Stupid Coaching'
    assert_selector 'h2', text: 'The coach awaits your questions'
  end

  test 'saying I am going to work the coach response is Great!' do
    visit root_url
    fill_in 'question', with: 'I am going to work'
    click_on 'ask'

    assert_text 'Great!'
  end

  test 'saying Hello yields a grumpy response from the coach' do
    visit root_url
    fill_in 'question', with: 'Hello'
    click_on 'ask'

    assert_text "I don't care, get dressed and go to work!"
  end

  test 'asking a question to the coach wiht ? yields Silly question, get dressed and go to work! response from the coach' do
    visit root_url
    fill_in 'question', with: 'Hello?'
    click_on 'ask'

    assert_text 'Silly question, get dressed and go to work!'
  end
end
