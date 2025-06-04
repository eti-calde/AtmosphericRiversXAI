library(readxl)
library(GGally)

mainDir = getwd()
setwd(mainDir)
cat("Directorio de trabajo:", mainDir, "\n")

file_path <- "Caracterizacion.xlsx"

tryCatch({
    if (!file.exists(file_path)) {
        stop(paste("Error"))
    }
    
    data <- read_excel(file_path) 
    
    print(head(data))

    print(summary(data))
    
    numeric_data <- data[, sapply(data, is.numeric)]

    ggpairs_plot <- ggpairs(
        numeric_data,
        upper = list(continuous = wrap("cor", method = "spearman", size = 3)),
        lower = list(
            continuous = wrap(
                "points",
                shape = 21,
                fill = "skyblue",
                colour = "gray60",
                size = 2,
                alpha = 0.8
            )
        ),
        diag = list(continuous = wrap("densityDiag", alpha = 0.5, fill = "skyblue"))
    )
    
    print(ggpairs_plot)
    
}, error = function(e) {
    cat("Error:\n")
    cat(e$message, "\n")
})
