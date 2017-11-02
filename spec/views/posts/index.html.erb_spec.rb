require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      FactoryBot.create( :post, :title => "Title 1" ),
      FactoryBot.create( :post, :title => "Title 2" )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => "Title 1".to_s, :count => 1
    assert_select "tr>td", :text => "Title 2".to_s, :count => 1
  end
end
