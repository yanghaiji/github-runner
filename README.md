# github-runner
github runner 演示用例


# workflows

## main.yml

```
这个脚本包括以下步骤：

定义触发 runner 的事件和环境变量。

构建和部署需要的 Dockerhub配置信息。

定义 build-and-deploy job，该 job 使用自托管 runner，在步骤中依次执行以下操作：

检出代码，构建 Spring Boot 应用程序。
设置 JDK 8 和 Docker。
通过执行 docker login 命令登录到 Dockerhub。
构建 Docker 镜像并推送到 Docqkerhub。

```

## awy_demo.yml

```
这个脚本包括以下步骤：

定义触发 runner 的事件和环境变量。

构建和部署需要的 AWS ECR 和 K8s 配置信息。

定义 build-and-deploy job，该 job 使用自托管 runner，在步骤中依次执行以下操作：

检出代码，构建 Spring Boot 应用程序。
设置 JDK 8 和 Docker。
通过执行 docker login 命令登录到 AWS ECR。
构建 Docker 镜像并推送到 ECR。
部署到 Kubernetes。
脚本通过设置环境变量和使用 GitHub Action 中提供的 actions/checkout、actions/setup-java、docker/setup-docker、appleboy/kubectl-action 操作，实现了从代码构建到部署的自动化流程。
```


## aliyun_demo.yml

```
这个脚本包括以下步骤：

定义触发 runner 的事件和环境变量。

构建和部署需要的 Aliyun ECR 和 K8s 配置信息。

定义 build-and-deploy job，该 job 使用自托管 runner，在步骤中依次执行以下操作：

检出代码，构建 Spring Boot 应用程序。
设置 JDK 8 和 Docker。
通过执行 docker login 命令登录到 AWS ECR。
构建 Docker 镜像并推送到 ECR。
部署到 Kubernetes。

```
