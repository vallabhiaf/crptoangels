pragma solidity ^0.4.22;
import './ERC721Full.sol';
contract cryptoangels is ERC721Full{
    struct Angel{
        string name;
        int level;
        int vardaanpower;
        int shraappower;
    }
    Angel[] public angels;
    address public owner;
    function cryptoangels()public
    {
        owner==msg.sender;
    }
    function createAngels(string _name ,address _to){
        require(owner==msg.sender);
        uint id=angels.length;
        angels.push(Angel(_name,1,100,100));
        mint(_to,id);
        
        
    }
    function battle (uint _angelId,uint _targetId) onlyOwnerOf(_angelID) public{
        Angel storage angel1=angels(_angelID);
        Angel storage angel2=angels(_angelID);
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
