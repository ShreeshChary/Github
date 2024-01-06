install.packages("igraph")
library(igraph)

usa_export_data <- c(
  "Afghanistan", "African Union", "Albania", "Algeria", "Angola", "Argentina", "Australia", 
  "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Belgium", "Bolivia", 
  "Bosnia-Herzegovina", "Botswana", "Brazil", "Brunei", "Bulgaria", "Burkina Faso", 
  "Burundi", "Cameroon", "Canada", "Central African Republic", "Chad", "Chile", "Colombia", 
  "Congo", "Costa Rica", "Croatia", "Czechia", "Denmark", "Djibouti", "Dominican Republic", 
  "DR Congo", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Estonia", "Ethiopia", 
  "Finland", "France", "Gabon", "Georgia", "Germany", "Ghana", "Greece", "Guatemala", 
  "Honduras", "Hungary", "India", "Indonesia", "Iraq", "Ireland", "Israel", "Italy", 
  "Jamaica", "Japan", "Jordan", "Kazakhstan", "Kenya", "Kosovo", "Kuwait", "Latvia", 
  "Lebanon", "Libya", "Libya GNC", "Libya HOR", "Lithuania", "Luxembourg", "Malaysia", 
  "Malta", "Mauritania", "Mexico", "Montenegro", "Morocco", "Namibia", "NATO", "Nepal", 
  "Netherlands", "New Zealand", "Niger", "Nigeria", "North Macedonia", "Norway", "Oman", 
  "Pakistan", "Panama", "Paraguay", "Peru", "Philippines", "Poland", "Portugal", "Qatar", 
  "Romania", "Saudi Arabia", "Senegal", "Serbia", "Singapore", "Slovakia", "Slovenia", 
  "Somalia", "South Africa", "South Korea", "South Sudan", "Spain", "Sri Lanka", "Sweden", 
  "Switzerland", "Taiwan", "Thailand", "Trinidad and Tobago", "Tunisia", 
  "Turkiye", "Turkmenistan", "UAE", "Uganda", "Ukraine", "United Kingdom", "Uzbekistan", "Venezuela", "Viet Nam", "Yemen", "Zambia"
)

russia_export_data <- c(
  "Afghanistan", "Algeria", "Angola", "Argentina", "Armenia", "Azerbaijan", "Bahrain", 
  "Bangladesh", "Belarus", "Brazil", "Burkina Faso", "Cameroon", "Chad", "China", "Colombia", 
  "Congo", "Cote d'Ivoire", "Croatia", "Cuba", "Cyprus", "Czechia", "Djibouti", "DR Congo", 
  "Ecuador", "Egypt", "Equatorial Guinea", "Eritrea", "Ethiopia", "Ghana", "Greece", "Guinea", 
  "Hungary", "India", "Indonesia", "Iran", "Iraq", "Jordan", "Kazakhstan", "Kenya", "Kuwait", 
  "Kyrgyzstan", "Laos", "Latvia", "Libya", "Malaysia", "Mali", "Mexico", "Mongolia", "Morocco", 
  "Mozambique", "Myanmar", "NATO", "Nepal", "Nicaragua", "Niger", "Nigeria", 
  "Northern Alliance", "North Korea", "Pakistan", "Palestine", "Peru", "Poland", 
  "Qatar", "Romania", "Rwanda", "Saudi Arabia", "Senegal", "Serbia", "Slovakia", "Slovenia", 
  "South Africa", "South Korea", "South Sudan", "Sri Lanka", "Sudan", "Syria", "Tajikistan", 
  "Thailand", "Turkiye", "Turkmenistan", "UAE", "Uganda", "United Kingdom", 
  "United Nations", "United States", "Uruguay", "Uzbekistan", "Venezuela", "Viet Nam", 
  "Yemen", "Zambia"
)

