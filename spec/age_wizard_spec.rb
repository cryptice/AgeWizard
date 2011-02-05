require "./lib/age_wizard"

describe "Using age_wizard" do

  it "should return correct number of years" do
    d1 = Time.utc(2009, 05, 15)
    AgeWizard::age(d1, Time.utc(2011, 07, 20)).should == 2
    AgeWizard::age(d1, Time.utc(2011, 03, 20)).should == 1
    AgeWizard::age(d1, Time.utc(2010, 04, 20)).should == 0
    AgeWizard::age(d1, Time.utc(2011, 05, 10)).should == 1
    AgeWizard::age(d1, Time.utc(2011, 05, 15)).should == 2
    AgeWizard::age(d1, Time.utc(2011, 05, 20)).should == 2
  end

end
