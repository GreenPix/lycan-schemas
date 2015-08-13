@0xb9089e1de7ffd023;
using Common = import "common.capnp";

struct Command {
  union {
    gameCommand @0 :GameCommand;
    entityOrder @1 :EntityOrder;
  }
}

struct GameCommand {
  union {
    disconnect @0 :Void;
    authenticate @1 :AuthenticationToken;
  }
}

struct EntityOrder {
  entity @0 :UInt64;
  union {
    walk @1 :Common.Direction;
    say @2 :Text;
  }
}

# TODO: Make it 256 bits
struct AuthenticationToken {
  data0 @0 :UInt64;
}