uk_export_data <- c("Afghanistan", "Algeria", "Angola", "Australia", "Austria", "Bahrain", "Bangladesh", "Belgium", "Belize", "Bolivia", "Brazil", "Canada", "Chile", "China", "Colombia", "Congo", "Cote d'Ivoire", "Czechia", "Denmark", "Ecuador", "Estonia", "Finland", "France", "Germany", "Ghana", "Greece", "Guyana", "India", "Indonesia", "Iraq", "Ireland", "Italy", "Japan", "Jordan", "Kuwait", "Latvia", "Lithuania", "Malawi", "Malaysia", "Malta", "Mauritania", "Morocco", "Mozambique", "Nepal", "Netherlands", "New Zealand", "Norway", "Oman", "Pakistan", "Peru", "Philippines", "Poland", "Qatar", "Romania", "Rwanda", "Saudi Arabia", "Singapore", "Somalia", "South Africa", "South Korea", "Spain", "Sri Lanka", "Sweden", "Switzerland", "Tanzania", "Thailand", "Trinidad and Tobago", "Turkiye", "UAE", "Ukraine", "United States", "Uruguay", "Venezuela")
spain_export_data <- c("Algeria", "Argentina", "Australia", "Austria", "Azerbaijan", "Bangladesh", "Bolivia", "Botswana", "Brazil", "Cabo Verde", "Cameroon", "Canada", "Chile", "Colombia", "Cote d'Ivoire", "Czechia", "Dominican Republic", "Ecuador", "Egypt", "El Salvador", "Finland", "France", "Ghana", "Guatemala", "Indonesia", "Iraq", "Jordan", "Kazakhstan", "Kenya", "Lesotho", "Malaysia", "Mali", "Mauritania", "Mexico", "Mozambique", "NATO", "Nicaragua", "Norway", "Oman", "Pakistan", "Paraguay", "Philippines", "Poland", "Portugal", "Romania", "Rwanda", "Saudi Arabia", "Senegal", "Thailand", "Turkiye", "UAE", "United Kingdom", "United States", "Uruguay", "Uzbekistan", "Venezuela", "Viet Nam", "Yemen")
germany_export_data <- c("Albania", "Algeria", "Argentina", "Australia", "Austria", "Bangladesh", "Belgium", "Bolivia", "Brazil", "Brunei", "Canada", "Chile", "China", "Colombia", "Croatia", "Czechia", "Denmark", "Egypt", "Estonia", "Finland", "France", "Gabon", "Ghana", "Greece", "Hungary", "India", "Indonesia", "Iraq", "Ireland", "Israel", "Italy", "Japan", "Jordan", "Kazakhstan", "Kenya", "Kuwait", "Latvia", "Lebanon", "Lesotho", "Lithuania", "Luxembourg", "Malaysia", "Mauritania", "Mexico", "Morocco", "Mozambique", "Myanmar", "NATO", "Netherlands", "New Zealand", "Nigeria", "North Macedonia", "Norway", "Oman", "Pakistan", "Panama", "Peru", "Philippines", "Poland", "Portugal", "Qatar", "Romania", "Russia", "Saudi Arabia", "Serbia", "Singapore", "Slovenia", "South Africa", "South Korea", "Spain", "Suriname", "Sweden", "Switzerland", "Taiwan", "Thailand", "Tunisia", "Turkiye", "Turkmenistan", "UAE", "Uganda", "United Kingdom", "United States", "Uruguay", "Venezuela", "Viet Nam")
france_export_data <- c("Albania", "Algeria", "Angola", "Argentina", "Australia", "Bahrain", "Bangladesh", "Belgium", "Benin", "Bhutan", "Bolivia", "Botswana", "Brazil", "Brunei", "Bulgaria", "Burkina Faso", "Cameroon", "Canada", "Chad", "Chile", "China", "Colombia", "Cote d'Ivoire", "Cyprus", "Denmark", "Djibouti", "Ecuador", "Egypt", "Estonia", "Ethiopia", "Finland", "Gabon", "Georgia", "Germany", "Ghana", "Greece", "Guinea", "Hungary", "India", "Indonesia", "Iraq", "Ireland", "Italy", "Japan", "Jordan", "Kazakhstan", "Kenya", "Kuwait", "Laos", "Lebanon", "Lesotho", "Libya", "Lithuania", "Malaysia", "Mali", "Mauritania", "Mexico", "Morocco", "Mozambique", "Myanmar", "Nepal", "Netherlands", "New Zealand", "Niger", "Nigeria", "Norway", "Oman", "Pakistan", "Peru", "Philippines", "Poland", "Portugal", "Qatar", "Romania", "Russia", "Saudi Arabia", "Senegal", "Singapore", "Slovenia", "Somalia", "South Africa", "South Korea", "Spain", "Sri Lanka", "Suriname", "Sweden", "Switzerland", "Taiwan", "Tanzania", "Thailand", "Togo", "Tunisia", "Turkiye", "Turkmenistan", "UAE", "Uganda", "Ukraine", "United Kingdom", "United States", "Uruguay", "Uzbekistan", "Venezuela", "Viet Nam")
netherlands_export_data <- c("Algeria", "Angola", "Argentina", "Australia", "Bahamas", "Bangladesh", "Barbados", "Belgium", "Brunei", "Cabo Verde", "Canada", "Chile", "Colombia", "Denmark", "Ecuador", "Egypt", "Estonia", "Finland", "France", "Germany", "Greece", "Honduras", "India", "Indonesia", "Ireland", "Italy", "Jamaica", "Jordan", "Latvia", "Libya HOR", "Malaysia", "Mexico", "Morocco", "Myanmar", "New Zealand", "Nicaragua", "Norway", "Oman", "Peru", "Philippines", "Poland", "Portugal", "Romania", "Saudi Arabia", "Singapore", "South Africa", "South Korea", "Sweden", "Tanzania", "Thailand", "Trinidad and Tobago", "Tunisia", "Turkiye", "Turkmenistan", "UAE", "United Kingdom", "United States", "Uruguay", "Venezuela")
italy_export_data <- c("Afghanistan", "Albania", "Algeria", "Angola", "Argentina", "Australia", "Austria", "Bahamas", "Bahrain", "Bangladesh", "Belgium", "Botswana", "Brazil", "Bulgaria", "Burkina Faso", "Cambodia", "Canada", "Chad", "Chile", "Colombia", "Croatia", "Cyprus", "Czechia", "Djibouti", "Ecuador", "Egypt", "Eritrea", "Finland", "France", "Germany", "Greece", "Hungary", "India", "Indonesia", "Iraq", "Ireland", "Israel", "Italy", "Japan", "Jordan", "Kenya", "Kuwait", "Latvia", "Lebanon", "Libya", "Lithuania", "Malaysia", "Malta", "Mauritania", "Mexico", "Morocco", "Namibia", "Nepal", "Netherlands", "New Zealand", "Nigeria", "Norway", "Oman", "Pakistan", "Panama", "Peru", "Philippines", "Poland", "Portugal", "Qatar", "Romania", "Russia", "Saudi Arabia", "Singapore", "Slovakia", "Somalia", "South Africa", "South Korea", "Spain", "Sweden", "Taiwan", "Tanzania", "Thailand", "Tunisia", "Turkiye", "Turkmenistan", "UAE", "United Kingdom", "United Nations", "United States", "Uruguay", "Venezuela", "Yemen", "Zambia")
china_export_data <- c("Afghanistan", "Algeria", "Angola", "Argentina", "Bahamas", "Bahrain", "Bangladesh", "Belarus", "Benin", "Bolivia", "Burundi", "Cambodia", "Cameroon", "Central African Republic", "Chad", "Congo", "Cote d'Ivoire", "Djibouti", "DR Congo", "Ecuador", "Egypt", "Equatorial Guinea", "Ethiopia", "Gabon", "Ghana", "Guinea", "Guyana", "Indonesia", "Iran", "Iraq", "Jordan", "Kazakhstan", "Kenya", "Kuwait", "Kyrgyzstan", "Laos", "Malaysia", "Mali", "Mauritania", "Mexico", "Morocco", "Mozambique", "Myanmar", "NATO", "Nepal", "Nicaragua", "Niger", "Nigeria", "Oman", "Pakistan", "Papua New Guinea", "Peru", "Qatar", "Russia", "Rwanda", "Saudi Arabia", "Senegal", "Seychelles", "Sierra Leone", "Slovakia", "Somalia", "South Sudan", "Sri Lanka", "Sudan", "Syria", "Tajikistan", "Tanzania", "Thailand", "Timor-Leste", "Trinidad and Tobago", "Turkiye", "Turkmenistan", "UAE", "Uganda", "Uzbekistan", "Venezuela", "Zambia", "Zimbabwe")
israel_export_data <- c("African Union", "Angola", "Argentina", "Australia", "Austria", "Azerbaijan", "Belgium", "Brazil", "Bulgaria", "Cameroon", "Canada", "Chad", "Chile", "China", "Colombia", "Cote d'Ivoire", "Croatia", "Cyprus", "Czechia", "Denmark", "Dominican Republic", "Ecuador", "El Salvador", "Equatorial Guinea", "Ethiopia", "Finland", "France", "Georgia", "Germany", "Ghana", "Greece", "Guinea", "Honduras", "Hungary", "India", "Indonesia", "Italy", "Jordan", "Kazakhstan", "Latvia", "Lesotho", "Lithuania", "Mauritius", "Mexico", "Morocco", "Myanmar", "Netherlands", "New Zealand", "Nigeria", "Paraguay", "Peru", "Philippines", "Poland", "Portugal", "Romania", "Russia", "Rwanda", "Senegal", "Seychelles", "Singapore", "Slovenia", "South Africa", "South Korea", "Spain", "Sri Lanka", "Sweden", "Switzerland", "Taiwan", "Thailand", "Turkiye", "Uganda", "United Kingdom", "United Nations", "United States", "Venezuela", "Viet Nam", "Zambia")

