import struct

def pack64(to_pack, byte_order = 'l'):
    if(byte_order == 'b' or byte_order == 'B' or byte_order == '>' or byte_order =='!'):
        pack_style = '>Q'  
    elif(byte_order == 'l' or byte_order == 'L' or byte_order == '<'):
        pack_style = '<Q'
    else:
        print("Improperly formatted byte order")
        return None
    return(struct.pack(pack_style, to_pack))


def pack32(to_pack, byte_order = 'l'):
    if(byte_order == 'b' or byte_order == 'B' or byte_order == '>' or byte_order =='!'):
        pack_style = '>L'  
    elif(byte_order == 'l' or byte_order == 'L' or byte_order == '<'):
        pack_style = '<L'
    else:
        print("Improperly formatted byte order")
        return None
    return(struct.pack(pack_style, to_pack))


def pack16(to_pack, byte_order = 'l'):
    if(byte_order == 'b' or byte_order == 'B' or byte_order == '>' or byte_order =='!'):
        pack_style = '>I'  
    elif(byte_order == 'l' or byte_order == 'L' or byte_order == '<'):
        pack_style = '<I'
    else:
        print("Improperly formatted byte order")
        return None
    return(struct.pack(pack_style, to_pack))

def pack8(to_pack, byte_order = 'l'):
    if(byte_order == 'b' or byte_order == 'B' or byte_order == '>' or byte_order =='!'):
        pack_style = '>H'  
    elif(byte_order == 'l' or byte_order == 'L' or byte_order == '<'):
        pack_style = '<H'
    else:
        print("Improperly formatted byte order")
        return None
    return(struct.pack(pack_style, to_pack))

def pack4(to_pack, byte_order = 'l'):
    if(byte_order == 'b' or byte_order == 'B' or byte_order == '>' or byte_order =='!'):
        pack_style = '>B'  
    elif(byte_order == 'l' or byte_order == 'L' or byte_order == '<'):
        pack_style = '<B'
    else:
        print("Improperly formatted byte order")
        return None
    return(struct.pack(pack_style, to_pack))

def print_bytes(byte_str):
    formatted = "b'"
    for b in byte_str:
        formatted += "\\x{:02x}".format(b)
    print(formatted + "'")    

def print_bytes_block(byte_str, dword_per_line = 4):
    formatted = ""
    l = 0
    for b in byte_str:
        if((l % (dword_per_line * 4)) == 0):
            formatted += "\n{:02x}:\t".format(l)
        l += 1
        formatted += "{:02x}".format(b)
        if((l % 4) == 0):
            formatted += " "
    print(formatted)



