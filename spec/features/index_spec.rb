require_relative 'web_helpers'

feature "Homepage" do

  scenario  "<Header> returns Hello there!" do
    visit '/'
    expect(page).to have_content "Hello there!" && "What's your name?"  && "When's your birthday?"
  end

end

