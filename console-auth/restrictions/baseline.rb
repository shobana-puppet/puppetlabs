restrict /\/baseline\/compliance\/node\/review\/\d+/ do
  method :get, :post do
    roles :read, :write
  end
end

restrict /\/baseline\/compliance\/node\/\d+\/review/ do
  method :get, :post do
    roles :read, :write
  end
end
