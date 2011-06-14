#this module exists to provde a restricted environment for evaluating ecmascript
#code in a js module. we want to restrict the API as much as possible. 
#Unforuntately, it would still be be possible for the evaling code to set
#variables in the global scope, and do various evil things with that. Ideally,
#we would run a sandboxed interpreter, as is done in the python implementation.
#We could possible change the API to use a with statement, which would be more 
#concise, but might negatively affect performance.
define -> (code,getData,setData,In,_events) -> eval code
