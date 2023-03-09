# LS Project

![](https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExYTlhZTgyZTcwNDg1Mzk4NDg3OWY2NWVlMGI3OGZiMDhlMmU4MTg0OCZjdD1n/rQ5cWOkvXfoTUZLIPh/giphy.gif)



# Custom Django Application for K8s & Helm Chart Learning
This Helm chart provides a simple way to deploy the Large Systems Django app in a Kubernetes cluster using a StatefulSet.

## Application Description
The Large Systems Django app is a web application built with Python and Django that is designed to handle large-scale systems. The app is scalable and includes features such as authentication, authorization, and caching.


![](https://github.com/husseinahmed-dev/LS-Lab4/blob/main/Figures/Figure-92.png)

## Installation
To install this chart, first add the Helm repository:

```
helm repo add large-systems-django https://husseinahmed-dev.github.io/LS-Lab4/large-systems-django-chart
```

Then, install the chart using 'helm install':

```
helm install my-large-systems-django large-systems-django/large-systems-django --version 1.0.0
```

You can customize the installation by providing a values.yaml file with any necessary configuration options. The chart includes some default values, which can be found in values.yaml in the chart repository.

## Configuring
After installation, you can customize the application further by modifying the included templates. You can also update the values.yaml file to change any configuration options.

If you need to update the configuration of the application itself, you can do so by editing the ConfigMap. The ConfigMap includes all necessary environment variables that the application requires.

## Uninstalling
To uninstall the chart, use the helm uninstall command:

```
helm uninstall my-release
```

This will remove the resources that were created by the chart.

## Dependencies
This chart has the following dependencies:
- Kubernetes 1.18+
- Helm 3+

## Known Issues
There are currently no known issues with this chart. If you encounter any issues, please report them on the chart repository or contact the chart maintainer.
