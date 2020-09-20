
def sign_in_and_fill_in
  visit '/'
  fill_in :name, with: 'Xavier'
  fill_in :birth_day, with: '8'
  select 'May', from: 'birth_month'
  click_button 'Go!'
end