install.packages("networkD3")
install.packages("networkD3")
library(networkD3)
# Create a data frame for each country's export data
usa_data <- data.frame(from = rep("United States", length(usa_export_data)), to = usa_export_data)
russia_data <- data.frame(from = rep("Russia", length(russia_export_data)), to = russia_export_data)
uk_data <- data.frame(from = rep("United Kingdom", length(uk_export_data)), to = uk_export_data)
spain_data <- data.frame(from = rep("Spain", length(spain_export_data)), to = spain_export_data)
germany_data <- data.frame(from = rep("Germany", length(germany_export_data)), to = germany_export_data)
france_data <- data.frame(from = rep("France", length(france_export_data)), to = france_export_data)
netherlands_data <- data.frame(from = rep("Netherlands", length(netherlands_export_data)), to = netherlands_export_data)
italy_data <- data.frame(from = rep("Italy", length(italy_export_data)), to = italy_export_data)
china_data <- data.frame(from = rep("China", length(china_export_data)), to = china_export_data)
israel_data <- data.frame(from = rep("Israel", length(israel_export_data)), to = israel_export_data)

# Combine all data frames into one
all_data <- rbind(usa_data, russia_data, uk_data, spain_data, germany_data, france_data, netherlands_data, italy_data, china_data, israel_data)

