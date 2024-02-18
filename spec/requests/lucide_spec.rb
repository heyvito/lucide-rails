# frozen_string_literal: true

RSpec.describe "Icon rendering", type: :request do
  it "renders an icon" do
    get "/"
    expect(response.body).to include("<svg")
    expect(response.body).to include("</svg>")
    expect(response.body).to include('custom_attr="yay"')
  end

  it "allows options to be provided as symbols as well" do
    # https://github.com/heyvito/lucide-rails/issues/14
    get "/issue14"
    expect(response.body).to include("<svg")
    expect(response.body).to include('width="10px"')
    expect(response.body).to include('height="20px"')
    expect(response.body).to include("</svg>")
  end

  it "allows a single 'size' option to be provided" do
    get "/size_option"
    expect(response.body).to include("<svg")
    expect(response.body).to include('width="30px"')
    expect(response.body).to include('height="30px"')
    expect(response.body).to include("</svg>")
  end
end
