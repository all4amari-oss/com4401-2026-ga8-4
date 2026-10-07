---
title: "Building the Community Library Network in Filius"
subtitle: "COM4401 Networking Fundamentals: practice task (individual)"
author: "Marcus Weeks"
date: "7 October 2026"
---

# Part 1: The network

## Screenshot 1: the network

Three named computers and one switch, all cabled together in Design mode.

![Screenshot 1: Staff PC, Public PC and Library Server, each cabled to the switch.](Screenshot1_Network.png){width=15cm}

| Device | IP address | Subnet mask | Gateway | DNS |
|--------------|--------------|--------------|--------|--------|
| Library Server | 192.168.20.10 | 255.255.255.0 | blank | blank |
| Staff PC | 192.168.20.101 | 255.255.255.0 | blank | blank |
| Public PC | 192.168.20.102 | 255.255.255.0 | blank | blank |

```{=openxml}
<w:p><w:r><w:br w:type="page"/></w:r></w:p>
```

## Screenshot 2: ping from the Staff PC

![Screenshot 2: the Staff PC's Command Line showing 4 replies from 192.168.20.10 with 0% packet loss.](Screenshot2_Ping.png){width=11cm}

## Screenshot 3: the library page in the Staff PC's browser

![Screenshot 3: the Staff PC's web browser showing the Community Library Information Server page from http://192.168.20.10.](Screenshot3_WebPage.png){width=11cm}

```{=openxml}
<w:p><w:r><w:br w:type="page"/></w:r></w:p>
```

# Part 2: Client and server

In our network, the Staff PC was the client and the Library Server was the server. The Staff PC asked for the website and the Library Server provided it. First the Staff PC pinged the server at 192.168.20.10 to check it could reach it, and got 4 replies back with 0% packet loss. Then it opened http://192.168.20.10 in its browser, and the server sent back index.html, the page I saved on it.

# Part 3: Protocols and layers

## Evidence table

| Protocol | Screenshot | Top layer reached | What it did |
|--------|----------|---------|--------------------------|
| ARP | Figure A1 and A2 | Internet | The Staff PC asked every device "who has 192.168.20.10?" and the Library Server replied with its MAC address. |
| ICMP | Figure A1 and A3 | Internet | The ping: 4 echo requests ("are you there?") and 4 echo replies. |
| TCP | Figure B1 and B2 | Transport | The 3 handshakes (SYN, SYN/ACK, ACK) set up the connection before the page was sent. |
| HTTP | Figure B1 and B3 | Application | The Staff PC asked for the page (GET) and the server sent it back (200 OK). |
| DNS (extension) | Not done | | Optional extension, not attempted in this practice. |

## Why did ping use fewer layers than loading the web page?

The ping was just a quick knock on the door, so ICMP only used the Network and Internet layers to ask "are you there?" and get a reply. The web page needed more of an interaction: the Staff PC and the server did the 3 handshakes with TCP on the Transport layer (SYN, SYN/ACK, ACK), then HTTP carried the request and the page on the Application layer. In Filius the HTTP row had all four layers filled in, each one wrapped inside the one below, while the ping rows only had two.

```{=openxml}
<w:p><w:r><w:br w:type="page"/></w:r></w:p>
```

## Figures

![Figure A1: Data Exchange on the Staff PC during the ping. Rows 1 and 2 are ARP, rows 3 to 10 are ICMP.](StepA_DataExchange_ARP_ICMP.png){width=16cm}

![Figure A2: ARP row opened. Only the Network and Internet layers are filled in.](StepA_Detail_ARP.png){width=16cm}

![Figure A3: ICMP row opened (echo reply). Only the Network and Internet layers are filled in.](StepA_Detail_ICMP.png){width=12cm}

```{=openxml}
<w:p><w:r><w:br w:type="page"/></w:r></w:p>
```

![Figure B1: Data Exchange on the Staff PC while loading the page. Rows 11 to 13 are the TCP handshake, rows 14 and 16 are HTTP.](StepB_DataExchange_TCP_HTTP.png){width=14cm}

![Figure B2: TCP row opened (SYN). The Network, Internet and Transport layers are filled in.](StepB_Detail_TCP.png){width=7cm}

![Figure B3: HTTP row opened (200 OK). All four layers are filled in, with the page inside.](StepB_Detail_HTTP.png){width=8cm}
