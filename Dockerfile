# Use the official Python image
FROM python:3.9-slim

# Install necessary packages
RUN pip install mlflow sqlite3

# Expose the port MLflow uses
EXPOSE 5000

# Command to run MLflow server
ENTRYPOINT ["mlflow", "server", "--backend-store-uri", "sqlite:///mlflow.db", "--default-artifact-root", "/mlflow/artifacts", "--host", "0.0.0.0", "--port", "5000"]
