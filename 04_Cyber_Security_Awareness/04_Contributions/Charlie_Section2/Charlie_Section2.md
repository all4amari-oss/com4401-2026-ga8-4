# Section 2: Two-factor authentication

## 2.1 Authentication factors

Authentication factors describe what a user must provide or demonstrate to prove their identity. NIST identifies three categories: something you know, something you have and something you are (NIST, 2025).

Something you know refers to information known by the user, such as a password, PIN or passphrase. Knowledge-based credentials can be guessed, stolen or exposed through phishing. NIST states that passwords are not phishing-resistant (NIST, 2025). Something you have refers to possession of a device or authentication token, such as a smartphone used for authentication, an authenticator app on a trusted device, a hardware security key or a token/code generator (NIST, 2025). Something you are refers to a biometric characteristic, such as a fingerprint or facial recognition (NIST, 2025).

Two passwords do not constitute 2FA simply because two credentials are being entered. Both are examples of “something you know”, so they do not represent two different authentication factors. NIST explains that multiple instances of the same factor still constitute single-factor authentication (NIST, 2025). For example, a password and PIN do not provide two different factors, whereas a password and an authenticator on a trusted device provide “something you know” and “something you have”.

## 2.2 Comparing SMS codes, authenticator apps and hardware security keys

SMS-based 2FA sends a one-time code to the user’s registered phone number and is widely available. However, SMS-based authentication can be attacked through SIM swapping, where an attacker persuades a mobile provider to transfer the victim’s number to a SIM controlled by the attacker. NIST also identifies risks involving telephone-number reassignment and weaknesses in the public telephone network (NIST, 2025; CISA, 2023).

Authenticator apps can generate one-time codes or provide approval notifications on a trusted device. They are generally more secure than SMS. A 2023 Microsoft research study also found that dedicated MFA applications outperformed SMS-based authentication in the dataset examined (Meyer et al., 2023). Authenticator apps are not automatically phishing-resistant. For example, an attacker can use phishing to trick a user into giving them a time-based one-time password. Push-based authentication can also suffer from “prompt fatigue” or push-bombing, where an attacker repeatedly sends approval requests hoping that the user eventually accepts one. The NCSC identifies this limitation for challenge-based authenticator apps and CISA identifies push-bombing and user error as weaknesses of ordinary push notification MFA (CISA, 2023; NCSC, 2024).

Hardware security keys are physical authentication devices that the user must possess to authenticate. FIDO2 security keys use public-key cryptography and provide strong resistance against phishing and credential theft (NCSC, 2024). The NCSC identifies FIDO2 credentials, including roaming security keys, at the top of its recommended MFA methods because they provide strong authentication and phishing resistance (NCSC, 2024). However, hardware security keys can be lost or forgotten, and organisations may need to manage the cost of purchasing and replacing them (NCSC, 2024).

A peer-reviewed study of 62 banking customers found that a two-factor method using a hardware security token was perceived as more secure than single-factor authentication. However, participants rated the two-factor method lower for usability, convenience and ease of use, demonstrating a trade-off between security and usability (Gunson et al., 2011).

## 2.3 Evidence for the effectiveness of MFA

The widely repeated 99.9% figure can be traced to Microsoft’s 2019 work. Alex Weinert’s Microsoft publication reported that accounts protected by MFA were more than 99.9% less likely to be compromised (Microsoft, 2019). However, this figure came from Microsoft’s research and should not be presented as a universal guarantee for every MFA implementation or every type of attack (Microsoft, 2019). The researchers analysed a large dataset of Microsoft Azure Active Directory users and found that MFA reduced the risk of account compromise by 99.22% across the population (Meyer et al., 2023). This reduced the risk by 98.56% when credentials had already been leaked and showed that dedicated MFA applications performed better than SMS-based authentication (Meyer et al., 2023).

## 2.4 Why SMS can still be used

The NCSC recommends that stronger MFA methods should be used where possible but also states that message-based methods such as SMS may still provide additional protection when stronger alternatives are unavailable (NCSC, 2024). Using a second authentication factor creates an additional barrier even if an attacker has obtained the user’s password (NCSC, 2024; Meyer et al., 2023). CISA similarly classifies SMS/voice MFA as a weaker option because of its vulnerabilities but recognises that it can still add protection compared with having password-only authentication (CISA, 2023).

With password-only authentication, a stolen password may allow account access. With SMS-based 2FA, the attacker must also obtain the SMS code, creating an additional barrier. Authenticator applications provide a stronger alternative to SMS in many implementations, while FIDO2 security keys provide phishing-resistant cryptographic authentication (Meyer et al., 2023; NCSC, 2024).

## References

CISA (2023) *Implementing phishing-resistant MFA*. Cybersecurity and Infrastructure Security Agency. Available at: https://www.cisa.gov/ (Accessed: 28 September 2026).

Gunson, N., Marshall, D., Morton, H. and Jack, M. (2011) ‘User perceptions of security and usability of single-factor and two-factor authentication in automated telephone banking’, *Computers and Security*, 30(4), pp. 208–220. doi: 10.1016/j.cose.2010.12.001.

Meyer, L.A., Romero, S., Bertoli, G., Burt, T., Weinert, A. and Lavista Ferres, J.M. (2023) ‘How effective is multifactor authentication at deterring cyberattacks?’. Available at: https://arxiv.org/abs/2305.00945 (Accessed: 28 September 2026).

Microsoft (2019) *Your Pa$$word doesn’t matter*. Available at: https://techcommunity.microsoft.com/ (Accessed: 30 September 2026).

National Cyber Security Centre (2024) *Multi-factor authentication for your corporate online services: Recommended types of MFA*. Available at: https://www.ncsc.gov.uk/collection/mfa-for-your-corporate-online-services/recommended-types-of-mfa (Accessed: 28 September 2026).

NIST (2025) *Digital Identity Guidelines: Authentication and Authenticator Management (SP 800-63B)*. National Institute of Standards and Technology. Available at: https://pages.nist.gov/800-63-4/sp800-63b/ (Accessed: 28 September 2026).
