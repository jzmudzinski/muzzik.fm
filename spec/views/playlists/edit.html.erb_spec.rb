require 'spec_helper'

describe "playlists/edit" do
  before(:each) do
    @playlist = assign(:playlist, stub_model(Playlist,
      :title => "MyString",
      :user_id => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit playlist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => playlists_path(@playlist), :method => "post" do
      assert_select "input#playlist_title", :name => "playlist[title]"
      assert_select "input#playlist_user_id", :name => "playlist[user_id]"
      assert_select "textarea#playlist_description", :name => "playlist[description]"
    end
  end
end
