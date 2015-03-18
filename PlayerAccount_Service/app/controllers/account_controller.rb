class AccountController < ApplicationController
  respond_to :json, :html

  def show
    @account = Account.find(params[:id])
    respond_with @account
  end
end
