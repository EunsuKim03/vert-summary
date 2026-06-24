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
define internal double @math.Abs(double %x, ptr %context) #1 !dbg !1742 {
entry:
    #dbg_value(double %x, !1747, !DIExpression(), !1748)
    #dbg_value(double %x, !1747, !DIExpression(), !1749)
  %0 = call i64 @math.Float64bits(double %x, ptr undef), !dbg !1750
  %1 = and i64 %0, 9223372036854775807, !dbg !1751
  %2 = call double @math.Float64frombits(i64 %1, ptr undef), !dbg !1752
  ret double %2, !dbg !1753
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @math.Float64bits(double %f, ptr %context) unnamed_addr #1 !dbg !1754 {
entry:
    #dbg_value(double %f, !1757, !DIExpression(), !1758)
  %f1 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !1759
  store double %f, ptr %f1, align 8, !dbg !1759
  %0 = load i64, ptr %f1, align 8, !dbg !1760
  ret i64 %0, !dbg !1761
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Float64frombits(i64 %b, ptr %context) unnamed_addr #1 !dbg !1762 {
entry:
    #dbg_value(i64 %b, !1766, !DIExpression(), !1767)
  %b1 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !1768
  store i64 %b, ptr %b1, align 8, !dbg !1768
  %0 = load double, ptr %b1, align 8, !dbg !1769
  ret double %0, !dbg !1770
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Log(double %x, ptr %context) unnamed_addr #1 !dbg !1771 {
entry:
    #dbg_value(double %x, !1774, !DIExpression(), !1775)
  %0 = call double @llvm.log.f64(double %x), !dbg !1775
  ret double %0, !dbg !1775
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #0

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Floor(double %x, ptr %context) #1 !dbg !1776 {
entry:
    #dbg_value(double %x, !1779, !DIExpression(), !1780)
  %0 = call double @llvm.floor.f64(double %x), !dbg !1780
  ret double %0, !dbg !1780
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #0

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Log10(double %x, ptr %context) #1 !dbg !1781 {
entry:
    #dbg_value(double %x, !1784, !DIExpression(), !1785)
  br i1 false, label %if.then, label %if.done, !dbg !1786

if.then:                                          ; preds = %entry
    #dbg_value(double %x, !1784, !DIExpression(), !1787)
  %0 = call double @math.archLog10(double %x, ptr undef), !dbg !1788
  ret double %0, !dbg !1789

if.done:                                          ; preds = %entry
    #dbg_value(double %x, !1784, !DIExpression(), !1790)
  %1 = call double @math.log10(double %x, ptr undef), !dbg !1791
  ret double %1, !dbg !1792
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.archLog10(double %x, ptr %context) unnamed_addr #1 !dbg !1793 {
entry:
    #dbg_value(double %x, !1795, !DIExpression(), !1796)
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"math$pack.32", ptr undef), !dbg !1797
  unreachable, !dbg !1797
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.log10(double %x, ptr %context) unnamed_addr #1 !dbg !1798 {
entry:
    #dbg_value(double %x, !1800, !DIExpression(), !1801)
    #dbg_value(double %x, !1800, !DIExpression(), !1802)
  %0 = call double @math.Log(double %x, ptr undef), !dbg !1803
  %1 = fmul double %0, 0x3FDBCB7B1526E50E, !dbg !1804
  ret double %1, !dbg !1805
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.SwapUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %new, ptr %context) unnamed_addr #1 !dbg !1806 {
entry:
    #dbg_value(ptr %addr, !1812, !DIExpression(), !1814)
    #dbg_value(i32 %new, !1813, !DIExpression(), !1814)
  %0 = atomicrmw xchg ptr %addr, i32 %new syncscope("singlethread") seq_cst, align 4, !dbg !1814
  ret i32 %0, !dbg !1814
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"sync/atomic.CompareAndSwapUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %old, i32 %new, ptr %context) unnamed_addr #1 !dbg !1815 {
entry:
    #dbg_value(ptr %addr, !1819, !DIExpression(), !1822)
    #dbg_value(i32 %old, !1820, !DIExpression(), !1822)
    #dbg_value(i32 %new, !1821, !DIExpression(), !1822)
  %0 = cmpxchg ptr %addr, i32 %old, i32 %new syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !1822
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !1822
  ret i1 %1, !dbg !1822
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.AddUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %delta, ptr %context) unnamed_addr #1 !dbg !1823 {
entry:
    #dbg_value(ptr %addr, !1825, !DIExpression(), !1827)
    #dbg_value(i32 %delta, !1826, !DIExpression(), !1827)
  %0 = atomicrmw add ptr %addr, i32 %delta syncscope("singlethread") seq_cst, align 4, !dbg !1827
  %1 = add i32 %0, %delta, !dbg !1827
  ret i32 %1, !dbg !1827
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.LoadUint32"(ptr nocapture dereferenceable_or_null(4) %addr, ptr %context) unnamed_addr #1 !dbg !1828 {
entry:
    #dbg_value(ptr %addr, !1832, !DIExpression(), !1833)
  %0 = load atomic i32, ptr %addr seq_cst, align 4, !dbg !1833
  ret i32 %0, !dbg !1833
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"sync/atomic.StoreUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %val, ptr %context) unnamed_addr #1 !dbg !1834 {
entry:
    #dbg_value(ptr %addr, !1836, !DIExpression(), !1838)
    #dbg_value(i32 %val, !1837, !DIExpression(), !1838)
  store atomic i32 %val, ptr %addr seq_cst, align 4, !dbg !1838
  ret void, !dbg !1838
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Add"(ptr dereferenceable_or_null(4) %x, i32 %delta, ptr %context) #1 !dbg !1839 {
entry:
    #dbg_value(ptr %x, !1845, !DIExpression(), !1847)
    #dbg_value(i32 %delta, !1846, !DIExpression(), !1847)
    #dbg_value(ptr %x, !1845, !DIExpression(), !1848)
  %0 = icmp eq ptr %x, null, !dbg !1849
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1849

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1849
    #dbg_value(i32 %delta, !1846, !DIExpression(), !1850)
  %2 = call i32 @"sync/atomic.AddUint32"(ptr %1, i32 %delta, ptr undef), !dbg !1851
  ret i32 %2, !dbg !1852

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1849
  unreachable, !dbg !1849
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr dereferenceable_or_null(4) %x, i32 %old, i32 %new, ptr %context) #1 !dbg !1853 {
entry:
    #dbg_value(ptr %x, !1857, !DIExpression(), !1860)
    #dbg_value(i32 %old, !1858, !DIExpression(), !1860)
    #dbg_value(i32 %new, !1859, !DIExpression(), !1860)
    #dbg_value(ptr %x, !1857, !DIExpression(), !1861)
  %0 = icmp eq ptr %x, null, !dbg !1862
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1862

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1862
    #dbg_value(i32 %old, !1858, !DIExpression(), !1863)
    #dbg_value(i32 %new, !1859, !DIExpression(), !1864)
  %2 = call i1 @"sync/atomic.CompareAndSwapUint32"(ptr %1, i32 %old, i32 %new, ptr undef), !dbg !1865
  ret i1 %2, !dbg !1866

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1862
  unreachable, !dbg !1862
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Load"(ptr dereferenceable_or_null(4) %x, ptr %context) #1 !dbg !1867 {
entry:
    #dbg_value(ptr %x, !1871, !DIExpression(), !1872)
    #dbg_value(ptr %x, !1871, !DIExpression(), !1873)
  %0 = icmp eq ptr %x, null, !dbg !1874
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1874

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1874
  %2 = call i32 @"sync/atomic.LoadUint32"(ptr %1, ptr undef), !dbg !1875
  ret i32 %2, !dbg !1876

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1874
  unreachable, !dbg !1874
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*sync/atomic.Uint32).Store"(ptr dereferenceable_or_null(4) %x, i32 %val, ptr %context) #1 !dbg !1877 {
entry:
    #dbg_value(ptr %x, !1879, !DIExpression(), !1881)
    #dbg_value(i32 %val, !1880, !DIExpression(), !1881)
    #dbg_value(ptr %x, !1879, !DIExpression(), !1882)
  %0 = icmp eq ptr %x, null, !dbg !1883
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1883

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1883
    #dbg_value(i32 %val, !1880, !DIExpression(), !1884)
  call void @"sync/atomic.StoreUint32"(ptr %1, i32 %val, ptr undef), !dbg !1885
  ret void, !dbg !1886

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1883
  unreachable, !dbg !1883
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Swap"(ptr dereferenceable_or_null(4) %x, i32 %new, ptr %context) #1 !dbg !1887 {
entry:
    #dbg_value(ptr %x, !1889, !DIExpression(), !1891)
    #dbg_value(i32 %new, !1890, !DIExpression(), !1891)
    #dbg_value(ptr %x, !1889, !DIExpression(), !1892)
  %0 = icmp eq ptr %x, null, !dbg !1893
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1893

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1893
    #dbg_value(i32 %new, !1890, !DIExpression(), !1894)
  %2 = call i32 @"sync/atomic.SwapUint32"(ptr %1, i32 %new, ptr undef), !dbg !1895
  ret i32 %2, !dbg !1896

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1893
  unreachable, !dbg !1893
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*internal/futex.Futex).Wait"(ptr dereferenceable_or_null(4) %f, i32 %cmp, ptr %context) #1 !dbg !1897 {
entry:
    #dbg_value(ptr %f, !1903, !DIExpression(), !1905)
    #dbg_value(i32 %cmp, !1904, !DIExpression(), !1905)
    #dbg_value(ptr %f, !1903, !DIExpression(), !1906)
  %0 = icmp eq ptr %f, null, !dbg !1907
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1907

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1907
    #dbg_value(i32 %cmp, !1904, !DIExpression(), !1908)
  call void @tinygo_futex_wait(ptr %1, i32 %cmp), !dbg !1909
  ret i1 false, !dbg !1910

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1907
  unreachable, !dbg !1907
}

declare void @tinygo_futex_wait(ptr nocapture dereferenceable_or_null(4), i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/futex.Futex).Wake"(ptr dereferenceable_or_null(4) %f, ptr %context) #1 !dbg !1911 {
entry:
    #dbg_value(ptr %f, !1915, !DIExpression(), !1916)
    #dbg_value(ptr %f, !1915, !DIExpression(), !1917)
  %0 = icmp eq ptr %f, null, !dbg !1918
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1918

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1918
  call void @tinygo_futex_wake(ptr %1), !dbg !1919
  ret void, !dbg !1920

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1918
  unreachable, !dbg !1918
}

declare void @tinygo_futex_wake(ptr nocapture dereferenceable_or_null(4)) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/futex.Futex).WakeAll"(ptr dereferenceable_or_null(4) %f, ptr %context) #1 !dbg !1921 {
entry:
    #dbg_value(ptr %f, !1923, !DIExpression(), !1924)
    #dbg_value(ptr %f, !1923, !DIExpression(), !1925)
  %0 = icmp eq ptr %f, null, !dbg !1926
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1926

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1926
  call void @tinygo_futex_wake_all(ptr %1), !dbg !1927
  ret void, !dbg !1928

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1926
  unreachable, !dbg !1926
}

declare void @tinygo_futex_wake_all(ptr nocapture dereferenceable_or_null(4)) #2

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(internal/gclayout.Layout).AsPtr"(i64 %l, ptr %context) #1 !dbg !1929 {
entry:
    #dbg_value(i64 %l, !1935, !DIExpression(), !1936)
    #dbg_value(i64 %l, !1935, !DIExpression(), !1937)
  %0 = inttoptr i64 %l to ptr, !dbg !1938
  ret ptr %0, !dbg !1939
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/itoa.Itoa"(i64 %val, ptr %context) #1 !dbg !1940 {
entry:
    #dbg_value(i64 %val, !1945, !DIExpression(), !1946)
    #dbg_value(i64 %val, !1945, !DIExpression(), !1947)
  %0 = icmp slt i64 %val, 0, !dbg !1948
  br i1 %0, label %if.then, label %if.done, !dbg !1949

if.then:                                          ; preds = %entry
    #dbg_value(i64 %val, !1945, !DIExpression(), !1950)
  %1 = sub i64 0, %val, !dbg !1951
  %2 = call %runtime._string @"internal/itoa.Uitoa"(i64 %1, ptr undef), !dbg !1952
  %3 = extractvalue %runtime._string %2, 0, !dbg !1953
  %4 = extractvalue %runtime._string %2, 1, !dbg !1953
  %5 = call %runtime._string @runtime.stringConcat(ptr @"internal/itoa$string", i64 1, ptr %3, i64 %4, ptr undef), !dbg !1953
  ret %runtime._string %5, !dbg !1954

if.done:                                          ; preds = %entry
    #dbg_value(i64 %val, !1945, !DIExpression(), !1955)
  %6 = call %runtime._string @"internal/itoa.Uitoa"(i64 %val, ptr undef), !dbg !1956
  ret %runtime._string %6, !dbg !1957
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/itoa.Uitoa"(i64 %val, ptr %context) unnamed_addr #1 !dbg !1958 {
entry:
    #dbg_value(i64 %val, !1960, !DIExpression(), !1963)
    #dbg_value(i64 %val, !1960, !DIExpression(), !1964)
  %0 = icmp eq i64 %val, 0, !dbg !1965
  br i1 %0, label %if.then, label %if.done, !dbg !1966

if.then:                                          ; preds = %entry
  ret %runtime._string { ptr @"internal/itoa$string.1", i64 1 }, !dbg !1967

if.done:                                          ; preds = %entry
  %buf = call align 1 ptr @runtime.alloc(i64 20, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !1968
    #dbg_value(i64 19, !1961, !DIExpression(), !1969)
  br label %for.loop, !dbg !1966

for.loop:                                         ; preds = %lookup.next, %if.done
  %1 = phi i64 [ %val, %if.done ], [ %4, %lookup.next ], !dbg !1970
  %2 = phi i64 [ 19, %if.done ], [ %11, %lookup.next ], !dbg !1969
    #dbg_value(i64 %1, !1960, !DIExpression(), !1971)
  %3 = icmp uge i64 %1, 10, !dbg !1972
  br i1 %3, label %for.body, label %for.done, !dbg !1966

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !1960, !DIExpression(), !1973)
  %4 = udiv i64 %1, 10, !dbg !1974
    #dbg_value(i64 %4, !1962, !DIExpression(), !1975)
    #dbg_value(i64 %2, !1961, !DIExpression(), !1976)
    #dbg_value(i64 %1, !1960, !DIExpression(), !1977)
  %5 = add i64 48, %1, !dbg !1978
    #dbg_value(i64 %4, !1962, !DIExpression(), !1979)
  %6 = mul i64 %4, 10, !dbg !1980
  %7 = sub i64 %5, %6, !dbg !1981
  %8 = trunc i64 %7 to i8, !dbg !1982
  %9 = icmp uge i64 %2, 20, !dbg !1983
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !1983

lookup.next:                                      ; preds = %for.body
  %10 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1983
  store i8 %8, ptr %10, align 1, !dbg !1983
  %11 = sub i64 %2, 1, !dbg !1984
    #dbg_value(i64 %11, !1961, !DIExpression(), !1984)
    #dbg_value(i64 %4, !1962, !DIExpression(), !1985)
    #dbg_value(i64 %4, !1960, !DIExpression(), !1986)
  br label %for.loop, !dbg !1966

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !1961, !DIExpression(), !1987)
    #dbg_value(i64 %1, !1960, !DIExpression(), !1988)
  %12 = add i64 48, %1, !dbg !1989
  %13 = trunc i64 %12 to i8, !dbg !1990
  %14 = icmp uge i64 %2, 20, !dbg !1991
  br i1 %14, label %lookup.throw1, label %lookup.next2, !dbg !1991

lookup.next2:                                     ; preds = %for.done
  %15 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1991
  store i8 %13, ptr %15, align 1, !dbg !1991
    #dbg_value(i64 %2, !1961, !DIExpression(), !1992)
  %slice.lowhigh = icmp ugt i64 %2, 20, !dbg !1993
  %slice.lowmax = or i1 %slice.lowhigh, false, !dbg !1993
  %slice.lowcap = or i1 %slice.lowmax, false, !dbg !1993
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !1993

slice.next:                                       ; preds = %lookup.next2
  %slice.len = sub i64 20, %2, !dbg !1993
  %slice.ptr = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1993
  %slice.cap = sub i64 20, %2, !dbg !1993
  %16 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !1993
  %17 = insertvalue { ptr, i64, i64 } %16, i64 %slice.len, 1, !dbg !1993
  %18 = insertvalue { ptr, i64, i64 } %17, i64 %slice.cap, 2, !dbg !1993
  %19 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !1994
  %20 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !1994
  %21 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !1994
  %22 = call %runtime._string @runtime.stringFromBytes(ptr %19, i64 %20, i64 %21, ptr undef), !dbg !1994
  ret %runtime._string %22, !dbg !1995

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !1983
  unreachable, !dbg !1983

lookup.throw1:                                    ; preds = %for.done
  call void @runtime.lookupPanic(ptr undef), !dbg !1991
  unreachable, !dbg !1991

slice.throw:                                      ; preds = %lookup.next2
  call void @runtime.slicePanic(ptr undef), !dbg !1993
  unreachable, !dbg !1993
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"unicode/utf8.DecodeRuneInString"(ptr readonly %s.data, i64 %s.len, ptr %context) #1 !dbg !1996 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !2004
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !2004
    #dbg_value(ptr %s.data, !2000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2004)
    #dbg_value(i64 %s.len, !2000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2004)
    #dbg_value(%runtime._string %1, !2000, !DIExpression(), !2005)
  %2 = extractvalue %runtime._string %1, 0, !dbg !2006
  %3 = extractvalue %runtime._string %1, 1, !dbg !2006
  %4 = call i1 @runtime.stringEqual(ptr %2, i64 %3, ptr null, i64 0, ptr undef), !dbg !2006
  %5 = xor i1 %4, true, !dbg !2006
  br i1 %5, label %cond.true, label %if.else, !dbg !2007

cond.true:                                        ; preds = %entry
    #dbg_value(%runtime._string %1, !2000, !DIExpression(), !2008)
  %len = extractvalue %runtime._string %1, 1, !dbg !2009
  %6 = icmp uge i64 0, %len, !dbg !2009
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !2009

lookup.next:                                      ; preds = %cond.true
  %7 = extractvalue %runtime._string %1, 0, !dbg !2009
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !2009
  %9 = load i8, ptr %8, align 1, !dbg !2009
  %10 = icmp ult i8 %9, -128, !dbg !2010
  br i1 %10, label %if.then, label %if.else, !dbg !2007

if.then:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2000, !DIExpression(), !2011)
  %len1 = extractvalue %runtime._string %1, 1, !dbg !2012
  %11 = icmp uge i64 0, %len1, !dbg !2012
  br i1 %11, label %lookup.throw2, label %lookup.next3, !dbg !2012

lookup.next3:                                     ; preds = %if.then
  %12 = extractvalue %runtime._string %1, 0, !dbg !2012
  %13 = getelementptr inbounds i8, ptr %12, i64 0, !dbg !2012
  %14 = load i8, ptr %13, align 1, !dbg !2012
  %15 = zext i8 %14 to i32, !dbg !2013
  %16 = insertvalue { i32, i64 } zeroinitializer, i32 %15, 0, !dbg !2014
  %17 = insertvalue { i32, i64 } %16, i64 1, 1, !dbg !2014
  ret { i32, i64 } %17, !dbg !2014

if.else:                                          ; preds = %lookup.next, %entry
    #dbg_value(%runtime._string %1, !2000, !DIExpression(), !2015)
  %18 = extractvalue %runtime._string %1, 0, !dbg !2016
  %19 = extractvalue %runtime._string %1, 1, !dbg !2016
  %20 = call { i32, i64 } @"unicode/utf8.decodeRuneInStringSlow"(ptr %18, i64 %19, ptr undef), !dbg !2016
  %21 = extractvalue { i32, i64 } %20, 0, !dbg !2016
    #dbg_value(i32 %21, !2001, !DIExpression(), !2017)
  %22 = extractvalue { i32, i64 } %20, 1, !dbg !2016
    #dbg_value(i64 %22, !2003, !DIExpression(), !2018)
  %23 = insertvalue { i32, i64 } zeroinitializer, i32 %21, 0, !dbg !2019
  %24 = insertvalue { i32, i64 } %23, i64 %22, 1, !dbg !2019
  ret { i32, i64 } %24, !dbg !2019

lookup.throw:                                     ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !2009
  unreachable, !dbg !2009

lookup.throw2:                                    ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2012
  unreachable, !dbg !2012
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"unicode/utf8.decodeRuneInStringSlow"(ptr readonly %s.data, i64 %s.len, ptr %context) unnamed_addr #1 !dbg !2020 {
entry:
  %accept = alloca %"unicode/utf8.acceptRange", align 8, !dbg !2032
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !2032
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !2032
    #dbg_value(ptr %s.data, !2022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2032)
    #dbg_value(i64 %s.len, !2022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2032)
    #dbg_value(%runtime._string %1, !2022, !DIExpression(), !2033)
  %len = extractvalue %runtime._string %1, 1, !dbg !2034
    #dbg_value(i64 %len, !2023, !DIExpression(), !2035)
    #dbg_value(i64 %len, !2023, !DIExpression(), !2036)
  %2 = icmp slt i64 %len, 1, !dbg !2037
  br i1 %2, label %if.then, label %if.done, !dbg !2038

if.then:                                          ; preds = %entry
  ret { i32, i64 } { i32 65533, i64 0 }, !dbg !2039

if.done:                                          ; preds = %entry
    #dbg_value(%runtime._string %1, !2022, !DIExpression(), !2040)
  %len17 = extractvalue %runtime._string %1, 1, !dbg !2041
  %3 = icmp uge i64 0, %len17, !dbg !2041
  br i1 %3, label %lookup.throw, label %lookup.next, !dbg !2041

lookup.next:                                      ; preds = %if.done
  %4 = extractvalue %runtime._string %1, 0, !dbg !2041
  %5 = getelementptr inbounds i8, ptr %4, i64 0, !dbg !2041
  %6 = load i8, ptr %5, align 1, !dbg !2041
    #dbg_value(i8 %6, !2024, !DIExpression(), !2042)
    #dbg_value(i8 %6, !2024, !DIExpression(), !2043)
  %7 = zext i8 %6 to i64, !dbg !2044
  %8 = icmp uge i64 %7, 256, !dbg !2044
  br i1 %8, label %lookup.throw18, label %lookup.next19, !dbg !2044

lookup.next19:                                    ; preds = %lookup.next
  %9 = getelementptr inbounds [256 x i8], ptr @"unicode/utf8.first", i32 0, i64 %7, !dbg !2044
  %10 = load i8, ptr %9, align 1, !dbg !2044
    #dbg_value(i8 %10, !2025, !DIExpression(), !2045)
    #dbg_value(i8 %10, !2025, !DIExpression(), !2046)
  %11 = icmp uge i8 %10, -16, !dbg !2047
  br i1 %11, label %if.then1, label %if.done2, !dbg !2038

if.then1:                                         ; preds = %lookup.next19
    #dbg_value(i8 %10, !2025, !DIExpression(), !2048)
  %12 = zext i8 %10 to i32, !dbg !2049
  %13 = shl i32 %12, 31, !dbg !2050
  %shift.result = select i1 false, i32 0, i32 %13, !dbg !2050
  %14 = ashr i32 %shift.result, 31, !dbg !2051
    #dbg_value(i32 %14, !2026, !DIExpression(), !2052)
    #dbg_value(%runtime._string %1, !2022, !DIExpression(), !2053)
  %len20 = extractvalue %runtime._string %1, 1, !dbg !2054
  %15 = icmp uge i64 0, %len20, !dbg !2054
  br i1 %15, label %lookup.throw21, label %lookup.next22, !dbg !2054

lookup.next22:                                    ; preds = %if.then1
  %16 = extractvalue %runtime._string %1, 0, !dbg !2054
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !2054
  %18 = load i8, ptr %17, align 1, !dbg !2054
  %19 = zext i8 %18 to i32, !dbg !2055
    #dbg_value(i32 %14, !2026, !DIExpression(), !2056)
  %20 = xor i32 %14, -1, !dbg !2057
  %21 = and i32 %19, %20, !dbg !2057
    #dbg_value(i32 %14, !2026, !DIExpression(), !2058)
  %22 = and i32 65533, %14, !dbg !2059
  %23 = or i32 %21, %22, !dbg !2060
  %24 = insertvalue { i32, i64 } zeroinitializer, i32 %23, 0, !dbg !2061
  %25 = insertvalue { i32, i64 } %24, i64 1, 1, !dbg !2061
  ret { i32, i64 } %25, !dbg !2061

if.done2:                                         ; preds = %lookup.next19
    #dbg_value(i8 %10, !2025, !DIExpression(), !2062)
  %26 = and i8 %10, 7, !dbg !2063
  %27 = zext i8 %26 to i64, !dbg !2064
    #dbg_value(i64 %27, !2027, !DIExpression(), !2065)
  store %"unicode/utf8.acceptRange" zeroinitializer, ptr %accept, align 1, !dbg !2032
    #dbg_value(i8 %10, !2025, !DIExpression(), !2066)
  %28 = lshr i8 %10, 4, !dbg !2067
  %shift.result23 = select i1 false, i8 0, i8 %28, !dbg !2067
  %29 = zext i8 %shift.result23 to i64, !dbg !2068
  %30 = icmp uge i64 %29, 16, !dbg !2068
  br i1 %30, label %lookup.throw24, label %lookup.next25, !dbg !2068

lookup.next25:                                    ; preds = %if.done2
  %31 = getelementptr inbounds [16 x %"unicode/utf8.acceptRange"], ptr @"unicode/utf8.acceptRanges", i32 0, i64 %29, !dbg !2068
  %32 = load %"unicode/utf8.acceptRange", ptr %31, align 1, !dbg !2068
  store %"unicode/utf8.acceptRange" %32, ptr %accept, align 1, !dbg !2069
    #dbg_value(%"unicode/utf8.acceptRange" %32, !2028, !DIExpression(), !2069)
    #dbg_value(i64 %len, !2023, !DIExpression(), !2070)
    #dbg_value(i64 %27, !2027, !DIExpression(), !2071)
  %33 = icmp slt i64 %len, %27, !dbg !2072
  br i1 %33, label %if.then3, label %if.done4, !dbg !2038

if.then3:                                         ; preds = %lookup.next25
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2073

if.done4:                                         ; preds = %lookup.next25
    #dbg_value(%runtime._string %1, !2022, !DIExpression(), !2074)
  %len26 = extractvalue %runtime._string %1, 1, !dbg !2075
  %34 = icmp uge i64 1, %len26, !dbg !2075
  br i1 %34, label %lookup.throw27, label %lookup.next28, !dbg !2075

lookup.next28:                                    ; preds = %if.done4
  %35 = extractvalue %runtime._string %1, 0, !dbg !2075
  %36 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !2075
  %37 = load i8, ptr %36, align 1, !dbg !2075
    #dbg_value(i8 %37, !2029, !DIExpression(), !2076)
    #dbg_value(i8 %37, !2029, !DIExpression(), !2077)
  %38 = getelementptr inbounds %"unicode/utf8.acceptRange", ptr %accept, i32 0, i32 0, !dbg !2078
  %39 = icmp eq ptr %38, null, !dbg !2078
  br i1 %39, label %deref.throw, label %deref.next, !dbg !2078

deref.next:                                       ; preds = %lookup.next28
  %40 = load i8, ptr %38, align 1, !dbg !2078
  %41 = icmp ult i8 %37, %40, !dbg !2079
  br i1 %41, label %if.then5, label %cond.false, !dbg !2038

if.then5:                                         ; preds = %deref.next30, %deref.next
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2080

cond.false:                                       ; preds = %deref.next
  %42 = getelementptr inbounds %"unicode/utf8.acceptRange", ptr %accept, i32 0, i32 1, !dbg !2081
  %43 = icmp eq ptr %42, null, !dbg !2081
  br i1 %43, label %deref.throw29, label %deref.next30, !dbg !2081

deref.next30:                                     ; preds = %cond.false
  %44 = load i8, ptr %42, align 1, !dbg !2081
    #dbg_value(i8 %37, !2029, !DIExpression(), !2082)
  %45 = icmp ult i8 %44, %37, !dbg !2083
  br i1 %45, label %if.then5, label %if.done6, !dbg !2038

if.done6:                                         ; preds = %deref.next30
    #dbg_value(i64 %27, !2027, !DIExpression(), !2084)
  %46 = icmp sle i64 %27, 2, !dbg !2085
  br i1 %46, label %if.then7, label %if.done8, !dbg !2038

if.then7:                                         ; preds = %if.done6
    #dbg_value(i8 %6, !2024, !DIExpression(), !2086)
  %47 = and i8 %6, 31, !dbg !2087
  %48 = zext i8 %47 to i32, !dbg !2088
  %49 = shl i32 %48, 6, !dbg !2089
  %shift.result31 = select i1 false, i32 0, i32 %49, !dbg !2089
    #dbg_value(i8 %37, !2029, !DIExpression(), !2090)
  %50 = and i8 %37, 63, !dbg !2091
  %51 = zext i8 %50 to i32, !dbg !2092
  %52 = or i32 %shift.result31, %51, !dbg !2093
  %53 = insertvalue { i32, i64 } zeroinitializer, i32 %52, 0, !dbg !2094
  %54 = insertvalue { i32, i64 } %53, i64 2, 1, !dbg !2094
  ret { i32, i64 } %54, !dbg !2094

if.done8:                                         ; preds = %if.done6
    #dbg_value(%runtime._string %1, !2022, !DIExpression(), !2095)
  %len32 = extractvalue %runtime._string %1, 1, !dbg !2096
  %55 = icmp uge i64 2, %len32, !dbg !2096
  br i1 %55, label %lookup.throw33, label %lookup.next34, !dbg !2096

lookup.next34:                                    ; preds = %if.done8
  %56 = extractvalue %runtime._string %1, 0, !dbg !2096
  %57 = getelementptr inbounds i8, ptr %56, i64 2, !dbg !2096
  %58 = load i8, ptr %57, align 1, !dbg !2096
    #dbg_value(i8 %58, !2030, !DIExpression(), !2097)
    #dbg_value(i8 %58, !2030, !DIExpression(), !2098)
  %59 = icmp ult i8 %58, -128, !dbg !2099
  br i1 %59, label %if.then9, label %cond.false10, !dbg !2038

if.then9:                                         ; preds = %cond.false10, %lookup.next34
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2100

cond.false10:                                     ; preds = %lookup.next34
    #dbg_value(i8 %58, !2030, !DIExpression(), !2101)
  %60 = icmp ult i8 -65, %58, !dbg !2102
  br i1 %60, label %if.then9, label %if.done11, !dbg !2038

if.done11:                                        ; preds = %cond.false10
    #dbg_value(i64 %27, !2027, !DIExpression(), !2103)
  %61 = icmp sle i64 %27, 3, !dbg !2104
  br i1 %61, label %if.then12, label %if.done13, !dbg !2038

if.then12:                                        ; preds = %if.done11
    #dbg_value(i8 %6, !2024, !DIExpression(), !2105)
  %62 = and i8 %6, 15, !dbg !2106
  %63 = zext i8 %62 to i32, !dbg !2107
  %64 = shl i32 %63, 12, !dbg !2108
  %shift.result35 = select i1 false, i32 0, i32 %64, !dbg !2108
    #dbg_value(i8 %37, !2029, !DIExpression(), !2109)
  %65 = and i8 %37, 63, !dbg !2110
  %66 = zext i8 %65 to i32, !dbg !2111
  %67 = shl i32 %66, 6, !dbg !2112
  %shift.result36 = select i1 false, i32 0, i32 %67, !dbg !2112
  %68 = or i32 %shift.result35, %shift.result36, !dbg !2113
    #dbg_value(i8 %58, !2030, !DIExpression(), !2114)
  %69 = and i8 %58, 63, !dbg !2115
  %70 = zext i8 %69 to i32, !dbg !2116
  %71 = or i32 %68, %70, !dbg !2117
  %72 = insertvalue { i32, i64 } zeroinitializer, i32 %71, 0, !dbg !2118
  %73 = insertvalue { i32, i64 } %72, i64 3, 1, !dbg !2118
  ret { i32, i64 } %73, !dbg !2118

if.done13:                                        ; preds = %if.done11
    #dbg_value(%runtime._string %1, !2022, !DIExpression(), !2119)
  %len37 = extractvalue %runtime._string %1, 1, !dbg !2120
  %74 = icmp uge i64 3, %len37, !dbg !2120
  br i1 %74, label %lookup.throw38, label %lookup.next39, !dbg !2120

lookup.next39:                                    ; preds = %if.done13
  %75 = extractvalue %runtime._string %1, 0, !dbg !2120
  %76 = getelementptr inbounds i8, ptr %75, i64 3, !dbg !2120
  %77 = load i8, ptr %76, align 1, !dbg !2120
    #dbg_value(i8 %77, !2031, !DIExpression(), !2121)
    #dbg_value(i8 %77, !2031, !DIExpression(), !2122)
  %78 = icmp ult i8 %77, -128, !dbg !2123
  br i1 %78, label %if.then14, label %cond.false15, !dbg !2038

if.then14:                                        ; preds = %cond.false15, %lookup.next39
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2124

cond.false15:                                     ; preds = %lookup.next39
    #dbg_value(i8 %77, !2031, !DIExpression(), !2125)
  %79 = icmp ult i8 -65, %77, !dbg !2126
  br i1 %79, label %if.then14, label %if.done16, !dbg !2038

if.done16:                                        ; preds = %cond.false15
    #dbg_value(i8 %6, !2024, !DIExpression(), !2127)
  %80 = and i8 %6, 7, !dbg !2128
  %81 = zext i8 %80 to i32, !dbg !2129
  %82 = shl i32 %81, 18, !dbg !2130
  %shift.result40 = select i1 false, i32 0, i32 %82, !dbg !2130
    #dbg_value(i8 %37, !2029, !DIExpression(), !2131)
  %83 = and i8 %37, 63, !dbg !2132
  %84 = zext i8 %83 to i32, !dbg !2133
  %85 = shl i32 %84, 12, !dbg !2134
  %shift.result41 = select i1 false, i32 0, i32 %85, !dbg !2134
  %86 = or i32 %shift.result40, %shift.result41, !dbg !2135
    #dbg_value(i8 %58, !2030, !DIExpression(), !2136)
  %87 = and i8 %58, 63, !dbg !2137
  %88 = zext i8 %87 to i32, !dbg !2138
  %89 = shl i32 %88, 6, !dbg !2139
  %shift.result42 = select i1 false, i32 0, i32 %89, !dbg !2139
  %90 = or i32 %86, %shift.result42, !dbg !2140
    #dbg_value(i8 %77, !2031, !DIExpression(), !2141)
  %91 = and i8 %77, 63, !dbg !2142
  %92 = zext i8 %91 to i32, !dbg !2143
  %93 = or i32 %90, %92, !dbg !2144
  %94 = insertvalue { i32, i64 } zeroinitializer, i32 %93, 0, !dbg !2145
  %95 = insertvalue { i32, i64 } %94, i64 4, 1, !dbg !2145
  ret { i32, i64 } %95, !dbg !2145

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !2041
  unreachable, !dbg !2041

lookup.throw18:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !2044
  unreachable, !dbg !2044

lookup.throw21:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !2054
  unreachable, !dbg !2054

lookup.throw24:                                   ; preds = %if.done2
  call void @runtime.lookupPanic(ptr undef), !dbg !2068
  unreachable, !dbg !2068

lookup.throw27:                                   ; preds = %if.done4
  call void @runtime.lookupPanic(ptr undef), !dbg !2075
  unreachable, !dbg !2075

deref.throw:                                      ; preds = %lookup.next28
  call void @runtime.nilPanic(ptr undef), !dbg !2078
  unreachable, !dbg !2078

deref.throw29:                                    ; preds = %cond.false
  call void @runtime.nilPanic(ptr undef), !dbg !2081
  unreachable, !dbg !2081

lookup.throw33:                                   ; preds = %if.done8
  call void @runtime.lookupPanic(ptr undef), !dbg !2096
  unreachable, !dbg !2096

lookup.throw38:                                   ; preds = %if.done13
  call void @runtime.lookupPanic(ptr undef), !dbg !2120
  unreachable, !dbg !2120
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"unicode/utf8.EncodeRune"(ptr %p.data, i64 %p.len, i64 %p.cap, i32 %r, ptr %context) #1 !dbg !2146 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !2156
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !2156
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !2156
    #dbg_value(ptr %p.data, !2154, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2156)
    #dbg_value(i64 %p.len, !2154, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2156)
    #dbg_value(i64 %p.cap, !2154, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2156)
    #dbg_value(i32 %r, !2155, !DIExpression(), !2156)
    #dbg_value(i32 %r, !2155, !DIExpression(), !2157)
  %3 = icmp ule i32 %r, 127, !dbg !2158
  br i1 %3, label %if.then, label %if.done, !dbg !2159

if.then:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2154, !DIExpression(), !2160)
    #dbg_value(i32 %r, !2155, !DIExpression(), !2161)
  %4 = trunc i32 %r to i8, !dbg !2162
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2163
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2163
  %5 = icmp uge i64 0, %indexaddr.len, !dbg !2163
  br i1 %5, label %lookup.throw, label %lookup.next, !dbg !2163

lookup.next:                                      ; preds = %if.then
  %6 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 0, !dbg !2163
  store i8 %4, ptr %6, align 1, !dbg !2163
  ret i64 1, !dbg !2164

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2154, !DIExpression(), !2165)
    #dbg_value(i32 %r, !2155, !DIExpression(), !2166)
  %7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2167
  %8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2167
  %9 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2167
  %10 = call i64 @"unicode/utf8.encodeRuneNonASCII"(ptr %7, i64 %8, i64 %9, i32 %r, ptr undef), !dbg !2167
  ret i64 %10, !dbg !2168

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2163
  unreachable, !dbg !2163
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"unicode/utf8.encodeRuneNonASCII"(ptr %p.data, i64 %p.len, i64 %p.cap, i32 %r, ptr %context) unnamed_addr #1 !dbg !2169 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !2174
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !2174
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !2174
    #dbg_value(ptr %p.data, !2171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2174)
    #dbg_value(i64 %p.len, !2171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2174)
    #dbg_value(i64 %p.cap, !2171, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2174)
    #dbg_value(i32 %r, !2172, !DIExpression(), !2174)
    #dbg_value(i32 %r, !2172, !DIExpression(), !2175)
    #dbg_value(i32 %r, !2173, !DIExpression(), !2176)
    #dbg_value(i32 %r, !2173, !DIExpression(), !2177)
  %3 = icmp ule i32 %r, 2047, !dbg !2178
  br i1 %3, label %switch.body, label %switch.next, !dbg !2179

switch.body:                                      ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2171, !DIExpression(), !2180)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2181
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2181
  %4 = icmp uge i64 1, %indexaddr.len, !dbg !2181
  br i1 %4, label %lookup.throw, label %lookup.next, !dbg !2181

lookup.next:                                      ; preds = %switch.body
  %5 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 1, !dbg !2181
  %6 = load i8, ptr %5, align 1, !dbg !2181
    #dbg_value({ ptr, i64, i64 } %2, !2171, !DIExpression(), !2182)
    #dbg_value(i32 %r, !2172, !DIExpression(), !2183)
  %7 = ashr i32 %r, 6, !dbg !2184
  %8 = trunc i32 %7 to i8, !dbg !2185
  %9 = or i8 -64, %8, !dbg !2186
  %indexaddr.ptr8 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2187
  %indexaddr.len9 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2187
  %10 = icmp uge i64 0, %indexaddr.len9, !dbg !2187
  br i1 %10, label %lookup.throw10, label %lookup.next11, !dbg !2187

lookup.next11:                                    ; preds = %lookup.next
  %11 = getelementptr inbounds i8, ptr %indexaddr.ptr8, i64 0, !dbg !2187
  store i8 %9, ptr %11, align 1, !dbg !2187
    #dbg_value({ ptr, i64, i64 } %2, !2171, !DIExpression(), !2188)
    #dbg_value(i32 %r, !2172, !DIExpression(), !2189)
  %12 = trunc i32 %r to i8, !dbg !2190
  %13 = and i8 %12, 63, !dbg !2191
  %14 = or i8 -128, %13, !dbg !2192
  %indexaddr.ptr12 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2193
  %indexaddr.len13 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2193
  %15 = icmp uge i64 1, %indexaddr.len13, !dbg !2193
  br i1 %15, label %lookup.throw14, label %lookup.next15, !dbg !2193

lookup.next15:                                    ; preds = %lookup.next11
  %16 = getelementptr inbounds i8, ptr %indexaddr.ptr12, i64 1, !dbg !2193
  store i8 %14, ptr %16, align 1, !dbg !2193
  ret i64 2, !dbg !2194

switch.next:                                      ; preds = %entry
    #dbg_value(i32 %r, !2173, !DIExpression(), !2195)
  %17 = icmp ult i32 %r, 55296, !dbg !2196
  br i1 %17, label %switch.body1, label %switch.next2, !dbg !2179

switch.body1:                                     ; preds = %binop.done, %switch.next
    #dbg_value({ ptr, i64, i64 } %2, !2171, !DIExpression(), !2197)
  %indexaddr.ptr16 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2198
  %indexaddr.len17 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2198
  %18 = icmp uge i64 2, %indexaddr.len17, !dbg !2198
  br i1 %18, label %lookup.throw18, label %lookup.next19, !dbg !2198

lookup.next19:                                    ; preds = %switch.body1
  %19 = getelementptr inbounds i8, ptr %indexaddr.ptr16, i64 2, !dbg !2198
  %20 = load i8, ptr %19, align 1, !dbg !2198
    #dbg_value({ ptr, i64, i64 } %2, !2171, !DIExpression(), !2199)
    #dbg_value(i32 %r, !2172, !DIExpression(), !2200)
  %21 = ashr i32 %r, 12, !dbg !2201
  %22 = trunc i32 %21 to i8, !dbg !2202
  %23 = or i8 -32, %22, !dbg !2203
  %indexaddr.ptr20 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2204
  %indexaddr.len21 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2204
  %24 = icmp uge i64 0, %indexaddr.len21, !dbg !2204
  br i1 %24, label %lookup.throw22, label %lookup.next23, !dbg !2204

lookup.next23:                                    ; preds = %lookup.next19
  %25 = getelementptr inbounds i8, ptr %indexaddr.ptr20, i64 0, !dbg !2204
  store i8 %23, ptr %25, align 1, !dbg !2204
    #dbg_value({ ptr, i64, i64 } %2, !2171, !DIExpression(), !2205)
    #dbg_value(i32 %r, !2172, !DIExpression(), !2206)
  %26 = ashr i32 %r, 6, !dbg !2207
  %27 = trunc i32 %26 to i8, !dbg !2208
  %28 = and i8 %27, 63, !dbg !2209
  %29 = or i8 -128, %28, !dbg !2210
  %indexaddr.ptr24 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2211
  %indexaddr.len25 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2211
  %30 = icmp uge i64 1, %indexaddr.len25, !dbg !2211
  br i1 %30, label %lookup.throw26, label %lookup.next27, !dbg !2211

lookup.next27:                                    ; preds = %lookup.next23
  %31 = getelementptr inbounds i8, ptr %indexaddr.ptr24, i64 1, !dbg !2211
  store i8 %29, ptr %31, align 1, !dbg !2211
    #dbg_value({ ptr, i64, i64 } %2, !2171, !DIExpression(), !2212)
    #dbg_value(i32 %r, !2172, !DIExpression(), !2213)
  %32 = trunc i32 %r to i8, !dbg !2214
  %33 = and i8 %32, 63, !dbg !2215
  %34 = or i8 -128, %33, !dbg !2216
  %indexaddr.ptr28 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2217
  %indexaddr.len29 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2217
  %35 = icmp uge i64 2, %indexaddr.len29, !dbg !2217
  br i1 %35, label %lookup.throw30, label %lookup.next31, !dbg !2217

lookup.next31:                                    ; preds = %lookup.next27
  %36 = getelementptr inbounds i8, ptr %indexaddr.ptr28, i64 2, !dbg !2217
  store i8 %34, ptr %36, align 1, !dbg !2217
  ret i64 3, !dbg !2218

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i32 %r, !2173, !DIExpression(), !2219)
  %37 = icmp ult i32 57343, %r, !dbg !2220
  br i1 %37, label %binop.rhs, label %binop.done, !dbg !2179

binop.rhs:                                        ; preds = %switch.next2
    #dbg_value(i32 %r, !2173, !DIExpression(), !2221)
  %38 = icmp ule i32 %r, 65535, !dbg !2222
  br label %binop.done, !dbg !2179

binop.done:                                       ; preds = %binop.rhs, %switch.next2
  %39 = phi i1 [ false, %switch.next2 ], [ %38, %binop.rhs ], !dbg !2223
  br i1 %39, label %switch.body1, label %switch.next3, !dbg !2179

switch.next3:                                     ; preds = %binop.done
    #dbg_value(i32 %r, !2173, !DIExpression(), !2224)
  %40 = icmp ugt i32 %r, 65535, !dbg !2225
  br i1 %40, label %binop.rhs4, label %binop.done5, !dbg !2179

binop.rhs4:                                       ; preds = %switch.next3
    #dbg_value(i32 %r, !2173, !DIExpression(), !2226)
  %41 = icmp ule i32 %r, 1114111, !dbg !2227
  br label %binop.done5, !dbg !2179

binop.done5:                                      ; preds = %binop.rhs4, %switch.next3
  %42 = phi i1 [ false, %switch.next3 ], [ %41, %binop.rhs4 ], !dbg !2228
  br i1 %42, label %switch.body6, label %switch.next7, !dbg !2179

switch.body6:                                     ; preds = %binop.done5
    #dbg_value({ ptr, i64, i64 } %2, !2171, !DIExpression(), !2229)
  %indexaddr.ptr32 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2230
  %indexaddr.len33 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2230
  %43 = icmp uge i64 3, %indexaddr.len33, !dbg !2230
  br i1 %43, label %lookup.throw34, label %lookup.next35, !dbg !2230

lookup.next35:                                    ; preds = %switch.body6
  %44 = getelementptr inbounds i8, ptr %indexaddr.ptr32, i64 3, !dbg !2230
  %45 = load i8, ptr %44, align 1, !dbg !2230
    #dbg_value({ ptr, i64, i64 } %2, !2171, !DIExpression(), !2231)
    #dbg_value(i32 %r, !2172, !DIExpression(), !2232)
  %46 = ashr i32 %r, 18, !dbg !2233
  %47 = trunc i32 %46 to i8, !dbg !2234
  %48 = or i8 -16, %47, !dbg !2235
  %indexaddr.ptr36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2236
  %indexaddr.len37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2236
  %49 = icmp uge i64 0, %indexaddr.len37, !dbg !2236
  br i1 %49, label %lookup.throw38, label %lookup.next39, !dbg !2236

lookup.next39:                                    ; preds = %lookup.next35
  %50 = getelementptr inbounds i8, ptr %indexaddr.ptr36, i64 0, !dbg !2236
  store i8 %48, ptr %50, align 1, !dbg !2236
    #dbg_value({ ptr, i64, i64 } %2, !2171, !DIExpression(), !2237)
    #dbg_value(i32 %r, !2172, !DIExpression(), !2238)
  %51 = ashr i32 %r, 12, !dbg !2239
  %52 = trunc i32 %51 to i8, !dbg !2240
  %53 = and i8 %52, 63, !dbg !2241
  %54 = or i8 -128, %53, !dbg !2242
  %indexaddr.ptr40 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2243
  %indexaddr.len41 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2243
  %55 = icmp uge i64 1, %indexaddr.len41, !dbg !2243
  br i1 %55, label %lookup.throw42, label %lookup.next43, !dbg !2243

lookup.next43:                                    ; preds = %lookup.next39
  %56 = getelementptr inbounds i8, ptr %indexaddr.ptr40, i64 1, !dbg !2243
  store i8 %54, ptr %56, align 1, !dbg !2243
    #dbg_value({ ptr, i64, i64 } %2, !2171, !DIExpression(), !2244)
    #dbg_value(i32 %r, !2172, !DIExpression(), !2245)
  %57 = ashr i32 %r, 6, !dbg !2246
  %58 = trunc i32 %57 to i8, !dbg !2247
  %59 = and i8 %58, 63, !dbg !2248
  %60 = or i8 -128, %59, !dbg !2249
  %indexaddr.ptr44 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2250
  %indexaddr.len45 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2250
  %61 = icmp uge i64 2, %indexaddr.len45, !dbg !2250
  br i1 %61, label %lookup.throw46, label %lookup.next47, !dbg !2250

lookup.next47:                                    ; preds = %lookup.next43
  %62 = getelementptr inbounds i8, ptr %indexaddr.ptr44, i64 2, !dbg !2250
  store i8 %60, ptr %62, align 1, !dbg !2250
    #dbg_value({ ptr, i64, i64 } %2, !2171, !DIExpression(), !2251)
    #dbg_value(i32 %r, !2172, !DIExpression(), !2252)
  %63 = trunc i32 %r to i8, !dbg !2253
  %64 = and i8 %63, 63, !dbg !2254
  %65 = or i8 -128, %64, !dbg !2255
  %indexaddr.ptr48 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2256
  %indexaddr.len49 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2256
  %66 = icmp uge i64 3, %indexaddr.len49, !dbg !2256
  br i1 %66, label %lookup.throw50, label %lookup.next51, !dbg !2256

lookup.next51:                                    ; preds = %lookup.next47
  %67 = getelementptr inbounds i8, ptr %indexaddr.ptr48, i64 3, !dbg !2256
  store i8 %65, ptr %67, align 1, !dbg !2256
  ret i64 4, !dbg !2257

switch.next7:                                     ; preds = %binop.done5
    #dbg_value({ ptr, i64, i64 } %2, !2171, !DIExpression(), !2258)
  %indexaddr.ptr52 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2259
  %indexaddr.len53 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2259
  %68 = icmp uge i64 2, %indexaddr.len53, !dbg !2259
  br i1 %68, label %lookup.throw54, label %lookup.next55, !dbg !2259

lookup.next55:                                    ; preds = %switch.next7
  %69 = getelementptr inbounds i8, ptr %indexaddr.ptr52, i64 2, !dbg !2259
  %70 = load i8, ptr %69, align 1, !dbg !2259
    #dbg_value({ ptr, i64, i64 } %2, !2171, !DIExpression(), !2260)
  %indexaddr.ptr56 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2261
  %indexaddr.len57 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2261
  %71 = icmp uge i64 0, %indexaddr.len57, !dbg !2261
  br i1 %71, label %lookup.throw58, label %lookup.next59, !dbg !2261

lookup.next59:                                    ; preds = %lookup.next55
  %72 = getelementptr inbounds i8, ptr %indexaddr.ptr56, i64 0, !dbg !2261
  store i8 -17, ptr %72, align 1, !dbg !2261
    #dbg_value({ ptr, i64, i64 } %2, !2171, !DIExpression(), !2262)
  %indexaddr.ptr60 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2263
  %indexaddr.len61 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2263
  %73 = icmp uge i64 1, %indexaddr.len61, !dbg !2263
  br i1 %73, label %lookup.throw62, label %lookup.next63, !dbg !2263

lookup.next63:                                    ; preds = %lookup.next59
  %74 = getelementptr inbounds i8, ptr %indexaddr.ptr60, i64 1, !dbg !2263
  store i8 -65, ptr %74, align 1, !dbg !2263
    #dbg_value({ ptr, i64, i64 } %2, !2171, !DIExpression(), !2264)
  %indexaddr.ptr64 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2265
  %indexaddr.len65 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2265
  %75 = icmp uge i64 2, %indexaddr.len65, !dbg !2265
  br i1 %75, label %lookup.throw66, label %lookup.next67, !dbg !2265

lookup.next67:                                    ; preds = %lookup.next63
  %76 = getelementptr inbounds i8, ptr %indexaddr.ptr64, i64 2, !dbg !2265
  store i8 -67, ptr %76, align 1, !dbg !2265
  ret i64 3, !dbg !2266

lookup.throw:                                     ; preds = %switch.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2181
  unreachable, !dbg !2181

lookup.throw10:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !2187
  unreachable, !dbg !2187

lookup.throw14:                                   ; preds = %lookup.next11
  call void @runtime.lookupPanic(ptr undef), !dbg !2193
  unreachable, !dbg !2193

lookup.throw18:                                   ; preds = %switch.body1
  call void @runtime.lookupPanic(ptr undef), !dbg !2198
  unreachable, !dbg !2198

lookup.throw22:                                   ; preds = %lookup.next19
  call void @runtime.lookupPanic(ptr undef), !dbg !2204
  unreachable, !dbg !2204

lookup.throw26:                                   ; preds = %lookup.next23
  call void @runtime.lookupPanic(ptr undef), !dbg !2211
  unreachable, !dbg !2211

lookup.throw30:                                   ; preds = %lookup.next27
  call void @runtime.lookupPanic(ptr undef), !dbg !2217
  unreachable, !dbg !2217

lookup.throw34:                                   ; preds = %switch.body6
  call void @runtime.lookupPanic(ptr undef), !dbg !2230
  unreachable, !dbg !2230

lookup.throw38:                                   ; preds = %lookup.next35
  call void @runtime.lookupPanic(ptr undef), !dbg !2236
  unreachable, !dbg !2236

lookup.throw42:                                   ; preds = %lookup.next39
  call void @runtime.lookupPanic(ptr undef), !dbg !2243
  unreachable, !dbg !2243

lookup.throw46:                                   ; preds = %lookup.next43
  call void @runtime.lookupPanic(ptr undef), !dbg !2250
  unreachable, !dbg !2250

lookup.throw50:                                   ; preds = %lookup.next47
  call void @runtime.lookupPanic(ptr undef), !dbg !2256
  unreachable, !dbg !2256

lookup.throw54:                                   ; preds = %switch.next7
  call void @runtime.lookupPanic(ptr undef), !dbg !2259
  unreachable, !dbg !2259

lookup.throw58:                                   ; preds = %lookup.next55
  call void @runtime.lookupPanic(ptr undef), !dbg !2261
  unreachable, !dbg !2261

lookup.throw62:                                   ; preds = %lookup.next59
  call void @runtime.lookupPanic(ptr undef), !dbg !2263
  unreachable, !dbg !2263

lookup.throw66:                                   ; preds = %lookup.next63
  call void @runtime.lookupPanic(ptr undef), !dbg !2265
  unreachable, !dbg !2265
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"unicode/utf8.ValidRune"(i32 %r, ptr %context) #1 !dbg !2267 {
entry:
    #dbg_value(i32 %r, !2271, !DIExpression(), !2272)
    #dbg_value(i32 %r, !2271, !DIExpression(), !2273)
  %0 = icmp sle i32 0, %r, !dbg !2274
  br i1 %0, label %binop.rhs, label %binop.done, !dbg !2275

binop.rhs:                                        ; preds = %entry
    #dbg_value(i32 %r, !2271, !DIExpression(), !2276)
  %1 = icmp slt i32 %r, 55296, !dbg !2277
  br label %binop.done, !dbg !2275

binop.done:                                       ; preds = %binop.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %1, %binop.rhs ], !dbg !2278
  br i1 %2, label %switch.body, label %switch.next, !dbg !2275

switch.body:                                      ; preds = %binop.done
  ret i1 true, !dbg !2279

switch.next:                                      ; preds = %binop.done
    #dbg_value(i32 %r, !2271, !DIExpression(), !2280)
  %3 = icmp slt i32 57343, %r, !dbg !2281
  br i1 %3, label %binop.rhs1, label %binop.done2, !dbg !2275

binop.rhs1:                                       ; preds = %switch.next
    #dbg_value(i32 %r, !2271, !DIExpression(), !2282)
  %4 = icmp sle i32 %r, 1114111, !dbg !2283
  br label %binop.done2, !dbg !2275

binop.done2:                                      ; preds = %binop.rhs1, %switch.next
  %5 = phi i1 [ false, %switch.next ], [ %4, %binop.rhs1 ], !dbg !2284
  br i1 %5, label %switch.body3, label %switch.next4, !dbg !2275

switch.body3:                                     ; preds = %binop.done2
  ret i1 true, !dbg !2285

switch.next4:                                     ; preds = %binop.done2
  ret i1 false, !dbg !2286
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable(sync)
define internal i8 @"(*internal/reflectlite.RawType).Kind"(ptr dereferenceable_or_null(1) %t, ptr %context) #1 !dbg !2287 {
entry:
    #dbg_value(ptr %t, !2291, !DIExpression(), !2293)
    #dbg_value(ptr %t, !2291, !DIExpression(), !2294)
  %0 = icmp eq ptr %t, null, !dbg !2295
  br i1 %0, label %if.then, label %if.done, !dbg !2296

if.then:                                          ; preds = %entry
  ret i8 0, !dbg !2297

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2291, !DIExpression(), !2298)
  %1 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2299
    #dbg_value(i64 %1, !2292, !DIExpression(), !2300)
    #dbg_value(i64 %1, !2292, !DIExpression(), !2301)
  %2 = icmp ne i64 %1, 0, !dbg !2302
  br i1 %2, label %if.then1, label %if.done2, !dbg !2296

if.then1:                                         ; preds = %if.done
  ret i8 21, !dbg !2303

if.done2:                                         ; preds = %if.done
    #dbg_value(ptr %t, !2291, !DIExpression(), !2304)
  %3 = icmp eq ptr %t, null, !dbg !2305
  br i1 %3, label %gep.throw, label %gep.next, !dbg !2305

gep.next:                                         ; preds = %if.done2
  %4 = getelementptr inbounds %"internal/reflectlite.RawType", ptr %t, i32 0, i32 0, !dbg !2305
  %5 = icmp eq ptr %4, null, !dbg !2305
  br i1 %5, label %deref.throw, label %deref.next, !dbg !2305

deref.next:                                       ; preds = %gep.next
  %6 = load i8, ptr %4, align 1, !dbg !2305
  %7 = and i8 %6, 31, !dbg !2306
  ret i8 %7, !dbg !2307

gep.throw:                                        ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2305
  unreachable, !dbg !2305

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2305
  unreachable, !dbg !2305
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).elem"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2308 {
entry:
    #dbg_value(ptr %t, !2310, !DIExpression(), !2314)
    #dbg_value(ptr %t, !2310, !DIExpression(), !2315)
  %0 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2316
    #dbg_value(i64 %0, !2311, !DIExpression(), !2317)
    #dbg_value(i64 %0, !2311, !DIExpression(), !2318)
  %1 = icmp ne i64 %0, 0, !dbg !2319
  br i1 %1, label %if.then, label %if.done, !dbg !2320

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2310, !DIExpression(), !2321)
  %2 = getelementptr i8, ptr %t, i64 -1, !dbg !2322
  ret ptr %2, !dbg !2323

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2310, !DIExpression(), !2324)
  %3 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2325
    #dbg_value(ptr %3, !2312, !DIExpression(), !2326)
    #dbg_value(ptr %3, !2312, !DIExpression(), !2327)
  %4 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %3, ptr undef), !dbg !2328
  %5 = icmp eq i8 %4, 21, !dbg !2329
  br i1 %5, label %switch.body, label %switch.next, !dbg !2320

switch.body:                                      ; preds = %if.done
    #dbg_value(ptr %3, !2312, !DIExpression(), !2330)
  %6 = getelementptr inbounds %"internal/reflectlite.ptrType", ptr %3, i32 0, i32 2, !dbg !2331
  %7 = icmp eq ptr %6, null, !dbg !2331
  br i1 %7, label %deref.throw, label %deref.next, !dbg !2331

deref.next:                                       ; preds = %switch.body
  %8 = load ptr, ptr %6, align 8, !dbg !2331
  ret ptr %8, !dbg !2332

switch.next:                                      ; preds = %if.done
  %9 = icmp eq i8 %4, 19, !dbg !2333
  br i1 %9, label %switch.body1, label %switch.next2, !dbg !2320

switch.body1:                                     ; preds = %switch.next4, %switch.next3, %switch.next2, %switch.next
    #dbg_value(ptr %3, !2312, !DIExpression(), !2334)
  %10 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %3, i32 0, i32 3, !dbg !2335
  %11 = icmp eq ptr %10, null, !dbg !2335
  br i1 %11, label %deref.throw6, label %deref.next7, !dbg !2335

deref.next7:                                      ; preds = %switch.body1
  %12 = load ptr, ptr %10, align 8, !dbg !2335
  ret ptr %12, !dbg !2336

switch.next2:                                     ; preds = %switch.next
  %13 = icmp eq i8 %4, 22, !dbg !2337
  br i1 %13, label %switch.body1, label %switch.next3, !dbg !2320

switch.next3:                                     ; preds = %switch.next2
  %14 = icmp eq i8 %4, 23, !dbg !2338
  br i1 %14, label %switch.body1, label %switch.next4, !dbg !2320

switch.next4:                                     ; preds = %switch.next3
  %15 = icmp eq i8 %4, 25, !dbg !2339
  br i1 %15, label %switch.body1, label %switch.next5, !dbg !2320

switch.next5:                                     ; preds = %switch.next4
  %16 = load ptr, ptr @"internal/reflectlite.errTypeElem", align 8, !dbg !2340
    #dbg_value(ptr %16, !2313, !DIExpression(), !2340)
  %17 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %16, 1, !dbg !2340
  %18 = extractvalue { ptr, ptr } %17, 0, !dbg !2341
  %19 = extractvalue { ptr, ptr } %17, 1, !dbg !2341
  call void @runtime._panic(ptr %18, ptr %19, ptr undef), !dbg !2341
  unreachable, !dbg !2341

deref.throw:                                      ; preds = %switch.body
  call void @runtime.nilPanic(ptr undef), !dbg !2331
  unreachable, !dbg !2331

deref.throw6:                                     ; preds = %switch.body1
  call void @runtime.nilPanic(ptr undef), !dbg !2335
  unreachable, !dbg !2335
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).Len"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2342 {
entry:
    #dbg_value(ptr %t, !2344, !DIExpression(), !2346)
    #dbg_value(ptr %t, !2344, !DIExpression(), !2347)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2348
  %1 = icmp ne i8 %0, 23, !dbg !2349
  br i1 %1, label %if.then, label %if.done, !dbg !2350

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeLen", align 8, !dbg !2351
    #dbg_value(ptr %2, !2345, !DIExpression(), !2351)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2351
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2352
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2352
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2352
  unreachable, !dbg !2352

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2344, !DIExpression(), !2353)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2354
  %7 = getelementptr inbounds %"internal/reflectlite.arrayType", ptr %6, i32 0, i32 4, !dbg !2355
  %8 = icmp eq ptr %7, null, !dbg !2355
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2355

deref.next:                                       ; preds = %if.done
  %9 = load i64, ptr %7, align 8, !dbg !2355
  ret i64 %9, !dbg !2356

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2355
  unreachable, !dbg !2355
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).underlying"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2357 {
entry:
    #dbg_value(ptr %t, !2359, !DIExpression(), !2360)
    #dbg_value(ptr %t, !2359, !DIExpression(), !2361)
  %0 = call i1 @"(*internal/reflectlite.RawType).isNamed"(ptr %t, ptr undef), !dbg !2362
  br i1 %0, label %if.then, label %if.done, !dbg !2363

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2359, !DIExpression(), !2364)
  %1 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %t, i32 0, i32 3, !dbg !2365
  %2 = icmp eq ptr %1, null, !dbg !2365
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2365

deref.next:                                       ; preds = %if.then
  %3 = load ptr, ptr %1, align 8, !dbg !2365
  ret ptr %3, !dbg !2366

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2359, !DIExpression(), !2367)
  ret ptr %t, !dbg !2368

deref.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2365
  unreachable, !dbg !2365
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*internal/reflectlite.RawType).isNamed"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2369 {
entry:
    #dbg_value(ptr %t, !2371, !DIExpression(), !2373)
    #dbg_value(ptr %t, !2371, !DIExpression(), !2374)
  %0 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2375
    #dbg_value(i64 %0, !2372, !DIExpression(), !2376)
    #dbg_value(i64 %0, !2372, !DIExpression(), !2377)
  %1 = icmp ne i64 %0, 0, !dbg !2378
  br i1 %1, label %if.then, label %if.done, !dbg !2379

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !2380

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2371, !DIExpression(), !2381)
  %2 = icmp eq ptr %t, null, !dbg !2382
  br i1 %2, label %gep.throw, label %gep.next, !dbg !2382

gep.next:                                         ; preds = %if.done
  %3 = getelementptr inbounds %"internal/reflectlite.RawType", ptr %t, i32 0, i32 0, !dbg !2382
  %4 = icmp eq ptr %3, null, !dbg !2382
  br i1 %4, label %deref.throw, label %deref.next, !dbg !2382

deref.next:                                       ; preds = %gep.next
  %5 = load i8, ptr %3, align 1, !dbg !2382
  %6 = and i8 %5, 32, !dbg !2383
  %7 = icmp ne i8 %6, 0, !dbg !2384
  ret i1 %7, !dbg !2385

gep.throw:                                        ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2382
  unreachable, !dbg !2382

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2382
  unreachable, !dbg !2382
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2386 {
entry:
    #dbg_value(ptr %t, !2388, !DIExpression(), !2389)
    #dbg_value(ptr %t, !2388, !DIExpression(), !2390)
  %0 = ptrtoint ptr %t to i64, !dbg !2391
  %1 = and i64 %0, 3, !dbg !2392
  ret i64 %1, !dbg !2393
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.TypeError).Error"(ptr dereferenceable_or_null(16) %e, ptr %context) unnamed_addr #1 !dbg !2394 {
entry:
    #dbg_value(ptr %e, !2398, !DIExpression(), !2399)
    #dbg_value(ptr %e, !2398, !DIExpression(), !2400)
  %0 = icmp eq ptr %e, null, !dbg !2401
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2401

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds { %runtime._string }, ptr %e, i32 0, i32 0, !dbg !2401
  %2 = icmp eq ptr %1, null, !dbg !2401
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2401

deref.next:                                       ; preds = %gep.next
  %3 = load %runtime._string, ptr %1, align 8, !dbg !2401
  %4 = extractvalue %runtime._string %3, 0, !dbg !2402
  %5 = extractvalue %runtime._string %3, 1, !dbg !2402
  %6 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.111", i64 30, ptr %4, i64 %5, ptr undef), !dbg !2402
  %7 = extractvalue %runtime._string %6, 0, !dbg !2403
  %8 = extractvalue %runtime._string %6, 1, !dbg !2403
  %9 = call %runtime._string @runtime.stringConcat(ptr %7, i64 %8, ptr @"internal/reflectlite$string.112", i64 16, ptr undef), !dbg !2403
  ret %runtime._string %9, !dbg !2404

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2401
  unreachable, !dbg !2401

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2401
  unreachable, !dbg !2401
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).ChanDir"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2405 {
entry:
    #dbg_value(ptr %t, !2407, !DIExpression(), !2410)
    #dbg_value(ptr %t, !2407, !DIExpression(), !2411)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2412
  %1 = icmp ne i8 %0, 19, !dbg !2413
  br i1 %1, label %if.then, label %if.done, !dbg !2414

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeChanDir", align 8, !dbg !2415
    #dbg_value(ptr %2, !2408, !DIExpression(), !2415)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2415
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2416
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2416
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2416
  unreachable, !dbg !2416

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2407, !DIExpression(), !2417)
  %6 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %t, i32 0, i32 1, !dbg !2418
  %7 = icmp eq ptr %6, null, !dbg !2418
  br i1 %7, label %deref.throw, label %deref.next, !dbg !2418

deref.next:                                       ; preds = %if.done
  %8 = load i16, ptr %6, align 2, !dbg !2418
  %9 = zext i16 %8 to i64, !dbg !2419
    #dbg_value(i64 %9, !2409, !DIExpression(), !2420)
    #dbg_value(i64 %9, !2409, !DIExpression(), !2421)
  ret i64 %9, !dbg !2422

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2418
  unreachable, !dbg !2418
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).NumField"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2423 {
entry:
    #dbg_value(ptr %t, !2425, !DIExpression(), !2427)
    #dbg_value(ptr %t, !2425, !DIExpression(), !2428)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2429
  %1 = icmp ne i8 %0, 26, !dbg !2430
  br i1 %1, label %if.then, label %if.done, !dbg !2431

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeNumField", align 8, !dbg !2432
    #dbg_value(ptr %2, !2426, !DIExpression(), !2432)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2432
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2433
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2433
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2433
  unreachable, !dbg !2433

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2425, !DIExpression(), !2434)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2435
  %7 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 5, !dbg !2436
  %8 = icmp eq ptr %7, null, !dbg !2436
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2436

deref.next:                                       ; preds = %if.done
  %9 = load i16, ptr %7, align 2, !dbg !2436
  %10 = zext i16 %9 to i64, !dbg !2437
  ret i64 %10, !dbg !2438

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2436
  unreachable, !dbg !2436
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.RawType).String"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2439 {
entry:
    #dbg_value(ptr %t, !2441, !DIExpression(), !2457)
    #dbg_value(ptr %t, !2441, !DIExpression(), !2458)
  %f = alloca %"internal/reflectlite.rawStructField", align 8, !dbg !2459
  %0 = call i1 @"(*internal/reflectlite.RawType).isNamed"(ptr %t, ptr undef), !dbg !2459
  br i1 %0, label %if.then, label %if.done2, !dbg !2460

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2441, !DIExpression(), !2461)
  %1 = call %runtime._string @"(*internal/reflectlite.RawType).name"(ptr %t, ptr undef), !dbg !2462
    #dbg_value(%runtime._string %1, !2442, !DIExpression(), !2463)
    #dbg_value(%runtime._string %1, !2442, !DIExpression(), !2464)
  %len = extractvalue %runtime._string %1, 1, !dbg !2465
  %2 = icmp uge i64 0, %len, !dbg !2465
  br i1 %2, label %lookup.throw, label %lookup.next, !dbg !2465

lookup.next:                                      ; preds = %if.then
  %3 = extractvalue %runtime._string %1, 0, !dbg !2465
  %4 = getelementptr inbounds i8, ptr %3, i64 0, !dbg !2465
  %5 = load i8, ptr %4, align 1, !dbg !2465
  %6 = icmp eq i8 %5, 46, !dbg !2466
  br i1 %6, label %if.then1, label %if.done, !dbg !2460

if.then1:                                         ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2442, !DIExpression(), !2467)
  %7 = extractvalue %runtime._string %1, 0, !dbg !2468
  %8 = extractvalue %runtime._string %1, 1, !dbg !2468
  %slice.lowhigh = icmp ugt i64 1, %8, !dbg !2468
  %slice.highmax = icmp ugt i64 %8, %8, !dbg !2468
  %slice.maxcap = icmp ugt i64 %8, %8, !dbg !2468
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2468
  %slice.lowcap = or i1 %slice.lowmax, %slice.maxcap, !dbg !2468
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2468

slice.next:                                       ; preds = %if.then1
  %9 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !2468
  %10 = sub i64 %8, 1, !dbg !2468
  %11 = insertvalue %runtime._string undef, ptr %9, 0, !dbg !2468
  %12 = insertvalue %runtime._string %11, i64 %10, 1, !dbg !2468
  ret %runtime._string %12, !dbg !2469

if.done:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2442, !DIExpression(), !2470)
  ret %runtime._string %1, !dbg !2471

if.done2:                                         ; preds = %entry
    #dbg_value(ptr %t, !2441, !DIExpression(), !2472)
  %13 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2473
  %14 = icmp eq i8 %13, 19, !dbg !2474
  br i1 %14, label %switch.body, label %switch.next10, !dbg !2460

switch.body:                                      ; preds = %if.done2
    #dbg_value(ptr %t, !2441, !DIExpression(), !2475)
  %15 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2476
  %16 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %15, ptr undef), !dbg !2477
    #dbg_value(%runtime._string %16, !2443, !DIExpression(), !2478)
    #dbg_value(ptr %t, !2441, !DIExpression(), !2479)
  %17 = call i64 @"(*internal/reflectlite.RawType).ChanDir"(ptr %t, ptr undef), !dbg !2480
  %18 = icmp eq i64 %17, 2, !dbg !2481
  br i1 %18, label %switch.body3, label %switch.next, !dbg !2460

switch.body3:                                     ; preds = %switch.body
    #dbg_value(%runtime._string %16, !2443, !DIExpression(), !2482)
  %19 = extractvalue %runtime._string %16, 0, !dbg !2483
  %20 = extractvalue %runtime._string %16, 1, !dbg !2483
  %21 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.87", i64 7, ptr %19, i64 %20, ptr undef), !dbg !2483
  ret %runtime._string %21, !dbg !2484

switch.next:                                      ; preds = %switch.body
  %22 = icmp eq i64 %17, 1, !dbg !2485
  br i1 %22, label %switch.body4, label %switch.next5, !dbg !2460

switch.body4:                                     ; preds = %switch.next
    #dbg_value(%runtime._string %16, !2443, !DIExpression(), !2486)
  %23 = extractvalue %runtime._string %16, 0, !dbg !2487
  %24 = extractvalue %runtime._string %16, 1, !dbg !2487
  %25 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.88", i64 7, ptr %23, i64 %24, ptr undef), !dbg !2487
  ret %runtime._string %25, !dbg !2488

switch.next5:                                     ; preds = %switch.next
  %26 = icmp eq i64 %17, 3, !dbg !2489
  br i1 %26, label %switch.body6, label %switch.next9, !dbg !2460

switch.body6:                                     ; preds = %switch.next5
    #dbg_value(%runtime._string %16, !2443, !DIExpression(), !2490)
  %len29 = extractvalue %runtime._string %16, 1, !dbg !2491
  %27 = icmp uge i64 0, %len29, !dbg !2491
  br i1 %27, label %lookup.throw30, label %lookup.next31, !dbg !2491

lookup.next31:                                    ; preds = %switch.body6
  %28 = extractvalue %runtime._string %16, 0, !dbg !2491
  %29 = getelementptr inbounds i8, ptr %28, i64 0, !dbg !2491
  %30 = load i8, ptr %29, align 1, !dbg !2491
  %31 = icmp eq i8 %30, 60, !dbg !2492
  br i1 %31, label %if.then7, label %if.done8, !dbg !2460

if.then7:                                         ; preds = %lookup.next31
    #dbg_value(%runtime._string %16, !2443, !DIExpression(), !2493)
  %32 = extractvalue %runtime._string %16, 0, !dbg !2494
  %33 = extractvalue %runtime._string %16, 1, !dbg !2494
  %34 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.89", i64 6, ptr %32, i64 %33, ptr undef), !dbg !2494
  %35 = extractvalue %runtime._string %34, 0, !dbg !2495
  %36 = extractvalue %runtime._string %34, 1, !dbg !2495
  %37 = call %runtime._string @runtime.stringConcat(ptr %35, i64 %36, ptr @"internal/reflectlite$string.90", i64 1, ptr undef), !dbg !2495
  ret %runtime._string %37, !dbg !2496

if.done8:                                         ; preds = %lookup.next31
    #dbg_value(%runtime._string %16, !2443, !DIExpression(), !2497)
  %38 = extractvalue %runtime._string %16, 0, !dbg !2498
  %39 = extractvalue %runtime._string %16, 1, !dbg !2498
  %40 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.91", i64 5, ptr %38, i64 %39, ptr undef), !dbg !2498
  ret %runtime._string %40, !dbg !2499

switch.next9:                                     ; preds = %switch.next5
    #dbg_value(ptr %t, !2441, !DIExpression(), !2500)
  %41 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2501
  %42 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %41, ptr undef), !dbg !2502
  ret %runtime._string %42, !dbg !2503

switch.next10:                                    ; preds = %if.done2
  %43 = icmp eq i8 %13, 21, !dbg !2504
  br i1 %43, label %switch.body11, label %switch.next12, !dbg !2460

switch.body11:                                    ; preds = %switch.next10
    #dbg_value(ptr %t, !2441, !DIExpression(), !2505)
  %44 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2506
  %45 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %44, ptr undef), !dbg !2507
  %46 = extractvalue %runtime._string %45, 0, !dbg !2508
  %47 = extractvalue %runtime._string %45, 1, !dbg !2508
  %48 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.92", i64 1, ptr %46, i64 %47, ptr undef), !dbg !2508
  ret %runtime._string %48, !dbg !2509

switch.next12:                                    ; preds = %switch.next10
  %49 = icmp eq i8 %13, 22, !dbg !2510
  br i1 %49, label %switch.body13, label %switch.next14, !dbg !2460

switch.body13:                                    ; preds = %switch.next12
    #dbg_value(ptr %t, !2441, !DIExpression(), !2511)
  %50 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2512
  %51 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %50, ptr undef), !dbg !2513
  %52 = extractvalue %runtime._string %51, 0, !dbg !2514
  %53 = extractvalue %runtime._string %51, 1, !dbg !2514
  %54 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.93", i64 2, ptr %52, i64 %53, ptr undef), !dbg !2514
  ret %runtime._string %54, !dbg !2515

switch.next14:                                    ; preds = %switch.next12
  %55 = icmp eq i8 %13, 23, !dbg !2516
  br i1 %55, label %switch.body15, label %switch.next16, !dbg !2460

switch.body15:                                    ; preds = %switch.next14
    #dbg_value(ptr %t, !2441, !DIExpression(), !2517)
  %56 = call i64 @"(*internal/reflectlite.RawType).Len"(ptr %t, ptr undef), !dbg !2518
  %57 = call %runtime._string @"internal/itoa.Itoa"(i64 %56, ptr undef), !dbg !2519
  %58 = extractvalue %runtime._string %57, 0, !dbg !2520
  %59 = extractvalue %runtime._string %57, 1, !dbg !2520
  %60 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.94", i64 1, ptr %58, i64 %59, ptr undef), !dbg !2520
  %61 = extractvalue %runtime._string %60, 0, !dbg !2521
  %62 = extractvalue %runtime._string %60, 1, !dbg !2521
  %63 = call %runtime._string @runtime.stringConcat(ptr %61, i64 %62, ptr @"internal/reflectlite$string.95", i64 1, ptr undef), !dbg !2521
    #dbg_value(ptr %t, !2441, !DIExpression(), !2522)
  %64 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2523
  %65 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %64, ptr undef), !dbg !2524
  %66 = extractvalue %runtime._string %63, 0, !dbg !2525
  %67 = extractvalue %runtime._string %63, 1, !dbg !2525
  %68 = extractvalue %runtime._string %65, 0, !dbg !2525
  %69 = extractvalue %runtime._string %65, 1, !dbg !2525
  %70 = call %runtime._string @runtime.stringConcat(ptr %66, i64 %67, ptr %68, i64 %69, ptr undef), !dbg !2525
  ret %runtime._string %70, !dbg !2526

switch.next16:                                    ; preds = %switch.next14
  %71 = icmp eq i8 %13, 25, !dbg !2527
  br i1 %71, label %switch.body17, label %switch.next18, !dbg !2460

switch.body17:                                    ; preds = %switch.next16
    #dbg_value(ptr %t, !2441, !DIExpression(), !2528)
  %72 = call ptr @"(*internal/reflectlite.RawType).key"(ptr %t, ptr undef), !dbg !2529
  %73 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %72, ptr undef), !dbg !2530
  %74 = extractvalue %runtime._string %73, 0, !dbg !2531
  %75 = extractvalue %runtime._string %73, 1, !dbg !2531
  %76 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.96", i64 4, ptr %74, i64 %75, ptr undef), !dbg !2531
  %77 = extractvalue %runtime._string %76, 0, !dbg !2532
  %78 = extractvalue %runtime._string %76, 1, !dbg !2532
  %79 = call %runtime._string @runtime.stringConcat(ptr %77, i64 %78, ptr @"internal/reflectlite$string.97", i64 1, ptr undef), !dbg !2532
    #dbg_value(ptr %t, !2441, !DIExpression(), !2533)
  %80 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2534
  %81 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %80, ptr undef), !dbg !2535
  %82 = extractvalue %runtime._string %79, 0, !dbg !2536
  %83 = extractvalue %runtime._string %79, 1, !dbg !2536
  %84 = extractvalue %runtime._string %81, 0, !dbg !2536
  %85 = extractvalue %runtime._string %81, 1, !dbg !2536
  %86 = call %runtime._string @runtime.stringConcat(ptr %82, i64 %83, ptr %84, i64 %85, ptr undef), !dbg !2536
  ret %runtime._string %86, !dbg !2537

switch.next18:                                    ; preds = %switch.next16
  %87 = icmp eq i8 %13, 26, !dbg !2538
  br i1 %87, label %switch.body19, label %switch.next26, !dbg !2460

switch.body19:                                    ; preds = %switch.next18
    #dbg_value(ptr %t, !2441, !DIExpression(), !2539)
  %88 = call i64 @"(*internal/reflectlite.RawType).NumField"(ptr %t, ptr undef), !dbg !2540
    #dbg_value(i64 %88, !2444, !DIExpression(), !2541)
    #dbg_value(i64 %88, !2444, !DIExpression(), !2542)
  %89 = icmp eq i64 %88, 0, !dbg !2543
  br i1 %89, label %if.then20, label %if.done21, !dbg !2460

if.then20:                                        ; preds = %switch.body19
  ret %runtime._string { ptr @"internal/reflectlite$string.98", i64 9 }, !dbg !2544

if.done21:                                        ; preds = %switch.body19
    #dbg_value(%runtime._string poison, !2445, !DIExpression(), !2545)
    #dbg_value(i64 0, !2446, !DIExpression(), !2546)
  br label %for.loop, !dbg !2460

for.loop:                                         ; preds = %if.done25, %if.done21
  %90 = phi %runtime._string [ { ptr @"internal/reflectlite$string.106", i64 8 }, %if.done21 ], [ %144, %if.done25 ], !dbg !2545
  %91 = phi i64 [ 0, %if.done21 ], [ %145, %if.done25 ], !dbg !2546
    #dbg_value(i64 %91, !2446, !DIExpression(), !2547)
    #dbg_value(i64 %88, !2444, !DIExpression(), !2548)
  %92 = icmp slt i64 %91, %88, !dbg !2549
  br i1 %92, label %for.body, label %for.done, !dbg !2460

for.body:                                         ; preds = %for.loop
  store %"internal/reflectlite.rawStructField" zeroinitializer, ptr %f, align 8, !dbg !2459
    #dbg_value(ptr %t, !2441, !DIExpression(), !2550)
    #dbg_value(i64 %91, !2446, !DIExpression(), !2551)
  %93 = call %"internal/reflectlite.rawStructField" @"(*internal/reflectlite.RawType).rawField"(ptr %t, i64 %91, ptr undef), !dbg !2552
  store %"internal/reflectlite.rawStructField" %93, ptr %f, align 8, !dbg !2553
    #dbg_value(%"internal/reflectlite.rawStructField" %93, !2447, !DIExpression(), !2553)
  %94 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 0, !dbg !2554
  %95 = icmp eq ptr %94, null, !dbg !2554
  br i1 %95, label %deref.throw, label %deref.next, !dbg !2554

deref.next:                                       ; preds = %for.body
  %96 = load %runtime._string, ptr %94, align 8, !dbg !2554
  %97 = extractvalue %runtime._string %96, 0, !dbg !2555
  %98 = extractvalue %runtime._string %96, 1, !dbg !2555
  %99 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.100", i64 1, ptr %97, i64 %98, ptr undef), !dbg !2555
  %100 = extractvalue %runtime._string %99, 0, !dbg !2556
  %101 = extractvalue %runtime._string %99, 1, !dbg !2556
  %102 = call %runtime._string @runtime.stringConcat(ptr %100, i64 %101, ptr @"internal/reflectlite$string.101", i64 1, ptr undef), !dbg !2556
  %103 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 2, !dbg !2557
  %104 = icmp eq ptr %103, null, !dbg !2557
  br i1 %104, label %deref.throw32, label %deref.next33, !dbg !2557

deref.next33:                                     ; preds = %deref.next
  %105 = load ptr, ptr %103, align 8, !dbg !2557
  %106 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %105, ptr undef), !dbg !2558
  %107 = extractvalue %runtime._string %102, 0, !dbg !2559
  %108 = extractvalue %runtime._string %102, 1, !dbg !2559
  %109 = extractvalue %runtime._string %106, 0, !dbg !2559
  %110 = extractvalue %runtime._string %106, 1, !dbg !2559
  %111 = call %runtime._string @runtime.stringConcat(ptr %107, i64 %108, ptr %109, i64 %110, ptr undef), !dbg !2559
  %112 = extractvalue %runtime._string %90, 0, !dbg !2560
  %113 = extractvalue %runtime._string %90, 1, !dbg !2560
  %114 = extractvalue %runtime._string %111, 0, !dbg !2560
  %115 = extractvalue %runtime._string %111, 1, !dbg !2560
  %116 = call %runtime._string @runtime.stringConcat(ptr %112, i64 %113, ptr %114, i64 %115, ptr undef), !dbg !2560
    #dbg_value(%runtime._string %116, !2445, !DIExpression(), !2560)
  %117 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 3, !dbg !2561
  %118 = icmp eq ptr %117, null, !dbg !2561
  br i1 %118, label %deref.throw34, label %deref.next35, !dbg !2561

deref.next35:                                     ; preds = %deref.next33
  %119 = load %runtime._string, ptr %117, align 8, !dbg !2561
  %120 = extractvalue %runtime._string %119, 0, !dbg !2562
  %121 = extractvalue %runtime._string %119, 1, !dbg !2562
  %122 = call i1 @runtime.stringEqual(ptr %120, i64 %121, ptr null, i64 0, ptr undef), !dbg !2562
  %123 = xor i1 %122, true, !dbg !2562
  br i1 %123, label %if.then22, label %if.done23, !dbg !2460

if.then22:                                        ; preds = %deref.next35
  %124 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 3, !dbg !2563
  %125 = icmp eq ptr %124, null, !dbg !2563
  br i1 %125, label %deref.throw36, label %deref.next37, !dbg !2563

deref.next37:                                     ; preds = %if.then22
  %126 = load %runtime._string, ptr %124, align 8, !dbg !2563
  %127 = extractvalue %runtime._string %126, 0, !dbg !2564
  %128 = extractvalue %runtime._string %126, 1, !dbg !2564
  %129 = call %runtime._string @"internal/reflectlite.quote"(ptr %127, i64 %128, ptr undef), !dbg !2564
  %130 = extractvalue %runtime._string %129, 0, !dbg !2565
  %131 = extractvalue %runtime._string %129, 1, !dbg !2565
  %132 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.102", i64 1, ptr %130, i64 %131, ptr undef), !dbg !2565
  %133 = extractvalue %runtime._string %116, 0, !dbg !2566
  %134 = extractvalue %runtime._string %116, 1, !dbg !2566
  %135 = extractvalue %runtime._string %132, 0, !dbg !2566
  %136 = extractvalue %runtime._string %132, 1, !dbg !2566
  %137 = call %runtime._string @runtime.stringConcat(ptr %133, i64 %134, ptr %135, i64 %136, ptr undef), !dbg !2566
    #dbg_value(%runtime._string %137, !2445, !DIExpression(), !2566)
  br label %if.done23, !dbg !2460

if.done23:                                        ; preds = %deref.next37, %deref.next35
  %138 = phi %runtime._string [ %116, %deref.next35 ], [ %137, %deref.next37 ], !dbg !2545
    #dbg_value(i64 %91, !2446, !DIExpression(), !2567)
    #dbg_value(i64 %88, !2444, !DIExpression(), !2568)
  %139 = sub i64 %88, 1, !dbg !2569
  %140 = icmp slt i64 %91, %139, !dbg !2570
  br i1 %140, label %if.then24, label %if.done25, !dbg !2460

if.then24:                                        ; preds = %if.done23
  %141 = extractvalue %runtime._string %138, 0, !dbg !2571
  %142 = extractvalue %runtime._string %138, 1, !dbg !2571
  %143 = call %runtime._string @runtime.stringConcat(ptr %141, i64 %142, ptr @"internal/reflectlite$string.103", i64 1, ptr undef), !dbg !2571
    #dbg_value(%runtime._string %143, !2445, !DIExpression(), !2571)
  br label %if.done25, !dbg !2460

if.done25:                                        ; preds = %if.then24, %if.done23
  %144 = phi %runtime._string [ %138, %if.done23 ], [ %143, %if.then24 ], !dbg !2545
  %145 = add i64 %91, 1, !dbg !2572
    #dbg_value(i64 %145, !2446, !DIExpression(), !2572)
  br label %for.loop, !dbg !2460

for.done:                                         ; preds = %for.loop
  %146 = extractvalue %runtime._string %90, 0, !dbg !2573
  %147 = extractvalue %runtime._string %90, 1, !dbg !2573
  %148 = call %runtime._string @runtime.stringConcat(ptr %146, i64 %147, ptr @"internal/reflectlite$string.104", i64 2, ptr undef), !dbg !2573
    #dbg_value(%runtime._string %148, !2445, !DIExpression(), !2573)
    #dbg_value(%runtime._string %148, !2445, !DIExpression(), !2574)
  ret %runtime._string %148, !dbg !2575

switch.next26:                                    ; preds = %switch.next18
  %149 = icmp eq i8 %13, 20, !dbg !2576
  br i1 %149, label %switch.body27, label %switch.next28, !dbg !2460

switch.body27:                                    ; preds = %switch.next26
  ret %runtime._string { ptr @"internal/reflectlite$string.105", i64 12 }, !dbg !2577

switch.next28:                                    ; preds = %switch.next26
    #dbg_value(ptr %t, !2441, !DIExpression(), !2578)
  %150 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2579
  %151 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %150, ptr undef), !dbg !2580
  ret %runtime._string %151, !dbg !2581

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2465
  unreachable, !dbg !2465

slice.throw:                                      ; preds = %if.then1
  call void @runtime.slicePanic(ptr undef), !dbg !2468
  unreachable, !dbg !2468

lookup.throw30:                                   ; preds = %switch.body6
  call void @runtime.lookupPanic(ptr undef), !dbg !2491
  unreachable, !dbg !2491

deref.throw:                                      ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !2554
  unreachable, !dbg !2554

deref.throw32:                                    ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !2557
  unreachable, !dbg !2557

deref.throw34:                                    ; preds = %deref.next33
  call void @runtime.nilPanic(ptr undef), !dbg !2561
  unreachable, !dbg !2561

deref.throw36:                                    ; preds = %if.then22
  call void @runtime.nilPanic(ptr undef), !dbg !2563
  unreachable, !dbg !2563
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).key"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2582 {
entry:
    #dbg_value(ptr %t, !2584, !DIExpression(), !2587)
    #dbg_value(ptr %t, !2584, !DIExpression(), !2588)
  %0 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2589
    #dbg_value(ptr %0, !2585, !DIExpression(), !2590)
    #dbg_value(ptr %0, !2585, !DIExpression(), !2591)
  %1 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %0, ptr undef), !dbg !2592
  %2 = icmp ne i8 %1, 25, !dbg !2593
  br i1 %2, label %if.then, label %if.done, !dbg !2594

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @"internal/reflectlite.errTypeKey", align 8, !dbg !2595
    #dbg_value(ptr %3, !2586, !DIExpression(), !2595)
  %4 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %3, 1, !dbg !2595
  %5 = extractvalue { ptr, ptr } %4, 0, !dbg !2596
  %6 = extractvalue { ptr, ptr } %4, 1, !dbg !2596
  call void @runtime._panic(ptr %5, ptr %6, ptr undef), !dbg !2596
  unreachable, !dbg !2596

if.done:                                          ; preds = %entry
    #dbg_value(ptr %0, !2585, !DIExpression(), !2597)
  %7 = getelementptr inbounds %"internal/reflectlite.namedType", ptr %0, i32 0, i32 4, !dbg !2598
  %8 = icmp eq ptr %7, null, !dbg !2598
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2598

deref.next:                                       ; preds = %if.done
  %9 = load ptr, ptr %7, align 8, !dbg !2598
  ret ptr %9, !dbg !2599

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2598
  unreachable, !dbg !2598
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.RawType).name"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2600 {
entry:
    #dbg_value(ptr %t, !2602, !DIExpression(), !2621)
    #dbg_value(ptr %t, !2602, !DIExpression(), !2622)
    #dbg_value(ptr %t, !2603, !DIExpression(), !2623)
    #dbg_value(ptr %t, !2603, !DIExpression(), !2624)
  %0 = getelementptr i8, ptr %t, i64 32, !dbg !2625
    #dbg_value(ptr %0, !2613, !DIExpression(), !2626)
    #dbg_value(ptr %t, !2603, !DIExpression(), !2627)
  %1 = getelementptr inbounds %"internal/reflectlite.namedType", ptr %t, i32 0, i32 1, !dbg !2628
  %2 = icmp eq ptr %1, null, !dbg !2628
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2628

deref.next:                                       ; preds = %entry
  %3 = load i16, ptr %1, align 2, !dbg !2628
  %4 = and i16 %3, -32768, !dbg !2629
  %5 = icmp ne i16 %4, 0, !dbg !2630
  br i1 %5, label %if.then, label %if.done, !dbg !2631

if.then:                                          ; preds = %deref.next
    #dbg_value(ptr %0, !2613, !DIExpression(), !2632)
    #dbg_value(ptr %0, !2614, !DIExpression(), !2633)
    #dbg_value(ptr %0, !2613, !DIExpression(), !2634)
    #dbg_value(ptr %0, !2614, !DIExpression(), !2635)
  %6 = getelementptr inbounds %"internal/reflectlite.methodSet", ptr %0, i32 0, i32 0, !dbg !2636
  %7 = icmp eq ptr %6, null, !dbg !2636
  br i1 %7, label %deref.throw1, label %deref.next2, !dbg !2636

deref.next2:                                      ; preds = %if.then
  %8 = load i64, ptr %6, align 8, !dbg !2636
  %9 = mul i64 %8, 8, !dbg !2637
  %10 = add i64 8, %9, !dbg !2638
  %11 = getelementptr i8, ptr %0, i64 %10, !dbg !2639
    #dbg_value(ptr %11, !2613, !DIExpression(), !2640)
  br label %if.done, !dbg !2631

if.done:                                          ; preds = %deref.next2, %deref.next
  %12 = phi ptr [ %0, %deref.next ], [ %11, %deref.next2 ], !dbg !2626
    #dbg_value(ptr %12, !2613, !DIExpression(), !2641)
  %13 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %12, ptr undef), !dbg !2642
  ret %runtime._string %13, !dbg !2643

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2628
  unreachable, !dbg !2628

deref.throw1:                                     ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2636
  unreachable, !dbg !2636
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/reflectlite.rawStructField" @"(*internal/reflectlite.RawType).rawField"(ptr dereferenceable_or_null(1) %t, i64 %n, ptr %context) unnamed_addr #1 !dbg !2644 {
entry:
    #dbg_value(ptr %t, !2648, !DIExpression(), !2672)
    #dbg_value(i64 %n, !2649, !DIExpression(), !2672)
    #dbg_value(ptr %t, !2648, !DIExpression(), !2673)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2674
  %1 = icmp ne i8 %0, 26, !dbg !2675
  br i1 %1, label %if.then, label %if.done, !dbg !2676

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeField", align 8, !dbg !2677
    #dbg_value(ptr %2, !2650, !DIExpression(), !2677)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2677
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2678
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2678
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2678
  unreachable, !dbg !2678

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2648, !DIExpression(), !2679)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2680
    #dbg_value(ptr %6, !2651, !DIExpression(), !2681)
    #dbg_value(i64 %n, !2649, !DIExpression(), !2682)
    #dbg_value(ptr %6, !2651, !DIExpression(), !2683)
  %7 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 5, !dbg !2684
  %8 = icmp eq ptr %7, null, !dbg !2684
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2684

deref.next:                                       ; preds = %if.done
  %9 = load i16, ptr %7, align 2, !dbg !2684
  %10 = zext i16 %9 to i64, !dbg !2685
  %11 = icmp uge i64 %n, %10, !dbg !2686
  br i1 %11, label %if.then1, label %if.done2, !dbg !2676

if.then1:                                         ; preds = %deref.next
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"internal/reflectlite$pack.108", ptr undef), !dbg !2687
  unreachable, !dbg !2687

if.done2:                                         ; preds = %deref.next
    #dbg_value(ptr %6, !2651, !DIExpression(), !2688)
  %12 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 6, !dbg !2689
  %13 = icmp eq ptr %12, null, !dbg !2690
  br i1 %13, label %gep.throw, label %gep.next, !dbg !2690

gep.next:                                         ; preds = %if.done2
  %14 = getelementptr inbounds [1 x { ptr, ptr }], ptr %12, i32 0, i64 0, !dbg !2690
    #dbg_value(i64 %n, !2649, !DIExpression(), !2691)
  %15 = mul i64 %n, 16, !dbg !2692
  %16 = getelementptr i8, ptr %14, i64 %15, !dbg !2693
    #dbg_value(ptr %16, !2665, !DIExpression(), !2694)
    #dbg_value(ptr %16, !2665, !DIExpression(), !2695)
  %17 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 1, !dbg !2696
  %18 = icmp eq ptr %17, null, !dbg !2696
  br i1 %18, label %deref.throw3, label %deref.next4, !dbg !2696

deref.next4:                                      ; preds = %gep.next
  %19 = load ptr, ptr %17, align 8, !dbg !2696
    #dbg_value(ptr %19, !2667, !DIExpression(), !2697)
    #dbg_value(ptr %19, !2667, !DIExpression(), !2698)
  %20 = load i8, ptr %19, align 1, !dbg !2699
    #dbg_value(i8 %20, !2668, !DIExpression(), !2700)
    #dbg_value(ptr %19, !2667, !DIExpression(), !2701)
  %21 = getelementptr i8, ptr %19, i64 1, !dbg !2702
    #dbg_value(ptr %21, !2667, !DIExpression(), !2703)
    #dbg_value(ptr %21, !2667, !DIExpression(), !2704)
  %22 = icmp eq ptr %21, null, !dbg !2705
  %23 = and i1 %22, true, !dbg !2705
  %24 = or i1 %23, false, !dbg !2705
  br i1 %24, label %unsafe.Slice.throw, label %unsafe.Slice.next, !dbg !2705

unsafe.Slice.next:                                ; preds = %deref.next4
  %25 = insertvalue { ptr, i64, i64 } undef, ptr %21, 0, !dbg !2705
  %26 = insertvalue { ptr, i64, i64 } %25, i64 5, 1, !dbg !2705
  %27 = insertvalue { ptr, i64, i64 } %26, i64 5, 2, !dbg !2705
  %28 = extractvalue { ptr, i64, i64 } %27, 0, !dbg !2706
  %29 = extractvalue { ptr, i64, i64 } %27, 1, !dbg !2706
  %30 = extractvalue { ptr, i64, i64 } %27, 2, !dbg !2706
  %31 = call { i32, i64 } @"internal/reflectlite.uvarint32"(ptr %28, i64 %29, i64 %30, ptr undef), !dbg !2706
  %32 = extractvalue { i32, i64 } %31, 0, !dbg !2706
    #dbg_value(i32 %32, !2669, !DIExpression(), !2707)
  %33 = extractvalue { i32, i64 } %31, 1, !dbg !2706
    #dbg_value(i64 %33, !2670, !DIExpression(), !2708)
    #dbg_value(ptr %21, !2667, !DIExpression(), !2709)
    #dbg_value(i64 %33, !2670, !DIExpression(), !2710)
  %34 = getelementptr i8, ptr %21, i64 %33, !dbg !2711
    #dbg_value(ptr %34, !2667, !DIExpression(), !2712)
    #dbg_value(ptr %34, !2667, !DIExpression(), !2713)
  %35 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %34, ptr undef), !dbg !2714
    #dbg_value(%runtime._string %35, !2671, !DIExpression(), !2715)
    #dbg_value(ptr %34, !2667, !DIExpression(), !2716)
    #dbg_value(%runtime._string %35, !2671, !DIExpression(), !2717)
  %len = extractvalue %runtime._string %35, 1, !dbg !2718
  %36 = getelementptr i8, ptr %34, i64 %len, !dbg !2719
    #dbg_value(ptr %36, !2667, !DIExpression(), !2720)
    #dbg_value(ptr %6, !2651, !DIExpression(), !2721)
    #dbg_value(ptr %16, !2665, !DIExpression(), !2722)
  %37 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 0, !dbg !2723
  %38 = icmp eq ptr %37, null, !dbg !2723
  br i1 %38, label %deref.throw5, label %deref.next6, !dbg !2723

deref.next6:                                      ; preds = %unsafe.Slice.next
  %39 = load ptr, ptr %37, align 8, !dbg !2723
    #dbg_value(ptr %36, !2667, !DIExpression(), !2724)
    #dbg_value(i8 %20, !2668, !DIExpression(), !2725)
    #dbg_value(%runtime._string %35, !2671, !DIExpression(), !2726)
    #dbg_value(i32 %32, !2669, !DIExpression(), !2727)
  %40 = extractvalue %runtime._string %35, 0, !dbg !2728
  %41 = extractvalue %runtime._string %35, 1, !dbg !2728
  %42 = call %"internal/reflectlite.rawStructField" @"internal/reflectlite.rawStructFieldFromPointer"(ptr %6, ptr %39, ptr %36, i8 %20, ptr %40, i64 %41, i32 %32, ptr undef), !dbg !2728
  ret %"internal/reflectlite.rawStructField" %42, !dbg !2729

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2684
  unreachable, !dbg !2684

gep.throw:                                        ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2690
  unreachable, !dbg !2690

deref.throw3:                                     ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2696
  unreachable, !dbg !2696

unsafe.Slice.throw:                               ; preds = %deref.next4
  call void @runtime.unsafeSlicePanic(ptr undef), !dbg !2705
  unreachable, !dbg !2705

deref.throw5:                                     ; preds = %unsafe.Slice.next
  call void @runtime.nilPanic(ptr undef), !dbg !2723
  unreachable, !dbg !2723
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"internal/reflectlite.uvarint32"(ptr %buf.data, i64 %buf.len, i64 %buf.cap, ptr %context) unnamed_addr #1 !dbg !2730 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %buf.data, 0, !dbg !2739
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %buf.len, 1, !dbg !2739
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %buf.cap, 2, !dbg !2739
    #dbg_value(ptr %buf.data, !2734, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2739)
    #dbg_value(i64 %buf.len, !2734, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2739)
    #dbg_value(i64 %buf.cap, !2734, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2739)
    #dbg_value(i32 0, !2735, !DIExpression(), !2740)
    #dbg_value(i64 0, !2736, !DIExpression(), !2741)
    #dbg_value({ ptr, i64, i64 } %2, !2734, !DIExpression(), !2742)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2743
  br label %rangeindex.loop, !dbg !2743

rangeindex.loop:                                  ; preds = %if.done, %entry
  %3 = phi i32 [ 0, %entry ], [ %23, %if.done ], !dbg !2740
  %4 = phi i64 [ 0, %entry ], [ %24, %if.done ], !dbg !2741
  %5 = phi i64 [ -1, %entry ], [ %6, %if.done ], !dbg !2743
  %6 = add i64 %5, 1, !dbg !2743
  %7 = icmp slt i64 %6, %len, !dbg !2743
  br i1 %7, label %rangeindex.body, label %rangeindex.done, !dbg !2743

rangeindex.body:                                  ; preds = %rangeindex.loop
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2742
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2742
  %8 = icmp uge i64 %6, %indexaddr.len, !dbg !2742
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !2742

lookup.next:                                      ; preds = %rangeindex.body
  %9 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %6, !dbg !2742
  %10 = load i8, ptr %9, align 1, !dbg !2743
    #dbg_value(i64 %6, !2737, !DIExpression(), !2744)
    #dbg_value(i8 %10, !2738, !DIExpression(), !2745)
    #dbg_value(i8 %10, !2738, !DIExpression(), !2746)
  %11 = icmp ult i8 %10, -128, !dbg !2747
  br i1 %11, label %if.then, label %if.done, !dbg !2743

if.then:                                          ; preds = %lookup.next
    #dbg_value(i32 %3, !2735, !DIExpression(), !2748)
    #dbg_value(i8 %10, !2738, !DIExpression(), !2749)
  %12 = zext i8 %10 to i32, !dbg !2750
    #dbg_value(i64 %4, !2736, !DIExpression(), !2751)
  %shift.overflow = icmp uge i64 %4, 32, !dbg !2752
  %13 = trunc i64 %4 to i32, !dbg !2752
  %14 = shl i32 %12, %13, !dbg !2752
  %shift.result = select i1 %shift.overflow, i32 0, i32 %14, !dbg !2752
  %15 = or i32 %3, %shift.result, !dbg !2753
    #dbg_value(i64 %6, !2737, !DIExpression(), !2754)
  %16 = add i64 %6, 1, !dbg !2755
  %17 = insertvalue { i32, i64 } zeroinitializer, i32 %15, 0, !dbg !2756
  %18 = insertvalue { i32, i64 } %17, i64 %16, 1, !dbg !2756
  ret { i32, i64 } %18, !dbg !2756

if.done:                                          ; preds = %lookup.next
    #dbg_value(i8 %10, !2738, !DIExpression(), !2757)
  %19 = and i8 %10, 127, !dbg !2758
  %20 = zext i8 %19 to i32, !dbg !2759
    #dbg_value(i64 %4, !2736, !DIExpression(), !2760)
  %shift.overflow1 = icmp uge i64 %4, 32, !dbg !2761
  %21 = trunc i64 %4 to i32, !dbg !2761
  %22 = shl i32 %20, %21, !dbg !2761
  %shift.result2 = select i1 %shift.overflow1, i32 0, i32 %22, !dbg !2761
  %23 = or i32 %3, %shift.result2, !dbg !2762
    #dbg_value(i32 %23, !2735, !DIExpression(), !2762)
  %24 = add i64 %4, 7, !dbg !2763
    #dbg_value(i64 %24, !2736, !DIExpression(), !2763)
  br label %rangeindex.loop, !dbg !2743

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret { i32, i64 } zeroinitializer, !dbg !2764

lookup.throw:                                     ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2742
  unreachable, !dbg !2742
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/reflectlite.readStringZ"(ptr %data, ptr %context) unnamed_addr #1 !dbg !2765 {
entry:
    #dbg_value(ptr %data, !2769, !DIExpression(), !2772)
    #dbg_value(ptr %data, !2769, !DIExpression(), !2773)
    #dbg_value(ptr %data, !2770, !DIExpression(), !2774)
    #dbg_value(i64 0, !2771, !DIExpression(), !2775)
  br label %for.loop, !dbg !2776

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi ptr [ %data, %entry ], [ %5, %for.body ], !dbg !2777
  %1 = phi i64 [ 0, %entry ], [ %4, %for.body ], !dbg !2775
    #dbg_value(ptr %0, !2769, !DIExpression(), !2778)
  %2 = load i8, ptr %0, align 1, !dbg !2779
  %3 = icmp ne i8 %2, 0, !dbg !2780
  br i1 %3, label %for.body, label %for.done, !dbg !2776

for.body:                                         ; preds = %for.loop
  %4 = add i64 %1, 1, !dbg !2781
    #dbg_value(i64 %4, !2771, !DIExpression(), !2781)
    #dbg_value(ptr %0, !2769, !DIExpression(), !2782)
  %5 = getelementptr i8, ptr %0, i64 1, !dbg !2783
    #dbg_value(ptr %5, !2769, !DIExpression(), !2784)
  br label %for.loop, !dbg !2776

for.done:                                         ; preds = %for.loop
  %complit = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 133 to ptr), ptr undef), !dbg !2785
  %6 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !2786
    #dbg_value(ptr %data, !2770, !DIExpression(), !2787)
  %7 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !2788
    #dbg_value(i64 %1, !2771, !DIExpression(), !2789)
  %8 = icmp eq ptr %6, null, !dbg !2786
  br i1 %8, label %store.throw, label %store.next, !dbg !2786

store.next:                                       ; preds = %for.done
  store ptr %data, ptr %6, align 8, !dbg !2786
    #dbg_value(ptr %data, !2770, !DIExpression(), !2787)
  %9 = icmp eq ptr %7, null, !dbg !2788
  br i1 %9, label %store.throw1, label %store.next2, !dbg !2788

store.next2:                                      ; preds = %store.next
  store i64 %1, ptr %7, align 8, !dbg !2788
    #dbg_value(i64 %1, !2771, !DIExpression(), !2789)
  %10 = load %runtime._string, ptr %complit, align 8, !dbg !2790
  ret %runtime._string %10, !dbg !2791

store.throw:                                      ; preds = %for.done
  call void @runtime.nilPanic(ptr undef), !dbg !2786
  unreachable, !dbg !2786

store.throw1:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !2788
  unreachable, !dbg !2788
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/reflectlite.rawStructField" @"internal/reflectlite.rawStructFieldFromPointer"(ptr dereferenceable_or_null(48) %descriptor, ptr dereferenceable_or_null(1) %fieldType, ptr %data, i8 %flagsByte, ptr readonly %name.data, i64 %name.len, i32 %offset, ptr %context) unnamed_addr #1 !dbg !2792 {
entry:
    #dbg_value(ptr %descriptor, !2796, !DIExpression(), !2805)
    #dbg_value(ptr %fieldType, !2797, !DIExpression(), !2805)
    #dbg_value(ptr %data, !2798, !DIExpression(), !2805)
    #dbg_value(i8 %flagsByte, !2799, !DIExpression(), !2805)
  %complit5 = alloca %"internal/reflectlite.rawStructField", align 8, !dbg !2805
  %0 = insertvalue %runtime._string zeroinitializer, ptr %name.data, 0, !dbg !2805
  %1 = insertvalue %runtime._string %0, i64 %name.len, 1, !dbg !2805
    #dbg_value(ptr %name.data, !2800, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2805)
    #dbg_value(i64 %name.len, !2800, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2805)
    #dbg_value(i32 %offset, !2801, !DIExpression(), !2805)
    #dbg_value(%runtime._string zeroinitializer, !2802, !DIExpression(), !2806)
    #dbg_value(i8 %flagsByte, !2799, !DIExpression(), !2807)
  %2 = and i8 %flagsByte, 2, !dbg !2808
  %3 = icmp ne i8 %2, 0, !dbg !2809
  br i1 %3, label %if.then, label %if.done, !dbg !2810

if.then:                                          ; preds = %entry
    #dbg_value(ptr %data, !2798, !DIExpression(), !2811)
  %4 = getelementptr i8, ptr %data, i64 1, !dbg !2812
    #dbg_value(ptr %4, !2798, !DIExpression(), !2813)
    #dbg_value(ptr %4, !2798, !DIExpression(), !2814)
  %5 = load i8, ptr %4, align 1, !dbg !2815
  %6 = zext i8 %5 to i64, !dbg !2816
    #dbg_value(i64 %6, !2803, !DIExpression(), !2817)
    #dbg_value(ptr %4, !2798, !DIExpression(), !2818)
  %7 = getelementptr i8, ptr %4, i64 1, !dbg !2819
    #dbg_value(ptr %7, !2798, !DIExpression(), !2820)
  %complit = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 133 to ptr), ptr undef), !dbg !2821
  %8 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !2822
    #dbg_value(ptr %7, !2798, !DIExpression(), !2823)
  %9 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !2824
    #dbg_value(i64 %6, !2803, !DIExpression(), !2825)
  %10 = icmp eq ptr %8, null, !dbg !2822
  br i1 %10, label %store.throw, label %store.next, !dbg !2822

store.next:                                       ; preds = %if.then
  store ptr %7, ptr %8, align 8, !dbg !2822
    #dbg_value(ptr %7, !2798, !DIExpression(), !2823)
  %11 = icmp eq ptr %9, null, !dbg !2824
  br i1 %11, label %store.throw3, label %store.next4, !dbg !2824

store.next4:                                      ; preds = %store.next
  store i64 %6, ptr %9, align 8, !dbg !2824
    #dbg_value(i64 %6, !2803, !DIExpression(), !2825)
  %12 = load %runtime._string, ptr %complit, align 8, !dbg !2826
    #dbg_value(%runtime._string %12, !2802, !DIExpression(), !2827)
  br label %if.done, !dbg !2810

if.done:                                          ; preds = %store.next4, %entry
  %13 = phi %runtime._string [ zeroinitializer, %entry ], [ %12, %store.next4 ], !dbg !2806
    #dbg_value(%runtime._string zeroinitializer, !2804, !DIExpression(), !2828)
    #dbg_value(i8 %flagsByte, !2799, !DIExpression(), !2829)
  %14 = and i8 %flagsByte, 4, !dbg !2830
  %15 = icmp eq i8 %14, 0, !dbg !2831
  br i1 %15, label %if.then1, label %if.done2, !dbg !2810

if.then1:                                         ; preds = %if.done
    #dbg_value(ptr %descriptor, !2796, !DIExpression(), !2832)
  %16 = icmp eq ptr %descriptor, null, !dbg !2833
  br i1 %16, label %gep.throw, label %gep.next, !dbg !2833

gep.next:                                         ; preds = %if.then1
  %17 = getelementptr inbounds %"internal/reflectlite.structType", ptr %descriptor, i32 0, i32 3, !dbg !2833
  %18 = icmp eq ptr %17, null, !dbg !2833
  br i1 %18, label %deref.throw, label %deref.next, !dbg !2833

deref.next:                                       ; preds = %gep.next
  %19 = load ptr, ptr %17, align 8, !dbg !2833
  %20 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %19, ptr undef), !dbg !2834
    #dbg_value(%runtime._string %20, !2804, !DIExpression(), !2835)
  br label %if.done2, !dbg !2810

if.done2:                                         ; preds = %deref.next, %if.done
  %21 = phi %runtime._string [ zeroinitializer, %if.done ], [ %20, %deref.next ], !dbg !2828
  store %"internal/reflectlite.rawStructField" zeroinitializer, ptr %complit5, align 8, !dbg !2805
  %22 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 0, !dbg !2836
    #dbg_value(%runtime._string %1, !2800, !DIExpression(), !2837)
  %23 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 1, !dbg !2838
    #dbg_value(%runtime._string %21, !2804, !DIExpression(), !2839)
  %24 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 2, !dbg !2840
    #dbg_value(ptr %fieldType, !2797, !DIExpression(), !2841)
  %25 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 3, !dbg !2842
    #dbg_value(%runtime._string %13, !2802, !DIExpression(), !2843)
  %26 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 5, !dbg !2844
    #dbg_value(i8 %flagsByte, !2799, !DIExpression(), !2845)
  %27 = and i8 %flagsByte, 1, !dbg !2846
  %28 = icmp ne i8 %27, 0, !dbg !2847
  %29 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 4, !dbg !2848
    #dbg_value(i32 %offset, !2801, !DIExpression(), !2849)
  %30 = zext i32 %offset to i64, !dbg !2850
  %31 = icmp eq ptr %22, null, !dbg !2836
  br i1 %31, label %store.throw6, label %store.next7, !dbg !2836

store.next7:                                      ; preds = %if.done2
  store %runtime._string %1, ptr %22, align 8, !dbg !2836
    #dbg_value(%runtime._string %1, !2800, !DIExpression(), !2837)
  %32 = icmp eq ptr %23, null, !dbg !2838
  br i1 %32, label %store.throw8, label %store.next9, !dbg !2838

store.next9:                                      ; preds = %store.next7
  store %runtime._string %21, ptr %23, align 8, !dbg !2838
    #dbg_value(%runtime._string %21, !2804, !DIExpression(), !2839)
  %33 = icmp eq ptr %24, null, !dbg !2840
  br i1 %33, label %store.throw10, label %store.next11, !dbg !2840

store.next11:                                     ; preds = %store.next9
  store ptr %fieldType, ptr %24, align 8, !dbg !2840
    #dbg_value(ptr %fieldType, !2797, !DIExpression(), !2841)
  %34 = icmp eq ptr %25, null, !dbg !2842
  br i1 %34, label %store.throw12, label %store.next13, !dbg !2842

store.next13:                                     ; preds = %store.next11
  store %runtime._string %13, ptr %25, align 8, !dbg !2842
  %35 = icmp eq ptr %26, null, !dbg !2844
  br i1 %35, label %store.throw14, label %store.next15, !dbg !2844

store.next15:                                     ; preds = %store.next13
  store i1 %28, ptr %26, align 1, !dbg !2844
  %36 = icmp eq ptr %29, null, !dbg !2848
  br i1 %36, label %store.throw16, label %store.next17, !dbg !2848

store.next17:                                     ; preds = %store.next15
  store i64 %30, ptr %29, align 8, !dbg !2848
  %37 = load %"internal/reflectlite.rawStructField", ptr %complit5, align 8, !dbg !2851
  ret %"internal/reflectlite.rawStructField" %37, !dbg !2852

store.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2822
  unreachable, !dbg !2822

store.throw3:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !2824
  unreachable, !dbg !2824

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !2833
  unreachable, !dbg !2833

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2833
  unreachable, !dbg !2833

store.throw6:                                     ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2836
  unreachable, !dbg !2836

store.throw8:                                     ; preds = %store.next7
  call void @runtime.nilPanic(ptr undef), !dbg !2838
  unreachable, !dbg !2838

store.throw10:                                    ; preds = %store.next9
  call void @runtime.nilPanic(ptr undef), !dbg !2840
  unreachable, !dbg !2840

store.throw12:                                    ; preds = %store.next11
  call void @runtime.nilPanic(ptr undef), !dbg !2842
  unreachable, !dbg !2842

store.throw14:                                    ; preds = %store.next13
  call void @runtime.nilPanic(ptr undef), !dbg !2844
  unreachable, !dbg !2844

store.throw16:                                    ; preds = %store.next15
  call void @runtime.nilPanic(ptr undef), !dbg !2848
  unreachable, !dbg !2848
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.Kind).String"(i8 %k, ptr %context) unnamed_addr #1 !dbg !2853 {
entry:
    #dbg_value(i8 %k, !2858, !DIExpression(), !2859)
    #dbg_value(i8 %k, !2858, !DIExpression(), !2860)
  %0 = icmp eq i8 %k, 0, !dbg !2861
  br i1 %0, label %switch.body, label %switch.next, !dbg !2862

switch.body:                                      ; preds = %entry
  ret %runtime._string { ptr @"internal/reflectlite$string.41", i64 7 }, !dbg !2863

switch.next:                                      ; preds = %entry
  %1 = icmp eq i8 %k, 1, !dbg !2864
  br i1 %1, label %switch.body1, label %switch.next2, !dbg !2862

switch.body1:                                     ; preds = %switch.next
  ret %runtime._string { ptr @"internal/reflectlite$string.42", i64 4 }, !dbg !2865

switch.next2:                                     ; preds = %switch.next
  %2 = icmp eq i8 %k, 2, !dbg !2866
  br i1 %2, label %switch.body3, label %switch.next4, !dbg !2862

switch.body3:                                     ; preds = %switch.next2
  ret %runtime._string { ptr @"internal/reflectlite$string.43", i64 3 }, !dbg !2867

switch.next4:                                     ; preds = %switch.next2
  %3 = icmp eq i8 %k, 3, !dbg !2868
  br i1 %3, label %switch.body5, label %switch.next6, !dbg !2862

switch.body5:                                     ; preds = %switch.next4
  ret %runtime._string { ptr @"internal/reflectlite$string.44", i64 4 }, !dbg !2869

switch.next6:                                     ; preds = %switch.next4
  %4 = icmp eq i8 %k, 4, !dbg !2870
  br i1 %4, label %switch.body7, label %switch.next8, !dbg !2862

switch.body7:                                     ; preds = %switch.next6
  ret %runtime._string { ptr @"internal/reflectlite$string.45", i64 5 }, !dbg !2871

switch.next8:                                     ; preds = %switch.next6
  %5 = icmp eq i8 %k, 5, !dbg !2872
  br i1 %5, label %switch.body9, label %switch.next10, !dbg !2862

switch.body9:                                     ; preds = %switch.next8
  ret %runtime._string { ptr @"internal/reflectlite$string.46", i64 5 }, !dbg !2873

switch.next10:                                    ; preds = %switch.next8
  %6 = icmp eq i8 %k, 6, !dbg !2874
  br i1 %6, label %switch.body11, label %switch.next12, !dbg !2862

switch.body11:                                    ; preds = %switch.next10
  ret %runtime._string { ptr @"internal/reflectlite$string.47", i64 5 }, !dbg !2875

switch.next12:                                    ; preds = %switch.next10
  %7 = icmp eq i8 %k, 7, !dbg !2876
  br i1 %7, label %switch.body13, label %switch.next14, !dbg !2862

switch.body13:                                    ; preds = %switch.next12
  ret %runtime._string { ptr @"internal/reflectlite$string.48", i64 4 }, !dbg !2877

switch.next14:                                    ; preds = %switch.next12
  %8 = icmp eq i8 %k, 8, !dbg !2878
  br i1 %8, label %switch.body15, label %switch.next16, !dbg !2862

switch.body15:                                    ; preds = %switch.next14
  ret %runtime._string { ptr @"internal/reflectlite$string.49", i64 5 }, !dbg !2879

switch.next16:                                    ; preds = %switch.next14
  %9 = icmp eq i8 %k, 9, !dbg !2880
  br i1 %9, label %switch.body17, label %switch.next18, !dbg !2862

switch.body17:                                    ; preds = %switch.next16
  ret %runtime._string { ptr @"internal/reflectlite$string.50", i64 6 }, !dbg !2881

switch.next18:                                    ; preds = %switch.next16
  %10 = icmp eq i8 %k, 10, !dbg !2882
  br i1 %10, label %switch.body19, label %switch.next20, !dbg !2862

switch.body19:                                    ; preds = %switch.next18
  ret %runtime._string { ptr @"internal/reflectlite$string.51", i64 6 }, !dbg !2883

switch.next20:                                    ; preds = %switch.next18
  %11 = icmp eq i8 %k, 11, !dbg !2884
  br i1 %11, label %switch.body21, label %switch.next22, !dbg !2862

switch.body21:                                    ; preds = %switch.next20
  ret %runtime._string { ptr @"internal/reflectlite$string.52", i64 6 }, !dbg !2885

switch.next22:                                    ; preds = %switch.next20
  %12 = icmp eq i8 %k, 12, !dbg !2886
  br i1 %12, label %switch.body23, label %switch.next24, !dbg !2862

switch.body23:                                    ; preds = %switch.next22
  ret %runtime._string { ptr @"internal/reflectlite$string.53", i64 7 }, !dbg !2887

switch.next24:                                    ; preds = %switch.next22
  %13 = icmp eq i8 %k, 13, !dbg !2888
  br i1 %13, label %switch.body25, label %switch.next26, !dbg !2862

switch.body25:                                    ; preds = %switch.next24
  ret %runtime._string { ptr @"internal/reflectlite$string.54", i64 7 }, !dbg !2889

switch.next26:                                    ; preds = %switch.next24
  %14 = icmp eq i8 %k, 14, !dbg !2890
  br i1 %14, label %switch.body27, label %switch.next28, !dbg !2862

switch.body27:                                    ; preds = %switch.next26
  ret %runtime._string { ptr @"internal/reflectlite$string.55", i64 7 }, !dbg !2891

switch.next28:                                    ; preds = %switch.next26
  %15 = icmp eq i8 %k, 15, !dbg !2892
  br i1 %15, label %switch.body29, label %switch.next30, !dbg !2862

switch.body29:                                    ; preds = %switch.next28
  ret %runtime._string { ptr @"internal/reflectlite$string.56", i64 9 }, !dbg !2893

switch.next30:                                    ; preds = %switch.next28
  %16 = icmp eq i8 %k, 16, !dbg !2894
  br i1 %16, label %switch.body31, label %switch.next32, !dbg !2862

switch.body31:                                    ; preds = %switch.next30
  ret %runtime._string { ptr @"internal/reflectlite$string.57", i64 10 }, !dbg !2895

switch.next32:                                    ; preds = %switch.next30
  %17 = icmp eq i8 %k, 17, !dbg !2896
  br i1 %17, label %switch.body33, label %switch.next34, !dbg !2862

switch.body33:                                    ; preds = %switch.next32
  ret %runtime._string { ptr @"internal/reflectlite$string.58", i64 6 }, !dbg !2897

switch.next34:                                    ; preds = %switch.next32
  %18 = icmp eq i8 %k, 18, !dbg !2898
  br i1 %18, label %switch.body35, label %switch.next36, !dbg !2862

switch.body35:                                    ; preds = %switch.next34
  ret %runtime._string { ptr @"internal/reflectlite$string.59", i64 14 }, !dbg !2899

switch.next36:                                    ; preds = %switch.next34
  %19 = icmp eq i8 %k, 19, !dbg !2900
  br i1 %19, label %switch.body37, label %switch.next38, !dbg !2862

switch.body37:                                    ; preds = %switch.next36
  ret %runtime._string { ptr @"internal/reflectlite$string.60", i64 4 }, !dbg !2901

switch.next38:                                    ; preds = %switch.next36
  %20 = icmp eq i8 %k, 20, !dbg !2902
  br i1 %20, label %switch.body39, label %switch.next40, !dbg !2862

switch.body39:                                    ; preds = %switch.next38
  ret %runtime._string { ptr @"internal/reflectlite$string.61", i64 9 }, !dbg !2903

switch.next40:                                    ; preds = %switch.next38
  %21 = icmp eq i8 %k, 21, !dbg !2904
  br i1 %21, label %switch.body41, label %switch.next42, !dbg !2862

switch.body41:                                    ; preds = %switch.next40
  ret %runtime._string { ptr @"internal/reflectlite$string.62", i64 3 }, !dbg !2905

switch.next42:                                    ; preds = %switch.next40
  %22 = icmp eq i8 %k, 22, !dbg !2906
  br i1 %22, label %switch.body43, label %switch.next44, !dbg !2862

switch.body43:                                    ; preds = %switch.next42
  ret %runtime._string { ptr @"internal/reflectlite$string.63", i64 5 }, !dbg !2907

switch.next44:                                    ; preds = %switch.next42
  %23 = icmp eq i8 %k, 23, !dbg !2908
  br i1 %23, label %switch.body45, label %switch.next46, !dbg !2862

switch.body45:                                    ; preds = %switch.next44
  ret %runtime._string { ptr @"internal/reflectlite$string.64", i64 5 }, !dbg !2909

switch.next46:                                    ; preds = %switch.next44
  %24 = icmp eq i8 %k, 24, !dbg !2910
  br i1 %24, label %switch.body47, label %switch.next48, !dbg !2862

switch.body47:                                    ; preds = %switch.next46
  ret %runtime._string { ptr @"internal/reflectlite$string.65", i64 4 }, !dbg !2911

switch.next48:                                    ; preds = %switch.next46
  %25 = icmp eq i8 %k, 25, !dbg !2912
  br i1 %25, label %switch.body49, label %switch.next50, !dbg !2862

switch.body49:                                    ; preds = %switch.next48
  ret %runtime._string { ptr @"internal/reflectlite$string.66", i64 3 }, !dbg !2913

switch.next50:                                    ; preds = %switch.next48
  %26 = icmp eq i8 %k, 26, !dbg !2914
  br i1 %26, label %switch.body51, label %switch.next52, !dbg !2862

switch.body51:                                    ; preds = %switch.next50
  ret %runtime._string { ptr @"internal/reflectlite$string.67", i64 6 }, !dbg !2915

switch.next52:                                    ; preds = %switch.next50
    #dbg_value(i8 %k, !2858, !DIExpression(), !2916)
  %27 = sext i8 %k to i64, !dbg !2917
  %28 = call %runtime._string @"internal/itoa.Itoa"(i64 %27, ptr undef), !dbg !2918
  %29 = extractvalue %runtime._string %28, 0, !dbg !2919
  %30 = extractvalue %runtime._string %28, 1, !dbg !2919
  %31 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.68", i64 4, ptr %29, i64 %30, ptr undef), !dbg !2919
  ret %runtime._string %31, !dbg !2920
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/reflectlite.quote"(ptr readonly %s.data, i64 %s.len, ptr %context) unnamed_addr #1 !dbg !2921 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !2927
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !2927
    #dbg_value(ptr %s.data, !2923, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2927)
    #dbg_value(i64 %s.len, !2923, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2927)
    #dbg_value(%runtime._string %1, !2923, !DIExpression(), !2928)
  %len = extractvalue %runtime._string %1, 1, !dbg !2929
  %2 = mul i64 3, %len, !dbg !2930
  %3 = icmp eq i64 %2, -9223372036854775808, !dbg !2931
  %4 = and i1 false, %3, !dbg !2931
  %5 = select i1 %4, i64 1, i64 2, !dbg !2931
  %6 = sdiv i64 %2, %5, !dbg !2931
  %slice.lowhigh = icmp ugt i64 0, %6, !dbg !2932
  %slice.highmax = icmp ugt i64 %6, %6, !dbg !2932
  %slice.maxcap = icmp ugt i64 %6, 9223372036854775807, !dbg !2932
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2932
  %slice.lowcap = or i1 %slice.lowmax, %slice.maxcap, !dbg !2932
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2932

slice.next:                                       ; preds = %entry
  %makeslice.cap = mul i64 1, %6, !dbg !2932
  %makeslice.buf = call align 1 ptr @runtime.alloc(i64 %makeslice.cap, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2932
  %7 = insertvalue { ptr, i64, i64 } undef, ptr %makeslice.buf, 0, !dbg !2932
  %8 = insertvalue { ptr, i64, i64 } %7, i64 0, 1, !dbg !2932
  %9 = insertvalue { ptr, i64, i64 } %8, i64 %6, 2, !dbg !2932
    #dbg_value({ ptr, i64, i64 } %9, !2924, !DIExpression(), !2933)
    #dbg_value({ ptr, i64, i64 } %9, !2924, !DIExpression(), !2934)
  %varargs = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2935
  %10 = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2935
  store i8 34, ptr %10, align 1, !dbg !2935
  %slice.ptr = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2935
  %11 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !2935
  %12 = insertvalue { ptr, i64, i64 } %11, i64 1, 1, !dbg !2935
  %13 = insertvalue { ptr, i64, i64 } %12, i64 1, 2, !dbg !2935
  %append.srcBuf = extractvalue { ptr, i64, i64 } %9, 0, !dbg !2936
  %append.srcLen = extractvalue { ptr, i64, i64 } %9, 1, !dbg !2936
  %append.srcCap = extractvalue { ptr, i64, i64 } %9, 2, !dbg !2936
  %append.elemsBuf = extractvalue { ptr, i64, i64 } %13, 0, !dbg !2936
  %append.elemsLen = extractvalue { ptr, i64, i64 } %13, 1, !dbg !2936
  %append.new = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf, ptr %append.elemsBuf, i64 %append.srcLen, i64 %append.srcCap, i64 %append.elemsLen, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2936
  %append.newPtr = extractvalue { ptr, i64, i64 } %append.new, 0, !dbg !2936
  %append.newLen = extractvalue { ptr, i64, i64 } %append.new, 1, !dbg !2936
  %append.newCap = extractvalue { ptr, i64, i64 } %append.new, 2, !dbg !2936
  %14 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr, 0, !dbg !2936
  %15 = insertvalue { ptr, i64, i64 } %14, i64 %append.newLen, 1, !dbg !2936
  %16 = insertvalue { ptr, i64, i64 } %15, i64 %append.newCap, 2, !dbg !2936
    #dbg_value({ ptr, i64, i64 } %16, !2924, !DIExpression(), !2937)
    #dbg_value(i64 0, !2925, !DIExpression(), !2938)
  br label %for.loop, !dbg !2939

for.loop:                                         ; preds = %slice.next50, %slice.next
  %17 = phi %runtime._string [ %1, %slice.next ], [ %76, %slice.next50 ], !dbg !2940
  %18 = phi { ptr, i64, i64 } [ %16, %slice.next ], [ %70, %slice.next50 ], !dbg !2933
    #dbg_value(%runtime._string %17, !2923, !DIExpression(), !2941)
  %len3 = extractvalue %runtime._string %17, 1, !dbg !2942
  %19 = icmp sgt i64 %len3, 0, !dbg !2943
  br i1 %19, label %for.body, label %for.done, !dbg !2939

for.body:                                         ; preds = %for.loop
    #dbg_value(%runtime._string %17, !2923, !DIExpression(), !2944)
  %len4 = extractvalue %runtime._string %17, 1, !dbg !2945
  %20 = icmp uge i64 0, %len4, !dbg !2945
  br i1 %20, label %lookup.throw, label %lookup.next, !dbg !2945

lookup.next:                                      ; preds = %for.body
  %21 = extractvalue %runtime._string %17, 0, !dbg !2945
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !2945
  %23 = load i8, ptr %22, align 1, !dbg !2945
  %24 = zext i8 %23 to i32, !dbg !2946
    #dbg_value(i32 %24, !2926, !DIExpression(), !2947)
    #dbg_value(i64 1, !2925, !DIExpression(), !2948)
    #dbg_value(i32 %24, !2926, !DIExpression(), !2949)
  %25 = icmp sge i32 %24, 128, !dbg !2950
  br i1 %25, label %if.then, label %if.done, !dbg !2939

if.then:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %17, !2923, !DIExpression(), !2951)
  %26 = extractvalue %runtime._string %17, 0, !dbg !2952
  %27 = extractvalue %runtime._string %17, 1, !dbg !2952
  %28 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(ptr %26, i64 %27, ptr undef), !dbg !2952
  %29 = extractvalue { i32, i64 } %28, 0, !dbg !2952
    #dbg_value(i32 %29, !2926, !DIExpression(), !2953)
  %30 = extractvalue { i32, i64 } %28, 1, !dbg !2952
    #dbg_value(i64 %30, !2925, !DIExpression(), !2954)
  br label %if.done, !dbg !2939

if.done:                                          ; preds = %if.then, %lookup.next
  %31 = phi i64 [ 1, %lookup.next ], [ %30, %if.then ], !dbg !2938
  %32 = phi i32 [ %24, %lookup.next ], [ %29, %if.then ], !dbg !2947
    #dbg_value(i64 %31, !2925, !DIExpression(), !2955)
  %33 = icmp eq i64 %31, 1, !dbg !2956
  br i1 %33, label %cond.true, label %if.done2, !dbg !2939

cond.true:                                        ; preds = %if.done
    #dbg_value(i32 %32, !2926, !DIExpression(), !2957)
  %34 = icmp eq i32 %32, 65533, !dbg !2958
  br i1 %34, label %if.then1, label %if.done2, !dbg !2939

if.then1:                                         ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } %18, !2924, !DIExpression(), !2959)
  %append.srcBuf5 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2960
  %append.srcLen6 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2960
  %append.srcCap7 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2960
  %append.new8 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf5, ptr @"internal/reflectlite$string.20", i64 %append.srcLen6, i64 %append.srcCap7, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2960
  %append.newPtr9 = extractvalue { ptr, i64, i64 } %append.new8, 0, !dbg !2960
  %append.newLen10 = extractvalue { ptr, i64, i64 } %append.new8, 1, !dbg !2960
  %append.newCap11 = extractvalue { ptr, i64, i64 } %append.new8, 2, !dbg !2960
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr9, 0, !dbg !2960
  %36 = insertvalue { ptr, i64, i64 } %35, i64 %append.newLen10, 1, !dbg !2960
  %37 = insertvalue { ptr, i64, i64 } %36, i64 %append.newCap11, 2, !dbg !2960
    #dbg_value({ ptr, i64, i64 } %37, !2924, !DIExpression(), !2961)
    #dbg_value({ ptr, i64, i64 } %37, !2924, !DIExpression(), !2962)
    #dbg_value(%runtime._string %17, !2923, !DIExpression(), !2963)
  %len12 = extractvalue %runtime._string %17, 1, !dbg !2964
  %38 = icmp uge i64 0, %len12, !dbg !2964
  br i1 %38, label %lookup.throw13, label %lookup.next14, !dbg !2964

lookup.next14:                                    ; preds = %if.then1
  %39 = extractvalue %runtime._string %17, 0, !dbg !2964
  %40 = getelementptr inbounds i8, ptr %39, i64 0, !dbg !2964
  %41 = load i8, ptr %40, align 1, !dbg !2964
  %42 = lshr i8 %41, 4, !dbg !2965
  %shift.result = select i1 false, i8 0, i8 %42, !dbg !2965
  %43 = zext i8 %shift.result to i64, !dbg !2966
  %44 = icmp uge i64 %43, 15, !dbg !2966
  br i1 %44, label %lookup.throw15, label %lookup.next16, !dbg !2966

lookup.next16:                                    ; preds = %lookup.next14
  %45 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.21", i64 %43, !dbg !2966
  %46 = load i8, ptr %45, align 1, !dbg !2966
  %varargs17 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2967
  %47 = getelementptr inbounds [1 x i8], ptr %varargs17, i32 0, i64 0, !dbg !2967
  store i8 %46, ptr %47, align 1, !dbg !2966
  %slice.ptr18 = getelementptr inbounds [1 x i8], ptr %varargs17, i32 0, i64 0, !dbg !2967
  %48 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr18, 0, !dbg !2967
  %49 = insertvalue { ptr, i64, i64 } %48, i64 1, 1, !dbg !2967
  %50 = insertvalue { ptr, i64, i64 } %49, i64 1, 2, !dbg !2967
  %append.srcBuf19 = extractvalue { ptr, i64, i64 } %37, 0, !dbg !2968
  %append.srcLen20 = extractvalue { ptr, i64, i64 } %37, 1, !dbg !2968
  %append.srcCap21 = extractvalue { ptr, i64, i64 } %37, 2, !dbg !2968
  %append.elemsBuf22 = extractvalue { ptr, i64, i64 } %50, 0, !dbg !2968
  %append.elemsLen23 = extractvalue { ptr, i64, i64 } %50, 1, !dbg !2968
  %append.new24 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf19, ptr %append.elemsBuf22, i64 %append.srcLen20, i64 %append.srcCap21, i64 %append.elemsLen23, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2968
  %append.newPtr25 = extractvalue { ptr, i64, i64 } %append.new24, 0, !dbg !2968
  %append.newLen26 = extractvalue { ptr, i64, i64 } %append.new24, 1, !dbg !2968
  %append.newCap27 = extractvalue { ptr, i64, i64 } %append.new24, 2, !dbg !2968
  %51 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr25, 0, !dbg !2968
  %52 = insertvalue { ptr, i64, i64 } %51, i64 %append.newLen26, 1, !dbg !2968
  %53 = insertvalue { ptr, i64, i64 } %52, i64 %append.newCap27, 2, !dbg !2968
    #dbg_value({ ptr, i64, i64 } %53, !2924, !DIExpression(), !2969)
    #dbg_value({ ptr, i64, i64 } %53, !2924, !DIExpression(), !2970)
    #dbg_value(%runtime._string %17, !2923, !DIExpression(), !2971)
  %len28 = extractvalue %runtime._string %17, 1, !dbg !2972
  %54 = icmp uge i64 0, %len28, !dbg !2972
  br i1 %54, label %lookup.throw29, label %lookup.next30, !dbg !2972

lookup.next30:                                    ; preds = %lookup.next16
  %55 = extractvalue %runtime._string %17, 0, !dbg !2972
  %56 = getelementptr inbounds i8, ptr %55, i64 0, !dbg !2972
  %57 = load i8, ptr %56, align 1, !dbg !2972
  %58 = and i8 %57, 15, !dbg !2973
  %59 = zext i8 %58 to i64, !dbg !2974
  %60 = icmp uge i64 %59, 15, !dbg !2974
  br i1 %60, label %lookup.throw31, label %lookup.next32, !dbg !2974

lookup.next32:                                    ; preds = %lookup.next30
  %61 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.22", i64 %59, !dbg !2974
  %62 = load i8, ptr %61, align 1, !dbg !2974
  %varargs33 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2975
  %63 = getelementptr inbounds [1 x i8], ptr %varargs33, i32 0, i64 0, !dbg !2975
  store i8 %62, ptr %63, align 1, !dbg !2974
  %slice.ptr34 = getelementptr inbounds [1 x i8], ptr %varargs33, i32 0, i64 0, !dbg !2975
  %64 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr34, 0, !dbg !2975
  %65 = insertvalue { ptr, i64, i64 } %64, i64 1, 1, !dbg !2975
  %66 = insertvalue { ptr, i64, i64 } %65, i64 1, 2, !dbg !2975
  %append.srcBuf35 = extractvalue { ptr, i64, i64 } %53, 0, !dbg !2976
  %append.srcLen36 = extractvalue { ptr, i64, i64 } %53, 1, !dbg !2976
  %append.srcCap37 = extractvalue { ptr, i64, i64 } %53, 2, !dbg !2976
  %append.elemsBuf38 = extractvalue { ptr, i64, i64 } %66, 0, !dbg !2976
  %append.elemsLen39 = extractvalue { ptr, i64, i64 } %66, 1, !dbg !2976
  %append.new40 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf35, ptr %append.elemsBuf38, i64 %append.srcLen36, i64 %append.srcCap37, i64 %append.elemsLen39, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2976
  %append.newPtr41 = extractvalue { ptr, i64, i64 } %append.new40, 0, !dbg !2976
  %append.newLen42 = extractvalue { ptr, i64, i64 } %append.new40, 1, !dbg !2976
  %append.newCap43 = extractvalue { ptr, i64, i64 } %append.new40, 2, !dbg !2976
  %67 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr41, 0, !dbg !2976
  %68 = insertvalue { ptr, i64, i64 } %67, i64 %append.newLen42, 1, !dbg !2976
  %69 = insertvalue { ptr, i64, i64 } %68, i64 %append.newCap43, 2, !dbg !2976
    #dbg_value({ ptr, i64, i64 } %69, !2924, !DIExpression(), !2977)
  br label %for.post, !dbg !2939

for.post:                                         ; preds = %if.done2, %lookup.next32
  %70 = phi { ptr, i64, i64 } [ %69, %lookup.next32 ], [ %80, %if.done2 ], !dbg !2933
    #dbg_value(%runtime._string %17, !2923, !DIExpression(), !2978)
    #dbg_value(i64 %31, !2925, !DIExpression(), !2979)
  %71 = extractvalue %runtime._string %17, 0, !dbg !2980
  %72 = extractvalue %runtime._string %17, 1, !dbg !2980
  %slice.lowhigh44 = icmp ugt i64 %31, %72, !dbg !2980
  %slice.highmax45 = icmp ugt i64 %72, %72, !dbg !2980
  %slice.maxcap46 = icmp ugt i64 %72, %72, !dbg !2980
  %slice.lowmax47 = or i1 %slice.lowhigh44, %slice.highmax45, !dbg !2980
  %slice.lowcap48 = or i1 %slice.lowmax47, %slice.maxcap46, !dbg !2980
  br i1 %slice.lowcap48, label %slice.throw49, label %slice.next50, !dbg !2980

slice.next50:                                     ; preds = %for.post
  %73 = getelementptr inbounds i8, ptr %71, i64 %31, !dbg !2980
  %74 = sub i64 %72, %31, !dbg !2980
  %75 = insertvalue %runtime._string undef, ptr %73, 0, !dbg !2980
  %76 = insertvalue %runtime._string %75, i64 %74, 1, !dbg !2980
    #dbg_value(%runtime._string %76, !2923, !DIExpression(), !2981)
  br label %for.loop, !dbg !2939

if.done2:                                         ; preds = %cond.true, %if.done
    #dbg_value({ ptr, i64, i64 } %18, !2924, !DIExpression(), !2982)
    #dbg_value(i32 %32, !2926, !DIExpression(), !2983)
  %77 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2984
  %78 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2984
  %79 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2984
  %80 = call { ptr, i64, i64 } @"internal/reflectlite.appendEscapedRune"(ptr %77, i64 %78, i64 %79, i32 %32, ptr undef), !dbg !2984
    #dbg_value({ ptr, i64, i64 } %80, !2924, !DIExpression(), !2985)
  br label %for.post, !dbg !2939

for.done:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %18, !2924, !DIExpression(), !2986)
  %varargs51 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2987
  %81 = getelementptr inbounds [1 x i8], ptr %varargs51, i32 0, i64 0, !dbg !2987
  store i8 34, ptr %81, align 1, !dbg !2987
  %slice.ptr52 = getelementptr inbounds [1 x i8], ptr %varargs51, i32 0, i64 0, !dbg !2987
  %82 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr52, 0, !dbg !2987
  %83 = insertvalue { ptr, i64, i64 } %82, i64 1, 1, !dbg !2987
  %84 = insertvalue { ptr, i64, i64 } %83, i64 1, 2, !dbg !2987
  %append.srcBuf53 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2988
  %append.srcLen54 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2988
  %append.srcCap55 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2988
  %append.elemsBuf56 = extractvalue { ptr, i64, i64 } %84, 0, !dbg !2988
  %append.elemsLen57 = extractvalue { ptr, i64, i64 } %84, 1, !dbg !2988
  %append.new58 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf53, ptr %append.elemsBuf56, i64 %append.srcLen54, i64 %append.srcCap55, i64 %append.elemsLen57, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2988
  %append.newPtr59 = extractvalue { ptr, i64, i64 } %append.new58, 0, !dbg !2988
  %append.newLen60 = extractvalue { ptr, i64, i64 } %append.new58, 1, !dbg !2988
  %append.newCap61 = extractvalue { ptr, i64, i64 } %append.new58, 2, !dbg !2988
  %85 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr59, 0, !dbg !2988
  %86 = insertvalue { ptr, i64, i64 } %85, i64 %append.newLen60, 1, !dbg !2988
  %87 = insertvalue { ptr, i64, i64 } %86, i64 %append.newCap61, 2, !dbg !2988
    #dbg_value({ ptr, i64, i64 } %87, !2924, !DIExpression(), !2989)
    #dbg_value({ ptr, i64, i64 } %87, !2924, !DIExpression(), !2990)
  %88 = extractvalue { ptr, i64, i64 } %87, 0, !dbg !2991
  %89 = extractvalue { ptr, i64, i64 } %87, 1, !dbg !2991
  %90 = extractvalue { ptr, i64, i64 } %87, 2, !dbg !2991
  %91 = call %runtime._string @runtime.stringFromBytes(ptr %88, i64 %89, i64 %90, ptr undef), !dbg !2991
  ret %runtime._string %91, !dbg !2992

slice.throw:                                      ; preds = %entry
  call void @runtime.slicePanic(ptr undef), !dbg !2932
  unreachable, !dbg !2932

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2945
  unreachable, !dbg !2945

lookup.throw13:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !2964
  unreachable, !dbg !2964

lookup.throw15:                                   ; preds = %lookup.next14
  call void @runtime.lookupPanic(ptr undef), !dbg !2966
  unreachable, !dbg !2966

lookup.throw29:                                   ; preds = %lookup.next16
  call void @runtime.lookupPanic(ptr undef), !dbg !2972
  unreachable, !dbg !2972

lookup.throw31:                                   ; preds = %lookup.next30
  call void @runtime.lookupPanic(ptr undef), !dbg !2974
  unreachable, !dbg !2974

slice.throw49:                                    ; preds = %for.post
  call void @runtime.slicePanic(ptr undef), !dbg !2980
  unreachable, !dbg !2980
}

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @"internal/reflectlite.appendEscapedRune"(ptr %buf.data, i64 %buf.len, i64 %buf.cap, i32 %r, ptr %context) unnamed_addr #1 !dbg !2993 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %buf.data, 0, !dbg !3000
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %buf.len, 1, !dbg !3000
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %buf.cap, 2, !dbg !3000
    #dbg_value(ptr %buf.data, !2995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3000)
    #dbg_value(i64 %buf.len, !2995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3000)
    #dbg_value(i64 %buf.cap, !2995, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3000)
    #dbg_value(i32 %r, !2996, !DIExpression(), !3000)
  %runeTmp = call align 1 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3001
    #dbg_value(i32 %r, !2996, !DIExpression(), !3002)
  %3 = icmp eq i32 %r, 34, !dbg !3003
  br i1 %3, label %if.then, label %cond.false, !dbg !3004

if.then:                                          ; preds = %cond.false, %entry
    #dbg_value({ ptr, i64, i64 } %2, !2995, !DIExpression(), !3005)
  %varargs = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3006
  %4 = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !3006
  store i8 92, ptr %4, align 1, !dbg !3006
  %slice.ptr = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !3006
  %5 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !3006
  %6 = insertvalue { ptr, i64, i64 } %5, i64 1, 1, !dbg !3006
  %7 = insertvalue { ptr, i64, i64 } %6, i64 1, 2, !dbg !3006
  %append.srcBuf = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3007
  %append.srcLen = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3007
  %append.srcCap = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3007
  %append.elemsBuf = extractvalue { ptr, i64, i64 } %7, 0, !dbg !3007
  %append.elemsLen = extractvalue { ptr, i64, i64 } %7, 1, !dbg !3007
  %append.new = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf, ptr %append.elemsBuf, i64 %append.srcLen, i64 %append.srcCap, i64 %append.elemsLen, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3007
  %append.newPtr = extractvalue { ptr, i64, i64 } %append.new, 0, !dbg !3007
  %append.newLen = extractvalue { ptr, i64, i64 } %append.new, 1, !dbg !3007
  %append.newCap = extractvalue { ptr, i64, i64 } %append.new, 2, !dbg !3007
  %8 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr, 0, !dbg !3007
  %9 = insertvalue { ptr, i64, i64 } %8, i64 %append.newLen, 1, !dbg !3007
  %10 = insertvalue { ptr, i64, i64 } %9, i64 %append.newCap, 2, !dbg !3007
    #dbg_value({ ptr, i64, i64 } %10, !2995, !DIExpression(), !3008)
    #dbg_value({ ptr, i64, i64 } %10, !2995, !DIExpression(), !3009)
    #dbg_value(i32 %r, !2996, !DIExpression(), !3010)
  %11 = trunc i32 %r to i8, !dbg !3011
  %varargs23 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3012
  %12 = getelementptr inbounds [1 x i8], ptr %varargs23, i32 0, i64 0, !dbg !3012
  store i8 %11, ptr %12, align 1, !dbg !3011
  %slice.ptr24 = getelementptr inbounds [1 x i8], ptr %varargs23, i32 0, i64 0, !dbg !3012
  %13 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr24, 0, !dbg !3012
  %14 = insertvalue { ptr, i64, i64 } %13, i64 1, 1, !dbg !3012
  %15 = insertvalue { ptr, i64, i64 } %14, i64 1, 2, !dbg !3012
  %append.srcBuf25 = extractvalue { ptr, i64, i64 } %10, 0, !dbg !3013
  %append.srcLen26 = extractvalue { ptr, i64, i64 } %10, 1, !dbg !3013
  %append.srcCap27 = extractvalue { ptr, i64, i64 } %10, 2, !dbg !3013
  %append.elemsBuf28 = extractvalue { ptr, i64, i64 } %15, 0, !dbg !3013
  %append.elemsLen29 = extractvalue { ptr, i64, i64 } %15, 1, !dbg !3013
  %append.new30 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf25, ptr %append.elemsBuf28, i64 %append.srcLen26, i64 %append.srcCap27, i64 %append.elemsLen29, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3013
  %append.newPtr31 = extractvalue { ptr, i64, i64 } %append.new30, 0, !dbg !3013
  %append.newLen32 = extractvalue { ptr, i64, i64 } %append.new30, 1, !dbg !3013
  %append.newCap33 = extractvalue { ptr, i64, i64 } %append.new30, 2, !dbg !3013
  %16 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr31, 0, !dbg !3013
  %17 = insertvalue { ptr, i64, i64 } %16, i64 %append.newLen32, 1, !dbg !3013
  %18 = insertvalue { ptr, i64, i64 } %17, i64 %append.newCap33, 2, !dbg !3013
    #dbg_value({ ptr, i64, i64 } %18, !2995, !DIExpression(), !3014)
    #dbg_value({ ptr, i64, i64 } %18, !2995, !DIExpression(), !3015)
  ret { ptr, i64, i64 } %18, !dbg !3016

cond.false:                                       ; preds = %entry
    #dbg_value(i32 %r, !2996, !DIExpression(), !3017)
  %19 = icmp eq i32 %r, 92, !dbg !3018
  br i1 %19, label %if.then, label %if.done, !dbg !3004

if.done:                                          ; preds = %cond.false
    #dbg_value(i32 %r, !2996, !DIExpression(), !3019)
  %20 = call i1 @"internal/reflectlite.isPrint"(i32 %r, ptr undef), !dbg !3020
  br i1 %20, label %if.then1, label %if.done2, !dbg !3004

if.then1:                                         ; preds = %if.done
  %slice.ptr34 = getelementptr inbounds [4 x i8], ptr %runeTmp, i32 0, i64 0, !dbg !3021
  %21 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr34, 0, !dbg !3021
  %22 = insertvalue { ptr, i64, i64 } %21, i64 4, 1, !dbg !3021
  %23 = insertvalue { ptr, i64, i64 } %22, i64 4, 2, !dbg !3021
    #dbg_value(i32 %r, !2996, !DIExpression(), !3022)
  %24 = extractvalue { ptr, i64, i64 } %23, 0, !dbg !3023
  %25 = extractvalue { ptr, i64, i64 } %23, 1, !dbg !3023
  %26 = extractvalue { ptr, i64, i64 } %23, 2, !dbg !3023
  %27 = call i64 @"unicode/utf8.EncodeRune"(ptr %24, i64 %25, i64 %26, i32 %r, ptr undef), !dbg !3023
    #dbg_value(i64 %27, !2997, !DIExpression(), !3024)
    #dbg_value({ ptr, i64, i64 } %2, !2995, !DIExpression(), !3025)
    #dbg_value(i64 %27, !2997, !DIExpression(), !3026)
  %slice.lowhigh = icmp ugt i64 0, %27, !dbg !3027
  %slice.highmax = icmp ugt i64 %27, 4, !dbg !3027
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !3027
  %slice.lowcap = or i1 %slice.lowmax, false, !dbg !3027
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !3027

slice.next:                                       ; preds = %if.then1
  %slice.len = sub i64 %27, 0, !dbg !3027
  %slice.ptr35 = getelementptr inbounds [4 x i8], ptr %runeTmp, i32 0, i64 0, !dbg !3027
  %28 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr35, 0, !dbg !3027
  %29 = insertvalue { ptr, i64, i64 } %28, i64 %slice.len, 1, !dbg !3027
  %30 = insertvalue { ptr, i64, i64 } %29, i64 4, 2, !dbg !3027
  %append.srcBuf36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3028
  %append.srcLen37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3028
  %append.srcCap38 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3028
  %append.elemsBuf39 = extractvalue { ptr, i64, i64 } %30, 0, !dbg !3028
  %append.elemsLen40 = extractvalue { ptr, i64, i64 } %30, 1, !dbg !3028
  %append.new41 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf36, ptr %append.elemsBuf39, i64 %append.srcLen37, i64 %append.srcCap38, i64 %append.elemsLen40, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3028
  %append.newPtr42 = extractvalue { ptr, i64, i64 } %append.new41, 0, !dbg !3028
  %append.newLen43 = extractvalue { ptr, i64, i64 } %append.new41, 1, !dbg !3028
  %append.newCap44 = extractvalue { ptr, i64, i64 } %append.new41, 2, !dbg !3028
  %31 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr42, 0, !dbg !3028
  %32 = insertvalue { ptr, i64, i64 } %31, i64 %append.newLen43, 1, !dbg !3028
  %33 = insertvalue { ptr, i64, i64 } %32, i64 %append.newCap44, 2, !dbg !3028
    #dbg_value({ ptr, i64, i64 } %33, !2995, !DIExpression(), !3029)
    #dbg_value({ ptr, i64, i64 } %33, !2995, !DIExpression(), !3030)
  ret { ptr, i64, i64 } %33, !dbg !3031

if.done2:                                         ; preds = %if.done
    #dbg_value(i32 %r, !2996, !DIExpression(), !3032)
  %34 = icmp eq i32 %r, 7, !dbg !3033
  br i1 %34, label %switch.body, label %switch.next, !dbg !3004

switch.body:                                      ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } %2, !2995, !DIExpression(), !3034)
  %append.srcBuf45 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3035
  %append.srcLen46 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3035
  %append.srcCap47 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3035
  %append.new48 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf45, ptr @"internal/reflectlite$string.23", i64 %append.srcLen46, i64 %append.srcCap47, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3035
  %append.newPtr49 = extractvalue { ptr, i64, i64 } %append.new48, 0, !dbg !3035
  %append.newLen50 = extractvalue { ptr, i64, i64 } %append.new48, 1, !dbg !3035
  %append.newCap51 = extractvalue { ptr, i64, i64 } %append.new48, 2, !dbg !3035
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr49, 0, !dbg !3035
  %36 = insertvalue { ptr, i64, i64 } %35, i64 %append.newLen50, 1, !dbg !3035
  %37 = insertvalue { ptr, i64, i64 } %36, i64 %append.newCap51, 2, !dbg !3035
    #dbg_value({ ptr, i64, i64 } %37, !2995, !DIExpression(), !3036)
  br label %switch.done, !dbg !3004

switch.done:                                      ; preds = %for.loop21, %for.loop, %lookup.next113, %switch.body13, %switch.body11, %switch.body9, %switch.body7, %switch.body5, %switch.body3, %switch.body
  %38 = phi { ptr, i64, i64 } [ %37, %switch.body ], [ %42, %switch.body3 ], [ %46, %switch.body5 ], [ %50, %switch.body7 ], [ %54, %switch.body9 ], [ %58, %switch.body11 ], [ %62, %switch.body13 ], [ %93, %lookup.next113 ], [ %100, %for.loop ], [ %122, %for.loop21 ], !dbg !3037
    #dbg_value({ ptr, i64, i64 } %38, !2995, !DIExpression(), !3038)
  ret { ptr, i64, i64 } %38, !dbg !3039

switch.next:                                      ; preds = %if.done2
  %39 = icmp eq i32 %r, 8, !dbg !3040
  br i1 %39, label %switch.body3, label %switch.next4, !dbg !3004

switch.body3:                                     ; preds = %switch.next
    #dbg_value({ ptr, i64, i64 } %2, !2995, !DIExpression(), !3041)
  %append.srcBuf52 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3042
  %append.srcLen53 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3042
  %append.srcCap54 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3042
  %append.new55 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf52, ptr @"internal/reflectlite$string.24", i64 %append.srcLen53, i64 %append.srcCap54, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3042
  %append.newPtr56 = extractvalue { ptr, i64, i64 } %append.new55, 0, !dbg !3042
  %append.newLen57 = extractvalue { ptr, i64, i64 } %append.new55, 1, !dbg !3042
  %append.newCap58 = extractvalue { ptr, i64, i64 } %append.new55, 2, !dbg !3042
  %40 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr56, 0, !dbg !3042
  %41 = insertvalue { ptr, i64, i64 } %40, i64 %append.newLen57, 1, !dbg !3042
  %42 = insertvalue { ptr, i64, i64 } %41, i64 %append.newCap58, 2, !dbg !3042
    #dbg_value({ ptr, i64, i64 } %42, !2995, !DIExpression(), !3043)
  br label %switch.done, !dbg !3004

switch.next4:                                     ; preds = %switch.next
  %43 = icmp eq i32 %r, 12, !dbg !3044
  br i1 %43, label %switch.body5, label %switch.next6, !dbg !3004

switch.body5:                                     ; preds = %switch.next4
    #dbg_value({ ptr, i64, i64 } %2, !2995, !DIExpression(), !3045)
  %append.srcBuf59 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3046
  %append.srcLen60 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3046
  %append.srcCap61 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3046
  %append.new62 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf59, ptr @"internal/reflectlite$string.25", i64 %append.srcLen60, i64 %append.srcCap61, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3046
  %append.newPtr63 = extractvalue { ptr, i64, i64 } %append.new62, 0, !dbg !3046
  %append.newLen64 = extractvalue { ptr, i64, i64 } %append.new62, 1, !dbg !3046
  %append.newCap65 = extractvalue { ptr, i64, i64 } %append.new62, 2, !dbg !3046
  %44 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr63, 0, !dbg !3046
  %45 = insertvalue { ptr, i64, i64 } %44, i64 %append.newLen64, 1, !dbg !3046
  %46 = insertvalue { ptr, i64, i64 } %45, i64 %append.newCap65, 2, !dbg !3046
    #dbg_value({ ptr, i64, i64 } %46, !2995, !DIExpression(), !3047)
  br label %switch.done, !dbg !3004

switch.next6:                                     ; preds = %switch.next4
  %47 = icmp eq i32 %r, 10, !dbg !3048
  br i1 %47, label %switch.body7, label %switch.next8, !dbg !3004

switch.body7:                                     ; preds = %switch.next6
    #dbg_value({ ptr, i64, i64 } %2, !2995, !DIExpression(), !3049)
  %append.srcBuf66 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3050
  %append.srcLen67 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3050
  %append.srcCap68 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3050
  %append.new69 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf66, ptr @"internal/reflectlite$string.26", i64 %append.srcLen67, i64 %append.srcCap68, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3050
  %append.newPtr70 = extractvalue { ptr, i64, i64 } %append.new69, 0, !dbg !3050
  %append.newLen71 = extractvalue { ptr, i64, i64 } %append.new69, 1, !dbg !3050
  %append.newCap72 = extractvalue { ptr, i64, i64 } %append.new69, 2, !dbg !3050
  %48 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr70, 0, !dbg !3050
  %49 = insertvalue { ptr, i64, i64 } %48, i64 %append.newLen71, 1, !dbg !3050
  %50 = insertvalue { ptr, i64, i64 } %49, i64 %append.newCap72, 2, !dbg !3050
    #dbg_value({ ptr, i64, i64 } %50, !2995, !DIExpression(), !3051)
  br label %switch.done, !dbg !3004

switch.next8:                                     ; preds = %switch.next6
  %51 = icmp eq i32 %r, 13, !dbg !3052
  br i1 %51, label %switch.body9, label %switch.next10, !dbg !3004

switch.body9:                                     ; preds = %switch.next8
    #dbg_value({ ptr, i64, i64 } %2, !2995, !DIExpression(), !3053)
  %append.srcBuf73 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3054
  %append.srcLen74 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3054
  %append.srcCap75 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3054
  %append.new76 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf73, ptr @"internal/reflectlite$string.27", i64 %append.srcLen74, i64 %append.srcCap75, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3054
  %append.newPtr77 = extractvalue { ptr, i64, i64 } %append.new76, 0, !dbg !3054
  %append.newLen78 = extractvalue { ptr, i64, i64 } %append.new76, 1, !dbg !3054
  %append.newCap79 = extractvalue { ptr, i64, i64 } %append.new76, 2, !dbg !3054
  %52 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr77, 0, !dbg !3054
  %53 = insertvalue { ptr, i64, i64 } %52, i64 %append.newLen78, 1, !dbg !3054
  %54 = insertvalue { ptr, i64, i64 } %53, i64 %append.newCap79, 2, !dbg !3054
    #dbg_value({ ptr, i64, i64 } %54, !2995, !DIExpression(), !3055)
  br label %switch.done, !dbg !3004

switch.next10:                                    ; preds = %switch.next8
  %55 = icmp eq i32 %r, 9, !dbg !3056
  br i1 %55, label %switch.body11, label %switch.next12, !dbg !3004

switch.body11:                                    ; preds = %switch.next10
    #dbg_value({ ptr, i64, i64 } %2, !2995, !DIExpression(), !3057)
  %append.srcBuf80 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3058
  %append.srcLen81 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3058
  %append.srcCap82 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3058
  %append.new83 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf80, ptr @"internal/reflectlite$string.28", i64 %append.srcLen81, i64 %append.srcCap82, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3058
  %append.newPtr84 = extractvalue { ptr, i64, i64 } %append.new83, 0, !dbg !3058
  %append.newLen85 = extractvalue { ptr, i64, i64 } %append.new83, 1, !dbg !3058
  %append.newCap86 = extractvalue { ptr, i64, i64 } %append.new83, 2, !dbg !3058
  %56 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr84, 0, !dbg !3058
  %57 = insertvalue { ptr, i64, i64 } %56, i64 %append.newLen85, 1, !dbg !3058
  %58 = insertvalue { ptr, i64, i64 } %57, i64 %append.newCap86, 2, !dbg !3058
    #dbg_value({ ptr, i64, i64 } %58, !2995, !DIExpression(), !3059)
  br label %switch.done, !dbg !3004

switch.next12:                                    ; preds = %switch.next10
  %59 = icmp eq i32 %r, 11, !dbg !3060
  br i1 %59, label %switch.body13, label %switch.next14, !dbg !3004

switch.body13:                                    ; preds = %switch.next12
    #dbg_value({ ptr, i64, i64 } %2, !2995, !DIExpression(), !3061)
  %append.srcBuf87 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3062
  %append.srcLen88 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3062
  %append.srcCap89 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3062
  %append.new90 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf87, ptr @"internal/reflectlite$string.29", i64 %append.srcLen88, i64 %append.srcCap89, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3062
  %append.newPtr91 = extractvalue { ptr, i64, i64 } %append.new90, 0, !dbg !3062
  %append.newLen92 = extractvalue { ptr, i64, i64 } %append.new90, 1, !dbg !3062
  %append.newCap93 = extractvalue { ptr, i64, i64 } %append.new90, 2, !dbg !3062
  %60 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr91, 0, !dbg !3062
  %61 = insertvalue { ptr, i64, i64 } %60, i64 %append.newLen92, 1, !dbg !3062
  %62 = insertvalue { ptr, i64, i64 } %61, i64 %append.newCap93, 2, !dbg !3062
    #dbg_value({ ptr, i64, i64 } %62, !2995, !DIExpression(), !3063)
  br label %switch.done, !dbg !3004

switch.next14:                                    ; preds = %switch.next12
    #dbg_value(i32 %r, !2996, !DIExpression(), !3064)
  %63 = icmp slt i32 %r, 32, !dbg !3065
  br i1 %63, label %binop.done, label %binop.rhs, !dbg !3004

binop.done:                                       ; preds = %binop.rhs, %switch.next14
  %64 = phi i1 [ true, %switch.next14 ], [ %140, %binop.rhs ], !dbg !3066
  br i1 %64, label %switch.body15, label %switch.next16, !dbg !3004

switch.body15:                                    ; preds = %binop.done
    #dbg_value({ ptr, i64, i64 } %2, !2995, !DIExpression(), !3067)
  %append.srcBuf94 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3068
  %append.srcLen95 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3068
  %append.srcCap96 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3068
  %append.new97 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf94, ptr @"internal/reflectlite$string.30", i64 %append.srcLen95, i64 %append.srcCap96, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3068
  %append.newPtr98 = extractvalue { ptr, i64, i64 } %append.new97, 0, !dbg !3068
  %append.newLen99 = extractvalue { ptr, i64, i64 } %append.new97, 1, !dbg !3068
  %append.newCap100 = extractvalue { ptr, i64, i64 } %append.new97, 2, !dbg !3068
  %65 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr98, 0, !dbg !3068
  %66 = insertvalue { ptr, i64, i64 } %65, i64 %append.newLen99, 1, !dbg !3068
  %67 = insertvalue { ptr, i64, i64 } %66, i64 %append.newCap100, 2, !dbg !3068
    #dbg_value({ ptr, i64, i64 } %67, !2995, !DIExpression(), !3069)
    #dbg_value({ ptr, i64, i64 } %67, !2995, !DIExpression(), !3070)
    #dbg_value(i32 %r, !2996, !DIExpression(), !3071)
  %68 = trunc i32 %r to i8, !dbg !3072
  %69 = lshr i8 %68, 4, !dbg !3073
  %shift.result = select i1 false, i8 0, i8 %69, !dbg !3073
  %70 = zext i8 %shift.result to i64, !dbg !3074
  %71 = icmp uge i64 %70, 15, !dbg !3074
  br i1 %71, label %lookup.throw, label %lookup.next, !dbg !3074

lookup.next:                                      ; preds = %switch.body15
  %72 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.31", i64 %70, !dbg !3074
  %73 = load i8, ptr %72, align 1, !dbg !3074
  %varargs101 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3075
  %74 = getelementptr inbounds [1 x i8], ptr %varargs101, i32 0, i64 0, !dbg !3075
  store i8 %73, ptr %74, align 1, !dbg !3074
  %slice.ptr102 = getelementptr inbounds [1 x i8], ptr %varargs101, i32 0, i64 0, !dbg !3075
  %75 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr102, 0, !dbg !3075
  %76 = insertvalue { ptr, i64, i64 } %75, i64 1, 1, !dbg !3075
  %77 = insertvalue { ptr, i64, i64 } %76, i64 1, 2, !dbg !3075
  %append.srcBuf103 = extractvalue { ptr, i64, i64 } %67, 0, !dbg !3076
  %append.srcLen104 = extractvalue { ptr, i64, i64 } %67, 1, !dbg !3076
  %append.srcCap105 = extractvalue { ptr, i64, i64 } %67, 2, !dbg !3076
  %append.elemsBuf106 = extractvalue { ptr, i64, i64 } %77, 0, !dbg !3076
  %append.elemsLen107 = extractvalue { ptr, i64, i64 } %77, 1, !dbg !3076
  %append.new108 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf103, ptr %append.elemsBuf106, i64 %append.srcLen104, i64 %append.srcCap105, i64 %append.elemsLen107, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3076
  %append.newPtr109 = extractvalue { ptr, i64, i64 } %append.new108, 0, !dbg !3076
  %append.newLen110 = extractvalue { ptr, i64, i64 } %append.new108, 1, !dbg !3076
  %append.newCap111 = extractvalue { ptr, i64, i64 } %append.new108, 2, !dbg !3076
  %78 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr109, 0, !dbg !3076
  %79 = insertvalue { ptr, i64, i64 } %78, i64 %append.newLen110, 1, !dbg !3076
  %80 = insertvalue { ptr, i64, i64 } %79, i64 %append.newCap111, 2, !dbg !3076
    #dbg_value({ ptr, i64, i64 } %80, !2995, !DIExpression(), !3077)
    #dbg_value({ ptr, i64, i64 } %80, !2995, !DIExpression(), !3078)
    #dbg_value(i32 %r, !2996, !DIExpression(), !3079)
  %81 = trunc i32 %r to i8, !dbg !3080
  %82 = and i8 %81, 15, !dbg !3081
  %83 = zext i8 %82 to i64, !dbg !3082
  %84 = icmp uge i64 %83, 15, !dbg !3082
  br i1 %84, label %lookup.throw112, label %lookup.next113, !dbg !3082

lookup.next113:                                   ; preds = %lookup.next
  %85 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.32", i64 %83, !dbg !3082
  %86 = load i8, ptr %85, align 1, !dbg !3082
  %varargs114 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3083
  %87 = getelementptr inbounds [1 x i8], ptr %varargs114, i32 0, i64 0, !dbg !3083
  store i8 %86, ptr %87, align 1, !dbg !3082
  %slice.ptr115 = getelementptr inbounds [1 x i8], ptr %varargs114, i32 0, i64 0, !dbg !3083
  %88 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr115, 0, !dbg !3083
  %89 = insertvalue { ptr, i64, i64 } %88, i64 1, 1, !dbg !3083
  %90 = insertvalue { ptr, i64, i64 } %89, i64 1, 2, !dbg !3083
  %append.srcBuf116 = extractvalue { ptr, i64, i64 } %80, 0, !dbg !3084
  %append.srcLen117 = extractvalue { ptr, i64, i64 } %80, 1, !dbg !3084
  %append.srcCap118 = extractvalue { ptr, i64, i64 } %80, 2, !dbg !3084
  %append.elemsBuf119 = extractvalue { ptr, i64, i64 } %90, 0, !dbg !3084
  %append.elemsLen120 = extractvalue { ptr, i64, i64 } %90, 1, !dbg !3084
  %append.new121 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf116, ptr %append.elemsBuf119, i64 %append.srcLen117, i64 %append.srcCap118, i64 %append.elemsLen120, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3084
  %append.newPtr122 = extractvalue { ptr, i64, i64 } %append.new121, 0, !dbg !3084
  %append.newLen123 = extractvalue { ptr, i64, i64 } %append.new121, 1, !dbg !3084
  %append.newCap124 = extractvalue { ptr, i64, i64 } %append.new121, 2, !dbg !3084
  %91 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr122, 0, !dbg !3084
  %92 = insertvalue { ptr, i64, i64 } %91, i64 %append.newLen123, 1, !dbg !3084
  %93 = insertvalue { ptr, i64, i64 } %92, i64 %append.newCap124, 2, !dbg !3084
    #dbg_value({ ptr, i64, i64 } %93, !2995, !DIExpression(), !3085)
  br label %switch.done, !dbg !3004

switch.next16:                                    ; preds = %binop.done
    #dbg_value(i32 %r, !2996, !DIExpression(), !3086)
  %94 = call i1 @"unicode/utf8.ValidRune"(i32 %r, ptr undef), !dbg !3087
  %95 = xor i1 %94, true, !dbg !3088
  br i1 %95, label %switch.body17, label %switch.next19, !dbg !3004

switch.body17:                                    ; preds = %switch.next16
    #dbg_value(i32 65533, !2996, !DIExpression(), !3089)
  br label %switch.body18, !dbg !3004

switch.body18:                                    ; preds = %switch.next19, %switch.body17
  %96 = phi i32 [ 65533, %switch.body17 ], [ %r, %switch.next19 ], !dbg !3090
    #dbg_value({ ptr, i64, i64 } %2, !2995, !DIExpression(), !3091)
  %append.srcBuf125 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3092
  %append.srcLen126 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3092
  %append.srcCap127 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3092
  %append.new128 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf125, ptr @"internal/reflectlite$string.33", i64 %append.srcLen126, i64 %append.srcCap127, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3092
  %append.newPtr129 = extractvalue { ptr, i64, i64 } %append.new128, 0, !dbg !3092
  %append.newLen130 = extractvalue { ptr, i64, i64 } %append.new128, 1, !dbg !3092
  %append.newCap131 = extractvalue { ptr, i64, i64 } %append.new128, 2, !dbg !3092
  %97 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr129, 0, !dbg !3092
  %98 = insertvalue { ptr, i64, i64 } %97, i64 %append.newLen130, 1, !dbg !3092
  %99 = insertvalue { ptr, i64, i64 } %98, i64 %append.newCap131, 2, !dbg !3092
    #dbg_value({ ptr, i64, i64 } %99, !2995, !DIExpression(), !3093)
    #dbg_value(i64 12, !2998, !DIExpression(), !3094)
  br label %for.loop, !dbg !3004

for.loop:                                         ; preds = %lookup.next133, %switch.body18
  %100 = phi { ptr, i64, i64 } [ %99, %switch.body18 ], [ %116, %lookup.next133 ], !dbg !3037
  %101 = phi i64 [ 12, %switch.body18 ], [ %117, %lookup.next133 ], !dbg !3094
    #dbg_value(i64 %101, !2998, !DIExpression(), !3095)
  %102 = icmp sge i64 %101, 0, !dbg !3096
  br i1 %102, label %for.body, label %switch.done, !dbg !3004

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %100, !2995, !DIExpression(), !3097)
    #dbg_value(i32 %96, !2996, !DIExpression(), !3098)
    #dbg_value(i64 %101, !2998, !DIExpression(), !3099)
  %shift.overflow = icmp uge i64 %101, 32, !dbg !3100
  %103 = trunc i64 %101 to i32, !dbg !3100
  %shift.offset = select i1 %shift.overflow, i32 31, i32 %103, !dbg !3100
  %104 = ashr i32 %96, %shift.offset, !dbg !3100
  %105 = and i32 %104, 15, !dbg !3101
  %106 = sext i32 %105 to i64, !dbg !3102
  %107 = icmp uge i64 %106, 15, !dbg !3102
  br i1 %107, label %lookup.throw132, label %lookup.next133, !dbg !3102

lookup.next133:                                   ; preds = %for.body
  %108 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.34", i64 %106, !dbg !3102
  %109 = load i8, ptr %108, align 1, !dbg !3102
  %varargs134 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3103
  %110 = getelementptr inbounds [1 x i8], ptr %varargs134, i32 0, i64 0, !dbg !3103
  store i8 %109, ptr %110, align 1, !dbg !3102
  %slice.ptr135 = getelementptr inbounds [1 x i8], ptr %varargs134, i32 0, i64 0, !dbg !3103
  %111 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr135, 0, !dbg !3103
  %112 = insertvalue { ptr, i64, i64 } %111, i64 1, 1, !dbg !3103
  %113 = insertvalue { ptr, i64, i64 } %112, i64 1, 2, !dbg !3103
  %append.srcBuf136 = extractvalue { ptr, i64, i64 } %100, 0, !dbg !3104
  %append.srcLen137 = extractvalue { ptr, i64, i64 } %100, 1, !dbg !3104
  %append.srcCap138 = extractvalue { ptr, i64, i64 } %100, 2, !dbg !3104
  %append.elemsBuf139 = extractvalue { ptr, i64, i64 } %113, 0, !dbg !3104
  %append.elemsLen140 = extractvalue { ptr, i64, i64 } %113, 1, !dbg !3104
  %append.new141 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf136, ptr %append.elemsBuf139, i64 %append.srcLen137, i64 %append.srcCap138, i64 %append.elemsLen140, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3104
  %append.newPtr142 = extractvalue { ptr, i64, i64 } %append.new141, 0, !dbg !3104
  %append.newLen143 = extractvalue { ptr, i64, i64 } %append.new141, 1, !dbg !3104
  %append.newCap144 = extractvalue { ptr, i64, i64 } %append.new141, 2, !dbg !3104
  %114 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr142, 0, !dbg !3104
  %115 = insertvalue { ptr, i64, i64 } %114, i64 %append.newLen143, 1, !dbg !3104
  %116 = insertvalue { ptr, i64, i64 } %115, i64 %append.newCap144, 2, !dbg !3104
    #dbg_value({ ptr, i64, i64 } %116, !2995, !DIExpression(), !3105)
  %117 = sub i64 %101, 4, !dbg !3106
    #dbg_value(i64 %117, !2998, !DIExpression(), !3106)
  br label %for.loop, !dbg !3004

switch.next19:                                    ; preds = %switch.next16
    #dbg_value(i32 %r, !2996, !DIExpression(), !3107)
  %118 = icmp slt i32 %r, 65536, !dbg !3108
  br i1 %118, label %switch.body18, label %switch.next20, !dbg !3004

switch.next20:                                    ; preds = %switch.next19
    #dbg_value({ ptr, i64, i64 } %2, !2995, !DIExpression(), !3109)
  %append.srcBuf145 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3110
  %append.srcLen146 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3110
  %append.srcCap147 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3110
  %append.new148 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf145, ptr @"internal/reflectlite$string.35", i64 %append.srcLen146, i64 %append.srcCap147, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3110
  %append.newPtr149 = extractvalue { ptr, i64, i64 } %append.new148, 0, !dbg !3110
  %append.newLen150 = extractvalue { ptr, i64, i64 } %append.new148, 1, !dbg !3110
  %append.newCap151 = extractvalue { ptr, i64, i64 } %append.new148, 2, !dbg !3110
  %119 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr149, 0, !dbg !3110
  %120 = insertvalue { ptr, i64, i64 } %119, i64 %append.newLen150, 1, !dbg !3110
  %121 = insertvalue { ptr, i64, i64 } %120, i64 %append.newCap151, 2, !dbg !3110
    #dbg_value({ ptr, i64, i64 } %121, !2995, !DIExpression(), !3111)
    #dbg_value(i64 28, !2999, !DIExpression(), !3112)
  br label %for.loop21, !dbg !3004

for.loop21:                                       ; preds = %lookup.next155, %switch.next20
  %122 = phi { ptr, i64, i64 } [ %121, %switch.next20 ], [ %138, %lookup.next155 ], !dbg !3037
  %123 = phi i64 [ 28, %switch.next20 ], [ %139, %lookup.next155 ], !dbg !3112
    #dbg_value(i64 %123, !2999, !DIExpression(), !3113)
  %124 = icmp sge i64 %123, 0, !dbg !3114
  br i1 %124, label %for.body22, label %switch.done, !dbg !3004

for.body22:                                       ; preds = %for.loop21
    #dbg_value({ ptr, i64, i64 } %122, !2995, !DIExpression(), !3115)
    #dbg_value(i32 %r, !2996, !DIExpression(), !3116)
    #dbg_value(i64 %123, !2999, !DIExpression(), !3117)
  %shift.overflow152 = icmp uge i64 %123, 32, !dbg !3118
  %125 = trunc i64 %123 to i32, !dbg !3118
  %shift.offset153 = select i1 %shift.overflow152, i32 31, i32 %125, !dbg !3118
  %126 = ashr i32 %r, %shift.offset153, !dbg !3118
  %127 = and i32 %126, 15, !dbg !3119
  %128 = sext i32 %127 to i64, !dbg !3120
  %129 = icmp uge i64 %128, 15, !dbg !3120
  br i1 %129, label %lookup.throw154, label %lookup.next155, !dbg !3120

lookup.next155:                                   ; preds = %for.body22
  %130 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.36", i64 %128, !dbg !3120
  %131 = load i8, ptr %130, align 1, !dbg !3120
  %varargs156 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3121
  %132 = getelementptr inbounds [1 x i8], ptr %varargs156, i32 0, i64 0, !dbg !3121
  store i8 %131, ptr %132, align 1, !dbg !3120
  %slice.ptr157 = getelementptr inbounds [1 x i8], ptr %varargs156, i32 0, i64 0, !dbg !3121
  %133 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr157, 0, !dbg !3121
  %134 = insertvalue { ptr, i64, i64 } %133, i64 1, 1, !dbg !3121
  %135 = insertvalue { ptr, i64, i64 } %134, i64 1, 2, !dbg !3121
  %append.srcBuf158 = extractvalue { ptr, i64, i64 } %122, 0, !dbg !3122
  %append.srcLen159 = extractvalue { ptr, i64, i64 } %122, 1, !dbg !3122
  %append.srcCap160 = extractvalue { ptr, i64, i64 } %122, 2, !dbg !3122
  %append.elemsBuf161 = extractvalue { ptr, i64, i64 } %135, 0, !dbg !3122
  %append.elemsLen162 = extractvalue { ptr, i64, i64 } %135, 1, !dbg !3122
  %append.new163 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf158, ptr %append.elemsBuf161, i64 %append.srcLen159, i64 %append.srcCap160, i64 %append.elemsLen162, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3122
  %append.newPtr164 = extractvalue { ptr, i64, i64 } %append.new163, 0, !dbg !3122
  %append.newLen165 = extractvalue { ptr, i64, i64 } %append.new163, 1, !dbg !3122
  %append.newCap166 = extractvalue { ptr, i64, i64 } %append.new163, 2, !dbg !3122
  %136 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr164, 0, !dbg !3122
  %137 = insertvalue { ptr, i64, i64 } %136, i64 %append.newLen165, 1, !dbg !3122
  %138 = insertvalue { ptr, i64, i64 } %137, i64 %append.newCap166, 2, !dbg !3122
    #dbg_value({ ptr, i64, i64 } %138, !2995, !DIExpression(), !3123)
  %139 = sub i64 %123, 4, !dbg !3124
    #dbg_value(i64 %139, !2999, !DIExpression(), !3124)
  br label %for.loop21, !dbg !3004

binop.rhs:                                        ; preds = %switch.next14
    #dbg_value(i32 %r, !2996, !DIExpression(), !3125)
  %140 = icmp eq i32 %r, 127, !dbg !3126
  br label %binop.done, !dbg !3004

slice.throw:                                      ; preds = %if.then1
  call void @runtime.slicePanic(ptr undef), !dbg !3027
  unreachable, !dbg !3027

lookup.throw:                                     ; preds = %switch.body15
  call void @runtime.lookupPanic(ptr undef), !dbg !3074
  unreachable, !dbg !3074

lookup.throw112:                                  ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !3082
  unreachable, !dbg !3082

lookup.throw132:                                  ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !3102
  unreachable, !dbg !3102

lookup.throw154:                                  ; preds = %for.body22
  call void @runtime.lookupPanic(ptr undef), !dbg !3120
  unreachable, !dbg !3120
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"internal/reflectlite.isPrint"(i32 %r, ptr %context) unnamed_addr #1 !dbg !3127 {
entry:
    #dbg_value(i32 %r, !3129, !DIExpression(), !3130)
    #dbg_value(i32 %r, !3129, !DIExpression(), !3131)
  %0 = icmp sle i32 %r, 255, !dbg !3132
  br i1 %0, label %if.then, label %if.done5, !dbg !3133

if.then:                                          ; preds = %entry
    #dbg_value(i32 %r, !3129, !DIExpression(), !3134)
  %1 = icmp sle i32 32, %r, !dbg !3135
  br i1 %1, label %cond.true, label %if.done, !dbg !3133

cond.true:                                        ; preds = %if.then
    #dbg_value(i32 %r, !3129, !DIExpression(), !3136)
  %2 = icmp sle i32 %r, 126, !dbg !3137
  br i1 %2, label %if.then1, label %if.done, !dbg !3133

if.then1:                                         ; preds = %cond.true
  ret i1 true, !dbg !3138

if.done:                                          ; preds = %cond.true, %if.then
    #dbg_value(i32 %r, !3129, !DIExpression(), !3139)
  %3 = icmp sle i32 161, %r, !dbg !3140
  br i1 %3, label %cond.true2, label %if.done4, !dbg !3133

cond.true2:                                       ; preds = %if.done
    #dbg_value(i32 %r, !3129, !DIExpression(), !3141)
  %4 = icmp sle i32 %r, 255, !dbg !3142
  br i1 %4, label %if.then3, label %if.done4, !dbg !3133

if.then3:                                         ; preds = %cond.true2
    #dbg_value(i32 %r, !3129, !DIExpression(), !3143)
  %5 = icmp ne i32 %r, 173, !dbg !3144
  ret i1 %5, !dbg !3145

if.done4:                                         ; preds = %cond.true2, %if.done
  ret i1 false, !dbg !3146

if.done5:                                         ; preds = %entry
  ret i1 false, !dbg !3147
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
define internal %runtime._string @"(internal/reflectlite.Kind).String$invoke"(ptr %0, ptr %1) unnamed_addr #1 !dbg !3148 {
entry:
  %unpack.int = ptrtoint ptr %0 to i8, !dbg !3149
  %ret = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %unpack.int, ptr %1), !dbg !3149
  ret %runtime._string %ret, !dbg !3149
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.ValueError).Error"(ptr dereferenceable_or_null(24) %e, ptr %context) unnamed_addr #1 !dbg !3150 {
entry:
    #dbg_value(ptr %e, !3159, !DIExpression(), !3160)
    #dbg_value(ptr %e, !3159, !DIExpression(), !3161)
  %0 = icmp eq ptr %e, null, !dbg !3162
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3162

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 1, !dbg !3162
  %2 = icmp eq ptr %1, null, !dbg !3162
  br i1 %2, label %deref.throw, label %deref.next, !dbg !3162

deref.next:                                       ; preds = %gep.next
  %3 = load i8, ptr %1, align 1, !dbg !3162
  %4 = icmp eq i8 %3, 0, !dbg !3163
  br i1 %4, label %if.then, label %if.done, !dbg !3164

if.then:                                          ; preds = %deref.next
    #dbg_value(ptr %e, !3159, !DIExpression(), !3165)
  %5 = icmp eq ptr %e, null, !dbg !3166
  br i1 %5, label %gep.throw1, label %gep.next2, !dbg !3166

gep.next2:                                        ; preds = %if.then
  %6 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 0, !dbg !3166
  %7 = icmp eq ptr %6, null, !dbg !3166
  br i1 %7, label %deref.throw3, label %deref.next4, !dbg !3166

deref.next4:                                      ; preds = %gep.next2
  %8 = load %runtime._string, ptr %6, align 8, !dbg !3166
  %9 = extractvalue %runtime._string %8, 0, !dbg !3167
  %10 = extractvalue %runtime._string %8, 1, !dbg !3167
  %11 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.229", i64 17, ptr %9, i64 %10, ptr undef), !dbg !3167
  %12 = extractvalue %runtime._string %11, 0, !dbg !3168
  %13 = extractvalue %runtime._string %11, 1, !dbg !3168
  %14 = call %runtime._string @runtime.stringConcat(ptr %12, i64 %13, ptr @"internal/reflectlite$string.230", i64 14, ptr undef), !dbg !3168
  ret %runtime._string %14, !dbg !3169

if.done:                                          ; preds = %deref.next
    #dbg_value(ptr %e, !3159, !DIExpression(), !3170)
  %15 = icmp eq ptr %e, null, !dbg !3171
  br i1 %15, label %gep.throw5, label %gep.next6, !dbg !3171

gep.next6:                                        ; preds = %if.done
  %16 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 0, !dbg !3171
  %17 = icmp eq ptr %16, null, !dbg !3171
  br i1 %17, label %deref.throw7, label %deref.next8, !dbg !3171

deref.next8:                                      ; preds = %gep.next6
  %18 = load %runtime._string, ptr %16, align 8, !dbg !3171
  %19 = extractvalue %runtime._string %18, 0, !dbg !3172
  %20 = extractvalue %runtime._string %18, 1, !dbg !3172
  %21 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.231", i64 17, ptr %19, i64 %20, ptr undef), !dbg !3172
  %22 = extractvalue %runtime._string %21, 0, !dbg !3173
  %23 = extractvalue %runtime._string %21, 1, !dbg !3173
  %24 = call %runtime._string @runtime.stringConcat(ptr %22, i64 %23, ptr @"internal/reflectlite$string.232", i64 4, ptr undef), !dbg !3173
    #dbg_value(ptr %e, !3159, !DIExpression(), !3174)
  %25 = icmp eq ptr %e, null, !dbg !3175
  br i1 %25, label %gep.throw9, label %gep.next10, !dbg !3175

gep.next10:                                       ; preds = %deref.next8
  %26 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 1, !dbg !3175
  %27 = icmp eq ptr %26, null, !dbg !3175
  br i1 %27, label %deref.throw11, label %deref.next12, !dbg !3175

deref.next12:                                     ; preds = %gep.next10
  %28 = load i8, ptr %26, align 1, !dbg !3175
  %29 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %28, ptr undef), !dbg !3176
  %30 = extractvalue %runtime._string %24, 0, !dbg !3177
  %31 = extractvalue %runtime._string %24, 1, !dbg !3177
  %32 = extractvalue %runtime._string %29, 0, !dbg !3177
  %33 = extractvalue %runtime._string %29, 1, !dbg !3177
  %34 = call %runtime._string @runtime.stringConcat(ptr %30, i64 %31, ptr %32, i64 %33, ptr undef), !dbg !3177
  %35 = extractvalue %runtime._string %34, 0, !dbg !3178
  %36 = extractvalue %runtime._string %34, 1, !dbg !3178
  %37 = call %runtime._string @runtime.stringConcat(ptr %35, i64 %36, ptr @"internal/reflectlite$string.233", i64 6, ptr undef), !dbg !3178
  ret %runtime._string %37, !dbg !3179

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3162
  unreachable, !dbg !3162

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3162
  unreachable, !dbg !3162

gep.throw1:                                       ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3166
  unreachable, !dbg !3166

deref.throw3:                                     ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3166
  unreachable, !dbg !3166

gep.throw5:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3171
  unreachable, !dbg !3171

deref.throw7:                                     ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3171
  unreachable, !dbg !3171

gep.throw9:                                       ; preds = %deref.next8
  call void @runtime.nilPanic(ptr undef), !dbg !3175
  unreachable, !dbg !3175

deref.throw11:                                    ; preds = %gep.next10
  call void @runtime.nilPanic(ptr undef), !dbg !3175
  unreachable, !dbg !3175
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr %context) unnamed_addr #1 !dbg !3180 {
entry:
  ret %runtime._string { ptr @"internal/reflectlite$string.17", i64 14 }, !dbg !3185
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.badSyntax).Error"(ptr %arg0, ptr %context) unnamed_addr #1 {
entry:
  %0 = call %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr undef)
  ret %runtime._string %0
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.badSyntax).Error$invoke"(ptr %0, ptr %1) unnamed_addr #1 !dbg !3186 {
entry:
  %ret = call %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr %1), !dbg !3187
  ret %runtime._string %ret, !dbg !3187
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"runtime/interrupt.In"(ptr %context) #1 !dbg !3188 {
entry:
  ret i1 false, !dbg !3191
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Mutex).Lock"(ptr dereferenceable_or_null(4) %m, ptr %context) #1 !dbg !3192 {
entry:
    #dbg_value(ptr %m, !3197, !DIExpression(), !3198)
    #dbg_value(ptr %m, !3197, !DIExpression(), !3199)
  %0 = icmp eq ptr %m, null, !dbg !3200
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3200

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3200
  %2 = icmp eq ptr %1, null, !dbg !3199
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3199

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3199
  %4 = call i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr %3, i32 0, i32 1, ptr undef), !dbg !3201
  br i1 %4, label %if.then, label %for.loop, !dbg !3202

if.then:                                          ; preds = %gep.next2
  ret void, !dbg !3203

for.loop:                                         ; preds = %gep.next8, %gep.next2
    #dbg_value(ptr %m, !3197, !DIExpression(), !3204)
  %5 = icmp eq ptr %m, null, !dbg !3205
  br i1 %5, label %gep.throw3, label %gep.next4, !dbg !3205

gep.next4:                                        ; preds = %for.loop
  %6 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3205
  %7 = icmp eq ptr %6, null, !dbg !3204
  br i1 %7, label %gep.throw5, label %gep.next6, !dbg !3204

gep.next6:                                        ; preds = %gep.next4
  %8 = getelementptr inbounds %"internal/futex.Futex", ptr %6, i32 0, i32 0, !dbg !3204
  %9 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr %8, i32 2, ptr undef), !dbg !3206
  %10 = icmp ne i32 %9, 0, !dbg !3207
  br i1 %10, label %for.body, label %for.done, !dbg !3202

for.body:                                         ; preds = %gep.next6
    #dbg_value(ptr %m, !3197, !DIExpression(), !3208)
  %11 = icmp eq ptr %m, null, !dbg !3209
  br i1 %11, label %gep.throw7, label %gep.next8, !dbg !3209

gep.next8:                                        ; preds = %for.body
  %12 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3209
  %13 = call i1 @"(*internal/futex.Futex).Wait"(ptr %12, i32 2, ptr undef), !dbg !3210
  br label %for.loop, !dbg !3202

for.done:                                         ; preds = %gep.next6
  ret void, !dbg !3211

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3200
  unreachable, !dbg !3200

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3199
  unreachable, !dbg !3199

gep.throw3:                                       ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !3205
  unreachable, !dbg !3205

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3204
  unreachable, !dbg !3204

gep.throw7:                                       ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3209
  unreachable, !dbg !3209
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Mutex).Unlock"(ptr dereferenceable_or_null(4) %m, ptr %context) #1 !dbg !3212 {
entry:
    #dbg_value(ptr %m, !3214, !DIExpression(), !3216)
    #dbg_value(ptr %m, !3214, !DIExpression(), !3217)
  %0 = icmp eq ptr %m, null, !dbg !3218
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3218

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3218
  %2 = icmp eq ptr %1, null, !dbg !3217
  br i1 %2, label %gep.throw2, label %gep.next3, !dbg !3217

gep.next3:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3217
  %4 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr %3, i32 0, ptr undef), !dbg !3219
    #dbg_value(i32 %4, !3215, !DIExpression(), !3220)
    #dbg_value(i32 %4, !3215, !DIExpression(), !3221)
  %5 = icmp eq i32 %4, 0, !dbg !3222
  br i1 %5, label %if.then, label %if.else, !dbg !3223

if.then:                                          ; preds = %gep.next3
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"internal/task$pack", ptr undef), !dbg !3224
  unreachable, !dbg !3224

if.else:                                          ; preds = %gep.next3
    #dbg_value(i32 %4, !3215, !DIExpression(), !3225)
  %6 = icmp eq i32 %4, 2, !dbg !3226
  br i1 %6, label %if.then1, label %if.done, !dbg !3223

if.then1:                                         ; preds = %if.else
    #dbg_value(ptr %m, !3214, !DIExpression(), !3227)
  %7 = icmp eq ptr %m, null, !dbg !3228
  br i1 %7, label %gep.throw4, label %gep.next5, !dbg !3228

gep.next5:                                        ; preds = %if.then1
  %8 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3228
  call void @"(*internal/futex.Futex).Wake"(ptr %8, ptr undef), !dbg !3229
  br label %if.done, !dbg !3223

if.done:                                          ; preds = %gep.next5, %if.else
  ret void, !dbg !3230

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3218
  unreachable, !dbg !3218

gep.throw2:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3217
  unreachable, !dbg !3217

gep.throw4:                                       ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3228
  unreachable, !dbg !3228
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Semaphore).Wait"(ptr dereferenceable_or_null(4) %s, ptr %context) unnamed_addr #1 !dbg !3231 {
entry:
    #dbg_value(ptr %s, !3237, !DIExpression(), !3240)
    #dbg_value(i32 -1, !3238, !DIExpression(), !3241)
    #dbg_value(ptr %s, !3237, !DIExpression(), !3242)
  %0 = icmp eq ptr %s, null, !dbg !3243
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3243

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3243
  %2 = icmp eq ptr %1, null, !dbg !3242
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3242

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3242
    #dbg_value(i32 -1, !3238, !DIExpression(), !3244)
  %4 = call i32 @"(*sync/atomic.Uint32).Add"(ptr %3, i32 -1, ptr undef), !dbg !3245
    #dbg_value(i32 %4, !3239, !DIExpression(), !3246)
  br label %for.body, !dbg !3247

for.body:                                         ; preds = %gep.next8, %gep.next2
  %5 = phi i32 [ %4, %gep.next2 ], [ %14, %gep.next8 ], !dbg !3246
    #dbg_value(i32 %5, !3239, !DIExpression(), !3248)
  %6 = icmp sge i32 %5, 0, !dbg !3249
  br i1 %6, label %if.then, label %if.done, !dbg !3247

if.then:                                          ; preds = %for.body
  ret void, !dbg !3250

if.done:                                          ; preds = %for.body
    #dbg_value(ptr %s, !3237, !DIExpression(), !3251)
  %7 = icmp eq ptr %s, null, !dbg !3252
  br i1 %7, label %gep.throw3, label %gep.next4, !dbg !3252

gep.next4:                                        ; preds = %if.done
  %8 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3252
    #dbg_value(i32 %5, !3239, !DIExpression(), !3253)
  %9 = call i1 @"(*internal/futex.Futex).Wait"(ptr %8, i32 %5, ptr undef), !dbg !3254
    #dbg_value(ptr %s, !3237, !DIExpression(), !3255)
  %10 = icmp eq ptr %s, null, !dbg !3256
  br i1 %10, label %gep.throw5, label %gep.next6, !dbg !3256

gep.next6:                                        ; preds = %gep.next4
  %11 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3256
  %12 = icmp eq ptr %11, null, !dbg !3255
  br i1 %12, label %gep.throw7, label %gep.next8, !dbg !3255

gep.next8:                                        ; preds = %gep.next6
  %13 = getelementptr inbounds %"internal/futex.Futex", ptr %11, i32 0, i32 0, !dbg !3255
  %14 = call i32 @"(*sync/atomic.Uint32).Load"(ptr %13, ptr undef), !dbg !3257
    #dbg_value(i32 %14, !3239, !DIExpression(), !3258)
  br label %for.body, !dbg !3247

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3243
  unreachable, !dbg !3243

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3242
  unreachable, !dbg !3242

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3252
  unreachable, !dbg !3252

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3256
  unreachable, !dbg !3256

gep.throw7:                                       ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3255
  unreachable, !dbg !3255
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.Init"(i64 %sp, ptr %context) #1 !dbg !3259 {
entry:
    #dbg_value(i64 %sp, !3263, !DIExpression(), !3265)
    #dbg_value(i64 %sp, !3263, !DIExpression(), !3266)
  %0 = icmp eq ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 2), null, !dbg !3267
  br i1 %0, label %store.throw, label %store.next, !dbg !3267

store.next:                                       ; preds = %entry
  store i64 %sp, ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 2), align 8, !dbg !3267
    #dbg_value(i64 %sp, !3264, !DIExpression(), !3267)
  call void @tinygo_task_init(ptr @"internal/task.mainTask", ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 1), ptr @"internal/task.numCPU", ptr undef), !dbg !3268
  ret void, !dbg !3269

store.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3267
  unreachable, !dbg !3267
}

declare void @tinygo_task_init(ptr dereferenceable_or_null(88), ptr dereferenceable_or_null(8), ptr dereferenceable_or_null(4), ptr) #2

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"internal/task.Current"(ptr %context) #1 !dbg !3270 {
entry:
  %0 = call ptr @tinygo_task_current(), !dbg !3273
    #dbg_value(ptr %0, !3272, !DIExpression(), !3274)
    #dbg_value(ptr %0, !3272, !DIExpression(), !3275)
  %1 = icmp eq ptr %0, null, !dbg !3276
  br i1 %1, label %if.then, label %if.done, !dbg !3277

if.then:                                          ; preds = %entry
  call void @runtime.runtimePanic(ptr @"internal/task$string.7", i64 20, ptr undef), !dbg !3278
  br label %if.done, !dbg !3277

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(ptr %0, !3272, !DIExpression(), !3279)
  ret ptr %0, !dbg !3280
}

declare ptr @tinygo_task_current() #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.Pause"(ptr %context) #1 !dbg !3281 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3284
    #dbg_value(ptr %0, !3283, !DIExpression(), !3285)
  br i1 false, label %if.then, label %if.done, !dbg !3286

if.then:                                          ; preds = %entry
    #dbg_value(ptr %0, !3283, !DIExpression(), !3287)
  %1 = icmp eq ptr %0, null, !dbg !3288
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3288

gep.next:                                         ; preds = %if.then
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3288
  %3 = icmp eq ptr %2, null, !dbg !3289
  br i1 %3, label %gep.throw1, label %gep.next2, !dbg !3289

gep.next2:                                        ; preds = %gep.next
  %4 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 0, !dbg !3289
  %5 = icmp eq ptr %4, null, !dbg !3289
  br i1 %5, label %deref.throw, label %deref.next, !dbg !3289

deref.next:                                       ; preds = %gep.next2
  %6 = load i64, ptr %4, align 8, !dbg !3289
  call void @runtime.printlock(ptr undef), !dbg !3290
  call void @runtime.printstring(ptr @"internal/task$string.8", i64 12, ptr undef), !dbg !3290
  call void @runtime.printspace(ptr undef), !dbg !3290
  call void @runtime.printptr(i64 %6, ptr undef), !dbg !3290
  call void @runtime.printnl(ptr undef), !dbg !3290
  call void @runtime.printunlock(ptr undef), !dbg !3290
  br label %if.done, !dbg !3286

if.done:                                          ; preds = %deref.next, %entry
    #dbg_value(ptr %0, !3283, !DIExpression(), !3291)
  %7 = icmp eq ptr %0, null, !dbg !3292
  br i1 %7, label %gep.throw3, label %gep.next4, !dbg !3292

gep.next4:                                        ; preds = %if.done
  %8 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3292
  %9 = icmp eq ptr %8, null, !dbg !3293
  br i1 %9, label %gep.throw5, label %gep.next6, !dbg !3293

gep.next6:                                        ; preds = %gep.next4
  %10 = getelementptr inbounds %"internal/task.state", ptr %8, i32 0, i32 5, !dbg !3293
  call void @"(*internal/task.Semaphore).Wait"(ptr %10, ptr undef), !dbg !3294
  ret void, !dbg !3295

gep.throw:                                        ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3288
  unreachable, !dbg !3288

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3289
  unreachable, !dbg !3289

deref.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3289
  unreachable, !dbg !3289

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3292
  unreachable, !dbg !3292

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3293
  unreachable, !dbg !3293
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_exited(ptr nocapture dereferenceable_or_null(88) %t) #1 !dbg !3296 {
entry:
    #dbg_value(ptr %t, !3300, !DIExpression(), !3305)
  br i1 false, label %if.then, label %if.done, !dbg !3306

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !3300, !DIExpression(), !3307)
  %0 = icmp eq ptr %t, null, !dbg !3308
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3308

gep.next:                                         ; preds = %if.then
  %1 = getelementptr inbounds %"internal/task.Task", ptr %t, i32 0, i32 4, !dbg !3308
  %2 = icmp eq ptr %1, null, !dbg !3309
  br i1 %2, label %gep.throw5, label %gep.next6, !dbg !3309

gep.next6:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/task.state", ptr %1, i32 0, i32 0, !dbg !3309
  %4 = icmp eq ptr %3, null, !dbg !3309
  br i1 %4, label %deref.throw, label %deref.next, !dbg !3309

deref.next:                                       ; preds = %gep.next6
  %5 = load i64, ptr %3, align 8, !dbg !3309
  call void @runtime.printlock(ptr undef), !dbg !3310
  call void @runtime.printstring(ptr @"internal/task$string.12", i64 9, ptr undef), !dbg !3310
  call void @runtime.printspace(ptr undef), !dbg !3310
  call void @runtime.printptr(i64 %5, ptr undef), !dbg !3310
  call void @runtime.printnl(ptr undef), !dbg !3310
  call void @runtime.printunlock(ptr undef), !dbg !3310
  br label %if.done, !dbg !3306

if.done:                                          ; preds = %deref.next, %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3311
    #dbg_value(i1 false, !3301, !DIExpression(), !3312)
    #dbg_value(ptr @"internal/task.activeTasks", !3302, !DIExpression(), !3313)
  br label %for.loop, !dbg !3306

for.loop:                                         ; preds = %gep.next22, %if.done
  %6 = phi ptr [ @"internal/task.activeTasks", %if.done ], [ %25, %gep.next22 ], !dbg !3313
    #dbg_value(ptr %6, !3302, !DIExpression(), !3314)
  %7 = icmp eq ptr %6, null, !dbg !3315
  br i1 %7, label %deref.throw7, label %deref.next8, !dbg !3315

deref.next8:                                      ; preds = %for.loop
  %8 = load ptr, ptr %6, align 8, !dbg !3315
  %9 = icmp ne ptr %8, null, !dbg !3316
  br i1 %9, label %for.body, label %for.done, !dbg !3306

for.body:                                         ; preds = %deref.next8
    #dbg_value(ptr %6, !3302, !DIExpression(), !3317)
  %10 = icmp eq ptr %6, null, !dbg !3318
  br i1 %10, label %deref.throw9, label %deref.next10, !dbg !3318

deref.next10:                                     ; preds = %for.body
  %11 = load ptr, ptr %6, align 8, !dbg !3318
    #dbg_value(ptr %t, !3300, !DIExpression(), !3319)
  %12 = icmp eq ptr %11, %t, !dbg !3320
  br i1 %12, label %if.then1, label %if.done2, !dbg !3306

if.then1:                                         ; preds = %deref.next10
    #dbg_value(ptr %6, !3302, !DIExpression(), !3321)
    #dbg_value(ptr %t, !3300, !DIExpression(), !3322)
  %13 = icmp eq ptr %t, null, !dbg !3323
  br i1 %13, label %gep.throw11, label %gep.next12, !dbg !3323

gep.next12:                                       ; preds = %if.then1
  %14 = getelementptr inbounds %"internal/task.Task", ptr %t, i32 0, i32 4, !dbg !3323
  %15 = icmp eq ptr %14, null, !dbg !3324
  br i1 %15, label %gep.throw13, label %gep.next14, !dbg !3324

gep.next14:                                       ; preds = %gep.next12
  %16 = getelementptr inbounds %"internal/task.state", ptr %14, i32 0, i32 4, !dbg !3324
  %17 = icmp eq ptr %16, null, !dbg !3324
  br i1 %17, label %deref.throw15, label %deref.next16, !dbg !3324

deref.next16:                                     ; preds = %gep.next14
  %18 = load ptr, ptr %16, align 8, !dbg !3324
  %19 = icmp eq ptr %6, null, !dbg !3325
  br i1 %19, label %store.throw, label %store.next, !dbg !3325

store.next:                                       ; preds = %deref.next16
  store ptr %18, ptr %6, align 8, !dbg !3325
    #dbg_value(i1 true, !3301, !DIExpression(), !3326)
  br label %for.done, !dbg !3306

if.done2:                                         ; preds = %deref.next10
    #dbg_value(ptr %6, !3302, !DIExpression(), !3327)
  %20 = icmp eq ptr %6, null, !dbg !3328
  br i1 %20, label %deref.throw17, label %deref.next18, !dbg !3328

deref.next18:                                     ; preds = %if.done2
  %21 = load ptr, ptr %6, align 8, !dbg !3328
  %22 = icmp eq ptr %21, null, !dbg !3329
  br i1 %22, label %gep.throw19, label %gep.next20, !dbg !3329

gep.next20:                                       ; preds = %deref.next18
  %23 = getelementptr inbounds %"internal/task.Task", ptr %21, i32 0, i32 4, !dbg !3329
  %24 = icmp eq ptr %23, null, !dbg !3330
  br i1 %24, label %gep.throw21, label %gep.next22, !dbg !3330

gep.next22:                                       ; preds = %gep.next20
  %25 = getelementptr inbounds %"internal/task.state", ptr %23, i32 0, i32 4, !dbg !3330
    #dbg_value(ptr %25, !3302, !DIExpression(), !3331)
  br label %for.loop, !dbg !3306

for.done:                                         ; preds = %store.next, %deref.next8
  %26 = phi i1 [ false, %deref.next8 ], [ true, %store.next ], !dbg !3312
  %27 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3332
  %28 = sub i32 %27, 1, !dbg !3332
  store i32 %28, ptr @"internal/task.otherGoroutines", align 4, !dbg !3332
    #dbg_value(i32 %28, !3304, !DIExpression(), !3332)
  call void @"(*internal/task.Mutex).Unlock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3333
    #dbg_value(i1 %26, !3301, !DIExpression(), !3334)
  br i1 %26, label %if.done3, label %if.then4, !dbg !3306

if.done3:                                         ; preds = %if.then4, %for.done
  ret void, !dbg !3335

if.then4:                                         ; preds = %for.done
  call void @runtime.runtimePanic(ptr @"internal/task$string.13", i64 17, ptr undef), !dbg !3336
  br label %if.done3, !dbg !3306

gep.throw:                                        ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3308
  unreachable, !dbg !3308

gep.throw5:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3309
  unreachable, !dbg !3309

deref.throw:                                      ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3309
  unreachable, !dbg !3309

deref.throw7:                                     ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !3315
  unreachable, !dbg !3315

deref.throw9:                                     ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3318
  unreachable, !dbg !3318

gep.throw11:                                      ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3323
  unreachable, !dbg !3323

gep.throw13:                                      ; preds = %gep.next12
  call void @runtime.nilPanic(ptr undef), !dbg !3324
  unreachable, !dbg !3324

deref.throw15:                                    ; preds = %gep.next14
  call void @runtime.nilPanic(ptr undef), !dbg !3324
  unreachable, !dbg !3324

store.throw:                                      ; preds = %deref.next16
  call void @runtime.nilPanic(ptr undef), !dbg !3325
  unreachable, !dbg !3325

deref.throw17:                                    ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !3328
  unreachable, !dbg !3328

gep.throw19:                                      ; preds = %deref.next18
  call void @runtime.nilPanic(ptr undef), !dbg !3329
  unreachable, !dbg !3329

gep.throw21:                                      ; preds = %gep.next20
  call void @runtime.nilPanic(ptr undef), !dbg !3330
  unreachable, !dbg !3330
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.waitGroup).done"(ptr dereferenceable_or_null(4) %wg, ptr %context) unnamed_addr #1 !dbg !3337 {
entry:
    #dbg_value(ptr %wg, !3342, !DIExpression(), !3343)
    #dbg_value(ptr %wg, !3342, !DIExpression(), !3344)
  %0 = icmp eq ptr %wg, null, !dbg !3345
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3345

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3345
  %2 = icmp eq ptr %1, null, !dbg !3344
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3344

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3344
  %4 = call i32 @"(*sync/atomic.Uint32).Add"(ptr %3, i32 -1, ptr undef), !dbg !3346
  %5 = icmp eq i32 %4, 0, !dbg !3347
  br i1 %5, label %if.then, label %if.done, !dbg !3348

if.then:                                          ; preds = %gep.next2
    #dbg_value(ptr %wg, !3342, !DIExpression(), !3349)
  %6 = icmp eq ptr %wg, null, !dbg !3350
  br i1 %6, label %gep.throw3, label %gep.next4, !dbg !3350

gep.next4:                                        ; preds = %if.then
  %7 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3350
  call void @"(*internal/futex.Futex).WakeAll"(ptr %7, ptr undef), !dbg !3351
  br label %if.done, !dbg !3348

if.done:                                          ; preds = %gep.next4, %gep.next2
  ret void, !dbg !3352

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3345
  unreachable, !dbg !3345

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3344
  unreachable, !dbg !3344

gep.throw3:                                       ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3350
  unreachable, !dbg !3350
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.waitGroup).wait"(ptr dereferenceable_or_null(4) %wg, ptr %context) unnamed_addr #1 !dbg !3353 {
entry:
    #dbg_value(ptr %wg, !3355, !DIExpression(), !3357)
  br label %for.body, !dbg !3358

for.body:                                         ; preds = %gep.next4, %entry
    #dbg_value(ptr %wg, !3355, !DIExpression(), !3359)
  %0 = icmp eq ptr %wg, null, !dbg !3360
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3360

gep.next:                                         ; preds = %for.body
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3360
  %2 = icmp eq ptr %1, null, !dbg !3359
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3359

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3359
  %4 = call i32 @"(*sync/atomic.Uint32).Load"(ptr %3, ptr undef), !dbg !3361
    #dbg_value(i32 %4, !3356, !DIExpression(), !3362)
    #dbg_value(i32 %4, !3356, !DIExpression(), !3363)
  %5 = icmp eq i32 %4, 0, !dbg !3364
  br i1 %5, label %if.then, label %if.done, !dbg !3358

if.then:                                          ; preds = %gep.next2
  ret void, !dbg !3365

if.done:                                          ; preds = %gep.next2
    #dbg_value(ptr %wg, !3355, !DIExpression(), !3366)
  %6 = icmp eq ptr %wg, null, !dbg !3367
  br i1 %6, label %gep.throw3, label %gep.next4, !dbg !3367

gep.next4:                                        ; preds = %if.done
  %7 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3367
    #dbg_value(i32 %4, !3356, !DIExpression(), !3368)
  %8 = call i1 @"(*internal/futex.Futex).Wait"(ptr %7, i32 %4, ptr undef), !dbg !3369
  br label %for.body, !dbg !3358

gep.throw:                                        ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3360
  unreachable, !dbg !3360

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3359
  unreachable, !dbg !3359

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3367
  unreachable, !dbg !3367
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %n, ptr %context) unnamed_addr #1 !dbg !3370 {
entry:
    #dbg_value(i32 %n, !3374, !DIExpression(), !3376)
  %wg = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3377
  %0 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3378
  %1 = icmp eq ptr %0, null, !dbg !3379
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3379

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/futex.Futex", ptr %0, i32 0, i32 0, !dbg !3379
    #dbg_value(i32 %n, !3374, !DIExpression(), !3380)
  call void @"(*sync/atomic.Uint32).Store"(ptr %2, i32 %n, ptr undef), !dbg !3381
  %3 = load %"internal/task.Semaphore", ptr %wg, align 4, !dbg !3382
    #dbg_value(%"internal/task.Semaphore" %3, !3375, !DIExpression(), !3382)
  ret %"internal/task.Semaphore" %3, !dbg !3383

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3379
  unreachable, !dbg !3379
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.GCStopWorldAndScan"(ptr %context) #1 !dbg !3384 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3392
    #dbg_value(ptr %0, !3386, !DIExpression(), !3393)
  %1 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3394
  %2 = icmp eq i32 %1, 0, !dbg !3395
  br i1 %2, label %if.then, label %if.done2, !dbg !3396

if.then:                                          ; preds = %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3397
  call void @"(*internal/task.waitGroup).wait"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3398
  call void @"(*sync/atomic.Uint32).Store"(ptr @"internal/task.gcState", i32 1, ptr undef), !dbg !3399
  %3 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3400
    #dbg_value(i32 %3, !3387, !DIExpression(), !3400)
  %4 = call %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %3, ptr undef), !dbg !3401
  store %"internal/task.Semaphore" %4, ptr @"internal/task.scanWaitGroup", align 4, !dbg !3402
    #dbg_value(%"internal/task.Semaphore" %4, !3388, !DIExpression(), !3402)
  %5 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !3403
    #dbg_value(ptr %5, !3389, !DIExpression(), !3403)
    #dbg_value(ptr %5, !3390, !DIExpression(), !3404)
  br label %for.loop, !dbg !3396

for.loop:                                         ; preds = %deref.next15, %if.then
  %6 = phi ptr [ %5, %if.then ], [ %20, %deref.next15 ], !dbg !3404
    #dbg_value(ptr %6, !3390, !DIExpression(), !3405)
  %7 = icmp ne ptr %6, null, !dbg !3406
  br i1 %7, label %for.body, label %for.done, !dbg !3396

for.body:                                         ; preds = %for.loop
    #dbg_value(ptr %6, !3390, !DIExpression(), !3407)
    #dbg_value(ptr %0, !3386, !DIExpression(), !3408)
  %8 = icmp ne ptr %6, %0, !dbg !3409
  br i1 %8, label %if.then1, label %if.done, !dbg !3396

if.then1:                                         ; preds = %for.body
    #dbg_value(ptr %6, !3390, !DIExpression(), !3410)
  %9 = icmp eq ptr %6, null, !dbg !3411
  br i1 %9, label %gep.throw, label %gep.next, !dbg !3411

gep.next:                                         ; preds = %if.then1
  %10 = getelementptr inbounds %"internal/task.Task", ptr %6, i32 0, i32 4, !dbg !3411
  %11 = icmp eq ptr %10, null, !dbg !3412
  br i1 %11, label %gep.throw8, label %gep.next9, !dbg !3412

gep.next9:                                        ; preds = %gep.next
  %12 = getelementptr inbounds %"internal/task.state", ptr %10, i32 0, i32 1, !dbg !3412
  %13 = icmp eq ptr %12, null, !dbg !3412
  br i1 %13, label %deref.throw, label %deref.next, !dbg !3412

deref.next:                                       ; preds = %gep.next9
  %14 = load ptr, ptr %12, align 8, !dbg !3412
  call void @tinygo_task_send_gc_signal(ptr %14), !dbg !3413
  br label %if.done, !dbg !3396

if.done:                                          ; preds = %deref.next, %for.body
    #dbg_value(ptr %6, !3390, !DIExpression(), !3414)
  %15 = icmp eq ptr %6, null, !dbg !3415
  br i1 %15, label %gep.throw10, label %gep.next11, !dbg !3415

gep.next11:                                       ; preds = %if.done
  %16 = getelementptr inbounds %"internal/task.Task", ptr %6, i32 0, i32 4, !dbg !3415
  %17 = icmp eq ptr %16, null, !dbg !3416
  br i1 %17, label %gep.throw12, label %gep.next13, !dbg !3416

gep.next13:                                       ; preds = %gep.next11
  %18 = getelementptr inbounds %"internal/task.state", ptr %16, i32 0, i32 4, !dbg !3416
  %19 = icmp eq ptr %18, null, !dbg !3416
  br i1 %19, label %deref.throw14, label %deref.next15, !dbg !3416

deref.next15:                                     ; preds = %gep.next13
  %20 = load ptr, ptr %18, align 8, !dbg !3416
    #dbg_value(ptr %20, !3390, !DIExpression(), !3417)
  br label %for.loop, !dbg !3396

for.done:                                         ; preds = %for.loop
  call void @"(*internal/task.waitGroup).wait"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3418
  br label %if.done2, !dbg !3396

if.done2:                                         ; preds = %for.done, %entry
  %21 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !3419
    #dbg_value(ptr %21, !3389, !DIExpression(), !3419)
    #dbg_value(ptr %21, !3391, !DIExpression(), !3420)
  br label %for.loop3, !dbg !3396

for.loop3:                                        ; preds = %deref.next33, %if.done2
  %22 = phi ptr [ %21, %if.done2 ], [ %42, %deref.next33 ], !dbg !3420
    #dbg_value(ptr %22, !3391, !DIExpression(), !3421)
  %23 = icmp ne ptr %22, null, !dbg !3422
  br i1 %23, label %for.body4, label %for.done7, !dbg !3396

for.body4:                                        ; preds = %for.loop3
    #dbg_value(ptr %22, !3391, !DIExpression(), !3423)
    #dbg_value(ptr %0, !3386, !DIExpression(), !3424)
  %24 = icmp ne ptr %22, %0, !dbg !3425
  br i1 %24, label %if.then5, label %if.done6, !dbg !3396

if.then5:                                         ; preds = %for.body4
    #dbg_value(ptr %22, !3391, !DIExpression(), !3426)
  %25 = icmp eq ptr %22, null, !dbg !3427
  br i1 %25, label %gep.throw16, label %gep.next17, !dbg !3427

gep.next17:                                       ; preds = %if.then5
  %26 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3427
  %27 = icmp eq ptr %26, null, !dbg !3428
  br i1 %27, label %gep.throw18, label %gep.next19, !dbg !3428

gep.next19:                                       ; preds = %gep.next17
  %28 = getelementptr inbounds %"internal/task.state", ptr %26, i32 0, i32 3, !dbg !3428
  %29 = icmp eq ptr %28, null, !dbg !3428
  br i1 %29, label %deref.throw20, label %deref.next21, !dbg !3428

deref.next21:                                     ; preds = %gep.next19
  %30 = load i64, ptr %28, align 8, !dbg !3428
    #dbg_value(ptr %22, !3391, !DIExpression(), !3429)
  %31 = icmp eq ptr %22, null, !dbg !3430
  br i1 %31, label %gep.throw22, label %gep.next23, !dbg !3430

gep.next23:                                       ; preds = %deref.next21
  %32 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3430
  %33 = icmp eq ptr %32, null, !dbg !3431
  br i1 %33, label %gep.throw24, label %gep.next25, !dbg !3431

gep.next25:                                       ; preds = %gep.next23
  %34 = getelementptr inbounds %"internal/task.state", ptr %32, i32 0, i32 2, !dbg !3431
  %35 = icmp eq ptr %34, null, !dbg !3431
  br i1 %35, label %deref.throw26, label %deref.next27, !dbg !3431

deref.next27:                                     ; preds = %gep.next25
  %36 = load i64, ptr %34, align 8, !dbg !3431
  call void @runtime.markRoots(i64 %30, i64 %36, ptr undef), !dbg !3432
  br label %if.done6, !dbg !3396

if.done6:                                         ; preds = %deref.next27, %for.body4
    #dbg_value(ptr %22, !3391, !DIExpression(), !3433)
  %37 = icmp eq ptr %22, null, !dbg !3434
  br i1 %37, label %gep.throw28, label %gep.next29, !dbg !3434

gep.next29:                                       ; preds = %if.done6
  %38 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3434
  %39 = icmp eq ptr %38, null, !dbg !3435
  br i1 %39, label %gep.throw30, label %gep.next31, !dbg !3435

gep.next31:                                       ; preds = %gep.next29
  %40 = getelementptr inbounds %"internal/task.state", ptr %38, i32 0, i32 4, !dbg !3435
  %41 = icmp eq ptr %40, null, !dbg !3435
  br i1 %41, label %deref.throw32, label %deref.next33, !dbg !3435

deref.next33:                                     ; preds = %gep.next31
  %42 = load ptr, ptr %40, align 8, !dbg !3435
    #dbg_value(ptr %42, !3391, !DIExpression(), !3436)
  br label %for.loop3, !dbg !3396

for.done7:                                        ; preds = %for.loop3
  call void @tinygo_scanCurrentStack(), !dbg !3437
  call void @"internal/task.gcScanGlobals"(ptr undef), !dbg !3438
  ret void, !dbg !3439

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3411
  unreachable, !dbg !3411

gep.throw8:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3412
  unreachable, !dbg !3412

deref.throw:                                      ; preds = %gep.next9
  call void @runtime.nilPanic(ptr undef), !dbg !3412
  unreachable, !dbg !3412

gep.throw10:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3415
  unreachable, !dbg !3415

gep.throw12:                                      ; preds = %gep.next11
  call void @runtime.nilPanic(ptr undef), !dbg !3416
  unreachable, !dbg !3416

deref.throw14:                                    ; preds = %gep.next13
  call void @runtime.nilPanic(ptr undef), !dbg !3416
  unreachable, !dbg !3416

gep.throw16:                                      ; preds = %if.then5
  call void @runtime.nilPanic(ptr undef), !dbg !3427
  unreachable, !dbg !3427

gep.throw18:                                      ; preds = %gep.next17
  call void @runtime.nilPanic(ptr undef), !dbg !3428
  unreachable, !dbg !3428

deref.throw20:                                    ; preds = %gep.next19
  call void @runtime.nilPanic(ptr undef), !dbg !3428
  unreachable, !dbg !3428

gep.throw22:                                      ; preds = %deref.next21
  call void @runtime.nilPanic(ptr undef), !dbg !3430
  unreachable, !dbg !3430

gep.throw24:                                      ; preds = %gep.next23
  call void @runtime.nilPanic(ptr undef), !dbg !3431
  unreachable, !dbg !3431

deref.throw26:                                    ; preds = %gep.next25
  call void @runtime.nilPanic(ptr undef), !dbg !3431
  unreachable, !dbg !3431

gep.throw28:                                      ; preds = %if.done6
  call void @runtime.nilPanic(ptr undef), !dbg !3434
  unreachable, !dbg !3434

gep.throw30:                                      ; preds = %gep.next29
  call void @runtime.nilPanic(ptr undef), !dbg !3435
  unreachable, !dbg !3435

deref.throw32:                                    ; preds = %gep.next31
  call void @runtime.nilPanic(ptr undef), !dbg !3435
  unreachable, !dbg !3435
}

declare void @tinygo_task_send_gc_signal(ptr nocapture) #2

declare void @tinygo_scanCurrentStack() #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.GCResumeWorld"(ptr %context) #1 !dbg !3440 {
entry:
  %0 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3444
  %1 = icmp eq i32 %0, 0, !dbg !3445
  br i1 %1, label %if.then, label %if.done, !dbg !3446

if.then:                                          ; preds = %entry
  ret void, !dbg !3447

if.done:                                          ; preds = %entry
  %2 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3448
    #dbg_value(i32 %2, !3442, !DIExpression(), !3448)
  %3 = call %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %2, ptr undef), !dbg !3449
  store %"internal/task.Semaphore" %3, ptr @"internal/task.scanWaitGroup", align 4, !dbg !3450
    #dbg_value(%"internal/task.Semaphore" %3, !3443, !DIExpression(), !3450)
  call void @"(*sync/atomic.Uint32).Store"(ptr @"internal/task.gcState", i32 0, ptr undef), !dbg !3451
  call void @"(*internal/futex.Futex).WakeAll"(ptr @"internal/task.gcState", ptr undef), !dbg !3452
  call void @"(*internal/task.Mutex).Unlock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3453
  ret void, !dbg !3454
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_gc_pause(i32 %sig) #1 !dbg !3455 {
entry:
    #dbg_value(i32 %sig, !3459, !DIExpression(), !3461)
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3462
  %1 = icmp eq ptr %0, null, !dbg !3463
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3463

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3463
  %3 = call ptr @runtime.stacksave(ptr undef), !dbg !3464
  %4 = ptrtoint ptr %3 to i64, !dbg !3465
  %5 = icmp eq ptr %2, null, !dbg !3466
  br i1 %5, label %gep.throw1, label %gep.next2, !dbg !3466

gep.next2:                                        ; preds = %gep.next
  %6 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 3, !dbg !3466
  %7 = icmp eq ptr %6, null, !dbg !3466
  br i1 %7, label %store.throw, label %store.next, !dbg !3466

store.next:                                       ; preds = %gep.next2
  store i64 %4, ptr %6, align 8, !dbg !3466
    #dbg_value(i64 %4, !3460, !DIExpression(), !3466)
  call void @"(*internal/task.waitGroup).done"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3467
  br label %for.loop, !dbg !3468

for.loop:                                         ; preds = %for.body, %store.next
  %8 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3469
  %9 = icmp eq i32 %8, 1, !dbg !3470
  br i1 %9, label %for.body, label %for.done, !dbg !3468

for.body:                                         ; preds = %for.loop
  %10 = call i1 @"(*internal/futex.Futex).Wait"(ptr @"internal/task.gcState", i32 1, ptr undef), !dbg !3471
  br label %for.loop, !dbg !3468

for.done:                                         ; preds = %for.loop
  call void @"(*internal/task.waitGroup).done"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3472
  ret void, !dbg !3473

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3463
  unreachable, !dbg !3463

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3466
  unreachable, !dbg !3466

store.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3466
  unreachable, !dbg !3466
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"internal/task.StackTop"(ptr %context) #1 !dbg !3474 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3475
  %1 = icmp eq ptr %0, null, !dbg !3476
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3476

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3476
  %3 = icmp eq ptr %2, null, !dbg !3477
  br i1 %3, label %gep.throw1, label %gep.next2, !dbg !3477

gep.next2:                                        ; preds = %gep.next
  %4 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 2, !dbg !3477
  %5 = icmp eq ptr %4, null, !dbg !3477
  br i1 %5, label %deref.throw, label %deref.next, !dbg !3477

deref.next:                                       ; preds = %gep.next2
  %6 = load i64, ptr %4, align 8, !dbg !3477
  ret i64 %6, !dbg !3478

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3476
  unreachable, !dbg !3476

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3477
  unreachable, !dbg !3477

deref.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3477
  unreachable, !dbg !3477
}

; Function Attrs: noinline nounwind allockind("alloc,zeroed") allocsize(0) uwtable(sync)
define internal noalias nonnull ptr @runtime.alloc(i64 %size, ptr %layout, ptr %context) #4 !dbg !3479 {
entry:
    #dbg_value(i64 %size, !3483, !DIExpression(), !3486)
    #dbg_value(ptr %layout, !3484, !DIExpression(), !3486)
    #dbg_value(i64 %size, !3483, !DIExpression(), !3487)
  %0 = icmp eq i64 %size, 0, !dbg !3488
  br i1 %0, label %if.then, label %if.done, !dbg !3489

if.then:                                          ; preds = %entry
  ret ptr @runtime.zeroSizedAlloc, !dbg !3490

if.done:                                          ; preds = %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @runtime.gcLock, ptr undef), !dbg !3491
    #dbg_value(ptr null, !3485, !DIExpression(), !3492)
    #dbg_value(ptr %layout, !3484, !DIExpression(), !3493)
  %1 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !3494
  %2 = icmp eq ptr %layout, %1, !dbg !3495
  br i1 %2, label %if.then1, label %if.else, !dbg !3489

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %size, !3483, !DIExpression(), !3496)
  %3 = call ptr @GC_malloc_atomic(i64 %size), !dbg !3497
    #dbg_value(ptr %3, !3485, !DIExpression(), !3498)
    #dbg_value(ptr %3, !3485, !DIExpression(), !3499)
    #dbg_value(i64 %size, !3483, !DIExpression(), !3500)
  call void @runtime.memzero(ptr %3, i64 %size, ptr undef), !dbg !3501
  br label %if.done2, !dbg !3489

if.done2:                                         ; preds = %if.else, %if.then1
  %4 = phi ptr [ %3, %if.then1 ], [ %6, %if.else ], !dbg !3492
  call void @runtime.gcResumeWorld(ptr undef), !dbg !3502
  call void @"(*internal/task.Mutex).Unlock"(ptr @runtime.gcLock, ptr undef), !dbg !3503
    #dbg_value(ptr %4, !3485, !DIExpression(), !3504)
  %5 = icmp eq ptr %4, null, !dbg !3505
  br i1 %5, label %if.then3, label %if.done4, !dbg !3489

if.then3:                                         ; preds = %if.done2
  call void @runtime.runtimePanic(ptr @"runtime$string.7", i64 17, ptr undef), !dbg !3506
  br label %if.done4, !dbg !3489

if.done4:                                         ; preds = %if.then3, %if.done2
    #dbg_value(ptr %4, !3485, !DIExpression(), !3507)
  ret ptr %4, !dbg !3508

if.else:                                          ; preds = %if.done
    #dbg_value(i64 %size, !3483, !DIExpression(), !3509)
  %6 = call ptr @GC_malloc(i64 %size), !dbg !3510
    #dbg_value(ptr %6, !3485, !DIExpression(), !3511)
  br label %if.done2, !dbg !3489
}

declare ptr @GC_malloc_atomic(i64) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memzero(ptr %ptr, i64 %size, ptr %context) #1 !dbg !3512 {
entry:
    #dbg_value(ptr %ptr, !3516, !DIExpression(), !3518)
    #dbg_value(i64 %size, !3517, !DIExpression(), !3518)
  call void @llvm.memset.p0.i64(ptr %ptr, i8 0, i64 %size, i1 false), !dbg !3518
  ret void, !dbg !3518
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.gcResumeWorld(ptr %context) unnamed_addr #1 !dbg !3519 {
entry:
  call void @"internal/task.GCResumeWorld"(ptr undef), !dbg !3521
  ret void, !dbg !3522
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.runtimePanic(ptr readonly %msg.data, i64 %msg.len, ptr %context) #1 !dbg !3523 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %msg.data, 0, !dbg !3526
  %1 = insertvalue %runtime._string %0, i64 %msg.len, 1, !dbg !3526
    #dbg_value(ptr %msg.data, !3525, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3526)
    #dbg_value(i64 %msg.len, !3525, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3526)
  %2 = call ptr @llvm.returnaddress(i32 0), !dbg !3527
    #dbg_value(%runtime._string %1, !3525, !DIExpression(), !3528)
  %3 = extractvalue %runtime._string %1, 0, !dbg !3529
  %4 = extractvalue %runtime._string %1, 1, !dbg !3529
  call void @runtime.runtimePanicAt(ptr %2, ptr %3, i64 %4, ptr undef), !dbg !3529
  ret void, !dbg !3530
}

declare ptr @GC_malloc(i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.runtimePanicAt(ptr %addr, ptr readonly %msg.data, i64 %msg.len, ptr %context) unnamed_addr #1 !dbg !3531 {
entry:
    #dbg_value(ptr %addr, !3535, !DIExpression(), !3537)
  %0 = insertvalue %runtime._string zeroinitializer, ptr %msg.data, 0, !dbg !3537
  %1 = insertvalue %runtime._string %0, i64 %msg.len, 1, !dbg !3537
    #dbg_value(ptr %msg.data, !3536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3537)
    #dbg_value(i64 %msg.len, !3536, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3537)
  br i1 false, label %if.then, label %if.done, !dbg !3538

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !3539
  br label %if.done, !dbg !3538

if.done:                                          ; preds = %if.then, %entry
  br i1 true, label %if.then1, label %if.else, !dbg !3538

if.then1:                                         ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.13", i64 24, ptr undef), !dbg !3540
    #dbg_value(ptr %addr, !3535, !DIExpression(), !3541)
  %2 = ptrtoint ptr %addr to i64, !dbg !3542
  %3 = sub i64 %2, 5, !dbg !3543
  call void @runtime.printptr(i64 %3, ptr undef), !dbg !3544
  call void @runtime.printstring(ptr @"runtime$string.14", i64 2, ptr undef), !dbg !3545
  br label %if.done2, !dbg !3538

if.done2:                                         ; preds = %if.else, %if.then1
    #dbg_value(%runtime._string %1, !3536, !DIExpression(), !3546)
  %4 = extractvalue %runtime._string %1, 0, !dbg !3547
  %5 = extractvalue %runtime._string %1, 1, !dbg !3547
  call void @runtime.printstring(ptr %4, i64 %5, ptr undef), !dbg !3547
  call void @runtime.printnl(ptr undef), !dbg !3548
  call void @abort(), !dbg !3549
  ret void, !dbg !3550

if.else:                                          ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.15", i64 22, ptr undef), !dbg !3551
  br label %if.done2, !dbg !3538
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printstring(ptr readonly %s.data, i64 %s.len, ptr %context) #1 !dbg !3552 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !3556
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !3556
    #dbg_value(ptr %s.data, !3554, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3556)
    #dbg_value(i64 %s.len, !3554, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3556)
    #dbg_value(i64 0, !3555, !DIExpression(), !3557)
  br label %for.loop, !dbg !3558

for.loop:                                         ; preds = %for.body, %entry
  %2 = phi i64 [ 0, %entry ], [ %7, %for.body ], !dbg !3557
    #dbg_value(i64 %2, !3555, !DIExpression(), !3559)
    #dbg_value(%runtime._string %1, !3554, !DIExpression(), !3560)
  %len = extractvalue %runtime._string %1, 1, !dbg !3561
  %3 = icmp slt i64 %2, %len, !dbg !3562
  br i1 %3, label %for.body, label %for.done, !dbg !3558

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !3555, !DIExpression(), !3563)
    #dbg_value(%runtime._string %1, !3554, !DIExpression(), !3564)
  %len1 = extractvalue %runtime._string %1, 1, !dbg !3565
  %4 = extractvalue %runtime._string %1, 0, !dbg !3565
  %5 = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !3565
  %6 = load i8, ptr %5, align 1, !dbg !3565
  call void @runtime.putchar(i8 %6, ptr undef), !dbg !3566
  %7 = add i64 %2, 1, !dbg !3567
    #dbg_value(i64 %7, !3555, !DIExpression(), !3567)
  br label %for.loop, !dbg !3558

for.done:                                         ; preds = %for.loop
  ret void, !dbg !3568
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printptr(i64 %ptr, ptr %context) #1 !dbg !3569 {
entry:
    #dbg_value(i64 %ptr, !3571, !DIExpression(), !3574)
    #dbg_value(i64 %ptr, !3571, !DIExpression(), !3575)
  %0 = icmp eq i64 %ptr, 0, !dbg !3576
  br i1 %0, label %if.then, label %if.done, !dbg !3577

if.then:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.45", i64 3, ptr undef), !dbg !3578
  ret void, !dbg !3579

if.done:                                          ; preds = %entry
  call void @runtime.putchar(i8 48, ptr undef), !dbg !3580
  call void @runtime.putchar(i8 120, ptr undef), !dbg !3581
    #dbg_value(i64 0, !3572, !DIExpression(), !3582)
  br label %for.loop, !dbg !3577

for.loop:                                         ; preds = %if.done2, %if.done
  %1 = phi i64 [ %ptr, %if.done ], [ %shift.result3, %if.done2 ], !dbg !3583
  %2 = phi i64 [ 0, %if.done ], [ %9, %if.done2 ], !dbg !3582
    #dbg_value(i64 %2, !3572, !DIExpression(), !3584)
  %3 = icmp slt i64 %2, 16, !dbg !3585
  br i1 %3, label %for.body, label %for.done, !dbg !3577

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !3571, !DIExpression(), !3586)
  %4 = lshr i64 %1, 60, !dbg !3587
  %shift.result = select i1 false, i64 0, i64 %4, !dbg !3587
  %5 = trunc i64 %shift.result to i8, !dbg !3588
    #dbg_value(i8 %5, !3573, !DIExpression(), !3589)
    #dbg_value(i8 %5, !3573, !DIExpression(), !3590)
  %6 = icmp ult i8 %5, 10, !dbg !3591
  br i1 %6, label %if.then1, label %if.else, !dbg !3577

if.then1:                                         ; preds = %for.body
    #dbg_value(i8 %5, !3573, !DIExpression(), !3592)
  %7 = add i8 %5, 48, !dbg !3593
  call void @runtime.putchar(i8 %7, ptr undef), !dbg !3594
  br label %if.done2, !dbg !3577

if.done2:                                         ; preds = %if.else, %if.then1
  %8 = shl i64 %1, 4, !dbg !3595
  %shift.result3 = select i1 false, i64 0, i64 %8, !dbg !3595
    #dbg_value(i64 %shift.result3, !3571, !DIExpression(), !3595)
  %9 = add i64 %2, 1, !dbg !3596
    #dbg_value(i64 %9, !3572, !DIExpression(), !3596)
  br label %for.loop, !dbg !3577

if.else:                                          ; preds = %for.body
    #dbg_value(i8 %5, !3573, !DIExpression(), !3597)
  %10 = sub i8 %5, 10, !dbg !3598
  %11 = add i8 %10, 97, !dbg !3599
  call void @runtime.putchar(i8 %11, ptr undef), !dbg !3600
  br label %if.done2, !dbg !3577

for.done:                                         ; preds = %for.loop
  ret void, !dbg !3601
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printnl(ptr %context) #1 !dbg !3602 {
entry:
  br i1 false, label %if.then, label %if.done, !dbg !3603

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 13, ptr undef), !dbg !3604
  br label %if.done, !dbg !3603

if.done:                                          ; preds = %if.then, %entry
  call void @runtime.putchar(i8 10, ptr undef), !dbg !3605
  ret void, !dbg !3606
}

; Function Attrs: noreturn
declare void @abort() #7

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.putchar(i8 %c, ptr %context) unnamed_addr #1 !dbg !3607 {
entry:
    #dbg_value(i8 %c, !3611, !DIExpression(), !3612)
  %buf = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3613
  %0 = getelementptr inbounds [1 x i8], ptr %buf, i32 0, i64 0, !dbg !3613
    #dbg_value(i8 %c, !3611, !DIExpression(), !3614)
  store i8 %c, ptr %0, align 1, !dbg !3614
    #dbg_value(i8 %c, !3611, !DIExpression(), !3614)
  %1 = getelementptr inbounds [1 x i8], ptr %buf, i32 0, i64 0, !dbg !3615
  %2 = call i64 @write(i32 1, ptr %1, i64 1), !dbg !3616
  ret void, !dbg !3617
}

declare i64 @write(i32, ptr nocapture, i64) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.initRand(ptr %context) unnamed_addr #1 !dbg !3618 {
entry:
  %0 = call { i64, i1 } @runtime.hardwareRand(ptr undef), !dbg !3623
  %1 = extractvalue { i64, i1 } %0, 0, !dbg !3623
    #dbg_value(i64 %1, !3620, !DIExpression(), !3624)
  %2 = extractvalue { i64, i1 } %0, 1, !dbg !3623
    #dbg_value(i64 %1, !3620, !DIExpression(), !3625)
  %3 = or i64 %1, 1, !dbg !3626
  store i64 %3, ptr @runtime.xorshift64State, align 8, !dbg !3627
    #dbg_value(i64 %3, !3621, !DIExpression(), !3627)
  %4 = load i64, ptr @runtime.xorshift64State, align 8, !dbg !3628
    #dbg_value(i64 %4, !3621, !DIExpression(), !3628)
  %5 = trunc i64 %4 to i32, !dbg !3629
  store i32 %5, ptr @runtime.xorshift32State, align 4, !dbg !3630
    #dbg_value(i32 %5, !3622, !DIExpression(), !3630)
  ret void, !dbg !3631
}

; Function Attrs: nounwind uwtable(sync)
define internal { i64, i1 } @runtime.hardwareRand(ptr %context) unnamed_addr #1 !dbg !3632 {
entry:
  %n = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3637
  %0 = call i32 @getrandom(ptr %n, i64 8, i32 0), !dbg !3638
    #dbg_value(i32 %0, !3635, !DIExpression(), !3639)
    #dbg_value(i32 %0, !3635, !DIExpression(), !3640)
  %1 = icmp ne i32 %0, 8, !dbg !3641
  br i1 %1, label %if.then, label %if.done, !dbg !3642

if.then:                                          ; preds = %entry
  store i64 0, ptr %n, align 8, !dbg !3643
  %2 = load i64, ptr %n, align 8, !dbg !3642
  %3 = insertvalue { i64, i1 } zeroinitializer, i64 %2, 0, !dbg !3643
  %4 = insertvalue { i64, i1 } %3, i1 false, 1, !dbg !3643
  ret { i64, i1 } %4, !dbg !3643

if.done:                                          ; preds = %entry
  %5 = load i64, ptr %n, align 8, !dbg !3644
    #dbg_value(i64 %5, !3636, !DIExpression(), !3644)
  store i64 %5, ptr %n, align 8, !dbg !3645
  %6 = load i64, ptr %n, align 8, !dbg !3642
  %7 = insertvalue { i64, i1 } zeroinitializer, i64 %6, 0, !dbg !3645
  %8 = insertvalue { i64, i1 } %7, i1 true, 1, !dbg !3645
  ret { i64, i1 } %8, !dbg !3645
}

declare i32 @getrandom(ptr nocapture, i64, i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal i64 @runtime.getCurrentStackPointer(ptr %context) unnamed_addr #1 !dbg !3646 {
entry:
  %0 = call ptr @runtime.stacksave(ptr undef), !dbg !3648
  %1 = ptrtoint ptr %0 to i64, !dbg !3649
  ret i64 %1, !dbg !3650
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @runtime.stacksave(ptr %context) #1 !dbg !3651 {
entry:
  %0 = call ptr @llvm.stacksave.p0(), !dbg !3652
  ret ptr %0, !dbg !3652
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #9

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memcpy(ptr %dst, ptr %src, i64 %size, ptr %context) #1 !dbg !3653 {
entry:
    #dbg_value(ptr %dst, !3657, !DIExpression(), !3660)
    #dbg_value(ptr %src, !3658, !DIExpression(), !3660)
    #dbg_value(i64 %size, !3659, !DIExpression(), !3660)
  call void @llvm.memcpy.p0.p0.i64(ptr %dst, ptr %src, i64 %size, i1 false), !dbg !3660
  ret void, !dbg !3660
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.nilPanic(ptr %context) #1 !dbg !3661 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !3662
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.17", i64 23, ptr undef), !dbg !3663
  ret void, !dbg !3664
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.deadlock(ptr %context) unnamed_addr #1 !dbg !3665 {
entry:
  call void @"internal/task.Pause"(ptr undef), !dbg !3666
  ret void, !dbg !3667
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.lookupPanic(ptr %context) #1 !dbg !3668 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !3669
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.19", i64 18, ptr undef), !dbg !3670
  ret void, !dbg !3671
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.panicOrGoexit(ptr %message.typecode, ptr %message.value, i8 %panicking, ptr %context) unnamed_addr #1 !dbg !3672 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %message.typecode, 0, !dbg !3692
  %1 = insertvalue { ptr, ptr } %0, ptr %message.value, 1, !dbg !3692
    #dbg_value(ptr %message.typecode, !3677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3692)
    #dbg_value(ptr %message.value, !3677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3692)
    #dbg_value(i8 %panicking, !3678, !DIExpression(), !3692)
  br i1 false, label %if.then, label %if.done, !dbg !3693

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !3694
  br label %if.done, !dbg !3693

if.done:                                          ; preds = %if.then, %entry
  br i1 true, label %cond.true, label %if.done3, !dbg !3693

cond.true:                                        ; preds = %if.done
  %2 = call i1 @"runtime/interrupt.In"(ptr undef), !dbg !3695
  br i1 %2, label %if.done3, label %if.then1, !dbg !3693

if.then1:                                         ; preds = %cond.true
  %3 = call ptr @"internal/task.Current"(ptr undef), !dbg !3696
  %4 = icmp eq ptr %3, null, !dbg !3697
  br i1 %4, label %gep.throw, label %gep.next, !dbg !3697

gep.next:                                         ; preds = %if.then1
  %5 = getelementptr inbounds %"internal/task.Task", ptr %3, i32 0, i32 8, !dbg !3697
  %6 = icmp eq ptr %5, null, !dbg !3697
  br i1 %6, label %deref.throw, label %deref.next, !dbg !3697

deref.next:                                       ; preds = %gep.next
  %7 = load ptr, ptr %5, align 8, !dbg !3697
    #dbg_value(ptr %7, !3679, !DIExpression(), !3698)
    #dbg_value(ptr %7, !3679, !DIExpression(), !3699)
  %8 = icmp ne ptr %7, null, !dbg !3700
  br i1 %8, label %if.then2, label %if.done3, !dbg !3693

if.then2:                                         ; preds = %deref.next
    #dbg_value(ptr %7, !3679, !DIExpression(), !3701)
    #dbg_value({ ptr, ptr } %1, !3677, !DIExpression(), !3702)
  %9 = getelementptr inbounds %runtime.deferFrame, ptr %7, i32 0, i32 5, !dbg !3703
  %10 = icmp eq ptr %9, null, !dbg !3703
  br i1 %10, label %store.throw, label %store.next, !dbg !3703

store.next:                                       ; preds = %if.then2
  store { ptr, ptr } %1, ptr %9, align 8, !dbg !3703
    #dbg_value({ ptr, ptr } %1, !3690, !DIExpression(), !3703)
    #dbg_value(ptr %7, !3679, !DIExpression(), !3704)
    #dbg_value(i8 %panicking, !3678, !DIExpression(), !3705)
  %11 = getelementptr inbounds %runtime.deferFrame, ptr %7, i32 0, i32 4, !dbg !3706
  %12 = icmp eq ptr %11, null, !dbg !3706
  br i1 %12, label %store.throw6, label %store.next7, !dbg !3706

store.next7:                                      ; preds = %store.next
  store i8 %panicking, ptr %11, align 1, !dbg !3706
    #dbg_value(i8 %panicking, !3691, !DIExpression(), !3706)
    #dbg_value(ptr %7, !3679, !DIExpression(), !3707)
  call void @tinygo_longjmp(ptr %7), !dbg !3708
  br label %if.done3, !dbg !3693

if.done3:                                         ; preds = %store.next7, %deref.next, %cond.true, %if.done
    #dbg_value(i8 %panicking, !3678, !DIExpression(), !3709)
  %13 = icmp eq i8 %panicking, 2, !dbg !3710
  br i1 %13, label %if.then4, label %if.done5, !dbg !3693

if.then4:                                         ; preds = %if.done3
  call void @runtime.deadlock(ptr undef), !dbg !3711
  br label %if.done5, !dbg !3693

if.done5:                                         ; preds = %if.then4, %if.done3
  call void @runtime.printstring(ptr @"runtime$string.12", i64 7, ptr undef), !dbg !3712
    #dbg_value({ ptr, ptr } %1, !3677, !DIExpression(), !3713)
  %14 = extractvalue { ptr, ptr } %1, 0, !dbg !3714
  %15 = extractvalue { ptr, ptr } %1, 1, !dbg !3714
  call void @runtime.printitf(ptr %14, ptr %15, ptr undef), !dbg !3714
  call void @runtime.printnl(ptr undef), !dbg !3715
  call void @abort(), !dbg !3716
  ret void, !dbg !3717

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3697
  unreachable, !dbg !3697

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3697
  unreachable, !dbg !3697

store.throw:                                      ; preds = %if.then2
  call void @runtime.nilPanic(ptr undef), !dbg !3703
  unreachable, !dbg !3703

store.throw6:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !3706
  unreachable, !dbg !3706
}

declare void @tinygo_longjmp(ptr nocapture dereferenceable_or_null(48)) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printitf(ptr %msg.typecode, ptr %msg.value, ptr %context) unnamed_addr #1 !dbg !3718 {
entry:
  %itf = alloca { ptr, ptr }, align 8, !dbg !3748
  %unpack.raw.alloc136 = alloca ptr, align 8, !dbg !3748
  %unpack.raw.alloc129 = alloca ptr, align 8, !dbg !3748
  %unpack.raw.alloc = alloca ptr, align 8, !dbg !3748
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %msg.typecode, 0, !dbg !3748
  %1 = insertvalue { ptr, ptr } %0, ptr %msg.value, 1, !dbg !3748
    #dbg_value(ptr %msg.typecode, !3722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3748)
    #dbg_value(ptr %msg.value, !3722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3748)
    #dbg_value({ ptr, ptr } %1, !3722, !DIExpression(), !3749)
  %interface.type = extractvalue { ptr, ptr } %1, 0, !dbg !3750
  br i1 false, label %typeassert.ok, label %typeassert.next, !dbg !3750

typeassert.next:                                  ; preds = %typeassert.ok, %entry
  %typeassert.value = phi i1 [ false, %entry ], [ %unpack.int, %typeassert.ok ], !dbg !3750
  %2 = insertvalue { i1, i1 } undef, i1 %typeassert.value, 0, !dbg !3750
  %3 = insertvalue { i1, i1 } %2, i1 false, 1, !dbg !3750
  %4 = extractvalue { i1, i1 } %3, 0, !dbg !3750
  %5 = extractvalue { i1, i1 } %3, 1, !dbg !3750
  br i1 %5, label %typeswitch.body, label %typeswitch.next, !dbg !3751

typeassert.ok:                                    ; preds = %entry
  %typeassert.value.ptr = extractvalue { ptr, ptr } %1, 1, !dbg !3750
  %unpack.int = ptrtoint ptr %typeassert.value.ptr to i1, !dbg !3750
  br label %typeassert.next, !dbg !3750

typeswitch.body:                                  ; preds = %typeassert.next
    #dbg_value(i1 %4, !3723, !DIExpression(), !3752)
  call void @runtime.printbool(i1 %4, ptr undef), !dbg !3753
  br label %typeswitch.done, !dbg !3751

typeswitch.done:                                  ; preds = %deref.next161, %typeswitch.body39, %typeswitch.body37, %typeswitch.body35, %typeswitch.body33, %typeswitch.body31, %typeswitch.body29, %typeswitch.body27, %typeswitch.body25, %typeswitch.body23, %typeswitch.body21, %typeswitch.body19, %typeswitch.body17, %switch.body15, %switch.next14, %switch.body13, %typeswitch.body10, %typeswitch.body8, %typeswitch.body6, %typeswitch.body4, %switch.body2, %switch.next, %switch.body, %typeswitch.body
  ret void, !dbg !3754

typeswitch.next:                                  ; preds = %typeassert.next
  %interface.type41 = extractvalue { ptr, ptr } %1, 0, !dbg !3755
  br i1 false, label %typeassert.ok43, label %typeassert.next44, !dbg !3755

typeassert.next44:                                ; preds = %typeassert.ok43, %typeswitch.next
  %typeassert.value47 = phi i64 [ 0, %typeswitch.next ], [ %unpack.int46, %typeassert.ok43 ], !dbg !3755
  %6 = insertvalue { i64, i1 } undef, i64 %typeassert.value47, 0, !dbg !3755
  %7 = insertvalue { i64, i1 } %6, i1 false, 1, !dbg !3755
  %8 = extractvalue { i64, i1 } %7, 0, !dbg !3755
  %9 = extractvalue { i64, i1 } %7, 1, !dbg !3755
  br i1 %9, label %typeswitch.body1, label %typeswitch.next3, !dbg !3751

typeassert.ok43:                                  ; preds = %typeswitch.next
  %typeassert.value.ptr45 = extractvalue { ptr, ptr } %1, 1, !dbg !3755
  %unpack.int46 = ptrtoint ptr %typeassert.value.ptr45 to i64, !dbg !3755
  br label %typeassert.next44, !dbg !3755

typeswitch.body1:                                 ; preds = %typeassert.next44
  br i1 true, label %switch.body, label %switch.next, !dbg !3751

switch.body:                                      ; preds = %typeswitch.body1
    #dbg_value(i64 %8, !3724, !DIExpression(), !3756)
  call void @runtime.printint64(i64 %8, ptr undef), !dbg !3757
  br label %typeswitch.done, !dbg !3751

switch.next:                                      ; preds = %typeswitch.body1
  br i1 false, label %switch.body2, label %typeswitch.done, !dbg !3751

switch.body2:                                     ; preds = %switch.next
    #dbg_value(i64 %8, !3724, !DIExpression(), !3758)
  %10 = trunc i64 %8 to i32, !dbg !3759
  call void @runtime.printint32(i32 %10, ptr undef), !dbg !3760
  br label %typeswitch.done, !dbg !3751

typeswitch.next3:                                 ; preds = %typeassert.next44
  %interface.type48 = extractvalue { ptr, ptr } %1, 0, !dbg !3761
  br i1 false, label %typeassert.ok50, label %typeassert.next51, !dbg !3761

typeassert.next51:                                ; preds = %typeassert.ok50, %typeswitch.next3
  %typeassert.value54 = phi i8 [ 0, %typeswitch.next3 ], [ %unpack.int53, %typeassert.ok50 ], !dbg !3761
  %11 = insertvalue { i8, i1 } undef, i8 %typeassert.value54, 0, !dbg !3761
  %12 = insertvalue { i8, i1 } %11, i1 false, 1, !dbg !3761
  %13 = extractvalue { i8, i1 } %12, 0, !dbg !3761
  %14 = extractvalue { i8, i1 } %12, 1, !dbg !3761
  br i1 %14, label %typeswitch.body4, label %typeswitch.next5, !dbg !3751

typeassert.ok50:                                  ; preds = %typeswitch.next3
  %typeassert.value.ptr52 = extractvalue { ptr, ptr } %1, 1, !dbg !3761
  %unpack.int53 = ptrtoint ptr %typeassert.value.ptr52 to i8, !dbg !3761
  br label %typeassert.next51, !dbg !3761

typeswitch.body4:                                 ; preds = %typeassert.next51
    #dbg_value(i8 %13, !3725, !DIExpression(), !3762)
  call void @runtime.printint8(i8 %13, ptr undef), !dbg !3763
  br label %typeswitch.done, !dbg !3751

typeswitch.next5:                                 ; preds = %typeassert.next51
  %interface.type55 = extractvalue { ptr, ptr } %1, 0, !dbg !3764
  br i1 false, label %typeassert.ok57, label %typeassert.next58, !dbg !3764

typeassert.next58:                                ; preds = %typeassert.ok57, %typeswitch.next5
  %typeassert.value61 = phi i16 [ 0, %typeswitch.next5 ], [ %unpack.int60, %typeassert.ok57 ], !dbg !3764
  %15 = insertvalue { i16, i1 } undef, i16 %typeassert.value61, 0, !dbg !3764
  %16 = insertvalue { i16, i1 } %15, i1 false, 1, !dbg !3764
  %17 = extractvalue { i16, i1 } %16, 0, !dbg !3764
  %18 = extractvalue { i16, i1 } %16, 1, !dbg !3764
  br i1 %18, label %typeswitch.body6, label %typeswitch.next7, !dbg !3751

typeassert.ok57:                                  ; preds = %typeswitch.next5
  %typeassert.value.ptr59 = extractvalue { ptr, ptr } %1, 1, !dbg !3764
  %unpack.int60 = ptrtoint ptr %typeassert.value.ptr59 to i16, !dbg !3764
  br label %typeassert.next58, !dbg !3764

typeswitch.body6:                                 ; preds = %typeassert.next58
    #dbg_value(i16 %17, !3726, !DIExpression(), !3765)
  call void @runtime.printint16(i16 %17, ptr undef), !dbg !3766
  br label %typeswitch.done, !dbg !3751

typeswitch.next7:                                 ; preds = %typeassert.next58
  %interface.type62 = extractvalue { ptr, ptr } %1, 0, !dbg !3767
  br i1 false, label %typeassert.ok64, label %typeassert.next65, !dbg !3767

typeassert.next65:                                ; preds = %typeassert.ok64, %typeswitch.next7
  %typeassert.value68 = phi i32 [ 0, %typeswitch.next7 ], [ %unpack.int67, %typeassert.ok64 ], !dbg !3767
  %19 = insertvalue { i32, i1 } undef, i32 %typeassert.value68, 0, !dbg !3767
  %20 = insertvalue { i32, i1 } %19, i1 false, 1, !dbg !3767
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !3767
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !3767
  br i1 %22, label %typeswitch.body8, label %typeswitch.next9, !dbg !3751

typeassert.ok64:                                  ; preds = %typeswitch.next7
  %typeassert.value.ptr66 = extractvalue { ptr, ptr } %1, 1, !dbg !3767
  %unpack.int67 = ptrtoint ptr %typeassert.value.ptr66 to i32, !dbg !3767
  br label %typeassert.next65, !dbg !3767

typeswitch.body8:                                 ; preds = %typeassert.next65
    #dbg_value(i32 %21, !3728, !DIExpression(), !3768)
  call void @runtime.printint32(i32 %21, ptr undef), !dbg !3769
  br label %typeswitch.done, !dbg !3751

typeswitch.next9:                                 ; preds = %typeassert.next65
  %interface.type69 = extractvalue { ptr, ptr } %1, 0, !dbg !3770
  br i1 false, label %typeassert.ok71, label %typeassert.next72, !dbg !3770

typeassert.next72:                                ; preds = %typeassert.ok71, %typeswitch.next9
  %typeassert.value75 = phi i64 [ 0, %typeswitch.next9 ], [ %unpack.int74, %typeassert.ok71 ], !dbg !3770
  %23 = insertvalue { i64, i1 } undef, i64 %typeassert.value75, 0, !dbg !3770
  %24 = insertvalue { i64, i1 } %23, i1 false, 1, !dbg !3770
  %25 = extractvalue { i64, i1 } %24, 0, !dbg !3770
  %26 = extractvalue { i64, i1 } %24, 1, !dbg !3770
  br i1 %26, label %typeswitch.body10, label %typeswitch.next11, !dbg !3751

typeassert.ok71:                                  ; preds = %typeswitch.next9
  %typeassert.value.ptr73 = extractvalue { ptr, ptr } %1, 1, !dbg !3770
  %unpack.int74 = ptrtoint ptr %typeassert.value.ptr73 to i64, !dbg !3770
  br label %typeassert.next72, !dbg !3770

typeswitch.body10:                                ; preds = %typeassert.next72
    #dbg_value(i64 %25, !3729, !DIExpression(), !3771)
  call void @runtime.printint64(i64 %25, ptr undef), !dbg !3772
  br label %typeswitch.done, !dbg !3751

typeswitch.next11:                                ; preds = %typeassert.next72
  %interface.type76 = extractvalue { ptr, ptr } %1, 0, !dbg !3773
  br i1 false, label %typeassert.ok78, label %typeassert.next79, !dbg !3773

typeassert.next79:                                ; preds = %typeassert.ok78, %typeswitch.next11
  %typeassert.value82 = phi i64 [ 0, %typeswitch.next11 ], [ %unpack.int81, %typeassert.ok78 ], !dbg !3773
  %27 = insertvalue { i64, i1 } undef, i64 %typeassert.value82, 0, !dbg !3773
  %28 = insertvalue { i64, i1 } %27, i1 false, 1, !dbg !3773
  %29 = extractvalue { i64, i1 } %28, 0, !dbg !3773
  %30 = extractvalue { i64, i1 } %28, 1, !dbg !3773
  br i1 %30, label %typeswitch.body12, label %typeswitch.next16, !dbg !3751

typeassert.ok78:                                  ; preds = %typeswitch.next11
  %typeassert.value.ptr80 = extractvalue { ptr, ptr } %1, 1, !dbg !3773
  %unpack.int81 = ptrtoint ptr %typeassert.value.ptr80 to i64, !dbg !3773
  br label %typeassert.next79, !dbg !3773

typeswitch.body12:                                ; preds = %typeassert.next79
  br i1 true, label %switch.body13, label %switch.next14, !dbg !3751

switch.body13:                                    ; preds = %typeswitch.body12
    #dbg_value(i64 %29, !3730, !DIExpression(), !3774)
  call void @runtime.printuint64(i64 %29, ptr undef), !dbg !3775
  br label %typeswitch.done, !dbg !3751

switch.next14:                                    ; preds = %typeswitch.body12
  br i1 false, label %switch.body15, label %typeswitch.done, !dbg !3751

switch.body15:                                    ; preds = %switch.next14
    #dbg_value(i64 %29, !3730, !DIExpression(), !3776)
  %31 = trunc i64 %29 to i32, !dbg !3777
  call void @runtime.printuint32(i32 %31, ptr undef), !dbg !3778
  br label %typeswitch.done, !dbg !3751

typeswitch.next16:                                ; preds = %typeassert.next79
  %interface.type83 = extractvalue { ptr, ptr } %1, 0, !dbg !3779
  %typeassert.ok2 = icmp eq ptr @"reflect/types.type:basic:uint8", %interface.type83, !dbg !3779
  br i1 %typeassert.ok2, label %typeassert.ok85, label %typeassert.next86, !dbg !3779

typeassert.next86:                                ; preds = %typeassert.ok85, %typeswitch.next16
  %typeassert.value89 = phi i8 [ 0, %typeswitch.next16 ], [ %unpack.int88, %typeassert.ok85 ], !dbg !3779
  %32 = insertvalue { i8, i1 } undef, i8 %typeassert.value89, 0, !dbg !3779
  %33 = insertvalue { i8, i1 } %32, i1 %typeassert.ok2, 1, !dbg !3779
  %34 = extractvalue { i8, i1 } %33, 0, !dbg !3779
  %35 = extractvalue { i8, i1 } %33, 1, !dbg !3779
  br i1 %35, label %typeswitch.body17, label %typeswitch.next18, !dbg !3751

typeassert.ok85:                                  ; preds = %typeswitch.next16
  %typeassert.value.ptr87 = extractvalue { ptr, ptr } %1, 1, !dbg !3779
  %unpack.int88 = ptrtoint ptr %typeassert.value.ptr87 to i8, !dbg !3779
  br label %typeassert.next86, !dbg !3779

typeswitch.body17:                                ; preds = %typeassert.next86
    #dbg_value(i8 %34, !3731, !DIExpression(), !3780)
  call void @runtime.printuint8(i8 %34, ptr undef), !dbg !3781
  br label %typeswitch.done, !dbg !3751

typeswitch.next18:                                ; preds = %typeassert.next86
  %interface.type90 = extractvalue { ptr, ptr } %1, 0, !dbg !3782
  br i1 false, label %typeassert.ok92, label %typeassert.next93, !dbg !3782

typeassert.next93:                                ; preds = %typeassert.ok92, %typeswitch.next18
  %typeassert.value96 = phi i16 [ 0, %typeswitch.next18 ], [ %unpack.int95, %typeassert.ok92 ], !dbg !3782
  %36 = insertvalue { i16, i1 } undef, i16 %typeassert.value96, 0, !dbg !3782
  %37 = insertvalue { i16, i1 } %36, i1 false, 1, !dbg !3782
  %38 = extractvalue { i16, i1 } %37, 0, !dbg !3782
  %39 = extractvalue { i16, i1 } %37, 1, !dbg !3782
  br i1 %39, label %typeswitch.body19, label %typeswitch.next20, !dbg !3751

typeassert.ok92:                                  ; preds = %typeswitch.next18
  %typeassert.value.ptr94 = extractvalue { ptr, ptr } %1, 1, !dbg !3782
  %unpack.int95 = ptrtoint ptr %typeassert.value.ptr94 to i16, !dbg !3782
  br label %typeassert.next93, !dbg !3782

typeswitch.body19:                                ; preds = %typeassert.next93
    #dbg_value(i16 %38, !3732, !DIExpression(), !3783)
  call void @runtime.printuint16(i16 %38, ptr undef), !dbg !3784
  br label %typeswitch.done, !dbg !3751

typeswitch.next20:                                ; preds = %typeassert.next93
  %interface.type97 = extractvalue { ptr, ptr } %1, 0, !dbg !3785
  br i1 false, label %typeassert.ok99, label %typeassert.next100, !dbg !3785

typeassert.next100:                               ; preds = %typeassert.ok99, %typeswitch.next20
  %typeassert.value103 = phi i32 [ 0, %typeswitch.next20 ], [ %unpack.int102, %typeassert.ok99 ], !dbg !3785
  %40 = insertvalue { i32, i1 } undef, i32 %typeassert.value103, 0, !dbg !3785
  %41 = insertvalue { i32, i1 } %40, i1 false, 1, !dbg !3785
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !3785
  %43 = extractvalue { i32, i1 } %41, 1, !dbg !3785
  br i1 %43, label %typeswitch.body21, label %typeswitch.next22, !dbg !3751

typeassert.ok99:                                  ; preds = %typeswitch.next20
  %typeassert.value.ptr101 = extractvalue { ptr, ptr } %1, 1, !dbg !3785
  %unpack.int102 = ptrtoint ptr %typeassert.value.ptr101 to i32, !dbg !3785
  br label %typeassert.next100, !dbg !3785

typeswitch.body21:                                ; preds = %typeassert.next100
    #dbg_value(i32 %42, !3733, !DIExpression(), !3786)
  call void @runtime.printuint32(i32 %42, ptr undef), !dbg !3787
  br label %typeswitch.done, !dbg !3751

typeswitch.next22:                                ; preds = %typeassert.next100
  %interface.type104 = extractvalue { ptr, ptr } %1, 0, !dbg !3788
  br i1 false, label %typeassert.ok106, label %typeassert.next107, !dbg !3788

typeassert.next107:                               ; preds = %typeassert.ok106, %typeswitch.next22
  %typeassert.value110 = phi i64 [ 0, %typeswitch.next22 ], [ %unpack.int109, %typeassert.ok106 ], !dbg !3788
  %44 = insertvalue { i64, i1 } undef, i64 %typeassert.value110, 0, !dbg !3788
  %45 = insertvalue { i64, i1 } %44, i1 false, 1, !dbg !3788
  %46 = extractvalue { i64, i1 } %45, 0, !dbg !3788
  %47 = extractvalue { i64, i1 } %45, 1, !dbg !3788
  br i1 %47, label %typeswitch.body23, label %typeswitch.next24, !dbg !3751

typeassert.ok106:                                 ; preds = %typeswitch.next22
  %typeassert.value.ptr108 = extractvalue { ptr, ptr } %1, 1, !dbg !3788
  %unpack.int109 = ptrtoint ptr %typeassert.value.ptr108 to i64, !dbg !3788
  br label %typeassert.next107, !dbg !3788

typeswitch.body23:                                ; preds = %typeassert.next107
    #dbg_value(i64 %46, !3734, !DIExpression(), !3789)
  call void @runtime.printuint64(i64 %46, ptr undef), !dbg !3790
  br label %typeswitch.done, !dbg !3751

typeswitch.next24:                                ; preds = %typeassert.next107
  %interface.type111 = extractvalue { ptr, ptr } %1, 0, !dbg !3791
  br i1 false, label %typeassert.ok113, label %typeassert.next114, !dbg !3791

typeassert.next114:                               ; preds = %typeassert.ok113, %typeswitch.next24
  %typeassert.value117 = phi i64 [ 0, %typeswitch.next24 ], [ %unpack.int116, %typeassert.ok113 ], !dbg !3791
  %48 = insertvalue { i64, i1 } undef, i64 %typeassert.value117, 0, !dbg !3791
  %49 = insertvalue { i64, i1 } %48, i1 false, 1, !dbg !3791
  %50 = extractvalue { i64, i1 } %49, 0, !dbg !3791
  %51 = extractvalue { i64, i1 } %49, 1, !dbg !3791
  br i1 %51, label %typeswitch.body25, label %typeswitch.next26, !dbg !3751

typeassert.ok113:                                 ; preds = %typeswitch.next24
  %typeassert.value.ptr115 = extractvalue { ptr, ptr } %1, 1, !dbg !3791
  %unpack.int116 = ptrtoint ptr %typeassert.value.ptr115 to i64, !dbg !3791
  br label %typeassert.next114, !dbg !3791

typeswitch.body25:                                ; preds = %typeassert.next114
    #dbg_value(i64 %50, !3735, !DIExpression(), !3792)
  call void @runtime.printuintptr(i64 %50, ptr undef), !dbg !3793
  br label %typeswitch.done, !dbg !3751

typeswitch.next26:                                ; preds = %typeassert.next114
  %interface.type118 = extractvalue { ptr, ptr } %1, 0, !dbg !3794
  br i1 false, label %typeassert.ok120, label %typeassert.next121, !dbg !3794

typeassert.next121:                               ; preds = %typeassert.ok120, %typeswitch.next26
  %typeassert.value123 = phi float [ 0.000000e+00, %typeswitch.next26 ], [ %57, %typeassert.ok120 ], !dbg !3748
  %52 = insertvalue { float, i1 } undef, float %typeassert.value123, 0, !dbg !3748
  %53 = insertvalue { float, i1 } %52, i1 false, 1, !dbg !3748
  %54 = extractvalue { float, i1 } %53, 0, !dbg !3794
  %55 = extractvalue { float, i1 } %53, 1, !dbg !3794
  br i1 %55, label %typeswitch.body27, label %typeswitch.next28, !dbg !3751

typeassert.ok120:                                 ; preds = %typeswitch.next26
  %typeassert.value.ptr122 = extractvalue { ptr, ptr } %1, 1, !dbg !3794
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc), !dbg !3748
  store ptr %typeassert.value.ptr122, ptr %unpack.raw.alloc, align 8, !dbg !3748
  %56 = getelementptr inbounds { float }, ptr %unpack.raw.alloc, i32 0, i32 0, !dbg !3748
  %57 = load float, ptr %56, align 4, !dbg !3748
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc), !dbg !3748
  br label %typeassert.next121, !dbg !3748

typeswitch.body27:                                ; preds = %typeassert.next121
    #dbg_value(float %54, !3736, !DIExpression(), !3795)
  call void @runtime.printfloat32(float %54, ptr undef), !dbg !3796
  br label %typeswitch.done, !dbg !3751

typeswitch.next28:                                ; preds = %typeassert.next121
  %interface.type124 = extractvalue { ptr, ptr } %1, 0, !dbg !3797
  br i1 false, label %typeassert.ok126, label %typeassert.next127, !dbg !3797

typeassert.next127:                               ; preds = %typeassert.ok126, %typeswitch.next28
  %typeassert.value130 = phi double [ 0.000000e+00, %typeswitch.next28 ], [ %63, %typeassert.ok126 ], !dbg !3748
  %58 = insertvalue { double, i1 } undef, double %typeassert.value130, 0, !dbg !3748
  %59 = insertvalue { double, i1 } %58, i1 false, 1, !dbg !3748
  %60 = extractvalue { double, i1 } %59, 0, !dbg !3797
  %61 = extractvalue { double, i1 } %59, 1, !dbg !3797
  br i1 %61, label %typeswitch.body29, label %typeswitch.next30, !dbg !3751

typeassert.ok126:                                 ; preds = %typeswitch.next28
  %typeassert.value.ptr128 = extractvalue { ptr, ptr } %1, 1, !dbg !3797
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc129), !dbg !3748
  store ptr %typeassert.value.ptr128, ptr %unpack.raw.alloc129, align 8, !dbg !3748
  %62 = getelementptr inbounds { double }, ptr %unpack.raw.alloc129, i32 0, i32 0, !dbg !3748
  %63 = load double, ptr %62, align 8, !dbg !3748
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc129), !dbg !3748
  br label %typeassert.next127, !dbg !3748

typeswitch.body29:                                ; preds = %typeassert.next127
    #dbg_value(double %60, !3738, !DIExpression(), !3798)
  call void @runtime.printfloat64(double %60, ptr undef), !dbg !3799
  br label %typeswitch.done, !dbg !3751

typeswitch.next30:                                ; preds = %typeassert.next127
  %interface.type131 = extractvalue { ptr, ptr } %1, 0, !dbg !3800
  br i1 false, label %typeassert.ok133, label %typeassert.next134, !dbg !3800

typeassert.next134:                               ; preds = %typeassert.ok133, %typeswitch.next30
  %typeassert.value137 = phi { float, float } [ zeroinitializer, %typeswitch.next30 ], [ %69, %typeassert.ok133 ], !dbg !3748
  %64 = insertvalue { { float, float }, i1 } undef, { float, float } %typeassert.value137, 0, !dbg !3748
  %65 = insertvalue { { float, float }, i1 } %64, i1 false, 1, !dbg !3748
  %66 = extractvalue { { float, float }, i1 } %65, 0, !dbg !3800
  %67 = extractvalue { { float, float }, i1 } %65, 1, !dbg !3800
  br i1 %67, label %typeswitch.body31, label %typeswitch.next32, !dbg !3751

typeassert.ok133:                                 ; preds = %typeswitch.next30
  %typeassert.value.ptr135 = extractvalue { ptr, ptr } %1, 1, !dbg !3800
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc136), !dbg !3748
  store ptr %typeassert.value.ptr135, ptr %unpack.raw.alloc136, align 8, !dbg !3748
  %68 = getelementptr inbounds { { float, float } }, ptr %unpack.raw.alloc136, i32 0, i32 0, !dbg !3748
  %69 = load { float, float }, ptr %68, align 4, !dbg !3748
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc136), !dbg !3748
  br label %typeassert.next134, !dbg !3748

typeswitch.body31:                                ; preds = %typeassert.next134
    #dbg_value({ float, float } %66, !3739, !DIExpression(), !3801)
  %70 = extractvalue { float, float } %66, 0, !dbg !3802
  %71 = extractvalue { float, float } %66, 1, !dbg !3802
  call void @runtime.printcomplex64(float %70, float %71, ptr undef), !dbg !3802
  br label %typeswitch.done, !dbg !3751

typeswitch.next32:                                ; preds = %typeassert.next134
  %interface.type138 = extractvalue { ptr, ptr } %1, 0, !dbg !3803
  br i1 false, label %typeassert.ok140, label %typeassert.next141, !dbg !3803

typeassert.next141:                               ; preds = %typeassert.ok140, %typeswitch.next32
  %typeassert.value143 = phi { double, double } [ zeroinitializer, %typeswitch.next32 ], [ %77, %typeassert.ok140 ], !dbg !3803
  %72 = insertvalue { { double, double }, i1 } undef, { double, double } %typeassert.value143, 0, !dbg !3803
  %73 = insertvalue { { double, double }, i1 } %72, i1 false, 1, !dbg !3803
  %74 = extractvalue { { double, double }, i1 } %73, 0, !dbg !3803
  %75 = extractvalue { { double, double }, i1 } %73, 1, !dbg !3803
  br i1 %75, label %typeswitch.body33, label %typeswitch.next34, !dbg !3751

typeassert.ok140:                                 ; preds = %typeswitch.next32
  %typeassert.value.ptr142 = extractvalue { ptr, ptr } %1, 1, !dbg !3803
  %76 = getelementptr inbounds { { double, double } }, ptr %typeassert.value.ptr142, i32 0, i32 0, !dbg !3803
  %77 = load { double, double }, ptr %76, align 8, !dbg !3803
  br label %typeassert.next141, !dbg !3803

typeswitch.body33:                                ; preds = %typeassert.next141
    #dbg_value({ double, double } %74, !3741, !DIExpression(), !3804)
  %78 = extractvalue { double, double } %74, 0, !dbg !3805
  %79 = extractvalue { double, double } %74, 1, !dbg !3805
  call void @runtime.printcomplex128(double %78, double %79, ptr undef), !dbg !3805
  br label %typeswitch.done, !dbg !3751

typeswitch.next34:                                ; preds = %typeassert.next141
  %interface.type144 = extractvalue { ptr, ptr } %1, 0, !dbg !3806
  %typeassert.ok1 = icmp eq ptr @"reflect/types.type:basic:string", %interface.type144, !dbg !3806
  br i1 %typeassert.ok1, label %typeassert.ok146, label %typeassert.next147, !dbg !3806

typeassert.next147:                               ; preds = %typeassert.ok146, %typeswitch.next34
  %typeassert.value149 = phi %runtime._string [ zeroinitializer, %typeswitch.next34 ], [ %85, %typeassert.ok146 ], !dbg !3806
  %80 = insertvalue { %runtime._string, i1 } undef, %runtime._string %typeassert.value149, 0, !dbg !3806
  %81 = insertvalue { %runtime._string, i1 } %80, i1 %typeassert.ok1, 1, !dbg !3806
  %82 = extractvalue { %runtime._string, i1 } %81, 0, !dbg !3806
  %83 = extractvalue { %runtime._string, i1 } %81, 1, !dbg !3806
  br i1 %83, label %typeswitch.body35, label %typeswitch.next36, !dbg !3751

typeassert.ok146:                                 ; preds = %typeswitch.next34
  %typeassert.value.ptr148 = extractvalue { ptr, ptr } %1, 1, !dbg !3806
  %84 = getelementptr inbounds { %runtime._string }, ptr %typeassert.value.ptr148, i32 0, i32 0, !dbg !3806
  %85 = load %runtime._string, ptr %84, align 8, !dbg !3806
  br label %typeassert.next147, !dbg !3806

typeswitch.body35:                                ; preds = %typeassert.next147
    #dbg_value(%runtime._string %82, !3743, !DIExpression(), !3807)
  %86 = extractvalue %runtime._string %82, 0, !dbg !3808
  %87 = extractvalue %runtime._string %82, 1, !dbg !3808
  call void @runtime.printstring(ptr %86, i64 %87, ptr undef), !dbg !3808
  br label %typeswitch.done, !dbg !3751

typeswitch.next36:                                ; preds = %typeassert.next147
  %interface.type150 = extractvalue { ptr, ptr } %1, 0, !dbg !3809
  %88 = call i1 @"interface:{Error:func:{}{basic:string}}.$typeassert"(ptr %interface.type150), !dbg !3809
  br i1 %88, label %typeassert.ok151, label %typeassert.next152, !dbg !3809

typeassert.next152:                               ; preds = %typeassert.ok151, %typeswitch.next36
  %typeassert.value153 = phi { ptr, ptr } [ zeroinitializer, %typeswitch.next36 ], [ %1, %typeassert.ok151 ], !dbg !3809
  %89 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %typeassert.value153, 0, !dbg !3809
  %90 = insertvalue { { ptr, ptr }, i1 } %89, i1 %88, 1, !dbg !3809
  %91 = extractvalue { { ptr, ptr }, i1 } %90, 0, !dbg !3809
  %92 = extractvalue { { ptr, ptr }, i1 } %90, 1, !dbg !3809
  br i1 %92, label %typeswitch.body37, label %typeswitch.next38, !dbg !3751

typeassert.ok151:                                 ; preds = %typeswitch.next36
  br label %typeassert.next152, !dbg !3809

typeswitch.body37:                                ; preds = %typeassert.next152
    #dbg_value({ ptr, ptr } %91, !3744, !DIExpression(), !3810)
  %invoke.func.typecode = extractvalue { ptr, ptr } %91, 0, !dbg !3811
  %invoke.func.value = extractvalue { ptr, ptr } %91, 1, !dbg !3811
  %93 = call %runtime._string @"interface:{Error:func:{}{basic:string}}.Error$invoke"(ptr %invoke.func.value, ptr %invoke.func.typecode, ptr undef), !dbg !3811
  %94 = extractvalue %runtime._string %93, 0, !dbg !3812
  %95 = extractvalue %runtime._string %93, 1, !dbg !3812
  call void @runtime.printstring(ptr %94, i64 %95, ptr undef), !dbg !3812
  br label %typeswitch.done, !dbg !3751

typeswitch.next38:                                ; preds = %typeassert.next152
  %interface.type154 = extractvalue { ptr, ptr } %1, 0, !dbg !3813
  %96 = call i1 @"interface:{String:func:{}{basic:string}}.$typeassert"(ptr %interface.type154), !dbg !3813
  br i1 %96, label %typeassert.ok155, label %typeassert.next156, !dbg !3813

typeassert.next156:                               ; preds = %typeassert.ok155, %typeswitch.next38
  %typeassert.value157 = phi { ptr, ptr } [ zeroinitializer, %typeswitch.next38 ], [ %1, %typeassert.ok155 ], !dbg !3813
  %97 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %typeassert.value157, 0, !dbg !3813
  %98 = insertvalue { { ptr, ptr }, i1 } %97, i1 %96, 1, !dbg !3813
  %99 = extractvalue { { ptr, ptr }, i1 } %98, 0, !dbg !3813
  %100 = extractvalue { { ptr, ptr }, i1 } %98, 1, !dbg !3813
  br i1 %100, label %typeswitch.body39, label %typeswitch.next40, !dbg !3751

typeassert.ok155:                                 ; preds = %typeswitch.next38
  br label %typeassert.next156, !dbg !3813

typeswitch.body39:                                ; preds = %typeassert.next156
    #dbg_value({ ptr, ptr } %99, !3745, !DIExpression(), !3814)
  %invoke.func.typecode158 = extractvalue { ptr, ptr } %99, 0, !dbg !3815
  %invoke.func.value159 = extractvalue { ptr, ptr } %99, 1, !dbg !3815
  %101 = call %runtime._string @"interface:{String:func:{}{basic:string}}.String$invoke"(ptr %invoke.func.value159, ptr %invoke.func.typecode158, ptr undef), !dbg !3815
  %102 = extractvalue %runtime._string %101, 0, !dbg !3816
  %103 = extractvalue %runtime._string %101, 1, !dbg !3816
  call void @runtime.printstring(ptr %102, i64 %103, ptr undef), !dbg !3816
  br label %typeswitch.done, !dbg !3751

typeswitch.next40:                                ; preds = %typeassert.next156
  %msg = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 389 to ptr), ptr undef), !dbg !3817
  store { ptr, ptr } %1, ptr %msg, align 8, !dbg !3817
  store { ptr, ptr } zeroinitializer, ptr %itf, align 8, !dbg !3748
  %104 = load { ptr, ptr }, ptr %msg, align 8, !dbg !3818
  store { ptr, ptr } %104, ptr %itf, align 8, !dbg !3819
    #dbg_value({ ptr, ptr } %104, !3747, !DIExpression(), !3819)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !3820
  %105 = getelementptr inbounds { ptr, ptr }, ptr %itf, i32 0, i32 0, !dbg !3821
  %106 = icmp eq ptr %105, null, !dbg !3821
  br i1 %106, label %deref.throw, label %deref.next, !dbg !3821

deref.next:                                       ; preds = %typeswitch.next40
  %107 = load ptr, ptr %105, align 8, !dbg !3821
  %108 = ptrtoint ptr %107 to i64, !dbg !3822
  call void @runtime.printuintptr(i64 %108, ptr undef), !dbg !3823
  call void @runtime.putchar(i8 58, ptr undef), !dbg !3824
  %109 = getelementptr inbounds { ptr, ptr }, ptr %itf, i32 0, i32 1, !dbg !3825
  %110 = icmp eq ptr %109, null, !dbg !3825
  br i1 %110, label %deref.throw160, label %deref.next161, !dbg !3825

deref.next161:                                    ; preds = %deref.next
  %111 = load ptr, ptr %109, align 8, !dbg !3825
  %112 = ptrtoint ptr %111 to i64, !dbg !3826
  call void @runtime.printptr(i64 %112, ptr undef), !dbg !3827
  call void @runtime.putchar(i8 41, ptr undef), !dbg !3828
  br label %typeswitch.done, !dbg !3751

deref.throw:                                      ; preds = %typeswitch.next40
  call void @runtime.nilPanic(ptr undef), !dbg !3821
  unreachable, !dbg !3821

deref.throw160:                                   ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !3825
  unreachable, !dbg !3825
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printbool(i1 %b, ptr %context) unnamed_addr #1 !dbg !3829 {
entry:
    #dbg_value(i1 %b, !3833, !DIExpression(), !3834)
    #dbg_value(i1 %b, !3833, !DIExpression(), !3835)
  br i1 %b, label %if.then, label %if.else, !dbg !3836

if.then:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.46", i64 4, ptr undef), !dbg !3837
  br label %if.done, !dbg !3836

if.done:                                          ; preds = %if.else, %if.then
  ret void, !dbg !3838

if.else:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.47", i64 5, ptr undef), !dbg !3839
  br label %if.done, !dbg !3836
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint64(i64 %n, ptr %context) unnamed_addr #1 !dbg !3840 {
entry:
    #dbg_value(i64 %n, !3844, !DIExpression(), !3845)
    #dbg_value(i64 %n, !3844, !DIExpression(), !3846)
  %0 = icmp slt i64 %n, 0, !dbg !3847
  br i1 %0, label %if.then, label %if.done, !dbg !3848

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3849
    #dbg_value(i64 %n, !3844, !DIExpression(), !3850)
  %1 = sub i64 0, %n, !dbg !3851
    #dbg_value(i64 %1, !3844, !DIExpression(), !3852)
  br label %if.done, !dbg !3848

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i64 [ %n, %entry ], [ %1, %if.then ], !dbg !3853
    #dbg_value(i64 %2, !3844, !DIExpression(), !3854)
  call void @runtime.printuint64(i64 %2, ptr undef), !dbg !3855
  ret void, !dbg !3856
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint32(i32 %n, ptr %context) unnamed_addr #1 !dbg !3857 {
entry:
    #dbg_value(i32 %n, !3859, !DIExpression(), !3860)
    #dbg_value(i32 %n, !3859, !DIExpression(), !3861)
  %0 = icmp slt i32 %n, 0, !dbg !3862
  br i1 %0, label %if.then, label %if.done, !dbg !3863

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3864
    #dbg_value(i32 %n, !3859, !DIExpression(), !3865)
  %1 = sub i32 0, %n, !dbg !3866
    #dbg_value(i32 %1, !3859, !DIExpression(), !3867)
  br label %if.done, !dbg !3863

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i32 [ %n, %entry ], [ %1, %if.then ], !dbg !3868
    #dbg_value(i32 %2, !3859, !DIExpression(), !3869)
  call void @runtime.printuint32(i32 %2, ptr undef), !dbg !3870
  ret void, !dbg !3871
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint8(i8 %n, ptr %context) unnamed_addr #1 !dbg !3872 {
entry:
    #dbg_value(i8 %n, !3876, !DIExpression(), !3877)
  br i1 true, label %if.then, label %if.else, !dbg !3878

if.then:                                          ; preds = %entry
    #dbg_value(i8 %n, !3876, !DIExpression(), !3879)
  %0 = sext i8 %n to i32, !dbg !3880
  call void @runtime.printint32(i32 %0, ptr undef), !dbg !3881
  br label %if.done, !dbg !3878

if.done:                                          ; preds = %if.done2, %if.then
  ret void, !dbg !3882

if.else:                                          ; preds = %entry
    #dbg_value(i8 %n, !3876, !DIExpression(), !3883)
  %1 = icmp slt i8 %n, 0, !dbg !3884
  br i1 %1, label %if.then1, label %if.done2, !dbg !3878

if.then1:                                         ; preds = %if.else
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3885
    #dbg_value(i8 %n, !3876, !DIExpression(), !3886)
  %2 = sub i8 0, %n, !dbg !3887
    #dbg_value(i8 %2, !3876, !DIExpression(), !3888)
  br label %if.done2, !dbg !3878

if.done2:                                         ; preds = %if.then1, %if.else
  %3 = phi i8 [ %n, %if.else ], [ %2, %if.then1 ], !dbg !3889
    #dbg_value(i8 %3, !3876, !DIExpression(), !3890)
  call void @runtime.printuint8(i8 %3, ptr undef), !dbg !3891
  br label %if.done, !dbg !3878
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint16(i16 %n, ptr %context) unnamed_addr #1 !dbg !3892 {
entry:
    #dbg_value(i16 %n, !3896, !DIExpression(), !3897)
    #dbg_value(i16 %n, !3896, !DIExpression(), !3898)
  %0 = sext i16 %n to i32, !dbg !3899
  call void @runtime.printint32(i32 %0, ptr undef), !dbg !3900
  ret void, !dbg !3901
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint64(i64 %n, ptr %context) unnamed_addr #1 !dbg !3902 {
entry:
    #dbg_value(i64 %n, !3904, !DIExpression(), !3909)
  %digits = alloca [20 x i8], align 1, !dbg !3910
  store [20 x i8] zeroinitializer, ptr %digits, align 1, !dbg !3910
    #dbg_value(i64 19, !3905, !DIExpression(), !3911)
    #dbg_value(i64 19, !3906, !DIExpression(), !3912)
  br label %for.loop, !dbg !3913

for.loop:                                         ; preds = %if.done, %entry
  %0 = phi i64 [ %n, %entry ], [ %10, %if.done ], !dbg !3914
  %1 = phi i64 [ 19, %entry ], [ %9, %if.done ], !dbg !3911
  %2 = phi i64 [ 19, %entry ], [ %11, %if.done ], !dbg !3912
    #dbg_value(i64 %2, !3906, !DIExpression(), !3915)
  %3 = icmp sge i64 %2, 0, !dbg !3916
  br i1 %3, label %for.body, label %for.done, !dbg !3913

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !3904, !DIExpression(), !3917)
  %4 = urem i64 %0, 10, !dbg !3918
  %5 = add i64 %4, 48, !dbg !3919
  %6 = trunc i64 %5 to i8, !dbg !3920
    #dbg_value(i8 %6, !3907, !DIExpression(), !3921)
    #dbg_value(i64 %2, !3906, !DIExpression(), !3922)
    #dbg_value(i8 %6, !3907, !DIExpression(), !3923)
  %7 = getelementptr inbounds [20 x i8], ptr %digits, i32 0, i64 %2, !dbg !3924
  store i8 %6, ptr %7, align 1, !dbg !3924
    #dbg_value(i8 %6, !3907, !DIExpression(), !3925)
  %8 = icmp ne i8 %6, 48, !dbg !3926
  br i1 %8, label %if.then, label %if.done, !dbg !3913

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %2, !3906, !DIExpression(), !3927)
    #dbg_value(i64 %2, !3905, !DIExpression(), !3928)
  br label %if.done, !dbg !3913

if.done:                                          ; preds = %if.then, %for.body
  %9 = phi i64 [ %1, %for.body ], [ %2, %if.then ], !dbg !3911
  %10 = udiv i64 %0, 10, !dbg !3929
    #dbg_value(i64 %10, !3904, !DIExpression(), !3929)
  %11 = sub i64 %2, 1, !dbg !3930
    #dbg_value(i64 %11, !3906, !DIExpression(), !3930)
  br label %for.loop, !dbg !3913

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !3905, !DIExpression(), !3931)
    #dbg_value(i64 %1, !3908, !DIExpression(), !3932)
  br label %for.loop1, !dbg !3913

for.loop1:                                        ; preds = %for.body2, %for.done
  %12 = phi i64 [ %1, %for.done ], [ %16, %for.body2 ], !dbg !3932
    #dbg_value(i64 %12, !3908, !DIExpression(), !3933)
  %13 = icmp slt i64 %12, 20, !dbg !3934
  br i1 %13, label %for.body2, label %for.done3, !dbg !3913

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %12, !3908, !DIExpression(), !3935)
  %14 = getelementptr inbounds [20 x i8], ptr %digits, i32 0, i64 %12, !dbg !3936
  %15 = load i8, ptr %14, align 1, !dbg !3936
  call void @runtime.putchar(i8 %15, ptr undef), !dbg !3937
  %16 = add i64 %12, 1, !dbg !3938
    #dbg_value(i64 %16, !3908, !DIExpression(), !3938)
  br label %for.loop1, !dbg !3913

for.done3:                                        ; preds = %for.loop1
  ret void, !dbg !3939
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint32(i32 %n, ptr %context) unnamed_addr #1 !dbg !3940 {
entry:
    #dbg_value(i32 %n, !3942, !DIExpression(), !3943)
    #dbg_value(i32 %n, !3942, !DIExpression(), !3944)
  %0 = zext i32 %n to i64, !dbg !3945
  call void @runtime.printuint64(i64 %0, ptr undef), !dbg !3946
  ret void, !dbg !3947
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint8(i8 %n, ptr %context) unnamed_addr #1 !dbg !3948 {
entry:
    #dbg_value(i8 %n, !3952, !DIExpression(), !3954)
  br i1 true, label %if.then, label %if.else, !dbg !3955

if.then:                                          ; preds = %entry
    #dbg_value(i8 %n, !3952, !DIExpression(), !3956)
  %0 = zext i8 %n to i32, !dbg !3957
  call void @runtime.printuint32(i32 %0, ptr undef), !dbg !3958
  br label %if.done, !dbg !3955

if.done:                                          ; preds = %if.done2, %if.then
  ret void, !dbg !3959

if.else:                                          ; preds = %entry
    #dbg_value(i8 %n, !3952, !DIExpression(), !3960)
  %1 = udiv i8 %n, 10, !dbg !3961
    #dbg_value(i8 %1, !3953, !DIExpression(), !3962)
    #dbg_value(i8 %1, !3953, !DIExpression(), !3963)
  %2 = icmp ne i8 %1, 0, !dbg !3964
  br i1 %2, label %if.then1, label %if.done2, !dbg !3955

if.then1:                                         ; preds = %if.else
    #dbg_value(i8 %1, !3953, !DIExpression(), !3965)
  call void @runtime.printuint8(i8 %1, ptr undef), !dbg !3966
  br label %if.done2, !dbg !3955

if.done2:                                         ; preds = %if.then1, %if.else
    #dbg_value(i8 %n, !3952, !DIExpression(), !3967)
  %3 = urem i8 %n, 10, !dbg !3968
  %4 = add i8 %3, 48, !dbg !3969
  call void @runtime.putchar(i8 %4, ptr undef), !dbg !3970
  br label %if.done, !dbg !3955
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint16(i16 %n, ptr %context) unnamed_addr #1 !dbg !3971 {
entry:
    #dbg_value(i16 %n, !3975, !DIExpression(), !3976)
    #dbg_value(i16 %n, !3975, !DIExpression(), !3977)
  %0 = zext i16 %n to i32, !dbg !3978
  call void @runtime.printuint32(i32 %0, ptr undef), !dbg !3979
  ret void, !dbg !3980
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuintptr(i64 %n, ptr %context) unnamed_addr #1 !dbg !3981 {
entry:
    #dbg_value(i64 %n, !3983, !DIExpression(), !3984)
  br i1 false, label %switch.body, label %switch.next, !dbg !3985

switch.body:                                      ; preds = %entry
    #dbg_value(i64 %n, !3983, !DIExpression(), !3986)
  %0 = trunc i64 %n to i16, !dbg !3987
  call void @runtime.printuint16(i16 %0, ptr undef), !dbg !3988
  br label %switch.done, !dbg !3985

switch.done:                                      ; preds = %switch.body3, %switch.next2, %switch.body1, %switch.body
  ret void, !dbg !3989

switch.next:                                      ; preds = %entry
  br i1 false, label %switch.body1, label %switch.next2, !dbg !3985

switch.body1:                                     ; preds = %switch.next
    #dbg_value(i64 %n, !3983, !DIExpression(), !3990)
  %1 = trunc i64 %n to i32, !dbg !3991
  call void @runtime.printuint32(i32 %1, ptr undef), !dbg !3992
  br label %switch.done, !dbg !3985

switch.next2:                                     ; preds = %switch.next
  br i1 true, label %switch.body3, label %switch.done, !dbg !3985

switch.body3:                                     ; preds = %switch.next2
    #dbg_value(i64 %n, !3983, !DIExpression(), !3993)
  call void @runtime.printuint64(i64 %n, ptr undef), !dbg !3994
  br label %switch.done, !dbg !3985
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printfloat32(float %v, ptr %context) unnamed_addr #1 !dbg !3995 {
entry:
    #dbg_value(float %v, !3999, !DIExpression(), !4008)
    #dbg_value(float %v, !3999, !DIExpression(), !4009)
    #dbg_value(float %v, !3999, !DIExpression(), !4010)
  %index.alloca = alloca [14 x i8], align 1, !dbg !4011
  %buf = alloca [14 x i8], align 1, !dbg !4011
  %0 = fcmp une float %v, %v, !dbg !4011
  br i1 %0, label %switch.body, label %switch.next, !dbg !4012

switch.body:                                      ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.35", i64 3, ptr undef), !dbg !4013
  ret void, !dbg !4014

switch.next:                                      ; preds = %entry
    #dbg_value(float %v, !3999, !DIExpression(), !4015)
    #dbg_value(float %v, !3999, !DIExpression(), !4016)
  %1 = fadd float %v, %v, !dbg !4017
    #dbg_value(float %v, !3999, !DIExpression(), !4018)
  %2 = fcmp oeq float %1, %v, !dbg !4019
  br i1 %2, label %binop.rhs, label %binop.done, !dbg !4012

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(float %v, !3999, !DIExpression(), !4020)
  %3 = fcmp ogt float %v, 0.000000e+00, !dbg !4021
  br label %binop.done, !dbg !4012

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ false, %switch.next ], [ %3, %binop.rhs ], !dbg !4022
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4012

switch.body1:                                     ; preds = %binop.done
  call void @runtime.printstring(ptr @"runtime$string.36", i64 4, ptr undef), !dbg !4023
  ret void, !dbg !4024

switch.next2:                                     ; preds = %binop.done
    #dbg_value(float %v, !3999, !DIExpression(), !4025)
    #dbg_value(float %v, !3999, !DIExpression(), !4026)
  %5 = fadd float %v, %v, !dbg !4027
    #dbg_value(float %v, !3999, !DIExpression(), !4028)
  %6 = fcmp oeq float %5, %v, !dbg !4029
  br i1 %6, label %binop.rhs3, label %binop.done4, !dbg !4012

binop.rhs3:                                       ; preds = %switch.next2
    #dbg_value(float %v, !3999, !DIExpression(), !4030)
  %7 = fcmp olt float %v, 0.000000e+00, !dbg !4031
  br label %binop.done4, !dbg !4012

binop.done4:                                      ; preds = %binop.rhs3, %switch.next2
  %8 = phi i1 [ false, %switch.next2 ], [ %7, %binop.rhs3 ], !dbg !4032
  br i1 %8, label %switch.body5, label %switch.next6, !dbg !4012

switch.body5:                                     ; preds = %binop.done4
  call void @runtime.printstring(ptr @"runtime$string.37", i64 4, ptr undef), !dbg !4033
  ret void, !dbg !4034

switch.next6:                                     ; preds = %binop.done4
  store [14 x i8] zeroinitializer, ptr %buf, align 1, !dbg !4011
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4035
  store i8 43, ptr %9, align 1, !dbg !4035
    #dbg_value(i64 0, !4000, !DIExpression(), !4036)
    #dbg_value(float %v, !3999, !DIExpression(), !4037)
  %10 = fcmp oeq float %v, 0.000000e+00, !dbg !4038
  br i1 %10, label %if.then, label %if.else, !dbg !4012

if.then:                                          ; preds = %switch.next6
    #dbg_value(float %v, !3999, !DIExpression(), !4039)
  %11 = fdiv float 1.000000e+00, %v, !dbg !4040
  %12 = fcmp olt float %11, 0.000000e+00, !dbg !4041
  br i1 %12, label %if.then7, label %if.done, !dbg !4012

if.then7:                                         ; preds = %if.then
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4042
  store i8 45, ptr %13, align 1, !dbg !4042
  br label %if.done, !dbg !4012

if.done:                                          ; preds = %if.then19, %for.done18, %if.then7, %if.then
  %14 = phi float [ %v, %if.then ], [ %84, %for.done18 ], [ %v, %if.then7 ], [ %87, %if.then19 ], !dbg !4043
  %15 = phi i64 [ 0, %if.then ], [ %75, %for.done18 ], [ 0, %if.then7 ], [ %86, %if.then19 ], !dbg !4036
    #dbg_value(i64 0, !4001, !DIExpression(), !4044)
  br label %for.loop, !dbg !4012

for.loop:                                         ; preds = %lookup.next, %if.done
  %16 = phi float [ %14, %if.done ], [ %27, %lookup.next ], !dbg !4043
  %17 = phi i64 [ 0, %if.done ], [ %28, %lookup.next ], !dbg !4044
    #dbg_value(i64 %17, !4001, !DIExpression(), !4045)
  %18 = icmp slt i64 %17, 7, !dbg !4046
  br i1 %18, label %for.body, label %for.done, !dbg !4012

for.body:                                         ; preds = %for.loop
    #dbg_value(float %16, !3999, !DIExpression(), !4047)
  %abovemin = fcmp ole float 0xC3E0000000000000, %16, !dbg !4048
  %belowmax = fcmp ole float %16, 0x43DFFFFFC0000000, !dbg !4048
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4048
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4048
  %isnan = fcmp uno float %16, %16, !dbg !4048
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4048
  %normal = fptosi float %16 to i64, !dbg !4048
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4048
    #dbg_value(i64 %19, !4002, !DIExpression(), !4049)
    #dbg_value(i64 %17, !4001, !DIExpression(), !4050)
  %20 = add i64 %17, 2, !dbg !4051
    #dbg_value(i64 %19, !4002, !DIExpression(), !4052)
  %21 = add i64 %19, 48, !dbg !4053
  %22 = trunc i64 %21 to i8, !dbg !4054
  %23 = icmp uge i64 %20, 14, !dbg !4055
  br i1 %23, label %lookup.throw, label %lookup.next, !dbg !4055

lookup.next:                                      ; preds = %for.body
  %24 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 %20, !dbg !4055
  store i8 %22, ptr %24, align 1, !dbg !4055
    #dbg_value(i64 %19, !4002, !DIExpression(), !4056)
  %25 = sitofp i64 %19 to float, !dbg !4057
  %26 = fsub float %16, %25, !dbg !4058
    #dbg_value(float %26, !3999, !DIExpression(), !4058)
  %27 = fmul float %26, 1.000000e+01, !dbg !4059
    #dbg_value(float %27, !3999, !DIExpression(), !4059)
  %28 = add i64 %17, 1, !dbg !4060
    #dbg_value(i64 %28, !4001, !DIExpression(), !4060)
  br label %for.loop, !dbg !4012

for.done:                                         ; preds = %for.loop
  %29 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4061
  %30 = load i8, ptr %29, align 1, !dbg !4061
  %31 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 1, !dbg !4062
  store i8 %30, ptr %31, align 1, !dbg !4062
  %32 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4063
  store i8 46, ptr %32, align 1, !dbg !4063
  %33 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 9, !dbg !4064
  store i8 101, ptr %33, align 1, !dbg !4064
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4065
  store i8 43, ptr %34, align 1, !dbg !4065
    #dbg_value(i64 %15, !4000, !DIExpression(), !4066)
  %35 = icmp slt i64 %15, 0, !dbg !4067
  br i1 %35, label %if.then8, label %if.done9, !dbg !4012

if.then8:                                         ; preds = %for.done
    #dbg_value(i64 %15, !4000, !DIExpression(), !4068)
  %36 = sub i64 0, %15, !dbg !4069
    #dbg_value(i64 %36, !4000, !DIExpression(), !4070)
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4071
  store i8 45, ptr %37, align 1, !dbg !4071
  br label %if.done9, !dbg !4012

if.done9:                                         ; preds = %if.then8, %for.done
  %38 = phi i64 [ %15, %for.done ], [ %36, %if.then8 ], !dbg !4036
    #dbg_value(i64 %38, !4000, !DIExpression(), !4072)
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !4073
  %40 = and i1 false, %39, !dbg !4073
  %41 = select i1 %40, i64 1, i64 100, !dbg !4073
  %42 = sdiv i64 %38, %41, !dbg !4073
  %43 = trunc i64 %42 to i8, !dbg !4074
  %44 = add i8 %43, 48, !dbg !4075
  %45 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 11, !dbg !4076
  store i8 %44, ptr %45, align 1, !dbg !4076
    #dbg_value(i64 %38, !4000, !DIExpression(), !4077)
  %46 = icmp eq i64 %38, -9223372036854775808, !dbg !4078
  %47 = and i1 false, %46, !dbg !4078
  %48 = select i1 %47, i64 1, i64 10, !dbg !4078
  %49 = sdiv i64 %38, %48, !dbg !4078
  %50 = trunc i64 %49 to i8, !dbg !4079
  %51 = urem i8 %50, 10, !dbg !4080
  %52 = add i8 %51, 48, !dbg !4081
  %53 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 12, !dbg !4082
  store i8 %52, ptr %53, align 1, !dbg !4082
    #dbg_value(i64 %38, !4000, !DIExpression(), !4083)
  %54 = icmp eq i64 %38, -9223372036854775808, !dbg !4084
  %55 = and i1 false, %54, !dbg !4084
  %56 = select i1 %55, i64 1, i64 10, !dbg !4084
  %57 = srem i64 %38, %56, !dbg !4084
  %58 = trunc i64 %57 to i8, !dbg !4085
  %59 = add i8 %58, 48, !dbg !4086
  %60 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 13, !dbg !4087
  store i8 %59, ptr %60, align 1, !dbg !4087
  %61 = load [14 x i8], ptr %buf, align 1, !dbg !4088
    #dbg_value([14 x i8] %61, !4003, !DIExpression(), !4088)
  br label %rangeindex.loop, !dbg !4012

rangeindex.loop:                                  ; preds = %lookup.next21, %if.done9
  %62 = phi i64 [ -1, %if.done9 ], [ %63, %lookup.next21 ], !dbg !4012
  %63 = add i64 %62, 1, !dbg !4012
  %64 = icmp slt i64 %63, 14, !dbg !4012
  br i1 %64, label %rangeindex.body, label %rangeindex.done, !dbg !4012

rangeindex.body:                                  ; preds = %rangeindex.loop
  %65 = icmp uge i64 %63, 14, !dbg !4088
  br i1 %65, label %lookup.throw20, label %lookup.next21, !dbg !4088

lookup.next21:                                    ; preds = %rangeindex.body
  call void @llvm.lifetime.start.p0(i64 14, ptr %index.alloca), !dbg !4011
  store [14 x i8] %61, ptr %index.alloca, align 1, !dbg !4011
  %index.gep = getelementptr inbounds [14 x i8], ptr %index.alloca, i32 0, i64 %63, !dbg !4011
  %index.load = load i8, ptr %index.gep, align 1, !dbg !4011
  call void @llvm.lifetime.end.p0(i64 14, ptr %index.alloca), !dbg !4011
    #dbg_value(i8 %index.load, !4005, !DIExpression(), !4089)
    #dbg_value(i8 %index.load, !4005, !DIExpression(), !4090)
  call void @runtime.putchar(i8 %index.load, ptr undef), !dbg !4091
  br label %rangeindex.loop, !dbg !4012

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret void, !dbg !4092

if.else:                                          ; preds = %switch.next6
    #dbg_value(float %v, !3999, !DIExpression(), !4093)
  %66 = fcmp olt float %v, 0.000000e+00, !dbg !4094
  br i1 %66, label %if.then10, label %for.loop11, !dbg !4012

if.then10:                                        ; preds = %if.else
    #dbg_value(float %v, !3999, !DIExpression(), !4095)
  %67 = fneg float %v, !dbg !4096
    #dbg_value(float %67, !3999, !DIExpression(), !4097)
  %68 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4098
  store i8 45, ptr %68, align 1, !dbg !4098
  br label %for.loop11, !dbg !4012

for.loop11:                                       ; preds = %for.body12, %if.then10, %if.else
  %69 = phi float [ %v, %if.else ], [ %73, %for.body12 ], [ %67, %if.then10 ], !dbg !4043
  %70 = phi i64 [ 0, %if.else ], [ %72, %for.body12 ], [ 0, %if.then10 ], !dbg !4036
    #dbg_value(float %69, !3999, !DIExpression(), !4099)
  %71 = fcmp oge float %69, 1.000000e+01, !dbg !4100
  br i1 %71, label %for.body12, label %for.loop13, !dbg !4012

for.body12:                                       ; preds = %for.loop11
  %72 = add i64 %70, 1, !dbg !4101
    #dbg_value(i64 %72, !4000, !DIExpression(), !4101)
  %73 = fdiv float %69, 1.000000e+01, !dbg !4102
    #dbg_value(float %73, !3999, !DIExpression(), !4102)
  br label %for.loop11, !dbg !4012

for.loop13:                                       ; preds = %for.body14, %for.loop11
  %74 = phi float [ %69, %for.loop11 ], [ %78, %for.body14 ], !dbg !4043
  %75 = phi i64 [ %70, %for.loop11 ], [ %77, %for.body14 ], !dbg !4036
    #dbg_value(float %74, !3999, !DIExpression(), !4103)
  %76 = fcmp olt float %74, 1.000000e+00, !dbg !4104
  br i1 %76, label %for.body14, label %for.done15, !dbg !4012

for.body14:                                       ; preds = %for.loop13
  %77 = sub i64 %75, 1, !dbg !4105
    #dbg_value(i64 %77, !4000, !DIExpression(), !4105)
  %78 = fmul float %74, 1.000000e+01, !dbg !4106
    #dbg_value(float %78, !3999, !DIExpression(), !4106)
  br label %for.loop13, !dbg !4012

for.done15:                                       ; preds = %for.loop13
    #dbg_value(float 5.000000e+00, !4006, !DIExpression(), !4107)
    #dbg_value(i64 0, !4007, !DIExpression(), !4108)
  br label %for.loop16, !dbg !4012

for.loop16:                                       ; preds = %for.body17, %for.done15
  %79 = phi float [ 5.000000e+00, %for.done15 ], [ %82, %for.body17 ], !dbg !4107
  %80 = phi i64 [ 0, %for.done15 ], [ %83, %for.body17 ], !dbg !4108
    #dbg_value(i64 %80, !4007, !DIExpression(), !4109)
  %81 = icmp slt i64 %80, 7, !dbg !4110
  br i1 %81, label %for.body17, label %for.done18, !dbg !4012

for.body17:                                       ; preds = %for.loop16
  %82 = fdiv float %79, 1.000000e+01, !dbg !4111
    #dbg_value(float %82, !4006, !DIExpression(), !4111)
  %83 = add i64 %80, 1, !dbg !4112
    #dbg_value(i64 %83, !4007, !DIExpression(), !4112)
  br label %for.loop16, !dbg !4012

for.done18:                                       ; preds = %for.loop16
    #dbg_value(float %79, !4006, !DIExpression(), !4113)
  %84 = fadd float %74, %79, !dbg !4114
    #dbg_value(float %84, !3999, !DIExpression(), !4114)
    #dbg_value(float %84, !3999, !DIExpression(), !4115)
  %85 = fcmp oge float %84, 1.000000e+01, !dbg !4116
  br i1 %85, label %if.then19, label %if.done, !dbg !4012

if.then19:                                        ; preds = %for.done18
  %86 = add i64 %75, 1, !dbg !4117
    #dbg_value(i64 %86, !4000, !DIExpression(), !4117)
  %87 = fdiv float %84, 1.000000e+01, !dbg !4118
    #dbg_value(float %87, !3999, !DIExpression(), !4118)
  br label %if.done, !dbg !4012

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4055
  unreachable, !dbg !4055

lookup.throw20:                                   ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4088
  unreachable, !dbg !4088
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printfloat64(double %v, ptr %context) unnamed_addr #1 !dbg !4119 {
entry:
    #dbg_value(double %v, !4121, !DIExpression(), !4129)
    #dbg_value(double %v, !4121, !DIExpression(), !4130)
    #dbg_value(double %v, !4121, !DIExpression(), !4131)
  %index.alloca = alloca [14 x i8], align 1, !dbg !4132
  %buf = alloca [14 x i8], align 1, !dbg !4132
  %0 = fcmp une double %v, %v, !dbg !4132
  br i1 %0, label %switch.body, label %switch.next, !dbg !4133

switch.body:                                      ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.38", i64 3, ptr undef), !dbg !4134
  ret void, !dbg !4135

switch.next:                                      ; preds = %entry
    #dbg_value(double %v, !4121, !DIExpression(), !4136)
    #dbg_value(double %v, !4121, !DIExpression(), !4137)
  %1 = fadd double %v, %v, !dbg !4138
    #dbg_value(double %v, !4121, !DIExpression(), !4139)
  %2 = fcmp oeq double %1, %v, !dbg !4140
  br i1 %2, label %binop.rhs, label %binop.done, !dbg !4133

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(double %v, !4121, !DIExpression(), !4141)
  %3 = fcmp ogt double %v, 0.000000e+00, !dbg !4142
  br label %binop.done, !dbg !4133

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ false, %switch.next ], [ %3, %binop.rhs ], !dbg !4143
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4133

switch.body1:                                     ; preds = %binop.done
  call void @runtime.printstring(ptr @"runtime$string.39", i64 4, ptr undef), !dbg !4144
  ret void, !dbg !4145

switch.next2:                                     ; preds = %binop.done
    #dbg_value(double %v, !4121, !DIExpression(), !4146)
    #dbg_value(double %v, !4121, !DIExpression(), !4147)
  %5 = fadd double %v, %v, !dbg !4148
    #dbg_value(double %v, !4121, !DIExpression(), !4149)
  %6 = fcmp oeq double %5, %v, !dbg !4150
  br i1 %6, label %binop.rhs3, label %binop.done4, !dbg !4133

binop.rhs3:                                       ; preds = %switch.next2
    #dbg_value(double %v, !4121, !DIExpression(), !4151)
  %7 = fcmp olt double %v, 0.000000e+00, !dbg !4152
  br label %binop.done4, !dbg !4133

binop.done4:                                      ; preds = %binop.rhs3, %switch.next2
  %8 = phi i1 [ false, %switch.next2 ], [ %7, %binop.rhs3 ], !dbg !4153
  br i1 %8, label %switch.body5, label %switch.next6, !dbg !4133

switch.body5:                                     ; preds = %binop.done4
  call void @runtime.printstring(ptr @"runtime$string.40", i64 4, ptr undef), !dbg !4154
  ret void, !dbg !4155

switch.next6:                                     ; preds = %binop.done4
  store [14 x i8] zeroinitializer, ptr %buf, align 1, !dbg !4132
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4156
  store i8 43, ptr %9, align 1, !dbg !4156
    #dbg_value(i64 0, !4122, !DIExpression(), !4157)
    #dbg_value(double %v, !4121, !DIExpression(), !4158)
  %10 = fcmp oeq double %v, 0.000000e+00, !dbg !4159
  br i1 %10, label %if.then, label %if.else, !dbg !4133

if.then:                                          ; preds = %switch.next6
    #dbg_value(double %v, !4121, !DIExpression(), !4160)
  %11 = fdiv double 1.000000e+00, %v, !dbg !4161
  %12 = fcmp olt double %11, 0.000000e+00, !dbg !4162
  br i1 %12, label %if.then7, label %if.done, !dbg !4133

if.then7:                                         ; preds = %if.then
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4163
  store i8 45, ptr %13, align 1, !dbg !4163
  br label %if.done, !dbg !4133

if.done:                                          ; preds = %if.then19, %for.done18, %if.then7, %if.then
  %14 = phi double [ %v, %if.then ], [ %84, %for.done18 ], [ %v, %if.then7 ], [ %87, %if.then19 ], !dbg !4164
  %15 = phi i64 [ 0, %if.then ], [ %75, %for.done18 ], [ 0, %if.then7 ], [ %86, %if.then19 ], !dbg !4157
    #dbg_value(i64 0, !4123, !DIExpression(), !4165)
  br label %for.loop, !dbg !4133

for.loop:                                         ; preds = %lookup.next, %if.done
  %16 = phi double [ %14, %if.done ], [ %27, %lookup.next ], !dbg !4164
  %17 = phi i64 [ 0, %if.done ], [ %28, %lookup.next ], !dbg !4165
    #dbg_value(i64 %17, !4123, !DIExpression(), !4166)
  %18 = icmp slt i64 %17, 7, !dbg !4167
  br i1 %18, label %for.body, label %for.done, !dbg !4133

for.body:                                         ; preds = %for.loop
    #dbg_value(double %16, !4121, !DIExpression(), !4168)
  %abovemin = fcmp ole double 0xC3E0000000000000, %16, !dbg !4169
  %belowmax = fcmp ole double %16, 0x43DFFFFFFFFFFFFE, !dbg !4169
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4169
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4169
  %isnan = fcmp uno double %16, %16, !dbg !4169
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4169
  %normal = fptosi double %16 to i64, !dbg !4169
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4169
    #dbg_value(i64 %19, !4124, !DIExpression(), !4170)
    #dbg_value(i64 %17, !4123, !DIExpression(), !4171)
  %20 = add i64 %17, 2, !dbg !4172
    #dbg_value(i64 %19, !4124, !DIExpression(), !4173)
  %21 = add i64 %19, 48, !dbg !4174
  %22 = trunc i64 %21 to i8, !dbg !4175
  %23 = icmp uge i64 %20, 14, !dbg !4176
  br i1 %23, label %lookup.throw, label %lookup.next, !dbg !4176

lookup.next:                                      ; preds = %for.body
  %24 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 %20, !dbg !4176
  store i8 %22, ptr %24, align 1, !dbg !4176
    #dbg_value(i64 %19, !4124, !DIExpression(), !4177)
  %25 = sitofp i64 %19 to double, !dbg !4178
  %26 = fsub double %16, %25, !dbg !4179
    #dbg_value(double %26, !4121, !DIExpression(), !4179)
  %27 = fmul double %26, 1.000000e+01, !dbg !4180
    #dbg_value(double %27, !4121, !DIExpression(), !4180)
  %28 = add i64 %17, 1, !dbg !4181
    #dbg_value(i64 %28, !4123, !DIExpression(), !4181)
  br label %for.loop, !dbg !4133

for.done:                                         ; preds = %for.loop
  %29 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4182
  %30 = load i8, ptr %29, align 1, !dbg !4182
  %31 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 1, !dbg !4183
  store i8 %30, ptr %31, align 1, !dbg !4183
  %32 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4184
  store i8 46, ptr %32, align 1, !dbg !4184
  %33 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 9, !dbg !4185
  store i8 101, ptr %33, align 1, !dbg !4185
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4186
  store i8 43, ptr %34, align 1, !dbg !4186
    #dbg_value(i64 %15, !4122, !DIExpression(), !4187)
  %35 = icmp slt i64 %15, 0, !dbg !4188
  br i1 %35, label %if.then8, label %if.done9, !dbg !4133

if.then8:                                         ; preds = %for.done
    #dbg_value(i64 %15, !4122, !DIExpression(), !4189)
  %36 = sub i64 0, %15, !dbg !4190
    #dbg_value(i64 %36, !4122, !DIExpression(), !4191)
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4192
  store i8 45, ptr %37, align 1, !dbg !4192
  br label %if.done9, !dbg !4133

if.done9:                                         ; preds = %if.then8, %for.done
  %38 = phi i64 [ %15, %for.done ], [ %36, %if.then8 ], !dbg !4157
    #dbg_value(i64 %38, !4122, !DIExpression(), !4193)
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !4194
  %40 = and i1 false, %39, !dbg !4194
  %41 = select i1 %40, i64 1, i64 100, !dbg !4194
  %42 = sdiv i64 %38, %41, !dbg !4194
  %43 = trunc i64 %42 to i8, !dbg !4195
  %44 = add i8 %43, 48, !dbg !4196
  %45 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 11, !dbg !4197
  store i8 %44, ptr %45, align 1, !dbg !4197
    #dbg_value(i64 %38, !4122, !DIExpression(), !4198)
  %46 = icmp eq i64 %38, -9223372036854775808, !dbg !4199
  %47 = and i1 false, %46, !dbg !4199
  %48 = select i1 %47, i64 1, i64 10, !dbg !4199
  %49 = sdiv i64 %38, %48, !dbg !4199
  %50 = trunc i64 %49 to i8, !dbg !4200
  %51 = urem i8 %50, 10, !dbg !4201
  %52 = add i8 %51, 48, !dbg !4202
  %53 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 12, !dbg !4203
  store i8 %52, ptr %53, align 1, !dbg !4203
    #dbg_value(i64 %38, !4122, !DIExpression(), !4204)
  %54 = icmp eq i64 %38, -9223372036854775808, !dbg !4205
  %55 = and i1 false, %54, !dbg !4205
  %56 = select i1 %55, i64 1, i64 10, !dbg !4205
  %57 = srem i64 %38, %56, !dbg !4205
  %58 = trunc i64 %57 to i8, !dbg !4206
  %59 = add i8 %58, 48, !dbg !4207
  %60 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 13, !dbg !4208
  store i8 %59, ptr %60, align 1, !dbg !4208
  %61 = load [14 x i8], ptr %buf, align 1, !dbg !4209
    #dbg_value([14 x i8] %61, !4125, !DIExpression(), !4209)
  br label %rangeindex.loop, !dbg !4133

rangeindex.loop:                                  ; preds = %lookup.next21, %if.done9
  %62 = phi i64 [ -1, %if.done9 ], [ %63, %lookup.next21 ], !dbg !4133
  %63 = add i64 %62, 1, !dbg !4133
  %64 = icmp slt i64 %63, 14, !dbg !4133
  br i1 %64, label %rangeindex.body, label %rangeindex.done, !dbg !4133

rangeindex.body:                                  ; preds = %rangeindex.loop
  %65 = icmp uge i64 %63, 14, !dbg !4209
  br i1 %65, label %lookup.throw20, label %lookup.next21, !dbg !4209

lookup.next21:                                    ; preds = %rangeindex.body
  call void @llvm.lifetime.start.p0(i64 14, ptr %index.alloca), !dbg !4132
  store [14 x i8] %61, ptr %index.alloca, align 1, !dbg !4132
  %index.gep = getelementptr inbounds [14 x i8], ptr %index.alloca, i32 0, i64 %63, !dbg !4132
  %index.load = load i8, ptr %index.gep, align 1, !dbg !4132
  call void @llvm.lifetime.end.p0(i64 14, ptr %index.alloca), !dbg !4132
    #dbg_value(i8 %index.load, !4126, !DIExpression(), !4210)
    #dbg_value(i8 %index.load, !4126, !DIExpression(), !4211)
  call void @runtime.putchar(i8 %index.load, ptr undef), !dbg !4212
  br label %rangeindex.loop, !dbg !4133

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret void, !dbg !4213

if.else:                                          ; preds = %switch.next6
    #dbg_value(double %v, !4121, !DIExpression(), !4214)
  %66 = fcmp olt double %v, 0.000000e+00, !dbg !4215
  br i1 %66, label %if.then10, label %for.loop11, !dbg !4133

if.then10:                                        ; preds = %if.else
    #dbg_value(double %v, !4121, !DIExpression(), !4216)
  %67 = fneg double %v, !dbg !4217
    #dbg_value(double %67, !4121, !DIExpression(), !4218)
  %68 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4219
  store i8 45, ptr %68, align 1, !dbg !4219
  br label %for.loop11, !dbg !4133

for.loop11:                                       ; preds = %for.body12, %if.then10, %if.else
  %69 = phi double [ %v, %if.else ], [ %73, %for.body12 ], [ %67, %if.then10 ], !dbg !4164
  %70 = phi i64 [ 0, %if.else ], [ %72, %for.body12 ], [ 0, %if.then10 ], !dbg !4157
    #dbg_value(double %69, !4121, !DIExpression(), !4220)
  %71 = fcmp oge double %69, 1.000000e+01, !dbg !4221
  br i1 %71, label %for.body12, label %for.loop13, !dbg !4133

for.body12:                                       ; preds = %for.loop11
  %72 = add i64 %70, 1, !dbg !4222
    #dbg_value(i64 %72, !4122, !DIExpression(), !4222)
  %73 = fdiv double %69, 1.000000e+01, !dbg !4223
    #dbg_value(double %73, !4121, !DIExpression(), !4223)
  br label %for.loop11, !dbg !4133

for.loop13:                                       ; preds = %for.body14, %for.loop11
  %74 = phi double [ %69, %for.loop11 ], [ %78, %for.body14 ], !dbg !4164
  %75 = phi i64 [ %70, %for.loop11 ], [ %77, %for.body14 ], !dbg !4157
    #dbg_value(double %74, !4121, !DIExpression(), !4224)
  %76 = fcmp olt double %74, 1.000000e+00, !dbg !4225
  br i1 %76, label %for.body14, label %for.done15, !dbg !4133

for.body14:                                       ; preds = %for.loop13
  %77 = sub i64 %75, 1, !dbg !4226
    #dbg_value(i64 %77, !4122, !DIExpression(), !4226)
  %78 = fmul double %74, 1.000000e+01, !dbg !4227
    #dbg_value(double %78, !4121, !DIExpression(), !4227)
  br label %for.loop13, !dbg !4133

for.done15:                                       ; preds = %for.loop13
    #dbg_value(double 5.000000e+00, !4127, !DIExpression(), !4228)
    #dbg_value(i64 0, !4128, !DIExpression(), !4229)
  br label %for.loop16, !dbg !4133

for.loop16:                                       ; preds = %for.body17, %for.done15
  %79 = phi double [ 5.000000e+00, %for.done15 ], [ %82, %for.body17 ], !dbg !4228
  %80 = phi i64 [ 0, %for.done15 ], [ %83, %for.body17 ], !dbg !4229
    #dbg_value(i64 %80, !4128, !DIExpression(), !4230)
  %81 = icmp slt i64 %80, 7, !dbg !4231
  br i1 %81, label %for.body17, label %for.done18, !dbg !4133

for.body17:                                       ; preds = %for.loop16
  %82 = fdiv double %79, 1.000000e+01, !dbg !4232
    #dbg_value(double %82, !4127, !DIExpression(), !4232)
  %83 = add i64 %80, 1, !dbg !4233
    #dbg_value(i64 %83, !4128, !DIExpression(), !4233)
  br label %for.loop16, !dbg !4133

for.done18:                                       ; preds = %for.loop16
    #dbg_value(double %79, !4127, !DIExpression(), !4234)
  %84 = fadd double %74, %79, !dbg !4235
    #dbg_value(double %84, !4121, !DIExpression(), !4235)
    #dbg_value(double %84, !4121, !DIExpression(), !4236)
  %85 = fcmp oge double %84, 1.000000e+01, !dbg !4237
  br i1 %85, label %if.then19, label %if.done, !dbg !4133

if.then19:                                        ; preds = %for.done18
  %86 = add i64 %75, 1, !dbg !4238
    #dbg_value(i64 %86, !4122, !DIExpression(), !4238)
  %87 = fdiv double %84, 1.000000e+01, !dbg !4239
    #dbg_value(double %87, !4121, !DIExpression(), !4239)
  br label %if.done, !dbg !4133

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4176
  unreachable, !dbg !4176

lookup.throw20:                                   ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4209
  unreachable, !dbg !4209
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printcomplex64(float %c.r, float %c.i, ptr %context) unnamed_addr #1 !dbg !4240 {
entry:
  %0 = insertvalue { float, float } zeroinitializer, float %c.r, 0, !dbg !4245
  %1 = insertvalue { float, float } %0, float %c.i, 1, !dbg !4245
    #dbg_value(float %c.r, !4244, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4245)
    #dbg_value(float %c.i, !4244, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4245)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4246
    #dbg_value({ float, float } %1, !4244, !DIExpression(), !4247)
  %real = extractvalue { float, float } %1, 0, !dbg !4248
  call void @runtime.printfloat32(float %real, ptr undef), !dbg !4249
    #dbg_value({ float, float } %1, !4244, !DIExpression(), !4250)
  %imag = extractvalue { float, float } %1, 1, !dbg !4251
  call void @runtime.printfloat32(float %imag, ptr undef), !dbg !4252
  call void @runtime.printstring(ptr @"runtime$string.41", i64 2, ptr undef), !dbg !4253
  ret void, !dbg !4254
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printcomplex128(double %c.r, double %c.i, ptr %context) unnamed_addr #1 !dbg !4255 {
entry:
  %0 = insertvalue { double, double } zeroinitializer, double %c.r, 0, !dbg !4260
  %1 = insertvalue { double, double } %0, double %c.i, 1, !dbg !4260
    #dbg_value(double %c.r, !4259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4260)
    #dbg_value(double %c.i, !4259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4260)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4261
    #dbg_value({ double, double } %1, !4259, !DIExpression(), !4262)
  %real = extractvalue { double, double } %1, 0, !dbg !4263
  call void @runtime.printfloat64(double %real, ptr undef), !dbg !4264
    #dbg_value({ double, double } %1, !4259, !DIExpression(), !4265)
  %imag = extractvalue { double, double } %1, 1, !dbg !4266
  call void @runtime.printfloat64(double %imag, ptr undef), !dbg !4267
  call void @runtime.printstring(ptr @"runtime$string.42", i64 2, ptr undef), !dbg !4268
  ret void, !dbg !4269
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
define internal void @runtime._panic(ptr %message.typecode, ptr %message.value, ptr %context) #1 !dbg !4270 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %message.typecode, 0, !dbg !4273
  %1 = insertvalue { ptr, ptr } %0, ptr %message.value, 1, !dbg !4273
    #dbg_value(ptr %message.typecode, !4272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4273)
    #dbg_value(ptr %message.value, !4272, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4273)
    #dbg_value({ ptr, ptr } %1, !4272, !DIExpression(), !4274)
  %2 = extractvalue { ptr, ptr } %1, 0, !dbg !4275
  %3 = extractvalue { ptr, ptr } %1, 1, !dbg !4275
  call void @runtime.panicOrGoexit(ptr %2, ptr %3, i8 1, ptr undef), !dbg !4275
  ret void, !dbg !4276
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @runtime.stringEqual(ptr readonly %x.data, i64 %x.len, ptr readonly %y.data, i64 %y.len, ptr %context) #1 !dbg !4277 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %x.data, 0, !dbg !4285
  %1 = insertvalue %runtime._string %0, i64 %x.len, 1, !dbg !4285
    #dbg_value(ptr %x.data, !4282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4285)
    #dbg_value(i64 %x.len, !4282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4285)
  %2 = insertvalue %runtime._string zeroinitializer, ptr %y.data, 0, !dbg !4285
  %3 = insertvalue %runtime._string %2, i64 %y.len, 1, !dbg !4285
    #dbg_value(ptr %y.data, !4283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4285)
    #dbg_value(i64 %y.len, !4283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4285)
    #dbg_value(%runtime._string %1, !4282, !DIExpression(), !4286)
  %len = extractvalue %runtime._string %1, 1, !dbg !4287
    #dbg_value(%runtime._string %3, !4283, !DIExpression(), !4288)
  %len3 = extractvalue %runtime._string %3, 1, !dbg !4289
  %4 = icmp ne i64 %len, %len3, !dbg !4290
  br i1 %4, label %if.then, label %if.done, !dbg !4291

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !4292

if.done:                                          ; preds = %entry
    #dbg_value(i64 0, !4284, !DIExpression(), !4293)
  br label %for.loop, !dbg !4291

for.loop:                                         ; preds = %if.done2, %if.done
  %5 = phi i64 [ 0, %if.done ], [ %14, %if.done2 ], !dbg !4293
    #dbg_value(i64 %5, !4284, !DIExpression(), !4294)
    #dbg_value(%runtime._string %1, !4282, !DIExpression(), !4295)
  %len4 = extractvalue %runtime._string %1, 1, !dbg !4296
  %6 = icmp slt i64 %5, %len4, !dbg !4297
  br i1 %6, label %for.body, label %for.done, !dbg !4291

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4284, !DIExpression(), !4298)
    #dbg_value(%runtime._string %1, !4282, !DIExpression(), !4299)
  %len5 = extractvalue %runtime._string %1, 1, !dbg !4300
  %7 = extractvalue %runtime._string %1, 0, !dbg !4300
  %8 = getelementptr inbounds i8, ptr %7, i64 %5, !dbg !4300
  %9 = load i8, ptr %8, align 1, !dbg !4300
    #dbg_value(i64 %5, !4284, !DIExpression(), !4301)
    #dbg_value(%runtime._string %3, !4283, !DIExpression(), !4302)
  %len6 = extractvalue %runtime._string %3, 1, !dbg !4303
  %10 = extractvalue %runtime._string %3, 0, !dbg !4303
  %11 = getelementptr inbounds i8, ptr %10, i64 %5, !dbg !4303
  %12 = load i8, ptr %11, align 1, !dbg !4303
  %13 = icmp ne i8 %9, %12, !dbg !4304
  br i1 %13, label %if.then1, label %if.done2, !dbg !4291

if.then1:                                         ; preds = %for.body
  ret i1 false, !dbg !4305

if.done2:                                         ; preds = %for.body
  %14 = add i64 %5, 1, !dbg !4306
    #dbg_value(i64 %14, !4284, !DIExpression(), !4306)
  br label %for.loop, !dbg !4291

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4307
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.slicePanic(ptr %context) #1 !dbg !4308 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4309
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.20", i64 18, ptr undef), !dbg !4310
  ret void, !dbg !4311
}

; Function Attrs: nounwind uwtable(sync)
define double @fminimum(double %x, double %y) #1 !dbg !4312 {
entry:
    #dbg_value(double %x, !4316, !DIExpression(), !4318)
    #dbg_value(double %y, !4317, !DIExpression(), !4318)
    #dbg_value(double %x, !4316, !DIExpression(), !4319)
    #dbg_value(double %y, !4317, !DIExpression(), !4320)
  %0 = call double @runtime.minimumFloat64(double %x, double %y, ptr undef), !dbg !4321
  ret double %0, !dbg !4322
}

; Function Attrs: nounwind uwtable(sync)
define internal double @runtime.minimumFloat64(double %x, double %y, ptr %context) unnamed_addr #1 !dbg !4323 {
entry:
    #dbg_value(double %x, !4325, !DIExpression(), !4327)
    #dbg_value(double %y, !4326, !DIExpression(), !4327)
    #dbg_value(double %x, !4325, !DIExpression(), !4328)
    #dbg_value(double %y, !4326, !DIExpression(), !4329)
  %0 = call double @"runtime.minimumFloat[float64 int64]"(double %x, double %y, i64 9218868437227405313, i64 9223372036854775807, ptr undef), !dbg !4330
  ret double %0, !dbg !4331
}

; Function Attrs: nounwind uwtable(sync)
define internal double @"runtime.minimumFloat[float64 int64]"(double %x, double %y, i64 %minPosNaN, i64 %magMask, ptr %context) unnamed_addr #1 !dbg !4332 {
entry:
    #dbg_value(double %x, !4336, !DIExpression(), !4342)
    #dbg_value(double %y, !4337, !DIExpression(), !4342)
    #dbg_value(i64 %minPosNaN, !4338, !DIExpression(), !4342)
    #dbg_value(i64 %magMask, !4339, !DIExpression(), !4342)
  %x6 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4343
  store double %x, ptr %x6, align 8, !dbg !4343
  %y7 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4344
  store double %y, ptr %y7, align 8, !dbg !4344
  %0 = load i64, ptr %x6, align 8, !dbg !4345
    #dbg_value(i64 %0, !4340, !DIExpression(), !4346)
  %1 = load i64, ptr %y7, align 8, !dbg !4347
    #dbg_value(i64 %1, !4341, !DIExpression(), !4348)
    #dbg_value(i64 %0, !4340, !DIExpression(), !4349)
    #dbg_value(i64 %minPosNaN, !4338, !DIExpression(), !4350)
  %2 = icmp sge i64 %0, %minPosNaN, !dbg !4351
  br i1 %2, label %switch.body, label %switch.next, !dbg !4352

switch.body:                                      ; preds = %entry
  %3 = load double, ptr %x6, align 8, !dbg !4353
    #dbg_value(double %3, !4336, !DIExpression(), !4353)
  ret double %3, !dbg !4354

switch.next:                                      ; preds = %entry
    #dbg_value(i64 %1, !4341, !DIExpression(), !4355)
    #dbg_value(i64 %minPosNaN, !4338, !DIExpression(), !4356)
  %4 = icmp sge i64 %1, %minPosNaN, !dbg !4357
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4352

switch.body1:                                     ; preds = %switch.next
  %5 = load double, ptr %y7, align 8, !dbg !4358
    #dbg_value(double %5, !4337, !DIExpression(), !4358)
  ret double %5, !dbg !4359

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i64 %0, !4340, !DIExpression(), !4360)
  %6 = icmp slt i64 %0, 0, !dbg !4361
  br i1 %6, label %if.then, label %if.done, !dbg !4352

if.then:                                          ; preds = %switch.next2
    #dbg_value(i64 %magMask, !4339, !DIExpression(), !4362)
  %7 = xor i64 %0, %magMask, !dbg !4363
    #dbg_value(i64 %7, !4340, !DIExpression(), !4363)
  br label %if.done, !dbg !4352

if.done:                                          ; preds = %if.then, %switch.next2
  %8 = phi i64 [ %0, %switch.next2 ], [ %7, %if.then ], !dbg !4346
    #dbg_value(i64 %1, !4341, !DIExpression(), !4364)
  %9 = icmp slt i64 %1, 0, !dbg !4365
  br i1 %9, label %if.then3, label %if.done4, !dbg !4352

if.then3:                                         ; preds = %if.done
    #dbg_value(i64 %magMask, !4339, !DIExpression(), !4366)
  %10 = xor i64 %1, %magMask, !dbg !4367
    #dbg_value(i64 %10, !4341, !DIExpression(), !4367)
  br label %if.done4, !dbg !4352

if.done4:                                         ; preds = %if.then3, %if.done
  %11 = phi i64 [ %1, %if.done ], [ %10, %if.then3 ], !dbg !4348
    #dbg_value(i64 %8, !4340, !DIExpression(), !4368)
    #dbg_value(i64 %11, !4341, !DIExpression(), !4369)
  %12 = icmp sle i64 %8, %11, !dbg !4370
  br i1 %12, label %if.then5, label %if.else, !dbg !4352

if.then5:                                         ; preds = %if.done4
  %13 = load double, ptr %x6, align 8, !dbg !4371
    #dbg_value(double %13, !4336, !DIExpression(), !4371)
  ret double %13, !dbg !4372

if.else:                                          ; preds = %if.done4
  %14 = load double, ptr %y7, align 8, !dbg !4373
    #dbg_value(double %14, !4337, !DIExpression(), !4373)
  ret double %14, !dbg !4374
}

; Function Attrs: nounwind uwtable(sync)
define float @fminimumf(float %x, float %y) #1 !dbg !4375 {
entry:
    #dbg_value(float %x, !4379, !DIExpression(), !4381)
    #dbg_value(float %y, !4380, !DIExpression(), !4381)
    #dbg_value(float %x, !4379, !DIExpression(), !4382)
    #dbg_value(float %y, !4380, !DIExpression(), !4383)
  %0 = call float @runtime.minimumFloat32(float %x, float %y, ptr undef), !dbg !4384
  ret float %0, !dbg !4385
}

; Function Attrs: nounwind uwtable(sync)
define internal float @runtime.minimumFloat32(float %x, float %y, ptr %context) unnamed_addr #1 !dbg !4386 {
entry:
    #dbg_value(float %x, !4388, !DIExpression(), !4390)
    #dbg_value(float %y, !4389, !DIExpression(), !4390)
    #dbg_value(float %x, !4388, !DIExpression(), !4391)
    #dbg_value(float %y, !4389, !DIExpression(), !4392)
  %0 = call float @"runtime.minimumFloat[float32 int32]"(float %x, float %y, i32 2139095041, i32 2147483647, ptr undef), !dbg !4393
  ret float %0, !dbg !4394
}

; Function Attrs: nounwind uwtable(sync)
define internal float @"runtime.minimumFloat[float32 int32]"(float %x, float %y, i32 %minPosNaN, i32 %magMask, ptr %context) unnamed_addr #1 !dbg !4395 {
entry:
    #dbg_value(float %x, !4399, !DIExpression(), !4405)
    #dbg_value(float %y, !4400, !DIExpression(), !4405)
    #dbg_value(i32 %minPosNaN, !4401, !DIExpression(), !4405)
    #dbg_value(i32 %magMask, !4402, !DIExpression(), !4405)
  %x6 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4406
  store float %x, ptr %x6, align 4, !dbg !4406
  %y7 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4407
  store float %y, ptr %y7, align 4, !dbg !4407
  %0 = load i32, ptr %x6, align 4, !dbg !4408
    #dbg_value(i32 %0, !4403, !DIExpression(), !4409)
  %1 = load i32, ptr %y7, align 4, !dbg !4410
    #dbg_value(i32 %1, !4404, !DIExpression(), !4411)
    #dbg_value(i32 %0, !4403, !DIExpression(), !4412)
    #dbg_value(i32 %minPosNaN, !4401, !DIExpression(), !4413)
  %2 = icmp sge i32 %0, %minPosNaN, !dbg !4414
  br i1 %2, label %switch.body, label %switch.next, !dbg !4415

switch.body:                                      ; preds = %entry
  %3 = load float, ptr %x6, align 4, !dbg !4416
    #dbg_value(float %3, !4399, !DIExpression(), !4416)
  ret float %3, !dbg !4417

switch.next:                                      ; preds = %entry
    #dbg_value(i32 %1, !4404, !DIExpression(), !4418)
    #dbg_value(i32 %minPosNaN, !4401, !DIExpression(), !4419)
  %4 = icmp sge i32 %1, %minPosNaN, !dbg !4420
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4415

switch.body1:                                     ; preds = %switch.next
  %5 = load float, ptr %y7, align 4, !dbg !4421
    #dbg_value(float %5, !4400, !DIExpression(), !4421)
  ret float %5, !dbg !4422

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i32 %0, !4403, !DIExpression(), !4423)
  %6 = icmp slt i32 %0, 0, !dbg !4424
  br i1 %6, label %if.then, label %if.done, !dbg !4415

if.then:                                          ; preds = %switch.next2
    #dbg_value(i32 %magMask, !4402, !DIExpression(), !4425)
  %7 = xor i32 %0, %magMask, !dbg !4426
    #dbg_value(i32 %7, !4403, !DIExpression(), !4426)
  br label %if.done, !dbg !4415

if.done:                                          ; preds = %if.then, %switch.next2
  %8 = phi i32 [ %0, %switch.next2 ], [ %7, %if.then ], !dbg !4409
    #dbg_value(i32 %1, !4404, !DIExpression(), !4427)
  %9 = icmp slt i32 %1, 0, !dbg !4428
  br i1 %9, label %if.then3, label %if.done4, !dbg !4415

if.then3:                                         ; preds = %if.done
    #dbg_value(i32 %magMask, !4402, !DIExpression(), !4429)
  %10 = xor i32 %1, %magMask, !dbg !4430
    #dbg_value(i32 %10, !4404, !DIExpression(), !4430)
  br label %if.done4, !dbg !4415

if.done4:                                         ; preds = %if.then3, %if.done
  %11 = phi i32 [ %1, %if.done ], [ %10, %if.then3 ], !dbg !4411
    #dbg_value(i32 %8, !4403, !DIExpression(), !4431)
    #dbg_value(i32 %11, !4404, !DIExpression(), !4432)
  %12 = icmp sle i32 %8, %11, !dbg !4433
  br i1 %12, label %if.then5, label %if.else, !dbg !4415

if.then5:                                         ; preds = %if.done4
  %13 = load float, ptr %x6, align 4, !dbg !4434
    #dbg_value(float %13, !4399, !DIExpression(), !4434)
  ret float %13, !dbg !4435

if.else:                                          ; preds = %if.done4
  %14 = load float, ptr %y7, align 4, !dbg !4436
    #dbg_value(float %14, !4400, !DIExpression(), !4436)
  ret float %14, !dbg !4437
}

; Function Attrs: nounwind uwtable(sync)
define double @fmaximum(double %x, double %y) #1 !dbg !4438 {
entry:
    #dbg_value(double %x, !4440, !DIExpression(), !4442)
    #dbg_value(double %y, !4441, !DIExpression(), !4442)
    #dbg_value(double %x, !4440, !DIExpression(), !4443)
    #dbg_value(double %y, !4441, !DIExpression(), !4444)
  %0 = call double @runtime.maximumFloat64(double %x, double %y, ptr undef), !dbg !4445
  ret double %0, !dbg !4446
}

; Function Attrs: nounwind uwtable(sync)
define internal double @runtime.maximumFloat64(double %x, double %y, ptr %context) unnamed_addr #1 !dbg !4447 {
entry:
    #dbg_value(double %x, !4449, !DIExpression(), !4451)
    #dbg_value(double %y, !4450, !DIExpression(), !4451)
    #dbg_value(double %x, !4449, !DIExpression(), !4452)
    #dbg_value(double %y, !4450, !DIExpression(), !4453)
  %0 = call double @"runtime.maximumFloat[float64 int64]"(double %x, double %y, i64 9218868437227405313, i64 9223372036854775807, ptr undef), !dbg !4454
  ret double %0, !dbg !4455
}

; Function Attrs: nounwind uwtable(sync)
define internal double @"runtime.maximumFloat[float64 int64]"(double %x, double %y, i64 %minPosNaN, i64 %magMask, ptr %context) unnamed_addr #1 !dbg !4456 {
entry:
    #dbg_value(double %x, !4458, !DIExpression(), !4465)
    #dbg_value(double %y, !4459, !DIExpression(), !4465)
    #dbg_value(i64 %minPosNaN, !4460, !DIExpression(), !4465)
    #dbg_value(i64 %magMask, !4461, !DIExpression(), !4465)
  %x6 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4466
  store double %x, ptr %x6, align 8, !dbg !4466
  %y7 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4467
  store double %y, ptr %y7, align 8, !dbg !4467
  %0 = load i64, ptr %x6, align 8, !dbg !4468
    #dbg_value(i64 %0, !4462, !DIExpression(), !4469)
  %1 = load i64, ptr %y7, align 8, !dbg !4470
    #dbg_value(i64 %1, !4463, !DIExpression(), !4471)
    #dbg_value(i64 %0, !4462, !DIExpression(), !4472)
  %2 = icmp slt i64 %0, 0, !dbg !4473
  br i1 %2, label %if.then, label %if.done, !dbg !4474

if.then:                                          ; preds = %entry
    #dbg_value(i64 %magMask, !4461, !DIExpression(), !4475)
  %3 = xor i64 %0, %magMask, !dbg !4476
    #dbg_value(i64 %3, !4462, !DIExpression(), !4476)
  br label %if.done, !dbg !4474

if.done:                                          ; preds = %if.then, %entry
  %4 = phi i64 [ %0, %entry ], [ %3, %if.then ], !dbg !4469
    #dbg_value(i64 %1, !4463, !DIExpression(), !4477)
  %5 = icmp slt i64 %1, 0, !dbg !4478
  br i1 %5, label %if.then1, label %if.done2, !dbg !4474

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %magMask, !4461, !DIExpression(), !4479)
  %6 = xor i64 %1, %magMask, !dbg !4480
    #dbg_value(i64 %6, !4463, !DIExpression(), !4480)
  br label %if.done2, !dbg !4474

if.done2:                                         ; preds = %if.then1, %if.done
  %7 = phi i64 [ %1, %if.done ], [ %6, %if.then1 ], !dbg !4471
    #dbg_value(i64 %minPosNaN, !4460, !DIExpression(), !4481)
  %8 = xor i64 %minPosNaN, -1, !dbg !4482
    #dbg_value(i64 %8, !4464, !DIExpression(), !4483)
    #dbg_value(i64 %4, !4462, !DIExpression(), !4484)
    #dbg_value(i64 %8, !4464, !DIExpression(), !4485)
  %9 = icmp sle i64 %4, %8, !dbg !4486
  br i1 %9, label %switch.body, label %switch.next, !dbg !4474

switch.body:                                      ; preds = %if.done2
  %10 = load double, ptr %x6, align 8, !dbg !4487
    #dbg_value(double %10, !4458, !DIExpression(), !4487)
  ret double %10, !dbg !4488

switch.next:                                      ; preds = %if.done2
    #dbg_value(i64 %7, !4463, !DIExpression(), !4489)
    #dbg_value(i64 %8, !4464, !DIExpression(), !4490)
  %11 = icmp sle i64 %7, %8, !dbg !4491
  br i1 %11, label %switch.body3, label %switch.next4, !dbg !4474

switch.body3:                                     ; preds = %switch.next
  %12 = load double, ptr %y7, align 8, !dbg !4492
    #dbg_value(double %12, !4459, !DIExpression(), !4492)
  ret double %12, !dbg !4493

switch.next4:                                     ; preds = %switch.next
    #dbg_value(i64 %4, !4462, !DIExpression(), !4494)
    #dbg_value(i64 %7, !4463, !DIExpression(), !4495)
  %13 = icmp sge i64 %4, %7, !dbg !4496
  br i1 %13, label %if.then5, label %if.else, !dbg !4474

if.then5:                                         ; preds = %switch.next4
  %14 = load double, ptr %x6, align 8, !dbg !4497
    #dbg_value(double %14, !4458, !DIExpression(), !4497)
  ret double %14, !dbg !4498

if.else:                                          ; preds = %switch.next4
  %15 = load double, ptr %y7, align 8, !dbg !4499
    #dbg_value(double %15, !4459, !DIExpression(), !4499)
  ret double %15, !dbg !4500
}

; Function Attrs: nounwind uwtable(sync)
define float @fmaximumf(float %x, float %y) #1 !dbg !4501 {
entry:
    #dbg_value(float %x, !4503, !DIExpression(), !4505)
    #dbg_value(float %y, !4504, !DIExpression(), !4505)
    #dbg_value(float %x, !4503, !DIExpression(), !4506)
    #dbg_value(float %y, !4504, !DIExpression(), !4507)
  %0 = call float @runtime.maximumFloat32(float %x, float %y, ptr undef), !dbg !4508
  ret float %0, !dbg !4509
}

; Function Attrs: nounwind uwtable(sync)
define internal float @runtime.maximumFloat32(float %x, float %y, ptr %context) unnamed_addr #1 !dbg !4510 {
entry:
    #dbg_value(float %x, !4512, !DIExpression(), !4514)
    #dbg_value(float %y, !4513, !DIExpression(), !4514)
    #dbg_value(float %x, !4512, !DIExpression(), !4515)
    #dbg_value(float %y, !4513, !DIExpression(), !4516)
  %0 = call float @"runtime.maximumFloat[float32 int32]"(float %x, float %y, i32 2139095041, i32 2147483647, ptr undef), !dbg !4517
  ret float %0, !dbg !4518
}

; Function Attrs: nounwind uwtable(sync)
define internal float @"runtime.maximumFloat[float32 int32]"(float %x, float %y, i32 %minPosNaN, i32 %magMask, ptr %context) unnamed_addr #1 !dbg !4519 {
entry:
    #dbg_value(float %x, !4521, !DIExpression(), !4528)
    #dbg_value(float %y, !4522, !DIExpression(), !4528)
    #dbg_value(i32 %minPosNaN, !4523, !DIExpression(), !4528)
    #dbg_value(i32 %magMask, !4524, !DIExpression(), !4528)
  %x6 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4529
  store float %x, ptr %x6, align 4, !dbg !4529
  %y7 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4530
  store float %y, ptr %y7, align 4, !dbg !4530
  %0 = load i32, ptr %x6, align 4, !dbg !4531
    #dbg_value(i32 %0, !4525, !DIExpression(), !4532)
  %1 = load i32, ptr %y7, align 4, !dbg !4533
    #dbg_value(i32 %1, !4526, !DIExpression(), !4534)
    #dbg_value(i32 %0, !4525, !DIExpression(), !4535)
  %2 = icmp slt i32 %0, 0, !dbg !4536
  br i1 %2, label %if.then, label %if.done, !dbg !4537

if.then:                                          ; preds = %entry
    #dbg_value(i32 %magMask, !4524, !DIExpression(), !4538)
  %3 = xor i32 %0, %magMask, !dbg !4539
    #dbg_value(i32 %3, !4525, !DIExpression(), !4539)
  br label %if.done, !dbg !4537

if.done:                                          ; preds = %if.then, %entry
  %4 = phi i32 [ %0, %entry ], [ %3, %if.then ], !dbg !4532
    #dbg_value(i32 %1, !4526, !DIExpression(), !4540)
  %5 = icmp slt i32 %1, 0, !dbg !4541
  br i1 %5, label %if.then1, label %if.done2, !dbg !4537

if.then1:                                         ; preds = %if.done
    #dbg_value(i32 %magMask, !4524, !DIExpression(), !4542)
  %6 = xor i32 %1, %magMask, !dbg !4543
    #dbg_value(i32 %6, !4526, !DIExpression(), !4543)
  br label %if.done2, !dbg !4537

if.done2:                                         ; preds = %if.then1, %if.done
  %7 = phi i32 [ %1, %if.done ], [ %6, %if.then1 ], !dbg !4534
    #dbg_value(i32 %minPosNaN, !4523, !DIExpression(), !4544)
  %8 = xor i32 %minPosNaN, -1, !dbg !4545
    #dbg_value(i32 %8, !4527, !DIExpression(), !4546)
    #dbg_value(i32 %4, !4525, !DIExpression(), !4547)
    #dbg_value(i32 %8, !4527, !DIExpression(), !4548)
  %9 = icmp sle i32 %4, %8, !dbg !4549
  br i1 %9, label %switch.body, label %switch.next, !dbg !4537

switch.body:                                      ; preds = %if.done2
  %10 = load float, ptr %x6, align 4, !dbg !4550
    #dbg_value(float %10, !4521, !DIExpression(), !4550)
  ret float %10, !dbg !4551

switch.next:                                      ; preds = %if.done2
    #dbg_value(i32 %7, !4526, !DIExpression(), !4552)
    #dbg_value(i32 %8, !4527, !DIExpression(), !4553)
  %11 = icmp sle i32 %7, %8, !dbg !4554
  br i1 %11, label %switch.body3, label %switch.next4, !dbg !4537

switch.body3:                                     ; preds = %switch.next
  %12 = load float, ptr %y7, align 4, !dbg !4555
    #dbg_value(float %12, !4522, !DIExpression(), !4555)
  ret float %12, !dbg !4556

switch.next4:                                     ; preds = %switch.next
    #dbg_value(i32 %4, !4525, !DIExpression(), !4557)
    #dbg_value(i32 %7, !4526, !DIExpression(), !4558)
  %13 = icmp sge i32 %4, %7, !dbg !4559
  br i1 %13, label %if.then5, label %if.else, !dbg !4537

if.then5:                                         ; preds = %switch.next4
  %14 = load float, ptr %x6, align 4, !dbg !4560
    #dbg_value(float %14, !4521, !DIExpression(), !4560)
  ret float %14, !dbg !4561

if.else:                                          ; preds = %switch.next4
  %15 = load float, ptr %y7, align 4, !dbg !4562
    #dbg_value(float %15, !4522, !DIExpression(), !4562)
  ret float %15, !dbg !4563
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.initHeap(ptr %context) unnamed_addr #1 !dbg !4564 {
entry:
  call void @GC_init(), !dbg !4565
  call void @tinygo_runtime_bdwgc_init(), !dbg !4566
  ret void, !dbg !4567
}

declare void @GC_init() #2

declare void @tinygo_runtime_bdwgc_init() #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_runtime_bdwgc_callback() #1 !dbg !4568 {
entry:
  call void @runtime.gcMarkReachable(ptr undef), !dbg !4569
  ret void, !dbg !4570
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.gcMarkReachable(ptr %context) unnamed_addr #1 !dbg !4571 {
entry:
  call void @"internal/task.GCStopWorldAndScan"(ptr undef), !dbg !4572
  ret void, !dbg !4573
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.markRoots(i64 %start, i64 %end, ptr %context) #1 !dbg !4574 {
entry:
    #dbg_value(i64 %start, !4578, !DIExpression(), !4580)
    #dbg_value(i64 %end, !4579, !DIExpression(), !4580)
    #dbg_value(i64 %start, !4578, !DIExpression(), !4581)
    #dbg_value(i64 %end, !4579, !DIExpression(), !4582)
  call void @GC_push_all(i64 %start, i64 %end), !dbg !4583
  ret void, !dbg !4584
}

declare void @GC_push_all(i64, i64) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.free(ptr %ptr, ptr %context) unnamed_addr #1 !dbg !4585 {
entry:
    #dbg_value(ptr %ptr, !4587, !DIExpression(), !4588)
    #dbg_value(ptr %ptr, !4587, !DIExpression(), !4589)
  call void @GC_free(ptr %ptr), !dbg !4590
  ret void, !dbg !4591
}

declare void @GC_free(ptr nocapture) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.gcScanGlobals"(ptr %context) #1 !dbg !4592 {
entry:
  call void @runtime.findGlobals(ptr undef, ptr @runtime.markRoots, ptr undef), !dbg !4593
  ret void, !dbg !4594
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.findGlobals(ptr %found.context, ptr %found.funcptr, ptr %context) unnamed_addr #1 !dbg !4595 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %found.context, 0, !dbg !4626
  %1 = insertvalue { ptr, ptr } %0, ptr %found.funcptr, 1, !dbg !4626
    #dbg_value(ptr %found.context, !4599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4626)
    #dbg_value(ptr %found.funcptr, !4599, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4626)
  %2 = load i64, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 11), align 8, !dbg !4627
  %3 = add i64 ptrtoint (ptr @__ehdr_start to i64), %2, !dbg !4628
  %4 = inttoptr i64 %3 to ptr, !dbg !4629
    #dbg_value(ptr %4, !4600, !DIExpression(), !4630)
    #dbg_value(i64 0, !4601, !DIExpression(), !4631)
  br label %for.loop, !dbg !4632

for.loop:                                         ; preds = %if.done, %entry
  %5 = phi ptr [ %4, %entry ], [ %30, %if.done ], !dbg !4630
  %6 = phi i64 [ 0, %entry ], [ %31, %if.done ], !dbg !4631
    #dbg_value(i64 %6, !4601, !DIExpression(), !4633)
  %7 = load i16, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 16), align 2, !dbg !4634
  %8 = zext i16 %7 to i64, !dbg !4635
  %9 = icmp slt i64 %6, %8, !dbg !4636
  br i1 %9, label %for.body, label %for.done, !dbg !4632

for.body:                                         ; preds = %for.loop
  br i1 true, label %if.then, label %if.else, !dbg !4632

if.then:                                          ; preds = %for.body
    #dbg_value(ptr %5, !4600, !DIExpression(), !4637)
    #dbg_value(ptr %5, !4602, !DIExpression(), !4638)
    #dbg_value(ptr %5, !4602, !DIExpression(), !4639)
  %10 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 0, !dbg !4640
  %11 = icmp eq ptr %10, null, !dbg !4640
  br i1 %11, label %deref.throw, label %deref.next, !dbg !4640

deref.next:                                       ; preds = %if.then
  %12 = load i32, ptr %10, align 4, !dbg !4640
  %13 = icmp eq i32 %12, 1, !dbg !4641
  br i1 %13, label %cond.true, label %if.done, !dbg !4632

cond.true:                                        ; preds = %deref.next
    #dbg_value(ptr %5, !4602, !DIExpression(), !4642)
  %14 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 1, !dbg !4643
  %15 = icmp eq ptr %14, null, !dbg !4643
  br i1 %15, label %deref.throw4, label %deref.next5, !dbg !4643

deref.next5:                                      ; preds = %cond.true
  %16 = load i32, ptr %14, align 4, !dbg !4643
  %17 = and i32 %16, 2, !dbg !4644
  %18 = icmp ne i32 %17, 0, !dbg !4645
  br i1 %18, label %if.then1, label %if.done, !dbg !4632

if.then1:                                         ; preds = %deref.next5
    #dbg_value(ptr %5, !4602, !DIExpression(), !4646)
  %19 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 3, !dbg !4647
  %20 = icmp eq ptr %19, null, !dbg !4647
  br i1 %20, label %deref.throw6, label %deref.next7, !dbg !4647

deref.next7:                                      ; preds = %if.then1
  %21 = load i64, ptr %19, align 8, !dbg !4647
    #dbg_value(i64 %21, !4615, !DIExpression(), !4648)
    #dbg_value(i64 %21, !4615, !DIExpression(), !4649)
    #dbg_value(ptr %5, !4602, !DIExpression(), !4650)
  %22 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 6, !dbg !4651
  %23 = icmp eq ptr %22, null, !dbg !4651
  br i1 %23, label %deref.throw8, label %deref.next9, !dbg !4651

deref.next9:                                      ; preds = %deref.next7
  %24 = load i64, ptr %22, align 8, !dbg !4651
  %25 = add i64 %21, %24, !dbg !4652
    #dbg_value(i64 %25, !4616, !DIExpression(), !4653)
    #dbg_value({ ptr, ptr } %1, !4599, !DIExpression(), !4654)
    #dbg_value(i64 %21, !4615, !DIExpression(), !4655)
    #dbg_value(i64 %25, !4616, !DIExpression(), !4656)
  %26 = extractvalue { ptr, ptr } %1, 0, !dbg !4657
  %27 = extractvalue { ptr, ptr } %1, 1, !dbg !4657
  %28 = icmp eq ptr %27, null, !dbg !4657
  br i1 %28, label %fpcall.throw, label %fpcall.next, !dbg !4657

fpcall.next:                                      ; preds = %deref.next9
  call void %27(i64 %21, i64 %25, ptr %26), !dbg !4657
  br label %if.done, !dbg !4632

if.done:                                          ; preds = %fpcall.next19, %deref.next13, %deref.next11, %fpcall.next, %deref.next5, %deref.next
    #dbg_value(ptr %5, !4600, !DIExpression(), !4658)
  %29 = load i16, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 15), align 2, !dbg !4659
  %30 = getelementptr i8, ptr %5, i16 %29, !dbg !4660
    #dbg_value(ptr %30, !4600, !DIExpression(), !4661)
  %31 = add i64 %6, 1, !dbg !4662
    #dbg_value(i64 %31, !4601, !DIExpression(), !4662)
  br label %for.loop, !dbg !4632

if.else:                                          ; preds = %for.body
    #dbg_value(ptr %5, !4600, !DIExpression(), !4663)
    #dbg_value(ptr %5, !4617, !DIExpression(), !4664)
    #dbg_value(ptr %5, !4617, !DIExpression(), !4665)
  %32 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 0, !dbg !4666
  %33 = icmp eq ptr %32, null, !dbg !4666
  br i1 %33, label %deref.throw10, label %deref.next11, !dbg !4666

deref.next11:                                     ; preds = %if.else
  %34 = load i32, ptr %32, align 4, !dbg !4666
  %35 = icmp eq i32 %34, 1, !dbg !4667
  br i1 %35, label %cond.true2, label %if.done, !dbg !4632

cond.true2:                                       ; preds = %deref.next11
    #dbg_value(ptr %5, !4617, !DIExpression(), !4668)
  %36 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 6, !dbg !4669
  %37 = icmp eq ptr %36, null, !dbg !4669
  br i1 %37, label %deref.throw12, label %deref.next13, !dbg !4669

deref.next13:                                     ; preds = %cond.true2
  %38 = load i32, ptr %36, align 4, !dbg !4669
  %39 = and i32 %38, 2, !dbg !4670
  %40 = icmp ne i32 %39, 0, !dbg !4671
  br i1 %40, label %if.then3, label %if.done, !dbg !4632

if.then3:                                         ; preds = %deref.next13
    #dbg_value(ptr %5, !4617, !DIExpression(), !4672)
  %41 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 2, !dbg !4673
  %42 = icmp eq ptr %41, null, !dbg !4673
  br i1 %42, label %deref.throw14, label %deref.next15, !dbg !4673

deref.next15:                                     ; preds = %if.then3
  %43 = load i64, ptr %41, align 8, !dbg !4673
    #dbg_value(i64 %43, !4624, !DIExpression(), !4674)
    #dbg_value(i64 %43, !4624, !DIExpression(), !4675)
    #dbg_value(ptr %5, !4617, !DIExpression(), !4676)
  %44 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 5, !dbg !4677
  %45 = icmp eq ptr %44, null, !dbg !4677
  br i1 %45, label %deref.throw16, label %deref.next17, !dbg !4677

deref.next17:                                     ; preds = %deref.next15
  %46 = load i64, ptr %44, align 8, !dbg !4677
  %47 = add i64 %43, %46, !dbg !4678
    #dbg_value(i64 %47, !4625, !DIExpression(), !4679)
    #dbg_value({ ptr, ptr } %1, !4599, !DIExpression(), !4680)
    #dbg_value(i64 %43, !4624, !DIExpression(), !4681)
    #dbg_value(i64 %47, !4625, !DIExpression(), !4682)
  %48 = extractvalue { ptr, ptr } %1, 0, !dbg !4683
  %49 = extractvalue { ptr, ptr } %1, 1, !dbg !4683
  %50 = icmp eq ptr %49, null, !dbg !4683
  br i1 %50, label %fpcall.throw18, label %fpcall.next19, !dbg !4683

fpcall.next19:                                    ; preds = %deref.next17
  call void %49(i64 %43, i64 %47, ptr %48), !dbg !4683
  br label %if.done, !dbg !4632

for.done:                                         ; preds = %for.loop
  ret void, !dbg !4684

deref.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !4640
  unreachable, !dbg !4640

deref.throw4:                                     ; preds = %cond.true
  call void @runtime.nilPanic(ptr undef), !dbg !4643
  unreachable, !dbg !4643

deref.throw6:                                     ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !4647
  unreachable, !dbg !4647

deref.throw8:                                     ; preds = %deref.next7
  call void @runtime.nilPanic(ptr undef), !dbg !4651
  unreachable, !dbg !4651

fpcall.throw:                                     ; preds = %deref.next9
  call void @runtime.nilPanic(ptr undef), !dbg !4657
  unreachable, !dbg !4657

deref.throw10:                                    ; preds = %if.else
  call void @runtime.nilPanic(ptr undef), !dbg !4666
  unreachable, !dbg !4666

deref.throw12:                                    ; preds = %cond.true2
  call void @runtime.nilPanic(ptr undef), !dbg !4669
  unreachable, !dbg !4669

deref.throw14:                                    ; preds = %if.then3
  call void @runtime.nilPanic(ptr undef), !dbg !4673
  unreachable, !dbg !4673

deref.throw16:                                    ; preds = %deref.next15
  call void @runtime.nilPanic(ptr undef), !dbg !4677
  unreachable, !dbg !4677

fpcall.throw18:                                   ; preds = %deref.next17
  call void @runtime.nilPanic(ptr undef), !dbg !4683
  unreachable, !dbg !4683
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_scanstack(i64 %sp) #1 !dbg !4685 {
entry:
    #dbg_value(i64 %sp, !4687, !DIExpression(), !4688)
    #dbg_value(i64 %sp, !4687, !DIExpression(), !4689)
  %0 = call i64 @"internal/task.StackTop"(ptr undef), !dbg !4690
  call void @runtime.markRoots(i64 %sp, i64 %0, ptr undef), !dbg !4691
  ret void, !dbg !4692
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.unsafeSlicePanic(ptr %context) #1 !dbg !4693 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4694
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.22", i64 37, ptr undef), !dbg !4695
  ret void, !dbg !4696
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.negativeShiftPanic(ptr %context) #1 !dbg !4697 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4698
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.24", i64 14, ptr undef), !dbg !4699
  ret void, !dbg !4700
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printspace(ptr %context) #1 !dbg !4701 {
entry:
  call void @runtime.putchar(i8 32, ptr undef), !dbg !4702
  ret void, !dbg !4703
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memmove(ptr %dst, ptr %src, i64 %size, ptr %context) #1 !dbg !4704 {
entry:
    #dbg_value(ptr %dst, !4706, !DIExpression(), !4709)
    #dbg_value(ptr %src, !4707, !DIExpression(), !4709)
    #dbg_value(i64 %size, !4708, !DIExpression(), !4709)
  call void @llvm.memmove.p0.p0.i64(ptr %dst, ptr %src, i64 %size, i1 false), !dbg !4709
  ret void, !dbg !4709
}

; Function Attrs: nounwind uwtable(sync)
define i64 @main(i32 %argc, ptr nocapture dereferenceable_or_null(8) %argv) #1 !dbg !4710 {
entry:
    #dbg_value(i32 %argc, !4714, !DIExpression(), !4719)
    #dbg_value(ptr %argv, !4715, !DIExpression(), !4719)
  br i1 false, label %if.then, label %if.done, !dbg !4720

if.then:                                          ; preds = %entry
  call void @runtime.allocateHeap(ptr undef), !dbg !4721
  br label %if.done, !dbg !4720

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(i32 %argc, !4714, !DIExpression(), !4722)
  store i32 %argc, ptr @runtime.main_argc, align 4, !dbg !4723
    #dbg_value(i32 %argc, !4716, !DIExpression(), !4723)
    #dbg_value(ptr %argv, !4715, !DIExpression(), !4724)
  store ptr %argv, ptr @runtime.main_argv, align 8, !dbg !4725
    #dbg_value(ptr %argv, !4717, !DIExpression(), !4725)
  call void @tinygo_register_fatal_signals(), !dbg !4726
  %0 = call i64 @runtime.getCurrentStackPointer(ptr undef), !dbg !4727
  store i64 %0, ptr @runtime.stackTop, align 8, !dbg !4728
    #dbg_value(i64 %0, !4718, !DIExpression(), !4728)
  call void @runtime.runMain(ptr undef), !dbg !4729
  ret i64 0, !dbg !4730
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.allocateHeap(ptr %context) unnamed_addr #1 !dbg !4731 {
entry:
  store i64 1073741824, ptr @runtime.heapMaxSize, align 8, !dbg !4738
    #dbg_value(i64 1073741824, !4733, !DIExpression(), !4738)
  br label %for.body, !dbg !4739

for.body:                                         ; preds = %if.then1, %if.then, %entry
  %0 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4740
    #dbg_value(i64 %0, !4733, !DIExpression(), !4740)
  %1 = call ptr @mmap(ptr null, i64 %0, i64 3, i64 34, i64 -1, i64 0), !dbg !4741
    #dbg_value(ptr %1, !4734, !DIExpression(), !4742)
    #dbg_value(ptr %1, !4734, !DIExpression(), !4743)
  %2 = icmp eq ptr %1, inttoptr (i64 -1 to ptr), !dbg !4744
  br i1 %2, label %if.then, label %if.done, !dbg !4739

if.then:                                          ; preds = %for.body
  %3 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4745
  %4 = udiv i64 %3, 2, !dbg !4745
  store i64 %4, ptr @runtime.heapMaxSize, align 8, !dbg !4745
    #dbg_value(i64 %4, !4733, !DIExpression(), !4745)
  %5 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4746
    #dbg_value(i64 %5, !4733, !DIExpression(), !4746)
  %6 = icmp ult i64 %5, 4096, !dbg !4747
  br i1 %6, label %if.then1, label %for.body, !dbg !4739

if.then1:                                         ; preds = %if.then
  call void @runtime.runtimePanic(ptr @"runtime$string.56", i64 27, ptr undef), !dbg !4748
  br label %for.body, !dbg !4739

if.done:                                          ; preds = %for.body
    #dbg_value(ptr %1, !4734, !DIExpression(), !4749)
  %7 = ptrtoint ptr %1 to i64, !dbg !4750
  store i64 %7, ptr @runtime.heapStart, align 8, !dbg !4751
    #dbg_value(i64 %7, !4735, !DIExpression(), !4751)
  %8 = load i64, ptr @runtime.heapStart, align 8, !dbg !4752
    #dbg_value(i64 %8, !4735, !DIExpression(), !4752)
  %9 = load i64, ptr @runtime.heapSize, align 8, !dbg !4753
    #dbg_value(i64 %9, !4736, !DIExpression(), !4753)
  %10 = add i64 %8, %9, !dbg !4754
  store i64 %10, ptr @runtime.heapEnd, align 8, !dbg !4755
    #dbg_value(i64 %10, !4737, !DIExpression(), !4755)
  ret void, !dbg !4756
}

declare void @tinygo_register_fatal_signals() #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @runtime.runMain(ptr %context) unnamed_addr #15 !dbg !4757 {
entry:
  call void @runtime.run(ptr undef), !dbg !4758
  ret void, !dbg !4759
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.run(ptr %context) unnamed_addr #1 !dbg !4760 {
entry:
  call void @runtime.initRand(ptr undef), !dbg !4763
  call void @runtime.initHeap(ptr undef), !dbg !4764
  %0 = load i64, ptr @runtime.stackTop, align 8, !dbg !4765
    #dbg_value(i64 %0, !4762, !DIExpression(), !4765)
  call void @"internal/task.Init"(i64 %0, ptr undef), !dbg !4766
  call void @runtime.initAll(ptr undef), !dbg !4767
  call void @main.main(ptr undef), !dbg !4768
  ret void, !dbg !4769
}

define internal void @runtime.initAll(ptr %context) unnamed_addr #2 {
entry:
  ret void
}

declare void @main.main(ptr) #2

declare ptr @mmap(ptr nocapture, i64, i64, i64, i64, i64) #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_handle_fatal_signal(i32 %sig, i64 %addr) #1 !dbg !4770 {
entry:
    #dbg_value(i32 %sig, !4774, !DIExpression(), !4776)
    #dbg_value(i64 %addr, !4775, !DIExpression(), !4776)
  br i1 false, label %if.then, label %if.done, !dbg !4777

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !4778
  br label %if.done, !dbg !4777

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(i64 %addr, !4775, !DIExpression(), !4779)
  %0 = icmp ne i64 %addr, 0, !dbg !4780
  br i1 %0, label %if.then1, label %if.else, !dbg !4777

if.then1:                                         ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.50", i64 24, ptr undef), !dbg !4781
    #dbg_value(i64 %addr, !4775, !DIExpression(), !4782)
  call void @runtime.printptr(i64 %addr, ptr undef), !dbg !4783
  br label %if.done2, !dbg !4777

if.done2:                                         ; preds = %if.else, %if.then1
  call void @runtime.printstring(ptr @"runtime$string.51", i64 16, ptr undef), !dbg !4784
    #dbg_value(i32 %sig, !4774, !DIExpression(), !4785)
  %1 = icmp eq i32 %sig, 7, !dbg !4786
  br i1 %1, label %switch.body, label %switch.next, !dbg !4777

switch.body:                                      ; preds = %if.done2
  call void @runtime.printlock(ptr undef), !dbg !4787
  call void @runtime.printstring(ptr @"runtime$string.52", i64 6, ptr undef), !dbg !4787
  call void @runtime.printnl(ptr undef), !dbg !4787
  call void @runtime.printunlock(ptr undef), !dbg !4787
  br label %switch.done, !dbg !4777

switch.done:                                      ; preds = %switch.next6, %switch.body5, %switch.body3, %switch.body
    #dbg_value(i32 %sig, !4774, !DIExpression(), !4788)
  call void @raise(i32 %sig), !dbg !4789
  ret void, !dbg !4790

switch.next:                                      ; preds = %if.done2
  %2 = icmp eq i32 %sig, 4, !dbg !4791
  br i1 %2, label %switch.body3, label %switch.next4, !dbg !4777

switch.body3:                                     ; preds = %switch.next
  call void @runtime.printlock(ptr undef), !dbg !4792
  call void @runtime.printstring(ptr @"runtime$string.53", i64 6, ptr undef), !dbg !4792
  call void @runtime.printnl(ptr undef), !dbg !4792
  call void @runtime.printunlock(ptr undef), !dbg !4792
  br label %switch.done, !dbg !4777

switch.next4:                                     ; preds = %switch.next
  %3 = icmp eq i32 %sig, 11, !dbg !4793
  br i1 %3, label %switch.body5, label %switch.next6, !dbg !4777

switch.body5:                                     ; preds = %switch.next4
  call void @runtime.printlock(ptr undef), !dbg !4794
  call void @runtime.printstring(ptr @"runtime$string.54", i64 7, ptr undef), !dbg !4794
  call void @runtime.printnl(ptr undef), !dbg !4794
  call void @runtime.printunlock(ptr undef), !dbg !4794
  br label %switch.done, !dbg !4777

switch.next6:                                     ; preds = %switch.next4
    #dbg_value(i32 %sig, !4774, !DIExpression(), !4795)
  call void @runtime.printlock(ptr undef), !dbg !4796
  call void @runtime.printint32(i32 %sig, ptr undef), !dbg !4796
  call void @runtime.printnl(ptr undef), !dbg !4796
  call void @runtime.printunlock(ptr undef), !dbg !4796
  br label %switch.done, !dbg !4777

if.else:                                          ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.55", i64 20, ptr undef), !dbg !4797
  br label %if.done2, !dbg !4777
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printlock(ptr %context) #1 !dbg !4798 {
entry:
  call void @"(*internal/task.Mutex).Lock"(ptr @runtime.printLock, ptr undef), !dbg !4799
  ret void, !dbg !4800
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printunlock(ptr %context) #1 !dbg !4801 {
entry:
  call void @"(*internal/task.Mutex).Unlock"(ptr @runtime.printLock, ptr undef), !dbg !4802
  ret void, !dbg !4803
}

declare void @raise(i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @runtime.sliceAppend(ptr %srcBuf, ptr nocapture readonly %elemsBuf, i64 %srcLen, i64 %srcCap, i64 %elemsLen, i64 %elemSize, ptr %layout, ptr %context) #1 !dbg !4804 {
entry:
    #dbg_value(ptr %srcBuf, !4809, !DIExpression(), !4817)
    #dbg_value(ptr %elemsBuf, !4810, !DIExpression(), !4817)
    #dbg_value(i64 %srcLen, !4811, !DIExpression(), !4817)
    #dbg_value(i64 %srcCap, !4812, !DIExpression(), !4817)
    #dbg_value(i64 %elemsLen, !4813, !DIExpression(), !4817)
    #dbg_value(i64 %elemSize, !4814, !DIExpression(), !4817)
    #dbg_value(ptr %layout, !4815, !DIExpression(), !4817)
    #dbg_value(i64 %srcLen, !4811, !DIExpression(), !4818)
    #dbg_value(i64 %elemsLen, !4813, !DIExpression(), !4819)
  %0 = add i64 %srcLen, %elemsLen, !dbg !4820
    #dbg_value(i64 %0, !4816, !DIExpression(), !4821)
    #dbg_value(i64 %elemsLen, !4813, !DIExpression(), !4822)
  %1 = icmp ugt i64 %elemsLen, 0, !dbg !4823
  br i1 %1, label %if.then, label %if.done, !dbg !4824

if.then:                                          ; preds = %entry
    #dbg_value(ptr %srcBuf, !4809, !DIExpression(), !4825)
    #dbg_value(i64 %srcLen, !4811, !DIExpression(), !4826)
    #dbg_value(i64 %srcCap, !4812, !DIExpression(), !4827)
    #dbg_value(i64 %0, !4816, !DIExpression(), !4828)
    #dbg_value(i64 %elemSize, !4814, !DIExpression(), !4829)
    #dbg_value(ptr %layout, !4815, !DIExpression(), !4830)
  %2 = call { ptr, i64, i64 } @runtime.sliceGrow(ptr %srcBuf, i64 %srcLen, i64 %srcCap, i64 %0, i64 %elemSize, ptr %layout, ptr undef), !dbg !4831
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4831
    #dbg_value(ptr %3, !4809, !DIExpression(), !4832)
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4831
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4831
    #dbg_value(i64 %5, !4812, !DIExpression(), !4833)
    #dbg_value(ptr %3, !4809, !DIExpression(), !4834)
    #dbg_value(i64 %srcLen, !4811, !DIExpression(), !4835)
    #dbg_value(i64 %elemSize, !4814, !DIExpression(), !4836)
  %6 = mul i64 %srcLen, %elemSize, !dbg !4837
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !4838
    #dbg_value(ptr %elemsBuf, !4810, !DIExpression(), !4839)
    #dbg_value(i64 %elemsLen, !4813, !DIExpression(), !4840)
    #dbg_value(i64 %elemSize, !4814, !DIExpression(), !4841)
  %8 = mul i64 %elemsLen, %elemSize, !dbg !4842
  call void @runtime.memmove(ptr %7, ptr %elemsBuf, i64 %8, ptr undef), !dbg !4843
  br label %if.done, !dbg !4824

if.done:                                          ; preds = %if.then, %entry
  %9 = phi ptr [ %srcBuf, %entry ], [ %3, %if.then ], !dbg !4844
  %10 = phi i64 [ %srcCap, %entry ], [ %5, %if.then ], !dbg !4845
    #dbg_value(ptr %9, !4809, !DIExpression(), !4846)
    #dbg_value(i64 %0, !4816, !DIExpression(), !4847)
    #dbg_value(i64 %10, !4812, !DIExpression(), !4848)
  %11 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %9, 0, !dbg !4849
  %12 = insertvalue { ptr, i64, i64 } %11, i64 %0, 1, !dbg !4849
  %13 = insertvalue { ptr, i64, i64 } %12, i64 %10, 2, !dbg !4849
  ret { ptr, i64, i64 } %13, !dbg !4849
}

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @runtime.sliceGrow(ptr %oldBuf, i64 %oldLen, i64 %oldCap, i64 %newCap, i64 %elemSize, ptr %layout, ptr %context) #1 !dbg !4850 {
entry:
    #dbg_value(ptr %oldBuf, !4854, !DIExpression(), !4861)
    #dbg_value(i64 %oldLen, !4855, !DIExpression(), !4861)
    #dbg_value(i64 %oldCap, !4856, !DIExpression(), !4861)
    #dbg_value(i64 %newCap, !4857, !DIExpression(), !4861)
    #dbg_value(i64 %elemSize, !4858, !DIExpression(), !4861)
    #dbg_value(ptr %layout, !4859, !DIExpression(), !4861)
    #dbg_value(i64 %oldCap, !4856, !DIExpression(), !4862)
    #dbg_value(i64 %newCap, !4857, !DIExpression(), !4863)
  %0 = icmp uge i64 %oldCap, %newCap, !dbg !4864
  br i1 %0, label %if.then, label %if.done, !dbg !4865

if.then:                                          ; preds = %entry
    #dbg_value(ptr %oldBuf, !4854, !DIExpression(), !4866)
    #dbg_value(i64 %oldLen, !4855, !DIExpression(), !4867)
    #dbg_value(i64 %oldCap, !4856, !DIExpression(), !4868)
  %1 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %oldBuf, 0, !dbg !4869
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %oldLen, 1, !dbg !4869
  %3 = insertvalue { ptr, i64, i64 } %2, i64 %oldCap, 2, !dbg !4869
  ret { ptr, i64, i64 } %3, !dbg !4869

if.done:                                          ; preds = %entry
    #dbg_value(i64 %newCap, !4857, !DIExpression(), !4870)
  %4 = call i64 @"math/bits.Len"(i64 %newCap, ptr undef), !dbg !4871
  %5 = icmp slt i64 %4, 0, !dbg !4872
  br i1 %5, label %shift.throw, label %shift.next, !dbg !4872

shift.next:                                       ; preds = %if.done
  %shift.overflow = icmp uge i64 %4, 64, !dbg !4872
  %6 = shl i64 1, %4, !dbg !4872
  %shift.result = select i1 %shift.overflow, i64 0, i64 %6, !dbg !4872
    #dbg_value(i64 %shift.result, !4857, !DIExpression(), !4873)
    #dbg_value(i64 %shift.result, !4857, !DIExpression(), !4874)
    #dbg_value(i64 %elemSize, !4858, !DIExpression(), !4875)
  %7 = mul i64 %shift.result, %elemSize, !dbg !4876
    #dbg_value(ptr %layout, !4859, !DIExpression(), !4877)
  %8 = call ptr @runtime.alloc(i64 %7, ptr %layout, ptr undef), !dbg !4878
    #dbg_value(ptr %8, !4860, !DIExpression(), !4879)
    #dbg_value(i64 %oldLen, !4855, !DIExpression(), !4880)
  %9 = icmp ugt i64 %oldLen, 0, !dbg !4881
  br i1 %9, label %if.then1, label %if.done2, !dbg !4865

if.then1:                                         ; preds = %shift.next
    #dbg_value(ptr %8, !4860, !DIExpression(), !4882)
    #dbg_value(ptr %oldBuf, !4854, !DIExpression(), !4883)
    #dbg_value(i64 %oldLen, !4855, !DIExpression(), !4884)
    #dbg_value(i64 %elemSize, !4858, !DIExpression(), !4885)
  %10 = mul i64 %oldLen, %elemSize, !dbg !4886
  call void @runtime.memmove(ptr %8, ptr %oldBuf, i64 %10, ptr undef), !dbg !4887
  br label %if.done2, !dbg !4865

if.done2:                                         ; preds = %if.then1, %shift.next
    #dbg_value(ptr %8, !4860, !DIExpression(), !4888)
    #dbg_value(i64 %oldLen, !4855, !DIExpression(), !4889)
    #dbg_value(i64 %shift.result, !4857, !DIExpression(), !4890)
  %11 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %8, 0, !dbg !4891
  %12 = insertvalue { ptr, i64, i64 } %11, i64 %oldLen, 1, !dbg !4891
  %13 = insertvalue { ptr, i64, i64 } %12, i64 %shift.result, 2, !dbg !4891
  ret { ptr, i64, i64 } %13, !dbg !4891

shift.throw:                                      ; preds = %if.done
  call void @runtime.negativeShiftPanic(ptr undef), !dbg !4872
  unreachable, !dbg !4872
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_signal_handler(i32 %s) #1 !dbg !4892 {
entry:
    #dbg_value(i32 %s, !4894, !DIExpression(), !4898)
  br label %for.body, !dbg !4899

for.body:                                         ; preds = %for.body, %entry
    #dbg_value(i32 %s, !4894, !DIExpression(), !4900)
  %shift.overflow = icmp uge i32 %s, 32, !dbg !4901
  %0 = shl i32 1, %s, !dbg !4901
  %shift.result = select i1 %shift.overflow, i32 0, i32 %0, !dbg !4901
    #dbg_value(i32 %shift.result, !4895, !DIExpression(), !4902)
  %1 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @runtime.receivedSignals, ptr undef), !dbg !4903
    #dbg_value(i32 %1, !4896, !DIExpression(), !4904)
    #dbg_value(i32 %1, !4896, !DIExpression(), !4905)
    #dbg_value(i32 %1, !4896, !DIExpression(), !4906)
    #dbg_value(i32 %shift.result, !4895, !DIExpression(), !4907)
  %2 = or i32 %1, %shift.result, !dbg !4908
  %3 = call i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr @runtime.receivedSignals, i32 %1, i32 %2, ptr undef), !dbg !4909
    #dbg_value(i1 %3, !4897, !DIExpression(), !4910)
    #dbg_value(i1 %3, !4897, !DIExpression(), !4911)
  br i1 %3, label %if.then, label %for.body, !dbg !4899

if.then:                                          ; preds = %for.body
  %4 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr @runtime.signalFutex, i32 1, ptr undef), !dbg !4912
  %5 = icmp eq i32 %4, 0, !dbg !4913
  br i1 %5, label %if.then1, label %if.done, !dbg !4899

if.then1:                                         ; preds = %if.then
  call void @"(*internal/futex.Futex).WakeAll"(ptr @runtime.signalFutex, ptr undef), !dbg !4914
  br label %if.done, !dbg !4899

if.done:                                          ; preds = %if.then1, %if.then
  ret void, !dbg !4915
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @runtime.stringConcat(ptr dereferenceable_or_null(1) %x.ptr, i64 %x.length, ptr dereferenceable_or_null(1) %y.ptr, i64 %y.length, ptr %context) #1 !dbg !4916 {
entry:
  %complit = alloca %runtime._string, align 8, !dbg !4928
  %y = alloca %runtime._string, align 8, !dbg !4928
  %x = alloca %runtime._string, align 8, !dbg !4928
  %0 = insertvalue %runtime._string zeroinitializer, ptr %x.ptr, 0, !dbg !4928
  %1 = insertvalue %runtime._string %0, i64 %x.length, 1, !dbg !4928
    #dbg_value(ptr %x.ptr, !4924, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4928)
    #dbg_value(i64 %x.length, !4924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4928)
  %2 = insertvalue %runtime._string zeroinitializer, ptr %y.ptr, 0, !dbg !4928
  %3 = insertvalue %runtime._string %2, i64 %y.length, 1, !dbg !4928
    #dbg_value(ptr %y.ptr, !4925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4928)
    #dbg_value(i64 %y.length, !4925, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4928)
  store %runtime._string zeroinitializer, ptr %x, align 8, !dbg !4928
  store %runtime._string %1, ptr %x, align 8, !dbg !4929
  store %runtime._string zeroinitializer, ptr %y, align 8, !dbg !4928
  store %runtime._string %3, ptr %y, align 8, !dbg !4930
  %4 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4931
  %5 = icmp eq ptr %4, null, !dbg !4931
  br i1 %5, label %deref.throw, label %deref.next, !dbg !4931

deref.next:                                       ; preds = %entry
  %6 = load i64, ptr %4, align 8, !dbg !4931
  %7 = icmp eq i64 %6, 0, !dbg !4932
  br i1 %7, label %if.then, label %if.else, !dbg !4933

if.then:                                          ; preds = %deref.next
  %8 = load %runtime._string, ptr %y, align 8, !dbg !4934
    #dbg_value(%runtime._string %8, !4925, !DIExpression(), !4934)
  ret %runtime._string %8, !dbg !4935

if.else:                                          ; preds = %deref.next
  %9 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4936
  %10 = icmp eq ptr %9, null, !dbg !4936
  br i1 %10, label %deref.throw3, label %deref.next4, !dbg !4936

deref.next4:                                      ; preds = %if.else
  %11 = load i64, ptr %9, align 8, !dbg !4936
  %12 = icmp eq i64 %11, 0, !dbg !4937
  br i1 %12, label %if.then1, label %if.else2, !dbg !4933

if.then1:                                         ; preds = %deref.next4
  %13 = load %runtime._string, ptr %x, align 8, !dbg !4938
    #dbg_value(%runtime._string %13, !4924, !DIExpression(), !4938)
  ret %runtime._string %13, !dbg !4939

if.else2:                                         ; preds = %deref.next4
  %14 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4940
  %15 = icmp eq ptr %14, null, !dbg !4940
  br i1 %15, label %deref.throw5, label %deref.next6, !dbg !4940

deref.next6:                                      ; preds = %if.else2
  %16 = load i64, ptr %14, align 8, !dbg !4940
  %17 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4941
  %18 = icmp eq ptr %17, null, !dbg !4941
  br i1 %18, label %deref.throw7, label %deref.next8, !dbg !4941

deref.next8:                                      ; preds = %deref.next6
  %19 = load i64, ptr %17, align 8, !dbg !4941
  %20 = add i64 %16, %19, !dbg !4942
    #dbg_value(i64 %20, !4926, !DIExpression(), !4943)
    #dbg_value(i64 %20, !4926, !DIExpression(), !4944)
  %21 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !4945
  %22 = call ptr @runtime.alloc(i64 %20, ptr %21, ptr undef), !dbg !4946
    #dbg_value(ptr %22, !4927, !DIExpression(), !4947)
    #dbg_value(ptr %22, !4927, !DIExpression(), !4948)
  %23 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 0, !dbg !4949
  %24 = icmp eq ptr %23, null, !dbg !4949
  br i1 %24, label %deref.throw9, label %deref.next10, !dbg !4949

deref.next10:                                     ; preds = %deref.next8
  %25 = load ptr, ptr %23, align 8, !dbg !4949
  %26 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4950
  %27 = icmp eq ptr %26, null, !dbg !4950
  br i1 %27, label %deref.throw11, label %deref.next12, !dbg !4950

deref.next12:                                     ; preds = %deref.next10
  %28 = load i64, ptr %26, align 8, !dbg !4950
  call void @runtime.memcpy(ptr %22, ptr %25, i64 %28, ptr undef), !dbg !4951
    #dbg_value(ptr %22, !4927, !DIExpression(), !4952)
  %29 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4953
  %30 = icmp eq ptr %29, null, !dbg !4953
  br i1 %30, label %deref.throw13, label %deref.next14, !dbg !4953

deref.next14:                                     ; preds = %deref.next12
  %31 = load i64, ptr %29, align 8, !dbg !4953
  %32 = getelementptr i8, ptr %22, i64 %31, !dbg !4954
  %33 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 0, !dbg !4955
  %34 = icmp eq ptr %33, null, !dbg !4955
  br i1 %34, label %deref.throw15, label %deref.next16, !dbg !4955

deref.next16:                                     ; preds = %deref.next14
  %35 = load ptr, ptr %33, align 8, !dbg !4955
  %36 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4956
  %37 = icmp eq ptr %36, null, !dbg !4956
  br i1 %37, label %deref.throw17, label %deref.next18, !dbg !4956

deref.next18:                                     ; preds = %deref.next16
  %38 = load i64, ptr %36, align 8, !dbg !4956
  call void @runtime.memcpy(ptr %32, ptr %35, i64 %38, ptr undef), !dbg !4957
  store %runtime._string zeroinitializer, ptr %complit, align 8, !dbg !4928
  %39 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !4958
    #dbg_value(ptr %22, !4927, !DIExpression(), !4959)
  %40 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !4960
    #dbg_value(i64 %20, !4926, !DIExpression(), !4961)
  %41 = icmp eq ptr %39, null, !dbg !4958
  br i1 %41, label %store.throw, label %store.next, !dbg !4958

store.next:                                       ; preds = %deref.next18
  store ptr %22, ptr %39, align 8, !dbg !4958
  %42 = icmp eq ptr %40, null, !dbg !4960
  br i1 %42, label %store.throw19, label %store.next20, !dbg !4960

store.next20:                                     ; preds = %store.next
  store i64 %20, ptr %40, align 8, !dbg !4960
    #dbg_value(i64 %20, !4926, !DIExpression(), !4961)
  %43 = load %runtime._string, ptr %complit, align 8, !dbg !4962
  ret %runtime._string %43, !dbg !4963

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !4931
  unreachable, !dbg !4931

deref.throw3:                                     ; preds = %if.else
  call void @runtime.nilPanic(ptr undef), !dbg !4936
  unreachable, !dbg !4936

deref.throw5:                                     ; preds = %if.else2
  call void @runtime.nilPanic(ptr undef), !dbg !4940
  unreachable, !dbg !4940

deref.throw7:                                     ; preds = %deref.next6
  call void @runtime.nilPanic(ptr undef), !dbg !4941
  unreachable, !dbg !4941

deref.throw9:                                     ; preds = %deref.next8
  call void @runtime.nilPanic(ptr undef), !dbg !4949
  unreachable, !dbg !4949

deref.throw11:                                    ; preds = %deref.next10
  call void @runtime.nilPanic(ptr undef), !dbg !4950
  unreachable, !dbg !4950

deref.throw13:                                    ; preds = %deref.next12
  call void @runtime.nilPanic(ptr undef), !dbg !4953
  unreachable, !dbg !4953

deref.throw15:                                    ; preds = %deref.next14
  call void @runtime.nilPanic(ptr undef), !dbg !4955
  unreachable, !dbg !4955

deref.throw17:                                    ; preds = %deref.next16
  call void @runtime.nilPanic(ptr undef), !dbg !4956
  unreachable, !dbg !4956

store.throw:                                      ; preds = %deref.next18
  call void @runtime.nilPanic(ptr undef), !dbg !4958
  unreachable, !dbg !4958

store.throw19:                                    ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !4960
  unreachable, !dbg !4960
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @runtime.stringFromBytes(ptr nocapture readonly dereferenceable_or_null(1) %x.ptr, i64 %x.len, i64 %x.cap, ptr %context) #1 !dbg !4964 {
entry:
  %complit = alloca %runtime._string, align 8, !dbg !4971
  %x = alloca { ptr, i64, i64 }, align 8, !dbg !4971
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %x.ptr, 0, !dbg !4971
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %x.len, 1, !dbg !4971
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %x.cap, 2, !dbg !4971
    #dbg_value(ptr %x.ptr, !4969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4971)
    #dbg_value(i64 %x.len, !4969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4971)
    #dbg_value(i64 %x.cap, !4969, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4971)
  store { ptr, i64, i64 } zeroinitializer, ptr %x, align 8, !dbg !4971
  store { ptr, i64, i64 } %2, ptr %x, align 8, !dbg !4972
  %3 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4973
  %4 = icmp eq ptr %3, null, !dbg !4973
  br i1 %4, label %deref.throw, label %deref.next, !dbg !4973

deref.next:                                       ; preds = %entry
  %5 = load i64, ptr %3, align 8, !dbg !4973
  %6 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !4974
  %7 = call ptr @runtime.alloc(i64 %5, ptr %6, ptr undef), !dbg !4975
    #dbg_value(ptr %7, !4970, !DIExpression(), !4976)
    #dbg_value(ptr %7, !4970, !DIExpression(), !4977)
  %8 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 0, !dbg !4978
  %9 = icmp eq ptr %8, null, !dbg !4978
  br i1 %9, label %deref.throw1, label %deref.next2, !dbg !4978

deref.next2:                                      ; preds = %deref.next
  %10 = load ptr, ptr %8, align 8, !dbg !4978
  %11 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4979
  %12 = icmp eq ptr %11, null, !dbg !4979
  br i1 %12, label %deref.throw3, label %deref.next4, !dbg !4979

deref.next4:                                      ; preds = %deref.next2
  %13 = load i64, ptr %11, align 8, !dbg !4979
  call void @runtime.memcpy(ptr %7, ptr %10, i64 %13, ptr undef), !dbg !4980
  store %runtime._string zeroinitializer, ptr %complit, align 8, !dbg !4971
  %14 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !4981
    #dbg_value(ptr %7, !4970, !DIExpression(), !4982)
  %15 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !4983
  %16 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4984
  %17 = icmp eq ptr %16, null, !dbg !4984
  br i1 %17, label %deref.throw5, label %deref.next6, !dbg !4984

deref.next6:                                      ; preds = %deref.next4
  %18 = load i64, ptr %16, align 8, !dbg !4984
  %19 = icmp eq ptr %14, null, !dbg !4981
  br i1 %19, label %store.throw, label %store.next, !dbg !4981

store.next:                                       ; preds = %deref.next6
  store ptr %7, ptr %14, align 8, !dbg !4981
  %20 = icmp eq ptr %15, null, !dbg !4983
  br i1 %20, label %store.throw7, label %store.next8, !dbg !4983

store.next8:                                      ; preds = %store.next
  store i64 %18, ptr %15, align 8, !dbg !4983
  %21 = load %runtime._string, ptr %complit, align 8, !dbg !4985
  ret %runtime._string %21, !dbg !4986

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !4973
  unreachable, !dbg !4973

deref.throw1:                                     ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !4978
  unreachable, !dbg !4978

deref.throw3:                                     ; preds = %deref.next2
  call void @runtime.nilPanic(ptr undef), !dbg !4979
  unreachable, !dbg !4979

deref.throw5:                                     ; preds = %deref.next4
  call void @runtime.nilPanic(ptr undef), !dbg !4984
  unreachable, !dbg !4984

store.throw:                                      ; preds = %deref.next6
  call void @runtime.nilPanic(ptr undef), !dbg !4981
  unreachable, !dbg !4981

store.throw7:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !4983
  unreachable, !dbg !4983
}

; Function Attrs: nounwind uwtable(sync)
define i64 @f_gold(i64 %a, i64 %b) #1 !dbg !4987 {
entry:
    #dbg_value(i64 %a, !4992, !DIExpression(), !4994)
    #dbg_value(i64 %b, !4993, !DIExpression(), !4994)
    #dbg_value(i64 %a, !4992, !DIExpression(), !4995)
  %0 = icmp eq i64 %a, 0, !dbg !4996
  br i1 %0, label %if.then, label %cond.false, !dbg !4997

if.then:                                          ; preds = %cond.false, %entry
  ret i64 1, !dbg !4998

cond.false:                                       ; preds = %entry
    #dbg_value(i64 %b, !4993, !DIExpression(), !4999)
  %1 = icmp eq i64 %b, 0, !dbg !5000
  br i1 %1, label %if.then, label %if.done, !dbg !4997

if.done:                                          ; preds = %cond.false
    #dbg_value(i64 %a, !4992, !DIExpression(), !5001)
  %2 = sitofp i64 %a to double, !dbg !5002
  %3 = call double @math.Abs(double %2, ptr undef), !dbg !5003
  %4 = call double @math.Log10(double %3, ptr undef), !dbg !5004
    #dbg_value(i64 %b, !4993, !DIExpression(), !5005)
  %5 = sitofp i64 %b to double, !dbg !5006
  %6 = call double @math.Abs(double %5, ptr undef), !dbg !5007
  %7 = call double @math.Log10(double %6, ptr undef), !dbg !5008
  %8 = fadd double %4, %7, !dbg !5009
  %9 = call double @math.Floor(double %8, ptr undef), !dbg !5010
  %10 = fadd double %9, 1.000000e+00, !dbg !5011
  %abovemin = fcmp ole double 0xC3E0000000000000, %10, !dbg !5012
  %belowmax = fcmp ole double %10, 0x43DFFFFFFFFFFFFE, !dbg !5012
  %inbounds = and i1 %abovemin, %belowmax, !dbg !5012
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5012
  %isnan = fcmp uno double %10, %10, !dbg !5012
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !5012
  %normal = fptosi double %10 to i64, !dbg !5012
  %11 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !5012
  ret i64 %11, !dbg !5013
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
!1742 = distinct !DISubprogram(name: "math.Abs", linkageName: "math.Abs", scope: !1743, file: !1743, line: 13, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !1746)
!1743 = !DIFile(filename: "abs.go", directory: "/usr/local/go/src/math")
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!798}
!1746 = !{!1747}
!1747 = !DILocalVariable(name: "x", arg: 1, scope: !1742, file: !1743, line: 13, type: !798)
!1748 = !DILocation(line: 13, column: 6, scope: !1742)
!1749 = !DILocation(line: 14, column: 37, scope: !1742)
!1750 = !DILocation(line: 14, column: 36, scope: !1742)
!1751 = !DILocation(line: 14, column: 40, scope: !1742)
!1752 = !DILocation(line: 14, column: 24, scope: !1742)
!1753 = !DILocation(line: 14, column: 2, scope: !1742)
!1754 = distinct !DISubprogram(name: "math.Float64bits", linkageName: "math.Float64bits", scope: !1755, file: !1755, line: 35, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !1756)
!1755 = !DIFile(filename: "unsafe.go", directory: "/usr/local/go/src/math")
!1756 = !{!1757}
!1757 = !DILocalVariable(name: "f", arg: 1, scope: !1754, file: !1755, line: 35, type: !798)
!1758 = !DILocation(line: 35, column: 6, scope: !1754)
!1759 = !DILocation(line: 35, column: 18, scope: !1754)
!1760 = !DILocation(line: 35, column: 45, scope: !1754)
!1761 = !DILocation(line: 35, column: 38, scope: !1754)
!1762 = distinct !DISubprogram(name: "math.Float64frombits", linkageName: "math.Float64frombits", scope: !1755, file: !1755, line: 41, type: !1763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !1765)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!341}
!1765 = !{!1766}
!1766 = !DILocalVariable(name: "b", arg: 1, scope: !1762, file: !1755, line: 41, type: !341)
!1767 = !DILocation(line: 41, column: 6, scope: !1762)
!1768 = !DILocation(line: 41, column: 22, scope: !1762)
!1769 = !DILocation(line: 41, column: 49, scope: !1762)
!1770 = !DILocation(line: 41, column: 42, scope: !1762)
!1771 = distinct !DISubprogram(name: "math.Log", linkageName: "math.Log", scope: !1772, file: !1772, line: 81, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !1773)
!1772 = !DIFile(filename: "log.go", directory: "/usr/local/go/src/math")
!1773 = !{!1774}
!1774 = !DILocalVariable(name: "x", arg: 1, scope: !1771, file: !1772, line: 81, type: !798)
!1775 = !DILocation(line: 81, column: 6, scope: !1771)
!1776 = distinct !DISubprogram(name: "math.Floor", linkageName: "math.Floor", scope: !1777, file: !1777, line: 14, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !1778)
!1777 = !DIFile(filename: "floor.go", directory: "/usr/local/go/src/math")
!1778 = !{!1779}
!1779 = !DILocalVariable(name: "x", arg: 1, scope: !1776, file: !1777, line: 14, type: !798)
!1780 = !DILocation(line: 14, column: 6, scope: !1776)
!1781 = distinct !DISubprogram(name: "math.Log10", linkageName: "math.Log10", scope: !1782, file: !1782, line: 9, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !1783)
!1782 = !DIFile(filename: "log10.go", directory: "/usr/local/go/src/math")
!1783 = !{!1784}
!1784 = !DILocalVariable(name: "x", arg: 1, scope: !1781, file: !1782, line: 9, type: !798)
!1785 = !DILocation(line: 9, column: 6, scope: !1781)
!1786 = !DILocation(line: 0, scope: !1781)
!1787 = !DILocation(line: 11, column: 20, scope: !1781)
!1788 = !DILocation(line: 11, column: 19, scope: !1781)
!1789 = !DILocation(line: 11, column: 3, scope: !1781)
!1790 = !DILocation(line: 13, column: 15, scope: !1781)
!1791 = !DILocation(line: 13, column: 14, scope: !1781)
!1792 = !DILocation(line: 13, column: 2, scope: !1781)
!1793 = distinct !DISubprogram(name: "math.archLog10", linkageName: "math.archLog10", scope: !2, file: !2, line: 104, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !1794)
!1794 = !{!1795}
!1795 = !DILocalVariable(name: "x", arg: 1, scope: !1793, file: !2, line: 104, type: !798)
!1796 = !DILocation(line: 104, column: 6, scope: !1793)
!1797 = !DILocation(line: 105, column: 7, scope: !1793)
!1798 = distinct !DISubprogram(name: "math.log10", linkageName: "math.log10", scope: !1782, file: !1782, line: 16, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !1799)
!1799 = !{!1800}
!1800 = !DILocalVariable(name: "x", arg: 1, scope: !1798, file: !1782, line: 16, type: !798)
!1801 = !DILocation(line: 16, column: 6, scope: !1798)
!1802 = !DILocation(line: 17, column: 13, scope: !1798)
!1803 = !DILocation(line: 17, column: 12, scope: !1798)
!1804 = !DILocation(line: 17, column: 16, scope: !1798)
!1805 = !DILocation(line: 17, column: 2, scope: !1798)
!1806 = distinct !DISubprogram(name: "sync/atomic.SwapUint32", linkageName: "sync/atomic.SwapUint32", scope: !1807, file: !1807, line: 77, type: !1808, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1811)
!1807 = !DIFile(filename: "doc.go", directory: "/usr/local/go/src/sync/atomic")
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!1810, !104}
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64, dwarfAddressSpace: 0)
!1811 = !{!1812, !1813}
!1812 = !DILocalVariable(name: "addr", arg: 1, scope: !1806, file: !1807, line: 77, type: !1810)
!1813 = !DILocalVariable(name: "new", arg: 2, scope: !1806, file: !1807, line: 77, type: !104)
!1814 = !DILocation(line: 77, column: 6, scope: !1806)
!1815 = distinct !DISubprogram(name: "sync/atomic.CompareAndSwapUint32", linkageName: "sync/atomic.CompareAndSwapUint32", scope: !1807, file: !1807, line: 99, type: !1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1818)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!1810, !104, !104}
!1818 = !{!1819, !1820, !1821}
!1819 = !DILocalVariable(name: "addr", arg: 1, scope: !1815, file: !1807, line: 99, type: !1810)
!1820 = !DILocalVariable(name: "old", arg: 2, scope: !1815, file: !1807, line: 99, type: !104)
!1821 = !DILocalVariable(name: "new", arg: 3, scope: !1815, file: !1807, line: 99, type: !104)
!1822 = !DILocation(line: 99, column: 6, scope: !1815)
!1823 = distinct !DISubprogram(name: "sync/atomic.AddUint32", linkageName: "sync/atomic.AddUint32", scope: !1807, file: !1807, line: 123, type: !1808, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1824)
!1824 = !{!1825, !1826}
!1825 = !DILocalVariable(name: "addr", arg: 1, scope: !1823, file: !1807, line: 123, type: !1810)
!1826 = !DILocalVariable(name: "delta", arg: 2, scope: !1823, file: !1807, line: 123, type: !104)
!1827 = !DILocation(line: 123, column: 6, scope: !1823)
!1828 = distinct !DISubprogram(name: "sync/atomic.LoadUint32", linkageName: "sync/atomic.LoadUint32", scope: !1807, file: !1807, line: 183, type: !1829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1831)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!1810}
!1831 = !{!1832}
!1832 = !DILocalVariable(name: "addr", arg: 1, scope: !1828, file: !1807, line: 183, type: !1810)
!1833 = !DILocation(line: 183, column: 6, scope: !1828)
!1834 = distinct !DISubprogram(name: "sync/atomic.StoreUint32", linkageName: "sync/atomic.StoreUint32", scope: !1807, file: !1807, line: 205, type: !1808, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1835)
!1835 = !{!1836, !1837}
!1836 = !DILocalVariable(name: "addr", arg: 1, scope: !1834, file: !1807, line: 205, type: !1810)
!1837 = !DILocalVariable(name: "val", arg: 2, scope: !1834, file: !1807, line: 205, type: !104)
!1838 = !DILocation(line: 205, column: 6, scope: !1834)
!1839 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Add", linkageName: "(*sync/atomic.Uint32).Add", scope: !1840, file: !1840, line: 161, type: !1841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1844)
!1840 = !DIFile(filename: "type.go", directory: "/usr/local/go/src/sync/atomic")
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!1843, !104}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64, dwarfAddressSpace: 0)
!1844 = !{!1845, !1846}
!1845 = !DILocalVariable(name: "x", arg: 1, scope: !1839, file: !1840, line: 161, type: !1843)
!1846 = !DILocalVariable(name: "delta", arg: 2, scope: !1839, file: !1840, line: 161, type: !104)
!1847 = !DILocation(line: 161, column: 18, scope: !1839)
!1848 = !DILocation(line: 161, column: 69, scope: !1839)
!1849 = !DILocation(line: 161, column: 71, scope: !1839)
!1850 = !DILocation(line: 161, column: 74, scope: !1839)
!1851 = !DILocation(line: 161, column: 67, scope: !1839)
!1852 = !DILocation(line: 161, column: 51, scope: !1839)
!1853 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).CompareAndSwap", linkageName: "(*sync/atomic.Uint32).CompareAndSwap", scope: !1840, file: !1840, line: 156, type: !1854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1856)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!1843, !104, !104}
!1856 = !{!1857, !1858, !1859}
!1857 = !DILocalVariable(name: "x", arg: 1, scope: !1853, file: !1840, line: 156, type: !1843)
!1858 = !DILocalVariable(name: "old", arg: 2, scope: !1853, file: !1840, line: 156, type: !104)
!1859 = !DILocalVariable(name: "new", arg: 3, scope: !1853, file: !1840, line: 156, type: !104)
!1860 = !DILocation(line: 156, column: 18, scope: !1853)
!1861 = !DILocation(line: 157, column: 31, scope: !1853)
!1862 = !DILocation(line: 157, column: 33, scope: !1853)
!1863 = !DILocation(line: 157, column: 36, scope: !1853)
!1864 = !DILocation(line: 157, column: 41, scope: !1853)
!1865 = !DILocation(line: 157, column: 29, scope: !1853)
!1866 = !DILocation(line: 157, column: 2, scope: !1853)
!1867 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Load", linkageName: "(*sync/atomic.Uint32).Load", scope: !1840, file: !1840, line: 147, type: !1868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1870)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!1843}
!1870 = !{!1871}
!1871 = !DILocalVariable(name: "x", arg: 1, scope: !1867, file: !1840, line: 147, type: !1843)
!1872 = !DILocation(line: 147, column: 18, scope: !1867)
!1873 = !DILocation(line: 147, column: 53, scope: !1867)
!1874 = !DILocation(line: 147, column: 55, scope: !1867)
!1875 = !DILocation(line: 147, column: 51, scope: !1867)
!1876 = !DILocation(line: 147, column: 34, scope: !1867)
!1877 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Store", linkageName: "(*sync/atomic.Uint32).Store", scope: !1840, file: !1840, line: 150, type: !1841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1878)
!1878 = !{!1879, !1880}
!1879 = !DILocalVariable(name: "x", arg: 1, scope: !1877, file: !1840, line: 150, type: !1843)
!1880 = !DILocalVariable(name: "val", arg: 2, scope: !1877, file: !1840, line: 150, type: !104)
!1881 = !DILocation(line: 150, column: 18, scope: !1877)
!1882 = !DILocation(line: 150, column: 51, scope: !1877)
!1883 = !DILocation(line: 150, column: 53, scope: !1877)
!1884 = !DILocation(line: 150, column: 56, scope: !1877)
!1885 = !DILocation(line: 150, column: 49, scope: !1877)
!1886 = !DILocation(line: 150, column: 62, scope: !1877)
!1887 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Swap", linkageName: "(*sync/atomic.Uint32).Swap", scope: !1840, file: !1840, line: 153, type: !1841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1888)
!1888 = !{!1889, !1890}
!1889 = !DILocalVariable(name: "x", arg: 1, scope: !1887, file: !1840, line: 153, type: !1843)
!1890 = !DILocalVariable(name: "new", arg: 2, scope: !1887, file: !1840, line: 153, type: !104)
!1891 = !DILocation(line: 153, column: 18, scope: !1887)
!1892 = !DILocation(line: 153, column: 69, scope: !1887)
!1893 = !DILocation(line: 153, column: 71, scope: !1887)
!1894 = !DILocation(line: 153, column: 74, scope: !1887)
!1895 = !DILocation(line: 153, column: 67, scope: !1887)
!1896 = !DILocation(line: 153, column: 50, scope: !1887)
!1897 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wait", linkageName: "(*internal/futex.Futex).Wait", scope: !1898, file: !1898, line: 25, type: !1899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !1902)
!1898 = !DIFile(filename: "futex.go", directory: "/usr/local/lib/tinygo/src/internal/futex")
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!1901, !104}
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64, dwarfAddressSpace: 0)
!1902 = !{!1903, !1904}
!1903 = !DILocalVariable(name: "f", arg: 1, scope: !1897, file: !1898, line: 25, type: !1901)
!1904 = !DILocalVariable(name: "cmp", arg: 2, scope: !1897, file: !1898, line: 25, type: !104)
!1905 = !DILocation(line: 25, column: 17, scope: !1897)
!1906 = !DILocation(line: 26, column: 46, scope: !1897)
!1907 = !DILocation(line: 26, column: 48, scope: !1897)
!1908 = !DILocation(line: 26, column: 58, scope: !1897)
!1909 = !DILocation(line: 26, column: 19, scope: !1897)
!1910 = !DILocation(line: 44, column: 2, scope: !1897)
!1911 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wake", linkageName: "(*internal/futex.Futex).Wake", scope: !1898, file: !1898, line: 53, type: !1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !1914)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!1901}
!1914 = !{!1915}
!1915 = !DILocalVariable(name: "f", arg: 1, scope: !1911, file: !1898, line: 53, type: !1901)
!1916 = !DILocation(line: 53, column: 17, scope: !1911)
!1917 = !DILocation(line: 54, column: 46, scope: !1911)
!1918 = !DILocation(line: 54, column: 48, scope: !1911)
!1919 = !DILocation(line: 54, column: 19, scope: !1911)
!1920 = !DILocation(line: 55, column: 2, scope: !1911)
!1921 = distinct !DISubprogram(name: "(*internal/futex.Futex).WakeAll", linkageName: "(*internal/futex.Futex).WakeAll", scope: !1898, file: !1898, line: 58, type: !1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !1922)
!1922 = !{!1923}
!1923 = !DILocalVariable(name: "f", arg: 1, scope: !1921, file: !1898, line: 58, type: !1901)
!1924 = !DILocation(line: 58, column: 17, scope: !1921)
!1925 = !DILocation(line: 59, column: 50, scope: !1921)
!1926 = !DILocation(line: 59, column: 52, scope: !1921)
!1927 = !DILocation(line: 59, column: 23, scope: !1921)
!1928 = !DILocation(line: 60, column: 2, scope: !1921)
!1929 = distinct !DISubprogram(name: "(internal/gclayout.Layout).AsPtr", linkageName: "(internal/gclayout.Layout).AsPtr", scope: !1930, file: !1930, line: 26, type: !1931, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1021, retainedNodes: !1934)
!1930 = !DIFile(filename: "gclayout.go", directory: "/usr/local/lib/tinygo/src/internal/gclayout")
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!1933}
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/gclayout.Layout", baseType: !49)
!1934 = !{!1935}
!1935 = !DILocalVariable(name: "l", arg: 1, scope: !1929, file: !1930, line: 26, type: !1933)
!1936 = !DILocation(line: 26, column: 17, scope: !1929)
!1937 = !DILocation(line: 26, column: 64, scope: !1929)
!1938 = !DILocation(line: 26, column: 63, scope: !1929)
!1939 = !DILocation(line: 26, column: 42, scope: !1929)
!1940 = distinct !DISubprogram(name: "internal/itoa.Itoa", linkageName: "internal/itoa.Itoa", scope: !9, file: !9, line: 10, type: !1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !1944)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!1943}
!1943 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!1944 = !{!1945}
!1945 = !DILocalVariable(name: "val", arg: 1, scope: !1940, file: !9, line: 10, type: !1943)
!1946 = !DILocation(line: 10, column: 6, scope: !1940)
!1947 = !DILocation(line: 11, column: 5, scope: !1940)
!1948 = !DILocation(line: 11, column: 9, scope: !1940)
!1949 = !DILocation(line: 0, scope: !1940)
!1950 = !DILocation(line: 12, column: 28, scope: !1940)
!1951 = !DILocation(line: 12, column: 27, scope: !1940)
!1952 = !DILocation(line: 12, column: 21, scope: !1940)
!1953 = !DILocation(line: 12, column: 14, scope: !1940)
!1954 = !DILocation(line: 12, column: 3, scope: !1940)
!1955 = !DILocation(line: 14, column: 20, scope: !1940)
!1956 = !DILocation(line: 14, column: 14, scope: !1940)
!1957 = !DILocation(line: 14, column: 2, scope: !1940)
!1958 = distinct !DISubprogram(name: "internal/itoa.Uitoa", linkageName: "internal/itoa.Uitoa", scope: !9, file: !9, line: 18, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !1959)
!1959 = !{!1960, !1961, !1962}
!1960 = !DILocalVariable(name: "val", arg: 1, scope: !1958, file: !9, line: 18, type: !1738)
!1961 = !DILocalVariable(name: "i", scope: !1958, file: !9, line: 23, type: !1943)
!1962 = !DILocalVariable(name: "q", scope: !1958, file: !9, line: 25, type: !1738)
!1963 = !DILocation(line: 18, column: 6, scope: !1958)
!1964 = !DILocation(line: 19, column: 5, scope: !1958)
!1965 = !DILocation(line: 19, column: 9, scope: !1958)
!1966 = !DILocation(line: 0, scope: !1958)
!1967 = !DILocation(line: 20, column: 3, scope: !1958)
!1968 = !DILocation(line: 22, column: 6, scope: !1958)
!1969 = !DILocation(line: 23, column: 2, scope: !1958)
!1970 = !DILocation(line: 18, column: 12, scope: !1958)
!1971 = !DILocation(line: 24, column: 6, scope: !1958)
!1972 = !DILocation(line: 24, column: 10, scope: !1958)
!1973 = !DILocation(line: 25, column: 8, scope: !1958)
!1974 = !DILocation(line: 25, column: 12, scope: !1958)
!1975 = !DILocation(line: 25, column: 3, scope: !1958)
!1976 = !DILocation(line: 26, column: 7, scope: !1958)
!1977 = !DILocation(line: 26, column: 23, scope: !1958)
!1978 = !DILocation(line: 26, column: 21, scope: !1958)
!1979 = !DILocation(line: 26, column: 29, scope: !1958)
!1980 = !DILocation(line: 26, column: 30, scope: !1958)
!1981 = !DILocation(line: 26, column: 27, scope: !1958)
!1982 = !DILocation(line: 26, column: 16, scope: !1958)
!1983 = !DILocation(line: 26, column: 6, scope: !1958)
!1984 = !DILocation(line: 27, column: 3, scope: !1958)
!1985 = !DILocation(line: 28, column: 9, scope: !1958)
!1986 = !DILocation(line: 28, column: 3, scope: !1958)
!1987 = !DILocation(line: 31, column: 6, scope: !1958)
!1988 = !DILocation(line: 31, column: 22, scope: !1958)
!1989 = !DILocation(line: 31, column: 20, scope: !1958)
!1990 = !DILocation(line: 31, column: 15, scope: !1958)
!1991 = !DILocation(line: 31, column: 5, scope: !1958)
!1992 = !DILocation(line: 32, column: 20, scope: !1958)
!1993 = !DILocation(line: 32, column: 19, scope: !1958)
!1994 = !DILocation(line: 32, column: 15, scope: !1958)
!1995 = !DILocation(line: 32, column: 2, scope: !1958)
!1996 = distinct !DISubprogram(name: "unicode/utf8.DecodeRuneInString", linkageName: "unicode/utf8.DecodeRuneInString", scope: !17, file: !17, line: 219, type: !1997, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!44}
!1999 = !{!2000, !2001, !2003}
!2000 = !DILocalVariable(name: "s", arg: 1, scope: !1996, file: !17, line: 219, type: !44)
!2001 = !DILocalVariable(name: "r", scope: !1996, file: !17, line: 219, type: !2002)
!2002 = !DIBasicType(name: "rune", size: 32, encoding: DW_ATE_signed)
!2003 = !DILocalVariable(name: "size", scope: !1996, file: !17, line: 219, type: !1943)
!2004 = !DILocation(line: 219, column: 6, scope: !1996)
!2005 = !DILocation(line: 223, column: 5, scope: !1996)
!2006 = !DILocation(line: 223, column: 7, scope: !1996)
!2007 = !DILocation(line: 0, scope: !1996)
!2008 = !DILocation(line: 223, column: 16, scope: !1996)
!2009 = !DILocation(line: 223, column: 17, scope: !1996)
!2010 = !DILocation(line: 223, column: 21, scope: !1996)
!2011 = !DILocation(line: 224, column: 15, scope: !1996)
!2012 = !DILocation(line: 224, column: 16, scope: !1996)
!2013 = !DILocation(line: 224, column: 14, scope: !1996)
!2014 = !DILocation(line: 224, column: 3, scope: !1996)
!2015 = !DILocation(line: 226, column: 36, scope: !1996)
!2016 = !DILocation(line: 226, column: 35, scope: !1996)
!2017 = !DILocation(line: 226, column: 3, scope: !1996)
!2018 = !DILocation(line: 226, column: 6, scope: !1996)
!2019 = !DILocation(line: 228, column: 2, scope: !1996)
!2020 = distinct !DISubprogram(name: "unicode/utf8.decodeRuneInStringSlow", linkageName: "unicode/utf8.decodeRuneInStringSlow", scope: !17, file: !17, line: 231, type: !1997, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2021)
!2021 = !{!2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031}
!2022 = !DILocalVariable(name: "s", arg: 1, scope: !2020, file: !17, line: 231, type: !44)
!2023 = !DILocalVariable(name: "n", scope: !2020, file: !17, line: 232, type: !1943)
!2024 = !DILocalVariable(name: "s0", scope: !2020, file: !17, line: 236, type: !536)
!2025 = !DILocalVariable(name: "x", scope: !2020, file: !17, line: 237, type: !4)
!2026 = !DILocalVariable(name: "mask", scope: !2020, file: !17, line: 242, type: !2002)
!2027 = !DILocalVariable(name: "sz", scope: !2020, file: !17, line: 245, type: !1943)
!2028 = !DILocalVariable(name: "accept", scope: !2020, file: !17, line: 246, type: !24)
!2029 = !DILocalVariable(name: "s1", scope: !2020, file: !17, line: 250, type: !536)
!2030 = !DILocalVariable(name: "s2", scope: !2020, file: !17, line: 257, type: !536)
!2031 = !DILocalVariable(name: "s3", scope: !2020, file: !17, line: 264, type: !536)
!2032 = !DILocation(line: 231, column: 6, scope: !2020)
!2033 = !DILocation(line: 232, column: 11, scope: !2020)
!2034 = !DILocation(line: 232, column: 10, scope: !2020)
!2035 = !DILocation(line: 232, column: 2, scope: !2020)
!2036 = !DILocation(line: 233, column: 5, scope: !2020)
!2037 = !DILocation(line: 233, column: 7, scope: !2020)
!2038 = !DILocation(line: 0, scope: !2020)
!2039 = !DILocation(line: 234, column: 3, scope: !2020)
!2040 = !DILocation(line: 236, column: 8, scope: !2020)
!2041 = !DILocation(line: 236, column: 9, scope: !2020)
!2042 = !DILocation(line: 236, column: 2, scope: !2020)
!2043 = !DILocation(line: 237, column: 13, scope: !2020)
!2044 = !DILocation(line: 237, column: 12, scope: !2020)
!2045 = !DILocation(line: 237, column: 2, scope: !2020)
!2046 = !DILocation(line: 238, column: 5, scope: !2020)
!2047 = !DILocation(line: 238, column: 7, scope: !2020)
!2048 = !DILocation(line: 242, column: 16, scope: !2020)
!2049 = !DILocation(line: 242, column: 15, scope: !2020)
!2050 = !DILocation(line: 242, column: 19, scope: !2020)
!2051 = !DILocation(line: 242, column: 25, scope: !2020)
!2052 = !DILocation(line: 242, column: 3, scope: !2020)
!2053 = !DILocation(line: 243, column: 15, scope: !2020)
!2054 = !DILocation(line: 243, column: 16, scope: !2020)
!2055 = !DILocation(line: 243, column: 14, scope: !2020)
!2056 = !DILocation(line: 243, column: 22, scope: !2020)
!2057 = !DILocation(line: 243, column: 20, scope: !2020)
!2058 = !DILocation(line: 243, column: 39, scope: !2020)
!2059 = !DILocation(line: 243, column: 38, scope: !2020)
!2060 = !DILocation(line: 243, column: 27, scope: !2020)
!2061 = !DILocation(line: 243, column: 3, scope: !2020)
!2062 = !DILocation(line: 245, column: 12, scope: !2020)
!2063 = !DILocation(line: 245, column: 14, scope: !2020)
!2064 = !DILocation(line: 245, column: 11, scope: !2020)
!2065 = !DILocation(line: 245, column: 2, scope: !2020)
!2066 = !DILocation(line: 246, column: 25, scope: !2020)
!2067 = !DILocation(line: 246, column: 26, scope: !2020)
!2068 = !DILocation(line: 246, column: 24, scope: !2020)
!2069 = !DILocation(line: 246, column: 2, scope: !2020)
!2070 = !DILocation(line: 247, column: 5, scope: !2020)
!2071 = !DILocation(line: 247, column: 9, scope: !2020)
!2072 = !DILocation(line: 247, column: 7, scope: !2020)
!2073 = !DILocation(line: 248, column: 3, scope: !2020)
!2074 = !DILocation(line: 250, column: 8, scope: !2020)
!2075 = !DILocation(line: 250, column: 9, scope: !2020)
!2076 = !DILocation(line: 250, column: 2, scope: !2020)
!2077 = !DILocation(line: 251, column: 5, scope: !2020)
!2078 = !DILocation(line: 251, column: 17, scope: !2020)
!2079 = !DILocation(line: 251, column: 8, scope: !2020)
!2080 = !DILocation(line: 252, column: 3, scope: !2020)
!2081 = !DILocation(line: 251, column: 30, scope: !2020)
!2082 = !DILocation(line: 251, column: 35, scope: !2020)
!2083 = !DILocation(line: 251, column: 33, scope: !2020)
!2084 = !DILocation(line: 254, column: 5, scope: !2020)
!2085 = !DILocation(line: 254, column: 8, scope: !2020)
!2086 = !DILocation(line: 255, column: 15, scope: !2020)
!2087 = !DILocation(line: 255, column: 17, scope: !2020)
!2088 = !DILocation(line: 255, column: 14, scope: !2020)
!2089 = !DILocation(line: 255, column: 24, scope: !2020)
!2090 = !DILocation(line: 255, column: 35, scope: !2020)
!2091 = !DILocation(line: 255, column: 37, scope: !2020)
!2092 = !DILocation(line: 255, column: 34, scope: !2020)
!2093 = !DILocation(line: 255, column: 28, scope: !2020)
!2094 = !DILocation(line: 255, column: 3, scope: !2020)
!2095 = !DILocation(line: 257, column: 8, scope: !2020)
!2096 = !DILocation(line: 257, column: 9, scope: !2020)
!2097 = !DILocation(line: 257, column: 2, scope: !2020)
!2098 = !DILocation(line: 258, column: 5, scope: !2020)
!2099 = !DILocation(line: 258, column: 8, scope: !2020)
!2100 = !DILocation(line: 259, column: 3, scope: !2020)
!2101 = !DILocation(line: 258, column: 25, scope: !2020)
!2102 = !DILocation(line: 258, column: 23, scope: !2020)
!2103 = !DILocation(line: 261, column: 5, scope: !2020)
!2104 = !DILocation(line: 261, column: 8, scope: !2020)
!2105 = !DILocation(line: 262, column: 15, scope: !2020)
!2106 = !DILocation(line: 262, column: 17, scope: !2020)
!2107 = !DILocation(line: 262, column: 14, scope: !2020)
!2108 = !DILocation(line: 262, column: 24, scope: !2020)
!2109 = !DILocation(line: 262, column: 36, scope: !2020)
!2110 = !DILocation(line: 262, column: 38, scope: !2020)
!2111 = !DILocation(line: 262, column: 35, scope: !2020)
!2112 = !DILocation(line: 262, column: 45, scope: !2020)
!2113 = !DILocation(line: 262, column: 29, scope: !2020)
!2114 = !DILocation(line: 262, column: 56, scope: !2020)
!2115 = !DILocation(line: 262, column: 58, scope: !2020)
!2116 = !DILocation(line: 262, column: 55, scope: !2020)
!2117 = !DILocation(line: 262, column: 49, scope: !2020)
!2118 = !DILocation(line: 262, column: 3, scope: !2020)
!2119 = !DILocation(line: 264, column: 8, scope: !2020)
!2120 = !DILocation(line: 264, column: 9, scope: !2020)
!2121 = !DILocation(line: 264, column: 2, scope: !2020)
!2122 = !DILocation(line: 265, column: 5, scope: !2020)
!2123 = !DILocation(line: 265, column: 8, scope: !2020)
!2124 = !DILocation(line: 266, column: 3, scope: !2020)
!2125 = !DILocation(line: 265, column: 25, scope: !2020)
!2126 = !DILocation(line: 265, column: 23, scope: !2020)
!2127 = !DILocation(line: 268, column: 14, scope: !2020)
!2128 = !DILocation(line: 268, column: 16, scope: !2020)
!2129 = !DILocation(line: 268, column: 13, scope: !2020)
!2130 = !DILocation(line: 268, column: 23, scope: !2020)
!2131 = !DILocation(line: 268, column: 35, scope: !2020)
!2132 = !DILocation(line: 268, column: 37, scope: !2020)
!2133 = !DILocation(line: 268, column: 34, scope: !2020)
!2134 = !DILocation(line: 268, column: 44, scope: !2020)
!2135 = !DILocation(line: 268, column: 28, scope: !2020)
!2136 = !DILocation(line: 268, column: 56, scope: !2020)
!2137 = !DILocation(line: 268, column: 58, scope: !2020)
!2138 = !DILocation(line: 268, column: 55, scope: !2020)
!2139 = !DILocation(line: 268, column: 65, scope: !2020)
!2140 = !DILocation(line: 268, column: 49, scope: !2020)
!2141 = !DILocation(line: 268, column: 76, scope: !2020)
!2142 = !DILocation(line: 268, column: 78, scope: !2020)
!2143 = !DILocation(line: 268, column: 75, scope: !2020)
!2144 = !DILocation(line: 268, column: 69, scope: !2020)
!2145 = !DILocation(line: 268, column: 2, scope: !2020)
!2146 = distinct !DISubprogram(name: "unicode/utf8.EncodeRune", linkageName: "unicode/utf8.EncodeRune", scope: !17, file: !17, line: 368, type: !2147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2153)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!2149, !2002}
!2149 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]byte", size: 192, align: 64, elements: !2150)
!2150 = !{!2151, !48, !676}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !2152, size: 64, align: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64, dwarfAddressSpace: 0)
!2153 = !{!2154, !2155}
!2154 = !DILocalVariable(name: "p", arg: 1, scope: !2146, file: !17, line: 368, type: !2149)
!2155 = !DILocalVariable(name: "r", arg: 2, scope: !2146, file: !17, line: 368, type: !2002)
!2156 = !DILocation(line: 368, column: 6, scope: !2146)
!2157 = !DILocation(line: 370, column: 12, scope: !2146)
!2158 = !DILocation(line: 370, column: 15, scope: !2146)
!2159 = !DILocation(line: 0, scope: !2146)
!2160 = !DILocation(line: 371, column: 3, scope: !2146)
!2161 = !DILocation(line: 371, column: 15, scope: !2146)
!2162 = !DILocation(line: 371, column: 14, scope: !2146)
!2163 = !DILocation(line: 371, column: 4, scope: !2146)
!2164 = !DILocation(line: 372, column: 3, scope: !2146)
!2165 = !DILocation(line: 374, column: 28, scope: !2146)
!2166 = !DILocation(line: 374, column: 31, scope: !2146)
!2167 = !DILocation(line: 374, column: 27, scope: !2146)
!2168 = !DILocation(line: 374, column: 2, scope: !2146)
!2169 = distinct !DISubprogram(name: "unicode/utf8.encodeRuneNonASCII", linkageName: "unicode/utf8.encodeRuneNonASCII", scope: !17, file: !17, line: 377, type: !2147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2170)
!2170 = !{!2171, !2172, !2173}
!2171 = !DILocalVariable(name: "p", arg: 1, scope: !2169, file: !17, line: 377, type: !2149)
!2172 = !DILocalVariable(name: "r", arg: 2, scope: !2169, file: !17, line: 377, type: !2002)
!2173 = !DILocalVariable(name: "i", scope: !2169, file: !17, line: 379, type: !104)
!2174 = !DILocation(line: 377, column: 6, scope: !2169)
!2175 = !DILocation(line: 379, column: 21, scope: !2169)
!2176 = !DILocation(line: 379, column: 9, scope: !2169)
!2177 = !DILocation(line: 380, column: 7, scope: !2169)
!2178 = !DILocation(line: 380, column: 9, scope: !2169)
!2179 = !DILocation(line: 0, scope: !2169)
!2180 = !DILocation(line: 381, column: 7, scope: !2169)
!2181 = !DILocation(line: 381, column: 8, scope: !2169)
!2182 = !DILocation(line: 382, column: 3, scope: !2169)
!2183 = !DILocation(line: 382, column: 20, scope: !2169)
!2184 = !DILocation(line: 382, column: 21, scope: !2169)
!2185 = !DILocation(line: 382, column: 19, scope: !2169)
!2186 = !DILocation(line: 382, column: 13, scope: !2169)
!2187 = !DILocation(line: 382, column: 4, scope: !2169)
!2188 = !DILocation(line: 383, column: 3, scope: !2169)
!2189 = !DILocation(line: 383, column: 20, scope: !2169)
!2190 = !DILocation(line: 383, column: 19, scope: !2169)
!2191 = !DILocation(line: 383, column: 22, scope: !2169)
!2192 = !DILocation(line: 383, column: 13, scope: !2169)
!2193 = !DILocation(line: 383, column: 4, scope: !2169)
!2194 = !DILocation(line: 384, column: 3, scope: !2169)
!2195 = !DILocation(line: 385, column: 7, scope: !2169)
!2196 = !DILocation(line: 385, column: 9, scope: !2169)
!2197 = !DILocation(line: 386, column: 7, scope: !2169)
!2198 = !DILocation(line: 386, column: 8, scope: !2169)
!2199 = !DILocation(line: 387, column: 3, scope: !2169)
!2200 = !DILocation(line: 387, column: 20, scope: !2169)
!2201 = !DILocation(line: 387, column: 21, scope: !2169)
!2202 = !DILocation(line: 387, column: 19, scope: !2169)
!2203 = !DILocation(line: 387, column: 13, scope: !2169)
!2204 = !DILocation(line: 387, column: 4, scope: !2169)
!2205 = !DILocation(line: 388, column: 3, scope: !2169)
!2206 = !DILocation(line: 388, column: 20, scope: !2169)
!2207 = !DILocation(line: 388, column: 21, scope: !2169)
!2208 = !DILocation(line: 388, column: 19, scope: !2169)
!2209 = !DILocation(line: 388, column: 25, scope: !2169)
!2210 = !DILocation(line: 388, column: 13, scope: !2169)
!2211 = !DILocation(line: 388, column: 4, scope: !2169)
!2212 = !DILocation(line: 389, column: 3, scope: !2169)
!2213 = !DILocation(line: 389, column: 20, scope: !2169)
!2214 = !DILocation(line: 389, column: 19, scope: !2169)
!2215 = !DILocation(line: 389, column: 22, scope: !2169)
!2216 = !DILocation(line: 389, column: 13, scope: !2169)
!2217 = !DILocation(line: 389, column: 4, scope: !2169)
!2218 = !DILocation(line: 390, column: 3, scope: !2169)
!2219 = !DILocation(line: 385, column: 40, scope: !2169)
!2220 = !DILocation(line: 385, column: 38, scope: !2169)
!2221 = !DILocation(line: 385, column: 45, scope: !2169)
!2222 = !DILocation(line: 385, column: 47, scope: !2169)
!2223 = !DILocation(line: 385, column: 42, scope: !2169)
!2224 = !DILocation(line: 391, column: 7, scope: !2169)
!2225 = !DILocation(line: 391, column: 9, scope: !2169)
!2226 = !DILocation(line: 391, column: 23, scope: !2169)
!2227 = !DILocation(line: 391, column: 25, scope: !2169)
!2228 = !DILocation(line: 391, column: 20, scope: !2169)
!2229 = !DILocation(line: 392, column: 7, scope: !2169)
!2230 = !DILocation(line: 392, column: 8, scope: !2169)
!2231 = !DILocation(line: 393, column: 3, scope: !2169)
!2232 = !DILocation(line: 393, column: 20, scope: !2169)
!2233 = !DILocation(line: 393, column: 21, scope: !2169)
!2234 = !DILocation(line: 393, column: 19, scope: !2169)
!2235 = !DILocation(line: 393, column: 13, scope: !2169)
!2236 = !DILocation(line: 393, column: 4, scope: !2169)
!2237 = !DILocation(line: 394, column: 3, scope: !2169)
!2238 = !DILocation(line: 394, column: 20, scope: !2169)
!2239 = !DILocation(line: 394, column: 21, scope: !2169)
!2240 = !DILocation(line: 394, column: 19, scope: !2169)
!2241 = !DILocation(line: 394, column: 26, scope: !2169)
!2242 = !DILocation(line: 394, column: 13, scope: !2169)
!2243 = !DILocation(line: 394, column: 4, scope: !2169)
!2244 = !DILocation(line: 395, column: 3, scope: !2169)
!2245 = !DILocation(line: 395, column: 20, scope: !2169)
!2246 = !DILocation(line: 395, column: 21, scope: !2169)
!2247 = !DILocation(line: 395, column: 19, scope: !2169)
!2248 = !DILocation(line: 395, column: 25, scope: !2169)
!2249 = !DILocation(line: 395, column: 13, scope: !2169)
!2250 = !DILocation(line: 395, column: 4, scope: !2169)
!2251 = !DILocation(line: 396, column: 3, scope: !2169)
!2252 = !DILocation(line: 396, column: 20, scope: !2169)
!2253 = !DILocation(line: 396, column: 19, scope: !2169)
!2254 = !DILocation(line: 396, column: 22, scope: !2169)
!2255 = !DILocation(line: 396, column: 13, scope: !2169)
!2256 = !DILocation(line: 396, column: 4, scope: !2169)
!2257 = !DILocation(line: 397, column: 3, scope: !2169)
!2258 = !DILocation(line: 399, column: 7, scope: !2169)
!2259 = !DILocation(line: 399, column: 8, scope: !2169)
!2260 = !DILocation(line: 400, column: 3, scope: !2169)
!2261 = !DILocation(line: 400, column: 4, scope: !2169)
!2262 = !DILocation(line: 401, column: 3, scope: !2169)
!2263 = !DILocation(line: 401, column: 4, scope: !2169)
!2264 = !DILocation(line: 402, column: 3, scope: !2169)
!2265 = !DILocation(line: 402, column: 4, scope: !2169)
!2266 = !DILocation(line: 403, column: 3, scope: !2169)
!2267 = distinct !DISubprogram(name: "unicode/utf8.ValidRune", linkageName: "unicode/utf8.ValidRune", scope: !17, file: !17, line: 577, type: !2268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!2002}
!2270 = !{!2271}
!2271 = !DILocalVariable(name: "r", arg: 1, scope: !2267, file: !17, line: 577, type: !2002)
!2272 = !DILocation(line: 577, column: 6, scope: !2267)
!2273 = !DILocation(line: 579, column: 12, scope: !2267)
!2274 = !DILocation(line: 579, column: 9, scope: !2267)
!2275 = !DILocation(line: 0, scope: !2267)
!2276 = !DILocation(line: 579, column: 17, scope: !2267)
!2277 = !DILocation(line: 579, column: 19, scope: !2267)
!2278 = !DILocation(line: 579, column: 14, scope: !2267)
!2279 = !DILocation(line: 580, column: 3, scope: !2267)
!2280 = !DILocation(line: 581, column: 22, scope: !2267)
!2281 = !DILocation(line: 581, column: 20, scope: !2267)
!2282 = !DILocation(line: 581, column: 27, scope: !2267)
!2283 = !DILocation(line: 581, column: 29, scope: !2267)
!2284 = !DILocation(line: 581, column: 24, scope: !2267)
!2285 = !DILocation(line: 582, column: 3, scope: !2267)
!2286 = !DILocation(line: 584, column: 2, scope: !2267)
!2287 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).Kind", linkageName: "(*internal/reflectlite.RawType).Kind", scope: !33, file: !33, line: 380, type: !2288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2290)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!1049}
!2290 = !{!2291, !2292}
!2291 = !DILocalVariable(name: "t", arg: 1, scope: !2287, file: !33, line: 380, type: !1049)
!2292 = !DILocalVariable(name: "tag", scope: !2287, file: !33, line: 385, type: !49)
!2293 = !DILocation(line: 380, column: 19, scope: !2287)
!2294 = !DILocation(line: 381, column: 5, scope: !2287)
!2295 = !DILocation(line: 381, column: 7, scope: !2287)
!2296 = !DILocation(line: 0, scope: !2287)
!2297 = !DILocation(line: 382, column: 3, scope: !2287)
!2298 = !DILocation(line: 385, column: 12, scope: !2287)
!2299 = !DILocation(line: 385, column: 20, scope: !2287)
!2300 = !DILocation(line: 385, column: 5, scope: !2287)
!2301 = !DILocation(line: 385, column: 24, scope: !2287)
!2302 = !DILocation(line: 385, column: 28, scope: !2287)
!2303 = !DILocation(line: 386, column: 3, scope: !2287)
!2304 = !DILocation(line: 389, column: 14, scope: !2287)
!2305 = !DILocation(line: 389, column: 16, scope: !2287)
!2306 = !DILocation(line: 389, column: 21, scope: !2287)
!2307 = !DILocation(line: 389, column: 2, scope: !2287)
!2308 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).elem", linkageName: "(*internal/reflectlite.RawType).elem", scope: !33, file: !33, line: 410, type: !2288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2309)
!2309 = !{!2310, !2311, !2312, !2313}
!2310 = !DILocalVariable(name: "t", arg: 1, scope: !2308, file: !33, line: 410, type: !1049)
!2311 = !DILocalVariable(name: "tag", scope: !2308, file: !33, line: 411, type: !49)
!2312 = !DILocalVariable(name: "underlying", scope: !2308, file: !33, line: 415, type: !1049)
!2313 = !DILocalVariable(name: "errTypeElem", scope: !2308, file: !33, line: 393, type: !39)
!2314 = !DILocation(line: 410, column: 19, scope: !2308)
!2315 = !DILocation(line: 411, column: 12, scope: !2308)
!2316 = !DILocation(line: 411, column: 20, scope: !2308)
!2317 = !DILocation(line: 411, column: 5, scope: !2308)
!2318 = !DILocation(line: 411, column: 24, scope: !2308)
!2319 = !DILocation(line: 411, column: 28, scope: !2308)
!2320 = !DILocation(line: 0, scope: !2308)
!2321 = !DILocation(line: 412, column: 47, scope: !2308)
!2322 = !DILocation(line: 412, column: 31, scope: !2308)
!2323 = !DILocation(line: 412, column: 3, scope: !2308)
!2324 = !DILocation(line: 415, column: 16, scope: !2308)
!2325 = !DILocation(line: 415, column: 28, scope: !2308)
!2326 = !DILocation(line: 415, column: 2, scope: !2308)
!2327 = !DILocation(line: 416, column: 9, scope: !2308)
!2328 = !DILocation(line: 416, column: 24, scope: !2308)
!2329 = !DILocation(line: 417, column: 7, scope: !2308)
!2330 = !DILocation(line: 418, column: 36, scope: !2308)
!2331 = !DILocation(line: 418, column: 49, scope: !2308)
!2332 = !DILocation(line: 418, column: 3, scope: !2308)
!2333 = !DILocation(line: 419, column: 7, scope: !2308)
!2334 = !DILocation(line: 420, column: 37, scope: !2308)
!2335 = !DILocation(line: 420, column: 50, scope: !2308)
!2336 = !DILocation(line: 420, column: 3, scope: !2308)
!2337 = !DILocation(line: 419, column: 13, scope: !2308)
!2338 = !DILocation(line: 419, column: 20, scope: !2308)
!2339 = !DILocation(line: 419, column: 27, scope: !2308)
!2340 = !DILocation(line: 422, column: 9, scope: !2308)
!2341 = !DILocation(line: 422, column: 8, scope: !2308)
!2342 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).Len", linkageName: "(*internal/reflectlite.RawType).Len", scope: !33, file: !33, line: 620, type: !2288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2343)
!2343 = !{!2344, !2345}
!2344 = !DILocalVariable(name: "t", arg: 1, scope: !2342, file: !33, line: 620, type: !1049)
!2345 = !DILocalVariable(name: "errTypeLen", scope: !2342, file: !33, line: 397, type: !39)
!2346 = !DILocation(line: 620, column: 19, scope: !2342)
!2347 = !DILocation(line: 621, column: 5, scope: !2342)
!2348 = !DILocation(line: 621, column: 11, scope: !2342)
!2349 = !DILocation(line: 621, column: 14, scope: !2342)
!2350 = !DILocation(line: 0, scope: !2342)
!2351 = !DILocation(line: 622, column: 9, scope: !2342)
!2352 = !DILocation(line: 622, column: 8, scope: !2342)
!2353 = !DILocation(line: 625, column: 41, scope: !2342)
!2354 = !DILocation(line: 625, column: 53, scope: !2342)
!2355 = !DILocation(line: 625, column: 58, scope: !2342)
!2356 = !DILocation(line: 625, column: 2, scope: !2342)
!2357 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).underlying", linkageName: "(*internal/reflectlite.RawType).underlying", scope: !33, file: !33, line: 263, type: !2288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2358)
!2358 = !{!2359}
!2359 = !DILocalVariable(name: "t", arg: 1, scope: !2357, file: !33, line: 263, type: !1049)
!2360 = !DILocation(line: 263, column: 19, scope: !2357)
!2361 = !DILocation(line: 264, column: 5, scope: !2357)
!2362 = !DILocation(line: 264, column: 14, scope: !2357)
!2363 = !DILocation(line: 0, scope: !2357)
!2364 = !DILocation(line: 265, column: 37, scope: !2357)
!2365 = !DILocation(line: 265, column: 41, scope: !2357)
!2366 = !DILocation(line: 265, column: 3, scope: !2357)
!2367 = !DILocation(line: 267, column: 9, scope: !2357)
!2368 = !DILocation(line: 267, column: 2, scope: !2357)
!2369 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).isNamed", linkageName: "(*internal/reflectlite.RawType).isNamed", scope: !33, file: !33, line: 274, type: !2288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2370)
!2370 = !{!2371, !2372}
!2371 = !DILocalVariable(name: "t", arg: 1, scope: !2369, file: !33, line: 274, type: !1049)
!2372 = !DILocalVariable(name: "tag", scope: !2369, file: !33, line: 275, type: !49)
!2373 = !DILocation(line: 274, column: 19, scope: !2369)
!2374 = !DILocation(line: 275, column: 12, scope: !2369)
!2375 = !DILocation(line: 275, column: 20, scope: !2369)
!2376 = !DILocation(line: 275, column: 5, scope: !2369)
!2377 = !DILocation(line: 275, column: 24, scope: !2369)
!2378 = !DILocation(line: 275, column: 28, scope: !2369)
!2379 = !DILocation(line: 0, scope: !2369)
!2380 = !DILocation(line: 276, column: 3, scope: !2369)
!2381 = !DILocation(line: 278, column: 9, scope: !2369)
!2382 = !DILocation(line: 278, column: 11, scope: !2369)
!2383 = !DILocation(line: 278, column: 15, scope: !2369)
!2384 = !DILocation(line: 278, column: 26, scope: !2369)
!2385 = !DILocation(line: 278, column: 2, scope: !2369)
!2386 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).ptrtag", linkageName: "(*internal/reflectlite.RawType).ptrtag", scope: !33, file: !33, line: 270, type: !2288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2387)
!2387 = !{!2388}
!2388 = !DILocalVariable(name: "t", arg: 1, scope: !2386, file: !33, line: 270, type: !1049)
!2389 = !DILocation(line: 270, column: 19, scope: !2386)
!2390 = !DILocation(line: 271, column: 32, scope: !2386)
!2391 = !DILocation(line: 271, column: 16, scope: !2386)
!2392 = !DILocation(line: 271, column: 36, scope: !2386)
!2393 = !DILocation(line: 271, column: 2, scope: !2386)
!2394 = distinct !DISubprogram(name: "(*internal/reflectlite.TypeError).Error", linkageName: "(*internal/reflectlite.TypeError).Error", scope: !33, file: !33, line: 1211, type: !2395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!39}
!2397 = !{!2398}
!2398 = !DILocalVariable(name: "e", arg: 1, scope: !2394, file: !33, line: 1211, type: !39)
!2399 = !DILocation(line: 1211, column: 21, scope: !2394)
!2400 = !DILocation(line: 1212, column: 44, scope: !2394)
!2401 = !DILocation(line: 1212, column: 46, scope: !2394)
!2402 = !DILocation(line: 1212, column: 42, scope: !2394)
!2403 = !DILocation(line: 1212, column: 53, scope: !2394)
!2404 = !DILocation(line: 1212, column: 2, scope: !2394)
!2405 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).ChanDir", linkageName: "(*internal/reflectlite.RawType).ChanDir", scope: !33, file: !33, line: 893, type: !2288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2406)
!2406 = !{!2407, !2408, !2409}
!2407 = !DILocalVariable(name: "t", arg: 1, scope: !2405, file: !33, line: 893, type: !1049)
!2408 = !DILocalVariable(name: "errTypeChanDir", scope: !2405, file: !33, line: 399, type: !39)
!2409 = !DILocalVariable(name: "dir", scope: !2405, file: !33, line: 898, type: !1943)
!2410 = !DILocation(line: 893, column: 19, scope: !2405)
!2411 = !DILocation(line: 894, column: 5, scope: !2405)
!2412 = !DILocation(line: 894, column: 11, scope: !2405)
!2413 = !DILocation(line: 894, column: 14, scope: !2405)
!2414 = !DILocation(line: 0, scope: !2405)
!2415 = !DILocation(line: 895, column: 9, scope: !2405)
!2416 = !DILocation(line: 895, column: 8, scope: !2405)
!2417 = !DILocation(line: 898, column: 40, scope: !2405)
!2418 = !DILocation(line: 898, column: 44, scope: !2405)
!2419 = !DILocation(line: 898, column: 12, scope: !2405)
!2420 = !DILocation(line: 898, column: 2, scope: !2405)
!2421 = !DILocation(line: 901, column: 17, scope: !2405)
!2422 = !DILocation(line: 901, column: 2, scope: !2405)
!2423 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).NumField", linkageName: "(*internal/reflectlite.RawType).NumField", scope: !33, file: !33, line: 630, type: !2288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2424)
!2424 = !{!2425, !2426}
!2425 = !DILocalVariable(name: "t", arg: 1, scope: !2423, file: !33, line: 630, type: !1049)
!2426 = !DILocalVariable(name: "errTypeNumField", scope: !2423, file: !33, line: 398, type: !39)
!2427 = !DILocation(line: 630, column: 19, scope: !2423)
!2428 = !DILocation(line: 631, column: 5, scope: !2423)
!2429 = !DILocation(line: 631, column: 11, scope: !2423)
!2430 = !DILocation(line: 631, column: 14, scope: !2423)
!2431 = !DILocation(line: 0, scope: !2423)
!2432 = !DILocation(line: 632, column: 9, scope: !2423)
!2433 = !DILocation(line: 632, column: 8, scope: !2423)
!2434 = !DILocation(line: 634, column: 42, scope: !2423)
!2435 = !DILocation(line: 634, column: 54, scope: !2423)
!2436 = !DILocation(line: 634, column: 59, scope: !2423)
!2437 = !DILocation(line: 634, column: 12, scope: !2423)
!2438 = !DILocation(line: 634, column: 2, scope: !2423)
!2439 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).String", linkageName: "(*internal/reflectlite.RawType).String", scope: !33, file: !33, line: 316, type: !2288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2440)
!2440 = !{!2441, !2442, !2443, !2444, !2445, !2446, !2447}
!2441 = !DILocalVariable(name: "t", arg: 1, scope: !2439, file: !33, line: 316, type: !1049)
!2442 = !DILocalVariable(name: "s", scope: !2439, file: !33, line: 318, type: !44)
!2443 = !DILocalVariable(name: "elem", scope: !2439, file: !33, line: 326, type: !44)
!2444 = !DILocalVariable(name: "numField", scope: !2439, file: !33, line: 352, type: !1943)
!2445 = !DILocalVariable(name: "s", scope: !2439, file: !33, line: 356, type: !44)
!2446 = !DILocalVariable(name: "i", scope: !2439, file: !33, line: 357, type: !1943)
!2447 = !DILocalVariable(name: "f", scope: !2439, file: !33, line: 358, type: !2448)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.rawStructField", baseType: !2449)
!2449 = !DICompositeType(tag: DW_TAG_structure_type, size: 576, align: 64, elements: !2450)
!2450 = !{!671, !2451, !2452, !2453, !2455, !2456}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "PkgPath", baseType: !44, size: 128, align: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "Type", baseType: !1049, size: 64, align: 64, offset: 256)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "Tag", baseType: !2454, size: 128, align: 64, offset: 320)
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.StructTag", baseType: !44)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "Offset", baseType: !49, size: 64, align: 64, offset: 448)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "Anonymous", baseType: !374, size: 8, align: 8, offset: 512)
!2457 = !DILocation(line: 316, column: 19, scope: !2439)
!2458 = !DILocation(line: 317, column: 5, scope: !2439)
!2459 = !DILocation(line: 317, column: 14, scope: !2439)
!2460 = !DILocation(line: 0, scope: !2439)
!2461 = !DILocation(line: 318, column: 8, scope: !2439)
!2462 = !DILocation(line: 318, column: 14, scope: !2439)
!2463 = !DILocation(line: 318, column: 3, scope: !2439)
!2464 = !DILocation(line: 319, column: 6, scope: !2439)
!2465 = !DILocation(line: 319, column: 7, scope: !2439)
!2466 = !DILocation(line: 319, column: 11, scope: !2439)
!2467 = !DILocation(line: 320, column: 11, scope: !2439)
!2468 = !DILocation(line: 320, column: 12, scope: !2439)
!2469 = !DILocation(line: 320, column: 4, scope: !2439)
!2470 = !DILocation(line: 322, column: 10, scope: !2439)
!2471 = !DILocation(line: 322, column: 3, scope: !2439)
!2472 = !DILocation(line: 324, column: 9, scope: !2439)
!2473 = !DILocation(line: 324, column: 15, scope: !2439)
!2474 = !DILocation(line: 325, column: 7, scope: !2439)
!2475 = !DILocation(line: 326, column: 11, scope: !2439)
!2476 = !DILocation(line: 326, column: 17, scope: !2439)
!2477 = !DILocation(line: 326, column: 26, scope: !2439)
!2478 = !DILocation(line: 326, column: 3, scope: !2439)
!2479 = !DILocation(line: 327, column: 10, scope: !2439)
!2480 = !DILocation(line: 327, column: 19, scope: !2439)
!2481 = !DILocation(line: 328, column: 8, scope: !2439)
!2482 = !DILocation(line: 329, column: 23, scope: !2439)
!2483 = !DILocation(line: 329, column: 21, scope: !2439)
!2484 = !DILocation(line: 329, column: 4, scope: !2439)
!2485 = !DILocation(line: 330, column: 8, scope: !2439)
!2486 = !DILocation(line: 331, column: 23, scope: !2439)
!2487 = !DILocation(line: 331, column: 21, scope: !2439)
!2488 = !DILocation(line: 331, column: 4, scope: !2439)
!2489 = !DILocation(line: 332, column: 8, scope: !2439)
!2490 = !DILocation(line: 333, column: 7, scope: !2439)
!2491 = !DILocation(line: 333, column: 11, scope: !2439)
!2492 = !DILocation(line: 333, column: 15, scope: !2439)
!2493 = !DILocation(line: 338, column: 23, scope: !2439)
!2494 = !DILocation(line: 338, column: 21, scope: !2439)
!2495 = !DILocation(line: 338, column: 28, scope: !2439)
!2496 = !DILocation(line: 338, column: 5, scope: !2439)
!2497 = !DILocation(line: 340, column: 21, scope: !2439)
!2498 = !DILocation(line: 340, column: 19, scope: !2439)
!2499 = !DILocation(line: 340, column: 4, scope: !2439)
!2500 = !DILocation(line: 377, column: 9, scope: !2439)
!2501 = !DILocation(line: 377, column: 15, scope: !2439)
!2502 = !DILocation(line: 377, column: 24, scope: !2439)
!2503 = !DILocation(line: 377, column: 2, scope: !2439)
!2504 = !DILocation(line: 343, column: 7, scope: !2439)
!2505 = !DILocation(line: 344, column: 16, scope: !2439)
!2506 = !DILocation(line: 344, column: 22, scope: !2439)
!2507 = !DILocation(line: 344, column: 31, scope: !2439)
!2508 = !DILocation(line: 344, column: 14, scope: !2439)
!2509 = !DILocation(line: 344, column: 3, scope: !2439)
!2510 = !DILocation(line: 345, column: 7, scope: !2439)
!2511 = !DILocation(line: 346, column: 17, scope: !2439)
!2512 = !DILocation(line: 346, column: 23, scope: !2439)
!2513 = !DILocation(line: 346, column: 32, scope: !2439)
!2514 = !DILocation(line: 346, column: 15, scope: !2439)
!2515 = !DILocation(line: 346, column: 3, scope: !2439)
!2516 = !DILocation(line: 347, column: 7, scope: !2439)
!2517 = !DILocation(line: 348, column: 26, scope: !2439)
!2518 = !DILocation(line: 348, column: 31, scope: !2439)
!2519 = !DILocation(line: 348, column: 25, scope: !2439)
!2520 = !DILocation(line: 348, column: 14, scope: !2439)
!2521 = !DILocation(line: 348, column: 35, scope: !2439)
!2522 = !DILocation(line: 348, column: 43, scope: !2439)
!2523 = !DILocation(line: 348, column: 49, scope: !2439)
!2524 = !DILocation(line: 348, column: 58, scope: !2439)
!2525 = !DILocation(line: 348, column: 41, scope: !2439)
!2526 = !DILocation(line: 348, column: 3, scope: !2439)
!2527 = !DILocation(line: 349, column: 7, scope: !2439)
!2528 = !DILocation(line: 350, column: 19, scope: !2439)
!2529 = !DILocation(line: 350, column: 24, scope: !2439)
!2530 = !DILocation(line: 350, column: 33, scope: !2439)
!2531 = !DILocation(line: 350, column: 17, scope: !2439)
!2532 = !DILocation(line: 350, column: 36, scope: !2439)
!2533 = !DILocation(line: 350, column: 44, scope: !2439)
!2534 = !DILocation(line: 350, column: 50, scope: !2439)
!2535 = !DILocation(line: 350, column: 59, scope: !2439)
!2536 = !DILocation(line: 350, column: 42, scope: !2439)
!2537 = !DILocation(line: 350, column: 3, scope: !2439)
!2538 = !DILocation(line: 351, column: 7, scope: !2439)
!2539 = !DILocation(line: 352, column: 15, scope: !2439)
!2540 = !DILocation(line: 352, column: 25, scope: !2439)
!2541 = !DILocation(line: 352, column: 3, scope: !2439)
!2542 = !DILocation(line: 353, column: 6, scope: !2439)
!2543 = !DILocation(line: 353, column: 15, scope: !2439)
!2544 = !DILocation(line: 354, column: 4, scope: !2439)
!2545 = !DILocation(line: 356, column: 3, scope: !2439)
!2546 = !DILocation(line: 357, column: 7, scope: !2439)
!2547 = !DILocation(line: 357, column: 15, scope: !2439)
!2548 = !DILocation(line: 357, column: 19, scope: !2439)
!2549 = !DILocation(line: 357, column: 17, scope: !2439)
!2550 = !DILocation(line: 358, column: 9, scope: !2439)
!2551 = !DILocation(line: 358, column: 20, scope: !2439)
!2552 = !DILocation(line: 358, column: 19, scope: !2439)
!2553 = !DILocation(line: 358, column: 4, scope: !2439)
!2554 = !DILocation(line: 359, column: 17, scope: !2439)
!2555 = !DILocation(line: 359, column: 13, scope: !2439)
!2556 = !DILocation(line: 359, column: 22, scope: !2439)
!2557 = !DILocation(line: 359, column: 32, scope: !2439)
!2558 = !DILocation(line: 359, column: 43, scope: !2439)
!2559 = !DILocation(line: 359, column: 28, scope: !2439)
!2560 = !DILocation(line: 359, column: 4, scope: !2439)
!2561 = !DILocation(line: 360, column: 9, scope: !2439)
!2562 = !DILocation(line: 360, column: 13, scope: !2439)
!2563 = !DILocation(line: 361, column: 31, scope: !2439)
!2564 = !DILocation(line: 361, column: 21, scope: !2439)
!2565 = !DILocation(line: 361, column: 14, scope: !2439)
!2566 = !DILocation(line: 361, column: 5, scope: !2439)
!2567 = !DILocation(line: 364, column: 7, scope: !2439)
!2568 = !DILocation(line: 364, column: 11, scope: !2439)
!2569 = !DILocation(line: 364, column: 19, scope: !2439)
!2570 = !DILocation(line: 364, column: 9, scope: !2439)
!2571 = !DILocation(line: 365, column: 5, scope: !2439)
!2572 = !DILocation(line: 357, column: 29, scope: !2439)
!2573 = !DILocation(line: 368, column: 3, scope: !2439)
!2574 = !DILocation(line: 369, column: 10, scope: !2439)
!2575 = !DILocation(line: 369, column: 3, scope: !2439)
!2576 = !DILocation(line: 370, column: 7, scope: !2439)
!2577 = !DILocation(line: 372, column: 3, scope: !2439)
!2578 = !DILocation(line: 374, column: 10, scope: !2439)
!2579 = !DILocation(line: 374, column: 16, scope: !2439)
!2580 = !DILocation(line: 374, column: 25, scope: !2439)
!2581 = !DILocation(line: 374, column: 3, scope: !2439)
!2582 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).key", linkageName: "(*internal/reflectlite.RawType).key", scope: !33, file: !33, line: 426, type: !2288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2583)
!2583 = !{!2584, !2585, !2586}
!2584 = !DILocalVariable(name: "t", arg: 1, scope: !2582, file: !33, line: 426, type: !1049)
!2585 = !DILocalVariable(name: "underlying", scope: !2582, file: !33, line: 427, type: !1049)
!2586 = !DILocalVariable(name: "errTypeKey", scope: !2582, file: !33, line: 394, type: !39)
!2587 = !DILocation(line: 426, column: 19, scope: !2582)
!2588 = !DILocation(line: 427, column: 16, scope: !2582)
!2589 = !DILocation(line: 427, column: 28, scope: !2582)
!2590 = !DILocation(line: 427, column: 2, scope: !2582)
!2591 = !DILocation(line: 428, column: 5, scope: !2582)
!2592 = !DILocation(line: 428, column: 20, scope: !2582)
!2593 = !DILocation(line: 428, column: 23, scope: !2582)
!2594 = !DILocation(line: 0, scope: !2582)
!2595 = !DILocation(line: 429, column: 9, scope: !2582)
!2596 = !DILocation(line: 429, column: 8, scope: !2582)
!2597 = !DILocation(line: 431, column: 35, scope: !2582)
!2598 = !DILocation(line: 431, column: 48, scope: !2582)
!2599 = !DILocation(line: 431, column: 2, scope: !2582)
!2600 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).name", linkageName: "(*internal/reflectlite.RawType).name", scope: !33, file: !33, line: 939, type: !2288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2601)
!2601 = !{!2602, !2603, !2613, !2614}
!2602 = !DILocalVariable(name: "t", arg: 1, scope: !2600, file: !33, line: 939, type: !1049)
!2603 = !DILocalVariable(name: "ntype", scope: !2600, file: !33, line: 940, type: !2604)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64, align: 64, dwarfAddressSpace: 0)
!2605 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.namedType", baseType: !2606)
!2606 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !2607)
!2607 = !{!2608, !2609, !2610, !2611, !2612}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "RawType", baseType: !1050, size: 8, align: 8)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "numMethod", baseType: !96, size: 16, align: 16, offset: 16)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !1049, size: 64, align: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "elem", baseType: !1049, size: 64, align: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", baseType: !2152, size: 64, align: 64, offset: 192)
!2613 = !DILocalVariable(name: "ptr", scope: !2600, file: !33, line: 942, type: !90)
!2614 = !DILocalVariable(name: "ms", scope: !2600, file: !33, line: 944, type: !2615)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64, align: 64, dwarfAddressSpace: 0)
!2616 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.methodSet", baseType: !2617)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !2618)
!2618 = !{!1145, !2619}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !2620, align: 64, offset: 64)
!2620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, align: 64, elements: !127)
!2621 = !DILocation(line: 939, column: 19, scope: !2600)
!2622 = !DILocation(line: 940, column: 39, scope: !2600)
!2623 = !DILocation(line: 940, column: 2, scope: !2600)
!2624 = !DILocation(line: 942, column: 35, scope: !2600)
!2625 = !DILocation(line: 942, column: 19, scope: !2600)
!2626 = !DILocation(line: 942, column: 2, scope: !2600)
!2627 = !DILocation(line: 943, column: 5, scope: !2600)
!2628 = !DILocation(line: 943, column: 11, scope: !2600)
!2629 = !DILocation(line: 943, column: 20, scope: !2600)
!2630 = !DILocation(line: 943, column: 43, scope: !2600)
!2631 = !DILocation(line: 0, scope: !2600)
!2632 = !DILocation(line: 944, column: 22, scope: !2600)
!2633 = !DILocation(line: 944, column: 3, scope: !2600)
!2634 = !DILocation(line: 946, column: 20, scope: !2600)
!2635 = !DILocation(line: 946, column: 59, scope: !2600)
!2636 = !DILocation(line: 946, column: 62, scope: !2600)
!2637 = !DILocation(line: 946, column: 69, scope: !2600)
!2638 = !DILocation(line: 946, column: 50, scope: !2600)
!2639 = !DILocation(line: 946, column: 19, scope: !2600)
!2640 = !DILocation(line: 946, column: 3, scope: !2600)
!2641 = !DILocation(line: 948, column: 21, scope: !2600)
!2642 = !DILocation(line: 948, column: 20, scope: !2600)
!2643 = !DILocation(line: 948, column: 2, scope: !2600)
!2644 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).rawField", linkageName: "(*internal/reflectlite.RawType).rawField", scope: !33, file: !33, line: 484, type: !2645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2647)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!1049, !1943}
!2647 = !{!2648, !2649, !2650, !2651, !2665, !2667, !2668, !2669, !2670, !2671}
!2648 = !DILocalVariable(name: "t", arg: 1, scope: !2644, file: !33, line: 484, type: !1049)
!2649 = !DILocalVariable(name: "n", arg: 2, scope: !2644, file: !33, line: 484, type: !1943)
!2650 = !DILocalVariable(name: "errTypeField", scope: !2644, file: !33, line: 395, type: !39)
!2651 = !DILocalVariable(name: "descriptor", scope: !2644, file: !33, line: 488, type: !2652)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64, align: 64, dwarfAddressSpace: 0)
!2653 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.structType", baseType: !2654)
!2654 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !2655)
!2655 = !{!2608, !2609, !2610, !2656, !103, !2657, !2658}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !2152, size: 64, align: 64, offset: 128)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "numField", baseType: !96, size: 16, align: 16, offset: 224)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !2659, size: 128, align: 64, offset: 256)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2660, size: 128, align: 64, elements: !11)
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.structField", baseType: !2661)
!2661 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !2662)
!2662 = !{!2663, !2664}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "fieldType", baseType: !1049, size: 64, align: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !90, size: 64, align: 64, offset: 64)
!2665 = !DILocalVariable(name: "field", scope: !2644, file: !33, line: 497, type: !2666)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64, align: 64, dwarfAddressSpace: 0)
!2667 = !DILocalVariable(name: "data", scope: !2644, file: !33, line: 498, type: !90)
!2668 = !DILocalVariable(name: "flagsByte", scope: !2644, file: !33, line: 502, type: !536)
!2669 = !DILocalVariable(name: "offset", scope: !2644, file: !33, line: 504, type: !104)
!2670 = !DILocalVariable(name: "lenOffs", scope: !2644, file: !33, line: 504, type: !1943)
!2671 = !DILocalVariable(name: "name", scope: !2644, file: !33, line: 507, type: !44)
!2672 = !DILocation(line: 484, column: 19, scope: !2644)
!2673 = !DILocation(line: 485, column: 5, scope: !2644)
!2674 = !DILocation(line: 485, column: 11, scope: !2644)
!2675 = !DILocation(line: 485, column: 14, scope: !2644)
!2676 = !DILocation(line: 0, scope: !2644)
!2677 = !DILocation(line: 486, column: 9, scope: !2644)
!2678 = !DILocation(line: 486, column: 8, scope: !2644)
!2679 = !DILocation(line: 488, column: 45, scope: !2644)
!2680 = !DILocation(line: 488, column: 57, scope: !2644)
!2681 = !DILocation(line: 488, column: 2, scope: !2644)
!2682 = !DILocation(line: 489, column: 10, scope: !2644)
!2683 = !DILocation(line: 489, column: 21, scope: !2644)
!2684 = !DILocation(line: 489, column: 32, scope: !2644)
!2685 = !DILocation(line: 489, column: 20, scope: !2644)
!2686 = !DILocation(line: 489, column: 13, scope: !2644)
!2687 = !DILocation(line: 490, column: 8, scope: !2644)
!2688 = !DILocation(line: 497, column: 53, scope: !2644)
!2689 = !DILocation(line: 497, column: 64, scope: !2644)
!2690 = !DILocation(line: 497, column: 70, scope: !2644)
!2691 = !DILocation(line: 497, column: 84, scope: !2644)
!2692 = !DILocation(line: 497, column: 86, scope: !2644)
!2693 = !DILocation(line: 497, column: 36, scope: !2644)
!2694 = !DILocation(line: 497, column: 2, scope: !2644)
!2695 = !DILocation(line: 498, column: 10, scope: !2644)
!2696 = !DILocation(line: 498, column: 16, scope: !2644)
!2697 = !DILocation(line: 498, column: 2, scope: !2644)
!2698 = !DILocation(line: 502, column: 24, scope: !2644)
!2699 = !DILocation(line: 502, column: 15, scope: !2644)
!2700 = !DILocation(line: 502, column: 2, scope: !2644)
!2701 = !DILocation(line: 503, column: 20, scope: !2644)
!2702 = !DILocation(line: 503, column: 19, scope: !2644)
!2703 = !DILocation(line: 503, column: 2, scope: !2644)
!2704 = !DILocation(line: 504, column: 52, scope: !2644)
!2705 = !DILocation(line: 504, column: 43, scope: !2644)
!2706 = !DILocation(line: 504, column: 30, scope: !2644)
!2707 = !DILocation(line: 504, column: 2, scope: !2644)
!2708 = !DILocation(line: 504, column: 10, scope: !2644)
!2709 = !DILocation(line: 505, column: 20, scope: !2644)
!2710 = !DILocation(line: 505, column: 26, scope: !2644)
!2711 = !DILocation(line: 505, column: 19, scope: !2644)
!2712 = !DILocation(line: 505, column: 2, scope: !2644)
!2713 = !DILocation(line: 507, column: 22, scope: !2644)
!2714 = !DILocation(line: 507, column: 21, scope: !2644)
!2715 = !DILocation(line: 507, column: 2, scope: !2644)
!2716 = !DILocation(line: 508, column: 20, scope: !2644)
!2717 = !DILocation(line: 508, column: 30, scope: !2644)
!2718 = !DILocation(line: 508, column: 29, scope: !2644)
!2719 = !DILocation(line: 508, column: 19, scope: !2644)
!2720 = !DILocation(line: 508, column: 2, scope: !2644)
!2721 = !DILocation(line: 510, column: 35, scope: !2644)
!2722 = !DILocation(line: 510, column: 47, scope: !2644)
!2723 = !DILocation(line: 510, column: 53, scope: !2644)
!2724 = !DILocation(line: 510, column: 64, scope: !2644)
!2725 = !DILocation(line: 510, column: 70, scope: !2644)
!2726 = !DILocation(line: 510, column: 81, scope: !2644)
!2727 = !DILocation(line: 510, column: 87, scope: !2644)
!2728 = !DILocation(line: 510, column: 34, scope: !2644)
!2729 = !DILocation(line: 510, column: 2, scope: !2644)
!2730 = distinct !DISubprogram(name: "internal/reflectlite.uvarint32", linkageName: "internal/reflectlite.uvarint32", scope: !33, file: !33, line: 1242, type: !2731, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!2149}
!2733 = !{!2734, !2735, !2736, !2737, !2738}
!2734 = !DILocalVariable(name: "buf", arg: 1, scope: !2730, file: !33, line: 1242, type: !2149)
!2735 = !DILocalVariable(name: "x", scope: !2730, file: !33, line: 1243, type: !104)
!2736 = !DILocalVariable(name: "s", scope: !2730, file: !33, line: 1244, type: !1738)
!2737 = !DILocalVariable(name: "i", scope: !2730, file: !33, line: 1245, type: !1943)
!2738 = !DILocalVariable(name: "b", scope: !2730, file: !33, line: 1245, type: !536)
!2739 = !DILocation(line: 1242, column: 6, scope: !2730)
!2740 = !DILocation(line: 1243, column: 6, scope: !2730)
!2741 = !DILocation(line: 1244, column: 6, scope: !2730)
!2742 = !DILocation(line: 1245, column: 20, scope: !2730)
!2743 = !DILocation(line: 0, scope: !2730)
!2744 = !DILocation(line: 1245, column: 6, scope: !2730)
!2745 = !DILocation(line: 1245, column: 9, scope: !2730)
!2746 = !DILocation(line: 1246, column: 6, scope: !2730)
!2747 = !DILocation(line: 1246, column: 8, scope: !2730)
!2748 = !DILocation(line: 1247, column: 11, scope: !2730)
!2749 = !DILocation(line: 1247, column: 22, scope: !2730)
!2750 = !DILocation(line: 1247, column: 21, scope: !2730)
!2751 = !DILocation(line: 1247, column: 26, scope: !2730)
!2752 = !DILocation(line: 1247, column: 24, scope: !2730)
!2753 = !DILocation(line: 1247, column: 13, scope: !2730)
!2754 = !DILocation(line: 1247, column: 29, scope: !2730)
!2755 = !DILocation(line: 1247, column: 31, scope: !2730)
!2756 = !DILocation(line: 1247, column: 4, scope: !2730)
!2757 = !DILocation(line: 1249, column: 15, scope: !2730)
!2758 = !DILocation(line: 1249, column: 16, scope: !2730)
!2759 = !DILocation(line: 1249, column: 14, scope: !2730)
!2760 = !DILocation(line: 1249, column: 26, scope: !2730)
!2761 = !DILocation(line: 1249, column: 23, scope: !2730)
!2762 = !DILocation(line: 1249, column: 3, scope: !2730)
!2763 = !DILocation(line: 1250, column: 3, scope: !2730)
!2764 = !DILocation(line: 1252, column: 2, scope: !2730)
!2765 = distinct !DISubprogram(name: "internal/reflectlite.readStringZ", linkageName: "internal/reflectlite.readStringZ", scope: !33, file: !33, line: 925, type: !2766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!90}
!2768 = !{!2769, !2770, !2771}
!2769 = !DILocalVariable(name: "data", arg: 1, scope: !2765, file: !33, line: 925, type: !90)
!2770 = !DILocalVariable(name: "start", scope: !2765, file: !33, line: 926, type: !90)
!2771 = !DILocalVariable(name: "len", scope: !2765, file: !33, line: 927, type: !49)
!2772 = !DILocation(line: 925, column: 6, scope: !2765)
!2773 = !DILocation(line: 926, column: 11, scope: !2765)
!2774 = !DILocation(line: 926, column: 2, scope: !2765)
!2775 = !DILocation(line: 927, column: 6, scope: !2765)
!2776 = !DILocation(line: 0, scope: !2765)
!2777 = !DILocation(line: 925, column: 18, scope: !2765)
!2778 = !DILocation(line: 928, column: 15, scope: !2765)
!2779 = !DILocation(line: 928, column: 6, scope: !2765)
!2780 = !DILocation(line: 928, column: 21, scope: !2765)
!2781 = !DILocation(line: 929, column: 3, scope: !2765)
!2782 = !DILocation(line: 930, column: 21, scope: !2765)
!2783 = !DILocation(line: 930, column: 20, scope: !2765)
!2784 = !DILocation(line: 930, column: 3, scope: !2765)
!2785 = !DILocation(line: 933, column: 48, scope: !2765)
!2786 = !DILocation(line: 934, column: 7, scope: !2765)
!2787 = !DILocation(line: 934, column: 9, scope: !2765)
!2788 = !DILocation(line: 935, column: 6, scope: !2765)
!2789 = !DILocation(line: 935, column: 9, scope: !2765)
!2790 = !DILocation(line: 933, column: 9, scope: !2765)
!2791 = !DILocation(line: 933, column: 2, scope: !2765)
!2792 = distinct !DISubprogram(name: "internal/reflectlite.rawStructFieldFromPointer", linkageName: "internal/reflectlite.rawStructFieldFromPointer", scope: !33, file: !33, line: 449, type: !2793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2795)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!2652, !1049, !90, !4, !44, !104}
!2795 = !{!2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804}
!2796 = !DILocalVariable(name: "descriptor", arg: 1, scope: !2792, file: !33, line: 449, type: !2652)
!2797 = !DILocalVariable(name: "fieldType", arg: 2, scope: !2792, file: !33, line: 449, type: !1049)
!2798 = !DILocalVariable(name: "data", arg: 3, scope: !2792, file: !33, line: 449, type: !90)
!2799 = !DILocalVariable(name: "flagsByte", arg: 4, scope: !2792, file: !33, line: 449, type: !4)
!2800 = !DILocalVariable(name: "name", arg: 5, scope: !2792, file: !33, line: 449, type: !44)
!2801 = !DILocalVariable(name: "offset", arg: 6, scope: !2792, file: !33, line: 449, type: !104)
!2802 = !DILocalVariable(name: "tag", scope: !2792, file: !33, line: 451, type: !44)
!2803 = !DILocalVariable(name: "tagLen", scope: !2792, file: !33, line: 454, type: !49)
!2804 = !DILocalVariable(name: "pkgPath", scope: !2792, file: !33, line: 464, type: !44)
!2805 = !DILocation(line: 449, column: 6, scope: !2792)
!2806 = !DILocation(line: 451, column: 6, scope: !2792)
!2807 = !DILocation(line: 452, column: 5, scope: !2792)
!2808 = !DILocation(line: 452, column: 14, scope: !2792)
!2809 = !DILocation(line: 452, column: 37, scope: !2792)
!2810 = !DILocation(line: 0, scope: !2792)
!2811 = !DILocation(line: 453, column: 21, scope: !2792)
!2812 = !DILocation(line: 453, column: 20, scope: !2792)
!2813 = !DILocation(line: 453, column: 3, scope: !2792)
!2814 = !DILocation(line: 454, column: 30, scope: !2792)
!2815 = !DILocation(line: 454, column: 21, scope: !2792)
!2816 = !DILocation(line: 454, column: 20, scope: !2792)
!2817 = !DILocation(line: 454, column: 3, scope: !2792)
!2818 = !DILocation(line: 455, column: 21, scope: !2792)
!2819 = !DILocation(line: 455, column: 20, scope: !2792)
!2820 = !DILocation(line: 455, column: 3, scope: !2792)
!2821 = !DILocation(line: 456, column: 48, scope: !2792)
!2822 = !DILocation(line: 457, column: 8, scope: !2792)
!2823 = !DILocation(line: 457, column: 10, scope: !2792)
!2824 = !DILocation(line: 458, column: 7, scope: !2792)
!2825 = !DILocation(line: 458, column: 10, scope: !2792)
!2826 = !DILocation(line: 456, column: 9, scope: !2792)
!2827 = !DILocation(line: 456, column: 3, scope: !2792)
!2828 = !DILocation(line: 464, column: 2, scope: !2792)
!2829 = !DILocation(line: 465, column: 5, scope: !2792)
!2830 = !DILocation(line: 465, column: 14, scope: !2792)
!2831 = !DILocation(line: 465, column: 41, scope: !2792)
!2832 = !DILocation(line: 467, column: 40, scope: !2792)
!2833 = !DILocation(line: 467, column: 51, scope: !2792)
!2834 = !DILocation(line: 467, column: 24, scope: !2792)
!2835 = !DILocation(line: 467, column: 3, scope: !2792)
!2836 = !DILocation(line: 471, column: 7, scope: !2792)
!2837 = !DILocation(line: 471, column: 14, scope: !2792)
!2838 = !DILocation(line: 472, column: 10, scope: !2792)
!2839 = !DILocation(line: 472, column: 14, scope: !2792)
!2840 = !DILocation(line: 473, column: 7, scope: !2792)
!2841 = !DILocation(line: 473, column: 14, scope: !2792)
!2842 = !DILocation(line: 474, column: 6, scope: !2792)
!2843 = !DILocation(line: 474, column: 24, scope: !2792)
!2844 = !DILocation(line: 475, column: 12, scope: !2792)
!2845 = !DILocation(line: 475, column: 14, scope: !2792)
!2846 = !DILocation(line: 475, column: 23, scope: !2792)
!2847 = !DILocation(line: 475, column: 49, scope: !2792)
!2848 = !DILocation(line: 476, column: 9, scope: !2792)
!2849 = !DILocation(line: 476, column: 22, scope: !2792)
!2850 = !DILocation(line: 476, column: 21, scope: !2792)
!2851 = !DILocation(line: 470, column: 23, scope: !2792)
!2852 = !DILocation(line: 470, column: 2, scope: !2792)
!2853 = distinct !DISubprogram(name: "(internal/reflectlite.Kind).String", linkageName: "(internal/reflectlite.Kind).String", scope: !33, file: !33, line: 57, type: !2854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2857)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!2856}
!2856 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.Kind", baseType: !4)
!2857 = !{!2858}
!2858 = !DILocalVariable(name: "k", arg: 1, scope: !2853, file: !33, line: 57, type: !2856)
!2859 = !DILocation(line: 57, column: 15, scope: !2853)
!2860 = !DILocation(line: 58, column: 9, scope: !2853)
!2861 = !DILocation(line: 59, column: 7, scope: !2853)
!2862 = !DILocation(line: 0, scope: !2853)
!2863 = !DILocation(line: 60, column: 3, scope: !2853)
!2864 = !DILocation(line: 61, column: 7, scope: !2853)
!2865 = !DILocation(line: 62, column: 3, scope: !2853)
!2866 = !DILocation(line: 63, column: 7, scope: !2853)
!2867 = !DILocation(line: 64, column: 3, scope: !2853)
!2868 = !DILocation(line: 65, column: 7, scope: !2853)
!2869 = !DILocation(line: 66, column: 3, scope: !2853)
!2870 = !DILocation(line: 67, column: 7, scope: !2853)
!2871 = !DILocation(line: 68, column: 3, scope: !2853)
!2872 = !DILocation(line: 69, column: 7, scope: !2853)
!2873 = !DILocation(line: 70, column: 3, scope: !2853)
!2874 = !DILocation(line: 71, column: 7, scope: !2853)
!2875 = !DILocation(line: 72, column: 3, scope: !2853)
!2876 = !DILocation(line: 73, column: 7, scope: !2853)
!2877 = !DILocation(line: 74, column: 3, scope: !2853)
!2878 = !DILocation(line: 75, column: 7, scope: !2853)
!2879 = !DILocation(line: 76, column: 3, scope: !2853)
!2880 = !DILocation(line: 77, column: 7, scope: !2853)
!2881 = !DILocation(line: 78, column: 3, scope: !2853)
!2882 = !DILocation(line: 79, column: 7, scope: !2853)
!2883 = !DILocation(line: 80, column: 3, scope: !2853)
!2884 = !DILocation(line: 81, column: 7, scope: !2853)
!2885 = !DILocation(line: 82, column: 3, scope: !2853)
!2886 = !DILocation(line: 83, column: 7, scope: !2853)
!2887 = !DILocation(line: 84, column: 3, scope: !2853)
!2888 = !DILocation(line: 85, column: 7, scope: !2853)
!2889 = !DILocation(line: 86, column: 3, scope: !2853)
!2890 = !DILocation(line: 87, column: 7, scope: !2853)
!2891 = !DILocation(line: 88, column: 3, scope: !2853)
!2892 = !DILocation(line: 89, column: 7, scope: !2853)
!2893 = !DILocation(line: 90, column: 3, scope: !2853)
!2894 = !DILocation(line: 91, column: 7, scope: !2853)
!2895 = !DILocation(line: 92, column: 3, scope: !2853)
!2896 = !DILocation(line: 93, column: 7, scope: !2853)
!2897 = !DILocation(line: 94, column: 3, scope: !2853)
!2898 = !DILocation(line: 95, column: 7, scope: !2853)
!2899 = !DILocation(line: 96, column: 3, scope: !2853)
!2900 = !DILocation(line: 97, column: 7, scope: !2853)
!2901 = !DILocation(line: 98, column: 3, scope: !2853)
!2902 = !DILocation(line: 99, column: 7, scope: !2853)
!2903 = !DILocation(line: 100, column: 3, scope: !2853)
!2904 = !DILocation(line: 101, column: 7, scope: !2853)
!2905 = !DILocation(line: 102, column: 3, scope: !2853)
!2906 = !DILocation(line: 103, column: 7, scope: !2853)
!2907 = !DILocation(line: 104, column: 3, scope: !2853)
!2908 = !DILocation(line: 105, column: 7, scope: !2853)
!2909 = !DILocation(line: 106, column: 3, scope: !2853)
!2910 = !DILocation(line: 107, column: 7, scope: !2853)
!2911 = !DILocation(line: 108, column: 3, scope: !2853)
!2912 = !DILocation(line: 109, column: 7, scope: !2853)
!2913 = !DILocation(line: 110, column: 3, scope: !2853)
!2914 = !DILocation(line: 111, column: 7, scope: !2853)
!2915 = !DILocation(line: 112, column: 3, scope: !2853)
!2916 = !DILocation(line: 114, column: 38, scope: !2853)
!2917 = !DILocation(line: 114, column: 32, scope: !2853)
!2918 = !DILocation(line: 114, column: 28, scope: !2853)
!2919 = !DILocation(line: 114, column: 17, scope: !2853)
!2920 = !DILocation(line: 114, column: 3, scope: !2853)
!2921 = distinct !DISubprogram(name: "internal/reflectlite.quote", linkageName: "internal/reflectlite.quote", scope: !117, file: !117, line: 238, type: !1997, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2922)
!2922 = !{!2923, !2924, !2925, !2926}
!2923 = !DILocalVariable(name: "s", arg: 1, scope: !2921, file: !117, line: 238, type: !44)
!2924 = !DILocalVariable(name: "buf", scope: !2921, file: !117, line: 239, type: !2149)
!2925 = !DILocalVariable(name: "width", scope: !2921, file: !117, line: 243, type: !1943)
!2926 = !DILocalVariable(name: "r", scope: !2921, file: !117, line: 244, type: !2002)
!2927 = !DILocation(line: 238, column: 6, scope: !2921)
!2928 = !DILocation(line: 239, column: 31, scope: !2921)
!2929 = !DILocation(line: 239, column: 30, scope: !2921)
!2930 = !DILocation(line: 239, column: 26, scope: !2921)
!2931 = !DILocation(line: 239, column: 33, scope: !2921)
!2932 = !DILocation(line: 239, column: 13, scope: !2921)
!2933 = !DILocation(line: 239, column: 2, scope: !2921)
!2934 = !DILocation(line: 242, column: 15, scope: !2921)
!2935 = !DILocation(line: 242, column: 25, scope: !2921)
!2936 = !DILocation(line: 242, column: 14, scope: !2921)
!2937 = !DILocation(line: 242, column: 2, scope: !2921)
!2938 = !DILocation(line: 243, column: 6, scope: !2921)
!2939 = !DILocation(line: 0, scope: !2921)
!2940 = !DILocation(line: 238, column: 12, scope: !2921)
!2941 = !DILocation(line: 243, column: 22, scope: !2921)
!2942 = !DILocation(line: 243, column: 21, scope: !2921)
!2943 = !DILocation(line: 243, column: 25, scope: !2921)
!2944 = !DILocation(line: 244, column: 13, scope: !2921)
!2945 = !DILocation(line: 244, column: 14, scope: !2921)
!2946 = !DILocation(line: 244, column: 12, scope: !2921)
!2947 = !DILocation(line: 244, column: 3, scope: !2921)
!2948 = !DILocation(line: 245, column: 3, scope: !2921)
!2949 = !DILocation(line: 246, column: 6, scope: !2921)
!2950 = !DILocation(line: 246, column: 8, scope: !2921)
!2951 = !DILocation(line: 247, column: 39, scope: !2921)
!2952 = !DILocation(line: 247, column: 38, scope: !2921)
!2953 = !DILocation(line: 247, column: 4, scope: !2921)
!2954 = !DILocation(line: 247, column: 7, scope: !2921)
!2955 = !DILocation(line: 249, column: 6, scope: !2921)
!2956 = !DILocation(line: 249, column: 12, scope: !2921)
!2957 = !DILocation(line: 249, column: 20, scope: !2921)
!2958 = !DILocation(line: 249, column: 22, scope: !2921)
!2959 = !DILocation(line: 250, column: 17, scope: !2921)
!2960 = !DILocation(line: 250, column: 16, scope: !2921)
!2961 = !DILocation(line: 250, column: 4, scope: !2921)
!2962 = !DILocation(line: 251, column: 17, scope: !2921)
!2963 = !DILocation(line: 251, column: 31, scope: !2921)
!2964 = !DILocation(line: 251, column: 32, scope: !2921)
!2965 = !DILocation(line: 251, column: 35, scope: !2921)
!2966 = !DILocation(line: 251, column: 30, scope: !2921)
!2967 = !DILocation(line: 251, column: 39, scope: !2921)
!2968 = !DILocation(line: 251, column: 16, scope: !2921)
!2969 = !DILocation(line: 251, column: 4, scope: !2921)
!2970 = !DILocation(line: 252, column: 17, scope: !2921)
!2971 = !DILocation(line: 252, column: 31, scope: !2921)
!2972 = !DILocation(line: 252, column: 32, scope: !2921)
!2973 = !DILocation(line: 252, column: 35, scope: !2921)
!2974 = !DILocation(line: 252, column: 30, scope: !2921)
!2975 = !DILocation(line: 252, column: 40, scope: !2921)
!2976 = !DILocation(line: 252, column: 16, scope: !2921)
!2977 = !DILocation(line: 252, column: 4, scope: !2921)
!2978 = !DILocation(line: 243, column: 34, scope: !2921)
!2979 = !DILocation(line: 243, column: 36, scope: !2921)
!2980 = !DILocation(line: 243, column: 35, scope: !2921)
!2981 = !DILocation(line: 243, column: 30, scope: !2921)
!2982 = !DILocation(line: 255, column: 27, scope: !2921)
!2983 = !DILocation(line: 255, column: 32, scope: !2921)
!2984 = !DILocation(line: 255, column: 26, scope: !2921)
!2985 = !DILocation(line: 255, column: 3, scope: !2921)
!2986 = !DILocation(line: 257, column: 15, scope: !2921)
!2987 = !DILocation(line: 257, column: 25, scope: !2921)
!2988 = !DILocation(line: 257, column: 14, scope: !2921)
!2989 = !DILocation(line: 257, column: 2, scope: !2921)
!2990 = !DILocation(line: 258, column: 16, scope: !2921)
!2991 = !DILocation(line: 258, column: 15, scope: !2921)
!2992 = !DILocation(line: 258, column: 2, scope: !2921)
!2993 = distinct !DISubprogram(name: "internal/reflectlite.appendEscapedRune", linkageName: "internal/reflectlite.appendEscapedRune", scope: !117, file: !117, line: 261, type: !2147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2994)
!2994 = !{!2995, !2996, !2997, !2998, !2999}
!2995 = !DILocalVariable(name: "buf", arg: 1, scope: !2993, file: !117, line: 261, type: !2149)
!2996 = !DILocalVariable(name: "r", arg: 2, scope: !2993, file: !117, line: 261, type: !2002)
!2997 = !DILocalVariable(name: "n", scope: !2993, file: !117, line: 272, type: !1943)
!2998 = !DILocalVariable(name: "s", scope: !2993, file: !117, line: 302, type: !1943)
!2999 = !DILocalVariable(name: "s", scope: !2993, file: !117, line: 307, type: !1943)
!3000 = !DILocation(line: 261, column: 6, scope: !2993)
!3001 = !DILocation(line: 265, column: 6, scope: !2993)
!3002 = !DILocation(line: 266, column: 5, scope: !2993)
!3003 = !DILocation(line: 266, column: 7, scope: !2993)
!3004 = !DILocation(line: 0, scope: !2993)
!3005 = !DILocation(line: 267, column: 16, scope: !2993)
!3006 = !DILocation(line: 267, column: 25, scope: !2993)
!3007 = !DILocation(line: 267, column: 15, scope: !2993)
!3008 = !DILocation(line: 267, column: 3, scope: !2993)
!3009 = !DILocation(line: 268, column: 16, scope: !2993)
!3010 = !DILocation(line: 268, column: 26, scope: !2993)
!3011 = !DILocation(line: 268, column: 25, scope: !2993)
!3012 = !DILocation(line: 268, column: 28, scope: !2993)
!3013 = !DILocation(line: 268, column: 15, scope: !2993)
!3014 = !DILocation(line: 268, column: 3, scope: !2993)
!3015 = !DILocation(line: 269, column: 10, scope: !2993)
!3016 = !DILocation(line: 269, column: 3, scope: !2993)
!3017 = !DILocation(line: 266, column: 25, scope: !2993)
!3018 = !DILocation(line: 266, column: 27, scope: !2993)
!3019 = !DILocation(line: 271, column: 13, scope: !2993)
!3020 = !DILocation(line: 271, column: 12, scope: !2993)
!3021 = !DILocation(line: 272, column: 31, scope: !2993)
!3022 = !DILocation(line: 272, column: 36, scope: !2993)
!3023 = !DILocation(line: 272, column: 23, scope: !2993)
!3024 = !DILocation(line: 272, column: 3, scope: !2993)
!3025 = !DILocation(line: 273, column: 16, scope: !2993)
!3026 = !DILocation(line: 273, column: 30, scope: !2993)
!3027 = !DILocation(line: 273, column: 28, scope: !2993)
!3028 = !DILocation(line: 273, column: 15, scope: !2993)
!3029 = !DILocation(line: 273, column: 3, scope: !2993)
!3030 = !DILocation(line: 274, column: 10, scope: !2993)
!3031 = !DILocation(line: 274, column: 3, scope: !2993)
!3032 = !DILocation(line: 276, column: 9, scope: !2993)
!3033 = !DILocation(line: 277, column: 7, scope: !2993)
!3034 = !DILocation(line: 278, column: 16, scope: !2993)
!3035 = !DILocation(line: 278, column: 15, scope: !2993)
!3036 = !DILocation(line: 278, column: 3, scope: !2993)
!3037 = !DILocation(line: 261, column: 24, scope: !2993)
!3038 = !DILocation(line: 312, column: 9, scope: !2993)
!3039 = !DILocation(line: 312, column: 2, scope: !2993)
!3040 = !DILocation(line: 279, column: 7, scope: !2993)
!3041 = !DILocation(line: 280, column: 16, scope: !2993)
!3042 = !DILocation(line: 280, column: 15, scope: !2993)
!3043 = !DILocation(line: 280, column: 3, scope: !2993)
!3044 = !DILocation(line: 281, column: 7, scope: !2993)
!3045 = !DILocation(line: 282, column: 16, scope: !2993)
!3046 = !DILocation(line: 282, column: 15, scope: !2993)
!3047 = !DILocation(line: 282, column: 3, scope: !2993)
!3048 = !DILocation(line: 283, column: 7, scope: !2993)
!3049 = !DILocation(line: 284, column: 16, scope: !2993)
!3050 = !DILocation(line: 284, column: 15, scope: !2993)
!3051 = !DILocation(line: 284, column: 3, scope: !2993)
!3052 = !DILocation(line: 285, column: 7, scope: !2993)
!3053 = !DILocation(line: 286, column: 16, scope: !2993)
!3054 = !DILocation(line: 286, column: 15, scope: !2993)
!3055 = !DILocation(line: 286, column: 3, scope: !2993)
!3056 = !DILocation(line: 287, column: 7, scope: !2993)
!3057 = !DILocation(line: 288, column: 16, scope: !2993)
!3058 = !DILocation(line: 288, column: 15, scope: !2993)
!3059 = !DILocation(line: 288, column: 3, scope: !2993)
!3060 = !DILocation(line: 289, column: 7, scope: !2993)
!3061 = !DILocation(line: 290, column: 16, scope: !2993)
!3062 = !DILocation(line: 290, column: 15, scope: !2993)
!3063 = !DILocation(line: 290, column: 3, scope: !2993)
!3064 = !DILocation(line: 293, column: 8, scope: !2993)
!3065 = !DILocation(line: 293, column: 10, scope: !2993)
!3066 = !DILocation(line: 293, column: 16, scope: !2993)
!3067 = !DILocation(line: 294, column: 17, scope: !2993)
!3068 = !DILocation(line: 294, column: 16, scope: !2993)
!3069 = !DILocation(line: 294, column: 4, scope: !2993)
!3070 = !DILocation(line: 295, column: 17, scope: !2993)
!3071 = !DILocation(line: 295, column: 36, scope: !2993)
!3072 = !DILocation(line: 295, column: 35, scope: !2993)
!3073 = !DILocation(line: 295, column: 38, scope: !2993)
!3074 = !DILocation(line: 295, column: 30, scope: !2993)
!3075 = !DILocation(line: 295, column: 42, scope: !2993)
!3076 = !DILocation(line: 295, column: 16, scope: !2993)
!3077 = !DILocation(line: 295, column: 4, scope: !2993)
!3078 = !DILocation(line: 296, column: 17, scope: !2993)
!3079 = !DILocation(line: 296, column: 36, scope: !2993)
!3080 = !DILocation(line: 296, column: 35, scope: !2993)
!3081 = !DILocation(line: 296, column: 38, scope: !2993)
!3082 = !DILocation(line: 296, column: 30, scope: !2993)
!3083 = !DILocation(line: 296, column: 43, scope: !2993)
!3084 = !DILocation(line: 296, column: 16, scope: !2993)
!3085 = !DILocation(line: 296, column: 4, scope: !2993)
!3086 = !DILocation(line: 297, column: 24, scope: !2993)
!3087 = !DILocation(line: 297, column: 23, scope: !2993)
!3088 = !DILocation(line: 297, column: 8, scope: !2993)
!3089 = !DILocation(line: 298, column: 4, scope: !2993)
!3090 = !DILocation(line: 261, column: 36, scope: !2993)
!3091 = !DILocation(line: 301, column: 17, scope: !2993)
!3092 = !DILocation(line: 301, column: 16, scope: !2993)
!3093 = !DILocation(line: 301, column: 4, scope: !2993)
!3094 = !DILocation(line: 302, column: 8, scope: !2993)
!3095 = !DILocation(line: 302, column: 17, scope: !2993)
!3096 = !DILocation(line: 302, column: 19, scope: !2993)
!3097 = !DILocation(line: 303, column: 18, scope: !2993)
!3098 = !DILocation(line: 303, column: 32, scope: !2993)
!3099 = !DILocation(line: 303, column: 40, scope: !2993)
!3100 = !DILocation(line: 303, column: 33, scope: !2993)
!3101 = !DILocation(line: 303, column: 42, scope: !2993)
!3102 = !DILocation(line: 303, column: 31, scope: !2993)
!3103 = !DILocation(line: 303, column: 47, scope: !2993)
!3104 = !DILocation(line: 303, column: 17, scope: !2993)
!3105 = !DILocation(line: 303, column: 5, scope: !2993)
!3106 = !DILocation(line: 302, column: 25, scope: !2993)
!3107 = !DILocation(line: 300, column: 8, scope: !2993)
!3108 = !DILocation(line: 300, column: 10, scope: !2993)
!3109 = !DILocation(line: 306, column: 17, scope: !2993)
!3110 = !DILocation(line: 306, column: 16, scope: !2993)
!3111 = !DILocation(line: 306, column: 4, scope: !2993)
!3112 = !DILocation(line: 307, column: 8, scope: !2993)
!3113 = !DILocation(line: 307, column: 17, scope: !2993)
!3114 = !DILocation(line: 307, column: 19, scope: !2993)
!3115 = !DILocation(line: 308, column: 18, scope: !2993)
!3116 = !DILocation(line: 308, column: 32, scope: !2993)
!3117 = !DILocation(line: 308, column: 40, scope: !2993)
!3118 = !DILocation(line: 308, column: 33, scope: !2993)
!3119 = !DILocation(line: 308, column: 42, scope: !2993)
!3120 = !DILocation(line: 308, column: 31, scope: !2993)
!3121 = !DILocation(line: 308, column: 47, scope: !2993)
!3122 = !DILocation(line: 308, column: 17, scope: !2993)
!3123 = !DILocation(line: 308, column: 5, scope: !2993)
!3124 = !DILocation(line: 307, column: 25, scope: !2993)
!3125 = !DILocation(line: 293, column: 19, scope: !2993)
!3126 = !DILocation(line: 293, column: 21, scope: !2993)
!3127 = distinct !DISubprogram(name: "internal/reflectlite.isPrint", linkageName: "internal/reflectlite.isPrint", scope: !117, file: !117, line: 316, type: !2268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3128)
!3128 = !{!3129}
!3129 = !DILocalVariable(name: "r", arg: 1, scope: !3127, file: !117, line: 316, type: !2002)
!3130 = !DILocation(line: 316, column: 6, scope: !3127)
!3131 = !DILocation(line: 317, column: 5, scope: !3127)
!3132 = !DILocation(line: 317, column: 7, scope: !3127)
!3133 = !DILocation(line: 0, scope: !3127)
!3134 = !DILocation(line: 318, column: 14, scope: !3127)
!3135 = !DILocation(line: 318, column: 11, scope: !3127)
!3136 = !DILocation(line: 318, column: 19, scope: !3127)
!3137 = !DILocation(line: 318, column: 21, scope: !3127)
!3138 = !DILocation(line: 320, column: 4, scope: !3127)
!3139 = !DILocation(line: 322, column: 14, scope: !3127)
!3140 = !DILocation(line: 322, column: 11, scope: !3127)
!3141 = !DILocation(line: 322, column: 19, scope: !3127)
!3142 = !DILocation(line: 322, column: 21, scope: !3127)
!3143 = !DILocation(line: 324, column: 11, scope: !3127)
!3144 = !DILocation(line: 324, column: 13, scope: !3127)
!3145 = !DILocation(line: 324, column: 4, scope: !3127)
!3146 = !DILocation(line: 326, column: 3, scope: !3127)
!3147 = !DILocation(line: 330, column: 2, scope: !3127)
!3148 = distinct !DISubprogram(name: "(internal/reflectlite.Kind).String$invoke", linkageName: "(internal/reflectlite.Kind).String$invoke", scope: !33, file: !33, line: 57, type: !2854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032)
!3149 = !DILocation(line: 57, column: 15, scope: !3148)
!3150 = distinct !DISubprogram(name: "(*internal/reflectlite.ValueError).Error", linkageName: "(*internal/reflectlite.ValueError).Error", scope: !319, file: !319, line: 1789, type: !3151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3158)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!3153}
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64, align: 64, dwarfAddressSpace: 0)
!3154 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.ValueError", baseType: !3155)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !3156)
!3156 = !{!43, !3157}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "Kind", baseType: !2856, size: 8, align: 8, offset: 128)
!3158 = !{!3159}
!3159 = !DILocalVariable(name: "e", arg: 1, scope: !3150, file: !319, line: 1789, type: !3153)
!3160 = !DILocation(line: 1789, column: 22, scope: !3150)
!3161 = !DILocation(line: 1790, column: 5, scope: !3150)
!3162 = !DILocation(line: 1790, column: 7, scope: !3150)
!3163 = !DILocation(line: 1790, column: 12, scope: !3150)
!3164 = !DILocation(line: 0, scope: !3150)
!3165 = !DILocation(line: 1791, column: 32, scope: !3150)
!3166 = !DILocation(line: 1791, column: 34, scope: !3150)
!3167 = !DILocation(line: 1791, column: 30, scope: !3150)
!3168 = !DILocation(line: 1791, column: 41, scope: !3150)
!3169 = !DILocation(line: 1791, column: 3, scope: !3150)
!3170 = !DILocation(line: 1793, column: 31, scope: !3150)
!3171 = !DILocation(line: 1793, column: 33, scope: !3150)
!3172 = !DILocation(line: 1793, column: 29, scope: !3150)
!3173 = !DILocation(line: 1793, column: 40, scope: !3150)
!3174 = !DILocation(line: 1793, column: 51, scope: !3150)
!3175 = !DILocation(line: 1793, column: 53, scope: !3150)
!3176 = !DILocation(line: 1793, column: 64, scope: !3150)
!3177 = !DILocation(line: 1793, column: 49, scope: !3150)
!3178 = !DILocation(line: 1793, column: 67, scope: !3150)
!3179 = !DILocation(line: 1793, column: 2, scope: !3150)
!3180 = distinct !DISubprogram(name: "(internal/reflectlite.badSyntax).Error", linkageName: "(internal/reflectlite.badSyntax).Error", scope: !117, file: !117, line: 16, type: !3181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3183)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!1195}
!3183 = !{!3184}
!3184 = !DILocalVariable(name: "arg0", arg: 1, scope: !3180, file: !117, line: 16, type: !1195)
!3185 = !DILocation(line: 17, column: 2, scope: !3180)
!3186 = distinct !DISubprogram(name: "(internal/reflectlite.badSyntax).Error$invoke", linkageName: "(internal/reflectlite.badSyntax).Error$invoke", scope: !117, file: !117, line: 16, type: !3181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032)
!3187 = !DILocation(line: 16, column: 18, scope: !3186)
!3188 = distinct !DISubprogram(name: "runtime/interrupt.In", linkageName: "runtime/interrupt.In", scope: !3189, file: !3189, line: 28, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1516)
!3189 = !DIFile(filename: "interrupt_none.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!3190 = !DISubroutineType(types: !345)
!3191 = !DILocation(line: 30, column: 2, scope: !3188)
!3192 = distinct !DISubprogram(name: "(*internal/task.Mutex).Lock", linkageName: "(*internal/task.Mutex).Lock", scope: !381, file: !381, line: 31, type: !3193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3196)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!3195}
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64, dwarfAddressSpace: 0)
!3196 = !{!3197}
!3197 = !DILocalVariable(name: "m", arg: 1, scope: !3192, file: !381, line: 31, type: !3195)
!3198 = !DILocation(line: 31, column: 17, scope: !3192)
!3199 = !DILocation(line: 33, column: 5, scope: !3192)
!3200 = !DILocation(line: 33, column: 7, scope: !3192)
!3201 = !DILocation(line: 33, column: 27, scope: !3192)
!3202 = !DILocation(line: 0, scope: !3192)
!3203 = !DILocation(line: 35, column: 3, scope: !3192)
!3204 = !DILocation(line: 43, column: 6, scope: !3192)
!3205 = !DILocation(line: 43, column: 8, scope: !3192)
!3206 = !DILocation(line: 43, column: 18, scope: !3192)
!3207 = !DILocation(line: 43, column: 22, scope: !3192)
!3208 = !DILocation(line: 45, column: 3, scope: !3192)
!3209 = !DILocation(line: 45, column: 5, scope: !3192)
!3210 = !DILocation(line: 45, column: 15, scope: !3192)
!3211 = !DILocation(line: 47, column: 2, scope: !3192)
!3212 = distinct !DISubprogram(name: "(*internal/task.Mutex).Unlock", linkageName: "(*internal/task.Mutex).Unlock", scope: !381, file: !381, line: 49, type: !3193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3213)
!3213 = !{!3214, !3215}
!3214 = !DILocalVariable(name: "m", arg: 1, scope: !3212, file: !381, line: 49, type: !3195)
!3215 = !DILocalVariable(name: "old", scope: !3212, file: !381, line: 50, type: !104)
!3216 = !DILocation(line: 49, column: 17, scope: !3212)
!3217 = !DILocation(line: 50, column: 12, scope: !3212)
!3218 = !DILocation(line: 50, column: 14, scope: !3212)
!3219 = !DILocation(line: 50, column: 24, scope: !3212)
!3220 = !DILocation(line: 50, column: 5, scope: !3212)
!3221 = !DILocation(line: 50, column: 29, scope: !3212)
!3222 = !DILocation(line: 50, column: 33, scope: !3212)
!3223 = !DILocation(line: 0, scope: !3212)
!3224 = !DILocation(line: 52, column: 8, scope: !3212)
!3225 = !DILocation(line: 53, column: 12, scope: !3212)
!3226 = !DILocation(line: 53, column: 16, scope: !3212)
!3227 = !DILocation(line: 55, column: 3, scope: !3212)
!3228 = !DILocation(line: 55, column: 5, scope: !3212)
!3229 = !DILocation(line: 55, column: 15, scope: !3212)
!3230 = !DILocation(line: 57, column: 2, scope: !3212)
!3231 = distinct !DISubprogram(name: "(*internal/task.Semaphore).Wait", linkageName: "(*internal/task.Semaphore).Wait", scope: !3232, file: !3232, line: 21, type: !3233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3236)
!3232 = !DIFile(filename: "semaphore.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!3235}
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64, dwarfAddressSpace: 0)
!3236 = !{!3237, !3238, !3239}
!3237 = !DILocalVariable(name: "s", arg: 1, scope: !3231, file: !3232, line: 21, type: !3235)
!3238 = !DILocalVariable(name: "delta", scope: !3231, file: !3232, line: 22, type: !384)
!3239 = !DILocalVariable(name: "value", scope: !3231, file: !3232, line: 23, type: !104)
!3240 = !DILocation(line: 21, column: 21, scope: !3231)
!3241 = !DILocation(line: 22, column: 2, scope: !3231)
!3242 = !DILocation(line: 23, column: 11, scope: !3231)
!3243 = !DILocation(line: 23, column: 13, scope: !3231)
!3244 = !DILocation(line: 23, column: 30, scope: !3231)
!3245 = !DILocation(line: 23, column: 22, scope: !3231)
!3246 = !DILocation(line: 23, column: 2, scope: !3231)
!3247 = !DILocation(line: 0, scope: !3231)
!3248 = !DILocation(line: 25, column: 12, scope: !3231)
!3249 = !DILocation(line: 25, column: 19, scope: !3231)
!3250 = !DILocation(line: 27, column: 4, scope: !3231)
!3251 = !DILocation(line: 29, column: 3, scope: !3231)
!3252 = !DILocation(line: 29, column: 5, scope: !3231)
!3253 = !DILocation(line: 29, column: 16, scope: !3231)
!3254 = !DILocation(line: 29, column: 15, scope: !3231)
!3255 = !DILocation(line: 30, column: 11, scope: !3231)
!3256 = !DILocation(line: 30, column: 13, scope: !3231)
!3257 = !DILocation(line: 30, column: 23, scope: !3231)
!3258 = !DILocation(line: 30, column: 3, scope: !3231)
!3259 = distinct !DISubprogram(name: "internal/task.Init", linkageName: "internal/task.Init", scope: !333, file: !333, line: 55, type: !3260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3262)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!49}
!3262 = !{!3263, !3264}
!3263 = !DILocalVariable(name: "sp", arg: 1, scope: !3259, file: !333, line: 55, type: !49)
!3264 = !DILocalVariable(name: "stackTop", scope: !3259, file: !333, line: 24, type: !49)
!3265 = !DILocation(line: 55, column: 6, scope: !3259)
!3266 = !DILocation(line: 56, column: 28, scope: !3259)
!3267 = !DILocation(line: 56, column: 17, scope: !3259)
!3268 = !DILocation(line: 57, column: 18, scope: !3259)
!3269 = !DILocation(line: 58, column: 2, scope: !3259)
!3270 = distinct !DISubprogram(name: "internal/task.Current", linkageName: "internal/task.Current", scope: !333, file: !333, line: 61, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3271)
!3271 = !{!3272}
!3272 = !DILocalVariable(name: "t", scope: !3270, file: !333, line: 62, type: !334)
!3273 = !DILocation(line: 62, column: 34, scope: !3270)
!3274 = !DILocation(line: 62, column: 2, scope: !3270)
!3275 = !DILocation(line: 63, column: 5, scope: !3270)
!3276 = !DILocation(line: 63, column: 7, scope: !3270)
!3277 = !DILocation(line: 0, scope: !3270)
!3278 = !DILocation(line: 64, column: 15, scope: !3270)
!3279 = !DILocation(line: 66, column: 9, scope: !3270)
!3280 = !DILocation(line: 66, column: 2, scope: !3270)
!3281 = distinct !DISubprogram(name: "internal/task.Pause", linkageName: "internal/task.Pause", scope: !333, file: !333, line: 73, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3282)
!3282 = !{!3283}
!3283 = !DILocalVariable(name: "t", scope: !3281, file: !333, line: 75, type: !334)
!3284 = !DILocation(line: 75, column: 14, scope: !3281)
!3285 = !DILocation(line: 75, column: 2, scope: !3281)
!3286 = !DILocation(line: 0, scope: !3281)
!3287 = !DILocation(line: 77, column: 27, scope: !3281)
!3288 = !DILocation(line: 77, column: 29, scope: !3281)
!3289 = !DILocation(line: 77, column: 35, scope: !3281)
!3290 = !DILocation(line: 77, column: 10, scope: !3281)
!3291 = !DILocation(line: 79, column: 2, scope: !3281)
!3292 = !DILocation(line: 79, column: 4, scope: !3281)
!3293 = !DILocation(line: 79, column: 10, scope: !3281)
!3294 = !DILocation(line: 79, column: 23, scope: !3281)
!3295 = !DILocation(line: 80, column: 2, scope: !3281)
!3296 = distinct !DISubprogram(name: "internal/task.taskExited", linkageName: "tinygo_task_exited", scope: !333, file: !333, line: 125, type: !3297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3299)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!334}
!3299 = !{!3300, !3301, !3302, !3304}
!3300 = !DILocalVariable(name: "t", arg: 1, scope: !3296, file: !333, line: 125, type: !334)
!3301 = !DILocalVariable(name: "found", scope: !3296, file: !333, line: 133, type: !374)
!3302 = !DILocalVariable(name: "q", scope: !3296, file: !333, line: 134, type: !3303)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64, dwarfAddressSpace: 0)
!3304 = !DILocalVariable(name: "otherGoroutines", scope: !3296, file: !333, line: 99, type: !104)
!3305 = !DILocation(line: 125, column: 6, scope: !3296)
!3306 = !DILocation(line: 0, scope: !3296)
!3307 = !DILocation(line: 127, column: 24, scope: !3296)
!3308 = !DILocation(line: 127, column: 26, scope: !3296)
!3309 = !DILocation(line: 127, column: 32, scope: !3296)
!3310 = !DILocation(line: 127, column: 10, scope: !3296)
!3311 = !DILocation(line: 132, column: 21, scope: !3296)
!3312 = !DILocation(line: 133, column: 2, scope: !3296)
!3313 = !DILocation(line: 134, column: 6, scope: !3296)
!3314 = !DILocation(line: 134, column: 26, scope: !3296)
!3315 = !DILocation(line: 134, column: 25, scope: !3296)
!3316 = !DILocation(line: 134, column: 28, scope: !3296)
!3317 = !DILocation(line: 135, column: 7, scope: !3296)
!3318 = !DILocation(line: 135, column: 6, scope: !3296)
!3319 = !DILocation(line: 135, column: 12, scope: !3296)
!3320 = !DILocation(line: 135, column: 9, scope: !3296)
!3321 = !DILocation(line: 136, column: 5, scope: !3296)
!3322 = !DILocation(line: 136, column: 9, scope: !3296)
!3323 = !DILocation(line: 136, column: 11, scope: !3296)
!3324 = !DILocation(line: 136, column: 17, scope: !3296)
!3325 = !DILocation(line: 136, column: 4, scope: !3296)
!3326 = !DILocation(line: 137, column: 4, scope: !3296)
!3327 = !DILocation(line: 134, column: 43, scope: !3296)
!3328 = !DILocation(line: 134, column: 42, scope: !3296)
!3329 = !DILocation(line: 134, column: 46, scope: !3296)
!3330 = !DILocation(line: 134, column: 52, scope: !3296)
!3331 = !DILocation(line: 134, column: 36, scope: !3296)
!3332 = !DILocation(line: 141, column: 2, scope: !3296)
!3333 = !DILocation(line: 142, column: 23, scope: !3296)
!3334 = !DILocation(line: 145, column: 6, scope: !3296)
!3335 = !DILocation(line: 148, column: 2, scope: !3296)
!3336 = !DILocation(line: 146, column: 15, scope: !3296)
!3337 = distinct !DISubprogram(name: "(*internal/task.waitGroup).done", linkageName: "(*internal/task.waitGroup).done", scope: !333, file: !333, line: 163, type: !3338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3341)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!3340}
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64, dwarfAddressSpace: 0)
!3341 = !{!3342}
!3342 = !DILocalVariable(name: "wg", arg: 1, scope: !3337, file: !333, line: 163, type: !3340)
!3343 = !DILocation(line: 163, column: 22, scope: !3337)
!3344 = !DILocation(line: 164, column: 5, scope: !3337)
!3345 = !DILocation(line: 164, column: 8, scope: !3337)
!3346 = !DILocation(line: 164, column: 13, scope: !3337)
!3347 = !DILocation(line: 164, column: 26, scope: !3337)
!3348 = !DILocation(line: 0, scope: !3337)
!3349 = !DILocation(line: 165, column: 3, scope: !3337)
!3350 = !DILocation(line: 165, column: 6, scope: !3337)
!3351 = !DILocation(line: 165, column: 15, scope: !3337)
!3352 = !DILocation(line: 167, column: 2, scope: !3337)
!3353 = distinct !DISubprogram(name: "(*internal/task.waitGroup).wait", linkageName: "(*internal/task.waitGroup).wait", scope: !333, file: !333, line: 169, type: !3338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3354)
!3354 = !{!3355, !3356}
!3355 = !DILocalVariable(name: "wg", arg: 1, scope: !3353, file: !333, line: 169, type: !3340)
!3356 = !DILocalVariable(name: "val", scope: !3353, file: !333, line: 171, type: !104)
!3357 = !DILocation(line: 169, column: 22, scope: !3353)
!3358 = !DILocation(line: 0, scope: !3353)
!3359 = !DILocation(line: 171, column: 10, scope: !3353)
!3360 = !DILocation(line: 171, column: 13, scope: !3353)
!3361 = !DILocation(line: 171, column: 19, scope: !3353)
!3362 = !DILocation(line: 171, column: 3, scope: !3353)
!3363 = !DILocation(line: 172, column: 6, scope: !3353)
!3364 = !DILocation(line: 172, column: 10, scope: !3353)
!3365 = !DILocation(line: 173, column: 4, scope: !3353)
!3366 = !DILocation(line: 175, column: 3, scope: !3353)
!3367 = !DILocation(line: 175, column: 6, scope: !3353)
!3368 = !DILocation(line: 175, column: 13, scope: !3353)
!3369 = !DILocation(line: 175, column: 12, scope: !3353)
!3370 = distinct !DISubprogram(name: "internal/task.initWaitGroup", linkageName: "internal/task.initWaitGroup", scope: !333, file: !333, line: 157, type: !3371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3373)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!104}
!3373 = !{!3374, !3375}
!3374 = !DILocalVariable(name: "n", arg: 1, scope: !3370, file: !333, line: 157, type: !104)
!3375 = !DILocalVariable(name: "wg", scope: !3370, file: !333, line: 158, type: !404)
!3376 = !DILocation(line: 157, column: 6, scope: !3370)
!3377 = !DILocation(line: 158, column: 6, scope: !3370)
!3378 = !DILocation(line: 159, column: 5, scope: !3370)
!3379 = !DILocation(line: 159, column: 2, scope: !3370)
!3380 = !DILocation(line: 159, column: 13, scope: !3370)
!3381 = !DILocation(line: 159, column: 12, scope: !3370)
!3382 = !DILocation(line: 160, column: 9, scope: !3370)
!3383 = !DILocation(line: 160, column: 2, scope: !3370)
!3384 = distinct !DISubprogram(name: "internal/task.GCStopWorldAndScan", linkageName: "internal/task.GCStopWorldAndScan", scope: !333, file: !333, line: 192, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3385)
!3385 = !{!3386, !3387, !3388, !3389, !3390, !3391}
!3386 = !DILocalVariable(name: "current", scope: !3384, file: !333, line: 193, type: !334)
!3387 = !DILocalVariable(name: "otherGoroutines", scope: !3384, file: !333, line: 99, type: !104)
!3388 = !DILocalVariable(name: "scanWaitGroup", scope: !3384, file: !333, line: 151, type: !404)
!3389 = !DILocalVariable(name: "activeTasks", scope: !3384, file: !333, line: 45, type: !334)
!3390 = !DILocalVariable(name: "t", scope: !3384, file: !333, line: 212, type: !334)
!3391 = !DILocalVariable(name: "t", scope: !3384, file: !333, line: 223, type: !334)
!3392 = !DILocation(line: 193, column: 20, scope: !3384)
!3393 = !DILocation(line: 193, column: 2, scope: !3384)
!3394 = !DILocation(line: 196, column: 17, scope: !3384)
!3395 = !DILocation(line: 196, column: 20, scope: !3384)
!3396 = !DILocation(line: 0, scope: !3384)
!3397 = !DILocation(line: 199, column: 22, scope: !3384)
!3398 = !DILocation(line: 202, column: 21, scope: !3384)
!3399 = !DILocation(line: 206, column: 16, scope: !3384)
!3400 = !DILocation(line: 209, column: 33, scope: !3384)
!3401 = !DILocation(line: 209, column: 32, scope: !3384)
!3402 = !DILocation(line: 209, column: 3, scope: !3384)
!3403 = !DILocation(line: 212, column: 12, scope: !3384)
!3404 = !DILocation(line: 212, column: 7, scope: !3384)
!3405 = !DILocation(line: 212, column: 25, scope: !3384)
!3406 = !DILocation(line: 212, column: 27, scope: !3384)
!3407 = !DILocation(line: 213, column: 7, scope: !3384)
!3408 = !DILocation(line: 213, column: 12, scope: !3384)
!3409 = !DILocation(line: 213, column: 9, scope: !3384)
!3410 = !DILocation(line: 214, column: 32, scope: !3384)
!3411 = !DILocation(line: 214, column: 34, scope: !3384)
!3412 = !DILocation(line: 214, column: 40, scope: !3384)
!3413 = !DILocation(line: 214, column: 31, scope: !3384)
!3414 = !DILocation(line: 212, column: 39, scope: !3384)
!3415 = !DILocation(line: 212, column: 41, scope: !3384)
!3416 = !DILocation(line: 212, column: 47, scope: !3384)
!3417 = !DILocation(line: 212, column: 35, scope: !3384)
!3418 = !DILocation(line: 219, column: 21, scope: !3384)
!3419 = !DILocation(line: 223, column: 11, scope: !3384)
!3420 = !DILocation(line: 223, column: 6, scope: !3384)
!3421 = !DILocation(line: 223, column: 24, scope: !3384)
!3422 = !DILocation(line: 223, column: 26, scope: !3384)
!3423 = !DILocation(line: 224, column: 6, scope: !3384)
!3424 = !DILocation(line: 224, column: 11, scope: !3384)
!3425 = !DILocation(line: 224, column: 8, scope: !3384)
!3426 = !DILocation(line: 225, column: 14, scope: !3384)
!3427 = !DILocation(line: 225, column: 16, scope: !3384)
!3428 = !DILocation(line: 225, column: 22, scope: !3384)
!3429 = !DILocation(line: 225, column: 35, scope: !3384)
!3430 = !DILocation(line: 225, column: 37, scope: !3384)
!3431 = !DILocation(line: 225, column: 43, scope: !3384)
!3432 = !DILocation(line: 225, column: 13, scope: !3384)
!3433 = !DILocation(line: 223, column: 38, scope: !3384)
!3434 = !DILocation(line: 223, column: 40, scope: !3384)
!3435 = !DILocation(line: 223, column: 46, scope: !3384)
!3436 = !DILocation(line: 223, column: 34, scope: !3384)
!3437 = !DILocation(line: 230, column: 18, scope: !3384)
!3438 = !DILocation(line: 233, column: 15, scope: !3384)
!3439 = !DILocation(line: 234, column: 2, scope: !3384)
!3440 = distinct !DISubprogram(name: "internal/task.GCResumeWorld", linkageName: "internal/task.GCResumeWorld", scope: !333, file: !333, line: 237, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3441)
!3441 = !{!3442, !3443}
!3442 = !DILocalVariable(name: "otherGoroutines", scope: !3440, file: !333, line: 99, type: !104)
!3443 = !DILocalVariable(name: "scanWaitGroup", scope: !3440, file: !333, line: 151, type: !404)
!3444 = !DILocation(line: 239, column: 17, scope: !3440)
!3445 = !DILocation(line: 239, column: 20, scope: !3440)
!3446 = !DILocation(line: 0, scope: !3440)
!3447 = !DILocation(line: 241, column: 3, scope: !3440)
!3448 = !DILocation(line: 245, column: 32, scope: !3440)
!3449 = !DILocation(line: 245, column: 31, scope: !3440)
!3450 = !DILocation(line: 245, column: 2, scope: !3440)
!3451 = !DILocation(line: 248, column: 15, scope: !3440)
!3452 = !DILocation(line: 251, column: 17, scope: !3440)
!3453 = !DILocation(line: 254, column: 23, scope: !3440)
!3454 = !DILocation(line: 255, column: 2, scope: !3440)
!3455 = distinct !DISubprogram(name: "internal/task.tingyo_task_gc_pause", linkageName: "tinygo_task_gc_pause", scope: !333, file: !333, line: 266, type: !3456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3458)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!384}
!3458 = !{!3459, !3460}
!3459 = !DILocalVariable(name: "sig", arg: 1, scope: !3455, file: !333, line: 266, type: !384)
!3460 = !DILocalVariable(name: "stackBottom", scope: !3455, file: !333, line: 28, type: !49)
!3461 = !DILocation(line: 266, column: 6, scope: !3455)
!3462 = !DILocation(line: 268, column: 9, scope: !3455)
!3463 = !DILocation(line: 268, column: 12, scope: !3455)
!3464 = !DILocation(line: 268, column: 49, scope: !3455)
!3465 = !DILocation(line: 268, column: 39, scope: !3455)
!3466 = !DILocation(line: 268, column: 18, scope: !3455)
!3467 = !DILocation(line: 271, column: 20, scope: !3455)
!3468 = !DILocation(line: 0, scope: !3455)
!3469 = !DILocation(line: 274, column: 18, scope: !3455)
!3470 = !DILocation(line: 274, column: 21, scope: !3455)
!3471 = !DILocation(line: 275, column: 15, scope: !3455)
!3472 = !DILocation(line: 279, column: 20, scope: !3455)
!3473 = !DILocation(line: 280, column: 2, scope: !3455)
!3474 = distinct !DISubprogram(name: "internal/task.StackTop", linkageName: "internal/task.StackTop", scope: !333, file: !333, line: 289, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527)
!3475 = !DILocation(line: 290, column: 16, scope: !3474)
!3476 = !DILocation(line: 290, column: 19, scope: !3474)
!3477 = !DILocation(line: 290, column: 25, scope: !3474)
!3478 = !DILocation(line: 290, column: 2, scope: !3474)
!3479 = distinct !DISubprogram(name: "runtime.alloc", linkageName: "runtime.alloc", scope: !424, file: !424, line: 68, type: !3480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3482)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!49, !90}
!3482 = !{!3483, !3484, !3485}
!3483 = !DILocalVariable(name: "size", arg: 1, scope: !3479, file: !424, line: 68, type: !49)
!3484 = !DILocalVariable(name: "layout", arg: 2, scope: !3479, file: !424, line: 68, type: !90)
!3485 = !DILocalVariable(name: "ptr", scope: !3479, file: !424, line: 74, type: !90)
!3486 = !DILocation(line: 68, column: 6, scope: !3479)
!3487 = !DILocation(line: 69, column: 5, scope: !3479)
!3488 = !DILocation(line: 69, column: 10, scope: !3479)
!3489 = !DILocation(line: 0, scope: !3479)
!3490 = !DILocation(line: 70, column: 3, scope: !3479)
!3491 = !DILocation(line: 73, column: 13, scope: !3479)
!3492 = !DILocation(line: 74, column: 6, scope: !3479)
!3493 = !DILocation(line: 75, column: 5, scope: !3479)
!3494 = !DILocation(line: 75, column: 36, scope: !3479)
!3495 = !DILocation(line: 75, column: 12, scope: !3479)
!3496 = !DILocation(line: 79, column: 29, scope: !3479)
!3497 = !DILocation(line: 79, column: 28, scope: !3479)
!3498 = !DILocation(line: 79, column: 3, scope: !3479)
!3499 = !DILocation(line: 82, column: 11, scope: !3479)
!3500 = !DILocation(line: 82, column: 16, scope: !3479)
!3501 = !DILocation(line: 82, column: 10, scope: !3479)
!3502 = !DILocation(line: 90, column: 15, scope: !3479)
!3503 = !DILocation(line: 91, column: 15, scope: !3479)
!3504 = !DILocation(line: 92, column: 5, scope: !3479)
!3505 = !DILocation(line: 92, column: 9, scope: !3479)
!3506 = !DILocation(line: 93, column: 15, scope: !3479)
!3507 = !DILocation(line: 96, column: 9, scope: !3479)
!3508 = !DILocation(line: 96, column: 2, scope: !3479)
!3509 = !DILocation(line: 86, column: 22, scope: !3479)
!3510 = !DILocation(line: 86, column: 21, scope: !3479)
!3511 = !DILocation(line: 86, column: 3, scope: !3479)
!3512 = distinct !DISubprogram(name: "runtime.memzero", linkageName: "runtime.memzero", scope: !1584, file: !1584, line: 53, type: !3513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3515)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!90, !49}
!3515 = !{!3516, !3517}
!3516 = !DILocalVariable(name: "ptr", arg: 1, scope: !3512, file: !1584, line: 53, type: !90)
!3517 = !DILocalVariable(name: "size", arg: 2, scope: !3512, file: !1584, line: 53, type: !49)
!3518 = !DILocation(line: 53, column: 6, scope: !3512)
!3519 = distinct !DISubprogram(name: "runtime.gcResumeWorld", linkageName: "runtime.gcResumeWorld", scope: !3520, file: !3520, line: 27, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3520 = !DIFile(filename: "gc_stack_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3521 = !DILocation(line: 28, column: 20, scope: !3519)
!3522 = !DILocation(line: 29, column: 2, scope: !3519)
!3523 = distinct !DISubprogram(name: "runtime.runtimePanic", linkageName: "runtime.runtimePanic", scope: !431, file: !431, line: 85, type: !1997, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3524)
!3524 = !{!3525}
!3525 = !DILocalVariable(name: "msg", arg: 1, scope: !3523, file: !431, line: 85, type: !44)
!3526 = !DILocation(line: 85, column: 6, scope: !3523)
!3527 = !DILocation(line: 88, column: 30, scope: !3523)
!3528 = !DILocation(line: 88, column: 35, scope: !3523)
!3529 = !DILocation(line: 88, column: 16, scope: !3523)
!3530 = !DILocation(line: 89, column: 2, scope: !3523)
!3531 = distinct !DISubprogram(name: "runtime.runtimePanicAt", linkageName: "runtime.runtimePanicAt", scope: !431, file: !431, line: 91, type: !3532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3534)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!90, !44}
!3534 = !{!3535, !3536}
!3535 = !DILocalVariable(name: "addr", arg: 1, scope: !3531, file: !431, line: 91, type: !90)
!3536 = !DILocalVariable(name: "msg", arg: 2, scope: !3531, file: !431, line: 91, type: !44)
!3537 = !DILocation(line: 91, column: 6, scope: !3531)
!3538 = !DILocation(line: 0, scope: !3531)
!3539 = !DILocation(line: 93, column: 7, scope: !3531)
!3540 = !DILocation(line: 99, column: 14, scope: !3531)
!3541 = !DILocation(line: 100, column: 20, scope: !3531)
!3542 = !DILocation(line: 100, column: 19, scope: !3531)
!3543 = !DILocation(line: 100, column: 26, scope: !3531)
!3544 = !DILocation(line: 100, column: 11, scope: !3531)
!3545 = !DILocation(line: 101, column: 14, scope: !3531)
!3546 = !DILocation(line: 105, column: 14, scope: !3531)
!3547 = !DILocation(line: 105, column: 13, scope: !3531)
!3548 = !DILocation(line: 106, column: 9, scope: !3531)
!3549 = !DILocation(line: 107, column: 7, scope: !3531)
!3550 = !DILocation(line: 108, column: 2, scope: !3531)
!3551 = !DILocation(line: 103, column: 14, scope: !3531)
!3552 = distinct !DISubprogram(name: "runtime.printstring", linkageName: "runtime.printstring", scope: !461, file: !461, line: 12, type: !1997, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3553)
!3553 = !{!3554, !3555}
!3554 = !DILocalVariable(name: "s", arg: 1, scope: !3552, file: !461, line: 12, type: !44)
!3555 = !DILocalVariable(name: "i", scope: !3552, file: !461, line: 13, type: !1943)
!3556 = !DILocation(line: 12, column: 6, scope: !3552)
!3557 = !DILocation(line: 13, column: 6, scope: !3552)
!3558 = !DILocation(line: 0, scope: !3552)
!3559 = !DILocation(line: 13, column: 14, scope: !3552)
!3560 = !DILocation(line: 13, column: 22, scope: !3552)
!3561 = !DILocation(line: 13, column: 21, scope: !3552)
!3562 = !DILocation(line: 13, column: 16, scope: !3552)
!3563 = !DILocation(line: 14, column: 13, scope: !3552)
!3564 = !DILocation(line: 14, column: 11, scope: !3552)
!3565 = !DILocation(line: 14, column: 12, scope: !3552)
!3566 = !DILocation(line: 14, column: 10, scope: !3552)
!3567 = !DILocation(line: 13, column: 26, scope: !3552)
!3568 = !DILocation(line: 16, column: 2, scope: !3552)
!3569 = distinct !DISubprogram(name: "runtime.printptr", linkageName: "runtime.printptr", scope: !461, file: !461, line: 371, type: !3260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3570)
!3570 = !{!3571, !3572, !3573}
!3571 = !DILocalVariable(name: "ptr", arg: 1, scope: !3569, file: !461, line: 371, type: !49)
!3572 = !DILocalVariable(name: "i", scope: !3569, file: !461, line: 378, type: !1943)
!3573 = !DILocalVariable(name: "nibble", scope: !3569, file: !461, line: 379, type: !536)
!3574 = !DILocation(line: 371, column: 6, scope: !3569)
!3575 = !DILocation(line: 372, column: 5, scope: !3569)
!3576 = !DILocation(line: 372, column: 9, scope: !3569)
!3577 = !DILocation(line: 0, scope: !3569)
!3578 = !DILocation(line: 373, column: 14, scope: !3569)
!3579 = !DILocation(line: 374, column: 3, scope: !3569)
!3580 = !DILocation(line: 376, column: 9, scope: !3569)
!3581 = !DILocation(line: 377, column: 9, scope: !3569)
!3582 = !DILocation(line: 378, column: 6, scope: !3569)
!3583 = !DILocation(line: 371, column: 15, scope: !3569)
!3584 = !DILocation(line: 378, column: 14, scope: !3569)
!3585 = !DILocation(line: 378, column: 16, scope: !3569)
!3586 = !DILocation(line: 379, column: 18, scope: !3569)
!3587 = !DILocation(line: 379, column: 22, scope: !3569)
!3588 = !DILocation(line: 379, column: 17, scope: !3569)
!3589 = !DILocation(line: 379, column: 3, scope: !3569)
!3590 = !DILocation(line: 380, column: 6, scope: !3569)
!3591 = !DILocation(line: 380, column: 13, scope: !3569)
!3592 = !DILocation(line: 381, column: 12, scope: !3569)
!3593 = !DILocation(line: 381, column: 19, scope: !3569)
!3594 = !DILocation(line: 381, column: 11, scope: !3569)
!3595 = !DILocation(line: 385, column: 3, scope: !3569)
!3596 = !DILocation(line: 378, column: 45, scope: !3569)
!3597 = !DILocation(line: 383, column: 12, scope: !3569)
!3598 = !DILocation(line: 383, column: 19, scope: !3569)
!3599 = !DILocation(line: 383, column: 24, scope: !3569)
!3600 = !DILocation(line: 383, column: 11, scope: !3569)
!3601 = !DILocation(line: 387, column: 2, scope: !3569)
!3602 = distinct !DISubprogram(name: "runtime.printnl", linkageName: "runtime.printnl", scope: !461, file: !461, line: 286, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3603 = !DILocation(line: 0, scope: !3602)
!3604 = !DILocation(line: 288, column: 10, scope: !3602)
!3605 = !DILocation(line: 290, column: 9, scope: !3602)
!3606 = !DILocation(line: 291, column: 2, scope: !3602)
!3607 = distinct !DISubprogram(name: "runtime.putchar", linkageName: "runtime.putchar", scope: !417, file: !417, line: 214, type: !3608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3610)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!536}
!3610 = !{!3611}
!3611 = !DILocalVariable(name: "c", arg: 1, scope: !3607, file: !417, line: 214, type: !536)
!3612 = !DILocation(line: 214, column: 6, scope: !3607)
!3613 = !DILocation(line: 215, column: 2, scope: !3607)
!3614 = !DILocation(line: 215, column: 17, scope: !3607)
!3615 = !DILocation(line: 216, column: 35, scope: !3607)
!3616 = !DILocation(line: 216, column: 12, scope: !3607)
!3617 = !DILocation(line: 217, column: 2, scope: !3607)
!3618 = distinct !DISubprogram(name: "runtime.initRand", linkageName: "runtime.initRand", scope: !412, file: !412, line: 26, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3619)
!3619 = !{!3620, !3621, !3622}
!3620 = !DILocalVariable(name: "r", scope: !3618, file: !412, line: 27, type: !341)
!3621 = !DILocalVariable(name: "xorshift64State", scope: !3618, file: !412, line: 52, type: !341)
!3622 = !DILocalVariable(name: "xorshift32State", scope: !3618, file: !412, line: 32, type: !104)
!3623 = !DILocation(line: 27, column: 22, scope: !3618)
!3624 = !DILocation(line: 27, column: 2, scope: !3618)
!3625 = !DILocation(line: 28, column: 27, scope: !3618)
!3626 = !DILocation(line: 28, column: 29, scope: !3618)
!3627 = !DILocation(line: 28, column: 2, scope: !3618)
!3628 = !DILocation(line: 29, column: 27, scope: !3618)
!3629 = !DILocation(line: 29, column: 26, scope: !3618)
!3630 = !DILocation(line: 29, column: 2, scope: !3618)
!3631 = !DILocation(line: 30, column: 2, scope: !3618)
!3632 = distinct !DISubprogram(name: "runtime.hardwareRand", linkageName: "runtime.hardwareRand", scope: !3633, file: !3633, line: 137, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3634)
!3633 = !DIFile(filename: "os_linux.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3634 = !{!3635, !3636}
!3635 = !DILocalVariable(name: "read", scope: !3632, file: !3633, line: 138, type: !104)
!3636 = !DILocalVariable(name: "n", scope: !3632, file: !3633, line: 137, type: !341)
!3637 = !DILocation(line: 137, column: 22, scope: !3632)
!3638 = !DILocation(line: 138, column: 24, scope: !3632)
!3639 = !DILocation(line: 138, column: 2, scope: !3632)
!3640 = !DILocation(line: 139, column: 5, scope: !3632)
!3641 = !DILocation(line: 139, column: 10, scope: !3632)
!3642 = !DILocation(line: 0, scope: !3632)
!3643 = !DILocation(line: 140, column: 3, scope: !3632)
!3644 = !DILocation(line: 142, column: 9, scope: !3632)
!3645 = !DILocation(line: 142, column: 2, scope: !3632)
!3646 = distinct !DISubprogram(name: "runtime.getCurrentStackPointer", linkageName: "runtime.getCurrentStackPointer", scope: !3647, file: !3647, line: 26, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3647 = !DIFile(filename: "arch_amd64.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3648 = !DILocation(line: 27, column: 26, scope: !3646)
!3649 = !DILocation(line: 27, column: 16, scope: !3646)
!3650 = !DILocation(line: 27, column: 2, scope: !3646)
!3651 = distinct !DISubprogram(name: "runtime.stacksave", linkageName: "runtime.stacksave", scope: !1584, file: !1584, line: 58, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3652 = !DILocation(line: 58, column: 6, scope: !3651)
!3653 = distinct !DISubprogram(name: "runtime.memcpy", linkageName: "runtime.memcpy", scope: !1584, file: !1584, line: 42, type: !3654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3656)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!90, !90, !49}
!3656 = !{!3657, !3658, !3659}
!3657 = !DILocalVariable(name: "dst", arg: 1, scope: !3653, file: !1584, line: 42, type: !90)
!3658 = !DILocalVariable(name: "src", arg: 2, scope: !3653, file: !1584, line: 42, type: !90)
!3659 = !DILocalVariable(name: "size", arg: 3, scope: !3653, file: !1584, line: 42, type: !49)
!3660 = !DILocation(line: 42, column: 6, scope: !3653)
!3661 = distinct !DISubprogram(name: "runtime.nilPanic", linkageName: "runtime.nilPanic", scope: !431, file: !431, line: 183, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3662 = !DILocation(line: 184, column: 30, scope: !3661)
!3663 = !DILocation(line: 184, column: 16, scope: !3661)
!3664 = !DILocation(line: 185, column: 2, scope: !3661)
!3665 = distinct !DISubprogram(name: "runtime.deadlock", linkageName: "runtime.deadlock", scope: !518, file: !518, line: 42, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3666 = !DILocation(line: 44, column: 12, scope: !3665)
!3667 = !DILocation(line: 45, column: 2, scope: !3665)
!3668 = distinct !DISubprogram(name: "runtime.lookupPanic", linkageName: "runtime.lookupPanic", scope: !431, file: !431, line: 193, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3669 = !DILocation(line: 194, column: 30, scope: !3668)
!3670 = !DILocation(line: 194, column: 16, scope: !3668)
!3671 = !DILocation(line: 195, column: 2, scope: !3668)
!3672 = distinct !DISubprogram(name: "runtime.panicOrGoexit", linkageName: "runtime.panicOrGoexit", scope: !431, file: !431, line: 58, type: !3673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3676)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!781, !3675}
!3675 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.panicState", baseType: !4)
!3676 = !{!3677, !3678, !3679, !3690, !3691}
!3677 = !DILocalVariable(name: "message", arg: 1, scope: !3672, file: !431, line: 58, type: !781)
!3678 = !DILocalVariable(name: "panicking", arg: 2, scope: !3672, file: !431, line: 58, type: !3675)
!3679 = !DILocalVariable(name: "frame", scope: !3672, file: !431, line: 65, type: !3680)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64, align: 64, dwarfAddressSpace: 0)
!3681 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.deferFrame", baseType: !3682)
!3682 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !3683)
!3683 = !{!3684, !3685, !3686, !3687, !3688, !3689}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "JumpSP", baseType: !90, size: 64, align: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "JumpPC", baseType: !90, size: 64, align: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraRegs", baseType: !2620, align: 64, offset: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "Previous", baseType: !3680, size: 64, align: 64, offset: 128)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "Panicking", baseType: !3675, size: 8, align: 8, offset: 192)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "PanicValue", baseType: !781, size: 128, align: 64, offset: 256)
!3690 = !DILocalVariable(name: "PanicValue", scope: !3672, file: !431, line: 42, type: !781)
!3691 = !DILocalVariable(name: "Panicking", scope: !3672, file: !431, line: 41, type: !3675)
!3692 = !DILocation(line: 58, column: 6, scope: !3672)
!3693 = !DILocation(line: 0, scope: !3672)
!3694 = !DILocation(line: 60, column: 7, scope: !3672)
!3695 = !DILocation(line: 64, column: 39, scope: !3672)
!3696 = !DILocation(line: 65, column: 38, scope: !3672)
!3697 = !DILocation(line: 65, column: 41, scope: !3672)
!3698 = !DILocation(line: 65, column: 3, scope: !3672)
!3699 = !DILocation(line: 66, column: 6, scope: !3672)
!3700 = !DILocation(line: 66, column: 12, scope: !3672)
!3701 = !DILocation(line: 67, column: 4, scope: !3672)
!3702 = !DILocation(line: 67, column: 23, scope: !3672)
!3703 = !DILocation(line: 67, column: 10, scope: !3672)
!3704 = !DILocation(line: 68, column: 4, scope: !3672)
!3705 = !DILocation(line: 68, column: 22, scope: !3672)
!3706 = !DILocation(line: 68, column: 10, scope: !3672)
!3707 = !DILocation(line: 69, column: 19, scope: !3672)
!3708 = !DILocation(line: 69, column: 18, scope: !3672)
!3709 = !DILocation(line: 73, column: 5, scope: !3672)
!3710 = !DILocation(line: 73, column: 15, scope: !3672)
!3711 = !DILocation(line: 76, column: 11, scope: !3672)
!3712 = !DILocation(line: 78, column: 13, scope: !3672)
!3713 = !DILocation(line: 79, column: 11, scope: !3672)
!3714 = !DILocation(line: 79, column: 10, scope: !3672)
!3715 = !DILocation(line: 80, column: 9, scope: !3672)
!3716 = !DILocation(line: 81, column: 7, scope: !3672)
!3717 = !DILocation(line: 82, column: 2, scope: !3672)
!3718 = distinct !DISubprogram(name: "runtime.printitf", linkageName: "runtime.printitf", scope: !461, file: !461, line: 293, type: !3719, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3721)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!781}
!3721 = !{!3722, !3723, !3724, !3725, !3726, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3738, !3739, !3741, !3743, !3744, !3745, !3747}
!3722 = !DILocalVariable(name: "msg", arg: 1, scope: !3718, file: !461, line: 293, type: !781)
!3723 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !374)
!3724 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !1943)
!3725 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !88)
!3726 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !3727)
!3727 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!3728 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !384)
!3729 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !1699)
!3730 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !1738)
!3731 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !4)
!3732 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !96)
!3733 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !104)
!3734 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !341)
!3735 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !49)
!3736 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !3737)
!3737 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!3738 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !798)
!3739 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !3740)
!3740 = !DIBasicType(name: "complex64", size: 64, encoding: DW_ATE_complex_float)
!3741 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !3742)
!3742 = !DIBasicType(name: "complex128", size: 128, encoding: DW_ATE_complex_float)
!3743 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !44)
!3744 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !780)
!3745 = !DILocalVariable(name: "msg", scope: !3718, file: !461, line: 294, type: !3746)
!3746 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.stringer", baseType: !781)
!3747 = !DILocalVariable(name: "itf", scope: !3718, file: !461, line: 345, type: !781)
!3748 = !DILocation(line: 293, column: 6, scope: !3718)
!3749 = !DILocation(line: 294, column: 16, scope: !3718)
!3750 = !DILocation(line: 295, column: 2, scope: !3718)
!3751 = !DILocation(line: 0, scope: !3718)
!3752 = !DILocation(line: 296, column: 13, scope: !3718)
!3753 = !DILocation(line: 296, column: 12, scope: !3718)
!3754 = !DILocation(line: 352, column: 2, scope: !3718)
!3755 = !DILocation(line: 297, column: 2, scope: !3718)
!3756 = !DILocation(line: 300, column: 21, scope: !3718)
!3757 = !DILocation(line: 300, column: 14, scope: !3718)
!3758 = !DILocation(line: 302, column: 21, scope: !3718)
!3759 = !DILocation(line: 302, column: 20, scope: !3718)
!3760 = !DILocation(line: 302, column: 14, scope: !3718)
!3761 = !DILocation(line: 304, column: 2, scope: !3718)
!3762 = !DILocation(line: 305, column: 13, scope: !3718)
!3763 = !DILocation(line: 305, column: 12, scope: !3718)
!3764 = !DILocation(line: 306, column: 2, scope: !3718)
!3765 = !DILocation(line: 307, column: 14, scope: !3718)
!3766 = !DILocation(line: 307, column: 13, scope: !3718)
!3767 = !DILocation(line: 308, column: 2, scope: !3718)
!3768 = !DILocation(line: 309, column: 14, scope: !3718)
!3769 = !DILocation(line: 309, column: 13, scope: !3718)
!3770 = !DILocation(line: 310, column: 2, scope: !3718)
!3771 = !DILocation(line: 311, column: 14, scope: !3718)
!3772 = !DILocation(line: 311, column: 13, scope: !3718)
!3773 = !DILocation(line: 312, column: 2, scope: !3718)
!3774 = !DILocation(line: 315, column: 23, scope: !3718)
!3775 = !DILocation(line: 315, column: 15, scope: !3718)
!3776 = !DILocation(line: 317, column: 23, scope: !3718)
!3777 = !DILocation(line: 317, column: 22, scope: !3718)
!3778 = !DILocation(line: 317, column: 15, scope: !3718)
!3779 = !DILocation(line: 319, column: 2, scope: !3718)
!3780 = !DILocation(line: 320, column: 14, scope: !3718)
!3781 = !DILocation(line: 320, column: 13, scope: !3718)
!3782 = !DILocation(line: 321, column: 2, scope: !3718)
!3783 = !DILocation(line: 322, column: 15, scope: !3718)
!3784 = !DILocation(line: 322, column: 14, scope: !3718)
!3785 = !DILocation(line: 323, column: 2, scope: !3718)
!3786 = !DILocation(line: 324, column: 15, scope: !3718)
!3787 = !DILocation(line: 324, column: 14, scope: !3718)
!3788 = !DILocation(line: 325, column: 2, scope: !3718)
!3789 = !DILocation(line: 326, column: 15, scope: !3718)
!3790 = !DILocation(line: 326, column: 14, scope: !3718)
!3791 = !DILocation(line: 327, column: 2, scope: !3718)
!3792 = !DILocation(line: 328, column: 16, scope: !3718)
!3793 = !DILocation(line: 328, column: 15, scope: !3718)
!3794 = !DILocation(line: 329, column: 2, scope: !3718)
!3795 = !DILocation(line: 330, column: 16, scope: !3718)
!3796 = !DILocation(line: 330, column: 15, scope: !3718)
!3797 = !DILocation(line: 331, column: 2, scope: !3718)
!3798 = !DILocation(line: 332, column: 16, scope: !3718)
!3799 = !DILocation(line: 332, column: 15, scope: !3718)
!3800 = !DILocation(line: 333, column: 2, scope: !3718)
!3801 = !DILocation(line: 334, column: 18, scope: !3718)
!3802 = !DILocation(line: 334, column: 17, scope: !3718)
!3803 = !DILocation(line: 335, column: 2, scope: !3718)
!3804 = !DILocation(line: 336, column: 19, scope: !3718)
!3805 = !DILocation(line: 336, column: 18, scope: !3718)
!3806 = !DILocation(line: 337, column: 2, scope: !3718)
!3807 = !DILocation(line: 338, column: 15, scope: !3718)
!3808 = !DILocation(line: 338, column: 14, scope: !3718)
!3809 = !DILocation(line: 339, column: 2, scope: !3718)
!3810 = !DILocation(line: 340, column: 15, scope: !3718)
!3811 = !DILocation(line: 340, column: 24, scope: !3718)
!3812 = !DILocation(line: 340, column: 14, scope: !3718)
!3813 = !DILocation(line: 341, column: 2, scope: !3718)
!3814 = !DILocation(line: 342, column: 15, scope: !3718)
!3815 = !DILocation(line: 342, column: 25, scope: !3718)
!3816 = !DILocation(line: 342, column: 14, scope: !3718)
!3817 = !DILocation(line: 294, column: 9, scope: !3718)
!3818 = !DILocation(line: 345, column: 10, scope: !3718)
!3819 = !DILocation(line: 345, column: 3, scope: !3718)
!3820 = !DILocation(line: 346, column: 10, scope: !3718)
!3821 = !DILocation(line: 347, column: 28, scope: !3718)
!3822 = !DILocation(line: 347, column: 23, scope: !3718)
!3823 = !DILocation(line: 347, column: 15, scope: !3718)
!3824 = !DILocation(line: 348, column: 10, scope: !3718)
!3825 = !DILocation(line: 349, column: 24, scope: !3718)
!3826 = !DILocation(line: 349, column: 19, scope: !3718)
!3827 = !DILocation(line: 349, column: 11, scope: !3718)
!3828 = !DILocation(line: 350, column: 10, scope: !3718)
!3829 = distinct !DISubprogram(name: "runtime.printbool", linkageName: "runtime.printbool", scope: !461, file: !461, line: 389, type: !3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3832)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!374}
!3832 = !{!3833}
!3833 = !DILocalVariable(name: "b", arg: 1, scope: !3829, file: !461, line: 389, type: !374)
!3834 = !DILocation(line: 389, column: 6, scope: !3829)
!3835 = !DILocation(line: 390, column: 5, scope: !3829)
!3836 = !DILocation(line: 0, scope: !3829)
!3837 = !DILocation(line: 391, column: 14, scope: !3829)
!3838 = !DILocation(line: 395, column: 2, scope: !3829)
!3839 = !DILocation(line: 393, column: 14, scope: !3829)
!3840 = distinct !DISubprogram(name: "runtime.printint64", linkageName: "runtime.printint64", scope: !461, file: !461, line: 94, type: !3841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3843)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!1699}
!3843 = !{!3844}
!3844 = !DILocalVariable(name: "n", arg: 1, scope: !3840, file: !461, line: 94, type: !1699)
!3845 = !DILocation(line: 94, column: 6, scope: !3840)
!3846 = !DILocation(line: 95, column: 5, scope: !3840)
!3847 = !DILocation(line: 95, column: 7, scope: !3840)
!3848 = !DILocation(line: 0, scope: !3840)
!3849 = !DILocation(line: 96, column: 10, scope: !3840)
!3850 = !DILocation(line: 97, column: 8, scope: !3840)
!3851 = !DILocation(line: 97, column: 7, scope: !3840)
!3852 = !DILocation(line: 97, column: 3, scope: !3840)
!3853 = !DILocation(line: 94, column: 17, scope: !3840)
!3854 = !DILocation(line: 99, column: 21, scope: !3840)
!3855 = !DILocation(line: 99, column: 13, scope: !3840)
!3856 = !DILocation(line: 100, column: 2, scope: !3840)
!3857 = distinct !DISubprogram(name: "runtime.printint32", linkageName: "runtime.printint32", scope: !461, file: !461, line: 65, type: !3456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3858)
!3858 = !{!3859}
!3859 = !DILocalVariable(name: "n", arg: 1, scope: !3857, file: !461, line: 65, type: !384)
!3860 = !DILocation(line: 65, column: 6, scope: !3857)
!3861 = !DILocation(line: 68, column: 5, scope: !3857)
!3862 = !DILocation(line: 68, column: 7, scope: !3857)
!3863 = !DILocation(line: 0, scope: !3857)
!3864 = !DILocation(line: 69, column: 10, scope: !3857)
!3865 = !DILocation(line: 70, column: 8, scope: !3857)
!3866 = !DILocation(line: 70, column: 7, scope: !3857)
!3867 = !DILocation(line: 70, column: 3, scope: !3857)
!3868 = !DILocation(line: 65, column: 17, scope: !3857)
!3869 = !DILocation(line: 72, column: 21, scope: !3857)
!3870 = !DILocation(line: 72, column: 13, scope: !3857)
!3871 = !DILocation(line: 73, column: 2, scope: !3857)
!3872 = distinct !DISubprogram(name: "runtime.printint8", linkageName: "runtime.printint8", scope: !461, file: !461, line: 30, type: !3873, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!88}
!3875 = !{!3876}
!3876 = !DILocalVariable(name: "n", arg: 1, scope: !3872, file: !461, line: 30, type: !88)
!3877 = !DILocation(line: 30, column: 6, scope: !3872)
!3878 = !DILocation(line: 0, scope: !3872)
!3879 = !DILocation(line: 32, column: 20, scope: !3872)
!3880 = !DILocation(line: 32, column: 19, scope: !3872)
!3881 = !DILocation(line: 32, column: 13, scope: !3872)
!3882 = !DILocation(line: 40, column: 2, scope: !3872)
!3883 = !DILocation(line: 34, column: 6, scope: !3872)
!3884 = !DILocation(line: 34, column: 8, scope: !3872)
!3885 = !DILocation(line: 35, column: 11, scope: !3872)
!3886 = !DILocation(line: 36, column: 9, scope: !3872)
!3887 = !DILocation(line: 36, column: 8, scope: !3872)
!3888 = !DILocation(line: 36, column: 4, scope: !3872)
!3889 = !DILocation(line: 30, column: 16, scope: !3872)
!3890 = !DILocation(line: 38, column: 20, scope: !3872)
!3891 = !DILocation(line: 38, column: 13, scope: !3872)
!3892 = distinct !DISubprogram(name: "runtime.printint16", linkageName: "runtime.printint16", scope: !461, file: !461, line: 57, type: !3893, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3895)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!3727}
!3895 = !{!3896}
!3896 = !DILocalVariable(name: "n", arg: 1, scope: !3892, file: !461, line: 57, type: !3727)
!3897 = !DILocation(line: 57, column: 6, scope: !3892)
!3898 = !DILocation(line: 58, column: 19, scope: !3892)
!3899 = !DILocation(line: 58, column: 18, scope: !3892)
!3900 = !DILocation(line: 58, column: 12, scope: !3892)
!3901 = !DILocation(line: 59, column: 2, scope: !3892)
!3902 = distinct !DISubprogram(name: "runtime.printuint64", linkageName: "runtime.printuint64", scope: !461, file: !461, line: 76, type: !1763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3903)
!3903 = !{!3904, !3905, !3906, !3907, !3908}
!3904 = !DILocalVariable(name: "n", arg: 1, scope: !3902, file: !461, line: 76, type: !341)
!3905 = !DILocalVariable(name: "firstdigit", scope: !3902, file: !461, line: 79, type: !1943)
!3906 = !DILocalVariable(name: "i", scope: !3902, file: !461, line: 80, type: !1943)
!3907 = !DILocalVariable(name: "digit", scope: !3902, file: !461, line: 81, type: !536)
!3908 = !DILocalVariable(name: "i", scope: !3902, file: !461, line: 89, type: !1943)
!3909 = !DILocation(line: 76, column: 6, scope: !3902)
!3910 = !DILocation(line: 77, column: 2, scope: !3902)
!3911 = !DILocation(line: 79, column: 2, scope: !3902)
!3912 = !DILocation(line: 80, column: 6, scope: !3902)
!3913 = !DILocation(line: 0, scope: !3902)
!3914 = !DILocation(line: 76, column: 18, scope: !3902)
!3915 = !DILocation(line: 80, column: 15, scope: !3902)
!3916 = !DILocation(line: 80, column: 17, scope: !3902)
!3917 = !DILocation(line: 81, column: 17, scope: !3902)
!3918 = !DILocation(line: 81, column: 18, scope: !3902)
!3919 = !DILocation(line: 81, column: 22, scope: !3902)
!3920 = !DILocation(line: 81, column: 16, scope: !3902)
!3921 = !DILocation(line: 81, column: 3, scope: !3902)
!3922 = !DILocation(line: 82, column: 10, scope: !3902)
!3923 = !DILocation(line: 82, column: 15, scope: !3902)
!3924 = !DILocation(line: 82, column: 9, scope: !3902)
!3925 = !DILocation(line: 83, column: 6, scope: !3902)
!3926 = !DILocation(line: 83, column: 12, scope: !3902)
!3927 = !DILocation(line: 84, column: 17, scope: !3902)
!3928 = !DILocation(line: 84, column: 4, scope: !3902)
!3929 = !DILocation(line: 86, column: 3, scope: !3902)
!3930 = !DILocation(line: 80, column: 23, scope: !3902)
!3931 = !DILocation(line: 89, column: 11, scope: !3902)
!3932 = !DILocation(line: 89, column: 6, scope: !3902)
!3933 = !DILocation(line: 89, column: 23, scope: !3902)
!3934 = !DILocation(line: 89, column: 25, scope: !3902)
!3935 = !DILocation(line: 90, column: 18, scope: !3902)
!3936 = !DILocation(line: 90, column: 17, scope: !3902)
!3937 = !DILocation(line: 90, column: 10, scope: !3902)
!3938 = !DILocation(line: 89, column: 31, scope: !3902)
!3939 = !DILocation(line: 92, column: 2, scope: !3902)
!3940 = distinct !DISubprogram(name: "runtime.printuint32", linkageName: "runtime.printuint32", scope: !461, file: !461, line: 61, type: !3371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3941)
!3941 = !{!3942}
!3942 = !DILocalVariable(name: "n", arg: 1, scope: !3940, file: !461, line: 61, type: !104)
!3943 = !DILocation(line: 61, column: 6, scope: !3940)
!3944 = !DILocation(line: 62, column: 21, scope: !3940)
!3945 = !DILocation(line: 62, column: 20, scope: !3940)
!3946 = !DILocation(line: 62, column: 13, scope: !3940)
!3947 = !DILocation(line: 63, column: 2, scope: !3940)
!3948 = distinct !DISubprogram(name: "runtime.printuint8", linkageName: "runtime.printuint8", scope: !461, file: !461, line: 18, type: !3949, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3951)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!4}
!3951 = !{!3952, !3953}
!3952 = !DILocalVariable(name: "n", arg: 1, scope: !3948, file: !461, line: 18, type: !4)
!3953 = !DILocalVariable(name: "prevdigits", scope: !3948, file: !461, line: 22, type: !4)
!3954 = !DILocation(line: 18, column: 6, scope: !3948)
!3955 = !DILocation(line: 0, scope: !3948)
!3956 = !DILocation(line: 20, column: 22, scope: !3948)
!3957 = !DILocation(line: 20, column: 21, scope: !3948)
!3958 = !DILocation(line: 20, column: 14, scope: !3948)
!3959 = !DILocation(line: 28, column: 2, scope: !3948)
!3960 = !DILocation(line: 22, column: 17, scope: !3948)
!3961 = !DILocation(line: 22, column: 19, scope: !3948)
!3962 = !DILocation(line: 22, column: 3, scope: !3948)
!3963 = !DILocation(line: 23, column: 6, scope: !3948)
!3964 = !DILocation(line: 23, column: 17, scope: !3948)
!3965 = !DILocation(line: 24, column: 15, scope: !3948)
!3966 = !DILocation(line: 24, column: 14, scope: !3948)
!3967 = !DILocation(line: 26, column: 17, scope: !3948)
!3968 = !DILocation(line: 26, column: 19, scope: !3948)
!3969 = !DILocation(line: 26, column: 25, scope: !3948)
!3970 = !DILocation(line: 26, column: 10, scope: !3948)
!3971 = distinct !DISubprogram(name: "runtime.printuint16", linkageName: "runtime.printuint16", scope: !461, file: !461, line: 53, type: !3972, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3974)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!96}
!3974 = !{!3975}
!3975 = !DILocalVariable(name: "n", arg: 1, scope: !3971, file: !461, line: 53, type: !96)
!3976 = !DILocation(line: 53, column: 6, scope: !3971)
!3977 = !DILocation(line: 54, column: 21, scope: !3971)
!3978 = !DILocation(line: 54, column: 20, scope: !3971)
!3979 = !DILocation(line: 54, column: 13, scope: !3971)
!3980 = !DILocation(line: 55, column: 2, scope: !3971)
!3981 = distinct !DISubprogram(name: "runtime.printuintptr", linkageName: "runtime.printuintptr", scope: !461, file: !461, line: 42, type: !3260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3982)
!3982 = !{!3983}
!3983 = !DILocalVariable(name: "n", arg: 1, scope: !3981, file: !461, line: 42, type: !49)
!3984 = !DILocation(line: 42, column: 6, scope: !3981)
!3985 = !DILocation(line: 0, scope: !3981)
!3986 = !DILocation(line: 45, column: 22, scope: !3981)
!3987 = !DILocation(line: 45, column: 21, scope: !3981)
!3988 = !DILocation(line: 45, column: 14, scope: !3981)
!3989 = !DILocation(line: 51, column: 2, scope: !3981)
!3990 = !DILocation(line: 47, column: 22, scope: !3981)
!3991 = !DILocation(line: 47, column: 21, scope: !3981)
!3992 = !DILocation(line: 47, column: 14, scope: !3981)
!3993 = !DILocation(line: 49, column: 22, scope: !3981)
!3994 = !DILocation(line: 49, column: 14, scope: !3981)
!3995 = distinct !DISubprogram(name: "runtime.printfloat32", linkageName: "runtime.printfloat32", scope: !461, file: !461, line: 114, type: !3996, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3998)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!3737}
!3998 = !{!3999, !4000, !4001, !4002, !4003, !4005, !4006, !4007}
!3999 = !DILocalVariable(name: "v", arg: 1, scope: !3995, file: !461, line: 114, type: !3737)
!4000 = !DILocalVariable(name: "e", scope: !3995, file: !461, line: 130, type: !1943)
!4001 = !DILocalVariable(name: "i", scope: !3995, file: !461, line: 164, type: !1943)
!4002 = !DILocalVariable(name: "s", scope: !3995, file: !461, line: 165, type: !1943)
!4003 = !DILocalVariable(name: "buf", scope: !3995, file: !461, line: 128, type: !4004)
!4004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 112, align: 8, elements: !119)
!4005 = !DILocalVariable(name: "c", scope: !3995, file: !461, line: 183, type: !536)
!4006 = !DILocalVariable(name: "h", scope: !3995, file: !461, line: 152, type: !3737)
!4007 = !DILocalVariable(name: "i", scope: !3995, file: !461, line: 153, type: !1943)
!4008 = !DILocation(line: 114, column: 6, scope: !3995)
!4009 = !DILocation(line: 116, column: 7, scope: !3995)
!4010 = !DILocation(line: 116, column: 12, scope: !3995)
!4011 = !DILocation(line: 116, column: 9, scope: !3995)
!4012 = !DILocation(line: 0, scope: !3995)
!4013 = !DILocation(line: 117, column: 14, scope: !3995)
!4014 = !DILocation(line: 118, column: 3, scope: !3995)
!4015 = !DILocation(line: 119, column: 7, scope: !3995)
!4016 = !DILocation(line: 119, column: 9, scope: !3995)
!4017 = !DILocation(line: 119, column: 8, scope: !3995)
!4018 = !DILocation(line: 119, column: 14, scope: !3995)
!4019 = !DILocation(line: 119, column: 11, scope: !3995)
!4020 = !DILocation(line: 119, column: 19, scope: !3995)
!4021 = !DILocation(line: 119, column: 21, scope: !3995)
!4022 = !DILocation(line: 119, column: 16, scope: !3995)
!4023 = !DILocation(line: 120, column: 14, scope: !3995)
!4024 = !DILocation(line: 121, column: 3, scope: !3995)
!4025 = !DILocation(line: 122, column: 7, scope: !3995)
!4026 = !DILocation(line: 122, column: 9, scope: !3995)
!4027 = !DILocation(line: 122, column: 8, scope: !3995)
!4028 = !DILocation(line: 122, column: 14, scope: !3995)
!4029 = !DILocation(line: 122, column: 11, scope: !3995)
!4030 = !DILocation(line: 122, column: 19, scope: !3995)
!4031 = !DILocation(line: 122, column: 21, scope: !3995)
!4032 = !DILocation(line: 122, column: 16, scope: !3995)
!4033 = !DILocation(line: 123, column: 14, scope: !3995)
!4034 = !DILocation(line: 124, column: 3, scope: !3995)
!4035 = !DILocation(line: 129, column: 5, scope: !3995)
!4036 = !DILocation(line: 130, column: 2, scope: !3995)
!4037 = !DILocation(line: 131, column: 5, scope: !3995)
!4038 = !DILocation(line: 131, column: 7, scope: !3995)
!4039 = !DILocation(line: 132, column: 8, scope: !3995)
!4040 = !DILocation(line: 132, column: 7, scope: !3995)
!4041 = !DILocation(line: 132, column: 10, scope: !3995)
!4042 = !DILocation(line: 133, column: 7, scope: !3995)
!4043 = !DILocation(line: 114, column: 19, scope: !3995)
!4044 = !DILocation(line: 164, column: 6, scope: !3995)
!4045 = !DILocation(line: 164, column: 14, scope: !3995)
!4046 = !DILocation(line: 164, column: 16, scope: !3995)
!4047 = !DILocation(line: 165, column: 12, scope: !3995)
!4048 = !DILocation(line: 165, column: 11, scope: !3995)
!4049 = !DILocation(line: 165, column: 3, scope: !3995)
!4050 = !DILocation(line: 166, column: 7, scope: !3995)
!4051 = !DILocation(line: 166, column: 8, scope: !3995)
!4052 = !DILocation(line: 166, column: 19, scope: !3995)
!4053 = !DILocation(line: 166, column: 21, scope: !3995)
!4054 = !DILocation(line: 166, column: 18, scope: !3995)
!4055 = !DILocation(line: 166, column: 6, scope: !3995)
!4056 = !DILocation(line: 167, column: 16, scope: !3995)
!4057 = !DILocation(line: 167, column: 15, scope: !3995)
!4058 = !DILocation(line: 167, column: 3, scope: !3995)
!4059 = !DILocation(line: 168, column: 3, scope: !3995)
!4060 = !DILocation(line: 164, column: 21, scope: !3995)
!4061 = !DILocation(line: 170, column: 14, scope: !3995)
!4062 = !DILocation(line: 170, column: 5, scope: !3995)
!4063 = !DILocation(line: 171, column: 5, scope: !3995)
!4064 = !DILocation(line: 173, column: 5, scope: !3995)
!4065 = !DILocation(line: 174, column: 5, scope: !3995)
!4066 = !DILocation(line: 175, column: 5, scope: !3995)
!4067 = !DILocation(line: 175, column: 7, scope: !3995)
!4068 = !DILocation(line: 176, column: 8, scope: !3995)
!4069 = !DILocation(line: 176, column: 7, scope: !3995)
!4070 = !DILocation(line: 176, column: 3, scope: !3995)
!4071 = !DILocation(line: 177, column: 6, scope: !3995)
!4072 = !DILocation(line: 180, column: 18, scope: !3995)
!4073 = !DILocation(line: 180, column: 19, scope: !3995)
!4074 = !DILocation(line: 180, column: 17, scope: !3995)
!4075 = !DILocation(line: 180, column: 25, scope: !3995)
!4076 = !DILocation(line: 180, column: 5, scope: !3995)
!4077 = !DILocation(line: 181, column: 18, scope: !3995)
!4078 = !DILocation(line: 181, column: 19, scope: !3995)
!4079 = !DILocation(line: 181, column: 17, scope: !3995)
!4080 = !DILocation(line: 181, column: 23, scope: !3995)
!4081 = !DILocation(line: 181, column: 27, scope: !3995)
!4082 = !DILocation(line: 181, column: 5, scope: !3995)
!4083 = !DILocation(line: 182, column: 18, scope: !3995)
!4084 = !DILocation(line: 182, column: 19, scope: !3995)
!4085 = !DILocation(line: 182, column: 17, scope: !3995)
!4086 = !DILocation(line: 182, column: 24, scope: !3995)
!4087 = !DILocation(line: 182, column: 5, scope: !3995)
!4088 = !DILocation(line: 183, column: 20, scope: !3995)
!4089 = !DILocation(line: 183, column: 9, scope: !3995)
!4090 = !DILocation(line: 184, column: 11, scope: !3995)
!4091 = !DILocation(line: 184, column: 10, scope: !3995)
!4092 = !DILocation(line: 186, column: 2, scope: !3995)
!4093 = !DILocation(line: 136, column: 6, scope: !3995)
!4094 = !DILocation(line: 136, column: 8, scope: !3995)
!4095 = !DILocation(line: 137, column: 9, scope: !3995)
!4096 = !DILocation(line: 137, column: 8, scope: !3995)
!4097 = !DILocation(line: 137, column: 4, scope: !3995)
!4098 = !DILocation(line: 138, column: 7, scope: !3995)
!4099 = !DILocation(line: 142, column: 7, scope: !3995)
!4100 = !DILocation(line: 142, column: 9, scope: !3995)
!4101 = !DILocation(line: 143, column: 4, scope: !3995)
!4102 = !DILocation(line: 144, column: 4, scope: !3995)
!4103 = !DILocation(line: 146, column: 7, scope: !3995)
!4104 = !DILocation(line: 146, column: 9, scope: !3995)
!4105 = !DILocation(line: 147, column: 4, scope: !3995)
!4106 = !DILocation(line: 148, column: 4, scope: !3995)
!4107 = !DILocation(line: 152, column: 3, scope: !3995)
!4108 = !DILocation(line: 153, column: 7, scope: !3995)
!4109 = !DILocation(line: 153, column: 15, scope: !3995)
!4110 = !DILocation(line: 153, column: 17, scope: !3995)
!4111 = !DILocation(line: 154, column: 4, scope: !3995)
!4112 = !DILocation(line: 153, column: 22, scope: !3995)
!4113 = !DILocation(line: 156, column: 8, scope: !3995)
!4114 = !DILocation(line: 156, column: 3, scope: !3995)
!4115 = !DILocation(line: 157, column: 6, scope: !3995)
!4116 = !DILocation(line: 157, column: 8, scope: !3995)
!4117 = !DILocation(line: 158, column: 4, scope: !3995)
!4118 = !DILocation(line: 159, column: 4, scope: !3995)
!4119 = distinct !DISubprogram(name: "runtime.printfloat64", linkageName: "runtime.printfloat64", scope: !461, file: !461, line: 194, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4120)
!4120 = !{!4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128}
!4121 = !DILocalVariable(name: "v", arg: 1, scope: !4119, file: !461, line: 194, type: !798)
!4122 = !DILocalVariable(name: "e", scope: !4119, file: !461, line: 210, type: !1943)
!4123 = !DILocalVariable(name: "i", scope: !4119, file: !461, line: 244, type: !1943)
!4124 = !DILocalVariable(name: "s", scope: !4119, file: !461, line: 245, type: !1943)
!4125 = !DILocalVariable(name: "buf", scope: !4119, file: !461, line: 208, type: !4004)
!4126 = !DILocalVariable(name: "c", scope: !4119, file: !461, line: 263, type: !536)
!4127 = !DILocalVariable(name: "h", scope: !4119, file: !461, line: 232, type: !798)
!4128 = !DILocalVariable(name: "i", scope: !4119, file: !461, line: 233, type: !1943)
!4129 = !DILocation(line: 194, column: 6, scope: !4119)
!4130 = !DILocation(line: 196, column: 7, scope: !4119)
!4131 = !DILocation(line: 196, column: 12, scope: !4119)
!4132 = !DILocation(line: 196, column: 9, scope: !4119)
!4133 = !DILocation(line: 0, scope: !4119)
!4134 = !DILocation(line: 197, column: 14, scope: !4119)
!4135 = !DILocation(line: 198, column: 3, scope: !4119)
!4136 = !DILocation(line: 199, column: 7, scope: !4119)
!4137 = !DILocation(line: 199, column: 9, scope: !4119)
!4138 = !DILocation(line: 199, column: 8, scope: !4119)
!4139 = !DILocation(line: 199, column: 14, scope: !4119)
!4140 = !DILocation(line: 199, column: 11, scope: !4119)
!4141 = !DILocation(line: 199, column: 19, scope: !4119)
!4142 = !DILocation(line: 199, column: 21, scope: !4119)
!4143 = !DILocation(line: 199, column: 16, scope: !4119)
!4144 = !DILocation(line: 200, column: 14, scope: !4119)
!4145 = !DILocation(line: 201, column: 3, scope: !4119)
!4146 = !DILocation(line: 202, column: 7, scope: !4119)
!4147 = !DILocation(line: 202, column: 9, scope: !4119)
!4148 = !DILocation(line: 202, column: 8, scope: !4119)
!4149 = !DILocation(line: 202, column: 14, scope: !4119)
!4150 = !DILocation(line: 202, column: 11, scope: !4119)
!4151 = !DILocation(line: 202, column: 19, scope: !4119)
!4152 = !DILocation(line: 202, column: 21, scope: !4119)
!4153 = !DILocation(line: 202, column: 16, scope: !4119)
!4154 = !DILocation(line: 203, column: 14, scope: !4119)
!4155 = !DILocation(line: 204, column: 3, scope: !4119)
!4156 = !DILocation(line: 209, column: 5, scope: !4119)
!4157 = !DILocation(line: 210, column: 2, scope: !4119)
!4158 = !DILocation(line: 211, column: 5, scope: !4119)
!4159 = !DILocation(line: 211, column: 7, scope: !4119)
!4160 = !DILocation(line: 212, column: 8, scope: !4119)
!4161 = !DILocation(line: 212, column: 7, scope: !4119)
!4162 = !DILocation(line: 212, column: 10, scope: !4119)
!4163 = !DILocation(line: 213, column: 7, scope: !4119)
!4164 = !DILocation(line: 194, column: 19, scope: !4119)
!4165 = !DILocation(line: 244, column: 6, scope: !4119)
!4166 = !DILocation(line: 244, column: 14, scope: !4119)
!4167 = !DILocation(line: 244, column: 16, scope: !4119)
!4168 = !DILocation(line: 245, column: 12, scope: !4119)
!4169 = !DILocation(line: 245, column: 11, scope: !4119)
!4170 = !DILocation(line: 245, column: 3, scope: !4119)
!4171 = !DILocation(line: 246, column: 7, scope: !4119)
!4172 = !DILocation(line: 246, column: 8, scope: !4119)
!4173 = !DILocation(line: 246, column: 19, scope: !4119)
!4174 = !DILocation(line: 246, column: 21, scope: !4119)
!4175 = !DILocation(line: 246, column: 18, scope: !4119)
!4176 = !DILocation(line: 246, column: 6, scope: !4119)
!4177 = !DILocation(line: 247, column: 16, scope: !4119)
!4178 = !DILocation(line: 247, column: 15, scope: !4119)
!4179 = !DILocation(line: 247, column: 3, scope: !4119)
!4180 = !DILocation(line: 248, column: 3, scope: !4119)
!4181 = !DILocation(line: 244, column: 21, scope: !4119)
!4182 = !DILocation(line: 250, column: 14, scope: !4119)
!4183 = !DILocation(line: 250, column: 5, scope: !4119)
!4184 = !DILocation(line: 251, column: 5, scope: !4119)
!4185 = !DILocation(line: 253, column: 5, scope: !4119)
!4186 = !DILocation(line: 254, column: 5, scope: !4119)
!4187 = !DILocation(line: 255, column: 5, scope: !4119)
!4188 = !DILocation(line: 255, column: 7, scope: !4119)
!4189 = !DILocation(line: 256, column: 8, scope: !4119)
!4190 = !DILocation(line: 256, column: 7, scope: !4119)
!4191 = !DILocation(line: 256, column: 3, scope: !4119)
!4192 = !DILocation(line: 257, column: 6, scope: !4119)
!4193 = !DILocation(line: 260, column: 18, scope: !4119)
!4194 = !DILocation(line: 260, column: 19, scope: !4119)
!4195 = !DILocation(line: 260, column: 17, scope: !4119)
!4196 = !DILocation(line: 260, column: 25, scope: !4119)
!4197 = !DILocation(line: 260, column: 5, scope: !4119)
!4198 = !DILocation(line: 261, column: 18, scope: !4119)
!4199 = !DILocation(line: 261, column: 19, scope: !4119)
!4200 = !DILocation(line: 261, column: 17, scope: !4119)
!4201 = !DILocation(line: 261, column: 23, scope: !4119)
!4202 = !DILocation(line: 261, column: 27, scope: !4119)
!4203 = !DILocation(line: 261, column: 5, scope: !4119)
!4204 = !DILocation(line: 262, column: 18, scope: !4119)
!4205 = !DILocation(line: 262, column: 19, scope: !4119)
!4206 = !DILocation(line: 262, column: 17, scope: !4119)
!4207 = !DILocation(line: 262, column: 24, scope: !4119)
!4208 = !DILocation(line: 262, column: 5, scope: !4119)
!4209 = !DILocation(line: 263, column: 20, scope: !4119)
!4210 = !DILocation(line: 263, column: 9, scope: !4119)
!4211 = !DILocation(line: 264, column: 11, scope: !4119)
!4212 = !DILocation(line: 264, column: 10, scope: !4119)
!4213 = !DILocation(line: 266, column: 2, scope: !4119)
!4214 = !DILocation(line: 216, column: 6, scope: !4119)
!4215 = !DILocation(line: 216, column: 8, scope: !4119)
!4216 = !DILocation(line: 217, column: 9, scope: !4119)
!4217 = !DILocation(line: 217, column: 8, scope: !4119)
!4218 = !DILocation(line: 217, column: 4, scope: !4119)
!4219 = !DILocation(line: 218, column: 7, scope: !4119)
!4220 = !DILocation(line: 222, column: 7, scope: !4119)
!4221 = !DILocation(line: 222, column: 9, scope: !4119)
!4222 = !DILocation(line: 223, column: 4, scope: !4119)
!4223 = !DILocation(line: 224, column: 4, scope: !4119)
!4224 = !DILocation(line: 226, column: 7, scope: !4119)
!4225 = !DILocation(line: 226, column: 9, scope: !4119)
!4226 = !DILocation(line: 227, column: 4, scope: !4119)
!4227 = !DILocation(line: 228, column: 4, scope: !4119)
!4228 = !DILocation(line: 232, column: 3, scope: !4119)
!4229 = !DILocation(line: 233, column: 7, scope: !4119)
!4230 = !DILocation(line: 233, column: 15, scope: !4119)
!4231 = !DILocation(line: 233, column: 17, scope: !4119)
!4232 = !DILocation(line: 234, column: 4, scope: !4119)
!4233 = !DILocation(line: 233, column: 22, scope: !4119)
!4234 = !DILocation(line: 236, column: 8, scope: !4119)
!4235 = !DILocation(line: 236, column: 3, scope: !4119)
!4236 = !DILocation(line: 237, column: 6, scope: !4119)
!4237 = !DILocation(line: 237, column: 8, scope: !4119)
!4238 = !DILocation(line: 238, column: 4, scope: !4119)
!4239 = !DILocation(line: 239, column: 4, scope: !4119)
!4240 = distinct !DISubprogram(name: "runtime.printcomplex64", linkageName: "runtime.printcomplex64", scope: !461, file: !461, line: 268, type: !4241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4243)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!3740}
!4243 = !{!4244}
!4244 = !DILocalVariable(name: "c", arg: 1, scope: !4240, file: !461, line: 268, type: !3740)
!4245 = !DILocation(line: 268, column: 6, scope: !4240)
!4246 = !DILocation(line: 269, column: 9, scope: !4240)
!4247 = !DILocation(line: 270, column: 20, scope: !4240)
!4248 = !DILocation(line: 270, column: 19, scope: !4240)
!4249 = !DILocation(line: 270, column: 14, scope: !4240)
!4250 = !DILocation(line: 271, column: 20, scope: !4240)
!4251 = !DILocation(line: 271, column: 19, scope: !4240)
!4252 = !DILocation(line: 271, column: 14, scope: !4240)
!4253 = !DILocation(line: 272, column: 13, scope: !4240)
!4254 = !DILocation(line: 273, column: 2, scope: !4240)
!4255 = distinct !DISubprogram(name: "runtime.printcomplex128", linkageName: "runtime.printcomplex128", scope: !461, file: !461, line: 275, type: !4256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4258)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!3742}
!4258 = !{!4259}
!4259 = !DILocalVariable(name: "c", arg: 1, scope: !4255, file: !461, line: 275, type: !3742)
!4260 = !DILocation(line: 275, column: 6, scope: !4255)
!4261 = !DILocation(line: 276, column: 9, scope: !4255)
!4262 = !DILocation(line: 277, column: 20, scope: !4255)
!4263 = !DILocation(line: 277, column: 19, scope: !4255)
!4264 = !DILocation(line: 277, column: 14, scope: !4255)
!4265 = !DILocation(line: 278, column: 20, scope: !4255)
!4266 = !DILocation(line: 278, column: 19, scope: !4255)
!4267 = !DILocation(line: 278, column: 14, scope: !4255)
!4268 = !DILocation(line: 279, column: 13, scope: !4255)
!4269 = !DILocation(line: 280, column: 2, scope: !4255)
!4270 = distinct !DISubprogram(name: "runtime._panic", linkageName: "runtime._panic", scope: !431, file: !431, line: 54, type: !3719, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4271)
!4271 = !{!4272}
!4272 = !DILocalVariable(name: "message", arg: 1, scope: !4270, file: !431, line: 54, type: !781)
!4273 = !DILocation(line: 54, column: 6, scope: !4270)
!4274 = !DILocation(line: 55, column: 16, scope: !4270)
!4275 = !DILocation(line: 55, column: 15, scope: !4270)
!4276 = !DILocation(line: 56, column: 2, scope: !4270)
!4277 = distinct !DISubprogram(name: "runtime.stringEqual", linkageName: "runtime.stringEqual", scope: !4278, file: !4278, line: 24, type: !4279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4281)
!4278 = !DIFile(filename: "string.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!44, !44}
!4281 = !{!4282, !4283, !4284}
!4282 = !DILocalVariable(name: "x", arg: 1, scope: !4277, file: !4278, line: 24, type: !44)
!4283 = !DILocalVariable(name: "y", arg: 2, scope: !4277, file: !4278, line: 24, type: !44)
!4284 = !DILocalVariable(name: "i", scope: !4277, file: !4278, line: 28, type: !1943)
!4285 = !DILocation(line: 24, column: 6, scope: !4277)
!4286 = !DILocation(line: 25, column: 9, scope: !4277)
!4287 = !DILocation(line: 25, column: 8, scope: !4277)
!4288 = !DILocation(line: 25, column: 19, scope: !4277)
!4289 = !DILocation(line: 25, column: 18, scope: !4277)
!4290 = !DILocation(line: 25, column: 12, scope: !4277)
!4291 = !DILocation(line: 0, scope: !4277)
!4292 = !DILocation(line: 26, column: 3, scope: !4277)
!4293 = !DILocation(line: 28, column: 6, scope: !4277)
!4294 = !DILocation(line: 28, column: 14, scope: !4277)
!4295 = !DILocation(line: 28, column: 22, scope: !4277)
!4296 = !DILocation(line: 28, column: 21, scope: !4277)
!4297 = !DILocation(line: 28, column: 16, scope: !4277)
!4298 = !DILocation(line: 29, column: 8, scope: !4277)
!4299 = !DILocation(line: 29, column: 6, scope: !4277)
!4300 = !DILocation(line: 29, column: 7, scope: !4277)
!4301 = !DILocation(line: 29, column: 16, scope: !4277)
!4302 = !DILocation(line: 29, column: 14, scope: !4277)
!4303 = !DILocation(line: 29, column: 15, scope: !4277)
!4304 = !DILocation(line: 29, column: 11, scope: !4277)
!4305 = !DILocation(line: 30, column: 4, scope: !4277)
!4306 = !DILocation(line: 28, column: 26, scope: !4277)
!4307 = !DILocation(line: 33, column: 2, scope: !4277)
!4308 = distinct !DISubprogram(name: "runtime.slicePanic", linkageName: "runtime.slicePanic", scope: !431, file: !431, line: 198, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4309 = !DILocation(line: 199, column: 30, scope: !4308)
!4310 = !DILocation(line: 199, column: 16, scope: !4308)
!4311 = !DILocation(line: 200, column: 2, scope: !4308)
!4312 = distinct !DISubprogram(name: "runtime.fminimum", linkageName: "fminimum", scope: !1560, file: !1560, line: 60, type: !4313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4315)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!798, !798}
!4315 = !{!4316, !4317}
!4316 = !DILocalVariable(name: "x", arg: 1, scope: !4312, file: !1560, line: 60, type: !798)
!4317 = !DILocalVariable(name: "y", arg: 2, scope: !4312, file: !1560, line: 60, type: !798)
!4318 = !DILocation(line: 60, column: 6, scope: !4312)
!4319 = !DILocation(line: 61, column: 24, scope: !4312)
!4320 = !DILocation(line: 61, column: 27, scope: !4312)
!4321 = !DILocation(line: 61, column: 23, scope: !4312)
!4322 = !DILocation(line: 61, column: 2, scope: !4312)
!4323 = distinct !DISubprogram(name: "runtime.minimumFloat64", linkageName: "runtime.minimumFloat64", scope: !1560, file: !1560, line: 87, type: !4313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4324)
!4324 = !{!4325, !4326}
!4325 = !DILocalVariable(name: "x", arg: 1, scope: !4323, file: !1560, line: 87, type: !798)
!4326 = !DILocalVariable(name: "y", arg: 2, scope: !4323, file: !1560, line: 87, type: !798)
!4327 = !DILocation(line: 87, column: 6, scope: !4323)
!4328 = !DILocation(line: 88, column: 38, scope: !4323)
!4329 = !DILocation(line: 88, column: 41, scope: !4323)
!4330 = !DILocation(line: 88, column: 37, scope: !4323)
!4331 = !DILocation(line: 88, column: 2, scope: !4323)
!4332 = distinct !DISubprogram(name: "runtime.minimumFloat[float64 int64]", linkageName: "runtime.minimumFloat[float64 int64]", scope: !1560, file: !1560, line: 101, type: !4333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4335)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!798, !798, !1699, !1699}
!4335 = !{!4336, !4337, !4338, !4339, !4340, !4341}
!4336 = !DILocalVariable(name: "x", arg: 1, scope: !4332, file: !1560, line: 101, type: !798)
!4337 = !DILocalVariable(name: "y", arg: 2, scope: !4332, file: !1560, line: 101, type: !798)
!4338 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4332, file: !1560, line: 101, type: !1699)
!4339 = !DILocalVariable(name: "magMask", arg: 4, scope: !4332, file: !1560, line: 101, type: !1699)
!4340 = !DILocalVariable(name: "xBits", scope: !4332, file: !1560, line: 102, type: !781)
!4341 = !DILocalVariable(name: "yBits", scope: !4332, file: !1560, line: 103, type: !781)
!4342 = !DILocation(line: 101, column: 6, scope: !4332)
!4343 = !DILocation(line: 101, column: 40, scope: !4332)
!4344 = !DILocation(line: 101, column: 43, scope: !4332)
!4345 = !DILocation(line: 102, column: 11, scope: !4332)
!4346 = !DILocation(line: 102, column: 2, scope: !4332)
!4347 = !DILocation(line: 103, column: 11, scope: !4332)
!4348 = !DILocation(line: 103, column: 2, scope: !4332)
!4349 = !DILocation(line: 107, column: 7, scope: !4332)
!4350 = !DILocation(line: 107, column: 16, scope: !4332)
!4351 = !DILocation(line: 107, column: 13, scope: !4332)
!4352 = !DILocation(line: 0, scope: !4332)
!4353 = !DILocation(line: 108, column: 10, scope: !4332)
!4354 = !DILocation(line: 108, column: 3, scope: !4332)
!4355 = !DILocation(line: 109, column: 7, scope: !4332)
!4356 = !DILocation(line: 109, column: 16, scope: !4332)
!4357 = !DILocation(line: 109, column: 13, scope: !4332)
!4358 = !DILocation(line: 110, column: 10, scope: !4332)
!4359 = !DILocation(line: 110, column: 3, scope: !4332)
!4360 = !DILocation(line: 118, column: 5, scope: !4332)
!4361 = !DILocation(line: 118, column: 11, scope: !4332)
!4362 = !DILocation(line: 119, column: 12, scope: !4332)
!4363 = !DILocation(line: 119, column: 3, scope: !4332)
!4364 = !DILocation(line: 121, column: 5, scope: !4332)
!4365 = !DILocation(line: 121, column: 11, scope: !4332)
!4366 = !DILocation(line: 122, column: 12, scope: !4332)
!4367 = !DILocation(line: 122, column: 3, scope: !4332)
!4368 = !DILocation(line: 124, column: 5, scope: !4332)
!4369 = !DILocation(line: 124, column: 14, scope: !4332)
!4370 = !DILocation(line: 124, column: 11, scope: !4332)
!4371 = !DILocation(line: 125, column: 10, scope: !4332)
!4372 = !DILocation(line: 125, column: 3, scope: !4332)
!4373 = !DILocation(line: 127, column: 10, scope: !4332)
!4374 = !DILocation(line: 127, column: 3, scope: !4332)
!4375 = distinct !DISubprogram(name: "runtime.fminimumf", linkageName: "fminimumf", scope: !1560, file: !1560, line: 65, type: !4376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4378)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!3737, !3737}
!4378 = !{!4379, !4380}
!4379 = !DILocalVariable(name: "x", arg: 1, scope: !4375, file: !1560, line: 65, type: !3737)
!4380 = !DILocalVariable(name: "y", arg: 2, scope: !4375, file: !1560, line: 65, type: !3737)
!4381 = !DILocation(line: 65, column: 6, scope: !4375)
!4382 = !DILocation(line: 66, column: 24, scope: !4375)
!4383 = !DILocation(line: 66, column: 27, scope: !4375)
!4384 = !DILocation(line: 66, column: 23, scope: !4375)
!4385 = !DILocation(line: 66, column: 2, scope: !4375)
!4386 = distinct !DISubprogram(name: "runtime.minimumFloat32", linkageName: "runtime.minimumFloat32", scope: !1560, file: !1560, line: 83, type: !4376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4387)
!4387 = !{!4388, !4389}
!4388 = !DILocalVariable(name: "x", arg: 1, scope: !4386, file: !1560, line: 83, type: !3737)
!4389 = !DILocalVariable(name: "y", arg: 2, scope: !4386, file: !1560, line: 83, type: !3737)
!4390 = !DILocation(line: 83, column: 6, scope: !4386)
!4391 = !DILocation(line: 84, column: 38, scope: !4386)
!4392 = !DILocation(line: 84, column: 41, scope: !4386)
!4393 = !DILocation(line: 84, column: 37, scope: !4386)
!4394 = !DILocation(line: 84, column: 2, scope: !4386)
!4395 = distinct !DISubprogram(name: "runtime.minimumFloat[float32 int32]", linkageName: "runtime.minimumFloat[float32 int32]", scope: !1560, file: !1560, line: 101, type: !4396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4398)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!3737, !3737, !384, !384}
!4398 = !{!4399, !4400, !4401, !4402, !4403, !4404}
!4399 = !DILocalVariable(name: "x", arg: 1, scope: !4395, file: !1560, line: 101, type: !3737)
!4400 = !DILocalVariable(name: "y", arg: 2, scope: !4395, file: !1560, line: 101, type: !3737)
!4401 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4395, file: !1560, line: 101, type: !384)
!4402 = !DILocalVariable(name: "magMask", arg: 4, scope: !4395, file: !1560, line: 101, type: !384)
!4403 = !DILocalVariable(name: "xBits", scope: !4395, file: !1560, line: 102, type: !781)
!4404 = !DILocalVariable(name: "yBits", scope: !4395, file: !1560, line: 103, type: !781)
!4405 = !DILocation(line: 101, column: 6, scope: !4395)
!4406 = !DILocation(line: 101, column: 40, scope: !4395)
!4407 = !DILocation(line: 101, column: 43, scope: !4395)
!4408 = !DILocation(line: 102, column: 11, scope: !4395)
!4409 = !DILocation(line: 102, column: 2, scope: !4395)
!4410 = !DILocation(line: 103, column: 11, scope: !4395)
!4411 = !DILocation(line: 103, column: 2, scope: !4395)
!4412 = !DILocation(line: 107, column: 7, scope: !4395)
!4413 = !DILocation(line: 107, column: 16, scope: !4395)
!4414 = !DILocation(line: 107, column: 13, scope: !4395)
!4415 = !DILocation(line: 0, scope: !4395)
!4416 = !DILocation(line: 108, column: 10, scope: !4395)
!4417 = !DILocation(line: 108, column: 3, scope: !4395)
!4418 = !DILocation(line: 109, column: 7, scope: !4395)
!4419 = !DILocation(line: 109, column: 16, scope: !4395)
!4420 = !DILocation(line: 109, column: 13, scope: !4395)
!4421 = !DILocation(line: 110, column: 10, scope: !4395)
!4422 = !DILocation(line: 110, column: 3, scope: !4395)
!4423 = !DILocation(line: 118, column: 5, scope: !4395)
!4424 = !DILocation(line: 118, column: 11, scope: !4395)
!4425 = !DILocation(line: 119, column: 12, scope: !4395)
!4426 = !DILocation(line: 119, column: 3, scope: !4395)
!4427 = !DILocation(line: 121, column: 5, scope: !4395)
!4428 = !DILocation(line: 121, column: 11, scope: !4395)
!4429 = !DILocation(line: 122, column: 12, scope: !4395)
!4430 = !DILocation(line: 122, column: 3, scope: !4395)
!4431 = !DILocation(line: 124, column: 5, scope: !4395)
!4432 = !DILocation(line: 124, column: 14, scope: !4395)
!4433 = !DILocation(line: 124, column: 11, scope: !4395)
!4434 = !DILocation(line: 125, column: 10, scope: !4395)
!4435 = !DILocation(line: 125, column: 3, scope: !4395)
!4436 = !DILocation(line: 127, column: 10, scope: !4395)
!4437 = !DILocation(line: 127, column: 3, scope: !4395)
!4438 = distinct !DISubprogram(name: "runtime.fmaximum", linkageName: "fmaximum", scope: !1560, file: !1560, line: 70, type: !4313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4439)
!4439 = !{!4440, !4441}
!4440 = !DILocalVariable(name: "x", arg: 1, scope: !4438, file: !1560, line: 70, type: !798)
!4441 = !DILocalVariable(name: "y", arg: 2, scope: !4438, file: !1560, line: 70, type: !798)
!4442 = !DILocation(line: 70, column: 6, scope: !4438)
!4443 = !DILocation(line: 71, column: 24, scope: !4438)
!4444 = !DILocation(line: 71, column: 27, scope: !4438)
!4445 = !DILocation(line: 71, column: 23, scope: !4438)
!4446 = !DILocation(line: 71, column: 2, scope: !4438)
!4447 = distinct !DISubprogram(name: "runtime.maximumFloat64", linkageName: "runtime.maximumFloat64", scope: !1560, file: !1560, line: 95, type: !4313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4448)
!4448 = !{!4449, !4450}
!4449 = !DILocalVariable(name: "x", arg: 1, scope: !4447, file: !1560, line: 95, type: !798)
!4450 = !DILocalVariable(name: "y", arg: 2, scope: !4447, file: !1560, line: 95, type: !798)
!4451 = !DILocation(line: 95, column: 6, scope: !4447)
!4452 = !DILocation(line: 96, column: 38, scope: !4447)
!4453 = !DILocation(line: 96, column: 41, scope: !4447)
!4454 = !DILocation(line: 96, column: 37, scope: !4447)
!4455 = !DILocation(line: 96, column: 2, scope: !4447)
!4456 = distinct !DISubprogram(name: "runtime.maximumFloat[float64 int64]", linkageName: "runtime.maximumFloat[float64 int64]", scope: !1560, file: !1560, line: 133, type: !4333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4457)
!4457 = !{!4458, !4459, !4460, !4461, !4462, !4463, !4464}
!4458 = !DILocalVariable(name: "x", arg: 1, scope: !4456, file: !1560, line: 133, type: !798)
!4459 = !DILocalVariable(name: "y", arg: 2, scope: !4456, file: !1560, line: 133, type: !798)
!4460 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4456, file: !1560, line: 133, type: !1699)
!4461 = !DILocalVariable(name: "magMask", arg: 4, scope: !4456, file: !1560, line: 133, type: !1699)
!4462 = !DILocalVariable(name: "xBits", scope: !4456, file: !1560, line: 134, type: !781)
!4463 = !DILocalVariable(name: "yBits", scope: !4456, file: !1560, line: 135, type: !781)
!4464 = !DILocalVariable(name: "maxNegNaN", scope: !4456, file: !1560, line: 149, type: !781)
!4465 = !DILocation(line: 133, column: 6, scope: !4456)
!4466 = !DILocation(line: 133, column: 40, scope: !4456)
!4467 = !DILocation(line: 133, column: 43, scope: !4456)
!4468 = !DILocation(line: 134, column: 11, scope: !4456)
!4469 = !DILocation(line: 134, column: 2, scope: !4456)
!4470 = !DILocation(line: 135, column: 11, scope: !4456)
!4471 = !DILocation(line: 135, column: 2, scope: !4456)
!4472 = !DILocation(line: 142, column: 5, scope: !4456)
!4473 = !DILocation(line: 142, column: 11, scope: !4456)
!4474 = !DILocation(line: 0, scope: !4456)
!4475 = !DILocation(line: 143, column: 12, scope: !4456)
!4476 = !DILocation(line: 143, column: 3, scope: !4456)
!4477 = !DILocation(line: 145, column: 5, scope: !4456)
!4478 = !DILocation(line: 145, column: 11, scope: !4456)
!4479 = !DILocation(line: 146, column: 12, scope: !4456)
!4480 = !DILocation(line: 146, column: 3, scope: !4456)
!4481 = !DILocation(line: 149, column: 16, scope: !4456)
!4482 = !DILocation(line: 149, column: 15, scope: !4456)
!4483 = !DILocation(line: 149, column: 2, scope: !4456)
!4484 = !DILocation(line: 151, column: 7, scope: !4456)
!4485 = !DILocation(line: 151, column: 16, scope: !4456)
!4486 = !DILocation(line: 151, column: 13, scope: !4456)
!4487 = !DILocation(line: 152, column: 10, scope: !4456)
!4488 = !DILocation(line: 152, column: 3, scope: !4456)
!4489 = !DILocation(line: 153, column: 7, scope: !4456)
!4490 = !DILocation(line: 153, column: 16, scope: !4456)
!4491 = !DILocation(line: 153, column: 13, scope: !4456)
!4492 = !DILocation(line: 154, column: 10, scope: !4456)
!4493 = !DILocation(line: 154, column: 3, scope: !4456)
!4494 = !DILocation(line: 156, column: 5, scope: !4456)
!4495 = !DILocation(line: 156, column: 14, scope: !4456)
!4496 = !DILocation(line: 156, column: 11, scope: !4456)
!4497 = !DILocation(line: 157, column: 10, scope: !4456)
!4498 = !DILocation(line: 157, column: 3, scope: !4456)
!4499 = !DILocation(line: 159, column: 10, scope: !4456)
!4500 = !DILocation(line: 159, column: 3, scope: !4456)
!4501 = distinct !DISubprogram(name: "runtime.fmaximumf", linkageName: "fmaximumf", scope: !1560, file: !1560, line: 75, type: !4376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4502)
!4502 = !{!4503, !4504}
!4503 = !DILocalVariable(name: "x", arg: 1, scope: !4501, file: !1560, line: 75, type: !3737)
!4504 = !DILocalVariable(name: "y", arg: 2, scope: !4501, file: !1560, line: 75, type: !3737)
!4505 = !DILocation(line: 75, column: 6, scope: !4501)
!4506 = !DILocation(line: 76, column: 24, scope: !4501)
!4507 = !DILocation(line: 76, column: 27, scope: !4501)
!4508 = !DILocation(line: 76, column: 23, scope: !4501)
!4509 = !DILocation(line: 76, column: 2, scope: !4501)
!4510 = distinct !DISubprogram(name: "runtime.maximumFloat32", linkageName: "runtime.maximumFloat32", scope: !1560, file: !1560, line: 91, type: !4376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4511)
!4511 = !{!4512, !4513}
!4512 = !DILocalVariable(name: "x", arg: 1, scope: !4510, file: !1560, line: 91, type: !3737)
!4513 = !DILocalVariable(name: "y", arg: 2, scope: !4510, file: !1560, line: 91, type: !3737)
!4514 = !DILocation(line: 91, column: 6, scope: !4510)
!4515 = !DILocation(line: 92, column: 38, scope: !4510)
!4516 = !DILocation(line: 92, column: 41, scope: !4510)
!4517 = !DILocation(line: 92, column: 37, scope: !4510)
!4518 = !DILocation(line: 92, column: 2, scope: !4510)
!4519 = distinct !DISubprogram(name: "runtime.maximumFloat[float32 int32]", linkageName: "runtime.maximumFloat[float32 int32]", scope: !1560, file: !1560, line: 133, type: !4396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4520)
!4520 = !{!4521, !4522, !4523, !4524, !4525, !4526, !4527}
!4521 = !DILocalVariable(name: "x", arg: 1, scope: !4519, file: !1560, line: 133, type: !3737)
!4522 = !DILocalVariable(name: "y", arg: 2, scope: !4519, file: !1560, line: 133, type: !3737)
!4523 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4519, file: !1560, line: 133, type: !384)
!4524 = !DILocalVariable(name: "magMask", arg: 4, scope: !4519, file: !1560, line: 133, type: !384)
!4525 = !DILocalVariable(name: "xBits", scope: !4519, file: !1560, line: 134, type: !781)
!4526 = !DILocalVariable(name: "yBits", scope: !4519, file: !1560, line: 135, type: !781)
!4527 = !DILocalVariable(name: "maxNegNaN", scope: !4519, file: !1560, line: 149, type: !781)
!4528 = !DILocation(line: 133, column: 6, scope: !4519)
!4529 = !DILocation(line: 133, column: 40, scope: !4519)
!4530 = !DILocation(line: 133, column: 43, scope: !4519)
!4531 = !DILocation(line: 134, column: 11, scope: !4519)
!4532 = !DILocation(line: 134, column: 2, scope: !4519)
!4533 = !DILocation(line: 135, column: 11, scope: !4519)
!4534 = !DILocation(line: 135, column: 2, scope: !4519)
!4535 = !DILocation(line: 142, column: 5, scope: !4519)
!4536 = !DILocation(line: 142, column: 11, scope: !4519)
!4537 = !DILocation(line: 0, scope: !4519)
!4538 = !DILocation(line: 143, column: 12, scope: !4519)
!4539 = !DILocation(line: 143, column: 3, scope: !4519)
!4540 = !DILocation(line: 145, column: 5, scope: !4519)
!4541 = !DILocation(line: 145, column: 11, scope: !4519)
!4542 = !DILocation(line: 146, column: 12, scope: !4519)
!4543 = !DILocation(line: 146, column: 3, scope: !4519)
!4544 = !DILocation(line: 149, column: 16, scope: !4519)
!4545 = !DILocation(line: 149, column: 15, scope: !4519)
!4546 = !DILocation(line: 149, column: 2, scope: !4519)
!4547 = !DILocation(line: 151, column: 7, scope: !4519)
!4548 = !DILocation(line: 151, column: 16, scope: !4519)
!4549 = !DILocation(line: 151, column: 13, scope: !4519)
!4550 = !DILocation(line: 152, column: 10, scope: !4519)
!4551 = !DILocation(line: 152, column: 3, scope: !4519)
!4552 = !DILocation(line: 153, column: 7, scope: !4519)
!4553 = !DILocation(line: 153, column: 16, scope: !4519)
!4554 = !DILocation(line: 153, column: 13, scope: !4519)
!4555 = !DILocation(line: 154, column: 10, scope: !4519)
!4556 = !DILocation(line: 154, column: 3, scope: !4519)
!4557 = !DILocation(line: 156, column: 5, scope: !4519)
!4558 = !DILocation(line: 156, column: 14, scope: !4519)
!4559 = !DILocation(line: 156, column: 11, scope: !4519)
!4560 = !DILocation(line: 157, column: 10, scope: !4519)
!4561 = !DILocation(line: 157, column: 3, scope: !4519)
!4562 = !DILocation(line: 159, column: 10, scope: !4519)
!4563 = !DILocation(line: 159, column: 3, scope: !4519)
!4564 = distinct !DISubprogram(name: "runtime.initHeap", linkageName: "runtime.initHeap", scope: !424, file: !424, line: 34, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4565 = !DILocation(line: 35, column: 12, scope: !4564)
!4566 = !DILocation(line: 39, column: 8, scope: !4564)
!4567 = !DILocation(line: 40, column: 2, scope: !4564)
!4568 = distinct !DISubprogram(name: "runtime.gcCallback", linkageName: "tinygo_runtime_bdwgc_callback", scope: !424, file: !424, line: 46, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4569 = !DILocation(line: 48, column: 17, scope: !4568)
!4570 = !DILocation(line: 49, column: 2, scope: !4568)
!4571 = distinct !DISubprogram(name: "runtime.gcMarkReachable", linkageName: "runtime.gcMarkReachable", scope: !3520, file: !3520, line: 7, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4572 = !DILocation(line: 8, column: 25, scope: !4571)
!4573 = !DILocation(line: 9, column: 2, scope: !4571)
!4574 = distinct !DISubprogram(name: "runtime.markRoots", linkageName: "runtime.markRoots", scope: !424, file: !424, line: 51, type: !4575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4577)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!49, !49}
!4577 = !{!4578, !4579}
!4578 = !DILocalVariable(name: "start", arg: 1, scope: !4574, file: !424, line: 51, type: !49)
!4579 = !DILocalVariable(name: "end", arg: 2, scope: !4574, file: !424, line: 51, type: !49)
!4580 = !DILocation(line: 51, column: 6, scope: !4574)
!4581 = !DILocation(line: 52, column: 17, scope: !4574)
!4582 = !DILocation(line: 52, column: 24, scope: !4574)
!4583 = !DILocation(line: 52, column: 16, scope: !4574)
!4584 = !DILocation(line: 53, column: 2, scope: !4574)
!4585 = distinct !DISubprogram(name: "runtime.free", linkageName: "runtime.free", scope: !424, file: !424, line: 99, type: !2766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4586)
!4586 = !{!4587}
!4587 = !DILocalVariable(name: "ptr", arg: 1, scope: !4585, file: !424, line: 99, type: !90)
!4588 = !DILocation(line: 99, column: 6, scope: !4585)
!4589 = !DILocation(line: 100, column: 13, scope: !4585)
!4590 = !DILocation(line: 100, column: 12, scope: !4585)
!4591 = !DILocation(line: 101, column: 2, scope: !4585)
!4592 = distinct !DISubprogram(name: "runtime.gcScanGlobals", linkageName: "internal/task.gcScanGlobals", scope: !3520, file: !3520, line: 15, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4593 = !DILocation(line: 16, column: 13, scope: !4592)
!4594 = !DILocation(line: 17, column: 2, scope: !4592)
!4595 = distinct !DISubprogram(name: "runtime.findGlobals", linkageName: "runtime.findGlobals", scope: !3633, file: !3633, line: 95, type: !4596, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4598)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!658}
!4598 = !{!4599, !4600, !4601, !4602, !4615, !4616, !4617, !4624, !4625}
!4599 = !DILocalVariable(name: "found", arg: 1, scope: !4595, file: !3633, line: 95, type: !658)
!4600 = !DILocalVariable(name: "headerPtr", scope: !4595, file: !3633, line: 103, type: !90)
!4601 = !DILocalVariable(name: "i", scope: !4595, file: !3633, line: 104, type: !1943)
!4602 = !DILocalVariable(name: "header", scope: !4595, file: !3633, line: 111, type: !4603)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64, align: 64, dwarfAddressSpace: 0)
!4604 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader64", baseType: !4605)
!4605 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !4606)
!4606 = !{!4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_type", baseType: !104, size: 32, align: 32)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !104, size: 32, align: 32, offset: 32)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "offset", baseType: !49, size: 64, align: 64, offset: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", baseType: !49, size: 64, align: 64, offset: 128)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", baseType: !49, size: 64, align: 64, offset: 192)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "filesz", baseType: !49, size: 64, align: 64, offset: 256)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", baseType: !49, size: 64, align: 64, offset: 320)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !49, size: 64, align: 64, offset: 384)
!4615 = !DILocalVariable(name: "start", scope: !4595, file: !3633, line: 113, type: !49)
!4616 = !DILocalVariable(name: "end", scope: !4595, file: !3633, line: 114, type: !49)
!4617 = !DILocalVariable(name: "header", scope: !4595, file: !3633, line: 118, type: !4618)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64, align: 64, dwarfAddressSpace: 0)
!4619 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader32", baseType: !4620)
!4620 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !4621)
!4621 = !{!4607, !4609, !4610, !4611, !4612, !4613, !4622, !4623}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !104, size: 32, align: 32, offset: 384)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !49, size: 64, align: 64, offset: 448)
!4624 = !DILocalVariable(name: "start", scope: !4595, file: !3633, line: 120, type: !49)
!4625 = !DILocalVariable(name: "end", scope: !4595, file: !3633, line: 121, type: !49)
!4626 = !DILocation(line: 95, column: 6, scope: !4595)
!4627 = !DILocation(line: 103, column: 80, scope: !4595)
!4628 = !DILocation(line: 103, column: 67, scope: !4595)
!4629 = !DILocation(line: 103, column: 29, scope: !4595)
!4630 = !DILocation(line: 103, column: 2, scope: !4595)
!4631 = !DILocation(line: 104, column: 6, scope: !4595)
!4632 = !DILocation(line: 0, scope: !4595)
!4633 = !DILocation(line: 104, column: 14, scope: !4595)
!4634 = !DILocation(line: 104, column: 33, scope: !4595)
!4635 = !DILocation(line: 104, column: 21, scope: !4595)
!4636 = !DILocation(line: 104, column: 16, scope: !4595)
!4637 = !DILocation(line: 111, column: 36, scope: !4595)
!4638 = !DILocation(line: 111, column: 4, scope: !4595)
!4639 = !DILocation(line: 112, column: 7, scope: !4595)
!4640 = !DILocation(line: 112, column: 14, scope: !4595)
!4641 = !DILocation(line: 112, column: 20, scope: !4595)
!4642 = !DILocation(line: 112, column: 34, scope: !4595)
!4643 = !DILocation(line: 112, column: 41, scope: !4595)
!4644 = !DILocation(line: 112, column: 46, scope: !4595)
!4645 = !DILocation(line: 112, column: 52, scope: !4595)
!4646 = !DILocation(line: 113, column: 14, scope: !4595)
!4647 = !DILocation(line: 113, column: 21, scope: !4595)
!4648 = !DILocation(line: 113, column: 5, scope: !4595)
!4649 = !DILocation(line: 114, column: 12, scope: !4595)
!4650 = !DILocation(line: 114, column: 20, scope: !4595)
!4651 = !DILocation(line: 114, column: 27, scope: !4595)
!4652 = !DILocation(line: 114, column: 18, scope: !4595)
!4653 = !DILocation(line: 114, column: 5, scope: !4595)
!4654 = !DILocation(line: 115, column: 5, scope: !4595)
!4655 = !DILocation(line: 115, column: 11, scope: !4595)
!4656 = !DILocation(line: 115, column: 18, scope: !4595)
!4657 = !DILocation(line: 115, column: 10, scope: !4595)
!4658 = !DILocation(line: 125, column: 26, scope: !4595)
!4659 = !DILocation(line: 125, column: 48, scope: !4595)
!4660 = !DILocation(line: 125, column: 25, scope: !4595)
!4661 = !DILocation(line: 125, column: 3, scope: !4595)
!4662 = !DILocation(line: 104, column: 41, scope: !4595)
!4663 = !DILocation(line: 118, column: 36, scope: !4595)
!4664 = !DILocation(line: 118, column: 4, scope: !4595)
!4665 = !DILocation(line: 119, column: 7, scope: !4595)
!4666 = !DILocation(line: 119, column: 14, scope: !4595)
!4667 = !DILocation(line: 119, column: 20, scope: !4595)
!4668 = !DILocation(line: 119, column: 34, scope: !4595)
!4669 = !DILocation(line: 119, column: 41, scope: !4595)
!4670 = !DILocation(line: 119, column: 46, scope: !4595)
!4671 = !DILocation(line: 119, column: 52, scope: !4595)
!4672 = !DILocation(line: 120, column: 14, scope: !4595)
!4673 = !DILocation(line: 120, column: 21, scope: !4595)
!4674 = !DILocation(line: 120, column: 5, scope: !4595)
!4675 = !DILocation(line: 121, column: 12, scope: !4595)
!4676 = !DILocation(line: 121, column: 20, scope: !4595)
!4677 = !DILocation(line: 121, column: 27, scope: !4595)
!4678 = !DILocation(line: 121, column: 18, scope: !4595)
!4679 = !DILocation(line: 121, column: 5, scope: !4595)
!4680 = !DILocation(line: 122, column: 5, scope: !4595)
!4681 = !DILocation(line: 122, column: 11, scope: !4595)
!4682 = !DILocation(line: 122, column: 18, scope: !4595)
!4683 = !DILocation(line: 122, column: 10, scope: !4595)
!4684 = !DILocation(line: 127, column: 2, scope: !4595)
!4685 = distinct !DISubprogram(name: "runtime.scanstack", linkageName: "tinygo_scanstack", scope: !3520, file: !3520, line: 23, type: !3260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4686)
!4686 = !{!4687}
!4687 = !DILocalVariable(name: "sp", arg: 1, scope: !4685, file: !3520, line: 23, type: !49)
!4688 = !DILocation(line: 23, column: 6, scope: !4685)
!4689 = !DILocation(line: 24, column: 12, scope: !4685)
!4690 = !DILocation(line: 24, column: 29, scope: !4685)
!4691 = !DILocation(line: 24, column: 11, scope: !4685)
!4692 = !DILocation(line: 25, column: 2, scope: !4685)
!4693 = distinct !DISubprogram(name: "runtime.unsafeSlicePanic", linkageName: "runtime.unsafeSlicePanic", scope: !431, file: !431, line: 211, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4694 = !DILocation(line: 212, column: 30, scope: !4693)
!4695 = !DILocation(line: 212, column: 16, scope: !4693)
!4696 = !DILocation(line: 213, column: 2, scope: !4693)
!4697 = distinct !DISubprogram(name: "runtime.negativeShiftPanic", linkageName: "runtime.negativeShiftPanic", scope: !431, file: !431, line: 221, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4698 = !DILocation(line: 222, column: 30, scope: !4697)
!4699 = !DILocation(line: 222, column: 16, scope: !4697)
!4700 = !DILocation(line: 223, column: 2, scope: !4697)
!4701 = distinct !DISubprogram(name: "runtime.printspace", linkageName: "runtime.printspace", scope: !461, file: !461, line: 282, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4702 = !DILocation(line: 283, column: 9, scope: !4701)
!4703 = !DILocation(line: 284, column: 2, scope: !4701)
!4704 = distinct !DISubprogram(name: "runtime.memmove", linkageName: "runtime.memmove", scope: !1584, file: !1584, line: 48, type: !3654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4705)
!4705 = !{!4706, !4707, !4708}
!4706 = !DILocalVariable(name: "dst", arg: 1, scope: !4704, file: !1584, line: 48, type: !90)
!4707 = !DILocalVariable(name: "src", arg: 2, scope: !4704, file: !1584, line: 48, type: !90)
!4708 = !DILocalVariable(name: "size", arg: 3, scope: !4704, file: !1584, line: 48, type: !49)
!4709 = !DILocation(line: 48, column: 6, scope: !4704)
!4710 = distinct !DISubprogram(name: "runtime.main", linkageName: "main", scope: !417, file: !417, line: 80, type: !4711, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4713)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!384, !488}
!4713 = !{!4714, !4715, !4716, !4717, !4718}
!4714 = !DILocalVariable(name: "argc", arg: 1, scope: !4710, file: !417, line: 80, type: !384)
!4715 = !DILocalVariable(name: "argv", arg: 2, scope: !4710, file: !417, line: 80, type: !488)
!4716 = !DILocalVariable(name: "main_argc", scope: !4710, file: !417, line: 105, type: !384)
!4717 = !DILocalVariable(name: "main_argv", scope: !4710, file: !417, line: 106, type: !488)
!4718 = !DILocalVariable(name: "stackTop", scope: !4710, file: !417, line: 75, type: !49)
!4719 = !DILocation(line: 80, column: 6, scope: !4710)
!4720 = !DILocation(line: 0, scope: !4710)
!4721 = !DILocation(line: 83, column: 15, scope: !4710)
!4722 = !DILocation(line: 87, column: 14, scope: !4710)
!4723 = !DILocation(line: 87, column: 2, scope: !4710)
!4724 = !DILocation(line: 88, column: 14, scope: !4710)
!4725 = !DILocation(line: 88, column: 2, scope: !4710)
!4726 = !DILocation(line: 92, column: 31, scope: !4710)
!4727 = !DILocation(line: 97, column: 35, scope: !4710)
!4728 = !DILocation(line: 97, column: 2, scope: !4710)
!4729 = !DILocation(line: 98, column: 9, scope: !4710)
!4730 = !DILocation(line: 101, column: 2, scope: !4710)
!4731 = distinct !DISubprogram(name: "runtime.allocateHeap", linkageName: "runtime.allocateHeap", scope: !417, file: !417, line: 303, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4732)
!4732 = !{!4733, !4734, !4735, !4736, !4737}
!4733 = !DILocalVariable(name: "heapMaxSize", scope: !4731, file: !417, line: 299, type: !49)
!4734 = !DILocalVariable(name: "addr", scope: !4731, file: !417, line: 309, type: !90)
!4735 = !DILocalVariable(name: "heapStart", scope: !4731, file: !417, line: 301, type: !49)
!4736 = !DILocalVariable(name: "heapSize", scope: !4731, file: !417, line: 298, type: !49)
!4737 = !DILocalVariable(name: "heapEnd", scope: !4731, file: !417, line: 301, type: !49)
!4738 = !DILocation(line: 307, column: 2, scope: !4731)
!4739 = !DILocation(line: 0, scope: !4731)
!4740 = !DILocation(line: 309, column: 21, scope: !4731)
!4741 = !DILocation(line: 309, column: 15, scope: !4731)
!4742 = !DILocation(line: 309, column: 3, scope: !4731)
!4743 = !DILocation(line: 310, column: 6, scope: !4731)
!4744 = !DILocation(line: 310, column: 11, scope: !4731)
!4745 = !DILocation(line: 315, column: 4, scope: !4731)
!4746 = !DILocation(line: 316, column: 7, scope: !4731)
!4747 = !DILocation(line: 316, column: 19, scope: !4731)
!4748 = !DILocation(line: 317, column: 17, scope: !4731)
!4749 = !DILocation(line: 321, column: 23, scope: !4731)
!4750 = !DILocation(line: 321, column: 22, scope: !4731)
!4751 = !DILocation(line: 321, column: 3, scope: !4731)
!4752 = !DILocation(line: 322, column: 13, scope: !4731)
!4753 = !DILocation(line: 322, column: 25, scope: !4731)
!4754 = !DILocation(line: 322, column: 23, scope: !4731)
!4755 = !DILocation(line: 322, column: 3, scope: !4731)
!4756 = !DILocation(line: 325, column: 2, scope: !4731)
!4757 = distinct !DISubprogram(name: "runtime.runMain", linkageName: "runtime.runMain", scope: !417, file: !417, line: 135, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4758 = !DILocation(line: 136, column: 5, scope: !4757)
!4759 = !DILocation(line: 137, column: 2, scope: !4757)
!4760 = distinct !DISubprogram(name: "runtime.run", linkageName: "runtime.run", scope: !518, file: !518, line: 23, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4761)
!4761 = !{!4762}
!4762 = !DILocalVariable(name: "stackTop", scope: !4760, file: !417, line: 75, type: !49)
!4763 = !DILocation(line: 24, column: 10, scope: !4760)
!4764 = !DILocation(line: 25, column: 10, scope: !4760)
!4765 = !DILocation(line: 26, column: 12, scope: !4760)
!4766 = !DILocation(line: 26, column: 11, scope: !4760)
!4767 = !DILocation(line: 27, column: 9, scope: !4760)
!4768 = !DILocation(line: 28, column: 10, scope: !4760)
!4769 = !DILocation(line: 29, column: 2, scope: !4760)
!4770 = distinct !DISubprogram(name: "runtime.tinygo_handle_fatal_signal", linkageName: "tinygo_handle_fatal_signal", scope: !417, file: !417, line: 148, type: !4771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4773)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!384, !49}
!4773 = !{!4774, !4775}
!4774 = !DILocalVariable(name: "sig", arg: 1, scope: !4770, file: !417, line: 148, type: !384)
!4775 = !DILocalVariable(name: "addr", arg: 2, scope: !4770, file: !417, line: 148, type: !49)
!4776 = !DILocation(line: 148, column: 6, scope: !4770)
!4777 = !DILocation(line: 0, scope: !4770)
!4778 = !DILocation(line: 150, column: 7, scope: !4770)
!4779 = !DILocation(line: 154, column: 5, scope: !4770)
!4780 = !DILocation(line: 154, column: 10, scope: !4770)
!4781 = !DILocation(line: 155, column: 14, scope: !4770)
!4782 = !DILocation(line: 156, column: 12, scope: !4770)
!4783 = !DILocation(line: 156, column: 11, scope: !4770)
!4784 = !DILocation(line: 160, column: 13, scope: !4770)
!4785 = !DILocation(line: 161, column: 9, scope: !4770)
!4786 = !DILocation(line: 162, column: 7, scope: !4770)
!4787 = !DILocation(line: 163, column: 10, scope: !4770)
!4788 = !DILocation(line: 180, column: 8, scope: !4770)
!4789 = !DILocation(line: 180, column: 7, scope: !4770)
!4790 = !DILocation(line: 181, column: 2, scope: !4770)
!4791 = !DILocation(line: 164, column: 7, scope: !4770)
!4792 = !DILocation(line: 165, column: 10, scope: !4770)
!4793 = !DILocation(line: 166, column: 7, scope: !4770)
!4794 = !DILocation(line: 167, column: 10, scope: !4770)
!4795 = !DILocation(line: 169, column: 11, scope: !4770)
!4796 = !DILocation(line: 169, column: 10, scope: !4770)
!4797 = !DILocation(line: 158, column: 14, scope: !4770)
!4798 = distinct !DISubprogram(name: "runtime.printlock", linkageName: "runtime.printlock", scope: !518, file: !518, line: 138, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4799 = !DILocation(line: 139, column: 16, scope: !4798)
!4800 = !DILocation(line: 140, column: 2, scope: !4798)
!4801 = distinct !DISubprogram(name: "runtime.printunlock", linkageName: "runtime.printunlock", scope: !518, file: !518, line: 142, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4802 = !DILocation(line: 143, column: 18, scope: !4801)
!4803 = !DILocation(line: 144, column: 2, scope: !4801)
!4804 = distinct !DISubprogram(name: "runtime.sliceAppend", linkageName: "runtime.sliceAppend", scope: !4805, file: !4805, line: 12, type: !4806, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4808)
!4805 = !DIFile(filename: "slice.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!90, !90, !49, !49, !49, !49, !90}
!4808 = !{!4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816}
!4809 = !DILocalVariable(name: "srcBuf", arg: 1, scope: !4804, file: !4805, line: 12, type: !90)
!4810 = !DILocalVariable(name: "elemsBuf", arg: 2, scope: !4804, file: !4805, line: 12, type: !90)
!4811 = !DILocalVariable(name: "srcLen", arg: 3, scope: !4804, file: !4805, line: 12, type: !49)
!4812 = !DILocalVariable(name: "srcCap", arg: 4, scope: !4804, file: !4805, line: 12, type: !49)
!4813 = !DILocalVariable(name: "elemsLen", arg: 5, scope: !4804, file: !4805, line: 12, type: !49)
!4814 = !DILocalVariable(name: "elemSize", arg: 6, scope: !4804, file: !4805, line: 12, type: !49)
!4815 = !DILocalVariable(name: "layout", arg: 7, scope: !4804, file: !4805, line: 12, type: !90)
!4816 = !DILocalVariable(name: "newLen", scope: !4804, file: !4805, line: 13, type: !49)
!4817 = !DILocation(line: 12, column: 6, scope: !4804)
!4818 = !DILocation(line: 13, column: 12, scope: !4804)
!4819 = !DILocation(line: 13, column: 21, scope: !4804)
!4820 = !DILocation(line: 13, column: 19, scope: !4804)
!4821 = !DILocation(line: 13, column: 2, scope: !4804)
!4822 = !DILocation(line: 14, column: 5, scope: !4804)
!4823 = !DILocation(line: 14, column: 14, scope: !4804)
!4824 = !DILocation(line: 0, scope: !4804)
!4825 = !DILocation(line: 17, column: 33, scope: !4804)
!4826 = !DILocation(line: 17, column: 41, scope: !4804)
!4827 = !DILocation(line: 17, column: 49, scope: !4804)
!4828 = !DILocation(line: 17, column: 57, scope: !4804)
!4829 = !DILocation(line: 17, column: 65, scope: !4804)
!4830 = !DILocation(line: 17, column: 75, scope: !4804)
!4831 = !DILocation(line: 17, column: 32, scope: !4804)
!4832 = !DILocation(line: 17, column: 3, scope: !4804)
!4833 = !DILocation(line: 17, column: 14, scope: !4804)
!4834 = !DILocation(line: 20, column: 22, scope: !4804)
!4835 = !DILocation(line: 20, column: 30, scope: !4804)
!4836 = !DILocation(line: 20, column: 37, scope: !4804)
!4837 = !DILocation(line: 20, column: 36, scope: !4804)
!4838 = !DILocation(line: 20, column: 21, scope: !4804)
!4839 = !DILocation(line: 20, column: 48, scope: !4804)
!4840 = !DILocation(line: 20, column: 58, scope: !4804)
!4841 = !DILocation(line: 20, column: 67, scope: !4804)
!4842 = !DILocation(line: 20, column: 66, scope: !4804)
!4843 = !DILocation(line: 20, column: 10, scope: !4804)
!4844 = !DILocation(line: 12, column: 18, scope: !4804)
!4845 = !DILocation(line: 12, column: 59, scope: !4804)
!4846 = !DILocation(line: 23, column: 9, scope: !4804)
!4847 = !DILocation(line: 23, column: 17, scope: !4804)
!4848 = !DILocation(line: 23, column: 25, scope: !4804)
!4849 = !DILocation(line: 23, column: 2, scope: !4804)
!4850 = distinct !DISubprogram(name: "runtime.sliceGrow", linkageName: "runtime.sliceGrow", scope: !4805, file: !4805, line: 27, type: !4851, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4853)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!90, !49, !49, !49, !49, !90}
!4853 = !{!4854, !4855, !4856, !4857, !4858, !4859, !4860}
!4854 = !DILocalVariable(name: "oldBuf", arg: 1, scope: !4850, file: !4805, line: 27, type: !90)
!4855 = !DILocalVariable(name: "oldLen", arg: 2, scope: !4850, file: !4805, line: 27, type: !49)
!4856 = !DILocalVariable(name: "oldCap", arg: 3, scope: !4850, file: !4805, line: 27, type: !49)
!4857 = !DILocalVariable(name: "newCap", arg: 4, scope: !4850, file: !4805, line: 27, type: !49)
!4858 = !DILocalVariable(name: "elemSize", arg: 5, scope: !4850, file: !4805, line: 27, type: !49)
!4859 = !DILocalVariable(name: "layout", arg: 6, scope: !4850, file: !4805, line: 27, type: !90)
!4860 = !DILocalVariable(name: "buf", scope: !4850, file: !4805, line: 39, type: !90)
!4861 = !DILocation(line: 27, column: 6, scope: !4850)
!4862 = !DILocation(line: 28, column: 5, scope: !4850)
!4863 = !DILocation(line: 28, column: 15, scope: !4850)
!4864 = !DILocation(line: 28, column: 12, scope: !4850)
!4865 = !DILocation(line: 0, scope: !4850)
!4866 = !DILocation(line: 30, column: 10, scope: !4850)
!4867 = !DILocation(line: 30, column: 18, scope: !4850)
!4868 = !DILocation(line: 30, column: 26, scope: !4850)
!4869 = !DILocation(line: 30, column: 3, scope: !4850)
!4870 = !DILocation(line: 37, column: 30, scope: !4850)
!4871 = !DILocation(line: 37, column: 24, scope: !4850)
!4872 = !DILocation(line: 37, column: 13, scope: !4850)
!4873 = !DILocation(line: 37, column: 2, scope: !4850)
!4874 = !DILocation(line: 39, column: 15, scope: !4850)
!4875 = !DILocation(line: 39, column: 22, scope: !4850)
!4876 = !DILocation(line: 39, column: 21, scope: !4850)
!4877 = !DILocation(line: 39, column: 32, scope: !4850)
!4878 = !DILocation(line: 39, column: 14, scope: !4850)
!4879 = !DILocation(line: 39, column: 2, scope: !4850)
!4880 = !DILocation(line: 40, column: 5, scope: !4850)
!4881 = !DILocation(line: 40, column: 12, scope: !4850)
!4882 = !DILocation(line: 42, column: 11, scope: !4850)
!4883 = !DILocation(line: 42, column: 16, scope: !4850)
!4884 = !DILocation(line: 42, column: 24, scope: !4850)
!4885 = !DILocation(line: 42, column: 31, scope: !4850)
!4886 = !DILocation(line: 42, column: 30, scope: !4850)
!4887 = !DILocation(line: 42, column: 10, scope: !4850)
!4888 = !DILocation(line: 45, column: 9, scope: !4850)
!4889 = !DILocation(line: 45, column: 14, scope: !4850)
!4890 = !DILocation(line: 45, column: 22, scope: !4850)
!4891 = !DILocation(line: 45, column: 2, scope: !4850)
!4892 = distinct !DISubprogram(name: "runtime.tinygo_signal_handler", linkageName: "tinygo_signal_handler", scope: !417, file: !417, line: 420, type: !3456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4893)
!4893 = !{!4894, !4895, !4896, !4897}
!4894 = !DILocalVariable(name: "s", arg: 1, scope: !4892, file: !417, line: 420, type: !384)
!4895 = !DILocalVariable(name: "mask", scope: !4892, file: !417, line: 427, type: !104)
!4896 = !DILocalVariable(name: "val", scope: !4892, file: !417, line: 428, type: !104)
!4897 = !DILocalVariable(name: "swapped", scope: !4892, file: !417, line: 429, type: !374)
!4898 = !DILocation(line: 420, column: 6, scope: !4892)
!4899 = !DILocation(line: 0, scope: !4892)
!4900 = !DILocation(line: 427, column: 31, scope: !4892)
!4901 = !DILocation(line: 427, column: 21, scope: !4892)
!4902 = !DILocation(line: 427, column: 3, scope: !4892)
!4903 = !DILocation(line: 428, column: 30, scope: !4892)
!4904 = !DILocation(line: 428, column: 3, scope: !4892)
!4905 = !DILocation(line: 429, column: 45, scope: !4892)
!4906 = !DILocation(line: 429, column: 50, scope: !4892)
!4907 = !DILocation(line: 429, column: 54, scope: !4892)
!4908 = !DILocation(line: 429, column: 53, scope: !4892)
!4909 = !DILocation(line: 429, column: 44, scope: !4892)
!4910 = !DILocation(line: 429, column: 3, scope: !4892)
!4911 = !DILocation(line: 430, column: 6, scope: !4892)
!4912 = !DILocation(line: 437, column: 21, scope: !4892)
!4913 = !DILocation(line: 437, column: 25, scope: !4892)
!4914 = !DILocation(line: 441, column: 22, scope: !4892)
!4915 = !DILocation(line: 443, column: 2, scope: !4892)
!4916 = distinct !DISubprogram(name: "runtime.stringConcat", linkageName: "runtime.stringConcat", scope: !4278, file: !4278, line: 56, type: !4917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4923)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!4919, !4919}
!4919 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._string", baseType: !4920)
!4920 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !4921)
!4921 = !{!2151, !4922}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !49, size: 64, align: 64, offset: 64)
!4923 = !{!4924, !4925, !4926, !4927}
!4924 = !DILocalVariable(name: "x", arg: 1, scope: !4916, file: !4278, line: 56, type: !4919)
!4925 = !DILocalVariable(name: "y", arg: 2, scope: !4916, file: !4278, line: 56, type: !4919)
!4926 = !DILocalVariable(name: "length", scope: !4916, file: !4278, line: 62, type: !49)
!4927 = !DILocalVariable(name: "buf", scope: !4916, file: !4278, line: 63, type: !90)
!4928 = !DILocation(line: 56, column: 6, scope: !4916)
!4929 = !DILocation(line: 56, column: 19, scope: !4916)
!4930 = !DILocation(line: 56, column: 22, scope: !4916)
!4931 = !DILocation(line: 57, column: 7, scope: !4916)
!4932 = !DILocation(line: 57, column: 14, scope: !4916)
!4933 = !DILocation(line: 0, scope: !4916)
!4934 = !DILocation(line: 58, column: 10, scope: !4916)
!4935 = !DILocation(line: 58, column: 3, scope: !4916)
!4936 = !DILocation(line: 59, column: 14, scope: !4916)
!4937 = !DILocation(line: 59, column: 21, scope: !4916)
!4938 = !DILocation(line: 60, column: 10, scope: !4916)
!4939 = !DILocation(line: 60, column: 3, scope: !4916)
!4940 = !DILocation(line: 62, column: 15, scope: !4916)
!4941 = !DILocation(line: 62, column: 26, scope: !4916)
!4942 = !DILocation(line: 62, column: 22, scope: !4916)
!4943 = !DILocation(line: 62, column: 3, scope: !4916)
!4944 = !DILocation(line: 63, column: 16, scope: !4916)
!4945 = !DILocation(line: 63, column: 45, scope: !4916)
!4946 = !DILocation(line: 63, column: 15, scope: !4916)
!4947 = !DILocation(line: 63, column: 3, scope: !4916)
!4948 = !DILocation(line: 64, column: 10, scope: !4916)
!4949 = !DILocation(line: 64, column: 32, scope: !4916)
!4950 = !DILocation(line: 64, column: 40, scope: !4916)
!4951 = !DILocation(line: 64, column: 9, scope: !4916)
!4952 = !DILocation(line: 65, column: 21, scope: !4916)
!4953 = !DILocation(line: 65, column: 28, scope: !4916)
!4954 = !DILocation(line: 65, column: 20, scope: !4916)
!4955 = !DILocation(line: 65, column: 54, scope: !4916)
!4956 = !DILocation(line: 65, column: 62, scope: !4916)
!4957 = !DILocation(line: 65, column: 9, scope: !4916)
!4958 = !DILocation(line: 66, column: 21, scope: !4916)
!4959 = !DILocation(line: 66, column: 31, scope: !4916)
!4960 = !DILocation(line: 66, column: 43, scope: !4916)
!4961 = !DILocation(line: 66, column: 45, scope: !4916)
!4962 = !DILocation(line: 66, column: 17, scope: !4916)
!4963 = !DILocation(line: 66, column: 3, scope: !4916)
!4964 = distinct !DISubprogram(name: "runtime.stringFromBytes", linkageName: "runtime.stringFromBytes", scope: !4278, file: !4278, line: 71, type: !4965, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4968)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!4967}
!4967 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !2150)
!4968 = !{!4969, !4970}
!4969 = !DILocalVariable(name: "x", arg: 1, scope: !4964, file: !4278, line: 71, type: !4967)
!4970 = !DILocalVariable(name: "buf", scope: !4964, file: !4278, line: 76, type: !90)
!4971 = !DILocation(line: 71, column: 6, scope: !4964)
!4972 = !DILocation(line: 71, column: 22, scope: !4964)
!4973 = !DILocation(line: 76, column: 17, scope: !4964)
!4974 = !DILocation(line: 76, column: 43, scope: !4964)
!4975 = !DILocation(line: 76, column: 14, scope: !4964)
!4976 = !DILocation(line: 76, column: 2, scope: !4964)
!4977 = !DILocation(line: 77, column: 9, scope: !4964)
!4978 = !DILocation(line: 77, column: 31, scope: !4964)
!4979 = !DILocation(line: 77, column: 39, scope: !4964)
!4980 = !DILocation(line: 77, column: 8, scope: !4964)
!4981 = !DILocation(line: 78, column: 20, scope: !4964)
!4982 = !DILocation(line: 78, column: 30, scope: !4964)
!4983 = !DILocation(line: 78, column: 42, scope: !4964)
!4984 = !DILocation(line: 78, column: 46, scope: !4964)
!4985 = !DILocation(line: 78, column: 16, scope: !4964)
!4986 = !DILocation(line: 78, column: 2, scope: !4964)
!4987 = distinct !DISubprogram(name: "main.f_gold", linkageName: "f_gold", scope: !4988, file: !4988, line: 6, type: !4989, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !4991)
!4988 = !DIFile(filename: "NUMBER_DIGITS_PRODUCT_TWO_NUMBERS_1_emit.go", directory: "/root/es/vert/vert/source_funs/go_transcoder/NUMBER_DIGITS_PRODUCT_TWO_NUMBERS_1")
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!1943, !1943}
!4991 = !{!4992, !4993}
!4992 = !DILocalVariable(name: "a", arg: 1, scope: !4987, file: !4988, line: 6, type: !1943)
!4993 = !DILocalVariable(name: "b", arg: 2, scope: !4987, file: !4988, line: 6, type: !1943)
!4994 = !DILocation(line: 6, column: 6, scope: !4987)
!4995 = !DILocation(line: 7, column: 5, scope: !4987)
!4996 = !DILocation(line: 7, column: 7, scope: !4987)
!4997 = !DILocation(line: 0, scope: !4987)
!4998 = !DILocation(line: 8, column: 3, scope: !4987)
!4999 = !DILocation(line: 7, column: 15, scope: !4987)
!5000 = !DILocation(line: 7, column: 17, scope: !4987)
!5001 = !DILocation(line: 10, column: 60, scope: !4987)
!5002 = !DILocation(line: 10, column: 59, scope: !4987)
!5003 = !DILocation(line: 10, column: 51, scope: !4987)
!5004 = !DILocation(line: 10, column: 34, scope: !4987)
!5005 = !DILocation(line: 10, column: 102, scope: !4987)
!5006 = !DILocation(line: 10, column: 101, scope: !4987)
!5007 = !DILocation(line: 10, column: 93, scope: !4987)
!5008 = !DILocation(line: 10, column: 76, scope: !4987)
!5009 = !DILocation(line: 10, column: 65, scope: !4987)
!5010 = !DILocation(line: 10, column: 23, scope: !4987)
!5011 = !DILocation(line: 10, column: 109, scope: !4987)
!5012 = !DILocation(line: 10, column: 12, scope: !4987)
!5013 = !DILocation(line: 10, column: 2, scope: !4987)
