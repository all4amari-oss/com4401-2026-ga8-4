# Cyber-Security Awareness: How to Stay Safe Online

**Module:** COM4401 Foundations of Computer Science and Academic Skills
**University:** University of Greater Manchester
**Team:** The Avengers
**Group members:** Marcus Weeks, Charlie, Sorana, Nah, Mo
**Date:** *[add on submission]*

---

## Contents

*Generated last, once every section is in and the numbering is final (brief page 22).*

- Introduction
- 1. Password Hygiene (Marcus)
- 2. Two-Factor Authentication (Charlie)
- 3. Recognising Phishing (Sorana)
- 4. Safe Use of Devices (Nah)
- 5. Safe Use of Public Wi-Fi (Mo)
- Conclusion
- Reference List

---

## Introduction

*Everyone contributes to the introduction (brief page 22). Marcus's part is below. Other members add theirs, then the team merges it into one style.*

Most of us now bank, shop, work and keep in touch online, and every one of those accounts is something an attacker can target. In 2025, 43% of UK businesses reported a cyber security breach or attack in the previous 12 months (Department for Science, Innovation and Technology, 2025). Among those that had one, 65% named phishing as the most disruptive type of attack (DSIT, 2025).

Many attacks rely on people's habits more than on weak technology. An estimated 43% to 51% of users reuse the same password across different sites (Das et al., 2014), and in 2025 Verizon found that only 49% of a typical person's passwords were different from each other (Langlois, 2025). The 23andMe breach in 2023 was carried out using login details that people had reused after earlier, unrelated breaches (Information Commissioner's Office, 2025).

This report uses official bodies wherever possible. The National Cyber Security Centre (NCSC) is part of GCHQ and helps businesses, the public sector and individuals protect the online services and devices they depend on (National Cyber Security Centre, N.D.c). Its guidance is written to protect the public, not to sell a product, which is why it is used here ahead of company blogs.

---

## 1. Password Hygiene

*Section owner: Marcus Weeks*

Almost every online account starts with a password, which makes passwords one of the easiest ways in for an attacker. Verizon's 2025 Data Breach Investigations Report found that stolen or compromised login details were the starting point in 22% of the breaches it studied (Langlois, 2025).

### 1.1 What makes a password strong

For years the advice was to make passwords complicated, with capital letters, numbers and symbols, and to change them every few months. That advice backfired. People fall back on predictable tricks to meet complexity rules, like swapping the letter "o" for a zero or adding "!" to the end. Attackers know these tricks and use them to shape their guessing, so forcing complexity ends up producing more predictable passwords (NCSC, 2021). Most of us also have lots of passwords, and memorising lots of complex ones is close to impossible (NCSC, N.D.a).

In the UK, the National Cyber Security Centre (NCSC) now recommends joining three random words together. That gives a password long enough and strong enough for most accounts, and far easier to remember. The NCSC also says writing a password down is fine, as long as you keep it somewhere safe (NCSC, N.D.a).

In the US, the National Institute of Standards and Technology (NIST) has gone further. Its latest guidance says services must require at least 15 characters for a password used on its own. They must not force a mix of character types, and must not make people change passwords on a schedule unless there is evidence the password has been leaked. Services should check new passwords against lists of common and already-leaked ones instead (National Institute of Standards and Technology, 2025).

A study of 15 different password rules with over 20,000 participants found that rules based on length can produce passwords that are both stronger and easier to use than rules based on complexity (Shay et al., 2016). The NCSC makes the same point about length. A password made of several words comes out longer, without relying on predictable add-ons like an "!" at the end (NCSC, 2021).

### 1.2 Password managers

Remembering a different password for every account is difficult, even with three random words (NCSC, N.D.b). A password manager takes that job off you. You log in once with one strong main password, and the manager stores the rest, creates new random passwords and fills them in for you (NCSC, N.D.b).

Every account gets its own password, so one leak does not open the others. Autofill only works on the genuine website, which gives some protection against fake login pages, and many managers warn you if one of your passwords turns up in a data breach (NCSC, N.D.b). NIST now says websites must allow password managers and autofill, because password managers make people more likely to choose stronger passwords (NIST, 2025).

They are not perfect. A security test of 13 popular password managers found that some generated passwords were not truly random, along with insecure default settings and other weaknesses, although the managers had improved over the previous five years (Oesch and Ruoti, 2020). Interviews with 30 users found that people using the password manager built into their browser were mostly after convenience, while people who installed a separate one cared more about security. Earlier data suggested the convenience group more often kept weak or reused passwords (Pearman et al., 2019).

Even with those weaknesses, the NCSC still recommends password managers. Its advice is to turn on 2-step verification first, as the most important step, then use a password manager on top of it (NCSC, N.D.b).

### 1.3 Credential reuse and credential stuffing

Credential reuse means using the same password on more than one account. A study of leaked passwords from 11 websites estimated that 43% to 51% of users reuse the same password across sites. Changing a password slightly between sites did not help much. Using a known password from one site, the researchers' method guessed 30% of these tweaked passwords within 100 attempts (Das et al., 2014). More recent Verizon data found that, in the median case, only 49% of a person's passwords were different from each other (Langlois, 2025).

Reuse is what makes credential stuffing work. Attackers take usernames and passwords leaked in one breach and use software to try them on many other sites. Verizon found that credential stuffing made up a median of 19% of all daily login attempts at the organisations it studied, rising to 25% at large companies (Langlois, 2025).

Between April and September 2023, an attacker used login details stolen from other, unrelated breaches to get into accounts on the genetic testing site 23andMe. The attack gave access to the personal information of 155,592 people in the UK, potentially revealing names, locations, ethnicity, family trees and health reports. In June 2025 the UK Information Commissioner's Office fined 23andMe £2.31 million for failing to protect that data (Information Commissioner's Office, 2025).

