class Api::V1::TreesController < ApplicationController
  def show # here rabl is responsible for json rendering from /app/views/api/v1
    @tree = Tree.find(params[:id])
  end
end
