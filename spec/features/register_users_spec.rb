require 'rails_helper'

RSpec.feature "RegisterUsers", type: :feature do
  context "landing page" do
    Steps "going to landing page" do
      Given "I'm on landing page" do
        visit '/'
      end
      Then "I see a welcom message" do
        expect(page).to have_content "Welcom"
      end
    end
  end
  context "register a user" do
    Steps "for registering a user" do
      Given "that i am on the registering page" do
        visit '/'
      end
      Then "i can enter my user id and password" do
        fill_in "user_name", with: "Mrin"
        fill_in "user_email", with: "mrin@carlos.com"
        click_button "Register"
      end
      And "I am taken to a confirmation page" do
        expect(page).to have_content "Mrin"
        expect(page).to have_content "mrin@carlos.com"
      end
    end
  end
end
