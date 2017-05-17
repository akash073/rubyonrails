require 'rails_helper'

RSpec.describe Album, type: :model do

  subject {Album.new}
  it "is not valid without a title" do

    expect(subject).to_not be_valid
  end

  it 'minimum length of inserting title is one (1)' do

    subject.title='a'*10
    expect(subject).to be_valid
  end

  it 'miximum length of inserting title is hundred (100)' do

    subject.title='a'*101
    expect(subject).to_not be_valid
  end
end
