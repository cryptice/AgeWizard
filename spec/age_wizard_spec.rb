require "./lib/age_wizard"

describe "Using age_wizard" do

  it "should return correct age in years" do
    d1 = Time.utc(2007, 05, 15)
    AgeWizard::age(d1, Time.utc(2011, 07, 20)).should == 4
    AgeWizard::age(d1, Time.utc(2011, 03, 20)).should == 3
    AgeWizard::age(d1, Time.utc(2008, 04, 20)).should == 0
    AgeWizard::age(d1, Time.utc(2011, 05, 10)).should == 3
    AgeWizard::age(d1, Time.utc(2011, 05, 15)).should == 4
    AgeWizard::age(d1, Time.utc(2011, 05, 20)).should == 4
  end

  it "should return correct age in months" do
    d1 = Time.utc(2009, 05, 15)
    AgeWizard::age(d1, Time.utc(2010, 05, 14), :months).should == 11
    AgeWizard::age(d1, Time.utc(2010, 05, 15), :months).should == 12
    AgeWizard::age(d1, Time.utc(2009, 06, 14), :months).should == 0
    AgeWizard::age(d1, Time.utc(2009, 06, 15), :months).should == 1
    AgeWizard::age(d1, Time.utc(2009, 06, 20), :months).should == 1
    AgeWizard::age(d1, Time.utc(2009, 10, 20), :months).should == 5
    AgeWizard::age(d1, Time.utc(2013, 10, 20), :months).should == 53
  end

  it "should return correct age in days" do
    d1 = Time.utc(2009, 05, 15)
    AgeWizard::age(d1, Time.utc(2009, 05, 17), :days).should == 2
    AgeWizard::age(d1, Time.utc(2009, 06, 17), :days).should == 33
    AgeWizard::age(d1, Time.utc(2010, 05, 15), :days).should == 365
    AgeWizard::age(d1, Time.utc(2012, 05, 15), :days).should == 3*365 + 1 # Leap year
  end

  it "should handle calculating from february 29" do
    d1 = Time.utc(2008, 02, 29)
    AgeWizard::age(d1, Time.utc(2008, 03, 28), :months).should == 0
    AgeWizard::age(d1, Time.utc(2008, 03, 29), :months).should == 1
    AgeWizard::age(d1, Time.utc(2008, 04, 15), :months).should == 1
    AgeWizard::age(d1, Time.utc(2009, 02, 28), :years ).should == 0
    AgeWizard::age(d1, Time.utc(2009, 02, 28), :months).should == 11
    AgeWizard::age(d1, Time.utc(2009, 03, 01), :years ).should == 1
    AgeWizard::age(d1, Time.utc(2009, 02, 29), :months).should == 12
    AgeWizard::age(d1, Time.utc(2009, 03, 01), :months).should == 12
    AgeWizard::age(d1, Time.utc(2009, 03, 28), :months).should == 12
    AgeWizard::age(d1, Time.utc(2009, 03, 29), :months).should == 13
    AgeWizard::age(d1, Time.utc(2008, 03, 29), :days  ).should == 29
  end
end
