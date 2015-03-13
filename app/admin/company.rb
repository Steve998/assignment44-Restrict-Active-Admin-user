ActiveAdmin.register Company do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :name, :bio, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  index do |x|
    selectable_column
    column :id
    column :name
    column :bio
    column :image do |pic|
      link_to image_tag(pic.image.thumb.url)
    end
    actions
  end

end
