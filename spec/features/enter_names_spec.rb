feature 'Enter names' do 
  scenario 'submitting names' do 
    visit('/')
    fill_in :player_1_name, with: 'Anabelle'
    fill_in :player_2_name, with: 'Beatrice'
    click_button 'Submit'

    save_and_open_page #Saves web page and opens the browser to display it

    expect(page).to have_content 'Anabelle vs. Beatrice'
  end
end 