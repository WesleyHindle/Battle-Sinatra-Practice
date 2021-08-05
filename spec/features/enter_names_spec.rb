

feature 'Enter names' do 
  scenario 'submitting names' do 
    sign_in_and_play #It is specified in the spec_helper where to look for this method
    save_and_open_page #Saves web page and opens the browser to display it
    p player_1.name
    expect(page).to have_content 'Anabelle vs. Beatrice'
  end
end 