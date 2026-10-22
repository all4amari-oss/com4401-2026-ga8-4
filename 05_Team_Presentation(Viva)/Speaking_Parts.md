# Speaking parts

**COM4401 Team Presentation · The Avengers (Team 4)** · 21 October 2026, room C203

What each member said, slide by slide, from their speaking notes. Slide numbers match [the final slides](Team_Presentation_Final.pptx).

## Marcus Weeks: introduction (slides 1 to 3) and cyber security (slides 16 to 18)

#### Part 1: Intro (2 minutes)

##### Slide 1 · We worked as an IT team for 5 weeks (about 1 minute)

- Hi everyone, I'm Marcus, team leader of The Avengers.
- For the last 5 weeks we've worked like a small IT company, doing jobs for 2 clients.
- This is the team: Charlie, Sorena and Nah. Nah's part comes later, on video.
- Each of us presents a part today.

##### Slide 2 · Two clients, four jobs (about 50 seconds)

- Northwest Architecture Studio: we specced 12 new computers across 4 job roles, and priced and checked them in a database with SQL.
- Then we built the studio's office network in Filius and tested it. All 8 tests pass.
- Pennine Pizza Works: an ordering program in Flowgorithm. We tested it, fixed it and retested it until every test passed.
- And a guide to staying safe online, for everyday users.
- We used AI along the way. Charlie comes back to how we checked it at the end.
- You'll see the strongest bit of each job, then one of them running live.

##### Slide 3 · Hand-over (about 5 seconds)

- "Now Charlie will take you through the studio's new computers."

#### Part 2: Cyber security (2 minutes)

##### Slide 16 · Why people get hacked (about 45 seconds)

- Most of us bank, shop and work online, and any of those accounts can be attacked.
- 43% of UK businesses found a breach or attack in the last 12 months (DSIT, 2025).
- 22% of the breaches Verizon studied started with stolen or compromised logins (Langlois, 2025).
- Our guide covers 4 topics and each of us wrote one. Mine was passwords.

##### Slide 17 · Password hygiene: what to do (about 1 minute 10 seconds)

- The old advice was make it complicated and change it every few months. That backfired.
- People fall back on the same tricks, like P@ssw0rd, and attackers know them (NCSC, 2021a).
- Now the NCSC says use three random words. NIST says at least 15 characters.
- Use a different password for every account. 43% to 51% of people reuse them (Das et al., 2014). A password manager makes that easy.
- Turn on 2-step verification as well. The NCSC puts that first.
- Real case, 23andMe: an attacker used logins stolen in other breaches. It reached 155,592 people in the UK, and the ICO fined them £2.31 million (ICO, 2025).

##### Slide 18 · Hand-over (about 5 seconds)

- "Now Nah will show you our work running live."

#### Questions I prepared for (Q&A)

- **Why three words over symbols?** Longer is harder to crack and easier to remember. Symbol rules make people predictable (NCSC, 2021a). A study of over 20,000 people found length rules beat complexity rules (Shay et al., 2016).
- **Is writing a password down OK?** Yes, the NCSC says so if you keep it somewhere safe (NCSC, N.D.a).
- **Are password managers safe?** Not perfect. A test of 13 found some weak spots (Oesch and Ruoti, 2020). The NCSC still recommends them, with 2-step verification first (NCSC, N.D.b).
- **Where's the 22% from?** Verizon's 2025 Data Breach Investigations Report, across 9,891 breaches (Langlois, 2025).
- **Why not change passwords every few months?** NIST says only change one when there's evidence it's been leaked (NIST, 2025).

## Charlie Broughton: MP1 Computing (slides 4 to 9)

##### Slide 4 · A workstation built for 3D visualisation

