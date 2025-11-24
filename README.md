## Development of Emotion and Reasoning in the General Speeches of the United Nations: A text-based machine learning approach

### Author: Sarah Franzen

#### Project Overview
This GitHub repository contains the code and data for my master’s thesis. The project analyzes United Nations General Debate speeches (1946–2023) and scores them for emotion and rationality using a text-based machine learning approach. This project replicates the paper “Emotion and Reasoning in Political Language” by Gennaro and Ash (2021) using a different dataset: The United Nations General Debate Corpus (1946-2024). I utilize their dictionaries, stopwords list, and list of procedural words.

#### Runtime

- **Main Analysis:**  
  - Data creation: ~1–2 hours  
  - Model training: ~3–4 hours  
  - Figures and tables: <10 minutes  

- **Additional Analysis (optional):**  
  Running additional analyses can take up to 6 hours. This is because computationally expensive steps, such as preprocessing and sentence splitting, must be repeated with an individual stopwords list.
  
#### Technical Specifications
Operating System: Windows 11
Language: Python
Tools & Libraries: Jupyter Notebook, nltk, matplotlib, seaborn, joblib, pandas, spacy, gensim, pycountry, tqdm, tabulate, numpy, scipy, tabulate, rapidfuzz, tableone

#### Data

Speeches:
United Nations General Debate Corpus (1946–2024)
Jankin, Slava; Baturo, Alexander; Dasandi, Niheer. United Nations General Debate Corpus 1946-2024, V13. Harvard Dataverse, 2017.
DOI: 10.7910/DVN/0TJX8Y

Dictionaries for affection and cognition and Stopwords:
Gennaro, G., & Ash, E. (2021). Replication package for: Emotion and Reason in Political Language. Zenodo. https://doi.org/10.5281/zenodo.5748084

#### Folder Structure

Automatic Setup with the MAIN.py
```
.
├── notebooks/
│   ├── 0_data_creation/                       # Script for creating new variables, data cleaning, data preprocessing and word frequencies
│   ├── 1_model_training_centroids_scoring/    # Script for Word2Vec model training, calculation of centroids and scoring the speeches in emotionality
│   └── 2_figures/                             # Script for descriptive figures and result plots
│   └── 3_tables/                              # Script for summary statistics and other tables
│
├── notebooks/Additional Analysis/             # Additional Analysis with different calculation of weighted frequencies and individual stopwords
│   ├── Different Calculation Weighted Frequencies/
│   │   ├── 0_data_creation_changed_weighted_freq
│   │   ├── 1_model_training_centroids_scoring_changed_weighted_freq
│   │   └── 2_figures_changed_weighted_freq
│   ├── Individual Stopwords/
│   │   ├── 0_data_creation_ind_stopwords
│   │   ├── 1_model_training_centroids_scoring_ind_stopwords
│   │   └── 2_figures_ind_stopwords
│   └── 2_figure_comparison_emotionality_score.ipynb
└── data/
    ├── data_original/     # Raw, unmodified input data
    ├── temp/              # Temporary data files (incl. cleaned data)
    ├── freq/              # (Weighted) Word Counts
    ├── dictionaries/      # Dictionary files
    ├── stopwords/         # Stopwords from Gennaro & Ash
    ├── preprocessed/      # Preprocessed data
    ├── sentences   /      # Sentence Splits for Word Embeddings
    ├── results/           # Final scores and output results
    ├── models/            # Trained Word2Vec models
fig/                       # Figures
tables/                    # Tables
```

### Quick Start

1. Clone the repository:

git clone https://github.com/SarahFranzen/Emotions_in_the_United_Nations_General_Debates.git  
cd Emotions_in_the_United_Nations_General_Debates

3. Run the analysis:

python MAIN.py

This will execute all notebooks in the correct order automatically.
- Required packages will be installed if InstallPackages = True.
- Additional Analysis can take up to 6 hours; if you do not want it to run, set RUN_ADDITIONAL_ANALYSIS = False.
- If you do not want automatic package installation, set InstallPackages = False.

All figures, tables, and results will be saved in the corresponding folders automatically.