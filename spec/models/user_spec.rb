require 'rails_helper'

RSpec.describe User, type: :model do
  it "is a thing" do
    expect{User.new}.to_not raise_error
  end

  it "should have a name and email" do
    user_1 = User.new(name: 'Mrin', email: 'mrin@carlos.com')
    expect(user_1.save).to eq true
    u1 = User.find_by_name('Mrin')
    expect(u1.name).to eq 'Mrin'
    expect(u1.email).to eq 'mrin@carlos.com'
  end
end
