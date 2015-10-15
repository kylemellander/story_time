require 'rails_helper'

describe 'creating a story' do
  it 'gets created' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit '/'
    click_link("Add a Story", :match => :first)
    fill_in 'story_title', with: 'Hi'
    click_button 'Create Story'
    expect(page).to have_content 'Hi'
  end
end

describe 'updating a story' do
  it 'updates a story name' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    story = FactoryGirl.create(:story, id: 1)
    visit '/stories/1'
    click_link 'Edit'
    fill_in 'story_title', with: "Story!"
    click_button 'Update Story'
    expect(page).to have_content 'Story!'
  end
end

describe 'deleting a story' do
  it 'deletes a story' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    story = FactoryGirl.create(:story, id: 1)
    visit '/stories/1'
    expect { click_link 'Delete' }.to change(Story, :count).by(-1)
  end
end
