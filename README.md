# Stock-Picker
The program outputs a pair of days that will yield the most profit from buying and selling stocks. 

The algorithm works as follows:
- Initialise a maximum_profit, which is 0. 
- Initialise a minimum_price, which is Infinity. 
- Initialise the best_pair of days as an empty array
- Initialise the buying_day as day 0. 

The program loops over the array and checks the following:
- If the *day*'s *price* is smaller than the *minimum_price*, the *minimum_price* is set equal to the *price*. 
- As this is essentially (with no knowledge of the future) the best buying price, it is assumed that this is the best buying day, and then the *current_day* is set equal to the *buying_day*. 
- Otherwise, if this is not the case and the difference between the day*'s *price* and the *minimum_price* is higher than the *maximum_profit* (we want the selling price to be higher than the buying price in order to make a profit), we need to calculate the profit. 
- The new *maximum_profit* is calculated by subtracting the current *day*'s *price* from the *minimum_price*
- This is now considered the best day for selling (at least until we've tested all our prices). Therefore, the program stores the *buying_day* and current *day* in the *best_pair* array as [*buying_day*, *day*]. 

This process continues until the loop has finished. 
It then returns the *best_pair* array. 

## Addressing edge cases
Edge cases are addressed by this implementation as the profit is calculated or not calculated during execution. 
Let's say that there is only a single value (10) in the prices array. The program will set the minimum price to 10 since it's smaller than the initialised value (Infinity). However since this happens, we know that we cannot make a profit when the the new price is less than the previous (this would result in a loss). The same applies for an array with only descending values. 