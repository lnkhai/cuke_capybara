Given (/^the project structure is ready$/) do
  # do nothing
end

Then (/^the automation suite could be triggered and generated report$/) do
  # the browser could be launch and navigate to a google and then closed successfully
  visit "/index.php"
  fill_in 'firstname', :with => "Nhat Khai Le"
  choose 'gen_male'
  check 'fruit_apple'
  select 'Yahoo', :from => 'something'
  click_button 'Submit'
  
  # within("//div[@id='fname']") do
    expect(page).to have_content('Nhat Khai Le')
    expect(page).to have_no_content('Female')
  # end
  
  expect(page).to have_content('Apples')
  expect(page).to have_content('Yahoo')
end
