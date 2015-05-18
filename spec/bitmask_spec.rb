describe 'Bitmask' do 

	describe 'creation' do
		it "should support creating a bitmask" do 
			Bitmask.new([:test, :more_test]).class.should.equal(Bitmask)
		end

		it 'should support setting an initial value' do 
			Bitmask.new(1, [:test, :more_test]).class.should.equal(Bitmask)
		end
	end

	describe 'setting values' do 
		before do 
			@mask = Bitmask.new([:test, :more_test, :even_more_test])
		end

		it "should support setting an allowed value" do 
			@mask << :test
			@mask.set?(:test).should.equal(true)			
		end

		it 'should not report non-set values as set' do 
			@mask.set?(:more_test).should.equal(false)
		end

		it 'should raise an error for unsupported values' do 
			lambda{ @mask << :monkey }.should.raise(ArgumentError)
		end		
	end

	describe 'getting values' do 
		before do 
			@mask = Bitmask.new([:test, :more_test, :even_more_test])
		end

		it 'should support checking a single value' do 
			@mask.set?(:test).should.equal(false)
			@mask << :test
			@mask.set?(:test).should.equal(true)
		end

		it 'should support returning a list of set values' do 
			@mask.values.should.equal([])
			@mask << :test
			@mask << :more_test
			@mask.values.should.equal([:test, :more_test])
		end

	end

end