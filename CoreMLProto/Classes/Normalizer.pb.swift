// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Normalizer.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

// Copyright (c) 2017, Apple Inc. All rights reserved.
//
// Use of this source code is governed by a BSD-3-clause license that can be
// found in LICENSE.txt or at https://opensource.org/licenses/BSD-3-Clause

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

///*
/// A normalization preprocessor.
public struct CoreML_Specification_Normalizer: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Normalizer"

  public var normType: CoreML_Specification_Normalizer.NormType = .lmax

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  ///*
  /// There are three normalization modes,
  /// which have the corresponding formulas:
  ///
  /// Max
  ///     .. math::
  ///         max(x_i)
  ///
  /// L1
  ///     .. math::
  ///         z = ||x||_1 = \sum_{i=1}^{n} |x_i|
  ///
  /// L2
  ///     .. math::
  ///         z = ||x||_2 = \sqrt{\sum_{i=1}^{n} x_i^2}
  public enum NormType: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case lmax // = 0
    case l1 // = 1
    case l2 // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .lmax
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .lmax
      case 1: self = .l1
      case 2: self = .l2
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .lmax: return 0
      case .l1: return 1
      case .l2: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.normType)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.normType != .lmax {
      try visitor.visitSingularEnumField(value: self.normType, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "CoreML.Specification"

extension CoreML_Specification_Normalizer: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "normType"),
  ]

  public func _protobuf_generated_isEqualTo(other: CoreML_Specification_Normalizer) -> Bool {
    if self.normType != other.normType {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension CoreML_Specification_Normalizer.NormType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "LMax"),
    1: .same(proto: "L1"),
    2: .same(proto: "L2"),
  ]
}
