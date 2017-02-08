**What are some common HTTP status codes?**

  * 200 'OK' - a request has succeeded
  * 404 'Not Found' - the server has not found anything matching the Request-URI. no condition is given if temporary or permanent.
  * 403 'Forbidden' - The Server is refusing to fulfill the request, even though the request was understood.
  * 300 'Multiple Choice' - The requested resource has different choices and cannot be resolved into one. For example, there may be several index.html pages depending on which language is wanted (such as German).
  * 302 'Found'- The requested recource resides temporarily under a different URI.

  * 400 'Bad Request'\ - The request could not be understood by the server due to malformed syntax. the client SHOULD not repeat the request without modifications.

  * 550 'Permission Denied' - The server is stating the account you have currently logged in as does not have permission to perform the action you are attempting.

**What is the difference between a GET request and a POST request? When might each be used?**

  * GET is for retrieving data. It should have no side effects, you should be able to request the same URL over and over harmlessly.  

  * POST is for writing data. It may have side effects. Making multiple identical write requests will likely result in multiple writes. The data is in the body of the request instead of the URL but it is trivially simple to view/edit.

**Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?**

* An HTTP cookie is a small piece of data that a server sends to the user's web browser, that may store it and send it back together with the next request to the same server. Typically, it's used to know if two requests came from the same browser allowing to keep a user logged-in, for example. It remembers *stateful* information for the *stateless* HTTP protocol.

  * *stateful information* - stores information about what has happened or changed since it started running.
  * *stateless information* - doesn't expose any of that information. It gives the same response to the same request, function, or method call, every time.

  **What are some of the key design philosophies of the Linux operating system?**

    * It never assumes that the user is incompetent. It always assumes you know what you are doing and allows you do do anything you tell it to. Anything. Whether it is unintentionally bad or not. That is a huge amount of power in the hands of a user.

    * Linux treats everyone equally and allows everyone the maximum amount of power. Other operating systems are elitist and exclusive because they withhold or hide their power behind an inflexible Graphical User Interface that allows one to do only what the developers think we should be allowed to do.

  **In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?**

  * a VPS to my knowledge is a server used for private purposes weather it be installing software to run on that OS, or creating and configuring their own OS.

  **Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?**

  * Just one word: security. Also, If you try to change the system in anyway that could be harmful you may possible be facing big/costly changes.
