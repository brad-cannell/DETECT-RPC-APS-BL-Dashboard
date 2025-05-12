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

* Download and install R 4.5 from [CRAN](https://cran.r-project.org/)

### Step 2: Install RStudio

* Download and install the latest version from [RStudio](https://posit.co/download/rstudio-desktop/)

### Step 3: Install Quarto

* Download and install Quarto 1.7.\* from [Quarto](https://quarto.org/docs/get-started/)

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

### Step 2: Open in RStudio

* Open RStudio and navigate to `File > Open Project...`
* Select `DETECT-RPC-APS-BL-Dashboard.Rproj`

### Step 3: Install Project Dependencies

In RStudio console:

```r
install.packages('renv')
renv::restore()
```

---

## Building the Dashboard

### Step 1: Render the Dashboard

In RStudio, navigate to the project root and run:

```shell
quarto render
```

### Step 2: View in Browser

* Open the generated HTML file in your browser. It is the file named
`index.html` at the project root.

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

