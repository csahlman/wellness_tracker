class PagesController < HighVoltage::PagesController
  skip_before_action :authenticate_user, only: [ :show ]
end