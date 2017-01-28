library(igraph)
g <- read.graph('25_nodes___density_zero_point_five.gml', format = c('gml'))

netm <- get.adjacency(g, sparse = F)
colnames(netm) <- V(g)
rownames(netm) <- V(g)

palf <- colorRampPalette(c("light green", "dark green")) 
# heatmap without dendrograms
heatmap(netm[,25:1], Rowv = NA, Colv = NA, col = palf(100), 
        scale="none", margins=c(2,2) )

heatmap(netm, Rowv = NA, Colv = NA, col = palf(100), 
        scale="none", margins=c(2,2) )

deg <- degree(g, mode="all")
plot(g, vertex.size=deg*2)
