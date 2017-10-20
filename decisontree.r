# Load the party package. It will automatically load other dependent packages.
library(party)

# Create the input data frame.
input.dat <- readingSkills[c(1:155),]
print(head(readingSkills))
# Give the chart file a name.
jpeg(file = "decision_tree1.jpeg")

# Create the tree.
output.tree <- ctree(
  nativeSpeaker ~ age + shoeSize + score, 
  data = input.dat)
# Plot the tree.
plot(output.tree)

# Save the file.
dev.off()
