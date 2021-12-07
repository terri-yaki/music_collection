json.extract! song, :id, :sid, :name, :link, :favourite, :created_at, :updated_at
json.url song_url(song, format: :json)
