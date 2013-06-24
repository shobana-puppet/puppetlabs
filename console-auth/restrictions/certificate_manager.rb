restrict '/console/services/certificates/api/v1/csrs' do
  method :get do
    roles :read
  end
end

restrict '/console/services/certificates/api/v1/csr_count' do
  method :get do
    allow_unauthenticated
    roles :read
  end
end

# redundant on top of next entry, but added for completeness
restrict /\/console\/services\/certificates\/api\/v1\/csrs\/multi\/.*/ do
  method :post, :put, :delete do
    roles :read, :write
  end
end

restrict /\/console\/services\/certificates\/api\/v1\/csrs\/.*/ do
  method :post, :put, :delete do
    roles :read, :write
  end
end

restrict /\/console\/services\/certificates\/api\/v1\/cache\/.*/ do
  method :post, :delete do
    roles :read, :write
  end
end
