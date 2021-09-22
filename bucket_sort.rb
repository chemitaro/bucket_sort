a = [1,7,3,4,2,2,6,5,7,8,0,1,8]
b = [2,6,5,7,8,1,7,3,4,2,0,1,8,4,9,9,2,6,3]
c = [1,8,4,9,5,7,8,4,2,0]
def bucket_sort(arr)
  # こちらに処理を書いてください
  max = arr.max
  bucket = []
  i = 0

  while i < max+1 do
    cup = []
    arr.each do |k|
      if k == i
        cup << k
      end
    end
    bucket << cup
    i += 1
  end

  anc_bucket =[]

  bucket.each do |j|
    j.each do |l|
      anc_bucket << l
    end
  end

  return anc_bucket

end


p bucket_sort(a)
p bucket_sort(b)
p bucket_sort(c)
