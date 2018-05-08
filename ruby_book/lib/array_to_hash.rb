require "minitest/autorun"

def tohash(array)
    array.each_slice(2).inject({}) {|hash, (key, value)| hash[key]=value;hash}
end

class ArrayToHashTest < Minitest::Test
    def test_array_to_hash
        assert_equal ({:a=>1, :b=>4}), tohash([:a,1,:b,4])
    end
end