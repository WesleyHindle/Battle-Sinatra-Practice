def sign_in_and_play
  visit('/')
    fill_in :player_1_name, with: 'Anabelle'
    fill_in :player_2_name, with: 'Beatrice'
    click_button 'Submit'

end 