## kubernetes_vagrants

创建 kubernetes 最小集群所需虚拟机的 vagrant 脚本。总共有4个虚拟机，1个跳板机作为控制节点，3个为kubernetes集群。

系统为 Debian 12。

| Name    | Description            | CPU | RAM   | Storage |
|---------|------------------------|-----|-------|---------|
| jumpbox | Administration host    | 2   | 1GB   | 10GB    |
| server  | Kubernetes server      | 1   | 2GB   | 20GB    |
| node-0  | Kubernetes worker node | 1   | 2GB   | 20GB    |
| node-1  | Kubernetes worker node | 1   | 2GB   | 20GB    |

可以与[kubernetes-the-hard-way](https://github.com/kelseyhightower/kubernetes-the-hard-way)搭配使用。

公共配置存档在 `common.rb` 文件中。
