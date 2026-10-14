# Pennine Pizza Works: Test Log

**Mini Project 2 · COM4401 Software Engineering Fundamentals** · Testing by Nah'Kajsha Reid

| | |
|---|---|
| **Stage** | 4. Test (Waterfall life cycle) |
| **Test plan** | Marcus Weeks, *Design_Pennine_Pizza.md* (Test plan design section). The expected results below are copied from it, unchanged. |
| **Program tested** | Sorena's Flowgorithm program: *Sorenas_Flowchart_completed.fprg* (uploaded 9 October 2026) |
| **Flowgorithm version** | 4.5.0 (Windows) |
| **Date tested** | 12 October 2026 |

The brief asks for testing with **normal, abnormal and extreme** data. In this plan, the **Boundary** tests are the extreme data: they check the edges of what the program should accept (for example 1 and 6 pizzas, and a subtotal of exactly £20.00).

---

## Test table

| # | Type | Test data | Expected result | Actual result | Pass / Fail |
|---|---|---|---|---|---|
| 1 | Normal | 2 pizzas: Large + 2 toppings, Medium + 4 toppings. Delivery Y. | Subtotal £16.50, discount £0.00, delivery £2.50, total £19.00 | Subtotal £16.50, discount -£0.00, delivery £2.50, total £19.00 | Pass |
| 2 | Normal | 3 pizzas: Large + 1 topping each. Delivery Y. | Subtotal £23.70, discount £2.37, delivery £2.50, total £23.83 | Subtotal £23.70, discount -£2.37, delivery £2.50, total £23.83 | Pass |
| 3 | Normal | Bill shows the customer details and number of pizzas | Name, address, phone and "Number of pizzas" on the bill | Bill shows the name and address and lists each pizza (Pizza 1 to 3), so you can count 3 pizzas, but there is no "Number of pizzas" line and no phone number. The program asks for payment details instead of a phone number, and these are not shown on the bill. | Fail |
| 4 | Boundary (extreme) | Smallest order: 1 Small, 0 toppings. Delivery N. | Accepted. Total £3.25 | Accepted. Subtotal £3.25, discount -£0.00, delivery £0.00, total £3.25 | Pass |
| 5 | Boundary (extreme) | Largest order: 6 Large, 9 toppings each. Delivery Y. | Accepted. Each pizza £9.65. Subtotal £57.90, discount £5.79, delivery £2.50, total £54.61 | 6 pizzas accepted. 9 toppings was rejected ("Invalid number. Enter 0 to 4:"), so 4 toppings was entered instead. With 4 toppings, each pizza £9.65, subtotal £57.90, discount -£5.79, delivery £2.50, total £54.61 (prices correct). | Fail |
| 6 | Boundary (extreme) | 7 pizzas, then 1 | "Error, must be between 1 and 6!" and asked again | 7 was rejected and it asked again, then 1 was accepted, but the error message was "Invalid number. Enter 1 to 6:" instead of "Error, must be between 1 and 6!" | Fail |
| 7 | Boundary (extreme) | 0 pizzas, then 1 | "Error, must be between 1 and 6!" and asked again | 0 was rejected and it asked again, then 1 was accepted, but the error message was "Invalid number. Enter 1 to 6:" instead of "Error, must be between 1 and 6!" | Fail |
| 8 | Boundary (extreme) | Subtotal exactly £20.00: 2 Small + 0 toppings, 1 Medium + 0 toppings, 1 Medium + 4 toppings. Delivery N. | No discount. Total £20.00 | Subtotal £20.00, discount -£0.00 (no discount), delivery £0.00, total £20.00 | Pass |
| 9 | Boundary (extreme) | Subtotal just over £20: 1 Small + 0 toppings, 1 Large + 0 toppings, 1 Large + 4 toppings. Delivery N. | Subtotal £20.05, discount £2.01, total £18.04 (checks rounding) | Subtotal £20.05, discount -£2.01, delivery £0.00, total £18.05. The bill doesn't add up (£20.05 − £2.01 = £18.04), because the total uses the unrounded discount of £2.005. | Fail |
| 10 | Boundary (extreme) | 4 toppings, then 5 toppings on a Small | Both charged £2.50 for toppings | 4 toppings was charged £2.50 (Small £5.75). 5 toppings was rejected ("Invalid number. Enter 0 to 4:"), so 4 was entered instead. Subtotal £11.50, total £11.50. | Fail |
| 11 | Boundary (extreme) | Size ID 3, then 2 | "Invalid choice. Please enter an ID from 0 to 2" and asked again | 3 was accepted (as Large) and the program moved on to "How many extra toppings?". No error message. The program numbers sizes 1 to 3, but the design and test plan use IDs 0 to 2. | Fail |
| 12 | Boundary (extreme) | Size ID −1, then 0 | "Invalid choice. Please enter an ID from 0 to 2" and asked again | -1 was rejected ("Invalid size. Enter 1, 2 or 3:") and it asked again. 0 was also rejected with the same message, because the program uses sizes 1 to 3. 1 was then accepted. | Fail |
| 13 | Abnormal | Toppings −1, then 0 | "Invalid. Toppings cannot be less than 0" and asked again | -1 was rejected and it asked again, then 0 was accepted, but the error message was "Invalid number. Enter 0 to 4:" instead of "Invalid. Toppings cannot be less than 0" | Fail |
| 14 | Abnormal | Delivery "X", then "N" | "Please enter Y or N" and asked again | "X" was rejected and it asked again, then "N" was accepted (delivery £0.00, total £3.25), but the error message was "Invalid choice. Enter Y or N:" instead of "Please enter Y or N" | Fail |
| 15 | Abnormal | Blank customer name, then a name | "This cannot be blank, try again!" and asked again | The blank name was accepted with no error message, and the program moved straight on to "Enter customer address:". | Fail |
| 16 | Abnormal | Letters for number of pizzas ("abc"), then 1 | Run in Flowgorithm and record what happens | Flowgorithm would not accept "abc" and showed "Invalid value. Enter a value of type Integer for pizzaCount" at the bottom of the Console. The program did not crash. After typing 1, it carried on normally to Pizza 1. | Recorded (no expected result in the test plan) |
| 17 | Abnormal | Lower-case "y" for delivery | Run in Flowgorithm and record what happens | Lower-case "y" was accepted as Yes, and delivery of £2.50 was charged (from the Test 1 run). | Recorded (no expected result in the test plan) |
| 18 | Normal | 1 Medium + 3 toppings, 1 Small + 1 topping. Delivery N. | Medium £5.50 + toppings £2.00, Small £3.25 + topping £0.75. Subtotal £11.50, no discount, total £11.50 | Medium with 3 toppings £7.50, Small with 1 topping £4.00. Subtotal £11.50, discount -£0.00, delivery £0.00, total £11.50 | Pass |

