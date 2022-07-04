pragma solidity 0.5.16;

contract Jackpot {
    
    event Transfer(address indexed from, address indexed to, uint256 tokens);
    event ParticipationApprouved(address indexed tokenOwner,address indexed spender,uint256 tokens);

    string name_;
    address owner_;
    uint256 totalSupply_;
    string endDate_;
    uint tokenPrice_;

    modifier checkOwner(){
        require(msg.sender == owner);
        _;
    }

    mapping(address => uint256) public balanceOf;

    //Construction d'une cagnotte
    constructor(string memory name, string memory endDate) public {
        owner = msg.sender;
        name_ = _name;
        endDate_ = _endDate;
        balanceOf[address(this)] = totalSupply;
    }

    //Retourner le total de la cagnotte
    function totalSupply() public view returns (uint256) {
        return totalSupply_;
    }

    //Pour la gestion de la date
    function Time_call() public returns (uint256){
        return now;
    }

    //Participation d'une valeur tokenPrice, jusqu'à une date limite endDate
    function participate(uint tokenPrice) external payable {
        require(Time_call() >= endDate, "Too late, it's closed !");
        require(balanceOf[msg.sender] >= value, "Your balance is too low");

        balanceOf[sender] -= msg.sender;
        balanceOf[owner] += msg.sender;
    }

    //Validation de la participation
    function validation_participation(address delegate, uint numTokens) public returns (bool) {
        emit ParticipationApprouved(msg.sender, delegate, numTokens);
        return true;
    }

    //Récupération de la somme par le propriétaire de la cagnotte
    function get_jackpot(owner, totalSupply) public returns (bool){
        require(Time_call() >= endDate, "Not yet available");

        balanceOf[_totalToken] -= _totalToken;
        balanceOf[owner] += _totalToken;

        balanceOf[_totalToken].transfer(address(this).balance);
    }

}
