//Override: You can change some behavior of parent contract function by using the “override” 
//keyword and overriding the parent function in child contract. Below the example, 
//you can see that we have overriden “decimals” function of ERC20 contract to have just 8 digits for our custom token

function decimals() public view virtual override returns (uint8) {
        return 8;
    }

//super: The super keyword will let you call functions defined in a parent contract in their original form. 
//They can be used in child contract using “super” keyword exactly as they are defined in parent contract even if they are overriden.

super.revokeRole(role, account);


//Hooks: Hooks are just simple functions that are called before or after some action takes place. 
//They provide a centralized point to hook into and extend the original behavior.

//In the below example “_beforeTokenTransfer” is a hook that will check whether the “to” recipient is
//valid or not based on the criteria we define in “_validRecipient” function

pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20WithSafeTransfer is ERC20 {
    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal virtual override
    {
        super._beforeTokenTransfer(from, to, amount);

        require(_validRecipient(to), "ERC20WithSafeTransfer: invalid recipient");
    }

    function _validRecipient(address to) private view returns (bool) {
        ...
    }

    ...
}
