json.array!(@photo_blogs) do |photo_blog|
  json.extract! photo_blog, :id, :entry, :location, :date_taken
  json.url photo_blog_url(photo_blog, format: :json)
end
