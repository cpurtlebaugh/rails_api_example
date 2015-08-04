# Rails API Example

Here we can see that Rails has the ability to serve JSON instead of HTML,
and that this ability comes by default with the Rails conventions.

### Requesting (or Consuming) JSON

You can request JSON in one of two ways:

1. As long as it's a Rails server, if you add `.json` to the end of a request
   Rails will interpret it as a request for JSON. For example:

   ```
   localhost:3000/movies.json
   localhost:3000/actors/1.json
   ```

2. The better, more universal way to request JSON is by adding two "headers" to
   your request:

     ```
     Content-Type: application/json
     Accept: application/json
     ```

Whenever you use [jQuery's AJAX](http://api.jquery.com/category/ajax/) 
functions, for example, jQuery insert's those headers for you. It's useful to
[learn as much as you can](https://developer.atlassian.com/display/CROWDDEV/JSON+Requests+and+Responses#JSONRequestsandResponses-HTTPHeaders)
about the power of request headers.

The easiest way to insert those headers and test JSON endpoints on your own
is to use a RESTful API client, like [Insomniac](http://insomnia.rest/) or 
[Postman](https://www.getpostman.com/). [See the instructions below for 
installing Postman.*](#---installing-postman)

### Serving (or Producing) JSON (from Rails)

Rails has two conventions for serving JSON. When a client requests JSON:

1. If there is, in the view folder for the resource, a file named 
   `action.json` or `action.json.jbuilder`, it will use that by default.
   Eg, when a JSON request is made to `movies#index`, it will return
   views entitled:

    ```
    movies/index.json
    movies/index.json.jbuilder
    ```

   JBuilder is a [Rails-made DSL](https://github.com/rails/jbuilder) for 
   describing JSON "views."
   
2. In the Rails controller, you can explicitly define an action to perform
   by using the `respond_to` helper. `respond_to` allows you to define
   specific logic and rendering for a requested format. For JSON, we would
   write:

    ```
    respond_to do |format|
    	format.json { ...json rendering here... }
    end
    ```

If you want to render (or return to the client) JSON of any sort, you can
simply write:

```ruby
render json: object
```

This object can be an ActiveRecord object, a Hash, or something else!

---

#### * - Installing Postman

You can install Postman from the Chrome App Store. Go to its URL and then click
"+ Add to Chrome".

![Postman in the Chrome App Store](https://i.imgur.com/GZD6DZS.png)

You can then launch it by going to your apps: type `chrome://apps` into your URL
and then click on the icon.

![Postman in your Apps](https://i.imgur.com/KOOp8hw.png)

Once inside the app, you can enter the URL in the bar next to "GET ∨", and headers
under the "Headers" tab:

![Using Postman](https://i.imgur.com/tuZGPWo.png)