**Summary:** Out of 18 tests, 5 passed, 11 failed and 2 were recorded because they had no expected result. The program worked out the prices, discounts and delivery correctly for normal orders. The main problems were that the program did not ask for a phone number (it asked for payment details instead), the error messages were worded differently, and the bill was out by 1p because of rounding.

---

## Notes to check while testing

- **Test 9:** the discount works out at exactly £2.005, so the program has to round it. Record exactly what the program shows (£18.04 or £18.05), even if it is not what the plan expects.
- **Test 15:** from the design, the check looks at the first character of the entry. Try a completely empty name. If you have time, also try a name that starts with a space and note what happens.
- **Tests 16 and 17:** there is no expected result for these, so write down exactly what Flowgorithm does (an error message, a crash, or carrying on).
- **Test 1 note:** when there is no discount, the bill shows "Discount: -£0.00". The total is correct, but the minus sign could be removed to make the bill tidier.
- Use a made-up customer for every test (for example "Test Customer", "1 Test Street", "01234 567890"). Never use real people's details.

---

## Evidence

Screenshots for each test, showing the inputs typed and the output on screen. Saved in `Evidence/MP2_Tests/`.

| Test | Screenshot |
|---|---|
| 1 | Test01a_inputs_1.png to Test01a_inputs_4.png, Test01b_bill.png |
| 2 | Test02a_inputs_1.png to Test02a_inputs_5.png, Test02b_bill_1.png, Test02b_bill_2.png |
| 3 | Same run as Test 2: Test02b_bill_1.png, Test02b_bill_2.png (and Test02a_inputs_1.png for the payment details question) |
| 4 | Test04a_inputs_1.png to Test04a_inputs_3.png, Test04b_bill.png |
| 5 | Test05a_9_toppings_rejected.png, Test05b_inputs_1.png to Test05b_inputs_7.png, Test05c_bill_1.png, Test05c_bill_2.png |
| 6 | Test06_1.png, Test06_2.png |
| 7 | Test07_1.png, Test07_2.png |
| 8 | Test08a_inputs_1.png to Test08a_inputs_5.png, Test08b_bill.png |
| 9 | Test09a_inputs_1.png to Test09a_inputs_4.png, Test09b_bill_1.png, Test09b_bill_2.png |
| 10 | Test10a_inputs_1.png, Test10a_inputs_2.png, Test10a_5_toppings_rejected.png, Test10b_bill_1.png, Test10b_bill_2.png, Test10b_bill_3_total.png |
| 11 | Test11_1.png, Test11_2.png |
| 12 | Test12_1.png, Test12_2.png |
| 13 | Test13_1.png, Test13_2.png, Test13_3.png |
| 14 | Test14_1.png, Test14_2_bill.png |
| 15 | Test15.png |
| 16 | Test16_1.png, Test16_2.png |
| 17 | Same run as Test 1: Test01a_inputs_4.png (lower-case "y"), Test01b_bill.png (delivery £2.50) |
| 18 | Test18a_inputs_1.png to Test18a_inputs_3.png, Test18b_bill.png |

---

## Fixes and retests

The brief asks for evidence of fixes or improvements after testing. For every test that fails: describe what went wrong, tell Sorena so it can be fixed, then run the test again.

| Test # | What went wrong | Fix made (by whom) | Retest result | Pass / Fail | Retest screenshot |
|---|---|---|---|---|---|
| 3 | The program asks for payment details instead of a phone number, and the bill has no phone number or "Number of pizzas" line. | Sorena (v2): the program asks for a phone number, and the bill shows the phone and "Number of pizzas" | Bill shows Name, Address, Phone: 01234 567890 and Number of pizzas: 2 | Pass | Retest_v2/Retest_T01_T03_1.png to Retest_T01_T03_5.png |
| 5 | The program only accepts 0 to 4 toppings, but the brief says "4 or more extra toppings: £2.50", so more than 4 should be accepted (and charged £2.50). | Sorena (v2): any number of toppings from 0 upwards is accepted; 4 or more cost £2.50 | 9 toppings accepted on a Large: "Large pizza with 9 topping(s): £9.65" | Pass | Retest_v2/Retest_T05_T10_1.png to Retest_T05_T10_5.png |
| 6 | The error message for the wrong number of pizzas is "Invalid number. Enter 1 to 6:", not "Error, must be between 1 and 6!" as in the design. | No change in v2 | 7 was rejected and it asked again, but the message is still "Invalid number. Enter 1 to 6:" (behaviour correct, wording differs from the design) | Fail | Retest_v2/Retest_errors_1.png to Retest_errors_5.png |
| 7 | Same as Test 6 (error message wording). | No change in v2 | 0 was rejected and it asked again, but the message is still "Invalid number. Enter 1 to 6:" (behaviour correct, wording differs from the design) | Fail | Retest_v2/Retest_errors_1.png to Retest_errors_5.png |
| 9 | Round the discount to 2 decimal places before working out the total, so the bill adds up (£18.04). | Sorena (v2): the discount is rounded to the nearest penny before the total is worked out | Subtotal £20.05, discount -£2.01, delivery £0.00, total £18.04. The bill now adds up. | Pass | Retest_v2/Retest_T09_1.png to Retest_T09_5.png, Retest_T09_6_total.png |
| 10 | Same as Test 5 (more than 4 toppings should be accepted and charged £2.50). | Sorena (v2): same fix as Test 5 | 5 toppings accepted on a Small: "Small pizza with 5 topping(s): £5.75" | Pass | Retest_v2/Retest_T05_T10_1.png to Retest_T05_T10_5.png |
| 11 | The program uses size numbers 1 to 3, but the design uses IDs 0 to 2. The team needs to agree on one and update either the program or the design and test plan. | Sorena (v2): sizes changed to 0 = Small, 1 = Medium, 2 = Large | 3 is now rejected and it asked again (behaviour fixed), but the message is "Invalid size. Enter 0, 1 or 2:" instead of "Invalid choice. Please enter an ID from 0 to 2" | Fail | Retest_v2/Retest_errors_1.png to Retest_errors_5.png |
| 12 | Same as Test 11 (size numbering 1 to 3 compared with IDs 0 to 2), and the error message wording differs from the design. | Sorena (v2): sizes changed to 0 to 2 | -1 was rejected and 0 was accepted as Small (behaviour fixed), but the message is "Invalid size. Enter 0, 1 or 2:" instead of "Invalid choice. Please enter an ID from 0 to 2" | Fail | Retest_v2/Retest_errors_1.png to Retest_errors_5.png |
| 13 | Error message wording for toppings differs from the design. | Sorena (v2): toppings message changed | -1 was rejected and it asked again, then 0 was accepted (behaviour correct), but the message is "Invalid number. Enter 0 or more:" instead of "Invalid. Toppings cannot be less than 0" | Fail | Retest_v2/Retest_errors_1.png to Retest_errors_5.png |
| 14 | Error message wording for delivery differs from the design. | No change in v2 | "X" was rejected and it asked again, then "N" was accepted (behaviour correct), but the message is still "Invalid choice. Enter Y or N:" instead of "Please enter Y or N" | Fail | Retest_v2/Retest_T14_T15_1.png to Retest_T14_T15_5.png |
| 15 | Add a check so a blank customer name is rejected with "This cannot be blank, try again!" and asked again (the design's checkBlank step). | Sorena (v2): blank names are now rejected and asked again | The blank name was rejected and it asked again (behaviour fixed), but the message is "Name cannot be blank. Enter customer name:" instead of "This cannot be blank, try again!" | Fail | Retest_v2/Retest_T14_T15_1.png to Retest_T14_T15_5.png |

**Retest summary:** After Sorena updated the program (version 2), I retested the 11 tests that failed and re-ran Tests 1 and 4 to check nothing else had broken. The phone number and number of pizzas are now showing on the bill, more than 4 toppings can now be ordered, the bill now adds up correctly (the 1p rounding error is fixed) and the blank name is now rejected. These were the main problems from the first round of testing. The only problem left is that the wording of some error messages is still different from the design (Tests 6, 7, 11, 12, 13, 14 and 15).

### Regression checks on v2

The size numbers changed in v2 (now 0 = Small, 1 = Medium, 2 = Large), so tests that passed before were run again to check nothing else broke. Retested on *Sorenas_Flowchart_v2.fprg* (uploaded 13 October 2026), on 14 October 2026.

| Test # | Re-run result on v2 | Pass / Fail | Screenshot |
|---|---|---|---|
| 1 | Subtotal £16.50, discount -£0.00, delivery £2.50, total £19.00 | Pass | Retest_v2/Retest_T01_T03_1.png to Retest_T01_T03_5.png |
| 4 | 1 Small, 0 toppings, delivery N: subtotal £3.25, discount -£0.00, delivery £0.00, total £3.25 | Pass | Retest_v2/Retest_T14_T15_1.png to Retest_T14_T15_5.png |
