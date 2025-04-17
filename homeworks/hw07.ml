(* Guideline
 
Different from previous exercise: 
Do not submit a pdf file. Fill in all the  'failwith "Not Implemented"' parts of this file, and then submit it on Brightspace.  


Special grading criteria:

- If your code does not compile, you will receive 0, even if you argue your code is almost right. 

So, it is essential to check your code with Ocaml. 

Sample test cases are provided for your convenience. 

*) 


(* Exercise 1. Points = 20.

Write a function, `seconds_since_midnight`, of type int -> int -> int -> int, which returns the number of seconds elapsed since midnight. 

Your function must pass the following tests:

Midnight Test:
Input: seconds_since_midnight 0 0 0
Expected output: 0
Explanation: At midnight, no time has passed, so the result is 0 seconds.

One Hour Later Test:
Input: seconds_since_midnight 1 0 0
Expected output: 3600
Explanation: One hour equals 3600 seconds.

Minutes and Seconds Test:
Input: seconds_since_midnight 0 30 15
Expected output: 1815
Explanation: 30 minutes is 1800 seconds, and 15 additional seconds results in 1815.

Arbitrary Time Test:
Input: seconds_since_midnight 3 45 20
Expected output: 13520
Explanation: (3 * 3600) + (45 * 60) + 20 = 13520 seconds.

*)

let seconds_since_midnight h m s = 
    failwith "Not Implemented"




(* In the following, we define a type, `time`, which holds the hour, minute, and second as separate values. Do not change this type. *)

type time = {hour: int; minute: int; second: int}

(* Exercise 2 Points = 20.

Write a function `seconds_since_midnight2` of type time -> int.

Midnight Test:
Input: seconds_since_midnight2 {hour=0; minute=0; second=0}
Expected output: 0
Explanation: At midnight, no seconds have elapsed.

Half-Day Test:
Input: seconds_since_midnight2 {hour=12; minute=0; second=0}
Expected output: 43200
Explanation: 12 hours * 3600 seconds = 43200 seconds.

Specific Time Test:
Input: seconds_since_midnight2 {hour=5; minute=30; second=15}
Expected output: 19815
Explanation: (5 * 3600) + (30 * 60) + 15 = 19815 seconds.

*)

let seconds_since_midnight2 t = 
    failwith "Not implemented"




(* Exercise 3. Points = 20.

Write a function `seconds_to_time`, of type int -> time, which takes the seconds elapsed since midnight as its argument and returns the corresponding time.

Zero Seconds Test:
Input: seconds_to_time 0
Expected output: {hour=0; minute=0; second=0}
Explanation: 0 seconds means it's midnight.

One Hour Test:
Input: seconds_to_time 3600
Expected output: {hour=1; minute=0; second=0}
Explanation: 3600 seconds is exactly one hour.

Half-Day Test:
Input: seconds_to_time 43200
Expected output: {hour=12; minute=0; second=0}
Explanation: 43200 seconds is noon.

Arbitrary Seconds Test:
Input: seconds_to_time 3661
Expected output: {hour=1; minute=1; second=1}
Explanation: 3661 seconds is 1 hour, 1 minute, and 1 second.

*)

let seconds_to_time sec = 
    failwith "Not implemented"





(* Exercise 4. Points = 20.

Write a function `time_diff `, of type  time -> time -> int,  which calculates the number of seconds that have elapsed between `t1` and `t2`:

Same Time Test:
Input: time_diff {hour=1; minute=0; second=0} {hour=1; minute=0; second=0}
Expected output: 0
Explanation: No difference between the same times.

Simple Difference Test:
Input: time_diff {hour=1; minute=0; second=0} {hour=2; minute=0; second=0}
Expected output: 3600
Explanation: The difference between 1:00 and 2:00 is 3600 seconds (1 hour).

Across Midnight Test:
Input: time_diff {hour=23; minute=59; second=0} {hour=0; minute=1; second=0}
Expected output: 120
Explanation: The difference between 23:59:00 and 00:01:00 is 120 seconds.

*)

let time_diff t1 t2 = 
    failwith "Not implemented"




(* Exercise 5. Points = 20.

Write a function `tick`, of type time -> time, which increments `t` by one second and returns the new time:

Simple Tick Test:
Input: tick {hour=0; minute=0; second=59}
Expected output: {hour=0; minute=1; second=0}
Explanation: Incrementing 00:00:59 results in 00:01:00.

Hour Increment Test:
Input: tick {hour=1; minute=59; second=59}
Expected output: {hour=2; minute=0; second=0}
Explanation: Incrementing 01:59:59 results in 02:00:00.

Midnight Rollover Test:
Input: tick {hour=23; minute=59; second=59}
Expected output: {hour=0; minute=0; second=0}
Explanation: Incrementing 23:59:59 results in 00:00:00 (next day).

*)

let tick t = 
    failwith "Not implemented."
