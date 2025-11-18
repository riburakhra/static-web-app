# Java Motivational Quotes App

A lightweight Java-based HTTP server that serves random motivational quotes via a REST API. The quotes are externalized to a `quotes.txt` file for easy customization.

## Features

- 🎲 Serves random motivational quotes in JSON format
- 📝 Uses an external `quotes.txt` file for configurable quotes
- ⚡ Lightweight HTTP server using `com.sun.net.httpserver.HttpServer`
- 🐳 Dockerized for easy deployment
- 🚀 No external dependencies required

## Requirements

- **Java 17+** (or Java 11+)
- **Maven** (if building from source)
- **Docker** (optional, for containerized deployment)

## Setup and Usage

### Running Locally

1. **Navigate to the project directory:**
   ```bash
   cd java-quotes-app
   ```

2. **Ensure `quotes.txt` exists** in the project directory and contains quotes (one per line).

3. **Compile and run the application:**
   ```bash
   javac src/Main.java -d out
   java -cp out Main
   ```

4. **The server will start on** `http://localhost:8000/`

5. **Test the API using:**
   ```bash
   curl http://localhost:8000/
   ```

   **Expected Response:**
   ```json
   {
     "quote": "The only way to do great work is to love what you do."
   }
   ```

### Running with Docker

1. **Build the Docker image:**
   ```bash
   docker build -t motivational-quotes-api .
   ```

2. **Run the container:**
   ```bash
   docker run -d -p 8000:8000 --name quotes-app motivational-quotes-api
   ```

3. **Access the API at** `http://localhost:8000/`

4. **View logs:**
   ```bash
   docker logs quotes-app
   ```

5. **Stop the container:**
   ```bash
   docker stop quotes-app
   docker rm quotes-app
   ```

## API Endpoints

| Endpoint | Method | Description | Response |
|----------|--------|-------------|----------|
| `/` | GET | Returns a random quote | `{"quote": "Your motivational quote here"}` |

## File Structure

```
java-quotes-app/
├── src/
│   └── Main.java          # Main server code
├── quotes.txt             # Quote database (one per line)
├── Dockerfile             # Docker configuration
├── README.md              # This file
└── out/                   # Compiled classes (generated)
    └── Main.class
```

## Customizing Quotes

To customize the quotes, edit `quotes.txt` and restart the application. Each quote should be on a new line.

**Example `quotes.txt`:**
```
The only way to do great work is to love what you do.
Innovation distinguishes between a leader and a follower.
Stay hungry, stay foolish.
Your time is limited, don't waste it living someone else's life.
```

After editing, restart the application:
```bash
# If running locally
Ctrl+C to stop, then run again

# If using Docker
docker restart quotes-app
```

## Docker Commands

```bash
# Build image
docker build -t motivational-quotes-api .

# Run container
docker run -d -p 8000:8000 --name quotes-app motivational-quotes-api

# View logs
docker logs quotes-app

# Stop container
docker stop quotes-app

# Remove container
docker rm quotes-app

# Remove image
docker rmi motivational-quotes-api
```

## Troubleshooting

### Port Already in Use
```bash
# Use a different port
docker run -d -p 8080:8000 --name quotes-app motivational-quotes-api
# Access at http://localhost:8080/
```

### No Quotes Found
- Ensure `quotes.txt` exists in the project directory
- Check that `quotes.txt` is not empty
- Verify each quote is on a separate line

### Docker Build Fails
- Ensure Docker is running
- Check that all files are in the correct locations
- Verify Dockerfile syntax

## Example Usage

```bash
# Get a random quote
$ curl http://localhost:8000/
{"quote": "The only way to do great work is to love what you do."}

# Get another quote (different each time)
$ curl http://localhost:8000/
{"quote": "Stay hungry, stay foolish."}
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

**Rupinder Rakhra**
- GitHub: [@riburakhra](https://github.com/riburakhra)

## Acknowledgments

- Built with Java's built-in HTTP server
- Inspired by the need for daily motivation
- Containerized with Docker for easy deployment


