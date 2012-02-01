Maglev.persistent do
  require 'person'
end

Maglev::PERSISTENT_ROOT[:persons] = Array.new

Maglev.commit_transaction