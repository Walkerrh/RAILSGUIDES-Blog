class CommentsController < ApplicationController
    http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
  
    # POST
    # /articles/:article_id/comments
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        redirect_to article_path(@article)
      end
      
      # DELETE
      # /articles/:article_id/comments/:id
      def destroy
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        if @comment.destroy
          redirect_to article_path(@article), status: :see_other # The :see_other symbol represents the HTTP status code 303, which is used to indicate that the requested resource can be found at a different URI
        else
          # Render the article's show view, which should display the comment along with any error messages
          render 'articles/show'
        end
      end

      # def destroy
      #   @article = Article.find(params[:article_id])
      #   @comment = @article.comments.find(params[:id])
      #   @comment.destroy
      #   redirect_to article_path(@article), status: :see_other
      # end

      # GET
      # /articles/:article_id/comments/:id
      def show
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article)
    end

    # def show
    #   @article = Article.find(params[:article_id])
    #   @comment = @article.comments.find(params[:id])
    #   # No need to destroy the comment or redirect
    # end
    
      private
        def comment_params
          params.require(:comment).permit(:commenter, :body, :status)
        end
    end