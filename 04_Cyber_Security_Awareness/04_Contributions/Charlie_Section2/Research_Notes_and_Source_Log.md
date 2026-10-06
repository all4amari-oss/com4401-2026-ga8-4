# Research Notes and Source Log — Charlie Section 2

## Question 1 — Authentication factors

### NIST (2025)
**What the source supports:** NIST identifies authentication factors as something you know, something you have and something you are. It supports the classification of passwords/PINs as knowledge-based factors, possession of devices or cryptographic authenticators as something you have, and biometric characteristics as something you are.

**How it was used:** Used for the definitions and classifications in Section 2.1 and for the point that two credentials from the same factor category do not create two-factor authentication.

**Harvard reference:**  
NIST (2025) *Digital Identity Guidelines: Authentication and Authenticator Management (SP 800-63B)*. National Institute of Standards and Technology. Available at: https://pages.nist.gov/800-63-4/sp800-63b/ (Accessed: 28 September 2026).

## Question 2 — SMS codes, authenticator apps and hardware security keys

### NIST (2025)
**What the source supports:** NIST identifies weaknesses associated with telephone-based authentication, including telephone-number reassignment and the public telephone network.

**How it was used:** Used to support the weaknesses of SMS-based authentication.

### CISA (2023)
**What the source supports:** CISA's guidance discusses phishing-resistant MFA and identifies weaknesses affecting SMS/voice MFA and ordinary push-notification MFA, including phishing, SIM-swapping/telephone-related risks and push-bombing.

**How it was used:** Used in Section 2.2 for SMS and push-notification weaknesses.

**Harvard reference:**  
CISA (2023) *Implementing phishing-resistant MFA*. Cybersecurity and Infrastructure Security Agency. Available at: https://www.cisa.gov/ (Accessed: 28 September 2026).

### National Cyber Security Centre (2024)
**What the source supports:** The NCSC's recommended MFA methods place stronger methods such as FIDO2 above message-based methods. The guidance explains weaknesses of message-based methods and limitations of challenge-based authenticator apps, and describes FIDO2 security keys as strongly resistant to phishing.

**How it was used:** Used for the comparison of authenticator apps, SMS and hardware security keys.

**Harvard reference:**  
National Cyber Security Centre (2024) *Multi-factor authentication for your corporate online services: Recommended types of MFA*. Available at: https://www.ncsc.gov.uk/collection/mfa-for-your-corporate-online-services/recommended-types-of-mfa (Accessed: 28 September 2026).

### Gunson et al. (2011) — peer-reviewed study
**What the source supports:** The study describes a controlled experiment with 62 banking customers comparing a knowledge-based single-factor authentication procedure with a two-factor method using a hardware security token. Participants perceived the two-factor version as more secure, but it received lower usability, convenience and ease-of-use ratings.

**How it was used:** Used as the peer-reviewed evidence for the security/usability trade-off of hardware-token-based 2FA.

**Harvard reference:**  
Gunson, N., Marshall, D., Morton, H. and Jack, M. (2011) ‘User perceptions of security and usability of single-factor and two-factor authentication in automated telephone banking’, *Computers and Security*, 30(4), pp. 208–220. doi: 10.1016/j.cose.2010.12.001.

**Evidence file:** `Evidence/GoogleScholar/Gunson_2011_GoogleScholar.png`

## Question 3 — Effectiveness of MFA and original source of statistics

### Microsoft (2019)
**What the source supports:** The widely repeated “99.9%” claim comes from Microsoft's 2019 work. The claim should be treated in context rather than as a universal guarantee for every MFA method or attack.

**How it was used:** Used to trace the origin of the 99.9% figure.

**Harvard reference:**  
Microsoft (2019) *Your Pa$$word doesn’t matter*. Available at: https://techcommunity.microsoft.com/ (Accessed: 30 August 2026).

### Meyer et al. (2023)
**What the source supports:** The study analysed a large dataset of Microsoft Azure Active Directory users and reported a 99.22% reduction in risk of account compromise across the population studied and a 98.56% reduction when credentials had already been leaked. It also reported that dedicated MFA applications outperformed SMS-based authentication in the study.

**How it was used:** Used as the more specific evidence for MFA effectiveness and the comparison between MFA applications and SMS.

**Harvard reference:**  
Meyer, L.A., Romero, S., Bertoli, G., Burt, T., Weinert, A. and Lavista Ferres, J.M. (2023) ‘How effective is multifactor authentication at deterring cyberattacks?’. Available at: https://arxiv.org/abs/2305.00945 (Accessed: 28 September 2026).

## Question 4 — Why SMS can still be better than no second factor

### National Cyber Security Centre (2024)
**What the source supports:** Stronger MFA methods should be used where possible, but message-based methods such as SMS may still provide additional protection where stronger alternatives are unavailable.

### CISA (2023)
**What the source supports:** CISA treats SMS/voice MFA as a weaker option because of its vulnerabilities, but it can still add protection compared with password-only authentication.

**How it was used:** Used to explain why SMS is not the strongest method but can still provide an additional barrier.

## Source checklist

- 6 sources collected: CISA, Gunson et al., Meyer et al., Microsoft, NCSC and NIST.
- Official/authoritative sources: NIST, NCSC and CISA.
- Peer-reviewed journal paper: Gunson et al. (2011).
- Google Scholar evidence saved in `Evidence/GoogleScholar`.
- Statistics traced to Microsoft (2019) and Meyer et al. (2023).
