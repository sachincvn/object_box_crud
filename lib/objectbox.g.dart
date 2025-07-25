// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again
// with `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'
    as obx_int; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart' as obx;
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'data/models/user_model.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <obx_int.ModelEntity>[
  obx_int.ModelEntity(
      id: const obx_int.IdUid(1, 2693600810640106738),
      name: 'UserModel',
      lastPropertyId: const obx_int.IdUid(31, 5316228184696494002),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(
            id: const obx_int.IdUid(1, 7314656333053448323),
            name: 'objectBoxId',
            type: 6,
            flags: 1),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(2, 2830395506030114829),
            name: 'id',
            type: 9,
            flags: 2080,
            indexId: const obx_int.IdUid(1, 4791076417851974342)),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(4, 3272630254329382862),
            name: 'email',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(5, 450914262999518734),
            name: 'phone',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(6, 5018209478613221366),
            name: 'createdAt',
            type: 10,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(7, 8427130614591515273),
            name: 'updatedAt',
            type: 10,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(29, 1648102435838633743),
            name: 'name',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(30, 2060573451496786336),
            name: 'genderIndex',
            type: 6,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(31, 5316228184696494002),
            name: 'addressId',
            type: 11,
            flags: 520,
            indexId: const obx_int.IdUid(4, 2520499412471162989),
            relationTarget: 'Address')
      ],
      relations: <obx_int.ModelRelation>[],
      backlinks: <obx_int.ModelBacklink>[]),
  obx_int.ModelEntity(
      id: const obx_int.IdUid(2, 3564879532898351824),
      name: 'Address',
      lastPropertyId: const obx_int.IdUid(10, 2279947006853744706),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(
            id: const obx_int.IdUid(1, 3988144613886272795),
            name: 'id',
            type: 6,
            flags: 1),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(2, 3114134581162135326),
            name: 'street',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(3, 4756019623268009565),
            name: 'city',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(4, 6621295282606357231),
            name: 'state',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(5, 4175502510429246263),
            name: 'country',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(6, 2963430970672977163),
            name: 'zipCode',
            type: 9,
            flags: 0)
      ],
      relations: <obx_int.ModelRelation>[],
      backlinks: <obx_int.ModelBacklink>[])
];

/// Shortcut for [obx.Store.new] that passes [getObjectBoxModel] and for Flutter
/// apps by default a [directory] using `defaultStoreDirectory()` from the
/// ObjectBox Flutter library.
///
/// Note: for desktop apps it is recommended to specify a unique [directory].
///
/// See [obx.Store.new] for an explanation of all parameters.
///
/// For Flutter apps, also calls `loadObjectBoxLibraryAndroidCompat()` from
/// the ObjectBox Flutter library to fix loading the native ObjectBox library
/// on Android 6 and older.
Future<obx.Store> openStore(
    {String? directory,
    int? maxDBSizeInKB,
    int? maxDataSizeInKB,
    int? fileMode,
    int? maxReaders,
    bool queriesCaseSensitiveDefault = true,
    String? macosApplicationGroup}) async {
  await loadObjectBoxLibraryAndroidCompat();
  return obx.Store(getObjectBoxModel(),
      directory: directory ?? (await defaultStoreDirectory()).path,
      maxDBSizeInKB: maxDBSizeInKB,
      maxDataSizeInKB: maxDataSizeInKB,
      fileMode: fileMode,
      maxReaders: maxReaders,
      queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
      macosApplicationGroup: macosApplicationGroup);
}

