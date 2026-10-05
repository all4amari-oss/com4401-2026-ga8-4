# Charlie - Pizza Analysis

## 1. Requirements Table

| ID | Requirement | Type |
|---|---|---|
| R1 | Enter customer name | Input |
| R2 | Enter customer address | Input |
| R3 | Enter customer phone number | Input |
| R4 | Enter number of pizzas ordered | Input |
| R5 | Enter size of each pizza | Input |
| R6 | Enter number of extra toppings for each pizza | Input |
| R7 | Enter whether delivery is required | Input |
| R8 | Number of pizzas must be between 1 and 6 | Rule |
| R9 | Small pizza costs £3.25 | Rule |
| R10 | Medium pizza costs £5.50 | Rule |
| R11 | Large pizza costs £7.15 | Rule |
| R12 | 1 extra topping costs £0.75 | Rule |
| R13 | 2 extra toppings cost £1.35 | Rule |
| R14 | 3 extra toppings cost £2.00 | Rule |
| R15 | 4 or more extra toppings cost £2.50 | Rule |
| R16 | Apply a 10% discount when subtotal is over £20 before delivery | Rule |
| R17 | Add £2.50 delivery charge when delivery is requested | Rule |
| R18 | Calculate the cost of each pizza | Process |
| R19 | Calculate the order subtotal before discount and delivery | Process |
| R20 | Calculate discount where applicable | Process |
| R21 | Calculate delivery charge where applicable | Process |
| R22 | Calculate final order total | Process |
| R23 | Display customer details | Output |
| R24 | Display cost of each pizza | Output |
| R25 | Display standard pizza cost and extra topping cost | Output |
| R26 | Display subtotal before discount and delivery | Output |
| R27 | Display discount applied | Output |
| R28 | Display delivery charge | Output |
| R29 | Display final total | Output |

## 2. Input-Process-Output (IPO)

### Input
- Customer name
- Customer address
- Customer phone
- Number of pizzas
- Size of each pizza
- Number of extra toppings for each pizza
- Whether delivery is required

### Process
- Validate number of pizzas
- Determine base price from pizza size
- Determine topping price from number of toppings
- Calculate each pizza cost
- Calculate order subtotal
- Check whether subtotal is over £20
- Calculate 10% discount if applicable
- Check whether delivery is required
- Add £2.50 delivery charge if required
- Calculate final total

### Output
- Customer details
- Each pizza and its cost
- Standard pizza cost
- Extra topping cost
- Subtotal
- Discount
- Delivery charge
- Final total

## 3. Computational Thinking Applied

| Pillar | How it was applied to the Pizza project |
|---|---|
| Decomposition | The pizza ordering problem was broken into smaller jobs, such as getting customer details, getting pizza details, calculating costs and displaying the bill. |
| Pattern Recognition | Each pizza follows the same process: its size and toppings are entered, prices are determined and the pizza cost is calculated. |
| Abstraction | Related information is grouped into arrays, such as customer details, pizza sizes, toppings and pizza costs, so the program can handle the order as organised data. |
| Algorithm Design | The required steps were planned in the correct order using the Analysis and Design work before the solution is implemented in Flowgorithm. |

## 4. My Role and Contribution

My role in the Pennine Pizza Works project was **Analysis**.

I was responsible for analysing the client requirements and identifying what the pizza ordering program needs to do. I produced the Requirements Table and the Input-Process-Output (IPO) table. I also identified the inputs, processes, outputs and business rules needed by the program.

I used the client brief to identify requirements such as the pizza quantity limits, pizza prices, topping costs, discount rule and delivery charge. This analysis provides the information needed by the Design and Build stages of the project.

## 5. What I Learnt

I learnt how to analyse a programming problem before starting to build the solution. In particular, I learnt how to break a client brief into individual requirements and classify them as inputs, processes, outputs or rules.

I also learnt how an IPO table helps organise a problem and how computational thinking can be applied to a real programming task. Creating the analysis made it easier to understand what the later Flowgorithm design needs to achieve.

## 6. How I Studied

I studied the Pizza project by first reading the client brief and identifying the information the program needs to accept and produce. I then compared the requirements with the worked Supercar example to understand how an analysis should be structured.

I practised identifying inputs, processes, outputs and validation rules before moving onto the Flowgorithm design. I also reviewed the requirements when checking the design so that important rules, such as the 1–6 pizza limit and pizza/topping prices, were not missed.

## 7. Reflection and Action Plan

One thing I found challenging was understanding how a written client brief could be converted into a structured programming solution. Breaking the problem into requirements and an IPO table helped me understand this process more clearly.

I also improved my understanding of arrays and how related information can be stored together. Going forward, I will continue practising Flowgorithm subroutines, validation and loops so that I can contribute more confidently during the Design and Build stages.
