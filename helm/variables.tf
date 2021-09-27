/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: MIT-0
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this
 * software and associated documentation files (the "Software"), to deal in the Software
 * without restriction, including without limitation the rights to use, copy, modify,
 * merge, publish, distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
 * INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
 * OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

variable "metrics_server_enable" {
  type        = bool
  default     = true
  description = "Enabling metrics server on eks cluster"
}
variable "cluster_autoscaler_enable" {
  type        = bool
  default     = true
  description = "Enabling cluster autoscaler server on eks cluster"
}
variable "traefik_ingress_controller_enable" {
  type        = bool
  default     = false
  description = "Enabling Traefik Ingress on eks cluster"
}


variable "lb_ingress_controller_enable" {
  type        = bool
  default     = false
  description = "Enabling LB Ingress controller on eks cluster"
}

variable "nginx_ingress_controller_enable" {
  type        = bool
  default     = false
  description = "Enabling Nginx Ingress on eks cluster"
}

variable "aws_for_fluent_bit_enable" {
  type        = bool
  default     = false
  description = "Enabling aws_fluent_bit on eks cluster"
}

variable "fargate_fluent_bit_enable" {
  type        = bool
  default     = false
  description = "Enabling fargate_fluent_bit on eks cluster"
}

variable "s3_nlb_logs" {
  type        = string
  description = "S3 bucket for NLB Logs"
}

variable "eks_cluster_id" {
  type        = string
  description = "EKS cluster Id"
}

variable "ekslog_retention_in_days" {
  type        = number
  description = "Number of days to retain log events. Default retention - 90 days."
}

variable "public_docker_repo" {
  type = bool
}

variable "eks_oidc_issuer_url" {
  type = string
}

variable "eks_oidc_provider_arn" {
  type = string
}

variable "agones_image_repo" {
  type    = string
  default = "gcr.io/agones-images"
}

variable "agones_image_tag" {
  type    = string
  default = "1.15.0"
}

variable "agones_helm_chart_name" {
  type    = string
  default = "agones"
}

variable "agones_helm_chart_url" {
  type    = string
  default = "https://agones.dev/chart/stable"
}

variable "agones_game_server_maxport" {
  type    = number
  default = 8000
}
variable "agones_game_server_minport" {
  type    = number
  default = 7000
}

variable "expose_udp" {
  type    = bool
  default = false
}

variable "agones_enable" {
  type        = bool
  default     = false
  description = "Enabling agones on eks cluster"
}

variable "eks_security_group_id" {
  type = string
}

variable "aws_lb_image_repo_name" {
  type    = string
  default = "amazon/aws-load-balancer-controller"
}


variable "aws_lb_helm_repo_url" {
  type    = string
  default = "https://aws.github.io/eks-charts"
}

variable "aws_lb_helm_helm_chart_name" {
  type    = string
  default = "aws-load-balancer-controller"
}

variable "aws_lb_image_tag" {
  type = string
}

variable "aws_lb_helm_chart_version" {
  type = string
}

variable "metric_server_image_tag" {
  type = string
}

variable "metric_server_helm_chart_version" {
  type = string
}

variable "metric_server_helm_repo_url" {
  type    = string
  default = "https://charts.bitnami.com/bitnami"
}

variable "metric_server_image_repo_name" {
  type    = string
  default = "bitnami/metrics-server"
}

variable "metric_server_helm_chart_name" {
  type    = string
  default = "metrics-server"
}

variable "cluster_autoscaler_helm_repo_url" {
  type    = string
  default = "https://kubernetes.github.io/autoscaler"
}

variable "cluster_autoscaler_helm_chart_name" {
  type    = string
  default = "cluster-autoscaler"
}

variable "cluster_autoscaler_image_repo_name" {
  type    = string
  default = "k8s.gcr.io/autoscaling/cluster-autoscaler"
}

variable "cluster_autoscaler_image_tag" {
  type = string
}

variable "cluster_autoscaler_helm_version" {
  type = string
}

variable "prometheus_enable" {
  type        = bool
  default     = false
  description = "Enabling prometheus on eks cluster"
}

variable "private_container_repo_url" {
  type = string
}

variable "prometheus_helm_chart_url" {
  type    = string
  default = "https://prometheus-community.github.io/helm-charts"
}

variable "prometheus_helm_chart_name" {
  type    = string
  default = "prometheus"
}

variable "prometheus_helm_chart_version" {
  type = string
}

variable "prometheus_image_tag" {
  type = string
}

variable "alert_manager_image_tag" {
  type = string
}

variable "configmap_reload_image_tag" {
  type = string
}

variable "node_exporter_image_tag" {
  type = string
}

variable "pushgateway_image_tag" {
  type = string
}

variable "service_account_amp_ingest_name" {
  type = string
}

variable "amp_workspace_id" {
  type = string
}

variable "region" {
  type = string
}

variable "amp_ingest_role_arn" {
  type = string
}

variable "traefik_image_repo_name" {
  type    = string
  default = "traefik"
}

variable "traefik_helm_chart_name" {
  type    = string
  default = "traefik"
}

variable "traefik_helm_chart_url" {
  type    = string
  default = "https://helm.traefik.io/traefik"
}

variable "traefik_helm_chart_version" {
  type = string
}

variable "traefik_image_tag" {
  type = string
}

variable "nginx_image_repo_name" {
  type    = string
  default = "ingress-nginx/controller"
}

variable "nginx_helm_chart_url" {
  type    = string
  default = "https://kubernetes.github.io/ingress-nginx"
}
variable "nginx_helm_chart_name" {
  type    = string
  default = "ingress-nginx"
}

variable "nginx_helm_chart_version" {
  type = string
}

variable "nginx_image_tag" {
  type = string
}

variable "aws_for_fluent_bit_image_repo_name" {
  type    = string
  default = "amazon/aws-for-fluent-bit"
}

variable "aws_for_fluent_bit_helm_chart_url" {
  type    = string
  default = "https://aws.github.io/eks-charts"
}
variable "aws_for_fluent_bit_helm_chart_name" {
  type    = string
  default = "aws-for-fluent-bit"
}

variable "aws_for_fluent_bit_image_tag" {
  type = string
}

variable "aws_for_fluent_bit_helm_chart_version" {
  type = string
}

variable "cert_manager_enable" {
  type        = bool
  default     = false
  description = "Enabling Cert Manager Helm Chart installation"
}
variable "cert_manager_image_tag" {
  type        = string
  default     = "v1.5.3"
  description = "Docker image tag for cert-manager controller"
}
variable "cert_manager_helm_chart_version" {
  type        = string
  default     = "v1.5.3"
  description = "Helm chart version for cert-manager"
}
variable "cert_manager_install_crds" {
  type        = bool
  description = "Whether Cert Manager CRDs should be installed as part of the cert-manager Helm chart installation"
  default     = true
}

variable "cert_manager_helm_chart_url" {
  type    = string
  default = "https://charts.jetstack.io"
}

variable "cert_manager_helm_chart_name" {
  type    = string
  default = "cert-manager"
}

variable "cert_manager_image_repo_name" {
  type    = string
  default = "jetstack/cert-manager-controller"
}

variable "windows_vpc_controllers_enable" {
  type        = bool
  default     = false
  description = "Enabling Windows VPC Controllers Helm Chart installation"
}
variable "windows_vpc_resource_controller_image_tag" {
  type        = string
  default     = "v0.2.7"
  description = "Docker image tag for Windows VPC resource controller"
}
variable "windows_vpc_admission_webhook_image_tag" {
  type        = string
  default     = "v0.2.7"
  description = "Docker image tag for Windows VPC admission webhook controller"
}
