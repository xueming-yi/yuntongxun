class CallsController < ApplicationController
  skip_before_action :authenticate_user!, :verify_authenticity_token
  def call_back
    timestamp = Time.now.strftime('%Y%m%d%H%M%S')
    call_sid = Digest::MD5.hexdigest("#{params[:from]}#{params[:to]}#{timestamp}")
    
    #TODO 调用硬件接口
    
    @hash= {"statusCode"=>"000000","dateCreated"=>timestamp,"callSid"=>call_sid}
  end
  
  #语音验证码
  def voice_verify
    #必要参数 to、verifyCode、playTimes
    timestamp = Time.now.strftime('%Y%m%d%H%M%S')
    call_sid = Digest::MD5.hexdigest("#{params[:to]}#{timestamp}")
    
    #TODO 调用硬件接口
    
    
    @hash= {"statusCode"=>"000000","dateCreated"=>timestamp,"callSid"=>call_sid}
  end
end
