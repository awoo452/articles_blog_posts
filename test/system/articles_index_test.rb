require "application_system_test_case"

class ArticlesIndexTest < ApplicationSystemTestCase
  test "shows the articles landing page" do
    visit root_path

    assert_text "Articles"
  end
end