### 1.4 Where the numbers come from

The 22% figure at the start of this section comes from Verizon's 2025 Data Breach Investigations Report, and covers the known ways attackers got in across 9,891 breaches (Langlois, 2025). It is taken from the write-up by Verizon's own research team, which is the original source.

### 1.5 Password hygiene at a glance

| Do | Don't |
|---|---|
| Use three random words, or at least 15 characters (NCSC, N.D.a; NIST, 2025) | Rely on symbols and number swaps like "P@ssw0rd" (NCSC, 2021) |
| Use a different password for every account (NCSC, N.D.b) | Reuse a password, even with small changes (Das et al., 2014) |
| Store them in a password manager, or write them down and keep them somewhere safe (NCSC, N.D.a; N.D.b) | Leave written passwords where other people can see them (NCSC, N.D.a) |
| Turn on 2-step verification, starting with email (NCSC, N.D.b) | Assume a strong password alone is enough (NCSC, N.D.b) |
| Change a password straight away if it has been leaked (NIST, 2025) | Change passwords on a schedule for no reason (NIST, 2025) |

---

---

## 2. Two-Factor Authentication

*[Charlie to add]*

---

## 3. Recognising Phishing

*[Sorana to add]*

---

## 4. Safe Use of Devices

*[Nah to add]*

---

## 5. Safe Use of Public Wi-Fi

*[Mo to add]*

---

## Conclusion

*Everyone contributes to the conclusion (brief page 22). Marcus's part is below.*

Use three random words, or at least 15 characters, for each account (NCSC, N.D.a; NIST, 2025). Don't reuse passwords, because attackers use software to try leaked passwords on many other sites (Langlois, 2025). Let a password manager remember them, and turn on 2-step verification first, starting with your email account (NCSC, N.D.b). If a password is leaked, change it straight away. Otherwise there is no need to change passwords on a schedule (NIST, 2025).

---

## Reference List

*UGM Harvard. One alphabetised list for the whole team. Add your sources in alphabetical order.*

Das, A., Bonneau, J., Caesar, M., Borisov, N. and Wang, X. (2014) The tangled web of password reuse. In: *Network and Distributed System Security Symposium (NDSS 2014)*. San Diego, 23-26 February 2014. [Online] Available from: https://www.ndss-symposium.org/ndss2014/ndss-2014-programme/tangled-web-password-reuse/. [Accessed 25 September 2026].

Department for Science, Innovation and Technology. (2025) *Cyber security breaches survey 2025*. [Online] Available from: https://www.gov.uk/government/statistics/cyber-security-breaches-survey-2025/cyber-security-breaches-survey-2025. [Accessed 29 September 2026].

Information Commissioner's Office. (2025) *23andMe fined £2.31 million for failing to protect UK users' genetic data*. [Online] Available from: https://ico.org.uk/about-the-ico/media-centre/news-and-blogs/2025/06/23andme-fined-for-failing-to-protect-uk-users-genetic-data/. [Accessed 25 September 2026].

Langlois, P. (2025) *Additional 2025 DBIR research on credential stuffing*. [Online] Verizon Business. Available from: https://www.verizon.com/business/resources/articles/credential-stuffing-attacks-2025-dbir-research/. [Accessed 25 September 2026].

National Cyber Security Centre. (2021) *The logic behind three random words*. [Online] Available from: https://www.ncsc.gov.uk/blog-post/the-logic-behind-three-random-words. [Accessed 25 September 2026].

National Cyber Security Centre. (N.D.a) *Three random words*. [Online] Available from: https://www.ncsc.gov.uk/collection/top-tips-for-staying-secure-online/three-random-words. [Accessed 25 September 2026].

National Cyber Security Centre. (N.D.b) *Managing your passwords*. [Online] Available from: https://www.ncsc.gov.uk/collection/top-tips-for-staying-secure-online/password-managers. [Accessed 25 September 2026].

National Cyber Security Centre. (N.D.c) *What we do at the NCSC*. [Online] Available from: https://www.ncsc.gov.uk/section/about-ncsc/what-we-do. [Accessed 29 September 2026].

National Institute of Standards and Technology. (2025) *Digital identity guidelines: authentication and authenticator management (NIST Special Publication 800-63B-4)*. [Online] Gaithersburg, MD: NIST. Available from: https://pages.nist.gov/800-63-4/sp800-63b.html. [Accessed 25 September 2026].

Oesch, S. and Ruoti, S. (2020) That was then, this is now: a security evaluation of password generation, storage, and autofill in browser-based password managers. In: *Proceedings of the 29th USENIX Security Symposium*. August 2020. [Online] Berkeley, CA: USENIX Association, pp. 2165-2182. Available from: https://www.usenix.org/conference/usenixsecurity20/presentation/oesch. [Accessed 25 September 2026].

Pearman, S., Zhang, S.A., Bauer, L., Christin, N. and Cranor, L.F. (2019) Why people (don't) use password managers effectively. In: *Fifteenth Symposium on Usable Privacy and Security (SOUPS 2019)*. Santa Clara, CA, August 2019. [Online] Berkeley, CA: USENIX Association, pp. 319-338. Available from: https://www.usenix.org/conference/soups2019/presentation/pearman. [Accessed 25 September 2026].

Shay, R., Komanduri, S., Durity, A.L., Huh, P.S., Mazurek, M.L., Segreti, S.M., Ur, B., Bauer, L., Christin, N. and Cranor, L.F. (2016) Designing password policies for strength and usability. *ACM Transactions on Information and System Security*, [Online] 18(4), pp. 1-34. Available from: https://doi.org/10.1145/2891411. [Accessed 25 September 2026].
