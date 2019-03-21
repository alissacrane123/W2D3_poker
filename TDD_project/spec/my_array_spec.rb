require 'my_array'
require 'rspec'

describe '#my_uniq' do
  it 'should return an array' do
    array = [1,2,3].my_uniq
    expect(array.class).to eq(Array)
  end

  it 'should return self if called on an empty array' do
    array = [].my_uniq
    expect(array).to eq([])
  end

  it 'should not call #uniq' do
    expect_any_instance_of(Array).to_not receive(:uniq)
    [1,2,3].my_uniq
  end

  it 'should return an array without duplicates' do
    array = [1,2,1,3,3].my_uniq
    expect(array).to eq([1,2,1,3,3].uniq)
  end
end

describe '#two_sum' do
  it 'should return an array' do
    array = [1,2,3].two_sum
    expect(array.class).to eq(Array)
  end

  it 'should return [] if called on an empty array' do
    array = [].two_sum
    expect(array).to eq([])
  end
  
  it 'should return an array of index pairs whose elements sum to zero' do
    array = [-1, 0, 2, -2, 1].two_sum
    expect(array).to eq([[0, 4], [2, 3]])
  end 

  it 'should return index pairs sorted dictionary-wise' do
    array = [-1, 0, 2, -2, 1].two_sum
    expect(array).to_not eq([[2, 3],[0, 4]])
  end
end

describe '#my_transpose' do
  it 'should return an array' do
    array = [1,2,3]
    expect(my_transpose(array).class).to eq(Array)
  end

  it 'should transpose rows to columns' do
    array = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
    ]
    cols = [
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]
    ]
    expect(my_transpose(array)).to eq(cols)
  end
end

describe '#stock_picker' do 
  prices = [2, 9, 5, 1, 4, 7, 0]
  it 'should return an array' do
    expect(stock_picker(prices).class).to eq(Array)
  end

  it 'should return a pair of indices' do
    expect(stock_picker(prices).length).to eq(2)
  end

  it 'should return a pair of sorted indices' do
    expect(stock_picker(prices)).to eq(stock_picker(prices).sort)
  end

  it 'should return a pair of indices with the largest price difference' do 
    expect(stock_picker(prices)).to eq([0,1])
  end
end