// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.attribute_definition; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/scalar_attribute_type.dart'
    as _i2;

part 'attribute_definition.g.dart';

/// Represents an attribute for describing the key schema for the table and indexes.
abstract class AttributeDefinition
    with _i1.AWSEquatable<AttributeDefinition>
    implements Built<AttributeDefinition, AttributeDefinitionBuilder> {
  /// Represents an attribute for describing the key schema for the table and indexes.
  factory AttributeDefinition({
    required String attributeName,
    required _i2.ScalarAttributeType attributeType,
  }) {
    return _$AttributeDefinition._(
      attributeName: attributeName,
      attributeType: attributeType,
    );
  }

  /// Represents an attribute for describing the key schema for the table and indexes.
  factory AttributeDefinition.build(
          [void Function(AttributeDefinitionBuilder) updates]) =
      _$AttributeDefinition;

  const AttributeDefinition._();

  static const List<_i3.SmithySerializer> serializers = [
    AttributeDefinitionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttributeDefinitionBuilder b) {}

  /// A name for the attribute.
  String get attributeName;

  /// The data type for the attribute, where:
  ///
  /// *   `S` \- the attribute is of type String
  ///
  /// *   `N` \- the attribute is of type Number
  ///
  /// *   `B` \- the attribute is of type Binary
  _i2.ScalarAttributeType get attributeType;
  @override
  List<Object?> get props => [
        attributeName,
        attributeType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttributeDefinition');
    helper.add(
      'attributeName',
      attributeName,
    );
    helper.add(
      'attributeType',
      attributeType,
    );
    return helper.toString();
  }
}

class AttributeDefinitionAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<AttributeDefinition> {
  const AttributeDefinitionAwsJson10Serializer() : super('AttributeDefinition');

  @override
  Iterable<Type> get types => const [
        AttributeDefinition,
        _$AttributeDefinition,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  AttributeDefinition deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttributeDefinitionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AttributeName':
          result.attributeName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'AttributeType':
          result.attributeType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.ScalarAttributeType),
          ) as _i2.ScalarAttributeType);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as AttributeDefinition);
    final result = <Object?>[
      'AttributeName',
      serializers.serialize(
        payload.attributeName,
        specifiedType: const FullType(String),
      ),
      'AttributeType',
      serializers.serialize(
        payload.attributeType,
        specifiedType: const FullType(_i2.ScalarAttributeType),
      ),
    ];
    return result;
  }
}