require 'spec_helper'

describe PrimeNumbers::PrimeNumberGenerator do

  before(:all) do
    @prime_generator = PrimeNumbers::PrimeNumberGenerator.new
  end

  it "should respond to message generate" do
    @prime_generator.should respond_to(:generate)
  end

  it "should respond to message is_prime?" do
    @prime_generator.should respond_to(:is_prime?)
  end

  it "should return all prime numbers between 1 and 13" do
    @prime_generator.generate(1, 13).should eq([2, 3, 5, 7, 11, 13])
  end

  it "should handle reverse ranges (20,-2) == (-2,20)" do
    @prime_generator.generate(20, -2).should eq([2, 3, 5, 7, 11, 13, 17, 19])
  end

  it "should return true for a prime number (17)" do
    @prime_generator.is_prime?(17).should be_true
  end

  it "should return false if a number isn't prime (18)" do
    @prime_generator.is_prime?(18).should be_false
  end

end