var total = 0;
for(i=1;i<1000;i++){
    
    if(i%3===0){
        total += i;
    } if(i%5===0){
        total += i;
    }
}
console.log("The total sum is " +total);