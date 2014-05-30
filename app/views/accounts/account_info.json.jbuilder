json.code 200
json.ver '1.0.0'
json.data do |json|
  json.id @account.id
  json.name @account.name
  json.accountSid @account.sid
  json.accountToken @account.token
  json.create_at @account.created_at
  json.balance @account.balance
end