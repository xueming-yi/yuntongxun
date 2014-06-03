json.statusCode @hash['statusCode']
json.VoiceVerify do |json|
  json.dateCreated @hash['dateCreated']
  json.callSid @hash['callSid']
end