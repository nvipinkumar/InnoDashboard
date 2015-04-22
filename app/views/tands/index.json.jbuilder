json.array!(@tands) do |tand|
  json.extract! tand, :id, :Name, :Summary, :Description, :Owner, :Reviewed, :Status, :Comments, :Action, :Imperative
  json.url tand_url(tand, format: :json)
end
