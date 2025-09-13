## Development of Emotion and Reasoning in the General Speeches of the United Nations: A text-based machine learning approach

### Author: Sarah Franzen

#### Project Overview
This GitHub repository contains the code and data for my Master’s thesis. The project analyzes UN General Debate speeches (1946–2023) and scores them for emotion and rationality using a text-based machine learning approach.

#### Technical Specifications
Operating System: Windows 11
Language: Python
Tools & Libraries: Jupyter Notebook, nltk, matplotlib, seaborn, joblib, pandas, spacy, gensim, pycountry, tqdm, tabulate, numpy, scipy, tabulate

#### Data
The speeches analyzed in this project come from the United Nations General Debate Corpus (1946–2024):
Jankin, Slava; Baturo, Alexander; Dasandi, Niheer. United Nations General Debate Corpus 1946-2024, V13. Harvard Dataverse, 2017.
https://doi.org/10.7910/DVN/0TJX8Y


#### Installation / Setup

Folder Structure: Automatic Setup once you set your working directory
```
.
├── Code/
│   ├── 0_data_creation/                       # Script for creating new variables, data cleaning, data preprocessing and word frequencies
│   ├── 1_model_training_centroids_scoring/    # Script for Word2Vec model training, calculation of centroids and scoring the speeches in emotionality
│   └── 2_figures /                            # Scripts for descriptive figures and result plots
│
└── data/
    ├── data_original/     # Raw, unmodified input data
    ├── temp/              # Temporary data files (incl. cleaned data)
    ├── freq/              # (Weighted) Word Counts
    ├── dictionaries/      # Dictionary files 
    ├── preprocessed/      # Preprocessed data
├── results/               # Final scores and output results
└── models/                # Trained Word2Vec models
```