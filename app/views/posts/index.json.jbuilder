json.array!(@posts) do |post|
  json.extract! post, :id, :title, :body, :image_url, :video_url, :category_id, :likes
  json.url post_url(post, format: :json)
end
