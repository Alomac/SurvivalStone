module libmil;

struct Types
{
    // Aliases for D types
    static alias i8 = byte;
    static alias i16 = short;
    static alias i32 = int;
    static alias i64 = long;

    static alias u8 = ubyte;
    static alias u16 = ushort;
    static alias u32 = uint;
    static alias u64 = ulong;

    static alias f32 = float;
    static alias f64 = double;

    static alias usize = size_t;
}

struct Types_C
{
    // Aliases for C types
    import core.stdc.stdint;
    
    static alias i8_c = int8_t;
    static alias i16_c = int16_t;
    static alias i32_c = int32_t;
    static alias i64_c = int64_t;

    // static alias i128_c = int128_t;

    static alias u8_c = uint8_t;
    static alias u16_c = uint16_t;
    static alias u32_c = uint32_t;
    static alias u64_c = uint64_t;

    // static alias u128_c = uint128_t;
}
