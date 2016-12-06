require 'spec_helper'

describe Article, :type => :model do
  subject { described_class.new }

  it "is valid with valid attributes" do
    subject.title = "Anything"
    subject.text = "Article test text"
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    subject.title = "Anything"
    expect(subject).to_not be_valid
  end

end
