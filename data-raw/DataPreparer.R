##An script that prepares and saves the data into the package
# By esfahani@aices.rwth-aachen.de

HS_LUKK_Space <- readRDS(file = "./data-raw/LukkSpace.rds")
HS_U133Plus2_Space <- readRDS(file = "./data-raw/MichaelSpace.rds")

GPL96 <- read.delim("./data-raw/GPL96-57554(GPL96TableDownloadedFromGEO).txt",skip=16,head=T) #U133A
GPL570 <- read.delim("./data-raw/GPL570-55999(GPL570TableDownloadedFromGEO).txt",skip=16,head=T) #U133 plus 2

rownames(HS_LUKK_Space) <- GPL96$ENTREZ_GENE_ID[match(rownames(HS_LUKK_Space),GPL96$ID)]
#Some names are more than one Entrez, separated by " /// ", I get the first Entrez and remove others:
rownames(HS_LUKK_Space) <- gsub(x = rownames(HS_LUKK_Space), pattern = " /// .*", replacement = "")


rownames(HS_U133Plus2_Space) <- GPL570$ENTREZ_GENE_ID[match(rownames(HS_U133Plus2_Space),GPL570$ID)]
#Some rownames are empty stings: will remove them:
HS_U133Plus2_Space <- HS_U133Plus2_Space[!rownames(HS_U133Plus2_Space)=="",]
#Some names are more than one Entrez, separated by " /// ", I get the first Entrez and remove others:
rownames(HS_U133Plus2_Space) <- gsub(x = rownames(HS_U133Plus2_Space), pattern = " /// .*", replacement = "")


##Saving the data into the package:
devtools::use_data(HS_LUKK_Space, HS_U133Plus2_Space)
