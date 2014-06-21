require "spec_helper"
require "backlog4r"

describe Backlog4r::User do
  context "when initialized valid conditions" do
    subject { Backlog4r::User.new("space", "user", "pass") }

    it { should be_an_instance_of Backlog4r::User }
  end
end

