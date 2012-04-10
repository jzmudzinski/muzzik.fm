require 'spec_helper'

describe "playlists/index" do
  before(:each) do
    assign(:playlists, [
      stub_model(Playlist,
        :title => "Title",
        :user_id => 1,
        :description => "MyText"
      ),
      stub_model(Playlist,
        :title => "Title",
        :user_id => 1,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of playlists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
