// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.7.6;

import {IERC20} from '@openzeppelin/contracts/token/ERC20/IERC20.sol';

interface IDMMRouter02 {
  function addLiquidity(
    IERC20 tokenA,
    IERC20 tokenB,
    address pool,
    uint256 amountADesired,
    uint256 amountBDesired,
    uint256 amountAMin,
    uint256 amountBMin,
    uint256[2] memory vReserveRatioBounds,
    address to,
    uint256 deadline
  )
    external
    returns (
      uint256 amountA,
      uint256 amountB,
      uint256 liquidity
    );

  function removeLiquidity(
    IERC20 tokenA,
    IERC20 tokenB,
    address pool,
    uint256 liquidity,
    uint256 amountAMin,
    uint256 amountBMin,
    address to,
    uint256 deadline
  ) external returns (uint256 amountA, uint256 amountB);

  function swapExactTokensForTokensSupportingFeeOnTransferTokens(
    uint256 amountIn,
    uint256 amountOutMin,
    address[] calldata poolsPath,
    IERC20[] calldata path,
    address to,
    uint256 deadline
  ) external;
}
