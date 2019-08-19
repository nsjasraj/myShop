ActiveAdmin.register InOut do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :brand_id, :model_id, :in, :out
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end



  ####https://github.com/platanus/activeadmin_addons/blob/master/docs/select2_nested_select.md
  


  form do |f|
    f.input :model_id, as: :nested_select,
                      level_1: {
                    attribute: :brand_id,
                    collection: Brand.all
                  },
                  level_2: {
                    attribute: :model_id,
                    collection: Model.all
                  }
                 # level_3: {attribute: :in}
   f.input :in     
   f.input :out    
   f.actions
  end
end
