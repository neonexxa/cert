ActiveAdmin.register Board do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#



permit_params(:name, :title, :description, :published, 
                                 board_photo_attributes: [:path]) 

show do
    attributes_table do
      row :id
      row :name
      row :title
      row :description
      row :published
      row :created_at
      row :updated_at
    end

    active_admin_comments
end

form html: { multipart: true } do |f|
    f.semantic_errors

    f.inputs do
        f.input :name
    f.input :title
    f.input :description
      simple_fields_for :board_photo do |uph|
        uph.input :path
      end
        # f.input :board_photo, as: :file, input_html: { multiple: true }
        f.input :published
    end

    f.actions
end


#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
