feature "View hit points" do 
  scenario "See player 2's hit points" do
    visit('/')
    fill_in :player_1_name, with: "John"
    fill_in :player_2_name, with: "Doe"
    click_button 'Submit'
    expect(page).to have_content "Doe: 60HP"

  end
end 