json.array!(@kandcs) do |kandc|
  json.extract! kandc, :id, :Name, :Summary, :Description, :Owner, :Reviewed, :Status, :Comments, :Action, :Imperative
  json.url kandc_url(kandc, format: :json)
end
