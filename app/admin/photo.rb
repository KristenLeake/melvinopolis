ActiveAdmin.register Photo do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :costume_id, :commission_id, :picture, :caption
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  form do |f|
    f.inputs do
      f.input :costume, :collection => Costume.all.order(character: :asc).map{ |costume| [costume.character, costume.id] }
      f.input :commission, :collection => Commission.all.order(character: :asc).map{ |commission| [commission.character, commission.id] }
      f.input :picture, label: "Picture"
      f.input :caption, label: "Caption"
    end
    f.actions
  end

end
