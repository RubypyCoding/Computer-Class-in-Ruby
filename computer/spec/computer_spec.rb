require 'computer'

describe Computer do
	let(:computer_1) { Computer.new("Mac", "MacBook Air", "Intel")}

	describe "#initialize" do
	  context "Computer is created" do
		subject { Computer.new("Mac", "MacBook Air", "Intel") }

		it(:mark) { should_not be_nil}
		it(:type)  { should_not be_nil}
		it(:processor){ should_not be_nil}

		it "creates a new Computer" do
		  expect(computer_1). to be_an_instance_of Computer
		end
	  end
	end

	describe "#mark" do
      context "#mark is evaluated out of class" do
        it "#mark as getter" do
          expect(computer_1.mark).to eq("Mac")
        end
        it  "#mark as setter" do
      	  expect{computer_1.mark = "Dell"}.to raise_error(NoMethodError)
        end
      end
    end

    describe "#processor" do
  	  context "#processor is evaluated out of class" do
  	    it "#processor as getter" do
  	  	  expect(computer_1.processor).to eq("Intel")
  	    end
  	    it "#processor as setter" do
  	  	  expect{computer_1.processor = "Intel Core"}.not_to raise_error
  	    end
  	    it "#processor as setter and getter" do
  	  	  computer_1.processor = "Intel Core"
  	  	  expect(computer_1.processor).to eq("Intel Core")
  	    end
  	  end
    end

    describe "#type" do
  	  context "#type is evaluated out of class" do
  	    it "#type as getter" do
  	  	  expect{computer_1.type}.to raise_error(NoMethodError)
  	    end
  	    it "#type as setter" do
  	  	  expect{ computer_1.type = "MacBook Pro" }.not_to raise_error
  	    end
  	  end
    end

end