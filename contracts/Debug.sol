pragma solidity ^0.5.0;

contract Enum {
    enum Operation {
        ONE,
        TWO,
        THREE
    }
}

contract Debug {

    bytes32 public constant CONTRACT_CONST_ONE = 0x180e6fe977456676413d21594ff72b84df056409812ba2e51d28187117f143c2;
    bytes32 public domainSeparator;

    function encodeSubscriptionData(
        address one,
        uint256 two,
        bytes memory three,
        Enum.Operation four,
        uint256 five,
        uint256 six,
        uint256 seven,
        address eight,
        address nine,
        bytes memory ten
    )
        public
        view
        returns (bytes memory)
    {
        bytes32 eleven = keccak256(
            abi.encode(CONTRACT_CONST_ONE, one, two, keccak256(three), four, five, six, seven, eight, nine, keccak256(ten))
        );
        return abi.encodePacked(byte(0x19), byte(0x01), domainSeparator, eleven);
    }

    function working(
        address one,
        uint256 two,
        bytes memory three,
        Enum.Operation four,
        uint256 five,
        uint256 six,
        uint256 seven,
        address eight,
        address payable nine,
        bytes memory ten,
        bytes memory eleven
    )
        public
        returns (bool fourteen)
    {
        uint256 twelve = gasleft();

        bytes memory thirteen = encodeSubscriptionData(
            one, two, three, four,
            five, six, seven, eight, nine,
            ten
        );
    }

//    function notWorking(
//        address one,
//        uint256 two,
//        bytes calldata three,
//        Enum.Operation four,
//        uint256 five,
//        uint256 six,
//        uint256 seven,
//        address eight,
//        address payable nine,
//        bytes calldata ten,
//        bytes calldata eleven
//    )
//        external
//        returns (bool fourteen)
//    {
//        uint256 twelve = gasleft();
//
//        bytes memory thirteen = encodeSubscriptionData(
//            one, two, three, four,
//            five, six, seven, eight, nine,
//            ten
//        );
//    }

}