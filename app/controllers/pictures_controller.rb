class PicturesController < ApplicationController
  IMAGE_PATH = "#{Rails.root}/public/image_files"

 	def upload
 		FileUtils.mkdir(IMAGE_PATH) unless File.directory?(IMAGE_PATH)
 		image = params[:picture]
 		file_name = image.original_filename
 		extension = File.extname(file_name)
 		width, height = FastImage.size(image)
 		is_image_valid = validate_image(width, height)
 		if ['.png', '.jpg', '.jpeg'].include?(extension.downcase) && is_image_valid
 			path = File.join(IMAGE_PATH, file_name)
 			File.open(path, "wb") { |f| f.write(image.read) }
 			render json: {status: 200, message: 'file uploaded succesfully'}
 		else
 			render json: {status: 500, message: 'invalid request'}
 		end
	end

	def index
		files = Dir.glob("#{IMAGE_PATH}/**/*")
		render json: {status: 200, files: files}
	end

	private

	def validate_image(w, h)
		if (w >= 350 && h >= 350 && w <= 5000 && h <= 5000)
			true
		else
			false
		end
	end
end