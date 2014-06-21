require "spec_helper"
require "backlog4r"

describe Backlog4r::BacklogAdmin do
  context "when initialized valid conditions" do
    subject { Backlog4r::BacklogAdmin.new("space", "user", "pass") }

    it { should be_an_instance_of Backlog4r::BacklogAdmin }
  end
end

