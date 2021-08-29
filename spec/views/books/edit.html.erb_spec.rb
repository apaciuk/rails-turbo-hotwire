require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      title: "MyString",
      status: "MyString",
      description: "MyText",
      status_date: "MyString",
      datetime: "MyString",
      internal_info: "MyText"
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[status]"

      assert_select "textarea[name=?]", "book[description]"

      assert_select "input[name=?]", "book[status_date]"

      assert_select "input[name=?]", "book[datetime]"

      assert_select "textarea[name=?]", "book[internal_info]"
    end
  end
end
