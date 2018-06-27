contract Factory {

  address[] public contracts;

  function getContractCount() public constant returns(uint contractCount)
  {
    return contracts.length;
  }

  function newProduct()public returns(address newContract)
  {
    Product p = new Product();
    contracts.push(p);
    return p;
  }
}

contract Product {

  function getName() public constant returns (string name)
  {
    return "Contract";
  }    
}
