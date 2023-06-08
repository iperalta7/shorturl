
# URL Shortener

This is a URL shortener application built with Ruby on Rails and containerized using docker. It allows users to shorten long URLs and redirect to the original URLs using the shortened version.

## Requirements

- Ruby (v3.2.2)
- Docker

## Getting Started

### Run with Docker

1. Have Docker installed. 

2. Clone this repository.

3. In the project directory, run the following commands to build and run the Docker containers:

   ```shell
      docker build . -it short
   ```
    and

    ```shell
   docker run -p 3000:3000 short
   ```

   This will build the Docker images, create and start the container for the Rails app and the database.

4. Access the application in your browser at `http://localhost:3000`.

5. To stop the application, press `Ctrl+C` in the terminal
   
## Usage

- On the homepage, you can enter a long URL in the input field and click "Shorten URL" to create a shortened version.

- The previously shortened URLs will be displayed on the homepage, along with their original URLs.

- To delete a shortened URL, click the "Delete" button next to the corresponding URL.

## Future Additions

Some possible additions or updates I might add for this URL shortener application:

1. **User Login System**: Implement a user authentication system to have each user. This will allow users to create accounts, log in, and manage their own shortened URLs. Additionally, you can use the user context to automatically delete URLs based on an expiration date or provide personalized features.

2. **Automatic URL Expiration**: Add functionality to set an expiration date for each shortened URL. This can be achieved by adding an expiration date field to the `ShortUrl` model and implementing logic to delete the URL when the expiration date is reached. 

3. **Copy Button**: Add a "Copy" button next to each shortened URL. This can be accomplished using JavaScript to copy the shortened URL to the clipboard when the button is clicked. 
