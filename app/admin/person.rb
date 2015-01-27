ActiveAdmin.register Person do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  index do
    column :first_name
    column :last_name
    column :middle_name
    column :avatar do |person|
      image_tag(person.avatar.url(:thumb), :height => '100')
    end
    actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
      f.input :first_name
      f.input :last_name
      f.input :middle_name
      f.input :avatar
    end
    f.actions
 end
end
