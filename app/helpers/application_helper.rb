module ApplicationHelper
  def render_markdown(body)
    return raw(RDiscount.new(body,:smart, :filter_html).to_html)
  end
end
