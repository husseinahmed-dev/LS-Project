# LS Project
## Achieving Enterprise-Grade Kubernetes Security with GitOps-Enabled Deployments, Azure Cloud, and Hardening Techniques
This repository contains the code and configuration files necessary to deploy a Kubernetes application on Azure Cloud using GitOps approach. The deployment process follows the Microsoft Architecture Center best practices for enterprise-grade deployments and is designed to be secure and compliant with regulated environments.
### Overview
GitOps is a modern approach to managing infrastructure and applications in a Kubernetes environment. It involves using Git as the source of truth for all configuration files and manifests, and relying on a continuous delivery pipeline to automatically apply changes to the Kubernetes environment.

The benefits of using GitOps include increased visibility, traceability, and auditability of changes made to the Kubernetes environment, as well as faster and more consistent deployments.
### Architecture
Complete architecture diagram could be found at: [Large Systems Project](https://husseinahmed-dev.github.io/LS-Project/)

![Figure-1](svg-pan-zoom-master/src/media/Figure-1.jpg)
![Figure-2](svg-pan-zoom-master/src/media/Figure-2.jpg)
![Figure-3](svg-pan-zoom-master/src/media/Figure-3.jpg)
![Figure-4](svg-pan-zoom-master/src/media/Figure-4.jpg)

The architecture of this deployment follows the Microsoft Architecture Center best practices for enterprise-grade deployments on Azure. It includes the following components:

Kubernetes cluster: a managed Kubernetes cluster on Azure for running the application.
Azure Container Registry (ACR): a private registry for storing Docker images used by the application.
Azure Key Vault: a secure store for storing sensitive configuration data such as passwords and secrets.
Azure DevOps: a continuous delivery pipeline for deploying changes to the Kubernetes environment.
### Deployment Process
The deployment process for this project involves the following steps: