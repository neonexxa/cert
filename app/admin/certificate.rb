ActiveAdmin.register Certificate do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#

    
      # f.input :image, :as => :file
    

permit_params :title, :provider_id, :certificate_id, :description, :qualification_id, :closing_date, :sitting_date, :category_id, :image, :published, :price, :code
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
