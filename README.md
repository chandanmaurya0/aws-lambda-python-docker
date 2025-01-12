# Sample AWS Lambda Function with Docker

This is a sample AWS Lambda function that uses Docker to build and deploy the function.

## Requirements

- Docker

## Build and Deploy

```bash
docker build -t sample-lambda-function .
docker run -p 9000:8080 sample-lambda-function
```

## Invoke the Lambda Function

```bash
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'
```