- Our first mini project was for the Northwest Architecture Studio, which needed workstation computers for different job roles.
- My role focused on building a PC suitable for use by a 3D Visualisation Specialist. This job involves rendering, working with large 3D models and using high-resolution textures, so the computer needed to be powerful enough to handle demanding workloads.
- I selected a Ryzen 9 9950X processor, an RTX 5070 Ti graphics card with 16 gigabytes of video memory, 64 gigabytes of RAM and a 2-terabyte NVMe SSD. I also selected a 4K monitor to help with detailed visual work.
- The allocated budget was £3,750 per workstation. Our SQL database reports a total cost of £3,445, leaving £305 within the budget.

##### Slide 5 · Why each component was selected

- The components were chosen based on what the job actually needs, rather than simply choosing expensive hardware.
- The processor's 16 cores help with demanding tasks such as multi-core rendering. The graphics card supports 3D visualisation, and its 16 gigabytes of video memory help accommodate complex scenes and detailed textures. The 64 gigabytes of RAM allow large projects and multiple demanding applications to run together.
- The 2-terabyte SSD provides storage for large project files and helps with loading and saving. Finally, the 4K IPS monitor provides detailed resolution for reviewing visual work. Overall, the aim was to balance performance with the workstation's budget.

##### Slide 6 · Original BuildCores evidence

- This slide shows the original BuildCores evidence for my workstation.
- The displayed BuildCores total was incomplete, so I used the hardware costs recorded in our SQL database to calculate the reported workstation total. That's why the figure shown in the SQL total box differs from the amount displayed in the BuildCores image.
- It's important to distinguish between the original build evidence and the total calculated from the records in our database.

##### Slide 7 · SQL evidence: querying workstation costs

- To check the costs, I used an SQL query that joins the hardware items, workstation builds and employee roles tables.
- The JOIN combines the related information. SUM adds the hardware costs together, GROUP BY produces a separate total for each role, and ORDER BY sorts those totals from highest to lowest.
- For the 3D Visualisation Specialist, the query returns £3,445. This demonstrates how the database can turn the stored hardware information into a useful cost report.

##### Slide 8 · Workstations for the whole studio

- Although my individual role focused on 3D visualisation, the overall project covered four workstation roles across the studio.
- The SQL results show £1,845 for the Architect or CAD Designer, £3,445 for the 3D Visualisation Specialist, £809 for the Administrative Assistant and £1,297 for the Project Manager.
- The different totals reflect the different recorded hardware requirements for each role. The database makes it possible to compare these costs and assess them against the allocated budget of £3,750 per workstation.
- This completes my part of the Computing project. I'll now hand over to Sorena, who will cover the pizza ordering program and the studio network.

## Sorena Golbarg Lisar: MP2 pizza program (slides 10 to 12) and MP3 network (slides 13 to 15)

Sorena's notes in the slides are in English and Farsi. The English is below.

##### Slide 10 · What the program does

- It takes the customer's details, lets them order up to six pizzas, works out the price and prints a bill.
- I split the program into functions, and the Main function calls them in order.

##### Slide 11 · Every input is checked, then the total is worked out

- In Main, I declare the arrays and set the prices: Small £3.25, Medium £5.50 and Large £7.15.
- The topping prices are stored in an array, where the index is the number of toppings.
- The getCustomerDetails function asks for the name, address and phone number, and doesn't allow any of them to be blank.
- If something is left blank, a while loop shows "This cannot be blank, try again!" and asks again.
- The getPizzas function asks how many pizzas the customer wants, and only accepts a number from 1 to 6.
- The choosePizzas function asks for the size (0 to 2) and the number of toppings for each pizza, and rejects invalid inputs.
- The getDelivery function asks if the customer wants delivery, and only accepts Y or N.
- The pizzaPrice function works out the price of each pizza, and an if statement makes four or more toppings all cost £2.50.
- The calcTotals function uses a for loop to add up the price of all the pizzas.
- If the order is over £20, it gets a 10% discount, and delivery adds £2.50.
- I round the discount to the nearest penny before working out the total, so the bill is never even 1p out.

