json.array!(@instructions) do |instruction|
  json.extract! instruction, :id, :title
  json.url instruction_url(instruction, format: :json)
end
