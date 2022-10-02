# frozen_string_literal: true

RSpec.describe "Icon rendering", type: :request do
  it "renders an icon" do
    get "/"
    expect(response.body).to include("<svg")
    expect(response.body).to include("</svg>")
    expect(response.body).to include('custom_attr="yay"')
  end
end
