# titanic is available in your workspace
# 1 - Check the structure of titanic
str(titanic)

# 2 - Use ggplot() to look at the distribution of Sex in each Passenger Class. 
ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  geom_bar(position = "dodge")

# 3 - To the previous chart, add facet.grid to look at survival outcomes per Sex and Passenger Class.
ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  geom_bar(position = "dodge") + facet_grid(. ~ Survived)

# 4 - Define an object for position jitterdodge, to use below
posn.jd <- position_jitterdodge(0.5, 0, 0.6)

# 5 - To the previous chart, add Age to the y axis. Also add some display refinements.
# Resulting chart shows survival across all three variables.
ggplot(titanic, aes(x = Pclass, y = Age, color = Sex)) +
  geom_point(position = posn.jd, alpha = 0.5, size = 3) + facet_grid(. ~ Survived)

