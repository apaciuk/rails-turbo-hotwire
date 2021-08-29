require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      title: "Title",
      status: "Status",
      description: "MyText",
      status_date: "Status Date",
      datetime: "Datetime",
      internal_info: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Status Date/)
    expect(rendered).to match(/Datetime/)
    expect(rendered).to match(/MyText/)
  end
end
