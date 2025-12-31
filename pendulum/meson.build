# pendulum service
proto = files('proto/pendulum.proto')
prog_protoc = find_program('protoc')
prog_protocpp = find_program('grpc_cpp_plugin')
gen_proto = generator(
  prog_protoc,
  output: [
    '@BASENAME@.pb.cc',
    '@BASENAME@.pb.h',
    '@BASENAME@.grpc.pb.cc',
    '@BASENAME@.grpc.pb.h'],
  arguments: [
    '--proto_path=@CURRENT_SOURCE_DIR@/proto',
    '--cpp_out=@BUILD_DIR@',
    '--grpc_out=@BUILD_DIR@',
    '--plugin=protoc-gen-grpc=' + prog_protocpp.full_path(),
    '@INPUT@'])

src_generated = gen_proto.process(proto)
src_pendulum = files(
  'abstract.cpp',
  'simple.cpp',
  'main.cpp')

executable(
  'pendulum-service', 
  [
    src_generated,
    src_pendulum
  ],
  include_directories: include_directories('.'),
  dependencies: [dep])
