module ApplicationHelper
  def render_markdown(body)
    return raw(RDiscount.new(body,:smart, :filter_html).to_html)
  end
  
  def rest_i18n(type, name)
    return t("#{type} %{resource}", :resource => t("activerecord.models.#{name}"))
  end

  def show_link(object, content = t("Show"))
    link_to(content, object) if can?(:read, object)
  end

  def edit_link(object, content = t("Edit"))
    link_to(content, [:edit, object]) if can?(:update, object)
  end

  def destroy_link(object, content = t("Destroy"))
    link_to(content, object, :method => :delete, :confirm => "Are you sure?") if can?(:destroy, object)
  end

  def create_link(object, content = t("New"))
    if can?(:create, object)
      object_class = (object.kind_of?(Class) ? object : object.class)
      link_to(content, [:new, object_class.name.underscore.to_sym])
    end
  end


end