/// Returns the ObjectBox model definition for this project for use with
/// [obx.Store.new].
obx_int.ModelDefinition getObjectBoxModel() {
  final model = obx_int.ModelInfo(
      entities: _entities,
      lastEntityId: const obx_int.IdUid(4, 6158145682816496502),
      lastIndexId: const obx_int.IdUid(4, 2520499412471162989),
      lastRelationId: const obx_int.IdUid(1, 1425187625259438040),
      lastSequenceId: const obx_int.IdUid(0, 0),
      retiredEntityUids: const [121246473298678375, 6158145682816496502],
      retiredIndexUids: const [5383210431717228348, 5980277755505398644],
      retiredPropertyUids: const [
        7249103141252367359,
        2409357905674600995,
        7426943296607400738,
        7110894372504986181,
        2279947006853744706,
        8684069991864395688,
        6395862017084073712,
        6258334225940398492,
        9096675128030413663,
        3939946398997650645,
        3886595886669015553,
        7794149294001373721,
        7616440196055102587,
        3611849714546788948,
        3111775970089185500,
        5339386378535972023,
        5858612253839583772,
        5991650772823362966,
        250461861311544921,
        6972666822366713839,
        4578502432436975910,
        5152257284966286047,
        1706583515249543443,
        3785620324469809023,
        4196791839466233765,
        1533826099914720470,
        4475652313327041247,
        5582316136466307030,
        3316969810284504841,
        5442403885162896606,
        6198570790146753410,
        1865925599197231490,
        5132172949831912839,
        8979037448528504044,
        8804496465546156770,
        6933870258678278904,
        2790617448769329241,
        32978026809417424,
        5985690305191164776,
        7813931757048053507,
        8373403799871299253,
        4188003822140973871,
        3679091385092556181,
        2512971285853308939,
        3008885489116759321,
        1464791868592515260,
        2331239751573667418,
        6070703502398863083,
        6772617273370459745,
        7947463995667450372,
        6384372755895218629,
        270487956488455512,
        4290070022967862270,
        2319957559441047842,
        5911599693543408791,
        6124302049336541588,
        7594030694743285859,
        9185930289528448586,
        3809237562474974868,
        2164280901970826522,
        2319844082827999702,
        6514310273831938147,
        8188030321391914119,
        857363441942392417,
        3402290527820483769,
        1536205020294710173
      ],
      retiredRelationUids: const [1425187625259438040],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, obx_int.EntityDefinition>{
    UserModel: obx_int.EntityDefinition<UserModel>(
        model: _entities[0],
        toOneRelations: (UserModel object) => [object.address],
        toManyRelations: (UserModel object) => {},
        getId: (UserModel object) => object.objectBoxId,
        setId: (UserModel object, int id) {
          object.objectBoxId = id;
        },
        objectToFB: (UserModel object, fb.Builder fbb) {
          final idOffset = fbb.writeString(object.id);
          final emailOffset = fbb.writeString(object.email);
          final phoneOffset = fbb.writeString(object.phone);
          final nameOffset = fbb.writeString(object.name);
          fbb.startTable(32);
          fbb.addInt64(0, object.objectBoxId);
          fbb.addOffset(1, idOffset);
          fbb.addOffset(3, emailOffset);
          fbb.addOffset(4, phoneOffset);
          fbb.addInt64(5, object.createdAt.millisecondsSinceEpoch);
          fbb.addInt64(6, object.updatedAt?.millisecondsSinceEpoch);
          fbb.addOffset(28, nameOffset);
          fbb.addInt64(29, object.genderIndex);
          fbb.addInt64(30, object.address.targetId);
          fbb.finish(fbb.endTable());
          return object.objectBoxId;
        },
        objectFromFB: (obx.Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final updatedAtValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 16);
          final objectBoxIdParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final idParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final nameParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 60, '');
          final emailParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 10, '');
          final phoneParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 12, '');
          final genderIndexParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 62, 0);
          final createdAtParam = DateTime.fromMillisecondsSinceEpoch(
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 14, 0));
          final updatedAtParam = updatedAtValue == null
              ? null
              : DateTime.fromMillisecondsSinceEpoch(updatedAtValue);
          final object = UserModel(
              objectBoxId: objectBoxIdParam,
              id: idParam,
              name: nameParam,
              email: emailParam,
              phone: phoneParam,
              genderIndex: genderIndexParam,
              createdAt: createdAtParam,
              updatedAt: updatedAtParam);
          object.address.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 64, 0);
          object.address.attach(store);
          return object;
        }),
    Address: obx_int.EntityDefinition<Address>(
        model: _entities[1],
        toOneRelations: (Address object) => [],
        toManyRelations: (Address object) => {},
        getId: (Address object) => object.id,
        setId: (Address object, int id) {
          object.id = id;
        },
        objectToFB: (Address object, fb.Builder fbb) {
          final streetOffset = fbb.writeString(object.street);
          final cityOffset = fbb.writeString(object.city);
          final stateOffset = fbb.writeString(object.state);
          final countryOffset = fbb.writeString(object.country);
          final zipCodeOffset = fbb.writeString(object.zipCode);
          fbb.startTable(11);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, streetOffset);
          fbb.addOffset(2, cityOffset);
          fbb.addOffset(3, stateOffset);
          fbb.addOffset(4, countryOffset);
          fbb.addOffset(5, zipCodeOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (obx.Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final streetParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final cityParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 8, '');
          final stateParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 10, '');
          final countryParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 12, '');
          final zipCodeParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 14, '');
          final object = Address(
              id: idParam,
              street: streetParam,
              city: cityParam,
              state: stateParam,
              country: countryParam,
              zipCode: zipCodeParam);

          return object;
        })
  };

  return obx_int.ModelDefinition(model, bindings);
}

/// [UserModel] entity fields to define ObjectBox queries.
class UserModel_ {
  /// See [UserModel.objectBoxId].
  static final objectBoxId =
      obx.QueryIntegerProperty<UserModel>(_entities[0].properties[0]);

  /// See [UserModel.id].
  static final id =
      obx.QueryStringProperty<UserModel>(_entities[0].properties[1]);

  /// See [UserModel.email].
  static final email =
      obx.QueryStringProperty<UserModel>(_entities[0].properties[2]);

  /// See [UserModel.phone].
  static final phone =
      obx.QueryStringProperty<UserModel>(_entities[0].properties[3]);

  /// See [UserModel.createdAt].
  static final createdAt =
      obx.QueryDateProperty<UserModel>(_entities[0].properties[4]);

  /// See [UserModel.updatedAt].
  static final updatedAt =
      obx.QueryDateProperty<UserModel>(_entities[0].properties[5]);

  /// See [UserModel.name].
  static final name =
      obx.QueryStringProperty<UserModel>(_entities[0].properties[6]);

  /// See [UserModel.genderIndex].
  static final genderIndex =
      obx.QueryIntegerProperty<UserModel>(_entities[0].properties[7]);

  /// See [UserModel.address].
  static final address =
      obx.QueryRelationToOne<UserModel, Address>(_entities[0].properties[8]);
}

/// [Address] entity fields to define ObjectBox queries.
class Address_ {
  /// See [Address.id].
  static final id =
      obx.QueryIntegerProperty<Address>(_entities[1].properties[0]);

  /// See [Address.street].
  static final street =
      obx.QueryStringProperty<Address>(_entities[1].properties[1]);

  /// See [Address.city].
  static final city =
      obx.QueryStringProperty<Address>(_entities[1].properties[2]);

  /// See [Address.state].
  static final state =
      obx.QueryStringProperty<Address>(_entities[1].properties[3]);

  /// See [Address.country].
  static final country =
      obx.QueryStringProperty<Address>(_entities[1].properties[4]);

  /// See [Address.zipCode].
  static final zipCode =
      obx.QueryStringProperty<Address>(_entities[1].properties[5]);
}