# Extract unique nodes
all_nodes <- unique(c(all_data$from, all_data$to))

# Create a data frame for nodes
nodes <- data.frame(name = all_nodes, group = rep(1, length(all_nodes)))  # Add a 'group' column

# Create a network graph
trade_network <- forceNetwork(Links = all_data, Nodes = nodes, Source = "from", Target = "to", NodeID = "name",
                              Group = "group",  # Specify the 'group' column
                              opacity = 0.9, linkDistance = 100, charge = -150)

exporting_countries <- unique(all_data$from)


install.packages("igraph")
library(igraph)


# Create a graph object
trade_graph <- graph_from_data_frame(all_data, directed = TRUE)

# Identify exporting countries
exporting_countries <- unique(all_data$from)

V(trade_graph)$exporter <- ifelse(V(trade_graph)$name %in% exporting_countries, "exporter", "importer")

# Use Fruchterman-Reingold layout with more iterations
fr_layout <- layout_with_fr(trade_graph, niter = 500)

# Set up a larger canvas
par(mar = c(1, 1, 1, 1), cex = 1)  # Adjust margin and overall size

# Plot the graph with customized parameters
plot(
  trade_graph,
  layout = fr_layout,
  edge.arrow.size = 0.1,
  edge.arrow.width = 0.5,
  vertex.size = ifelse(V(trade_graph)$exporter == "exporter", 3, 1),  # Bigger size for exporting countries
  vertex.label.dist = ifelse(V(trade_graph)$exporter == "exporter", 0.6, 0.5),  # Adjust label distance for exporting countries
  vertex.label.color = ifelse(V(trade_graph)$exporter == "exporter", "black", "blue"),  # Label color for exporting countries
  vertex.label.cex = ifelse(V(trade_graph)$exporter == "exporter", 1, 0.6),  # Increase label size for exporting countries
  vertex.label.font = ifelse(V(trade_graph)$exporter == "exporter", 9, 1),  # Bold font for exporting countries
  vertex.shape = ifelse(V(trade_graph)$exporter == "exporter", "square", "circle"),
  edge.curved = 0.2,      # Adjust the curvature of arrows
  edge.alpha = 0.5        # Set transparency of arrows
)


