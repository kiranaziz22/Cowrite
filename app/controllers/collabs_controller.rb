class CollabsController < ApplicationController
  def collab_params
    params.require(:collab).permit(:content, photos: [])
  end
end
