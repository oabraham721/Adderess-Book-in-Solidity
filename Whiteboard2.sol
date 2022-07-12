    pragma solidity ^ 0.8.1;

    contract myContract {

    uint public count = 0;
    string public constant name = "Samuel";
    //address private owner ;
    uint256 internal startTime; 
    Accounts[] public array;

    constructor () public{
        //owner = msg.sender;
        startTime = 1657236875;
    }
        struct Accounts {
            string firstName;
            uint balance;
            }
        
        modifier theTime (){
            require (block.timestamp > startTime, "not the owner");
            _;
        }

        function makeStruct (string memory firstName, uint balance) public {
            array.push(Accounts(firstName, balance));
            countPlus();
        }

        function viewName () internal returns (string memory){
            countPlus();
            return name;
        }

        function countPlus() public theTime{
            count +=1;
        }

    }

