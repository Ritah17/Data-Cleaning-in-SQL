-- Data Cleaning

SELECT *
FROM layoff_stagging2
WHERE row_num > 1;

DELETE 
FROM layoff_stagging2
WHERE row_num > 1;

SELECT *
FROM layoff_slayoff_stagging2tagging2;


-- Standardizing Data

SELECT company, TRIM(company)
FROM layoff_stagging2;

UPDATE layoff_stagging2
SET company = TRIM(company);

SELECT *
FROM layoff_stagging2
WHERE industry LIKE 'Crypto%';


UPDATE layoff_stagging2
SET industry = 'Crypto'
WHERE industry LIKE 'Crypto%';

SELECT DISTINCT company, TRIM(TRAILING '.' FROM country)
FROM layoff_stagging2
ORDER BY 1;

UPDATE layoff_stagging2
SET country = TRIM(TRAILING '.' FROM country)
WHERE country LIKE 'United States%';

SELECT date,
STR_TO_DATE(date, '%m/%d/%Y')
FROM layoff_stagging2;