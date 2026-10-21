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

