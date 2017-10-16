ActiveAdmin.register Mainpage do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :body
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form do |f|
    f.inputs do 
    f.input :title
      f.input :body, :input_html => { :class => "tinymce" , :rows => 40, :cols => 120}
      f.actions
    end
end

end
