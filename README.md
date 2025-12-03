# terraform-aws-policies
Terraform AWS Sentinel policies

## Overview
This repository contains Sentinel policies for enforcing best practices and compliance rules for AWS resources in Terraform.

## Policies

### EC2 Instance Type Policy (`ec2-instance-type.sentinel`)
Enforces that EC2 instances can only be created with the following instance types:
- `t3.medium`
- `t3.small`

**Enforcement Level:** Hard Mandatory

### EC2 Required Tags Policy (`ec2-required-tags.sentinel`)
Enforces that all EC2 instances must have the following tags:
- `Team`
- `Env`
- `Project`

**Enforcement Level:** Hard Mandatory

## Directory Structure
```
.
├── policies/                  # Sentinel policy files
│   ├── ec2-instance-type.sentinel
│   └── ec2-required-tags.sentinel
├── test/                      # Test files for policies
│   ├── ec2-instance-type/
│   │   ├── pass.hcl
│   │   ├── fail.hcl
│   │   ├── mock-tfplan-v2-pass.sentinel
│   │   └── mock-tfplan-v2-fail.sentinel
│   └── ec2-required-tags/
│       ├── pass.hcl
│       ├── fail.hcl
│       ├── mock-tfplan-v2-pass.sentinel
│       └── mock-tfplan-v2-fail.sentinel
└── sentinel.hcl               # Sentinel configuration
```

## Testing
Tests are located in the `test/` directory. Each policy has both passing and failing test cases with mock Terraform plan data.

To run tests (requires Sentinel CLI):
```bash
sentinel test
```

## Usage
These policies are designed to be used with Terraform Cloud or Terraform Enterprise. Add this repository as a policy set in your Terraform Cloud organization.
