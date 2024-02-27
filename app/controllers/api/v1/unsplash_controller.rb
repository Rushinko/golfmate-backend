class Api::V1::UnsplashController < ApplicationController
  def get_golf_course_image
    image = GolfCourseImage.order("RANDOM()").first # Fetch a random image

    render json: image # Assuming you'll serialize images to JSON
  end

  def get_and_store_new_golf_course_image
    UnsplashImageService.fetch_and_save_random_image('golf course')
    render 'Image saved'
  end
end
