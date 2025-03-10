#!/bin/bash

echo "Stopping and removing all containers..."
docker compose down -v

echo "Creating necessary directories..."
mkdir -p nginx/html
mkdir -p fluentd/conf
mkdir -p fluentd/pos

echo "Ensuring permissions are correct..."
chmod -R 777 fluentd/pos

echo "Starting all services..."
docker compose up -d

echo "Services started. Access:"
echo "- NGINX: http://localhost"
echo "- OpenSearch Dashboards: http://localhost:5601"
echo ""
echo "To set up OpenSearch Dashboards, create an index pattern for 'fluentd-*'" 