//=============================================================================
// debug_params.h - Host-addressable parameter registry for the debug link.
//
// A flat const table maps a 16-bit id to a typed, optionally read-only /
// idle-gated value plus get/set accessors into the live firmware state.
// The debug-iface dispatcher serializes entries for PARAM_LIST and routes
// PARAM_READ / PARAM_WRITE through param_read() / param_write().
//
// Values cross the wire as a fixed 4-byte field regardless of type (see
// debug_proto.h). We carry them internally as a 32-bit "raw" word:
//   PARAM_TYPE_F32 -> IEEE-754 bit pattern
//   PARAM_TYPE_U32 -> the value
//   PARAM_TYPE_U16 -> value in the low 16 bits, high 16 zero
//=============================================================================
#ifndef DEBUG_PARAMS_H
#define DEBUG_PARAMS_H

#include <stdint.h>
#include "debug_proto.h"

#define PARAM_NAME_LEN 16U

typedef struct {
    uint16_t    id;
    uint16_t    type;                 // PARAM_TYPE_* (uint16_t: C28x has no 8-bit)
    uint16_t    flags;                // PARAM_FLAG_* bitmask
    char        name[PARAM_NAME_LEN]; // NUL-padded, <=15 chars
    void      (*get)(uint32_t *raw);  // pack current value into *raw
    void      (*set)(uint32_t raw);   // apply raw value; NULL => read-only
} param_entry_t;

extern const param_entry_t g_param_table[];
extern const uint16_t      g_param_count;

// Returns NULL if id is unknown.
const param_entry_t * param_find(uint16_t id);

// PARAM_READ: fills *out_type and *out_raw. Returns PARAM_WR_OK or
// PARAM_WR_BAD_ID.
uint16_t param_read(uint16_t id, uint16_t *out_type, uint32_t *out_raw);

// PARAM_WRITE: applies raw to the addressed param subject to RO / needs-idle
// policy. Returns one of the PARAM_WR_* status codes.
uint16_t param_write(uint16_t id, uint32_t raw);

#endif // DEBUG_PARAMS_H
