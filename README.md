# Dockerized Full Stack App

A beginner industry-style DevOps project using Docker, Docker Compose, Nginx, Node.js, and MySQL.

## Tech Stack

- Frontend: HTML, CSS, JavaScript
- Backend: Node.js, Express
- Database: MySQL
- Reverse Proxy: Nginx
- Containerization: Docker, Docker Compose

## Architecture

Browser → Nginx → Backend API → MySQL

## Features

- Multi-container application
- Product list loaded from MySQL
- Reverse proxy with Nginx
- Docker Compose orchestration
- Persistent database volume
- Environment variables support

## Run the project

```bash
docker compose down -v
docker compose up --build