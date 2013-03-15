describe User do

  before(:each) do
    @attr = { :nom => "Example User", :email => "user@example.com" }
  end

  it "devrait créer une nouvelle instance dotée des attributs valides" do
    User.create!(@attr)
  end

  it "devrait exiger un nom"
  
  it "exige un nom" do
    bad_guy = User.new(@attr.merge(:nom => ""))
    bad_guy.should_not be_valid
  end
end