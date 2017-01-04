
require "./src/prime_generator" 

describe PrimeGenerator do
	before do
    @prime_generator = PrimeGenerator.new(:new_prime)
  end
	describe "#is_prime?" do
		it "should return false if given num over divisor is equal to 0" do
			expect(@prime_generator.is_prime? 2).to eq(true)
			expect(@prime_generator.is_prime? 3).to eq(true)
			expect(@prime_generator.is_prime? 8).to eq(false)
		end
	end

	describe "#prime_generator" do
		it "should return a list of prime numbers" do
			expect(@prime_generator.prime_generate 0).to eq []
			expect(@prime_generator.prime_generate 5).to eq [2, 3, 5, 7, 11]
		end
	end
end

