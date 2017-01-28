library(igraph)
g <- read.graph('barab.gml', format = c("gml"))
# view edges
E(g)
# view vertices
V(g)
# 2d network plots
plot(g)
plot(g, edge.arrow.size=.4,vertex.label=NA)
plot(g, edge.arrow.size=.4)

# create matrix from igraph object
netm <- get.adjacency(g, sparse = F)
colnames(netm) <- V(g)
rownames(netm) <- V(g)

palf <- colorRampPalette(c("light green", "dark green")) 
# heatmap without dendrograms
heatmap(netm[,25:1], Rowv = NA, Colv = NA, col = palf(100), 
        scale="none", margins=c(2,2) )
# add dendrograms to heatmap
heatmap(netm[,25:1], col = palf(100), 
        scale="none", margins=c(2,2) )
