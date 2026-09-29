# Section 1: Password Hygiene — Research Notes & Source Log

**Owner:** Marcus Weeks
**Mini Project 4:** Cyber-Security Awareness (team report)
**Research done:** 25/09/2026
**Referencing style:** UGM Harvard (University of Greater Manchester's own style, from LEAP Online). *Junior to confirm with the tutor on 30/09/2026.*

Every fact below was checked on the original source on 25/09/2026.

---

## Q1. What makes a password strong, and why did the advice change?

**What the sources say:**
- The old advice (make passwords complex: symbols, numbers, capitals) backfired. People can't remember lots of complex passwords, so they use predictable tricks like swapping "o" for "0". Attackers know these tricks, so forcing complexity actually makes passwords **more predictable** (NCSC, 2021).
- The NCSC now recommends **three random words**: long enough and strong enough for most uses, and easy to remember. Writing a password down is OK if it's kept somewhere safe (NCSC, N.D.a).
- The US standards body NIST now says services **must require at least 15 characters** for a password used on its own, **must not force mixes of character types**, and **must not force regular password changes** unless there's evidence the password was compromised. Services must also block passwords that are common or already leaked (NIST, 2025).
- A study of 15 password policies with over 20,000 participants found policies based on **length** can be both **more usable and more secure** than policies based on complexity (Shay et al., 2016).

**Who recommends it:** NCSC (UK), NIST (US), backed by Shay et al. (2016).

---

## Q2. How do password managers work? Benefits and risks?

**How they work:** you log in once with one main password, and the manager stores all your other passwords safely. It can create strong random passwords and fill them in for you (NCSC, N.D.b).

**Benefits:**
- A unique password for every account, without having to remember them (NCSC, N.D.b).
- Autofill only works on the real website, which helps protect against phishing (NCSC, N.D.b).
- Warnings when a password has been leaked (NCSC, N.D.b).
- NIST says services **must allow** password managers and autofill, because password managers make people more likely to choose stronger passwords (NIST, 2025).

**Risks:**
- A study of 13 popular password managers found real problems: some generated passwords weren't truly random, plus insecure default settings and some vulnerabilities, although they had improved over five years (Oesch and Ruoti, 2020).
- People don't always use them properly. Interviews with 30 people found users of built-in browser managers were driven more by convenience, and past data shows they more often use weak and reused passwords than users of separate managers (Pearman et al., 2019).

**Balance:** the NCSC says turning on 2-step verification is the first and most important step, then password managers on top (NCSC, N.D.b).

---

## Q3. What is credential reuse / credential stuffing? Real example?

**Credential reuse:** using the same password on more than one site. A study of leaked passwords from 11 websites estimated that **43–51% of users reuse the same password across multiple sites**, and people who "tweak" a password slightly between sites are still easy to guess (Das et al., 2014).

**Credential stuffing:** attackers take usernames and passwords leaked from one breach and automatically try them on lots of other sites. It works because people reuse passwords and don't turn on 2-step verification (Langlois, 2025).

- Verizon found that in the median case, only **49%** of a person's passwords were different from each other (Langlois, 2025).
- Credential stuffing made up a median **19%** of all daily login attempts at the organisations Verizon studied, rising to **25%** at large companies (Langlois, 2025).

**Real-world example: 23andMe (2023)**
- Between April and September 2023, a hacker used login details stolen from **other, unrelated breaches** to get into 23andMe accounts.
- **155,592 UK residents'** data was exposed: names, locations, ethnicity, family trees and health reports.
- The UK Information Commissioner's Office fined 23andMe **£2.31 million** on 17 June 2025 (ICO, 2025).

---

## Q4. What % of breaches come from weak or stolen passwords, and where does that figure come from?

- **22%** of breaches began with stolen or compromised login details. (Langlois, 2025). *Not claimed as the single most common way in: that wasn't confirmed on Verizon's own page.*
- **Where it comes from:** Verizon's *2025 Data Breach Investigations Report (DBIR)*. The figure is based on known ways in across **9,891** breaches (Langlois, 2025). The article is written by Verizon's own lead data scientist, so it's the original source, not a website quoting a website.

---

## Source checklist (brief needs 5+, incl. 1+ peer-reviewed, 2+ authoritative)

| # | Source | Type |
|---|---|---|
| 1 | NCSC (N.D.a) Three random words | Authoritative (UK government) |
| 2 | NCSC (2021) The logic behind three random words | Authoritative (UK government) |
| 3 | NCSC (N.D.b) Managing your passwords | Authoritative (UK government) |
| 4 | NIST (2025) SP 800-63B-4 | Authoritative (US government) |
| 5 | ICO (2025) 23andMe fine | Authoritative (UK regulator) |
| 6 | Langlois (2025) Verizon DBIR research | Industry breach report |
| 7 | Das et al. (2014) | **Peer-reviewed** (NDSS conference) |
| 8 | Shay et al. (2016) | **Peer-reviewed** (ACM journal) |
| 9 | Pearman et al. (2019) | **Peer-reviewed** (SOUPS conference) |
| 10 | Oesch and Ruoti (2020) | **Peer-reviewed** (USENIX Security) |

✅ 10 sources · ✅ 4 peer-reviewed · ✅ 5 authoritative

---

## Reference list (UGM Harvard)

Das, A., Bonneau, J., Caesar, M., Borisov, N. and Wang, X. (2014) The tangled web of password reuse. In: *Network and Distributed System Security Symposium (NDSS 2014)*. San Diego, 23-26 February 2014. [Online] Available from: https://www.ndss-symposium.org/ndss2014/ndss-2014-programme/tangled-web-password-reuse/. [Accessed 25 September 2026].

Information Commissioner's Office. (2025) *23andMe fined £2.31 million for failing to protect UK users' genetic data*. [Online] Available from: https://ico.org.uk/about-the-ico/media-centre/news-and-blogs/2025/06/23andme-fined-for-failing-to-protect-uk-users-genetic-data/. [Accessed 25 September 2026].

Langlois, P. (2025) *Additional 2025 DBIR research on credential stuffing*. [Online] Verizon Business. Available from: https://www.verizon.com/business/resources/articles/credential-stuffing-attacks-2025-dbir-research/. [Accessed 25 September 2026].

National Cyber Security Centre. (2021) *The logic behind three random words*. [Online] Available from: https://www.ncsc.gov.uk/blog-post/the-logic-behind-three-random-words. [Accessed 25 September 2026].

National Cyber Security Centre. (N.D.a) *Three random words*. [Online] Available from: https://www.ncsc.gov.uk/collection/top-tips-for-staying-secure-online/three-random-words. [Accessed 25 September 2026].

National Cyber Security Centre. (N.D.b) *Managing your passwords*. [Online] Available from: https://www.ncsc.gov.uk/collection/top-tips-for-staying-secure-online/password-managers. [Accessed 25 September 2026].

National Institute of Standards and Technology. (2025) *Digital identity guidelines: authentication and authenticator management (NIST Special Publication 800-63B-4)*. [Online] Gaithersburg, MD: NIST. Available from: https://pages.nist.gov/800-63-4/sp800-63b.html. [Accessed 25 September 2026].

Oesch, S. and Ruoti, S. (2020) That was then, this is now: a security evaluation of password generation, storage, and autofill in browser-based password managers. In: *Proceedings of the 29th USENIX Security Symposium*. August 2020. [Online] Berkeley, CA: USENIX Association, pp. 2165-2182. Available from: https://www.usenix.org/conference/usenixsecurity20/presentation/oesch. [Accessed 25 September 2026].

Pearman, S., Zhang, S.A., Bauer, L., Christin, N. and Cranor, L.F. (2019) Why people (don't) use password managers effectively. In: *Fifteenth Symposium on Usable Privacy and Security (SOUPS 2019)*. Santa Clara, CA, August 2019. [Online] Berkeley, CA: USENIX Association, pp. 319-338. Available from: https://www.usenix.org/conference/soups2019/presentation/pearman. [Accessed 25 September 2026].

Shay, R., Komanduri, S., Durity, A.L., Huh, P.S., Mazurek, M.L., Segreti, S.M., Ur, B., Bauer, L., Christin, N. and Cranor, L.F. (2016) Designing password policies for strength and usability. *ACM Transactions on Information and System Security*, [Online] 18(4), pp. 1-34. Available from: https://doi.org/10.1145/2891411. [Accessed 25 September 2026].

---

## Google Scholar check (25/09/2026)

All 4 peer-reviewed papers were found on Google Scholar. Authors, titles, years, journals and page numbers match the reference list above. Screenshots of each search and its "Cite" box are in `Evidence/GoogleScholar/`.

| Paper | Found on Google Scholar | Cited by | Screenshots |
|---|---|---|---|
| Das et al. (2014) | ✅ | 816 | Das2014_search.png, Das2014_cite.png |
| Shay et al. (2016) | ✅ | 202 | Shay2016_search.png, Shay2016_cite.png |
| Pearman et al. (2019) | ✅ | 253 | Pearman2019_search.png, Pearman2019_cite.png |
| Oesch and Ruoti (2020) | ✅ | 127 | Oesch2020_search.png, Oesch2020_cite.png |

**Why the reference list doesn't copy Google Scholar's "Harvard" button word for word:**
1. **Style.** The report uses UGM Harvard, the University of Greater Manchester's own style. Google Scholar's "Harvard" is a general version that doesn't match it.
2. **One error in Google Scholar.** For Das et al. (2014), Google Scholar's cite says "Vol. 14, No. 2014, pp. 23-26". NDSS papers have no volume or issue, and 23–26 is the conference dates (23–26 February 2014), not page numbers. Our version uses the DOI instead, which is correct.

---

## Things I haven't checked yet
- ~~Which Harvard variant the course uses~~ → UGM Harvard found on the uni's LEAP Online site (29/09/2026). Junior confirming with the tutor on 30/09.

---

## Sources added for the Introduction / Conclusion (29/09/2026)

Each claim checked on the live page on 29/09/2026 using the citation-verification skill.

| Source | Claim used | Checked wording on the page |
|---|---|---|
| Department for Science, Innovation and Technology (2025) *Cyber security breaches survey 2025* (published 10 April 2025) | 43% of UK businesses identified a breach or attack in the last 12 months | "down from 50% in 2024 to 43%" |
| Same survey | 65% of businesses that had a breach named phishing the most disruptive | "most disruptive types of attack (by 65% of the businesses and 63% of the charities)" |
| National Cyber Security Centre (N.D.c) *What we do at the NCSC* | Part of GCHQ, helps businesses, public sector and individuals; mission | "a part of GCHQ, helps businesses, the public sector and individuals..." / "Our mission is to make the UK the safest place to live and work online" |
| Verizon (2025) 2025 DBIR press release (published 23 April 2025) | Human involvement in breaches remains high | "Human involvement in breaches remains high" |
