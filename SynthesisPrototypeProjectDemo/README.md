# SynthesisPrototypeDemo Folder - Capstone Project

This folder contains the full deliverable prototype for the Capstone Project: **Bank Bonus Churning Advisor: A Data-Driven Prototype for Optimizing Account Bonuses**.

## Project Overview

This project demonstrates the integration of Data Analytics, Data Management, Software Systems, and Cybersecurity concepts from the WTAMU MS-CISBA program. This prototype gathers active bank account bonus offers from public sources and applies a structured scoring system to recommend the most attractive offers based on a user’s personal effort preferences. Future enhancements are planned to add fund rotation optimization and automated tracking of account milestones.

The project includes:
- A fully working Jupyter/Colab notebook
- Supporting datasets

## Folder Contents

- `Bank_Bonus_Advisor_Capstone.ipynb` → Main working prototype notebook
- `DOC_Bank_Bonus_AI.csv` → Raw scraped dataset from Doctor of Credit + Gemini AI prompt-assisted structured data
- `DOC_Bank_Bonus_Cleaned.csv` → Cleaned and structured dataset ready for analysis

## API Key Notice

This prototype originally used an external API with a private API key for certain data extraction experiments. The API key and live API access have been commented out for security. The notebook works fully without the API dependency.

## Usage Instructions

1. Open `Bank_Bonus_Advisor_Capstone.ipynb` in Google Colab  
2. Run all cells to load datasets, define user profile preferences, calculate recommendations, and visualize results  
3. All datasets are pulled directly from this GitHub repository via raw URL links  
4. If you wish to use current datasets, comment out the github repositories and uncomment the local files

## Security & Data Notes

- No sensitive data or real account information is present in this repository  
- API keys were intentionally excluded prior to submission  
- This repository was temporarily set to public for academic grading and will be reverted to private after grading completion  

## Project Outcomes

This prototype delivers:
- A data-driven recommendation system for bank bonus offers  
- Customizable advisor scoring logic based on user preferences  
- Visual chart of recommended offers  
- Demonstration of data management principles  

