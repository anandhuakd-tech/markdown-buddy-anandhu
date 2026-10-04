# Inventory Analysis Using R

## AI Assistance Declaration

AI Assistance Declaration: I used ChatGPT (GPT-5.6 Sol, OpenAI, October 2026) for documentation structure, Markdown formatting suggestions, writing assistance, and review. Prompts used are documented in the AI Assistance Disclosure section. I manually reviewed the generated content and verified it against my R project. All final calculations are done by myself. I am responsible for the accuracy and originality of this work.

## Overview

This project demonstrates a simple inventory analysis using R and a synthetic dataset. The purpose of the project is to analyze inventory quantities, identify products that need to be reordered, calculate inventory values, and summarize inventory information by category.

All data used in this project is synthetic and created for educational purposes.

## Project Objectives

- Create and analyze a synthetic inventory dataset in R.
- Calculate inventory value for each product.
- Identify products below their reorder levels.
- Summarize inventory quantities by category.
- Document an R script using R Markdown.
- Practice professional Markdown documentation for GitHub.

## Project Structure

- `README.md` – Project overview and instructions.
- `inventory_analysis.R` – R script used for the inventory analysis.
- `inventory_documentation.Rmd` – R Markdown documentation for the script.
- `Reflection.md` – Reflection on AI use and verification.

## Dataset

The synthetic inventory dataset contains the following variables:

| Variable | Description |
|---|---|
| Product_ID | Unique identifier for each product |
| Product_Name | Name of the product |
| Category | Product category |
| Quantity | Current quantity available |
| Reorder_Level | Minimum desired inventory level |
| Unit_Price | Price per unit |

The dataset contains products from three categories:

- Electronics
- Furniture
- Office Supplies

## Installation

This project requires R.

No additional R packages are required because the analysis uses base R functions.

To run the project:

1. Download or clone this repository.
2. Open the project in RStudio or Posit Cloud.
3. Open `inventory_analysis.R`.
4. Run the R script.

## Example Code

Inventory value is calculated by multiplying quantity by unit price:

```r
inventory$Inventory_Value <-
  inventory$Quantity * inventory$Unit_Price
```

Products below their reorder levels are identified using:

```r
low_stock <- inventory[
  inventory$Quantity < inventory$Reorder_Level,
]
```

Inventory quantity is summarized by category using:

```r
category_summary <- aggregate(
  Quantity ~ Category,
  data = inventory,
  FUN = sum
)
```

## Expected Results

The analysis produces:

- Inventory value for each product.
- Total inventory value.
- Products below their reorder levels.
- Total inventory quantity by category.

The expected low-stock products are:

- Keyboard
- Desk
- Pens
- Monitor

The expected total inventory value is **$28,656**.

## Verification

The project is verified by:

1. Running the R script and checking the output.
2. Manually checking selected inventory calculations.
3. Comparing product quantities with reorder levels.
4. Previewing this README on GitHub.
5. Knitting or previewing the R Markdown document.

For example:

- Laptop: `25 × $850 = $21,250`
- Keyboard: Quantity `8` is below Reorder Level `15`.

## License

This project was created for educational purposes as part of BDA400 – Data Science Tools and Techniques.

## AI Assistance Disclosure

ChatGPT (GPT-5.6 Sol, OpenAI, October 2026) was used to assist with documentation structure, Markdown formatting, writing, and review.

### Main Prompts Used

**Seed Prompt:**

> Explain what sections a good GitHub README for an R data analysis project should include.

**Refinement Prompt:**

> Revise the sections list so it’s concise and uses Markdown headers and bullet formatting.

**Critique/Validation Prompt:**

> Check the Markdown syntax for correctness and readability.

**README Prompt:**

> Here’s a summary of my R project: The project analyzes a synthetic inventory dataset using R. It calculates inventory values, identifies low-stock products, and summarizes inventory by category. Generate a professional README.md file using Markdown.

**README Refinement Prompt:**

> Add sections for Installation, Example Code, and License. Keep tone concise and professional.

**README Validation Prompt:**

> Review the Markdown for syntax errors and suggest 2 improvements for clarity.

### Changes Made After Review

After reviewing the AI-assisted draft:

- I checked the Markdown structure for consistency.
- I verified the code examples against the R script.
- I clarified the descriptions of the dataset variables.
- I added manual verification examples.
- I confirmed that only synthetic data was used.
