# Set working directory (adjust as needed)
wd <- "C:/Users/sarah/OneDrive/Dokumente/Masterarbeit/results"
setwd(wd)

# Load CSV file
# Make sure your file path is correct
un_corpus_scored <- read.csv(
  file.path(wd, "un_corpus_scored.csv"),
  sep = ";",
  fileEncoding = "UTF-8",
  stringsAsFactors = FALSE
)

# Create folder for tables if it doesn't exist
tables_dir <- file.path(wd, "tables")
if (!dir.exists(tables_dir)) {
  dir.create(tables_dir)
}

# Preview data
head(un_corpus_scored)

# Table 1: 
library(stargazer)
position_dummies <- c("(Deputy) Minister for Foreign Affairs",
                                        "(Deputy) Prime Minister",
                                        "(Vice-) President",
                                        "Diplomatic Representative",
                                        "Others")

all_numeric_vars <- c("year", "speech_length_words", "english_official_language",
                      "security_council_permanent", "gender_dummy",
                      position_dummies)

# Select only numeric columns (including dummies)
numeric_data <- un_corpus_scored[, all_numeric_vars]

# Create LaTeX summary table
stargazer(numeric_data,
          type = "latex",
          title = "Summary Statistics for UN General Debates",
          summary = TRUE,
          digits = 3,
          out = file.path(tables_dir, "Thesis_Summary_Table.tex"))

