project(
  'pendulum-simulator',
  'cpp',
  version: '1.0.0',
  default_options: [
    'cpp_std=c++20',
    'c_std=c99',
    'warning_level=2',
    'buildtype=release'])

# dependency
dep_grpc = dependency('grpc', required: true)
dep_grpcpp = dependency('grpc++', required: true)
dep_protobuf = dependency('protobuf', required: true)
dep = [
  dep_grpc,
  dep_grpcpp,
  dep_protobuf]

# subdir
# subdir('control')
# subdir('orch')
subdir('pendulum')