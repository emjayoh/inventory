RailsAdmin.config do |config|

  ### Popular gems integration

  # == Devise ==
  config.authenticate_with do
     warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Standard ==
  #config.authenticate_with {} # leave it to authorize
  #config.authorize_with do
  #  redirect_to main_app.new_admin_session_path unless current_admin
  #end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'User' do
    navigation_label 'Admin'
  end

  config.model 'Receipt' do
    navigation_label 'Transactions'

    #list do
    #
    #end
    #
    #show do
    #
    #end
  end

  config.model 'Shipment' do
    navigation_label 'Transactions'
  end

  config.model 'Customer' do
    navigation_label 'Partners'
  end

  config.model 'Vendor' do
    navigation_label 'Partners'
  end

  config.model 'Item' do
    navigation_label 'Stock'
  end

  config.model 'Product' do
    navigation_label 'Stock'

    list do
      field :whatever do
        def value
          #TODO Change to where...
          Item.all.count
        end
      end
    end
  end

  config.model 'Lot' do
    navigation_label 'Stock'
  end

end
