class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end


  private
    def article_params
      params.require(:article).permit(:title, :body, :status)
    end

end


# In a Rails application, controllers are the components that respond to external requests from the web server, gather necessary data from the models, and pass this data to the views for presentation. They act as the middleman between models (which handle data and business logic) and views (which present this data to the user).

# Controllers are stored in the app/controllers directory of a Rails application. Each controller corresponds to a specific resource (like users, articles, comments, etc.) and contains actions to perform operations on that resource. These actions correspond to different types of HTTP requests (like GET, POST, PUT, DELETE).

# Let's break down your ArticlesController:

# class ArticlesController < ApplicationController: This line defines a new controller named `ArticlesController. It inherits from ApplicationController, which means it has access to methods defined in ApplicationController.

# http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]: This line sets up HTTP Basic Authentication for all actions in this controller, except for the index and show actions. This means that a username and password (in this case, "dhh" and "secret") will be required to access all other actions.

# def index: This action is called when a GET request is made to /articles. It retrieves all articles from the database and stores them in the @articles instance variable, which can then be used in the view.

# def show: This action is called when a GET request is made to /articles/:id. It retrieves the article with the given ID from the database and stores it in the @article instance variable.

# def new: This action is called when a GET request is made to /articles/new. It initializes a new, unsaved article and stores it in the @article instance variable.

# def create: This action is called when a POST request is made to /articles. It initializes a new article with the parameters from the form, attempts to save it in the database, and then either redirects to the new article (if the save was successful) or re-renders the form (if the save failed).

# def edit: This action is called when a GET request is made to /articles/:id/edit. It retrieves the article with the given ID from the database and stores it in the @article instance variable.

# def update: This action is called when a PUT or PATCH request is made to /articles/:id. It retrieves the article with the given ID from the database, attempts to update it with the parameters from the form, and then either redirects to the article (if the update was successful) or re-renders the form (if the update failed).

# def destroy: This action is called when a DELETE request is made to /articles/:id. It retrieves the article with the given ID from the database and destroys it.

# The article_params method is a private method that is used to filter the parameters that are sent along with the POST or PUT request. This is a security feature known as strong parameters, which prevents mass assignment vulnerabilities.