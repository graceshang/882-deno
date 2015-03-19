# Script to get started with Christenson network data.
# Install and load the 'foreign' package for R.
library('foreign')
# Read in the STATA file
getwd()
rawdata <- read.dta("Dropbox/ma consultants/civrightsnetwork_updated3_statav12.dta")
# Attach data, so as not to have to write name repeatedly.
# Only need to do this once.
attach(rawdata)
# Install and load the 'igraph' package for R.
library("igraph")
# Create an edge-list, with each row indicating from-to
# for a directed edge (i.e., precedent to opinion)
el <- cbind(as.character(opin_id),as.character(precID))
g <- graph.edgelist(el,directed=TRUE) 

# Plot the graph.
plot(g,vertex.size=3,vertex.label=NA,edge.arrow.size=0.3)

# For completeness, detach data when finished.
detach(rawdata)

attach(rawdata)
View(rawdata)
table(opin_id)
length(table(opin_id))
length(table(precID))
unique(rawdata["casename"])


