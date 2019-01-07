## solidity-external-vs-public

While porting our contracts from solidity 0.4.x -> 0.5.x we ran into a stack too deep issue around external functions

External functions give access to the callcode data directly resulting in less gass usage

public functions copy variables into memory and then execute them there, resulting in more gas. 


It appears that the external functions have less stack space than a regular function.

In this repo is a Debug contract that has 3 functions, an encode function that is used in the other 2 functions


`npm uninstall -g truffle`
`npm install -g truffle`

`truffle compile`

There will be warnings about unused variables, thats fine. 

If you uncomment the notWorking function and re run the compiler, it should fail and give you a stack too deep error.

