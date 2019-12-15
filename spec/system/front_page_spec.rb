# frozen_string_literal: true
require 'rails_helper'
require 'spec_helper'

RSpec.describe 'front page', type: :system do
  it 'has expected text' do
    visit "/"
    expect(page).to have_content 'Welcome!'
  end
end
