# Unarchiving the Package
Download the "awesome-website.zip" file from the GitHub Actions interface.
Extract the contents of the archive by running the command: unzip awesome-website.zip
The archive should contain the binary "awesome-api" and the "dist" directory.
# Starting and Stopping the Application
To start the application, navigate to the directory containing the binary "awesome-api" and run the command: ./awesome-api start

To stop the application, navigate to the directory containing the binary "awesome-api" and run the command: ./awesome-api stop

# Customizing the Application Logs
The application logs are written to the "logs" directory by default. To customize the location of the application logs, you can create a file named ".env" in the same directory as the "awesome-api" binary and specify the "LOG_DIR" variable with the desired log directory path.

# Example:

```
LOG_DIR=/path/to/custom/log/directory
```
# Healthcheck
To quickly verify that the application is running, you can send a GET request to the "/health" endpoint. For example, using the curl command:

```
curl http://localhost:8080/health
```
This should return a JSON object with the status of the application.