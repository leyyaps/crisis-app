json.extract! ticket, :id, :small_image, :cover_image, :square_image, :ticket_id, :date, :opening_time, :theme, :description, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
