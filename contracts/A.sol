pragma solidity ^0.5.0;

contract A {

	uint256 valor;

	constructor() public {
		valor = uint256(1);
	}

	function getValor() public view returns (uint256) {
		return valor;
	}
}
