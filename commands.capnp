@0xb9089e1de7ffd023;
using Common = import "common.capnp";

struct Command {
  union {
    mapCommand @0 :MapCommand;
    entityOrder @1 :EntityOrder;
  }
}

struct MapCommand {
  union {
    disconnect @0 :Void;
# An union must have more that one field, but I can't think about another one
    other @1 :Void;
  }
}

struct EntityOrder {
  entity @0 :UInt64;
  union {
    walk @1 :Common.Direction;
    say @2 :Text;
  }
}
