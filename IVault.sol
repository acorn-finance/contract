pragma solidity >=0.4.22 <0.9.0;

interface IVault {
    function wantLockedTotal() external view returns (uint256);
    function sharesTotal() external view returns (uint256);

    function earn() external;
    function deposit(address user, uint256 amount) external payable returns (uint256);
    function withdraw(address user, uint256 amount) external returns (uint256);
}
