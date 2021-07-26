pragma solidity >=0.4.22 <0.9.0;

interface IOak {
    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);

    function ACORN() external view returns (address);
    function ACORNPerBlock() external view returns (uint256);
    function startTime() external view returns (uint256);
    function userInfo(uint256 pid, address user) external view returns (uint256 shares, uint256 rewardDebt);
    function totalAllocPoint() external view returns (uint256);
    function poolInfo(uint256 pid) external view returns (address want, uint256 allocPoint, uint256 lastRewardBlock, uint256 accACORNPerShare, address strat);
    function woodpecker() external view returns (uint256);
    function woodpeckerReward() external view returns (uint256);
    function poolLength() external view returns (uint256);
    function pendingACORN(uint256 pid, address user) external view returns (uint256);
    function stakedWantTokens(uint256 pid, address user) external view returns (uint256);
    function getVaults() external view returns (address[] memory);

    function deposit(uint256 pid, uint256 amount) external payable;
    function withdraw(uint256 pid, uint256 amount) external;
    function withdrawAll(uint256 pid) external;
    function harvest(uint256 pid) external;
    function emergencyWithdraw(uint256 pid) external;
}
