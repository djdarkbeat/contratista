Trestle.resource(:clients) do
  menu do
    item :clients, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :name
    column :created_at, align: :center
    actions header: "Action", data: { "client[generate]" => "true" } do |a, instance|
      a.show
      a.edit
      a.delete
      a.button icon("fa fa-magic"), "/clients/#{instance.id}?client[generate]=on", class: "btn-primary", method: :put
      a.button icon("fa fa-file-word-o "), "/clients/#{instance.id}?client[document]=on", class: "btn-primary", method: :put
    end
  end

  # Customize the form fields shown on the new/edit views.
  form do |client|
    row do
      col(xs: 6) {
        text_field :name
        text_field :business
        text_field :address
      }
      col(xs: 6) {
        text_field :worker
        text_field :signatory
        text_field :title
      }
    end
    row do
      col(xs: 6) {
        text_field :nature
      }
      col(xs: 6) {
        text_field :work_type
      }
    end
    row do
      col(xs: 6) {
        editor :notes
        }
      col(xs: 6) {
        editor :payments
        }
    end
    row do
      col(xs: 6) {
        editor :services
      }
      col(xs: 6) {
        editor :business_type
      }
    end
    row do
      col(xs: 3) { text_field :breach_period }
      col(xs: 3) { text_field :expense }
      col(xs: 3) { datetime_field :updated_at }
      col(xs: 3) { datetime_field :created_at }

    end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:client).permit(:name, ...)
  # end
end
