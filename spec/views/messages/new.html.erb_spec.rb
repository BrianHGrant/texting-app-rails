require 'rails_helper'

RSpec.describe "messages/new", type: :view do
  before(:each) do
    assign(:message, Message.new(
      :body => "MyString",
      :from => "MyString",
      :to => "MyString",
      :username => "MyString"
    ))
  end

  it "renders new message form" do
    render

    assert_select "form[action=?][method=?]", messages_path, "post" do

      assert_select "input#message_body[name=?]", "message[body]"

      assert_select "input#message_from[name=?]", "message[from]"

      assert_select "input#message_to[name=?]", "message[to]"

      assert_select "input#message_username[name=?]", "message[username]"
    end
  end
end
