
# Terraform EC2 Instance Module

This repository contains a Terraform configuration for provisioning an EC2 instance on AWS using a reusable module.

## Table of Contents
- [Overview](#overview)
- [Module Structure](#module-structure)
- [How to Use](#how-to-use)
- [Variables](#variables)
- [Outputs](#outputs)
- [State Management](#state-management)

## Overview
This project uses Terraform to create an EC2 instance in AWS using a reusable module. The `ec2_instance` module allows you to easily customize the AMI ID and instance type to fit your needs.

## Module Structure

### Root Module
The root module is located in the main directory and includes the configuration for the AWS provider and the reference to the `ec2_instance` module.

### EC2 Instance Module (`modules/ec2-instance`)
This module contains the resource definition for provisioning an EC2 instance and outputs the public IP address of the instance. 

### Variables
- `ami_value`: The AMI ID for the EC2 instance (e.g., `ami-02db68a01488594c5`).
- `instance_type_value`: The EC2 instance type (e.g., `t3.micro`).

### Outputs
- `public_ip_address`: The public IP address of the created EC2 instance.

### `terraform.tfvars`
This file contains the values for the variables defined in the `variables.tf` file. You can modify this file to change the AMI or instance type.

## How to Use

1. Clone this repository:
   ```sh
   git clone <repo-url>
   cd <repo-directory>
   ```

2. Initialize Terraform:
   ```sh
   terraform init
   ```

3. Apply the Terraform configuration:
   ```sh
   terraform apply
   ```

4. To view the public IP address of the EC2 instance:
   ```sh
   terraform output public_ip_address
   ```

## State Management

Terraform maintains the state of your infrastructure in a `.tfstate` file. This file tracks the resources created and manages updates when changes are made. Be sure to back up this file if you plan on using it in a team environment.
