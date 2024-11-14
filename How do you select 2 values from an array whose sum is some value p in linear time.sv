module tb;
  
  int a[] = {2,5,7,5,9,10};
  int target = 19;
  
  
  // Define a hash table using an associative array
  // We'll use the integer value as the key for easy lookup
  int hash_table[int];
  
  initial begin 
  int match;
  int found = 0;
  
    foreach(a[i]) begin
      match = target - a[i];
      
       // Check if the complement is in the hash table
      if(hash_table.exists(match)) begin
        $display("values match = %0d a[%0d] = %0d",match,i,a[i]);
        found = 1;
      end
         
       // Store the current number in the hash table for future lookups
      hash_table[a[i]] = i;;
    end
    if(!found) 
      $display("no pair found with sum %d",target);
   end
endmodule
