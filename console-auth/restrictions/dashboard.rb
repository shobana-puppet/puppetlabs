restrict "/nodes/new" do
  method :get do
    roles :read, :write
  end
end

restrict /\/nodes\/\d+\/edit/ do
  method :get do
    roles :read, :write
  end
end

restrict /\/nodes\/\d+$/ do
  method :put, :delete do
    roles :read, :write
  end

  method :get do
    roles :read
  end
end

restrict /\/nodes\/(?!\d+$)(?!new$)(?!.\/).+/ do
  method :put, :post, :delete do
    roles :read, :write
  end

  method :get do
    allow_unauthenticated
    roles :read
  end
end

restrict /\/reports\/upload/ do
  method :post do
    allow_unauthenticated
    roles :read, :write
  end
end

restrict /\/reports\/\d+/ do
  method :put, :delete do
    roles :read, :write
  end

  method :get do
    roles :read
  end
end

restrict "/node_groups/new" do
  method :get do
    roles :read, :write
  end
end

restrict /\/node_groups\/\d+\/edit/ do
  method :get do
    roles :read, :write
  end
end

restrict /\/node_groups(\/(\d)+)?/ do
  method :put, :post, :delete do
    roles :read, :write
  end

  method :get do
    roles :read
  end
end

restrict "/node_classes/new" do
  method :get do
    roles :read, :write
  end
end

restrict /\/node_classes\/\d+\/edit/ do
  method :get do
    roles :read, :write
  end
end

restrict /\/node_classes(\/(\d)+)?/ do
  method :put, :post, :delete do
    roles :read, :write
  end

  method :get do
    roles :read
  end
end
