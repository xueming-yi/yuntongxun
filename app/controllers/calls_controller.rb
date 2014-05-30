class CallsController < ApplicationController
  skip_before_action :authenticate_user!, :verify_authenticity_token
  def call_back
   hash= {"statusCode"=>"000000","CallBack"=>{"dateCreated"=>"2013-02-01 15:53:06","callSid"=>" ff8080813c373cab013c94be9fe300c5"}}
  end
end
