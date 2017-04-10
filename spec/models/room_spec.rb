require 'rails_helper'

RSpec.describe Room, type: :model do

  it "room require a title" do
    room = Room.create(:title => nil)
    expect(room).to_not be_valid
  end

  it "room require a title of more than 3 characters" do
    room = Room.create(:title => "a")
    expect(room).to_not be_valid
  end

  it "room require a title of more than 3 characters" do
    room = Room.create(:title => "abc")
    expect(room).to be_valid
  end

  it "room require to upload 2 or more images" do
    room = Room.create(:images => nil)
    expect(room).to_not be_valid
  end

  # it "fancy room price estimator" do
  #   skip "do later"
  #   room = Room.create(:wifi => true, :pets => false)
  #   price = room.fancy_price_estimator
  #   expect(price).to eq(135)
  # end

end
