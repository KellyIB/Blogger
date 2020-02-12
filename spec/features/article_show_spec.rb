require 'rails_helper'

  describe "User sees an article" do
    describe "article show page" do
      it "shows information about an article" do
        article_1 = Article.create!(title: "Aerials", body: "Aerials, in the sky. WHen you lose small mind you free your life.")
        article_2 = Article.create!(title: "System_of_a_Down", body: "Life is a waterfall, with on in the river and one again after the fall.")

        visit "/articles"

        click_link "#{article_1.title}"
        expect(page).to have_content("#{article_1.title}")
        expect(page).to have_content("#{article_1.body}")


      end
    end
  end
