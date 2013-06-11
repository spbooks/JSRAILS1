ActiveAdmin.register Page do
  form do |f|
    f.inputs do
      f.input :title
      f.input :slug
      f.input :content
    end
    f.actions
  end
  
  index do
    column :title
    column :slug
    column :content
    column :created_at
  end
end
