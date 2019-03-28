require 'flatten_array'

describe '#flatten_array' do
  it 'should return message if argument passed is not an array' do
    array = flatten_array('Hey Flick Team!')
    expect(array).to eq 'argument passed is not an array'
  end

  it 'should return false if array contains non-array objects / non-integers' do
    array = flatten_array([1, 2, 3, { 9 => [1, 2, 3, 4, 5, 6, 7, 8, 9] }])
    expect(array).to eq false
  end

  it 'should return a flat array when passed an array of arbitrarily nested arrays of integers' do
    array = flatten_array([[1, 2, [3]], 4])
    array2 = flatten_array([6, 7, [[1, 2, [3]], 4]])
    expect(array).to eq [1, 2, 3, 4]
    expect(array2).to eq [6, 7, 1, 2, 3, 4]
  end
end
