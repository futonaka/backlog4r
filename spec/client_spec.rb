require "spec_helper"
require "backlog4r"

describe Backlog4r::Client do
  context "when initialized valid conditions" do
    subject { Backlog4r::Client.new("space", "user", "pass", "prefix") }

    it { should be_an_instance_of Backlog4r::Client }
  end
end

