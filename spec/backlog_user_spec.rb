require "spec_helper"
require "backlog4r"

describe Backlog4r::BacklogUser do
  context "when initialized valid conditions" do
    subject { Backlog4r::BacklogUser.new("space", "user", "pass") }

    it { should be_an_instance_of Backlog4r::BacklogUser }
  end
end

