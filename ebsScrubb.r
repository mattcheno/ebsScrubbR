#============================================================ BOILERPLATE =====
#
#  EBS data scrubber
#  Matthew Chenoweth
#  2016/12/08
#


#---------------------------------------------------------------- Outline -----
# 1. Declarations
# 2. 

#----------------------------------------------------------- Declarations -----
start_time <- Sys.time()
data_path <- "C:/Users/mchenoweth/Dropbox/03_R/ebsR"
ebs_files <- c("inData01.csv", "inData03.csv", "inData03.csv")
ebs_cols <- c("Index", "WieseID", "WorkOrder", "OrderDate", "Manufacturer", 
               "Model", "UnitType", "Class", "Subclass", "EquipYear", 
               "Branch", "Segment", "OrderType", "SerialNumber", "Meter", 
               "Labor", "Parts", "Misc", "Total")
ebs_classes <- c(
  NA,     #Index
  NA,     #WieseID
  NA,     #WorkOrder
  "Date",     #OrderDate
  NA,     #Manufacturer
  NA,     #Model
  NA,     #UnitType
  NA,     #Class
  NA,     #Subclass
  NA,     #EquipYear
  "factor",     #Branch
  "factor",     #Segment
  NA,     #OrderType
  NA,     #SerialNumber
  NA,     #Meter
  NA,     #Labor
  NA,     #Parts
  NA,     #Misc
  NA     #Total
)

#------------------------------------------------------------------Logic ------
inData01 <- read.delim(  # See Note 001
  file = paste(data_path, ebs_files[1], sep = "/"),
  header = TRUE,
  sep = ",",
  numerals = "warn.loss",
  col.names = ebs_cols,
  colClasses = ebs_classes#<<--
)#<<<<<-----


#============================================================== FOOTNOTES =====
#     Note 001
# Reference - http://stackoverflow.com/q/26086389
#============================================================ END OF CODE =====