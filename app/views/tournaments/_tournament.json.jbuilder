json.extract! tournament, :id, :name, :buy_in, :award, :position, :quantity_players, :start_date, :end_date, :link, :online, :platform, :created_at, :updated_at
json.url tournament_url(tournament, format: :json)
