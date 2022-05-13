# [Bookshelf] from [Book][+1]
craft.remake(<minecraft:bookshelf>, ["pretty",
  "# # #",
  "E E E",
  "# # #"], {
  "#": <ore:plankWood>,                      # Oak Wood Planks
  "E": <ore:bookEmpty>,                      # Book
});

# enderio glass recipe removal
recipes.removeByRecipeName("enderio:compatibility_glass_pane");
