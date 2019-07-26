# Launch CGI program to receive and return data
require 'cgi'
cgi = CGI.new

# After receiving data, return a response in HTML format
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # Retrieve the data of "goya" which is the mark of information by the description cgi ['goya'] and assign it to a local variable
  get = cgi['goya1']

  # Return the response in HTML
  "<html>
    <body>
      <p>The crops with poor quality's information are as follows: </p>
      #{get}
    </body>
  </html>"
}