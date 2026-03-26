# Governance of Charon

This project is part of the [DTN-MTP](https://github.com/DTN-MTP/) organization.

## Roadmap & Goals

This project is in really early stage. So here is a rough roadmap of the project :

```
Specification -> Implementation for CSP (MVP) -> Implementation for TCP -> Deployment in space -> Support of multiple BPAs (hardy, picoDTN, ION)
```

## MVP

Charon is initially built as an adapter for the CubeSat Space Protocol, commissioned by [CSUM](https://csum.umontpellier.fr/en/home/). Their in-space network services communicate with Earth using the CSP protocol, but they can only send network packets when the satellite is close enough to their emitters; thus, sending commands to a satellite requires a human operator to trigger the transmission. Using the Bundle Protocol to store and carry CSP packets would make communications between cubesats and the control center delay/disruption tolerant. However, the current implementation of CSUMs's application don't implement the bundle protocol. So Charon proposes an MVP that creates a tunnel over a CSP connection to make it delay tolerant.

