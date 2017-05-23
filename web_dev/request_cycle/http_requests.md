# What are some common HTTP status codes?
		200 - Everything is ok and request was completed
		404 - the infamous "not found" code associated with broken links and typos
		403 - "forbidden" - Often because a given resource is only meant to be accessed by a whitelist of certain computers that you're not on
		503  - "service unavailable" - possibly server is overloaded with requests or rebooting. Try again later.
		504 - "gateway timeout" - A proxy server or gateway is unavailable. Like a 503 you can try again and may get a different result
		500 - "Internal server error" - a generic server side error that is used when none of the other server errors apply or when they developer chose not to specify
		550 - "permission denied" - you're trying to do something that your account isn't allowed to do

# What is the difference between a GET request and a POST request? When might each be used?
		GET - all HTTP request information is present in the URL. This could mean the request is just a domain like Google.com or maybe even information is appended to the domain like "https://www.google.com/search?q=test" but everything is in the URL.
		POST - additional data is in the body of the request. Examples of a POST request would be when the user is sending form data or logging in with credentials that would be insecure in the URL.


# Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
		Cookies are data sent by the website that are stored in the browser. They allow the website to have an altered state for the user. A shopping website that has items stored in your shopping card even when you're not logged in to an account would require cookies. Cookies are also the reason that Amazon can advertise a product to you that you previously were googling...