# ---- box plot
ggplot(data = df_final, aes(x = season, y = hits)) + 
  geom_boxplot()

# ---- bar chart
ggplot(data = df_final, aes(x = season, y = hits)) + 
  geom_bar(stat = "identity")
