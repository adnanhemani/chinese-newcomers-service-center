require 'rails_helper'

RSpec.describe "lit_cases/index", type: :view do
  before(:each) do
    assign(:lit_cases, [
      LitCase.create!(),
      LitCase.create!()
    ])
  end

  it "renders a list of lit_cases" do
    render
  end
end