##### Slide 12 · Example bill and testing

- Finally, the displayBill function shows the bill: the name, address, phone number, number of pizzas, the price of each pizza, the discount, delivery and the total.
- Nah tested the program with 18 tests, and we fixed the problems that came up in versions 2 and 3.
- For example, we fixed a rounding bug that made a £20.05 order 1p out, and we changed the error messages to match the design exactly.

##### Slide 13 · The studio's network

- Next, the network we built for the studio in Filius, for Mini Project 3.
- The job was to connect the studio's 4 staff PCs, an office server and a DNS server, and let them reach an outside cloud service.
- [Point at the top of the picture] The 4 PCs, the DNS Server and the Office Server all plug into the Office Switch. That's the office network, the LAN, on 192.168.10.
- [Point at the bottom] The Office Router joins the office to the outside network on 203.0.113. The cloud server sits out there. It stands in for the internet.
- Every office PC uses the router as its gateway, so anything leaving the office goes through it.
- The DNS Server turns names into IP addresses, so staff can type a name like cloud.archstudio.example instead of a number.

##### Slide 14 · Proof: all 8 tests passed

- We ran every test from the CAD PC, and all 8 passed.
- Tests 1 to 3 were pings inside the office: to another PC, the Office Server and the DNS Server. Each one got 4 out of 4 replies.
- Tests 4 and 5 opened the office intranet page, first by its IP address and then by its name. Opening it by name shows DNS works.
- Test 6 pinged the cloud server through the router.
- [Point at the picture] Tests 7 and 8 opened the cloud page by IP and by name. This is test 8.
- We also found a fault. The cloud server had no web server, so tests 7 and 8 would have failed. We installed the web server, wrote its page and switched it on, and then both tests passed.
- That's my part. Now Marcus will talk about staying safe online.

## Nah'Kajsha Reid: live demo (slides 19 to 20)

Nah pre-recorded her demo, with the tutor's agreement: [MP2_Demo_Nah.mp4](05_Contribution/MP2_Demo_Nah.mp4) (2 minutes 52 seconds). In it she runs the pizza program in Flowgorithm with a normal order, an abnormal input that the program rejects and asks again, and the £20.05 rounding order, which now comes to £18.04. She explains that she ran 18 tests over three rounds and that every failed test has since been fixed.

## Charlie Broughton: conclusion (slide 21)

- Thanks, Nah.
- Over the last five weeks, we've worked on four different projects, but they all showed us how computing can be used to solve real problems.
- In our first project, we planned workstations for the Northwest Architecture Studio. We used BuildCores to select suitable hardware and SQL to organise the data and calculate the costs for all four job roles. This showed us the importance of matching technical requirements to a budget.
- Our second project was the Pennine Pizza Works ordering program. We developed and improved the program through different versions, using testing to identify problems and make the program more reliable. The rounding bug was an example of why checking the output matters, even when a program appears to work.
- For our third project, we designed and simulated the studio's office network using Filius. The network passed all eight tests, helping us demonstrate that the devices and connections were working as intended.
- Finally, our cybersecurity awareness project focused on helping everyday users stay safer online. We covered topics such as password security, two-factor authentication, phishing and safe device use. This showed us that computing isn't just about building systems; it's also about protecting the people who use them.
- We also considered how AI could support our work. AI can help explain unfamiliar concepts, suggest ideas and assist with drafting or troubleshooting, but its output cannot simply be assumed to be correct. We still need to check suggestions against our assignment requirements, test our programs and network, verify our SQL results, and use reliable sources for cybersecurity information. The responsibility for checking the final work remains with us.
- Overall, our biggest lesson was that a solution isn't finished just because we've built it. It needs to meet the requirements, be tested and produce results we can explain and trust. Across all four projects, we developed our technical skills, problem-solving and teamwork.
- Thank you for listening. We're happy to answer any questions.
