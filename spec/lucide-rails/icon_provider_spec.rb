# frozen_string_literal: true

RSpec.describe LucideRails::IconProvider do
  subject { LucideRails::IconProvider }

  shared_examples "a provider" do
    around do |example|
      LucideRails.provider = provider_name
      example.run
      LucideRails.provider = nil
    end

    it "returns a known icon" do
      expect { subject.icon("accessibility") }.not_to raise_error
    end

    it "raises error when icon is not found" do
      expect { subject.icon("bla") }.to raise_error(ArgumentError)
    end
  end

  context :memory do
    let(:provider_name) { :memory }
    it_behaves_like "a provider"
  end

  context :memory do
    let(:provider_name) { :filesystem }
    it_behaves_like "a provider"
  end
end
