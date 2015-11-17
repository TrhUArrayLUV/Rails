module RailsDomIdHelper
  def dom_id(model)
    ["#", ActionView::RecordIdentifier.dom_id(model)].join
  end
end
