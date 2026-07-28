# JFrog AppTrust GitHub Actions Demo

## Overview

This repository demonstrates an end-to-end software supply chain workflow using **GitHub Actions** and **JFrog AppTrust**.

The pipeline showcases how to:

* Build and publish application artifacts.
* Generate JFrog Build Info.
* Create an AppTrust application version.
* Attach build provenance and software evidence.
* Import GitHub Dependabot findings as signed evidence.
* Evaluate application versions through lifecycle gates.
* Promote applications through multiple stages.
* Release approved versions to Production.

The project is intended as a **proof of concept (PoC)** and reference implementation for customers evaluating JFrog AppTrust.

---

## Architecture

```
Developer
     │
     ▼
GitHub Repository
     │
     ▼
GitHub Actions
     │
     ├── Build Application
     ├── Publish Build Info
     ├── Create AppTrust Version
     ├── Generate Build Evidence
     ├── Generate Dependabot Evidence
     ├── Promote through Lifecycle
     └── Release to Production
              │
              ▼
      JFrog Platform
        ├── Artifactory
        ├── Xray
        ├── Catalog
        └── AppTrust
```

---

## Features

* GitHub Actions CI/CD pipeline
* JFrog CLI integration
* Build provenance generation
* GitHub Artifact Attestation support
* Custom signed evidence creation
* Dependabot evidence ingestion
* AppTrust lifecycle promotions
* Gate evaluations
* Waiver support
* Production release automation

---

## Application Lifecycle

The pipeline promotes an application version through the following lifecycle stages:

```
DEV
 │
 ▼
TEST
 │
 ▼
QA
 │
 ▼
TRAIN
 │
 ▼
PRODUCTION
```

Each promotion executes the configured AppTrust entry and exit gates before continuing.

---

## Workflow Steps

1. Checkout source code
2. Configure JFrog CLI
3. Build the application
4. Publish Build Info
5. Create an AppTrust application version
6. Generate GitHub Artifact Attestation
7. Create JFrog build evidence
8. Create Dependabot evidence
9. Evaluate lifecycle gates
10. Promote through DEV → TEST → QA → TRAIN
11. Release the application version to Production

---

## Evidence Collected

This demo attaches multiple evidence types to an AppTrust application version.

| Evidence                    | Source            |
| --------------------------- | ----------------- |
| Build Provenance            | GitHub Actions    |
| GitHub Artifact Attestation | GitHub            |
| Build Evidence              | JFrog CLI         |
| Dependabot Evidence         | GitHub Dependabot |
| Build Information           | JFrog Build Info  |

---

## Technologies

* GitHub Actions
* GitHub Artifact Attestations
* GitHub Dependabot
* Maven
* Java
* JFrog CLI
* JFrog Artifactory
* JFrog Xray
* JFrog AppTrust

---

## Prerequisites

* GitHub repository
* JFrog Platform with AppTrust enabled
* JFrog CLI
* Java 17+ (or compatible)
* Maven
* GitHub repository secrets configured for JFrog authentication
* Evidence signing key pair generated with `jf evd generate-key-pair`

---

## Demo Goals

This project demonstrates how organizations can:

* Establish end-to-end software provenance.
* Attach verifiable supply chain evidence to application versions.
* Integrate external security evidence into release decisions.
* Automate release governance using AppTrust lifecycle gates.
* Produce auditable release evidence for compliance and security reviews.

---

## Disclaimer

This repository is intended for demonstration and educational purposes. Some dependencies may intentionally include vulnerable versions to demonstrate vulnerability detection, evidence generation, policy evaluation, and lifecycle governance within JFrog AppTrust. These versions should not be used in production environments.
