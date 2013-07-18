ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      #span :class => "blank_slate" do
       # span I18n.t("active_admin.dashboard_welcome.welcome")
       # small I18n.t("active_admin.dashboard_welcome.call_to_action")
      #end
      section "Recent Pages" do
        table_for Page.order("created_at desc").limit(3) do
          column :title
          column :slug
          column :created_at
        end
        strong { link_to "View All Pages", admin_pages_path }
      end

    end

    columns do
      column do
        panel "Recent Posts" do
          table_for Post.order("created_at desc").limit(5) do
            column("Title"){|post| link_to(post.title, admin_post_path(post)) }
            column :created_at
          end
        end
      end
      column do
        panel "Info" do
          para "Welcome to ActiveAdmin."
        end
      end
    end
  end # content
end
