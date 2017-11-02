require 'rails_helper'

RSpec.describe Post, type: :model do
  it "requires a title" do
    post = FactoryBot.build :post, :title => nil
    expect( post.save ).to be false
    expect( post.errors.messages ).to eq( { :title => [ I18n.t("errors.messages.blank") ] } )
  end
  it "requires a unique title" do
    post = FactoryBot.create :post
    post = FactoryBot.build :post, :title => post.title
    expect( post.save ).to be false
    expect( post.errors.messages ).to eq( { :title => [ I18n.t("errors.messages.taken") ] } )
  end
end
