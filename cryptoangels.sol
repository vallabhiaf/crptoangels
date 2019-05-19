pragma solidity ^0.4.22;
import "https://github.com/vallabhiaf/crptoangels/openzeppelin-solidity-1.9.0/contracts/token/ERC721/ERC721BasicToken.sol";
contract Cryptoangels is ERC721BasicToken{
    struct Angel{
        string name;
        int level;
        int vardaanpower;
        int shraappower;
    }
    Angel[] public angels;
    address public owner;
    function Cryptoangels() public
    {
        owner= msg.sender;
    }
    function createAngels(string _name ,address _to) public {
        require(owner==msg.sender);
        uint id=angels.length;
        angels.push(Angel(_name,1,100,100));
        _mint(_to,id);
        
        
    }
    function battle (uint _angelId,uint _targetId) onlyOwnerOf(_angelId) public{
        Angel storage angel1=angels[_angelId];
        Angel storage angel2=angels[_angelId];
        if(angel1.shraappower>=angel2.shraappower)
        {
            angel1.level +=1;
            angel1.vardaanpower +=10;
        }
        else
        {
            angel1.level +=1;
            angel1.vardaanpower +=10;
        }
        
    }
}
