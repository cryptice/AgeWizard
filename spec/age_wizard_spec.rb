require "./lib/age_wizard"

describe "Using age_wizard" do

  it "should return correct age in years" do
    d1 = Time.utc(2009, 05, 15)
    AgeWizard::age(d1, Time.utc(2011, 07, 20)).should == 2
    AgeWizard::age(d1, Time.utc(2011, 03, 20)).should == 1
    AgeWizard::age(d1, Time.utc(2010, 04, 20)).should == 0
    AgeWizard::age(d1, Time.utc(2011, 05, 10)).should == 1
    AgeWizard::age(d1, Time.utc(2011, 05, 15)).should == 2
    AgeWizard::age(d1, Time.utc(2011, 05, 20)).should == 2
  end

  it "should return correct age in months" do
    d1 = Time.utc(2009, 05, 15)
    AgeWizard::age(d1, Time.utc(2009, 06, 14), :months).should == 0
    AgeWizard::age(d1, Time.utc(2009, 06, 15), :months).should == 1
    AgeWizard::age(d1, Time.utc(2009, 06, 20), :months).should == 1
    AgeWizard::age(d1, Time.utc(2009, 10, 20), :months).should == 5
    AgeWizard::age(d1, Time.utc(2013, 10, 20), :months).should == 53
  end

end
