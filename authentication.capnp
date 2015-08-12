@0x82e338a741cc5584;
# TODO: Make it 256 bits
struct AuthenticationToken {
  data0 @0 :UInt64;
}

struct Response {
  code @0 :ErrorCode;
}

enum ErrorCode {
  success @0;
  error @1;
}
