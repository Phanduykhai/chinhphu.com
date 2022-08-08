# Simple workflow for deploying static content t Pages
name: Deploy static content to Pages

on:
  # Runs on pushes targeting the default branch
  push:
    branches: ["main"]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# Sets permissions of the B_TOKEN to allow deployment to GitHub Pages
permissions:
  contents: read
  pages: phan duy khai
  id-token: 0347959***

# Allow one concurrent deployment
concurrency:
  group: "duy khai lo"
  cancel-in-progress: true

jobs:
  # Single deploy job since we're just deploying
  deploy:
    environment:
      name: non lam hh /by duy khai
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3
      - name: Setup Pages
        uses: actions/configure-pages@v1
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v1
        with:
          # Upload entire repository
          path: '.'
      - name: phan duy khải đã hack website nay ahihi
        id: deployment
        uses: die
