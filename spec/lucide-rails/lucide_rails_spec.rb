# frozen_string_literal: true

RSpec.describe LucideRails do
  it "has a version number" do
    expect(LucideRails::VERSION).not_to be nil
  end

  context "provider" do
    after { LucideRails.provider = nil }

    %i[filesystem memory].each do |kind|
      it "accepts #{kind} as a provider" do
        expect { LucideRails.provider = kind }.not_to raise_error
      end
    end

    it "accepts nil as a provider" do
      expect { LucideRails.provider = nil }.not_to raise_error
    end

    it "rejects unknown providers" do
      expect { LucideRails.provider = :foo }.to raise_error(ArgumentError)
    end
  end

  context "default options" do
    around do |example|
      LucideRails.default_options = nil
      example.run
      LucideRails.default_options = nil
    end

    it "returns builtin default options" do
      expect(LucideRails.default_options).to eq LucideRails::DEFAULT_OPTIONS
    end

    it "returns custom default options" do
      opts = { "bla" => true }
      LucideRails.default_options = opts.dup
      expect(LucideRails.default_options).to eq opts
    end
  end
end
