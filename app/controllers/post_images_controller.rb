class PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new
  end

  #投稿データの保存
  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    if @post_image.save
      redirect_to post_images_path
    else
      render :new
    end  
  end  

  def index
    @post_images = PostImage.all
  end

  def show
    @post_image = PostImage.find(params[:id])
    @post_comment = PostComment.new
  end
  
  def destroy
    @post_image = PostImage.findw(params[:id]) #削除するレコードを取得
    @post_image.destroy #データ（レコード）を削除
    redirect_to '/post_images' #投稿一覧画面へリダイレクト
  end 
  
  #投稿データのストロングパラメーター
  private
  
  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end  
  
end
