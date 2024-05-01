// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

import { EncodedLengths } from "@latticexyz/store/src/EncodedLengths.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";
import { createTemplate } from "base/libraries/templates/createTemplate.sol";
import { UnitTypes, CombatArchetypes, TerrainTypes, StructureTypes } from "base/codegen/common.sol";

import { Combat, UnitType, GoldOnKill, Movable, Untraversable } from "base/codegen/index.sol";

bytes32 constant templateId = "Archer";
bytes32 constant ArcherTemplateId = templateId;
uint256 constant LENGTH = 5;

function ArcherTemplate() {
  bytes32[] memory tableIds = new bytes32[](LENGTH);
  bytes32[] memory encodedLengthss = new bytes32[](LENGTH);
  bytes[] memory staticDatas = new bytes[](LENGTH);
  bytes[] memory dynamicDatas = new bytes[](LENGTH);

  bytes memory staticData;
  EncodedLengths encodedLengths;
  bytes memory dynamicData;

  tableIds[0] = ResourceId.unwrap(Combat._tableId);
  tableIds[1] = ResourceId.unwrap(UnitType._tableId);
  tableIds[2] = ResourceId.unwrap(GoldOnKill._tableId);
  tableIds[3] = ResourceId.unwrap(Movable._tableId);
  tableIds[4] = ResourceId.unwrap(Untraversable._tableId);

  (staticData, encodedLengths, dynamicData) = Combat.encode(
    100000,
    100000,
    50000,
    -100,
    2,
    3,
    CombatArchetypes(uint8(7))
  );
  staticDatas[0] = staticData;
  encodedLengthss[0] = EncodedLengths.unwrap(encodedLengths);
  dynamicDatas[0] = dynamicData;

  (staticData, encodedLengths, dynamicData) = UnitType.encode(UnitTypes(uint8(7)));
  staticDatas[1] = staticData;
  encodedLengthss[1] = EncodedLengths.unwrap(encodedLengths);
  dynamicDatas[1] = dynamicData;

  (staticData, encodedLengths, dynamicData) = GoldOnKill.encode(100);
  staticDatas[2] = staticData;
  encodedLengthss[2] = EncodedLengths.unwrap(encodedLengths);
  dynamicDatas[2] = dynamicData;

  (staticData, encodedLengths, dynamicData) = Movable.encode(3500);
  staticDatas[3] = staticData;
  encodedLengthss[3] = EncodedLengths.unwrap(encodedLengths);
  dynamicDatas[3] = dynamicData;

  (staticData, encodedLengths, dynamicData) = Untraversable.encode(true);
  staticDatas[4] = staticData;
  encodedLengthss[4] = EncodedLengths.unwrap(encodedLengths);
  dynamicDatas[4] = dynamicData;

  createTemplate(templateId, tableIds, staticDatas, encodedLengthss, dynamicDatas);
}
