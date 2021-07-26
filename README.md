# Acorn Finance Interfaces


```bash
$ truffle console

truffle> const oak = await IOak.at('0xfc9733C2e5ee38b3dd2459DFa119FcdB33Bc7793')

truffle> oak.getVaults()
[
  '0xccda6dC2B1DE0Ca7cCf702F40e52b8321b8be0e7',
  '0xb4097D3310642540970feb579a9Efd188EeeCc23'
]

truffle> const vault0 = await IVault.at('0xccda6dC2B1DE0Ca7cCf702F40e52b8321b8be0e7')  // Stake 3ACN for Acorn
truffle> const vault1 = await IVault.at('0xb4097D3310642540970feb579a9Efd188EeeCc23')  // Stake TTSwap <TT-Acorn> for Acorn

truffle> oak.ACORNPerBlock()  // All Vaults share these acorns (1 Acorn/block)
1000000000000000000

truffle> const total = await oak.totalAllocPoint() // 80e18

truffle> oak.poolInfo(0)
Result {
  want: '0x51dAe6236FBd0C93D203C57193587261f76B58aA', // Want 3ACN
  allocPoint: 40e18,                                  // Will allocate [40e18 / total(80e18)] Acorns per block
  lastRewardBlock: ...,
  accACORNPerShare: ...,
  strat: '0xccda6dC2B1DE0Ca7cCf702F40e52b8321b8be0e7' // Vault
}

truffle> oak.poolInfo(1)
Result {
  want: '0x1356D3BBF34451b624d5Ae10A498bB01DEbBc8B8', // Want TT-Acorn LP
  allocPoint: 40e18,
  lastRewardBlock: ...,
  accACORNPerShare: ...,
  strat: '0xb4097D3310642540970feb579a9Efd188EeeCc23' // Vault
}
```
