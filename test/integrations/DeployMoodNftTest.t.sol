//SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {DeployMoodNft} from "../../script/DeployMoodNft.s.sol";

contract DeployMoodNftTest is Test{

    DeployMoodNft public deployer;

    function setUp() public{
        deployer = new DeployMoodNft();
    }

    function testConvertSvgToUri() public view{
        string memory expectedURI = "data:image/svg+xml;base64,PHN2ZyBpZD0iZVI3cTRvandLY1YxIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2aWV3Qm94PSIwIDAgMzAwIDMwMCIgc2hhcGUtcmVuZGVyaW5nPSJnZW9tZXRyaWNQcmVjaXNpb24iIHRleHQtcmVuZGVyaW5nPSJnZW9tZXRyaWNQcmVjaXNpb24iIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9yOnRyYW5zcGFyZW50Ij48ZWxsaXBzZSByeD0iNzguMDYzMDEiIHJ5PSI3My44NjIzMSIgdHJhbnNmb3JtPSJtYXRyaXgoMS41MzM2NDUgMCAwIDEuNTkwMDUgMTUwIDE1MCkiIGZpbGw9IiNlN2VkMDAiIHN0cm9rZS13aWR0aD0iMCIvPjxlbGxpcHNlIHJ4PSIzMCIgcnk9IjMwIiB0cmFuc2Zvcm09Im1hdHJpeCguNDkwMDkgMCAwIDAuNDkwMDgzIDEwNC40OTI0MTYgMTIxLjgyMDMwMykiIHN0cm9rZS13aWR0aD0iMCIvPjxlbGxpcHNlIHJ4PSIzMCIgcnk9IjMwIiB0cmFuc2Zvcm09Im1hdHJpeCguNDkwMDkgMCAwIDAuNDkwMDgzIDE5Ni4yMDc3MDcgMTIxLjgyMDMwMykiIHN0cm9rZS13aWR0aD0iMCIvPjxwYXRoIHN0eWxlPSJtaXgtYmxlbmQtbW9kZTpkYXJrZW4iIGQ9Ik0xMDEuNjkxOTUsMjA1LjgzNDMxYzE1LjM1MTkwOC00OC4zNjI4MDUsNzguMzM4NzctNTUuMzQ3MzQ1LDkzLjExNTUyLDIuODAwNDciIHRyYW5zZm9ybT0idHJhbnNsYXRlKDEuNzUwMjkgMTEuMjAxODY3KSIgZmlsbD0ibm9uZSIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utd2lkdGg9IjAuNiIvPjwvc3ZnPg==";
        string memory svg = '<svg id="eR7q4ojwKcV1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 300 300" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" style="background-color:transparent"><ellipse rx="78.06301" ry="73.86231" transform="matrix(1.533645 0 0 1.59005 150 150)" fill="#e7ed00" stroke-width="0"/><ellipse rx="30" ry="30" transform="matrix(.49009 0 0 0.490083 104.492416 121.820303)" stroke-width="0"/><ellipse rx="30" ry="30" transform="matrix(.49009 0 0 0.490083 196.207707 121.820303)" stroke-width="0"/><path style="mix-blend-mode:darken" d="M101.69195,205.83431c15.351908-48.362805,78.33877-55.347345,93.11552,2.80047" transform="translate(1.75029 11.201867)" fill="none" stroke="#000" stroke-width="0.6"/></svg>';
        string memory actualURI = deployer.svgToImageURI(svg);
        console.log(expectedURI);
        console.log(actualURI);
        assert(keccak256(abi.encodePacked(actualURI)) == keccak256(abi.encodePacked(expectedURI)));
    }
}
