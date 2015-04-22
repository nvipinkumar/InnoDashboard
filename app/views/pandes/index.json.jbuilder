json.array!(@pandes) do |pande|
  json.extract! pande, :id, :Name, :Summary, :Description, :Owner, :Reviewed, :Status, :Comments, :Action, :Imperative
  json.url pande_url(pande, format: :json)
end
