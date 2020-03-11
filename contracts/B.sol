pragma solidity ^0.5.0;

import "./A.sol";

contract B {

	A a;	
	uint256 valor2;

	constructor(address aAddress) public {
		a = A(aAddress);
		valor2 = 2;
	}

	function getValorDeA() public view returns (uint256) {
		uint256 valorDeA = a.getValor();		
		return valorDeA;
	}

	function getValorDeB() public view returns (uint256) {		
		return valor2;
	}

	function getAAddress() public view returns (address) {
		return address(a);
	}

}
