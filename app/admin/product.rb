ActiveAdmin.register Product do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :list, :of, :attributes, :on, :model, :name, :price
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  form do |f|
  f.inputs "Project Details" do
    f.input :name
    f.input :price
    #f.input :avatar, :required => false, :as => :file
    # Will preview the image when the object is edited
  end
  f.actions
 end
  
end
