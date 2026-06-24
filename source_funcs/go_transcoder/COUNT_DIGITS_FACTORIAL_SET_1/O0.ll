; ModuleID = 'main'
source_filename = "main"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-musleabihf"

%runtime._string = type { ptr, i64 }
%"unicode/utf8.acceptRange" = type { i8, i8 }
%"internal/task.Task" = type { ptr, ptr, i64, %"sync/atomic.noCopy", %"internal/task.state", i8, i1, i8, ptr }
%"sync/atomic.noCopy" = type {}
%"internal/task.state" = type { i64, ptr, i64, i64, ptr, %"internal/task.Semaphore" }
%"internal/task.Semaphore" = type { %"internal/futex.Futex" }
%"internal/futex.Futex" = type { %"sync/atomic.Bool" }
%"sync/atomic.Bool" = type { %"sync/atomic.noCopy", i32 }
%runtime.elfHeader = type { i32, i8, i8, i8, i8, i8, [7 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%"internal/reflectlite.RawType" = type { i8 }
%"internal/reflectlite.ptrType" = type { %"internal/reflectlite.RawType", i16, ptr, %"internal/reflectlite.methodSet" }
%"internal/reflectlite.methodSet" = type { i64, [0 x ptr] }
%"internal/reflectlite.elemType" = type { %"internal/reflectlite.RawType", i16, ptr, ptr }
%"internal/reflectlite.arrayType" = type { %"internal/reflectlite.RawType", i16, ptr, ptr, i64, ptr }
%"internal/reflectlite.structType" = type { %"internal/reflectlite.RawType", i16, ptr, ptr, i32, i16, [1 x { ptr, ptr }] }
%"internal/reflectlite.rawStructField" = type { %runtime._string, %runtime._string, ptr, %runtime._string, i64, i1 }
%"internal/reflectlite.namedType" = type { %"internal/reflectlite.RawType", i16, ptr, ptr, ptr }
%"internal/reflectlite.ValueError" = type { %runtime._string, i8 }
%runtime.deferFrame = type { ptr, ptr, [0 x ptr], ptr, i8, { ptr, ptr } }
%runtime.elfProgramHeader64 = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%runtime.elfProgramHeader32 = type { i32, i64, i64, i64, i64, i64, i32, i64 }

@"math$string.31" = internal unnamed_addr constant [15 x i8] c"not implemented", align 1, !dbg !0
@"math$pack.32" = internal unnamed_addr constant { %runtime._string } { %runtime._string { ptr @"math$string.31", i64 15 } }
@"internal/itoa$string" = internal unnamed_addr constant [1 x i8] c"-", align 1, !dbg !7
@"internal/itoa$string.1" = internal unnamed_addr constant [1 x i8] c"0", align 1, !dbg !13
@"unicode/utf8.first" = internal global [256 x i8] c"\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\13\03\03\03\03\03\03\03\03\03\03\03\03#\03\034\04\04\04D\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1", align 1, !dbg !15
@"unicode/utf8.acceptRanges" = internal global [16 x %"unicode/utf8.acceptRange"] [%"unicode/utf8.acceptRange" { i8 -128, i8 -65 }, %"unicode/utf8.acceptRange" { i8 -96, i8 -65 }, %"unicode/utf8.acceptRange" { i8 -128, i8 -97 }, %"unicode/utf8.acceptRange" { i8 -112, i8 -65 }, %"unicode/utf8.acceptRange" { i8 -128, i8 -113 }, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer], align 1, !dbg !21
@"internal/reflectlite$string" = internal unnamed_addr constant [4 x i8] c"Elem", align 1, !dbg !31
@"internal/reflectlite.errTypeElem" = internal global ptr @"internal/reflectlite$alloc", align 8, !dbg !37
@"internal/reflectlite$string.1" = internal unnamed_addr constant [3 x i8] c"Key", align 1, !dbg !50
@"internal/reflectlite.errTypeKey" = internal global ptr @"internal/reflectlite$alloc.107", align 8, !dbg !55
@"internal/reflectlite$string.2" = internal unnamed_addr constant [5 x i8] c"Field", align 1, !dbg !57
@"internal/reflectlite.errTypeField" = internal global ptr @"internal/reflectlite$alloc.108", align 8, !dbg !62
@"internal/reflectlite$string.4" = internal unnamed_addr constant [3 x i8] c"Len", align 1, !dbg !64
@"internal/reflectlite.errTypeLen" = internal global ptr @"internal/reflectlite$alloc.110", align 8, !dbg !66
@"internal/reflectlite$string.5" = internal unnamed_addr constant [8 x i8] c"NumField", align 1, !dbg !68
@"internal/reflectlite.errTypeNumField" = internal global ptr @"internal/reflectlite$alloc.111", align 8, !dbg !73
@"internal/reflectlite$string.6" = internal unnamed_addr constant [7 x i8] c"ChanDir", align 1, !dbg !75
@"internal/reflectlite.errTypeChanDir" = internal global ptr @"internal/reflectlite$alloc.112", align 8, !dbg !80
@"reflect/types.type:basic:uint8" = internal constant { i8, ptr } { i8 -56, ptr @"reflect/types.type:pointer:basic:uint8" }, align 8, !dbg !82
@"reflect/types.type:pointer:basic:uint8" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:basic:uint8" }, align 8, !dbg !91
@"reflect/types.type.pkgpath:internal/reflectlite" = internal unnamed_addr constant [21 x i8] c"internal/reflectlite\00", align 1
@"reflect/types.type:struct:{meta:basic:uint8}" = internal constant { i8, i16, ptr, ptr, i32, i16, [1 x { ptr, ptr }] } { i8 -38, i16 0, ptr @"reflect/types.type:pointer:struct:{meta:basic:uint8}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", i32 1, i16 1, [1 x { ptr, ptr }] [{ ptr, ptr } { ptr @"reflect/types.type:basic:uint8", ptr @"reflect/types.type:struct:{meta:basic:uint8}.meta" }] }, align 8, !dbg !98
@"reflect/types.type:pointer:struct:{meta:basic:uint8}" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:struct:{meta:basic:uint8}" }, align 8, !dbg !113
@"reflect/types.type:struct:{meta:basic:uint8}.meta" = internal unnamed_addr constant [7 x i8] c"\00\00meta\00", align 1
@"internal/reflectlite$string.17" = internal unnamed_addr constant [14 x i8] c"invalid syntax", align 1, !dbg !115
@"reflect/types.type:struct:{}" = internal constant { i8, i16, ptr, ptr, i32, i16, [0 x { ptr, ptr }] } { i8 -38, i16 0, ptr @"reflect/types.type:pointer:struct:{}", ptr @"reflect/types.type.pkgpath.empty", i32 0, i16 0, [0 x { ptr, ptr }] zeroinitializer }, align 8, !dbg !121
@"reflect/types.type.pkgpath.empty" = internal unnamed_addr constant [1 x i8] zeroinitializer, align 1
@"reflect/types.type:pointer:struct:{}" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:struct:{}" }, align 8, !dbg !129
@"internal/reflectlite$string.20" = internal unnamed_addr constant [2 x i8] c"\\x", align 1, !dbg !131
@"internal/reflectlite$string.21" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !136
@"internal/reflectlite$string.22" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !138
@"internal/reflectlite$string.23" = internal unnamed_addr constant [2 x i8] c"\\a", align 1, !dbg !140
@"internal/reflectlite$string.24" = internal unnamed_addr constant [2 x i8] c"\\b", align 1, !dbg !142
@"internal/reflectlite$string.25" = internal unnamed_addr constant [2 x i8] c"\\f", align 1, !dbg !144
@"internal/reflectlite$string.26" = internal unnamed_addr constant [2 x i8] c"\\n", align 1, !dbg !146
@"internal/reflectlite$string.27" = internal unnamed_addr constant [2 x i8] c"\\r", align 1, !dbg !148
@"internal/reflectlite$string.28" = internal unnamed_addr constant [2 x i8] c"\\t", align 1, !dbg !150
@"internal/reflectlite$string.29" = internal unnamed_addr constant [2 x i8] c"\\v", align 1, !dbg !152
@"internal/reflectlite$string.30" = internal unnamed_addr constant [2 x i8] c"\\x", align 1, !dbg !154
@"internal/reflectlite$string.31" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !156
@"internal/reflectlite$string.32" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !158
@"internal/reflectlite$string.33" = internal unnamed_addr constant [2 x i8] c"\\u", align 1, !dbg !160
@"internal/reflectlite$string.34" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !162
@"internal/reflectlite$string.35" = internal unnamed_addr constant [2 x i8] c"\\U", align 1, !dbg !164
@"internal/reflectlite$string.36" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !166
@"reflect/types.type:named:internal/reflectlite.ValueError" = internal constant { i8, i16, ptr, ptr, ptr, [23 x i8] } { i8 122, i16 0, ptr @"reflect/types.type:pointer:named:internal/reflectlite.ValueError", ptr @"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", [23 x i8] c"reflectlite.ValueError\00" }, align 8, !dbg !168
@"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}" = internal constant { i8, i16, ptr, ptr, i32, i16, [2 x { ptr, ptr }] } { i8 90, i16 0, ptr @"reflect/types.type:pointer:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", i32 24, i16 2, [2 x { ptr, ptr }] [{ ptr, ptr } { ptr @"reflect/types.type:basic:string", ptr @"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}.Method" }, { ptr, ptr } { ptr @"reflect/types.type:named:internal/reflectlite.Kind", ptr @"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}.Kind" }] }, align 8, !dbg !178
@"reflect/types.type:pointer:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}" }, align 8, !dbg !184
@"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}.Method" = internal unnamed_addr constant [9 x i8] c"\04\00Method\00", align 1
@"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}.Kind" = internal unnamed_addr constant [7 x i8] c"\04\10Kind\00", align 1
@"internal/reflectlite$string.41" = internal unnamed_addr constant [7 x i8] c"invalid", align 1, !dbg !186
@"internal/reflectlite$string.42" = internal unnamed_addr constant [4 x i8] c"bool", align 1, !dbg !188
@"internal/reflectlite$string.43" = internal unnamed_addr constant [3 x i8] c"int", align 1, !dbg !190
@"internal/reflectlite$string.44" = internal unnamed_addr constant [4 x i8] c"int8", align 1, !dbg !192
@"internal/reflectlite$string.45" = internal unnamed_addr constant [5 x i8] c"int16", align 1, !dbg !194
@"internal/reflectlite$string.46" = internal unnamed_addr constant [5 x i8] c"int32", align 1, !dbg !196
@"internal/reflectlite$string.47" = internal unnamed_addr constant [5 x i8] c"int64", align 1, !dbg !198
@"internal/reflectlite$string.48" = internal unnamed_addr constant [4 x i8] c"uint", align 1, !dbg !200
@"internal/reflectlite$string.49" = internal unnamed_addr constant [5 x i8] c"uint8", align 1, !dbg !202
@"internal/reflectlite$string.50" = internal unnamed_addr constant [6 x i8] c"uint16", align 1, !dbg !204
@"internal/reflectlite$string.51" = internal unnamed_addr constant [6 x i8] c"uint32", align 1, !dbg !209
@"internal/reflectlite$string.52" = internal unnamed_addr constant [6 x i8] c"uint64", align 1, !dbg !211
@"internal/reflectlite$string.53" = internal unnamed_addr constant [7 x i8] c"uintptr", align 1, !dbg !213
@"internal/reflectlite$string.54" = internal unnamed_addr constant [7 x i8] c"float32", align 1, !dbg !215
@"internal/reflectlite$string.55" = internal unnamed_addr constant [7 x i8] c"float64", align 1, !dbg !217
@"internal/reflectlite$string.56" = internal unnamed_addr constant [9 x i8] c"complex64", align 1, !dbg !219
@"internal/reflectlite$string.57" = internal unnamed_addr constant [10 x i8] c"complex128", align 1, !dbg !224
@"internal/reflectlite$string.58" = internal unnamed_addr constant [6 x i8] c"string", align 1, !dbg !229
@"internal/reflectlite$string.59" = internal unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1, !dbg !231
@"internal/reflectlite$string.60" = internal unnamed_addr constant [4 x i8] c"chan", align 1, !dbg !233
@"internal/reflectlite$string.61" = internal unnamed_addr constant [9 x i8] c"interface", align 1, !dbg !235
@"internal/reflectlite$string.62" = internal unnamed_addr constant [3 x i8] c"ptr", align 1, !dbg !237
@"internal/reflectlite$string.63" = internal unnamed_addr constant [5 x i8] c"slice", align 1, !dbg !239
@"internal/reflectlite$string.64" = internal unnamed_addr constant [5 x i8] c"array", align 1, !dbg !241
@"internal/reflectlite$string.65" = internal unnamed_addr constant [4 x i8] c"func", align 1, !dbg !243
@"internal/reflectlite$string.66" = internal unnamed_addr constant [3 x i8] c"map", align 1, !dbg !245
@"internal/reflectlite$string.67" = internal unnamed_addr constant [6 x i8] c"struct", align 1, !dbg !247
@"internal/reflectlite$string.68" = internal unnamed_addr constant [4 x i8] c"kind", align 1, !dbg !249
@"reflect/types.type:named:internal/reflectlite.TypeError" = internal constant { i8, i16, ptr, ptr, ptr, [22 x i8] } { i8 122, i16 0, ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr @"reflect/types.type:struct:{Method:basic:string}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", [22 x i8] c"reflectlite.TypeError\00" }, align 8, !dbg !251
@"reflect/types.type:struct:{Method:basic:string}" = internal constant { i8, i16, ptr, ptr, i32, i16, [1 x { ptr, ptr }] } { i8 90, i16 0, ptr @"reflect/types.type:pointer:struct:{Method:basic:string}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", i32 16, i16 1, [1 x { ptr, ptr }] [{ ptr, ptr } { ptr @"reflect/types.type:basic:string", ptr @"reflect/types.type:struct:{Method:basic:string}.Method" }] }, align 8, !dbg !259
@"reflect/types.type:pointer:struct:{Method:basic:string}" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:struct:{Method:basic:string}" }, align 8, !dbg !261
@"reflect/types.type:struct:{Method:basic:string}.Method" = internal unnamed_addr constant [9 x i8] c"\04\00Method\00", align 1
@"internal/reflectlite$string.87" = internal unnamed_addr constant [7 x i8] c"chan<- ", align 1, !dbg !263
@"internal/reflectlite$string.88" = internal unnamed_addr constant [7 x i8] c"<-chan ", align 1, !dbg !265
@"internal/reflectlite$string.89" = internal unnamed_addr constant [6 x i8] c"chan (", align 1, !dbg !267
@"internal/reflectlite$string.90" = internal unnamed_addr constant [1 x i8] c")", align 1, !dbg !269
@"internal/reflectlite$string.91" = internal unnamed_addr constant [5 x i8] c"chan ", align 1, !dbg !271
@"internal/reflectlite$string.92" = internal unnamed_addr constant [1 x i8] c"*", align 1, !dbg !273
@"internal/reflectlite$string.93" = internal unnamed_addr constant [2 x i8] c"[]", align 1, !dbg !275
@"internal/reflectlite$string.94" = internal unnamed_addr constant [1 x i8] c"[", align 1, !dbg !277
@"internal/reflectlite$string.95" = internal unnamed_addr constant [1 x i8] c"]", align 1, !dbg !279
@"internal/reflectlite$string.96" = internal unnamed_addr constant [4 x i8] c"map[", align 1, !dbg !281
@"internal/reflectlite$string.97" = internal unnamed_addr constant [1 x i8] c"]", align 1, !dbg !283
@"internal/reflectlite$string.98" = internal unnamed_addr constant [9 x i8] c"struct {}", align 1, !dbg !285
@"internal/reflectlite$string.100" = internal unnamed_addr constant [1 x i8] c" ", align 1, !dbg !287
@"internal/reflectlite$string.101" = internal unnamed_addr constant [1 x i8] c" ", align 1, !dbg !289
@"internal/reflectlite$string.102" = internal unnamed_addr constant [1 x i8] c" ", align 1, !dbg !291
@"internal/reflectlite$string.103" = internal unnamed_addr constant [1 x i8] c";", align 1, !dbg !293
@"internal/reflectlite$string.104" = internal unnamed_addr constant [2 x i8] c" }", align 1, !dbg !295
@"internal/reflectlite$string.105" = internal unnamed_addr constant [12 x i8] c"interface {}", align 1, !dbg !297
@"internal/reflectlite$string.106" = internal unnamed_addr constant [8 x i8] c"struct {", align 1, !dbg !302
@"internal/reflectlite$string.107" = internal unnamed_addr constant [33 x i8] c"reflect: field index out of range", align 1, !dbg !304
@"internal/reflectlite$pack.108" = internal unnamed_addr constant { %runtime._string } { %runtime._string { ptr @"internal/reflectlite$string.107", i64 33 } }
@"internal/reflectlite$string.111" = internal unnamed_addr constant [30 x i8] c"reflect: call of reflect.Type.", align 1, !dbg !309
@"internal/reflectlite$string.112" = internal unnamed_addr constant [16 x i8] c" on invalid type", align 1, !dbg !314
@"internal/reflectlite$string.229" = internal unnamed_addr constant [17 x i8] c"reflect: call of ", align 1, !dbg !317
@"internal/reflectlite$string.230" = internal unnamed_addr constant [14 x i8] c" on zero Value", align 1, !dbg !323
@"internal/reflectlite$string.231" = internal unnamed_addr constant [17 x i8] c"reflect: call of ", align 1, !dbg !325
@"internal/reflectlite$string.232" = internal unnamed_addr constant [4 x i8] c" on ", align 1, !dbg !327
@"internal/reflectlite$string.233" = internal unnamed_addr constant [6 x i8] c" Value", align 1, !dbg !329
@"internal/task.activeTasks" = internal global ptr @"internal/task.mainTask", align 8, !dbg !331
@"internal/task.mainTask" = internal global %"internal/task.Task" zeroinitializer, align 8, !dbg !377
@"internal/task$string" = internal unnamed_addr constant [30 x i8] c"sync: unlock of unlocked Mutex", align 1, !dbg !379
@"internal/task$pack" = internal unnamed_addr constant { %runtime._string } { %runtime._string { ptr @"internal/task$string", i64 30 } }
@"internal/task.numCPU" = internal global i32 0, align 4, !dbg !382
@"internal/task.activeTaskLock" = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !385
@"internal/task$string.7" = internal unnamed_addr constant [20 x i8] c"unknown current task", align 1, !dbg !389
@"internal/task$string.8" = internal unnamed_addr constant [12 x i8] c"*** pause:  ", align 1, !dbg !394
@"internal/task.otherGoroutines" = internal global i32 0, align 4, !dbg !396
@"internal/task$string.12" = internal unnamed_addr constant [9 x i8] c"*** exit:", align 1, !dbg !398
@"internal/task$string.13" = internal unnamed_addr constant [17 x i8] c"taskExited failed", align 1, !dbg !400
@"internal/task.scanWaitGroup" = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !402
@"internal/task.gcState" = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !408
@runtime.xorshift32State = internal global i32 1, align 4, !dbg !410
@runtime.xorshift64State = internal global i64 1, align 8, !dbg !413
@runtime.heapSize = internal global i64 131072, align 8, !dbg !415
@"reflect/types.type:basic:string" = internal constant { i8, ptr } { i8 81, ptr @"reflect/types.type:pointer:basic:string" }, align 8, !dbg !418
@"reflect/types.type:pointer:basic:string" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:basic:string" }, align 8, !dbg !420
@runtime.zeroSizedAlloc = internal global i8 0, align 1, !dbg !422
@runtime.gcLock = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !425
@"runtime$string.7" = internal unnamed_addr constant [17 x i8] c"gc: out of memory", align 1, !dbg !427
@__ehdr_start = external global %runtime.elfHeader, align 8
@"runtime$string.12" = internal unnamed_addr constant [7 x i8] c"panic: ", align 1, !dbg !429
@"runtime$string.13" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !432
@"runtime$string.14" = internal unnamed_addr constant [2 x i8] c": ", align 1, !dbg !437
@"runtime$string.15" = internal unnamed_addr constant [22 x i8] c"panic: runtime error: ", align 1, !dbg !439
@"runtime$string.17" = internal unnamed_addr constant [23 x i8] c"nil pointer dereference", align 1, !dbg !442
@"runtime$string.19" = internal unnamed_addr constant [18 x i8] c"index out of range", align 1, !dbg !445
@"runtime$string.20" = internal unnamed_addr constant [18 x i8] c"slice out of range", align 1, !dbg !450
@"runtime$string.22" = internal unnamed_addr constant [37 x i8] c"unsafe.Slice/String: len out of range", align 1, !dbg !452
@"runtime$string.24" = internal unnamed_addr constant [14 x i8] c"negative shift", align 1, !dbg !457
@"runtime$string.35" = internal unnamed_addr constant [3 x i8] c"NaN", align 1, !dbg !459
@"runtime$string.36" = internal unnamed_addr constant [4 x i8] c"+Inf", align 1, !dbg !462
@"runtime$string.37" = internal unnamed_addr constant [4 x i8] c"-Inf", align 1, !dbg !464
@"runtime$string.38" = internal unnamed_addr constant [3 x i8] c"NaN", align 1, !dbg !466
@"runtime$string.39" = internal unnamed_addr constant [4 x i8] c"+Inf", align 1, !dbg !468
@"runtime$string.40" = internal unnamed_addr constant [4 x i8] c"-Inf", align 1, !dbg !470
@"runtime$string.41" = internal unnamed_addr constant [2 x i8] c"i)", align 1, !dbg !472
@"runtime$string.42" = internal unnamed_addr constant [2 x i8] c"i)", align 1, !dbg !474
@"runtime$string.45" = internal unnamed_addr constant [3 x i8] c"nil", align 1, !dbg !476
@"runtime$string.46" = internal unnamed_addr constant [4 x i8] c"true", align 1, !dbg !478
@"runtime$string.47" = internal unnamed_addr constant [5 x i8] c"false", align 1, !dbg !480
@runtime.stackTop = internal global i64 0, align 8, !dbg !482
@runtime.main_argc = internal global i32 0, align 4, !dbg !484
@runtime.main_argv = internal global ptr null, align 8, !dbg !486
@"runtime$string.50" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !489
@"runtime$string.51" = internal unnamed_addr constant [16 x i8] c": caught signal ", align 1, !dbg !491
@"runtime$string.52" = internal unnamed_addr constant [6 x i8] c"SIGBUS", align 1, !dbg !493
@"runtime$string.53" = internal unnamed_addr constant [6 x i8] c"SIGILL", align 1, !dbg !495
@"runtime$string.54" = internal unnamed_addr constant [7 x i8] c"SIGSEGV", align 1, !dbg !497
@"runtime$string.55" = internal unnamed_addr constant [20 x i8] c"panic: runtime error", align 1, !dbg !499
@runtime.signalFutex = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !501
@runtime.heapMaxSize = internal global i64 0, align 8, !dbg !503
@runtime.heapStart = internal global i64 0, align 8, !dbg !505
@runtime.heapEnd = internal global i64 0, align 8, !dbg !507
@"runtime$string.56" = internal unnamed_addr constant [27 x i8] c"cannot allocate heap memory", align 1, !dbg !509
@runtime.receivedSignals = internal global %"sync/atomic.Bool" zeroinitializer, align 4, !dbg !514
@runtime.printLock = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !516
@.string = private unnamed_addr global [6 x i8] c"0.41.1", align 1
@runtime.buildVersion = global %runtime._string { ptr @.string, i64 6 }, align 8
@"internal/reflectlite$alloc" = internal global { ptr, i64 } { ptr @"internal/reflectlite$string", i64 4 }, align 8
@"internal/reflectlite$alloc.107" = internal global { ptr, i64 } { ptr @"internal/reflectlite$string.1", i64 3 }, align 8
@"internal/reflectlite$alloc.108" = internal global { ptr, i64 } { ptr @"internal/reflectlite$string.2", i64 5 }, align 8
@"internal/reflectlite$alloc.110" = internal global { ptr, i64 } { ptr @"internal/reflectlite$string.4", i64 3 }, align 8
@"internal/reflectlite$alloc.111" = internal global { ptr, i64 } { ptr @"internal/reflectlite$string.5", i64 8 }, align 8
@"internal/reflectlite$alloc.112" = internal global { ptr, i64 } { ptr @"internal/reflectlite$string.6", i64 7 }, align 8
@"reflect/types.type:named:internal/reflectlite.Kind" = internal constant { i8, i16, ptr, ptr, ptr, [17 x i8] } { i8 -24, i16 1, ptr @"reflect/types.type:pointer:named:internal/reflectlite.Kind", ptr @"reflect/types.type:basic:uint8", ptr @"reflect/types.type.pkgpath:internal/reflectlite", [17 x i8] c"reflectlite.Kind\00" }, align 8
@"reflect/types.type:named:internal/reflectlite.RawType" = internal constant { i8, i16, ptr, ptr, ptr, [20 x i8] } { i8 -6, i16 4, ptr @"reflect/types.type:pointer:named:internal/reflectlite.RawType", ptr @"reflect/types.type:struct:{meta:basic:uint8}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", [20 x i8] c"reflectlite.RawType\00" }, align 8
@"reflect/types.type:named:internal/reflectlite.badSyntax" = internal constant { i8, i16, ptr, ptr, ptr, [22 x i8] } { i8 -6, i16 1, ptr @"reflect/types.type:pointer:named:internal/reflectlite.badSyntax", ptr @"reflect/types.type:struct:{}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", [22 x i8] c"reflectlite.badSyntax\00" }, align 8
@"reflect/types.type:pointer:named:internal/reflectlite.Kind" = internal constant { i8, i16, ptr } { i8 -43, i16 1, ptr @"reflect/types.type:named:internal/reflectlite.Kind" }, align 8
@"reflect/types.type:pointer:named:internal/reflectlite.RawType" = internal constant { i8, i16, ptr } { i8 -43, i16 25, ptr @"reflect/types.type:named:internal/reflectlite.RawType" }, align 8
@"reflect/types.type:pointer:named:internal/reflectlite.TypeError" = internal constant { i8, i16, ptr } { i8 -43, i16 1, ptr @"reflect/types.type:named:internal/reflectlite.TypeError" }, align 8
@"reflect/types.type:pointer:named:internal/reflectlite.ValueError" = internal constant { i8, i16, ptr } { i8 -43, i16 1, ptr @"reflect/types.type:named:internal/reflectlite.ValueError" }, align 8
@"reflect/types.type:pointer:named:internal/reflectlite.badSyntax" = internal constant { i8, i16, ptr } { i8 -43, i16 1, ptr @"reflect/types.type:named:internal/reflectlite.badSyntax" }, align 8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #0

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"math/bits.Len"(i64 %x, ptr %context) #1 !dbg !1735 {
entry:
    #dbg_value(i64 %x, !1740, !DIExpression(), !1741)
  %0 = call i64 @llvm.ctlz.i64(i64 %x, i1 false), !dbg !1741
  %1 = sub i64 64, %0, !dbg !1741
  ret i64 %1, !dbg !1741
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Log(double %x, ptr %context) unnamed_addr #1 !dbg !1742 {
entry:
    #dbg_value(double %x, !1747, !DIExpression(), !1748)
  %0 = call double @llvm.log.f64(double %x), !dbg !1748
  ret double %0, !dbg !1748
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #0

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Floor(double %x, ptr %context) #1 !dbg !1749 {
entry:
    #dbg_value(double %x, !1752, !DIExpression(), !1753)
  %0 = call double @llvm.floor.f64(double %x), !dbg !1753
  ret double %0, !dbg !1753
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #0

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Log10(double %x, ptr %context) #1 !dbg !1754 {
entry:
    #dbg_value(double %x, !1757, !DIExpression(), !1758)
  br i1 false, label %if.then, label %if.done, !dbg !1759

if.then:                                          ; preds = %entry
    #dbg_value(double %x, !1757, !DIExpression(), !1760)
  %0 = call double @math.archLog10(double %x, ptr undef), !dbg !1761
  ret double %0, !dbg !1762

if.done:                                          ; preds = %entry
    #dbg_value(double %x, !1757, !DIExpression(), !1763)
  %1 = call double @math.log10(double %x, ptr undef), !dbg !1764
  ret double %1, !dbg !1765
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.archLog10(double %x, ptr %context) unnamed_addr #1 !dbg !1766 {
entry:
    #dbg_value(double %x, !1768, !DIExpression(), !1769)
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"math$pack.32", ptr undef), !dbg !1770
  unreachable, !dbg !1770
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.log10(double %x, ptr %context) unnamed_addr #1 !dbg !1771 {
entry:
    #dbg_value(double %x, !1773, !DIExpression(), !1774)
    #dbg_value(double %x, !1773, !DIExpression(), !1775)
  %0 = call double @math.Log(double %x, ptr undef), !dbg !1776
  %1 = fmul double %0, 0x3FDBCB7B1526E50E, !dbg !1777
  ret double %1, !dbg !1778
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.SwapUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %new, ptr %context) unnamed_addr #1 !dbg !1779 {
entry:
    #dbg_value(ptr %addr, !1785, !DIExpression(), !1787)
    #dbg_value(i32 %new, !1786, !DIExpression(), !1787)
  %0 = atomicrmw xchg ptr %addr, i32 %new syncscope("singlethread") seq_cst, align 4, !dbg !1787
  ret i32 %0, !dbg !1787
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"sync/atomic.CompareAndSwapUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %old, i32 %new, ptr %context) unnamed_addr #1 !dbg !1788 {
entry:
    #dbg_value(ptr %addr, !1792, !DIExpression(), !1795)
    #dbg_value(i32 %old, !1793, !DIExpression(), !1795)
    #dbg_value(i32 %new, !1794, !DIExpression(), !1795)
  %0 = cmpxchg ptr %addr, i32 %old, i32 %new syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !1795
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !1795
  ret i1 %1, !dbg !1795
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.AddUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %delta, ptr %context) unnamed_addr #1 !dbg !1796 {
entry:
    #dbg_value(ptr %addr, !1798, !DIExpression(), !1800)
    #dbg_value(i32 %delta, !1799, !DIExpression(), !1800)
  %0 = atomicrmw add ptr %addr, i32 %delta syncscope("singlethread") seq_cst, align 4, !dbg !1800
  %1 = add i32 %0, %delta, !dbg !1800
  ret i32 %1, !dbg !1800
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.LoadUint32"(ptr nocapture dereferenceable_or_null(4) %addr, ptr %context) unnamed_addr #1 !dbg !1801 {
entry:
    #dbg_value(ptr %addr, !1805, !DIExpression(), !1806)
  %0 = load atomic i32, ptr %addr seq_cst, align 4, !dbg !1806
  ret i32 %0, !dbg !1806
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"sync/atomic.StoreUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %val, ptr %context) unnamed_addr #1 !dbg !1807 {
entry:
    #dbg_value(ptr %addr, !1809, !DIExpression(), !1811)
    #dbg_value(i32 %val, !1810, !DIExpression(), !1811)
  store atomic i32 %val, ptr %addr seq_cst, align 4, !dbg !1811
  ret void, !dbg !1811
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Add"(ptr dereferenceable_or_null(4) %x, i32 %delta, ptr %context) #1 !dbg !1812 {
entry:
    #dbg_value(ptr %x, !1818, !DIExpression(), !1820)
    #dbg_value(i32 %delta, !1819, !DIExpression(), !1820)
    #dbg_value(ptr %x, !1818, !DIExpression(), !1821)
  %0 = icmp eq ptr %x, null, !dbg !1822
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1822

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1822
    #dbg_value(i32 %delta, !1819, !DIExpression(), !1823)
  %2 = call i32 @"sync/atomic.AddUint32"(ptr %1, i32 %delta, ptr undef), !dbg !1824
  ret i32 %2, !dbg !1825

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1822
  unreachable, !dbg !1822
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr dereferenceable_or_null(4) %x, i32 %old, i32 %new, ptr %context) #1 !dbg !1826 {
entry:
    #dbg_value(ptr %x, !1830, !DIExpression(), !1833)
    #dbg_value(i32 %old, !1831, !DIExpression(), !1833)
    #dbg_value(i32 %new, !1832, !DIExpression(), !1833)
    #dbg_value(ptr %x, !1830, !DIExpression(), !1834)
  %0 = icmp eq ptr %x, null, !dbg !1835
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1835

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1835
    #dbg_value(i32 %old, !1831, !DIExpression(), !1836)
    #dbg_value(i32 %new, !1832, !DIExpression(), !1837)
  %2 = call i1 @"sync/atomic.CompareAndSwapUint32"(ptr %1, i32 %old, i32 %new, ptr undef), !dbg !1838
  ret i1 %2, !dbg !1839

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1835
  unreachable, !dbg !1835
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Load"(ptr dereferenceable_or_null(4) %x, ptr %context) #1 !dbg !1840 {
entry:
    #dbg_value(ptr %x, !1844, !DIExpression(), !1845)
    #dbg_value(ptr %x, !1844, !DIExpression(), !1846)
  %0 = icmp eq ptr %x, null, !dbg !1847
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1847

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1847
  %2 = call i32 @"sync/atomic.LoadUint32"(ptr %1, ptr undef), !dbg !1848
  ret i32 %2, !dbg !1849

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1847
  unreachable, !dbg !1847
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*sync/atomic.Uint32).Store"(ptr dereferenceable_or_null(4) %x, i32 %val, ptr %context) #1 !dbg !1850 {
entry:
    #dbg_value(ptr %x, !1852, !DIExpression(), !1854)
    #dbg_value(i32 %val, !1853, !DIExpression(), !1854)
    #dbg_value(ptr %x, !1852, !DIExpression(), !1855)
  %0 = icmp eq ptr %x, null, !dbg !1856
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1856

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1856
    #dbg_value(i32 %val, !1853, !DIExpression(), !1857)
  call void @"sync/atomic.StoreUint32"(ptr %1, i32 %val, ptr undef), !dbg !1858
  ret void, !dbg !1859

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1856
  unreachable, !dbg !1856
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Swap"(ptr dereferenceable_or_null(4) %x, i32 %new, ptr %context) #1 !dbg !1860 {
entry:
    #dbg_value(ptr %x, !1862, !DIExpression(), !1864)
    #dbg_value(i32 %new, !1863, !DIExpression(), !1864)
    #dbg_value(ptr %x, !1862, !DIExpression(), !1865)
  %0 = icmp eq ptr %x, null, !dbg !1866
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1866

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1866
    #dbg_value(i32 %new, !1863, !DIExpression(), !1867)
  %2 = call i32 @"sync/atomic.SwapUint32"(ptr %1, i32 %new, ptr undef), !dbg !1868
  ret i32 %2, !dbg !1869

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1866
  unreachable, !dbg !1866
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*internal/futex.Futex).Wait"(ptr dereferenceable_or_null(4) %f, i32 %cmp, ptr %context) #1 !dbg !1870 {
entry:
    #dbg_value(ptr %f, !1876, !DIExpression(), !1878)
    #dbg_value(i32 %cmp, !1877, !DIExpression(), !1878)
    #dbg_value(ptr %f, !1876, !DIExpression(), !1879)
  %0 = icmp eq ptr %f, null, !dbg !1880
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1880

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1880
    #dbg_value(i32 %cmp, !1877, !DIExpression(), !1881)
  call void @tinygo_futex_wait(ptr %1, i32 %cmp), !dbg !1882
  ret i1 false, !dbg !1883

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1880
  unreachable, !dbg !1880
}

declare void @tinygo_futex_wait(ptr nocapture dereferenceable_or_null(4), i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/futex.Futex).Wake"(ptr dereferenceable_or_null(4) %f, ptr %context) #1 !dbg !1884 {
entry:
    #dbg_value(ptr %f, !1888, !DIExpression(), !1889)
    #dbg_value(ptr %f, !1888, !DIExpression(), !1890)
  %0 = icmp eq ptr %f, null, !dbg !1891
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1891

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1891
  call void @tinygo_futex_wake(ptr %1), !dbg !1892
  ret void, !dbg !1893

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1891
  unreachable, !dbg !1891
}

declare void @tinygo_futex_wake(ptr nocapture dereferenceable_or_null(4)) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/futex.Futex).WakeAll"(ptr dereferenceable_or_null(4) %f, ptr %context) #1 !dbg !1894 {
entry:
    #dbg_value(ptr %f, !1896, !DIExpression(), !1897)
    #dbg_value(ptr %f, !1896, !DIExpression(), !1898)
  %0 = icmp eq ptr %f, null, !dbg !1899
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1899

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1899
  call void @tinygo_futex_wake_all(ptr %1), !dbg !1900
  ret void, !dbg !1901

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1899
  unreachable, !dbg !1899
}

declare void @tinygo_futex_wake_all(ptr nocapture dereferenceable_or_null(4)) #2

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(internal/gclayout.Layout).AsPtr"(i64 %l, ptr %context) #1 !dbg !1902 {
entry:
    #dbg_value(i64 %l, !1908, !DIExpression(), !1909)
    #dbg_value(i64 %l, !1908, !DIExpression(), !1910)
  %0 = inttoptr i64 %l to ptr, !dbg !1911
  ret ptr %0, !dbg !1912
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/itoa.Itoa"(i64 %val, ptr %context) #1 !dbg !1913 {
entry:
    #dbg_value(i64 %val, !1918, !DIExpression(), !1919)
    #dbg_value(i64 %val, !1918, !DIExpression(), !1920)
  %0 = icmp slt i64 %val, 0, !dbg !1921
  br i1 %0, label %if.then, label %if.done, !dbg !1922

if.then:                                          ; preds = %entry
    #dbg_value(i64 %val, !1918, !DIExpression(), !1923)
  %1 = sub i64 0, %val, !dbg !1924
  %2 = call %runtime._string @"internal/itoa.Uitoa"(i64 %1, ptr undef), !dbg !1925
  %3 = extractvalue %runtime._string %2, 0, !dbg !1926
  %4 = extractvalue %runtime._string %2, 1, !dbg !1926
  %5 = call %runtime._string @runtime.stringConcat(ptr @"internal/itoa$string", i64 1, ptr %3, i64 %4, ptr undef), !dbg !1926
  ret %runtime._string %5, !dbg !1927

if.done:                                          ; preds = %entry
    #dbg_value(i64 %val, !1918, !DIExpression(), !1928)
  %6 = call %runtime._string @"internal/itoa.Uitoa"(i64 %val, ptr undef), !dbg !1929
  ret %runtime._string %6, !dbg !1930
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/itoa.Uitoa"(i64 %val, ptr %context) unnamed_addr #1 !dbg !1931 {
entry:
    #dbg_value(i64 %val, !1933, !DIExpression(), !1936)
    #dbg_value(i64 %val, !1933, !DIExpression(), !1937)
  %0 = icmp eq i64 %val, 0, !dbg !1938
  br i1 %0, label %if.then, label %if.done, !dbg !1939

if.then:                                          ; preds = %entry
  ret %runtime._string { ptr @"internal/itoa$string.1", i64 1 }, !dbg !1940

if.done:                                          ; preds = %entry
  %buf = call align 1 ptr @runtime.alloc(i64 20, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !1941
    #dbg_value(i64 19, !1934, !DIExpression(), !1942)
  br label %for.loop, !dbg !1939

for.loop:                                         ; preds = %lookup.next, %if.done
  %1 = phi i64 [ %val, %if.done ], [ %4, %lookup.next ], !dbg !1943
  %2 = phi i64 [ 19, %if.done ], [ %11, %lookup.next ], !dbg !1942
    #dbg_value(i64 %1, !1933, !DIExpression(), !1944)
  %3 = icmp uge i64 %1, 10, !dbg !1945
  br i1 %3, label %for.body, label %for.done, !dbg !1939

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !1933, !DIExpression(), !1946)
  %4 = udiv i64 %1, 10, !dbg !1947
    #dbg_value(i64 %4, !1935, !DIExpression(), !1948)
    #dbg_value(i64 %2, !1934, !DIExpression(), !1949)
    #dbg_value(i64 %1, !1933, !DIExpression(), !1950)
  %5 = add i64 48, %1, !dbg !1951
    #dbg_value(i64 %4, !1935, !DIExpression(), !1952)
  %6 = mul i64 %4, 10, !dbg !1953
  %7 = sub i64 %5, %6, !dbg !1954
  %8 = trunc i64 %7 to i8, !dbg !1955
  %9 = icmp uge i64 %2, 20, !dbg !1956
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !1956

lookup.next:                                      ; preds = %for.body
  %10 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1956
  store i8 %8, ptr %10, align 1, !dbg !1956
  %11 = sub i64 %2, 1, !dbg !1957
    #dbg_value(i64 %11, !1934, !DIExpression(), !1957)
    #dbg_value(i64 %4, !1935, !DIExpression(), !1958)
    #dbg_value(i64 %4, !1933, !DIExpression(), !1959)
  br label %for.loop, !dbg !1939

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !1934, !DIExpression(), !1960)
    #dbg_value(i64 %1, !1933, !DIExpression(), !1961)
  %12 = add i64 48, %1, !dbg !1962
  %13 = trunc i64 %12 to i8, !dbg !1963
  %14 = icmp uge i64 %2, 20, !dbg !1964
  br i1 %14, label %lookup.throw1, label %lookup.next2, !dbg !1964

lookup.next2:                                     ; preds = %for.done
  %15 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1964
  store i8 %13, ptr %15, align 1, !dbg !1964
    #dbg_value(i64 %2, !1934, !DIExpression(), !1965)
  %slice.lowhigh = icmp ugt i64 %2, 20, !dbg !1966
  %slice.lowmax = or i1 %slice.lowhigh, false, !dbg !1966
  %slice.lowcap = or i1 %slice.lowmax, false, !dbg !1966
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !1966

slice.next:                                       ; preds = %lookup.next2
  %slice.len = sub i64 20, %2, !dbg !1966
  %slice.ptr = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1966
  %slice.cap = sub i64 20, %2, !dbg !1966
  %16 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !1966
  %17 = insertvalue { ptr, i64, i64 } %16, i64 %slice.len, 1, !dbg !1966
  %18 = insertvalue { ptr, i64, i64 } %17, i64 %slice.cap, 2, !dbg !1966
  %19 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !1967
  %20 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !1967
  %21 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !1967
  %22 = call %runtime._string @runtime.stringFromBytes(ptr %19, i64 %20, i64 %21, ptr undef), !dbg !1967
  ret %runtime._string %22, !dbg !1968

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !1956
  unreachable, !dbg !1956

lookup.throw1:                                    ; preds = %for.done
  call void @runtime.lookupPanic(ptr undef), !dbg !1964
  unreachable, !dbg !1964

slice.throw:                                      ; preds = %lookup.next2
  call void @runtime.slicePanic(ptr undef), !dbg !1966
  unreachable, !dbg !1966
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"unicode/utf8.DecodeRuneInString"(ptr readonly %s.data, i64 %s.len, ptr %context) #1 !dbg !1969 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !1977
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !1977
    #dbg_value(ptr %s.data, !1973, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1977)
    #dbg_value(i64 %s.len, !1973, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1977)
    #dbg_value(%runtime._string %1, !1973, !DIExpression(), !1978)
  %2 = extractvalue %runtime._string %1, 0, !dbg !1979
  %3 = extractvalue %runtime._string %1, 1, !dbg !1979
  %4 = call i1 @runtime.stringEqual(ptr %2, i64 %3, ptr null, i64 0, ptr undef), !dbg !1979
  %5 = xor i1 %4, true, !dbg !1979
  br i1 %5, label %cond.true, label %if.else, !dbg !1980

cond.true:                                        ; preds = %entry
    #dbg_value(%runtime._string %1, !1973, !DIExpression(), !1981)
  %len = extractvalue %runtime._string %1, 1, !dbg !1982
  %6 = icmp uge i64 0, %len, !dbg !1982
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !1982

lookup.next:                                      ; preds = %cond.true
  %7 = extractvalue %runtime._string %1, 0, !dbg !1982
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !1982
  %9 = load i8, ptr %8, align 1, !dbg !1982
  %10 = icmp ult i8 %9, -128, !dbg !1983
  br i1 %10, label %if.then, label %if.else, !dbg !1980

if.then:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !1973, !DIExpression(), !1984)
  %len1 = extractvalue %runtime._string %1, 1, !dbg !1985
  %11 = icmp uge i64 0, %len1, !dbg !1985
  br i1 %11, label %lookup.throw2, label %lookup.next3, !dbg !1985

lookup.next3:                                     ; preds = %if.then
  %12 = extractvalue %runtime._string %1, 0, !dbg !1985
  %13 = getelementptr inbounds i8, ptr %12, i64 0, !dbg !1985
  %14 = load i8, ptr %13, align 1, !dbg !1985
  %15 = zext i8 %14 to i32, !dbg !1986
  %16 = insertvalue { i32, i64 } zeroinitializer, i32 %15, 0, !dbg !1987
  %17 = insertvalue { i32, i64 } %16, i64 1, 1, !dbg !1987
  ret { i32, i64 } %17, !dbg !1987

if.else:                                          ; preds = %lookup.next, %entry
    #dbg_value(%runtime._string %1, !1973, !DIExpression(), !1988)
  %18 = extractvalue %runtime._string %1, 0, !dbg !1989
  %19 = extractvalue %runtime._string %1, 1, !dbg !1989
  %20 = call { i32, i64 } @"unicode/utf8.decodeRuneInStringSlow"(ptr %18, i64 %19, ptr undef), !dbg !1989
  %21 = extractvalue { i32, i64 } %20, 0, !dbg !1989
    #dbg_value(i32 %21, !1974, !DIExpression(), !1990)
  %22 = extractvalue { i32, i64 } %20, 1, !dbg !1989
    #dbg_value(i64 %22, !1976, !DIExpression(), !1991)
  %23 = insertvalue { i32, i64 } zeroinitializer, i32 %21, 0, !dbg !1992
  %24 = insertvalue { i32, i64 } %23, i64 %22, 1, !dbg !1992
  ret { i32, i64 } %24, !dbg !1992

lookup.throw:                                     ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !1982
  unreachable, !dbg !1982

lookup.throw2:                                    ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !1985
  unreachable, !dbg !1985
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"unicode/utf8.decodeRuneInStringSlow"(ptr readonly %s.data, i64 %s.len, ptr %context) unnamed_addr #1 !dbg !1993 {
entry:
  %accept = alloca %"unicode/utf8.acceptRange", align 8, !dbg !2005
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !2005
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !2005
    #dbg_value(ptr %s.data, !1995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2005)
    #dbg_value(i64 %s.len, !1995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2005)
    #dbg_value(%runtime._string %1, !1995, !DIExpression(), !2006)
  %len = extractvalue %runtime._string %1, 1, !dbg !2007
    #dbg_value(i64 %len, !1996, !DIExpression(), !2008)
    #dbg_value(i64 %len, !1996, !DIExpression(), !2009)
  %2 = icmp slt i64 %len, 1, !dbg !2010
  br i1 %2, label %if.then, label %if.done, !dbg !2011

if.then:                                          ; preds = %entry
  ret { i32, i64 } { i32 65533, i64 0 }, !dbg !2012

if.done:                                          ; preds = %entry
    #dbg_value(%runtime._string %1, !1995, !DIExpression(), !2013)
  %len17 = extractvalue %runtime._string %1, 1, !dbg !2014
  %3 = icmp uge i64 0, %len17, !dbg !2014
  br i1 %3, label %lookup.throw, label %lookup.next, !dbg !2014

lookup.next:                                      ; preds = %if.done
  %4 = extractvalue %runtime._string %1, 0, !dbg !2014
  %5 = getelementptr inbounds i8, ptr %4, i64 0, !dbg !2014
  %6 = load i8, ptr %5, align 1, !dbg !2014
    #dbg_value(i8 %6, !1997, !DIExpression(), !2015)
    #dbg_value(i8 %6, !1997, !DIExpression(), !2016)
  %7 = zext i8 %6 to i64, !dbg !2017
  %8 = icmp uge i64 %7, 256, !dbg !2017
  br i1 %8, label %lookup.throw18, label %lookup.next19, !dbg !2017

lookup.next19:                                    ; preds = %lookup.next
  %9 = getelementptr inbounds [256 x i8], ptr @"unicode/utf8.first", i32 0, i64 %7, !dbg !2017
  %10 = load i8, ptr %9, align 1, !dbg !2017
    #dbg_value(i8 %10, !1998, !DIExpression(), !2018)
    #dbg_value(i8 %10, !1998, !DIExpression(), !2019)
  %11 = icmp uge i8 %10, -16, !dbg !2020
  br i1 %11, label %if.then1, label %if.done2, !dbg !2011

if.then1:                                         ; preds = %lookup.next19
    #dbg_value(i8 %10, !1998, !DIExpression(), !2021)
  %12 = zext i8 %10 to i32, !dbg !2022
  %13 = shl i32 %12, 31, !dbg !2023
  %shift.result = select i1 false, i32 0, i32 %13, !dbg !2023
  %14 = ashr i32 %shift.result, 31, !dbg !2024
    #dbg_value(i32 %14, !1999, !DIExpression(), !2025)
    #dbg_value(%runtime._string %1, !1995, !DIExpression(), !2026)
  %len20 = extractvalue %runtime._string %1, 1, !dbg !2027
  %15 = icmp uge i64 0, %len20, !dbg !2027
  br i1 %15, label %lookup.throw21, label %lookup.next22, !dbg !2027

lookup.next22:                                    ; preds = %if.then1
  %16 = extractvalue %runtime._string %1, 0, !dbg !2027
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !2027
  %18 = load i8, ptr %17, align 1, !dbg !2027
  %19 = zext i8 %18 to i32, !dbg !2028
    #dbg_value(i32 %14, !1999, !DIExpression(), !2029)
  %20 = xor i32 %14, -1, !dbg !2030
  %21 = and i32 %19, %20, !dbg !2030
    #dbg_value(i32 %14, !1999, !DIExpression(), !2031)
  %22 = and i32 65533, %14, !dbg !2032
  %23 = or i32 %21, %22, !dbg !2033
  %24 = insertvalue { i32, i64 } zeroinitializer, i32 %23, 0, !dbg !2034
  %25 = insertvalue { i32, i64 } %24, i64 1, 1, !dbg !2034
  ret { i32, i64 } %25, !dbg !2034

if.done2:                                         ; preds = %lookup.next19
    #dbg_value(i8 %10, !1998, !DIExpression(), !2035)
  %26 = and i8 %10, 7, !dbg !2036
  %27 = zext i8 %26 to i64, !dbg !2037
    #dbg_value(i64 %27, !2000, !DIExpression(), !2038)
  store %"unicode/utf8.acceptRange" zeroinitializer, ptr %accept, align 1, !dbg !2005
    #dbg_value(i8 %10, !1998, !DIExpression(), !2039)
  %28 = lshr i8 %10, 4, !dbg !2040
  %shift.result23 = select i1 false, i8 0, i8 %28, !dbg !2040
  %29 = zext i8 %shift.result23 to i64, !dbg !2041
  %30 = icmp uge i64 %29, 16, !dbg !2041
  br i1 %30, label %lookup.throw24, label %lookup.next25, !dbg !2041

lookup.next25:                                    ; preds = %if.done2
  %31 = getelementptr inbounds [16 x %"unicode/utf8.acceptRange"], ptr @"unicode/utf8.acceptRanges", i32 0, i64 %29, !dbg !2041
  %32 = load %"unicode/utf8.acceptRange", ptr %31, align 1, !dbg !2041
  store %"unicode/utf8.acceptRange" %32, ptr %accept, align 1, !dbg !2042
    #dbg_value(%"unicode/utf8.acceptRange" %32, !2001, !DIExpression(), !2042)
    #dbg_value(i64 %len, !1996, !DIExpression(), !2043)
    #dbg_value(i64 %27, !2000, !DIExpression(), !2044)
  %33 = icmp slt i64 %len, %27, !dbg !2045
  br i1 %33, label %if.then3, label %if.done4, !dbg !2011

if.then3:                                         ; preds = %lookup.next25
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2046

if.done4:                                         ; preds = %lookup.next25
    #dbg_value(%runtime._string %1, !1995, !DIExpression(), !2047)
  %len26 = extractvalue %runtime._string %1, 1, !dbg !2048
  %34 = icmp uge i64 1, %len26, !dbg !2048
  br i1 %34, label %lookup.throw27, label %lookup.next28, !dbg !2048

lookup.next28:                                    ; preds = %if.done4
  %35 = extractvalue %runtime._string %1, 0, !dbg !2048
  %36 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !2048
  %37 = load i8, ptr %36, align 1, !dbg !2048
    #dbg_value(i8 %37, !2002, !DIExpression(), !2049)
    #dbg_value(i8 %37, !2002, !DIExpression(), !2050)
  %38 = getelementptr inbounds %"unicode/utf8.acceptRange", ptr %accept, i32 0, i32 0, !dbg !2051
  %39 = icmp eq ptr %38, null, !dbg !2051
  br i1 %39, label %deref.throw, label %deref.next, !dbg !2051

deref.next:                                       ; preds = %lookup.next28
  %40 = load i8, ptr %38, align 1, !dbg !2051
  %41 = icmp ult i8 %37, %40, !dbg !2052
  br i1 %41, label %if.then5, label %cond.false, !dbg !2011

if.then5:                                         ; preds = %deref.next30, %deref.next
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2053

cond.false:                                       ; preds = %deref.next
  %42 = getelementptr inbounds %"unicode/utf8.acceptRange", ptr %accept, i32 0, i32 1, !dbg !2054
  %43 = icmp eq ptr %42, null, !dbg !2054
  br i1 %43, label %deref.throw29, label %deref.next30, !dbg !2054

deref.next30:                                     ; preds = %cond.false
  %44 = load i8, ptr %42, align 1, !dbg !2054
    #dbg_value(i8 %37, !2002, !DIExpression(), !2055)
  %45 = icmp ult i8 %44, %37, !dbg !2056
  br i1 %45, label %if.then5, label %if.done6, !dbg !2011

if.done6:                                         ; preds = %deref.next30
    #dbg_value(i64 %27, !2000, !DIExpression(), !2057)
  %46 = icmp sle i64 %27, 2, !dbg !2058
  br i1 %46, label %if.then7, label %if.done8, !dbg !2011

if.then7:                                         ; preds = %if.done6
    #dbg_value(i8 %6, !1997, !DIExpression(), !2059)
  %47 = and i8 %6, 31, !dbg !2060
  %48 = zext i8 %47 to i32, !dbg !2061
  %49 = shl i32 %48, 6, !dbg !2062
  %shift.result31 = select i1 false, i32 0, i32 %49, !dbg !2062
    #dbg_value(i8 %37, !2002, !DIExpression(), !2063)
  %50 = and i8 %37, 63, !dbg !2064
  %51 = zext i8 %50 to i32, !dbg !2065
  %52 = or i32 %shift.result31, %51, !dbg !2066
  %53 = insertvalue { i32, i64 } zeroinitializer, i32 %52, 0, !dbg !2067
  %54 = insertvalue { i32, i64 } %53, i64 2, 1, !dbg !2067
  ret { i32, i64 } %54, !dbg !2067

if.done8:                                         ; preds = %if.done6
    #dbg_value(%runtime._string %1, !1995, !DIExpression(), !2068)
  %len32 = extractvalue %runtime._string %1, 1, !dbg !2069
  %55 = icmp uge i64 2, %len32, !dbg !2069
  br i1 %55, label %lookup.throw33, label %lookup.next34, !dbg !2069

lookup.next34:                                    ; preds = %if.done8
  %56 = extractvalue %runtime._string %1, 0, !dbg !2069
  %57 = getelementptr inbounds i8, ptr %56, i64 2, !dbg !2069
  %58 = load i8, ptr %57, align 1, !dbg !2069
    #dbg_value(i8 %58, !2003, !DIExpression(), !2070)
    #dbg_value(i8 %58, !2003, !DIExpression(), !2071)
  %59 = icmp ult i8 %58, -128, !dbg !2072
  br i1 %59, label %if.then9, label %cond.false10, !dbg !2011

if.then9:                                         ; preds = %cond.false10, %lookup.next34
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2073

cond.false10:                                     ; preds = %lookup.next34
    #dbg_value(i8 %58, !2003, !DIExpression(), !2074)
  %60 = icmp ult i8 -65, %58, !dbg !2075
  br i1 %60, label %if.then9, label %if.done11, !dbg !2011

if.done11:                                        ; preds = %cond.false10
    #dbg_value(i64 %27, !2000, !DIExpression(), !2076)
  %61 = icmp sle i64 %27, 3, !dbg !2077
  br i1 %61, label %if.then12, label %if.done13, !dbg !2011

if.then12:                                        ; preds = %if.done11
    #dbg_value(i8 %6, !1997, !DIExpression(), !2078)
  %62 = and i8 %6, 15, !dbg !2079
  %63 = zext i8 %62 to i32, !dbg !2080
  %64 = shl i32 %63, 12, !dbg !2081
  %shift.result35 = select i1 false, i32 0, i32 %64, !dbg !2081
    #dbg_value(i8 %37, !2002, !DIExpression(), !2082)
  %65 = and i8 %37, 63, !dbg !2083
  %66 = zext i8 %65 to i32, !dbg !2084
  %67 = shl i32 %66, 6, !dbg !2085
  %shift.result36 = select i1 false, i32 0, i32 %67, !dbg !2085
  %68 = or i32 %shift.result35, %shift.result36, !dbg !2086
    #dbg_value(i8 %58, !2003, !DIExpression(), !2087)
  %69 = and i8 %58, 63, !dbg !2088
  %70 = zext i8 %69 to i32, !dbg !2089
  %71 = or i32 %68, %70, !dbg !2090
  %72 = insertvalue { i32, i64 } zeroinitializer, i32 %71, 0, !dbg !2091
  %73 = insertvalue { i32, i64 } %72, i64 3, 1, !dbg !2091
  ret { i32, i64 } %73, !dbg !2091

if.done13:                                        ; preds = %if.done11
    #dbg_value(%runtime._string %1, !1995, !DIExpression(), !2092)
  %len37 = extractvalue %runtime._string %1, 1, !dbg !2093
  %74 = icmp uge i64 3, %len37, !dbg !2093
  br i1 %74, label %lookup.throw38, label %lookup.next39, !dbg !2093

lookup.next39:                                    ; preds = %if.done13
  %75 = extractvalue %runtime._string %1, 0, !dbg !2093
  %76 = getelementptr inbounds i8, ptr %75, i64 3, !dbg !2093
  %77 = load i8, ptr %76, align 1, !dbg !2093
    #dbg_value(i8 %77, !2004, !DIExpression(), !2094)
    #dbg_value(i8 %77, !2004, !DIExpression(), !2095)
  %78 = icmp ult i8 %77, -128, !dbg !2096
  br i1 %78, label %if.then14, label %cond.false15, !dbg !2011

if.then14:                                        ; preds = %cond.false15, %lookup.next39
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2097

cond.false15:                                     ; preds = %lookup.next39
    #dbg_value(i8 %77, !2004, !DIExpression(), !2098)
  %79 = icmp ult i8 -65, %77, !dbg !2099
  br i1 %79, label %if.then14, label %if.done16, !dbg !2011

if.done16:                                        ; preds = %cond.false15
    #dbg_value(i8 %6, !1997, !DIExpression(), !2100)
  %80 = and i8 %6, 7, !dbg !2101
  %81 = zext i8 %80 to i32, !dbg !2102
  %82 = shl i32 %81, 18, !dbg !2103
  %shift.result40 = select i1 false, i32 0, i32 %82, !dbg !2103
    #dbg_value(i8 %37, !2002, !DIExpression(), !2104)
  %83 = and i8 %37, 63, !dbg !2105
  %84 = zext i8 %83 to i32, !dbg !2106
  %85 = shl i32 %84, 12, !dbg !2107
  %shift.result41 = select i1 false, i32 0, i32 %85, !dbg !2107
  %86 = or i32 %shift.result40, %shift.result41, !dbg !2108
    #dbg_value(i8 %58, !2003, !DIExpression(), !2109)
  %87 = and i8 %58, 63, !dbg !2110
  %88 = zext i8 %87 to i32, !dbg !2111
  %89 = shl i32 %88, 6, !dbg !2112
  %shift.result42 = select i1 false, i32 0, i32 %89, !dbg !2112
  %90 = or i32 %86, %shift.result42, !dbg !2113
    #dbg_value(i8 %77, !2004, !DIExpression(), !2114)
  %91 = and i8 %77, 63, !dbg !2115
  %92 = zext i8 %91 to i32, !dbg !2116
  %93 = or i32 %90, %92, !dbg !2117
  %94 = insertvalue { i32, i64 } zeroinitializer, i32 %93, 0, !dbg !2118
  %95 = insertvalue { i32, i64 } %94, i64 4, 1, !dbg !2118
  ret { i32, i64 } %95, !dbg !2118

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !2014
  unreachable, !dbg !2014

lookup.throw18:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !2017
  unreachable, !dbg !2017

lookup.throw21:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !2027
  unreachable, !dbg !2027

lookup.throw24:                                   ; preds = %if.done2
  call void @runtime.lookupPanic(ptr undef), !dbg !2041
  unreachable, !dbg !2041

lookup.throw27:                                   ; preds = %if.done4
  call void @runtime.lookupPanic(ptr undef), !dbg !2048
  unreachable, !dbg !2048

deref.throw:                                      ; preds = %lookup.next28
  call void @runtime.nilPanic(ptr undef), !dbg !2051
  unreachable, !dbg !2051

deref.throw29:                                    ; preds = %cond.false
  call void @runtime.nilPanic(ptr undef), !dbg !2054
  unreachable, !dbg !2054

lookup.throw33:                                   ; preds = %if.done8
  call void @runtime.lookupPanic(ptr undef), !dbg !2069
  unreachable, !dbg !2069

lookup.throw38:                                   ; preds = %if.done13
  call void @runtime.lookupPanic(ptr undef), !dbg !2093
  unreachable, !dbg !2093
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"unicode/utf8.EncodeRune"(ptr %p.data, i64 %p.len, i64 %p.cap, i32 %r, ptr %context) #1 !dbg !2119 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !2129
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !2129
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !2129
    #dbg_value(ptr %p.data, !2127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2129)
    #dbg_value(i64 %p.len, !2127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2129)
    #dbg_value(i64 %p.cap, !2127, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2129)
    #dbg_value(i32 %r, !2128, !DIExpression(), !2129)
    #dbg_value(i32 %r, !2128, !DIExpression(), !2130)
  %3 = icmp ule i32 %r, 127, !dbg !2131
  br i1 %3, label %if.then, label %if.done, !dbg !2132

if.then:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2127, !DIExpression(), !2133)
    #dbg_value(i32 %r, !2128, !DIExpression(), !2134)
  %4 = trunc i32 %r to i8, !dbg !2135
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2136
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2136
  %5 = icmp uge i64 0, %indexaddr.len, !dbg !2136
  br i1 %5, label %lookup.throw, label %lookup.next, !dbg !2136

lookup.next:                                      ; preds = %if.then
  %6 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 0, !dbg !2136
  store i8 %4, ptr %6, align 1, !dbg !2136
  ret i64 1, !dbg !2137

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2127, !DIExpression(), !2138)
    #dbg_value(i32 %r, !2128, !DIExpression(), !2139)
  %7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2140
  %8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2140
  %9 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2140
  %10 = call i64 @"unicode/utf8.encodeRuneNonASCII"(ptr %7, i64 %8, i64 %9, i32 %r, ptr undef), !dbg !2140
  ret i64 %10, !dbg !2141

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2136
  unreachable, !dbg !2136
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"unicode/utf8.encodeRuneNonASCII"(ptr %p.data, i64 %p.len, i64 %p.cap, i32 %r, ptr %context) unnamed_addr #1 !dbg !2142 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !2147
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !2147
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !2147
    #dbg_value(ptr %p.data, !2144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2147)
    #dbg_value(i64 %p.len, !2144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2147)
    #dbg_value(i64 %p.cap, !2144, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2147)
    #dbg_value(i32 %r, !2145, !DIExpression(), !2147)
    #dbg_value(i32 %r, !2145, !DIExpression(), !2148)
    #dbg_value(i32 %r, !2146, !DIExpression(), !2149)
    #dbg_value(i32 %r, !2146, !DIExpression(), !2150)
  %3 = icmp ule i32 %r, 2047, !dbg !2151
  br i1 %3, label %switch.body, label %switch.next, !dbg !2152

switch.body:                                      ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2144, !DIExpression(), !2153)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2154
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2154
  %4 = icmp uge i64 1, %indexaddr.len, !dbg !2154
  br i1 %4, label %lookup.throw, label %lookup.next, !dbg !2154

lookup.next:                                      ; preds = %switch.body
  %5 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 1, !dbg !2154
  %6 = load i8, ptr %5, align 1, !dbg !2154
    #dbg_value({ ptr, i64, i64 } %2, !2144, !DIExpression(), !2155)
    #dbg_value(i32 %r, !2145, !DIExpression(), !2156)
  %7 = ashr i32 %r, 6, !dbg !2157
  %8 = trunc i32 %7 to i8, !dbg !2158
  %9 = or i8 -64, %8, !dbg !2159
  %indexaddr.ptr8 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2160
  %indexaddr.len9 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2160
  %10 = icmp uge i64 0, %indexaddr.len9, !dbg !2160
  br i1 %10, label %lookup.throw10, label %lookup.next11, !dbg !2160

lookup.next11:                                    ; preds = %lookup.next
  %11 = getelementptr inbounds i8, ptr %indexaddr.ptr8, i64 0, !dbg !2160
  store i8 %9, ptr %11, align 1, !dbg !2160
    #dbg_value({ ptr, i64, i64 } %2, !2144, !DIExpression(), !2161)
    #dbg_value(i32 %r, !2145, !DIExpression(), !2162)
  %12 = trunc i32 %r to i8, !dbg !2163
  %13 = and i8 %12, 63, !dbg !2164
  %14 = or i8 -128, %13, !dbg !2165
  %indexaddr.ptr12 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2166
  %indexaddr.len13 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2166
  %15 = icmp uge i64 1, %indexaddr.len13, !dbg !2166
  br i1 %15, label %lookup.throw14, label %lookup.next15, !dbg !2166

lookup.next15:                                    ; preds = %lookup.next11
  %16 = getelementptr inbounds i8, ptr %indexaddr.ptr12, i64 1, !dbg !2166
  store i8 %14, ptr %16, align 1, !dbg !2166
  ret i64 2, !dbg !2167

switch.next:                                      ; preds = %entry
    #dbg_value(i32 %r, !2146, !DIExpression(), !2168)
  %17 = icmp ult i32 %r, 55296, !dbg !2169
  br i1 %17, label %switch.body1, label %switch.next2, !dbg !2152

switch.body1:                                     ; preds = %binop.done, %switch.next
    #dbg_value({ ptr, i64, i64 } %2, !2144, !DIExpression(), !2170)
  %indexaddr.ptr16 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2171
  %indexaddr.len17 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2171
  %18 = icmp uge i64 2, %indexaddr.len17, !dbg !2171
  br i1 %18, label %lookup.throw18, label %lookup.next19, !dbg !2171

lookup.next19:                                    ; preds = %switch.body1
  %19 = getelementptr inbounds i8, ptr %indexaddr.ptr16, i64 2, !dbg !2171
  %20 = load i8, ptr %19, align 1, !dbg !2171
    #dbg_value({ ptr, i64, i64 } %2, !2144, !DIExpression(), !2172)
    #dbg_value(i32 %r, !2145, !DIExpression(), !2173)
  %21 = ashr i32 %r, 12, !dbg !2174
  %22 = trunc i32 %21 to i8, !dbg !2175
  %23 = or i8 -32, %22, !dbg !2176
  %indexaddr.ptr20 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2177
  %indexaddr.len21 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2177
  %24 = icmp uge i64 0, %indexaddr.len21, !dbg !2177
  br i1 %24, label %lookup.throw22, label %lookup.next23, !dbg !2177

lookup.next23:                                    ; preds = %lookup.next19
  %25 = getelementptr inbounds i8, ptr %indexaddr.ptr20, i64 0, !dbg !2177
  store i8 %23, ptr %25, align 1, !dbg !2177
    #dbg_value({ ptr, i64, i64 } %2, !2144, !DIExpression(), !2178)
    #dbg_value(i32 %r, !2145, !DIExpression(), !2179)
  %26 = ashr i32 %r, 6, !dbg !2180
  %27 = trunc i32 %26 to i8, !dbg !2181
  %28 = and i8 %27, 63, !dbg !2182
  %29 = or i8 -128, %28, !dbg !2183
  %indexaddr.ptr24 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2184
  %indexaddr.len25 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2184
  %30 = icmp uge i64 1, %indexaddr.len25, !dbg !2184
  br i1 %30, label %lookup.throw26, label %lookup.next27, !dbg !2184

lookup.next27:                                    ; preds = %lookup.next23
  %31 = getelementptr inbounds i8, ptr %indexaddr.ptr24, i64 1, !dbg !2184
  store i8 %29, ptr %31, align 1, !dbg !2184
    #dbg_value({ ptr, i64, i64 } %2, !2144, !DIExpression(), !2185)
    #dbg_value(i32 %r, !2145, !DIExpression(), !2186)
  %32 = trunc i32 %r to i8, !dbg !2187
  %33 = and i8 %32, 63, !dbg !2188
  %34 = or i8 -128, %33, !dbg !2189
  %indexaddr.ptr28 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2190
  %indexaddr.len29 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2190
  %35 = icmp uge i64 2, %indexaddr.len29, !dbg !2190
  br i1 %35, label %lookup.throw30, label %lookup.next31, !dbg !2190

lookup.next31:                                    ; preds = %lookup.next27
  %36 = getelementptr inbounds i8, ptr %indexaddr.ptr28, i64 2, !dbg !2190
  store i8 %34, ptr %36, align 1, !dbg !2190
  ret i64 3, !dbg !2191

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i32 %r, !2146, !DIExpression(), !2192)
  %37 = icmp ult i32 57343, %r, !dbg !2193
  br i1 %37, label %binop.rhs, label %binop.done, !dbg !2152

binop.rhs:                                        ; preds = %switch.next2
    #dbg_value(i32 %r, !2146, !DIExpression(), !2194)
  %38 = icmp ule i32 %r, 65535, !dbg !2195
  br label %binop.done, !dbg !2152

binop.done:                                       ; preds = %binop.rhs, %switch.next2
  %39 = phi i1 [ false, %switch.next2 ], [ %38, %binop.rhs ], !dbg !2196
  br i1 %39, label %switch.body1, label %switch.next3, !dbg !2152

switch.next3:                                     ; preds = %binop.done
    #dbg_value(i32 %r, !2146, !DIExpression(), !2197)
  %40 = icmp ugt i32 %r, 65535, !dbg !2198
  br i1 %40, label %binop.rhs4, label %binop.done5, !dbg !2152

binop.rhs4:                                       ; preds = %switch.next3
    #dbg_value(i32 %r, !2146, !DIExpression(), !2199)
  %41 = icmp ule i32 %r, 1114111, !dbg !2200
  br label %binop.done5, !dbg !2152

binop.done5:                                      ; preds = %binop.rhs4, %switch.next3
  %42 = phi i1 [ false, %switch.next3 ], [ %41, %binop.rhs4 ], !dbg !2201
  br i1 %42, label %switch.body6, label %switch.next7, !dbg !2152

switch.body6:                                     ; preds = %binop.done5
    #dbg_value({ ptr, i64, i64 } %2, !2144, !DIExpression(), !2202)
  %indexaddr.ptr32 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2203
  %indexaddr.len33 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2203
  %43 = icmp uge i64 3, %indexaddr.len33, !dbg !2203
  br i1 %43, label %lookup.throw34, label %lookup.next35, !dbg !2203

lookup.next35:                                    ; preds = %switch.body6
  %44 = getelementptr inbounds i8, ptr %indexaddr.ptr32, i64 3, !dbg !2203
  %45 = load i8, ptr %44, align 1, !dbg !2203
    #dbg_value({ ptr, i64, i64 } %2, !2144, !DIExpression(), !2204)
    #dbg_value(i32 %r, !2145, !DIExpression(), !2205)
  %46 = ashr i32 %r, 18, !dbg !2206
  %47 = trunc i32 %46 to i8, !dbg !2207
  %48 = or i8 -16, %47, !dbg !2208
  %indexaddr.ptr36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2209
  %indexaddr.len37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2209
  %49 = icmp uge i64 0, %indexaddr.len37, !dbg !2209
  br i1 %49, label %lookup.throw38, label %lookup.next39, !dbg !2209

lookup.next39:                                    ; preds = %lookup.next35
  %50 = getelementptr inbounds i8, ptr %indexaddr.ptr36, i64 0, !dbg !2209
  store i8 %48, ptr %50, align 1, !dbg !2209
    #dbg_value({ ptr, i64, i64 } %2, !2144, !DIExpression(), !2210)
    #dbg_value(i32 %r, !2145, !DIExpression(), !2211)
  %51 = ashr i32 %r, 12, !dbg !2212
  %52 = trunc i32 %51 to i8, !dbg !2213
  %53 = and i8 %52, 63, !dbg !2214
  %54 = or i8 -128, %53, !dbg !2215
  %indexaddr.ptr40 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2216
  %indexaddr.len41 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2216
  %55 = icmp uge i64 1, %indexaddr.len41, !dbg !2216
  br i1 %55, label %lookup.throw42, label %lookup.next43, !dbg !2216

lookup.next43:                                    ; preds = %lookup.next39
  %56 = getelementptr inbounds i8, ptr %indexaddr.ptr40, i64 1, !dbg !2216
  store i8 %54, ptr %56, align 1, !dbg !2216
    #dbg_value({ ptr, i64, i64 } %2, !2144, !DIExpression(), !2217)
    #dbg_value(i32 %r, !2145, !DIExpression(), !2218)
  %57 = ashr i32 %r, 6, !dbg !2219
  %58 = trunc i32 %57 to i8, !dbg !2220
  %59 = and i8 %58, 63, !dbg !2221
  %60 = or i8 -128, %59, !dbg !2222
  %indexaddr.ptr44 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2223
  %indexaddr.len45 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2223
  %61 = icmp uge i64 2, %indexaddr.len45, !dbg !2223
  br i1 %61, label %lookup.throw46, label %lookup.next47, !dbg !2223

lookup.next47:                                    ; preds = %lookup.next43
  %62 = getelementptr inbounds i8, ptr %indexaddr.ptr44, i64 2, !dbg !2223
  store i8 %60, ptr %62, align 1, !dbg !2223
    #dbg_value({ ptr, i64, i64 } %2, !2144, !DIExpression(), !2224)
    #dbg_value(i32 %r, !2145, !DIExpression(), !2225)
  %63 = trunc i32 %r to i8, !dbg !2226
  %64 = and i8 %63, 63, !dbg !2227
  %65 = or i8 -128, %64, !dbg !2228
  %indexaddr.ptr48 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2229
  %indexaddr.len49 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2229
  %66 = icmp uge i64 3, %indexaddr.len49, !dbg !2229
  br i1 %66, label %lookup.throw50, label %lookup.next51, !dbg !2229

lookup.next51:                                    ; preds = %lookup.next47
  %67 = getelementptr inbounds i8, ptr %indexaddr.ptr48, i64 3, !dbg !2229
  store i8 %65, ptr %67, align 1, !dbg !2229
  ret i64 4, !dbg !2230

switch.next7:                                     ; preds = %binop.done5
    #dbg_value({ ptr, i64, i64 } %2, !2144, !DIExpression(), !2231)
  %indexaddr.ptr52 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2232
  %indexaddr.len53 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2232
  %68 = icmp uge i64 2, %indexaddr.len53, !dbg !2232
  br i1 %68, label %lookup.throw54, label %lookup.next55, !dbg !2232

lookup.next55:                                    ; preds = %switch.next7
  %69 = getelementptr inbounds i8, ptr %indexaddr.ptr52, i64 2, !dbg !2232
  %70 = load i8, ptr %69, align 1, !dbg !2232
    #dbg_value({ ptr, i64, i64 } %2, !2144, !DIExpression(), !2233)
  %indexaddr.ptr56 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2234
  %indexaddr.len57 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2234
  %71 = icmp uge i64 0, %indexaddr.len57, !dbg !2234
  br i1 %71, label %lookup.throw58, label %lookup.next59, !dbg !2234

lookup.next59:                                    ; preds = %lookup.next55
  %72 = getelementptr inbounds i8, ptr %indexaddr.ptr56, i64 0, !dbg !2234
  store i8 -17, ptr %72, align 1, !dbg !2234
    #dbg_value({ ptr, i64, i64 } %2, !2144, !DIExpression(), !2235)
  %indexaddr.ptr60 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2236
  %indexaddr.len61 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2236
  %73 = icmp uge i64 1, %indexaddr.len61, !dbg !2236
  br i1 %73, label %lookup.throw62, label %lookup.next63, !dbg !2236

lookup.next63:                                    ; preds = %lookup.next59
  %74 = getelementptr inbounds i8, ptr %indexaddr.ptr60, i64 1, !dbg !2236
  store i8 -65, ptr %74, align 1, !dbg !2236
    #dbg_value({ ptr, i64, i64 } %2, !2144, !DIExpression(), !2237)
  %indexaddr.ptr64 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2238
  %indexaddr.len65 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2238
  %75 = icmp uge i64 2, %indexaddr.len65, !dbg !2238
  br i1 %75, label %lookup.throw66, label %lookup.next67, !dbg !2238

lookup.next67:                                    ; preds = %lookup.next63
  %76 = getelementptr inbounds i8, ptr %indexaddr.ptr64, i64 2, !dbg !2238
  store i8 -67, ptr %76, align 1, !dbg !2238
  ret i64 3, !dbg !2239

lookup.throw:                                     ; preds = %switch.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2154
  unreachable, !dbg !2154

lookup.throw10:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !2160
  unreachable, !dbg !2160

lookup.throw14:                                   ; preds = %lookup.next11
  call void @runtime.lookupPanic(ptr undef), !dbg !2166
  unreachable, !dbg !2166

lookup.throw18:                                   ; preds = %switch.body1
  call void @runtime.lookupPanic(ptr undef), !dbg !2171
  unreachable, !dbg !2171

lookup.throw22:                                   ; preds = %lookup.next19
  call void @runtime.lookupPanic(ptr undef), !dbg !2177
  unreachable, !dbg !2177

lookup.throw26:                                   ; preds = %lookup.next23
  call void @runtime.lookupPanic(ptr undef), !dbg !2184
  unreachable, !dbg !2184

lookup.throw30:                                   ; preds = %lookup.next27
  call void @runtime.lookupPanic(ptr undef), !dbg !2190
  unreachable, !dbg !2190

lookup.throw34:                                   ; preds = %switch.body6
  call void @runtime.lookupPanic(ptr undef), !dbg !2203
  unreachable, !dbg !2203

lookup.throw38:                                   ; preds = %lookup.next35
  call void @runtime.lookupPanic(ptr undef), !dbg !2209
  unreachable, !dbg !2209

lookup.throw42:                                   ; preds = %lookup.next39
  call void @runtime.lookupPanic(ptr undef), !dbg !2216
  unreachable, !dbg !2216

lookup.throw46:                                   ; preds = %lookup.next43
  call void @runtime.lookupPanic(ptr undef), !dbg !2223
  unreachable, !dbg !2223

lookup.throw50:                                   ; preds = %lookup.next47
  call void @runtime.lookupPanic(ptr undef), !dbg !2229
  unreachable, !dbg !2229

lookup.throw54:                                   ; preds = %switch.next7
  call void @runtime.lookupPanic(ptr undef), !dbg !2232
  unreachable, !dbg !2232

lookup.throw58:                                   ; preds = %lookup.next55
  call void @runtime.lookupPanic(ptr undef), !dbg !2234
  unreachable, !dbg !2234

lookup.throw62:                                   ; preds = %lookup.next59
  call void @runtime.lookupPanic(ptr undef), !dbg !2236
  unreachable, !dbg !2236

lookup.throw66:                                   ; preds = %lookup.next63
  call void @runtime.lookupPanic(ptr undef), !dbg !2238
  unreachable, !dbg !2238
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"unicode/utf8.ValidRune"(i32 %r, ptr %context) #1 !dbg !2240 {
entry:
    #dbg_value(i32 %r, !2244, !DIExpression(), !2245)
    #dbg_value(i32 %r, !2244, !DIExpression(), !2246)
  %0 = icmp sle i32 0, %r, !dbg !2247
  br i1 %0, label %binop.rhs, label %binop.done, !dbg !2248

binop.rhs:                                        ; preds = %entry
    #dbg_value(i32 %r, !2244, !DIExpression(), !2249)
  %1 = icmp slt i32 %r, 55296, !dbg !2250
  br label %binop.done, !dbg !2248

binop.done:                                       ; preds = %binop.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %1, %binop.rhs ], !dbg !2251
  br i1 %2, label %switch.body, label %switch.next, !dbg !2248

switch.body:                                      ; preds = %binop.done
  ret i1 true, !dbg !2252

switch.next:                                      ; preds = %binop.done
    #dbg_value(i32 %r, !2244, !DIExpression(), !2253)
  %3 = icmp slt i32 57343, %r, !dbg !2254
  br i1 %3, label %binop.rhs1, label %binop.done2, !dbg !2248

binop.rhs1:                                       ; preds = %switch.next
    #dbg_value(i32 %r, !2244, !DIExpression(), !2255)
  %4 = icmp sle i32 %r, 1114111, !dbg !2256
  br label %binop.done2, !dbg !2248

binop.done2:                                      ; preds = %binop.rhs1, %switch.next
  %5 = phi i1 [ false, %switch.next ], [ %4, %binop.rhs1 ], !dbg !2257
  br i1 %5, label %switch.body3, label %switch.next4, !dbg !2248

switch.body3:                                     ; preds = %binop.done2
  ret i1 true, !dbg !2258

switch.next4:                                     ; preds = %binop.done2
  ret i1 false, !dbg !2259
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable(sync)
define internal i8 @"(*internal/reflectlite.RawType).Kind"(ptr dereferenceable_or_null(1) %t, ptr %context) #1 !dbg !2260 {
entry:
    #dbg_value(ptr %t, !2264, !DIExpression(), !2266)
    #dbg_value(ptr %t, !2264, !DIExpression(), !2267)
  %0 = icmp eq ptr %t, null, !dbg !2268
  br i1 %0, label %if.then, label %if.done, !dbg !2269

if.then:                                          ; preds = %entry
  ret i8 0, !dbg !2270

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2264, !DIExpression(), !2271)
  %1 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2272
    #dbg_value(i64 %1, !2265, !DIExpression(), !2273)
    #dbg_value(i64 %1, !2265, !DIExpression(), !2274)
  %2 = icmp ne i64 %1, 0, !dbg !2275
  br i1 %2, label %if.then1, label %if.done2, !dbg !2269

if.then1:                                         ; preds = %if.done
  ret i8 21, !dbg !2276

if.done2:                                         ; preds = %if.done
    #dbg_value(ptr %t, !2264, !DIExpression(), !2277)
  %3 = icmp eq ptr %t, null, !dbg !2278
  br i1 %3, label %gep.throw, label %gep.next, !dbg !2278

gep.next:                                         ; preds = %if.done2
  %4 = getelementptr inbounds %"internal/reflectlite.RawType", ptr %t, i32 0, i32 0, !dbg !2278
  %5 = icmp eq ptr %4, null, !dbg !2278
  br i1 %5, label %deref.throw, label %deref.next, !dbg !2278

deref.next:                                       ; preds = %gep.next
  %6 = load i8, ptr %4, align 1, !dbg !2278
  %7 = and i8 %6, 31, !dbg !2279
  ret i8 %7, !dbg !2280

gep.throw:                                        ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2278
  unreachable, !dbg !2278

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2278
  unreachable, !dbg !2278
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).elem"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2281 {
entry:
    #dbg_value(ptr %t, !2283, !DIExpression(), !2287)
    #dbg_value(ptr %t, !2283, !DIExpression(), !2288)
  %0 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2289
    #dbg_value(i64 %0, !2284, !DIExpression(), !2290)
    #dbg_value(i64 %0, !2284, !DIExpression(), !2291)
  %1 = icmp ne i64 %0, 0, !dbg !2292
  br i1 %1, label %if.then, label %if.done, !dbg !2293

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2283, !DIExpression(), !2294)
  %2 = getelementptr i8, ptr %t, i64 -1, !dbg !2295
  ret ptr %2, !dbg !2296

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2283, !DIExpression(), !2297)
  %3 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2298
    #dbg_value(ptr %3, !2285, !DIExpression(), !2299)
    #dbg_value(ptr %3, !2285, !DIExpression(), !2300)
  %4 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %3, ptr undef), !dbg !2301
  %5 = icmp eq i8 %4, 21, !dbg !2302
  br i1 %5, label %switch.body, label %switch.next, !dbg !2293

switch.body:                                      ; preds = %if.done
    #dbg_value(ptr %3, !2285, !DIExpression(), !2303)
  %6 = getelementptr inbounds %"internal/reflectlite.ptrType", ptr %3, i32 0, i32 2, !dbg !2304
  %7 = icmp eq ptr %6, null, !dbg !2304
  br i1 %7, label %deref.throw, label %deref.next, !dbg !2304

deref.next:                                       ; preds = %switch.body
  %8 = load ptr, ptr %6, align 8, !dbg !2304
  ret ptr %8, !dbg !2305

switch.next:                                      ; preds = %if.done
  %9 = icmp eq i8 %4, 19, !dbg !2306
  br i1 %9, label %switch.body1, label %switch.next2, !dbg !2293

switch.body1:                                     ; preds = %switch.next4, %switch.next3, %switch.next2, %switch.next
    #dbg_value(ptr %3, !2285, !DIExpression(), !2307)
  %10 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %3, i32 0, i32 3, !dbg !2308
  %11 = icmp eq ptr %10, null, !dbg !2308
  br i1 %11, label %deref.throw6, label %deref.next7, !dbg !2308

deref.next7:                                      ; preds = %switch.body1
  %12 = load ptr, ptr %10, align 8, !dbg !2308
  ret ptr %12, !dbg !2309

switch.next2:                                     ; preds = %switch.next
  %13 = icmp eq i8 %4, 22, !dbg !2310
  br i1 %13, label %switch.body1, label %switch.next3, !dbg !2293

switch.next3:                                     ; preds = %switch.next2
  %14 = icmp eq i8 %4, 23, !dbg !2311
  br i1 %14, label %switch.body1, label %switch.next4, !dbg !2293

switch.next4:                                     ; preds = %switch.next3
  %15 = icmp eq i8 %4, 25, !dbg !2312
  br i1 %15, label %switch.body1, label %switch.next5, !dbg !2293

switch.next5:                                     ; preds = %switch.next4
  %16 = load ptr, ptr @"internal/reflectlite.errTypeElem", align 8, !dbg !2313
    #dbg_value(ptr %16, !2286, !DIExpression(), !2313)
  %17 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %16, 1, !dbg !2313
  %18 = extractvalue { ptr, ptr } %17, 0, !dbg !2314
  %19 = extractvalue { ptr, ptr } %17, 1, !dbg !2314
  call void @runtime._panic(ptr %18, ptr %19, ptr undef), !dbg !2314
  unreachable, !dbg !2314

deref.throw:                                      ; preds = %switch.body
  call void @runtime.nilPanic(ptr undef), !dbg !2304
  unreachable, !dbg !2304

deref.throw6:                                     ; preds = %switch.body1
  call void @runtime.nilPanic(ptr undef), !dbg !2308
  unreachable, !dbg !2308
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).Len"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2315 {
entry:
    #dbg_value(ptr %t, !2317, !DIExpression(), !2319)
    #dbg_value(ptr %t, !2317, !DIExpression(), !2320)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2321
  %1 = icmp ne i8 %0, 23, !dbg !2322
  br i1 %1, label %if.then, label %if.done, !dbg !2323

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeLen", align 8, !dbg !2324
    #dbg_value(ptr %2, !2318, !DIExpression(), !2324)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2324
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2325
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2325
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2325
  unreachable, !dbg !2325

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2317, !DIExpression(), !2326)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2327
  %7 = getelementptr inbounds %"internal/reflectlite.arrayType", ptr %6, i32 0, i32 4, !dbg !2328
  %8 = icmp eq ptr %7, null, !dbg !2328
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2328

deref.next:                                       ; preds = %if.done
  %9 = load i64, ptr %7, align 8, !dbg !2328
  ret i64 %9, !dbg !2329

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2328
  unreachable, !dbg !2328
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).underlying"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2330 {
entry:
    #dbg_value(ptr %t, !2332, !DIExpression(), !2333)
    #dbg_value(ptr %t, !2332, !DIExpression(), !2334)
  %0 = call i1 @"(*internal/reflectlite.RawType).isNamed"(ptr %t, ptr undef), !dbg !2335
  br i1 %0, label %if.then, label %if.done, !dbg !2336

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2332, !DIExpression(), !2337)
  %1 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %t, i32 0, i32 3, !dbg !2338
  %2 = icmp eq ptr %1, null, !dbg !2338
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2338

deref.next:                                       ; preds = %if.then
  %3 = load ptr, ptr %1, align 8, !dbg !2338
  ret ptr %3, !dbg !2339

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2332, !DIExpression(), !2340)
  ret ptr %t, !dbg !2341

deref.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2338
  unreachable, !dbg !2338
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*internal/reflectlite.RawType).isNamed"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2342 {
entry:
    #dbg_value(ptr %t, !2344, !DIExpression(), !2346)
    #dbg_value(ptr %t, !2344, !DIExpression(), !2347)
  %0 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2348
    #dbg_value(i64 %0, !2345, !DIExpression(), !2349)
    #dbg_value(i64 %0, !2345, !DIExpression(), !2350)
  %1 = icmp ne i64 %0, 0, !dbg !2351
  br i1 %1, label %if.then, label %if.done, !dbg !2352

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !2353

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2344, !DIExpression(), !2354)
  %2 = icmp eq ptr %t, null, !dbg !2355
  br i1 %2, label %gep.throw, label %gep.next, !dbg !2355

gep.next:                                         ; preds = %if.done
  %3 = getelementptr inbounds %"internal/reflectlite.RawType", ptr %t, i32 0, i32 0, !dbg !2355
  %4 = icmp eq ptr %3, null, !dbg !2355
  br i1 %4, label %deref.throw, label %deref.next, !dbg !2355

deref.next:                                       ; preds = %gep.next
  %5 = load i8, ptr %3, align 1, !dbg !2355
  %6 = and i8 %5, 32, !dbg !2356
  %7 = icmp ne i8 %6, 0, !dbg !2357
  ret i1 %7, !dbg !2358

gep.throw:                                        ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2355
  unreachable, !dbg !2355

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2355
  unreachable, !dbg !2355
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2359 {
entry:
    #dbg_value(ptr %t, !2361, !DIExpression(), !2362)
    #dbg_value(ptr %t, !2361, !DIExpression(), !2363)
  %0 = ptrtoint ptr %t to i64, !dbg !2364
  %1 = and i64 %0, 3, !dbg !2365
  ret i64 %1, !dbg !2366
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.TypeError).Error"(ptr dereferenceable_or_null(16) %e, ptr %context) unnamed_addr #1 !dbg !2367 {
entry:
    #dbg_value(ptr %e, !2371, !DIExpression(), !2372)
    #dbg_value(ptr %e, !2371, !DIExpression(), !2373)
  %0 = icmp eq ptr %e, null, !dbg !2374
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2374

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds { %runtime._string }, ptr %e, i32 0, i32 0, !dbg !2374
  %2 = icmp eq ptr %1, null, !dbg !2374
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2374

deref.next:                                       ; preds = %gep.next
  %3 = load %runtime._string, ptr %1, align 8, !dbg !2374
  %4 = extractvalue %runtime._string %3, 0, !dbg !2375
  %5 = extractvalue %runtime._string %3, 1, !dbg !2375
  %6 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.111", i64 30, ptr %4, i64 %5, ptr undef), !dbg !2375
  %7 = extractvalue %runtime._string %6, 0, !dbg !2376
  %8 = extractvalue %runtime._string %6, 1, !dbg !2376
  %9 = call %runtime._string @runtime.stringConcat(ptr %7, i64 %8, ptr @"internal/reflectlite$string.112", i64 16, ptr undef), !dbg !2376
  ret %runtime._string %9, !dbg !2377

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2374
  unreachable, !dbg !2374

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2374
  unreachable, !dbg !2374
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).ChanDir"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2378 {
entry:
    #dbg_value(ptr %t, !2380, !DIExpression(), !2383)
    #dbg_value(ptr %t, !2380, !DIExpression(), !2384)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2385
  %1 = icmp ne i8 %0, 19, !dbg !2386
  br i1 %1, label %if.then, label %if.done, !dbg !2387

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeChanDir", align 8, !dbg !2388
    #dbg_value(ptr %2, !2381, !DIExpression(), !2388)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2388
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2389
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2389
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2389
  unreachable, !dbg !2389

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2380, !DIExpression(), !2390)
  %6 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %t, i32 0, i32 1, !dbg !2391
  %7 = icmp eq ptr %6, null, !dbg !2391
  br i1 %7, label %deref.throw, label %deref.next, !dbg !2391

deref.next:                                       ; preds = %if.done
  %8 = load i16, ptr %6, align 2, !dbg !2391
  %9 = zext i16 %8 to i64, !dbg !2392
    #dbg_value(i64 %9, !2382, !DIExpression(), !2393)
    #dbg_value(i64 %9, !2382, !DIExpression(), !2394)
  ret i64 %9, !dbg !2395

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2391
  unreachable, !dbg !2391
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).NumField"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2396 {
entry:
    #dbg_value(ptr %t, !2398, !DIExpression(), !2400)
    #dbg_value(ptr %t, !2398, !DIExpression(), !2401)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2402
  %1 = icmp ne i8 %0, 26, !dbg !2403
  br i1 %1, label %if.then, label %if.done, !dbg !2404

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeNumField", align 8, !dbg !2405
    #dbg_value(ptr %2, !2399, !DIExpression(), !2405)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2405
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2406
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2406
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2406
  unreachable, !dbg !2406

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2398, !DIExpression(), !2407)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2408
  %7 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 5, !dbg !2409
  %8 = icmp eq ptr %7, null, !dbg !2409
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2409

deref.next:                                       ; preds = %if.done
  %9 = load i16, ptr %7, align 2, !dbg !2409
  %10 = zext i16 %9 to i64, !dbg !2410
  ret i64 %10, !dbg !2411

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2409
  unreachable, !dbg !2409
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.RawType).String"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2412 {
entry:
    #dbg_value(ptr %t, !2414, !DIExpression(), !2430)
    #dbg_value(ptr %t, !2414, !DIExpression(), !2431)
  %f = alloca %"internal/reflectlite.rawStructField", align 8, !dbg !2432
  %0 = call i1 @"(*internal/reflectlite.RawType).isNamed"(ptr %t, ptr undef), !dbg !2432
  br i1 %0, label %if.then, label %if.done2, !dbg !2433

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2414, !DIExpression(), !2434)
  %1 = call %runtime._string @"(*internal/reflectlite.RawType).name"(ptr %t, ptr undef), !dbg !2435
    #dbg_value(%runtime._string %1, !2415, !DIExpression(), !2436)
    #dbg_value(%runtime._string %1, !2415, !DIExpression(), !2437)
  %len = extractvalue %runtime._string %1, 1, !dbg !2438
  %2 = icmp uge i64 0, %len, !dbg !2438
  br i1 %2, label %lookup.throw, label %lookup.next, !dbg !2438

lookup.next:                                      ; preds = %if.then
  %3 = extractvalue %runtime._string %1, 0, !dbg !2438
  %4 = getelementptr inbounds i8, ptr %3, i64 0, !dbg !2438
  %5 = load i8, ptr %4, align 1, !dbg !2438
  %6 = icmp eq i8 %5, 46, !dbg !2439
  br i1 %6, label %if.then1, label %if.done, !dbg !2433

if.then1:                                         ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2415, !DIExpression(), !2440)
  %7 = extractvalue %runtime._string %1, 0, !dbg !2441
  %8 = extractvalue %runtime._string %1, 1, !dbg !2441
  %slice.lowhigh = icmp ugt i64 1, %8, !dbg !2441
  %slice.highmax = icmp ugt i64 %8, %8, !dbg !2441
  %slice.maxcap = icmp ugt i64 %8, %8, !dbg !2441
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2441
  %slice.lowcap = or i1 %slice.lowmax, %slice.maxcap, !dbg !2441
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2441

slice.next:                                       ; preds = %if.then1
  %9 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !2441
  %10 = sub i64 %8, 1, !dbg !2441
  %11 = insertvalue %runtime._string undef, ptr %9, 0, !dbg !2441
  %12 = insertvalue %runtime._string %11, i64 %10, 1, !dbg !2441
  ret %runtime._string %12, !dbg !2442

if.done:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2415, !DIExpression(), !2443)
  ret %runtime._string %1, !dbg !2444

if.done2:                                         ; preds = %entry
    #dbg_value(ptr %t, !2414, !DIExpression(), !2445)
  %13 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2446
  %14 = icmp eq i8 %13, 19, !dbg !2447
  br i1 %14, label %switch.body, label %switch.next10, !dbg !2433

switch.body:                                      ; preds = %if.done2
    #dbg_value(ptr %t, !2414, !DIExpression(), !2448)
  %15 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2449
  %16 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %15, ptr undef), !dbg !2450
    #dbg_value(%runtime._string %16, !2416, !DIExpression(), !2451)
    #dbg_value(ptr %t, !2414, !DIExpression(), !2452)
  %17 = call i64 @"(*internal/reflectlite.RawType).ChanDir"(ptr %t, ptr undef), !dbg !2453
  %18 = icmp eq i64 %17, 2, !dbg !2454
  br i1 %18, label %switch.body3, label %switch.next, !dbg !2433

switch.body3:                                     ; preds = %switch.body
    #dbg_value(%runtime._string %16, !2416, !DIExpression(), !2455)
  %19 = extractvalue %runtime._string %16, 0, !dbg !2456
  %20 = extractvalue %runtime._string %16, 1, !dbg !2456
  %21 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.87", i64 7, ptr %19, i64 %20, ptr undef), !dbg !2456
  ret %runtime._string %21, !dbg !2457

switch.next:                                      ; preds = %switch.body
  %22 = icmp eq i64 %17, 1, !dbg !2458
  br i1 %22, label %switch.body4, label %switch.next5, !dbg !2433

switch.body4:                                     ; preds = %switch.next
    #dbg_value(%runtime._string %16, !2416, !DIExpression(), !2459)
  %23 = extractvalue %runtime._string %16, 0, !dbg !2460
  %24 = extractvalue %runtime._string %16, 1, !dbg !2460
  %25 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.88", i64 7, ptr %23, i64 %24, ptr undef), !dbg !2460
  ret %runtime._string %25, !dbg !2461

switch.next5:                                     ; preds = %switch.next
  %26 = icmp eq i64 %17, 3, !dbg !2462
  br i1 %26, label %switch.body6, label %switch.next9, !dbg !2433

switch.body6:                                     ; preds = %switch.next5
    #dbg_value(%runtime._string %16, !2416, !DIExpression(), !2463)
  %len29 = extractvalue %runtime._string %16, 1, !dbg !2464
  %27 = icmp uge i64 0, %len29, !dbg !2464
  br i1 %27, label %lookup.throw30, label %lookup.next31, !dbg !2464

lookup.next31:                                    ; preds = %switch.body6
  %28 = extractvalue %runtime._string %16, 0, !dbg !2464
  %29 = getelementptr inbounds i8, ptr %28, i64 0, !dbg !2464
  %30 = load i8, ptr %29, align 1, !dbg !2464
  %31 = icmp eq i8 %30, 60, !dbg !2465
  br i1 %31, label %if.then7, label %if.done8, !dbg !2433

if.then7:                                         ; preds = %lookup.next31
    #dbg_value(%runtime._string %16, !2416, !DIExpression(), !2466)
  %32 = extractvalue %runtime._string %16, 0, !dbg !2467
  %33 = extractvalue %runtime._string %16, 1, !dbg !2467
  %34 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.89", i64 6, ptr %32, i64 %33, ptr undef), !dbg !2467
  %35 = extractvalue %runtime._string %34, 0, !dbg !2468
  %36 = extractvalue %runtime._string %34, 1, !dbg !2468
  %37 = call %runtime._string @runtime.stringConcat(ptr %35, i64 %36, ptr @"internal/reflectlite$string.90", i64 1, ptr undef), !dbg !2468
  ret %runtime._string %37, !dbg !2469

if.done8:                                         ; preds = %lookup.next31
    #dbg_value(%runtime._string %16, !2416, !DIExpression(), !2470)
  %38 = extractvalue %runtime._string %16, 0, !dbg !2471
  %39 = extractvalue %runtime._string %16, 1, !dbg !2471
  %40 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.91", i64 5, ptr %38, i64 %39, ptr undef), !dbg !2471
  ret %runtime._string %40, !dbg !2472

switch.next9:                                     ; preds = %switch.next5
    #dbg_value(ptr %t, !2414, !DIExpression(), !2473)
  %41 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2474
  %42 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %41, ptr undef), !dbg !2475
  ret %runtime._string %42, !dbg !2476

switch.next10:                                    ; preds = %if.done2
  %43 = icmp eq i8 %13, 21, !dbg !2477
  br i1 %43, label %switch.body11, label %switch.next12, !dbg !2433

switch.body11:                                    ; preds = %switch.next10
    #dbg_value(ptr %t, !2414, !DIExpression(), !2478)
  %44 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2479
  %45 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %44, ptr undef), !dbg !2480
  %46 = extractvalue %runtime._string %45, 0, !dbg !2481
  %47 = extractvalue %runtime._string %45, 1, !dbg !2481
  %48 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.92", i64 1, ptr %46, i64 %47, ptr undef), !dbg !2481
  ret %runtime._string %48, !dbg !2482

switch.next12:                                    ; preds = %switch.next10
  %49 = icmp eq i8 %13, 22, !dbg !2483
  br i1 %49, label %switch.body13, label %switch.next14, !dbg !2433

switch.body13:                                    ; preds = %switch.next12
    #dbg_value(ptr %t, !2414, !DIExpression(), !2484)
  %50 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2485
  %51 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %50, ptr undef), !dbg !2486
  %52 = extractvalue %runtime._string %51, 0, !dbg !2487
  %53 = extractvalue %runtime._string %51, 1, !dbg !2487
  %54 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.93", i64 2, ptr %52, i64 %53, ptr undef), !dbg !2487
  ret %runtime._string %54, !dbg !2488

switch.next14:                                    ; preds = %switch.next12
  %55 = icmp eq i8 %13, 23, !dbg !2489
  br i1 %55, label %switch.body15, label %switch.next16, !dbg !2433

switch.body15:                                    ; preds = %switch.next14
    #dbg_value(ptr %t, !2414, !DIExpression(), !2490)
  %56 = call i64 @"(*internal/reflectlite.RawType).Len"(ptr %t, ptr undef), !dbg !2491
  %57 = call %runtime._string @"internal/itoa.Itoa"(i64 %56, ptr undef), !dbg !2492
  %58 = extractvalue %runtime._string %57, 0, !dbg !2493
  %59 = extractvalue %runtime._string %57, 1, !dbg !2493
  %60 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.94", i64 1, ptr %58, i64 %59, ptr undef), !dbg !2493
  %61 = extractvalue %runtime._string %60, 0, !dbg !2494
  %62 = extractvalue %runtime._string %60, 1, !dbg !2494
  %63 = call %runtime._string @runtime.stringConcat(ptr %61, i64 %62, ptr @"internal/reflectlite$string.95", i64 1, ptr undef), !dbg !2494
    #dbg_value(ptr %t, !2414, !DIExpression(), !2495)
  %64 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2496
  %65 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %64, ptr undef), !dbg !2497
  %66 = extractvalue %runtime._string %63, 0, !dbg !2498
  %67 = extractvalue %runtime._string %63, 1, !dbg !2498
  %68 = extractvalue %runtime._string %65, 0, !dbg !2498
  %69 = extractvalue %runtime._string %65, 1, !dbg !2498
  %70 = call %runtime._string @runtime.stringConcat(ptr %66, i64 %67, ptr %68, i64 %69, ptr undef), !dbg !2498
  ret %runtime._string %70, !dbg !2499

switch.next16:                                    ; preds = %switch.next14
  %71 = icmp eq i8 %13, 25, !dbg !2500
  br i1 %71, label %switch.body17, label %switch.next18, !dbg !2433

switch.body17:                                    ; preds = %switch.next16
    #dbg_value(ptr %t, !2414, !DIExpression(), !2501)
  %72 = call ptr @"(*internal/reflectlite.RawType).key"(ptr %t, ptr undef), !dbg !2502
  %73 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %72, ptr undef), !dbg !2503
  %74 = extractvalue %runtime._string %73, 0, !dbg !2504
  %75 = extractvalue %runtime._string %73, 1, !dbg !2504
  %76 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.96", i64 4, ptr %74, i64 %75, ptr undef), !dbg !2504
  %77 = extractvalue %runtime._string %76, 0, !dbg !2505
  %78 = extractvalue %runtime._string %76, 1, !dbg !2505
  %79 = call %runtime._string @runtime.stringConcat(ptr %77, i64 %78, ptr @"internal/reflectlite$string.97", i64 1, ptr undef), !dbg !2505
    #dbg_value(ptr %t, !2414, !DIExpression(), !2506)
  %80 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2507
  %81 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %80, ptr undef), !dbg !2508
  %82 = extractvalue %runtime._string %79, 0, !dbg !2509
  %83 = extractvalue %runtime._string %79, 1, !dbg !2509
  %84 = extractvalue %runtime._string %81, 0, !dbg !2509
  %85 = extractvalue %runtime._string %81, 1, !dbg !2509
  %86 = call %runtime._string @runtime.stringConcat(ptr %82, i64 %83, ptr %84, i64 %85, ptr undef), !dbg !2509
  ret %runtime._string %86, !dbg !2510

switch.next18:                                    ; preds = %switch.next16
  %87 = icmp eq i8 %13, 26, !dbg !2511
  br i1 %87, label %switch.body19, label %switch.next26, !dbg !2433

switch.body19:                                    ; preds = %switch.next18
    #dbg_value(ptr %t, !2414, !DIExpression(), !2512)
  %88 = call i64 @"(*internal/reflectlite.RawType).NumField"(ptr %t, ptr undef), !dbg !2513
    #dbg_value(i64 %88, !2417, !DIExpression(), !2514)
    #dbg_value(i64 %88, !2417, !DIExpression(), !2515)
  %89 = icmp eq i64 %88, 0, !dbg !2516
  br i1 %89, label %if.then20, label %if.done21, !dbg !2433

if.then20:                                        ; preds = %switch.body19
  ret %runtime._string { ptr @"internal/reflectlite$string.98", i64 9 }, !dbg !2517

if.done21:                                        ; preds = %switch.body19
    #dbg_value(%runtime._string poison, !2418, !DIExpression(), !2518)
    #dbg_value(i64 0, !2419, !DIExpression(), !2519)
  br label %for.loop, !dbg !2433

for.loop:                                         ; preds = %if.done25, %if.done21
  %90 = phi %runtime._string [ { ptr @"internal/reflectlite$string.106", i64 8 }, %if.done21 ], [ %144, %if.done25 ], !dbg !2518
  %91 = phi i64 [ 0, %if.done21 ], [ %145, %if.done25 ], !dbg !2519
    #dbg_value(i64 %91, !2419, !DIExpression(), !2520)
    #dbg_value(i64 %88, !2417, !DIExpression(), !2521)
  %92 = icmp slt i64 %91, %88, !dbg !2522
  br i1 %92, label %for.body, label %for.done, !dbg !2433

for.body:                                         ; preds = %for.loop
  store %"internal/reflectlite.rawStructField" zeroinitializer, ptr %f, align 8, !dbg !2432
    #dbg_value(ptr %t, !2414, !DIExpression(), !2523)
    #dbg_value(i64 %91, !2419, !DIExpression(), !2524)
  %93 = call %"internal/reflectlite.rawStructField" @"(*internal/reflectlite.RawType).rawField"(ptr %t, i64 %91, ptr undef), !dbg !2525
  store %"internal/reflectlite.rawStructField" %93, ptr %f, align 8, !dbg !2526
    #dbg_value(%"internal/reflectlite.rawStructField" %93, !2420, !DIExpression(), !2526)
  %94 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 0, !dbg !2527
  %95 = icmp eq ptr %94, null, !dbg !2527
  br i1 %95, label %deref.throw, label %deref.next, !dbg !2527

deref.next:                                       ; preds = %for.body
  %96 = load %runtime._string, ptr %94, align 8, !dbg !2527
  %97 = extractvalue %runtime._string %96, 0, !dbg !2528
  %98 = extractvalue %runtime._string %96, 1, !dbg !2528
  %99 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.100", i64 1, ptr %97, i64 %98, ptr undef), !dbg !2528
  %100 = extractvalue %runtime._string %99, 0, !dbg !2529
  %101 = extractvalue %runtime._string %99, 1, !dbg !2529
  %102 = call %runtime._string @runtime.stringConcat(ptr %100, i64 %101, ptr @"internal/reflectlite$string.101", i64 1, ptr undef), !dbg !2529
  %103 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 2, !dbg !2530
  %104 = icmp eq ptr %103, null, !dbg !2530
  br i1 %104, label %deref.throw32, label %deref.next33, !dbg !2530

deref.next33:                                     ; preds = %deref.next
  %105 = load ptr, ptr %103, align 8, !dbg !2530
  %106 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %105, ptr undef), !dbg !2531
  %107 = extractvalue %runtime._string %102, 0, !dbg !2532
  %108 = extractvalue %runtime._string %102, 1, !dbg !2532
  %109 = extractvalue %runtime._string %106, 0, !dbg !2532
  %110 = extractvalue %runtime._string %106, 1, !dbg !2532
  %111 = call %runtime._string @runtime.stringConcat(ptr %107, i64 %108, ptr %109, i64 %110, ptr undef), !dbg !2532
  %112 = extractvalue %runtime._string %90, 0, !dbg !2533
  %113 = extractvalue %runtime._string %90, 1, !dbg !2533
  %114 = extractvalue %runtime._string %111, 0, !dbg !2533
  %115 = extractvalue %runtime._string %111, 1, !dbg !2533
  %116 = call %runtime._string @runtime.stringConcat(ptr %112, i64 %113, ptr %114, i64 %115, ptr undef), !dbg !2533
    #dbg_value(%runtime._string %116, !2418, !DIExpression(), !2533)
  %117 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 3, !dbg !2534
  %118 = icmp eq ptr %117, null, !dbg !2534
  br i1 %118, label %deref.throw34, label %deref.next35, !dbg !2534

deref.next35:                                     ; preds = %deref.next33
  %119 = load %runtime._string, ptr %117, align 8, !dbg !2534
  %120 = extractvalue %runtime._string %119, 0, !dbg !2535
  %121 = extractvalue %runtime._string %119, 1, !dbg !2535
  %122 = call i1 @runtime.stringEqual(ptr %120, i64 %121, ptr null, i64 0, ptr undef), !dbg !2535
  %123 = xor i1 %122, true, !dbg !2535
  br i1 %123, label %if.then22, label %if.done23, !dbg !2433

if.then22:                                        ; preds = %deref.next35
  %124 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 3, !dbg !2536
  %125 = icmp eq ptr %124, null, !dbg !2536
  br i1 %125, label %deref.throw36, label %deref.next37, !dbg !2536

deref.next37:                                     ; preds = %if.then22
  %126 = load %runtime._string, ptr %124, align 8, !dbg !2536
  %127 = extractvalue %runtime._string %126, 0, !dbg !2537
  %128 = extractvalue %runtime._string %126, 1, !dbg !2537
  %129 = call %runtime._string @"internal/reflectlite.quote"(ptr %127, i64 %128, ptr undef), !dbg !2537
  %130 = extractvalue %runtime._string %129, 0, !dbg !2538
  %131 = extractvalue %runtime._string %129, 1, !dbg !2538
  %132 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.102", i64 1, ptr %130, i64 %131, ptr undef), !dbg !2538
  %133 = extractvalue %runtime._string %116, 0, !dbg !2539
  %134 = extractvalue %runtime._string %116, 1, !dbg !2539
  %135 = extractvalue %runtime._string %132, 0, !dbg !2539
  %136 = extractvalue %runtime._string %132, 1, !dbg !2539
  %137 = call %runtime._string @runtime.stringConcat(ptr %133, i64 %134, ptr %135, i64 %136, ptr undef), !dbg !2539
    #dbg_value(%runtime._string %137, !2418, !DIExpression(), !2539)
  br label %if.done23, !dbg !2433

if.done23:                                        ; preds = %deref.next37, %deref.next35
  %138 = phi %runtime._string [ %116, %deref.next35 ], [ %137, %deref.next37 ], !dbg !2518
    #dbg_value(i64 %91, !2419, !DIExpression(), !2540)
    #dbg_value(i64 %88, !2417, !DIExpression(), !2541)
  %139 = sub i64 %88, 1, !dbg !2542
  %140 = icmp slt i64 %91, %139, !dbg !2543
  br i1 %140, label %if.then24, label %if.done25, !dbg !2433

if.then24:                                        ; preds = %if.done23
  %141 = extractvalue %runtime._string %138, 0, !dbg !2544
  %142 = extractvalue %runtime._string %138, 1, !dbg !2544
  %143 = call %runtime._string @runtime.stringConcat(ptr %141, i64 %142, ptr @"internal/reflectlite$string.103", i64 1, ptr undef), !dbg !2544
    #dbg_value(%runtime._string %143, !2418, !DIExpression(), !2544)
  br label %if.done25, !dbg !2433

if.done25:                                        ; preds = %if.then24, %if.done23
  %144 = phi %runtime._string [ %138, %if.done23 ], [ %143, %if.then24 ], !dbg !2518
  %145 = add i64 %91, 1, !dbg !2545
    #dbg_value(i64 %145, !2419, !DIExpression(), !2545)
  br label %for.loop, !dbg !2433

for.done:                                         ; preds = %for.loop
  %146 = extractvalue %runtime._string %90, 0, !dbg !2546
  %147 = extractvalue %runtime._string %90, 1, !dbg !2546
  %148 = call %runtime._string @runtime.stringConcat(ptr %146, i64 %147, ptr @"internal/reflectlite$string.104", i64 2, ptr undef), !dbg !2546
    #dbg_value(%runtime._string %148, !2418, !DIExpression(), !2546)
    #dbg_value(%runtime._string %148, !2418, !DIExpression(), !2547)
  ret %runtime._string %148, !dbg !2548

switch.next26:                                    ; preds = %switch.next18
  %149 = icmp eq i8 %13, 20, !dbg !2549
  br i1 %149, label %switch.body27, label %switch.next28, !dbg !2433

switch.body27:                                    ; preds = %switch.next26
  ret %runtime._string { ptr @"internal/reflectlite$string.105", i64 12 }, !dbg !2550

switch.next28:                                    ; preds = %switch.next26
    #dbg_value(ptr %t, !2414, !DIExpression(), !2551)
  %150 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2552
  %151 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %150, ptr undef), !dbg !2553
  ret %runtime._string %151, !dbg !2554

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2438
  unreachable, !dbg !2438

slice.throw:                                      ; preds = %if.then1
  call void @runtime.slicePanic(ptr undef), !dbg !2441
  unreachable, !dbg !2441

lookup.throw30:                                   ; preds = %switch.body6
  call void @runtime.lookupPanic(ptr undef), !dbg !2464
  unreachable, !dbg !2464

deref.throw:                                      ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !2527
  unreachable, !dbg !2527

deref.throw32:                                    ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !2530
  unreachable, !dbg !2530

deref.throw34:                                    ; preds = %deref.next33
  call void @runtime.nilPanic(ptr undef), !dbg !2534
  unreachable, !dbg !2534

deref.throw36:                                    ; preds = %if.then22
  call void @runtime.nilPanic(ptr undef), !dbg !2536
  unreachable, !dbg !2536
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).key"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2555 {
entry:
    #dbg_value(ptr %t, !2557, !DIExpression(), !2560)
    #dbg_value(ptr %t, !2557, !DIExpression(), !2561)
  %0 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2562
    #dbg_value(ptr %0, !2558, !DIExpression(), !2563)
    #dbg_value(ptr %0, !2558, !DIExpression(), !2564)
  %1 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %0, ptr undef), !dbg !2565
  %2 = icmp ne i8 %1, 25, !dbg !2566
  br i1 %2, label %if.then, label %if.done, !dbg !2567

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @"internal/reflectlite.errTypeKey", align 8, !dbg !2568
    #dbg_value(ptr %3, !2559, !DIExpression(), !2568)
  %4 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %3, 1, !dbg !2568
  %5 = extractvalue { ptr, ptr } %4, 0, !dbg !2569
  %6 = extractvalue { ptr, ptr } %4, 1, !dbg !2569
  call void @runtime._panic(ptr %5, ptr %6, ptr undef), !dbg !2569
  unreachable, !dbg !2569

if.done:                                          ; preds = %entry
    #dbg_value(ptr %0, !2558, !DIExpression(), !2570)
  %7 = getelementptr inbounds %"internal/reflectlite.namedType", ptr %0, i32 0, i32 4, !dbg !2571
  %8 = icmp eq ptr %7, null, !dbg !2571
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2571

deref.next:                                       ; preds = %if.done
  %9 = load ptr, ptr %7, align 8, !dbg !2571
  ret ptr %9, !dbg !2572

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2571
  unreachable, !dbg !2571
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.RawType).name"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2573 {
entry:
    #dbg_value(ptr %t, !2575, !DIExpression(), !2594)
    #dbg_value(ptr %t, !2575, !DIExpression(), !2595)
    #dbg_value(ptr %t, !2576, !DIExpression(), !2596)
    #dbg_value(ptr %t, !2576, !DIExpression(), !2597)
  %0 = getelementptr i8, ptr %t, i64 32, !dbg !2598
    #dbg_value(ptr %0, !2586, !DIExpression(), !2599)
    #dbg_value(ptr %t, !2576, !DIExpression(), !2600)
  %1 = getelementptr inbounds %"internal/reflectlite.namedType", ptr %t, i32 0, i32 1, !dbg !2601
  %2 = icmp eq ptr %1, null, !dbg !2601
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2601

deref.next:                                       ; preds = %entry
  %3 = load i16, ptr %1, align 2, !dbg !2601
  %4 = and i16 %3, -32768, !dbg !2602
  %5 = icmp ne i16 %4, 0, !dbg !2603
  br i1 %5, label %if.then, label %if.done, !dbg !2604

if.then:                                          ; preds = %deref.next
    #dbg_value(ptr %0, !2586, !DIExpression(), !2605)
    #dbg_value(ptr %0, !2587, !DIExpression(), !2606)
    #dbg_value(ptr %0, !2586, !DIExpression(), !2607)
    #dbg_value(ptr %0, !2587, !DIExpression(), !2608)
  %6 = getelementptr inbounds %"internal/reflectlite.methodSet", ptr %0, i32 0, i32 0, !dbg !2609
  %7 = icmp eq ptr %6, null, !dbg !2609
  br i1 %7, label %deref.throw1, label %deref.next2, !dbg !2609

deref.next2:                                      ; preds = %if.then
  %8 = load i64, ptr %6, align 8, !dbg !2609
  %9 = mul i64 %8, 8, !dbg !2610
  %10 = add i64 8, %9, !dbg !2611
  %11 = getelementptr i8, ptr %0, i64 %10, !dbg !2612
    #dbg_value(ptr %11, !2586, !DIExpression(), !2613)
  br label %if.done, !dbg !2604

if.done:                                          ; preds = %deref.next2, %deref.next
  %12 = phi ptr [ %0, %deref.next ], [ %11, %deref.next2 ], !dbg !2599
    #dbg_value(ptr %12, !2586, !DIExpression(), !2614)
  %13 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %12, ptr undef), !dbg !2615
  ret %runtime._string %13, !dbg !2616

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2601
  unreachable, !dbg !2601

deref.throw1:                                     ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2609
  unreachable, !dbg !2609
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/reflectlite.rawStructField" @"(*internal/reflectlite.RawType).rawField"(ptr dereferenceable_or_null(1) %t, i64 %n, ptr %context) unnamed_addr #1 !dbg !2617 {
entry:
    #dbg_value(ptr %t, !2621, !DIExpression(), !2645)
    #dbg_value(i64 %n, !2622, !DIExpression(), !2645)
    #dbg_value(ptr %t, !2621, !DIExpression(), !2646)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2647
  %1 = icmp ne i8 %0, 26, !dbg !2648
  br i1 %1, label %if.then, label %if.done, !dbg !2649

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeField", align 8, !dbg !2650
    #dbg_value(ptr %2, !2623, !DIExpression(), !2650)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2650
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2651
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2651
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2651
  unreachable, !dbg !2651

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2621, !DIExpression(), !2652)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2653
    #dbg_value(ptr %6, !2624, !DIExpression(), !2654)
    #dbg_value(i64 %n, !2622, !DIExpression(), !2655)
    #dbg_value(ptr %6, !2624, !DIExpression(), !2656)
  %7 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 5, !dbg !2657
  %8 = icmp eq ptr %7, null, !dbg !2657
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2657

deref.next:                                       ; preds = %if.done
  %9 = load i16, ptr %7, align 2, !dbg !2657
  %10 = zext i16 %9 to i64, !dbg !2658
  %11 = icmp uge i64 %n, %10, !dbg !2659
  br i1 %11, label %if.then1, label %if.done2, !dbg !2649

if.then1:                                         ; preds = %deref.next
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"internal/reflectlite$pack.108", ptr undef), !dbg !2660
  unreachable, !dbg !2660

if.done2:                                         ; preds = %deref.next
    #dbg_value(ptr %6, !2624, !DIExpression(), !2661)
  %12 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 6, !dbg !2662
  %13 = icmp eq ptr %12, null, !dbg !2663
  br i1 %13, label %gep.throw, label %gep.next, !dbg !2663

gep.next:                                         ; preds = %if.done2
  %14 = getelementptr inbounds [1 x { ptr, ptr }], ptr %12, i32 0, i64 0, !dbg !2663
    #dbg_value(i64 %n, !2622, !DIExpression(), !2664)
  %15 = mul i64 %n, 16, !dbg !2665
  %16 = getelementptr i8, ptr %14, i64 %15, !dbg !2666
    #dbg_value(ptr %16, !2638, !DIExpression(), !2667)
    #dbg_value(ptr %16, !2638, !DIExpression(), !2668)
  %17 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 1, !dbg !2669
  %18 = icmp eq ptr %17, null, !dbg !2669
  br i1 %18, label %deref.throw3, label %deref.next4, !dbg !2669

deref.next4:                                      ; preds = %gep.next
  %19 = load ptr, ptr %17, align 8, !dbg !2669
    #dbg_value(ptr %19, !2640, !DIExpression(), !2670)
    #dbg_value(ptr %19, !2640, !DIExpression(), !2671)
  %20 = load i8, ptr %19, align 1, !dbg !2672
    #dbg_value(i8 %20, !2641, !DIExpression(), !2673)
    #dbg_value(ptr %19, !2640, !DIExpression(), !2674)
  %21 = getelementptr i8, ptr %19, i64 1, !dbg !2675
    #dbg_value(ptr %21, !2640, !DIExpression(), !2676)
    #dbg_value(ptr %21, !2640, !DIExpression(), !2677)
  %22 = icmp eq ptr %21, null, !dbg !2678
  %23 = and i1 %22, true, !dbg !2678
  %24 = or i1 %23, false, !dbg !2678
  br i1 %24, label %unsafe.Slice.throw, label %unsafe.Slice.next, !dbg !2678

unsafe.Slice.next:                                ; preds = %deref.next4
  %25 = insertvalue { ptr, i64, i64 } undef, ptr %21, 0, !dbg !2678
  %26 = insertvalue { ptr, i64, i64 } %25, i64 5, 1, !dbg !2678
  %27 = insertvalue { ptr, i64, i64 } %26, i64 5, 2, !dbg !2678
  %28 = extractvalue { ptr, i64, i64 } %27, 0, !dbg !2679
  %29 = extractvalue { ptr, i64, i64 } %27, 1, !dbg !2679
  %30 = extractvalue { ptr, i64, i64 } %27, 2, !dbg !2679
  %31 = call { i32, i64 } @"internal/reflectlite.uvarint32"(ptr %28, i64 %29, i64 %30, ptr undef), !dbg !2679
  %32 = extractvalue { i32, i64 } %31, 0, !dbg !2679
    #dbg_value(i32 %32, !2642, !DIExpression(), !2680)
  %33 = extractvalue { i32, i64 } %31, 1, !dbg !2679
    #dbg_value(i64 %33, !2643, !DIExpression(), !2681)
    #dbg_value(ptr %21, !2640, !DIExpression(), !2682)
    #dbg_value(i64 %33, !2643, !DIExpression(), !2683)
  %34 = getelementptr i8, ptr %21, i64 %33, !dbg !2684
    #dbg_value(ptr %34, !2640, !DIExpression(), !2685)
    #dbg_value(ptr %34, !2640, !DIExpression(), !2686)
  %35 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %34, ptr undef), !dbg !2687
    #dbg_value(%runtime._string %35, !2644, !DIExpression(), !2688)
    #dbg_value(ptr %34, !2640, !DIExpression(), !2689)
    #dbg_value(%runtime._string %35, !2644, !DIExpression(), !2690)
  %len = extractvalue %runtime._string %35, 1, !dbg !2691
  %36 = getelementptr i8, ptr %34, i64 %len, !dbg !2692
    #dbg_value(ptr %36, !2640, !DIExpression(), !2693)
    #dbg_value(ptr %6, !2624, !DIExpression(), !2694)
    #dbg_value(ptr %16, !2638, !DIExpression(), !2695)
  %37 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 0, !dbg !2696
  %38 = icmp eq ptr %37, null, !dbg !2696
  br i1 %38, label %deref.throw5, label %deref.next6, !dbg !2696

deref.next6:                                      ; preds = %unsafe.Slice.next
  %39 = load ptr, ptr %37, align 8, !dbg !2696
    #dbg_value(ptr %36, !2640, !DIExpression(), !2697)
    #dbg_value(i8 %20, !2641, !DIExpression(), !2698)
    #dbg_value(%runtime._string %35, !2644, !DIExpression(), !2699)
    #dbg_value(i32 %32, !2642, !DIExpression(), !2700)
  %40 = extractvalue %runtime._string %35, 0, !dbg !2701
  %41 = extractvalue %runtime._string %35, 1, !dbg !2701
  %42 = call %"internal/reflectlite.rawStructField" @"internal/reflectlite.rawStructFieldFromPointer"(ptr %6, ptr %39, ptr %36, i8 %20, ptr %40, i64 %41, i32 %32, ptr undef), !dbg !2701
  ret %"internal/reflectlite.rawStructField" %42, !dbg !2702

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2657
  unreachable, !dbg !2657

gep.throw:                                        ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2663
  unreachable, !dbg !2663

deref.throw3:                                     ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2669
  unreachable, !dbg !2669

unsafe.Slice.throw:                               ; preds = %deref.next4
  call void @runtime.unsafeSlicePanic(ptr undef), !dbg !2678
  unreachable, !dbg !2678

deref.throw5:                                     ; preds = %unsafe.Slice.next
  call void @runtime.nilPanic(ptr undef), !dbg !2696
  unreachable, !dbg !2696
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"internal/reflectlite.uvarint32"(ptr %buf.data, i64 %buf.len, i64 %buf.cap, ptr %context) unnamed_addr #1 !dbg !2703 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %buf.data, 0, !dbg !2712
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %buf.len, 1, !dbg !2712
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %buf.cap, 2, !dbg !2712
    #dbg_value(ptr %buf.data, !2707, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2712)
    #dbg_value(i64 %buf.len, !2707, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2712)
    #dbg_value(i64 %buf.cap, !2707, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2712)
    #dbg_value(i32 0, !2708, !DIExpression(), !2713)
    #dbg_value(i64 0, !2709, !DIExpression(), !2714)
    #dbg_value({ ptr, i64, i64 } %2, !2707, !DIExpression(), !2715)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2716
  br label %rangeindex.loop, !dbg !2716

rangeindex.loop:                                  ; preds = %if.done, %entry
  %3 = phi i32 [ 0, %entry ], [ %23, %if.done ], !dbg !2713
  %4 = phi i64 [ 0, %entry ], [ %24, %if.done ], !dbg !2714
  %5 = phi i64 [ -1, %entry ], [ %6, %if.done ], !dbg !2716
  %6 = add i64 %5, 1, !dbg !2716
  %7 = icmp slt i64 %6, %len, !dbg !2716
  br i1 %7, label %rangeindex.body, label %rangeindex.done, !dbg !2716

rangeindex.body:                                  ; preds = %rangeindex.loop
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2715
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2715
  %8 = icmp uge i64 %6, %indexaddr.len, !dbg !2715
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !2715

lookup.next:                                      ; preds = %rangeindex.body
  %9 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %6, !dbg !2715
  %10 = load i8, ptr %9, align 1, !dbg !2716
    #dbg_value(i64 %6, !2710, !DIExpression(), !2717)
    #dbg_value(i8 %10, !2711, !DIExpression(), !2718)
    #dbg_value(i8 %10, !2711, !DIExpression(), !2719)
  %11 = icmp ult i8 %10, -128, !dbg !2720
  br i1 %11, label %if.then, label %if.done, !dbg !2716

if.then:                                          ; preds = %lookup.next
    #dbg_value(i32 %3, !2708, !DIExpression(), !2721)
    #dbg_value(i8 %10, !2711, !DIExpression(), !2722)
  %12 = zext i8 %10 to i32, !dbg !2723
    #dbg_value(i64 %4, !2709, !DIExpression(), !2724)
  %shift.overflow = icmp uge i64 %4, 32, !dbg !2725
  %13 = trunc i64 %4 to i32, !dbg !2725
  %14 = shl i32 %12, %13, !dbg !2725
  %shift.result = select i1 %shift.overflow, i32 0, i32 %14, !dbg !2725
  %15 = or i32 %3, %shift.result, !dbg !2726
    #dbg_value(i64 %6, !2710, !DIExpression(), !2727)
  %16 = add i64 %6, 1, !dbg !2728
  %17 = insertvalue { i32, i64 } zeroinitializer, i32 %15, 0, !dbg !2729
  %18 = insertvalue { i32, i64 } %17, i64 %16, 1, !dbg !2729
  ret { i32, i64 } %18, !dbg !2729

if.done:                                          ; preds = %lookup.next
    #dbg_value(i8 %10, !2711, !DIExpression(), !2730)
  %19 = and i8 %10, 127, !dbg !2731
  %20 = zext i8 %19 to i32, !dbg !2732
    #dbg_value(i64 %4, !2709, !DIExpression(), !2733)
  %shift.overflow1 = icmp uge i64 %4, 32, !dbg !2734
  %21 = trunc i64 %4 to i32, !dbg !2734
  %22 = shl i32 %20, %21, !dbg !2734
  %shift.result2 = select i1 %shift.overflow1, i32 0, i32 %22, !dbg !2734
  %23 = or i32 %3, %shift.result2, !dbg !2735
    #dbg_value(i32 %23, !2708, !DIExpression(), !2735)
  %24 = add i64 %4, 7, !dbg !2736
    #dbg_value(i64 %24, !2709, !DIExpression(), !2736)
  br label %rangeindex.loop, !dbg !2716

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret { i32, i64 } zeroinitializer, !dbg !2737

lookup.throw:                                     ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2715
  unreachable, !dbg !2715
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/reflectlite.readStringZ"(ptr %data, ptr %context) unnamed_addr #1 !dbg !2738 {
entry:
    #dbg_value(ptr %data, !2742, !DIExpression(), !2745)
    #dbg_value(ptr %data, !2742, !DIExpression(), !2746)
    #dbg_value(ptr %data, !2743, !DIExpression(), !2747)
    #dbg_value(i64 0, !2744, !DIExpression(), !2748)
  br label %for.loop, !dbg !2749

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi ptr [ %data, %entry ], [ %5, %for.body ], !dbg !2750
  %1 = phi i64 [ 0, %entry ], [ %4, %for.body ], !dbg !2748
    #dbg_value(ptr %0, !2742, !DIExpression(), !2751)
  %2 = load i8, ptr %0, align 1, !dbg !2752
  %3 = icmp ne i8 %2, 0, !dbg !2753
  br i1 %3, label %for.body, label %for.done, !dbg !2749

for.body:                                         ; preds = %for.loop
  %4 = add i64 %1, 1, !dbg !2754
    #dbg_value(i64 %4, !2744, !DIExpression(), !2754)
    #dbg_value(ptr %0, !2742, !DIExpression(), !2755)
  %5 = getelementptr i8, ptr %0, i64 1, !dbg !2756
    #dbg_value(ptr %5, !2742, !DIExpression(), !2757)
  br label %for.loop, !dbg !2749

for.done:                                         ; preds = %for.loop
  %complit = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 133 to ptr), ptr undef), !dbg !2758
  %6 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !2759
    #dbg_value(ptr %data, !2743, !DIExpression(), !2760)
  %7 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !2761
    #dbg_value(i64 %1, !2744, !DIExpression(), !2762)
  %8 = icmp eq ptr %6, null, !dbg !2759
  br i1 %8, label %store.throw, label %store.next, !dbg !2759

store.next:                                       ; preds = %for.done
  store ptr %data, ptr %6, align 8, !dbg !2759
    #dbg_value(ptr %data, !2743, !DIExpression(), !2760)
  %9 = icmp eq ptr %7, null, !dbg !2761
  br i1 %9, label %store.throw1, label %store.next2, !dbg !2761

store.next2:                                      ; preds = %store.next
  store i64 %1, ptr %7, align 8, !dbg !2761
    #dbg_value(i64 %1, !2744, !DIExpression(), !2762)
  %10 = load %runtime._string, ptr %complit, align 8, !dbg !2763
  ret %runtime._string %10, !dbg !2764

store.throw:                                      ; preds = %for.done
  call void @runtime.nilPanic(ptr undef), !dbg !2759
  unreachable, !dbg !2759

store.throw1:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !2761
  unreachable, !dbg !2761
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/reflectlite.rawStructField" @"internal/reflectlite.rawStructFieldFromPointer"(ptr dereferenceable_or_null(48) %descriptor, ptr dereferenceable_or_null(1) %fieldType, ptr %data, i8 %flagsByte, ptr readonly %name.data, i64 %name.len, i32 %offset, ptr %context) unnamed_addr #1 !dbg !2765 {
entry:
    #dbg_value(ptr %descriptor, !2769, !DIExpression(), !2778)
    #dbg_value(ptr %fieldType, !2770, !DIExpression(), !2778)
    #dbg_value(ptr %data, !2771, !DIExpression(), !2778)
    #dbg_value(i8 %flagsByte, !2772, !DIExpression(), !2778)
  %complit5 = alloca %"internal/reflectlite.rawStructField", align 8, !dbg !2778
  %0 = insertvalue %runtime._string zeroinitializer, ptr %name.data, 0, !dbg !2778
  %1 = insertvalue %runtime._string %0, i64 %name.len, 1, !dbg !2778
    #dbg_value(ptr %name.data, !2773, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2778)
    #dbg_value(i64 %name.len, !2773, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2778)
    #dbg_value(i32 %offset, !2774, !DIExpression(), !2778)
    #dbg_value(%runtime._string zeroinitializer, !2775, !DIExpression(), !2779)
    #dbg_value(i8 %flagsByte, !2772, !DIExpression(), !2780)
  %2 = and i8 %flagsByte, 2, !dbg !2781
  %3 = icmp ne i8 %2, 0, !dbg !2782
  br i1 %3, label %if.then, label %if.done, !dbg !2783

if.then:                                          ; preds = %entry
    #dbg_value(ptr %data, !2771, !DIExpression(), !2784)
  %4 = getelementptr i8, ptr %data, i64 1, !dbg !2785
    #dbg_value(ptr %4, !2771, !DIExpression(), !2786)
    #dbg_value(ptr %4, !2771, !DIExpression(), !2787)
  %5 = load i8, ptr %4, align 1, !dbg !2788
  %6 = zext i8 %5 to i64, !dbg !2789
    #dbg_value(i64 %6, !2776, !DIExpression(), !2790)
    #dbg_value(ptr %4, !2771, !DIExpression(), !2791)
  %7 = getelementptr i8, ptr %4, i64 1, !dbg !2792
    #dbg_value(ptr %7, !2771, !DIExpression(), !2793)
  %complit = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 133 to ptr), ptr undef), !dbg !2794
  %8 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !2795
    #dbg_value(ptr %7, !2771, !DIExpression(), !2796)
  %9 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !2797
    #dbg_value(i64 %6, !2776, !DIExpression(), !2798)
  %10 = icmp eq ptr %8, null, !dbg !2795
  br i1 %10, label %store.throw, label %store.next, !dbg !2795

store.next:                                       ; preds = %if.then
  store ptr %7, ptr %8, align 8, !dbg !2795
    #dbg_value(ptr %7, !2771, !DIExpression(), !2796)
  %11 = icmp eq ptr %9, null, !dbg !2797
  br i1 %11, label %store.throw3, label %store.next4, !dbg !2797

store.next4:                                      ; preds = %store.next
  store i64 %6, ptr %9, align 8, !dbg !2797
    #dbg_value(i64 %6, !2776, !DIExpression(), !2798)
  %12 = load %runtime._string, ptr %complit, align 8, !dbg !2799
    #dbg_value(%runtime._string %12, !2775, !DIExpression(), !2800)
  br label %if.done, !dbg !2783

if.done:                                          ; preds = %store.next4, %entry
  %13 = phi %runtime._string [ zeroinitializer, %entry ], [ %12, %store.next4 ], !dbg !2779
    #dbg_value(%runtime._string zeroinitializer, !2777, !DIExpression(), !2801)
    #dbg_value(i8 %flagsByte, !2772, !DIExpression(), !2802)
  %14 = and i8 %flagsByte, 4, !dbg !2803
  %15 = icmp eq i8 %14, 0, !dbg !2804
  br i1 %15, label %if.then1, label %if.done2, !dbg !2783

if.then1:                                         ; preds = %if.done
    #dbg_value(ptr %descriptor, !2769, !DIExpression(), !2805)
  %16 = icmp eq ptr %descriptor, null, !dbg !2806
  br i1 %16, label %gep.throw, label %gep.next, !dbg !2806

gep.next:                                         ; preds = %if.then1
  %17 = getelementptr inbounds %"internal/reflectlite.structType", ptr %descriptor, i32 0, i32 3, !dbg !2806
  %18 = icmp eq ptr %17, null, !dbg !2806
  br i1 %18, label %deref.throw, label %deref.next, !dbg !2806

deref.next:                                       ; preds = %gep.next
  %19 = load ptr, ptr %17, align 8, !dbg !2806
  %20 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %19, ptr undef), !dbg !2807
    #dbg_value(%runtime._string %20, !2777, !DIExpression(), !2808)
  br label %if.done2, !dbg !2783

if.done2:                                         ; preds = %deref.next, %if.done
  %21 = phi %runtime._string [ zeroinitializer, %if.done ], [ %20, %deref.next ], !dbg !2801
  store %"internal/reflectlite.rawStructField" zeroinitializer, ptr %complit5, align 8, !dbg !2778
  %22 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 0, !dbg !2809
    #dbg_value(%runtime._string %1, !2773, !DIExpression(), !2810)
  %23 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 1, !dbg !2811
    #dbg_value(%runtime._string %21, !2777, !DIExpression(), !2812)
  %24 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 2, !dbg !2813
    #dbg_value(ptr %fieldType, !2770, !DIExpression(), !2814)
  %25 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 3, !dbg !2815
    #dbg_value(%runtime._string %13, !2775, !DIExpression(), !2816)
  %26 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 5, !dbg !2817
    #dbg_value(i8 %flagsByte, !2772, !DIExpression(), !2818)
  %27 = and i8 %flagsByte, 1, !dbg !2819
  %28 = icmp ne i8 %27, 0, !dbg !2820
  %29 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 4, !dbg !2821
    #dbg_value(i32 %offset, !2774, !DIExpression(), !2822)
  %30 = zext i32 %offset to i64, !dbg !2823
  %31 = icmp eq ptr %22, null, !dbg !2809
  br i1 %31, label %store.throw6, label %store.next7, !dbg !2809

store.next7:                                      ; preds = %if.done2
  store %runtime._string %1, ptr %22, align 8, !dbg !2809
    #dbg_value(%runtime._string %1, !2773, !DIExpression(), !2810)
  %32 = icmp eq ptr %23, null, !dbg !2811
  br i1 %32, label %store.throw8, label %store.next9, !dbg !2811

store.next9:                                      ; preds = %store.next7
  store %runtime._string %21, ptr %23, align 8, !dbg !2811
    #dbg_value(%runtime._string %21, !2777, !DIExpression(), !2812)
  %33 = icmp eq ptr %24, null, !dbg !2813
  br i1 %33, label %store.throw10, label %store.next11, !dbg !2813

store.next11:                                     ; preds = %store.next9
  store ptr %fieldType, ptr %24, align 8, !dbg !2813
    #dbg_value(ptr %fieldType, !2770, !DIExpression(), !2814)
  %34 = icmp eq ptr %25, null, !dbg !2815
  br i1 %34, label %store.throw12, label %store.next13, !dbg !2815

store.next13:                                     ; preds = %store.next11
  store %runtime._string %13, ptr %25, align 8, !dbg !2815
  %35 = icmp eq ptr %26, null, !dbg !2817
  br i1 %35, label %store.throw14, label %store.next15, !dbg !2817

store.next15:                                     ; preds = %store.next13
  store i1 %28, ptr %26, align 1, !dbg !2817
  %36 = icmp eq ptr %29, null, !dbg !2821
  br i1 %36, label %store.throw16, label %store.next17, !dbg !2821

store.next17:                                     ; preds = %store.next15
  store i64 %30, ptr %29, align 8, !dbg !2821
  %37 = load %"internal/reflectlite.rawStructField", ptr %complit5, align 8, !dbg !2824
  ret %"internal/reflectlite.rawStructField" %37, !dbg !2825

store.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2795
  unreachable, !dbg !2795

store.throw3:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !2797
  unreachable, !dbg !2797

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !2806
  unreachable, !dbg !2806

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2806
  unreachable, !dbg !2806

store.throw6:                                     ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2809
  unreachable, !dbg !2809

store.throw8:                                     ; preds = %store.next7
  call void @runtime.nilPanic(ptr undef), !dbg !2811
  unreachable, !dbg !2811

store.throw10:                                    ; preds = %store.next9
  call void @runtime.nilPanic(ptr undef), !dbg !2813
  unreachable, !dbg !2813

store.throw12:                                    ; preds = %store.next11
  call void @runtime.nilPanic(ptr undef), !dbg !2815
  unreachable, !dbg !2815

store.throw14:                                    ; preds = %store.next13
  call void @runtime.nilPanic(ptr undef), !dbg !2817
  unreachable, !dbg !2817

store.throw16:                                    ; preds = %store.next15
  call void @runtime.nilPanic(ptr undef), !dbg !2821
  unreachable, !dbg !2821
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.Kind).String"(i8 %k, ptr %context) unnamed_addr #1 !dbg !2826 {
entry:
    #dbg_value(i8 %k, !2831, !DIExpression(), !2832)
    #dbg_value(i8 %k, !2831, !DIExpression(), !2833)
  %0 = icmp eq i8 %k, 0, !dbg !2834
  br i1 %0, label %switch.body, label %switch.next, !dbg !2835

switch.body:                                      ; preds = %entry
  ret %runtime._string { ptr @"internal/reflectlite$string.41", i64 7 }, !dbg !2836

switch.next:                                      ; preds = %entry
  %1 = icmp eq i8 %k, 1, !dbg !2837
  br i1 %1, label %switch.body1, label %switch.next2, !dbg !2835

switch.body1:                                     ; preds = %switch.next
  ret %runtime._string { ptr @"internal/reflectlite$string.42", i64 4 }, !dbg !2838

switch.next2:                                     ; preds = %switch.next
  %2 = icmp eq i8 %k, 2, !dbg !2839
  br i1 %2, label %switch.body3, label %switch.next4, !dbg !2835

switch.body3:                                     ; preds = %switch.next2
  ret %runtime._string { ptr @"internal/reflectlite$string.43", i64 3 }, !dbg !2840

switch.next4:                                     ; preds = %switch.next2
  %3 = icmp eq i8 %k, 3, !dbg !2841
  br i1 %3, label %switch.body5, label %switch.next6, !dbg !2835

switch.body5:                                     ; preds = %switch.next4
  ret %runtime._string { ptr @"internal/reflectlite$string.44", i64 4 }, !dbg !2842

switch.next6:                                     ; preds = %switch.next4
  %4 = icmp eq i8 %k, 4, !dbg !2843
  br i1 %4, label %switch.body7, label %switch.next8, !dbg !2835

switch.body7:                                     ; preds = %switch.next6
  ret %runtime._string { ptr @"internal/reflectlite$string.45", i64 5 }, !dbg !2844

switch.next8:                                     ; preds = %switch.next6
  %5 = icmp eq i8 %k, 5, !dbg !2845
  br i1 %5, label %switch.body9, label %switch.next10, !dbg !2835

switch.body9:                                     ; preds = %switch.next8
  ret %runtime._string { ptr @"internal/reflectlite$string.46", i64 5 }, !dbg !2846

switch.next10:                                    ; preds = %switch.next8
  %6 = icmp eq i8 %k, 6, !dbg !2847
  br i1 %6, label %switch.body11, label %switch.next12, !dbg !2835

switch.body11:                                    ; preds = %switch.next10
  ret %runtime._string { ptr @"internal/reflectlite$string.47", i64 5 }, !dbg !2848

switch.next12:                                    ; preds = %switch.next10
  %7 = icmp eq i8 %k, 7, !dbg !2849
  br i1 %7, label %switch.body13, label %switch.next14, !dbg !2835

switch.body13:                                    ; preds = %switch.next12
  ret %runtime._string { ptr @"internal/reflectlite$string.48", i64 4 }, !dbg !2850

switch.next14:                                    ; preds = %switch.next12
  %8 = icmp eq i8 %k, 8, !dbg !2851
  br i1 %8, label %switch.body15, label %switch.next16, !dbg !2835

switch.body15:                                    ; preds = %switch.next14
  ret %runtime._string { ptr @"internal/reflectlite$string.49", i64 5 }, !dbg !2852

switch.next16:                                    ; preds = %switch.next14
  %9 = icmp eq i8 %k, 9, !dbg !2853
  br i1 %9, label %switch.body17, label %switch.next18, !dbg !2835

switch.body17:                                    ; preds = %switch.next16
  ret %runtime._string { ptr @"internal/reflectlite$string.50", i64 6 }, !dbg !2854

switch.next18:                                    ; preds = %switch.next16
  %10 = icmp eq i8 %k, 10, !dbg !2855
  br i1 %10, label %switch.body19, label %switch.next20, !dbg !2835

switch.body19:                                    ; preds = %switch.next18
  ret %runtime._string { ptr @"internal/reflectlite$string.51", i64 6 }, !dbg !2856

switch.next20:                                    ; preds = %switch.next18
  %11 = icmp eq i8 %k, 11, !dbg !2857
  br i1 %11, label %switch.body21, label %switch.next22, !dbg !2835

switch.body21:                                    ; preds = %switch.next20
  ret %runtime._string { ptr @"internal/reflectlite$string.52", i64 6 }, !dbg !2858

switch.next22:                                    ; preds = %switch.next20
  %12 = icmp eq i8 %k, 12, !dbg !2859
  br i1 %12, label %switch.body23, label %switch.next24, !dbg !2835

switch.body23:                                    ; preds = %switch.next22
  ret %runtime._string { ptr @"internal/reflectlite$string.53", i64 7 }, !dbg !2860

switch.next24:                                    ; preds = %switch.next22
  %13 = icmp eq i8 %k, 13, !dbg !2861
  br i1 %13, label %switch.body25, label %switch.next26, !dbg !2835

switch.body25:                                    ; preds = %switch.next24
  ret %runtime._string { ptr @"internal/reflectlite$string.54", i64 7 }, !dbg !2862

switch.next26:                                    ; preds = %switch.next24
  %14 = icmp eq i8 %k, 14, !dbg !2863
  br i1 %14, label %switch.body27, label %switch.next28, !dbg !2835

switch.body27:                                    ; preds = %switch.next26
  ret %runtime._string { ptr @"internal/reflectlite$string.55", i64 7 }, !dbg !2864

switch.next28:                                    ; preds = %switch.next26
  %15 = icmp eq i8 %k, 15, !dbg !2865
  br i1 %15, label %switch.body29, label %switch.next30, !dbg !2835

switch.body29:                                    ; preds = %switch.next28
  ret %runtime._string { ptr @"internal/reflectlite$string.56", i64 9 }, !dbg !2866

switch.next30:                                    ; preds = %switch.next28
  %16 = icmp eq i8 %k, 16, !dbg !2867
  br i1 %16, label %switch.body31, label %switch.next32, !dbg !2835

switch.body31:                                    ; preds = %switch.next30
  ret %runtime._string { ptr @"internal/reflectlite$string.57", i64 10 }, !dbg !2868

switch.next32:                                    ; preds = %switch.next30
  %17 = icmp eq i8 %k, 17, !dbg !2869
  br i1 %17, label %switch.body33, label %switch.next34, !dbg !2835

switch.body33:                                    ; preds = %switch.next32
  ret %runtime._string { ptr @"internal/reflectlite$string.58", i64 6 }, !dbg !2870

switch.next34:                                    ; preds = %switch.next32
  %18 = icmp eq i8 %k, 18, !dbg !2871
  br i1 %18, label %switch.body35, label %switch.next36, !dbg !2835

switch.body35:                                    ; preds = %switch.next34
  ret %runtime._string { ptr @"internal/reflectlite$string.59", i64 14 }, !dbg !2872

switch.next36:                                    ; preds = %switch.next34
  %19 = icmp eq i8 %k, 19, !dbg !2873
  br i1 %19, label %switch.body37, label %switch.next38, !dbg !2835

switch.body37:                                    ; preds = %switch.next36
  ret %runtime._string { ptr @"internal/reflectlite$string.60", i64 4 }, !dbg !2874

switch.next38:                                    ; preds = %switch.next36
  %20 = icmp eq i8 %k, 20, !dbg !2875
  br i1 %20, label %switch.body39, label %switch.next40, !dbg !2835

switch.body39:                                    ; preds = %switch.next38
  ret %runtime._string { ptr @"internal/reflectlite$string.61", i64 9 }, !dbg !2876

switch.next40:                                    ; preds = %switch.next38
  %21 = icmp eq i8 %k, 21, !dbg !2877
  br i1 %21, label %switch.body41, label %switch.next42, !dbg !2835

switch.body41:                                    ; preds = %switch.next40
  ret %runtime._string { ptr @"internal/reflectlite$string.62", i64 3 }, !dbg !2878

switch.next42:                                    ; preds = %switch.next40
  %22 = icmp eq i8 %k, 22, !dbg !2879
  br i1 %22, label %switch.body43, label %switch.next44, !dbg !2835

switch.body43:                                    ; preds = %switch.next42
  ret %runtime._string { ptr @"internal/reflectlite$string.63", i64 5 }, !dbg !2880

switch.next44:                                    ; preds = %switch.next42
  %23 = icmp eq i8 %k, 23, !dbg !2881
  br i1 %23, label %switch.body45, label %switch.next46, !dbg !2835

switch.body45:                                    ; preds = %switch.next44
  ret %runtime._string { ptr @"internal/reflectlite$string.64", i64 5 }, !dbg !2882

switch.next46:                                    ; preds = %switch.next44
  %24 = icmp eq i8 %k, 24, !dbg !2883
  br i1 %24, label %switch.body47, label %switch.next48, !dbg !2835

switch.body47:                                    ; preds = %switch.next46
  ret %runtime._string { ptr @"internal/reflectlite$string.65", i64 4 }, !dbg !2884

switch.next48:                                    ; preds = %switch.next46
  %25 = icmp eq i8 %k, 25, !dbg !2885
  br i1 %25, label %switch.body49, label %switch.next50, !dbg !2835

switch.body49:                                    ; preds = %switch.next48
  ret %runtime._string { ptr @"internal/reflectlite$string.66", i64 3 }, !dbg !2886

switch.next50:                                    ; preds = %switch.next48
  %26 = icmp eq i8 %k, 26, !dbg !2887
  br i1 %26, label %switch.body51, label %switch.next52, !dbg !2835

switch.body51:                                    ; preds = %switch.next50
  ret %runtime._string { ptr @"internal/reflectlite$string.67", i64 6 }, !dbg !2888

switch.next52:                                    ; preds = %switch.next50
    #dbg_value(i8 %k, !2831, !DIExpression(), !2889)
  %27 = sext i8 %k to i64, !dbg !2890
  %28 = call %runtime._string @"internal/itoa.Itoa"(i64 %27, ptr undef), !dbg !2891
  %29 = extractvalue %runtime._string %28, 0, !dbg !2892
  %30 = extractvalue %runtime._string %28, 1, !dbg !2892
  %31 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.68", i64 4, ptr %29, i64 %30, ptr undef), !dbg !2892
  ret %runtime._string %31, !dbg !2893
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/reflectlite.quote"(ptr readonly %s.data, i64 %s.len, ptr %context) unnamed_addr #1 !dbg !2894 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !2900
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !2900
    #dbg_value(ptr %s.data, !2896, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2900)
    #dbg_value(i64 %s.len, !2896, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2900)
    #dbg_value(%runtime._string %1, !2896, !DIExpression(), !2901)
  %len = extractvalue %runtime._string %1, 1, !dbg !2902
  %2 = mul i64 3, %len, !dbg !2903
  %3 = icmp eq i64 %2, -9223372036854775808, !dbg !2904
  %4 = and i1 false, %3, !dbg !2904
  %5 = select i1 %4, i64 1, i64 2, !dbg !2904
  %6 = sdiv i64 %2, %5, !dbg !2904
  %slice.lowhigh = icmp ugt i64 0, %6, !dbg !2905
  %slice.highmax = icmp ugt i64 %6, %6, !dbg !2905
  %slice.maxcap = icmp ugt i64 %6, 9223372036854775807, !dbg !2905
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2905
  %slice.lowcap = or i1 %slice.lowmax, %slice.maxcap, !dbg !2905
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2905

slice.next:                                       ; preds = %entry
  %makeslice.cap = mul i64 1, %6, !dbg !2905
  %makeslice.buf = call align 1 ptr @runtime.alloc(i64 %makeslice.cap, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2905
  %7 = insertvalue { ptr, i64, i64 } undef, ptr %makeslice.buf, 0, !dbg !2905
  %8 = insertvalue { ptr, i64, i64 } %7, i64 0, 1, !dbg !2905
  %9 = insertvalue { ptr, i64, i64 } %8, i64 %6, 2, !dbg !2905
    #dbg_value({ ptr, i64, i64 } %9, !2897, !DIExpression(), !2906)
    #dbg_value({ ptr, i64, i64 } %9, !2897, !DIExpression(), !2907)
  %varargs = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2908
  %10 = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2908
  store i8 34, ptr %10, align 1, !dbg !2908
  %slice.ptr = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2908
  %11 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !2908
  %12 = insertvalue { ptr, i64, i64 } %11, i64 1, 1, !dbg !2908
  %13 = insertvalue { ptr, i64, i64 } %12, i64 1, 2, !dbg !2908
  %append.srcBuf = extractvalue { ptr, i64, i64 } %9, 0, !dbg !2909
  %append.srcLen = extractvalue { ptr, i64, i64 } %9, 1, !dbg !2909
  %append.srcCap = extractvalue { ptr, i64, i64 } %9, 2, !dbg !2909
  %append.elemsBuf = extractvalue { ptr, i64, i64 } %13, 0, !dbg !2909
  %append.elemsLen = extractvalue { ptr, i64, i64 } %13, 1, !dbg !2909
  %append.new = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf, ptr %append.elemsBuf, i64 %append.srcLen, i64 %append.srcCap, i64 %append.elemsLen, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2909
  %append.newPtr = extractvalue { ptr, i64, i64 } %append.new, 0, !dbg !2909
  %append.newLen = extractvalue { ptr, i64, i64 } %append.new, 1, !dbg !2909
  %append.newCap = extractvalue { ptr, i64, i64 } %append.new, 2, !dbg !2909
  %14 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr, 0, !dbg !2909
  %15 = insertvalue { ptr, i64, i64 } %14, i64 %append.newLen, 1, !dbg !2909
  %16 = insertvalue { ptr, i64, i64 } %15, i64 %append.newCap, 2, !dbg !2909
    #dbg_value({ ptr, i64, i64 } %16, !2897, !DIExpression(), !2910)
    #dbg_value(i64 0, !2898, !DIExpression(), !2911)
  br label %for.loop, !dbg !2912

for.loop:                                         ; preds = %slice.next50, %slice.next
  %17 = phi %runtime._string [ %1, %slice.next ], [ %76, %slice.next50 ], !dbg !2913
  %18 = phi { ptr, i64, i64 } [ %16, %slice.next ], [ %70, %slice.next50 ], !dbg !2906
    #dbg_value(%runtime._string %17, !2896, !DIExpression(), !2914)
  %len3 = extractvalue %runtime._string %17, 1, !dbg !2915
  %19 = icmp sgt i64 %len3, 0, !dbg !2916
  br i1 %19, label %for.body, label %for.done, !dbg !2912

for.body:                                         ; preds = %for.loop
    #dbg_value(%runtime._string %17, !2896, !DIExpression(), !2917)
  %len4 = extractvalue %runtime._string %17, 1, !dbg !2918
  %20 = icmp uge i64 0, %len4, !dbg !2918
  br i1 %20, label %lookup.throw, label %lookup.next, !dbg !2918

lookup.next:                                      ; preds = %for.body
  %21 = extractvalue %runtime._string %17, 0, !dbg !2918
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !2918
  %23 = load i8, ptr %22, align 1, !dbg !2918
  %24 = zext i8 %23 to i32, !dbg !2919
    #dbg_value(i32 %24, !2899, !DIExpression(), !2920)
    #dbg_value(i64 1, !2898, !DIExpression(), !2921)
    #dbg_value(i32 %24, !2899, !DIExpression(), !2922)
  %25 = icmp sge i32 %24, 128, !dbg !2923
  br i1 %25, label %if.then, label %if.done, !dbg !2912

if.then:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %17, !2896, !DIExpression(), !2924)
  %26 = extractvalue %runtime._string %17, 0, !dbg !2925
  %27 = extractvalue %runtime._string %17, 1, !dbg !2925
  %28 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(ptr %26, i64 %27, ptr undef), !dbg !2925
  %29 = extractvalue { i32, i64 } %28, 0, !dbg !2925
    #dbg_value(i32 %29, !2899, !DIExpression(), !2926)
  %30 = extractvalue { i32, i64 } %28, 1, !dbg !2925
    #dbg_value(i64 %30, !2898, !DIExpression(), !2927)
  br label %if.done, !dbg !2912

if.done:                                          ; preds = %if.then, %lookup.next
  %31 = phi i64 [ 1, %lookup.next ], [ %30, %if.then ], !dbg !2911
  %32 = phi i32 [ %24, %lookup.next ], [ %29, %if.then ], !dbg !2920
    #dbg_value(i64 %31, !2898, !DIExpression(), !2928)
  %33 = icmp eq i64 %31, 1, !dbg !2929
  br i1 %33, label %cond.true, label %if.done2, !dbg !2912

cond.true:                                        ; preds = %if.done
    #dbg_value(i32 %32, !2899, !DIExpression(), !2930)
  %34 = icmp eq i32 %32, 65533, !dbg !2931
  br i1 %34, label %if.then1, label %if.done2, !dbg !2912

if.then1:                                         ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } %18, !2897, !DIExpression(), !2932)
  %append.srcBuf5 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2933
  %append.srcLen6 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2933
  %append.srcCap7 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2933
  %append.new8 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf5, ptr @"internal/reflectlite$string.20", i64 %append.srcLen6, i64 %append.srcCap7, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2933
  %append.newPtr9 = extractvalue { ptr, i64, i64 } %append.new8, 0, !dbg !2933
  %append.newLen10 = extractvalue { ptr, i64, i64 } %append.new8, 1, !dbg !2933
  %append.newCap11 = extractvalue { ptr, i64, i64 } %append.new8, 2, !dbg !2933
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr9, 0, !dbg !2933
  %36 = insertvalue { ptr, i64, i64 } %35, i64 %append.newLen10, 1, !dbg !2933
  %37 = insertvalue { ptr, i64, i64 } %36, i64 %append.newCap11, 2, !dbg !2933
    #dbg_value({ ptr, i64, i64 } %37, !2897, !DIExpression(), !2934)
    #dbg_value({ ptr, i64, i64 } %37, !2897, !DIExpression(), !2935)
    #dbg_value(%runtime._string %17, !2896, !DIExpression(), !2936)
  %len12 = extractvalue %runtime._string %17, 1, !dbg !2937
  %38 = icmp uge i64 0, %len12, !dbg !2937
  br i1 %38, label %lookup.throw13, label %lookup.next14, !dbg !2937

lookup.next14:                                    ; preds = %if.then1
  %39 = extractvalue %runtime._string %17, 0, !dbg !2937
  %40 = getelementptr inbounds i8, ptr %39, i64 0, !dbg !2937
  %41 = load i8, ptr %40, align 1, !dbg !2937
  %42 = lshr i8 %41, 4, !dbg !2938
  %shift.result = select i1 false, i8 0, i8 %42, !dbg !2938
  %43 = zext i8 %shift.result to i64, !dbg !2939
  %44 = icmp uge i64 %43, 15, !dbg !2939
  br i1 %44, label %lookup.throw15, label %lookup.next16, !dbg !2939

lookup.next16:                                    ; preds = %lookup.next14
  %45 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.21", i64 %43, !dbg !2939
  %46 = load i8, ptr %45, align 1, !dbg !2939
  %varargs17 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2940
  %47 = getelementptr inbounds [1 x i8], ptr %varargs17, i32 0, i64 0, !dbg !2940
  store i8 %46, ptr %47, align 1, !dbg !2939
  %slice.ptr18 = getelementptr inbounds [1 x i8], ptr %varargs17, i32 0, i64 0, !dbg !2940
  %48 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr18, 0, !dbg !2940
  %49 = insertvalue { ptr, i64, i64 } %48, i64 1, 1, !dbg !2940
  %50 = insertvalue { ptr, i64, i64 } %49, i64 1, 2, !dbg !2940
  %append.srcBuf19 = extractvalue { ptr, i64, i64 } %37, 0, !dbg !2941
  %append.srcLen20 = extractvalue { ptr, i64, i64 } %37, 1, !dbg !2941
  %append.srcCap21 = extractvalue { ptr, i64, i64 } %37, 2, !dbg !2941
  %append.elemsBuf22 = extractvalue { ptr, i64, i64 } %50, 0, !dbg !2941
  %append.elemsLen23 = extractvalue { ptr, i64, i64 } %50, 1, !dbg !2941
  %append.new24 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf19, ptr %append.elemsBuf22, i64 %append.srcLen20, i64 %append.srcCap21, i64 %append.elemsLen23, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2941
  %append.newPtr25 = extractvalue { ptr, i64, i64 } %append.new24, 0, !dbg !2941
  %append.newLen26 = extractvalue { ptr, i64, i64 } %append.new24, 1, !dbg !2941
  %append.newCap27 = extractvalue { ptr, i64, i64 } %append.new24, 2, !dbg !2941
  %51 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr25, 0, !dbg !2941
  %52 = insertvalue { ptr, i64, i64 } %51, i64 %append.newLen26, 1, !dbg !2941
  %53 = insertvalue { ptr, i64, i64 } %52, i64 %append.newCap27, 2, !dbg !2941
    #dbg_value({ ptr, i64, i64 } %53, !2897, !DIExpression(), !2942)
    #dbg_value({ ptr, i64, i64 } %53, !2897, !DIExpression(), !2943)
    #dbg_value(%runtime._string %17, !2896, !DIExpression(), !2944)
  %len28 = extractvalue %runtime._string %17, 1, !dbg !2945
  %54 = icmp uge i64 0, %len28, !dbg !2945
  br i1 %54, label %lookup.throw29, label %lookup.next30, !dbg !2945

lookup.next30:                                    ; preds = %lookup.next16
  %55 = extractvalue %runtime._string %17, 0, !dbg !2945
  %56 = getelementptr inbounds i8, ptr %55, i64 0, !dbg !2945
  %57 = load i8, ptr %56, align 1, !dbg !2945
  %58 = and i8 %57, 15, !dbg !2946
  %59 = zext i8 %58 to i64, !dbg !2947
  %60 = icmp uge i64 %59, 15, !dbg !2947
  br i1 %60, label %lookup.throw31, label %lookup.next32, !dbg !2947

lookup.next32:                                    ; preds = %lookup.next30
  %61 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.22", i64 %59, !dbg !2947
  %62 = load i8, ptr %61, align 1, !dbg !2947
  %varargs33 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2948
  %63 = getelementptr inbounds [1 x i8], ptr %varargs33, i32 0, i64 0, !dbg !2948
  store i8 %62, ptr %63, align 1, !dbg !2947
  %slice.ptr34 = getelementptr inbounds [1 x i8], ptr %varargs33, i32 0, i64 0, !dbg !2948
  %64 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr34, 0, !dbg !2948
  %65 = insertvalue { ptr, i64, i64 } %64, i64 1, 1, !dbg !2948
  %66 = insertvalue { ptr, i64, i64 } %65, i64 1, 2, !dbg !2948
  %append.srcBuf35 = extractvalue { ptr, i64, i64 } %53, 0, !dbg !2949
  %append.srcLen36 = extractvalue { ptr, i64, i64 } %53, 1, !dbg !2949
  %append.srcCap37 = extractvalue { ptr, i64, i64 } %53, 2, !dbg !2949
  %append.elemsBuf38 = extractvalue { ptr, i64, i64 } %66, 0, !dbg !2949
  %append.elemsLen39 = extractvalue { ptr, i64, i64 } %66, 1, !dbg !2949
  %append.new40 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf35, ptr %append.elemsBuf38, i64 %append.srcLen36, i64 %append.srcCap37, i64 %append.elemsLen39, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2949
  %append.newPtr41 = extractvalue { ptr, i64, i64 } %append.new40, 0, !dbg !2949
  %append.newLen42 = extractvalue { ptr, i64, i64 } %append.new40, 1, !dbg !2949
  %append.newCap43 = extractvalue { ptr, i64, i64 } %append.new40, 2, !dbg !2949
  %67 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr41, 0, !dbg !2949
  %68 = insertvalue { ptr, i64, i64 } %67, i64 %append.newLen42, 1, !dbg !2949
  %69 = insertvalue { ptr, i64, i64 } %68, i64 %append.newCap43, 2, !dbg !2949
    #dbg_value({ ptr, i64, i64 } %69, !2897, !DIExpression(), !2950)
  br label %for.post, !dbg !2912

for.post:                                         ; preds = %if.done2, %lookup.next32
  %70 = phi { ptr, i64, i64 } [ %69, %lookup.next32 ], [ %80, %if.done2 ], !dbg !2906
    #dbg_value(%runtime._string %17, !2896, !DIExpression(), !2951)
    #dbg_value(i64 %31, !2898, !DIExpression(), !2952)
  %71 = extractvalue %runtime._string %17, 0, !dbg !2953
  %72 = extractvalue %runtime._string %17, 1, !dbg !2953
  %slice.lowhigh44 = icmp ugt i64 %31, %72, !dbg !2953
  %slice.highmax45 = icmp ugt i64 %72, %72, !dbg !2953
  %slice.maxcap46 = icmp ugt i64 %72, %72, !dbg !2953
  %slice.lowmax47 = or i1 %slice.lowhigh44, %slice.highmax45, !dbg !2953
  %slice.lowcap48 = or i1 %slice.lowmax47, %slice.maxcap46, !dbg !2953
  br i1 %slice.lowcap48, label %slice.throw49, label %slice.next50, !dbg !2953

slice.next50:                                     ; preds = %for.post
  %73 = getelementptr inbounds i8, ptr %71, i64 %31, !dbg !2953
  %74 = sub i64 %72, %31, !dbg !2953
  %75 = insertvalue %runtime._string undef, ptr %73, 0, !dbg !2953
  %76 = insertvalue %runtime._string %75, i64 %74, 1, !dbg !2953
    #dbg_value(%runtime._string %76, !2896, !DIExpression(), !2954)
  br label %for.loop, !dbg !2912

if.done2:                                         ; preds = %cond.true, %if.done
    #dbg_value({ ptr, i64, i64 } %18, !2897, !DIExpression(), !2955)
    #dbg_value(i32 %32, !2899, !DIExpression(), !2956)
  %77 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2957
  %78 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2957
  %79 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2957
  %80 = call { ptr, i64, i64 } @"internal/reflectlite.appendEscapedRune"(ptr %77, i64 %78, i64 %79, i32 %32, ptr undef), !dbg !2957
    #dbg_value({ ptr, i64, i64 } %80, !2897, !DIExpression(), !2958)
  br label %for.post, !dbg !2912

for.done:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %18, !2897, !DIExpression(), !2959)
  %varargs51 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2960
  %81 = getelementptr inbounds [1 x i8], ptr %varargs51, i32 0, i64 0, !dbg !2960
  store i8 34, ptr %81, align 1, !dbg !2960
  %slice.ptr52 = getelementptr inbounds [1 x i8], ptr %varargs51, i32 0, i64 0, !dbg !2960
  %82 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr52, 0, !dbg !2960
  %83 = insertvalue { ptr, i64, i64 } %82, i64 1, 1, !dbg !2960
  %84 = insertvalue { ptr, i64, i64 } %83, i64 1, 2, !dbg !2960
  %append.srcBuf53 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2961
  %append.srcLen54 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2961
  %append.srcCap55 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2961
  %append.elemsBuf56 = extractvalue { ptr, i64, i64 } %84, 0, !dbg !2961
  %append.elemsLen57 = extractvalue { ptr, i64, i64 } %84, 1, !dbg !2961
  %append.new58 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf53, ptr %append.elemsBuf56, i64 %append.srcLen54, i64 %append.srcCap55, i64 %append.elemsLen57, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2961
  %append.newPtr59 = extractvalue { ptr, i64, i64 } %append.new58, 0, !dbg !2961
  %append.newLen60 = extractvalue { ptr, i64, i64 } %append.new58, 1, !dbg !2961
  %append.newCap61 = extractvalue { ptr, i64, i64 } %append.new58, 2, !dbg !2961
  %85 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr59, 0, !dbg !2961
  %86 = insertvalue { ptr, i64, i64 } %85, i64 %append.newLen60, 1, !dbg !2961
  %87 = insertvalue { ptr, i64, i64 } %86, i64 %append.newCap61, 2, !dbg !2961
    #dbg_value({ ptr, i64, i64 } %87, !2897, !DIExpression(), !2962)
    #dbg_value({ ptr, i64, i64 } %87, !2897, !DIExpression(), !2963)
  %88 = extractvalue { ptr, i64, i64 } %87, 0, !dbg !2964
  %89 = extractvalue { ptr, i64, i64 } %87, 1, !dbg !2964
  %90 = extractvalue { ptr, i64, i64 } %87, 2, !dbg !2964
  %91 = call %runtime._string @runtime.stringFromBytes(ptr %88, i64 %89, i64 %90, ptr undef), !dbg !2964
  ret %runtime._string %91, !dbg !2965

slice.throw:                                      ; preds = %entry
  call void @runtime.slicePanic(ptr undef), !dbg !2905
  unreachable, !dbg !2905

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2918
  unreachable, !dbg !2918

lookup.throw13:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !2937
  unreachable, !dbg !2937

lookup.throw15:                                   ; preds = %lookup.next14
  call void @runtime.lookupPanic(ptr undef), !dbg !2939
  unreachable, !dbg !2939

lookup.throw29:                                   ; preds = %lookup.next16
  call void @runtime.lookupPanic(ptr undef), !dbg !2945
  unreachable, !dbg !2945

lookup.throw31:                                   ; preds = %lookup.next30
  call void @runtime.lookupPanic(ptr undef), !dbg !2947
  unreachable, !dbg !2947

slice.throw49:                                    ; preds = %for.post
  call void @runtime.slicePanic(ptr undef), !dbg !2953
  unreachable, !dbg !2953
}

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @"internal/reflectlite.appendEscapedRune"(ptr %buf.data, i64 %buf.len, i64 %buf.cap, i32 %r, ptr %context) unnamed_addr #1 !dbg !2966 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %buf.data, 0, !dbg !2973
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %buf.len, 1, !dbg !2973
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %buf.cap, 2, !dbg !2973
    #dbg_value(ptr %buf.data, !2968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2973)
    #dbg_value(i64 %buf.len, !2968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2973)
    #dbg_value(i64 %buf.cap, !2968, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2973)
    #dbg_value(i32 %r, !2969, !DIExpression(), !2973)
  %runeTmp = call align 1 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2974
    #dbg_value(i32 %r, !2969, !DIExpression(), !2975)
  %3 = icmp eq i32 %r, 34, !dbg !2976
  br i1 %3, label %if.then, label %cond.false, !dbg !2977

if.then:                                          ; preds = %cond.false, %entry
    #dbg_value({ ptr, i64, i64 } %2, !2968, !DIExpression(), !2978)
  %varargs = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2979
  %4 = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2979
  store i8 92, ptr %4, align 1, !dbg !2979
  %slice.ptr = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2979
  %5 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !2979
  %6 = insertvalue { ptr, i64, i64 } %5, i64 1, 1, !dbg !2979
  %7 = insertvalue { ptr, i64, i64 } %6, i64 1, 2, !dbg !2979
  %append.srcBuf = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2980
  %append.srcLen = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2980
  %append.srcCap = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2980
  %append.elemsBuf = extractvalue { ptr, i64, i64 } %7, 0, !dbg !2980
  %append.elemsLen = extractvalue { ptr, i64, i64 } %7, 1, !dbg !2980
  %append.new = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf, ptr %append.elemsBuf, i64 %append.srcLen, i64 %append.srcCap, i64 %append.elemsLen, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2980
  %append.newPtr = extractvalue { ptr, i64, i64 } %append.new, 0, !dbg !2980
  %append.newLen = extractvalue { ptr, i64, i64 } %append.new, 1, !dbg !2980
  %append.newCap = extractvalue { ptr, i64, i64 } %append.new, 2, !dbg !2980
  %8 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr, 0, !dbg !2980
  %9 = insertvalue { ptr, i64, i64 } %8, i64 %append.newLen, 1, !dbg !2980
  %10 = insertvalue { ptr, i64, i64 } %9, i64 %append.newCap, 2, !dbg !2980
    #dbg_value({ ptr, i64, i64 } %10, !2968, !DIExpression(), !2981)
    #dbg_value({ ptr, i64, i64 } %10, !2968, !DIExpression(), !2982)
    #dbg_value(i32 %r, !2969, !DIExpression(), !2983)
  %11 = trunc i32 %r to i8, !dbg !2984
  %varargs23 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2985
  %12 = getelementptr inbounds [1 x i8], ptr %varargs23, i32 0, i64 0, !dbg !2985
  store i8 %11, ptr %12, align 1, !dbg !2984
  %slice.ptr24 = getelementptr inbounds [1 x i8], ptr %varargs23, i32 0, i64 0, !dbg !2985
  %13 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr24, 0, !dbg !2985
  %14 = insertvalue { ptr, i64, i64 } %13, i64 1, 1, !dbg !2985
  %15 = insertvalue { ptr, i64, i64 } %14, i64 1, 2, !dbg !2985
  %append.srcBuf25 = extractvalue { ptr, i64, i64 } %10, 0, !dbg !2986
  %append.srcLen26 = extractvalue { ptr, i64, i64 } %10, 1, !dbg !2986
  %append.srcCap27 = extractvalue { ptr, i64, i64 } %10, 2, !dbg !2986
  %append.elemsBuf28 = extractvalue { ptr, i64, i64 } %15, 0, !dbg !2986
  %append.elemsLen29 = extractvalue { ptr, i64, i64 } %15, 1, !dbg !2986
  %append.new30 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf25, ptr %append.elemsBuf28, i64 %append.srcLen26, i64 %append.srcCap27, i64 %append.elemsLen29, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2986
  %append.newPtr31 = extractvalue { ptr, i64, i64 } %append.new30, 0, !dbg !2986
  %append.newLen32 = extractvalue { ptr, i64, i64 } %append.new30, 1, !dbg !2986
  %append.newCap33 = extractvalue { ptr, i64, i64 } %append.new30, 2, !dbg !2986
  %16 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr31, 0, !dbg !2986
  %17 = insertvalue { ptr, i64, i64 } %16, i64 %append.newLen32, 1, !dbg !2986
  %18 = insertvalue { ptr, i64, i64 } %17, i64 %append.newCap33, 2, !dbg !2986
    #dbg_value({ ptr, i64, i64 } %18, !2968, !DIExpression(), !2987)
    #dbg_value({ ptr, i64, i64 } %18, !2968, !DIExpression(), !2988)
  ret { ptr, i64, i64 } %18, !dbg !2989

cond.false:                                       ; preds = %entry
    #dbg_value(i32 %r, !2969, !DIExpression(), !2990)
  %19 = icmp eq i32 %r, 92, !dbg !2991
  br i1 %19, label %if.then, label %if.done, !dbg !2977

if.done:                                          ; preds = %cond.false
    #dbg_value(i32 %r, !2969, !DIExpression(), !2992)
  %20 = call i1 @"internal/reflectlite.isPrint"(i32 %r, ptr undef), !dbg !2993
  br i1 %20, label %if.then1, label %if.done2, !dbg !2977

if.then1:                                         ; preds = %if.done
  %slice.ptr34 = getelementptr inbounds [4 x i8], ptr %runeTmp, i32 0, i64 0, !dbg !2994
  %21 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr34, 0, !dbg !2994
  %22 = insertvalue { ptr, i64, i64 } %21, i64 4, 1, !dbg !2994
  %23 = insertvalue { ptr, i64, i64 } %22, i64 4, 2, !dbg !2994
    #dbg_value(i32 %r, !2969, !DIExpression(), !2995)
  %24 = extractvalue { ptr, i64, i64 } %23, 0, !dbg !2996
  %25 = extractvalue { ptr, i64, i64 } %23, 1, !dbg !2996
  %26 = extractvalue { ptr, i64, i64 } %23, 2, !dbg !2996
  %27 = call i64 @"unicode/utf8.EncodeRune"(ptr %24, i64 %25, i64 %26, i32 %r, ptr undef), !dbg !2996
    #dbg_value(i64 %27, !2970, !DIExpression(), !2997)
    #dbg_value({ ptr, i64, i64 } %2, !2968, !DIExpression(), !2998)
    #dbg_value(i64 %27, !2970, !DIExpression(), !2999)
  %slice.lowhigh = icmp ugt i64 0, %27, !dbg !3000
  %slice.highmax = icmp ugt i64 %27, 4, !dbg !3000
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !3000
  %slice.lowcap = or i1 %slice.lowmax, false, !dbg !3000
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !3000

slice.next:                                       ; preds = %if.then1
  %slice.len = sub i64 %27, 0, !dbg !3000
  %slice.ptr35 = getelementptr inbounds [4 x i8], ptr %runeTmp, i32 0, i64 0, !dbg !3000
  %28 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr35, 0, !dbg !3000
  %29 = insertvalue { ptr, i64, i64 } %28, i64 %slice.len, 1, !dbg !3000
  %30 = insertvalue { ptr, i64, i64 } %29, i64 4, 2, !dbg !3000
  %append.srcBuf36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3001
  %append.srcLen37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3001
  %append.srcCap38 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3001
  %append.elemsBuf39 = extractvalue { ptr, i64, i64 } %30, 0, !dbg !3001
  %append.elemsLen40 = extractvalue { ptr, i64, i64 } %30, 1, !dbg !3001
  %append.new41 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf36, ptr %append.elemsBuf39, i64 %append.srcLen37, i64 %append.srcCap38, i64 %append.elemsLen40, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3001
  %append.newPtr42 = extractvalue { ptr, i64, i64 } %append.new41, 0, !dbg !3001
  %append.newLen43 = extractvalue { ptr, i64, i64 } %append.new41, 1, !dbg !3001
  %append.newCap44 = extractvalue { ptr, i64, i64 } %append.new41, 2, !dbg !3001
  %31 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr42, 0, !dbg !3001
  %32 = insertvalue { ptr, i64, i64 } %31, i64 %append.newLen43, 1, !dbg !3001
  %33 = insertvalue { ptr, i64, i64 } %32, i64 %append.newCap44, 2, !dbg !3001
    #dbg_value({ ptr, i64, i64 } %33, !2968, !DIExpression(), !3002)
    #dbg_value({ ptr, i64, i64 } %33, !2968, !DIExpression(), !3003)
  ret { ptr, i64, i64 } %33, !dbg !3004

if.done2:                                         ; preds = %if.done
    #dbg_value(i32 %r, !2969, !DIExpression(), !3005)
  %34 = icmp eq i32 %r, 7, !dbg !3006
  br i1 %34, label %switch.body, label %switch.next, !dbg !2977

switch.body:                                      ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } %2, !2968, !DIExpression(), !3007)
  %append.srcBuf45 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3008
  %append.srcLen46 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3008
  %append.srcCap47 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3008
  %append.new48 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf45, ptr @"internal/reflectlite$string.23", i64 %append.srcLen46, i64 %append.srcCap47, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3008
  %append.newPtr49 = extractvalue { ptr, i64, i64 } %append.new48, 0, !dbg !3008
  %append.newLen50 = extractvalue { ptr, i64, i64 } %append.new48, 1, !dbg !3008
  %append.newCap51 = extractvalue { ptr, i64, i64 } %append.new48, 2, !dbg !3008
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr49, 0, !dbg !3008
  %36 = insertvalue { ptr, i64, i64 } %35, i64 %append.newLen50, 1, !dbg !3008
  %37 = insertvalue { ptr, i64, i64 } %36, i64 %append.newCap51, 2, !dbg !3008
    #dbg_value({ ptr, i64, i64 } %37, !2968, !DIExpression(), !3009)
  br label %switch.done, !dbg !2977

switch.done:                                      ; preds = %for.loop21, %for.loop, %lookup.next113, %switch.body13, %switch.body11, %switch.body9, %switch.body7, %switch.body5, %switch.body3, %switch.body
  %38 = phi { ptr, i64, i64 } [ %37, %switch.body ], [ %42, %switch.body3 ], [ %46, %switch.body5 ], [ %50, %switch.body7 ], [ %54, %switch.body9 ], [ %58, %switch.body11 ], [ %62, %switch.body13 ], [ %93, %lookup.next113 ], [ %100, %for.loop ], [ %122, %for.loop21 ], !dbg !3010
    #dbg_value({ ptr, i64, i64 } %38, !2968, !DIExpression(), !3011)
  ret { ptr, i64, i64 } %38, !dbg !3012

switch.next:                                      ; preds = %if.done2
  %39 = icmp eq i32 %r, 8, !dbg !3013
  br i1 %39, label %switch.body3, label %switch.next4, !dbg !2977

switch.body3:                                     ; preds = %switch.next
    #dbg_value({ ptr, i64, i64 } %2, !2968, !DIExpression(), !3014)
  %append.srcBuf52 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3015
  %append.srcLen53 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3015
  %append.srcCap54 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3015
  %append.new55 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf52, ptr @"internal/reflectlite$string.24", i64 %append.srcLen53, i64 %append.srcCap54, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3015
  %append.newPtr56 = extractvalue { ptr, i64, i64 } %append.new55, 0, !dbg !3015
  %append.newLen57 = extractvalue { ptr, i64, i64 } %append.new55, 1, !dbg !3015
  %append.newCap58 = extractvalue { ptr, i64, i64 } %append.new55, 2, !dbg !3015
  %40 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr56, 0, !dbg !3015
  %41 = insertvalue { ptr, i64, i64 } %40, i64 %append.newLen57, 1, !dbg !3015
  %42 = insertvalue { ptr, i64, i64 } %41, i64 %append.newCap58, 2, !dbg !3015
    #dbg_value({ ptr, i64, i64 } %42, !2968, !DIExpression(), !3016)
  br label %switch.done, !dbg !2977

switch.next4:                                     ; preds = %switch.next
  %43 = icmp eq i32 %r, 12, !dbg !3017
  br i1 %43, label %switch.body5, label %switch.next6, !dbg !2977

switch.body5:                                     ; preds = %switch.next4
    #dbg_value({ ptr, i64, i64 } %2, !2968, !DIExpression(), !3018)
  %append.srcBuf59 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3019
  %append.srcLen60 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3019
  %append.srcCap61 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3019
  %append.new62 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf59, ptr @"internal/reflectlite$string.25", i64 %append.srcLen60, i64 %append.srcCap61, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3019
  %append.newPtr63 = extractvalue { ptr, i64, i64 } %append.new62, 0, !dbg !3019
  %append.newLen64 = extractvalue { ptr, i64, i64 } %append.new62, 1, !dbg !3019
  %append.newCap65 = extractvalue { ptr, i64, i64 } %append.new62, 2, !dbg !3019
  %44 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr63, 0, !dbg !3019
  %45 = insertvalue { ptr, i64, i64 } %44, i64 %append.newLen64, 1, !dbg !3019
  %46 = insertvalue { ptr, i64, i64 } %45, i64 %append.newCap65, 2, !dbg !3019
    #dbg_value({ ptr, i64, i64 } %46, !2968, !DIExpression(), !3020)
  br label %switch.done, !dbg !2977

switch.next6:                                     ; preds = %switch.next4
  %47 = icmp eq i32 %r, 10, !dbg !3021
  br i1 %47, label %switch.body7, label %switch.next8, !dbg !2977

switch.body7:                                     ; preds = %switch.next6
    #dbg_value({ ptr, i64, i64 } %2, !2968, !DIExpression(), !3022)
  %append.srcBuf66 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3023
  %append.srcLen67 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3023
  %append.srcCap68 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3023
  %append.new69 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf66, ptr @"internal/reflectlite$string.26", i64 %append.srcLen67, i64 %append.srcCap68, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3023
  %append.newPtr70 = extractvalue { ptr, i64, i64 } %append.new69, 0, !dbg !3023
  %append.newLen71 = extractvalue { ptr, i64, i64 } %append.new69, 1, !dbg !3023
  %append.newCap72 = extractvalue { ptr, i64, i64 } %append.new69, 2, !dbg !3023
  %48 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr70, 0, !dbg !3023
  %49 = insertvalue { ptr, i64, i64 } %48, i64 %append.newLen71, 1, !dbg !3023
  %50 = insertvalue { ptr, i64, i64 } %49, i64 %append.newCap72, 2, !dbg !3023
    #dbg_value({ ptr, i64, i64 } %50, !2968, !DIExpression(), !3024)
  br label %switch.done, !dbg !2977

switch.next8:                                     ; preds = %switch.next6
  %51 = icmp eq i32 %r, 13, !dbg !3025
  br i1 %51, label %switch.body9, label %switch.next10, !dbg !2977

switch.body9:                                     ; preds = %switch.next8
    #dbg_value({ ptr, i64, i64 } %2, !2968, !DIExpression(), !3026)
  %append.srcBuf73 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3027
  %append.srcLen74 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3027
  %append.srcCap75 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3027
  %append.new76 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf73, ptr @"internal/reflectlite$string.27", i64 %append.srcLen74, i64 %append.srcCap75, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3027
  %append.newPtr77 = extractvalue { ptr, i64, i64 } %append.new76, 0, !dbg !3027
  %append.newLen78 = extractvalue { ptr, i64, i64 } %append.new76, 1, !dbg !3027
  %append.newCap79 = extractvalue { ptr, i64, i64 } %append.new76, 2, !dbg !3027
  %52 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr77, 0, !dbg !3027
  %53 = insertvalue { ptr, i64, i64 } %52, i64 %append.newLen78, 1, !dbg !3027
  %54 = insertvalue { ptr, i64, i64 } %53, i64 %append.newCap79, 2, !dbg !3027
    #dbg_value({ ptr, i64, i64 } %54, !2968, !DIExpression(), !3028)
  br label %switch.done, !dbg !2977

switch.next10:                                    ; preds = %switch.next8
  %55 = icmp eq i32 %r, 9, !dbg !3029
  br i1 %55, label %switch.body11, label %switch.next12, !dbg !2977

switch.body11:                                    ; preds = %switch.next10
    #dbg_value({ ptr, i64, i64 } %2, !2968, !DIExpression(), !3030)
  %append.srcBuf80 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3031
  %append.srcLen81 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3031
  %append.srcCap82 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3031
  %append.new83 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf80, ptr @"internal/reflectlite$string.28", i64 %append.srcLen81, i64 %append.srcCap82, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3031
  %append.newPtr84 = extractvalue { ptr, i64, i64 } %append.new83, 0, !dbg !3031
  %append.newLen85 = extractvalue { ptr, i64, i64 } %append.new83, 1, !dbg !3031
  %append.newCap86 = extractvalue { ptr, i64, i64 } %append.new83, 2, !dbg !3031
  %56 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr84, 0, !dbg !3031
  %57 = insertvalue { ptr, i64, i64 } %56, i64 %append.newLen85, 1, !dbg !3031
  %58 = insertvalue { ptr, i64, i64 } %57, i64 %append.newCap86, 2, !dbg !3031
    #dbg_value({ ptr, i64, i64 } %58, !2968, !DIExpression(), !3032)
  br label %switch.done, !dbg !2977

switch.next12:                                    ; preds = %switch.next10
  %59 = icmp eq i32 %r, 11, !dbg !3033
  br i1 %59, label %switch.body13, label %switch.next14, !dbg !2977

switch.body13:                                    ; preds = %switch.next12
    #dbg_value({ ptr, i64, i64 } %2, !2968, !DIExpression(), !3034)
  %append.srcBuf87 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3035
  %append.srcLen88 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3035
  %append.srcCap89 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3035
  %append.new90 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf87, ptr @"internal/reflectlite$string.29", i64 %append.srcLen88, i64 %append.srcCap89, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3035
  %append.newPtr91 = extractvalue { ptr, i64, i64 } %append.new90, 0, !dbg !3035
  %append.newLen92 = extractvalue { ptr, i64, i64 } %append.new90, 1, !dbg !3035
  %append.newCap93 = extractvalue { ptr, i64, i64 } %append.new90, 2, !dbg !3035
  %60 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr91, 0, !dbg !3035
  %61 = insertvalue { ptr, i64, i64 } %60, i64 %append.newLen92, 1, !dbg !3035
  %62 = insertvalue { ptr, i64, i64 } %61, i64 %append.newCap93, 2, !dbg !3035
    #dbg_value({ ptr, i64, i64 } %62, !2968, !DIExpression(), !3036)
  br label %switch.done, !dbg !2977

switch.next14:                                    ; preds = %switch.next12
    #dbg_value(i32 %r, !2969, !DIExpression(), !3037)
  %63 = icmp slt i32 %r, 32, !dbg !3038
  br i1 %63, label %binop.done, label %binop.rhs, !dbg !2977

binop.done:                                       ; preds = %binop.rhs, %switch.next14
  %64 = phi i1 [ true, %switch.next14 ], [ %140, %binop.rhs ], !dbg !3039
  br i1 %64, label %switch.body15, label %switch.next16, !dbg !2977

switch.body15:                                    ; preds = %binop.done
    #dbg_value({ ptr, i64, i64 } %2, !2968, !DIExpression(), !3040)
  %append.srcBuf94 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3041
  %append.srcLen95 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3041
  %append.srcCap96 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3041
  %append.new97 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf94, ptr @"internal/reflectlite$string.30", i64 %append.srcLen95, i64 %append.srcCap96, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3041
  %append.newPtr98 = extractvalue { ptr, i64, i64 } %append.new97, 0, !dbg !3041
  %append.newLen99 = extractvalue { ptr, i64, i64 } %append.new97, 1, !dbg !3041
  %append.newCap100 = extractvalue { ptr, i64, i64 } %append.new97, 2, !dbg !3041
  %65 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr98, 0, !dbg !3041
  %66 = insertvalue { ptr, i64, i64 } %65, i64 %append.newLen99, 1, !dbg !3041
  %67 = insertvalue { ptr, i64, i64 } %66, i64 %append.newCap100, 2, !dbg !3041
    #dbg_value({ ptr, i64, i64 } %67, !2968, !DIExpression(), !3042)
    #dbg_value({ ptr, i64, i64 } %67, !2968, !DIExpression(), !3043)
    #dbg_value(i32 %r, !2969, !DIExpression(), !3044)
  %68 = trunc i32 %r to i8, !dbg !3045
  %69 = lshr i8 %68, 4, !dbg !3046
  %shift.result = select i1 false, i8 0, i8 %69, !dbg !3046
  %70 = zext i8 %shift.result to i64, !dbg !3047
  %71 = icmp uge i64 %70, 15, !dbg !3047
  br i1 %71, label %lookup.throw, label %lookup.next, !dbg !3047

lookup.next:                                      ; preds = %switch.body15
  %72 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.31", i64 %70, !dbg !3047
  %73 = load i8, ptr %72, align 1, !dbg !3047
  %varargs101 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3048
  %74 = getelementptr inbounds [1 x i8], ptr %varargs101, i32 0, i64 0, !dbg !3048
  store i8 %73, ptr %74, align 1, !dbg !3047
  %slice.ptr102 = getelementptr inbounds [1 x i8], ptr %varargs101, i32 0, i64 0, !dbg !3048
  %75 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr102, 0, !dbg !3048
  %76 = insertvalue { ptr, i64, i64 } %75, i64 1, 1, !dbg !3048
  %77 = insertvalue { ptr, i64, i64 } %76, i64 1, 2, !dbg !3048
  %append.srcBuf103 = extractvalue { ptr, i64, i64 } %67, 0, !dbg !3049
  %append.srcLen104 = extractvalue { ptr, i64, i64 } %67, 1, !dbg !3049
  %append.srcCap105 = extractvalue { ptr, i64, i64 } %67, 2, !dbg !3049
  %append.elemsBuf106 = extractvalue { ptr, i64, i64 } %77, 0, !dbg !3049
  %append.elemsLen107 = extractvalue { ptr, i64, i64 } %77, 1, !dbg !3049
  %append.new108 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf103, ptr %append.elemsBuf106, i64 %append.srcLen104, i64 %append.srcCap105, i64 %append.elemsLen107, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3049
  %append.newPtr109 = extractvalue { ptr, i64, i64 } %append.new108, 0, !dbg !3049
  %append.newLen110 = extractvalue { ptr, i64, i64 } %append.new108, 1, !dbg !3049
  %append.newCap111 = extractvalue { ptr, i64, i64 } %append.new108, 2, !dbg !3049
  %78 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr109, 0, !dbg !3049
  %79 = insertvalue { ptr, i64, i64 } %78, i64 %append.newLen110, 1, !dbg !3049
  %80 = insertvalue { ptr, i64, i64 } %79, i64 %append.newCap111, 2, !dbg !3049
    #dbg_value({ ptr, i64, i64 } %80, !2968, !DIExpression(), !3050)
    #dbg_value({ ptr, i64, i64 } %80, !2968, !DIExpression(), !3051)
    #dbg_value(i32 %r, !2969, !DIExpression(), !3052)
  %81 = trunc i32 %r to i8, !dbg !3053
  %82 = and i8 %81, 15, !dbg !3054
  %83 = zext i8 %82 to i64, !dbg !3055
  %84 = icmp uge i64 %83, 15, !dbg !3055
  br i1 %84, label %lookup.throw112, label %lookup.next113, !dbg !3055

lookup.next113:                                   ; preds = %lookup.next
  %85 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.32", i64 %83, !dbg !3055
  %86 = load i8, ptr %85, align 1, !dbg !3055
  %varargs114 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3056
  %87 = getelementptr inbounds [1 x i8], ptr %varargs114, i32 0, i64 0, !dbg !3056
  store i8 %86, ptr %87, align 1, !dbg !3055
  %slice.ptr115 = getelementptr inbounds [1 x i8], ptr %varargs114, i32 0, i64 0, !dbg !3056
  %88 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr115, 0, !dbg !3056
  %89 = insertvalue { ptr, i64, i64 } %88, i64 1, 1, !dbg !3056
  %90 = insertvalue { ptr, i64, i64 } %89, i64 1, 2, !dbg !3056
  %append.srcBuf116 = extractvalue { ptr, i64, i64 } %80, 0, !dbg !3057
  %append.srcLen117 = extractvalue { ptr, i64, i64 } %80, 1, !dbg !3057
  %append.srcCap118 = extractvalue { ptr, i64, i64 } %80, 2, !dbg !3057
  %append.elemsBuf119 = extractvalue { ptr, i64, i64 } %90, 0, !dbg !3057
  %append.elemsLen120 = extractvalue { ptr, i64, i64 } %90, 1, !dbg !3057
  %append.new121 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf116, ptr %append.elemsBuf119, i64 %append.srcLen117, i64 %append.srcCap118, i64 %append.elemsLen120, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3057
  %append.newPtr122 = extractvalue { ptr, i64, i64 } %append.new121, 0, !dbg !3057
  %append.newLen123 = extractvalue { ptr, i64, i64 } %append.new121, 1, !dbg !3057
  %append.newCap124 = extractvalue { ptr, i64, i64 } %append.new121, 2, !dbg !3057
  %91 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr122, 0, !dbg !3057
  %92 = insertvalue { ptr, i64, i64 } %91, i64 %append.newLen123, 1, !dbg !3057
  %93 = insertvalue { ptr, i64, i64 } %92, i64 %append.newCap124, 2, !dbg !3057
    #dbg_value({ ptr, i64, i64 } %93, !2968, !DIExpression(), !3058)
  br label %switch.done, !dbg !2977

switch.next16:                                    ; preds = %binop.done
    #dbg_value(i32 %r, !2969, !DIExpression(), !3059)
  %94 = call i1 @"unicode/utf8.ValidRune"(i32 %r, ptr undef), !dbg !3060
  %95 = xor i1 %94, true, !dbg !3061
  br i1 %95, label %switch.body17, label %switch.next19, !dbg !2977

switch.body17:                                    ; preds = %switch.next16
    #dbg_value(i32 65533, !2969, !DIExpression(), !3062)
  br label %switch.body18, !dbg !2977

switch.body18:                                    ; preds = %switch.next19, %switch.body17
  %96 = phi i32 [ 65533, %switch.body17 ], [ %r, %switch.next19 ], !dbg !3063
    #dbg_value({ ptr, i64, i64 } %2, !2968, !DIExpression(), !3064)
  %append.srcBuf125 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3065
  %append.srcLen126 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3065
  %append.srcCap127 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3065
  %append.new128 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf125, ptr @"internal/reflectlite$string.33", i64 %append.srcLen126, i64 %append.srcCap127, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3065
  %append.newPtr129 = extractvalue { ptr, i64, i64 } %append.new128, 0, !dbg !3065
  %append.newLen130 = extractvalue { ptr, i64, i64 } %append.new128, 1, !dbg !3065
  %append.newCap131 = extractvalue { ptr, i64, i64 } %append.new128, 2, !dbg !3065
  %97 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr129, 0, !dbg !3065
  %98 = insertvalue { ptr, i64, i64 } %97, i64 %append.newLen130, 1, !dbg !3065
  %99 = insertvalue { ptr, i64, i64 } %98, i64 %append.newCap131, 2, !dbg !3065
    #dbg_value({ ptr, i64, i64 } %99, !2968, !DIExpression(), !3066)
    #dbg_value(i64 12, !2971, !DIExpression(), !3067)
  br label %for.loop, !dbg !2977

for.loop:                                         ; preds = %lookup.next133, %switch.body18
  %100 = phi { ptr, i64, i64 } [ %99, %switch.body18 ], [ %116, %lookup.next133 ], !dbg !3010
  %101 = phi i64 [ 12, %switch.body18 ], [ %117, %lookup.next133 ], !dbg !3067
    #dbg_value(i64 %101, !2971, !DIExpression(), !3068)
  %102 = icmp sge i64 %101, 0, !dbg !3069
  br i1 %102, label %for.body, label %switch.done, !dbg !2977

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %100, !2968, !DIExpression(), !3070)
    #dbg_value(i32 %96, !2969, !DIExpression(), !3071)
    #dbg_value(i64 %101, !2971, !DIExpression(), !3072)
  %shift.overflow = icmp uge i64 %101, 32, !dbg !3073
  %103 = trunc i64 %101 to i32, !dbg !3073
  %shift.offset = select i1 %shift.overflow, i32 31, i32 %103, !dbg !3073
  %104 = ashr i32 %96, %shift.offset, !dbg !3073
  %105 = and i32 %104, 15, !dbg !3074
  %106 = sext i32 %105 to i64, !dbg !3075
  %107 = icmp uge i64 %106, 15, !dbg !3075
  br i1 %107, label %lookup.throw132, label %lookup.next133, !dbg !3075

lookup.next133:                                   ; preds = %for.body
  %108 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.34", i64 %106, !dbg !3075
  %109 = load i8, ptr %108, align 1, !dbg !3075
  %varargs134 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3076
  %110 = getelementptr inbounds [1 x i8], ptr %varargs134, i32 0, i64 0, !dbg !3076
  store i8 %109, ptr %110, align 1, !dbg !3075
  %slice.ptr135 = getelementptr inbounds [1 x i8], ptr %varargs134, i32 0, i64 0, !dbg !3076
  %111 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr135, 0, !dbg !3076
  %112 = insertvalue { ptr, i64, i64 } %111, i64 1, 1, !dbg !3076
  %113 = insertvalue { ptr, i64, i64 } %112, i64 1, 2, !dbg !3076
  %append.srcBuf136 = extractvalue { ptr, i64, i64 } %100, 0, !dbg !3077
  %append.srcLen137 = extractvalue { ptr, i64, i64 } %100, 1, !dbg !3077
  %append.srcCap138 = extractvalue { ptr, i64, i64 } %100, 2, !dbg !3077
  %append.elemsBuf139 = extractvalue { ptr, i64, i64 } %113, 0, !dbg !3077
  %append.elemsLen140 = extractvalue { ptr, i64, i64 } %113, 1, !dbg !3077
  %append.new141 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf136, ptr %append.elemsBuf139, i64 %append.srcLen137, i64 %append.srcCap138, i64 %append.elemsLen140, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3077
  %append.newPtr142 = extractvalue { ptr, i64, i64 } %append.new141, 0, !dbg !3077
  %append.newLen143 = extractvalue { ptr, i64, i64 } %append.new141, 1, !dbg !3077
  %append.newCap144 = extractvalue { ptr, i64, i64 } %append.new141, 2, !dbg !3077
  %114 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr142, 0, !dbg !3077
  %115 = insertvalue { ptr, i64, i64 } %114, i64 %append.newLen143, 1, !dbg !3077
  %116 = insertvalue { ptr, i64, i64 } %115, i64 %append.newCap144, 2, !dbg !3077
    #dbg_value({ ptr, i64, i64 } %116, !2968, !DIExpression(), !3078)
  %117 = sub i64 %101, 4, !dbg !3079
    #dbg_value(i64 %117, !2971, !DIExpression(), !3079)
  br label %for.loop, !dbg !2977

switch.next19:                                    ; preds = %switch.next16
    #dbg_value(i32 %r, !2969, !DIExpression(), !3080)
  %118 = icmp slt i32 %r, 65536, !dbg !3081
  br i1 %118, label %switch.body18, label %switch.next20, !dbg !2977

switch.next20:                                    ; preds = %switch.next19
    #dbg_value({ ptr, i64, i64 } %2, !2968, !DIExpression(), !3082)
  %append.srcBuf145 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3083
  %append.srcLen146 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3083
  %append.srcCap147 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3083
  %append.new148 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf145, ptr @"internal/reflectlite$string.35", i64 %append.srcLen146, i64 %append.srcCap147, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3083
  %append.newPtr149 = extractvalue { ptr, i64, i64 } %append.new148, 0, !dbg !3083
  %append.newLen150 = extractvalue { ptr, i64, i64 } %append.new148, 1, !dbg !3083
  %append.newCap151 = extractvalue { ptr, i64, i64 } %append.new148, 2, !dbg !3083
  %119 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr149, 0, !dbg !3083
  %120 = insertvalue { ptr, i64, i64 } %119, i64 %append.newLen150, 1, !dbg !3083
  %121 = insertvalue { ptr, i64, i64 } %120, i64 %append.newCap151, 2, !dbg !3083
    #dbg_value({ ptr, i64, i64 } %121, !2968, !DIExpression(), !3084)
    #dbg_value(i64 28, !2972, !DIExpression(), !3085)
  br label %for.loop21, !dbg !2977

for.loop21:                                       ; preds = %lookup.next155, %switch.next20
  %122 = phi { ptr, i64, i64 } [ %121, %switch.next20 ], [ %138, %lookup.next155 ], !dbg !3010
  %123 = phi i64 [ 28, %switch.next20 ], [ %139, %lookup.next155 ], !dbg !3085
    #dbg_value(i64 %123, !2972, !DIExpression(), !3086)
  %124 = icmp sge i64 %123, 0, !dbg !3087
  br i1 %124, label %for.body22, label %switch.done, !dbg !2977

for.body22:                                       ; preds = %for.loop21
    #dbg_value({ ptr, i64, i64 } %122, !2968, !DIExpression(), !3088)
    #dbg_value(i32 %r, !2969, !DIExpression(), !3089)
    #dbg_value(i64 %123, !2972, !DIExpression(), !3090)
  %shift.overflow152 = icmp uge i64 %123, 32, !dbg !3091
  %125 = trunc i64 %123 to i32, !dbg !3091
  %shift.offset153 = select i1 %shift.overflow152, i32 31, i32 %125, !dbg !3091
  %126 = ashr i32 %r, %shift.offset153, !dbg !3091
  %127 = and i32 %126, 15, !dbg !3092
  %128 = sext i32 %127 to i64, !dbg !3093
  %129 = icmp uge i64 %128, 15, !dbg !3093
  br i1 %129, label %lookup.throw154, label %lookup.next155, !dbg !3093

lookup.next155:                                   ; preds = %for.body22
  %130 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.36", i64 %128, !dbg !3093
  %131 = load i8, ptr %130, align 1, !dbg !3093
  %varargs156 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3094
  %132 = getelementptr inbounds [1 x i8], ptr %varargs156, i32 0, i64 0, !dbg !3094
  store i8 %131, ptr %132, align 1, !dbg !3093
  %slice.ptr157 = getelementptr inbounds [1 x i8], ptr %varargs156, i32 0, i64 0, !dbg !3094
  %133 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr157, 0, !dbg !3094
  %134 = insertvalue { ptr, i64, i64 } %133, i64 1, 1, !dbg !3094
  %135 = insertvalue { ptr, i64, i64 } %134, i64 1, 2, !dbg !3094
  %append.srcBuf158 = extractvalue { ptr, i64, i64 } %122, 0, !dbg !3095
  %append.srcLen159 = extractvalue { ptr, i64, i64 } %122, 1, !dbg !3095
  %append.srcCap160 = extractvalue { ptr, i64, i64 } %122, 2, !dbg !3095
  %append.elemsBuf161 = extractvalue { ptr, i64, i64 } %135, 0, !dbg !3095
  %append.elemsLen162 = extractvalue { ptr, i64, i64 } %135, 1, !dbg !3095
  %append.new163 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf158, ptr %append.elemsBuf161, i64 %append.srcLen159, i64 %append.srcCap160, i64 %append.elemsLen162, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3095
  %append.newPtr164 = extractvalue { ptr, i64, i64 } %append.new163, 0, !dbg !3095
  %append.newLen165 = extractvalue { ptr, i64, i64 } %append.new163, 1, !dbg !3095
  %append.newCap166 = extractvalue { ptr, i64, i64 } %append.new163, 2, !dbg !3095
  %136 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr164, 0, !dbg !3095
  %137 = insertvalue { ptr, i64, i64 } %136, i64 %append.newLen165, 1, !dbg !3095
  %138 = insertvalue { ptr, i64, i64 } %137, i64 %append.newCap166, 2, !dbg !3095
    #dbg_value({ ptr, i64, i64 } %138, !2968, !DIExpression(), !3096)
  %139 = sub i64 %123, 4, !dbg !3097
    #dbg_value(i64 %139, !2972, !DIExpression(), !3097)
  br label %for.loop21, !dbg !2977

binop.rhs:                                        ; preds = %switch.next14
    #dbg_value(i32 %r, !2969, !DIExpression(), !3098)
  %140 = icmp eq i32 %r, 127, !dbg !3099
  br label %binop.done, !dbg !2977

slice.throw:                                      ; preds = %if.then1
  call void @runtime.slicePanic(ptr undef), !dbg !3000
  unreachable, !dbg !3000

lookup.throw:                                     ; preds = %switch.body15
  call void @runtime.lookupPanic(ptr undef), !dbg !3047
  unreachable, !dbg !3047

lookup.throw112:                                  ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !3055
  unreachable, !dbg !3055

lookup.throw132:                                  ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !3075
  unreachable, !dbg !3075

lookup.throw154:                                  ; preds = %for.body22
  call void @runtime.lookupPanic(ptr undef), !dbg !3093
  unreachable, !dbg !3093
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"internal/reflectlite.isPrint"(i32 %r, ptr %context) unnamed_addr #1 !dbg !3100 {
entry:
    #dbg_value(i32 %r, !3102, !DIExpression(), !3103)
    #dbg_value(i32 %r, !3102, !DIExpression(), !3104)
  %0 = icmp sle i32 %r, 255, !dbg !3105
  br i1 %0, label %if.then, label %if.done5, !dbg !3106

if.then:                                          ; preds = %entry
    #dbg_value(i32 %r, !3102, !DIExpression(), !3107)
  %1 = icmp sle i32 32, %r, !dbg !3108
  br i1 %1, label %cond.true, label %if.done, !dbg !3106

cond.true:                                        ; preds = %if.then
    #dbg_value(i32 %r, !3102, !DIExpression(), !3109)
  %2 = icmp sle i32 %r, 126, !dbg !3110
  br i1 %2, label %if.then1, label %if.done, !dbg !3106

if.then1:                                         ; preds = %cond.true
  ret i1 true, !dbg !3111

if.done:                                          ; preds = %cond.true, %if.then
    #dbg_value(i32 %r, !3102, !DIExpression(), !3112)
  %3 = icmp sle i32 161, %r, !dbg !3113
  br i1 %3, label %cond.true2, label %if.done4, !dbg !3106

cond.true2:                                       ; preds = %if.done
    #dbg_value(i32 %r, !3102, !DIExpression(), !3114)
  %4 = icmp sle i32 %r, 255, !dbg !3115
  br i1 %4, label %if.then3, label %if.done4, !dbg !3106

if.then3:                                         ; preds = %cond.true2
    #dbg_value(i32 %r, !3102, !DIExpression(), !3116)
  %5 = icmp ne i32 %r, 173, !dbg !3117
  ret i1 %5, !dbg !3118

if.done4:                                         ; preds = %cond.true2, %if.done
  ret i1 false, !dbg !3119

if.done5:                                         ; preds = %entry
  ret i1 false, !dbg !3120
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.Kind).String"(ptr dereferenceable_or_null(1) %k, ptr %context) unnamed_addr #1 {
entry:
  %0 = icmp eq ptr %k, null
  br i1 %0, label %deref.throw, label %deref.next

deref.next:                                       ; preds = %entry
  %1 = load i8, ptr %k, align 1
  %2 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %1, ptr undef)
  ret %runtime._string %2

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef)
  unreachable
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.Kind).String$invoke"(ptr %0, ptr %1) unnamed_addr #1 !dbg !3121 {
entry:
  %unpack.int = ptrtoint ptr %0 to i8, !dbg !3122
  %ret = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %unpack.int, ptr %1), !dbg !3122
  ret %runtime._string %ret, !dbg !3122
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.ValueError).Error"(ptr dereferenceable_or_null(24) %e, ptr %context) unnamed_addr #1 !dbg !3123 {
entry:
    #dbg_value(ptr %e, !3132, !DIExpression(), !3133)
    #dbg_value(ptr %e, !3132, !DIExpression(), !3134)
  %0 = icmp eq ptr %e, null, !dbg !3135
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3135

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 1, !dbg !3135
  %2 = icmp eq ptr %1, null, !dbg !3135
  br i1 %2, label %deref.throw, label %deref.next, !dbg !3135

deref.next:                                       ; preds = %gep.next
  %3 = load i8, ptr %1, align 1, !dbg !3135
  %4 = icmp eq i8 %3, 0, !dbg !3136
  br i1 %4, label %if.then, label %if.done, !dbg !3137

if.then:                                          ; preds = %deref.next
    #dbg_value(ptr %e, !3132, !DIExpression(), !3138)
  %5 = icmp eq ptr %e, null, !dbg !3139
  br i1 %5, label %gep.throw1, label %gep.next2, !dbg !3139

gep.next2:                                        ; preds = %if.then
  %6 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 0, !dbg !3139
  %7 = icmp eq ptr %6, null, !dbg !3139
  br i1 %7, label %deref.throw3, label %deref.next4, !dbg !3139

deref.next4:                                      ; preds = %gep.next2
  %8 = load %runtime._string, ptr %6, align 8, !dbg !3139
  %9 = extractvalue %runtime._string %8, 0, !dbg !3140
  %10 = extractvalue %runtime._string %8, 1, !dbg !3140
  %11 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.229", i64 17, ptr %9, i64 %10, ptr undef), !dbg !3140
  %12 = extractvalue %runtime._string %11, 0, !dbg !3141
  %13 = extractvalue %runtime._string %11, 1, !dbg !3141
  %14 = call %runtime._string @runtime.stringConcat(ptr %12, i64 %13, ptr @"internal/reflectlite$string.230", i64 14, ptr undef), !dbg !3141
  ret %runtime._string %14, !dbg !3142

if.done:                                          ; preds = %deref.next
    #dbg_value(ptr %e, !3132, !DIExpression(), !3143)
  %15 = icmp eq ptr %e, null, !dbg !3144
  br i1 %15, label %gep.throw5, label %gep.next6, !dbg !3144

gep.next6:                                        ; preds = %if.done
  %16 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 0, !dbg !3144
  %17 = icmp eq ptr %16, null, !dbg !3144
  br i1 %17, label %deref.throw7, label %deref.next8, !dbg !3144

deref.next8:                                      ; preds = %gep.next6
  %18 = load %runtime._string, ptr %16, align 8, !dbg !3144
  %19 = extractvalue %runtime._string %18, 0, !dbg !3145
  %20 = extractvalue %runtime._string %18, 1, !dbg !3145
  %21 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.231", i64 17, ptr %19, i64 %20, ptr undef), !dbg !3145
  %22 = extractvalue %runtime._string %21, 0, !dbg !3146
  %23 = extractvalue %runtime._string %21, 1, !dbg !3146
  %24 = call %runtime._string @runtime.stringConcat(ptr %22, i64 %23, ptr @"internal/reflectlite$string.232", i64 4, ptr undef), !dbg !3146
    #dbg_value(ptr %e, !3132, !DIExpression(), !3147)
  %25 = icmp eq ptr %e, null, !dbg !3148
  br i1 %25, label %gep.throw9, label %gep.next10, !dbg !3148

gep.next10:                                       ; preds = %deref.next8
  %26 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 1, !dbg !3148
  %27 = icmp eq ptr %26, null, !dbg !3148
  br i1 %27, label %deref.throw11, label %deref.next12, !dbg !3148

deref.next12:                                     ; preds = %gep.next10
  %28 = load i8, ptr %26, align 1, !dbg !3148
  %29 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %28, ptr undef), !dbg !3149
  %30 = extractvalue %runtime._string %24, 0, !dbg !3150
  %31 = extractvalue %runtime._string %24, 1, !dbg !3150
  %32 = extractvalue %runtime._string %29, 0, !dbg !3150
  %33 = extractvalue %runtime._string %29, 1, !dbg !3150
  %34 = call %runtime._string @runtime.stringConcat(ptr %30, i64 %31, ptr %32, i64 %33, ptr undef), !dbg !3150
  %35 = extractvalue %runtime._string %34, 0, !dbg !3151
  %36 = extractvalue %runtime._string %34, 1, !dbg !3151
  %37 = call %runtime._string @runtime.stringConcat(ptr %35, i64 %36, ptr @"internal/reflectlite$string.233", i64 6, ptr undef), !dbg !3151
  ret %runtime._string %37, !dbg !3152

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3135
  unreachable, !dbg !3135

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3135
  unreachable, !dbg !3135

gep.throw1:                                       ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3139
  unreachable, !dbg !3139

deref.throw3:                                     ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3139
  unreachable, !dbg !3139

gep.throw5:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3144
  unreachable, !dbg !3144

deref.throw7:                                     ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3144
  unreachable, !dbg !3144

gep.throw9:                                       ; preds = %deref.next8
  call void @runtime.nilPanic(ptr undef), !dbg !3148
  unreachable, !dbg !3148

deref.throw11:                                    ; preds = %gep.next10
  call void @runtime.nilPanic(ptr undef), !dbg !3148
  unreachable, !dbg !3148
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr %context) unnamed_addr #1 !dbg !3153 {
entry:
  ret %runtime._string { ptr @"internal/reflectlite$string.17", i64 14 }, !dbg !3158
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.badSyntax).Error"(ptr %arg0, ptr %context) unnamed_addr #1 {
entry:
  %0 = call %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr undef)
  ret %runtime._string %0
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.badSyntax).Error$invoke"(ptr %0, ptr %1) unnamed_addr #1 !dbg !3159 {
entry:
  %ret = call %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr %1), !dbg !3160
  ret %runtime._string %ret, !dbg !3160
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"runtime/interrupt.In"(ptr %context) #1 !dbg !3161 {
entry:
  ret i1 false, !dbg !3164
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Mutex).Lock"(ptr dereferenceable_or_null(4) %m, ptr %context) #1 !dbg !3165 {
entry:
    #dbg_value(ptr %m, !3170, !DIExpression(), !3171)
    #dbg_value(ptr %m, !3170, !DIExpression(), !3172)
  %0 = icmp eq ptr %m, null, !dbg !3173
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3173

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3173
  %2 = icmp eq ptr %1, null, !dbg !3172
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3172

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3172
  %4 = call i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr %3, i32 0, i32 1, ptr undef), !dbg !3174
  br i1 %4, label %if.then, label %for.loop, !dbg !3175

if.then:                                          ; preds = %gep.next2
  ret void, !dbg !3176

for.loop:                                         ; preds = %gep.next8, %gep.next2
    #dbg_value(ptr %m, !3170, !DIExpression(), !3177)
  %5 = icmp eq ptr %m, null, !dbg !3178
  br i1 %5, label %gep.throw3, label %gep.next4, !dbg !3178

gep.next4:                                        ; preds = %for.loop
  %6 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3178
  %7 = icmp eq ptr %6, null, !dbg !3177
  br i1 %7, label %gep.throw5, label %gep.next6, !dbg !3177

gep.next6:                                        ; preds = %gep.next4
  %8 = getelementptr inbounds %"internal/futex.Futex", ptr %6, i32 0, i32 0, !dbg !3177
  %9 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr %8, i32 2, ptr undef), !dbg !3179
  %10 = icmp ne i32 %9, 0, !dbg !3180
  br i1 %10, label %for.body, label %for.done, !dbg !3175

for.body:                                         ; preds = %gep.next6
    #dbg_value(ptr %m, !3170, !DIExpression(), !3181)
  %11 = icmp eq ptr %m, null, !dbg !3182
  br i1 %11, label %gep.throw7, label %gep.next8, !dbg !3182

gep.next8:                                        ; preds = %for.body
  %12 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3182
  %13 = call i1 @"(*internal/futex.Futex).Wait"(ptr %12, i32 2, ptr undef), !dbg !3183
  br label %for.loop, !dbg !3175

for.done:                                         ; preds = %gep.next6
  ret void, !dbg !3184

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3173
  unreachable, !dbg !3173

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3172
  unreachable, !dbg !3172

gep.throw3:                                       ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !3178
  unreachable, !dbg !3178

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3177
  unreachable, !dbg !3177

gep.throw7:                                       ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3182
  unreachable, !dbg !3182
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Mutex).Unlock"(ptr dereferenceable_or_null(4) %m, ptr %context) #1 !dbg !3185 {
entry:
    #dbg_value(ptr %m, !3187, !DIExpression(), !3189)
    #dbg_value(ptr %m, !3187, !DIExpression(), !3190)
  %0 = icmp eq ptr %m, null, !dbg !3191
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3191

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3191
  %2 = icmp eq ptr %1, null, !dbg !3190
  br i1 %2, label %gep.throw2, label %gep.next3, !dbg !3190

gep.next3:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3190
  %4 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr %3, i32 0, ptr undef), !dbg !3192
    #dbg_value(i32 %4, !3188, !DIExpression(), !3193)
    #dbg_value(i32 %4, !3188, !DIExpression(), !3194)
  %5 = icmp eq i32 %4, 0, !dbg !3195
  br i1 %5, label %if.then, label %if.else, !dbg !3196

if.then:                                          ; preds = %gep.next3
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"internal/task$pack", ptr undef), !dbg !3197
  unreachable, !dbg !3197

if.else:                                          ; preds = %gep.next3
    #dbg_value(i32 %4, !3188, !DIExpression(), !3198)
  %6 = icmp eq i32 %4, 2, !dbg !3199
  br i1 %6, label %if.then1, label %if.done, !dbg !3196

if.then1:                                         ; preds = %if.else
    #dbg_value(ptr %m, !3187, !DIExpression(), !3200)
  %7 = icmp eq ptr %m, null, !dbg !3201
  br i1 %7, label %gep.throw4, label %gep.next5, !dbg !3201

gep.next5:                                        ; preds = %if.then1
  %8 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3201
  call void @"(*internal/futex.Futex).Wake"(ptr %8, ptr undef), !dbg !3202
  br label %if.done, !dbg !3196

if.done:                                          ; preds = %gep.next5, %if.else
  ret void, !dbg !3203

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3191
  unreachable, !dbg !3191

gep.throw2:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3190
  unreachable, !dbg !3190

gep.throw4:                                       ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3201
  unreachable, !dbg !3201
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Semaphore).Wait"(ptr dereferenceable_or_null(4) %s, ptr %context) unnamed_addr #1 !dbg !3204 {
entry:
    #dbg_value(ptr %s, !3210, !DIExpression(), !3213)
    #dbg_value(i32 -1, !3211, !DIExpression(), !3214)
    #dbg_value(ptr %s, !3210, !DIExpression(), !3215)
  %0 = icmp eq ptr %s, null, !dbg !3216
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3216

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3216
  %2 = icmp eq ptr %1, null, !dbg !3215
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3215

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3215
    #dbg_value(i32 -1, !3211, !DIExpression(), !3217)
  %4 = call i32 @"(*sync/atomic.Uint32).Add"(ptr %3, i32 -1, ptr undef), !dbg !3218
    #dbg_value(i32 %4, !3212, !DIExpression(), !3219)
  br label %for.body, !dbg !3220

for.body:                                         ; preds = %gep.next8, %gep.next2
  %5 = phi i32 [ %4, %gep.next2 ], [ %14, %gep.next8 ], !dbg !3219
    #dbg_value(i32 %5, !3212, !DIExpression(), !3221)
  %6 = icmp sge i32 %5, 0, !dbg !3222
  br i1 %6, label %if.then, label %if.done, !dbg !3220

if.then:                                          ; preds = %for.body
  ret void, !dbg !3223

if.done:                                          ; preds = %for.body
    #dbg_value(ptr %s, !3210, !DIExpression(), !3224)
  %7 = icmp eq ptr %s, null, !dbg !3225
  br i1 %7, label %gep.throw3, label %gep.next4, !dbg !3225

gep.next4:                                        ; preds = %if.done
  %8 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3225
    #dbg_value(i32 %5, !3212, !DIExpression(), !3226)
  %9 = call i1 @"(*internal/futex.Futex).Wait"(ptr %8, i32 %5, ptr undef), !dbg !3227
    #dbg_value(ptr %s, !3210, !DIExpression(), !3228)
  %10 = icmp eq ptr %s, null, !dbg !3229
  br i1 %10, label %gep.throw5, label %gep.next6, !dbg !3229

gep.next6:                                        ; preds = %gep.next4
  %11 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3229
  %12 = icmp eq ptr %11, null, !dbg !3228
  br i1 %12, label %gep.throw7, label %gep.next8, !dbg !3228

gep.next8:                                        ; preds = %gep.next6
  %13 = getelementptr inbounds %"internal/futex.Futex", ptr %11, i32 0, i32 0, !dbg !3228
  %14 = call i32 @"(*sync/atomic.Uint32).Load"(ptr %13, ptr undef), !dbg !3230
    #dbg_value(i32 %14, !3212, !DIExpression(), !3231)
  br label %for.body, !dbg !3220

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3216
  unreachable, !dbg !3216

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3215
  unreachable, !dbg !3215

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3225
  unreachable, !dbg !3225

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3229
  unreachable, !dbg !3229

gep.throw7:                                       ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3228
  unreachable, !dbg !3228
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.Init"(i64 %sp, ptr %context) #1 !dbg !3232 {
entry:
    #dbg_value(i64 %sp, !3236, !DIExpression(), !3238)
    #dbg_value(i64 %sp, !3236, !DIExpression(), !3239)
  %0 = icmp eq ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 2), null, !dbg !3240
  br i1 %0, label %store.throw, label %store.next, !dbg !3240

store.next:                                       ; preds = %entry
  store i64 %sp, ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 2), align 8, !dbg !3240
    #dbg_value(i64 %sp, !3237, !DIExpression(), !3240)
  call void @tinygo_task_init(ptr @"internal/task.mainTask", ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 1), ptr @"internal/task.numCPU", ptr undef), !dbg !3241
  ret void, !dbg !3242

store.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3240
  unreachable, !dbg !3240
}

declare void @tinygo_task_init(ptr dereferenceable_or_null(88), ptr dereferenceable_or_null(8), ptr dereferenceable_or_null(4), ptr) #2

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"internal/task.Current"(ptr %context) #1 !dbg !3243 {
entry:
  %0 = call ptr @tinygo_task_current(), !dbg !3246
    #dbg_value(ptr %0, !3245, !DIExpression(), !3247)
    #dbg_value(ptr %0, !3245, !DIExpression(), !3248)
  %1 = icmp eq ptr %0, null, !dbg !3249
  br i1 %1, label %if.then, label %if.done, !dbg !3250

if.then:                                          ; preds = %entry
  call void @runtime.runtimePanic(ptr @"internal/task$string.7", i64 20, ptr undef), !dbg !3251
  br label %if.done, !dbg !3250

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(ptr %0, !3245, !DIExpression(), !3252)
  ret ptr %0, !dbg !3253
}

declare ptr @tinygo_task_current() #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.Pause"(ptr %context) #1 !dbg !3254 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3257
    #dbg_value(ptr %0, !3256, !DIExpression(), !3258)
  br i1 false, label %if.then, label %if.done, !dbg !3259

if.then:                                          ; preds = %entry
    #dbg_value(ptr %0, !3256, !DIExpression(), !3260)
  %1 = icmp eq ptr %0, null, !dbg !3261
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3261

gep.next:                                         ; preds = %if.then
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3261
  %3 = icmp eq ptr %2, null, !dbg !3262
  br i1 %3, label %gep.throw1, label %gep.next2, !dbg !3262

gep.next2:                                        ; preds = %gep.next
  %4 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 0, !dbg !3262
  %5 = icmp eq ptr %4, null, !dbg !3262
  br i1 %5, label %deref.throw, label %deref.next, !dbg !3262

deref.next:                                       ; preds = %gep.next2
  %6 = load i64, ptr %4, align 8, !dbg !3262
  call void @runtime.printlock(ptr undef), !dbg !3263
  call void @runtime.printstring(ptr @"internal/task$string.8", i64 12, ptr undef), !dbg !3263
  call void @runtime.printspace(ptr undef), !dbg !3263
  call void @runtime.printptr(i64 %6, ptr undef), !dbg !3263
  call void @runtime.printnl(ptr undef), !dbg !3263
  call void @runtime.printunlock(ptr undef), !dbg !3263
  br label %if.done, !dbg !3259

if.done:                                          ; preds = %deref.next, %entry
    #dbg_value(ptr %0, !3256, !DIExpression(), !3264)
  %7 = icmp eq ptr %0, null, !dbg !3265
  br i1 %7, label %gep.throw3, label %gep.next4, !dbg !3265

gep.next4:                                        ; preds = %if.done
  %8 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3265
  %9 = icmp eq ptr %8, null, !dbg !3266
  br i1 %9, label %gep.throw5, label %gep.next6, !dbg !3266

gep.next6:                                        ; preds = %gep.next4
  %10 = getelementptr inbounds %"internal/task.state", ptr %8, i32 0, i32 5, !dbg !3266
  call void @"(*internal/task.Semaphore).Wait"(ptr %10, ptr undef), !dbg !3267
  ret void, !dbg !3268

gep.throw:                                        ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3261
  unreachable, !dbg !3261

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3262
  unreachable, !dbg !3262

deref.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3262
  unreachable, !dbg !3262

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3265
  unreachable, !dbg !3265

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3266
  unreachable, !dbg !3266
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_exited(ptr nocapture dereferenceable_or_null(88) %t) #1 !dbg !3269 {
entry:
    #dbg_value(ptr %t, !3273, !DIExpression(), !3278)
  br i1 false, label %if.then, label %if.done, !dbg !3279

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !3273, !DIExpression(), !3280)
  %0 = icmp eq ptr %t, null, !dbg !3281
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3281

gep.next:                                         ; preds = %if.then
  %1 = getelementptr inbounds %"internal/task.Task", ptr %t, i32 0, i32 4, !dbg !3281
  %2 = icmp eq ptr %1, null, !dbg !3282
  br i1 %2, label %gep.throw5, label %gep.next6, !dbg !3282

gep.next6:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/task.state", ptr %1, i32 0, i32 0, !dbg !3282
  %4 = icmp eq ptr %3, null, !dbg !3282
  br i1 %4, label %deref.throw, label %deref.next, !dbg !3282

deref.next:                                       ; preds = %gep.next6
  %5 = load i64, ptr %3, align 8, !dbg !3282
  call void @runtime.printlock(ptr undef), !dbg !3283
  call void @runtime.printstring(ptr @"internal/task$string.12", i64 9, ptr undef), !dbg !3283
  call void @runtime.printspace(ptr undef), !dbg !3283
  call void @runtime.printptr(i64 %5, ptr undef), !dbg !3283
  call void @runtime.printnl(ptr undef), !dbg !3283
  call void @runtime.printunlock(ptr undef), !dbg !3283
  br label %if.done, !dbg !3279

if.done:                                          ; preds = %deref.next, %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3284
    #dbg_value(i1 false, !3274, !DIExpression(), !3285)
    #dbg_value(ptr @"internal/task.activeTasks", !3275, !DIExpression(), !3286)
  br label %for.loop, !dbg !3279

for.loop:                                         ; preds = %gep.next22, %if.done
  %6 = phi ptr [ @"internal/task.activeTasks", %if.done ], [ %25, %gep.next22 ], !dbg !3286
    #dbg_value(ptr %6, !3275, !DIExpression(), !3287)
  %7 = icmp eq ptr %6, null, !dbg !3288
  br i1 %7, label %deref.throw7, label %deref.next8, !dbg !3288

deref.next8:                                      ; preds = %for.loop
  %8 = load ptr, ptr %6, align 8, !dbg !3288
  %9 = icmp ne ptr %8, null, !dbg !3289
  br i1 %9, label %for.body, label %for.done, !dbg !3279

for.body:                                         ; preds = %deref.next8
    #dbg_value(ptr %6, !3275, !DIExpression(), !3290)
  %10 = icmp eq ptr %6, null, !dbg !3291
  br i1 %10, label %deref.throw9, label %deref.next10, !dbg !3291

deref.next10:                                     ; preds = %for.body
  %11 = load ptr, ptr %6, align 8, !dbg !3291
    #dbg_value(ptr %t, !3273, !DIExpression(), !3292)
  %12 = icmp eq ptr %11, %t, !dbg !3293
  br i1 %12, label %if.then1, label %if.done2, !dbg !3279

if.then1:                                         ; preds = %deref.next10
    #dbg_value(ptr %6, !3275, !DIExpression(), !3294)
    #dbg_value(ptr %t, !3273, !DIExpression(), !3295)
  %13 = icmp eq ptr %t, null, !dbg !3296
  br i1 %13, label %gep.throw11, label %gep.next12, !dbg !3296

gep.next12:                                       ; preds = %if.then1
  %14 = getelementptr inbounds %"internal/task.Task", ptr %t, i32 0, i32 4, !dbg !3296
  %15 = icmp eq ptr %14, null, !dbg !3297
  br i1 %15, label %gep.throw13, label %gep.next14, !dbg !3297

gep.next14:                                       ; preds = %gep.next12
  %16 = getelementptr inbounds %"internal/task.state", ptr %14, i32 0, i32 4, !dbg !3297
  %17 = icmp eq ptr %16, null, !dbg !3297
  br i1 %17, label %deref.throw15, label %deref.next16, !dbg !3297

deref.next16:                                     ; preds = %gep.next14
  %18 = load ptr, ptr %16, align 8, !dbg !3297
  %19 = icmp eq ptr %6, null, !dbg !3298
  br i1 %19, label %store.throw, label %store.next, !dbg !3298

store.next:                                       ; preds = %deref.next16
  store ptr %18, ptr %6, align 8, !dbg !3298
    #dbg_value(i1 true, !3274, !DIExpression(), !3299)
  br label %for.done, !dbg !3279

if.done2:                                         ; preds = %deref.next10
    #dbg_value(ptr %6, !3275, !DIExpression(), !3300)
  %20 = icmp eq ptr %6, null, !dbg !3301
  br i1 %20, label %deref.throw17, label %deref.next18, !dbg !3301

deref.next18:                                     ; preds = %if.done2
  %21 = load ptr, ptr %6, align 8, !dbg !3301
  %22 = icmp eq ptr %21, null, !dbg !3302
  br i1 %22, label %gep.throw19, label %gep.next20, !dbg !3302

gep.next20:                                       ; preds = %deref.next18
  %23 = getelementptr inbounds %"internal/task.Task", ptr %21, i32 0, i32 4, !dbg !3302
  %24 = icmp eq ptr %23, null, !dbg !3303
  br i1 %24, label %gep.throw21, label %gep.next22, !dbg !3303

gep.next22:                                       ; preds = %gep.next20
  %25 = getelementptr inbounds %"internal/task.state", ptr %23, i32 0, i32 4, !dbg !3303
    #dbg_value(ptr %25, !3275, !DIExpression(), !3304)
  br label %for.loop, !dbg !3279

for.done:                                         ; preds = %store.next, %deref.next8
  %26 = phi i1 [ false, %deref.next8 ], [ true, %store.next ], !dbg !3285
  %27 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3305
  %28 = sub i32 %27, 1, !dbg !3305
  store i32 %28, ptr @"internal/task.otherGoroutines", align 4, !dbg !3305
    #dbg_value(i32 %28, !3277, !DIExpression(), !3305)
  call void @"(*internal/task.Mutex).Unlock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3306
    #dbg_value(i1 %26, !3274, !DIExpression(), !3307)
  br i1 %26, label %if.done3, label %if.then4, !dbg !3279

if.done3:                                         ; preds = %if.then4, %for.done
  ret void, !dbg !3308

if.then4:                                         ; preds = %for.done
  call void @runtime.runtimePanic(ptr @"internal/task$string.13", i64 17, ptr undef), !dbg !3309
  br label %if.done3, !dbg !3279

gep.throw:                                        ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3281
  unreachable, !dbg !3281

gep.throw5:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3282
  unreachable, !dbg !3282

deref.throw:                                      ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3282
  unreachable, !dbg !3282

deref.throw7:                                     ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !3288
  unreachable, !dbg !3288

deref.throw9:                                     ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3291
  unreachable, !dbg !3291

gep.throw11:                                      ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3296
  unreachable, !dbg !3296

gep.throw13:                                      ; preds = %gep.next12
  call void @runtime.nilPanic(ptr undef), !dbg !3297
  unreachable, !dbg !3297

deref.throw15:                                    ; preds = %gep.next14
  call void @runtime.nilPanic(ptr undef), !dbg !3297
  unreachable, !dbg !3297

store.throw:                                      ; preds = %deref.next16
  call void @runtime.nilPanic(ptr undef), !dbg !3298
  unreachable, !dbg !3298

deref.throw17:                                    ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !3301
  unreachable, !dbg !3301

gep.throw19:                                      ; preds = %deref.next18
  call void @runtime.nilPanic(ptr undef), !dbg !3302
  unreachable, !dbg !3302

gep.throw21:                                      ; preds = %gep.next20
  call void @runtime.nilPanic(ptr undef), !dbg !3303
  unreachable, !dbg !3303
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.waitGroup).done"(ptr dereferenceable_or_null(4) %wg, ptr %context) unnamed_addr #1 !dbg !3310 {
entry:
    #dbg_value(ptr %wg, !3315, !DIExpression(), !3316)
    #dbg_value(ptr %wg, !3315, !DIExpression(), !3317)
  %0 = icmp eq ptr %wg, null, !dbg !3318
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3318

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3318
  %2 = icmp eq ptr %1, null, !dbg !3317
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3317

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3317
  %4 = call i32 @"(*sync/atomic.Uint32).Add"(ptr %3, i32 -1, ptr undef), !dbg !3319
  %5 = icmp eq i32 %4, 0, !dbg !3320
  br i1 %5, label %if.then, label %if.done, !dbg !3321

if.then:                                          ; preds = %gep.next2
    #dbg_value(ptr %wg, !3315, !DIExpression(), !3322)
  %6 = icmp eq ptr %wg, null, !dbg !3323
  br i1 %6, label %gep.throw3, label %gep.next4, !dbg !3323

gep.next4:                                        ; preds = %if.then
  %7 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3323
  call void @"(*internal/futex.Futex).WakeAll"(ptr %7, ptr undef), !dbg !3324
  br label %if.done, !dbg !3321

if.done:                                          ; preds = %gep.next4, %gep.next2
  ret void, !dbg !3325

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3318
  unreachable, !dbg !3318

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3317
  unreachable, !dbg !3317

gep.throw3:                                       ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3323
  unreachable, !dbg !3323
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.waitGroup).wait"(ptr dereferenceable_or_null(4) %wg, ptr %context) unnamed_addr #1 !dbg !3326 {
entry:
    #dbg_value(ptr %wg, !3328, !DIExpression(), !3330)
  br label %for.body, !dbg !3331

for.body:                                         ; preds = %gep.next4, %entry
    #dbg_value(ptr %wg, !3328, !DIExpression(), !3332)
  %0 = icmp eq ptr %wg, null, !dbg !3333
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3333

gep.next:                                         ; preds = %for.body
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3333
  %2 = icmp eq ptr %1, null, !dbg !3332
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3332

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3332
  %4 = call i32 @"(*sync/atomic.Uint32).Load"(ptr %3, ptr undef), !dbg !3334
    #dbg_value(i32 %4, !3329, !DIExpression(), !3335)
    #dbg_value(i32 %4, !3329, !DIExpression(), !3336)
  %5 = icmp eq i32 %4, 0, !dbg !3337
  br i1 %5, label %if.then, label %if.done, !dbg !3331

if.then:                                          ; preds = %gep.next2
  ret void, !dbg !3338

if.done:                                          ; preds = %gep.next2
    #dbg_value(ptr %wg, !3328, !DIExpression(), !3339)
  %6 = icmp eq ptr %wg, null, !dbg !3340
  br i1 %6, label %gep.throw3, label %gep.next4, !dbg !3340

gep.next4:                                        ; preds = %if.done
  %7 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3340
    #dbg_value(i32 %4, !3329, !DIExpression(), !3341)
  %8 = call i1 @"(*internal/futex.Futex).Wait"(ptr %7, i32 %4, ptr undef), !dbg !3342
  br label %for.body, !dbg !3331

gep.throw:                                        ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3333
  unreachable, !dbg !3333

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3332
  unreachable, !dbg !3332

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3340
  unreachable, !dbg !3340
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %n, ptr %context) unnamed_addr #1 !dbg !3343 {
entry:
    #dbg_value(i32 %n, !3347, !DIExpression(), !3349)
  %wg = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3350
  %0 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3351
  %1 = icmp eq ptr %0, null, !dbg !3352
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3352

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/futex.Futex", ptr %0, i32 0, i32 0, !dbg !3352
    #dbg_value(i32 %n, !3347, !DIExpression(), !3353)
  call void @"(*sync/atomic.Uint32).Store"(ptr %2, i32 %n, ptr undef), !dbg !3354
  %3 = load %"internal/task.Semaphore", ptr %wg, align 4, !dbg !3355
    #dbg_value(%"internal/task.Semaphore" %3, !3348, !DIExpression(), !3355)
  ret %"internal/task.Semaphore" %3, !dbg !3356

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3352
  unreachable, !dbg !3352
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.GCStopWorldAndScan"(ptr %context) #1 !dbg !3357 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3365
    #dbg_value(ptr %0, !3359, !DIExpression(), !3366)
  %1 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3367
  %2 = icmp eq i32 %1, 0, !dbg !3368
  br i1 %2, label %if.then, label %if.done2, !dbg !3369

if.then:                                          ; preds = %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3370
  call void @"(*internal/task.waitGroup).wait"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3371
  call void @"(*sync/atomic.Uint32).Store"(ptr @"internal/task.gcState", i32 1, ptr undef), !dbg !3372
  %3 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3373
    #dbg_value(i32 %3, !3360, !DIExpression(), !3373)
  %4 = call %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %3, ptr undef), !dbg !3374
  store %"internal/task.Semaphore" %4, ptr @"internal/task.scanWaitGroup", align 4, !dbg !3375
    #dbg_value(%"internal/task.Semaphore" %4, !3361, !DIExpression(), !3375)
  %5 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !3376
    #dbg_value(ptr %5, !3362, !DIExpression(), !3376)
    #dbg_value(ptr %5, !3363, !DIExpression(), !3377)
  br label %for.loop, !dbg !3369

for.loop:                                         ; preds = %deref.next15, %if.then
  %6 = phi ptr [ %5, %if.then ], [ %20, %deref.next15 ], !dbg !3377
    #dbg_value(ptr %6, !3363, !DIExpression(), !3378)
  %7 = icmp ne ptr %6, null, !dbg !3379
  br i1 %7, label %for.body, label %for.done, !dbg !3369

for.body:                                         ; preds = %for.loop
    #dbg_value(ptr %6, !3363, !DIExpression(), !3380)
    #dbg_value(ptr %0, !3359, !DIExpression(), !3381)
  %8 = icmp ne ptr %6, %0, !dbg !3382
  br i1 %8, label %if.then1, label %if.done, !dbg !3369

if.then1:                                         ; preds = %for.body
    #dbg_value(ptr %6, !3363, !DIExpression(), !3383)
  %9 = icmp eq ptr %6, null, !dbg !3384
  br i1 %9, label %gep.throw, label %gep.next, !dbg !3384

gep.next:                                         ; preds = %if.then1
  %10 = getelementptr inbounds %"internal/task.Task", ptr %6, i32 0, i32 4, !dbg !3384
  %11 = icmp eq ptr %10, null, !dbg !3385
  br i1 %11, label %gep.throw8, label %gep.next9, !dbg !3385

gep.next9:                                        ; preds = %gep.next
  %12 = getelementptr inbounds %"internal/task.state", ptr %10, i32 0, i32 1, !dbg !3385
  %13 = icmp eq ptr %12, null, !dbg !3385
  br i1 %13, label %deref.throw, label %deref.next, !dbg !3385

deref.next:                                       ; preds = %gep.next9
  %14 = load ptr, ptr %12, align 8, !dbg !3385
  call void @tinygo_task_send_gc_signal(ptr %14), !dbg !3386
  br label %if.done, !dbg !3369

if.done:                                          ; preds = %deref.next, %for.body
    #dbg_value(ptr %6, !3363, !DIExpression(), !3387)
  %15 = icmp eq ptr %6, null, !dbg !3388
  br i1 %15, label %gep.throw10, label %gep.next11, !dbg !3388

gep.next11:                                       ; preds = %if.done
  %16 = getelementptr inbounds %"internal/task.Task", ptr %6, i32 0, i32 4, !dbg !3388
  %17 = icmp eq ptr %16, null, !dbg !3389
  br i1 %17, label %gep.throw12, label %gep.next13, !dbg !3389

gep.next13:                                       ; preds = %gep.next11
  %18 = getelementptr inbounds %"internal/task.state", ptr %16, i32 0, i32 4, !dbg !3389
  %19 = icmp eq ptr %18, null, !dbg !3389
  br i1 %19, label %deref.throw14, label %deref.next15, !dbg !3389

deref.next15:                                     ; preds = %gep.next13
  %20 = load ptr, ptr %18, align 8, !dbg !3389
    #dbg_value(ptr %20, !3363, !DIExpression(), !3390)
  br label %for.loop, !dbg !3369

for.done:                                         ; preds = %for.loop
  call void @"(*internal/task.waitGroup).wait"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3391
  br label %if.done2, !dbg !3369

if.done2:                                         ; preds = %for.done, %entry
  %21 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !3392
    #dbg_value(ptr %21, !3362, !DIExpression(), !3392)
    #dbg_value(ptr %21, !3364, !DIExpression(), !3393)
  br label %for.loop3, !dbg !3369

for.loop3:                                        ; preds = %deref.next33, %if.done2
  %22 = phi ptr [ %21, %if.done2 ], [ %42, %deref.next33 ], !dbg !3393
    #dbg_value(ptr %22, !3364, !DIExpression(), !3394)
  %23 = icmp ne ptr %22, null, !dbg !3395
  br i1 %23, label %for.body4, label %for.done7, !dbg !3369

for.body4:                                        ; preds = %for.loop3
    #dbg_value(ptr %22, !3364, !DIExpression(), !3396)
    #dbg_value(ptr %0, !3359, !DIExpression(), !3397)
  %24 = icmp ne ptr %22, %0, !dbg !3398
  br i1 %24, label %if.then5, label %if.done6, !dbg !3369

if.then5:                                         ; preds = %for.body4
    #dbg_value(ptr %22, !3364, !DIExpression(), !3399)
  %25 = icmp eq ptr %22, null, !dbg !3400
  br i1 %25, label %gep.throw16, label %gep.next17, !dbg !3400

gep.next17:                                       ; preds = %if.then5
  %26 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3400
  %27 = icmp eq ptr %26, null, !dbg !3401
  br i1 %27, label %gep.throw18, label %gep.next19, !dbg !3401

gep.next19:                                       ; preds = %gep.next17
  %28 = getelementptr inbounds %"internal/task.state", ptr %26, i32 0, i32 3, !dbg !3401
  %29 = icmp eq ptr %28, null, !dbg !3401
  br i1 %29, label %deref.throw20, label %deref.next21, !dbg !3401

deref.next21:                                     ; preds = %gep.next19
  %30 = load i64, ptr %28, align 8, !dbg !3401
    #dbg_value(ptr %22, !3364, !DIExpression(), !3402)
  %31 = icmp eq ptr %22, null, !dbg !3403
  br i1 %31, label %gep.throw22, label %gep.next23, !dbg !3403

gep.next23:                                       ; preds = %deref.next21
  %32 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3403
  %33 = icmp eq ptr %32, null, !dbg !3404
  br i1 %33, label %gep.throw24, label %gep.next25, !dbg !3404

gep.next25:                                       ; preds = %gep.next23
  %34 = getelementptr inbounds %"internal/task.state", ptr %32, i32 0, i32 2, !dbg !3404
  %35 = icmp eq ptr %34, null, !dbg !3404
  br i1 %35, label %deref.throw26, label %deref.next27, !dbg !3404

deref.next27:                                     ; preds = %gep.next25
  %36 = load i64, ptr %34, align 8, !dbg !3404
  call void @runtime.markRoots(i64 %30, i64 %36, ptr undef), !dbg !3405
  br label %if.done6, !dbg !3369

if.done6:                                         ; preds = %deref.next27, %for.body4
    #dbg_value(ptr %22, !3364, !DIExpression(), !3406)
  %37 = icmp eq ptr %22, null, !dbg !3407
  br i1 %37, label %gep.throw28, label %gep.next29, !dbg !3407

gep.next29:                                       ; preds = %if.done6
  %38 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3407
  %39 = icmp eq ptr %38, null, !dbg !3408
  br i1 %39, label %gep.throw30, label %gep.next31, !dbg !3408

gep.next31:                                       ; preds = %gep.next29
  %40 = getelementptr inbounds %"internal/task.state", ptr %38, i32 0, i32 4, !dbg !3408
  %41 = icmp eq ptr %40, null, !dbg !3408
  br i1 %41, label %deref.throw32, label %deref.next33, !dbg !3408

deref.next33:                                     ; preds = %gep.next31
  %42 = load ptr, ptr %40, align 8, !dbg !3408
    #dbg_value(ptr %42, !3364, !DIExpression(), !3409)
  br label %for.loop3, !dbg !3369

for.done7:                                        ; preds = %for.loop3
  call void @tinygo_scanCurrentStack(), !dbg !3410
  call void @"internal/task.gcScanGlobals"(ptr undef), !dbg !3411
  ret void, !dbg !3412

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3384
  unreachable, !dbg !3384

gep.throw8:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3385
  unreachable, !dbg !3385

deref.throw:                                      ; preds = %gep.next9
  call void @runtime.nilPanic(ptr undef), !dbg !3385
  unreachable, !dbg !3385

gep.throw10:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3388
  unreachable, !dbg !3388

gep.throw12:                                      ; preds = %gep.next11
  call void @runtime.nilPanic(ptr undef), !dbg !3389
  unreachable, !dbg !3389

deref.throw14:                                    ; preds = %gep.next13
  call void @runtime.nilPanic(ptr undef), !dbg !3389
  unreachable, !dbg !3389

gep.throw16:                                      ; preds = %if.then5
  call void @runtime.nilPanic(ptr undef), !dbg !3400
  unreachable, !dbg !3400

gep.throw18:                                      ; preds = %gep.next17
  call void @runtime.nilPanic(ptr undef), !dbg !3401
  unreachable, !dbg !3401

deref.throw20:                                    ; preds = %gep.next19
  call void @runtime.nilPanic(ptr undef), !dbg !3401
  unreachable, !dbg !3401

gep.throw22:                                      ; preds = %deref.next21
  call void @runtime.nilPanic(ptr undef), !dbg !3403
  unreachable, !dbg !3403

gep.throw24:                                      ; preds = %gep.next23
  call void @runtime.nilPanic(ptr undef), !dbg !3404
  unreachable, !dbg !3404

deref.throw26:                                    ; preds = %gep.next25
  call void @runtime.nilPanic(ptr undef), !dbg !3404
  unreachable, !dbg !3404

gep.throw28:                                      ; preds = %if.done6
  call void @runtime.nilPanic(ptr undef), !dbg !3407
  unreachable, !dbg !3407

gep.throw30:                                      ; preds = %gep.next29
  call void @runtime.nilPanic(ptr undef), !dbg !3408
  unreachable, !dbg !3408

deref.throw32:                                    ; preds = %gep.next31
  call void @runtime.nilPanic(ptr undef), !dbg !3408
  unreachable, !dbg !3408
}

declare void @tinygo_task_send_gc_signal(ptr nocapture) #2

declare void @tinygo_scanCurrentStack() #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.GCResumeWorld"(ptr %context) #1 !dbg !3413 {
entry:
  %0 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3417
  %1 = icmp eq i32 %0, 0, !dbg !3418
  br i1 %1, label %if.then, label %if.done, !dbg !3419

if.then:                                          ; preds = %entry
  ret void, !dbg !3420

if.done:                                          ; preds = %entry
  %2 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3421
    #dbg_value(i32 %2, !3415, !DIExpression(), !3421)
  %3 = call %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %2, ptr undef), !dbg !3422
  store %"internal/task.Semaphore" %3, ptr @"internal/task.scanWaitGroup", align 4, !dbg !3423
    #dbg_value(%"internal/task.Semaphore" %3, !3416, !DIExpression(), !3423)
  call void @"(*sync/atomic.Uint32).Store"(ptr @"internal/task.gcState", i32 0, ptr undef), !dbg !3424
  call void @"(*internal/futex.Futex).WakeAll"(ptr @"internal/task.gcState", ptr undef), !dbg !3425
  call void @"(*internal/task.Mutex).Unlock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3426
  ret void, !dbg !3427
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_gc_pause(i32 %sig) #1 !dbg !3428 {
entry:
    #dbg_value(i32 %sig, !3432, !DIExpression(), !3434)
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3435
  %1 = icmp eq ptr %0, null, !dbg !3436
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3436

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3436
  %3 = call ptr @runtime.stacksave(ptr undef), !dbg !3437
  %4 = ptrtoint ptr %3 to i64, !dbg !3438
  %5 = icmp eq ptr %2, null, !dbg !3439
  br i1 %5, label %gep.throw1, label %gep.next2, !dbg !3439

gep.next2:                                        ; preds = %gep.next
  %6 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 3, !dbg !3439
  %7 = icmp eq ptr %6, null, !dbg !3439
  br i1 %7, label %store.throw, label %store.next, !dbg !3439

store.next:                                       ; preds = %gep.next2
  store i64 %4, ptr %6, align 8, !dbg !3439
    #dbg_value(i64 %4, !3433, !DIExpression(), !3439)
  call void @"(*internal/task.waitGroup).done"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3440
  br label %for.loop, !dbg !3441

for.loop:                                         ; preds = %for.body, %store.next
  %8 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3442
  %9 = icmp eq i32 %8, 1, !dbg !3443
  br i1 %9, label %for.body, label %for.done, !dbg !3441

for.body:                                         ; preds = %for.loop
  %10 = call i1 @"(*internal/futex.Futex).Wait"(ptr @"internal/task.gcState", i32 1, ptr undef), !dbg !3444
  br label %for.loop, !dbg !3441

for.done:                                         ; preds = %for.loop
  call void @"(*internal/task.waitGroup).done"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3445
  ret void, !dbg !3446

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3436
  unreachable, !dbg !3436

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3439
  unreachable, !dbg !3439

store.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3439
  unreachable, !dbg !3439
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"internal/task.StackTop"(ptr %context) #1 !dbg !3447 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3448
  %1 = icmp eq ptr %0, null, !dbg !3449
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3449

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3449
  %3 = icmp eq ptr %2, null, !dbg !3450
  br i1 %3, label %gep.throw1, label %gep.next2, !dbg !3450

gep.next2:                                        ; preds = %gep.next
  %4 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 2, !dbg !3450
  %5 = icmp eq ptr %4, null, !dbg !3450
  br i1 %5, label %deref.throw, label %deref.next, !dbg !3450

deref.next:                                       ; preds = %gep.next2
  %6 = load i64, ptr %4, align 8, !dbg !3450
  ret i64 %6, !dbg !3451

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3449
  unreachable, !dbg !3449

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3450
  unreachable, !dbg !3450

deref.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3450
  unreachable, !dbg !3450
}

; Function Attrs: noinline nounwind allockind("alloc,zeroed") allocsize(0) uwtable(sync)
define internal noalias nonnull ptr @runtime.alloc(i64 %size, ptr %layout, ptr %context) #4 !dbg !3452 {
entry:
    #dbg_value(i64 %size, !3456, !DIExpression(), !3459)
    #dbg_value(ptr %layout, !3457, !DIExpression(), !3459)
    #dbg_value(i64 %size, !3456, !DIExpression(), !3460)
  %0 = icmp eq i64 %size, 0, !dbg !3461
  br i1 %0, label %if.then, label %if.done, !dbg !3462

if.then:                                          ; preds = %entry
  ret ptr @runtime.zeroSizedAlloc, !dbg !3463

if.done:                                          ; preds = %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @runtime.gcLock, ptr undef), !dbg !3464
    #dbg_value(ptr null, !3458, !DIExpression(), !3465)
    #dbg_value(ptr %layout, !3457, !DIExpression(), !3466)
  %1 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !3467
  %2 = icmp eq ptr %layout, %1, !dbg !3468
  br i1 %2, label %if.then1, label %if.else, !dbg !3462

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %size, !3456, !DIExpression(), !3469)
  %3 = call ptr @GC_malloc_atomic(i64 %size), !dbg !3470
    #dbg_value(ptr %3, !3458, !DIExpression(), !3471)
    #dbg_value(ptr %3, !3458, !DIExpression(), !3472)
    #dbg_value(i64 %size, !3456, !DIExpression(), !3473)
  call void @runtime.memzero(ptr %3, i64 %size, ptr undef), !dbg !3474
  br label %if.done2, !dbg !3462

if.done2:                                         ; preds = %if.else, %if.then1
  %4 = phi ptr [ %3, %if.then1 ], [ %6, %if.else ], !dbg !3465
  call void @runtime.gcResumeWorld(ptr undef), !dbg !3475
  call void @"(*internal/task.Mutex).Unlock"(ptr @runtime.gcLock, ptr undef), !dbg !3476
    #dbg_value(ptr %4, !3458, !DIExpression(), !3477)
  %5 = icmp eq ptr %4, null, !dbg !3478
  br i1 %5, label %if.then3, label %if.done4, !dbg !3462

if.then3:                                         ; preds = %if.done2
  call void @runtime.runtimePanic(ptr @"runtime$string.7", i64 17, ptr undef), !dbg !3479
  br label %if.done4, !dbg !3462

if.done4:                                         ; preds = %if.then3, %if.done2
    #dbg_value(ptr %4, !3458, !DIExpression(), !3480)
  ret ptr %4, !dbg !3481

if.else:                                          ; preds = %if.done
    #dbg_value(i64 %size, !3456, !DIExpression(), !3482)
  %6 = call ptr @GC_malloc(i64 %size), !dbg !3483
    #dbg_value(ptr %6, !3458, !DIExpression(), !3484)
  br label %if.done2, !dbg !3462
}

declare ptr @GC_malloc_atomic(i64) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memzero(ptr %ptr, i64 %size, ptr %context) #1 !dbg !3485 {
entry:
    #dbg_value(ptr %ptr, !3489, !DIExpression(), !3491)
    #dbg_value(i64 %size, !3490, !DIExpression(), !3491)
  call void @llvm.memset.p0.i64(ptr %ptr, i8 0, i64 %size, i1 false), !dbg !3491
  ret void, !dbg !3491
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.gcResumeWorld(ptr %context) unnamed_addr #1 !dbg !3492 {
entry:
  call void @"internal/task.GCResumeWorld"(ptr undef), !dbg !3494
  ret void, !dbg !3495
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.runtimePanic(ptr readonly %msg.data, i64 %msg.len, ptr %context) #1 !dbg !3496 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %msg.data, 0, !dbg !3499
  %1 = insertvalue %runtime._string %0, i64 %msg.len, 1, !dbg !3499
    #dbg_value(ptr %msg.data, !3498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3499)
    #dbg_value(i64 %msg.len, !3498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3499)
  %2 = call ptr @llvm.returnaddress(i32 0), !dbg !3500
    #dbg_value(%runtime._string %1, !3498, !DIExpression(), !3501)
  %3 = extractvalue %runtime._string %1, 0, !dbg !3502
  %4 = extractvalue %runtime._string %1, 1, !dbg !3502
  call void @runtime.runtimePanicAt(ptr %2, ptr %3, i64 %4, ptr undef), !dbg !3502
  ret void, !dbg !3503
}

declare ptr @GC_malloc(i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.runtimePanicAt(ptr %addr, ptr readonly %msg.data, i64 %msg.len, ptr %context) unnamed_addr #1 !dbg !3504 {
entry:
    #dbg_value(ptr %addr, !3508, !DIExpression(), !3510)
  %0 = insertvalue %runtime._string zeroinitializer, ptr %msg.data, 0, !dbg !3510
  %1 = insertvalue %runtime._string %0, i64 %msg.len, 1, !dbg !3510
    #dbg_value(ptr %msg.data, !3509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3510)
    #dbg_value(i64 %msg.len, !3509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3510)
  br i1 false, label %if.then, label %if.done, !dbg !3511

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !3512
  br label %if.done, !dbg !3511

if.done:                                          ; preds = %if.then, %entry
  br i1 true, label %if.then1, label %if.else, !dbg !3511

if.then1:                                         ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.13", i64 24, ptr undef), !dbg !3513
    #dbg_value(ptr %addr, !3508, !DIExpression(), !3514)
  %2 = ptrtoint ptr %addr to i64, !dbg !3515
  %3 = sub i64 %2, 5, !dbg !3516
  call void @runtime.printptr(i64 %3, ptr undef), !dbg !3517
  call void @runtime.printstring(ptr @"runtime$string.14", i64 2, ptr undef), !dbg !3518
  br label %if.done2, !dbg !3511

if.done2:                                         ; preds = %if.else, %if.then1
    #dbg_value(%runtime._string %1, !3509, !DIExpression(), !3519)
  %4 = extractvalue %runtime._string %1, 0, !dbg !3520
  %5 = extractvalue %runtime._string %1, 1, !dbg !3520
  call void @runtime.printstring(ptr %4, i64 %5, ptr undef), !dbg !3520
  call void @runtime.printnl(ptr undef), !dbg !3521
  call void @abort(), !dbg !3522
  ret void, !dbg !3523

if.else:                                          ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.15", i64 22, ptr undef), !dbg !3524
  br label %if.done2, !dbg !3511
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printstring(ptr readonly %s.data, i64 %s.len, ptr %context) #1 !dbg !3525 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !3529
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !3529
    #dbg_value(ptr %s.data, !3527, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3529)
    #dbg_value(i64 %s.len, !3527, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3529)
    #dbg_value(i64 0, !3528, !DIExpression(), !3530)
  br label %for.loop, !dbg !3531

for.loop:                                         ; preds = %for.body, %entry
  %2 = phi i64 [ 0, %entry ], [ %7, %for.body ], !dbg !3530
    #dbg_value(i64 %2, !3528, !DIExpression(), !3532)
    #dbg_value(%runtime._string %1, !3527, !DIExpression(), !3533)
  %len = extractvalue %runtime._string %1, 1, !dbg !3534
  %3 = icmp slt i64 %2, %len, !dbg !3535
  br i1 %3, label %for.body, label %for.done, !dbg !3531

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !3528, !DIExpression(), !3536)
    #dbg_value(%runtime._string %1, !3527, !DIExpression(), !3537)
  %len1 = extractvalue %runtime._string %1, 1, !dbg !3538
  %4 = extractvalue %runtime._string %1, 0, !dbg !3538
  %5 = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !3538
  %6 = load i8, ptr %5, align 1, !dbg !3538
  call void @runtime.putchar(i8 %6, ptr undef), !dbg !3539
  %7 = add i64 %2, 1, !dbg !3540
    #dbg_value(i64 %7, !3528, !DIExpression(), !3540)
  br label %for.loop, !dbg !3531

for.done:                                         ; preds = %for.loop
  ret void, !dbg !3541
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printptr(i64 %ptr, ptr %context) #1 !dbg !3542 {
entry:
    #dbg_value(i64 %ptr, !3544, !DIExpression(), !3547)
    #dbg_value(i64 %ptr, !3544, !DIExpression(), !3548)
  %0 = icmp eq i64 %ptr, 0, !dbg !3549
  br i1 %0, label %if.then, label %if.done, !dbg !3550

if.then:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.45", i64 3, ptr undef), !dbg !3551
  ret void, !dbg !3552

if.done:                                          ; preds = %entry
  call void @runtime.putchar(i8 48, ptr undef), !dbg !3553
  call void @runtime.putchar(i8 120, ptr undef), !dbg !3554
    #dbg_value(i64 0, !3545, !DIExpression(), !3555)
  br label %for.loop, !dbg !3550

for.loop:                                         ; preds = %if.done2, %if.done
  %1 = phi i64 [ %ptr, %if.done ], [ %shift.result3, %if.done2 ], !dbg !3556
  %2 = phi i64 [ 0, %if.done ], [ %9, %if.done2 ], !dbg !3555
    #dbg_value(i64 %2, !3545, !DIExpression(), !3557)
  %3 = icmp slt i64 %2, 16, !dbg !3558
  br i1 %3, label %for.body, label %for.done, !dbg !3550

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !3544, !DIExpression(), !3559)
  %4 = lshr i64 %1, 60, !dbg !3560
  %shift.result = select i1 false, i64 0, i64 %4, !dbg !3560
  %5 = trunc i64 %shift.result to i8, !dbg !3561
    #dbg_value(i8 %5, !3546, !DIExpression(), !3562)
    #dbg_value(i8 %5, !3546, !DIExpression(), !3563)
  %6 = icmp ult i8 %5, 10, !dbg !3564
  br i1 %6, label %if.then1, label %if.else, !dbg !3550

if.then1:                                         ; preds = %for.body
    #dbg_value(i8 %5, !3546, !DIExpression(), !3565)
  %7 = add i8 %5, 48, !dbg !3566
  call void @runtime.putchar(i8 %7, ptr undef), !dbg !3567
  br label %if.done2, !dbg !3550

if.done2:                                         ; preds = %if.else, %if.then1
  %8 = shl i64 %1, 4, !dbg !3568
  %shift.result3 = select i1 false, i64 0, i64 %8, !dbg !3568
    #dbg_value(i64 %shift.result3, !3544, !DIExpression(), !3568)
  %9 = add i64 %2, 1, !dbg !3569
    #dbg_value(i64 %9, !3545, !DIExpression(), !3569)
  br label %for.loop, !dbg !3550

if.else:                                          ; preds = %for.body
    #dbg_value(i8 %5, !3546, !DIExpression(), !3570)
  %10 = sub i8 %5, 10, !dbg !3571
  %11 = add i8 %10, 97, !dbg !3572
  call void @runtime.putchar(i8 %11, ptr undef), !dbg !3573
  br label %if.done2, !dbg !3550

for.done:                                         ; preds = %for.loop
  ret void, !dbg !3574
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printnl(ptr %context) #1 !dbg !3575 {
entry:
  br i1 false, label %if.then, label %if.done, !dbg !3576

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 13, ptr undef), !dbg !3577
  br label %if.done, !dbg !3576

if.done:                                          ; preds = %if.then, %entry
  call void @runtime.putchar(i8 10, ptr undef), !dbg !3578
  ret void, !dbg !3579
}

; Function Attrs: noreturn
declare void @abort() #7

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.putchar(i8 %c, ptr %context) unnamed_addr #1 !dbg !3580 {
entry:
    #dbg_value(i8 %c, !3584, !DIExpression(), !3585)
  %buf = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3586
  %0 = getelementptr inbounds [1 x i8], ptr %buf, i32 0, i64 0, !dbg !3586
    #dbg_value(i8 %c, !3584, !DIExpression(), !3587)
  store i8 %c, ptr %0, align 1, !dbg !3587
    #dbg_value(i8 %c, !3584, !DIExpression(), !3587)
  %1 = getelementptr inbounds [1 x i8], ptr %buf, i32 0, i64 0, !dbg !3588
  %2 = call i64 @write(i32 1, ptr %1, i64 1), !dbg !3589
  ret void, !dbg !3590
}

declare i64 @write(i32, ptr nocapture, i64) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.initRand(ptr %context) unnamed_addr #1 !dbg !3591 {
entry:
  %0 = call { i64, i1 } @runtime.hardwareRand(ptr undef), !dbg !3596
  %1 = extractvalue { i64, i1 } %0, 0, !dbg !3596
    #dbg_value(i64 %1, !3593, !DIExpression(), !3597)
  %2 = extractvalue { i64, i1 } %0, 1, !dbg !3596
    #dbg_value(i64 %1, !3593, !DIExpression(), !3598)
  %3 = or i64 %1, 1, !dbg !3599
  store i64 %3, ptr @runtime.xorshift64State, align 8, !dbg !3600
    #dbg_value(i64 %3, !3594, !DIExpression(), !3600)
  %4 = load i64, ptr @runtime.xorshift64State, align 8, !dbg !3601
    #dbg_value(i64 %4, !3594, !DIExpression(), !3601)
  %5 = trunc i64 %4 to i32, !dbg !3602
  store i32 %5, ptr @runtime.xorshift32State, align 4, !dbg !3603
    #dbg_value(i32 %5, !3595, !DIExpression(), !3603)
  ret void, !dbg !3604
}

; Function Attrs: nounwind uwtable(sync)
define internal { i64, i1 } @runtime.hardwareRand(ptr %context) unnamed_addr #1 !dbg !3605 {
entry:
  %n = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3610
  %0 = call i32 @getrandom(ptr %n, i64 8, i32 0), !dbg !3611
    #dbg_value(i32 %0, !3608, !DIExpression(), !3612)
    #dbg_value(i32 %0, !3608, !DIExpression(), !3613)
  %1 = icmp ne i32 %0, 8, !dbg !3614
  br i1 %1, label %if.then, label %if.done, !dbg !3615

if.then:                                          ; preds = %entry
  store i64 0, ptr %n, align 8, !dbg !3616
  %2 = load i64, ptr %n, align 8, !dbg !3615
  %3 = insertvalue { i64, i1 } zeroinitializer, i64 %2, 0, !dbg !3616
  %4 = insertvalue { i64, i1 } %3, i1 false, 1, !dbg !3616
  ret { i64, i1 } %4, !dbg !3616

if.done:                                          ; preds = %entry
  %5 = load i64, ptr %n, align 8, !dbg !3617
    #dbg_value(i64 %5, !3609, !DIExpression(), !3617)
  store i64 %5, ptr %n, align 8, !dbg !3618
  %6 = load i64, ptr %n, align 8, !dbg !3615
  %7 = insertvalue { i64, i1 } zeroinitializer, i64 %6, 0, !dbg !3618
  %8 = insertvalue { i64, i1 } %7, i1 true, 1, !dbg !3618
  ret { i64, i1 } %8, !dbg !3618
}

declare i32 @getrandom(ptr nocapture, i64, i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal i64 @runtime.getCurrentStackPointer(ptr %context) unnamed_addr #1 !dbg !3619 {
entry:
  %0 = call ptr @runtime.stacksave(ptr undef), !dbg !3621
  %1 = ptrtoint ptr %0 to i64, !dbg !3622
  ret i64 %1, !dbg !3623
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @runtime.stacksave(ptr %context) #1 !dbg !3624 {
entry:
  %0 = call ptr @llvm.stacksave.p0(), !dbg !3625
  ret ptr %0, !dbg !3625
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #9

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memcpy(ptr %dst, ptr %src, i64 %size, ptr %context) #1 !dbg !3626 {
entry:
    #dbg_value(ptr %dst, !3630, !DIExpression(), !3633)
    #dbg_value(ptr %src, !3631, !DIExpression(), !3633)
    #dbg_value(i64 %size, !3632, !DIExpression(), !3633)
  call void @llvm.memcpy.p0.p0.i64(ptr %dst, ptr %src, i64 %size, i1 false), !dbg !3633
  ret void, !dbg !3633
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.nilPanic(ptr %context) #1 !dbg !3634 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !3635
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.17", i64 23, ptr undef), !dbg !3636
  ret void, !dbg !3637
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.deadlock(ptr %context) unnamed_addr #1 !dbg !3638 {
entry:
  call void @"internal/task.Pause"(ptr undef), !dbg !3639
  ret void, !dbg !3640
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.lookupPanic(ptr %context) #1 !dbg !3641 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !3642
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.19", i64 18, ptr undef), !dbg !3643
  ret void, !dbg !3644
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.panicOrGoexit(ptr %message.typecode, ptr %message.value, i8 %panicking, ptr %context) unnamed_addr #1 !dbg !3645 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %message.typecode, 0, !dbg !3665
  %1 = insertvalue { ptr, ptr } %0, ptr %message.value, 1, !dbg !3665
    #dbg_value(ptr %message.typecode, !3650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3665)
    #dbg_value(ptr %message.value, !3650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3665)
    #dbg_value(i8 %panicking, !3651, !DIExpression(), !3665)
  br i1 false, label %if.then, label %if.done, !dbg !3666

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !3667
  br label %if.done, !dbg !3666

if.done:                                          ; preds = %if.then, %entry
  br i1 true, label %cond.true, label %if.done3, !dbg !3666

cond.true:                                        ; preds = %if.done
  %2 = call i1 @"runtime/interrupt.In"(ptr undef), !dbg !3668
  br i1 %2, label %if.done3, label %if.then1, !dbg !3666

if.then1:                                         ; preds = %cond.true
  %3 = call ptr @"internal/task.Current"(ptr undef), !dbg !3669
  %4 = icmp eq ptr %3, null, !dbg !3670
  br i1 %4, label %gep.throw, label %gep.next, !dbg !3670

gep.next:                                         ; preds = %if.then1
  %5 = getelementptr inbounds %"internal/task.Task", ptr %3, i32 0, i32 8, !dbg !3670
  %6 = icmp eq ptr %5, null, !dbg !3670
  br i1 %6, label %deref.throw, label %deref.next, !dbg !3670

deref.next:                                       ; preds = %gep.next
  %7 = load ptr, ptr %5, align 8, !dbg !3670
    #dbg_value(ptr %7, !3652, !DIExpression(), !3671)
    #dbg_value(ptr %7, !3652, !DIExpression(), !3672)
  %8 = icmp ne ptr %7, null, !dbg !3673
  br i1 %8, label %if.then2, label %if.done3, !dbg !3666

if.then2:                                         ; preds = %deref.next
    #dbg_value(ptr %7, !3652, !DIExpression(), !3674)
    #dbg_value({ ptr, ptr } %1, !3650, !DIExpression(), !3675)
  %9 = getelementptr inbounds %runtime.deferFrame, ptr %7, i32 0, i32 5, !dbg !3676
  %10 = icmp eq ptr %9, null, !dbg !3676
  br i1 %10, label %store.throw, label %store.next, !dbg !3676

store.next:                                       ; preds = %if.then2
  store { ptr, ptr } %1, ptr %9, align 8, !dbg !3676
    #dbg_value({ ptr, ptr } %1, !3663, !DIExpression(), !3676)
    #dbg_value(ptr %7, !3652, !DIExpression(), !3677)
    #dbg_value(i8 %panicking, !3651, !DIExpression(), !3678)
  %11 = getelementptr inbounds %runtime.deferFrame, ptr %7, i32 0, i32 4, !dbg !3679
  %12 = icmp eq ptr %11, null, !dbg !3679
  br i1 %12, label %store.throw6, label %store.next7, !dbg !3679

store.next7:                                      ; preds = %store.next
  store i8 %panicking, ptr %11, align 1, !dbg !3679
    #dbg_value(i8 %panicking, !3664, !DIExpression(), !3679)
    #dbg_value(ptr %7, !3652, !DIExpression(), !3680)
  call void @tinygo_longjmp(ptr %7), !dbg !3681
  br label %if.done3, !dbg !3666

if.done3:                                         ; preds = %store.next7, %deref.next, %cond.true, %if.done
    #dbg_value(i8 %panicking, !3651, !DIExpression(), !3682)
  %13 = icmp eq i8 %panicking, 2, !dbg !3683
  br i1 %13, label %if.then4, label %if.done5, !dbg !3666

if.then4:                                         ; preds = %if.done3
  call void @runtime.deadlock(ptr undef), !dbg !3684
  br label %if.done5, !dbg !3666

if.done5:                                         ; preds = %if.then4, %if.done3
  call void @runtime.printstring(ptr @"runtime$string.12", i64 7, ptr undef), !dbg !3685
    #dbg_value({ ptr, ptr } %1, !3650, !DIExpression(), !3686)
  %14 = extractvalue { ptr, ptr } %1, 0, !dbg !3687
  %15 = extractvalue { ptr, ptr } %1, 1, !dbg !3687
  call void @runtime.printitf(ptr %14, ptr %15, ptr undef), !dbg !3687
  call void @runtime.printnl(ptr undef), !dbg !3688
  call void @abort(), !dbg !3689
  ret void, !dbg !3690

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3670
  unreachable, !dbg !3670

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3670
  unreachable, !dbg !3670

store.throw:                                      ; preds = %if.then2
  call void @runtime.nilPanic(ptr undef), !dbg !3676
  unreachable, !dbg !3676

store.throw6:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !3679
  unreachable, !dbg !3679
}

declare void @tinygo_longjmp(ptr nocapture dereferenceable_or_null(48)) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printitf(ptr %msg.typecode, ptr %msg.value, ptr %context) unnamed_addr #1 !dbg !3691 {
entry:
  %itf = alloca { ptr, ptr }, align 8, !dbg !3721
  %unpack.raw.alloc136 = alloca ptr, align 8, !dbg !3721
  %unpack.raw.alloc129 = alloca ptr, align 8, !dbg !3721
  %unpack.raw.alloc = alloca ptr, align 8, !dbg !3721
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %msg.typecode, 0, !dbg !3721
  %1 = insertvalue { ptr, ptr } %0, ptr %msg.value, 1, !dbg !3721
    #dbg_value(ptr %msg.typecode, !3695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3721)
    #dbg_value(ptr %msg.value, !3695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3721)
    #dbg_value({ ptr, ptr } %1, !3695, !DIExpression(), !3722)
  %interface.type = extractvalue { ptr, ptr } %1, 0, !dbg !3723
  br i1 false, label %typeassert.ok, label %typeassert.next, !dbg !3723

typeassert.next:                                  ; preds = %typeassert.ok, %entry
  %typeassert.value = phi i1 [ false, %entry ], [ %unpack.int, %typeassert.ok ], !dbg !3723
  %2 = insertvalue { i1, i1 } undef, i1 %typeassert.value, 0, !dbg !3723
  %3 = insertvalue { i1, i1 } %2, i1 false, 1, !dbg !3723
  %4 = extractvalue { i1, i1 } %3, 0, !dbg !3723
  %5 = extractvalue { i1, i1 } %3, 1, !dbg !3723
  br i1 %5, label %typeswitch.body, label %typeswitch.next, !dbg !3724

typeassert.ok:                                    ; preds = %entry
  %typeassert.value.ptr = extractvalue { ptr, ptr } %1, 1, !dbg !3723
  %unpack.int = ptrtoint ptr %typeassert.value.ptr to i1, !dbg !3723
  br label %typeassert.next, !dbg !3723

typeswitch.body:                                  ; preds = %typeassert.next
    #dbg_value(i1 %4, !3696, !DIExpression(), !3725)
  call void @runtime.printbool(i1 %4, ptr undef), !dbg !3726
  br label %typeswitch.done, !dbg !3724

typeswitch.done:                                  ; preds = %deref.next161, %typeswitch.body39, %typeswitch.body37, %typeswitch.body35, %typeswitch.body33, %typeswitch.body31, %typeswitch.body29, %typeswitch.body27, %typeswitch.body25, %typeswitch.body23, %typeswitch.body21, %typeswitch.body19, %typeswitch.body17, %switch.body15, %switch.next14, %switch.body13, %typeswitch.body10, %typeswitch.body8, %typeswitch.body6, %typeswitch.body4, %switch.body2, %switch.next, %switch.body, %typeswitch.body
  ret void, !dbg !3727

typeswitch.next:                                  ; preds = %typeassert.next
  %interface.type41 = extractvalue { ptr, ptr } %1, 0, !dbg !3728
  br i1 false, label %typeassert.ok43, label %typeassert.next44, !dbg !3728

typeassert.next44:                                ; preds = %typeassert.ok43, %typeswitch.next
  %typeassert.value47 = phi i64 [ 0, %typeswitch.next ], [ %unpack.int46, %typeassert.ok43 ], !dbg !3728
  %6 = insertvalue { i64, i1 } undef, i64 %typeassert.value47, 0, !dbg !3728
  %7 = insertvalue { i64, i1 } %6, i1 false, 1, !dbg !3728
  %8 = extractvalue { i64, i1 } %7, 0, !dbg !3728
  %9 = extractvalue { i64, i1 } %7, 1, !dbg !3728
  br i1 %9, label %typeswitch.body1, label %typeswitch.next3, !dbg !3724

typeassert.ok43:                                  ; preds = %typeswitch.next
  %typeassert.value.ptr45 = extractvalue { ptr, ptr } %1, 1, !dbg !3728
  %unpack.int46 = ptrtoint ptr %typeassert.value.ptr45 to i64, !dbg !3728
  br label %typeassert.next44, !dbg !3728

typeswitch.body1:                                 ; preds = %typeassert.next44
  br i1 true, label %switch.body, label %switch.next, !dbg !3724

switch.body:                                      ; preds = %typeswitch.body1
    #dbg_value(i64 %8, !3697, !DIExpression(), !3729)
  call void @runtime.printint64(i64 %8, ptr undef), !dbg !3730
  br label %typeswitch.done, !dbg !3724

switch.next:                                      ; preds = %typeswitch.body1
  br i1 false, label %switch.body2, label %typeswitch.done, !dbg !3724

switch.body2:                                     ; preds = %switch.next
    #dbg_value(i64 %8, !3697, !DIExpression(), !3731)
  %10 = trunc i64 %8 to i32, !dbg !3732
  call void @runtime.printint32(i32 %10, ptr undef), !dbg !3733
  br label %typeswitch.done, !dbg !3724

typeswitch.next3:                                 ; preds = %typeassert.next44
  %interface.type48 = extractvalue { ptr, ptr } %1, 0, !dbg !3734
  br i1 false, label %typeassert.ok50, label %typeassert.next51, !dbg !3734

typeassert.next51:                                ; preds = %typeassert.ok50, %typeswitch.next3
  %typeassert.value54 = phi i8 [ 0, %typeswitch.next3 ], [ %unpack.int53, %typeassert.ok50 ], !dbg !3734
  %11 = insertvalue { i8, i1 } undef, i8 %typeassert.value54, 0, !dbg !3734
  %12 = insertvalue { i8, i1 } %11, i1 false, 1, !dbg !3734
  %13 = extractvalue { i8, i1 } %12, 0, !dbg !3734
  %14 = extractvalue { i8, i1 } %12, 1, !dbg !3734
  br i1 %14, label %typeswitch.body4, label %typeswitch.next5, !dbg !3724

typeassert.ok50:                                  ; preds = %typeswitch.next3
  %typeassert.value.ptr52 = extractvalue { ptr, ptr } %1, 1, !dbg !3734
  %unpack.int53 = ptrtoint ptr %typeassert.value.ptr52 to i8, !dbg !3734
  br label %typeassert.next51, !dbg !3734

typeswitch.body4:                                 ; preds = %typeassert.next51
    #dbg_value(i8 %13, !3698, !DIExpression(), !3735)
  call void @runtime.printint8(i8 %13, ptr undef), !dbg !3736
  br label %typeswitch.done, !dbg !3724

typeswitch.next5:                                 ; preds = %typeassert.next51
  %interface.type55 = extractvalue { ptr, ptr } %1, 0, !dbg !3737
  br i1 false, label %typeassert.ok57, label %typeassert.next58, !dbg !3737

typeassert.next58:                                ; preds = %typeassert.ok57, %typeswitch.next5
  %typeassert.value61 = phi i16 [ 0, %typeswitch.next5 ], [ %unpack.int60, %typeassert.ok57 ], !dbg !3737
  %15 = insertvalue { i16, i1 } undef, i16 %typeassert.value61, 0, !dbg !3737
  %16 = insertvalue { i16, i1 } %15, i1 false, 1, !dbg !3737
  %17 = extractvalue { i16, i1 } %16, 0, !dbg !3737
  %18 = extractvalue { i16, i1 } %16, 1, !dbg !3737
  br i1 %18, label %typeswitch.body6, label %typeswitch.next7, !dbg !3724

typeassert.ok57:                                  ; preds = %typeswitch.next5
  %typeassert.value.ptr59 = extractvalue { ptr, ptr } %1, 1, !dbg !3737
  %unpack.int60 = ptrtoint ptr %typeassert.value.ptr59 to i16, !dbg !3737
  br label %typeassert.next58, !dbg !3737

typeswitch.body6:                                 ; preds = %typeassert.next58
    #dbg_value(i16 %17, !3699, !DIExpression(), !3738)
  call void @runtime.printint16(i16 %17, ptr undef), !dbg !3739
  br label %typeswitch.done, !dbg !3724

typeswitch.next7:                                 ; preds = %typeassert.next58
  %interface.type62 = extractvalue { ptr, ptr } %1, 0, !dbg !3740
  br i1 false, label %typeassert.ok64, label %typeassert.next65, !dbg !3740

typeassert.next65:                                ; preds = %typeassert.ok64, %typeswitch.next7
  %typeassert.value68 = phi i32 [ 0, %typeswitch.next7 ], [ %unpack.int67, %typeassert.ok64 ], !dbg !3740
  %19 = insertvalue { i32, i1 } undef, i32 %typeassert.value68, 0, !dbg !3740
  %20 = insertvalue { i32, i1 } %19, i1 false, 1, !dbg !3740
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !3740
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !3740
  br i1 %22, label %typeswitch.body8, label %typeswitch.next9, !dbg !3724

typeassert.ok64:                                  ; preds = %typeswitch.next7
  %typeassert.value.ptr66 = extractvalue { ptr, ptr } %1, 1, !dbg !3740
  %unpack.int67 = ptrtoint ptr %typeassert.value.ptr66 to i32, !dbg !3740
  br label %typeassert.next65, !dbg !3740

typeswitch.body8:                                 ; preds = %typeassert.next65
    #dbg_value(i32 %21, !3701, !DIExpression(), !3741)
  call void @runtime.printint32(i32 %21, ptr undef), !dbg !3742
  br label %typeswitch.done, !dbg !3724

typeswitch.next9:                                 ; preds = %typeassert.next65
  %interface.type69 = extractvalue { ptr, ptr } %1, 0, !dbg !3743
  br i1 false, label %typeassert.ok71, label %typeassert.next72, !dbg !3743

typeassert.next72:                                ; preds = %typeassert.ok71, %typeswitch.next9
  %typeassert.value75 = phi i64 [ 0, %typeswitch.next9 ], [ %unpack.int74, %typeassert.ok71 ], !dbg !3743
  %23 = insertvalue { i64, i1 } undef, i64 %typeassert.value75, 0, !dbg !3743
  %24 = insertvalue { i64, i1 } %23, i1 false, 1, !dbg !3743
  %25 = extractvalue { i64, i1 } %24, 0, !dbg !3743
  %26 = extractvalue { i64, i1 } %24, 1, !dbg !3743
  br i1 %26, label %typeswitch.body10, label %typeswitch.next11, !dbg !3724

typeassert.ok71:                                  ; preds = %typeswitch.next9
  %typeassert.value.ptr73 = extractvalue { ptr, ptr } %1, 1, !dbg !3743
  %unpack.int74 = ptrtoint ptr %typeassert.value.ptr73 to i64, !dbg !3743
  br label %typeassert.next72, !dbg !3743

typeswitch.body10:                                ; preds = %typeassert.next72
    #dbg_value(i64 %25, !3702, !DIExpression(), !3744)
  call void @runtime.printint64(i64 %25, ptr undef), !dbg !3745
  br label %typeswitch.done, !dbg !3724

typeswitch.next11:                                ; preds = %typeassert.next72
  %interface.type76 = extractvalue { ptr, ptr } %1, 0, !dbg !3746
  br i1 false, label %typeassert.ok78, label %typeassert.next79, !dbg !3746

typeassert.next79:                                ; preds = %typeassert.ok78, %typeswitch.next11
  %typeassert.value82 = phi i64 [ 0, %typeswitch.next11 ], [ %unpack.int81, %typeassert.ok78 ], !dbg !3746
  %27 = insertvalue { i64, i1 } undef, i64 %typeassert.value82, 0, !dbg !3746
  %28 = insertvalue { i64, i1 } %27, i1 false, 1, !dbg !3746
  %29 = extractvalue { i64, i1 } %28, 0, !dbg !3746
  %30 = extractvalue { i64, i1 } %28, 1, !dbg !3746
  br i1 %30, label %typeswitch.body12, label %typeswitch.next16, !dbg !3724

typeassert.ok78:                                  ; preds = %typeswitch.next11
  %typeassert.value.ptr80 = extractvalue { ptr, ptr } %1, 1, !dbg !3746
  %unpack.int81 = ptrtoint ptr %typeassert.value.ptr80 to i64, !dbg !3746
  br label %typeassert.next79, !dbg !3746

typeswitch.body12:                                ; preds = %typeassert.next79
  br i1 true, label %switch.body13, label %switch.next14, !dbg !3724

switch.body13:                                    ; preds = %typeswitch.body12
    #dbg_value(i64 %29, !3703, !DIExpression(), !3747)
  call void @runtime.printuint64(i64 %29, ptr undef), !dbg !3748
  br label %typeswitch.done, !dbg !3724

switch.next14:                                    ; preds = %typeswitch.body12
  br i1 false, label %switch.body15, label %typeswitch.done, !dbg !3724

switch.body15:                                    ; preds = %switch.next14
    #dbg_value(i64 %29, !3703, !DIExpression(), !3749)
  %31 = trunc i64 %29 to i32, !dbg !3750
  call void @runtime.printuint32(i32 %31, ptr undef), !dbg !3751
  br label %typeswitch.done, !dbg !3724

typeswitch.next16:                                ; preds = %typeassert.next79
  %interface.type83 = extractvalue { ptr, ptr } %1, 0, !dbg !3752
  %typeassert.ok2 = icmp eq ptr @"reflect/types.type:basic:uint8", %interface.type83, !dbg !3752
  br i1 %typeassert.ok2, label %typeassert.ok85, label %typeassert.next86, !dbg !3752

typeassert.next86:                                ; preds = %typeassert.ok85, %typeswitch.next16
  %typeassert.value89 = phi i8 [ 0, %typeswitch.next16 ], [ %unpack.int88, %typeassert.ok85 ], !dbg !3752
  %32 = insertvalue { i8, i1 } undef, i8 %typeassert.value89, 0, !dbg !3752
  %33 = insertvalue { i8, i1 } %32, i1 %typeassert.ok2, 1, !dbg !3752
  %34 = extractvalue { i8, i1 } %33, 0, !dbg !3752
  %35 = extractvalue { i8, i1 } %33, 1, !dbg !3752
  br i1 %35, label %typeswitch.body17, label %typeswitch.next18, !dbg !3724

typeassert.ok85:                                  ; preds = %typeswitch.next16
  %typeassert.value.ptr87 = extractvalue { ptr, ptr } %1, 1, !dbg !3752
  %unpack.int88 = ptrtoint ptr %typeassert.value.ptr87 to i8, !dbg !3752
  br label %typeassert.next86, !dbg !3752

typeswitch.body17:                                ; preds = %typeassert.next86
    #dbg_value(i8 %34, !3704, !DIExpression(), !3753)
  call void @runtime.printuint8(i8 %34, ptr undef), !dbg !3754
  br label %typeswitch.done, !dbg !3724

typeswitch.next18:                                ; preds = %typeassert.next86
  %interface.type90 = extractvalue { ptr, ptr } %1, 0, !dbg !3755
  br i1 false, label %typeassert.ok92, label %typeassert.next93, !dbg !3755

typeassert.next93:                                ; preds = %typeassert.ok92, %typeswitch.next18
  %typeassert.value96 = phi i16 [ 0, %typeswitch.next18 ], [ %unpack.int95, %typeassert.ok92 ], !dbg !3755
  %36 = insertvalue { i16, i1 } undef, i16 %typeassert.value96, 0, !dbg !3755
  %37 = insertvalue { i16, i1 } %36, i1 false, 1, !dbg !3755
  %38 = extractvalue { i16, i1 } %37, 0, !dbg !3755
  %39 = extractvalue { i16, i1 } %37, 1, !dbg !3755
  br i1 %39, label %typeswitch.body19, label %typeswitch.next20, !dbg !3724

typeassert.ok92:                                  ; preds = %typeswitch.next18
  %typeassert.value.ptr94 = extractvalue { ptr, ptr } %1, 1, !dbg !3755
  %unpack.int95 = ptrtoint ptr %typeassert.value.ptr94 to i16, !dbg !3755
  br label %typeassert.next93, !dbg !3755

typeswitch.body19:                                ; preds = %typeassert.next93
    #dbg_value(i16 %38, !3705, !DIExpression(), !3756)
  call void @runtime.printuint16(i16 %38, ptr undef), !dbg !3757
  br label %typeswitch.done, !dbg !3724

typeswitch.next20:                                ; preds = %typeassert.next93
  %interface.type97 = extractvalue { ptr, ptr } %1, 0, !dbg !3758
  br i1 false, label %typeassert.ok99, label %typeassert.next100, !dbg !3758

typeassert.next100:                               ; preds = %typeassert.ok99, %typeswitch.next20
  %typeassert.value103 = phi i32 [ 0, %typeswitch.next20 ], [ %unpack.int102, %typeassert.ok99 ], !dbg !3758
  %40 = insertvalue { i32, i1 } undef, i32 %typeassert.value103, 0, !dbg !3758
  %41 = insertvalue { i32, i1 } %40, i1 false, 1, !dbg !3758
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !3758
  %43 = extractvalue { i32, i1 } %41, 1, !dbg !3758
  br i1 %43, label %typeswitch.body21, label %typeswitch.next22, !dbg !3724

typeassert.ok99:                                  ; preds = %typeswitch.next20
  %typeassert.value.ptr101 = extractvalue { ptr, ptr } %1, 1, !dbg !3758
  %unpack.int102 = ptrtoint ptr %typeassert.value.ptr101 to i32, !dbg !3758
  br label %typeassert.next100, !dbg !3758

typeswitch.body21:                                ; preds = %typeassert.next100
    #dbg_value(i32 %42, !3706, !DIExpression(), !3759)
  call void @runtime.printuint32(i32 %42, ptr undef), !dbg !3760
  br label %typeswitch.done, !dbg !3724

typeswitch.next22:                                ; preds = %typeassert.next100
  %interface.type104 = extractvalue { ptr, ptr } %1, 0, !dbg !3761
  br i1 false, label %typeassert.ok106, label %typeassert.next107, !dbg !3761

typeassert.next107:                               ; preds = %typeassert.ok106, %typeswitch.next22
  %typeassert.value110 = phi i64 [ 0, %typeswitch.next22 ], [ %unpack.int109, %typeassert.ok106 ], !dbg !3761
  %44 = insertvalue { i64, i1 } undef, i64 %typeassert.value110, 0, !dbg !3761
  %45 = insertvalue { i64, i1 } %44, i1 false, 1, !dbg !3761
  %46 = extractvalue { i64, i1 } %45, 0, !dbg !3761
  %47 = extractvalue { i64, i1 } %45, 1, !dbg !3761
  br i1 %47, label %typeswitch.body23, label %typeswitch.next24, !dbg !3724

typeassert.ok106:                                 ; preds = %typeswitch.next22
  %typeassert.value.ptr108 = extractvalue { ptr, ptr } %1, 1, !dbg !3761
  %unpack.int109 = ptrtoint ptr %typeassert.value.ptr108 to i64, !dbg !3761
  br label %typeassert.next107, !dbg !3761

typeswitch.body23:                                ; preds = %typeassert.next107
    #dbg_value(i64 %46, !3707, !DIExpression(), !3762)
  call void @runtime.printuint64(i64 %46, ptr undef), !dbg !3763
  br label %typeswitch.done, !dbg !3724

typeswitch.next24:                                ; preds = %typeassert.next107
  %interface.type111 = extractvalue { ptr, ptr } %1, 0, !dbg !3764
  br i1 false, label %typeassert.ok113, label %typeassert.next114, !dbg !3764

typeassert.next114:                               ; preds = %typeassert.ok113, %typeswitch.next24
  %typeassert.value117 = phi i64 [ 0, %typeswitch.next24 ], [ %unpack.int116, %typeassert.ok113 ], !dbg !3764
  %48 = insertvalue { i64, i1 } undef, i64 %typeassert.value117, 0, !dbg !3764
  %49 = insertvalue { i64, i1 } %48, i1 false, 1, !dbg !3764
  %50 = extractvalue { i64, i1 } %49, 0, !dbg !3764
  %51 = extractvalue { i64, i1 } %49, 1, !dbg !3764
  br i1 %51, label %typeswitch.body25, label %typeswitch.next26, !dbg !3724

typeassert.ok113:                                 ; preds = %typeswitch.next24
  %typeassert.value.ptr115 = extractvalue { ptr, ptr } %1, 1, !dbg !3764
  %unpack.int116 = ptrtoint ptr %typeassert.value.ptr115 to i64, !dbg !3764
  br label %typeassert.next114, !dbg !3764

typeswitch.body25:                                ; preds = %typeassert.next114
    #dbg_value(i64 %50, !3708, !DIExpression(), !3765)
  call void @runtime.printuintptr(i64 %50, ptr undef), !dbg !3766
  br label %typeswitch.done, !dbg !3724

typeswitch.next26:                                ; preds = %typeassert.next114
  %interface.type118 = extractvalue { ptr, ptr } %1, 0, !dbg !3767
  br i1 false, label %typeassert.ok120, label %typeassert.next121, !dbg !3767

typeassert.next121:                               ; preds = %typeassert.ok120, %typeswitch.next26
  %typeassert.value123 = phi float [ 0.000000e+00, %typeswitch.next26 ], [ %57, %typeassert.ok120 ], !dbg !3721
  %52 = insertvalue { float, i1 } undef, float %typeassert.value123, 0, !dbg !3721
  %53 = insertvalue { float, i1 } %52, i1 false, 1, !dbg !3721
  %54 = extractvalue { float, i1 } %53, 0, !dbg !3767
  %55 = extractvalue { float, i1 } %53, 1, !dbg !3767
  br i1 %55, label %typeswitch.body27, label %typeswitch.next28, !dbg !3724

typeassert.ok120:                                 ; preds = %typeswitch.next26
  %typeassert.value.ptr122 = extractvalue { ptr, ptr } %1, 1, !dbg !3767
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc), !dbg !3721
  store ptr %typeassert.value.ptr122, ptr %unpack.raw.alloc, align 8, !dbg !3721
  %56 = getelementptr inbounds { float }, ptr %unpack.raw.alloc, i32 0, i32 0, !dbg !3721
  %57 = load float, ptr %56, align 4, !dbg !3721
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc), !dbg !3721
  br label %typeassert.next121, !dbg !3721

typeswitch.body27:                                ; preds = %typeassert.next121
    #dbg_value(float %54, !3709, !DIExpression(), !3768)
  call void @runtime.printfloat32(float %54, ptr undef), !dbg !3769
  br label %typeswitch.done, !dbg !3724

typeswitch.next28:                                ; preds = %typeassert.next121
  %interface.type124 = extractvalue { ptr, ptr } %1, 0, !dbg !3770
  br i1 false, label %typeassert.ok126, label %typeassert.next127, !dbg !3770

typeassert.next127:                               ; preds = %typeassert.ok126, %typeswitch.next28
  %typeassert.value130 = phi double [ 0.000000e+00, %typeswitch.next28 ], [ %63, %typeassert.ok126 ], !dbg !3721
  %58 = insertvalue { double, i1 } undef, double %typeassert.value130, 0, !dbg !3721
  %59 = insertvalue { double, i1 } %58, i1 false, 1, !dbg !3721
  %60 = extractvalue { double, i1 } %59, 0, !dbg !3770
  %61 = extractvalue { double, i1 } %59, 1, !dbg !3770
  br i1 %61, label %typeswitch.body29, label %typeswitch.next30, !dbg !3724

typeassert.ok126:                                 ; preds = %typeswitch.next28
  %typeassert.value.ptr128 = extractvalue { ptr, ptr } %1, 1, !dbg !3770
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc129), !dbg !3721
  store ptr %typeassert.value.ptr128, ptr %unpack.raw.alloc129, align 8, !dbg !3721
  %62 = getelementptr inbounds { double }, ptr %unpack.raw.alloc129, i32 0, i32 0, !dbg !3721
  %63 = load double, ptr %62, align 8, !dbg !3721
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc129), !dbg !3721
  br label %typeassert.next127, !dbg !3721

typeswitch.body29:                                ; preds = %typeassert.next127
    #dbg_value(double %60, !3711, !DIExpression(), !3771)
  call void @runtime.printfloat64(double %60, ptr undef), !dbg !3772
  br label %typeswitch.done, !dbg !3724

typeswitch.next30:                                ; preds = %typeassert.next127
  %interface.type131 = extractvalue { ptr, ptr } %1, 0, !dbg !3773
  br i1 false, label %typeassert.ok133, label %typeassert.next134, !dbg !3773

typeassert.next134:                               ; preds = %typeassert.ok133, %typeswitch.next30
  %typeassert.value137 = phi { float, float } [ zeroinitializer, %typeswitch.next30 ], [ %69, %typeassert.ok133 ], !dbg !3721
  %64 = insertvalue { { float, float }, i1 } undef, { float, float } %typeassert.value137, 0, !dbg !3721
  %65 = insertvalue { { float, float }, i1 } %64, i1 false, 1, !dbg !3721
  %66 = extractvalue { { float, float }, i1 } %65, 0, !dbg !3773
  %67 = extractvalue { { float, float }, i1 } %65, 1, !dbg !3773
  br i1 %67, label %typeswitch.body31, label %typeswitch.next32, !dbg !3724

typeassert.ok133:                                 ; preds = %typeswitch.next30
  %typeassert.value.ptr135 = extractvalue { ptr, ptr } %1, 1, !dbg !3773
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc136), !dbg !3721
  store ptr %typeassert.value.ptr135, ptr %unpack.raw.alloc136, align 8, !dbg !3721
  %68 = getelementptr inbounds { { float, float } }, ptr %unpack.raw.alloc136, i32 0, i32 0, !dbg !3721
  %69 = load { float, float }, ptr %68, align 4, !dbg !3721
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc136), !dbg !3721
  br label %typeassert.next134, !dbg !3721

typeswitch.body31:                                ; preds = %typeassert.next134
    #dbg_value({ float, float } %66, !3712, !DIExpression(), !3774)
  %70 = extractvalue { float, float } %66, 0, !dbg !3775
  %71 = extractvalue { float, float } %66, 1, !dbg !3775
  call void @runtime.printcomplex64(float %70, float %71, ptr undef), !dbg !3775
  br label %typeswitch.done, !dbg !3724

typeswitch.next32:                                ; preds = %typeassert.next134
  %interface.type138 = extractvalue { ptr, ptr } %1, 0, !dbg !3776
  br i1 false, label %typeassert.ok140, label %typeassert.next141, !dbg !3776

typeassert.next141:                               ; preds = %typeassert.ok140, %typeswitch.next32
  %typeassert.value143 = phi { double, double } [ zeroinitializer, %typeswitch.next32 ], [ %77, %typeassert.ok140 ], !dbg !3776
  %72 = insertvalue { { double, double }, i1 } undef, { double, double } %typeassert.value143, 0, !dbg !3776
  %73 = insertvalue { { double, double }, i1 } %72, i1 false, 1, !dbg !3776
  %74 = extractvalue { { double, double }, i1 } %73, 0, !dbg !3776
  %75 = extractvalue { { double, double }, i1 } %73, 1, !dbg !3776
  br i1 %75, label %typeswitch.body33, label %typeswitch.next34, !dbg !3724

typeassert.ok140:                                 ; preds = %typeswitch.next32
  %typeassert.value.ptr142 = extractvalue { ptr, ptr } %1, 1, !dbg !3776
  %76 = getelementptr inbounds { { double, double } }, ptr %typeassert.value.ptr142, i32 0, i32 0, !dbg !3776
  %77 = load { double, double }, ptr %76, align 8, !dbg !3776
  br label %typeassert.next141, !dbg !3776

typeswitch.body33:                                ; preds = %typeassert.next141
    #dbg_value({ double, double } %74, !3714, !DIExpression(), !3777)
  %78 = extractvalue { double, double } %74, 0, !dbg !3778
  %79 = extractvalue { double, double } %74, 1, !dbg !3778
  call void @runtime.printcomplex128(double %78, double %79, ptr undef), !dbg !3778
  br label %typeswitch.done, !dbg !3724

typeswitch.next34:                                ; preds = %typeassert.next141
  %interface.type144 = extractvalue { ptr, ptr } %1, 0, !dbg !3779
  %typeassert.ok1 = icmp eq ptr @"reflect/types.type:basic:string", %interface.type144, !dbg !3779
  br i1 %typeassert.ok1, label %typeassert.ok146, label %typeassert.next147, !dbg !3779

typeassert.next147:                               ; preds = %typeassert.ok146, %typeswitch.next34
  %typeassert.value149 = phi %runtime._string [ zeroinitializer, %typeswitch.next34 ], [ %85, %typeassert.ok146 ], !dbg !3779
  %80 = insertvalue { %runtime._string, i1 } undef, %runtime._string %typeassert.value149, 0, !dbg !3779
  %81 = insertvalue { %runtime._string, i1 } %80, i1 %typeassert.ok1, 1, !dbg !3779
  %82 = extractvalue { %runtime._string, i1 } %81, 0, !dbg !3779
  %83 = extractvalue { %runtime._string, i1 } %81, 1, !dbg !3779
  br i1 %83, label %typeswitch.body35, label %typeswitch.next36, !dbg !3724

typeassert.ok146:                                 ; preds = %typeswitch.next34
  %typeassert.value.ptr148 = extractvalue { ptr, ptr } %1, 1, !dbg !3779
  %84 = getelementptr inbounds { %runtime._string }, ptr %typeassert.value.ptr148, i32 0, i32 0, !dbg !3779
  %85 = load %runtime._string, ptr %84, align 8, !dbg !3779
  br label %typeassert.next147, !dbg !3779

typeswitch.body35:                                ; preds = %typeassert.next147
    #dbg_value(%runtime._string %82, !3716, !DIExpression(), !3780)
  %86 = extractvalue %runtime._string %82, 0, !dbg !3781
  %87 = extractvalue %runtime._string %82, 1, !dbg !3781
  call void @runtime.printstring(ptr %86, i64 %87, ptr undef), !dbg !3781
  br label %typeswitch.done, !dbg !3724

typeswitch.next36:                                ; preds = %typeassert.next147
  %interface.type150 = extractvalue { ptr, ptr } %1, 0, !dbg !3782
  %88 = call i1 @"interface:{Error:func:{}{basic:string}}.$typeassert"(ptr %interface.type150), !dbg !3782
  br i1 %88, label %typeassert.ok151, label %typeassert.next152, !dbg !3782

typeassert.next152:                               ; preds = %typeassert.ok151, %typeswitch.next36
  %typeassert.value153 = phi { ptr, ptr } [ zeroinitializer, %typeswitch.next36 ], [ %1, %typeassert.ok151 ], !dbg !3782
  %89 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %typeassert.value153, 0, !dbg !3782
  %90 = insertvalue { { ptr, ptr }, i1 } %89, i1 %88, 1, !dbg !3782
  %91 = extractvalue { { ptr, ptr }, i1 } %90, 0, !dbg !3782
  %92 = extractvalue { { ptr, ptr }, i1 } %90, 1, !dbg !3782
  br i1 %92, label %typeswitch.body37, label %typeswitch.next38, !dbg !3724

typeassert.ok151:                                 ; preds = %typeswitch.next36
  br label %typeassert.next152, !dbg !3782

typeswitch.body37:                                ; preds = %typeassert.next152
    #dbg_value({ ptr, ptr } %91, !3717, !DIExpression(), !3783)
  %invoke.func.typecode = extractvalue { ptr, ptr } %91, 0, !dbg !3784
  %invoke.func.value = extractvalue { ptr, ptr } %91, 1, !dbg !3784
  %93 = call %runtime._string @"interface:{Error:func:{}{basic:string}}.Error$invoke"(ptr %invoke.func.value, ptr %invoke.func.typecode, ptr undef), !dbg !3784
  %94 = extractvalue %runtime._string %93, 0, !dbg !3785
  %95 = extractvalue %runtime._string %93, 1, !dbg !3785
  call void @runtime.printstring(ptr %94, i64 %95, ptr undef), !dbg !3785
  br label %typeswitch.done, !dbg !3724

typeswitch.next38:                                ; preds = %typeassert.next152
  %interface.type154 = extractvalue { ptr, ptr } %1, 0, !dbg !3786
  %96 = call i1 @"interface:{String:func:{}{basic:string}}.$typeassert"(ptr %interface.type154), !dbg !3786
  br i1 %96, label %typeassert.ok155, label %typeassert.next156, !dbg !3786

typeassert.next156:                               ; preds = %typeassert.ok155, %typeswitch.next38
  %typeassert.value157 = phi { ptr, ptr } [ zeroinitializer, %typeswitch.next38 ], [ %1, %typeassert.ok155 ], !dbg !3786
  %97 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %typeassert.value157, 0, !dbg !3786
  %98 = insertvalue { { ptr, ptr }, i1 } %97, i1 %96, 1, !dbg !3786
  %99 = extractvalue { { ptr, ptr }, i1 } %98, 0, !dbg !3786
  %100 = extractvalue { { ptr, ptr }, i1 } %98, 1, !dbg !3786
  br i1 %100, label %typeswitch.body39, label %typeswitch.next40, !dbg !3724

typeassert.ok155:                                 ; preds = %typeswitch.next38
  br label %typeassert.next156, !dbg !3786

typeswitch.body39:                                ; preds = %typeassert.next156
    #dbg_value({ ptr, ptr } %99, !3718, !DIExpression(), !3787)
  %invoke.func.typecode158 = extractvalue { ptr, ptr } %99, 0, !dbg !3788
  %invoke.func.value159 = extractvalue { ptr, ptr } %99, 1, !dbg !3788
  %101 = call %runtime._string @"interface:{String:func:{}{basic:string}}.String$invoke"(ptr %invoke.func.value159, ptr %invoke.func.typecode158, ptr undef), !dbg !3788
  %102 = extractvalue %runtime._string %101, 0, !dbg !3789
  %103 = extractvalue %runtime._string %101, 1, !dbg !3789
  call void @runtime.printstring(ptr %102, i64 %103, ptr undef), !dbg !3789
  br label %typeswitch.done, !dbg !3724

typeswitch.next40:                                ; preds = %typeassert.next156
  %msg = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 389 to ptr), ptr undef), !dbg !3790
  store { ptr, ptr } %1, ptr %msg, align 8, !dbg !3790
  store { ptr, ptr } zeroinitializer, ptr %itf, align 8, !dbg !3721
  %104 = load { ptr, ptr }, ptr %msg, align 8, !dbg !3791
  store { ptr, ptr } %104, ptr %itf, align 8, !dbg !3792
    #dbg_value({ ptr, ptr } %104, !3720, !DIExpression(), !3792)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !3793
  %105 = getelementptr inbounds { ptr, ptr }, ptr %itf, i32 0, i32 0, !dbg !3794
  %106 = icmp eq ptr %105, null, !dbg !3794
  br i1 %106, label %deref.throw, label %deref.next, !dbg !3794

deref.next:                                       ; preds = %typeswitch.next40
  %107 = load ptr, ptr %105, align 8, !dbg !3794
  %108 = ptrtoint ptr %107 to i64, !dbg !3795
  call void @runtime.printuintptr(i64 %108, ptr undef), !dbg !3796
  call void @runtime.putchar(i8 58, ptr undef), !dbg !3797
  %109 = getelementptr inbounds { ptr, ptr }, ptr %itf, i32 0, i32 1, !dbg !3798
  %110 = icmp eq ptr %109, null, !dbg !3798
  br i1 %110, label %deref.throw160, label %deref.next161, !dbg !3798

deref.next161:                                    ; preds = %deref.next
  %111 = load ptr, ptr %109, align 8, !dbg !3798
  %112 = ptrtoint ptr %111 to i64, !dbg !3799
  call void @runtime.printptr(i64 %112, ptr undef), !dbg !3800
  call void @runtime.putchar(i8 41, ptr undef), !dbg !3801
  br label %typeswitch.done, !dbg !3724

deref.throw:                                      ; preds = %typeswitch.next40
  call void @runtime.nilPanic(ptr undef), !dbg !3794
  unreachable, !dbg !3794

deref.throw160:                                   ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !3798
  unreachable, !dbg !3798
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printbool(i1 %b, ptr %context) unnamed_addr #1 !dbg !3802 {
entry:
    #dbg_value(i1 %b, !3806, !DIExpression(), !3807)
    #dbg_value(i1 %b, !3806, !DIExpression(), !3808)
  br i1 %b, label %if.then, label %if.else, !dbg !3809

if.then:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.46", i64 4, ptr undef), !dbg !3810
  br label %if.done, !dbg !3809

if.done:                                          ; preds = %if.else, %if.then
  ret void, !dbg !3811

if.else:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.47", i64 5, ptr undef), !dbg !3812
  br label %if.done, !dbg !3809
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint64(i64 %n, ptr %context) unnamed_addr #1 !dbg !3813 {
entry:
    #dbg_value(i64 %n, !3817, !DIExpression(), !3818)
    #dbg_value(i64 %n, !3817, !DIExpression(), !3819)
  %0 = icmp slt i64 %n, 0, !dbg !3820
  br i1 %0, label %if.then, label %if.done, !dbg !3821

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3822
    #dbg_value(i64 %n, !3817, !DIExpression(), !3823)
  %1 = sub i64 0, %n, !dbg !3824
    #dbg_value(i64 %1, !3817, !DIExpression(), !3825)
  br label %if.done, !dbg !3821

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i64 [ %n, %entry ], [ %1, %if.then ], !dbg !3826
    #dbg_value(i64 %2, !3817, !DIExpression(), !3827)
  call void @runtime.printuint64(i64 %2, ptr undef), !dbg !3828
  ret void, !dbg !3829
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint32(i32 %n, ptr %context) unnamed_addr #1 !dbg !3830 {
entry:
    #dbg_value(i32 %n, !3832, !DIExpression(), !3833)
    #dbg_value(i32 %n, !3832, !DIExpression(), !3834)
  %0 = icmp slt i32 %n, 0, !dbg !3835
  br i1 %0, label %if.then, label %if.done, !dbg !3836

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3837
    #dbg_value(i32 %n, !3832, !DIExpression(), !3838)
  %1 = sub i32 0, %n, !dbg !3839
    #dbg_value(i32 %1, !3832, !DIExpression(), !3840)
  br label %if.done, !dbg !3836

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i32 [ %n, %entry ], [ %1, %if.then ], !dbg !3841
    #dbg_value(i32 %2, !3832, !DIExpression(), !3842)
  call void @runtime.printuint32(i32 %2, ptr undef), !dbg !3843
  ret void, !dbg !3844
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint8(i8 %n, ptr %context) unnamed_addr #1 !dbg !3845 {
entry:
    #dbg_value(i8 %n, !3849, !DIExpression(), !3850)
  br i1 true, label %if.then, label %if.else, !dbg !3851

if.then:                                          ; preds = %entry
    #dbg_value(i8 %n, !3849, !DIExpression(), !3852)
  %0 = sext i8 %n to i32, !dbg !3853
  call void @runtime.printint32(i32 %0, ptr undef), !dbg !3854
  br label %if.done, !dbg !3851

if.done:                                          ; preds = %if.done2, %if.then
  ret void, !dbg !3855

if.else:                                          ; preds = %entry
    #dbg_value(i8 %n, !3849, !DIExpression(), !3856)
  %1 = icmp slt i8 %n, 0, !dbg !3857
  br i1 %1, label %if.then1, label %if.done2, !dbg !3851

if.then1:                                         ; preds = %if.else
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3858
    #dbg_value(i8 %n, !3849, !DIExpression(), !3859)
  %2 = sub i8 0, %n, !dbg !3860
    #dbg_value(i8 %2, !3849, !DIExpression(), !3861)
  br label %if.done2, !dbg !3851

if.done2:                                         ; preds = %if.then1, %if.else
  %3 = phi i8 [ %n, %if.else ], [ %2, %if.then1 ], !dbg !3862
    #dbg_value(i8 %3, !3849, !DIExpression(), !3863)
  call void @runtime.printuint8(i8 %3, ptr undef), !dbg !3864
  br label %if.done, !dbg !3851
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint16(i16 %n, ptr %context) unnamed_addr #1 !dbg !3865 {
entry:
    #dbg_value(i16 %n, !3869, !DIExpression(), !3870)
    #dbg_value(i16 %n, !3869, !DIExpression(), !3871)
  %0 = sext i16 %n to i32, !dbg !3872
  call void @runtime.printint32(i32 %0, ptr undef), !dbg !3873
  ret void, !dbg !3874
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint64(i64 %n, ptr %context) unnamed_addr #1 !dbg !3875 {
entry:
    #dbg_value(i64 %n, !3879, !DIExpression(), !3884)
  %digits = alloca [20 x i8], align 1, !dbg !3885
  store [20 x i8] zeroinitializer, ptr %digits, align 1, !dbg !3885
    #dbg_value(i64 19, !3880, !DIExpression(), !3886)
    #dbg_value(i64 19, !3881, !DIExpression(), !3887)
  br label %for.loop, !dbg !3888

for.loop:                                         ; preds = %if.done, %entry
  %0 = phi i64 [ %n, %entry ], [ %10, %if.done ], !dbg !3889
  %1 = phi i64 [ 19, %entry ], [ %9, %if.done ], !dbg !3886
  %2 = phi i64 [ 19, %entry ], [ %11, %if.done ], !dbg !3887
    #dbg_value(i64 %2, !3881, !DIExpression(), !3890)
  %3 = icmp sge i64 %2, 0, !dbg !3891
  br i1 %3, label %for.body, label %for.done, !dbg !3888

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !3879, !DIExpression(), !3892)
  %4 = urem i64 %0, 10, !dbg !3893
  %5 = add i64 %4, 48, !dbg !3894
  %6 = trunc i64 %5 to i8, !dbg !3895
    #dbg_value(i8 %6, !3882, !DIExpression(), !3896)
    #dbg_value(i64 %2, !3881, !DIExpression(), !3897)
    #dbg_value(i8 %6, !3882, !DIExpression(), !3898)
  %7 = getelementptr inbounds [20 x i8], ptr %digits, i32 0, i64 %2, !dbg !3899
  store i8 %6, ptr %7, align 1, !dbg !3899
    #dbg_value(i8 %6, !3882, !DIExpression(), !3900)
  %8 = icmp ne i8 %6, 48, !dbg !3901
  br i1 %8, label %if.then, label %if.done, !dbg !3888

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %2, !3881, !DIExpression(), !3902)
    #dbg_value(i64 %2, !3880, !DIExpression(), !3903)
  br label %if.done, !dbg !3888

if.done:                                          ; preds = %if.then, %for.body
  %9 = phi i64 [ %1, %for.body ], [ %2, %if.then ], !dbg !3886
  %10 = udiv i64 %0, 10, !dbg !3904
    #dbg_value(i64 %10, !3879, !DIExpression(), !3904)
  %11 = sub i64 %2, 1, !dbg !3905
    #dbg_value(i64 %11, !3881, !DIExpression(), !3905)
  br label %for.loop, !dbg !3888

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !3880, !DIExpression(), !3906)
    #dbg_value(i64 %1, !3883, !DIExpression(), !3907)
  br label %for.loop1, !dbg !3888

for.loop1:                                        ; preds = %for.body2, %for.done
  %12 = phi i64 [ %1, %for.done ], [ %16, %for.body2 ], !dbg !3907
    #dbg_value(i64 %12, !3883, !DIExpression(), !3908)
  %13 = icmp slt i64 %12, 20, !dbg !3909
  br i1 %13, label %for.body2, label %for.done3, !dbg !3888

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %12, !3883, !DIExpression(), !3910)
  %14 = getelementptr inbounds [20 x i8], ptr %digits, i32 0, i64 %12, !dbg !3911
  %15 = load i8, ptr %14, align 1, !dbg !3911
  call void @runtime.putchar(i8 %15, ptr undef), !dbg !3912
  %16 = add i64 %12, 1, !dbg !3913
    #dbg_value(i64 %16, !3883, !DIExpression(), !3913)
  br label %for.loop1, !dbg !3888

for.done3:                                        ; preds = %for.loop1
  ret void, !dbg !3914
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint32(i32 %n, ptr %context) unnamed_addr #1 !dbg !3915 {
entry:
    #dbg_value(i32 %n, !3917, !DIExpression(), !3918)
    #dbg_value(i32 %n, !3917, !DIExpression(), !3919)
  %0 = zext i32 %n to i64, !dbg !3920
  call void @runtime.printuint64(i64 %0, ptr undef), !dbg !3921
  ret void, !dbg !3922
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint8(i8 %n, ptr %context) unnamed_addr #1 !dbg !3923 {
entry:
    #dbg_value(i8 %n, !3927, !DIExpression(), !3929)
  br i1 true, label %if.then, label %if.else, !dbg !3930

if.then:                                          ; preds = %entry
    #dbg_value(i8 %n, !3927, !DIExpression(), !3931)
  %0 = zext i8 %n to i32, !dbg !3932
  call void @runtime.printuint32(i32 %0, ptr undef), !dbg !3933
  br label %if.done, !dbg !3930

if.done:                                          ; preds = %if.done2, %if.then
  ret void, !dbg !3934

if.else:                                          ; preds = %entry
    #dbg_value(i8 %n, !3927, !DIExpression(), !3935)
  %1 = udiv i8 %n, 10, !dbg !3936
    #dbg_value(i8 %1, !3928, !DIExpression(), !3937)
    #dbg_value(i8 %1, !3928, !DIExpression(), !3938)
  %2 = icmp ne i8 %1, 0, !dbg !3939
  br i1 %2, label %if.then1, label %if.done2, !dbg !3930

if.then1:                                         ; preds = %if.else
    #dbg_value(i8 %1, !3928, !DIExpression(), !3940)
  call void @runtime.printuint8(i8 %1, ptr undef), !dbg !3941
  br label %if.done2, !dbg !3930

if.done2:                                         ; preds = %if.then1, %if.else
    #dbg_value(i8 %n, !3927, !DIExpression(), !3942)
  %3 = urem i8 %n, 10, !dbg !3943
  %4 = add i8 %3, 48, !dbg !3944
  call void @runtime.putchar(i8 %4, ptr undef), !dbg !3945
  br label %if.done, !dbg !3930
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint16(i16 %n, ptr %context) unnamed_addr #1 !dbg !3946 {
entry:
    #dbg_value(i16 %n, !3950, !DIExpression(), !3951)
    #dbg_value(i16 %n, !3950, !DIExpression(), !3952)
  %0 = zext i16 %n to i32, !dbg !3953
  call void @runtime.printuint32(i32 %0, ptr undef), !dbg !3954
  ret void, !dbg !3955
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuintptr(i64 %n, ptr %context) unnamed_addr #1 !dbg !3956 {
entry:
    #dbg_value(i64 %n, !3958, !DIExpression(), !3959)
  br i1 false, label %switch.body, label %switch.next, !dbg !3960

switch.body:                                      ; preds = %entry
    #dbg_value(i64 %n, !3958, !DIExpression(), !3961)
  %0 = trunc i64 %n to i16, !dbg !3962
  call void @runtime.printuint16(i16 %0, ptr undef), !dbg !3963
  br label %switch.done, !dbg !3960

switch.done:                                      ; preds = %switch.body3, %switch.next2, %switch.body1, %switch.body
  ret void, !dbg !3964

switch.next:                                      ; preds = %entry
  br i1 false, label %switch.body1, label %switch.next2, !dbg !3960

switch.body1:                                     ; preds = %switch.next
    #dbg_value(i64 %n, !3958, !DIExpression(), !3965)
  %1 = trunc i64 %n to i32, !dbg !3966
  call void @runtime.printuint32(i32 %1, ptr undef), !dbg !3967
  br label %switch.done, !dbg !3960

switch.next2:                                     ; preds = %switch.next
  br i1 true, label %switch.body3, label %switch.done, !dbg !3960

switch.body3:                                     ; preds = %switch.next2
    #dbg_value(i64 %n, !3958, !DIExpression(), !3968)
  call void @runtime.printuint64(i64 %n, ptr undef), !dbg !3969
  br label %switch.done, !dbg !3960
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printfloat32(float %v, ptr %context) unnamed_addr #1 !dbg !3970 {
entry:
    #dbg_value(float %v, !3974, !DIExpression(), !3983)
    #dbg_value(float %v, !3974, !DIExpression(), !3984)
    #dbg_value(float %v, !3974, !DIExpression(), !3985)
  %index.alloca = alloca [14 x i8], align 1, !dbg !3986
  %buf = alloca [14 x i8], align 1, !dbg !3986
  %0 = fcmp une float %v, %v, !dbg !3986
  br i1 %0, label %switch.body, label %switch.next, !dbg !3987

switch.body:                                      ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.35", i64 3, ptr undef), !dbg !3988
  ret void, !dbg !3989

switch.next:                                      ; preds = %entry
    #dbg_value(float %v, !3974, !DIExpression(), !3990)
    #dbg_value(float %v, !3974, !DIExpression(), !3991)
  %1 = fadd float %v, %v, !dbg !3992
    #dbg_value(float %v, !3974, !DIExpression(), !3993)
  %2 = fcmp oeq float %1, %v, !dbg !3994
  br i1 %2, label %binop.rhs, label %binop.done, !dbg !3987

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(float %v, !3974, !DIExpression(), !3995)
  %3 = fcmp ogt float %v, 0.000000e+00, !dbg !3996
  br label %binop.done, !dbg !3987

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ false, %switch.next ], [ %3, %binop.rhs ], !dbg !3997
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !3987

switch.body1:                                     ; preds = %binop.done
  call void @runtime.printstring(ptr @"runtime$string.36", i64 4, ptr undef), !dbg !3998
  ret void, !dbg !3999

switch.next2:                                     ; preds = %binop.done
    #dbg_value(float %v, !3974, !DIExpression(), !4000)
    #dbg_value(float %v, !3974, !DIExpression(), !4001)
  %5 = fadd float %v, %v, !dbg !4002
    #dbg_value(float %v, !3974, !DIExpression(), !4003)
  %6 = fcmp oeq float %5, %v, !dbg !4004
  br i1 %6, label %binop.rhs3, label %binop.done4, !dbg !3987

binop.rhs3:                                       ; preds = %switch.next2
    #dbg_value(float %v, !3974, !DIExpression(), !4005)
  %7 = fcmp olt float %v, 0.000000e+00, !dbg !4006
  br label %binop.done4, !dbg !3987

binop.done4:                                      ; preds = %binop.rhs3, %switch.next2
  %8 = phi i1 [ false, %switch.next2 ], [ %7, %binop.rhs3 ], !dbg !4007
  br i1 %8, label %switch.body5, label %switch.next6, !dbg !3987

switch.body5:                                     ; preds = %binop.done4
  call void @runtime.printstring(ptr @"runtime$string.37", i64 4, ptr undef), !dbg !4008
  ret void, !dbg !4009

switch.next6:                                     ; preds = %binop.done4
  store [14 x i8] zeroinitializer, ptr %buf, align 1, !dbg !3986
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4010
  store i8 43, ptr %9, align 1, !dbg !4010
    #dbg_value(i64 0, !3975, !DIExpression(), !4011)
    #dbg_value(float %v, !3974, !DIExpression(), !4012)
  %10 = fcmp oeq float %v, 0.000000e+00, !dbg !4013
  br i1 %10, label %if.then, label %if.else, !dbg !3987

if.then:                                          ; preds = %switch.next6
    #dbg_value(float %v, !3974, !DIExpression(), !4014)
  %11 = fdiv float 1.000000e+00, %v, !dbg !4015
  %12 = fcmp olt float %11, 0.000000e+00, !dbg !4016
  br i1 %12, label %if.then7, label %if.done, !dbg !3987

if.then7:                                         ; preds = %if.then
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4017
  store i8 45, ptr %13, align 1, !dbg !4017
  br label %if.done, !dbg !3987

if.done:                                          ; preds = %if.then19, %for.done18, %if.then7, %if.then
  %14 = phi float [ %v, %if.then ], [ %84, %for.done18 ], [ %v, %if.then7 ], [ %87, %if.then19 ], !dbg !4018
  %15 = phi i64 [ 0, %if.then ], [ %75, %for.done18 ], [ 0, %if.then7 ], [ %86, %if.then19 ], !dbg !4011
    #dbg_value(i64 0, !3976, !DIExpression(), !4019)
  br label %for.loop, !dbg !3987

for.loop:                                         ; preds = %lookup.next, %if.done
  %16 = phi float [ %14, %if.done ], [ %27, %lookup.next ], !dbg !4018
  %17 = phi i64 [ 0, %if.done ], [ %28, %lookup.next ], !dbg !4019
    #dbg_value(i64 %17, !3976, !DIExpression(), !4020)
  %18 = icmp slt i64 %17, 7, !dbg !4021
  br i1 %18, label %for.body, label %for.done, !dbg !3987

for.body:                                         ; preds = %for.loop
    #dbg_value(float %16, !3974, !DIExpression(), !4022)
  %abovemin = fcmp ole float 0xC3E0000000000000, %16, !dbg !4023
  %belowmax = fcmp ole float %16, 0x43DFFFFFC0000000, !dbg !4023
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4023
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4023
  %isnan = fcmp uno float %16, %16, !dbg !4023
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4023
  %normal = fptosi float %16 to i64, !dbg !4023
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4023
    #dbg_value(i64 %19, !3977, !DIExpression(), !4024)
    #dbg_value(i64 %17, !3976, !DIExpression(), !4025)
  %20 = add i64 %17, 2, !dbg !4026
    #dbg_value(i64 %19, !3977, !DIExpression(), !4027)
  %21 = add i64 %19, 48, !dbg !4028
  %22 = trunc i64 %21 to i8, !dbg !4029
  %23 = icmp uge i64 %20, 14, !dbg !4030
  br i1 %23, label %lookup.throw, label %lookup.next, !dbg !4030

lookup.next:                                      ; preds = %for.body
  %24 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 %20, !dbg !4030
  store i8 %22, ptr %24, align 1, !dbg !4030
    #dbg_value(i64 %19, !3977, !DIExpression(), !4031)
  %25 = sitofp i64 %19 to float, !dbg !4032
  %26 = fsub float %16, %25, !dbg !4033
    #dbg_value(float %26, !3974, !DIExpression(), !4033)
  %27 = fmul float %26, 1.000000e+01, !dbg !4034
    #dbg_value(float %27, !3974, !DIExpression(), !4034)
  %28 = add i64 %17, 1, !dbg !4035
    #dbg_value(i64 %28, !3976, !DIExpression(), !4035)
  br label %for.loop, !dbg !3987

for.done:                                         ; preds = %for.loop
  %29 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4036
  %30 = load i8, ptr %29, align 1, !dbg !4036
  %31 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 1, !dbg !4037
  store i8 %30, ptr %31, align 1, !dbg !4037
  %32 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4038
  store i8 46, ptr %32, align 1, !dbg !4038
  %33 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 9, !dbg !4039
  store i8 101, ptr %33, align 1, !dbg !4039
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4040
  store i8 43, ptr %34, align 1, !dbg !4040
    #dbg_value(i64 %15, !3975, !DIExpression(), !4041)
  %35 = icmp slt i64 %15, 0, !dbg !4042
  br i1 %35, label %if.then8, label %if.done9, !dbg !3987

if.then8:                                         ; preds = %for.done
    #dbg_value(i64 %15, !3975, !DIExpression(), !4043)
  %36 = sub i64 0, %15, !dbg !4044
    #dbg_value(i64 %36, !3975, !DIExpression(), !4045)
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4046
  store i8 45, ptr %37, align 1, !dbg !4046
  br label %if.done9, !dbg !3987

if.done9:                                         ; preds = %if.then8, %for.done
  %38 = phi i64 [ %15, %for.done ], [ %36, %if.then8 ], !dbg !4011
    #dbg_value(i64 %38, !3975, !DIExpression(), !4047)
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !4048
  %40 = and i1 false, %39, !dbg !4048
  %41 = select i1 %40, i64 1, i64 100, !dbg !4048
  %42 = sdiv i64 %38, %41, !dbg !4048
  %43 = trunc i64 %42 to i8, !dbg !4049
  %44 = add i8 %43, 48, !dbg !4050
  %45 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 11, !dbg !4051
  store i8 %44, ptr %45, align 1, !dbg !4051
    #dbg_value(i64 %38, !3975, !DIExpression(), !4052)
  %46 = icmp eq i64 %38, -9223372036854775808, !dbg !4053
  %47 = and i1 false, %46, !dbg !4053
  %48 = select i1 %47, i64 1, i64 10, !dbg !4053
  %49 = sdiv i64 %38, %48, !dbg !4053
  %50 = trunc i64 %49 to i8, !dbg !4054
  %51 = urem i8 %50, 10, !dbg !4055
  %52 = add i8 %51, 48, !dbg !4056
  %53 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 12, !dbg !4057
  store i8 %52, ptr %53, align 1, !dbg !4057
    #dbg_value(i64 %38, !3975, !DIExpression(), !4058)
  %54 = icmp eq i64 %38, -9223372036854775808, !dbg !4059
  %55 = and i1 false, %54, !dbg !4059
  %56 = select i1 %55, i64 1, i64 10, !dbg !4059
  %57 = srem i64 %38, %56, !dbg !4059
  %58 = trunc i64 %57 to i8, !dbg !4060
  %59 = add i8 %58, 48, !dbg !4061
  %60 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 13, !dbg !4062
  store i8 %59, ptr %60, align 1, !dbg !4062
  %61 = load [14 x i8], ptr %buf, align 1, !dbg !4063
    #dbg_value([14 x i8] %61, !3978, !DIExpression(), !4063)
  br label %rangeindex.loop, !dbg !3987

rangeindex.loop:                                  ; preds = %lookup.next21, %if.done9
  %62 = phi i64 [ -1, %if.done9 ], [ %63, %lookup.next21 ], !dbg !3987
  %63 = add i64 %62, 1, !dbg !3987
  %64 = icmp slt i64 %63, 14, !dbg !3987
  br i1 %64, label %rangeindex.body, label %rangeindex.done, !dbg !3987

rangeindex.body:                                  ; preds = %rangeindex.loop
  %65 = icmp uge i64 %63, 14, !dbg !4063
  br i1 %65, label %lookup.throw20, label %lookup.next21, !dbg !4063

lookup.next21:                                    ; preds = %rangeindex.body
  call void @llvm.lifetime.start.p0(i64 14, ptr %index.alloca), !dbg !3986
  store [14 x i8] %61, ptr %index.alloca, align 1, !dbg !3986
  %index.gep = getelementptr inbounds [14 x i8], ptr %index.alloca, i32 0, i64 %63, !dbg !3986
  %index.load = load i8, ptr %index.gep, align 1, !dbg !3986
  call void @llvm.lifetime.end.p0(i64 14, ptr %index.alloca), !dbg !3986
    #dbg_value(i8 %index.load, !3980, !DIExpression(), !4064)
    #dbg_value(i8 %index.load, !3980, !DIExpression(), !4065)
  call void @runtime.putchar(i8 %index.load, ptr undef), !dbg !4066
  br label %rangeindex.loop, !dbg !3987

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret void, !dbg !4067

if.else:                                          ; preds = %switch.next6
    #dbg_value(float %v, !3974, !DIExpression(), !4068)
  %66 = fcmp olt float %v, 0.000000e+00, !dbg !4069
  br i1 %66, label %if.then10, label %for.loop11, !dbg !3987

if.then10:                                        ; preds = %if.else
    #dbg_value(float %v, !3974, !DIExpression(), !4070)
  %67 = fneg float %v, !dbg !4071
    #dbg_value(float %67, !3974, !DIExpression(), !4072)
  %68 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4073
  store i8 45, ptr %68, align 1, !dbg !4073
  br label %for.loop11, !dbg !3987

for.loop11:                                       ; preds = %for.body12, %if.then10, %if.else
  %69 = phi float [ %v, %if.else ], [ %73, %for.body12 ], [ %67, %if.then10 ], !dbg !4018
  %70 = phi i64 [ 0, %if.else ], [ %72, %for.body12 ], [ 0, %if.then10 ], !dbg !4011
    #dbg_value(float %69, !3974, !DIExpression(), !4074)
  %71 = fcmp oge float %69, 1.000000e+01, !dbg !4075
  br i1 %71, label %for.body12, label %for.loop13, !dbg !3987

for.body12:                                       ; preds = %for.loop11
  %72 = add i64 %70, 1, !dbg !4076
    #dbg_value(i64 %72, !3975, !DIExpression(), !4076)
  %73 = fdiv float %69, 1.000000e+01, !dbg !4077
    #dbg_value(float %73, !3974, !DIExpression(), !4077)
  br label %for.loop11, !dbg !3987

for.loop13:                                       ; preds = %for.body14, %for.loop11
  %74 = phi float [ %69, %for.loop11 ], [ %78, %for.body14 ], !dbg !4018
  %75 = phi i64 [ %70, %for.loop11 ], [ %77, %for.body14 ], !dbg !4011
    #dbg_value(float %74, !3974, !DIExpression(), !4078)
  %76 = fcmp olt float %74, 1.000000e+00, !dbg !4079
  br i1 %76, label %for.body14, label %for.done15, !dbg !3987

for.body14:                                       ; preds = %for.loop13
  %77 = sub i64 %75, 1, !dbg !4080
    #dbg_value(i64 %77, !3975, !DIExpression(), !4080)
  %78 = fmul float %74, 1.000000e+01, !dbg !4081
    #dbg_value(float %78, !3974, !DIExpression(), !4081)
  br label %for.loop13, !dbg !3987

for.done15:                                       ; preds = %for.loop13
    #dbg_value(float 5.000000e+00, !3981, !DIExpression(), !4082)
    #dbg_value(i64 0, !3982, !DIExpression(), !4083)
  br label %for.loop16, !dbg !3987

for.loop16:                                       ; preds = %for.body17, %for.done15
  %79 = phi float [ 5.000000e+00, %for.done15 ], [ %82, %for.body17 ], !dbg !4082
  %80 = phi i64 [ 0, %for.done15 ], [ %83, %for.body17 ], !dbg !4083
    #dbg_value(i64 %80, !3982, !DIExpression(), !4084)
  %81 = icmp slt i64 %80, 7, !dbg !4085
  br i1 %81, label %for.body17, label %for.done18, !dbg !3987

for.body17:                                       ; preds = %for.loop16
  %82 = fdiv float %79, 1.000000e+01, !dbg !4086
    #dbg_value(float %82, !3981, !DIExpression(), !4086)
  %83 = add i64 %80, 1, !dbg !4087
    #dbg_value(i64 %83, !3982, !DIExpression(), !4087)
  br label %for.loop16, !dbg !3987

for.done18:                                       ; preds = %for.loop16
    #dbg_value(float %79, !3981, !DIExpression(), !4088)
  %84 = fadd float %74, %79, !dbg !4089
    #dbg_value(float %84, !3974, !DIExpression(), !4089)
    #dbg_value(float %84, !3974, !DIExpression(), !4090)
  %85 = fcmp oge float %84, 1.000000e+01, !dbg !4091
  br i1 %85, label %if.then19, label %if.done, !dbg !3987

if.then19:                                        ; preds = %for.done18
  %86 = add i64 %75, 1, !dbg !4092
    #dbg_value(i64 %86, !3975, !DIExpression(), !4092)
  %87 = fdiv float %84, 1.000000e+01, !dbg !4093
    #dbg_value(float %87, !3974, !DIExpression(), !4093)
  br label %if.done, !dbg !3987

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4030
  unreachable, !dbg !4030

lookup.throw20:                                   ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4063
  unreachable, !dbg !4063
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printfloat64(double %v, ptr %context) unnamed_addr #1 !dbg !4094 {
entry:
    #dbg_value(double %v, !4096, !DIExpression(), !4104)
    #dbg_value(double %v, !4096, !DIExpression(), !4105)
    #dbg_value(double %v, !4096, !DIExpression(), !4106)
  %index.alloca = alloca [14 x i8], align 1, !dbg !4107
  %buf = alloca [14 x i8], align 1, !dbg !4107
  %0 = fcmp une double %v, %v, !dbg !4107
  br i1 %0, label %switch.body, label %switch.next, !dbg !4108

switch.body:                                      ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.38", i64 3, ptr undef), !dbg !4109
  ret void, !dbg !4110

switch.next:                                      ; preds = %entry
    #dbg_value(double %v, !4096, !DIExpression(), !4111)
    #dbg_value(double %v, !4096, !DIExpression(), !4112)
  %1 = fadd double %v, %v, !dbg !4113
    #dbg_value(double %v, !4096, !DIExpression(), !4114)
  %2 = fcmp oeq double %1, %v, !dbg !4115
  br i1 %2, label %binop.rhs, label %binop.done, !dbg !4108

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(double %v, !4096, !DIExpression(), !4116)
  %3 = fcmp ogt double %v, 0.000000e+00, !dbg !4117
  br label %binop.done, !dbg !4108

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ false, %switch.next ], [ %3, %binop.rhs ], !dbg !4118
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4108

switch.body1:                                     ; preds = %binop.done
  call void @runtime.printstring(ptr @"runtime$string.39", i64 4, ptr undef), !dbg !4119
  ret void, !dbg !4120

switch.next2:                                     ; preds = %binop.done
    #dbg_value(double %v, !4096, !DIExpression(), !4121)
    #dbg_value(double %v, !4096, !DIExpression(), !4122)
  %5 = fadd double %v, %v, !dbg !4123
    #dbg_value(double %v, !4096, !DIExpression(), !4124)
  %6 = fcmp oeq double %5, %v, !dbg !4125
  br i1 %6, label %binop.rhs3, label %binop.done4, !dbg !4108

binop.rhs3:                                       ; preds = %switch.next2
    #dbg_value(double %v, !4096, !DIExpression(), !4126)
  %7 = fcmp olt double %v, 0.000000e+00, !dbg !4127
  br label %binop.done4, !dbg !4108

binop.done4:                                      ; preds = %binop.rhs3, %switch.next2
  %8 = phi i1 [ false, %switch.next2 ], [ %7, %binop.rhs3 ], !dbg !4128
  br i1 %8, label %switch.body5, label %switch.next6, !dbg !4108

switch.body5:                                     ; preds = %binop.done4
  call void @runtime.printstring(ptr @"runtime$string.40", i64 4, ptr undef), !dbg !4129
  ret void, !dbg !4130

switch.next6:                                     ; preds = %binop.done4
  store [14 x i8] zeroinitializer, ptr %buf, align 1, !dbg !4107
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4131
  store i8 43, ptr %9, align 1, !dbg !4131
    #dbg_value(i64 0, !4097, !DIExpression(), !4132)
    #dbg_value(double %v, !4096, !DIExpression(), !4133)
  %10 = fcmp oeq double %v, 0.000000e+00, !dbg !4134
  br i1 %10, label %if.then, label %if.else, !dbg !4108

if.then:                                          ; preds = %switch.next6
    #dbg_value(double %v, !4096, !DIExpression(), !4135)
  %11 = fdiv double 1.000000e+00, %v, !dbg !4136
  %12 = fcmp olt double %11, 0.000000e+00, !dbg !4137
  br i1 %12, label %if.then7, label %if.done, !dbg !4108

if.then7:                                         ; preds = %if.then
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4138
  store i8 45, ptr %13, align 1, !dbg !4138
  br label %if.done, !dbg !4108

if.done:                                          ; preds = %if.then19, %for.done18, %if.then7, %if.then
  %14 = phi double [ %v, %if.then ], [ %84, %for.done18 ], [ %v, %if.then7 ], [ %87, %if.then19 ], !dbg !4139
  %15 = phi i64 [ 0, %if.then ], [ %75, %for.done18 ], [ 0, %if.then7 ], [ %86, %if.then19 ], !dbg !4132
    #dbg_value(i64 0, !4098, !DIExpression(), !4140)
  br label %for.loop, !dbg !4108

for.loop:                                         ; preds = %lookup.next, %if.done
  %16 = phi double [ %14, %if.done ], [ %27, %lookup.next ], !dbg !4139
  %17 = phi i64 [ 0, %if.done ], [ %28, %lookup.next ], !dbg !4140
    #dbg_value(i64 %17, !4098, !DIExpression(), !4141)
  %18 = icmp slt i64 %17, 7, !dbg !4142
  br i1 %18, label %for.body, label %for.done, !dbg !4108

for.body:                                         ; preds = %for.loop
    #dbg_value(double %16, !4096, !DIExpression(), !4143)
  %abovemin = fcmp ole double 0xC3E0000000000000, %16, !dbg !4144
  %belowmax = fcmp ole double %16, 0x43DFFFFFFFFFFFFE, !dbg !4144
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4144
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4144
  %isnan = fcmp uno double %16, %16, !dbg !4144
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4144
  %normal = fptosi double %16 to i64, !dbg !4144
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4144
    #dbg_value(i64 %19, !4099, !DIExpression(), !4145)
    #dbg_value(i64 %17, !4098, !DIExpression(), !4146)
  %20 = add i64 %17, 2, !dbg !4147
    #dbg_value(i64 %19, !4099, !DIExpression(), !4148)
  %21 = add i64 %19, 48, !dbg !4149
  %22 = trunc i64 %21 to i8, !dbg !4150
  %23 = icmp uge i64 %20, 14, !dbg !4151
  br i1 %23, label %lookup.throw, label %lookup.next, !dbg !4151

lookup.next:                                      ; preds = %for.body
  %24 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 %20, !dbg !4151
  store i8 %22, ptr %24, align 1, !dbg !4151
    #dbg_value(i64 %19, !4099, !DIExpression(), !4152)
  %25 = sitofp i64 %19 to double, !dbg !4153
  %26 = fsub double %16, %25, !dbg !4154
    #dbg_value(double %26, !4096, !DIExpression(), !4154)
  %27 = fmul double %26, 1.000000e+01, !dbg !4155
    #dbg_value(double %27, !4096, !DIExpression(), !4155)
  %28 = add i64 %17, 1, !dbg !4156
    #dbg_value(i64 %28, !4098, !DIExpression(), !4156)
  br label %for.loop, !dbg !4108

for.done:                                         ; preds = %for.loop
  %29 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4157
  %30 = load i8, ptr %29, align 1, !dbg !4157
  %31 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 1, !dbg !4158
  store i8 %30, ptr %31, align 1, !dbg !4158
  %32 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4159
  store i8 46, ptr %32, align 1, !dbg !4159
  %33 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 9, !dbg !4160
  store i8 101, ptr %33, align 1, !dbg !4160
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4161
  store i8 43, ptr %34, align 1, !dbg !4161
    #dbg_value(i64 %15, !4097, !DIExpression(), !4162)
  %35 = icmp slt i64 %15, 0, !dbg !4163
  br i1 %35, label %if.then8, label %if.done9, !dbg !4108

if.then8:                                         ; preds = %for.done
    #dbg_value(i64 %15, !4097, !DIExpression(), !4164)
  %36 = sub i64 0, %15, !dbg !4165
    #dbg_value(i64 %36, !4097, !DIExpression(), !4166)
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4167
  store i8 45, ptr %37, align 1, !dbg !4167
  br label %if.done9, !dbg !4108

if.done9:                                         ; preds = %if.then8, %for.done
  %38 = phi i64 [ %15, %for.done ], [ %36, %if.then8 ], !dbg !4132
    #dbg_value(i64 %38, !4097, !DIExpression(), !4168)
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !4169
  %40 = and i1 false, %39, !dbg !4169
  %41 = select i1 %40, i64 1, i64 100, !dbg !4169
  %42 = sdiv i64 %38, %41, !dbg !4169
  %43 = trunc i64 %42 to i8, !dbg !4170
  %44 = add i8 %43, 48, !dbg !4171
  %45 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 11, !dbg !4172
  store i8 %44, ptr %45, align 1, !dbg !4172
    #dbg_value(i64 %38, !4097, !DIExpression(), !4173)
  %46 = icmp eq i64 %38, -9223372036854775808, !dbg !4174
  %47 = and i1 false, %46, !dbg !4174
  %48 = select i1 %47, i64 1, i64 10, !dbg !4174
  %49 = sdiv i64 %38, %48, !dbg !4174
  %50 = trunc i64 %49 to i8, !dbg !4175
  %51 = urem i8 %50, 10, !dbg !4176
  %52 = add i8 %51, 48, !dbg !4177
  %53 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 12, !dbg !4178
  store i8 %52, ptr %53, align 1, !dbg !4178
    #dbg_value(i64 %38, !4097, !DIExpression(), !4179)
  %54 = icmp eq i64 %38, -9223372036854775808, !dbg !4180
  %55 = and i1 false, %54, !dbg !4180
  %56 = select i1 %55, i64 1, i64 10, !dbg !4180
  %57 = srem i64 %38, %56, !dbg !4180
  %58 = trunc i64 %57 to i8, !dbg !4181
  %59 = add i8 %58, 48, !dbg !4182
  %60 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 13, !dbg !4183
  store i8 %59, ptr %60, align 1, !dbg !4183
  %61 = load [14 x i8], ptr %buf, align 1, !dbg !4184
    #dbg_value([14 x i8] %61, !4100, !DIExpression(), !4184)
  br label %rangeindex.loop, !dbg !4108

rangeindex.loop:                                  ; preds = %lookup.next21, %if.done9
  %62 = phi i64 [ -1, %if.done9 ], [ %63, %lookup.next21 ], !dbg !4108
  %63 = add i64 %62, 1, !dbg !4108
  %64 = icmp slt i64 %63, 14, !dbg !4108
  br i1 %64, label %rangeindex.body, label %rangeindex.done, !dbg !4108

rangeindex.body:                                  ; preds = %rangeindex.loop
  %65 = icmp uge i64 %63, 14, !dbg !4184
  br i1 %65, label %lookup.throw20, label %lookup.next21, !dbg !4184

lookup.next21:                                    ; preds = %rangeindex.body
  call void @llvm.lifetime.start.p0(i64 14, ptr %index.alloca), !dbg !4107
  store [14 x i8] %61, ptr %index.alloca, align 1, !dbg !4107
  %index.gep = getelementptr inbounds [14 x i8], ptr %index.alloca, i32 0, i64 %63, !dbg !4107
  %index.load = load i8, ptr %index.gep, align 1, !dbg !4107
  call void @llvm.lifetime.end.p0(i64 14, ptr %index.alloca), !dbg !4107
    #dbg_value(i8 %index.load, !4101, !DIExpression(), !4185)
    #dbg_value(i8 %index.load, !4101, !DIExpression(), !4186)
  call void @runtime.putchar(i8 %index.load, ptr undef), !dbg !4187
  br label %rangeindex.loop, !dbg !4108

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret void, !dbg !4188

if.else:                                          ; preds = %switch.next6
    #dbg_value(double %v, !4096, !DIExpression(), !4189)
  %66 = fcmp olt double %v, 0.000000e+00, !dbg !4190
  br i1 %66, label %if.then10, label %for.loop11, !dbg !4108

if.then10:                                        ; preds = %if.else
    #dbg_value(double %v, !4096, !DIExpression(), !4191)
  %67 = fneg double %v, !dbg !4192
    #dbg_value(double %67, !4096, !DIExpression(), !4193)
  %68 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4194
  store i8 45, ptr %68, align 1, !dbg !4194
  br label %for.loop11, !dbg !4108

for.loop11:                                       ; preds = %for.body12, %if.then10, %if.else
  %69 = phi double [ %v, %if.else ], [ %73, %for.body12 ], [ %67, %if.then10 ], !dbg !4139
  %70 = phi i64 [ 0, %if.else ], [ %72, %for.body12 ], [ 0, %if.then10 ], !dbg !4132
    #dbg_value(double %69, !4096, !DIExpression(), !4195)
  %71 = fcmp oge double %69, 1.000000e+01, !dbg !4196
  br i1 %71, label %for.body12, label %for.loop13, !dbg !4108

for.body12:                                       ; preds = %for.loop11
  %72 = add i64 %70, 1, !dbg !4197
    #dbg_value(i64 %72, !4097, !DIExpression(), !4197)
  %73 = fdiv double %69, 1.000000e+01, !dbg !4198
    #dbg_value(double %73, !4096, !DIExpression(), !4198)
  br label %for.loop11, !dbg !4108

for.loop13:                                       ; preds = %for.body14, %for.loop11
  %74 = phi double [ %69, %for.loop11 ], [ %78, %for.body14 ], !dbg !4139
  %75 = phi i64 [ %70, %for.loop11 ], [ %77, %for.body14 ], !dbg !4132
    #dbg_value(double %74, !4096, !DIExpression(), !4199)
  %76 = fcmp olt double %74, 1.000000e+00, !dbg !4200
  br i1 %76, label %for.body14, label %for.done15, !dbg !4108

for.body14:                                       ; preds = %for.loop13
  %77 = sub i64 %75, 1, !dbg !4201
    #dbg_value(i64 %77, !4097, !DIExpression(), !4201)
  %78 = fmul double %74, 1.000000e+01, !dbg !4202
    #dbg_value(double %78, !4096, !DIExpression(), !4202)
  br label %for.loop13, !dbg !4108

for.done15:                                       ; preds = %for.loop13
    #dbg_value(double 5.000000e+00, !4102, !DIExpression(), !4203)
    #dbg_value(i64 0, !4103, !DIExpression(), !4204)
  br label %for.loop16, !dbg !4108

for.loop16:                                       ; preds = %for.body17, %for.done15
  %79 = phi double [ 5.000000e+00, %for.done15 ], [ %82, %for.body17 ], !dbg !4203
  %80 = phi i64 [ 0, %for.done15 ], [ %83, %for.body17 ], !dbg !4204
    #dbg_value(i64 %80, !4103, !DIExpression(), !4205)
  %81 = icmp slt i64 %80, 7, !dbg !4206
  br i1 %81, label %for.body17, label %for.done18, !dbg !4108

for.body17:                                       ; preds = %for.loop16
  %82 = fdiv double %79, 1.000000e+01, !dbg !4207
    #dbg_value(double %82, !4102, !DIExpression(), !4207)
  %83 = add i64 %80, 1, !dbg !4208
    #dbg_value(i64 %83, !4103, !DIExpression(), !4208)
  br label %for.loop16, !dbg !4108

for.done18:                                       ; preds = %for.loop16
    #dbg_value(double %79, !4102, !DIExpression(), !4209)
  %84 = fadd double %74, %79, !dbg !4210
    #dbg_value(double %84, !4096, !DIExpression(), !4210)
    #dbg_value(double %84, !4096, !DIExpression(), !4211)
  %85 = fcmp oge double %84, 1.000000e+01, !dbg !4212
  br i1 %85, label %if.then19, label %if.done, !dbg !4108

if.then19:                                        ; preds = %for.done18
  %86 = add i64 %75, 1, !dbg !4213
    #dbg_value(i64 %86, !4097, !DIExpression(), !4213)
  %87 = fdiv double %84, 1.000000e+01, !dbg !4214
    #dbg_value(double %87, !4096, !DIExpression(), !4214)
  br label %if.done, !dbg !4108

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4151
  unreachable, !dbg !4151

lookup.throw20:                                   ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4184
  unreachable, !dbg !4184
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printcomplex64(float %c.r, float %c.i, ptr %context) unnamed_addr #1 !dbg !4215 {
entry:
  %0 = insertvalue { float, float } zeroinitializer, float %c.r, 0, !dbg !4220
  %1 = insertvalue { float, float } %0, float %c.i, 1, !dbg !4220
    #dbg_value(float %c.r, !4219, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4220)
    #dbg_value(float %c.i, !4219, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4220)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4221
    #dbg_value({ float, float } %1, !4219, !DIExpression(), !4222)
  %real = extractvalue { float, float } %1, 0, !dbg !4223
  call void @runtime.printfloat32(float %real, ptr undef), !dbg !4224
    #dbg_value({ float, float } %1, !4219, !DIExpression(), !4225)
  %imag = extractvalue { float, float } %1, 1, !dbg !4226
  call void @runtime.printfloat32(float %imag, ptr undef), !dbg !4227
  call void @runtime.printstring(ptr @"runtime$string.41", i64 2, ptr undef), !dbg !4228
  ret void, !dbg !4229
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printcomplex128(double %c.r, double %c.i, ptr %context) unnamed_addr #1 !dbg !4230 {
entry:
  %0 = insertvalue { double, double } zeroinitializer, double %c.r, 0, !dbg !4235
  %1 = insertvalue { double, double } %0, double %c.i, 1, !dbg !4235
    #dbg_value(double %c.r, !4234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4235)
    #dbg_value(double %c.i, !4234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4235)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4236
    #dbg_value({ double, double } %1, !4234, !DIExpression(), !4237)
  %real = extractvalue { double, double } %1, 0, !dbg !4238
  call void @runtime.printfloat64(double %real, ptr undef), !dbg !4239
    #dbg_value({ double, double } %1, !4234, !DIExpression(), !4240)
  %imag = extractvalue { double, double } %1, 1, !dbg !4241
  call void @runtime.printfloat64(double %imag, ptr undef), !dbg !4242
  call void @runtime.printstring(ptr @"runtime$string.42", i64 2, ptr undef), !dbg !4243
  ret void, !dbg !4244
}

define internal i1 @"interface:{Error:func:{}{basic:string}}.$typeassert"(ptr %actualType) unnamed_addr #11 {
entry:
  %"pointer:named:internal/reflectlite.badSyntax.icmp" = icmp eq ptr %actualType, @"reflect/types.type:pointer:named:internal/reflectlite.badSyntax"
  %0 = or i1 false, %"pointer:named:internal/reflectlite.badSyntax.icmp"
  %"pointer:named:internal/reflectlite.ValueError.icmp" = icmp eq ptr %actualType, @"reflect/types.type:pointer:named:internal/reflectlite.ValueError"
  %1 = or i1 %0, %"pointer:named:internal/reflectlite.ValueError.icmp"
  %"pointer:named:internal/reflectlite.TypeError.icmp" = icmp eq ptr %actualType, @"reflect/types.type:pointer:named:internal/reflectlite.TypeError"
  %2 = or i1 %1, %"pointer:named:internal/reflectlite.TypeError.icmp"
  %"named:internal/reflectlite.badSyntax.icmp" = icmp eq ptr %actualType, @"reflect/types.type:named:internal/reflectlite.badSyntax"
  %3 = or i1 %2, %"named:internal/reflectlite.badSyntax.icmp"
  ret i1 %3
}

define internal %runtime._string @"interface:{Error:func:{}{basic:string}}.Error$invoke"(ptr %0, ptr %actualType, ptr %context) unnamed_addr #12 {
entry:
  %"pointer:named:internal/reflectlite.badSyntax.icmp" = icmp eq ptr %actualType, @"reflect/types.type:pointer:named:internal/reflectlite.badSyntax"
  br i1 %"pointer:named:internal/reflectlite.badSyntax.icmp", label %"pointer:named:internal/reflectlite.badSyntax", label %"pointer:named:internal/reflectlite.badSyntax.next"

"pointer:named:internal/reflectlite.badSyntax":   ; preds = %entry
  %1 = call %runtime._string @"(*internal/reflectlite.badSyntax).Error"(ptr %0, ptr undef)
  ret %runtime._string %1

"pointer:named:internal/reflectlite.badSyntax.next": ; preds = %entry
  %"pointer:named:internal/reflectlite.ValueError.icmp" = icmp eq ptr %actualType, @"reflect/types.type:pointer:named:internal/reflectlite.ValueError"
  br i1 %"pointer:named:internal/reflectlite.ValueError.icmp", label %"pointer:named:internal/reflectlite.ValueError", label %"pointer:named:internal/reflectlite.ValueError.next"

"pointer:named:internal/reflectlite.ValueError":  ; preds = %"pointer:named:internal/reflectlite.badSyntax.next"
  %2 = call %runtime._string @"(*internal/reflectlite.ValueError).Error"(ptr %0, ptr undef)
  ret %runtime._string %2

"pointer:named:internal/reflectlite.ValueError.next": ; preds = %"pointer:named:internal/reflectlite.badSyntax.next"
  %"pointer:named:internal/reflectlite.TypeError.icmp" = icmp eq ptr %actualType, @"reflect/types.type:pointer:named:internal/reflectlite.TypeError"
  br i1 %"pointer:named:internal/reflectlite.TypeError.icmp", label %"pointer:named:internal/reflectlite.TypeError", label %"pointer:named:internal/reflectlite.TypeError.next"

"pointer:named:internal/reflectlite.TypeError":   ; preds = %"pointer:named:internal/reflectlite.ValueError.next"
  %3 = call %runtime._string @"(*internal/reflectlite.TypeError).Error"(ptr %0, ptr undef)
  ret %runtime._string %3

"pointer:named:internal/reflectlite.TypeError.next": ; preds = %"pointer:named:internal/reflectlite.ValueError.next"
  %"named:internal/reflectlite.badSyntax.icmp" = icmp eq ptr %actualType, @"reflect/types.type:named:internal/reflectlite.badSyntax"
  br i1 %"named:internal/reflectlite.badSyntax.icmp", label %"named:internal/reflectlite.badSyntax", label %"named:internal/reflectlite.badSyntax.next"

"named:internal/reflectlite.badSyntax":           ; preds = %"pointer:named:internal/reflectlite.TypeError.next"
  %4 = call %runtime._string @"(internal/reflectlite.badSyntax).Error$invoke"(ptr %0, ptr undef)
  ret %runtime._string %4

"named:internal/reflectlite.badSyntax.next":      ; preds = %"pointer:named:internal/reflectlite.TypeError.next"
  call void @runtime.nilPanic(ptr undef)
  unreachable
}

define internal i1 @"interface:{String:func:{}{basic:string}}.$typeassert"(ptr %actualType) unnamed_addr #13 {
entry:
  %"pointer:named:internal/reflectlite.RawType.icmp" = icmp eq ptr %actualType, @"reflect/types.type:pointer:named:internal/reflectlite.RawType"
  %0 = or i1 false, %"pointer:named:internal/reflectlite.RawType.icmp"
  %"pointer:named:internal/reflectlite.Kind.icmp" = icmp eq ptr %actualType, @"reflect/types.type:pointer:named:internal/reflectlite.Kind"
  %1 = or i1 %0, %"pointer:named:internal/reflectlite.Kind.icmp"
  %"named:internal/reflectlite.Kind.icmp" = icmp eq ptr %actualType, @"reflect/types.type:named:internal/reflectlite.Kind"
  %2 = or i1 %1, %"named:internal/reflectlite.Kind.icmp"
  ret i1 %2
}

define internal %runtime._string @"interface:{String:func:{}{basic:string}}.String$invoke"(ptr %0, ptr %actualType, ptr %context) unnamed_addr #14 {
entry:
  %"pointer:named:internal/reflectlite.RawType.icmp" = icmp eq ptr %actualType, @"reflect/types.type:pointer:named:internal/reflectlite.RawType"
  br i1 %"pointer:named:internal/reflectlite.RawType.icmp", label %"pointer:named:internal/reflectlite.RawType", label %"pointer:named:internal/reflectlite.RawType.next"

"pointer:named:internal/reflectlite.RawType":     ; preds = %entry
  %1 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %0, ptr undef)
  ret %runtime._string %1

"pointer:named:internal/reflectlite.RawType.next": ; preds = %entry
  %"pointer:named:internal/reflectlite.Kind.icmp" = icmp eq ptr %actualType, @"reflect/types.type:pointer:named:internal/reflectlite.Kind"
  br i1 %"pointer:named:internal/reflectlite.Kind.icmp", label %"pointer:named:internal/reflectlite.Kind", label %"pointer:named:internal/reflectlite.Kind.next"

"pointer:named:internal/reflectlite.Kind":        ; preds = %"pointer:named:internal/reflectlite.RawType.next"
  %2 = call %runtime._string @"(*internal/reflectlite.Kind).String"(ptr %0, ptr undef)
  ret %runtime._string %2

"pointer:named:internal/reflectlite.Kind.next":   ; preds = %"pointer:named:internal/reflectlite.RawType.next"
  %"named:internal/reflectlite.Kind.icmp" = icmp eq ptr %actualType, @"reflect/types.type:named:internal/reflectlite.Kind"
  br i1 %"named:internal/reflectlite.Kind.icmp", label %"named:internal/reflectlite.Kind", label %"named:internal/reflectlite.Kind.next"

"named:internal/reflectlite.Kind":                ; preds = %"pointer:named:internal/reflectlite.Kind.next"
  %3 = call %runtime._string @"(internal/reflectlite.Kind).String$invoke"(ptr %0, ptr undef)
  ret %runtime._string %3

"named:internal/reflectlite.Kind.next":           ; preds = %"pointer:named:internal/reflectlite.Kind.next"
  call void @runtime.nilPanic(ptr undef)
  unreachable
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime._panic(ptr %message.typecode, ptr %message.value, ptr %context) #1 !dbg !4245 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %message.typecode, 0, !dbg !4248
  %1 = insertvalue { ptr, ptr } %0, ptr %message.value, 1, !dbg !4248
    #dbg_value(ptr %message.typecode, !4247, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4248)
    #dbg_value(ptr %message.value, !4247, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4248)
    #dbg_value({ ptr, ptr } %1, !4247, !DIExpression(), !4249)
  %2 = extractvalue { ptr, ptr } %1, 0, !dbg !4250
  %3 = extractvalue { ptr, ptr } %1, 1, !dbg !4250
  call void @runtime.panicOrGoexit(ptr %2, ptr %3, i8 1, ptr undef), !dbg !4250
  ret void, !dbg !4251
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @runtime.stringEqual(ptr readonly %x.data, i64 %x.len, ptr readonly %y.data, i64 %y.len, ptr %context) #1 !dbg !4252 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %x.data, 0, !dbg !4260
  %1 = insertvalue %runtime._string %0, i64 %x.len, 1, !dbg !4260
    #dbg_value(ptr %x.data, !4257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4260)
    #dbg_value(i64 %x.len, !4257, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4260)
  %2 = insertvalue %runtime._string zeroinitializer, ptr %y.data, 0, !dbg !4260
  %3 = insertvalue %runtime._string %2, i64 %y.len, 1, !dbg !4260
    #dbg_value(ptr %y.data, !4258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4260)
    #dbg_value(i64 %y.len, !4258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4260)
    #dbg_value(%runtime._string %1, !4257, !DIExpression(), !4261)
  %len = extractvalue %runtime._string %1, 1, !dbg !4262
    #dbg_value(%runtime._string %3, !4258, !DIExpression(), !4263)
  %len3 = extractvalue %runtime._string %3, 1, !dbg !4264
  %4 = icmp ne i64 %len, %len3, !dbg !4265
  br i1 %4, label %if.then, label %if.done, !dbg !4266

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !4267

if.done:                                          ; preds = %entry
    #dbg_value(i64 0, !4259, !DIExpression(), !4268)
  br label %for.loop, !dbg !4266

for.loop:                                         ; preds = %if.done2, %if.done
  %5 = phi i64 [ 0, %if.done ], [ %14, %if.done2 ], !dbg !4268
    #dbg_value(i64 %5, !4259, !DIExpression(), !4269)
    #dbg_value(%runtime._string %1, !4257, !DIExpression(), !4270)
  %len4 = extractvalue %runtime._string %1, 1, !dbg !4271
  %6 = icmp slt i64 %5, %len4, !dbg !4272
  br i1 %6, label %for.body, label %for.done, !dbg !4266

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4259, !DIExpression(), !4273)
    #dbg_value(%runtime._string %1, !4257, !DIExpression(), !4274)
  %len5 = extractvalue %runtime._string %1, 1, !dbg !4275
  %7 = extractvalue %runtime._string %1, 0, !dbg !4275
  %8 = getelementptr inbounds i8, ptr %7, i64 %5, !dbg !4275
  %9 = load i8, ptr %8, align 1, !dbg !4275
    #dbg_value(i64 %5, !4259, !DIExpression(), !4276)
    #dbg_value(%runtime._string %3, !4258, !DIExpression(), !4277)
  %len6 = extractvalue %runtime._string %3, 1, !dbg !4278
  %10 = extractvalue %runtime._string %3, 0, !dbg !4278
  %11 = getelementptr inbounds i8, ptr %10, i64 %5, !dbg !4278
  %12 = load i8, ptr %11, align 1, !dbg !4278
  %13 = icmp ne i8 %9, %12, !dbg !4279
  br i1 %13, label %if.then1, label %if.done2, !dbg !4266

if.then1:                                         ; preds = %for.body
  ret i1 false, !dbg !4280

if.done2:                                         ; preds = %for.body
  %14 = add i64 %5, 1, !dbg !4281
    #dbg_value(i64 %14, !4259, !DIExpression(), !4281)
  br label %for.loop, !dbg !4266

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4282
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.slicePanic(ptr %context) #1 !dbg !4283 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4284
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.20", i64 18, ptr undef), !dbg !4285
  ret void, !dbg !4286
}

; Function Attrs: nounwind uwtable(sync)
define double @fminimum(double %x, double %y) #1 !dbg !4287 {
entry:
    #dbg_value(double %x, !4291, !DIExpression(), !4293)
    #dbg_value(double %y, !4292, !DIExpression(), !4293)
    #dbg_value(double %x, !4291, !DIExpression(), !4294)
    #dbg_value(double %y, !4292, !DIExpression(), !4295)
  %0 = call double @runtime.minimumFloat64(double %x, double %y, ptr undef), !dbg !4296
  ret double %0, !dbg !4297
}

; Function Attrs: nounwind uwtable(sync)
define internal double @runtime.minimumFloat64(double %x, double %y, ptr %context) unnamed_addr #1 !dbg !4298 {
entry:
    #dbg_value(double %x, !4300, !DIExpression(), !4302)
    #dbg_value(double %y, !4301, !DIExpression(), !4302)
    #dbg_value(double %x, !4300, !DIExpression(), !4303)
    #dbg_value(double %y, !4301, !DIExpression(), !4304)
  %0 = call double @"runtime.minimumFloat[float64 int64]"(double %x, double %y, i64 9218868437227405313, i64 9223372036854775807, ptr undef), !dbg !4305
  ret double %0, !dbg !4306
}

; Function Attrs: nounwind uwtable(sync)
define internal double @"runtime.minimumFloat[float64 int64]"(double %x, double %y, i64 %minPosNaN, i64 %magMask, ptr %context) unnamed_addr #1 !dbg !4307 {
entry:
    #dbg_value(double %x, !4311, !DIExpression(), !4317)
    #dbg_value(double %y, !4312, !DIExpression(), !4317)
    #dbg_value(i64 %minPosNaN, !4313, !DIExpression(), !4317)
    #dbg_value(i64 %magMask, !4314, !DIExpression(), !4317)
  %x6 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4318
  store double %x, ptr %x6, align 8, !dbg !4318
  %y7 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4319
  store double %y, ptr %y7, align 8, !dbg !4319
  %0 = load i64, ptr %x6, align 8, !dbg !4320
    #dbg_value(i64 %0, !4315, !DIExpression(), !4321)
  %1 = load i64, ptr %y7, align 8, !dbg !4322
    #dbg_value(i64 %1, !4316, !DIExpression(), !4323)
    #dbg_value(i64 %0, !4315, !DIExpression(), !4324)
    #dbg_value(i64 %minPosNaN, !4313, !DIExpression(), !4325)
  %2 = icmp sge i64 %0, %minPosNaN, !dbg !4326
  br i1 %2, label %switch.body, label %switch.next, !dbg !4327

switch.body:                                      ; preds = %entry
  %3 = load double, ptr %x6, align 8, !dbg !4328
    #dbg_value(double %3, !4311, !DIExpression(), !4328)
  ret double %3, !dbg !4329

switch.next:                                      ; preds = %entry
    #dbg_value(i64 %1, !4316, !DIExpression(), !4330)
    #dbg_value(i64 %minPosNaN, !4313, !DIExpression(), !4331)
  %4 = icmp sge i64 %1, %minPosNaN, !dbg !4332
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4327

switch.body1:                                     ; preds = %switch.next
  %5 = load double, ptr %y7, align 8, !dbg !4333
    #dbg_value(double %5, !4312, !DIExpression(), !4333)
  ret double %5, !dbg !4334

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i64 %0, !4315, !DIExpression(), !4335)
  %6 = icmp slt i64 %0, 0, !dbg !4336
  br i1 %6, label %if.then, label %if.done, !dbg !4327

if.then:                                          ; preds = %switch.next2
    #dbg_value(i64 %magMask, !4314, !DIExpression(), !4337)
  %7 = xor i64 %0, %magMask, !dbg !4338
    #dbg_value(i64 %7, !4315, !DIExpression(), !4338)
  br label %if.done, !dbg !4327

if.done:                                          ; preds = %if.then, %switch.next2
  %8 = phi i64 [ %0, %switch.next2 ], [ %7, %if.then ], !dbg !4321
    #dbg_value(i64 %1, !4316, !DIExpression(), !4339)
  %9 = icmp slt i64 %1, 0, !dbg !4340
  br i1 %9, label %if.then3, label %if.done4, !dbg !4327

if.then3:                                         ; preds = %if.done
    #dbg_value(i64 %magMask, !4314, !DIExpression(), !4341)
  %10 = xor i64 %1, %magMask, !dbg !4342
    #dbg_value(i64 %10, !4316, !DIExpression(), !4342)
  br label %if.done4, !dbg !4327

if.done4:                                         ; preds = %if.then3, %if.done
  %11 = phi i64 [ %1, %if.done ], [ %10, %if.then3 ], !dbg !4323
    #dbg_value(i64 %8, !4315, !DIExpression(), !4343)
    #dbg_value(i64 %11, !4316, !DIExpression(), !4344)
  %12 = icmp sle i64 %8, %11, !dbg !4345
  br i1 %12, label %if.then5, label %if.else, !dbg !4327

if.then5:                                         ; preds = %if.done4
  %13 = load double, ptr %x6, align 8, !dbg !4346
    #dbg_value(double %13, !4311, !DIExpression(), !4346)
  ret double %13, !dbg !4347

if.else:                                          ; preds = %if.done4
  %14 = load double, ptr %y7, align 8, !dbg !4348
    #dbg_value(double %14, !4312, !DIExpression(), !4348)
  ret double %14, !dbg !4349
}

; Function Attrs: nounwind uwtable(sync)
define float @fminimumf(float %x, float %y) #1 !dbg !4350 {
entry:
    #dbg_value(float %x, !4354, !DIExpression(), !4356)
    #dbg_value(float %y, !4355, !DIExpression(), !4356)
    #dbg_value(float %x, !4354, !DIExpression(), !4357)
    #dbg_value(float %y, !4355, !DIExpression(), !4358)
  %0 = call float @runtime.minimumFloat32(float %x, float %y, ptr undef), !dbg !4359
  ret float %0, !dbg !4360
}

; Function Attrs: nounwind uwtable(sync)
define internal float @runtime.minimumFloat32(float %x, float %y, ptr %context) unnamed_addr #1 !dbg !4361 {
entry:
    #dbg_value(float %x, !4363, !DIExpression(), !4365)
    #dbg_value(float %y, !4364, !DIExpression(), !4365)
    #dbg_value(float %x, !4363, !DIExpression(), !4366)
    #dbg_value(float %y, !4364, !DIExpression(), !4367)
  %0 = call float @"runtime.minimumFloat[float32 int32]"(float %x, float %y, i32 2139095041, i32 2147483647, ptr undef), !dbg !4368
  ret float %0, !dbg !4369
}

; Function Attrs: nounwind uwtable(sync)
define internal float @"runtime.minimumFloat[float32 int32]"(float %x, float %y, i32 %minPosNaN, i32 %magMask, ptr %context) unnamed_addr #1 !dbg !4370 {
entry:
    #dbg_value(float %x, !4374, !DIExpression(), !4380)
    #dbg_value(float %y, !4375, !DIExpression(), !4380)
    #dbg_value(i32 %minPosNaN, !4376, !DIExpression(), !4380)
    #dbg_value(i32 %magMask, !4377, !DIExpression(), !4380)
  %x6 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4381
  store float %x, ptr %x6, align 4, !dbg !4381
  %y7 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4382
  store float %y, ptr %y7, align 4, !dbg !4382
  %0 = load i32, ptr %x6, align 4, !dbg !4383
    #dbg_value(i32 %0, !4378, !DIExpression(), !4384)
  %1 = load i32, ptr %y7, align 4, !dbg !4385
    #dbg_value(i32 %1, !4379, !DIExpression(), !4386)
    #dbg_value(i32 %0, !4378, !DIExpression(), !4387)
    #dbg_value(i32 %minPosNaN, !4376, !DIExpression(), !4388)
  %2 = icmp sge i32 %0, %minPosNaN, !dbg !4389
  br i1 %2, label %switch.body, label %switch.next, !dbg !4390

switch.body:                                      ; preds = %entry
  %3 = load float, ptr %x6, align 4, !dbg !4391
    #dbg_value(float %3, !4374, !DIExpression(), !4391)
  ret float %3, !dbg !4392

switch.next:                                      ; preds = %entry
    #dbg_value(i32 %1, !4379, !DIExpression(), !4393)
    #dbg_value(i32 %minPosNaN, !4376, !DIExpression(), !4394)
  %4 = icmp sge i32 %1, %minPosNaN, !dbg !4395
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4390

switch.body1:                                     ; preds = %switch.next
  %5 = load float, ptr %y7, align 4, !dbg !4396
    #dbg_value(float %5, !4375, !DIExpression(), !4396)
  ret float %5, !dbg !4397

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i32 %0, !4378, !DIExpression(), !4398)
  %6 = icmp slt i32 %0, 0, !dbg !4399
  br i1 %6, label %if.then, label %if.done, !dbg !4390

if.then:                                          ; preds = %switch.next2
    #dbg_value(i32 %magMask, !4377, !DIExpression(), !4400)
  %7 = xor i32 %0, %magMask, !dbg !4401
    #dbg_value(i32 %7, !4378, !DIExpression(), !4401)
  br label %if.done, !dbg !4390

if.done:                                          ; preds = %if.then, %switch.next2
  %8 = phi i32 [ %0, %switch.next2 ], [ %7, %if.then ], !dbg !4384
    #dbg_value(i32 %1, !4379, !DIExpression(), !4402)
  %9 = icmp slt i32 %1, 0, !dbg !4403
  br i1 %9, label %if.then3, label %if.done4, !dbg !4390

if.then3:                                         ; preds = %if.done
    #dbg_value(i32 %magMask, !4377, !DIExpression(), !4404)
  %10 = xor i32 %1, %magMask, !dbg !4405
    #dbg_value(i32 %10, !4379, !DIExpression(), !4405)
  br label %if.done4, !dbg !4390

if.done4:                                         ; preds = %if.then3, %if.done
  %11 = phi i32 [ %1, %if.done ], [ %10, %if.then3 ], !dbg !4386
    #dbg_value(i32 %8, !4378, !DIExpression(), !4406)
    #dbg_value(i32 %11, !4379, !DIExpression(), !4407)
  %12 = icmp sle i32 %8, %11, !dbg !4408
  br i1 %12, label %if.then5, label %if.else, !dbg !4390

if.then5:                                         ; preds = %if.done4
  %13 = load float, ptr %x6, align 4, !dbg !4409
    #dbg_value(float %13, !4374, !DIExpression(), !4409)
  ret float %13, !dbg !4410

if.else:                                          ; preds = %if.done4
  %14 = load float, ptr %y7, align 4, !dbg !4411
    #dbg_value(float %14, !4375, !DIExpression(), !4411)
  ret float %14, !dbg !4412
}

; Function Attrs: nounwind uwtable(sync)
define double @fmaximum(double %x, double %y) #1 !dbg !4413 {
entry:
    #dbg_value(double %x, !4415, !DIExpression(), !4417)
    #dbg_value(double %y, !4416, !DIExpression(), !4417)
    #dbg_value(double %x, !4415, !DIExpression(), !4418)
    #dbg_value(double %y, !4416, !DIExpression(), !4419)
  %0 = call double @runtime.maximumFloat64(double %x, double %y, ptr undef), !dbg !4420
  ret double %0, !dbg !4421
}

; Function Attrs: nounwind uwtable(sync)
define internal double @runtime.maximumFloat64(double %x, double %y, ptr %context) unnamed_addr #1 !dbg !4422 {
entry:
    #dbg_value(double %x, !4424, !DIExpression(), !4426)
    #dbg_value(double %y, !4425, !DIExpression(), !4426)
    #dbg_value(double %x, !4424, !DIExpression(), !4427)
    #dbg_value(double %y, !4425, !DIExpression(), !4428)
  %0 = call double @"runtime.maximumFloat[float64 int64]"(double %x, double %y, i64 9218868437227405313, i64 9223372036854775807, ptr undef), !dbg !4429
  ret double %0, !dbg !4430
}

; Function Attrs: nounwind uwtable(sync)
define internal double @"runtime.maximumFloat[float64 int64]"(double %x, double %y, i64 %minPosNaN, i64 %magMask, ptr %context) unnamed_addr #1 !dbg !4431 {
entry:
    #dbg_value(double %x, !4433, !DIExpression(), !4440)
    #dbg_value(double %y, !4434, !DIExpression(), !4440)
    #dbg_value(i64 %minPosNaN, !4435, !DIExpression(), !4440)
    #dbg_value(i64 %magMask, !4436, !DIExpression(), !4440)
  %x6 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4441
  store double %x, ptr %x6, align 8, !dbg !4441
  %y7 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4442
  store double %y, ptr %y7, align 8, !dbg !4442
  %0 = load i64, ptr %x6, align 8, !dbg !4443
    #dbg_value(i64 %0, !4437, !DIExpression(), !4444)
  %1 = load i64, ptr %y7, align 8, !dbg !4445
    #dbg_value(i64 %1, !4438, !DIExpression(), !4446)
    #dbg_value(i64 %0, !4437, !DIExpression(), !4447)
  %2 = icmp slt i64 %0, 0, !dbg !4448
  br i1 %2, label %if.then, label %if.done, !dbg !4449

if.then:                                          ; preds = %entry
    #dbg_value(i64 %magMask, !4436, !DIExpression(), !4450)
  %3 = xor i64 %0, %magMask, !dbg !4451
    #dbg_value(i64 %3, !4437, !DIExpression(), !4451)
  br label %if.done, !dbg !4449

if.done:                                          ; preds = %if.then, %entry
  %4 = phi i64 [ %0, %entry ], [ %3, %if.then ], !dbg !4444
    #dbg_value(i64 %1, !4438, !DIExpression(), !4452)
  %5 = icmp slt i64 %1, 0, !dbg !4453
  br i1 %5, label %if.then1, label %if.done2, !dbg !4449

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %magMask, !4436, !DIExpression(), !4454)
  %6 = xor i64 %1, %magMask, !dbg !4455
    #dbg_value(i64 %6, !4438, !DIExpression(), !4455)
  br label %if.done2, !dbg !4449

if.done2:                                         ; preds = %if.then1, %if.done
  %7 = phi i64 [ %1, %if.done ], [ %6, %if.then1 ], !dbg !4446
    #dbg_value(i64 %minPosNaN, !4435, !DIExpression(), !4456)
  %8 = xor i64 %minPosNaN, -1, !dbg !4457
    #dbg_value(i64 %8, !4439, !DIExpression(), !4458)
    #dbg_value(i64 %4, !4437, !DIExpression(), !4459)
    #dbg_value(i64 %8, !4439, !DIExpression(), !4460)
  %9 = icmp sle i64 %4, %8, !dbg !4461
  br i1 %9, label %switch.body, label %switch.next, !dbg !4449

switch.body:                                      ; preds = %if.done2
  %10 = load double, ptr %x6, align 8, !dbg !4462
    #dbg_value(double %10, !4433, !DIExpression(), !4462)
  ret double %10, !dbg !4463

switch.next:                                      ; preds = %if.done2
    #dbg_value(i64 %7, !4438, !DIExpression(), !4464)
    #dbg_value(i64 %8, !4439, !DIExpression(), !4465)
  %11 = icmp sle i64 %7, %8, !dbg !4466
  br i1 %11, label %switch.body3, label %switch.next4, !dbg !4449

switch.body3:                                     ; preds = %switch.next
  %12 = load double, ptr %y7, align 8, !dbg !4467
    #dbg_value(double %12, !4434, !DIExpression(), !4467)
  ret double %12, !dbg !4468

switch.next4:                                     ; preds = %switch.next
    #dbg_value(i64 %4, !4437, !DIExpression(), !4469)
    #dbg_value(i64 %7, !4438, !DIExpression(), !4470)
  %13 = icmp sge i64 %4, %7, !dbg !4471
  br i1 %13, label %if.then5, label %if.else, !dbg !4449

if.then5:                                         ; preds = %switch.next4
  %14 = load double, ptr %x6, align 8, !dbg !4472
    #dbg_value(double %14, !4433, !DIExpression(), !4472)
  ret double %14, !dbg !4473

if.else:                                          ; preds = %switch.next4
  %15 = load double, ptr %y7, align 8, !dbg !4474
    #dbg_value(double %15, !4434, !DIExpression(), !4474)
  ret double %15, !dbg !4475
}

; Function Attrs: nounwind uwtable(sync)
define float @fmaximumf(float %x, float %y) #1 !dbg !4476 {
entry:
    #dbg_value(float %x, !4478, !DIExpression(), !4480)
    #dbg_value(float %y, !4479, !DIExpression(), !4480)
    #dbg_value(float %x, !4478, !DIExpression(), !4481)
    #dbg_value(float %y, !4479, !DIExpression(), !4482)
  %0 = call float @runtime.maximumFloat32(float %x, float %y, ptr undef), !dbg !4483
  ret float %0, !dbg !4484
}

; Function Attrs: nounwind uwtable(sync)
define internal float @runtime.maximumFloat32(float %x, float %y, ptr %context) unnamed_addr #1 !dbg !4485 {
entry:
    #dbg_value(float %x, !4487, !DIExpression(), !4489)
    #dbg_value(float %y, !4488, !DIExpression(), !4489)
    #dbg_value(float %x, !4487, !DIExpression(), !4490)
    #dbg_value(float %y, !4488, !DIExpression(), !4491)
  %0 = call float @"runtime.maximumFloat[float32 int32]"(float %x, float %y, i32 2139095041, i32 2147483647, ptr undef), !dbg !4492
  ret float %0, !dbg !4493
}

; Function Attrs: nounwind uwtable(sync)
define internal float @"runtime.maximumFloat[float32 int32]"(float %x, float %y, i32 %minPosNaN, i32 %magMask, ptr %context) unnamed_addr #1 !dbg !4494 {
entry:
    #dbg_value(float %x, !4496, !DIExpression(), !4503)
    #dbg_value(float %y, !4497, !DIExpression(), !4503)
    #dbg_value(i32 %minPosNaN, !4498, !DIExpression(), !4503)
    #dbg_value(i32 %magMask, !4499, !DIExpression(), !4503)
  %x6 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4504
  store float %x, ptr %x6, align 4, !dbg !4504
  %y7 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4505
  store float %y, ptr %y7, align 4, !dbg !4505
  %0 = load i32, ptr %x6, align 4, !dbg !4506
    #dbg_value(i32 %0, !4500, !DIExpression(), !4507)
  %1 = load i32, ptr %y7, align 4, !dbg !4508
    #dbg_value(i32 %1, !4501, !DIExpression(), !4509)
    #dbg_value(i32 %0, !4500, !DIExpression(), !4510)
  %2 = icmp slt i32 %0, 0, !dbg !4511
  br i1 %2, label %if.then, label %if.done, !dbg !4512

if.then:                                          ; preds = %entry
    #dbg_value(i32 %magMask, !4499, !DIExpression(), !4513)
  %3 = xor i32 %0, %magMask, !dbg !4514
    #dbg_value(i32 %3, !4500, !DIExpression(), !4514)
  br label %if.done, !dbg !4512

if.done:                                          ; preds = %if.then, %entry
  %4 = phi i32 [ %0, %entry ], [ %3, %if.then ], !dbg !4507
    #dbg_value(i32 %1, !4501, !DIExpression(), !4515)
  %5 = icmp slt i32 %1, 0, !dbg !4516
  br i1 %5, label %if.then1, label %if.done2, !dbg !4512

if.then1:                                         ; preds = %if.done
    #dbg_value(i32 %magMask, !4499, !DIExpression(), !4517)
  %6 = xor i32 %1, %magMask, !dbg !4518
    #dbg_value(i32 %6, !4501, !DIExpression(), !4518)
  br label %if.done2, !dbg !4512

if.done2:                                         ; preds = %if.then1, %if.done
  %7 = phi i32 [ %1, %if.done ], [ %6, %if.then1 ], !dbg !4509
    #dbg_value(i32 %minPosNaN, !4498, !DIExpression(), !4519)
  %8 = xor i32 %minPosNaN, -1, !dbg !4520
    #dbg_value(i32 %8, !4502, !DIExpression(), !4521)
    #dbg_value(i32 %4, !4500, !DIExpression(), !4522)
    #dbg_value(i32 %8, !4502, !DIExpression(), !4523)
  %9 = icmp sle i32 %4, %8, !dbg !4524
  br i1 %9, label %switch.body, label %switch.next, !dbg !4512

switch.body:                                      ; preds = %if.done2
  %10 = load float, ptr %x6, align 4, !dbg !4525
    #dbg_value(float %10, !4496, !DIExpression(), !4525)
  ret float %10, !dbg !4526

switch.next:                                      ; preds = %if.done2
    #dbg_value(i32 %7, !4501, !DIExpression(), !4527)
    #dbg_value(i32 %8, !4502, !DIExpression(), !4528)
  %11 = icmp sle i32 %7, %8, !dbg !4529
  br i1 %11, label %switch.body3, label %switch.next4, !dbg !4512

switch.body3:                                     ; preds = %switch.next
  %12 = load float, ptr %y7, align 4, !dbg !4530
    #dbg_value(float %12, !4497, !DIExpression(), !4530)
  ret float %12, !dbg !4531

switch.next4:                                     ; preds = %switch.next
    #dbg_value(i32 %4, !4500, !DIExpression(), !4532)
    #dbg_value(i32 %7, !4501, !DIExpression(), !4533)
  %13 = icmp sge i32 %4, %7, !dbg !4534
  br i1 %13, label %if.then5, label %if.else, !dbg !4512

if.then5:                                         ; preds = %switch.next4
  %14 = load float, ptr %x6, align 4, !dbg !4535
    #dbg_value(float %14, !4496, !DIExpression(), !4535)
  ret float %14, !dbg !4536

if.else:                                          ; preds = %switch.next4
  %15 = load float, ptr %y7, align 4, !dbg !4537
    #dbg_value(float %15, !4497, !DIExpression(), !4537)
  ret float %15, !dbg !4538
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.initHeap(ptr %context) unnamed_addr #1 !dbg !4539 {
entry:
  call void @GC_init(), !dbg !4540
  call void @tinygo_runtime_bdwgc_init(), !dbg !4541
  ret void, !dbg !4542
}

declare void @GC_init() #2

declare void @tinygo_runtime_bdwgc_init() #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_runtime_bdwgc_callback() #1 !dbg !4543 {
entry:
  call void @runtime.gcMarkReachable(ptr undef), !dbg !4544
  ret void, !dbg !4545
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.gcMarkReachable(ptr %context) unnamed_addr #1 !dbg !4546 {
entry:
  call void @"internal/task.GCStopWorldAndScan"(ptr undef), !dbg !4547
  ret void, !dbg !4548
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.markRoots(i64 %start, i64 %end, ptr %context) #1 !dbg !4549 {
entry:
    #dbg_value(i64 %start, !4553, !DIExpression(), !4555)
    #dbg_value(i64 %end, !4554, !DIExpression(), !4555)
    #dbg_value(i64 %start, !4553, !DIExpression(), !4556)
    #dbg_value(i64 %end, !4554, !DIExpression(), !4557)
  call void @GC_push_all(i64 %start, i64 %end), !dbg !4558
  ret void, !dbg !4559
}

declare void @GC_push_all(i64, i64) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.free(ptr %ptr, ptr %context) unnamed_addr #1 !dbg !4560 {
entry:
    #dbg_value(ptr %ptr, !4562, !DIExpression(), !4563)
    #dbg_value(ptr %ptr, !4562, !DIExpression(), !4564)
  call void @GC_free(ptr %ptr), !dbg !4565
  ret void, !dbg !4566
}

declare void @GC_free(ptr nocapture) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.gcScanGlobals"(ptr %context) #1 !dbg !4567 {
entry:
  call void @runtime.findGlobals(ptr undef, ptr @runtime.markRoots, ptr undef), !dbg !4568
  ret void, !dbg !4569
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.findGlobals(ptr %found.context, ptr %found.funcptr, ptr %context) unnamed_addr #1 !dbg !4570 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %found.context, 0, !dbg !4601
  %1 = insertvalue { ptr, ptr } %0, ptr %found.funcptr, 1, !dbg !4601
    #dbg_value(ptr %found.context, !4574, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4601)
    #dbg_value(ptr %found.funcptr, !4574, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4601)
  %2 = load i64, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 11), align 8, !dbg !4602
  %3 = add i64 ptrtoint (ptr @__ehdr_start to i64), %2, !dbg !4603
  %4 = inttoptr i64 %3 to ptr, !dbg !4604
    #dbg_value(ptr %4, !4575, !DIExpression(), !4605)
    #dbg_value(i64 0, !4576, !DIExpression(), !4606)
  br label %for.loop, !dbg !4607

for.loop:                                         ; preds = %if.done, %entry
  %5 = phi ptr [ %4, %entry ], [ %30, %if.done ], !dbg !4605
  %6 = phi i64 [ 0, %entry ], [ %31, %if.done ], !dbg !4606
    #dbg_value(i64 %6, !4576, !DIExpression(), !4608)
  %7 = load i16, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 16), align 2, !dbg !4609
  %8 = zext i16 %7 to i64, !dbg !4610
  %9 = icmp slt i64 %6, %8, !dbg !4611
  br i1 %9, label %for.body, label %for.done, !dbg !4607

for.body:                                         ; preds = %for.loop
  br i1 true, label %if.then, label %if.else, !dbg !4607

if.then:                                          ; preds = %for.body
    #dbg_value(ptr %5, !4575, !DIExpression(), !4612)
    #dbg_value(ptr %5, !4577, !DIExpression(), !4613)
    #dbg_value(ptr %5, !4577, !DIExpression(), !4614)
  %10 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 0, !dbg !4615
  %11 = icmp eq ptr %10, null, !dbg !4615
  br i1 %11, label %deref.throw, label %deref.next, !dbg !4615

deref.next:                                       ; preds = %if.then
  %12 = load i32, ptr %10, align 4, !dbg !4615
  %13 = icmp eq i32 %12, 1, !dbg !4616
  br i1 %13, label %cond.true, label %if.done, !dbg !4607

cond.true:                                        ; preds = %deref.next
    #dbg_value(ptr %5, !4577, !DIExpression(), !4617)
  %14 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 1, !dbg !4618
  %15 = icmp eq ptr %14, null, !dbg !4618
  br i1 %15, label %deref.throw4, label %deref.next5, !dbg !4618

deref.next5:                                      ; preds = %cond.true
  %16 = load i32, ptr %14, align 4, !dbg !4618
  %17 = and i32 %16, 2, !dbg !4619
  %18 = icmp ne i32 %17, 0, !dbg !4620
  br i1 %18, label %if.then1, label %if.done, !dbg !4607

if.then1:                                         ; preds = %deref.next5
    #dbg_value(ptr %5, !4577, !DIExpression(), !4621)
  %19 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 3, !dbg !4622
  %20 = icmp eq ptr %19, null, !dbg !4622
  br i1 %20, label %deref.throw6, label %deref.next7, !dbg !4622

deref.next7:                                      ; preds = %if.then1
  %21 = load i64, ptr %19, align 8, !dbg !4622
    #dbg_value(i64 %21, !4590, !DIExpression(), !4623)
    #dbg_value(i64 %21, !4590, !DIExpression(), !4624)
    #dbg_value(ptr %5, !4577, !DIExpression(), !4625)
  %22 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 6, !dbg !4626
  %23 = icmp eq ptr %22, null, !dbg !4626
  br i1 %23, label %deref.throw8, label %deref.next9, !dbg !4626

deref.next9:                                      ; preds = %deref.next7
  %24 = load i64, ptr %22, align 8, !dbg !4626
  %25 = add i64 %21, %24, !dbg !4627
    #dbg_value(i64 %25, !4591, !DIExpression(), !4628)
    #dbg_value({ ptr, ptr } %1, !4574, !DIExpression(), !4629)
    #dbg_value(i64 %21, !4590, !DIExpression(), !4630)
    #dbg_value(i64 %25, !4591, !DIExpression(), !4631)
  %26 = extractvalue { ptr, ptr } %1, 0, !dbg !4632
  %27 = extractvalue { ptr, ptr } %1, 1, !dbg !4632
  %28 = icmp eq ptr %27, null, !dbg !4632
  br i1 %28, label %fpcall.throw, label %fpcall.next, !dbg !4632

fpcall.next:                                      ; preds = %deref.next9
  call void %27(i64 %21, i64 %25, ptr %26), !dbg !4632
  br label %if.done, !dbg !4607

if.done:                                          ; preds = %fpcall.next19, %deref.next13, %deref.next11, %fpcall.next, %deref.next5, %deref.next
    #dbg_value(ptr %5, !4575, !DIExpression(), !4633)
  %29 = load i16, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 15), align 2, !dbg !4634
  %30 = getelementptr i8, ptr %5, i16 %29, !dbg !4635
    #dbg_value(ptr %30, !4575, !DIExpression(), !4636)
  %31 = add i64 %6, 1, !dbg !4637
    #dbg_value(i64 %31, !4576, !DIExpression(), !4637)
  br label %for.loop, !dbg !4607

if.else:                                          ; preds = %for.body
    #dbg_value(ptr %5, !4575, !DIExpression(), !4638)
    #dbg_value(ptr %5, !4592, !DIExpression(), !4639)
    #dbg_value(ptr %5, !4592, !DIExpression(), !4640)
  %32 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 0, !dbg !4641
  %33 = icmp eq ptr %32, null, !dbg !4641
  br i1 %33, label %deref.throw10, label %deref.next11, !dbg !4641

deref.next11:                                     ; preds = %if.else
  %34 = load i32, ptr %32, align 4, !dbg !4641
  %35 = icmp eq i32 %34, 1, !dbg !4642
  br i1 %35, label %cond.true2, label %if.done, !dbg !4607

cond.true2:                                       ; preds = %deref.next11
    #dbg_value(ptr %5, !4592, !DIExpression(), !4643)
  %36 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 6, !dbg !4644
  %37 = icmp eq ptr %36, null, !dbg !4644
  br i1 %37, label %deref.throw12, label %deref.next13, !dbg !4644

deref.next13:                                     ; preds = %cond.true2
  %38 = load i32, ptr %36, align 4, !dbg !4644
  %39 = and i32 %38, 2, !dbg !4645
  %40 = icmp ne i32 %39, 0, !dbg !4646
  br i1 %40, label %if.then3, label %if.done, !dbg !4607

if.then3:                                         ; preds = %deref.next13
    #dbg_value(ptr %5, !4592, !DIExpression(), !4647)
  %41 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 2, !dbg !4648
  %42 = icmp eq ptr %41, null, !dbg !4648
  br i1 %42, label %deref.throw14, label %deref.next15, !dbg !4648

deref.next15:                                     ; preds = %if.then3
  %43 = load i64, ptr %41, align 8, !dbg !4648
    #dbg_value(i64 %43, !4599, !DIExpression(), !4649)
    #dbg_value(i64 %43, !4599, !DIExpression(), !4650)
    #dbg_value(ptr %5, !4592, !DIExpression(), !4651)
  %44 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 5, !dbg !4652
  %45 = icmp eq ptr %44, null, !dbg !4652
  br i1 %45, label %deref.throw16, label %deref.next17, !dbg !4652

deref.next17:                                     ; preds = %deref.next15
  %46 = load i64, ptr %44, align 8, !dbg !4652
  %47 = add i64 %43, %46, !dbg !4653
    #dbg_value(i64 %47, !4600, !DIExpression(), !4654)
    #dbg_value({ ptr, ptr } %1, !4574, !DIExpression(), !4655)
    #dbg_value(i64 %43, !4599, !DIExpression(), !4656)
    #dbg_value(i64 %47, !4600, !DIExpression(), !4657)
  %48 = extractvalue { ptr, ptr } %1, 0, !dbg !4658
  %49 = extractvalue { ptr, ptr } %1, 1, !dbg !4658
  %50 = icmp eq ptr %49, null, !dbg !4658
  br i1 %50, label %fpcall.throw18, label %fpcall.next19, !dbg !4658

fpcall.next19:                                    ; preds = %deref.next17
  call void %49(i64 %43, i64 %47, ptr %48), !dbg !4658
  br label %if.done, !dbg !4607

for.done:                                         ; preds = %for.loop
  ret void, !dbg !4659

deref.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !4615
  unreachable, !dbg !4615

deref.throw4:                                     ; preds = %cond.true
  call void @runtime.nilPanic(ptr undef), !dbg !4618
  unreachable, !dbg !4618

deref.throw6:                                     ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !4622
  unreachable, !dbg !4622

deref.throw8:                                     ; preds = %deref.next7
  call void @runtime.nilPanic(ptr undef), !dbg !4626
  unreachable, !dbg !4626

fpcall.throw:                                     ; preds = %deref.next9
  call void @runtime.nilPanic(ptr undef), !dbg !4632
  unreachable, !dbg !4632

deref.throw10:                                    ; preds = %if.else
  call void @runtime.nilPanic(ptr undef), !dbg !4641
  unreachable, !dbg !4641

deref.throw12:                                    ; preds = %cond.true2
  call void @runtime.nilPanic(ptr undef), !dbg !4644
  unreachable, !dbg !4644

deref.throw14:                                    ; preds = %if.then3
  call void @runtime.nilPanic(ptr undef), !dbg !4648
  unreachable, !dbg !4648

deref.throw16:                                    ; preds = %deref.next15
  call void @runtime.nilPanic(ptr undef), !dbg !4652
  unreachable, !dbg !4652

fpcall.throw18:                                   ; preds = %deref.next17
  call void @runtime.nilPanic(ptr undef), !dbg !4658
  unreachable, !dbg !4658
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_scanstack(i64 %sp) #1 !dbg !4660 {
entry:
    #dbg_value(i64 %sp, !4662, !DIExpression(), !4663)
    #dbg_value(i64 %sp, !4662, !DIExpression(), !4664)
  %0 = call i64 @"internal/task.StackTop"(ptr undef), !dbg !4665
  call void @runtime.markRoots(i64 %sp, i64 %0, ptr undef), !dbg !4666
  ret void, !dbg !4667
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.unsafeSlicePanic(ptr %context) #1 !dbg !4668 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4669
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.22", i64 37, ptr undef), !dbg !4670
  ret void, !dbg !4671
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.negativeShiftPanic(ptr %context) #1 !dbg !4672 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4673
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.24", i64 14, ptr undef), !dbg !4674
  ret void, !dbg !4675
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printspace(ptr %context) #1 !dbg !4676 {
entry:
  call void @runtime.putchar(i8 32, ptr undef), !dbg !4677
  ret void, !dbg !4678
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memmove(ptr %dst, ptr %src, i64 %size, ptr %context) #1 !dbg !4679 {
entry:
    #dbg_value(ptr %dst, !4681, !DIExpression(), !4684)
    #dbg_value(ptr %src, !4682, !DIExpression(), !4684)
    #dbg_value(i64 %size, !4683, !DIExpression(), !4684)
  call void @llvm.memmove.p0.p0.i64(ptr %dst, ptr %src, i64 %size, i1 false), !dbg !4684
  ret void, !dbg !4684
}

; Function Attrs: nounwind uwtable(sync)
define i64 @main(i32 %argc, ptr nocapture dereferenceable_or_null(8) %argv) #1 !dbg !4685 {
entry:
    #dbg_value(i32 %argc, !4689, !DIExpression(), !4694)
    #dbg_value(ptr %argv, !4690, !DIExpression(), !4694)
  br i1 false, label %if.then, label %if.done, !dbg !4695

if.then:                                          ; preds = %entry
  call void @runtime.allocateHeap(ptr undef), !dbg !4696
  br label %if.done, !dbg !4695

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(i32 %argc, !4689, !DIExpression(), !4697)
  store i32 %argc, ptr @runtime.main_argc, align 4, !dbg !4698
    #dbg_value(i32 %argc, !4691, !DIExpression(), !4698)
    #dbg_value(ptr %argv, !4690, !DIExpression(), !4699)
  store ptr %argv, ptr @runtime.main_argv, align 8, !dbg !4700
    #dbg_value(ptr %argv, !4692, !DIExpression(), !4700)
  call void @tinygo_register_fatal_signals(), !dbg !4701
  %0 = call i64 @runtime.getCurrentStackPointer(ptr undef), !dbg !4702
  store i64 %0, ptr @runtime.stackTop, align 8, !dbg !4703
    #dbg_value(i64 %0, !4693, !DIExpression(), !4703)
  call void @runtime.runMain(ptr undef), !dbg !4704
  ret i64 0, !dbg !4705
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.allocateHeap(ptr %context) unnamed_addr #1 !dbg !4706 {
entry:
  store i64 1073741824, ptr @runtime.heapMaxSize, align 8, !dbg !4713
    #dbg_value(i64 1073741824, !4708, !DIExpression(), !4713)
  br label %for.body, !dbg !4714

for.body:                                         ; preds = %if.then1, %if.then, %entry
  %0 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4715
    #dbg_value(i64 %0, !4708, !DIExpression(), !4715)
  %1 = call ptr @mmap(ptr null, i64 %0, i64 3, i64 34, i64 -1, i64 0), !dbg !4716
    #dbg_value(ptr %1, !4709, !DIExpression(), !4717)
    #dbg_value(ptr %1, !4709, !DIExpression(), !4718)
  %2 = icmp eq ptr %1, inttoptr (i64 -1 to ptr), !dbg !4719
  br i1 %2, label %if.then, label %if.done, !dbg !4714

if.then:                                          ; preds = %for.body
  %3 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4720
  %4 = udiv i64 %3, 2, !dbg !4720
  store i64 %4, ptr @runtime.heapMaxSize, align 8, !dbg !4720
    #dbg_value(i64 %4, !4708, !DIExpression(), !4720)
  %5 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4721
    #dbg_value(i64 %5, !4708, !DIExpression(), !4721)
  %6 = icmp ult i64 %5, 4096, !dbg !4722
  br i1 %6, label %if.then1, label %for.body, !dbg !4714

if.then1:                                         ; preds = %if.then
  call void @runtime.runtimePanic(ptr @"runtime$string.56", i64 27, ptr undef), !dbg !4723
  br label %for.body, !dbg !4714

if.done:                                          ; preds = %for.body
    #dbg_value(ptr %1, !4709, !DIExpression(), !4724)
  %7 = ptrtoint ptr %1 to i64, !dbg !4725
  store i64 %7, ptr @runtime.heapStart, align 8, !dbg !4726
    #dbg_value(i64 %7, !4710, !DIExpression(), !4726)
  %8 = load i64, ptr @runtime.heapStart, align 8, !dbg !4727
    #dbg_value(i64 %8, !4710, !DIExpression(), !4727)
  %9 = load i64, ptr @runtime.heapSize, align 8, !dbg !4728
    #dbg_value(i64 %9, !4711, !DIExpression(), !4728)
  %10 = add i64 %8, %9, !dbg !4729
  store i64 %10, ptr @runtime.heapEnd, align 8, !dbg !4730
    #dbg_value(i64 %10, !4712, !DIExpression(), !4730)
  ret void, !dbg !4731
}

declare void @tinygo_register_fatal_signals() #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @runtime.runMain(ptr %context) unnamed_addr #15 !dbg !4732 {
entry:
  call void @runtime.run(ptr undef), !dbg !4733
  ret void, !dbg !4734
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.run(ptr %context) unnamed_addr #1 !dbg !4735 {
entry:
  call void @runtime.initRand(ptr undef), !dbg !4738
  call void @runtime.initHeap(ptr undef), !dbg !4739
  %0 = load i64, ptr @runtime.stackTop, align 8, !dbg !4740
    #dbg_value(i64 %0, !4737, !DIExpression(), !4740)
  call void @"internal/task.Init"(i64 %0, ptr undef), !dbg !4741
  call void @runtime.initAll(ptr undef), !dbg !4742
  call void @main.main(ptr undef), !dbg !4743
  ret void, !dbg !4744
}

define internal void @runtime.initAll(ptr %context) unnamed_addr #2 {
entry:
  ret void
}

declare void @main.main(ptr) #2

declare ptr @mmap(ptr nocapture, i64, i64, i64, i64, i64) #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_handle_fatal_signal(i32 %sig, i64 %addr) #1 !dbg !4745 {
entry:
    #dbg_value(i32 %sig, !4749, !DIExpression(), !4751)
    #dbg_value(i64 %addr, !4750, !DIExpression(), !4751)
  br i1 false, label %if.then, label %if.done, !dbg !4752

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !4753
  br label %if.done, !dbg !4752

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(i64 %addr, !4750, !DIExpression(), !4754)
  %0 = icmp ne i64 %addr, 0, !dbg !4755
  br i1 %0, label %if.then1, label %if.else, !dbg !4752

if.then1:                                         ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.50", i64 24, ptr undef), !dbg !4756
    #dbg_value(i64 %addr, !4750, !DIExpression(), !4757)
  call void @runtime.printptr(i64 %addr, ptr undef), !dbg !4758
  br label %if.done2, !dbg !4752

if.done2:                                         ; preds = %if.else, %if.then1
  call void @runtime.printstring(ptr @"runtime$string.51", i64 16, ptr undef), !dbg !4759
    #dbg_value(i32 %sig, !4749, !DIExpression(), !4760)
  %1 = icmp eq i32 %sig, 7, !dbg !4761
  br i1 %1, label %switch.body, label %switch.next, !dbg !4752

switch.body:                                      ; preds = %if.done2
  call void @runtime.printlock(ptr undef), !dbg !4762
  call void @runtime.printstring(ptr @"runtime$string.52", i64 6, ptr undef), !dbg !4762
  call void @runtime.printnl(ptr undef), !dbg !4762
  call void @runtime.printunlock(ptr undef), !dbg !4762
  br label %switch.done, !dbg !4752

switch.done:                                      ; preds = %switch.next6, %switch.body5, %switch.body3, %switch.body
    #dbg_value(i32 %sig, !4749, !DIExpression(), !4763)
  call void @raise(i32 %sig), !dbg !4764
  ret void, !dbg !4765

switch.next:                                      ; preds = %if.done2
  %2 = icmp eq i32 %sig, 4, !dbg !4766
  br i1 %2, label %switch.body3, label %switch.next4, !dbg !4752

switch.body3:                                     ; preds = %switch.next
  call void @runtime.printlock(ptr undef), !dbg !4767
  call void @runtime.printstring(ptr @"runtime$string.53", i64 6, ptr undef), !dbg !4767
  call void @runtime.printnl(ptr undef), !dbg !4767
  call void @runtime.printunlock(ptr undef), !dbg !4767
  br label %switch.done, !dbg !4752

switch.next4:                                     ; preds = %switch.next
  %3 = icmp eq i32 %sig, 11, !dbg !4768
  br i1 %3, label %switch.body5, label %switch.next6, !dbg !4752

switch.body5:                                     ; preds = %switch.next4
  call void @runtime.printlock(ptr undef), !dbg !4769
  call void @runtime.printstring(ptr @"runtime$string.54", i64 7, ptr undef), !dbg !4769
  call void @runtime.printnl(ptr undef), !dbg !4769
  call void @runtime.printunlock(ptr undef), !dbg !4769
  br label %switch.done, !dbg !4752

switch.next6:                                     ; preds = %switch.next4
    #dbg_value(i32 %sig, !4749, !DIExpression(), !4770)
  call void @runtime.printlock(ptr undef), !dbg !4771
  call void @runtime.printint32(i32 %sig, ptr undef), !dbg !4771
  call void @runtime.printnl(ptr undef), !dbg !4771
  call void @runtime.printunlock(ptr undef), !dbg !4771
  br label %switch.done, !dbg !4752

if.else:                                          ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.55", i64 20, ptr undef), !dbg !4772
  br label %if.done2, !dbg !4752
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printlock(ptr %context) #1 !dbg !4773 {
entry:
  call void @"(*internal/task.Mutex).Lock"(ptr @runtime.printLock, ptr undef), !dbg !4774
  ret void, !dbg !4775
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printunlock(ptr %context) #1 !dbg !4776 {
entry:
  call void @"(*internal/task.Mutex).Unlock"(ptr @runtime.printLock, ptr undef), !dbg !4777
  ret void, !dbg !4778
}

declare void @raise(i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @runtime.sliceAppend(ptr %srcBuf, ptr nocapture readonly %elemsBuf, i64 %srcLen, i64 %srcCap, i64 %elemsLen, i64 %elemSize, ptr %layout, ptr %context) #1 !dbg !4779 {
entry:
    #dbg_value(ptr %srcBuf, !4784, !DIExpression(), !4792)
    #dbg_value(ptr %elemsBuf, !4785, !DIExpression(), !4792)
    #dbg_value(i64 %srcLen, !4786, !DIExpression(), !4792)
    #dbg_value(i64 %srcCap, !4787, !DIExpression(), !4792)
    #dbg_value(i64 %elemsLen, !4788, !DIExpression(), !4792)
    #dbg_value(i64 %elemSize, !4789, !DIExpression(), !4792)
    #dbg_value(ptr %layout, !4790, !DIExpression(), !4792)
    #dbg_value(i64 %srcLen, !4786, !DIExpression(), !4793)
    #dbg_value(i64 %elemsLen, !4788, !DIExpression(), !4794)
  %0 = add i64 %srcLen, %elemsLen, !dbg !4795
    #dbg_value(i64 %0, !4791, !DIExpression(), !4796)
    #dbg_value(i64 %elemsLen, !4788, !DIExpression(), !4797)
  %1 = icmp ugt i64 %elemsLen, 0, !dbg !4798
  br i1 %1, label %if.then, label %if.done, !dbg !4799

if.then:                                          ; preds = %entry
    #dbg_value(ptr %srcBuf, !4784, !DIExpression(), !4800)
    #dbg_value(i64 %srcLen, !4786, !DIExpression(), !4801)
    #dbg_value(i64 %srcCap, !4787, !DIExpression(), !4802)
    #dbg_value(i64 %0, !4791, !DIExpression(), !4803)
    #dbg_value(i64 %elemSize, !4789, !DIExpression(), !4804)
    #dbg_value(ptr %layout, !4790, !DIExpression(), !4805)
  %2 = call { ptr, i64, i64 } @runtime.sliceGrow(ptr %srcBuf, i64 %srcLen, i64 %srcCap, i64 %0, i64 %elemSize, ptr %layout, ptr undef), !dbg !4806
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4806
    #dbg_value(ptr %3, !4784, !DIExpression(), !4807)
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4806
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4806
    #dbg_value(i64 %5, !4787, !DIExpression(), !4808)
    #dbg_value(ptr %3, !4784, !DIExpression(), !4809)
    #dbg_value(i64 %srcLen, !4786, !DIExpression(), !4810)
    #dbg_value(i64 %elemSize, !4789, !DIExpression(), !4811)
  %6 = mul i64 %srcLen, %elemSize, !dbg !4812
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !4813
    #dbg_value(ptr %elemsBuf, !4785, !DIExpression(), !4814)
    #dbg_value(i64 %elemsLen, !4788, !DIExpression(), !4815)
    #dbg_value(i64 %elemSize, !4789, !DIExpression(), !4816)
  %8 = mul i64 %elemsLen, %elemSize, !dbg !4817
  call void @runtime.memmove(ptr %7, ptr %elemsBuf, i64 %8, ptr undef), !dbg !4818
  br label %if.done, !dbg !4799

if.done:                                          ; preds = %if.then, %entry
  %9 = phi ptr [ %srcBuf, %entry ], [ %3, %if.then ], !dbg !4819
  %10 = phi i64 [ %srcCap, %entry ], [ %5, %if.then ], !dbg !4820
    #dbg_value(ptr %9, !4784, !DIExpression(), !4821)
    #dbg_value(i64 %0, !4791, !DIExpression(), !4822)
    #dbg_value(i64 %10, !4787, !DIExpression(), !4823)
  %11 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %9, 0, !dbg !4824
  %12 = insertvalue { ptr, i64, i64 } %11, i64 %0, 1, !dbg !4824
  %13 = insertvalue { ptr, i64, i64 } %12, i64 %10, 2, !dbg !4824
  ret { ptr, i64, i64 } %13, !dbg !4824
}

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @runtime.sliceGrow(ptr %oldBuf, i64 %oldLen, i64 %oldCap, i64 %newCap, i64 %elemSize, ptr %layout, ptr %context) #1 !dbg !4825 {
entry:
    #dbg_value(ptr %oldBuf, !4829, !DIExpression(), !4836)
    #dbg_value(i64 %oldLen, !4830, !DIExpression(), !4836)
    #dbg_value(i64 %oldCap, !4831, !DIExpression(), !4836)
    #dbg_value(i64 %newCap, !4832, !DIExpression(), !4836)
    #dbg_value(i64 %elemSize, !4833, !DIExpression(), !4836)
    #dbg_value(ptr %layout, !4834, !DIExpression(), !4836)
    #dbg_value(i64 %oldCap, !4831, !DIExpression(), !4837)
    #dbg_value(i64 %newCap, !4832, !DIExpression(), !4838)
  %0 = icmp uge i64 %oldCap, %newCap, !dbg !4839
  br i1 %0, label %if.then, label %if.done, !dbg !4840

if.then:                                          ; preds = %entry
    #dbg_value(ptr %oldBuf, !4829, !DIExpression(), !4841)
    #dbg_value(i64 %oldLen, !4830, !DIExpression(), !4842)
    #dbg_value(i64 %oldCap, !4831, !DIExpression(), !4843)
  %1 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %oldBuf, 0, !dbg !4844
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %oldLen, 1, !dbg !4844
  %3 = insertvalue { ptr, i64, i64 } %2, i64 %oldCap, 2, !dbg !4844
  ret { ptr, i64, i64 } %3, !dbg !4844

if.done:                                          ; preds = %entry
    #dbg_value(i64 %newCap, !4832, !DIExpression(), !4845)
  %4 = call i64 @"math/bits.Len"(i64 %newCap, ptr undef), !dbg !4846
  %5 = icmp slt i64 %4, 0, !dbg !4847
  br i1 %5, label %shift.throw, label %shift.next, !dbg !4847

shift.next:                                       ; preds = %if.done
  %shift.overflow = icmp uge i64 %4, 64, !dbg !4847
  %6 = shl i64 1, %4, !dbg !4847
  %shift.result = select i1 %shift.overflow, i64 0, i64 %6, !dbg !4847
    #dbg_value(i64 %shift.result, !4832, !DIExpression(), !4848)
    #dbg_value(i64 %shift.result, !4832, !DIExpression(), !4849)
    #dbg_value(i64 %elemSize, !4833, !DIExpression(), !4850)
  %7 = mul i64 %shift.result, %elemSize, !dbg !4851
    #dbg_value(ptr %layout, !4834, !DIExpression(), !4852)
  %8 = call ptr @runtime.alloc(i64 %7, ptr %layout, ptr undef), !dbg !4853
    #dbg_value(ptr %8, !4835, !DIExpression(), !4854)
    #dbg_value(i64 %oldLen, !4830, !DIExpression(), !4855)
  %9 = icmp ugt i64 %oldLen, 0, !dbg !4856
  br i1 %9, label %if.then1, label %if.done2, !dbg !4840

if.then1:                                         ; preds = %shift.next
    #dbg_value(ptr %8, !4835, !DIExpression(), !4857)
    #dbg_value(ptr %oldBuf, !4829, !DIExpression(), !4858)
    #dbg_value(i64 %oldLen, !4830, !DIExpression(), !4859)
    #dbg_value(i64 %elemSize, !4833, !DIExpression(), !4860)
  %10 = mul i64 %oldLen, %elemSize, !dbg !4861
  call void @runtime.memmove(ptr %8, ptr %oldBuf, i64 %10, ptr undef), !dbg !4862
  br label %if.done2, !dbg !4840

if.done2:                                         ; preds = %if.then1, %shift.next
    #dbg_value(ptr %8, !4835, !DIExpression(), !4863)
    #dbg_value(i64 %oldLen, !4830, !DIExpression(), !4864)
    #dbg_value(i64 %shift.result, !4832, !DIExpression(), !4865)
  %11 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %8, 0, !dbg !4866
  %12 = insertvalue { ptr, i64, i64 } %11, i64 %oldLen, 1, !dbg !4866
  %13 = insertvalue { ptr, i64, i64 } %12, i64 %shift.result, 2, !dbg !4866
  ret { ptr, i64, i64 } %13, !dbg !4866

shift.throw:                                      ; preds = %if.done
  call void @runtime.negativeShiftPanic(ptr undef), !dbg !4847
  unreachable, !dbg !4847
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_signal_handler(i32 %s) #1 !dbg !4867 {
entry:
    #dbg_value(i32 %s, !4869, !DIExpression(), !4873)
  br label %for.body, !dbg !4874

for.body:                                         ; preds = %for.body, %entry
    #dbg_value(i32 %s, !4869, !DIExpression(), !4875)
  %shift.overflow = icmp uge i32 %s, 32, !dbg !4876
  %0 = shl i32 1, %s, !dbg !4876
  %shift.result = select i1 %shift.overflow, i32 0, i32 %0, !dbg !4876
    #dbg_value(i32 %shift.result, !4870, !DIExpression(), !4877)
  %1 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @runtime.receivedSignals, ptr undef), !dbg !4878
    #dbg_value(i32 %1, !4871, !DIExpression(), !4879)
    #dbg_value(i32 %1, !4871, !DIExpression(), !4880)
    #dbg_value(i32 %1, !4871, !DIExpression(), !4881)
    #dbg_value(i32 %shift.result, !4870, !DIExpression(), !4882)
  %2 = or i32 %1, %shift.result, !dbg !4883
  %3 = call i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr @runtime.receivedSignals, i32 %1, i32 %2, ptr undef), !dbg !4884
    #dbg_value(i1 %3, !4872, !DIExpression(), !4885)
    #dbg_value(i1 %3, !4872, !DIExpression(), !4886)
  br i1 %3, label %if.then, label %for.body, !dbg !4874

if.then:                                          ; preds = %for.body
  %4 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr @runtime.signalFutex, i32 1, ptr undef), !dbg !4887
  %5 = icmp eq i32 %4, 0, !dbg !4888
  br i1 %5, label %if.then1, label %if.done, !dbg !4874

if.then1:                                         ; preds = %if.then
  call void @"(*internal/futex.Futex).WakeAll"(ptr @runtime.signalFutex, ptr undef), !dbg !4889
  br label %if.done, !dbg !4874

if.done:                                          ; preds = %if.then1, %if.then
  ret void, !dbg !4890
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @runtime.stringConcat(ptr dereferenceable_or_null(1) %x.ptr, i64 %x.length, ptr dereferenceable_or_null(1) %y.ptr, i64 %y.length, ptr %context) #1 !dbg !4891 {
entry:
  %complit = alloca %runtime._string, align 8, !dbg !4903
  %y = alloca %runtime._string, align 8, !dbg !4903
  %x = alloca %runtime._string, align 8, !dbg !4903
  %0 = insertvalue %runtime._string zeroinitializer, ptr %x.ptr, 0, !dbg !4903
  %1 = insertvalue %runtime._string %0, i64 %x.length, 1, !dbg !4903
    #dbg_value(ptr %x.ptr, !4899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4903)
    #dbg_value(i64 %x.length, !4899, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4903)
  %2 = insertvalue %runtime._string zeroinitializer, ptr %y.ptr, 0, !dbg !4903
  %3 = insertvalue %runtime._string %2, i64 %y.length, 1, !dbg !4903
    #dbg_value(ptr %y.ptr, !4900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4903)
    #dbg_value(i64 %y.length, !4900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4903)
  store %runtime._string zeroinitializer, ptr %x, align 8, !dbg !4903
  store %runtime._string %1, ptr %x, align 8, !dbg !4904
  store %runtime._string zeroinitializer, ptr %y, align 8, !dbg !4903
  store %runtime._string %3, ptr %y, align 8, !dbg !4905
  %4 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4906
  %5 = icmp eq ptr %4, null, !dbg !4906
  br i1 %5, label %deref.throw, label %deref.next, !dbg !4906

deref.next:                                       ; preds = %entry
  %6 = load i64, ptr %4, align 8, !dbg !4906
  %7 = icmp eq i64 %6, 0, !dbg !4907
  br i1 %7, label %if.then, label %if.else, !dbg !4908

if.then:                                          ; preds = %deref.next
  %8 = load %runtime._string, ptr %y, align 8, !dbg !4909
    #dbg_value(%runtime._string %8, !4900, !DIExpression(), !4909)
  ret %runtime._string %8, !dbg !4910

if.else:                                          ; preds = %deref.next
  %9 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4911
  %10 = icmp eq ptr %9, null, !dbg !4911
  br i1 %10, label %deref.throw3, label %deref.next4, !dbg !4911

deref.next4:                                      ; preds = %if.else
  %11 = load i64, ptr %9, align 8, !dbg !4911
  %12 = icmp eq i64 %11, 0, !dbg !4912
  br i1 %12, label %if.then1, label %if.else2, !dbg !4908

if.then1:                                         ; preds = %deref.next4
  %13 = load %runtime._string, ptr %x, align 8, !dbg !4913
    #dbg_value(%runtime._string %13, !4899, !DIExpression(), !4913)
  ret %runtime._string %13, !dbg !4914

if.else2:                                         ; preds = %deref.next4
  %14 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4915
  %15 = icmp eq ptr %14, null, !dbg !4915
  br i1 %15, label %deref.throw5, label %deref.next6, !dbg !4915

deref.next6:                                      ; preds = %if.else2
  %16 = load i64, ptr %14, align 8, !dbg !4915
  %17 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4916
  %18 = icmp eq ptr %17, null, !dbg !4916
  br i1 %18, label %deref.throw7, label %deref.next8, !dbg !4916

deref.next8:                                      ; preds = %deref.next6
  %19 = load i64, ptr %17, align 8, !dbg !4916
  %20 = add i64 %16, %19, !dbg !4917
    #dbg_value(i64 %20, !4901, !DIExpression(), !4918)
    #dbg_value(i64 %20, !4901, !DIExpression(), !4919)
  %21 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !4920
  %22 = call ptr @runtime.alloc(i64 %20, ptr %21, ptr undef), !dbg !4921
    #dbg_value(ptr %22, !4902, !DIExpression(), !4922)
    #dbg_value(ptr %22, !4902, !DIExpression(), !4923)
  %23 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 0, !dbg !4924
  %24 = icmp eq ptr %23, null, !dbg !4924
  br i1 %24, label %deref.throw9, label %deref.next10, !dbg !4924

deref.next10:                                     ; preds = %deref.next8
  %25 = load ptr, ptr %23, align 8, !dbg !4924
  %26 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4925
  %27 = icmp eq ptr %26, null, !dbg !4925
  br i1 %27, label %deref.throw11, label %deref.next12, !dbg !4925

deref.next12:                                     ; preds = %deref.next10
  %28 = load i64, ptr %26, align 8, !dbg !4925
  call void @runtime.memcpy(ptr %22, ptr %25, i64 %28, ptr undef), !dbg !4926
    #dbg_value(ptr %22, !4902, !DIExpression(), !4927)
  %29 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4928
  %30 = icmp eq ptr %29, null, !dbg !4928
  br i1 %30, label %deref.throw13, label %deref.next14, !dbg !4928

deref.next14:                                     ; preds = %deref.next12
  %31 = load i64, ptr %29, align 8, !dbg !4928
  %32 = getelementptr i8, ptr %22, i64 %31, !dbg !4929
  %33 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 0, !dbg !4930
  %34 = icmp eq ptr %33, null, !dbg !4930
  br i1 %34, label %deref.throw15, label %deref.next16, !dbg !4930

deref.next16:                                     ; preds = %deref.next14
  %35 = load ptr, ptr %33, align 8, !dbg !4930
  %36 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4931
  %37 = icmp eq ptr %36, null, !dbg !4931
  br i1 %37, label %deref.throw17, label %deref.next18, !dbg !4931

deref.next18:                                     ; preds = %deref.next16
  %38 = load i64, ptr %36, align 8, !dbg !4931
  call void @runtime.memcpy(ptr %32, ptr %35, i64 %38, ptr undef), !dbg !4932
  store %runtime._string zeroinitializer, ptr %complit, align 8, !dbg !4903
  %39 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !4933
    #dbg_value(ptr %22, !4902, !DIExpression(), !4934)
  %40 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !4935
    #dbg_value(i64 %20, !4901, !DIExpression(), !4936)
  %41 = icmp eq ptr %39, null, !dbg !4933
  br i1 %41, label %store.throw, label %store.next, !dbg !4933

store.next:                                       ; preds = %deref.next18
  store ptr %22, ptr %39, align 8, !dbg !4933
  %42 = icmp eq ptr %40, null, !dbg !4935
  br i1 %42, label %store.throw19, label %store.next20, !dbg !4935

store.next20:                                     ; preds = %store.next
  store i64 %20, ptr %40, align 8, !dbg !4935
    #dbg_value(i64 %20, !4901, !DIExpression(), !4936)
  %43 = load %runtime._string, ptr %complit, align 8, !dbg !4937
  ret %runtime._string %43, !dbg !4938

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !4906
  unreachable, !dbg !4906

deref.throw3:                                     ; preds = %if.else
  call void @runtime.nilPanic(ptr undef), !dbg !4911
  unreachable, !dbg !4911

deref.throw5:                                     ; preds = %if.else2
  call void @runtime.nilPanic(ptr undef), !dbg !4915
  unreachable, !dbg !4915

deref.throw7:                                     ; preds = %deref.next6
  call void @runtime.nilPanic(ptr undef), !dbg !4916
  unreachable, !dbg !4916

deref.throw9:                                     ; preds = %deref.next8
  call void @runtime.nilPanic(ptr undef), !dbg !4924
  unreachable, !dbg !4924

deref.throw11:                                    ; preds = %deref.next10
  call void @runtime.nilPanic(ptr undef), !dbg !4925
  unreachable, !dbg !4925

deref.throw13:                                    ; preds = %deref.next12
  call void @runtime.nilPanic(ptr undef), !dbg !4928
  unreachable, !dbg !4928

deref.throw15:                                    ; preds = %deref.next14
  call void @runtime.nilPanic(ptr undef), !dbg !4930
  unreachable, !dbg !4930

deref.throw17:                                    ; preds = %deref.next16
  call void @runtime.nilPanic(ptr undef), !dbg !4931
  unreachable, !dbg !4931

store.throw:                                      ; preds = %deref.next18
  call void @runtime.nilPanic(ptr undef), !dbg !4933
  unreachable, !dbg !4933

store.throw19:                                    ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !4935
  unreachable, !dbg !4935
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @runtime.stringFromBytes(ptr nocapture readonly dereferenceable_or_null(1) %x.ptr, i64 %x.len, i64 %x.cap, ptr %context) #1 !dbg !4939 {
entry:
  %complit = alloca %runtime._string, align 8, !dbg !4946
  %x = alloca { ptr, i64, i64 }, align 8, !dbg !4946
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %x.ptr, 0, !dbg !4946
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %x.len, 1, !dbg !4946
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %x.cap, 2, !dbg !4946
    #dbg_value(ptr %x.ptr, !4944, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4946)
    #dbg_value(i64 %x.len, !4944, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4946)
    #dbg_value(i64 %x.cap, !4944, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4946)
  store { ptr, i64, i64 } zeroinitializer, ptr %x, align 8, !dbg !4946
  store { ptr, i64, i64 } %2, ptr %x, align 8, !dbg !4947
  %3 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4948
  %4 = icmp eq ptr %3, null, !dbg !4948
  br i1 %4, label %deref.throw, label %deref.next, !dbg !4948

deref.next:                                       ; preds = %entry
  %5 = load i64, ptr %3, align 8, !dbg !4948
  %6 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !4949
  %7 = call ptr @runtime.alloc(i64 %5, ptr %6, ptr undef), !dbg !4950
    #dbg_value(ptr %7, !4945, !DIExpression(), !4951)
    #dbg_value(ptr %7, !4945, !DIExpression(), !4952)
  %8 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 0, !dbg !4953
  %9 = icmp eq ptr %8, null, !dbg !4953
  br i1 %9, label %deref.throw1, label %deref.next2, !dbg !4953

deref.next2:                                      ; preds = %deref.next
  %10 = load ptr, ptr %8, align 8, !dbg !4953
  %11 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4954
  %12 = icmp eq ptr %11, null, !dbg !4954
  br i1 %12, label %deref.throw3, label %deref.next4, !dbg !4954

deref.next4:                                      ; preds = %deref.next2
  %13 = load i64, ptr %11, align 8, !dbg !4954
  call void @runtime.memcpy(ptr %7, ptr %10, i64 %13, ptr undef), !dbg !4955
  store %runtime._string zeroinitializer, ptr %complit, align 8, !dbg !4946
  %14 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !4956
    #dbg_value(ptr %7, !4945, !DIExpression(), !4957)
  %15 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !4958
  %16 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4959
  %17 = icmp eq ptr %16, null, !dbg !4959
  br i1 %17, label %deref.throw5, label %deref.next6, !dbg !4959

deref.next6:                                      ; preds = %deref.next4
  %18 = load i64, ptr %16, align 8, !dbg !4959
  %19 = icmp eq ptr %14, null, !dbg !4956
  br i1 %19, label %store.throw, label %store.next, !dbg !4956

store.next:                                       ; preds = %deref.next6
  store ptr %7, ptr %14, align 8, !dbg !4956
  %20 = icmp eq ptr %15, null, !dbg !4958
  br i1 %20, label %store.throw7, label %store.next8, !dbg !4958

store.next8:                                      ; preds = %store.next
  store i64 %18, ptr %15, align 8, !dbg !4958
  %21 = load %runtime._string, ptr %complit, align 8, !dbg !4960
  ret %runtime._string %21, !dbg !4961

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !4948
  unreachable, !dbg !4948

deref.throw1:                                     ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !4953
  unreachable, !dbg !4953

deref.throw3:                                     ; preds = %deref.next2
  call void @runtime.nilPanic(ptr undef), !dbg !4954
  unreachable, !dbg !4954

deref.throw5:                                     ; preds = %deref.next4
  call void @runtime.nilPanic(ptr undef), !dbg !4959
  unreachable, !dbg !4959

store.throw:                                      ; preds = %deref.next6
  call void @runtime.nilPanic(ptr undef), !dbg !4956
  unreachable, !dbg !4956

store.throw7:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !4958
  unreachable, !dbg !4958
}

; Function Attrs: nounwind uwtable(sync)
define i64 @f_gold(i64 %n) #1 !dbg !4962 {
entry:
    #dbg_value(i64 %n, !4965, !DIExpression(), !4968)
    #dbg_value(i64 %n, !4965, !DIExpression(), !4969)
  %0 = icmp slt i64 %n, 0, !dbg !4970
  br i1 %0, label %if.then, label %if.done, !dbg !4971

if.then:                                          ; preds = %entry
  ret i64 0, !dbg !4972

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !4965, !DIExpression(), !4973)
  %1 = icmp sle i64 %n, 1, !dbg !4974
  br i1 %1, label %if.then1, label %if.done2, !dbg !4971

if.then1:                                         ; preds = %if.done
  ret i64 1, !dbg !4975

if.done2:                                         ; preds = %if.done
    #dbg_value(double 0.000000e+00, !4966, !DIExpression(), !4976)
    #dbg_value(i64 2, !4967, !DIExpression(), !4977)
  br label %for.loop, !dbg !4971

for.loop:                                         ; preds = %for.body, %if.done2
  %2 = phi double [ 0.000000e+00, %if.done2 ], [ %7, %for.body ], !dbg !4976
  %3 = phi i64 [ 2, %if.done2 ], [ %8, %for.body ], !dbg !4977
    #dbg_value(i64 %3, !4967, !DIExpression(), !4978)
    #dbg_value(i64 %n, !4965, !DIExpression(), !4979)
  %4 = icmp sle i64 %3, %n, !dbg !4980
  br i1 %4, label %for.body, label %for.done, !dbg !4971

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4967, !DIExpression(), !4981)
  %5 = sitofp i64 %3 to double, !dbg !4982
  %6 = call double @math.Log10(double %5, ptr undef), !dbg !4983
  %7 = fadd double %2, %6, !dbg !4984
    #dbg_value(double %7, !4966, !DIExpression(), !4984)
  %8 = add i64 %3, 1, !dbg !4985
    #dbg_value(i64 %8, !4967, !DIExpression(), !4985)
  br label %for.loop, !dbg !4971

for.done:                                         ; preds = %for.loop
    #dbg_value(double %2, !4966, !DIExpression(), !4986)
  %9 = call double @math.Floor(double %2, ptr undef), !dbg !4987
  %10 = fadd double %9, 1.000000e+00, !dbg !4988
  %abovemin = fcmp ole double 0xC3E0000000000000, %10, !dbg !4989
  %belowmax = fcmp ole double %10, 0x43DFFFFFFFFFFFFE, !dbg !4989
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4989
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4989
  %isnan = fcmp uno double %10, %10, !dbg !4989
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4989
  %normal = fptosi double %10 to i64, !dbg !4989
  %11 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4989
  ret i64 %11, !dbg !4990
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline nounwind allockind("alloc,zeroed") allocsize(0) uwtable(sync) "alloc-family"="runtime.alloc" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { noreturn "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tinygo-methods"="reflect/methods.Error() string" }
attributes #12 = { "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tinygo-invoke"="reflect/methods.Error() string" "tinygo-methods"="reflect/methods.Error() string" }
attributes #13 = { "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tinygo-methods"="reflect/methods.String() string" }
attributes #14 = { "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tinygo-invoke"="reflect/methods.String() string" "tinygo-methods"="reflect/methods.String() string" }
attributes #15 = { noinline nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }

!llvm.dbg.cu = !{!519, !521, !769, !787, !976, !1020, !1021, !1022, !1030, !1032, !1516, !1527, !1555, !1556, !1731}
!llvm.ident = !{!1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732}
!llvm.module.flags = !{!1733, !1734}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "stubs.go", directory: "/usr/local/go/src/math")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, align: 8, elements: !5)
!4 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DISubrange(count: 15, lowerBound: 0)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 12, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "itoa.go", directory: "/usr/local/lib/tinygo/src/internal/itoa")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, align: 8, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 1, lowerBound: 0)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !9, line: 20, type: !10, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "unicode/utf8.first", linkageName: "unicode/utf8.first", scope: !17, file: !17, line: 71, type: !18, isLocal: false, isDefinition: true, align: 8)
!17 = !DIFile(filename: "utf8.go", directory: "/usr/local/lib/tinygo/src/unicode/utf8")
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, align: 8, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 256, lowerBound: 0)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "unicode/utf8.acceptRanges", linkageName: "unicode/utf8.acceptRanges", scope: !17, file: !17, line: 100, type: !23, isLocal: false, isDefinition: true, align: 8)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 256, align: 8, elements: !29)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "unicode/utf8.acceptRange", baseType: !25)
!25 = !DICompositeType(tag: DW_TAG_structure_type, size: 16, align: 8, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "lo", baseType: !4, size: 8, align: 8)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "hi", baseType: !4, size: 8, align: 8, offset: 8)
!29 = !{!30}
!30 = !DISubrange(count: 16, lowerBound: 0)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !33, line: 393, type: !34, isLocal: true, isDefinition: true)
!33 = !DIFile(filename: "type.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, align: 8, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 4, lowerBound: 0)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeElem", linkageName: "internal/reflectlite.errTypeElem", scope: !33, file: !33, line: 393, type: !39, isLocal: false, isDefinition: true, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64, dwarfAddressSpace: 0)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.TypeError", baseType: !41)
!41 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !42)
!42 = !{!43}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "Method", baseType: !44, size: 128, align: 64)
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", size: 128, align: 64, elements: !45)
!45 = !{!46, !48}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64, dwarfAddressSpace: 0)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "len", baseType: !49, size: 64, align: 64, offset: 64)
!49 = !DIBasicType(name: "uintptr", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !33, line: 394, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, align: 8, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 3, lowerBound: 0)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeKey", linkageName: "internal/reflectlite.errTypeKey", scope: !33, file: !33, line: 394, type: !39, isLocal: false, isDefinition: true, align: 64)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !33, line: 395, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, align: 8, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 5, lowerBound: 0)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeField", linkageName: "internal/reflectlite.errTypeField", scope: !33, file: !33, line: 395, type: !39, isLocal: false, isDefinition: true, align: 64)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !33, line: 397, type: !52, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeLen", linkageName: "internal/reflectlite.errTypeLen", scope: !33, file: !33, line: 397, type: !39, isLocal: false, isDefinition: true, align: 64)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !33, line: 398, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, align: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 8, lowerBound: 0)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeNumField", linkageName: "internal/reflectlite.errTypeNumField", scope: !33, file: !33, line: 398, type: !39, isLocal: false, isDefinition: true, align: 64)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !33, line: 399, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, align: 8, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 7, lowerBound: 0)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeChanDir", linkageName: "internal/reflectlite.errTypeChanDir", scope: !33, file: !33, line: 399, type: !39, isLocal: false, isDefinition: true, align: 64)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "type uint8", scope: !84, file: !84, line: 1, type: !85, isLocal: false, isDefinition: true, align: 64)
!84 = !DIFile(filename: "<Go type>", directory: "")
!85 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !86)
!86 = !{!87, !89}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !88, size: 8, align: 8)
!88 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !90, size: 64, align: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe.Pointer", baseType: null, size: 64, align: 64, dwarfAddressSpace: 0)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "type *uint8", scope: !84, file: !84, line: 1, type: !93, isLocal: false, isDefinition: true, align: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !94)
!94 = !{!87, !95, !97}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !96, size: 16, align: 16, offset: 16)
!96 = !DIBasicType(name: "uint16", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !90, size: 64, align: 64, offset: 64)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "type struct{meta uint8}", scope: !84, file: !84, line: 1, type: !100, isLocal: false, isDefinition: true, align: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !101)
!101 = !{!87, !95, !89, !102, !103, !105, !106}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !90, size: 64, align: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "size", baseType: !104, size: 32, align: 32, offset: 192)
!104 = !DIBasicType(name: "uint32", size: 32, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "numFields", baseType: !96, size: 16, align: 16, offset: 224)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !107, size: 128, align: 64, offset: 256)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, align: 64, elements: !11)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.structField", baseType: !109)
!109 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !110)
!110 = !{!111, !112}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "typecode", baseType: !90, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !47, size: 64, align: 64, offset: 64)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "type *struct{meta uint8}", scope: !84, file: !84, line: 1, type: !93, isLocal: false, isDefinition: true, align: 64)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !117, line: 17, type: !118, isLocal: true, isDefinition: true)
!117 = !DIFile(filename: "strconv.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, align: 8, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 14, lowerBound: 0)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "type struct{}", scope: !84, file: !84, line: 1, type: !123, isLocal: false, isDefinition: true, align: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !124)
!124 = !{!87, !95, !89, !102, !103, !105, !125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !126, align: 64, offset: 256)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, align: 64, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 0, lowerBound: 0)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "type *struct{}", scope: !84, file: !84, line: 1, type: !93, isLocal: false, isDefinition: true, align: 64)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !117, line: 250, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, align: 8, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 2, lowerBound: 0)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !117, line: 251, type: !3, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !117, line: 252, type: !3, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !117, line: 278, type: !133, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !117, line: 280, type: !133, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !117, line: 282, type: !133, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !117, line: 284, type: !133, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !117, line: 286, type: !133, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !117, line: 288, type: !133, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !117, line: 290, type: !133, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !117, line: 294, type: !133, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !117, line: 295, type: !3, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !117, line: 296, type: !3, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !117, line: 301, type: !133, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !117, line: 303, type: !3, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !117, line: 306, type: !133, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !117, line: 308, type: !3, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "type internal/reflectlite.ValueError", scope: !84, file: !84, line: 1, type: !170, isLocal: false, isDefinition: true, align: 64)
!170 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !171)
!171 = !{!87, !95, !89, !172, !173, !174}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !90, size: 64, align: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !90, size: 64, align: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !175, size: 184, align: 8, offset: 256)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 184, align: 8, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 23, lowerBound: 0)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "type struct{Method string; Kind internal/reflectlite.Kind}", scope: !84, file: !84, line: 1, type: !180, isLocal: false, isDefinition: true, align: 64)
!180 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !181)
!181 = !{!87, !95, !89, !102, !103, !105, !182}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !183, size: 256, align: 64, offset: 256)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, align: 64, elements: !134)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "type *struct{Method string; Kind internal/reflectlite.Kind}", scope: !84, file: !84, line: 1, type: !93, isLocal: false, isDefinition: true, align: 64)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !33, line: 60, type: !77, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !33, line: 62, type: !34, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !33, line: 64, type: !52, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !33, line: 66, type: !34, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !33, line: 68, type: !59, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !33, line: 70, type: !59, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !33, line: 72, type: !59, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !33, line: 74, type: !34, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !33, line: 76, type: !59, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !33, line: 78, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, align: 8, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 6, lowerBound: 0)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !33, line: 80, type: !206, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !33, line: 82, type: !206, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !33, line: 84, type: !77, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !33, line: 86, type: !77, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !33, line: 88, type: !77, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !33, line: 90, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, align: 8, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 9, lowerBound: 0)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !33, line: 92, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, align: 8, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 10, lowerBound: 0)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !33, line: 94, type: !206, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !33, line: 96, type: !118, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !33, line: 98, type: !34, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !33, line: 100, type: !221, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !33, line: 102, type: !52, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !33, line: 104, type: !59, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !33, line: 106, type: !59, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !33, line: 108, type: !34, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !33, line: 110, type: !52, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !33, line: 112, type: !206, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !33, line: 114, type: !34, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "type internal/reflectlite.TypeError", scope: !84, file: !84, line: 1, type: !253, isLocal: false, isDefinition: true, align: 64)
!253 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !254)
!254 = !{!87, !95, !89, !172, !173, !255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !256, size: 176, align: 8, offset: 256)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 176, align: 8, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 22, lowerBound: 0)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(name: "type struct{Method string}", scope: !84, file: !84, line: 1, type: !100, isLocal: false, isDefinition: true, align: 64)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "type *struct{Method string}", scope: !84, file: !84, line: 1, type: !93, isLocal: false, isDefinition: true, align: 64)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !33, line: 329, type: !77, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !33, line: 331, type: !77, isLocal: true, isDefinition: true)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !33, line: 338, type: !206, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !33, line: 338, type: !10, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !33, line: 340, type: !59, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !33, line: 344, type: !10, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !33, line: 346, type: !133, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !33, line: 348, type: !10, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !33, line: 348, type: !10, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !33, line: 350, type: !34, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !33, line: 350, type: !10, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !33, line: 354, type: !221, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !33, line: 359, type: !10, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !33, line: 359, type: !10, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !33, line: 361, type: !10, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !33, line: 365, type: !10, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !33, line: 368, type: !133, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !33, line: 372, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, align: 8, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 12, lowerBound: 0)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !33, line: 356, type: !70, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, align: 8, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 33, lowerBound: 0)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1212, type: !311, isLocal: true, isDefinition: true)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, align: 8, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 30, lowerBound: 0)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1212, type: !316, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, align: 8, elements: !29)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1791, type: !320, isLocal: true, isDefinition: true)
!319 = !DIFile(filename: "value.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, align: 8, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 17, lowerBound: 0)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1791, type: !118, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1793, type: !320, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1793, type: !34, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1793, type: !206, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "internal/task.activeTasks", linkageName: "internal/task.activeTasks", scope: !333, file: !333, line: 45, type: !334, isLocal: false, isDefinition: true, align: 64)
!333 = !DIFile(filename: "task_threads.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64, dwarfAddressSpace: 0)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !336)
!336 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !337)
!337 = !{!338, !339, !340, !342, !346, !372, !373, !375, !376}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !334, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "Ptr", baseType: !90, size: 64, align: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "Data", baseType: !341, size: 64, align: 64, offset: 128)
!341 = !DIBasicType(name: "uint64", size: 64, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "gcData", baseType: !343, align: 8, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.gcData", baseType: !344)
!344 = !DICompositeType(tag: DW_TAG_structure_type, align: 8, elements: !345)
!345 = !{}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !347, size: 384, align: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !348)
!348 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !349)
!349 = !{!350, !351, !353, !354, !355, !356}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "id", baseType: !49, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "thread", baseType: !352, size: 64, align: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.threadID", baseType: !90)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "stackTop", baseType: !49, size: 64, align: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "stackBottom", baseType: !49, size: 64, align: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !334, size: 64, align: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "pauseSem", baseType: !357, size: 32, align: 32, offset: 320)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Semaphore", baseType: !358)
!358 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "futex", baseType: !361, size: 32, align: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Futex", baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/futex.Futex", baseType: !363)
!363 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "Uint32", baseType: !366, size: 32, align: 32)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Uint32", baseType: !367)
!367 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !368)
!368 = !{!369, !371}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !370, align: 8)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.noCopy", baseType: !344)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !104, size: 32, align: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "FipsIndicator", baseType: !4, size: 8, align: 8, offset: 576)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "FipsOnlyBypass", baseType: !374, size: 8, align: 8, offset: 584)
!374 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "RunState", baseType: !4, size: 8, align: 8, offset: 592)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "DeferFrame", baseType: !90, size: 64, align: 64, offset: 640)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "internal/task.mainTask", linkageName: "internal/task.mainTask", scope: !333, file: !333, line: 42, type: !335, isLocal: false, isDefinition: true, align: 64)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !381, line: 1, type: !311, isLocal: true, isDefinition: true)
!381 = !DIFile(filename: "mutex-preemptive.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "internal/task.numCPU", linkageName: "internal/task.numCPU", scope: !333, file: !333, line: 40, type: !384, isLocal: false, isDefinition: true, align: 32)
!384 = !DIBasicType(name: "int32", size: 32, encoding: DW_ATE_signed)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(name: "internal/task.activeTaskLock", linkageName: "internal/task.activeTaskLock", scope: !333, file: !333, line: 46, type: !387, isLocal: false, isDefinition: true, align: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.PMutex", baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Mutex", baseType: !358)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !333, line: 64, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, align: 8, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 20, lowerBound: 0)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !333, line: 77, type: !299, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "internal/task.otherGoroutines", linkageName: "internal/task.otherGoroutines", scope: !333, file: !333, line: 99, type: !104, isLocal: false, isDefinition: true, align: 32)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !333, line: 127, type: !221, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !333, line: 146, type: !320, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "internal/task.scanWaitGroup", linkageName: "internal/task.scanWaitGroup", scope: !333, file: !333, line: 151, type: !404, isLocal: false, isDefinition: true, align: 32)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.waitGroup", baseType: !405)
!405 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !361, size: 32, align: 32)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "internal/task.gcState", linkageName: "internal/task.gcState", scope: !333, file: !333, line: 180, type: !361, isLocal: false, isDefinition: true, align: 32)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "runtime.xorshift32State", linkageName: "runtime.xorshift32State", scope: !412, file: !412, line: 32, type: !104, isLocal: false, isDefinition: true, align: 32)
!412 = !DIFile(filename: "algorithm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(name: "runtime.xorshift64State", linkageName: "runtime.xorshift64State", scope: !412, file: !412, line: 52, type: !341, isLocal: false, isDefinition: true, align: 64)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(name: "runtime.heapSize", linkageName: "runtime.heapSize", scope: !417, file: !417, line: 298, type: !49, isLocal: false, isDefinition: true, align: 64)
!417 = !DIFile(filename: "runtime_unix.go", directory: "/usr/local/lib/tinygo/src/runtime")
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "type string", scope: !84, file: !84, line: 1, type: !85, isLocal: false, isDefinition: true, align: 64)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "type *string", scope: !84, file: !84, line: 1, type: !93, isLocal: false, isDefinition: true, align: 64)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "runtime.zeroSizedAlloc", linkageName: "runtime.zeroSizedAlloc", scope: !424, file: !424, line: 30, type: !4, isLocal: false, isDefinition: true, align: 8)
!424 = !DIFile(filename: "gc_boehm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(name: "runtime.gcLock", linkageName: "runtime.gcLock", scope: !424, file: !424, line: 32, type: !387, isLocal: false, isDefinition: true, align: 32)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !424, line: 93, type: !320, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !431, line: 78, type: !77, isLocal: true, isDefinition: true)
!431 = !DIFile(filename: "panic.go", directory: "/usr/local/lib/tinygo/src/runtime")
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !431, line: 99, type: !434, isLocal: true, isDefinition: true)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, align: 8, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 24, lowerBound: 0)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !431, line: 101, type: !133, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !431, line: 103, type: !441, isLocal: true, isDefinition: true)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, align: 8, elements: !257)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !431, line: 184, type: !444, isLocal: true, isDefinition: true)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, align: 8, elements: !176)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !431, line: 194, type: !447, isLocal: true, isDefinition: true)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, align: 8, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 18, lowerBound: 0)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !431, line: 199, type: !447, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !431, line: 212, type: !454, isLocal: true, isDefinition: true)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, align: 8, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 37, lowerBound: 0)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !431, line: 222, type: !118, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !461, line: 117, type: !52, isLocal: true, isDefinition: true)
!461 = !DIFile(filename: "print.go", directory: "/usr/local/lib/tinygo/src/runtime")
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !461, line: 120, type: !34, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !461, line: 123, type: !34, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !461, line: 197, type: !52, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !461, line: 200, type: !34, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !461, line: 203, type: !34, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !461, line: 272, type: !133, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !461, line: 279, type: !133, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !461, line: 373, type: !52, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !461, line: 391, type: !34, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !461, line: 393, type: !59, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(name: "runtime.stackTop", linkageName: "runtime.stackTop", scope: !417, file: !417, line: 75, type: !49, isLocal: false, isDefinition: true, align: 64)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "runtime.main_argc", linkageName: "runtime.main_argc", scope: !417, file: !417, line: 105, type: !384, isLocal: false, isDefinition: true, align: 32)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "runtime.main_argv", linkageName: "runtime.main_argv", scope: !417, file: !417, line: 106, type: !488, isLocal: false, isDefinition: true, align: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64, dwarfAddressSpace: 0)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !417, line: 155, type: !434, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !417, line: 160, type: !316, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !417, line: 163, type: !206, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !417, line: 165, type: !206, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !417, line: 167, type: !77, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !417, line: 158, type: !391, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "runtime.signalFutex", linkageName: "runtime.signalFutex", scope: !417, file: !417, line: 354, type: !362, isLocal: false, isDefinition: true, align: 32)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(name: "runtime.heapMaxSize", linkageName: "runtime.heapMaxSize", scope: !417, file: !417, line: 299, type: !49, isLocal: false, isDefinition: true, align: 64)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "runtime.heapStart", linkageName: "runtime.heapStart", scope: !417, file: !417, line: 301, type: !49, isLocal: false, isDefinition: true, align: 64)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "runtime.heapEnd", linkageName: "runtime.heapEnd", scope: !417, file: !417, line: 301, type: !49, isLocal: false, isDefinition: true, align: 64)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !417, line: 317, type: !511, isLocal: true, isDefinition: true)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, align: 8, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 27, lowerBound: 0)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(name: "runtime.receivedSignals", linkageName: "runtime.receivedSignals", scope: !417, file: !417, line: 358, type: !366, isLocal: false, isDefinition: true, align: 32)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "runtime.printLock", linkageName: "runtime.printLock", scope: !518, file: !518, line: 136, type: !388, isLocal: false, isDefinition: true, align: 32)
!518 = !DIFile(filename: "scheduler_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!519 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!520 = !DIFile(filename: "<unknown>", directory: "")
!521 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !522)
!522 = !{!523, !526, !575, !583, !598, !608, !614, !623, !649, !656, !662, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !700, !702, !707, !709, !712, !714, !716, !718, !720, !722, !724, !726, !728, !730, !732, !734, !736, !738, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !420, !418, !764}
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(name: "internal/cpu.CacheLineSize", linkageName: "internal/cpu.CacheLineSize", scope: !525, file: !525, line: 17, type: !49, isLocal: false, isDefinition: true, align: 64)
!525 = !DIFile(filename: "cpu.go", directory: "/usr/local/go/src/internal/cpu")
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !525, file: !525, line: 23, type: !528, isLocal: false, isDefinition: true, align: 8)
!528 = !DICompositeType(tag: DW_TAG_structure_type, size: 1304, align: 8, elements: !529)
!529 = !{!530, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !531, size: 512, align: 8)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.CacheLinePad", baseType: !532)
!532 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 8, elements: !533)
!533 = !{!534}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !535, size: 512, align: 8)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 512, align: 8, elements: !537)
!536 = !DIBasicType(name: "byte", size: 8, encoding: DW_ATE_unsigned)
!537 = !{!538}
!538 = !DISubrange(count: 64, lowerBound: 0)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !374, size: 8, align: 8, offset: 512)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "HasADX", baseType: !374, size: 8, align: 8, offset: 520)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX", baseType: !374, size: 8, align: 8, offset: 528)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVXVNNI", baseType: !374, size: 8, align: 8, offset: 536)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX2", baseType: !374, size: 8, align: 8, offset: 544)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512", baseType: !374, size: 8, align: 8, offset: 552)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512F", baseType: !374, size: 8, align: 8, offset: 560)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512CD", baseType: !374, size: 8, align: 8, offset: 568)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BW", baseType: !374, size: 8, align: 8, offset: 576)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512DQ", baseType: !374, size: 8, align: 8, offset: 584)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VL", baseType: !374, size: 8, align: 8, offset: 592)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512GFNI", baseType: !374, size: 8, align: 8, offset: 600)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VAES", baseType: !374, size: 8, align: 8, offset: 608)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VNNI", baseType: !374, size: 8, align: 8, offset: 616)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI", baseType: !374, size: 8, align: 8, offset: 624)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI2", baseType: !374, size: 8, align: 8, offset: 632)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BITALG", baseType: !374, size: 8, align: 8, offset: 640)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPOPCNTDQ", baseType: !374, size: 8, align: 8, offset: 648)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPCLMULQDQ", baseType: !374, size: 8, align: 8, offset: 656)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI1", baseType: !374, size: 8, align: 8, offset: 664)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI2", baseType: !374, size: 8, align: 8, offset: 672)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "HasERMS", baseType: !374, size: 8, align: 8, offset: 680)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "HasFSRM", baseType: !374, size: 8, align: 8, offset: 688)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "HasFMA", baseType: !374, size: 8, align: 8, offset: 696)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "HasGFNI", baseType: !374, size: 8, align: 8, offset: 704)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "HasOSXSAVE", baseType: !374, size: 8, align: 8, offset: 712)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "HasPCLMULQDQ", baseType: !374, size: 8, align: 8, offset: 720)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "HasPOPCNT", baseType: !374, size: 8, align: 8, offset: 728)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "HasRDTSCP", baseType: !374, size: 8, align: 8, offset: 736)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA", baseType: !374, size: 8, align: 8, offset: 744)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE3", baseType: !374, size: 8, align: 8, offset: 752)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSSE3", baseType: !374, size: 8, align: 8, offset: 760)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE41", baseType: !374, size: 8, align: 8, offset: 768)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE42", baseType: !374, size: 8, align: 8, offset: 776)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "HasVAES", baseType: !374, size: 8, align: 8, offset: 784)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !531, size: 512, align: 8, offset: 792)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "internal/cpu.ARM", linkageName: "internal/cpu.ARM", scope: !525, file: !525, line: 65, type: !577, isLocal: false, isDefinition: true, align: 8)
!577 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !578)
!578 = !{!530, !579, !580, !581, !582}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "HasVFPv4", baseType: !374, size: 8, align: 8, offset: 512)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "HasIDIVA", baseType: !374, size: 8, align: 8, offset: 520)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "HasV7Atomics", baseType: !374, size: 8, align: 8, offset: 528)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !531, size: 512, align: 8, offset: 536)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(name: "internal/cpu.ARM64", linkageName: "internal/cpu.ARM64", scope: !525, file: !525, line: 75, type: !585, isLocal: false, isDefinition: true, align: 8)
!585 = !DICompositeType(tag: DW_TAG_structure_type, size: 1112, align: 8, elements: !586)
!586 = !{!530, !539, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "HasPMULL", baseType: !374, size: 8, align: 8, offset: 520)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !374, size: 8, align: 8, offset: 528)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA2", baseType: !374, size: 8, align: 8, offset: 536)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !374, size: 8, align: 8, offset: 544)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !374, size: 8, align: 8, offset: 552)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !374, size: 8, align: 8, offset: 560)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "HasATOMICS", baseType: !374, size: 8, align: 8, offset: 568)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "HasCPUID", baseType: !374, size: 8, align: 8, offset: 576)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "HasDIT", baseType: !374, size: 8, align: 8, offset: 584)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "IsNeoverse", baseType: !374, size: 8, align: 8, offset: 592)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !531, size: 512, align: 8, offset: 600)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(name: "internal/cpu.Loong64", linkageName: "internal/cpu.Loong64", scope: !525, file: !525, line: 93, type: !600, isLocal: false, isDefinition: true, align: 8)
!600 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !601)
!601 = !{!530, !602, !603, !604, !605, !606, !607}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "HasLSX", baseType: !374, size: 8, align: 8, offset: 512)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "HasLASX", baseType: !374, size: 8, align: 8, offset: 520)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !374, size: 8, align: 8, offset: 528)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAMCAS", baseType: !374, size: 8, align: 8, offset: 536)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAM_BH", baseType: !374, size: 8, align: 8, offset: 544)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !531, size: 512, align: 8, offset: 552)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(name: "internal/cpu.MIPS64X", linkageName: "internal/cpu.MIPS64X", scope: !525, file: !525, line: 103, type: !610, isLocal: false, isDefinition: true, align: 8)
!610 = !DICompositeType(tag: DW_TAG_structure_type, size: 1032, align: 8, elements: !611)
!611 = !{!530, !612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !374, size: 8, align: 8, offset: 512)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !531, size: 512, align: 8, offset: 520)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(name: "internal/cpu.PPC64", linkageName: "internal/cpu.PPC64", scope: !525, file: !525, line: 114, type: !616, isLocal: false, isDefinition: true, align: 8)
!616 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !617)
!617 = !{!530, !618, !619, !620, !621, !622, !607}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "HasDARN", baseType: !374, size: 8, align: 8, offset: 512)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "HasSCV", baseType: !374, size: 8, align: 8, offset: 520)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER8", baseType: !374, size: 8, align: 8, offset: 528)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER9", baseType: !374, size: 8, align: 8, offset: 536)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER10", baseType: !374, size: 8, align: 8, offset: 544)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(name: "internal/cpu.S390X", linkageName: "internal/cpu.S390X", scope: !525, file: !525, line: 124, type: !625, isLocal: false, isDefinition: true, align: 8)
!625 = !DICompositeType(tag: DW_TAG_structure_type, size: 1192, align: 8, elements: !626)
!626 = !{!530, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "HasZARCH", baseType: !374, size: 8, align: 8, offset: 512)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "HasSTFLE", baseType: !374, size: 8, align: 8, offset: 520)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "HasLDISP", baseType: !374, size: 8, align: 8, offset: 528)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "HasEIMM", baseType: !374, size: 8, align: 8, offset: 536)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "HasDFP", baseType: !374, size: 8, align: 8, offset: 544)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "HasETF3EH", baseType: !374, size: 8, align: 8, offset: 552)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !374, size: 8, align: 8, offset: 560)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !374, size: 8, align: 8, offset: 568)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCBC", baseType: !374, size: 8, align: 8, offset: 576)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCTR", baseType: !374, size: 8, align: 8, offset: 584)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESGCM", baseType: !374, size: 8, align: 8, offset: 592)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "HasGHASH", baseType: !374, size: 8, align: 8, offset: 600)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !374, size: 8, align: 8, offset: 608)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA256", baseType: !374, size: 8, align: 8, offset: 616)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !374, size: 8, align: 8, offset: 624)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !374, size: 8, align: 8, offset: 632)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "HasVX", baseType: !374, size: 8, align: 8, offset: 640)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "HasVXE", baseType: !374, size: 8, align: 8, offset: 648)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "HasKDSA", baseType: !374, size: 8, align: 8, offset: 656)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "HasECDSA", baseType: !374, size: 8, align: 8, offset: 664)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "HasEDDSA", baseType: !374, size: 8, align: 8, offset: 672)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !531, size: 512, align: 8, offset: 680)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(name: "internal/cpu.RISCV64", linkageName: "internal/cpu.RISCV64", scope: !525, file: !525, line: 154, type: !651, isLocal: false, isDefinition: true, align: 8)
!651 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !652)
!652 = !{!530, !653, !654, !655, !582}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "HasFastMisaligned", baseType: !374, size: 8, align: 8, offset: 512)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "HasV", baseType: !374, size: 8, align: 8, offset: 520)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "HasZbb", baseType: !374, size: 8, align: 8, offset: 528)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(name: "internal/cpu.doDerived", linkageName: "internal/cpu.doDerived", scope: !525, file: !525, line: 174, type: !658, isLocal: false, isDefinition: true, align: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !659)
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "context", baseType: !90, size: 64, align: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "fn", baseType: !90, size: 64, align: 64, offset: 64)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(name: "internal/cpu.options", linkageName: "internal/cpu.options", scope: !525, file: !525, line: 192, type: !664, isLocal: false, isDefinition: true, align: 64)
!664 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]internal/cpu.option", size: 192, align: 64, elements: !665)
!665 = !{!666, !48, !676}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !667, size: 64, align: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64, align: 64, dwarfAddressSpace: 0)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.option", baseType: !669)
!669 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !670)
!670 = !{!671, !672, !674, !675}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "Name", baseType: !44, size: 128, align: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "Feature", baseType: !673, size: 64, align: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64, dwarfAddressSpace: 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "Specified", baseType: !374, size: 8, align: 8, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "Enable", baseType: !374, size: 8, align: 8, offset: 200)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "cap", baseType: !49, size: 64, align: 64, offset: 128)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !525, line: 218, type: !34, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !525, line: 223, type: !306, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !525, line: 223, type: !133, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !525, line: 230, type: !133, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !525, line: 239, type: !52, isLocal: true, isDefinition: true)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !525, line: 255, type: !311, isLocal: true, isDefinition: true)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !525, line: 255, type: !133, isLocal: true, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !525, line: 232, type: !52, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !525, line: 235, type: !316, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !525, line: 235, type: !697, isLocal: true, isDefinition: true)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, align: 8, elements: !698)
!698 = !{!699}
!699 = !DISubrange(count: 32, lowerBound: 0)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !525, line: 235, type: !133, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !525, line: 264, type: !704, isLocal: true, isDefinition: true)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, align: 8, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 25, lowerBound: 0)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !525, line: 264, type: !444, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "internal/cpu.maxExtendedFunctionInformation", linkageName: "internal/cpu.maxExtendedFunctionInformation", scope: !711, file: !711, line: 69, type: !104, isLocal: false, isDefinition: true, align: 32)
!711 = !DIFile(filename: "cpu_x86.go", directory: "/usr/local/go/src/internal/cpu")
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !711, line: 73, type: !52, isLocal: true, isDefinition: true)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !711, line: 74, type: !52, isLocal: true, isDefinition: true)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !711, line: 75, type: !34, isLocal: true, isDefinition: true)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !711, line: 76, type: !34, isLocal: true, isDefinition: true)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !711, line: 77, type: !221, isLocal: true, isDefinition: true)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !711, line: 78, type: !206, isLocal: true, isDefinition: true)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !711, line: 79, type: !52, isLocal: true, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !711, line: 80, type: !226, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !711, line: 87, type: !206, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !711, line: 88, type: !34, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !711, line: 89, type: !59, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !711, line: 90, type: !59, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !711, line: 91, type: !59, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !711, line: 97, type: !52, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !711, line: 98, type: !34, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !711, line: 99, type: !34, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !711, line: 100, type: !34, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !711, line: 101, type: !52, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !711, line: 107, type: !77, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !711, line: 108, type: !70, isLocal: true, isDefinition: true)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !711, line: 109, type: !70, isLocal: true, isDefinition: true)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !711, line: 110, type: !70, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !711, line: 111, type: !70, isLocal: true, isDefinition: true)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(scope: null, file: !760, line: 1, type: !761, isLocal: true, isDefinition: true)
!760 = !DIFile(filename: "datacache_x86.go", directory: "/usr/local/go/src/internal/cpu")
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, align: 8, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 13, lowerBound: 0)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !760, line: 1, type: !766, isLocal: true, isDefinition: true)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 664, align: 8, elements: !767)
!767 = !{!768}
!768 = !DISubrange(count: 83, lowerBound: 0)
!769 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !770)
!770 = !{!771, !775, !777, !785}
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(name: "math/bits.deBruijn32tab", linkageName: "math/bits.deBruijn32tab", scope: !773, file: !773, line: 44, type: !774, isLocal: false, isDefinition: true, align: 8)
!773 = !DIFile(filename: "bits.go", directory: "/usr/local/go/src/math/bits")
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 256, align: 8, elements: !698)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(name: "math/bits.deBruijn64tab", linkageName: "math/bits.deBruijn64tab", scope: !773, file: !773, line: 51, type: !535, isLocal: false, isDefinition: true, align: 8)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(name: "math/bits.overflowError", linkageName: "runtime.overflowError", scope: !779, file: !779, line: 12, type: !780, isLocal: false, isDefinition: true, align: 64)
!779 = !DIFile(filename: "bits_errors.go", directory: "/usr/local/go/src/math/bits")
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._interface", baseType: !782)
!782 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !783)
!783 = !{!111, !784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "value", baseType: !90, size: 64, align: 64, offset: 64)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(name: "math/bits.divideError", linkageName: "runtime.divideError", scope: !779, file: !779, line: 15, type: !780, isLocal: false, isDefinition: true, align: 64)
!787 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !788)
!788 = !{!789, !791, !794, !799, !802, !805, !809, !811, !813, !815, !817, !819, !821, !823, !825, !827, !829, !831, !833, !835, !837, !839, !842, !844, !846, !848, !850, !852, !854, !856, !858, !860, !862, !864, !866, !868, !870, !872, !876, !878, !880, !883, !885, !887, !889, !893, !896, !901, !904, !906, !910, !912, !915, !917, !921, !924, !926, !928, !930, !932, !934, !936, !938, !940, !942, !944, !946, !948, !950, !952, !954, !956, !0, !958, !960, !962, !964, !966, !968, !970, !972, !974}
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !525, file: !525, line: 23, type: !528, isLocal: false, isDefinition: true, align: 8)
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(name: "math.useFMA", linkageName: "math.useFMA", scope: !793, file: !793, line: 11, type: !374, isLocal: false, isDefinition: true, align: 8)
!793 = !DIFile(filename: "exp_amd64.go", directory: "/usr/local/go/src/math")
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(name: "math._gamP", linkageName: "math._gamP", scope: !796, file: !796, line: 66, type: !797, isLocal: false, isDefinition: true, align: 64)
!796 = !DIFile(filename: "gamma.go", directory: "/usr/local/go/src/math")
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 448, align: 64, elements: !78)
!798 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(name: "math._gamQ", linkageName: "math._gamQ", scope: !796, file: !796, line: 75, type: !801, isLocal: false, isDefinition: true, align: 64)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 512, align: 64, elements: !71)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(name: "math._gamS", linkageName: "math._gamS", scope: !796, file: !796, line: 85, type: !804, isLocal: false, isDefinition: true, align: 64)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 320, align: 64, elements: !60)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(name: "math.p0R8", linkageName: "math.p0R8", scope: !807, file: !807, line: 240, type: !808, isLocal: false, isDefinition: true, align: 64)
!807 = !DIFile(filename: "j0.go", directory: "/usr/local/go/src/math")
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 384, align: 64, elements: !207)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(name: "math.p0S8", linkageName: "math.p0S8", scope: !807, file: !807, line: 248, type: !804, isLocal: false, isDefinition: true, align: 64)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(name: "math.p0R5", linkageName: "math.p0R5", scope: !807, file: !807, line: 257, type: !808, isLocal: false, isDefinition: true, align: 64)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(name: "math.p0S5", linkageName: "math.p0S5", scope: !807, file: !807, line: 265, type: !804, isLocal: false, isDefinition: true, align: 64)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(name: "math.p0R3", linkageName: "math.p0R3", scope: !807, file: !807, line: 274, type: !808, isLocal: false, isDefinition: true, align: 64)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(name: "math.p0S3", linkageName: "math.p0S3", scope: !807, file: !807, line: 282, type: !804, isLocal: false, isDefinition: true, align: 64)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(name: "math.p0R2", linkageName: "math.p0R2", scope: !807, file: !807, line: 291, type: !808, isLocal: false, isDefinition: true, align: 64)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(name: "math.p0S2", linkageName: "math.p0S2", scope: !807, file: !807, line: 299, type: !804, isLocal: false, isDefinition: true, align: 64)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(name: "math.q0R8", linkageName: "math.q0R8", scope: !807, file: !807, line: 339, type: !808, isLocal: false, isDefinition: true, align: 64)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(name: "math.q0S8", linkageName: "math.q0S8", scope: !807, file: !807, line: 347, type: !808, isLocal: false, isDefinition: true, align: 64)
!827 = !DIGlobalVariableExpression(var: !828, expr: !DIExpression())
!828 = distinct !DIGlobalVariable(name: "math.q0R5", linkageName: "math.q0R5", scope: !807, file: !807, line: 357, type: !808, isLocal: false, isDefinition: true, align: 64)
!829 = !DIGlobalVariableExpression(var: !830, expr: !DIExpression())
!830 = distinct !DIGlobalVariable(name: "math.q0S5", linkageName: "math.q0S5", scope: !807, file: !807, line: 365, type: !808, isLocal: false, isDefinition: true, align: 64)
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(name: "math.q0R3", linkageName: "math.q0R3", scope: !807, file: !807, line: 375, type: !808, isLocal: false, isDefinition: true, align: 64)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(name: "math.q0S3", linkageName: "math.q0S3", scope: !807, file: !807, line: 383, type: !808, isLocal: false, isDefinition: true, align: 64)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(name: "math.q0R2", linkageName: "math.q0R2", scope: !807, file: !807, line: 393, type: !808, isLocal: false, isDefinition: true, align: 64)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(name: "math.q0S2", linkageName: "math.q0S2", scope: !807, file: !807, line: 401, type: !808, isLocal: false, isDefinition: true, align: 64)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(name: "math.p1R8", linkageName: "math.p1R8", scope: !841, file: !841, line: 235, type: !808, isLocal: false, isDefinition: true, align: 64)
!841 = !DIFile(filename: "j1.go", directory: "/usr/local/go/src/math")
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(name: "math.p1S8", linkageName: "math.p1S8", scope: !841, file: !841, line: 243, type: !804, isLocal: false, isDefinition: true, align: 64)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(name: "math.p1R5", linkageName: "math.p1R5", scope: !841, file: !841, line: 252, type: !808, isLocal: false, isDefinition: true, align: 64)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(name: "math.p1S5", linkageName: "math.p1S5", scope: !841, file: !841, line: 260, type: !804, isLocal: false, isDefinition: true, align: 64)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(name: "math.p1R3", linkageName: "math.p1R3", scope: !841, file: !841, line: 269, type: !808, isLocal: false, isDefinition: true, align: 64)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(name: "math.p1S3", linkageName: "math.p1S3", scope: !841, file: !841, line: 277, type: !804, isLocal: false, isDefinition: true, align: 64)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(name: "math.p1R2", linkageName: "math.p1R2", scope: !841, file: !841, line: 286, type: !808, isLocal: false, isDefinition: true, align: 64)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(name: "math.p1S2", linkageName: "math.p1S2", scope: !841, file: !841, line: 294, type: !804, isLocal: false, isDefinition: true, align: 64)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(name: "math.q1R8", linkageName: "math.q1R8", scope: !841, file: !841, line: 334, type: !808, isLocal: false, isDefinition: true, align: 64)
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(name: "math.q1S8", linkageName: "math.q1S8", scope: !841, file: !841, line: 342, type: !808, isLocal: false, isDefinition: true, align: 64)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(name: "math.q1R5", linkageName: "math.q1R5", scope: !841, file: !841, line: 352, type: !808, isLocal: false, isDefinition: true, align: 64)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(name: "math.q1S5", linkageName: "math.q1S5", scope: !841, file: !841, line: 360, type: !808, isLocal: false, isDefinition: true, align: 64)
!864 = !DIGlobalVariableExpression(var: !865, expr: !DIExpression())
!865 = distinct !DIGlobalVariable(name: "math.q1R3", linkageName: "math.q1R3", scope: !841, file: !841, line: 370, type: !808, isLocal: false, isDefinition: true, align: 64)
!866 = !DIGlobalVariableExpression(var: !867, expr: !DIExpression())
!867 = distinct !DIGlobalVariable(name: "math.q1S3", linkageName: "math.q1S3", scope: !841, file: !841, line: 378, type: !808, isLocal: false, isDefinition: true, align: 64)
!868 = !DIGlobalVariableExpression(var: !869, expr: !DIExpression())
!869 = distinct !DIGlobalVariable(name: "math.q1R2", linkageName: "math.q1R2", scope: !841, file: !841, line: 388, type: !808, isLocal: false, isDefinition: true, align: 64)
!870 = !DIGlobalVariableExpression(var: !871, expr: !DIExpression())
!871 = distinct !DIGlobalVariable(name: "math.q1S2", linkageName: "math.q1S2", scope: !841, file: !841, line: 396, type: !808, isLocal: false, isDefinition: true, align: 64)
!872 = !DIGlobalVariableExpression(var: !873, expr: !DIExpression())
!873 = distinct !DIGlobalVariable(name: "math._lgamA", linkageName: "math._lgamA", scope: !874, file: !874, line: 91, type: !875, isLocal: false, isDefinition: true, align: 64)
!874 = !DIFile(filename: "lgamma.go", directory: "/usr/local/go/src/math")
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 768, align: 64, elements: !300)
!876 = !DIGlobalVariableExpression(var: !877, expr: !DIExpression())
!877 = distinct !DIGlobalVariable(name: "math._lgamR", linkageName: "math._lgamR", scope: !874, file: !874, line: 105, type: !797, isLocal: false, isDefinition: true, align: 64)
!878 = !DIGlobalVariableExpression(var: !879, expr: !DIExpression())
!879 = distinct !DIGlobalVariable(name: "math._lgamS", linkageName: "math._lgamS", scope: !874, file: !874, line: 114, type: !797, isLocal: false, isDefinition: true, align: 64)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(name: "math._lgamT", linkageName: "math._lgamT", scope: !874, file: !874, line: 123, type: !882, isLocal: false, isDefinition: true, align: 64)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 960, align: 64, elements: !5)
!883 = !DIGlobalVariableExpression(var: !884, expr: !DIExpression())
!884 = distinct !DIGlobalVariable(name: "math._lgamU", linkageName: "math._lgamU", scope: !874, file: !874, line: 140, type: !808, isLocal: false, isDefinition: true, align: 64)
!885 = !DIGlobalVariableExpression(var: !886, expr: !DIExpression())
!886 = distinct !DIGlobalVariable(name: "math._lgamV", linkageName: "math._lgamV", scope: !874, file: !874, line: 148, type: !808, isLocal: false, isDefinition: true, align: 64)
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(name: "math._lgamW", linkageName: "math._lgamW", scope: !874, file: !874, line: 156, type: !797, isLocal: false, isDefinition: true, align: 64)
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(name: "math.pow10tab", linkageName: "math.pow10tab", scope: !891, file: !891, line: 8, type: !892, isLocal: false, isDefinition: true, align: 64)
!891 = !DIFile(filename: "pow10.go", directory: "/usr/local/go/src/math")
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 2048, align: 64, elements: !698)
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression())
!894 = distinct !DIGlobalVariable(name: "math.pow10postab32", linkageName: "math.pow10postab32", scope: !891, file: !891, line: 16, type: !895, isLocal: false, isDefinition: true, align: 64)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 640, align: 64, elements: !227)
!896 = !DIGlobalVariableExpression(var: !897, expr: !DIExpression())
!897 = distinct !DIGlobalVariable(name: "math.pow10negtab32", linkageName: "math.pow10negtab32", scope: !891, file: !891, line: 21, type: !898, isLocal: false, isDefinition: true, align: 64)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 704, align: 64, elements: !899)
!899 = !{!900}
!900 = !DISubrange(count: 11, lowerBound: 0)
!901 = !DIGlobalVariableExpression(var: !902, expr: !DIExpression())
!902 = distinct !DIGlobalVariable(name: "math._sin", linkageName: "math._sin", scope: !903, file: !903, line: 93, type: !808, isLocal: false, isDefinition: true, align: 64)
!903 = !DIFile(filename: "sin.go", directory: "/usr/local/go/src/math")
!904 = !DIGlobalVariableExpression(var: !905, expr: !DIExpression())
!905 = distinct !DIGlobalVariable(name: "math._cos", linkageName: "math._cos", scope: !903, file: !903, line: 103, type: !808, isLocal: false, isDefinition: true, align: 64)
!906 = !DIGlobalVariableExpression(var: !907, expr: !DIExpression())
!907 = distinct !DIGlobalVariable(name: "math._tanP", linkageName: "math._tanP", scope: !908, file: !908, line: 63, type: !909, isLocal: false, isDefinition: true, align: 64)
!908 = !DIFile(filename: "tan.go", directory: "/usr/local/go/src/math")
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 192, align: 64, elements: !53)
!910 = !DIGlobalVariableExpression(var: !911, expr: !DIExpression())
!911 = distinct !DIGlobalVariable(name: "math._tanQ", linkageName: "math._tanQ", scope: !908, file: !908, line: 68, type: !804, isLocal: false, isDefinition: true, align: 64)
!912 = !DIGlobalVariableExpression(var: !913, expr: !DIExpression())
!913 = distinct !DIGlobalVariable(name: "math.tanhP", linkageName: "math.tanhP", scope: !914, file: !914, line: 57, type: !909, isLocal: false, isDefinition: true, align: 64)
!914 = !DIFile(filename: "tanh.go", directory: "/usr/local/go/src/math")
!915 = !DIGlobalVariableExpression(var: !916, expr: !DIExpression())
!916 = distinct !DIGlobalVariable(name: "math.tanhQ", linkageName: "math.tanhQ", scope: !914, file: !914, line: 62, type: !909, isLocal: false, isDefinition: true, align: 64)
!917 = !DIGlobalVariableExpression(var: !918, expr: !DIExpression())
!918 = distinct !DIGlobalVariable(name: "math.mPi4", linkageName: "math.mPi4", scope: !919, file: !919, line: 81, type: !920, isLocal: false, isDefinition: true, align: 64)
!919 = !DIFile(filename: "trig_reduce.go", directory: "/usr/local/go/src/math")
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 1280, align: 64, elements: !392)
!921 = !DIGlobalVariableExpression(var: !922, expr: !DIExpression())
!922 = distinct !DIGlobalVariable(scope: null, file: !923, line: 1, type: !3, isLocal: true, isDefinition: true)
!923 = !DIFile(filename: "exp2_noasm.go", directory: "/usr/local/go/src/math")
!924 = !DIGlobalVariableExpression(var: !925, expr: !DIExpression())
!925 = distinct !DIGlobalVariable(name: "type *string", scope: !84, file: !84, line: 1, type: !93, isLocal: false, isDefinition: true, align: 64)
!926 = !DIGlobalVariableExpression(var: !927, expr: !DIExpression())
!927 = distinct !DIGlobalVariable(name: "type string", scope: !84, file: !84, line: 1, type: !85, isLocal: false, isDefinition: true, align: 64)
!928 = !DIGlobalVariableExpression(var: !929, expr: !DIExpression())
!929 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!930 = !DIGlobalVariableExpression(var: !931, expr: !DIExpression())
!931 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!932 = !DIGlobalVariableExpression(var: !933, expr: !DIExpression())
!933 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!934 = !DIGlobalVariableExpression(var: !935, expr: !DIExpression())
!935 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!936 = !DIGlobalVariableExpression(var: !937, expr: !DIExpression())
!937 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!938 = !DIGlobalVariableExpression(var: !939, expr: !DIExpression())
!939 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!940 = !DIGlobalVariableExpression(var: !941, expr: !DIExpression())
!941 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!942 = !DIGlobalVariableExpression(var: !943, expr: !DIExpression())
!943 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!944 = !DIGlobalVariableExpression(var: !945, expr: !DIExpression())
!945 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!946 = !DIGlobalVariableExpression(var: !947, expr: !DIExpression())
!947 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!948 = !DIGlobalVariableExpression(var: !949, expr: !DIExpression())
!949 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!950 = !DIGlobalVariableExpression(var: !951, expr: !DIExpression())
!951 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!952 = !DIGlobalVariableExpression(var: !953, expr: !DIExpression())
!953 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!954 = !DIGlobalVariableExpression(var: !955, expr: !DIExpression())
!955 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!956 = !DIGlobalVariableExpression(var: !957, expr: !DIExpression())
!957 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!958 = !DIGlobalVariableExpression(var: !959, expr: !DIExpression())
!959 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!960 = !DIGlobalVariableExpression(var: !961, expr: !DIExpression())
!961 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!962 = !DIGlobalVariableExpression(var: !963, expr: !DIExpression())
!963 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!964 = !DIGlobalVariableExpression(var: !965, expr: !DIExpression())
!965 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!966 = !DIGlobalVariableExpression(var: !967, expr: !DIExpression())
!967 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!968 = !DIGlobalVariableExpression(var: !969, expr: !DIExpression())
!969 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!970 = !DIGlobalVariableExpression(var: !971, expr: !DIExpression())
!971 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!972 = !DIGlobalVariableExpression(var: !973, expr: !DIExpression())
!973 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!974 = !DIGlobalVariableExpression(var: !975, expr: !DIExpression())
!975 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!976 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !977)
!977 = !{!978, !984, !986, !988, !993, !995, !1000, !1005, !1010, !1015}
!978 = !DIGlobalVariableExpression(var: !979, expr: !DIExpression())
!979 = distinct !DIGlobalVariable(scope: null, file: !980, line: 1, type: !981, isLocal: true, isDefinition: true)
!980 = !DIFile(filename: "value.go", directory: "/usr/local/go/src/sync/atomic")
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, align: 8, elements: !982)
!982 = !{!983}
!983 = !DISubrange(count: 53, lowerBound: 0)
!984 = !DIGlobalVariableExpression(var: !985, expr: !DIExpression())
!985 = distinct !DIGlobalVariable(name: "type *string", scope: !84, file: !84, line: 1, type: !93, isLocal: false, isDefinition: true, align: 64)
!986 = !DIGlobalVariableExpression(var: !987, expr: !DIExpression())
!987 = distinct !DIGlobalVariable(name: "type string", scope: !84, file: !84, line: 1, type: !85, isLocal: false, isDefinition: true, align: 64)
!988 = !DIGlobalVariableExpression(var: !989, expr: !DIExpression())
!989 = distinct !DIGlobalVariable(scope: null, file: !980, line: 1, type: !990, isLocal: true, isDefinition: true)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, align: 8, elements: !991)
!991 = !{!992}
!992 = !DISubrange(count: 60, lowerBound: 0)
!993 = !DIGlobalVariableExpression(var: !994, expr: !DIExpression())
!994 = distinct !DIGlobalVariable(name: "sync/atomic.firstStoreInProgress", linkageName: "sync/atomic.firstStoreInProgress", scope: !980, file: !980, line: 42, type: !536, isLocal: false, isDefinition: true, align: 8)
!995 = !DIGlobalVariableExpression(var: !996, expr: !DIExpression())
!996 = distinct !DIGlobalVariable(scope: null, file: !980, line: 1, type: !997, isLocal: true, isDefinition: true)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, align: 8, elements: !998)
!998 = !{!999}
!999 = !DISubrange(count: 70, lowerBound: 0)
!1000 = !DIGlobalVariableExpression(var: !1001, expr: !DIExpression())
!1001 = distinct !DIGlobalVariable(scope: null, file: !980, line: 1, type: !1002, isLocal: true, isDefinition: true)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, align: 8, elements: !1003)
!1003 = !{!1004}
!1004 = !DISubrange(count: 42, lowerBound: 0)
!1005 = !DIGlobalVariableExpression(var: !1006, expr: !DIExpression())
!1006 = distinct !DIGlobalVariable(scope: null, file: !980, line: 1, type: !1007, isLocal: true, isDefinition: true)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, align: 8, elements: !1008)
!1008 = !{!1009}
!1009 = !DISubrange(count: 59, lowerBound: 0)
!1010 = !DIGlobalVariableExpression(var: !1011, expr: !DIExpression())
!1011 = distinct !DIGlobalVariable(scope: null, file: !980, line: 1, type: !1012, isLocal: true, isDefinition: true)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, align: 8, elements: !1013)
!1013 = !{!1014}
!1014 = !DISubrange(count: 41, lowerBound: 0)
!1015 = !DIGlobalVariableExpression(var: !1016, expr: !DIExpression())
!1016 = distinct !DIGlobalVariable(scope: null, file: !980, line: 1, type: !1017, isLocal: true, isDefinition: true)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, align: 8, elements: !1018)
!1018 = !{!1019}
!1019 = !DISubrange(count: 58, lowerBound: 0)
!1020 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1021 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1022 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1023)
!1023 = !{!7, !13, !1024, !1026, !1028}
!1024 = !DIGlobalVariableExpression(var: !1025, expr: !DIExpression())
!1025 = distinct !DIGlobalVariable(scope: null, file: !9, line: 40, type: !52, isLocal: true, isDefinition: true)
!1026 = !DIGlobalVariableExpression(var: !1027, expr: !DIExpression())
!1027 = distinct !DIGlobalVariable(scope: null, file: !9, line: 46, type: !316, isLocal: true, isDefinition: true)
!1028 = !DIGlobalVariableExpression(var: !1029, expr: !DIExpression())
!1029 = distinct !DIGlobalVariable(scope: null, file: !9, line: 51, type: !316, isLocal: true, isDefinition: true)
!1030 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1031)
!1031 = !{!15, !21}
!1032 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1033)
!1033 = !{!31, !37, !50, !55, !57, !62, !1034, !1036, !64, !66, !68, !73, !75, !80, !1038, !1041, !1043, !1045, !91, !82, !1047, !1054, !1056, !1058, !1060, !1062, !1064, !1066, !1068, !1070, !1072, !1074, !1076, !1078, !1080, !1082, !1084, !1086, !1088, !1090, !1092, !1094, !1096, !1098, !1100, !1102, !1104, !1106, !1108, !1110, !1112, !1114, !1116, !1118, !1120, !1122, !1124, !1126, !1128, !1130, !113, !98, !1132, !1150, !1155, !1157, !1159, !1161, !1163, !1165, !1167, !1169, !1181, !1187, !1193, !115, !1196, !1198, !1200, !1202, !129, !121, !1211, !131, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !1217, !184, !1220, !1222, !1224, !1226, !1228, !1230, !178, !168, !1236, !1238, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !209, !211, !213, !215, !217, !219, !224, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !1240, !1245, !1250, !1255, !1260, !261, !259, !251, !1262, !1264, !1266, !1268, !1270, !1272, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !1274, !287, !289, !291, !293, !295, !297, !302, !304, !1276, !309, !314, !1278, !1280, !1282, !1284, !1286, !1291, !1293, !1295, !1297, !1299, !1301, !1303, !1305, !1307, !1309, !1311, !1313, !1318, !1320, !1322, !1327, !1329, !1331, !1333, !1335, !1337, !1339, !1341, !1343, !1345, !1347, !1349, !1351, !1356, !1358, !1360, !1362, !1364, !1366, !1368, !1370, !1372, !1377, !1379, !1384, !1389, !1391, !1393, !1395, !1400, !1402, !1404, !1406, !1408, !1413, !1415, !1417, !1419, !1421, !1423, !1428, !1430, !1435, !1437, !1439, !1441, !1443, !1445, !1447, !1449, !1451, !1453, !1455, !1457, !1462, !1464, !1469, !1471, !1473, !1475, !1477, !1480, !1482, !1484, !317, !323, !325, !327, !329, !1486, !1488, !1493, !1495, !1497, !1499, !1501, !1503, !1505, !1507, !1509, !1511, !1514}
!1034 = !DIGlobalVariableExpression(var: !1035, expr: !DIExpression())
!1035 = distinct !DIGlobalVariable(scope: null, file: !33, line: 396, type: !34, isLocal: true, isDefinition: true)
!1036 = !DIGlobalVariableExpression(var: !1037, expr: !DIExpression())
!1037 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeBits", linkageName: "internal/reflectlite.errTypeBits", scope: !33, file: !33, line: 396, type: !39, isLocal: false, isDefinition: true, align: 64)
!1038 = !DIGlobalVariableExpression(var: !1039, expr: !DIExpression())
!1039 = distinct !DIGlobalVariable(scope: null, file: !33, line: 400, type: !1040, isLocal: true, isDefinition: true)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, align: 8, elements: !899)
!1041 = !DIGlobalVariableExpression(var: !1042, expr: !DIExpression())
!1042 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByName", linkageName: "internal/reflectlite.errTypeFieldByName", scope: !33, file: !33, line: 400, type: !39, isLocal: false, isDefinition: true, align: 64)
!1043 = !DIGlobalVariableExpression(var: !1044, expr: !DIExpression())
!1044 = distinct !DIGlobalVariable(scope: null, file: !33, line: 401, type: !299, isLocal: true, isDefinition: true)
!1045 = !DIGlobalVariableExpression(var: !1046, expr: !DIExpression())
!1046 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByIndex", linkageName: "internal/reflectlite.errTypeFieldByIndex", scope: !33, file: !33, line: 401, type: !39, isLocal: false, isDefinition: true, align: 64)
!1047 = !DIGlobalVariableExpression(var: !1048, expr: !DIExpression())
!1048 = distinct !DIGlobalVariable(name: "internal/reflectlite.uint8Type", linkageName: "internal/reflectlite.uint8Type", scope: !319, file: !319, line: 956, type: !1049, isLocal: false, isDefinition: true, align: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64, align: 64, dwarfAddressSpace: 0)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.RawType", baseType: !1051)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, size: 8, align: 8, elements: !1052)
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "meta", baseType: !4, size: 8, align: 8)
!1054 = !DIGlobalVariableExpression(var: !1055, expr: !DIExpression())
!1055 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.visit", scope: !84, file: !84, line: 1, type: !93, isLocal: false, isDefinition: true, align: 64)
!1056 = !DIGlobalVariableExpression(var: !1057, expr: !DIExpression())
!1057 = distinct !DIGlobalVariable(name: "type *struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !84, file: !84, line: 1, type: !93, isLocal: false, isDefinition: true, align: 64)
!1058 = !DIGlobalVariableExpression(var: !1059, expr: !DIExpression())
!1059 = distinct !DIGlobalVariable(name: "type *unsafe.Pointer", scope: !84, file: !84, line: 1, type: !93, isLocal: false, isDefinition: true, align: 64)
!1060 = !DIGlobalVariableExpression(var: !1061, expr: !DIExpression())
!1061 = distinct !DIGlobalVariable(name: "type unsafe.Pointer", scope: !84, file: !84, line: 1, type: !85, isLocal: false, isDefinition: true, align: 64)
!1062 = !DIGlobalVariableExpression(var: !1063, expr: !DIExpression())
!1063 = distinct !DIGlobalVariable(name: "reflect/types.signature:Align:func:{}{basic:int}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1064 = !DIGlobalVariableExpression(var: !1065, expr: !DIExpression())
!1065 = distinct !DIGlobalVariable(name: "reflect/types.signature:AssignableTo:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1066 = !DIGlobalVariableExpression(var: !1067, expr: !DIExpression())
!1067 = distinct !DIGlobalVariable(name: "reflect/types.signature:Bits:func:{}{basic:int}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1068 = !DIGlobalVariableExpression(var: !1069, expr: !DIExpression())
!1069 = distinct !DIGlobalVariable(name: "reflect/types.signature:ChanDir:func:{}{named:internal/reflectlite.ChanDir}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1070 = !DIGlobalVariableExpression(var: !1071, expr: !DIExpression())
!1071 = distinct !DIGlobalVariable(name: "reflect/types.signature:Comparable:func:{}{basic:bool}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1072 = !DIGlobalVariableExpression(var: !1073, expr: !DIExpression())
!1073 = distinct !DIGlobalVariable(name: "reflect/types.signature:Elem:func:{}{named:internal/reflectlite.Type}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1074 = !DIGlobalVariableExpression(var: !1075, expr: !DIExpression())
!1075 = distinct !DIGlobalVariable(name: "reflect/types.signature:Field:func:{basic:int}{named:internal/reflectlite.StructField}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1076 = !DIGlobalVariableExpression(var: !1077, expr: !DIExpression())
!1077 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldAlign:func:{}{basic:int}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1078 = !DIGlobalVariableExpression(var: !1079, expr: !DIExpression())
!1079 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByIndex:func:{slice:basic:int}{named:internal/reflectlite.StructField}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1080 = !DIGlobalVariableExpression(var: !1081, expr: !DIExpression())
!1081 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByName:func:{basic:string}{named:internal/reflectlite.StructField,basic:bool}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1082 = !DIGlobalVariableExpression(var: !1083, expr: !DIExpression())
!1083 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.StructField,basic:bool}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1084 = !DIGlobalVariableExpression(var: !1085, expr: !DIExpression())
!1085 = distinct !DIGlobalVariable(name: "reflect/types.signature:Implements:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1086 = !DIGlobalVariableExpression(var: !1087, expr: !DIExpression())
!1087 = distinct !DIGlobalVariable(name: "reflect/types.signature:Key:func:{}{named:internal/reflectlite.Type}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1088 = !DIGlobalVariableExpression(var: !1089, expr: !DIExpression())
!1089 = distinct !DIGlobalVariable(name: "reflect/types.signature:Kind:func:{}{named:internal/reflectlite.Kind}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1090 = !DIGlobalVariableExpression(var: !1091, expr: !DIExpression())
!1091 = distinct !DIGlobalVariable(name: "reflect/types.signature:Len:func:{}{basic:int}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1092 = !DIGlobalVariableExpression(var: !1093, expr: !DIExpression())
!1093 = distinct !DIGlobalVariable(name: "reflect/types.signature:Name:func:{}{basic:string}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1094 = !DIGlobalVariableExpression(var: !1095, expr: !DIExpression())
!1095 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumField:func:{}{basic:int}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1096 = !DIGlobalVariableExpression(var: !1097, expr: !DIExpression())
!1097 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumMethod:func:{}{basic:int}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1098 = !DIGlobalVariableExpression(var: !1099, expr: !DIExpression())
!1099 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowComplex:func:{basic:complex128}{basic:bool}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1100 = !DIGlobalVariableExpression(var: !1101, expr: !DIExpression())
!1101 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowFloat:func:{basic:float64}{basic:bool}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1102 = !DIGlobalVariableExpression(var: !1103, expr: !DIExpression())
!1103 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowInt:func:{basic:int64}{basic:bool}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1104 = !DIGlobalVariableExpression(var: !1105, expr: !DIExpression())
!1105 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowUint:func:{basic:uint64}{basic:bool}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1106 = !DIGlobalVariableExpression(var: !1107, expr: !DIExpression())
!1107 = distinct !DIGlobalVariable(name: "reflect/types.signature:PkgPath:func:{}{basic:string}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1108 = !DIGlobalVariableExpression(var: !1109, expr: !DIExpression())
!1109 = distinct !DIGlobalVariable(name: "reflect/types.signature:Size:func:{}{basic:uintptr}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1110 = !DIGlobalVariableExpression(var: !1111, expr: !DIExpression())
!1111 = distinct !DIGlobalVariable(name: "reflect/types.signature:String:func:{}{basic:string}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1112 = !DIGlobalVariableExpression(var: !1113, expr: !DIExpression())
!1113 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.elem:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1114 = !DIGlobalVariableExpression(var: !1115, expr: !DIExpression())
!1115 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.gcLayout:func:{}{basic:unsafe.Pointer}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1116 = !DIGlobalVariableExpression(var: !1117, expr: !DIExpression())
!1117 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isBinary:func:{}{basic:bool}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1118 = !DIGlobalVariableExpression(var: !1119, expr: !DIExpression())
!1119 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isNamed:func:{}{basic:bool}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1120 = !DIGlobalVariableExpression(var: !1121, expr: !DIExpression())
!1121 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.key:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1122 = !DIGlobalVariableExpression(var: !1123, expr: !DIExpression())
!1123 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.name:func:{}{basic:string}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1124 = !DIGlobalVariableExpression(var: !1125, expr: !DIExpression())
!1125 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.ptrtag:func:{}{basic:uintptr}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1126 = !DIGlobalVariableExpression(var: !1127, expr: !DIExpression())
!1127 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawField:func:{basic:int}{named:internal/reflectlite.rawStructField}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1128 = !DIGlobalVariableExpression(var: !1129, expr: !DIExpression())
!1129 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawFieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.rawStructField,slice:basic:int,basic:bool}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1130 = !DIGlobalVariableExpression(var: !1131, expr: !DIExpression())
!1131 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.underlying:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1132 = !DIGlobalVariableExpression(var: !1133, expr: !DIExpression())
!1133 = distinct !DIGlobalVariable(name: "type internal/reflectlite.RawType", scope: !84, file: !84, line: 1, type: !1134, isLocal: false, isDefinition: true, align: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, size: 832, align: 64, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1142, !1148}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "methodSet", baseType: !90, size: 64, align: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !88, size: 8, align: 8, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !96, size: 16, align: 16, offset: 80)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !90, size: 64, align: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !90, size: 64, align: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !90, size: 64, align: 64, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1143, size: 320, align: 64, offset: 320)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !1144)
!1144 = !{!1145, !1146}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !49, size: 64, align: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1147, size: 256, align: 64, offset: 64)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, align: 64, elements: !35)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1149, size: 160, align: 8, offset: 640)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 160, align: 8, elements: !392)
!1150 = !DIGlobalVariableExpression(var: !1151, expr: !DIExpression())
!1151 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, align: 8, elements: !1153)
!1153 = !{!1154}
!1154 = !DISubrange(count: 28, lowerBound: 0)
!1155 = !DIGlobalVariableExpression(var: !1156, expr: !DIExpression())
!1156 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !3, isLocal: true, isDefinition: true)
!1157 = !DIGlobalVariableExpression(var: !1158, expr: !DIExpression())
!1158 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1159 = !DIGlobalVariableExpression(var: !1160, expr: !DIExpression())
!1160 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !761, isLocal: true, isDefinition: true)
!1161 = !DIGlobalVariableExpression(var: !1162, expr: !DIExpression())
!1162 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1163 = !DIGlobalVariableExpression(var: !1164, expr: !DIExpression())
!1164 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !1040, isLocal: true, isDefinition: true)
!1165 = !DIGlobalVariableExpression(var: !1166, expr: !DIExpression())
!1166 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1167 = !DIGlobalVariableExpression(var: !1168, expr: !DIExpression())
!1168 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !299, isLocal: true, isDefinition: true)
!1169 = !DIGlobalVariableExpression(var: !1170, expr: !DIExpression())
!1170 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.RawType", scope: !84, file: !84, line: 1, type: !1171, isLocal: false, isDefinition: true, align: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, size: 2496, align: 64, elements: !1172)
!1172 = !{!1136, !1137, !1138, !1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !90, size: 64, align: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1175, size: 2304, align: 64, offset: 192)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, size: 2304, align: 64, elements: !1176)
!1176 = !{!1145, !1177}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1178, size: 2240, align: 64, offset: 64)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 2240, align: 64, elements: !1179)
!1179 = !{!1180}
!1180 = !DISubrange(count: 35, lowerBound: 0)
!1181 = !DIGlobalVariableExpression(var: !1182, expr: !DIExpression())
!1182 = distinct !DIGlobalVariable(name: "type struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !84, file: !84, line: 1, type: !1183, isLocal: false, isDefinition: true, align: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1184)
!1184 = !{!87, !95, !89, !102, !103, !105, !1185}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !1186, size: 384, align: 64, offset: 256)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 384, align: 64, elements: !53)
!1187 = !DIGlobalVariableExpression(var: !1188, expr: !DIExpression())
!1188 = distinct !DIGlobalVariable(name: "type internal/reflectlite.visit", scope: !84, file: !84, line: 1, type: !1189, isLocal: false, isDefinition: true, align: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1190)
!1190 = !{!87, !95, !89, !172, !173, !1191}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1192, size: 144, align: 8, offset: 256)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 144, align: 8, elements: !448)
!1193 = !DIGlobalVariableExpression(var: !1194, expr: !DIExpression())
!1194 = distinct !DIGlobalVariable(name: "internal/reflectlite.errSyntax", linkageName: "internal/reflectlite.errSyntax", scope: !117, file: !117, line: 12, type: !1195, isLocal: false, isDefinition: true, align: 8)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.badSyntax", baseType: !344)
!1196 = !DIGlobalVariableExpression(var: !1197, expr: !DIExpression())
!1197 = distinct !DIGlobalVariable(name: "reflect/types.signature:Error:func:{}{basic:string}", scope: !84, file: !84, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1198 = !DIGlobalVariableExpression(var: !1199, expr: !DIExpression())
!1199 = distinct !DIGlobalVariable(scope: null, file: !117, line: 1, type: !311, isLocal: true, isDefinition: true)
!1200 = !DIGlobalVariableExpression(var: !1201, expr: !DIExpression())
!1201 = distinct !DIGlobalVariable(scope: null, file: !117, line: 1, type: !59, isLocal: true, isDefinition: true)
!1202 = !DIGlobalVariableExpression(var: !1203, expr: !DIExpression())
!1203 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.badSyntax", scope: !84, file: !84, line: 1, type: !1204, isLocal: false, isDefinition: true, align: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !1205)
!1205 = !{!1136, !1137, !1138, !1173, !1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1207, size: 128, align: 64, offset: 192)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !1208)
!1208 = !{!1145, !1209}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1210, size: 64, align: 64, offset: 64)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 64, align: 64, elements: !11)
!1211 = !DIGlobalVariableExpression(var: !1212, expr: !DIExpression())
!1212 = distinct !DIGlobalVariable(name: "type internal/reflectlite.badSyntax", scope: !84, file: !84, line: 1, type: !1213, isLocal: false, isDefinition: true, align: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1214)
!1214 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1207, size: 128, align: 64, offset: 320)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !256, size: 176, align: 8, offset: 448)
!1217 = !DIGlobalVariableExpression(var: !1218, expr: !DIExpression())
!1218 = distinct !DIGlobalVariable(scope: null, file: !1219, line: 16, type: !77, isLocal: true, isDefinition: true)
!1219 = !DIFile(filename: "swapper.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1220 = !DIGlobalVariableExpression(var: !1221, expr: !DIExpression())
!1221 = distinct !DIGlobalVariable(name: "type *string", scope: !84, file: !84, line: 1, type: !93, isLocal: false, isDefinition: true, align: 64)
!1222 = !DIGlobalVariableExpression(var: !1223, expr: !DIExpression())
!1223 = distinct !DIGlobalVariable(name: "type string", scope: !84, file: !84, line: 1, type: !85, isLocal: false, isDefinition: true, align: 64)
!1224 = !DIGlobalVariableExpression(var: !1225, expr: !DIExpression())
!1225 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !704, isLocal: true, isDefinition: true)
!1226 = !DIGlobalVariableExpression(var: !1227, expr: !DIExpression())
!1227 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !206, isLocal: true, isDefinition: true)
!1228 = !DIGlobalVariableExpression(var: !1229, expr: !DIExpression())
!1229 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.Kind", scope: !84, file: !84, line: 1, type: !1204, isLocal: false, isDefinition: true, align: 64)
!1230 = !DIGlobalVariableExpression(var: !1231, expr: !DIExpression())
!1231 = distinct !DIGlobalVariable(name: "type internal/reflectlite.Kind", scope: !84, file: !84, line: 1, type: !1232, isLocal: false, isDefinition: true, align: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1233)
!1233 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1215, !1234}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1235, size: 136, align: 8, offset: 448)
!1235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 136, align: 8, elements: !321)
!1236 = !DIGlobalVariableExpression(var: !1237, expr: !DIExpression())
!1237 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.ValueError", scope: !84, file: !84, line: 1, type: !1204, isLocal: false, isDefinition: true, align: 64)
!1238 = !DIGlobalVariableExpression(var: !1239, expr: !DIExpression())
!1239 = distinct !DIGlobalVariable(scope: null, file: !1219, line: 1, type: !306, isLocal: true, isDefinition: true)
!1240 = !DIGlobalVariableExpression(var: !1241, expr: !DIExpression())
!1241 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !1242, isLocal: true, isDefinition: true)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, align: 8, elements: !1243)
!1243 = !{!1244}
!1244 = !DISubrange(count: 44, lowerBound: 0)
!1245 = !DIGlobalVariableExpression(var: !1246, expr: !DIExpression())
!1246 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !1247, isLocal: true, isDefinition: true)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, align: 8, elements: !1248)
!1248 = !{!1249}
!1249 = !DISubrange(count: 40, lowerBound: 0)
!1250 = !DIGlobalVariableExpression(var: !1251, expr: !DIExpression())
!1251 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !1252, isLocal: true, isDefinition: true)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, align: 8, elements: !1253)
!1253 = !{!1254}
!1254 = !DISubrange(count: 36, lowerBound: 0)
!1255 = !DIGlobalVariableExpression(var: !1256, expr: !DIExpression())
!1256 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !1257, isLocal: true, isDefinition: true)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, align: 8, elements: !1258)
!1258 = !{!1259}
!1259 = !DISubrange(count: 38, lowerBound: 0)
!1260 = !DIGlobalVariableExpression(var: !1261, expr: !DIExpression())
!1261 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !697, isLocal: true, isDefinition: true)
!1262 = !DIGlobalVariableExpression(var: !1263, expr: !DIExpression())
!1263 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.TypeError", scope: !84, file: !84, line: 1, type: !1204, isLocal: false, isDefinition: true, align: 64)
!1264 = !DIGlobalVariableExpression(var: !1265, expr: !DIExpression())
!1265 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1059, type: !3, isLocal: true, isDefinition: true)
!1266 = !DIGlobalVariableExpression(var: !1267, expr: !DIExpression())
!1267 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !981, isLocal: true, isDefinition: true)
!1268 = !DIGlobalVariableExpression(var: !1269, expr: !DIExpression())
!1269 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !320, isLocal: true, isDefinition: true)
!1270 = !DIGlobalVariableExpression(var: !1271, expr: !DIExpression())
!1271 = distinct !DIGlobalVariable(scope: null, file: !33, line: 965, type: !77, isLocal: true, isDefinition: true)
!1272 = !DIGlobalVariableExpression(var: !1273, expr: !DIExpression())
!1273 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !511, isLocal: true, isDefinition: true)
!1274 = !DIGlobalVariableExpression(var: !1275, expr: !DIExpression())
!1275 = distinct !DIGlobalVariable(scope: null, file: !33, line: 356, type: !70, isLocal: true, isDefinition: true)
!1276 = !DIGlobalVariableExpression(var: !1277, expr: !DIExpression())
!1277 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !697, isLocal: true, isDefinition: true)
!1278 = !DIGlobalVariableExpression(var: !1279, expr: !DIExpression())
!1279 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !697, isLocal: true, isDefinition: true)
!1280 = !DIGlobalVariableExpression(var: !1281, expr: !DIExpression())
!1281 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !697, isLocal: true, isDefinition: true)
!1282 = !DIGlobalVariableExpression(var: !1283, expr: !DIExpression())
!1283 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !306, isLocal: true, isDefinition: true)
!1284 = !DIGlobalVariableExpression(var: !1285, expr: !DIExpression())
!1285 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !311, isLocal: true, isDefinition: true)
!1286 = !DIGlobalVariableExpression(var: !1287, expr: !DIExpression())
!1287 = distinct !DIGlobalVariable(scope: null, file: !33, line: 1, type: !1288, isLocal: true, isDefinition: true)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, align: 8, elements: !1289)
!1289 = !{!1290}
!1290 = !DISubrange(count: 31, lowerBound: 0)
!1291 = !DIGlobalVariableExpression(var: !1292, expr: !DIExpression())
!1292 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1012, isLocal: true, isDefinition: true)
!1293 = !DIGlobalVariableExpression(var: !1294, expr: !DIExpression())
!1294 = distinct !DIGlobalVariable(scope: null, file: !319, line: 441, type: !34, isLocal: true, isDefinition: true)
!1295 = !DIGlobalVariableExpression(var: !1296, expr: !DIExpression())
!1296 = distinct !DIGlobalVariable(scope: null, file: !319, line: 650, type: !59, isLocal: true, isDefinition: true)
!1297 = !DIGlobalVariableExpression(var: !1298, expr: !DIExpression())
!1298 = distinct !DIGlobalVariable(scope: null, file: !319, line: 658, type: !59, isLocal: true, isDefinition: true)
!1299 = !DIGlobalVariableExpression(var: !1300, expr: !DIExpression())
!1300 = distinct !DIGlobalVariable(scope: null, file: !319, line: 667, type: !59, isLocal: true, isDefinition: true)
!1301 = !DIGlobalVariableExpression(var: !1302, expr: !DIExpression())
!1302 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !454, isLocal: true, isDefinition: true)
!1303 = !DIGlobalVariableExpression(var: !1304, expr: !DIExpression())
!1304 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1002, isLocal: true, isDefinition: true)
!1305 = !DIGlobalVariableExpression(var: !1306, expr: !DIExpression())
!1306 = distinct !DIGlobalVariable(scope: null, file: !319, line: 824, type: !52, isLocal: true, isDefinition: true)
!1307 = !DIGlobalVariableExpression(var: !1308, expr: !DIExpression())
!1308 = distinct !DIGlobalVariable(scope: null, file: !319, line: 843, type: !59, isLocal: true, isDefinition: true)
!1309 = !DIGlobalVariableExpression(var: !1310, expr: !DIExpression())
!1310 = distinct !DIGlobalVariable(scope: null, file: !319, line: 630, type: !77, isLocal: true, isDefinition: true)
!1311 = !DIGlobalVariableExpression(var: !1312, expr: !DIExpression())
!1312 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1425, type: !454, isLocal: true, isDefinition: true)
!1313 = !DIGlobalVariableExpression(var: !1314, expr: !DIExpression())
!1314 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1425, type: !1315, isLocal: true, isDefinition: true)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, align: 8, elements: !1316)
!1316 = !{!1317}
!1317 = !DISubrange(count: 29, lowerBound: 0)
!1318 = !DIGlobalVariableExpression(var: !1319, expr: !DIExpression())
!1319 = distinct !DIGlobalVariable(scope: null, file: !319, line: 875, type: !34, isLocal: true, isDefinition: true)
!1320 = !DIGlobalVariableExpression(var: !1321, expr: !DIExpression())
!1321 = distinct !DIGlobalVariable(scope: null, file: !319, line: 407, type: !1252, isLocal: true, isDefinition: true)
!1322 = !DIGlobalVariableExpression(var: !1323, expr: !DIExpression())
!1323 = distinct !DIGlobalVariable(scope: null, file: !319, line: 407, type: !1324, isLocal: true, isDefinition: true)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, align: 8, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 19, lowerBound: 0)
!1327 = !DIGlobalVariableExpression(var: !1328, expr: !DIExpression())
!1328 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !306, isLocal: true, isDefinition: true)
!1329 = !DIGlobalVariableExpression(var: !1330, expr: !DIExpression())
!1330 = distinct !DIGlobalVariable(scope: null, file: !319, line: 882, type: !59, isLocal: true, isDefinition: true)
!1331 = !DIGlobalVariableExpression(var: !1332, expr: !DIExpression())
!1332 = distinct !DIGlobalVariable(scope: null, file: !319, line: 2067, type: !299, isLocal: true, isDefinition: true)
!1333 = !DIGlobalVariableExpression(var: !1334, expr: !DIExpression())
!1334 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1007, isLocal: true, isDefinition: true)
!1335 = !DIGlobalVariableExpression(var: !1336, expr: !DIExpression())
!1336 = distinct !DIGlobalVariable(scope: null, file: !319, line: 2085, type: !3, isLocal: true, isDefinition: true)
!1337 = !DIGlobalVariableExpression(var: !1338, expr: !DIExpression())
!1338 = distinct !DIGlobalVariable(scope: null, file: !319, line: 2090, type: !1040, isLocal: true, isDefinition: true)
!1339 = !DIGlobalVariableExpression(var: !1340, expr: !DIExpression())
!1340 = distinct !DIGlobalVariable(scope: null, file: !319, line: 2101, type: !1040, isLocal: true, isDefinition: true)
!1341 = !DIGlobalVariableExpression(var: !1342, expr: !DIExpression())
!1342 = distinct !DIGlobalVariable(scope: null, file: !319, line: 598, type: !59, isLocal: true, isDefinition: true)
!1343 = !DIGlobalVariableExpression(var: !1344, expr: !DIExpression())
!1344 = distinct !DIGlobalVariable(scope: null, file: !319, line: 573, type: !59, isLocal: true, isDefinition: true)
!1345 = !DIGlobalVariableExpression(var: !1346, expr: !DIExpression())
!1346 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1315, isLocal: true, isDefinition: true)
!1347 = !DIGlobalVariableExpression(var: !1348, expr: !DIExpression())
!1348 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1957, type: !34, isLocal: true, isDefinition: true)
!1349 = !DIGlobalVariableExpression(var: !1350, expr: !DIExpression())
!1350 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !306, isLocal: true, isDefinition: true)
!1351 = !DIGlobalVariableExpression(var: !1352, expr: !DIExpression())
!1352 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1353, isLocal: true, isDefinition: true)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, align: 8, elements: !1354)
!1354 = !{!1355}
!1355 = !DISubrange(count: 34, lowerBound: 0)
!1356 = !DIGlobalVariableExpression(var: !1357, expr: !DIExpression())
!1357 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1041, type: !59, isLocal: true, isDefinition: true)
!1358 = !DIGlobalVariableExpression(var: !1359, expr: !DIExpression())
!1359 = distinct !DIGlobalVariable(scope: null, file: !319, line: 488, type: !52, isLocal: true, isDefinition: true)
!1360 = !DIGlobalVariableExpression(var: !1361, expr: !DIExpression())
!1361 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !454, isLocal: true, isDefinition: true)
!1362 = !DIGlobalVariableExpression(var: !1363, expr: !DIExpression())
!1363 = distinct !DIGlobalVariable(scope: null, file: !319, line: 247, type: !59, isLocal: true, isDefinition: true)
!1364 = !DIGlobalVariableExpression(var: !1365, expr: !DIExpression())
!1365 = distinct !DIGlobalVariable(scope: null, file: !319, line: 201, type: !10, isLocal: true, isDefinition: true)
!1366 = !DIGlobalVariableExpression(var: !1367, expr: !DIExpression())
!1367 = distinct !DIGlobalVariable(scope: null, file: !319, line: 209, type: !391, isLocal: true, isDefinition: true)
!1368 = !DIGlobalVariableExpression(var: !1369, expr: !DIExpression())
!1369 = distinct !DIGlobalVariable(scope: null, file: !319, line: 806, type: !52, isLocal: true, isDefinition: true)
!1370 = !DIGlobalVariableExpression(var: !1371, expr: !DIExpression())
!1371 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1117, type: !70, isLocal: true, isDefinition: true)
!1372 = !DIGlobalVariableExpression(var: !1373, expr: !DIExpression())
!1373 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1374, isLocal: true, isDefinition: true)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, align: 8, elements: !1375)
!1375 = !{!1376}
!1376 = !DISubrange(count: 50, lowerBound: 0)
!1377 = !DIGlobalVariableExpression(var: !1378, expr: !DIExpression())
!1378 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1074, type: !77, isLocal: true, isDefinition: true)
!1379 = !DIGlobalVariableExpression(var: !1380, expr: !DIExpression())
!1380 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1381, isLocal: true, isDefinition: true)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, align: 8, elements: !1382)
!1382 = !{!1383}
!1383 = !DISubrange(count: 39, lowerBound: 0)
!1384 = !DIGlobalVariableExpression(var: !1385, expr: !DIExpression())
!1385 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1386, isLocal: true, isDefinition: true)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, align: 8, elements: !1387)
!1387 = !{!1388}
!1388 = !DISubrange(count: 45, lowerBound: 0)
!1389 = !DIGlobalVariableExpression(var: !1390, expr: !DIExpression())
!1390 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1047, type: !444, isLocal: true, isDefinition: true)
!1391 = !DIGlobalVariableExpression(var: !1392, expr: !DIExpression())
!1392 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1062, type: !511, isLocal: true, isDefinition: true)
!1393 = !DIGlobalVariableExpression(var: !1394, expr: !DIExpression())
!1394 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1398, type: !704, isLocal: true, isDefinition: true)
!1395 = !DIGlobalVariableExpression(var: !1396, expr: !DIExpression())
!1396 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1411, type: !1397, isLocal: true, isDefinition: true)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, align: 8, elements: !1398)
!1398 = !{!1399}
!1399 = !DISubrange(count: 26, lowerBound: 0)
!1400 = !DIGlobalVariableExpression(var: !1401, expr: !DIExpression())
!1401 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !454, isLocal: true, isDefinition: true)
!1402 = !DIGlobalVariableExpression(var: !1403, expr: !DIExpression())
!1403 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1237, type: !306, isLocal: true, isDefinition: true)
!1404 = !DIGlobalVariableExpression(var: !1405, expr: !DIExpression())
!1405 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1237, type: !1152, isLocal: true, isDefinition: true)
!1406 = !DIGlobalVariableExpression(var: !1407, expr: !DIExpression())
!1407 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1275, type: !77, isLocal: true, isDefinition: true)
!1408 = !DIGlobalVariableExpression(var: !1409, expr: !DIExpression())
!1409 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1410, isLocal: true, isDefinition: true)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, align: 8, elements: !1411)
!1411 = !{!1412}
!1412 = !DISubrange(count: 43, lowerBound: 0)
!1413 = !DIGlobalVariableExpression(var: !1414, expr: !DIExpression())
!1414 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1381, isLocal: true, isDefinition: true)
!1415 = !DIGlobalVariableExpression(var: !1416, expr: !DIExpression())
!1416 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1341, type: !226, isLocal: true, isDefinition: true)
!1417 = !DIGlobalVariableExpression(var: !1418, expr: !DIExpression())
!1418 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1328, type: !70, isLocal: true, isDefinition: true)
!1419 = !DIGlobalVariableExpression(var: !1420, expr: !DIExpression())
!1420 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1294, type: !206, isLocal: true, isDefinition: true)
!1421 = !DIGlobalVariableExpression(var: !1422, expr: !DIExpression())
!1422 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1373, type: !391, isLocal: true, isDefinition: true)
!1423 = !DIGlobalVariableExpression(var: !1424, expr: !DIExpression())
!1424 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1425, isLocal: true, isDefinition: true)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, align: 8, elements: !1426)
!1426 = !{!1427}
!1427 = !DISubrange(count: 47, lowerBound: 0)
!1428 = !DIGlobalVariableExpression(var: !1429, expr: !DIExpression())
!1429 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1987, type: !1040, isLocal: true, isDefinition: true)
!1430 = !DIGlobalVariableExpression(var: !1431, expr: !DIExpression())
!1431 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1432, isLocal: true, isDefinition: true)
!1432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, align: 8, elements: !1433)
!1433 = !{!1434}
!1434 = !DISubrange(count: 55, lowerBound: 0)
!1435 = !DIGlobalVariableExpression(var: !1436, expr: !DIExpression())
!1436 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !981, isLocal: true, isDefinition: true)
!1437 = !DIGlobalVariableExpression(var: !1438, expr: !DIExpression())
!1438 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1352, type: !221, isLocal: true, isDefinition: true)
!1439 = !DIGlobalVariableExpression(var: !1440, expr: !DIExpression())
!1440 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1315, type: !77, isLocal: true, isDefinition: true)
!1441 = !DIGlobalVariableExpression(var: !1442, expr: !DIExpression())
!1442 = distinct !DIGlobalVariable(scope: null, file: !319, line: 734, type: !59, isLocal: true, isDefinition: true)
!1443 = !DIGlobalVariableExpression(var: !1444, expr: !DIExpression())
!1444 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1381, isLocal: true, isDefinition: true)
!1445 = !DIGlobalVariableExpression(var: !1446, expr: !DIExpression())
!1446 = distinct !DIGlobalVariable(scope: null, file: !319, line: 642, type: !10, isLocal: true, isDefinition: true)
!1447 = !DIGlobalVariableExpression(var: !1448, expr: !DIExpression())
!1448 = distinct !DIGlobalVariable(scope: null, file: !319, line: 642, type: !77, isLocal: true, isDefinition: true)
!1449 = !DIGlobalVariableExpression(var: !1450, expr: !DIExpression())
!1450 = distinct !DIGlobalVariable(scope: null, file: !319, line: 541, type: !34, isLocal: true, isDefinition: true)
!1451 = !DIGlobalVariableExpression(var: !1452, expr: !DIExpression())
!1452 = distinct !DIGlobalVariable(scope: null, file: !319, line: 273, type: !761, isLocal: true, isDefinition: true)
!1453 = !DIGlobalVariableExpression(var: !1454, expr: !DIExpression())
!1454 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !306, isLocal: true, isDefinition: true)
!1455 = !DIGlobalVariableExpression(var: !1456, expr: !DIExpression())
!1456 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !311, isLocal: true, isDefinition: true)
!1457 = !DIGlobalVariableExpression(var: !1458, expr: !DIExpression())
!1458 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1459, isLocal: true, isDefinition: true)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, align: 8, elements: !1460)
!1460 = !{!1461}
!1461 = !DISubrange(count: 46, lowerBound: 0)
!1462 = !DIGlobalVariableExpression(var: !1463, expr: !DIExpression())
!1463 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1218, type: !70, isLocal: true, isDefinition: true)
!1464 = !DIGlobalVariableExpression(var: !1465, expr: !DIExpression())
!1465 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1466, isLocal: true, isDefinition: true)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, align: 8, elements: !1467)
!1467 = !{!1468}
!1468 = !DISubrange(count: 48, lowerBound: 0)
!1469 = !DIGlobalVariableExpression(var: !1470, expr: !DIExpression())
!1470 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1471 = !DIGlobalVariableExpression(var: !1472, expr: !DIExpression())
!1472 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1473 = !DIGlobalVariableExpression(var: !1474, expr: !DIExpression())
!1474 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1315, isLocal: true, isDefinition: true)
!1475 = !DIGlobalVariableExpression(var: !1476, expr: !DIExpression())
!1476 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1315, isLocal: true, isDefinition: true)
!1477 = !DIGlobalVariableExpression(var: !1478, expr: !DIExpression())
!1478 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1479, isLocal: true, isDefinition: true)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, align: 8, elements: !1179)
!1480 = !DIGlobalVariableExpression(var: !1481, expr: !DIExpression())
!1481 = distinct !DIGlobalVariable(name: "internal/reflectlite.zerobuffer", linkageName: "internal/reflectlite.zerobuffer", scope: !319, file: !319, line: 1710, type: !90, isLocal: false, isDefinition: true, align: 64)
!1482 = !DIGlobalVariableExpression(var: !1483, expr: !DIExpression())
!1483 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1716, type: !697, isLocal: true, isDefinition: true)
!1484 = !DIGlobalVariableExpression(var: !1485, expr: !DIExpression())
!1485 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1716, type: !697, isLocal: true, isDefinition: true)
!1486 = !DIGlobalVariableExpression(var: !1487, expr: !DIExpression())
!1487 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1381, isLocal: true, isDefinition: true)
!1488 = !DIGlobalVariableExpression(var: !1489, expr: !DIExpression())
!1489 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1825, type: !1490, isLocal: true, isDefinition: true)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, align: 8, elements: !1491)
!1491 = !{!1492}
!1492 = !DISubrange(count: 21, lowerBound: 0)
!1493 = !DIGlobalVariableExpression(var: !1494, expr: !DIExpression())
!1494 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1825, type: !10, isLocal: true, isDefinition: true)
!1495 = !DIGlobalVariableExpression(var: !1496, expr: !DIExpression())
!1496 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1002, isLocal: true, isDefinition: true)
!1497 = !DIGlobalVariableExpression(var: !1498, expr: !DIExpression())
!1498 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1879, type: !1040, isLocal: true, isDefinition: true)
!1499 = !DIGlobalVariableExpression(var: !1500, expr: !DIExpression())
!1500 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1903, type: !206, isLocal: true, isDefinition: true)
!1501 = !DIGlobalVariableExpression(var: !1502, expr: !DIExpression())
!1502 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1353, isLocal: true, isDefinition: true)
!1503 = !DIGlobalVariableExpression(var: !1504, expr: !DIExpression())
!1504 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1288, isLocal: true, isDefinition: true)
!1505 = !DIGlobalVariableExpression(var: !1506, expr: !DIExpression())
!1506 = distinct !DIGlobalVariable(scope: null, file: !319, line: 2125, type: !77, isLocal: true, isDefinition: true)
!1507 = !DIGlobalVariableExpression(var: !1508, expr: !DIExpression())
!1508 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1410, isLocal: true, isDefinition: true)
!1509 = !DIGlobalVariableExpression(var: !1510, expr: !DIExpression())
!1510 = distinct !DIGlobalVariable(scope: null, file: !319, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1511 = !DIGlobalVariableExpression(var: !1512, expr: !DIExpression())
!1512 = distinct !DIGlobalVariable(scope: null, file: !1513, line: 1, type: !511, isLocal: true, isDefinition: true)
!1513 = !DIFile(filename: "visiblefields.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1514 = !DIGlobalVariableExpression(var: !1515, expr: !DIExpression())
!1515 = distinct !DIGlobalVariable(scope: null, file: !1513, line: 1, type: !1247, isLocal: true, isDefinition: true)
!1516 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1517)
!1517 = !{!1518, !1521, !1523, !1525}
!1518 = !DIGlobalVariableExpression(var: !1519, expr: !DIExpression())
!1519 = distinct !DIGlobalVariable(scope: null, file: !1520, line: 1, type: !299, isLocal: true, isDefinition: true)
!1520 = !DIFile(filename: "checkpoint.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!1521 = !DIGlobalVariableExpression(var: !1522, expr: !DIExpression())
!1522 = distinct !DIGlobalVariable(name: "type *string", scope: !84, file: !84, line: 1, type: !93, isLocal: false, isDefinition: true, align: 64)
!1523 = !DIGlobalVariableExpression(var: !1524, expr: !DIExpression())
!1524 = distinct !DIGlobalVariable(name: "type string", scope: !84, file: !84, line: 1, type: !85, isLocal: false, isDefinition: true, align: 64)
!1525 = !DIGlobalVariableExpression(var: !1526, expr: !DIExpression())
!1526 = distinct !DIGlobalVariable(scope: null, file: !1520, line: 1, type: !1002, isLocal: true, isDefinition: true)
!1527 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1528)
!1528 = !{!331, !377, !379, !1529, !1531, !1533, !1539, !1541, !1543, !382, !385, !1545, !389, !394, !396, !1547, !1549, !1551, !398, !400, !402, !408, !1553}
!1529 = !DIGlobalVariableExpression(var: !1530, expr: !DIExpression())
!1530 = distinct !DIGlobalVariable(name: "type *string", scope: !84, file: !84, line: 1, type: !93, isLocal: false, isDefinition: true, align: 64)
!1531 = !DIGlobalVariableExpression(var: !1532, expr: !DIExpression())
!1532 = distinct !DIGlobalVariable(name: "type string", scope: !84, file: !84, line: 1, type: !85, isLocal: false, isDefinition: true, align: 64)
!1533 = !DIGlobalVariableExpression(var: !1534, expr: !DIExpression())
!1534 = distinct !DIGlobalVariable(scope: null, file: !1535, line: 1, type: !1536, isLocal: true, isDefinition: true)
!1535 = !DIFile(filename: "queue.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!1536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, align: 8, elements: !1537)
!1537 = !{!1538}
!1538 = !DISubrange(count: 62, lowerBound: 0)
!1539 = !DIGlobalVariableExpression(var: !1540, expr: !DIExpression())
!1540 = distinct !DIGlobalVariable(scope: null, file: !1535, line: 1, type: !1536, isLocal: true, isDefinition: true)
!1541 = !DIGlobalVariableExpression(var: !1542, expr: !DIExpression())
!1542 = distinct !DIGlobalVariable(scope: null, file: !333, line: 89, type: !299, isLocal: true, isDefinition: true)
!1543 = !DIGlobalVariableExpression(var: !1544, expr: !DIExpression())
!1544 = distinct !DIGlobalVariable(name: "internal/task.goroutineID", linkageName: "internal/task.goroutineID", scope: !333, file: !333, line: 38, type: !49, isLocal: false, isDefinition: true, align: 64)
!1545 = !DIGlobalVariableExpression(var: !1546, expr: !DIExpression())
!1546 = distinct !DIGlobalVariable(scope: null, file: !333, line: 49, type: !434, isLocal: true, isDefinition: true)
!1547 = !DIGlobalVariableExpression(var: !1548, expr: !DIExpression())
!1548 = distinct !DIGlobalVariable(scope: null, file: !333, line: 106, type: !299, isLocal: true, isDefinition: true)
!1549 = !DIGlobalVariableExpression(var: !1550, expr: !DIExpression())
!1550 = distinct !DIGlobalVariable(scope: null, file: !333, line: 106, type: !34, isLocal: true, isDefinition: true)
!1551 = !DIGlobalVariableExpression(var: !1552, expr: !DIExpression())
!1552 = distinct !DIGlobalVariable(scope: null, file: !333, line: 116, type: !441, isLocal: true, isDefinition: true)
!1553 = !DIGlobalVariableExpression(var: !1554, expr: !DIExpression())
!1554 = distinct !DIGlobalVariable(name: "internal/task.stackScanLock", linkageName: "internal/task.stackScanLock", scope: !333, file: !333, line: 263, type: !387, isLocal: false, isDefinition: true, align: 32)
!1555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1556 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1557)
!1557 = !{!410, !413, !1558, !415, !1561, !1564, !1566, !1568, !1570, !1572, !1575, !1577, !1579, !1582, !1585, !422, !425, !1588, !427, !1590, !1607, !1609, !1612, !1615, !429, !432, !437, !439, !1617, !442, !1619, !445, !450, !1621, !452, !1623, !457, !1625, !1627, !1632, !1635, !1637, !1639, !459, !462, !464, !466, !468, !470, !472, !474, !1641, !1643, !476, !478, !480, !1645, !1647, !482, !484, !486, !1649, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !1655, !514, !1657, !1659, !1661, !1663, !1681, !1683, !1685, !1705, !1707, !1709, !1711, !1713, !1715, !1717, !1719, !516, !1721, !1723, !1726, !1728}
!1558 = !DIGlobalVariableExpression(var: !1559, expr: !DIExpression())
!1559 = distinct !DIGlobalVariable(name: "runtime.inf", linkageName: "runtime.inf", scope: !1560, file: !1560, line: 9, type: !798, isLocal: false, isDefinition: true, align: 64)
!1560 = !DIFile(filename: "float.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1561 = !DIGlobalVariableExpression(var: !1562, expr: !DIExpression())
!1562 = distinct !DIGlobalVariable(scope: null, file: !1563, line: 210, type: !441, isLocal: true, isDefinition: true)
!1563 = !DIFile(filename: "chan.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1564 = !DIGlobalVariableExpression(var: !1565, expr: !DIExpression())
!1565 = distinct !DIGlobalVariable(scope: null, file: !1563, line: 267, type: !441, isLocal: true, isDefinition: true)
!1566 = !DIGlobalVariableExpression(var: !1567, expr: !DIExpression())
!1567 = distinct !DIGlobalVariable(scope: null, file: !1563, line: 348, type: !391, isLocal: true, isDefinition: true)
!1568 = !DIGlobalVariableExpression(var: !1569, expr: !DIExpression())
!1569 = distinct !DIGlobalVariable(scope: null, file: !1563, line: 358, type: !444, isLocal: true, isDefinition: true)
!1570 = !DIGlobalVariableExpression(var: !1571, expr: !DIExpression())
!1571 = distinct !DIGlobalVariable(name: "runtime.chanSelectLock", linkageName: "runtime.chanSelectLock", scope: !1563, file: !1563, line: 402, type: !387, isLocal: false, isDefinition: true, align: 32)
!1572 = !DIGlobalVariableExpression(var: !1573, expr: !DIExpression())
!1573 = distinct !DIGlobalVariable(scope: null, file: !1574, line: 1, type: !434, isLocal: true, isDefinition: true)
!1574 = !DIFile(filename: "debug.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1575 = !DIGlobalVariableExpression(var: !1576, expr: !DIExpression())
!1576 = distinct !DIGlobalVariable(name: "type *string", scope: !84, file: !84, line: 1, type: !93, isLocal: false, isDefinition: true, align: 64)
!1577 = !DIGlobalVariableExpression(var: !1578, expr: !DIExpression())
!1578 = distinct !DIGlobalVariable(name: "type string", scope: !84, file: !84, line: 1, type: !85, isLocal: false, isDefinition: true, align: 64)
!1579 = !DIGlobalVariableExpression(var: !1580, expr: !DIExpression())
!1580 = distinct !DIGlobalVariable(scope: null, file: !1581, line: 13, type: !77, isLocal: true, isDefinition: true)
!1581 = !DIFile(filename: "env.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1582 = !DIGlobalVariableExpression(var: !1583, expr: !DIExpression())
!1583 = distinct !DIGlobalVariable(name: "runtime.godebugUpdate", linkageName: "runtime.godebugUpdate", scope: !1584, file: !1584, line: 142, type: !658, isLocal: false, isDefinition: true, align: 64)
!1584 = !DIFile(filename: "runtime.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1585 = !DIGlobalVariableExpression(var: !1586, expr: !DIExpression())
!1586 = distinct !DIGlobalVariable(name: "runtime.buildVersion", linkageName: "runtime.buildVersion", scope: !1587, file: !1587, line: 10, type: !44, isLocal: false, isDefinition: true, align: 64)
!1587 = !DIFile(filename: "extern.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1588 = !DIGlobalVariableExpression(var: !1589, expr: !DIExpression())
!1589 = distinct !DIGlobalVariable(scope: null, file: !424, line: 61, type: !1012, isLocal: true, isDefinition: true)
!1590 = !DIGlobalVariableExpression(var: !1591, expr: !DIExpression())
!1591 = distinct !DIGlobalVariable(name: "runtime.gcMemStats", linkageName: "runtime.gcMemStats", scope: !424, file: !424, line: 112, type: !1592, isLocal: false, isDefinition: true, align: 64)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.libgc_prof_stats", baseType: !1593)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, size: 768, align: 64, elements: !1594)
!1594 = !{!1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "heapsize_full", baseType: !49, size: 64, align: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "free_bytes_full", baseType: !49, size: 64, align: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "unmapped_bytes", baseType: !49, size: 64, align: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_allocd_since_gc", baseType: !49, size: 64, align: 64, offset: 192)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "allocd_bytes_before_gc", baseType: !49, size: 64, align: 64, offset: 256)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "non_gc_bytes", baseType: !49, size: 64, align: 64, offset: 320)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "gc_no", baseType: !49, size: 64, align: 64, offset: 384)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "markers_m1", baseType: !49, size: 64, align: 64, offset: 448)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_reclaimed_since_gc", baseType: !49, size: 64, align: 64, offset: 512)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_bytes_before_gc", baseType: !49, size: 64, align: 64, offset: 576)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "expl_freed_bytes_since_gc", baseType: !49, size: 64, align: 64, offset: 640)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "obtained_from_os_bytes", baseType: !49, size: 64, align: 64, offset: 704)
!1607 = !DIGlobalVariableExpression(var: !1608, expr: !DIExpression())
!1608 = distinct !DIGlobalVariable(scope: null, file: !424, line: 135, type: !1353, isLocal: true, isDefinition: true)
!1609 = !DIGlobalVariableExpression(var: !1610, expr: !DIExpression())
!1610 = distinct !DIGlobalVariable(scope: null, file: !1611, line: 616, type: !1152, isLocal: true, isDefinition: true)
!1611 = !DIFile(filename: "hashmap.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1612 = !DIGlobalVariableExpression(var: !1613, expr: !DIExpression())
!1613 = distinct !DIGlobalVariable(scope: null, file: !1614, line: 80, type: !1152, isLocal: true, isDefinition: true)
!1614 = !DIFile(filename: "interface.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1615 = !DIGlobalVariableExpression(var: !1616, expr: !DIExpression())
!1616 = distinct !DIGlobalVariable(scope: null, file: !1614, line: 89, type: !447, isLocal: true, isDefinition: true)
!1617 = !DIGlobalVariableExpression(var: !1618, expr: !DIExpression())
!1618 = distinct !DIGlobalVariable(scope: null, file: !431, line: 122, type: !447, isLocal: true, isDefinition: true)
!1619 = !DIGlobalVariableExpression(var: !1620, expr: !DIExpression())
!1620 = distinct !DIGlobalVariable(scope: null, file: !431, line: 189, type: !311, isLocal: true, isDefinition: true)
!1621 = !DIGlobalVariableExpression(var: !1622, expr: !DIExpression())
!1622 = distinct !DIGlobalVariable(scope: null, file: !431, line: 205, type: !434, isLocal: true, isDefinition: true)
!1623 = !DIGlobalVariableExpression(var: !1624, expr: !DIExpression())
!1624 = distinct !DIGlobalVariable(scope: null, file: !431, line: 217, type: !441, isLocal: true, isDefinition: true)
!1625 = !DIGlobalVariableExpression(var: !1626, expr: !DIExpression())
!1626 = distinct !DIGlobalVariable(scope: null, file: !431, line: 227, type: !118, isLocal: true, isDefinition: true)
!1627 = !DIGlobalVariableExpression(var: !1628, expr: !DIExpression())
!1628 = distinct !DIGlobalVariable(scope: null, file: !431, line: 231, type: !1629, isLocal: true, isDefinition: true)
!1629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, align: 8, elements: !1630)
!1630 = !{!1631}
!1631 = !DISubrange(count: 52, lowerBound: 0)
!1632 = !DIGlobalVariableExpression(var: !1633, expr: !DIExpression())
!1633 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1634 = !DIFile(filename: "poll.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1635 = !DIGlobalVariableExpression(var: !1636, expr: !DIExpression())
!1636 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !441, isLocal: true, isDefinition: true)
!1637 = !DIGlobalVariableExpression(var: !1638, expr: !DIExpression())
!1638 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !444, isLocal: true, isDefinition: true)
!1639 = !DIGlobalVariableExpression(var: !1640, expr: !DIExpression())
!1640 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !704, isLocal: true, isDefinition: true)
!1641 = !DIGlobalVariableExpression(var: !1642, expr: !DIExpression())
!1642 = distinct !DIGlobalVariable(scope: null, file: !461, line: 355, type: !34, isLocal: true, isDefinition: true)
!1643 = !DIGlobalVariableExpression(var: !1644, expr: !DIExpression())
!1644 = distinct !DIGlobalVariable(scope: null, file: !461, line: 357, type: !52, isLocal: true, isDefinition: true)
!1645 = !DIGlobalVariableExpression(var: !1646, expr: !DIExpression())
!1646 = distinct !DIGlobalVariable(scope: null, file: !1584, line: 36, type: !761, isLocal: true, isDefinition: true)
!1647 = !DIGlobalVariableExpression(var: !1648, expr: !DIExpression())
!1648 = distinct !DIGlobalVariable(scope: null, file: !1584, line: 97, type: !311, isLocal: true, isDefinition: true)
!1649 = !DIGlobalVariableExpression(var: !1650, expr: !DIExpression())
!1650 = distinct !DIGlobalVariable(name: "runtime.args", linkageName: "runtime.args", scope: !417, file: !417, line: 107, type: !1651, isLocal: false, isDefinition: true, align: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]string", size: 192, align: 64, elements: !1652)
!1652 = !{!1653, !48, !676}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !1654, size: 64, align: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64, dwarfAddressSpace: 0)
!1655 = !DIGlobalVariableExpression(var: !1656, expr: !DIExpression())
!1656 = distinct !DIGlobalVariable(name: "runtime.hasSignals", linkageName: "runtime.hasSignals", scope: !417, file: !417, line: 345, type: !374, isLocal: false, isDefinition: true, align: 8)
!1657 = !DIGlobalVariableExpression(var: !1658, expr: !DIExpression())
!1658 = distinct !DIGlobalVariable(scope: null, file: !417, line: 365, type: !704, isLocal: true, isDefinition: true)
!1659 = !DIGlobalVariableExpression(var: !1660, expr: !DIExpression())
!1660 = distinct !DIGlobalVariable(scope: null, file: !417, line: 382, type: !704, isLocal: true, isDefinition: true)
!1661 = !DIGlobalVariableExpression(var: !1662, expr: !DIExpression())
!1662 = distinct !DIGlobalVariable(scope: null, file: !417, line: 392, type: !704, isLocal: true, isDefinition: true)
!1663 = !DIGlobalVariableExpression(var: !1664, expr: !DIExpression())
!1664 = distinct !DIGlobalVariable(name: "runtime.signalRecvWaiter", linkageName: "runtime.signalRecvWaiter", scope: !417, file: !417, line: 447, type: !1665, isLocal: false, isDefinition: true, align: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Pointer[internal/task.Task]", baseType: !1666)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !1667)
!1667 = !{!1668, !369, !1680}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !1669, align: 64)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1670, align: 64, elements: !127)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64, align: 64, dwarfAddressSpace: 0)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !1672)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !1673)
!1673 = !{!1674, !339, !340, !342, !1675, !372, !373, !375, !376}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !1670, size: 64, align: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !1676, size: 384, align: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !1677)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !1678)
!1678 = !{!350, !351, !353, !354, !1679, !356}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !1670, size: 64, align: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !90, size: 64, align: 64)
!1681 = !DIGlobalVariableExpression(var: !1682, expr: !DIExpression())
!1682 = distinct !DIGlobalVariable(scope: null, file: !417, line: 458, type: !1288, isLocal: true, isDefinition: true)
!1683 = !DIGlobalVariableExpression(var: !1684, expr: !DIExpression())
!1684 = distinct !DIGlobalVariable(scope: null, file: !417, line: 514, type: !511, isLocal: true, isDefinition: true)
!1685 = !DIGlobalVariableExpression(var: !1686, expr: !DIExpression())
!1686 = distinct !DIGlobalVariable(name: "runtime.timerQueue", linkageName: "runtime.timerQueue", scope: !1687, file: !1687, line: 7, type: !1688, isLocal: false, isDefinition: true, align: 64)
!1687 = !DIFile(filename: "scheduler.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64, align: 64, dwarfAddressSpace: 0)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.timerNode", baseType: !1690)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !1691)
!1691 = !{!1692, !1693, !1704}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "next", baseType: !1688, size: 64, align: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "timer", baseType: !1694, size: 64, align: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64, align: 64, dwarfAddressSpace: 0)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.timer", baseType: !1696)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !1697)
!1697 = !{!1698, !1700, !1701, !1702}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "when", baseType: !1699, size: 64, align: 64)
!1699 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "period", baseType: !1699, size: 64, align: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !658, size: 128, align: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "arg", baseType: !1703, size: 128, align: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "any", baseType: !781)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "callback", baseType: !658, size: 128, align: 64, offset: 128)
!1705 = !DIGlobalVariableExpression(var: !1706, expr: !DIExpression())
!1706 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 12, type: !52, isLocal: true, isDefinition: true)
!1707 = !DIGlobalVariableExpression(var: !1708, expr: !DIExpression())
!1708 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 19, type: !52, isLocal: true, isDefinition: true)
!1709 = !DIGlobalVariableExpression(var: !1710, expr: !DIExpression())
!1710 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 26, type: !52, isLocal: true, isDefinition: true)
!1711 = !DIGlobalVariableExpression(var: !1712, expr: !DIExpression())
!1712 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 45, type: !761, isLocal: true, isDefinition: true)
!1713 = !DIGlobalVariableExpression(var: !1714, expr: !DIExpression())
!1714 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 51, type: !391, isLocal: true, isDefinition: true)
!1715 = !DIGlobalVariableExpression(var: !1716, expr: !DIExpression())
!1716 = distinct !DIGlobalVariable(name: "runtime.timerQueueLock", linkageName: "runtime.timerQueueLock", scope: !518, file: !518, line: 16, type: !387, isLocal: false, isDefinition: true, align: 32)
!1717 = !DIGlobalVariableExpression(var: !1718, expr: !DIExpression())
!1718 = distinct !DIGlobalVariable(name: "runtime.timerQueueStarted", linkageName: "runtime.timerQueueStarted", scope: !518, file: !518, line: 17, type: !374, isLocal: false, isDefinition: true, align: 8)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(name: "runtime.timerFutex", linkageName: "runtime.timerFutex", scope: !518, file: !518, line: 18, type: !361, isLocal: false, isDefinition: true, align: 32)
!1721 = !DIGlobalVariableExpression(var: !1722, expr: !DIExpression())
!1722 = distinct !DIGlobalVariable(name: "runtime.atomicsLock", linkageName: "runtime.atomicsLock", scope: !518, file: !518, line: 151, type: !388, isLocal: false, isDefinition: true, align: 32)
!1723 = !DIGlobalVariableExpression(var: !1724, expr: !DIExpression())
!1724 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !316, isLocal: true, isDefinition: true)
!1725 = !DIFile(filename: "sync.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !316, isLocal: true, isDefinition: true)
!1728 = !DIGlobalVariableExpression(var: !1729, expr: !DIExpression())
!1729 = distinct !DIGlobalVariable(scope: null, file: !1730, line: 45, type: !221, isLocal: true, isDefinition: true)
!1730 = !DIFile(filename: "time_go123.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1731 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1732 = !{!"TinyGo version 0.41.1"}
!1733 = !{i32 2, !"Debug Info Version", i32 3}
!1734 = !{i32 7, !"Dwarf Version", i32 4}
!1735 = distinct !DISubprogram(name: "math/bits.Len", linkageName: "math/bits.Len", scope: !773, file: !773, line: 302, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !1739)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!1738}
!1738 = !DIBasicType(name: "uint", size: 64, encoding: DW_ATE_unsigned)
!1739 = !{!1740}
!1740 = !DILocalVariable(name: "x", arg: 1, scope: !1735, file: !773, line: 302, type: !1738)
!1741 = !DILocation(line: 302, column: 6, scope: !1735)
!1742 = distinct !DISubprogram(name: "math.Log", linkageName: "math.Log", scope: !1743, file: !1743, line: 81, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !1746)
!1743 = !DIFile(filename: "log.go", directory: "/usr/local/go/src/math")
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!798}
!1746 = !{!1747}
!1747 = !DILocalVariable(name: "x", arg: 1, scope: !1742, file: !1743, line: 81, type: !798)
!1748 = !DILocation(line: 81, column: 6, scope: !1742)
!1749 = distinct !DISubprogram(name: "math.Floor", linkageName: "math.Floor", scope: !1750, file: !1750, line: 14, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !1751)
!1750 = !DIFile(filename: "floor.go", directory: "/usr/local/go/src/math")
!1751 = !{!1752}
!1752 = !DILocalVariable(name: "x", arg: 1, scope: !1749, file: !1750, line: 14, type: !798)
!1753 = !DILocation(line: 14, column: 6, scope: !1749)
!1754 = distinct !DISubprogram(name: "math.Log10", linkageName: "math.Log10", scope: !1755, file: !1755, line: 9, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !1756)
!1755 = !DIFile(filename: "log10.go", directory: "/usr/local/go/src/math")
!1756 = !{!1757}
!1757 = !DILocalVariable(name: "x", arg: 1, scope: !1754, file: !1755, line: 9, type: !798)
!1758 = !DILocation(line: 9, column: 6, scope: !1754)
!1759 = !DILocation(line: 0, scope: !1754)
!1760 = !DILocation(line: 11, column: 20, scope: !1754)
!1761 = !DILocation(line: 11, column: 19, scope: !1754)
!1762 = !DILocation(line: 11, column: 3, scope: !1754)
!1763 = !DILocation(line: 13, column: 15, scope: !1754)
!1764 = !DILocation(line: 13, column: 14, scope: !1754)
!1765 = !DILocation(line: 13, column: 2, scope: !1754)
!1766 = distinct !DISubprogram(name: "math.archLog10", linkageName: "math.archLog10", scope: !2, file: !2, line: 104, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !1767)
!1767 = !{!1768}
!1768 = !DILocalVariable(name: "x", arg: 1, scope: !1766, file: !2, line: 104, type: !798)
!1769 = !DILocation(line: 104, column: 6, scope: !1766)
!1770 = !DILocation(line: 105, column: 7, scope: !1766)
!1771 = distinct !DISubprogram(name: "math.log10", linkageName: "math.log10", scope: !1755, file: !1755, line: 16, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !1772)
!1772 = !{!1773}
!1773 = !DILocalVariable(name: "x", arg: 1, scope: !1771, file: !1755, line: 16, type: !798)
!1774 = !DILocation(line: 16, column: 6, scope: !1771)
!1775 = !DILocation(line: 17, column: 13, scope: !1771)
!1776 = !DILocation(line: 17, column: 12, scope: !1771)
!1777 = !DILocation(line: 17, column: 16, scope: !1771)
!1778 = !DILocation(line: 17, column: 2, scope: !1771)
!1779 = distinct !DISubprogram(name: "sync/atomic.SwapUint32", linkageName: "sync/atomic.SwapUint32", scope: !1780, file: !1780, line: 77, type: !1781, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1784)
!1780 = !DIFile(filename: "doc.go", directory: "/usr/local/go/src/sync/atomic")
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!1783, !104}
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64, dwarfAddressSpace: 0)
!1784 = !{!1785, !1786}
!1785 = !DILocalVariable(name: "addr", arg: 1, scope: !1779, file: !1780, line: 77, type: !1783)
!1786 = !DILocalVariable(name: "new", arg: 2, scope: !1779, file: !1780, line: 77, type: !104)
!1787 = !DILocation(line: 77, column: 6, scope: !1779)
!1788 = distinct !DISubprogram(name: "sync/atomic.CompareAndSwapUint32", linkageName: "sync/atomic.CompareAndSwapUint32", scope: !1780, file: !1780, line: 99, type: !1789, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1791)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!1783, !104, !104}
!1791 = !{!1792, !1793, !1794}
!1792 = !DILocalVariable(name: "addr", arg: 1, scope: !1788, file: !1780, line: 99, type: !1783)
!1793 = !DILocalVariable(name: "old", arg: 2, scope: !1788, file: !1780, line: 99, type: !104)
!1794 = !DILocalVariable(name: "new", arg: 3, scope: !1788, file: !1780, line: 99, type: !104)
!1795 = !DILocation(line: 99, column: 6, scope: !1788)
!1796 = distinct !DISubprogram(name: "sync/atomic.AddUint32", linkageName: "sync/atomic.AddUint32", scope: !1780, file: !1780, line: 123, type: !1781, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1797)
!1797 = !{!1798, !1799}
!1798 = !DILocalVariable(name: "addr", arg: 1, scope: !1796, file: !1780, line: 123, type: !1783)
!1799 = !DILocalVariable(name: "delta", arg: 2, scope: !1796, file: !1780, line: 123, type: !104)
!1800 = !DILocation(line: 123, column: 6, scope: !1796)
!1801 = distinct !DISubprogram(name: "sync/atomic.LoadUint32", linkageName: "sync/atomic.LoadUint32", scope: !1780, file: !1780, line: 183, type: !1802, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1804)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!1783}
!1804 = !{!1805}
!1805 = !DILocalVariable(name: "addr", arg: 1, scope: !1801, file: !1780, line: 183, type: !1783)
!1806 = !DILocation(line: 183, column: 6, scope: !1801)
!1807 = distinct !DISubprogram(name: "sync/atomic.StoreUint32", linkageName: "sync/atomic.StoreUint32", scope: !1780, file: !1780, line: 205, type: !1781, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1808)
!1808 = !{!1809, !1810}
!1809 = !DILocalVariable(name: "addr", arg: 1, scope: !1807, file: !1780, line: 205, type: !1783)
!1810 = !DILocalVariable(name: "val", arg: 2, scope: !1807, file: !1780, line: 205, type: !104)
!1811 = !DILocation(line: 205, column: 6, scope: !1807)
!1812 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Add", linkageName: "(*sync/atomic.Uint32).Add", scope: !1813, file: !1813, line: 161, type: !1814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1817)
!1813 = !DIFile(filename: "type.go", directory: "/usr/local/go/src/sync/atomic")
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!1816, !104}
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64, dwarfAddressSpace: 0)
!1817 = !{!1818, !1819}
!1818 = !DILocalVariable(name: "x", arg: 1, scope: !1812, file: !1813, line: 161, type: !1816)
!1819 = !DILocalVariable(name: "delta", arg: 2, scope: !1812, file: !1813, line: 161, type: !104)
!1820 = !DILocation(line: 161, column: 18, scope: !1812)
!1821 = !DILocation(line: 161, column: 69, scope: !1812)
!1822 = !DILocation(line: 161, column: 71, scope: !1812)
!1823 = !DILocation(line: 161, column: 74, scope: !1812)
!1824 = !DILocation(line: 161, column: 67, scope: !1812)
!1825 = !DILocation(line: 161, column: 51, scope: !1812)
!1826 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).CompareAndSwap", linkageName: "(*sync/atomic.Uint32).CompareAndSwap", scope: !1813, file: !1813, line: 156, type: !1827, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1829)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!1816, !104, !104}
!1829 = !{!1830, !1831, !1832}
!1830 = !DILocalVariable(name: "x", arg: 1, scope: !1826, file: !1813, line: 156, type: !1816)
!1831 = !DILocalVariable(name: "old", arg: 2, scope: !1826, file: !1813, line: 156, type: !104)
!1832 = !DILocalVariable(name: "new", arg: 3, scope: !1826, file: !1813, line: 156, type: !104)
!1833 = !DILocation(line: 156, column: 18, scope: !1826)
!1834 = !DILocation(line: 157, column: 31, scope: !1826)
!1835 = !DILocation(line: 157, column: 33, scope: !1826)
!1836 = !DILocation(line: 157, column: 36, scope: !1826)
!1837 = !DILocation(line: 157, column: 41, scope: !1826)
!1838 = !DILocation(line: 157, column: 29, scope: !1826)
!1839 = !DILocation(line: 157, column: 2, scope: !1826)
!1840 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Load", linkageName: "(*sync/atomic.Uint32).Load", scope: !1813, file: !1813, line: 147, type: !1841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1843)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!1816}
!1843 = !{!1844}
!1844 = !DILocalVariable(name: "x", arg: 1, scope: !1840, file: !1813, line: 147, type: !1816)
!1845 = !DILocation(line: 147, column: 18, scope: !1840)
!1846 = !DILocation(line: 147, column: 53, scope: !1840)
!1847 = !DILocation(line: 147, column: 55, scope: !1840)
!1848 = !DILocation(line: 147, column: 51, scope: !1840)
!1849 = !DILocation(line: 147, column: 34, scope: !1840)
!1850 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Store", linkageName: "(*sync/atomic.Uint32).Store", scope: !1813, file: !1813, line: 150, type: !1814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1851)
!1851 = !{!1852, !1853}
!1852 = !DILocalVariable(name: "x", arg: 1, scope: !1850, file: !1813, line: 150, type: !1816)
!1853 = !DILocalVariable(name: "val", arg: 2, scope: !1850, file: !1813, line: 150, type: !104)
!1854 = !DILocation(line: 150, column: 18, scope: !1850)
!1855 = !DILocation(line: 150, column: 51, scope: !1850)
!1856 = !DILocation(line: 150, column: 53, scope: !1850)
!1857 = !DILocation(line: 150, column: 56, scope: !1850)
!1858 = !DILocation(line: 150, column: 49, scope: !1850)
!1859 = !DILocation(line: 150, column: 62, scope: !1850)
!1860 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Swap", linkageName: "(*sync/atomic.Uint32).Swap", scope: !1813, file: !1813, line: 153, type: !1814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1861)
!1861 = !{!1862, !1863}
!1862 = !DILocalVariable(name: "x", arg: 1, scope: !1860, file: !1813, line: 153, type: !1816)
!1863 = !DILocalVariable(name: "new", arg: 2, scope: !1860, file: !1813, line: 153, type: !104)
!1864 = !DILocation(line: 153, column: 18, scope: !1860)
!1865 = !DILocation(line: 153, column: 69, scope: !1860)
!1866 = !DILocation(line: 153, column: 71, scope: !1860)
!1867 = !DILocation(line: 153, column: 74, scope: !1860)
!1868 = !DILocation(line: 153, column: 67, scope: !1860)
!1869 = !DILocation(line: 153, column: 50, scope: !1860)
!1870 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wait", linkageName: "(*internal/futex.Futex).Wait", scope: !1871, file: !1871, line: 25, type: !1872, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !1875)
!1871 = !DIFile(filename: "futex.go", directory: "/usr/local/lib/tinygo/src/internal/futex")
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!1874, !104}
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64, dwarfAddressSpace: 0)
!1875 = !{!1876, !1877}
!1876 = !DILocalVariable(name: "f", arg: 1, scope: !1870, file: !1871, line: 25, type: !1874)
!1877 = !DILocalVariable(name: "cmp", arg: 2, scope: !1870, file: !1871, line: 25, type: !104)
!1878 = !DILocation(line: 25, column: 17, scope: !1870)
!1879 = !DILocation(line: 26, column: 46, scope: !1870)
!1880 = !DILocation(line: 26, column: 48, scope: !1870)
!1881 = !DILocation(line: 26, column: 58, scope: !1870)
!1882 = !DILocation(line: 26, column: 19, scope: !1870)
!1883 = !DILocation(line: 44, column: 2, scope: !1870)
!1884 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wake", linkageName: "(*internal/futex.Futex).Wake", scope: !1871, file: !1871, line: 53, type: !1885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !1887)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!1874}
!1887 = !{!1888}
!1888 = !DILocalVariable(name: "f", arg: 1, scope: !1884, file: !1871, line: 53, type: !1874)
!1889 = !DILocation(line: 53, column: 17, scope: !1884)
!1890 = !DILocation(line: 54, column: 46, scope: !1884)
!1891 = !DILocation(line: 54, column: 48, scope: !1884)
!1892 = !DILocation(line: 54, column: 19, scope: !1884)
!1893 = !DILocation(line: 55, column: 2, scope: !1884)
!1894 = distinct !DISubprogram(name: "(*internal/futex.Futex).WakeAll", linkageName: "(*internal/futex.Futex).WakeAll", scope: !1871, file: !1871, line: 58, type: !1885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !1895)
!1895 = !{!1896}
!1896 = !DILocalVariable(name: "f", arg: 1, scope: !1894, file: !1871, line: 58, type: !1874)
!1897 = !DILocation(line: 58, column: 17, scope: !1894)
!1898 = !DILocation(line: 59, column: 50, scope: !1894)
!1899 = !DILocation(line: 59, column: 52, scope: !1894)
!1900 = !DILocation(line: 59, column: 23, scope: !1894)
!1901 = !DILocation(line: 60, column: 2, scope: !1894)
!1902 = distinct !DISubprogram(name: "(internal/gclayout.Layout).AsPtr", linkageName: "(internal/gclayout.Layout).AsPtr", scope: !1903, file: !1903, line: 26, type: !1904, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1021, retainedNodes: !1907)
!1903 = !DIFile(filename: "gclayout.go", directory: "/usr/local/lib/tinygo/src/internal/gclayout")
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!1906}
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/gclayout.Layout", baseType: !49)
!1907 = !{!1908}
!1908 = !DILocalVariable(name: "l", arg: 1, scope: !1902, file: !1903, line: 26, type: !1906)
!1909 = !DILocation(line: 26, column: 17, scope: !1902)
!1910 = !DILocation(line: 26, column: 64, scope: !1902)
!1911 = !DILocation(line: 26, column: 63, scope: !1902)
!1912 = !DILocation(line: 26, column: 42, scope: !1902)
!1913 = distinct !DISubprogram(name: "internal/itoa.Itoa", linkageName: "internal/itoa.Itoa", scope: !9, file: !9, line: 10, type: !1914, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !1917)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!1916}
!1916 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!1917 = !{!1918}
!1918 = !DILocalVariable(name: "val", arg: 1, scope: !1913, file: !9, line: 10, type: !1916)
!1919 = !DILocation(line: 10, column: 6, scope: !1913)
!1920 = !DILocation(line: 11, column: 5, scope: !1913)
!1921 = !DILocation(line: 11, column: 9, scope: !1913)
!1922 = !DILocation(line: 0, scope: !1913)
!1923 = !DILocation(line: 12, column: 28, scope: !1913)
!1924 = !DILocation(line: 12, column: 27, scope: !1913)
!1925 = !DILocation(line: 12, column: 21, scope: !1913)
!1926 = !DILocation(line: 12, column: 14, scope: !1913)
!1927 = !DILocation(line: 12, column: 3, scope: !1913)
!1928 = !DILocation(line: 14, column: 20, scope: !1913)
!1929 = !DILocation(line: 14, column: 14, scope: !1913)
!1930 = !DILocation(line: 14, column: 2, scope: !1913)
!1931 = distinct !DISubprogram(name: "internal/itoa.Uitoa", linkageName: "internal/itoa.Uitoa", scope: !9, file: !9, line: 18, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !1932)
!1932 = !{!1933, !1934, !1935}
!1933 = !DILocalVariable(name: "val", arg: 1, scope: !1931, file: !9, line: 18, type: !1738)
!1934 = !DILocalVariable(name: "i", scope: !1931, file: !9, line: 23, type: !1916)
!1935 = !DILocalVariable(name: "q", scope: !1931, file: !9, line: 25, type: !1738)
!1936 = !DILocation(line: 18, column: 6, scope: !1931)
!1937 = !DILocation(line: 19, column: 5, scope: !1931)
!1938 = !DILocation(line: 19, column: 9, scope: !1931)
!1939 = !DILocation(line: 0, scope: !1931)
!1940 = !DILocation(line: 20, column: 3, scope: !1931)
!1941 = !DILocation(line: 22, column: 6, scope: !1931)
!1942 = !DILocation(line: 23, column: 2, scope: !1931)
!1943 = !DILocation(line: 18, column: 12, scope: !1931)
!1944 = !DILocation(line: 24, column: 6, scope: !1931)
!1945 = !DILocation(line: 24, column: 10, scope: !1931)
!1946 = !DILocation(line: 25, column: 8, scope: !1931)
!1947 = !DILocation(line: 25, column: 12, scope: !1931)
!1948 = !DILocation(line: 25, column: 3, scope: !1931)
!1949 = !DILocation(line: 26, column: 7, scope: !1931)
!1950 = !DILocation(line: 26, column: 23, scope: !1931)
!1951 = !DILocation(line: 26, column: 21, scope: !1931)
!1952 = !DILocation(line: 26, column: 29, scope: !1931)
!1953 = !DILocation(line: 26, column: 30, scope: !1931)
!1954 = !DILocation(line: 26, column: 27, scope: !1931)
!1955 = !DILocation(line: 26, column: 16, scope: !1931)
!1956 = !DILocation(line: 26, column: 6, scope: !1931)
!1957 = !DILocation(line: 27, column: 3, scope: !1931)
!1958 = !DILocation(line: 28, column: 9, scope: !1931)
!1959 = !DILocation(line: 28, column: 3, scope: !1931)
!1960 = !DILocation(line: 31, column: 6, scope: !1931)
!1961 = !DILocation(line: 31, column: 22, scope: !1931)
!1962 = !DILocation(line: 31, column: 20, scope: !1931)
!1963 = !DILocation(line: 31, column: 15, scope: !1931)
!1964 = !DILocation(line: 31, column: 5, scope: !1931)
!1965 = !DILocation(line: 32, column: 20, scope: !1931)
!1966 = !DILocation(line: 32, column: 19, scope: !1931)
!1967 = !DILocation(line: 32, column: 15, scope: !1931)
!1968 = !DILocation(line: 32, column: 2, scope: !1931)
!1969 = distinct !DISubprogram(name: "unicode/utf8.DecodeRuneInString", linkageName: "unicode/utf8.DecodeRuneInString", scope: !17, file: !17, line: 219, type: !1970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!44}
!1972 = !{!1973, !1974, !1976}
!1973 = !DILocalVariable(name: "s", arg: 1, scope: !1969, file: !17, line: 219, type: !44)
!1974 = !DILocalVariable(name: "r", scope: !1969, file: !17, line: 219, type: !1975)
!1975 = !DIBasicType(name: "rune", size: 32, encoding: DW_ATE_signed)
!1976 = !DILocalVariable(name: "size", scope: !1969, file: !17, line: 219, type: !1916)
!1977 = !DILocation(line: 219, column: 6, scope: !1969)
!1978 = !DILocation(line: 223, column: 5, scope: !1969)
!1979 = !DILocation(line: 223, column: 7, scope: !1969)
!1980 = !DILocation(line: 0, scope: !1969)
!1981 = !DILocation(line: 223, column: 16, scope: !1969)
!1982 = !DILocation(line: 223, column: 17, scope: !1969)
!1983 = !DILocation(line: 223, column: 21, scope: !1969)
!1984 = !DILocation(line: 224, column: 15, scope: !1969)
!1985 = !DILocation(line: 224, column: 16, scope: !1969)
!1986 = !DILocation(line: 224, column: 14, scope: !1969)
!1987 = !DILocation(line: 224, column: 3, scope: !1969)
!1988 = !DILocation(line: 226, column: 36, scope: !1969)
!1989 = !DILocation(line: 226, column: 35, scope: !1969)
!1990 = !DILocation(line: 226, column: 3, scope: !1969)
!1991 = !DILocation(line: 226, column: 6, scope: !1969)
!1992 = !DILocation(line: 228, column: 2, scope: !1969)
!1993 = distinct !DISubprogram(name: "unicode/utf8.decodeRuneInStringSlow", linkageName: "unicode/utf8.decodeRuneInStringSlow", scope: !17, file: !17, line: 231, type: !1970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !1994)
!1994 = !{!1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004}
!1995 = !DILocalVariable(name: "s", arg: 1, scope: !1993, file: !17, line: 231, type: !44)
!1996 = !DILocalVariable(name: "n", scope: !1993, file: !17, line: 232, type: !1916)
!1997 = !DILocalVariable(name: "s0", scope: !1993, file: !17, line: 236, type: !536)
!1998 = !DILocalVariable(name: "x", scope: !1993, file: !17, line: 237, type: !4)
!1999 = !DILocalVariable(name: "mask", scope: !1993, file: !17, line: 242, type: !1975)
!2000 = !DILocalVariable(name: "sz", scope: !1993, file: !17, line: 245, type: !1916)
!2001 = !DILocalVariable(name: "accept", scope: !1993, file: !17, line: 246, type: !24)
!2002 = !DILocalVariable(name: "s1", scope: !1993, file: !17, line: 250, type: !536)
!2003 = !DILocalVariable(name: "s2", scope: !1993, file: !17, line: 257, type: !536)
!2004 = !DILocalVariable(name: "s3", scope: !1993, file: !17, line: 264, type: !536)
!2005 = !DILocation(line: 231, column: 6, scope: !1993)
!2006 = !DILocation(line: 232, column: 11, scope: !1993)
!2007 = !DILocation(line: 232, column: 10, scope: !1993)
!2008 = !DILocation(line: 232, column: 2, scope: !1993)
!2009 = !DILocation(line: 233, column: 5, scope: !1993)
!2010 = !DILocation(line: 233, column: 7, scope: !1993)
!2011 = !DILocation(line: 0, scope: !1993)
!2012 = !DILocation(line: 234, column: 3, scope: !1993)
!2013 = !DILocation(line: 236, column: 8, scope: !1993)
!2014 = !DILocation(line: 236, column: 9, scope: !1993)
!2015 = !DILocation(line: 236, column: 2, scope: !1993)
!2016 = !DILocation(line: 237, column: 13, scope: !1993)
!2017 = !DILocation(line: 237, column: 12, scope: !1993)
!2018 = !DILocation(line: 237, column: 2, scope: !1993)
!2019 = !DILocation(line: 238, column: 5, scope: !1993)
!2020 = !DILocation(line: 238, column: 7, scope: !1993)
!2021 = !DILocation(line: 242, column: 16, scope: !1993)
!2022 = !DILocation(line: 242, column: 15, scope: !1993)
!2023 = !DILocation(line: 242, column: 19, scope: !1993)
!2024 = !DILocation(line: 242, column: 25, scope: !1993)
!2025 = !DILocation(line: 242, column: 3, scope: !1993)
!2026 = !DILocation(line: 243, column: 15, scope: !1993)
!2027 = !DILocation(line: 243, column: 16, scope: !1993)
!2028 = !DILocation(line: 243, column: 14, scope: !1993)
!2029 = !DILocation(line: 243, column: 22, scope: !1993)
!2030 = !DILocation(line: 243, column: 20, scope: !1993)
!2031 = !DILocation(line: 243, column: 39, scope: !1993)
!2032 = !DILocation(line: 243, column: 38, scope: !1993)
!2033 = !DILocation(line: 243, column: 27, scope: !1993)
!2034 = !DILocation(line: 243, column: 3, scope: !1993)
!2035 = !DILocation(line: 245, column: 12, scope: !1993)
!2036 = !DILocation(line: 245, column: 14, scope: !1993)
!2037 = !DILocation(line: 245, column: 11, scope: !1993)
!2038 = !DILocation(line: 245, column: 2, scope: !1993)
!2039 = !DILocation(line: 246, column: 25, scope: !1993)
!2040 = !DILocation(line: 246, column: 26, scope: !1993)
!2041 = !DILocation(line: 246, column: 24, scope: !1993)
!2042 = !DILocation(line: 246, column: 2, scope: !1993)
!2043 = !DILocation(line: 247, column: 5, scope: !1993)
!2044 = !DILocation(line: 247, column: 9, scope: !1993)
!2045 = !DILocation(line: 247, column: 7, scope: !1993)
!2046 = !DILocation(line: 248, column: 3, scope: !1993)
!2047 = !DILocation(line: 250, column: 8, scope: !1993)
!2048 = !DILocation(line: 250, column: 9, scope: !1993)
!2049 = !DILocation(line: 250, column: 2, scope: !1993)
!2050 = !DILocation(line: 251, column: 5, scope: !1993)
!2051 = !DILocation(line: 251, column: 17, scope: !1993)
!2052 = !DILocation(line: 251, column: 8, scope: !1993)
!2053 = !DILocation(line: 252, column: 3, scope: !1993)
!2054 = !DILocation(line: 251, column: 30, scope: !1993)
!2055 = !DILocation(line: 251, column: 35, scope: !1993)
!2056 = !DILocation(line: 251, column: 33, scope: !1993)
!2057 = !DILocation(line: 254, column: 5, scope: !1993)
!2058 = !DILocation(line: 254, column: 8, scope: !1993)
!2059 = !DILocation(line: 255, column: 15, scope: !1993)
!2060 = !DILocation(line: 255, column: 17, scope: !1993)
!2061 = !DILocation(line: 255, column: 14, scope: !1993)
!2062 = !DILocation(line: 255, column: 24, scope: !1993)
!2063 = !DILocation(line: 255, column: 35, scope: !1993)
!2064 = !DILocation(line: 255, column: 37, scope: !1993)
!2065 = !DILocation(line: 255, column: 34, scope: !1993)
!2066 = !DILocation(line: 255, column: 28, scope: !1993)
!2067 = !DILocation(line: 255, column: 3, scope: !1993)
!2068 = !DILocation(line: 257, column: 8, scope: !1993)
!2069 = !DILocation(line: 257, column: 9, scope: !1993)
!2070 = !DILocation(line: 257, column: 2, scope: !1993)
!2071 = !DILocation(line: 258, column: 5, scope: !1993)
!2072 = !DILocation(line: 258, column: 8, scope: !1993)
!2073 = !DILocation(line: 259, column: 3, scope: !1993)
!2074 = !DILocation(line: 258, column: 25, scope: !1993)
!2075 = !DILocation(line: 258, column: 23, scope: !1993)
!2076 = !DILocation(line: 261, column: 5, scope: !1993)
!2077 = !DILocation(line: 261, column: 8, scope: !1993)
!2078 = !DILocation(line: 262, column: 15, scope: !1993)
!2079 = !DILocation(line: 262, column: 17, scope: !1993)
!2080 = !DILocation(line: 262, column: 14, scope: !1993)
!2081 = !DILocation(line: 262, column: 24, scope: !1993)
!2082 = !DILocation(line: 262, column: 36, scope: !1993)
!2083 = !DILocation(line: 262, column: 38, scope: !1993)
!2084 = !DILocation(line: 262, column: 35, scope: !1993)
!2085 = !DILocation(line: 262, column: 45, scope: !1993)
!2086 = !DILocation(line: 262, column: 29, scope: !1993)
!2087 = !DILocation(line: 262, column: 56, scope: !1993)
!2088 = !DILocation(line: 262, column: 58, scope: !1993)
!2089 = !DILocation(line: 262, column: 55, scope: !1993)
!2090 = !DILocation(line: 262, column: 49, scope: !1993)
!2091 = !DILocation(line: 262, column: 3, scope: !1993)
!2092 = !DILocation(line: 264, column: 8, scope: !1993)
!2093 = !DILocation(line: 264, column: 9, scope: !1993)
!2094 = !DILocation(line: 264, column: 2, scope: !1993)
!2095 = !DILocation(line: 265, column: 5, scope: !1993)
!2096 = !DILocation(line: 265, column: 8, scope: !1993)
!2097 = !DILocation(line: 266, column: 3, scope: !1993)
!2098 = !DILocation(line: 265, column: 25, scope: !1993)
!2099 = !DILocation(line: 265, column: 23, scope: !1993)
!2100 = !DILocation(line: 268, column: 14, scope: !1993)
!2101 = !DILocation(line: 268, column: 16, scope: !1993)
!2102 = !DILocation(line: 268, column: 13, scope: !1993)
!2103 = !DILocation(line: 268, column: 23, scope: !1993)
!2104 = !DILocation(line: 268, column: 35, scope: !1993)
!2105 = !DILocation(line: 268, column: 37, scope: !1993)
!2106 = !DILocation(line: 268, column: 34, scope: !1993)
!2107 = !DILocation(line: 268, column: 44, scope: !1993)
!2108 = !DILocation(line: 268, column: 28, scope: !1993)
!2109 = !DILocation(line: 268, column: 56, scope: !1993)
!2110 = !DILocation(line: 268, column: 58, scope: !1993)
!2111 = !DILocation(line: 268, column: 55, scope: !1993)
!2112 = !DILocation(line: 268, column: 65, scope: !1993)
!2113 = !DILocation(line: 268, column: 49, scope: !1993)
!2114 = !DILocation(line: 268, column: 76, scope: !1993)
!2115 = !DILocation(line: 268, column: 78, scope: !1993)
!2116 = !DILocation(line: 268, column: 75, scope: !1993)
!2117 = !DILocation(line: 268, column: 69, scope: !1993)
!2118 = !DILocation(line: 268, column: 2, scope: !1993)
!2119 = distinct !DISubprogram(name: "unicode/utf8.EncodeRune", linkageName: "unicode/utf8.EncodeRune", scope: !17, file: !17, line: 368, type: !2120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2126)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!2122, !1975}
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]byte", size: 192, align: 64, elements: !2123)
!2123 = !{!2124, !48, !676}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !2125, size: 64, align: 64)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64, dwarfAddressSpace: 0)
!2126 = !{!2127, !2128}
!2127 = !DILocalVariable(name: "p", arg: 1, scope: !2119, file: !17, line: 368, type: !2122)
!2128 = !DILocalVariable(name: "r", arg: 2, scope: !2119, file: !17, line: 368, type: !1975)
!2129 = !DILocation(line: 368, column: 6, scope: !2119)
!2130 = !DILocation(line: 370, column: 12, scope: !2119)
!2131 = !DILocation(line: 370, column: 15, scope: !2119)
!2132 = !DILocation(line: 0, scope: !2119)
!2133 = !DILocation(line: 371, column: 3, scope: !2119)
!2134 = !DILocation(line: 371, column: 15, scope: !2119)
!2135 = !DILocation(line: 371, column: 14, scope: !2119)
!2136 = !DILocation(line: 371, column: 4, scope: !2119)
!2137 = !DILocation(line: 372, column: 3, scope: !2119)
!2138 = !DILocation(line: 374, column: 28, scope: !2119)
!2139 = !DILocation(line: 374, column: 31, scope: !2119)
!2140 = !DILocation(line: 374, column: 27, scope: !2119)
!2141 = !DILocation(line: 374, column: 2, scope: !2119)
!2142 = distinct !DISubprogram(name: "unicode/utf8.encodeRuneNonASCII", linkageName: "unicode/utf8.encodeRuneNonASCII", scope: !17, file: !17, line: 377, type: !2120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2143)
!2143 = !{!2144, !2145, !2146}
!2144 = !DILocalVariable(name: "p", arg: 1, scope: !2142, file: !17, line: 377, type: !2122)
!2145 = !DILocalVariable(name: "r", arg: 2, scope: !2142, file: !17, line: 377, type: !1975)
!2146 = !DILocalVariable(name: "i", scope: !2142, file: !17, line: 379, type: !104)
!2147 = !DILocation(line: 377, column: 6, scope: !2142)
!2148 = !DILocation(line: 379, column: 21, scope: !2142)
!2149 = !DILocation(line: 379, column: 9, scope: !2142)
!2150 = !DILocation(line: 380, column: 7, scope: !2142)
!2151 = !DILocation(line: 380, column: 9, scope: !2142)
!2152 = !DILocation(line: 0, scope: !2142)
!2153 = !DILocation(line: 381, column: 7, scope: !2142)
!2154 = !DILocation(line: 381, column: 8, scope: !2142)
!2155 = !DILocation(line: 382, column: 3, scope: !2142)
!2156 = !DILocation(line: 382, column: 20, scope: !2142)
!2157 = !DILocation(line: 382, column: 21, scope: !2142)
!2158 = !DILocation(line: 382, column: 19, scope: !2142)
!2159 = !DILocation(line: 382, column: 13, scope: !2142)
!2160 = !DILocation(line: 382, column: 4, scope: !2142)
!2161 = !DILocation(line: 383, column: 3, scope: !2142)
!2162 = !DILocation(line: 383, column: 20, scope: !2142)
!2163 = !DILocation(line: 383, column: 19, scope: !2142)
!2164 = !DILocation(line: 383, column: 22, scope: !2142)
!2165 = !DILocation(line: 383, column: 13, scope: !2142)
!2166 = !DILocation(line: 383, column: 4, scope: !2142)
!2167 = !DILocation(line: 384, column: 3, scope: !2142)
!2168 = !DILocation(line: 385, column: 7, scope: !2142)
!2169 = !DILocation(line: 385, column: 9, scope: !2142)
!2170 = !DILocation(line: 386, column: 7, scope: !2142)
!2171 = !DILocation(line: 386, column: 8, scope: !2142)
!2172 = !DILocation(line: 387, column: 3, scope: !2142)
!2173 = !DILocation(line: 387, column: 20, scope: !2142)
!2174 = !DILocation(line: 387, column: 21, scope: !2142)
!2175 = !DILocation(line: 387, column: 19, scope: !2142)
!2176 = !DILocation(line: 387, column: 13, scope: !2142)
!2177 = !DILocation(line: 387, column: 4, scope: !2142)
!2178 = !DILocation(line: 388, column: 3, scope: !2142)
!2179 = !DILocation(line: 388, column: 20, scope: !2142)
!2180 = !DILocation(line: 388, column: 21, scope: !2142)
!2181 = !DILocation(line: 388, column: 19, scope: !2142)
!2182 = !DILocation(line: 388, column: 25, scope: !2142)
!2183 = !DILocation(line: 388, column: 13, scope: !2142)
!2184 = !DILocation(line: 388, column: 4, scope: !2142)
!2185 = !DILocation(line: 389, column: 3, scope: !2142)
!2186 = !DILocation(line: 389, column: 20, scope: !2142)
!2187 = !DILocation(line: 389, column: 19, scope: !2142)
!2188 = !DILocation(line: 389, column: 22, scope: !2142)
!2189 = !DILocation(line: 389, column: 13, scope: !2142)
!2190 = !DILocation(line: 389, column: 4, scope: !2142)
!2191 = !DILocation(line: 390, column: 3, scope: !2142)
!2192 = !DILocation(line: 385, column: 40, scope: !2142)
!2193 = !DILocation(line: 385, column: 38, scope: !2142)
!2194 = !DILocation(line: 385, column: 45, scope: !2142)
!2195 = !DILocation(line: 385, column: 47, scope: !2142)
!2196 = !DILocation(line: 385, column: 42, scope: !2142)
!2197 = !DILocation(line: 391, column: 7, scope: !2142)
!2198 = !DILocation(line: 391, column: 9, scope: !2142)
!2199 = !DILocation(line: 391, column: 23, scope: !2142)
!2200 = !DILocation(line: 391, column: 25, scope: !2142)
!2201 = !DILocation(line: 391, column: 20, scope: !2142)
!2202 = !DILocation(line: 392, column: 7, scope: !2142)
!2203 = !DILocation(line: 392, column: 8, scope: !2142)
!2204 = !DILocation(line: 393, column: 3, scope: !2142)
!2205 = !DILocation(line: 393, column: 20, scope: !2142)
!2206 = !DILocation(line: 393, column: 21, scope: !2142)
!2207 = !DILocation(line: 393, column: 19, scope: !2142)
!2208 = !DILocation(line: 393, column: 13, scope: !2142)
!2209 = !DILocation(line: 393, column: 4, scope: !2142)
!2210 = !DILocation(line: 394, column: 3, scope: !2142)
!2211 = !DILocation(line: 394, column: 20, scope: !2142)
!2212 = !DILocation(line: 394, column: 21, scope: !2142)
!2213 = !DILocation(line: 394, column: 19, scope: !2142)
!2214 = !DILocation(line: 394, column: 26, scope: !2142)
!2215 = !DILocation(line: 394, column: 13, scope: !2142)
!2216 = !DILocation(line: 394, column: 4, scope: !2142)
!2217 = !DILocation(line: 395, column: 3, scope: !2142)
!2218 = !DILocation(line: 395, column: 20, scope: !2142)
!2219 = !DILocation(line: 395, column: 21, scope: !2142)
!2220 = !DILocation(line: 395, column: 19, scope: !2142)
!2221 = !DILocation(line: 395, column: 25, scope: !2142)
!2222 = !DILocation(line: 395, column: 13, scope: !2142)
!2223 = !DILocation(line: 395, column: 4, scope: !2142)
!2224 = !DILocation(line: 396, column: 3, scope: !2142)
!2225 = !DILocation(line: 396, column: 20, scope: !2142)
!2226 = !DILocation(line: 396, column: 19, scope: !2142)
!2227 = !DILocation(line: 396, column: 22, scope: !2142)
!2228 = !DILocation(line: 396, column: 13, scope: !2142)
!2229 = !DILocation(line: 396, column: 4, scope: !2142)
!2230 = !DILocation(line: 397, column: 3, scope: !2142)
!2231 = !DILocation(line: 399, column: 7, scope: !2142)
!2232 = !DILocation(line: 399, column: 8, scope: !2142)
!2233 = !DILocation(line: 400, column: 3, scope: !2142)
!2234 = !DILocation(line: 400, column: 4, scope: !2142)
!2235 = !DILocation(line: 401, column: 3, scope: !2142)
!2236 = !DILocation(line: 401, column: 4, scope: !2142)
!2237 = !DILocation(line: 402, column: 3, scope: !2142)
!2238 = !DILocation(line: 402, column: 4, scope: !2142)
!2239 = !DILocation(line: 403, column: 3, scope: !2142)
!2240 = distinct !DISubprogram(name: "unicode/utf8.ValidRune", linkageName: "unicode/utf8.ValidRune", scope: !17, file: !17, line: 577, type: !2241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2243)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!1975}
!2243 = !{!2244}
!2244 = !DILocalVariable(name: "r", arg: 1, scope: !2240, file: !17, line: 577, type: !1975)
!2245 = !DILocation(line: 577, column: 6, scope: !2240)
!2246 = !DILocation(line: 579, column: 12, scope: !2240)
!2247 = !DILocation(line: 579, column: 9, scope: !2240)
!2248 = !DILocation(line: 0, scope: !2240)
!2249 = !DILocation(line: 579, column: 17, scope: !2240)
!2250 = !DILocation(line: 579, column: 19, scope: !2240)
!2251 = !DILocation(line: 579, column: 14, scope: !2240)
!2252 = !DILocation(line: 580, column: 3, scope: !2240)
!2253 = !DILocation(line: 581, column: 22, scope: !2240)
!2254 = !DILocation(line: 581, column: 20, scope: !2240)
!2255 = !DILocation(line: 581, column: 27, scope: !2240)
!2256 = !DILocation(line: 581, column: 29, scope: !2240)
!2257 = !DILocation(line: 581, column: 24, scope: !2240)
!2258 = !DILocation(line: 582, column: 3, scope: !2240)
!2259 = !DILocation(line: 584, column: 2, scope: !2240)
!2260 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).Kind", linkageName: "(*internal/reflectlite.RawType).Kind", scope: !33, file: !33, line: 380, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2263)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!1049}
!2263 = !{!2264, !2265}
!2264 = !DILocalVariable(name: "t", arg: 1, scope: !2260, file: !33, line: 380, type: !1049)
!2265 = !DILocalVariable(name: "tag", scope: !2260, file: !33, line: 385, type: !49)
!2266 = !DILocation(line: 380, column: 19, scope: !2260)
!2267 = !DILocation(line: 381, column: 5, scope: !2260)
!2268 = !DILocation(line: 381, column: 7, scope: !2260)
!2269 = !DILocation(line: 0, scope: !2260)
!2270 = !DILocation(line: 382, column: 3, scope: !2260)
!2271 = !DILocation(line: 385, column: 12, scope: !2260)
!2272 = !DILocation(line: 385, column: 20, scope: !2260)
!2273 = !DILocation(line: 385, column: 5, scope: !2260)
!2274 = !DILocation(line: 385, column: 24, scope: !2260)
!2275 = !DILocation(line: 385, column: 28, scope: !2260)
!2276 = !DILocation(line: 386, column: 3, scope: !2260)
!2277 = !DILocation(line: 389, column: 14, scope: !2260)
!2278 = !DILocation(line: 389, column: 16, scope: !2260)
!2279 = !DILocation(line: 389, column: 21, scope: !2260)
!2280 = !DILocation(line: 389, column: 2, scope: !2260)
!2281 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).elem", linkageName: "(*internal/reflectlite.RawType).elem", scope: !33, file: !33, line: 410, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2282)
!2282 = !{!2283, !2284, !2285, !2286}
!2283 = !DILocalVariable(name: "t", arg: 1, scope: !2281, file: !33, line: 410, type: !1049)
!2284 = !DILocalVariable(name: "tag", scope: !2281, file: !33, line: 411, type: !49)
!2285 = !DILocalVariable(name: "underlying", scope: !2281, file: !33, line: 415, type: !1049)
!2286 = !DILocalVariable(name: "errTypeElem", scope: !2281, file: !33, line: 393, type: !39)
!2287 = !DILocation(line: 410, column: 19, scope: !2281)
!2288 = !DILocation(line: 411, column: 12, scope: !2281)
!2289 = !DILocation(line: 411, column: 20, scope: !2281)
!2290 = !DILocation(line: 411, column: 5, scope: !2281)
!2291 = !DILocation(line: 411, column: 24, scope: !2281)
!2292 = !DILocation(line: 411, column: 28, scope: !2281)
!2293 = !DILocation(line: 0, scope: !2281)
!2294 = !DILocation(line: 412, column: 47, scope: !2281)
!2295 = !DILocation(line: 412, column: 31, scope: !2281)
!2296 = !DILocation(line: 412, column: 3, scope: !2281)
!2297 = !DILocation(line: 415, column: 16, scope: !2281)
!2298 = !DILocation(line: 415, column: 28, scope: !2281)
!2299 = !DILocation(line: 415, column: 2, scope: !2281)
!2300 = !DILocation(line: 416, column: 9, scope: !2281)
!2301 = !DILocation(line: 416, column: 24, scope: !2281)
!2302 = !DILocation(line: 417, column: 7, scope: !2281)
!2303 = !DILocation(line: 418, column: 36, scope: !2281)
!2304 = !DILocation(line: 418, column: 49, scope: !2281)
!2305 = !DILocation(line: 418, column: 3, scope: !2281)
!2306 = !DILocation(line: 419, column: 7, scope: !2281)
!2307 = !DILocation(line: 420, column: 37, scope: !2281)
!2308 = !DILocation(line: 420, column: 50, scope: !2281)
!2309 = !DILocation(line: 420, column: 3, scope: !2281)
!2310 = !DILocation(line: 419, column: 13, scope: !2281)
!2311 = !DILocation(line: 419, column: 20, scope: !2281)
!2312 = !DILocation(line: 419, column: 27, scope: !2281)
!2313 = !DILocation(line: 422, column: 9, scope: !2281)
!2314 = !DILocation(line: 422, column: 8, scope: !2281)
!2315 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).Len", linkageName: "(*internal/reflectlite.RawType).Len", scope: !33, file: !33, line: 620, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2316)
!2316 = !{!2317, !2318}
!2317 = !DILocalVariable(name: "t", arg: 1, scope: !2315, file: !33, line: 620, type: !1049)
!2318 = !DILocalVariable(name: "errTypeLen", scope: !2315, file: !33, line: 397, type: !39)
!2319 = !DILocation(line: 620, column: 19, scope: !2315)
!2320 = !DILocation(line: 621, column: 5, scope: !2315)
!2321 = !DILocation(line: 621, column: 11, scope: !2315)
!2322 = !DILocation(line: 621, column: 14, scope: !2315)
!2323 = !DILocation(line: 0, scope: !2315)
!2324 = !DILocation(line: 622, column: 9, scope: !2315)
!2325 = !DILocation(line: 622, column: 8, scope: !2315)
!2326 = !DILocation(line: 625, column: 41, scope: !2315)
!2327 = !DILocation(line: 625, column: 53, scope: !2315)
!2328 = !DILocation(line: 625, column: 58, scope: !2315)
!2329 = !DILocation(line: 625, column: 2, scope: !2315)
!2330 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).underlying", linkageName: "(*internal/reflectlite.RawType).underlying", scope: !33, file: !33, line: 263, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2331)
!2331 = !{!2332}
!2332 = !DILocalVariable(name: "t", arg: 1, scope: !2330, file: !33, line: 263, type: !1049)
!2333 = !DILocation(line: 263, column: 19, scope: !2330)
!2334 = !DILocation(line: 264, column: 5, scope: !2330)
!2335 = !DILocation(line: 264, column: 14, scope: !2330)
!2336 = !DILocation(line: 0, scope: !2330)
!2337 = !DILocation(line: 265, column: 37, scope: !2330)
!2338 = !DILocation(line: 265, column: 41, scope: !2330)
!2339 = !DILocation(line: 265, column: 3, scope: !2330)
!2340 = !DILocation(line: 267, column: 9, scope: !2330)
!2341 = !DILocation(line: 267, column: 2, scope: !2330)
!2342 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).isNamed", linkageName: "(*internal/reflectlite.RawType).isNamed", scope: !33, file: !33, line: 274, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2343)
!2343 = !{!2344, !2345}
!2344 = !DILocalVariable(name: "t", arg: 1, scope: !2342, file: !33, line: 274, type: !1049)
!2345 = !DILocalVariable(name: "tag", scope: !2342, file: !33, line: 275, type: !49)
!2346 = !DILocation(line: 274, column: 19, scope: !2342)
!2347 = !DILocation(line: 275, column: 12, scope: !2342)
!2348 = !DILocation(line: 275, column: 20, scope: !2342)
!2349 = !DILocation(line: 275, column: 5, scope: !2342)
!2350 = !DILocation(line: 275, column: 24, scope: !2342)
!2351 = !DILocation(line: 275, column: 28, scope: !2342)
!2352 = !DILocation(line: 0, scope: !2342)
!2353 = !DILocation(line: 276, column: 3, scope: !2342)
!2354 = !DILocation(line: 278, column: 9, scope: !2342)
!2355 = !DILocation(line: 278, column: 11, scope: !2342)
!2356 = !DILocation(line: 278, column: 15, scope: !2342)
!2357 = !DILocation(line: 278, column: 26, scope: !2342)
!2358 = !DILocation(line: 278, column: 2, scope: !2342)
!2359 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).ptrtag", linkageName: "(*internal/reflectlite.RawType).ptrtag", scope: !33, file: !33, line: 270, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2360)
!2360 = !{!2361}
!2361 = !DILocalVariable(name: "t", arg: 1, scope: !2359, file: !33, line: 270, type: !1049)
!2362 = !DILocation(line: 270, column: 19, scope: !2359)
!2363 = !DILocation(line: 271, column: 32, scope: !2359)
!2364 = !DILocation(line: 271, column: 16, scope: !2359)
!2365 = !DILocation(line: 271, column: 36, scope: !2359)
!2366 = !DILocation(line: 271, column: 2, scope: !2359)
!2367 = distinct !DISubprogram(name: "(*internal/reflectlite.TypeError).Error", linkageName: "(*internal/reflectlite.TypeError).Error", scope: !33, file: !33, line: 1211, type: !2368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2370)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!39}
!2370 = !{!2371}
!2371 = !DILocalVariable(name: "e", arg: 1, scope: !2367, file: !33, line: 1211, type: !39)
!2372 = !DILocation(line: 1211, column: 21, scope: !2367)
!2373 = !DILocation(line: 1212, column: 44, scope: !2367)
!2374 = !DILocation(line: 1212, column: 46, scope: !2367)
!2375 = !DILocation(line: 1212, column: 42, scope: !2367)
!2376 = !DILocation(line: 1212, column: 53, scope: !2367)
!2377 = !DILocation(line: 1212, column: 2, scope: !2367)
!2378 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).ChanDir", linkageName: "(*internal/reflectlite.RawType).ChanDir", scope: !33, file: !33, line: 893, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2379)
!2379 = !{!2380, !2381, !2382}
!2380 = !DILocalVariable(name: "t", arg: 1, scope: !2378, file: !33, line: 893, type: !1049)
!2381 = !DILocalVariable(name: "errTypeChanDir", scope: !2378, file: !33, line: 399, type: !39)
!2382 = !DILocalVariable(name: "dir", scope: !2378, file: !33, line: 898, type: !1916)
!2383 = !DILocation(line: 893, column: 19, scope: !2378)
!2384 = !DILocation(line: 894, column: 5, scope: !2378)
!2385 = !DILocation(line: 894, column: 11, scope: !2378)
!2386 = !DILocation(line: 894, column: 14, scope: !2378)
!2387 = !DILocation(line: 0, scope: !2378)
!2388 = !DILocation(line: 895, column: 9, scope: !2378)
!2389 = !DILocation(line: 895, column: 8, scope: !2378)
!2390 = !DILocation(line: 898, column: 40, scope: !2378)
!2391 = !DILocation(line: 898, column: 44, scope: !2378)
!2392 = !DILocation(line: 898, column: 12, scope: !2378)
!2393 = !DILocation(line: 898, column: 2, scope: !2378)
!2394 = !DILocation(line: 901, column: 17, scope: !2378)
!2395 = !DILocation(line: 901, column: 2, scope: !2378)
!2396 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).NumField", linkageName: "(*internal/reflectlite.RawType).NumField", scope: !33, file: !33, line: 630, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2397)
!2397 = !{!2398, !2399}
!2398 = !DILocalVariable(name: "t", arg: 1, scope: !2396, file: !33, line: 630, type: !1049)
!2399 = !DILocalVariable(name: "errTypeNumField", scope: !2396, file: !33, line: 398, type: !39)
!2400 = !DILocation(line: 630, column: 19, scope: !2396)
!2401 = !DILocation(line: 631, column: 5, scope: !2396)
!2402 = !DILocation(line: 631, column: 11, scope: !2396)
!2403 = !DILocation(line: 631, column: 14, scope: !2396)
!2404 = !DILocation(line: 0, scope: !2396)
!2405 = !DILocation(line: 632, column: 9, scope: !2396)
!2406 = !DILocation(line: 632, column: 8, scope: !2396)
!2407 = !DILocation(line: 634, column: 42, scope: !2396)
!2408 = !DILocation(line: 634, column: 54, scope: !2396)
!2409 = !DILocation(line: 634, column: 59, scope: !2396)
!2410 = !DILocation(line: 634, column: 12, scope: !2396)
!2411 = !DILocation(line: 634, column: 2, scope: !2396)
!2412 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).String", linkageName: "(*internal/reflectlite.RawType).String", scope: !33, file: !33, line: 316, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2413)
!2413 = !{!2414, !2415, !2416, !2417, !2418, !2419, !2420}
!2414 = !DILocalVariable(name: "t", arg: 1, scope: !2412, file: !33, line: 316, type: !1049)
!2415 = !DILocalVariable(name: "s", scope: !2412, file: !33, line: 318, type: !44)
!2416 = !DILocalVariable(name: "elem", scope: !2412, file: !33, line: 326, type: !44)
!2417 = !DILocalVariable(name: "numField", scope: !2412, file: !33, line: 352, type: !1916)
!2418 = !DILocalVariable(name: "s", scope: !2412, file: !33, line: 356, type: !44)
!2419 = !DILocalVariable(name: "i", scope: !2412, file: !33, line: 357, type: !1916)
!2420 = !DILocalVariable(name: "f", scope: !2412, file: !33, line: 358, type: !2421)
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.rawStructField", baseType: !2422)
!2422 = !DICompositeType(tag: DW_TAG_structure_type, size: 576, align: 64, elements: !2423)
!2423 = !{!671, !2424, !2425, !2426, !2428, !2429}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "PkgPath", baseType: !44, size: 128, align: 64, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "Type", baseType: !1049, size: 64, align: 64, offset: 256)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "Tag", baseType: !2427, size: 128, align: 64, offset: 320)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.StructTag", baseType: !44)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "Offset", baseType: !49, size: 64, align: 64, offset: 448)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "Anonymous", baseType: !374, size: 8, align: 8, offset: 512)
!2430 = !DILocation(line: 316, column: 19, scope: !2412)
!2431 = !DILocation(line: 317, column: 5, scope: !2412)
!2432 = !DILocation(line: 317, column: 14, scope: !2412)
!2433 = !DILocation(line: 0, scope: !2412)
!2434 = !DILocation(line: 318, column: 8, scope: !2412)
!2435 = !DILocation(line: 318, column: 14, scope: !2412)
!2436 = !DILocation(line: 318, column: 3, scope: !2412)
!2437 = !DILocation(line: 319, column: 6, scope: !2412)
!2438 = !DILocation(line: 319, column: 7, scope: !2412)
!2439 = !DILocation(line: 319, column: 11, scope: !2412)
!2440 = !DILocation(line: 320, column: 11, scope: !2412)
!2441 = !DILocation(line: 320, column: 12, scope: !2412)
!2442 = !DILocation(line: 320, column: 4, scope: !2412)
!2443 = !DILocation(line: 322, column: 10, scope: !2412)
!2444 = !DILocation(line: 322, column: 3, scope: !2412)
!2445 = !DILocation(line: 324, column: 9, scope: !2412)
!2446 = !DILocation(line: 324, column: 15, scope: !2412)
!2447 = !DILocation(line: 325, column: 7, scope: !2412)
!2448 = !DILocation(line: 326, column: 11, scope: !2412)
!2449 = !DILocation(line: 326, column: 17, scope: !2412)
!2450 = !DILocation(line: 326, column: 26, scope: !2412)
!2451 = !DILocation(line: 326, column: 3, scope: !2412)
!2452 = !DILocation(line: 327, column: 10, scope: !2412)
!2453 = !DILocation(line: 327, column: 19, scope: !2412)
!2454 = !DILocation(line: 328, column: 8, scope: !2412)
!2455 = !DILocation(line: 329, column: 23, scope: !2412)
!2456 = !DILocation(line: 329, column: 21, scope: !2412)
!2457 = !DILocation(line: 329, column: 4, scope: !2412)
!2458 = !DILocation(line: 330, column: 8, scope: !2412)
!2459 = !DILocation(line: 331, column: 23, scope: !2412)
!2460 = !DILocation(line: 331, column: 21, scope: !2412)
!2461 = !DILocation(line: 331, column: 4, scope: !2412)
!2462 = !DILocation(line: 332, column: 8, scope: !2412)
!2463 = !DILocation(line: 333, column: 7, scope: !2412)
!2464 = !DILocation(line: 333, column: 11, scope: !2412)
!2465 = !DILocation(line: 333, column: 15, scope: !2412)
!2466 = !DILocation(line: 338, column: 23, scope: !2412)
!2467 = !DILocation(line: 338, column: 21, scope: !2412)
!2468 = !DILocation(line: 338, column: 28, scope: !2412)
!2469 = !DILocation(line: 338, column: 5, scope: !2412)
!2470 = !DILocation(line: 340, column: 21, scope: !2412)
!2471 = !DILocation(line: 340, column: 19, scope: !2412)
!2472 = !DILocation(line: 340, column: 4, scope: !2412)
!2473 = !DILocation(line: 377, column: 9, scope: !2412)
!2474 = !DILocation(line: 377, column: 15, scope: !2412)
!2475 = !DILocation(line: 377, column: 24, scope: !2412)
!2476 = !DILocation(line: 377, column: 2, scope: !2412)
!2477 = !DILocation(line: 343, column: 7, scope: !2412)
!2478 = !DILocation(line: 344, column: 16, scope: !2412)
!2479 = !DILocation(line: 344, column: 22, scope: !2412)
!2480 = !DILocation(line: 344, column: 31, scope: !2412)
!2481 = !DILocation(line: 344, column: 14, scope: !2412)
!2482 = !DILocation(line: 344, column: 3, scope: !2412)
!2483 = !DILocation(line: 345, column: 7, scope: !2412)
!2484 = !DILocation(line: 346, column: 17, scope: !2412)
!2485 = !DILocation(line: 346, column: 23, scope: !2412)
!2486 = !DILocation(line: 346, column: 32, scope: !2412)
!2487 = !DILocation(line: 346, column: 15, scope: !2412)
!2488 = !DILocation(line: 346, column: 3, scope: !2412)
!2489 = !DILocation(line: 347, column: 7, scope: !2412)
!2490 = !DILocation(line: 348, column: 26, scope: !2412)
!2491 = !DILocation(line: 348, column: 31, scope: !2412)
!2492 = !DILocation(line: 348, column: 25, scope: !2412)
!2493 = !DILocation(line: 348, column: 14, scope: !2412)
!2494 = !DILocation(line: 348, column: 35, scope: !2412)
!2495 = !DILocation(line: 348, column: 43, scope: !2412)
!2496 = !DILocation(line: 348, column: 49, scope: !2412)
!2497 = !DILocation(line: 348, column: 58, scope: !2412)
!2498 = !DILocation(line: 348, column: 41, scope: !2412)
!2499 = !DILocation(line: 348, column: 3, scope: !2412)
!2500 = !DILocation(line: 349, column: 7, scope: !2412)
!2501 = !DILocation(line: 350, column: 19, scope: !2412)
!2502 = !DILocation(line: 350, column: 24, scope: !2412)
!2503 = !DILocation(line: 350, column: 33, scope: !2412)
!2504 = !DILocation(line: 350, column: 17, scope: !2412)
!2505 = !DILocation(line: 350, column: 36, scope: !2412)
!2506 = !DILocation(line: 350, column: 44, scope: !2412)
!2507 = !DILocation(line: 350, column: 50, scope: !2412)
!2508 = !DILocation(line: 350, column: 59, scope: !2412)
!2509 = !DILocation(line: 350, column: 42, scope: !2412)
!2510 = !DILocation(line: 350, column: 3, scope: !2412)
!2511 = !DILocation(line: 351, column: 7, scope: !2412)
!2512 = !DILocation(line: 352, column: 15, scope: !2412)
!2513 = !DILocation(line: 352, column: 25, scope: !2412)
!2514 = !DILocation(line: 352, column: 3, scope: !2412)
!2515 = !DILocation(line: 353, column: 6, scope: !2412)
!2516 = !DILocation(line: 353, column: 15, scope: !2412)
!2517 = !DILocation(line: 354, column: 4, scope: !2412)
!2518 = !DILocation(line: 356, column: 3, scope: !2412)
!2519 = !DILocation(line: 357, column: 7, scope: !2412)
!2520 = !DILocation(line: 357, column: 15, scope: !2412)
!2521 = !DILocation(line: 357, column: 19, scope: !2412)
!2522 = !DILocation(line: 357, column: 17, scope: !2412)
!2523 = !DILocation(line: 358, column: 9, scope: !2412)
!2524 = !DILocation(line: 358, column: 20, scope: !2412)
!2525 = !DILocation(line: 358, column: 19, scope: !2412)
!2526 = !DILocation(line: 358, column: 4, scope: !2412)
!2527 = !DILocation(line: 359, column: 17, scope: !2412)
!2528 = !DILocation(line: 359, column: 13, scope: !2412)
!2529 = !DILocation(line: 359, column: 22, scope: !2412)
!2530 = !DILocation(line: 359, column: 32, scope: !2412)
!2531 = !DILocation(line: 359, column: 43, scope: !2412)
!2532 = !DILocation(line: 359, column: 28, scope: !2412)
!2533 = !DILocation(line: 359, column: 4, scope: !2412)
!2534 = !DILocation(line: 360, column: 9, scope: !2412)
!2535 = !DILocation(line: 360, column: 13, scope: !2412)
!2536 = !DILocation(line: 361, column: 31, scope: !2412)
!2537 = !DILocation(line: 361, column: 21, scope: !2412)
!2538 = !DILocation(line: 361, column: 14, scope: !2412)
!2539 = !DILocation(line: 361, column: 5, scope: !2412)
!2540 = !DILocation(line: 364, column: 7, scope: !2412)
!2541 = !DILocation(line: 364, column: 11, scope: !2412)
!2542 = !DILocation(line: 364, column: 19, scope: !2412)
!2543 = !DILocation(line: 364, column: 9, scope: !2412)
!2544 = !DILocation(line: 365, column: 5, scope: !2412)
!2545 = !DILocation(line: 357, column: 29, scope: !2412)
!2546 = !DILocation(line: 368, column: 3, scope: !2412)
!2547 = !DILocation(line: 369, column: 10, scope: !2412)
!2548 = !DILocation(line: 369, column: 3, scope: !2412)
!2549 = !DILocation(line: 370, column: 7, scope: !2412)
!2550 = !DILocation(line: 372, column: 3, scope: !2412)
!2551 = !DILocation(line: 374, column: 10, scope: !2412)
!2552 = !DILocation(line: 374, column: 16, scope: !2412)
!2553 = !DILocation(line: 374, column: 25, scope: !2412)
!2554 = !DILocation(line: 374, column: 3, scope: !2412)
!2555 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).key", linkageName: "(*internal/reflectlite.RawType).key", scope: !33, file: !33, line: 426, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2556)
!2556 = !{!2557, !2558, !2559}
!2557 = !DILocalVariable(name: "t", arg: 1, scope: !2555, file: !33, line: 426, type: !1049)
!2558 = !DILocalVariable(name: "underlying", scope: !2555, file: !33, line: 427, type: !1049)
!2559 = !DILocalVariable(name: "errTypeKey", scope: !2555, file: !33, line: 394, type: !39)
!2560 = !DILocation(line: 426, column: 19, scope: !2555)
!2561 = !DILocation(line: 427, column: 16, scope: !2555)
!2562 = !DILocation(line: 427, column: 28, scope: !2555)
!2563 = !DILocation(line: 427, column: 2, scope: !2555)
!2564 = !DILocation(line: 428, column: 5, scope: !2555)
!2565 = !DILocation(line: 428, column: 20, scope: !2555)
!2566 = !DILocation(line: 428, column: 23, scope: !2555)
!2567 = !DILocation(line: 0, scope: !2555)
!2568 = !DILocation(line: 429, column: 9, scope: !2555)
!2569 = !DILocation(line: 429, column: 8, scope: !2555)
!2570 = !DILocation(line: 431, column: 35, scope: !2555)
!2571 = !DILocation(line: 431, column: 48, scope: !2555)
!2572 = !DILocation(line: 431, column: 2, scope: !2555)
!2573 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).name", linkageName: "(*internal/reflectlite.RawType).name", scope: !33, file: !33, line: 939, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2574)
!2574 = !{!2575, !2576, !2586, !2587}
!2575 = !DILocalVariable(name: "t", arg: 1, scope: !2573, file: !33, line: 939, type: !1049)
!2576 = !DILocalVariable(name: "ntype", scope: !2573, file: !33, line: 940, type: !2577)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64, align: 64, dwarfAddressSpace: 0)
!2578 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.namedType", baseType: !2579)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !2580)
!2580 = !{!2581, !2582, !2583, !2584, !2585}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "RawType", baseType: !1050, size: 8, align: 8)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "numMethod", baseType: !96, size: 16, align: 16, offset: 16)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !1049, size: 64, align: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "elem", baseType: !1049, size: 64, align: 64, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", baseType: !2125, size: 64, align: 64, offset: 192)
!2586 = !DILocalVariable(name: "ptr", scope: !2573, file: !33, line: 942, type: !90)
!2587 = !DILocalVariable(name: "ms", scope: !2573, file: !33, line: 944, type: !2588)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64, align: 64, dwarfAddressSpace: 0)
!2589 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.methodSet", baseType: !2590)
!2590 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !2591)
!2591 = !{!1145, !2592}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !2593, align: 64, offset: 64)
!2593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, align: 64, elements: !127)
!2594 = !DILocation(line: 939, column: 19, scope: !2573)
!2595 = !DILocation(line: 940, column: 39, scope: !2573)
!2596 = !DILocation(line: 940, column: 2, scope: !2573)
!2597 = !DILocation(line: 942, column: 35, scope: !2573)
!2598 = !DILocation(line: 942, column: 19, scope: !2573)
!2599 = !DILocation(line: 942, column: 2, scope: !2573)
!2600 = !DILocation(line: 943, column: 5, scope: !2573)
!2601 = !DILocation(line: 943, column: 11, scope: !2573)
!2602 = !DILocation(line: 943, column: 20, scope: !2573)
!2603 = !DILocation(line: 943, column: 43, scope: !2573)
!2604 = !DILocation(line: 0, scope: !2573)
!2605 = !DILocation(line: 944, column: 22, scope: !2573)
!2606 = !DILocation(line: 944, column: 3, scope: !2573)
!2607 = !DILocation(line: 946, column: 20, scope: !2573)
!2608 = !DILocation(line: 946, column: 59, scope: !2573)
!2609 = !DILocation(line: 946, column: 62, scope: !2573)
!2610 = !DILocation(line: 946, column: 69, scope: !2573)
!2611 = !DILocation(line: 946, column: 50, scope: !2573)
!2612 = !DILocation(line: 946, column: 19, scope: !2573)
!2613 = !DILocation(line: 946, column: 3, scope: !2573)
!2614 = !DILocation(line: 948, column: 21, scope: !2573)
!2615 = !DILocation(line: 948, column: 20, scope: !2573)
!2616 = !DILocation(line: 948, column: 2, scope: !2573)
!2617 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).rawField", linkageName: "(*internal/reflectlite.RawType).rawField", scope: !33, file: !33, line: 484, type: !2618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2620)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!1049, !1916}
!2620 = !{!2621, !2622, !2623, !2624, !2638, !2640, !2641, !2642, !2643, !2644}
!2621 = !DILocalVariable(name: "t", arg: 1, scope: !2617, file: !33, line: 484, type: !1049)
!2622 = !DILocalVariable(name: "n", arg: 2, scope: !2617, file: !33, line: 484, type: !1916)
!2623 = !DILocalVariable(name: "errTypeField", scope: !2617, file: !33, line: 395, type: !39)
!2624 = !DILocalVariable(name: "descriptor", scope: !2617, file: !33, line: 488, type: !2625)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64, align: 64, dwarfAddressSpace: 0)
!2626 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.structType", baseType: !2627)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !2628)
!2628 = !{!2581, !2582, !2583, !2629, !103, !2630, !2631}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !2125, size: 64, align: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "numField", baseType: !96, size: 16, align: 16, offset: 224)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !2632, size: 128, align: 64, offset: 256)
!2632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2633, size: 128, align: 64, elements: !11)
!2633 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.structField", baseType: !2634)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !2635)
!2635 = !{!2636, !2637}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "fieldType", baseType: !1049, size: 64, align: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !90, size: 64, align: 64, offset: 64)
!2638 = !DILocalVariable(name: "field", scope: !2617, file: !33, line: 497, type: !2639)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64, align: 64, dwarfAddressSpace: 0)
!2640 = !DILocalVariable(name: "data", scope: !2617, file: !33, line: 498, type: !90)
!2641 = !DILocalVariable(name: "flagsByte", scope: !2617, file: !33, line: 502, type: !536)
!2642 = !DILocalVariable(name: "offset", scope: !2617, file: !33, line: 504, type: !104)
!2643 = !DILocalVariable(name: "lenOffs", scope: !2617, file: !33, line: 504, type: !1916)
!2644 = !DILocalVariable(name: "name", scope: !2617, file: !33, line: 507, type: !44)
!2645 = !DILocation(line: 484, column: 19, scope: !2617)
!2646 = !DILocation(line: 485, column: 5, scope: !2617)
!2647 = !DILocation(line: 485, column: 11, scope: !2617)
!2648 = !DILocation(line: 485, column: 14, scope: !2617)
!2649 = !DILocation(line: 0, scope: !2617)
!2650 = !DILocation(line: 486, column: 9, scope: !2617)
!2651 = !DILocation(line: 486, column: 8, scope: !2617)
!2652 = !DILocation(line: 488, column: 45, scope: !2617)
!2653 = !DILocation(line: 488, column: 57, scope: !2617)
!2654 = !DILocation(line: 488, column: 2, scope: !2617)
!2655 = !DILocation(line: 489, column: 10, scope: !2617)
!2656 = !DILocation(line: 489, column: 21, scope: !2617)
!2657 = !DILocation(line: 489, column: 32, scope: !2617)
!2658 = !DILocation(line: 489, column: 20, scope: !2617)
!2659 = !DILocation(line: 489, column: 13, scope: !2617)
!2660 = !DILocation(line: 490, column: 8, scope: !2617)
!2661 = !DILocation(line: 497, column: 53, scope: !2617)
!2662 = !DILocation(line: 497, column: 64, scope: !2617)
!2663 = !DILocation(line: 497, column: 70, scope: !2617)
!2664 = !DILocation(line: 497, column: 84, scope: !2617)
!2665 = !DILocation(line: 497, column: 86, scope: !2617)
!2666 = !DILocation(line: 497, column: 36, scope: !2617)
!2667 = !DILocation(line: 497, column: 2, scope: !2617)
!2668 = !DILocation(line: 498, column: 10, scope: !2617)
!2669 = !DILocation(line: 498, column: 16, scope: !2617)
!2670 = !DILocation(line: 498, column: 2, scope: !2617)
!2671 = !DILocation(line: 502, column: 24, scope: !2617)
!2672 = !DILocation(line: 502, column: 15, scope: !2617)
!2673 = !DILocation(line: 502, column: 2, scope: !2617)
!2674 = !DILocation(line: 503, column: 20, scope: !2617)
!2675 = !DILocation(line: 503, column: 19, scope: !2617)
!2676 = !DILocation(line: 503, column: 2, scope: !2617)
!2677 = !DILocation(line: 504, column: 52, scope: !2617)
!2678 = !DILocation(line: 504, column: 43, scope: !2617)
!2679 = !DILocation(line: 504, column: 30, scope: !2617)
!2680 = !DILocation(line: 504, column: 2, scope: !2617)
!2681 = !DILocation(line: 504, column: 10, scope: !2617)
!2682 = !DILocation(line: 505, column: 20, scope: !2617)
!2683 = !DILocation(line: 505, column: 26, scope: !2617)
!2684 = !DILocation(line: 505, column: 19, scope: !2617)
!2685 = !DILocation(line: 505, column: 2, scope: !2617)
!2686 = !DILocation(line: 507, column: 22, scope: !2617)
!2687 = !DILocation(line: 507, column: 21, scope: !2617)
!2688 = !DILocation(line: 507, column: 2, scope: !2617)
!2689 = !DILocation(line: 508, column: 20, scope: !2617)
!2690 = !DILocation(line: 508, column: 30, scope: !2617)
!2691 = !DILocation(line: 508, column: 29, scope: !2617)
!2692 = !DILocation(line: 508, column: 19, scope: !2617)
!2693 = !DILocation(line: 508, column: 2, scope: !2617)
!2694 = !DILocation(line: 510, column: 35, scope: !2617)
!2695 = !DILocation(line: 510, column: 47, scope: !2617)
!2696 = !DILocation(line: 510, column: 53, scope: !2617)
!2697 = !DILocation(line: 510, column: 64, scope: !2617)
!2698 = !DILocation(line: 510, column: 70, scope: !2617)
!2699 = !DILocation(line: 510, column: 81, scope: !2617)
!2700 = !DILocation(line: 510, column: 87, scope: !2617)
!2701 = !DILocation(line: 510, column: 34, scope: !2617)
!2702 = !DILocation(line: 510, column: 2, scope: !2617)
!2703 = distinct !DISubprogram(name: "internal/reflectlite.uvarint32", linkageName: "internal/reflectlite.uvarint32", scope: !33, file: !33, line: 1242, type: !2704, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!2122}
!2706 = !{!2707, !2708, !2709, !2710, !2711}
!2707 = !DILocalVariable(name: "buf", arg: 1, scope: !2703, file: !33, line: 1242, type: !2122)
!2708 = !DILocalVariable(name: "x", scope: !2703, file: !33, line: 1243, type: !104)
!2709 = !DILocalVariable(name: "s", scope: !2703, file: !33, line: 1244, type: !1738)
!2710 = !DILocalVariable(name: "i", scope: !2703, file: !33, line: 1245, type: !1916)
!2711 = !DILocalVariable(name: "b", scope: !2703, file: !33, line: 1245, type: !536)
!2712 = !DILocation(line: 1242, column: 6, scope: !2703)
!2713 = !DILocation(line: 1243, column: 6, scope: !2703)
!2714 = !DILocation(line: 1244, column: 6, scope: !2703)
!2715 = !DILocation(line: 1245, column: 20, scope: !2703)
!2716 = !DILocation(line: 0, scope: !2703)
!2717 = !DILocation(line: 1245, column: 6, scope: !2703)
!2718 = !DILocation(line: 1245, column: 9, scope: !2703)
!2719 = !DILocation(line: 1246, column: 6, scope: !2703)
!2720 = !DILocation(line: 1246, column: 8, scope: !2703)
!2721 = !DILocation(line: 1247, column: 11, scope: !2703)
!2722 = !DILocation(line: 1247, column: 22, scope: !2703)
!2723 = !DILocation(line: 1247, column: 21, scope: !2703)
!2724 = !DILocation(line: 1247, column: 26, scope: !2703)
!2725 = !DILocation(line: 1247, column: 24, scope: !2703)
!2726 = !DILocation(line: 1247, column: 13, scope: !2703)
!2727 = !DILocation(line: 1247, column: 29, scope: !2703)
!2728 = !DILocation(line: 1247, column: 31, scope: !2703)
!2729 = !DILocation(line: 1247, column: 4, scope: !2703)
!2730 = !DILocation(line: 1249, column: 15, scope: !2703)
!2731 = !DILocation(line: 1249, column: 16, scope: !2703)
!2732 = !DILocation(line: 1249, column: 14, scope: !2703)
!2733 = !DILocation(line: 1249, column: 26, scope: !2703)
!2734 = !DILocation(line: 1249, column: 23, scope: !2703)
!2735 = !DILocation(line: 1249, column: 3, scope: !2703)
!2736 = !DILocation(line: 1250, column: 3, scope: !2703)
!2737 = !DILocation(line: 1252, column: 2, scope: !2703)
!2738 = distinct !DISubprogram(name: "internal/reflectlite.readStringZ", linkageName: "internal/reflectlite.readStringZ", scope: !33, file: !33, line: 925, type: !2739, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2741)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!90}
!2741 = !{!2742, !2743, !2744}
!2742 = !DILocalVariable(name: "data", arg: 1, scope: !2738, file: !33, line: 925, type: !90)
!2743 = !DILocalVariable(name: "start", scope: !2738, file: !33, line: 926, type: !90)
!2744 = !DILocalVariable(name: "len", scope: !2738, file: !33, line: 927, type: !49)
!2745 = !DILocation(line: 925, column: 6, scope: !2738)
!2746 = !DILocation(line: 926, column: 11, scope: !2738)
!2747 = !DILocation(line: 926, column: 2, scope: !2738)
!2748 = !DILocation(line: 927, column: 6, scope: !2738)
!2749 = !DILocation(line: 0, scope: !2738)
!2750 = !DILocation(line: 925, column: 18, scope: !2738)
!2751 = !DILocation(line: 928, column: 15, scope: !2738)
!2752 = !DILocation(line: 928, column: 6, scope: !2738)
!2753 = !DILocation(line: 928, column: 21, scope: !2738)
!2754 = !DILocation(line: 929, column: 3, scope: !2738)
!2755 = !DILocation(line: 930, column: 21, scope: !2738)
!2756 = !DILocation(line: 930, column: 20, scope: !2738)
!2757 = !DILocation(line: 930, column: 3, scope: !2738)
!2758 = !DILocation(line: 933, column: 48, scope: !2738)
!2759 = !DILocation(line: 934, column: 7, scope: !2738)
!2760 = !DILocation(line: 934, column: 9, scope: !2738)
!2761 = !DILocation(line: 935, column: 6, scope: !2738)
!2762 = !DILocation(line: 935, column: 9, scope: !2738)
!2763 = !DILocation(line: 933, column: 9, scope: !2738)
!2764 = !DILocation(line: 933, column: 2, scope: !2738)
!2765 = distinct !DISubprogram(name: "internal/reflectlite.rawStructFieldFromPointer", linkageName: "internal/reflectlite.rawStructFieldFromPointer", scope: !33, file: !33, line: 449, type: !2766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!2625, !1049, !90, !4, !44, !104}
!2768 = !{!2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777}
!2769 = !DILocalVariable(name: "descriptor", arg: 1, scope: !2765, file: !33, line: 449, type: !2625)
!2770 = !DILocalVariable(name: "fieldType", arg: 2, scope: !2765, file: !33, line: 449, type: !1049)
!2771 = !DILocalVariable(name: "data", arg: 3, scope: !2765, file: !33, line: 449, type: !90)
!2772 = !DILocalVariable(name: "flagsByte", arg: 4, scope: !2765, file: !33, line: 449, type: !4)
!2773 = !DILocalVariable(name: "name", arg: 5, scope: !2765, file: !33, line: 449, type: !44)
!2774 = !DILocalVariable(name: "offset", arg: 6, scope: !2765, file: !33, line: 449, type: !104)
!2775 = !DILocalVariable(name: "tag", scope: !2765, file: !33, line: 451, type: !44)
!2776 = !DILocalVariable(name: "tagLen", scope: !2765, file: !33, line: 454, type: !49)
!2777 = !DILocalVariable(name: "pkgPath", scope: !2765, file: !33, line: 464, type: !44)
!2778 = !DILocation(line: 449, column: 6, scope: !2765)
!2779 = !DILocation(line: 451, column: 6, scope: !2765)
!2780 = !DILocation(line: 452, column: 5, scope: !2765)
!2781 = !DILocation(line: 452, column: 14, scope: !2765)
!2782 = !DILocation(line: 452, column: 37, scope: !2765)
!2783 = !DILocation(line: 0, scope: !2765)
!2784 = !DILocation(line: 453, column: 21, scope: !2765)
!2785 = !DILocation(line: 453, column: 20, scope: !2765)
!2786 = !DILocation(line: 453, column: 3, scope: !2765)
!2787 = !DILocation(line: 454, column: 30, scope: !2765)
!2788 = !DILocation(line: 454, column: 21, scope: !2765)
!2789 = !DILocation(line: 454, column: 20, scope: !2765)
!2790 = !DILocation(line: 454, column: 3, scope: !2765)
!2791 = !DILocation(line: 455, column: 21, scope: !2765)
!2792 = !DILocation(line: 455, column: 20, scope: !2765)
!2793 = !DILocation(line: 455, column: 3, scope: !2765)
!2794 = !DILocation(line: 456, column: 48, scope: !2765)
!2795 = !DILocation(line: 457, column: 8, scope: !2765)
!2796 = !DILocation(line: 457, column: 10, scope: !2765)
!2797 = !DILocation(line: 458, column: 7, scope: !2765)
!2798 = !DILocation(line: 458, column: 10, scope: !2765)
!2799 = !DILocation(line: 456, column: 9, scope: !2765)
!2800 = !DILocation(line: 456, column: 3, scope: !2765)
!2801 = !DILocation(line: 464, column: 2, scope: !2765)
!2802 = !DILocation(line: 465, column: 5, scope: !2765)
!2803 = !DILocation(line: 465, column: 14, scope: !2765)
!2804 = !DILocation(line: 465, column: 41, scope: !2765)
!2805 = !DILocation(line: 467, column: 40, scope: !2765)
!2806 = !DILocation(line: 467, column: 51, scope: !2765)
!2807 = !DILocation(line: 467, column: 24, scope: !2765)
!2808 = !DILocation(line: 467, column: 3, scope: !2765)
!2809 = !DILocation(line: 471, column: 7, scope: !2765)
!2810 = !DILocation(line: 471, column: 14, scope: !2765)
!2811 = !DILocation(line: 472, column: 10, scope: !2765)
!2812 = !DILocation(line: 472, column: 14, scope: !2765)
!2813 = !DILocation(line: 473, column: 7, scope: !2765)
!2814 = !DILocation(line: 473, column: 14, scope: !2765)
!2815 = !DILocation(line: 474, column: 6, scope: !2765)
!2816 = !DILocation(line: 474, column: 24, scope: !2765)
!2817 = !DILocation(line: 475, column: 12, scope: !2765)
!2818 = !DILocation(line: 475, column: 14, scope: !2765)
!2819 = !DILocation(line: 475, column: 23, scope: !2765)
!2820 = !DILocation(line: 475, column: 49, scope: !2765)
!2821 = !DILocation(line: 476, column: 9, scope: !2765)
!2822 = !DILocation(line: 476, column: 22, scope: !2765)
!2823 = !DILocation(line: 476, column: 21, scope: !2765)
!2824 = !DILocation(line: 470, column: 23, scope: !2765)
!2825 = !DILocation(line: 470, column: 2, scope: !2765)
!2826 = distinct !DISubprogram(name: "(internal/reflectlite.Kind).String", linkageName: "(internal/reflectlite.Kind).String", scope: !33, file: !33, line: 57, type: !2827, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2830)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!2829}
!2829 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.Kind", baseType: !4)
!2830 = !{!2831}
!2831 = !DILocalVariable(name: "k", arg: 1, scope: !2826, file: !33, line: 57, type: !2829)
!2832 = !DILocation(line: 57, column: 15, scope: !2826)
!2833 = !DILocation(line: 58, column: 9, scope: !2826)
!2834 = !DILocation(line: 59, column: 7, scope: !2826)
!2835 = !DILocation(line: 0, scope: !2826)
!2836 = !DILocation(line: 60, column: 3, scope: !2826)
!2837 = !DILocation(line: 61, column: 7, scope: !2826)
!2838 = !DILocation(line: 62, column: 3, scope: !2826)
!2839 = !DILocation(line: 63, column: 7, scope: !2826)
!2840 = !DILocation(line: 64, column: 3, scope: !2826)
!2841 = !DILocation(line: 65, column: 7, scope: !2826)
!2842 = !DILocation(line: 66, column: 3, scope: !2826)
!2843 = !DILocation(line: 67, column: 7, scope: !2826)
!2844 = !DILocation(line: 68, column: 3, scope: !2826)
!2845 = !DILocation(line: 69, column: 7, scope: !2826)
!2846 = !DILocation(line: 70, column: 3, scope: !2826)
!2847 = !DILocation(line: 71, column: 7, scope: !2826)
!2848 = !DILocation(line: 72, column: 3, scope: !2826)
!2849 = !DILocation(line: 73, column: 7, scope: !2826)
!2850 = !DILocation(line: 74, column: 3, scope: !2826)
!2851 = !DILocation(line: 75, column: 7, scope: !2826)
!2852 = !DILocation(line: 76, column: 3, scope: !2826)
!2853 = !DILocation(line: 77, column: 7, scope: !2826)
!2854 = !DILocation(line: 78, column: 3, scope: !2826)
!2855 = !DILocation(line: 79, column: 7, scope: !2826)
!2856 = !DILocation(line: 80, column: 3, scope: !2826)
!2857 = !DILocation(line: 81, column: 7, scope: !2826)
!2858 = !DILocation(line: 82, column: 3, scope: !2826)
!2859 = !DILocation(line: 83, column: 7, scope: !2826)
!2860 = !DILocation(line: 84, column: 3, scope: !2826)
!2861 = !DILocation(line: 85, column: 7, scope: !2826)
!2862 = !DILocation(line: 86, column: 3, scope: !2826)
!2863 = !DILocation(line: 87, column: 7, scope: !2826)
!2864 = !DILocation(line: 88, column: 3, scope: !2826)
!2865 = !DILocation(line: 89, column: 7, scope: !2826)
!2866 = !DILocation(line: 90, column: 3, scope: !2826)
!2867 = !DILocation(line: 91, column: 7, scope: !2826)
!2868 = !DILocation(line: 92, column: 3, scope: !2826)
!2869 = !DILocation(line: 93, column: 7, scope: !2826)
!2870 = !DILocation(line: 94, column: 3, scope: !2826)
!2871 = !DILocation(line: 95, column: 7, scope: !2826)
!2872 = !DILocation(line: 96, column: 3, scope: !2826)
!2873 = !DILocation(line: 97, column: 7, scope: !2826)
!2874 = !DILocation(line: 98, column: 3, scope: !2826)
!2875 = !DILocation(line: 99, column: 7, scope: !2826)
!2876 = !DILocation(line: 100, column: 3, scope: !2826)
!2877 = !DILocation(line: 101, column: 7, scope: !2826)
!2878 = !DILocation(line: 102, column: 3, scope: !2826)
!2879 = !DILocation(line: 103, column: 7, scope: !2826)
!2880 = !DILocation(line: 104, column: 3, scope: !2826)
!2881 = !DILocation(line: 105, column: 7, scope: !2826)
!2882 = !DILocation(line: 106, column: 3, scope: !2826)
!2883 = !DILocation(line: 107, column: 7, scope: !2826)
!2884 = !DILocation(line: 108, column: 3, scope: !2826)
!2885 = !DILocation(line: 109, column: 7, scope: !2826)
!2886 = !DILocation(line: 110, column: 3, scope: !2826)
!2887 = !DILocation(line: 111, column: 7, scope: !2826)
!2888 = !DILocation(line: 112, column: 3, scope: !2826)
!2889 = !DILocation(line: 114, column: 38, scope: !2826)
!2890 = !DILocation(line: 114, column: 32, scope: !2826)
!2891 = !DILocation(line: 114, column: 28, scope: !2826)
!2892 = !DILocation(line: 114, column: 17, scope: !2826)
!2893 = !DILocation(line: 114, column: 3, scope: !2826)
!2894 = distinct !DISubprogram(name: "internal/reflectlite.quote", linkageName: "internal/reflectlite.quote", scope: !117, file: !117, line: 238, type: !1970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2895)
!2895 = !{!2896, !2897, !2898, !2899}
!2896 = !DILocalVariable(name: "s", arg: 1, scope: !2894, file: !117, line: 238, type: !44)
!2897 = !DILocalVariable(name: "buf", scope: !2894, file: !117, line: 239, type: !2122)
!2898 = !DILocalVariable(name: "width", scope: !2894, file: !117, line: 243, type: !1916)
!2899 = !DILocalVariable(name: "r", scope: !2894, file: !117, line: 244, type: !1975)
!2900 = !DILocation(line: 238, column: 6, scope: !2894)
!2901 = !DILocation(line: 239, column: 31, scope: !2894)
!2902 = !DILocation(line: 239, column: 30, scope: !2894)
!2903 = !DILocation(line: 239, column: 26, scope: !2894)
!2904 = !DILocation(line: 239, column: 33, scope: !2894)
!2905 = !DILocation(line: 239, column: 13, scope: !2894)
!2906 = !DILocation(line: 239, column: 2, scope: !2894)
!2907 = !DILocation(line: 242, column: 15, scope: !2894)
!2908 = !DILocation(line: 242, column: 25, scope: !2894)
!2909 = !DILocation(line: 242, column: 14, scope: !2894)
!2910 = !DILocation(line: 242, column: 2, scope: !2894)
!2911 = !DILocation(line: 243, column: 6, scope: !2894)
!2912 = !DILocation(line: 0, scope: !2894)
!2913 = !DILocation(line: 238, column: 12, scope: !2894)
!2914 = !DILocation(line: 243, column: 22, scope: !2894)
!2915 = !DILocation(line: 243, column: 21, scope: !2894)
!2916 = !DILocation(line: 243, column: 25, scope: !2894)
!2917 = !DILocation(line: 244, column: 13, scope: !2894)
!2918 = !DILocation(line: 244, column: 14, scope: !2894)
!2919 = !DILocation(line: 244, column: 12, scope: !2894)
!2920 = !DILocation(line: 244, column: 3, scope: !2894)
!2921 = !DILocation(line: 245, column: 3, scope: !2894)
!2922 = !DILocation(line: 246, column: 6, scope: !2894)
!2923 = !DILocation(line: 246, column: 8, scope: !2894)
!2924 = !DILocation(line: 247, column: 39, scope: !2894)
!2925 = !DILocation(line: 247, column: 38, scope: !2894)
!2926 = !DILocation(line: 247, column: 4, scope: !2894)
!2927 = !DILocation(line: 247, column: 7, scope: !2894)
!2928 = !DILocation(line: 249, column: 6, scope: !2894)
!2929 = !DILocation(line: 249, column: 12, scope: !2894)
!2930 = !DILocation(line: 249, column: 20, scope: !2894)
!2931 = !DILocation(line: 249, column: 22, scope: !2894)
!2932 = !DILocation(line: 250, column: 17, scope: !2894)
!2933 = !DILocation(line: 250, column: 16, scope: !2894)
!2934 = !DILocation(line: 250, column: 4, scope: !2894)
!2935 = !DILocation(line: 251, column: 17, scope: !2894)
!2936 = !DILocation(line: 251, column: 31, scope: !2894)
!2937 = !DILocation(line: 251, column: 32, scope: !2894)
!2938 = !DILocation(line: 251, column: 35, scope: !2894)
!2939 = !DILocation(line: 251, column: 30, scope: !2894)
!2940 = !DILocation(line: 251, column: 39, scope: !2894)
!2941 = !DILocation(line: 251, column: 16, scope: !2894)
!2942 = !DILocation(line: 251, column: 4, scope: !2894)
!2943 = !DILocation(line: 252, column: 17, scope: !2894)
!2944 = !DILocation(line: 252, column: 31, scope: !2894)
!2945 = !DILocation(line: 252, column: 32, scope: !2894)
!2946 = !DILocation(line: 252, column: 35, scope: !2894)
!2947 = !DILocation(line: 252, column: 30, scope: !2894)
!2948 = !DILocation(line: 252, column: 40, scope: !2894)
!2949 = !DILocation(line: 252, column: 16, scope: !2894)
!2950 = !DILocation(line: 252, column: 4, scope: !2894)
!2951 = !DILocation(line: 243, column: 34, scope: !2894)
!2952 = !DILocation(line: 243, column: 36, scope: !2894)
!2953 = !DILocation(line: 243, column: 35, scope: !2894)
!2954 = !DILocation(line: 243, column: 30, scope: !2894)
!2955 = !DILocation(line: 255, column: 27, scope: !2894)
!2956 = !DILocation(line: 255, column: 32, scope: !2894)
!2957 = !DILocation(line: 255, column: 26, scope: !2894)
!2958 = !DILocation(line: 255, column: 3, scope: !2894)
!2959 = !DILocation(line: 257, column: 15, scope: !2894)
!2960 = !DILocation(line: 257, column: 25, scope: !2894)
!2961 = !DILocation(line: 257, column: 14, scope: !2894)
!2962 = !DILocation(line: 257, column: 2, scope: !2894)
!2963 = !DILocation(line: 258, column: 16, scope: !2894)
!2964 = !DILocation(line: 258, column: 15, scope: !2894)
!2965 = !DILocation(line: 258, column: 2, scope: !2894)
!2966 = distinct !DISubprogram(name: "internal/reflectlite.appendEscapedRune", linkageName: "internal/reflectlite.appendEscapedRune", scope: !117, file: !117, line: 261, type: !2120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2967)
!2967 = !{!2968, !2969, !2970, !2971, !2972}
!2968 = !DILocalVariable(name: "buf", arg: 1, scope: !2966, file: !117, line: 261, type: !2122)
!2969 = !DILocalVariable(name: "r", arg: 2, scope: !2966, file: !117, line: 261, type: !1975)
!2970 = !DILocalVariable(name: "n", scope: !2966, file: !117, line: 272, type: !1916)
!2971 = !DILocalVariable(name: "s", scope: !2966, file: !117, line: 302, type: !1916)
!2972 = !DILocalVariable(name: "s", scope: !2966, file: !117, line: 307, type: !1916)
!2973 = !DILocation(line: 261, column: 6, scope: !2966)
!2974 = !DILocation(line: 265, column: 6, scope: !2966)
!2975 = !DILocation(line: 266, column: 5, scope: !2966)
!2976 = !DILocation(line: 266, column: 7, scope: !2966)
!2977 = !DILocation(line: 0, scope: !2966)
!2978 = !DILocation(line: 267, column: 16, scope: !2966)
!2979 = !DILocation(line: 267, column: 25, scope: !2966)
!2980 = !DILocation(line: 267, column: 15, scope: !2966)
!2981 = !DILocation(line: 267, column: 3, scope: !2966)
!2982 = !DILocation(line: 268, column: 16, scope: !2966)
!2983 = !DILocation(line: 268, column: 26, scope: !2966)
!2984 = !DILocation(line: 268, column: 25, scope: !2966)
!2985 = !DILocation(line: 268, column: 28, scope: !2966)
!2986 = !DILocation(line: 268, column: 15, scope: !2966)
!2987 = !DILocation(line: 268, column: 3, scope: !2966)
!2988 = !DILocation(line: 269, column: 10, scope: !2966)
!2989 = !DILocation(line: 269, column: 3, scope: !2966)
!2990 = !DILocation(line: 266, column: 25, scope: !2966)
!2991 = !DILocation(line: 266, column: 27, scope: !2966)
!2992 = !DILocation(line: 271, column: 13, scope: !2966)
!2993 = !DILocation(line: 271, column: 12, scope: !2966)
!2994 = !DILocation(line: 272, column: 31, scope: !2966)
!2995 = !DILocation(line: 272, column: 36, scope: !2966)
!2996 = !DILocation(line: 272, column: 23, scope: !2966)
!2997 = !DILocation(line: 272, column: 3, scope: !2966)
!2998 = !DILocation(line: 273, column: 16, scope: !2966)
!2999 = !DILocation(line: 273, column: 30, scope: !2966)
!3000 = !DILocation(line: 273, column: 28, scope: !2966)
!3001 = !DILocation(line: 273, column: 15, scope: !2966)
!3002 = !DILocation(line: 273, column: 3, scope: !2966)
!3003 = !DILocation(line: 274, column: 10, scope: !2966)
!3004 = !DILocation(line: 274, column: 3, scope: !2966)
!3005 = !DILocation(line: 276, column: 9, scope: !2966)
!3006 = !DILocation(line: 277, column: 7, scope: !2966)
!3007 = !DILocation(line: 278, column: 16, scope: !2966)
!3008 = !DILocation(line: 278, column: 15, scope: !2966)
!3009 = !DILocation(line: 278, column: 3, scope: !2966)
!3010 = !DILocation(line: 261, column: 24, scope: !2966)
!3011 = !DILocation(line: 312, column: 9, scope: !2966)
!3012 = !DILocation(line: 312, column: 2, scope: !2966)
!3013 = !DILocation(line: 279, column: 7, scope: !2966)
!3014 = !DILocation(line: 280, column: 16, scope: !2966)
!3015 = !DILocation(line: 280, column: 15, scope: !2966)
!3016 = !DILocation(line: 280, column: 3, scope: !2966)
!3017 = !DILocation(line: 281, column: 7, scope: !2966)
!3018 = !DILocation(line: 282, column: 16, scope: !2966)
!3019 = !DILocation(line: 282, column: 15, scope: !2966)
!3020 = !DILocation(line: 282, column: 3, scope: !2966)
!3021 = !DILocation(line: 283, column: 7, scope: !2966)
!3022 = !DILocation(line: 284, column: 16, scope: !2966)
!3023 = !DILocation(line: 284, column: 15, scope: !2966)
!3024 = !DILocation(line: 284, column: 3, scope: !2966)
!3025 = !DILocation(line: 285, column: 7, scope: !2966)
!3026 = !DILocation(line: 286, column: 16, scope: !2966)
!3027 = !DILocation(line: 286, column: 15, scope: !2966)
!3028 = !DILocation(line: 286, column: 3, scope: !2966)
!3029 = !DILocation(line: 287, column: 7, scope: !2966)
!3030 = !DILocation(line: 288, column: 16, scope: !2966)
!3031 = !DILocation(line: 288, column: 15, scope: !2966)
!3032 = !DILocation(line: 288, column: 3, scope: !2966)
!3033 = !DILocation(line: 289, column: 7, scope: !2966)
!3034 = !DILocation(line: 290, column: 16, scope: !2966)
!3035 = !DILocation(line: 290, column: 15, scope: !2966)
!3036 = !DILocation(line: 290, column: 3, scope: !2966)
!3037 = !DILocation(line: 293, column: 8, scope: !2966)
!3038 = !DILocation(line: 293, column: 10, scope: !2966)
!3039 = !DILocation(line: 293, column: 16, scope: !2966)
!3040 = !DILocation(line: 294, column: 17, scope: !2966)
!3041 = !DILocation(line: 294, column: 16, scope: !2966)
!3042 = !DILocation(line: 294, column: 4, scope: !2966)
!3043 = !DILocation(line: 295, column: 17, scope: !2966)
!3044 = !DILocation(line: 295, column: 36, scope: !2966)
!3045 = !DILocation(line: 295, column: 35, scope: !2966)
!3046 = !DILocation(line: 295, column: 38, scope: !2966)
!3047 = !DILocation(line: 295, column: 30, scope: !2966)
!3048 = !DILocation(line: 295, column: 42, scope: !2966)
!3049 = !DILocation(line: 295, column: 16, scope: !2966)
!3050 = !DILocation(line: 295, column: 4, scope: !2966)
!3051 = !DILocation(line: 296, column: 17, scope: !2966)
!3052 = !DILocation(line: 296, column: 36, scope: !2966)
!3053 = !DILocation(line: 296, column: 35, scope: !2966)
!3054 = !DILocation(line: 296, column: 38, scope: !2966)
!3055 = !DILocation(line: 296, column: 30, scope: !2966)
!3056 = !DILocation(line: 296, column: 43, scope: !2966)
!3057 = !DILocation(line: 296, column: 16, scope: !2966)
!3058 = !DILocation(line: 296, column: 4, scope: !2966)
!3059 = !DILocation(line: 297, column: 24, scope: !2966)
!3060 = !DILocation(line: 297, column: 23, scope: !2966)
!3061 = !DILocation(line: 297, column: 8, scope: !2966)
!3062 = !DILocation(line: 298, column: 4, scope: !2966)
!3063 = !DILocation(line: 261, column: 36, scope: !2966)
!3064 = !DILocation(line: 301, column: 17, scope: !2966)
!3065 = !DILocation(line: 301, column: 16, scope: !2966)
!3066 = !DILocation(line: 301, column: 4, scope: !2966)
!3067 = !DILocation(line: 302, column: 8, scope: !2966)
!3068 = !DILocation(line: 302, column: 17, scope: !2966)
!3069 = !DILocation(line: 302, column: 19, scope: !2966)
!3070 = !DILocation(line: 303, column: 18, scope: !2966)
!3071 = !DILocation(line: 303, column: 32, scope: !2966)
!3072 = !DILocation(line: 303, column: 40, scope: !2966)
!3073 = !DILocation(line: 303, column: 33, scope: !2966)
!3074 = !DILocation(line: 303, column: 42, scope: !2966)
!3075 = !DILocation(line: 303, column: 31, scope: !2966)
!3076 = !DILocation(line: 303, column: 47, scope: !2966)
!3077 = !DILocation(line: 303, column: 17, scope: !2966)
!3078 = !DILocation(line: 303, column: 5, scope: !2966)
!3079 = !DILocation(line: 302, column: 25, scope: !2966)
!3080 = !DILocation(line: 300, column: 8, scope: !2966)
!3081 = !DILocation(line: 300, column: 10, scope: !2966)
!3082 = !DILocation(line: 306, column: 17, scope: !2966)
!3083 = !DILocation(line: 306, column: 16, scope: !2966)
!3084 = !DILocation(line: 306, column: 4, scope: !2966)
!3085 = !DILocation(line: 307, column: 8, scope: !2966)
!3086 = !DILocation(line: 307, column: 17, scope: !2966)
!3087 = !DILocation(line: 307, column: 19, scope: !2966)
!3088 = !DILocation(line: 308, column: 18, scope: !2966)
!3089 = !DILocation(line: 308, column: 32, scope: !2966)
!3090 = !DILocation(line: 308, column: 40, scope: !2966)
!3091 = !DILocation(line: 308, column: 33, scope: !2966)
!3092 = !DILocation(line: 308, column: 42, scope: !2966)
!3093 = !DILocation(line: 308, column: 31, scope: !2966)
!3094 = !DILocation(line: 308, column: 47, scope: !2966)
!3095 = !DILocation(line: 308, column: 17, scope: !2966)
!3096 = !DILocation(line: 308, column: 5, scope: !2966)
!3097 = !DILocation(line: 307, column: 25, scope: !2966)
!3098 = !DILocation(line: 293, column: 19, scope: !2966)
!3099 = !DILocation(line: 293, column: 21, scope: !2966)
!3100 = distinct !DISubprogram(name: "internal/reflectlite.isPrint", linkageName: "internal/reflectlite.isPrint", scope: !117, file: !117, line: 316, type: !2241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3101)
!3101 = !{!3102}
!3102 = !DILocalVariable(name: "r", arg: 1, scope: !3100, file: !117, line: 316, type: !1975)
!3103 = !DILocation(line: 316, column: 6, scope: !3100)
!3104 = !DILocation(line: 317, column: 5, scope: !3100)
!3105 = !DILocation(line: 317, column: 7, scope: !3100)
!3106 = !DILocation(line: 0, scope: !3100)
!3107 = !DILocation(line: 318, column: 14, scope: !3100)
!3108 = !DILocation(line: 318, column: 11, scope: !3100)
!3109 = !DILocation(line: 318, column: 19, scope: !3100)
!3110 = !DILocation(line: 318, column: 21, scope: !3100)
!3111 = !DILocation(line: 320, column: 4, scope: !3100)
!3112 = !DILocation(line: 322, column: 14, scope: !3100)
!3113 = !DILocation(line: 322, column: 11, scope: !3100)
!3114 = !DILocation(line: 322, column: 19, scope: !3100)
!3115 = !DILocation(line: 322, column: 21, scope: !3100)
!3116 = !DILocation(line: 324, column: 11, scope: !3100)
!3117 = !DILocation(line: 324, column: 13, scope: !3100)
!3118 = !DILocation(line: 324, column: 4, scope: !3100)
!3119 = !DILocation(line: 326, column: 3, scope: !3100)
!3120 = !DILocation(line: 330, column: 2, scope: !3100)
!3121 = distinct !DISubprogram(name: "(internal/reflectlite.Kind).String$invoke", linkageName: "(internal/reflectlite.Kind).String$invoke", scope: !33, file: !33, line: 57, type: !2827, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032)
!3122 = !DILocation(line: 57, column: 15, scope: !3121)
!3123 = distinct !DISubprogram(name: "(*internal/reflectlite.ValueError).Error", linkageName: "(*internal/reflectlite.ValueError).Error", scope: !319, file: !319, line: 1789, type: !3124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3131)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!3126}
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64, align: 64, dwarfAddressSpace: 0)
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.ValueError", baseType: !3128)
!3128 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !3129)
!3129 = !{!43, !3130}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "Kind", baseType: !2829, size: 8, align: 8, offset: 128)
!3131 = !{!3132}
!3132 = !DILocalVariable(name: "e", arg: 1, scope: !3123, file: !319, line: 1789, type: !3126)
!3133 = !DILocation(line: 1789, column: 22, scope: !3123)
!3134 = !DILocation(line: 1790, column: 5, scope: !3123)
!3135 = !DILocation(line: 1790, column: 7, scope: !3123)
!3136 = !DILocation(line: 1790, column: 12, scope: !3123)
!3137 = !DILocation(line: 0, scope: !3123)
!3138 = !DILocation(line: 1791, column: 32, scope: !3123)
!3139 = !DILocation(line: 1791, column: 34, scope: !3123)
!3140 = !DILocation(line: 1791, column: 30, scope: !3123)
!3141 = !DILocation(line: 1791, column: 41, scope: !3123)
!3142 = !DILocation(line: 1791, column: 3, scope: !3123)
!3143 = !DILocation(line: 1793, column: 31, scope: !3123)
!3144 = !DILocation(line: 1793, column: 33, scope: !3123)
!3145 = !DILocation(line: 1793, column: 29, scope: !3123)
!3146 = !DILocation(line: 1793, column: 40, scope: !3123)
!3147 = !DILocation(line: 1793, column: 51, scope: !3123)
!3148 = !DILocation(line: 1793, column: 53, scope: !3123)
!3149 = !DILocation(line: 1793, column: 64, scope: !3123)
!3150 = !DILocation(line: 1793, column: 49, scope: !3123)
!3151 = !DILocation(line: 1793, column: 67, scope: !3123)
!3152 = !DILocation(line: 1793, column: 2, scope: !3123)
!3153 = distinct !DISubprogram(name: "(internal/reflectlite.badSyntax).Error", linkageName: "(internal/reflectlite.badSyntax).Error", scope: !117, file: !117, line: 16, type: !3154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!1195}
!3156 = !{!3157}
!3157 = !DILocalVariable(name: "arg0", arg: 1, scope: !3153, file: !117, line: 16, type: !1195)
!3158 = !DILocation(line: 17, column: 2, scope: !3153)
!3159 = distinct !DISubprogram(name: "(internal/reflectlite.badSyntax).Error$invoke", linkageName: "(internal/reflectlite.badSyntax).Error$invoke", scope: !117, file: !117, line: 16, type: !3154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032)
!3160 = !DILocation(line: 16, column: 18, scope: !3159)
!3161 = distinct !DISubprogram(name: "runtime/interrupt.In", linkageName: "runtime/interrupt.In", scope: !3162, file: !3162, line: 28, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1516)
!3162 = !DIFile(filename: "interrupt_none.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!3163 = !DISubroutineType(types: !345)
!3164 = !DILocation(line: 30, column: 2, scope: !3161)
!3165 = distinct !DISubprogram(name: "(*internal/task.Mutex).Lock", linkageName: "(*internal/task.Mutex).Lock", scope: !381, file: !381, line: 31, type: !3166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3169)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!3168}
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64, dwarfAddressSpace: 0)
!3169 = !{!3170}
!3170 = !DILocalVariable(name: "m", arg: 1, scope: !3165, file: !381, line: 31, type: !3168)
!3171 = !DILocation(line: 31, column: 17, scope: !3165)
!3172 = !DILocation(line: 33, column: 5, scope: !3165)
!3173 = !DILocation(line: 33, column: 7, scope: !3165)
!3174 = !DILocation(line: 33, column: 27, scope: !3165)
!3175 = !DILocation(line: 0, scope: !3165)
!3176 = !DILocation(line: 35, column: 3, scope: !3165)
!3177 = !DILocation(line: 43, column: 6, scope: !3165)
!3178 = !DILocation(line: 43, column: 8, scope: !3165)
!3179 = !DILocation(line: 43, column: 18, scope: !3165)
!3180 = !DILocation(line: 43, column: 22, scope: !3165)
!3181 = !DILocation(line: 45, column: 3, scope: !3165)
!3182 = !DILocation(line: 45, column: 5, scope: !3165)
!3183 = !DILocation(line: 45, column: 15, scope: !3165)
!3184 = !DILocation(line: 47, column: 2, scope: !3165)
!3185 = distinct !DISubprogram(name: "(*internal/task.Mutex).Unlock", linkageName: "(*internal/task.Mutex).Unlock", scope: !381, file: !381, line: 49, type: !3166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3186)
!3186 = !{!3187, !3188}
!3187 = !DILocalVariable(name: "m", arg: 1, scope: !3185, file: !381, line: 49, type: !3168)
!3188 = !DILocalVariable(name: "old", scope: !3185, file: !381, line: 50, type: !104)
!3189 = !DILocation(line: 49, column: 17, scope: !3185)
!3190 = !DILocation(line: 50, column: 12, scope: !3185)
!3191 = !DILocation(line: 50, column: 14, scope: !3185)
!3192 = !DILocation(line: 50, column: 24, scope: !3185)
!3193 = !DILocation(line: 50, column: 5, scope: !3185)
!3194 = !DILocation(line: 50, column: 29, scope: !3185)
!3195 = !DILocation(line: 50, column: 33, scope: !3185)
!3196 = !DILocation(line: 0, scope: !3185)
!3197 = !DILocation(line: 52, column: 8, scope: !3185)
!3198 = !DILocation(line: 53, column: 12, scope: !3185)
!3199 = !DILocation(line: 53, column: 16, scope: !3185)
!3200 = !DILocation(line: 55, column: 3, scope: !3185)
!3201 = !DILocation(line: 55, column: 5, scope: !3185)
!3202 = !DILocation(line: 55, column: 15, scope: !3185)
!3203 = !DILocation(line: 57, column: 2, scope: !3185)
!3204 = distinct !DISubprogram(name: "(*internal/task.Semaphore).Wait", linkageName: "(*internal/task.Semaphore).Wait", scope: !3205, file: !3205, line: 21, type: !3206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3209)
!3205 = !DIFile(filename: "semaphore.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!3208}
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64, dwarfAddressSpace: 0)
!3209 = !{!3210, !3211, !3212}
!3210 = !DILocalVariable(name: "s", arg: 1, scope: !3204, file: !3205, line: 21, type: !3208)
!3211 = !DILocalVariable(name: "delta", scope: !3204, file: !3205, line: 22, type: !384)
!3212 = !DILocalVariable(name: "value", scope: !3204, file: !3205, line: 23, type: !104)
!3213 = !DILocation(line: 21, column: 21, scope: !3204)
!3214 = !DILocation(line: 22, column: 2, scope: !3204)
!3215 = !DILocation(line: 23, column: 11, scope: !3204)
!3216 = !DILocation(line: 23, column: 13, scope: !3204)
!3217 = !DILocation(line: 23, column: 30, scope: !3204)
!3218 = !DILocation(line: 23, column: 22, scope: !3204)
!3219 = !DILocation(line: 23, column: 2, scope: !3204)
!3220 = !DILocation(line: 0, scope: !3204)
!3221 = !DILocation(line: 25, column: 12, scope: !3204)
!3222 = !DILocation(line: 25, column: 19, scope: !3204)
!3223 = !DILocation(line: 27, column: 4, scope: !3204)
!3224 = !DILocation(line: 29, column: 3, scope: !3204)
!3225 = !DILocation(line: 29, column: 5, scope: !3204)
!3226 = !DILocation(line: 29, column: 16, scope: !3204)
!3227 = !DILocation(line: 29, column: 15, scope: !3204)
!3228 = !DILocation(line: 30, column: 11, scope: !3204)
!3229 = !DILocation(line: 30, column: 13, scope: !3204)
!3230 = !DILocation(line: 30, column: 23, scope: !3204)
!3231 = !DILocation(line: 30, column: 3, scope: !3204)
!3232 = distinct !DISubprogram(name: "internal/task.Init", linkageName: "internal/task.Init", scope: !333, file: !333, line: 55, type: !3233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3235)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!49}
!3235 = !{!3236, !3237}
!3236 = !DILocalVariable(name: "sp", arg: 1, scope: !3232, file: !333, line: 55, type: !49)
!3237 = !DILocalVariable(name: "stackTop", scope: !3232, file: !333, line: 24, type: !49)
!3238 = !DILocation(line: 55, column: 6, scope: !3232)
!3239 = !DILocation(line: 56, column: 28, scope: !3232)
!3240 = !DILocation(line: 56, column: 17, scope: !3232)
!3241 = !DILocation(line: 57, column: 18, scope: !3232)
!3242 = !DILocation(line: 58, column: 2, scope: !3232)
!3243 = distinct !DISubprogram(name: "internal/task.Current", linkageName: "internal/task.Current", scope: !333, file: !333, line: 61, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3244)
!3244 = !{!3245}
!3245 = !DILocalVariable(name: "t", scope: !3243, file: !333, line: 62, type: !334)
!3246 = !DILocation(line: 62, column: 34, scope: !3243)
!3247 = !DILocation(line: 62, column: 2, scope: !3243)
!3248 = !DILocation(line: 63, column: 5, scope: !3243)
!3249 = !DILocation(line: 63, column: 7, scope: !3243)
!3250 = !DILocation(line: 0, scope: !3243)
!3251 = !DILocation(line: 64, column: 15, scope: !3243)
!3252 = !DILocation(line: 66, column: 9, scope: !3243)
!3253 = !DILocation(line: 66, column: 2, scope: !3243)
!3254 = distinct !DISubprogram(name: "internal/task.Pause", linkageName: "internal/task.Pause", scope: !333, file: !333, line: 73, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3255)
!3255 = !{!3256}
!3256 = !DILocalVariable(name: "t", scope: !3254, file: !333, line: 75, type: !334)
!3257 = !DILocation(line: 75, column: 14, scope: !3254)
!3258 = !DILocation(line: 75, column: 2, scope: !3254)
!3259 = !DILocation(line: 0, scope: !3254)
!3260 = !DILocation(line: 77, column: 27, scope: !3254)
!3261 = !DILocation(line: 77, column: 29, scope: !3254)
!3262 = !DILocation(line: 77, column: 35, scope: !3254)
!3263 = !DILocation(line: 77, column: 10, scope: !3254)
!3264 = !DILocation(line: 79, column: 2, scope: !3254)
!3265 = !DILocation(line: 79, column: 4, scope: !3254)
!3266 = !DILocation(line: 79, column: 10, scope: !3254)
!3267 = !DILocation(line: 79, column: 23, scope: !3254)
!3268 = !DILocation(line: 80, column: 2, scope: !3254)
!3269 = distinct !DISubprogram(name: "internal/task.taskExited", linkageName: "tinygo_task_exited", scope: !333, file: !333, line: 125, type: !3270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3272)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!334}
!3272 = !{!3273, !3274, !3275, !3277}
!3273 = !DILocalVariable(name: "t", arg: 1, scope: !3269, file: !333, line: 125, type: !334)
!3274 = !DILocalVariable(name: "found", scope: !3269, file: !333, line: 133, type: !374)
!3275 = !DILocalVariable(name: "q", scope: !3269, file: !333, line: 134, type: !3276)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64, dwarfAddressSpace: 0)
!3277 = !DILocalVariable(name: "otherGoroutines", scope: !3269, file: !333, line: 99, type: !104)
!3278 = !DILocation(line: 125, column: 6, scope: !3269)
!3279 = !DILocation(line: 0, scope: !3269)
!3280 = !DILocation(line: 127, column: 24, scope: !3269)
!3281 = !DILocation(line: 127, column: 26, scope: !3269)
!3282 = !DILocation(line: 127, column: 32, scope: !3269)
!3283 = !DILocation(line: 127, column: 10, scope: !3269)
!3284 = !DILocation(line: 132, column: 21, scope: !3269)
!3285 = !DILocation(line: 133, column: 2, scope: !3269)
!3286 = !DILocation(line: 134, column: 6, scope: !3269)
!3287 = !DILocation(line: 134, column: 26, scope: !3269)
!3288 = !DILocation(line: 134, column: 25, scope: !3269)
!3289 = !DILocation(line: 134, column: 28, scope: !3269)
!3290 = !DILocation(line: 135, column: 7, scope: !3269)
!3291 = !DILocation(line: 135, column: 6, scope: !3269)
!3292 = !DILocation(line: 135, column: 12, scope: !3269)
!3293 = !DILocation(line: 135, column: 9, scope: !3269)
!3294 = !DILocation(line: 136, column: 5, scope: !3269)
!3295 = !DILocation(line: 136, column: 9, scope: !3269)
!3296 = !DILocation(line: 136, column: 11, scope: !3269)
!3297 = !DILocation(line: 136, column: 17, scope: !3269)
!3298 = !DILocation(line: 136, column: 4, scope: !3269)
!3299 = !DILocation(line: 137, column: 4, scope: !3269)
!3300 = !DILocation(line: 134, column: 43, scope: !3269)
!3301 = !DILocation(line: 134, column: 42, scope: !3269)
!3302 = !DILocation(line: 134, column: 46, scope: !3269)
!3303 = !DILocation(line: 134, column: 52, scope: !3269)
!3304 = !DILocation(line: 134, column: 36, scope: !3269)
!3305 = !DILocation(line: 141, column: 2, scope: !3269)
!3306 = !DILocation(line: 142, column: 23, scope: !3269)
!3307 = !DILocation(line: 145, column: 6, scope: !3269)
!3308 = !DILocation(line: 148, column: 2, scope: !3269)
!3309 = !DILocation(line: 146, column: 15, scope: !3269)
!3310 = distinct !DISubprogram(name: "(*internal/task.waitGroup).done", linkageName: "(*internal/task.waitGroup).done", scope: !333, file: !333, line: 163, type: !3311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3314)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!3313}
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64, dwarfAddressSpace: 0)
!3314 = !{!3315}
!3315 = !DILocalVariable(name: "wg", arg: 1, scope: !3310, file: !333, line: 163, type: !3313)
!3316 = !DILocation(line: 163, column: 22, scope: !3310)
!3317 = !DILocation(line: 164, column: 5, scope: !3310)
!3318 = !DILocation(line: 164, column: 8, scope: !3310)
!3319 = !DILocation(line: 164, column: 13, scope: !3310)
!3320 = !DILocation(line: 164, column: 26, scope: !3310)
!3321 = !DILocation(line: 0, scope: !3310)
!3322 = !DILocation(line: 165, column: 3, scope: !3310)
!3323 = !DILocation(line: 165, column: 6, scope: !3310)
!3324 = !DILocation(line: 165, column: 15, scope: !3310)
!3325 = !DILocation(line: 167, column: 2, scope: !3310)
!3326 = distinct !DISubprogram(name: "(*internal/task.waitGroup).wait", linkageName: "(*internal/task.waitGroup).wait", scope: !333, file: !333, line: 169, type: !3311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3327)
!3327 = !{!3328, !3329}
!3328 = !DILocalVariable(name: "wg", arg: 1, scope: !3326, file: !333, line: 169, type: !3313)
!3329 = !DILocalVariable(name: "val", scope: !3326, file: !333, line: 171, type: !104)
!3330 = !DILocation(line: 169, column: 22, scope: !3326)
!3331 = !DILocation(line: 0, scope: !3326)
!3332 = !DILocation(line: 171, column: 10, scope: !3326)
!3333 = !DILocation(line: 171, column: 13, scope: !3326)
!3334 = !DILocation(line: 171, column: 19, scope: !3326)
!3335 = !DILocation(line: 171, column: 3, scope: !3326)
!3336 = !DILocation(line: 172, column: 6, scope: !3326)
!3337 = !DILocation(line: 172, column: 10, scope: !3326)
!3338 = !DILocation(line: 173, column: 4, scope: !3326)
!3339 = !DILocation(line: 175, column: 3, scope: !3326)
!3340 = !DILocation(line: 175, column: 6, scope: !3326)
!3341 = !DILocation(line: 175, column: 13, scope: !3326)
!3342 = !DILocation(line: 175, column: 12, scope: !3326)
!3343 = distinct !DISubprogram(name: "internal/task.initWaitGroup", linkageName: "internal/task.initWaitGroup", scope: !333, file: !333, line: 157, type: !3344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3346)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!104}
!3346 = !{!3347, !3348}
!3347 = !DILocalVariable(name: "n", arg: 1, scope: !3343, file: !333, line: 157, type: !104)
!3348 = !DILocalVariable(name: "wg", scope: !3343, file: !333, line: 158, type: !404)
!3349 = !DILocation(line: 157, column: 6, scope: !3343)
!3350 = !DILocation(line: 158, column: 6, scope: !3343)
!3351 = !DILocation(line: 159, column: 5, scope: !3343)
!3352 = !DILocation(line: 159, column: 2, scope: !3343)
!3353 = !DILocation(line: 159, column: 13, scope: !3343)
!3354 = !DILocation(line: 159, column: 12, scope: !3343)
!3355 = !DILocation(line: 160, column: 9, scope: !3343)
!3356 = !DILocation(line: 160, column: 2, scope: !3343)
!3357 = distinct !DISubprogram(name: "internal/task.GCStopWorldAndScan", linkageName: "internal/task.GCStopWorldAndScan", scope: !333, file: !333, line: 192, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3358)
!3358 = !{!3359, !3360, !3361, !3362, !3363, !3364}
!3359 = !DILocalVariable(name: "current", scope: !3357, file: !333, line: 193, type: !334)
!3360 = !DILocalVariable(name: "otherGoroutines", scope: !3357, file: !333, line: 99, type: !104)
!3361 = !DILocalVariable(name: "scanWaitGroup", scope: !3357, file: !333, line: 151, type: !404)
!3362 = !DILocalVariable(name: "activeTasks", scope: !3357, file: !333, line: 45, type: !334)
!3363 = !DILocalVariable(name: "t", scope: !3357, file: !333, line: 212, type: !334)
!3364 = !DILocalVariable(name: "t", scope: !3357, file: !333, line: 223, type: !334)
!3365 = !DILocation(line: 193, column: 20, scope: !3357)
!3366 = !DILocation(line: 193, column: 2, scope: !3357)
!3367 = !DILocation(line: 196, column: 17, scope: !3357)
!3368 = !DILocation(line: 196, column: 20, scope: !3357)
!3369 = !DILocation(line: 0, scope: !3357)
!3370 = !DILocation(line: 199, column: 22, scope: !3357)
!3371 = !DILocation(line: 202, column: 21, scope: !3357)
!3372 = !DILocation(line: 206, column: 16, scope: !3357)
!3373 = !DILocation(line: 209, column: 33, scope: !3357)
!3374 = !DILocation(line: 209, column: 32, scope: !3357)
!3375 = !DILocation(line: 209, column: 3, scope: !3357)
!3376 = !DILocation(line: 212, column: 12, scope: !3357)
!3377 = !DILocation(line: 212, column: 7, scope: !3357)
!3378 = !DILocation(line: 212, column: 25, scope: !3357)
!3379 = !DILocation(line: 212, column: 27, scope: !3357)
!3380 = !DILocation(line: 213, column: 7, scope: !3357)
!3381 = !DILocation(line: 213, column: 12, scope: !3357)
!3382 = !DILocation(line: 213, column: 9, scope: !3357)
!3383 = !DILocation(line: 214, column: 32, scope: !3357)
!3384 = !DILocation(line: 214, column: 34, scope: !3357)
!3385 = !DILocation(line: 214, column: 40, scope: !3357)
!3386 = !DILocation(line: 214, column: 31, scope: !3357)
!3387 = !DILocation(line: 212, column: 39, scope: !3357)
!3388 = !DILocation(line: 212, column: 41, scope: !3357)
!3389 = !DILocation(line: 212, column: 47, scope: !3357)
!3390 = !DILocation(line: 212, column: 35, scope: !3357)
!3391 = !DILocation(line: 219, column: 21, scope: !3357)
!3392 = !DILocation(line: 223, column: 11, scope: !3357)
!3393 = !DILocation(line: 223, column: 6, scope: !3357)
!3394 = !DILocation(line: 223, column: 24, scope: !3357)
!3395 = !DILocation(line: 223, column: 26, scope: !3357)
!3396 = !DILocation(line: 224, column: 6, scope: !3357)
!3397 = !DILocation(line: 224, column: 11, scope: !3357)
!3398 = !DILocation(line: 224, column: 8, scope: !3357)
!3399 = !DILocation(line: 225, column: 14, scope: !3357)
!3400 = !DILocation(line: 225, column: 16, scope: !3357)
!3401 = !DILocation(line: 225, column: 22, scope: !3357)
!3402 = !DILocation(line: 225, column: 35, scope: !3357)
!3403 = !DILocation(line: 225, column: 37, scope: !3357)
!3404 = !DILocation(line: 225, column: 43, scope: !3357)
!3405 = !DILocation(line: 225, column: 13, scope: !3357)
!3406 = !DILocation(line: 223, column: 38, scope: !3357)
!3407 = !DILocation(line: 223, column: 40, scope: !3357)
!3408 = !DILocation(line: 223, column: 46, scope: !3357)
!3409 = !DILocation(line: 223, column: 34, scope: !3357)
!3410 = !DILocation(line: 230, column: 18, scope: !3357)
!3411 = !DILocation(line: 233, column: 15, scope: !3357)
!3412 = !DILocation(line: 234, column: 2, scope: !3357)
!3413 = distinct !DISubprogram(name: "internal/task.GCResumeWorld", linkageName: "internal/task.GCResumeWorld", scope: !333, file: !333, line: 237, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3414)
!3414 = !{!3415, !3416}
!3415 = !DILocalVariable(name: "otherGoroutines", scope: !3413, file: !333, line: 99, type: !104)
!3416 = !DILocalVariable(name: "scanWaitGroup", scope: !3413, file: !333, line: 151, type: !404)
!3417 = !DILocation(line: 239, column: 17, scope: !3413)
!3418 = !DILocation(line: 239, column: 20, scope: !3413)
!3419 = !DILocation(line: 0, scope: !3413)
!3420 = !DILocation(line: 241, column: 3, scope: !3413)
!3421 = !DILocation(line: 245, column: 32, scope: !3413)
!3422 = !DILocation(line: 245, column: 31, scope: !3413)
!3423 = !DILocation(line: 245, column: 2, scope: !3413)
!3424 = !DILocation(line: 248, column: 15, scope: !3413)
!3425 = !DILocation(line: 251, column: 17, scope: !3413)
!3426 = !DILocation(line: 254, column: 23, scope: !3413)
!3427 = !DILocation(line: 255, column: 2, scope: !3413)
!3428 = distinct !DISubprogram(name: "internal/task.tingyo_task_gc_pause", linkageName: "tinygo_task_gc_pause", scope: !333, file: !333, line: 266, type: !3429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!384}
!3431 = !{!3432, !3433}
!3432 = !DILocalVariable(name: "sig", arg: 1, scope: !3428, file: !333, line: 266, type: !384)
!3433 = !DILocalVariable(name: "stackBottom", scope: !3428, file: !333, line: 28, type: !49)
!3434 = !DILocation(line: 266, column: 6, scope: !3428)
!3435 = !DILocation(line: 268, column: 9, scope: !3428)
!3436 = !DILocation(line: 268, column: 12, scope: !3428)
!3437 = !DILocation(line: 268, column: 49, scope: !3428)
!3438 = !DILocation(line: 268, column: 39, scope: !3428)
!3439 = !DILocation(line: 268, column: 18, scope: !3428)
!3440 = !DILocation(line: 271, column: 20, scope: !3428)
!3441 = !DILocation(line: 0, scope: !3428)
!3442 = !DILocation(line: 274, column: 18, scope: !3428)
!3443 = !DILocation(line: 274, column: 21, scope: !3428)
!3444 = !DILocation(line: 275, column: 15, scope: !3428)
!3445 = !DILocation(line: 279, column: 20, scope: !3428)
!3446 = !DILocation(line: 280, column: 2, scope: !3428)
!3447 = distinct !DISubprogram(name: "internal/task.StackTop", linkageName: "internal/task.StackTop", scope: !333, file: !333, line: 289, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527)
!3448 = !DILocation(line: 290, column: 16, scope: !3447)
!3449 = !DILocation(line: 290, column: 19, scope: !3447)
!3450 = !DILocation(line: 290, column: 25, scope: !3447)
!3451 = !DILocation(line: 290, column: 2, scope: !3447)
!3452 = distinct !DISubprogram(name: "runtime.alloc", linkageName: "runtime.alloc", scope: !424, file: !424, line: 68, type: !3453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3455)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!49, !90}
!3455 = !{!3456, !3457, !3458}
!3456 = !DILocalVariable(name: "size", arg: 1, scope: !3452, file: !424, line: 68, type: !49)
!3457 = !DILocalVariable(name: "layout", arg: 2, scope: !3452, file: !424, line: 68, type: !90)
!3458 = !DILocalVariable(name: "ptr", scope: !3452, file: !424, line: 74, type: !90)
!3459 = !DILocation(line: 68, column: 6, scope: !3452)
!3460 = !DILocation(line: 69, column: 5, scope: !3452)
!3461 = !DILocation(line: 69, column: 10, scope: !3452)
!3462 = !DILocation(line: 0, scope: !3452)
!3463 = !DILocation(line: 70, column: 3, scope: !3452)
!3464 = !DILocation(line: 73, column: 13, scope: !3452)
!3465 = !DILocation(line: 74, column: 6, scope: !3452)
!3466 = !DILocation(line: 75, column: 5, scope: !3452)
!3467 = !DILocation(line: 75, column: 36, scope: !3452)
!3468 = !DILocation(line: 75, column: 12, scope: !3452)
!3469 = !DILocation(line: 79, column: 29, scope: !3452)
!3470 = !DILocation(line: 79, column: 28, scope: !3452)
!3471 = !DILocation(line: 79, column: 3, scope: !3452)
!3472 = !DILocation(line: 82, column: 11, scope: !3452)
!3473 = !DILocation(line: 82, column: 16, scope: !3452)
!3474 = !DILocation(line: 82, column: 10, scope: !3452)
!3475 = !DILocation(line: 90, column: 15, scope: !3452)
!3476 = !DILocation(line: 91, column: 15, scope: !3452)
!3477 = !DILocation(line: 92, column: 5, scope: !3452)
!3478 = !DILocation(line: 92, column: 9, scope: !3452)
!3479 = !DILocation(line: 93, column: 15, scope: !3452)
!3480 = !DILocation(line: 96, column: 9, scope: !3452)
!3481 = !DILocation(line: 96, column: 2, scope: !3452)
!3482 = !DILocation(line: 86, column: 22, scope: !3452)
!3483 = !DILocation(line: 86, column: 21, scope: !3452)
!3484 = !DILocation(line: 86, column: 3, scope: !3452)
!3485 = distinct !DISubprogram(name: "runtime.memzero", linkageName: "runtime.memzero", scope: !1584, file: !1584, line: 53, type: !3486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3488)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!90, !49}
!3488 = !{!3489, !3490}
!3489 = !DILocalVariable(name: "ptr", arg: 1, scope: !3485, file: !1584, line: 53, type: !90)
!3490 = !DILocalVariable(name: "size", arg: 2, scope: !3485, file: !1584, line: 53, type: !49)
!3491 = !DILocation(line: 53, column: 6, scope: !3485)
!3492 = distinct !DISubprogram(name: "runtime.gcResumeWorld", linkageName: "runtime.gcResumeWorld", scope: !3493, file: !3493, line: 27, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3493 = !DIFile(filename: "gc_stack_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3494 = !DILocation(line: 28, column: 20, scope: !3492)
!3495 = !DILocation(line: 29, column: 2, scope: !3492)
!3496 = distinct !DISubprogram(name: "runtime.runtimePanic", linkageName: "runtime.runtimePanic", scope: !431, file: !431, line: 85, type: !1970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3497)
!3497 = !{!3498}
!3498 = !DILocalVariable(name: "msg", arg: 1, scope: !3496, file: !431, line: 85, type: !44)
!3499 = !DILocation(line: 85, column: 6, scope: !3496)
!3500 = !DILocation(line: 88, column: 30, scope: !3496)
!3501 = !DILocation(line: 88, column: 35, scope: !3496)
!3502 = !DILocation(line: 88, column: 16, scope: !3496)
!3503 = !DILocation(line: 89, column: 2, scope: !3496)
!3504 = distinct !DISubprogram(name: "runtime.runtimePanicAt", linkageName: "runtime.runtimePanicAt", scope: !431, file: !431, line: 91, type: !3505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3507)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!90, !44}
!3507 = !{!3508, !3509}
!3508 = !DILocalVariable(name: "addr", arg: 1, scope: !3504, file: !431, line: 91, type: !90)
!3509 = !DILocalVariable(name: "msg", arg: 2, scope: !3504, file: !431, line: 91, type: !44)
!3510 = !DILocation(line: 91, column: 6, scope: !3504)
!3511 = !DILocation(line: 0, scope: !3504)
!3512 = !DILocation(line: 93, column: 7, scope: !3504)
!3513 = !DILocation(line: 99, column: 14, scope: !3504)
!3514 = !DILocation(line: 100, column: 20, scope: !3504)
!3515 = !DILocation(line: 100, column: 19, scope: !3504)
!3516 = !DILocation(line: 100, column: 26, scope: !3504)
!3517 = !DILocation(line: 100, column: 11, scope: !3504)
!3518 = !DILocation(line: 101, column: 14, scope: !3504)
!3519 = !DILocation(line: 105, column: 14, scope: !3504)
!3520 = !DILocation(line: 105, column: 13, scope: !3504)
!3521 = !DILocation(line: 106, column: 9, scope: !3504)
!3522 = !DILocation(line: 107, column: 7, scope: !3504)
!3523 = !DILocation(line: 108, column: 2, scope: !3504)
!3524 = !DILocation(line: 103, column: 14, scope: !3504)
!3525 = distinct !DISubprogram(name: "runtime.printstring", linkageName: "runtime.printstring", scope: !461, file: !461, line: 12, type: !1970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3526)
!3526 = !{!3527, !3528}
!3527 = !DILocalVariable(name: "s", arg: 1, scope: !3525, file: !461, line: 12, type: !44)
!3528 = !DILocalVariable(name: "i", scope: !3525, file: !461, line: 13, type: !1916)
!3529 = !DILocation(line: 12, column: 6, scope: !3525)
!3530 = !DILocation(line: 13, column: 6, scope: !3525)
!3531 = !DILocation(line: 0, scope: !3525)
!3532 = !DILocation(line: 13, column: 14, scope: !3525)
!3533 = !DILocation(line: 13, column: 22, scope: !3525)
!3534 = !DILocation(line: 13, column: 21, scope: !3525)
!3535 = !DILocation(line: 13, column: 16, scope: !3525)
!3536 = !DILocation(line: 14, column: 13, scope: !3525)
!3537 = !DILocation(line: 14, column: 11, scope: !3525)
!3538 = !DILocation(line: 14, column: 12, scope: !3525)
!3539 = !DILocation(line: 14, column: 10, scope: !3525)
!3540 = !DILocation(line: 13, column: 26, scope: !3525)
!3541 = !DILocation(line: 16, column: 2, scope: !3525)
!3542 = distinct !DISubprogram(name: "runtime.printptr", linkageName: "runtime.printptr", scope: !461, file: !461, line: 371, type: !3233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3543)
!3543 = !{!3544, !3545, !3546}
!3544 = !DILocalVariable(name: "ptr", arg: 1, scope: !3542, file: !461, line: 371, type: !49)
!3545 = !DILocalVariable(name: "i", scope: !3542, file: !461, line: 378, type: !1916)
!3546 = !DILocalVariable(name: "nibble", scope: !3542, file: !461, line: 379, type: !536)
!3547 = !DILocation(line: 371, column: 6, scope: !3542)
!3548 = !DILocation(line: 372, column: 5, scope: !3542)
!3549 = !DILocation(line: 372, column: 9, scope: !3542)
!3550 = !DILocation(line: 0, scope: !3542)
!3551 = !DILocation(line: 373, column: 14, scope: !3542)
!3552 = !DILocation(line: 374, column: 3, scope: !3542)
!3553 = !DILocation(line: 376, column: 9, scope: !3542)
!3554 = !DILocation(line: 377, column: 9, scope: !3542)
!3555 = !DILocation(line: 378, column: 6, scope: !3542)
!3556 = !DILocation(line: 371, column: 15, scope: !3542)
!3557 = !DILocation(line: 378, column: 14, scope: !3542)
!3558 = !DILocation(line: 378, column: 16, scope: !3542)
!3559 = !DILocation(line: 379, column: 18, scope: !3542)
!3560 = !DILocation(line: 379, column: 22, scope: !3542)
!3561 = !DILocation(line: 379, column: 17, scope: !3542)
!3562 = !DILocation(line: 379, column: 3, scope: !3542)
!3563 = !DILocation(line: 380, column: 6, scope: !3542)
!3564 = !DILocation(line: 380, column: 13, scope: !3542)
!3565 = !DILocation(line: 381, column: 12, scope: !3542)
!3566 = !DILocation(line: 381, column: 19, scope: !3542)
!3567 = !DILocation(line: 381, column: 11, scope: !3542)
!3568 = !DILocation(line: 385, column: 3, scope: !3542)
!3569 = !DILocation(line: 378, column: 45, scope: !3542)
!3570 = !DILocation(line: 383, column: 12, scope: !3542)
!3571 = !DILocation(line: 383, column: 19, scope: !3542)
!3572 = !DILocation(line: 383, column: 24, scope: !3542)
!3573 = !DILocation(line: 383, column: 11, scope: !3542)
!3574 = !DILocation(line: 387, column: 2, scope: !3542)
!3575 = distinct !DISubprogram(name: "runtime.printnl", linkageName: "runtime.printnl", scope: !461, file: !461, line: 286, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3576 = !DILocation(line: 0, scope: !3575)
!3577 = !DILocation(line: 288, column: 10, scope: !3575)
!3578 = !DILocation(line: 290, column: 9, scope: !3575)
!3579 = !DILocation(line: 291, column: 2, scope: !3575)
!3580 = distinct !DISubprogram(name: "runtime.putchar", linkageName: "runtime.putchar", scope: !417, file: !417, line: 214, type: !3581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3583)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!536}
!3583 = !{!3584}
!3584 = !DILocalVariable(name: "c", arg: 1, scope: !3580, file: !417, line: 214, type: !536)
!3585 = !DILocation(line: 214, column: 6, scope: !3580)
!3586 = !DILocation(line: 215, column: 2, scope: !3580)
!3587 = !DILocation(line: 215, column: 17, scope: !3580)
!3588 = !DILocation(line: 216, column: 35, scope: !3580)
!3589 = !DILocation(line: 216, column: 12, scope: !3580)
!3590 = !DILocation(line: 217, column: 2, scope: !3580)
!3591 = distinct !DISubprogram(name: "runtime.initRand", linkageName: "runtime.initRand", scope: !412, file: !412, line: 26, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3592)
!3592 = !{!3593, !3594, !3595}
!3593 = !DILocalVariable(name: "r", scope: !3591, file: !412, line: 27, type: !341)
!3594 = !DILocalVariable(name: "xorshift64State", scope: !3591, file: !412, line: 52, type: !341)
!3595 = !DILocalVariable(name: "xorshift32State", scope: !3591, file: !412, line: 32, type: !104)
!3596 = !DILocation(line: 27, column: 22, scope: !3591)
!3597 = !DILocation(line: 27, column: 2, scope: !3591)
!3598 = !DILocation(line: 28, column: 27, scope: !3591)
!3599 = !DILocation(line: 28, column: 29, scope: !3591)
!3600 = !DILocation(line: 28, column: 2, scope: !3591)
!3601 = !DILocation(line: 29, column: 27, scope: !3591)
!3602 = !DILocation(line: 29, column: 26, scope: !3591)
!3603 = !DILocation(line: 29, column: 2, scope: !3591)
!3604 = !DILocation(line: 30, column: 2, scope: !3591)
!3605 = distinct !DISubprogram(name: "runtime.hardwareRand", linkageName: "runtime.hardwareRand", scope: !3606, file: !3606, line: 137, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3607)
!3606 = !DIFile(filename: "os_linux.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3607 = !{!3608, !3609}
!3608 = !DILocalVariable(name: "read", scope: !3605, file: !3606, line: 138, type: !104)
!3609 = !DILocalVariable(name: "n", scope: !3605, file: !3606, line: 137, type: !341)
!3610 = !DILocation(line: 137, column: 22, scope: !3605)
!3611 = !DILocation(line: 138, column: 24, scope: !3605)
!3612 = !DILocation(line: 138, column: 2, scope: !3605)
!3613 = !DILocation(line: 139, column: 5, scope: !3605)
!3614 = !DILocation(line: 139, column: 10, scope: !3605)
!3615 = !DILocation(line: 0, scope: !3605)
!3616 = !DILocation(line: 140, column: 3, scope: !3605)
!3617 = !DILocation(line: 142, column: 9, scope: !3605)
!3618 = !DILocation(line: 142, column: 2, scope: !3605)
!3619 = distinct !DISubprogram(name: "runtime.getCurrentStackPointer", linkageName: "runtime.getCurrentStackPointer", scope: !3620, file: !3620, line: 26, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3620 = !DIFile(filename: "arch_amd64.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3621 = !DILocation(line: 27, column: 26, scope: !3619)
!3622 = !DILocation(line: 27, column: 16, scope: !3619)
!3623 = !DILocation(line: 27, column: 2, scope: !3619)
!3624 = distinct !DISubprogram(name: "runtime.stacksave", linkageName: "runtime.stacksave", scope: !1584, file: !1584, line: 58, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3625 = !DILocation(line: 58, column: 6, scope: !3624)
!3626 = distinct !DISubprogram(name: "runtime.memcpy", linkageName: "runtime.memcpy", scope: !1584, file: !1584, line: 42, type: !3627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3629)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!90, !90, !49}
!3629 = !{!3630, !3631, !3632}
!3630 = !DILocalVariable(name: "dst", arg: 1, scope: !3626, file: !1584, line: 42, type: !90)
!3631 = !DILocalVariable(name: "src", arg: 2, scope: !3626, file: !1584, line: 42, type: !90)
!3632 = !DILocalVariable(name: "size", arg: 3, scope: !3626, file: !1584, line: 42, type: !49)
!3633 = !DILocation(line: 42, column: 6, scope: !3626)
!3634 = distinct !DISubprogram(name: "runtime.nilPanic", linkageName: "runtime.nilPanic", scope: !431, file: !431, line: 183, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3635 = !DILocation(line: 184, column: 30, scope: !3634)
!3636 = !DILocation(line: 184, column: 16, scope: !3634)
!3637 = !DILocation(line: 185, column: 2, scope: !3634)
!3638 = distinct !DISubprogram(name: "runtime.deadlock", linkageName: "runtime.deadlock", scope: !518, file: !518, line: 42, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3639 = !DILocation(line: 44, column: 12, scope: !3638)
!3640 = !DILocation(line: 45, column: 2, scope: !3638)
!3641 = distinct !DISubprogram(name: "runtime.lookupPanic", linkageName: "runtime.lookupPanic", scope: !431, file: !431, line: 193, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3642 = !DILocation(line: 194, column: 30, scope: !3641)
!3643 = !DILocation(line: 194, column: 16, scope: !3641)
!3644 = !DILocation(line: 195, column: 2, scope: !3641)
!3645 = distinct !DISubprogram(name: "runtime.panicOrGoexit", linkageName: "runtime.panicOrGoexit", scope: !431, file: !431, line: 58, type: !3646, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3649)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!781, !3648}
!3648 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.panicState", baseType: !4)
!3649 = !{!3650, !3651, !3652, !3663, !3664}
!3650 = !DILocalVariable(name: "message", arg: 1, scope: !3645, file: !431, line: 58, type: !781)
!3651 = !DILocalVariable(name: "panicking", arg: 2, scope: !3645, file: !431, line: 58, type: !3648)
!3652 = !DILocalVariable(name: "frame", scope: !3645, file: !431, line: 65, type: !3653)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64, align: 64, dwarfAddressSpace: 0)
!3654 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.deferFrame", baseType: !3655)
!3655 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !3656)
!3656 = !{!3657, !3658, !3659, !3660, !3661, !3662}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "JumpSP", baseType: !90, size: 64, align: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "JumpPC", baseType: !90, size: 64, align: 64, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraRegs", baseType: !2593, align: 64, offset: 128)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "Previous", baseType: !3653, size: 64, align: 64, offset: 128)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "Panicking", baseType: !3648, size: 8, align: 8, offset: 192)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "PanicValue", baseType: !781, size: 128, align: 64, offset: 256)
!3663 = !DILocalVariable(name: "PanicValue", scope: !3645, file: !431, line: 42, type: !781)
!3664 = !DILocalVariable(name: "Panicking", scope: !3645, file: !431, line: 41, type: !3648)
!3665 = !DILocation(line: 58, column: 6, scope: !3645)
!3666 = !DILocation(line: 0, scope: !3645)
!3667 = !DILocation(line: 60, column: 7, scope: !3645)
!3668 = !DILocation(line: 64, column: 39, scope: !3645)
!3669 = !DILocation(line: 65, column: 38, scope: !3645)
!3670 = !DILocation(line: 65, column: 41, scope: !3645)
!3671 = !DILocation(line: 65, column: 3, scope: !3645)
!3672 = !DILocation(line: 66, column: 6, scope: !3645)
!3673 = !DILocation(line: 66, column: 12, scope: !3645)
!3674 = !DILocation(line: 67, column: 4, scope: !3645)
!3675 = !DILocation(line: 67, column: 23, scope: !3645)
!3676 = !DILocation(line: 67, column: 10, scope: !3645)
!3677 = !DILocation(line: 68, column: 4, scope: !3645)
!3678 = !DILocation(line: 68, column: 22, scope: !3645)
!3679 = !DILocation(line: 68, column: 10, scope: !3645)
!3680 = !DILocation(line: 69, column: 19, scope: !3645)
!3681 = !DILocation(line: 69, column: 18, scope: !3645)
!3682 = !DILocation(line: 73, column: 5, scope: !3645)
!3683 = !DILocation(line: 73, column: 15, scope: !3645)
!3684 = !DILocation(line: 76, column: 11, scope: !3645)
!3685 = !DILocation(line: 78, column: 13, scope: !3645)
!3686 = !DILocation(line: 79, column: 11, scope: !3645)
!3687 = !DILocation(line: 79, column: 10, scope: !3645)
!3688 = !DILocation(line: 80, column: 9, scope: !3645)
!3689 = !DILocation(line: 81, column: 7, scope: !3645)
!3690 = !DILocation(line: 82, column: 2, scope: !3645)
!3691 = distinct !DISubprogram(name: "runtime.printitf", linkageName: "runtime.printitf", scope: !461, file: !461, line: 293, type: !3692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3694)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!781}
!3694 = !{!3695, !3696, !3697, !3698, !3699, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3711, !3712, !3714, !3716, !3717, !3718, !3720}
!3695 = !DILocalVariable(name: "msg", arg: 1, scope: !3691, file: !461, line: 293, type: !781)
!3696 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !374)
!3697 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !1916)
!3698 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !88)
!3699 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !3700)
!3700 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!3701 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !384)
!3702 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !1699)
!3703 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !1738)
!3704 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !4)
!3705 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !96)
!3706 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !104)
!3707 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !341)
!3708 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !49)
!3709 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !3710)
!3710 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!3711 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !798)
!3712 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !3713)
!3713 = !DIBasicType(name: "complex64", size: 64, encoding: DW_ATE_complex_float)
!3714 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !3715)
!3715 = !DIBasicType(name: "complex128", size: 128, encoding: DW_ATE_complex_float)
!3716 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !44)
!3717 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !780)
!3718 = !DILocalVariable(name: "msg", scope: !3691, file: !461, line: 294, type: !3719)
!3719 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.stringer", baseType: !781)
!3720 = !DILocalVariable(name: "itf", scope: !3691, file: !461, line: 345, type: !781)
!3721 = !DILocation(line: 293, column: 6, scope: !3691)
!3722 = !DILocation(line: 294, column: 16, scope: !3691)
!3723 = !DILocation(line: 295, column: 2, scope: !3691)
!3724 = !DILocation(line: 0, scope: !3691)
!3725 = !DILocation(line: 296, column: 13, scope: !3691)
!3726 = !DILocation(line: 296, column: 12, scope: !3691)
!3727 = !DILocation(line: 352, column: 2, scope: !3691)
!3728 = !DILocation(line: 297, column: 2, scope: !3691)
!3729 = !DILocation(line: 300, column: 21, scope: !3691)
!3730 = !DILocation(line: 300, column: 14, scope: !3691)
!3731 = !DILocation(line: 302, column: 21, scope: !3691)
!3732 = !DILocation(line: 302, column: 20, scope: !3691)
!3733 = !DILocation(line: 302, column: 14, scope: !3691)
!3734 = !DILocation(line: 304, column: 2, scope: !3691)
!3735 = !DILocation(line: 305, column: 13, scope: !3691)
!3736 = !DILocation(line: 305, column: 12, scope: !3691)
!3737 = !DILocation(line: 306, column: 2, scope: !3691)
!3738 = !DILocation(line: 307, column: 14, scope: !3691)
!3739 = !DILocation(line: 307, column: 13, scope: !3691)
!3740 = !DILocation(line: 308, column: 2, scope: !3691)
!3741 = !DILocation(line: 309, column: 14, scope: !3691)
!3742 = !DILocation(line: 309, column: 13, scope: !3691)
!3743 = !DILocation(line: 310, column: 2, scope: !3691)
!3744 = !DILocation(line: 311, column: 14, scope: !3691)
!3745 = !DILocation(line: 311, column: 13, scope: !3691)
!3746 = !DILocation(line: 312, column: 2, scope: !3691)
!3747 = !DILocation(line: 315, column: 23, scope: !3691)
!3748 = !DILocation(line: 315, column: 15, scope: !3691)
!3749 = !DILocation(line: 317, column: 23, scope: !3691)
!3750 = !DILocation(line: 317, column: 22, scope: !3691)
!3751 = !DILocation(line: 317, column: 15, scope: !3691)
!3752 = !DILocation(line: 319, column: 2, scope: !3691)
!3753 = !DILocation(line: 320, column: 14, scope: !3691)
!3754 = !DILocation(line: 320, column: 13, scope: !3691)
!3755 = !DILocation(line: 321, column: 2, scope: !3691)
!3756 = !DILocation(line: 322, column: 15, scope: !3691)
!3757 = !DILocation(line: 322, column: 14, scope: !3691)
!3758 = !DILocation(line: 323, column: 2, scope: !3691)
!3759 = !DILocation(line: 324, column: 15, scope: !3691)
!3760 = !DILocation(line: 324, column: 14, scope: !3691)
!3761 = !DILocation(line: 325, column: 2, scope: !3691)
!3762 = !DILocation(line: 326, column: 15, scope: !3691)
!3763 = !DILocation(line: 326, column: 14, scope: !3691)
!3764 = !DILocation(line: 327, column: 2, scope: !3691)
!3765 = !DILocation(line: 328, column: 16, scope: !3691)
!3766 = !DILocation(line: 328, column: 15, scope: !3691)
!3767 = !DILocation(line: 329, column: 2, scope: !3691)
!3768 = !DILocation(line: 330, column: 16, scope: !3691)
!3769 = !DILocation(line: 330, column: 15, scope: !3691)
!3770 = !DILocation(line: 331, column: 2, scope: !3691)
!3771 = !DILocation(line: 332, column: 16, scope: !3691)
!3772 = !DILocation(line: 332, column: 15, scope: !3691)
!3773 = !DILocation(line: 333, column: 2, scope: !3691)
!3774 = !DILocation(line: 334, column: 18, scope: !3691)
!3775 = !DILocation(line: 334, column: 17, scope: !3691)
!3776 = !DILocation(line: 335, column: 2, scope: !3691)
!3777 = !DILocation(line: 336, column: 19, scope: !3691)
!3778 = !DILocation(line: 336, column: 18, scope: !3691)
!3779 = !DILocation(line: 337, column: 2, scope: !3691)
!3780 = !DILocation(line: 338, column: 15, scope: !3691)
!3781 = !DILocation(line: 338, column: 14, scope: !3691)
!3782 = !DILocation(line: 339, column: 2, scope: !3691)
!3783 = !DILocation(line: 340, column: 15, scope: !3691)
!3784 = !DILocation(line: 340, column: 24, scope: !3691)
!3785 = !DILocation(line: 340, column: 14, scope: !3691)
!3786 = !DILocation(line: 341, column: 2, scope: !3691)
!3787 = !DILocation(line: 342, column: 15, scope: !3691)
!3788 = !DILocation(line: 342, column: 25, scope: !3691)
!3789 = !DILocation(line: 342, column: 14, scope: !3691)
!3790 = !DILocation(line: 294, column: 9, scope: !3691)
!3791 = !DILocation(line: 345, column: 10, scope: !3691)
!3792 = !DILocation(line: 345, column: 3, scope: !3691)
!3793 = !DILocation(line: 346, column: 10, scope: !3691)
!3794 = !DILocation(line: 347, column: 28, scope: !3691)
!3795 = !DILocation(line: 347, column: 23, scope: !3691)
!3796 = !DILocation(line: 347, column: 15, scope: !3691)
!3797 = !DILocation(line: 348, column: 10, scope: !3691)
!3798 = !DILocation(line: 349, column: 24, scope: !3691)
!3799 = !DILocation(line: 349, column: 19, scope: !3691)
!3800 = !DILocation(line: 349, column: 11, scope: !3691)
!3801 = !DILocation(line: 350, column: 10, scope: !3691)
!3802 = distinct !DISubprogram(name: "runtime.printbool", linkageName: "runtime.printbool", scope: !461, file: !461, line: 389, type: !3803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3805)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!374}
!3805 = !{!3806}
!3806 = !DILocalVariable(name: "b", arg: 1, scope: !3802, file: !461, line: 389, type: !374)
!3807 = !DILocation(line: 389, column: 6, scope: !3802)
!3808 = !DILocation(line: 390, column: 5, scope: !3802)
!3809 = !DILocation(line: 0, scope: !3802)
!3810 = !DILocation(line: 391, column: 14, scope: !3802)
!3811 = !DILocation(line: 395, column: 2, scope: !3802)
!3812 = !DILocation(line: 393, column: 14, scope: !3802)
!3813 = distinct !DISubprogram(name: "runtime.printint64", linkageName: "runtime.printint64", scope: !461, file: !461, line: 94, type: !3814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3816)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!1699}
!3816 = !{!3817}
!3817 = !DILocalVariable(name: "n", arg: 1, scope: !3813, file: !461, line: 94, type: !1699)
!3818 = !DILocation(line: 94, column: 6, scope: !3813)
!3819 = !DILocation(line: 95, column: 5, scope: !3813)
!3820 = !DILocation(line: 95, column: 7, scope: !3813)
!3821 = !DILocation(line: 0, scope: !3813)
!3822 = !DILocation(line: 96, column: 10, scope: !3813)
!3823 = !DILocation(line: 97, column: 8, scope: !3813)
!3824 = !DILocation(line: 97, column: 7, scope: !3813)
!3825 = !DILocation(line: 97, column: 3, scope: !3813)
!3826 = !DILocation(line: 94, column: 17, scope: !3813)
!3827 = !DILocation(line: 99, column: 21, scope: !3813)
!3828 = !DILocation(line: 99, column: 13, scope: !3813)
!3829 = !DILocation(line: 100, column: 2, scope: !3813)
!3830 = distinct !DISubprogram(name: "runtime.printint32", linkageName: "runtime.printint32", scope: !461, file: !461, line: 65, type: !3429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3831)
!3831 = !{!3832}
!3832 = !DILocalVariable(name: "n", arg: 1, scope: !3830, file: !461, line: 65, type: !384)
!3833 = !DILocation(line: 65, column: 6, scope: !3830)
!3834 = !DILocation(line: 68, column: 5, scope: !3830)
!3835 = !DILocation(line: 68, column: 7, scope: !3830)
!3836 = !DILocation(line: 0, scope: !3830)
!3837 = !DILocation(line: 69, column: 10, scope: !3830)
!3838 = !DILocation(line: 70, column: 8, scope: !3830)
!3839 = !DILocation(line: 70, column: 7, scope: !3830)
!3840 = !DILocation(line: 70, column: 3, scope: !3830)
!3841 = !DILocation(line: 65, column: 17, scope: !3830)
!3842 = !DILocation(line: 72, column: 21, scope: !3830)
!3843 = !DILocation(line: 72, column: 13, scope: !3830)
!3844 = !DILocation(line: 73, column: 2, scope: !3830)
!3845 = distinct !DISubprogram(name: "runtime.printint8", linkageName: "runtime.printint8", scope: !461, file: !461, line: 30, type: !3846, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3848)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!88}
!3848 = !{!3849}
!3849 = !DILocalVariable(name: "n", arg: 1, scope: !3845, file: !461, line: 30, type: !88)
!3850 = !DILocation(line: 30, column: 6, scope: !3845)
!3851 = !DILocation(line: 0, scope: !3845)
!3852 = !DILocation(line: 32, column: 20, scope: !3845)
!3853 = !DILocation(line: 32, column: 19, scope: !3845)
!3854 = !DILocation(line: 32, column: 13, scope: !3845)
!3855 = !DILocation(line: 40, column: 2, scope: !3845)
!3856 = !DILocation(line: 34, column: 6, scope: !3845)
!3857 = !DILocation(line: 34, column: 8, scope: !3845)
!3858 = !DILocation(line: 35, column: 11, scope: !3845)
!3859 = !DILocation(line: 36, column: 9, scope: !3845)
!3860 = !DILocation(line: 36, column: 8, scope: !3845)
!3861 = !DILocation(line: 36, column: 4, scope: !3845)
!3862 = !DILocation(line: 30, column: 16, scope: !3845)
!3863 = !DILocation(line: 38, column: 20, scope: !3845)
!3864 = !DILocation(line: 38, column: 13, scope: !3845)
!3865 = distinct !DISubprogram(name: "runtime.printint16", linkageName: "runtime.printint16", scope: !461, file: !461, line: 57, type: !3866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3868)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!3700}
!3868 = !{!3869}
!3869 = !DILocalVariable(name: "n", arg: 1, scope: !3865, file: !461, line: 57, type: !3700)
!3870 = !DILocation(line: 57, column: 6, scope: !3865)
!3871 = !DILocation(line: 58, column: 19, scope: !3865)
!3872 = !DILocation(line: 58, column: 18, scope: !3865)
!3873 = !DILocation(line: 58, column: 12, scope: !3865)
!3874 = !DILocation(line: 59, column: 2, scope: !3865)
!3875 = distinct !DISubprogram(name: "runtime.printuint64", linkageName: "runtime.printuint64", scope: !461, file: !461, line: 76, type: !3876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3878)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!341}
!3878 = !{!3879, !3880, !3881, !3882, !3883}
!3879 = !DILocalVariable(name: "n", arg: 1, scope: !3875, file: !461, line: 76, type: !341)
!3880 = !DILocalVariable(name: "firstdigit", scope: !3875, file: !461, line: 79, type: !1916)
!3881 = !DILocalVariable(name: "i", scope: !3875, file: !461, line: 80, type: !1916)
!3882 = !DILocalVariable(name: "digit", scope: !3875, file: !461, line: 81, type: !536)
!3883 = !DILocalVariable(name: "i", scope: !3875, file: !461, line: 89, type: !1916)
!3884 = !DILocation(line: 76, column: 6, scope: !3875)
!3885 = !DILocation(line: 77, column: 2, scope: !3875)
!3886 = !DILocation(line: 79, column: 2, scope: !3875)
!3887 = !DILocation(line: 80, column: 6, scope: !3875)
!3888 = !DILocation(line: 0, scope: !3875)
!3889 = !DILocation(line: 76, column: 18, scope: !3875)
!3890 = !DILocation(line: 80, column: 15, scope: !3875)
!3891 = !DILocation(line: 80, column: 17, scope: !3875)
!3892 = !DILocation(line: 81, column: 17, scope: !3875)
!3893 = !DILocation(line: 81, column: 18, scope: !3875)
!3894 = !DILocation(line: 81, column: 22, scope: !3875)
!3895 = !DILocation(line: 81, column: 16, scope: !3875)
!3896 = !DILocation(line: 81, column: 3, scope: !3875)
!3897 = !DILocation(line: 82, column: 10, scope: !3875)
!3898 = !DILocation(line: 82, column: 15, scope: !3875)
!3899 = !DILocation(line: 82, column: 9, scope: !3875)
!3900 = !DILocation(line: 83, column: 6, scope: !3875)
!3901 = !DILocation(line: 83, column: 12, scope: !3875)
!3902 = !DILocation(line: 84, column: 17, scope: !3875)
!3903 = !DILocation(line: 84, column: 4, scope: !3875)
!3904 = !DILocation(line: 86, column: 3, scope: !3875)
!3905 = !DILocation(line: 80, column: 23, scope: !3875)
!3906 = !DILocation(line: 89, column: 11, scope: !3875)
!3907 = !DILocation(line: 89, column: 6, scope: !3875)
!3908 = !DILocation(line: 89, column: 23, scope: !3875)
!3909 = !DILocation(line: 89, column: 25, scope: !3875)
!3910 = !DILocation(line: 90, column: 18, scope: !3875)
!3911 = !DILocation(line: 90, column: 17, scope: !3875)
!3912 = !DILocation(line: 90, column: 10, scope: !3875)
!3913 = !DILocation(line: 89, column: 31, scope: !3875)
!3914 = !DILocation(line: 92, column: 2, scope: !3875)
!3915 = distinct !DISubprogram(name: "runtime.printuint32", linkageName: "runtime.printuint32", scope: !461, file: !461, line: 61, type: !3344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3916)
!3916 = !{!3917}
!3917 = !DILocalVariable(name: "n", arg: 1, scope: !3915, file: !461, line: 61, type: !104)
!3918 = !DILocation(line: 61, column: 6, scope: !3915)
!3919 = !DILocation(line: 62, column: 21, scope: !3915)
!3920 = !DILocation(line: 62, column: 20, scope: !3915)
!3921 = !DILocation(line: 62, column: 13, scope: !3915)
!3922 = !DILocation(line: 63, column: 2, scope: !3915)
!3923 = distinct !DISubprogram(name: "runtime.printuint8", linkageName: "runtime.printuint8", scope: !461, file: !461, line: 18, type: !3924, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3926)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!4}
!3926 = !{!3927, !3928}
!3927 = !DILocalVariable(name: "n", arg: 1, scope: !3923, file: !461, line: 18, type: !4)
!3928 = !DILocalVariable(name: "prevdigits", scope: !3923, file: !461, line: 22, type: !4)
!3929 = !DILocation(line: 18, column: 6, scope: !3923)
!3930 = !DILocation(line: 0, scope: !3923)
!3931 = !DILocation(line: 20, column: 22, scope: !3923)
!3932 = !DILocation(line: 20, column: 21, scope: !3923)
!3933 = !DILocation(line: 20, column: 14, scope: !3923)
!3934 = !DILocation(line: 28, column: 2, scope: !3923)
!3935 = !DILocation(line: 22, column: 17, scope: !3923)
!3936 = !DILocation(line: 22, column: 19, scope: !3923)
!3937 = !DILocation(line: 22, column: 3, scope: !3923)
!3938 = !DILocation(line: 23, column: 6, scope: !3923)
!3939 = !DILocation(line: 23, column: 17, scope: !3923)
!3940 = !DILocation(line: 24, column: 15, scope: !3923)
!3941 = !DILocation(line: 24, column: 14, scope: !3923)
!3942 = !DILocation(line: 26, column: 17, scope: !3923)
!3943 = !DILocation(line: 26, column: 19, scope: !3923)
!3944 = !DILocation(line: 26, column: 25, scope: !3923)
!3945 = !DILocation(line: 26, column: 10, scope: !3923)
!3946 = distinct !DISubprogram(name: "runtime.printuint16", linkageName: "runtime.printuint16", scope: !461, file: !461, line: 53, type: !3947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3949)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!96}
!3949 = !{!3950}
!3950 = !DILocalVariable(name: "n", arg: 1, scope: !3946, file: !461, line: 53, type: !96)
!3951 = !DILocation(line: 53, column: 6, scope: !3946)
!3952 = !DILocation(line: 54, column: 21, scope: !3946)
!3953 = !DILocation(line: 54, column: 20, scope: !3946)
!3954 = !DILocation(line: 54, column: 13, scope: !3946)
!3955 = !DILocation(line: 55, column: 2, scope: !3946)
!3956 = distinct !DISubprogram(name: "runtime.printuintptr", linkageName: "runtime.printuintptr", scope: !461, file: !461, line: 42, type: !3233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3957)
!3957 = !{!3958}
!3958 = !DILocalVariable(name: "n", arg: 1, scope: !3956, file: !461, line: 42, type: !49)
!3959 = !DILocation(line: 42, column: 6, scope: !3956)
!3960 = !DILocation(line: 0, scope: !3956)
!3961 = !DILocation(line: 45, column: 22, scope: !3956)
!3962 = !DILocation(line: 45, column: 21, scope: !3956)
!3963 = !DILocation(line: 45, column: 14, scope: !3956)
!3964 = !DILocation(line: 51, column: 2, scope: !3956)
!3965 = !DILocation(line: 47, column: 22, scope: !3956)
!3966 = !DILocation(line: 47, column: 21, scope: !3956)
!3967 = !DILocation(line: 47, column: 14, scope: !3956)
!3968 = !DILocation(line: 49, column: 22, scope: !3956)
!3969 = !DILocation(line: 49, column: 14, scope: !3956)
!3970 = distinct !DISubprogram(name: "runtime.printfloat32", linkageName: "runtime.printfloat32", scope: !461, file: !461, line: 114, type: !3971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3973)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!3710}
!3973 = !{!3974, !3975, !3976, !3977, !3978, !3980, !3981, !3982}
!3974 = !DILocalVariable(name: "v", arg: 1, scope: !3970, file: !461, line: 114, type: !3710)
!3975 = !DILocalVariable(name: "e", scope: !3970, file: !461, line: 130, type: !1916)
!3976 = !DILocalVariable(name: "i", scope: !3970, file: !461, line: 164, type: !1916)
!3977 = !DILocalVariable(name: "s", scope: !3970, file: !461, line: 165, type: !1916)
!3978 = !DILocalVariable(name: "buf", scope: !3970, file: !461, line: 128, type: !3979)
!3979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 112, align: 8, elements: !119)
!3980 = !DILocalVariable(name: "c", scope: !3970, file: !461, line: 183, type: !536)
!3981 = !DILocalVariable(name: "h", scope: !3970, file: !461, line: 152, type: !3710)
!3982 = !DILocalVariable(name: "i", scope: !3970, file: !461, line: 153, type: !1916)
!3983 = !DILocation(line: 114, column: 6, scope: !3970)
!3984 = !DILocation(line: 116, column: 7, scope: !3970)
!3985 = !DILocation(line: 116, column: 12, scope: !3970)
!3986 = !DILocation(line: 116, column: 9, scope: !3970)
!3987 = !DILocation(line: 0, scope: !3970)
!3988 = !DILocation(line: 117, column: 14, scope: !3970)
!3989 = !DILocation(line: 118, column: 3, scope: !3970)
!3990 = !DILocation(line: 119, column: 7, scope: !3970)
!3991 = !DILocation(line: 119, column: 9, scope: !3970)
!3992 = !DILocation(line: 119, column: 8, scope: !3970)
!3993 = !DILocation(line: 119, column: 14, scope: !3970)
!3994 = !DILocation(line: 119, column: 11, scope: !3970)
!3995 = !DILocation(line: 119, column: 19, scope: !3970)
!3996 = !DILocation(line: 119, column: 21, scope: !3970)
!3997 = !DILocation(line: 119, column: 16, scope: !3970)
!3998 = !DILocation(line: 120, column: 14, scope: !3970)
!3999 = !DILocation(line: 121, column: 3, scope: !3970)
!4000 = !DILocation(line: 122, column: 7, scope: !3970)
!4001 = !DILocation(line: 122, column: 9, scope: !3970)
!4002 = !DILocation(line: 122, column: 8, scope: !3970)
!4003 = !DILocation(line: 122, column: 14, scope: !3970)
!4004 = !DILocation(line: 122, column: 11, scope: !3970)
!4005 = !DILocation(line: 122, column: 19, scope: !3970)
!4006 = !DILocation(line: 122, column: 21, scope: !3970)
!4007 = !DILocation(line: 122, column: 16, scope: !3970)
!4008 = !DILocation(line: 123, column: 14, scope: !3970)
!4009 = !DILocation(line: 124, column: 3, scope: !3970)
!4010 = !DILocation(line: 129, column: 5, scope: !3970)
!4011 = !DILocation(line: 130, column: 2, scope: !3970)
!4012 = !DILocation(line: 131, column: 5, scope: !3970)
!4013 = !DILocation(line: 131, column: 7, scope: !3970)
!4014 = !DILocation(line: 132, column: 8, scope: !3970)
!4015 = !DILocation(line: 132, column: 7, scope: !3970)
!4016 = !DILocation(line: 132, column: 10, scope: !3970)
!4017 = !DILocation(line: 133, column: 7, scope: !3970)
!4018 = !DILocation(line: 114, column: 19, scope: !3970)
!4019 = !DILocation(line: 164, column: 6, scope: !3970)
!4020 = !DILocation(line: 164, column: 14, scope: !3970)
!4021 = !DILocation(line: 164, column: 16, scope: !3970)
!4022 = !DILocation(line: 165, column: 12, scope: !3970)
!4023 = !DILocation(line: 165, column: 11, scope: !3970)
!4024 = !DILocation(line: 165, column: 3, scope: !3970)
!4025 = !DILocation(line: 166, column: 7, scope: !3970)
!4026 = !DILocation(line: 166, column: 8, scope: !3970)
!4027 = !DILocation(line: 166, column: 19, scope: !3970)
!4028 = !DILocation(line: 166, column: 21, scope: !3970)
!4029 = !DILocation(line: 166, column: 18, scope: !3970)
!4030 = !DILocation(line: 166, column: 6, scope: !3970)
!4031 = !DILocation(line: 167, column: 16, scope: !3970)
!4032 = !DILocation(line: 167, column: 15, scope: !3970)
!4033 = !DILocation(line: 167, column: 3, scope: !3970)
!4034 = !DILocation(line: 168, column: 3, scope: !3970)
!4035 = !DILocation(line: 164, column: 21, scope: !3970)
!4036 = !DILocation(line: 170, column: 14, scope: !3970)
!4037 = !DILocation(line: 170, column: 5, scope: !3970)
!4038 = !DILocation(line: 171, column: 5, scope: !3970)
!4039 = !DILocation(line: 173, column: 5, scope: !3970)
!4040 = !DILocation(line: 174, column: 5, scope: !3970)
!4041 = !DILocation(line: 175, column: 5, scope: !3970)
!4042 = !DILocation(line: 175, column: 7, scope: !3970)
!4043 = !DILocation(line: 176, column: 8, scope: !3970)
!4044 = !DILocation(line: 176, column: 7, scope: !3970)
!4045 = !DILocation(line: 176, column: 3, scope: !3970)
!4046 = !DILocation(line: 177, column: 6, scope: !3970)
!4047 = !DILocation(line: 180, column: 18, scope: !3970)
!4048 = !DILocation(line: 180, column: 19, scope: !3970)
!4049 = !DILocation(line: 180, column: 17, scope: !3970)
!4050 = !DILocation(line: 180, column: 25, scope: !3970)
!4051 = !DILocation(line: 180, column: 5, scope: !3970)
!4052 = !DILocation(line: 181, column: 18, scope: !3970)
!4053 = !DILocation(line: 181, column: 19, scope: !3970)
!4054 = !DILocation(line: 181, column: 17, scope: !3970)
!4055 = !DILocation(line: 181, column: 23, scope: !3970)
!4056 = !DILocation(line: 181, column: 27, scope: !3970)
!4057 = !DILocation(line: 181, column: 5, scope: !3970)
!4058 = !DILocation(line: 182, column: 18, scope: !3970)
!4059 = !DILocation(line: 182, column: 19, scope: !3970)
!4060 = !DILocation(line: 182, column: 17, scope: !3970)
!4061 = !DILocation(line: 182, column: 24, scope: !3970)
!4062 = !DILocation(line: 182, column: 5, scope: !3970)
!4063 = !DILocation(line: 183, column: 20, scope: !3970)
!4064 = !DILocation(line: 183, column: 9, scope: !3970)
!4065 = !DILocation(line: 184, column: 11, scope: !3970)
!4066 = !DILocation(line: 184, column: 10, scope: !3970)
!4067 = !DILocation(line: 186, column: 2, scope: !3970)
!4068 = !DILocation(line: 136, column: 6, scope: !3970)
!4069 = !DILocation(line: 136, column: 8, scope: !3970)
!4070 = !DILocation(line: 137, column: 9, scope: !3970)
!4071 = !DILocation(line: 137, column: 8, scope: !3970)
!4072 = !DILocation(line: 137, column: 4, scope: !3970)
!4073 = !DILocation(line: 138, column: 7, scope: !3970)
!4074 = !DILocation(line: 142, column: 7, scope: !3970)
!4075 = !DILocation(line: 142, column: 9, scope: !3970)
!4076 = !DILocation(line: 143, column: 4, scope: !3970)
!4077 = !DILocation(line: 144, column: 4, scope: !3970)
!4078 = !DILocation(line: 146, column: 7, scope: !3970)
!4079 = !DILocation(line: 146, column: 9, scope: !3970)
!4080 = !DILocation(line: 147, column: 4, scope: !3970)
!4081 = !DILocation(line: 148, column: 4, scope: !3970)
!4082 = !DILocation(line: 152, column: 3, scope: !3970)
!4083 = !DILocation(line: 153, column: 7, scope: !3970)
!4084 = !DILocation(line: 153, column: 15, scope: !3970)
!4085 = !DILocation(line: 153, column: 17, scope: !3970)
!4086 = !DILocation(line: 154, column: 4, scope: !3970)
!4087 = !DILocation(line: 153, column: 22, scope: !3970)
!4088 = !DILocation(line: 156, column: 8, scope: !3970)
!4089 = !DILocation(line: 156, column: 3, scope: !3970)
!4090 = !DILocation(line: 157, column: 6, scope: !3970)
!4091 = !DILocation(line: 157, column: 8, scope: !3970)
!4092 = !DILocation(line: 158, column: 4, scope: !3970)
!4093 = !DILocation(line: 159, column: 4, scope: !3970)
!4094 = distinct !DISubprogram(name: "runtime.printfloat64", linkageName: "runtime.printfloat64", scope: !461, file: !461, line: 194, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4095)
!4095 = !{!4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103}
!4096 = !DILocalVariable(name: "v", arg: 1, scope: !4094, file: !461, line: 194, type: !798)
!4097 = !DILocalVariable(name: "e", scope: !4094, file: !461, line: 210, type: !1916)
!4098 = !DILocalVariable(name: "i", scope: !4094, file: !461, line: 244, type: !1916)
!4099 = !DILocalVariable(name: "s", scope: !4094, file: !461, line: 245, type: !1916)
!4100 = !DILocalVariable(name: "buf", scope: !4094, file: !461, line: 208, type: !3979)
!4101 = !DILocalVariable(name: "c", scope: !4094, file: !461, line: 263, type: !536)
!4102 = !DILocalVariable(name: "h", scope: !4094, file: !461, line: 232, type: !798)
!4103 = !DILocalVariable(name: "i", scope: !4094, file: !461, line: 233, type: !1916)
!4104 = !DILocation(line: 194, column: 6, scope: !4094)
!4105 = !DILocation(line: 196, column: 7, scope: !4094)
!4106 = !DILocation(line: 196, column: 12, scope: !4094)
!4107 = !DILocation(line: 196, column: 9, scope: !4094)
!4108 = !DILocation(line: 0, scope: !4094)
!4109 = !DILocation(line: 197, column: 14, scope: !4094)
!4110 = !DILocation(line: 198, column: 3, scope: !4094)
!4111 = !DILocation(line: 199, column: 7, scope: !4094)
!4112 = !DILocation(line: 199, column: 9, scope: !4094)
!4113 = !DILocation(line: 199, column: 8, scope: !4094)
!4114 = !DILocation(line: 199, column: 14, scope: !4094)
!4115 = !DILocation(line: 199, column: 11, scope: !4094)
!4116 = !DILocation(line: 199, column: 19, scope: !4094)
!4117 = !DILocation(line: 199, column: 21, scope: !4094)
!4118 = !DILocation(line: 199, column: 16, scope: !4094)
!4119 = !DILocation(line: 200, column: 14, scope: !4094)
!4120 = !DILocation(line: 201, column: 3, scope: !4094)
!4121 = !DILocation(line: 202, column: 7, scope: !4094)
!4122 = !DILocation(line: 202, column: 9, scope: !4094)
!4123 = !DILocation(line: 202, column: 8, scope: !4094)
!4124 = !DILocation(line: 202, column: 14, scope: !4094)
!4125 = !DILocation(line: 202, column: 11, scope: !4094)
!4126 = !DILocation(line: 202, column: 19, scope: !4094)
!4127 = !DILocation(line: 202, column: 21, scope: !4094)
!4128 = !DILocation(line: 202, column: 16, scope: !4094)
!4129 = !DILocation(line: 203, column: 14, scope: !4094)
!4130 = !DILocation(line: 204, column: 3, scope: !4094)
!4131 = !DILocation(line: 209, column: 5, scope: !4094)
!4132 = !DILocation(line: 210, column: 2, scope: !4094)
!4133 = !DILocation(line: 211, column: 5, scope: !4094)
!4134 = !DILocation(line: 211, column: 7, scope: !4094)
!4135 = !DILocation(line: 212, column: 8, scope: !4094)
!4136 = !DILocation(line: 212, column: 7, scope: !4094)
!4137 = !DILocation(line: 212, column: 10, scope: !4094)
!4138 = !DILocation(line: 213, column: 7, scope: !4094)
!4139 = !DILocation(line: 194, column: 19, scope: !4094)
!4140 = !DILocation(line: 244, column: 6, scope: !4094)
!4141 = !DILocation(line: 244, column: 14, scope: !4094)
!4142 = !DILocation(line: 244, column: 16, scope: !4094)
!4143 = !DILocation(line: 245, column: 12, scope: !4094)
!4144 = !DILocation(line: 245, column: 11, scope: !4094)
!4145 = !DILocation(line: 245, column: 3, scope: !4094)
!4146 = !DILocation(line: 246, column: 7, scope: !4094)
!4147 = !DILocation(line: 246, column: 8, scope: !4094)
!4148 = !DILocation(line: 246, column: 19, scope: !4094)
!4149 = !DILocation(line: 246, column: 21, scope: !4094)
!4150 = !DILocation(line: 246, column: 18, scope: !4094)
!4151 = !DILocation(line: 246, column: 6, scope: !4094)
!4152 = !DILocation(line: 247, column: 16, scope: !4094)
!4153 = !DILocation(line: 247, column: 15, scope: !4094)
!4154 = !DILocation(line: 247, column: 3, scope: !4094)
!4155 = !DILocation(line: 248, column: 3, scope: !4094)
!4156 = !DILocation(line: 244, column: 21, scope: !4094)
!4157 = !DILocation(line: 250, column: 14, scope: !4094)
!4158 = !DILocation(line: 250, column: 5, scope: !4094)
!4159 = !DILocation(line: 251, column: 5, scope: !4094)
!4160 = !DILocation(line: 253, column: 5, scope: !4094)
!4161 = !DILocation(line: 254, column: 5, scope: !4094)
!4162 = !DILocation(line: 255, column: 5, scope: !4094)
!4163 = !DILocation(line: 255, column: 7, scope: !4094)
!4164 = !DILocation(line: 256, column: 8, scope: !4094)
!4165 = !DILocation(line: 256, column: 7, scope: !4094)
!4166 = !DILocation(line: 256, column: 3, scope: !4094)
!4167 = !DILocation(line: 257, column: 6, scope: !4094)
!4168 = !DILocation(line: 260, column: 18, scope: !4094)
!4169 = !DILocation(line: 260, column: 19, scope: !4094)
!4170 = !DILocation(line: 260, column: 17, scope: !4094)
!4171 = !DILocation(line: 260, column: 25, scope: !4094)
!4172 = !DILocation(line: 260, column: 5, scope: !4094)
!4173 = !DILocation(line: 261, column: 18, scope: !4094)
!4174 = !DILocation(line: 261, column: 19, scope: !4094)
!4175 = !DILocation(line: 261, column: 17, scope: !4094)
!4176 = !DILocation(line: 261, column: 23, scope: !4094)
!4177 = !DILocation(line: 261, column: 27, scope: !4094)
!4178 = !DILocation(line: 261, column: 5, scope: !4094)
!4179 = !DILocation(line: 262, column: 18, scope: !4094)
!4180 = !DILocation(line: 262, column: 19, scope: !4094)
!4181 = !DILocation(line: 262, column: 17, scope: !4094)
!4182 = !DILocation(line: 262, column: 24, scope: !4094)
!4183 = !DILocation(line: 262, column: 5, scope: !4094)
!4184 = !DILocation(line: 263, column: 20, scope: !4094)
!4185 = !DILocation(line: 263, column: 9, scope: !4094)
!4186 = !DILocation(line: 264, column: 11, scope: !4094)
!4187 = !DILocation(line: 264, column: 10, scope: !4094)
!4188 = !DILocation(line: 266, column: 2, scope: !4094)
!4189 = !DILocation(line: 216, column: 6, scope: !4094)
!4190 = !DILocation(line: 216, column: 8, scope: !4094)
!4191 = !DILocation(line: 217, column: 9, scope: !4094)
!4192 = !DILocation(line: 217, column: 8, scope: !4094)
!4193 = !DILocation(line: 217, column: 4, scope: !4094)
!4194 = !DILocation(line: 218, column: 7, scope: !4094)
!4195 = !DILocation(line: 222, column: 7, scope: !4094)
!4196 = !DILocation(line: 222, column: 9, scope: !4094)
!4197 = !DILocation(line: 223, column: 4, scope: !4094)
!4198 = !DILocation(line: 224, column: 4, scope: !4094)
!4199 = !DILocation(line: 226, column: 7, scope: !4094)
!4200 = !DILocation(line: 226, column: 9, scope: !4094)
!4201 = !DILocation(line: 227, column: 4, scope: !4094)
!4202 = !DILocation(line: 228, column: 4, scope: !4094)
!4203 = !DILocation(line: 232, column: 3, scope: !4094)
!4204 = !DILocation(line: 233, column: 7, scope: !4094)
!4205 = !DILocation(line: 233, column: 15, scope: !4094)
!4206 = !DILocation(line: 233, column: 17, scope: !4094)
!4207 = !DILocation(line: 234, column: 4, scope: !4094)
!4208 = !DILocation(line: 233, column: 22, scope: !4094)
!4209 = !DILocation(line: 236, column: 8, scope: !4094)
!4210 = !DILocation(line: 236, column: 3, scope: !4094)
!4211 = !DILocation(line: 237, column: 6, scope: !4094)
!4212 = !DILocation(line: 237, column: 8, scope: !4094)
!4213 = !DILocation(line: 238, column: 4, scope: !4094)
!4214 = !DILocation(line: 239, column: 4, scope: !4094)
!4215 = distinct !DISubprogram(name: "runtime.printcomplex64", linkageName: "runtime.printcomplex64", scope: !461, file: !461, line: 268, type: !4216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4218)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!3713}
!4218 = !{!4219}
!4219 = !DILocalVariable(name: "c", arg: 1, scope: !4215, file: !461, line: 268, type: !3713)
!4220 = !DILocation(line: 268, column: 6, scope: !4215)
!4221 = !DILocation(line: 269, column: 9, scope: !4215)
!4222 = !DILocation(line: 270, column: 20, scope: !4215)
!4223 = !DILocation(line: 270, column: 19, scope: !4215)
!4224 = !DILocation(line: 270, column: 14, scope: !4215)
!4225 = !DILocation(line: 271, column: 20, scope: !4215)
!4226 = !DILocation(line: 271, column: 19, scope: !4215)
!4227 = !DILocation(line: 271, column: 14, scope: !4215)
!4228 = !DILocation(line: 272, column: 13, scope: !4215)
!4229 = !DILocation(line: 273, column: 2, scope: !4215)
!4230 = distinct !DISubprogram(name: "runtime.printcomplex128", linkageName: "runtime.printcomplex128", scope: !461, file: !461, line: 275, type: !4231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4233)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!3715}
!4233 = !{!4234}
!4234 = !DILocalVariable(name: "c", arg: 1, scope: !4230, file: !461, line: 275, type: !3715)
!4235 = !DILocation(line: 275, column: 6, scope: !4230)
!4236 = !DILocation(line: 276, column: 9, scope: !4230)
!4237 = !DILocation(line: 277, column: 20, scope: !4230)
!4238 = !DILocation(line: 277, column: 19, scope: !4230)
!4239 = !DILocation(line: 277, column: 14, scope: !4230)
!4240 = !DILocation(line: 278, column: 20, scope: !4230)
!4241 = !DILocation(line: 278, column: 19, scope: !4230)
!4242 = !DILocation(line: 278, column: 14, scope: !4230)
!4243 = !DILocation(line: 279, column: 13, scope: !4230)
!4244 = !DILocation(line: 280, column: 2, scope: !4230)
!4245 = distinct !DISubprogram(name: "runtime._panic", linkageName: "runtime._panic", scope: !431, file: !431, line: 54, type: !3692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4246)
!4246 = !{!4247}
!4247 = !DILocalVariable(name: "message", arg: 1, scope: !4245, file: !431, line: 54, type: !781)
!4248 = !DILocation(line: 54, column: 6, scope: !4245)
!4249 = !DILocation(line: 55, column: 16, scope: !4245)
!4250 = !DILocation(line: 55, column: 15, scope: !4245)
!4251 = !DILocation(line: 56, column: 2, scope: !4245)
!4252 = distinct !DISubprogram(name: "runtime.stringEqual", linkageName: "runtime.stringEqual", scope: !4253, file: !4253, line: 24, type: !4254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4256)
!4253 = !DIFile(filename: "string.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!44, !44}
!4256 = !{!4257, !4258, !4259}
!4257 = !DILocalVariable(name: "x", arg: 1, scope: !4252, file: !4253, line: 24, type: !44)
!4258 = !DILocalVariable(name: "y", arg: 2, scope: !4252, file: !4253, line: 24, type: !44)
!4259 = !DILocalVariable(name: "i", scope: !4252, file: !4253, line: 28, type: !1916)
!4260 = !DILocation(line: 24, column: 6, scope: !4252)
!4261 = !DILocation(line: 25, column: 9, scope: !4252)
!4262 = !DILocation(line: 25, column: 8, scope: !4252)
!4263 = !DILocation(line: 25, column: 19, scope: !4252)
!4264 = !DILocation(line: 25, column: 18, scope: !4252)
!4265 = !DILocation(line: 25, column: 12, scope: !4252)
!4266 = !DILocation(line: 0, scope: !4252)
!4267 = !DILocation(line: 26, column: 3, scope: !4252)
!4268 = !DILocation(line: 28, column: 6, scope: !4252)
!4269 = !DILocation(line: 28, column: 14, scope: !4252)
!4270 = !DILocation(line: 28, column: 22, scope: !4252)
!4271 = !DILocation(line: 28, column: 21, scope: !4252)
!4272 = !DILocation(line: 28, column: 16, scope: !4252)
!4273 = !DILocation(line: 29, column: 8, scope: !4252)
!4274 = !DILocation(line: 29, column: 6, scope: !4252)
!4275 = !DILocation(line: 29, column: 7, scope: !4252)
!4276 = !DILocation(line: 29, column: 16, scope: !4252)
!4277 = !DILocation(line: 29, column: 14, scope: !4252)
!4278 = !DILocation(line: 29, column: 15, scope: !4252)
!4279 = !DILocation(line: 29, column: 11, scope: !4252)
!4280 = !DILocation(line: 30, column: 4, scope: !4252)
!4281 = !DILocation(line: 28, column: 26, scope: !4252)
!4282 = !DILocation(line: 33, column: 2, scope: !4252)
!4283 = distinct !DISubprogram(name: "runtime.slicePanic", linkageName: "runtime.slicePanic", scope: !431, file: !431, line: 198, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4284 = !DILocation(line: 199, column: 30, scope: !4283)
!4285 = !DILocation(line: 199, column: 16, scope: !4283)
!4286 = !DILocation(line: 200, column: 2, scope: !4283)
!4287 = distinct !DISubprogram(name: "runtime.fminimum", linkageName: "fminimum", scope: !1560, file: !1560, line: 60, type: !4288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4290)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!798, !798}
!4290 = !{!4291, !4292}
!4291 = !DILocalVariable(name: "x", arg: 1, scope: !4287, file: !1560, line: 60, type: !798)
!4292 = !DILocalVariable(name: "y", arg: 2, scope: !4287, file: !1560, line: 60, type: !798)
!4293 = !DILocation(line: 60, column: 6, scope: !4287)
!4294 = !DILocation(line: 61, column: 24, scope: !4287)
!4295 = !DILocation(line: 61, column: 27, scope: !4287)
!4296 = !DILocation(line: 61, column: 23, scope: !4287)
!4297 = !DILocation(line: 61, column: 2, scope: !4287)
!4298 = distinct !DISubprogram(name: "runtime.minimumFloat64", linkageName: "runtime.minimumFloat64", scope: !1560, file: !1560, line: 87, type: !4288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4299)
!4299 = !{!4300, !4301}
!4300 = !DILocalVariable(name: "x", arg: 1, scope: !4298, file: !1560, line: 87, type: !798)
!4301 = !DILocalVariable(name: "y", arg: 2, scope: !4298, file: !1560, line: 87, type: !798)
!4302 = !DILocation(line: 87, column: 6, scope: !4298)
!4303 = !DILocation(line: 88, column: 38, scope: !4298)
!4304 = !DILocation(line: 88, column: 41, scope: !4298)
!4305 = !DILocation(line: 88, column: 37, scope: !4298)
!4306 = !DILocation(line: 88, column: 2, scope: !4298)
!4307 = distinct !DISubprogram(name: "runtime.minimumFloat[float64 int64]", linkageName: "runtime.minimumFloat[float64 int64]", scope: !1560, file: !1560, line: 101, type: !4308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4310)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!798, !798, !1699, !1699}
!4310 = !{!4311, !4312, !4313, !4314, !4315, !4316}
!4311 = !DILocalVariable(name: "x", arg: 1, scope: !4307, file: !1560, line: 101, type: !798)
!4312 = !DILocalVariable(name: "y", arg: 2, scope: !4307, file: !1560, line: 101, type: !798)
!4313 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4307, file: !1560, line: 101, type: !1699)
!4314 = !DILocalVariable(name: "magMask", arg: 4, scope: !4307, file: !1560, line: 101, type: !1699)
!4315 = !DILocalVariable(name: "xBits", scope: !4307, file: !1560, line: 102, type: !781)
!4316 = !DILocalVariable(name: "yBits", scope: !4307, file: !1560, line: 103, type: !781)
!4317 = !DILocation(line: 101, column: 6, scope: !4307)
!4318 = !DILocation(line: 101, column: 40, scope: !4307)
!4319 = !DILocation(line: 101, column: 43, scope: !4307)
!4320 = !DILocation(line: 102, column: 11, scope: !4307)
!4321 = !DILocation(line: 102, column: 2, scope: !4307)
!4322 = !DILocation(line: 103, column: 11, scope: !4307)
!4323 = !DILocation(line: 103, column: 2, scope: !4307)
!4324 = !DILocation(line: 107, column: 7, scope: !4307)
!4325 = !DILocation(line: 107, column: 16, scope: !4307)
!4326 = !DILocation(line: 107, column: 13, scope: !4307)
!4327 = !DILocation(line: 0, scope: !4307)
!4328 = !DILocation(line: 108, column: 10, scope: !4307)
!4329 = !DILocation(line: 108, column: 3, scope: !4307)
!4330 = !DILocation(line: 109, column: 7, scope: !4307)
!4331 = !DILocation(line: 109, column: 16, scope: !4307)
!4332 = !DILocation(line: 109, column: 13, scope: !4307)
!4333 = !DILocation(line: 110, column: 10, scope: !4307)
!4334 = !DILocation(line: 110, column: 3, scope: !4307)
!4335 = !DILocation(line: 118, column: 5, scope: !4307)
!4336 = !DILocation(line: 118, column: 11, scope: !4307)
!4337 = !DILocation(line: 119, column: 12, scope: !4307)
!4338 = !DILocation(line: 119, column: 3, scope: !4307)
!4339 = !DILocation(line: 121, column: 5, scope: !4307)
!4340 = !DILocation(line: 121, column: 11, scope: !4307)
!4341 = !DILocation(line: 122, column: 12, scope: !4307)
!4342 = !DILocation(line: 122, column: 3, scope: !4307)
!4343 = !DILocation(line: 124, column: 5, scope: !4307)
!4344 = !DILocation(line: 124, column: 14, scope: !4307)
!4345 = !DILocation(line: 124, column: 11, scope: !4307)
!4346 = !DILocation(line: 125, column: 10, scope: !4307)
!4347 = !DILocation(line: 125, column: 3, scope: !4307)
!4348 = !DILocation(line: 127, column: 10, scope: !4307)
!4349 = !DILocation(line: 127, column: 3, scope: !4307)
!4350 = distinct !DISubprogram(name: "runtime.fminimumf", linkageName: "fminimumf", scope: !1560, file: !1560, line: 65, type: !4351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4353)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!3710, !3710}
!4353 = !{!4354, !4355}
!4354 = !DILocalVariable(name: "x", arg: 1, scope: !4350, file: !1560, line: 65, type: !3710)
!4355 = !DILocalVariable(name: "y", arg: 2, scope: !4350, file: !1560, line: 65, type: !3710)
!4356 = !DILocation(line: 65, column: 6, scope: !4350)
!4357 = !DILocation(line: 66, column: 24, scope: !4350)
!4358 = !DILocation(line: 66, column: 27, scope: !4350)
!4359 = !DILocation(line: 66, column: 23, scope: !4350)
!4360 = !DILocation(line: 66, column: 2, scope: !4350)
!4361 = distinct !DISubprogram(name: "runtime.minimumFloat32", linkageName: "runtime.minimumFloat32", scope: !1560, file: !1560, line: 83, type: !4351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4362)
!4362 = !{!4363, !4364}
!4363 = !DILocalVariable(name: "x", arg: 1, scope: !4361, file: !1560, line: 83, type: !3710)
!4364 = !DILocalVariable(name: "y", arg: 2, scope: !4361, file: !1560, line: 83, type: !3710)
!4365 = !DILocation(line: 83, column: 6, scope: !4361)
!4366 = !DILocation(line: 84, column: 38, scope: !4361)
!4367 = !DILocation(line: 84, column: 41, scope: !4361)
!4368 = !DILocation(line: 84, column: 37, scope: !4361)
!4369 = !DILocation(line: 84, column: 2, scope: !4361)
!4370 = distinct !DISubprogram(name: "runtime.minimumFloat[float32 int32]", linkageName: "runtime.minimumFloat[float32 int32]", scope: !1560, file: !1560, line: 101, type: !4371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4373)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!3710, !3710, !384, !384}
!4373 = !{!4374, !4375, !4376, !4377, !4378, !4379}
!4374 = !DILocalVariable(name: "x", arg: 1, scope: !4370, file: !1560, line: 101, type: !3710)
!4375 = !DILocalVariable(name: "y", arg: 2, scope: !4370, file: !1560, line: 101, type: !3710)
!4376 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4370, file: !1560, line: 101, type: !384)
!4377 = !DILocalVariable(name: "magMask", arg: 4, scope: !4370, file: !1560, line: 101, type: !384)
!4378 = !DILocalVariable(name: "xBits", scope: !4370, file: !1560, line: 102, type: !781)
!4379 = !DILocalVariable(name: "yBits", scope: !4370, file: !1560, line: 103, type: !781)
!4380 = !DILocation(line: 101, column: 6, scope: !4370)
!4381 = !DILocation(line: 101, column: 40, scope: !4370)
!4382 = !DILocation(line: 101, column: 43, scope: !4370)
!4383 = !DILocation(line: 102, column: 11, scope: !4370)
!4384 = !DILocation(line: 102, column: 2, scope: !4370)
!4385 = !DILocation(line: 103, column: 11, scope: !4370)
!4386 = !DILocation(line: 103, column: 2, scope: !4370)
!4387 = !DILocation(line: 107, column: 7, scope: !4370)
!4388 = !DILocation(line: 107, column: 16, scope: !4370)
!4389 = !DILocation(line: 107, column: 13, scope: !4370)
!4390 = !DILocation(line: 0, scope: !4370)
!4391 = !DILocation(line: 108, column: 10, scope: !4370)
!4392 = !DILocation(line: 108, column: 3, scope: !4370)
!4393 = !DILocation(line: 109, column: 7, scope: !4370)
!4394 = !DILocation(line: 109, column: 16, scope: !4370)
!4395 = !DILocation(line: 109, column: 13, scope: !4370)
!4396 = !DILocation(line: 110, column: 10, scope: !4370)
!4397 = !DILocation(line: 110, column: 3, scope: !4370)
!4398 = !DILocation(line: 118, column: 5, scope: !4370)
!4399 = !DILocation(line: 118, column: 11, scope: !4370)
!4400 = !DILocation(line: 119, column: 12, scope: !4370)
!4401 = !DILocation(line: 119, column: 3, scope: !4370)
!4402 = !DILocation(line: 121, column: 5, scope: !4370)
!4403 = !DILocation(line: 121, column: 11, scope: !4370)
!4404 = !DILocation(line: 122, column: 12, scope: !4370)
!4405 = !DILocation(line: 122, column: 3, scope: !4370)
!4406 = !DILocation(line: 124, column: 5, scope: !4370)
!4407 = !DILocation(line: 124, column: 14, scope: !4370)
!4408 = !DILocation(line: 124, column: 11, scope: !4370)
!4409 = !DILocation(line: 125, column: 10, scope: !4370)
!4410 = !DILocation(line: 125, column: 3, scope: !4370)
!4411 = !DILocation(line: 127, column: 10, scope: !4370)
!4412 = !DILocation(line: 127, column: 3, scope: !4370)
!4413 = distinct !DISubprogram(name: "runtime.fmaximum", linkageName: "fmaximum", scope: !1560, file: !1560, line: 70, type: !4288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4414)
!4414 = !{!4415, !4416}
!4415 = !DILocalVariable(name: "x", arg: 1, scope: !4413, file: !1560, line: 70, type: !798)
!4416 = !DILocalVariable(name: "y", arg: 2, scope: !4413, file: !1560, line: 70, type: !798)
!4417 = !DILocation(line: 70, column: 6, scope: !4413)
!4418 = !DILocation(line: 71, column: 24, scope: !4413)
!4419 = !DILocation(line: 71, column: 27, scope: !4413)
!4420 = !DILocation(line: 71, column: 23, scope: !4413)
!4421 = !DILocation(line: 71, column: 2, scope: !4413)
!4422 = distinct !DISubprogram(name: "runtime.maximumFloat64", linkageName: "runtime.maximumFloat64", scope: !1560, file: !1560, line: 95, type: !4288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4423)
!4423 = !{!4424, !4425}
!4424 = !DILocalVariable(name: "x", arg: 1, scope: !4422, file: !1560, line: 95, type: !798)
!4425 = !DILocalVariable(name: "y", arg: 2, scope: !4422, file: !1560, line: 95, type: !798)
!4426 = !DILocation(line: 95, column: 6, scope: !4422)
!4427 = !DILocation(line: 96, column: 38, scope: !4422)
!4428 = !DILocation(line: 96, column: 41, scope: !4422)
!4429 = !DILocation(line: 96, column: 37, scope: !4422)
!4430 = !DILocation(line: 96, column: 2, scope: !4422)
!4431 = distinct !DISubprogram(name: "runtime.maximumFloat[float64 int64]", linkageName: "runtime.maximumFloat[float64 int64]", scope: !1560, file: !1560, line: 133, type: !4308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4432)
!4432 = !{!4433, !4434, !4435, !4436, !4437, !4438, !4439}
!4433 = !DILocalVariable(name: "x", arg: 1, scope: !4431, file: !1560, line: 133, type: !798)
!4434 = !DILocalVariable(name: "y", arg: 2, scope: !4431, file: !1560, line: 133, type: !798)
!4435 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4431, file: !1560, line: 133, type: !1699)
!4436 = !DILocalVariable(name: "magMask", arg: 4, scope: !4431, file: !1560, line: 133, type: !1699)
!4437 = !DILocalVariable(name: "xBits", scope: !4431, file: !1560, line: 134, type: !781)
!4438 = !DILocalVariable(name: "yBits", scope: !4431, file: !1560, line: 135, type: !781)
!4439 = !DILocalVariable(name: "maxNegNaN", scope: !4431, file: !1560, line: 149, type: !781)
!4440 = !DILocation(line: 133, column: 6, scope: !4431)
!4441 = !DILocation(line: 133, column: 40, scope: !4431)
!4442 = !DILocation(line: 133, column: 43, scope: !4431)
!4443 = !DILocation(line: 134, column: 11, scope: !4431)
!4444 = !DILocation(line: 134, column: 2, scope: !4431)
!4445 = !DILocation(line: 135, column: 11, scope: !4431)
!4446 = !DILocation(line: 135, column: 2, scope: !4431)
!4447 = !DILocation(line: 142, column: 5, scope: !4431)
!4448 = !DILocation(line: 142, column: 11, scope: !4431)
!4449 = !DILocation(line: 0, scope: !4431)
!4450 = !DILocation(line: 143, column: 12, scope: !4431)
!4451 = !DILocation(line: 143, column: 3, scope: !4431)
!4452 = !DILocation(line: 145, column: 5, scope: !4431)
!4453 = !DILocation(line: 145, column: 11, scope: !4431)
!4454 = !DILocation(line: 146, column: 12, scope: !4431)
!4455 = !DILocation(line: 146, column: 3, scope: !4431)
!4456 = !DILocation(line: 149, column: 16, scope: !4431)
!4457 = !DILocation(line: 149, column: 15, scope: !4431)
!4458 = !DILocation(line: 149, column: 2, scope: !4431)
!4459 = !DILocation(line: 151, column: 7, scope: !4431)
!4460 = !DILocation(line: 151, column: 16, scope: !4431)
!4461 = !DILocation(line: 151, column: 13, scope: !4431)
!4462 = !DILocation(line: 152, column: 10, scope: !4431)
!4463 = !DILocation(line: 152, column: 3, scope: !4431)
!4464 = !DILocation(line: 153, column: 7, scope: !4431)
!4465 = !DILocation(line: 153, column: 16, scope: !4431)
!4466 = !DILocation(line: 153, column: 13, scope: !4431)
!4467 = !DILocation(line: 154, column: 10, scope: !4431)
!4468 = !DILocation(line: 154, column: 3, scope: !4431)
!4469 = !DILocation(line: 156, column: 5, scope: !4431)
!4470 = !DILocation(line: 156, column: 14, scope: !4431)
!4471 = !DILocation(line: 156, column: 11, scope: !4431)
!4472 = !DILocation(line: 157, column: 10, scope: !4431)
!4473 = !DILocation(line: 157, column: 3, scope: !4431)
!4474 = !DILocation(line: 159, column: 10, scope: !4431)
!4475 = !DILocation(line: 159, column: 3, scope: !4431)
!4476 = distinct !DISubprogram(name: "runtime.fmaximumf", linkageName: "fmaximumf", scope: !1560, file: !1560, line: 75, type: !4351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4477)
!4477 = !{!4478, !4479}
!4478 = !DILocalVariable(name: "x", arg: 1, scope: !4476, file: !1560, line: 75, type: !3710)
!4479 = !DILocalVariable(name: "y", arg: 2, scope: !4476, file: !1560, line: 75, type: !3710)
!4480 = !DILocation(line: 75, column: 6, scope: !4476)
!4481 = !DILocation(line: 76, column: 24, scope: !4476)
!4482 = !DILocation(line: 76, column: 27, scope: !4476)
!4483 = !DILocation(line: 76, column: 23, scope: !4476)
!4484 = !DILocation(line: 76, column: 2, scope: !4476)
!4485 = distinct !DISubprogram(name: "runtime.maximumFloat32", linkageName: "runtime.maximumFloat32", scope: !1560, file: !1560, line: 91, type: !4351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4486)
!4486 = !{!4487, !4488}
!4487 = !DILocalVariable(name: "x", arg: 1, scope: !4485, file: !1560, line: 91, type: !3710)
!4488 = !DILocalVariable(name: "y", arg: 2, scope: !4485, file: !1560, line: 91, type: !3710)
!4489 = !DILocation(line: 91, column: 6, scope: !4485)
!4490 = !DILocation(line: 92, column: 38, scope: !4485)
!4491 = !DILocation(line: 92, column: 41, scope: !4485)
!4492 = !DILocation(line: 92, column: 37, scope: !4485)
!4493 = !DILocation(line: 92, column: 2, scope: !4485)
!4494 = distinct !DISubprogram(name: "runtime.maximumFloat[float32 int32]", linkageName: "runtime.maximumFloat[float32 int32]", scope: !1560, file: !1560, line: 133, type: !4371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4495)
!4495 = !{!4496, !4497, !4498, !4499, !4500, !4501, !4502}
!4496 = !DILocalVariable(name: "x", arg: 1, scope: !4494, file: !1560, line: 133, type: !3710)
!4497 = !DILocalVariable(name: "y", arg: 2, scope: !4494, file: !1560, line: 133, type: !3710)
!4498 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4494, file: !1560, line: 133, type: !384)
!4499 = !DILocalVariable(name: "magMask", arg: 4, scope: !4494, file: !1560, line: 133, type: !384)
!4500 = !DILocalVariable(name: "xBits", scope: !4494, file: !1560, line: 134, type: !781)
!4501 = !DILocalVariable(name: "yBits", scope: !4494, file: !1560, line: 135, type: !781)
!4502 = !DILocalVariable(name: "maxNegNaN", scope: !4494, file: !1560, line: 149, type: !781)
!4503 = !DILocation(line: 133, column: 6, scope: !4494)
!4504 = !DILocation(line: 133, column: 40, scope: !4494)
!4505 = !DILocation(line: 133, column: 43, scope: !4494)
!4506 = !DILocation(line: 134, column: 11, scope: !4494)
!4507 = !DILocation(line: 134, column: 2, scope: !4494)
!4508 = !DILocation(line: 135, column: 11, scope: !4494)
!4509 = !DILocation(line: 135, column: 2, scope: !4494)
!4510 = !DILocation(line: 142, column: 5, scope: !4494)
!4511 = !DILocation(line: 142, column: 11, scope: !4494)
!4512 = !DILocation(line: 0, scope: !4494)
!4513 = !DILocation(line: 143, column: 12, scope: !4494)
!4514 = !DILocation(line: 143, column: 3, scope: !4494)
!4515 = !DILocation(line: 145, column: 5, scope: !4494)
!4516 = !DILocation(line: 145, column: 11, scope: !4494)
!4517 = !DILocation(line: 146, column: 12, scope: !4494)
!4518 = !DILocation(line: 146, column: 3, scope: !4494)
!4519 = !DILocation(line: 149, column: 16, scope: !4494)
!4520 = !DILocation(line: 149, column: 15, scope: !4494)
!4521 = !DILocation(line: 149, column: 2, scope: !4494)
!4522 = !DILocation(line: 151, column: 7, scope: !4494)
!4523 = !DILocation(line: 151, column: 16, scope: !4494)
!4524 = !DILocation(line: 151, column: 13, scope: !4494)
!4525 = !DILocation(line: 152, column: 10, scope: !4494)
!4526 = !DILocation(line: 152, column: 3, scope: !4494)
!4527 = !DILocation(line: 153, column: 7, scope: !4494)
!4528 = !DILocation(line: 153, column: 16, scope: !4494)
!4529 = !DILocation(line: 153, column: 13, scope: !4494)
!4530 = !DILocation(line: 154, column: 10, scope: !4494)
!4531 = !DILocation(line: 154, column: 3, scope: !4494)
!4532 = !DILocation(line: 156, column: 5, scope: !4494)
!4533 = !DILocation(line: 156, column: 14, scope: !4494)
!4534 = !DILocation(line: 156, column: 11, scope: !4494)
!4535 = !DILocation(line: 157, column: 10, scope: !4494)
!4536 = !DILocation(line: 157, column: 3, scope: !4494)
!4537 = !DILocation(line: 159, column: 10, scope: !4494)
!4538 = !DILocation(line: 159, column: 3, scope: !4494)
!4539 = distinct !DISubprogram(name: "runtime.initHeap", linkageName: "runtime.initHeap", scope: !424, file: !424, line: 34, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4540 = !DILocation(line: 35, column: 12, scope: !4539)
!4541 = !DILocation(line: 39, column: 8, scope: !4539)
!4542 = !DILocation(line: 40, column: 2, scope: !4539)
!4543 = distinct !DISubprogram(name: "runtime.gcCallback", linkageName: "tinygo_runtime_bdwgc_callback", scope: !424, file: !424, line: 46, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4544 = !DILocation(line: 48, column: 17, scope: !4543)
!4545 = !DILocation(line: 49, column: 2, scope: !4543)
!4546 = distinct !DISubprogram(name: "runtime.gcMarkReachable", linkageName: "runtime.gcMarkReachable", scope: !3493, file: !3493, line: 7, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4547 = !DILocation(line: 8, column: 25, scope: !4546)
!4548 = !DILocation(line: 9, column: 2, scope: !4546)
!4549 = distinct !DISubprogram(name: "runtime.markRoots", linkageName: "runtime.markRoots", scope: !424, file: !424, line: 51, type: !4550, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4552)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!49, !49}
!4552 = !{!4553, !4554}
!4553 = !DILocalVariable(name: "start", arg: 1, scope: !4549, file: !424, line: 51, type: !49)
!4554 = !DILocalVariable(name: "end", arg: 2, scope: !4549, file: !424, line: 51, type: !49)
!4555 = !DILocation(line: 51, column: 6, scope: !4549)
!4556 = !DILocation(line: 52, column: 17, scope: !4549)
!4557 = !DILocation(line: 52, column: 24, scope: !4549)
!4558 = !DILocation(line: 52, column: 16, scope: !4549)
!4559 = !DILocation(line: 53, column: 2, scope: !4549)
!4560 = distinct !DISubprogram(name: "runtime.free", linkageName: "runtime.free", scope: !424, file: !424, line: 99, type: !2739, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4561)
!4561 = !{!4562}
!4562 = !DILocalVariable(name: "ptr", arg: 1, scope: !4560, file: !424, line: 99, type: !90)
!4563 = !DILocation(line: 99, column: 6, scope: !4560)
!4564 = !DILocation(line: 100, column: 13, scope: !4560)
!4565 = !DILocation(line: 100, column: 12, scope: !4560)
!4566 = !DILocation(line: 101, column: 2, scope: !4560)
!4567 = distinct !DISubprogram(name: "runtime.gcScanGlobals", linkageName: "internal/task.gcScanGlobals", scope: !3493, file: !3493, line: 15, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4568 = !DILocation(line: 16, column: 13, scope: !4567)
!4569 = !DILocation(line: 17, column: 2, scope: !4567)
!4570 = distinct !DISubprogram(name: "runtime.findGlobals", linkageName: "runtime.findGlobals", scope: !3606, file: !3606, line: 95, type: !4571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4573)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!658}
!4573 = !{!4574, !4575, !4576, !4577, !4590, !4591, !4592, !4599, !4600}
!4574 = !DILocalVariable(name: "found", arg: 1, scope: !4570, file: !3606, line: 95, type: !658)
!4575 = !DILocalVariable(name: "headerPtr", scope: !4570, file: !3606, line: 103, type: !90)
!4576 = !DILocalVariable(name: "i", scope: !4570, file: !3606, line: 104, type: !1916)
!4577 = !DILocalVariable(name: "header", scope: !4570, file: !3606, line: 111, type: !4578)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64, align: 64, dwarfAddressSpace: 0)
!4579 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader64", baseType: !4580)
!4580 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !4581)
!4581 = !{!4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_type", baseType: !104, size: 32, align: 32)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !104, size: 32, align: 32, offset: 32)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "offset", baseType: !49, size: 64, align: 64, offset: 64)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", baseType: !49, size: 64, align: 64, offset: 128)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", baseType: !49, size: 64, align: 64, offset: 192)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "filesz", baseType: !49, size: 64, align: 64, offset: 256)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", baseType: !49, size: 64, align: 64, offset: 320)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !49, size: 64, align: 64, offset: 384)
!4590 = !DILocalVariable(name: "start", scope: !4570, file: !3606, line: 113, type: !49)
!4591 = !DILocalVariable(name: "end", scope: !4570, file: !3606, line: 114, type: !49)
!4592 = !DILocalVariable(name: "header", scope: !4570, file: !3606, line: 118, type: !4593)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64, align: 64, dwarfAddressSpace: 0)
!4594 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader32", baseType: !4595)
!4595 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !4596)
!4596 = !{!4582, !4584, !4585, !4586, !4587, !4588, !4597, !4598}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !104, size: 32, align: 32, offset: 384)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !49, size: 64, align: 64, offset: 448)
!4599 = !DILocalVariable(name: "start", scope: !4570, file: !3606, line: 120, type: !49)
!4600 = !DILocalVariable(name: "end", scope: !4570, file: !3606, line: 121, type: !49)
!4601 = !DILocation(line: 95, column: 6, scope: !4570)
!4602 = !DILocation(line: 103, column: 80, scope: !4570)
!4603 = !DILocation(line: 103, column: 67, scope: !4570)
!4604 = !DILocation(line: 103, column: 29, scope: !4570)
!4605 = !DILocation(line: 103, column: 2, scope: !4570)
!4606 = !DILocation(line: 104, column: 6, scope: !4570)
!4607 = !DILocation(line: 0, scope: !4570)
!4608 = !DILocation(line: 104, column: 14, scope: !4570)
!4609 = !DILocation(line: 104, column: 33, scope: !4570)
!4610 = !DILocation(line: 104, column: 21, scope: !4570)
!4611 = !DILocation(line: 104, column: 16, scope: !4570)
!4612 = !DILocation(line: 111, column: 36, scope: !4570)
!4613 = !DILocation(line: 111, column: 4, scope: !4570)
!4614 = !DILocation(line: 112, column: 7, scope: !4570)
!4615 = !DILocation(line: 112, column: 14, scope: !4570)
!4616 = !DILocation(line: 112, column: 20, scope: !4570)
!4617 = !DILocation(line: 112, column: 34, scope: !4570)
!4618 = !DILocation(line: 112, column: 41, scope: !4570)
!4619 = !DILocation(line: 112, column: 46, scope: !4570)
!4620 = !DILocation(line: 112, column: 52, scope: !4570)
!4621 = !DILocation(line: 113, column: 14, scope: !4570)
!4622 = !DILocation(line: 113, column: 21, scope: !4570)
!4623 = !DILocation(line: 113, column: 5, scope: !4570)
!4624 = !DILocation(line: 114, column: 12, scope: !4570)
!4625 = !DILocation(line: 114, column: 20, scope: !4570)
!4626 = !DILocation(line: 114, column: 27, scope: !4570)
!4627 = !DILocation(line: 114, column: 18, scope: !4570)
!4628 = !DILocation(line: 114, column: 5, scope: !4570)
!4629 = !DILocation(line: 115, column: 5, scope: !4570)
!4630 = !DILocation(line: 115, column: 11, scope: !4570)
!4631 = !DILocation(line: 115, column: 18, scope: !4570)
!4632 = !DILocation(line: 115, column: 10, scope: !4570)
!4633 = !DILocation(line: 125, column: 26, scope: !4570)
!4634 = !DILocation(line: 125, column: 48, scope: !4570)
!4635 = !DILocation(line: 125, column: 25, scope: !4570)
!4636 = !DILocation(line: 125, column: 3, scope: !4570)
!4637 = !DILocation(line: 104, column: 41, scope: !4570)
!4638 = !DILocation(line: 118, column: 36, scope: !4570)
!4639 = !DILocation(line: 118, column: 4, scope: !4570)
!4640 = !DILocation(line: 119, column: 7, scope: !4570)
!4641 = !DILocation(line: 119, column: 14, scope: !4570)
!4642 = !DILocation(line: 119, column: 20, scope: !4570)
!4643 = !DILocation(line: 119, column: 34, scope: !4570)
!4644 = !DILocation(line: 119, column: 41, scope: !4570)
!4645 = !DILocation(line: 119, column: 46, scope: !4570)
!4646 = !DILocation(line: 119, column: 52, scope: !4570)
!4647 = !DILocation(line: 120, column: 14, scope: !4570)
!4648 = !DILocation(line: 120, column: 21, scope: !4570)
!4649 = !DILocation(line: 120, column: 5, scope: !4570)
!4650 = !DILocation(line: 121, column: 12, scope: !4570)
!4651 = !DILocation(line: 121, column: 20, scope: !4570)
!4652 = !DILocation(line: 121, column: 27, scope: !4570)
!4653 = !DILocation(line: 121, column: 18, scope: !4570)
!4654 = !DILocation(line: 121, column: 5, scope: !4570)
!4655 = !DILocation(line: 122, column: 5, scope: !4570)
!4656 = !DILocation(line: 122, column: 11, scope: !4570)
!4657 = !DILocation(line: 122, column: 18, scope: !4570)
!4658 = !DILocation(line: 122, column: 10, scope: !4570)
!4659 = !DILocation(line: 127, column: 2, scope: !4570)
!4660 = distinct !DISubprogram(name: "runtime.scanstack", linkageName: "tinygo_scanstack", scope: !3493, file: !3493, line: 23, type: !3233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4661)
!4661 = !{!4662}
!4662 = !DILocalVariable(name: "sp", arg: 1, scope: !4660, file: !3493, line: 23, type: !49)
!4663 = !DILocation(line: 23, column: 6, scope: !4660)
!4664 = !DILocation(line: 24, column: 12, scope: !4660)
!4665 = !DILocation(line: 24, column: 29, scope: !4660)
!4666 = !DILocation(line: 24, column: 11, scope: !4660)
!4667 = !DILocation(line: 25, column: 2, scope: !4660)
!4668 = distinct !DISubprogram(name: "runtime.unsafeSlicePanic", linkageName: "runtime.unsafeSlicePanic", scope: !431, file: !431, line: 211, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4669 = !DILocation(line: 212, column: 30, scope: !4668)
!4670 = !DILocation(line: 212, column: 16, scope: !4668)
!4671 = !DILocation(line: 213, column: 2, scope: !4668)
!4672 = distinct !DISubprogram(name: "runtime.negativeShiftPanic", linkageName: "runtime.negativeShiftPanic", scope: !431, file: !431, line: 221, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4673 = !DILocation(line: 222, column: 30, scope: !4672)
!4674 = !DILocation(line: 222, column: 16, scope: !4672)
!4675 = !DILocation(line: 223, column: 2, scope: !4672)
!4676 = distinct !DISubprogram(name: "runtime.printspace", linkageName: "runtime.printspace", scope: !461, file: !461, line: 282, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4677 = !DILocation(line: 283, column: 9, scope: !4676)
!4678 = !DILocation(line: 284, column: 2, scope: !4676)
!4679 = distinct !DISubprogram(name: "runtime.memmove", linkageName: "runtime.memmove", scope: !1584, file: !1584, line: 48, type: !3627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4680)
!4680 = !{!4681, !4682, !4683}
!4681 = !DILocalVariable(name: "dst", arg: 1, scope: !4679, file: !1584, line: 48, type: !90)
!4682 = !DILocalVariable(name: "src", arg: 2, scope: !4679, file: !1584, line: 48, type: !90)
!4683 = !DILocalVariable(name: "size", arg: 3, scope: !4679, file: !1584, line: 48, type: !49)
!4684 = !DILocation(line: 48, column: 6, scope: !4679)
!4685 = distinct !DISubprogram(name: "runtime.main", linkageName: "main", scope: !417, file: !417, line: 80, type: !4686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4688)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!384, !488}
!4688 = !{!4689, !4690, !4691, !4692, !4693}
!4689 = !DILocalVariable(name: "argc", arg: 1, scope: !4685, file: !417, line: 80, type: !384)
!4690 = !DILocalVariable(name: "argv", arg: 2, scope: !4685, file: !417, line: 80, type: !488)
!4691 = !DILocalVariable(name: "main_argc", scope: !4685, file: !417, line: 105, type: !384)
!4692 = !DILocalVariable(name: "main_argv", scope: !4685, file: !417, line: 106, type: !488)
!4693 = !DILocalVariable(name: "stackTop", scope: !4685, file: !417, line: 75, type: !49)
!4694 = !DILocation(line: 80, column: 6, scope: !4685)
!4695 = !DILocation(line: 0, scope: !4685)
!4696 = !DILocation(line: 83, column: 15, scope: !4685)
!4697 = !DILocation(line: 87, column: 14, scope: !4685)
!4698 = !DILocation(line: 87, column: 2, scope: !4685)
!4699 = !DILocation(line: 88, column: 14, scope: !4685)
!4700 = !DILocation(line: 88, column: 2, scope: !4685)
!4701 = !DILocation(line: 92, column: 31, scope: !4685)
!4702 = !DILocation(line: 97, column: 35, scope: !4685)
!4703 = !DILocation(line: 97, column: 2, scope: !4685)
!4704 = !DILocation(line: 98, column: 9, scope: !4685)
!4705 = !DILocation(line: 101, column: 2, scope: !4685)
!4706 = distinct !DISubprogram(name: "runtime.allocateHeap", linkageName: "runtime.allocateHeap", scope: !417, file: !417, line: 303, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4707)
!4707 = !{!4708, !4709, !4710, !4711, !4712}
!4708 = !DILocalVariable(name: "heapMaxSize", scope: !4706, file: !417, line: 299, type: !49)
!4709 = !DILocalVariable(name: "addr", scope: !4706, file: !417, line: 309, type: !90)
!4710 = !DILocalVariable(name: "heapStart", scope: !4706, file: !417, line: 301, type: !49)
!4711 = !DILocalVariable(name: "heapSize", scope: !4706, file: !417, line: 298, type: !49)
!4712 = !DILocalVariable(name: "heapEnd", scope: !4706, file: !417, line: 301, type: !49)
!4713 = !DILocation(line: 307, column: 2, scope: !4706)
!4714 = !DILocation(line: 0, scope: !4706)
!4715 = !DILocation(line: 309, column: 21, scope: !4706)
!4716 = !DILocation(line: 309, column: 15, scope: !4706)
!4717 = !DILocation(line: 309, column: 3, scope: !4706)
!4718 = !DILocation(line: 310, column: 6, scope: !4706)
!4719 = !DILocation(line: 310, column: 11, scope: !4706)
!4720 = !DILocation(line: 315, column: 4, scope: !4706)
!4721 = !DILocation(line: 316, column: 7, scope: !4706)
!4722 = !DILocation(line: 316, column: 19, scope: !4706)
!4723 = !DILocation(line: 317, column: 17, scope: !4706)
!4724 = !DILocation(line: 321, column: 23, scope: !4706)
!4725 = !DILocation(line: 321, column: 22, scope: !4706)
!4726 = !DILocation(line: 321, column: 3, scope: !4706)
!4727 = !DILocation(line: 322, column: 13, scope: !4706)
!4728 = !DILocation(line: 322, column: 25, scope: !4706)
!4729 = !DILocation(line: 322, column: 23, scope: !4706)
!4730 = !DILocation(line: 322, column: 3, scope: !4706)
!4731 = !DILocation(line: 325, column: 2, scope: !4706)
!4732 = distinct !DISubprogram(name: "runtime.runMain", linkageName: "runtime.runMain", scope: !417, file: !417, line: 135, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4733 = !DILocation(line: 136, column: 5, scope: !4732)
!4734 = !DILocation(line: 137, column: 2, scope: !4732)
!4735 = distinct !DISubprogram(name: "runtime.run", linkageName: "runtime.run", scope: !518, file: !518, line: 23, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4736)
!4736 = !{!4737}
!4737 = !DILocalVariable(name: "stackTop", scope: !4735, file: !417, line: 75, type: !49)
!4738 = !DILocation(line: 24, column: 10, scope: !4735)
!4739 = !DILocation(line: 25, column: 10, scope: !4735)
!4740 = !DILocation(line: 26, column: 12, scope: !4735)
!4741 = !DILocation(line: 26, column: 11, scope: !4735)
!4742 = !DILocation(line: 27, column: 9, scope: !4735)
!4743 = !DILocation(line: 28, column: 10, scope: !4735)
!4744 = !DILocation(line: 29, column: 2, scope: !4735)
!4745 = distinct !DISubprogram(name: "runtime.tinygo_handle_fatal_signal", linkageName: "tinygo_handle_fatal_signal", scope: !417, file: !417, line: 148, type: !4746, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4748)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!384, !49}
!4748 = !{!4749, !4750}
!4749 = !DILocalVariable(name: "sig", arg: 1, scope: !4745, file: !417, line: 148, type: !384)
!4750 = !DILocalVariable(name: "addr", arg: 2, scope: !4745, file: !417, line: 148, type: !49)
!4751 = !DILocation(line: 148, column: 6, scope: !4745)
!4752 = !DILocation(line: 0, scope: !4745)
!4753 = !DILocation(line: 150, column: 7, scope: !4745)
!4754 = !DILocation(line: 154, column: 5, scope: !4745)
!4755 = !DILocation(line: 154, column: 10, scope: !4745)
!4756 = !DILocation(line: 155, column: 14, scope: !4745)
!4757 = !DILocation(line: 156, column: 12, scope: !4745)
!4758 = !DILocation(line: 156, column: 11, scope: !4745)
!4759 = !DILocation(line: 160, column: 13, scope: !4745)
!4760 = !DILocation(line: 161, column: 9, scope: !4745)
!4761 = !DILocation(line: 162, column: 7, scope: !4745)
!4762 = !DILocation(line: 163, column: 10, scope: !4745)
!4763 = !DILocation(line: 180, column: 8, scope: !4745)
!4764 = !DILocation(line: 180, column: 7, scope: !4745)
!4765 = !DILocation(line: 181, column: 2, scope: !4745)
!4766 = !DILocation(line: 164, column: 7, scope: !4745)
!4767 = !DILocation(line: 165, column: 10, scope: !4745)
!4768 = !DILocation(line: 166, column: 7, scope: !4745)
!4769 = !DILocation(line: 167, column: 10, scope: !4745)
!4770 = !DILocation(line: 169, column: 11, scope: !4745)
!4771 = !DILocation(line: 169, column: 10, scope: !4745)
!4772 = !DILocation(line: 158, column: 14, scope: !4745)
!4773 = distinct !DISubprogram(name: "runtime.printlock", linkageName: "runtime.printlock", scope: !518, file: !518, line: 138, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4774 = !DILocation(line: 139, column: 16, scope: !4773)
!4775 = !DILocation(line: 140, column: 2, scope: !4773)
!4776 = distinct !DISubprogram(name: "runtime.printunlock", linkageName: "runtime.printunlock", scope: !518, file: !518, line: 142, type: !3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4777 = !DILocation(line: 143, column: 18, scope: !4776)
!4778 = !DILocation(line: 144, column: 2, scope: !4776)
!4779 = distinct !DISubprogram(name: "runtime.sliceAppend", linkageName: "runtime.sliceAppend", scope: !4780, file: !4780, line: 12, type: !4781, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4783)
!4780 = !DIFile(filename: "slice.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!90, !90, !49, !49, !49, !49, !90}
!4783 = !{!4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791}
!4784 = !DILocalVariable(name: "srcBuf", arg: 1, scope: !4779, file: !4780, line: 12, type: !90)
!4785 = !DILocalVariable(name: "elemsBuf", arg: 2, scope: !4779, file: !4780, line: 12, type: !90)
!4786 = !DILocalVariable(name: "srcLen", arg: 3, scope: !4779, file: !4780, line: 12, type: !49)
!4787 = !DILocalVariable(name: "srcCap", arg: 4, scope: !4779, file: !4780, line: 12, type: !49)
!4788 = !DILocalVariable(name: "elemsLen", arg: 5, scope: !4779, file: !4780, line: 12, type: !49)
!4789 = !DILocalVariable(name: "elemSize", arg: 6, scope: !4779, file: !4780, line: 12, type: !49)
!4790 = !DILocalVariable(name: "layout", arg: 7, scope: !4779, file: !4780, line: 12, type: !90)
!4791 = !DILocalVariable(name: "newLen", scope: !4779, file: !4780, line: 13, type: !49)
!4792 = !DILocation(line: 12, column: 6, scope: !4779)
!4793 = !DILocation(line: 13, column: 12, scope: !4779)
!4794 = !DILocation(line: 13, column: 21, scope: !4779)
!4795 = !DILocation(line: 13, column: 19, scope: !4779)
!4796 = !DILocation(line: 13, column: 2, scope: !4779)
!4797 = !DILocation(line: 14, column: 5, scope: !4779)
!4798 = !DILocation(line: 14, column: 14, scope: !4779)
!4799 = !DILocation(line: 0, scope: !4779)
!4800 = !DILocation(line: 17, column: 33, scope: !4779)
!4801 = !DILocation(line: 17, column: 41, scope: !4779)
!4802 = !DILocation(line: 17, column: 49, scope: !4779)
!4803 = !DILocation(line: 17, column: 57, scope: !4779)
!4804 = !DILocation(line: 17, column: 65, scope: !4779)
!4805 = !DILocation(line: 17, column: 75, scope: !4779)
!4806 = !DILocation(line: 17, column: 32, scope: !4779)
!4807 = !DILocation(line: 17, column: 3, scope: !4779)
!4808 = !DILocation(line: 17, column: 14, scope: !4779)
!4809 = !DILocation(line: 20, column: 22, scope: !4779)
!4810 = !DILocation(line: 20, column: 30, scope: !4779)
!4811 = !DILocation(line: 20, column: 37, scope: !4779)
!4812 = !DILocation(line: 20, column: 36, scope: !4779)
!4813 = !DILocation(line: 20, column: 21, scope: !4779)
!4814 = !DILocation(line: 20, column: 48, scope: !4779)
!4815 = !DILocation(line: 20, column: 58, scope: !4779)
!4816 = !DILocation(line: 20, column: 67, scope: !4779)
!4817 = !DILocation(line: 20, column: 66, scope: !4779)
!4818 = !DILocation(line: 20, column: 10, scope: !4779)
!4819 = !DILocation(line: 12, column: 18, scope: !4779)
!4820 = !DILocation(line: 12, column: 59, scope: !4779)
!4821 = !DILocation(line: 23, column: 9, scope: !4779)
!4822 = !DILocation(line: 23, column: 17, scope: !4779)
!4823 = !DILocation(line: 23, column: 25, scope: !4779)
!4824 = !DILocation(line: 23, column: 2, scope: !4779)
!4825 = distinct !DISubprogram(name: "runtime.sliceGrow", linkageName: "runtime.sliceGrow", scope: !4780, file: !4780, line: 27, type: !4826, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4828)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!90, !49, !49, !49, !49, !90}
!4828 = !{!4829, !4830, !4831, !4832, !4833, !4834, !4835}
!4829 = !DILocalVariable(name: "oldBuf", arg: 1, scope: !4825, file: !4780, line: 27, type: !90)
!4830 = !DILocalVariable(name: "oldLen", arg: 2, scope: !4825, file: !4780, line: 27, type: !49)
!4831 = !DILocalVariable(name: "oldCap", arg: 3, scope: !4825, file: !4780, line: 27, type: !49)
!4832 = !DILocalVariable(name: "newCap", arg: 4, scope: !4825, file: !4780, line: 27, type: !49)
!4833 = !DILocalVariable(name: "elemSize", arg: 5, scope: !4825, file: !4780, line: 27, type: !49)
!4834 = !DILocalVariable(name: "layout", arg: 6, scope: !4825, file: !4780, line: 27, type: !90)
!4835 = !DILocalVariable(name: "buf", scope: !4825, file: !4780, line: 39, type: !90)
!4836 = !DILocation(line: 27, column: 6, scope: !4825)
!4837 = !DILocation(line: 28, column: 5, scope: !4825)
!4838 = !DILocation(line: 28, column: 15, scope: !4825)
!4839 = !DILocation(line: 28, column: 12, scope: !4825)
!4840 = !DILocation(line: 0, scope: !4825)
!4841 = !DILocation(line: 30, column: 10, scope: !4825)
!4842 = !DILocation(line: 30, column: 18, scope: !4825)
!4843 = !DILocation(line: 30, column: 26, scope: !4825)
!4844 = !DILocation(line: 30, column: 3, scope: !4825)
!4845 = !DILocation(line: 37, column: 30, scope: !4825)
!4846 = !DILocation(line: 37, column: 24, scope: !4825)
!4847 = !DILocation(line: 37, column: 13, scope: !4825)
!4848 = !DILocation(line: 37, column: 2, scope: !4825)
!4849 = !DILocation(line: 39, column: 15, scope: !4825)
!4850 = !DILocation(line: 39, column: 22, scope: !4825)
!4851 = !DILocation(line: 39, column: 21, scope: !4825)
!4852 = !DILocation(line: 39, column: 32, scope: !4825)
!4853 = !DILocation(line: 39, column: 14, scope: !4825)
!4854 = !DILocation(line: 39, column: 2, scope: !4825)
!4855 = !DILocation(line: 40, column: 5, scope: !4825)
!4856 = !DILocation(line: 40, column: 12, scope: !4825)
!4857 = !DILocation(line: 42, column: 11, scope: !4825)
!4858 = !DILocation(line: 42, column: 16, scope: !4825)
!4859 = !DILocation(line: 42, column: 24, scope: !4825)
!4860 = !DILocation(line: 42, column: 31, scope: !4825)
!4861 = !DILocation(line: 42, column: 30, scope: !4825)
!4862 = !DILocation(line: 42, column: 10, scope: !4825)
!4863 = !DILocation(line: 45, column: 9, scope: !4825)
!4864 = !DILocation(line: 45, column: 14, scope: !4825)
!4865 = !DILocation(line: 45, column: 22, scope: !4825)
!4866 = !DILocation(line: 45, column: 2, scope: !4825)
!4867 = distinct !DISubprogram(name: "runtime.tinygo_signal_handler", linkageName: "tinygo_signal_handler", scope: !417, file: !417, line: 420, type: !3429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4868)
!4868 = !{!4869, !4870, !4871, !4872}
!4869 = !DILocalVariable(name: "s", arg: 1, scope: !4867, file: !417, line: 420, type: !384)
!4870 = !DILocalVariable(name: "mask", scope: !4867, file: !417, line: 427, type: !104)
!4871 = !DILocalVariable(name: "val", scope: !4867, file: !417, line: 428, type: !104)
!4872 = !DILocalVariable(name: "swapped", scope: !4867, file: !417, line: 429, type: !374)
!4873 = !DILocation(line: 420, column: 6, scope: !4867)
!4874 = !DILocation(line: 0, scope: !4867)
!4875 = !DILocation(line: 427, column: 31, scope: !4867)
!4876 = !DILocation(line: 427, column: 21, scope: !4867)
!4877 = !DILocation(line: 427, column: 3, scope: !4867)
!4878 = !DILocation(line: 428, column: 30, scope: !4867)
!4879 = !DILocation(line: 428, column: 3, scope: !4867)
!4880 = !DILocation(line: 429, column: 45, scope: !4867)
!4881 = !DILocation(line: 429, column: 50, scope: !4867)
!4882 = !DILocation(line: 429, column: 54, scope: !4867)
!4883 = !DILocation(line: 429, column: 53, scope: !4867)
!4884 = !DILocation(line: 429, column: 44, scope: !4867)
!4885 = !DILocation(line: 429, column: 3, scope: !4867)
!4886 = !DILocation(line: 430, column: 6, scope: !4867)
!4887 = !DILocation(line: 437, column: 21, scope: !4867)
!4888 = !DILocation(line: 437, column: 25, scope: !4867)
!4889 = !DILocation(line: 441, column: 22, scope: !4867)
!4890 = !DILocation(line: 443, column: 2, scope: !4867)
!4891 = distinct !DISubprogram(name: "runtime.stringConcat", linkageName: "runtime.stringConcat", scope: !4253, file: !4253, line: 56, type: !4892, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4898)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{!4894, !4894}
!4894 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._string", baseType: !4895)
!4895 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !4896)
!4896 = !{!2124, !4897}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !49, size: 64, align: 64, offset: 64)
!4898 = !{!4899, !4900, !4901, !4902}
!4899 = !DILocalVariable(name: "x", arg: 1, scope: !4891, file: !4253, line: 56, type: !4894)
!4900 = !DILocalVariable(name: "y", arg: 2, scope: !4891, file: !4253, line: 56, type: !4894)
!4901 = !DILocalVariable(name: "length", scope: !4891, file: !4253, line: 62, type: !49)
!4902 = !DILocalVariable(name: "buf", scope: !4891, file: !4253, line: 63, type: !90)
!4903 = !DILocation(line: 56, column: 6, scope: !4891)
!4904 = !DILocation(line: 56, column: 19, scope: !4891)
!4905 = !DILocation(line: 56, column: 22, scope: !4891)
!4906 = !DILocation(line: 57, column: 7, scope: !4891)
!4907 = !DILocation(line: 57, column: 14, scope: !4891)
!4908 = !DILocation(line: 0, scope: !4891)
!4909 = !DILocation(line: 58, column: 10, scope: !4891)
!4910 = !DILocation(line: 58, column: 3, scope: !4891)
!4911 = !DILocation(line: 59, column: 14, scope: !4891)
!4912 = !DILocation(line: 59, column: 21, scope: !4891)
!4913 = !DILocation(line: 60, column: 10, scope: !4891)
!4914 = !DILocation(line: 60, column: 3, scope: !4891)
!4915 = !DILocation(line: 62, column: 15, scope: !4891)
!4916 = !DILocation(line: 62, column: 26, scope: !4891)
!4917 = !DILocation(line: 62, column: 22, scope: !4891)
!4918 = !DILocation(line: 62, column: 3, scope: !4891)
!4919 = !DILocation(line: 63, column: 16, scope: !4891)
!4920 = !DILocation(line: 63, column: 45, scope: !4891)
!4921 = !DILocation(line: 63, column: 15, scope: !4891)
!4922 = !DILocation(line: 63, column: 3, scope: !4891)
!4923 = !DILocation(line: 64, column: 10, scope: !4891)
!4924 = !DILocation(line: 64, column: 32, scope: !4891)
!4925 = !DILocation(line: 64, column: 40, scope: !4891)
!4926 = !DILocation(line: 64, column: 9, scope: !4891)
!4927 = !DILocation(line: 65, column: 21, scope: !4891)
!4928 = !DILocation(line: 65, column: 28, scope: !4891)
!4929 = !DILocation(line: 65, column: 20, scope: !4891)
!4930 = !DILocation(line: 65, column: 54, scope: !4891)
!4931 = !DILocation(line: 65, column: 62, scope: !4891)
!4932 = !DILocation(line: 65, column: 9, scope: !4891)
!4933 = !DILocation(line: 66, column: 21, scope: !4891)
!4934 = !DILocation(line: 66, column: 31, scope: !4891)
!4935 = !DILocation(line: 66, column: 43, scope: !4891)
!4936 = !DILocation(line: 66, column: 45, scope: !4891)
!4937 = !DILocation(line: 66, column: 17, scope: !4891)
!4938 = !DILocation(line: 66, column: 3, scope: !4891)
!4939 = distinct !DISubprogram(name: "runtime.stringFromBytes", linkageName: "runtime.stringFromBytes", scope: !4253, file: !4253, line: 71, type: !4940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4943)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!4942}
!4942 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !2123)
!4943 = !{!4944, !4945}
!4944 = !DILocalVariable(name: "x", arg: 1, scope: !4939, file: !4253, line: 71, type: !4942)
!4945 = !DILocalVariable(name: "buf", scope: !4939, file: !4253, line: 76, type: !90)
!4946 = !DILocation(line: 71, column: 6, scope: !4939)
!4947 = !DILocation(line: 71, column: 22, scope: !4939)
!4948 = !DILocation(line: 76, column: 17, scope: !4939)
!4949 = !DILocation(line: 76, column: 43, scope: !4939)
!4950 = !DILocation(line: 76, column: 14, scope: !4939)
!4951 = !DILocation(line: 76, column: 2, scope: !4939)
!4952 = !DILocation(line: 77, column: 9, scope: !4939)
!4953 = !DILocation(line: 77, column: 31, scope: !4939)
!4954 = !DILocation(line: 77, column: 39, scope: !4939)
!4955 = !DILocation(line: 77, column: 8, scope: !4939)
!4956 = !DILocation(line: 78, column: 20, scope: !4939)
!4957 = !DILocation(line: 78, column: 30, scope: !4939)
!4958 = !DILocation(line: 78, column: 42, scope: !4939)
!4959 = !DILocation(line: 78, column: 46, scope: !4939)
!4960 = !DILocation(line: 78, column: 16, scope: !4939)
!4961 = !DILocation(line: 78, column: 2, scope: !4939)
!4962 = distinct !DISubprogram(name: "main.f_gold", linkageName: "f_gold", scope: !4963, file: !4963, line: 6, type: !1914, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !4964)
!4963 = !DIFile(filename: "COUNT_DIGITS_FACTORIAL_SET_1_emit.go", directory: "/root/es/vert/vert/source_funs/go_transcoder/COUNT_DIGITS_FACTORIAL_SET_1")
!4964 = !{!4965, !4966, !4967}
!4965 = !DILocalVariable(name: "n", arg: 1, scope: !4962, file: !4963, line: 6, type: !1916)
!4966 = !DILocalVariable(name: "digits", scope: !4962, file: !4963, line: 13, type: !798)
!4967 = !DILocalVariable(name: "i", scope: !4962, file: !4963, line: 14, type: !1916)
!4968 = !DILocation(line: 6, column: 6, scope: !4962)
!4969 = !DILocation(line: 7, column: 5, scope: !4962)
!4970 = !DILocation(line: 7, column: 7, scope: !4962)
!4971 = !DILocation(line: 0, scope: !4962)
!4972 = !DILocation(line: 8, column: 3, scope: !4962)
!4973 = !DILocation(line: 10, column: 5, scope: !4962)
!4974 = !DILocation(line: 10, column: 7, scope: !4962)
!4975 = !DILocation(line: 11, column: 3, scope: !4962)
!4976 = !DILocation(line: 13, column: 6, scope: !4962)
!4977 = !DILocation(line: 14, column: 6, scope: !4962)
!4978 = !DILocation(line: 14, column: 19, scope: !4962)
!4979 = !DILocation(line: 14, column: 24, scope: !4962)
!4980 = !DILocation(line: 14, column: 21, scope: !4962)
!4981 = !DILocation(line: 15, column: 32, scope: !4962)
!4982 = !DILocation(line: 15, column: 31, scope: !4962)
!4983 = !DILocation(line: 15, column: 23, scope: !4962)
!4984 = !DILocation(line: 15, column: 3, scope: !4962)
!4985 = !DILocation(line: 14, column: 27, scope: !4962)
!4986 = !DILocation(line: 17, column: 24, scope: !4962)
!4987 = !DILocation(line: 17, column: 23, scope: !4962)
!4988 = !DILocation(line: 17, column: 32, scope: !4962)
!4989 = !DILocation(line: 17, column: 12, scope: !4962)
!4990 = !DILocation(line: 17, column: 2, scope: !4962)
