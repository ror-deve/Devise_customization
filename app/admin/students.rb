ActiveAdmin.register Student do

  permit_params :first_name, :last_name, :dob, :profile_image, :role

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :dob
    column :profile_image
    column :role
    actions
  end

  filter :first_name
  filter :last_name
  filter :dob
  filter :created_at

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :dob
      f.input :role
    end
    f.actions
  end
  
end
