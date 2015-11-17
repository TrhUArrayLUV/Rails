require 'spec_helper'

describe LuvList do
  it { should have_many(:luvli_items) }

  describe "#has_completed_items?" do
    let(:luv_list) { LuvList.create(title: "Luv Ruby on Rails", description: "Appreciation for good coding skills") }

    it "returns true with completed luv list items" do
      luv_list.luvli_items.create(content: "Lots of fun job offers", completed_at: 8.minute.ago)
      expect(luv_list.has_completed_items?).to be_truthy
    end

    it "returns false with no completed luv list items" do
      luv_list.luvli_items.create(content: "Lots of fun job offers")
      expect(luv_list.has_completed_items?).to be_falsey
    end

    it "returns true with incompleted luv list items" do
      luv_list.luvli_items.create(content: "Lots of fun job offers")
      expect(luv_list.has_incompleted_items?).to be_truthy
    end

    it "returns false with no completed luv list items" do
      luv_list.luvli_items.create(content: "Lots of fun job offers", completed_at: 8.minute.ago)
      expect(luv_list.has_incompleted_items?).to be_falsey
    end
  end
end
