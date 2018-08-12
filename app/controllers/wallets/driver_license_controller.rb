class Wallets::DriverLicenseController < ApplicationController
  before_action :set_wallet, :set_driver_license

  def destroy
    @driver_license.purge_later
    redirect_to @wallet
  end

  private

  def set_wallet
    @wallet = Wallet.find(params[:wallet_id])
  end

  def set_driver_license
    @driver_license = @wallet.driver_license
  end
end
