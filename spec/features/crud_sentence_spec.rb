require 'rails_helper'

describe 'creating a sentance' do
  it 'gets created' do
    story = FactoryGirl.create(:story, id: 1)
    visit '/stories/1'
    click_link 'Add to Story'
    fill_in 'sentence_content', with: 'stuff'
    click_button 'Create Sentence'
    expect(page).to have_content 'stuff'
  end
end

describe 'updating a sentence' do
  it 'updates a sentence content' do
    story = FactoryGirl.create(:story, id: 1)
    sentence = FactoryGirl.create(:sentence, id: 1, story_id: 1)
    visit "/stories/#{story.id}"
    click_link("Edit", :match => :first)
    fill_in 'Content', with: 'Stuff!'

    click_button 'Update Sentence'
    expect(page).to have_content 'Stuff!'
  end
end

describe 'deleting a sentence' do
  it 'deletes a sentence' do
    story = FactoryGirl.create(:story, id: 1)
    sentence = FactoryGirl.create(:sentence, id: 1, story_id: 1)
    visit '/stories/1'
    expect {   click_link("Delete", :match => :first) }.to change(Sentence, :count).by(-1)
  end
end
