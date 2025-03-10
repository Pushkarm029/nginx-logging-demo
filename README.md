# NGINX with Fluentd + OpenSearch Logging Demo

This is a Docker Compose demo for the HSF Conditions Database project that integrates NGINX with Fluentd for log collection and OpenSearch for storage and visualization.

## Components

- **NGINX**: Web server generating logs
- **Fluentd**: Log collector and processor
- **OpenSearch**: Search and analytics engine for storing and analyzing logs
- **OpenSearch Dashboards**: Visualization dashboard for exploring logs

## Usage

1. Start the services:
   ```
   docker-compose up -d
   ```

2. Generate logs by visiting http://localhost in your browser

3. View logs in OpenSearch Dashboards:
   - Open http://localhost:5601
   - Create an index pattern for "nginx-*"
   - Explore the logs in the Discover section

## Stopping the Demo

```
docker-compose down
```

To remove all data volumes:
```
docker-compose down -v
```

## Relation to Main Project

This demo is a simplified version of the logging infrastructure that will be implemented in the main HSF Conditions Database project. The main project will extend this foundation to include:

1. Logs from Django and PostgreSQL
2. Machine learning models for anomaly detection using OpenSearch ML features
3. Kubernetes deployment
4. Performance optimization based on log analysis

## Why Fluentd + OpenSearch?

- **Fluentd**: Provides flexible log collection with strong parsing capabilities
- **OpenSearch**: Offers powerful search, analytics, and machine learning features
- **Open Source**: Both tools are fully open-source with active communities
- **Scalability**: Well-suited for Kubernetes environments in the main project
- **ML Capabilities**: OpenSearch includes anomaly detection and other ML features 