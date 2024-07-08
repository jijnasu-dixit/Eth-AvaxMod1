pragma solidity ^0.8.13;

contract Validator {
    // Function to validate input using require
    function validateInput(uint input) public pure {
        // Require to check conditions like inputs, pre-execution conditions, and return values
        require(input > 10, "Input value must exceed 10");
    }

    // Function to validate input using revert
    function revertIfInvalid(uint input) public pure {
        // Revert is suitable for complex conditions
        if (input <= 10) {
            revert("Input value must exceed 10");
        }
    }

    // State variable to demonstrate assert
    uint public counter;

    function checkInvariant() public view {
        // Assert is used to check for internal errors and invariants
        // Here we assert that counter is always 0 as its value is not updated
        assert(counter == 0);
    }

    // Custom error definition
    error BalanceTooLow(uint availableBalance, uint requestedWithdrawAmount);

    // Function to demonstrate custom error
    function validateBalance(uint withdrawAmount) public view {
        uint balance = address(this).balance;
        if (balance < withdrawAmount) {
            revert BalanceTooLow({availableBalance: balance, requestedWithdrawAmount: withdrawAmount});
        }
    }
}
