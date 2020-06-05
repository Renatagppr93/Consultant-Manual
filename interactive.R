
### Trying with Eagle I.O

m <- matrix(c(8, 10,8, 5, 10, 1,
              8, 8, 9, 2, 3,  3,     
              2, 2, 10,3, 2,  4,  
              3, 5, 6, 7, 0,  6,     
              10,0, 2, 0, 10, 3,   
              4, 10,3, 3, 2,  10),                 ),
            byrow = TRUE,
            nrow = 6, ncol = 6)
contact <- c("Faculty\n Advisor", "Governance\n Officer", "Marketing\n Officer", "Mentorship\n Coordinator", "Engagement\n Officer", "Parlimentarian")
dimnames(m) <- list(plans = contact,
                    executes = contact)
m
#>             listens/executes
#> speaks       faculty governance marketing mentorship engagement parliment
#>     faculty  8         10         8           5         10         1
#> governrance  8         8          9           2         3          3
#>   marketing  2         2          10          3         2          4 
#>  mentorship  3         5          6           7         0          6     
#>   engaement  10        0          2           0         10         3
#>   parliment  4         10         3           3         2          10   

library(chorddiag)
groupColors <- c("#000000", "#FFDD89", "#957244", "#FF0000", "#8B0000", "#FF8C00")
chorddiag(m, groupColors = groupColors, groupnamePadding = 20)