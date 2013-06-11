module ApplicationHelper
  def nav_link(link_text, link_path, force_active = false)
    class_name = (force_active || current_page?(link_path)) ? 'active' : ''
    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end
end
