require 'rails_helper'

RSpec.describe "search/show.html.erb", type: :view do
  it 'displays show details correctly' do
    assign(:search, Search.new(search_fields_attributes: [
        field: 'title',
        op2: 'ILIKE',
        content: 'You'
    ]))

    assign(:papers, [
        Paper.new(:title => "How to live"),
        Paper.new(:title => "What to do")
    ])

    render
    expect(rendered).to match /How/
    expect(rendered).to match /What/
  end
end
