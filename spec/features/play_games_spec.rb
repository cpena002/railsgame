require 'rails_helper'

RSpec.feature "PlayGames", type: :feature do
  context "playing the game" do
    Steps "starting the game" do
      Given "I am on the game page" do
        visit '/'
        fill_in "user_name", with: "Mrin"
        fill_in "user_email", with: "mrin@carlos.com"
        click_button "Register"
      end
      Then "I can play the game with an odd number" do
        fill_in "user_guess", with: "5"
        click_button "Play"
      end
      And "I can see if my guess is odd or even" do
        expect(page).to have_content "Odd"
      end
      The  "I can play the game with an even number" do
        fill_in "user_guess", with: "2"
        click_button "Play"
      end
      And "I can see if my guess is odd or even" do
        expect(page).to have_content "Even"
      end
    end
  end
end
