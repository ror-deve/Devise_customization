ActiveAdmin.register User do
    permit_params :email, :password, :password_confirmation, :role

    index do
      selectable_column
      id_column
      column :email
      column :role
      actions
    end
  
    filter :email
    filter :role
  
    form do |f|
      f.inputs do
        f.input :email
        f.input :password
        f.input :password_confirmation
        f.input :role
      end
      f.actions
    end
  
  end