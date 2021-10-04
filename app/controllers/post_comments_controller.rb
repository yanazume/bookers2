class PostCommentsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @post_comment = current_user.post_comments.new(post_comment_params)
    @post_comment.book_id = @book.id

     if @post_comment.save
     flash[:notice]="Book was successfully created"
     redirect_to book_path(@book)
     comment.save
     redirect_to book_path(book)

     else
     @user = @book.user
     @newbook = Book.new
     render "books/show"

     end
  end

  def destroy
    @post_comment = Post_Comment.find_by(id: params[:id], book_id: params[:book_id]).destroy
      flash[:notice]="Comment was successfully destroyed."
      redirect_to book_path(params[:book_id])
  end

  def favorited_by?(user)
	favorites.where(user_id: user.id).exists?
  end

    private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
