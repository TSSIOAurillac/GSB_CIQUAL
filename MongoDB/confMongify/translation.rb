table "Genre" do
  column "id", :key
  column "numGenre", :string
  column "nomAnGenre", :string
  column "nomFrGenre", :string
end

table "Aliment" do
  column "numAliment", :key
  column "nomFrAliment", :string
  column "nomAnAliment", :string
  column "numGenre", :s, :references => :Genre
end

table "Constituant" do
  column "numConst", :key
  column "origineFrConst", :string
  column "origineAnConst", :string
end

table "CompNutri" do
  column "id", :key
  column "numAliment", :integer, :references => :Aliment
  column "numConst", :integer, :references => :Constituant
  column "valNutri", :string
  column "valMinNutri", :double
  column "valMaxNutri", :double
  column "nbEchantNutri", :double
  column "ccEurNutri", :string
end
