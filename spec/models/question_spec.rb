require 'rails_helper'



describe Question do
  it { should have_many(:answers) }
  it 'is private by default' do
    question = FactoryBot.create(:question)
    question.title.should eq 'How do you knit the sock monkey?'
  end

  it 'is private by default' do
    question = FactoryBot.create(:question)
    question.body.should eq 'You take the needle and thread up the monkey.'
  end
end
