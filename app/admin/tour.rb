ActiveAdmin.register Tour do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  index do                            
    column :city_id                     
    column :description        
    column :season_start           
    column :season_end
    column :title
    column :tour_type_id
    renderer_for(:index)                 
    actions
  end

end
