require 'spec_helper'

describe LuvliItem do
  it { should belong_to(:luv_list) }

  describe "#completed?" do
    let(:luvli_item) { LuvliItem.create(content: "Appreciation for my new job at Slalom")}

    it "is false when completed_is blank" do
      luvli_item.completed_at = nil
      expect(luvli_item.completed?).to be_falsey
    end

    it "returns true when completed_at is not empty" do
      luvli_item.completed_at = Time.now
      expect(luvli_item.completed?).to be_truthy
    end
  end

end
