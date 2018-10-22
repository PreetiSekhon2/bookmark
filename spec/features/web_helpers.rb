def sign_in

end

def filter_bm
  fill_in :player1, with: "John"
  fill_in :player2, with: "Jane"
  click_button "submit"
end
