json.extract! message, :id, :subject, :content, :type, :parent_id, :student_id, :teacher_id, :report_id, :created_at, :updated_at
json.url message_url(message, format: :json)
