# Inception of Things (IoT)

A system administration project focused on learning and implementing Kubernetes cluster management using K3s, K3d, and Argo CD.

## Overview

1. **K3s and Vagrant Setup**: Implementation of a two-node K3s cluster using Vagrant
2. **K3s Applications**: Deployment of three web applications with Ingress configuration
3. **K3d and Argo CD**: Implementation of continuous integration using K3d and Argo CD
4. **Bonus**: Integration of GitLab

## Prerequisites

- VirtualBox or similar virtualization software
- Vagrant
- Git
- Docker
- kubectl
- K3s
- K3d
- Argo CD

## Part 1: K3s and Vagrant

### Requirements
- Two virtual machines with minimal resources (1 CPU, 512MB/1024MB RAM)
- Dedicated IP addresses (192.168.56.110 for Server, 192.168.56.111 for ServerWorker)
- SSH access without password
- K3s installation (controller mode on Server, agent mode on ServerWorker)

## Part 2: K3s Applications

### Requirements
- Single virtual machine with K3s server mode
- Three web applications deployment
- Ingress configuration based on HOST headers
- Multiple replicas for the second application
- Access through IP 192.168.56.110

## Part 3: K3d and Argo CD

### Requirements
- K3d installation with necessary dependencies
- Two namespaces (Argo CD and dev)
- Application deployment through GitHub repository
- Two versions of the application (v1 and v2)
- Automated deployment using Argo CD

## Bonus Part: GitLab Integration

### Requirements
- Local GitLab instance
- Integration with existing cluster
- Dedicated gitlab namespace
- Compatible with Part 3 implementation

## Installation

1. Clone the repository
2. Navigate to the desired part directory
3. Follow the specific setup instructions in each part's configuration files

## Usage

Detailed usage instructions for each part are provided in their respective directories.

### Part 1
```bash
cd p1
vagrant up
```

### Part 2
```bash
cd p2
vagrant up
```

### Part 3
```bash
in progress ...
```