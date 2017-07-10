class ProductsController < ApplicationController
  def index
    render text: 'index'
  end

  def hello
    render text: 'hello'
  end

  def say
    if params[:name]
      if params[:name] == 'michael'
        redirect_to '/say/hello/joe'
      else
        render text: "Saying Hello #{params[:name]}!"
      end
    else
      render text: 'Saying Hello!'
    end
  end

  def times
    session[:count] ||= 0
    render text: "You visited this url #{session[:count] += 1} time(s)."
  end

  def reset
    reset_session
    render text: 'Destroyed the Session!'
  end
end
