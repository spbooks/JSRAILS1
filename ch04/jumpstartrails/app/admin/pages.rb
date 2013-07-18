ActiveAdmin.register Page do
  index do
    column :title
    column :slug
    column :created_at
    default_actions
  end
end

