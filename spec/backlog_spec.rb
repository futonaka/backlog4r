require "spec_helper"
require "backlog4r"

describe Backlog4r::Backlog do
  context "when initialized valid conditions" do
    subject { Backlog4r::Backlog.new("space", "user", "pass")}

    it { should be_an_instance_of Backlog4r::Backlog }
  end
end

