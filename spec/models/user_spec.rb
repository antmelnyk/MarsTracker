require 'spec_helper'



RSpec.describe User, type: :model do

subject { described_class.new }

it "is valid with valid attributes" do
subject.name = "Test"
subject.email = "example@gmail.com"
subject.password = "foobar"
subject.password_confirmation = "foobar"
expect(subject).to be_valid
end

it "isn't valid with invalid attributes" do
subject.name = "Test"
subject.email = "examplegmail.com"
subject.password = "fobar"
subject.password_confirmation = "fobar"
expect(subject).to_not be_valid
end



end
