json.array!(@members) do |member|
  json.extract! member, :id, :email, :first, :last, :teacher
  json.url member_url(member, format: :json)
end
