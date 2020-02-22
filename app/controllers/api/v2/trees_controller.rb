class Api::V2::TreesController < ApplicationController
  def show # here your have to render json by yourself
    @tree = Tree.find(params[:id])
    render json: TreeSerializer.new(@tree).serializable_hash
  end
end
