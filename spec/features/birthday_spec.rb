require_relative 'web_helpers'

feature "filling in Homepage forms" do

  scenario "returns your name on Birthday page" do
    sign_in_and_fill_in
    expect(page).to have_content "Xavier"
  end

end