# Validator Smart Contract

## Overview

The Validator Smart Contract is designed to demonstrate various error handling mechanisms in Solidity. This contract provides functions to validate inputs and ensure specific conditions are met using `require`, `revert`, and `assert` statements. Additionally, it includes a custom error for more informative revert messages.

## Purpose

The primary purpose of this project is to illustrate how to:
- Use `require` to validate inputs and preconditions.
- Use `revert` for complex condition checks.
- Use `assert` to test for internal errors and invariants.
- Implement custom errors for detailed revert messages.

## Functionality

### validateInput

```solidity
function validateInput(uint input) public pure
```

- Validates that the `input` value is greater than 10.
- Uses `require` to enforce this condition.
- Throws an error message "Input value must exceed 10" if the condition is not met.

### revertIfInvalid

```solidity
function revertIfInvalid(uint input) public pure
```

- Validates that the `input` value is greater than 10.
- Uses `revert` for complex condition checks.
- Throws an error message "Input value must exceed 10" if the condition is not met.

### checkInvariant

```solidity
function checkInvariant() public view
```

- Asserts that the state variable `counter` is always equal to 0.
- Uses `assert` to ensure this invariant condition.
- Intended to demonstrate the use of `assert` for internal consistency checks.

### validateBalance

```solidity
function validateBalance(uint withdrawAmount) public view
```

- Checks if the contract's balance is sufficient for the requested withdrawal amount.
- Uses a custom error `BalanceTooLow` to provide detailed error information.
- Throws `BalanceTooLow` error with the available balance and requested withdrawal amount if the balance is insufficient.

## Custom Error

### BalanceTooLow

```solidity
error BalanceTooLow(uint availableBalance, uint requestedWithdrawAmount);
```

- A custom error that provides detailed information when the contract's balance is insufficient for a requested withdrawal.
- Includes `availableBalance` and `requestedWithdrawAmount` in the error message for clarity.

## Usage

1. Deploy the `Validator` smart contract to your desired Ethereum network.
2. Interact with the contract functions using a tool like Remix, Truffle, or Hardhat.
3. Call the `validateInput` and `revertIfInvalid` functions with different input values to see the error handling in action.
4. Use the `checkInvariant` function to verify the invariant condition.
5. Call the `validateBalance` function to test the custom error with various withdrawal amounts.

## License

This project is open-source and available under the MIT License. Feel free to use, modify, and distribute the code as per the license terms.


