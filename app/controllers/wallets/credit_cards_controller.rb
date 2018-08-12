class Wallets::CreditCardsController < ApplicationController
  before_action :set_wallet, :set_credit_card

  def destroy
    @credit_card.purge_later
    redirect_to @wallet
  end

  private

  def set_wallet
    @wallet = Wallet.find(params[:wallet_id])
  end

  def set_credit_card
    @credit_card = @wallet.credit_cards.find(params[:id])
  end
end
