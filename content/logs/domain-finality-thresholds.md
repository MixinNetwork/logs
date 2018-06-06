---
title: "Domain Finality Thresholds"
date: 2018-06-05T22:00:00
---

Mixin is a BFT network with settlement finality, while acting as a transaction improvement layer for other blockchains, e.g. Bitcoin, Ethereum, etc.

Most blockchains such as Bitcoin don't have finality guarantees. Rather, they have probabilistic finality. What this means is, the deeper down the chain a block is, the less likely the chain it's on will get reorganized, giving you a high level of confidence that the block is "final".

So Mixin domains will wait for some finality threshold blocks to implement this pseudo-finality over the non-finality chain. Currently, Mixin has seven different supported blockchains. Their finality thresholds are listed below.

- Bitcoin 12
- Ethereum 100
- Bitcoin Cash 36
- Litecoin 72
- Ethereum Classic 200
- Siacoin 36
- Ripple 12
