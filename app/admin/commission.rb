ActiveAdmin.register Commission do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :character, :variation, :notes, :thumbnail, :year_id, :show_id, :genre_id
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
      f.input :year, :collection => Year.all.map{ |year| [year.year, year.id] }
      f.input :genre, :collection => Genre.all.map{ |genre| [genre.name, genre.id] }
      f.input :show, :collection => Show.all.map{ |show| [show.series, show.id] }
      f.input :character, label: "Character"
      f.input :variation, label: "Variation"
      f.input :notes, label: "Notes"
      f.input :thumbnail, label: "Thumbnail"
    end
    f.actions
  end

end
