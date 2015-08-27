def bsearch (a, n)
   min = 0
   max = a.length - 1
   mid = 0
   count = 0
   index = Hash.new
   imax = 0
   imin = 0
   while min < max
        if a[max] == n
            imax = max
         end
        if a[min] == n
              imin = min

          end
        mid = (max + min) / 2

        if a[mid] == n
           imax = mid
            imin = mid
        elsif a[mid] >= n
            max = mid - 1
            min += 1
        else
            min = mid + 1
            max -= 1
        end
    end

  while min <imin
         mid = (max + min)/2
          if a[mid] == n
               imin = mid
         elsif a[mid] >=n
            imin = mid-1
            min +=1
        else
             min = mid + 1
            imin -= 1
         end
     end
  while imax < max
         mid = (max + imax)/2
          if a[mid] == n
               imax = mid
         elsif a[mid] >=n
            max = mid-1
            imax +=1
        else
             imax = mid + 1
            max -= 1
         end
   end
   count = imax - imin
index = {:firstoccurence=>imin, :secondoccurence=>imax, :count=>count}
end

a = [1, 2, 4, 4, 4, 4, 4, 4, 5, 6]
bsearch(a, 4)