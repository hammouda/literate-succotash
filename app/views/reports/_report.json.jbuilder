json.extract! report, :id, :type, :session, :date_rep, :duration, :created_at, :updated_at
json.url report_url(report, format: :json)
