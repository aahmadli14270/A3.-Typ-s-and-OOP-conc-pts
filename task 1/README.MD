Results in ms:
static: 1620.000000
stack: 2647.000000
heap: 120997.000000

PRE-ANALYSIS:
I tested the code with 1 million repeats, and get the results above. Note: I tested it with multiple numbers such as 100 and etc and showed completely different time ratios such as in which stack was faster:
static: 2.000000
stack: 1.000000
heap: 8.000000

But as I observed it is only because of startup overhead for 3 different initialization scenarios, so considering millions of repeats we can observe that static execution is superior to stack and stack is superior to heap almost always. 

MAIN ANALYSIS
Now coming to the main part of the analysis why results show up like this is about how 3 of them live during program livetime. All three of them create an array of N integers and write 1 to first slot. And my timer measures how the program gets that memory of array and do one store operation. How they are initialized:  
1) Static array uses an array for the whole livetime of the program and our machine puts it to static data area, it is being created even before main starts execution. When main starts it already has fixed place in memory. Then whenever our array is called at loop it tooks the same array and allocates first slot (reason of execution time).
2) In contrast, stack array builds new array on every loop call, and it is being dropped at every turn (after return arr goes out of function scope), so there is overhead compared to static array since static one doesn't allocate array every time.
3) Heap works almost "same" with stack array under the hood. After each function return array is being gone. However additional to what stack array does, it calls another function under the hood, it calls free() function before return. 


Conclusion: The execution time differences are because they deal with allocated space differently. 
