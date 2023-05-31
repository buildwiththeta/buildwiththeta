# Example

## Initialize

```dart
ThetaModels.instance.initialize();
```

## Get a IntrinsicState object

```dart
const DynamicIntrinsicState().getStateByType(NType.align);
```

## Get a DynamicAttribute object

```dart
const DynamicAttributes().fromJson(DBKeys.fill, {
        'fill': {
        'l': [
            {'color': '000000', 'stop': 0, 'opacity': 0}
        ],
        't': 's',
        'r': 0,
        'bF': 'cv'
    },
});
```
