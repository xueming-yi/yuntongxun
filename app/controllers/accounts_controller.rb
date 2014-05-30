class AccountsController < ApplicationController
  
  #主账户信息
  def account_info
    puts params
    @account = Account.find_by_sid(params[:id])
    
    # render json: @account
  end
  
end
