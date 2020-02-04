pragma solidity >=0.4.25 <0.7.0;

contract Hashmap{
    struct Data{
        uint value;
        address account;
    }
    mapping (uint => Data) accountData;

    function setValue(address account, uint key, uint value) public returns(bool isSuccessful) {
        if (accountData[key].account == address(0)) {
            accountData[key] = Data(value, account);
            return true;
        }
        return false;
    }

    function getValue(uint key) public view returns(uint) {
        Data storage d = accountData[key];
        return d.value;
    }

    function getAccount(uint key) public view returns(address) {
        Data storage d = accountData[key];
        return d.account;
    }
}