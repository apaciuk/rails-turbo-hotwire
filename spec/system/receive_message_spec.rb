require 'rails_helper'

describe "receive message", type: :system do
  before do
    driven_by(:selenium, using: :headless_chrome)
  end

  let!(:user) { User.create(name: 'matt') }

  it "shows message" do
    log_in(user.name)

    other_user = User.create!(name: 'adam')
    other_message = Message.create!(room: Room.default_room, author: other_user, content: 'Got it!')
    within('#messages') do
      expect(page).to have_content 'Got it!', count: 1
    end
  end
end
