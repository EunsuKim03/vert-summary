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

@"math$string.27" = internal unnamed_addr constant [15 x i8] c"not implemented", align 1, !dbg !0
@"math$pack.28" = internal unnamed_addr constant { %runtime._string } { %runtime._string { ptr @"math$string.27", i64 15 } }
@"math$string.33" = internal unnamed_addr constant [15 x i8] c"not implemented", align 1, !dbg !7
@"math$pack.34" = internal unnamed_addr constant { %runtime._string } { %runtime._string { ptr @"math$string.33", i64 15 } }
@"internal/itoa$string" = internal unnamed_addr constant [1 x i8] c"-", align 1, !dbg !9
@"internal/itoa$string.1" = internal unnamed_addr constant [1 x i8] c"0", align 1, !dbg !15
@"unicode/utf8.first" = internal global [256 x i8] c"\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\13\03\03\03\03\03\03\03\03\03\03\03\03#\03\034\04\04\04D\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1", align 1, !dbg !17
@"unicode/utf8.acceptRanges" = internal global [16 x %"unicode/utf8.acceptRange"] [%"unicode/utf8.acceptRange" { i8 -128, i8 -65 }, %"unicode/utf8.acceptRange" { i8 -96, i8 -65 }, %"unicode/utf8.acceptRange" { i8 -128, i8 -97 }, %"unicode/utf8.acceptRange" { i8 -112, i8 -65 }, %"unicode/utf8.acceptRange" { i8 -128, i8 -113 }, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer], align 1, !dbg !23
@"internal/reflectlite$string" = internal unnamed_addr constant [4 x i8] c"Elem", align 1, !dbg !33
@"internal/reflectlite.errTypeElem" = internal global ptr @"internal/reflectlite$alloc", align 8, !dbg !39
@"internal/reflectlite$string.1" = internal unnamed_addr constant [3 x i8] c"Key", align 1, !dbg !52
@"internal/reflectlite.errTypeKey" = internal global ptr @"internal/reflectlite$alloc.107", align 8, !dbg !57
@"internal/reflectlite$string.2" = internal unnamed_addr constant [5 x i8] c"Field", align 1, !dbg !59
@"internal/reflectlite.errTypeField" = internal global ptr @"internal/reflectlite$alloc.108", align 8, !dbg !64
@"internal/reflectlite$string.4" = internal unnamed_addr constant [3 x i8] c"Len", align 1, !dbg !66
@"internal/reflectlite.errTypeLen" = internal global ptr @"internal/reflectlite$alloc.110", align 8, !dbg !68
@"internal/reflectlite$string.5" = internal unnamed_addr constant [8 x i8] c"NumField", align 1, !dbg !70
@"internal/reflectlite.errTypeNumField" = internal global ptr @"internal/reflectlite$alloc.111", align 8, !dbg !75
@"internal/reflectlite$string.6" = internal unnamed_addr constant [7 x i8] c"ChanDir", align 1, !dbg !77
@"internal/reflectlite.errTypeChanDir" = internal global ptr @"internal/reflectlite$alloc.112", align 8, !dbg !82
@"reflect/types.type:basic:uint8" = internal constant { i8, ptr } { i8 -56, ptr @"reflect/types.type:pointer:basic:uint8" }, align 8, !dbg !84
@"reflect/types.type:pointer:basic:uint8" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:basic:uint8" }, align 8, !dbg !93
@"reflect/types.type.pkgpath:internal/reflectlite" = internal unnamed_addr constant [21 x i8] c"internal/reflectlite\00", align 1
@"reflect/types.type:struct:{meta:basic:uint8}" = internal constant { i8, i16, ptr, ptr, i32, i16, [1 x { ptr, ptr }] } { i8 -38, i16 0, ptr @"reflect/types.type:pointer:struct:{meta:basic:uint8}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", i32 1, i16 1, [1 x { ptr, ptr }] [{ ptr, ptr } { ptr @"reflect/types.type:basic:uint8", ptr @"reflect/types.type:struct:{meta:basic:uint8}.meta" }] }, align 8, !dbg !100
@"reflect/types.type:pointer:struct:{meta:basic:uint8}" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:struct:{meta:basic:uint8}" }, align 8, !dbg !115
@"reflect/types.type:struct:{meta:basic:uint8}.meta" = internal unnamed_addr constant [7 x i8] c"\00\00meta\00", align 1
@"internal/reflectlite$string.17" = internal unnamed_addr constant [14 x i8] c"invalid syntax", align 1, !dbg !117
@"reflect/types.type:struct:{}" = internal constant { i8, i16, ptr, ptr, i32, i16, [0 x { ptr, ptr }] } { i8 -38, i16 0, ptr @"reflect/types.type:pointer:struct:{}", ptr @"reflect/types.type.pkgpath.empty", i32 0, i16 0, [0 x { ptr, ptr }] zeroinitializer }, align 8, !dbg !123
@"reflect/types.type.pkgpath.empty" = internal unnamed_addr constant [1 x i8] zeroinitializer, align 1
@"reflect/types.type:pointer:struct:{}" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:struct:{}" }, align 8, !dbg !131
@"internal/reflectlite$string.20" = internal unnamed_addr constant [2 x i8] c"\\x", align 1, !dbg !133
@"internal/reflectlite$string.21" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !138
@"internal/reflectlite$string.22" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !140
@"internal/reflectlite$string.23" = internal unnamed_addr constant [2 x i8] c"\\a", align 1, !dbg !142
@"internal/reflectlite$string.24" = internal unnamed_addr constant [2 x i8] c"\\b", align 1, !dbg !144
@"internal/reflectlite$string.25" = internal unnamed_addr constant [2 x i8] c"\\f", align 1, !dbg !146
@"internal/reflectlite$string.26" = internal unnamed_addr constant [2 x i8] c"\\n", align 1, !dbg !148
@"internal/reflectlite$string.27" = internal unnamed_addr constant [2 x i8] c"\\r", align 1, !dbg !150
@"internal/reflectlite$string.28" = internal unnamed_addr constant [2 x i8] c"\\t", align 1, !dbg !152
@"internal/reflectlite$string.29" = internal unnamed_addr constant [2 x i8] c"\\v", align 1, !dbg !154
@"internal/reflectlite$string.30" = internal unnamed_addr constant [2 x i8] c"\\x", align 1, !dbg !156
@"internal/reflectlite$string.31" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !158
@"internal/reflectlite$string.32" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !160
@"internal/reflectlite$string.33" = internal unnamed_addr constant [2 x i8] c"\\u", align 1, !dbg !162
@"internal/reflectlite$string.34" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !164
@"internal/reflectlite$string.35" = internal unnamed_addr constant [2 x i8] c"\\U", align 1, !dbg !166
@"internal/reflectlite$string.36" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !168
@"reflect/types.type:named:internal/reflectlite.ValueError" = internal constant { i8, i16, ptr, ptr, ptr, [23 x i8] } { i8 122, i16 0, ptr @"reflect/types.type:pointer:named:internal/reflectlite.ValueError", ptr @"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", [23 x i8] c"reflectlite.ValueError\00" }, align 8, !dbg !170
@"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}" = internal constant { i8, i16, ptr, ptr, i32, i16, [2 x { ptr, ptr }] } { i8 90, i16 0, ptr @"reflect/types.type:pointer:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", i32 24, i16 2, [2 x { ptr, ptr }] [{ ptr, ptr } { ptr @"reflect/types.type:basic:string", ptr @"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}.Method" }, { ptr, ptr } { ptr @"reflect/types.type:named:internal/reflectlite.Kind", ptr @"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}.Kind" }] }, align 8, !dbg !180
@"reflect/types.type:pointer:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}" }, align 8, !dbg !186
@"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}.Method" = internal unnamed_addr constant [9 x i8] c"\04\00Method\00", align 1
@"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}.Kind" = internal unnamed_addr constant [7 x i8] c"\04\10Kind\00", align 1
@"internal/reflectlite$string.41" = internal unnamed_addr constant [7 x i8] c"invalid", align 1, !dbg !188
@"internal/reflectlite$string.42" = internal unnamed_addr constant [4 x i8] c"bool", align 1, !dbg !190
@"internal/reflectlite$string.43" = internal unnamed_addr constant [3 x i8] c"int", align 1, !dbg !192
@"internal/reflectlite$string.44" = internal unnamed_addr constant [4 x i8] c"int8", align 1, !dbg !194
@"internal/reflectlite$string.45" = internal unnamed_addr constant [5 x i8] c"int16", align 1, !dbg !196
@"internal/reflectlite$string.46" = internal unnamed_addr constant [5 x i8] c"int32", align 1, !dbg !198
@"internal/reflectlite$string.47" = internal unnamed_addr constant [5 x i8] c"int64", align 1, !dbg !200
@"internal/reflectlite$string.48" = internal unnamed_addr constant [4 x i8] c"uint", align 1, !dbg !202
@"internal/reflectlite$string.49" = internal unnamed_addr constant [5 x i8] c"uint8", align 1, !dbg !204
@"internal/reflectlite$string.50" = internal unnamed_addr constant [6 x i8] c"uint16", align 1, !dbg !206
@"internal/reflectlite$string.51" = internal unnamed_addr constant [6 x i8] c"uint32", align 1, !dbg !211
@"internal/reflectlite$string.52" = internal unnamed_addr constant [6 x i8] c"uint64", align 1, !dbg !213
@"internal/reflectlite$string.53" = internal unnamed_addr constant [7 x i8] c"uintptr", align 1, !dbg !215
@"internal/reflectlite$string.54" = internal unnamed_addr constant [7 x i8] c"float32", align 1, !dbg !217
@"internal/reflectlite$string.55" = internal unnamed_addr constant [7 x i8] c"float64", align 1, !dbg !219
@"internal/reflectlite$string.56" = internal unnamed_addr constant [9 x i8] c"complex64", align 1, !dbg !221
@"internal/reflectlite$string.57" = internal unnamed_addr constant [10 x i8] c"complex128", align 1, !dbg !226
@"internal/reflectlite$string.58" = internal unnamed_addr constant [6 x i8] c"string", align 1, !dbg !231
@"internal/reflectlite$string.59" = internal unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1, !dbg !233
@"internal/reflectlite$string.60" = internal unnamed_addr constant [4 x i8] c"chan", align 1, !dbg !235
@"internal/reflectlite$string.61" = internal unnamed_addr constant [9 x i8] c"interface", align 1, !dbg !237
@"internal/reflectlite$string.62" = internal unnamed_addr constant [3 x i8] c"ptr", align 1, !dbg !239
@"internal/reflectlite$string.63" = internal unnamed_addr constant [5 x i8] c"slice", align 1, !dbg !241
@"internal/reflectlite$string.64" = internal unnamed_addr constant [5 x i8] c"array", align 1, !dbg !243
@"internal/reflectlite$string.65" = internal unnamed_addr constant [4 x i8] c"func", align 1, !dbg !245
@"internal/reflectlite$string.66" = internal unnamed_addr constant [3 x i8] c"map", align 1, !dbg !247
@"internal/reflectlite$string.67" = internal unnamed_addr constant [6 x i8] c"struct", align 1, !dbg !249
@"internal/reflectlite$string.68" = internal unnamed_addr constant [4 x i8] c"kind", align 1, !dbg !251
@"reflect/types.type:named:internal/reflectlite.TypeError" = internal constant { i8, i16, ptr, ptr, ptr, [22 x i8] } { i8 122, i16 0, ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr @"reflect/types.type:struct:{Method:basic:string}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", [22 x i8] c"reflectlite.TypeError\00" }, align 8, !dbg !253
@"reflect/types.type:struct:{Method:basic:string}" = internal constant { i8, i16, ptr, ptr, i32, i16, [1 x { ptr, ptr }] } { i8 90, i16 0, ptr @"reflect/types.type:pointer:struct:{Method:basic:string}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", i32 16, i16 1, [1 x { ptr, ptr }] [{ ptr, ptr } { ptr @"reflect/types.type:basic:string", ptr @"reflect/types.type:struct:{Method:basic:string}.Method" }] }, align 8, !dbg !261
@"reflect/types.type:pointer:struct:{Method:basic:string}" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:struct:{Method:basic:string}" }, align 8, !dbg !263
@"reflect/types.type:struct:{Method:basic:string}.Method" = internal unnamed_addr constant [9 x i8] c"\04\00Method\00", align 1
@"internal/reflectlite$string.87" = internal unnamed_addr constant [7 x i8] c"chan<- ", align 1, !dbg !265
@"internal/reflectlite$string.88" = internal unnamed_addr constant [7 x i8] c"<-chan ", align 1, !dbg !267
@"internal/reflectlite$string.89" = internal unnamed_addr constant [6 x i8] c"chan (", align 1, !dbg !269
@"internal/reflectlite$string.90" = internal unnamed_addr constant [1 x i8] c")", align 1, !dbg !271
@"internal/reflectlite$string.91" = internal unnamed_addr constant [5 x i8] c"chan ", align 1, !dbg !273
@"internal/reflectlite$string.92" = internal unnamed_addr constant [1 x i8] c"*", align 1, !dbg !275
@"internal/reflectlite$string.93" = internal unnamed_addr constant [2 x i8] c"[]", align 1, !dbg !277
@"internal/reflectlite$string.94" = internal unnamed_addr constant [1 x i8] c"[", align 1, !dbg !279
@"internal/reflectlite$string.95" = internal unnamed_addr constant [1 x i8] c"]", align 1, !dbg !281
@"internal/reflectlite$string.96" = internal unnamed_addr constant [4 x i8] c"map[", align 1, !dbg !283
@"internal/reflectlite$string.97" = internal unnamed_addr constant [1 x i8] c"]", align 1, !dbg !285
@"internal/reflectlite$string.98" = internal unnamed_addr constant [9 x i8] c"struct {}", align 1, !dbg !287
@"internal/reflectlite$string.100" = internal unnamed_addr constant [1 x i8] c" ", align 1, !dbg !289
@"internal/reflectlite$string.101" = internal unnamed_addr constant [1 x i8] c" ", align 1, !dbg !291
@"internal/reflectlite$string.102" = internal unnamed_addr constant [1 x i8] c" ", align 1, !dbg !293
@"internal/reflectlite$string.103" = internal unnamed_addr constant [1 x i8] c";", align 1, !dbg !295
@"internal/reflectlite$string.104" = internal unnamed_addr constant [2 x i8] c" }", align 1, !dbg !297
@"internal/reflectlite$string.105" = internal unnamed_addr constant [12 x i8] c"interface {}", align 1, !dbg !299
@"internal/reflectlite$string.106" = internal unnamed_addr constant [8 x i8] c"struct {", align 1, !dbg !304
@"internal/reflectlite$string.107" = internal unnamed_addr constant [33 x i8] c"reflect: field index out of range", align 1, !dbg !306
@"internal/reflectlite$pack.108" = internal unnamed_addr constant { %runtime._string } { %runtime._string { ptr @"internal/reflectlite$string.107", i64 33 } }
@"internal/reflectlite$string.111" = internal unnamed_addr constant [30 x i8] c"reflect: call of reflect.Type.", align 1, !dbg !311
@"internal/reflectlite$string.112" = internal unnamed_addr constant [16 x i8] c" on invalid type", align 1, !dbg !316
@"internal/reflectlite$string.229" = internal unnamed_addr constant [17 x i8] c"reflect: call of ", align 1, !dbg !319
@"internal/reflectlite$string.230" = internal unnamed_addr constant [14 x i8] c" on zero Value", align 1, !dbg !325
@"internal/reflectlite$string.231" = internal unnamed_addr constant [17 x i8] c"reflect: call of ", align 1, !dbg !327
@"internal/reflectlite$string.232" = internal unnamed_addr constant [4 x i8] c" on ", align 1, !dbg !329
@"internal/reflectlite$string.233" = internal unnamed_addr constant [6 x i8] c" Value", align 1, !dbg !331
@"internal/task.activeTasks" = internal global ptr @"internal/task.mainTask", align 8, !dbg !333
@"internal/task.mainTask" = internal global %"internal/task.Task" zeroinitializer, align 8, !dbg !379
@"internal/task$string" = internal unnamed_addr constant [30 x i8] c"sync: unlock of unlocked Mutex", align 1, !dbg !381
@"internal/task$pack" = internal unnamed_addr constant { %runtime._string } { %runtime._string { ptr @"internal/task$string", i64 30 } }
@"internal/task.numCPU" = internal global i32 0, align 4, !dbg !384
@"internal/task.activeTaskLock" = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !387
@"internal/task$string.7" = internal unnamed_addr constant [20 x i8] c"unknown current task", align 1, !dbg !391
@"internal/task$string.8" = internal unnamed_addr constant [12 x i8] c"*** pause:  ", align 1, !dbg !396
@"internal/task.otherGoroutines" = internal global i32 0, align 4, !dbg !398
@"internal/task$string.12" = internal unnamed_addr constant [9 x i8] c"*** exit:", align 1, !dbg !400
@"internal/task$string.13" = internal unnamed_addr constant [17 x i8] c"taskExited failed", align 1, !dbg !402
@"internal/task.scanWaitGroup" = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !404
@"internal/task.gcState" = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !410
@runtime.xorshift32State = internal global i32 1, align 4, !dbg !412
@runtime.xorshift64State = internal global i64 1, align 8, !dbg !415
@runtime.heapSize = internal global i64 131072, align 8, !dbg !417
@"reflect/types.type:basic:string" = internal constant { i8, ptr } { i8 81, ptr @"reflect/types.type:pointer:basic:string" }, align 8, !dbg !420
@"reflect/types.type:pointer:basic:string" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:basic:string" }, align 8, !dbg !422
@runtime.zeroSizedAlloc = internal global i8 0, align 1, !dbg !424
@runtime.gcLock = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !427
@"runtime$string.7" = internal unnamed_addr constant [17 x i8] c"gc: out of memory", align 1, !dbg !429
@__ehdr_start = external global %runtime.elfHeader, align 8
@"runtime$string.12" = internal unnamed_addr constant [7 x i8] c"panic: ", align 1, !dbg !431
@"runtime$string.13" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !434
@"runtime$string.14" = internal unnamed_addr constant [2 x i8] c": ", align 1, !dbg !439
@"runtime$string.15" = internal unnamed_addr constant [22 x i8] c"panic: runtime error: ", align 1, !dbg !441
@"runtime$string.17" = internal unnamed_addr constant [23 x i8] c"nil pointer dereference", align 1, !dbg !444
@"runtime$string.19" = internal unnamed_addr constant [18 x i8] c"index out of range", align 1, !dbg !447
@"runtime$string.20" = internal unnamed_addr constant [18 x i8] c"slice out of range", align 1, !dbg !452
@"runtime$string.22" = internal unnamed_addr constant [37 x i8] c"unsafe.Slice/String: len out of range", align 1, !dbg !454
@"runtime$string.24" = internal unnamed_addr constant [14 x i8] c"negative shift", align 1, !dbg !459
@"runtime$string.35" = internal unnamed_addr constant [3 x i8] c"NaN", align 1, !dbg !461
@"runtime$string.36" = internal unnamed_addr constant [4 x i8] c"+Inf", align 1, !dbg !464
@"runtime$string.37" = internal unnamed_addr constant [4 x i8] c"-Inf", align 1, !dbg !466
@"runtime$string.38" = internal unnamed_addr constant [3 x i8] c"NaN", align 1, !dbg !468
@"runtime$string.39" = internal unnamed_addr constant [4 x i8] c"+Inf", align 1, !dbg !470
@"runtime$string.40" = internal unnamed_addr constant [4 x i8] c"-Inf", align 1, !dbg !472
@"runtime$string.41" = internal unnamed_addr constant [2 x i8] c"i)", align 1, !dbg !474
@"runtime$string.42" = internal unnamed_addr constant [2 x i8] c"i)", align 1, !dbg !476
@"runtime$string.45" = internal unnamed_addr constant [3 x i8] c"nil", align 1, !dbg !478
@"runtime$string.46" = internal unnamed_addr constant [4 x i8] c"true", align 1, !dbg !480
@"runtime$string.47" = internal unnamed_addr constant [5 x i8] c"false", align 1, !dbg !482
@runtime.stackTop = internal global i64 0, align 8, !dbg !484
@runtime.main_argc = internal global i32 0, align 4, !dbg !486
@runtime.main_argv = internal global ptr null, align 8, !dbg !488
@"runtime$string.50" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !491
@"runtime$string.51" = internal unnamed_addr constant [16 x i8] c": caught signal ", align 1, !dbg !493
@"runtime$string.52" = internal unnamed_addr constant [6 x i8] c"SIGBUS", align 1, !dbg !495
@"runtime$string.53" = internal unnamed_addr constant [6 x i8] c"SIGILL", align 1, !dbg !497
@"runtime$string.54" = internal unnamed_addr constant [7 x i8] c"SIGSEGV", align 1, !dbg !499
@"runtime$string.55" = internal unnamed_addr constant [20 x i8] c"panic: runtime error", align 1, !dbg !501
@runtime.signalFutex = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !503
@runtime.heapMaxSize = internal global i64 0, align 8, !dbg !505
@runtime.heapStart = internal global i64 0, align 8, !dbg !507
@runtime.heapEnd = internal global i64 0, align 8, !dbg !509
@"runtime$string.56" = internal unnamed_addr constant [27 x i8] c"cannot allocate heap memory", align 1, !dbg !511
@runtime.receivedSignals = internal global %"sync/atomic.Bool" zeroinitializer, align 4, !dbg !516
@runtime.printLock = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !518
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
define internal double @math.Abs(double %x, ptr %context) unnamed_addr #1 !dbg !1742 {
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

; Function Attrs: nounwind uwtable(sync)
define internal i1 @math.IsNaN(double %f, ptr %context) unnamed_addr #1 !dbg !1776 {
entry:
    #dbg_value(double %f, !1779, !DIExpression(), !1780)
    #dbg_value(double %f, !1779, !DIExpression(), !1781)
    #dbg_value(double %f, !1779, !DIExpression(), !1782)
  %0 = fcmp une double %f, %f, !dbg !1783
  ret i1 %0, !dbg !1784
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @math.IsInf(double %f, i64 %sign, ptr %context) unnamed_addr #1 !dbg !1785 {
entry:
    #dbg_value(double %f, !1790, !DIExpression(), !1792)
    #dbg_value(i64 %sign, !1791, !DIExpression(), !1792)
    #dbg_value(i64 %sign, !1791, !DIExpression(), !1793)
  %0 = icmp eq i64 %sign, 0, !dbg !1794
  br i1 %0, label %if.then, label %if.else, !dbg !1795

if.then:                                          ; preds = %entry
    #dbg_value(double %f, !1790, !DIExpression(), !1796)
  %1 = call double @math.Abs(double %f, ptr undef), !dbg !1797
    #dbg_value(double %1, !1790, !DIExpression(), !1798)
  br label %if.done, !dbg !1795

if.done:                                          ; preds = %if.then1, %if.else, %if.then
  %2 = phi double [ %1, %if.then ], [ %f, %if.else ], [ %5, %if.then1 ], !dbg !1799
    #dbg_value(double %2, !1790, !DIExpression(), !1800)
  %3 = fcmp ogt double %2, 0x7FEFFFFFFFFFFFFF, !dbg !1801
  ret i1 %3, !dbg !1802

if.else:                                          ; preds = %entry
    #dbg_value(i64 %sign, !1791, !DIExpression(), !1803)
  %4 = icmp slt i64 %sign, 0, !dbg !1804
  br i1 %4, label %if.then1, label %if.done, !dbg !1795

if.then1:                                         ; preds = %if.else
    #dbg_value(double %f, !1790, !DIExpression(), !1805)
  %5 = fneg double %f, !dbg !1806
    #dbg_value(double %5, !1790, !DIExpression(), !1807)
  br label %if.done, !dbg !1795
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #0

; Function Attrs: nounwind uwtable(sync)
define internal { double, i64 } @math.normalize(double %x, ptr %context) unnamed_addr #1 !dbg !1808 {
entry:
    #dbg_value(double %x, !1810, !DIExpression(), !1811)
    #dbg_value(double %x, !1810, !DIExpression(), !1812)
  %0 = call double @math.Abs(double %x, ptr undef), !dbg !1813
  %1 = fcmp olt double %0, 0x10000000000000, !dbg !1814
  br i1 %1, label %if.then, label %if.done, !dbg !1815

if.then:                                          ; preds = %entry
    #dbg_value(double %x, !1810, !DIExpression(), !1816)
  %2 = fmul double %x, 0x4330000000000000, !dbg !1817
  %3 = insertvalue { double, i64 } zeroinitializer, double %2, 0, !dbg !1818
  %4 = insertvalue { double, i64 } %3, i64 -52, 1, !dbg !1818
  ret { double, i64 } %4, !dbg !1818

if.done:                                          ; preds = %entry
    #dbg_value(double %x, !1810, !DIExpression(), !1819)
  %5 = insertvalue { double, i64 } zeroinitializer, double %x, 0, !dbg !1820
  %6 = insertvalue { double, i64 } %5, i64 0, 1, !dbg !1820
  ret { double, i64 } %6, !dbg !1820
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Ceil(double %x, ptr %context) #1 !dbg !1821 {
entry:
    #dbg_value(double %x, !1824, !DIExpression(), !1825)
  %0 = call double @llvm.ceil.f64(double %x), !dbg !1825
  ret double %0, !dbg !1825
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #0

; Function Attrs: nounwind uwtable(sync)
define internal { double, i64 } @math.Frexp(double %f, ptr %context) unnamed_addr #1 !dbg !1826 {
entry:
    #dbg_value(double %f, !1829, !DIExpression(), !1830)
  br i1 false, label %if.then, label %if.done, !dbg !1831

if.then:                                          ; preds = %entry
    #dbg_value(double %f, !1829, !DIExpression(), !1832)
  %0 = call { double, i64 } @math.archFrexp(double %f, ptr undef), !dbg !1833
  %1 = extractvalue { double, i64 } %0, 0, !dbg !1833
  %2 = extractvalue { double, i64 } %0, 1, !dbg !1833
  %3 = insertvalue { double, i64 } zeroinitializer, double %1, 0, !dbg !1834
  %4 = insertvalue { double, i64 } %3, i64 %2, 1, !dbg !1834
  ret { double, i64 } %4, !dbg !1834

if.done:                                          ; preds = %entry
    #dbg_value(double %f, !1829, !DIExpression(), !1835)
  %5 = call { double, i64 } @math.frexp(double %f, ptr undef), !dbg !1836
  %6 = extractvalue { double, i64 } %5, 0, !dbg !1836
  %7 = extractvalue { double, i64 } %5, 1, !dbg !1836
  %8 = insertvalue { double, i64 } zeroinitializer, double %6, 0, !dbg !1837
  %9 = insertvalue { double, i64 } %8, i64 %7, 1, !dbg !1837
  ret { double, i64 } %9, !dbg !1837
}

; Function Attrs: nounwind uwtable(sync)
define internal { double, i64 } @math.archFrexp(double %x, ptr %context) unnamed_addr #1 !dbg !1838 {
entry:
    #dbg_value(double %x, !1840, !DIExpression(), !1841)
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"math$pack.28", ptr undef), !dbg !1842
  unreachable, !dbg !1842
}

; Function Attrs: nounwind uwtable(sync)
define internal { double, i64 } @math.frexp(double %f, ptr %context) unnamed_addr #1 !dbg !1843 {
entry:
    #dbg_value(double %f, !1845, !DIExpression(), !1849)
    #dbg_value(double %f, !1845, !DIExpression(), !1850)
  %0 = fcmp oeq double %f, 0.000000e+00, !dbg !1851
  br i1 %0, label %switch.body, label %switch.next, !dbg !1852

switch.body:                                      ; preds = %entry
    #dbg_value(double %f, !1845, !DIExpression(), !1853)
  %1 = insertvalue { double, i64 } zeroinitializer, double %f, 0, !dbg !1854
  %2 = insertvalue { double, i64 } %1, i64 0, 1, !dbg !1854
  ret { double, i64 } %2, !dbg !1854

switch.next:                                      ; preds = %entry
    #dbg_value(double %f, !1845, !DIExpression(), !1855)
  %3 = call i1 @math.IsInf(double %f, i64 0, ptr undef), !dbg !1856
  br i1 %3, label %binop.done, label %binop.rhs, !dbg !1852

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ true, %switch.next ], [ %21, %binop.rhs ], !dbg !1857
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !1852

switch.body1:                                     ; preds = %binop.done
    #dbg_value(double %f, !1845, !DIExpression(), !1858)
  %5 = insertvalue { double, i64 } zeroinitializer, double %f, 0, !dbg !1859
  %6 = insertvalue { double, i64 } %5, i64 0, 1, !dbg !1859
  ret { double, i64 } %6, !dbg !1859

switch.next2:                                     ; preds = %binop.done
    #dbg_value(double %f, !1845, !DIExpression(), !1860)
  %7 = call { double, i64 } @math.normalize(double %f, ptr undef), !dbg !1861
  %8 = extractvalue { double, i64 } %7, 0, !dbg !1861
    #dbg_value(double %8, !1845, !DIExpression(), !1862)
  %9 = extractvalue { double, i64 } %7, 1, !dbg !1861
    #dbg_value(i64 %9, !1846, !DIExpression(), !1863)
    #dbg_value(double %8, !1845, !DIExpression(), !1864)
  %10 = call i64 @math.Float64bits(double %8, ptr undef), !dbg !1865
    #dbg_value(i64 %10, !1847, !DIExpression(), !1866)
    #dbg_value(i64 %10, !1847, !DIExpression(), !1867)
  %11 = lshr i64 %10, 52, !dbg !1868
  %shift.result = select i1 false, i64 0, i64 %11, !dbg !1868
  %12 = and i64 %shift.result, 2047, !dbg !1869
  %13 = sub i64 %12, 1023, !dbg !1870
  %14 = add i64 %13, 1, !dbg !1871
  %15 = add i64 %9, %14, !dbg !1872
    #dbg_value(i64 %15, !1846, !DIExpression(), !1872)
  %16 = and i64 %10, -9218868437227405313, !dbg !1873
    #dbg_value(i64 %16, !1847, !DIExpression(), !1873)
  %17 = or i64 %16, 4602678819172646912, !dbg !1874
    #dbg_value(i64 %17, !1847, !DIExpression(), !1874)
    #dbg_value(i64 %17, !1847, !DIExpression(), !1875)
  %18 = call double @math.Float64frombits(i64 %17, ptr undef), !dbg !1876
    #dbg_value(double %18, !1848, !DIExpression(), !1877)
  %19 = insertvalue { double, i64 } zeroinitializer, double %18, 0, !dbg !1878
  %20 = insertvalue { double, i64 } %19, i64 %15, 1, !dbg !1878
  ret { double, i64 } %20, !dbg !1878

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(double %f, !1845, !DIExpression(), !1879)
  %21 = call i1 @math.IsNaN(double %f, ptr undef), !dbg !1880
  br label %binop.done, !dbg !1852
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Log2(double %x, ptr %context) #1 !dbg !1881 {
entry:
    #dbg_value(double %x, !1884, !DIExpression(), !1885)
  br i1 false, label %if.then, label %if.done, !dbg !1886

if.then:                                          ; preds = %entry
    #dbg_value(double %x, !1884, !DIExpression(), !1887)
  %0 = call double @math.archLog2(double %x, ptr undef), !dbg !1888
  ret double %0, !dbg !1889

if.done:                                          ; preds = %entry
    #dbg_value(double %x, !1884, !DIExpression(), !1890)
  %1 = call double @math.log2(double %x, ptr undef), !dbg !1891
  ret double %1, !dbg !1892
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.archLog2(double %x, ptr %context) unnamed_addr #1 !dbg !1893 {
entry:
    #dbg_value(double %x, !1895, !DIExpression(), !1896)
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"math$pack.34", ptr undef), !dbg !1897
  unreachable, !dbg !1897
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.log2(double %x, ptr %context) unnamed_addr #1 !dbg !1898 {
entry:
    #dbg_value(double %x, !1900, !DIExpression(), !1903)
    #dbg_value(double %x, !1900, !DIExpression(), !1904)
  %0 = call { double, i64 } @math.Frexp(double %x, ptr undef), !dbg !1905
  %1 = extractvalue { double, i64 } %0, 0, !dbg !1905
    #dbg_value(double %1, !1901, !DIExpression(), !1906)
  %2 = extractvalue { double, i64 } %0, 1, !dbg !1905
    #dbg_value(i64 %2, !1902, !DIExpression(), !1907)
    #dbg_value(double %1, !1901, !DIExpression(), !1908)
  %3 = fcmp oeq double %1, 5.000000e-01, !dbg !1909
  br i1 %3, label %if.then, label %if.done, !dbg !1910

if.then:                                          ; preds = %entry
    #dbg_value(i64 %2, !1902, !DIExpression(), !1911)
  %4 = sub i64 %2, 1, !dbg !1912
  %5 = sitofp i64 %4 to double, !dbg !1913
  ret double %5, !dbg !1914

if.done:                                          ; preds = %entry
    #dbg_value(double %1, !1901, !DIExpression(), !1915)
  %6 = call double @math.Log(double %1, ptr undef), !dbg !1916
  %7 = fmul double %6, 0x3FF71547652B82FE, !dbg !1917
    #dbg_value(i64 %2, !1902, !DIExpression(), !1918)
  %8 = sitofp i64 %2 to double, !dbg !1919
  %9 = fadd double %7, %8, !dbg !1920
  ret double %9, !dbg !1921
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.SwapUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %new, ptr %context) unnamed_addr #1 !dbg !1922 {
entry:
    #dbg_value(ptr %addr, !1928, !DIExpression(), !1930)
    #dbg_value(i32 %new, !1929, !DIExpression(), !1930)
  %0 = atomicrmw xchg ptr %addr, i32 %new syncscope("singlethread") seq_cst, align 4, !dbg !1930
  ret i32 %0, !dbg !1930
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"sync/atomic.CompareAndSwapUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %old, i32 %new, ptr %context) unnamed_addr #1 !dbg !1931 {
entry:
    #dbg_value(ptr %addr, !1935, !DIExpression(), !1938)
    #dbg_value(i32 %old, !1936, !DIExpression(), !1938)
    #dbg_value(i32 %new, !1937, !DIExpression(), !1938)
  %0 = cmpxchg ptr %addr, i32 %old, i32 %new syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !1938
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !1938
  ret i1 %1, !dbg !1938
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.AddUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %delta, ptr %context) unnamed_addr #1 !dbg !1939 {
entry:
    #dbg_value(ptr %addr, !1941, !DIExpression(), !1943)
    #dbg_value(i32 %delta, !1942, !DIExpression(), !1943)
  %0 = atomicrmw add ptr %addr, i32 %delta syncscope("singlethread") seq_cst, align 4, !dbg !1943
  %1 = add i32 %0, %delta, !dbg !1943
  ret i32 %1, !dbg !1943
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.LoadUint32"(ptr nocapture dereferenceable_or_null(4) %addr, ptr %context) unnamed_addr #1 !dbg !1944 {
entry:
    #dbg_value(ptr %addr, !1948, !DIExpression(), !1949)
  %0 = load atomic i32, ptr %addr seq_cst, align 4, !dbg !1949
  ret i32 %0, !dbg !1949
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"sync/atomic.StoreUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %val, ptr %context) unnamed_addr #1 !dbg !1950 {
entry:
    #dbg_value(ptr %addr, !1952, !DIExpression(), !1954)
    #dbg_value(i32 %val, !1953, !DIExpression(), !1954)
  store atomic i32 %val, ptr %addr seq_cst, align 4, !dbg !1954
  ret void, !dbg !1954
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Add"(ptr dereferenceable_or_null(4) %x, i32 %delta, ptr %context) #1 !dbg !1955 {
entry:
    #dbg_value(ptr %x, !1961, !DIExpression(), !1963)
    #dbg_value(i32 %delta, !1962, !DIExpression(), !1963)
    #dbg_value(ptr %x, !1961, !DIExpression(), !1964)
  %0 = icmp eq ptr %x, null, !dbg !1965
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1965

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1965
    #dbg_value(i32 %delta, !1962, !DIExpression(), !1966)
  %2 = call i32 @"sync/atomic.AddUint32"(ptr %1, i32 %delta, ptr undef), !dbg !1967
  ret i32 %2, !dbg !1968

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1965
  unreachable, !dbg !1965
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr dereferenceable_or_null(4) %x, i32 %old, i32 %new, ptr %context) #1 !dbg !1969 {
entry:
    #dbg_value(ptr %x, !1973, !DIExpression(), !1976)
    #dbg_value(i32 %old, !1974, !DIExpression(), !1976)
    #dbg_value(i32 %new, !1975, !DIExpression(), !1976)
    #dbg_value(ptr %x, !1973, !DIExpression(), !1977)
  %0 = icmp eq ptr %x, null, !dbg !1978
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1978

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1978
    #dbg_value(i32 %old, !1974, !DIExpression(), !1979)
    #dbg_value(i32 %new, !1975, !DIExpression(), !1980)
  %2 = call i1 @"sync/atomic.CompareAndSwapUint32"(ptr %1, i32 %old, i32 %new, ptr undef), !dbg !1981
  ret i1 %2, !dbg !1982

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1978
  unreachable, !dbg !1978
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Load"(ptr dereferenceable_or_null(4) %x, ptr %context) #1 !dbg !1983 {
entry:
    #dbg_value(ptr %x, !1987, !DIExpression(), !1988)
    #dbg_value(ptr %x, !1987, !DIExpression(), !1989)
  %0 = icmp eq ptr %x, null, !dbg !1990
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1990

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1990
  %2 = call i32 @"sync/atomic.LoadUint32"(ptr %1, ptr undef), !dbg !1991
  ret i32 %2, !dbg !1992

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1990
  unreachable, !dbg !1990
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*sync/atomic.Uint32).Store"(ptr dereferenceable_or_null(4) %x, i32 %val, ptr %context) #1 !dbg !1993 {
entry:
    #dbg_value(ptr %x, !1995, !DIExpression(), !1997)
    #dbg_value(i32 %val, !1996, !DIExpression(), !1997)
    #dbg_value(ptr %x, !1995, !DIExpression(), !1998)
  %0 = icmp eq ptr %x, null, !dbg !1999
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1999

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1999
    #dbg_value(i32 %val, !1996, !DIExpression(), !2000)
  call void @"sync/atomic.StoreUint32"(ptr %1, i32 %val, ptr undef), !dbg !2001
  ret void, !dbg !2002

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1999
  unreachable, !dbg !1999
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Swap"(ptr dereferenceable_or_null(4) %x, i32 %new, ptr %context) #1 !dbg !2003 {
entry:
    #dbg_value(ptr %x, !2005, !DIExpression(), !2007)
    #dbg_value(i32 %new, !2006, !DIExpression(), !2007)
    #dbg_value(ptr %x, !2005, !DIExpression(), !2008)
  %0 = icmp eq ptr %x, null, !dbg !2009
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2009

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !2009
    #dbg_value(i32 %new, !2006, !DIExpression(), !2010)
  %2 = call i32 @"sync/atomic.SwapUint32"(ptr %1, i32 %new, ptr undef), !dbg !2011
  ret i32 %2, !dbg !2012

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2009
  unreachable, !dbg !2009
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*internal/futex.Futex).Wait"(ptr dereferenceable_or_null(4) %f, i32 %cmp, ptr %context) #1 !dbg !2013 {
entry:
    #dbg_value(ptr %f, !2019, !DIExpression(), !2021)
    #dbg_value(i32 %cmp, !2020, !DIExpression(), !2021)
    #dbg_value(ptr %f, !2019, !DIExpression(), !2022)
  %0 = icmp eq ptr %f, null, !dbg !2023
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2023

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !2023
    #dbg_value(i32 %cmp, !2020, !DIExpression(), !2024)
  call void @tinygo_futex_wait(ptr %1, i32 %cmp), !dbg !2025
  ret i1 false, !dbg !2026

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2023
  unreachable, !dbg !2023
}

declare void @tinygo_futex_wait(ptr nocapture dereferenceable_or_null(4), i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/futex.Futex).Wake"(ptr dereferenceable_or_null(4) %f, ptr %context) #1 !dbg !2027 {
entry:
    #dbg_value(ptr %f, !2031, !DIExpression(), !2032)
    #dbg_value(ptr %f, !2031, !DIExpression(), !2033)
  %0 = icmp eq ptr %f, null, !dbg !2034
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2034

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !2034
  call void @tinygo_futex_wake(ptr %1), !dbg !2035
  ret void, !dbg !2036

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2034
  unreachable, !dbg !2034
}

declare void @tinygo_futex_wake(ptr nocapture dereferenceable_or_null(4)) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/futex.Futex).WakeAll"(ptr dereferenceable_or_null(4) %f, ptr %context) #1 !dbg !2037 {
entry:
    #dbg_value(ptr %f, !2039, !DIExpression(), !2040)
    #dbg_value(ptr %f, !2039, !DIExpression(), !2041)
  %0 = icmp eq ptr %f, null, !dbg !2042
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2042

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !2042
  call void @tinygo_futex_wake_all(ptr %1), !dbg !2043
  ret void, !dbg !2044

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2042
  unreachable, !dbg !2042
}

declare void @tinygo_futex_wake_all(ptr nocapture dereferenceable_or_null(4)) #2

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(internal/gclayout.Layout).AsPtr"(i64 %l, ptr %context) #1 !dbg !2045 {
entry:
    #dbg_value(i64 %l, !2051, !DIExpression(), !2052)
    #dbg_value(i64 %l, !2051, !DIExpression(), !2053)
  %0 = inttoptr i64 %l to ptr, !dbg !2054
  ret ptr %0, !dbg !2055
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/itoa.Itoa"(i64 %val, ptr %context) #1 !dbg !2056 {
entry:
    #dbg_value(i64 %val, !2060, !DIExpression(), !2061)
    #dbg_value(i64 %val, !2060, !DIExpression(), !2062)
  %0 = icmp slt i64 %val, 0, !dbg !2063
  br i1 %0, label %if.then, label %if.done, !dbg !2064

if.then:                                          ; preds = %entry
    #dbg_value(i64 %val, !2060, !DIExpression(), !2065)
  %1 = sub i64 0, %val, !dbg !2066
  %2 = call %runtime._string @"internal/itoa.Uitoa"(i64 %1, ptr undef), !dbg !2067
  %3 = extractvalue %runtime._string %2, 0, !dbg !2068
  %4 = extractvalue %runtime._string %2, 1, !dbg !2068
  %5 = call %runtime._string @runtime.stringConcat(ptr @"internal/itoa$string", i64 1, ptr %3, i64 %4, ptr undef), !dbg !2068
  ret %runtime._string %5, !dbg !2069

if.done:                                          ; preds = %entry
    #dbg_value(i64 %val, !2060, !DIExpression(), !2070)
  %6 = call %runtime._string @"internal/itoa.Uitoa"(i64 %val, ptr undef), !dbg !2071
  ret %runtime._string %6, !dbg !2072
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/itoa.Uitoa"(i64 %val, ptr %context) unnamed_addr #1 !dbg !2073 {
entry:
    #dbg_value(i64 %val, !2075, !DIExpression(), !2078)
    #dbg_value(i64 %val, !2075, !DIExpression(), !2079)
  %0 = icmp eq i64 %val, 0, !dbg !2080
  br i1 %0, label %if.then, label %if.done, !dbg !2081

if.then:                                          ; preds = %entry
  ret %runtime._string { ptr @"internal/itoa$string.1", i64 1 }, !dbg !2082

if.done:                                          ; preds = %entry
  %buf = call align 1 ptr @runtime.alloc(i64 20, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2083
    #dbg_value(i64 19, !2076, !DIExpression(), !2084)
  br label %for.loop, !dbg !2081

for.loop:                                         ; preds = %lookup.next, %if.done
  %1 = phi i64 [ %val, %if.done ], [ %4, %lookup.next ], !dbg !2085
  %2 = phi i64 [ 19, %if.done ], [ %11, %lookup.next ], !dbg !2084
    #dbg_value(i64 %1, !2075, !DIExpression(), !2086)
  %3 = icmp uge i64 %1, 10, !dbg !2087
  br i1 %3, label %for.body, label %for.done, !dbg !2081

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !2075, !DIExpression(), !2088)
  %4 = udiv i64 %1, 10, !dbg !2089
    #dbg_value(i64 %4, !2077, !DIExpression(), !2090)
    #dbg_value(i64 %2, !2076, !DIExpression(), !2091)
    #dbg_value(i64 %1, !2075, !DIExpression(), !2092)
  %5 = add i64 48, %1, !dbg !2093
    #dbg_value(i64 %4, !2077, !DIExpression(), !2094)
  %6 = mul i64 %4, 10, !dbg !2095
  %7 = sub i64 %5, %6, !dbg !2096
  %8 = trunc i64 %7 to i8, !dbg !2097
  %9 = icmp uge i64 %2, 20, !dbg !2098
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !2098

lookup.next:                                      ; preds = %for.body
  %10 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !2098
  store i8 %8, ptr %10, align 1, !dbg !2098
  %11 = sub i64 %2, 1, !dbg !2099
    #dbg_value(i64 %11, !2076, !DIExpression(), !2099)
    #dbg_value(i64 %4, !2077, !DIExpression(), !2100)
    #dbg_value(i64 %4, !2075, !DIExpression(), !2101)
  br label %for.loop, !dbg !2081

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !2076, !DIExpression(), !2102)
    #dbg_value(i64 %1, !2075, !DIExpression(), !2103)
  %12 = add i64 48, %1, !dbg !2104
  %13 = trunc i64 %12 to i8, !dbg !2105
  %14 = icmp uge i64 %2, 20, !dbg !2106
  br i1 %14, label %lookup.throw1, label %lookup.next2, !dbg !2106

lookup.next2:                                     ; preds = %for.done
  %15 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !2106
  store i8 %13, ptr %15, align 1, !dbg !2106
    #dbg_value(i64 %2, !2076, !DIExpression(), !2107)
  %slice.lowhigh = icmp ugt i64 %2, 20, !dbg !2108
  %slice.lowmax = or i1 %slice.lowhigh, false, !dbg !2108
  %slice.lowcap = or i1 %slice.lowmax, false, !dbg !2108
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2108

slice.next:                                       ; preds = %lookup.next2
  %slice.len = sub i64 20, %2, !dbg !2108
  %slice.ptr = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !2108
  %slice.cap = sub i64 20, %2, !dbg !2108
  %16 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !2108
  %17 = insertvalue { ptr, i64, i64 } %16, i64 %slice.len, 1, !dbg !2108
  %18 = insertvalue { ptr, i64, i64 } %17, i64 %slice.cap, 2, !dbg !2108
  %19 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2109
  %20 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2109
  %21 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2109
  %22 = call %runtime._string @runtime.stringFromBytes(ptr %19, i64 %20, i64 %21, ptr undef), !dbg !2109
  ret %runtime._string %22, !dbg !2110

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2098
  unreachable, !dbg !2098

lookup.throw1:                                    ; preds = %for.done
  call void @runtime.lookupPanic(ptr undef), !dbg !2106
  unreachable, !dbg !2106

slice.throw:                                      ; preds = %lookup.next2
  call void @runtime.slicePanic(ptr undef), !dbg !2108
  unreachable, !dbg !2108
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"unicode/utf8.DecodeRuneInString"(ptr readonly %s.data, i64 %s.len, ptr %context) #1 !dbg !2111 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !2119
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !2119
    #dbg_value(ptr %s.data, !2115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2119)
    #dbg_value(i64 %s.len, !2115, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2119)
    #dbg_value(%runtime._string %1, !2115, !DIExpression(), !2120)
  %2 = extractvalue %runtime._string %1, 0, !dbg !2121
  %3 = extractvalue %runtime._string %1, 1, !dbg !2121
  %4 = call i1 @runtime.stringEqual(ptr %2, i64 %3, ptr null, i64 0, ptr undef), !dbg !2121
  %5 = xor i1 %4, true, !dbg !2121
  br i1 %5, label %cond.true, label %if.else, !dbg !2122

cond.true:                                        ; preds = %entry
    #dbg_value(%runtime._string %1, !2115, !DIExpression(), !2123)
  %len = extractvalue %runtime._string %1, 1, !dbg !2124
  %6 = icmp uge i64 0, %len, !dbg !2124
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !2124

lookup.next:                                      ; preds = %cond.true
  %7 = extractvalue %runtime._string %1, 0, !dbg !2124
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !2124
  %9 = load i8, ptr %8, align 1, !dbg !2124
  %10 = icmp ult i8 %9, -128, !dbg !2125
  br i1 %10, label %if.then, label %if.else, !dbg !2122

if.then:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2115, !DIExpression(), !2126)
  %len1 = extractvalue %runtime._string %1, 1, !dbg !2127
  %11 = icmp uge i64 0, %len1, !dbg !2127
  br i1 %11, label %lookup.throw2, label %lookup.next3, !dbg !2127

lookup.next3:                                     ; preds = %if.then
  %12 = extractvalue %runtime._string %1, 0, !dbg !2127
  %13 = getelementptr inbounds i8, ptr %12, i64 0, !dbg !2127
  %14 = load i8, ptr %13, align 1, !dbg !2127
  %15 = zext i8 %14 to i32, !dbg !2128
  %16 = insertvalue { i32, i64 } zeroinitializer, i32 %15, 0, !dbg !2129
  %17 = insertvalue { i32, i64 } %16, i64 1, 1, !dbg !2129
  ret { i32, i64 } %17, !dbg !2129

if.else:                                          ; preds = %lookup.next, %entry
    #dbg_value(%runtime._string %1, !2115, !DIExpression(), !2130)
  %18 = extractvalue %runtime._string %1, 0, !dbg !2131
  %19 = extractvalue %runtime._string %1, 1, !dbg !2131
  %20 = call { i32, i64 } @"unicode/utf8.decodeRuneInStringSlow"(ptr %18, i64 %19, ptr undef), !dbg !2131
  %21 = extractvalue { i32, i64 } %20, 0, !dbg !2131
    #dbg_value(i32 %21, !2116, !DIExpression(), !2132)
  %22 = extractvalue { i32, i64 } %20, 1, !dbg !2131
    #dbg_value(i64 %22, !2118, !DIExpression(), !2133)
  %23 = insertvalue { i32, i64 } zeroinitializer, i32 %21, 0, !dbg !2134
  %24 = insertvalue { i32, i64 } %23, i64 %22, 1, !dbg !2134
  ret { i32, i64 } %24, !dbg !2134

lookup.throw:                                     ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !2124
  unreachable, !dbg !2124

lookup.throw2:                                    ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2127
  unreachable, !dbg !2127
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"unicode/utf8.decodeRuneInStringSlow"(ptr readonly %s.data, i64 %s.len, ptr %context) unnamed_addr #1 !dbg !2135 {
entry:
  %accept = alloca %"unicode/utf8.acceptRange", align 8, !dbg !2147
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !2147
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !2147
    #dbg_value(ptr %s.data, !2137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2147)
    #dbg_value(i64 %s.len, !2137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2147)
    #dbg_value(%runtime._string %1, !2137, !DIExpression(), !2148)
  %len = extractvalue %runtime._string %1, 1, !dbg !2149
    #dbg_value(i64 %len, !2138, !DIExpression(), !2150)
    #dbg_value(i64 %len, !2138, !DIExpression(), !2151)
  %2 = icmp slt i64 %len, 1, !dbg !2152
  br i1 %2, label %if.then, label %if.done, !dbg !2153

if.then:                                          ; preds = %entry
  ret { i32, i64 } { i32 65533, i64 0 }, !dbg !2154

if.done:                                          ; preds = %entry
    #dbg_value(%runtime._string %1, !2137, !DIExpression(), !2155)
  %len17 = extractvalue %runtime._string %1, 1, !dbg !2156
  %3 = icmp uge i64 0, %len17, !dbg !2156
  br i1 %3, label %lookup.throw, label %lookup.next, !dbg !2156

lookup.next:                                      ; preds = %if.done
  %4 = extractvalue %runtime._string %1, 0, !dbg !2156
  %5 = getelementptr inbounds i8, ptr %4, i64 0, !dbg !2156
  %6 = load i8, ptr %5, align 1, !dbg !2156
    #dbg_value(i8 %6, !2139, !DIExpression(), !2157)
    #dbg_value(i8 %6, !2139, !DIExpression(), !2158)
  %7 = zext i8 %6 to i64, !dbg !2159
  %8 = icmp uge i64 %7, 256, !dbg !2159
  br i1 %8, label %lookup.throw18, label %lookup.next19, !dbg !2159

lookup.next19:                                    ; preds = %lookup.next
  %9 = getelementptr inbounds [256 x i8], ptr @"unicode/utf8.first", i32 0, i64 %7, !dbg !2159
  %10 = load i8, ptr %9, align 1, !dbg !2159
    #dbg_value(i8 %10, !2140, !DIExpression(), !2160)
    #dbg_value(i8 %10, !2140, !DIExpression(), !2161)
  %11 = icmp uge i8 %10, -16, !dbg !2162
  br i1 %11, label %if.then1, label %if.done2, !dbg !2153

if.then1:                                         ; preds = %lookup.next19
    #dbg_value(i8 %10, !2140, !DIExpression(), !2163)
  %12 = zext i8 %10 to i32, !dbg !2164
  %13 = shl i32 %12, 31, !dbg !2165
  %shift.result = select i1 false, i32 0, i32 %13, !dbg !2165
  %14 = ashr i32 %shift.result, 31, !dbg !2166
    #dbg_value(i32 %14, !2141, !DIExpression(), !2167)
    #dbg_value(%runtime._string %1, !2137, !DIExpression(), !2168)
  %len20 = extractvalue %runtime._string %1, 1, !dbg !2169
  %15 = icmp uge i64 0, %len20, !dbg !2169
  br i1 %15, label %lookup.throw21, label %lookup.next22, !dbg !2169

lookup.next22:                                    ; preds = %if.then1
  %16 = extractvalue %runtime._string %1, 0, !dbg !2169
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !2169
  %18 = load i8, ptr %17, align 1, !dbg !2169
  %19 = zext i8 %18 to i32, !dbg !2170
    #dbg_value(i32 %14, !2141, !DIExpression(), !2171)
  %20 = xor i32 %14, -1, !dbg !2172
  %21 = and i32 %19, %20, !dbg !2172
    #dbg_value(i32 %14, !2141, !DIExpression(), !2173)
  %22 = and i32 65533, %14, !dbg !2174
  %23 = or i32 %21, %22, !dbg !2175
  %24 = insertvalue { i32, i64 } zeroinitializer, i32 %23, 0, !dbg !2176
  %25 = insertvalue { i32, i64 } %24, i64 1, 1, !dbg !2176
  ret { i32, i64 } %25, !dbg !2176

if.done2:                                         ; preds = %lookup.next19
    #dbg_value(i8 %10, !2140, !DIExpression(), !2177)
  %26 = and i8 %10, 7, !dbg !2178
  %27 = zext i8 %26 to i64, !dbg !2179
    #dbg_value(i64 %27, !2142, !DIExpression(), !2180)
  store %"unicode/utf8.acceptRange" zeroinitializer, ptr %accept, align 1, !dbg !2147
    #dbg_value(i8 %10, !2140, !DIExpression(), !2181)
  %28 = lshr i8 %10, 4, !dbg !2182
  %shift.result23 = select i1 false, i8 0, i8 %28, !dbg !2182
  %29 = zext i8 %shift.result23 to i64, !dbg !2183
  %30 = icmp uge i64 %29, 16, !dbg !2183
  br i1 %30, label %lookup.throw24, label %lookup.next25, !dbg !2183

lookup.next25:                                    ; preds = %if.done2
  %31 = getelementptr inbounds [16 x %"unicode/utf8.acceptRange"], ptr @"unicode/utf8.acceptRanges", i32 0, i64 %29, !dbg !2183
  %32 = load %"unicode/utf8.acceptRange", ptr %31, align 1, !dbg !2183
  store %"unicode/utf8.acceptRange" %32, ptr %accept, align 1, !dbg !2184
    #dbg_value(%"unicode/utf8.acceptRange" %32, !2143, !DIExpression(), !2184)
    #dbg_value(i64 %len, !2138, !DIExpression(), !2185)
    #dbg_value(i64 %27, !2142, !DIExpression(), !2186)
  %33 = icmp slt i64 %len, %27, !dbg !2187
  br i1 %33, label %if.then3, label %if.done4, !dbg !2153

if.then3:                                         ; preds = %lookup.next25
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2188

if.done4:                                         ; preds = %lookup.next25
    #dbg_value(%runtime._string %1, !2137, !DIExpression(), !2189)
  %len26 = extractvalue %runtime._string %1, 1, !dbg !2190
  %34 = icmp uge i64 1, %len26, !dbg !2190
  br i1 %34, label %lookup.throw27, label %lookup.next28, !dbg !2190

lookup.next28:                                    ; preds = %if.done4
  %35 = extractvalue %runtime._string %1, 0, !dbg !2190
  %36 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !2190
  %37 = load i8, ptr %36, align 1, !dbg !2190
    #dbg_value(i8 %37, !2144, !DIExpression(), !2191)
    #dbg_value(i8 %37, !2144, !DIExpression(), !2192)
  %38 = getelementptr inbounds %"unicode/utf8.acceptRange", ptr %accept, i32 0, i32 0, !dbg !2193
  %39 = icmp eq ptr %38, null, !dbg !2193
  br i1 %39, label %deref.throw, label %deref.next, !dbg !2193

deref.next:                                       ; preds = %lookup.next28
  %40 = load i8, ptr %38, align 1, !dbg !2193
  %41 = icmp ult i8 %37, %40, !dbg !2194
  br i1 %41, label %if.then5, label %cond.false, !dbg !2153

if.then5:                                         ; preds = %deref.next30, %deref.next
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2195

cond.false:                                       ; preds = %deref.next
  %42 = getelementptr inbounds %"unicode/utf8.acceptRange", ptr %accept, i32 0, i32 1, !dbg !2196
  %43 = icmp eq ptr %42, null, !dbg !2196
  br i1 %43, label %deref.throw29, label %deref.next30, !dbg !2196

deref.next30:                                     ; preds = %cond.false
  %44 = load i8, ptr %42, align 1, !dbg !2196
    #dbg_value(i8 %37, !2144, !DIExpression(), !2197)
  %45 = icmp ult i8 %44, %37, !dbg !2198
  br i1 %45, label %if.then5, label %if.done6, !dbg !2153

if.done6:                                         ; preds = %deref.next30
    #dbg_value(i64 %27, !2142, !DIExpression(), !2199)
  %46 = icmp sle i64 %27, 2, !dbg !2200
  br i1 %46, label %if.then7, label %if.done8, !dbg !2153

if.then7:                                         ; preds = %if.done6
    #dbg_value(i8 %6, !2139, !DIExpression(), !2201)
  %47 = and i8 %6, 31, !dbg !2202
  %48 = zext i8 %47 to i32, !dbg !2203
  %49 = shl i32 %48, 6, !dbg !2204
  %shift.result31 = select i1 false, i32 0, i32 %49, !dbg !2204
    #dbg_value(i8 %37, !2144, !DIExpression(), !2205)
  %50 = and i8 %37, 63, !dbg !2206
  %51 = zext i8 %50 to i32, !dbg !2207
  %52 = or i32 %shift.result31, %51, !dbg !2208
  %53 = insertvalue { i32, i64 } zeroinitializer, i32 %52, 0, !dbg !2209
  %54 = insertvalue { i32, i64 } %53, i64 2, 1, !dbg !2209
  ret { i32, i64 } %54, !dbg !2209

if.done8:                                         ; preds = %if.done6
    #dbg_value(%runtime._string %1, !2137, !DIExpression(), !2210)
  %len32 = extractvalue %runtime._string %1, 1, !dbg !2211
  %55 = icmp uge i64 2, %len32, !dbg !2211
  br i1 %55, label %lookup.throw33, label %lookup.next34, !dbg !2211

lookup.next34:                                    ; preds = %if.done8
  %56 = extractvalue %runtime._string %1, 0, !dbg !2211
  %57 = getelementptr inbounds i8, ptr %56, i64 2, !dbg !2211
  %58 = load i8, ptr %57, align 1, !dbg !2211
    #dbg_value(i8 %58, !2145, !DIExpression(), !2212)
    #dbg_value(i8 %58, !2145, !DIExpression(), !2213)
  %59 = icmp ult i8 %58, -128, !dbg !2214
  br i1 %59, label %if.then9, label %cond.false10, !dbg !2153

if.then9:                                         ; preds = %cond.false10, %lookup.next34
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2215

cond.false10:                                     ; preds = %lookup.next34
    #dbg_value(i8 %58, !2145, !DIExpression(), !2216)
  %60 = icmp ult i8 -65, %58, !dbg !2217
  br i1 %60, label %if.then9, label %if.done11, !dbg !2153

if.done11:                                        ; preds = %cond.false10
    #dbg_value(i64 %27, !2142, !DIExpression(), !2218)
  %61 = icmp sle i64 %27, 3, !dbg !2219
  br i1 %61, label %if.then12, label %if.done13, !dbg !2153

if.then12:                                        ; preds = %if.done11
    #dbg_value(i8 %6, !2139, !DIExpression(), !2220)
  %62 = and i8 %6, 15, !dbg !2221
  %63 = zext i8 %62 to i32, !dbg !2222
  %64 = shl i32 %63, 12, !dbg !2223
  %shift.result35 = select i1 false, i32 0, i32 %64, !dbg !2223
    #dbg_value(i8 %37, !2144, !DIExpression(), !2224)
  %65 = and i8 %37, 63, !dbg !2225
  %66 = zext i8 %65 to i32, !dbg !2226
  %67 = shl i32 %66, 6, !dbg !2227
  %shift.result36 = select i1 false, i32 0, i32 %67, !dbg !2227
  %68 = or i32 %shift.result35, %shift.result36, !dbg !2228
    #dbg_value(i8 %58, !2145, !DIExpression(), !2229)
  %69 = and i8 %58, 63, !dbg !2230
  %70 = zext i8 %69 to i32, !dbg !2231
  %71 = or i32 %68, %70, !dbg !2232
  %72 = insertvalue { i32, i64 } zeroinitializer, i32 %71, 0, !dbg !2233
  %73 = insertvalue { i32, i64 } %72, i64 3, 1, !dbg !2233
  ret { i32, i64 } %73, !dbg !2233

if.done13:                                        ; preds = %if.done11
    #dbg_value(%runtime._string %1, !2137, !DIExpression(), !2234)
  %len37 = extractvalue %runtime._string %1, 1, !dbg !2235
  %74 = icmp uge i64 3, %len37, !dbg !2235
  br i1 %74, label %lookup.throw38, label %lookup.next39, !dbg !2235

lookup.next39:                                    ; preds = %if.done13
  %75 = extractvalue %runtime._string %1, 0, !dbg !2235
  %76 = getelementptr inbounds i8, ptr %75, i64 3, !dbg !2235
  %77 = load i8, ptr %76, align 1, !dbg !2235
    #dbg_value(i8 %77, !2146, !DIExpression(), !2236)
    #dbg_value(i8 %77, !2146, !DIExpression(), !2237)
  %78 = icmp ult i8 %77, -128, !dbg !2238
  br i1 %78, label %if.then14, label %cond.false15, !dbg !2153

if.then14:                                        ; preds = %cond.false15, %lookup.next39
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2239

cond.false15:                                     ; preds = %lookup.next39
    #dbg_value(i8 %77, !2146, !DIExpression(), !2240)
  %79 = icmp ult i8 -65, %77, !dbg !2241
  br i1 %79, label %if.then14, label %if.done16, !dbg !2153

if.done16:                                        ; preds = %cond.false15
    #dbg_value(i8 %6, !2139, !DIExpression(), !2242)
  %80 = and i8 %6, 7, !dbg !2243
  %81 = zext i8 %80 to i32, !dbg !2244
  %82 = shl i32 %81, 18, !dbg !2245
  %shift.result40 = select i1 false, i32 0, i32 %82, !dbg !2245
    #dbg_value(i8 %37, !2144, !DIExpression(), !2246)
  %83 = and i8 %37, 63, !dbg !2247
  %84 = zext i8 %83 to i32, !dbg !2248
  %85 = shl i32 %84, 12, !dbg !2249
  %shift.result41 = select i1 false, i32 0, i32 %85, !dbg !2249
  %86 = or i32 %shift.result40, %shift.result41, !dbg !2250
    #dbg_value(i8 %58, !2145, !DIExpression(), !2251)
  %87 = and i8 %58, 63, !dbg !2252
  %88 = zext i8 %87 to i32, !dbg !2253
  %89 = shl i32 %88, 6, !dbg !2254
  %shift.result42 = select i1 false, i32 0, i32 %89, !dbg !2254
  %90 = or i32 %86, %shift.result42, !dbg !2255
    #dbg_value(i8 %77, !2146, !DIExpression(), !2256)
  %91 = and i8 %77, 63, !dbg !2257
  %92 = zext i8 %91 to i32, !dbg !2258
  %93 = or i32 %90, %92, !dbg !2259
  %94 = insertvalue { i32, i64 } zeroinitializer, i32 %93, 0, !dbg !2260
  %95 = insertvalue { i32, i64 } %94, i64 4, 1, !dbg !2260
  ret { i32, i64 } %95, !dbg !2260

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !2156
  unreachable, !dbg !2156

lookup.throw18:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !2159
  unreachable, !dbg !2159

lookup.throw21:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !2169
  unreachable, !dbg !2169

lookup.throw24:                                   ; preds = %if.done2
  call void @runtime.lookupPanic(ptr undef), !dbg !2183
  unreachable, !dbg !2183

lookup.throw27:                                   ; preds = %if.done4
  call void @runtime.lookupPanic(ptr undef), !dbg !2190
  unreachable, !dbg !2190

deref.throw:                                      ; preds = %lookup.next28
  call void @runtime.nilPanic(ptr undef), !dbg !2193
  unreachable, !dbg !2193

deref.throw29:                                    ; preds = %cond.false
  call void @runtime.nilPanic(ptr undef), !dbg !2196
  unreachable, !dbg !2196

lookup.throw33:                                   ; preds = %if.done8
  call void @runtime.lookupPanic(ptr undef), !dbg !2211
  unreachable, !dbg !2211

lookup.throw38:                                   ; preds = %if.done13
  call void @runtime.lookupPanic(ptr undef), !dbg !2235
  unreachable, !dbg !2235
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"unicode/utf8.EncodeRune"(ptr %p.data, i64 %p.len, i64 %p.cap, i32 %r, ptr %context) #1 !dbg !2261 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !2271
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !2271
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !2271
    #dbg_value(ptr %p.data, !2269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2271)
    #dbg_value(i64 %p.len, !2269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2271)
    #dbg_value(i64 %p.cap, !2269, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2271)
    #dbg_value(i32 %r, !2270, !DIExpression(), !2271)
    #dbg_value(i32 %r, !2270, !DIExpression(), !2272)
  %3 = icmp ule i32 %r, 127, !dbg !2273
  br i1 %3, label %if.then, label %if.done, !dbg !2274

if.then:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2269, !DIExpression(), !2275)
    #dbg_value(i32 %r, !2270, !DIExpression(), !2276)
  %4 = trunc i32 %r to i8, !dbg !2277
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2278
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2278
  %5 = icmp uge i64 0, %indexaddr.len, !dbg !2278
  br i1 %5, label %lookup.throw, label %lookup.next, !dbg !2278

lookup.next:                                      ; preds = %if.then
  %6 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 0, !dbg !2278
  store i8 %4, ptr %6, align 1, !dbg !2278
  ret i64 1, !dbg !2279

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2269, !DIExpression(), !2280)
    #dbg_value(i32 %r, !2270, !DIExpression(), !2281)
  %7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2282
  %8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2282
  %9 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2282
  %10 = call i64 @"unicode/utf8.encodeRuneNonASCII"(ptr %7, i64 %8, i64 %9, i32 %r, ptr undef), !dbg !2282
  ret i64 %10, !dbg !2283

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2278
  unreachable, !dbg !2278
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"unicode/utf8.encodeRuneNonASCII"(ptr %p.data, i64 %p.len, i64 %p.cap, i32 %r, ptr %context) unnamed_addr #1 !dbg !2284 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !2289
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !2289
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !2289
    #dbg_value(ptr %p.data, !2286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2289)
    #dbg_value(i64 %p.len, !2286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2289)
    #dbg_value(i64 %p.cap, !2286, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2289)
    #dbg_value(i32 %r, !2287, !DIExpression(), !2289)
    #dbg_value(i32 %r, !2287, !DIExpression(), !2290)
    #dbg_value(i32 %r, !2288, !DIExpression(), !2291)
    #dbg_value(i32 %r, !2288, !DIExpression(), !2292)
  %3 = icmp ule i32 %r, 2047, !dbg !2293
  br i1 %3, label %switch.body, label %switch.next, !dbg !2294

switch.body:                                      ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2286, !DIExpression(), !2295)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2296
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2296
  %4 = icmp uge i64 1, %indexaddr.len, !dbg !2296
  br i1 %4, label %lookup.throw, label %lookup.next, !dbg !2296

lookup.next:                                      ; preds = %switch.body
  %5 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 1, !dbg !2296
  %6 = load i8, ptr %5, align 1, !dbg !2296
    #dbg_value({ ptr, i64, i64 } %2, !2286, !DIExpression(), !2297)
    #dbg_value(i32 %r, !2287, !DIExpression(), !2298)
  %7 = ashr i32 %r, 6, !dbg !2299
  %8 = trunc i32 %7 to i8, !dbg !2300
  %9 = or i8 -64, %8, !dbg !2301
  %indexaddr.ptr8 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2302
  %indexaddr.len9 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2302
  %10 = icmp uge i64 0, %indexaddr.len9, !dbg !2302
  br i1 %10, label %lookup.throw10, label %lookup.next11, !dbg !2302

lookup.next11:                                    ; preds = %lookup.next
  %11 = getelementptr inbounds i8, ptr %indexaddr.ptr8, i64 0, !dbg !2302
  store i8 %9, ptr %11, align 1, !dbg !2302
    #dbg_value({ ptr, i64, i64 } %2, !2286, !DIExpression(), !2303)
    #dbg_value(i32 %r, !2287, !DIExpression(), !2304)
  %12 = trunc i32 %r to i8, !dbg !2305
  %13 = and i8 %12, 63, !dbg !2306
  %14 = or i8 -128, %13, !dbg !2307
  %indexaddr.ptr12 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2308
  %indexaddr.len13 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2308
  %15 = icmp uge i64 1, %indexaddr.len13, !dbg !2308
  br i1 %15, label %lookup.throw14, label %lookup.next15, !dbg !2308

lookup.next15:                                    ; preds = %lookup.next11
  %16 = getelementptr inbounds i8, ptr %indexaddr.ptr12, i64 1, !dbg !2308
  store i8 %14, ptr %16, align 1, !dbg !2308
  ret i64 2, !dbg !2309

switch.next:                                      ; preds = %entry
    #dbg_value(i32 %r, !2288, !DIExpression(), !2310)
  %17 = icmp ult i32 %r, 55296, !dbg !2311
  br i1 %17, label %switch.body1, label %switch.next2, !dbg !2294

switch.body1:                                     ; preds = %binop.done, %switch.next
    #dbg_value({ ptr, i64, i64 } %2, !2286, !DIExpression(), !2312)
  %indexaddr.ptr16 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2313
  %indexaddr.len17 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2313
  %18 = icmp uge i64 2, %indexaddr.len17, !dbg !2313
  br i1 %18, label %lookup.throw18, label %lookup.next19, !dbg !2313

lookup.next19:                                    ; preds = %switch.body1
  %19 = getelementptr inbounds i8, ptr %indexaddr.ptr16, i64 2, !dbg !2313
  %20 = load i8, ptr %19, align 1, !dbg !2313
    #dbg_value({ ptr, i64, i64 } %2, !2286, !DIExpression(), !2314)
    #dbg_value(i32 %r, !2287, !DIExpression(), !2315)
  %21 = ashr i32 %r, 12, !dbg !2316
  %22 = trunc i32 %21 to i8, !dbg !2317
  %23 = or i8 -32, %22, !dbg !2318
  %indexaddr.ptr20 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2319
  %indexaddr.len21 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2319
  %24 = icmp uge i64 0, %indexaddr.len21, !dbg !2319
  br i1 %24, label %lookup.throw22, label %lookup.next23, !dbg !2319

lookup.next23:                                    ; preds = %lookup.next19
  %25 = getelementptr inbounds i8, ptr %indexaddr.ptr20, i64 0, !dbg !2319
  store i8 %23, ptr %25, align 1, !dbg !2319
    #dbg_value({ ptr, i64, i64 } %2, !2286, !DIExpression(), !2320)
    #dbg_value(i32 %r, !2287, !DIExpression(), !2321)
  %26 = ashr i32 %r, 6, !dbg !2322
  %27 = trunc i32 %26 to i8, !dbg !2323
  %28 = and i8 %27, 63, !dbg !2324
  %29 = or i8 -128, %28, !dbg !2325
  %indexaddr.ptr24 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2326
  %indexaddr.len25 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2326
  %30 = icmp uge i64 1, %indexaddr.len25, !dbg !2326
  br i1 %30, label %lookup.throw26, label %lookup.next27, !dbg !2326

lookup.next27:                                    ; preds = %lookup.next23
  %31 = getelementptr inbounds i8, ptr %indexaddr.ptr24, i64 1, !dbg !2326
  store i8 %29, ptr %31, align 1, !dbg !2326
    #dbg_value({ ptr, i64, i64 } %2, !2286, !DIExpression(), !2327)
    #dbg_value(i32 %r, !2287, !DIExpression(), !2328)
  %32 = trunc i32 %r to i8, !dbg !2329
  %33 = and i8 %32, 63, !dbg !2330
  %34 = or i8 -128, %33, !dbg !2331
  %indexaddr.ptr28 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2332
  %indexaddr.len29 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2332
  %35 = icmp uge i64 2, %indexaddr.len29, !dbg !2332
  br i1 %35, label %lookup.throw30, label %lookup.next31, !dbg !2332

lookup.next31:                                    ; preds = %lookup.next27
  %36 = getelementptr inbounds i8, ptr %indexaddr.ptr28, i64 2, !dbg !2332
  store i8 %34, ptr %36, align 1, !dbg !2332
  ret i64 3, !dbg !2333

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i32 %r, !2288, !DIExpression(), !2334)
  %37 = icmp ult i32 57343, %r, !dbg !2335
  br i1 %37, label %binop.rhs, label %binop.done, !dbg !2294

binop.rhs:                                        ; preds = %switch.next2
    #dbg_value(i32 %r, !2288, !DIExpression(), !2336)
  %38 = icmp ule i32 %r, 65535, !dbg !2337
  br label %binop.done, !dbg !2294

binop.done:                                       ; preds = %binop.rhs, %switch.next2
  %39 = phi i1 [ false, %switch.next2 ], [ %38, %binop.rhs ], !dbg !2338
  br i1 %39, label %switch.body1, label %switch.next3, !dbg !2294

switch.next3:                                     ; preds = %binop.done
    #dbg_value(i32 %r, !2288, !DIExpression(), !2339)
  %40 = icmp ugt i32 %r, 65535, !dbg !2340
  br i1 %40, label %binop.rhs4, label %binop.done5, !dbg !2294

binop.rhs4:                                       ; preds = %switch.next3
    #dbg_value(i32 %r, !2288, !DIExpression(), !2341)
  %41 = icmp ule i32 %r, 1114111, !dbg !2342
  br label %binop.done5, !dbg !2294

binop.done5:                                      ; preds = %binop.rhs4, %switch.next3
  %42 = phi i1 [ false, %switch.next3 ], [ %41, %binop.rhs4 ], !dbg !2343
  br i1 %42, label %switch.body6, label %switch.next7, !dbg !2294

switch.body6:                                     ; preds = %binop.done5
    #dbg_value({ ptr, i64, i64 } %2, !2286, !DIExpression(), !2344)
  %indexaddr.ptr32 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2345
  %indexaddr.len33 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2345
  %43 = icmp uge i64 3, %indexaddr.len33, !dbg !2345
  br i1 %43, label %lookup.throw34, label %lookup.next35, !dbg !2345

lookup.next35:                                    ; preds = %switch.body6
  %44 = getelementptr inbounds i8, ptr %indexaddr.ptr32, i64 3, !dbg !2345
  %45 = load i8, ptr %44, align 1, !dbg !2345
    #dbg_value({ ptr, i64, i64 } %2, !2286, !DIExpression(), !2346)
    #dbg_value(i32 %r, !2287, !DIExpression(), !2347)
  %46 = ashr i32 %r, 18, !dbg !2348
  %47 = trunc i32 %46 to i8, !dbg !2349
  %48 = or i8 -16, %47, !dbg !2350
  %indexaddr.ptr36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2351
  %indexaddr.len37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2351
  %49 = icmp uge i64 0, %indexaddr.len37, !dbg !2351
  br i1 %49, label %lookup.throw38, label %lookup.next39, !dbg !2351

lookup.next39:                                    ; preds = %lookup.next35
  %50 = getelementptr inbounds i8, ptr %indexaddr.ptr36, i64 0, !dbg !2351
  store i8 %48, ptr %50, align 1, !dbg !2351
    #dbg_value({ ptr, i64, i64 } %2, !2286, !DIExpression(), !2352)
    #dbg_value(i32 %r, !2287, !DIExpression(), !2353)
  %51 = ashr i32 %r, 12, !dbg !2354
  %52 = trunc i32 %51 to i8, !dbg !2355
  %53 = and i8 %52, 63, !dbg !2356
  %54 = or i8 -128, %53, !dbg !2357
  %indexaddr.ptr40 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2358
  %indexaddr.len41 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2358
  %55 = icmp uge i64 1, %indexaddr.len41, !dbg !2358
  br i1 %55, label %lookup.throw42, label %lookup.next43, !dbg !2358

lookup.next43:                                    ; preds = %lookup.next39
  %56 = getelementptr inbounds i8, ptr %indexaddr.ptr40, i64 1, !dbg !2358
  store i8 %54, ptr %56, align 1, !dbg !2358
    #dbg_value({ ptr, i64, i64 } %2, !2286, !DIExpression(), !2359)
    #dbg_value(i32 %r, !2287, !DIExpression(), !2360)
  %57 = ashr i32 %r, 6, !dbg !2361
  %58 = trunc i32 %57 to i8, !dbg !2362
  %59 = and i8 %58, 63, !dbg !2363
  %60 = or i8 -128, %59, !dbg !2364
  %indexaddr.ptr44 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2365
  %indexaddr.len45 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2365
  %61 = icmp uge i64 2, %indexaddr.len45, !dbg !2365
  br i1 %61, label %lookup.throw46, label %lookup.next47, !dbg !2365

lookup.next47:                                    ; preds = %lookup.next43
  %62 = getelementptr inbounds i8, ptr %indexaddr.ptr44, i64 2, !dbg !2365
  store i8 %60, ptr %62, align 1, !dbg !2365
    #dbg_value({ ptr, i64, i64 } %2, !2286, !DIExpression(), !2366)
    #dbg_value(i32 %r, !2287, !DIExpression(), !2367)
  %63 = trunc i32 %r to i8, !dbg !2368
  %64 = and i8 %63, 63, !dbg !2369
  %65 = or i8 -128, %64, !dbg !2370
  %indexaddr.ptr48 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2371
  %indexaddr.len49 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2371
  %66 = icmp uge i64 3, %indexaddr.len49, !dbg !2371
  br i1 %66, label %lookup.throw50, label %lookup.next51, !dbg !2371

lookup.next51:                                    ; preds = %lookup.next47
  %67 = getelementptr inbounds i8, ptr %indexaddr.ptr48, i64 3, !dbg !2371
  store i8 %65, ptr %67, align 1, !dbg !2371
  ret i64 4, !dbg !2372

switch.next7:                                     ; preds = %binop.done5
    #dbg_value({ ptr, i64, i64 } %2, !2286, !DIExpression(), !2373)
  %indexaddr.ptr52 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2374
  %indexaddr.len53 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2374
  %68 = icmp uge i64 2, %indexaddr.len53, !dbg !2374
  br i1 %68, label %lookup.throw54, label %lookup.next55, !dbg !2374

lookup.next55:                                    ; preds = %switch.next7
  %69 = getelementptr inbounds i8, ptr %indexaddr.ptr52, i64 2, !dbg !2374
  %70 = load i8, ptr %69, align 1, !dbg !2374
    #dbg_value({ ptr, i64, i64 } %2, !2286, !DIExpression(), !2375)
  %indexaddr.ptr56 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2376
  %indexaddr.len57 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2376
  %71 = icmp uge i64 0, %indexaddr.len57, !dbg !2376
  br i1 %71, label %lookup.throw58, label %lookup.next59, !dbg !2376

lookup.next59:                                    ; preds = %lookup.next55
  %72 = getelementptr inbounds i8, ptr %indexaddr.ptr56, i64 0, !dbg !2376
  store i8 -17, ptr %72, align 1, !dbg !2376
    #dbg_value({ ptr, i64, i64 } %2, !2286, !DIExpression(), !2377)
  %indexaddr.ptr60 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2378
  %indexaddr.len61 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2378
  %73 = icmp uge i64 1, %indexaddr.len61, !dbg !2378
  br i1 %73, label %lookup.throw62, label %lookup.next63, !dbg !2378

lookup.next63:                                    ; preds = %lookup.next59
  %74 = getelementptr inbounds i8, ptr %indexaddr.ptr60, i64 1, !dbg !2378
  store i8 -65, ptr %74, align 1, !dbg !2378
    #dbg_value({ ptr, i64, i64 } %2, !2286, !DIExpression(), !2379)
  %indexaddr.ptr64 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2380
  %indexaddr.len65 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2380
  %75 = icmp uge i64 2, %indexaddr.len65, !dbg !2380
  br i1 %75, label %lookup.throw66, label %lookup.next67, !dbg !2380

lookup.next67:                                    ; preds = %lookup.next63
  %76 = getelementptr inbounds i8, ptr %indexaddr.ptr64, i64 2, !dbg !2380
  store i8 -67, ptr %76, align 1, !dbg !2380
  ret i64 3, !dbg !2381

lookup.throw:                                     ; preds = %switch.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2296
  unreachable, !dbg !2296

lookup.throw10:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !2302
  unreachable, !dbg !2302

lookup.throw14:                                   ; preds = %lookup.next11
  call void @runtime.lookupPanic(ptr undef), !dbg !2308
  unreachable, !dbg !2308

lookup.throw18:                                   ; preds = %switch.body1
  call void @runtime.lookupPanic(ptr undef), !dbg !2313
  unreachable, !dbg !2313

lookup.throw22:                                   ; preds = %lookup.next19
  call void @runtime.lookupPanic(ptr undef), !dbg !2319
  unreachable, !dbg !2319

lookup.throw26:                                   ; preds = %lookup.next23
  call void @runtime.lookupPanic(ptr undef), !dbg !2326
  unreachable, !dbg !2326

lookup.throw30:                                   ; preds = %lookup.next27
  call void @runtime.lookupPanic(ptr undef), !dbg !2332
  unreachable, !dbg !2332

lookup.throw34:                                   ; preds = %switch.body6
  call void @runtime.lookupPanic(ptr undef), !dbg !2345
  unreachable, !dbg !2345

lookup.throw38:                                   ; preds = %lookup.next35
  call void @runtime.lookupPanic(ptr undef), !dbg !2351
  unreachable, !dbg !2351

lookup.throw42:                                   ; preds = %lookup.next39
  call void @runtime.lookupPanic(ptr undef), !dbg !2358
  unreachable, !dbg !2358

lookup.throw46:                                   ; preds = %lookup.next43
  call void @runtime.lookupPanic(ptr undef), !dbg !2365
  unreachable, !dbg !2365

lookup.throw50:                                   ; preds = %lookup.next47
  call void @runtime.lookupPanic(ptr undef), !dbg !2371
  unreachable, !dbg !2371

lookup.throw54:                                   ; preds = %switch.next7
  call void @runtime.lookupPanic(ptr undef), !dbg !2374
  unreachable, !dbg !2374

lookup.throw58:                                   ; preds = %lookup.next55
  call void @runtime.lookupPanic(ptr undef), !dbg !2376
  unreachable, !dbg !2376

lookup.throw62:                                   ; preds = %lookup.next59
  call void @runtime.lookupPanic(ptr undef), !dbg !2378
  unreachable, !dbg !2378

lookup.throw66:                                   ; preds = %lookup.next63
  call void @runtime.lookupPanic(ptr undef), !dbg !2380
  unreachable, !dbg !2380
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"unicode/utf8.ValidRune"(i32 %r, ptr %context) #1 !dbg !2382 {
entry:
    #dbg_value(i32 %r, !2386, !DIExpression(), !2387)
    #dbg_value(i32 %r, !2386, !DIExpression(), !2388)
  %0 = icmp sle i32 0, %r, !dbg !2389
  br i1 %0, label %binop.rhs, label %binop.done, !dbg !2390

binop.rhs:                                        ; preds = %entry
    #dbg_value(i32 %r, !2386, !DIExpression(), !2391)
  %1 = icmp slt i32 %r, 55296, !dbg !2392
  br label %binop.done, !dbg !2390

binop.done:                                       ; preds = %binop.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %1, %binop.rhs ], !dbg !2393
  br i1 %2, label %switch.body, label %switch.next, !dbg !2390

switch.body:                                      ; preds = %binop.done
  ret i1 true, !dbg !2394

switch.next:                                      ; preds = %binop.done
    #dbg_value(i32 %r, !2386, !DIExpression(), !2395)
  %3 = icmp slt i32 57343, %r, !dbg !2396
  br i1 %3, label %binop.rhs1, label %binop.done2, !dbg !2390

binop.rhs1:                                       ; preds = %switch.next
    #dbg_value(i32 %r, !2386, !DIExpression(), !2397)
  %4 = icmp sle i32 %r, 1114111, !dbg !2398
  br label %binop.done2, !dbg !2390

binop.done2:                                      ; preds = %binop.rhs1, %switch.next
  %5 = phi i1 [ false, %switch.next ], [ %4, %binop.rhs1 ], !dbg !2399
  br i1 %5, label %switch.body3, label %switch.next4, !dbg !2390

switch.body3:                                     ; preds = %binop.done2
  ret i1 true, !dbg !2400

switch.next4:                                     ; preds = %binop.done2
  ret i1 false, !dbg !2401
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable(sync)
define internal i8 @"(*internal/reflectlite.RawType).Kind"(ptr dereferenceable_or_null(1) %t, ptr %context) #1 !dbg !2402 {
entry:
    #dbg_value(ptr %t, !2406, !DIExpression(), !2408)
    #dbg_value(ptr %t, !2406, !DIExpression(), !2409)
  %0 = icmp eq ptr %t, null, !dbg !2410
  br i1 %0, label %if.then, label %if.done, !dbg !2411

if.then:                                          ; preds = %entry
  ret i8 0, !dbg !2412

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2406, !DIExpression(), !2413)
  %1 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2414
    #dbg_value(i64 %1, !2407, !DIExpression(), !2415)
    #dbg_value(i64 %1, !2407, !DIExpression(), !2416)
  %2 = icmp ne i64 %1, 0, !dbg !2417
  br i1 %2, label %if.then1, label %if.done2, !dbg !2411

if.then1:                                         ; preds = %if.done
  ret i8 21, !dbg !2418

if.done2:                                         ; preds = %if.done
    #dbg_value(ptr %t, !2406, !DIExpression(), !2419)
  %3 = icmp eq ptr %t, null, !dbg !2420
  br i1 %3, label %gep.throw, label %gep.next, !dbg !2420

gep.next:                                         ; preds = %if.done2
  %4 = getelementptr inbounds %"internal/reflectlite.RawType", ptr %t, i32 0, i32 0, !dbg !2420
  %5 = icmp eq ptr %4, null, !dbg !2420
  br i1 %5, label %deref.throw, label %deref.next, !dbg !2420

deref.next:                                       ; preds = %gep.next
  %6 = load i8, ptr %4, align 1, !dbg !2420
  %7 = and i8 %6, 31, !dbg !2421
  ret i8 %7, !dbg !2422

gep.throw:                                        ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2420
  unreachable, !dbg !2420

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2420
  unreachable, !dbg !2420
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).elem"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2423 {
entry:
    #dbg_value(ptr %t, !2425, !DIExpression(), !2429)
    #dbg_value(ptr %t, !2425, !DIExpression(), !2430)
  %0 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2431
    #dbg_value(i64 %0, !2426, !DIExpression(), !2432)
    #dbg_value(i64 %0, !2426, !DIExpression(), !2433)
  %1 = icmp ne i64 %0, 0, !dbg !2434
  br i1 %1, label %if.then, label %if.done, !dbg !2435

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2425, !DIExpression(), !2436)
  %2 = getelementptr i8, ptr %t, i64 -1, !dbg !2437
  ret ptr %2, !dbg !2438

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2425, !DIExpression(), !2439)
  %3 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2440
    #dbg_value(ptr %3, !2427, !DIExpression(), !2441)
    #dbg_value(ptr %3, !2427, !DIExpression(), !2442)
  %4 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %3, ptr undef), !dbg !2443
  %5 = icmp eq i8 %4, 21, !dbg !2444
  br i1 %5, label %switch.body, label %switch.next, !dbg !2435

switch.body:                                      ; preds = %if.done
    #dbg_value(ptr %3, !2427, !DIExpression(), !2445)
  %6 = getelementptr inbounds %"internal/reflectlite.ptrType", ptr %3, i32 0, i32 2, !dbg !2446
  %7 = icmp eq ptr %6, null, !dbg !2446
  br i1 %7, label %deref.throw, label %deref.next, !dbg !2446

deref.next:                                       ; preds = %switch.body
  %8 = load ptr, ptr %6, align 8, !dbg !2446
  ret ptr %8, !dbg !2447

switch.next:                                      ; preds = %if.done
  %9 = icmp eq i8 %4, 19, !dbg !2448
  br i1 %9, label %switch.body1, label %switch.next2, !dbg !2435

switch.body1:                                     ; preds = %switch.next4, %switch.next3, %switch.next2, %switch.next
    #dbg_value(ptr %3, !2427, !DIExpression(), !2449)
  %10 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %3, i32 0, i32 3, !dbg !2450
  %11 = icmp eq ptr %10, null, !dbg !2450
  br i1 %11, label %deref.throw6, label %deref.next7, !dbg !2450

deref.next7:                                      ; preds = %switch.body1
  %12 = load ptr, ptr %10, align 8, !dbg !2450
  ret ptr %12, !dbg !2451

switch.next2:                                     ; preds = %switch.next
  %13 = icmp eq i8 %4, 22, !dbg !2452
  br i1 %13, label %switch.body1, label %switch.next3, !dbg !2435

switch.next3:                                     ; preds = %switch.next2
  %14 = icmp eq i8 %4, 23, !dbg !2453
  br i1 %14, label %switch.body1, label %switch.next4, !dbg !2435

switch.next4:                                     ; preds = %switch.next3
  %15 = icmp eq i8 %4, 25, !dbg !2454
  br i1 %15, label %switch.body1, label %switch.next5, !dbg !2435

switch.next5:                                     ; preds = %switch.next4
  %16 = load ptr, ptr @"internal/reflectlite.errTypeElem", align 8, !dbg !2455
    #dbg_value(ptr %16, !2428, !DIExpression(), !2455)
  %17 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %16, 1, !dbg !2455
  %18 = extractvalue { ptr, ptr } %17, 0, !dbg !2456
  %19 = extractvalue { ptr, ptr } %17, 1, !dbg !2456
  call void @runtime._panic(ptr %18, ptr %19, ptr undef), !dbg !2456
  unreachable, !dbg !2456

deref.throw:                                      ; preds = %switch.body
  call void @runtime.nilPanic(ptr undef), !dbg !2446
  unreachable, !dbg !2446

deref.throw6:                                     ; preds = %switch.body1
  call void @runtime.nilPanic(ptr undef), !dbg !2450
  unreachable, !dbg !2450
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).Len"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2457 {
entry:
    #dbg_value(ptr %t, !2459, !DIExpression(), !2461)
    #dbg_value(ptr %t, !2459, !DIExpression(), !2462)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2463
  %1 = icmp ne i8 %0, 23, !dbg !2464
  br i1 %1, label %if.then, label %if.done, !dbg !2465

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeLen", align 8, !dbg !2466
    #dbg_value(ptr %2, !2460, !DIExpression(), !2466)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2466
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2467
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2467
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2467
  unreachable, !dbg !2467

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2459, !DIExpression(), !2468)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2469
  %7 = getelementptr inbounds %"internal/reflectlite.arrayType", ptr %6, i32 0, i32 4, !dbg !2470
  %8 = icmp eq ptr %7, null, !dbg !2470
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2470

deref.next:                                       ; preds = %if.done
  %9 = load i64, ptr %7, align 8, !dbg !2470
  ret i64 %9, !dbg !2471

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2470
  unreachable, !dbg !2470
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).underlying"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2472 {
entry:
    #dbg_value(ptr %t, !2474, !DIExpression(), !2475)
    #dbg_value(ptr %t, !2474, !DIExpression(), !2476)
  %0 = call i1 @"(*internal/reflectlite.RawType).isNamed"(ptr %t, ptr undef), !dbg !2477
  br i1 %0, label %if.then, label %if.done, !dbg !2478

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2474, !DIExpression(), !2479)
  %1 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %t, i32 0, i32 3, !dbg !2480
  %2 = icmp eq ptr %1, null, !dbg !2480
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2480

deref.next:                                       ; preds = %if.then
  %3 = load ptr, ptr %1, align 8, !dbg !2480
  ret ptr %3, !dbg !2481

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2474, !DIExpression(), !2482)
  ret ptr %t, !dbg !2483

deref.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2480
  unreachable, !dbg !2480
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*internal/reflectlite.RawType).isNamed"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2484 {
entry:
    #dbg_value(ptr %t, !2486, !DIExpression(), !2488)
    #dbg_value(ptr %t, !2486, !DIExpression(), !2489)
  %0 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2490
    #dbg_value(i64 %0, !2487, !DIExpression(), !2491)
    #dbg_value(i64 %0, !2487, !DIExpression(), !2492)
  %1 = icmp ne i64 %0, 0, !dbg !2493
  br i1 %1, label %if.then, label %if.done, !dbg !2494

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !2495

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2486, !DIExpression(), !2496)
  %2 = icmp eq ptr %t, null, !dbg !2497
  br i1 %2, label %gep.throw, label %gep.next, !dbg !2497

gep.next:                                         ; preds = %if.done
  %3 = getelementptr inbounds %"internal/reflectlite.RawType", ptr %t, i32 0, i32 0, !dbg !2497
  %4 = icmp eq ptr %3, null, !dbg !2497
  br i1 %4, label %deref.throw, label %deref.next, !dbg !2497

deref.next:                                       ; preds = %gep.next
  %5 = load i8, ptr %3, align 1, !dbg !2497
  %6 = and i8 %5, 32, !dbg !2498
  %7 = icmp ne i8 %6, 0, !dbg !2499
  ret i1 %7, !dbg !2500

gep.throw:                                        ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2497
  unreachable, !dbg !2497

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2497
  unreachable, !dbg !2497
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2501 {
entry:
    #dbg_value(ptr %t, !2503, !DIExpression(), !2504)
    #dbg_value(ptr %t, !2503, !DIExpression(), !2505)
  %0 = ptrtoint ptr %t to i64, !dbg !2506
  %1 = and i64 %0, 3, !dbg !2507
  ret i64 %1, !dbg !2508
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.TypeError).Error"(ptr dereferenceable_or_null(16) %e, ptr %context) unnamed_addr #1 !dbg !2509 {
entry:
    #dbg_value(ptr %e, !2513, !DIExpression(), !2514)
    #dbg_value(ptr %e, !2513, !DIExpression(), !2515)
  %0 = icmp eq ptr %e, null, !dbg !2516
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2516

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds { %runtime._string }, ptr %e, i32 0, i32 0, !dbg !2516
  %2 = icmp eq ptr %1, null, !dbg !2516
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2516

deref.next:                                       ; preds = %gep.next
  %3 = load %runtime._string, ptr %1, align 8, !dbg !2516
  %4 = extractvalue %runtime._string %3, 0, !dbg !2517
  %5 = extractvalue %runtime._string %3, 1, !dbg !2517
  %6 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.111", i64 30, ptr %4, i64 %5, ptr undef), !dbg !2517
  %7 = extractvalue %runtime._string %6, 0, !dbg !2518
  %8 = extractvalue %runtime._string %6, 1, !dbg !2518
  %9 = call %runtime._string @runtime.stringConcat(ptr %7, i64 %8, ptr @"internal/reflectlite$string.112", i64 16, ptr undef), !dbg !2518
  ret %runtime._string %9, !dbg !2519

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2516
  unreachable, !dbg !2516

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2516
  unreachable, !dbg !2516
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).ChanDir"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2520 {
entry:
    #dbg_value(ptr %t, !2522, !DIExpression(), !2525)
    #dbg_value(ptr %t, !2522, !DIExpression(), !2526)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2527
  %1 = icmp ne i8 %0, 19, !dbg !2528
  br i1 %1, label %if.then, label %if.done, !dbg !2529

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeChanDir", align 8, !dbg !2530
    #dbg_value(ptr %2, !2523, !DIExpression(), !2530)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2530
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2531
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2531
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2531
  unreachable, !dbg !2531

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2522, !DIExpression(), !2532)
  %6 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %t, i32 0, i32 1, !dbg !2533
  %7 = icmp eq ptr %6, null, !dbg !2533
  br i1 %7, label %deref.throw, label %deref.next, !dbg !2533

deref.next:                                       ; preds = %if.done
  %8 = load i16, ptr %6, align 2, !dbg !2533
  %9 = zext i16 %8 to i64, !dbg !2534
    #dbg_value(i64 %9, !2524, !DIExpression(), !2535)
    #dbg_value(i64 %9, !2524, !DIExpression(), !2536)
  ret i64 %9, !dbg !2537

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2533
  unreachable, !dbg !2533
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).NumField"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2538 {
entry:
    #dbg_value(ptr %t, !2540, !DIExpression(), !2542)
    #dbg_value(ptr %t, !2540, !DIExpression(), !2543)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2544
  %1 = icmp ne i8 %0, 26, !dbg !2545
  br i1 %1, label %if.then, label %if.done, !dbg !2546

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeNumField", align 8, !dbg !2547
    #dbg_value(ptr %2, !2541, !DIExpression(), !2547)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2547
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2548
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2548
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2548
  unreachable, !dbg !2548

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2540, !DIExpression(), !2549)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2550
  %7 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 5, !dbg !2551
  %8 = icmp eq ptr %7, null, !dbg !2551
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2551

deref.next:                                       ; preds = %if.done
  %9 = load i16, ptr %7, align 2, !dbg !2551
  %10 = zext i16 %9 to i64, !dbg !2552
  ret i64 %10, !dbg !2553

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2551
  unreachable, !dbg !2551
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.RawType).String"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2554 {
entry:
    #dbg_value(ptr %t, !2556, !DIExpression(), !2572)
    #dbg_value(ptr %t, !2556, !DIExpression(), !2573)
  %f = alloca %"internal/reflectlite.rawStructField", align 8, !dbg !2574
  %0 = call i1 @"(*internal/reflectlite.RawType).isNamed"(ptr %t, ptr undef), !dbg !2574
  br i1 %0, label %if.then, label %if.done2, !dbg !2575

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2556, !DIExpression(), !2576)
  %1 = call %runtime._string @"(*internal/reflectlite.RawType).name"(ptr %t, ptr undef), !dbg !2577
    #dbg_value(%runtime._string %1, !2557, !DIExpression(), !2578)
    #dbg_value(%runtime._string %1, !2557, !DIExpression(), !2579)
  %len = extractvalue %runtime._string %1, 1, !dbg !2580
  %2 = icmp uge i64 0, %len, !dbg !2580
  br i1 %2, label %lookup.throw, label %lookup.next, !dbg !2580

lookup.next:                                      ; preds = %if.then
  %3 = extractvalue %runtime._string %1, 0, !dbg !2580
  %4 = getelementptr inbounds i8, ptr %3, i64 0, !dbg !2580
  %5 = load i8, ptr %4, align 1, !dbg !2580
  %6 = icmp eq i8 %5, 46, !dbg !2581
  br i1 %6, label %if.then1, label %if.done, !dbg !2575

if.then1:                                         ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2557, !DIExpression(), !2582)
  %7 = extractvalue %runtime._string %1, 0, !dbg !2583
  %8 = extractvalue %runtime._string %1, 1, !dbg !2583
  %slice.lowhigh = icmp ugt i64 1, %8, !dbg !2583
  %slice.highmax = icmp ugt i64 %8, %8, !dbg !2583
  %slice.maxcap = icmp ugt i64 %8, %8, !dbg !2583
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2583
  %slice.lowcap = or i1 %slice.lowmax, %slice.maxcap, !dbg !2583
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2583

slice.next:                                       ; preds = %if.then1
  %9 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !2583
  %10 = sub i64 %8, 1, !dbg !2583
  %11 = insertvalue %runtime._string undef, ptr %9, 0, !dbg !2583
  %12 = insertvalue %runtime._string %11, i64 %10, 1, !dbg !2583
  ret %runtime._string %12, !dbg !2584

if.done:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2557, !DIExpression(), !2585)
  ret %runtime._string %1, !dbg !2586

if.done2:                                         ; preds = %entry
    #dbg_value(ptr %t, !2556, !DIExpression(), !2587)
  %13 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2588
  %14 = icmp eq i8 %13, 19, !dbg !2589
  br i1 %14, label %switch.body, label %switch.next10, !dbg !2575

switch.body:                                      ; preds = %if.done2
    #dbg_value(ptr %t, !2556, !DIExpression(), !2590)
  %15 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2591
  %16 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %15, ptr undef), !dbg !2592
    #dbg_value(%runtime._string %16, !2558, !DIExpression(), !2593)
    #dbg_value(ptr %t, !2556, !DIExpression(), !2594)
  %17 = call i64 @"(*internal/reflectlite.RawType).ChanDir"(ptr %t, ptr undef), !dbg !2595
  %18 = icmp eq i64 %17, 2, !dbg !2596
  br i1 %18, label %switch.body3, label %switch.next, !dbg !2575

switch.body3:                                     ; preds = %switch.body
    #dbg_value(%runtime._string %16, !2558, !DIExpression(), !2597)
  %19 = extractvalue %runtime._string %16, 0, !dbg !2598
  %20 = extractvalue %runtime._string %16, 1, !dbg !2598
  %21 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.87", i64 7, ptr %19, i64 %20, ptr undef), !dbg !2598
  ret %runtime._string %21, !dbg !2599

switch.next:                                      ; preds = %switch.body
  %22 = icmp eq i64 %17, 1, !dbg !2600
  br i1 %22, label %switch.body4, label %switch.next5, !dbg !2575

switch.body4:                                     ; preds = %switch.next
    #dbg_value(%runtime._string %16, !2558, !DIExpression(), !2601)
  %23 = extractvalue %runtime._string %16, 0, !dbg !2602
  %24 = extractvalue %runtime._string %16, 1, !dbg !2602
  %25 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.88", i64 7, ptr %23, i64 %24, ptr undef), !dbg !2602
  ret %runtime._string %25, !dbg !2603

switch.next5:                                     ; preds = %switch.next
  %26 = icmp eq i64 %17, 3, !dbg !2604
  br i1 %26, label %switch.body6, label %switch.next9, !dbg !2575

switch.body6:                                     ; preds = %switch.next5
    #dbg_value(%runtime._string %16, !2558, !DIExpression(), !2605)
  %len29 = extractvalue %runtime._string %16, 1, !dbg !2606
  %27 = icmp uge i64 0, %len29, !dbg !2606
  br i1 %27, label %lookup.throw30, label %lookup.next31, !dbg !2606

lookup.next31:                                    ; preds = %switch.body6
  %28 = extractvalue %runtime._string %16, 0, !dbg !2606
  %29 = getelementptr inbounds i8, ptr %28, i64 0, !dbg !2606
  %30 = load i8, ptr %29, align 1, !dbg !2606
  %31 = icmp eq i8 %30, 60, !dbg !2607
  br i1 %31, label %if.then7, label %if.done8, !dbg !2575

if.then7:                                         ; preds = %lookup.next31
    #dbg_value(%runtime._string %16, !2558, !DIExpression(), !2608)
  %32 = extractvalue %runtime._string %16, 0, !dbg !2609
  %33 = extractvalue %runtime._string %16, 1, !dbg !2609
  %34 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.89", i64 6, ptr %32, i64 %33, ptr undef), !dbg !2609
  %35 = extractvalue %runtime._string %34, 0, !dbg !2610
  %36 = extractvalue %runtime._string %34, 1, !dbg !2610
  %37 = call %runtime._string @runtime.stringConcat(ptr %35, i64 %36, ptr @"internal/reflectlite$string.90", i64 1, ptr undef), !dbg !2610
  ret %runtime._string %37, !dbg !2611

if.done8:                                         ; preds = %lookup.next31
    #dbg_value(%runtime._string %16, !2558, !DIExpression(), !2612)
  %38 = extractvalue %runtime._string %16, 0, !dbg !2613
  %39 = extractvalue %runtime._string %16, 1, !dbg !2613
  %40 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.91", i64 5, ptr %38, i64 %39, ptr undef), !dbg !2613
  ret %runtime._string %40, !dbg !2614

switch.next9:                                     ; preds = %switch.next5
    #dbg_value(ptr %t, !2556, !DIExpression(), !2615)
  %41 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2616
  %42 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %41, ptr undef), !dbg !2617
  ret %runtime._string %42, !dbg !2618

switch.next10:                                    ; preds = %if.done2
  %43 = icmp eq i8 %13, 21, !dbg !2619
  br i1 %43, label %switch.body11, label %switch.next12, !dbg !2575

switch.body11:                                    ; preds = %switch.next10
    #dbg_value(ptr %t, !2556, !DIExpression(), !2620)
  %44 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2621
  %45 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %44, ptr undef), !dbg !2622
  %46 = extractvalue %runtime._string %45, 0, !dbg !2623
  %47 = extractvalue %runtime._string %45, 1, !dbg !2623
  %48 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.92", i64 1, ptr %46, i64 %47, ptr undef), !dbg !2623
  ret %runtime._string %48, !dbg !2624

switch.next12:                                    ; preds = %switch.next10
  %49 = icmp eq i8 %13, 22, !dbg !2625
  br i1 %49, label %switch.body13, label %switch.next14, !dbg !2575

switch.body13:                                    ; preds = %switch.next12
    #dbg_value(ptr %t, !2556, !DIExpression(), !2626)
  %50 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2627
  %51 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %50, ptr undef), !dbg !2628
  %52 = extractvalue %runtime._string %51, 0, !dbg !2629
  %53 = extractvalue %runtime._string %51, 1, !dbg !2629
  %54 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.93", i64 2, ptr %52, i64 %53, ptr undef), !dbg !2629
  ret %runtime._string %54, !dbg !2630

switch.next14:                                    ; preds = %switch.next12
  %55 = icmp eq i8 %13, 23, !dbg !2631
  br i1 %55, label %switch.body15, label %switch.next16, !dbg !2575

switch.body15:                                    ; preds = %switch.next14
    #dbg_value(ptr %t, !2556, !DIExpression(), !2632)
  %56 = call i64 @"(*internal/reflectlite.RawType).Len"(ptr %t, ptr undef), !dbg !2633
  %57 = call %runtime._string @"internal/itoa.Itoa"(i64 %56, ptr undef), !dbg !2634
  %58 = extractvalue %runtime._string %57, 0, !dbg !2635
  %59 = extractvalue %runtime._string %57, 1, !dbg !2635
  %60 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.94", i64 1, ptr %58, i64 %59, ptr undef), !dbg !2635
  %61 = extractvalue %runtime._string %60, 0, !dbg !2636
  %62 = extractvalue %runtime._string %60, 1, !dbg !2636
  %63 = call %runtime._string @runtime.stringConcat(ptr %61, i64 %62, ptr @"internal/reflectlite$string.95", i64 1, ptr undef), !dbg !2636
    #dbg_value(ptr %t, !2556, !DIExpression(), !2637)
  %64 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2638
  %65 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %64, ptr undef), !dbg !2639
  %66 = extractvalue %runtime._string %63, 0, !dbg !2640
  %67 = extractvalue %runtime._string %63, 1, !dbg !2640
  %68 = extractvalue %runtime._string %65, 0, !dbg !2640
  %69 = extractvalue %runtime._string %65, 1, !dbg !2640
  %70 = call %runtime._string @runtime.stringConcat(ptr %66, i64 %67, ptr %68, i64 %69, ptr undef), !dbg !2640
  ret %runtime._string %70, !dbg !2641

switch.next16:                                    ; preds = %switch.next14
  %71 = icmp eq i8 %13, 25, !dbg !2642
  br i1 %71, label %switch.body17, label %switch.next18, !dbg !2575

switch.body17:                                    ; preds = %switch.next16
    #dbg_value(ptr %t, !2556, !DIExpression(), !2643)
  %72 = call ptr @"(*internal/reflectlite.RawType).key"(ptr %t, ptr undef), !dbg !2644
  %73 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %72, ptr undef), !dbg !2645
  %74 = extractvalue %runtime._string %73, 0, !dbg !2646
  %75 = extractvalue %runtime._string %73, 1, !dbg !2646
  %76 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.96", i64 4, ptr %74, i64 %75, ptr undef), !dbg !2646
  %77 = extractvalue %runtime._string %76, 0, !dbg !2647
  %78 = extractvalue %runtime._string %76, 1, !dbg !2647
  %79 = call %runtime._string @runtime.stringConcat(ptr %77, i64 %78, ptr @"internal/reflectlite$string.97", i64 1, ptr undef), !dbg !2647
    #dbg_value(ptr %t, !2556, !DIExpression(), !2648)
  %80 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2649
  %81 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %80, ptr undef), !dbg !2650
  %82 = extractvalue %runtime._string %79, 0, !dbg !2651
  %83 = extractvalue %runtime._string %79, 1, !dbg !2651
  %84 = extractvalue %runtime._string %81, 0, !dbg !2651
  %85 = extractvalue %runtime._string %81, 1, !dbg !2651
  %86 = call %runtime._string @runtime.stringConcat(ptr %82, i64 %83, ptr %84, i64 %85, ptr undef), !dbg !2651
  ret %runtime._string %86, !dbg !2652

switch.next18:                                    ; preds = %switch.next16
  %87 = icmp eq i8 %13, 26, !dbg !2653
  br i1 %87, label %switch.body19, label %switch.next26, !dbg !2575

switch.body19:                                    ; preds = %switch.next18
    #dbg_value(ptr %t, !2556, !DIExpression(), !2654)
  %88 = call i64 @"(*internal/reflectlite.RawType).NumField"(ptr %t, ptr undef), !dbg !2655
    #dbg_value(i64 %88, !2559, !DIExpression(), !2656)
    #dbg_value(i64 %88, !2559, !DIExpression(), !2657)
  %89 = icmp eq i64 %88, 0, !dbg !2658
  br i1 %89, label %if.then20, label %if.done21, !dbg !2575

if.then20:                                        ; preds = %switch.body19
  ret %runtime._string { ptr @"internal/reflectlite$string.98", i64 9 }, !dbg !2659

if.done21:                                        ; preds = %switch.body19
    #dbg_value(%runtime._string poison, !2560, !DIExpression(), !2660)
    #dbg_value(i64 0, !2561, !DIExpression(), !2661)
  br label %for.loop, !dbg !2575

for.loop:                                         ; preds = %if.done25, %if.done21
  %90 = phi %runtime._string [ { ptr @"internal/reflectlite$string.106", i64 8 }, %if.done21 ], [ %144, %if.done25 ], !dbg !2660
  %91 = phi i64 [ 0, %if.done21 ], [ %145, %if.done25 ], !dbg !2661
    #dbg_value(i64 %91, !2561, !DIExpression(), !2662)
    #dbg_value(i64 %88, !2559, !DIExpression(), !2663)
  %92 = icmp slt i64 %91, %88, !dbg !2664
  br i1 %92, label %for.body, label %for.done, !dbg !2575

for.body:                                         ; preds = %for.loop
  store %"internal/reflectlite.rawStructField" zeroinitializer, ptr %f, align 8, !dbg !2574
    #dbg_value(ptr %t, !2556, !DIExpression(), !2665)
    #dbg_value(i64 %91, !2561, !DIExpression(), !2666)
  %93 = call %"internal/reflectlite.rawStructField" @"(*internal/reflectlite.RawType).rawField"(ptr %t, i64 %91, ptr undef), !dbg !2667
  store %"internal/reflectlite.rawStructField" %93, ptr %f, align 8, !dbg !2668
    #dbg_value(%"internal/reflectlite.rawStructField" %93, !2562, !DIExpression(), !2668)
  %94 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 0, !dbg !2669
  %95 = icmp eq ptr %94, null, !dbg !2669
  br i1 %95, label %deref.throw, label %deref.next, !dbg !2669

deref.next:                                       ; preds = %for.body
  %96 = load %runtime._string, ptr %94, align 8, !dbg !2669
  %97 = extractvalue %runtime._string %96, 0, !dbg !2670
  %98 = extractvalue %runtime._string %96, 1, !dbg !2670
  %99 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.100", i64 1, ptr %97, i64 %98, ptr undef), !dbg !2670
  %100 = extractvalue %runtime._string %99, 0, !dbg !2671
  %101 = extractvalue %runtime._string %99, 1, !dbg !2671
  %102 = call %runtime._string @runtime.stringConcat(ptr %100, i64 %101, ptr @"internal/reflectlite$string.101", i64 1, ptr undef), !dbg !2671
  %103 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 2, !dbg !2672
  %104 = icmp eq ptr %103, null, !dbg !2672
  br i1 %104, label %deref.throw32, label %deref.next33, !dbg !2672

deref.next33:                                     ; preds = %deref.next
  %105 = load ptr, ptr %103, align 8, !dbg !2672
  %106 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %105, ptr undef), !dbg !2673
  %107 = extractvalue %runtime._string %102, 0, !dbg !2674
  %108 = extractvalue %runtime._string %102, 1, !dbg !2674
  %109 = extractvalue %runtime._string %106, 0, !dbg !2674
  %110 = extractvalue %runtime._string %106, 1, !dbg !2674
  %111 = call %runtime._string @runtime.stringConcat(ptr %107, i64 %108, ptr %109, i64 %110, ptr undef), !dbg !2674
  %112 = extractvalue %runtime._string %90, 0, !dbg !2675
  %113 = extractvalue %runtime._string %90, 1, !dbg !2675
  %114 = extractvalue %runtime._string %111, 0, !dbg !2675
  %115 = extractvalue %runtime._string %111, 1, !dbg !2675
  %116 = call %runtime._string @runtime.stringConcat(ptr %112, i64 %113, ptr %114, i64 %115, ptr undef), !dbg !2675
    #dbg_value(%runtime._string %116, !2560, !DIExpression(), !2675)
  %117 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 3, !dbg !2676
  %118 = icmp eq ptr %117, null, !dbg !2676
  br i1 %118, label %deref.throw34, label %deref.next35, !dbg !2676

deref.next35:                                     ; preds = %deref.next33
  %119 = load %runtime._string, ptr %117, align 8, !dbg !2676
  %120 = extractvalue %runtime._string %119, 0, !dbg !2677
  %121 = extractvalue %runtime._string %119, 1, !dbg !2677
  %122 = call i1 @runtime.stringEqual(ptr %120, i64 %121, ptr null, i64 0, ptr undef), !dbg !2677
  %123 = xor i1 %122, true, !dbg !2677
  br i1 %123, label %if.then22, label %if.done23, !dbg !2575

if.then22:                                        ; preds = %deref.next35
  %124 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 3, !dbg !2678
  %125 = icmp eq ptr %124, null, !dbg !2678
  br i1 %125, label %deref.throw36, label %deref.next37, !dbg !2678

deref.next37:                                     ; preds = %if.then22
  %126 = load %runtime._string, ptr %124, align 8, !dbg !2678
  %127 = extractvalue %runtime._string %126, 0, !dbg !2679
  %128 = extractvalue %runtime._string %126, 1, !dbg !2679
  %129 = call %runtime._string @"internal/reflectlite.quote"(ptr %127, i64 %128, ptr undef), !dbg !2679
  %130 = extractvalue %runtime._string %129, 0, !dbg !2680
  %131 = extractvalue %runtime._string %129, 1, !dbg !2680
  %132 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.102", i64 1, ptr %130, i64 %131, ptr undef), !dbg !2680
  %133 = extractvalue %runtime._string %116, 0, !dbg !2681
  %134 = extractvalue %runtime._string %116, 1, !dbg !2681
  %135 = extractvalue %runtime._string %132, 0, !dbg !2681
  %136 = extractvalue %runtime._string %132, 1, !dbg !2681
  %137 = call %runtime._string @runtime.stringConcat(ptr %133, i64 %134, ptr %135, i64 %136, ptr undef), !dbg !2681
    #dbg_value(%runtime._string %137, !2560, !DIExpression(), !2681)
  br label %if.done23, !dbg !2575

if.done23:                                        ; preds = %deref.next37, %deref.next35
  %138 = phi %runtime._string [ %116, %deref.next35 ], [ %137, %deref.next37 ], !dbg !2660
    #dbg_value(i64 %91, !2561, !DIExpression(), !2682)
    #dbg_value(i64 %88, !2559, !DIExpression(), !2683)
  %139 = sub i64 %88, 1, !dbg !2684
  %140 = icmp slt i64 %91, %139, !dbg !2685
  br i1 %140, label %if.then24, label %if.done25, !dbg !2575

if.then24:                                        ; preds = %if.done23
  %141 = extractvalue %runtime._string %138, 0, !dbg !2686
  %142 = extractvalue %runtime._string %138, 1, !dbg !2686
  %143 = call %runtime._string @runtime.stringConcat(ptr %141, i64 %142, ptr @"internal/reflectlite$string.103", i64 1, ptr undef), !dbg !2686
    #dbg_value(%runtime._string %143, !2560, !DIExpression(), !2686)
  br label %if.done25, !dbg !2575

if.done25:                                        ; preds = %if.then24, %if.done23
  %144 = phi %runtime._string [ %138, %if.done23 ], [ %143, %if.then24 ], !dbg !2660
  %145 = add i64 %91, 1, !dbg !2687
    #dbg_value(i64 %145, !2561, !DIExpression(), !2687)
  br label %for.loop, !dbg !2575

for.done:                                         ; preds = %for.loop
  %146 = extractvalue %runtime._string %90, 0, !dbg !2688
  %147 = extractvalue %runtime._string %90, 1, !dbg !2688
  %148 = call %runtime._string @runtime.stringConcat(ptr %146, i64 %147, ptr @"internal/reflectlite$string.104", i64 2, ptr undef), !dbg !2688
    #dbg_value(%runtime._string %148, !2560, !DIExpression(), !2688)
    #dbg_value(%runtime._string %148, !2560, !DIExpression(), !2689)
  ret %runtime._string %148, !dbg !2690

switch.next26:                                    ; preds = %switch.next18
  %149 = icmp eq i8 %13, 20, !dbg !2691
  br i1 %149, label %switch.body27, label %switch.next28, !dbg !2575

switch.body27:                                    ; preds = %switch.next26
  ret %runtime._string { ptr @"internal/reflectlite$string.105", i64 12 }, !dbg !2692

switch.next28:                                    ; preds = %switch.next26
    #dbg_value(ptr %t, !2556, !DIExpression(), !2693)
  %150 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2694
  %151 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %150, ptr undef), !dbg !2695
  ret %runtime._string %151, !dbg !2696

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2580
  unreachable, !dbg !2580

slice.throw:                                      ; preds = %if.then1
  call void @runtime.slicePanic(ptr undef), !dbg !2583
  unreachable, !dbg !2583

lookup.throw30:                                   ; preds = %switch.body6
  call void @runtime.lookupPanic(ptr undef), !dbg !2606
  unreachable, !dbg !2606

deref.throw:                                      ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !2669
  unreachable, !dbg !2669

deref.throw32:                                    ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !2672
  unreachable, !dbg !2672

deref.throw34:                                    ; preds = %deref.next33
  call void @runtime.nilPanic(ptr undef), !dbg !2676
  unreachable, !dbg !2676

deref.throw36:                                    ; preds = %if.then22
  call void @runtime.nilPanic(ptr undef), !dbg !2678
  unreachable, !dbg !2678
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).key"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2697 {
entry:
    #dbg_value(ptr %t, !2699, !DIExpression(), !2702)
    #dbg_value(ptr %t, !2699, !DIExpression(), !2703)
  %0 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2704
    #dbg_value(ptr %0, !2700, !DIExpression(), !2705)
    #dbg_value(ptr %0, !2700, !DIExpression(), !2706)
  %1 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %0, ptr undef), !dbg !2707
  %2 = icmp ne i8 %1, 25, !dbg !2708
  br i1 %2, label %if.then, label %if.done, !dbg !2709

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @"internal/reflectlite.errTypeKey", align 8, !dbg !2710
    #dbg_value(ptr %3, !2701, !DIExpression(), !2710)
  %4 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %3, 1, !dbg !2710
  %5 = extractvalue { ptr, ptr } %4, 0, !dbg !2711
  %6 = extractvalue { ptr, ptr } %4, 1, !dbg !2711
  call void @runtime._panic(ptr %5, ptr %6, ptr undef), !dbg !2711
  unreachable, !dbg !2711

if.done:                                          ; preds = %entry
    #dbg_value(ptr %0, !2700, !DIExpression(), !2712)
  %7 = getelementptr inbounds %"internal/reflectlite.namedType", ptr %0, i32 0, i32 4, !dbg !2713
  %8 = icmp eq ptr %7, null, !dbg !2713
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2713

deref.next:                                       ; preds = %if.done
  %9 = load ptr, ptr %7, align 8, !dbg !2713
  ret ptr %9, !dbg !2714

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2713
  unreachable, !dbg !2713
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.RawType).name"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2715 {
entry:
    #dbg_value(ptr %t, !2717, !DIExpression(), !2736)
    #dbg_value(ptr %t, !2717, !DIExpression(), !2737)
    #dbg_value(ptr %t, !2718, !DIExpression(), !2738)
    #dbg_value(ptr %t, !2718, !DIExpression(), !2739)
  %0 = getelementptr i8, ptr %t, i64 32, !dbg !2740
    #dbg_value(ptr %0, !2728, !DIExpression(), !2741)
    #dbg_value(ptr %t, !2718, !DIExpression(), !2742)
  %1 = getelementptr inbounds %"internal/reflectlite.namedType", ptr %t, i32 0, i32 1, !dbg !2743
  %2 = icmp eq ptr %1, null, !dbg !2743
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2743

deref.next:                                       ; preds = %entry
  %3 = load i16, ptr %1, align 2, !dbg !2743
  %4 = and i16 %3, -32768, !dbg !2744
  %5 = icmp ne i16 %4, 0, !dbg !2745
  br i1 %5, label %if.then, label %if.done, !dbg !2746

if.then:                                          ; preds = %deref.next
    #dbg_value(ptr %0, !2728, !DIExpression(), !2747)
    #dbg_value(ptr %0, !2729, !DIExpression(), !2748)
    #dbg_value(ptr %0, !2728, !DIExpression(), !2749)
    #dbg_value(ptr %0, !2729, !DIExpression(), !2750)
  %6 = getelementptr inbounds %"internal/reflectlite.methodSet", ptr %0, i32 0, i32 0, !dbg !2751
  %7 = icmp eq ptr %6, null, !dbg !2751
  br i1 %7, label %deref.throw1, label %deref.next2, !dbg !2751

deref.next2:                                      ; preds = %if.then
  %8 = load i64, ptr %6, align 8, !dbg !2751
  %9 = mul i64 %8, 8, !dbg !2752
  %10 = add i64 8, %9, !dbg !2753
  %11 = getelementptr i8, ptr %0, i64 %10, !dbg !2754
    #dbg_value(ptr %11, !2728, !DIExpression(), !2755)
  br label %if.done, !dbg !2746

if.done:                                          ; preds = %deref.next2, %deref.next
  %12 = phi ptr [ %0, %deref.next ], [ %11, %deref.next2 ], !dbg !2741
    #dbg_value(ptr %12, !2728, !DIExpression(), !2756)
  %13 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %12, ptr undef), !dbg !2757
  ret %runtime._string %13, !dbg !2758

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2743
  unreachable, !dbg !2743

deref.throw1:                                     ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2751
  unreachable, !dbg !2751
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/reflectlite.rawStructField" @"(*internal/reflectlite.RawType).rawField"(ptr dereferenceable_or_null(1) %t, i64 %n, ptr %context) unnamed_addr #1 !dbg !2759 {
entry:
    #dbg_value(ptr %t, !2763, !DIExpression(), !2787)
    #dbg_value(i64 %n, !2764, !DIExpression(), !2787)
    #dbg_value(ptr %t, !2763, !DIExpression(), !2788)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2789
  %1 = icmp ne i8 %0, 26, !dbg !2790
  br i1 %1, label %if.then, label %if.done, !dbg !2791

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeField", align 8, !dbg !2792
    #dbg_value(ptr %2, !2765, !DIExpression(), !2792)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2792
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2793
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2793
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2793
  unreachable, !dbg !2793

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2763, !DIExpression(), !2794)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2795
    #dbg_value(ptr %6, !2766, !DIExpression(), !2796)
    #dbg_value(i64 %n, !2764, !DIExpression(), !2797)
    #dbg_value(ptr %6, !2766, !DIExpression(), !2798)
  %7 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 5, !dbg !2799
  %8 = icmp eq ptr %7, null, !dbg !2799
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2799

deref.next:                                       ; preds = %if.done
  %9 = load i16, ptr %7, align 2, !dbg !2799
  %10 = zext i16 %9 to i64, !dbg !2800
  %11 = icmp uge i64 %n, %10, !dbg !2801
  br i1 %11, label %if.then1, label %if.done2, !dbg !2791

if.then1:                                         ; preds = %deref.next
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"internal/reflectlite$pack.108", ptr undef), !dbg !2802
  unreachable, !dbg !2802

if.done2:                                         ; preds = %deref.next
    #dbg_value(ptr %6, !2766, !DIExpression(), !2803)
  %12 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 6, !dbg !2804
  %13 = icmp eq ptr %12, null, !dbg !2805
  br i1 %13, label %gep.throw, label %gep.next, !dbg !2805

gep.next:                                         ; preds = %if.done2
  %14 = getelementptr inbounds [1 x { ptr, ptr }], ptr %12, i32 0, i64 0, !dbg !2805
    #dbg_value(i64 %n, !2764, !DIExpression(), !2806)
  %15 = mul i64 %n, 16, !dbg !2807
  %16 = getelementptr i8, ptr %14, i64 %15, !dbg !2808
    #dbg_value(ptr %16, !2780, !DIExpression(), !2809)
    #dbg_value(ptr %16, !2780, !DIExpression(), !2810)
  %17 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 1, !dbg !2811
  %18 = icmp eq ptr %17, null, !dbg !2811
  br i1 %18, label %deref.throw3, label %deref.next4, !dbg !2811

deref.next4:                                      ; preds = %gep.next
  %19 = load ptr, ptr %17, align 8, !dbg !2811
    #dbg_value(ptr %19, !2782, !DIExpression(), !2812)
    #dbg_value(ptr %19, !2782, !DIExpression(), !2813)
  %20 = load i8, ptr %19, align 1, !dbg !2814
    #dbg_value(i8 %20, !2783, !DIExpression(), !2815)
    #dbg_value(ptr %19, !2782, !DIExpression(), !2816)
  %21 = getelementptr i8, ptr %19, i64 1, !dbg !2817
    #dbg_value(ptr %21, !2782, !DIExpression(), !2818)
    #dbg_value(ptr %21, !2782, !DIExpression(), !2819)
  %22 = icmp eq ptr %21, null, !dbg !2820
  %23 = and i1 %22, true, !dbg !2820
  %24 = or i1 %23, false, !dbg !2820
  br i1 %24, label %unsafe.Slice.throw, label %unsafe.Slice.next, !dbg !2820

unsafe.Slice.next:                                ; preds = %deref.next4
  %25 = insertvalue { ptr, i64, i64 } undef, ptr %21, 0, !dbg !2820
  %26 = insertvalue { ptr, i64, i64 } %25, i64 5, 1, !dbg !2820
  %27 = insertvalue { ptr, i64, i64 } %26, i64 5, 2, !dbg !2820
  %28 = extractvalue { ptr, i64, i64 } %27, 0, !dbg !2821
  %29 = extractvalue { ptr, i64, i64 } %27, 1, !dbg !2821
  %30 = extractvalue { ptr, i64, i64 } %27, 2, !dbg !2821
  %31 = call { i32, i64 } @"internal/reflectlite.uvarint32"(ptr %28, i64 %29, i64 %30, ptr undef), !dbg !2821
  %32 = extractvalue { i32, i64 } %31, 0, !dbg !2821
    #dbg_value(i32 %32, !2784, !DIExpression(), !2822)
  %33 = extractvalue { i32, i64 } %31, 1, !dbg !2821
    #dbg_value(i64 %33, !2785, !DIExpression(), !2823)
    #dbg_value(ptr %21, !2782, !DIExpression(), !2824)
    #dbg_value(i64 %33, !2785, !DIExpression(), !2825)
  %34 = getelementptr i8, ptr %21, i64 %33, !dbg !2826
    #dbg_value(ptr %34, !2782, !DIExpression(), !2827)
    #dbg_value(ptr %34, !2782, !DIExpression(), !2828)
  %35 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %34, ptr undef), !dbg !2829
    #dbg_value(%runtime._string %35, !2786, !DIExpression(), !2830)
    #dbg_value(ptr %34, !2782, !DIExpression(), !2831)
    #dbg_value(%runtime._string %35, !2786, !DIExpression(), !2832)
  %len = extractvalue %runtime._string %35, 1, !dbg !2833
  %36 = getelementptr i8, ptr %34, i64 %len, !dbg !2834
    #dbg_value(ptr %36, !2782, !DIExpression(), !2835)
    #dbg_value(ptr %6, !2766, !DIExpression(), !2836)
    #dbg_value(ptr %16, !2780, !DIExpression(), !2837)
  %37 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 0, !dbg !2838
  %38 = icmp eq ptr %37, null, !dbg !2838
  br i1 %38, label %deref.throw5, label %deref.next6, !dbg !2838

deref.next6:                                      ; preds = %unsafe.Slice.next
  %39 = load ptr, ptr %37, align 8, !dbg !2838
    #dbg_value(ptr %36, !2782, !DIExpression(), !2839)
    #dbg_value(i8 %20, !2783, !DIExpression(), !2840)
    #dbg_value(%runtime._string %35, !2786, !DIExpression(), !2841)
    #dbg_value(i32 %32, !2784, !DIExpression(), !2842)
  %40 = extractvalue %runtime._string %35, 0, !dbg !2843
  %41 = extractvalue %runtime._string %35, 1, !dbg !2843
  %42 = call %"internal/reflectlite.rawStructField" @"internal/reflectlite.rawStructFieldFromPointer"(ptr %6, ptr %39, ptr %36, i8 %20, ptr %40, i64 %41, i32 %32, ptr undef), !dbg !2843
  ret %"internal/reflectlite.rawStructField" %42, !dbg !2844

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2799
  unreachable, !dbg !2799

gep.throw:                                        ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2805
  unreachable, !dbg !2805

deref.throw3:                                     ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2811
  unreachable, !dbg !2811

unsafe.Slice.throw:                               ; preds = %deref.next4
  call void @runtime.unsafeSlicePanic(ptr undef), !dbg !2820
  unreachable, !dbg !2820

deref.throw5:                                     ; preds = %unsafe.Slice.next
  call void @runtime.nilPanic(ptr undef), !dbg !2838
  unreachable, !dbg !2838
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"internal/reflectlite.uvarint32"(ptr %buf.data, i64 %buf.len, i64 %buf.cap, ptr %context) unnamed_addr #1 !dbg !2845 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %buf.data, 0, !dbg !2854
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %buf.len, 1, !dbg !2854
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %buf.cap, 2, !dbg !2854
    #dbg_value(ptr %buf.data, !2849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2854)
    #dbg_value(i64 %buf.len, !2849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2854)
    #dbg_value(i64 %buf.cap, !2849, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2854)
    #dbg_value(i32 0, !2850, !DIExpression(), !2855)
    #dbg_value(i64 0, !2851, !DIExpression(), !2856)
    #dbg_value({ ptr, i64, i64 } %2, !2849, !DIExpression(), !2857)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2858
  br label %rangeindex.loop, !dbg !2858

rangeindex.loop:                                  ; preds = %if.done, %entry
  %3 = phi i32 [ 0, %entry ], [ %23, %if.done ], !dbg !2855
  %4 = phi i64 [ 0, %entry ], [ %24, %if.done ], !dbg !2856
  %5 = phi i64 [ -1, %entry ], [ %6, %if.done ], !dbg !2858
  %6 = add i64 %5, 1, !dbg !2858
  %7 = icmp slt i64 %6, %len, !dbg !2858
  br i1 %7, label %rangeindex.body, label %rangeindex.done, !dbg !2858

rangeindex.body:                                  ; preds = %rangeindex.loop
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2857
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2857
  %8 = icmp uge i64 %6, %indexaddr.len, !dbg !2857
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !2857

lookup.next:                                      ; preds = %rangeindex.body
  %9 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %6, !dbg !2857
  %10 = load i8, ptr %9, align 1, !dbg !2858
    #dbg_value(i64 %6, !2852, !DIExpression(), !2859)
    #dbg_value(i8 %10, !2853, !DIExpression(), !2860)
    #dbg_value(i8 %10, !2853, !DIExpression(), !2861)
  %11 = icmp ult i8 %10, -128, !dbg !2862
  br i1 %11, label %if.then, label %if.done, !dbg !2858

if.then:                                          ; preds = %lookup.next
    #dbg_value(i32 %3, !2850, !DIExpression(), !2863)
    #dbg_value(i8 %10, !2853, !DIExpression(), !2864)
  %12 = zext i8 %10 to i32, !dbg !2865
    #dbg_value(i64 %4, !2851, !DIExpression(), !2866)
  %shift.overflow = icmp uge i64 %4, 32, !dbg !2867
  %13 = trunc i64 %4 to i32, !dbg !2867
  %14 = shl i32 %12, %13, !dbg !2867
  %shift.result = select i1 %shift.overflow, i32 0, i32 %14, !dbg !2867
  %15 = or i32 %3, %shift.result, !dbg !2868
    #dbg_value(i64 %6, !2852, !DIExpression(), !2869)
  %16 = add i64 %6, 1, !dbg !2870
  %17 = insertvalue { i32, i64 } zeroinitializer, i32 %15, 0, !dbg !2871
  %18 = insertvalue { i32, i64 } %17, i64 %16, 1, !dbg !2871
  ret { i32, i64 } %18, !dbg !2871

if.done:                                          ; preds = %lookup.next
    #dbg_value(i8 %10, !2853, !DIExpression(), !2872)
  %19 = and i8 %10, 127, !dbg !2873
  %20 = zext i8 %19 to i32, !dbg !2874
    #dbg_value(i64 %4, !2851, !DIExpression(), !2875)
  %shift.overflow1 = icmp uge i64 %4, 32, !dbg !2876
  %21 = trunc i64 %4 to i32, !dbg !2876
  %22 = shl i32 %20, %21, !dbg !2876
  %shift.result2 = select i1 %shift.overflow1, i32 0, i32 %22, !dbg !2876
  %23 = or i32 %3, %shift.result2, !dbg !2877
    #dbg_value(i32 %23, !2850, !DIExpression(), !2877)
  %24 = add i64 %4, 7, !dbg !2878
    #dbg_value(i64 %24, !2851, !DIExpression(), !2878)
  br label %rangeindex.loop, !dbg !2858

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret { i32, i64 } zeroinitializer, !dbg !2879

lookup.throw:                                     ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2857
  unreachable, !dbg !2857
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/reflectlite.readStringZ"(ptr %data, ptr %context) unnamed_addr #1 !dbg !2880 {
entry:
    #dbg_value(ptr %data, !2884, !DIExpression(), !2887)
    #dbg_value(ptr %data, !2884, !DIExpression(), !2888)
    #dbg_value(ptr %data, !2885, !DIExpression(), !2889)
    #dbg_value(i64 0, !2886, !DIExpression(), !2890)
  br label %for.loop, !dbg !2891

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi ptr [ %data, %entry ], [ %5, %for.body ], !dbg !2892
  %1 = phi i64 [ 0, %entry ], [ %4, %for.body ], !dbg !2890
    #dbg_value(ptr %0, !2884, !DIExpression(), !2893)
  %2 = load i8, ptr %0, align 1, !dbg !2894
  %3 = icmp ne i8 %2, 0, !dbg !2895
  br i1 %3, label %for.body, label %for.done, !dbg !2891

for.body:                                         ; preds = %for.loop
  %4 = add i64 %1, 1, !dbg !2896
    #dbg_value(i64 %4, !2886, !DIExpression(), !2896)
    #dbg_value(ptr %0, !2884, !DIExpression(), !2897)
  %5 = getelementptr i8, ptr %0, i64 1, !dbg !2898
    #dbg_value(ptr %5, !2884, !DIExpression(), !2899)
  br label %for.loop, !dbg !2891

for.done:                                         ; preds = %for.loop
  %complit = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 133 to ptr), ptr undef), !dbg !2900
  %6 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !2901
    #dbg_value(ptr %data, !2885, !DIExpression(), !2902)
  %7 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !2903
    #dbg_value(i64 %1, !2886, !DIExpression(), !2904)
  %8 = icmp eq ptr %6, null, !dbg !2901
  br i1 %8, label %store.throw, label %store.next, !dbg !2901

store.next:                                       ; preds = %for.done
  store ptr %data, ptr %6, align 8, !dbg !2901
    #dbg_value(ptr %data, !2885, !DIExpression(), !2902)
  %9 = icmp eq ptr %7, null, !dbg !2903
  br i1 %9, label %store.throw1, label %store.next2, !dbg !2903

store.next2:                                      ; preds = %store.next
  store i64 %1, ptr %7, align 8, !dbg !2903
    #dbg_value(i64 %1, !2886, !DIExpression(), !2904)
  %10 = load %runtime._string, ptr %complit, align 8, !dbg !2905
  ret %runtime._string %10, !dbg !2906

store.throw:                                      ; preds = %for.done
  call void @runtime.nilPanic(ptr undef), !dbg !2901
  unreachable, !dbg !2901

store.throw1:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !2903
  unreachable, !dbg !2903
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/reflectlite.rawStructField" @"internal/reflectlite.rawStructFieldFromPointer"(ptr dereferenceable_or_null(48) %descriptor, ptr dereferenceable_or_null(1) %fieldType, ptr %data, i8 %flagsByte, ptr readonly %name.data, i64 %name.len, i32 %offset, ptr %context) unnamed_addr #1 !dbg !2907 {
entry:
    #dbg_value(ptr %descriptor, !2911, !DIExpression(), !2920)
    #dbg_value(ptr %fieldType, !2912, !DIExpression(), !2920)
    #dbg_value(ptr %data, !2913, !DIExpression(), !2920)
    #dbg_value(i8 %flagsByte, !2914, !DIExpression(), !2920)
  %complit5 = alloca %"internal/reflectlite.rawStructField", align 8, !dbg !2920
  %0 = insertvalue %runtime._string zeroinitializer, ptr %name.data, 0, !dbg !2920
  %1 = insertvalue %runtime._string %0, i64 %name.len, 1, !dbg !2920
    #dbg_value(ptr %name.data, !2915, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2920)
    #dbg_value(i64 %name.len, !2915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2920)
    #dbg_value(i32 %offset, !2916, !DIExpression(), !2920)
    #dbg_value(%runtime._string zeroinitializer, !2917, !DIExpression(), !2921)
    #dbg_value(i8 %flagsByte, !2914, !DIExpression(), !2922)
  %2 = and i8 %flagsByte, 2, !dbg !2923
  %3 = icmp ne i8 %2, 0, !dbg !2924
  br i1 %3, label %if.then, label %if.done, !dbg !2925

if.then:                                          ; preds = %entry
    #dbg_value(ptr %data, !2913, !DIExpression(), !2926)
  %4 = getelementptr i8, ptr %data, i64 1, !dbg !2927
    #dbg_value(ptr %4, !2913, !DIExpression(), !2928)
    #dbg_value(ptr %4, !2913, !DIExpression(), !2929)
  %5 = load i8, ptr %4, align 1, !dbg !2930
  %6 = zext i8 %5 to i64, !dbg !2931
    #dbg_value(i64 %6, !2918, !DIExpression(), !2932)
    #dbg_value(ptr %4, !2913, !DIExpression(), !2933)
  %7 = getelementptr i8, ptr %4, i64 1, !dbg !2934
    #dbg_value(ptr %7, !2913, !DIExpression(), !2935)
  %complit = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 133 to ptr), ptr undef), !dbg !2936
  %8 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !2937
    #dbg_value(ptr %7, !2913, !DIExpression(), !2938)
  %9 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !2939
    #dbg_value(i64 %6, !2918, !DIExpression(), !2940)
  %10 = icmp eq ptr %8, null, !dbg !2937
  br i1 %10, label %store.throw, label %store.next, !dbg !2937

store.next:                                       ; preds = %if.then
  store ptr %7, ptr %8, align 8, !dbg !2937
    #dbg_value(ptr %7, !2913, !DIExpression(), !2938)
  %11 = icmp eq ptr %9, null, !dbg !2939
  br i1 %11, label %store.throw3, label %store.next4, !dbg !2939

store.next4:                                      ; preds = %store.next
  store i64 %6, ptr %9, align 8, !dbg !2939
    #dbg_value(i64 %6, !2918, !DIExpression(), !2940)
  %12 = load %runtime._string, ptr %complit, align 8, !dbg !2941
    #dbg_value(%runtime._string %12, !2917, !DIExpression(), !2942)
  br label %if.done, !dbg !2925

if.done:                                          ; preds = %store.next4, %entry
  %13 = phi %runtime._string [ zeroinitializer, %entry ], [ %12, %store.next4 ], !dbg !2921
    #dbg_value(%runtime._string zeroinitializer, !2919, !DIExpression(), !2943)
    #dbg_value(i8 %flagsByte, !2914, !DIExpression(), !2944)
  %14 = and i8 %flagsByte, 4, !dbg !2945
  %15 = icmp eq i8 %14, 0, !dbg !2946
  br i1 %15, label %if.then1, label %if.done2, !dbg !2925

if.then1:                                         ; preds = %if.done
    #dbg_value(ptr %descriptor, !2911, !DIExpression(), !2947)
  %16 = icmp eq ptr %descriptor, null, !dbg !2948
  br i1 %16, label %gep.throw, label %gep.next, !dbg !2948

gep.next:                                         ; preds = %if.then1
  %17 = getelementptr inbounds %"internal/reflectlite.structType", ptr %descriptor, i32 0, i32 3, !dbg !2948
  %18 = icmp eq ptr %17, null, !dbg !2948
  br i1 %18, label %deref.throw, label %deref.next, !dbg !2948

deref.next:                                       ; preds = %gep.next
  %19 = load ptr, ptr %17, align 8, !dbg !2948
  %20 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %19, ptr undef), !dbg !2949
    #dbg_value(%runtime._string %20, !2919, !DIExpression(), !2950)
  br label %if.done2, !dbg !2925

if.done2:                                         ; preds = %deref.next, %if.done
  %21 = phi %runtime._string [ zeroinitializer, %if.done ], [ %20, %deref.next ], !dbg !2943
  store %"internal/reflectlite.rawStructField" zeroinitializer, ptr %complit5, align 8, !dbg !2920
  %22 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 0, !dbg !2951
    #dbg_value(%runtime._string %1, !2915, !DIExpression(), !2952)
  %23 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 1, !dbg !2953
    #dbg_value(%runtime._string %21, !2919, !DIExpression(), !2954)
  %24 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 2, !dbg !2955
    #dbg_value(ptr %fieldType, !2912, !DIExpression(), !2956)
  %25 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 3, !dbg !2957
    #dbg_value(%runtime._string %13, !2917, !DIExpression(), !2958)
  %26 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 5, !dbg !2959
    #dbg_value(i8 %flagsByte, !2914, !DIExpression(), !2960)
  %27 = and i8 %flagsByte, 1, !dbg !2961
  %28 = icmp ne i8 %27, 0, !dbg !2962
  %29 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 4, !dbg !2963
    #dbg_value(i32 %offset, !2916, !DIExpression(), !2964)
  %30 = zext i32 %offset to i64, !dbg !2965
  %31 = icmp eq ptr %22, null, !dbg !2951
  br i1 %31, label %store.throw6, label %store.next7, !dbg !2951

store.next7:                                      ; preds = %if.done2
  store %runtime._string %1, ptr %22, align 8, !dbg !2951
    #dbg_value(%runtime._string %1, !2915, !DIExpression(), !2952)
  %32 = icmp eq ptr %23, null, !dbg !2953
  br i1 %32, label %store.throw8, label %store.next9, !dbg !2953

store.next9:                                      ; preds = %store.next7
  store %runtime._string %21, ptr %23, align 8, !dbg !2953
    #dbg_value(%runtime._string %21, !2919, !DIExpression(), !2954)
  %33 = icmp eq ptr %24, null, !dbg !2955
  br i1 %33, label %store.throw10, label %store.next11, !dbg !2955

store.next11:                                     ; preds = %store.next9
  store ptr %fieldType, ptr %24, align 8, !dbg !2955
    #dbg_value(ptr %fieldType, !2912, !DIExpression(), !2956)
  %34 = icmp eq ptr %25, null, !dbg !2957
  br i1 %34, label %store.throw12, label %store.next13, !dbg !2957

store.next13:                                     ; preds = %store.next11
  store %runtime._string %13, ptr %25, align 8, !dbg !2957
  %35 = icmp eq ptr %26, null, !dbg !2959
  br i1 %35, label %store.throw14, label %store.next15, !dbg !2959

store.next15:                                     ; preds = %store.next13
  store i1 %28, ptr %26, align 1, !dbg !2959
  %36 = icmp eq ptr %29, null, !dbg !2963
  br i1 %36, label %store.throw16, label %store.next17, !dbg !2963

store.next17:                                     ; preds = %store.next15
  store i64 %30, ptr %29, align 8, !dbg !2963
  %37 = load %"internal/reflectlite.rawStructField", ptr %complit5, align 8, !dbg !2966
  ret %"internal/reflectlite.rawStructField" %37, !dbg !2967

store.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2937
  unreachable, !dbg !2937

store.throw3:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !2939
  unreachable, !dbg !2939

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !2948
  unreachable, !dbg !2948

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2948
  unreachable, !dbg !2948

store.throw6:                                     ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2951
  unreachable, !dbg !2951

store.throw8:                                     ; preds = %store.next7
  call void @runtime.nilPanic(ptr undef), !dbg !2953
  unreachable, !dbg !2953

store.throw10:                                    ; preds = %store.next9
  call void @runtime.nilPanic(ptr undef), !dbg !2955
  unreachable, !dbg !2955

store.throw12:                                    ; preds = %store.next11
  call void @runtime.nilPanic(ptr undef), !dbg !2957
  unreachable, !dbg !2957

store.throw14:                                    ; preds = %store.next13
  call void @runtime.nilPanic(ptr undef), !dbg !2959
  unreachable, !dbg !2959

store.throw16:                                    ; preds = %store.next15
  call void @runtime.nilPanic(ptr undef), !dbg !2963
  unreachable, !dbg !2963
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.Kind).String"(i8 %k, ptr %context) unnamed_addr #1 !dbg !2968 {
entry:
    #dbg_value(i8 %k, !2973, !DIExpression(), !2974)
    #dbg_value(i8 %k, !2973, !DIExpression(), !2975)
  %0 = icmp eq i8 %k, 0, !dbg !2976
  br i1 %0, label %switch.body, label %switch.next, !dbg !2977

switch.body:                                      ; preds = %entry
  ret %runtime._string { ptr @"internal/reflectlite$string.41", i64 7 }, !dbg !2978

switch.next:                                      ; preds = %entry
  %1 = icmp eq i8 %k, 1, !dbg !2979
  br i1 %1, label %switch.body1, label %switch.next2, !dbg !2977

switch.body1:                                     ; preds = %switch.next
  ret %runtime._string { ptr @"internal/reflectlite$string.42", i64 4 }, !dbg !2980

switch.next2:                                     ; preds = %switch.next
  %2 = icmp eq i8 %k, 2, !dbg !2981
  br i1 %2, label %switch.body3, label %switch.next4, !dbg !2977

switch.body3:                                     ; preds = %switch.next2
  ret %runtime._string { ptr @"internal/reflectlite$string.43", i64 3 }, !dbg !2982

switch.next4:                                     ; preds = %switch.next2
  %3 = icmp eq i8 %k, 3, !dbg !2983
  br i1 %3, label %switch.body5, label %switch.next6, !dbg !2977

switch.body5:                                     ; preds = %switch.next4
  ret %runtime._string { ptr @"internal/reflectlite$string.44", i64 4 }, !dbg !2984

switch.next6:                                     ; preds = %switch.next4
  %4 = icmp eq i8 %k, 4, !dbg !2985
  br i1 %4, label %switch.body7, label %switch.next8, !dbg !2977

switch.body7:                                     ; preds = %switch.next6
  ret %runtime._string { ptr @"internal/reflectlite$string.45", i64 5 }, !dbg !2986

switch.next8:                                     ; preds = %switch.next6
  %5 = icmp eq i8 %k, 5, !dbg !2987
  br i1 %5, label %switch.body9, label %switch.next10, !dbg !2977

switch.body9:                                     ; preds = %switch.next8
  ret %runtime._string { ptr @"internal/reflectlite$string.46", i64 5 }, !dbg !2988

switch.next10:                                    ; preds = %switch.next8
  %6 = icmp eq i8 %k, 6, !dbg !2989
  br i1 %6, label %switch.body11, label %switch.next12, !dbg !2977

switch.body11:                                    ; preds = %switch.next10
  ret %runtime._string { ptr @"internal/reflectlite$string.47", i64 5 }, !dbg !2990

switch.next12:                                    ; preds = %switch.next10
  %7 = icmp eq i8 %k, 7, !dbg !2991
  br i1 %7, label %switch.body13, label %switch.next14, !dbg !2977

switch.body13:                                    ; preds = %switch.next12
  ret %runtime._string { ptr @"internal/reflectlite$string.48", i64 4 }, !dbg !2992

switch.next14:                                    ; preds = %switch.next12
  %8 = icmp eq i8 %k, 8, !dbg !2993
  br i1 %8, label %switch.body15, label %switch.next16, !dbg !2977

switch.body15:                                    ; preds = %switch.next14
  ret %runtime._string { ptr @"internal/reflectlite$string.49", i64 5 }, !dbg !2994

switch.next16:                                    ; preds = %switch.next14
  %9 = icmp eq i8 %k, 9, !dbg !2995
  br i1 %9, label %switch.body17, label %switch.next18, !dbg !2977

switch.body17:                                    ; preds = %switch.next16
  ret %runtime._string { ptr @"internal/reflectlite$string.50", i64 6 }, !dbg !2996

switch.next18:                                    ; preds = %switch.next16
  %10 = icmp eq i8 %k, 10, !dbg !2997
  br i1 %10, label %switch.body19, label %switch.next20, !dbg !2977

switch.body19:                                    ; preds = %switch.next18
  ret %runtime._string { ptr @"internal/reflectlite$string.51", i64 6 }, !dbg !2998

switch.next20:                                    ; preds = %switch.next18
  %11 = icmp eq i8 %k, 11, !dbg !2999
  br i1 %11, label %switch.body21, label %switch.next22, !dbg !2977

switch.body21:                                    ; preds = %switch.next20
  ret %runtime._string { ptr @"internal/reflectlite$string.52", i64 6 }, !dbg !3000

switch.next22:                                    ; preds = %switch.next20
  %12 = icmp eq i8 %k, 12, !dbg !3001
  br i1 %12, label %switch.body23, label %switch.next24, !dbg !2977

switch.body23:                                    ; preds = %switch.next22
  ret %runtime._string { ptr @"internal/reflectlite$string.53", i64 7 }, !dbg !3002

switch.next24:                                    ; preds = %switch.next22
  %13 = icmp eq i8 %k, 13, !dbg !3003
  br i1 %13, label %switch.body25, label %switch.next26, !dbg !2977

switch.body25:                                    ; preds = %switch.next24
  ret %runtime._string { ptr @"internal/reflectlite$string.54", i64 7 }, !dbg !3004

switch.next26:                                    ; preds = %switch.next24
  %14 = icmp eq i8 %k, 14, !dbg !3005
  br i1 %14, label %switch.body27, label %switch.next28, !dbg !2977

switch.body27:                                    ; preds = %switch.next26
  ret %runtime._string { ptr @"internal/reflectlite$string.55", i64 7 }, !dbg !3006

switch.next28:                                    ; preds = %switch.next26
  %15 = icmp eq i8 %k, 15, !dbg !3007
  br i1 %15, label %switch.body29, label %switch.next30, !dbg !2977

switch.body29:                                    ; preds = %switch.next28
  ret %runtime._string { ptr @"internal/reflectlite$string.56", i64 9 }, !dbg !3008

switch.next30:                                    ; preds = %switch.next28
  %16 = icmp eq i8 %k, 16, !dbg !3009
  br i1 %16, label %switch.body31, label %switch.next32, !dbg !2977

switch.body31:                                    ; preds = %switch.next30
  ret %runtime._string { ptr @"internal/reflectlite$string.57", i64 10 }, !dbg !3010

switch.next32:                                    ; preds = %switch.next30
  %17 = icmp eq i8 %k, 17, !dbg !3011
  br i1 %17, label %switch.body33, label %switch.next34, !dbg !2977

switch.body33:                                    ; preds = %switch.next32
  ret %runtime._string { ptr @"internal/reflectlite$string.58", i64 6 }, !dbg !3012

switch.next34:                                    ; preds = %switch.next32
  %18 = icmp eq i8 %k, 18, !dbg !3013
  br i1 %18, label %switch.body35, label %switch.next36, !dbg !2977

switch.body35:                                    ; preds = %switch.next34
  ret %runtime._string { ptr @"internal/reflectlite$string.59", i64 14 }, !dbg !3014

switch.next36:                                    ; preds = %switch.next34
  %19 = icmp eq i8 %k, 19, !dbg !3015
  br i1 %19, label %switch.body37, label %switch.next38, !dbg !2977

switch.body37:                                    ; preds = %switch.next36
  ret %runtime._string { ptr @"internal/reflectlite$string.60", i64 4 }, !dbg !3016

switch.next38:                                    ; preds = %switch.next36
  %20 = icmp eq i8 %k, 20, !dbg !3017
  br i1 %20, label %switch.body39, label %switch.next40, !dbg !2977

switch.body39:                                    ; preds = %switch.next38
  ret %runtime._string { ptr @"internal/reflectlite$string.61", i64 9 }, !dbg !3018

switch.next40:                                    ; preds = %switch.next38
  %21 = icmp eq i8 %k, 21, !dbg !3019
  br i1 %21, label %switch.body41, label %switch.next42, !dbg !2977

switch.body41:                                    ; preds = %switch.next40
  ret %runtime._string { ptr @"internal/reflectlite$string.62", i64 3 }, !dbg !3020

switch.next42:                                    ; preds = %switch.next40
  %22 = icmp eq i8 %k, 22, !dbg !3021
  br i1 %22, label %switch.body43, label %switch.next44, !dbg !2977

switch.body43:                                    ; preds = %switch.next42
  ret %runtime._string { ptr @"internal/reflectlite$string.63", i64 5 }, !dbg !3022

switch.next44:                                    ; preds = %switch.next42
  %23 = icmp eq i8 %k, 23, !dbg !3023
  br i1 %23, label %switch.body45, label %switch.next46, !dbg !2977

switch.body45:                                    ; preds = %switch.next44
  ret %runtime._string { ptr @"internal/reflectlite$string.64", i64 5 }, !dbg !3024

switch.next46:                                    ; preds = %switch.next44
  %24 = icmp eq i8 %k, 24, !dbg !3025
  br i1 %24, label %switch.body47, label %switch.next48, !dbg !2977

switch.body47:                                    ; preds = %switch.next46
  ret %runtime._string { ptr @"internal/reflectlite$string.65", i64 4 }, !dbg !3026

switch.next48:                                    ; preds = %switch.next46
  %25 = icmp eq i8 %k, 25, !dbg !3027
  br i1 %25, label %switch.body49, label %switch.next50, !dbg !2977

switch.body49:                                    ; preds = %switch.next48
  ret %runtime._string { ptr @"internal/reflectlite$string.66", i64 3 }, !dbg !3028

switch.next50:                                    ; preds = %switch.next48
  %26 = icmp eq i8 %k, 26, !dbg !3029
  br i1 %26, label %switch.body51, label %switch.next52, !dbg !2977

switch.body51:                                    ; preds = %switch.next50
  ret %runtime._string { ptr @"internal/reflectlite$string.67", i64 6 }, !dbg !3030

switch.next52:                                    ; preds = %switch.next50
    #dbg_value(i8 %k, !2973, !DIExpression(), !3031)
  %27 = sext i8 %k to i64, !dbg !3032
  %28 = call %runtime._string @"internal/itoa.Itoa"(i64 %27, ptr undef), !dbg !3033
  %29 = extractvalue %runtime._string %28, 0, !dbg !3034
  %30 = extractvalue %runtime._string %28, 1, !dbg !3034
  %31 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.68", i64 4, ptr %29, i64 %30, ptr undef), !dbg !3034
  ret %runtime._string %31, !dbg !3035
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/reflectlite.quote"(ptr readonly %s.data, i64 %s.len, ptr %context) unnamed_addr #1 !dbg !3036 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !3042
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !3042
    #dbg_value(ptr %s.data, !3038, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3042)
    #dbg_value(i64 %s.len, !3038, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3042)
    #dbg_value(%runtime._string %1, !3038, !DIExpression(), !3043)
  %len = extractvalue %runtime._string %1, 1, !dbg !3044
  %2 = mul i64 3, %len, !dbg !3045
  %3 = icmp eq i64 %2, -9223372036854775808, !dbg !3046
  %4 = and i1 false, %3, !dbg !3046
  %5 = select i1 %4, i64 1, i64 2, !dbg !3046
  %6 = sdiv i64 %2, %5, !dbg !3046
  %slice.lowhigh = icmp ugt i64 0, %6, !dbg !3047
  %slice.highmax = icmp ugt i64 %6, %6, !dbg !3047
  %slice.maxcap = icmp ugt i64 %6, 9223372036854775807, !dbg !3047
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !3047
  %slice.lowcap = or i1 %slice.lowmax, %slice.maxcap, !dbg !3047
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !3047

slice.next:                                       ; preds = %entry
  %makeslice.cap = mul i64 1, %6, !dbg !3047
  %makeslice.buf = call align 1 ptr @runtime.alloc(i64 %makeslice.cap, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3047
  %7 = insertvalue { ptr, i64, i64 } undef, ptr %makeslice.buf, 0, !dbg !3047
  %8 = insertvalue { ptr, i64, i64 } %7, i64 0, 1, !dbg !3047
  %9 = insertvalue { ptr, i64, i64 } %8, i64 %6, 2, !dbg !3047
    #dbg_value({ ptr, i64, i64 } %9, !3039, !DIExpression(), !3048)
    #dbg_value({ ptr, i64, i64 } %9, !3039, !DIExpression(), !3049)
  %varargs = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3050
  %10 = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !3050
  store i8 34, ptr %10, align 1, !dbg !3050
  %slice.ptr = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !3050
  %11 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !3050
  %12 = insertvalue { ptr, i64, i64 } %11, i64 1, 1, !dbg !3050
  %13 = insertvalue { ptr, i64, i64 } %12, i64 1, 2, !dbg !3050
  %append.srcBuf = extractvalue { ptr, i64, i64 } %9, 0, !dbg !3051
  %append.srcLen = extractvalue { ptr, i64, i64 } %9, 1, !dbg !3051
  %append.srcCap = extractvalue { ptr, i64, i64 } %9, 2, !dbg !3051
  %append.elemsBuf = extractvalue { ptr, i64, i64 } %13, 0, !dbg !3051
  %append.elemsLen = extractvalue { ptr, i64, i64 } %13, 1, !dbg !3051
  %append.new = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf, ptr %append.elemsBuf, i64 %append.srcLen, i64 %append.srcCap, i64 %append.elemsLen, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3051
  %append.newPtr = extractvalue { ptr, i64, i64 } %append.new, 0, !dbg !3051
  %append.newLen = extractvalue { ptr, i64, i64 } %append.new, 1, !dbg !3051
  %append.newCap = extractvalue { ptr, i64, i64 } %append.new, 2, !dbg !3051
  %14 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr, 0, !dbg !3051
  %15 = insertvalue { ptr, i64, i64 } %14, i64 %append.newLen, 1, !dbg !3051
  %16 = insertvalue { ptr, i64, i64 } %15, i64 %append.newCap, 2, !dbg !3051
    #dbg_value({ ptr, i64, i64 } %16, !3039, !DIExpression(), !3052)
    #dbg_value(i64 0, !3040, !DIExpression(), !3053)
  br label %for.loop, !dbg !3054

for.loop:                                         ; preds = %slice.next50, %slice.next
  %17 = phi %runtime._string [ %1, %slice.next ], [ %76, %slice.next50 ], !dbg !3055
  %18 = phi { ptr, i64, i64 } [ %16, %slice.next ], [ %70, %slice.next50 ], !dbg !3048
    #dbg_value(%runtime._string %17, !3038, !DIExpression(), !3056)
  %len3 = extractvalue %runtime._string %17, 1, !dbg !3057
  %19 = icmp sgt i64 %len3, 0, !dbg !3058
  br i1 %19, label %for.body, label %for.done, !dbg !3054

for.body:                                         ; preds = %for.loop
    #dbg_value(%runtime._string %17, !3038, !DIExpression(), !3059)
  %len4 = extractvalue %runtime._string %17, 1, !dbg !3060
  %20 = icmp uge i64 0, %len4, !dbg !3060
  br i1 %20, label %lookup.throw, label %lookup.next, !dbg !3060

lookup.next:                                      ; preds = %for.body
  %21 = extractvalue %runtime._string %17, 0, !dbg !3060
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !3060
  %23 = load i8, ptr %22, align 1, !dbg !3060
  %24 = zext i8 %23 to i32, !dbg !3061
    #dbg_value(i32 %24, !3041, !DIExpression(), !3062)
    #dbg_value(i64 1, !3040, !DIExpression(), !3063)
    #dbg_value(i32 %24, !3041, !DIExpression(), !3064)
  %25 = icmp sge i32 %24, 128, !dbg !3065
  br i1 %25, label %if.then, label %if.done, !dbg !3054

if.then:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %17, !3038, !DIExpression(), !3066)
  %26 = extractvalue %runtime._string %17, 0, !dbg !3067
  %27 = extractvalue %runtime._string %17, 1, !dbg !3067
  %28 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(ptr %26, i64 %27, ptr undef), !dbg !3067
  %29 = extractvalue { i32, i64 } %28, 0, !dbg !3067
    #dbg_value(i32 %29, !3041, !DIExpression(), !3068)
  %30 = extractvalue { i32, i64 } %28, 1, !dbg !3067
    #dbg_value(i64 %30, !3040, !DIExpression(), !3069)
  br label %if.done, !dbg !3054

if.done:                                          ; preds = %if.then, %lookup.next
  %31 = phi i64 [ 1, %lookup.next ], [ %30, %if.then ], !dbg !3053
  %32 = phi i32 [ %24, %lookup.next ], [ %29, %if.then ], !dbg !3062
    #dbg_value(i64 %31, !3040, !DIExpression(), !3070)
  %33 = icmp eq i64 %31, 1, !dbg !3071
  br i1 %33, label %cond.true, label %if.done2, !dbg !3054

cond.true:                                        ; preds = %if.done
    #dbg_value(i32 %32, !3041, !DIExpression(), !3072)
  %34 = icmp eq i32 %32, 65533, !dbg !3073
  br i1 %34, label %if.then1, label %if.done2, !dbg !3054

if.then1:                                         ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } %18, !3039, !DIExpression(), !3074)
  %append.srcBuf5 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !3075
  %append.srcLen6 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !3075
  %append.srcCap7 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !3075
  %append.new8 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf5, ptr @"internal/reflectlite$string.20", i64 %append.srcLen6, i64 %append.srcCap7, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3075
  %append.newPtr9 = extractvalue { ptr, i64, i64 } %append.new8, 0, !dbg !3075
  %append.newLen10 = extractvalue { ptr, i64, i64 } %append.new8, 1, !dbg !3075
  %append.newCap11 = extractvalue { ptr, i64, i64 } %append.new8, 2, !dbg !3075
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr9, 0, !dbg !3075
  %36 = insertvalue { ptr, i64, i64 } %35, i64 %append.newLen10, 1, !dbg !3075
  %37 = insertvalue { ptr, i64, i64 } %36, i64 %append.newCap11, 2, !dbg !3075
    #dbg_value({ ptr, i64, i64 } %37, !3039, !DIExpression(), !3076)
    #dbg_value({ ptr, i64, i64 } %37, !3039, !DIExpression(), !3077)
    #dbg_value(%runtime._string %17, !3038, !DIExpression(), !3078)
  %len12 = extractvalue %runtime._string %17, 1, !dbg !3079
  %38 = icmp uge i64 0, %len12, !dbg !3079
  br i1 %38, label %lookup.throw13, label %lookup.next14, !dbg !3079

lookup.next14:                                    ; preds = %if.then1
  %39 = extractvalue %runtime._string %17, 0, !dbg !3079
  %40 = getelementptr inbounds i8, ptr %39, i64 0, !dbg !3079
  %41 = load i8, ptr %40, align 1, !dbg !3079
  %42 = lshr i8 %41, 4, !dbg !3080
  %shift.result = select i1 false, i8 0, i8 %42, !dbg !3080
  %43 = zext i8 %shift.result to i64, !dbg !3081
  %44 = icmp uge i64 %43, 15, !dbg !3081
  br i1 %44, label %lookup.throw15, label %lookup.next16, !dbg !3081

lookup.next16:                                    ; preds = %lookup.next14
  %45 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.21", i64 %43, !dbg !3081
  %46 = load i8, ptr %45, align 1, !dbg !3081
  %varargs17 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3082
  %47 = getelementptr inbounds [1 x i8], ptr %varargs17, i32 0, i64 0, !dbg !3082
  store i8 %46, ptr %47, align 1, !dbg !3081
  %slice.ptr18 = getelementptr inbounds [1 x i8], ptr %varargs17, i32 0, i64 0, !dbg !3082
  %48 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr18, 0, !dbg !3082
  %49 = insertvalue { ptr, i64, i64 } %48, i64 1, 1, !dbg !3082
  %50 = insertvalue { ptr, i64, i64 } %49, i64 1, 2, !dbg !3082
  %append.srcBuf19 = extractvalue { ptr, i64, i64 } %37, 0, !dbg !3083
  %append.srcLen20 = extractvalue { ptr, i64, i64 } %37, 1, !dbg !3083
  %append.srcCap21 = extractvalue { ptr, i64, i64 } %37, 2, !dbg !3083
  %append.elemsBuf22 = extractvalue { ptr, i64, i64 } %50, 0, !dbg !3083
  %append.elemsLen23 = extractvalue { ptr, i64, i64 } %50, 1, !dbg !3083
  %append.new24 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf19, ptr %append.elemsBuf22, i64 %append.srcLen20, i64 %append.srcCap21, i64 %append.elemsLen23, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3083
  %append.newPtr25 = extractvalue { ptr, i64, i64 } %append.new24, 0, !dbg !3083
  %append.newLen26 = extractvalue { ptr, i64, i64 } %append.new24, 1, !dbg !3083
  %append.newCap27 = extractvalue { ptr, i64, i64 } %append.new24, 2, !dbg !3083
  %51 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr25, 0, !dbg !3083
  %52 = insertvalue { ptr, i64, i64 } %51, i64 %append.newLen26, 1, !dbg !3083
  %53 = insertvalue { ptr, i64, i64 } %52, i64 %append.newCap27, 2, !dbg !3083
    #dbg_value({ ptr, i64, i64 } %53, !3039, !DIExpression(), !3084)
    #dbg_value({ ptr, i64, i64 } %53, !3039, !DIExpression(), !3085)
    #dbg_value(%runtime._string %17, !3038, !DIExpression(), !3086)
  %len28 = extractvalue %runtime._string %17, 1, !dbg !3087
  %54 = icmp uge i64 0, %len28, !dbg !3087
  br i1 %54, label %lookup.throw29, label %lookup.next30, !dbg !3087

lookup.next30:                                    ; preds = %lookup.next16
  %55 = extractvalue %runtime._string %17, 0, !dbg !3087
  %56 = getelementptr inbounds i8, ptr %55, i64 0, !dbg !3087
  %57 = load i8, ptr %56, align 1, !dbg !3087
  %58 = and i8 %57, 15, !dbg !3088
  %59 = zext i8 %58 to i64, !dbg !3089
  %60 = icmp uge i64 %59, 15, !dbg !3089
  br i1 %60, label %lookup.throw31, label %lookup.next32, !dbg !3089

lookup.next32:                                    ; preds = %lookup.next30
  %61 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.22", i64 %59, !dbg !3089
  %62 = load i8, ptr %61, align 1, !dbg !3089
  %varargs33 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3090
  %63 = getelementptr inbounds [1 x i8], ptr %varargs33, i32 0, i64 0, !dbg !3090
  store i8 %62, ptr %63, align 1, !dbg !3089
  %slice.ptr34 = getelementptr inbounds [1 x i8], ptr %varargs33, i32 0, i64 0, !dbg !3090
  %64 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr34, 0, !dbg !3090
  %65 = insertvalue { ptr, i64, i64 } %64, i64 1, 1, !dbg !3090
  %66 = insertvalue { ptr, i64, i64 } %65, i64 1, 2, !dbg !3090
  %append.srcBuf35 = extractvalue { ptr, i64, i64 } %53, 0, !dbg !3091
  %append.srcLen36 = extractvalue { ptr, i64, i64 } %53, 1, !dbg !3091
  %append.srcCap37 = extractvalue { ptr, i64, i64 } %53, 2, !dbg !3091
  %append.elemsBuf38 = extractvalue { ptr, i64, i64 } %66, 0, !dbg !3091
  %append.elemsLen39 = extractvalue { ptr, i64, i64 } %66, 1, !dbg !3091
  %append.new40 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf35, ptr %append.elemsBuf38, i64 %append.srcLen36, i64 %append.srcCap37, i64 %append.elemsLen39, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3091
  %append.newPtr41 = extractvalue { ptr, i64, i64 } %append.new40, 0, !dbg !3091
  %append.newLen42 = extractvalue { ptr, i64, i64 } %append.new40, 1, !dbg !3091
  %append.newCap43 = extractvalue { ptr, i64, i64 } %append.new40, 2, !dbg !3091
  %67 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr41, 0, !dbg !3091
  %68 = insertvalue { ptr, i64, i64 } %67, i64 %append.newLen42, 1, !dbg !3091
  %69 = insertvalue { ptr, i64, i64 } %68, i64 %append.newCap43, 2, !dbg !3091
    #dbg_value({ ptr, i64, i64 } %69, !3039, !DIExpression(), !3092)
  br label %for.post, !dbg !3054

for.post:                                         ; preds = %if.done2, %lookup.next32
  %70 = phi { ptr, i64, i64 } [ %69, %lookup.next32 ], [ %80, %if.done2 ], !dbg !3048
    #dbg_value(%runtime._string %17, !3038, !DIExpression(), !3093)
    #dbg_value(i64 %31, !3040, !DIExpression(), !3094)
  %71 = extractvalue %runtime._string %17, 0, !dbg !3095
  %72 = extractvalue %runtime._string %17, 1, !dbg !3095
  %slice.lowhigh44 = icmp ugt i64 %31, %72, !dbg !3095
  %slice.highmax45 = icmp ugt i64 %72, %72, !dbg !3095
  %slice.maxcap46 = icmp ugt i64 %72, %72, !dbg !3095
  %slice.lowmax47 = or i1 %slice.lowhigh44, %slice.highmax45, !dbg !3095
  %slice.lowcap48 = or i1 %slice.lowmax47, %slice.maxcap46, !dbg !3095
  br i1 %slice.lowcap48, label %slice.throw49, label %slice.next50, !dbg !3095

slice.next50:                                     ; preds = %for.post
  %73 = getelementptr inbounds i8, ptr %71, i64 %31, !dbg !3095
  %74 = sub i64 %72, %31, !dbg !3095
  %75 = insertvalue %runtime._string undef, ptr %73, 0, !dbg !3095
  %76 = insertvalue %runtime._string %75, i64 %74, 1, !dbg !3095
    #dbg_value(%runtime._string %76, !3038, !DIExpression(), !3096)
  br label %for.loop, !dbg !3054

if.done2:                                         ; preds = %cond.true, %if.done
    #dbg_value({ ptr, i64, i64 } %18, !3039, !DIExpression(), !3097)
    #dbg_value(i32 %32, !3041, !DIExpression(), !3098)
  %77 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !3099
  %78 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !3099
  %79 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !3099
  %80 = call { ptr, i64, i64 } @"internal/reflectlite.appendEscapedRune"(ptr %77, i64 %78, i64 %79, i32 %32, ptr undef), !dbg !3099
    #dbg_value({ ptr, i64, i64 } %80, !3039, !DIExpression(), !3100)
  br label %for.post, !dbg !3054

for.done:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %18, !3039, !DIExpression(), !3101)
  %varargs51 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3102
  %81 = getelementptr inbounds [1 x i8], ptr %varargs51, i32 0, i64 0, !dbg !3102
  store i8 34, ptr %81, align 1, !dbg !3102
  %slice.ptr52 = getelementptr inbounds [1 x i8], ptr %varargs51, i32 0, i64 0, !dbg !3102
  %82 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr52, 0, !dbg !3102
  %83 = insertvalue { ptr, i64, i64 } %82, i64 1, 1, !dbg !3102
  %84 = insertvalue { ptr, i64, i64 } %83, i64 1, 2, !dbg !3102
  %append.srcBuf53 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !3103
  %append.srcLen54 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !3103
  %append.srcCap55 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !3103
  %append.elemsBuf56 = extractvalue { ptr, i64, i64 } %84, 0, !dbg !3103
  %append.elemsLen57 = extractvalue { ptr, i64, i64 } %84, 1, !dbg !3103
  %append.new58 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf53, ptr %append.elemsBuf56, i64 %append.srcLen54, i64 %append.srcCap55, i64 %append.elemsLen57, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3103
  %append.newPtr59 = extractvalue { ptr, i64, i64 } %append.new58, 0, !dbg !3103
  %append.newLen60 = extractvalue { ptr, i64, i64 } %append.new58, 1, !dbg !3103
  %append.newCap61 = extractvalue { ptr, i64, i64 } %append.new58, 2, !dbg !3103
  %85 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr59, 0, !dbg !3103
  %86 = insertvalue { ptr, i64, i64 } %85, i64 %append.newLen60, 1, !dbg !3103
  %87 = insertvalue { ptr, i64, i64 } %86, i64 %append.newCap61, 2, !dbg !3103
    #dbg_value({ ptr, i64, i64 } %87, !3039, !DIExpression(), !3104)
    #dbg_value({ ptr, i64, i64 } %87, !3039, !DIExpression(), !3105)
  %88 = extractvalue { ptr, i64, i64 } %87, 0, !dbg !3106
  %89 = extractvalue { ptr, i64, i64 } %87, 1, !dbg !3106
  %90 = extractvalue { ptr, i64, i64 } %87, 2, !dbg !3106
  %91 = call %runtime._string @runtime.stringFromBytes(ptr %88, i64 %89, i64 %90, ptr undef), !dbg !3106
  ret %runtime._string %91, !dbg !3107

slice.throw:                                      ; preds = %entry
  call void @runtime.slicePanic(ptr undef), !dbg !3047
  unreachable, !dbg !3047

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !3060
  unreachable, !dbg !3060

lookup.throw13:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !3079
  unreachable, !dbg !3079

lookup.throw15:                                   ; preds = %lookup.next14
  call void @runtime.lookupPanic(ptr undef), !dbg !3081
  unreachable, !dbg !3081

lookup.throw29:                                   ; preds = %lookup.next16
  call void @runtime.lookupPanic(ptr undef), !dbg !3087
  unreachable, !dbg !3087

lookup.throw31:                                   ; preds = %lookup.next30
  call void @runtime.lookupPanic(ptr undef), !dbg !3089
  unreachable, !dbg !3089

slice.throw49:                                    ; preds = %for.post
  call void @runtime.slicePanic(ptr undef), !dbg !3095
  unreachable, !dbg !3095
}

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @"internal/reflectlite.appendEscapedRune"(ptr %buf.data, i64 %buf.len, i64 %buf.cap, i32 %r, ptr %context) unnamed_addr #1 !dbg !3108 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %buf.data, 0, !dbg !3115
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %buf.len, 1, !dbg !3115
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %buf.cap, 2, !dbg !3115
    #dbg_value(ptr %buf.data, !3110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3115)
    #dbg_value(i64 %buf.len, !3110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3115)
    #dbg_value(i64 %buf.cap, !3110, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3115)
    #dbg_value(i32 %r, !3111, !DIExpression(), !3115)
  %runeTmp = call align 1 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3116
    #dbg_value(i32 %r, !3111, !DIExpression(), !3117)
  %3 = icmp eq i32 %r, 34, !dbg !3118
  br i1 %3, label %if.then, label %cond.false, !dbg !3119

if.then:                                          ; preds = %cond.false, %entry
    #dbg_value({ ptr, i64, i64 } %2, !3110, !DIExpression(), !3120)
  %varargs = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3121
  %4 = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !3121
  store i8 92, ptr %4, align 1, !dbg !3121
  %slice.ptr = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !3121
  %5 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !3121
  %6 = insertvalue { ptr, i64, i64 } %5, i64 1, 1, !dbg !3121
  %7 = insertvalue { ptr, i64, i64 } %6, i64 1, 2, !dbg !3121
  %append.srcBuf = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3122
  %append.srcLen = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3122
  %append.srcCap = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3122
  %append.elemsBuf = extractvalue { ptr, i64, i64 } %7, 0, !dbg !3122
  %append.elemsLen = extractvalue { ptr, i64, i64 } %7, 1, !dbg !3122
  %append.new = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf, ptr %append.elemsBuf, i64 %append.srcLen, i64 %append.srcCap, i64 %append.elemsLen, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3122
  %append.newPtr = extractvalue { ptr, i64, i64 } %append.new, 0, !dbg !3122
  %append.newLen = extractvalue { ptr, i64, i64 } %append.new, 1, !dbg !3122
  %append.newCap = extractvalue { ptr, i64, i64 } %append.new, 2, !dbg !3122
  %8 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr, 0, !dbg !3122
  %9 = insertvalue { ptr, i64, i64 } %8, i64 %append.newLen, 1, !dbg !3122
  %10 = insertvalue { ptr, i64, i64 } %9, i64 %append.newCap, 2, !dbg !3122
    #dbg_value({ ptr, i64, i64 } %10, !3110, !DIExpression(), !3123)
    #dbg_value({ ptr, i64, i64 } %10, !3110, !DIExpression(), !3124)
    #dbg_value(i32 %r, !3111, !DIExpression(), !3125)
  %11 = trunc i32 %r to i8, !dbg !3126
  %varargs23 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3127
  %12 = getelementptr inbounds [1 x i8], ptr %varargs23, i32 0, i64 0, !dbg !3127
  store i8 %11, ptr %12, align 1, !dbg !3126
  %slice.ptr24 = getelementptr inbounds [1 x i8], ptr %varargs23, i32 0, i64 0, !dbg !3127
  %13 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr24, 0, !dbg !3127
  %14 = insertvalue { ptr, i64, i64 } %13, i64 1, 1, !dbg !3127
  %15 = insertvalue { ptr, i64, i64 } %14, i64 1, 2, !dbg !3127
  %append.srcBuf25 = extractvalue { ptr, i64, i64 } %10, 0, !dbg !3128
  %append.srcLen26 = extractvalue { ptr, i64, i64 } %10, 1, !dbg !3128
  %append.srcCap27 = extractvalue { ptr, i64, i64 } %10, 2, !dbg !3128
  %append.elemsBuf28 = extractvalue { ptr, i64, i64 } %15, 0, !dbg !3128
  %append.elemsLen29 = extractvalue { ptr, i64, i64 } %15, 1, !dbg !3128
  %append.new30 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf25, ptr %append.elemsBuf28, i64 %append.srcLen26, i64 %append.srcCap27, i64 %append.elemsLen29, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3128
  %append.newPtr31 = extractvalue { ptr, i64, i64 } %append.new30, 0, !dbg !3128
  %append.newLen32 = extractvalue { ptr, i64, i64 } %append.new30, 1, !dbg !3128
  %append.newCap33 = extractvalue { ptr, i64, i64 } %append.new30, 2, !dbg !3128
  %16 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr31, 0, !dbg !3128
  %17 = insertvalue { ptr, i64, i64 } %16, i64 %append.newLen32, 1, !dbg !3128
  %18 = insertvalue { ptr, i64, i64 } %17, i64 %append.newCap33, 2, !dbg !3128
    #dbg_value({ ptr, i64, i64 } %18, !3110, !DIExpression(), !3129)
    #dbg_value({ ptr, i64, i64 } %18, !3110, !DIExpression(), !3130)
  ret { ptr, i64, i64 } %18, !dbg !3131

cond.false:                                       ; preds = %entry
    #dbg_value(i32 %r, !3111, !DIExpression(), !3132)
  %19 = icmp eq i32 %r, 92, !dbg !3133
  br i1 %19, label %if.then, label %if.done, !dbg !3119

if.done:                                          ; preds = %cond.false
    #dbg_value(i32 %r, !3111, !DIExpression(), !3134)
  %20 = call i1 @"internal/reflectlite.isPrint"(i32 %r, ptr undef), !dbg !3135
  br i1 %20, label %if.then1, label %if.done2, !dbg !3119

if.then1:                                         ; preds = %if.done
  %slice.ptr34 = getelementptr inbounds [4 x i8], ptr %runeTmp, i32 0, i64 0, !dbg !3136
  %21 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr34, 0, !dbg !3136
  %22 = insertvalue { ptr, i64, i64 } %21, i64 4, 1, !dbg !3136
  %23 = insertvalue { ptr, i64, i64 } %22, i64 4, 2, !dbg !3136
    #dbg_value(i32 %r, !3111, !DIExpression(), !3137)
  %24 = extractvalue { ptr, i64, i64 } %23, 0, !dbg !3138
  %25 = extractvalue { ptr, i64, i64 } %23, 1, !dbg !3138
  %26 = extractvalue { ptr, i64, i64 } %23, 2, !dbg !3138
  %27 = call i64 @"unicode/utf8.EncodeRune"(ptr %24, i64 %25, i64 %26, i32 %r, ptr undef), !dbg !3138
    #dbg_value(i64 %27, !3112, !DIExpression(), !3139)
    #dbg_value({ ptr, i64, i64 } %2, !3110, !DIExpression(), !3140)
    #dbg_value(i64 %27, !3112, !DIExpression(), !3141)
  %slice.lowhigh = icmp ugt i64 0, %27, !dbg !3142
  %slice.highmax = icmp ugt i64 %27, 4, !dbg !3142
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !3142
  %slice.lowcap = or i1 %slice.lowmax, false, !dbg !3142
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !3142

slice.next:                                       ; preds = %if.then1
  %slice.len = sub i64 %27, 0, !dbg !3142
  %slice.ptr35 = getelementptr inbounds [4 x i8], ptr %runeTmp, i32 0, i64 0, !dbg !3142
  %28 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr35, 0, !dbg !3142
  %29 = insertvalue { ptr, i64, i64 } %28, i64 %slice.len, 1, !dbg !3142
  %30 = insertvalue { ptr, i64, i64 } %29, i64 4, 2, !dbg !3142
  %append.srcBuf36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3143
  %append.srcLen37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3143
  %append.srcCap38 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3143
  %append.elemsBuf39 = extractvalue { ptr, i64, i64 } %30, 0, !dbg !3143
  %append.elemsLen40 = extractvalue { ptr, i64, i64 } %30, 1, !dbg !3143
  %append.new41 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf36, ptr %append.elemsBuf39, i64 %append.srcLen37, i64 %append.srcCap38, i64 %append.elemsLen40, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3143
  %append.newPtr42 = extractvalue { ptr, i64, i64 } %append.new41, 0, !dbg !3143
  %append.newLen43 = extractvalue { ptr, i64, i64 } %append.new41, 1, !dbg !3143
  %append.newCap44 = extractvalue { ptr, i64, i64 } %append.new41, 2, !dbg !3143
  %31 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr42, 0, !dbg !3143
  %32 = insertvalue { ptr, i64, i64 } %31, i64 %append.newLen43, 1, !dbg !3143
  %33 = insertvalue { ptr, i64, i64 } %32, i64 %append.newCap44, 2, !dbg !3143
    #dbg_value({ ptr, i64, i64 } %33, !3110, !DIExpression(), !3144)
    #dbg_value({ ptr, i64, i64 } %33, !3110, !DIExpression(), !3145)
  ret { ptr, i64, i64 } %33, !dbg !3146

if.done2:                                         ; preds = %if.done
    #dbg_value(i32 %r, !3111, !DIExpression(), !3147)
  %34 = icmp eq i32 %r, 7, !dbg !3148
  br i1 %34, label %switch.body, label %switch.next, !dbg !3119

switch.body:                                      ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } %2, !3110, !DIExpression(), !3149)
  %append.srcBuf45 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3150
  %append.srcLen46 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3150
  %append.srcCap47 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3150
  %append.new48 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf45, ptr @"internal/reflectlite$string.23", i64 %append.srcLen46, i64 %append.srcCap47, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3150
  %append.newPtr49 = extractvalue { ptr, i64, i64 } %append.new48, 0, !dbg !3150
  %append.newLen50 = extractvalue { ptr, i64, i64 } %append.new48, 1, !dbg !3150
  %append.newCap51 = extractvalue { ptr, i64, i64 } %append.new48, 2, !dbg !3150
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr49, 0, !dbg !3150
  %36 = insertvalue { ptr, i64, i64 } %35, i64 %append.newLen50, 1, !dbg !3150
  %37 = insertvalue { ptr, i64, i64 } %36, i64 %append.newCap51, 2, !dbg !3150
    #dbg_value({ ptr, i64, i64 } %37, !3110, !DIExpression(), !3151)
  br label %switch.done, !dbg !3119

switch.done:                                      ; preds = %for.loop21, %for.loop, %lookup.next113, %switch.body13, %switch.body11, %switch.body9, %switch.body7, %switch.body5, %switch.body3, %switch.body
  %38 = phi { ptr, i64, i64 } [ %37, %switch.body ], [ %42, %switch.body3 ], [ %46, %switch.body5 ], [ %50, %switch.body7 ], [ %54, %switch.body9 ], [ %58, %switch.body11 ], [ %62, %switch.body13 ], [ %93, %lookup.next113 ], [ %100, %for.loop ], [ %122, %for.loop21 ], !dbg !3152
    #dbg_value({ ptr, i64, i64 } %38, !3110, !DIExpression(), !3153)
  ret { ptr, i64, i64 } %38, !dbg !3154

switch.next:                                      ; preds = %if.done2
  %39 = icmp eq i32 %r, 8, !dbg !3155
  br i1 %39, label %switch.body3, label %switch.next4, !dbg !3119

switch.body3:                                     ; preds = %switch.next
    #dbg_value({ ptr, i64, i64 } %2, !3110, !DIExpression(), !3156)
  %append.srcBuf52 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3157
  %append.srcLen53 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3157
  %append.srcCap54 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3157
  %append.new55 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf52, ptr @"internal/reflectlite$string.24", i64 %append.srcLen53, i64 %append.srcCap54, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3157
  %append.newPtr56 = extractvalue { ptr, i64, i64 } %append.new55, 0, !dbg !3157
  %append.newLen57 = extractvalue { ptr, i64, i64 } %append.new55, 1, !dbg !3157
  %append.newCap58 = extractvalue { ptr, i64, i64 } %append.new55, 2, !dbg !3157
  %40 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr56, 0, !dbg !3157
  %41 = insertvalue { ptr, i64, i64 } %40, i64 %append.newLen57, 1, !dbg !3157
  %42 = insertvalue { ptr, i64, i64 } %41, i64 %append.newCap58, 2, !dbg !3157
    #dbg_value({ ptr, i64, i64 } %42, !3110, !DIExpression(), !3158)
  br label %switch.done, !dbg !3119

switch.next4:                                     ; preds = %switch.next
  %43 = icmp eq i32 %r, 12, !dbg !3159
  br i1 %43, label %switch.body5, label %switch.next6, !dbg !3119

switch.body5:                                     ; preds = %switch.next4
    #dbg_value({ ptr, i64, i64 } %2, !3110, !DIExpression(), !3160)
  %append.srcBuf59 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3161
  %append.srcLen60 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3161
  %append.srcCap61 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3161
  %append.new62 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf59, ptr @"internal/reflectlite$string.25", i64 %append.srcLen60, i64 %append.srcCap61, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3161
  %append.newPtr63 = extractvalue { ptr, i64, i64 } %append.new62, 0, !dbg !3161
  %append.newLen64 = extractvalue { ptr, i64, i64 } %append.new62, 1, !dbg !3161
  %append.newCap65 = extractvalue { ptr, i64, i64 } %append.new62, 2, !dbg !3161
  %44 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr63, 0, !dbg !3161
  %45 = insertvalue { ptr, i64, i64 } %44, i64 %append.newLen64, 1, !dbg !3161
  %46 = insertvalue { ptr, i64, i64 } %45, i64 %append.newCap65, 2, !dbg !3161
    #dbg_value({ ptr, i64, i64 } %46, !3110, !DIExpression(), !3162)
  br label %switch.done, !dbg !3119

switch.next6:                                     ; preds = %switch.next4
  %47 = icmp eq i32 %r, 10, !dbg !3163
  br i1 %47, label %switch.body7, label %switch.next8, !dbg !3119

switch.body7:                                     ; preds = %switch.next6
    #dbg_value({ ptr, i64, i64 } %2, !3110, !DIExpression(), !3164)
  %append.srcBuf66 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3165
  %append.srcLen67 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3165
  %append.srcCap68 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3165
  %append.new69 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf66, ptr @"internal/reflectlite$string.26", i64 %append.srcLen67, i64 %append.srcCap68, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3165
  %append.newPtr70 = extractvalue { ptr, i64, i64 } %append.new69, 0, !dbg !3165
  %append.newLen71 = extractvalue { ptr, i64, i64 } %append.new69, 1, !dbg !3165
  %append.newCap72 = extractvalue { ptr, i64, i64 } %append.new69, 2, !dbg !3165
  %48 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr70, 0, !dbg !3165
  %49 = insertvalue { ptr, i64, i64 } %48, i64 %append.newLen71, 1, !dbg !3165
  %50 = insertvalue { ptr, i64, i64 } %49, i64 %append.newCap72, 2, !dbg !3165
    #dbg_value({ ptr, i64, i64 } %50, !3110, !DIExpression(), !3166)
  br label %switch.done, !dbg !3119

switch.next8:                                     ; preds = %switch.next6
  %51 = icmp eq i32 %r, 13, !dbg !3167
  br i1 %51, label %switch.body9, label %switch.next10, !dbg !3119

switch.body9:                                     ; preds = %switch.next8
    #dbg_value({ ptr, i64, i64 } %2, !3110, !DIExpression(), !3168)
  %append.srcBuf73 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3169
  %append.srcLen74 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3169
  %append.srcCap75 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3169
  %append.new76 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf73, ptr @"internal/reflectlite$string.27", i64 %append.srcLen74, i64 %append.srcCap75, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3169
  %append.newPtr77 = extractvalue { ptr, i64, i64 } %append.new76, 0, !dbg !3169
  %append.newLen78 = extractvalue { ptr, i64, i64 } %append.new76, 1, !dbg !3169
  %append.newCap79 = extractvalue { ptr, i64, i64 } %append.new76, 2, !dbg !3169
  %52 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr77, 0, !dbg !3169
  %53 = insertvalue { ptr, i64, i64 } %52, i64 %append.newLen78, 1, !dbg !3169
  %54 = insertvalue { ptr, i64, i64 } %53, i64 %append.newCap79, 2, !dbg !3169
    #dbg_value({ ptr, i64, i64 } %54, !3110, !DIExpression(), !3170)
  br label %switch.done, !dbg !3119

switch.next10:                                    ; preds = %switch.next8
  %55 = icmp eq i32 %r, 9, !dbg !3171
  br i1 %55, label %switch.body11, label %switch.next12, !dbg !3119

switch.body11:                                    ; preds = %switch.next10
    #dbg_value({ ptr, i64, i64 } %2, !3110, !DIExpression(), !3172)
  %append.srcBuf80 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3173
  %append.srcLen81 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3173
  %append.srcCap82 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3173
  %append.new83 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf80, ptr @"internal/reflectlite$string.28", i64 %append.srcLen81, i64 %append.srcCap82, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3173
  %append.newPtr84 = extractvalue { ptr, i64, i64 } %append.new83, 0, !dbg !3173
  %append.newLen85 = extractvalue { ptr, i64, i64 } %append.new83, 1, !dbg !3173
  %append.newCap86 = extractvalue { ptr, i64, i64 } %append.new83, 2, !dbg !3173
  %56 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr84, 0, !dbg !3173
  %57 = insertvalue { ptr, i64, i64 } %56, i64 %append.newLen85, 1, !dbg !3173
  %58 = insertvalue { ptr, i64, i64 } %57, i64 %append.newCap86, 2, !dbg !3173
    #dbg_value({ ptr, i64, i64 } %58, !3110, !DIExpression(), !3174)
  br label %switch.done, !dbg !3119

switch.next12:                                    ; preds = %switch.next10
  %59 = icmp eq i32 %r, 11, !dbg !3175
  br i1 %59, label %switch.body13, label %switch.next14, !dbg !3119

switch.body13:                                    ; preds = %switch.next12
    #dbg_value({ ptr, i64, i64 } %2, !3110, !DIExpression(), !3176)
  %append.srcBuf87 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3177
  %append.srcLen88 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3177
  %append.srcCap89 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3177
  %append.new90 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf87, ptr @"internal/reflectlite$string.29", i64 %append.srcLen88, i64 %append.srcCap89, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3177
  %append.newPtr91 = extractvalue { ptr, i64, i64 } %append.new90, 0, !dbg !3177
  %append.newLen92 = extractvalue { ptr, i64, i64 } %append.new90, 1, !dbg !3177
  %append.newCap93 = extractvalue { ptr, i64, i64 } %append.new90, 2, !dbg !3177
  %60 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr91, 0, !dbg !3177
  %61 = insertvalue { ptr, i64, i64 } %60, i64 %append.newLen92, 1, !dbg !3177
  %62 = insertvalue { ptr, i64, i64 } %61, i64 %append.newCap93, 2, !dbg !3177
    #dbg_value({ ptr, i64, i64 } %62, !3110, !DIExpression(), !3178)
  br label %switch.done, !dbg !3119

switch.next14:                                    ; preds = %switch.next12
    #dbg_value(i32 %r, !3111, !DIExpression(), !3179)
  %63 = icmp slt i32 %r, 32, !dbg !3180
  br i1 %63, label %binop.done, label %binop.rhs, !dbg !3119

binop.done:                                       ; preds = %binop.rhs, %switch.next14
  %64 = phi i1 [ true, %switch.next14 ], [ %140, %binop.rhs ], !dbg !3181
  br i1 %64, label %switch.body15, label %switch.next16, !dbg !3119

switch.body15:                                    ; preds = %binop.done
    #dbg_value({ ptr, i64, i64 } %2, !3110, !DIExpression(), !3182)
  %append.srcBuf94 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3183
  %append.srcLen95 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3183
  %append.srcCap96 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3183
  %append.new97 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf94, ptr @"internal/reflectlite$string.30", i64 %append.srcLen95, i64 %append.srcCap96, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3183
  %append.newPtr98 = extractvalue { ptr, i64, i64 } %append.new97, 0, !dbg !3183
  %append.newLen99 = extractvalue { ptr, i64, i64 } %append.new97, 1, !dbg !3183
  %append.newCap100 = extractvalue { ptr, i64, i64 } %append.new97, 2, !dbg !3183
  %65 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr98, 0, !dbg !3183
  %66 = insertvalue { ptr, i64, i64 } %65, i64 %append.newLen99, 1, !dbg !3183
  %67 = insertvalue { ptr, i64, i64 } %66, i64 %append.newCap100, 2, !dbg !3183
    #dbg_value({ ptr, i64, i64 } %67, !3110, !DIExpression(), !3184)
    #dbg_value({ ptr, i64, i64 } %67, !3110, !DIExpression(), !3185)
    #dbg_value(i32 %r, !3111, !DIExpression(), !3186)
  %68 = trunc i32 %r to i8, !dbg !3187
  %69 = lshr i8 %68, 4, !dbg !3188
  %shift.result = select i1 false, i8 0, i8 %69, !dbg !3188
  %70 = zext i8 %shift.result to i64, !dbg !3189
  %71 = icmp uge i64 %70, 15, !dbg !3189
  br i1 %71, label %lookup.throw, label %lookup.next, !dbg !3189

lookup.next:                                      ; preds = %switch.body15
  %72 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.31", i64 %70, !dbg !3189
  %73 = load i8, ptr %72, align 1, !dbg !3189
  %varargs101 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3190
  %74 = getelementptr inbounds [1 x i8], ptr %varargs101, i32 0, i64 0, !dbg !3190
  store i8 %73, ptr %74, align 1, !dbg !3189
  %slice.ptr102 = getelementptr inbounds [1 x i8], ptr %varargs101, i32 0, i64 0, !dbg !3190
  %75 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr102, 0, !dbg !3190
  %76 = insertvalue { ptr, i64, i64 } %75, i64 1, 1, !dbg !3190
  %77 = insertvalue { ptr, i64, i64 } %76, i64 1, 2, !dbg !3190
  %append.srcBuf103 = extractvalue { ptr, i64, i64 } %67, 0, !dbg !3191
  %append.srcLen104 = extractvalue { ptr, i64, i64 } %67, 1, !dbg !3191
  %append.srcCap105 = extractvalue { ptr, i64, i64 } %67, 2, !dbg !3191
  %append.elemsBuf106 = extractvalue { ptr, i64, i64 } %77, 0, !dbg !3191
  %append.elemsLen107 = extractvalue { ptr, i64, i64 } %77, 1, !dbg !3191
  %append.new108 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf103, ptr %append.elemsBuf106, i64 %append.srcLen104, i64 %append.srcCap105, i64 %append.elemsLen107, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3191
  %append.newPtr109 = extractvalue { ptr, i64, i64 } %append.new108, 0, !dbg !3191
  %append.newLen110 = extractvalue { ptr, i64, i64 } %append.new108, 1, !dbg !3191
  %append.newCap111 = extractvalue { ptr, i64, i64 } %append.new108, 2, !dbg !3191
  %78 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr109, 0, !dbg !3191
  %79 = insertvalue { ptr, i64, i64 } %78, i64 %append.newLen110, 1, !dbg !3191
  %80 = insertvalue { ptr, i64, i64 } %79, i64 %append.newCap111, 2, !dbg !3191
    #dbg_value({ ptr, i64, i64 } %80, !3110, !DIExpression(), !3192)
    #dbg_value({ ptr, i64, i64 } %80, !3110, !DIExpression(), !3193)
    #dbg_value(i32 %r, !3111, !DIExpression(), !3194)
  %81 = trunc i32 %r to i8, !dbg !3195
  %82 = and i8 %81, 15, !dbg !3196
  %83 = zext i8 %82 to i64, !dbg !3197
  %84 = icmp uge i64 %83, 15, !dbg !3197
  br i1 %84, label %lookup.throw112, label %lookup.next113, !dbg !3197

lookup.next113:                                   ; preds = %lookup.next
  %85 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.32", i64 %83, !dbg !3197
  %86 = load i8, ptr %85, align 1, !dbg !3197
  %varargs114 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3198
  %87 = getelementptr inbounds [1 x i8], ptr %varargs114, i32 0, i64 0, !dbg !3198
  store i8 %86, ptr %87, align 1, !dbg !3197
  %slice.ptr115 = getelementptr inbounds [1 x i8], ptr %varargs114, i32 0, i64 0, !dbg !3198
  %88 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr115, 0, !dbg !3198
  %89 = insertvalue { ptr, i64, i64 } %88, i64 1, 1, !dbg !3198
  %90 = insertvalue { ptr, i64, i64 } %89, i64 1, 2, !dbg !3198
  %append.srcBuf116 = extractvalue { ptr, i64, i64 } %80, 0, !dbg !3199
  %append.srcLen117 = extractvalue { ptr, i64, i64 } %80, 1, !dbg !3199
  %append.srcCap118 = extractvalue { ptr, i64, i64 } %80, 2, !dbg !3199
  %append.elemsBuf119 = extractvalue { ptr, i64, i64 } %90, 0, !dbg !3199
  %append.elemsLen120 = extractvalue { ptr, i64, i64 } %90, 1, !dbg !3199
  %append.new121 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf116, ptr %append.elemsBuf119, i64 %append.srcLen117, i64 %append.srcCap118, i64 %append.elemsLen120, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3199
  %append.newPtr122 = extractvalue { ptr, i64, i64 } %append.new121, 0, !dbg !3199
  %append.newLen123 = extractvalue { ptr, i64, i64 } %append.new121, 1, !dbg !3199
  %append.newCap124 = extractvalue { ptr, i64, i64 } %append.new121, 2, !dbg !3199
  %91 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr122, 0, !dbg !3199
  %92 = insertvalue { ptr, i64, i64 } %91, i64 %append.newLen123, 1, !dbg !3199
  %93 = insertvalue { ptr, i64, i64 } %92, i64 %append.newCap124, 2, !dbg !3199
    #dbg_value({ ptr, i64, i64 } %93, !3110, !DIExpression(), !3200)
  br label %switch.done, !dbg !3119

switch.next16:                                    ; preds = %binop.done
    #dbg_value(i32 %r, !3111, !DIExpression(), !3201)
  %94 = call i1 @"unicode/utf8.ValidRune"(i32 %r, ptr undef), !dbg !3202
  %95 = xor i1 %94, true, !dbg !3203
  br i1 %95, label %switch.body17, label %switch.next19, !dbg !3119

switch.body17:                                    ; preds = %switch.next16
    #dbg_value(i32 65533, !3111, !DIExpression(), !3204)
  br label %switch.body18, !dbg !3119

switch.body18:                                    ; preds = %switch.next19, %switch.body17
  %96 = phi i32 [ 65533, %switch.body17 ], [ %r, %switch.next19 ], !dbg !3205
    #dbg_value({ ptr, i64, i64 } %2, !3110, !DIExpression(), !3206)
  %append.srcBuf125 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3207
  %append.srcLen126 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3207
  %append.srcCap127 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3207
  %append.new128 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf125, ptr @"internal/reflectlite$string.33", i64 %append.srcLen126, i64 %append.srcCap127, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3207
  %append.newPtr129 = extractvalue { ptr, i64, i64 } %append.new128, 0, !dbg !3207
  %append.newLen130 = extractvalue { ptr, i64, i64 } %append.new128, 1, !dbg !3207
  %append.newCap131 = extractvalue { ptr, i64, i64 } %append.new128, 2, !dbg !3207
  %97 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr129, 0, !dbg !3207
  %98 = insertvalue { ptr, i64, i64 } %97, i64 %append.newLen130, 1, !dbg !3207
  %99 = insertvalue { ptr, i64, i64 } %98, i64 %append.newCap131, 2, !dbg !3207
    #dbg_value({ ptr, i64, i64 } %99, !3110, !DIExpression(), !3208)
    #dbg_value(i64 12, !3113, !DIExpression(), !3209)
  br label %for.loop, !dbg !3119

for.loop:                                         ; preds = %lookup.next133, %switch.body18
  %100 = phi { ptr, i64, i64 } [ %99, %switch.body18 ], [ %116, %lookup.next133 ], !dbg !3152
  %101 = phi i64 [ 12, %switch.body18 ], [ %117, %lookup.next133 ], !dbg !3209
    #dbg_value(i64 %101, !3113, !DIExpression(), !3210)
  %102 = icmp sge i64 %101, 0, !dbg !3211
  br i1 %102, label %for.body, label %switch.done, !dbg !3119

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %100, !3110, !DIExpression(), !3212)
    #dbg_value(i32 %96, !3111, !DIExpression(), !3213)
    #dbg_value(i64 %101, !3113, !DIExpression(), !3214)
  %shift.overflow = icmp uge i64 %101, 32, !dbg !3215
  %103 = trunc i64 %101 to i32, !dbg !3215
  %shift.offset = select i1 %shift.overflow, i32 31, i32 %103, !dbg !3215
  %104 = ashr i32 %96, %shift.offset, !dbg !3215
  %105 = and i32 %104, 15, !dbg !3216
  %106 = sext i32 %105 to i64, !dbg !3217
  %107 = icmp uge i64 %106, 15, !dbg !3217
  br i1 %107, label %lookup.throw132, label %lookup.next133, !dbg !3217

lookup.next133:                                   ; preds = %for.body
  %108 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.34", i64 %106, !dbg !3217
  %109 = load i8, ptr %108, align 1, !dbg !3217
  %varargs134 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3218
  %110 = getelementptr inbounds [1 x i8], ptr %varargs134, i32 0, i64 0, !dbg !3218
  store i8 %109, ptr %110, align 1, !dbg !3217
  %slice.ptr135 = getelementptr inbounds [1 x i8], ptr %varargs134, i32 0, i64 0, !dbg !3218
  %111 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr135, 0, !dbg !3218
  %112 = insertvalue { ptr, i64, i64 } %111, i64 1, 1, !dbg !3218
  %113 = insertvalue { ptr, i64, i64 } %112, i64 1, 2, !dbg !3218
  %append.srcBuf136 = extractvalue { ptr, i64, i64 } %100, 0, !dbg !3219
  %append.srcLen137 = extractvalue { ptr, i64, i64 } %100, 1, !dbg !3219
  %append.srcCap138 = extractvalue { ptr, i64, i64 } %100, 2, !dbg !3219
  %append.elemsBuf139 = extractvalue { ptr, i64, i64 } %113, 0, !dbg !3219
  %append.elemsLen140 = extractvalue { ptr, i64, i64 } %113, 1, !dbg !3219
  %append.new141 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf136, ptr %append.elemsBuf139, i64 %append.srcLen137, i64 %append.srcCap138, i64 %append.elemsLen140, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3219
  %append.newPtr142 = extractvalue { ptr, i64, i64 } %append.new141, 0, !dbg !3219
  %append.newLen143 = extractvalue { ptr, i64, i64 } %append.new141, 1, !dbg !3219
  %append.newCap144 = extractvalue { ptr, i64, i64 } %append.new141, 2, !dbg !3219
  %114 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr142, 0, !dbg !3219
  %115 = insertvalue { ptr, i64, i64 } %114, i64 %append.newLen143, 1, !dbg !3219
  %116 = insertvalue { ptr, i64, i64 } %115, i64 %append.newCap144, 2, !dbg !3219
    #dbg_value({ ptr, i64, i64 } %116, !3110, !DIExpression(), !3220)
  %117 = sub i64 %101, 4, !dbg !3221
    #dbg_value(i64 %117, !3113, !DIExpression(), !3221)
  br label %for.loop, !dbg !3119

switch.next19:                                    ; preds = %switch.next16
    #dbg_value(i32 %r, !3111, !DIExpression(), !3222)
  %118 = icmp slt i32 %r, 65536, !dbg !3223
  br i1 %118, label %switch.body18, label %switch.next20, !dbg !3119

switch.next20:                                    ; preds = %switch.next19
    #dbg_value({ ptr, i64, i64 } %2, !3110, !DIExpression(), !3224)
  %append.srcBuf145 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3225
  %append.srcLen146 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3225
  %append.srcCap147 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3225
  %append.new148 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf145, ptr @"internal/reflectlite$string.35", i64 %append.srcLen146, i64 %append.srcCap147, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3225
  %append.newPtr149 = extractvalue { ptr, i64, i64 } %append.new148, 0, !dbg !3225
  %append.newLen150 = extractvalue { ptr, i64, i64 } %append.new148, 1, !dbg !3225
  %append.newCap151 = extractvalue { ptr, i64, i64 } %append.new148, 2, !dbg !3225
  %119 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr149, 0, !dbg !3225
  %120 = insertvalue { ptr, i64, i64 } %119, i64 %append.newLen150, 1, !dbg !3225
  %121 = insertvalue { ptr, i64, i64 } %120, i64 %append.newCap151, 2, !dbg !3225
    #dbg_value({ ptr, i64, i64 } %121, !3110, !DIExpression(), !3226)
    #dbg_value(i64 28, !3114, !DIExpression(), !3227)
  br label %for.loop21, !dbg !3119

for.loop21:                                       ; preds = %lookup.next155, %switch.next20
  %122 = phi { ptr, i64, i64 } [ %121, %switch.next20 ], [ %138, %lookup.next155 ], !dbg !3152
  %123 = phi i64 [ 28, %switch.next20 ], [ %139, %lookup.next155 ], !dbg !3227
    #dbg_value(i64 %123, !3114, !DIExpression(), !3228)
  %124 = icmp sge i64 %123, 0, !dbg !3229
  br i1 %124, label %for.body22, label %switch.done, !dbg !3119

for.body22:                                       ; preds = %for.loop21
    #dbg_value({ ptr, i64, i64 } %122, !3110, !DIExpression(), !3230)
    #dbg_value(i32 %r, !3111, !DIExpression(), !3231)
    #dbg_value(i64 %123, !3114, !DIExpression(), !3232)
  %shift.overflow152 = icmp uge i64 %123, 32, !dbg !3233
  %125 = trunc i64 %123 to i32, !dbg !3233
  %shift.offset153 = select i1 %shift.overflow152, i32 31, i32 %125, !dbg !3233
  %126 = ashr i32 %r, %shift.offset153, !dbg !3233
  %127 = and i32 %126, 15, !dbg !3234
  %128 = sext i32 %127 to i64, !dbg !3235
  %129 = icmp uge i64 %128, 15, !dbg !3235
  br i1 %129, label %lookup.throw154, label %lookup.next155, !dbg !3235

lookup.next155:                                   ; preds = %for.body22
  %130 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.36", i64 %128, !dbg !3235
  %131 = load i8, ptr %130, align 1, !dbg !3235
  %varargs156 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3236
  %132 = getelementptr inbounds [1 x i8], ptr %varargs156, i32 0, i64 0, !dbg !3236
  store i8 %131, ptr %132, align 1, !dbg !3235
  %slice.ptr157 = getelementptr inbounds [1 x i8], ptr %varargs156, i32 0, i64 0, !dbg !3236
  %133 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr157, 0, !dbg !3236
  %134 = insertvalue { ptr, i64, i64 } %133, i64 1, 1, !dbg !3236
  %135 = insertvalue { ptr, i64, i64 } %134, i64 1, 2, !dbg !3236
  %append.srcBuf158 = extractvalue { ptr, i64, i64 } %122, 0, !dbg !3237
  %append.srcLen159 = extractvalue { ptr, i64, i64 } %122, 1, !dbg !3237
  %append.srcCap160 = extractvalue { ptr, i64, i64 } %122, 2, !dbg !3237
  %append.elemsBuf161 = extractvalue { ptr, i64, i64 } %135, 0, !dbg !3237
  %append.elemsLen162 = extractvalue { ptr, i64, i64 } %135, 1, !dbg !3237
  %append.new163 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf158, ptr %append.elemsBuf161, i64 %append.srcLen159, i64 %append.srcCap160, i64 %append.elemsLen162, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3237
  %append.newPtr164 = extractvalue { ptr, i64, i64 } %append.new163, 0, !dbg !3237
  %append.newLen165 = extractvalue { ptr, i64, i64 } %append.new163, 1, !dbg !3237
  %append.newCap166 = extractvalue { ptr, i64, i64 } %append.new163, 2, !dbg !3237
  %136 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr164, 0, !dbg !3237
  %137 = insertvalue { ptr, i64, i64 } %136, i64 %append.newLen165, 1, !dbg !3237
  %138 = insertvalue { ptr, i64, i64 } %137, i64 %append.newCap166, 2, !dbg !3237
    #dbg_value({ ptr, i64, i64 } %138, !3110, !DIExpression(), !3238)
  %139 = sub i64 %123, 4, !dbg !3239
    #dbg_value(i64 %139, !3114, !DIExpression(), !3239)
  br label %for.loop21, !dbg !3119

binop.rhs:                                        ; preds = %switch.next14
    #dbg_value(i32 %r, !3111, !DIExpression(), !3240)
  %140 = icmp eq i32 %r, 127, !dbg !3241
  br label %binop.done, !dbg !3119

slice.throw:                                      ; preds = %if.then1
  call void @runtime.slicePanic(ptr undef), !dbg !3142
  unreachable, !dbg !3142

lookup.throw:                                     ; preds = %switch.body15
  call void @runtime.lookupPanic(ptr undef), !dbg !3189
  unreachable, !dbg !3189

lookup.throw112:                                  ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !3197
  unreachable, !dbg !3197

lookup.throw132:                                  ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !3217
  unreachable, !dbg !3217

lookup.throw154:                                  ; preds = %for.body22
  call void @runtime.lookupPanic(ptr undef), !dbg !3235
  unreachable, !dbg !3235
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"internal/reflectlite.isPrint"(i32 %r, ptr %context) unnamed_addr #1 !dbg !3242 {
entry:
    #dbg_value(i32 %r, !3244, !DIExpression(), !3245)
    #dbg_value(i32 %r, !3244, !DIExpression(), !3246)
  %0 = icmp sle i32 %r, 255, !dbg !3247
  br i1 %0, label %if.then, label %if.done5, !dbg !3248

if.then:                                          ; preds = %entry
    #dbg_value(i32 %r, !3244, !DIExpression(), !3249)
  %1 = icmp sle i32 32, %r, !dbg !3250
  br i1 %1, label %cond.true, label %if.done, !dbg !3248

cond.true:                                        ; preds = %if.then
    #dbg_value(i32 %r, !3244, !DIExpression(), !3251)
  %2 = icmp sle i32 %r, 126, !dbg !3252
  br i1 %2, label %if.then1, label %if.done, !dbg !3248

if.then1:                                         ; preds = %cond.true
  ret i1 true, !dbg !3253

if.done:                                          ; preds = %cond.true, %if.then
    #dbg_value(i32 %r, !3244, !DIExpression(), !3254)
  %3 = icmp sle i32 161, %r, !dbg !3255
  br i1 %3, label %cond.true2, label %if.done4, !dbg !3248

cond.true2:                                       ; preds = %if.done
    #dbg_value(i32 %r, !3244, !DIExpression(), !3256)
  %4 = icmp sle i32 %r, 255, !dbg !3257
  br i1 %4, label %if.then3, label %if.done4, !dbg !3248

if.then3:                                         ; preds = %cond.true2
    #dbg_value(i32 %r, !3244, !DIExpression(), !3258)
  %5 = icmp ne i32 %r, 173, !dbg !3259
  ret i1 %5, !dbg !3260

if.done4:                                         ; preds = %cond.true2, %if.done
  ret i1 false, !dbg !3261

if.done5:                                         ; preds = %entry
  ret i1 false, !dbg !3262
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
define internal %runtime._string @"(internal/reflectlite.Kind).String$invoke"(ptr %0, ptr %1) unnamed_addr #1 !dbg !3263 {
entry:
  %unpack.int = ptrtoint ptr %0 to i8, !dbg !3264
  %ret = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %unpack.int, ptr %1), !dbg !3264
  ret %runtime._string %ret, !dbg !3264
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.ValueError).Error"(ptr dereferenceable_or_null(24) %e, ptr %context) unnamed_addr #1 !dbg !3265 {
entry:
    #dbg_value(ptr %e, !3274, !DIExpression(), !3275)
    #dbg_value(ptr %e, !3274, !DIExpression(), !3276)
  %0 = icmp eq ptr %e, null, !dbg !3277
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3277

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 1, !dbg !3277
  %2 = icmp eq ptr %1, null, !dbg !3277
  br i1 %2, label %deref.throw, label %deref.next, !dbg !3277

deref.next:                                       ; preds = %gep.next
  %3 = load i8, ptr %1, align 1, !dbg !3277
  %4 = icmp eq i8 %3, 0, !dbg !3278
  br i1 %4, label %if.then, label %if.done, !dbg !3279

if.then:                                          ; preds = %deref.next
    #dbg_value(ptr %e, !3274, !DIExpression(), !3280)
  %5 = icmp eq ptr %e, null, !dbg !3281
  br i1 %5, label %gep.throw1, label %gep.next2, !dbg !3281

gep.next2:                                        ; preds = %if.then
  %6 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 0, !dbg !3281
  %7 = icmp eq ptr %6, null, !dbg !3281
  br i1 %7, label %deref.throw3, label %deref.next4, !dbg !3281

deref.next4:                                      ; preds = %gep.next2
  %8 = load %runtime._string, ptr %6, align 8, !dbg !3281
  %9 = extractvalue %runtime._string %8, 0, !dbg !3282
  %10 = extractvalue %runtime._string %8, 1, !dbg !3282
  %11 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.229", i64 17, ptr %9, i64 %10, ptr undef), !dbg !3282
  %12 = extractvalue %runtime._string %11, 0, !dbg !3283
  %13 = extractvalue %runtime._string %11, 1, !dbg !3283
  %14 = call %runtime._string @runtime.stringConcat(ptr %12, i64 %13, ptr @"internal/reflectlite$string.230", i64 14, ptr undef), !dbg !3283
  ret %runtime._string %14, !dbg !3284

if.done:                                          ; preds = %deref.next
    #dbg_value(ptr %e, !3274, !DIExpression(), !3285)
  %15 = icmp eq ptr %e, null, !dbg !3286
  br i1 %15, label %gep.throw5, label %gep.next6, !dbg !3286

gep.next6:                                        ; preds = %if.done
  %16 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 0, !dbg !3286
  %17 = icmp eq ptr %16, null, !dbg !3286
  br i1 %17, label %deref.throw7, label %deref.next8, !dbg !3286

deref.next8:                                      ; preds = %gep.next6
  %18 = load %runtime._string, ptr %16, align 8, !dbg !3286
  %19 = extractvalue %runtime._string %18, 0, !dbg !3287
  %20 = extractvalue %runtime._string %18, 1, !dbg !3287
  %21 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.231", i64 17, ptr %19, i64 %20, ptr undef), !dbg !3287
  %22 = extractvalue %runtime._string %21, 0, !dbg !3288
  %23 = extractvalue %runtime._string %21, 1, !dbg !3288
  %24 = call %runtime._string @runtime.stringConcat(ptr %22, i64 %23, ptr @"internal/reflectlite$string.232", i64 4, ptr undef), !dbg !3288
    #dbg_value(ptr %e, !3274, !DIExpression(), !3289)
  %25 = icmp eq ptr %e, null, !dbg !3290
  br i1 %25, label %gep.throw9, label %gep.next10, !dbg !3290

gep.next10:                                       ; preds = %deref.next8
  %26 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 1, !dbg !3290
  %27 = icmp eq ptr %26, null, !dbg !3290
  br i1 %27, label %deref.throw11, label %deref.next12, !dbg !3290

deref.next12:                                     ; preds = %gep.next10
  %28 = load i8, ptr %26, align 1, !dbg !3290
  %29 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %28, ptr undef), !dbg !3291
  %30 = extractvalue %runtime._string %24, 0, !dbg !3292
  %31 = extractvalue %runtime._string %24, 1, !dbg !3292
  %32 = extractvalue %runtime._string %29, 0, !dbg !3292
  %33 = extractvalue %runtime._string %29, 1, !dbg !3292
  %34 = call %runtime._string @runtime.stringConcat(ptr %30, i64 %31, ptr %32, i64 %33, ptr undef), !dbg !3292
  %35 = extractvalue %runtime._string %34, 0, !dbg !3293
  %36 = extractvalue %runtime._string %34, 1, !dbg !3293
  %37 = call %runtime._string @runtime.stringConcat(ptr %35, i64 %36, ptr @"internal/reflectlite$string.233", i64 6, ptr undef), !dbg !3293
  ret %runtime._string %37, !dbg !3294

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3277
  unreachable, !dbg !3277

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3277
  unreachable, !dbg !3277

gep.throw1:                                       ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3281
  unreachable, !dbg !3281

deref.throw3:                                     ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3281
  unreachable, !dbg !3281

gep.throw5:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3286
  unreachable, !dbg !3286

deref.throw7:                                     ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3286
  unreachable, !dbg !3286

gep.throw9:                                       ; preds = %deref.next8
  call void @runtime.nilPanic(ptr undef), !dbg !3290
  unreachable, !dbg !3290

deref.throw11:                                    ; preds = %gep.next10
  call void @runtime.nilPanic(ptr undef), !dbg !3290
  unreachable, !dbg !3290
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr %context) unnamed_addr #1 !dbg !3295 {
entry:
  ret %runtime._string { ptr @"internal/reflectlite$string.17", i64 14 }, !dbg !3300
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.badSyntax).Error"(ptr %arg0, ptr %context) unnamed_addr #1 {
entry:
  %0 = call %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr undef)
  ret %runtime._string %0
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.badSyntax).Error$invoke"(ptr %0, ptr %1) unnamed_addr #1 !dbg !3301 {
entry:
  %ret = call %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr %1), !dbg !3302
  ret %runtime._string %ret, !dbg !3302
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"runtime/interrupt.In"(ptr %context) #1 !dbg !3303 {
entry:
  ret i1 false, !dbg !3306
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Mutex).Lock"(ptr dereferenceable_or_null(4) %m, ptr %context) #1 !dbg !3307 {
entry:
    #dbg_value(ptr %m, !3312, !DIExpression(), !3313)
    #dbg_value(ptr %m, !3312, !DIExpression(), !3314)
  %0 = icmp eq ptr %m, null, !dbg !3315
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3315

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3315
  %2 = icmp eq ptr %1, null, !dbg !3314
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3314

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3314
  %4 = call i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr %3, i32 0, i32 1, ptr undef), !dbg !3316
  br i1 %4, label %if.then, label %for.loop, !dbg !3317

if.then:                                          ; preds = %gep.next2
  ret void, !dbg !3318

for.loop:                                         ; preds = %gep.next8, %gep.next2
    #dbg_value(ptr %m, !3312, !DIExpression(), !3319)
  %5 = icmp eq ptr %m, null, !dbg !3320
  br i1 %5, label %gep.throw3, label %gep.next4, !dbg !3320

gep.next4:                                        ; preds = %for.loop
  %6 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3320
  %7 = icmp eq ptr %6, null, !dbg !3319
  br i1 %7, label %gep.throw5, label %gep.next6, !dbg !3319

gep.next6:                                        ; preds = %gep.next4
  %8 = getelementptr inbounds %"internal/futex.Futex", ptr %6, i32 0, i32 0, !dbg !3319
  %9 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr %8, i32 2, ptr undef), !dbg !3321
  %10 = icmp ne i32 %9, 0, !dbg !3322
  br i1 %10, label %for.body, label %for.done, !dbg !3317

for.body:                                         ; preds = %gep.next6
    #dbg_value(ptr %m, !3312, !DIExpression(), !3323)
  %11 = icmp eq ptr %m, null, !dbg !3324
  br i1 %11, label %gep.throw7, label %gep.next8, !dbg !3324

gep.next8:                                        ; preds = %for.body
  %12 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3324
  %13 = call i1 @"(*internal/futex.Futex).Wait"(ptr %12, i32 2, ptr undef), !dbg !3325
  br label %for.loop, !dbg !3317

for.done:                                         ; preds = %gep.next6
  ret void, !dbg !3326

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3315
  unreachable, !dbg !3315

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3314
  unreachable, !dbg !3314

gep.throw3:                                       ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !3320
  unreachable, !dbg !3320

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3319
  unreachable, !dbg !3319

gep.throw7:                                       ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3324
  unreachable, !dbg !3324
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Mutex).Unlock"(ptr dereferenceable_or_null(4) %m, ptr %context) #1 !dbg !3327 {
entry:
    #dbg_value(ptr %m, !3329, !DIExpression(), !3331)
    #dbg_value(ptr %m, !3329, !DIExpression(), !3332)
  %0 = icmp eq ptr %m, null, !dbg !3333
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3333

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3333
  %2 = icmp eq ptr %1, null, !dbg !3332
  br i1 %2, label %gep.throw2, label %gep.next3, !dbg !3332

gep.next3:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3332
  %4 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr %3, i32 0, ptr undef), !dbg !3334
    #dbg_value(i32 %4, !3330, !DIExpression(), !3335)
    #dbg_value(i32 %4, !3330, !DIExpression(), !3336)
  %5 = icmp eq i32 %4, 0, !dbg !3337
  br i1 %5, label %if.then, label %if.else, !dbg !3338

if.then:                                          ; preds = %gep.next3
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"internal/task$pack", ptr undef), !dbg !3339
  unreachable, !dbg !3339

if.else:                                          ; preds = %gep.next3
    #dbg_value(i32 %4, !3330, !DIExpression(), !3340)
  %6 = icmp eq i32 %4, 2, !dbg !3341
  br i1 %6, label %if.then1, label %if.done, !dbg !3338

if.then1:                                         ; preds = %if.else
    #dbg_value(ptr %m, !3329, !DIExpression(), !3342)
  %7 = icmp eq ptr %m, null, !dbg !3343
  br i1 %7, label %gep.throw4, label %gep.next5, !dbg !3343

gep.next5:                                        ; preds = %if.then1
  %8 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3343
  call void @"(*internal/futex.Futex).Wake"(ptr %8, ptr undef), !dbg !3344
  br label %if.done, !dbg !3338

if.done:                                          ; preds = %gep.next5, %if.else
  ret void, !dbg !3345

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3333
  unreachable, !dbg !3333

gep.throw2:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3332
  unreachable, !dbg !3332

gep.throw4:                                       ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3343
  unreachable, !dbg !3343
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Semaphore).Wait"(ptr dereferenceable_or_null(4) %s, ptr %context) unnamed_addr #1 !dbg !3346 {
entry:
    #dbg_value(ptr %s, !3352, !DIExpression(), !3355)
    #dbg_value(i32 -1, !3353, !DIExpression(), !3356)
    #dbg_value(ptr %s, !3352, !DIExpression(), !3357)
  %0 = icmp eq ptr %s, null, !dbg !3358
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3358

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3358
  %2 = icmp eq ptr %1, null, !dbg !3357
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3357

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3357
    #dbg_value(i32 -1, !3353, !DIExpression(), !3359)
  %4 = call i32 @"(*sync/atomic.Uint32).Add"(ptr %3, i32 -1, ptr undef), !dbg !3360
    #dbg_value(i32 %4, !3354, !DIExpression(), !3361)
  br label %for.body, !dbg !3362

for.body:                                         ; preds = %gep.next8, %gep.next2
  %5 = phi i32 [ %4, %gep.next2 ], [ %14, %gep.next8 ], !dbg !3361
    #dbg_value(i32 %5, !3354, !DIExpression(), !3363)
  %6 = icmp sge i32 %5, 0, !dbg !3364
  br i1 %6, label %if.then, label %if.done, !dbg !3362

if.then:                                          ; preds = %for.body
  ret void, !dbg !3365

if.done:                                          ; preds = %for.body
    #dbg_value(ptr %s, !3352, !DIExpression(), !3366)
  %7 = icmp eq ptr %s, null, !dbg !3367
  br i1 %7, label %gep.throw3, label %gep.next4, !dbg !3367

gep.next4:                                        ; preds = %if.done
  %8 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3367
    #dbg_value(i32 %5, !3354, !DIExpression(), !3368)
  %9 = call i1 @"(*internal/futex.Futex).Wait"(ptr %8, i32 %5, ptr undef), !dbg !3369
    #dbg_value(ptr %s, !3352, !DIExpression(), !3370)
  %10 = icmp eq ptr %s, null, !dbg !3371
  br i1 %10, label %gep.throw5, label %gep.next6, !dbg !3371

gep.next6:                                        ; preds = %gep.next4
  %11 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3371
  %12 = icmp eq ptr %11, null, !dbg !3370
  br i1 %12, label %gep.throw7, label %gep.next8, !dbg !3370

gep.next8:                                        ; preds = %gep.next6
  %13 = getelementptr inbounds %"internal/futex.Futex", ptr %11, i32 0, i32 0, !dbg !3370
  %14 = call i32 @"(*sync/atomic.Uint32).Load"(ptr %13, ptr undef), !dbg !3372
    #dbg_value(i32 %14, !3354, !DIExpression(), !3373)
  br label %for.body, !dbg !3362

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3358
  unreachable, !dbg !3358

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3357
  unreachable, !dbg !3357

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3367
  unreachable, !dbg !3367

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3371
  unreachable, !dbg !3371

gep.throw7:                                       ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3370
  unreachable, !dbg !3370
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.Init"(i64 %sp, ptr %context) #1 !dbg !3374 {
entry:
    #dbg_value(i64 %sp, !3378, !DIExpression(), !3380)
    #dbg_value(i64 %sp, !3378, !DIExpression(), !3381)
  %0 = icmp eq ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 2), null, !dbg !3382
  br i1 %0, label %store.throw, label %store.next, !dbg !3382

store.next:                                       ; preds = %entry
  store i64 %sp, ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 2), align 8, !dbg !3382
    #dbg_value(i64 %sp, !3379, !DIExpression(), !3382)
  call void @tinygo_task_init(ptr @"internal/task.mainTask", ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 1), ptr @"internal/task.numCPU", ptr undef), !dbg !3383
  ret void, !dbg !3384

store.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3382
  unreachable, !dbg !3382
}

declare void @tinygo_task_init(ptr dereferenceable_or_null(88), ptr dereferenceable_or_null(8), ptr dereferenceable_or_null(4), ptr) #2

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"internal/task.Current"(ptr %context) #1 !dbg !3385 {
entry:
  %0 = call ptr @tinygo_task_current(), !dbg !3388
    #dbg_value(ptr %0, !3387, !DIExpression(), !3389)
    #dbg_value(ptr %0, !3387, !DIExpression(), !3390)
  %1 = icmp eq ptr %0, null, !dbg !3391
  br i1 %1, label %if.then, label %if.done, !dbg !3392

if.then:                                          ; preds = %entry
  call void @runtime.runtimePanic(ptr @"internal/task$string.7", i64 20, ptr undef), !dbg !3393
  br label %if.done, !dbg !3392

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(ptr %0, !3387, !DIExpression(), !3394)
  ret ptr %0, !dbg !3395
}

declare ptr @tinygo_task_current() #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.Pause"(ptr %context) #1 !dbg !3396 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3399
    #dbg_value(ptr %0, !3398, !DIExpression(), !3400)
  br i1 false, label %if.then, label %if.done, !dbg !3401

if.then:                                          ; preds = %entry
    #dbg_value(ptr %0, !3398, !DIExpression(), !3402)
  %1 = icmp eq ptr %0, null, !dbg !3403
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3403

gep.next:                                         ; preds = %if.then
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3403
  %3 = icmp eq ptr %2, null, !dbg !3404
  br i1 %3, label %gep.throw1, label %gep.next2, !dbg !3404

gep.next2:                                        ; preds = %gep.next
  %4 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 0, !dbg !3404
  %5 = icmp eq ptr %4, null, !dbg !3404
  br i1 %5, label %deref.throw, label %deref.next, !dbg !3404

deref.next:                                       ; preds = %gep.next2
  %6 = load i64, ptr %4, align 8, !dbg !3404
  call void @runtime.printlock(ptr undef), !dbg !3405
  call void @runtime.printstring(ptr @"internal/task$string.8", i64 12, ptr undef), !dbg !3405
  call void @runtime.printspace(ptr undef), !dbg !3405
  call void @runtime.printptr(i64 %6, ptr undef), !dbg !3405
  call void @runtime.printnl(ptr undef), !dbg !3405
  call void @runtime.printunlock(ptr undef), !dbg !3405
  br label %if.done, !dbg !3401

if.done:                                          ; preds = %deref.next, %entry
    #dbg_value(ptr %0, !3398, !DIExpression(), !3406)
  %7 = icmp eq ptr %0, null, !dbg !3407
  br i1 %7, label %gep.throw3, label %gep.next4, !dbg !3407

gep.next4:                                        ; preds = %if.done
  %8 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3407
  %9 = icmp eq ptr %8, null, !dbg !3408
  br i1 %9, label %gep.throw5, label %gep.next6, !dbg !3408

gep.next6:                                        ; preds = %gep.next4
  %10 = getelementptr inbounds %"internal/task.state", ptr %8, i32 0, i32 5, !dbg !3408
  call void @"(*internal/task.Semaphore).Wait"(ptr %10, ptr undef), !dbg !3409
  ret void, !dbg !3410

gep.throw:                                        ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3403
  unreachable, !dbg !3403

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3404
  unreachable, !dbg !3404

deref.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3404
  unreachable, !dbg !3404

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3407
  unreachable, !dbg !3407

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3408
  unreachable, !dbg !3408
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_exited(ptr nocapture dereferenceable_or_null(88) %t) #1 !dbg !3411 {
entry:
    #dbg_value(ptr %t, !3415, !DIExpression(), !3420)
  br i1 false, label %if.then, label %if.done, !dbg !3421

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !3415, !DIExpression(), !3422)
  %0 = icmp eq ptr %t, null, !dbg !3423
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3423

gep.next:                                         ; preds = %if.then
  %1 = getelementptr inbounds %"internal/task.Task", ptr %t, i32 0, i32 4, !dbg !3423
  %2 = icmp eq ptr %1, null, !dbg !3424
  br i1 %2, label %gep.throw5, label %gep.next6, !dbg !3424

gep.next6:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/task.state", ptr %1, i32 0, i32 0, !dbg !3424
  %4 = icmp eq ptr %3, null, !dbg !3424
  br i1 %4, label %deref.throw, label %deref.next, !dbg !3424

deref.next:                                       ; preds = %gep.next6
  %5 = load i64, ptr %3, align 8, !dbg !3424
  call void @runtime.printlock(ptr undef), !dbg !3425
  call void @runtime.printstring(ptr @"internal/task$string.12", i64 9, ptr undef), !dbg !3425
  call void @runtime.printspace(ptr undef), !dbg !3425
  call void @runtime.printptr(i64 %5, ptr undef), !dbg !3425
  call void @runtime.printnl(ptr undef), !dbg !3425
  call void @runtime.printunlock(ptr undef), !dbg !3425
  br label %if.done, !dbg !3421

if.done:                                          ; preds = %deref.next, %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3426
    #dbg_value(i1 false, !3416, !DIExpression(), !3427)
    #dbg_value(ptr @"internal/task.activeTasks", !3417, !DIExpression(), !3428)
  br label %for.loop, !dbg !3421

for.loop:                                         ; preds = %gep.next22, %if.done
  %6 = phi ptr [ @"internal/task.activeTasks", %if.done ], [ %25, %gep.next22 ], !dbg !3428
    #dbg_value(ptr %6, !3417, !DIExpression(), !3429)
  %7 = icmp eq ptr %6, null, !dbg !3430
  br i1 %7, label %deref.throw7, label %deref.next8, !dbg !3430

deref.next8:                                      ; preds = %for.loop
  %8 = load ptr, ptr %6, align 8, !dbg !3430
  %9 = icmp ne ptr %8, null, !dbg !3431
  br i1 %9, label %for.body, label %for.done, !dbg !3421

for.body:                                         ; preds = %deref.next8
    #dbg_value(ptr %6, !3417, !DIExpression(), !3432)
  %10 = icmp eq ptr %6, null, !dbg !3433
  br i1 %10, label %deref.throw9, label %deref.next10, !dbg !3433

deref.next10:                                     ; preds = %for.body
  %11 = load ptr, ptr %6, align 8, !dbg !3433
    #dbg_value(ptr %t, !3415, !DIExpression(), !3434)
  %12 = icmp eq ptr %11, %t, !dbg !3435
  br i1 %12, label %if.then1, label %if.done2, !dbg !3421

if.then1:                                         ; preds = %deref.next10
    #dbg_value(ptr %6, !3417, !DIExpression(), !3436)
    #dbg_value(ptr %t, !3415, !DIExpression(), !3437)
  %13 = icmp eq ptr %t, null, !dbg !3438
  br i1 %13, label %gep.throw11, label %gep.next12, !dbg !3438

gep.next12:                                       ; preds = %if.then1
  %14 = getelementptr inbounds %"internal/task.Task", ptr %t, i32 0, i32 4, !dbg !3438
  %15 = icmp eq ptr %14, null, !dbg !3439
  br i1 %15, label %gep.throw13, label %gep.next14, !dbg !3439

gep.next14:                                       ; preds = %gep.next12
  %16 = getelementptr inbounds %"internal/task.state", ptr %14, i32 0, i32 4, !dbg !3439
  %17 = icmp eq ptr %16, null, !dbg !3439
  br i1 %17, label %deref.throw15, label %deref.next16, !dbg !3439

deref.next16:                                     ; preds = %gep.next14
  %18 = load ptr, ptr %16, align 8, !dbg !3439
  %19 = icmp eq ptr %6, null, !dbg !3440
  br i1 %19, label %store.throw, label %store.next, !dbg !3440

store.next:                                       ; preds = %deref.next16
  store ptr %18, ptr %6, align 8, !dbg !3440
    #dbg_value(i1 true, !3416, !DIExpression(), !3441)
  br label %for.done, !dbg !3421

if.done2:                                         ; preds = %deref.next10
    #dbg_value(ptr %6, !3417, !DIExpression(), !3442)
  %20 = icmp eq ptr %6, null, !dbg !3443
  br i1 %20, label %deref.throw17, label %deref.next18, !dbg !3443

deref.next18:                                     ; preds = %if.done2
  %21 = load ptr, ptr %6, align 8, !dbg !3443
  %22 = icmp eq ptr %21, null, !dbg !3444
  br i1 %22, label %gep.throw19, label %gep.next20, !dbg !3444

gep.next20:                                       ; preds = %deref.next18
  %23 = getelementptr inbounds %"internal/task.Task", ptr %21, i32 0, i32 4, !dbg !3444
  %24 = icmp eq ptr %23, null, !dbg !3445
  br i1 %24, label %gep.throw21, label %gep.next22, !dbg !3445

gep.next22:                                       ; preds = %gep.next20
  %25 = getelementptr inbounds %"internal/task.state", ptr %23, i32 0, i32 4, !dbg !3445
    #dbg_value(ptr %25, !3417, !DIExpression(), !3446)
  br label %for.loop, !dbg !3421

for.done:                                         ; preds = %store.next, %deref.next8
  %26 = phi i1 [ false, %deref.next8 ], [ true, %store.next ], !dbg !3427
  %27 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3447
  %28 = sub i32 %27, 1, !dbg !3447
  store i32 %28, ptr @"internal/task.otherGoroutines", align 4, !dbg !3447
    #dbg_value(i32 %28, !3419, !DIExpression(), !3447)
  call void @"(*internal/task.Mutex).Unlock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3448
    #dbg_value(i1 %26, !3416, !DIExpression(), !3449)
  br i1 %26, label %if.done3, label %if.then4, !dbg !3421

if.done3:                                         ; preds = %if.then4, %for.done
  ret void, !dbg !3450

if.then4:                                         ; preds = %for.done
  call void @runtime.runtimePanic(ptr @"internal/task$string.13", i64 17, ptr undef), !dbg !3451
  br label %if.done3, !dbg !3421

gep.throw:                                        ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3423
  unreachable, !dbg !3423

gep.throw5:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3424
  unreachable, !dbg !3424

deref.throw:                                      ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3424
  unreachable, !dbg !3424

deref.throw7:                                     ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !3430
  unreachable, !dbg !3430

deref.throw9:                                     ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3433
  unreachable, !dbg !3433

gep.throw11:                                      ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3438
  unreachable, !dbg !3438

gep.throw13:                                      ; preds = %gep.next12
  call void @runtime.nilPanic(ptr undef), !dbg !3439
  unreachable, !dbg !3439

deref.throw15:                                    ; preds = %gep.next14
  call void @runtime.nilPanic(ptr undef), !dbg !3439
  unreachable, !dbg !3439

store.throw:                                      ; preds = %deref.next16
  call void @runtime.nilPanic(ptr undef), !dbg !3440
  unreachable, !dbg !3440

deref.throw17:                                    ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !3443
  unreachable, !dbg !3443

gep.throw19:                                      ; preds = %deref.next18
  call void @runtime.nilPanic(ptr undef), !dbg !3444
  unreachable, !dbg !3444

gep.throw21:                                      ; preds = %gep.next20
  call void @runtime.nilPanic(ptr undef), !dbg !3445
  unreachable, !dbg !3445
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.waitGroup).done"(ptr dereferenceable_or_null(4) %wg, ptr %context) unnamed_addr #1 !dbg !3452 {
entry:
    #dbg_value(ptr %wg, !3457, !DIExpression(), !3458)
    #dbg_value(ptr %wg, !3457, !DIExpression(), !3459)
  %0 = icmp eq ptr %wg, null, !dbg !3460
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3460

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3460
  %2 = icmp eq ptr %1, null, !dbg !3459
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3459

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3459
  %4 = call i32 @"(*sync/atomic.Uint32).Add"(ptr %3, i32 -1, ptr undef), !dbg !3461
  %5 = icmp eq i32 %4, 0, !dbg !3462
  br i1 %5, label %if.then, label %if.done, !dbg !3463

if.then:                                          ; preds = %gep.next2
    #dbg_value(ptr %wg, !3457, !DIExpression(), !3464)
  %6 = icmp eq ptr %wg, null, !dbg !3465
  br i1 %6, label %gep.throw3, label %gep.next4, !dbg !3465

gep.next4:                                        ; preds = %if.then
  %7 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3465
  call void @"(*internal/futex.Futex).WakeAll"(ptr %7, ptr undef), !dbg !3466
  br label %if.done, !dbg !3463

if.done:                                          ; preds = %gep.next4, %gep.next2
  ret void, !dbg !3467

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3460
  unreachable, !dbg !3460

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3459
  unreachable, !dbg !3459

gep.throw3:                                       ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3465
  unreachable, !dbg !3465
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.waitGroup).wait"(ptr dereferenceable_or_null(4) %wg, ptr %context) unnamed_addr #1 !dbg !3468 {
entry:
    #dbg_value(ptr %wg, !3470, !DIExpression(), !3472)
  br label %for.body, !dbg !3473

for.body:                                         ; preds = %gep.next4, %entry
    #dbg_value(ptr %wg, !3470, !DIExpression(), !3474)
  %0 = icmp eq ptr %wg, null, !dbg !3475
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3475

gep.next:                                         ; preds = %for.body
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3475
  %2 = icmp eq ptr %1, null, !dbg !3474
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3474

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3474
  %4 = call i32 @"(*sync/atomic.Uint32).Load"(ptr %3, ptr undef), !dbg !3476
    #dbg_value(i32 %4, !3471, !DIExpression(), !3477)
    #dbg_value(i32 %4, !3471, !DIExpression(), !3478)
  %5 = icmp eq i32 %4, 0, !dbg !3479
  br i1 %5, label %if.then, label %if.done, !dbg !3473

if.then:                                          ; preds = %gep.next2
  ret void, !dbg !3480

if.done:                                          ; preds = %gep.next2
    #dbg_value(ptr %wg, !3470, !DIExpression(), !3481)
  %6 = icmp eq ptr %wg, null, !dbg !3482
  br i1 %6, label %gep.throw3, label %gep.next4, !dbg !3482

gep.next4:                                        ; preds = %if.done
  %7 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3482
    #dbg_value(i32 %4, !3471, !DIExpression(), !3483)
  %8 = call i1 @"(*internal/futex.Futex).Wait"(ptr %7, i32 %4, ptr undef), !dbg !3484
  br label %for.body, !dbg !3473

gep.throw:                                        ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3475
  unreachable, !dbg !3475

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3474
  unreachable, !dbg !3474

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3482
  unreachable, !dbg !3482
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %n, ptr %context) unnamed_addr #1 !dbg !3485 {
entry:
    #dbg_value(i32 %n, !3489, !DIExpression(), !3491)
  %wg = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3492
  %0 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3493
  %1 = icmp eq ptr %0, null, !dbg !3494
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3494

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/futex.Futex", ptr %0, i32 0, i32 0, !dbg !3494
    #dbg_value(i32 %n, !3489, !DIExpression(), !3495)
  call void @"(*sync/atomic.Uint32).Store"(ptr %2, i32 %n, ptr undef), !dbg !3496
  %3 = load %"internal/task.Semaphore", ptr %wg, align 4, !dbg !3497
    #dbg_value(%"internal/task.Semaphore" %3, !3490, !DIExpression(), !3497)
  ret %"internal/task.Semaphore" %3, !dbg !3498

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3494
  unreachable, !dbg !3494
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.GCStopWorldAndScan"(ptr %context) #1 !dbg !3499 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3507
    #dbg_value(ptr %0, !3501, !DIExpression(), !3508)
  %1 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3509
  %2 = icmp eq i32 %1, 0, !dbg !3510
  br i1 %2, label %if.then, label %if.done2, !dbg !3511

if.then:                                          ; preds = %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3512
  call void @"(*internal/task.waitGroup).wait"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3513
  call void @"(*sync/atomic.Uint32).Store"(ptr @"internal/task.gcState", i32 1, ptr undef), !dbg !3514
  %3 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3515
    #dbg_value(i32 %3, !3502, !DIExpression(), !3515)
  %4 = call %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %3, ptr undef), !dbg !3516
  store %"internal/task.Semaphore" %4, ptr @"internal/task.scanWaitGroup", align 4, !dbg !3517
    #dbg_value(%"internal/task.Semaphore" %4, !3503, !DIExpression(), !3517)
  %5 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !3518
    #dbg_value(ptr %5, !3504, !DIExpression(), !3518)
    #dbg_value(ptr %5, !3505, !DIExpression(), !3519)
  br label %for.loop, !dbg !3511

for.loop:                                         ; preds = %deref.next15, %if.then
  %6 = phi ptr [ %5, %if.then ], [ %20, %deref.next15 ], !dbg !3519
    #dbg_value(ptr %6, !3505, !DIExpression(), !3520)
  %7 = icmp ne ptr %6, null, !dbg !3521
  br i1 %7, label %for.body, label %for.done, !dbg !3511

for.body:                                         ; preds = %for.loop
    #dbg_value(ptr %6, !3505, !DIExpression(), !3522)
    #dbg_value(ptr %0, !3501, !DIExpression(), !3523)
  %8 = icmp ne ptr %6, %0, !dbg !3524
  br i1 %8, label %if.then1, label %if.done, !dbg !3511

if.then1:                                         ; preds = %for.body
    #dbg_value(ptr %6, !3505, !DIExpression(), !3525)
  %9 = icmp eq ptr %6, null, !dbg !3526
  br i1 %9, label %gep.throw, label %gep.next, !dbg !3526

gep.next:                                         ; preds = %if.then1
  %10 = getelementptr inbounds %"internal/task.Task", ptr %6, i32 0, i32 4, !dbg !3526
  %11 = icmp eq ptr %10, null, !dbg !3527
  br i1 %11, label %gep.throw8, label %gep.next9, !dbg !3527

gep.next9:                                        ; preds = %gep.next
  %12 = getelementptr inbounds %"internal/task.state", ptr %10, i32 0, i32 1, !dbg !3527
  %13 = icmp eq ptr %12, null, !dbg !3527
  br i1 %13, label %deref.throw, label %deref.next, !dbg !3527

deref.next:                                       ; preds = %gep.next9
  %14 = load ptr, ptr %12, align 8, !dbg !3527
  call void @tinygo_task_send_gc_signal(ptr %14), !dbg !3528
  br label %if.done, !dbg !3511

if.done:                                          ; preds = %deref.next, %for.body
    #dbg_value(ptr %6, !3505, !DIExpression(), !3529)
  %15 = icmp eq ptr %6, null, !dbg !3530
  br i1 %15, label %gep.throw10, label %gep.next11, !dbg !3530

gep.next11:                                       ; preds = %if.done
  %16 = getelementptr inbounds %"internal/task.Task", ptr %6, i32 0, i32 4, !dbg !3530
  %17 = icmp eq ptr %16, null, !dbg !3531
  br i1 %17, label %gep.throw12, label %gep.next13, !dbg !3531

gep.next13:                                       ; preds = %gep.next11
  %18 = getelementptr inbounds %"internal/task.state", ptr %16, i32 0, i32 4, !dbg !3531
  %19 = icmp eq ptr %18, null, !dbg !3531
  br i1 %19, label %deref.throw14, label %deref.next15, !dbg !3531

deref.next15:                                     ; preds = %gep.next13
  %20 = load ptr, ptr %18, align 8, !dbg !3531
    #dbg_value(ptr %20, !3505, !DIExpression(), !3532)
  br label %for.loop, !dbg !3511

for.done:                                         ; preds = %for.loop
  call void @"(*internal/task.waitGroup).wait"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3533
  br label %if.done2, !dbg !3511

if.done2:                                         ; preds = %for.done, %entry
  %21 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !3534
    #dbg_value(ptr %21, !3504, !DIExpression(), !3534)
    #dbg_value(ptr %21, !3506, !DIExpression(), !3535)
  br label %for.loop3, !dbg !3511

for.loop3:                                        ; preds = %deref.next33, %if.done2
  %22 = phi ptr [ %21, %if.done2 ], [ %42, %deref.next33 ], !dbg !3535
    #dbg_value(ptr %22, !3506, !DIExpression(), !3536)
  %23 = icmp ne ptr %22, null, !dbg !3537
  br i1 %23, label %for.body4, label %for.done7, !dbg !3511

for.body4:                                        ; preds = %for.loop3
    #dbg_value(ptr %22, !3506, !DIExpression(), !3538)
    #dbg_value(ptr %0, !3501, !DIExpression(), !3539)
  %24 = icmp ne ptr %22, %0, !dbg !3540
  br i1 %24, label %if.then5, label %if.done6, !dbg !3511

if.then5:                                         ; preds = %for.body4
    #dbg_value(ptr %22, !3506, !DIExpression(), !3541)
  %25 = icmp eq ptr %22, null, !dbg !3542
  br i1 %25, label %gep.throw16, label %gep.next17, !dbg !3542

gep.next17:                                       ; preds = %if.then5
  %26 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3542
  %27 = icmp eq ptr %26, null, !dbg !3543
  br i1 %27, label %gep.throw18, label %gep.next19, !dbg !3543

gep.next19:                                       ; preds = %gep.next17
  %28 = getelementptr inbounds %"internal/task.state", ptr %26, i32 0, i32 3, !dbg !3543
  %29 = icmp eq ptr %28, null, !dbg !3543
  br i1 %29, label %deref.throw20, label %deref.next21, !dbg !3543

deref.next21:                                     ; preds = %gep.next19
  %30 = load i64, ptr %28, align 8, !dbg !3543
    #dbg_value(ptr %22, !3506, !DIExpression(), !3544)
  %31 = icmp eq ptr %22, null, !dbg !3545
  br i1 %31, label %gep.throw22, label %gep.next23, !dbg !3545

gep.next23:                                       ; preds = %deref.next21
  %32 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3545
  %33 = icmp eq ptr %32, null, !dbg !3546
  br i1 %33, label %gep.throw24, label %gep.next25, !dbg !3546

gep.next25:                                       ; preds = %gep.next23
  %34 = getelementptr inbounds %"internal/task.state", ptr %32, i32 0, i32 2, !dbg !3546
  %35 = icmp eq ptr %34, null, !dbg !3546
  br i1 %35, label %deref.throw26, label %deref.next27, !dbg !3546

deref.next27:                                     ; preds = %gep.next25
  %36 = load i64, ptr %34, align 8, !dbg !3546
  call void @runtime.markRoots(i64 %30, i64 %36, ptr undef), !dbg !3547
  br label %if.done6, !dbg !3511

if.done6:                                         ; preds = %deref.next27, %for.body4
    #dbg_value(ptr %22, !3506, !DIExpression(), !3548)
  %37 = icmp eq ptr %22, null, !dbg !3549
  br i1 %37, label %gep.throw28, label %gep.next29, !dbg !3549

gep.next29:                                       ; preds = %if.done6
  %38 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3549
  %39 = icmp eq ptr %38, null, !dbg !3550
  br i1 %39, label %gep.throw30, label %gep.next31, !dbg !3550

gep.next31:                                       ; preds = %gep.next29
  %40 = getelementptr inbounds %"internal/task.state", ptr %38, i32 0, i32 4, !dbg !3550
  %41 = icmp eq ptr %40, null, !dbg !3550
  br i1 %41, label %deref.throw32, label %deref.next33, !dbg !3550

deref.next33:                                     ; preds = %gep.next31
  %42 = load ptr, ptr %40, align 8, !dbg !3550
    #dbg_value(ptr %42, !3506, !DIExpression(), !3551)
  br label %for.loop3, !dbg !3511

for.done7:                                        ; preds = %for.loop3
  call void @tinygo_scanCurrentStack(), !dbg !3552
  call void @"internal/task.gcScanGlobals"(ptr undef), !dbg !3553
  ret void, !dbg !3554

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3526
  unreachable, !dbg !3526

gep.throw8:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3527
  unreachable, !dbg !3527

deref.throw:                                      ; preds = %gep.next9
  call void @runtime.nilPanic(ptr undef), !dbg !3527
  unreachable, !dbg !3527

gep.throw10:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3530
  unreachable, !dbg !3530

gep.throw12:                                      ; preds = %gep.next11
  call void @runtime.nilPanic(ptr undef), !dbg !3531
  unreachable, !dbg !3531

deref.throw14:                                    ; preds = %gep.next13
  call void @runtime.nilPanic(ptr undef), !dbg !3531
  unreachable, !dbg !3531

gep.throw16:                                      ; preds = %if.then5
  call void @runtime.nilPanic(ptr undef), !dbg !3542
  unreachable, !dbg !3542

gep.throw18:                                      ; preds = %gep.next17
  call void @runtime.nilPanic(ptr undef), !dbg !3543
  unreachable, !dbg !3543

deref.throw20:                                    ; preds = %gep.next19
  call void @runtime.nilPanic(ptr undef), !dbg !3543
  unreachable, !dbg !3543

gep.throw22:                                      ; preds = %deref.next21
  call void @runtime.nilPanic(ptr undef), !dbg !3545
  unreachable, !dbg !3545

gep.throw24:                                      ; preds = %gep.next23
  call void @runtime.nilPanic(ptr undef), !dbg !3546
  unreachable, !dbg !3546

deref.throw26:                                    ; preds = %gep.next25
  call void @runtime.nilPanic(ptr undef), !dbg !3546
  unreachable, !dbg !3546

gep.throw28:                                      ; preds = %if.done6
  call void @runtime.nilPanic(ptr undef), !dbg !3549
  unreachable, !dbg !3549

gep.throw30:                                      ; preds = %gep.next29
  call void @runtime.nilPanic(ptr undef), !dbg !3550
  unreachable, !dbg !3550

deref.throw32:                                    ; preds = %gep.next31
  call void @runtime.nilPanic(ptr undef), !dbg !3550
  unreachable, !dbg !3550
}

declare void @tinygo_task_send_gc_signal(ptr nocapture) #2

declare void @tinygo_scanCurrentStack() #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.GCResumeWorld"(ptr %context) #1 !dbg !3555 {
entry:
  %0 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3559
  %1 = icmp eq i32 %0, 0, !dbg !3560
  br i1 %1, label %if.then, label %if.done, !dbg !3561

if.then:                                          ; preds = %entry
  ret void, !dbg !3562

if.done:                                          ; preds = %entry
  %2 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3563
    #dbg_value(i32 %2, !3557, !DIExpression(), !3563)
  %3 = call %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %2, ptr undef), !dbg !3564
  store %"internal/task.Semaphore" %3, ptr @"internal/task.scanWaitGroup", align 4, !dbg !3565
    #dbg_value(%"internal/task.Semaphore" %3, !3558, !DIExpression(), !3565)
  call void @"(*sync/atomic.Uint32).Store"(ptr @"internal/task.gcState", i32 0, ptr undef), !dbg !3566
  call void @"(*internal/futex.Futex).WakeAll"(ptr @"internal/task.gcState", ptr undef), !dbg !3567
  call void @"(*internal/task.Mutex).Unlock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3568
  ret void, !dbg !3569
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_gc_pause(i32 %sig) #1 !dbg !3570 {
entry:
    #dbg_value(i32 %sig, !3574, !DIExpression(), !3576)
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3577
  %1 = icmp eq ptr %0, null, !dbg !3578
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3578

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3578
  %3 = call ptr @runtime.stacksave(ptr undef), !dbg !3579
  %4 = ptrtoint ptr %3 to i64, !dbg !3580
  %5 = icmp eq ptr %2, null, !dbg !3581
  br i1 %5, label %gep.throw1, label %gep.next2, !dbg !3581

gep.next2:                                        ; preds = %gep.next
  %6 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 3, !dbg !3581
  %7 = icmp eq ptr %6, null, !dbg !3581
  br i1 %7, label %store.throw, label %store.next, !dbg !3581

store.next:                                       ; preds = %gep.next2
  store i64 %4, ptr %6, align 8, !dbg !3581
    #dbg_value(i64 %4, !3575, !DIExpression(), !3581)
  call void @"(*internal/task.waitGroup).done"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3582
  br label %for.loop, !dbg !3583

for.loop:                                         ; preds = %for.body, %store.next
  %8 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3584
  %9 = icmp eq i32 %8, 1, !dbg !3585
  br i1 %9, label %for.body, label %for.done, !dbg !3583

for.body:                                         ; preds = %for.loop
  %10 = call i1 @"(*internal/futex.Futex).Wait"(ptr @"internal/task.gcState", i32 1, ptr undef), !dbg !3586
  br label %for.loop, !dbg !3583

for.done:                                         ; preds = %for.loop
  call void @"(*internal/task.waitGroup).done"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3587
  ret void, !dbg !3588

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3578
  unreachable, !dbg !3578

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3581
  unreachable, !dbg !3581

store.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3581
  unreachable, !dbg !3581
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"internal/task.StackTop"(ptr %context) #1 !dbg !3589 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3590
  %1 = icmp eq ptr %0, null, !dbg !3591
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3591

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3591
  %3 = icmp eq ptr %2, null, !dbg !3592
  br i1 %3, label %gep.throw1, label %gep.next2, !dbg !3592

gep.next2:                                        ; preds = %gep.next
  %4 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 2, !dbg !3592
  %5 = icmp eq ptr %4, null, !dbg !3592
  br i1 %5, label %deref.throw, label %deref.next, !dbg !3592

deref.next:                                       ; preds = %gep.next2
  %6 = load i64, ptr %4, align 8, !dbg !3592
  ret i64 %6, !dbg !3593

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3591
  unreachable, !dbg !3591

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3592
  unreachable, !dbg !3592

deref.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3592
  unreachable, !dbg !3592
}

; Function Attrs: noinline nounwind allockind("alloc,zeroed") allocsize(0) uwtable(sync)
define internal noalias nonnull ptr @runtime.alloc(i64 %size, ptr %layout, ptr %context) #4 !dbg !3594 {
entry:
    #dbg_value(i64 %size, !3598, !DIExpression(), !3601)
    #dbg_value(ptr %layout, !3599, !DIExpression(), !3601)
    #dbg_value(i64 %size, !3598, !DIExpression(), !3602)
  %0 = icmp eq i64 %size, 0, !dbg !3603
  br i1 %0, label %if.then, label %if.done, !dbg !3604

if.then:                                          ; preds = %entry
  ret ptr @runtime.zeroSizedAlloc, !dbg !3605

if.done:                                          ; preds = %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @runtime.gcLock, ptr undef), !dbg !3606
    #dbg_value(ptr null, !3600, !DIExpression(), !3607)
    #dbg_value(ptr %layout, !3599, !DIExpression(), !3608)
  %1 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !3609
  %2 = icmp eq ptr %layout, %1, !dbg !3610
  br i1 %2, label %if.then1, label %if.else, !dbg !3604

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %size, !3598, !DIExpression(), !3611)
  %3 = call ptr @GC_malloc_atomic(i64 %size), !dbg !3612
    #dbg_value(ptr %3, !3600, !DIExpression(), !3613)
    #dbg_value(ptr %3, !3600, !DIExpression(), !3614)
    #dbg_value(i64 %size, !3598, !DIExpression(), !3615)
  call void @runtime.memzero(ptr %3, i64 %size, ptr undef), !dbg !3616
  br label %if.done2, !dbg !3604

if.done2:                                         ; preds = %if.else, %if.then1
  %4 = phi ptr [ %3, %if.then1 ], [ %6, %if.else ], !dbg !3607
  call void @runtime.gcResumeWorld(ptr undef), !dbg !3617
  call void @"(*internal/task.Mutex).Unlock"(ptr @runtime.gcLock, ptr undef), !dbg !3618
    #dbg_value(ptr %4, !3600, !DIExpression(), !3619)
  %5 = icmp eq ptr %4, null, !dbg !3620
  br i1 %5, label %if.then3, label %if.done4, !dbg !3604

if.then3:                                         ; preds = %if.done2
  call void @runtime.runtimePanic(ptr @"runtime$string.7", i64 17, ptr undef), !dbg !3621
  br label %if.done4, !dbg !3604

if.done4:                                         ; preds = %if.then3, %if.done2
    #dbg_value(ptr %4, !3600, !DIExpression(), !3622)
  ret ptr %4, !dbg !3623

if.else:                                          ; preds = %if.done
    #dbg_value(i64 %size, !3598, !DIExpression(), !3624)
  %6 = call ptr @GC_malloc(i64 %size), !dbg !3625
    #dbg_value(ptr %6, !3600, !DIExpression(), !3626)
  br label %if.done2, !dbg !3604
}

declare ptr @GC_malloc_atomic(i64) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memzero(ptr %ptr, i64 %size, ptr %context) #1 !dbg !3627 {
entry:
    #dbg_value(ptr %ptr, !3631, !DIExpression(), !3633)
    #dbg_value(i64 %size, !3632, !DIExpression(), !3633)
  call void @llvm.memset.p0.i64(ptr %ptr, i8 0, i64 %size, i1 false), !dbg !3633
  ret void, !dbg !3633
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.gcResumeWorld(ptr %context) unnamed_addr #1 !dbg !3634 {
entry:
  call void @"internal/task.GCResumeWorld"(ptr undef), !dbg !3636
  ret void, !dbg !3637
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.runtimePanic(ptr readonly %msg.data, i64 %msg.len, ptr %context) #1 !dbg !3638 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %msg.data, 0, !dbg !3641
  %1 = insertvalue %runtime._string %0, i64 %msg.len, 1, !dbg !3641
    #dbg_value(ptr %msg.data, !3640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3641)
    #dbg_value(i64 %msg.len, !3640, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3641)
  %2 = call ptr @llvm.returnaddress(i32 0), !dbg !3642
    #dbg_value(%runtime._string %1, !3640, !DIExpression(), !3643)
  %3 = extractvalue %runtime._string %1, 0, !dbg !3644
  %4 = extractvalue %runtime._string %1, 1, !dbg !3644
  call void @runtime.runtimePanicAt(ptr %2, ptr %3, i64 %4, ptr undef), !dbg !3644
  ret void, !dbg !3645
}

declare ptr @GC_malloc(i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.runtimePanicAt(ptr %addr, ptr readonly %msg.data, i64 %msg.len, ptr %context) unnamed_addr #1 !dbg !3646 {
entry:
    #dbg_value(ptr %addr, !3650, !DIExpression(), !3652)
  %0 = insertvalue %runtime._string zeroinitializer, ptr %msg.data, 0, !dbg !3652
  %1 = insertvalue %runtime._string %0, i64 %msg.len, 1, !dbg !3652
    #dbg_value(ptr %msg.data, !3651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3652)
    #dbg_value(i64 %msg.len, !3651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3652)
  br i1 false, label %if.then, label %if.done, !dbg !3653

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !3654
  br label %if.done, !dbg !3653

if.done:                                          ; preds = %if.then, %entry
  br i1 true, label %if.then1, label %if.else, !dbg !3653

if.then1:                                         ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.13", i64 24, ptr undef), !dbg !3655
    #dbg_value(ptr %addr, !3650, !DIExpression(), !3656)
  %2 = ptrtoint ptr %addr to i64, !dbg !3657
  %3 = sub i64 %2, 5, !dbg !3658
  call void @runtime.printptr(i64 %3, ptr undef), !dbg !3659
  call void @runtime.printstring(ptr @"runtime$string.14", i64 2, ptr undef), !dbg !3660
  br label %if.done2, !dbg !3653

if.done2:                                         ; preds = %if.else, %if.then1
    #dbg_value(%runtime._string %1, !3651, !DIExpression(), !3661)
  %4 = extractvalue %runtime._string %1, 0, !dbg !3662
  %5 = extractvalue %runtime._string %1, 1, !dbg !3662
  call void @runtime.printstring(ptr %4, i64 %5, ptr undef), !dbg !3662
  call void @runtime.printnl(ptr undef), !dbg !3663
  call void @abort(), !dbg !3664
  ret void, !dbg !3665

if.else:                                          ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.15", i64 22, ptr undef), !dbg !3666
  br label %if.done2, !dbg !3653
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printstring(ptr readonly %s.data, i64 %s.len, ptr %context) #1 !dbg !3667 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !3671
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !3671
    #dbg_value(ptr %s.data, !3669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3671)
    #dbg_value(i64 %s.len, !3669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3671)
    #dbg_value(i64 0, !3670, !DIExpression(), !3672)
  br label %for.loop, !dbg !3673

for.loop:                                         ; preds = %for.body, %entry
  %2 = phi i64 [ 0, %entry ], [ %7, %for.body ], !dbg !3672
    #dbg_value(i64 %2, !3670, !DIExpression(), !3674)
    #dbg_value(%runtime._string %1, !3669, !DIExpression(), !3675)
  %len = extractvalue %runtime._string %1, 1, !dbg !3676
  %3 = icmp slt i64 %2, %len, !dbg !3677
  br i1 %3, label %for.body, label %for.done, !dbg !3673

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !3670, !DIExpression(), !3678)
    #dbg_value(%runtime._string %1, !3669, !DIExpression(), !3679)
  %len1 = extractvalue %runtime._string %1, 1, !dbg !3680
  %4 = extractvalue %runtime._string %1, 0, !dbg !3680
  %5 = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !3680
  %6 = load i8, ptr %5, align 1, !dbg !3680
  call void @runtime.putchar(i8 %6, ptr undef), !dbg !3681
  %7 = add i64 %2, 1, !dbg !3682
    #dbg_value(i64 %7, !3670, !DIExpression(), !3682)
  br label %for.loop, !dbg !3673

for.done:                                         ; preds = %for.loop
  ret void, !dbg !3683
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printptr(i64 %ptr, ptr %context) #1 !dbg !3684 {
entry:
    #dbg_value(i64 %ptr, !3686, !DIExpression(), !3689)
    #dbg_value(i64 %ptr, !3686, !DIExpression(), !3690)
  %0 = icmp eq i64 %ptr, 0, !dbg !3691
  br i1 %0, label %if.then, label %if.done, !dbg !3692

if.then:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.45", i64 3, ptr undef), !dbg !3693
  ret void, !dbg !3694

if.done:                                          ; preds = %entry
  call void @runtime.putchar(i8 48, ptr undef), !dbg !3695
  call void @runtime.putchar(i8 120, ptr undef), !dbg !3696
    #dbg_value(i64 0, !3687, !DIExpression(), !3697)
  br label %for.loop, !dbg !3692

for.loop:                                         ; preds = %if.done2, %if.done
  %1 = phi i64 [ %ptr, %if.done ], [ %shift.result3, %if.done2 ], !dbg !3698
  %2 = phi i64 [ 0, %if.done ], [ %9, %if.done2 ], !dbg !3697
    #dbg_value(i64 %2, !3687, !DIExpression(), !3699)
  %3 = icmp slt i64 %2, 16, !dbg !3700
  br i1 %3, label %for.body, label %for.done, !dbg !3692

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !3686, !DIExpression(), !3701)
  %4 = lshr i64 %1, 60, !dbg !3702
  %shift.result = select i1 false, i64 0, i64 %4, !dbg !3702
  %5 = trunc i64 %shift.result to i8, !dbg !3703
    #dbg_value(i8 %5, !3688, !DIExpression(), !3704)
    #dbg_value(i8 %5, !3688, !DIExpression(), !3705)
  %6 = icmp ult i8 %5, 10, !dbg !3706
  br i1 %6, label %if.then1, label %if.else, !dbg !3692

if.then1:                                         ; preds = %for.body
    #dbg_value(i8 %5, !3688, !DIExpression(), !3707)
  %7 = add i8 %5, 48, !dbg !3708
  call void @runtime.putchar(i8 %7, ptr undef), !dbg !3709
  br label %if.done2, !dbg !3692

if.done2:                                         ; preds = %if.else, %if.then1
  %8 = shl i64 %1, 4, !dbg !3710
  %shift.result3 = select i1 false, i64 0, i64 %8, !dbg !3710
    #dbg_value(i64 %shift.result3, !3686, !DIExpression(), !3710)
  %9 = add i64 %2, 1, !dbg !3711
    #dbg_value(i64 %9, !3687, !DIExpression(), !3711)
  br label %for.loop, !dbg !3692

if.else:                                          ; preds = %for.body
    #dbg_value(i8 %5, !3688, !DIExpression(), !3712)
  %10 = sub i8 %5, 10, !dbg !3713
  %11 = add i8 %10, 97, !dbg !3714
  call void @runtime.putchar(i8 %11, ptr undef), !dbg !3715
  br label %if.done2, !dbg !3692

for.done:                                         ; preds = %for.loop
  ret void, !dbg !3716
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printnl(ptr %context) #1 !dbg !3717 {
entry:
  br i1 false, label %if.then, label %if.done, !dbg !3718

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 13, ptr undef), !dbg !3719
  br label %if.done, !dbg !3718

if.done:                                          ; preds = %if.then, %entry
  call void @runtime.putchar(i8 10, ptr undef), !dbg !3720
  ret void, !dbg !3721
}

; Function Attrs: noreturn
declare void @abort() #7

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.putchar(i8 %c, ptr %context) unnamed_addr #1 !dbg !3722 {
entry:
    #dbg_value(i8 %c, !3726, !DIExpression(), !3727)
  %buf = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3728
  %0 = getelementptr inbounds [1 x i8], ptr %buf, i32 0, i64 0, !dbg !3728
    #dbg_value(i8 %c, !3726, !DIExpression(), !3729)
  store i8 %c, ptr %0, align 1, !dbg !3729
    #dbg_value(i8 %c, !3726, !DIExpression(), !3729)
  %1 = getelementptr inbounds [1 x i8], ptr %buf, i32 0, i64 0, !dbg !3730
  %2 = call i64 @write(i32 1, ptr %1, i64 1), !dbg !3731
  ret void, !dbg !3732
}

declare i64 @write(i32, ptr nocapture, i64) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.initRand(ptr %context) unnamed_addr #1 !dbg !3733 {
entry:
  %0 = call { i64, i1 } @runtime.hardwareRand(ptr undef), !dbg !3738
  %1 = extractvalue { i64, i1 } %0, 0, !dbg !3738
    #dbg_value(i64 %1, !3735, !DIExpression(), !3739)
  %2 = extractvalue { i64, i1 } %0, 1, !dbg !3738
    #dbg_value(i64 %1, !3735, !DIExpression(), !3740)
  %3 = or i64 %1, 1, !dbg !3741
  store i64 %3, ptr @runtime.xorshift64State, align 8, !dbg !3742
    #dbg_value(i64 %3, !3736, !DIExpression(), !3742)
  %4 = load i64, ptr @runtime.xorshift64State, align 8, !dbg !3743
    #dbg_value(i64 %4, !3736, !DIExpression(), !3743)
  %5 = trunc i64 %4 to i32, !dbg !3744
  store i32 %5, ptr @runtime.xorshift32State, align 4, !dbg !3745
    #dbg_value(i32 %5, !3737, !DIExpression(), !3745)
  ret void, !dbg !3746
}

; Function Attrs: nounwind uwtable(sync)
define internal { i64, i1 } @runtime.hardwareRand(ptr %context) unnamed_addr #1 !dbg !3747 {
entry:
  %n = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3752
  %0 = call i32 @getrandom(ptr %n, i64 8, i32 0), !dbg !3753
    #dbg_value(i32 %0, !3750, !DIExpression(), !3754)
    #dbg_value(i32 %0, !3750, !DIExpression(), !3755)
  %1 = icmp ne i32 %0, 8, !dbg !3756
  br i1 %1, label %if.then, label %if.done, !dbg !3757

if.then:                                          ; preds = %entry
  store i64 0, ptr %n, align 8, !dbg !3758
  %2 = load i64, ptr %n, align 8, !dbg !3757
  %3 = insertvalue { i64, i1 } zeroinitializer, i64 %2, 0, !dbg !3758
  %4 = insertvalue { i64, i1 } %3, i1 false, 1, !dbg !3758
  ret { i64, i1 } %4, !dbg !3758

if.done:                                          ; preds = %entry
  %5 = load i64, ptr %n, align 8, !dbg !3759
    #dbg_value(i64 %5, !3751, !DIExpression(), !3759)
  store i64 %5, ptr %n, align 8, !dbg !3760
  %6 = load i64, ptr %n, align 8, !dbg !3757
  %7 = insertvalue { i64, i1 } zeroinitializer, i64 %6, 0, !dbg !3760
  %8 = insertvalue { i64, i1 } %7, i1 true, 1, !dbg !3760
  ret { i64, i1 } %8, !dbg !3760
}

declare i32 @getrandom(ptr nocapture, i64, i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal i64 @runtime.getCurrentStackPointer(ptr %context) unnamed_addr #1 !dbg !3761 {
entry:
  %0 = call ptr @runtime.stacksave(ptr undef), !dbg !3763
  %1 = ptrtoint ptr %0 to i64, !dbg !3764
  ret i64 %1, !dbg !3765
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @runtime.stacksave(ptr %context) #1 !dbg !3766 {
entry:
  %0 = call ptr @llvm.stacksave.p0(), !dbg !3767
  ret ptr %0, !dbg !3767
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #9

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memcpy(ptr %dst, ptr %src, i64 %size, ptr %context) #1 !dbg !3768 {
entry:
    #dbg_value(ptr %dst, !3772, !DIExpression(), !3775)
    #dbg_value(ptr %src, !3773, !DIExpression(), !3775)
    #dbg_value(i64 %size, !3774, !DIExpression(), !3775)
  call void @llvm.memcpy.p0.p0.i64(ptr %dst, ptr %src, i64 %size, i1 false), !dbg !3775
  ret void, !dbg !3775
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.nilPanic(ptr %context) #1 !dbg !3776 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !3777
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.17", i64 23, ptr undef), !dbg !3778
  ret void, !dbg !3779
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.deadlock(ptr %context) unnamed_addr #1 !dbg !3780 {
entry:
  call void @"internal/task.Pause"(ptr undef), !dbg !3781
  ret void, !dbg !3782
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.lookupPanic(ptr %context) #1 !dbg !3783 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !3784
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.19", i64 18, ptr undef), !dbg !3785
  ret void, !dbg !3786
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.panicOrGoexit(ptr %message.typecode, ptr %message.value, i8 %panicking, ptr %context) unnamed_addr #1 !dbg !3787 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %message.typecode, 0, !dbg !3807
  %1 = insertvalue { ptr, ptr } %0, ptr %message.value, 1, !dbg !3807
    #dbg_value(ptr %message.typecode, !3792, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3807)
    #dbg_value(ptr %message.value, !3792, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3807)
    #dbg_value(i8 %panicking, !3793, !DIExpression(), !3807)
  br i1 false, label %if.then, label %if.done, !dbg !3808

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !3809
  br label %if.done, !dbg !3808

if.done:                                          ; preds = %if.then, %entry
  br i1 true, label %cond.true, label %if.done3, !dbg !3808

cond.true:                                        ; preds = %if.done
  %2 = call i1 @"runtime/interrupt.In"(ptr undef), !dbg !3810
  br i1 %2, label %if.done3, label %if.then1, !dbg !3808

if.then1:                                         ; preds = %cond.true
  %3 = call ptr @"internal/task.Current"(ptr undef), !dbg !3811
  %4 = icmp eq ptr %3, null, !dbg !3812
  br i1 %4, label %gep.throw, label %gep.next, !dbg !3812

gep.next:                                         ; preds = %if.then1
  %5 = getelementptr inbounds %"internal/task.Task", ptr %3, i32 0, i32 8, !dbg !3812
  %6 = icmp eq ptr %5, null, !dbg !3812
  br i1 %6, label %deref.throw, label %deref.next, !dbg !3812

deref.next:                                       ; preds = %gep.next
  %7 = load ptr, ptr %5, align 8, !dbg !3812
    #dbg_value(ptr %7, !3794, !DIExpression(), !3813)
    #dbg_value(ptr %7, !3794, !DIExpression(), !3814)
  %8 = icmp ne ptr %7, null, !dbg !3815
  br i1 %8, label %if.then2, label %if.done3, !dbg !3808

if.then2:                                         ; preds = %deref.next
    #dbg_value(ptr %7, !3794, !DIExpression(), !3816)
    #dbg_value({ ptr, ptr } %1, !3792, !DIExpression(), !3817)
  %9 = getelementptr inbounds %runtime.deferFrame, ptr %7, i32 0, i32 5, !dbg !3818
  %10 = icmp eq ptr %9, null, !dbg !3818
  br i1 %10, label %store.throw, label %store.next, !dbg !3818

store.next:                                       ; preds = %if.then2
  store { ptr, ptr } %1, ptr %9, align 8, !dbg !3818
    #dbg_value({ ptr, ptr } %1, !3805, !DIExpression(), !3818)
    #dbg_value(ptr %7, !3794, !DIExpression(), !3819)
    #dbg_value(i8 %panicking, !3793, !DIExpression(), !3820)
  %11 = getelementptr inbounds %runtime.deferFrame, ptr %7, i32 0, i32 4, !dbg !3821
  %12 = icmp eq ptr %11, null, !dbg !3821
  br i1 %12, label %store.throw6, label %store.next7, !dbg !3821

store.next7:                                      ; preds = %store.next
  store i8 %panicking, ptr %11, align 1, !dbg !3821
    #dbg_value(i8 %panicking, !3806, !DIExpression(), !3821)
    #dbg_value(ptr %7, !3794, !DIExpression(), !3822)
  call void @tinygo_longjmp(ptr %7), !dbg !3823
  br label %if.done3, !dbg !3808

if.done3:                                         ; preds = %store.next7, %deref.next, %cond.true, %if.done
    #dbg_value(i8 %panicking, !3793, !DIExpression(), !3824)
  %13 = icmp eq i8 %panicking, 2, !dbg !3825
  br i1 %13, label %if.then4, label %if.done5, !dbg !3808

if.then4:                                         ; preds = %if.done3
  call void @runtime.deadlock(ptr undef), !dbg !3826
  br label %if.done5, !dbg !3808

if.done5:                                         ; preds = %if.then4, %if.done3
  call void @runtime.printstring(ptr @"runtime$string.12", i64 7, ptr undef), !dbg !3827
    #dbg_value({ ptr, ptr } %1, !3792, !DIExpression(), !3828)
  %14 = extractvalue { ptr, ptr } %1, 0, !dbg !3829
  %15 = extractvalue { ptr, ptr } %1, 1, !dbg !3829
  call void @runtime.printitf(ptr %14, ptr %15, ptr undef), !dbg !3829
  call void @runtime.printnl(ptr undef), !dbg !3830
  call void @abort(), !dbg !3831
  ret void, !dbg !3832

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3812
  unreachable, !dbg !3812

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3812
  unreachable, !dbg !3812

store.throw:                                      ; preds = %if.then2
  call void @runtime.nilPanic(ptr undef), !dbg !3818
  unreachable, !dbg !3818

store.throw6:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !3821
  unreachable, !dbg !3821
}

declare void @tinygo_longjmp(ptr nocapture dereferenceable_or_null(48)) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printitf(ptr %msg.typecode, ptr %msg.value, ptr %context) unnamed_addr #1 !dbg !3833 {
entry:
  %itf = alloca { ptr, ptr }, align 8, !dbg !3863
  %unpack.raw.alloc136 = alloca ptr, align 8, !dbg !3863
  %unpack.raw.alloc129 = alloca ptr, align 8, !dbg !3863
  %unpack.raw.alloc = alloca ptr, align 8, !dbg !3863
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %msg.typecode, 0, !dbg !3863
  %1 = insertvalue { ptr, ptr } %0, ptr %msg.value, 1, !dbg !3863
    #dbg_value(ptr %msg.typecode, !3837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3863)
    #dbg_value(ptr %msg.value, !3837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3863)
    #dbg_value({ ptr, ptr } %1, !3837, !DIExpression(), !3864)
  %interface.type = extractvalue { ptr, ptr } %1, 0, !dbg !3865
  br i1 false, label %typeassert.ok, label %typeassert.next, !dbg !3865

typeassert.next:                                  ; preds = %typeassert.ok, %entry
  %typeassert.value = phi i1 [ false, %entry ], [ %unpack.int, %typeassert.ok ], !dbg !3865
  %2 = insertvalue { i1, i1 } undef, i1 %typeassert.value, 0, !dbg !3865
  %3 = insertvalue { i1, i1 } %2, i1 false, 1, !dbg !3865
  %4 = extractvalue { i1, i1 } %3, 0, !dbg !3865
  %5 = extractvalue { i1, i1 } %3, 1, !dbg !3865
  br i1 %5, label %typeswitch.body, label %typeswitch.next, !dbg !3866

typeassert.ok:                                    ; preds = %entry
  %typeassert.value.ptr = extractvalue { ptr, ptr } %1, 1, !dbg !3865
  %unpack.int = ptrtoint ptr %typeassert.value.ptr to i1, !dbg !3865
  br label %typeassert.next, !dbg !3865

typeswitch.body:                                  ; preds = %typeassert.next
    #dbg_value(i1 %4, !3838, !DIExpression(), !3867)
  call void @runtime.printbool(i1 %4, ptr undef), !dbg !3868
  br label %typeswitch.done, !dbg !3866

typeswitch.done:                                  ; preds = %deref.next161, %typeswitch.body39, %typeswitch.body37, %typeswitch.body35, %typeswitch.body33, %typeswitch.body31, %typeswitch.body29, %typeswitch.body27, %typeswitch.body25, %typeswitch.body23, %typeswitch.body21, %typeswitch.body19, %typeswitch.body17, %switch.body15, %switch.next14, %switch.body13, %typeswitch.body10, %typeswitch.body8, %typeswitch.body6, %typeswitch.body4, %switch.body2, %switch.next, %switch.body, %typeswitch.body
  ret void, !dbg !3869

typeswitch.next:                                  ; preds = %typeassert.next
  %interface.type41 = extractvalue { ptr, ptr } %1, 0, !dbg !3870
  br i1 false, label %typeassert.ok43, label %typeassert.next44, !dbg !3870

typeassert.next44:                                ; preds = %typeassert.ok43, %typeswitch.next
  %typeassert.value47 = phi i64 [ 0, %typeswitch.next ], [ %unpack.int46, %typeassert.ok43 ], !dbg !3870
  %6 = insertvalue { i64, i1 } undef, i64 %typeassert.value47, 0, !dbg !3870
  %7 = insertvalue { i64, i1 } %6, i1 false, 1, !dbg !3870
  %8 = extractvalue { i64, i1 } %7, 0, !dbg !3870
  %9 = extractvalue { i64, i1 } %7, 1, !dbg !3870
  br i1 %9, label %typeswitch.body1, label %typeswitch.next3, !dbg !3866

typeassert.ok43:                                  ; preds = %typeswitch.next
  %typeassert.value.ptr45 = extractvalue { ptr, ptr } %1, 1, !dbg !3870
  %unpack.int46 = ptrtoint ptr %typeassert.value.ptr45 to i64, !dbg !3870
  br label %typeassert.next44, !dbg !3870

typeswitch.body1:                                 ; preds = %typeassert.next44
  br i1 true, label %switch.body, label %switch.next, !dbg !3866

switch.body:                                      ; preds = %typeswitch.body1
    #dbg_value(i64 %8, !3839, !DIExpression(), !3871)
  call void @runtime.printint64(i64 %8, ptr undef), !dbg !3872
  br label %typeswitch.done, !dbg !3866

switch.next:                                      ; preds = %typeswitch.body1
  br i1 false, label %switch.body2, label %typeswitch.done, !dbg !3866

switch.body2:                                     ; preds = %switch.next
    #dbg_value(i64 %8, !3839, !DIExpression(), !3873)
  %10 = trunc i64 %8 to i32, !dbg !3874
  call void @runtime.printint32(i32 %10, ptr undef), !dbg !3875
  br label %typeswitch.done, !dbg !3866

typeswitch.next3:                                 ; preds = %typeassert.next44
  %interface.type48 = extractvalue { ptr, ptr } %1, 0, !dbg !3876
  br i1 false, label %typeassert.ok50, label %typeassert.next51, !dbg !3876

typeassert.next51:                                ; preds = %typeassert.ok50, %typeswitch.next3
  %typeassert.value54 = phi i8 [ 0, %typeswitch.next3 ], [ %unpack.int53, %typeassert.ok50 ], !dbg !3876
  %11 = insertvalue { i8, i1 } undef, i8 %typeassert.value54, 0, !dbg !3876
  %12 = insertvalue { i8, i1 } %11, i1 false, 1, !dbg !3876
  %13 = extractvalue { i8, i1 } %12, 0, !dbg !3876
  %14 = extractvalue { i8, i1 } %12, 1, !dbg !3876
  br i1 %14, label %typeswitch.body4, label %typeswitch.next5, !dbg !3866

typeassert.ok50:                                  ; preds = %typeswitch.next3
  %typeassert.value.ptr52 = extractvalue { ptr, ptr } %1, 1, !dbg !3876
  %unpack.int53 = ptrtoint ptr %typeassert.value.ptr52 to i8, !dbg !3876
  br label %typeassert.next51, !dbg !3876

typeswitch.body4:                                 ; preds = %typeassert.next51
    #dbg_value(i8 %13, !3840, !DIExpression(), !3877)
  call void @runtime.printint8(i8 %13, ptr undef), !dbg !3878
  br label %typeswitch.done, !dbg !3866

typeswitch.next5:                                 ; preds = %typeassert.next51
  %interface.type55 = extractvalue { ptr, ptr } %1, 0, !dbg !3879
  br i1 false, label %typeassert.ok57, label %typeassert.next58, !dbg !3879

typeassert.next58:                                ; preds = %typeassert.ok57, %typeswitch.next5
  %typeassert.value61 = phi i16 [ 0, %typeswitch.next5 ], [ %unpack.int60, %typeassert.ok57 ], !dbg !3879
  %15 = insertvalue { i16, i1 } undef, i16 %typeassert.value61, 0, !dbg !3879
  %16 = insertvalue { i16, i1 } %15, i1 false, 1, !dbg !3879
  %17 = extractvalue { i16, i1 } %16, 0, !dbg !3879
  %18 = extractvalue { i16, i1 } %16, 1, !dbg !3879
  br i1 %18, label %typeswitch.body6, label %typeswitch.next7, !dbg !3866

typeassert.ok57:                                  ; preds = %typeswitch.next5
  %typeassert.value.ptr59 = extractvalue { ptr, ptr } %1, 1, !dbg !3879
  %unpack.int60 = ptrtoint ptr %typeassert.value.ptr59 to i16, !dbg !3879
  br label %typeassert.next58, !dbg !3879

typeswitch.body6:                                 ; preds = %typeassert.next58
    #dbg_value(i16 %17, !3841, !DIExpression(), !3880)
  call void @runtime.printint16(i16 %17, ptr undef), !dbg !3881
  br label %typeswitch.done, !dbg !3866

typeswitch.next7:                                 ; preds = %typeassert.next58
  %interface.type62 = extractvalue { ptr, ptr } %1, 0, !dbg !3882
  br i1 false, label %typeassert.ok64, label %typeassert.next65, !dbg !3882

typeassert.next65:                                ; preds = %typeassert.ok64, %typeswitch.next7
  %typeassert.value68 = phi i32 [ 0, %typeswitch.next7 ], [ %unpack.int67, %typeassert.ok64 ], !dbg !3882
  %19 = insertvalue { i32, i1 } undef, i32 %typeassert.value68, 0, !dbg !3882
  %20 = insertvalue { i32, i1 } %19, i1 false, 1, !dbg !3882
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !3882
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !3882
  br i1 %22, label %typeswitch.body8, label %typeswitch.next9, !dbg !3866

typeassert.ok64:                                  ; preds = %typeswitch.next7
  %typeassert.value.ptr66 = extractvalue { ptr, ptr } %1, 1, !dbg !3882
  %unpack.int67 = ptrtoint ptr %typeassert.value.ptr66 to i32, !dbg !3882
  br label %typeassert.next65, !dbg !3882

typeswitch.body8:                                 ; preds = %typeassert.next65
    #dbg_value(i32 %21, !3843, !DIExpression(), !3883)
  call void @runtime.printint32(i32 %21, ptr undef), !dbg !3884
  br label %typeswitch.done, !dbg !3866

typeswitch.next9:                                 ; preds = %typeassert.next65
  %interface.type69 = extractvalue { ptr, ptr } %1, 0, !dbg !3885
  br i1 false, label %typeassert.ok71, label %typeassert.next72, !dbg !3885

typeassert.next72:                                ; preds = %typeassert.ok71, %typeswitch.next9
  %typeassert.value75 = phi i64 [ 0, %typeswitch.next9 ], [ %unpack.int74, %typeassert.ok71 ], !dbg !3885
  %23 = insertvalue { i64, i1 } undef, i64 %typeassert.value75, 0, !dbg !3885
  %24 = insertvalue { i64, i1 } %23, i1 false, 1, !dbg !3885
  %25 = extractvalue { i64, i1 } %24, 0, !dbg !3885
  %26 = extractvalue { i64, i1 } %24, 1, !dbg !3885
  br i1 %26, label %typeswitch.body10, label %typeswitch.next11, !dbg !3866

typeassert.ok71:                                  ; preds = %typeswitch.next9
  %typeassert.value.ptr73 = extractvalue { ptr, ptr } %1, 1, !dbg !3885
  %unpack.int74 = ptrtoint ptr %typeassert.value.ptr73 to i64, !dbg !3885
  br label %typeassert.next72, !dbg !3885

typeswitch.body10:                                ; preds = %typeassert.next72
    #dbg_value(i64 %25, !3844, !DIExpression(), !3886)
  call void @runtime.printint64(i64 %25, ptr undef), !dbg !3887
  br label %typeswitch.done, !dbg !3866

typeswitch.next11:                                ; preds = %typeassert.next72
  %interface.type76 = extractvalue { ptr, ptr } %1, 0, !dbg !3888
  br i1 false, label %typeassert.ok78, label %typeassert.next79, !dbg !3888

typeassert.next79:                                ; preds = %typeassert.ok78, %typeswitch.next11
  %typeassert.value82 = phi i64 [ 0, %typeswitch.next11 ], [ %unpack.int81, %typeassert.ok78 ], !dbg !3888
  %27 = insertvalue { i64, i1 } undef, i64 %typeassert.value82, 0, !dbg !3888
  %28 = insertvalue { i64, i1 } %27, i1 false, 1, !dbg !3888
  %29 = extractvalue { i64, i1 } %28, 0, !dbg !3888
  %30 = extractvalue { i64, i1 } %28, 1, !dbg !3888
  br i1 %30, label %typeswitch.body12, label %typeswitch.next16, !dbg !3866

typeassert.ok78:                                  ; preds = %typeswitch.next11
  %typeassert.value.ptr80 = extractvalue { ptr, ptr } %1, 1, !dbg !3888
  %unpack.int81 = ptrtoint ptr %typeassert.value.ptr80 to i64, !dbg !3888
  br label %typeassert.next79, !dbg !3888

typeswitch.body12:                                ; preds = %typeassert.next79
  br i1 true, label %switch.body13, label %switch.next14, !dbg !3866

switch.body13:                                    ; preds = %typeswitch.body12
    #dbg_value(i64 %29, !3845, !DIExpression(), !3889)
  call void @runtime.printuint64(i64 %29, ptr undef), !dbg !3890
  br label %typeswitch.done, !dbg !3866

switch.next14:                                    ; preds = %typeswitch.body12
  br i1 false, label %switch.body15, label %typeswitch.done, !dbg !3866

switch.body15:                                    ; preds = %switch.next14
    #dbg_value(i64 %29, !3845, !DIExpression(), !3891)
  %31 = trunc i64 %29 to i32, !dbg !3892
  call void @runtime.printuint32(i32 %31, ptr undef), !dbg !3893
  br label %typeswitch.done, !dbg !3866

typeswitch.next16:                                ; preds = %typeassert.next79
  %interface.type83 = extractvalue { ptr, ptr } %1, 0, !dbg !3894
  %typeassert.ok2 = icmp eq ptr @"reflect/types.type:basic:uint8", %interface.type83, !dbg !3894
  br i1 %typeassert.ok2, label %typeassert.ok85, label %typeassert.next86, !dbg !3894

typeassert.next86:                                ; preds = %typeassert.ok85, %typeswitch.next16
  %typeassert.value89 = phi i8 [ 0, %typeswitch.next16 ], [ %unpack.int88, %typeassert.ok85 ], !dbg !3894
  %32 = insertvalue { i8, i1 } undef, i8 %typeassert.value89, 0, !dbg !3894
  %33 = insertvalue { i8, i1 } %32, i1 %typeassert.ok2, 1, !dbg !3894
  %34 = extractvalue { i8, i1 } %33, 0, !dbg !3894
  %35 = extractvalue { i8, i1 } %33, 1, !dbg !3894
  br i1 %35, label %typeswitch.body17, label %typeswitch.next18, !dbg !3866

typeassert.ok85:                                  ; preds = %typeswitch.next16
  %typeassert.value.ptr87 = extractvalue { ptr, ptr } %1, 1, !dbg !3894
  %unpack.int88 = ptrtoint ptr %typeassert.value.ptr87 to i8, !dbg !3894
  br label %typeassert.next86, !dbg !3894

typeswitch.body17:                                ; preds = %typeassert.next86
    #dbg_value(i8 %34, !3846, !DIExpression(), !3895)
  call void @runtime.printuint8(i8 %34, ptr undef), !dbg !3896
  br label %typeswitch.done, !dbg !3866

typeswitch.next18:                                ; preds = %typeassert.next86
  %interface.type90 = extractvalue { ptr, ptr } %1, 0, !dbg !3897
  br i1 false, label %typeassert.ok92, label %typeassert.next93, !dbg !3897

typeassert.next93:                                ; preds = %typeassert.ok92, %typeswitch.next18
  %typeassert.value96 = phi i16 [ 0, %typeswitch.next18 ], [ %unpack.int95, %typeassert.ok92 ], !dbg !3897
  %36 = insertvalue { i16, i1 } undef, i16 %typeassert.value96, 0, !dbg !3897
  %37 = insertvalue { i16, i1 } %36, i1 false, 1, !dbg !3897
  %38 = extractvalue { i16, i1 } %37, 0, !dbg !3897
  %39 = extractvalue { i16, i1 } %37, 1, !dbg !3897
  br i1 %39, label %typeswitch.body19, label %typeswitch.next20, !dbg !3866

typeassert.ok92:                                  ; preds = %typeswitch.next18
  %typeassert.value.ptr94 = extractvalue { ptr, ptr } %1, 1, !dbg !3897
  %unpack.int95 = ptrtoint ptr %typeassert.value.ptr94 to i16, !dbg !3897
  br label %typeassert.next93, !dbg !3897

typeswitch.body19:                                ; preds = %typeassert.next93
    #dbg_value(i16 %38, !3847, !DIExpression(), !3898)
  call void @runtime.printuint16(i16 %38, ptr undef), !dbg !3899
  br label %typeswitch.done, !dbg !3866

typeswitch.next20:                                ; preds = %typeassert.next93
  %interface.type97 = extractvalue { ptr, ptr } %1, 0, !dbg !3900
  br i1 false, label %typeassert.ok99, label %typeassert.next100, !dbg !3900

typeassert.next100:                               ; preds = %typeassert.ok99, %typeswitch.next20
  %typeassert.value103 = phi i32 [ 0, %typeswitch.next20 ], [ %unpack.int102, %typeassert.ok99 ], !dbg !3900
  %40 = insertvalue { i32, i1 } undef, i32 %typeassert.value103, 0, !dbg !3900
  %41 = insertvalue { i32, i1 } %40, i1 false, 1, !dbg !3900
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !3900
  %43 = extractvalue { i32, i1 } %41, 1, !dbg !3900
  br i1 %43, label %typeswitch.body21, label %typeswitch.next22, !dbg !3866

typeassert.ok99:                                  ; preds = %typeswitch.next20
  %typeassert.value.ptr101 = extractvalue { ptr, ptr } %1, 1, !dbg !3900
  %unpack.int102 = ptrtoint ptr %typeassert.value.ptr101 to i32, !dbg !3900
  br label %typeassert.next100, !dbg !3900

typeswitch.body21:                                ; preds = %typeassert.next100
    #dbg_value(i32 %42, !3848, !DIExpression(), !3901)
  call void @runtime.printuint32(i32 %42, ptr undef), !dbg !3902
  br label %typeswitch.done, !dbg !3866

typeswitch.next22:                                ; preds = %typeassert.next100
  %interface.type104 = extractvalue { ptr, ptr } %1, 0, !dbg !3903
  br i1 false, label %typeassert.ok106, label %typeassert.next107, !dbg !3903

typeassert.next107:                               ; preds = %typeassert.ok106, %typeswitch.next22
  %typeassert.value110 = phi i64 [ 0, %typeswitch.next22 ], [ %unpack.int109, %typeassert.ok106 ], !dbg !3903
  %44 = insertvalue { i64, i1 } undef, i64 %typeassert.value110, 0, !dbg !3903
  %45 = insertvalue { i64, i1 } %44, i1 false, 1, !dbg !3903
  %46 = extractvalue { i64, i1 } %45, 0, !dbg !3903
  %47 = extractvalue { i64, i1 } %45, 1, !dbg !3903
  br i1 %47, label %typeswitch.body23, label %typeswitch.next24, !dbg !3866

typeassert.ok106:                                 ; preds = %typeswitch.next22
  %typeassert.value.ptr108 = extractvalue { ptr, ptr } %1, 1, !dbg !3903
  %unpack.int109 = ptrtoint ptr %typeassert.value.ptr108 to i64, !dbg !3903
  br label %typeassert.next107, !dbg !3903

typeswitch.body23:                                ; preds = %typeassert.next107
    #dbg_value(i64 %46, !3849, !DIExpression(), !3904)
  call void @runtime.printuint64(i64 %46, ptr undef), !dbg !3905
  br label %typeswitch.done, !dbg !3866

typeswitch.next24:                                ; preds = %typeassert.next107
  %interface.type111 = extractvalue { ptr, ptr } %1, 0, !dbg !3906
  br i1 false, label %typeassert.ok113, label %typeassert.next114, !dbg !3906

typeassert.next114:                               ; preds = %typeassert.ok113, %typeswitch.next24
  %typeassert.value117 = phi i64 [ 0, %typeswitch.next24 ], [ %unpack.int116, %typeassert.ok113 ], !dbg !3906
  %48 = insertvalue { i64, i1 } undef, i64 %typeassert.value117, 0, !dbg !3906
  %49 = insertvalue { i64, i1 } %48, i1 false, 1, !dbg !3906
  %50 = extractvalue { i64, i1 } %49, 0, !dbg !3906
  %51 = extractvalue { i64, i1 } %49, 1, !dbg !3906
  br i1 %51, label %typeswitch.body25, label %typeswitch.next26, !dbg !3866

typeassert.ok113:                                 ; preds = %typeswitch.next24
  %typeassert.value.ptr115 = extractvalue { ptr, ptr } %1, 1, !dbg !3906
  %unpack.int116 = ptrtoint ptr %typeassert.value.ptr115 to i64, !dbg !3906
  br label %typeassert.next114, !dbg !3906

typeswitch.body25:                                ; preds = %typeassert.next114
    #dbg_value(i64 %50, !3850, !DIExpression(), !3907)
  call void @runtime.printuintptr(i64 %50, ptr undef), !dbg !3908
  br label %typeswitch.done, !dbg !3866

typeswitch.next26:                                ; preds = %typeassert.next114
  %interface.type118 = extractvalue { ptr, ptr } %1, 0, !dbg !3909
  br i1 false, label %typeassert.ok120, label %typeassert.next121, !dbg !3909

typeassert.next121:                               ; preds = %typeassert.ok120, %typeswitch.next26
  %typeassert.value123 = phi float [ 0.000000e+00, %typeswitch.next26 ], [ %57, %typeassert.ok120 ], !dbg !3863
  %52 = insertvalue { float, i1 } undef, float %typeassert.value123, 0, !dbg !3863
  %53 = insertvalue { float, i1 } %52, i1 false, 1, !dbg !3863
  %54 = extractvalue { float, i1 } %53, 0, !dbg !3909
  %55 = extractvalue { float, i1 } %53, 1, !dbg !3909
  br i1 %55, label %typeswitch.body27, label %typeswitch.next28, !dbg !3866

typeassert.ok120:                                 ; preds = %typeswitch.next26
  %typeassert.value.ptr122 = extractvalue { ptr, ptr } %1, 1, !dbg !3909
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc), !dbg !3863
  store ptr %typeassert.value.ptr122, ptr %unpack.raw.alloc, align 8, !dbg !3863
  %56 = getelementptr inbounds { float }, ptr %unpack.raw.alloc, i32 0, i32 0, !dbg !3863
  %57 = load float, ptr %56, align 4, !dbg !3863
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc), !dbg !3863
  br label %typeassert.next121, !dbg !3863

typeswitch.body27:                                ; preds = %typeassert.next121
    #dbg_value(float %54, !3851, !DIExpression(), !3910)
  call void @runtime.printfloat32(float %54, ptr undef), !dbg !3911
  br label %typeswitch.done, !dbg !3866

typeswitch.next28:                                ; preds = %typeassert.next121
  %interface.type124 = extractvalue { ptr, ptr } %1, 0, !dbg !3912
  br i1 false, label %typeassert.ok126, label %typeassert.next127, !dbg !3912

typeassert.next127:                               ; preds = %typeassert.ok126, %typeswitch.next28
  %typeassert.value130 = phi double [ 0.000000e+00, %typeswitch.next28 ], [ %63, %typeassert.ok126 ], !dbg !3863
  %58 = insertvalue { double, i1 } undef, double %typeassert.value130, 0, !dbg !3863
  %59 = insertvalue { double, i1 } %58, i1 false, 1, !dbg !3863
  %60 = extractvalue { double, i1 } %59, 0, !dbg !3912
  %61 = extractvalue { double, i1 } %59, 1, !dbg !3912
  br i1 %61, label %typeswitch.body29, label %typeswitch.next30, !dbg !3866

typeassert.ok126:                                 ; preds = %typeswitch.next28
  %typeassert.value.ptr128 = extractvalue { ptr, ptr } %1, 1, !dbg !3912
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc129), !dbg !3863
  store ptr %typeassert.value.ptr128, ptr %unpack.raw.alloc129, align 8, !dbg !3863
  %62 = getelementptr inbounds { double }, ptr %unpack.raw.alloc129, i32 0, i32 0, !dbg !3863
  %63 = load double, ptr %62, align 8, !dbg !3863
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc129), !dbg !3863
  br label %typeassert.next127, !dbg !3863

typeswitch.body29:                                ; preds = %typeassert.next127
    #dbg_value(double %60, !3853, !DIExpression(), !3913)
  call void @runtime.printfloat64(double %60, ptr undef), !dbg !3914
  br label %typeswitch.done, !dbg !3866

typeswitch.next30:                                ; preds = %typeassert.next127
  %interface.type131 = extractvalue { ptr, ptr } %1, 0, !dbg !3915
  br i1 false, label %typeassert.ok133, label %typeassert.next134, !dbg !3915

typeassert.next134:                               ; preds = %typeassert.ok133, %typeswitch.next30
  %typeassert.value137 = phi { float, float } [ zeroinitializer, %typeswitch.next30 ], [ %69, %typeassert.ok133 ], !dbg !3863
  %64 = insertvalue { { float, float }, i1 } undef, { float, float } %typeassert.value137, 0, !dbg !3863
  %65 = insertvalue { { float, float }, i1 } %64, i1 false, 1, !dbg !3863
  %66 = extractvalue { { float, float }, i1 } %65, 0, !dbg !3915
  %67 = extractvalue { { float, float }, i1 } %65, 1, !dbg !3915
  br i1 %67, label %typeswitch.body31, label %typeswitch.next32, !dbg !3866

typeassert.ok133:                                 ; preds = %typeswitch.next30
  %typeassert.value.ptr135 = extractvalue { ptr, ptr } %1, 1, !dbg !3915
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc136), !dbg !3863
  store ptr %typeassert.value.ptr135, ptr %unpack.raw.alloc136, align 8, !dbg !3863
  %68 = getelementptr inbounds { { float, float } }, ptr %unpack.raw.alloc136, i32 0, i32 0, !dbg !3863
  %69 = load { float, float }, ptr %68, align 4, !dbg !3863
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc136), !dbg !3863
  br label %typeassert.next134, !dbg !3863

typeswitch.body31:                                ; preds = %typeassert.next134
    #dbg_value({ float, float } %66, !3854, !DIExpression(), !3916)
  %70 = extractvalue { float, float } %66, 0, !dbg !3917
  %71 = extractvalue { float, float } %66, 1, !dbg !3917
  call void @runtime.printcomplex64(float %70, float %71, ptr undef), !dbg !3917
  br label %typeswitch.done, !dbg !3866

typeswitch.next32:                                ; preds = %typeassert.next134
  %interface.type138 = extractvalue { ptr, ptr } %1, 0, !dbg !3918
  br i1 false, label %typeassert.ok140, label %typeassert.next141, !dbg !3918

typeassert.next141:                               ; preds = %typeassert.ok140, %typeswitch.next32
  %typeassert.value143 = phi { double, double } [ zeroinitializer, %typeswitch.next32 ], [ %77, %typeassert.ok140 ], !dbg !3918
  %72 = insertvalue { { double, double }, i1 } undef, { double, double } %typeassert.value143, 0, !dbg !3918
  %73 = insertvalue { { double, double }, i1 } %72, i1 false, 1, !dbg !3918
  %74 = extractvalue { { double, double }, i1 } %73, 0, !dbg !3918
  %75 = extractvalue { { double, double }, i1 } %73, 1, !dbg !3918
  br i1 %75, label %typeswitch.body33, label %typeswitch.next34, !dbg !3866

typeassert.ok140:                                 ; preds = %typeswitch.next32
  %typeassert.value.ptr142 = extractvalue { ptr, ptr } %1, 1, !dbg !3918
  %76 = getelementptr inbounds { { double, double } }, ptr %typeassert.value.ptr142, i32 0, i32 0, !dbg !3918
  %77 = load { double, double }, ptr %76, align 8, !dbg !3918
  br label %typeassert.next141, !dbg !3918

typeswitch.body33:                                ; preds = %typeassert.next141
    #dbg_value({ double, double } %74, !3856, !DIExpression(), !3919)
  %78 = extractvalue { double, double } %74, 0, !dbg !3920
  %79 = extractvalue { double, double } %74, 1, !dbg !3920
  call void @runtime.printcomplex128(double %78, double %79, ptr undef), !dbg !3920
  br label %typeswitch.done, !dbg !3866

typeswitch.next34:                                ; preds = %typeassert.next141
  %interface.type144 = extractvalue { ptr, ptr } %1, 0, !dbg !3921
  %typeassert.ok1 = icmp eq ptr @"reflect/types.type:basic:string", %interface.type144, !dbg !3921
  br i1 %typeassert.ok1, label %typeassert.ok146, label %typeassert.next147, !dbg !3921

typeassert.next147:                               ; preds = %typeassert.ok146, %typeswitch.next34
  %typeassert.value149 = phi %runtime._string [ zeroinitializer, %typeswitch.next34 ], [ %85, %typeassert.ok146 ], !dbg !3921
  %80 = insertvalue { %runtime._string, i1 } undef, %runtime._string %typeassert.value149, 0, !dbg !3921
  %81 = insertvalue { %runtime._string, i1 } %80, i1 %typeassert.ok1, 1, !dbg !3921
  %82 = extractvalue { %runtime._string, i1 } %81, 0, !dbg !3921
  %83 = extractvalue { %runtime._string, i1 } %81, 1, !dbg !3921
  br i1 %83, label %typeswitch.body35, label %typeswitch.next36, !dbg !3866

typeassert.ok146:                                 ; preds = %typeswitch.next34
  %typeassert.value.ptr148 = extractvalue { ptr, ptr } %1, 1, !dbg !3921
  %84 = getelementptr inbounds { %runtime._string }, ptr %typeassert.value.ptr148, i32 0, i32 0, !dbg !3921
  %85 = load %runtime._string, ptr %84, align 8, !dbg !3921
  br label %typeassert.next147, !dbg !3921

typeswitch.body35:                                ; preds = %typeassert.next147
    #dbg_value(%runtime._string %82, !3858, !DIExpression(), !3922)
  %86 = extractvalue %runtime._string %82, 0, !dbg !3923
  %87 = extractvalue %runtime._string %82, 1, !dbg !3923
  call void @runtime.printstring(ptr %86, i64 %87, ptr undef), !dbg !3923
  br label %typeswitch.done, !dbg !3866

typeswitch.next36:                                ; preds = %typeassert.next147
  %interface.type150 = extractvalue { ptr, ptr } %1, 0, !dbg !3924
  %88 = call i1 @"interface:{Error:func:{}{basic:string}}.$typeassert"(ptr %interface.type150), !dbg !3924
  br i1 %88, label %typeassert.ok151, label %typeassert.next152, !dbg !3924

typeassert.next152:                               ; preds = %typeassert.ok151, %typeswitch.next36
  %typeassert.value153 = phi { ptr, ptr } [ zeroinitializer, %typeswitch.next36 ], [ %1, %typeassert.ok151 ], !dbg !3924
  %89 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %typeassert.value153, 0, !dbg !3924
  %90 = insertvalue { { ptr, ptr }, i1 } %89, i1 %88, 1, !dbg !3924
  %91 = extractvalue { { ptr, ptr }, i1 } %90, 0, !dbg !3924
  %92 = extractvalue { { ptr, ptr }, i1 } %90, 1, !dbg !3924
  br i1 %92, label %typeswitch.body37, label %typeswitch.next38, !dbg !3866

typeassert.ok151:                                 ; preds = %typeswitch.next36
  br label %typeassert.next152, !dbg !3924

typeswitch.body37:                                ; preds = %typeassert.next152
    #dbg_value({ ptr, ptr } %91, !3859, !DIExpression(), !3925)
  %invoke.func.typecode = extractvalue { ptr, ptr } %91, 0, !dbg !3926
  %invoke.func.value = extractvalue { ptr, ptr } %91, 1, !dbg !3926
  %93 = call %runtime._string @"interface:{Error:func:{}{basic:string}}.Error$invoke"(ptr %invoke.func.value, ptr %invoke.func.typecode, ptr undef), !dbg !3926
  %94 = extractvalue %runtime._string %93, 0, !dbg !3927
  %95 = extractvalue %runtime._string %93, 1, !dbg !3927
  call void @runtime.printstring(ptr %94, i64 %95, ptr undef), !dbg !3927
  br label %typeswitch.done, !dbg !3866

typeswitch.next38:                                ; preds = %typeassert.next152
  %interface.type154 = extractvalue { ptr, ptr } %1, 0, !dbg !3928
  %96 = call i1 @"interface:{String:func:{}{basic:string}}.$typeassert"(ptr %interface.type154), !dbg !3928
  br i1 %96, label %typeassert.ok155, label %typeassert.next156, !dbg !3928

typeassert.next156:                               ; preds = %typeassert.ok155, %typeswitch.next38
  %typeassert.value157 = phi { ptr, ptr } [ zeroinitializer, %typeswitch.next38 ], [ %1, %typeassert.ok155 ], !dbg !3928
  %97 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %typeassert.value157, 0, !dbg !3928
  %98 = insertvalue { { ptr, ptr }, i1 } %97, i1 %96, 1, !dbg !3928
  %99 = extractvalue { { ptr, ptr }, i1 } %98, 0, !dbg !3928
  %100 = extractvalue { { ptr, ptr }, i1 } %98, 1, !dbg !3928
  br i1 %100, label %typeswitch.body39, label %typeswitch.next40, !dbg !3866

typeassert.ok155:                                 ; preds = %typeswitch.next38
  br label %typeassert.next156, !dbg !3928

typeswitch.body39:                                ; preds = %typeassert.next156
    #dbg_value({ ptr, ptr } %99, !3860, !DIExpression(), !3929)
  %invoke.func.typecode158 = extractvalue { ptr, ptr } %99, 0, !dbg !3930
  %invoke.func.value159 = extractvalue { ptr, ptr } %99, 1, !dbg !3930
  %101 = call %runtime._string @"interface:{String:func:{}{basic:string}}.String$invoke"(ptr %invoke.func.value159, ptr %invoke.func.typecode158, ptr undef), !dbg !3930
  %102 = extractvalue %runtime._string %101, 0, !dbg !3931
  %103 = extractvalue %runtime._string %101, 1, !dbg !3931
  call void @runtime.printstring(ptr %102, i64 %103, ptr undef), !dbg !3931
  br label %typeswitch.done, !dbg !3866

typeswitch.next40:                                ; preds = %typeassert.next156
  %msg = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 389 to ptr), ptr undef), !dbg !3932
  store { ptr, ptr } %1, ptr %msg, align 8, !dbg !3932
  store { ptr, ptr } zeroinitializer, ptr %itf, align 8, !dbg !3863
  %104 = load { ptr, ptr }, ptr %msg, align 8, !dbg !3933
  store { ptr, ptr } %104, ptr %itf, align 8, !dbg !3934
    #dbg_value({ ptr, ptr } %104, !3862, !DIExpression(), !3934)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !3935
  %105 = getelementptr inbounds { ptr, ptr }, ptr %itf, i32 0, i32 0, !dbg !3936
  %106 = icmp eq ptr %105, null, !dbg !3936
  br i1 %106, label %deref.throw, label %deref.next, !dbg !3936

deref.next:                                       ; preds = %typeswitch.next40
  %107 = load ptr, ptr %105, align 8, !dbg !3936
  %108 = ptrtoint ptr %107 to i64, !dbg !3937
  call void @runtime.printuintptr(i64 %108, ptr undef), !dbg !3938
  call void @runtime.putchar(i8 58, ptr undef), !dbg !3939
  %109 = getelementptr inbounds { ptr, ptr }, ptr %itf, i32 0, i32 1, !dbg !3940
  %110 = icmp eq ptr %109, null, !dbg !3940
  br i1 %110, label %deref.throw160, label %deref.next161, !dbg !3940

deref.next161:                                    ; preds = %deref.next
  %111 = load ptr, ptr %109, align 8, !dbg !3940
  %112 = ptrtoint ptr %111 to i64, !dbg !3941
  call void @runtime.printptr(i64 %112, ptr undef), !dbg !3942
  call void @runtime.putchar(i8 41, ptr undef), !dbg !3943
  br label %typeswitch.done, !dbg !3866

deref.throw:                                      ; preds = %typeswitch.next40
  call void @runtime.nilPanic(ptr undef), !dbg !3936
  unreachable, !dbg !3936

deref.throw160:                                   ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !3940
  unreachable, !dbg !3940
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printbool(i1 %b, ptr %context) unnamed_addr #1 !dbg !3944 {
entry:
    #dbg_value(i1 %b, !3948, !DIExpression(), !3949)
    #dbg_value(i1 %b, !3948, !DIExpression(), !3950)
  br i1 %b, label %if.then, label %if.else, !dbg !3951

if.then:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.46", i64 4, ptr undef), !dbg !3952
  br label %if.done, !dbg !3951

if.done:                                          ; preds = %if.else, %if.then
  ret void, !dbg !3953

if.else:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.47", i64 5, ptr undef), !dbg !3954
  br label %if.done, !dbg !3951
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint64(i64 %n, ptr %context) unnamed_addr #1 !dbg !3955 {
entry:
    #dbg_value(i64 %n, !3959, !DIExpression(), !3960)
    #dbg_value(i64 %n, !3959, !DIExpression(), !3961)
  %0 = icmp slt i64 %n, 0, !dbg !3962
  br i1 %0, label %if.then, label %if.done, !dbg !3963

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3964
    #dbg_value(i64 %n, !3959, !DIExpression(), !3965)
  %1 = sub i64 0, %n, !dbg !3966
    #dbg_value(i64 %1, !3959, !DIExpression(), !3967)
  br label %if.done, !dbg !3963

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i64 [ %n, %entry ], [ %1, %if.then ], !dbg !3968
    #dbg_value(i64 %2, !3959, !DIExpression(), !3969)
  call void @runtime.printuint64(i64 %2, ptr undef), !dbg !3970
  ret void, !dbg !3971
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint32(i32 %n, ptr %context) unnamed_addr #1 !dbg !3972 {
entry:
    #dbg_value(i32 %n, !3974, !DIExpression(), !3975)
    #dbg_value(i32 %n, !3974, !DIExpression(), !3976)
  %0 = icmp slt i32 %n, 0, !dbg !3977
  br i1 %0, label %if.then, label %if.done, !dbg !3978

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3979
    #dbg_value(i32 %n, !3974, !DIExpression(), !3980)
  %1 = sub i32 0, %n, !dbg !3981
    #dbg_value(i32 %1, !3974, !DIExpression(), !3982)
  br label %if.done, !dbg !3978

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i32 [ %n, %entry ], [ %1, %if.then ], !dbg !3983
    #dbg_value(i32 %2, !3974, !DIExpression(), !3984)
  call void @runtime.printuint32(i32 %2, ptr undef), !dbg !3985
  ret void, !dbg !3986
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint8(i8 %n, ptr %context) unnamed_addr #1 !dbg !3987 {
entry:
    #dbg_value(i8 %n, !3991, !DIExpression(), !3992)
  br i1 true, label %if.then, label %if.else, !dbg !3993

if.then:                                          ; preds = %entry
    #dbg_value(i8 %n, !3991, !DIExpression(), !3994)
  %0 = sext i8 %n to i32, !dbg !3995
  call void @runtime.printint32(i32 %0, ptr undef), !dbg !3996
  br label %if.done, !dbg !3993

if.done:                                          ; preds = %if.done2, %if.then
  ret void, !dbg !3997

if.else:                                          ; preds = %entry
    #dbg_value(i8 %n, !3991, !DIExpression(), !3998)
  %1 = icmp slt i8 %n, 0, !dbg !3999
  br i1 %1, label %if.then1, label %if.done2, !dbg !3993

if.then1:                                         ; preds = %if.else
  call void @runtime.putchar(i8 45, ptr undef), !dbg !4000
    #dbg_value(i8 %n, !3991, !DIExpression(), !4001)
  %2 = sub i8 0, %n, !dbg !4002
    #dbg_value(i8 %2, !3991, !DIExpression(), !4003)
  br label %if.done2, !dbg !3993

if.done2:                                         ; preds = %if.then1, %if.else
  %3 = phi i8 [ %n, %if.else ], [ %2, %if.then1 ], !dbg !4004
    #dbg_value(i8 %3, !3991, !DIExpression(), !4005)
  call void @runtime.printuint8(i8 %3, ptr undef), !dbg !4006
  br label %if.done, !dbg !3993
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint16(i16 %n, ptr %context) unnamed_addr #1 !dbg !4007 {
entry:
    #dbg_value(i16 %n, !4011, !DIExpression(), !4012)
    #dbg_value(i16 %n, !4011, !DIExpression(), !4013)
  %0 = sext i16 %n to i32, !dbg !4014
  call void @runtime.printint32(i32 %0, ptr undef), !dbg !4015
  ret void, !dbg !4016
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint64(i64 %n, ptr %context) unnamed_addr #1 !dbg !4017 {
entry:
    #dbg_value(i64 %n, !4019, !DIExpression(), !4024)
  %digits = alloca [20 x i8], align 1, !dbg !4025
  store [20 x i8] zeroinitializer, ptr %digits, align 1, !dbg !4025
    #dbg_value(i64 19, !4020, !DIExpression(), !4026)
    #dbg_value(i64 19, !4021, !DIExpression(), !4027)
  br label %for.loop, !dbg !4028

for.loop:                                         ; preds = %if.done, %entry
  %0 = phi i64 [ %n, %entry ], [ %10, %if.done ], !dbg !4029
  %1 = phi i64 [ 19, %entry ], [ %9, %if.done ], !dbg !4026
  %2 = phi i64 [ 19, %entry ], [ %11, %if.done ], !dbg !4027
    #dbg_value(i64 %2, !4021, !DIExpression(), !4030)
  %3 = icmp sge i64 %2, 0, !dbg !4031
  br i1 %3, label %for.body, label %for.done, !dbg !4028

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4019, !DIExpression(), !4032)
  %4 = urem i64 %0, 10, !dbg !4033
  %5 = add i64 %4, 48, !dbg !4034
  %6 = trunc i64 %5 to i8, !dbg !4035
    #dbg_value(i8 %6, !4022, !DIExpression(), !4036)
    #dbg_value(i64 %2, !4021, !DIExpression(), !4037)
    #dbg_value(i8 %6, !4022, !DIExpression(), !4038)
  %7 = getelementptr inbounds [20 x i8], ptr %digits, i32 0, i64 %2, !dbg !4039
  store i8 %6, ptr %7, align 1, !dbg !4039
    #dbg_value(i8 %6, !4022, !DIExpression(), !4040)
  %8 = icmp ne i8 %6, 48, !dbg !4041
  br i1 %8, label %if.then, label %if.done, !dbg !4028

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %2, !4021, !DIExpression(), !4042)
    #dbg_value(i64 %2, !4020, !DIExpression(), !4043)
  br label %if.done, !dbg !4028

if.done:                                          ; preds = %if.then, %for.body
  %9 = phi i64 [ %1, %for.body ], [ %2, %if.then ], !dbg !4026
  %10 = udiv i64 %0, 10, !dbg !4044
    #dbg_value(i64 %10, !4019, !DIExpression(), !4044)
  %11 = sub i64 %2, 1, !dbg !4045
    #dbg_value(i64 %11, !4021, !DIExpression(), !4045)
  br label %for.loop, !dbg !4028

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4020, !DIExpression(), !4046)
    #dbg_value(i64 %1, !4023, !DIExpression(), !4047)
  br label %for.loop1, !dbg !4028

for.loop1:                                        ; preds = %for.body2, %for.done
  %12 = phi i64 [ %1, %for.done ], [ %16, %for.body2 ], !dbg !4047
    #dbg_value(i64 %12, !4023, !DIExpression(), !4048)
  %13 = icmp slt i64 %12, 20, !dbg !4049
  br i1 %13, label %for.body2, label %for.done3, !dbg !4028

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %12, !4023, !DIExpression(), !4050)
  %14 = getelementptr inbounds [20 x i8], ptr %digits, i32 0, i64 %12, !dbg !4051
  %15 = load i8, ptr %14, align 1, !dbg !4051
  call void @runtime.putchar(i8 %15, ptr undef), !dbg !4052
  %16 = add i64 %12, 1, !dbg !4053
    #dbg_value(i64 %16, !4023, !DIExpression(), !4053)
  br label %for.loop1, !dbg !4028

for.done3:                                        ; preds = %for.loop1
  ret void, !dbg !4054
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint32(i32 %n, ptr %context) unnamed_addr #1 !dbg !4055 {
entry:
    #dbg_value(i32 %n, !4057, !DIExpression(), !4058)
    #dbg_value(i32 %n, !4057, !DIExpression(), !4059)
  %0 = zext i32 %n to i64, !dbg !4060
  call void @runtime.printuint64(i64 %0, ptr undef), !dbg !4061
  ret void, !dbg !4062
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint8(i8 %n, ptr %context) unnamed_addr #1 !dbg !4063 {
entry:
    #dbg_value(i8 %n, !4067, !DIExpression(), !4069)
  br i1 true, label %if.then, label %if.else, !dbg !4070

if.then:                                          ; preds = %entry
    #dbg_value(i8 %n, !4067, !DIExpression(), !4071)
  %0 = zext i8 %n to i32, !dbg !4072
  call void @runtime.printuint32(i32 %0, ptr undef), !dbg !4073
  br label %if.done, !dbg !4070

if.done:                                          ; preds = %if.done2, %if.then
  ret void, !dbg !4074

if.else:                                          ; preds = %entry
    #dbg_value(i8 %n, !4067, !DIExpression(), !4075)
  %1 = udiv i8 %n, 10, !dbg !4076
    #dbg_value(i8 %1, !4068, !DIExpression(), !4077)
    #dbg_value(i8 %1, !4068, !DIExpression(), !4078)
  %2 = icmp ne i8 %1, 0, !dbg !4079
  br i1 %2, label %if.then1, label %if.done2, !dbg !4070

if.then1:                                         ; preds = %if.else
    #dbg_value(i8 %1, !4068, !DIExpression(), !4080)
  call void @runtime.printuint8(i8 %1, ptr undef), !dbg !4081
  br label %if.done2, !dbg !4070

if.done2:                                         ; preds = %if.then1, %if.else
    #dbg_value(i8 %n, !4067, !DIExpression(), !4082)
  %3 = urem i8 %n, 10, !dbg !4083
  %4 = add i8 %3, 48, !dbg !4084
  call void @runtime.putchar(i8 %4, ptr undef), !dbg !4085
  br label %if.done, !dbg !4070
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint16(i16 %n, ptr %context) unnamed_addr #1 !dbg !4086 {
entry:
    #dbg_value(i16 %n, !4090, !DIExpression(), !4091)
    #dbg_value(i16 %n, !4090, !DIExpression(), !4092)
  %0 = zext i16 %n to i32, !dbg !4093
  call void @runtime.printuint32(i32 %0, ptr undef), !dbg !4094
  ret void, !dbg !4095
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuintptr(i64 %n, ptr %context) unnamed_addr #1 !dbg !4096 {
entry:
    #dbg_value(i64 %n, !4098, !DIExpression(), !4099)
  br i1 false, label %switch.body, label %switch.next, !dbg !4100

switch.body:                                      ; preds = %entry
    #dbg_value(i64 %n, !4098, !DIExpression(), !4101)
  %0 = trunc i64 %n to i16, !dbg !4102
  call void @runtime.printuint16(i16 %0, ptr undef), !dbg !4103
  br label %switch.done, !dbg !4100

switch.done:                                      ; preds = %switch.body3, %switch.next2, %switch.body1, %switch.body
  ret void, !dbg !4104

switch.next:                                      ; preds = %entry
  br i1 false, label %switch.body1, label %switch.next2, !dbg !4100

switch.body1:                                     ; preds = %switch.next
    #dbg_value(i64 %n, !4098, !DIExpression(), !4105)
  %1 = trunc i64 %n to i32, !dbg !4106
  call void @runtime.printuint32(i32 %1, ptr undef), !dbg !4107
  br label %switch.done, !dbg !4100

switch.next2:                                     ; preds = %switch.next
  br i1 true, label %switch.body3, label %switch.done, !dbg !4100

switch.body3:                                     ; preds = %switch.next2
    #dbg_value(i64 %n, !4098, !DIExpression(), !4108)
  call void @runtime.printuint64(i64 %n, ptr undef), !dbg !4109
  br label %switch.done, !dbg !4100
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printfloat32(float %v, ptr %context) unnamed_addr #1 !dbg !4110 {
entry:
    #dbg_value(float %v, !4114, !DIExpression(), !4123)
    #dbg_value(float %v, !4114, !DIExpression(), !4124)
    #dbg_value(float %v, !4114, !DIExpression(), !4125)
  %index.alloca = alloca [14 x i8], align 1, !dbg !4126
  %buf = alloca [14 x i8], align 1, !dbg !4126
  %0 = fcmp une float %v, %v, !dbg !4126
  br i1 %0, label %switch.body, label %switch.next, !dbg !4127

switch.body:                                      ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.35", i64 3, ptr undef), !dbg !4128
  ret void, !dbg !4129

switch.next:                                      ; preds = %entry
    #dbg_value(float %v, !4114, !DIExpression(), !4130)
    #dbg_value(float %v, !4114, !DIExpression(), !4131)
  %1 = fadd float %v, %v, !dbg !4132
    #dbg_value(float %v, !4114, !DIExpression(), !4133)
  %2 = fcmp oeq float %1, %v, !dbg !4134
  br i1 %2, label %binop.rhs, label %binop.done, !dbg !4127

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(float %v, !4114, !DIExpression(), !4135)
  %3 = fcmp ogt float %v, 0.000000e+00, !dbg !4136
  br label %binop.done, !dbg !4127

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ false, %switch.next ], [ %3, %binop.rhs ], !dbg !4137
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4127

switch.body1:                                     ; preds = %binop.done
  call void @runtime.printstring(ptr @"runtime$string.36", i64 4, ptr undef), !dbg !4138
  ret void, !dbg !4139

switch.next2:                                     ; preds = %binop.done
    #dbg_value(float %v, !4114, !DIExpression(), !4140)
    #dbg_value(float %v, !4114, !DIExpression(), !4141)
  %5 = fadd float %v, %v, !dbg !4142
    #dbg_value(float %v, !4114, !DIExpression(), !4143)
  %6 = fcmp oeq float %5, %v, !dbg !4144
  br i1 %6, label %binop.rhs3, label %binop.done4, !dbg !4127

binop.rhs3:                                       ; preds = %switch.next2
    #dbg_value(float %v, !4114, !DIExpression(), !4145)
  %7 = fcmp olt float %v, 0.000000e+00, !dbg !4146
  br label %binop.done4, !dbg !4127

binop.done4:                                      ; preds = %binop.rhs3, %switch.next2
  %8 = phi i1 [ false, %switch.next2 ], [ %7, %binop.rhs3 ], !dbg !4147
  br i1 %8, label %switch.body5, label %switch.next6, !dbg !4127

switch.body5:                                     ; preds = %binop.done4
  call void @runtime.printstring(ptr @"runtime$string.37", i64 4, ptr undef), !dbg !4148
  ret void, !dbg !4149

switch.next6:                                     ; preds = %binop.done4
  store [14 x i8] zeroinitializer, ptr %buf, align 1, !dbg !4126
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4150
  store i8 43, ptr %9, align 1, !dbg !4150
    #dbg_value(i64 0, !4115, !DIExpression(), !4151)
    #dbg_value(float %v, !4114, !DIExpression(), !4152)
  %10 = fcmp oeq float %v, 0.000000e+00, !dbg !4153
  br i1 %10, label %if.then, label %if.else, !dbg !4127

if.then:                                          ; preds = %switch.next6
    #dbg_value(float %v, !4114, !DIExpression(), !4154)
  %11 = fdiv float 1.000000e+00, %v, !dbg !4155
  %12 = fcmp olt float %11, 0.000000e+00, !dbg !4156
  br i1 %12, label %if.then7, label %if.done, !dbg !4127

if.then7:                                         ; preds = %if.then
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4157
  store i8 45, ptr %13, align 1, !dbg !4157
  br label %if.done, !dbg !4127

if.done:                                          ; preds = %if.then19, %for.done18, %if.then7, %if.then
  %14 = phi float [ %v, %if.then ], [ %84, %for.done18 ], [ %v, %if.then7 ], [ %87, %if.then19 ], !dbg !4158
  %15 = phi i64 [ 0, %if.then ], [ %75, %for.done18 ], [ 0, %if.then7 ], [ %86, %if.then19 ], !dbg !4151
    #dbg_value(i64 0, !4116, !DIExpression(), !4159)
  br label %for.loop, !dbg !4127

for.loop:                                         ; preds = %lookup.next, %if.done
  %16 = phi float [ %14, %if.done ], [ %27, %lookup.next ], !dbg !4158
  %17 = phi i64 [ 0, %if.done ], [ %28, %lookup.next ], !dbg !4159
    #dbg_value(i64 %17, !4116, !DIExpression(), !4160)
  %18 = icmp slt i64 %17, 7, !dbg !4161
  br i1 %18, label %for.body, label %for.done, !dbg !4127

for.body:                                         ; preds = %for.loop
    #dbg_value(float %16, !4114, !DIExpression(), !4162)
  %abovemin = fcmp ole float 0xC3E0000000000000, %16, !dbg !4163
  %belowmax = fcmp ole float %16, 0x43DFFFFFC0000000, !dbg !4163
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4163
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4163
  %isnan = fcmp uno float %16, %16, !dbg !4163
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4163
  %normal = fptosi float %16 to i64, !dbg !4163
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4163
    #dbg_value(i64 %19, !4117, !DIExpression(), !4164)
    #dbg_value(i64 %17, !4116, !DIExpression(), !4165)
  %20 = add i64 %17, 2, !dbg !4166
    #dbg_value(i64 %19, !4117, !DIExpression(), !4167)
  %21 = add i64 %19, 48, !dbg !4168
  %22 = trunc i64 %21 to i8, !dbg !4169
  %23 = icmp uge i64 %20, 14, !dbg !4170
  br i1 %23, label %lookup.throw, label %lookup.next, !dbg !4170

lookup.next:                                      ; preds = %for.body
  %24 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 %20, !dbg !4170
  store i8 %22, ptr %24, align 1, !dbg !4170
    #dbg_value(i64 %19, !4117, !DIExpression(), !4171)
  %25 = sitofp i64 %19 to float, !dbg !4172
  %26 = fsub float %16, %25, !dbg !4173
    #dbg_value(float %26, !4114, !DIExpression(), !4173)
  %27 = fmul float %26, 1.000000e+01, !dbg !4174
    #dbg_value(float %27, !4114, !DIExpression(), !4174)
  %28 = add i64 %17, 1, !dbg !4175
    #dbg_value(i64 %28, !4116, !DIExpression(), !4175)
  br label %for.loop, !dbg !4127

for.done:                                         ; preds = %for.loop
  %29 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4176
  %30 = load i8, ptr %29, align 1, !dbg !4176
  %31 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 1, !dbg !4177
  store i8 %30, ptr %31, align 1, !dbg !4177
  %32 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4178
  store i8 46, ptr %32, align 1, !dbg !4178
  %33 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 9, !dbg !4179
  store i8 101, ptr %33, align 1, !dbg !4179
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4180
  store i8 43, ptr %34, align 1, !dbg !4180
    #dbg_value(i64 %15, !4115, !DIExpression(), !4181)
  %35 = icmp slt i64 %15, 0, !dbg !4182
  br i1 %35, label %if.then8, label %if.done9, !dbg !4127

if.then8:                                         ; preds = %for.done
    #dbg_value(i64 %15, !4115, !DIExpression(), !4183)
  %36 = sub i64 0, %15, !dbg !4184
    #dbg_value(i64 %36, !4115, !DIExpression(), !4185)
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4186
  store i8 45, ptr %37, align 1, !dbg !4186
  br label %if.done9, !dbg !4127

if.done9:                                         ; preds = %if.then8, %for.done
  %38 = phi i64 [ %15, %for.done ], [ %36, %if.then8 ], !dbg !4151
    #dbg_value(i64 %38, !4115, !DIExpression(), !4187)
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !4188
  %40 = and i1 false, %39, !dbg !4188
  %41 = select i1 %40, i64 1, i64 100, !dbg !4188
  %42 = sdiv i64 %38, %41, !dbg !4188
  %43 = trunc i64 %42 to i8, !dbg !4189
  %44 = add i8 %43, 48, !dbg !4190
  %45 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 11, !dbg !4191
  store i8 %44, ptr %45, align 1, !dbg !4191
    #dbg_value(i64 %38, !4115, !DIExpression(), !4192)
  %46 = icmp eq i64 %38, -9223372036854775808, !dbg !4193
  %47 = and i1 false, %46, !dbg !4193
  %48 = select i1 %47, i64 1, i64 10, !dbg !4193
  %49 = sdiv i64 %38, %48, !dbg !4193
  %50 = trunc i64 %49 to i8, !dbg !4194
  %51 = urem i8 %50, 10, !dbg !4195
  %52 = add i8 %51, 48, !dbg !4196
  %53 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 12, !dbg !4197
  store i8 %52, ptr %53, align 1, !dbg !4197
    #dbg_value(i64 %38, !4115, !DIExpression(), !4198)
  %54 = icmp eq i64 %38, -9223372036854775808, !dbg !4199
  %55 = and i1 false, %54, !dbg !4199
  %56 = select i1 %55, i64 1, i64 10, !dbg !4199
  %57 = srem i64 %38, %56, !dbg !4199
  %58 = trunc i64 %57 to i8, !dbg !4200
  %59 = add i8 %58, 48, !dbg !4201
  %60 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 13, !dbg !4202
  store i8 %59, ptr %60, align 1, !dbg !4202
  %61 = load [14 x i8], ptr %buf, align 1, !dbg !4203
    #dbg_value([14 x i8] %61, !4118, !DIExpression(), !4203)
  br label %rangeindex.loop, !dbg !4127

rangeindex.loop:                                  ; preds = %lookup.next21, %if.done9
  %62 = phi i64 [ -1, %if.done9 ], [ %63, %lookup.next21 ], !dbg !4127
  %63 = add i64 %62, 1, !dbg !4127
  %64 = icmp slt i64 %63, 14, !dbg !4127
  br i1 %64, label %rangeindex.body, label %rangeindex.done, !dbg !4127

rangeindex.body:                                  ; preds = %rangeindex.loop
  %65 = icmp uge i64 %63, 14, !dbg !4203
  br i1 %65, label %lookup.throw20, label %lookup.next21, !dbg !4203

lookup.next21:                                    ; preds = %rangeindex.body
  call void @llvm.lifetime.start.p0(i64 14, ptr %index.alloca), !dbg !4126
  store [14 x i8] %61, ptr %index.alloca, align 1, !dbg !4126
  %index.gep = getelementptr inbounds [14 x i8], ptr %index.alloca, i32 0, i64 %63, !dbg !4126
  %index.load = load i8, ptr %index.gep, align 1, !dbg !4126
  call void @llvm.lifetime.end.p0(i64 14, ptr %index.alloca), !dbg !4126
    #dbg_value(i8 %index.load, !4120, !DIExpression(), !4204)
    #dbg_value(i8 %index.load, !4120, !DIExpression(), !4205)
  call void @runtime.putchar(i8 %index.load, ptr undef), !dbg !4206
  br label %rangeindex.loop, !dbg !4127

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret void, !dbg !4207

if.else:                                          ; preds = %switch.next6
    #dbg_value(float %v, !4114, !DIExpression(), !4208)
  %66 = fcmp olt float %v, 0.000000e+00, !dbg !4209
  br i1 %66, label %if.then10, label %for.loop11, !dbg !4127

if.then10:                                        ; preds = %if.else
    #dbg_value(float %v, !4114, !DIExpression(), !4210)
  %67 = fneg float %v, !dbg !4211
    #dbg_value(float %67, !4114, !DIExpression(), !4212)
  %68 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4213
  store i8 45, ptr %68, align 1, !dbg !4213
  br label %for.loop11, !dbg !4127

for.loop11:                                       ; preds = %for.body12, %if.then10, %if.else
  %69 = phi float [ %v, %if.else ], [ %73, %for.body12 ], [ %67, %if.then10 ], !dbg !4158
  %70 = phi i64 [ 0, %if.else ], [ %72, %for.body12 ], [ 0, %if.then10 ], !dbg !4151
    #dbg_value(float %69, !4114, !DIExpression(), !4214)
  %71 = fcmp oge float %69, 1.000000e+01, !dbg !4215
  br i1 %71, label %for.body12, label %for.loop13, !dbg !4127

for.body12:                                       ; preds = %for.loop11
  %72 = add i64 %70, 1, !dbg !4216
    #dbg_value(i64 %72, !4115, !DIExpression(), !4216)
  %73 = fdiv float %69, 1.000000e+01, !dbg !4217
    #dbg_value(float %73, !4114, !DIExpression(), !4217)
  br label %for.loop11, !dbg !4127

for.loop13:                                       ; preds = %for.body14, %for.loop11
  %74 = phi float [ %69, %for.loop11 ], [ %78, %for.body14 ], !dbg !4158
  %75 = phi i64 [ %70, %for.loop11 ], [ %77, %for.body14 ], !dbg !4151
    #dbg_value(float %74, !4114, !DIExpression(), !4218)
  %76 = fcmp olt float %74, 1.000000e+00, !dbg !4219
  br i1 %76, label %for.body14, label %for.done15, !dbg !4127

for.body14:                                       ; preds = %for.loop13
  %77 = sub i64 %75, 1, !dbg !4220
    #dbg_value(i64 %77, !4115, !DIExpression(), !4220)
  %78 = fmul float %74, 1.000000e+01, !dbg !4221
    #dbg_value(float %78, !4114, !DIExpression(), !4221)
  br label %for.loop13, !dbg !4127

for.done15:                                       ; preds = %for.loop13
    #dbg_value(float 5.000000e+00, !4121, !DIExpression(), !4222)
    #dbg_value(i64 0, !4122, !DIExpression(), !4223)
  br label %for.loop16, !dbg !4127

for.loop16:                                       ; preds = %for.body17, %for.done15
  %79 = phi float [ 5.000000e+00, %for.done15 ], [ %82, %for.body17 ], !dbg !4222
  %80 = phi i64 [ 0, %for.done15 ], [ %83, %for.body17 ], !dbg !4223
    #dbg_value(i64 %80, !4122, !DIExpression(), !4224)
  %81 = icmp slt i64 %80, 7, !dbg !4225
  br i1 %81, label %for.body17, label %for.done18, !dbg !4127

for.body17:                                       ; preds = %for.loop16
  %82 = fdiv float %79, 1.000000e+01, !dbg !4226
    #dbg_value(float %82, !4121, !DIExpression(), !4226)
  %83 = add i64 %80, 1, !dbg !4227
    #dbg_value(i64 %83, !4122, !DIExpression(), !4227)
  br label %for.loop16, !dbg !4127

for.done18:                                       ; preds = %for.loop16
    #dbg_value(float %79, !4121, !DIExpression(), !4228)
  %84 = fadd float %74, %79, !dbg !4229
    #dbg_value(float %84, !4114, !DIExpression(), !4229)
    #dbg_value(float %84, !4114, !DIExpression(), !4230)
  %85 = fcmp oge float %84, 1.000000e+01, !dbg !4231
  br i1 %85, label %if.then19, label %if.done, !dbg !4127

if.then19:                                        ; preds = %for.done18
  %86 = add i64 %75, 1, !dbg !4232
    #dbg_value(i64 %86, !4115, !DIExpression(), !4232)
  %87 = fdiv float %84, 1.000000e+01, !dbg !4233
    #dbg_value(float %87, !4114, !DIExpression(), !4233)
  br label %if.done, !dbg !4127

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4170
  unreachable, !dbg !4170

lookup.throw20:                                   ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4203
  unreachable, !dbg !4203
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printfloat64(double %v, ptr %context) unnamed_addr #1 !dbg !4234 {
entry:
    #dbg_value(double %v, !4236, !DIExpression(), !4244)
    #dbg_value(double %v, !4236, !DIExpression(), !4245)
    #dbg_value(double %v, !4236, !DIExpression(), !4246)
  %index.alloca = alloca [14 x i8], align 1, !dbg !4247
  %buf = alloca [14 x i8], align 1, !dbg !4247
  %0 = fcmp une double %v, %v, !dbg !4247
  br i1 %0, label %switch.body, label %switch.next, !dbg !4248

switch.body:                                      ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.38", i64 3, ptr undef), !dbg !4249
  ret void, !dbg !4250

switch.next:                                      ; preds = %entry
    #dbg_value(double %v, !4236, !DIExpression(), !4251)
    #dbg_value(double %v, !4236, !DIExpression(), !4252)
  %1 = fadd double %v, %v, !dbg !4253
    #dbg_value(double %v, !4236, !DIExpression(), !4254)
  %2 = fcmp oeq double %1, %v, !dbg !4255
  br i1 %2, label %binop.rhs, label %binop.done, !dbg !4248

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(double %v, !4236, !DIExpression(), !4256)
  %3 = fcmp ogt double %v, 0.000000e+00, !dbg !4257
  br label %binop.done, !dbg !4248

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ false, %switch.next ], [ %3, %binop.rhs ], !dbg !4258
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4248

switch.body1:                                     ; preds = %binop.done
  call void @runtime.printstring(ptr @"runtime$string.39", i64 4, ptr undef), !dbg !4259
  ret void, !dbg !4260

switch.next2:                                     ; preds = %binop.done
    #dbg_value(double %v, !4236, !DIExpression(), !4261)
    #dbg_value(double %v, !4236, !DIExpression(), !4262)
  %5 = fadd double %v, %v, !dbg !4263
    #dbg_value(double %v, !4236, !DIExpression(), !4264)
  %6 = fcmp oeq double %5, %v, !dbg !4265
  br i1 %6, label %binop.rhs3, label %binop.done4, !dbg !4248

binop.rhs3:                                       ; preds = %switch.next2
    #dbg_value(double %v, !4236, !DIExpression(), !4266)
  %7 = fcmp olt double %v, 0.000000e+00, !dbg !4267
  br label %binop.done4, !dbg !4248

binop.done4:                                      ; preds = %binop.rhs3, %switch.next2
  %8 = phi i1 [ false, %switch.next2 ], [ %7, %binop.rhs3 ], !dbg !4268
  br i1 %8, label %switch.body5, label %switch.next6, !dbg !4248

switch.body5:                                     ; preds = %binop.done4
  call void @runtime.printstring(ptr @"runtime$string.40", i64 4, ptr undef), !dbg !4269
  ret void, !dbg !4270

switch.next6:                                     ; preds = %binop.done4
  store [14 x i8] zeroinitializer, ptr %buf, align 1, !dbg !4247
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4271
  store i8 43, ptr %9, align 1, !dbg !4271
    #dbg_value(i64 0, !4237, !DIExpression(), !4272)
    #dbg_value(double %v, !4236, !DIExpression(), !4273)
  %10 = fcmp oeq double %v, 0.000000e+00, !dbg !4274
  br i1 %10, label %if.then, label %if.else, !dbg !4248

if.then:                                          ; preds = %switch.next6
    #dbg_value(double %v, !4236, !DIExpression(), !4275)
  %11 = fdiv double 1.000000e+00, %v, !dbg !4276
  %12 = fcmp olt double %11, 0.000000e+00, !dbg !4277
  br i1 %12, label %if.then7, label %if.done, !dbg !4248

if.then7:                                         ; preds = %if.then
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4278
  store i8 45, ptr %13, align 1, !dbg !4278
  br label %if.done, !dbg !4248

if.done:                                          ; preds = %if.then19, %for.done18, %if.then7, %if.then
  %14 = phi double [ %v, %if.then ], [ %84, %for.done18 ], [ %v, %if.then7 ], [ %87, %if.then19 ], !dbg !4279
  %15 = phi i64 [ 0, %if.then ], [ %75, %for.done18 ], [ 0, %if.then7 ], [ %86, %if.then19 ], !dbg !4272
    #dbg_value(i64 0, !4238, !DIExpression(), !4280)
  br label %for.loop, !dbg !4248

for.loop:                                         ; preds = %lookup.next, %if.done
  %16 = phi double [ %14, %if.done ], [ %27, %lookup.next ], !dbg !4279
  %17 = phi i64 [ 0, %if.done ], [ %28, %lookup.next ], !dbg !4280
    #dbg_value(i64 %17, !4238, !DIExpression(), !4281)
  %18 = icmp slt i64 %17, 7, !dbg !4282
  br i1 %18, label %for.body, label %for.done, !dbg !4248

for.body:                                         ; preds = %for.loop
    #dbg_value(double %16, !4236, !DIExpression(), !4283)
  %abovemin = fcmp ole double 0xC3E0000000000000, %16, !dbg !4284
  %belowmax = fcmp ole double %16, 0x43DFFFFFFFFFFFFE, !dbg !4284
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4284
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4284
  %isnan = fcmp uno double %16, %16, !dbg !4284
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4284
  %normal = fptosi double %16 to i64, !dbg !4284
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4284
    #dbg_value(i64 %19, !4239, !DIExpression(), !4285)
    #dbg_value(i64 %17, !4238, !DIExpression(), !4286)
  %20 = add i64 %17, 2, !dbg !4287
    #dbg_value(i64 %19, !4239, !DIExpression(), !4288)
  %21 = add i64 %19, 48, !dbg !4289
  %22 = trunc i64 %21 to i8, !dbg !4290
  %23 = icmp uge i64 %20, 14, !dbg !4291
  br i1 %23, label %lookup.throw, label %lookup.next, !dbg !4291

lookup.next:                                      ; preds = %for.body
  %24 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 %20, !dbg !4291
  store i8 %22, ptr %24, align 1, !dbg !4291
    #dbg_value(i64 %19, !4239, !DIExpression(), !4292)
  %25 = sitofp i64 %19 to double, !dbg !4293
  %26 = fsub double %16, %25, !dbg !4294
    #dbg_value(double %26, !4236, !DIExpression(), !4294)
  %27 = fmul double %26, 1.000000e+01, !dbg !4295
    #dbg_value(double %27, !4236, !DIExpression(), !4295)
  %28 = add i64 %17, 1, !dbg !4296
    #dbg_value(i64 %28, !4238, !DIExpression(), !4296)
  br label %for.loop, !dbg !4248

for.done:                                         ; preds = %for.loop
  %29 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4297
  %30 = load i8, ptr %29, align 1, !dbg !4297
  %31 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 1, !dbg !4298
  store i8 %30, ptr %31, align 1, !dbg !4298
  %32 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4299
  store i8 46, ptr %32, align 1, !dbg !4299
  %33 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 9, !dbg !4300
  store i8 101, ptr %33, align 1, !dbg !4300
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4301
  store i8 43, ptr %34, align 1, !dbg !4301
    #dbg_value(i64 %15, !4237, !DIExpression(), !4302)
  %35 = icmp slt i64 %15, 0, !dbg !4303
  br i1 %35, label %if.then8, label %if.done9, !dbg !4248

if.then8:                                         ; preds = %for.done
    #dbg_value(i64 %15, !4237, !DIExpression(), !4304)
  %36 = sub i64 0, %15, !dbg !4305
    #dbg_value(i64 %36, !4237, !DIExpression(), !4306)
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4307
  store i8 45, ptr %37, align 1, !dbg !4307
  br label %if.done9, !dbg !4248

if.done9:                                         ; preds = %if.then8, %for.done
  %38 = phi i64 [ %15, %for.done ], [ %36, %if.then8 ], !dbg !4272
    #dbg_value(i64 %38, !4237, !DIExpression(), !4308)
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !4309
  %40 = and i1 false, %39, !dbg !4309
  %41 = select i1 %40, i64 1, i64 100, !dbg !4309
  %42 = sdiv i64 %38, %41, !dbg !4309
  %43 = trunc i64 %42 to i8, !dbg !4310
  %44 = add i8 %43, 48, !dbg !4311
  %45 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 11, !dbg !4312
  store i8 %44, ptr %45, align 1, !dbg !4312
    #dbg_value(i64 %38, !4237, !DIExpression(), !4313)
  %46 = icmp eq i64 %38, -9223372036854775808, !dbg !4314
  %47 = and i1 false, %46, !dbg !4314
  %48 = select i1 %47, i64 1, i64 10, !dbg !4314
  %49 = sdiv i64 %38, %48, !dbg !4314
  %50 = trunc i64 %49 to i8, !dbg !4315
  %51 = urem i8 %50, 10, !dbg !4316
  %52 = add i8 %51, 48, !dbg !4317
  %53 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 12, !dbg !4318
  store i8 %52, ptr %53, align 1, !dbg !4318
    #dbg_value(i64 %38, !4237, !DIExpression(), !4319)
  %54 = icmp eq i64 %38, -9223372036854775808, !dbg !4320
  %55 = and i1 false, %54, !dbg !4320
  %56 = select i1 %55, i64 1, i64 10, !dbg !4320
  %57 = srem i64 %38, %56, !dbg !4320
  %58 = trunc i64 %57 to i8, !dbg !4321
  %59 = add i8 %58, 48, !dbg !4322
  %60 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 13, !dbg !4323
  store i8 %59, ptr %60, align 1, !dbg !4323
  %61 = load [14 x i8], ptr %buf, align 1, !dbg !4324
    #dbg_value([14 x i8] %61, !4240, !DIExpression(), !4324)
  br label %rangeindex.loop, !dbg !4248

rangeindex.loop:                                  ; preds = %lookup.next21, %if.done9
  %62 = phi i64 [ -1, %if.done9 ], [ %63, %lookup.next21 ], !dbg !4248
  %63 = add i64 %62, 1, !dbg !4248
  %64 = icmp slt i64 %63, 14, !dbg !4248
  br i1 %64, label %rangeindex.body, label %rangeindex.done, !dbg !4248

rangeindex.body:                                  ; preds = %rangeindex.loop
  %65 = icmp uge i64 %63, 14, !dbg !4324
  br i1 %65, label %lookup.throw20, label %lookup.next21, !dbg !4324

lookup.next21:                                    ; preds = %rangeindex.body
  call void @llvm.lifetime.start.p0(i64 14, ptr %index.alloca), !dbg !4247
  store [14 x i8] %61, ptr %index.alloca, align 1, !dbg !4247
  %index.gep = getelementptr inbounds [14 x i8], ptr %index.alloca, i32 0, i64 %63, !dbg !4247
  %index.load = load i8, ptr %index.gep, align 1, !dbg !4247
  call void @llvm.lifetime.end.p0(i64 14, ptr %index.alloca), !dbg !4247
    #dbg_value(i8 %index.load, !4241, !DIExpression(), !4325)
    #dbg_value(i8 %index.load, !4241, !DIExpression(), !4326)
  call void @runtime.putchar(i8 %index.load, ptr undef), !dbg !4327
  br label %rangeindex.loop, !dbg !4248

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret void, !dbg !4328

if.else:                                          ; preds = %switch.next6
    #dbg_value(double %v, !4236, !DIExpression(), !4329)
  %66 = fcmp olt double %v, 0.000000e+00, !dbg !4330
  br i1 %66, label %if.then10, label %for.loop11, !dbg !4248

if.then10:                                        ; preds = %if.else
    #dbg_value(double %v, !4236, !DIExpression(), !4331)
  %67 = fneg double %v, !dbg !4332
    #dbg_value(double %67, !4236, !DIExpression(), !4333)
  %68 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4334
  store i8 45, ptr %68, align 1, !dbg !4334
  br label %for.loop11, !dbg !4248

for.loop11:                                       ; preds = %for.body12, %if.then10, %if.else
  %69 = phi double [ %v, %if.else ], [ %73, %for.body12 ], [ %67, %if.then10 ], !dbg !4279
  %70 = phi i64 [ 0, %if.else ], [ %72, %for.body12 ], [ 0, %if.then10 ], !dbg !4272
    #dbg_value(double %69, !4236, !DIExpression(), !4335)
  %71 = fcmp oge double %69, 1.000000e+01, !dbg !4336
  br i1 %71, label %for.body12, label %for.loop13, !dbg !4248

for.body12:                                       ; preds = %for.loop11
  %72 = add i64 %70, 1, !dbg !4337
    #dbg_value(i64 %72, !4237, !DIExpression(), !4337)
  %73 = fdiv double %69, 1.000000e+01, !dbg !4338
    #dbg_value(double %73, !4236, !DIExpression(), !4338)
  br label %for.loop11, !dbg !4248

for.loop13:                                       ; preds = %for.body14, %for.loop11
  %74 = phi double [ %69, %for.loop11 ], [ %78, %for.body14 ], !dbg !4279
  %75 = phi i64 [ %70, %for.loop11 ], [ %77, %for.body14 ], !dbg !4272
    #dbg_value(double %74, !4236, !DIExpression(), !4339)
  %76 = fcmp olt double %74, 1.000000e+00, !dbg !4340
  br i1 %76, label %for.body14, label %for.done15, !dbg !4248

for.body14:                                       ; preds = %for.loop13
  %77 = sub i64 %75, 1, !dbg !4341
    #dbg_value(i64 %77, !4237, !DIExpression(), !4341)
  %78 = fmul double %74, 1.000000e+01, !dbg !4342
    #dbg_value(double %78, !4236, !DIExpression(), !4342)
  br label %for.loop13, !dbg !4248

for.done15:                                       ; preds = %for.loop13
    #dbg_value(double 5.000000e+00, !4242, !DIExpression(), !4343)
    #dbg_value(i64 0, !4243, !DIExpression(), !4344)
  br label %for.loop16, !dbg !4248

for.loop16:                                       ; preds = %for.body17, %for.done15
  %79 = phi double [ 5.000000e+00, %for.done15 ], [ %82, %for.body17 ], !dbg !4343
  %80 = phi i64 [ 0, %for.done15 ], [ %83, %for.body17 ], !dbg !4344
    #dbg_value(i64 %80, !4243, !DIExpression(), !4345)
  %81 = icmp slt i64 %80, 7, !dbg !4346
  br i1 %81, label %for.body17, label %for.done18, !dbg !4248

for.body17:                                       ; preds = %for.loop16
  %82 = fdiv double %79, 1.000000e+01, !dbg !4347
    #dbg_value(double %82, !4242, !DIExpression(), !4347)
  %83 = add i64 %80, 1, !dbg !4348
    #dbg_value(i64 %83, !4243, !DIExpression(), !4348)
  br label %for.loop16, !dbg !4248

for.done18:                                       ; preds = %for.loop16
    #dbg_value(double %79, !4242, !DIExpression(), !4349)
  %84 = fadd double %74, %79, !dbg !4350
    #dbg_value(double %84, !4236, !DIExpression(), !4350)
    #dbg_value(double %84, !4236, !DIExpression(), !4351)
  %85 = fcmp oge double %84, 1.000000e+01, !dbg !4352
  br i1 %85, label %if.then19, label %if.done, !dbg !4248

if.then19:                                        ; preds = %for.done18
  %86 = add i64 %75, 1, !dbg !4353
    #dbg_value(i64 %86, !4237, !DIExpression(), !4353)
  %87 = fdiv double %84, 1.000000e+01, !dbg !4354
    #dbg_value(double %87, !4236, !DIExpression(), !4354)
  br label %if.done, !dbg !4248

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4291
  unreachable, !dbg !4291

lookup.throw20:                                   ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4324
  unreachable, !dbg !4324
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printcomplex64(float %c.r, float %c.i, ptr %context) unnamed_addr #1 !dbg !4355 {
entry:
  %0 = insertvalue { float, float } zeroinitializer, float %c.r, 0, !dbg !4360
  %1 = insertvalue { float, float } %0, float %c.i, 1, !dbg !4360
    #dbg_value(float %c.r, !4359, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4360)
    #dbg_value(float %c.i, !4359, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4360)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4361
    #dbg_value({ float, float } %1, !4359, !DIExpression(), !4362)
  %real = extractvalue { float, float } %1, 0, !dbg !4363
  call void @runtime.printfloat32(float %real, ptr undef), !dbg !4364
    #dbg_value({ float, float } %1, !4359, !DIExpression(), !4365)
  %imag = extractvalue { float, float } %1, 1, !dbg !4366
  call void @runtime.printfloat32(float %imag, ptr undef), !dbg !4367
  call void @runtime.printstring(ptr @"runtime$string.41", i64 2, ptr undef), !dbg !4368
  ret void, !dbg !4369
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printcomplex128(double %c.r, double %c.i, ptr %context) unnamed_addr #1 !dbg !4370 {
entry:
  %0 = insertvalue { double, double } zeroinitializer, double %c.r, 0, !dbg !4375
  %1 = insertvalue { double, double } %0, double %c.i, 1, !dbg !4375
    #dbg_value(double %c.r, !4374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4375)
    #dbg_value(double %c.i, !4374, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4375)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4376
    #dbg_value({ double, double } %1, !4374, !DIExpression(), !4377)
  %real = extractvalue { double, double } %1, 0, !dbg !4378
  call void @runtime.printfloat64(double %real, ptr undef), !dbg !4379
    #dbg_value({ double, double } %1, !4374, !DIExpression(), !4380)
  %imag = extractvalue { double, double } %1, 1, !dbg !4381
  call void @runtime.printfloat64(double %imag, ptr undef), !dbg !4382
  call void @runtime.printstring(ptr @"runtime$string.42", i64 2, ptr undef), !dbg !4383
  ret void, !dbg !4384
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
define internal void @runtime._panic(ptr %message.typecode, ptr %message.value, ptr %context) #1 !dbg !4385 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %message.typecode, 0, !dbg !4388
  %1 = insertvalue { ptr, ptr } %0, ptr %message.value, 1, !dbg !4388
    #dbg_value(ptr %message.typecode, !4387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4388)
    #dbg_value(ptr %message.value, !4387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4388)
    #dbg_value({ ptr, ptr } %1, !4387, !DIExpression(), !4389)
  %2 = extractvalue { ptr, ptr } %1, 0, !dbg !4390
  %3 = extractvalue { ptr, ptr } %1, 1, !dbg !4390
  call void @runtime.panicOrGoexit(ptr %2, ptr %3, i8 1, ptr undef), !dbg !4390
  ret void, !dbg !4391
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @runtime.stringEqual(ptr readonly %x.data, i64 %x.len, ptr readonly %y.data, i64 %y.len, ptr %context) #1 !dbg !4392 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %x.data, 0, !dbg !4400
  %1 = insertvalue %runtime._string %0, i64 %x.len, 1, !dbg !4400
    #dbg_value(ptr %x.data, !4397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4400)
    #dbg_value(i64 %x.len, !4397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4400)
  %2 = insertvalue %runtime._string zeroinitializer, ptr %y.data, 0, !dbg !4400
  %3 = insertvalue %runtime._string %2, i64 %y.len, 1, !dbg !4400
    #dbg_value(ptr %y.data, !4398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4400)
    #dbg_value(i64 %y.len, !4398, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4400)
    #dbg_value(%runtime._string %1, !4397, !DIExpression(), !4401)
  %len = extractvalue %runtime._string %1, 1, !dbg !4402
    #dbg_value(%runtime._string %3, !4398, !DIExpression(), !4403)
  %len3 = extractvalue %runtime._string %3, 1, !dbg !4404
  %4 = icmp ne i64 %len, %len3, !dbg !4405
  br i1 %4, label %if.then, label %if.done, !dbg !4406

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !4407

if.done:                                          ; preds = %entry
    #dbg_value(i64 0, !4399, !DIExpression(), !4408)
  br label %for.loop, !dbg !4406

for.loop:                                         ; preds = %if.done2, %if.done
  %5 = phi i64 [ 0, %if.done ], [ %14, %if.done2 ], !dbg !4408
    #dbg_value(i64 %5, !4399, !DIExpression(), !4409)
    #dbg_value(%runtime._string %1, !4397, !DIExpression(), !4410)
  %len4 = extractvalue %runtime._string %1, 1, !dbg !4411
  %6 = icmp slt i64 %5, %len4, !dbg !4412
  br i1 %6, label %for.body, label %for.done, !dbg !4406

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4399, !DIExpression(), !4413)
    #dbg_value(%runtime._string %1, !4397, !DIExpression(), !4414)
  %len5 = extractvalue %runtime._string %1, 1, !dbg !4415
  %7 = extractvalue %runtime._string %1, 0, !dbg !4415
  %8 = getelementptr inbounds i8, ptr %7, i64 %5, !dbg !4415
  %9 = load i8, ptr %8, align 1, !dbg !4415
    #dbg_value(i64 %5, !4399, !DIExpression(), !4416)
    #dbg_value(%runtime._string %3, !4398, !DIExpression(), !4417)
  %len6 = extractvalue %runtime._string %3, 1, !dbg !4418
  %10 = extractvalue %runtime._string %3, 0, !dbg !4418
  %11 = getelementptr inbounds i8, ptr %10, i64 %5, !dbg !4418
  %12 = load i8, ptr %11, align 1, !dbg !4418
  %13 = icmp ne i8 %9, %12, !dbg !4419
  br i1 %13, label %if.then1, label %if.done2, !dbg !4406

if.then1:                                         ; preds = %for.body
  ret i1 false, !dbg !4420

if.done2:                                         ; preds = %for.body
  %14 = add i64 %5, 1, !dbg !4421
    #dbg_value(i64 %14, !4399, !DIExpression(), !4421)
  br label %for.loop, !dbg !4406

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4422
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.slicePanic(ptr %context) #1 !dbg !4423 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4424
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.20", i64 18, ptr undef), !dbg !4425
  ret void, !dbg !4426
}

; Function Attrs: nounwind uwtable(sync)
define double @fminimum(double %x, double %y) #1 !dbg !4427 {
entry:
    #dbg_value(double %x, !4431, !DIExpression(), !4433)
    #dbg_value(double %y, !4432, !DIExpression(), !4433)
    #dbg_value(double %x, !4431, !DIExpression(), !4434)
    #dbg_value(double %y, !4432, !DIExpression(), !4435)
  %0 = call double @runtime.minimumFloat64(double %x, double %y, ptr undef), !dbg !4436
  ret double %0, !dbg !4437
}

; Function Attrs: nounwind uwtable(sync)
define internal double @runtime.minimumFloat64(double %x, double %y, ptr %context) unnamed_addr #1 !dbg !4438 {
entry:
    #dbg_value(double %x, !4440, !DIExpression(), !4442)
    #dbg_value(double %y, !4441, !DIExpression(), !4442)
    #dbg_value(double %x, !4440, !DIExpression(), !4443)
    #dbg_value(double %y, !4441, !DIExpression(), !4444)
  %0 = call double @"runtime.minimumFloat[float64 int64]"(double %x, double %y, i64 9218868437227405313, i64 9223372036854775807, ptr undef), !dbg !4445
  ret double %0, !dbg !4446
}

; Function Attrs: nounwind uwtable(sync)
define internal double @"runtime.minimumFloat[float64 int64]"(double %x, double %y, i64 %minPosNaN, i64 %magMask, ptr %context) unnamed_addr #1 !dbg !4447 {
entry:
    #dbg_value(double %x, !4451, !DIExpression(), !4457)
    #dbg_value(double %y, !4452, !DIExpression(), !4457)
    #dbg_value(i64 %minPosNaN, !4453, !DIExpression(), !4457)
    #dbg_value(i64 %magMask, !4454, !DIExpression(), !4457)
  %x6 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4458
  store double %x, ptr %x6, align 8, !dbg !4458
  %y7 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4459
  store double %y, ptr %y7, align 8, !dbg !4459
  %0 = load i64, ptr %x6, align 8, !dbg !4460
    #dbg_value(i64 %0, !4455, !DIExpression(), !4461)
  %1 = load i64, ptr %y7, align 8, !dbg !4462
    #dbg_value(i64 %1, !4456, !DIExpression(), !4463)
    #dbg_value(i64 %0, !4455, !DIExpression(), !4464)
    #dbg_value(i64 %minPosNaN, !4453, !DIExpression(), !4465)
  %2 = icmp sge i64 %0, %minPosNaN, !dbg !4466
  br i1 %2, label %switch.body, label %switch.next, !dbg !4467

switch.body:                                      ; preds = %entry
  %3 = load double, ptr %x6, align 8, !dbg !4468
    #dbg_value(double %3, !4451, !DIExpression(), !4468)
  ret double %3, !dbg !4469

switch.next:                                      ; preds = %entry
    #dbg_value(i64 %1, !4456, !DIExpression(), !4470)
    #dbg_value(i64 %minPosNaN, !4453, !DIExpression(), !4471)
  %4 = icmp sge i64 %1, %minPosNaN, !dbg !4472
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4467

switch.body1:                                     ; preds = %switch.next
  %5 = load double, ptr %y7, align 8, !dbg !4473
    #dbg_value(double %5, !4452, !DIExpression(), !4473)
  ret double %5, !dbg !4474

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i64 %0, !4455, !DIExpression(), !4475)
  %6 = icmp slt i64 %0, 0, !dbg !4476
  br i1 %6, label %if.then, label %if.done, !dbg !4467

if.then:                                          ; preds = %switch.next2
    #dbg_value(i64 %magMask, !4454, !DIExpression(), !4477)
  %7 = xor i64 %0, %magMask, !dbg !4478
    #dbg_value(i64 %7, !4455, !DIExpression(), !4478)
  br label %if.done, !dbg !4467

if.done:                                          ; preds = %if.then, %switch.next2
  %8 = phi i64 [ %0, %switch.next2 ], [ %7, %if.then ], !dbg !4461
    #dbg_value(i64 %1, !4456, !DIExpression(), !4479)
  %9 = icmp slt i64 %1, 0, !dbg !4480
  br i1 %9, label %if.then3, label %if.done4, !dbg !4467

if.then3:                                         ; preds = %if.done
    #dbg_value(i64 %magMask, !4454, !DIExpression(), !4481)
  %10 = xor i64 %1, %magMask, !dbg !4482
    #dbg_value(i64 %10, !4456, !DIExpression(), !4482)
  br label %if.done4, !dbg !4467

if.done4:                                         ; preds = %if.then3, %if.done
  %11 = phi i64 [ %1, %if.done ], [ %10, %if.then3 ], !dbg !4463
    #dbg_value(i64 %8, !4455, !DIExpression(), !4483)
    #dbg_value(i64 %11, !4456, !DIExpression(), !4484)
  %12 = icmp sle i64 %8, %11, !dbg !4485
  br i1 %12, label %if.then5, label %if.else, !dbg !4467

if.then5:                                         ; preds = %if.done4
  %13 = load double, ptr %x6, align 8, !dbg !4486
    #dbg_value(double %13, !4451, !DIExpression(), !4486)
  ret double %13, !dbg !4487

if.else:                                          ; preds = %if.done4
  %14 = load double, ptr %y7, align 8, !dbg !4488
    #dbg_value(double %14, !4452, !DIExpression(), !4488)
  ret double %14, !dbg !4489
}

; Function Attrs: nounwind uwtable(sync)
define float @fminimumf(float %x, float %y) #1 !dbg !4490 {
entry:
    #dbg_value(float %x, !4494, !DIExpression(), !4496)
    #dbg_value(float %y, !4495, !DIExpression(), !4496)
    #dbg_value(float %x, !4494, !DIExpression(), !4497)
    #dbg_value(float %y, !4495, !DIExpression(), !4498)
  %0 = call float @runtime.minimumFloat32(float %x, float %y, ptr undef), !dbg !4499
  ret float %0, !dbg !4500
}

; Function Attrs: nounwind uwtable(sync)
define internal float @runtime.minimumFloat32(float %x, float %y, ptr %context) unnamed_addr #1 !dbg !4501 {
entry:
    #dbg_value(float %x, !4503, !DIExpression(), !4505)
    #dbg_value(float %y, !4504, !DIExpression(), !4505)
    #dbg_value(float %x, !4503, !DIExpression(), !4506)
    #dbg_value(float %y, !4504, !DIExpression(), !4507)
  %0 = call float @"runtime.minimumFloat[float32 int32]"(float %x, float %y, i32 2139095041, i32 2147483647, ptr undef), !dbg !4508
  ret float %0, !dbg !4509
}

; Function Attrs: nounwind uwtable(sync)
define internal float @"runtime.minimumFloat[float32 int32]"(float %x, float %y, i32 %minPosNaN, i32 %magMask, ptr %context) unnamed_addr #1 !dbg !4510 {
entry:
    #dbg_value(float %x, !4514, !DIExpression(), !4520)
    #dbg_value(float %y, !4515, !DIExpression(), !4520)
    #dbg_value(i32 %minPosNaN, !4516, !DIExpression(), !4520)
    #dbg_value(i32 %magMask, !4517, !DIExpression(), !4520)
  %x6 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4521
  store float %x, ptr %x6, align 4, !dbg !4521
  %y7 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4522
  store float %y, ptr %y7, align 4, !dbg !4522
  %0 = load i32, ptr %x6, align 4, !dbg !4523
    #dbg_value(i32 %0, !4518, !DIExpression(), !4524)
  %1 = load i32, ptr %y7, align 4, !dbg !4525
    #dbg_value(i32 %1, !4519, !DIExpression(), !4526)
    #dbg_value(i32 %0, !4518, !DIExpression(), !4527)
    #dbg_value(i32 %minPosNaN, !4516, !DIExpression(), !4528)
  %2 = icmp sge i32 %0, %minPosNaN, !dbg !4529
  br i1 %2, label %switch.body, label %switch.next, !dbg !4530

switch.body:                                      ; preds = %entry
  %3 = load float, ptr %x6, align 4, !dbg !4531
    #dbg_value(float %3, !4514, !DIExpression(), !4531)
  ret float %3, !dbg !4532

switch.next:                                      ; preds = %entry
    #dbg_value(i32 %1, !4519, !DIExpression(), !4533)
    #dbg_value(i32 %minPosNaN, !4516, !DIExpression(), !4534)
  %4 = icmp sge i32 %1, %minPosNaN, !dbg !4535
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4530

switch.body1:                                     ; preds = %switch.next
  %5 = load float, ptr %y7, align 4, !dbg !4536
    #dbg_value(float %5, !4515, !DIExpression(), !4536)
  ret float %5, !dbg !4537

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i32 %0, !4518, !DIExpression(), !4538)
  %6 = icmp slt i32 %0, 0, !dbg !4539
  br i1 %6, label %if.then, label %if.done, !dbg !4530

if.then:                                          ; preds = %switch.next2
    #dbg_value(i32 %magMask, !4517, !DIExpression(), !4540)
  %7 = xor i32 %0, %magMask, !dbg !4541
    #dbg_value(i32 %7, !4518, !DIExpression(), !4541)
  br label %if.done, !dbg !4530

if.done:                                          ; preds = %if.then, %switch.next2
  %8 = phi i32 [ %0, %switch.next2 ], [ %7, %if.then ], !dbg !4524
    #dbg_value(i32 %1, !4519, !DIExpression(), !4542)
  %9 = icmp slt i32 %1, 0, !dbg !4543
  br i1 %9, label %if.then3, label %if.done4, !dbg !4530

if.then3:                                         ; preds = %if.done
    #dbg_value(i32 %magMask, !4517, !DIExpression(), !4544)
  %10 = xor i32 %1, %magMask, !dbg !4545
    #dbg_value(i32 %10, !4519, !DIExpression(), !4545)
  br label %if.done4, !dbg !4530

if.done4:                                         ; preds = %if.then3, %if.done
  %11 = phi i32 [ %1, %if.done ], [ %10, %if.then3 ], !dbg !4526
    #dbg_value(i32 %8, !4518, !DIExpression(), !4546)
    #dbg_value(i32 %11, !4519, !DIExpression(), !4547)
  %12 = icmp sle i32 %8, %11, !dbg !4548
  br i1 %12, label %if.then5, label %if.else, !dbg !4530

if.then5:                                         ; preds = %if.done4
  %13 = load float, ptr %x6, align 4, !dbg !4549
    #dbg_value(float %13, !4514, !DIExpression(), !4549)
  ret float %13, !dbg !4550

if.else:                                          ; preds = %if.done4
  %14 = load float, ptr %y7, align 4, !dbg !4551
    #dbg_value(float %14, !4515, !DIExpression(), !4551)
  ret float %14, !dbg !4552
}

; Function Attrs: nounwind uwtable(sync)
define double @fmaximum(double %x, double %y) #1 !dbg !4553 {
entry:
    #dbg_value(double %x, !4555, !DIExpression(), !4557)
    #dbg_value(double %y, !4556, !DIExpression(), !4557)
    #dbg_value(double %x, !4555, !DIExpression(), !4558)
    #dbg_value(double %y, !4556, !DIExpression(), !4559)
  %0 = call double @runtime.maximumFloat64(double %x, double %y, ptr undef), !dbg !4560
  ret double %0, !dbg !4561
}

; Function Attrs: nounwind uwtable(sync)
define internal double @runtime.maximumFloat64(double %x, double %y, ptr %context) unnamed_addr #1 !dbg !4562 {
entry:
    #dbg_value(double %x, !4564, !DIExpression(), !4566)
    #dbg_value(double %y, !4565, !DIExpression(), !4566)
    #dbg_value(double %x, !4564, !DIExpression(), !4567)
    #dbg_value(double %y, !4565, !DIExpression(), !4568)
  %0 = call double @"runtime.maximumFloat[float64 int64]"(double %x, double %y, i64 9218868437227405313, i64 9223372036854775807, ptr undef), !dbg !4569
  ret double %0, !dbg !4570
}

; Function Attrs: nounwind uwtable(sync)
define internal double @"runtime.maximumFloat[float64 int64]"(double %x, double %y, i64 %minPosNaN, i64 %magMask, ptr %context) unnamed_addr #1 !dbg !4571 {
entry:
    #dbg_value(double %x, !4573, !DIExpression(), !4580)
    #dbg_value(double %y, !4574, !DIExpression(), !4580)
    #dbg_value(i64 %minPosNaN, !4575, !DIExpression(), !4580)
    #dbg_value(i64 %magMask, !4576, !DIExpression(), !4580)
  %x6 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4581
  store double %x, ptr %x6, align 8, !dbg !4581
  %y7 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4582
  store double %y, ptr %y7, align 8, !dbg !4582
  %0 = load i64, ptr %x6, align 8, !dbg !4583
    #dbg_value(i64 %0, !4577, !DIExpression(), !4584)
  %1 = load i64, ptr %y7, align 8, !dbg !4585
    #dbg_value(i64 %1, !4578, !DIExpression(), !4586)
    #dbg_value(i64 %0, !4577, !DIExpression(), !4587)
  %2 = icmp slt i64 %0, 0, !dbg !4588
  br i1 %2, label %if.then, label %if.done, !dbg !4589

if.then:                                          ; preds = %entry
    #dbg_value(i64 %magMask, !4576, !DIExpression(), !4590)
  %3 = xor i64 %0, %magMask, !dbg !4591
    #dbg_value(i64 %3, !4577, !DIExpression(), !4591)
  br label %if.done, !dbg !4589

if.done:                                          ; preds = %if.then, %entry
  %4 = phi i64 [ %0, %entry ], [ %3, %if.then ], !dbg !4584
    #dbg_value(i64 %1, !4578, !DIExpression(), !4592)
  %5 = icmp slt i64 %1, 0, !dbg !4593
  br i1 %5, label %if.then1, label %if.done2, !dbg !4589

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %magMask, !4576, !DIExpression(), !4594)
  %6 = xor i64 %1, %magMask, !dbg !4595
    #dbg_value(i64 %6, !4578, !DIExpression(), !4595)
  br label %if.done2, !dbg !4589

if.done2:                                         ; preds = %if.then1, %if.done
  %7 = phi i64 [ %1, %if.done ], [ %6, %if.then1 ], !dbg !4586
    #dbg_value(i64 %minPosNaN, !4575, !DIExpression(), !4596)
  %8 = xor i64 %minPosNaN, -1, !dbg !4597
    #dbg_value(i64 %8, !4579, !DIExpression(), !4598)
    #dbg_value(i64 %4, !4577, !DIExpression(), !4599)
    #dbg_value(i64 %8, !4579, !DIExpression(), !4600)
  %9 = icmp sle i64 %4, %8, !dbg !4601
  br i1 %9, label %switch.body, label %switch.next, !dbg !4589

switch.body:                                      ; preds = %if.done2
  %10 = load double, ptr %x6, align 8, !dbg !4602
    #dbg_value(double %10, !4573, !DIExpression(), !4602)
  ret double %10, !dbg !4603

switch.next:                                      ; preds = %if.done2
    #dbg_value(i64 %7, !4578, !DIExpression(), !4604)
    #dbg_value(i64 %8, !4579, !DIExpression(), !4605)
  %11 = icmp sle i64 %7, %8, !dbg !4606
  br i1 %11, label %switch.body3, label %switch.next4, !dbg !4589

switch.body3:                                     ; preds = %switch.next
  %12 = load double, ptr %y7, align 8, !dbg !4607
    #dbg_value(double %12, !4574, !DIExpression(), !4607)
  ret double %12, !dbg !4608

switch.next4:                                     ; preds = %switch.next
    #dbg_value(i64 %4, !4577, !DIExpression(), !4609)
    #dbg_value(i64 %7, !4578, !DIExpression(), !4610)
  %13 = icmp sge i64 %4, %7, !dbg !4611
  br i1 %13, label %if.then5, label %if.else, !dbg !4589

if.then5:                                         ; preds = %switch.next4
  %14 = load double, ptr %x6, align 8, !dbg !4612
    #dbg_value(double %14, !4573, !DIExpression(), !4612)
  ret double %14, !dbg !4613

if.else:                                          ; preds = %switch.next4
  %15 = load double, ptr %y7, align 8, !dbg !4614
    #dbg_value(double %15, !4574, !DIExpression(), !4614)
  ret double %15, !dbg !4615
}

; Function Attrs: nounwind uwtable(sync)
define float @fmaximumf(float %x, float %y) #1 !dbg !4616 {
entry:
    #dbg_value(float %x, !4618, !DIExpression(), !4620)
    #dbg_value(float %y, !4619, !DIExpression(), !4620)
    #dbg_value(float %x, !4618, !DIExpression(), !4621)
    #dbg_value(float %y, !4619, !DIExpression(), !4622)
  %0 = call float @runtime.maximumFloat32(float %x, float %y, ptr undef), !dbg !4623
  ret float %0, !dbg !4624
}

; Function Attrs: nounwind uwtable(sync)
define internal float @runtime.maximumFloat32(float %x, float %y, ptr %context) unnamed_addr #1 !dbg !4625 {
entry:
    #dbg_value(float %x, !4627, !DIExpression(), !4629)
    #dbg_value(float %y, !4628, !DIExpression(), !4629)
    #dbg_value(float %x, !4627, !DIExpression(), !4630)
    #dbg_value(float %y, !4628, !DIExpression(), !4631)
  %0 = call float @"runtime.maximumFloat[float32 int32]"(float %x, float %y, i32 2139095041, i32 2147483647, ptr undef), !dbg !4632
  ret float %0, !dbg !4633
}

; Function Attrs: nounwind uwtable(sync)
define internal float @"runtime.maximumFloat[float32 int32]"(float %x, float %y, i32 %minPosNaN, i32 %magMask, ptr %context) unnamed_addr #1 !dbg !4634 {
entry:
    #dbg_value(float %x, !4636, !DIExpression(), !4643)
    #dbg_value(float %y, !4637, !DIExpression(), !4643)
    #dbg_value(i32 %minPosNaN, !4638, !DIExpression(), !4643)
    #dbg_value(i32 %magMask, !4639, !DIExpression(), !4643)
  %x6 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4644
  store float %x, ptr %x6, align 4, !dbg !4644
  %y7 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4645
  store float %y, ptr %y7, align 4, !dbg !4645
  %0 = load i32, ptr %x6, align 4, !dbg !4646
    #dbg_value(i32 %0, !4640, !DIExpression(), !4647)
  %1 = load i32, ptr %y7, align 4, !dbg !4648
    #dbg_value(i32 %1, !4641, !DIExpression(), !4649)
    #dbg_value(i32 %0, !4640, !DIExpression(), !4650)
  %2 = icmp slt i32 %0, 0, !dbg !4651
  br i1 %2, label %if.then, label %if.done, !dbg !4652

if.then:                                          ; preds = %entry
    #dbg_value(i32 %magMask, !4639, !DIExpression(), !4653)
  %3 = xor i32 %0, %magMask, !dbg !4654
    #dbg_value(i32 %3, !4640, !DIExpression(), !4654)
  br label %if.done, !dbg !4652

if.done:                                          ; preds = %if.then, %entry
  %4 = phi i32 [ %0, %entry ], [ %3, %if.then ], !dbg !4647
    #dbg_value(i32 %1, !4641, !DIExpression(), !4655)
  %5 = icmp slt i32 %1, 0, !dbg !4656
  br i1 %5, label %if.then1, label %if.done2, !dbg !4652

if.then1:                                         ; preds = %if.done
    #dbg_value(i32 %magMask, !4639, !DIExpression(), !4657)
  %6 = xor i32 %1, %magMask, !dbg !4658
    #dbg_value(i32 %6, !4641, !DIExpression(), !4658)
  br label %if.done2, !dbg !4652

if.done2:                                         ; preds = %if.then1, %if.done
  %7 = phi i32 [ %1, %if.done ], [ %6, %if.then1 ], !dbg !4649
    #dbg_value(i32 %minPosNaN, !4638, !DIExpression(), !4659)
  %8 = xor i32 %minPosNaN, -1, !dbg !4660
    #dbg_value(i32 %8, !4642, !DIExpression(), !4661)
    #dbg_value(i32 %4, !4640, !DIExpression(), !4662)
    #dbg_value(i32 %8, !4642, !DIExpression(), !4663)
  %9 = icmp sle i32 %4, %8, !dbg !4664
  br i1 %9, label %switch.body, label %switch.next, !dbg !4652

switch.body:                                      ; preds = %if.done2
  %10 = load float, ptr %x6, align 4, !dbg !4665
    #dbg_value(float %10, !4636, !DIExpression(), !4665)
  ret float %10, !dbg !4666

switch.next:                                      ; preds = %if.done2
    #dbg_value(i32 %7, !4641, !DIExpression(), !4667)
    #dbg_value(i32 %8, !4642, !DIExpression(), !4668)
  %11 = icmp sle i32 %7, %8, !dbg !4669
  br i1 %11, label %switch.body3, label %switch.next4, !dbg !4652

switch.body3:                                     ; preds = %switch.next
  %12 = load float, ptr %y7, align 4, !dbg !4670
    #dbg_value(float %12, !4637, !DIExpression(), !4670)
  ret float %12, !dbg !4671

switch.next4:                                     ; preds = %switch.next
    #dbg_value(i32 %4, !4640, !DIExpression(), !4672)
    #dbg_value(i32 %7, !4641, !DIExpression(), !4673)
  %13 = icmp sge i32 %4, %7, !dbg !4674
  br i1 %13, label %if.then5, label %if.else, !dbg !4652

if.then5:                                         ; preds = %switch.next4
  %14 = load float, ptr %x6, align 4, !dbg !4675
    #dbg_value(float %14, !4636, !DIExpression(), !4675)
  ret float %14, !dbg !4676

if.else:                                          ; preds = %switch.next4
  %15 = load float, ptr %y7, align 4, !dbg !4677
    #dbg_value(float %15, !4637, !DIExpression(), !4677)
  ret float %15, !dbg !4678
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.initHeap(ptr %context) unnamed_addr #1 !dbg !4679 {
entry:
  call void @GC_init(), !dbg !4680
  call void @tinygo_runtime_bdwgc_init(), !dbg !4681
  ret void, !dbg !4682
}

declare void @GC_init() #2

declare void @tinygo_runtime_bdwgc_init() #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_runtime_bdwgc_callback() #1 !dbg !4683 {
entry:
  call void @runtime.gcMarkReachable(ptr undef), !dbg !4684
  ret void, !dbg !4685
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.gcMarkReachable(ptr %context) unnamed_addr #1 !dbg !4686 {
entry:
  call void @"internal/task.GCStopWorldAndScan"(ptr undef), !dbg !4687
  ret void, !dbg !4688
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.markRoots(i64 %start, i64 %end, ptr %context) #1 !dbg !4689 {
entry:
    #dbg_value(i64 %start, !4693, !DIExpression(), !4695)
    #dbg_value(i64 %end, !4694, !DIExpression(), !4695)
    #dbg_value(i64 %start, !4693, !DIExpression(), !4696)
    #dbg_value(i64 %end, !4694, !DIExpression(), !4697)
  call void @GC_push_all(i64 %start, i64 %end), !dbg !4698
  ret void, !dbg !4699
}

declare void @GC_push_all(i64, i64) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.free(ptr %ptr, ptr %context) unnamed_addr #1 !dbg !4700 {
entry:
    #dbg_value(ptr %ptr, !4702, !DIExpression(), !4703)
    #dbg_value(ptr %ptr, !4702, !DIExpression(), !4704)
  call void @GC_free(ptr %ptr), !dbg !4705
  ret void, !dbg !4706
}

declare void @GC_free(ptr nocapture) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.gcScanGlobals"(ptr %context) #1 !dbg !4707 {
entry:
  call void @runtime.findGlobals(ptr undef, ptr @runtime.markRoots, ptr undef), !dbg !4708
  ret void, !dbg !4709
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.findGlobals(ptr %found.context, ptr %found.funcptr, ptr %context) unnamed_addr #1 !dbg !4710 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %found.context, 0, !dbg !4741
  %1 = insertvalue { ptr, ptr } %0, ptr %found.funcptr, 1, !dbg !4741
    #dbg_value(ptr %found.context, !4714, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4741)
    #dbg_value(ptr %found.funcptr, !4714, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4741)
  %2 = load i64, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 11), align 8, !dbg !4742
  %3 = add i64 ptrtoint (ptr @__ehdr_start to i64), %2, !dbg !4743
  %4 = inttoptr i64 %3 to ptr, !dbg !4744
    #dbg_value(ptr %4, !4715, !DIExpression(), !4745)
    #dbg_value(i64 0, !4716, !DIExpression(), !4746)
  br label %for.loop, !dbg !4747

for.loop:                                         ; preds = %if.done, %entry
  %5 = phi ptr [ %4, %entry ], [ %30, %if.done ], !dbg !4745
  %6 = phi i64 [ 0, %entry ], [ %31, %if.done ], !dbg !4746
    #dbg_value(i64 %6, !4716, !DIExpression(), !4748)
  %7 = load i16, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 16), align 2, !dbg !4749
  %8 = zext i16 %7 to i64, !dbg !4750
  %9 = icmp slt i64 %6, %8, !dbg !4751
  br i1 %9, label %for.body, label %for.done, !dbg !4747

for.body:                                         ; preds = %for.loop
  br i1 true, label %if.then, label %if.else, !dbg !4747

if.then:                                          ; preds = %for.body
    #dbg_value(ptr %5, !4715, !DIExpression(), !4752)
    #dbg_value(ptr %5, !4717, !DIExpression(), !4753)
    #dbg_value(ptr %5, !4717, !DIExpression(), !4754)
  %10 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 0, !dbg !4755
  %11 = icmp eq ptr %10, null, !dbg !4755
  br i1 %11, label %deref.throw, label %deref.next, !dbg !4755

deref.next:                                       ; preds = %if.then
  %12 = load i32, ptr %10, align 4, !dbg !4755
  %13 = icmp eq i32 %12, 1, !dbg !4756
  br i1 %13, label %cond.true, label %if.done, !dbg !4747

cond.true:                                        ; preds = %deref.next
    #dbg_value(ptr %5, !4717, !DIExpression(), !4757)
  %14 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 1, !dbg !4758
  %15 = icmp eq ptr %14, null, !dbg !4758
  br i1 %15, label %deref.throw4, label %deref.next5, !dbg !4758

deref.next5:                                      ; preds = %cond.true
  %16 = load i32, ptr %14, align 4, !dbg !4758
  %17 = and i32 %16, 2, !dbg !4759
  %18 = icmp ne i32 %17, 0, !dbg !4760
  br i1 %18, label %if.then1, label %if.done, !dbg !4747

if.then1:                                         ; preds = %deref.next5
    #dbg_value(ptr %5, !4717, !DIExpression(), !4761)
  %19 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 3, !dbg !4762
  %20 = icmp eq ptr %19, null, !dbg !4762
  br i1 %20, label %deref.throw6, label %deref.next7, !dbg !4762

deref.next7:                                      ; preds = %if.then1
  %21 = load i64, ptr %19, align 8, !dbg !4762
    #dbg_value(i64 %21, !4730, !DIExpression(), !4763)
    #dbg_value(i64 %21, !4730, !DIExpression(), !4764)
    #dbg_value(ptr %5, !4717, !DIExpression(), !4765)
  %22 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 6, !dbg !4766
  %23 = icmp eq ptr %22, null, !dbg !4766
  br i1 %23, label %deref.throw8, label %deref.next9, !dbg !4766

deref.next9:                                      ; preds = %deref.next7
  %24 = load i64, ptr %22, align 8, !dbg !4766
  %25 = add i64 %21, %24, !dbg !4767
    #dbg_value(i64 %25, !4731, !DIExpression(), !4768)
    #dbg_value({ ptr, ptr } %1, !4714, !DIExpression(), !4769)
    #dbg_value(i64 %21, !4730, !DIExpression(), !4770)
    #dbg_value(i64 %25, !4731, !DIExpression(), !4771)
  %26 = extractvalue { ptr, ptr } %1, 0, !dbg !4772
  %27 = extractvalue { ptr, ptr } %1, 1, !dbg !4772
  %28 = icmp eq ptr %27, null, !dbg !4772
  br i1 %28, label %fpcall.throw, label %fpcall.next, !dbg !4772

fpcall.next:                                      ; preds = %deref.next9
  call void %27(i64 %21, i64 %25, ptr %26), !dbg !4772
  br label %if.done, !dbg !4747

if.done:                                          ; preds = %fpcall.next19, %deref.next13, %deref.next11, %fpcall.next, %deref.next5, %deref.next
    #dbg_value(ptr %5, !4715, !DIExpression(), !4773)
  %29 = load i16, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 15), align 2, !dbg !4774
  %30 = getelementptr i8, ptr %5, i16 %29, !dbg !4775
    #dbg_value(ptr %30, !4715, !DIExpression(), !4776)
  %31 = add i64 %6, 1, !dbg !4777
    #dbg_value(i64 %31, !4716, !DIExpression(), !4777)
  br label %for.loop, !dbg !4747

if.else:                                          ; preds = %for.body
    #dbg_value(ptr %5, !4715, !DIExpression(), !4778)
    #dbg_value(ptr %5, !4732, !DIExpression(), !4779)
    #dbg_value(ptr %5, !4732, !DIExpression(), !4780)
  %32 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 0, !dbg !4781
  %33 = icmp eq ptr %32, null, !dbg !4781
  br i1 %33, label %deref.throw10, label %deref.next11, !dbg !4781

deref.next11:                                     ; preds = %if.else
  %34 = load i32, ptr %32, align 4, !dbg !4781
  %35 = icmp eq i32 %34, 1, !dbg !4782
  br i1 %35, label %cond.true2, label %if.done, !dbg !4747

cond.true2:                                       ; preds = %deref.next11
    #dbg_value(ptr %5, !4732, !DIExpression(), !4783)
  %36 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 6, !dbg !4784
  %37 = icmp eq ptr %36, null, !dbg !4784
  br i1 %37, label %deref.throw12, label %deref.next13, !dbg !4784

deref.next13:                                     ; preds = %cond.true2
  %38 = load i32, ptr %36, align 4, !dbg !4784
  %39 = and i32 %38, 2, !dbg !4785
  %40 = icmp ne i32 %39, 0, !dbg !4786
  br i1 %40, label %if.then3, label %if.done, !dbg !4747

if.then3:                                         ; preds = %deref.next13
    #dbg_value(ptr %5, !4732, !DIExpression(), !4787)
  %41 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 2, !dbg !4788
  %42 = icmp eq ptr %41, null, !dbg !4788
  br i1 %42, label %deref.throw14, label %deref.next15, !dbg !4788

deref.next15:                                     ; preds = %if.then3
  %43 = load i64, ptr %41, align 8, !dbg !4788
    #dbg_value(i64 %43, !4739, !DIExpression(), !4789)
    #dbg_value(i64 %43, !4739, !DIExpression(), !4790)
    #dbg_value(ptr %5, !4732, !DIExpression(), !4791)
  %44 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 5, !dbg !4792
  %45 = icmp eq ptr %44, null, !dbg !4792
  br i1 %45, label %deref.throw16, label %deref.next17, !dbg !4792

deref.next17:                                     ; preds = %deref.next15
  %46 = load i64, ptr %44, align 8, !dbg !4792
  %47 = add i64 %43, %46, !dbg !4793
    #dbg_value(i64 %47, !4740, !DIExpression(), !4794)
    #dbg_value({ ptr, ptr } %1, !4714, !DIExpression(), !4795)
    #dbg_value(i64 %43, !4739, !DIExpression(), !4796)
    #dbg_value(i64 %47, !4740, !DIExpression(), !4797)
  %48 = extractvalue { ptr, ptr } %1, 0, !dbg !4798
  %49 = extractvalue { ptr, ptr } %1, 1, !dbg !4798
  %50 = icmp eq ptr %49, null, !dbg !4798
  br i1 %50, label %fpcall.throw18, label %fpcall.next19, !dbg !4798

fpcall.next19:                                    ; preds = %deref.next17
  call void %49(i64 %43, i64 %47, ptr %48), !dbg !4798
  br label %if.done, !dbg !4747

for.done:                                         ; preds = %for.loop
  ret void, !dbg !4799

deref.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !4755
  unreachable, !dbg !4755

deref.throw4:                                     ; preds = %cond.true
  call void @runtime.nilPanic(ptr undef), !dbg !4758
  unreachable, !dbg !4758

deref.throw6:                                     ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !4762
  unreachable, !dbg !4762

deref.throw8:                                     ; preds = %deref.next7
  call void @runtime.nilPanic(ptr undef), !dbg !4766
  unreachable, !dbg !4766

fpcall.throw:                                     ; preds = %deref.next9
  call void @runtime.nilPanic(ptr undef), !dbg !4772
  unreachable, !dbg !4772

deref.throw10:                                    ; preds = %if.else
  call void @runtime.nilPanic(ptr undef), !dbg !4781
  unreachable, !dbg !4781

deref.throw12:                                    ; preds = %cond.true2
  call void @runtime.nilPanic(ptr undef), !dbg !4784
  unreachable, !dbg !4784

deref.throw14:                                    ; preds = %if.then3
  call void @runtime.nilPanic(ptr undef), !dbg !4788
  unreachable, !dbg !4788

deref.throw16:                                    ; preds = %deref.next15
  call void @runtime.nilPanic(ptr undef), !dbg !4792
  unreachable, !dbg !4792

fpcall.throw18:                                   ; preds = %deref.next17
  call void @runtime.nilPanic(ptr undef), !dbg !4798
  unreachable, !dbg !4798
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_scanstack(i64 %sp) #1 !dbg !4800 {
entry:
    #dbg_value(i64 %sp, !4802, !DIExpression(), !4803)
    #dbg_value(i64 %sp, !4802, !DIExpression(), !4804)
  %0 = call i64 @"internal/task.StackTop"(ptr undef), !dbg !4805
  call void @runtime.markRoots(i64 %sp, i64 %0, ptr undef), !dbg !4806
  ret void, !dbg !4807
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.unsafeSlicePanic(ptr %context) #1 !dbg !4808 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4809
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.22", i64 37, ptr undef), !dbg !4810
  ret void, !dbg !4811
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.negativeShiftPanic(ptr %context) #1 !dbg !4812 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4813
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.24", i64 14, ptr undef), !dbg !4814
  ret void, !dbg !4815
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printspace(ptr %context) #1 !dbg !4816 {
entry:
  call void @runtime.putchar(i8 32, ptr undef), !dbg !4817
  ret void, !dbg !4818
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memmove(ptr %dst, ptr %src, i64 %size, ptr %context) #1 !dbg !4819 {
entry:
    #dbg_value(ptr %dst, !4821, !DIExpression(), !4824)
    #dbg_value(ptr %src, !4822, !DIExpression(), !4824)
    #dbg_value(i64 %size, !4823, !DIExpression(), !4824)
  call void @llvm.memmove.p0.p0.i64(ptr %dst, ptr %src, i64 %size, i1 false), !dbg !4824
  ret void, !dbg !4824
}

; Function Attrs: nounwind uwtable(sync)
define i64 @main(i32 %argc, ptr nocapture dereferenceable_or_null(8) %argv) #1 !dbg !4825 {
entry:
    #dbg_value(i32 %argc, !4829, !DIExpression(), !4834)
    #dbg_value(ptr %argv, !4830, !DIExpression(), !4834)
  br i1 false, label %if.then, label %if.done, !dbg !4835

if.then:                                          ; preds = %entry
  call void @runtime.allocateHeap(ptr undef), !dbg !4836
  br label %if.done, !dbg !4835

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(i32 %argc, !4829, !DIExpression(), !4837)
  store i32 %argc, ptr @runtime.main_argc, align 4, !dbg !4838
    #dbg_value(i32 %argc, !4831, !DIExpression(), !4838)
    #dbg_value(ptr %argv, !4830, !DIExpression(), !4839)
  store ptr %argv, ptr @runtime.main_argv, align 8, !dbg !4840
    #dbg_value(ptr %argv, !4832, !DIExpression(), !4840)
  call void @tinygo_register_fatal_signals(), !dbg !4841
  %0 = call i64 @runtime.getCurrentStackPointer(ptr undef), !dbg !4842
  store i64 %0, ptr @runtime.stackTop, align 8, !dbg !4843
    #dbg_value(i64 %0, !4833, !DIExpression(), !4843)
  call void @runtime.runMain(ptr undef), !dbg !4844
  ret i64 0, !dbg !4845
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.allocateHeap(ptr %context) unnamed_addr #1 !dbg !4846 {
entry:
  store i64 1073741824, ptr @runtime.heapMaxSize, align 8, !dbg !4853
    #dbg_value(i64 1073741824, !4848, !DIExpression(), !4853)
  br label %for.body, !dbg !4854

for.body:                                         ; preds = %if.then1, %if.then, %entry
  %0 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4855
    #dbg_value(i64 %0, !4848, !DIExpression(), !4855)
  %1 = call ptr @mmap(ptr null, i64 %0, i64 3, i64 34, i64 -1, i64 0), !dbg !4856
    #dbg_value(ptr %1, !4849, !DIExpression(), !4857)
    #dbg_value(ptr %1, !4849, !DIExpression(), !4858)
  %2 = icmp eq ptr %1, inttoptr (i64 -1 to ptr), !dbg !4859
  br i1 %2, label %if.then, label %if.done, !dbg !4854

if.then:                                          ; preds = %for.body
  %3 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4860
  %4 = udiv i64 %3, 2, !dbg !4860
  store i64 %4, ptr @runtime.heapMaxSize, align 8, !dbg !4860
    #dbg_value(i64 %4, !4848, !DIExpression(), !4860)
  %5 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4861
    #dbg_value(i64 %5, !4848, !DIExpression(), !4861)
  %6 = icmp ult i64 %5, 4096, !dbg !4862
  br i1 %6, label %if.then1, label %for.body, !dbg !4854

if.then1:                                         ; preds = %if.then
  call void @runtime.runtimePanic(ptr @"runtime$string.56", i64 27, ptr undef), !dbg !4863
  br label %for.body, !dbg !4854

if.done:                                          ; preds = %for.body
    #dbg_value(ptr %1, !4849, !DIExpression(), !4864)
  %7 = ptrtoint ptr %1 to i64, !dbg !4865
  store i64 %7, ptr @runtime.heapStart, align 8, !dbg !4866
    #dbg_value(i64 %7, !4850, !DIExpression(), !4866)
  %8 = load i64, ptr @runtime.heapStart, align 8, !dbg !4867
    #dbg_value(i64 %8, !4850, !DIExpression(), !4867)
  %9 = load i64, ptr @runtime.heapSize, align 8, !dbg !4868
    #dbg_value(i64 %9, !4851, !DIExpression(), !4868)
  %10 = add i64 %8, %9, !dbg !4869
  store i64 %10, ptr @runtime.heapEnd, align 8, !dbg !4870
    #dbg_value(i64 %10, !4852, !DIExpression(), !4870)
  ret void, !dbg !4871
}

declare void @tinygo_register_fatal_signals() #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @runtime.runMain(ptr %context) unnamed_addr #15 !dbg !4872 {
entry:
  call void @runtime.run(ptr undef), !dbg !4873
  ret void, !dbg !4874
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.run(ptr %context) unnamed_addr #1 !dbg !4875 {
entry:
  call void @runtime.initRand(ptr undef), !dbg !4878
  call void @runtime.initHeap(ptr undef), !dbg !4879
  %0 = load i64, ptr @runtime.stackTop, align 8, !dbg !4880
    #dbg_value(i64 %0, !4877, !DIExpression(), !4880)
  call void @"internal/task.Init"(i64 %0, ptr undef), !dbg !4881
  call void @runtime.initAll(ptr undef), !dbg !4882
  call void @main.main(ptr undef), !dbg !4883
  ret void, !dbg !4884
}

define internal void @runtime.initAll(ptr %context) unnamed_addr #2 {
entry:
  ret void
}

declare void @main.main(ptr) #2

declare ptr @mmap(ptr nocapture, i64, i64, i64, i64, i64) #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_handle_fatal_signal(i32 %sig, i64 %addr) #1 !dbg !4885 {
entry:
    #dbg_value(i32 %sig, !4889, !DIExpression(), !4891)
    #dbg_value(i64 %addr, !4890, !DIExpression(), !4891)
  br i1 false, label %if.then, label %if.done, !dbg !4892

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !4893
  br label %if.done, !dbg !4892

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(i64 %addr, !4890, !DIExpression(), !4894)
  %0 = icmp ne i64 %addr, 0, !dbg !4895
  br i1 %0, label %if.then1, label %if.else, !dbg !4892

if.then1:                                         ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.50", i64 24, ptr undef), !dbg !4896
    #dbg_value(i64 %addr, !4890, !DIExpression(), !4897)
  call void @runtime.printptr(i64 %addr, ptr undef), !dbg !4898
  br label %if.done2, !dbg !4892

if.done2:                                         ; preds = %if.else, %if.then1
  call void @runtime.printstring(ptr @"runtime$string.51", i64 16, ptr undef), !dbg !4899
    #dbg_value(i32 %sig, !4889, !DIExpression(), !4900)
  %1 = icmp eq i32 %sig, 7, !dbg !4901
  br i1 %1, label %switch.body, label %switch.next, !dbg !4892

switch.body:                                      ; preds = %if.done2
  call void @runtime.printlock(ptr undef), !dbg !4902
  call void @runtime.printstring(ptr @"runtime$string.52", i64 6, ptr undef), !dbg !4902
  call void @runtime.printnl(ptr undef), !dbg !4902
  call void @runtime.printunlock(ptr undef), !dbg !4902
  br label %switch.done, !dbg !4892

switch.done:                                      ; preds = %switch.next6, %switch.body5, %switch.body3, %switch.body
    #dbg_value(i32 %sig, !4889, !DIExpression(), !4903)
  call void @raise(i32 %sig), !dbg !4904
  ret void, !dbg !4905

switch.next:                                      ; preds = %if.done2
  %2 = icmp eq i32 %sig, 4, !dbg !4906
  br i1 %2, label %switch.body3, label %switch.next4, !dbg !4892

switch.body3:                                     ; preds = %switch.next
  call void @runtime.printlock(ptr undef), !dbg !4907
  call void @runtime.printstring(ptr @"runtime$string.53", i64 6, ptr undef), !dbg !4907
  call void @runtime.printnl(ptr undef), !dbg !4907
  call void @runtime.printunlock(ptr undef), !dbg !4907
  br label %switch.done, !dbg !4892

switch.next4:                                     ; preds = %switch.next
  %3 = icmp eq i32 %sig, 11, !dbg !4908
  br i1 %3, label %switch.body5, label %switch.next6, !dbg !4892

switch.body5:                                     ; preds = %switch.next4
  call void @runtime.printlock(ptr undef), !dbg !4909
  call void @runtime.printstring(ptr @"runtime$string.54", i64 7, ptr undef), !dbg !4909
  call void @runtime.printnl(ptr undef), !dbg !4909
  call void @runtime.printunlock(ptr undef), !dbg !4909
  br label %switch.done, !dbg !4892

switch.next6:                                     ; preds = %switch.next4
    #dbg_value(i32 %sig, !4889, !DIExpression(), !4910)
  call void @runtime.printlock(ptr undef), !dbg !4911
  call void @runtime.printint32(i32 %sig, ptr undef), !dbg !4911
  call void @runtime.printnl(ptr undef), !dbg !4911
  call void @runtime.printunlock(ptr undef), !dbg !4911
  br label %switch.done, !dbg !4892

if.else:                                          ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.55", i64 20, ptr undef), !dbg !4912
  br label %if.done2, !dbg !4892
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printlock(ptr %context) #1 !dbg !4913 {
entry:
  call void @"(*internal/task.Mutex).Lock"(ptr @runtime.printLock, ptr undef), !dbg !4914
  ret void, !dbg !4915
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printunlock(ptr %context) #1 !dbg !4916 {
entry:
  call void @"(*internal/task.Mutex).Unlock"(ptr @runtime.printLock, ptr undef), !dbg !4917
  ret void, !dbg !4918
}

declare void @raise(i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @runtime.sliceAppend(ptr %srcBuf, ptr nocapture readonly %elemsBuf, i64 %srcLen, i64 %srcCap, i64 %elemsLen, i64 %elemSize, ptr %layout, ptr %context) #1 !dbg !4919 {
entry:
    #dbg_value(ptr %srcBuf, !4924, !DIExpression(), !4932)
    #dbg_value(ptr %elemsBuf, !4925, !DIExpression(), !4932)
    #dbg_value(i64 %srcLen, !4926, !DIExpression(), !4932)
    #dbg_value(i64 %srcCap, !4927, !DIExpression(), !4932)
    #dbg_value(i64 %elemsLen, !4928, !DIExpression(), !4932)
    #dbg_value(i64 %elemSize, !4929, !DIExpression(), !4932)
    #dbg_value(ptr %layout, !4930, !DIExpression(), !4932)
    #dbg_value(i64 %srcLen, !4926, !DIExpression(), !4933)
    #dbg_value(i64 %elemsLen, !4928, !DIExpression(), !4934)
  %0 = add i64 %srcLen, %elemsLen, !dbg !4935
    #dbg_value(i64 %0, !4931, !DIExpression(), !4936)
    #dbg_value(i64 %elemsLen, !4928, !DIExpression(), !4937)
  %1 = icmp ugt i64 %elemsLen, 0, !dbg !4938
  br i1 %1, label %if.then, label %if.done, !dbg !4939

if.then:                                          ; preds = %entry
    #dbg_value(ptr %srcBuf, !4924, !DIExpression(), !4940)
    #dbg_value(i64 %srcLen, !4926, !DIExpression(), !4941)
    #dbg_value(i64 %srcCap, !4927, !DIExpression(), !4942)
    #dbg_value(i64 %0, !4931, !DIExpression(), !4943)
    #dbg_value(i64 %elemSize, !4929, !DIExpression(), !4944)
    #dbg_value(ptr %layout, !4930, !DIExpression(), !4945)
  %2 = call { ptr, i64, i64 } @runtime.sliceGrow(ptr %srcBuf, i64 %srcLen, i64 %srcCap, i64 %0, i64 %elemSize, ptr %layout, ptr undef), !dbg !4946
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4946
    #dbg_value(ptr %3, !4924, !DIExpression(), !4947)
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4946
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4946
    #dbg_value(i64 %5, !4927, !DIExpression(), !4948)
    #dbg_value(ptr %3, !4924, !DIExpression(), !4949)
    #dbg_value(i64 %srcLen, !4926, !DIExpression(), !4950)
    #dbg_value(i64 %elemSize, !4929, !DIExpression(), !4951)
  %6 = mul i64 %srcLen, %elemSize, !dbg !4952
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !4953
    #dbg_value(ptr %elemsBuf, !4925, !DIExpression(), !4954)
    #dbg_value(i64 %elemsLen, !4928, !DIExpression(), !4955)
    #dbg_value(i64 %elemSize, !4929, !DIExpression(), !4956)
  %8 = mul i64 %elemsLen, %elemSize, !dbg !4957
  call void @runtime.memmove(ptr %7, ptr %elemsBuf, i64 %8, ptr undef), !dbg !4958
  br label %if.done, !dbg !4939

if.done:                                          ; preds = %if.then, %entry
  %9 = phi ptr [ %srcBuf, %entry ], [ %3, %if.then ], !dbg !4959
  %10 = phi i64 [ %srcCap, %entry ], [ %5, %if.then ], !dbg !4960
    #dbg_value(ptr %9, !4924, !DIExpression(), !4961)
    #dbg_value(i64 %0, !4931, !DIExpression(), !4962)
    #dbg_value(i64 %10, !4927, !DIExpression(), !4963)
  %11 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %9, 0, !dbg !4964
  %12 = insertvalue { ptr, i64, i64 } %11, i64 %0, 1, !dbg !4964
  %13 = insertvalue { ptr, i64, i64 } %12, i64 %10, 2, !dbg !4964
  ret { ptr, i64, i64 } %13, !dbg !4964
}

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @runtime.sliceGrow(ptr %oldBuf, i64 %oldLen, i64 %oldCap, i64 %newCap, i64 %elemSize, ptr %layout, ptr %context) #1 !dbg !4965 {
entry:
    #dbg_value(ptr %oldBuf, !4969, !DIExpression(), !4976)
    #dbg_value(i64 %oldLen, !4970, !DIExpression(), !4976)
    #dbg_value(i64 %oldCap, !4971, !DIExpression(), !4976)
    #dbg_value(i64 %newCap, !4972, !DIExpression(), !4976)
    #dbg_value(i64 %elemSize, !4973, !DIExpression(), !4976)
    #dbg_value(ptr %layout, !4974, !DIExpression(), !4976)
    #dbg_value(i64 %oldCap, !4971, !DIExpression(), !4977)
    #dbg_value(i64 %newCap, !4972, !DIExpression(), !4978)
  %0 = icmp uge i64 %oldCap, %newCap, !dbg !4979
  br i1 %0, label %if.then, label %if.done, !dbg !4980

if.then:                                          ; preds = %entry
    #dbg_value(ptr %oldBuf, !4969, !DIExpression(), !4981)
    #dbg_value(i64 %oldLen, !4970, !DIExpression(), !4982)
    #dbg_value(i64 %oldCap, !4971, !DIExpression(), !4983)
  %1 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %oldBuf, 0, !dbg !4984
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %oldLen, 1, !dbg !4984
  %3 = insertvalue { ptr, i64, i64 } %2, i64 %oldCap, 2, !dbg !4984
  ret { ptr, i64, i64 } %3, !dbg !4984

if.done:                                          ; preds = %entry
    #dbg_value(i64 %newCap, !4972, !DIExpression(), !4985)
  %4 = call i64 @"math/bits.Len"(i64 %newCap, ptr undef), !dbg !4986
  %5 = icmp slt i64 %4, 0, !dbg !4987
  br i1 %5, label %shift.throw, label %shift.next, !dbg !4987

shift.next:                                       ; preds = %if.done
  %shift.overflow = icmp uge i64 %4, 64, !dbg !4987
  %6 = shl i64 1, %4, !dbg !4987
  %shift.result = select i1 %shift.overflow, i64 0, i64 %6, !dbg !4987
    #dbg_value(i64 %shift.result, !4972, !DIExpression(), !4988)
    #dbg_value(i64 %shift.result, !4972, !DIExpression(), !4989)
    #dbg_value(i64 %elemSize, !4973, !DIExpression(), !4990)
  %7 = mul i64 %shift.result, %elemSize, !dbg !4991
    #dbg_value(ptr %layout, !4974, !DIExpression(), !4992)
  %8 = call ptr @runtime.alloc(i64 %7, ptr %layout, ptr undef), !dbg !4993
    #dbg_value(ptr %8, !4975, !DIExpression(), !4994)
    #dbg_value(i64 %oldLen, !4970, !DIExpression(), !4995)
  %9 = icmp ugt i64 %oldLen, 0, !dbg !4996
  br i1 %9, label %if.then1, label %if.done2, !dbg !4980

if.then1:                                         ; preds = %shift.next
    #dbg_value(ptr %8, !4975, !DIExpression(), !4997)
    #dbg_value(ptr %oldBuf, !4969, !DIExpression(), !4998)
    #dbg_value(i64 %oldLen, !4970, !DIExpression(), !4999)
    #dbg_value(i64 %elemSize, !4973, !DIExpression(), !5000)
  %10 = mul i64 %oldLen, %elemSize, !dbg !5001
  call void @runtime.memmove(ptr %8, ptr %oldBuf, i64 %10, ptr undef), !dbg !5002
  br label %if.done2, !dbg !4980

if.done2:                                         ; preds = %if.then1, %shift.next
    #dbg_value(ptr %8, !4975, !DIExpression(), !5003)
    #dbg_value(i64 %oldLen, !4970, !DIExpression(), !5004)
    #dbg_value(i64 %shift.result, !4972, !DIExpression(), !5005)
  %11 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %8, 0, !dbg !5006
  %12 = insertvalue { ptr, i64, i64 } %11, i64 %oldLen, 1, !dbg !5006
  %13 = insertvalue { ptr, i64, i64 } %12, i64 %shift.result, 2, !dbg !5006
  ret { ptr, i64, i64 } %13, !dbg !5006

shift.throw:                                      ; preds = %if.done
  call void @runtime.negativeShiftPanic(ptr undef), !dbg !4987
  unreachable, !dbg !4987
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_signal_handler(i32 %s) #1 !dbg !5007 {
entry:
    #dbg_value(i32 %s, !5009, !DIExpression(), !5013)
  br label %for.body, !dbg !5014

for.body:                                         ; preds = %for.body, %entry
    #dbg_value(i32 %s, !5009, !DIExpression(), !5015)
  %shift.overflow = icmp uge i32 %s, 32, !dbg !5016
  %0 = shl i32 1, %s, !dbg !5016
  %shift.result = select i1 %shift.overflow, i32 0, i32 %0, !dbg !5016
    #dbg_value(i32 %shift.result, !5010, !DIExpression(), !5017)
  %1 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @runtime.receivedSignals, ptr undef), !dbg !5018
    #dbg_value(i32 %1, !5011, !DIExpression(), !5019)
    #dbg_value(i32 %1, !5011, !DIExpression(), !5020)
    #dbg_value(i32 %1, !5011, !DIExpression(), !5021)
    #dbg_value(i32 %shift.result, !5010, !DIExpression(), !5022)
  %2 = or i32 %1, %shift.result, !dbg !5023
  %3 = call i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr @runtime.receivedSignals, i32 %1, i32 %2, ptr undef), !dbg !5024
    #dbg_value(i1 %3, !5012, !DIExpression(), !5025)
    #dbg_value(i1 %3, !5012, !DIExpression(), !5026)
  br i1 %3, label %if.then, label %for.body, !dbg !5014

if.then:                                          ; preds = %for.body
  %4 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr @runtime.signalFutex, i32 1, ptr undef), !dbg !5027
  %5 = icmp eq i32 %4, 0, !dbg !5028
  br i1 %5, label %if.then1, label %if.done, !dbg !5014

if.then1:                                         ; preds = %if.then
  call void @"(*internal/futex.Futex).WakeAll"(ptr @runtime.signalFutex, ptr undef), !dbg !5029
  br label %if.done, !dbg !5014

if.done:                                          ; preds = %if.then1, %if.then
  ret void, !dbg !5030
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @runtime.stringConcat(ptr dereferenceable_or_null(1) %x.ptr, i64 %x.length, ptr dereferenceable_or_null(1) %y.ptr, i64 %y.length, ptr %context) #1 !dbg !5031 {
entry:
  %complit = alloca %runtime._string, align 8, !dbg !5043
  %y = alloca %runtime._string, align 8, !dbg !5043
  %x = alloca %runtime._string, align 8, !dbg !5043
  %0 = insertvalue %runtime._string zeroinitializer, ptr %x.ptr, 0, !dbg !5043
  %1 = insertvalue %runtime._string %0, i64 %x.length, 1, !dbg !5043
    #dbg_value(ptr %x.ptr, !5039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5043)
    #dbg_value(i64 %x.length, !5039, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5043)
  %2 = insertvalue %runtime._string zeroinitializer, ptr %y.ptr, 0, !dbg !5043
  %3 = insertvalue %runtime._string %2, i64 %y.length, 1, !dbg !5043
    #dbg_value(ptr %y.ptr, !5040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5043)
    #dbg_value(i64 %y.length, !5040, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5043)
  store %runtime._string zeroinitializer, ptr %x, align 8, !dbg !5043
  store %runtime._string %1, ptr %x, align 8, !dbg !5044
  store %runtime._string zeroinitializer, ptr %y, align 8, !dbg !5043
  store %runtime._string %3, ptr %y, align 8, !dbg !5045
  %4 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !5046
  %5 = icmp eq ptr %4, null, !dbg !5046
  br i1 %5, label %deref.throw, label %deref.next, !dbg !5046

deref.next:                                       ; preds = %entry
  %6 = load i64, ptr %4, align 8, !dbg !5046
  %7 = icmp eq i64 %6, 0, !dbg !5047
  br i1 %7, label %if.then, label %if.else, !dbg !5048

if.then:                                          ; preds = %deref.next
  %8 = load %runtime._string, ptr %y, align 8, !dbg !5049
    #dbg_value(%runtime._string %8, !5040, !DIExpression(), !5049)
  ret %runtime._string %8, !dbg !5050

if.else:                                          ; preds = %deref.next
  %9 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !5051
  %10 = icmp eq ptr %9, null, !dbg !5051
  br i1 %10, label %deref.throw3, label %deref.next4, !dbg !5051

deref.next4:                                      ; preds = %if.else
  %11 = load i64, ptr %9, align 8, !dbg !5051
  %12 = icmp eq i64 %11, 0, !dbg !5052
  br i1 %12, label %if.then1, label %if.else2, !dbg !5048

if.then1:                                         ; preds = %deref.next4
  %13 = load %runtime._string, ptr %x, align 8, !dbg !5053
    #dbg_value(%runtime._string %13, !5039, !DIExpression(), !5053)
  ret %runtime._string %13, !dbg !5054

if.else2:                                         ; preds = %deref.next4
  %14 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !5055
  %15 = icmp eq ptr %14, null, !dbg !5055
  br i1 %15, label %deref.throw5, label %deref.next6, !dbg !5055

deref.next6:                                      ; preds = %if.else2
  %16 = load i64, ptr %14, align 8, !dbg !5055
  %17 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !5056
  %18 = icmp eq ptr %17, null, !dbg !5056
  br i1 %18, label %deref.throw7, label %deref.next8, !dbg !5056

deref.next8:                                      ; preds = %deref.next6
  %19 = load i64, ptr %17, align 8, !dbg !5056
  %20 = add i64 %16, %19, !dbg !5057
    #dbg_value(i64 %20, !5041, !DIExpression(), !5058)
    #dbg_value(i64 %20, !5041, !DIExpression(), !5059)
  %21 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !5060
  %22 = call ptr @runtime.alloc(i64 %20, ptr %21, ptr undef), !dbg !5061
    #dbg_value(ptr %22, !5042, !DIExpression(), !5062)
    #dbg_value(ptr %22, !5042, !DIExpression(), !5063)
  %23 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 0, !dbg !5064
  %24 = icmp eq ptr %23, null, !dbg !5064
  br i1 %24, label %deref.throw9, label %deref.next10, !dbg !5064

deref.next10:                                     ; preds = %deref.next8
  %25 = load ptr, ptr %23, align 8, !dbg !5064
  %26 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !5065
  %27 = icmp eq ptr %26, null, !dbg !5065
  br i1 %27, label %deref.throw11, label %deref.next12, !dbg !5065

deref.next12:                                     ; preds = %deref.next10
  %28 = load i64, ptr %26, align 8, !dbg !5065
  call void @runtime.memcpy(ptr %22, ptr %25, i64 %28, ptr undef), !dbg !5066
    #dbg_value(ptr %22, !5042, !DIExpression(), !5067)
  %29 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !5068
  %30 = icmp eq ptr %29, null, !dbg !5068
  br i1 %30, label %deref.throw13, label %deref.next14, !dbg !5068

deref.next14:                                     ; preds = %deref.next12
  %31 = load i64, ptr %29, align 8, !dbg !5068
  %32 = getelementptr i8, ptr %22, i64 %31, !dbg !5069
  %33 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 0, !dbg !5070
  %34 = icmp eq ptr %33, null, !dbg !5070
  br i1 %34, label %deref.throw15, label %deref.next16, !dbg !5070

deref.next16:                                     ; preds = %deref.next14
  %35 = load ptr, ptr %33, align 8, !dbg !5070
  %36 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !5071
  %37 = icmp eq ptr %36, null, !dbg !5071
  br i1 %37, label %deref.throw17, label %deref.next18, !dbg !5071

deref.next18:                                     ; preds = %deref.next16
  %38 = load i64, ptr %36, align 8, !dbg !5071
  call void @runtime.memcpy(ptr %32, ptr %35, i64 %38, ptr undef), !dbg !5072
  store %runtime._string zeroinitializer, ptr %complit, align 8, !dbg !5043
  %39 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !5073
    #dbg_value(ptr %22, !5042, !DIExpression(), !5074)
  %40 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !5075
    #dbg_value(i64 %20, !5041, !DIExpression(), !5076)
  %41 = icmp eq ptr %39, null, !dbg !5073
  br i1 %41, label %store.throw, label %store.next, !dbg !5073

store.next:                                       ; preds = %deref.next18
  store ptr %22, ptr %39, align 8, !dbg !5073
  %42 = icmp eq ptr %40, null, !dbg !5075
  br i1 %42, label %store.throw19, label %store.next20, !dbg !5075

store.next20:                                     ; preds = %store.next
  store i64 %20, ptr %40, align 8, !dbg !5075
    #dbg_value(i64 %20, !5041, !DIExpression(), !5076)
  %43 = load %runtime._string, ptr %complit, align 8, !dbg !5077
  ret %runtime._string %43, !dbg !5078

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !5046
  unreachable, !dbg !5046

deref.throw3:                                     ; preds = %if.else
  call void @runtime.nilPanic(ptr undef), !dbg !5051
  unreachable, !dbg !5051

deref.throw5:                                     ; preds = %if.else2
  call void @runtime.nilPanic(ptr undef), !dbg !5055
  unreachable, !dbg !5055

deref.throw7:                                     ; preds = %deref.next6
  call void @runtime.nilPanic(ptr undef), !dbg !5056
  unreachable, !dbg !5056

deref.throw9:                                     ; preds = %deref.next8
  call void @runtime.nilPanic(ptr undef), !dbg !5064
  unreachable, !dbg !5064

deref.throw11:                                    ; preds = %deref.next10
  call void @runtime.nilPanic(ptr undef), !dbg !5065
  unreachable, !dbg !5065

deref.throw13:                                    ; preds = %deref.next12
  call void @runtime.nilPanic(ptr undef), !dbg !5068
  unreachable, !dbg !5068

deref.throw15:                                    ; preds = %deref.next14
  call void @runtime.nilPanic(ptr undef), !dbg !5070
  unreachable, !dbg !5070

deref.throw17:                                    ; preds = %deref.next16
  call void @runtime.nilPanic(ptr undef), !dbg !5071
  unreachable, !dbg !5071

store.throw:                                      ; preds = %deref.next18
  call void @runtime.nilPanic(ptr undef), !dbg !5073
  unreachable, !dbg !5073

store.throw19:                                    ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !5075
  unreachable, !dbg !5075
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @runtime.stringFromBytes(ptr nocapture readonly dereferenceable_or_null(1) %x.ptr, i64 %x.len, i64 %x.cap, ptr %context) #1 !dbg !5079 {
entry:
  %complit = alloca %runtime._string, align 8, !dbg !5086
  %x = alloca { ptr, i64, i64 }, align 8, !dbg !5086
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %x.ptr, 0, !dbg !5086
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %x.len, 1, !dbg !5086
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %x.cap, 2, !dbg !5086
    #dbg_value(ptr %x.ptr, !5084, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5086)
    #dbg_value(i64 %x.len, !5084, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5086)
    #dbg_value(i64 %x.cap, !5084, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5086)
  store { ptr, i64, i64 } zeroinitializer, ptr %x, align 8, !dbg !5086
  store { ptr, i64, i64 } %2, ptr %x, align 8, !dbg !5087
  %3 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !5088
  %4 = icmp eq ptr %3, null, !dbg !5088
  br i1 %4, label %deref.throw, label %deref.next, !dbg !5088

deref.next:                                       ; preds = %entry
  %5 = load i64, ptr %3, align 8, !dbg !5088
  %6 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !5089
  %7 = call ptr @runtime.alloc(i64 %5, ptr %6, ptr undef), !dbg !5090
    #dbg_value(ptr %7, !5085, !DIExpression(), !5091)
    #dbg_value(ptr %7, !5085, !DIExpression(), !5092)
  %8 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 0, !dbg !5093
  %9 = icmp eq ptr %8, null, !dbg !5093
  br i1 %9, label %deref.throw1, label %deref.next2, !dbg !5093

deref.next2:                                      ; preds = %deref.next
  %10 = load ptr, ptr %8, align 8, !dbg !5093
  %11 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !5094
  %12 = icmp eq ptr %11, null, !dbg !5094
  br i1 %12, label %deref.throw3, label %deref.next4, !dbg !5094

deref.next4:                                      ; preds = %deref.next2
  %13 = load i64, ptr %11, align 8, !dbg !5094
  call void @runtime.memcpy(ptr %7, ptr %10, i64 %13, ptr undef), !dbg !5095
  store %runtime._string zeroinitializer, ptr %complit, align 8, !dbg !5086
  %14 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !5096
    #dbg_value(ptr %7, !5085, !DIExpression(), !5097)
  %15 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !5098
  %16 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !5099
  %17 = icmp eq ptr %16, null, !dbg !5099
  br i1 %17, label %deref.throw5, label %deref.next6, !dbg !5099

deref.next6:                                      ; preds = %deref.next4
  %18 = load i64, ptr %16, align 8, !dbg !5099
  %19 = icmp eq ptr %14, null, !dbg !5096
  br i1 %19, label %store.throw, label %store.next, !dbg !5096

store.next:                                       ; preds = %deref.next6
  store ptr %7, ptr %14, align 8, !dbg !5096
  %20 = icmp eq ptr %15, null, !dbg !5098
  br i1 %20, label %store.throw7, label %store.next8, !dbg !5098

store.next8:                                      ; preds = %store.next
  store i64 %18, ptr %15, align 8, !dbg !5098
  %21 = load %runtime._string, ptr %complit, align 8, !dbg !5100
  ret %runtime._string %21, !dbg !5101

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !5088
  unreachable, !dbg !5088

deref.throw1:                                     ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !5093
  unreachable, !dbg !5093

deref.throw3:                                     ; preds = %deref.next2
  call void @runtime.nilPanic(ptr undef), !dbg !5094
  unreachable, !dbg !5094

deref.throw5:                                     ; preds = %deref.next4
  call void @runtime.nilPanic(ptr undef), !dbg !5099
  unreachable, !dbg !5099

store.throw:                                      ; preds = %deref.next6
  call void @runtime.nilPanic(ptr undef), !dbg !5096
  unreachable, !dbg !5096

store.throw7:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !5098
  unreachable, !dbg !5098
}

; Function Attrs: nounwind uwtable(sync)
define i64 @f_gold(i64 %N) #1 !dbg !5102 {
entry:
    #dbg_value(i64 %N, !5105, !DIExpression(), !5106)
    #dbg_value(i64 %N, !5105, !DIExpression(), !5107)
  %0 = add i64 %N, 1, !dbg !5108
  %1 = sitofp i64 %0 to double, !dbg !5109
  %2 = call double @math.Log2(double %1, ptr undef), !dbg !5110
  %3 = call double @math.Ceil(double %2, ptr undef), !dbg !5111
  %4 = fsub double %3, 1.000000e+00, !dbg !5112
  %abovemin = fcmp ole double 0xC3E0000000000000, %4, !dbg !5113
  %belowmax = fcmp ole double %4, 0x43DFFFFFFFFFFFFE, !dbg !5113
  %inbounds = and i1 %abovemin, %belowmax, !dbg !5113
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5113
  %isnan = fcmp uno double %4, %4, !dbg !5113
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !5113
  %normal = fptosi double %4 to i64, !dbg !5113
  %5 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !5113
  ret i64 %5, !dbg !5114
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

!llvm.dbg.cu = !{!521, !523, !771, !789, !976, !1020, !1021, !1022, !1030, !1032, !1516, !1527, !1555, !1556, !1731}
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
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !11, line: 12, type: !12, isLocal: true, isDefinition: true)
!11 = !DIFile(filename: "itoa.go", directory: "/usr/local/lib/tinygo/src/internal/itoa")
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, align: 8, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 1, lowerBound: 0)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(scope: null, file: !11, line: 20, type: !12, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "unicode/utf8.first", linkageName: "unicode/utf8.first", scope: !19, file: !19, line: 71, type: !20, isLocal: false, isDefinition: true, align: 8)
!19 = !DIFile(filename: "utf8.go", directory: "/usr/local/lib/tinygo/src/unicode/utf8")
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, align: 8, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 256, lowerBound: 0)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "unicode/utf8.acceptRanges", linkageName: "unicode/utf8.acceptRanges", scope: !19, file: !19, line: 100, type: !25, isLocal: false, isDefinition: true, align: 8)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 256, align: 8, elements: !31)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "unicode/utf8.acceptRange", baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, size: 16, align: 8, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "lo", baseType: !4, size: 8, align: 8)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "hi", baseType: !4, size: 8, align: 8, offset: 8)
!31 = !{!32}
!32 = !DISubrange(count: 16, lowerBound: 0)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !35, line: 393, type: !36, isLocal: true, isDefinition: true)
!35 = !DIFile(filename: "type.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, align: 8, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 4, lowerBound: 0)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeElem", linkageName: "internal/reflectlite.errTypeElem", scope: !35, file: !35, line: 393, type: !41, isLocal: false, isDefinition: true, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64, dwarfAddressSpace: 0)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.TypeError", baseType: !43)
!43 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !44)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "Method", baseType: !46, size: 128, align: 64)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", size: 128, align: 64, elements: !47)
!47 = !{!48, !50}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64, dwarfAddressSpace: 0)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "len", baseType: !51, size: 64, align: 64, offset: 64)
!51 = !DIBasicType(name: "uintptr", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !35, line: 394, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, align: 8, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 3, lowerBound: 0)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeKey", linkageName: "internal/reflectlite.errTypeKey", scope: !35, file: !35, line: 394, type: !41, isLocal: false, isDefinition: true, align: 64)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !35, line: 395, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, align: 8, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 5, lowerBound: 0)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeField", linkageName: "internal/reflectlite.errTypeField", scope: !35, file: !35, line: 395, type: !41, isLocal: false, isDefinition: true, align: 64)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !35, line: 397, type: !54, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeLen", linkageName: "internal/reflectlite.errTypeLen", scope: !35, file: !35, line: 397, type: !41, isLocal: false, isDefinition: true, align: 64)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !35, line: 398, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, align: 8, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 8, lowerBound: 0)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeNumField", linkageName: "internal/reflectlite.errTypeNumField", scope: !35, file: !35, line: 398, type: !41, isLocal: false, isDefinition: true, align: 64)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !35, line: 399, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, align: 8, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 7, lowerBound: 0)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeChanDir", linkageName: "internal/reflectlite.errTypeChanDir", scope: !35, file: !35, line: 399, type: !41, isLocal: false, isDefinition: true, align: 64)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "type uint8", scope: !86, file: !86, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!86 = !DIFile(filename: "<Go type>", directory: "")
!87 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !88)
!88 = !{!89, !91}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !90, size: 8, align: 8)
!90 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !92, size: 64, align: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe.Pointer", baseType: null, size: 64, align: 64, dwarfAddressSpace: 0)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "type *uint8", scope: !86, file: !86, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !96)
!96 = !{!89, !97, !99}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !98, size: 16, align: 16, offset: 16)
!98 = !DIBasicType(name: "uint16", size: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !92, size: 64, align: 64, offset: 64)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "type struct{meta uint8}", scope: !86, file: !86, line: 1, type: !102, isLocal: false, isDefinition: true, align: 64)
!102 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !103)
!103 = !{!89, !97, !91, !104, !105, !107, !108}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !92, size: 64, align: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "size", baseType: !106, size: 32, align: 32, offset: 192)
!106 = !DIBasicType(name: "uint32", size: 32, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "numFields", baseType: !98, size: 16, align: 16, offset: 224)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !109, size: 128, align: 64, offset: 256)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 128, align: 64, elements: !13)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.structField", baseType: !111)
!111 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !112)
!112 = !{!113, !114}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "typecode", baseType: !92, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !49, size: 64, align: 64, offset: 64)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "type *struct{meta uint8}", scope: !86, file: !86, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !119, line: 17, type: !120, isLocal: true, isDefinition: true)
!119 = !DIFile(filename: "strconv.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, align: 8, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 14, lowerBound: 0)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "type struct{}", scope: !86, file: !86, line: 1, type: !125, isLocal: false, isDefinition: true, align: 64)
!125 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !126)
!126 = !{!89, !97, !91, !104, !105, !107, !127}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !128, align: 64, offset: 256)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, align: 64, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 0, lowerBound: 0)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "type *struct{}", scope: !86, file: !86, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !119, line: 250, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, align: 8, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 2, lowerBound: 0)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !119, line: 251, type: !3, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !119, line: 252, type: !3, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !119, line: 278, type: !135, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !119, line: 280, type: !135, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !119, line: 282, type: !135, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !119, line: 284, type: !135, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !119, line: 286, type: !135, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !119, line: 288, type: !135, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !119, line: 290, type: !135, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !119, line: 294, type: !135, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !119, line: 295, type: !3, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !119, line: 296, type: !3, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !119, line: 301, type: !135, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !119, line: 303, type: !3, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !119, line: 306, type: !135, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !119, line: 308, type: !3, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "type internal/reflectlite.ValueError", scope: !86, file: !86, line: 1, type: !172, isLocal: false, isDefinition: true, align: 64)
!172 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !173)
!173 = !{!89, !97, !91, !174, !175, !176}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !92, size: 64, align: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !92, size: 64, align: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !177, size: 184, align: 8, offset: 256)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 184, align: 8, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 23, lowerBound: 0)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "type struct{Method string; Kind internal/reflectlite.Kind}", scope: !86, file: !86, line: 1, type: !182, isLocal: false, isDefinition: true, align: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !183)
!183 = !{!89, !97, !91, !104, !105, !107, !184}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !185, size: 256, align: 64, offset: 256)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 256, align: 64, elements: !136)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "type *struct{Method string; Kind internal/reflectlite.Kind}", scope: !86, file: !86, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !35, line: 60, type: !79, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !35, line: 62, type: !36, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !35, line: 64, type: !54, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !35, line: 66, type: !36, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !35, line: 68, type: !61, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !35, line: 70, type: !61, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !35, line: 72, type: !61, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !35, line: 74, type: !36, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !35, line: 76, type: !61, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !35, line: 78, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, align: 8, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 6, lowerBound: 0)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !35, line: 80, type: !208, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !35, line: 82, type: !208, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !35, line: 84, type: !79, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !35, line: 86, type: !79, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !35, line: 88, type: !79, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !35, line: 90, type: !223, isLocal: true, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, align: 8, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 9, lowerBound: 0)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !35, line: 92, type: !228, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, align: 8, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 10, lowerBound: 0)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !35, line: 94, type: !208, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !35, line: 96, type: !120, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !35, line: 98, type: !36, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !35, line: 100, type: !223, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !35, line: 102, type: !54, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !35, line: 104, type: !61, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !35, line: 106, type: !61, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !35, line: 108, type: !36, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !35, line: 110, type: !54, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !35, line: 112, type: !208, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !35, line: 114, type: !36, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "type internal/reflectlite.TypeError", scope: !86, file: !86, line: 1, type: !255, isLocal: false, isDefinition: true, align: 64)
!255 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !256)
!256 = !{!89, !97, !91, !174, !175, !257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !258, size: 176, align: 8, offset: 256)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 176, align: 8, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 22, lowerBound: 0)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "type struct{Method string}", scope: !86, file: !86, line: 1, type: !102, isLocal: false, isDefinition: true, align: 64)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "type *struct{Method string}", scope: !86, file: !86, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !35, line: 329, type: !79, isLocal: true, isDefinition: true)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !35, line: 331, type: !79, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !35, line: 338, type: !208, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !35, line: 338, type: !12, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !35, line: 340, type: !61, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !35, line: 344, type: !12, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !35, line: 346, type: !135, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !35, line: 348, type: !12, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !35, line: 348, type: !12, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !35, line: 350, type: !36, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !35, line: 350, type: !12, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !35, line: 354, type: !223, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !35, line: 359, type: !12, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !35, line: 359, type: !12, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !35, line: 361, type: !12, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !35, line: 365, type: !12, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !35, line: 368, type: !135, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !35, line: 372, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, align: 8, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 12, lowerBound: 0)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !35, line: 356, type: !72, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, align: 8, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 33, lowerBound: 0)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1212, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, align: 8, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 30, lowerBound: 0)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1212, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, align: 8, elements: !31)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1791, type: !322, isLocal: true, isDefinition: true)
!321 = !DIFile(filename: "value.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, align: 8, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 17, lowerBound: 0)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1791, type: !120, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1793, type: !322, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1793, type: !36, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1793, type: !208, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(name: "internal/task.activeTasks", linkageName: "internal/task.activeTasks", scope: !335, file: !335, line: 45, type: !336, isLocal: false, isDefinition: true, align: 64)
!335 = !DIFile(filename: "task_threads.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64, dwarfAddressSpace: 0)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !338)
!338 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !339)
!339 = !{!340, !341, !342, !344, !348, !374, !375, !377, !378}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !336, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "Ptr", baseType: !92, size: 64, align: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "Data", baseType: !343, size: 64, align: 64, offset: 128)
!343 = !DIBasicType(name: "uint64", size: 64, encoding: DW_ATE_unsigned)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "gcData", baseType: !345, align: 8, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.gcData", baseType: !346)
!346 = !DICompositeType(tag: DW_TAG_structure_type, align: 8, elements: !347)
!347 = !{}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !349, size: 384, align: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !350)
!350 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !351)
!351 = !{!352, !353, !355, !356, !357, !358}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "id", baseType: !51, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "thread", baseType: !354, size: 64, align: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.threadID", baseType: !92)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "stackTop", baseType: !51, size: 64, align: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "stackBottom", baseType: !51, size: 64, align: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !336, size: 64, align: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pauseSem", baseType: !359, size: 32, align: 32, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Semaphore", baseType: !360)
!360 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "futex", baseType: !363, size: 32, align: 32)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Futex", baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/futex.Futex", baseType: !365)
!365 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "Uint32", baseType: !368, size: 32, align: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Uint32", baseType: !369)
!369 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !370)
!370 = !{!371, !373}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !372, align: 8)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.noCopy", baseType: !346)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !106, size: 32, align: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "FipsIndicator", baseType: !4, size: 8, align: 8, offset: 576)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "FipsOnlyBypass", baseType: !376, size: 8, align: 8, offset: 584)
!376 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "RunState", baseType: !4, size: 8, align: 8, offset: 592)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "DeferFrame", baseType: !92, size: 64, align: 64, offset: 640)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "internal/task.mainTask", linkageName: "internal/task.mainTask", scope: !335, file: !335, line: 42, type: !337, isLocal: false, isDefinition: true, align: 64)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !383, line: 1, type: !313, isLocal: true, isDefinition: true)
!383 = !DIFile(filename: "mutex-preemptive.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "internal/task.numCPU", linkageName: "internal/task.numCPU", scope: !335, file: !335, line: 40, type: !386, isLocal: false, isDefinition: true, align: 32)
!386 = !DIBasicType(name: "int32", size: 32, encoding: DW_ATE_signed)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "internal/task.activeTaskLock", linkageName: "internal/task.activeTaskLock", scope: !335, file: !335, line: 46, type: !389, isLocal: false, isDefinition: true, align: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.PMutex", baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Mutex", baseType: !360)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !335, line: 64, type: !393, isLocal: true, isDefinition: true)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, align: 8, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 20, lowerBound: 0)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !335, line: 77, type: !301, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "internal/task.otherGoroutines", linkageName: "internal/task.otherGoroutines", scope: !335, file: !335, line: 99, type: !106, isLocal: false, isDefinition: true, align: 32)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !335, line: 127, type: !223, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !335, line: 146, type: !322, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "internal/task.scanWaitGroup", linkageName: "internal/task.scanWaitGroup", scope: !335, file: !335, line: 151, type: !406, isLocal: false, isDefinition: true, align: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.waitGroup", baseType: !407)
!407 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !363, size: 32, align: 32)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "internal/task.gcState", linkageName: "internal/task.gcState", scope: !335, file: !335, line: 180, type: !363, isLocal: false, isDefinition: true, align: 32)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(name: "runtime.xorshift32State", linkageName: "runtime.xorshift32State", scope: !414, file: !414, line: 32, type: !106, isLocal: false, isDefinition: true, align: 32)
!414 = !DIFile(filename: "algorithm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(name: "runtime.xorshift64State", linkageName: "runtime.xorshift64State", scope: !414, file: !414, line: 52, type: !343, isLocal: false, isDefinition: true, align: 64)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(name: "runtime.heapSize", linkageName: "runtime.heapSize", scope: !419, file: !419, line: 298, type: !51, isLocal: false, isDefinition: true, align: 64)
!419 = !DIFile(filename: "runtime_unix.go", directory: "/usr/local/lib/tinygo/src/runtime")
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "type string", scope: !86, file: !86, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "type *string", scope: !86, file: !86, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "runtime.zeroSizedAlloc", linkageName: "runtime.zeroSizedAlloc", scope: !426, file: !426, line: 30, type: !4, isLocal: false, isDefinition: true, align: 8)
!426 = !DIFile(filename: "gc_boehm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(name: "runtime.gcLock", linkageName: "runtime.gcLock", scope: !426, file: !426, line: 32, type: !389, isLocal: false, isDefinition: true, align: 32)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !426, line: 93, type: !322, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !433, line: 78, type: !79, isLocal: true, isDefinition: true)
!433 = !DIFile(filename: "panic.go", directory: "/usr/local/lib/tinygo/src/runtime")
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !433, line: 99, type: !436, isLocal: true, isDefinition: true)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, align: 8, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 24, lowerBound: 0)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !433, line: 101, type: !135, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !433, line: 103, type: !443, isLocal: true, isDefinition: true)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, align: 8, elements: !259)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !433, line: 184, type: !446, isLocal: true, isDefinition: true)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, align: 8, elements: !178)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !433, line: 194, type: !449, isLocal: true, isDefinition: true)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, align: 8, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 18, lowerBound: 0)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !433, line: 199, type: !449, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !433, line: 212, type: !456, isLocal: true, isDefinition: true)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, align: 8, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 37, lowerBound: 0)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !433, line: 222, type: !120, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !463, line: 117, type: !54, isLocal: true, isDefinition: true)
!463 = !DIFile(filename: "print.go", directory: "/usr/local/lib/tinygo/src/runtime")
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !463, line: 120, type: !36, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !463, line: 123, type: !36, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !463, line: 197, type: !54, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !463, line: 200, type: !36, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !463, line: 203, type: !36, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !463, line: 272, type: !135, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !463, line: 279, type: !135, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !463, line: 373, type: !54, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !463, line: 391, type: !36, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !463, line: 393, type: !61, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "runtime.stackTop", linkageName: "runtime.stackTop", scope: !419, file: !419, line: 75, type: !51, isLocal: false, isDefinition: true, align: 64)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "runtime.main_argc", linkageName: "runtime.main_argc", scope: !419, file: !419, line: 105, type: !386, isLocal: false, isDefinition: true, align: 32)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(name: "runtime.main_argv", linkageName: "runtime.main_argv", scope: !419, file: !419, line: 106, type: !490, isLocal: false, isDefinition: true, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64, dwarfAddressSpace: 0)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !419, line: 155, type: !436, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !419, line: 160, type: !318, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !419, line: 163, type: !208, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !419, line: 165, type: !208, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !419, line: 167, type: !79, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !419, line: 158, type: !393, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(name: "runtime.signalFutex", linkageName: "runtime.signalFutex", scope: !419, file: !419, line: 354, type: !364, isLocal: false, isDefinition: true, align: 32)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "runtime.heapMaxSize", linkageName: "runtime.heapMaxSize", scope: !419, file: !419, line: 299, type: !51, isLocal: false, isDefinition: true, align: 64)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "runtime.heapStart", linkageName: "runtime.heapStart", scope: !419, file: !419, line: 301, type: !51, isLocal: false, isDefinition: true, align: 64)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "runtime.heapEnd", linkageName: "runtime.heapEnd", scope: !419, file: !419, line: 301, type: !51, isLocal: false, isDefinition: true, align: 64)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !419, line: 317, type: !513, isLocal: true, isDefinition: true)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, align: 8, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 27, lowerBound: 0)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "runtime.receivedSignals", linkageName: "runtime.receivedSignals", scope: !419, file: !419, line: 358, type: !368, isLocal: false, isDefinition: true, align: 32)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "runtime.printLock", linkageName: "runtime.printLock", scope: !520, file: !520, line: 136, type: !390, isLocal: false, isDefinition: true, align: 32)
!520 = !DIFile(filename: "scheduler_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!521 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!522 = !DIFile(filename: "<unknown>", directory: "")
!523 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !524)
!524 = !{!525, !528, !577, !585, !600, !610, !616, !625, !651, !658, !664, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !702, !704, !709, !711, !714, !716, !718, !720, !722, !724, !726, !728, !730, !732, !734, !736, !738, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !422, !420, !766}
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(name: "internal/cpu.CacheLineSize", linkageName: "internal/cpu.CacheLineSize", scope: !527, file: !527, line: 17, type: !51, isLocal: false, isDefinition: true, align: 64)
!527 = !DIFile(filename: "cpu.go", directory: "/usr/local/go/src/internal/cpu")
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !527, file: !527, line: 23, type: !530, isLocal: false, isDefinition: true, align: 8)
!530 = !DICompositeType(tag: DW_TAG_structure_type, size: 1304, align: 8, elements: !531)
!531 = !{!532, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !533, size: 512, align: 8)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.CacheLinePad", baseType: !534)
!534 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 8, elements: !535)
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !537, size: 512, align: 8)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 512, align: 8, elements: !539)
!538 = !DIBasicType(name: "byte", size: 8, encoding: DW_ATE_unsigned)
!539 = !{!540}
!540 = !DISubrange(count: 64, lowerBound: 0)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !376, size: 8, align: 8, offset: 512)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "HasADX", baseType: !376, size: 8, align: 8, offset: 520)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX", baseType: !376, size: 8, align: 8, offset: 528)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVXVNNI", baseType: !376, size: 8, align: 8, offset: 536)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX2", baseType: !376, size: 8, align: 8, offset: 544)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512", baseType: !376, size: 8, align: 8, offset: 552)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512F", baseType: !376, size: 8, align: 8, offset: 560)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512CD", baseType: !376, size: 8, align: 8, offset: 568)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BW", baseType: !376, size: 8, align: 8, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512DQ", baseType: !376, size: 8, align: 8, offset: 584)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VL", baseType: !376, size: 8, align: 8, offset: 592)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512GFNI", baseType: !376, size: 8, align: 8, offset: 600)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VAES", baseType: !376, size: 8, align: 8, offset: 608)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VNNI", baseType: !376, size: 8, align: 8, offset: 616)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI", baseType: !376, size: 8, align: 8, offset: 624)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI2", baseType: !376, size: 8, align: 8, offset: 632)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BITALG", baseType: !376, size: 8, align: 8, offset: 640)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPOPCNTDQ", baseType: !376, size: 8, align: 8, offset: 648)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPCLMULQDQ", baseType: !376, size: 8, align: 8, offset: 656)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI1", baseType: !376, size: 8, align: 8, offset: 664)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI2", baseType: !376, size: 8, align: 8, offset: 672)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "HasERMS", baseType: !376, size: 8, align: 8, offset: 680)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "HasFSRM", baseType: !376, size: 8, align: 8, offset: 688)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "HasFMA", baseType: !376, size: 8, align: 8, offset: 696)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "HasGFNI", baseType: !376, size: 8, align: 8, offset: 704)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "HasOSXSAVE", baseType: !376, size: 8, align: 8, offset: 712)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "HasPCLMULQDQ", baseType: !376, size: 8, align: 8, offset: 720)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "HasPOPCNT", baseType: !376, size: 8, align: 8, offset: 728)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "HasRDTSCP", baseType: !376, size: 8, align: 8, offset: 736)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA", baseType: !376, size: 8, align: 8, offset: 744)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE3", baseType: !376, size: 8, align: 8, offset: 752)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSSE3", baseType: !376, size: 8, align: 8, offset: 760)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE41", baseType: !376, size: 8, align: 8, offset: 768)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE42", baseType: !376, size: 8, align: 8, offset: 776)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "HasVAES", baseType: !376, size: 8, align: 8, offset: 784)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !533, size: 512, align: 8, offset: 792)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(name: "internal/cpu.ARM", linkageName: "internal/cpu.ARM", scope: !527, file: !527, line: 65, type: !579, isLocal: false, isDefinition: true, align: 8)
!579 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !580)
!580 = !{!532, !581, !582, !583, !584}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "HasVFPv4", baseType: !376, size: 8, align: 8, offset: 512)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "HasIDIVA", baseType: !376, size: 8, align: 8, offset: 520)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "HasV7Atomics", baseType: !376, size: 8, align: 8, offset: 528)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !533, size: 512, align: 8, offset: 536)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(name: "internal/cpu.ARM64", linkageName: "internal/cpu.ARM64", scope: !527, file: !527, line: 75, type: !587, isLocal: false, isDefinition: true, align: 8)
!587 = !DICompositeType(tag: DW_TAG_structure_type, size: 1112, align: 8, elements: !588)
!588 = !{!532, !541, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "HasPMULL", baseType: !376, size: 8, align: 8, offset: 520)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !376, size: 8, align: 8, offset: 528)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA2", baseType: !376, size: 8, align: 8, offset: 536)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !376, size: 8, align: 8, offset: 544)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !376, size: 8, align: 8, offset: 552)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !376, size: 8, align: 8, offset: 560)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "HasATOMICS", baseType: !376, size: 8, align: 8, offset: 568)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "HasCPUID", baseType: !376, size: 8, align: 8, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "HasDIT", baseType: !376, size: 8, align: 8, offset: 584)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "IsNeoverse", baseType: !376, size: 8, align: 8, offset: 592)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !533, size: 512, align: 8, offset: 600)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(name: "internal/cpu.Loong64", linkageName: "internal/cpu.Loong64", scope: !527, file: !527, line: 93, type: !602, isLocal: false, isDefinition: true, align: 8)
!602 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !603)
!603 = !{!532, !604, !605, !606, !607, !608, !609}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "HasLSX", baseType: !376, size: 8, align: 8, offset: 512)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "HasLASX", baseType: !376, size: 8, align: 8, offset: 520)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !376, size: 8, align: 8, offset: 528)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAMCAS", baseType: !376, size: 8, align: 8, offset: 536)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAM_BH", baseType: !376, size: 8, align: 8, offset: 544)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !533, size: 512, align: 8, offset: 552)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(name: "internal/cpu.MIPS64X", linkageName: "internal/cpu.MIPS64X", scope: !527, file: !527, line: 103, type: !612, isLocal: false, isDefinition: true, align: 8)
!612 = !DICompositeType(tag: DW_TAG_structure_type, size: 1032, align: 8, elements: !613)
!613 = !{!532, !614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !376, size: 8, align: 8, offset: 512)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !533, size: 512, align: 8, offset: 520)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(name: "internal/cpu.PPC64", linkageName: "internal/cpu.PPC64", scope: !527, file: !527, line: 114, type: !618, isLocal: false, isDefinition: true, align: 8)
!618 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !619)
!619 = !{!532, !620, !621, !622, !623, !624, !609}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "HasDARN", baseType: !376, size: 8, align: 8, offset: 512)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "HasSCV", baseType: !376, size: 8, align: 8, offset: 520)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER8", baseType: !376, size: 8, align: 8, offset: 528)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER9", baseType: !376, size: 8, align: 8, offset: 536)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER10", baseType: !376, size: 8, align: 8, offset: 544)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(name: "internal/cpu.S390X", linkageName: "internal/cpu.S390X", scope: !527, file: !527, line: 124, type: !627, isLocal: false, isDefinition: true, align: 8)
!627 = !DICompositeType(tag: DW_TAG_structure_type, size: 1192, align: 8, elements: !628)
!628 = !{!532, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "HasZARCH", baseType: !376, size: 8, align: 8, offset: 512)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "HasSTFLE", baseType: !376, size: 8, align: 8, offset: 520)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "HasLDISP", baseType: !376, size: 8, align: 8, offset: 528)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "HasEIMM", baseType: !376, size: 8, align: 8, offset: 536)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "HasDFP", baseType: !376, size: 8, align: 8, offset: 544)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "HasETF3EH", baseType: !376, size: 8, align: 8, offset: 552)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !376, size: 8, align: 8, offset: 560)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !376, size: 8, align: 8, offset: 568)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCBC", baseType: !376, size: 8, align: 8, offset: 576)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCTR", baseType: !376, size: 8, align: 8, offset: 584)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESGCM", baseType: !376, size: 8, align: 8, offset: 592)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "HasGHASH", baseType: !376, size: 8, align: 8, offset: 600)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !376, size: 8, align: 8, offset: 608)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA256", baseType: !376, size: 8, align: 8, offset: 616)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !376, size: 8, align: 8, offset: 624)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !376, size: 8, align: 8, offset: 632)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "HasVX", baseType: !376, size: 8, align: 8, offset: 640)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "HasVXE", baseType: !376, size: 8, align: 8, offset: 648)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "HasKDSA", baseType: !376, size: 8, align: 8, offset: 656)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "HasECDSA", baseType: !376, size: 8, align: 8, offset: 664)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "HasEDDSA", baseType: !376, size: 8, align: 8, offset: 672)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !533, size: 512, align: 8, offset: 680)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(name: "internal/cpu.RISCV64", linkageName: "internal/cpu.RISCV64", scope: !527, file: !527, line: 154, type: !653, isLocal: false, isDefinition: true, align: 8)
!653 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !654)
!654 = !{!532, !655, !656, !657, !584}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "HasFastMisaligned", baseType: !376, size: 8, align: 8, offset: 512)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "HasV", baseType: !376, size: 8, align: 8, offset: 520)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "HasZbb", baseType: !376, size: 8, align: 8, offset: 528)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(name: "internal/cpu.doDerived", linkageName: "internal/cpu.doDerived", scope: !527, file: !527, line: 174, type: !660, isLocal: false, isDefinition: true, align: 64)
!660 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !661)
!661 = !{!662, !663}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "context", baseType: !92, size: 64, align: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "fn", baseType: !92, size: 64, align: 64, offset: 64)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(name: "internal/cpu.options", linkageName: "internal/cpu.options", scope: !527, file: !527, line: 192, type: !666, isLocal: false, isDefinition: true, align: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]internal/cpu.option", size: 192, align: 64, elements: !667)
!667 = !{!668, !50, !678}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !669, size: 64, align: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64, align: 64, dwarfAddressSpace: 0)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.option", baseType: !671)
!671 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !672)
!672 = !{!673, !674, !676, !677}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "Name", baseType: !46, size: 128, align: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "Feature", baseType: !675, size: 64, align: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64, dwarfAddressSpace: 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "Specified", baseType: !376, size: 8, align: 8, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "Enable", baseType: !376, size: 8, align: 8, offset: 200)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "cap", baseType: !51, size: 64, align: 64, offset: 128)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !527, line: 218, type: !36, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !527, line: 223, type: !308, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !527, line: 223, type: !135, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !527, line: 230, type: !135, isLocal: true, isDefinition: true)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !527, line: 239, type: !54, isLocal: true, isDefinition: true)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !527, line: 255, type: !313, isLocal: true, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !527, line: 255, type: !135, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !527, line: 232, type: !54, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !527, line: 235, type: !318, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !527, line: 235, type: !699, isLocal: true, isDefinition: true)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, align: 8, elements: !700)
!700 = !{!701}
!701 = !DISubrange(count: 32, lowerBound: 0)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !527, line: 235, type: !135, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !527, line: 264, type: !706, isLocal: true, isDefinition: true)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, align: 8, elements: !707)
!707 = !{!708}
!708 = !DISubrange(count: 25, lowerBound: 0)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !527, line: 264, type: !446, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(name: "internal/cpu.maxExtendedFunctionInformation", linkageName: "internal/cpu.maxExtendedFunctionInformation", scope: !713, file: !713, line: 69, type: !106, isLocal: false, isDefinition: true, align: 32)
!713 = !DIFile(filename: "cpu_x86.go", directory: "/usr/local/go/src/internal/cpu")
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !713, line: 73, type: !54, isLocal: true, isDefinition: true)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !713, line: 74, type: !54, isLocal: true, isDefinition: true)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !713, line: 75, type: !36, isLocal: true, isDefinition: true)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !713, line: 76, type: !36, isLocal: true, isDefinition: true)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !713, line: 77, type: !223, isLocal: true, isDefinition: true)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !713, line: 78, type: !208, isLocal: true, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !713, line: 79, type: !54, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !713, line: 80, type: !228, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !713, line: 87, type: !208, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !713, line: 88, type: !36, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !713, line: 89, type: !61, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !713, line: 90, type: !61, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !713, line: 91, type: !61, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !713, line: 97, type: !54, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !713, line: 98, type: !36, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !713, line: 99, type: !36, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !713, line: 100, type: !36, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !713, line: 101, type: !54, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !713, line: 107, type: !79, isLocal: true, isDefinition: true)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !713, line: 108, type: !72, isLocal: true, isDefinition: true)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !713, line: 109, type: !72, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !713, line: 110, type: !72, isLocal: true, isDefinition: true)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(scope: null, file: !713, line: 111, type: !72, isLocal: true, isDefinition: true)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !762, line: 1, type: !763, isLocal: true, isDefinition: true)
!762 = !DIFile(filename: "datacache_x86.go", directory: "/usr/local/go/src/internal/cpu")
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, align: 8, elements: !764)
!764 = !{!765}
!765 = !DISubrange(count: 13, lowerBound: 0)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !762, line: 1, type: !768, isLocal: true, isDefinition: true)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 664, align: 8, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 83, lowerBound: 0)
!771 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !772)
!772 = !{!773, !777, !779, !787}
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(name: "math/bits.deBruijn32tab", linkageName: "math/bits.deBruijn32tab", scope: !775, file: !775, line: 44, type: !776, isLocal: false, isDefinition: true, align: 8)
!775 = !DIFile(filename: "bits.go", directory: "/usr/local/go/src/math/bits")
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 256, align: 8, elements: !700)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(name: "math/bits.deBruijn64tab", linkageName: "math/bits.deBruijn64tab", scope: !775, file: !775, line: 51, type: !537, isLocal: false, isDefinition: true, align: 8)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(name: "math/bits.overflowError", linkageName: "runtime.overflowError", scope: !781, file: !781, line: 12, type: !782, isLocal: false, isDefinition: true, align: 64)
!781 = !DIFile(filename: "bits_errors.go", directory: "/usr/local/go/src/math/bits")
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._interface", baseType: !784)
!784 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !785)
!785 = !{!113, !786}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "value", baseType: !92, size: 64, align: 64, offset: 64)
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(name: "math/bits.divideError", linkageName: "runtime.divideError", scope: !781, file: !781, line: 15, type: !782, isLocal: false, isDefinition: true, align: 64)
!789 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !790)
!790 = !{!791, !793, !796, !801, !804, !807, !811, !813, !815, !817, !819, !821, !823, !825, !827, !829, !831, !833, !835, !837, !839, !841, !844, !846, !848, !850, !852, !854, !856, !858, !860, !862, !864, !866, !868, !870, !872, !874, !878, !880, !882, !885, !887, !889, !891, !895, !898, !903, !906, !908, !912, !914, !917, !919, !923, !926, !928, !930, !932, !934, !936, !938, !940, !942, !944, !946, !948, !950, !952, !954, !0, !956, !958, !7, !960, !962, !964, !966, !968, !970, !972, !974}
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !527, file: !527, line: 23, type: !530, isLocal: false, isDefinition: true, align: 8)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(name: "math.useFMA", linkageName: "math.useFMA", scope: !795, file: !795, line: 11, type: !376, isLocal: false, isDefinition: true, align: 8)
!795 = !DIFile(filename: "exp_amd64.go", directory: "/usr/local/go/src/math")
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(name: "math._gamP", linkageName: "math._gamP", scope: !798, file: !798, line: 66, type: !799, isLocal: false, isDefinition: true, align: 64)
!798 = !DIFile(filename: "gamma.go", directory: "/usr/local/go/src/math")
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 448, align: 64, elements: !80)
!800 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(name: "math._gamQ", linkageName: "math._gamQ", scope: !798, file: !798, line: 75, type: !803, isLocal: false, isDefinition: true, align: 64)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 512, align: 64, elements: !73)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(name: "math._gamS", linkageName: "math._gamS", scope: !798, file: !798, line: 85, type: !806, isLocal: false, isDefinition: true, align: 64)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 320, align: 64, elements: !62)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(name: "math.p0R8", linkageName: "math.p0R8", scope: !809, file: !809, line: 240, type: !810, isLocal: false, isDefinition: true, align: 64)
!809 = !DIFile(filename: "j0.go", directory: "/usr/local/go/src/math")
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 384, align: 64, elements: !209)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(name: "math.p0S8", linkageName: "math.p0S8", scope: !809, file: !809, line: 248, type: !806, isLocal: false, isDefinition: true, align: 64)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(name: "math.p0R5", linkageName: "math.p0R5", scope: !809, file: !809, line: 257, type: !810, isLocal: false, isDefinition: true, align: 64)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(name: "math.p0S5", linkageName: "math.p0S5", scope: !809, file: !809, line: 265, type: !806, isLocal: false, isDefinition: true, align: 64)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(name: "math.p0R3", linkageName: "math.p0R3", scope: !809, file: !809, line: 274, type: !810, isLocal: false, isDefinition: true, align: 64)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(name: "math.p0S3", linkageName: "math.p0S3", scope: !809, file: !809, line: 282, type: !806, isLocal: false, isDefinition: true, align: 64)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(name: "math.p0R2", linkageName: "math.p0R2", scope: !809, file: !809, line: 291, type: !810, isLocal: false, isDefinition: true, align: 64)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(name: "math.p0S2", linkageName: "math.p0S2", scope: !809, file: !809, line: 299, type: !806, isLocal: false, isDefinition: true, align: 64)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(name: "math.q0R8", linkageName: "math.q0R8", scope: !809, file: !809, line: 339, type: !810, isLocal: false, isDefinition: true, align: 64)
!827 = !DIGlobalVariableExpression(var: !828, expr: !DIExpression())
!828 = distinct !DIGlobalVariable(name: "math.q0S8", linkageName: "math.q0S8", scope: !809, file: !809, line: 347, type: !810, isLocal: false, isDefinition: true, align: 64)
!829 = !DIGlobalVariableExpression(var: !830, expr: !DIExpression())
!830 = distinct !DIGlobalVariable(name: "math.q0R5", linkageName: "math.q0R5", scope: !809, file: !809, line: 357, type: !810, isLocal: false, isDefinition: true, align: 64)
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(name: "math.q0S5", linkageName: "math.q0S5", scope: !809, file: !809, line: 365, type: !810, isLocal: false, isDefinition: true, align: 64)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(name: "math.q0R3", linkageName: "math.q0R3", scope: !809, file: !809, line: 375, type: !810, isLocal: false, isDefinition: true, align: 64)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(name: "math.q0S3", linkageName: "math.q0S3", scope: !809, file: !809, line: 383, type: !810, isLocal: false, isDefinition: true, align: 64)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(name: "math.q0R2", linkageName: "math.q0R2", scope: !809, file: !809, line: 393, type: !810, isLocal: false, isDefinition: true, align: 64)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(name: "math.q0S2", linkageName: "math.q0S2", scope: !809, file: !809, line: 401, type: !810, isLocal: false, isDefinition: true, align: 64)
!841 = !DIGlobalVariableExpression(var: !842, expr: !DIExpression())
!842 = distinct !DIGlobalVariable(name: "math.p1R8", linkageName: "math.p1R8", scope: !843, file: !843, line: 235, type: !810, isLocal: false, isDefinition: true, align: 64)
!843 = !DIFile(filename: "j1.go", directory: "/usr/local/go/src/math")
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(name: "math.p1S8", linkageName: "math.p1S8", scope: !843, file: !843, line: 243, type: !806, isLocal: false, isDefinition: true, align: 64)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(name: "math.p1R5", linkageName: "math.p1R5", scope: !843, file: !843, line: 252, type: !810, isLocal: false, isDefinition: true, align: 64)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(name: "math.p1S5", linkageName: "math.p1S5", scope: !843, file: !843, line: 260, type: !806, isLocal: false, isDefinition: true, align: 64)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(name: "math.p1R3", linkageName: "math.p1R3", scope: !843, file: !843, line: 269, type: !810, isLocal: false, isDefinition: true, align: 64)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(name: "math.p1S3", linkageName: "math.p1S3", scope: !843, file: !843, line: 277, type: !806, isLocal: false, isDefinition: true, align: 64)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(name: "math.p1R2", linkageName: "math.p1R2", scope: !843, file: !843, line: 286, type: !810, isLocal: false, isDefinition: true, align: 64)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(name: "math.p1S2", linkageName: "math.p1S2", scope: !843, file: !843, line: 294, type: !806, isLocal: false, isDefinition: true, align: 64)
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(name: "math.q1R8", linkageName: "math.q1R8", scope: !843, file: !843, line: 334, type: !810, isLocal: false, isDefinition: true, align: 64)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(name: "math.q1S8", linkageName: "math.q1S8", scope: !843, file: !843, line: 342, type: !810, isLocal: false, isDefinition: true, align: 64)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(name: "math.q1R5", linkageName: "math.q1R5", scope: !843, file: !843, line: 352, type: !810, isLocal: false, isDefinition: true, align: 64)
!864 = !DIGlobalVariableExpression(var: !865, expr: !DIExpression())
!865 = distinct !DIGlobalVariable(name: "math.q1S5", linkageName: "math.q1S5", scope: !843, file: !843, line: 360, type: !810, isLocal: false, isDefinition: true, align: 64)
!866 = !DIGlobalVariableExpression(var: !867, expr: !DIExpression())
!867 = distinct !DIGlobalVariable(name: "math.q1R3", linkageName: "math.q1R3", scope: !843, file: !843, line: 370, type: !810, isLocal: false, isDefinition: true, align: 64)
!868 = !DIGlobalVariableExpression(var: !869, expr: !DIExpression())
!869 = distinct !DIGlobalVariable(name: "math.q1S3", linkageName: "math.q1S3", scope: !843, file: !843, line: 378, type: !810, isLocal: false, isDefinition: true, align: 64)
!870 = !DIGlobalVariableExpression(var: !871, expr: !DIExpression())
!871 = distinct !DIGlobalVariable(name: "math.q1R2", linkageName: "math.q1R2", scope: !843, file: !843, line: 388, type: !810, isLocal: false, isDefinition: true, align: 64)
!872 = !DIGlobalVariableExpression(var: !873, expr: !DIExpression())
!873 = distinct !DIGlobalVariable(name: "math.q1S2", linkageName: "math.q1S2", scope: !843, file: !843, line: 396, type: !810, isLocal: false, isDefinition: true, align: 64)
!874 = !DIGlobalVariableExpression(var: !875, expr: !DIExpression())
!875 = distinct !DIGlobalVariable(name: "math._lgamA", linkageName: "math._lgamA", scope: !876, file: !876, line: 91, type: !877, isLocal: false, isDefinition: true, align: 64)
!876 = !DIFile(filename: "lgamma.go", directory: "/usr/local/go/src/math")
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 768, align: 64, elements: !302)
!878 = !DIGlobalVariableExpression(var: !879, expr: !DIExpression())
!879 = distinct !DIGlobalVariable(name: "math._lgamR", linkageName: "math._lgamR", scope: !876, file: !876, line: 105, type: !799, isLocal: false, isDefinition: true, align: 64)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(name: "math._lgamS", linkageName: "math._lgamS", scope: !876, file: !876, line: 114, type: !799, isLocal: false, isDefinition: true, align: 64)
!882 = !DIGlobalVariableExpression(var: !883, expr: !DIExpression())
!883 = distinct !DIGlobalVariable(name: "math._lgamT", linkageName: "math._lgamT", scope: !876, file: !876, line: 123, type: !884, isLocal: false, isDefinition: true, align: 64)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 960, align: 64, elements: !5)
!885 = !DIGlobalVariableExpression(var: !886, expr: !DIExpression())
!886 = distinct !DIGlobalVariable(name: "math._lgamU", linkageName: "math._lgamU", scope: !876, file: !876, line: 140, type: !810, isLocal: false, isDefinition: true, align: 64)
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(name: "math._lgamV", linkageName: "math._lgamV", scope: !876, file: !876, line: 148, type: !810, isLocal: false, isDefinition: true, align: 64)
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(name: "math._lgamW", linkageName: "math._lgamW", scope: !876, file: !876, line: 156, type: !799, isLocal: false, isDefinition: true, align: 64)
!891 = !DIGlobalVariableExpression(var: !892, expr: !DIExpression())
!892 = distinct !DIGlobalVariable(name: "math.pow10tab", linkageName: "math.pow10tab", scope: !893, file: !893, line: 8, type: !894, isLocal: false, isDefinition: true, align: 64)
!893 = !DIFile(filename: "pow10.go", directory: "/usr/local/go/src/math")
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 2048, align: 64, elements: !700)
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(name: "math.pow10postab32", linkageName: "math.pow10postab32", scope: !893, file: !893, line: 16, type: !897, isLocal: false, isDefinition: true, align: 64)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 640, align: 64, elements: !229)
!898 = !DIGlobalVariableExpression(var: !899, expr: !DIExpression())
!899 = distinct !DIGlobalVariable(name: "math.pow10negtab32", linkageName: "math.pow10negtab32", scope: !893, file: !893, line: 21, type: !900, isLocal: false, isDefinition: true, align: 64)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 704, align: 64, elements: !901)
!901 = !{!902}
!902 = !DISubrange(count: 11, lowerBound: 0)
!903 = !DIGlobalVariableExpression(var: !904, expr: !DIExpression())
!904 = distinct !DIGlobalVariable(name: "math._sin", linkageName: "math._sin", scope: !905, file: !905, line: 93, type: !810, isLocal: false, isDefinition: true, align: 64)
!905 = !DIFile(filename: "sin.go", directory: "/usr/local/go/src/math")
!906 = !DIGlobalVariableExpression(var: !907, expr: !DIExpression())
!907 = distinct !DIGlobalVariable(name: "math._cos", linkageName: "math._cos", scope: !905, file: !905, line: 103, type: !810, isLocal: false, isDefinition: true, align: 64)
!908 = !DIGlobalVariableExpression(var: !909, expr: !DIExpression())
!909 = distinct !DIGlobalVariable(name: "math._tanP", linkageName: "math._tanP", scope: !910, file: !910, line: 63, type: !911, isLocal: false, isDefinition: true, align: 64)
!910 = !DIFile(filename: "tan.go", directory: "/usr/local/go/src/math")
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 192, align: 64, elements: !55)
!912 = !DIGlobalVariableExpression(var: !913, expr: !DIExpression())
!913 = distinct !DIGlobalVariable(name: "math._tanQ", linkageName: "math._tanQ", scope: !910, file: !910, line: 68, type: !806, isLocal: false, isDefinition: true, align: 64)
!914 = !DIGlobalVariableExpression(var: !915, expr: !DIExpression())
!915 = distinct !DIGlobalVariable(name: "math.tanhP", linkageName: "math.tanhP", scope: !916, file: !916, line: 57, type: !911, isLocal: false, isDefinition: true, align: 64)
!916 = !DIFile(filename: "tanh.go", directory: "/usr/local/go/src/math")
!917 = !DIGlobalVariableExpression(var: !918, expr: !DIExpression())
!918 = distinct !DIGlobalVariable(name: "math.tanhQ", linkageName: "math.tanhQ", scope: !916, file: !916, line: 62, type: !911, isLocal: false, isDefinition: true, align: 64)
!919 = !DIGlobalVariableExpression(var: !920, expr: !DIExpression())
!920 = distinct !DIGlobalVariable(name: "math.mPi4", linkageName: "math.mPi4", scope: !921, file: !921, line: 81, type: !922, isLocal: false, isDefinition: true, align: 64)
!921 = !DIFile(filename: "trig_reduce.go", directory: "/usr/local/go/src/math")
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 1280, align: 64, elements: !394)
!923 = !DIGlobalVariableExpression(var: !924, expr: !DIExpression())
!924 = distinct !DIGlobalVariable(scope: null, file: !925, line: 1, type: !3, isLocal: true, isDefinition: true)
!925 = !DIFile(filename: "exp2_noasm.go", directory: "/usr/local/go/src/math")
!926 = !DIGlobalVariableExpression(var: !927, expr: !DIExpression())
!927 = distinct !DIGlobalVariable(name: "type *string", scope: !86, file: !86, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!928 = !DIGlobalVariableExpression(var: !929, expr: !DIExpression())
!929 = distinct !DIGlobalVariable(name: "type string", scope: !86, file: !86, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
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
!976 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !977)
!977 = !{!978, !984, !986, !988, !993, !995, !1000, !1005, !1010, !1015}
!978 = !DIGlobalVariableExpression(var: !979, expr: !DIExpression())
!979 = distinct !DIGlobalVariable(scope: null, file: !980, line: 1, type: !981, isLocal: true, isDefinition: true)
!980 = !DIFile(filename: "value.go", directory: "/usr/local/go/src/sync/atomic")
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, align: 8, elements: !982)
!982 = !{!983}
!983 = !DISubrange(count: 53, lowerBound: 0)
!984 = !DIGlobalVariableExpression(var: !985, expr: !DIExpression())
!985 = distinct !DIGlobalVariable(name: "type *string", scope: !86, file: !86, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!986 = !DIGlobalVariableExpression(var: !987, expr: !DIExpression())
!987 = distinct !DIGlobalVariable(name: "type string", scope: !86, file: !86, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!988 = !DIGlobalVariableExpression(var: !989, expr: !DIExpression())
!989 = distinct !DIGlobalVariable(scope: null, file: !980, line: 1, type: !990, isLocal: true, isDefinition: true)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, align: 8, elements: !991)
!991 = !{!992}
!992 = !DISubrange(count: 60, lowerBound: 0)
!993 = !DIGlobalVariableExpression(var: !994, expr: !DIExpression())
!994 = distinct !DIGlobalVariable(name: "sync/atomic.firstStoreInProgress", linkageName: "sync/atomic.firstStoreInProgress", scope: !980, file: !980, line: 42, type: !538, isLocal: false, isDefinition: true, align: 8)
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
!1020 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1021 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1022 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1023)
!1023 = !{!9, !15, !1024, !1026, !1028}
!1024 = !DIGlobalVariableExpression(var: !1025, expr: !DIExpression())
!1025 = distinct !DIGlobalVariable(scope: null, file: !11, line: 40, type: !54, isLocal: true, isDefinition: true)
!1026 = !DIGlobalVariableExpression(var: !1027, expr: !DIExpression())
!1027 = distinct !DIGlobalVariable(scope: null, file: !11, line: 46, type: !318, isLocal: true, isDefinition: true)
!1028 = !DIGlobalVariableExpression(var: !1029, expr: !DIExpression())
!1029 = distinct !DIGlobalVariable(scope: null, file: !11, line: 51, type: !318, isLocal: true, isDefinition: true)
!1030 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1031)
!1031 = !{!17, !23}
!1032 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1033)
!1033 = !{!33, !39, !52, !57, !59, !64, !1034, !1036, !66, !68, !70, !75, !77, !82, !1038, !1041, !1043, !1045, !93, !84, !1047, !1054, !1056, !1058, !1060, !1062, !1064, !1066, !1068, !1070, !1072, !1074, !1076, !1078, !1080, !1082, !1084, !1086, !1088, !1090, !1092, !1094, !1096, !1098, !1100, !1102, !1104, !1106, !1108, !1110, !1112, !1114, !1116, !1118, !1120, !1122, !1124, !1126, !1128, !1130, !115, !100, !1132, !1150, !1155, !1157, !1159, !1161, !1163, !1165, !1167, !1169, !1181, !1187, !1193, !117, !1196, !1198, !1200, !1202, !131, !123, !1211, !133, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !1217, !186, !1220, !1222, !1224, !1226, !1228, !1230, !180, !170, !1236, !1238, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !211, !213, !215, !217, !219, !221, !226, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !1240, !1245, !1250, !1255, !1260, !263, !261, !253, !1262, !1264, !1266, !1268, !1270, !1272, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !1274, !289, !291, !293, !295, !297, !299, !304, !306, !1276, !311, !316, !1278, !1280, !1282, !1284, !1286, !1291, !1293, !1295, !1297, !1299, !1301, !1303, !1305, !1307, !1309, !1311, !1313, !1318, !1320, !1322, !1327, !1329, !1331, !1333, !1335, !1337, !1339, !1341, !1343, !1345, !1347, !1349, !1351, !1356, !1358, !1360, !1362, !1364, !1366, !1368, !1370, !1372, !1377, !1379, !1384, !1389, !1391, !1393, !1395, !1400, !1402, !1404, !1406, !1408, !1413, !1415, !1417, !1419, !1421, !1423, !1428, !1430, !1435, !1437, !1439, !1441, !1443, !1445, !1447, !1449, !1451, !1453, !1455, !1457, !1462, !1464, !1469, !1471, !1473, !1475, !1477, !1480, !1482, !1484, !319, !325, !327, !329, !331, !1486, !1488, !1493, !1495, !1497, !1499, !1501, !1503, !1505, !1507, !1509, !1511, !1514}
!1034 = !DIGlobalVariableExpression(var: !1035, expr: !DIExpression())
!1035 = distinct !DIGlobalVariable(scope: null, file: !35, line: 396, type: !36, isLocal: true, isDefinition: true)
!1036 = !DIGlobalVariableExpression(var: !1037, expr: !DIExpression())
!1037 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeBits", linkageName: "internal/reflectlite.errTypeBits", scope: !35, file: !35, line: 396, type: !41, isLocal: false, isDefinition: true, align: 64)
!1038 = !DIGlobalVariableExpression(var: !1039, expr: !DIExpression())
!1039 = distinct !DIGlobalVariable(scope: null, file: !35, line: 400, type: !1040, isLocal: true, isDefinition: true)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, align: 8, elements: !901)
!1041 = !DIGlobalVariableExpression(var: !1042, expr: !DIExpression())
!1042 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByName", linkageName: "internal/reflectlite.errTypeFieldByName", scope: !35, file: !35, line: 400, type: !41, isLocal: false, isDefinition: true, align: 64)
!1043 = !DIGlobalVariableExpression(var: !1044, expr: !DIExpression())
!1044 = distinct !DIGlobalVariable(scope: null, file: !35, line: 401, type: !301, isLocal: true, isDefinition: true)
!1045 = !DIGlobalVariableExpression(var: !1046, expr: !DIExpression())
!1046 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByIndex", linkageName: "internal/reflectlite.errTypeFieldByIndex", scope: !35, file: !35, line: 401, type: !41, isLocal: false, isDefinition: true, align: 64)
!1047 = !DIGlobalVariableExpression(var: !1048, expr: !DIExpression())
!1048 = distinct !DIGlobalVariable(name: "internal/reflectlite.uint8Type", linkageName: "internal/reflectlite.uint8Type", scope: !321, file: !321, line: 956, type: !1049, isLocal: false, isDefinition: true, align: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64, align: 64, dwarfAddressSpace: 0)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.RawType", baseType: !1051)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, size: 8, align: 8, elements: !1052)
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "meta", baseType: !4, size: 8, align: 8)
!1054 = !DIGlobalVariableExpression(var: !1055, expr: !DIExpression())
!1055 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.visit", scope: !86, file: !86, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1056 = !DIGlobalVariableExpression(var: !1057, expr: !DIExpression())
!1057 = distinct !DIGlobalVariable(name: "type *struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !86, file: !86, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1058 = !DIGlobalVariableExpression(var: !1059, expr: !DIExpression())
!1059 = distinct !DIGlobalVariable(name: "type *unsafe.Pointer", scope: !86, file: !86, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1060 = !DIGlobalVariableExpression(var: !1061, expr: !DIExpression())
!1061 = distinct !DIGlobalVariable(name: "type unsafe.Pointer", scope: !86, file: !86, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1062 = !DIGlobalVariableExpression(var: !1063, expr: !DIExpression())
!1063 = distinct !DIGlobalVariable(name: "reflect/types.signature:Align:func:{}{basic:int}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1064 = !DIGlobalVariableExpression(var: !1065, expr: !DIExpression())
!1065 = distinct !DIGlobalVariable(name: "reflect/types.signature:AssignableTo:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1066 = !DIGlobalVariableExpression(var: !1067, expr: !DIExpression())
!1067 = distinct !DIGlobalVariable(name: "reflect/types.signature:Bits:func:{}{basic:int}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1068 = !DIGlobalVariableExpression(var: !1069, expr: !DIExpression())
!1069 = distinct !DIGlobalVariable(name: "reflect/types.signature:ChanDir:func:{}{named:internal/reflectlite.ChanDir}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1070 = !DIGlobalVariableExpression(var: !1071, expr: !DIExpression())
!1071 = distinct !DIGlobalVariable(name: "reflect/types.signature:Comparable:func:{}{basic:bool}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1072 = !DIGlobalVariableExpression(var: !1073, expr: !DIExpression())
!1073 = distinct !DIGlobalVariable(name: "reflect/types.signature:Elem:func:{}{named:internal/reflectlite.Type}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1074 = !DIGlobalVariableExpression(var: !1075, expr: !DIExpression())
!1075 = distinct !DIGlobalVariable(name: "reflect/types.signature:Field:func:{basic:int}{named:internal/reflectlite.StructField}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1076 = !DIGlobalVariableExpression(var: !1077, expr: !DIExpression())
!1077 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldAlign:func:{}{basic:int}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1078 = !DIGlobalVariableExpression(var: !1079, expr: !DIExpression())
!1079 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByIndex:func:{slice:basic:int}{named:internal/reflectlite.StructField}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1080 = !DIGlobalVariableExpression(var: !1081, expr: !DIExpression())
!1081 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByName:func:{basic:string}{named:internal/reflectlite.StructField,basic:bool}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1082 = !DIGlobalVariableExpression(var: !1083, expr: !DIExpression())
!1083 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.StructField,basic:bool}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1084 = !DIGlobalVariableExpression(var: !1085, expr: !DIExpression())
!1085 = distinct !DIGlobalVariable(name: "reflect/types.signature:Implements:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1086 = !DIGlobalVariableExpression(var: !1087, expr: !DIExpression())
!1087 = distinct !DIGlobalVariable(name: "reflect/types.signature:Key:func:{}{named:internal/reflectlite.Type}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1088 = !DIGlobalVariableExpression(var: !1089, expr: !DIExpression())
!1089 = distinct !DIGlobalVariable(name: "reflect/types.signature:Kind:func:{}{named:internal/reflectlite.Kind}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1090 = !DIGlobalVariableExpression(var: !1091, expr: !DIExpression())
!1091 = distinct !DIGlobalVariable(name: "reflect/types.signature:Len:func:{}{basic:int}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1092 = !DIGlobalVariableExpression(var: !1093, expr: !DIExpression())
!1093 = distinct !DIGlobalVariable(name: "reflect/types.signature:Name:func:{}{basic:string}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1094 = !DIGlobalVariableExpression(var: !1095, expr: !DIExpression())
!1095 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumField:func:{}{basic:int}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1096 = !DIGlobalVariableExpression(var: !1097, expr: !DIExpression())
!1097 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumMethod:func:{}{basic:int}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1098 = !DIGlobalVariableExpression(var: !1099, expr: !DIExpression())
!1099 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowComplex:func:{basic:complex128}{basic:bool}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1100 = !DIGlobalVariableExpression(var: !1101, expr: !DIExpression())
!1101 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowFloat:func:{basic:float64}{basic:bool}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1102 = !DIGlobalVariableExpression(var: !1103, expr: !DIExpression())
!1103 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowInt:func:{basic:int64}{basic:bool}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1104 = !DIGlobalVariableExpression(var: !1105, expr: !DIExpression())
!1105 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowUint:func:{basic:uint64}{basic:bool}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1106 = !DIGlobalVariableExpression(var: !1107, expr: !DIExpression())
!1107 = distinct !DIGlobalVariable(name: "reflect/types.signature:PkgPath:func:{}{basic:string}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1108 = !DIGlobalVariableExpression(var: !1109, expr: !DIExpression())
!1109 = distinct !DIGlobalVariable(name: "reflect/types.signature:Size:func:{}{basic:uintptr}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1110 = !DIGlobalVariableExpression(var: !1111, expr: !DIExpression())
!1111 = distinct !DIGlobalVariable(name: "reflect/types.signature:String:func:{}{basic:string}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1112 = !DIGlobalVariableExpression(var: !1113, expr: !DIExpression())
!1113 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.elem:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1114 = !DIGlobalVariableExpression(var: !1115, expr: !DIExpression())
!1115 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.gcLayout:func:{}{basic:unsafe.Pointer}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1116 = !DIGlobalVariableExpression(var: !1117, expr: !DIExpression())
!1117 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isBinary:func:{}{basic:bool}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1118 = !DIGlobalVariableExpression(var: !1119, expr: !DIExpression())
!1119 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isNamed:func:{}{basic:bool}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1120 = !DIGlobalVariableExpression(var: !1121, expr: !DIExpression())
!1121 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.key:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1122 = !DIGlobalVariableExpression(var: !1123, expr: !DIExpression())
!1123 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.name:func:{}{basic:string}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1124 = !DIGlobalVariableExpression(var: !1125, expr: !DIExpression())
!1125 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.ptrtag:func:{}{basic:uintptr}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1126 = !DIGlobalVariableExpression(var: !1127, expr: !DIExpression())
!1127 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawField:func:{basic:int}{named:internal/reflectlite.rawStructField}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1128 = !DIGlobalVariableExpression(var: !1129, expr: !DIExpression())
!1129 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawFieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.rawStructField,slice:basic:int,basic:bool}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1130 = !DIGlobalVariableExpression(var: !1131, expr: !DIExpression())
!1131 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.underlying:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1132 = !DIGlobalVariableExpression(var: !1133, expr: !DIExpression())
!1133 = distinct !DIGlobalVariable(name: "type internal/reflectlite.RawType", scope: !86, file: !86, line: 1, type: !1134, isLocal: false, isDefinition: true, align: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, size: 832, align: 64, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1142, !1148}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "methodSet", baseType: !92, size: 64, align: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !90, size: 8, align: 8, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !98, size: 16, align: 16, offset: 80)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !92, size: 64, align: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !92, size: 64, align: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !92, size: 64, align: 64, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1143, size: 320, align: 64, offset: 320)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !1144)
!1144 = !{!1145, !1146}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !51, size: 64, align: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1147, size: 256, align: 64, offset: 64)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 256, align: 64, elements: !37)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1149, size: 160, align: 8, offset: 640)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 160, align: 8, elements: !394)
!1150 = !DIGlobalVariableExpression(var: !1151, expr: !DIExpression())
!1151 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, align: 8, elements: !1153)
!1153 = !{!1154}
!1154 = !DISubrange(count: 28, lowerBound: 0)
!1155 = !DIGlobalVariableExpression(var: !1156, expr: !DIExpression())
!1156 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !3, isLocal: true, isDefinition: true)
!1157 = !DIGlobalVariableExpression(var: !1158, expr: !DIExpression())
!1158 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1159 = !DIGlobalVariableExpression(var: !1160, expr: !DIExpression())
!1160 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !763, isLocal: true, isDefinition: true)
!1161 = !DIGlobalVariableExpression(var: !1162, expr: !DIExpression())
!1162 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1163 = !DIGlobalVariableExpression(var: !1164, expr: !DIExpression())
!1164 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !1040, isLocal: true, isDefinition: true)
!1165 = !DIGlobalVariableExpression(var: !1166, expr: !DIExpression())
!1166 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1167 = !DIGlobalVariableExpression(var: !1168, expr: !DIExpression())
!1168 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !301, isLocal: true, isDefinition: true)
!1169 = !DIGlobalVariableExpression(var: !1170, expr: !DIExpression())
!1170 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.RawType", scope: !86, file: !86, line: 1, type: !1171, isLocal: false, isDefinition: true, align: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, size: 2496, align: 64, elements: !1172)
!1172 = !{!1136, !1137, !1138, !1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !92, size: 64, align: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1175, size: 2304, align: 64, offset: 192)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, size: 2304, align: 64, elements: !1176)
!1176 = !{!1145, !1177}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1178, size: 2240, align: 64, offset: 64)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 2240, align: 64, elements: !1179)
!1179 = !{!1180}
!1180 = !DISubrange(count: 35, lowerBound: 0)
!1181 = !DIGlobalVariableExpression(var: !1182, expr: !DIExpression())
!1182 = distinct !DIGlobalVariable(name: "type struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !86, file: !86, line: 1, type: !1183, isLocal: false, isDefinition: true, align: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1184)
!1184 = !{!89, !97, !91, !104, !105, !107, !1185}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !1186, size: 384, align: 64, offset: 256)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 384, align: 64, elements: !55)
!1187 = !DIGlobalVariableExpression(var: !1188, expr: !DIExpression())
!1188 = distinct !DIGlobalVariable(name: "type internal/reflectlite.visit", scope: !86, file: !86, line: 1, type: !1189, isLocal: false, isDefinition: true, align: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1190)
!1190 = !{!89, !97, !91, !174, !175, !1191}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1192, size: 144, align: 8, offset: 256)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 144, align: 8, elements: !450)
!1193 = !DIGlobalVariableExpression(var: !1194, expr: !DIExpression())
!1194 = distinct !DIGlobalVariable(name: "internal/reflectlite.errSyntax", linkageName: "internal/reflectlite.errSyntax", scope: !119, file: !119, line: 12, type: !1195, isLocal: false, isDefinition: true, align: 8)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.badSyntax", baseType: !346)
!1196 = !DIGlobalVariableExpression(var: !1197, expr: !DIExpression())
!1197 = distinct !DIGlobalVariable(name: "reflect/types.signature:Error:func:{}{basic:string}", scope: !86, file: !86, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1198 = !DIGlobalVariableExpression(var: !1199, expr: !DIExpression())
!1199 = distinct !DIGlobalVariable(scope: null, file: !119, line: 1, type: !313, isLocal: true, isDefinition: true)
!1200 = !DIGlobalVariableExpression(var: !1201, expr: !DIExpression())
!1201 = distinct !DIGlobalVariable(scope: null, file: !119, line: 1, type: !61, isLocal: true, isDefinition: true)
!1202 = !DIGlobalVariableExpression(var: !1203, expr: !DIExpression())
!1203 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.badSyntax", scope: !86, file: !86, line: 1, type: !1204, isLocal: false, isDefinition: true, align: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !1205)
!1205 = !{!1136, !1137, !1138, !1173, !1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1207, size: 128, align: 64, offset: 192)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !1208)
!1208 = !{!1145, !1209}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1210, size: 64, align: 64, offset: 64)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 64, align: 64, elements: !13)
!1211 = !DIGlobalVariableExpression(var: !1212, expr: !DIExpression())
!1212 = distinct !DIGlobalVariable(name: "type internal/reflectlite.badSyntax", scope: !86, file: !86, line: 1, type: !1213, isLocal: false, isDefinition: true, align: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1214)
!1214 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1207, size: 128, align: 64, offset: 320)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !258, size: 176, align: 8, offset: 448)
!1217 = !DIGlobalVariableExpression(var: !1218, expr: !DIExpression())
!1218 = distinct !DIGlobalVariable(scope: null, file: !1219, line: 16, type: !79, isLocal: true, isDefinition: true)
!1219 = !DIFile(filename: "swapper.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1220 = !DIGlobalVariableExpression(var: !1221, expr: !DIExpression())
!1221 = distinct !DIGlobalVariable(name: "type *string", scope: !86, file: !86, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1222 = !DIGlobalVariableExpression(var: !1223, expr: !DIExpression())
!1223 = distinct !DIGlobalVariable(name: "type string", scope: !86, file: !86, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1224 = !DIGlobalVariableExpression(var: !1225, expr: !DIExpression())
!1225 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !706, isLocal: true, isDefinition: true)
!1226 = !DIGlobalVariableExpression(var: !1227, expr: !DIExpression())
!1227 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !208, isLocal: true, isDefinition: true)
!1228 = !DIGlobalVariableExpression(var: !1229, expr: !DIExpression())
!1229 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.Kind", scope: !86, file: !86, line: 1, type: !1204, isLocal: false, isDefinition: true, align: 64)
!1230 = !DIGlobalVariableExpression(var: !1231, expr: !DIExpression())
!1231 = distinct !DIGlobalVariable(name: "type internal/reflectlite.Kind", scope: !86, file: !86, line: 1, type: !1232, isLocal: false, isDefinition: true, align: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1233)
!1233 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1215, !1234}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1235, size: 136, align: 8, offset: 448)
!1235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 136, align: 8, elements: !323)
!1236 = !DIGlobalVariableExpression(var: !1237, expr: !DIExpression())
!1237 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.ValueError", scope: !86, file: !86, line: 1, type: !1204, isLocal: false, isDefinition: true, align: 64)
!1238 = !DIGlobalVariableExpression(var: !1239, expr: !DIExpression())
!1239 = distinct !DIGlobalVariable(scope: null, file: !1219, line: 1, type: !308, isLocal: true, isDefinition: true)
!1240 = !DIGlobalVariableExpression(var: !1241, expr: !DIExpression())
!1241 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !1242, isLocal: true, isDefinition: true)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, align: 8, elements: !1243)
!1243 = !{!1244}
!1244 = !DISubrange(count: 44, lowerBound: 0)
!1245 = !DIGlobalVariableExpression(var: !1246, expr: !DIExpression())
!1246 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !1247, isLocal: true, isDefinition: true)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, align: 8, elements: !1248)
!1248 = !{!1249}
!1249 = !DISubrange(count: 40, lowerBound: 0)
!1250 = !DIGlobalVariableExpression(var: !1251, expr: !DIExpression())
!1251 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !1252, isLocal: true, isDefinition: true)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, align: 8, elements: !1253)
!1253 = !{!1254}
!1254 = !DISubrange(count: 36, lowerBound: 0)
!1255 = !DIGlobalVariableExpression(var: !1256, expr: !DIExpression())
!1256 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !1257, isLocal: true, isDefinition: true)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, align: 8, elements: !1258)
!1258 = !{!1259}
!1259 = !DISubrange(count: 38, lowerBound: 0)
!1260 = !DIGlobalVariableExpression(var: !1261, expr: !DIExpression())
!1261 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !699, isLocal: true, isDefinition: true)
!1262 = !DIGlobalVariableExpression(var: !1263, expr: !DIExpression())
!1263 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.TypeError", scope: !86, file: !86, line: 1, type: !1204, isLocal: false, isDefinition: true, align: 64)
!1264 = !DIGlobalVariableExpression(var: !1265, expr: !DIExpression())
!1265 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1059, type: !3, isLocal: true, isDefinition: true)
!1266 = !DIGlobalVariableExpression(var: !1267, expr: !DIExpression())
!1267 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !981, isLocal: true, isDefinition: true)
!1268 = !DIGlobalVariableExpression(var: !1269, expr: !DIExpression())
!1269 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !322, isLocal: true, isDefinition: true)
!1270 = !DIGlobalVariableExpression(var: !1271, expr: !DIExpression())
!1271 = distinct !DIGlobalVariable(scope: null, file: !35, line: 965, type: !79, isLocal: true, isDefinition: true)
!1272 = !DIGlobalVariableExpression(var: !1273, expr: !DIExpression())
!1273 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !513, isLocal: true, isDefinition: true)
!1274 = !DIGlobalVariableExpression(var: !1275, expr: !DIExpression())
!1275 = distinct !DIGlobalVariable(scope: null, file: !35, line: 356, type: !72, isLocal: true, isDefinition: true)
!1276 = !DIGlobalVariableExpression(var: !1277, expr: !DIExpression())
!1277 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !699, isLocal: true, isDefinition: true)
!1278 = !DIGlobalVariableExpression(var: !1279, expr: !DIExpression())
!1279 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !699, isLocal: true, isDefinition: true)
!1280 = !DIGlobalVariableExpression(var: !1281, expr: !DIExpression())
!1281 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !699, isLocal: true, isDefinition: true)
!1282 = !DIGlobalVariableExpression(var: !1283, expr: !DIExpression())
!1283 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !308, isLocal: true, isDefinition: true)
!1284 = !DIGlobalVariableExpression(var: !1285, expr: !DIExpression())
!1285 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !313, isLocal: true, isDefinition: true)
!1286 = !DIGlobalVariableExpression(var: !1287, expr: !DIExpression())
!1287 = distinct !DIGlobalVariable(scope: null, file: !35, line: 1, type: !1288, isLocal: true, isDefinition: true)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, align: 8, elements: !1289)
!1289 = !{!1290}
!1290 = !DISubrange(count: 31, lowerBound: 0)
!1291 = !DIGlobalVariableExpression(var: !1292, expr: !DIExpression())
!1292 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1012, isLocal: true, isDefinition: true)
!1293 = !DIGlobalVariableExpression(var: !1294, expr: !DIExpression())
!1294 = distinct !DIGlobalVariable(scope: null, file: !321, line: 441, type: !36, isLocal: true, isDefinition: true)
!1295 = !DIGlobalVariableExpression(var: !1296, expr: !DIExpression())
!1296 = distinct !DIGlobalVariable(scope: null, file: !321, line: 650, type: !61, isLocal: true, isDefinition: true)
!1297 = !DIGlobalVariableExpression(var: !1298, expr: !DIExpression())
!1298 = distinct !DIGlobalVariable(scope: null, file: !321, line: 658, type: !61, isLocal: true, isDefinition: true)
!1299 = !DIGlobalVariableExpression(var: !1300, expr: !DIExpression())
!1300 = distinct !DIGlobalVariable(scope: null, file: !321, line: 667, type: !61, isLocal: true, isDefinition: true)
!1301 = !DIGlobalVariableExpression(var: !1302, expr: !DIExpression())
!1302 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !456, isLocal: true, isDefinition: true)
!1303 = !DIGlobalVariableExpression(var: !1304, expr: !DIExpression())
!1304 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1002, isLocal: true, isDefinition: true)
!1305 = !DIGlobalVariableExpression(var: !1306, expr: !DIExpression())
!1306 = distinct !DIGlobalVariable(scope: null, file: !321, line: 824, type: !54, isLocal: true, isDefinition: true)
!1307 = !DIGlobalVariableExpression(var: !1308, expr: !DIExpression())
!1308 = distinct !DIGlobalVariable(scope: null, file: !321, line: 843, type: !61, isLocal: true, isDefinition: true)
!1309 = !DIGlobalVariableExpression(var: !1310, expr: !DIExpression())
!1310 = distinct !DIGlobalVariable(scope: null, file: !321, line: 630, type: !79, isLocal: true, isDefinition: true)
!1311 = !DIGlobalVariableExpression(var: !1312, expr: !DIExpression())
!1312 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1425, type: !456, isLocal: true, isDefinition: true)
!1313 = !DIGlobalVariableExpression(var: !1314, expr: !DIExpression())
!1314 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1425, type: !1315, isLocal: true, isDefinition: true)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, align: 8, elements: !1316)
!1316 = !{!1317}
!1317 = !DISubrange(count: 29, lowerBound: 0)
!1318 = !DIGlobalVariableExpression(var: !1319, expr: !DIExpression())
!1319 = distinct !DIGlobalVariable(scope: null, file: !321, line: 875, type: !36, isLocal: true, isDefinition: true)
!1320 = !DIGlobalVariableExpression(var: !1321, expr: !DIExpression())
!1321 = distinct !DIGlobalVariable(scope: null, file: !321, line: 407, type: !1252, isLocal: true, isDefinition: true)
!1322 = !DIGlobalVariableExpression(var: !1323, expr: !DIExpression())
!1323 = distinct !DIGlobalVariable(scope: null, file: !321, line: 407, type: !1324, isLocal: true, isDefinition: true)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, align: 8, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 19, lowerBound: 0)
!1327 = !DIGlobalVariableExpression(var: !1328, expr: !DIExpression())
!1328 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !308, isLocal: true, isDefinition: true)
!1329 = !DIGlobalVariableExpression(var: !1330, expr: !DIExpression())
!1330 = distinct !DIGlobalVariable(scope: null, file: !321, line: 882, type: !61, isLocal: true, isDefinition: true)
!1331 = !DIGlobalVariableExpression(var: !1332, expr: !DIExpression())
!1332 = distinct !DIGlobalVariable(scope: null, file: !321, line: 2067, type: !301, isLocal: true, isDefinition: true)
!1333 = !DIGlobalVariableExpression(var: !1334, expr: !DIExpression())
!1334 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1007, isLocal: true, isDefinition: true)
!1335 = !DIGlobalVariableExpression(var: !1336, expr: !DIExpression())
!1336 = distinct !DIGlobalVariable(scope: null, file: !321, line: 2085, type: !3, isLocal: true, isDefinition: true)
!1337 = !DIGlobalVariableExpression(var: !1338, expr: !DIExpression())
!1338 = distinct !DIGlobalVariable(scope: null, file: !321, line: 2090, type: !1040, isLocal: true, isDefinition: true)
!1339 = !DIGlobalVariableExpression(var: !1340, expr: !DIExpression())
!1340 = distinct !DIGlobalVariable(scope: null, file: !321, line: 2101, type: !1040, isLocal: true, isDefinition: true)
!1341 = !DIGlobalVariableExpression(var: !1342, expr: !DIExpression())
!1342 = distinct !DIGlobalVariable(scope: null, file: !321, line: 598, type: !61, isLocal: true, isDefinition: true)
!1343 = !DIGlobalVariableExpression(var: !1344, expr: !DIExpression())
!1344 = distinct !DIGlobalVariable(scope: null, file: !321, line: 573, type: !61, isLocal: true, isDefinition: true)
!1345 = !DIGlobalVariableExpression(var: !1346, expr: !DIExpression())
!1346 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1315, isLocal: true, isDefinition: true)
!1347 = !DIGlobalVariableExpression(var: !1348, expr: !DIExpression())
!1348 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1957, type: !36, isLocal: true, isDefinition: true)
!1349 = !DIGlobalVariableExpression(var: !1350, expr: !DIExpression())
!1350 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !308, isLocal: true, isDefinition: true)
!1351 = !DIGlobalVariableExpression(var: !1352, expr: !DIExpression())
!1352 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1353, isLocal: true, isDefinition: true)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, align: 8, elements: !1354)
!1354 = !{!1355}
!1355 = !DISubrange(count: 34, lowerBound: 0)
!1356 = !DIGlobalVariableExpression(var: !1357, expr: !DIExpression())
!1357 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1041, type: !61, isLocal: true, isDefinition: true)
!1358 = !DIGlobalVariableExpression(var: !1359, expr: !DIExpression())
!1359 = distinct !DIGlobalVariable(scope: null, file: !321, line: 488, type: !54, isLocal: true, isDefinition: true)
!1360 = !DIGlobalVariableExpression(var: !1361, expr: !DIExpression())
!1361 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !456, isLocal: true, isDefinition: true)
!1362 = !DIGlobalVariableExpression(var: !1363, expr: !DIExpression())
!1363 = distinct !DIGlobalVariable(scope: null, file: !321, line: 247, type: !61, isLocal: true, isDefinition: true)
!1364 = !DIGlobalVariableExpression(var: !1365, expr: !DIExpression())
!1365 = distinct !DIGlobalVariable(scope: null, file: !321, line: 201, type: !12, isLocal: true, isDefinition: true)
!1366 = !DIGlobalVariableExpression(var: !1367, expr: !DIExpression())
!1367 = distinct !DIGlobalVariable(scope: null, file: !321, line: 209, type: !393, isLocal: true, isDefinition: true)
!1368 = !DIGlobalVariableExpression(var: !1369, expr: !DIExpression())
!1369 = distinct !DIGlobalVariable(scope: null, file: !321, line: 806, type: !54, isLocal: true, isDefinition: true)
!1370 = !DIGlobalVariableExpression(var: !1371, expr: !DIExpression())
!1371 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1117, type: !72, isLocal: true, isDefinition: true)
!1372 = !DIGlobalVariableExpression(var: !1373, expr: !DIExpression())
!1373 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1374, isLocal: true, isDefinition: true)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, align: 8, elements: !1375)
!1375 = !{!1376}
!1376 = !DISubrange(count: 50, lowerBound: 0)
!1377 = !DIGlobalVariableExpression(var: !1378, expr: !DIExpression())
!1378 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1074, type: !79, isLocal: true, isDefinition: true)
!1379 = !DIGlobalVariableExpression(var: !1380, expr: !DIExpression())
!1380 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1381, isLocal: true, isDefinition: true)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, align: 8, elements: !1382)
!1382 = !{!1383}
!1383 = !DISubrange(count: 39, lowerBound: 0)
!1384 = !DIGlobalVariableExpression(var: !1385, expr: !DIExpression())
!1385 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1386, isLocal: true, isDefinition: true)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, align: 8, elements: !1387)
!1387 = !{!1388}
!1388 = !DISubrange(count: 45, lowerBound: 0)
!1389 = !DIGlobalVariableExpression(var: !1390, expr: !DIExpression())
!1390 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1047, type: !446, isLocal: true, isDefinition: true)
!1391 = !DIGlobalVariableExpression(var: !1392, expr: !DIExpression())
!1392 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1062, type: !513, isLocal: true, isDefinition: true)
!1393 = !DIGlobalVariableExpression(var: !1394, expr: !DIExpression())
!1394 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1398, type: !706, isLocal: true, isDefinition: true)
!1395 = !DIGlobalVariableExpression(var: !1396, expr: !DIExpression())
!1396 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1411, type: !1397, isLocal: true, isDefinition: true)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, align: 8, elements: !1398)
!1398 = !{!1399}
!1399 = !DISubrange(count: 26, lowerBound: 0)
!1400 = !DIGlobalVariableExpression(var: !1401, expr: !DIExpression())
!1401 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !456, isLocal: true, isDefinition: true)
!1402 = !DIGlobalVariableExpression(var: !1403, expr: !DIExpression())
!1403 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1237, type: !308, isLocal: true, isDefinition: true)
!1404 = !DIGlobalVariableExpression(var: !1405, expr: !DIExpression())
!1405 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1237, type: !1152, isLocal: true, isDefinition: true)
!1406 = !DIGlobalVariableExpression(var: !1407, expr: !DIExpression())
!1407 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1275, type: !79, isLocal: true, isDefinition: true)
!1408 = !DIGlobalVariableExpression(var: !1409, expr: !DIExpression())
!1409 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1410, isLocal: true, isDefinition: true)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, align: 8, elements: !1411)
!1411 = !{!1412}
!1412 = !DISubrange(count: 43, lowerBound: 0)
!1413 = !DIGlobalVariableExpression(var: !1414, expr: !DIExpression())
!1414 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1381, isLocal: true, isDefinition: true)
!1415 = !DIGlobalVariableExpression(var: !1416, expr: !DIExpression())
!1416 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1341, type: !228, isLocal: true, isDefinition: true)
!1417 = !DIGlobalVariableExpression(var: !1418, expr: !DIExpression())
!1418 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1328, type: !72, isLocal: true, isDefinition: true)
!1419 = !DIGlobalVariableExpression(var: !1420, expr: !DIExpression())
!1420 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1294, type: !208, isLocal: true, isDefinition: true)
!1421 = !DIGlobalVariableExpression(var: !1422, expr: !DIExpression())
!1422 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1373, type: !393, isLocal: true, isDefinition: true)
!1423 = !DIGlobalVariableExpression(var: !1424, expr: !DIExpression())
!1424 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1425, isLocal: true, isDefinition: true)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, align: 8, elements: !1426)
!1426 = !{!1427}
!1427 = !DISubrange(count: 47, lowerBound: 0)
!1428 = !DIGlobalVariableExpression(var: !1429, expr: !DIExpression())
!1429 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1987, type: !1040, isLocal: true, isDefinition: true)
!1430 = !DIGlobalVariableExpression(var: !1431, expr: !DIExpression())
!1431 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1432, isLocal: true, isDefinition: true)
!1432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, align: 8, elements: !1433)
!1433 = !{!1434}
!1434 = !DISubrange(count: 55, lowerBound: 0)
!1435 = !DIGlobalVariableExpression(var: !1436, expr: !DIExpression())
!1436 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !981, isLocal: true, isDefinition: true)
!1437 = !DIGlobalVariableExpression(var: !1438, expr: !DIExpression())
!1438 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1352, type: !223, isLocal: true, isDefinition: true)
!1439 = !DIGlobalVariableExpression(var: !1440, expr: !DIExpression())
!1440 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1315, type: !79, isLocal: true, isDefinition: true)
!1441 = !DIGlobalVariableExpression(var: !1442, expr: !DIExpression())
!1442 = distinct !DIGlobalVariable(scope: null, file: !321, line: 734, type: !61, isLocal: true, isDefinition: true)
!1443 = !DIGlobalVariableExpression(var: !1444, expr: !DIExpression())
!1444 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1381, isLocal: true, isDefinition: true)
!1445 = !DIGlobalVariableExpression(var: !1446, expr: !DIExpression())
!1446 = distinct !DIGlobalVariable(scope: null, file: !321, line: 642, type: !12, isLocal: true, isDefinition: true)
!1447 = !DIGlobalVariableExpression(var: !1448, expr: !DIExpression())
!1448 = distinct !DIGlobalVariable(scope: null, file: !321, line: 642, type: !79, isLocal: true, isDefinition: true)
!1449 = !DIGlobalVariableExpression(var: !1450, expr: !DIExpression())
!1450 = distinct !DIGlobalVariable(scope: null, file: !321, line: 541, type: !36, isLocal: true, isDefinition: true)
!1451 = !DIGlobalVariableExpression(var: !1452, expr: !DIExpression())
!1452 = distinct !DIGlobalVariable(scope: null, file: !321, line: 273, type: !763, isLocal: true, isDefinition: true)
!1453 = !DIGlobalVariableExpression(var: !1454, expr: !DIExpression())
!1454 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !308, isLocal: true, isDefinition: true)
!1455 = !DIGlobalVariableExpression(var: !1456, expr: !DIExpression())
!1456 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !313, isLocal: true, isDefinition: true)
!1457 = !DIGlobalVariableExpression(var: !1458, expr: !DIExpression())
!1458 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1459, isLocal: true, isDefinition: true)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, align: 8, elements: !1460)
!1460 = !{!1461}
!1461 = !DISubrange(count: 46, lowerBound: 0)
!1462 = !DIGlobalVariableExpression(var: !1463, expr: !DIExpression())
!1463 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1218, type: !72, isLocal: true, isDefinition: true)
!1464 = !DIGlobalVariableExpression(var: !1465, expr: !DIExpression())
!1465 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1466, isLocal: true, isDefinition: true)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, align: 8, elements: !1467)
!1467 = !{!1468}
!1468 = !DISubrange(count: 48, lowerBound: 0)
!1469 = !DIGlobalVariableExpression(var: !1470, expr: !DIExpression())
!1470 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1471 = !DIGlobalVariableExpression(var: !1472, expr: !DIExpression())
!1472 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1473 = !DIGlobalVariableExpression(var: !1474, expr: !DIExpression())
!1474 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1315, isLocal: true, isDefinition: true)
!1475 = !DIGlobalVariableExpression(var: !1476, expr: !DIExpression())
!1476 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1315, isLocal: true, isDefinition: true)
!1477 = !DIGlobalVariableExpression(var: !1478, expr: !DIExpression())
!1478 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1479, isLocal: true, isDefinition: true)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, align: 8, elements: !1179)
!1480 = !DIGlobalVariableExpression(var: !1481, expr: !DIExpression())
!1481 = distinct !DIGlobalVariable(name: "internal/reflectlite.zerobuffer", linkageName: "internal/reflectlite.zerobuffer", scope: !321, file: !321, line: 1710, type: !92, isLocal: false, isDefinition: true, align: 64)
!1482 = !DIGlobalVariableExpression(var: !1483, expr: !DIExpression())
!1483 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1716, type: !699, isLocal: true, isDefinition: true)
!1484 = !DIGlobalVariableExpression(var: !1485, expr: !DIExpression())
!1485 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1716, type: !699, isLocal: true, isDefinition: true)
!1486 = !DIGlobalVariableExpression(var: !1487, expr: !DIExpression())
!1487 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1381, isLocal: true, isDefinition: true)
!1488 = !DIGlobalVariableExpression(var: !1489, expr: !DIExpression())
!1489 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1825, type: !1490, isLocal: true, isDefinition: true)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, align: 8, elements: !1491)
!1491 = !{!1492}
!1492 = !DISubrange(count: 21, lowerBound: 0)
!1493 = !DIGlobalVariableExpression(var: !1494, expr: !DIExpression())
!1494 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1825, type: !12, isLocal: true, isDefinition: true)
!1495 = !DIGlobalVariableExpression(var: !1496, expr: !DIExpression())
!1496 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1002, isLocal: true, isDefinition: true)
!1497 = !DIGlobalVariableExpression(var: !1498, expr: !DIExpression())
!1498 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1879, type: !1040, isLocal: true, isDefinition: true)
!1499 = !DIGlobalVariableExpression(var: !1500, expr: !DIExpression())
!1500 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1903, type: !208, isLocal: true, isDefinition: true)
!1501 = !DIGlobalVariableExpression(var: !1502, expr: !DIExpression())
!1502 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1353, isLocal: true, isDefinition: true)
!1503 = !DIGlobalVariableExpression(var: !1504, expr: !DIExpression())
!1504 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1288, isLocal: true, isDefinition: true)
!1505 = !DIGlobalVariableExpression(var: !1506, expr: !DIExpression())
!1506 = distinct !DIGlobalVariable(scope: null, file: !321, line: 2125, type: !79, isLocal: true, isDefinition: true)
!1507 = !DIGlobalVariableExpression(var: !1508, expr: !DIExpression())
!1508 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1410, isLocal: true, isDefinition: true)
!1509 = !DIGlobalVariableExpression(var: !1510, expr: !DIExpression())
!1510 = distinct !DIGlobalVariable(scope: null, file: !321, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1511 = !DIGlobalVariableExpression(var: !1512, expr: !DIExpression())
!1512 = distinct !DIGlobalVariable(scope: null, file: !1513, line: 1, type: !513, isLocal: true, isDefinition: true)
!1513 = !DIFile(filename: "visiblefields.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1514 = !DIGlobalVariableExpression(var: !1515, expr: !DIExpression())
!1515 = distinct !DIGlobalVariable(scope: null, file: !1513, line: 1, type: !1247, isLocal: true, isDefinition: true)
!1516 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1517)
!1517 = !{!1518, !1521, !1523, !1525}
!1518 = !DIGlobalVariableExpression(var: !1519, expr: !DIExpression())
!1519 = distinct !DIGlobalVariable(scope: null, file: !1520, line: 1, type: !301, isLocal: true, isDefinition: true)
!1520 = !DIFile(filename: "checkpoint.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!1521 = !DIGlobalVariableExpression(var: !1522, expr: !DIExpression())
!1522 = distinct !DIGlobalVariable(name: "type *string", scope: !86, file: !86, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1523 = !DIGlobalVariableExpression(var: !1524, expr: !DIExpression())
!1524 = distinct !DIGlobalVariable(name: "type string", scope: !86, file: !86, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1525 = !DIGlobalVariableExpression(var: !1526, expr: !DIExpression())
!1526 = distinct !DIGlobalVariable(scope: null, file: !1520, line: 1, type: !1002, isLocal: true, isDefinition: true)
!1527 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1528)
!1528 = !{!333, !379, !381, !1529, !1531, !1533, !1539, !1541, !1543, !384, !387, !1545, !391, !396, !398, !1547, !1549, !1551, !400, !402, !404, !410, !1553}
!1529 = !DIGlobalVariableExpression(var: !1530, expr: !DIExpression())
!1530 = distinct !DIGlobalVariable(name: "type *string", scope: !86, file: !86, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1531 = !DIGlobalVariableExpression(var: !1532, expr: !DIExpression())
!1532 = distinct !DIGlobalVariable(name: "type string", scope: !86, file: !86, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1533 = !DIGlobalVariableExpression(var: !1534, expr: !DIExpression())
!1534 = distinct !DIGlobalVariable(scope: null, file: !1535, line: 1, type: !1536, isLocal: true, isDefinition: true)
!1535 = !DIFile(filename: "queue.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!1536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, align: 8, elements: !1537)
!1537 = !{!1538}
!1538 = !DISubrange(count: 62, lowerBound: 0)
!1539 = !DIGlobalVariableExpression(var: !1540, expr: !DIExpression())
!1540 = distinct !DIGlobalVariable(scope: null, file: !1535, line: 1, type: !1536, isLocal: true, isDefinition: true)
!1541 = !DIGlobalVariableExpression(var: !1542, expr: !DIExpression())
!1542 = distinct !DIGlobalVariable(scope: null, file: !335, line: 89, type: !301, isLocal: true, isDefinition: true)
!1543 = !DIGlobalVariableExpression(var: !1544, expr: !DIExpression())
!1544 = distinct !DIGlobalVariable(name: "internal/task.goroutineID", linkageName: "internal/task.goroutineID", scope: !335, file: !335, line: 38, type: !51, isLocal: false, isDefinition: true, align: 64)
!1545 = !DIGlobalVariableExpression(var: !1546, expr: !DIExpression())
!1546 = distinct !DIGlobalVariable(scope: null, file: !335, line: 49, type: !436, isLocal: true, isDefinition: true)
!1547 = !DIGlobalVariableExpression(var: !1548, expr: !DIExpression())
!1548 = distinct !DIGlobalVariable(scope: null, file: !335, line: 106, type: !301, isLocal: true, isDefinition: true)
!1549 = !DIGlobalVariableExpression(var: !1550, expr: !DIExpression())
!1550 = distinct !DIGlobalVariable(scope: null, file: !335, line: 106, type: !36, isLocal: true, isDefinition: true)
!1551 = !DIGlobalVariableExpression(var: !1552, expr: !DIExpression())
!1552 = distinct !DIGlobalVariable(scope: null, file: !335, line: 116, type: !443, isLocal: true, isDefinition: true)
!1553 = !DIGlobalVariableExpression(var: !1554, expr: !DIExpression())
!1554 = distinct !DIGlobalVariable(name: "internal/task.stackScanLock", linkageName: "internal/task.stackScanLock", scope: !335, file: !335, line: 263, type: !389, isLocal: false, isDefinition: true, align: 32)
!1555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1556 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1557)
!1557 = !{!412, !415, !1558, !417, !1561, !1564, !1566, !1568, !1570, !1572, !1575, !1577, !1579, !1582, !1585, !424, !427, !1588, !429, !1590, !1607, !1609, !1612, !1615, !431, !434, !439, !441, !1617, !444, !1619, !447, !452, !1621, !454, !1623, !459, !1625, !1627, !1632, !1635, !1637, !1639, !461, !464, !466, !468, !470, !472, !474, !476, !1641, !1643, !478, !480, !482, !1645, !1647, !484, !486, !488, !1649, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !1655, !516, !1657, !1659, !1661, !1663, !1681, !1683, !1685, !1705, !1707, !1709, !1711, !1713, !1715, !1717, !1719, !518, !1721, !1723, !1726, !1728}
!1558 = !DIGlobalVariableExpression(var: !1559, expr: !DIExpression())
!1559 = distinct !DIGlobalVariable(name: "runtime.inf", linkageName: "runtime.inf", scope: !1560, file: !1560, line: 9, type: !800, isLocal: false, isDefinition: true, align: 64)
!1560 = !DIFile(filename: "float.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1561 = !DIGlobalVariableExpression(var: !1562, expr: !DIExpression())
!1562 = distinct !DIGlobalVariable(scope: null, file: !1563, line: 210, type: !443, isLocal: true, isDefinition: true)
!1563 = !DIFile(filename: "chan.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1564 = !DIGlobalVariableExpression(var: !1565, expr: !DIExpression())
!1565 = distinct !DIGlobalVariable(scope: null, file: !1563, line: 267, type: !443, isLocal: true, isDefinition: true)
!1566 = !DIGlobalVariableExpression(var: !1567, expr: !DIExpression())
!1567 = distinct !DIGlobalVariable(scope: null, file: !1563, line: 348, type: !393, isLocal: true, isDefinition: true)
!1568 = !DIGlobalVariableExpression(var: !1569, expr: !DIExpression())
!1569 = distinct !DIGlobalVariable(scope: null, file: !1563, line: 358, type: !446, isLocal: true, isDefinition: true)
!1570 = !DIGlobalVariableExpression(var: !1571, expr: !DIExpression())
!1571 = distinct !DIGlobalVariable(name: "runtime.chanSelectLock", linkageName: "runtime.chanSelectLock", scope: !1563, file: !1563, line: 402, type: !389, isLocal: false, isDefinition: true, align: 32)
!1572 = !DIGlobalVariableExpression(var: !1573, expr: !DIExpression())
!1573 = distinct !DIGlobalVariable(scope: null, file: !1574, line: 1, type: !436, isLocal: true, isDefinition: true)
!1574 = !DIFile(filename: "debug.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1575 = !DIGlobalVariableExpression(var: !1576, expr: !DIExpression())
!1576 = distinct !DIGlobalVariable(name: "type *string", scope: !86, file: !86, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1577 = !DIGlobalVariableExpression(var: !1578, expr: !DIExpression())
!1578 = distinct !DIGlobalVariable(name: "type string", scope: !86, file: !86, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1579 = !DIGlobalVariableExpression(var: !1580, expr: !DIExpression())
!1580 = distinct !DIGlobalVariable(scope: null, file: !1581, line: 13, type: !79, isLocal: true, isDefinition: true)
!1581 = !DIFile(filename: "env.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1582 = !DIGlobalVariableExpression(var: !1583, expr: !DIExpression())
!1583 = distinct !DIGlobalVariable(name: "runtime.godebugUpdate", linkageName: "runtime.godebugUpdate", scope: !1584, file: !1584, line: 142, type: !660, isLocal: false, isDefinition: true, align: 64)
!1584 = !DIFile(filename: "runtime.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1585 = !DIGlobalVariableExpression(var: !1586, expr: !DIExpression())
!1586 = distinct !DIGlobalVariable(name: "runtime.buildVersion", linkageName: "runtime.buildVersion", scope: !1587, file: !1587, line: 10, type: !46, isLocal: false, isDefinition: true, align: 64)
!1587 = !DIFile(filename: "extern.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1588 = !DIGlobalVariableExpression(var: !1589, expr: !DIExpression())
!1589 = distinct !DIGlobalVariable(scope: null, file: !426, line: 61, type: !1012, isLocal: true, isDefinition: true)
!1590 = !DIGlobalVariableExpression(var: !1591, expr: !DIExpression())
!1591 = distinct !DIGlobalVariable(name: "runtime.gcMemStats", linkageName: "runtime.gcMemStats", scope: !426, file: !426, line: 112, type: !1592, isLocal: false, isDefinition: true, align: 64)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.libgc_prof_stats", baseType: !1593)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, size: 768, align: 64, elements: !1594)
!1594 = !{!1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "heapsize_full", baseType: !51, size: 64, align: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "free_bytes_full", baseType: !51, size: 64, align: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "unmapped_bytes", baseType: !51, size: 64, align: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_allocd_since_gc", baseType: !51, size: 64, align: 64, offset: 192)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "allocd_bytes_before_gc", baseType: !51, size: 64, align: 64, offset: 256)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "non_gc_bytes", baseType: !51, size: 64, align: 64, offset: 320)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "gc_no", baseType: !51, size: 64, align: 64, offset: 384)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "markers_m1", baseType: !51, size: 64, align: 64, offset: 448)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_reclaimed_since_gc", baseType: !51, size: 64, align: 64, offset: 512)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_bytes_before_gc", baseType: !51, size: 64, align: 64, offset: 576)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "expl_freed_bytes_since_gc", baseType: !51, size: 64, align: 64, offset: 640)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "obtained_from_os_bytes", baseType: !51, size: 64, align: 64, offset: 704)
!1607 = !DIGlobalVariableExpression(var: !1608, expr: !DIExpression())
!1608 = distinct !DIGlobalVariable(scope: null, file: !426, line: 135, type: !1353, isLocal: true, isDefinition: true)
!1609 = !DIGlobalVariableExpression(var: !1610, expr: !DIExpression())
!1610 = distinct !DIGlobalVariable(scope: null, file: !1611, line: 616, type: !1152, isLocal: true, isDefinition: true)
!1611 = !DIFile(filename: "hashmap.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1612 = !DIGlobalVariableExpression(var: !1613, expr: !DIExpression())
!1613 = distinct !DIGlobalVariable(scope: null, file: !1614, line: 80, type: !1152, isLocal: true, isDefinition: true)
!1614 = !DIFile(filename: "interface.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1615 = !DIGlobalVariableExpression(var: !1616, expr: !DIExpression())
!1616 = distinct !DIGlobalVariable(scope: null, file: !1614, line: 89, type: !449, isLocal: true, isDefinition: true)
!1617 = !DIGlobalVariableExpression(var: !1618, expr: !DIExpression())
!1618 = distinct !DIGlobalVariable(scope: null, file: !433, line: 122, type: !449, isLocal: true, isDefinition: true)
!1619 = !DIGlobalVariableExpression(var: !1620, expr: !DIExpression())
!1620 = distinct !DIGlobalVariable(scope: null, file: !433, line: 189, type: !313, isLocal: true, isDefinition: true)
!1621 = !DIGlobalVariableExpression(var: !1622, expr: !DIExpression())
!1622 = distinct !DIGlobalVariable(scope: null, file: !433, line: 205, type: !436, isLocal: true, isDefinition: true)
!1623 = !DIGlobalVariableExpression(var: !1624, expr: !DIExpression())
!1624 = distinct !DIGlobalVariable(scope: null, file: !433, line: 217, type: !443, isLocal: true, isDefinition: true)
!1625 = !DIGlobalVariableExpression(var: !1626, expr: !DIExpression())
!1626 = distinct !DIGlobalVariable(scope: null, file: !433, line: 227, type: !120, isLocal: true, isDefinition: true)
!1627 = !DIGlobalVariableExpression(var: !1628, expr: !DIExpression())
!1628 = distinct !DIGlobalVariable(scope: null, file: !433, line: 231, type: !1629, isLocal: true, isDefinition: true)
!1629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, align: 8, elements: !1630)
!1630 = !{!1631}
!1631 = !DISubrange(count: 52, lowerBound: 0)
!1632 = !DIGlobalVariableExpression(var: !1633, expr: !DIExpression())
!1633 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1634 = !DIFile(filename: "poll.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1635 = !DIGlobalVariableExpression(var: !1636, expr: !DIExpression())
!1636 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !443, isLocal: true, isDefinition: true)
!1637 = !DIGlobalVariableExpression(var: !1638, expr: !DIExpression())
!1638 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !446, isLocal: true, isDefinition: true)
!1639 = !DIGlobalVariableExpression(var: !1640, expr: !DIExpression())
!1640 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !706, isLocal: true, isDefinition: true)
!1641 = !DIGlobalVariableExpression(var: !1642, expr: !DIExpression())
!1642 = distinct !DIGlobalVariable(scope: null, file: !463, line: 355, type: !36, isLocal: true, isDefinition: true)
!1643 = !DIGlobalVariableExpression(var: !1644, expr: !DIExpression())
!1644 = distinct !DIGlobalVariable(scope: null, file: !463, line: 357, type: !54, isLocal: true, isDefinition: true)
!1645 = !DIGlobalVariableExpression(var: !1646, expr: !DIExpression())
!1646 = distinct !DIGlobalVariable(scope: null, file: !1584, line: 36, type: !763, isLocal: true, isDefinition: true)
!1647 = !DIGlobalVariableExpression(var: !1648, expr: !DIExpression())
!1648 = distinct !DIGlobalVariable(scope: null, file: !1584, line: 97, type: !313, isLocal: true, isDefinition: true)
!1649 = !DIGlobalVariableExpression(var: !1650, expr: !DIExpression())
!1650 = distinct !DIGlobalVariable(name: "runtime.args", linkageName: "runtime.args", scope: !419, file: !419, line: 107, type: !1651, isLocal: false, isDefinition: true, align: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]string", size: 192, align: 64, elements: !1652)
!1652 = !{!1653, !50, !678}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !1654, size: 64, align: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64, dwarfAddressSpace: 0)
!1655 = !DIGlobalVariableExpression(var: !1656, expr: !DIExpression())
!1656 = distinct !DIGlobalVariable(name: "runtime.hasSignals", linkageName: "runtime.hasSignals", scope: !419, file: !419, line: 345, type: !376, isLocal: false, isDefinition: true, align: 8)
!1657 = !DIGlobalVariableExpression(var: !1658, expr: !DIExpression())
!1658 = distinct !DIGlobalVariable(scope: null, file: !419, line: 365, type: !706, isLocal: true, isDefinition: true)
!1659 = !DIGlobalVariableExpression(var: !1660, expr: !DIExpression())
!1660 = distinct !DIGlobalVariable(scope: null, file: !419, line: 382, type: !706, isLocal: true, isDefinition: true)
!1661 = !DIGlobalVariableExpression(var: !1662, expr: !DIExpression())
!1662 = distinct !DIGlobalVariable(scope: null, file: !419, line: 392, type: !706, isLocal: true, isDefinition: true)
!1663 = !DIGlobalVariableExpression(var: !1664, expr: !DIExpression())
!1664 = distinct !DIGlobalVariable(name: "runtime.signalRecvWaiter", linkageName: "runtime.signalRecvWaiter", scope: !419, file: !419, line: 447, type: !1665, isLocal: false, isDefinition: true, align: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Pointer[internal/task.Task]", baseType: !1666)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !1667)
!1667 = !{!1668, !371, !1680}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !1669, align: 64)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1670, align: 64, elements: !129)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64, align: 64, dwarfAddressSpace: 0)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !1672)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !1673)
!1673 = !{!1674, !341, !342, !344, !1675, !374, !375, !377, !378}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !1670, size: 64, align: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !1676, size: 384, align: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !1677)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !1678)
!1678 = !{!352, !353, !355, !356, !1679, !358}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !1670, size: 64, align: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !92, size: 64, align: 64)
!1681 = !DIGlobalVariableExpression(var: !1682, expr: !DIExpression())
!1682 = distinct !DIGlobalVariable(scope: null, file: !419, line: 458, type: !1288, isLocal: true, isDefinition: true)
!1683 = !DIGlobalVariableExpression(var: !1684, expr: !DIExpression())
!1684 = distinct !DIGlobalVariable(scope: null, file: !419, line: 514, type: !513, isLocal: true, isDefinition: true)
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
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !660, size: 128, align: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "arg", baseType: !1703, size: 128, align: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "any", baseType: !783)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "callback", baseType: !660, size: 128, align: 64, offset: 128)
!1705 = !DIGlobalVariableExpression(var: !1706, expr: !DIExpression())
!1706 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 12, type: !54, isLocal: true, isDefinition: true)
!1707 = !DIGlobalVariableExpression(var: !1708, expr: !DIExpression())
!1708 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 19, type: !54, isLocal: true, isDefinition: true)
!1709 = !DIGlobalVariableExpression(var: !1710, expr: !DIExpression())
!1710 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 26, type: !54, isLocal: true, isDefinition: true)
!1711 = !DIGlobalVariableExpression(var: !1712, expr: !DIExpression())
!1712 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 45, type: !763, isLocal: true, isDefinition: true)
!1713 = !DIGlobalVariableExpression(var: !1714, expr: !DIExpression())
!1714 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 51, type: !393, isLocal: true, isDefinition: true)
!1715 = !DIGlobalVariableExpression(var: !1716, expr: !DIExpression())
!1716 = distinct !DIGlobalVariable(name: "runtime.timerQueueLock", linkageName: "runtime.timerQueueLock", scope: !520, file: !520, line: 16, type: !389, isLocal: false, isDefinition: true, align: 32)
!1717 = !DIGlobalVariableExpression(var: !1718, expr: !DIExpression())
!1718 = distinct !DIGlobalVariable(name: "runtime.timerQueueStarted", linkageName: "runtime.timerQueueStarted", scope: !520, file: !520, line: 17, type: !376, isLocal: false, isDefinition: true, align: 8)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(name: "runtime.timerFutex", linkageName: "runtime.timerFutex", scope: !520, file: !520, line: 18, type: !363, isLocal: false, isDefinition: true, align: 32)
!1721 = !DIGlobalVariableExpression(var: !1722, expr: !DIExpression())
!1722 = distinct !DIGlobalVariable(name: "runtime.atomicsLock", linkageName: "runtime.atomicsLock", scope: !520, file: !520, line: 151, type: !390, isLocal: false, isDefinition: true, align: 32)
!1723 = !DIGlobalVariableExpression(var: !1724, expr: !DIExpression())
!1724 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !318, isLocal: true, isDefinition: true)
!1725 = !DIFile(filename: "sync.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !318, isLocal: true, isDefinition: true)
!1728 = !DIGlobalVariableExpression(var: !1729, expr: !DIExpression())
!1729 = distinct !DIGlobalVariable(scope: null, file: !1730, line: 45, type: !223, isLocal: true, isDefinition: true)
!1730 = !DIFile(filename: "time_go123.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1731 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1732 = !{!"TinyGo version 0.41.1"}
!1733 = !{i32 2, !"Debug Info Version", i32 3}
!1734 = !{i32 7, !"Dwarf Version", i32 4}
!1735 = distinct !DISubprogram(name: "math/bits.Len", linkageName: "math/bits.Len", scope: !775, file: !775, line: 302, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !1739)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!1738}
!1738 = !DIBasicType(name: "uint", size: 64, encoding: DW_ATE_unsigned)
!1739 = !{!1740}
!1740 = !DILocalVariable(name: "x", arg: 1, scope: !1735, file: !775, line: 302, type: !1738)
!1741 = !DILocation(line: 302, column: 6, scope: !1735)
!1742 = distinct !DISubprogram(name: "math.Abs", linkageName: "math.Abs", scope: !1743, file: !1743, line: 13, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1746)
!1743 = !DIFile(filename: "abs.go", directory: "/usr/local/go/src/math")
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!800}
!1746 = !{!1747}
!1747 = !DILocalVariable(name: "x", arg: 1, scope: !1742, file: !1743, line: 13, type: !800)
!1748 = !DILocation(line: 13, column: 6, scope: !1742)
!1749 = !DILocation(line: 14, column: 37, scope: !1742)
!1750 = !DILocation(line: 14, column: 36, scope: !1742)
!1751 = !DILocation(line: 14, column: 40, scope: !1742)
!1752 = !DILocation(line: 14, column: 24, scope: !1742)
!1753 = !DILocation(line: 14, column: 2, scope: !1742)
!1754 = distinct !DISubprogram(name: "math.Float64bits", linkageName: "math.Float64bits", scope: !1755, file: !1755, line: 35, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1756)
!1755 = !DIFile(filename: "unsafe.go", directory: "/usr/local/go/src/math")
!1756 = !{!1757}
!1757 = !DILocalVariable(name: "f", arg: 1, scope: !1754, file: !1755, line: 35, type: !800)
!1758 = !DILocation(line: 35, column: 6, scope: !1754)
!1759 = !DILocation(line: 35, column: 18, scope: !1754)
!1760 = !DILocation(line: 35, column: 45, scope: !1754)
!1761 = !DILocation(line: 35, column: 38, scope: !1754)
!1762 = distinct !DISubprogram(name: "math.Float64frombits", linkageName: "math.Float64frombits", scope: !1755, file: !1755, line: 41, type: !1763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1765)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!343}
!1765 = !{!1766}
!1766 = !DILocalVariable(name: "b", arg: 1, scope: !1762, file: !1755, line: 41, type: !343)
!1767 = !DILocation(line: 41, column: 6, scope: !1762)
!1768 = !DILocation(line: 41, column: 22, scope: !1762)
!1769 = !DILocation(line: 41, column: 49, scope: !1762)
!1770 = !DILocation(line: 41, column: 42, scope: !1762)
!1771 = distinct !DISubprogram(name: "math.Log", linkageName: "math.Log", scope: !1772, file: !1772, line: 81, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1773)
!1772 = !DIFile(filename: "log.go", directory: "/usr/local/go/src/math")
!1773 = !{!1774}
!1774 = !DILocalVariable(name: "x", arg: 1, scope: !1771, file: !1772, line: 81, type: !800)
!1775 = !DILocation(line: 81, column: 6, scope: !1771)
!1776 = distinct !DISubprogram(name: "math.IsNaN", linkageName: "math.IsNaN", scope: !1777, file: !1777, line: 34, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1778)
!1777 = !DIFile(filename: "bits.go", directory: "/usr/local/go/src/math")
!1778 = !{!1779}
!1779 = !DILocalVariable(name: "f", arg: 1, scope: !1776, file: !1777, line: 34, type: !800)
!1780 = !DILocation(line: 34, column: 6, scope: !1776)
!1781 = !DILocation(line: 39, column: 9, scope: !1776)
!1782 = !DILocation(line: 39, column: 14, scope: !1776)
!1783 = !DILocation(line: 39, column: 11, scope: !1776)
!1784 = !DILocation(line: 39, column: 2, scope: !1776)
!1785 = distinct !DISubprogram(name: "math.IsInf", linkageName: "math.IsInf", scope: !1777, file: !1777, line: 46, type: !1786, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1789)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!800, !1788}
!1788 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!1789 = !{!1790, !1791}
!1790 = !DILocalVariable(name: "f", arg: 1, scope: !1785, file: !1777, line: 46, type: !800)
!1791 = !DILocalVariable(name: "sign", arg: 2, scope: !1785, file: !1777, line: 46, type: !1788)
!1792 = !DILocation(line: 46, column: 6, scope: !1785)
!1793 = !DILocation(line: 51, column: 5, scope: !1785)
!1794 = !DILocation(line: 51, column: 10, scope: !1785)
!1795 = !DILocation(line: 0, scope: !1785)
!1796 = !DILocation(line: 52, column: 11, scope: !1785)
!1797 = !DILocation(line: 52, column: 10, scope: !1785)
!1798 = !DILocation(line: 52, column: 3, scope: !1785)
!1799 = !DILocation(line: 46, column: 12, scope: !1785)
!1800 = !DILocation(line: 56, column: 9, scope: !1785)
!1801 = !DILocation(line: 56, column: 11, scope: !1785)
!1802 = !DILocation(line: 56, column: 2, scope: !1785)
!1803 = !DILocation(line: 53, column: 12, scope: !1785)
!1804 = !DILocation(line: 53, column: 17, scope: !1785)
!1805 = !DILocation(line: 54, column: 8, scope: !1785)
!1806 = !DILocation(line: 54, column: 7, scope: !1785)
!1807 = !DILocation(line: 54, column: 3, scope: !1785)
!1808 = distinct !DISubprogram(name: "math.normalize", linkageName: "math.normalize", scope: !1777, file: !1777, line: 61, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1809)
!1809 = !{!1810}
!1810 = !DILocalVariable(name: "x", arg: 1, scope: !1808, file: !1777, line: 61, type: !800)
!1811 = !DILocation(line: 61, column: 6, scope: !1808)
!1812 = !DILocation(line: 63, column: 9, scope: !1808)
!1813 = !DILocation(line: 63, column: 8, scope: !1808)
!1814 = !DILocation(line: 63, column: 12, scope: !1808)
!1815 = !DILocation(line: 0, scope: !1808)
!1816 = !DILocation(line: 64, column: 10, scope: !1808)
!1817 = !DILocation(line: 64, column: 12, scope: !1808)
!1818 = !DILocation(line: 64, column: 3, scope: !1808)
!1819 = !DILocation(line: 66, column: 9, scope: !1808)
!1820 = !DILocation(line: 66, column: 2, scope: !1808)
!1821 = distinct !DISubprogram(name: "math.Ceil", linkageName: "math.Ceil", scope: !1822, file: !1822, line: 43, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1823)
!1822 = !DIFile(filename: "floor.go", directory: "/usr/local/go/src/math")
!1823 = !{!1824}
!1824 = !DILocalVariable(name: "x", arg: 1, scope: !1821, file: !1822, line: 43, type: !800)
!1825 = !DILocation(line: 43, column: 6, scope: !1821)
!1826 = distinct !DISubprogram(name: "math.Frexp", linkageName: "math.Frexp", scope: !1827, file: !1827, line: 17, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1828)
!1827 = !DIFile(filename: "frexp.go", directory: "/usr/local/go/src/math")
!1828 = !{!1829}
!1829 = !DILocalVariable(name: "f", arg: 1, scope: !1826, file: !1827, line: 17, type: !800)
!1830 = !DILocation(line: 17, column: 6, scope: !1826)
!1831 = !DILocation(line: 0, scope: !1826)
!1832 = !DILocation(line: 19, column: 20, scope: !1826)
!1833 = !DILocation(line: 19, column: 19, scope: !1826)
!1834 = !DILocation(line: 19, column: 3, scope: !1826)
!1835 = !DILocation(line: 21, column: 15, scope: !1826)
!1836 = !DILocation(line: 21, column: 14, scope: !1826)
!1837 = !DILocation(line: 21, column: 2, scope: !1826)
!1838 = distinct !DISubprogram(name: "math.archFrexp", linkageName: "math.archFrexp", scope: !2, file: !2, line: 92, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1839)
!1839 = !{!1840}
!1840 = !DILocalVariable(name: "x", arg: 1, scope: !1838, file: !2, line: 92, type: !800)
!1841 = !DILocation(line: 92, column: 6, scope: !1838)
!1842 = !DILocation(line: 93, column: 7, scope: !1838)
!1843 = distinct !DISubprogram(name: "math.frexp", linkageName: "math.frexp", scope: !1827, file: !1827, line: 24, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1844)
!1844 = !{!1845, !1846, !1847, !1848}
!1845 = !DILocalVariable(name: "f", arg: 1, scope: !1843, file: !1827, line: 24, type: !800)
!1846 = !DILocalVariable(name: "exp", scope: !1843, file: !1827, line: 24, type: !1788)
!1847 = !DILocalVariable(name: "x", scope: !1843, file: !1827, line: 33, type: !343)
!1848 = !DILocalVariable(name: "frac", scope: !1843, file: !1827, line: 24, type: !800)
!1849 = !DILocation(line: 24, column: 6, scope: !1843)
!1850 = !DILocation(line: 27, column: 7, scope: !1843)
!1851 = !DILocation(line: 27, column: 9, scope: !1843)
!1852 = !DILocation(line: 0, scope: !1843)
!1853 = !DILocation(line: 28, column: 10, scope: !1843)
!1854 = !DILocation(line: 28, column: 3, scope: !1843)
!1855 = !DILocation(line: 29, column: 13, scope: !1843)
!1856 = !DILocation(line: 29, column: 12, scope: !1843)
!1857 = !DILocation(line: 29, column: 19, scope: !1843)
!1858 = !DILocation(line: 30, column: 10, scope: !1843)
!1859 = !DILocation(line: 30, column: 3, scope: !1843)
!1860 = !DILocation(line: 32, column: 21, scope: !1843)
!1861 = !DILocation(line: 32, column: 20, scope: !1843)
!1862 = !DILocation(line: 32, column: 2, scope: !1843)
!1863 = !DILocation(line: 32, column: 5, scope: !1843)
!1864 = !DILocation(line: 33, column: 19, scope: !1843)
!1865 = !DILocation(line: 33, column: 18, scope: !1843)
!1866 = !DILocation(line: 33, column: 2, scope: !1843)
!1867 = !DILocation(line: 34, column: 14, scope: !1843)
!1868 = !DILocation(line: 34, column: 15, scope: !1843)
!1869 = !DILocation(line: 34, column: 23, scope: !1843)
!1870 = !DILocation(line: 34, column: 30, scope: !1843)
!1871 = !DILocation(line: 34, column: 37, scope: !1843)
!1872 = !DILocation(line: 34, column: 2, scope: !1843)
!1873 = !DILocation(line: 35, column: 2, scope: !1843)
!1874 = !DILocation(line: 36, column: 2, scope: !1843)
!1875 = !DILocation(line: 37, column: 25, scope: !1843)
!1876 = !DILocation(line: 37, column: 24, scope: !1843)
!1877 = !DILocation(line: 37, column: 2, scope: !1843)
!1878 = !DILocation(line: 38, column: 2, scope: !1843)
!1879 = !DILocation(line: 29, column: 28, scope: !1843)
!1880 = !DILocation(line: 29, column: 27, scope: !1843)
!1881 = distinct !DISubprogram(name: "math.Log2", linkageName: "math.Log2", scope: !1882, file: !1882, line: 22, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1883)
!1882 = !DIFile(filename: "log10.go", directory: "/usr/local/go/src/math")
!1883 = !{!1884}
!1884 = !DILocalVariable(name: "x", arg: 1, scope: !1881, file: !1882, line: 22, type: !800)
!1885 = !DILocation(line: 22, column: 6, scope: !1881)
!1886 = !DILocation(line: 0, scope: !1881)
!1887 = !DILocation(line: 24, column: 19, scope: !1881)
!1888 = !DILocation(line: 24, column: 18, scope: !1881)
!1889 = !DILocation(line: 24, column: 3, scope: !1881)
!1890 = !DILocation(line: 26, column: 14, scope: !1881)
!1891 = !DILocation(line: 26, column: 13, scope: !1881)
!1892 = !DILocation(line: 26, column: 2, scope: !1881)
!1893 = distinct !DISubprogram(name: "math.archLog2", linkageName: "math.archLog2", scope: !2, file: !2, line: 110, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1894)
!1894 = !{!1895}
!1895 = !DILocalVariable(name: "x", arg: 1, scope: !1893, file: !2, line: 110, type: !800)
!1896 = !DILocation(line: 110, column: 6, scope: !1893)
!1897 = !DILocation(line: 111, column: 7, scope: !1893)
!1898 = distinct !DISubprogram(name: "math.log2", linkageName: "math.log2", scope: !1882, file: !1882, line: 29, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !1899)
!1899 = !{!1900, !1901, !1902}
!1900 = !DILocalVariable(name: "x", arg: 1, scope: !1898, file: !1882, line: 29, type: !800)
!1901 = !DILocalVariable(name: "frac", scope: !1898, file: !1882, line: 30, type: !800)
!1902 = !DILocalVariable(name: "exp", scope: !1898, file: !1882, line: 30, type: !1788)
!1903 = !DILocation(line: 29, column: 6, scope: !1898)
!1904 = !DILocation(line: 30, column: 21, scope: !1898)
!1905 = !DILocation(line: 30, column: 20, scope: !1898)
!1906 = !DILocation(line: 30, column: 2, scope: !1898)
!1907 = !DILocation(line: 30, column: 8, scope: !1898)
!1908 = !DILocation(line: 33, column: 5, scope: !1898)
!1909 = !DILocation(line: 33, column: 10, scope: !1898)
!1910 = !DILocation(line: 0, scope: !1898)
!1911 = !DILocation(line: 34, column: 18, scope: !1898)
!1912 = !DILocation(line: 34, column: 22, scope: !1898)
!1913 = !DILocation(line: 34, column: 17, scope: !1898)
!1914 = !DILocation(line: 34, column: 3, scope: !1898)
!1915 = !DILocation(line: 36, column: 13, scope: !1898)
!1916 = !DILocation(line: 36, column: 12, scope: !1898)
!1917 = !DILocation(line: 36, column: 18, scope: !1898)
!1918 = !DILocation(line: 36, column: 37, scope: !1898)
!1919 = !DILocation(line: 36, column: 36, scope: !1898)
!1920 = !DILocation(line: 36, column: 27, scope: !1898)
!1921 = !DILocation(line: 36, column: 2, scope: !1898)
!1922 = distinct !DISubprogram(name: "sync/atomic.SwapUint32", linkageName: "sync/atomic.SwapUint32", scope: !1923, file: !1923, line: 77, type: !1924, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1927)
!1923 = !DIFile(filename: "doc.go", directory: "/usr/local/go/src/sync/atomic")
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!1926, !106}
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64, dwarfAddressSpace: 0)
!1927 = !{!1928, !1929}
!1928 = !DILocalVariable(name: "addr", arg: 1, scope: !1922, file: !1923, line: 77, type: !1926)
!1929 = !DILocalVariable(name: "new", arg: 2, scope: !1922, file: !1923, line: 77, type: !106)
!1930 = !DILocation(line: 77, column: 6, scope: !1922)
!1931 = distinct !DISubprogram(name: "sync/atomic.CompareAndSwapUint32", linkageName: "sync/atomic.CompareAndSwapUint32", scope: !1923, file: !1923, line: 99, type: !1932, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1934)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1926, !106, !106}
!1934 = !{!1935, !1936, !1937}
!1935 = !DILocalVariable(name: "addr", arg: 1, scope: !1931, file: !1923, line: 99, type: !1926)
!1936 = !DILocalVariable(name: "old", arg: 2, scope: !1931, file: !1923, line: 99, type: !106)
!1937 = !DILocalVariable(name: "new", arg: 3, scope: !1931, file: !1923, line: 99, type: !106)
!1938 = !DILocation(line: 99, column: 6, scope: !1931)
!1939 = distinct !DISubprogram(name: "sync/atomic.AddUint32", linkageName: "sync/atomic.AddUint32", scope: !1923, file: !1923, line: 123, type: !1924, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1940)
!1940 = !{!1941, !1942}
!1941 = !DILocalVariable(name: "addr", arg: 1, scope: !1939, file: !1923, line: 123, type: !1926)
!1942 = !DILocalVariable(name: "delta", arg: 2, scope: !1939, file: !1923, line: 123, type: !106)
!1943 = !DILocation(line: 123, column: 6, scope: !1939)
!1944 = distinct !DISubprogram(name: "sync/atomic.LoadUint32", linkageName: "sync/atomic.LoadUint32", scope: !1923, file: !1923, line: 183, type: !1945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1947)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!1926}
!1947 = !{!1948}
!1948 = !DILocalVariable(name: "addr", arg: 1, scope: !1944, file: !1923, line: 183, type: !1926)
!1949 = !DILocation(line: 183, column: 6, scope: !1944)
!1950 = distinct !DISubprogram(name: "sync/atomic.StoreUint32", linkageName: "sync/atomic.StoreUint32", scope: !1923, file: !1923, line: 205, type: !1924, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1951)
!1951 = !{!1952, !1953}
!1952 = !DILocalVariable(name: "addr", arg: 1, scope: !1950, file: !1923, line: 205, type: !1926)
!1953 = !DILocalVariable(name: "val", arg: 2, scope: !1950, file: !1923, line: 205, type: !106)
!1954 = !DILocation(line: 205, column: 6, scope: !1950)
!1955 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Add", linkageName: "(*sync/atomic.Uint32).Add", scope: !1956, file: !1956, line: 161, type: !1957, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1960)
!1956 = !DIFile(filename: "type.go", directory: "/usr/local/go/src/sync/atomic")
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!1959, !106}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64, dwarfAddressSpace: 0)
!1960 = !{!1961, !1962}
!1961 = !DILocalVariable(name: "x", arg: 1, scope: !1955, file: !1956, line: 161, type: !1959)
!1962 = !DILocalVariable(name: "delta", arg: 2, scope: !1955, file: !1956, line: 161, type: !106)
!1963 = !DILocation(line: 161, column: 18, scope: !1955)
!1964 = !DILocation(line: 161, column: 69, scope: !1955)
!1965 = !DILocation(line: 161, column: 71, scope: !1955)
!1966 = !DILocation(line: 161, column: 74, scope: !1955)
!1967 = !DILocation(line: 161, column: 67, scope: !1955)
!1968 = !DILocation(line: 161, column: 51, scope: !1955)
!1969 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).CompareAndSwap", linkageName: "(*sync/atomic.Uint32).CompareAndSwap", scope: !1956, file: !1956, line: 156, type: !1970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!1959, !106, !106}
!1972 = !{!1973, !1974, !1975}
!1973 = !DILocalVariable(name: "x", arg: 1, scope: !1969, file: !1956, line: 156, type: !1959)
!1974 = !DILocalVariable(name: "old", arg: 2, scope: !1969, file: !1956, line: 156, type: !106)
!1975 = !DILocalVariable(name: "new", arg: 3, scope: !1969, file: !1956, line: 156, type: !106)
!1976 = !DILocation(line: 156, column: 18, scope: !1969)
!1977 = !DILocation(line: 157, column: 31, scope: !1969)
!1978 = !DILocation(line: 157, column: 33, scope: !1969)
!1979 = !DILocation(line: 157, column: 36, scope: !1969)
!1980 = !DILocation(line: 157, column: 41, scope: !1969)
!1981 = !DILocation(line: 157, column: 29, scope: !1969)
!1982 = !DILocation(line: 157, column: 2, scope: !1969)
!1983 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Load", linkageName: "(*sync/atomic.Uint32).Load", scope: !1956, file: !1956, line: 147, type: !1984, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1986)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!1959}
!1986 = !{!1987}
!1987 = !DILocalVariable(name: "x", arg: 1, scope: !1983, file: !1956, line: 147, type: !1959)
!1988 = !DILocation(line: 147, column: 18, scope: !1983)
!1989 = !DILocation(line: 147, column: 53, scope: !1983)
!1990 = !DILocation(line: 147, column: 55, scope: !1983)
!1991 = !DILocation(line: 147, column: 51, scope: !1983)
!1992 = !DILocation(line: 147, column: 34, scope: !1983)
!1993 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Store", linkageName: "(*sync/atomic.Uint32).Store", scope: !1956, file: !1956, line: 150, type: !1957, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1994)
!1994 = !{!1995, !1996}
!1995 = !DILocalVariable(name: "x", arg: 1, scope: !1993, file: !1956, line: 150, type: !1959)
!1996 = !DILocalVariable(name: "val", arg: 2, scope: !1993, file: !1956, line: 150, type: !106)
!1997 = !DILocation(line: 150, column: 18, scope: !1993)
!1998 = !DILocation(line: 150, column: 51, scope: !1993)
!1999 = !DILocation(line: 150, column: 53, scope: !1993)
!2000 = !DILocation(line: 150, column: 56, scope: !1993)
!2001 = !DILocation(line: 150, column: 49, scope: !1993)
!2002 = !DILocation(line: 150, column: 62, scope: !1993)
!2003 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Swap", linkageName: "(*sync/atomic.Uint32).Swap", scope: !1956, file: !1956, line: 153, type: !1957, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !2004)
!2004 = !{!2005, !2006}
!2005 = !DILocalVariable(name: "x", arg: 1, scope: !2003, file: !1956, line: 153, type: !1959)
!2006 = !DILocalVariable(name: "new", arg: 2, scope: !2003, file: !1956, line: 153, type: !106)
!2007 = !DILocation(line: 153, column: 18, scope: !2003)
!2008 = !DILocation(line: 153, column: 69, scope: !2003)
!2009 = !DILocation(line: 153, column: 71, scope: !2003)
!2010 = !DILocation(line: 153, column: 74, scope: !2003)
!2011 = !DILocation(line: 153, column: 67, scope: !2003)
!2012 = !DILocation(line: 153, column: 50, scope: !2003)
!2013 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wait", linkageName: "(*internal/futex.Futex).Wait", scope: !2014, file: !2014, line: 25, type: !2015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !2018)
!2014 = !DIFile(filename: "futex.go", directory: "/usr/local/lib/tinygo/src/internal/futex")
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!2017, !106}
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64, dwarfAddressSpace: 0)
!2018 = !{!2019, !2020}
!2019 = !DILocalVariable(name: "f", arg: 1, scope: !2013, file: !2014, line: 25, type: !2017)
!2020 = !DILocalVariable(name: "cmp", arg: 2, scope: !2013, file: !2014, line: 25, type: !106)
!2021 = !DILocation(line: 25, column: 17, scope: !2013)
!2022 = !DILocation(line: 26, column: 46, scope: !2013)
!2023 = !DILocation(line: 26, column: 48, scope: !2013)
!2024 = !DILocation(line: 26, column: 58, scope: !2013)
!2025 = !DILocation(line: 26, column: 19, scope: !2013)
!2026 = !DILocation(line: 44, column: 2, scope: !2013)
!2027 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wake", linkageName: "(*internal/futex.Futex).Wake", scope: !2014, file: !2014, line: 53, type: !2028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !2030)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!2017}
!2030 = !{!2031}
!2031 = !DILocalVariable(name: "f", arg: 1, scope: !2027, file: !2014, line: 53, type: !2017)
!2032 = !DILocation(line: 53, column: 17, scope: !2027)
!2033 = !DILocation(line: 54, column: 46, scope: !2027)
!2034 = !DILocation(line: 54, column: 48, scope: !2027)
!2035 = !DILocation(line: 54, column: 19, scope: !2027)
!2036 = !DILocation(line: 55, column: 2, scope: !2027)
!2037 = distinct !DISubprogram(name: "(*internal/futex.Futex).WakeAll", linkageName: "(*internal/futex.Futex).WakeAll", scope: !2014, file: !2014, line: 58, type: !2028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !2038)
!2038 = !{!2039}
!2039 = !DILocalVariable(name: "f", arg: 1, scope: !2037, file: !2014, line: 58, type: !2017)
!2040 = !DILocation(line: 58, column: 17, scope: !2037)
!2041 = !DILocation(line: 59, column: 50, scope: !2037)
!2042 = !DILocation(line: 59, column: 52, scope: !2037)
!2043 = !DILocation(line: 59, column: 23, scope: !2037)
!2044 = !DILocation(line: 60, column: 2, scope: !2037)
!2045 = distinct !DISubprogram(name: "(internal/gclayout.Layout).AsPtr", linkageName: "(internal/gclayout.Layout).AsPtr", scope: !2046, file: !2046, line: 26, type: !2047, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1021, retainedNodes: !2050)
!2046 = !DIFile(filename: "gclayout.go", directory: "/usr/local/lib/tinygo/src/internal/gclayout")
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!2049}
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/gclayout.Layout", baseType: !51)
!2050 = !{!2051}
!2051 = !DILocalVariable(name: "l", arg: 1, scope: !2045, file: !2046, line: 26, type: !2049)
!2052 = !DILocation(line: 26, column: 17, scope: !2045)
!2053 = !DILocation(line: 26, column: 64, scope: !2045)
!2054 = !DILocation(line: 26, column: 63, scope: !2045)
!2055 = !DILocation(line: 26, column: 42, scope: !2045)
!2056 = distinct !DISubprogram(name: "internal/itoa.Itoa", linkageName: "internal/itoa.Itoa", scope: !11, file: !11, line: 10, type: !2057, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!1788}
!2059 = !{!2060}
!2060 = !DILocalVariable(name: "val", arg: 1, scope: !2056, file: !11, line: 10, type: !1788)
!2061 = !DILocation(line: 10, column: 6, scope: !2056)
!2062 = !DILocation(line: 11, column: 5, scope: !2056)
!2063 = !DILocation(line: 11, column: 9, scope: !2056)
!2064 = !DILocation(line: 0, scope: !2056)
!2065 = !DILocation(line: 12, column: 28, scope: !2056)
!2066 = !DILocation(line: 12, column: 27, scope: !2056)
!2067 = !DILocation(line: 12, column: 21, scope: !2056)
!2068 = !DILocation(line: 12, column: 14, scope: !2056)
!2069 = !DILocation(line: 12, column: 3, scope: !2056)
!2070 = !DILocation(line: 14, column: 20, scope: !2056)
!2071 = !DILocation(line: 14, column: 14, scope: !2056)
!2072 = !DILocation(line: 14, column: 2, scope: !2056)
!2073 = distinct !DISubprogram(name: "internal/itoa.Uitoa", linkageName: "internal/itoa.Uitoa", scope: !11, file: !11, line: 18, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !2074)
!2074 = !{!2075, !2076, !2077}
!2075 = !DILocalVariable(name: "val", arg: 1, scope: !2073, file: !11, line: 18, type: !1738)
!2076 = !DILocalVariable(name: "i", scope: !2073, file: !11, line: 23, type: !1788)
!2077 = !DILocalVariable(name: "q", scope: !2073, file: !11, line: 25, type: !1738)
!2078 = !DILocation(line: 18, column: 6, scope: !2073)
!2079 = !DILocation(line: 19, column: 5, scope: !2073)
!2080 = !DILocation(line: 19, column: 9, scope: !2073)
!2081 = !DILocation(line: 0, scope: !2073)
!2082 = !DILocation(line: 20, column: 3, scope: !2073)
!2083 = !DILocation(line: 22, column: 6, scope: !2073)
!2084 = !DILocation(line: 23, column: 2, scope: !2073)
!2085 = !DILocation(line: 18, column: 12, scope: !2073)
!2086 = !DILocation(line: 24, column: 6, scope: !2073)
!2087 = !DILocation(line: 24, column: 10, scope: !2073)
!2088 = !DILocation(line: 25, column: 8, scope: !2073)
!2089 = !DILocation(line: 25, column: 12, scope: !2073)
!2090 = !DILocation(line: 25, column: 3, scope: !2073)
!2091 = !DILocation(line: 26, column: 7, scope: !2073)
!2092 = !DILocation(line: 26, column: 23, scope: !2073)
!2093 = !DILocation(line: 26, column: 21, scope: !2073)
!2094 = !DILocation(line: 26, column: 29, scope: !2073)
!2095 = !DILocation(line: 26, column: 30, scope: !2073)
!2096 = !DILocation(line: 26, column: 27, scope: !2073)
!2097 = !DILocation(line: 26, column: 16, scope: !2073)
!2098 = !DILocation(line: 26, column: 6, scope: !2073)
!2099 = !DILocation(line: 27, column: 3, scope: !2073)
!2100 = !DILocation(line: 28, column: 9, scope: !2073)
!2101 = !DILocation(line: 28, column: 3, scope: !2073)
!2102 = !DILocation(line: 31, column: 6, scope: !2073)
!2103 = !DILocation(line: 31, column: 22, scope: !2073)
!2104 = !DILocation(line: 31, column: 20, scope: !2073)
!2105 = !DILocation(line: 31, column: 15, scope: !2073)
!2106 = !DILocation(line: 31, column: 5, scope: !2073)
!2107 = !DILocation(line: 32, column: 20, scope: !2073)
!2108 = !DILocation(line: 32, column: 19, scope: !2073)
!2109 = !DILocation(line: 32, column: 15, scope: !2073)
!2110 = !DILocation(line: 32, column: 2, scope: !2073)
!2111 = distinct !DISubprogram(name: "unicode/utf8.DecodeRuneInString", linkageName: "unicode/utf8.DecodeRuneInString", scope: !19, file: !19, line: 219, type: !2112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2114)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!46}
!2114 = !{!2115, !2116, !2118}
!2115 = !DILocalVariable(name: "s", arg: 1, scope: !2111, file: !19, line: 219, type: !46)
!2116 = !DILocalVariable(name: "r", scope: !2111, file: !19, line: 219, type: !2117)
!2117 = !DIBasicType(name: "rune", size: 32, encoding: DW_ATE_signed)
!2118 = !DILocalVariable(name: "size", scope: !2111, file: !19, line: 219, type: !1788)
!2119 = !DILocation(line: 219, column: 6, scope: !2111)
!2120 = !DILocation(line: 223, column: 5, scope: !2111)
!2121 = !DILocation(line: 223, column: 7, scope: !2111)
!2122 = !DILocation(line: 0, scope: !2111)
!2123 = !DILocation(line: 223, column: 16, scope: !2111)
!2124 = !DILocation(line: 223, column: 17, scope: !2111)
!2125 = !DILocation(line: 223, column: 21, scope: !2111)
!2126 = !DILocation(line: 224, column: 15, scope: !2111)
!2127 = !DILocation(line: 224, column: 16, scope: !2111)
!2128 = !DILocation(line: 224, column: 14, scope: !2111)
!2129 = !DILocation(line: 224, column: 3, scope: !2111)
!2130 = !DILocation(line: 226, column: 36, scope: !2111)
!2131 = !DILocation(line: 226, column: 35, scope: !2111)
!2132 = !DILocation(line: 226, column: 3, scope: !2111)
!2133 = !DILocation(line: 226, column: 6, scope: !2111)
!2134 = !DILocation(line: 228, column: 2, scope: !2111)
!2135 = distinct !DISubprogram(name: "unicode/utf8.decodeRuneInStringSlow", linkageName: "unicode/utf8.decodeRuneInStringSlow", scope: !19, file: !19, line: 231, type: !2112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2136)
!2136 = !{!2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146}
!2137 = !DILocalVariable(name: "s", arg: 1, scope: !2135, file: !19, line: 231, type: !46)
!2138 = !DILocalVariable(name: "n", scope: !2135, file: !19, line: 232, type: !1788)
!2139 = !DILocalVariable(name: "s0", scope: !2135, file: !19, line: 236, type: !538)
!2140 = !DILocalVariable(name: "x", scope: !2135, file: !19, line: 237, type: !4)
!2141 = !DILocalVariable(name: "mask", scope: !2135, file: !19, line: 242, type: !2117)
!2142 = !DILocalVariable(name: "sz", scope: !2135, file: !19, line: 245, type: !1788)
!2143 = !DILocalVariable(name: "accept", scope: !2135, file: !19, line: 246, type: !26)
!2144 = !DILocalVariable(name: "s1", scope: !2135, file: !19, line: 250, type: !538)
!2145 = !DILocalVariable(name: "s2", scope: !2135, file: !19, line: 257, type: !538)
!2146 = !DILocalVariable(name: "s3", scope: !2135, file: !19, line: 264, type: !538)
!2147 = !DILocation(line: 231, column: 6, scope: !2135)
!2148 = !DILocation(line: 232, column: 11, scope: !2135)
!2149 = !DILocation(line: 232, column: 10, scope: !2135)
!2150 = !DILocation(line: 232, column: 2, scope: !2135)
!2151 = !DILocation(line: 233, column: 5, scope: !2135)
!2152 = !DILocation(line: 233, column: 7, scope: !2135)
!2153 = !DILocation(line: 0, scope: !2135)
!2154 = !DILocation(line: 234, column: 3, scope: !2135)
!2155 = !DILocation(line: 236, column: 8, scope: !2135)
!2156 = !DILocation(line: 236, column: 9, scope: !2135)
!2157 = !DILocation(line: 236, column: 2, scope: !2135)
!2158 = !DILocation(line: 237, column: 13, scope: !2135)
!2159 = !DILocation(line: 237, column: 12, scope: !2135)
!2160 = !DILocation(line: 237, column: 2, scope: !2135)
!2161 = !DILocation(line: 238, column: 5, scope: !2135)
!2162 = !DILocation(line: 238, column: 7, scope: !2135)
!2163 = !DILocation(line: 242, column: 16, scope: !2135)
!2164 = !DILocation(line: 242, column: 15, scope: !2135)
!2165 = !DILocation(line: 242, column: 19, scope: !2135)
!2166 = !DILocation(line: 242, column: 25, scope: !2135)
!2167 = !DILocation(line: 242, column: 3, scope: !2135)
!2168 = !DILocation(line: 243, column: 15, scope: !2135)
!2169 = !DILocation(line: 243, column: 16, scope: !2135)
!2170 = !DILocation(line: 243, column: 14, scope: !2135)
!2171 = !DILocation(line: 243, column: 22, scope: !2135)
!2172 = !DILocation(line: 243, column: 20, scope: !2135)
!2173 = !DILocation(line: 243, column: 39, scope: !2135)
!2174 = !DILocation(line: 243, column: 38, scope: !2135)
!2175 = !DILocation(line: 243, column: 27, scope: !2135)
!2176 = !DILocation(line: 243, column: 3, scope: !2135)
!2177 = !DILocation(line: 245, column: 12, scope: !2135)
!2178 = !DILocation(line: 245, column: 14, scope: !2135)
!2179 = !DILocation(line: 245, column: 11, scope: !2135)
!2180 = !DILocation(line: 245, column: 2, scope: !2135)
!2181 = !DILocation(line: 246, column: 25, scope: !2135)
!2182 = !DILocation(line: 246, column: 26, scope: !2135)
!2183 = !DILocation(line: 246, column: 24, scope: !2135)
!2184 = !DILocation(line: 246, column: 2, scope: !2135)
!2185 = !DILocation(line: 247, column: 5, scope: !2135)
!2186 = !DILocation(line: 247, column: 9, scope: !2135)
!2187 = !DILocation(line: 247, column: 7, scope: !2135)
!2188 = !DILocation(line: 248, column: 3, scope: !2135)
!2189 = !DILocation(line: 250, column: 8, scope: !2135)
!2190 = !DILocation(line: 250, column: 9, scope: !2135)
!2191 = !DILocation(line: 250, column: 2, scope: !2135)
!2192 = !DILocation(line: 251, column: 5, scope: !2135)
!2193 = !DILocation(line: 251, column: 17, scope: !2135)
!2194 = !DILocation(line: 251, column: 8, scope: !2135)
!2195 = !DILocation(line: 252, column: 3, scope: !2135)
!2196 = !DILocation(line: 251, column: 30, scope: !2135)
!2197 = !DILocation(line: 251, column: 35, scope: !2135)
!2198 = !DILocation(line: 251, column: 33, scope: !2135)
!2199 = !DILocation(line: 254, column: 5, scope: !2135)
!2200 = !DILocation(line: 254, column: 8, scope: !2135)
!2201 = !DILocation(line: 255, column: 15, scope: !2135)
!2202 = !DILocation(line: 255, column: 17, scope: !2135)
!2203 = !DILocation(line: 255, column: 14, scope: !2135)
!2204 = !DILocation(line: 255, column: 24, scope: !2135)
!2205 = !DILocation(line: 255, column: 35, scope: !2135)
!2206 = !DILocation(line: 255, column: 37, scope: !2135)
!2207 = !DILocation(line: 255, column: 34, scope: !2135)
!2208 = !DILocation(line: 255, column: 28, scope: !2135)
!2209 = !DILocation(line: 255, column: 3, scope: !2135)
!2210 = !DILocation(line: 257, column: 8, scope: !2135)
!2211 = !DILocation(line: 257, column: 9, scope: !2135)
!2212 = !DILocation(line: 257, column: 2, scope: !2135)
!2213 = !DILocation(line: 258, column: 5, scope: !2135)
!2214 = !DILocation(line: 258, column: 8, scope: !2135)
!2215 = !DILocation(line: 259, column: 3, scope: !2135)
!2216 = !DILocation(line: 258, column: 25, scope: !2135)
!2217 = !DILocation(line: 258, column: 23, scope: !2135)
!2218 = !DILocation(line: 261, column: 5, scope: !2135)
!2219 = !DILocation(line: 261, column: 8, scope: !2135)
!2220 = !DILocation(line: 262, column: 15, scope: !2135)
!2221 = !DILocation(line: 262, column: 17, scope: !2135)
!2222 = !DILocation(line: 262, column: 14, scope: !2135)
!2223 = !DILocation(line: 262, column: 24, scope: !2135)
!2224 = !DILocation(line: 262, column: 36, scope: !2135)
!2225 = !DILocation(line: 262, column: 38, scope: !2135)
!2226 = !DILocation(line: 262, column: 35, scope: !2135)
!2227 = !DILocation(line: 262, column: 45, scope: !2135)
!2228 = !DILocation(line: 262, column: 29, scope: !2135)
!2229 = !DILocation(line: 262, column: 56, scope: !2135)
!2230 = !DILocation(line: 262, column: 58, scope: !2135)
!2231 = !DILocation(line: 262, column: 55, scope: !2135)
!2232 = !DILocation(line: 262, column: 49, scope: !2135)
!2233 = !DILocation(line: 262, column: 3, scope: !2135)
!2234 = !DILocation(line: 264, column: 8, scope: !2135)
!2235 = !DILocation(line: 264, column: 9, scope: !2135)
!2236 = !DILocation(line: 264, column: 2, scope: !2135)
!2237 = !DILocation(line: 265, column: 5, scope: !2135)
!2238 = !DILocation(line: 265, column: 8, scope: !2135)
!2239 = !DILocation(line: 266, column: 3, scope: !2135)
!2240 = !DILocation(line: 265, column: 25, scope: !2135)
!2241 = !DILocation(line: 265, column: 23, scope: !2135)
!2242 = !DILocation(line: 268, column: 14, scope: !2135)
!2243 = !DILocation(line: 268, column: 16, scope: !2135)
!2244 = !DILocation(line: 268, column: 13, scope: !2135)
!2245 = !DILocation(line: 268, column: 23, scope: !2135)
!2246 = !DILocation(line: 268, column: 35, scope: !2135)
!2247 = !DILocation(line: 268, column: 37, scope: !2135)
!2248 = !DILocation(line: 268, column: 34, scope: !2135)
!2249 = !DILocation(line: 268, column: 44, scope: !2135)
!2250 = !DILocation(line: 268, column: 28, scope: !2135)
!2251 = !DILocation(line: 268, column: 56, scope: !2135)
!2252 = !DILocation(line: 268, column: 58, scope: !2135)
!2253 = !DILocation(line: 268, column: 55, scope: !2135)
!2254 = !DILocation(line: 268, column: 65, scope: !2135)
!2255 = !DILocation(line: 268, column: 49, scope: !2135)
!2256 = !DILocation(line: 268, column: 76, scope: !2135)
!2257 = !DILocation(line: 268, column: 78, scope: !2135)
!2258 = !DILocation(line: 268, column: 75, scope: !2135)
!2259 = !DILocation(line: 268, column: 69, scope: !2135)
!2260 = !DILocation(line: 268, column: 2, scope: !2135)
!2261 = distinct !DISubprogram(name: "unicode/utf8.EncodeRune", linkageName: "unicode/utf8.EncodeRune", scope: !19, file: !19, line: 368, type: !2262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2268)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!2264, !2117}
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]byte", size: 192, align: 64, elements: !2265)
!2265 = !{!2266, !50, !678}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !2267, size: 64, align: 64)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64, dwarfAddressSpace: 0)
!2268 = !{!2269, !2270}
!2269 = !DILocalVariable(name: "p", arg: 1, scope: !2261, file: !19, line: 368, type: !2264)
!2270 = !DILocalVariable(name: "r", arg: 2, scope: !2261, file: !19, line: 368, type: !2117)
!2271 = !DILocation(line: 368, column: 6, scope: !2261)
!2272 = !DILocation(line: 370, column: 12, scope: !2261)
!2273 = !DILocation(line: 370, column: 15, scope: !2261)
!2274 = !DILocation(line: 0, scope: !2261)
!2275 = !DILocation(line: 371, column: 3, scope: !2261)
!2276 = !DILocation(line: 371, column: 15, scope: !2261)
!2277 = !DILocation(line: 371, column: 14, scope: !2261)
!2278 = !DILocation(line: 371, column: 4, scope: !2261)
!2279 = !DILocation(line: 372, column: 3, scope: !2261)
!2280 = !DILocation(line: 374, column: 28, scope: !2261)
!2281 = !DILocation(line: 374, column: 31, scope: !2261)
!2282 = !DILocation(line: 374, column: 27, scope: !2261)
!2283 = !DILocation(line: 374, column: 2, scope: !2261)
!2284 = distinct !DISubprogram(name: "unicode/utf8.encodeRuneNonASCII", linkageName: "unicode/utf8.encodeRuneNonASCII", scope: !19, file: !19, line: 377, type: !2262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2285)
!2285 = !{!2286, !2287, !2288}
!2286 = !DILocalVariable(name: "p", arg: 1, scope: !2284, file: !19, line: 377, type: !2264)
!2287 = !DILocalVariable(name: "r", arg: 2, scope: !2284, file: !19, line: 377, type: !2117)
!2288 = !DILocalVariable(name: "i", scope: !2284, file: !19, line: 379, type: !106)
!2289 = !DILocation(line: 377, column: 6, scope: !2284)
!2290 = !DILocation(line: 379, column: 21, scope: !2284)
!2291 = !DILocation(line: 379, column: 9, scope: !2284)
!2292 = !DILocation(line: 380, column: 7, scope: !2284)
!2293 = !DILocation(line: 380, column: 9, scope: !2284)
!2294 = !DILocation(line: 0, scope: !2284)
!2295 = !DILocation(line: 381, column: 7, scope: !2284)
!2296 = !DILocation(line: 381, column: 8, scope: !2284)
!2297 = !DILocation(line: 382, column: 3, scope: !2284)
!2298 = !DILocation(line: 382, column: 20, scope: !2284)
!2299 = !DILocation(line: 382, column: 21, scope: !2284)
!2300 = !DILocation(line: 382, column: 19, scope: !2284)
!2301 = !DILocation(line: 382, column: 13, scope: !2284)
!2302 = !DILocation(line: 382, column: 4, scope: !2284)
!2303 = !DILocation(line: 383, column: 3, scope: !2284)
!2304 = !DILocation(line: 383, column: 20, scope: !2284)
!2305 = !DILocation(line: 383, column: 19, scope: !2284)
!2306 = !DILocation(line: 383, column: 22, scope: !2284)
!2307 = !DILocation(line: 383, column: 13, scope: !2284)
!2308 = !DILocation(line: 383, column: 4, scope: !2284)
!2309 = !DILocation(line: 384, column: 3, scope: !2284)
!2310 = !DILocation(line: 385, column: 7, scope: !2284)
!2311 = !DILocation(line: 385, column: 9, scope: !2284)
!2312 = !DILocation(line: 386, column: 7, scope: !2284)
!2313 = !DILocation(line: 386, column: 8, scope: !2284)
!2314 = !DILocation(line: 387, column: 3, scope: !2284)
!2315 = !DILocation(line: 387, column: 20, scope: !2284)
!2316 = !DILocation(line: 387, column: 21, scope: !2284)
!2317 = !DILocation(line: 387, column: 19, scope: !2284)
!2318 = !DILocation(line: 387, column: 13, scope: !2284)
!2319 = !DILocation(line: 387, column: 4, scope: !2284)
!2320 = !DILocation(line: 388, column: 3, scope: !2284)
!2321 = !DILocation(line: 388, column: 20, scope: !2284)
!2322 = !DILocation(line: 388, column: 21, scope: !2284)
!2323 = !DILocation(line: 388, column: 19, scope: !2284)
!2324 = !DILocation(line: 388, column: 25, scope: !2284)
!2325 = !DILocation(line: 388, column: 13, scope: !2284)
!2326 = !DILocation(line: 388, column: 4, scope: !2284)
!2327 = !DILocation(line: 389, column: 3, scope: !2284)
!2328 = !DILocation(line: 389, column: 20, scope: !2284)
!2329 = !DILocation(line: 389, column: 19, scope: !2284)
!2330 = !DILocation(line: 389, column: 22, scope: !2284)
!2331 = !DILocation(line: 389, column: 13, scope: !2284)
!2332 = !DILocation(line: 389, column: 4, scope: !2284)
!2333 = !DILocation(line: 390, column: 3, scope: !2284)
!2334 = !DILocation(line: 385, column: 40, scope: !2284)
!2335 = !DILocation(line: 385, column: 38, scope: !2284)
!2336 = !DILocation(line: 385, column: 45, scope: !2284)
!2337 = !DILocation(line: 385, column: 47, scope: !2284)
!2338 = !DILocation(line: 385, column: 42, scope: !2284)
!2339 = !DILocation(line: 391, column: 7, scope: !2284)
!2340 = !DILocation(line: 391, column: 9, scope: !2284)
!2341 = !DILocation(line: 391, column: 23, scope: !2284)
!2342 = !DILocation(line: 391, column: 25, scope: !2284)
!2343 = !DILocation(line: 391, column: 20, scope: !2284)
!2344 = !DILocation(line: 392, column: 7, scope: !2284)
!2345 = !DILocation(line: 392, column: 8, scope: !2284)
!2346 = !DILocation(line: 393, column: 3, scope: !2284)
!2347 = !DILocation(line: 393, column: 20, scope: !2284)
!2348 = !DILocation(line: 393, column: 21, scope: !2284)
!2349 = !DILocation(line: 393, column: 19, scope: !2284)
!2350 = !DILocation(line: 393, column: 13, scope: !2284)
!2351 = !DILocation(line: 393, column: 4, scope: !2284)
!2352 = !DILocation(line: 394, column: 3, scope: !2284)
!2353 = !DILocation(line: 394, column: 20, scope: !2284)
!2354 = !DILocation(line: 394, column: 21, scope: !2284)
!2355 = !DILocation(line: 394, column: 19, scope: !2284)
!2356 = !DILocation(line: 394, column: 26, scope: !2284)
!2357 = !DILocation(line: 394, column: 13, scope: !2284)
!2358 = !DILocation(line: 394, column: 4, scope: !2284)
!2359 = !DILocation(line: 395, column: 3, scope: !2284)
!2360 = !DILocation(line: 395, column: 20, scope: !2284)
!2361 = !DILocation(line: 395, column: 21, scope: !2284)
!2362 = !DILocation(line: 395, column: 19, scope: !2284)
!2363 = !DILocation(line: 395, column: 25, scope: !2284)
!2364 = !DILocation(line: 395, column: 13, scope: !2284)
!2365 = !DILocation(line: 395, column: 4, scope: !2284)
!2366 = !DILocation(line: 396, column: 3, scope: !2284)
!2367 = !DILocation(line: 396, column: 20, scope: !2284)
!2368 = !DILocation(line: 396, column: 19, scope: !2284)
!2369 = !DILocation(line: 396, column: 22, scope: !2284)
!2370 = !DILocation(line: 396, column: 13, scope: !2284)
!2371 = !DILocation(line: 396, column: 4, scope: !2284)
!2372 = !DILocation(line: 397, column: 3, scope: !2284)
!2373 = !DILocation(line: 399, column: 7, scope: !2284)
!2374 = !DILocation(line: 399, column: 8, scope: !2284)
!2375 = !DILocation(line: 400, column: 3, scope: !2284)
!2376 = !DILocation(line: 400, column: 4, scope: !2284)
!2377 = !DILocation(line: 401, column: 3, scope: !2284)
!2378 = !DILocation(line: 401, column: 4, scope: !2284)
!2379 = !DILocation(line: 402, column: 3, scope: !2284)
!2380 = !DILocation(line: 402, column: 4, scope: !2284)
!2381 = !DILocation(line: 403, column: 3, scope: !2284)
!2382 = distinct !DISubprogram(name: "unicode/utf8.ValidRune", linkageName: "unicode/utf8.ValidRune", scope: !19, file: !19, line: 577, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2385)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!2117}
!2385 = !{!2386}
!2386 = !DILocalVariable(name: "r", arg: 1, scope: !2382, file: !19, line: 577, type: !2117)
!2387 = !DILocation(line: 577, column: 6, scope: !2382)
!2388 = !DILocation(line: 579, column: 12, scope: !2382)
!2389 = !DILocation(line: 579, column: 9, scope: !2382)
!2390 = !DILocation(line: 0, scope: !2382)
!2391 = !DILocation(line: 579, column: 17, scope: !2382)
!2392 = !DILocation(line: 579, column: 19, scope: !2382)
!2393 = !DILocation(line: 579, column: 14, scope: !2382)
!2394 = !DILocation(line: 580, column: 3, scope: !2382)
!2395 = !DILocation(line: 581, column: 22, scope: !2382)
!2396 = !DILocation(line: 581, column: 20, scope: !2382)
!2397 = !DILocation(line: 581, column: 27, scope: !2382)
!2398 = !DILocation(line: 581, column: 29, scope: !2382)
!2399 = !DILocation(line: 581, column: 24, scope: !2382)
!2400 = !DILocation(line: 582, column: 3, scope: !2382)
!2401 = !DILocation(line: 584, column: 2, scope: !2382)
!2402 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).Kind", linkageName: "(*internal/reflectlite.RawType).Kind", scope: !35, file: !35, line: 380, type: !2403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!1049}
!2405 = !{!2406, !2407}
!2406 = !DILocalVariable(name: "t", arg: 1, scope: !2402, file: !35, line: 380, type: !1049)
!2407 = !DILocalVariable(name: "tag", scope: !2402, file: !35, line: 385, type: !51)
!2408 = !DILocation(line: 380, column: 19, scope: !2402)
!2409 = !DILocation(line: 381, column: 5, scope: !2402)
!2410 = !DILocation(line: 381, column: 7, scope: !2402)
!2411 = !DILocation(line: 0, scope: !2402)
!2412 = !DILocation(line: 382, column: 3, scope: !2402)
!2413 = !DILocation(line: 385, column: 12, scope: !2402)
!2414 = !DILocation(line: 385, column: 20, scope: !2402)
!2415 = !DILocation(line: 385, column: 5, scope: !2402)
!2416 = !DILocation(line: 385, column: 24, scope: !2402)
!2417 = !DILocation(line: 385, column: 28, scope: !2402)
!2418 = !DILocation(line: 386, column: 3, scope: !2402)
!2419 = !DILocation(line: 389, column: 14, scope: !2402)
!2420 = !DILocation(line: 389, column: 16, scope: !2402)
!2421 = !DILocation(line: 389, column: 21, scope: !2402)
!2422 = !DILocation(line: 389, column: 2, scope: !2402)
!2423 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).elem", linkageName: "(*internal/reflectlite.RawType).elem", scope: !35, file: !35, line: 410, type: !2403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2424)
!2424 = !{!2425, !2426, !2427, !2428}
!2425 = !DILocalVariable(name: "t", arg: 1, scope: !2423, file: !35, line: 410, type: !1049)
!2426 = !DILocalVariable(name: "tag", scope: !2423, file: !35, line: 411, type: !51)
!2427 = !DILocalVariable(name: "underlying", scope: !2423, file: !35, line: 415, type: !1049)
!2428 = !DILocalVariable(name: "errTypeElem", scope: !2423, file: !35, line: 393, type: !41)
!2429 = !DILocation(line: 410, column: 19, scope: !2423)
!2430 = !DILocation(line: 411, column: 12, scope: !2423)
!2431 = !DILocation(line: 411, column: 20, scope: !2423)
!2432 = !DILocation(line: 411, column: 5, scope: !2423)
!2433 = !DILocation(line: 411, column: 24, scope: !2423)
!2434 = !DILocation(line: 411, column: 28, scope: !2423)
!2435 = !DILocation(line: 0, scope: !2423)
!2436 = !DILocation(line: 412, column: 47, scope: !2423)
!2437 = !DILocation(line: 412, column: 31, scope: !2423)
!2438 = !DILocation(line: 412, column: 3, scope: !2423)
!2439 = !DILocation(line: 415, column: 16, scope: !2423)
!2440 = !DILocation(line: 415, column: 28, scope: !2423)
!2441 = !DILocation(line: 415, column: 2, scope: !2423)
!2442 = !DILocation(line: 416, column: 9, scope: !2423)
!2443 = !DILocation(line: 416, column: 24, scope: !2423)
!2444 = !DILocation(line: 417, column: 7, scope: !2423)
!2445 = !DILocation(line: 418, column: 36, scope: !2423)
!2446 = !DILocation(line: 418, column: 49, scope: !2423)
!2447 = !DILocation(line: 418, column: 3, scope: !2423)
!2448 = !DILocation(line: 419, column: 7, scope: !2423)
!2449 = !DILocation(line: 420, column: 37, scope: !2423)
!2450 = !DILocation(line: 420, column: 50, scope: !2423)
!2451 = !DILocation(line: 420, column: 3, scope: !2423)
!2452 = !DILocation(line: 419, column: 13, scope: !2423)
!2453 = !DILocation(line: 419, column: 20, scope: !2423)
!2454 = !DILocation(line: 419, column: 27, scope: !2423)
!2455 = !DILocation(line: 422, column: 9, scope: !2423)
!2456 = !DILocation(line: 422, column: 8, scope: !2423)
!2457 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).Len", linkageName: "(*internal/reflectlite.RawType).Len", scope: !35, file: !35, line: 620, type: !2403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2458)
!2458 = !{!2459, !2460}
!2459 = !DILocalVariable(name: "t", arg: 1, scope: !2457, file: !35, line: 620, type: !1049)
!2460 = !DILocalVariable(name: "errTypeLen", scope: !2457, file: !35, line: 397, type: !41)
!2461 = !DILocation(line: 620, column: 19, scope: !2457)
!2462 = !DILocation(line: 621, column: 5, scope: !2457)
!2463 = !DILocation(line: 621, column: 11, scope: !2457)
!2464 = !DILocation(line: 621, column: 14, scope: !2457)
!2465 = !DILocation(line: 0, scope: !2457)
!2466 = !DILocation(line: 622, column: 9, scope: !2457)
!2467 = !DILocation(line: 622, column: 8, scope: !2457)
!2468 = !DILocation(line: 625, column: 41, scope: !2457)
!2469 = !DILocation(line: 625, column: 53, scope: !2457)
!2470 = !DILocation(line: 625, column: 58, scope: !2457)
!2471 = !DILocation(line: 625, column: 2, scope: !2457)
!2472 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).underlying", linkageName: "(*internal/reflectlite.RawType).underlying", scope: !35, file: !35, line: 263, type: !2403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2473)
!2473 = !{!2474}
!2474 = !DILocalVariable(name: "t", arg: 1, scope: !2472, file: !35, line: 263, type: !1049)
!2475 = !DILocation(line: 263, column: 19, scope: !2472)
!2476 = !DILocation(line: 264, column: 5, scope: !2472)
!2477 = !DILocation(line: 264, column: 14, scope: !2472)
!2478 = !DILocation(line: 0, scope: !2472)
!2479 = !DILocation(line: 265, column: 37, scope: !2472)
!2480 = !DILocation(line: 265, column: 41, scope: !2472)
!2481 = !DILocation(line: 265, column: 3, scope: !2472)
!2482 = !DILocation(line: 267, column: 9, scope: !2472)
!2483 = !DILocation(line: 267, column: 2, scope: !2472)
!2484 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).isNamed", linkageName: "(*internal/reflectlite.RawType).isNamed", scope: !35, file: !35, line: 274, type: !2403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2485)
!2485 = !{!2486, !2487}
!2486 = !DILocalVariable(name: "t", arg: 1, scope: !2484, file: !35, line: 274, type: !1049)
!2487 = !DILocalVariable(name: "tag", scope: !2484, file: !35, line: 275, type: !51)
!2488 = !DILocation(line: 274, column: 19, scope: !2484)
!2489 = !DILocation(line: 275, column: 12, scope: !2484)
!2490 = !DILocation(line: 275, column: 20, scope: !2484)
!2491 = !DILocation(line: 275, column: 5, scope: !2484)
!2492 = !DILocation(line: 275, column: 24, scope: !2484)
!2493 = !DILocation(line: 275, column: 28, scope: !2484)
!2494 = !DILocation(line: 0, scope: !2484)
!2495 = !DILocation(line: 276, column: 3, scope: !2484)
!2496 = !DILocation(line: 278, column: 9, scope: !2484)
!2497 = !DILocation(line: 278, column: 11, scope: !2484)
!2498 = !DILocation(line: 278, column: 15, scope: !2484)
!2499 = !DILocation(line: 278, column: 26, scope: !2484)
!2500 = !DILocation(line: 278, column: 2, scope: !2484)
!2501 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).ptrtag", linkageName: "(*internal/reflectlite.RawType).ptrtag", scope: !35, file: !35, line: 270, type: !2403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2502)
!2502 = !{!2503}
!2503 = !DILocalVariable(name: "t", arg: 1, scope: !2501, file: !35, line: 270, type: !1049)
!2504 = !DILocation(line: 270, column: 19, scope: !2501)
!2505 = !DILocation(line: 271, column: 32, scope: !2501)
!2506 = !DILocation(line: 271, column: 16, scope: !2501)
!2507 = !DILocation(line: 271, column: 36, scope: !2501)
!2508 = !DILocation(line: 271, column: 2, scope: !2501)
!2509 = distinct !DISubprogram(name: "(*internal/reflectlite.TypeError).Error", linkageName: "(*internal/reflectlite.TypeError).Error", scope: !35, file: !35, line: 1211, type: !2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2512)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!41}
!2512 = !{!2513}
!2513 = !DILocalVariable(name: "e", arg: 1, scope: !2509, file: !35, line: 1211, type: !41)
!2514 = !DILocation(line: 1211, column: 21, scope: !2509)
!2515 = !DILocation(line: 1212, column: 44, scope: !2509)
!2516 = !DILocation(line: 1212, column: 46, scope: !2509)
!2517 = !DILocation(line: 1212, column: 42, scope: !2509)
!2518 = !DILocation(line: 1212, column: 53, scope: !2509)
!2519 = !DILocation(line: 1212, column: 2, scope: !2509)
!2520 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).ChanDir", linkageName: "(*internal/reflectlite.RawType).ChanDir", scope: !35, file: !35, line: 893, type: !2403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2521)
!2521 = !{!2522, !2523, !2524}
!2522 = !DILocalVariable(name: "t", arg: 1, scope: !2520, file: !35, line: 893, type: !1049)
!2523 = !DILocalVariable(name: "errTypeChanDir", scope: !2520, file: !35, line: 399, type: !41)
!2524 = !DILocalVariable(name: "dir", scope: !2520, file: !35, line: 898, type: !1788)
!2525 = !DILocation(line: 893, column: 19, scope: !2520)
!2526 = !DILocation(line: 894, column: 5, scope: !2520)
!2527 = !DILocation(line: 894, column: 11, scope: !2520)
!2528 = !DILocation(line: 894, column: 14, scope: !2520)
!2529 = !DILocation(line: 0, scope: !2520)
!2530 = !DILocation(line: 895, column: 9, scope: !2520)
!2531 = !DILocation(line: 895, column: 8, scope: !2520)
!2532 = !DILocation(line: 898, column: 40, scope: !2520)
!2533 = !DILocation(line: 898, column: 44, scope: !2520)
!2534 = !DILocation(line: 898, column: 12, scope: !2520)
!2535 = !DILocation(line: 898, column: 2, scope: !2520)
!2536 = !DILocation(line: 901, column: 17, scope: !2520)
!2537 = !DILocation(line: 901, column: 2, scope: !2520)
!2538 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).NumField", linkageName: "(*internal/reflectlite.RawType).NumField", scope: !35, file: !35, line: 630, type: !2403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2539)
!2539 = !{!2540, !2541}
!2540 = !DILocalVariable(name: "t", arg: 1, scope: !2538, file: !35, line: 630, type: !1049)
!2541 = !DILocalVariable(name: "errTypeNumField", scope: !2538, file: !35, line: 398, type: !41)
!2542 = !DILocation(line: 630, column: 19, scope: !2538)
!2543 = !DILocation(line: 631, column: 5, scope: !2538)
!2544 = !DILocation(line: 631, column: 11, scope: !2538)
!2545 = !DILocation(line: 631, column: 14, scope: !2538)
!2546 = !DILocation(line: 0, scope: !2538)
!2547 = !DILocation(line: 632, column: 9, scope: !2538)
!2548 = !DILocation(line: 632, column: 8, scope: !2538)
!2549 = !DILocation(line: 634, column: 42, scope: !2538)
!2550 = !DILocation(line: 634, column: 54, scope: !2538)
!2551 = !DILocation(line: 634, column: 59, scope: !2538)
!2552 = !DILocation(line: 634, column: 12, scope: !2538)
!2553 = !DILocation(line: 634, column: 2, scope: !2538)
!2554 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).String", linkageName: "(*internal/reflectlite.RawType).String", scope: !35, file: !35, line: 316, type: !2403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2555)
!2555 = !{!2556, !2557, !2558, !2559, !2560, !2561, !2562}
!2556 = !DILocalVariable(name: "t", arg: 1, scope: !2554, file: !35, line: 316, type: !1049)
!2557 = !DILocalVariable(name: "s", scope: !2554, file: !35, line: 318, type: !46)
!2558 = !DILocalVariable(name: "elem", scope: !2554, file: !35, line: 326, type: !46)
!2559 = !DILocalVariable(name: "numField", scope: !2554, file: !35, line: 352, type: !1788)
!2560 = !DILocalVariable(name: "s", scope: !2554, file: !35, line: 356, type: !46)
!2561 = !DILocalVariable(name: "i", scope: !2554, file: !35, line: 357, type: !1788)
!2562 = !DILocalVariable(name: "f", scope: !2554, file: !35, line: 358, type: !2563)
!2563 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.rawStructField", baseType: !2564)
!2564 = !DICompositeType(tag: DW_TAG_structure_type, size: 576, align: 64, elements: !2565)
!2565 = !{!673, !2566, !2567, !2568, !2570, !2571}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "PkgPath", baseType: !46, size: 128, align: 64, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "Type", baseType: !1049, size: 64, align: 64, offset: 256)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "Tag", baseType: !2569, size: 128, align: 64, offset: 320)
!2569 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.StructTag", baseType: !46)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "Offset", baseType: !51, size: 64, align: 64, offset: 448)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "Anonymous", baseType: !376, size: 8, align: 8, offset: 512)
!2572 = !DILocation(line: 316, column: 19, scope: !2554)
!2573 = !DILocation(line: 317, column: 5, scope: !2554)
!2574 = !DILocation(line: 317, column: 14, scope: !2554)
!2575 = !DILocation(line: 0, scope: !2554)
!2576 = !DILocation(line: 318, column: 8, scope: !2554)
!2577 = !DILocation(line: 318, column: 14, scope: !2554)
!2578 = !DILocation(line: 318, column: 3, scope: !2554)
!2579 = !DILocation(line: 319, column: 6, scope: !2554)
!2580 = !DILocation(line: 319, column: 7, scope: !2554)
!2581 = !DILocation(line: 319, column: 11, scope: !2554)
!2582 = !DILocation(line: 320, column: 11, scope: !2554)
!2583 = !DILocation(line: 320, column: 12, scope: !2554)
!2584 = !DILocation(line: 320, column: 4, scope: !2554)
!2585 = !DILocation(line: 322, column: 10, scope: !2554)
!2586 = !DILocation(line: 322, column: 3, scope: !2554)
!2587 = !DILocation(line: 324, column: 9, scope: !2554)
!2588 = !DILocation(line: 324, column: 15, scope: !2554)
!2589 = !DILocation(line: 325, column: 7, scope: !2554)
!2590 = !DILocation(line: 326, column: 11, scope: !2554)
!2591 = !DILocation(line: 326, column: 17, scope: !2554)
!2592 = !DILocation(line: 326, column: 26, scope: !2554)
!2593 = !DILocation(line: 326, column: 3, scope: !2554)
!2594 = !DILocation(line: 327, column: 10, scope: !2554)
!2595 = !DILocation(line: 327, column: 19, scope: !2554)
!2596 = !DILocation(line: 328, column: 8, scope: !2554)
!2597 = !DILocation(line: 329, column: 23, scope: !2554)
!2598 = !DILocation(line: 329, column: 21, scope: !2554)
!2599 = !DILocation(line: 329, column: 4, scope: !2554)
!2600 = !DILocation(line: 330, column: 8, scope: !2554)
!2601 = !DILocation(line: 331, column: 23, scope: !2554)
!2602 = !DILocation(line: 331, column: 21, scope: !2554)
!2603 = !DILocation(line: 331, column: 4, scope: !2554)
!2604 = !DILocation(line: 332, column: 8, scope: !2554)
!2605 = !DILocation(line: 333, column: 7, scope: !2554)
!2606 = !DILocation(line: 333, column: 11, scope: !2554)
!2607 = !DILocation(line: 333, column: 15, scope: !2554)
!2608 = !DILocation(line: 338, column: 23, scope: !2554)
!2609 = !DILocation(line: 338, column: 21, scope: !2554)
!2610 = !DILocation(line: 338, column: 28, scope: !2554)
!2611 = !DILocation(line: 338, column: 5, scope: !2554)
!2612 = !DILocation(line: 340, column: 21, scope: !2554)
!2613 = !DILocation(line: 340, column: 19, scope: !2554)
!2614 = !DILocation(line: 340, column: 4, scope: !2554)
!2615 = !DILocation(line: 377, column: 9, scope: !2554)
!2616 = !DILocation(line: 377, column: 15, scope: !2554)
!2617 = !DILocation(line: 377, column: 24, scope: !2554)
!2618 = !DILocation(line: 377, column: 2, scope: !2554)
!2619 = !DILocation(line: 343, column: 7, scope: !2554)
!2620 = !DILocation(line: 344, column: 16, scope: !2554)
!2621 = !DILocation(line: 344, column: 22, scope: !2554)
!2622 = !DILocation(line: 344, column: 31, scope: !2554)
!2623 = !DILocation(line: 344, column: 14, scope: !2554)
!2624 = !DILocation(line: 344, column: 3, scope: !2554)
!2625 = !DILocation(line: 345, column: 7, scope: !2554)
!2626 = !DILocation(line: 346, column: 17, scope: !2554)
!2627 = !DILocation(line: 346, column: 23, scope: !2554)
!2628 = !DILocation(line: 346, column: 32, scope: !2554)
!2629 = !DILocation(line: 346, column: 15, scope: !2554)
!2630 = !DILocation(line: 346, column: 3, scope: !2554)
!2631 = !DILocation(line: 347, column: 7, scope: !2554)
!2632 = !DILocation(line: 348, column: 26, scope: !2554)
!2633 = !DILocation(line: 348, column: 31, scope: !2554)
!2634 = !DILocation(line: 348, column: 25, scope: !2554)
!2635 = !DILocation(line: 348, column: 14, scope: !2554)
!2636 = !DILocation(line: 348, column: 35, scope: !2554)
!2637 = !DILocation(line: 348, column: 43, scope: !2554)
!2638 = !DILocation(line: 348, column: 49, scope: !2554)
!2639 = !DILocation(line: 348, column: 58, scope: !2554)
!2640 = !DILocation(line: 348, column: 41, scope: !2554)
!2641 = !DILocation(line: 348, column: 3, scope: !2554)
!2642 = !DILocation(line: 349, column: 7, scope: !2554)
!2643 = !DILocation(line: 350, column: 19, scope: !2554)
!2644 = !DILocation(line: 350, column: 24, scope: !2554)
!2645 = !DILocation(line: 350, column: 33, scope: !2554)
!2646 = !DILocation(line: 350, column: 17, scope: !2554)
!2647 = !DILocation(line: 350, column: 36, scope: !2554)
!2648 = !DILocation(line: 350, column: 44, scope: !2554)
!2649 = !DILocation(line: 350, column: 50, scope: !2554)
!2650 = !DILocation(line: 350, column: 59, scope: !2554)
!2651 = !DILocation(line: 350, column: 42, scope: !2554)
!2652 = !DILocation(line: 350, column: 3, scope: !2554)
!2653 = !DILocation(line: 351, column: 7, scope: !2554)
!2654 = !DILocation(line: 352, column: 15, scope: !2554)
!2655 = !DILocation(line: 352, column: 25, scope: !2554)
!2656 = !DILocation(line: 352, column: 3, scope: !2554)
!2657 = !DILocation(line: 353, column: 6, scope: !2554)
!2658 = !DILocation(line: 353, column: 15, scope: !2554)
!2659 = !DILocation(line: 354, column: 4, scope: !2554)
!2660 = !DILocation(line: 356, column: 3, scope: !2554)
!2661 = !DILocation(line: 357, column: 7, scope: !2554)
!2662 = !DILocation(line: 357, column: 15, scope: !2554)
!2663 = !DILocation(line: 357, column: 19, scope: !2554)
!2664 = !DILocation(line: 357, column: 17, scope: !2554)
!2665 = !DILocation(line: 358, column: 9, scope: !2554)
!2666 = !DILocation(line: 358, column: 20, scope: !2554)
!2667 = !DILocation(line: 358, column: 19, scope: !2554)
!2668 = !DILocation(line: 358, column: 4, scope: !2554)
!2669 = !DILocation(line: 359, column: 17, scope: !2554)
!2670 = !DILocation(line: 359, column: 13, scope: !2554)
!2671 = !DILocation(line: 359, column: 22, scope: !2554)
!2672 = !DILocation(line: 359, column: 32, scope: !2554)
!2673 = !DILocation(line: 359, column: 43, scope: !2554)
!2674 = !DILocation(line: 359, column: 28, scope: !2554)
!2675 = !DILocation(line: 359, column: 4, scope: !2554)
!2676 = !DILocation(line: 360, column: 9, scope: !2554)
!2677 = !DILocation(line: 360, column: 13, scope: !2554)
!2678 = !DILocation(line: 361, column: 31, scope: !2554)
!2679 = !DILocation(line: 361, column: 21, scope: !2554)
!2680 = !DILocation(line: 361, column: 14, scope: !2554)
!2681 = !DILocation(line: 361, column: 5, scope: !2554)
!2682 = !DILocation(line: 364, column: 7, scope: !2554)
!2683 = !DILocation(line: 364, column: 11, scope: !2554)
!2684 = !DILocation(line: 364, column: 19, scope: !2554)
!2685 = !DILocation(line: 364, column: 9, scope: !2554)
!2686 = !DILocation(line: 365, column: 5, scope: !2554)
!2687 = !DILocation(line: 357, column: 29, scope: !2554)
!2688 = !DILocation(line: 368, column: 3, scope: !2554)
!2689 = !DILocation(line: 369, column: 10, scope: !2554)
!2690 = !DILocation(line: 369, column: 3, scope: !2554)
!2691 = !DILocation(line: 370, column: 7, scope: !2554)
!2692 = !DILocation(line: 372, column: 3, scope: !2554)
!2693 = !DILocation(line: 374, column: 10, scope: !2554)
!2694 = !DILocation(line: 374, column: 16, scope: !2554)
!2695 = !DILocation(line: 374, column: 25, scope: !2554)
!2696 = !DILocation(line: 374, column: 3, scope: !2554)
!2697 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).key", linkageName: "(*internal/reflectlite.RawType).key", scope: !35, file: !35, line: 426, type: !2403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2698)
!2698 = !{!2699, !2700, !2701}
!2699 = !DILocalVariable(name: "t", arg: 1, scope: !2697, file: !35, line: 426, type: !1049)
!2700 = !DILocalVariable(name: "underlying", scope: !2697, file: !35, line: 427, type: !1049)
!2701 = !DILocalVariable(name: "errTypeKey", scope: !2697, file: !35, line: 394, type: !41)
!2702 = !DILocation(line: 426, column: 19, scope: !2697)
!2703 = !DILocation(line: 427, column: 16, scope: !2697)
!2704 = !DILocation(line: 427, column: 28, scope: !2697)
!2705 = !DILocation(line: 427, column: 2, scope: !2697)
!2706 = !DILocation(line: 428, column: 5, scope: !2697)
!2707 = !DILocation(line: 428, column: 20, scope: !2697)
!2708 = !DILocation(line: 428, column: 23, scope: !2697)
!2709 = !DILocation(line: 0, scope: !2697)
!2710 = !DILocation(line: 429, column: 9, scope: !2697)
!2711 = !DILocation(line: 429, column: 8, scope: !2697)
!2712 = !DILocation(line: 431, column: 35, scope: !2697)
!2713 = !DILocation(line: 431, column: 48, scope: !2697)
!2714 = !DILocation(line: 431, column: 2, scope: !2697)
!2715 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).name", linkageName: "(*internal/reflectlite.RawType).name", scope: !35, file: !35, line: 939, type: !2403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2716)
!2716 = !{!2717, !2718, !2728, !2729}
!2717 = !DILocalVariable(name: "t", arg: 1, scope: !2715, file: !35, line: 939, type: !1049)
!2718 = !DILocalVariable(name: "ntype", scope: !2715, file: !35, line: 940, type: !2719)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64, align: 64, dwarfAddressSpace: 0)
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.namedType", baseType: !2721)
!2721 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !2722)
!2722 = !{!2723, !2724, !2725, !2726, !2727}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "RawType", baseType: !1050, size: 8, align: 8)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "numMethod", baseType: !98, size: 16, align: 16, offset: 16)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !1049, size: 64, align: 64, offset: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "elem", baseType: !1049, size: 64, align: 64, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", baseType: !2267, size: 64, align: 64, offset: 192)
!2728 = !DILocalVariable(name: "ptr", scope: !2715, file: !35, line: 942, type: !92)
!2729 = !DILocalVariable(name: "ms", scope: !2715, file: !35, line: 944, type: !2730)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64, align: 64, dwarfAddressSpace: 0)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.methodSet", baseType: !2732)
!2732 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !2733)
!2733 = !{!1145, !2734}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !2735, align: 64, offset: 64)
!2735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, align: 64, elements: !129)
!2736 = !DILocation(line: 939, column: 19, scope: !2715)
!2737 = !DILocation(line: 940, column: 39, scope: !2715)
!2738 = !DILocation(line: 940, column: 2, scope: !2715)
!2739 = !DILocation(line: 942, column: 35, scope: !2715)
!2740 = !DILocation(line: 942, column: 19, scope: !2715)
!2741 = !DILocation(line: 942, column: 2, scope: !2715)
!2742 = !DILocation(line: 943, column: 5, scope: !2715)
!2743 = !DILocation(line: 943, column: 11, scope: !2715)
!2744 = !DILocation(line: 943, column: 20, scope: !2715)
!2745 = !DILocation(line: 943, column: 43, scope: !2715)
!2746 = !DILocation(line: 0, scope: !2715)
!2747 = !DILocation(line: 944, column: 22, scope: !2715)
!2748 = !DILocation(line: 944, column: 3, scope: !2715)
!2749 = !DILocation(line: 946, column: 20, scope: !2715)
!2750 = !DILocation(line: 946, column: 59, scope: !2715)
!2751 = !DILocation(line: 946, column: 62, scope: !2715)
!2752 = !DILocation(line: 946, column: 69, scope: !2715)
!2753 = !DILocation(line: 946, column: 50, scope: !2715)
!2754 = !DILocation(line: 946, column: 19, scope: !2715)
!2755 = !DILocation(line: 946, column: 3, scope: !2715)
!2756 = !DILocation(line: 948, column: 21, scope: !2715)
!2757 = !DILocation(line: 948, column: 20, scope: !2715)
!2758 = !DILocation(line: 948, column: 2, scope: !2715)
!2759 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).rawField", linkageName: "(*internal/reflectlite.RawType).rawField", scope: !35, file: !35, line: 484, type: !2760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2762)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!1049, !1788}
!2762 = !{!2763, !2764, !2765, !2766, !2780, !2782, !2783, !2784, !2785, !2786}
!2763 = !DILocalVariable(name: "t", arg: 1, scope: !2759, file: !35, line: 484, type: !1049)
!2764 = !DILocalVariable(name: "n", arg: 2, scope: !2759, file: !35, line: 484, type: !1788)
!2765 = !DILocalVariable(name: "errTypeField", scope: !2759, file: !35, line: 395, type: !41)
!2766 = !DILocalVariable(name: "descriptor", scope: !2759, file: !35, line: 488, type: !2767)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64, align: 64, dwarfAddressSpace: 0)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.structType", baseType: !2769)
!2769 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !2770)
!2770 = !{!2723, !2724, !2725, !2771, !105, !2772, !2773}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !2267, size: 64, align: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "numField", baseType: !98, size: 16, align: 16, offset: 224)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !2774, size: 128, align: 64, offset: 256)
!2774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2775, size: 128, align: 64, elements: !13)
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.structField", baseType: !2776)
!2776 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !2777)
!2777 = !{!2778, !2779}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fieldType", baseType: !1049, size: 64, align: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !92, size: 64, align: 64, offset: 64)
!2780 = !DILocalVariable(name: "field", scope: !2759, file: !35, line: 497, type: !2781)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64, align: 64, dwarfAddressSpace: 0)
!2782 = !DILocalVariable(name: "data", scope: !2759, file: !35, line: 498, type: !92)
!2783 = !DILocalVariable(name: "flagsByte", scope: !2759, file: !35, line: 502, type: !538)
!2784 = !DILocalVariable(name: "offset", scope: !2759, file: !35, line: 504, type: !106)
!2785 = !DILocalVariable(name: "lenOffs", scope: !2759, file: !35, line: 504, type: !1788)
!2786 = !DILocalVariable(name: "name", scope: !2759, file: !35, line: 507, type: !46)
!2787 = !DILocation(line: 484, column: 19, scope: !2759)
!2788 = !DILocation(line: 485, column: 5, scope: !2759)
!2789 = !DILocation(line: 485, column: 11, scope: !2759)
!2790 = !DILocation(line: 485, column: 14, scope: !2759)
!2791 = !DILocation(line: 0, scope: !2759)
!2792 = !DILocation(line: 486, column: 9, scope: !2759)
!2793 = !DILocation(line: 486, column: 8, scope: !2759)
!2794 = !DILocation(line: 488, column: 45, scope: !2759)
!2795 = !DILocation(line: 488, column: 57, scope: !2759)
!2796 = !DILocation(line: 488, column: 2, scope: !2759)
!2797 = !DILocation(line: 489, column: 10, scope: !2759)
!2798 = !DILocation(line: 489, column: 21, scope: !2759)
!2799 = !DILocation(line: 489, column: 32, scope: !2759)
!2800 = !DILocation(line: 489, column: 20, scope: !2759)
!2801 = !DILocation(line: 489, column: 13, scope: !2759)
!2802 = !DILocation(line: 490, column: 8, scope: !2759)
!2803 = !DILocation(line: 497, column: 53, scope: !2759)
!2804 = !DILocation(line: 497, column: 64, scope: !2759)
!2805 = !DILocation(line: 497, column: 70, scope: !2759)
!2806 = !DILocation(line: 497, column: 84, scope: !2759)
!2807 = !DILocation(line: 497, column: 86, scope: !2759)
!2808 = !DILocation(line: 497, column: 36, scope: !2759)
!2809 = !DILocation(line: 497, column: 2, scope: !2759)
!2810 = !DILocation(line: 498, column: 10, scope: !2759)
!2811 = !DILocation(line: 498, column: 16, scope: !2759)
!2812 = !DILocation(line: 498, column: 2, scope: !2759)
!2813 = !DILocation(line: 502, column: 24, scope: !2759)
!2814 = !DILocation(line: 502, column: 15, scope: !2759)
!2815 = !DILocation(line: 502, column: 2, scope: !2759)
!2816 = !DILocation(line: 503, column: 20, scope: !2759)
!2817 = !DILocation(line: 503, column: 19, scope: !2759)
!2818 = !DILocation(line: 503, column: 2, scope: !2759)
!2819 = !DILocation(line: 504, column: 52, scope: !2759)
!2820 = !DILocation(line: 504, column: 43, scope: !2759)
!2821 = !DILocation(line: 504, column: 30, scope: !2759)
!2822 = !DILocation(line: 504, column: 2, scope: !2759)
!2823 = !DILocation(line: 504, column: 10, scope: !2759)
!2824 = !DILocation(line: 505, column: 20, scope: !2759)
!2825 = !DILocation(line: 505, column: 26, scope: !2759)
!2826 = !DILocation(line: 505, column: 19, scope: !2759)
!2827 = !DILocation(line: 505, column: 2, scope: !2759)
!2828 = !DILocation(line: 507, column: 22, scope: !2759)
!2829 = !DILocation(line: 507, column: 21, scope: !2759)
!2830 = !DILocation(line: 507, column: 2, scope: !2759)
!2831 = !DILocation(line: 508, column: 20, scope: !2759)
!2832 = !DILocation(line: 508, column: 30, scope: !2759)
!2833 = !DILocation(line: 508, column: 29, scope: !2759)
!2834 = !DILocation(line: 508, column: 19, scope: !2759)
!2835 = !DILocation(line: 508, column: 2, scope: !2759)
!2836 = !DILocation(line: 510, column: 35, scope: !2759)
!2837 = !DILocation(line: 510, column: 47, scope: !2759)
!2838 = !DILocation(line: 510, column: 53, scope: !2759)
!2839 = !DILocation(line: 510, column: 64, scope: !2759)
!2840 = !DILocation(line: 510, column: 70, scope: !2759)
!2841 = !DILocation(line: 510, column: 81, scope: !2759)
!2842 = !DILocation(line: 510, column: 87, scope: !2759)
!2843 = !DILocation(line: 510, column: 34, scope: !2759)
!2844 = !DILocation(line: 510, column: 2, scope: !2759)
!2845 = distinct !DISubprogram(name: "internal/reflectlite.uvarint32", linkageName: "internal/reflectlite.uvarint32", scope: !35, file: !35, line: 1242, type: !2846, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!2264}
!2848 = !{!2849, !2850, !2851, !2852, !2853}
!2849 = !DILocalVariable(name: "buf", arg: 1, scope: !2845, file: !35, line: 1242, type: !2264)
!2850 = !DILocalVariable(name: "x", scope: !2845, file: !35, line: 1243, type: !106)
!2851 = !DILocalVariable(name: "s", scope: !2845, file: !35, line: 1244, type: !1738)
!2852 = !DILocalVariable(name: "i", scope: !2845, file: !35, line: 1245, type: !1788)
!2853 = !DILocalVariable(name: "b", scope: !2845, file: !35, line: 1245, type: !538)
!2854 = !DILocation(line: 1242, column: 6, scope: !2845)
!2855 = !DILocation(line: 1243, column: 6, scope: !2845)
!2856 = !DILocation(line: 1244, column: 6, scope: !2845)
!2857 = !DILocation(line: 1245, column: 20, scope: !2845)
!2858 = !DILocation(line: 0, scope: !2845)
!2859 = !DILocation(line: 1245, column: 6, scope: !2845)
!2860 = !DILocation(line: 1245, column: 9, scope: !2845)
!2861 = !DILocation(line: 1246, column: 6, scope: !2845)
!2862 = !DILocation(line: 1246, column: 8, scope: !2845)
!2863 = !DILocation(line: 1247, column: 11, scope: !2845)
!2864 = !DILocation(line: 1247, column: 22, scope: !2845)
!2865 = !DILocation(line: 1247, column: 21, scope: !2845)
!2866 = !DILocation(line: 1247, column: 26, scope: !2845)
!2867 = !DILocation(line: 1247, column: 24, scope: !2845)
!2868 = !DILocation(line: 1247, column: 13, scope: !2845)
!2869 = !DILocation(line: 1247, column: 29, scope: !2845)
!2870 = !DILocation(line: 1247, column: 31, scope: !2845)
!2871 = !DILocation(line: 1247, column: 4, scope: !2845)
!2872 = !DILocation(line: 1249, column: 15, scope: !2845)
!2873 = !DILocation(line: 1249, column: 16, scope: !2845)
!2874 = !DILocation(line: 1249, column: 14, scope: !2845)
!2875 = !DILocation(line: 1249, column: 26, scope: !2845)
!2876 = !DILocation(line: 1249, column: 23, scope: !2845)
!2877 = !DILocation(line: 1249, column: 3, scope: !2845)
!2878 = !DILocation(line: 1250, column: 3, scope: !2845)
!2879 = !DILocation(line: 1252, column: 2, scope: !2845)
!2880 = distinct !DISubprogram(name: "internal/reflectlite.readStringZ", linkageName: "internal/reflectlite.readStringZ", scope: !35, file: !35, line: 925, type: !2881, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2883)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!92}
!2883 = !{!2884, !2885, !2886}
!2884 = !DILocalVariable(name: "data", arg: 1, scope: !2880, file: !35, line: 925, type: !92)
!2885 = !DILocalVariable(name: "start", scope: !2880, file: !35, line: 926, type: !92)
!2886 = !DILocalVariable(name: "len", scope: !2880, file: !35, line: 927, type: !51)
!2887 = !DILocation(line: 925, column: 6, scope: !2880)
!2888 = !DILocation(line: 926, column: 11, scope: !2880)
!2889 = !DILocation(line: 926, column: 2, scope: !2880)
!2890 = !DILocation(line: 927, column: 6, scope: !2880)
!2891 = !DILocation(line: 0, scope: !2880)
!2892 = !DILocation(line: 925, column: 18, scope: !2880)
!2893 = !DILocation(line: 928, column: 15, scope: !2880)
!2894 = !DILocation(line: 928, column: 6, scope: !2880)
!2895 = !DILocation(line: 928, column: 21, scope: !2880)
!2896 = !DILocation(line: 929, column: 3, scope: !2880)
!2897 = !DILocation(line: 930, column: 21, scope: !2880)
!2898 = !DILocation(line: 930, column: 20, scope: !2880)
!2899 = !DILocation(line: 930, column: 3, scope: !2880)
!2900 = !DILocation(line: 933, column: 48, scope: !2880)
!2901 = !DILocation(line: 934, column: 7, scope: !2880)
!2902 = !DILocation(line: 934, column: 9, scope: !2880)
!2903 = !DILocation(line: 935, column: 6, scope: !2880)
!2904 = !DILocation(line: 935, column: 9, scope: !2880)
!2905 = !DILocation(line: 933, column: 9, scope: !2880)
!2906 = !DILocation(line: 933, column: 2, scope: !2880)
!2907 = distinct !DISubprogram(name: "internal/reflectlite.rawStructFieldFromPointer", linkageName: "internal/reflectlite.rawStructFieldFromPointer", scope: !35, file: !35, line: 449, type: !2908, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2910)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!2767, !1049, !92, !4, !46, !106}
!2910 = !{!2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919}
!2911 = !DILocalVariable(name: "descriptor", arg: 1, scope: !2907, file: !35, line: 449, type: !2767)
!2912 = !DILocalVariable(name: "fieldType", arg: 2, scope: !2907, file: !35, line: 449, type: !1049)
!2913 = !DILocalVariable(name: "data", arg: 3, scope: !2907, file: !35, line: 449, type: !92)
!2914 = !DILocalVariable(name: "flagsByte", arg: 4, scope: !2907, file: !35, line: 449, type: !4)
!2915 = !DILocalVariable(name: "name", arg: 5, scope: !2907, file: !35, line: 449, type: !46)
!2916 = !DILocalVariable(name: "offset", arg: 6, scope: !2907, file: !35, line: 449, type: !106)
!2917 = !DILocalVariable(name: "tag", scope: !2907, file: !35, line: 451, type: !46)
!2918 = !DILocalVariable(name: "tagLen", scope: !2907, file: !35, line: 454, type: !51)
!2919 = !DILocalVariable(name: "pkgPath", scope: !2907, file: !35, line: 464, type: !46)
!2920 = !DILocation(line: 449, column: 6, scope: !2907)
!2921 = !DILocation(line: 451, column: 6, scope: !2907)
!2922 = !DILocation(line: 452, column: 5, scope: !2907)
!2923 = !DILocation(line: 452, column: 14, scope: !2907)
!2924 = !DILocation(line: 452, column: 37, scope: !2907)
!2925 = !DILocation(line: 0, scope: !2907)
!2926 = !DILocation(line: 453, column: 21, scope: !2907)
!2927 = !DILocation(line: 453, column: 20, scope: !2907)
!2928 = !DILocation(line: 453, column: 3, scope: !2907)
!2929 = !DILocation(line: 454, column: 30, scope: !2907)
!2930 = !DILocation(line: 454, column: 21, scope: !2907)
!2931 = !DILocation(line: 454, column: 20, scope: !2907)
!2932 = !DILocation(line: 454, column: 3, scope: !2907)
!2933 = !DILocation(line: 455, column: 21, scope: !2907)
!2934 = !DILocation(line: 455, column: 20, scope: !2907)
!2935 = !DILocation(line: 455, column: 3, scope: !2907)
!2936 = !DILocation(line: 456, column: 48, scope: !2907)
!2937 = !DILocation(line: 457, column: 8, scope: !2907)
!2938 = !DILocation(line: 457, column: 10, scope: !2907)
!2939 = !DILocation(line: 458, column: 7, scope: !2907)
!2940 = !DILocation(line: 458, column: 10, scope: !2907)
!2941 = !DILocation(line: 456, column: 9, scope: !2907)
!2942 = !DILocation(line: 456, column: 3, scope: !2907)
!2943 = !DILocation(line: 464, column: 2, scope: !2907)
!2944 = !DILocation(line: 465, column: 5, scope: !2907)
!2945 = !DILocation(line: 465, column: 14, scope: !2907)
!2946 = !DILocation(line: 465, column: 41, scope: !2907)
!2947 = !DILocation(line: 467, column: 40, scope: !2907)
!2948 = !DILocation(line: 467, column: 51, scope: !2907)
!2949 = !DILocation(line: 467, column: 24, scope: !2907)
!2950 = !DILocation(line: 467, column: 3, scope: !2907)
!2951 = !DILocation(line: 471, column: 7, scope: !2907)
!2952 = !DILocation(line: 471, column: 14, scope: !2907)
!2953 = !DILocation(line: 472, column: 10, scope: !2907)
!2954 = !DILocation(line: 472, column: 14, scope: !2907)
!2955 = !DILocation(line: 473, column: 7, scope: !2907)
!2956 = !DILocation(line: 473, column: 14, scope: !2907)
!2957 = !DILocation(line: 474, column: 6, scope: !2907)
!2958 = !DILocation(line: 474, column: 24, scope: !2907)
!2959 = !DILocation(line: 475, column: 12, scope: !2907)
!2960 = !DILocation(line: 475, column: 14, scope: !2907)
!2961 = !DILocation(line: 475, column: 23, scope: !2907)
!2962 = !DILocation(line: 475, column: 49, scope: !2907)
!2963 = !DILocation(line: 476, column: 9, scope: !2907)
!2964 = !DILocation(line: 476, column: 22, scope: !2907)
!2965 = !DILocation(line: 476, column: 21, scope: !2907)
!2966 = !DILocation(line: 470, column: 23, scope: !2907)
!2967 = !DILocation(line: 470, column: 2, scope: !2907)
!2968 = distinct !DISubprogram(name: "(internal/reflectlite.Kind).String", linkageName: "(internal/reflectlite.Kind).String", scope: !35, file: !35, line: 57, type: !2969, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2972)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!2971}
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.Kind", baseType: !4)
!2972 = !{!2973}
!2973 = !DILocalVariable(name: "k", arg: 1, scope: !2968, file: !35, line: 57, type: !2971)
!2974 = !DILocation(line: 57, column: 15, scope: !2968)
!2975 = !DILocation(line: 58, column: 9, scope: !2968)
!2976 = !DILocation(line: 59, column: 7, scope: !2968)
!2977 = !DILocation(line: 0, scope: !2968)
!2978 = !DILocation(line: 60, column: 3, scope: !2968)
!2979 = !DILocation(line: 61, column: 7, scope: !2968)
!2980 = !DILocation(line: 62, column: 3, scope: !2968)
!2981 = !DILocation(line: 63, column: 7, scope: !2968)
!2982 = !DILocation(line: 64, column: 3, scope: !2968)
!2983 = !DILocation(line: 65, column: 7, scope: !2968)
!2984 = !DILocation(line: 66, column: 3, scope: !2968)
!2985 = !DILocation(line: 67, column: 7, scope: !2968)
!2986 = !DILocation(line: 68, column: 3, scope: !2968)
!2987 = !DILocation(line: 69, column: 7, scope: !2968)
!2988 = !DILocation(line: 70, column: 3, scope: !2968)
!2989 = !DILocation(line: 71, column: 7, scope: !2968)
!2990 = !DILocation(line: 72, column: 3, scope: !2968)
!2991 = !DILocation(line: 73, column: 7, scope: !2968)
!2992 = !DILocation(line: 74, column: 3, scope: !2968)
!2993 = !DILocation(line: 75, column: 7, scope: !2968)
!2994 = !DILocation(line: 76, column: 3, scope: !2968)
!2995 = !DILocation(line: 77, column: 7, scope: !2968)
!2996 = !DILocation(line: 78, column: 3, scope: !2968)
!2997 = !DILocation(line: 79, column: 7, scope: !2968)
!2998 = !DILocation(line: 80, column: 3, scope: !2968)
!2999 = !DILocation(line: 81, column: 7, scope: !2968)
!3000 = !DILocation(line: 82, column: 3, scope: !2968)
!3001 = !DILocation(line: 83, column: 7, scope: !2968)
!3002 = !DILocation(line: 84, column: 3, scope: !2968)
!3003 = !DILocation(line: 85, column: 7, scope: !2968)
!3004 = !DILocation(line: 86, column: 3, scope: !2968)
!3005 = !DILocation(line: 87, column: 7, scope: !2968)
!3006 = !DILocation(line: 88, column: 3, scope: !2968)
!3007 = !DILocation(line: 89, column: 7, scope: !2968)
!3008 = !DILocation(line: 90, column: 3, scope: !2968)
!3009 = !DILocation(line: 91, column: 7, scope: !2968)
!3010 = !DILocation(line: 92, column: 3, scope: !2968)
!3011 = !DILocation(line: 93, column: 7, scope: !2968)
!3012 = !DILocation(line: 94, column: 3, scope: !2968)
!3013 = !DILocation(line: 95, column: 7, scope: !2968)
!3014 = !DILocation(line: 96, column: 3, scope: !2968)
!3015 = !DILocation(line: 97, column: 7, scope: !2968)
!3016 = !DILocation(line: 98, column: 3, scope: !2968)
!3017 = !DILocation(line: 99, column: 7, scope: !2968)
!3018 = !DILocation(line: 100, column: 3, scope: !2968)
!3019 = !DILocation(line: 101, column: 7, scope: !2968)
!3020 = !DILocation(line: 102, column: 3, scope: !2968)
!3021 = !DILocation(line: 103, column: 7, scope: !2968)
!3022 = !DILocation(line: 104, column: 3, scope: !2968)
!3023 = !DILocation(line: 105, column: 7, scope: !2968)
!3024 = !DILocation(line: 106, column: 3, scope: !2968)
!3025 = !DILocation(line: 107, column: 7, scope: !2968)
!3026 = !DILocation(line: 108, column: 3, scope: !2968)
!3027 = !DILocation(line: 109, column: 7, scope: !2968)
!3028 = !DILocation(line: 110, column: 3, scope: !2968)
!3029 = !DILocation(line: 111, column: 7, scope: !2968)
!3030 = !DILocation(line: 112, column: 3, scope: !2968)
!3031 = !DILocation(line: 114, column: 38, scope: !2968)
!3032 = !DILocation(line: 114, column: 32, scope: !2968)
!3033 = !DILocation(line: 114, column: 28, scope: !2968)
!3034 = !DILocation(line: 114, column: 17, scope: !2968)
!3035 = !DILocation(line: 114, column: 3, scope: !2968)
!3036 = distinct !DISubprogram(name: "internal/reflectlite.quote", linkageName: "internal/reflectlite.quote", scope: !119, file: !119, line: 238, type: !2112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3037)
!3037 = !{!3038, !3039, !3040, !3041}
!3038 = !DILocalVariable(name: "s", arg: 1, scope: !3036, file: !119, line: 238, type: !46)
!3039 = !DILocalVariable(name: "buf", scope: !3036, file: !119, line: 239, type: !2264)
!3040 = !DILocalVariable(name: "width", scope: !3036, file: !119, line: 243, type: !1788)
!3041 = !DILocalVariable(name: "r", scope: !3036, file: !119, line: 244, type: !2117)
!3042 = !DILocation(line: 238, column: 6, scope: !3036)
!3043 = !DILocation(line: 239, column: 31, scope: !3036)
!3044 = !DILocation(line: 239, column: 30, scope: !3036)
!3045 = !DILocation(line: 239, column: 26, scope: !3036)
!3046 = !DILocation(line: 239, column: 33, scope: !3036)
!3047 = !DILocation(line: 239, column: 13, scope: !3036)
!3048 = !DILocation(line: 239, column: 2, scope: !3036)
!3049 = !DILocation(line: 242, column: 15, scope: !3036)
!3050 = !DILocation(line: 242, column: 25, scope: !3036)
!3051 = !DILocation(line: 242, column: 14, scope: !3036)
!3052 = !DILocation(line: 242, column: 2, scope: !3036)
!3053 = !DILocation(line: 243, column: 6, scope: !3036)
!3054 = !DILocation(line: 0, scope: !3036)
!3055 = !DILocation(line: 238, column: 12, scope: !3036)
!3056 = !DILocation(line: 243, column: 22, scope: !3036)
!3057 = !DILocation(line: 243, column: 21, scope: !3036)
!3058 = !DILocation(line: 243, column: 25, scope: !3036)
!3059 = !DILocation(line: 244, column: 13, scope: !3036)
!3060 = !DILocation(line: 244, column: 14, scope: !3036)
!3061 = !DILocation(line: 244, column: 12, scope: !3036)
!3062 = !DILocation(line: 244, column: 3, scope: !3036)
!3063 = !DILocation(line: 245, column: 3, scope: !3036)
!3064 = !DILocation(line: 246, column: 6, scope: !3036)
!3065 = !DILocation(line: 246, column: 8, scope: !3036)
!3066 = !DILocation(line: 247, column: 39, scope: !3036)
!3067 = !DILocation(line: 247, column: 38, scope: !3036)
!3068 = !DILocation(line: 247, column: 4, scope: !3036)
!3069 = !DILocation(line: 247, column: 7, scope: !3036)
!3070 = !DILocation(line: 249, column: 6, scope: !3036)
!3071 = !DILocation(line: 249, column: 12, scope: !3036)
!3072 = !DILocation(line: 249, column: 20, scope: !3036)
!3073 = !DILocation(line: 249, column: 22, scope: !3036)
!3074 = !DILocation(line: 250, column: 17, scope: !3036)
!3075 = !DILocation(line: 250, column: 16, scope: !3036)
!3076 = !DILocation(line: 250, column: 4, scope: !3036)
!3077 = !DILocation(line: 251, column: 17, scope: !3036)
!3078 = !DILocation(line: 251, column: 31, scope: !3036)
!3079 = !DILocation(line: 251, column: 32, scope: !3036)
!3080 = !DILocation(line: 251, column: 35, scope: !3036)
!3081 = !DILocation(line: 251, column: 30, scope: !3036)
!3082 = !DILocation(line: 251, column: 39, scope: !3036)
!3083 = !DILocation(line: 251, column: 16, scope: !3036)
!3084 = !DILocation(line: 251, column: 4, scope: !3036)
!3085 = !DILocation(line: 252, column: 17, scope: !3036)
!3086 = !DILocation(line: 252, column: 31, scope: !3036)
!3087 = !DILocation(line: 252, column: 32, scope: !3036)
!3088 = !DILocation(line: 252, column: 35, scope: !3036)
!3089 = !DILocation(line: 252, column: 30, scope: !3036)
!3090 = !DILocation(line: 252, column: 40, scope: !3036)
!3091 = !DILocation(line: 252, column: 16, scope: !3036)
!3092 = !DILocation(line: 252, column: 4, scope: !3036)
!3093 = !DILocation(line: 243, column: 34, scope: !3036)
!3094 = !DILocation(line: 243, column: 36, scope: !3036)
!3095 = !DILocation(line: 243, column: 35, scope: !3036)
!3096 = !DILocation(line: 243, column: 30, scope: !3036)
!3097 = !DILocation(line: 255, column: 27, scope: !3036)
!3098 = !DILocation(line: 255, column: 32, scope: !3036)
!3099 = !DILocation(line: 255, column: 26, scope: !3036)
!3100 = !DILocation(line: 255, column: 3, scope: !3036)
!3101 = !DILocation(line: 257, column: 15, scope: !3036)
!3102 = !DILocation(line: 257, column: 25, scope: !3036)
!3103 = !DILocation(line: 257, column: 14, scope: !3036)
!3104 = !DILocation(line: 257, column: 2, scope: !3036)
!3105 = !DILocation(line: 258, column: 16, scope: !3036)
!3106 = !DILocation(line: 258, column: 15, scope: !3036)
!3107 = !DILocation(line: 258, column: 2, scope: !3036)
!3108 = distinct !DISubprogram(name: "internal/reflectlite.appendEscapedRune", linkageName: "internal/reflectlite.appendEscapedRune", scope: !119, file: !119, line: 261, type: !2262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3109)
!3109 = !{!3110, !3111, !3112, !3113, !3114}
!3110 = !DILocalVariable(name: "buf", arg: 1, scope: !3108, file: !119, line: 261, type: !2264)
!3111 = !DILocalVariable(name: "r", arg: 2, scope: !3108, file: !119, line: 261, type: !2117)
!3112 = !DILocalVariable(name: "n", scope: !3108, file: !119, line: 272, type: !1788)
!3113 = !DILocalVariable(name: "s", scope: !3108, file: !119, line: 302, type: !1788)
!3114 = !DILocalVariable(name: "s", scope: !3108, file: !119, line: 307, type: !1788)
!3115 = !DILocation(line: 261, column: 6, scope: !3108)
!3116 = !DILocation(line: 265, column: 6, scope: !3108)
!3117 = !DILocation(line: 266, column: 5, scope: !3108)
!3118 = !DILocation(line: 266, column: 7, scope: !3108)
!3119 = !DILocation(line: 0, scope: !3108)
!3120 = !DILocation(line: 267, column: 16, scope: !3108)
!3121 = !DILocation(line: 267, column: 25, scope: !3108)
!3122 = !DILocation(line: 267, column: 15, scope: !3108)
!3123 = !DILocation(line: 267, column: 3, scope: !3108)
!3124 = !DILocation(line: 268, column: 16, scope: !3108)
!3125 = !DILocation(line: 268, column: 26, scope: !3108)
!3126 = !DILocation(line: 268, column: 25, scope: !3108)
!3127 = !DILocation(line: 268, column: 28, scope: !3108)
!3128 = !DILocation(line: 268, column: 15, scope: !3108)
!3129 = !DILocation(line: 268, column: 3, scope: !3108)
!3130 = !DILocation(line: 269, column: 10, scope: !3108)
!3131 = !DILocation(line: 269, column: 3, scope: !3108)
!3132 = !DILocation(line: 266, column: 25, scope: !3108)
!3133 = !DILocation(line: 266, column: 27, scope: !3108)
!3134 = !DILocation(line: 271, column: 13, scope: !3108)
!3135 = !DILocation(line: 271, column: 12, scope: !3108)
!3136 = !DILocation(line: 272, column: 31, scope: !3108)
!3137 = !DILocation(line: 272, column: 36, scope: !3108)
!3138 = !DILocation(line: 272, column: 23, scope: !3108)
!3139 = !DILocation(line: 272, column: 3, scope: !3108)
!3140 = !DILocation(line: 273, column: 16, scope: !3108)
!3141 = !DILocation(line: 273, column: 30, scope: !3108)
!3142 = !DILocation(line: 273, column: 28, scope: !3108)
!3143 = !DILocation(line: 273, column: 15, scope: !3108)
!3144 = !DILocation(line: 273, column: 3, scope: !3108)
!3145 = !DILocation(line: 274, column: 10, scope: !3108)
!3146 = !DILocation(line: 274, column: 3, scope: !3108)
!3147 = !DILocation(line: 276, column: 9, scope: !3108)
!3148 = !DILocation(line: 277, column: 7, scope: !3108)
!3149 = !DILocation(line: 278, column: 16, scope: !3108)
!3150 = !DILocation(line: 278, column: 15, scope: !3108)
!3151 = !DILocation(line: 278, column: 3, scope: !3108)
!3152 = !DILocation(line: 261, column: 24, scope: !3108)
!3153 = !DILocation(line: 312, column: 9, scope: !3108)
!3154 = !DILocation(line: 312, column: 2, scope: !3108)
!3155 = !DILocation(line: 279, column: 7, scope: !3108)
!3156 = !DILocation(line: 280, column: 16, scope: !3108)
!3157 = !DILocation(line: 280, column: 15, scope: !3108)
!3158 = !DILocation(line: 280, column: 3, scope: !3108)
!3159 = !DILocation(line: 281, column: 7, scope: !3108)
!3160 = !DILocation(line: 282, column: 16, scope: !3108)
!3161 = !DILocation(line: 282, column: 15, scope: !3108)
!3162 = !DILocation(line: 282, column: 3, scope: !3108)
!3163 = !DILocation(line: 283, column: 7, scope: !3108)
!3164 = !DILocation(line: 284, column: 16, scope: !3108)
!3165 = !DILocation(line: 284, column: 15, scope: !3108)
!3166 = !DILocation(line: 284, column: 3, scope: !3108)
!3167 = !DILocation(line: 285, column: 7, scope: !3108)
!3168 = !DILocation(line: 286, column: 16, scope: !3108)
!3169 = !DILocation(line: 286, column: 15, scope: !3108)
!3170 = !DILocation(line: 286, column: 3, scope: !3108)
!3171 = !DILocation(line: 287, column: 7, scope: !3108)
!3172 = !DILocation(line: 288, column: 16, scope: !3108)
!3173 = !DILocation(line: 288, column: 15, scope: !3108)
!3174 = !DILocation(line: 288, column: 3, scope: !3108)
!3175 = !DILocation(line: 289, column: 7, scope: !3108)
!3176 = !DILocation(line: 290, column: 16, scope: !3108)
!3177 = !DILocation(line: 290, column: 15, scope: !3108)
!3178 = !DILocation(line: 290, column: 3, scope: !3108)
!3179 = !DILocation(line: 293, column: 8, scope: !3108)
!3180 = !DILocation(line: 293, column: 10, scope: !3108)
!3181 = !DILocation(line: 293, column: 16, scope: !3108)
!3182 = !DILocation(line: 294, column: 17, scope: !3108)
!3183 = !DILocation(line: 294, column: 16, scope: !3108)
!3184 = !DILocation(line: 294, column: 4, scope: !3108)
!3185 = !DILocation(line: 295, column: 17, scope: !3108)
!3186 = !DILocation(line: 295, column: 36, scope: !3108)
!3187 = !DILocation(line: 295, column: 35, scope: !3108)
!3188 = !DILocation(line: 295, column: 38, scope: !3108)
!3189 = !DILocation(line: 295, column: 30, scope: !3108)
!3190 = !DILocation(line: 295, column: 42, scope: !3108)
!3191 = !DILocation(line: 295, column: 16, scope: !3108)
!3192 = !DILocation(line: 295, column: 4, scope: !3108)
!3193 = !DILocation(line: 296, column: 17, scope: !3108)
!3194 = !DILocation(line: 296, column: 36, scope: !3108)
!3195 = !DILocation(line: 296, column: 35, scope: !3108)
!3196 = !DILocation(line: 296, column: 38, scope: !3108)
!3197 = !DILocation(line: 296, column: 30, scope: !3108)
!3198 = !DILocation(line: 296, column: 43, scope: !3108)
!3199 = !DILocation(line: 296, column: 16, scope: !3108)
!3200 = !DILocation(line: 296, column: 4, scope: !3108)
!3201 = !DILocation(line: 297, column: 24, scope: !3108)
!3202 = !DILocation(line: 297, column: 23, scope: !3108)
!3203 = !DILocation(line: 297, column: 8, scope: !3108)
!3204 = !DILocation(line: 298, column: 4, scope: !3108)
!3205 = !DILocation(line: 261, column: 36, scope: !3108)
!3206 = !DILocation(line: 301, column: 17, scope: !3108)
!3207 = !DILocation(line: 301, column: 16, scope: !3108)
!3208 = !DILocation(line: 301, column: 4, scope: !3108)
!3209 = !DILocation(line: 302, column: 8, scope: !3108)
!3210 = !DILocation(line: 302, column: 17, scope: !3108)
!3211 = !DILocation(line: 302, column: 19, scope: !3108)
!3212 = !DILocation(line: 303, column: 18, scope: !3108)
!3213 = !DILocation(line: 303, column: 32, scope: !3108)
!3214 = !DILocation(line: 303, column: 40, scope: !3108)
!3215 = !DILocation(line: 303, column: 33, scope: !3108)
!3216 = !DILocation(line: 303, column: 42, scope: !3108)
!3217 = !DILocation(line: 303, column: 31, scope: !3108)
!3218 = !DILocation(line: 303, column: 47, scope: !3108)
!3219 = !DILocation(line: 303, column: 17, scope: !3108)
!3220 = !DILocation(line: 303, column: 5, scope: !3108)
!3221 = !DILocation(line: 302, column: 25, scope: !3108)
!3222 = !DILocation(line: 300, column: 8, scope: !3108)
!3223 = !DILocation(line: 300, column: 10, scope: !3108)
!3224 = !DILocation(line: 306, column: 17, scope: !3108)
!3225 = !DILocation(line: 306, column: 16, scope: !3108)
!3226 = !DILocation(line: 306, column: 4, scope: !3108)
!3227 = !DILocation(line: 307, column: 8, scope: !3108)
!3228 = !DILocation(line: 307, column: 17, scope: !3108)
!3229 = !DILocation(line: 307, column: 19, scope: !3108)
!3230 = !DILocation(line: 308, column: 18, scope: !3108)
!3231 = !DILocation(line: 308, column: 32, scope: !3108)
!3232 = !DILocation(line: 308, column: 40, scope: !3108)
!3233 = !DILocation(line: 308, column: 33, scope: !3108)
!3234 = !DILocation(line: 308, column: 42, scope: !3108)
!3235 = !DILocation(line: 308, column: 31, scope: !3108)
!3236 = !DILocation(line: 308, column: 47, scope: !3108)
!3237 = !DILocation(line: 308, column: 17, scope: !3108)
!3238 = !DILocation(line: 308, column: 5, scope: !3108)
!3239 = !DILocation(line: 307, column: 25, scope: !3108)
!3240 = !DILocation(line: 293, column: 19, scope: !3108)
!3241 = !DILocation(line: 293, column: 21, scope: !3108)
!3242 = distinct !DISubprogram(name: "internal/reflectlite.isPrint", linkageName: "internal/reflectlite.isPrint", scope: !119, file: !119, line: 316, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3243)
!3243 = !{!3244}
!3244 = !DILocalVariable(name: "r", arg: 1, scope: !3242, file: !119, line: 316, type: !2117)
!3245 = !DILocation(line: 316, column: 6, scope: !3242)
!3246 = !DILocation(line: 317, column: 5, scope: !3242)
!3247 = !DILocation(line: 317, column: 7, scope: !3242)
!3248 = !DILocation(line: 0, scope: !3242)
!3249 = !DILocation(line: 318, column: 14, scope: !3242)
!3250 = !DILocation(line: 318, column: 11, scope: !3242)
!3251 = !DILocation(line: 318, column: 19, scope: !3242)
!3252 = !DILocation(line: 318, column: 21, scope: !3242)
!3253 = !DILocation(line: 320, column: 4, scope: !3242)
!3254 = !DILocation(line: 322, column: 14, scope: !3242)
!3255 = !DILocation(line: 322, column: 11, scope: !3242)
!3256 = !DILocation(line: 322, column: 19, scope: !3242)
!3257 = !DILocation(line: 322, column: 21, scope: !3242)
!3258 = !DILocation(line: 324, column: 11, scope: !3242)
!3259 = !DILocation(line: 324, column: 13, scope: !3242)
!3260 = !DILocation(line: 324, column: 4, scope: !3242)
!3261 = !DILocation(line: 326, column: 3, scope: !3242)
!3262 = !DILocation(line: 330, column: 2, scope: !3242)
!3263 = distinct !DISubprogram(name: "(internal/reflectlite.Kind).String$invoke", linkageName: "(internal/reflectlite.Kind).String$invoke", scope: !35, file: !35, line: 57, type: !2969, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032)
!3264 = !DILocation(line: 57, column: 15, scope: !3263)
!3265 = distinct !DISubprogram(name: "(*internal/reflectlite.ValueError).Error", linkageName: "(*internal/reflectlite.ValueError).Error", scope: !321, file: !321, line: 1789, type: !3266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3273)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!3268}
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64, align: 64, dwarfAddressSpace: 0)
!3269 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.ValueError", baseType: !3270)
!3270 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !3271)
!3271 = !{!45, !3272}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "Kind", baseType: !2971, size: 8, align: 8, offset: 128)
!3273 = !{!3274}
!3274 = !DILocalVariable(name: "e", arg: 1, scope: !3265, file: !321, line: 1789, type: !3268)
!3275 = !DILocation(line: 1789, column: 22, scope: !3265)
!3276 = !DILocation(line: 1790, column: 5, scope: !3265)
!3277 = !DILocation(line: 1790, column: 7, scope: !3265)
!3278 = !DILocation(line: 1790, column: 12, scope: !3265)
!3279 = !DILocation(line: 0, scope: !3265)
!3280 = !DILocation(line: 1791, column: 32, scope: !3265)
!3281 = !DILocation(line: 1791, column: 34, scope: !3265)
!3282 = !DILocation(line: 1791, column: 30, scope: !3265)
!3283 = !DILocation(line: 1791, column: 41, scope: !3265)
!3284 = !DILocation(line: 1791, column: 3, scope: !3265)
!3285 = !DILocation(line: 1793, column: 31, scope: !3265)
!3286 = !DILocation(line: 1793, column: 33, scope: !3265)
!3287 = !DILocation(line: 1793, column: 29, scope: !3265)
!3288 = !DILocation(line: 1793, column: 40, scope: !3265)
!3289 = !DILocation(line: 1793, column: 51, scope: !3265)
!3290 = !DILocation(line: 1793, column: 53, scope: !3265)
!3291 = !DILocation(line: 1793, column: 64, scope: !3265)
!3292 = !DILocation(line: 1793, column: 49, scope: !3265)
!3293 = !DILocation(line: 1793, column: 67, scope: !3265)
!3294 = !DILocation(line: 1793, column: 2, scope: !3265)
!3295 = distinct !DISubprogram(name: "(internal/reflectlite.badSyntax).Error", linkageName: "(internal/reflectlite.badSyntax).Error", scope: !119, file: !119, line: 16, type: !3296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3298)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!1195}
!3298 = !{!3299}
!3299 = !DILocalVariable(name: "arg0", arg: 1, scope: !3295, file: !119, line: 16, type: !1195)
!3300 = !DILocation(line: 17, column: 2, scope: !3295)
!3301 = distinct !DISubprogram(name: "(internal/reflectlite.badSyntax).Error$invoke", linkageName: "(internal/reflectlite.badSyntax).Error$invoke", scope: !119, file: !119, line: 16, type: !3296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032)
!3302 = !DILocation(line: 16, column: 18, scope: !3301)
!3303 = distinct !DISubprogram(name: "runtime/interrupt.In", linkageName: "runtime/interrupt.In", scope: !3304, file: !3304, line: 28, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1516)
!3304 = !DIFile(filename: "interrupt_none.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!3305 = !DISubroutineType(types: !347)
!3306 = !DILocation(line: 30, column: 2, scope: !3303)
!3307 = distinct !DISubprogram(name: "(*internal/task.Mutex).Lock", linkageName: "(*internal/task.Mutex).Lock", scope: !383, file: !383, line: 31, type: !3308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3311)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!3310}
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64, dwarfAddressSpace: 0)
!3311 = !{!3312}
!3312 = !DILocalVariable(name: "m", arg: 1, scope: !3307, file: !383, line: 31, type: !3310)
!3313 = !DILocation(line: 31, column: 17, scope: !3307)
!3314 = !DILocation(line: 33, column: 5, scope: !3307)
!3315 = !DILocation(line: 33, column: 7, scope: !3307)
!3316 = !DILocation(line: 33, column: 27, scope: !3307)
!3317 = !DILocation(line: 0, scope: !3307)
!3318 = !DILocation(line: 35, column: 3, scope: !3307)
!3319 = !DILocation(line: 43, column: 6, scope: !3307)
!3320 = !DILocation(line: 43, column: 8, scope: !3307)
!3321 = !DILocation(line: 43, column: 18, scope: !3307)
!3322 = !DILocation(line: 43, column: 22, scope: !3307)
!3323 = !DILocation(line: 45, column: 3, scope: !3307)
!3324 = !DILocation(line: 45, column: 5, scope: !3307)
!3325 = !DILocation(line: 45, column: 15, scope: !3307)
!3326 = !DILocation(line: 47, column: 2, scope: !3307)
!3327 = distinct !DISubprogram(name: "(*internal/task.Mutex).Unlock", linkageName: "(*internal/task.Mutex).Unlock", scope: !383, file: !383, line: 49, type: !3308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3328)
!3328 = !{!3329, !3330}
!3329 = !DILocalVariable(name: "m", arg: 1, scope: !3327, file: !383, line: 49, type: !3310)
!3330 = !DILocalVariable(name: "old", scope: !3327, file: !383, line: 50, type: !106)
!3331 = !DILocation(line: 49, column: 17, scope: !3327)
!3332 = !DILocation(line: 50, column: 12, scope: !3327)
!3333 = !DILocation(line: 50, column: 14, scope: !3327)
!3334 = !DILocation(line: 50, column: 24, scope: !3327)
!3335 = !DILocation(line: 50, column: 5, scope: !3327)
!3336 = !DILocation(line: 50, column: 29, scope: !3327)
!3337 = !DILocation(line: 50, column: 33, scope: !3327)
!3338 = !DILocation(line: 0, scope: !3327)
!3339 = !DILocation(line: 52, column: 8, scope: !3327)
!3340 = !DILocation(line: 53, column: 12, scope: !3327)
!3341 = !DILocation(line: 53, column: 16, scope: !3327)
!3342 = !DILocation(line: 55, column: 3, scope: !3327)
!3343 = !DILocation(line: 55, column: 5, scope: !3327)
!3344 = !DILocation(line: 55, column: 15, scope: !3327)
!3345 = !DILocation(line: 57, column: 2, scope: !3327)
!3346 = distinct !DISubprogram(name: "(*internal/task.Semaphore).Wait", linkageName: "(*internal/task.Semaphore).Wait", scope: !3347, file: !3347, line: 21, type: !3348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3351)
!3347 = !DIFile(filename: "semaphore.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!3350}
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64, dwarfAddressSpace: 0)
!3351 = !{!3352, !3353, !3354}
!3352 = !DILocalVariable(name: "s", arg: 1, scope: !3346, file: !3347, line: 21, type: !3350)
!3353 = !DILocalVariable(name: "delta", scope: !3346, file: !3347, line: 22, type: !386)
!3354 = !DILocalVariable(name: "value", scope: !3346, file: !3347, line: 23, type: !106)
!3355 = !DILocation(line: 21, column: 21, scope: !3346)
!3356 = !DILocation(line: 22, column: 2, scope: !3346)
!3357 = !DILocation(line: 23, column: 11, scope: !3346)
!3358 = !DILocation(line: 23, column: 13, scope: !3346)
!3359 = !DILocation(line: 23, column: 30, scope: !3346)
!3360 = !DILocation(line: 23, column: 22, scope: !3346)
!3361 = !DILocation(line: 23, column: 2, scope: !3346)
!3362 = !DILocation(line: 0, scope: !3346)
!3363 = !DILocation(line: 25, column: 12, scope: !3346)
!3364 = !DILocation(line: 25, column: 19, scope: !3346)
!3365 = !DILocation(line: 27, column: 4, scope: !3346)
!3366 = !DILocation(line: 29, column: 3, scope: !3346)
!3367 = !DILocation(line: 29, column: 5, scope: !3346)
!3368 = !DILocation(line: 29, column: 16, scope: !3346)
!3369 = !DILocation(line: 29, column: 15, scope: !3346)
!3370 = !DILocation(line: 30, column: 11, scope: !3346)
!3371 = !DILocation(line: 30, column: 13, scope: !3346)
!3372 = !DILocation(line: 30, column: 23, scope: !3346)
!3373 = !DILocation(line: 30, column: 3, scope: !3346)
!3374 = distinct !DISubprogram(name: "internal/task.Init", linkageName: "internal/task.Init", scope: !335, file: !335, line: 55, type: !3375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3377)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!51}
!3377 = !{!3378, !3379}
!3378 = !DILocalVariable(name: "sp", arg: 1, scope: !3374, file: !335, line: 55, type: !51)
!3379 = !DILocalVariable(name: "stackTop", scope: !3374, file: !335, line: 24, type: !51)
!3380 = !DILocation(line: 55, column: 6, scope: !3374)
!3381 = !DILocation(line: 56, column: 28, scope: !3374)
!3382 = !DILocation(line: 56, column: 17, scope: !3374)
!3383 = !DILocation(line: 57, column: 18, scope: !3374)
!3384 = !DILocation(line: 58, column: 2, scope: !3374)
!3385 = distinct !DISubprogram(name: "internal/task.Current", linkageName: "internal/task.Current", scope: !335, file: !335, line: 61, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3386)
!3386 = !{!3387}
!3387 = !DILocalVariable(name: "t", scope: !3385, file: !335, line: 62, type: !336)
!3388 = !DILocation(line: 62, column: 34, scope: !3385)
!3389 = !DILocation(line: 62, column: 2, scope: !3385)
!3390 = !DILocation(line: 63, column: 5, scope: !3385)
!3391 = !DILocation(line: 63, column: 7, scope: !3385)
!3392 = !DILocation(line: 0, scope: !3385)
!3393 = !DILocation(line: 64, column: 15, scope: !3385)
!3394 = !DILocation(line: 66, column: 9, scope: !3385)
!3395 = !DILocation(line: 66, column: 2, scope: !3385)
!3396 = distinct !DISubprogram(name: "internal/task.Pause", linkageName: "internal/task.Pause", scope: !335, file: !335, line: 73, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3397)
!3397 = !{!3398}
!3398 = !DILocalVariable(name: "t", scope: !3396, file: !335, line: 75, type: !336)
!3399 = !DILocation(line: 75, column: 14, scope: !3396)
!3400 = !DILocation(line: 75, column: 2, scope: !3396)
!3401 = !DILocation(line: 0, scope: !3396)
!3402 = !DILocation(line: 77, column: 27, scope: !3396)
!3403 = !DILocation(line: 77, column: 29, scope: !3396)
!3404 = !DILocation(line: 77, column: 35, scope: !3396)
!3405 = !DILocation(line: 77, column: 10, scope: !3396)
!3406 = !DILocation(line: 79, column: 2, scope: !3396)
!3407 = !DILocation(line: 79, column: 4, scope: !3396)
!3408 = !DILocation(line: 79, column: 10, scope: !3396)
!3409 = !DILocation(line: 79, column: 23, scope: !3396)
!3410 = !DILocation(line: 80, column: 2, scope: !3396)
!3411 = distinct !DISubprogram(name: "internal/task.taskExited", linkageName: "tinygo_task_exited", scope: !335, file: !335, line: 125, type: !3412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3414)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!336}
!3414 = !{!3415, !3416, !3417, !3419}
!3415 = !DILocalVariable(name: "t", arg: 1, scope: !3411, file: !335, line: 125, type: !336)
!3416 = !DILocalVariable(name: "found", scope: !3411, file: !335, line: 133, type: !376)
!3417 = !DILocalVariable(name: "q", scope: !3411, file: !335, line: 134, type: !3418)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64, dwarfAddressSpace: 0)
!3419 = !DILocalVariable(name: "otherGoroutines", scope: !3411, file: !335, line: 99, type: !106)
!3420 = !DILocation(line: 125, column: 6, scope: !3411)
!3421 = !DILocation(line: 0, scope: !3411)
!3422 = !DILocation(line: 127, column: 24, scope: !3411)
!3423 = !DILocation(line: 127, column: 26, scope: !3411)
!3424 = !DILocation(line: 127, column: 32, scope: !3411)
!3425 = !DILocation(line: 127, column: 10, scope: !3411)
!3426 = !DILocation(line: 132, column: 21, scope: !3411)
!3427 = !DILocation(line: 133, column: 2, scope: !3411)
!3428 = !DILocation(line: 134, column: 6, scope: !3411)
!3429 = !DILocation(line: 134, column: 26, scope: !3411)
!3430 = !DILocation(line: 134, column: 25, scope: !3411)
!3431 = !DILocation(line: 134, column: 28, scope: !3411)
!3432 = !DILocation(line: 135, column: 7, scope: !3411)
!3433 = !DILocation(line: 135, column: 6, scope: !3411)
!3434 = !DILocation(line: 135, column: 12, scope: !3411)
!3435 = !DILocation(line: 135, column: 9, scope: !3411)
!3436 = !DILocation(line: 136, column: 5, scope: !3411)
!3437 = !DILocation(line: 136, column: 9, scope: !3411)
!3438 = !DILocation(line: 136, column: 11, scope: !3411)
!3439 = !DILocation(line: 136, column: 17, scope: !3411)
!3440 = !DILocation(line: 136, column: 4, scope: !3411)
!3441 = !DILocation(line: 137, column: 4, scope: !3411)
!3442 = !DILocation(line: 134, column: 43, scope: !3411)
!3443 = !DILocation(line: 134, column: 42, scope: !3411)
!3444 = !DILocation(line: 134, column: 46, scope: !3411)
!3445 = !DILocation(line: 134, column: 52, scope: !3411)
!3446 = !DILocation(line: 134, column: 36, scope: !3411)
!3447 = !DILocation(line: 141, column: 2, scope: !3411)
!3448 = !DILocation(line: 142, column: 23, scope: !3411)
!3449 = !DILocation(line: 145, column: 6, scope: !3411)
!3450 = !DILocation(line: 148, column: 2, scope: !3411)
!3451 = !DILocation(line: 146, column: 15, scope: !3411)
!3452 = distinct !DISubprogram(name: "(*internal/task.waitGroup).done", linkageName: "(*internal/task.waitGroup).done", scope: !335, file: !335, line: 163, type: !3453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3456)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!3455}
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64, dwarfAddressSpace: 0)
!3456 = !{!3457}
!3457 = !DILocalVariable(name: "wg", arg: 1, scope: !3452, file: !335, line: 163, type: !3455)
!3458 = !DILocation(line: 163, column: 22, scope: !3452)
!3459 = !DILocation(line: 164, column: 5, scope: !3452)
!3460 = !DILocation(line: 164, column: 8, scope: !3452)
!3461 = !DILocation(line: 164, column: 13, scope: !3452)
!3462 = !DILocation(line: 164, column: 26, scope: !3452)
!3463 = !DILocation(line: 0, scope: !3452)
!3464 = !DILocation(line: 165, column: 3, scope: !3452)
!3465 = !DILocation(line: 165, column: 6, scope: !3452)
!3466 = !DILocation(line: 165, column: 15, scope: !3452)
!3467 = !DILocation(line: 167, column: 2, scope: !3452)
!3468 = distinct !DISubprogram(name: "(*internal/task.waitGroup).wait", linkageName: "(*internal/task.waitGroup).wait", scope: !335, file: !335, line: 169, type: !3453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3469)
!3469 = !{!3470, !3471}
!3470 = !DILocalVariable(name: "wg", arg: 1, scope: !3468, file: !335, line: 169, type: !3455)
!3471 = !DILocalVariable(name: "val", scope: !3468, file: !335, line: 171, type: !106)
!3472 = !DILocation(line: 169, column: 22, scope: !3468)
!3473 = !DILocation(line: 0, scope: !3468)
!3474 = !DILocation(line: 171, column: 10, scope: !3468)
!3475 = !DILocation(line: 171, column: 13, scope: !3468)
!3476 = !DILocation(line: 171, column: 19, scope: !3468)
!3477 = !DILocation(line: 171, column: 3, scope: !3468)
!3478 = !DILocation(line: 172, column: 6, scope: !3468)
!3479 = !DILocation(line: 172, column: 10, scope: !3468)
!3480 = !DILocation(line: 173, column: 4, scope: !3468)
!3481 = !DILocation(line: 175, column: 3, scope: !3468)
!3482 = !DILocation(line: 175, column: 6, scope: !3468)
!3483 = !DILocation(line: 175, column: 13, scope: !3468)
!3484 = !DILocation(line: 175, column: 12, scope: !3468)
!3485 = distinct !DISubprogram(name: "internal/task.initWaitGroup", linkageName: "internal/task.initWaitGroup", scope: !335, file: !335, line: 157, type: !3486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3488)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!106}
!3488 = !{!3489, !3490}
!3489 = !DILocalVariable(name: "n", arg: 1, scope: !3485, file: !335, line: 157, type: !106)
!3490 = !DILocalVariable(name: "wg", scope: !3485, file: !335, line: 158, type: !406)
!3491 = !DILocation(line: 157, column: 6, scope: !3485)
!3492 = !DILocation(line: 158, column: 6, scope: !3485)
!3493 = !DILocation(line: 159, column: 5, scope: !3485)
!3494 = !DILocation(line: 159, column: 2, scope: !3485)
!3495 = !DILocation(line: 159, column: 13, scope: !3485)
!3496 = !DILocation(line: 159, column: 12, scope: !3485)
!3497 = !DILocation(line: 160, column: 9, scope: !3485)
!3498 = !DILocation(line: 160, column: 2, scope: !3485)
!3499 = distinct !DISubprogram(name: "internal/task.GCStopWorldAndScan", linkageName: "internal/task.GCStopWorldAndScan", scope: !335, file: !335, line: 192, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3500)
!3500 = !{!3501, !3502, !3503, !3504, !3505, !3506}
!3501 = !DILocalVariable(name: "current", scope: !3499, file: !335, line: 193, type: !336)
!3502 = !DILocalVariable(name: "otherGoroutines", scope: !3499, file: !335, line: 99, type: !106)
!3503 = !DILocalVariable(name: "scanWaitGroup", scope: !3499, file: !335, line: 151, type: !406)
!3504 = !DILocalVariable(name: "activeTasks", scope: !3499, file: !335, line: 45, type: !336)
!3505 = !DILocalVariable(name: "t", scope: !3499, file: !335, line: 212, type: !336)
!3506 = !DILocalVariable(name: "t", scope: !3499, file: !335, line: 223, type: !336)
!3507 = !DILocation(line: 193, column: 20, scope: !3499)
!3508 = !DILocation(line: 193, column: 2, scope: !3499)
!3509 = !DILocation(line: 196, column: 17, scope: !3499)
!3510 = !DILocation(line: 196, column: 20, scope: !3499)
!3511 = !DILocation(line: 0, scope: !3499)
!3512 = !DILocation(line: 199, column: 22, scope: !3499)
!3513 = !DILocation(line: 202, column: 21, scope: !3499)
!3514 = !DILocation(line: 206, column: 16, scope: !3499)
!3515 = !DILocation(line: 209, column: 33, scope: !3499)
!3516 = !DILocation(line: 209, column: 32, scope: !3499)
!3517 = !DILocation(line: 209, column: 3, scope: !3499)
!3518 = !DILocation(line: 212, column: 12, scope: !3499)
!3519 = !DILocation(line: 212, column: 7, scope: !3499)
!3520 = !DILocation(line: 212, column: 25, scope: !3499)
!3521 = !DILocation(line: 212, column: 27, scope: !3499)
!3522 = !DILocation(line: 213, column: 7, scope: !3499)
!3523 = !DILocation(line: 213, column: 12, scope: !3499)
!3524 = !DILocation(line: 213, column: 9, scope: !3499)
!3525 = !DILocation(line: 214, column: 32, scope: !3499)
!3526 = !DILocation(line: 214, column: 34, scope: !3499)
!3527 = !DILocation(line: 214, column: 40, scope: !3499)
!3528 = !DILocation(line: 214, column: 31, scope: !3499)
!3529 = !DILocation(line: 212, column: 39, scope: !3499)
!3530 = !DILocation(line: 212, column: 41, scope: !3499)
!3531 = !DILocation(line: 212, column: 47, scope: !3499)
!3532 = !DILocation(line: 212, column: 35, scope: !3499)
!3533 = !DILocation(line: 219, column: 21, scope: !3499)
!3534 = !DILocation(line: 223, column: 11, scope: !3499)
!3535 = !DILocation(line: 223, column: 6, scope: !3499)
!3536 = !DILocation(line: 223, column: 24, scope: !3499)
!3537 = !DILocation(line: 223, column: 26, scope: !3499)
!3538 = !DILocation(line: 224, column: 6, scope: !3499)
!3539 = !DILocation(line: 224, column: 11, scope: !3499)
!3540 = !DILocation(line: 224, column: 8, scope: !3499)
!3541 = !DILocation(line: 225, column: 14, scope: !3499)
!3542 = !DILocation(line: 225, column: 16, scope: !3499)
!3543 = !DILocation(line: 225, column: 22, scope: !3499)
!3544 = !DILocation(line: 225, column: 35, scope: !3499)
!3545 = !DILocation(line: 225, column: 37, scope: !3499)
!3546 = !DILocation(line: 225, column: 43, scope: !3499)
!3547 = !DILocation(line: 225, column: 13, scope: !3499)
!3548 = !DILocation(line: 223, column: 38, scope: !3499)
!3549 = !DILocation(line: 223, column: 40, scope: !3499)
!3550 = !DILocation(line: 223, column: 46, scope: !3499)
!3551 = !DILocation(line: 223, column: 34, scope: !3499)
!3552 = !DILocation(line: 230, column: 18, scope: !3499)
!3553 = !DILocation(line: 233, column: 15, scope: !3499)
!3554 = !DILocation(line: 234, column: 2, scope: !3499)
!3555 = distinct !DISubprogram(name: "internal/task.GCResumeWorld", linkageName: "internal/task.GCResumeWorld", scope: !335, file: !335, line: 237, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3556)
!3556 = !{!3557, !3558}
!3557 = !DILocalVariable(name: "otherGoroutines", scope: !3555, file: !335, line: 99, type: !106)
!3558 = !DILocalVariable(name: "scanWaitGroup", scope: !3555, file: !335, line: 151, type: !406)
!3559 = !DILocation(line: 239, column: 17, scope: !3555)
!3560 = !DILocation(line: 239, column: 20, scope: !3555)
!3561 = !DILocation(line: 0, scope: !3555)
!3562 = !DILocation(line: 241, column: 3, scope: !3555)
!3563 = !DILocation(line: 245, column: 32, scope: !3555)
!3564 = !DILocation(line: 245, column: 31, scope: !3555)
!3565 = !DILocation(line: 245, column: 2, scope: !3555)
!3566 = !DILocation(line: 248, column: 15, scope: !3555)
!3567 = !DILocation(line: 251, column: 17, scope: !3555)
!3568 = !DILocation(line: 254, column: 23, scope: !3555)
!3569 = !DILocation(line: 255, column: 2, scope: !3555)
!3570 = distinct !DISubprogram(name: "internal/task.tingyo_task_gc_pause", linkageName: "tinygo_task_gc_pause", scope: !335, file: !335, line: 266, type: !3571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3573)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!386}
!3573 = !{!3574, !3575}
!3574 = !DILocalVariable(name: "sig", arg: 1, scope: !3570, file: !335, line: 266, type: !386)
!3575 = !DILocalVariable(name: "stackBottom", scope: !3570, file: !335, line: 28, type: !51)
!3576 = !DILocation(line: 266, column: 6, scope: !3570)
!3577 = !DILocation(line: 268, column: 9, scope: !3570)
!3578 = !DILocation(line: 268, column: 12, scope: !3570)
!3579 = !DILocation(line: 268, column: 49, scope: !3570)
!3580 = !DILocation(line: 268, column: 39, scope: !3570)
!3581 = !DILocation(line: 268, column: 18, scope: !3570)
!3582 = !DILocation(line: 271, column: 20, scope: !3570)
!3583 = !DILocation(line: 0, scope: !3570)
!3584 = !DILocation(line: 274, column: 18, scope: !3570)
!3585 = !DILocation(line: 274, column: 21, scope: !3570)
!3586 = !DILocation(line: 275, column: 15, scope: !3570)
!3587 = !DILocation(line: 279, column: 20, scope: !3570)
!3588 = !DILocation(line: 280, column: 2, scope: !3570)
!3589 = distinct !DISubprogram(name: "internal/task.StackTop", linkageName: "internal/task.StackTop", scope: !335, file: !335, line: 289, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527)
!3590 = !DILocation(line: 290, column: 16, scope: !3589)
!3591 = !DILocation(line: 290, column: 19, scope: !3589)
!3592 = !DILocation(line: 290, column: 25, scope: !3589)
!3593 = !DILocation(line: 290, column: 2, scope: !3589)
!3594 = distinct !DISubprogram(name: "runtime.alloc", linkageName: "runtime.alloc", scope: !426, file: !426, line: 68, type: !3595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3597)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!51, !92}
!3597 = !{!3598, !3599, !3600}
!3598 = !DILocalVariable(name: "size", arg: 1, scope: !3594, file: !426, line: 68, type: !51)
!3599 = !DILocalVariable(name: "layout", arg: 2, scope: !3594, file: !426, line: 68, type: !92)
!3600 = !DILocalVariable(name: "ptr", scope: !3594, file: !426, line: 74, type: !92)
!3601 = !DILocation(line: 68, column: 6, scope: !3594)
!3602 = !DILocation(line: 69, column: 5, scope: !3594)
!3603 = !DILocation(line: 69, column: 10, scope: !3594)
!3604 = !DILocation(line: 0, scope: !3594)
!3605 = !DILocation(line: 70, column: 3, scope: !3594)
!3606 = !DILocation(line: 73, column: 13, scope: !3594)
!3607 = !DILocation(line: 74, column: 6, scope: !3594)
!3608 = !DILocation(line: 75, column: 5, scope: !3594)
!3609 = !DILocation(line: 75, column: 36, scope: !3594)
!3610 = !DILocation(line: 75, column: 12, scope: !3594)
!3611 = !DILocation(line: 79, column: 29, scope: !3594)
!3612 = !DILocation(line: 79, column: 28, scope: !3594)
!3613 = !DILocation(line: 79, column: 3, scope: !3594)
!3614 = !DILocation(line: 82, column: 11, scope: !3594)
!3615 = !DILocation(line: 82, column: 16, scope: !3594)
!3616 = !DILocation(line: 82, column: 10, scope: !3594)
!3617 = !DILocation(line: 90, column: 15, scope: !3594)
!3618 = !DILocation(line: 91, column: 15, scope: !3594)
!3619 = !DILocation(line: 92, column: 5, scope: !3594)
!3620 = !DILocation(line: 92, column: 9, scope: !3594)
!3621 = !DILocation(line: 93, column: 15, scope: !3594)
!3622 = !DILocation(line: 96, column: 9, scope: !3594)
!3623 = !DILocation(line: 96, column: 2, scope: !3594)
!3624 = !DILocation(line: 86, column: 22, scope: !3594)
!3625 = !DILocation(line: 86, column: 21, scope: !3594)
!3626 = !DILocation(line: 86, column: 3, scope: !3594)
!3627 = distinct !DISubprogram(name: "runtime.memzero", linkageName: "runtime.memzero", scope: !1584, file: !1584, line: 53, type: !3628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3630)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!92, !51}
!3630 = !{!3631, !3632}
!3631 = !DILocalVariable(name: "ptr", arg: 1, scope: !3627, file: !1584, line: 53, type: !92)
!3632 = !DILocalVariable(name: "size", arg: 2, scope: !3627, file: !1584, line: 53, type: !51)
!3633 = !DILocation(line: 53, column: 6, scope: !3627)
!3634 = distinct !DISubprogram(name: "runtime.gcResumeWorld", linkageName: "runtime.gcResumeWorld", scope: !3635, file: !3635, line: 27, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3635 = !DIFile(filename: "gc_stack_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3636 = !DILocation(line: 28, column: 20, scope: !3634)
!3637 = !DILocation(line: 29, column: 2, scope: !3634)
!3638 = distinct !DISubprogram(name: "runtime.runtimePanic", linkageName: "runtime.runtimePanic", scope: !433, file: !433, line: 85, type: !2112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3639)
!3639 = !{!3640}
!3640 = !DILocalVariable(name: "msg", arg: 1, scope: !3638, file: !433, line: 85, type: !46)
!3641 = !DILocation(line: 85, column: 6, scope: !3638)
!3642 = !DILocation(line: 88, column: 30, scope: !3638)
!3643 = !DILocation(line: 88, column: 35, scope: !3638)
!3644 = !DILocation(line: 88, column: 16, scope: !3638)
!3645 = !DILocation(line: 89, column: 2, scope: !3638)
!3646 = distinct !DISubprogram(name: "runtime.runtimePanicAt", linkageName: "runtime.runtimePanicAt", scope: !433, file: !433, line: 91, type: !3647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3649)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!92, !46}
!3649 = !{!3650, !3651}
!3650 = !DILocalVariable(name: "addr", arg: 1, scope: !3646, file: !433, line: 91, type: !92)
!3651 = !DILocalVariable(name: "msg", arg: 2, scope: !3646, file: !433, line: 91, type: !46)
!3652 = !DILocation(line: 91, column: 6, scope: !3646)
!3653 = !DILocation(line: 0, scope: !3646)
!3654 = !DILocation(line: 93, column: 7, scope: !3646)
!3655 = !DILocation(line: 99, column: 14, scope: !3646)
!3656 = !DILocation(line: 100, column: 20, scope: !3646)
!3657 = !DILocation(line: 100, column: 19, scope: !3646)
!3658 = !DILocation(line: 100, column: 26, scope: !3646)
!3659 = !DILocation(line: 100, column: 11, scope: !3646)
!3660 = !DILocation(line: 101, column: 14, scope: !3646)
!3661 = !DILocation(line: 105, column: 14, scope: !3646)
!3662 = !DILocation(line: 105, column: 13, scope: !3646)
!3663 = !DILocation(line: 106, column: 9, scope: !3646)
!3664 = !DILocation(line: 107, column: 7, scope: !3646)
!3665 = !DILocation(line: 108, column: 2, scope: !3646)
!3666 = !DILocation(line: 103, column: 14, scope: !3646)
!3667 = distinct !DISubprogram(name: "runtime.printstring", linkageName: "runtime.printstring", scope: !463, file: !463, line: 12, type: !2112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3668)
!3668 = !{!3669, !3670}
!3669 = !DILocalVariable(name: "s", arg: 1, scope: !3667, file: !463, line: 12, type: !46)
!3670 = !DILocalVariable(name: "i", scope: !3667, file: !463, line: 13, type: !1788)
!3671 = !DILocation(line: 12, column: 6, scope: !3667)
!3672 = !DILocation(line: 13, column: 6, scope: !3667)
!3673 = !DILocation(line: 0, scope: !3667)
!3674 = !DILocation(line: 13, column: 14, scope: !3667)
!3675 = !DILocation(line: 13, column: 22, scope: !3667)
!3676 = !DILocation(line: 13, column: 21, scope: !3667)
!3677 = !DILocation(line: 13, column: 16, scope: !3667)
!3678 = !DILocation(line: 14, column: 13, scope: !3667)
!3679 = !DILocation(line: 14, column: 11, scope: !3667)
!3680 = !DILocation(line: 14, column: 12, scope: !3667)
!3681 = !DILocation(line: 14, column: 10, scope: !3667)
!3682 = !DILocation(line: 13, column: 26, scope: !3667)
!3683 = !DILocation(line: 16, column: 2, scope: !3667)
!3684 = distinct !DISubprogram(name: "runtime.printptr", linkageName: "runtime.printptr", scope: !463, file: !463, line: 371, type: !3375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3685)
!3685 = !{!3686, !3687, !3688}
!3686 = !DILocalVariable(name: "ptr", arg: 1, scope: !3684, file: !463, line: 371, type: !51)
!3687 = !DILocalVariable(name: "i", scope: !3684, file: !463, line: 378, type: !1788)
!3688 = !DILocalVariable(name: "nibble", scope: !3684, file: !463, line: 379, type: !538)
!3689 = !DILocation(line: 371, column: 6, scope: !3684)
!3690 = !DILocation(line: 372, column: 5, scope: !3684)
!3691 = !DILocation(line: 372, column: 9, scope: !3684)
!3692 = !DILocation(line: 0, scope: !3684)
!3693 = !DILocation(line: 373, column: 14, scope: !3684)
!3694 = !DILocation(line: 374, column: 3, scope: !3684)
!3695 = !DILocation(line: 376, column: 9, scope: !3684)
!3696 = !DILocation(line: 377, column: 9, scope: !3684)
!3697 = !DILocation(line: 378, column: 6, scope: !3684)
!3698 = !DILocation(line: 371, column: 15, scope: !3684)
!3699 = !DILocation(line: 378, column: 14, scope: !3684)
!3700 = !DILocation(line: 378, column: 16, scope: !3684)
!3701 = !DILocation(line: 379, column: 18, scope: !3684)
!3702 = !DILocation(line: 379, column: 22, scope: !3684)
!3703 = !DILocation(line: 379, column: 17, scope: !3684)
!3704 = !DILocation(line: 379, column: 3, scope: !3684)
!3705 = !DILocation(line: 380, column: 6, scope: !3684)
!3706 = !DILocation(line: 380, column: 13, scope: !3684)
!3707 = !DILocation(line: 381, column: 12, scope: !3684)
!3708 = !DILocation(line: 381, column: 19, scope: !3684)
!3709 = !DILocation(line: 381, column: 11, scope: !3684)
!3710 = !DILocation(line: 385, column: 3, scope: !3684)
!3711 = !DILocation(line: 378, column: 45, scope: !3684)
!3712 = !DILocation(line: 383, column: 12, scope: !3684)
!3713 = !DILocation(line: 383, column: 19, scope: !3684)
!3714 = !DILocation(line: 383, column: 24, scope: !3684)
!3715 = !DILocation(line: 383, column: 11, scope: !3684)
!3716 = !DILocation(line: 387, column: 2, scope: !3684)
!3717 = distinct !DISubprogram(name: "runtime.printnl", linkageName: "runtime.printnl", scope: !463, file: !463, line: 286, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3718 = !DILocation(line: 0, scope: !3717)
!3719 = !DILocation(line: 288, column: 10, scope: !3717)
!3720 = !DILocation(line: 290, column: 9, scope: !3717)
!3721 = !DILocation(line: 291, column: 2, scope: !3717)
!3722 = distinct !DISubprogram(name: "runtime.putchar", linkageName: "runtime.putchar", scope: !419, file: !419, line: 214, type: !3723, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3725)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!538}
!3725 = !{!3726}
!3726 = !DILocalVariable(name: "c", arg: 1, scope: !3722, file: !419, line: 214, type: !538)
!3727 = !DILocation(line: 214, column: 6, scope: !3722)
!3728 = !DILocation(line: 215, column: 2, scope: !3722)
!3729 = !DILocation(line: 215, column: 17, scope: !3722)
!3730 = !DILocation(line: 216, column: 35, scope: !3722)
!3731 = !DILocation(line: 216, column: 12, scope: !3722)
!3732 = !DILocation(line: 217, column: 2, scope: !3722)
!3733 = distinct !DISubprogram(name: "runtime.initRand", linkageName: "runtime.initRand", scope: !414, file: !414, line: 26, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3734)
!3734 = !{!3735, !3736, !3737}
!3735 = !DILocalVariable(name: "r", scope: !3733, file: !414, line: 27, type: !343)
!3736 = !DILocalVariable(name: "xorshift64State", scope: !3733, file: !414, line: 52, type: !343)
!3737 = !DILocalVariable(name: "xorshift32State", scope: !3733, file: !414, line: 32, type: !106)
!3738 = !DILocation(line: 27, column: 22, scope: !3733)
!3739 = !DILocation(line: 27, column: 2, scope: !3733)
!3740 = !DILocation(line: 28, column: 27, scope: !3733)
!3741 = !DILocation(line: 28, column: 29, scope: !3733)
!3742 = !DILocation(line: 28, column: 2, scope: !3733)
!3743 = !DILocation(line: 29, column: 27, scope: !3733)
!3744 = !DILocation(line: 29, column: 26, scope: !3733)
!3745 = !DILocation(line: 29, column: 2, scope: !3733)
!3746 = !DILocation(line: 30, column: 2, scope: !3733)
!3747 = distinct !DISubprogram(name: "runtime.hardwareRand", linkageName: "runtime.hardwareRand", scope: !3748, file: !3748, line: 137, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3749)
!3748 = !DIFile(filename: "os_linux.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3749 = !{!3750, !3751}
!3750 = !DILocalVariable(name: "read", scope: !3747, file: !3748, line: 138, type: !106)
!3751 = !DILocalVariable(name: "n", scope: !3747, file: !3748, line: 137, type: !343)
!3752 = !DILocation(line: 137, column: 22, scope: !3747)
!3753 = !DILocation(line: 138, column: 24, scope: !3747)
!3754 = !DILocation(line: 138, column: 2, scope: !3747)
!3755 = !DILocation(line: 139, column: 5, scope: !3747)
!3756 = !DILocation(line: 139, column: 10, scope: !3747)
!3757 = !DILocation(line: 0, scope: !3747)
!3758 = !DILocation(line: 140, column: 3, scope: !3747)
!3759 = !DILocation(line: 142, column: 9, scope: !3747)
!3760 = !DILocation(line: 142, column: 2, scope: !3747)
!3761 = distinct !DISubprogram(name: "runtime.getCurrentStackPointer", linkageName: "runtime.getCurrentStackPointer", scope: !3762, file: !3762, line: 26, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3762 = !DIFile(filename: "arch_amd64.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3763 = !DILocation(line: 27, column: 26, scope: !3761)
!3764 = !DILocation(line: 27, column: 16, scope: !3761)
!3765 = !DILocation(line: 27, column: 2, scope: !3761)
!3766 = distinct !DISubprogram(name: "runtime.stacksave", linkageName: "runtime.stacksave", scope: !1584, file: !1584, line: 58, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3767 = !DILocation(line: 58, column: 6, scope: !3766)
!3768 = distinct !DISubprogram(name: "runtime.memcpy", linkageName: "runtime.memcpy", scope: !1584, file: !1584, line: 42, type: !3769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!92, !92, !51}
!3771 = !{!3772, !3773, !3774}
!3772 = !DILocalVariable(name: "dst", arg: 1, scope: !3768, file: !1584, line: 42, type: !92)
!3773 = !DILocalVariable(name: "src", arg: 2, scope: !3768, file: !1584, line: 42, type: !92)
!3774 = !DILocalVariable(name: "size", arg: 3, scope: !3768, file: !1584, line: 42, type: !51)
!3775 = !DILocation(line: 42, column: 6, scope: !3768)
!3776 = distinct !DISubprogram(name: "runtime.nilPanic", linkageName: "runtime.nilPanic", scope: !433, file: !433, line: 183, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3777 = !DILocation(line: 184, column: 30, scope: !3776)
!3778 = !DILocation(line: 184, column: 16, scope: !3776)
!3779 = !DILocation(line: 185, column: 2, scope: !3776)
!3780 = distinct !DISubprogram(name: "runtime.deadlock", linkageName: "runtime.deadlock", scope: !520, file: !520, line: 42, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3781 = !DILocation(line: 44, column: 12, scope: !3780)
!3782 = !DILocation(line: 45, column: 2, scope: !3780)
!3783 = distinct !DISubprogram(name: "runtime.lookupPanic", linkageName: "runtime.lookupPanic", scope: !433, file: !433, line: 193, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3784 = !DILocation(line: 194, column: 30, scope: !3783)
!3785 = !DILocation(line: 194, column: 16, scope: !3783)
!3786 = !DILocation(line: 195, column: 2, scope: !3783)
!3787 = distinct !DISubprogram(name: "runtime.panicOrGoexit", linkageName: "runtime.panicOrGoexit", scope: !433, file: !433, line: 58, type: !3788, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3791)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!783, !3790}
!3790 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.panicState", baseType: !4)
!3791 = !{!3792, !3793, !3794, !3805, !3806}
!3792 = !DILocalVariable(name: "message", arg: 1, scope: !3787, file: !433, line: 58, type: !783)
!3793 = !DILocalVariable(name: "panicking", arg: 2, scope: !3787, file: !433, line: 58, type: !3790)
!3794 = !DILocalVariable(name: "frame", scope: !3787, file: !433, line: 65, type: !3795)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64, align: 64, dwarfAddressSpace: 0)
!3796 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.deferFrame", baseType: !3797)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !3798)
!3798 = !{!3799, !3800, !3801, !3802, !3803, !3804}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "JumpSP", baseType: !92, size: 64, align: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "JumpPC", baseType: !92, size: 64, align: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraRegs", baseType: !2735, align: 64, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "Previous", baseType: !3795, size: 64, align: 64, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "Panicking", baseType: !3790, size: 8, align: 8, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "PanicValue", baseType: !783, size: 128, align: 64, offset: 256)
!3805 = !DILocalVariable(name: "PanicValue", scope: !3787, file: !433, line: 42, type: !783)
!3806 = !DILocalVariable(name: "Panicking", scope: !3787, file: !433, line: 41, type: !3790)
!3807 = !DILocation(line: 58, column: 6, scope: !3787)
!3808 = !DILocation(line: 0, scope: !3787)
!3809 = !DILocation(line: 60, column: 7, scope: !3787)
!3810 = !DILocation(line: 64, column: 39, scope: !3787)
!3811 = !DILocation(line: 65, column: 38, scope: !3787)
!3812 = !DILocation(line: 65, column: 41, scope: !3787)
!3813 = !DILocation(line: 65, column: 3, scope: !3787)
!3814 = !DILocation(line: 66, column: 6, scope: !3787)
!3815 = !DILocation(line: 66, column: 12, scope: !3787)
!3816 = !DILocation(line: 67, column: 4, scope: !3787)
!3817 = !DILocation(line: 67, column: 23, scope: !3787)
!3818 = !DILocation(line: 67, column: 10, scope: !3787)
!3819 = !DILocation(line: 68, column: 4, scope: !3787)
!3820 = !DILocation(line: 68, column: 22, scope: !3787)
!3821 = !DILocation(line: 68, column: 10, scope: !3787)
!3822 = !DILocation(line: 69, column: 19, scope: !3787)
!3823 = !DILocation(line: 69, column: 18, scope: !3787)
!3824 = !DILocation(line: 73, column: 5, scope: !3787)
!3825 = !DILocation(line: 73, column: 15, scope: !3787)
!3826 = !DILocation(line: 76, column: 11, scope: !3787)
!3827 = !DILocation(line: 78, column: 13, scope: !3787)
!3828 = !DILocation(line: 79, column: 11, scope: !3787)
!3829 = !DILocation(line: 79, column: 10, scope: !3787)
!3830 = !DILocation(line: 80, column: 9, scope: !3787)
!3831 = !DILocation(line: 81, column: 7, scope: !3787)
!3832 = !DILocation(line: 82, column: 2, scope: !3787)
!3833 = distinct !DISubprogram(name: "runtime.printitf", linkageName: "runtime.printitf", scope: !463, file: !463, line: 293, type: !3834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3836)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!783}
!3836 = !{!3837, !3838, !3839, !3840, !3841, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3853, !3854, !3856, !3858, !3859, !3860, !3862}
!3837 = !DILocalVariable(name: "msg", arg: 1, scope: !3833, file: !463, line: 293, type: !783)
!3838 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !376)
!3839 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !1788)
!3840 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !90)
!3841 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !3842)
!3842 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!3843 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !386)
!3844 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !1699)
!3845 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !1738)
!3846 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !4)
!3847 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !98)
!3848 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !106)
!3849 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !343)
!3850 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !51)
!3851 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !3852)
!3852 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!3853 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !800)
!3854 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !3855)
!3855 = !DIBasicType(name: "complex64", size: 64, encoding: DW_ATE_complex_float)
!3856 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !3857)
!3857 = !DIBasicType(name: "complex128", size: 128, encoding: DW_ATE_complex_float)
!3858 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !46)
!3859 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !782)
!3860 = !DILocalVariable(name: "msg", scope: !3833, file: !463, line: 294, type: !3861)
!3861 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.stringer", baseType: !783)
!3862 = !DILocalVariable(name: "itf", scope: !3833, file: !463, line: 345, type: !783)
!3863 = !DILocation(line: 293, column: 6, scope: !3833)
!3864 = !DILocation(line: 294, column: 16, scope: !3833)
!3865 = !DILocation(line: 295, column: 2, scope: !3833)
!3866 = !DILocation(line: 0, scope: !3833)
!3867 = !DILocation(line: 296, column: 13, scope: !3833)
!3868 = !DILocation(line: 296, column: 12, scope: !3833)
!3869 = !DILocation(line: 352, column: 2, scope: !3833)
!3870 = !DILocation(line: 297, column: 2, scope: !3833)
!3871 = !DILocation(line: 300, column: 21, scope: !3833)
!3872 = !DILocation(line: 300, column: 14, scope: !3833)
!3873 = !DILocation(line: 302, column: 21, scope: !3833)
!3874 = !DILocation(line: 302, column: 20, scope: !3833)
!3875 = !DILocation(line: 302, column: 14, scope: !3833)
!3876 = !DILocation(line: 304, column: 2, scope: !3833)
!3877 = !DILocation(line: 305, column: 13, scope: !3833)
!3878 = !DILocation(line: 305, column: 12, scope: !3833)
!3879 = !DILocation(line: 306, column: 2, scope: !3833)
!3880 = !DILocation(line: 307, column: 14, scope: !3833)
!3881 = !DILocation(line: 307, column: 13, scope: !3833)
!3882 = !DILocation(line: 308, column: 2, scope: !3833)
!3883 = !DILocation(line: 309, column: 14, scope: !3833)
!3884 = !DILocation(line: 309, column: 13, scope: !3833)
!3885 = !DILocation(line: 310, column: 2, scope: !3833)
!3886 = !DILocation(line: 311, column: 14, scope: !3833)
!3887 = !DILocation(line: 311, column: 13, scope: !3833)
!3888 = !DILocation(line: 312, column: 2, scope: !3833)
!3889 = !DILocation(line: 315, column: 23, scope: !3833)
!3890 = !DILocation(line: 315, column: 15, scope: !3833)
!3891 = !DILocation(line: 317, column: 23, scope: !3833)
!3892 = !DILocation(line: 317, column: 22, scope: !3833)
!3893 = !DILocation(line: 317, column: 15, scope: !3833)
!3894 = !DILocation(line: 319, column: 2, scope: !3833)
!3895 = !DILocation(line: 320, column: 14, scope: !3833)
!3896 = !DILocation(line: 320, column: 13, scope: !3833)
!3897 = !DILocation(line: 321, column: 2, scope: !3833)
!3898 = !DILocation(line: 322, column: 15, scope: !3833)
!3899 = !DILocation(line: 322, column: 14, scope: !3833)
!3900 = !DILocation(line: 323, column: 2, scope: !3833)
!3901 = !DILocation(line: 324, column: 15, scope: !3833)
!3902 = !DILocation(line: 324, column: 14, scope: !3833)
!3903 = !DILocation(line: 325, column: 2, scope: !3833)
!3904 = !DILocation(line: 326, column: 15, scope: !3833)
!3905 = !DILocation(line: 326, column: 14, scope: !3833)
!3906 = !DILocation(line: 327, column: 2, scope: !3833)
!3907 = !DILocation(line: 328, column: 16, scope: !3833)
!3908 = !DILocation(line: 328, column: 15, scope: !3833)
!3909 = !DILocation(line: 329, column: 2, scope: !3833)
!3910 = !DILocation(line: 330, column: 16, scope: !3833)
!3911 = !DILocation(line: 330, column: 15, scope: !3833)
!3912 = !DILocation(line: 331, column: 2, scope: !3833)
!3913 = !DILocation(line: 332, column: 16, scope: !3833)
!3914 = !DILocation(line: 332, column: 15, scope: !3833)
!3915 = !DILocation(line: 333, column: 2, scope: !3833)
!3916 = !DILocation(line: 334, column: 18, scope: !3833)
!3917 = !DILocation(line: 334, column: 17, scope: !3833)
!3918 = !DILocation(line: 335, column: 2, scope: !3833)
!3919 = !DILocation(line: 336, column: 19, scope: !3833)
!3920 = !DILocation(line: 336, column: 18, scope: !3833)
!3921 = !DILocation(line: 337, column: 2, scope: !3833)
!3922 = !DILocation(line: 338, column: 15, scope: !3833)
!3923 = !DILocation(line: 338, column: 14, scope: !3833)
!3924 = !DILocation(line: 339, column: 2, scope: !3833)
!3925 = !DILocation(line: 340, column: 15, scope: !3833)
!3926 = !DILocation(line: 340, column: 24, scope: !3833)
!3927 = !DILocation(line: 340, column: 14, scope: !3833)
!3928 = !DILocation(line: 341, column: 2, scope: !3833)
!3929 = !DILocation(line: 342, column: 15, scope: !3833)
!3930 = !DILocation(line: 342, column: 25, scope: !3833)
!3931 = !DILocation(line: 342, column: 14, scope: !3833)
!3932 = !DILocation(line: 294, column: 9, scope: !3833)
!3933 = !DILocation(line: 345, column: 10, scope: !3833)
!3934 = !DILocation(line: 345, column: 3, scope: !3833)
!3935 = !DILocation(line: 346, column: 10, scope: !3833)
!3936 = !DILocation(line: 347, column: 28, scope: !3833)
!3937 = !DILocation(line: 347, column: 23, scope: !3833)
!3938 = !DILocation(line: 347, column: 15, scope: !3833)
!3939 = !DILocation(line: 348, column: 10, scope: !3833)
!3940 = !DILocation(line: 349, column: 24, scope: !3833)
!3941 = !DILocation(line: 349, column: 19, scope: !3833)
!3942 = !DILocation(line: 349, column: 11, scope: !3833)
!3943 = !DILocation(line: 350, column: 10, scope: !3833)
!3944 = distinct !DISubprogram(name: "runtime.printbool", linkageName: "runtime.printbool", scope: !463, file: !463, line: 389, type: !3945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3947)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!376}
!3947 = !{!3948}
!3948 = !DILocalVariable(name: "b", arg: 1, scope: !3944, file: !463, line: 389, type: !376)
!3949 = !DILocation(line: 389, column: 6, scope: !3944)
!3950 = !DILocation(line: 390, column: 5, scope: !3944)
!3951 = !DILocation(line: 0, scope: !3944)
!3952 = !DILocation(line: 391, column: 14, scope: !3944)
!3953 = !DILocation(line: 395, column: 2, scope: !3944)
!3954 = !DILocation(line: 393, column: 14, scope: !3944)
!3955 = distinct !DISubprogram(name: "runtime.printint64", linkageName: "runtime.printint64", scope: !463, file: !463, line: 94, type: !3956, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3958)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!1699}
!3958 = !{!3959}
!3959 = !DILocalVariable(name: "n", arg: 1, scope: !3955, file: !463, line: 94, type: !1699)
!3960 = !DILocation(line: 94, column: 6, scope: !3955)
!3961 = !DILocation(line: 95, column: 5, scope: !3955)
!3962 = !DILocation(line: 95, column: 7, scope: !3955)
!3963 = !DILocation(line: 0, scope: !3955)
!3964 = !DILocation(line: 96, column: 10, scope: !3955)
!3965 = !DILocation(line: 97, column: 8, scope: !3955)
!3966 = !DILocation(line: 97, column: 7, scope: !3955)
!3967 = !DILocation(line: 97, column: 3, scope: !3955)
!3968 = !DILocation(line: 94, column: 17, scope: !3955)
!3969 = !DILocation(line: 99, column: 21, scope: !3955)
!3970 = !DILocation(line: 99, column: 13, scope: !3955)
!3971 = !DILocation(line: 100, column: 2, scope: !3955)
!3972 = distinct !DISubprogram(name: "runtime.printint32", linkageName: "runtime.printint32", scope: !463, file: !463, line: 65, type: !3571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3973)
!3973 = !{!3974}
!3974 = !DILocalVariable(name: "n", arg: 1, scope: !3972, file: !463, line: 65, type: !386)
!3975 = !DILocation(line: 65, column: 6, scope: !3972)
!3976 = !DILocation(line: 68, column: 5, scope: !3972)
!3977 = !DILocation(line: 68, column: 7, scope: !3972)
!3978 = !DILocation(line: 0, scope: !3972)
!3979 = !DILocation(line: 69, column: 10, scope: !3972)
!3980 = !DILocation(line: 70, column: 8, scope: !3972)
!3981 = !DILocation(line: 70, column: 7, scope: !3972)
!3982 = !DILocation(line: 70, column: 3, scope: !3972)
!3983 = !DILocation(line: 65, column: 17, scope: !3972)
!3984 = !DILocation(line: 72, column: 21, scope: !3972)
!3985 = !DILocation(line: 72, column: 13, scope: !3972)
!3986 = !DILocation(line: 73, column: 2, scope: !3972)
!3987 = distinct !DISubprogram(name: "runtime.printint8", linkageName: "runtime.printint8", scope: !463, file: !463, line: 30, type: !3988, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3990)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!90}
!3990 = !{!3991}
!3991 = !DILocalVariable(name: "n", arg: 1, scope: !3987, file: !463, line: 30, type: !90)
!3992 = !DILocation(line: 30, column: 6, scope: !3987)
!3993 = !DILocation(line: 0, scope: !3987)
!3994 = !DILocation(line: 32, column: 20, scope: !3987)
!3995 = !DILocation(line: 32, column: 19, scope: !3987)
!3996 = !DILocation(line: 32, column: 13, scope: !3987)
!3997 = !DILocation(line: 40, column: 2, scope: !3987)
!3998 = !DILocation(line: 34, column: 6, scope: !3987)
!3999 = !DILocation(line: 34, column: 8, scope: !3987)
!4000 = !DILocation(line: 35, column: 11, scope: !3987)
!4001 = !DILocation(line: 36, column: 9, scope: !3987)
!4002 = !DILocation(line: 36, column: 8, scope: !3987)
!4003 = !DILocation(line: 36, column: 4, scope: !3987)
!4004 = !DILocation(line: 30, column: 16, scope: !3987)
!4005 = !DILocation(line: 38, column: 20, scope: !3987)
!4006 = !DILocation(line: 38, column: 13, scope: !3987)
!4007 = distinct !DISubprogram(name: "runtime.printint16", linkageName: "runtime.printint16", scope: !463, file: !463, line: 57, type: !4008, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4010)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!3842}
!4010 = !{!4011}
!4011 = !DILocalVariable(name: "n", arg: 1, scope: !4007, file: !463, line: 57, type: !3842)
!4012 = !DILocation(line: 57, column: 6, scope: !4007)
!4013 = !DILocation(line: 58, column: 19, scope: !4007)
!4014 = !DILocation(line: 58, column: 18, scope: !4007)
!4015 = !DILocation(line: 58, column: 12, scope: !4007)
!4016 = !DILocation(line: 59, column: 2, scope: !4007)
!4017 = distinct !DISubprogram(name: "runtime.printuint64", linkageName: "runtime.printuint64", scope: !463, file: !463, line: 76, type: !1763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4018)
!4018 = !{!4019, !4020, !4021, !4022, !4023}
!4019 = !DILocalVariable(name: "n", arg: 1, scope: !4017, file: !463, line: 76, type: !343)
!4020 = !DILocalVariable(name: "firstdigit", scope: !4017, file: !463, line: 79, type: !1788)
!4021 = !DILocalVariable(name: "i", scope: !4017, file: !463, line: 80, type: !1788)
!4022 = !DILocalVariable(name: "digit", scope: !4017, file: !463, line: 81, type: !538)
!4023 = !DILocalVariable(name: "i", scope: !4017, file: !463, line: 89, type: !1788)
!4024 = !DILocation(line: 76, column: 6, scope: !4017)
!4025 = !DILocation(line: 77, column: 2, scope: !4017)
!4026 = !DILocation(line: 79, column: 2, scope: !4017)
!4027 = !DILocation(line: 80, column: 6, scope: !4017)
!4028 = !DILocation(line: 0, scope: !4017)
!4029 = !DILocation(line: 76, column: 18, scope: !4017)
!4030 = !DILocation(line: 80, column: 15, scope: !4017)
!4031 = !DILocation(line: 80, column: 17, scope: !4017)
!4032 = !DILocation(line: 81, column: 17, scope: !4017)
!4033 = !DILocation(line: 81, column: 18, scope: !4017)
!4034 = !DILocation(line: 81, column: 22, scope: !4017)
!4035 = !DILocation(line: 81, column: 16, scope: !4017)
!4036 = !DILocation(line: 81, column: 3, scope: !4017)
!4037 = !DILocation(line: 82, column: 10, scope: !4017)
!4038 = !DILocation(line: 82, column: 15, scope: !4017)
!4039 = !DILocation(line: 82, column: 9, scope: !4017)
!4040 = !DILocation(line: 83, column: 6, scope: !4017)
!4041 = !DILocation(line: 83, column: 12, scope: !4017)
!4042 = !DILocation(line: 84, column: 17, scope: !4017)
!4043 = !DILocation(line: 84, column: 4, scope: !4017)
!4044 = !DILocation(line: 86, column: 3, scope: !4017)
!4045 = !DILocation(line: 80, column: 23, scope: !4017)
!4046 = !DILocation(line: 89, column: 11, scope: !4017)
!4047 = !DILocation(line: 89, column: 6, scope: !4017)
!4048 = !DILocation(line: 89, column: 23, scope: !4017)
!4049 = !DILocation(line: 89, column: 25, scope: !4017)
!4050 = !DILocation(line: 90, column: 18, scope: !4017)
!4051 = !DILocation(line: 90, column: 17, scope: !4017)
!4052 = !DILocation(line: 90, column: 10, scope: !4017)
!4053 = !DILocation(line: 89, column: 31, scope: !4017)
!4054 = !DILocation(line: 92, column: 2, scope: !4017)
!4055 = distinct !DISubprogram(name: "runtime.printuint32", linkageName: "runtime.printuint32", scope: !463, file: !463, line: 61, type: !3486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4056)
!4056 = !{!4057}
!4057 = !DILocalVariable(name: "n", arg: 1, scope: !4055, file: !463, line: 61, type: !106)
!4058 = !DILocation(line: 61, column: 6, scope: !4055)
!4059 = !DILocation(line: 62, column: 21, scope: !4055)
!4060 = !DILocation(line: 62, column: 20, scope: !4055)
!4061 = !DILocation(line: 62, column: 13, scope: !4055)
!4062 = !DILocation(line: 63, column: 2, scope: !4055)
!4063 = distinct !DISubprogram(name: "runtime.printuint8", linkageName: "runtime.printuint8", scope: !463, file: !463, line: 18, type: !4064, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4066)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!4}
!4066 = !{!4067, !4068}
!4067 = !DILocalVariable(name: "n", arg: 1, scope: !4063, file: !463, line: 18, type: !4)
!4068 = !DILocalVariable(name: "prevdigits", scope: !4063, file: !463, line: 22, type: !4)
!4069 = !DILocation(line: 18, column: 6, scope: !4063)
!4070 = !DILocation(line: 0, scope: !4063)
!4071 = !DILocation(line: 20, column: 22, scope: !4063)
!4072 = !DILocation(line: 20, column: 21, scope: !4063)
!4073 = !DILocation(line: 20, column: 14, scope: !4063)
!4074 = !DILocation(line: 28, column: 2, scope: !4063)
!4075 = !DILocation(line: 22, column: 17, scope: !4063)
!4076 = !DILocation(line: 22, column: 19, scope: !4063)
!4077 = !DILocation(line: 22, column: 3, scope: !4063)
!4078 = !DILocation(line: 23, column: 6, scope: !4063)
!4079 = !DILocation(line: 23, column: 17, scope: !4063)
!4080 = !DILocation(line: 24, column: 15, scope: !4063)
!4081 = !DILocation(line: 24, column: 14, scope: !4063)
!4082 = !DILocation(line: 26, column: 17, scope: !4063)
!4083 = !DILocation(line: 26, column: 19, scope: !4063)
!4084 = !DILocation(line: 26, column: 25, scope: !4063)
!4085 = !DILocation(line: 26, column: 10, scope: !4063)
!4086 = distinct !DISubprogram(name: "runtime.printuint16", linkageName: "runtime.printuint16", scope: !463, file: !463, line: 53, type: !4087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4089)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!98}
!4089 = !{!4090}
!4090 = !DILocalVariable(name: "n", arg: 1, scope: !4086, file: !463, line: 53, type: !98)
!4091 = !DILocation(line: 53, column: 6, scope: !4086)
!4092 = !DILocation(line: 54, column: 21, scope: !4086)
!4093 = !DILocation(line: 54, column: 20, scope: !4086)
!4094 = !DILocation(line: 54, column: 13, scope: !4086)
!4095 = !DILocation(line: 55, column: 2, scope: !4086)
!4096 = distinct !DISubprogram(name: "runtime.printuintptr", linkageName: "runtime.printuintptr", scope: !463, file: !463, line: 42, type: !3375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4097)
!4097 = !{!4098}
!4098 = !DILocalVariable(name: "n", arg: 1, scope: !4096, file: !463, line: 42, type: !51)
!4099 = !DILocation(line: 42, column: 6, scope: !4096)
!4100 = !DILocation(line: 0, scope: !4096)
!4101 = !DILocation(line: 45, column: 22, scope: !4096)
!4102 = !DILocation(line: 45, column: 21, scope: !4096)
!4103 = !DILocation(line: 45, column: 14, scope: !4096)
!4104 = !DILocation(line: 51, column: 2, scope: !4096)
!4105 = !DILocation(line: 47, column: 22, scope: !4096)
!4106 = !DILocation(line: 47, column: 21, scope: !4096)
!4107 = !DILocation(line: 47, column: 14, scope: !4096)
!4108 = !DILocation(line: 49, column: 22, scope: !4096)
!4109 = !DILocation(line: 49, column: 14, scope: !4096)
!4110 = distinct !DISubprogram(name: "runtime.printfloat32", linkageName: "runtime.printfloat32", scope: !463, file: !463, line: 114, type: !4111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4113)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!3852}
!4113 = !{!4114, !4115, !4116, !4117, !4118, !4120, !4121, !4122}
!4114 = !DILocalVariable(name: "v", arg: 1, scope: !4110, file: !463, line: 114, type: !3852)
!4115 = !DILocalVariable(name: "e", scope: !4110, file: !463, line: 130, type: !1788)
!4116 = !DILocalVariable(name: "i", scope: !4110, file: !463, line: 164, type: !1788)
!4117 = !DILocalVariable(name: "s", scope: !4110, file: !463, line: 165, type: !1788)
!4118 = !DILocalVariable(name: "buf", scope: !4110, file: !463, line: 128, type: !4119)
!4119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 112, align: 8, elements: !121)
!4120 = !DILocalVariable(name: "c", scope: !4110, file: !463, line: 183, type: !538)
!4121 = !DILocalVariable(name: "h", scope: !4110, file: !463, line: 152, type: !3852)
!4122 = !DILocalVariable(name: "i", scope: !4110, file: !463, line: 153, type: !1788)
!4123 = !DILocation(line: 114, column: 6, scope: !4110)
!4124 = !DILocation(line: 116, column: 7, scope: !4110)
!4125 = !DILocation(line: 116, column: 12, scope: !4110)
!4126 = !DILocation(line: 116, column: 9, scope: !4110)
!4127 = !DILocation(line: 0, scope: !4110)
!4128 = !DILocation(line: 117, column: 14, scope: !4110)
!4129 = !DILocation(line: 118, column: 3, scope: !4110)
!4130 = !DILocation(line: 119, column: 7, scope: !4110)
!4131 = !DILocation(line: 119, column: 9, scope: !4110)
!4132 = !DILocation(line: 119, column: 8, scope: !4110)
!4133 = !DILocation(line: 119, column: 14, scope: !4110)
!4134 = !DILocation(line: 119, column: 11, scope: !4110)
!4135 = !DILocation(line: 119, column: 19, scope: !4110)
!4136 = !DILocation(line: 119, column: 21, scope: !4110)
!4137 = !DILocation(line: 119, column: 16, scope: !4110)
!4138 = !DILocation(line: 120, column: 14, scope: !4110)
!4139 = !DILocation(line: 121, column: 3, scope: !4110)
!4140 = !DILocation(line: 122, column: 7, scope: !4110)
!4141 = !DILocation(line: 122, column: 9, scope: !4110)
!4142 = !DILocation(line: 122, column: 8, scope: !4110)
!4143 = !DILocation(line: 122, column: 14, scope: !4110)
!4144 = !DILocation(line: 122, column: 11, scope: !4110)
!4145 = !DILocation(line: 122, column: 19, scope: !4110)
!4146 = !DILocation(line: 122, column: 21, scope: !4110)
!4147 = !DILocation(line: 122, column: 16, scope: !4110)
!4148 = !DILocation(line: 123, column: 14, scope: !4110)
!4149 = !DILocation(line: 124, column: 3, scope: !4110)
!4150 = !DILocation(line: 129, column: 5, scope: !4110)
!4151 = !DILocation(line: 130, column: 2, scope: !4110)
!4152 = !DILocation(line: 131, column: 5, scope: !4110)
!4153 = !DILocation(line: 131, column: 7, scope: !4110)
!4154 = !DILocation(line: 132, column: 8, scope: !4110)
!4155 = !DILocation(line: 132, column: 7, scope: !4110)
!4156 = !DILocation(line: 132, column: 10, scope: !4110)
!4157 = !DILocation(line: 133, column: 7, scope: !4110)
!4158 = !DILocation(line: 114, column: 19, scope: !4110)
!4159 = !DILocation(line: 164, column: 6, scope: !4110)
!4160 = !DILocation(line: 164, column: 14, scope: !4110)
!4161 = !DILocation(line: 164, column: 16, scope: !4110)
!4162 = !DILocation(line: 165, column: 12, scope: !4110)
!4163 = !DILocation(line: 165, column: 11, scope: !4110)
!4164 = !DILocation(line: 165, column: 3, scope: !4110)
!4165 = !DILocation(line: 166, column: 7, scope: !4110)
!4166 = !DILocation(line: 166, column: 8, scope: !4110)
!4167 = !DILocation(line: 166, column: 19, scope: !4110)
!4168 = !DILocation(line: 166, column: 21, scope: !4110)
!4169 = !DILocation(line: 166, column: 18, scope: !4110)
!4170 = !DILocation(line: 166, column: 6, scope: !4110)
!4171 = !DILocation(line: 167, column: 16, scope: !4110)
!4172 = !DILocation(line: 167, column: 15, scope: !4110)
!4173 = !DILocation(line: 167, column: 3, scope: !4110)
!4174 = !DILocation(line: 168, column: 3, scope: !4110)
!4175 = !DILocation(line: 164, column: 21, scope: !4110)
!4176 = !DILocation(line: 170, column: 14, scope: !4110)
!4177 = !DILocation(line: 170, column: 5, scope: !4110)
!4178 = !DILocation(line: 171, column: 5, scope: !4110)
!4179 = !DILocation(line: 173, column: 5, scope: !4110)
!4180 = !DILocation(line: 174, column: 5, scope: !4110)
!4181 = !DILocation(line: 175, column: 5, scope: !4110)
!4182 = !DILocation(line: 175, column: 7, scope: !4110)
!4183 = !DILocation(line: 176, column: 8, scope: !4110)
!4184 = !DILocation(line: 176, column: 7, scope: !4110)
!4185 = !DILocation(line: 176, column: 3, scope: !4110)
!4186 = !DILocation(line: 177, column: 6, scope: !4110)
!4187 = !DILocation(line: 180, column: 18, scope: !4110)
!4188 = !DILocation(line: 180, column: 19, scope: !4110)
!4189 = !DILocation(line: 180, column: 17, scope: !4110)
!4190 = !DILocation(line: 180, column: 25, scope: !4110)
!4191 = !DILocation(line: 180, column: 5, scope: !4110)
!4192 = !DILocation(line: 181, column: 18, scope: !4110)
!4193 = !DILocation(line: 181, column: 19, scope: !4110)
!4194 = !DILocation(line: 181, column: 17, scope: !4110)
!4195 = !DILocation(line: 181, column: 23, scope: !4110)
!4196 = !DILocation(line: 181, column: 27, scope: !4110)
!4197 = !DILocation(line: 181, column: 5, scope: !4110)
!4198 = !DILocation(line: 182, column: 18, scope: !4110)
!4199 = !DILocation(line: 182, column: 19, scope: !4110)
!4200 = !DILocation(line: 182, column: 17, scope: !4110)
!4201 = !DILocation(line: 182, column: 24, scope: !4110)
!4202 = !DILocation(line: 182, column: 5, scope: !4110)
!4203 = !DILocation(line: 183, column: 20, scope: !4110)
!4204 = !DILocation(line: 183, column: 9, scope: !4110)
!4205 = !DILocation(line: 184, column: 11, scope: !4110)
!4206 = !DILocation(line: 184, column: 10, scope: !4110)
!4207 = !DILocation(line: 186, column: 2, scope: !4110)
!4208 = !DILocation(line: 136, column: 6, scope: !4110)
!4209 = !DILocation(line: 136, column: 8, scope: !4110)
!4210 = !DILocation(line: 137, column: 9, scope: !4110)
!4211 = !DILocation(line: 137, column: 8, scope: !4110)
!4212 = !DILocation(line: 137, column: 4, scope: !4110)
!4213 = !DILocation(line: 138, column: 7, scope: !4110)
!4214 = !DILocation(line: 142, column: 7, scope: !4110)
!4215 = !DILocation(line: 142, column: 9, scope: !4110)
!4216 = !DILocation(line: 143, column: 4, scope: !4110)
!4217 = !DILocation(line: 144, column: 4, scope: !4110)
!4218 = !DILocation(line: 146, column: 7, scope: !4110)
!4219 = !DILocation(line: 146, column: 9, scope: !4110)
!4220 = !DILocation(line: 147, column: 4, scope: !4110)
!4221 = !DILocation(line: 148, column: 4, scope: !4110)
!4222 = !DILocation(line: 152, column: 3, scope: !4110)
!4223 = !DILocation(line: 153, column: 7, scope: !4110)
!4224 = !DILocation(line: 153, column: 15, scope: !4110)
!4225 = !DILocation(line: 153, column: 17, scope: !4110)
!4226 = !DILocation(line: 154, column: 4, scope: !4110)
!4227 = !DILocation(line: 153, column: 22, scope: !4110)
!4228 = !DILocation(line: 156, column: 8, scope: !4110)
!4229 = !DILocation(line: 156, column: 3, scope: !4110)
!4230 = !DILocation(line: 157, column: 6, scope: !4110)
!4231 = !DILocation(line: 157, column: 8, scope: !4110)
!4232 = !DILocation(line: 158, column: 4, scope: !4110)
!4233 = !DILocation(line: 159, column: 4, scope: !4110)
!4234 = distinct !DISubprogram(name: "runtime.printfloat64", linkageName: "runtime.printfloat64", scope: !463, file: !463, line: 194, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4235)
!4235 = !{!4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243}
!4236 = !DILocalVariable(name: "v", arg: 1, scope: !4234, file: !463, line: 194, type: !800)
!4237 = !DILocalVariable(name: "e", scope: !4234, file: !463, line: 210, type: !1788)
!4238 = !DILocalVariable(name: "i", scope: !4234, file: !463, line: 244, type: !1788)
!4239 = !DILocalVariable(name: "s", scope: !4234, file: !463, line: 245, type: !1788)
!4240 = !DILocalVariable(name: "buf", scope: !4234, file: !463, line: 208, type: !4119)
!4241 = !DILocalVariable(name: "c", scope: !4234, file: !463, line: 263, type: !538)
!4242 = !DILocalVariable(name: "h", scope: !4234, file: !463, line: 232, type: !800)
!4243 = !DILocalVariable(name: "i", scope: !4234, file: !463, line: 233, type: !1788)
!4244 = !DILocation(line: 194, column: 6, scope: !4234)
!4245 = !DILocation(line: 196, column: 7, scope: !4234)
!4246 = !DILocation(line: 196, column: 12, scope: !4234)
!4247 = !DILocation(line: 196, column: 9, scope: !4234)
!4248 = !DILocation(line: 0, scope: !4234)
!4249 = !DILocation(line: 197, column: 14, scope: !4234)
!4250 = !DILocation(line: 198, column: 3, scope: !4234)
!4251 = !DILocation(line: 199, column: 7, scope: !4234)
!4252 = !DILocation(line: 199, column: 9, scope: !4234)
!4253 = !DILocation(line: 199, column: 8, scope: !4234)
!4254 = !DILocation(line: 199, column: 14, scope: !4234)
!4255 = !DILocation(line: 199, column: 11, scope: !4234)
!4256 = !DILocation(line: 199, column: 19, scope: !4234)
!4257 = !DILocation(line: 199, column: 21, scope: !4234)
!4258 = !DILocation(line: 199, column: 16, scope: !4234)
!4259 = !DILocation(line: 200, column: 14, scope: !4234)
!4260 = !DILocation(line: 201, column: 3, scope: !4234)
!4261 = !DILocation(line: 202, column: 7, scope: !4234)
!4262 = !DILocation(line: 202, column: 9, scope: !4234)
!4263 = !DILocation(line: 202, column: 8, scope: !4234)
!4264 = !DILocation(line: 202, column: 14, scope: !4234)
!4265 = !DILocation(line: 202, column: 11, scope: !4234)
!4266 = !DILocation(line: 202, column: 19, scope: !4234)
!4267 = !DILocation(line: 202, column: 21, scope: !4234)
!4268 = !DILocation(line: 202, column: 16, scope: !4234)
!4269 = !DILocation(line: 203, column: 14, scope: !4234)
!4270 = !DILocation(line: 204, column: 3, scope: !4234)
!4271 = !DILocation(line: 209, column: 5, scope: !4234)
!4272 = !DILocation(line: 210, column: 2, scope: !4234)
!4273 = !DILocation(line: 211, column: 5, scope: !4234)
!4274 = !DILocation(line: 211, column: 7, scope: !4234)
!4275 = !DILocation(line: 212, column: 8, scope: !4234)
!4276 = !DILocation(line: 212, column: 7, scope: !4234)
!4277 = !DILocation(line: 212, column: 10, scope: !4234)
!4278 = !DILocation(line: 213, column: 7, scope: !4234)
!4279 = !DILocation(line: 194, column: 19, scope: !4234)
!4280 = !DILocation(line: 244, column: 6, scope: !4234)
!4281 = !DILocation(line: 244, column: 14, scope: !4234)
!4282 = !DILocation(line: 244, column: 16, scope: !4234)
!4283 = !DILocation(line: 245, column: 12, scope: !4234)
!4284 = !DILocation(line: 245, column: 11, scope: !4234)
!4285 = !DILocation(line: 245, column: 3, scope: !4234)
!4286 = !DILocation(line: 246, column: 7, scope: !4234)
!4287 = !DILocation(line: 246, column: 8, scope: !4234)
!4288 = !DILocation(line: 246, column: 19, scope: !4234)
!4289 = !DILocation(line: 246, column: 21, scope: !4234)
!4290 = !DILocation(line: 246, column: 18, scope: !4234)
!4291 = !DILocation(line: 246, column: 6, scope: !4234)
!4292 = !DILocation(line: 247, column: 16, scope: !4234)
!4293 = !DILocation(line: 247, column: 15, scope: !4234)
!4294 = !DILocation(line: 247, column: 3, scope: !4234)
!4295 = !DILocation(line: 248, column: 3, scope: !4234)
!4296 = !DILocation(line: 244, column: 21, scope: !4234)
!4297 = !DILocation(line: 250, column: 14, scope: !4234)
!4298 = !DILocation(line: 250, column: 5, scope: !4234)
!4299 = !DILocation(line: 251, column: 5, scope: !4234)
!4300 = !DILocation(line: 253, column: 5, scope: !4234)
!4301 = !DILocation(line: 254, column: 5, scope: !4234)
!4302 = !DILocation(line: 255, column: 5, scope: !4234)
!4303 = !DILocation(line: 255, column: 7, scope: !4234)
!4304 = !DILocation(line: 256, column: 8, scope: !4234)
!4305 = !DILocation(line: 256, column: 7, scope: !4234)
!4306 = !DILocation(line: 256, column: 3, scope: !4234)
!4307 = !DILocation(line: 257, column: 6, scope: !4234)
!4308 = !DILocation(line: 260, column: 18, scope: !4234)
!4309 = !DILocation(line: 260, column: 19, scope: !4234)
!4310 = !DILocation(line: 260, column: 17, scope: !4234)
!4311 = !DILocation(line: 260, column: 25, scope: !4234)
!4312 = !DILocation(line: 260, column: 5, scope: !4234)
!4313 = !DILocation(line: 261, column: 18, scope: !4234)
!4314 = !DILocation(line: 261, column: 19, scope: !4234)
!4315 = !DILocation(line: 261, column: 17, scope: !4234)
!4316 = !DILocation(line: 261, column: 23, scope: !4234)
!4317 = !DILocation(line: 261, column: 27, scope: !4234)
!4318 = !DILocation(line: 261, column: 5, scope: !4234)
!4319 = !DILocation(line: 262, column: 18, scope: !4234)
!4320 = !DILocation(line: 262, column: 19, scope: !4234)
!4321 = !DILocation(line: 262, column: 17, scope: !4234)
!4322 = !DILocation(line: 262, column: 24, scope: !4234)
!4323 = !DILocation(line: 262, column: 5, scope: !4234)
!4324 = !DILocation(line: 263, column: 20, scope: !4234)
!4325 = !DILocation(line: 263, column: 9, scope: !4234)
!4326 = !DILocation(line: 264, column: 11, scope: !4234)
!4327 = !DILocation(line: 264, column: 10, scope: !4234)
!4328 = !DILocation(line: 266, column: 2, scope: !4234)
!4329 = !DILocation(line: 216, column: 6, scope: !4234)
!4330 = !DILocation(line: 216, column: 8, scope: !4234)
!4331 = !DILocation(line: 217, column: 9, scope: !4234)
!4332 = !DILocation(line: 217, column: 8, scope: !4234)
!4333 = !DILocation(line: 217, column: 4, scope: !4234)
!4334 = !DILocation(line: 218, column: 7, scope: !4234)
!4335 = !DILocation(line: 222, column: 7, scope: !4234)
!4336 = !DILocation(line: 222, column: 9, scope: !4234)
!4337 = !DILocation(line: 223, column: 4, scope: !4234)
!4338 = !DILocation(line: 224, column: 4, scope: !4234)
!4339 = !DILocation(line: 226, column: 7, scope: !4234)
!4340 = !DILocation(line: 226, column: 9, scope: !4234)
!4341 = !DILocation(line: 227, column: 4, scope: !4234)
!4342 = !DILocation(line: 228, column: 4, scope: !4234)
!4343 = !DILocation(line: 232, column: 3, scope: !4234)
!4344 = !DILocation(line: 233, column: 7, scope: !4234)
!4345 = !DILocation(line: 233, column: 15, scope: !4234)
!4346 = !DILocation(line: 233, column: 17, scope: !4234)
!4347 = !DILocation(line: 234, column: 4, scope: !4234)
!4348 = !DILocation(line: 233, column: 22, scope: !4234)
!4349 = !DILocation(line: 236, column: 8, scope: !4234)
!4350 = !DILocation(line: 236, column: 3, scope: !4234)
!4351 = !DILocation(line: 237, column: 6, scope: !4234)
!4352 = !DILocation(line: 237, column: 8, scope: !4234)
!4353 = !DILocation(line: 238, column: 4, scope: !4234)
!4354 = !DILocation(line: 239, column: 4, scope: !4234)
!4355 = distinct !DISubprogram(name: "runtime.printcomplex64", linkageName: "runtime.printcomplex64", scope: !463, file: !463, line: 268, type: !4356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4358)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!3855}
!4358 = !{!4359}
!4359 = !DILocalVariable(name: "c", arg: 1, scope: !4355, file: !463, line: 268, type: !3855)
!4360 = !DILocation(line: 268, column: 6, scope: !4355)
!4361 = !DILocation(line: 269, column: 9, scope: !4355)
!4362 = !DILocation(line: 270, column: 20, scope: !4355)
!4363 = !DILocation(line: 270, column: 19, scope: !4355)
!4364 = !DILocation(line: 270, column: 14, scope: !4355)
!4365 = !DILocation(line: 271, column: 20, scope: !4355)
!4366 = !DILocation(line: 271, column: 19, scope: !4355)
!4367 = !DILocation(line: 271, column: 14, scope: !4355)
!4368 = !DILocation(line: 272, column: 13, scope: !4355)
!4369 = !DILocation(line: 273, column: 2, scope: !4355)
!4370 = distinct !DISubprogram(name: "runtime.printcomplex128", linkageName: "runtime.printcomplex128", scope: !463, file: !463, line: 275, type: !4371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4373)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!3857}
!4373 = !{!4374}
!4374 = !DILocalVariable(name: "c", arg: 1, scope: !4370, file: !463, line: 275, type: !3857)
!4375 = !DILocation(line: 275, column: 6, scope: !4370)
!4376 = !DILocation(line: 276, column: 9, scope: !4370)
!4377 = !DILocation(line: 277, column: 20, scope: !4370)
!4378 = !DILocation(line: 277, column: 19, scope: !4370)
!4379 = !DILocation(line: 277, column: 14, scope: !4370)
!4380 = !DILocation(line: 278, column: 20, scope: !4370)
!4381 = !DILocation(line: 278, column: 19, scope: !4370)
!4382 = !DILocation(line: 278, column: 14, scope: !4370)
!4383 = !DILocation(line: 279, column: 13, scope: !4370)
!4384 = !DILocation(line: 280, column: 2, scope: !4370)
!4385 = distinct !DISubprogram(name: "runtime._panic", linkageName: "runtime._panic", scope: !433, file: !433, line: 54, type: !3834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4386)
!4386 = !{!4387}
!4387 = !DILocalVariable(name: "message", arg: 1, scope: !4385, file: !433, line: 54, type: !783)
!4388 = !DILocation(line: 54, column: 6, scope: !4385)
!4389 = !DILocation(line: 55, column: 16, scope: !4385)
!4390 = !DILocation(line: 55, column: 15, scope: !4385)
!4391 = !DILocation(line: 56, column: 2, scope: !4385)
!4392 = distinct !DISubprogram(name: "runtime.stringEqual", linkageName: "runtime.stringEqual", scope: !4393, file: !4393, line: 24, type: !4394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4396)
!4393 = !DIFile(filename: "string.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!46, !46}
!4396 = !{!4397, !4398, !4399}
!4397 = !DILocalVariable(name: "x", arg: 1, scope: !4392, file: !4393, line: 24, type: !46)
!4398 = !DILocalVariable(name: "y", arg: 2, scope: !4392, file: !4393, line: 24, type: !46)
!4399 = !DILocalVariable(name: "i", scope: !4392, file: !4393, line: 28, type: !1788)
!4400 = !DILocation(line: 24, column: 6, scope: !4392)
!4401 = !DILocation(line: 25, column: 9, scope: !4392)
!4402 = !DILocation(line: 25, column: 8, scope: !4392)
!4403 = !DILocation(line: 25, column: 19, scope: !4392)
!4404 = !DILocation(line: 25, column: 18, scope: !4392)
!4405 = !DILocation(line: 25, column: 12, scope: !4392)
!4406 = !DILocation(line: 0, scope: !4392)
!4407 = !DILocation(line: 26, column: 3, scope: !4392)
!4408 = !DILocation(line: 28, column: 6, scope: !4392)
!4409 = !DILocation(line: 28, column: 14, scope: !4392)
!4410 = !DILocation(line: 28, column: 22, scope: !4392)
!4411 = !DILocation(line: 28, column: 21, scope: !4392)
!4412 = !DILocation(line: 28, column: 16, scope: !4392)
!4413 = !DILocation(line: 29, column: 8, scope: !4392)
!4414 = !DILocation(line: 29, column: 6, scope: !4392)
!4415 = !DILocation(line: 29, column: 7, scope: !4392)
!4416 = !DILocation(line: 29, column: 16, scope: !4392)
!4417 = !DILocation(line: 29, column: 14, scope: !4392)
!4418 = !DILocation(line: 29, column: 15, scope: !4392)
!4419 = !DILocation(line: 29, column: 11, scope: !4392)
!4420 = !DILocation(line: 30, column: 4, scope: !4392)
!4421 = !DILocation(line: 28, column: 26, scope: !4392)
!4422 = !DILocation(line: 33, column: 2, scope: !4392)
!4423 = distinct !DISubprogram(name: "runtime.slicePanic", linkageName: "runtime.slicePanic", scope: !433, file: !433, line: 198, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4424 = !DILocation(line: 199, column: 30, scope: !4423)
!4425 = !DILocation(line: 199, column: 16, scope: !4423)
!4426 = !DILocation(line: 200, column: 2, scope: !4423)
!4427 = distinct !DISubprogram(name: "runtime.fminimum", linkageName: "fminimum", scope: !1560, file: !1560, line: 60, type: !4428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4430)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!800, !800}
!4430 = !{!4431, !4432}
!4431 = !DILocalVariable(name: "x", arg: 1, scope: !4427, file: !1560, line: 60, type: !800)
!4432 = !DILocalVariable(name: "y", arg: 2, scope: !4427, file: !1560, line: 60, type: !800)
!4433 = !DILocation(line: 60, column: 6, scope: !4427)
!4434 = !DILocation(line: 61, column: 24, scope: !4427)
!4435 = !DILocation(line: 61, column: 27, scope: !4427)
!4436 = !DILocation(line: 61, column: 23, scope: !4427)
!4437 = !DILocation(line: 61, column: 2, scope: !4427)
!4438 = distinct !DISubprogram(name: "runtime.minimumFloat64", linkageName: "runtime.minimumFloat64", scope: !1560, file: !1560, line: 87, type: !4428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4439)
!4439 = !{!4440, !4441}
!4440 = !DILocalVariable(name: "x", arg: 1, scope: !4438, file: !1560, line: 87, type: !800)
!4441 = !DILocalVariable(name: "y", arg: 2, scope: !4438, file: !1560, line: 87, type: !800)
!4442 = !DILocation(line: 87, column: 6, scope: !4438)
!4443 = !DILocation(line: 88, column: 38, scope: !4438)
!4444 = !DILocation(line: 88, column: 41, scope: !4438)
!4445 = !DILocation(line: 88, column: 37, scope: !4438)
!4446 = !DILocation(line: 88, column: 2, scope: !4438)
!4447 = distinct !DISubprogram(name: "runtime.minimumFloat[float64 int64]", linkageName: "runtime.minimumFloat[float64 int64]", scope: !1560, file: !1560, line: 101, type: !4448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4450)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!800, !800, !1699, !1699}
!4450 = !{!4451, !4452, !4453, !4454, !4455, !4456}
!4451 = !DILocalVariable(name: "x", arg: 1, scope: !4447, file: !1560, line: 101, type: !800)
!4452 = !DILocalVariable(name: "y", arg: 2, scope: !4447, file: !1560, line: 101, type: !800)
!4453 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4447, file: !1560, line: 101, type: !1699)
!4454 = !DILocalVariable(name: "magMask", arg: 4, scope: !4447, file: !1560, line: 101, type: !1699)
!4455 = !DILocalVariable(name: "xBits", scope: !4447, file: !1560, line: 102, type: !783)
!4456 = !DILocalVariable(name: "yBits", scope: !4447, file: !1560, line: 103, type: !783)
!4457 = !DILocation(line: 101, column: 6, scope: !4447)
!4458 = !DILocation(line: 101, column: 40, scope: !4447)
!4459 = !DILocation(line: 101, column: 43, scope: !4447)
!4460 = !DILocation(line: 102, column: 11, scope: !4447)
!4461 = !DILocation(line: 102, column: 2, scope: !4447)
!4462 = !DILocation(line: 103, column: 11, scope: !4447)
!4463 = !DILocation(line: 103, column: 2, scope: !4447)
!4464 = !DILocation(line: 107, column: 7, scope: !4447)
!4465 = !DILocation(line: 107, column: 16, scope: !4447)
!4466 = !DILocation(line: 107, column: 13, scope: !4447)
!4467 = !DILocation(line: 0, scope: !4447)
!4468 = !DILocation(line: 108, column: 10, scope: !4447)
!4469 = !DILocation(line: 108, column: 3, scope: !4447)
!4470 = !DILocation(line: 109, column: 7, scope: !4447)
!4471 = !DILocation(line: 109, column: 16, scope: !4447)
!4472 = !DILocation(line: 109, column: 13, scope: !4447)
!4473 = !DILocation(line: 110, column: 10, scope: !4447)
!4474 = !DILocation(line: 110, column: 3, scope: !4447)
!4475 = !DILocation(line: 118, column: 5, scope: !4447)
!4476 = !DILocation(line: 118, column: 11, scope: !4447)
!4477 = !DILocation(line: 119, column: 12, scope: !4447)
!4478 = !DILocation(line: 119, column: 3, scope: !4447)
!4479 = !DILocation(line: 121, column: 5, scope: !4447)
!4480 = !DILocation(line: 121, column: 11, scope: !4447)
!4481 = !DILocation(line: 122, column: 12, scope: !4447)
!4482 = !DILocation(line: 122, column: 3, scope: !4447)
!4483 = !DILocation(line: 124, column: 5, scope: !4447)
!4484 = !DILocation(line: 124, column: 14, scope: !4447)
!4485 = !DILocation(line: 124, column: 11, scope: !4447)
!4486 = !DILocation(line: 125, column: 10, scope: !4447)
!4487 = !DILocation(line: 125, column: 3, scope: !4447)
!4488 = !DILocation(line: 127, column: 10, scope: !4447)
!4489 = !DILocation(line: 127, column: 3, scope: !4447)
!4490 = distinct !DISubprogram(name: "runtime.fminimumf", linkageName: "fminimumf", scope: !1560, file: !1560, line: 65, type: !4491, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4493)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!3852, !3852}
!4493 = !{!4494, !4495}
!4494 = !DILocalVariable(name: "x", arg: 1, scope: !4490, file: !1560, line: 65, type: !3852)
!4495 = !DILocalVariable(name: "y", arg: 2, scope: !4490, file: !1560, line: 65, type: !3852)
!4496 = !DILocation(line: 65, column: 6, scope: !4490)
!4497 = !DILocation(line: 66, column: 24, scope: !4490)
!4498 = !DILocation(line: 66, column: 27, scope: !4490)
!4499 = !DILocation(line: 66, column: 23, scope: !4490)
!4500 = !DILocation(line: 66, column: 2, scope: !4490)
!4501 = distinct !DISubprogram(name: "runtime.minimumFloat32", linkageName: "runtime.minimumFloat32", scope: !1560, file: !1560, line: 83, type: !4491, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4502)
!4502 = !{!4503, !4504}
!4503 = !DILocalVariable(name: "x", arg: 1, scope: !4501, file: !1560, line: 83, type: !3852)
!4504 = !DILocalVariable(name: "y", arg: 2, scope: !4501, file: !1560, line: 83, type: !3852)
!4505 = !DILocation(line: 83, column: 6, scope: !4501)
!4506 = !DILocation(line: 84, column: 38, scope: !4501)
!4507 = !DILocation(line: 84, column: 41, scope: !4501)
!4508 = !DILocation(line: 84, column: 37, scope: !4501)
!4509 = !DILocation(line: 84, column: 2, scope: !4501)
!4510 = distinct !DISubprogram(name: "runtime.minimumFloat[float32 int32]", linkageName: "runtime.minimumFloat[float32 int32]", scope: !1560, file: !1560, line: 101, type: !4511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4513)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{!3852, !3852, !386, !386}
!4513 = !{!4514, !4515, !4516, !4517, !4518, !4519}
!4514 = !DILocalVariable(name: "x", arg: 1, scope: !4510, file: !1560, line: 101, type: !3852)
!4515 = !DILocalVariable(name: "y", arg: 2, scope: !4510, file: !1560, line: 101, type: !3852)
!4516 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4510, file: !1560, line: 101, type: !386)
!4517 = !DILocalVariable(name: "magMask", arg: 4, scope: !4510, file: !1560, line: 101, type: !386)
!4518 = !DILocalVariable(name: "xBits", scope: !4510, file: !1560, line: 102, type: !783)
!4519 = !DILocalVariable(name: "yBits", scope: !4510, file: !1560, line: 103, type: !783)
!4520 = !DILocation(line: 101, column: 6, scope: !4510)
!4521 = !DILocation(line: 101, column: 40, scope: !4510)
!4522 = !DILocation(line: 101, column: 43, scope: !4510)
!4523 = !DILocation(line: 102, column: 11, scope: !4510)
!4524 = !DILocation(line: 102, column: 2, scope: !4510)
!4525 = !DILocation(line: 103, column: 11, scope: !4510)
!4526 = !DILocation(line: 103, column: 2, scope: !4510)
!4527 = !DILocation(line: 107, column: 7, scope: !4510)
!4528 = !DILocation(line: 107, column: 16, scope: !4510)
!4529 = !DILocation(line: 107, column: 13, scope: !4510)
!4530 = !DILocation(line: 0, scope: !4510)
!4531 = !DILocation(line: 108, column: 10, scope: !4510)
!4532 = !DILocation(line: 108, column: 3, scope: !4510)
!4533 = !DILocation(line: 109, column: 7, scope: !4510)
!4534 = !DILocation(line: 109, column: 16, scope: !4510)
!4535 = !DILocation(line: 109, column: 13, scope: !4510)
!4536 = !DILocation(line: 110, column: 10, scope: !4510)
!4537 = !DILocation(line: 110, column: 3, scope: !4510)
!4538 = !DILocation(line: 118, column: 5, scope: !4510)
!4539 = !DILocation(line: 118, column: 11, scope: !4510)
!4540 = !DILocation(line: 119, column: 12, scope: !4510)
!4541 = !DILocation(line: 119, column: 3, scope: !4510)
!4542 = !DILocation(line: 121, column: 5, scope: !4510)
!4543 = !DILocation(line: 121, column: 11, scope: !4510)
!4544 = !DILocation(line: 122, column: 12, scope: !4510)
!4545 = !DILocation(line: 122, column: 3, scope: !4510)
!4546 = !DILocation(line: 124, column: 5, scope: !4510)
!4547 = !DILocation(line: 124, column: 14, scope: !4510)
!4548 = !DILocation(line: 124, column: 11, scope: !4510)
!4549 = !DILocation(line: 125, column: 10, scope: !4510)
!4550 = !DILocation(line: 125, column: 3, scope: !4510)
!4551 = !DILocation(line: 127, column: 10, scope: !4510)
!4552 = !DILocation(line: 127, column: 3, scope: !4510)
!4553 = distinct !DISubprogram(name: "runtime.fmaximum", linkageName: "fmaximum", scope: !1560, file: !1560, line: 70, type: !4428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4554)
!4554 = !{!4555, !4556}
!4555 = !DILocalVariable(name: "x", arg: 1, scope: !4553, file: !1560, line: 70, type: !800)
!4556 = !DILocalVariable(name: "y", arg: 2, scope: !4553, file: !1560, line: 70, type: !800)
!4557 = !DILocation(line: 70, column: 6, scope: !4553)
!4558 = !DILocation(line: 71, column: 24, scope: !4553)
!4559 = !DILocation(line: 71, column: 27, scope: !4553)
!4560 = !DILocation(line: 71, column: 23, scope: !4553)
!4561 = !DILocation(line: 71, column: 2, scope: !4553)
!4562 = distinct !DISubprogram(name: "runtime.maximumFloat64", linkageName: "runtime.maximumFloat64", scope: !1560, file: !1560, line: 95, type: !4428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4563)
!4563 = !{!4564, !4565}
!4564 = !DILocalVariable(name: "x", arg: 1, scope: !4562, file: !1560, line: 95, type: !800)
!4565 = !DILocalVariable(name: "y", arg: 2, scope: !4562, file: !1560, line: 95, type: !800)
!4566 = !DILocation(line: 95, column: 6, scope: !4562)
!4567 = !DILocation(line: 96, column: 38, scope: !4562)
!4568 = !DILocation(line: 96, column: 41, scope: !4562)
!4569 = !DILocation(line: 96, column: 37, scope: !4562)
!4570 = !DILocation(line: 96, column: 2, scope: !4562)
!4571 = distinct !DISubprogram(name: "runtime.maximumFloat[float64 int64]", linkageName: "runtime.maximumFloat[float64 int64]", scope: !1560, file: !1560, line: 133, type: !4448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4572)
!4572 = !{!4573, !4574, !4575, !4576, !4577, !4578, !4579}
!4573 = !DILocalVariable(name: "x", arg: 1, scope: !4571, file: !1560, line: 133, type: !800)
!4574 = !DILocalVariable(name: "y", arg: 2, scope: !4571, file: !1560, line: 133, type: !800)
!4575 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4571, file: !1560, line: 133, type: !1699)
!4576 = !DILocalVariable(name: "magMask", arg: 4, scope: !4571, file: !1560, line: 133, type: !1699)
!4577 = !DILocalVariable(name: "xBits", scope: !4571, file: !1560, line: 134, type: !783)
!4578 = !DILocalVariable(name: "yBits", scope: !4571, file: !1560, line: 135, type: !783)
!4579 = !DILocalVariable(name: "maxNegNaN", scope: !4571, file: !1560, line: 149, type: !783)
!4580 = !DILocation(line: 133, column: 6, scope: !4571)
!4581 = !DILocation(line: 133, column: 40, scope: !4571)
!4582 = !DILocation(line: 133, column: 43, scope: !4571)
!4583 = !DILocation(line: 134, column: 11, scope: !4571)
!4584 = !DILocation(line: 134, column: 2, scope: !4571)
!4585 = !DILocation(line: 135, column: 11, scope: !4571)
!4586 = !DILocation(line: 135, column: 2, scope: !4571)
!4587 = !DILocation(line: 142, column: 5, scope: !4571)
!4588 = !DILocation(line: 142, column: 11, scope: !4571)
!4589 = !DILocation(line: 0, scope: !4571)
!4590 = !DILocation(line: 143, column: 12, scope: !4571)
!4591 = !DILocation(line: 143, column: 3, scope: !4571)
!4592 = !DILocation(line: 145, column: 5, scope: !4571)
!4593 = !DILocation(line: 145, column: 11, scope: !4571)
!4594 = !DILocation(line: 146, column: 12, scope: !4571)
!4595 = !DILocation(line: 146, column: 3, scope: !4571)
!4596 = !DILocation(line: 149, column: 16, scope: !4571)
!4597 = !DILocation(line: 149, column: 15, scope: !4571)
!4598 = !DILocation(line: 149, column: 2, scope: !4571)
!4599 = !DILocation(line: 151, column: 7, scope: !4571)
!4600 = !DILocation(line: 151, column: 16, scope: !4571)
!4601 = !DILocation(line: 151, column: 13, scope: !4571)
!4602 = !DILocation(line: 152, column: 10, scope: !4571)
!4603 = !DILocation(line: 152, column: 3, scope: !4571)
!4604 = !DILocation(line: 153, column: 7, scope: !4571)
!4605 = !DILocation(line: 153, column: 16, scope: !4571)
!4606 = !DILocation(line: 153, column: 13, scope: !4571)
!4607 = !DILocation(line: 154, column: 10, scope: !4571)
!4608 = !DILocation(line: 154, column: 3, scope: !4571)
!4609 = !DILocation(line: 156, column: 5, scope: !4571)
!4610 = !DILocation(line: 156, column: 14, scope: !4571)
!4611 = !DILocation(line: 156, column: 11, scope: !4571)
!4612 = !DILocation(line: 157, column: 10, scope: !4571)
!4613 = !DILocation(line: 157, column: 3, scope: !4571)
!4614 = !DILocation(line: 159, column: 10, scope: !4571)
!4615 = !DILocation(line: 159, column: 3, scope: !4571)
!4616 = distinct !DISubprogram(name: "runtime.fmaximumf", linkageName: "fmaximumf", scope: !1560, file: !1560, line: 75, type: !4491, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4617)
!4617 = !{!4618, !4619}
!4618 = !DILocalVariable(name: "x", arg: 1, scope: !4616, file: !1560, line: 75, type: !3852)
!4619 = !DILocalVariable(name: "y", arg: 2, scope: !4616, file: !1560, line: 75, type: !3852)
!4620 = !DILocation(line: 75, column: 6, scope: !4616)
!4621 = !DILocation(line: 76, column: 24, scope: !4616)
!4622 = !DILocation(line: 76, column: 27, scope: !4616)
!4623 = !DILocation(line: 76, column: 23, scope: !4616)
!4624 = !DILocation(line: 76, column: 2, scope: !4616)
!4625 = distinct !DISubprogram(name: "runtime.maximumFloat32", linkageName: "runtime.maximumFloat32", scope: !1560, file: !1560, line: 91, type: !4491, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4626)
!4626 = !{!4627, !4628}
!4627 = !DILocalVariable(name: "x", arg: 1, scope: !4625, file: !1560, line: 91, type: !3852)
!4628 = !DILocalVariable(name: "y", arg: 2, scope: !4625, file: !1560, line: 91, type: !3852)
!4629 = !DILocation(line: 91, column: 6, scope: !4625)
!4630 = !DILocation(line: 92, column: 38, scope: !4625)
!4631 = !DILocation(line: 92, column: 41, scope: !4625)
!4632 = !DILocation(line: 92, column: 37, scope: !4625)
!4633 = !DILocation(line: 92, column: 2, scope: !4625)
!4634 = distinct !DISubprogram(name: "runtime.maximumFloat[float32 int32]", linkageName: "runtime.maximumFloat[float32 int32]", scope: !1560, file: !1560, line: 133, type: !4511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4635)
!4635 = !{!4636, !4637, !4638, !4639, !4640, !4641, !4642}
!4636 = !DILocalVariable(name: "x", arg: 1, scope: !4634, file: !1560, line: 133, type: !3852)
!4637 = !DILocalVariable(name: "y", arg: 2, scope: !4634, file: !1560, line: 133, type: !3852)
!4638 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4634, file: !1560, line: 133, type: !386)
!4639 = !DILocalVariable(name: "magMask", arg: 4, scope: !4634, file: !1560, line: 133, type: !386)
!4640 = !DILocalVariable(name: "xBits", scope: !4634, file: !1560, line: 134, type: !783)
!4641 = !DILocalVariable(name: "yBits", scope: !4634, file: !1560, line: 135, type: !783)
!4642 = !DILocalVariable(name: "maxNegNaN", scope: !4634, file: !1560, line: 149, type: !783)
!4643 = !DILocation(line: 133, column: 6, scope: !4634)
!4644 = !DILocation(line: 133, column: 40, scope: !4634)
!4645 = !DILocation(line: 133, column: 43, scope: !4634)
!4646 = !DILocation(line: 134, column: 11, scope: !4634)
!4647 = !DILocation(line: 134, column: 2, scope: !4634)
!4648 = !DILocation(line: 135, column: 11, scope: !4634)
!4649 = !DILocation(line: 135, column: 2, scope: !4634)
!4650 = !DILocation(line: 142, column: 5, scope: !4634)
!4651 = !DILocation(line: 142, column: 11, scope: !4634)
!4652 = !DILocation(line: 0, scope: !4634)
!4653 = !DILocation(line: 143, column: 12, scope: !4634)
!4654 = !DILocation(line: 143, column: 3, scope: !4634)
!4655 = !DILocation(line: 145, column: 5, scope: !4634)
!4656 = !DILocation(line: 145, column: 11, scope: !4634)
!4657 = !DILocation(line: 146, column: 12, scope: !4634)
!4658 = !DILocation(line: 146, column: 3, scope: !4634)
!4659 = !DILocation(line: 149, column: 16, scope: !4634)
!4660 = !DILocation(line: 149, column: 15, scope: !4634)
!4661 = !DILocation(line: 149, column: 2, scope: !4634)
!4662 = !DILocation(line: 151, column: 7, scope: !4634)
!4663 = !DILocation(line: 151, column: 16, scope: !4634)
!4664 = !DILocation(line: 151, column: 13, scope: !4634)
!4665 = !DILocation(line: 152, column: 10, scope: !4634)
!4666 = !DILocation(line: 152, column: 3, scope: !4634)
!4667 = !DILocation(line: 153, column: 7, scope: !4634)
!4668 = !DILocation(line: 153, column: 16, scope: !4634)
!4669 = !DILocation(line: 153, column: 13, scope: !4634)
!4670 = !DILocation(line: 154, column: 10, scope: !4634)
!4671 = !DILocation(line: 154, column: 3, scope: !4634)
!4672 = !DILocation(line: 156, column: 5, scope: !4634)
!4673 = !DILocation(line: 156, column: 14, scope: !4634)
!4674 = !DILocation(line: 156, column: 11, scope: !4634)
!4675 = !DILocation(line: 157, column: 10, scope: !4634)
!4676 = !DILocation(line: 157, column: 3, scope: !4634)
!4677 = !DILocation(line: 159, column: 10, scope: !4634)
!4678 = !DILocation(line: 159, column: 3, scope: !4634)
!4679 = distinct !DISubprogram(name: "runtime.initHeap", linkageName: "runtime.initHeap", scope: !426, file: !426, line: 34, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4680 = !DILocation(line: 35, column: 12, scope: !4679)
!4681 = !DILocation(line: 39, column: 8, scope: !4679)
!4682 = !DILocation(line: 40, column: 2, scope: !4679)
!4683 = distinct !DISubprogram(name: "runtime.gcCallback", linkageName: "tinygo_runtime_bdwgc_callback", scope: !426, file: !426, line: 46, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4684 = !DILocation(line: 48, column: 17, scope: !4683)
!4685 = !DILocation(line: 49, column: 2, scope: !4683)
!4686 = distinct !DISubprogram(name: "runtime.gcMarkReachable", linkageName: "runtime.gcMarkReachable", scope: !3635, file: !3635, line: 7, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4687 = !DILocation(line: 8, column: 25, scope: !4686)
!4688 = !DILocation(line: 9, column: 2, scope: !4686)
!4689 = distinct !DISubprogram(name: "runtime.markRoots", linkageName: "runtime.markRoots", scope: !426, file: !426, line: 51, type: !4690, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4692)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!51, !51}
!4692 = !{!4693, !4694}
!4693 = !DILocalVariable(name: "start", arg: 1, scope: !4689, file: !426, line: 51, type: !51)
!4694 = !DILocalVariable(name: "end", arg: 2, scope: !4689, file: !426, line: 51, type: !51)
!4695 = !DILocation(line: 51, column: 6, scope: !4689)
!4696 = !DILocation(line: 52, column: 17, scope: !4689)
!4697 = !DILocation(line: 52, column: 24, scope: !4689)
!4698 = !DILocation(line: 52, column: 16, scope: !4689)
!4699 = !DILocation(line: 53, column: 2, scope: !4689)
!4700 = distinct !DISubprogram(name: "runtime.free", linkageName: "runtime.free", scope: !426, file: !426, line: 99, type: !2881, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4701)
!4701 = !{!4702}
!4702 = !DILocalVariable(name: "ptr", arg: 1, scope: !4700, file: !426, line: 99, type: !92)
!4703 = !DILocation(line: 99, column: 6, scope: !4700)
!4704 = !DILocation(line: 100, column: 13, scope: !4700)
!4705 = !DILocation(line: 100, column: 12, scope: !4700)
!4706 = !DILocation(line: 101, column: 2, scope: !4700)
!4707 = distinct !DISubprogram(name: "runtime.gcScanGlobals", linkageName: "internal/task.gcScanGlobals", scope: !3635, file: !3635, line: 15, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4708 = !DILocation(line: 16, column: 13, scope: !4707)
!4709 = !DILocation(line: 17, column: 2, scope: !4707)
!4710 = distinct !DISubprogram(name: "runtime.findGlobals", linkageName: "runtime.findGlobals", scope: !3748, file: !3748, line: 95, type: !4711, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4713)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!660}
!4713 = !{!4714, !4715, !4716, !4717, !4730, !4731, !4732, !4739, !4740}
!4714 = !DILocalVariable(name: "found", arg: 1, scope: !4710, file: !3748, line: 95, type: !660)
!4715 = !DILocalVariable(name: "headerPtr", scope: !4710, file: !3748, line: 103, type: !92)
!4716 = !DILocalVariable(name: "i", scope: !4710, file: !3748, line: 104, type: !1788)
!4717 = !DILocalVariable(name: "header", scope: !4710, file: !3748, line: 111, type: !4718)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64, align: 64, dwarfAddressSpace: 0)
!4719 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader64", baseType: !4720)
!4720 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !4721)
!4721 = !{!4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_type", baseType: !106, size: 32, align: 32)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !106, size: 32, align: 32, offset: 32)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "offset", baseType: !51, size: 64, align: 64, offset: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", baseType: !51, size: 64, align: 64, offset: 128)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", baseType: !51, size: 64, align: 64, offset: 192)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "filesz", baseType: !51, size: 64, align: 64, offset: 256)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", baseType: !51, size: 64, align: 64, offset: 320)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !51, size: 64, align: 64, offset: 384)
!4730 = !DILocalVariable(name: "start", scope: !4710, file: !3748, line: 113, type: !51)
!4731 = !DILocalVariable(name: "end", scope: !4710, file: !3748, line: 114, type: !51)
!4732 = !DILocalVariable(name: "header", scope: !4710, file: !3748, line: 118, type: !4733)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64, align: 64, dwarfAddressSpace: 0)
!4734 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader32", baseType: !4735)
!4735 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !4736)
!4736 = !{!4722, !4724, !4725, !4726, !4727, !4728, !4737, !4738}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !106, size: 32, align: 32, offset: 384)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !51, size: 64, align: 64, offset: 448)
!4739 = !DILocalVariable(name: "start", scope: !4710, file: !3748, line: 120, type: !51)
!4740 = !DILocalVariable(name: "end", scope: !4710, file: !3748, line: 121, type: !51)
!4741 = !DILocation(line: 95, column: 6, scope: !4710)
!4742 = !DILocation(line: 103, column: 80, scope: !4710)
!4743 = !DILocation(line: 103, column: 67, scope: !4710)
!4744 = !DILocation(line: 103, column: 29, scope: !4710)
!4745 = !DILocation(line: 103, column: 2, scope: !4710)
!4746 = !DILocation(line: 104, column: 6, scope: !4710)
!4747 = !DILocation(line: 0, scope: !4710)
!4748 = !DILocation(line: 104, column: 14, scope: !4710)
!4749 = !DILocation(line: 104, column: 33, scope: !4710)
!4750 = !DILocation(line: 104, column: 21, scope: !4710)
!4751 = !DILocation(line: 104, column: 16, scope: !4710)
!4752 = !DILocation(line: 111, column: 36, scope: !4710)
!4753 = !DILocation(line: 111, column: 4, scope: !4710)
!4754 = !DILocation(line: 112, column: 7, scope: !4710)
!4755 = !DILocation(line: 112, column: 14, scope: !4710)
!4756 = !DILocation(line: 112, column: 20, scope: !4710)
!4757 = !DILocation(line: 112, column: 34, scope: !4710)
!4758 = !DILocation(line: 112, column: 41, scope: !4710)
!4759 = !DILocation(line: 112, column: 46, scope: !4710)
!4760 = !DILocation(line: 112, column: 52, scope: !4710)
!4761 = !DILocation(line: 113, column: 14, scope: !4710)
!4762 = !DILocation(line: 113, column: 21, scope: !4710)
!4763 = !DILocation(line: 113, column: 5, scope: !4710)
!4764 = !DILocation(line: 114, column: 12, scope: !4710)
!4765 = !DILocation(line: 114, column: 20, scope: !4710)
!4766 = !DILocation(line: 114, column: 27, scope: !4710)
!4767 = !DILocation(line: 114, column: 18, scope: !4710)
!4768 = !DILocation(line: 114, column: 5, scope: !4710)
!4769 = !DILocation(line: 115, column: 5, scope: !4710)
!4770 = !DILocation(line: 115, column: 11, scope: !4710)
!4771 = !DILocation(line: 115, column: 18, scope: !4710)
!4772 = !DILocation(line: 115, column: 10, scope: !4710)
!4773 = !DILocation(line: 125, column: 26, scope: !4710)
!4774 = !DILocation(line: 125, column: 48, scope: !4710)
!4775 = !DILocation(line: 125, column: 25, scope: !4710)
!4776 = !DILocation(line: 125, column: 3, scope: !4710)
!4777 = !DILocation(line: 104, column: 41, scope: !4710)
!4778 = !DILocation(line: 118, column: 36, scope: !4710)
!4779 = !DILocation(line: 118, column: 4, scope: !4710)
!4780 = !DILocation(line: 119, column: 7, scope: !4710)
!4781 = !DILocation(line: 119, column: 14, scope: !4710)
!4782 = !DILocation(line: 119, column: 20, scope: !4710)
!4783 = !DILocation(line: 119, column: 34, scope: !4710)
!4784 = !DILocation(line: 119, column: 41, scope: !4710)
!4785 = !DILocation(line: 119, column: 46, scope: !4710)
!4786 = !DILocation(line: 119, column: 52, scope: !4710)
!4787 = !DILocation(line: 120, column: 14, scope: !4710)
!4788 = !DILocation(line: 120, column: 21, scope: !4710)
!4789 = !DILocation(line: 120, column: 5, scope: !4710)
!4790 = !DILocation(line: 121, column: 12, scope: !4710)
!4791 = !DILocation(line: 121, column: 20, scope: !4710)
!4792 = !DILocation(line: 121, column: 27, scope: !4710)
!4793 = !DILocation(line: 121, column: 18, scope: !4710)
!4794 = !DILocation(line: 121, column: 5, scope: !4710)
!4795 = !DILocation(line: 122, column: 5, scope: !4710)
!4796 = !DILocation(line: 122, column: 11, scope: !4710)
!4797 = !DILocation(line: 122, column: 18, scope: !4710)
!4798 = !DILocation(line: 122, column: 10, scope: !4710)
!4799 = !DILocation(line: 127, column: 2, scope: !4710)
!4800 = distinct !DISubprogram(name: "runtime.scanstack", linkageName: "tinygo_scanstack", scope: !3635, file: !3635, line: 23, type: !3375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4801)
!4801 = !{!4802}
!4802 = !DILocalVariable(name: "sp", arg: 1, scope: !4800, file: !3635, line: 23, type: !51)
!4803 = !DILocation(line: 23, column: 6, scope: !4800)
!4804 = !DILocation(line: 24, column: 12, scope: !4800)
!4805 = !DILocation(line: 24, column: 29, scope: !4800)
!4806 = !DILocation(line: 24, column: 11, scope: !4800)
!4807 = !DILocation(line: 25, column: 2, scope: !4800)
!4808 = distinct !DISubprogram(name: "runtime.unsafeSlicePanic", linkageName: "runtime.unsafeSlicePanic", scope: !433, file: !433, line: 211, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4809 = !DILocation(line: 212, column: 30, scope: !4808)
!4810 = !DILocation(line: 212, column: 16, scope: !4808)
!4811 = !DILocation(line: 213, column: 2, scope: !4808)
!4812 = distinct !DISubprogram(name: "runtime.negativeShiftPanic", linkageName: "runtime.negativeShiftPanic", scope: !433, file: !433, line: 221, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4813 = !DILocation(line: 222, column: 30, scope: !4812)
!4814 = !DILocation(line: 222, column: 16, scope: !4812)
!4815 = !DILocation(line: 223, column: 2, scope: !4812)
!4816 = distinct !DISubprogram(name: "runtime.printspace", linkageName: "runtime.printspace", scope: !463, file: !463, line: 282, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4817 = !DILocation(line: 283, column: 9, scope: !4816)
!4818 = !DILocation(line: 284, column: 2, scope: !4816)
!4819 = distinct !DISubprogram(name: "runtime.memmove", linkageName: "runtime.memmove", scope: !1584, file: !1584, line: 48, type: !3769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4820)
!4820 = !{!4821, !4822, !4823}
!4821 = !DILocalVariable(name: "dst", arg: 1, scope: !4819, file: !1584, line: 48, type: !92)
!4822 = !DILocalVariable(name: "src", arg: 2, scope: !4819, file: !1584, line: 48, type: !92)
!4823 = !DILocalVariable(name: "size", arg: 3, scope: !4819, file: !1584, line: 48, type: !51)
!4824 = !DILocation(line: 48, column: 6, scope: !4819)
!4825 = distinct !DISubprogram(name: "runtime.main", linkageName: "main", scope: !419, file: !419, line: 80, type: !4826, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4828)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!386, !490}
!4828 = !{!4829, !4830, !4831, !4832, !4833}
!4829 = !DILocalVariable(name: "argc", arg: 1, scope: !4825, file: !419, line: 80, type: !386)
!4830 = !DILocalVariable(name: "argv", arg: 2, scope: !4825, file: !419, line: 80, type: !490)
!4831 = !DILocalVariable(name: "main_argc", scope: !4825, file: !419, line: 105, type: !386)
!4832 = !DILocalVariable(name: "main_argv", scope: !4825, file: !419, line: 106, type: !490)
!4833 = !DILocalVariable(name: "stackTop", scope: !4825, file: !419, line: 75, type: !51)
!4834 = !DILocation(line: 80, column: 6, scope: !4825)
!4835 = !DILocation(line: 0, scope: !4825)
!4836 = !DILocation(line: 83, column: 15, scope: !4825)
!4837 = !DILocation(line: 87, column: 14, scope: !4825)
!4838 = !DILocation(line: 87, column: 2, scope: !4825)
!4839 = !DILocation(line: 88, column: 14, scope: !4825)
!4840 = !DILocation(line: 88, column: 2, scope: !4825)
!4841 = !DILocation(line: 92, column: 31, scope: !4825)
!4842 = !DILocation(line: 97, column: 35, scope: !4825)
!4843 = !DILocation(line: 97, column: 2, scope: !4825)
!4844 = !DILocation(line: 98, column: 9, scope: !4825)
!4845 = !DILocation(line: 101, column: 2, scope: !4825)
!4846 = distinct !DISubprogram(name: "runtime.allocateHeap", linkageName: "runtime.allocateHeap", scope: !419, file: !419, line: 303, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4847)
!4847 = !{!4848, !4849, !4850, !4851, !4852}
!4848 = !DILocalVariable(name: "heapMaxSize", scope: !4846, file: !419, line: 299, type: !51)
!4849 = !DILocalVariable(name: "addr", scope: !4846, file: !419, line: 309, type: !92)
!4850 = !DILocalVariable(name: "heapStart", scope: !4846, file: !419, line: 301, type: !51)
!4851 = !DILocalVariable(name: "heapSize", scope: !4846, file: !419, line: 298, type: !51)
!4852 = !DILocalVariable(name: "heapEnd", scope: !4846, file: !419, line: 301, type: !51)
!4853 = !DILocation(line: 307, column: 2, scope: !4846)
!4854 = !DILocation(line: 0, scope: !4846)
!4855 = !DILocation(line: 309, column: 21, scope: !4846)
!4856 = !DILocation(line: 309, column: 15, scope: !4846)
!4857 = !DILocation(line: 309, column: 3, scope: !4846)
!4858 = !DILocation(line: 310, column: 6, scope: !4846)
!4859 = !DILocation(line: 310, column: 11, scope: !4846)
!4860 = !DILocation(line: 315, column: 4, scope: !4846)
!4861 = !DILocation(line: 316, column: 7, scope: !4846)
!4862 = !DILocation(line: 316, column: 19, scope: !4846)
!4863 = !DILocation(line: 317, column: 17, scope: !4846)
!4864 = !DILocation(line: 321, column: 23, scope: !4846)
!4865 = !DILocation(line: 321, column: 22, scope: !4846)
!4866 = !DILocation(line: 321, column: 3, scope: !4846)
!4867 = !DILocation(line: 322, column: 13, scope: !4846)
!4868 = !DILocation(line: 322, column: 25, scope: !4846)
!4869 = !DILocation(line: 322, column: 23, scope: !4846)
!4870 = !DILocation(line: 322, column: 3, scope: !4846)
!4871 = !DILocation(line: 325, column: 2, scope: !4846)
!4872 = distinct !DISubprogram(name: "runtime.runMain", linkageName: "runtime.runMain", scope: !419, file: !419, line: 135, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4873 = !DILocation(line: 136, column: 5, scope: !4872)
!4874 = !DILocation(line: 137, column: 2, scope: !4872)
!4875 = distinct !DISubprogram(name: "runtime.run", linkageName: "runtime.run", scope: !520, file: !520, line: 23, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4876)
!4876 = !{!4877}
!4877 = !DILocalVariable(name: "stackTop", scope: !4875, file: !419, line: 75, type: !51)
!4878 = !DILocation(line: 24, column: 10, scope: !4875)
!4879 = !DILocation(line: 25, column: 10, scope: !4875)
!4880 = !DILocation(line: 26, column: 12, scope: !4875)
!4881 = !DILocation(line: 26, column: 11, scope: !4875)
!4882 = !DILocation(line: 27, column: 9, scope: !4875)
!4883 = !DILocation(line: 28, column: 10, scope: !4875)
!4884 = !DILocation(line: 29, column: 2, scope: !4875)
!4885 = distinct !DISubprogram(name: "runtime.tinygo_handle_fatal_signal", linkageName: "tinygo_handle_fatal_signal", scope: !419, file: !419, line: 148, type: !4886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4888)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!386, !51}
!4888 = !{!4889, !4890}
!4889 = !DILocalVariable(name: "sig", arg: 1, scope: !4885, file: !419, line: 148, type: !386)
!4890 = !DILocalVariable(name: "addr", arg: 2, scope: !4885, file: !419, line: 148, type: !51)
!4891 = !DILocation(line: 148, column: 6, scope: !4885)
!4892 = !DILocation(line: 0, scope: !4885)
!4893 = !DILocation(line: 150, column: 7, scope: !4885)
!4894 = !DILocation(line: 154, column: 5, scope: !4885)
!4895 = !DILocation(line: 154, column: 10, scope: !4885)
!4896 = !DILocation(line: 155, column: 14, scope: !4885)
!4897 = !DILocation(line: 156, column: 12, scope: !4885)
!4898 = !DILocation(line: 156, column: 11, scope: !4885)
!4899 = !DILocation(line: 160, column: 13, scope: !4885)
!4900 = !DILocation(line: 161, column: 9, scope: !4885)
!4901 = !DILocation(line: 162, column: 7, scope: !4885)
!4902 = !DILocation(line: 163, column: 10, scope: !4885)
!4903 = !DILocation(line: 180, column: 8, scope: !4885)
!4904 = !DILocation(line: 180, column: 7, scope: !4885)
!4905 = !DILocation(line: 181, column: 2, scope: !4885)
!4906 = !DILocation(line: 164, column: 7, scope: !4885)
!4907 = !DILocation(line: 165, column: 10, scope: !4885)
!4908 = !DILocation(line: 166, column: 7, scope: !4885)
!4909 = !DILocation(line: 167, column: 10, scope: !4885)
!4910 = !DILocation(line: 169, column: 11, scope: !4885)
!4911 = !DILocation(line: 169, column: 10, scope: !4885)
!4912 = !DILocation(line: 158, column: 14, scope: !4885)
!4913 = distinct !DISubprogram(name: "runtime.printlock", linkageName: "runtime.printlock", scope: !520, file: !520, line: 138, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4914 = !DILocation(line: 139, column: 16, scope: !4913)
!4915 = !DILocation(line: 140, column: 2, scope: !4913)
!4916 = distinct !DISubprogram(name: "runtime.printunlock", linkageName: "runtime.printunlock", scope: !520, file: !520, line: 142, type: !3305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4917 = !DILocation(line: 143, column: 18, scope: !4916)
!4918 = !DILocation(line: 144, column: 2, scope: !4916)
!4919 = distinct !DISubprogram(name: "runtime.sliceAppend", linkageName: "runtime.sliceAppend", scope: !4920, file: !4920, line: 12, type: !4921, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4923)
!4920 = !DIFile(filename: "slice.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!92, !92, !51, !51, !51, !51, !92}
!4923 = !{!4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931}
!4924 = !DILocalVariable(name: "srcBuf", arg: 1, scope: !4919, file: !4920, line: 12, type: !92)
!4925 = !DILocalVariable(name: "elemsBuf", arg: 2, scope: !4919, file: !4920, line: 12, type: !92)
!4926 = !DILocalVariable(name: "srcLen", arg: 3, scope: !4919, file: !4920, line: 12, type: !51)
!4927 = !DILocalVariable(name: "srcCap", arg: 4, scope: !4919, file: !4920, line: 12, type: !51)
!4928 = !DILocalVariable(name: "elemsLen", arg: 5, scope: !4919, file: !4920, line: 12, type: !51)
!4929 = !DILocalVariable(name: "elemSize", arg: 6, scope: !4919, file: !4920, line: 12, type: !51)
!4930 = !DILocalVariable(name: "layout", arg: 7, scope: !4919, file: !4920, line: 12, type: !92)
!4931 = !DILocalVariable(name: "newLen", scope: !4919, file: !4920, line: 13, type: !51)
!4932 = !DILocation(line: 12, column: 6, scope: !4919)
!4933 = !DILocation(line: 13, column: 12, scope: !4919)
!4934 = !DILocation(line: 13, column: 21, scope: !4919)
!4935 = !DILocation(line: 13, column: 19, scope: !4919)
!4936 = !DILocation(line: 13, column: 2, scope: !4919)
!4937 = !DILocation(line: 14, column: 5, scope: !4919)
!4938 = !DILocation(line: 14, column: 14, scope: !4919)
!4939 = !DILocation(line: 0, scope: !4919)
!4940 = !DILocation(line: 17, column: 33, scope: !4919)
!4941 = !DILocation(line: 17, column: 41, scope: !4919)
!4942 = !DILocation(line: 17, column: 49, scope: !4919)
!4943 = !DILocation(line: 17, column: 57, scope: !4919)
!4944 = !DILocation(line: 17, column: 65, scope: !4919)
!4945 = !DILocation(line: 17, column: 75, scope: !4919)
!4946 = !DILocation(line: 17, column: 32, scope: !4919)
!4947 = !DILocation(line: 17, column: 3, scope: !4919)
!4948 = !DILocation(line: 17, column: 14, scope: !4919)
!4949 = !DILocation(line: 20, column: 22, scope: !4919)
!4950 = !DILocation(line: 20, column: 30, scope: !4919)
!4951 = !DILocation(line: 20, column: 37, scope: !4919)
!4952 = !DILocation(line: 20, column: 36, scope: !4919)
!4953 = !DILocation(line: 20, column: 21, scope: !4919)
!4954 = !DILocation(line: 20, column: 48, scope: !4919)
!4955 = !DILocation(line: 20, column: 58, scope: !4919)
!4956 = !DILocation(line: 20, column: 67, scope: !4919)
!4957 = !DILocation(line: 20, column: 66, scope: !4919)
!4958 = !DILocation(line: 20, column: 10, scope: !4919)
!4959 = !DILocation(line: 12, column: 18, scope: !4919)
!4960 = !DILocation(line: 12, column: 59, scope: !4919)
!4961 = !DILocation(line: 23, column: 9, scope: !4919)
!4962 = !DILocation(line: 23, column: 17, scope: !4919)
!4963 = !DILocation(line: 23, column: 25, scope: !4919)
!4964 = !DILocation(line: 23, column: 2, scope: !4919)
!4965 = distinct !DISubprogram(name: "runtime.sliceGrow", linkageName: "runtime.sliceGrow", scope: !4920, file: !4920, line: 27, type: !4966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4968)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!92, !51, !51, !51, !51, !92}
!4968 = !{!4969, !4970, !4971, !4972, !4973, !4974, !4975}
!4969 = !DILocalVariable(name: "oldBuf", arg: 1, scope: !4965, file: !4920, line: 27, type: !92)
!4970 = !DILocalVariable(name: "oldLen", arg: 2, scope: !4965, file: !4920, line: 27, type: !51)
!4971 = !DILocalVariable(name: "oldCap", arg: 3, scope: !4965, file: !4920, line: 27, type: !51)
!4972 = !DILocalVariable(name: "newCap", arg: 4, scope: !4965, file: !4920, line: 27, type: !51)
!4973 = !DILocalVariable(name: "elemSize", arg: 5, scope: !4965, file: !4920, line: 27, type: !51)
!4974 = !DILocalVariable(name: "layout", arg: 6, scope: !4965, file: !4920, line: 27, type: !92)
!4975 = !DILocalVariable(name: "buf", scope: !4965, file: !4920, line: 39, type: !92)
!4976 = !DILocation(line: 27, column: 6, scope: !4965)
!4977 = !DILocation(line: 28, column: 5, scope: !4965)
!4978 = !DILocation(line: 28, column: 15, scope: !4965)
!4979 = !DILocation(line: 28, column: 12, scope: !4965)
!4980 = !DILocation(line: 0, scope: !4965)
!4981 = !DILocation(line: 30, column: 10, scope: !4965)
!4982 = !DILocation(line: 30, column: 18, scope: !4965)
!4983 = !DILocation(line: 30, column: 26, scope: !4965)
!4984 = !DILocation(line: 30, column: 3, scope: !4965)
!4985 = !DILocation(line: 37, column: 30, scope: !4965)
!4986 = !DILocation(line: 37, column: 24, scope: !4965)
!4987 = !DILocation(line: 37, column: 13, scope: !4965)
!4988 = !DILocation(line: 37, column: 2, scope: !4965)
!4989 = !DILocation(line: 39, column: 15, scope: !4965)
!4990 = !DILocation(line: 39, column: 22, scope: !4965)
!4991 = !DILocation(line: 39, column: 21, scope: !4965)
!4992 = !DILocation(line: 39, column: 32, scope: !4965)
!4993 = !DILocation(line: 39, column: 14, scope: !4965)
!4994 = !DILocation(line: 39, column: 2, scope: !4965)
!4995 = !DILocation(line: 40, column: 5, scope: !4965)
!4996 = !DILocation(line: 40, column: 12, scope: !4965)
!4997 = !DILocation(line: 42, column: 11, scope: !4965)
!4998 = !DILocation(line: 42, column: 16, scope: !4965)
!4999 = !DILocation(line: 42, column: 24, scope: !4965)
!5000 = !DILocation(line: 42, column: 31, scope: !4965)
!5001 = !DILocation(line: 42, column: 30, scope: !4965)
!5002 = !DILocation(line: 42, column: 10, scope: !4965)
!5003 = !DILocation(line: 45, column: 9, scope: !4965)
!5004 = !DILocation(line: 45, column: 14, scope: !4965)
!5005 = !DILocation(line: 45, column: 22, scope: !4965)
!5006 = !DILocation(line: 45, column: 2, scope: !4965)
!5007 = distinct !DISubprogram(name: "runtime.tinygo_signal_handler", linkageName: "tinygo_signal_handler", scope: !419, file: !419, line: 420, type: !3571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !5008)
!5008 = !{!5009, !5010, !5011, !5012}
!5009 = !DILocalVariable(name: "s", arg: 1, scope: !5007, file: !419, line: 420, type: !386)
!5010 = !DILocalVariable(name: "mask", scope: !5007, file: !419, line: 427, type: !106)
!5011 = !DILocalVariable(name: "val", scope: !5007, file: !419, line: 428, type: !106)
!5012 = !DILocalVariable(name: "swapped", scope: !5007, file: !419, line: 429, type: !376)
!5013 = !DILocation(line: 420, column: 6, scope: !5007)
!5014 = !DILocation(line: 0, scope: !5007)
!5015 = !DILocation(line: 427, column: 31, scope: !5007)
!5016 = !DILocation(line: 427, column: 21, scope: !5007)
!5017 = !DILocation(line: 427, column: 3, scope: !5007)
!5018 = !DILocation(line: 428, column: 30, scope: !5007)
!5019 = !DILocation(line: 428, column: 3, scope: !5007)
!5020 = !DILocation(line: 429, column: 45, scope: !5007)
!5021 = !DILocation(line: 429, column: 50, scope: !5007)
!5022 = !DILocation(line: 429, column: 54, scope: !5007)
!5023 = !DILocation(line: 429, column: 53, scope: !5007)
!5024 = !DILocation(line: 429, column: 44, scope: !5007)
!5025 = !DILocation(line: 429, column: 3, scope: !5007)
!5026 = !DILocation(line: 430, column: 6, scope: !5007)
!5027 = !DILocation(line: 437, column: 21, scope: !5007)
!5028 = !DILocation(line: 437, column: 25, scope: !5007)
!5029 = !DILocation(line: 441, column: 22, scope: !5007)
!5030 = !DILocation(line: 443, column: 2, scope: !5007)
!5031 = distinct !DISubprogram(name: "runtime.stringConcat", linkageName: "runtime.stringConcat", scope: !4393, file: !4393, line: 56, type: !5032, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !5038)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{!5034, !5034}
!5034 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._string", baseType: !5035)
!5035 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !5036)
!5036 = !{!2266, !5037}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !51, size: 64, align: 64, offset: 64)
!5038 = !{!5039, !5040, !5041, !5042}
!5039 = !DILocalVariable(name: "x", arg: 1, scope: !5031, file: !4393, line: 56, type: !5034)
!5040 = !DILocalVariable(name: "y", arg: 2, scope: !5031, file: !4393, line: 56, type: !5034)
!5041 = !DILocalVariable(name: "length", scope: !5031, file: !4393, line: 62, type: !51)
!5042 = !DILocalVariable(name: "buf", scope: !5031, file: !4393, line: 63, type: !92)
!5043 = !DILocation(line: 56, column: 6, scope: !5031)
!5044 = !DILocation(line: 56, column: 19, scope: !5031)
!5045 = !DILocation(line: 56, column: 22, scope: !5031)
!5046 = !DILocation(line: 57, column: 7, scope: !5031)
!5047 = !DILocation(line: 57, column: 14, scope: !5031)
!5048 = !DILocation(line: 0, scope: !5031)
!5049 = !DILocation(line: 58, column: 10, scope: !5031)
!5050 = !DILocation(line: 58, column: 3, scope: !5031)
!5051 = !DILocation(line: 59, column: 14, scope: !5031)
!5052 = !DILocation(line: 59, column: 21, scope: !5031)
!5053 = !DILocation(line: 60, column: 10, scope: !5031)
!5054 = !DILocation(line: 60, column: 3, scope: !5031)
!5055 = !DILocation(line: 62, column: 15, scope: !5031)
!5056 = !DILocation(line: 62, column: 26, scope: !5031)
!5057 = !DILocation(line: 62, column: 22, scope: !5031)
!5058 = !DILocation(line: 62, column: 3, scope: !5031)
!5059 = !DILocation(line: 63, column: 16, scope: !5031)
!5060 = !DILocation(line: 63, column: 45, scope: !5031)
!5061 = !DILocation(line: 63, column: 15, scope: !5031)
!5062 = !DILocation(line: 63, column: 3, scope: !5031)
!5063 = !DILocation(line: 64, column: 10, scope: !5031)
!5064 = !DILocation(line: 64, column: 32, scope: !5031)
!5065 = !DILocation(line: 64, column: 40, scope: !5031)
!5066 = !DILocation(line: 64, column: 9, scope: !5031)
!5067 = !DILocation(line: 65, column: 21, scope: !5031)
!5068 = !DILocation(line: 65, column: 28, scope: !5031)
!5069 = !DILocation(line: 65, column: 20, scope: !5031)
!5070 = !DILocation(line: 65, column: 54, scope: !5031)
!5071 = !DILocation(line: 65, column: 62, scope: !5031)
!5072 = !DILocation(line: 65, column: 9, scope: !5031)
!5073 = !DILocation(line: 66, column: 21, scope: !5031)
!5074 = !DILocation(line: 66, column: 31, scope: !5031)
!5075 = !DILocation(line: 66, column: 43, scope: !5031)
!5076 = !DILocation(line: 66, column: 45, scope: !5031)
!5077 = !DILocation(line: 66, column: 17, scope: !5031)
!5078 = !DILocation(line: 66, column: 3, scope: !5031)
!5079 = distinct !DISubprogram(name: "runtime.stringFromBytes", linkageName: "runtime.stringFromBytes", scope: !4393, file: !4393, line: 71, type: !5080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !5083)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!5082}
!5082 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !2265)
!5083 = !{!5084, !5085}
!5084 = !DILocalVariable(name: "x", arg: 1, scope: !5079, file: !4393, line: 71, type: !5082)
!5085 = !DILocalVariable(name: "buf", scope: !5079, file: !4393, line: 76, type: !92)
!5086 = !DILocation(line: 71, column: 6, scope: !5079)
!5087 = !DILocation(line: 71, column: 22, scope: !5079)
!5088 = !DILocation(line: 76, column: 17, scope: !5079)
!5089 = !DILocation(line: 76, column: 43, scope: !5079)
!5090 = !DILocation(line: 76, column: 14, scope: !5079)
!5091 = !DILocation(line: 76, column: 2, scope: !5079)
!5092 = !DILocation(line: 77, column: 9, scope: !5079)
!5093 = !DILocation(line: 77, column: 31, scope: !5079)
!5094 = !DILocation(line: 77, column: 39, scope: !5079)
!5095 = !DILocation(line: 77, column: 8, scope: !5079)
!5096 = !DILocation(line: 78, column: 20, scope: !5079)
!5097 = !DILocation(line: 78, column: 30, scope: !5079)
!5098 = !DILocation(line: 78, column: 42, scope: !5079)
!5099 = !DILocation(line: 78, column: 46, scope: !5079)
!5100 = !DILocation(line: 78, column: 16, scope: !5079)
!5101 = !DILocation(line: 78, column: 2, scope: !5079)
!5102 = distinct !DISubprogram(name: "main.f_gold", linkageName: "f_gold", scope: !5103, file: !5103, line: 6, type: !2057, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !5104)
!5103 = !DIFile(filename: "HEIGHT_COMPLETE_BINARY_TREE_HEAP_N_NODES_emit.go", directory: "/root/es/vert/vert/source_funs/go_transcoder/HEIGHT_COMPLETE_BINARY_TREE_HEAP_N_NODES")
!5104 = !{!5105}
!5105 = !DILocalVariable(name: "N", arg: 1, scope: !5102, file: !5103, line: 6, type: !1788)
!5106 = !DILocation(line: 6, column: 6, scope: !5102)
!5107 = !DILocation(line: 7, column: 41, scope: !5102)
!5108 = !DILocation(line: 7, column: 42, scope: !5102)
!5109 = !DILocation(line: 7, column: 40, scope: !5102)
!5110 = !DILocation(line: 7, column: 32, scope: !5102)
!5111 = !DILocation(line: 7, column: 22, scope: !5102)
!5112 = !DILocation(line: 7, column: 48, scope: !5102)
!5113 = !DILocation(line: 7, column: 12, scope: !5102)
!5114 = !DILocation(line: 7, column: 2, scope: !5102)
