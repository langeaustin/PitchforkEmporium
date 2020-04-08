ActiveAdmin.register Product do
  permit_params :name, :description, :price, :image, :category #category_attributes [:id, :name, :_destroy]

  form do |f|
    f.semantic_errors
    f.inputs
    #  f.has_many :categories, allow_destroy: true do |n_f|
    #  n_f.input :category
    # end
    f.inputs do
      f.input :image, as: :file
    end
    f.actions
  end
end