# Plot the graph with customized parameters
plot(
  trade_graph,
  layout = kk_layout,
  edge.arrow.size = 0.2,
  edge.arrow.width = 0.1,
  vertex.label.cex = 0.6,  # Increase label size for better visibility
  vertex.size = 2,       # Increase node size
  vertex.color = ifelse(V(trade_graph)$exporter == "exporter", "red", "blue"),
  vertex.shape = ifelse(V(trade_graph)$exporter == "exporter", "square", "circle"),
  edge.curved = 0.2       # Adjust the curvature of arrows
)
plot(
  trade_graph,
  layout = kk_layout,
  edge.arrow.size = 0.1,
  edge.arrow.width = 0.5,
  vertex.label.cex = 0.6,  # Increase label size for better visibility
  vertex.size = 1.3,       # Increase node size
  vertex.color = ifelse(V(trade_graph)$exporter == "exporter", "red", "blue"),
  vertex.shape = ifelse(V(trade_graph)$exporter == "exporter", "square", "circle"),
  edge.curved = 0.2,      # Adjust the curvature of arrows
  edge.alpha = 0.8       # Set transparency of arrows
)

plot(
  trade_graph,
  layout = kk_layout,
  edge.arrow.size = 0.1,
  edge.arrow.width = 0.5,
  vertex.label.cex = 1,  # Increase label size for better visibility
  vertex.size = ifelse(V(trade_graph)$exporter == "exporter", 5,2),  # Bigger size for exporting countries
  vertex.label.dist = ifelse(V(trade_graph)$exporter == "exporter", 1, 1),  # Adjust label distance for exporting countries
  vertex.label.cex = ifelse(V(trade_graph)$exporter == "exporter", 2, 0.1),  # Increase label size for exporting countri
  vertex.label.color = ifelse(V(trade_graph)$exporter == "exporter", "black", "blue"),  # Label color for exporting countries
  vertex.label.font = ifelse(V(trade_graph)$exporter == "exporter", 2, 1),  # Bold font for exporting countries
  vertex.shape = ifelse(V(trade_graph)$exporter == "exporter", "square", "circle"),
  edge.curved = 0.2,      # Adjust the curvature of arrows
  edge.alpha = 0.5        # Set transparency of arrows
)
