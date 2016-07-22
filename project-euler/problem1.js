/* Problem 1 found at: https://projecteuler.net/problem=1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

*/

var totalSum = 0;
var limit = 1000;
// For loop to list and loop through the natural numbers up to 1000.
for(var i = 1; i < limit ; i++){
    
    // check for numbers multiples of 3
    if(i%3 === 0){

        total += i;
    
    // check for numbers multiples of 5
    } if(i%5 === 0){
        
        total += i;
    
    }
}
//print out the sum
console.log("The total sum is " +totalSum);