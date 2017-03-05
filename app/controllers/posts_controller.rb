class PostsController < InheritedResources::Base

  private

    def post_params
      params.require(:post).permit(:image, :title, :description, :date, :author)
    end
end

