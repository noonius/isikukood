require File.expand_path('../teststrap', __FILE__)

context "Isikukood" do
  context "Valid code for male" do
    
    setup {
      Isikukood.new('37605030299')
    }
    
    asserts(:valid?)
    asserts(:age).equals(38)
    asserts(:sex).equals('M')
    asserts(:birthday).equals('1976-05-03')
  end
  
  context "Valid code for female" do
    
    setup {
      Isikukood.new('60012240290')
    }
    
    asserts(:valid?)
    asserts(:age).equals(13)
    asserts(:sex).equals('F')
    asserts(:birthday).equals('2000-12-24')
  end
  
  context "Valid age for person born before 1969" do
    
    setup {
      Isikukood.new('46708222728')
    }
    
    asserts(:age).equals(46)
    asserts(:birthday).equals('1967-08-22')
  end
  
  context "Invalid code" do
    
    setup {
      Isikukood.new('60013240294')
    }
    
    denies(:valid?)
    asserts(:age).equals(nil)
    asserts(:sex).equals(nil)
    asserts(:birthday).equals(nil)
  end
end
