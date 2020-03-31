ActiveAdmin.register Customer do
   permit_params :full_name, :province, :address, :order_id
end
