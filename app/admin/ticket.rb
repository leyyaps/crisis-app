ActiveAdmin.register Ticket do




  permit_params :small_image, :cover_image, :square_image, :ticket_link_id, :ticket_release_date, :ticket_release_time, :date, :opening_time, :theme, :description, :fixr
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
