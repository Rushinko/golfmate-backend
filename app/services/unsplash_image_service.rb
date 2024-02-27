class UnsplashImageService
  def self.fetch_random_image(query)
    Unsplash::Photo.random(query: query)
  end

  def self.fetch_and_save_random_image(query)
    image_data = Unsplash::Photo.random(query: query)

    GolfCourseImage.create!(
      url: image_data.urls.full,
      description: image_data.description,
      author: image_data.user.name # Assuming Unsplash provides this
    )
  end
end
