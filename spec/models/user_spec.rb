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

it "creates new user through registration page" do
visit 'users/new'
fill_in 'Name', with: 'UserTest'
fill_in 'Email', with: 'email@domain.com'
fill_in 'Password', with: 'password'
fill_in 'Password confirmation', with: 'password'
expect{
click_button 'Save User'
}.to change(User, :count).by(1)

end



end
