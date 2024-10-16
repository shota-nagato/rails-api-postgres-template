module ErrorSerializer
  def self.serialize(record, code, message = "入力エラーがありました")
    json = {}
    new_hash = record.errors.to_hash(true).map do |k, v|
      v.map do |msg|
        { field: "#{record.class.name}:#{k}", title: msg }
      end
    end.flatten
    json[:errors] = new_hash
    json[:code] = code
    json[:message] = message
    json
  end
end
