var num1 = 0;
var num2 = 1;
var totalSum = 0;

for(i=1;i<100;i++){
    num3 = num1 + num2;
    num1 = num2;
    num2 = num3;
    if((num3<=4000000)&&(num3%2===0)){
        totalSum+=num3;
    } 
}
console.log(totalSum);