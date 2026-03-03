# DETECT RPC APS BL Dashboard

Welcome to the DETECT RPC APS BL Dashboard project! This documentation guides new users through installation, setup, and development.

---

## Table of Contents

1. [Introduction](#introduction)
2. [Prerequisites](#prerequisites)
3. [Installation](#installation)
4. [Project Setup](#project-setup)
5. [Building the Dashboard](#building-the-dashboard)
6. [Development Workflow](#development-workflow)
7. [Contributing](#contributing)

---

## Introduction

The DETECT RPC APS BL Dashboard project provides a Quarto dashboard to efficiently monitor new and existing submissions for the APS Baseline data.

---

## Prerequisites

### System Requirements:

* **Operating System**: Windows, macOS, or Linux
* **Memory**: Minimum 8 GB RAM
* **Storage**: At least 10 GB free space

### Software Requirements:

* [R](https://cran.r-project.org/) (version 4.5)
* [RStudio](https://posit.co/download/rstudio-desktop/) (latest version)
* [Quarto](https://quarto.org/docs/get-started/) (version 1.7.\*)
* [Git](https://git-scm.com/downloads) (latest version)

---

## Installation

Follow these steps to install necessary software:

### Step 1: Install R

* Download and install R from [CRAN](https://cran.r-project.org/)

### Step 2: Install an IDE (RStudio or Positron)

* Download and install the latest version of RStudio or Positron from [Posit](https://posit.co/)

### Step 3: Install Quarto

* Download and install Quarto from [Quarto](https://quarto.org/docs/get-started/)

### Step 4: Install Git

* Download and install the latest version from [Git](https://git-scm.com/downloads)

Verify installations by opening your terminal and checking versions:

```shell
R --version
quarto --version
git --version
```

---

## Project Setup

### Step 1: Clone the Repository

```shell
git clone https://github.com/brad-cannell/DETECT-RPC-APS-BL-Dashboard.git
cd DETECT-RPC-APS-BL-Dashboard
```

### Step 2: Open in the IDE

* Open DETECT-RPC-APS-BL-Dashboard in the IDE.

### Step 3: Install Project Dependencies

In the R console:

```r
install.packages('renv')
renv::restore()
```

### Step 4: Request an API Key

[Add instructons](https://github.com/brad-cannell/DETECT-RPC-APS-BL-Dashboard/wiki#obtaining-a-redcap-api-token)

### Step 4: Add Your API Key to Keyring

```r
keyring::key_set("aps_reports_redcap_api")
```

---

## Building the Dashboard

### Step 1: Render the Dashboard

In the IDE, navigate to the project root and run:

```shell
rscript data_operations.r
quarto render aps-dashboard.qmd
```

### Step 2: View in Browser

* Open the generated HTML file in your browser. It is the file named `index.html` at the project root.

---

## Development Workflow

### Branching

Use feature branches for development:

```shell
git checkout -b feature/your-feature-name
```

### Commit Changes

Make commits descriptive and focused:

```shell
git add .
git commit -m "Describe changes clearly"
```

### Push to Remote

Push your feature branch:

```shell
git push origin feature/your-feature-name
```

---

## Contributing

1. Fork the repository.
2. Create your feature branch.
3. Submit a Pull Request (PR) to the main repository.
4. Clearly document your changes in the PR description.

---

# Dashboard Updates

> [!NOTE]
> This section assumes that you have already completed all setup steps. If you haven't, please review **Quick Setup** or refer to the [wiki](https://github.com/brad-cannell/DETECT-RPC-APS-BL-Dashboard/wiki).

1. Open the repository locally.
2. Submit in terminal:
    1. `rscript data_operations.r`
    2. `quarto render aps-dashboard.qmd`
3. Commit and push: "DATE Dashboard Update"

Create instructions for:
- Storing locally
    - Don't use Box/Dropbox/Google Drive
- Keyring
    - Create
    - Set
    - Get
- renv
    - Set locally
    - Use locally
    - See the "Collaboration" section of https://rstudio.github.io/renv/articles/renv.html

API Keys needed:
- DETECT-RPC Tool Data
    - REDCap: https://redcap.uth.tmc.edu/index.php
    - Project: DETECT-RPC APS Reporting