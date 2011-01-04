
# Special "hack" to allow matches to be performed using PostgreSQL's
# ILIKE method for case-insensitive searches.

if ActiveRecord::Base.connection.adapter_name == 'PostgreSQL'
  module Arel
    module Predicates
      class Match < Binary
        def predicate_sql
          'ILIKE'
        end
      end
      class NotMatch < Binary
        def predicate_sql
          'NOT ILIKE'
        end
      end
    end
  end
end
