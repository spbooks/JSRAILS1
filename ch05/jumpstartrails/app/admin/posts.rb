ActiveAdmin.register Post do
  scope :rails
  index do
    column :title
    column :slug
    column :blurb
    column :created_at
    default_actions
  end

  form :html => {:multipart => true } do |f|
    f.inputs "Details" do
      f.input :title
      f.input :slug
      f.input :blurb
      f.input :category
      f.input :content, :as => :text
    end
    f.inputs 'Images' do
      f.input :image, :label => "Post Image", :as => :file
    end
    f.buttons
  end
end
