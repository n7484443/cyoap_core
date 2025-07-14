// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'line_preset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChoiceLineDesignPreset {
  ColorOption? get backgroundColorOption;
  String? get backgroundImageString;
  bool? get alwaysVisibleLine;
  ChoiceLineAlignment? get alignment;
  int? get maxChildrenPerRow;

  /// Create a copy of ChoiceLineDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChoiceLineDesignPresetCopyWith<ChoiceLineDesignPreset> get copyWith =>
      _$ChoiceLineDesignPresetCopyWithImpl<ChoiceLineDesignPreset>(
          this as ChoiceLineDesignPreset, _$identity);

  /// Serializes this ChoiceLineDesignPreset to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChoiceLineDesignPreset &&
            (identical(other.backgroundColorOption, backgroundColorOption) ||
                other.backgroundColorOption == backgroundColorOption) &&
            (identical(other.backgroundImageString, backgroundImageString) ||
                other.backgroundImageString == backgroundImageString) &&
            (identical(other.alwaysVisibleLine, alwaysVisibleLine) ||
                other.alwaysVisibleLine == alwaysVisibleLine) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.maxChildrenPerRow, maxChildrenPerRow) ||
                other.maxChildrenPerRow == maxChildrenPerRow));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, backgroundColorOption,
      backgroundImageString, alwaysVisibleLine, alignment, maxChildrenPerRow);

  @override
  String toString() {
    return 'ChoiceLineDesignPreset(backgroundColorOption: $backgroundColorOption, backgroundImageString: $backgroundImageString, alwaysVisibleLine: $alwaysVisibleLine, alignment: $alignment, maxChildrenPerRow: $maxChildrenPerRow)';
  }
}

/// @nodoc
abstract mixin class $ChoiceLineDesignPresetCopyWith<$Res> {
  factory $ChoiceLineDesignPresetCopyWith(ChoiceLineDesignPreset value,
          $Res Function(ChoiceLineDesignPreset) _then) =
      _$ChoiceLineDesignPresetCopyWithImpl;
  @useResult
  $Res call(
      {ColorOption? backgroundColorOption,
      String? backgroundImageString,
      bool? alwaysVisibleLine,
      ChoiceLineAlignment? alignment,
      int? maxChildrenPerRow});

  $ColorOptionCopyWith<$Res>? get backgroundColorOption;
}

/// @nodoc
class _$ChoiceLineDesignPresetCopyWithImpl<$Res>
    implements $ChoiceLineDesignPresetCopyWith<$Res> {
  _$ChoiceLineDesignPresetCopyWithImpl(this._self, this._then);

  final ChoiceLineDesignPreset _self;
  final $Res Function(ChoiceLineDesignPreset) _then;

  /// Create a copy of ChoiceLineDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColorOption = freezed,
    Object? backgroundImageString = freezed,
    Object? alwaysVisibleLine = freezed,
    Object? alignment = freezed,
    Object? maxChildrenPerRow = freezed,
  }) {
    return _then(_self.copyWith(
      backgroundColorOption: freezed == backgroundColorOption
          ? _self.backgroundColorOption
          : backgroundColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption?,
      backgroundImageString: freezed == backgroundImageString
          ? _self.backgroundImageString
          : backgroundImageString // ignore: cast_nullable_to_non_nullable
              as String?,
      alwaysVisibleLine: freezed == alwaysVisibleLine
          ? _self.alwaysVisibleLine
          : alwaysVisibleLine // ignore: cast_nullable_to_non_nullable
              as bool?,
      alignment: freezed == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as ChoiceLineAlignment?,
      maxChildrenPerRow: freezed == maxChildrenPerRow
          ? _self.maxChildrenPerRow
          : maxChildrenPerRow // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of ChoiceLineDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res>? get backgroundColorOption {
    if (_self.backgroundColorOption == null) {
      return null;
    }

    return $ColorOptionCopyWith<$Res>(_self.backgroundColorOption!, (value) {
      return _then(_self.copyWith(backgroundColorOption: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChoiceLineDesignPreset].
extension ChoiceLineDesignPresetPatterns on ChoiceLineDesignPreset {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ChoiceLineDesignPreset value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChoiceLineDesignPreset() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ChoiceLineDesignPreset value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoiceLineDesignPreset():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ChoiceLineDesignPreset value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoiceLineDesignPreset() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            ColorOption? backgroundColorOption,
            String? backgroundImageString,
            bool? alwaysVisibleLine,
            ChoiceLineAlignment? alignment,
            int? maxChildrenPerRow)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChoiceLineDesignPreset() when $default != null:
        return $default(
            _that.backgroundColorOption,
            _that.backgroundImageString,
            _that.alwaysVisibleLine,
            _that.alignment,
            _that.maxChildrenPerRow);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            ColorOption? backgroundColorOption,
            String? backgroundImageString,
            bool? alwaysVisibleLine,
            ChoiceLineAlignment? alignment,
            int? maxChildrenPerRow)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoiceLineDesignPreset():
        return $default(
            _that.backgroundColorOption,
            _that.backgroundImageString,
            _that.alwaysVisibleLine,
            _that.alignment,
            _that.maxChildrenPerRow);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            ColorOption? backgroundColorOption,
            String? backgroundImageString,
            bool? alwaysVisibleLine,
            ChoiceLineAlignment? alignment,
            int? maxChildrenPerRow)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoiceLineDesignPreset() when $default != null:
        return $default(
            _that.backgroundColorOption,
            _that.backgroundImageString,
            _that.alwaysVisibleLine,
            _that.alignment,
            _that.maxChildrenPerRow);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChoiceLineDesignPreset extends ChoiceLineDesignPreset {
  const _ChoiceLineDesignPreset(
      {this.backgroundColorOption = const ColorOption(color: 0),
      this.backgroundImageString,
      this.alwaysVisibleLine = false,
      this.alignment = ChoiceLineAlignment.left,
      this.maxChildrenPerRow = 12})
      : super._();
  factory _ChoiceLineDesignPreset.fromJson(Map<String, dynamic> json) =>
      _$ChoiceLineDesignPresetFromJson(json);

  @override
  @JsonKey()
  final ColorOption? backgroundColorOption;
  @override
  final String? backgroundImageString;
  @override
  @JsonKey()
  final bool? alwaysVisibleLine;
  @override
  @JsonKey()
  final ChoiceLineAlignment? alignment;
  @override
  @JsonKey()
  final int? maxChildrenPerRow;

  /// Create a copy of ChoiceLineDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChoiceLineDesignPresetCopyWith<_ChoiceLineDesignPreset> get copyWith =>
      __$ChoiceLineDesignPresetCopyWithImpl<_ChoiceLineDesignPreset>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChoiceLineDesignPresetToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChoiceLineDesignPreset &&
            (identical(other.backgroundColorOption, backgroundColorOption) ||
                other.backgroundColorOption == backgroundColorOption) &&
            (identical(other.backgroundImageString, backgroundImageString) ||
                other.backgroundImageString == backgroundImageString) &&
            (identical(other.alwaysVisibleLine, alwaysVisibleLine) ||
                other.alwaysVisibleLine == alwaysVisibleLine) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.maxChildrenPerRow, maxChildrenPerRow) ||
                other.maxChildrenPerRow == maxChildrenPerRow));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, backgroundColorOption,
      backgroundImageString, alwaysVisibleLine, alignment, maxChildrenPerRow);

  @override
  String toString() {
    return 'ChoiceLineDesignPreset(backgroundColorOption: $backgroundColorOption, backgroundImageString: $backgroundImageString, alwaysVisibleLine: $alwaysVisibleLine, alignment: $alignment, maxChildrenPerRow: $maxChildrenPerRow)';
  }
}

/// @nodoc
abstract mixin class _$ChoiceLineDesignPresetCopyWith<$Res>
    implements $ChoiceLineDesignPresetCopyWith<$Res> {
  factory _$ChoiceLineDesignPresetCopyWith(_ChoiceLineDesignPreset value,
          $Res Function(_ChoiceLineDesignPreset) _then) =
      __$ChoiceLineDesignPresetCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ColorOption? backgroundColorOption,
      String? backgroundImageString,
      bool? alwaysVisibleLine,
      ChoiceLineAlignment? alignment,
      int? maxChildrenPerRow});

  @override
  $ColorOptionCopyWith<$Res>? get backgroundColorOption;
}

/// @nodoc
class __$ChoiceLineDesignPresetCopyWithImpl<$Res>
    implements _$ChoiceLineDesignPresetCopyWith<$Res> {
  __$ChoiceLineDesignPresetCopyWithImpl(this._self, this._then);

  final _ChoiceLineDesignPreset _self;
  final $Res Function(_ChoiceLineDesignPreset) _then;

  /// Create a copy of ChoiceLineDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? backgroundColorOption = freezed,
    Object? backgroundImageString = freezed,
    Object? alwaysVisibleLine = freezed,
    Object? alignment = freezed,
    Object? maxChildrenPerRow = freezed,
  }) {
    return _then(_ChoiceLineDesignPreset(
      backgroundColorOption: freezed == backgroundColorOption
          ? _self.backgroundColorOption
          : backgroundColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption?,
      backgroundImageString: freezed == backgroundImageString
          ? _self.backgroundImageString
          : backgroundImageString // ignore: cast_nullable_to_non_nullable
              as String?,
      alwaysVisibleLine: freezed == alwaysVisibleLine
          ? _self.alwaysVisibleLine
          : alwaysVisibleLine // ignore: cast_nullable_to_non_nullable
              as bool?,
      alignment: freezed == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as ChoiceLineAlignment?,
      maxChildrenPerRow: freezed == maxChildrenPerRow
          ? _self.maxChildrenPerRow
          : maxChildrenPerRow // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of ChoiceLineDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res>? get backgroundColorOption {
    if (_self.backgroundColorOption == null) {
      return null;
    }

    return $ColorOptionCopyWith<$Res>(_self.backgroundColorOption!, (value) {
      return _then(_self.copyWith(backgroundColorOption: value));
    });
  }
}

// dart format on
