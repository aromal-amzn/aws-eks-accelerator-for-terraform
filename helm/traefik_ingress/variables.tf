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

variable "private_container_repo_url" {
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
  type    = string
  default = "10.0.0"
}

variable "traefik_image_tag" {
  type    = string
  default = "v2.4.9"
}

variable "s3_nlb_logs" {
  type = string
}

variable "account_id" {
  type = string
}

//variable "tls_cert_arn" {}
variable "public_docker_repo" {
  type = bool
}
