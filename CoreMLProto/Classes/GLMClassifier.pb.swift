// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: GLMClassifier.proto
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
/// A generalized linear model classifier.
public struct CoreML_Specification_GLMClassifier: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".GLMClassifier"

  public var weights: [CoreML_Specification_GLMClassifier.DoubleArray] {
    get {return _storage._weights}
    set {_uniqueStorage()._weights = newValue}
  }

  public var offset: [Double] {
    get {return _storage._offset}
    set {_uniqueStorage()._offset = newValue}
  }

  public var postEvaluationTransform: CoreML_Specification_GLMClassifier.PostEvaluationTransform {
    get {return _storage._postEvaluationTransform}
    set {_uniqueStorage()._postEvaluationTransform = newValue}
  }

  public var classEncoding: CoreML_Specification_GLMClassifier.ClassEncoding {
    get {return _storage._classEncoding}
    set {_uniqueStorage()._classEncoding = newValue}
  }

  ///*
  /// Required class label mapping.
  public var classLabels: OneOf_ClassLabels? {
    get {return _storage._classLabels}
    set {_uniqueStorage()._classLabels = newValue}
  }

  public var stringClassLabels: CoreML_Specification_StringVector {
    get {
      if case .stringClassLabels(let v)? = _storage._classLabels {return v}
      return CoreML_Specification_StringVector()
    }
    set {_uniqueStorage()._classLabels = .stringClassLabels(newValue)}
  }

  public var int64ClassLabels: CoreML_Specification_Int64Vector {
    get {
      if case .int64ClassLabels(let v)? = _storage._classLabels {return v}
      return CoreML_Specification_Int64Vector()
    }
    set {_uniqueStorage()._classLabels = .int64ClassLabels(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  ///*
  /// Required class label mapping.
  public enum OneOf_ClassLabels: Equatable {
    case stringClassLabels(CoreML_Specification_StringVector)
    case int64ClassLabels(CoreML_Specification_Int64Vector)

    public static func ==(lhs: CoreML_Specification_GLMClassifier.OneOf_ClassLabels, rhs: CoreML_Specification_GLMClassifier.OneOf_ClassLabels) -> Bool {
      switch (lhs, rhs) {
      case (.stringClassLabels(let l), .stringClassLabels(let r)): return l == r
      case (.int64ClassLabels(let l), .int64ClassLabels(let r)): return l == r
      default: return false
      }
    }
  }

  public enum PostEvaluationTransform: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case logit // = 0

    //// Only binary classification is supported for probit
    case probit // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .logit
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .logit
      case 1: self = .probit
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .logit: return 0
      case .probit: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public enum ClassEncoding: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    //// First class is the reference class
    case referenceClass // = 0

    //// Also called One vs All
    case oneVsRest // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .referenceClass
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .referenceClass
      case 1: self = .oneVsRest
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .referenceClass: return 0
      case .oneVsRest: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public struct DoubleArray: SwiftProtobuf.Message {
    public static let protoMessageName: String = CoreML_Specification_GLMClassifier.protoMessageName + ".DoubleArray"

    public var value: [Double] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeRepeatedDoubleField(value: &self.value)
        default: break
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if !self.value.isEmpty {
        try visitor.visitPackedDoubleField(value: self.value, fieldNumber: 1)
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeRepeatedMessageField(value: &_storage._weights)
        case 2: try decoder.decodeRepeatedDoubleField(value: &_storage._offset)
        case 3: try decoder.decodeSingularEnumField(value: &_storage._postEvaluationTransform)
        case 4: try decoder.decodeSingularEnumField(value: &_storage._classEncoding)
        case 100:
          var v: CoreML_Specification_StringVector?
          if let current = _storage._classLabels {
            try decoder.handleConflictingOneOf()
            if case .stringClassLabels(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._classLabels = .stringClassLabels(v)}
        case 101:
          var v: CoreML_Specification_Int64Vector?
          if let current = _storage._classLabels {
            try decoder.handleConflictingOneOf()
            if case .int64ClassLabels(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._classLabels = .int64ClassLabels(v)}
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._weights.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._weights, fieldNumber: 1)
      }
      if !_storage._offset.isEmpty {
        try visitor.visitPackedDoubleField(value: _storage._offset, fieldNumber: 2)
      }
      if _storage._postEvaluationTransform != .logit {
        try visitor.visitSingularEnumField(value: _storage._postEvaluationTransform, fieldNumber: 3)
      }
      if _storage._classEncoding != .referenceClass {
        try visitor.visitSingularEnumField(value: _storage._classEncoding, fieldNumber: 4)
      }
      switch _storage._classLabels {
      case .stringClassLabels(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 100)
      case .int64ClassLabels(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 101)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "CoreML.Specification"

extension CoreML_Specification_GLMClassifier: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "weights"),
    2: .same(proto: "offset"),
    3: .same(proto: "postEvaluationTransform"),
    4: .same(proto: "classEncoding"),
    100: .same(proto: "stringClassLabels"),
    101: .same(proto: "int64ClassLabels"),
  ]

  fileprivate class _StorageClass {
    var _weights: [CoreML_Specification_GLMClassifier.DoubleArray] = []
    var _offset: [Double] = []
    var _postEvaluationTransform: CoreML_Specification_GLMClassifier.PostEvaluationTransform = .logit
    var _classEncoding: CoreML_Specification_GLMClassifier.ClassEncoding = .referenceClass
    var _classLabels: CoreML_Specification_GLMClassifier.OneOf_ClassLabels?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _weights = source._weights
      _offset = source._offset
      _postEvaluationTransform = source._postEvaluationTransform
      _classEncoding = source._classEncoding
      _classLabels = source._classLabels
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: CoreML_Specification_GLMClassifier) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._weights != other_storage._weights {return false}
        if _storage._offset != other_storage._offset {return false}
        if _storage._postEvaluationTransform != other_storage._postEvaluationTransform {return false}
        if _storage._classEncoding != other_storage._classEncoding {return false}
        if _storage._classLabels != other_storage._classLabels {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension CoreML_Specification_GLMClassifier.PostEvaluationTransform: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "Logit"),
    1: .same(proto: "Probit"),
  ]
}

extension CoreML_Specification_GLMClassifier.ClassEncoding: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ReferenceClass"),
    1: .same(proto: "OneVsRest"),
  ]
}

extension CoreML_Specification_GLMClassifier.DoubleArray: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "value"),
  ]

  public func _protobuf_generated_isEqualTo(other: CoreML_Specification_GLMClassifier.DoubleArray) -> Bool {
    if self.value != other.value {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
