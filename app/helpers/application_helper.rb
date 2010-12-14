module ApplicationHelper
  def render_markdown(body)
    return raw(RDiscount.new(body,:smart, :filter_html).to_html)
  end
  
  def rest_i18n(type, name)
    return t("#{type} %{resource}", :resource => t("activerecord.models.#{name}"))
  end
end
