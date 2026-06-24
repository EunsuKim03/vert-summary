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
@"math$string.29" = internal unnamed_addr constant [15 x i8] c"not implemented", align 1, !dbg !7
@"math$pack.30" = internal unnamed_addr constant { %runtime._string } { %runtime._string { ptr @"math$string.29", i64 15 } }
@"math$string.39" = internal unnamed_addr constant [15 x i8] c"not implemented", align 1, !dbg !9
@"math$pack.40" = internal unnamed_addr constant { %runtime._string } { %runtime._string { ptr @"math$string.39", i64 15 } }
@"internal/itoa$string" = internal unnamed_addr constant [1 x i8] c"-", align 1, !dbg !11
@"internal/itoa$string.1" = internal unnamed_addr constant [1 x i8] c"0", align 1, !dbg !17
@"unicode/utf8.first" = internal global [256 x i8] c"\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\13\03\03\03\03\03\03\03\03\03\03\03\03#\03\034\04\04\04D\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1", align 1, !dbg !19
@"unicode/utf8.acceptRanges" = internal global [16 x %"unicode/utf8.acceptRange"] [%"unicode/utf8.acceptRange" { i8 -128, i8 -65 }, %"unicode/utf8.acceptRange" { i8 -96, i8 -65 }, %"unicode/utf8.acceptRange" { i8 -128, i8 -97 }, %"unicode/utf8.acceptRange" { i8 -112, i8 -65 }, %"unicode/utf8.acceptRange" { i8 -128, i8 -113 }, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer], align 1, !dbg !25
@"internal/reflectlite$string" = internal unnamed_addr constant [4 x i8] c"Elem", align 1, !dbg !35
@"internal/reflectlite.errTypeElem" = internal global ptr @"internal/reflectlite$alloc", align 8, !dbg !41
@"internal/reflectlite$string.1" = internal unnamed_addr constant [3 x i8] c"Key", align 1, !dbg !54
@"internal/reflectlite.errTypeKey" = internal global ptr @"internal/reflectlite$alloc.107", align 8, !dbg !59
@"internal/reflectlite$string.2" = internal unnamed_addr constant [5 x i8] c"Field", align 1, !dbg !61
@"internal/reflectlite.errTypeField" = internal global ptr @"internal/reflectlite$alloc.108", align 8, !dbg !66
@"internal/reflectlite$string.4" = internal unnamed_addr constant [3 x i8] c"Len", align 1, !dbg !68
@"internal/reflectlite.errTypeLen" = internal global ptr @"internal/reflectlite$alloc.110", align 8, !dbg !70
@"internal/reflectlite$string.5" = internal unnamed_addr constant [8 x i8] c"NumField", align 1, !dbg !72
@"internal/reflectlite.errTypeNumField" = internal global ptr @"internal/reflectlite$alloc.111", align 8, !dbg !77
@"internal/reflectlite$string.6" = internal unnamed_addr constant [7 x i8] c"ChanDir", align 1, !dbg !79
@"internal/reflectlite.errTypeChanDir" = internal global ptr @"internal/reflectlite$alloc.112", align 8, !dbg !84
@"reflect/types.type:basic:uint8" = internal constant { i8, ptr } { i8 -56, ptr @"reflect/types.type:pointer:basic:uint8" }, align 8, !dbg !86
@"reflect/types.type:pointer:basic:uint8" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:basic:uint8" }, align 8, !dbg !95
@"reflect/types.type.pkgpath:internal/reflectlite" = internal unnamed_addr constant [21 x i8] c"internal/reflectlite\00", align 1
@"reflect/types.type:struct:{meta:basic:uint8}" = internal constant { i8, i16, ptr, ptr, i32, i16, [1 x { ptr, ptr }] } { i8 -38, i16 0, ptr @"reflect/types.type:pointer:struct:{meta:basic:uint8}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", i32 1, i16 1, [1 x { ptr, ptr }] [{ ptr, ptr } { ptr @"reflect/types.type:basic:uint8", ptr @"reflect/types.type:struct:{meta:basic:uint8}.meta" }] }, align 8, !dbg !102
@"reflect/types.type:pointer:struct:{meta:basic:uint8}" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:struct:{meta:basic:uint8}" }, align 8, !dbg !117
@"reflect/types.type:struct:{meta:basic:uint8}.meta" = internal unnamed_addr constant [7 x i8] c"\00\00meta\00", align 1
@"internal/reflectlite$string.17" = internal unnamed_addr constant [14 x i8] c"invalid syntax", align 1, !dbg !119
@"reflect/types.type:struct:{}" = internal constant { i8, i16, ptr, ptr, i32, i16, [0 x { ptr, ptr }] } { i8 -38, i16 0, ptr @"reflect/types.type:pointer:struct:{}", ptr @"reflect/types.type.pkgpath.empty", i32 0, i16 0, [0 x { ptr, ptr }] zeroinitializer }, align 8, !dbg !125
@"reflect/types.type.pkgpath.empty" = internal unnamed_addr constant [1 x i8] zeroinitializer, align 1
@"reflect/types.type:pointer:struct:{}" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:struct:{}" }, align 8, !dbg !133
@"internal/reflectlite$string.20" = internal unnamed_addr constant [2 x i8] c"\\x", align 1, !dbg !135
@"internal/reflectlite$string.21" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !140
@"internal/reflectlite$string.22" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !142
@"internal/reflectlite$string.23" = internal unnamed_addr constant [2 x i8] c"\\a", align 1, !dbg !144
@"internal/reflectlite$string.24" = internal unnamed_addr constant [2 x i8] c"\\b", align 1, !dbg !146
@"internal/reflectlite$string.25" = internal unnamed_addr constant [2 x i8] c"\\f", align 1, !dbg !148
@"internal/reflectlite$string.26" = internal unnamed_addr constant [2 x i8] c"\\n", align 1, !dbg !150
@"internal/reflectlite$string.27" = internal unnamed_addr constant [2 x i8] c"\\r", align 1, !dbg !152
@"internal/reflectlite$string.28" = internal unnamed_addr constant [2 x i8] c"\\t", align 1, !dbg !154
@"internal/reflectlite$string.29" = internal unnamed_addr constant [2 x i8] c"\\v", align 1, !dbg !156
@"internal/reflectlite$string.30" = internal unnamed_addr constant [2 x i8] c"\\x", align 1, !dbg !158
@"internal/reflectlite$string.31" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !160
@"internal/reflectlite$string.32" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !162
@"internal/reflectlite$string.33" = internal unnamed_addr constant [2 x i8] c"\\u", align 1, !dbg !164
@"internal/reflectlite$string.34" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !166
@"internal/reflectlite$string.35" = internal unnamed_addr constant [2 x i8] c"\\U", align 1, !dbg !168
@"internal/reflectlite$string.36" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !170
@"reflect/types.type:named:internal/reflectlite.ValueError" = internal constant { i8, i16, ptr, ptr, ptr, [23 x i8] } { i8 122, i16 0, ptr @"reflect/types.type:pointer:named:internal/reflectlite.ValueError", ptr @"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", [23 x i8] c"reflectlite.ValueError\00" }, align 8, !dbg !172
@"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}" = internal constant { i8, i16, ptr, ptr, i32, i16, [2 x { ptr, ptr }] } { i8 90, i16 0, ptr @"reflect/types.type:pointer:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", i32 24, i16 2, [2 x { ptr, ptr }] [{ ptr, ptr } { ptr @"reflect/types.type:basic:string", ptr @"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}.Method" }, { ptr, ptr } { ptr @"reflect/types.type:named:internal/reflectlite.Kind", ptr @"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}.Kind" }] }, align 8, !dbg !182
@"reflect/types.type:pointer:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}" }, align 8, !dbg !188
@"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}.Method" = internal unnamed_addr constant [9 x i8] c"\04\00Method\00", align 1
@"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}.Kind" = internal unnamed_addr constant [7 x i8] c"\04\10Kind\00", align 1
@"internal/reflectlite$string.41" = internal unnamed_addr constant [7 x i8] c"invalid", align 1, !dbg !190
@"internal/reflectlite$string.42" = internal unnamed_addr constant [4 x i8] c"bool", align 1, !dbg !192
@"internal/reflectlite$string.43" = internal unnamed_addr constant [3 x i8] c"int", align 1, !dbg !194
@"internal/reflectlite$string.44" = internal unnamed_addr constant [4 x i8] c"int8", align 1, !dbg !196
@"internal/reflectlite$string.45" = internal unnamed_addr constant [5 x i8] c"int16", align 1, !dbg !198
@"internal/reflectlite$string.46" = internal unnamed_addr constant [5 x i8] c"int32", align 1, !dbg !200
@"internal/reflectlite$string.47" = internal unnamed_addr constant [5 x i8] c"int64", align 1, !dbg !202
@"internal/reflectlite$string.48" = internal unnamed_addr constant [4 x i8] c"uint", align 1, !dbg !204
@"internal/reflectlite$string.49" = internal unnamed_addr constant [5 x i8] c"uint8", align 1, !dbg !206
@"internal/reflectlite$string.50" = internal unnamed_addr constant [6 x i8] c"uint16", align 1, !dbg !208
@"internal/reflectlite$string.51" = internal unnamed_addr constant [6 x i8] c"uint32", align 1, !dbg !213
@"internal/reflectlite$string.52" = internal unnamed_addr constant [6 x i8] c"uint64", align 1, !dbg !215
@"internal/reflectlite$string.53" = internal unnamed_addr constant [7 x i8] c"uintptr", align 1, !dbg !217
@"internal/reflectlite$string.54" = internal unnamed_addr constant [7 x i8] c"float32", align 1, !dbg !219
@"internal/reflectlite$string.55" = internal unnamed_addr constant [7 x i8] c"float64", align 1, !dbg !221
@"internal/reflectlite$string.56" = internal unnamed_addr constant [9 x i8] c"complex64", align 1, !dbg !223
@"internal/reflectlite$string.57" = internal unnamed_addr constant [10 x i8] c"complex128", align 1, !dbg !228
@"internal/reflectlite$string.58" = internal unnamed_addr constant [6 x i8] c"string", align 1, !dbg !233
@"internal/reflectlite$string.59" = internal unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1, !dbg !235
@"internal/reflectlite$string.60" = internal unnamed_addr constant [4 x i8] c"chan", align 1, !dbg !237
@"internal/reflectlite$string.61" = internal unnamed_addr constant [9 x i8] c"interface", align 1, !dbg !239
@"internal/reflectlite$string.62" = internal unnamed_addr constant [3 x i8] c"ptr", align 1, !dbg !241
@"internal/reflectlite$string.63" = internal unnamed_addr constant [5 x i8] c"slice", align 1, !dbg !243
@"internal/reflectlite$string.64" = internal unnamed_addr constant [5 x i8] c"array", align 1, !dbg !245
@"internal/reflectlite$string.65" = internal unnamed_addr constant [4 x i8] c"func", align 1, !dbg !247
@"internal/reflectlite$string.66" = internal unnamed_addr constant [3 x i8] c"map", align 1, !dbg !249
@"internal/reflectlite$string.67" = internal unnamed_addr constant [6 x i8] c"struct", align 1, !dbg !251
@"internal/reflectlite$string.68" = internal unnamed_addr constant [4 x i8] c"kind", align 1, !dbg !253
@"reflect/types.type:named:internal/reflectlite.TypeError" = internal constant { i8, i16, ptr, ptr, ptr, [22 x i8] } { i8 122, i16 0, ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr @"reflect/types.type:struct:{Method:basic:string}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", [22 x i8] c"reflectlite.TypeError\00" }, align 8, !dbg !255
@"reflect/types.type:struct:{Method:basic:string}" = internal constant { i8, i16, ptr, ptr, i32, i16, [1 x { ptr, ptr }] } { i8 90, i16 0, ptr @"reflect/types.type:pointer:struct:{Method:basic:string}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", i32 16, i16 1, [1 x { ptr, ptr }] [{ ptr, ptr } { ptr @"reflect/types.type:basic:string", ptr @"reflect/types.type:struct:{Method:basic:string}.Method" }] }, align 8, !dbg !263
@"reflect/types.type:pointer:struct:{Method:basic:string}" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:struct:{Method:basic:string}" }, align 8, !dbg !265
@"reflect/types.type:struct:{Method:basic:string}.Method" = internal unnamed_addr constant [9 x i8] c"\04\00Method\00", align 1
@"internal/reflectlite$string.87" = internal unnamed_addr constant [7 x i8] c"chan<- ", align 1, !dbg !267
@"internal/reflectlite$string.88" = internal unnamed_addr constant [7 x i8] c"<-chan ", align 1, !dbg !269
@"internal/reflectlite$string.89" = internal unnamed_addr constant [6 x i8] c"chan (", align 1, !dbg !271
@"internal/reflectlite$string.90" = internal unnamed_addr constant [1 x i8] c")", align 1, !dbg !273
@"internal/reflectlite$string.91" = internal unnamed_addr constant [5 x i8] c"chan ", align 1, !dbg !275
@"internal/reflectlite$string.92" = internal unnamed_addr constant [1 x i8] c"*", align 1, !dbg !277
@"internal/reflectlite$string.93" = internal unnamed_addr constant [2 x i8] c"[]", align 1, !dbg !279
@"internal/reflectlite$string.94" = internal unnamed_addr constant [1 x i8] c"[", align 1, !dbg !281
@"internal/reflectlite$string.95" = internal unnamed_addr constant [1 x i8] c"]", align 1, !dbg !283
@"internal/reflectlite$string.96" = internal unnamed_addr constant [4 x i8] c"map[", align 1, !dbg !285
@"internal/reflectlite$string.97" = internal unnamed_addr constant [1 x i8] c"]", align 1, !dbg !287
@"internal/reflectlite$string.98" = internal unnamed_addr constant [9 x i8] c"struct {}", align 1, !dbg !289
@"internal/reflectlite$string.100" = internal unnamed_addr constant [1 x i8] c" ", align 1, !dbg !291
@"internal/reflectlite$string.101" = internal unnamed_addr constant [1 x i8] c" ", align 1, !dbg !293
@"internal/reflectlite$string.102" = internal unnamed_addr constant [1 x i8] c" ", align 1, !dbg !295
@"internal/reflectlite$string.103" = internal unnamed_addr constant [1 x i8] c";", align 1, !dbg !297
@"internal/reflectlite$string.104" = internal unnamed_addr constant [2 x i8] c" }", align 1, !dbg !299
@"internal/reflectlite$string.105" = internal unnamed_addr constant [12 x i8] c"interface {}", align 1, !dbg !301
@"internal/reflectlite$string.106" = internal unnamed_addr constant [8 x i8] c"struct {", align 1, !dbg !306
@"internal/reflectlite$string.107" = internal unnamed_addr constant [33 x i8] c"reflect: field index out of range", align 1, !dbg !308
@"internal/reflectlite$pack.108" = internal unnamed_addr constant { %runtime._string } { %runtime._string { ptr @"internal/reflectlite$string.107", i64 33 } }
@"internal/reflectlite$string.111" = internal unnamed_addr constant [30 x i8] c"reflect: call of reflect.Type.", align 1, !dbg !313
@"internal/reflectlite$string.112" = internal unnamed_addr constant [16 x i8] c" on invalid type", align 1, !dbg !318
@"internal/reflectlite$string.229" = internal unnamed_addr constant [17 x i8] c"reflect: call of ", align 1, !dbg !321
@"internal/reflectlite$string.230" = internal unnamed_addr constant [14 x i8] c" on zero Value", align 1, !dbg !327
@"internal/reflectlite$string.231" = internal unnamed_addr constant [17 x i8] c"reflect: call of ", align 1, !dbg !329
@"internal/reflectlite$string.232" = internal unnamed_addr constant [4 x i8] c" on ", align 1, !dbg !331
@"internal/reflectlite$string.233" = internal unnamed_addr constant [6 x i8] c" Value", align 1, !dbg !333
@"internal/task.activeTasks" = internal global ptr @"internal/task.mainTask", align 8, !dbg !335
@"internal/task.mainTask" = internal global %"internal/task.Task" zeroinitializer, align 8, !dbg !381
@"internal/task$string" = internal unnamed_addr constant [30 x i8] c"sync: unlock of unlocked Mutex", align 1, !dbg !383
@"internal/task$pack" = internal unnamed_addr constant { %runtime._string } { %runtime._string { ptr @"internal/task$string", i64 30 } }
@"internal/task.numCPU" = internal global i32 0, align 4, !dbg !386
@"internal/task.activeTaskLock" = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !389
@"internal/task$string.7" = internal unnamed_addr constant [20 x i8] c"unknown current task", align 1, !dbg !393
@"internal/task$string.8" = internal unnamed_addr constant [12 x i8] c"*** pause:  ", align 1, !dbg !398
@"internal/task.otherGoroutines" = internal global i32 0, align 4, !dbg !400
@"internal/task$string.12" = internal unnamed_addr constant [9 x i8] c"*** exit:", align 1, !dbg !402
@"internal/task$string.13" = internal unnamed_addr constant [17 x i8] c"taskExited failed", align 1, !dbg !404
@"internal/task.scanWaitGroup" = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !406
@"internal/task.gcState" = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !412
@runtime.xorshift32State = internal global i32 1, align 4, !dbg !414
@runtime.xorshift64State = internal global i64 1, align 8, !dbg !417
@runtime.heapSize = internal global i64 131072, align 8, !dbg !419
@"reflect/types.type:basic:string" = internal constant { i8, ptr } { i8 81, ptr @"reflect/types.type:pointer:basic:string" }, align 8, !dbg !422
@"reflect/types.type:pointer:basic:string" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:basic:string" }, align 8, !dbg !424
@runtime.zeroSizedAlloc = internal global i8 0, align 1, !dbg !426
@runtime.gcLock = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !429
@"runtime$string.7" = internal unnamed_addr constant [17 x i8] c"gc: out of memory", align 1, !dbg !431
@__ehdr_start = external global %runtime.elfHeader, align 8
@"runtime$string.12" = internal unnamed_addr constant [7 x i8] c"panic: ", align 1, !dbg !433
@"runtime$string.13" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !436
@"runtime$string.14" = internal unnamed_addr constant [2 x i8] c": ", align 1, !dbg !441
@"runtime$string.15" = internal unnamed_addr constant [22 x i8] c"panic: runtime error: ", align 1, !dbg !443
@"runtime$string.17" = internal unnamed_addr constant [23 x i8] c"nil pointer dereference", align 1, !dbg !446
@"runtime$string.19" = internal unnamed_addr constant [18 x i8] c"index out of range", align 1, !dbg !449
@"runtime$string.20" = internal unnamed_addr constant [18 x i8] c"slice out of range", align 1, !dbg !454
@"runtime$string.22" = internal unnamed_addr constant [37 x i8] c"unsafe.Slice/String: len out of range", align 1, !dbg !456
@"runtime$string.24" = internal unnamed_addr constant [14 x i8] c"negative shift", align 1, !dbg !461
@"runtime$string.35" = internal unnamed_addr constant [3 x i8] c"NaN", align 1, !dbg !463
@"runtime$string.36" = internal unnamed_addr constant [4 x i8] c"+Inf", align 1, !dbg !466
@"runtime$string.37" = internal unnamed_addr constant [4 x i8] c"-Inf", align 1, !dbg !468
@"runtime$string.38" = internal unnamed_addr constant [3 x i8] c"NaN", align 1, !dbg !470
@"runtime$string.39" = internal unnamed_addr constant [4 x i8] c"+Inf", align 1, !dbg !472
@"runtime$string.40" = internal unnamed_addr constant [4 x i8] c"-Inf", align 1, !dbg !474
@"runtime$string.41" = internal unnamed_addr constant [2 x i8] c"i)", align 1, !dbg !476
@"runtime$string.42" = internal unnamed_addr constant [2 x i8] c"i)", align 1, !dbg !478
@"runtime$string.45" = internal unnamed_addr constant [3 x i8] c"nil", align 1, !dbg !480
@"runtime$string.46" = internal unnamed_addr constant [4 x i8] c"true", align 1, !dbg !482
@"runtime$string.47" = internal unnamed_addr constant [5 x i8] c"false", align 1, !dbg !484
@runtime.stackTop = internal global i64 0, align 8, !dbg !486
@runtime.main_argc = internal global i32 0, align 4, !dbg !488
@runtime.main_argv = internal global ptr null, align 8, !dbg !490
@"runtime$string.50" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !493
@"runtime$string.51" = internal unnamed_addr constant [16 x i8] c": caught signal ", align 1, !dbg !495
@"runtime$string.52" = internal unnamed_addr constant [6 x i8] c"SIGBUS", align 1, !dbg !497
@"runtime$string.53" = internal unnamed_addr constant [6 x i8] c"SIGILL", align 1, !dbg !499
@"runtime$string.54" = internal unnamed_addr constant [7 x i8] c"SIGSEGV", align 1, !dbg !501
@"runtime$string.55" = internal unnamed_addr constant [20 x i8] c"panic: runtime error", align 1, !dbg !503
@runtime.signalFutex = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !505
@runtime.heapMaxSize = internal global i64 0, align 8, !dbg !507
@runtime.heapStart = internal global i64 0, align 8, !dbg !509
@runtime.heapEnd = internal global i64 0, align 8, !dbg !511
@"runtime$string.56" = internal unnamed_addr constant [27 x i8] c"cannot allocate heap memory", align 1, !dbg !513
@runtime.receivedSignals = internal global %"sync/atomic.Bool" zeroinitializer, align 4, !dbg !518
@runtime.printLock = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !520
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
define internal double @math.NaN(ptr %context) unnamed_addr #1 !dbg !1771 {
entry:
  %0 = call double @math.Float64frombits(i64 9221120237041090561, ptr undef), !dbg !1774
  ret double %0, !dbg !1775
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Log(double %x, ptr %context) unnamed_addr #1 !dbg !1776 {
entry:
    #dbg_value(double %x, !1779, !DIExpression(), !1780)
  %0 = call double @llvm.log.f64(double %x), !dbg !1780
  ret double %0, !dbg !1780
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Sqrt(double %x, ptr %context) unnamed_addr #1 !dbg !1781 {
entry:
    #dbg_value(double %x, !1784, !DIExpression(), !1785)
  %0 = call double @llvm.sqrt.f64(double %x), !dbg !1785
  ret double %0, !dbg !1785
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @math.IsNaN(double %f, ptr %context) unnamed_addr #1 !dbg !1786 {
entry:
    #dbg_value(double %f, !1788, !DIExpression(), !1789)
    #dbg_value(double %f, !1788, !DIExpression(), !1790)
    #dbg_value(double %f, !1788, !DIExpression(), !1791)
  %0 = fcmp une double %f, %f, !dbg !1792
  ret i1 %0, !dbg !1793
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Inf(i64 %sign, ptr %context) unnamed_addr #1 !dbg !1794 {
entry:
    #dbg_value(i64 %sign, !1799, !DIExpression(), !1801)
    #dbg_value(i64 0, !1800, !DIExpression(), !1802)
    #dbg_value(i64 %sign, !1799, !DIExpression(), !1803)
  %0 = icmp sge i64 %sign, 0, !dbg !1804
  br i1 %0, label %if.then, label %if.else, !dbg !1805

if.then:                                          ; preds = %entry
    #dbg_value(i64 9218868437227405312, !1800, !DIExpression(), !1806)
  br label %if.done, !dbg !1805

if.done:                                          ; preds = %if.else, %if.then
  %1 = phi i64 [ 9218868437227405312, %if.then ], [ -4503599627370496, %if.else ], !dbg !1802
    #dbg_value(i64 %1, !1800, !DIExpression(), !1807)
  %2 = call double @math.Float64frombits(i64 %1, ptr undef), !dbg !1808
  ret double %2, !dbg !1809

if.else:                                          ; preds = %entry
    #dbg_value(i64 -4503599627370496, !1800, !DIExpression(), !1810)
  br label %if.done, !dbg !1805
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @math.IsInf(double %f, i64 %sign, ptr %context) unnamed_addr #1 !dbg !1811 {
entry:
    #dbg_value(double %f, !1815, !DIExpression(), !1817)
    #dbg_value(i64 %sign, !1816, !DIExpression(), !1817)
    #dbg_value(i64 %sign, !1816, !DIExpression(), !1818)
  %0 = icmp eq i64 %sign, 0, !dbg !1819
  br i1 %0, label %if.then, label %if.else, !dbg !1820

if.then:                                          ; preds = %entry
    #dbg_value(double %f, !1815, !DIExpression(), !1821)
  %1 = call double @math.Abs(double %f, ptr undef), !dbg !1822
    #dbg_value(double %1, !1815, !DIExpression(), !1823)
  br label %if.done, !dbg !1820

if.done:                                          ; preds = %if.then1, %if.else, %if.then
  %2 = phi double [ %1, %if.then ], [ %f, %if.else ], [ %5, %if.then1 ], !dbg !1824
    #dbg_value(double %2, !1815, !DIExpression(), !1825)
  %3 = fcmp ogt double %2, 0x7FEFFFFFFFFFFFFF, !dbg !1826
  ret i1 %3, !dbg !1827

if.else:                                          ; preds = %entry
    #dbg_value(i64 %sign, !1816, !DIExpression(), !1828)
  %4 = icmp slt i64 %sign, 0, !dbg !1829
  br i1 %4, label %if.then1, label %if.done, !dbg !1820

if.then1:                                         ; preds = %if.else
    #dbg_value(double %f, !1815, !DIExpression(), !1830)
  %5 = fneg double %f, !dbg !1831
    #dbg_value(double %5, !1815, !DIExpression(), !1832)
  br label %if.done, !dbg !1820
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #0

; Function Attrs: nounwind uwtable(sync)
define internal i1 @math.Signbit(double %x, ptr %context) unnamed_addr #1 !dbg !1833 {
entry:
    #dbg_value(double %x, !1836, !DIExpression(), !1837)
    #dbg_value(double %x, !1836, !DIExpression(), !1838)
  %0 = call i64 @math.Float64bits(double %x, ptr undef), !dbg !1839
  %1 = icmp slt i64 %0, 0, !dbg !1840
  ret i1 %1, !dbg !1841
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Copysign(double %f, double %sign, ptr %context) unnamed_addr #1 !dbg !1842 {
entry:
    #dbg_value(double %f, !1847, !DIExpression(), !1849)
    #dbg_value(double %sign, !1848, !DIExpression(), !1849)
    #dbg_value(double %f, !1847, !DIExpression(), !1850)
  %0 = call i64 @math.Float64bits(double %f, ptr undef), !dbg !1851
  %1 = and i64 %0, 9223372036854775807, !dbg !1852
    #dbg_value(double %sign, !1848, !DIExpression(), !1853)
  %2 = call i64 @math.Float64bits(double %sign, ptr undef), !dbg !1854
  %3 = and i64 %2, -9223372036854775808, !dbg !1855
  %4 = or i64 %1, %3, !dbg !1856
  %5 = call double @math.Float64frombits(i64 %4, ptr undef), !dbg !1857
  ret double %5, !dbg !1858
}

; Function Attrs: nounwind uwtable(sync)
define internal { double, i64 } @math.normalize(double %x, ptr %context) unnamed_addr #1 !dbg !1859 {
entry:
    #dbg_value(double %x, !1861, !DIExpression(), !1862)
    #dbg_value(double %x, !1861, !DIExpression(), !1863)
  %0 = call double @math.Abs(double %x, ptr undef), !dbg !1864
  %1 = fcmp olt double %0, 0x10000000000000, !dbg !1865
  br i1 %1, label %if.then, label %if.done, !dbg !1866

if.then:                                          ; preds = %entry
    #dbg_value(double %x, !1861, !DIExpression(), !1867)
  %2 = fmul double %x, 0x4330000000000000, !dbg !1868
  %3 = insertvalue { double, i64 } zeroinitializer, double %2, 0, !dbg !1869
  %4 = insertvalue { double, i64 } %3, i64 -52, 1, !dbg !1869
  ret { double, i64 } %4, !dbg !1869

if.done:                                          ; preds = %entry
    #dbg_value(double %x, !1861, !DIExpression(), !1870)
  %5 = insertvalue { double, i64 } zeroinitializer, double %x, 0, !dbg !1871
  %6 = insertvalue { double, i64 } %5, i64 0, 1, !dbg !1871
  ret { double, i64 } %6, !dbg !1871
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Exp(double %x, ptr %context) unnamed_addr #1 !dbg !1872 {
entry:
    #dbg_value(double %x, !1875, !DIExpression(), !1876)
  %0 = call double @llvm.exp.f64(double %x), !dbg !1876
  ret double %0, !dbg !1876
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #0

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Ldexp(double %frac, i64 %exp, ptr %context) unnamed_addr #1 !dbg !1877 {
entry:
    #dbg_value(double %frac, !1880, !DIExpression(), !1882)
    #dbg_value(i64 %exp, !1881, !DIExpression(), !1882)
  br i1 false, label %if.then, label %if.done, !dbg !1883

if.then:                                          ; preds = %entry
    #dbg_value(double %frac, !1880, !DIExpression(), !1884)
    #dbg_value(i64 %exp, !1881, !DIExpression(), !1885)
  %0 = call double @math.archLdexp(double %frac, i64 %exp, ptr undef), !dbg !1886
  ret double %0, !dbg !1887

if.done:                                          ; preds = %entry
    #dbg_value(double %frac, !1880, !DIExpression(), !1888)
    #dbg_value(i64 %exp, !1881, !DIExpression(), !1889)
  %1 = call double @math.ldexp(double %frac, i64 %exp, ptr undef), !dbg !1890
  ret double %1, !dbg !1891
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.archLdexp(double %frac, i64 %exp, ptr %context) unnamed_addr #1 !dbg !1892 {
entry:
    #dbg_value(double %frac, !1894, !DIExpression(), !1896)
    #dbg_value(i64 %exp, !1895, !DIExpression(), !1896)
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"math$pack.30", ptr undef), !dbg !1897
  unreachable, !dbg !1897
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.ldexp(double %frac, i64 %exp, ptr %context) unnamed_addr #1 !dbg !1898 {
entry:
    #dbg_value(double %frac, !1900, !DIExpression(), !1905)
    #dbg_value(i64 %exp, !1901, !DIExpression(), !1905)
    #dbg_value(double %frac, !1900, !DIExpression(), !1906)
  %0 = fcmp oeq double %frac, 0.000000e+00, !dbg !1907
  br i1 %0, label %switch.body, label %switch.next, !dbg !1908

switch.body:                                      ; preds = %entry
    #dbg_value(double %frac, !1900, !DIExpression(), !1909)
  ret double %frac, !dbg !1910

switch.next:                                      ; preds = %entry
    #dbg_value(double %frac, !1900, !DIExpression(), !1911)
  %1 = call i1 @math.IsInf(double %frac, i64 0, ptr undef), !dbg !1912
  br i1 %1, label %binop.done, label %binop.rhs, !dbg !1908

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %2 = phi i1 [ true, %switch.next ], [ %28, %binop.rhs ], !dbg !1913
  br i1 %2, label %switch.body1, label %switch.next2, !dbg !1908

switch.body1:                                     ; preds = %binop.done
    #dbg_value(double %frac, !1900, !DIExpression(), !1914)
  ret double %frac, !dbg !1915

switch.next2:                                     ; preds = %binop.done
    #dbg_value(double %frac, !1900, !DIExpression(), !1916)
  %3 = call { double, i64 } @math.normalize(double %frac, ptr undef), !dbg !1917
  %4 = extractvalue { double, i64 } %3, 0, !dbg !1917
    #dbg_value(double %4, !1900, !DIExpression(), !1918)
  %5 = extractvalue { double, i64 } %3, 1, !dbg !1917
    #dbg_value(i64 %5, !1902, !DIExpression(), !1919)
    #dbg_value(i64 %5, !1902, !DIExpression(), !1920)
  %6 = add i64 %exp, %5, !dbg !1921
    #dbg_value(i64 %6, !1901, !DIExpression(), !1921)
    #dbg_value(double %4, !1900, !DIExpression(), !1922)
  %7 = call i64 @math.Float64bits(double %4, ptr undef), !dbg !1923
    #dbg_value(i64 %7, !1903, !DIExpression(), !1924)
    #dbg_value(i64 %7, !1903, !DIExpression(), !1925)
  %8 = lshr i64 %7, 52, !dbg !1926
  %shift.result = select i1 false, i64 0, i64 %8, !dbg !1926
  %9 = and i64 %shift.result, 2047, !dbg !1927
  %10 = sub i64 %9, 1023, !dbg !1928
  %11 = add i64 %6, %10, !dbg !1929
    #dbg_value(i64 %11, !1901, !DIExpression(), !1929)
    #dbg_value(i64 %11, !1901, !DIExpression(), !1930)
  %12 = icmp slt i64 %11, -1075, !dbg !1931
  br i1 %12, label %if.then, label %if.done, !dbg !1908

if.then:                                          ; preds = %switch.next2
    #dbg_value(double %4, !1900, !DIExpression(), !1932)
  %13 = call double @math.Copysign(double 0.000000e+00, double %4, ptr undef), !dbg !1933
  ret double %13, !dbg !1934

if.done:                                          ; preds = %switch.next2
    #dbg_value(i64 %11, !1901, !DIExpression(), !1935)
  %14 = icmp sgt i64 %11, 1023, !dbg !1936
  br i1 %14, label %if.then3, label %if.done6, !dbg !1908

if.then3:                                         ; preds = %if.done
    #dbg_value(double %4, !1900, !DIExpression(), !1937)
  %15 = fcmp olt double %4, 0.000000e+00, !dbg !1938
  br i1 %15, label %if.then4, label %if.done5, !dbg !1908

if.then4:                                         ; preds = %if.then3
  %16 = call double @math.Inf(i64 -1, ptr undef), !dbg !1939
  ret double %16, !dbg !1940

if.done5:                                         ; preds = %if.then3
  %17 = call double @math.Inf(i64 1, ptr undef), !dbg !1941
  ret double %17, !dbg !1942

if.done6:                                         ; preds = %if.done
    #dbg_value(double 1.000000e+00, !1904, !DIExpression(), !1943)
    #dbg_value(i64 %11, !1901, !DIExpression(), !1944)
  %18 = icmp slt i64 %11, -1022, !dbg !1945
  br i1 %18, label %if.then7, label %if.done8, !dbg !1908

if.then7:                                         ; preds = %if.done6
  %19 = add i64 %11, 53, !dbg !1946
    #dbg_value(i64 %19, !1901, !DIExpression(), !1946)
    #dbg_value(double 0x3CA0000000000000, !1904, !DIExpression(), !1947)
  br label %if.done8, !dbg !1908

if.done8:                                         ; preds = %if.then7, %if.done6
  %20 = phi i64 [ %11, %if.done6 ], [ %19, %if.then7 ], !dbg !1948
  %21 = phi double [ 1.000000e+00, %if.done6 ], [ 0x3CA0000000000000, %if.then7 ], !dbg !1943
  %22 = and i64 %7, -9218868437227405313, !dbg !1949
    #dbg_value(i64 %22, !1903, !DIExpression(), !1949)
    #dbg_value(i64 %20, !1901, !DIExpression(), !1950)
  %23 = add i64 %20, 1023, !dbg !1951
  %24 = shl i64 %23, 52, !dbg !1952
  %shift.result9 = select i1 false, i64 0, i64 %24, !dbg !1952
  %25 = or i64 %22, %shift.result9, !dbg !1953
    #dbg_value(i64 %25, !1903, !DIExpression(), !1953)
    #dbg_value(double %21, !1904, !DIExpression(), !1954)
    #dbg_value(i64 %25, !1903, !DIExpression(), !1955)
  %26 = call double @math.Float64frombits(i64 %25, ptr undef), !dbg !1956
  %27 = fmul double %21, %26, !dbg !1957
  ret double %27, !dbg !1958

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(double %frac, !1900, !DIExpression(), !1959)
  %28 = call i1 @math.IsNaN(double %frac, ptr undef), !dbg !1960
  br label %binop.done, !dbg !1908
}

; Function Attrs: nounwind uwtable(sync)
define internal { double, double } @math.Modf(double %f, ptr %context) unnamed_addr #1 !dbg !1961 {
entry:
    #dbg_value(double %f, !1964, !DIExpression(), !1967)
    #dbg_value(double %f, !1964, !DIExpression(), !1968)
  %0 = call double @math.Trunc(double %f, ptr undef), !dbg !1969
    #dbg_value(double %0, !1965, !DIExpression(), !1970)
    #dbg_value(double %f, !1964, !DIExpression(), !1971)
    #dbg_value(double %0, !1965, !DIExpression(), !1972)
  %1 = fsub double %f, %0, !dbg !1973
    #dbg_value(double %f, !1964, !DIExpression(), !1974)
  %2 = call double @math.Copysign(double %1, double %f, ptr undef), !dbg !1975
    #dbg_value(double %2, !1966, !DIExpression(), !1976)
  %3 = insertvalue { double, double } zeroinitializer, double %0, 0, !dbg !1977
  %4 = insertvalue { double, double } %3, double %2, 1, !dbg !1977
  ret { double, double } %4, !dbg !1977
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Trunc(double %x, ptr %context) unnamed_addr #1 !dbg !1978 {
entry:
    #dbg_value(double %x, !1981, !DIExpression(), !1982)
  %0 = call double @llvm.trunc.f64(double %x), !dbg !1982
  ret double %0, !dbg !1982
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #0

; Function Attrs: nounwind uwtable(sync)
define internal { double, i64 } @math.Frexp(double %f, ptr %context) unnamed_addr #1 !dbg !1983 {
entry:
    #dbg_value(double %f, !1986, !DIExpression(), !1987)
  br i1 false, label %if.then, label %if.done, !dbg !1988

if.then:                                          ; preds = %entry
    #dbg_value(double %f, !1986, !DIExpression(), !1989)
  %0 = call { double, i64 } @math.archFrexp(double %f, ptr undef), !dbg !1990
  %1 = extractvalue { double, i64 } %0, 0, !dbg !1990
  %2 = extractvalue { double, i64 } %0, 1, !dbg !1990
  %3 = insertvalue { double, i64 } zeroinitializer, double %1, 0, !dbg !1991
  %4 = insertvalue { double, i64 } %3, i64 %2, 1, !dbg !1991
  ret { double, i64 } %4, !dbg !1991

if.done:                                          ; preds = %entry
    #dbg_value(double %f, !1986, !DIExpression(), !1992)
  %5 = call { double, i64 } @math.frexp(double %f, ptr undef), !dbg !1993
  %6 = extractvalue { double, i64 } %5, 0, !dbg !1993
  %7 = extractvalue { double, i64 } %5, 1, !dbg !1993
  %8 = insertvalue { double, i64 } zeroinitializer, double %6, 0, !dbg !1994
  %9 = insertvalue { double, i64 } %8, i64 %7, 1, !dbg !1994
  ret { double, i64 } %9, !dbg !1994
}

; Function Attrs: nounwind uwtable(sync)
define internal { double, i64 } @math.archFrexp(double %x, ptr %context) unnamed_addr #1 !dbg !1995 {
entry:
    #dbg_value(double %x, !1997, !DIExpression(), !1998)
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"math$pack.28", ptr undef), !dbg !1999
  unreachable, !dbg !1999
}

; Function Attrs: nounwind uwtable(sync)
define internal { double, i64 } @math.frexp(double %f, ptr %context) unnamed_addr #1 !dbg !2000 {
entry:
    #dbg_value(double %f, !2002, !DIExpression(), !2006)
    #dbg_value(double %f, !2002, !DIExpression(), !2007)
  %0 = fcmp oeq double %f, 0.000000e+00, !dbg !2008
  br i1 %0, label %switch.body, label %switch.next, !dbg !2009

switch.body:                                      ; preds = %entry
    #dbg_value(double %f, !2002, !DIExpression(), !2010)
  %1 = insertvalue { double, i64 } zeroinitializer, double %f, 0, !dbg !2011
  %2 = insertvalue { double, i64 } %1, i64 0, 1, !dbg !2011
  ret { double, i64 } %2, !dbg !2011

switch.next:                                      ; preds = %entry
    #dbg_value(double %f, !2002, !DIExpression(), !2012)
  %3 = call i1 @math.IsInf(double %f, i64 0, ptr undef), !dbg !2013
  br i1 %3, label %binop.done, label %binop.rhs, !dbg !2009

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ true, %switch.next ], [ %21, %binop.rhs ], !dbg !2014
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !2009

switch.body1:                                     ; preds = %binop.done
    #dbg_value(double %f, !2002, !DIExpression(), !2015)
  %5 = insertvalue { double, i64 } zeroinitializer, double %f, 0, !dbg !2016
  %6 = insertvalue { double, i64 } %5, i64 0, 1, !dbg !2016
  ret { double, i64 } %6, !dbg !2016

switch.next2:                                     ; preds = %binop.done
    #dbg_value(double %f, !2002, !DIExpression(), !2017)
  %7 = call { double, i64 } @math.normalize(double %f, ptr undef), !dbg !2018
  %8 = extractvalue { double, i64 } %7, 0, !dbg !2018
    #dbg_value(double %8, !2002, !DIExpression(), !2019)
  %9 = extractvalue { double, i64 } %7, 1, !dbg !2018
    #dbg_value(i64 %9, !2003, !DIExpression(), !2020)
    #dbg_value(double %8, !2002, !DIExpression(), !2021)
  %10 = call i64 @math.Float64bits(double %8, ptr undef), !dbg !2022
    #dbg_value(i64 %10, !2004, !DIExpression(), !2023)
    #dbg_value(i64 %10, !2004, !DIExpression(), !2024)
  %11 = lshr i64 %10, 52, !dbg !2025
  %shift.result = select i1 false, i64 0, i64 %11, !dbg !2025
  %12 = and i64 %shift.result, 2047, !dbg !2026
  %13 = sub i64 %12, 1023, !dbg !2027
  %14 = add i64 %13, 1, !dbg !2028
  %15 = add i64 %9, %14, !dbg !2029
    #dbg_value(i64 %15, !2003, !DIExpression(), !2029)
  %16 = and i64 %10, -9218868437227405313, !dbg !2030
    #dbg_value(i64 %16, !2004, !DIExpression(), !2030)
  %17 = or i64 %16, 4602678819172646912, !dbg !2031
    #dbg_value(i64 %17, !2004, !DIExpression(), !2031)
    #dbg_value(i64 %17, !2004, !DIExpression(), !2032)
  %18 = call double @math.Float64frombits(i64 %17, ptr undef), !dbg !2033
    #dbg_value(double %18, !2005, !DIExpression(), !2034)
  %19 = insertvalue { double, i64 } zeroinitializer, double %18, 0, !dbg !2035
  %20 = insertvalue { double, i64 } %19, i64 %15, 1, !dbg !2035
  ret { double, i64 } %20, !dbg !2035

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(double %f, !2002, !DIExpression(), !2036)
  %21 = call i1 @math.IsNaN(double %f, ptr undef), !dbg !2037
  br label %binop.done, !dbg !2009
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Pow(double %x, double %y, ptr %context) #1 !dbg !2038 {
entry:
    #dbg_value(double %x, !2041, !DIExpression(), !2043)
    #dbg_value(double %y, !2042, !DIExpression(), !2043)
  br i1 false, label %if.then, label %if.done, !dbg !2044

if.then:                                          ; preds = %entry
    #dbg_value(double %x, !2041, !DIExpression(), !2045)
    #dbg_value(double %y, !2042, !DIExpression(), !2046)
  %0 = call double @math.archPow(double %x, double %y, ptr undef), !dbg !2047
  ret double %0, !dbg !2048

if.done:                                          ; preds = %entry
    #dbg_value(double %x, !2041, !DIExpression(), !2049)
    #dbg_value(double %y, !2042, !DIExpression(), !2050)
  %1 = call double @math.pow(double %x, double %y, ptr undef), !dbg !2051
  ret double %1, !dbg !2052
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.archPow(double %x, double %y, ptr %context) unnamed_addr #1 !dbg !2053 {
entry:
    #dbg_value(double %x, !2055, !DIExpression(), !2057)
    #dbg_value(double %y, !2056, !DIExpression(), !2057)
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"math$pack.40", ptr undef), !dbg !2058
  unreachable, !dbg !2058
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.pow(double %x, double %y, ptr %context) unnamed_addr #1 !dbg !2059 {
entry:
    #dbg_value(double %x, !2061, !DIExpression(), !2070)
    #dbg_value(double %y, !2062, !DIExpression(), !2070)
    #dbg_value(double %y, !2062, !DIExpression(), !2071)
  %0 = fcmp oeq double %y, 0.000000e+00, !dbg !2072
  br i1 %0, label %binop.done, label %binop.rhs51, !dbg !2073

binop.done:                                       ; preds = %binop.rhs51, %entry
  %1 = phi i1 [ true, %entry ], [ %95, %binop.rhs51 ], !dbg !2074
  br i1 %1, label %switch.body, label %switch.next, !dbg !2073

switch.body:                                      ; preds = %binop.done
  ret double 1.000000e+00, !dbg !2075

switch.next:                                      ; preds = %binop.done
    #dbg_value(double %y, !2062, !DIExpression(), !2076)
  %2 = fcmp oeq double %y, 1.000000e+00, !dbg !2077
  br i1 %2, label %switch.body1, label %switch.next2, !dbg !2073

switch.body1:                                     ; preds = %switch.next
    #dbg_value(double %x, !2061, !DIExpression(), !2078)
  ret double %x, !dbg !2079

switch.next2:                                     ; preds = %switch.next
    #dbg_value(double %x, !2061, !DIExpression(), !2080)
  %3 = call i1 @math.IsNaN(double %x, ptr undef), !dbg !2081
  br i1 %3, label %binop.done3, label %binop.rhs, !dbg !2073

binop.done3:                                      ; preds = %binop.rhs, %switch.next2
  %4 = phi i1 [ true, %switch.next2 ], [ %94, %binop.rhs ], !dbg !2082
  br i1 %4, label %switch.body4, label %switch.next5, !dbg !2073

switch.body4:                                     ; preds = %binop.done3
  %5 = call double @math.NaN(ptr undef), !dbg !2083
  ret double %5, !dbg !2084

switch.next5:                                     ; preds = %binop.done3
    #dbg_value(double %x, !2061, !DIExpression(), !2085)
  %6 = fcmp oeq double %x, 0.000000e+00, !dbg !2086
  br i1 %6, label %switch.body6, label %switch.next34, !dbg !2073

switch.body6:                                     ; preds = %switch.next5
    #dbg_value(double %y, !2062, !DIExpression(), !2087)
  %7 = fcmp olt double %y, 0.000000e+00, !dbg !2088
  br i1 %7, label %switch.body7, label %switch.next8, !dbg !2073

switch.body7:                                     ; preds = %switch.body6
    #dbg_value(double %x, !2061, !DIExpression(), !2089)
  %8 = call i1 @math.Signbit(double %x, ptr undef), !dbg !2090
  br i1 %8, label %cond.true, label %if.done, !dbg !2073

cond.true:                                        ; preds = %switch.body7
    #dbg_value(double %y, !2062, !DIExpression(), !2091)
  %9 = call i1 @math.isOddInt(double %y, ptr undef), !dbg !2092
  br i1 %9, label %if.then, label %if.done, !dbg !2073

if.then:                                          ; preds = %cond.true
  %10 = call double @math.Inf(i64 -1, ptr undef), !dbg !2093
  ret double %10, !dbg !2094

if.done:                                          ; preds = %cond.true, %switch.body7
  %11 = call double @math.Inf(i64 1, ptr undef), !dbg !2095
  ret double %11, !dbg !2096

switch.next8:                                     ; preds = %switch.body6
    #dbg_value(double %y, !2062, !DIExpression(), !2097)
  %12 = fcmp ogt double %y, 0.000000e+00, !dbg !2098
  br i1 %12, label %switch.body9, label %switch.done, !dbg !2073

switch.body9:                                     ; preds = %switch.next8
    #dbg_value(double %x, !2061, !DIExpression(), !2099)
  %13 = call i1 @math.Signbit(double %x, ptr undef), !dbg !2100
  br i1 %13, label %cond.true10, label %if.done12, !dbg !2073

cond.true10:                                      ; preds = %switch.body9
    #dbg_value(double %y, !2062, !DIExpression(), !2101)
  %14 = call i1 @math.isOddInt(double %y, ptr undef), !dbg !2102
  br i1 %14, label %if.then11, label %if.done12, !dbg !2073

if.then11:                                        ; preds = %cond.true10
    #dbg_value(double %x, !2061, !DIExpression(), !2103)
  ret double %x, !dbg !2104

if.done12:                                        ; preds = %cond.true10, %switch.body9
  ret double 0.000000e+00, !dbg !2105

switch.done:                                      ; preds = %switch.next49, %switch.next45, %switch.next8
    #dbg_value(double %y, !2062, !DIExpression(), !2106)
  %15 = call double @math.Abs(double %y, ptr undef), !dbg !2107
  %16 = call { double, double } @math.Modf(double %15, ptr undef), !dbg !2108
  %17 = extractvalue { double, double } %16, 0, !dbg !2108
    #dbg_value(double %17, !2063, !DIExpression(), !2109)
  %18 = extractvalue { double, double } %16, 1, !dbg !2108
    #dbg_value(double %18, !2064, !DIExpression(), !2110)
    #dbg_value(double %18, !2064, !DIExpression(), !2111)
  %19 = fcmp une double %18, 0.000000e+00, !dbg !2112
  br i1 %19, label %cond.true13, label %if.done15, !dbg !2073

cond.true13:                                      ; preds = %switch.done
    #dbg_value(double %x, !2061, !DIExpression(), !2113)
  %20 = fcmp olt double %x, 0.000000e+00, !dbg !2114
  br i1 %20, label %if.then14, label %if.done15, !dbg !2073

if.then14:                                        ; preds = %cond.true13
  %21 = call double @math.NaN(ptr undef), !dbg !2115
  ret double %21, !dbg !2116

if.done15:                                        ; preds = %cond.true13, %switch.done
    #dbg_value(double %17, !2063, !DIExpression(), !2117)
  %22 = fcmp oge double %17, 0x43E0000000000000, !dbg !2118
  br i1 %22, label %if.then16, label %if.done21, !dbg !2073

if.then16:                                        ; preds = %if.done15
    #dbg_value(double %x, !2061, !DIExpression(), !2119)
  %23 = fcmp oeq double %x, -1.000000e+00, !dbg !2120
  br i1 %23, label %switch.body17, label %switch.next18, !dbg !2073

switch.body17:                                    ; preds = %if.then16
  ret double 1.000000e+00, !dbg !2121

switch.next18:                                    ; preds = %if.then16
    #dbg_value(double %x, !2061, !DIExpression(), !2122)
  %24 = call double @math.Abs(double %x, ptr undef), !dbg !2123
  %25 = fcmp olt double %24, 1.000000e+00, !dbg !2124
    #dbg_value(double %y, !2062, !DIExpression(), !2125)
  %26 = fcmp ogt double %y, 0.000000e+00, !dbg !2126
  %27 = icmp eq i1 %25, %26, !dbg !2127
  br i1 %27, label %switch.body19, label %switch.next20, !dbg !2073

switch.body19:                                    ; preds = %switch.next18
  ret double 0.000000e+00, !dbg !2128

switch.next20:                                    ; preds = %switch.next18
  %28 = call double @math.Inf(i64 1, ptr undef), !dbg !2129
  ret double %28, !dbg !2130

if.done21:                                        ; preds = %if.done15
    #dbg_value(double 1.000000e+00, !2065, !DIExpression(), !2131)
    #dbg_value(i64 0, !2066, !DIExpression(), !2132)
    #dbg_value(double %18, !2064, !DIExpression(), !2133)
  %29 = fcmp une double %18, 0.000000e+00, !dbg !2134
  br i1 %29, label %if.then22, label %if.done25, !dbg !2073

if.then22:                                        ; preds = %if.done21
    #dbg_value(double %18, !2064, !DIExpression(), !2135)
  %30 = fcmp ogt double %18, 5.000000e-01, !dbg !2136
  br i1 %30, label %if.then23, label %if.done24, !dbg !2073

if.then23:                                        ; preds = %if.then22
  %31 = fsub double %18, 1.000000e+00, !dbg !2137
    #dbg_value(double %31, !2064, !DIExpression(), !2137)
  %32 = fadd double %17, 1.000000e+00, !dbg !2138
    #dbg_value(double %32, !2063, !DIExpression(), !2138)
  br label %if.done24, !dbg !2073

if.done24:                                        ; preds = %if.then23, %if.then22
  %33 = phi double [ %17, %if.then22 ], [ %32, %if.then23 ], !dbg !2109
  %34 = phi double [ %18, %if.then22 ], [ %31, %if.then23 ], !dbg !2110
    #dbg_value(double %34, !2064, !DIExpression(), !2139)
    #dbg_value(double %x, !2061, !DIExpression(), !2140)
  %35 = call double @math.Log(double %x, ptr undef), !dbg !2141
  %36 = fmul double %34, %35, !dbg !2142
  %37 = call double @math.Exp(double %36, ptr undef), !dbg !2143
    #dbg_value(double %37, !2065, !DIExpression(), !2144)
  br label %if.done25, !dbg !2073

if.done25:                                        ; preds = %if.done24, %if.done21
  %38 = phi double [ %17, %if.done21 ], [ %33, %if.done24 ], !dbg !2109
  %39 = phi double [ 1.000000e+00, %if.done21 ], [ %37, %if.done24 ], !dbg !2131
    #dbg_value(double %x, !2061, !DIExpression(), !2145)
  %40 = call { double, i64 } @math.Frexp(double %x, ptr undef), !dbg !2146
  %41 = extractvalue { double, i64 } %40, 0, !dbg !2146
    #dbg_value(double %41, !2067, !DIExpression(), !2147)
  %42 = extractvalue { double, i64 } %40, 1, !dbg !2146
    #dbg_value(i64 %42, !2068, !DIExpression(), !2148)
    #dbg_value(double %38, !2063, !DIExpression(), !2149)
  %abovemin = fcmp ole double 0xC3E0000000000000, %38, !dbg !2150
  %belowmax = fcmp ole double %38, 0x43DFFFFFFFFFFFFE, !dbg !2150
  %inbounds = and i1 %abovemin, %belowmax, !dbg !2150
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !2150
  %isnan = fcmp uno double %38, %38, !dbg !2150
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !2150
  %normal = fptosi double %38 to i64, !dbg !2150
  %43 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !2150
    #dbg_value(i64 %43, !2069, !DIExpression(), !2151)
  br label %for.loop, !dbg !2073

for.loop:                                         ; preds = %if.done31, %if.done25
  %44 = phi double [ %39, %if.done25 ], [ %57, %if.done31 ], !dbg !2131
  %45 = phi i64 [ 0, %if.done25 ], [ %58, %if.done31 ], !dbg !2132
  %46 = phi double [ %41, %if.done25 ], [ %64, %if.done31 ], !dbg !2147
  %47 = phi i64 [ %42, %if.done25 ], [ %65, %if.done31 ], !dbg !2148
  %48 = phi i64 [ %43, %if.done25 ], [ %66, %if.done31 ], !dbg !2151
    #dbg_value(i64 %48, !2069, !DIExpression(), !2152)
  %49 = icmp ne i64 %48, 0, !dbg !2153
  br i1 %49, label %for.body, label %for.done, !dbg !2073

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %47, !2068, !DIExpression(), !2154)
  %50 = icmp slt i64 %47, -4096, !dbg !2155
  br i1 %50, label %if.then26, label %cond.false, !dbg !2073

if.then26:                                        ; preds = %cond.false, %for.body
    #dbg_value(i64 %47, !2068, !DIExpression(), !2156)
  %51 = add i64 %45, %47, !dbg !2157
    #dbg_value(i64 %51, !2066, !DIExpression(), !2157)
  br label %for.done, !dbg !2073

cond.false:                                       ; preds = %for.body
    #dbg_value(i64 %47, !2068, !DIExpression(), !2158)
  %52 = icmp slt i64 4096, %47, !dbg !2159
  br i1 %52, label %if.then26, label %if.done27, !dbg !2073

if.done27:                                        ; preds = %cond.false
    #dbg_value(i64 %48, !2069, !DIExpression(), !2160)
  %53 = and i64 %48, 1, !dbg !2161
  %54 = icmp eq i64 %53, 1, !dbg !2162
  br i1 %54, label %if.then28, label %if.done29, !dbg !2073

if.then28:                                        ; preds = %if.done27
    #dbg_value(double %46, !2067, !DIExpression(), !2163)
  %55 = fmul double %44, %46, !dbg !2164
    #dbg_value(double %55, !2065, !DIExpression(), !2164)
    #dbg_value(i64 %47, !2068, !DIExpression(), !2165)
  %56 = add i64 %45, %47, !dbg !2166
    #dbg_value(i64 %56, !2066, !DIExpression(), !2166)
  br label %if.done29, !dbg !2073

if.done29:                                        ; preds = %if.then28, %if.done27
  %57 = phi double [ %44, %if.done27 ], [ %55, %if.then28 ], !dbg !2131
  %58 = phi i64 [ %45, %if.done27 ], [ %56, %if.then28 ], !dbg !2132
    #dbg_value(double %46, !2067, !DIExpression(), !2167)
  %59 = fmul double %46, %46, !dbg !2168
    #dbg_value(double %59, !2067, !DIExpression(), !2168)
  %60 = shl i64 %47, 1, !dbg !2169
  %shift.result = select i1 false, i64 0, i64 %60, !dbg !2169
    #dbg_value(i64 %shift.result, !2068, !DIExpression(), !2169)
    #dbg_value(double %59, !2067, !DIExpression(), !2170)
  %61 = fcmp olt double %59, 5.000000e-01, !dbg !2171
  br i1 %61, label %if.then30, label %if.done31, !dbg !2073

if.then30:                                        ; preds = %if.done29
    #dbg_value(double %59, !2067, !DIExpression(), !2172)
  %62 = fadd double %59, %59, !dbg !2173
    #dbg_value(double %62, !2067, !DIExpression(), !2173)
  %63 = sub i64 %shift.result, 1, !dbg !2174
    #dbg_value(i64 %63, !2068, !DIExpression(), !2174)
  br label %if.done31, !dbg !2073

if.done31:                                        ; preds = %if.then30, %if.done29
  %64 = phi double [ %59, %if.done29 ], [ %62, %if.then30 ], !dbg !2147
  %65 = phi i64 [ %shift.result, %if.done29 ], [ %63, %if.then30 ], !dbg !2148
  %66 = ashr i64 %48, 1, !dbg !2175
    #dbg_value(i64 %66, !2069, !DIExpression(), !2175)
  br label %for.loop, !dbg !2073

for.done:                                         ; preds = %if.then26, %for.loop
  %67 = phi i64 [ %45, %for.loop ], [ %51, %if.then26 ], !dbg !2132
    #dbg_value(double %y, !2062, !DIExpression(), !2176)
  %68 = fcmp olt double %y, 0.000000e+00, !dbg !2177
  br i1 %68, label %if.then32, label %if.done33, !dbg !2073

if.then32:                                        ; preds = %for.done
    #dbg_value(double %44, !2065, !DIExpression(), !2178)
  %69 = fdiv double 1.000000e+00, %44, !dbg !2179
    #dbg_value(double %69, !2065, !DIExpression(), !2180)
    #dbg_value(i64 %67, !2066, !DIExpression(), !2181)
  %70 = sub i64 0, %67, !dbg !2182
    #dbg_value(i64 %70, !2066, !DIExpression(), !2183)
  br label %if.done33, !dbg !2073

if.done33:                                        ; preds = %if.then32, %for.done
  %71 = phi double [ %44, %for.done ], [ %69, %if.then32 ], !dbg !2131
  %72 = phi i64 [ %67, %for.done ], [ %70, %if.then32 ], !dbg !2132
    #dbg_value(double %71, !2065, !DIExpression(), !2184)
    #dbg_value(i64 %72, !2066, !DIExpression(), !2185)
  %73 = call double @math.Ldexp(double %71, i64 %72, ptr undef), !dbg !2186
  ret double %73, !dbg !2187

switch.next34:                                    ; preds = %switch.next5
    #dbg_value(double %y, !2062, !DIExpression(), !2188)
  %74 = call i1 @math.IsInf(double %y, i64 0, ptr undef), !dbg !2189
  br i1 %74, label %switch.body35, label %switch.next40, !dbg !2073

switch.body35:                                    ; preds = %switch.next34
    #dbg_value(double %x, !2061, !DIExpression(), !2190)
  %75 = fcmp oeq double %x, -1.000000e+00, !dbg !2191
  br i1 %75, label %switch.body36, label %switch.next37, !dbg !2073

switch.body36:                                    ; preds = %switch.body35
  ret double 1.000000e+00, !dbg !2192

switch.next37:                                    ; preds = %switch.body35
    #dbg_value(double %x, !2061, !DIExpression(), !2193)
  %76 = call double @math.Abs(double %x, ptr undef), !dbg !2194
  %77 = fcmp olt double %76, 1.000000e+00, !dbg !2195
    #dbg_value(double %y, !2062, !DIExpression(), !2196)
  %78 = call i1 @math.IsInf(double %y, i64 1, ptr undef), !dbg !2197
  %79 = icmp eq i1 %77, %78, !dbg !2198
  br i1 %79, label %switch.body38, label %switch.next39, !dbg !2073

switch.body38:                                    ; preds = %switch.next37
  ret double 0.000000e+00, !dbg !2199

switch.next39:                                    ; preds = %switch.next37
  %80 = call double @math.Inf(i64 1, ptr undef), !dbg !2200
  ret double %80, !dbg !2201

switch.next40:                                    ; preds = %switch.next34
    #dbg_value(double %x, !2061, !DIExpression(), !2202)
  %81 = call i1 @math.IsInf(double %x, i64 0, ptr undef), !dbg !2203
  br i1 %81, label %switch.body41, label %switch.next47, !dbg !2073

switch.body41:                                    ; preds = %switch.next40
    #dbg_value(double %x, !2061, !DIExpression(), !2204)
  %82 = call i1 @math.IsInf(double %x, i64 -1, ptr undef), !dbg !2205
  br i1 %82, label %if.then42, label %if.done43, !dbg !2073

if.then42:                                        ; preds = %switch.body41
    #dbg_value(double %x, !2061, !DIExpression(), !2206)
  %83 = fdiv double 1.000000e+00, %x, !dbg !2207
    #dbg_value(double %y, !2062, !DIExpression(), !2208)
  %84 = fneg double %y, !dbg !2209
  %85 = call double @math.Pow(double %83, double %84, ptr undef), !dbg !2210
  ret double %85, !dbg !2211

if.done43:                                        ; preds = %switch.body41
    #dbg_value(double %y, !2062, !DIExpression(), !2212)
  %86 = fcmp olt double %y, 0.000000e+00, !dbg !2213
  br i1 %86, label %switch.body44, label %switch.next45, !dbg !2073

switch.body44:                                    ; preds = %if.done43
  ret double 0.000000e+00, !dbg !2214

switch.next45:                                    ; preds = %if.done43
    #dbg_value(double %y, !2062, !DIExpression(), !2215)
  %87 = fcmp ogt double %y, 0.000000e+00, !dbg !2216
  br i1 %87, label %switch.body46, label %switch.done, !dbg !2073

switch.body46:                                    ; preds = %switch.next45
  %88 = call double @math.Inf(i64 1, ptr undef), !dbg !2217
  ret double %88, !dbg !2218

switch.next47:                                    ; preds = %switch.next40
    #dbg_value(double %y, !2062, !DIExpression(), !2219)
  %89 = fcmp oeq double %y, 5.000000e-01, !dbg !2220
  br i1 %89, label %switch.body48, label %switch.next49, !dbg !2073

switch.body48:                                    ; preds = %switch.next47
    #dbg_value(double %x, !2061, !DIExpression(), !2221)
  %90 = call double @math.Sqrt(double %x, ptr undef), !dbg !2222
  ret double %90, !dbg !2223

switch.next49:                                    ; preds = %switch.next47
    #dbg_value(double %y, !2062, !DIExpression(), !2224)
  %91 = fcmp oeq double %y, -5.000000e-01, !dbg !2225
  br i1 %91, label %switch.body50, label %switch.done, !dbg !2073

switch.body50:                                    ; preds = %switch.next49
    #dbg_value(double %x, !2061, !DIExpression(), !2226)
  %92 = call double @math.Sqrt(double %x, ptr undef), !dbg !2227
  %93 = fdiv double 1.000000e+00, %92, !dbg !2228
  ret double %93, !dbg !2229

binop.rhs:                                        ; preds = %switch.next2
    #dbg_value(double %y, !2062, !DIExpression(), !2230)
  %94 = call i1 @math.IsNaN(double %y, ptr undef), !dbg !2231
  br label %binop.done3, !dbg !2073

binop.rhs51:                                      ; preds = %entry
    #dbg_value(double %x, !2061, !DIExpression(), !2232)
  %95 = fcmp oeq double %x, 1.000000e+00, !dbg !2233
  br label %binop.done, !dbg !2073
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @math.isOddInt(double %x, ptr %context) unnamed_addr #1 !dbg !2234 {
entry:
    #dbg_value(double %x, !2236, !DIExpression(), !2239)
    #dbg_value(double %x, !2236, !DIExpression(), !2240)
  %0 = call double @math.Abs(double %x, ptr undef), !dbg !2241
  %1 = fcmp oge double %0, 0x4340000000000000, !dbg !2242
  br i1 %1, label %if.then, label %if.done, !dbg !2243

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !2244

if.done:                                          ; preds = %entry
    #dbg_value(double %x, !2236, !DIExpression(), !2245)
  %2 = call { double, double } @math.Modf(double %x, ptr undef), !dbg !2246
  %3 = extractvalue { double, double } %2, 0, !dbg !2246
    #dbg_value(double %3, !2237, !DIExpression(), !2247)
  %4 = extractvalue { double, double } %2, 1, !dbg !2246
    #dbg_value(double %4, !2238, !DIExpression(), !2248)
    #dbg_value(double %4, !2238, !DIExpression(), !2249)
  %5 = fcmp oeq double %4, 0.000000e+00, !dbg !2250
  br i1 %5, label %binop.rhs, label %binop.done, !dbg !2243

binop.rhs:                                        ; preds = %if.done
    #dbg_value(double %3, !2237, !DIExpression(), !2251)
  %abovemin = fcmp ole double 0xC3E0000000000000, %3, !dbg !2252
  %belowmax = fcmp ole double %3, 0x43DFFFFFFFFFFFFE, !dbg !2252
  %inbounds = and i1 %abovemin, %belowmax, !dbg !2252
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !2252
  %isnan = fcmp uno double %3, %3, !dbg !2252
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !2252
  %normal = fptosi double %3 to i64, !dbg !2252
  %6 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !2252
  %7 = and i64 %6, 1, !dbg !2253
  %8 = icmp eq i64 %7, 1, !dbg !2254
  br label %binop.done, !dbg !2243

binop.done:                                       ; preds = %binop.rhs, %if.done
  %9 = phi i1 [ false, %if.done ], [ %8, %binop.rhs ], !dbg !2255
  ret i1 %9, !dbg !2256
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.SwapUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %new, ptr %context) unnamed_addr #1 !dbg !2257 {
entry:
    #dbg_value(ptr %addr, !2263, !DIExpression(), !2265)
    #dbg_value(i32 %new, !2264, !DIExpression(), !2265)
  %0 = atomicrmw xchg ptr %addr, i32 %new syncscope("singlethread") seq_cst, align 4, !dbg !2265
  ret i32 %0, !dbg !2265
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"sync/atomic.CompareAndSwapUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %old, i32 %new, ptr %context) unnamed_addr #1 !dbg !2266 {
entry:
    #dbg_value(ptr %addr, !2270, !DIExpression(), !2273)
    #dbg_value(i32 %old, !2271, !DIExpression(), !2273)
    #dbg_value(i32 %new, !2272, !DIExpression(), !2273)
  %0 = cmpxchg ptr %addr, i32 %old, i32 %new syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2273
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !2273
  ret i1 %1, !dbg !2273
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.AddUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %delta, ptr %context) unnamed_addr #1 !dbg !2274 {
entry:
    #dbg_value(ptr %addr, !2276, !DIExpression(), !2278)
    #dbg_value(i32 %delta, !2277, !DIExpression(), !2278)
  %0 = atomicrmw add ptr %addr, i32 %delta syncscope("singlethread") seq_cst, align 4, !dbg !2278
  %1 = add i32 %0, %delta, !dbg !2278
  ret i32 %1, !dbg !2278
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.LoadUint32"(ptr nocapture dereferenceable_or_null(4) %addr, ptr %context) unnamed_addr #1 !dbg !2279 {
entry:
    #dbg_value(ptr %addr, !2283, !DIExpression(), !2284)
  %0 = load atomic i32, ptr %addr seq_cst, align 4, !dbg !2284
  ret i32 %0, !dbg !2284
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"sync/atomic.StoreUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %val, ptr %context) unnamed_addr #1 !dbg !2285 {
entry:
    #dbg_value(ptr %addr, !2287, !DIExpression(), !2289)
    #dbg_value(i32 %val, !2288, !DIExpression(), !2289)
  store atomic i32 %val, ptr %addr seq_cst, align 4, !dbg !2289
  ret void, !dbg !2289
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Add"(ptr dereferenceable_or_null(4) %x, i32 %delta, ptr %context) #1 !dbg !2290 {
entry:
    #dbg_value(ptr %x, !2296, !DIExpression(), !2298)
    #dbg_value(i32 %delta, !2297, !DIExpression(), !2298)
    #dbg_value(ptr %x, !2296, !DIExpression(), !2299)
  %0 = icmp eq ptr %x, null, !dbg !2300
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2300

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !2300
    #dbg_value(i32 %delta, !2297, !DIExpression(), !2301)
  %2 = call i32 @"sync/atomic.AddUint32"(ptr %1, i32 %delta, ptr undef), !dbg !2302
  ret i32 %2, !dbg !2303

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2300
  unreachable, !dbg !2300
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr dereferenceable_or_null(4) %x, i32 %old, i32 %new, ptr %context) #1 !dbg !2304 {
entry:
    #dbg_value(ptr %x, !2308, !DIExpression(), !2311)
    #dbg_value(i32 %old, !2309, !DIExpression(), !2311)
    #dbg_value(i32 %new, !2310, !DIExpression(), !2311)
    #dbg_value(ptr %x, !2308, !DIExpression(), !2312)
  %0 = icmp eq ptr %x, null, !dbg !2313
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2313

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !2313
    #dbg_value(i32 %old, !2309, !DIExpression(), !2314)
    #dbg_value(i32 %new, !2310, !DIExpression(), !2315)
  %2 = call i1 @"sync/atomic.CompareAndSwapUint32"(ptr %1, i32 %old, i32 %new, ptr undef), !dbg !2316
  ret i1 %2, !dbg !2317

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2313
  unreachable, !dbg !2313
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Load"(ptr dereferenceable_or_null(4) %x, ptr %context) #1 !dbg !2318 {
entry:
    #dbg_value(ptr %x, !2322, !DIExpression(), !2323)
    #dbg_value(ptr %x, !2322, !DIExpression(), !2324)
  %0 = icmp eq ptr %x, null, !dbg !2325
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2325

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !2325
  %2 = call i32 @"sync/atomic.LoadUint32"(ptr %1, ptr undef), !dbg !2326
  ret i32 %2, !dbg !2327

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2325
  unreachable, !dbg !2325
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*sync/atomic.Uint32).Store"(ptr dereferenceable_or_null(4) %x, i32 %val, ptr %context) #1 !dbg !2328 {
entry:
    #dbg_value(ptr %x, !2330, !DIExpression(), !2332)
    #dbg_value(i32 %val, !2331, !DIExpression(), !2332)
    #dbg_value(ptr %x, !2330, !DIExpression(), !2333)
  %0 = icmp eq ptr %x, null, !dbg !2334
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2334

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !2334
    #dbg_value(i32 %val, !2331, !DIExpression(), !2335)
  call void @"sync/atomic.StoreUint32"(ptr %1, i32 %val, ptr undef), !dbg !2336
  ret void, !dbg !2337

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2334
  unreachable, !dbg !2334
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Swap"(ptr dereferenceable_or_null(4) %x, i32 %new, ptr %context) #1 !dbg !2338 {
entry:
    #dbg_value(ptr %x, !2340, !DIExpression(), !2342)
    #dbg_value(i32 %new, !2341, !DIExpression(), !2342)
    #dbg_value(ptr %x, !2340, !DIExpression(), !2343)
  %0 = icmp eq ptr %x, null, !dbg !2344
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2344

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !2344
    #dbg_value(i32 %new, !2341, !DIExpression(), !2345)
  %2 = call i32 @"sync/atomic.SwapUint32"(ptr %1, i32 %new, ptr undef), !dbg !2346
  ret i32 %2, !dbg !2347

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2344
  unreachable, !dbg !2344
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*internal/futex.Futex).Wait"(ptr dereferenceable_or_null(4) %f, i32 %cmp, ptr %context) #1 !dbg !2348 {
entry:
    #dbg_value(ptr %f, !2354, !DIExpression(), !2356)
    #dbg_value(i32 %cmp, !2355, !DIExpression(), !2356)
    #dbg_value(ptr %f, !2354, !DIExpression(), !2357)
  %0 = icmp eq ptr %f, null, !dbg !2358
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2358

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !2358
    #dbg_value(i32 %cmp, !2355, !DIExpression(), !2359)
  call void @tinygo_futex_wait(ptr %1, i32 %cmp), !dbg !2360
  ret i1 false, !dbg !2361

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2358
  unreachable, !dbg !2358
}

declare void @tinygo_futex_wait(ptr nocapture dereferenceable_or_null(4), i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/futex.Futex).Wake"(ptr dereferenceable_or_null(4) %f, ptr %context) #1 !dbg !2362 {
entry:
    #dbg_value(ptr %f, !2366, !DIExpression(), !2367)
    #dbg_value(ptr %f, !2366, !DIExpression(), !2368)
  %0 = icmp eq ptr %f, null, !dbg !2369
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2369

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !2369
  call void @tinygo_futex_wake(ptr %1), !dbg !2370
  ret void, !dbg !2371

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2369
  unreachable, !dbg !2369
}

declare void @tinygo_futex_wake(ptr nocapture dereferenceable_or_null(4)) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/futex.Futex).WakeAll"(ptr dereferenceable_or_null(4) %f, ptr %context) #1 !dbg !2372 {
entry:
    #dbg_value(ptr %f, !2374, !DIExpression(), !2375)
    #dbg_value(ptr %f, !2374, !DIExpression(), !2376)
  %0 = icmp eq ptr %f, null, !dbg !2377
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2377

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !2377
  call void @tinygo_futex_wake_all(ptr %1), !dbg !2378
  ret void, !dbg !2379

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2377
  unreachable, !dbg !2377
}

declare void @tinygo_futex_wake_all(ptr nocapture dereferenceable_or_null(4)) #2

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(internal/gclayout.Layout).AsPtr"(i64 %l, ptr %context) #1 !dbg !2380 {
entry:
    #dbg_value(i64 %l, !2386, !DIExpression(), !2387)
    #dbg_value(i64 %l, !2386, !DIExpression(), !2388)
  %0 = inttoptr i64 %l to ptr, !dbg !2389
  ret ptr %0, !dbg !2390
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/itoa.Itoa"(i64 %val, ptr %context) #1 !dbg !2391 {
entry:
    #dbg_value(i64 %val, !2393, !DIExpression(), !2394)
    #dbg_value(i64 %val, !2393, !DIExpression(), !2395)
  %0 = icmp slt i64 %val, 0, !dbg !2396
  br i1 %0, label %if.then, label %if.done, !dbg !2397

if.then:                                          ; preds = %entry
    #dbg_value(i64 %val, !2393, !DIExpression(), !2398)
  %1 = sub i64 0, %val, !dbg !2399
  %2 = call %runtime._string @"internal/itoa.Uitoa"(i64 %1, ptr undef), !dbg !2400
  %3 = extractvalue %runtime._string %2, 0, !dbg !2401
  %4 = extractvalue %runtime._string %2, 1, !dbg !2401
  %5 = call %runtime._string @runtime.stringConcat(ptr @"internal/itoa$string", i64 1, ptr %3, i64 %4, ptr undef), !dbg !2401
  ret %runtime._string %5, !dbg !2402

if.done:                                          ; preds = %entry
    #dbg_value(i64 %val, !2393, !DIExpression(), !2403)
  %6 = call %runtime._string @"internal/itoa.Uitoa"(i64 %val, ptr undef), !dbg !2404
  ret %runtime._string %6, !dbg !2405
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/itoa.Uitoa"(i64 %val, ptr %context) unnamed_addr #1 !dbg !2406 {
entry:
    #dbg_value(i64 %val, !2408, !DIExpression(), !2411)
    #dbg_value(i64 %val, !2408, !DIExpression(), !2412)
  %0 = icmp eq i64 %val, 0, !dbg !2413
  br i1 %0, label %if.then, label %if.done, !dbg !2414

if.then:                                          ; preds = %entry
  ret %runtime._string { ptr @"internal/itoa$string.1", i64 1 }, !dbg !2415

if.done:                                          ; preds = %entry
  %buf = call align 1 ptr @runtime.alloc(i64 20, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2416
    #dbg_value(i64 19, !2409, !DIExpression(), !2417)
  br label %for.loop, !dbg !2414

for.loop:                                         ; preds = %lookup.next, %if.done
  %1 = phi i64 [ %val, %if.done ], [ %4, %lookup.next ], !dbg !2418
  %2 = phi i64 [ 19, %if.done ], [ %11, %lookup.next ], !dbg !2417
    #dbg_value(i64 %1, !2408, !DIExpression(), !2419)
  %3 = icmp uge i64 %1, 10, !dbg !2420
  br i1 %3, label %for.body, label %for.done, !dbg !2414

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !2408, !DIExpression(), !2421)
  %4 = udiv i64 %1, 10, !dbg !2422
    #dbg_value(i64 %4, !2410, !DIExpression(), !2423)
    #dbg_value(i64 %2, !2409, !DIExpression(), !2424)
    #dbg_value(i64 %1, !2408, !DIExpression(), !2425)
  %5 = add i64 48, %1, !dbg !2426
    #dbg_value(i64 %4, !2410, !DIExpression(), !2427)
  %6 = mul i64 %4, 10, !dbg !2428
  %7 = sub i64 %5, %6, !dbg !2429
  %8 = trunc i64 %7 to i8, !dbg !2430
  %9 = icmp uge i64 %2, 20, !dbg !2431
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !2431

lookup.next:                                      ; preds = %for.body
  %10 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !2431
  store i8 %8, ptr %10, align 1, !dbg !2431
  %11 = sub i64 %2, 1, !dbg !2432
    #dbg_value(i64 %11, !2409, !DIExpression(), !2432)
    #dbg_value(i64 %4, !2410, !DIExpression(), !2433)
    #dbg_value(i64 %4, !2408, !DIExpression(), !2434)
  br label %for.loop, !dbg !2414

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !2409, !DIExpression(), !2435)
    #dbg_value(i64 %1, !2408, !DIExpression(), !2436)
  %12 = add i64 48, %1, !dbg !2437
  %13 = trunc i64 %12 to i8, !dbg !2438
  %14 = icmp uge i64 %2, 20, !dbg !2439
  br i1 %14, label %lookup.throw1, label %lookup.next2, !dbg !2439

lookup.next2:                                     ; preds = %for.done
  %15 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !2439
  store i8 %13, ptr %15, align 1, !dbg !2439
    #dbg_value(i64 %2, !2409, !DIExpression(), !2440)
  %slice.lowhigh = icmp ugt i64 %2, 20, !dbg !2441
  %slice.lowmax = or i1 %slice.lowhigh, false, !dbg !2441
  %slice.lowcap = or i1 %slice.lowmax, false, !dbg !2441
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2441

slice.next:                                       ; preds = %lookup.next2
  %slice.len = sub i64 20, %2, !dbg !2441
  %slice.ptr = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !2441
  %slice.cap = sub i64 20, %2, !dbg !2441
  %16 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !2441
  %17 = insertvalue { ptr, i64, i64 } %16, i64 %slice.len, 1, !dbg !2441
  %18 = insertvalue { ptr, i64, i64 } %17, i64 %slice.cap, 2, !dbg !2441
  %19 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2442
  %20 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2442
  %21 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2442
  %22 = call %runtime._string @runtime.stringFromBytes(ptr %19, i64 %20, i64 %21, ptr undef), !dbg !2442
  ret %runtime._string %22, !dbg !2443

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2431
  unreachable, !dbg !2431

lookup.throw1:                                    ; preds = %for.done
  call void @runtime.lookupPanic(ptr undef), !dbg !2439
  unreachable, !dbg !2439

slice.throw:                                      ; preds = %lookup.next2
  call void @runtime.slicePanic(ptr undef), !dbg !2441
  unreachable, !dbg !2441
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"unicode/utf8.DecodeRuneInString"(ptr readonly %s.data, i64 %s.len, ptr %context) #1 !dbg !2444 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !2452
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !2452
    #dbg_value(ptr %s.data, !2448, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2452)
    #dbg_value(i64 %s.len, !2448, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2452)
    #dbg_value(%runtime._string %1, !2448, !DIExpression(), !2453)
  %2 = extractvalue %runtime._string %1, 0, !dbg !2454
  %3 = extractvalue %runtime._string %1, 1, !dbg !2454
  %4 = call i1 @runtime.stringEqual(ptr %2, i64 %3, ptr null, i64 0, ptr undef), !dbg !2454
  %5 = xor i1 %4, true, !dbg !2454
  br i1 %5, label %cond.true, label %if.else, !dbg !2455

cond.true:                                        ; preds = %entry
    #dbg_value(%runtime._string %1, !2448, !DIExpression(), !2456)
  %len = extractvalue %runtime._string %1, 1, !dbg !2457
  %6 = icmp uge i64 0, %len, !dbg !2457
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !2457

lookup.next:                                      ; preds = %cond.true
  %7 = extractvalue %runtime._string %1, 0, !dbg !2457
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !2457
  %9 = load i8, ptr %8, align 1, !dbg !2457
  %10 = icmp ult i8 %9, -128, !dbg !2458
  br i1 %10, label %if.then, label %if.else, !dbg !2455

if.then:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2448, !DIExpression(), !2459)
  %len1 = extractvalue %runtime._string %1, 1, !dbg !2460
  %11 = icmp uge i64 0, %len1, !dbg !2460
  br i1 %11, label %lookup.throw2, label %lookup.next3, !dbg !2460

lookup.next3:                                     ; preds = %if.then
  %12 = extractvalue %runtime._string %1, 0, !dbg !2460
  %13 = getelementptr inbounds i8, ptr %12, i64 0, !dbg !2460
  %14 = load i8, ptr %13, align 1, !dbg !2460
  %15 = zext i8 %14 to i32, !dbg !2461
  %16 = insertvalue { i32, i64 } zeroinitializer, i32 %15, 0, !dbg !2462
  %17 = insertvalue { i32, i64 } %16, i64 1, 1, !dbg !2462
  ret { i32, i64 } %17, !dbg !2462

if.else:                                          ; preds = %lookup.next, %entry
    #dbg_value(%runtime._string %1, !2448, !DIExpression(), !2463)
  %18 = extractvalue %runtime._string %1, 0, !dbg !2464
  %19 = extractvalue %runtime._string %1, 1, !dbg !2464
  %20 = call { i32, i64 } @"unicode/utf8.decodeRuneInStringSlow"(ptr %18, i64 %19, ptr undef), !dbg !2464
  %21 = extractvalue { i32, i64 } %20, 0, !dbg !2464
    #dbg_value(i32 %21, !2449, !DIExpression(), !2465)
  %22 = extractvalue { i32, i64 } %20, 1, !dbg !2464
    #dbg_value(i64 %22, !2451, !DIExpression(), !2466)
  %23 = insertvalue { i32, i64 } zeroinitializer, i32 %21, 0, !dbg !2467
  %24 = insertvalue { i32, i64 } %23, i64 %22, 1, !dbg !2467
  ret { i32, i64 } %24, !dbg !2467

lookup.throw:                                     ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !2457
  unreachable, !dbg !2457

lookup.throw2:                                    ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2460
  unreachable, !dbg !2460
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"unicode/utf8.decodeRuneInStringSlow"(ptr readonly %s.data, i64 %s.len, ptr %context) unnamed_addr #1 !dbg !2468 {
entry:
  %accept = alloca %"unicode/utf8.acceptRange", align 8, !dbg !2480
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !2480
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !2480
    #dbg_value(ptr %s.data, !2470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2480)
    #dbg_value(i64 %s.len, !2470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2480)
    #dbg_value(%runtime._string %1, !2470, !DIExpression(), !2481)
  %len = extractvalue %runtime._string %1, 1, !dbg !2482
    #dbg_value(i64 %len, !2471, !DIExpression(), !2483)
    #dbg_value(i64 %len, !2471, !DIExpression(), !2484)
  %2 = icmp slt i64 %len, 1, !dbg !2485
  br i1 %2, label %if.then, label %if.done, !dbg !2486

if.then:                                          ; preds = %entry
  ret { i32, i64 } { i32 65533, i64 0 }, !dbg !2487

if.done:                                          ; preds = %entry
    #dbg_value(%runtime._string %1, !2470, !DIExpression(), !2488)
  %len17 = extractvalue %runtime._string %1, 1, !dbg !2489
  %3 = icmp uge i64 0, %len17, !dbg !2489
  br i1 %3, label %lookup.throw, label %lookup.next, !dbg !2489

lookup.next:                                      ; preds = %if.done
  %4 = extractvalue %runtime._string %1, 0, !dbg !2489
  %5 = getelementptr inbounds i8, ptr %4, i64 0, !dbg !2489
  %6 = load i8, ptr %5, align 1, !dbg !2489
    #dbg_value(i8 %6, !2472, !DIExpression(), !2490)
    #dbg_value(i8 %6, !2472, !DIExpression(), !2491)
  %7 = zext i8 %6 to i64, !dbg !2492
  %8 = icmp uge i64 %7, 256, !dbg !2492
  br i1 %8, label %lookup.throw18, label %lookup.next19, !dbg !2492

lookup.next19:                                    ; preds = %lookup.next
  %9 = getelementptr inbounds [256 x i8], ptr @"unicode/utf8.first", i32 0, i64 %7, !dbg !2492
  %10 = load i8, ptr %9, align 1, !dbg !2492
    #dbg_value(i8 %10, !2473, !DIExpression(), !2493)
    #dbg_value(i8 %10, !2473, !DIExpression(), !2494)
  %11 = icmp uge i8 %10, -16, !dbg !2495
  br i1 %11, label %if.then1, label %if.done2, !dbg !2486

if.then1:                                         ; preds = %lookup.next19
    #dbg_value(i8 %10, !2473, !DIExpression(), !2496)
  %12 = zext i8 %10 to i32, !dbg !2497
  %13 = shl i32 %12, 31, !dbg !2498
  %shift.result = select i1 false, i32 0, i32 %13, !dbg !2498
  %14 = ashr i32 %shift.result, 31, !dbg !2499
    #dbg_value(i32 %14, !2474, !DIExpression(), !2500)
    #dbg_value(%runtime._string %1, !2470, !DIExpression(), !2501)
  %len20 = extractvalue %runtime._string %1, 1, !dbg !2502
  %15 = icmp uge i64 0, %len20, !dbg !2502
  br i1 %15, label %lookup.throw21, label %lookup.next22, !dbg !2502

lookup.next22:                                    ; preds = %if.then1
  %16 = extractvalue %runtime._string %1, 0, !dbg !2502
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !2502
  %18 = load i8, ptr %17, align 1, !dbg !2502
  %19 = zext i8 %18 to i32, !dbg !2503
    #dbg_value(i32 %14, !2474, !DIExpression(), !2504)
  %20 = xor i32 %14, -1, !dbg !2505
  %21 = and i32 %19, %20, !dbg !2505
    #dbg_value(i32 %14, !2474, !DIExpression(), !2506)
  %22 = and i32 65533, %14, !dbg !2507
  %23 = or i32 %21, %22, !dbg !2508
  %24 = insertvalue { i32, i64 } zeroinitializer, i32 %23, 0, !dbg !2509
  %25 = insertvalue { i32, i64 } %24, i64 1, 1, !dbg !2509
  ret { i32, i64 } %25, !dbg !2509

if.done2:                                         ; preds = %lookup.next19
    #dbg_value(i8 %10, !2473, !DIExpression(), !2510)
  %26 = and i8 %10, 7, !dbg !2511
  %27 = zext i8 %26 to i64, !dbg !2512
    #dbg_value(i64 %27, !2475, !DIExpression(), !2513)
  store %"unicode/utf8.acceptRange" zeroinitializer, ptr %accept, align 1, !dbg !2480
    #dbg_value(i8 %10, !2473, !DIExpression(), !2514)
  %28 = lshr i8 %10, 4, !dbg !2515
  %shift.result23 = select i1 false, i8 0, i8 %28, !dbg !2515
  %29 = zext i8 %shift.result23 to i64, !dbg !2516
  %30 = icmp uge i64 %29, 16, !dbg !2516
  br i1 %30, label %lookup.throw24, label %lookup.next25, !dbg !2516

lookup.next25:                                    ; preds = %if.done2
  %31 = getelementptr inbounds [16 x %"unicode/utf8.acceptRange"], ptr @"unicode/utf8.acceptRanges", i32 0, i64 %29, !dbg !2516
  %32 = load %"unicode/utf8.acceptRange", ptr %31, align 1, !dbg !2516
  store %"unicode/utf8.acceptRange" %32, ptr %accept, align 1, !dbg !2517
    #dbg_value(%"unicode/utf8.acceptRange" %32, !2476, !DIExpression(), !2517)
    #dbg_value(i64 %len, !2471, !DIExpression(), !2518)
    #dbg_value(i64 %27, !2475, !DIExpression(), !2519)
  %33 = icmp slt i64 %len, %27, !dbg !2520
  br i1 %33, label %if.then3, label %if.done4, !dbg !2486

if.then3:                                         ; preds = %lookup.next25
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2521

if.done4:                                         ; preds = %lookup.next25
    #dbg_value(%runtime._string %1, !2470, !DIExpression(), !2522)
  %len26 = extractvalue %runtime._string %1, 1, !dbg !2523
  %34 = icmp uge i64 1, %len26, !dbg !2523
  br i1 %34, label %lookup.throw27, label %lookup.next28, !dbg !2523

lookup.next28:                                    ; preds = %if.done4
  %35 = extractvalue %runtime._string %1, 0, !dbg !2523
  %36 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !2523
  %37 = load i8, ptr %36, align 1, !dbg !2523
    #dbg_value(i8 %37, !2477, !DIExpression(), !2524)
    #dbg_value(i8 %37, !2477, !DIExpression(), !2525)
  %38 = getelementptr inbounds %"unicode/utf8.acceptRange", ptr %accept, i32 0, i32 0, !dbg !2526
  %39 = icmp eq ptr %38, null, !dbg !2526
  br i1 %39, label %deref.throw, label %deref.next, !dbg !2526

deref.next:                                       ; preds = %lookup.next28
  %40 = load i8, ptr %38, align 1, !dbg !2526
  %41 = icmp ult i8 %37, %40, !dbg !2527
  br i1 %41, label %if.then5, label %cond.false, !dbg !2486

if.then5:                                         ; preds = %deref.next30, %deref.next
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2528

cond.false:                                       ; preds = %deref.next
  %42 = getelementptr inbounds %"unicode/utf8.acceptRange", ptr %accept, i32 0, i32 1, !dbg !2529
  %43 = icmp eq ptr %42, null, !dbg !2529
  br i1 %43, label %deref.throw29, label %deref.next30, !dbg !2529

deref.next30:                                     ; preds = %cond.false
  %44 = load i8, ptr %42, align 1, !dbg !2529
    #dbg_value(i8 %37, !2477, !DIExpression(), !2530)
  %45 = icmp ult i8 %44, %37, !dbg !2531
  br i1 %45, label %if.then5, label %if.done6, !dbg !2486

if.done6:                                         ; preds = %deref.next30
    #dbg_value(i64 %27, !2475, !DIExpression(), !2532)
  %46 = icmp sle i64 %27, 2, !dbg !2533
  br i1 %46, label %if.then7, label %if.done8, !dbg !2486

if.then7:                                         ; preds = %if.done6
    #dbg_value(i8 %6, !2472, !DIExpression(), !2534)
  %47 = and i8 %6, 31, !dbg !2535
  %48 = zext i8 %47 to i32, !dbg !2536
  %49 = shl i32 %48, 6, !dbg !2537
  %shift.result31 = select i1 false, i32 0, i32 %49, !dbg !2537
    #dbg_value(i8 %37, !2477, !DIExpression(), !2538)
  %50 = and i8 %37, 63, !dbg !2539
  %51 = zext i8 %50 to i32, !dbg !2540
  %52 = or i32 %shift.result31, %51, !dbg !2541
  %53 = insertvalue { i32, i64 } zeroinitializer, i32 %52, 0, !dbg !2542
  %54 = insertvalue { i32, i64 } %53, i64 2, 1, !dbg !2542
  ret { i32, i64 } %54, !dbg !2542

if.done8:                                         ; preds = %if.done6
    #dbg_value(%runtime._string %1, !2470, !DIExpression(), !2543)
  %len32 = extractvalue %runtime._string %1, 1, !dbg !2544
  %55 = icmp uge i64 2, %len32, !dbg !2544
  br i1 %55, label %lookup.throw33, label %lookup.next34, !dbg !2544

lookup.next34:                                    ; preds = %if.done8
  %56 = extractvalue %runtime._string %1, 0, !dbg !2544
  %57 = getelementptr inbounds i8, ptr %56, i64 2, !dbg !2544
  %58 = load i8, ptr %57, align 1, !dbg !2544
    #dbg_value(i8 %58, !2478, !DIExpression(), !2545)
    #dbg_value(i8 %58, !2478, !DIExpression(), !2546)
  %59 = icmp ult i8 %58, -128, !dbg !2547
  br i1 %59, label %if.then9, label %cond.false10, !dbg !2486

if.then9:                                         ; preds = %cond.false10, %lookup.next34
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2548

cond.false10:                                     ; preds = %lookup.next34
    #dbg_value(i8 %58, !2478, !DIExpression(), !2549)
  %60 = icmp ult i8 -65, %58, !dbg !2550
  br i1 %60, label %if.then9, label %if.done11, !dbg !2486

if.done11:                                        ; preds = %cond.false10
    #dbg_value(i64 %27, !2475, !DIExpression(), !2551)
  %61 = icmp sle i64 %27, 3, !dbg !2552
  br i1 %61, label %if.then12, label %if.done13, !dbg !2486

if.then12:                                        ; preds = %if.done11
    #dbg_value(i8 %6, !2472, !DIExpression(), !2553)
  %62 = and i8 %6, 15, !dbg !2554
  %63 = zext i8 %62 to i32, !dbg !2555
  %64 = shl i32 %63, 12, !dbg !2556
  %shift.result35 = select i1 false, i32 0, i32 %64, !dbg !2556
    #dbg_value(i8 %37, !2477, !DIExpression(), !2557)
  %65 = and i8 %37, 63, !dbg !2558
  %66 = zext i8 %65 to i32, !dbg !2559
  %67 = shl i32 %66, 6, !dbg !2560
  %shift.result36 = select i1 false, i32 0, i32 %67, !dbg !2560
  %68 = or i32 %shift.result35, %shift.result36, !dbg !2561
    #dbg_value(i8 %58, !2478, !DIExpression(), !2562)
  %69 = and i8 %58, 63, !dbg !2563
  %70 = zext i8 %69 to i32, !dbg !2564
  %71 = or i32 %68, %70, !dbg !2565
  %72 = insertvalue { i32, i64 } zeroinitializer, i32 %71, 0, !dbg !2566
  %73 = insertvalue { i32, i64 } %72, i64 3, 1, !dbg !2566
  ret { i32, i64 } %73, !dbg !2566

if.done13:                                        ; preds = %if.done11
    #dbg_value(%runtime._string %1, !2470, !DIExpression(), !2567)
  %len37 = extractvalue %runtime._string %1, 1, !dbg !2568
  %74 = icmp uge i64 3, %len37, !dbg !2568
  br i1 %74, label %lookup.throw38, label %lookup.next39, !dbg !2568

lookup.next39:                                    ; preds = %if.done13
  %75 = extractvalue %runtime._string %1, 0, !dbg !2568
  %76 = getelementptr inbounds i8, ptr %75, i64 3, !dbg !2568
  %77 = load i8, ptr %76, align 1, !dbg !2568
    #dbg_value(i8 %77, !2479, !DIExpression(), !2569)
    #dbg_value(i8 %77, !2479, !DIExpression(), !2570)
  %78 = icmp ult i8 %77, -128, !dbg !2571
  br i1 %78, label %if.then14, label %cond.false15, !dbg !2486

if.then14:                                        ; preds = %cond.false15, %lookup.next39
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2572

cond.false15:                                     ; preds = %lookup.next39
    #dbg_value(i8 %77, !2479, !DIExpression(), !2573)
  %79 = icmp ult i8 -65, %77, !dbg !2574
  br i1 %79, label %if.then14, label %if.done16, !dbg !2486

if.done16:                                        ; preds = %cond.false15
    #dbg_value(i8 %6, !2472, !DIExpression(), !2575)
  %80 = and i8 %6, 7, !dbg !2576
  %81 = zext i8 %80 to i32, !dbg !2577
  %82 = shl i32 %81, 18, !dbg !2578
  %shift.result40 = select i1 false, i32 0, i32 %82, !dbg !2578
    #dbg_value(i8 %37, !2477, !DIExpression(), !2579)
  %83 = and i8 %37, 63, !dbg !2580
  %84 = zext i8 %83 to i32, !dbg !2581
  %85 = shl i32 %84, 12, !dbg !2582
  %shift.result41 = select i1 false, i32 0, i32 %85, !dbg !2582
  %86 = or i32 %shift.result40, %shift.result41, !dbg !2583
    #dbg_value(i8 %58, !2478, !DIExpression(), !2584)
  %87 = and i8 %58, 63, !dbg !2585
  %88 = zext i8 %87 to i32, !dbg !2586
  %89 = shl i32 %88, 6, !dbg !2587
  %shift.result42 = select i1 false, i32 0, i32 %89, !dbg !2587
  %90 = or i32 %86, %shift.result42, !dbg !2588
    #dbg_value(i8 %77, !2479, !DIExpression(), !2589)
  %91 = and i8 %77, 63, !dbg !2590
  %92 = zext i8 %91 to i32, !dbg !2591
  %93 = or i32 %90, %92, !dbg !2592
  %94 = insertvalue { i32, i64 } zeroinitializer, i32 %93, 0, !dbg !2593
  %95 = insertvalue { i32, i64 } %94, i64 4, 1, !dbg !2593
  ret { i32, i64 } %95, !dbg !2593

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !2489
  unreachable, !dbg !2489

lookup.throw18:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !2492
  unreachable, !dbg !2492

lookup.throw21:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !2502
  unreachable, !dbg !2502

lookup.throw24:                                   ; preds = %if.done2
  call void @runtime.lookupPanic(ptr undef), !dbg !2516
  unreachable, !dbg !2516

lookup.throw27:                                   ; preds = %if.done4
  call void @runtime.lookupPanic(ptr undef), !dbg !2523
  unreachable, !dbg !2523

deref.throw:                                      ; preds = %lookup.next28
  call void @runtime.nilPanic(ptr undef), !dbg !2526
  unreachable, !dbg !2526

deref.throw29:                                    ; preds = %cond.false
  call void @runtime.nilPanic(ptr undef), !dbg !2529
  unreachable, !dbg !2529

lookup.throw33:                                   ; preds = %if.done8
  call void @runtime.lookupPanic(ptr undef), !dbg !2544
  unreachable, !dbg !2544

lookup.throw38:                                   ; preds = %if.done13
  call void @runtime.lookupPanic(ptr undef), !dbg !2568
  unreachable, !dbg !2568
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"unicode/utf8.EncodeRune"(ptr %p.data, i64 %p.len, i64 %p.cap, i32 %r, ptr %context) #1 !dbg !2594 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !2604
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !2604
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !2604
    #dbg_value(ptr %p.data, !2602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2604)
    #dbg_value(i64 %p.len, !2602, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2604)
    #dbg_value(i64 %p.cap, !2602, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2604)
    #dbg_value(i32 %r, !2603, !DIExpression(), !2604)
    #dbg_value(i32 %r, !2603, !DIExpression(), !2605)
  %3 = icmp ule i32 %r, 127, !dbg !2606
  br i1 %3, label %if.then, label %if.done, !dbg !2607

if.then:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2602, !DIExpression(), !2608)
    #dbg_value(i32 %r, !2603, !DIExpression(), !2609)
  %4 = trunc i32 %r to i8, !dbg !2610
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2611
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2611
  %5 = icmp uge i64 0, %indexaddr.len, !dbg !2611
  br i1 %5, label %lookup.throw, label %lookup.next, !dbg !2611

lookup.next:                                      ; preds = %if.then
  %6 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 0, !dbg !2611
  store i8 %4, ptr %6, align 1, !dbg !2611
  ret i64 1, !dbg !2612

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2602, !DIExpression(), !2613)
    #dbg_value(i32 %r, !2603, !DIExpression(), !2614)
  %7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2615
  %8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2615
  %9 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2615
  %10 = call i64 @"unicode/utf8.encodeRuneNonASCII"(ptr %7, i64 %8, i64 %9, i32 %r, ptr undef), !dbg !2615
  ret i64 %10, !dbg !2616

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2611
  unreachable, !dbg !2611
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"unicode/utf8.encodeRuneNonASCII"(ptr %p.data, i64 %p.len, i64 %p.cap, i32 %r, ptr %context) unnamed_addr #1 !dbg !2617 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !2622
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !2622
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !2622
    #dbg_value(ptr %p.data, !2619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2622)
    #dbg_value(i64 %p.len, !2619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2622)
    #dbg_value(i64 %p.cap, !2619, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2622)
    #dbg_value(i32 %r, !2620, !DIExpression(), !2622)
    #dbg_value(i32 %r, !2620, !DIExpression(), !2623)
    #dbg_value(i32 %r, !2621, !DIExpression(), !2624)
    #dbg_value(i32 %r, !2621, !DIExpression(), !2625)
  %3 = icmp ule i32 %r, 2047, !dbg !2626
  br i1 %3, label %switch.body, label %switch.next, !dbg !2627

switch.body:                                      ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2619, !DIExpression(), !2628)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2629
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2629
  %4 = icmp uge i64 1, %indexaddr.len, !dbg !2629
  br i1 %4, label %lookup.throw, label %lookup.next, !dbg !2629

lookup.next:                                      ; preds = %switch.body
  %5 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 1, !dbg !2629
  %6 = load i8, ptr %5, align 1, !dbg !2629
    #dbg_value({ ptr, i64, i64 } %2, !2619, !DIExpression(), !2630)
    #dbg_value(i32 %r, !2620, !DIExpression(), !2631)
  %7 = ashr i32 %r, 6, !dbg !2632
  %8 = trunc i32 %7 to i8, !dbg !2633
  %9 = or i8 -64, %8, !dbg !2634
  %indexaddr.ptr8 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2635
  %indexaddr.len9 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2635
  %10 = icmp uge i64 0, %indexaddr.len9, !dbg !2635
  br i1 %10, label %lookup.throw10, label %lookup.next11, !dbg !2635

lookup.next11:                                    ; preds = %lookup.next
  %11 = getelementptr inbounds i8, ptr %indexaddr.ptr8, i64 0, !dbg !2635
  store i8 %9, ptr %11, align 1, !dbg !2635
    #dbg_value({ ptr, i64, i64 } %2, !2619, !DIExpression(), !2636)
    #dbg_value(i32 %r, !2620, !DIExpression(), !2637)
  %12 = trunc i32 %r to i8, !dbg !2638
  %13 = and i8 %12, 63, !dbg !2639
  %14 = or i8 -128, %13, !dbg !2640
  %indexaddr.ptr12 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2641
  %indexaddr.len13 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2641
  %15 = icmp uge i64 1, %indexaddr.len13, !dbg !2641
  br i1 %15, label %lookup.throw14, label %lookup.next15, !dbg !2641

lookup.next15:                                    ; preds = %lookup.next11
  %16 = getelementptr inbounds i8, ptr %indexaddr.ptr12, i64 1, !dbg !2641
  store i8 %14, ptr %16, align 1, !dbg !2641
  ret i64 2, !dbg !2642

switch.next:                                      ; preds = %entry
    #dbg_value(i32 %r, !2621, !DIExpression(), !2643)
  %17 = icmp ult i32 %r, 55296, !dbg !2644
  br i1 %17, label %switch.body1, label %switch.next2, !dbg !2627

switch.body1:                                     ; preds = %binop.done, %switch.next
    #dbg_value({ ptr, i64, i64 } %2, !2619, !DIExpression(), !2645)
  %indexaddr.ptr16 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2646
  %indexaddr.len17 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2646
  %18 = icmp uge i64 2, %indexaddr.len17, !dbg !2646
  br i1 %18, label %lookup.throw18, label %lookup.next19, !dbg !2646

lookup.next19:                                    ; preds = %switch.body1
  %19 = getelementptr inbounds i8, ptr %indexaddr.ptr16, i64 2, !dbg !2646
  %20 = load i8, ptr %19, align 1, !dbg !2646
    #dbg_value({ ptr, i64, i64 } %2, !2619, !DIExpression(), !2647)
    #dbg_value(i32 %r, !2620, !DIExpression(), !2648)
  %21 = ashr i32 %r, 12, !dbg !2649
  %22 = trunc i32 %21 to i8, !dbg !2650
  %23 = or i8 -32, %22, !dbg !2651
  %indexaddr.ptr20 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2652
  %indexaddr.len21 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2652
  %24 = icmp uge i64 0, %indexaddr.len21, !dbg !2652
  br i1 %24, label %lookup.throw22, label %lookup.next23, !dbg !2652

lookup.next23:                                    ; preds = %lookup.next19
  %25 = getelementptr inbounds i8, ptr %indexaddr.ptr20, i64 0, !dbg !2652
  store i8 %23, ptr %25, align 1, !dbg !2652
    #dbg_value({ ptr, i64, i64 } %2, !2619, !DIExpression(), !2653)
    #dbg_value(i32 %r, !2620, !DIExpression(), !2654)
  %26 = ashr i32 %r, 6, !dbg !2655
  %27 = trunc i32 %26 to i8, !dbg !2656
  %28 = and i8 %27, 63, !dbg !2657
  %29 = or i8 -128, %28, !dbg !2658
  %indexaddr.ptr24 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2659
  %indexaddr.len25 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2659
  %30 = icmp uge i64 1, %indexaddr.len25, !dbg !2659
  br i1 %30, label %lookup.throw26, label %lookup.next27, !dbg !2659

lookup.next27:                                    ; preds = %lookup.next23
  %31 = getelementptr inbounds i8, ptr %indexaddr.ptr24, i64 1, !dbg !2659
  store i8 %29, ptr %31, align 1, !dbg !2659
    #dbg_value({ ptr, i64, i64 } %2, !2619, !DIExpression(), !2660)
    #dbg_value(i32 %r, !2620, !DIExpression(), !2661)
  %32 = trunc i32 %r to i8, !dbg !2662
  %33 = and i8 %32, 63, !dbg !2663
  %34 = or i8 -128, %33, !dbg !2664
  %indexaddr.ptr28 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2665
  %indexaddr.len29 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2665
  %35 = icmp uge i64 2, %indexaddr.len29, !dbg !2665
  br i1 %35, label %lookup.throw30, label %lookup.next31, !dbg !2665

lookup.next31:                                    ; preds = %lookup.next27
  %36 = getelementptr inbounds i8, ptr %indexaddr.ptr28, i64 2, !dbg !2665
  store i8 %34, ptr %36, align 1, !dbg !2665
  ret i64 3, !dbg !2666

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i32 %r, !2621, !DIExpression(), !2667)
  %37 = icmp ult i32 57343, %r, !dbg !2668
  br i1 %37, label %binop.rhs, label %binop.done, !dbg !2627

binop.rhs:                                        ; preds = %switch.next2
    #dbg_value(i32 %r, !2621, !DIExpression(), !2669)
  %38 = icmp ule i32 %r, 65535, !dbg !2670
  br label %binop.done, !dbg !2627

binop.done:                                       ; preds = %binop.rhs, %switch.next2
  %39 = phi i1 [ false, %switch.next2 ], [ %38, %binop.rhs ], !dbg !2671
  br i1 %39, label %switch.body1, label %switch.next3, !dbg !2627

switch.next3:                                     ; preds = %binop.done
    #dbg_value(i32 %r, !2621, !DIExpression(), !2672)
  %40 = icmp ugt i32 %r, 65535, !dbg !2673
  br i1 %40, label %binop.rhs4, label %binop.done5, !dbg !2627

binop.rhs4:                                       ; preds = %switch.next3
    #dbg_value(i32 %r, !2621, !DIExpression(), !2674)
  %41 = icmp ule i32 %r, 1114111, !dbg !2675
  br label %binop.done5, !dbg !2627

binop.done5:                                      ; preds = %binop.rhs4, %switch.next3
  %42 = phi i1 [ false, %switch.next3 ], [ %41, %binop.rhs4 ], !dbg !2676
  br i1 %42, label %switch.body6, label %switch.next7, !dbg !2627

switch.body6:                                     ; preds = %binop.done5
    #dbg_value({ ptr, i64, i64 } %2, !2619, !DIExpression(), !2677)
  %indexaddr.ptr32 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2678
  %indexaddr.len33 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2678
  %43 = icmp uge i64 3, %indexaddr.len33, !dbg !2678
  br i1 %43, label %lookup.throw34, label %lookup.next35, !dbg !2678

lookup.next35:                                    ; preds = %switch.body6
  %44 = getelementptr inbounds i8, ptr %indexaddr.ptr32, i64 3, !dbg !2678
  %45 = load i8, ptr %44, align 1, !dbg !2678
    #dbg_value({ ptr, i64, i64 } %2, !2619, !DIExpression(), !2679)
    #dbg_value(i32 %r, !2620, !DIExpression(), !2680)
  %46 = ashr i32 %r, 18, !dbg !2681
  %47 = trunc i32 %46 to i8, !dbg !2682
  %48 = or i8 -16, %47, !dbg !2683
  %indexaddr.ptr36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2684
  %indexaddr.len37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2684
  %49 = icmp uge i64 0, %indexaddr.len37, !dbg !2684
  br i1 %49, label %lookup.throw38, label %lookup.next39, !dbg !2684

lookup.next39:                                    ; preds = %lookup.next35
  %50 = getelementptr inbounds i8, ptr %indexaddr.ptr36, i64 0, !dbg !2684
  store i8 %48, ptr %50, align 1, !dbg !2684
    #dbg_value({ ptr, i64, i64 } %2, !2619, !DIExpression(), !2685)
    #dbg_value(i32 %r, !2620, !DIExpression(), !2686)
  %51 = ashr i32 %r, 12, !dbg !2687
  %52 = trunc i32 %51 to i8, !dbg !2688
  %53 = and i8 %52, 63, !dbg !2689
  %54 = or i8 -128, %53, !dbg !2690
  %indexaddr.ptr40 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2691
  %indexaddr.len41 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2691
  %55 = icmp uge i64 1, %indexaddr.len41, !dbg !2691
  br i1 %55, label %lookup.throw42, label %lookup.next43, !dbg !2691

lookup.next43:                                    ; preds = %lookup.next39
  %56 = getelementptr inbounds i8, ptr %indexaddr.ptr40, i64 1, !dbg !2691
  store i8 %54, ptr %56, align 1, !dbg !2691
    #dbg_value({ ptr, i64, i64 } %2, !2619, !DIExpression(), !2692)
    #dbg_value(i32 %r, !2620, !DIExpression(), !2693)
  %57 = ashr i32 %r, 6, !dbg !2694
  %58 = trunc i32 %57 to i8, !dbg !2695
  %59 = and i8 %58, 63, !dbg !2696
  %60 = or i8 -128, %59, !dbg !2697
  %indexaddr.ptr44 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2698
  %indexaddr.len45 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2698
  %61 = icmp uge i64 2, %indexaddr.len45, !dbg !2698
  br i1 %61, label %lookup.throw46, label %lookup.next47, !dbg !2698

lookup.next47:                                    ; preds = %lookup.next43
  %62 = getelementptr inbounds i8, ptr %indexaddr.ptr44, i64 2, !dbg !2698
  store i8 %60, ptr %62, align 1, !dbg !2698
    #dbg_value({ ptr, i64, i64 } %2, !2619, !DIExpression(), !2699)
    #dbg_value(i32 %r, !2620, !DIExpression(), !2700)
  %63 = trunc i32 %r to i8, !dbg !2701
  %64 = and i8 %63, 63, !dbg !2702
  %65 = or i8 -128, %64, !dbg !2703
  %indexaddr.ptr48 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2704
  %indexaddr.len49 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2704
  %66 = icmp uge i64 3, %indexaddr.len49, !dbg !2704
  br i1 %66, label %lookup.throw50, label %lookup.next51, !dbg !2704

lookup.next51:                                    ; preds = %lookup.next47
  %67 = getelementptr inbounds i8, ptr %indexaddr.ptr48, i64 3, !dbg !2704
  store i8 %65, ptr %67, align 1, !dbg !2704
  ret i64 4, !dbg !2705

switch.next7:                                     ; preds = %binop.done5
    #dbg_value({ ptr, i64, i64 } %2, !2619, !DIExpression(), !2706)
  %indexaddr.ptr52 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2707
  %indexaddr.len53 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2707
  %68 = icmp uge i64 2, %indexaddr.len53, !dbg !2707
  br i1 %68, label %lookup.throw54, label %lookup.next55, !dbg !2707

lookup.next55:                                    ; preds = %switch.next7
  %69 = getelementptr inbounds i8, ptr %indexaddr.ptr52, i64 2, !dbg !2707
  %70 = load i8, ptr %69, align 1, !dbg !2707
    #dbg_value({ ptr, i64, i64 } %2, !2619, !DIExpression(), !2708)
  %indexaddr.ptr56 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2709
  %indexaddr.len57 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2709
  %71 = icmp uge i64 0, %indexaddr.len57, !dbg !2709
  br i1 %71, label %lookup.throw58, label %lookup.next59, !dbg !2709

lookup.next59:                                    ; preds = %lookup.next55
  %72 = getelementptr inbounds i8, ptr %indexaddr.ptr56, i64 0, !dbg !2709
  store i8 -17, ptr %72, align 1, !dbg !2709
    #dbg_value({ ptr, i64, i64 } %2, !2619, !DIExpression(), !2710)
  %indexaddr.ptr60 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2711
  %indexaddr.len61 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2711
  %73 = icmp uge i64 1, %indexaddr.len61, !dbg !2711
  br i1 %73, label %lookup.throw62, label %lookup.next63, !dbg !2711

lookup.next63:                                    ; preds = %lookup.next59
  %74 = getelementptr inbounds i8, ptr %indexaddr.ptr60, i64 1, !dbg !2711
  store i8 -65, ptr %74, align 1, !dbg !2711
    #dbg_value({ ptr, i64, i64 } %2, !2619, !DIExpression(), !2712)
  %indexaddr.ptr64 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2713
  %indexaddr.len65 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2713
  %75 = icmp uge i64 2, %indexaddr.len65, !dbg !2713
  br i1 %75, label %lookup.throw66, label %lookup.next67, !dbg !2713

lookup.next67:                                    ; preds = %lookup.next63
  %76 = getelementptr inbounds i8, ptr %indexaddr.ptr64, i64 2, !dbg !2713
  store i8 -67, ptr %76, align 1, !dbg !2713
  ret i64 3, !dbg !2714

lookup.throw:                                     ; preds = %switch.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2629
  unreachable, !dbg !2629

lookup.throw10:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !2635
  unreachable, !dbg !2635

lookup.throw14:                                   ; preds = %lookup.next11
  call void @runtime.lookupPanic(ptr undef), !dbg !2641
  unreachable, !dbg !2641

lookup.throw18:                                   ; preds = %switch.body1
  call void @runtime.lookupPanic(ptr undef), !dbg !2646
  unreachable, !dbg !2646

lookup.throw22:                                   ; preds = %lookup.next19
  call void @runtime.lookupPanic(ptr undef), !dbg !2652
  unreachable, !dbg !2652

lookup.throw26:                                   ; preds = %lookup.next23
  call void @runtime.lookupPanic(ptr undef), !dbg !2659
  unreachable, !dbg !2659

lookup.throw30:                                   ; preds = %lookup.next27
  call void @runtime.lookupPanic(ptr undef), !dbg !2665
  unreachable, !dbg !2665

lookup.throw34:                                   ; preds = %switch.body6
  call void @runtime.lookupPanic(ptr undef), !dbg !2678
  unreachable, !dbg !2678

lookup.throw38:                                   ; preds = %lookup.next35
  call void @runtime.lookupPanic(ptr undef), !dbg !2684
  unreachable, !dbg !2684

lookup.throw42:                                   ; preds = %lookup.next39
  call void @runtime.lookupPanic(ptr undef), !dbg !2691
  unreachable, !dbg !2691

lookup.throw46:                                   ; preds = %lookup.next43
  call void @runtime.lookupPanic(ptr undef), !dbg !2698
  unreachable, !dbg !2698

lookup.throw50:                                   ; preds = %lookup.next47
  call void @runtime.lookupPanic(ptr undef), !dbg !2704
  unreachable, !dbg !2704

lookup.throw54:                                   ; preds = %switch.next7
  call void @runtime.lookupPanic(ptr undef), !dbg !2707
  unreachable, !dbg !2707

lookup.throw58:                                   ; preds = %lookup.next55
  call void @runtime.lookupPanic(ptr undef), !dbg !2709
  unreachable, !dbg !2709

lookup.throw62:                                   ; preds = %lookup.next59
  call void @runtime.lookupPanic(ptr undef), !dbg !2711
  unreachable, !dbg !2711

lookup.throw66:                                   ; preds = %lookup.next63
  call void @runtime.lookupPanic(ptr undef), !dbg !2713
  unreachable, !dbg !2713
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"unicode/utf8.ValidRune"(i32 %r, ptr %context) #1 !dbg !2715 {
entry:
    #dbg_value(i32 %r, !2719, !DIExpression(), !2720)
    #dbg_value(i32 %r, !2719, !DIExpression(), !2721)
  %0 = icmp sle i32 0, %r, !dbg !2722
  br i1 %0, label %binop.rhs, label %binop.done, !dbg !2723

binop.rhs:                                        ; preds = %entry
    #dbg_value(i32 %r, !2719, !DIExpression(), !2724)
  %1 = icmp slt i32 %r, 55296, !dbg !2725
  br label %binop.done, !dbg !2723

binop.done:                                       ; preds = %binop.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %1, %binop.rhs ], !dbg !2726
  br i1 %2, label %switch.body, label %switch.next, !dbg !2723

switch.body:                                      ; preds = %binop.done
  ret i1 true, !dbg !2727

switch.next:                                      ; preds = %binop.done
    #dbg_value(i32 %r, !2719, !DIExpression(), !2728)
  %3 = icmp slt i32 57343, %r, !dbg !2729
  br i1 %3, label %binop.rhs1, label %binop.done2, !dbg !2723

binop.rhs1:                                       ; preds = %switch.next
    #dbg_value(i32 %r, !2719, !DIExpression(), !2730)
  %4 = icmp sle i32 %r, 1114111, !dbg !2731
  br label %binop.done2, !dbg !2723

binop.done2:                                      ; preds = %binop.rhs1, %switch.next
  %5 = phi i1 [ false, %switch.next ], [ %4, %binop.rhs1 ], !dbg !2732
  br i1 %5, label %switch.body3, label %switch.next4, !dbg !2723

switch.body3:                                     ; preds = %binop.done2
  ret i1 true, !dbg !2733

switch.next4:                                     ; preds = %binop.done2
  ret i1 false, !dbg !2734
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable(sync)
define internal i8 @"(*internal/reflectlite.RawType).Kind"(ptr dereferenceable_or_null(1) %t, ptr %context) #1 !dbg !2735 {
entry:
    #dbg_value(ptr %t, !2739, !DIExpression(), !2741)
    #dbg_value(ptr %t, !2739, !DIExpression(), !2742)
  %0 = icmp eq ptr %t, null, !dbg !2743
  br i1 %0, label %if.then, label %if.done, !dbg !2744

if.then:                                          ; preds = %entry
  ret i8 0, !dbg !2745

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2739, !DIExpression(), !2746)
  %1 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2747
    #dbg_value(i64 %1, !2740, !DIExpression(), !2748)
    #dbg_value(i64 %1, !2740, !DIExpression(), !2749)
  %2 = icmp ne i64 %1, 0, !dbg !2750
  br i1 %2, label %if.then1, label %if.done2, !dbg !2744

if.then1:                                         ; preds = %if.done
  ret i8 21, !dbg !2751

if.done2:                                         ; preds = %if.done
    #dbg_value(ptr %t, !2739, !DIExpression(), !2752)
  %3 = icmp eq ptr %t, null, !dbg !2753
  br i1 %3, label %gep.throw, label %gep.next, !dbg !2753

gep.next:                                         ; preds = %if.done2
  %4 = getelementptr inbounds %"internal/reflectlite.RawType", ptr %t, i32 0, i32 0, !dbg !2753
  %5 = icmp eq ptr %4, null, !dbg !2753
  br i1 %5, label %deref.throw, label %deref.next, !dbg !2753

deref.next:                                       ; preds = %gep.next
  %6 = load i8, ptr %4, align 1, !dbg !2753
  %7 = and i8 %6, 31, !dbg !2754
  ret i8 %7, !dbg !2755

gep.throw:                                        ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2753
  unreachable, !dbg !2753

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2753
  unreachable, !dbg !2753
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).elem"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2756 {
entry:
    #dbg_value(ptr %t, !2758, !DIExpression(), !2762)
    #dbg_value(ptr %t, !2758, !DIExpression(), !2763)
  %0 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2764
    #dbg_value(i64 %0, !2759, !DIExpression(), !2765)
    #dbg_value(i64 %0, !2759, !DIExpression(), !2766)
  %1 = icmp ne i64 %0, 0, !dbg !2767
  br i1 %1, label %if.then, label %if.done, !dbg !2768

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2758, !DIExpression(), !2769)
  %2 = getelementptr i8, ptr %t, i64 -1, !dbg !2770
  ret ptr %2, !dbg !2771

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2758, !DIExpression(), !2772)
  %3 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2773
    #dbg_value(ptr %3, !2760, !DIExpression(), !2774)
    #dbg_value(ptr %3, !2760, !DIExpression(), !2775)
  %4 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %3, ptr undef), !dbg !2776
  %5 = icmp eq i8 %4, 21, !dbg !2777
  br i1 %5, label %switch.body, label %switch.next, !dbg !2768

switch.body:                                      ; preds = %if.done
    #dbg_value(ptr %3, !2760, !DIExpression(), !2778)
  %6 = getelementptr inbounds %"internal/reflectlite.ptrType", ptr %3, i32 0, i32 2, !dbg !2779
  %7 = icmp eq ptr %6, null, !dbg !2779
  br i1 %7, label %deref.throw, label %deref.next, !dbg !2779

deref.next:                                       ; preds = %switch.body
  %8 = load ptr, ptr %6, align 8, !dbg !2779
  ret ptr %8, !dbg !2780

switch.next:                                      ; preds = %if.done
  %9 = icmp eq i8 %4, 19, !dbg !2781
  br i1 %9, label %switch.body1, label %switch.next2, !dbg !2768

switch.body1:                                     ; preds = %switch.next4, %switch.next3, %switch.next2, %switch.next
    #dbg_value(ptr %3, !2760, !DIExpression(), !2782)
  %10 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %3, i32 0, i32 3, !dbg !2783
  %11 = icmp eq ptr %10, null, !dbg !2783
  br i1 %11, label %deref.throw6, label %deref.next7, !dbg !2783

deref.next7:                                      ; preds = %switch.body1
  %12 = load ptr, ptr %10, align 8, !dbg !2783
  ret ptr %12, !dbg !2784

switch.next2:                                     ; preds = %switch.next
  %13 = icmp eq i8 %4, 22, !dbg !2785
  br i1 %13, label %switch.body1, label %switch.next3, !dbg !2768

switch.next3:                                     ; preds = %switch.next2
  %14 = icmp eq i8 %4, 23, !dbg !2786
  br i1 %14, label %switch.body1, label %switch.next4, !dbg !2768

switch.next4:                                     ; preds = %switch.next3
  %15 = icmp eq i8 %4, 25, !dbg !2787
  br i1 %15, label %switch.body1, label %switch.next5, !dbg !2768

switch.next5:                                     ; preds = %switch.next4
  %16 = load ptr, ptr @"internal/reflectlite.errTypeElem", align 8, !dbg !2788
    #dbg_value(ptr %16, !2761, !DIExpression(), !2788)
  %17 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %16, 1, !dbg !2788
  %18 = extractvalue { ptr, ptr } %17, 0, !dbg !2789
  %19 = extractvalue { ptr, ptr } %17, 1, !dbg !2789
  call void @runtime._panic(ptr %18, ptr %19, ptr undef), !dbg !2789
  unreachable, !dbg !2789

deref.throw:                                      ; preds = %switch.body
  call void @runtime.nilPanic(ptr undef), !dbg !2779
  unreachable, !dbg !2779

deref.throw6:                                     ; preds = %switch.body1
  call void @runtime.nilPanic(ptr undef), !dbg !2783
  unreachable, !dbg !2783
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).Len"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2790 {
entry:
    #dbg_value(ptr %t, !2792, !DIExpression(), !2794)
    #dbg_value(ptr %t, !2792, !DIExpression(), !2795)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2796
  %1 = icmp ne i8 %0, 23, !dbg !2797
  br i1 %1, label %if.then, label %if.done, !dbg !2798

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeLen", align 8, !dbg !2799
    #dbg_value(ptr %2, !2793, !DIExpression(), !2799)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2799
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2800
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2800
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2800
  unreachable, !dbg !2800

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2792, !DIExpression(), !2801)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2802
  %7 = getelementptr inbounds %"internal/reflectlite.arrayType", ptr %6, i32 0, i32 4, !dbg !2803
  %8 = icmp eq ptr %7, null, !dbg !2803
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2803

deref.next:                                       ; preds = %if.done
  %9 = load i64, ptr %7, align 8, !dbg !2803
  ret i64 %9, !dbg !2804

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2803
  unreachable, !dbg !2803
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).underlying"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2805 {
entry:
    #dbg_value(ptr %t, !2807, !DIExpression(), !2808)
    #dbg_value(ptr %t, !2807, !DIExpression(), !2809)
  %0 = call i1 @"(*internal/reflectlite.RawType).isNamed"(ptr %t, ptr undef), !dbg !2810
  br i1 %0, label %if.then, label %if.done, !dbg !2811

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2807, !DIExpression(), !2812)
  %1 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %t, i32 0, i32 3, !dbg !2813
  %2 = icmp eq ptr %1, null, !dbg !2813
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2813

deref.next:                                       ; preds = %if.then
  %3 = load ptr, ptr %1, align 8, !dbg !2813
  ret ptr %3, !dbg !2814

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2807, !DIExpression(), !2815)
  ret ptr %t, !dbg !2816

deref.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2813
  unreachable, !dbg !2813
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*internal/reflectlite.RawType).isNamed"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2817 {
entry:
    #dbg_value(ptr %t, !2819, !DIExpression(), !2821)
    #dbg_value(ptr %t, !2819, !DIExpression(), !2822)
  %0 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2823
    #dbg_value(i64 %0, !2820, !DIExpression(), !2824)
    #dbg_value(i64 %0, !2820, !DIExpression(), !2825)
  %1 = icmp ne i64 %0, 0, !dbg !2826
  br i1 %1, label %if.then, label %if.done, !dbg !2827

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !2828

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2819, !DIExpression(), !2829)
  %2 = icmp eq ptr %t, null, !dbg !2830
  br i1 %2, label %gep.throw, label %gep.next, !dbg !2830

gep.next:                                         ; preds = %if.done
  %3 = getelementptr inbounds %"internal/reflectlite.RawType", ptr %t, i32 0, i32 0, !dbg !2830
  %4 = icmp eq ptr %3, null, !dbg !2830
  br i1 %4, label %deref.throw, label %deref.next, !dbg !2830

deref.next:                                       ; preds = %gep.next
  %5 = load i8, ptr %3, align 1, !dbg !2830
  %6 = and i8 %5, 32, !dbg !2831
  %7 = icmp ne i8 %6, 0, !dbg !2832
  ret i1 %7, !dbg !2833

gep.throw:                                        ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2830
  unreachable, !dbg !2830

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2830
  unreachable, !dbg !2830
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2834 {
entry:
    #dbg_value(ptr %t, !2836, !DIExpression(), !2837)
    #dbg_value(ptr %t, !2836, !DIExpression(), !2838)
  %0 = ptrtoint ptr %t to i64, !dbg !2839
  %1 = and i64 %0, 3, !dbg !2840
  ret i64 %1, !dbg !2841
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.TypeError).Error"(ptr dereferenceable_or_null(16) %e, ptr %context) unnamed_addr #1 !dbg !2842 {
entry:
    #dbg_value(ptr %e, !2846, !DIExpression(), !2847)
    #dbg_value(ptr %e, !2846, !DIExpression(), !2848)
  %0 = icmp eq ptr %e, null, !dbg !2849
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2849

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds { %runtime._string }, ptr %e, i32 0, i32 0, !dbg !2849
  %2 = icmp eq ptr %1, null, !dbg !2849
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2849

deref.next:                                       ; preds = %gep.next
  %3 = load %runtime._string, ptr %1, align 8, !dbg !2849
  %4 = extractvalue %runtime._string %3, 0, !dbg !2850
  %5 = extractvalue %runtime._string %3, 1, !dbg !2850
  %6 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.111", i64 30, ptr %4, i64 %5, ptr undef), !dbg !2850
  %7 = extractvalue %runtime._string %6, 0, !dbg !2851
  %8 = extractvalue %runtime._string %6, 1, !dbg !2851
  %9 = call %runtime._string @runtime.stringConcat(ptr %7, i64 %8, ptr @"internal/reflectlite$string.112", i64 16, ptr undef), !dbg !2851
  ret %runtime._string %9, !dbg !2852

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2849
  unreachable, !dbg !2849

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2849
  unreachable, !dbg !2849
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).ChanDir"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2853 {
entry:
    #dbg_value(ptr %t, !2855, !DIExpression(), !2858)
    #dbg_value(ptr %t, !2855, !DIExpression(), !2859)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2860
  %1 = icmp ne i8 %0, 19, !dbg !2861
  br i1 %1, label %if.then, label %if.done, !dbg !2862

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeChanDir", align 8, !dbg !2863
    #dbg_value(ptr %2, !2856, !DIExpression(), !2863)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2863
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2864
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2864
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2864
  unreachable, !dbg !2864

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2855, !DIExpression(), !2865)
  %6 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %t, i32 0, i32 1, !dbg !2866
  %7 = icmp eq ptr %6, null, !dbg !2866
  br i1 %7, label %deref.throw, label %deref.next, !dbg !2866

deref.next:                                       ; preds = %if.done
  %8 = load i16, ptr %6, align 2, !dbg !2866
  %9 = zext i16 %8 to i64, !dbg !2867
    #dbg_value(i64 %9, !2857, !DIExpression(), !2868)
    #dbg_value(i64 %9, !2857, !DIExpression(), !2869)
  ret i64 %9, !dbg !2870

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2866
  unreachable, !dbg !2866
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).NumField"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2871 {
entry:
    #dbg_value(ptr %t, !2873, !DIExpression(), !2875)
    #dbg_value(ptr %t, !2873, !DIExpression(), !2876)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2877
  %1 = icmp ne i8 %0, 26, !dbg !2878
  br i1 %1, label %if.then, label %if.done, !dbg !2879

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeNumField", align 8, !dbg !2880
    #dbg_value(ptr %2, !2874, !DIExpression(), !2880)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2880
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2881
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2881
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2881
  unreachable, !dbg !2881

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2873, !DIExpression(), !2882)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2883
  %7 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 5, !dbg !2884
  %8 = icmp eq ptr %7, null, !dbg !2884
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2884

deref.next:                                       ; preds = %if.done
  %9 = load i16, ptr %7, align 2, !dbg !2884
  %10 = zext i16 %9 to i64, !dbg !2885
  ret i64 %10, !dbg !2886

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2884
  unreachable, !dbg !2884
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.RawType).String"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2887 {
entry:
    #dbg_value(ptr %t, !2889, !DIExpression(), !2905)
    #dbg_value(ptr %t, !2889, !DIExpression(), !2906)
  %f = alloca %"internal/reflectlite.rawStructField", align 8, !dbg !2907
  %0 = call i1 @"(*internal/reflectlite.RawType).isNamed"(ptr %t, ptr undef), !dbg !2907
  br i1 %0, label %if.then, label %if.done2, !dbg !2908

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2889, !DIExpression(), !2909)
  %1 = call %runtime._string @"(*internal/reflectlite.RawType).name"(ptr %t, ptr undef), !dbg !2910
    #dbg_value(%runtime._string %1, !2890, !DIExpression(), !2911)
    #dbg_value(%runtime._string %1, !2890, !DIExpression(), !2912)
  %len = extractvalue %runtime._string %1, 1, !dbg !2913
  %2 = icmp uge i64 0, %len, !dbg !2913
  br i1 %2, label %lookup.throw, label %lookup.next, !dbg !2913

lookup.next:                                      ; preds = %if.then
  %3 = extractvalue %runtime._string %1, 0, !dbg !2913
  %4 = getelementptr inbounds i8, ptr %3, i64 0, !dbg !2913
  %5 = load i8, ptr %4, align 1, !dbg !2913
  %6 = icmp eq i8 %5, 46, !dbg !2914
  br i1 %6, label %if.then1, label %if.done, !dbg !2908

if.then1:                                         ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2890, !DIExpression(), !2915)
  %7 = extractvalue %runtime._string %1, 0, !dbg !2916
  %8 = extractvalue %runtime._string %1, 1, !dbg !2916
  %slice.lowhigh = icmp ugt i64 1, %8, !dbg !2916
  %slice.highmax = icmp ugt i64 %8, %8, !dbg !2916
  %slice.maxcap = icmp ugt i64 %8, %8, !dbg !2916
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2916
  %slice.lowcap = or i1 %slice.lowmax, %slice.maxcap, !dbg !2916
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2916

slice.next:                                       ; preds = %if.then1
  %9 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !2916
  %10 = sub i64 %8, 1, !dbg !2916
  %11 = insertvalue %runtime._string undef, ptr %9, 0, !dbg !2916
  %12 = insertvalue %runtime._string %11, i64 %10, 1, !dbg !2916
  ret %runtime._string %12, !dbg !2917

if.done:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2890, !DIExpression(), !2918)
  ret %runtime._string %1, !dbg !2919

if.done2:                                         ; preds = %entry
    #dbg_value(ptr %t, !2889, !DIExpression(), !2920)
  %13 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2921
  %14 = icmp eq i8 %13, 19, !dbg !2922
  br i1 %14, label %switch.body, label %switch.next10, !dbg !2908

switch.body:                                      ; preds = %if.done2
    #dbg_value(ptr %t, !2889, !DIExpression(), !2923)
  %15 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2924
  %16 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %15, ptr undef), !dbg !2925
    #dbg_value(%runtime._string %16, !2891, !DIExpression(), !2926)
    #dbg_value(ptr %t, !2889, !DIExpression(), !2927)
  %17 = call i64 @"(*internal/reflectlite.RawType).ChanDir"(ptr %t, ptr undef), !dbg !2928
  %18 = icmp eq i64 %17, 2, !dbg !2929
  br i1 %18, label %switch.body3, label %switch.next, !dbg !2908

switch.body3:                                     ; preds = %switch.body
    #dbg_value(%runtime._string %16, !2891, !DIExpression(), !2930)
  %19 = extractvalue %runtime._string %16, 0, !dbg !2931
  %20 = extractvalue %runtime._string %16, 1, !dbg !2931
  %21 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.87", i64 7, ptr %19, i64 %20, ptr undef), !dbg !2931
  ret %runtime._string %21, !dbg !2932

switch.next:                                      ; preds = %switch.body
  %22 = icmp eq i64 %17, 1, !dbg !2933
  br i1 %22, label %switch.body4, label %switch.next5, !dbg !2908

switch.body4:                                     ; preds = %switch.next
    #dbg_value(%runtime._string %16, !2891, !DIExpression(), !2934)
  %23 = extractvalue %runtime._string %16, 0, !dbg !2935
  %24 = extractvalue %runtime._string %16, 1, !dbg !2935
  %25 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.88", i64 7, ptr %23, i64 %24, ptr undef), !dbg !2935
  ret %runtime._string %25, !dbg !2936

switch.next5:                                     ; preds = %switch.next
  %26 = icmp eq i64 %17, 3, !dbg !2937
  br i1 %26, label %switch.body6, label %switch.next9, !dbg !2908

switch.body6:                                     ; preds = %switch.next5
    #dbg_value(%runtime._string %16, !2891, !DIExpression(), !2938)
  %len29 = extractvalue %runtime._string %16, 1, !dbg !2939
  %27 = icmp uge i64 0, %len29, !dbg !2939
  br i1 %27, label %lookup.throw30, label %lookup.next31, !dbg !2939

lookup.next31:                                    ; preds = %switch.body6
  %28 = extractvalue %runtime._string %16, 0, !dbg !2939
  %29 = getelementptr inbounds i8, ptr %28, i64 0, !dbg !2939
  %30 = load i8, ptr %29, align 1, !dbg !2939
  %31 = icmp eq i8 %30, 60, !dbg !2940
  br i1 %31, label %if.then7, label %if.done8, !dbg !2908

if.then7:                                         ; preds = %lookup.next31
    #dbg_value(%runtime._string %16, !2891, !DIExpression(), !2941)
  %32 = extractvalue %runtime._string %16, 0, !dbg !2942
  %33 = extractvalue %runtime._string %16, 1, !dbg !2942
  %34 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.89", i64 6, ptr %32, i64 %33, ptr undef), !dbg !2942
  %35 = extractvalue %runtime._string %34, 0, !dbg !2943
  %36 = extractvalue %runtime._string %34, 1, !dbg !2943
  %37 = call %runtime._string @runtime.stringConcat(ptr %35, i64 %36, ptr @"internal/reflectlite$string.90", i64 1, ptr undef), !dbg !2943
  ret %runtime._string %37, !dbg !2944

if.done8:                                         ; preds = %lookup.next31
    #dbg_value(%runtime._string %16, !2891, !DIExpression(), !2945)
  %38 = extractvalue %runtime._string %16, 0, !dbg !2946
  %39 = extractvalue %runtime._string %16, 1, !dbg !2946
  %40 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.91", i64 5, ptr %38, i64 %39, ptr undef), !dbg !2946
  ret %runtime._string %40, !dbg !2947

switch.next9:                                     ; preds = %switch.next5
    #dbg_value(ptr %t, !2889, !DIExpression(), !2948)
  %41 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2949
  %42 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %41, ptr undef), !dbg !2950
  ret %runtime._string %42, !dbg !2951

switch.next10:                                    ; preds = %if.done2
  %43 = icmp eq i8 %13, 21, !dbg !2952
  br i1 %43, label %switch.body11, label %switch.next12, !dbg !2908

switch.body11:                                    ; preds = %switch.next10
    #dbg_value(ptr %t, !2889, !DIExpression(), !2953)
  %44 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2954
  %45 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %44, ptr undef), !dbg !2955
  %46 = extractvalue %runtime._string %45, 0, !dbg !2956
  %47 = extractvalue %runtime._string %45, 1, !dbg !2956
  %48 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.92", i64 1, ptr %46, i64 %47, ptr undef), !dbg !2956
  ret %runtime._string %48, !dbg !2957

switch.next12:                                    ; preds = %switch.next10
  %49 = icmp eq i8 %13, 22, !dbg !2958
  br i1 %49, label %switch.body13, label %switch.next14, !dbg !2908

switch.body13:                                    ; preds = %switch.next12
    #dbg_value(ptr %t, !2889, !DIExpression(), !2959)
  %50 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2960
  %51 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %50, ptr undef), !dbg !2961
  %52 = extractvalue %runtime._string %51, 0, !dbg !2962
  %53 = extractvalue %runtime._string %51, 1, !dbg !2962
  %54 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.93", i64 2, ptr %52, i64 %53, ptr undef), !dbg !2962
  ret %runtime._string %54, !dbg !2963

switch.next14:                                    ; preds = %switch.next12
  %55 = icmp eq i8 %13, 23, !dbg !2964
  br i1 %55, label %switch.body15, label %switch.next16, !dbg !2908

switch.body15:                                    ; preds = %switch.next14
    #dbg_value(ptr %t, !2889, !DIExpression(), !2965)
  %56 = call i64 @"(*internal/reflectlite.RawType).Len"(ptr %t, ptr undef), !dbg !2966
  %57 = call %runtime._string @"internal/itoa.Itoa"(i64 %56, ptr undef), !dbg !2967
  %58 = extractvalue %runtime._string %57, 0, !dbg !2968
  %59 = extractvalue %runtime._string %57, 1, !dbg !2968
  %60 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.94", i64 1, ptr %58, i64 %59, ptr undef), !dbg !2968
  %61 = extractvalue %runtime._string %60, 0, !dbg !2969
  %62 = extractvalue %runtime._string %60, 1, !dbg !2969
  %63 = call %runtime._string @runtime.stringConcat(ptr %61, i64 %62, ptr @"internal/reflectlite$string.95", i64 1, ptr undef), !dbg !2969
    #dbg_value(ptr %t, !2889, !DIExpression(), !2970)
  %64 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2971
  %65 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %64, ptr undef), !dbg !2972
  %66 = extractvalue %runtime._string %63, 0, !dbg !2973
  %67 = extractvalue %runtime._string %63, 1, !dbg !2973
  %68 = extractvalue %runtime._string %65, 0, !dbg !2973
  %69 = extractvalue %runtime._string %65, 1, !dbg !2973
  %70 = call %runtime._string @runtime.stringConcat(ptr %66, i64 %67, ptr %68, i64 %69, ptr undef), !dbg !2973
  ret %runtime._string %70, !dbg !2974

switch.next16:                                    ; preds = %switch.next14
  %71 = icmp eq i8 %13, 25, !dbg !2975
  br i1 %71, label %switch.body17, label %switch.next18, !dbg !2908

switch.body17:                                    ; preds = %switch.next16
    #dbg_value(ptr %t, !2889, !DIExpression(), !2976)
  %72 = call ptr @"(*internal/reflectlite.RawType).key"(ptr %t, ptr undef), !dbg !2977
  %73 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %72, ptr undef), !dbg !2978
  %74 = extractvalue %runtime._string %73, 0, !dbg !2979
  %75 = extractvalue %runtime._string %73, 1, !dbg !2979
  %76 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.96", i64 4, ptr %74, i64 %75, ptr undef), !dbg !2979
  %77 = extractvalue %runtime._string %76, 0, !dbg !2980
  %78 = extractvalue %runtime._string %76, 1, !dbg !2980
  %79 = call %runtime._string @runtime.stringConcat(ptr %77, i64 %78, ptr @"internal/reflectlite$string.97", i64 1, ptr undef), !dbg !2980
    #dbg_value(ptr %t, !2889, !DIExpression(), !2981)
  %80 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2982
  %81 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %80, ptr undef), !dbg !2983
  %82 = extractvalue %runtime._string %79, 0, !dbg !2984
  %83 = extractvalue %runtime._string %79, 1, !dbg !2984
  %84 = extractvalue %runtime._string %81, 0, !dbg !2984
  %85 = extractvalue %runtime._string %81, 1, !dbg !2984
  %86 = call %runtime._string @runtime.stringConcat(ptr %82, i64 %83, ptr %84, i64 %85, ptr undef), !dbg !2984
  ret %runtime._string %86, !dbg !2985

switch.next18:                                    ; preds = %switch.next16
  %87 = icmp eq i8 %13, 26, !dbg !2986
  br i1 %87, label %switch.body19, label %switch.next26, !dbg !2908

switch.body19:                                    ; preds = %switch.next18
    #dbg_value(ptr %t, !2889, !DIExpression(), !2987)
  %88 = call i64 @"(*internal/reflectlite.RawType).NumField"(ptr %t, ptr undef), !dbg !2988
    #dbg_value(i64 %88, !2892, !DIExpression(), !2989)
    #dbg_value(i64 %88, !2892, !DIExpression(), !2990)
  %89 = icmp eq i64 %88, 0, !dbg !2991
  br i1 %89, label %if.then20, label %if.done21, !dbg !2908

if.then20:                                        ; preds = %switch.body19
  ret %runtime._string { ptr @"internal/reflectlite$string.98", i64 9 }, !dbg !2992

if.done21:                                        ; preds = %switch.body19
    #dbg_value(%runtime._string poison, !2893, !DIExpression(), !2993)
    #dbg_value(i64 0, !2894, !DIExpression(), !2994)
  br label %for.loop, !dbg !2908

for.loop:                                         ; preds = %if.done25, %if.done21
  %90 = phi %runtime._string [ { ptr @"internal/reflectlite$string.106", i64 8 }, %if.done21 ], [ %144, %if.done25 ], !dbg !2993
  %91 = phi i64 [ 0, %if.done21 ], [ %145, %if.done25 ], !dbg !2994
    #dbg_value(i64 %91, !2894, !DIExpression(), !2995)
    #dbg_value(i64 %88, !2892, !DIExpression(), !2996)
  %92 = icmp slt i64 %91, %88, !dbg !2997
  br i1 %92, label %for.body, label %for.done, !dbg !2908

for.body:                                         ; preds = %for.loop
  store %"internal/reflectlite.rawStructField" zeroinitializer, ptr %f, align 8, !dbg !2907
    #dbg_value(ptr %t, !2889, !DIExpression(), !2998)
    #dbg_value(i64 %91, !2894, !DIExpression(), !2999)
  %93 = call %"internal/reflectlite.rawStructField" @"(*internal/reflectlite.RawType).rawField"(ptr %t, i64 %91, ptr undef), !dbg !3000
  store %"internal/reflectlite.rawStructField" %93, ptr %f, align 8, !dbg !3001
    #dbg_value(%"internal/reflectlite.rawStructField" %93, !2895, !DIExpression(), !3001)
  %94 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 0, !dbg !3002
  %95 = icmp eq ptr %94, null, !dbg !3002
  br i1 %95, label %deref.throw, label %deref.next, !dbg !3002

deref.next:                                       ; preds = %for.body
  %96 = load %runtime._string, ptr %94, align 8, !dbg !3002
  %97 = extractvalue %runtime._string %96, 0, !dbg !3003
  %98 = extractvalue %runtime._string %96, 1, !dbg !3003
  %99 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.100", i64 1, ptr %97, i64 %98, ptr undef), !dbg !3003
  %100 = extractvalue %runtime._string %99, 0, !dbg !3004
  %101 = extractvalue %runtime._string %99, 1, !dbg !3004
  %102 = call %runtime._string @runtime.stringConcat(ptr %100, i64 %101, ptr @"internal/reflectlite$string.101", i64 1, ptr undef), !dbg !3004
  %103 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 2, !dbg !3005
  %104 = icmp eq ptr %103, null, !dbg !3005
  br i1 %104, label %deref.throw32, label %deref.next33, !dbg !3005

deref.next33:                                     ; preds = %deref.next
  %105 = load ptr, ptr %103, align 8, !dbg !3005
  %106 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %105, ptr undef), !dbg !3006
  %107 = extractvalue %runtime._string %102, 0, !dbg !3007
  %108 = extractvalue %runtime._string %102, 1, !dbg !3007
  %109 = extractvalue %runtime._string %106, 0, !dbg !3007
  %110 = extractvalue %runtime._string %106, 1, !dbg !3007
  %111 = call %runtime._string @runtime.stringConcat(ptr %107, i64 %108, ptr %109, i64 %110, ptr undef), !dbg !3007
  %112 = extractvalue %runtime._string %90, 0, !dbg !3008
  %113 = extractvalue %runtime._string %90, 1, !dbg !3008
  %114 = extractvalue %runtime._string %111, 0, !dbg !3008
  %115 = extractvalue %runtime._string %111, 1, !dbg !3008
  %116 = call %runtime._string @runtime.stringConcat(ptr %112, i64 %113, ptr %114, i64 %115, ptr undef), !dbg !3008
    #dbg_value(%runtime._string %116, !2893, !DIExpression(), !3008)
  %117 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 3, !dbg !3009
  %118 = icmp eq ptr %117, null, !dbg !3009
  br i1 %118, label %deref.throw34, label %deref.next35, !dbg !3009

deref.next35:                                     ; preds = %deref.next33
  %119 = load %runtime._string, ptr %117, align 8, !dbg !3009
  %120 = extractvalue %runtime._string %119, 0, !dbg !3010
  %121 = extractvalue %runtime._string %119, 1, !dbg !3010
  %122 = call i1 @runtime.stringEqual(ptr %120, i64 %121, ptr null, i64 0, ptr undef), !dbg !3010
  %123 = xor i1 %122, true, !dbg !3010
  br i1 %123, label %if.then22, label %if.done23, !dbg !2908

if.then22:                                        ; preds = %deref.next35
  %124 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 3, !dbg !3011
  %125 = icmp eq ptr %124, null, !dbg !3011
  br i1 %125, label %deref.throw36, label %deref.next37, !dbg !3011

deref.next37:                                     ; preds = %if.then22
  %126 = load %runtime._string, ptr %124, align 8, !dbg !3011
  %127 = extractvalue %runtime._string %126, 0, !dbg !3012
  %128 = extractvalue %runtime._string %126, 1, !dbg !3012
  %129 = call %runtime._string @"internal/reflectlite.quote"(ptr %127, i64 %128, ptr undef), !dbg !3012
  %130 = extractvalue %runtime._string %129, 0, !dbg !3013
  %131 = extractvalue %runtime._string %129, 1, !dbg !3013
  %132 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.102", i64 1, ptr %130, i64 %131, ptr undef), !dbg !3013
  %133 = extractvalue %runtime._string %116, 0, !dbg !3014
  %134 = extractvalue %runtime._string %116, 1, !dbg !3014
  %135 = extractvalue %runtime._string %132, 0, !dbg !3014
  %136 = extractvalue %runtime._string %132, 1, !dbg !3014
  %137 = call %runtime._string @runtime.stringConcat(ptr %133, i64 %134, ptr %135, i64 %136, ptr undef), !dbg !3014
    #dbg_value(%runtime._string %137, !2893, !DIExpression(), !3014)
  br label %if.done23, !dbg !2908

if.done23:                                        ; preds = %deref.next37, %deref.next35
  %138 = phi %runtime._string [ %116, %deref.next35 ], [ %137, %deref.next37 ], !dbg !2993
    #dbg_value(i64 %91, !2894, !DIExpression(), !3015)
    #dbg_value(i64 %88, !2892, !DIExpression(), !3016)
  %139 = sub i64 %88, 1, !dbg !3017
  %140 = icmp slt i64 %91, %139, !dbg !3018
  br i1 %140, label %if.then24, label %if.done25, !dbg !2908

if.then24:                                        ; preds = %if.done23
  %141 = extractvalue %runtime._string %138, 0, !dbg !3019
  %142 = extractvalue %runtime._string %138, 1, !dbg !3019
  %143 = call %runtime._string @runtime.stringConcat(ptr %141, i64 %142, ptr @"internal/reflectlite$string.103", i64 1, ptr undef), !dbg !3019
    #dbg_value(%runtime._string %143, !2893, !DIExpression(), !3019)
  br label %if.done25, !dbg !2908

if.done25:                                        ; preds = %if.then24, %if.done23
  %144 = phi %runtime._string [ %138, %if.done23 ], [ %143, %if.then24 ], !dbg !2993
  %145 = add i64 %91, 1, !dbg !3020
    #dbg_value(i64 %145, !2894, !DIExpression(), !3020)
  br label %for.loop, !dbg !2908

for.done:                                         ; preds = %for.loop
  %146 = extractvalue %runtime._string %90, 0, !dbg !3021
  %147 = extractvalue %runtime._string %90, 1, !dbg !3021
  %148 = call %runtime._string @runtime.stringConcat(ptr %146, i64 %147, ptr @"internal/reflectlite$string.104", i64 2, ptr undef), !dbg !3021
    #dbg_value(%runtime._string %148, !2893, !DIExpression(), !3021)
    #dbg_value(%runtime._string %148, !2893, !DIExpression(), !3022)
  ret %runtime._string %148, !dbg !3023

switch.next26:                                    ; preds = %switch.next18
  %149 = icmp eq i8 %13, 20, !dbg !3024
  br i1 %149, label %switch.body27, label %switch.next28, !dbg !2908

switch.body27:                                    ; preds = %switch.next26
  ret %runtime._string { ptr @"internal/reflectlite$string.105", i64 12 }, !dbg !3025

switch.next28:                                    ; preds = %switch.next26
    #dbg_value(ptr %t, !2889, !DIExpression(), !3026)
  %150 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !3027
  %151 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %150, ptr undef), !dbg !3028
  ret %runtime._string %151, !dbg !3029

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2913
  unreachable, !dbg !2913

slice.throw:                                      ; preds = %if.then1
  call void @runtime.slicePanic(ptr undef), !dbg !2916
  unreachable, !dbg !2916

lookup.throw30:                                   ; preds = %switch.body6
  call void @runtime.lookupPanic(ptr undef), !dbg !2939
  unreachable, !dbg !2939

deref.throw:                                      ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3002
  unreachable, !dbg !3002

deref.throw32:                                    ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !3005
  unreachable, !dbg !3005

deref.throw34:                                    ; preds = %deref.next33
  call void @runtime.nilPanic(ptr undef), !dbg !3009
  unreachable, !dbg !3009

deref.throw36:                                    ; preds = %if.then22
  call void @runtime.nilPanic(ptr undef), !dbg !3011
  unreachable, !dbg !3011
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).key"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !3030 {
entry:
    #dbg_value(ptr %t, !3032, !DIExpression(), !3035)
    #dbg_value(ptr %t, !3032, !DIExpression(), !3036)
  %0 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !3037
    #dbg_value(ptr %0, !3033, !DIExpression(), !3038)
    #dbg_value(ptr %0, !3033, !DIExpression(), !3039)
  %1 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %0, ptr undef), !dbg !3040
  %2 = icmp ne i8 %1, 25, !dbg !3041
  br i1 %2, label %if.then, label %if.done, !dbg !3042

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @"internal/reflectlite.errTypeKey", align 8, !dbg !3043
    #dbg_value(ptr %3, !3034, !DIExpression(), !3043)
  %4 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %3, 1, !dbg !3043
  %5 = extractvalue { ptr, ptr } %4, 0, !dbg !3044
  %6 = extractvalue { ptr, ptr } %4, 1, !dbg !3044
  call void @runtime._panic(ptr %5, ptr %6, ptr undef), !dbg !3044
  unreachable, !dbg !3044

if.done:                                          ; preds = %entry
    #dbg_value(ptr %0, !3033, !DIExpression(), !3045)
  %7 = getelementptr inbounds %"internal/reflectlite.namedType", ptr %0, i32 0, i32 4, !dbg !3046
  %8 = icmp eq ptr %7, null, !dbg !3046
  br i1 %8, label %deref.throw, label %deref.next, !dbg !3046

deref.next:                                       ; preds = %if.done
  %9 = load ptr, ptr %7, align 8, !dbg !3046
  ret ptr %9, !dbg !3047

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3046
  unreachable, !dbg !3046
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.RawType).name"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !3048 {
entry:
    #dbg_value(ptr %t, !3050, !DIExpression(), !3069)
    #dbg_value(ptr %t, !3050, !DIExpression(), !3070)
    #dbg_value(ptr %t, !3051, !DIExpression(), !3071)
    #dbg_value(ptr %t, !3051, !DIExpression(), !3072)
  %0 = getelementptr i8, ptr %t, i64 32, !dbg !3073
    #dbg_value(ptr %0, !3061, !DIExpression(), !3074)
    #dbg_value(ptr %t, !3051, !DIExpression(), !3075)
  %1 = getelementptr inbounds %"internal/reflectlite.namedType", ptr %t, i32 0, i32 1, !dbg !3076
  %2 = icmp eq ptr %1, null, !dbg !3076
  br i1 %2, label %deref.throw, label %deref.next, !dbg !3076

deref.next:                                       ; preds = %entry
  %3 = load i16, ptr %1, align 2, !dbg !3076
  %4 = and i16 %3, -32768, !dbg !3077
  %5 = icmp ne i16 %4, 0, !dbg !3078
  br i1 %5, label %if.then, label %if.done, !dbg !3079

if.then:                                          ; preds = %deref.next
    #dbg_value(ptr %0, !3061, !DIExpression(), !3080)
    #dbg_value(ptr %0, !3062, !DIExpression(), !3081)
    #dbg_value(ptr %0, !3061, !DIExpression(), !3082)
    #dbg_value(ptr %0, !3062, !DIExpression(), !3083)
  %6 = getelementptr inbounds %"internal/reflectlite.methodSet", ptr %0, i32 0, i32 0, !dbg !3084
  %7 = icmp eq ptr %6, null, !dbg !3084
  br i1 %7, label %deref.throw1, label %deref.next2, !dbg !3084

deref.next2:                                      ; preds = %if.then
  %8 = load i64, ptr %6, align 8, !dbg !3084
  %9 = mul i64 %8, 8, !dbg !3085
  %10 = add i64 8, %9, !dbg !3086
  %11 = getelementptr i8, ptr %0, i64 %10, !dbg !3087
    #dbg_value(ptr %11, !3061, !DIExpression(), !3088)
  br label %if.done, !dbg !3079

if.done:                                          ; preds = %deref.next2, %deref.next
  %12 = phi ptr [ %0, %deref.next ], [ %11, %deref.next2 ], !dbg !3074
    #dbg_value(ptr %12, !3061, !DIExpression(), !3089)
  %13 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %12, ptr undef), !dbg !3090
  ret %runtime._string %13, !dbg !3091

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3076
  unreachable, !dbg !3076

deref.throw1:                                     ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3084
  unreachable, !dbg !3084
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/reflectlite.rawStructField" @"(*internal/reflectlite.RawType).rawField"(ptr dereferenceable_or_null(1) %t, i64 %n, ptr %context) unnamed_addr #1 !dbg !3092 {
entry:
    #dbg_value(ptr %t, !3096, !DIExpression(), !3120)
    #dbg_value(i64 %n, !3097, !DIExpression(), !3120)
    #dbg_value(ptr %t, !3096, !DIExpression(), !3121)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !3122
  %1 = icmp ne i8 %0, 26, !dbg !3123
  br i1 %1, label %if.then, label %if.done, !dbg !3124

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeField", align 8, !dbg !3125
    #dbg_value(ptr %2, !3098, !DIExpression(), !3125)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !3125
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !3126
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !3126
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !3126
  unreachable, !dbg !3126

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !3096, !DIExpression(), !3127)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !3128
    #dbg_value(ptr %6, !3099, !DIExpression(), !3129)
    #dbg_value(i64 %n, !3097, !DIExpression(), !3130)
    #dbg_value(ptr %6, !3099, !DIExpression(), !3131)
  %7 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 5, !dbg !3132
  %8 = icmp eq ptr %7, null, !dbg !3132
  br i1 %8, label %deref.throw, label %deref.next, !dbg !3132

deref.next:                                       ; preds = %if.done
  %9 = load i16, ptr %7, align 2, !dbg !3132
  %10 = zext i16 %9 to i64, !dbg !3133
  %11 = icmp uge i64 %n, %10, !dbg !3134
  br i1 %11, label %if.then1, label %if.done2, !dbg !3124

if.then1:                                         ; preds = %deref.next
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"internal/reflectlite$pack.108", ptr undef), !dbg !3135
  unreachable, !dbg !3135

if.done2:                                         ; preds = %deref.next
    #dbg_value(ptr %6, !3099, !DIExpression(), !3136)
  %12 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 6, !dbg !3137
  %13 = icmp eq ptr %12, null, !dbg !3138
  br i1 %13, label %gep.throw, label %gep.next, !dbg !3138

gep.next:                                         ; preds = %if.done2
  %14 = getelementptr inbounds [1 x { ptr, ptr }], ptr %12, i32 0, i64 0, !dbg !3138
    #dbg_value(i64 %n, !3097, !DIExpression(), !3139)
  %15 = mul i64 %n, 16, !dbg !3140
  %16 = getelementptr i8, ptr %14, i64 %15, !dbg !3141
    #dbg_value(ptr %16, !3113, !DIExpression(), !3142)
    #dbg_value(ptr %16, !3113, !DIExpression(), !3143)
  %17 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 1, !dbg !3144
  %18 = icmp eq ptr %17, null, !dbg !3144
  br i1 %18, label %deref.throw3, label %deref.next4, !dbg !3144

deref.next4:                                      ; preds = %gep.next
  %19 = load ptr, ptr %17, align 8, !dbg !3144
    #dbg_value(ptr %19, !3115, !DIExpression(), !3145)
    #dbg_value(ptr %19, !3115, !DIExpression(), !3146)
  %20 = load i8, ptr %19, align 1, !dbg !3147
    #dbg_value(i8 %20, !3116, !DIExpression(), !3148)
    #dbg_value(ptr %19, !3115, !DIExpression(), !3149)
  %21 = getelementptr i8, ptr %19, i64 1, !dbg !3150
    #dbg_value(ptr %21, !3115, !DIExpression(), !3151)
    #dbg_value(ptr %21, !3115, !DIExpression(), !3152)
  %22 = icmp eq ptr %21, null, !dbg !3153
  %23 = and i1 %22, true, !dbg !3153
  %24 = or i1 %23, false, !dbg !3153
  br i1 %24, label %unsafe.Slice.throw, label %unsafe.Slice.next, !dbg !3153

unsafe.Slice.next:                                ; preds = %deref.next4
  %25 = insertvalue { ptr, i64, i64 } undef, ptr %21, 0, !dbg !3153
  %26 = insertvalue { ptr, i64, i64 } %25, i64 5, 1, !dbg !3153
  %27 = insertvalue { ptr, i64, i64 } %26, i64 5, 2, !dbg !3153
  %28 = extractvalue { ptr, i64, i64 } %27, 0, !dbg !3154
  %29 = extractvalue { ptr, i64, i64 } %27, 1, !dbg !3154
  %30 = extractvalue { ptr, i64, i64 } %27, 2, !dbg !3154
  %31 = call { i32, i64 } @"internal/reflectlite.uvarint32"(ptr %28, i64 %29, i64 %30, ptr undef), !dbg !3154
  %32 = extractvalue { i32, i64 } %31, 0, !dbg !3154
    #dbg_value(i32 %32, !3117, !DIExpression(), !3155)
  %33 = extractvalue { i32, i64 } %31, 1, !dbg !3154
    #dbg_value(i64 %33, !3118, !DIExpression(), !3156)
    #dbg_value(ptr %21, !3115, !DIExpression(), !3157)
    #dbg_value(i64 %33, !3118, !DIExpression(), !3158)
  %34 = getelementptr i8, ptr %21, i64 %33, !dbg !3159
    #dbg_value(ptr %34, !3115, !DIExpression(), !3160)
    #dbg_value(ptr %34, !3115, !DIExpression(), !3161)
  %35 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %34, ptr undef), !dbg !3162
    #dbg_value(%runtime._string %35, !3119, !DIExpression(), !3163)
    #dbg_value(ptr %34, !3115, !DIExpression(), !3164)
    #dbg_value(%runtime._string %35, !3119, !DIExpression(), !3165)
  %len = extractvalue %runtime._string %35, 1, !dbg !3166
  %36 = getelementptr i8, ptr %34, i64 %len, !dbg !3167
    #dbg_value(ptr %36, !3115, !DIExpression(), !3168)
    #dbg_value(ptr %6, !3099, !DIExpression(), !3169)
    #dbg_value(ptr %16, !3113, !DIExpression(), !3170)
  %37 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 0, !dbg !3171
  %38 = icmp eq ptr %37, null, !dbg !3171
  br i1 %38, label %deref.throw5, label %deref.next6, !dbg !3171

deref.next6:                                      ; preds = %unsafe.Slice.next
  %39 = load ptr, ptr %37, align 8, !dbg !3171
    #dbg_value(ptr %36, !3115, !DIExpression(), !3172)
    #dbg_value(i8 %20, !3116, !DIExpression(), !3173)
    #dbg_value(%runtime._string %35, !3119, !DIExpression(), !3174)
    #dbg_value(i32 %32, !3117, !DIExpression(), !3175)
  %40 = extractvalue %runtime._string %35, 0, !dbg !3176
  %41 = extractvalue %runtime._string %35, 1, !dbg !3176
  %42 = call %"internal/reflectlite.rawStructField" @"internal/reflectlite.rawStructFieldFromPointer"(ptr %6, ptr %39, ptr %36, i8 %20, ptr %40, i64 %41, i32 %32, ptr undef), !dbg !3176
  ret %"internal/reflectlite.rawStructField" %42, !dbg !3177

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3132
  unreachable, !dbg !3132

gep.throw:                                        ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !3138
  unreachable, !dbg !3138

deref.throw3:                                     ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3144
  unreachable, !dbg !3144

unsafe.Slice.throw:                               ; preds = %deref.next4
  call void @runtime.unsafeSlicePanic(ptr undef), !dbg !3153
  unreachable, !dbg !3153

deref.throw5:                                     ; preds = %unsafe.Slice.next
  call void @runtime.nilPanic(ptr undef), !dbg !3171
  unreachable, !dbg !3171
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"internal/reflectlite.uvarint32"(ptr %buf.data, i64 %buf.len, i64 %buf.cap, ptr %context) unnamed_addr #1 !dbg !3178 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %buf.data, 0, !dbg !3187
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %buf.len, 1, !dbg !3187
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %buf.cap, 2, !dbg !3187
    #dbg_value(ptr %buf.data, !3182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3187)
    #dbg_value(i64 %buf.len, !3182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3187)
    #dbg_value(i64 %buf.cap, !3182, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3187)
    #dbg_value(i32 0, !3183, !DIExpression(), !3188)
    #dbg_value(i64 0, !3184, !DIExpression(), !3189)
    #dbg_value({ ptr, i64, i64 } %2, !3182, !DIExpression(), !3190)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3191
  br label %rangeindex.loop, !dbg !3191

rangeindex.loop:                                  ; preds = %if.done, %entry
  %3 = phi i32 [ 0, %entry ], [ %23, %if.done ], !dbg !3188
  %4 = phi i64 [ 0, %entry ], [ %24, %if.done ], !dbg !3189
  %5 = phi i64 [ -1, %entry ], [ %6, %if.done ], !dbg !3191
  %6 = add i64 %5, 1, !dbg !3191
  %7 = icmp slt i64 %6, %len, !dbg !3191
  br i1 %7, label %rangeindex.body, label %rangeindex.done, !dbg !3191

rangeindex.body:                                  ; preds = %rangeindex.loop
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3190
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3190
  %8 = icmp uge i64 %6, %indexaddr.len, !dbg !3190
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !3190

lookup.next:                                      ; preds = %rangeindex.body
  %9 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %6, !dbg !3190
  %10 = load i8, ptr %9, align 1, !dbg !3191
    #dbg_value(i64 %6, !3185, !DIExpression(), !3192)
    #dbg_value(i8 %10, !3186, !DIExpression(), !3193)
    #dbg_value(i8 %10, !3186, !DIExpression(), !3194)
  %11 = icmp ult i8 %10, -128, !dbg !3195
  br i1 %11, label %if.then, label %if.done, !dbg !3191

if.then:                                          ; preds = %lookup.next
    #dbg_value(i32 %3, !3183, !DIExpression(), !3196)
    #dbg_value(i8 %10, !3186, !DIExpression(), !3197)
  %12 = zext i8 %10 to i32, !dbg !3198
    #dbg_value(i64 %4, !3184, !DIExpression(), !3199)
  %shift.overflow = icmp uge i64 %4, 32, !dbg !3200
  %13 = trunc i64 %4 to i32, !dbg !3200
  %14 = shl i32 %12, %13, !dbg !3200
  %shift.result = select i1 %shift.overflow, i32 0, i32 %14, !dbg !3200
  %15 = or i32 %3, %shift.result, !dbg !3201
    #dbg_value(i64 %6, !3185, !DIExpression(), !3202)
  %16 = add i64 %6, 1, !dbg !3203
  %17 = insertvalue { i32, i64 } zeroinitializer, i32 %15, 0, !dbg !3204
  %18 = insertvalue { i32, i64 } %17, i64 %16, 1, !dbg !3204
  ret { i32, i64 } %18, !dbg !3204

if.done:                                          ; preds = %lookup.next
    #dbg_value(i8 %10, !3186, !DIExpression(), !3205)
  %19 = and i8 %10, 127, !dbg !3206
  %20 = zext i8 %19 to i32, !dbg !3207
    #dbg_value(i64 %4, !3184, !DIExpression(), !3208)
  %shift.overflow1 = icmp uge i64 %4, 32, !dbg !3209
  %21 = trunc i64 %4 to i32, !dbg !3209
  %22 = shl i32 %20, %21, !dbg !3209
  %shift.result2 = select i1 %shift.overflow1, i32 0, i32 %22, !dbg !3209
  %23 = or i32 %3, %shift.result2, !dbg !3210
    #dbg_value(i32 %23, !3183, !DIExpression(), !3210)
  %24 = add i64 %4, 7, !dbg !3211
    #dbg_value(i64 %24, !3184, !DIExpression(), !3211)
  br label %rangeindex.loop, !dbg !3191

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret { i32, i64 } zeroinitializer, !dbg !3212

lookup.throw:                                     ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !3190
  unreachable, !dbg !3190
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/reflectlite.readStringZ"(ptr %data, ptr %context) unnamed_addr #1 !dbg !3213 {
entry:
    #dbg_value(ptr %data, !3217, !DIExpression(), !3220)
    #dbg_value(ptr %data, !3217, !DIExpression(), !3221)
    #dbg_value(ptr %data, !3218, !DIExpression(), !3222)
    #dbg_value(i64 0, !3219, !DIExpression(), !3223)
  br label %for.loop, !dbg !3224

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi ptr [ %data, %entry ], [ %5, %for.body ], !dbg !3225
  %1 = phi i64 [ 0, %entry ], [ %4, %for.body ], !dbg !3223
    #dbg_value(ptr %0, !3217, !DIExpression(), !3226)
  %2 = load i8, ptr %0, align 1, !dbg !3227
  %3 = icmp ne i8 %2, 0, !dbg !3228
  br i1 %3, label %for.body, label %for.done, !dbg !3224

for.body:                                         ; preds = %for.loop
  %4 = add i64 %1, 1, !dbg !3229
    #dbg_value(i64 %4, !3219, !DIExpression(), !3229)
    #dbg_value(ptr %0, !3217, !DIExpression(), !3230)
  %5 = getelementptr i8, ptr %0, i64 1, !dbg !3231
    #dbg_value(ptr %5, !3217, !DIExpression(), !3232)
  br label %for.loop, !dbg !3224

for.done:                                         ; preds = %for.loop
  %complit = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 133 to ptr), ptr undef), !dbg !3233
  %6 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !3234
    #dbg_value(ptr %data, !3218, !DIExpression(), !3235)
  %7 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !3236
    #dbg_value(i64 %1, !3219, !DIExpression(), !3237)
  %8 = icmp eq ptr %6, null, !dbg !3234
  br i1 %8, label %store.throw, label %store.next, !dbg !3234

store.next:                                       ; preds = %for.done
  store ptr %data, ptr %6, align 8, !dbg !3234
    #dbg_value(ptr %data, !3218, !DIExpression(), !3235)
  %9 = icmp eq ptr %7, null, !dbg !3236
  br i1 %9, label %store.throw1, label %store.next2, !dbg !3236

store.next2:                                      ; preds = %store.next
  store i64 %1, ptr %7, align 8, !dbg !3236
    #dbg_value(i64 %1, !3219, !DIExpression(), !3237)
  %10 = load %runtime._string, ptr %complit, align 8, !dbg !3238
  ret %runtime._string %10, !dbg !3239

store.throw:                                      ; preds = %for.done
  call void @runtime.nilPanic(ptr undef), !dbg !3234
  unreachable, !dbg !3234

store.throw1:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !3236
  unreachable, !dbg !3236
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/reflectlite.rawStructField" @"internal/reflectlite.rawStructFieldFromPointer"(ptr dereferenceable_or_null(48) %descriptor, ptr dereferenceable_or_null(1) %fieldType, ptr %data, i8 %flagsByte, ptr readonly %name.data, i64 %name.len, i32 %offset, ptr %context) unnamed_addr #1 !dbg !3240 {
entry:
    #dbg_value(ptr %descriptor, !3244, !DIExpression(), !3253)
    #dbg_value(ptr %fieldType, !3245, !DIExpression(), !3253)
    #dbg_value(ptr %data, !3246, !DIExpression(), !3253)
    #dbg_value(i8 %flagsByte, !3247, !DIExpression(), !3253)
  %complit5 = alloca %"internal/reflectlite.rawStructField", align 8, !dbg !3253
  %0 = insertvalue %runtime._string zeroinitializer, ptr %name.data, 0, !dbg !3253
  %1 = insertvalue %runtime._string %0, i64 %name.len, 1, !dbg !3253
    #dbg_value(ptr %name.data, !3248, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3253)
    #dbg_value(i64 %name.len, !3248, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3253)
    #dbg_value(i32 %offset, !3249, !DIExpression(), !3253)
    #dbg_value(%runtime._string zeroinitializer, !3250, !DIExpression(), !3254)
    #dbg_value(i8 %flagsByte, !3247, !DIExpression(), !3255)
  %2 = and i8 %flagsByte, 2, !dbg !3256
  %3 = icmp ne i8 %2, 0, !dbg !3257
  br i1 %3, label %if.then, label %if.done, !dbg !3258

if.then:                                          ; preds = %entry
    #dbg_value(ptr %data, !3246, !DIExpression(), !3259)
  %4 = getelementptr i8, ptr %data, i64 1, !dbg !3260
    #dbg_value(ptr %4, !3246, !DIExpression(), !3261)
    #dbg_value(ptr %4, !3246, !DIExpression(), !3262)
  %5 = load i8, ptr %4, align 1, !dbg !3263
  %6 = zext i8 %5 to i64, !dbg !3264
    #dbg_value(i64 %6, !3251, !DIExpression(), !3265)
    #dbg_value(ptr %4, !3246, !DIExpression(), !3266)
  %7 = getelementptr i8, ptr %4, i64 1, !dbg !3267
    #dbg_value(ptr %7, !3246, !DIExpression(), !3268)
  %complit = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 133 to ptr), ptr undef), !dbg !3269
  %8 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !3270
    #dbg_value(ptr %7, !3246, !DIExpression(), !3271)
  %9 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !3272
    #dbg_value(i64 %6, !3251, !DIExpression(), !3273)
  %10 = icmp eq ptr %8, null, !dbg !3270
  br i1 %10, label %store.throw, label %store.next, !dbg !3270

store.next:                                       ; preds = %if.then
  store ptr %7, ptr %8, align 8, !dbg !3270
    #dbg_value(ptr %7, !3246, !DIExpression(), !3271)
  %11 = icmp eq ptr %9, null, !dbg !3272
  br i1 %11, label %store.throw3, label %store.next4, !dbg !3272

store.next4:                                      ; preds = %store.next
  store i64 %6, ptr %9, align 8, !dbg !3272
    #dbg_value(i64 %6, !3251, !DIExpression(), !3273)
  %12 = load %runtime._string, ptr %complit, align 8, !dbg !3274
    #dbg_value(%runtime._string %12, !3250, !DIExpression(), !3275)
  br label %if.done, !dbg !3258

if.done:                                          ; preds = %store.next4, %entry
  %13 = phi %runtime._string [ zeroinitializer, %entry ], [ %12, %store.next4 ], !dbg !3254
    #dbg_value(%runtime._string zeroinitializer, !3252, !DIExpression(), !3276)
    #dbg_value(i8 %flagsByte, !3247, !DIExpression(), !3277)
  %14 = and i8 %flagsByte, 4, !dbg !3278
  %15 = icmp eq i8 %14, 0, !dbg !3279
  br i1 %15, label %if.then1, label %if.done2, !dbg !3258

if.then1:                                         ; preds = %if.done
    #dbg_value(ptr %descriptor, !3244, !DIExpression(), !3280)
  %16 = icmp eq ptr %descriptor, null, !dbg !3281
  br i1 %16, label %gep.throw, label %gep.next, !dbg !3281

gep.next:                                         ; preds = %if.then1
  %17 = getelementptr inbounds %"internal/reflectlite.structType", ptr %descriptor, i32 0, i32 3, !dbg !3281
  %18 = icmp eq ptr %17, null, !dbg !3281
  br i1 %18, label %deref.throw, label %deref.next, !dbg !3281

deref.next:                                       ; preds = %gep.next
  %19 = load ptr, ptr %17, align 8, !dbg !3281
  %20 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %19, ptr undef), !dbg !3282
    #dbg_value(%runtime._string %20, !3252, !DIExpression(), !3283)
  br label %if.done2, !dbg !3258

if.done2:                                         ; preds = %deref.next, %if.done
  %21 = phi %runtime._string [ zeroinitializer, %if.done ], [ %20, %deref.next ], !dbg !3276
  store %"internal/reflectlite.rawStructField" zeroinitializer, ptr %complit5, align 8, !dbg !3253
  %22 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 0, !dbg !3284
    #dbg_value(%runtime._string %1, !3248, !DIExpression(), !3285)
  %23 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 1, !dbg !3286
    #dbg_value(%runtime._string %21, !3252, !DIExpression(), !3287)
  %24 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 2, !dbg !3288
    #dbg_value(ptr %fieldType, !3245, !DIExpression(), !3289)
  %25 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 3, !dbg !3290
    #dbg_value(%runtime._string %13, !3250, !DIExpression(), !3291)
  %26 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 5, !dbg !3292
    #dbg_value(i8 %flagsByte, !3247, !DIExpression(), !3293)
  %27 = and i8 %flagsByte, 1, !dbg !3294
  %28 = icmp ne i8 %27, 0, !dbg !3295
  %29 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 4, !dbg !3296
    #dbg_value(i32 %offset, !3249, !DIExpression(), !3297)
  %30 = zext i32 %offset to i64, !dbg !3298
  %31 = icmp eq ptr %22, null, !dbg !3284
  br i1 %31, label %store.throw6, label %store.next7, !dbg !3284

store.next7:                                      ; preds = %if.done2
  store %runtime._string %1, ptr %22, align 8, !dbg !3284
    #dbg_value(%runtime._string %1, !3248, !DIExpression(), !3285)
  %32 = icmp eq ptr %23, null, !dbg !3286
  br i1 %32, label %store.throw8, label %store.next9, !dbg !3286

store.next9:                                      ; preds = %store.next7
  store %runtime._string %21, ptr %23, align 8, !dbg !3286
    #dbg_value(%runtime._string %21, !3252, !DIExpression(), !3287)
  %33 = icmp eq ptr %24, null, !dbg !3288
  br i1 %33, label %store.throw10, label %store.next11, !dbg !3288

store.next11:                                     ; preds = %store.next9
  store ptr %fieldType, ptr %24, align 8, !dbg !3288
    #dbg_value(ptr %fieldType, !3245, !DIExpression(), !3289)
  %34 = icmp eq ptr %25, null, !dbg !3290
  br i1 %34, label %store.throw12, label %store.next13, !dbg !3290

store.next13:                                     ; preds = %store.next11
  store %runtime._string %13, ptr %25, align 8, !dbg !3290
  %35 = icmp eq ptr %26, null, !dbg !3292
  br i1 %35, label %store.throw14, label %store.next15, !dbg !3292

store.next15:                                     ; preds = %store.next13
  store i1 %28, ptr %26, align 1, !dbg !3292
  %36 = icmp eq ptr %29, null, !dbg !3296
  br i1 %36, label %store.throw16, label %store.next17, !dbg !3296

store.next17:                                     ; preds = %store.next15
  store i64 %30, ptr %29, align 8, !dbg !3296
  %37 = load %"internal/reflectlite.rawStructField", ptr %complit5, align 8, !dbg !3299
  ret %"internal/reflectlite.rawStructField" %37, !dbg !3300

store.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3270
  unreachable, !dbg !3270

store.throw3:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !3272
  unreachable, !dbg !3272

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3281
  unreachable, !dbg !3281

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3281
  unreachable, !dbg !3281

store.throw6:                                     ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !3284
  unreachable, !dbg !3284

store.throw8:                                     ; preds = %store.next7
  call void @runtime.nilPanic(ptr undef), !dbg !3286
  unreachable, !dbg !3286

store.throw10:                                    ; preds = %store.next9
  call void @runtime.nilPanic(ptr undef), !dbg !3288
  unreachable, !dbg !3288

store.throw12:                                    ; preds = %store.next11
  call void @runtime.nilPanic(ptr undef), !dbg !3290
  unreachable, !dbg !3290

store.throw14:                                    ; preds = %store.next13
  call void @runtime.nilPanic(ptr undef), !dbg !3292
  unreachable, !dbg !3292

store.throw16:                                    ; preds = %store.next15
  call void @runtime.nilPanic(ptr undef), !dbg !3296
  unreachable, !dbg !3296
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.Kind).String"(i8 %k, ptr %context) unnamed_addr #1 !dbg !3301 {
entry:
    #dbg_value(i8 %k, !3306, !DIExpression(), !3307)
    #dbg_value(i8 %k, !3306, !DIExpression(), !3308)
  %0 = icmp eq i8 %k, 0, !dbg !3309
  br i1 %0, label %switch.body, label %switch.next, !dbg !3310

switch.body:                                      ; preds = %entry
  ret %runtime._string { ptr @"internal/reflectlite$string.41", i64 7 }, !dbg !3311

switch.next:                                      ; preds = %entry
  %1 = icmp eq i8 %k, 1, !dbg !3312
  br i1 %1, label %switch.body1, label %switch.next2, !dbg !3310

switch.body1:                                     ; preds = %switch.next
  ret %runtime._string { ptr @"internal/reflectlite$string.42", i64 4 }, !dbg !3313

switch.next2:                                     ; preds = %switch.next
  %2 = icmp eq i8 %k, 2, !dbg !3314
  br i1 %2, label %switch.body3, label %switch.next4, !dbg !3310

switch.body3:                                     ; preds = %switch.next2
  ret %runtime._string { ptr @"internal/reflectlite$string.43", i64 3 }, !dbg !3315

switch.next4:                                     ; preds = %switch.next2
  %3 = icmp eq i8 %k, 3, !dbg !3316
  br i1 %3, label %switch.body5, label %switch.next6, !dbg !3310

switch.body5:                                     ; preds = %switch.next4
  ret %runtime._string { ptr @"internal/reflectlite$string.44", i64 4 }, !dbg !3317

switch.next6:                                     ; preds = %switch.next4
  %4 = icmp eq i8 %k, 4, !dbg !3318
  br i1 %4, label %switch.body7, label %switch.next8, !dbg !3310

switch.body7:                                     ; preds = %switch.next6
  ret %runtime._string { ptr @"internal/reflectlite$string.45", i64 5 }, !dbg !3319

switch.next8:                                     ; preds = %switch.next6
  %5 = icmp eq i8 %k, 5, !dbg !3320
  br i1 %5, label %switch.body9, label %switch.next10, !dbg !3310

switch.body9:                                     ; preds = %switch.next8
  ret %runtime._string { ptr @"internal/reflectlite$string.46", i64 5 }, !dbg !3321

switch.next10:                                    ; preds = %switch.next8
  %6 = icmp eq i8 %k, 6, !dbg !3322
  br i1 %6, label %switch.body11, label %switch.next12, !dbg !3310

switch.body11:                                    ; preds = %switch.next10
  ret %runtime._string { ptr @"internal/reflectlite$string.47", i64 5 }, !dbg !3323

switch.next12:                                    ; preds = %switch.next10
  %7 = icmp eq i8 %k, 7, !dbg !3324
  br i1 %7, label %switch.body13, label %switch.next14, !dbg !3310

switch.body13:                                    ; preds = %switch.next12
  ret %runtime._string { ptr @"internal/reflectlite$string.48", i64 4 }, !dbg !3325

switch.next14:                                    ; preds = %switch.next12
  %8 = icmp eq i8 %k, 8, !dbg !3326
  br i1 %8, label %switch.body15, label %switch.next16, !dbg !3310

switch.body15:                                    ; preds = %switch.next14
  ret %runtime._string { ptr @"internal/reflectlite$string.49", i64 5 }, !dbg !3327

switch.next16:                                    ; preds = %switch.next14
  %9 = icmp eq i8 %k, 9, !dbg !3328
  br i1 %9, label %switch.body17, label %switch.next18, !dbg !3310

switch.body17:                                    ; preds = %switch.next16
  ret %runtime._string { ptr @"internal/reflectlite$string.50", i64 6 }, !dbg !3329

switch.next18:                                    ; preds = %switch.next16
  %10 = icmp eq i8 %k, 10, !dbg !3330
  br i1 %10, label %switch.body19, label %switch.next20, !dbg !3310

switch.body19:                                    ; preds = %switch.next18
  ret %runtime._string { ptr @"internal/reflectlite$string.51", i64 6 }, !dbg !3331

switch.next20:                                    ; preds = %switch.next18
  %11 = icmp eq i8 %k, 11, !dbg !3332
  br i1 %11, label %switch.body21, label %switch.next22, !dbg !3310

switch.body21:                                    ; preds = %switch.next20
  ret %runtime._string { ptr @"internal/reflectlite$string.52", i64 6 }, !dbg !3333

switch.next22:                                    ; preds = %switch.next20
  %12 = icmp eq i8 %k, 12, !dbg !3334
  br i1 %12, label %switch.body23, label %switch.next24, !dbg !3310

switch.body23:                                    ; preds = %switch.next22
  ret %runtime._string { ptr @"internal/reflectlite$string.53", i64 7 }, !dbg !3335

switch.next24:                                    ; preds = %switch.next22
  %13 = icmp eq i8 %k, 13, !dbg !3336
  br i1 %13, label %switch.body25, label %switch.next26, !dbg !3310

switch.body25:                                    ; preds = %switch.next24
  ret %runtime._string { ptr @"internal/reflectlite$string.54", i64 7 }, !dbg !3337

switch.next26:                                    ; preds = %switch.next24
  %14 = icmp eq i8 %k, 14, !dbg !3338
  br i1 %14, label %switch.body27, label %switch.next28, !dbg !3310

switch.body27:                                    ; preds = %switch.next26
  ret %runtime._string { ptr @"internal/reflectlite$string.55", i64 7 }, !dbg !3339

switch.next28:                                    ; preds = %switch.next26
  %15 = icmp eq i8 %k, 15, !dbg !3340
  br i1 %15, label %switch.body29, label %switch.next30, !dbg !3310

switch.body29:                                    ; preds = %switch.next28
  ret %runtime._string { ptr @"internal/reflectlite$string.56", i64 9 }, !dbg !3341

switch.next30:                                    ; preds = %switch.next28
  %16 = icmp eq i8 %k, 16, !dbg !3342
  br i1 %16, label %switch.body31, label %switch.next32, !dbg !3310

switch.body31:                                    ; preds = %switch.next30
  ret %runtime._string { ptr @"internal/reflectlite$string.57", i64 10 }, !dbg !3343

switch.next32:                                    ; preds = %switch.next30
  %17 = icmp eq i8 %k, 17, !dbg !3344
  br i1 %17, label %switch.body33, label %switch.next34, !dbg !3310

switch.body33:                                    ; preds = %switch.next32
  ret %runtime._string { ptr @"internal/reflectlite$string.58", i64 6 }, !dbg !3345

switch.next34:                                    ; preds = %switch.next32
  %18 = icmp eq i8 %k, 18, !dbg !3346
  br i1 %18, label %switch.body35, label %switch.next36, !dbg !3310

switch.body35:                                    ; preds = %switch.next34
  ret %runtime._string { ptr @"internal/reflectlite$string.59", i64 14 }, !dbg !3347

switch.next36:                                    ; preds = %switch.next34
  %19 = icmp eq i8 %k, 19, !dbg !3348
  br i1 %19, label %switch.body37, label %switch.next38, !dbg !3310

switch.body37:                                    ; preds = %switch.next36
  ret %runtime._string { ptr @"internal/reflectlite$string.60", i64 4 }, !dbg !3349

switch.next38:                                    ; preds = %switch.next36
  %20 = icmp eq i8 %k, 20, !dbg !3350
  br i1 %20, label %switch.body39, label %switch.next40, !dbg !3310

switch.body39:                                    ; preds = %switch.next38
  ret %runtime._string { ptr @"internal/reflectlite$string.61", i64 9 }, !dbg !3351

switch.next40:                                    ; preds = %switch.next38
  %21 = icmp eq i8 %k, 21, !dbg !3352
  br i1 %21, label %switch.body41, label %switch.next42, !dbg !3310

switch.body41:                                    ; preds = %switch.next40
  ret %runtime._string { ptr @"internal/reflectlite$string.62", i64 3 }, !dbg !3353

switch.next42:                                    ; preds = %switch.next40
  %22 = icmp eq i8 %k, 22, !dbg !3354
  br i1 %22, label %switch.body43, label %switch.next44, !dbg !3310

switch.body43:                                    ; preds = %switch.next42
  ret %runtime._string { ptr @"internal/reflectlite$string.63", i64 5 }, !dbg !3355

switch.next44:                                    ; preds = %switch.next42
  %23 = icmp eq i8 %k, 23, !dbg !3356
  br i1 %23, label %switch.body45, label %switch.next46, !dbg !3310

switch.body45:                                    ; preds = %switch.next44
  ret %runtime._string { ptr @"internal/reflectlite$string.64", i64 5 }, !dbg !3357

switch.next46:                                    ; preds = %switch.next44
  %24 = icmp eq i8 %k, 24, !dbg !3358
  br i1 %24, label %switch.body47, label %switch.next48, !dbg !3310

switch.body47:                                    ; preds = %switch.next46
  ret %runtime._string { ptr @"internal/reflectlite$string.65", i64 4 }, !dbg !3359

switch.next48:                                    ; preds = %switch.next46
  %25 = icmp eq i8 %k, 25, !dbg !3360
  br i1 %25, label %switch.body49, label %switch.next50, !dbg !3310

switch.body49:                                    ; preds = %switch.next48
  ret %runtime._string { ptr @"internal/reflectlite$string.66", i64 3 }, !dbg !3361

switch.next50:                                    ; preds = %switch.next48
  %26 = icmp eq i8 %k, 26, !dbg !3362
  br i1 %26, label %switch.body51, label %switch.next52, !dbg !3310

switch.body51:                                    ; preds = %switch.next50
  ret %runtime._string { ptr @"internal/reflectlite$string.67", i64 6 }, !dbg !3363

switch.next52:                                    ; preds = %switch.next50
    #dbg_value(i8 %k, !3306, !DIExpression(), !3364)
  %27 = sext i8 %k to i64, !dbg !3365
  %28 = call %runtime._string @"internal/itoa.Itoa"(i64 %27, ptr undef), !dbg !3366
  %29 = extractvalue %runtime._string %28, 0, !dbg !3367
  %30 = extractvalue %runtime._string %28, 1, !dbg !3367
  %31 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.68", i64 4, ptr %29, i64 %30, ptr undef), !dbg !3367
  ret %runtime._string %31, !dbg !3368
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/reflectlite.quote"(ptr readonly %s.data, i64 %s.len, ptr %context) unnamed_addr #1 !dbg !3369 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !3375
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !3375
    #dbg_value(ptr %s.data, !3371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3375)
    #dbg_value(i64 %s.len, !3371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3375)
    #dbg_value(%runtime._string %1, !3371, !DIExpression(), !3376)
  %len = extractvalue %runtime._string %1, 1, !dbg !3377
  %2 = mul i64 3, %len, !dbg !3378
  %3 = icmp eq i64 %2, -9223372036854775808, !dbg !3379
  %4 = and i1 false, %3, !dbg !3379
  %5 = select i1 %4, i64 1, i64 2, !dbg !3379
  %6 = sdiv i64 %2, %5, !dbg !3379
  %slice.lowhigh = icmp ugt i64 0, %6, !dbg !3380
  %slice.highmax = icmp ugt i64 %6, %6, !dbg !3380
  %slice.maxcap = icmp ugt i64 %6, 9223372036854775807, !dbg !3380
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !3380
  %slice.lowcap = or i1 %slice.lowmax, %slice.maxcap, !dbg !3380
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !3380

slice.next:                                       ; preds = %entry
  %makeslice.cap = mul i64 1, %6, !dbg !3380
  %makeslice.buf = call align 1 ptr @runtime.alloc(i64 %makeslice.cap, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3380
  %7 = insertvalue { ptr, i64, i64 } undef, ptr %makeslice.buf, 0, !dbg !3380
  %8 = insertvalue { ptr, i64, i64 } %7, i64 0, 1, !dbg !3380
  %9 = insertvalue { ptr, i64, i64 } %8, i64 %6, 2, !dbg !3380
    #dbg_value({ ptr, i64, i64 } %9, !3372, !DIExpression(), !3381)
    #dbg_value({ ptr, i64, i64 } %9, !3372, !DIExpression(), !3382)
  %varargs = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3383
  %10 = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !3383
  store i8 34, ptr %10, align 1, !dbg !3383
  %slice.ptr = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !3383
  %11 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !3383
  %12 = insertvalue { ptr, i64, i64 } %11, i64 1, 1, !dbg !3383
  %13 = insertvalue { ptr, i64, i64 } %12, i64 1, 2, !dbg !3383
  %append.srcBuf = extractvalue { ptr, i64, i64 } %9, 0, !dbg !3384
  %append.srcLen = extractvalue { ptr, i64, i64 } %9, 1, !dbg !3384
  %append.srcCap = extractvalue { ptr, i64, i64 } %9, 2, !dbg !3384
  %append.elemsBuf = extractvalue { ptr, i64, i64 } %13, 0, !dbg !3384
  %append.elemsLen = extractvalue { ptr, i64, i64 } %13, 1, !dbg !3384
  %append.new = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf, ptr %append.elemsBuf, i64 %append.srcLen, i64 %append.srcCap, i64 %append.elemsLen, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3384
  %append.newPtr = extractvalue { ptr, i64, i64 } %append.new, 0, !dbg !3384
  %append.newLen = extractvalue { ptr, i64, i64 } %append.new, 1, !dbg !3384
  %append.newCap = extractvalue { ptr, i64, i64 } %append.new, 2, !dbg !3384
  %14 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr, 0, !dbg !3384
  %15 = insertvalue { ptr, i64, i64 } %14, i64 %append.newLen, 1, !dbg !3384
  %16 = insertvalue { ptr, i64, i64 } %15, i64 %append.newCap, 2, !dbg !3384
    #dbg_value({ ptr, i64, i64 } %16, !3372, !DIExpression(), !3385)
    #dbg_value(i64 0, !3373, !DIExpression(), !3386)
  br label %for.loop, !dbg !3387

for.loop:                                         ; preds = %slice.next50, %slice.next
  %17 = phi %runtime._string [ %1, %slice.next ], [ %76, %slice.next50 ], !dbg !3388
  %18 = phi { ptr, i64, i64 } [ %16, %slice.next ], [ %70, %slice.next50 ], !dbg !3381
    #dbg_value(%runtime._string %17, !3371, !DIExpression(), !3389)
  %len3 = extractvalue %runtime._string %17, 1, !dbg !3390
  %19 = icmp sgt i64 %len3, 0, !dbg !3391
  br i1 %19, label %for.body, label %for.done, !dbg !3387

for.body:                                         ; preds = %for.loop
    #dbg_value(%runtime._string %17, !3371, !DIExpression(), !3392)
  %len4 = extractvalue %runtime._string %17, 1, !dbg !3393
  %20 = icmp uge i64 0, %len4, !dbg !3393
  br i1 %20, label %lookup.throw, label %lookup.next, !dbg !3393

lookup.next:                                      ; preds = %for.body
  %21 = extractvalue %runtime._string %17, 0, !dbg !3393
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !3393
  %23 = load i8, ptr %22, align 1, !dbg !3393
  %24 = zext i8 %23 to i32, !dbg !3394
    #dbg_value(i32 %24, !3374, !DIExpression(), !3395)
    #dbg_value(i64 1, !3373, !DIExpression(), !3396)
    #dbg_value(i32 %24, !3374, !DIExpression(), !3397)
  %25 = icmp sge i32 %24, 128, !dbg !3398
  br i1 %25, label %if.then, label %if.done, !dbg !3387

if.then:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %17, !3371, !DIExpression(), !3399)
  %26 = extractvalue %runtime._string %17, 0, !dbg !3400
  %27 = extractvalue %runtime._string %17, 1, !dbg !3400
  %28 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(ptr %26, i64 %27, ptr undef), !dbg !3400
  %29 = extractvalue { i32, i64 } %28, 0, !dbg !3400
    #dbg_value(i32 %29, !3374, !DIExpression(), !3401)
  %30 = extractvalue { i32, i64 } %28, 1, !dbg !3400
    #dbg_value(i64 %30, !3373, !DIExpression(), !3402)
  br label %if.done, !dbg !3387

if.done:                                          ; preds = %if.then, %lookup.next
  %31 = phi i64 [ 1, %lookup.next ], [ %30, %if.then ], !dbg !3386
  %32 = phi i32 [ %24, %lookup.next ], [ %29, %if.then ], !dbg !3395
    #dbg_value(i64 %31, !3373, !DIExpression(), !3403)
  %33 = icmp eq i64 %31, 1, !dbg !3404
  br i1 %33, label %cond.true, label %if.done2, !dbg !3387

cond.true:                                        ; preds = %if.done
    #dbg_value(i32 %32, !3374, !DIExpression(), !3405)
  %34 = icmp eq i32 %32, 65533, !dbg !3406
  br i1 %34, label %if.then1, label %if.done2, !dbg !3387

if.then1:                                         ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } %18, !3372, !DIExpression(), !3407)
  %append.srcBuf5 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !3408
  %append.srcLen6 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !3408
  %append.srcCap7 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !3408
  %append.new8 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf5, ptr @"internal/reflectlite$string.20", i64 %append.srcLen6, i64 %append.srcCap7, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3408
  %append.newPtr9 = extractvalue { ptr, i64, i64 } %append.new8, 0, !dbg !3408
  %append.newLen10 = extractvalue { ptr, i64, i64 } %append.new8, 1, !dbg !3408
  %append.newCap11 = extractvalue { ptr, i64, i64 } %append.new8, 2, !dbg !3408
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr9, 0, !dbg !3408
  %36 = insertvalue { ptr, i64, i64 } %35, i64 %append.newLen10, 1, !dbg !3408
  %37 = insertvalue { ptr, i64, i64 } %36, i64 %append.newCap11, 2, !dbg !3408
    #dbg_value({ ptr, i64, i64 } %37, !3372, !DIExpression(), !3409)
    #dbg_value({ ptr, i64, i64 } %37, !3372, !DIExpression(), !3410)
    #dbg_value(%runtime._string %17, !3371, !DIExpression(), !3411)
  %len12 = extractvalue %runtime._string %17, 1, !dbg !3412
  %38 = icmp uge i64 0, %len12, !dbg !3412
  br i1 %38, label %lookup.throw13, label %lookup.next14, !dbg !3412

lookup.next14:                                    ; preds = %if.then1
  %39 = extractvalue %runtime._string %17, 0, !dbg !3412
  %40 = getelementptr inbounds i8, ptr %39, i64 0, !dbg !3412
  %41 = load i8, ptr %40, align 1, !dbg !3412
  %42 = lshr i8 %41, 4, !dbg !3413
  %shift.result = select i1 false, i8 0, i8 %42, !dbg !3413
  %43 = zext i8 %shift.result to i64, !dbg !3414
  %44 = icmp uge i64 %43, 15, !dbg !3414
  br i1 %44, label %lookup.throw15, label %lookup.next16, !dbg !3414

lookup.next16:                                    ; preds = %lookup.next14
  %45 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.21", i64 %43, !dbg !3414
  %46 = load i8, ptr %45, align 1, !dbg !3414
  %varargs17 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3415
  %47 = getelementptr inbounds [1 x i8], ptr %varargs17, i32 0, i64 0, !dbg !3415
  store i8 %46, ptr %47, align 1, !dbg !3414
  %slice.ptr18 = getelementptr inbounds [1 x i8], ptr %varargs17, i32 0, i64 0, !dbg !3415
  %48 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr18, 0, !dbg !3415
  %49 = insertvalue { ptr, i64, i64 } %48, i64 1, 1, !dbg !3415
  %50 = insertvalue { ptr, i64, i64 } %49, i64 1, 2, !dbg !3415
  %append.srcBuf19 = extractvalue { ptr, i64, i64 } %37, 0, !dbg !3416
  %append.srcLen20 = extractvalue { ptr, i64, i64 } %37, 1, !dbg !3416
  %append.srcCap21 = extractvalue { ptr, i64, i64 } %37, 2, !dbg !3416
  %append.elemsBuf22 = extractvalue { ptr, i64, i64 } %50, 0, !dbg !3416
  %append.elemsLen23 = extractvalue { ptr, i64, i64 } %50, 1, !dbg !3416
  %append.new24 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf19, ptr %append.elemsBuf22, i64 %append.srcLen20, i64 %append.srcCap21, i64 %append.elemsLen23, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3416
  %append.newPtr25 = extractvalue { ptr, i64, i64 } %append.new24, 0, !dbg !3416
  %append.newLen26 = extractvalue { ptr, i64, i64 } %append.new24, 1, !dbg !3416
  %append.newCap27 = extractvalue { ptr, i64, i64 } %append.new24, 2, !dbg !3416
  %51 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr25, 0, !dbg !3416
  %52 = insertvalue { ptr, i64, i64 } %51, i64 %append.newLen26, 1, !dbg !3416
  %53 = insertvalue { ptr, i64, i64 } %52, i64 %append.newCap27, 2, !dbg !3416
    #dbg_value({ ptr, i64, i64 } %53, !3372, !DIExpression(), !3417)
    #dbg_value({ ptr, i64, i64 } %53, !3372, !DIExpression(), !3418)
    #dbg_value(%runtime._string %17, !3371, !DIExpression(), !3419)
  %len28 = extractvalue %runtime._string %17, 1, !dbg !3420
  %54 = icmp uge i64 0, %len28, !dbg !3420
  br i1 %54, label %lookup.throw29, label %lookup.next30, !dbg !3420

lookup.next30:                                    ; preds = %lookup.next16
  %55 = extractvalue %runtime._string %17, 0, !dbg !3420
  %56 = getelementptr inbounds i8, ptr %55, i64 0, !dbg !3420
  %57 = load i8, ptr %56, align 1, !dbg !3420
  %58 = and i8 %57, 15, !dbg !3421
  %59 = zext i8 %58 to i64, !dbg !3422
  %60 = icmp uge i64 %59, 15, !dbg !3422
  br i1 %60, label %lookup.throw31, label %lookup.next32, !dbg !3422

lookup.next32:                                    ; preds = %lookup.next30
  %61 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.22", i64 %59, !dbg !3422
  %62 = load i8, ptr %61, align 1, !dbg !3422
  %varargs33 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3423
  %63 = getelementptr inbounds [1 x i8], ptr %varargs33, i32 0, i64 0, !dbg !3423
  store i8 %62, ptr %63, align 1, !dbg !3422
  %slice.ptr34 = getelementptr inbounds [1 x i8], ptr %varargs33, i32 0, i64 0, !dbg !3423
  %64 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr34, 0, !dbg !3423
  %65 = insertvalue { ptr, i64, i64 } %64, i64 1, 1, !dbg !3423
  %66 = insertvalue { ptr, i64, i64 } %65, i64 1, 2, !dbg !3423
  %append.srcBuf35 = extractvalue { ptr, i64, i64 } %53, 0, !dbg !3424
  %append.srcLen36 = extractvalue { ptr, i64, i64 } %53, 1, !dbg !3424
  %append.srcCap37 = extractvalue { ptr, i64, i64 } %53, 2, !dbg !3424
  %append.elemsBuf38 = extractvalue { ptr, i64, i64 } %66, 0, !dbg !3424
  %append.elemsLen39 = extractvalue { ptr, i64, i64 } %66, 1, !dbg !3424
  %append.new40 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf35, ptr %append.elemsBuf38, i64 %append.srcLen36, i64 %append.srcCap37, i64 %append.elemsLen39, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3424
  %append.newPtr41 = extractvalue { ptr, i64, i64 } %append.new40, 0, !dbg !3424
  %append.newLen42 = extractvalue { ptr, i64, i64 } %append.new40, 1, !dbg !3424
  %append.newCap43 = extractvalue { ptr, i64, i64 } %append.new40, 2, !dbg !3424
  %67 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr41, 0, !dbg !3424
  %68 = insertvalue { ptr, i64, i64 } %67, i64 %append.newLen42, 1, !dbg !3424
  %69 = insertvalue { ptr, i64, i64 } %68, i64 %append.newCap43, 2, !dbg !3424
    #dbg_value({ ptr, i64, i64 } %69, !3372, !DIExpression(), !3425)
  br label %for.post, !dbg !3387

for.post:                                         ; preds = %if.done2, %lookup.next32
  %70 = phi { ptr, i64, i64 } [ %69, %lookup.next32 ], [ %80, %if.done2 ], !dbg !3381
    #dbg_value(%runtime._string %17, !3371, !DIExpression(), !3426)
    #dbg_value(i64 %31, !3373, !DIExpression(), !3427)
  %71 = extractvalue %runtime._string %17, 0, !dbg !3428
  %72 = extractvalue %runtime._string %17, 1, !dbg !3428
  %slice.lowhigh44 = icmp ugt i64 %31, %72, !dbg !3428
  %slice.highmax45 = icmp ugt i64 %72, %72, !dbg !3428
  %slice.maxcap46 = icmp ugt i64 %72, %72, !dbg !3428
  %slice.lowmax47 = or i1 %slice.lowhigh44, %slice.highmax45, !dbg !3428
  %slice.lowcap48 = or i1 %slice.lowmax47, %slice.maxcap46, !dbg !3428
  br i1 %slice.lowcap48, label %slice.throw49, label %slice.next50, !dbg !3428

slice.next50:                                     ; preds = %for.post
  %73 = getelementptr inbounds i8, ptr %71, i64 %31, !dbg !3428
  %74 = sub i64 %72, %31, !dbg !3428
  %75 = insertvalue %runtime._string undef, ptr %73, 0, !dbg !3428
  %76 = insertvalue %runtime._string %75, i64 %74, 1, !dbg !3428
    #dbg_value(%runtime._string %76, !3371, !DIExpression(), !3429)
  br label %for.loop, !dbg !3387

if.done2:                                         ; preds = %cond.true, %if.done
    #dbg_value({ ptr, i64, i64 } %18, !3372, !DIExpression(), !3430)
    #dbg_value(i32 %32, !3374, !DIExpression(), !3431)
  %77 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !3432
  %78 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !3432
  %79 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !3432
  %80 = call { ptr, i64, i64 } @"internal/reflectlite.appendEscapedRune"(ptr %77, i64 %78, i64 %79, i32 %32, ptr undef), !dbg !3432
    #dbg_value({ ptr, i64, i64 } %80, !3372, !DIExpression(), !3433)
  br label %for.post, !dbg !3387

for.done:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %18, !3372, !DIExpression(), !3434)
  %varargs51 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3435
  %81 = getelementptr inbounds [1 x i8], ptr %varargs51, i32 0, i64 0, !dbg !3435
  store i8 34, ptr %81, align 1, !dbg !3435
  %slice.ptr52 = getelementptr inbounds [1 x i8], ptr %varargs51, i32 0, i64 0, !dbg !3435
  %82 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr52, 0, !dbg !3435
  %83 = insertvalue { ptr, i64, i64 } %82, i64 1, 1, !dbg !3435
  %84 = insertvalue { ptr, i64, i64 } %83, i64 1, 2, !dbg !3435
  %append.srcBuf53 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !3436
  %append.srcLen54 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !3436
  %append.srcCap55 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !3436
  %append.elemsBuf56 = extractvalue { ptr, i64, i64 } %84, 0, !dbg !3436
  %append.elemsLen57 = extractvalue { ptr, i64, i64 } %84, 1, !dbg !3436
  %append.new58 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf53, ptr %append.elemsBuf56, i64 %append.srcLen54, i64 %append.srcCap55, i64 %append.elemsLen57, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3436
  %append.newPtr59 = extractvalue { ptr, i64, i64 } %append.new58, 0, !dbg !3436
  %append.newLen60 = extractvalue { ptr, i64, i64 } %append.new58, 1, !dbg !3436
  %append.newCap61 = extractvalue { ptr, i64, i64 } %append.new58, 2, !dbg !3436
  %85 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr59, 0, !dbg !3436
  %86 = insertvalue { ptr, i64, i64 } %85, i64 %append.newLen60, 1, !dbg !3436
  %87 = insertvalue { ptr, i64, i64 } %86, i64 %append.newCap61, 2, !dbg !3436
    #dbg_value({ ptr, i64, i64 } %87, !3372, !DIExpression(), !3437)
    #dbg_value({ ptr, i64, i64 } %87, !3372, !DIExpression(), !3438)
  %88 = extractvalue { ptr, i64, i64 } %87, 0, !dbg !3439
  %89 = extractvalue { ptr, i64, i64 } %87, 1, !dbg !3439
  %90 = extractvalue { ptr, i64, i64 } %87, 2, !dbg !3439
  %91 = call %runtime._string @runtime.stringFromBytes(ptr %88, i64 %89, i64 %90, ptr undef), !dbg !3439
  ret %runtime._string %91, !dbg !3440

slice.throw:                                      ; preds = %entry
  call void @runtime.slicePanic(ptr undef), !dbg !3380
  unreachable, !dbg !3380

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !3393
  unreachable, !dbg !3393

lookup.throw13:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !3412
  unreachable, !dbg !3412

lookup.throw15:                                   ; preds = %lookup.next14
  call void @runtime.lookupPanic(ptr undef), !dbg !3414
  unreachable, !dbg !3414

lookup.throw29:                                   ; preds = %lookup.next16
  call void @runtime.lookupPanic(ptr undef), !dbg !3420
  unreachable, !dbg !3420

lookup.throw31:                                   ; preds = %lookup.next30
  call void @runtime.lookupPanic(ptr undef), !dbg !3422
  unreachable, !dbg !3422

slice.throw49:                                    ; preds = %for.post
  call void @runtime.slicePanic(ptr undef), !dbg !3428
  unreachable, !dbg !3428
}

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @"internal/reflectlite.appendEscapedRune"(ptr %buf.data, i64 %buf.len, i64 %buf.cap, i32 %r, ptr %context) unnamed_addr #1 !dbg !3441 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %buf.data, 0, !dbg !3448
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %buf.len, 1, !dbg !3448
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %buf.cap, 2, !dbg !3448
    #dbg_value(ptr %buf.data, !3443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3448)
    #dbg_value(i64 %buf.len, !3443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3448)
    #dbg_value(i64 %buf.cap, !3443, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3448)
    #dbg_value(i32 %r, !3444, !DIExpression(), !3448)
  %runeTmp = call align 1 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3449
    #dbg_value(i32 %r, !3444, !DIExpression(), !3450)
  %3 = icmp eq i32 %r, 34, !dbg !3451
  br i1 %3, label %if.then, label %cond.false, !dbg !3452

if.then:                                          ; preds = %cond.false, %entry
    #dbg_value({ ptr, i64, i64 } %2, !3443, !DIExpression(), !3453)
  %varargs = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3454
  %4 = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !3454
  store i8 92, ptr %4, align 1, !dbg !3454
  %slice.ptr = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !3454
  %5 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !3454
  %6 = insertvalue { ptr, i64, i64 } %5, i64 1, 1, !dbg !3454
  %7 = insertvalue { ptr, i64, i64 } %6, i64 1, 2, !dbg !3454
  %append.srcBuf = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3455
  %append.srcLen = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3455
  %append.srcCap = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3455
  %append.elemsBuf = extractvalue { ptr, i64, i64 } %7, 0, !dbg !3455
  %append.elemsLen = extractvalue { ptr, i64, i64 } %7, 1, !dbg !3455
  %append.new = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf, ptr %append.elemsBuf, i64 %append.srcLen, i64 %append.srcCap, i64 %append.elemsLen, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3455
  %append.newPtr = extractvalue { ptr, i64, i64 } %append.new, 0, !dbg !3455
  %append.newLen = extractvalue { ptr, i64, i64 } %append.new, 1, !dbg !3455
  %append.newCap = extractvalue { ptr, i64, i64 } %append.new, 2, !dbg !3455
  %8 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr, 0, !dbg !3455
  %9 = insertvalue { ptr, i64, i64 } %8, i64 %append.newLen, 1, !dbg !3455
  %10 = insertvalue { ptr, i64, i64 } %9, i64 %append.newCap, 2, !dbg !3455
    #dbg_value({ ptr, i64, i64 } %10, !3443, !DIExpression(), !3456)
    #dbg_value({ ptr, i64, i64 } %10, !3443, !DIExpression(), !3457)
    #dbg_value(i32 %r, !3444, !DIExpression(), !3458)
  %11 = trunc i32 %r to i8, !dbg !3459
  %varargs23 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3460
  %12 = getelementptr inbounds [1 x i8], ptr %varargs23, i32 0, i64 0, !dbg !3460
  store i8 %11, ptr %12, align 1, !dbg !3459
  %slice.ptr24 = getelementptr inbounds [1 x i8], ptr %varargs23, i32 0, i64 0, !dbg !3460
  %13 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr24, 0, !dbg !3460
  %14 = insertvalue { ptr, i64, i64 } %13, i64 1, 1, !dbg !3460
  %15 = insertvalue { ptr, i64, i64 } %14, i64 1, 2, !dbg !3460
  %append.srcBuf25 = extractvalue { ptr, i64, i64 } %10, 0, !dbg !3461
  %append.srcLen26 = extractvalue { ptr, i64, i64 } %10, 1, !dbg !3461
  %append.srcCap27 = extractvalue { ptr, i64, i64 } %10, 2, !dbg !3461
  %append.elemsBuf28 = extractvalue { ptr, i64, i64 } %15, 0, !dbg !3461
  %append.elemsLen29 = extractvalue { ptr, i64, i64 } %15, 1, !dbg !3461
  %append.new30 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf25, ptr %append.elemsBuf28, i64 %append.srcLen26, i64 %append.srcCap27, i64 %append.elemsLen29, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3461
  %append.newPtr31 = extractvalue { ptr, i64, i64 } %append.new30, 0, !dbg !3461
  %append.newLen32 = extractvalue { ptr, i64, i64 } %append.new30, 1, !dbg !3461
  %append.newCap33 = extractvalue { ptr, i64, i64 } %append.new30, 2, !dbg !3461
  %16 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr31, 0, !dbg !3461
  %17 = insertvalue { ptr, i64, i64 } %16, i64 %append.newLen32, 1, !dbg !3461
  %18 = insertvalue { ptr, i64, i64 } %17, i64 %append.newCap33, 2, !dbg !3461
    #dbg_value({ ptr, i64, i64 } %18, !3443, !DIExpression(), !3462)
    #dbg_value({ ptr, i64, i64 } %18, !3443, !DIExpression(), !3463)
  ret { ptr, i64, i64 } %18, !dbg !3464

cond.false:                                       ; preds = %entry
    #dbg_value(i32 %r, !3444, !DIExpression(), !3465)
  %19 = icmp eq i32 %r, 92, !dbg !3466
  br i1 %19, label %if.then, label %if.done, !dbg !3452

if.done:                                          ; preds = %cond.false
    #dbg_value(i32 %r, !3444, !DIExpression(), !3467)
  %20 = call i1 @"internal/reflectlite.isPrint"(i32 %r, ptr undef), !dbg !3468
  br i1 %20, label %if.then1, label %if.done2, !dbg !3452

if.then1:                                         ; preds = %if.done
  %slice.ptr34 = getelementptr inbounds [4 x i8], ptr %runeTmp, i32 0, i64 0, !dbg !3469
  %21 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr34, 0, !dbg !3469
  %22 = insertvalue { ptr, i64, i64 } %21, i64 4, 1, !dbg !3469
  %23 = insertvalue { ptr, i64, i64 } %22, i64 4, 2, !dbg !3469
    #dbg_value(i32 %r, !3444, !DIExpression(), !3470)
  %24 = extractvalue { ptr, i64, i64 } %23, 0, !dbg !3471
  %25 = extractvalue { ptr, i64, i64 } %23, 1, !dbg !3471
  %26 = extractvalue { ptr, i64, i64 } %23, 2, !dbg !3471
  %27 = call i64 @"unicode/utf8.EncodeRune"(ptr %24, i64 %25, i64 %26, i32 %r, ptr undef), !dbg !3471
    #dbg_value(i64 %27, !3445, !DIExpression(), !3472)
    #dbg_value({ ptr, i64, i64 } %2, !3443, !DIExpression(), !3473)
    #dbg_value(i64 %27, !3445, !DIExpression(), !3474)
  %slice.lowhigh = icmp ugt i64 0, %27, !dbg !3475
  %slice.highmax = icmp ugt i64 %27, 4, !dbg !3475
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !3475
  %slice.lowcap = or i1 %slice.lowmax, false, !dbg !3475
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !3475

slice.next:                                       ; preds = %if.then1
  %slice.len = sub i64 %27, 0, !dbg !3475
  %slice.ptr35 = getelementptr inbounds [4 x i8], ptr %runeTmp, i32 0, i64 0, !dbg !3475
  %28 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr35, 0, !dbg !3475
  %29 = insertvalue { ptr, i64, i64 } %28, i64 %slice.len, 1, !dbg !3475
  %30 = insertvalue { ptr, i64, i64 } %29, i64 4, 2, !dbg !3475
  %append.srcBuf36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3476
  %append.srcLen37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3476
  %append.srcCap38 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3476
  %append.elemsBuf39 = extractvalue { ptr, i64, i64 } %30, 0, !dbg !3476
  %append.elemsLen40 = extractvalue { ptr, i64, i64 } %30, 1, !dbg !3476
  %append.new41 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf36, ptr %append.elemsBuf39, i64 %append.srcLen37, i64 %append.srcCap38, i64 %append.elemsLen40, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3476
  %append.newPtr42 = extractvalue { ptr, i64, i64 } %append.new41, 0, !dbg !3476
  %append.newLen43 = extractvalue { ptr, i64, i64 } %append.new41, 1, !dbg !3476
  %append.newCap44 = extractvalue { ptr, i64, i64 } %append.new41, 2, !dbg !3476
  %31 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr42, 0, !dbg !3476
  %32 = insertvalue { ptr, i64, i64 } %31, i64 %append.newLen43, 1, !dbg !3476
  %33 = insertvalue { ptr, i64, i64 } %32, i64 %append.newCap44, 2, !dbg !3476
    #dbg_value({ ptr, i64, i64 } %33, !3443, !DIExpression(), !3477)
    #dbg_value({ ptr, i64, i64 } %33, !3443, !DIExpression(), !3478)
  ret { ptr, i64, i64 } %33, !dbg !3479

if.done2:                                         ; preds = %if.done
    #dbg_value(i32 %r, !3444, !DIExpression(), !3480)
  %34 = icmp eq i32 %r, 7, !dbg !3481
  br i1 %34, label %switch.body, label %switch.next, !dbg !3452

switch.body:                                      ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } %2, !3443, !DIExpression(), !3482)
  %append.srcBuf45 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3483
  %append.srcLen46 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3483
  %append.srcCap47 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3483
  %append.new48 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf45, ptr @"internal/reflectlite$string.23", i64 %append.srcLen46, i64 %append.srcCap47, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3483
  %append.newPtr49 = extractvalue { ptr, i64, i64 } %append.new48, 0, !dbg !3483
  %append.newLen50 = extractvalue { ptr, i64, i64 } %append.new48, 1, !dbg !3483
  %append.newCap51 = extractvalue { ptr, i64, i64 } %append.new48, 2, !dbg !3483
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr49, 0, !dbg !3483
  %36 = insertvalue { ptr, i64, i64 } %35, i64 %append.newLen50, 1, !dbg !3483
  %37 = insertvalue { ptr, i64, i64 } %36, i64 %append.newCap51, 2, !dbg !3483
    #dbg_value({ ptr, i64, i64 } %37, !3443, !DIExpression(), !3484)
  br label %switch.done, !dbg !3452

switch.done:                                      ; preds = %for.loop21, %for.loop, %lookup.next113, %switch.body13, %switch.body11, %switch.body9, %switch.body7, %switch.body5, %switch.body3, %switch.body
  %38 = phi { ptr, i64, i64 } [ %37, %switch.body ], [ %42, %switch.body3 ], [ %46, %switch.body5 ], [ %50, %switch.body7 ], [ %54, %switch.body9 ], [ %58, %switch.body11 ], [ %62, %switch.body13 ], [ %93, %lookup.next113 ], [ %100, %for.loop ], [ %122, %for.loop21 ], !dbg !3485
    #dbg_value({ ptr, i64, i64 } %38, !3443, !DIExpression(), !3486)
  ret { ptr, i64, i64 } %38, !dbg !3487

switch.next:                                      ; preds = %if.done2
  %39 = icmp eq i32 %r, 8, !dbg !3488
  br i1 %39, label %switch.body3, label %switch.next4, !dbg !3452

switch.body3:                                     ; preds = %switch.next
    #dbg_value({ ptr, i64, i64 } %2, !3443, !DIExpression(), !3489)
  %append.srcBuf52 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3490
  %append.srcLen53 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3490
  %append.srcCap54 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3490
  %append.new55 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf52, ptr @"internal/reflectlite$string.24", i64 %append.srcLen53, i64 %append.srcCap54, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3490
  %append.newPtr56 = extractvalue { ptr, i64, i64 } %append.new55, 0, !dbg !3490
  %append.newLen57 = extractvalue { ptr, i64, i64 } %append.new55, 1, !dbg !3490
  %append.newCap58 = extractvalue { ptr, i64, i64 } %append.new55, 2, !dbg !3490
  %40 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr56, 0, !dbg !3490
  %41 = insertvalue { ptr, i64, i64 } %40, i64 %append.newLen57, 1, !dbg !3490
  %42 = insertvalue { ptr, i64, i64 } %41, i64 %append.newCap58, 2, !dbg !3490
    #dbg_value({ ptr, i64, i64 } %42, !3443, !DIExpression(), !3491)
  br label %switch.done, !dbg !3452

switch.next4:                                     ; preds = %switch.next
  %43 = icmp eq i32 %r, 12, !dbg !3492
  br i1 %43, label %switch.body5, label %switch.next6, !dbg !3452

switch.body5:                                     ; preds = %switch.next4
    #dbg_value({ ptr, i64, i64 } %2, !3443, !DIExpression(), !3493)
  %append.srcBuf59 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3494
  %append.srcLen60 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3494
  %append.srcCap61 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3494
  %append.new62 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf59, ptr @"internal/reflectlite$string.25", i64 %append.srcLen60, i64 %append.srcCap61, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3494
  %append.newPtr63 = extractvalue { ptr, i64, i64 } %append.new62, 0, !dbg !3494
  %append.newLen64 = extractvalue { ptr, i64, i64 } %append.new62, 1, !dbg !3494
  %append.newCap65 = extractvalue { ptr, i64, i64 } %append.new62, 2, !dbg !3494
  %44 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr63, 0, !dbg !3494
  %45 = insertvalue { ptr, i64, i64 } %44, i64 %append.newLen64, 1, !dbg !3494
  %46 = insertvalue { ptr, i64, i64 } %45, i64 %append.newCap65, 2, !dbg !3494
    #dbg_value({ ptr, i64, i64 } %46, !3443, !DIExpression(), !3495)
  br label %switch.done, !dbg !3452

switch.next6:                                     ; preds = %switch.next4
  %47 = icmp eq i32 %r, 10, !dbg !3496
  br i1 %47, label %switch.body7, label %switch.next8, !dbg !3452

switch.body7:                                     ; preds = %switch.next6
    #dbg_value({ ptr, i64, i64 } %2, !3443, !DIExpression(), !3497)
  %append.srcBuf66 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3498
  %append.srcLen67 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3498
  %append.srcCap68 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3498
  %append.new69 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf66, ptr @"internal/reflectlite$string.26", i64 %append.srcLen67, i64 %append.srcCap68, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3498
  %append.newPtr70 = extractvalue { ptr, i64, i64 } %append.new69, 0, !dbg !3498
  %append.newLen71 = extractvalue { ptr, i64, i64 } %append.new69, 1, !dbg !3498
  %append.newCap72 = extractvalue { ptr, i64, i64 } %append.new69, 2, !dbg !3498
  %48 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr70, 0, !dbg !3498
  %49 = insertvalue { ptr, i64, i64 } %48, i64 %append.newLen71, 1, !dbg !3498
  %50 = insertvalue { ptr, i64, i64 } %49, i64 %append.newCap72, 2, !dbg !3498
    #dbg_value({ ptr, i64, i64 } %50, !3443, !DIExpression(), !3499)
  br label %switch.done, !dbg !3452

switch.next8:                                     ; preds = %switch.next6
  %51 = icmp eq i32 %r, 13, !dbg !3500
  br i1 %51, label %switch.body9, label %switch.next10, !dbg !3452

switch.body9:                                     ; preds = %switch.next8
    #dbg_value({ ptr, i64, i64 } %2, !3443, !DIExpression(), !3501)
  %append.srcBuf73 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3502
  %append.srcLen74 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3502
  %append.srcCap75 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3502
  %append.new76 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf73, ptr @"internal/reflectlite$string.27", i64 %append.srcLen74, i64 %append.srcCap75, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3502
  %append.newPtr77 = extractvalue { ptr, i64, i64 } %append.new76, 0, !dbg !3502
  %append.newLen78 = extractvalue { ptr, i64, i64 } %append.new76, 1, !dbg !3502
  %append.newCap79 = extractvalue { ptr, i64, i64 } %append.new76, 2, !dbg !3502
  %52 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr77, 0, !dbg !3502
  %53 = insertvalue { ptr, i64, i64 } %52, i64 %append.newLen78, 1, !dbg !3502
  %54 = insertvalue { ptr, i64, i64 } %53, i64 %append.newCap79, 2, !dbg !3502
    #dbg_value({ ptr, i64, i64 } %54, !3443, !DIExpression(), !3503)
  br label %switch.done, !dbg !3452

switch.next10:                                    ; preds = %switch.next8
  %55 = icmp eq i32 %r, 9, !dbg !3504
  br i1 %55, label %switch.body11, label %switch.next12, !dbg !3452

switch.body11:                                    ; preds = %switch.next10
    #dbg_value({ ptr, i64, i64 } %2, !3443, !DIExpression(), !3505)
  %append.srcBuf80 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3506
  %append.srcLen81 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3506
  %append.srcCap82 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3506
  %append.new83 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf80, ptr @"internal/reflectlite$string.28", i64 %append.srcLen81, i64 %append.srcCap82, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3506
  %append.newPtr84 = extractvalue { ptr, i64, i64 } %append.new83, 0, !dbg !3506
  %append.newLen85 = extractvalue { ptr, i64, i64 } %append.new83, 1, !dbg !3506
  %append.newCap86 = extractvalue { ptr, i64, i64 } %append.new83, 2, !dbg !3506
  %56 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr84, 0, !dbg !3506
  %57 = insertvalue { ptr, i64, i64 } %56, i64 %append.newLen85, 1, !dbg !3506
  %58 = insertvalue { ptr, i64, i64 } %57, i64 %append.newCap86, 2, !dbg !3506
    #dbg_value({ ptr, i64, i64 } %58, !3443, !DIExpression(), !3507)
  br label %switch.done, !dbg !3452

switch.next12:                                    ; preds = %switch.next10
  %59 = icmp eq i32 %r, 11, !dbg !3508
  br i1 %59, label %switch.body13, label %switch.next14, !dbg !3452

switch.body13:                                    ; preds = %switch.next12
    #dbg_value({ ptr, i64, i64 } %2, !3443, !DIExpression(), !3509)
  %append.srcBuf87 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3510
  %append.srcLen88 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3510
  %append.srcCap89 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3510
  %append.new90 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf87, ptr @"internal/reflectlite$string.29", i64 %append.srcLen88, i64 %append.srcCap89, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3510
  %append.newPtr91 = extractvalue { ptr, i64, i64 } %append.new90, 0, !dbg !3510
  %append.newLen92 = extractvalue { ptr, i64, i64 } %append.new90, 1, !dbg !3510
  %append.newCap93 = extractvalue { ptr, i64, i64 } %append.new90, 2, !dbg !3510
  %60 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr91, 0, !dbg !3510
  %61 = insertvalue { ptr, i64, i64 } %60, i64 %append.newLen92, 1, !dbg !3510
  %62 = insertvalue { ptr, i64, i64 } %61, i64 %append.newCap93, 2, !dbg !3510
    #dbg_value({ ptr, i64, i64 } %62, !3443, !DIExpression(), !3511)
  br label %switch.done, !dbg !3452

switch.next14:                                    ; preds = %switch.next12
    #dbg_value(i32 %r, !3444, !DIExpression(), !3512)
  %63 = icmp slt i32 %r, 32, !dbg !3513
  br i1 %63, label %binop.done, label %binop.rhs, !dbg !3452

binop.done:                                       ; preds = %binop.rhs, %switch.next14
  %64 = phi i1 [ true, %switch.next14 ], [ %140, %binop.rhs ], !dbg !3514
  br i1 %64, label %switch.body15, label %switch.next16, !dbg !3452

switch.body15:                                    ; preds = %binop.done
    #dbg_value({ ptr, i64, i64 } %2, !3443, !DIExpression(), !3515)
  %append.srcBuf94 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3516
  %append.srcLen95 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3516
  %append.srcCap96 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3516
  %append.new97 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf94, ptr @"internal/reflectlite$string.30", i64 %append.srcLen95, i64 %append.srcCap96, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3516
  %append.newPtr98 = extractvalue { ptr, i64, i64 } %append.new97, 0, !dbg !3516
  %append.newLen99 = extractvalue { ptr, i64, i64 } %append.new97, 1, !dbg !3516
  %append.newCap100 = extractvalue { ptr, i64, i64 } %append.new97, 2, !dbg !3516
  %65 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr98, 0, !dbg !3516
  %66 = insertvalue { ptr, i64, i64 } %65, i64 %append.newLen99, 1, !dbg !3516
  %67 = insertvalue { ptr, i64, i64 } %66, i64 %append.newCap100, 2, !dbg !3516
    #dbg_value({ ptr, i64, i64 } %67, !3443, !DIExpression(), !3517)
    #dbg_value({ ptr, i64, i64 } %67, !3443, !DIExpression(), !3518)
    #dbg_value(i32 %r, !3444, !DIExpression(), !3519)
  %68 = trunc i32 %r to i8, !dbg !3520
  %69 = lshr i8 %68, 4, !dbg !3521
  %shift.result = select i1 false, i8 0, i8 %69, !dbg !3521
  %70 = zext i8 %shift.result to i64, !dbg !3522
  %71 = icmp uge i64 %70, 15, !dbg !3522
  br i1 %71, label %lookup.throw, label %lookup.next, !dbg !3522

lookup.next:                                      ; preds = %switch.body15
  %72 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.31", i64 %70, !dbg !3522
  %73 = load i8, ptr %72, align 1, !dbg !3522
  %varargs101 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3523
  %74 = getelementptr inbounds [1 x i8], ptr %varargs101, i32 0, i64 0, !dbg !3523
  store i8 %73, ptr %74, align 1, !dbg !3522
  %slice.ptr102 = getelementptr inbounds [1 x i8], ptr %varargs101, i32 0, i64 0, !dbg !3523
  %75 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr102, 0, !dbg !3523
  %76 = insertvalue { ptr, i64, i64 } %75, i64 1, 1, !dbg !3523
  %77 = insertvalue { ptr, i64, i64 } %76, i64 1, 2, !dbg !3523
  %append.srcBuf103 = extractvalue { ptr, i64, i64 } %67, 0, !dbg !3524
  %append.srcLen104 = extractvalue { ptr, i64, i64 } %67, 1, !dbg !3524
  %append.srcCap105 = extractvalue { ptr, i64, i64 } %67, 2, !dbg !3524
  %append.elemsBuf106 = extractvalue { ptr, i64, i64 } %77, 0, !dbg !3524
  %append.elemsLen107 = extractvalue { ptr, i64, i64 } %77, 1, !dbg !3524
  %append.new108 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf103, ptr %append.elemsBuf106, i64 %append.srcLen104, i64 %append.srcCap105, i64 %append.elemsLen107, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3524
  %append.newPtr109 = extractvalue { ptr, i64, i64 } %append.new108, 0, !dbg !3524
  %append.newLen110 = extractvalue { ptr, i64, i64 } %append.new108, 1, !dbg !3524
  %append.newCap111 = extractvalue { ptr, i64, i64 } %append.new108, 2, !dbg !3524
  %78 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr109, 0, !dbg !3524
  %79 = insertvalue { ptr, i64, i64 } %78, i64 %append.newLen110, 1, !dbg !3524
  %80 = insertvalue { ptr, i64, i64 } %79, i64 %append.newCap111, 2, !dbg !3524
    #dbg_value({ ptr, i64, i64 } %80, !3443, !DIExpression(), !3525)
    #dbg_value({ ptr, i64, i64 } %80, !3443, !DIExpression(), !3526)
    #dbg_value(i32 %r, !3444, !DIExpression(), !3527)
  %81 = trunc i32 %r to i8, !dbg !3528
  %82 = and i8 %81, 15, !dbg !3529
  %83 = zext i8 %82 to i64, !dbg !3530
  %84 = icmp uge i64 %83, 15, !dbg !3530
  br i1 %84, label %lookup.throw112, label %lookup.next113, !dbg !3530

lookup.next113:                                   ; preds = %lookup.next
  %85 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.32", i64 %83, !dbg !3530
  %86 = load i8, ptr %85, align 1, !dbg !3530
  %varargs114 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3531
  %87 = getelementptr inbounds [1 x i8], ptr %varargs114, i32 0, i64 0, !dbg !3531
  store i8 %86, ptr %87, align 1, !dbg !3530
  %slice.ptr115 = getelementptr inbounds [1 x i8], ptr %varargs114, i32 0, i64 0, !dbg !3531
  %88 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr115, 0, !dbg !3531
  %89 = insertvalue { ptr, i64, i64 } %88, i64 1, 1, !dbg !3531
  %90 = insertvalue { ptr, i64, i64 } %89, i64 1, 2, !dbg !3531
  %append.srcBuf116 = extractvalue { ptr, i64, i64 } %80, 0, !dbg !3532
  %append.srcLen117 = extractvalue { ptr, i64, i64 } %80, 1, !dbg !3532
  %append.srcCap118 = extractvalue { ptr, i64, i64 } %80, 2, !dbg !3532
  %append.elemsBuf119 = extractvalue { ptr, i64, i64 } %90, 0, !dbg !3532
  %append.elemsLen120 = extractvalue { ptr, i64, i64 } %90, 1, !dbg !3532
  %append.new121 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf116, ptr %append.elemsBuf119, i64 %append.srcLen117, i64 %append.srcCap118, i64 %append.elemsLen120, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3532
  %append.newPtr122 = extractvalue { ptr, i64, i64 } %append.new121, 0, !dbg !3532
  %append.newLen123 = extractvalue { ptr, i64, i64 } %append.new121, 1, !dbg !3532
  %append.newCap124 = extractvalue { ptr, i64, i64 } %append.new121, 2, !dbg !3532
  %91 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr122, 0, !dbg !3532
  %92 = insertvalue { ptr, i64, i64 } %91, i64 %append.newLen123, 1, !dbg !3532
  %93 = insertvalue { ptr, i64, i64 } %92, i64 %append.newCap124, 2, !dbg !3532
    #dbg_value({ ptr, i64, i64 } %93, !3443, !DIExpression(), !3533)
  br label %switch.done, !dbg !3452

switch.next16:                                    ; preds = %binop.done
    #dbg_value(i32 %r, !3444, !DIExpression(), !3534)
  %94 = call i1 @"unicode/utf8.ValidRune"(i32 %r, ptr undef), !dbg !3535
  %95 = xor i1 %94, true, !dbg !3536
  br i1 %95, label %switch.body17, label %switch.next19, !dbg !3452

switch.body17:                                    ; preds = %switch.next16
    #dbg_value(i32 65533, !3444, !DIExpression(), !3537)
  br label %switch.body18, !dbg !3452

switch.body18:                                    ; preds = %switch.next19, %switch.body17
  %96 = phi i32 [ 65533, %switch.body17 ], [ %r, %switch.next19 ], !dbg !3538
    #dbg_value({ ptr, i64, i64 } %2, !3443, !DIExpression(), !3539)
  %append.srcBuf125 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3540
  %append.srcLen126 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3540
  %append.srcCap127 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3540
  %append.new128 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf125, ptr @"internal/reflectlite$string.33", i64 %append.srcLen126, i64 %append.srcCap127, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3540
  %append.newPtr129 = extractvalue { ptr, i64, i64 } %append.new128, 0, !dbg !3540
  %append.newLen130 = extractvalue { ptr, i64, i64 } %append.new128, 1, !dbg !3540
  %append.newCap131 = extractvalue { ptr, i64, i64 } %append.new128, 2, !dbg !3540
  %97 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr129, 0, !dbg !3540
  %98 = insertvalue { ptr, i64, i64 } %97, i64 %append.newLen130, 1, !dbg !3540
  %99 = insertvalue { ptr, i64, i64 } %98, i64 %append.newCap131, 2, !dbg !3540
    #dbg_value({ ptr, i64, i64 } %99, !3443, !DIExpression(), !3541)
    #dbg_value(i64 12, !3446, !DIExpression(), !3542)
  br label %for.loop, !dbg !3452

for.loop:                                         ; preds = %lookup.next133, %switch.body18
  %100 = phi { ptr, i64, i64 } [ %99, %switch.body18 ], [ %116, %lookup.next133 ], !dbg !3485
  %101 = phi i64 [ 12, %switch.body18 ], [ %117, %lookup.next133 ], !dbg !3542
    #dbg_value(i64 %101, !3446, !DIExpression(), !3543)
  %102 = icmp sge i64 %101, 0, !dbg !3544
  br i1 %102, label %for.body, label %switch.done, !dbg !3452

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %100, !3443, !DIExpression(), !3545)
    #dbg_value(i32 %96, !3444, !DIExpression(), !3546)
    #dbg_value(i64 %101, !3446, !DIExpression(), !3547)
  %shift.overflow = icmp uge i64 %101, 32, !dbg !3548
  %103 = trunc i64 %101 to i32, !dbg !3548
  %shift.offset = select i1 %shift.overflow, i32 31, i32 %103, !dbg !3548
  %104 = ashr i32 %96, %shift.offset, !dbg !3548
  %105 = and i32 %104, 15, !dbg !3549
  %106 = sext i32 %105 to i64, !dbg !3550
  %107 = icmp uge i64 %106, 15, !dbg !3550
  br i1 %107, label %lookup.throw132, label %lookup.next133, !dbg !3550

lookup.next133:                                   ; preds = %for.body
  %108 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.34", i64 %106, !dbg !3550
  %109 = load i8, ptr %108, align 1, !dbg !3550
  %varargs134 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3551
  %110 = getelementptr inbounds [1 x i8], ptr %varargs134, i32 0, i64 0, !dbg !3551
  store i8 %109, ptr %110, align 1, !dbg !3550
  %slice.ptr135 = getelementptr inbounds [1 x i8], ptr %varargs134, i32 0, i64 0, !dbg !3551
  %111 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr135, 0, !dbg !3551
  %112 = insertvalue { ptr, i64, i64 } %111, i64 1, 1, !dbg !3551
  %113 = insertvalue { ptr, i64, i64 } %112, i64 1, 2, !dbg !3551
  %append.srcBuf136 = extractvalue { ptr, i64, i64 } %100, 0, !dbg !3552
  %append.srcLen137 = extractvalue { ptr, i64, i64 } %100, 1, !dbg !3552
  %append.srcCap138 = extractvalue { ptr, i64, i64 } %100, 2, !dbg !3552
  %append.elemsBuf139 = extractvalue { ptr, i64, i64 } %113, 0, !dbg !3552
  %append.elemsLen140 = extractvalue { ptr, i64, i64 } %113, 1, !dbg !3552
  %append.new141 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf136, ptr %append.elemsBuf139, i64 %append.srcLen137, i64 %append.srcCap138, i64 %append.elemsLen140, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3552
  %append.newPtr142 = extractvalue { ptr, i64, i64 } %append.new141, 0, !dbg !3552
  %append.newLen143 = extractvalue { ptr, i64, i64 } %append.new141, 1, !dbg !3552
  %append.newCap144 = extractvalue { ptr, i64, i64 } %append.new141, 2, !dbg !3552
  %114 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr142, 0, !dbg !3552
  %115 = insertvalue { ptr, i64, i64 } %114, i64 %append.newLen143, 1, !dbg !3552
  %116 = insertvalue { ptr, i64, i64 } %115, i64 %append.newCap144, 2, !dbg !3552
    #dbg_value({ ptr, i64, i64 } %116, !3443, !DIExpression(), !3553)
  %117 = sub i64 %101, 4, !dbg !3554
    #dbg_value(i64 %117, !3446, !DIExpression(), !3554)
  br label %for.loop, !dbg !3452

switch.next19:                                    ; preds = %switch.next16
    #dbg_value(i32 %r, !3444, !DIExpression(), !3555)
  %118 = icmp slt i32 %r, 65536, !dbg !3556
  br i1 %118, label %switch.body18, label %switch.next20, !dbg !3452

switch.next20:                                    ; preds = %switch.next19
    #dbg_value({ ptr, i64, i64 } %2, !3443, !DIExpression(), !3557)
  %append.srcBuf145 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3558
  %append.srcLen146 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3558
  %append.srcCap147 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3558
  %append.new148 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf145, ptr @"internal/reflectlite$string.35", i64 %append.srcLen146, i64 %append.srcCap147, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3558
  %append.newPtr149 = extractvalue { ptr, i64, i64 } %append.new148, 0, !dbg !3558
  %append.newLen150 = extractvalue { ptr, i64, i64 } %append.new148, 1, !dbg !3558
  %append.newCap151 = extractvalue { ptr, i64, i64 } %append.new148, 2, !dbg !3558
  %119 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr149, 0, !dbg !3558
  %120 = insertvalue { ptr, i64, i64 } %119, i64 %append.newLen150, 1, !dbg !3558
  %121 = insertvalue { ptr, i64, i64 } %120, i64 %append.newCap151, 2, !dbg !3558
    #dbg_value({ ptr, i64, i64 } %121, !3443, !DIExpression(), !3559)
    #dbg_value(i64 28, !3447, !DIExpression(), !3560)
  br label %for.loop21, !dbg !3452

for.loop21:                                       ; preds = %lookup.next155, %switch.next20
  %122 = phi { ptr, i64, i64 } [ %121, %switch.next20 ], [ %138, %lookup.next155 ], !dbg !3485
  %123 = phi i64 [ 28, %switch.next20 ], [ %139, %lookup.next155 ], !dbg !3560
    #dbg_value(i64 %123, !3447, !DIExpression(), !3561)
  %124 = icmp sge i64 %123, 0, !dbg !3562
  br i1 %124, label %for.body22, label %switch.done, !dbg !3452

for.body22:                                       ; preds = %for.loop21
    #dbg_value({ ptr, i64, i64 } %122, !3443, !DIExpression(), !3563)
    #dbg_value(i32 %r, !3444, !DIExpression(), !3564)
    #dbg_value(i64 %123, !3447, !DIExpression(), !3565)
  %shift.overflow152 = icmp uge i64 %123, 32, !dbg !3566
  %125 = trunc i64 %123 to i32, !dbg !3566
  %shift.offset153 = select i1 %shift.overflow152, i32 31, i32 %125, !dbg !3566
  %126 = ashr i32 %r, %shift.offset153, !dbg !3566
  %127 = and i32 %126, 15, !dbg !3567
  %128 = sext i32 %127 to i64, !dbg !3568
  %129 = icmp uge i64 %128, 15, !dbg !3568
  br i1 %129, label %lookup.throw154, label %lookup.next155, !dbg !3568

lookup.next155:                                   ; preds = %for.body22
  %130 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.36", i64 %128, !dbg !3568
  %131 = load i8, ptr %130, align 1, !dbg !3568
  %varargs156 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3569
  %132 = getelementptr inbounds [1 x i8], ptr %varargs156, i32 0, i64 0, !dbg !3569
  store i8 %131, ptr %132, align 1, !dbg !3568
  %slice.ptr157 = getelementptr inbounds [1 x i8], ptr %varargs156, i32 0, i64 0, !dbg !3569
  %133 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr157, 0, !dbg !3569
  %134 = insertvalue { ptr, i64, i64 } %133, i64 1, 1, !dbg !3569
  %135 = insertvalue { ptr, i64, i64 } %134, i64 1, 2, !dbg !3569
  %append.srcBuf158 = extractvalue { ptr, i64, i64 } %122, 0, !dbg !3570
  %append.srcLen159 = extractvalue { ptr, i64, i64 } %122, 1, !dbg !3570
  %append.srcCap160 = extractvalue { ptr, i64, i64 } %122, 2, !dbg !3570
  %append.elemsBuf161 = extractvalue { ptr, i64, i64 } %135, 0, !dbg !3570
  %append.elemsLen162 = extractvalue { ptr, i64, i64 } %135, 1, !dbg !3570
  %append.new163 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf158, ptr %append.elemsBuf161, i64 %append.srcLen159, i64 %append.srcCap160, i64 %append.elemsLen162, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3570
  %append.newPtr164 = extractvalue { ptr, i64, i64 } %append.new163, 0, !dbg !3570
  %append.newLen165 = extractvalue { ptr, i64, i64 } %append.new163, 1, !dbg !3570
  %append.newCap166 = extractvalue { ptr, i64, i64 } %append.new163, 2, !dbg !3570
  %136 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr164, 0, !dbg !3570
  %137 = insertvalue { ptr, i64, i64 } %136, i64 %append.newLen165, 1, !dbg !3570
  %138 = insertvalue { ptr, i64, i64 } %137, i64 %append.newCap166, 2, !dbg !3570
    #dbg_value({ ptr, i64, i64 } %138, !3443, !DIExpression(), !3571)
  %139 = sub i64 %123, 4, !dbg !3572
    #dbg_value(i64 %139, !3447, !DIExpression(), !3572)
  br label %for.loop21, !dbg !3452

binop.rhs:                                        ; preds = %switch.next14
    #dbg_value(i32 %r, !3444, !DIExpression(), !3573)
  %140 = icmp eq i32 %r, 127, !dbg !3574
  br label %binop.done, !dbg !3452

slice.throw:                                      ; preds = %if.then1
  call void @runtime.slicePanic(ptr undef), !dbg !3475
  unreachable, !dbg !3475

lookup.throw:                                     ; preds = %switch.body15
  call void @runtime.lookupPanic(ptr undef), !dbg !3522
  unreachable, !dbg !3522

lookup.throw112:                                  ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !3530
  unreachable, !dbg !3530

lookup.throw132:                                  ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !3550
  unreachable, !dbg !3550

lookup.throw154:                                  ; preds = %for.body22
  call void @runtime.lookupPanic(ptr undef), !dbg !3568
  unreachable, !dbg !3568
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"internal/reflectlite.isPrint"(i32 %r, ptr %context) unnamed_addr #1 !dbg !3575 {
entry:
    #dbg_value(i32 %r, !3577, !DIExpression(), !3578)
    #dbg_value(i32 %r, !3577, !DIExpression(), !3579)
  %0 = icmp sle i32 %r, 255, !dbg !3580
  br i1 %0, label %if.then, label %if.done5, !dbg !3581

if.then:                                          ; preds = %entry
    #dbg_value(i32 %r, !3577, !DIExpression(), !3582)
  %1 = icmp sle i32 32, %r, !dbg !3583
  br i1 %1, label %cond.true, label %if.done, !dbg !3581

cond.true:                                        ; preds = %if.then
    #dbg_value(i32 %r, !3577, !DIExpression(), !3584)
  %2 = icmp sle i32 %r, 126, !dbg !3585
  br i1 %2, label %if.then1, label %if.done, !dbg !3581

if.then1:                                         ; preds = %cond.true
  ret i1 true, !dbg !3586

if.done:                                          ; preds = %cond.true, %if.then
    #dbg_value(i32 %r, !3577, !DIExpression(), !3587)
  %3 = icmp sle i32 161, %r, !dbg !3588
  br i1 %3, label %cond.true2, label %if.done4, !dbg !3581

cond.true2:                                       ; preds = %if.done
    #dbg_value(i32 %r, !3577, !DIExpression(), !3589)
  %4 = icmp sle i32 %r, 255, !dbg !3590
  br i1 %4, label %if.then3, label %if.done4, !dbg !3581

if.then3:                                         ; preds = %cond.true2
    #dbg_value(i32 %r, !3577, !DIExpression(), !3591)
  %5 = icmp ne i32 %r, 173, !dbg !3592
  ret i1 %5, !dbg !3593

if.done4:                                         ; preds = %cond.true2, %if.done
  ret i1 false, !dbg !3594

if.done5:                                         ; preds = %entry
  ret i1 false, !dbg !3595
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
define internal %runtime._string @"(internal/reflectlite.Kind).String$invoke"(ptr %0, ptr %1) unnamed_addr #1 !dbg !3596 {
entry:
  %unpack.int = ptrtoint ptr %0 to i8, !dbg !3597
  %ret = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %unpack.int, ptr %1), !dbg !3597
  ret %runtime._string %ret, !dbg !3597
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.ValueError).Error"(ptr dereferenceable_or_null(24) %e, ptr %context) unnamed_addr #1 !dbg !3598 {
entry:
    #dbg_value(ptr %e, !3607, !DIExpression(), !3608)
    #dbg_value(ptr %e, !3607, !DIExpression(), !3609)
  %0 = icmp eq ptr %e, null, !dbg !3610
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3610

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 1, !dbg !3610
  %2 = icmp eq ptr %1, null, !dbg !3610
  br i1 %2, label %deref.throw, label %deref.next, !dbg !3610

deref.next:                                       ; preds = %gep.next
  %3 = load i8, ptr %1, align 1, !dbg !3610
  %4 = icmp eq i8 %3, 0, !dbg !3611
  br i1 %4, label %if.then, label %if.done, !dbg !3612

if.then:                                          ; preds = %deref.next
    #dbg_value(ptr %e, !3607, !DIExpression(), !3613)
  %5 = icmp eq ptr %e, null, !dbg !3614
  br i1 %5, label %gep.throw1, label %gep.next2, !dbg !3614

gep.next2:                                        ; preds = %if.then
  %6 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 0, !dbg !3614
  %7 = icmp eq ptr %6, null, !dbg !3614
  br i1 %7, label %deref.throw3, label %deref.next4, !dbg !3614

deref.next4:                                      ; preds = %gep.next2
  %8 = load %runtime._string, ptr %6, align 8, !dbg !3614
  %9 = extractvalue %runtime._string %8, 0, !dbg !3615
  %10 = extractvalue %runtime._string %8, 1, !dbg !3615
  %11 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.229", i64 17, ptr %9, i64 %10, ptr undef), !dbg !3615
  %12 = extractvalue %runtime._string %11, 0, !dbg !3616
  %13 = extractvalue %runtime._string %11, 1, !dbg !3616
  %14 = call %runtime._string @runtime.stringConcat(ptr %12, i64 %13, ptr @"internal/reflectlite$string.230", i64 14, ptr undef), !dbg !3616
  ret %runtime._string %14, !dbg !3617

if.done:                                          ; preds = %deref.next
    #dbg_value(ptr %e, !3607, !DIExpression(), !3618)
  %15 = icmp eq ptr %e, null, !dbg !3619
  br i1 %15, label %gep.throw5, label %gep.next6, !dbg !3619

gep.next6:                                        ; preds = %if.done
  %16 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 0, !dbg !3619
  %17 = icmp eq ptr %16, null, !dbg !3619
  br i1 %17, label %deref.throw7, label %deref.next8, !dbg !3619

deref.next8:                                      ; preds = %gep.next6
  %18 = load %runtime._string, ptr %16, align 8, !dbg !3619
  %19 = extractvalue %runtime._string %18, 0, !dbg !3620
  %20 = extractvalue %runtime._string %18, 1, !dbg !3620
  %21 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.231", i64 17, ptr %19, i64 %20, ptr undef), !dbg !3620
  %22 = extractvalue %runtime._string %21, 0, !dbg !3621
  %23 = extractvalue %runtime._string %21, 1, !dbg !3621
  %24 = call %runtime._string @runtime.stringConcat(ptr %22, i64 %23, ptr @"internal/reflectlite$string.232", i64 4, ptr undef), !dbg !3621
    #dbg_value(ptr %e, !3607, !DIExpression(), !3622)
  %25 = icmp eq ptr %e, null, !dbg !3623
  br i1 %25, label %gep.throw9, label %gep.next10, !dbg !3623

gep.next10:                                       ; preds = %deref.next8
  %26 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 1, !dbg !3623
  %27 = icmp eq ptr %26, null, !dbg !3623
  br i1 %27, label %deref.throw11, label %deref.next12, !dbg !3623

deref.next12:                                     ; preds = %gep.next10
  %28 = load i8, ptr %26, align 1, !dbg !3623
  %29 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %28, ptr undef), !dbg !3624
  %30 = extractvalue %runtime._string %24, 0, !dbg !3625
  %31 = extractvalue %runtime._string %24, 1, !dbg !3625
  %32 = extractvalue %runtime._string %29, 0, !dbg !3625
  %33 = extractvalue %runtime._string %29, 1, !dbg !3625
  %34 = call %runtime._string @runtime.stringConcat(ptr %30, i64 %31, ptr %32, i64 %33, ptr undef), !dbg !3625
  %35 = extractvalue %runtime._string %34, 0, !dbg !3626
  %36 = extractvalue %runtime._string %34, 1, !dbg !3626
  %37 = call %runtime._string @runtime.stringConcat(ptr %35, i64 %36, ptr @"internal/reflectlite$string.233", i64 6, ptr undef), !dbg !3626
  ret %runtime._string %37, !dbg !3627

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3610
  unreachable, !dbg !3610

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3610
  unreachable, !dbg !3610

gep.throw1:                                       ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3614
  unreachable, !dbg !3614

deref.throw3:                                     ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3614
  unreachable, !dbg !3614

gep.throw5:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3619
  unreachable, !dbg !3619

deref.throw7:                                     ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3619
  unreachable, !dbg !3619

gep.throw9:                                       ; preds = %deref.next8
  call void @runtime.nilPanic(ptr undef), !dbg !3623
  unreachable, !dbg !3623

deref.throw11:                                    ; preds = %gep.next10
  call void @runtime.nilPanic(ptr undef), !dbg !3623
  unreachable, !dbg !3623
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr %context) unnamed_addr #1 !dbg !3628 {
entry:
  ret %runtime._string { ptr @"internal/reflectlite$string.17", i64 14 }, !dbg !3633
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.badSyntax).Error"(ptr %arg0, ptr %context) unnamed_addr #1 {
entry:
  %0 = call %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr undef)
  ret %runtime._string %0
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.badSyntax).Error$invoke"(ptr %0, ptr %1) unnamed_addr #1 !dbg !3634 {
entry:
  %ret = call %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr %1), !dbg !3635
  ret %runtime._string %ret, !dbg !3635
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"runtime/interrupt.In"(ptr %context) #1 !dbg !3636 {
entry:
  ret i1 false, !dbg !3638
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Mutex).Lock"(ptr dereferenceable_or_null(4) %m, ptr %context) #1 !dbg !3639 {
entry:
    #dbg_value(ptr %m, !3644, !DIExpression(), !3645)
    #dbg_value(ptr %m, !3644, !DIExpression(), !3646)
  %0 = icmp eq ptr %m, null, !dbg !3647
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3647

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3647
  %2 = icmp eq ptr %1, null, !dbg !3646
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3646

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3646
  %4 = call i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr %3, i32 0, i32 1, ptr undef), !dbg !3648
  br i1 %4, label %if.then, label %for.loop, !dbg !3649

if.then:                                          ; preds = %gep.next2
  ret void, !dbg !3650

for.loop:                                         ; preds = %gep.next8, %gep.next2
    #dbg_value(ptr %m, !3644, !DIExpression(), !3651)
  %5 = icmp eq ptr %m, null, !dbg !3652
  br i1 %5, label %gep.throw3, label %gep.next4, !dbg !3652

gep.next4:                                        ; preds = %for.loop
  %6 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3652
  %7 = icmp eq ptr %6, null, !dbg !3651
  br i1 %7, label %gep.throw5, label %gep.next6, !dbg !3651

gep.next6:                                        ; preds = %gep.next4
  %8 = getelementptr inbounds %"internal/futex.Futex", ptr %6, i32 0, i32 0, !dbg !3651
  %9 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr %8, i32 2, ptr undef), !dbg !3653
  %10 = icmp ne i32 %9, 0, !dbg !3654
  br i1 %10, label %for.body, label %for.done, !dbg !3649

for.body:                                         ; preds = %gep.next6
    #dbg_value(ptr %m, !3644, !DIExpression(), !3655)
  %11 = icmp eq ptr %m, null, !dbg !3656
  br i1 %11, label %gep.throw7, label %gep.next8, !dbg !3656

gep.next8:                                        ; preds = %for.body
  %12 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3656
  %13 = call i1 @"(*internal/futex.Futex).Wait"(ptr %12, i32 2, ptr undef), !dbg !3657
  br label %for.loop, !dbg !3649

for.done:                                         ; preds = %gep.next6
  ret void, !dbg !3658

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3647
  unreachable, !dbg !3647

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3646
  unreachable, !dbg !3646

gep.throw3:                                       ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !3652
  unreachable, !dbg !3652

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3651
  unreachable, !dbg !3651

gep.throw7:                                       ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3656
  unreachable, !dbg !3656
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Mutex).Unlock"(ptr dereferenceable_or_null(4) %m, ptr %context) #1 !dbg !3659 {
entry:
    #dbg_value(ptr %m, !3661, !DIExpression(), !3663)
    #dbg_value(ptr %m, !3661, !DIExpression(), !3664)
  %0 = icmp eq ptr %m, null, !dbg !3665
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3665

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3665
  %2 = icmp eq ptr %1, null, !dbg !3664
  br i1 %2, label %gep.throw2, label %gep.next3, !dbg !3664

gep.next3:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3664
  %4 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr %3, i32 0, ptr undef), !dbg !3666
    #dbg_value(i32 %4, !3662, !DIExpression(), !3667)
    #dbg_value(i32 %4, !3662, !DIExpression(), !3668)
  %5 = icmp eq i32 %4, 0, !dbg !3669
  br i1 %5, label %if.then, label %if.else, !dbg !3670

if.then:                                          ; preds = %gep.next3
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"internal/task$pack", ptr undef), !dbg !3671
  unreachable, !dbg !3671

if.else:                                          ; preds = %gep.next3
    #dbg_value(i32 %4, !3662, !DIExpression(), !3672)
  %6 = icmp eq i32 %4, 2, !dbg !3673
  br i1 %6, label %if.then1, label %if.done, !dbg !3670

if.then1:                                         ; preds = %if.else
    #dbg_value(ptr %m, !3661, !DIExpression(), !3674)
  %7 = icmp eq ptr %m, null, !dbg !3675
  br i1 %7, label %gep.throw4, label %gep.next5, !dbg !3675

gep.next5:                                        ; preds = %if.then1
  %8 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3675
  call void @"(*internal/futex.Futex).Wake"(ptr %8, ptr undef), !dbg !3676
  br label %if.done, !dbg !3670

if.done:                                          ; preds = %gep.next5, %if.else
  ret void, !dbg !3677

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3665
  unreachable, !dbg !3665

gep.throw2:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3664
  unreachable, !dbg !3664

gep.throw4:                                       ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3675
  unreachable, !dbg !3675
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Semaphore).Wait"(ptr dereferenceable_or_null(4) %s, ptr %context) unnamed_addr #1 !dbg !3678 {
entry:
    #dbg_value(ptr %s, !3684, !DIExpression(), !3687)
    #dbg_value(i32 -1, !3685, !DIExpression(), !3688)
    #dbg_value(ptr %s, !3684, !DIExpression(), !3689)
  %0 = icmp eq ptr %s, null, !dbg !3690
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3690

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3690
  %2 = icmp eq ptr %1, null, !dbg !3689
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3689

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3689
    #dbg_value(i32 -1, !3685, !DIExpression(), !3691)
  %4 = call i32 @"(*sync/atomic.Uint32).Add"(ptr %3, i32 -1, ptr undef), !dbg !3692
    #dbg_value(i32 %4, !3686, !DIExpression(), !3693)
  br label %for.body, !dbg !3694

for.body:                                         ; preds = %gep.next8, %gep.next2
  %5 = phi i32 [ %4, %gep.next2 ], [ %14, %gep.next8 ], !dbg !3693
    #dbg_value(i32 %5, !3686, !DIExpression(), !3695)
  %6 = icmp sge i32 %5, 0, !dbg !3696
  br i1 %6, label %if.then, label %if.done, !dbg !3694

if.then:                                          ; preds = %for.body
  ret void, !dbg !3697

if.done:                                          ; preds = %for.body
    #dbg_value(ptr %s, !3684, !DIExpression(), !3698)
  %7 = icmp eq ptr %s, null, !dbg !3699
  br i1 %7, label %gep.throw3, label %gep.next4, !dbg !3699

gep.next4:                                        ; preds = %if.done
  %8 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3699
    #dbg_value(i32 %5, !3686, !DIExpression(), !3700)
  %9 = call i1 @"(*internal/futex.Futex).Wait"(ptr %8, i32 %5, ptr undef), !dbg !3701
    #dbg_value(ptr %s, !3684, !DIExpression(), !3702)
  %10 = icmp eq ptr %s, null, !dbg !3703
  br i1 %10, label %gep.throw5, label %gep.next6, !dbg !3703

gep.next6:                                        ; preds = %gep.next4
  %11 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3703
  %12 = icmp eq ptr %11, null, !dbg !3702
  br i1 %12, label %gep.throw7, label %gep.next8, !dbg !3702

gep.next8:                                        ; preds = %gep.next6
  %13 = getelementptr inbounds %"internal/futex.Futex", ptr %11, i32 0, i32 0, !dbg !3702
  %14 = call i32 @"(*sync/atomic.Uint32).Load"(ptr %13, ptr undef), !dbg !3704
    #dbg_value(i32 %14, !3686, !DIExpression(), !3705)
  br label %for.body, !dbg !3694

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3690
  unreachable, !dbg !3690

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3689
  unreachable, !dbg !3689

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3699
  unreachable, !dbg !3699

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3703
  unreachable, !dbg !3703

gep.throw7:                                       ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3702
  unreachable, !dbg !3702
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.Init"(i64 %sp, ptr %context) #1 !dbg !3706 {
entry:
    #dbg_value(i64 %sp, !3710, !DIExpression(), !3712)
    #dbg_value(i64 %sp, !3710, !DIExpression(), !3713)
  %0 = icmp eq ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 2), null, !dbg !3714
  br i1 %0, label %store.throw, label %store.next, !dbg !3714

store.next:                                       ; preds = %entry
  store i64 %sp, ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 2), align 8, !dbg !3714
    #dbg_value(i64 %sp, !3711, !DIExpression(), !3714)
  call void @tinygo_task_init(ptr @"internal/task.mainTask", ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 1), ptr @"internal/task.numCPU", ptr undef), !dbg !3715
  ret void, !dbg !3716

store.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3714
  unreachable, !dbg !3714
}

declare void @tinygo_task_init(ptr dereferenceable_or_null(88), ptr dereferenceable_or_null(8), ptr dereferenceable_or_null(4), ptr) #2

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"internal/task.Current"(ptr %context) #1 !dbg !3717 {
entry:
  %0 = call ptr @tinygo_task_current(), !dbg !3720
    #dbg_value(ptr %0, !3719, !DIExpression(), !3721)
    #dbg_value(ptr %0, !3719, !DIExpression(), !3722)
  %1 = icmp eq ptr %0, null, !dbg !3723
  br i1 %1, label %if.then, label %if.done, !dbg !3724

if.then:                                          ; preds = %entry
  call void @runtime.runtimePanic(ptr @"internal/task$string.7", i64 20, ptr undef), !dbg !3725
  br label %if.done, !dbg !3724

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(ptr %0, !3719, !DIExpression(), !3726)
  ret ptr %0, !dbg !3727
}

declare ptr @tinygo_task_current() #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.Pause"(ptr %context) #1 !dbg !3728 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3731
    #dbg_value(ptr %0, !3730, !DIExpression(), !3732)
  br i1 false, label %if.then, label %if.done, !dbg !3733

if.then:                                          ; preds = %entry
    #dbg_value(ptr %0, !3730, !DIExpression(), !3734)
  %1 = icmp eq ptr %0, null, !dbg !3735
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3735

gep.next:                                         ; preds = %if.then
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3735
  %3 = icmp eq ptr %2, null, !dbg !3736
  br i1 %3, label %gep.throw1, label %gep.next2, !dbg !3736

gep.next2:                                        ; preds = %gep.next
  %4 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 0, !dbg !3736
  %5 = icmp eq ptr %4, null, !dbg !3736
  br i1 %5, label %deref.throw, label %deref.next, !dbg !3736

deref.next:                                       ; preds = %gep.next2
  %6 = load i64, ptr %4, align 8, !dbg !3736
  call void @runtime.printlock(ptr undef), !dbg !3737
  call void @runtime.printstring(ptr @"internal/task$string.8", i64 12, ptr undef), !dbg !3737
  call void @runtime.printspace(ptr undef), !dbg !3737
  call void @runtime.printptr(i64 %6, ptr undef), !dbg !3737
  call void @runtime.printnl(ptr undef), !dbg !3737
  call void @runtime.printunlock(ptr undef), !dbg !3737
  br label %if.done, !dbg !3733

if.done:                                          ; preds = %deref.next, %entry
    #dbg_value(ptr %0, !3730, !DIExpression(), !3738)
  %7 = icmp eq ptr %0, null, !dbg !3739
  br i1 %7, label %gep.throw3, label %gep.next4, !dbg !3739

gep.next4:                                        ; preds = %if.done
  %8 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3739
  %9 = icmp eq ptr %8, null, !dbg !3740
  br i1 %9, label %gep.throw5, label %gep.next6, !dbg !3740

gep.next6:                                        ; preds = %gep.next4
  %10 = getelementptr inbounds %"internal/task.state", ptr %8, i32 0, i32 5, !dbg !3740
  call void @"(*internal/task.Semaphore).Wait"(ptr %10, ptr undef), !dbg !3741
  ret void, !dbg !3742

gep.throw:                                        ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3735
  unreachable, !dbg !3735

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3736
  unreachable, !dbg !3736

deref.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3736
  unreachable, !dbg !3736

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3739
  unreachable, !dbg !3739

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3740
  unreachable, !dbg !3740
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_exited(ptr nocapture dereferenceable_or_null(88) %t) #1 !dbg !3743 {
entry:
    #dbg_value(ptr %t, !3747, !DIExpression(), !3752)
  br i1 false, label %if.then, label %if.done, !dbg !3753

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !3747, !DIExpression(), !3754)
  %0 = icmp eq ptr %t, null, !dbg !3755
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3755

gep.next:                                         ; preds = %if.then
  %1 = getelementptr inbounds %"internal/task.Task", ptr %t, i32 0, i32 4, !dbg !3755
  %2 = icmp eq ptr %1, null, !dbg !3756
  br i1 %2, label %gep.throw5, label %gep.next6, !dbg !3756

gep.next6:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/task.state", ptr %1, i32 0, i32 0, !dbg !3756
  %4 = icmp eq ptr %3, null, !dbg !3756
  br i1 %4, label %deref.throw, label %deref.next, !dbg !3756

deref.next:                                       ; preds = %gep.next6
  %5 = load i64, ptr %3, align 8, !dbg !3756
  call void @runtime.printlock(ptr undef), !dbg !3757
  call void @runtime.printstring(ptr @"internal/task$string.12", i64 9, ptr undef), !dbg !3757
  call void @runtime.printspace(ptr undef), !dbg !3757
  call void @runtime.printptr(i64 %5, ptr undef), !dbg !3757
  call void @runtime.printnl(ptr undef), !dbg !3757
  call void @runtime.printunlock(ptr undef), !dbg !3757
  br label %if.done, !dbg !3753

if.done:                                          ; preds = %deref.next, %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3758
    #dbg_value(i1 false, !3748, !DIExpression(), !3759)
    #dbg_value(ptr @"internal/task.activeTasks", !3749, !DIExpression(), !3760)
  br label %for.loop, !dbg !3753

for.loop:                                         ; preds = %gep.next22, %if.done
  %6 = phi ptr [ @"internal/task.activeTasks", %if.done ], [ %25, %gep.next22 ], !dbg !3760
    #dbg_value(ptr %6, !3749, !DIExpression(), !3761)
  %7 = icmp eq ptr %6, null, !dbg !3762
  br i1 %7, label %deref.throw7, label %deref.next8, !dbg !3762

deref.next8:                                      ; preds = %for.loop
  %8 = load ptr, ptr %6, align 8, !dbg !3762
  %9 = icmp ne ptr %8, null, !dbg !3763
  br i1 %9, label %for.body, label %for.done, !dbg !3753

for.body:                                         ; preds = %deref.next8
    #dbg_value(ptr %6, !3749, !DIExpression(), !3764)
  %10 = icmp eq ptr %6, null, !dbg !3765
  br i1 %10, label %deref.throw9, label %deref.next10, !dbg !3765

deref.next10:                                     ; preds = %for.body
  %11 = load ptr, ptr %6, align 8, !dbg !3765
    #dbg_value(ptr %t, !3747, !DIExpression(), !3766)
  %12 = icmp eq ptr %11, %t, !dbg !3767
  br i1 %12, label %if.then1, label %if.done2, !dbg !3753

if.then1:                                         ; preds = %deref.next10
    #dbg_value(ptr %6, !3749, !DIExpression(), !3768)
    #dbg_value(ptr %t, !3747, !DIExpression(), !3769)
  %13 = icmp eq ptr %t, null, !dbg !3770
  br i1 %13, label %gep.throw11, label %gep.next12, !dbg !3770

gep.next12:                                       ; preds = %if.then1
  %14 = getelementptr inbounds %"internal/task.Task", ptr %t, i32 0, i32 4, !dbg !3770
  %15 = icmp eq ptr %14, null, !dbg !3771
  br i1 %15, label %gep.throw13, label %gep.next14, !dbg !3771

gep.next14:                                       ; preds = %gep.next12
  %16 = getelementptr inbounds %"internal/task.state", ptr %14, i32 0, i32 4, !dbg !3771
  %17 = icmp eq ptr %16, null, !dbg !3771
  br i1 %17, label %deref.throw15, label %deref.next16, !dbg !3771

deref.next16:                                     ; preds = %gep.next14
  %18 = load ptr, ptr %16, align 8, !dbg !3771
  %19 = icmp eq ptr %6, null, !dbg !3772
  br i1 %19, label %store.throw, label %store.next, !dbg !3772

store.next:                                       ; preds = %deref.next16
  store ptr %18, ptr %6, align 8, !dbg !3772
    #dbg_value(i1 true, !3748, !DIExpression(), !3773)
  br label %for.done, !dbg !3753

if.done2:                                         ; preds = %deref.next10
    #dbg_value(ptr %6, !3749, !DIExpression(), !3774)
  %20 = icmp eq ptr %6, null, !dbg !3775
  br i1 %20, label %deref.throw17, label %deref.next18, !dbg !3775

deref.next18:                                     ; preds = %if.done2
  %21 = load ptr, ptr %6, align 8, !dbg !3775
  %22 = icmp eq ptr %21, null, !dbg !3776
  br i1 %22, label %gep.throw19, label %gep.next20, !dbg !3776

gep.next20:                                       ; preds = %deref.next18
  %23 = getelementptr inbounds %"internal/task.Task", ptr %21, i32 0, i32 4, !dbg !3776
  %24 = icmp eq ptr %23, null, !dbg !3777
  br i1 %24, label %gep.throw21, label %gep.next22, !dbg !3777

gep.next22:                                       ; preds = %gep.next20
  %25 = getelementptr inbounds %"internal/task.state", ptr %23, i32 0, i32 4, !dbg !3777
    #dbg_value(ptr %25, !3749, !DIExpression(), !3778)
  br label %for.loop, !dbg !3753

for.done:                                         ; preds = %store.next, %deref.next8
  %26 = phi i1 [ false, %deref.next8 ], [ true, %store.next ], !dbg !3759
  %27 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3779
  %28 = sub i32 %27, 1, !dbg !3779
  store i32 %28, ptr @"internal/task.otherGoroutines", align 4, !dbg !3779
    #dbg_value(i32 %28, !3751, !DIExpression(), !3779)
  call void @"(*internal/task.Mutex).Unlock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3780
    #dbg_value(i1 %26, !3748, !DIExpression(), !3781)
  br i1 %26, label %if.done3, label %if.then4, !dbg !3753

if.done3:                                         ; preds = %if.then4, %for.done
  ret void, !dbg !3782

if.then4:                                         ; preds = %for.done
  call void @runtime.runtimePanic(ptr @"internal/task$string.13", i64 17, ptr undef), !dbg !3783
  br label %if.done3, !dbg !3753

gep.throw:                                        ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3755
  unreachable, !dbg !3755

gep.throw5:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3756
  unreachable, !dbg !3756

deref.throw:                                      ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3756
  unreachable, !dbg !3756

deref.throw7:                                     ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !3762
  unreachable, !dbg !3762

deref.throw9:                                     ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3765
  unreachable, !dbg !3765

gep.throw11:                                      ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3770
  unreachable, !dbg !3770

gep.throw13:                                      ; preds = %gep.next12
  call void @runtime.nilPanic(ptr undef), !dbg !3771
  unreachable, !dbg !3771

deref.throw15:                                    ; preds = %gep.next14
  call void @runtime.nilPanic(ptr undef), !dbg !3771
  unreachable, !dbg !3771

store.throw:                                      ; preds = %deref.next16
  call void @runtime.nilPanic(ptr undef), !dbg !3772
  unreachable, !dbg !3772

deref.throw17:                                    ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !3775
  unreachable, !dbg !3775

gep.throw19:                                      ; preds = %deref.next18
  call void @runtime.nilPanic(ptr undef), !dbg !3776
  unreachable, !dbg !3776

gep.throw21:                                      ; preds = %gep.next20
  call void @runtime.nilPanic(ptr undef), !dbg !3777
  unreachable, !dbg !3777
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.waitGroup).done"(ptr dereferenceable_or_null(4) %wg, ptr %context) unnamed_addr #1 !dbg !3784 {
entry:
    #dbg_value(ptr %wg, !3789, !DIExpression(), !3790)
    #dbg_value(ptr %wg, !3789, !DIExpression(), !3791)
  %0 = icmp eq ptr %wg, null, !dbg !3792
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3792

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3792
  %2 = icmp eq ptr %1, null, !dbg !3791
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3791

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3791
  %4 = call i32 @"(*sync/atomic.Uint32).Add"(ptr %3, i32 -1, ptr undef), !dbg !3793
  %5 = icmp eq i32 %4, 0, !dbg !3794
  br i1 %5, label %if.then, label %if.done, !dbg !3795

if.then:                                          ; preds = %gep.next2
    #dbg_value(ptr %wg, !3789, !DIExpression(), !3796)
  %6 = icmp eq ptr %wg, null, !dbg !3797
  br i1 %6, label %gep.throw3, label %gep.next4, !dbg !3797

gep.next4:                                        ; preds = %if.then
  %7 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3797
  call void @"(*internal/futex.Futex).WakeAll"(ptr %7, ptr undef), !dbg !3798
  br label %if.done, !dbg !3795

if.done:                                          ; preds = %gep.next4, %gep.next2
  ret void, !dbg !3799

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3792
  unreachable, !dbg !3792

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3791
  unreachable, !dbg !3791

gep.throw3:                                       ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3797
  unreachable, !dbg !3797
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.waitGroup).wait"(ptr dereferenceable_or_null(4) %wg, ptr %context) unnamed_addr #1 !dbg !3800 {
entry:
    #dbg_value(ptr %wg, !3802, !DIExpression(), !3804)
  br label %for.body, !dbg !3805

for.body:                                         ; preds = %gep.next4, %entry
    #dbg_value(ptr %wg, !3802, !DIExpression(), !3806)
  %0 = icmp eq ptr %wg, null, !dbg !3807
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3807

gep.next:                                         ; preds = %for.body
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3807
  %2 = icmp eq ptr %1, null, !dbg !3806
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3806

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3806
  %4 = call i32 @"(*sync/atomic.Uint32).Load"(ptr %3, ptr undef), !dbg !3808
    #dbg_value(i32 %4, !3803, !DIExpression(), !3809)
    #dbg_value(i32 %4, !3803, !DIExpression(), !3810)
  %5 = icmp eq i32 %4, 0, !dbg !3811
  br i1 %5, label %if.then, label %if.done, !dbg !3805

if.then:                                          ; preds = %gep.next2
  ret void, !dbg !3812

if.done:                                          ; preds = %gep.next2
    #dbg_value(ptr %wg, !3802, !DIExpression(), !3813)
  %6 = icmp eq ptr %wg, null, !dbg !3814
  br i1 %6, label %gep.throw3, label %gep.next4, !dbg !3814

gep.next4:                                        ; preds = %if.done
  %7 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3814
    #dbg_value(i32 %4, !3803, !DIExpression(), !3815)
  %8 = call i1 @"(*internal/futex.Futex).Wait"(ptr %7, i32 %4, ptr undef), !dbg !3816
  br label %for.body, !dbg !3805

gep.throw:                                        ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3807
  unreachable, !dbg !3807

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3806
  unreachable, !dbg !3806

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3814
  unreachable, !dbg !3814
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %n, ptr %context) unnamed_addr #1 !dbg !3817 {
entry:
    #dbg_value(i32 %n, !3821, !DIExpression(), !3823)
  %wg = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3824
  %0 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3825
  %1 = icmp eq ptr %0, null, !dbg !3826
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3826

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/futex.Futex", ptr %0, i32 0, i32 0, !dbg !3826
    #dbg_value(i32 %n, !3821, !DIExpression(), !3827)
  call void @"(*sync/atomic.Uint32).Store"(ptr %2, i32 %n, ptr undef), !dbg !3828
  %3 = load %"internal/task.Semaphore", ptr %wg, align 4, !dbg !3829
    #dbg_value(%"internal/task.Semaphore" %3, !3822, !DIExpression(), !3829)
  ret %"internal/task.Semaphore" %3, !dbg !3830

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3826
  unreachable, !dbg !3826
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.GCStopWorldAndScan"(ptr %context) #1 !dbg !3831 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3839
    #dbg_value(ptr %0, !3833, !DIExpression(), !3840)
  %1 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3841
  %2 = icmp eq i32 %1, 0, !dbg !3842
  br i1 %2, label %if.then, label %if.done2, !dbg !3843

if.then:                                          ; preds = %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3844
  call void @"(*internal/task.waitGroup).wait"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3845
  call void @"(*sync/atomic.Uint32).Store"(ptr @"internal/task.gcState", i32 1, ptr undef), !dbg !3846
  %3 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3847
    #dbg_value(i32 %3, !3834, !DIExpression(), !3847)
  %4 = call %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %3, ptr undef), !dbg !3848
  store %"internal/task.Semaphore" %4, ptr @"internal/task.scanWaitGroup", align 4, !dbg !3849
    #dbg_value(%"internal/task.Semaphore" %4, !3835, !DIExpression(), !3849)
  %5 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !3850
    #dbg_value(ptr %5, !3836, !DIExpression(), !3850)
    #dbg_value(ptr %5, !3837, !DIExpression(), !3851)
  br label %for.loop, !dbg !3843

for.loop:                                         ; preds = %deref.next15, %if.then
  %6 = phi ptr [ %5, %if.then ], [ %20, %deref.next15 ], !dbg !3851
    #dbg_value(ptr %6, !3837, !DIExpression(), !3852)
  %7 = icmp ne ptr %6, null, !dbg !3853
  br i1 %7, label %for.body, label %for.done, !dbg !3843

for.body:                                         ; preds = %for.loop
    #dbg_value(ptr %6, !3837, !DIExpression(), !3854)
    #dbg_value(ptr %0, !3833, !DIExpression(), !3855)
  %8 = icmp ne ptr %6, %0, !dbg !3856
  br i1 %8, label %if.then1, label %if.done, !dbg !3843

if.then1:                                         ; preds = %for.body
    #dbg_value(ptr %6, !3837, !DIExpression(), !3857)
  %9 = icmp eq ptr %6, null, !dbg !3858
  br i1 %9, label %gep.throw, label %gep.next, !dbg !3858

gep.next:                                         ; preds = %if.then1
  %10 = getelementptr inbounds %"internal/task.Task", ptr %6, i32 0, i32 4, !dbg !3858
  %11 = icmp eq ptr %10, null, !dbg !3859
  br i1 %11, label %gep.throw8, label %gep.next9, !dbg !3859

gep.next9:                                        ; preds = %gep.next
  %12 = getelementptr inbounds %"internal/task.state", ptr %10, i32 0, i32 1, !dbg !3859
  %13 = icmp eq ptr %12, null, !dbg !3859
  br i1 %13, label %deref.throw, label %deref.next, !dbg !3859

deref.next:                                       ; preds = %gep.next9
  %14 = load ptr, ptr %12, align 8, !dbg !3859
  call void @tinygo_task_send_gc_signal(ptr %14), !dbg !3860
  br label %if.done, !dbg !3843

if.done:                                          ; preds = %deref.next, %for.body
    #dbg_value(ptr %6, !3837, !DIExpression(), !3861)
  %15 = icmp eq ptr %6, null, !dbg !3862
  br i1 %15, label %gep.throw10, label %gep.next11, !dbg !3862

gep.next11:                                       ; preds = %if.done
  %16 = getelementptr inbounds %"internal/task.Task", ptr %6, i32 0, i32 4, !dbg !3862
  %17 = icmp eq ptr %16, null, !dbg !3863
  br i1 %17, label %gep.throw12, label %gep.next13, !dbg !3863

gep.next13:                                       ; preds = %gep.next11
  %18 = getelementptr inbounds %"internal/task.state", ptr %16, i32 0, i32 4, !dbg !3863
  %19 = icmp eq ptr %18, null, !dbg !3863
  br i1 %19, label %deref.throw14, label %deref.next15, !dbg !3863

deref.next15:                                     ; preds = %gep.next13
  %20 = load ptr, ptr %18, align 8, !dbg !3863
    #dbg_value(ptr %20, !3837, !DIExpression(), !3864)
  br label %for.loop, !dbg !3843

for.done:                                         ; preds = %for.loop
  call void @"(*internal/task.waitGroup).wait"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3865
  br label %if.done2, !dbg !3843

if.done2:                                         ; preds = %for.done, %entry
  %21 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !3866
    #dbg_value(ptr %21, !3836, !DIExpression(), !3866)
    #dbg_value(ptr %21, !3838, !DIExpression(), !3867)
  br label %for.loop3, !dbg !3843

for.loop3:                                        ; preds = %deref.next33, %if.done2
  %22 = phi ptr [ %21, %if.done2 ], [ %42, %deref.next33 ], !dbg !3867
    #dbg_value(ptr %22, !3838, !DIExpression(), !3868)
  %23 = icmp ne ptr %22, null, !dbg !3869
  br i1 %23, label %for.body4, label %for.done7, !dbg !3843

for.body4:                                        ; preds = %for.loop3
    #dbg_value(ptr %22, !3838, !DIExpression(), !3870)
    #dbg_value(ptr %0, !3833, !DIExpression(), !3871)
  %24 = icmp ne ptr %22, %0, !dbg !3872
  br i1 %24, label %if.then5, label %if.done6, !dbg !3843

if.then5:                                         ; preds = %for.body4
    #dbg_value(ptr %22, !3838, !DIExpression(), !3873)
  %25 = icmp eq ptr %22, null, !dbg !3874
  br i1 %25, label %gep.throw16, label %gep.next17, !dbg !3874

gep.next17:                                       ; preds = %if.then5
  %26 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3874
  %27 = icmp eq ptr %26, null, !dbg !3875
  br i1 %27, label %gep.throw18, label %gep.next19, !dbg !3875

gep.next19:                                       ; preds = %gep.next17
  %28 = getelementptr inbounds %"internal/task.state", ptr %26, i32 0, i32 3, !dbg !3875
  %29 = icmp eq ptr %28, null, !dbg !3875
  br i1 %29, label %deref.throw20, label %deref.next21, !dbg !3875

deref.next21:                                     ; preds = %gep.next19
  %30 = load i64, ptr %28, align 8, !dbg !3875
    #dbg_value(ptr %22, !3838, !DIExpression(), !3876)
  %31 = icmp eq ptr %22, null, !dbg !3877
  br i1 %31, label %gep.throw22, label %gep.next23, !dbg !3877

gep.next23:                                       ; preds = %deref.next21
  %32 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3877
  %33 = icmp eq ptr %32, null, !dbg !3878
  br i1 %33, label %gep.throw24, label %gep.next25, !dbg !3878

gep.next25:                                       ; preds = %gep.next23
  %34 = getelementptr inbounds %"internal/task.state", ptr %32, i32 0, i32 2, !dbg !3878
  %35 = icmp eq ptr %34, null, !dbg !3878
  br i1 %35, label %deref.throw26, label %deref.next27, !dbg !3878

deref.next27:                                     ; preds = %gep.next25
  %36 = load i64, ptr %34, align 8, !dbg !3878
  call void @runtime.markRoots(i64 %30, i64 %36, ptr undef), !dbg !3879
  br label %if.done6, !dbg !3843

if.done6:                                         ; preds = %deref.next27, %for.body4
    #dbg_value(ptr %22, !3838, !DIExpression(), !3880)
  %37 = icmp eq ptr %22, null, !dbg !3881
  br i1 %37, label %gep.throw28, label %gep.next29, !dbg !3881

gep.next29:                                       ; preds = %if.done6
  %38 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3881
  %39 = icmp eq ptr %38, null, !dbg !3882
  br i1 %39, label %gep.throw30, label %gep.next31, !dbg !3882

gep.next31:                                       ; preds = %gep.next29
  %40 = getelementptr inbounds %"internal/task.state", ptr %38, i32 0, i32 4, !dbg !3882
  %41 = icmp eq ptr %40, null, !dbg !3882
  br i1 %41, label %deref.throw32, label %deref.next33, !dbg !3882

deref.next33:                                     ; preds = %gep.next31
  %42 = load ptr, ptr %40, align 8, !dbg !3882
    #dbg_value(ptr %42, !3838, !DIExpression(), !3883)
  br label %for.loop3, !dbg !3843

for.done7:                                        ; preds = %for.loop3
  call void @tinygo_scanCurrentStack(), !dbg !3884
  call void @"internal/task.gcScanGlobals"(ptr undef), !dbg !3885
  ret void, !dbg !3886

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3858
  unreachable, !dbg !3858

gep.throw8:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3859
  unreachable, !dbg !3859

deref.throw:                                      ; preds = %gep.next9
  call void @runtime.nilPanic(ptr undef), !dbg !3859
  unreachable, !dbg !3859

gep.throw10:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3862
  unreachable, !dbg !3862

gep.throw12:                                      ; preds = %gep.next11
  call void @runtime.nilPanic(ptr undef), !dbg !3863
  unreachable, !dbg !3863

deref.throw14:                                    ; preds = %gep.next13
  call void @runtime.nilPanic(ptr undef), !dbg !3863
  unreachable, !dbg !3863

gep.throw16:                                      ; preds = %if.then5
  call void @runtime.nilPanic(ptr undef), !dbg !3874
  unreachable, !dbg !3874

gep.throw18:                                      ; preds = %gep.next17
  call void @runtime.nilPanic(ptr undef), !dbg !3875
  unreachable, !dbg !3875

deref.throw20:                                    ; preds = %gep.next19
  call void @runtime.nilPanic(ptr undef), !dbg !3875
  unreachable, !dbg !3875

gep.throw22:                                      ; preds = %deref.next21
  call void @runtime.nilPanic(ptr undef), !dbg !3877
  unreachable, !dbg !3877

gep.throw24:                                      ; preds = %gep.next23
  call void @runtime.nilPanic(ptr undef), !dbg !3878
  unreachable, !dbg !3878

deref.throw26:                                    ; preds = %gep.next25
  call void @runtime.nilPanic(ptr undef), !dbg !3878
  unreachable, !dbg !3878

gep.throw28:                                      ; preds = %if.done6
  call void @runtime.nilPanic(ptr undef), !dbg !3881
  unreachable, !dbg !3881

gep.throw30:                                      ; preds = %gep.next29
  call void @runtime.nilPanic(ptr undef), !dbg !3882
  unreachable, !dbg !3882

deref.throw32:                                    ; preds = %gep.next31
  call void @runtime.nilPanic(ptr undef), !dbg !3882
  unreachable, !dbg !3882
}

declare void @tinygo_task_send_gc_signal(ptr nocapture) #2

declare void @tinygo_scanCurrentStack() #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.GCResumeWorld"(ptr %context) #1 !dbg !3887 {
entry:
  %0 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3891
  %1 = icmp eq i32 %0, 0, !dbg !3892
  br i1 %1, label %if.then, label %if.done, !dbg !3893

if.then:                                          ; preds = %entry
  ret void, !dbg !3894

if.done:                                          ; preds = %entry
  %2 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3895
    #dbg_value(i32 %2, !3889, !DIExpression(), !3895)
  %3 = call %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %2, ptr undef), !dbg !3896
  store %"internal/task.Semaphore" %3, ptr @"internal/task.scanWaitGroup", align 4, !dbg !3897
    #dbg_value(%"internal/task.Semaphore" %3, !3890, !DIExpression(), !3897)
  call void @"(*sync/atomic.Uint32).Store"(ptr @"internal/task.gcState", i32 0, ptr undef), !dbg !3898
  call void @"(*internal/futex.Futex).WakeAll"(ptr @"internal/task.gcState", ptr undef), !dbg !3899
  call void @"(*internal/task.Mutex).Unlock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3900
  ret void, !dbg !3901
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_gc_pause(i32 %sig) #1 !dbg !3902 {
entry:
    #dbg_value(i32 %sig, !3906, !DIExpression(), !3908)
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3909
  %1 = icmp eq ptr %0, null, !dbg !3910
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3910

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3910
  %3 = call ptr @runtime.stacksave(ptr undef), !dbg !3911
  %4 = ptrtoint ptr %3 to i64, !dbg !3912
  %5 = icmp eq ptr %2, null, !dbg !3913
  br i1 %5, label %gep.throw1, label %gep.next2, !dbg !3913

gep.next2:                                        ; preds = %gep.next
  %6 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 3, !dbg !3913
  %7 = icmp eq ptr %6, null, !dbg !3913
  br i1 %7, label %store.throw, label %store.next, !dbg !3913

store.next:                                       ; preds = %gep.next2
  store i64 %4, ptr %6, align 8, !dbg !3913
    #dbg_value(i64 %4, !3907, !DIExpression(), !3913)
  call void @"(*internal/task.waitGroup).done"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3914
  br label %for.loop, !dbg !3915

for.loop:                                         ; preds = %for.body, %store.next
  %8 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3916
  %9 = icmp eq i32 %8, 1, !dbg !3917
  br i1 %9, label %for.body, label %for.done, !dbg !3915

for.body:                                         ; preds = %for.loop
  %10 = call i1 @"(*internal/futex.Futex).Wait"(ptr @"internal/task.gcState", i32 1, ptr undef), !dbg !3918
  br label %for.loop, !dbg !3915

for.done:                                         ; preds = %for.loop
  call void @"(*internal/task.waitGroup).done"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3919
  ret void, !dbg !3920

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3910
  unreachable, !dbg !3910

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3913
  unreachable, !dbg !3913

store.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3913
  unreachable, !dbg !3913
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"internal/task.StackTop"(ptr %context) #1 !dbg !3921 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3922
  %1 = icmp eq ptr %0, null, !dbg !3923
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3923

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3923
  %3 = icmp eq ptr %2, null, !dbg !3924
  br i1 %3, label %gep.throw1, label %gep.next2, !dbg !3924

gep.next2:                                        ; preds = %gep.next
  %4 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 2, !dbg !3924
  %5 = icmp eq ptr %4, null, !dbg !3924
  br i1 %5, label %deref.throw, label %deref.next, !dbg !3924

deref.next:                                       ; preds = %gep.next2
  %6 = load i64, ptr %4, align 8, !dbg !3924
  ret i64 %6, !dbg !3925

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3923
  unreachable, !dbg !3923

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3924
  unreachable, !dbg !3924

deref.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3924
  unreachable, !dbg !3924
}

; Function Attrs: noinline nounwind allockind("alloc,zeroed") allocsize(0) uwtable(sync)
define internal noalias nonnull ptr @runtime.alloc(i64 %size, ptr %layout, ptr %context) #4 !dbg !3926 {
entry:
    #dbg_value(i64 %size, !3930, !DIExpression(), !3933)
    #dbg_value(ptr %layout, !3931, !DIExpression(), !3933)
    #dbg_value(i64 %size, !3930, !DIExpression(), !3934)
  %0 = icmp eq i64 %size, 0, !dbg !3935
  br i1 %0, label %if.then, label %if.done, !dbg !3936

if.then:                                          ; preds = %entry
  ret ptr @runtime.zeroSizedAlloc, !dbg !3937

if.done:                                          ; preds = %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @runtime.gcLock, ptr undef), !dbg !3938
    #dbg_value(ptr null, !3932, !DIExpression(), !3939)
    #dbg_value(ptr %layout, !3931, !DIExpression(), !3940)
  %1 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !3941
  %2 = icmp eq ptr %layout, %1, !dbg !3942
  br i1 %2, label %if.then1, label %if.else, !dbg !3936

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %size, !3930, !DIExpression(), !3943)
  %3 = call ptr @GC_malloc_atomic(i64 %size), !dbg !3944
    #dbg_value(ptr %3, !3932, !DIExpression(), !3945)
    #dbg_value(ptr %3, !3932, !DIExpression(), !3946)
    #dbg_value(i64 %size, !3930, !DIExpression(), !3947)
  call void @runtime.memzero(ptr %3, i64 %size, ptr undef), !dbg !3948
  br label %if.done2, !dbg !3936

if.done2:                                         ; preds = %if.else, %if.then1
  %4 = phi ptr [ %3, %if.then1 ], [ %6, %if.else ], !dbg !3939
  call void @runtime.gcResumeWorld(ptr undef), !dbg !3949
  call void @"(*internal/task.Mutex).Unlock"(ptr @runtime.gcLock, ptr undef), !dbg !3950
    #dbg_value(ptr %4, !3932, !DIExpression(), !3951)
  %5 = icmp eq ptr %4, null, !dbg !3952
  br i1 %5, label %if.then3, label %if.done4, !dbg !3936

if.then3:                                         ; preds = %if.done2
  call void @runtime.runtimePanic(ptr @"runtime$string.7", i64 17, ptr undef), !dbg !3953
  br label %if.done4, !dbg !3936

if.done4:                                         ; preds = %if.then3, %if.done2
    #dbg_value(ptr %4, !3932, !DIExpression(), !3954)
  ret ptr %4, !dbg !3955

if.else:                                          ; preds = %if.done
    #dbg_value(i64 %size, !3930, !DIExpression(), !3956)
  %6 = call ptr @GC_malloc(i64 %size), !dbg !3957
    #dbg_value(ptr %6, !3932, !DIExpression(), !3958)
  br label %if.done2, !dbg !3936
}

declare ptr @GC_malloc_atomic(i64) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memzero(ptr %ptr, i64 %size, ptr %context) #1 !dbg !3959 {
entry:
    #dbg_value(ptr %ptr, !3963, !DIExpression(), !3965)
    #dbg_value(i64 %size, !3964, !DIExpression(), !3965)
  call void @llvm.memset.p0.i64(ptr %ptr, i8 0, i64 %size, i1 false), !dbg !3965
  ret void, !dbg !3965
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.gcResumeWorld(ptr %context) unnamed_addr #1 !dbg !3966 {
entry:
  call void @"internal/task.GCResumeWorld"(ptr undef), !dbg !3968
  ret void, !dbg !3969
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.runtimePanic(ptr readonly %msg.data, i64 %msg.len, ptr %context) #1 !dbg !3970 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %msg.data, 0, !dbg !3973
  %1 = insertvalue %runtime._string %0, i64 %msg.len, 1, !dbg !3973
    #dbg_value(ptr %msg.data, !3972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3973)
    #dbg_value(i64 %msg.len, !3972, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3973)
  %2 = call ptr @llvm.returnaddress(i32 0), !dbg !3974
    #dbg_value(%runtime._string %1, !3972, !DIExpression(), !3975)
  %3 = extractvalue %runtime._string %1, 0, !dbg !3976
  %4 = extractvalue %runtime._string %1, 1, !dbg !3976
  call void @runtime.runtimePanicAt(ptr %2, ptr %3, i64 %4, ptr undef), !dbg !3976
  ret void, !dbg !3977
}

declare ptr @GC_malloc(i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.runtimePanicAt(ptr %addr, ptr readonly %msg.data, i64 %msg.len, ptr %context) unnamed_addr #1 !dbg !3978 {
entry:
    #dbg_value(ptr %addr, !3982, !DIExpression(), !3984)
  %0 = insertvalue %runtime._string zeroinitializer, ptr %msg.data, 0, !dbg !3984
  %1 = insertvalue %runtime._string %0, i64 %msg.len, 1, !dbg !3984
    #dbg_value(ptr %msg.data, !3983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3984)
    #dbg_value(i64 %msg.len, !3983, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3984)
  br i1 false, label %if.then, label %if.done, !dbg !3985

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !3986
  br label %if.done, !dbg !3985

if.done:                                          ; preds = %if.then, %entry
  br i1 true, label %if.then1, label %if.else, !dbg !3985

if.then1:                                         ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.13", i64 24, ptr undef), !dbg !3987
    #dbg_value(ptr %addr, !3982, !DIExpression(), !3988)
  %2 = ptrtoint ptr %addr to i64, !dbg !3989
  %3 = sub i64 %2, 5, !dbg !3990
  call void @runtime.printptr(i64 %3, ptr undef), !dbg !3991
  call void @runtime.printstring(ptr @"runtime$string.14", i64 2, ptr undef), !dbg !3992
  br label %if.done2, !dbg !3985

if.done2:                                         ; preds = %if.else, %if.then1
    #dbg_value(%runtime._string %1, !3983, !DIExpression(), !3993)
  %4 = extractvalue %runtime._string %1, 0, !dbg !3994
  %5 = extractvalue %runtime._string %1, 1, !dbg !3994
  call void @runtime.printstring(ptr %4, i64 %5, ptr undef), !dbg !3994
  call void @runtime.printnl(ptr undef), !dbg !3995
  call void @abort(), !dbg !3996
  ret void, !dbg !3997

if.else:                                          ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.15", i64 22, ptr undef), !dbg !3998
  br label %if.done2, !dbg !3985
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printstring(ptr readonly %s.data, i64 %s.len, ptr %context) #1 !dbg !3999 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !4003
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !4003
    #dbg_value(ptr %s.data, !4001, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4003)
    #dbg_value(i64 %s.len, !4001, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4003)
    #dbg_value(i64 0, !4002, !DIExpression(), !4004)
  br label %for.loop, !dbg !4005

for.loop:                                         ; preds = %for.body, %entry
  %2 = phi i64 [ 0, %entry ], [ %7, %for.body ], !dbg !4004
    #dbg_value(i64 %2, !4002, !DIExpression(), !4006)
    #dbg_value(%runtime._string %1, !4001, !DIExpression(), !4007)
  %len = extractvalue %runtime._string %1, 1, !dbg !4008
  %3 = icmp slt i64 %2, %len, !dbg !4009
  br i1 %3, label %for.body, label %for.done, !dbg !4005

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !4002, !DIExpression(), !4010)
    #dbg_value(%runtime._string %1, !4001, !DIExpression(), !4011)
  %len1 = extractvalue %runtime._string %1, 1, !dbg !4012
  %4 = extractvalue %runtime._string %1, 0, !dbg !4012
  %5 = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !4012
  %6 = load i8, ptr %5, align 1, !dbg !4012
  call void @runtime.putchar(i8 %6, ptr undef), !dbg !4013
  %7 = add i64 %2, 1, !dbg !4014
    #dbg_value(i64 %7, !4002, !DIExpression(), !4014)
  br label %for.loop, !dbg !4005

for.done:                                         ; preds = %for.loop
  ret void, !dbg !4015
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printptr(i64 %ptr, ptr %context) #1 !dbg !4016 {
entry:
    #dbg_value(i64 %ptr, !4018, !DIExpression(), !4021)
    #dbg_value(i64 %ptr, !4018, !DIExpression(), !4022)
  %0 = icmp eq i64 %ptr, 0, !dbg !4023
  br i1 %0, label %if.then, label %if.done, !dbg !4024

if.then:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.45", i64 3, ptr undef), !dbg !4025
  ret void, !dbg !4026

if.done:                                          ; preds = %entry
  call void @runtime.putchar(i8 48, ptr undef), !dbg !4027
  call void @runtime.putchar(i8 120, ptr undef), !dbg !4028
    #dbg_value(i64 0, !4019, !DIExpression(), !4029)
  br label %for.loop, !dbg !4024

for.loop:                                         ; preds = %if.done2, %if.done
  %1 = phi i64 [ %ptr, %if.done ], [ %shift.result3, %if.done2 ], !dbg !4030
  %2 = phi i64 [ 0, %if.done ], [ %9, %if.done2 ], !dbg !4029
    #dbg_value(i64 %2, !4019, !DIExpression(), !4031)
  %3 = icmp slt i64 %2, 16, !dbg !4032
  br i1 %3, label %for.body, label %for.done, !dbg !4024

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4018, !DIExpression(), !4033)
  %4 = lshr i64 %1, 60, !dbg !4034
  %shift.result = select i1 false, i64 0, i64 %4, !dbg !4034
  %5 = trunc i64 %shift.result to i8, !dbg !4035
    #dbg_value(i8 %5, !4020, !DIExpression(), !4036)
    #dbg_value(i8 %5, !4020, !DIExpression(), !4037)
  %6 = icmp ult i8 %5, 10, !dbg !4038
  br i1 %6, label %if.then1, label %if.else, !dbg !4024

if.then1:                                         ; preds = %for.body
    #dbg_value(i8 %5, !4020, !DIExpression(), !4039)
  %7 = add i8 %5, 48, !dbg !4040
  call void @runtime.putchar(i8 %7, ptr undef), !dbg !4041
  br label %if.done2, !dbg !4024

if.done2:                                         ; preds = %if.else, %if.then1
  %8 = shl i64 %1, 4, !dbg !4042
  %shift.result3 = select i1 false, i64 0, i64 %8, !dbg !4042
    #dbg_value(i64 %shift.result3, !4018, !DIExpression(), !4042)
  %9 = add i64 %2, 1, !dbg !4043
    #dbg_value(i64 %9, !4019, !DIExpression(), !4043)
  br label %for.loop, !dbg !4024

if.else:                                          ; preds = %for.body
    #dbg_value(i8 %5, !4020, !DIExpression(), !4044)
  %10 = sub i8 %5, 10, !dbg !4045
  %11 = add i8 %10, 97, !dbg !4046
  call void @runtime.putchar(i8 %11, ptr undef), !dbg !4047
  br label %if.done2, !dbg !4024

for.done:                                         ; preds = %for.loop
  ret void, !dbg !4048
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printnl(ptr %context) #1 !dbg !4049 {
entry:
  br i1 false, label %if.then, label %if.done, !dbg !4050

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 13, ptr undef), !dbg !4051
  br label %if.done, !dbg !4050

if.done:                                          ; preds = %if.then, %entry
  call void @runtime.putchar(i8 10, ptr undef), !dbg !4052
  ret void, !dbg !4053
}

; Function Attrs: noreturn
declare void @abort() #7

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.putchar(i8 %c, ptr %context) unnamed_addr #1 !dbg !4054 {
entry:
    #dbg_value(i8 %c, !4058, !DIExpression(), !4059)
  %buf = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4060
  %0 = getelementptr inbounds [1 x i8], ptr %buf, i32 0, i64 0, !dbg !4060
    #dbg_value(i8 %c, !4058, !DIExpression(), !4061)
  store i8 %c, ptr %0, align 1, !dbg !4061
    #dbg_value(i8 %c, !4058, !DIExpression(), !4061)
  %1 = getelementptr inbounds [1 x i8], ptr %buf, i32 0, i64 0, !dbg !4062
  %2 = call i64 @write(i32 1, ptr %1, i64 1), !dbg !4063
  ret void, !dbg !4064
}

declare i64 @write(i32, ptr nocapture, i64) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.initRand(ptr %context) unnamed_addr #1 !dbg !4065 {
entry:
  %0 = call { i64, i1 } @runtime.hardwareRand(ptr undef), !dbg !4070
  %1 = extractvalue { i64, i1 } %0, 0, !dbg !4070
    #dbg_value(i64 %1, !4067, !DIExpression(), !4071)
  %2 = extractvalue { i64, i1 } %0, 1, !dbg !4070
    #dbg_value(i64 %1, !4067, !DIExpression(), !4072)
  %3 = or i64 %1, 1, !dbg !4073
  store i64 %3, ptr @runtime.xorshift64State, align 8, !dbg !4074
    #dbg_value(i64 %3, !4068, !DIExpression(), !4074)
  %4 = load i64, ptr @runtime.xorshift64State, align 8, !dbg !4075
    #dbg_value(i64 %4, !4068, !DIExpression(), !4075)
  %5 = trunc i64 %4 to i32, !dbg !4076
  store i32 %5, ptr @runtime.xorshift32State, align 4, !dbg !4077
    #dbg_value(i32 %5, !4069, !DIExpression(), !4077)
  ret void, !dbg !4078
}

; Function Attrs: nounwind uwtable(sync)
define internal { i64, i1 } @runtime.hardwareRand(ptr %context) unnamed_addr #1 !dbg !4079 {
entry:
  %n = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4084
  %0 = call i32 @getrandom(ptr %n, i64 8, i32 0), !dbg !4085
    #dbg_value(i32 %0, !4082, !DIExpression(), !4086)
    #dbg_value(i32 %0, !4082, !DIExpression(), !4087)
  %1 = icmp ne i32 %0, 8, !dbg !4088
  br i1 %1, label %if.then, label %if.done, !dbg !4089

if.then:                                          ; preds = %entry
  store i64 0, ptr %n, align 8, !dbg !4090
  %2 = load i64, ptr %n, align 8, !dbg !4089
  %3 = insertvalue { i64, i1 } zeroinitializer, i64 %2, 0, !dbg !4090
  %4 = insertvalue { i64, i1 } %3, i1 false, 1, !dbg !4090
  ret { i64, i1 } %4, !dbg !4090

if.done:                                          ; preds = %entry
  %5 = load i64, ptr %n, align 8, !dbg !4091
    #dbg_value(i64 %5, !4083, !DIExpression(), !4091)
  store i64 %5, ptr %n, align 8, !dbg !4092
  %6 = load i64, ptr %n, align 8, !dbg !4089
  %7 = insertvalue { i64, i1 } zeroinitializer, i64 %6, 0, !dbg !4092
  %8 = insertvalue { i64, i1 } %7, i1 true, 1, !dbg !4092
  ret { i64, i1 } %8, !dbg !4092
}

declare i32 @getrandom(ptr nocapture, i64, i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal i64 @runtime.getCurrentStackPointer(ptr %context) unnamed_addr #1 !dbg !4093 {
entry:
  %0 = call ptr @runtime.stacksave(ptr undef), !dbg !4095
  %1 = ptrtoint ptr %0 to i64, !dbg !4096
  ret i64 %1, !dbg !4097
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @runtime.stacksave(ptr %context) #1 !dbg !4098 {
entry:
  %0 = call ptr @llvm.stacksave.p0(), !dbg !4099
  ret ptr %0, !dbg !4099
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #9

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memcpy(ptr %dst, ptr %src, i64 %size, ptr %context) #1 !dbg !4100 {
entry:
    #dbg_value(ptr %dst, !4104, !DIExpression(), !4107)
    #dbg_value(ptr %src, !4105, !DIExpression(), !4107)
    #dbg_value(i64 %size, !4106, !DIExpression(), !4107)
  call void @llvm.memcpy.p0.p0.i64(ptr %dst, ptr %src, i64 %size, i1 false), !dbg !4107
  ret void, !dbg !4107
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.nilPanic(ptr %context) #1 !dbg !4108 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4109
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.17", i64 23, ptr undef), !dbg !4110
  ret void, !dbg !4111
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.deadlock(ptr %context) unnamed_addr #1 !dbg !4112 {
entry:
  call void @"internal/task.Pause"(ptr undef), !dbg !4113
  ret void, !dbg !4114
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.lookupPanic(ptr %context) #1 !dbg !4115 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4116
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.19", i64 18, ptr undef), !dbg !4117
  ret void, !dbg !4118
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.panicOrGoexit(ptr %message.typecode, ptr %message.value, i8 %panicking, ptr %context) unnamed_addr #1 !dbg !4119 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %message.typecode, 0, !dbg !4139
  %1 = insertvalue { ptr, ptr } %0, ptr %message.value, 1, !dbg !4139
    #dbg_value(ptr %message.typecode, !4124, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4139)
    #dbg_value(ptr %message.value, !4124, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4139)
    #dbg_value(i8 %panicking, !4125, !DIExpression(), !4139)
  br i1 false, label %if.then, label %if.done, !dbg !4140

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !4141
  br label %if.done, !dbg !4140

if.done:                                          ; preds = %if.then, %entry
  br i1 true, label %cond.true, label %if.done3, !dbg !4140

cond.true:                                        ; preds = %if.done
  %2 = call i1 @"runtime/interrupt.In"(ptr undef), !dbg !4142
  br i1 %2, label %if.done3, label %if.then1, !dbg !4140

if.then1:                                         ; preds = %cond.true
  %3 = call ptr @"internal/task.Current"(ptr undef), !dbg !4143
  %4 = icmp eq ptr %3, null, !dbg !4144
  br i1 %4, label %gep.throw, label %gep.next, !dbg !4144

gep.next:                                         ; preds = %if.then1
  %5 = getelementptr inbounds %"internal/task.Task", ptr %3, i32 0, i32 8, !dbg !4144
  %6 = icmp eq ptr %5, null, !dbg !4144
  br i1 %6, label %deref.throw, label %deref.next, !dbg !4144

deref.next:                                       ; preds = %gep.next
  %7 = load ptr, ptr %5, align 8, !dbg !4144
    #dbg_value(ptr %7, !4126, !DIExpression(), !4145)
    #dbg_value(ptr %7, !4126, !DIExpression(), !4146)
  %8 = icmp ne ptr %7, null, !dbg !4147
  br i1 %8, label %if.then2, label %if.done3, !dbg !4140

if.then2:                                         ; preds = %deref.next
    #dbg_value(ptr %7, !4126, !DIExpression(), !4148)
    #dbg_value({ ptr, ptr } %1, !4124, !DIExpression(), !4149)
  %9 = getelementptr inbounds %runtime.deferFrame, ptr %7, i32 0, i32 5, !dbg !4150
  %10 = icmp eq ptr %9, null, !dbg !4150
  br i1 %10, label %store.throw, label %store.next, !dbg !4150

store.next:                                       ; preds = %if.then2
  store { ptr, ptr } %1, ptr %9, align 8, !dbg !4150
    #dbg_value({ ptr, ptr } %1, !4137, !DIExpression(), !4150)
    #dbg_value(ptr %7, !4126, !DIExpression(), !4151)
    #dbg_value(i8 %panicking, !4125, !DIExpression(), !4152)
  %11 = getelementptr inbounds %runtime.deferFrame, ptr %7, i32 0, i32 4, !dbg !4153
  %12 = icmp eq ptr %11, null, !dbg !4153
  br i1 %12, label %store.throw6, label %store.next7, !dbg !4153

store.next7:                                      ; preds = %store.next
  store i8 %panicking, ptr %11, align 1, !dbg !4153
    #dbg_value(i8 %panicking, !4138, !DIExpression(), !4153)
    #dbg_value(ptr %7, !4126, !DIExpression(), !4154)
  call void @tinygo_longjmp(ptr %7), !dbg !4155
  br label %if.done3, !dbg !4140

if.done3:                                         ; preds = %store.next7, %deref.next, %cond.true, %if.done
    #dbg_value(i8 %panicking, !4125, !DIExpression(), !4156)
  %13 = icmp eq i8 %panicking, 2, !dbg !4157
  br i1 %13, label %if.then4, label %if.done5, !dbg !4140

if.then4:                                         ; preds = %if.done3
  call void @runtime.deadlock(ptr undef), !dbg !4158
  br label %if.done5, !dbg !4140

if.done5:                                         ; preds = %if.then4, %if.done3
  call void @runtime.printstring(ptr @"runtime$string.12", i64 7, ptr undef), !dbg !4159
    #dbg_value({ ptr, ptr } %1, !4124, !DIExpression(), !4160)
  %14 = extractvalue { ptr, ptr } %1, 0, !dbg !4161
  %15 = extractvalue { ptr, ptr } %1, 1, !dbg !4161
  call void @runtime.printitf(ptr %14, ptr %15, ptr undef), !dbg !4161
  call void @runtime.printnl(ptr undef), !dbg !4162
  call void @abort(), !dbg !4163
  ret void, !dbg !4164

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !4144
  unreachable, !dbg !4144

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !4144
  unreachable, !dbg !4144

store.throw:                                      ; preds = %if.then2
  call void @runtime.nilPanic(ptr undef), !dbg !4150
  unreachable, !dbg !4150

store.throw6:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !4153
  unreachable, !dbg !4153
}

declare void @tinygo_longjmp(ptr nocapture dereferenceable_or_null(48)) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printitf(ptr %msg.typecode, ptr %msg.value, ptr %context) unnamed_addr #1 !dbg !4165 {
entry:
  %itf = alloca { ptr, ptr }, align 8, !dbg !4195
  %unpack.raw.alloc136 = alloca ptr, align 8, !dbg !4195
  %unpack.raw.alloc129 = alloca ptr, align 8, !dbg !4195
  %unpack.raw.alloc = alloca ptr, align 8, !dbg !4195
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %msg.typecode, 0, !dbg !4195
  %1 = insertvalue { ptr, ptr } %0, ptr %msg.value, 1, !dbg !4195
    #dbg_value(ptr %msg.typecode, !4169, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4195)
    #dbg_value(ptr %msg.value, !4169, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4195)
    #dbg_value({ ptr, ptr } %1, !4169, !DIExpression(), !4196)
  %interface.type = extractvalue { ptr, ptr } %1, 0, !dbg !4197
  br i1 false, label %typeassert.ok, label %typeassert.next, !dbg !4197

typeassert.next:                                  ; preds = %typeassert.ok, %entry
  %typeassert.value = phi i1 [ false, %entry ], [ %unpack.int, %typeassert.ok ], !dbg !4197
  %2 = insertvalue { i1, i1 } undef, i1 %typeassert.value, 0, !dbg !4197
  %3 = insertvalue { i1, i1 } %2, i1 false, 1, !dbg !4197
  %4 = extractvalue { i1, i1 } %3, 0, !dbg !4197
  %5 = extractvalue { i1, i1 } %3, 1, !dbg !4197
  br i1 %5, label %typeswitch.body, label %typeswitch.next, !dbg !4198

typeassert.ok:                                    ; preds = %entry
  %typeassert.value.ptr = extractvalue { ptr, ptr } %1, 1, !dbg !4197
  %unpack.int = ptrtoint ptr %typeassert.value.ptr to i1, !dbg !4197
  br label %typeassert.next, !dbg !4197

typeswitch.body:                                  ; preds = %typeassert.next
    #dbg_value(i1 %4, !4170, !DIExpression(), !4199)
  call void @runtime.printbool(i1 %4, ptr undef), !dbg !4200
  br label %typeswitch.done, !dbg !4198

typeswitch.done:                                  ; preds = %deref.next161, %typeswitch.body39, %typeswitch.body37, %typeswitch.body35, %typeswitch.body33, %typeswitch.body31, %typeswitch.body29, %typeswitch.body27, %typeswitch.body25, %typeswitch.body23, %typeswitch.body21, %typeswitch.body19, %typeswitch.body17, %switch.body15, %switch.next14, %switch.body13, %typeswitch.body10, %typeswitch.body8, %typeswitch.body6, %typeswitch.body4, %switch.body2, %switch.next, %switch.body, %typeswitch.body
  ret void, !dbg !4201

typeswitch.next:                                  ; preds = %typeassert.next
  %interface.type41 = extractvalue { ptr, ptr } %1, 0, !dbg !4202
  br i1 false, label %typeassert.ok43, label %typeassert.next44, !dbg !4202

typeassert.next44:                                ; preds = %typeassert.ok43, %typeswitch.next
  %typeassert.value47 = phi i64 [ 0, %typeswitch.next ], [ %unpack.int46, %typeassert.ok43 ], !dbg !4202
  %6 = insertvalue { i64, i1 } undef, i64 %typeassert.value47, 0, !dbg !4202
  %7 = insertvalue { i64, i1 } %6, i1 false, 1, !dbg !4202
  %8 = extractvalue { i64, i1 } %7, 0, !dbg !4202
  %9 = extractvalue { i64, i1 } %7, 1, !dbg !4202
  br i1 %9, label %typeswitch.body1, label %typeswitch.next3, !dbg !4198

typeassert.ok43:                                  ; preds = %typeswitch.next
  %typeassert.value.ptr45 = extractvalue { ptr, ptr } %1, 1, !dbg !4202
  %unpack.int46 = ptrtoint ptr %typeassert.value.ptr45 to i64, !dbg !4202
  br label %typeassert.next44, !dbg !4202

typeswitch.body1:                                 ; preds = %typeassert.next44
  br i1 true, label %switch.body, label %switch.next, !dbg !4198

switch.body:                                      ; preds = %typeswitch.body1
    #dbg_value(i64 %8, !4171, !DIExpression(), !4203)
  call void @runtime.printint64(i64 %8, ptr undef), !dbg !4204
  br label %typeswitch.done, !dbg !4198

switch.next:                                      ; preds = %typeswitch.body1
  br i1 false, label %switch.body2, label %typeswitch.done, !dbg !4198

switch.body2:                                     ; preds = %switch.next
    #dbg_value(i64 %8, !4171, !DIExpression(), !4205)
  %10 = trunc i64 %8 to i32, !dbg !4206
  call void @runtime.printint32(i32 %10, ptr undef), !dbg !4207
  br label %typeswitch.done, !dbg !4198

typeswitch.next3:                                 ; preds = %typeassert.next44
  %interface.type48 = extractvalue { ptr, ptr } %1, 0, !dbg !4208
  br i1 false, label %typeassert.ok50, label %typeassert.next51, !dbg !4208

typeassert.next51:                                ; preds = %typeassert.ok50, %typeswitch.next3
  %typeassert.value54 = phi i8 [ 0, %typeswitch.next3 ], [ %unpack.int53, %typeassert.ok50 ], !dbg !4208
  %11 = insertvalue { i8, i1 } undef, i8 %typeassert.value54, 0, !dbg !4208
  %12 = insertvalue { i8, i1 } %11, i1 false, 1, !dbg !4208
  %13 = extractvalue { i8, i1 } %12, 0, !dbg !4208
  %14 = extractvalue { i8, i1 } %12, 1, !dbg !4208
  br i1 %14, label %typeswitch.body4, label %typeswitch.next5, !dbg !4198

typeassert.ok50:                                  ; preds = %typeswitch.next3
  %typeassert.value.ptr52 = extractvalue { ptr, ptr } %1, 1, !dbg !4208
  %unpack.int53 = ptrtoint ptr %typeassert.value.ptr52 to i8, !dbg !4208
  br label %typeassert.next51, !dbg !4208

typeswitch.body4:                                 ; preds = %typeassert.next51
    #dbg_value(i8 %13, !4172, !DIExpression(), !4209)
  call void @runtime.printint8(i8 %13, ptr undef), !dbg !4210
  br label %typeswitch.done, !dbg !4198

typeswitch.next5:                                 ; preds = %typeassert.next51
  %interface.type55 = extractvalue { ptr, ptr } %1, 0, !dbg !4211
  br i1 false, label %typeassert.ok57, label %typeassert.next58, !dbg !4211

typeassert.next58:                                ; preds = %typeassert.ok57, %typeswitch.next5
  %typeassert.value61 = phi i16 [ 0, %typeswitch.next5 ], [ %unpack.int60, %typeassert.ok57 ], !dbg !4211
  %15 = insertvalue { i16, i1 } undef, i16 %typeassert.value61, 0, !dbg !4211
  %16 = insertvalue { i16, i1 } %15, i1 false, 1, !dbg !4211
  %17 = extractvalue { i16, i1 } %16, 0, !dbg !4211
  %18 = extractvalue { i16, i1 } %16, 1, !dbg !4211
  br i1 %18, label %typeswitch.body6, label %typeswitch.next7, !dbg !4198

typeassert.ok57:                                  ; preds = %typeswitch.next5
  %typeassert.value.ptr59 = extractvalue { ptr, ptr } %1, 1, !dbg !4211
  %unpack.int60 = ptrtoint ptr %typeassert.value.ptr59 to i16, !dbg !4211
  br label %typeassert.next58, !dbg !4211

typeswitch.body6:                                 ; preds = %typeassert.next58
    #dbg_value(i16 %17, !4173, !DIExpression(), !4212)
  call void @runtime.printint16(i16 %17, ptr undef), !dbg !4213
  br label %typeswitch.done, !dbg !4198

typeswitch.next7:                                 ; preds = %typeassert.next58
  %interface.type62 = extractvalue { ptr, ptr } %1, 0, !dbg !4214
  br i1 false, label %typeassert.ok64, label %typeassert.next65, !dbg !4214

typeassert.next65:                                ; preds = %typeassert.ok64, %typeswitch.next7
  %typeassert.value68 = phi i32 [ 0, %typeswitch.next7 ], [ %unpack.int67, %typeassert.ok64 ], !dbg !4214
  %19 = insertvalue { i32, i1 } undef, i32 %typeassert.value68, 0, !dbg !4214
  %20 = insertvalue { i32, i1 } %19, i1 false, 1, !dbg !4214
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !4214
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !4214
  br i1 %22, label %typeswitch.body8, label %typeswitch.next9, !dbg !4198

typeassert.ok64:                                  ; preds = %typeswitch.next7
  %typeassert.value.ptr66 = extractvalue { ptr, ptr } %1, 1, !dbg !4214
  %unpack.int67 = ptrtoint ptr %typeassert.value.ptr66 to i32, !dbg !4214
  br label %typeassert.next65, !dbg !4214

typeswitch.body8:                                 ; preds = %typeassert.next65
    #dbg_value(i32 %21, !4175, !DIExpression(), !4215)
  call void @runtime.printint32(i32 %21, ptr undef), !dbg !4216
  br label %typeswitch.done, !dbg !4198

typeswitch.next9:                                 ; preds = %typeassert.next65
  %interface.type69 = extractvalue { ptr, ptr } %1, 0, !dbg !4217
  br i1 false, label %typeassert.ok71, label %typeassert.next72, !dbg !4217

typeassert.next72:                                ; preds = %typeassert.ok71, %typeswitch.next9
  %typeassert.value75 = phi i64 [ 0, %typeswitch.next9 ], [ %unpack.int74, %typeassert.ok71 ], !dbg !4217
  %23 = insertvalue { i64, i1 } undef, i64 %typeassert.value75, 0, !dbg !4217
  %24 = insertvalue { i64, i1 } %23, i1 false, 1, !dbg !4217
  %25 = extractvalue { i64, i1 } %24, 0, !dbg !4217
  %26 = extractvalue { i64, i1 } %24, 1, !dbg !4217
  br i1 %26, label %typeswitch.body10, label %typeswitch.next11, !dbg !4198

typeassert.ok71:                                  ; preds = %typeswitch.next9
  %typeassert.value.ptr73 = extractvalue { ptr, ptr } %1, 1, !dbg !4217
  %unpack.int74 = ptrtoint ptr %typeassert.value.ptr73 to i64, !dbg !4217
  br label %typeassert.next72, !dbg !4217

typeswitch.body10:                                ; preds = %typeassert.next72
    #dbg_value(i64 %25, !4176, !DIExpression(), !4218)
  call void @runtime.printint64(i64 %25, ptr undef), !dbg !4219
  br label %typeswitch.done, !dbg !4198

typeswitch.next11:                                ; preds = %typeassert.next72
  %interface.type76 = extractvalue { ptr, ptr } %1, 0, !dbg !4220
  br i1 false, label %typeassert.ok78, label %typeassert.next79, !dbg !4220

typeassert.next79:                                ; preds = %typeassert.ok78, %typeswitch.next11
  %typeassert.value82 = phi i64 [ 0, %typeswitch.next11 ], [ %unpack.int81, %typeassert.ok78 ], !dbg !4220
  %27 = insertvalue { i64, i1 } undef, i64 %typeassert.value82, 0, !dbg !4220
  %28 = insertvalue { i64, i1 } %27, i1 false, 1, !dbg !4220
  %29 = extractvalue { i64, i1 } %28, 0, !dbg !4220
  %30 = extractvalue { i64, i1 } %28, 1, !dbg !4220
  br i1 %30, label %typeswitch.body12, label %typeswitch.next16, !dbg !4198

typeassert.ok78:                                  ; preds = %typeswitch.next11
  %typeassert.value.ptr80 = extractvalue { ptr, ptr } %1, 1, !dbg !4220
  %unpack.int81 = ptrtoint ptr %typeassert.value.ptr80 to i64, !dbg !4220
  br label %typeassert.next79, !dbg !4220

typeswitch.body12:                                ; preds = %typeassert.next79
  br i1 true, label %switch.body13, label %switch.next14, !dbg !4198

switch.body13:                                    ; preds = %typeswitch.body12
    #dbg_value(i64 %29, !4177, !DIExpression(), !4221)
  call void @runtime.printuint64(i64 %29, ptr undef), !dbg !4222
  br label %typeswitch.done, !dbg !4198

switch.next14:                                    ; preds = %typeswitch.body12
  br i1 false, label %switch.body15, label %typeswitch.done, !dbg !4198

switch.body15:                                    ; preds = %switch.next14
    #dbg_value(i64 %29, !4177, !DIExpression(), !4223)
  %31 = trunc i64 %29 to i32, !dbg !4224
  call void @runtime.printuint32(i32 %31, ptr undef), !dbg !4225
  br label %typeswitch.done, !dbg !4198

typeswitch.next16:                                ; preds = %typeassert.next79
  %interface.type83 = extractvalue { ptr, ptr } %1, 0, !dbg !4226
  %typeassert.ok2 = icmp eq ptr @"reflect/types.type:basic:uint8", %interface.type83, !dbg !4226
  br i1 %typeassert.ok2, label %typeassert.ok85, label %typeassert.next86, !dbg !4226

typeassert.next86:                                ; preds = %typeassert.ok85, %typeswitch.next16
  %typeassert.value89 = phi i8 [ 0, %typeswitch.next16 ], [ %unpack.int88, %typeassert.ok85 ], !dbg !4226
  %32 = insertvalue { i8, i1 } undef, i8 %typeassert.value89, 0, !dbg !4226
  %33 = insertvalue { i8, i1 } %32, i1 %typeassert.ok2, 1, !dbg !4226
  %34 = extractvalue { i8, i1 } %33, 0, !dbg !4226
  %35 = extractvalue { i8, i1 } %33, 1, !dbg !4226
  br i1 %35, label %typeswitch.body17, label %typeswitch.next18, !dbg !4198

typeassert.ok85:                                  ; preds = %typeswitch.next16
  %typeassert.value.ptr87 = extractvalue { ptr, ptr } %1, 1, !dbg !4226
  %unpack.int88 = ptrtoint ptr %typeassert.value.ptr87 to i8, !dbg !4226
  br label %typeassert.next86, !dbg !4226

typeswitch.body17:                                ; preds = %typeassert.next86
    #dbg_value(i8 %34, !4178, !DIExpression(), !4227)
  call void @runtime.printuint8(i8 %34, ptr undef), !dbg !4228
  br label %typeswitch.done, !dbg !4198

typeswitch.next18:                                ; preds = %typeassert.next86
  %interface.type90 = extractvalue { ptr, ptr } %1, 0, !dbg !4229
  br i1 false, label %typeassert.ok92, label %typeassert.next93, !dbg !4229

typeassert.next93:                                ; preds = %typeassert.ok92, %typeswitch.next18
  %typeassert.value96 = phi i16 [ 0, %typeswitch.next18 ], [ %unpack.int95, %typeassert.ok92 ], !dbg !4229
  %36 = insertvalue { i16, i1 } undef, i16 %typeassert.value96, 0, !dbg !4229
  %37 = insertvalue { i16, i1 } %36, i1 false, 1, !dbg !4229
  %38 = extractvalue { i16, i1 } %37, 0, !dbg !4229
  %39 = extractvalue { i16, i1 } %37, 1, !dbg !4229
  br i1 %39, label %typeswitch.body19, label %typeswitch.next20, !dbg !4198

typeassert.ok92:                                  ; preds = %typeswitch.next18
  %typeassert.value.ptr94 = extractvalue { ptr, ptr } %1, 1, !dbg !4229
  %unpack.int95 = ptrtoint ptr %typeassert.value.ptr94 to i16, !dbg !4229
  br label %typeassert.next93, !dbg !4229

typeswitch.body19:                                ; preds = %typeassert.next93
    #dbg_value(i16 %38, !4179, !DIExpression(), !4230)
  call void @runtime.printuint16(i16 %38, ptr undef), !dbg !4231
  br label %typeswitch.done, !dbg !4198

typeswitch.next20:                                ; preds = %typeassert.next93
  %interface.type97 = extractvalue { ptr, ptr } %1, 0, !dbg !4232
  br i1 false, label %typeassert.ok99, label %typeassert.next100, !dbg !4232

typeassert.next100:                               ; preds = %typeassert.ok99, %typeswitch.next20
  %typeassert.value103 = phi i32 [ 0, %typeswitch.next20 ], [ %unpack.int102, %typeassert.ok99 ], !dbg !4232
  %40 = insertvalue { i32, i1 } undef, i32 %typeassert.value103, 0, !dbg !4232
  %41 = insertvalue { i32, i1 } %40, i1 false, 1, !dbg !4232
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !4232
  %43 = extractvalue { i32, i1 } %41, 1, !dbg !4232
  br i1 %43, label %typeswitch.body21, label %typeswitch.next22, !dbg !4198

typeassert.ok99:                                  ; preds = %typeswitch.next20
  %typeassert.value.ptr101 = extractvalue { ptr, ptr } %1, 1, !dbg !4232
  %unpack.int102 = ptrtoint ptr %typeassert.value.ptr101 to i32, !dbg !4232
  br label %typeassert.next100, !dbg !4232

typeswitch.body21:                                ; preds = %typeassert.next100
    #dbg_value(i32 %42, !4180, !DIExpression(), !4233)
  call void @runtime.printuint32(i32 %42, ptr undef), !dbg !4234
  br label %typeswitch.done, !dbg !4198

typeswitch.next22:                                ; preds = %typeassert.next100
  %interface.type104 = extractvalue { ptr, ptr } %1, 0, !dbg !4235
  br i1 false, label %typeassert.ok106, label %typeassert.next107, !dbg !4235

typeassert.next107:                               ; preds = %typeassert.ok106, %typeswitch.next22
  %typeassert.value110 = phi i64 [ 0, %typeswitch.next22 ], [ %unpack.int109, %typeassert.ok106 ], !dbg !4235
  %44 = insertvalue { i64, i1 } undef, i64 %typeassert.value110, 0, !dbg !4235
  %45 = insertvalue { i64, i1 } %44, i1 false, 1, !dbg !4235
  %46 = extractvalue { i64, i1 } %45, 0, !dbg !4235
  %47 = extractvalue { i64, i1 } %45, 1, !dbg !4235
  br i1 %47, label %typeswitch.body23, label %typeswitch.next24, !dbg !4198

typeassert.ok106:                                 ; preds = %typeswitch.next22
  %typeassert.value.ptr108 = extractvalue { ptr, ptr } %1, 1, !dbg !4235
  %unpack.int109 = ptrtoint ptr %typeassert.value.ptr108 to i64, !dbg !4235
  br label %typeassert.next107, !dbg !4235

typeswitch.body23:                                ; preds = %typeassert.next107
    #dbg_value(i64 %46, !4181, !DIExpression(), !4236)
  call void @runtime.printuint64(i64 %46, ptr undef), !dbg !4237
  br label %typeswitch.done, !dbg !4198

typeswitch.next24:                                ; preds = %typeassert.next107
  %interface.type111 = extractvalue { ptr, ptr } %1, 0, !dbg !4238
  br i1 false, label %typeassert.ok113, label %typeassert.next114, !dbg !4238

typeassert.next114:                               ; preds = %typeassert.ok113, %typeswitch.next24
  %typeassert.value117 = phi i64 [ 0, %typeswitch.next24 ], [ %unpack.int116, %typeassert.ok113 ], !dbg !4238
  %48 = insertvalue { i64, i1 } undef, i64 %typeassert.value117, 0, !dbg !4238
  %49 = insertvalue { i64, i1 } %48, i1 false, 1, !dbg !4238
  %50 = extractvalue { i64, i1 } %49, 0, !dbg !4238
  %51 = extractvalue { i64, i1 } %49, 1, !dbg !4238
  br i1 %51, label %typeswitch.body25, label %typeswitch.next26, !dbg !4198

typeassert.ok113:                                 ; preds = %typeswitch.next24
  %typeassert.value.ptr115 = extractvalue { ptr, ptr } %1, 1, !dbg !4238
  %unpack.int116 = ptrtoint ptr %typeassert.value.ptr115 to i64, !dbg !4238
  br label %typeassert.next114, !dbg !4238

typeswitch.body25:                                ; preds = %typeassert.next114
    #dbg_value(i64 %50, !4182, !DIExpression(), !4239)
  call void @runtime.printuintptr(i64 %50, ptr undef), !dbg !4240
  br label %typeswitch.done, !dbg !4198

typeswitch.next26:                                ; preds = %typeassert.next114
  %interface.type118 = extractvalue { ptr, ptr } %1, 0, !dbg !4241
  br i1 false, label %typeassert.ok120, label %typeassert.next121, !dbg !4241

typeassert.next121:                               ; preds = %typeassert.ok120, %typeswitch.next26
  %typeassert.value123 = phi float [ 0.000000e+00, %typeswitch.next26 ], [ %57, %typeassert.ok120 ], !dbg !4195
  %52 = insertvalue { float, i1 } undef, float %typeassert.value123, 0, !dbg !4195
  %53 = insertvalue { float, i1 } %52, i1 false, 1, !dbg !4195
  %54 = extractvalue { float, i1 } %53, 0, !dbg !4241
  %55 = extractvalue { float, i1 } %53, 1, !dbg !4241
  br i1 %55, label %typeswitch.body27, label %typeswitch.next28, !dbg !4198

typeassert.ok120:                                 ; preds = %typeswitch.next26
  %typeassert.value.ptr122 = extractvalue { ptr, ptr } %1, 1, !dbg !4241
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc), !dbg !4195
  store ptr %typeassert.value.ptr122, ptr %unpack.raw.alloc, align 8, !dbg !4195
  %56 = getelementptr inbounds { float }, ptr %unpack.raw.alloc, i32 0, i32 0, !dbg !4195
  %57 = load float, ptr %56, align 4, !dbg !4195
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc), !dbg !4195
  br label %typeassert.next121, !dbg !4195

typeswitch.body27:                                ; preds = %typeassert.next121
    #dbg_value(float %54, !4183, !DIExpression(), !4242)
  call void @runtime.printfloat32(float %54, ptr undef), !dbg !4243
  br label %typeswitch.done, !dbg !4198

typeswitch.next28:                                ; preds = %typeassert.next121
  %interface.type124 = extractvalue { ptr, ptr } %1, 0, !dbg !4244
  br i1 false, label %typeassert.ok126, label %typeassert.next127, !dbg !4244

typeassert.next127:                               ; preds = %typeassert.ok126, %typeswitch.next28
  %typeassert.value130 = phi double [ 0.000000e+00, %typeswitch.next28 ], [ %63, %typeassert.ok126 ], !dbg !4195
  %58 = insertvalue { double, i1 } undef, double %typeassert.value130, 0, !dbg !4195
  %59 = insertvalue { double, i1 } %58, i1 false, 1, !dbg !4195
  %60 = extractvalue { double, i1 } %59, 0, !dbg !4244
  %61 = extractvalue { double, i1 } %59, 1, !dbg !4244
  br i1 %61, label %typeswitch.body29, label %typeswitch.next30, !dbg !4198

typeassert.ok126:                                 ; preds = %typeswitch.next28
  %typeassert.value.ptr128 = extractvalue { ptr, ptr } %1, 1, !dbg !4244
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc129), !dbg !4195
  store ptr %typeassert.value.ptr128, ptr %unpack.raw.alloc129, align 8, !dbg !4195
  %62 = getelementptr inbounds { double }, ptr %unpack.raw.alloc129, i32 0, i32 0, !dbg !4195
  %63 = load double, ptr %62, align 8, !dbg !4195
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc129), !dbg !4195
  br label %typeassert.next127, !dbg !4195

typeswitch.body29:                                ; preds = %typeassert.next127
    #dbg_value(double %60, !4185, !DIExpression(), !4245)
  call void @runtime.printfloat64(double %60, ptr undef), !dbg !4246
  br label %typeswitch.done, !dbg !4198

typeswitch.next30:                                ; preds = %typeassert.next127
  %interface.type131 = extractvalue { ptr, ptr } %1, 0, !dbg !4247
  br i1 false, label %typeassert.ok133, label %typeassert.next134, !dbg !4247

typeassert.next134:                               ; preds = %typeassert.ok133, %typeswitch.next30
  %typeassert.value137 = phi { float, float } [ zeroinitializer, %typeswitch.next30 ], [ %69, %typeassert.ok133 ], !dbg !4195
  %64 = insertvalue { { float, float }, i1 } undef, { float, float } %typeassert.value137, 0, !dbg !4195
  %65 = insertvalue { { float, float }, i1 } %64, i1 false, 1, !dbg !4195
  %66 = extractvalue { { float, float }, i1 } %65, 0, !dbg !4247
  %67 = extractvalue { { float, float }, i1 } %65, 1, !dbg !4247
  br i1 %67, label %typeswitch.body31, label %typeswitch.next32, !dbg !4198

typeassert.ok133:                                 ; preds = %typeswitch.next30
  %typeassert.value.ptr135 = extractvalue { ptr, ptr } %1, 1, !dbg !4247
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc136), !dbg !4195
  store ptr %typeassert.value.ptr135, ptr %unpack.raw.alloc136, align 8, !dbg !4195
  %68 = getelementptr inbounds { { float, float } }, ptr %unpack.raw.alloc136, i32 0, i32 0, !dbg !4195
  %69 = load { float, float }, ptr %68, align 4, !dbg !4195
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc136), !dbg !4195
  br label %typeassert.next134, !dbg !4195

typeswitch.body31:                                ; preds = %typeassert.next134
    #dbg_value({ float, float } %66, !4186, !DIExpression(), !4248)
  %70 = extractvalue { float, float } %66, 0, !dbg !4249
  %71 = extractvalue { float, float } %66, 1, !dbg !4249
  call void @runtime.printcomplex64(float %70, float %71, ptr undef), !dbg !4249
  br label %typeswitch.done, !dbg !4198

typeswitch.next32:                                ; preds = %typeassert.next134
  %interface.type138 = extractvalue { ptr, ptr } %1, 0, !dbg !4250
  br i1 false, label %typeassert.ok140, label %typeassert.next141, !dbg !4250

typeassert.next141:                               ; preds = %typeassert.ok140, %typeswitch.next32
  %typeassert.value143 = phi { double, double } [ zeroinitializer, %typeswitch.next32 ], [ %77, %typeassert.ok140 ], !dbg !4250
  %72 = insertvalue { { double, double }, i1 } undef, { double, double } %typeassert.value143, 0, !dbg !4250
  %73 = insertvalue { { double, double }, i1 } %72, i1 false, 1, !dbg !4250
  %74 = extractvalue { { double, double }, i1 } %73, 0, !dbg !4250
  %75 = extractvalue { { double, double }, i1 } %73, 1, !dbg !4250
  br i1 %75, label %typeswitch.body33, label %typeswitch.next34, !dbg !4198

typeassert.ok140:                                 ; preds = %typeswitch.next32
  %typeassert.value.ptr142 = extractvalue { ptr, ptr } %1, 1, !dbg !4250
  %76 = getelementptr inbounds { { double, double } }, ptr %typeassert.value.ptr142, i32 0, i32 0, !dbg !4250
  %77 = load { double, double }, ptr %76, align 8, !dbg !4250
  br label %typeassert.next141, !dbg !4250

typeswitch.body33:                                ; preds = %typeassert.next141
    #dbg_value({ double, double } %74, !4188, !DIExpression(), !4251)
  %78 = extractvalue { double, double } %74, 0, !dbg !4252
  %79 = extractvalue { double, double } %74, 1, !dbg !4252
  call void @runtime.printcomplex128(double %78, double %79, ptr undef), !dbg !4252
  br label %typeswitch.done, !dbg !4198

typeswitch.next34:                                ; preds = %typeassert.next141
  %interface.type144 = extractvalue { ptr, ptr } %1, 0, !dbg !4253
  %typeassert.ok1 = icmp eq ptr @"reflect/types.type:basic:string", %interface.type144, !dbg !4253
  br i1 %typeassert.ok1, label %typeassert.ok146, label %typeassert.next147, !dbg !4253

typeassert.next147:                               ; preds = %typeassert.ok146, %typeswitch.next34
  %typeassert.value149 = phi %runtime._string [ zeroinitializer, %typeswitch.next34 ], [ %85, %typeassert.ok146 ], !dbg !4253
  %80 = insertvalue { %runtime._string, i1 } undef, %runtime._string %typeassert.value149, 0, !dbg !4253
  %81 = insertvalue { %runtime._string, i1 } %80, i1 %typeassert.ok1, 1, !dbg !4253
  %82 = extractvalue { %runtime._string, i1 } %81, 0, !dbg !4253
  %83 = extractvalue { %runtime._string, i1 } %81, 1, !dbg !4253
  br i1 %83, label %typeswitch.body35, label %typeswitch.next36, !dbg !4198

typeassert.ok146:                                 ; preds = %typeswitch.next34
  %typeassert.value.ptr148 = extractvalue { ptr, ptr } %1, 1, !dbg !4253
  %84 = getelementptr inbounds { %runtime._string }, ptr %typeassert.value.ptr148, i32 0, i32 0, !dbg !4253
  %85 = load %runtime._string, ptr %84, align 8, !dbg !4253
  br label %typeassert.next147, !dbg !4253

typeswitch.body35:                                ; preds = %typeassert.next147
    #dbg_value(%runtime._string %82, !4190, !DIExpression(), !4254)
  %86 = extractvalue %runtime._string %82, 0, !dbg !4255
  %87 = extractvalue %runtime._string %82, 1, !dbg !4255
  call void @runtime.printstring(ptr %86, i64 %87, ptr undef), !dbg !4255
  br label %typeswitch.done, !dbg !4198

typeswitch.next36:                                ; preds = %typeassert.next147
  %interface.type150 = extractvalue { ptr, ptr } %1, 0, !dbg !4256
  %88 = call i1 @"interface:{Error:func:{}{basic:string}}.$typeassert"(ptr %interface.type150), !dbg !4256
  br i1 %88, label %typeassert.ok151, label %typeassert.next152, !dbg !4256

typeassert.next152:                               ; preds = %typeassert.ok151, %typeswitch.next36
  %typeassert.value153 = phi { ptr, ptr } [ zeroinitializer, %typeswitch.next36 ], [ %1, %typeassert.ok151 ], !dbg !4256
  %89 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %typeassert.value153, 0, !dbg !4256
  %90 = insertvalue { { ptr, ptr }, i1 } %89, i1 %88, 1, !dbg !4256
  %91 = extractvalue { { ptr, ptr }, i1 } %90, 0, !dbg !4256
  %92 = extractvalue { { ptr, ptr }, i1 } %90, 1, !dbg !4256
  br i1 %92, label %typeswitch.body37, label %typeswitch.next38, !dbg !4198

typeassert.ok151:                                 ; preds = %typeswitch.next36
  br label %typeassert.next152, !dbg !4256

typeswitch.body37:                                ; preds = %typeassert.next152
    #dbg_value({ ptr, ptr } %91, !4191, !DIExpression(), !4257)
  %invoke.func.typecode = extractvalue { ptr, ptr } %91, 0, !dbg !4258
  %invoke.func.value = extractvalue { ptr, ptr } %91, 1, !dbg !4258
  %93 = call %runtime._string @"interface:{Error:func:{}{basic:string}}.Error$invoke"(ptr %invoke.func.value, ptr %invoke.func.typecode, ptr undef), !dbg !4258
  %94 = extractvalue %runtime._string %93, 0, !dbg !4259
  %95 = extractvalue %runtime._string %93, 1, !dbg !4259
  call void @runtime.printstring(ptr %94, i64 %95, ptr undef), !dbg !4259
  br label %typeswitch.done, !dbg !4198

typeswitch.next38:                                ; preds = %typeassert.next152
  %interface.type154 = extractvalue { ptr, ptr } %1, 0, !dbg !4260
  %96 = call i1 @"interface:{String:func:{}{basic:string}}.$typeassert"(ptr %interface.type154), !dbg !4260
  br i1 %96, label %typeassert.ok155, label %typeassert.next156, !dbg !4260

typeassert.next156:                               ; preds = %typeassert.ok155, %typeswitch.next38
  %typeassert.value157 = phi { ptr, ptr } [ zeroinitializer, %typeswitch.next38 ], [ %1, %typeassert.ok155 ], !dbg !4260
  %97 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %typeassert.value157, 0, !dbg !4260
  %98 = insertvalue { { ptr, ptr }, i1 } %97, i1 %96, 1, !dbg !4260
  %99 = extractvalue { { ptr, ptr }, i1 } %98, 0, !dbg !4260
  %100 = extractvalue { { ptr, ptr }, i1 } %98, 1, !dbg !4260
  br i1 %100, label %typeswitch.body39, label %typeswitch.next40, !dbg !4198

typeassert.ok155:                                 ; preds = %typeswitch.next38
  br label %typeassert.next156, !dbg !4260

typeswitch.body39:                                ; preds = %typeassert.next156
    #dbg_value({ ptr, ptr } %99, !4192, !DIExpression(), !4261)
  %invoke.func.typecode158 = extractvalue { ptr, ptr } %99, 0, !dbg !4262
  %invoke.func.value159 = extractvalue { ptr, ptr } %99, 1, !dbg !4262
  %101 = call %runtime._string @"interface:{String:func:{}{basic:string}}.String$invoke"(ptr %invoke.func.value159, ptr %invoke.func.typecode158, ptr undef), !dbg !4262
  %102 = extractvalue %runtime._string %101, 0, !dbg !4263
  %103 = extractvalue %runtime._string %101, 1, !dbg !4263
  call void @runtime.printstring(ptr %102, i64 %103, ptr undef), !dbg !4263
  br label %typeswitch.done, !dbg !4198

typeswitch.next40:                                ; preds = %typeassert.next156
  %msg = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 389 to ptr), ptr undef), !dbg !4264
  store { ptr, ptr } %1, ptr %msg, align 8, !dbg !4264
  store { ptr, ptr } zeroinitializer, ptr %itf, align 8, !dbg !4195
  %104 = load { ptr, ptr }, ptr %msg, align 8, !dbg !4265
  store { ptr, ptr } %104, ptr %itf, align 8, !dbg !4266
    #dbg_value({ ptr, ptr } %104, !4194, !DIExpression(), !4266)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4267
  %105 = getelementptr inbounds { ptr, ptr }, ptr %itf, i32 0, i32 0, !dbg !4268
  %106 = icmp eq ptr %105, null, !dbg !4268
  br i1 %106, label %deref.throw, label %deref.next, !dbg !4268

deref.next:                                       ; preds = %typeswitch.next40
  %107 = load ptr, ptr %105, align 8, !dbg !4268
  %108 = ptrtoint ptr %107 to i64, !dbg !4269
  call void @runtime.printuintptr(i64 %108, ptr undef), !dbg !4270
  call void @runtime.putchar(i8 58, ptr undef), !dbg !4271
  %109 = getelementptr inbounds { ptr, ptr }, ptr %itf, i32 0, i32 1, !dbg !4272
  %110 = icmp eq ptr %109, null, !dbg !4272
  br i1 %110, label %deref.throw160, label %deref.next161, !dbg !4272

deref.next161:                                    ; preds = %deref.next
  %111 = load ptr, ptr %109, align 8, !dbg !4272
  %112 = ptrtoint ptr %111 to i64, !dbg !4273
  call void @runtime.printptr(i64 %112, ptr undef), !dbg !4274
  call void @runtime.putchar(i8 41, ptr undef), !dbg !4275
  br label %typeswitch.done, !dbg !4198

deref.throw:                                      ; preds = %typeswitch.next40
  call void @runtime.nilPanic(ptr undef), !dbg !4268
  unreachable, !dbg !4268

deref.throw160:                                   ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !4272
  unreachable, !dbg !4272
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printbool(i1 %b, ptr %context) unnamed_addr #1 !dbg !4276 {
entry:
    #dbg_value(i1 %b, !4280, !DIExpression(), !4281)
    #dbg_value(i1 %b, !4280, !DIExpression(), !4282)
  br i1 %b, label %if.then, label %if.else, !dbg !4283

if.then:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.46", i64 4, ptr undef), !dbg !4284
  br label %if.done, !dbg !4283

if.done:                                          ; preds = %if.else, %if.then
  ret void, !dbg !4285

if.else:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.47", i64 5, ptr undef), !dbg !4286
  br label %if.done, !dbg !4283
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint64(i64 %n, ptr %context) unnamed_addr #1 !dbg !4287 {
entry:
    #dbg_value(i64 %n, !4291, !DIExpression(), !4292)
    #dbg_value(i64 %n, !4291, !DIExpression(), !4293)
  %0 = icmp slt i64 %n, 0, !dbg !4294
  br i1 %0, label %if.then, label %if.done, !dbg !4295

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 45, ptr undef), !dbg !4296
    #dbg_value(i64 %n, !4291, !DIExpression(), !4297)
  %1 = sub i64 0, %n, !dbg !4298
    #dbg_value(i64 %1, !4291, !DIExpression(), !4299)
  br label %if.done, !dbg !4295

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i64 [ %n, %entry ], [ %1, %if.then ], !dbg !4300
    #dbg_value(i64 %2, !4291, !DIExpression(), !4301)
  call void @runtime.printuint64(i64 %2, ptr undef), !dbg !4302
  ret void, !dbg !4303
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint32(i32 %n, ptr %context) unnamed_addr #1 !dbg !4304 {
entry:
    #dbg_value(i32 %n, !4306, !DIExpression(), !4307)
    #dbg_value(i32 %n, !4306, !DIExpression(), !4308)
  %0 = icmp slt i32 %n, 0, !dbg !4309
  br i1 %0, label %if.then, label %if.done, !dbg !4310

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 45, ptr undef), !dbg !4311
    #dbg_value(i32 %n, !4306, !DIExpression(), !4312)
  %1 = sub i32 0, %n, !dbg !4313
    #dbg_value(i32 %1, !4306, !DIExpression(), !4314)
  br label %if.done, !dbg !4310

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i32 [ %n, %entry ], [ %1, %if.then ], !dbg !4315
    #dbg_value(i32 %2, !4306, !DIExpression(), !4316)
  call void @runtime.printuint32(i32 %2, ptr undef), !dbg !4317
  ret void, !dbg !4318
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint8(i8 %n, ptr %context) unnamed_addr #1 !dbg !4319 {
entry:
    #dbg_value(i8 %n, !4323, !DIExpression(), !4324)
  br i1 true, label %if.then, label %if.else, !dbg !4325

if.then:                                          ; preds = %entry
    #dbg_value(i8 %n, !4323, !DIExpression(), !4326)
  %0 = sext i8 %n to i32, !dbg !4327
  call void @runtime.printint32(i32 %0, ptr undef), !dbg !4328
  br label %if.done, !dbg !4325

if.done:                                          ; preds = %if.done2, %if.then
  ret void, !dbg !4329

if.else:                                          ; preds = %entry
    #dbg_value(i8 %n, !4323, !DIExpression(), !4330)
  %1 = icmp slt i8 %n, 0, !dbg !4331
  br i1 %1, label %if.then1, label %if.done2, !dbg !4325

if.then1:                                         ; preds = %if.else
  call void @runtime.putchar(i8 45, ptr undef), !dbg !4332
    #dbg_value(i8 %n, !4323, !DIExpression(), !4333)
  %2 = sub i8 0, %n, !dbg !4334
    #dbg_value(i8 %2, !4323, !DIExpression(), !4335)
  br label %if.done2, !dbg !4325

if.done2:                                         ; preds = %if.then1, %if.else
  %3 = phi i8 [ %n, %if.else ], [ %2, %if.then1 ], !dbg !4336
    #dbg_value(i8 %3, !4323, !DIExpression(), !4337)
  call void @runtime.printuint8(i8 %3, ptr undef), !dbg !4338
  br label %if.done, !dbg !4325
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint16(i16 %n, ptr %context) unnamed_addr #1 !dbg !4339 {
entry:
    #dbg_value(i16 %n, !4343, !DIExpression(), !4344)
    #dbg_value(i16 %n, !4343, !DIExpression(), !4345)
  %0 = sext i16 %n to i32, !dbg !4346
  call void @runtime.printint32(i32 %0, ptr undef), !dbg !4347
  ret void, !dbg !4348
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint64(i64 %n, ptr %context) unnamed_addr #1 !dbg !4349 {
entry:
    #dbg_value(i64 %n, !4351, !DIExpression(), !4356)
  %digits = alloca [20 x i8], align 1, !dbg !4357
  store [20 x i8] zeroinitializer, ptr %digits, align 1, !dbg !4357
    #dbg_value(i64 19, !4352, !DIExpression(), !4358)
    #dbg_value(i64 19, !4353, !DIExpression(), !4359)
  br label %for.loop, !dbg !4360

for.loop:                                         ; preds = %if.done, %entry
  %0 = phi i64 [ %n, %entry ], [ %10, %if.done ], !dbg !4361
  %1 = phi i64 [ 19, %entry ], [ %9, %if.done ], !dbg !4358
  %2 = phi i64 [ 19, %entry ], [ %11, %if.done ], !dbg !4359
    #dbg_value(i64 %2, !4353, !DIExpression(), !4362)
  %3 = icmp sge i64 %2, 0, !dbg !4363
  br i1 %3, label %for.body, label %for.done, !dbg !4360

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4351, !DIExpression(), !4364)
  %4 = urem i64 %0, 10, !dbg !4365
  %5 = add i64 %4, 48, !dbg !4366
  %6 = trunc i64 %5 to i8, !dbg !4367
    #dbg_value(i8 %6, !4354, !DIExpression(), !4368)
    #dbg_value(i64 %2, !4353, !DIExpression(), !4369)
    #dbg_value(i8 %6, !4354, !DIExpression(), !4370)
  %7 = getelementptr inbounds [20 x i8], ptr %digits, i32 0, i64 %2, !dbg !4371
  store i8 %6, ptr %7, align 1, !dbg !4371
    #dbg_value(i8 %6, !4354, !DIExpression(), !4372)
  %8 = icmp ne i8 %6, 48, !dbg !4373
  br i1 %8, label %if.then, label %if.done, !dbg !4360

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %2, !4353, !DIExpression(), !4374)
    #dbg_value(i64 %2, !4352, !DIExpression(), !4375)
  br label %if.done, !dbg !4360

if.done:                                          ; preds = %if.then, %for.body
  %9 = phi i64 [ %1, %for.body ], [ %2, %if.then ], !dbg !4358
  %10 = udiv i64 %0, 10, !dbg !4376
    #dbg_value(i64 %10, !4351, !DIExpression(), !4376)
  %11 = sub i64 %2, 1, !dbg !4377
    #dbg_value(i64 %11, !4353, !DIExpression(), !4377)
  br label %for.loop, !dbg !4360

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4352, !DIExpression(), !4378)
    #dbg_value(i64 %1, !4355, !DIExpression(), !4379)
  br label %for.loop1, !dbg !4360

for.loop1:                                        ; preds = %for.body2, %for.done
  %12 = phi i64 [ %1, %for.done ], [ %16, %for.body2 ], !dbg !4379
    #dbg_value(i64 %12, !4355, !DIExpression(), !4380)
  %13 = icmp slt i64 %12, 20, !dbg !4381
  br i1 %13, label %for.body2, label %for.done3, !dbg !4360

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %12, !4355, !DIExpression(), !4382)
  %14 = getelementptr inbounds [20 x i8], ptr %digits, i32 0, i64 %12, !dbg !4383
  %15 = load i8, ptr %14, align 1, !dbg !4383
  call void @runtime.putchar(i8 %15, ptr undef), !dbg !4384
  %16 = add i64 %12, 1, !dbg !4385
    #dbg_value(i64 %16, !4355, !DIExpression(), !4385)
  br label %for.loop1, !dbg !4360

for.done3:                                        ; preds = %for.loop1
  ret void, !dbg !4386
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint32(i32 %n, ptr %context) unnamed_addr #1 !dbg !4387 {
entry:
    #dbg_value(i32 %n, !4389, !DIExpression(), !4390)
    #dbg_value(i32 %n, !4389, !DIExpression(), !4391)
  %0 = zext i32 %n to i64, !dbg !4392
  call void @runtime.printuint64(i64 %0, ptr undef), !dbg !4393
  ret void, !dbg !4394
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint8(i8 %n, ptr %context) unnamed_addr #1 !dbg !4395 {
entry:
    #dbg_value(i8 %n, !4399, !DIExpression(), !4401)
  br i1 true, label %if.then, label %if.else, !dbg !4402

if.then:                                          ; preds = %entry
    #dbg_value(i8 %n, !4399, !DIExpression(), !4403)
  %0 = zext i8 %n to i32, !dbg !4404
  call void @runtime.printuint32(i32 %0, ptr undef), !dbg !4405
  br label %if.done, !dbg !4402

if.done:                                          ; preds = %if.done2, %if.then
  ret void, !dbg !4406

if.else:                                          ; preds = %entry
    #dbg_value(i8 %n, !4399, !DIExpression(), !4407)
  %1 = udiv i8 %n, 10, !dbg !4408
    #dbg_value(i8 %1, !4400, !DIExpression(), !4409)
    #dbg_value(i8 %1, !4400, !DIExpression(), !4410)
  %2 = icmp ne i8 %1, 0, !dbg !4411
  br i1 %2, label %if.then1, label %if.done2, !dbg !4402

if.then1:                                         ; preds = %if.else
    #dbg_value(i8 %1, !4400, !DIExpression(), !4412)
  call void @runtime.printuint8(i8 %1, ptr undef), !dbg !4413
  br label %if.done2, !dbg !4402

if.done2:                                         ; preds = %if.then1, %if.else
    #dbg_value(i8 %n, !4399, !DIExpression(), !4414)
  %3 = urem i8 %n, 10, !dbg !4415
  %4 = add i8 %3, 48, !dbg !4416
  call void @runtime.putchar(i8 %4, ptr undef), !dbg !4417
  br label %if.done, !dbg !4402
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint16(i16 %n, ptr %context) unnamed_addr #1 !dbg !4418 {
entry:
    #dbg_value(i16 %n, !4422, !DIExpression(), !4423)
    #dbg_value(i16 %n, !4422, !DIExpression(), !4424)
  %0 = zext i16 %n to i32, !dbg !4425
  call void @runtime.printuint32(i32 %0, ptr undef), !dbg !4426
  ret void, !dbg !4427
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuintptr(i64 %n, ptr %context) unnamed_addr #1 !dbg !4428 {
entry:
    #dbg_value(i64 %n, !4430, !DIExpression(), !4431)
  br i1 false, label %switch.body, label %switch.next, !dbg !4432

switch.body:                                      ; preds = %entry
    #dbg_value(i64 %n, !4430, !DIExpression(), !4433)
  %0 = trunc i64 %n to i16, !dbg !4434
  call void @runtime.printuint16(i16 %0, ptr undef), !dbg !4435
  br label %switch.done, !dbg !4432

switch.done:                                      ; preds = %switch.body3, %switch.next2, %switch.body1, %switch.body
  ret void, !dbg !4436

switch.next:                                      ; preds = %entry
  br i1 false, label %switch.body1, label %switch.next2, !dbg !4432

switch.body1:                                     ; preds = %switch.next
    #dbg_value(i64 %n, !4430, !DIExpression(), !4437)
  %1 = trunc i64 %n to i32, !dbg !4438
  call void @runtime.printuint32(i32 %1, ptr undef), !dbg !4439
  br label %switch.done, !dbg !4432

switch.next2:                                     ; preds = %switch.next
  br i1 true, label %switch.body3, label %switch.done, !dbg !4432

switch.body3:                                     ; preds = %switch.next2
    #dbg_value(i64 %n, !4430, !DIExpression(), !4440)
  call void @runtime.printuint64(i64 %n, ptr undef), !dbg !4441
  br label %switch.done, !dbg !4432
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printfloat32(float %v, ptr %context) unnamed_addr #1 !dbg !4442 {
entry:
    #dbg_value(float %v, !4446, !DIExpression(), !4455)
    #dbg_value(float %v, !4446, !DIExpression(), !4456)
    #dbg_value(float %v, !4446, !DIExpression(), !4457)
  %index.alloca = alloca [14 x i8], align 1, !dbg !4458
  %buf = alloca [14 x i8], align 1, !dbg !4458
  %0 = fcmp une float %v, %v, !dbg !4458
  br i1 %0, label %switch.body, label %switch.next, !dbg !4459

switch.body:                                      ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.35", i64 3, ptr undef), !dbg !4460
  ret void, !dbg !4461

switch.next:                                      ; preds = %entry
    #dbg_value(float %v, !4446, !DIExpression(), !4462)
    #dbg_value(float %v, !4446, !DIExpression(), !4463)
  %1 = fadd float %v, %v, !dbg !4464
    #dbg_value(float %v, !4446, !DIExpression(), !4465)
  %2 = fcmp oeq float %1, %v, !dbg !4466
  br i1 %2, label %binop.rhs, label %binop.done, !dbg !4459

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(float %v, !4446, !DIExpression(), !4467)
  %3 = fcmp ogt float %v, 0.000000e+00, !dbg !4468
  br label %binop.done, !dbg !4459

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ false, %switch.next ], [ %3, %binop.rhs ], !dbg !4469
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4459

switch.body1:                                     ; preds = %binop.done
  call void @runtime.printstring(ptr @"runtime$string.36", i64 4, ptr undef), !dbg !4470
  ret void, !dbg !4471

switch.next2:                                     ; preds = %binop.done
    #dbg_value(float %v, !4446, !DIExpression(), !4472)
    #dbg_value(float %v, !4446, !DIExpression(), !4473)
  %5 = fadd float %v, %v, !dbg !4474
    #dbg_value(float %v, !4446, !DIExpression(), !4475)
  %6 = fcmp oeq float %5, %v, !dbg !4476
  br i1 %6, label %binop.rhs3, label %binop.done4, !dbg !4459

binop.rhs3:                                       ; preds = %switch.next2
    #dbg_value(float %v, !4446, !DIExpression(), !4477)
  %7 = fcmp olt float %v, 0.000000e+00, !dbg !4478
  br label %binop.done4, !dbg !4459

binop.done4:                                      ; preds = %binop.rhs3, %switch.next2
  %8 = phi i1 [ false, %switch.next2 ], [ %7, %binop.rhs3 ], !dbg !4479
  br i1 %8, label %switch.body5, label %switch.next6, !dbg !4459

switch.body5:                                     ; preds = %binop.done4
  call void @runtime.printstring(ptr @"runtime$string.37", i64 4, ptr undef), !dbg !4480
  ret void, !dbg !4481

switch.next6:                                     ; preds = %binop.done4
  store [14 x i8] zeroinitializer, ptr %buf, align 1, !dbg !4458
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4482
  store i8 43, ptr %9, align 1, !dbg !4482
    #dbg_value(i64 0, !4447, !DIExpression(), !4483)
    #dbg_value(float %v, !4446, !DIExpression(), !4484)
  %10 = fcmp oeq float %v, 0.000000e+00, !dbg !4485
  br i1 %10, label %if.then, label %if.else, !dbg !4459

if.then:                                          ; preds = %switch.next6
    #dbg_value(float %v, !4446, !DIExpression(), !4486)
  %11 = fdiv float 1.000000e+00, %v, !dbg !4487
  %12 = fcmp olt float %11, 0.000000e+00, !dbg !4488
  br i1 %12, label %if.then7, label %if.done, !dbg !4459

if.then7:                                         ; preds = %if.then
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4489
  store i8 45, ptr %13, align 1, !dbg !4489
  br label %if.done, !dbg !4459

if.done:                                          ; preds = %if.then19, %for.done18, %if.then7, %if.then
  %14 = phi float [ %v, %if.then ], [ %84, %for.done18 ], [ %v, %if.then7 ], [ %87, %if.then19 ], !dbg !4490
  %15 = phi i64 [ 0, %if.then ], [ %75, %for.done18 ], [ 0, %if.then7 ], [ %86, %if.then19 ], !dbg !4483
    #dbg_value(i64 0, !4448, !DIExpression(), !4491)
  br label %for.loop, !dbg !4459

for.loop:                                         ; preds = %lookup.next, %if.done
  %16 = phi float [ %14, %if.done ], [ %27, %lookup.next ], !dbg !4490
  %17 = phi i64 [ 0, %if.done ], [ %28, %lookup.next ], !dbg !4491
    #dbg_value(i64 %17, !4448, !DIExpression(), !4492)
  %18 = icmp slt i64 %17, 7, !dbg !4493
  br i1 %18, label %for.body, label %for.done, !dbg !4459

for.body:                                         ; preds = %for.loop
    #dbg_value(float %16, !4446, !DIExpression(), !4494)
  %abovemin = fcmp ole float 0xC3E0000000000000, %16, !dbg !4495
  %belowmax = fcmp ole float %16, 0x43DFFFFFC0000000, !dbg !4495
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4495
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4495
  %isnan = fcmp uno float %16, %16, !dbg !4495
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4495
  %normal = fptosi float %16 to i64, !dbg !4495
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4495
    #dbg_value(i64 %19, !4449, !DIExpression(), !4496)
    #dbg_value(i64 %17, !4448, !DIExpression(), !4497)
  %20 = add i64 %17, 2, !dbg !4498
    #dbg_value(i64 %19, !4449, !DIExpression(), !4499)
  %21 = add i64 %19, 48, !dbg !4500
  %22 = trunc i64 %21 to i8, !dbg !4501
  %23 = icmp uge i64 %20, 14, !dbg !4502
  br i1 %23, label %lookup.throw, label %lookup.next, !dbg !4502

lookup.next:                                      ; preds = %for.body
  %24 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 %20, !dbg !4502
  store i8 %22, ptr %24, align 1, !dbg !4502
    #dbg_value(i64 %19, !4449, !DIExpression(), !4503)
  %25 = sitofp i64 %19 to float, !dbg !4504
  %26 = fsub float %16, %25, !dbg !4505
    #dbg_value(float %26, !4446, !DIExpression(), !4505)
  %27 = fmul float %26, 1.000000e+01, !dbg !4506
    #dbg_value(float %27, !4446, !DIExpression(), !4506)
  %28 = add i64 %17, 1, !dbg !4507
    #dbg_value(i64 %28, !4448, !DIExpression(), !4507)
  br label %for.loop, !dbg !4459

for.done:                                         ; preds = %for.loop
  %29 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4508
  %30 = load i8, ptr %29, align 1, !dbg !4508
  %31 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 1, !dbg !4509
  store i8 %30, ptr %31, align 1, !dbg !4509
  %32 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4510
  store i8 46, ptr %32, align 1, !dbg !4510
  %33 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 9, !dbg !4511
  store i8 101, ptr %33, align 1, !dbg !4511
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4512
  store i8 43, ptr %34, align 1, !dbg !4512
    #dbg_value(i64 %15, !4447, !DIExpression(), !4513)
  %35 = icmp slt i64 %15, 0, !dbg !4514
  br i1 %35, label %if.then8, label %if.done9, !dbg !4459

if.then8:                                         ; preds = %for.done
    #dbg_value(i64 %15, !4447, !DIExpression(), !4515)
  %36 = sub i64 0, %15, !dbg !4516
    #dbg_value(i64 %36, !4447, !DIExpression(), !4517)
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4518
  store i8 45, ptr %37, align 1, !dbg !4518
  br label %if.done9, !dbg !4459

if.done9:                                         ; preds = %if.then8, %for.done
  %38 = phi i64 [ %15, %for.done ], [ %36, %if.then8 ], !dbg !4483
    #dbg_value(i64 %38, !4447, !DIExpression(), !4519)
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !4520
  %40 = and i1 false, %39, !dbg !4520
  %41 = select i1 %40, i64 1, i64 100, !dbg !4520
  %42 = sdiv i64 %38, %41, !dbg !4520
  %43 = trunc i64 %42 to i8, !dbg !4521
  %44 = add i8 %43, 48, !dbg !4522
  %45 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 11, !dbg !4523
  store i8 %44, ptr %45, align 1, !dbg !4523
    #dbg_value(i64 %38, !4447, !DIExpression(), !4524)
  %46 = icmp eq i64 %38, -9223372036854775808, !dbg !4525
  %47 = and i1 false, %46, !dbg !4525
  %48 = select i1 %47, i64 1, i64 10, !dbg !4525
  %49 = sdiv i64 %38, %48, !dbg !4525
  %50 = trunc i64 %49 to i8, !dbg !4526
  %51 = urem i8 %50, 10, !dbg !4527
  %52 = add i8 %51, 48, !dbg !4528
  %53 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 12, !dbg !4529
  store i8 %52, ptr %53, align 1, !dbg !4529
    #dbg_value(i64 %38, !4447, !DIExpression(), !4530)
  %54 = icmp eq i64 %38, -9223372036854775808, !dbg !4531
  %55 = and i1 false, %54, !dbg !4531
  %56 = select i1 %55, i64 1, i64 10, !dbg !4531
  %57 = srem i64 %38, %56, !dbg !4531
  %58 = trunc i64 %57 to i8, !dbg !4532
  %59 = add i8 %58, 48, !dbg !4533
  %60 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 13, !dbg !4534
  store i8 %59, ptr %60, align 1, !dbg !4534
  %61 = load [14 x i8], ptr %buf, align 1, !dbg !4535
    #dbg_value([14 x i8] %61, !4450, !DIExpression(), !4535)
  br label %rangeindex.loop, !dbg !4459

rangeindex.loop:                                  ; preds = %lookup.next21, %if.done9
  %62 = phi i64 [ -1, %if.done9 ], [ %63, %lookup.next21 ], !dbg !4459
  %63 = add i64 %62, 1, !dbg !4459
  %64 = icmp slt i64 %63, 14, !dbg !4459
  br i1 %64, label %rangeindex.body, label %rangeindex.done, !dbg !4459

rangeindex.body:                                  ; preds = %rangeindex.loop
  %65 = icmp uge i64 %63, 14, !dbg !4535
  br i1 %65, label %lookup.throw20, label %lookup.next21, !dbg !4535

lookup.next21:                                    ; preds = %rangeindex.body
  call void @llvm.lifetime.start.p0(i64 14, ptr %index.alloca), !dbg !4458
  store [14 x i8] %61, ptr %index.alloca, align 1, !dbg !4458
  %index.gep = getelementptr inbounds [14 x i8], ptr %index.alloca, i32 0, i64 %63, !dbg !4458
  %index.load = load i8, ptr %index.gep, align 1, !dbg !4458
  call void @llvm.lifetime.end.p0(i64 14, ptr %index.alloca), !dbg !4458
    #dbg_value(i8 %index.load, !4452, !DIExpression(), !4536)
    #dbg_value(i8 %index.load, !4452, !DIExpression(), !4537)
  call void @runtime.putchar(i8 %index.load, ptr undef), !dbg !4538
  br label %rangeindex.loop, !dbg !4459

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret void, !dbg !4539

if.else:                                          ; preds = %switch.next6
    #dbg_value(float %v, !4446, !DIExpression(), !4540)
  %66 = fcmp olt float %v, 0.000000e+00, !dbg !4541
  br i1 %66, label %if.then10, label %for.loop11, !dbg !4459

if.then10:                                        ; preds = %if.else
    #dbg_value(float %v, !4446, !DIExpression(), !4542)
  %67 = fneg float %v, !dbg !4543
    #dbg_value(float %67, !4446, !DIExpression(), !4544)
  %68 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4545
  store i8 45, ptr %68, align 1, !dbg !4545
  br label %for.loop11, !dbg !4459

for.loop11:                                       ; preds = %for.body12, %if.then10, %if.else
  %69 = phi float [ %v, %if.else ], [ %73, %for.body12 ], [ %67, %if.then10 ], !dbg !4490
  %70 = phi i64 [ 0, %if.else ], [ %72, %for.body12 ], [ 0, %if.then10 ], !dbg !4483
    #dbg_value(float %69, !4446, !DIExpression(), !4546)
  %71 = fcmp oge float %69, 1.000000e+01, !dbg !4547
  br i1 %71, label %for.body12, label %for.loop13, !dbg !4459

for.body12:                                       ; preds = %for.loop11
  %72 = add i64 %70, 1, !dbg !4548
    #dbg_value(i64 %72, !4447, !DIExpression(), !4548)
  %73 = fdiv float %69, 1.000000e+01, !dbg !4549
    #dbg_value(float %73, !4446, !DIExpression(), !4549)
  br label %for.loop11, !dbg !4459

for.loop13:                                       ; preds = %for.body14, %for.loop11
  %74 = phi float [ %69, %for.loop11 ], [ %78, %for.body14 ], !dbg !4490
  %75 = phi i64 [ %70, %for.loop11 ], [ %77, %for.body14 ], !dbg !4483
    #dbg_value(float %74, !4446, !DIExpression(), !4550)
  %76 = fcmp olt float %74, 1.000000e+00, !dbg !4551
  br i1 %76, label %for.body14, label %for.done15, !dbg !4459

for.body14:                                       ; preds = %for.loop13
  %77 = sub i64 %75, 1, !dbg !4552
    #dbg_value(i64 %77, !4447, !DIExpression(), !4552)
  %78 = fmul float %74, 1.000000e+01, !dbg !4553
    #dbg_value(float %78, !4446, !DIExpression(), !4553)
  br label %for.loop13, !dbg !4459

for.done15:                                       ; preds = %for.loop13
    #dbg_value(float 5.000000e+00, !4453, !DIExpression(), !4554)
    #dbg_value(i64 0, !4454, !DIExpression(), !4555)
  br label %for.loop16, !dbg !4459

for.loop16:                                       ; preds = %for.body17, %for.done15
  %79 = phi float [ 5.000000e+00, %for.done15 ], [ %82, %for.body17 ], !dbg !4554
  %80 = phi i64 [ 0, %for.done15 ], [ %83, %for.body17 ], !dbg !4555
    #dbg_value(i64 %80, !4454, !DIExpression(), !4556)
  %81 = icmp slt i64 %80, 7, !dbg !4557
  br i1 %81, label %for.body17, label %for.done18, !dbg !4459

for.body17:                                       ; preds = %for.loop16
  %82 = fdiv float %79, 1.000000e+01, !dbg !4558
    #dbg_value(float %82, !4453, !DIExpression(), !4558)
  %83 = add i64 %80, 1, !dbg !4559
    #dbg_value(i64 %83, !4454, !DIExpression(), !4559)
  br label %for.loop16, !dbg !4459

for.done18:                                       ; preds = %for.loop16
    #dbg_value(float %79, !4453, !DIExpression(), !4560)
  %84 = fadd float %74, %79, !dbg !4561
    #dbg_value(float %84, !4446, !DIExpression(), !4561)
    #dbg_value(float %84, !4446, !DIExpression(), !4562)
  %85 = fcmp oge float %84, 1.000000e+01, !dbg !4563
  br i1 %85, label %if.then19, label %if.done, !dbg !4459

if.then19:                                        ; preds = %for.done18
  %86 = add i64 %75, 1, !dbg !4564
    #dbg_value(i64 %86, !4447, !DIExpression(), !4564)
  %87 = fdiv float %84, 1.000000e+01, !dbg !4565
    #dbg_value(float %87, !4446, !DIExpression(), !4565)
  br label %if.done, !dbg !4459

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4502
  unreachable, !dbg !4502

lookup.throw20:                                   ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4535
  unreachable, !dbg !4535
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printfloat64(double %v, ptr %context) unnamed_addr #1 !dbg !4566 {
entry:
    #dbg_value(double %v, !4568, !DIExpression(), !4576)
    #dbg_value(double %v, !4568, !DIExpression(), !4577)
    #dbg_value(double %v, !4568, !DIExpression(), !4578)
  %index.alloca = alloca [14 x i8], align 1, !dbg !4579
  %buf = alloca [14 x i8], align 1, !dbg !4579
  %0 = fcmp une double %v, %v, !dbg !4579
  br i1 %0, label %switch.body, label %switch.next, !dbg !4580

switch.body:                                      ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.38", i64 3, ptr undef), !dbg !4581
  ret void, !dbg !4582

switch.next:                                      ; preds = %entry
    #dbg_value(double %v, !4568, !DIExpression(), !4583)
    #dbg_value(double %v, !4568, !DIExpression(), !4584)
  %1 = fadd double %v, %v, !dbg !4585
    #dbg_value(double %v, !4568, !DIExpression(), !4586)
  %2 = fcmp oeq double %1, %v, !dbg !4587
  br i1 %2, label %binop.rhs, label %binop.done, !dbg !4580

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(double %v, !4568, !DIExpression(), !4588)
  %3 = fcmp ogt double %v, 0.000000e+00, !dbg !4589
  br label %binop.done, !dbg !4580

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ false, %switch.next ], [ %3, %binop.rhs ], !dbg !4590
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4580

switch.body1:                                     ; preds = %binop.done
  call void @runtime.printstring(ptr @"runtime$string.39", i64 4, ptr undef), !dbg !4591
  ret void, !dbg !4592

switch.next2:                                     ; preds = %binop.done
    #dbg_value(double %v, !4568, !DIExpression(), !4593)
    #dbg_value(double %v, !4568, !DIExpression(), !4594)
  %5 = fadd double %v, %v, !dbg !4595
    #dbg_value(double %v, !4568, !DIExpression(), !4596)
  %6 = fcmp oeq double %5, %v, !dbg !4597
  br i1 %6, label %binop.rhs3, label %binop.done4, !dbg !4580

binop.rhs3:                                       ; preds = %switch.next2
    #dbg_value(double %v, !4568, !DIExpression(), !4598)
  %7 = fcmp olt double %v, 0.000000e+00, !dbg !4599
  br label %binop.done4, !dbg !4580

binop.done4:                                      ; preds = %binop.rhs3, %switch.next2
  %8 = phi i1 [ false, %switch.next2 ], [ %7, %binop.rhs3 ], !dbg !4600
  br i1 %8, label %switch.body5, label %switch.next6, !dbg !4580

switch.body5:                                     ; preds = %binop.done4
  call void @runtime.printstring(ptr @"runtime$string.40", i64 4, ptr undef), !dbg !4601
  ret void, !dbg !4602

switch.next6:                                     ; preds = %binop.done4
  store [14 x i8] zeroinitializer, ptr %buf, align 1, !dbg !4579
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4603
  store i8 43, ptr %9, align 1, !dbg !4603
    #dbg_value(i64 0, !4569, !DIExpression(), !4604)
    #dbg_value(double %v, !4568, !DIExpression(), !4605)
  %10 = fcmp oeq double %v, 0.000000e+00, !dbg !4606
  br i1 %10, label %if.then, label %if.else, !dbg !4580

if.then:                                          ; preds = %switch.next6
    #dbg_value(double %v, !4568, !DIExpression(), !4607)
  %11 = fdiv double 1.000000e+00, %v, !dbg !4608
  %12 = fcmp olt double %11, 0.000000e+00, !dbg !4609
  br i1 %12, label %if.then7, label %if.done, !dbg !4580

if.then7:                                         ; preds = %if.then
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4610
  store i8 45, ptr %13, align 1, !dbg !4610
  br label %if.done, !dbg !4580

if.done:                                          ; preds = %if.then19, %for.done18, %if.then7, %if.then
  %14 = phi double [ %v, %if.then ], [ %84, %for.done18 ], [ %v, %if.then7 ], [ %87, %if.then19 ], !dbg !4611
  %15 = phi i64 [ 0, %if.then ], [ %75, %for.done18 ], [ 0, %if.then7 ], [ %86, %if.then19 ], !dbg !4604
    #dbg_value(i64 0, !4570, !DIExpression(), !4612)
  br label %for.loop, !dbg !4580

for.loop:                                         ; preds = %lookup.next, %if.done
  %16 = phi double [ %14, %if.done ], [ %27, %lookup.next ], !dbg !4611
  %17 = phi i64 [ 0, %if.done ], [ %28, %lookup.next ], !dbg !4612
    #dbg_value(i64 %17, !4570, !DIExpression(), !4613)
  %18 = icmp slt i64 %17, 7, !dbg !4614
  br i1 %18, label %for.body, label %for.done, !dbg !4580

for.body:                                         ; preds = %for.loop
    #dbg_value(double %16, !4568, !DIExpression(), !4615)
  %abovemin = fcmp ole double 0xC3E0000000000000, %16, !dbg !4616
  %belowmax = fcmp ole double %16, 0x43DFFFFFFFFFFFFE, !dbg !4616
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4616
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4616
  %isnan = fcmp uno double %16, %16, !dbg !4616
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4616
  %normal = fptosi double %16 to i64, !dbg !4616
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4616
    #dbg_value(i64 %19, !4571, !DIExpression(), !4617)
    #dbg_value(i64 %17, !4570, !DIExpression(), !4618)
  %20 = add i64 %17, 2, !dbg !4619
    #dbg_value(i64 %19, !4571, !DIExpression(), !4620)
  %21 = add i64 %19, 48, !dbg !4621
  %22 = trunc i64 %21 to i8, !dbg !4622
  %23 = icmp uge i64 %20, 14, !dbg !4623
  br i1 %23, label %lookup.throw, label %lookup.next, !dbg !4623

lookup.next:                                      ; preds = %for.body
  %24 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 %20, !dbg !4623
  store i8 %22, ptr %24, align 1, !dbg !4623
    #dbg_value(i64 %19, !4571, !DIExpression(), !4624)
  %25 = sitofp i64 %19 to double, !dbg !4625
  %26 = fsub double %16, %25, !dbg !4626
    #dbg_value(double %26, !4568, !DIExpression(), !4626)
  %27 = fmul double %26, 1.000000e+01, !dbg !4627
    #dbg_value(double %27, !4568, !DIExpression(), !4627)
  %28 = add i64 %17, 1, !dbg !4628
    #dbg_value(i64 %28, !4570, !DIExpression(), !4628)
  br label %for.loop, !dbg !4580

for.done:                                         ; preds = %for.loop
  %29 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4629
  %30 = load i8, ptr %29, align 1, !dbg !4629
  %31 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 1, !dbg !4630
  store i8 %30, ptr %31, align 1, !dbg !4630
  %32 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4631
  store i8 46, ptr %32, align 1, !dbg !4631
  %33 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 9, !dbg !4632
  store i8 101, ptr %33, align 1, !dbg !4632
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4633
  store i8 43, ptr %34, align 1, !dbg !4633
    #dbg_value(i64 %15, !4569, !DIExpression(), !4634)
  %35 = icmp slt i64 %15, 0, !dbg !4635
  br i1 %35, label %if.then8, label %if.done9, !dbg !4580

if.then8:                                         ; preds = %for.done
    #dbg_value(i64 %15, !4569, !DIExpression(), !4636)
  %36 = sub i64 0, %15, !dbg !4637
    #dbg_value(i64 %36, !4569, !DIExpression(), !4638)
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4639
  store i8 45, ptr %37, align 1, !dbg !4639
  br label %if.done9, !dbg !4580

if.done9:                                         ; preds = %if.then8, %for.done
  %38 = phi i64 [ %15, %for.done ], [ %36, %if.then8 ], !dbg !4604
    #dbg_value(i64 %38, !4569, !DIExpression(), !4640)
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !4641
  %40 = and i1 false, %39, !dbg !4641
  %41 = select i1 %40, i64 1, i64 100, !dbg !4641
  %42 = sdiv i64 %38, %41, !dbg !4641
  %43 = trunc i64 %42 to i8, !dbg !4642
  %44 = add i8 %43, 48, !dbg !4643
  %45 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 11, !dbg !4644
  store i8 %44, ptr %45, align 1, !dbg !4644
    #dbg_value(i64 %38, !4569, !DIExpression(), !4645)
  %46 = icmp eq i64 %38, -9223372036854775808, !dbg !4646
  %47 = and i1 false, %46, !dbg !4646
  %48 = select i1 %47, i64 1, i64 10, !dbg !4646
  %49 = sdiv i64 %38, %48, !dbg !4646
  %50 = trunc i64 %49 to i8, !dbg !4647
  %51 = urem i8 %50, 10, !dbg !4648
  %52 = add i8 %51, 48, !dbg !4649
  %53 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 12, !dbg !4650
  store i8 %52, ptr %53, align 1, !dbg !4650
    #dbg_value(i64 %38, !4569, !DIExpression(), !4651)
  %54 = icmp eq i64 %38, -9223372036854775808, !dbg !4652
  %55 = and i1 false, %54, !dbg !4652
  %56 = select i1 %55, i64 1, i64 10, !dbg !4652
  %57 = srem i64 %38, %56, !dbg !4652
  %58 = trunc i64 %57 to i8, !dbg !4653
  %59 = add i8 %58, 48, !dbg !4654
  %60 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 13, !dbg !4655
  store i8 %59, ptr %60, align 1, !dbg !4655
  %61 = load [14 x i8], ptr %buf, align 1, !dbg !4656
    #dbg_value([14 x i8] %61, !4572, !DIExpression(), !4656)
  br label %rangeindex.loop, !dbg !4580

rangeindex.loop:                                  ; preds = %lookup.next21, %if.done9
  %62 = phi i64 [ -1, %if.done9 ], [ %63, %lookup.next21 ], !dbg !4580
  %63 = add i64 %62, 1, !dbg !4580
  %64 = icmp slt i64 %63, 14, !dbg !4580
  br i1 %64, label %rangeindex.body, label %rangeindex.done, !dbg !4580

rangeindex.body:                                  ; preds = %rangeindex.loop
  %65 = icmp uge i64 %63, 14, !dbg !4656
  br i1 %65, label %lookup.throw20, label %lookup.next21, !dbg !4656

lookup.next21:                                    ; preds = %rangeindex.body
  call void @llvm.lifetime.start.p0(i64 14, ptr %index.alloca), !dbg !4579
  store [14 x i8] %61, ptr %index.alloca, align 1, !dbg !4579
  %index.gep = getelementptr inbounds [14 x i8], ptr %index.alloca, i32 0, i64 %63, !dbg !4579
  %index.load = load i8, ptr %index.gep, align 1, !dbg !4579
  call void @llvm.lifetime.end.p0(i64 14, ptr %index.alloca), !dbg !4579
    #dbg_value(i8 %index.load, !4573, !DIExpression(), !4657)
    #dbg_value(i8 %index.load, !4573, !DIExpression(), !4658)
  call void @runtime.putchar(i8 %index.load, ptr undef), !dbg !4659
  br label %rangeindex.loop, !dbg !4580

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret void, !dbg !4660

if.else:                                          ; preds = %switch.next6
    #dbg_value(double %v, !4568, !DIExpression(), !4661)
  %66 = fcmp olt double %v, 0.000000e+00, !dbg !4662
  br i1 %66, label %if.then10, label %for.loop11, !dbg !4580

if.then10:                                        ; preds = %if.else
    #dbg_value(double %v, !4568, !DIExpression(), !4663)
  %67 = fneg double %v, !dbg !4664
    #dbg_value(double %67, !4568, !DIExpression(), !4665)
  %68 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4666
  store i8 45, ptr %68, align 1, !dbg !4666
  br label %for.loop11, !dbg !4580

for.loop11:                                       ; preds = %for.body12, %if.then10, %if.else
  %69 = phi double [ %v, %if.else ], [ %73, %for.body12 ], [ %67, %if.then10 ], !dbg !4611
  %70 = phi i64 [ 0, %if.else ], [ %72, %for.body12 ], [ 0, %if.then10 ], !dbg !4604
    #dbg_value(double %69, !4568, !DIExpression(), !4667)
  %71 = fcmp oge double %69, 1.000000e+01, !dbg !4668
  br i1 %71, label %for.body12, label %for.loop13, !dbg !4580

for.body12:                                       ; preds = %for.loop11
  %72 = add i64 %70, 1, !dbg !4669
    #dbg_value(i64 %72, !4569, !DIExpression(), !4669)
  %73 = fdiv double %69, 1.000000e+01, !dbg !4670
    #dbg_value(double %73, !4568, !DIExpression(), !4670)
  br label %for.loop11, !dbg !4580

for.loop13:                                       ; preds = %for.body14, %for.loop11
  %74 = phi double [ %69, %for.loop11 ], [ %78, %for.body14 ], !dbg !4611
  %75 = phi i64 [ %70, %for.loop11 ], [ %77, %for.body14 ], !dbg !4604
    #dbg_value(double %74, !4568, !DIExpression(), !4671)
  %76 = fcmp olt double %74, 1.000000e+00, !dbg !4672
  br i1 %76, label %for.body14, label %for.done15, !dbg !4580

for.body14:                                       ; preds = %for.loop13
  %77 = sub i64 %75, 1, !dbg !4673
    #dbg_value(i64 %77, !4569, !DIExpression(), !4673)
  %78 = fmul double %74, 1.000000e+01, !dbg !4674
    #dbg_value(double %78, !4568, !DIExpression(), !4674)
  br label %for.loop13, !dbg !4580

for.done15:                                       ; preds = %for.loop13
    #dbg_value(double 5.000000e+00, !4574, !DIExpression(), !4675)
    #dbg_value(i64 0, !4575, !DIExpression(), !4676)
  br label %for.loop16, !dbg !4580

for.loop16:                                       ; preds = %for.body17, %for.done15
  %79 = phi double [ 5.000000e+00, %for.done15 ], [ %82, %for.body17 ], !dbg !4675
  %80 = phi i64 [ 0, %for.done15 ], [ %83, %for.body17 ], !dbg !4676
    #dbg_value(i64 %80, !4575, !DIExpression(), !4677)
  %81 = icmp slt i64 %80, 7, !dbg !4678
  br i1 %81, label %for.body17, label %for.done18, !dbg !4580

for.body17:                                       ; preds = %for.loop16
  %82 = fdiv double %79, 1.000000e+01, !dbg !4679
    #dbg_value(double %82, !4574, !DIExpression(), !4679)
  %83 = add i64 %80, 1, !dbg !4680
    #dbg_value(i64 %83, !4575, !DIExpression(), !4680)
  br label %for.loop16, !dbg !4580

for.done18:                                       ; preds = %for.loop16
    #dbg_value(double %79, !4574, !DIExpression(), !4681)
  %84 = fadd double %74, %79, !dbg !4682
    #dbg_value(double %84, !4568, !DIExpression(), !4682)
    #dbg_value(double %84, !4568, !DIExpression(), !4683)
  %85 = fcmp oge double %84, 1.000000e+01, !dbg !4684
  br i1 %85, label %if.then19, label %if.done, !dbg !4580

if.then19:                                        ; preds = %for.done18
  %86 = add i64 %75, 1, !dbg !4685
    #dbg_value(i64 %86, !4569, !DIExpression(), !4685)
  %87 = fdiv double %84, 1.000000e+01, !dbg !4686
    #dbg_value(double %87, !4568, !DIExpression(), !4686)
  br label %if.done, !dbg !4580

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4623
  unreachable, !dbg !4623

lookup.throw20:                                   ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4656
  unreachable, !dbg !4656
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printcomplex64(float %c.r, float %c.i, ptr %context) unnamed_addr #1 !dbg !4687 {
entry:
  %0 = insertvalue { float, float } zeroinitializer, float %c.r, 0, !dbg !4692
  %1 = insertvalue { float, float } %0, float %c.i, 1, !dbg !4692
    #dbg_value(float %c.r, !4691, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4692)
    #dbg_value(float %c.i, !4691, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4692)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4693
    #dbg_value({ float, float } %1, !4691, !DIExpression(), !4694)
  %real = extractvalue { float, float } %1, 0, !dbg !4695
  call void @runtime.printfloat32(float %real, ptr undef), !dbg !4696
    #dbg_value({ float, float } %1, !4691, !DIExpression(), !4697)
  %imag = extractvalue { float, float } %1, 1, !dbg !4698
  call void @runtime.printfloat32(float %imag, ptr undef), !dbg !4699
  call void @runtime.printstring(ptr @"runtime$string.41", i64 2, ptr undef), !dbg !4700
  ret void, !dbg !4701
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printcomplex128(double %c.r, double %c.i, ptr %context) unnamed_addr #1 !dbg !4702 {
entry:
  %0 = insertvalue { double, double } zeroinitializer, double %c.r, 0, !dbg !4707
  %1 = insertvalue { double, double } %0, double %c.i, 1, !dbg !4707
    #dbg_value(double %c.r, !4706, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4707)
    #dbg_value(double %c.i, !4706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4707)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4708
    #dbg_value({ double, double } %1, !4706, !DIExpression(), !4709)
  %real = extractvalue { double, double } %1, 0, !dbg !4710
  call void @runtime.printfloat64(double %real, ptr undef), !dbg !4711
    #dbg_value({ double, double } %1, !4706, !DIExpression(), !4712)
  %imag = extractvalue { double, double } %1, 1, !dbg !4713
  call void @runtime.printfloat64(double %imag, ptr undef), !dbg !4714
  call void @runtime.printstring(ptr @"runtime$string.42", i64 2, ptr undef), !dbg !4715
  ret void, !dbg !4716
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
define internal void @runtime._panic(ptr %message.typecode, ptr %message.value, ptr %context) #1 !dbg !4717 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %message.typecode, 0, !dbg !4720
  %1 = insertvalue { ptr, ptr } %0, ptr %message.value, 1, !dbg !4720
    #dbg_value(ptr %message.typecode, !4719, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4720)
    #dbg_value(ptr %message.value, !4719, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4720)
    #dbg_value({ ptr, ptr } %1, !4719, !DIExpression(), !4721)
  %2 = extractvalue { ptr, ptr } %1, 0, !dbg !4722
  %3 = extractvalue { ptr, ptr } %1, 1, !dbg !4722
  call void @runtime.panicOrGoexit(ptr %2, ptr %3, i8 1, ptr undef), !dbg !4722
  ret void, !dbg !4723
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @runtime.stringEqual(ptr readonly %x.data, i64 %x.len, ptr readonly %y.data, i64 %y.len, ptr %context) #1 !dbg !4724 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %x.data, 0, !dbg !4732
  %1 = insertvalue %runtime._string %0, i64 %x.len, 1, !dbg !4732
    #dbg_value(ptr %x.data, !4729, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4732)
    #dbg_value(i64 %x.len, !4729, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4732)
  %2 = insertvalue %runtime._string zeroinitializer, ptr %y.data, 0, !dbg !4732
  %3 = insertvalue %runtime._string %2, i64 %y.len, 1, !dbg !4732
    #dbg_value(ptr %y.data, !4730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4732)
    #dbg_value(i64 %y.len, !4730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4732)
    #dbg_value(%runtime._string %1, !4729, !DIExpression(), !4733)
  %len = extractvalue %runtime._string %1, 1, !dbg !4734
    #dbg_value(%runtime._string %3, !4730, !DIExpression(), !4735)
  %len3 = extractvalue %runtime._string %3, 1, !dbg !4736
  %4 = icmp ne i64 %len, %len3, !dbg !4737
  br i1 %4, label %if.then, label %if.done, !dbg !4738

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !4739

if.done:                                          ; preds = %entry
    #dbg_value(i64 0, !4731, !DIExpression(), !4740)
  br label %for.loop, !dbg !4738

for.loop:                                         ; preds = %if.done2, %if.done
  %5 = phi i64 [ 0, %if.done ], [ %14, %if.done2 ], !dbg !4740
    #dbg_value(i64 %5, !4731, !DIExpression(), !4741)
    #dbg_value(%runtime._string %1, !4729, !DIExpression(), !4742)
  %len4 = extractvalue %runtime._string %1, 1, !dbg !4743
  %6 = icmp slt i64 %5, %len4, !dbg !4744
  br i1 %6, label %for.body, label %for.done, !dbg !4738

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4731, !DIExpression(), !4745)
    #dbg_value(%runtime._string %1, !4729, !DIExpression(), !4746)
  %len5 = extractvalue %runtime._string %1, 1, !dbg !4747
  %7 = extractvalue %runtime._string %1, 0, !dbg !4747
  %8 = getelementptr inbounds i8, ptr %7, i64 %5, !dbg !4747
  %9 = load i8, ptr %8, align 1, !dbg !4747
    #dbg_value(i64 %5, !4731, !DIExpression(), !4748)
    #dbg_value(%runtime._string %3, !4730, !DIExpression(), !4749)
  %len6 = extractvalue %runtime._string %3, 1, !dbg !4750
  %10 = extractvalue %runtime._string %3, 0, !dbg !4750
  %11 = getelementptr inbounds i8, ptr %10, i64 %5, !dbg !4750
  %12 = load i8, ptr %11, align 1, !dbg !4750
  %13 = icmp ne i8 %9, %12, !dbg !4751
  br i1 %13, label %if.then1, label %if.done2, !dbg !4738

if.then1:                                         ; preds = %for.body
  ret i1 false, !dbg !4752

if.done2:                                         ; preds = %for.body
  %14 = add i64 %5, 1, !dbg !4753
    #dbg_value(i64 %14, !4731, !DIExpression(), !4753)
  br label %for.loop, !dbg !4738

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4754
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.slicePanic(ptr %context) #1 !dbg !4755 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4756
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.20", i64 18, ptr undef), !dbg !4757
  ret void, !dbg !4758
}

; Function Attrs: nounwind uwtable(sync)
define double @fminimum(double %x, double %y) #1 !dbg !4759 {
entry:
    #dbg_value(double %x, !4761, !DIExpression(), !4763)
    #dbg_value(double %y, !4762, !DIExpression(), !4763)
    #dbg_value(double %x, !4761, !DIExpression(), !4764)
    #dbg_value(double %y, !4762, !DIExpression(), !4765)
  %0 = call double @runtime.minimumFloat64(double %x, double %y, ptr undef), !dbg !4766
  ret double %0, !dbg !4767
}

; Function Attrs: nounwind uwtable(sync)
define internal double @runtime.minimumFloat64(double %x, double %y, ptr %context) unnamed_addr #1 !dbg !4768 {
entry:
    #dbg_value(double %x, !4770, !DIExpression(), !4772)
    #dbg_value(double %y, !4771, !DIExpression(), !4772)
    #dbg_value(double %x, !4770, !DIExpression(), !4773)
    #dbg_value(double %y, !4771, !DIExpression(), !4774)
  %0 = call double @"runtime.minimumFloat[float64 int64]"(double %x, double %y, i64 9218868437227405313, i64 9223372036854775807, ptr undef), !dbg !4775
  ret double %0, !dbg !4776
}

; Function Attrs: nounwind uwtable(sync)
define internal double @"runtime.minimumFloat[float64 int64]"(double %x, double %y, i64 %minPosNaN, i64 %magMask, ptr %context) unnamed_addr #1 !dbg !4777 {
entry:
    #dbg_value(double %x, !4781, !DIExpression(), !4787)
    #dbg_value(double %y, !4782, !DIExpression(), !4787)
    #dbg_value(i64 %minPosNaN, !4783, !DIExpression(), !4787)
    #dbg_value(i64 %magMask, !4784, !DIExpression(), !4787)
  %x6 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4788
  store double %x, ptr %x6, align 8, !dbg !4788
  %y7 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4789
  store double %y, ptr %y7, align 8, !dbg !4789
  %0 = load i64, ptr %x6, align 8, !dbg !4790
    #dbg_value(i64 %0, !4785, !DIExpression(), !4791)
  %1 = load i64, ptr %y7, align 8, !dbg !4792
    #dbg_value(i64 %1, !4786, !DIExpression(), !4793)
    #dbg_value(i64 %0, !4785, !DIExpression(), !4794)
    #dbg_value(i64 %minPosNaN, !4783, !DIExpression(), !4795)
  %2 = icmp sge i64 %0, %minPosNaN, !dbg !4796
  br i1 %2, label %switch.body, label %switch.next, !dbg !4797

switch.body:                                      ; preds = %entry
  %3 = load double, ptr %x6, align 8, !dbg !4798
    #dbg_value(double %3, !4781, !DIExpression(), !4798)
  ret double %3, !dbg !4799

switch.next:                                      ; preds = %entry
    #dbg_value(i64 %1, !4786, !DIExpression(), !4800)
    #dbg_value(i64 %minPosNaN, !4783, !DIExpression(), !4801)
  %4 = icmp sge i64 %1, %minPosNaN, !dbg !4802
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4797

switch.body1:                                     ; preds = %switch.next
  %5 = load double, ptr %y7, align 8, !dbg !4803
    #dbg_value(double %5, !4782, !DIExpression(), !4803)
  ret double %5, !dbg !4804

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i64 %0, !4785, !DIExpression(), !4805)
  %6 = icmp slt i64 %0, 0, !dbg !4806
  br i1 %6, label %if.then, label %if.done, !dbg !4797

if.then:                                          ; preds = %switch.next2
    #dbg_value(i64 %magMask, !4784, !DIExpression(), !4807)
  %7 = xor i64 %0, %magMask, !dbg !4808
    #dbg_value(i64 %7, !4785, !DIExpression(), !4808)
  br label %if.done, !dbg !4797

if.done:                                          ; preds = %if.then, %switch.next2
  %8 = phi i64 [ %0, %switch.next2 ], [ %7, %if.then ], !dbg !4791
    #dbg_value(i64 %1, !4786, !DIExpression(), !4809)
  %9 = icmp slt i64 %1, 0, !dbg !4810
  br i1 %9, label %if.then3, label %if.done4, !dbg !4797

if.then3:                                         ; preds = %if.done
    #dbg_value(i64 %magMask, !4784, !DIExpression(), !4811)
  %10 = xor i64 %1, %magMask, !dbg !4812
    #dbg_value(i64 %10, !4786, !DIExpression(), !4812)
  br label %if.done4, !dbg !4797

if.done4:                                         ; preds = %if.then3, %if.done
  %11 = phi i64 [ %1, %if.done ], [ %10, %if.then3 ], !dbg !4793
    #dbg_value(i64 %8, !4785, !DIExpression(), !4813)
    #dbg_value(i64 %11, !4786, !DIExpression(), !4814)
  %12 = icmp sle i64 %8, %11, !dbg !4815
  br i1 %12, label %if.then5, label %if.else, !dbg !4797

if.then5:                                         ; preds = %if.done4
  %13 = load double, ptr %x6, align 8, !dbg !4816
    #dbg_value(double %13, !4781, !DIExpression(), !4816)
  ret double %13, !dbg !4817

if.else:                                          ; preds = %if.done4
  %14 = load double, ptr %y7, align 8, !dbg !4818
    #dbg_value(double %14, !4782, !DIExpression(), !4818)
  ret double %14, !dbg !4819
}

; Function Attrs: nounwind uwtable(sync)
define float @fminimumf(float %x, float %y) #1 !dbg !4820 {
entry:
    #dbg_value(float %x, !4824, !DIExpression(), !4826)
    #dbg_value(float %y, !4825, !DIExpression(), !4826)
    #dbg_value(float %x, !4824, !DIExpression(), !4827)
    #dbg_value(float %y, !4825, !DIExpression(), !4828)
  %0 = call float @runtime.minimumFloat32(float %x, float %y, ptr undef), !dbg !4829
  ret float %0, !dbg !4830
}

; Function Attrs: nounwind uwtable(sync)
define internal float @runtime.minimumFloat32(float %x, float %y, ptr %context) unnamed_addr #1 !dbg !4831 {
entry:
    #dbg_value(float %x, !4833, !DIExpression(), !4835)
    #dbg_value(float %y, !4834, !DIExpression(), !4835)
    #dbg_value(float %x, !4833, !DIExpression(), !4836)
    #dbg_value(float %y, !4834, !DIExpression(), !4837)
  %0 = call float @"runtime.minimumFloat[float32 int32]"(float %x, float %y, i32 2139095041, i32 2147483647, ptr undef), !dbg !4838
  ret float %0, !dbg !4839
}

; Function Attrs: nounwind uwtable(sync)
define internal float @"runtime.minimumFloat[float32 int32]"(float %x, float %y, i32 %minPosNaN, i32 %magMask, ptr %context) unnamed_addr #1 !dbg !4840 {
entry:
    #dbg_value(float %x, !4844, !DIExpression(), !4850)
    #dbg_value(float %y, !4845, !DIExpression(), !4850)
    #dbg_value(i32 %minPosNaN, !4846, !DIExpression(), !4850)
    #dbg_value(i32 %magMask, !4847, !DIExpression(), !4850)
  %x6 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4851
  store float %x, ptr %x6, align 4, !dbg !4851
  %y7 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4852
  store float %y, ptr %y7, align 4, !dbg !4852
  %0 = load i32, ptr %x6, align 4, !dbg !4853
    #dbg_value(i32 %0, !4848, !DIExpression(), !4854)
  %1 = load i32, ptr %y7, align 4, !dbg !4855
    #dbg_value(i32 %1, !4849, !DIExpression(), !4856)
    #dbg_value(i32 %0, !4848, !DIExpression(), !4857)
    #dbg_value(i32 %minPosNaN, !4846, !DIExpression(), !4858)
  %2 = icmp sge i32 %0, %minPosNaN, !dbg !4859
  br i1 %2, label %switch.body, label %switch.next, !dbg !4860

switch.body:                                      ; preds = %entry
  %3 = load float, ptr %x6, align 4, !dbg !4861
    #dbg_value(float %3, !4844, !DIExpression(), !4861)
  ret float %3, !dbg !4862

switch.next:                                      ; preds = %entry
    #dbg_value(i32 %1, !4849, !DIExpression(), !4863)
    #dbg_value(i32 %minPosNaN, !4846, !DIExpression(), !4864)
  %4 = icmp sge i32 %1, %minPosNaN, !dbg !4865
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4860

switch.body1:                                     ; preds = %switch.next
  %5 = load float, ptr %y7, align 4, !dbg !4866
    #dbg_value(float %5, !4845, !DIExpression(), !4866)
  ret float %5, !dbg !4867

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i32 %0, !4848, !DIExpression(), !4868)
  %6 = icmp slt i32 %0, 0, !dbg !4869
  br i1 %6, label %if.then, label %if.done, !dbg !4860

if.then:                                          ; preds = %switch.next2
    #dbg_value(i32 %magMask, !4847, !DIExpression(), !4870)
  %7 = xor i32 %0, %magMask, !dbg !4871
    #dbg_value(i32 %7, !4848, !DIExpression(), !4871)
  br label %if.done, !dbg !4860

if.done:                                          ; preds = %if.then, %switch.next2
  %8 = phi i32 [ %0, %switch.next2 ], [ %7, %if.then ], !dbg !4854
    #dbg_value(i32 %1, !4849, !DIExpression(), !4872)
  %9 = icmp slt i32 %1, 0, !dbg !4873
  br i1 %9, label %if.then3, label %if.done4, !dbg !4860

if.then3:                                         ; preds = %if.done
    #dbg_value(i32 %magMask, !4847, !DIExpression(), !4874)
  %10 = xor i32 %1, %magMask, !dbg !4875
    #dbg_value(i32 %10, !4849, !DIExpression(), !4875)
  br label %if.done4, !dbg !4860

if.done4:                                         ; preds = %if.then3, %if.done
  %11 = phi i32 [ %1, %if.done ], [ %10, %if.then3 ], !dbg !4856
    #dbg_value(i32 %8, !4848, !DIExpression(), !4876)
    #dbg_value(i32 %11, !4849, !DIExpression(), !4877)
  %12 = icmp sle i32 %8, %11, !dbg !4878
  br i1 %12, label %if.then5, label %if.else, !dbg !4860

if.then5:                                         ; preds = %if.done4
  %13 = load float, ptr %x6, align 4, !dbg !4879
    #dbg_value(float %13, !4844, !DIExpression(), !4879)
  ret float %13, !dbg !4880

if.else:                                          ; preds = %if.done4
  %14 = load float, ptr %y7, align 4, !dbg !4881
    #dbg_value(float %14, !4845, !DIExpression(), !4881)
  ret float %14, !dbg !4882
}

; Function Attrs: nounwind uwtable(sync)
define double @fmaximum(double %x, double %y) #1 !dbg !4883 {
entry:
    #dbg_value(double %x, !4885, !DIExpression(), !4887)
    #dbg_value(double %y, !4886, !DIExpression(), !4887)
    #dbg_value(double %x, !4885, !DIExpression(), !4888)
    #dbg_value(double %y, !4886, !DIExpression(), !4889)
  %0 = call double @runtime.maximumFloat64(double %x, double %y, ptr undef), !dbg !4890
  ret double %0, !dbg !4891
}

; Function Attrs: nounwind uwtable(sync)
define internal double @runtime.maximumFloat64(double %x, double %y, ptr %context) unnamed_addr #1 !dbg !4892 {
entry:
    #dbg_value(double %x, !4894, !DIExpression(), !4896)
    #dbg_value(double %y, !4895, !DIExpression(), !4896)
    #dbg_value(double %x, !4894, !DIExpression(), !4897)
    #dbg_value(double %y, !4895, !DIExpression(), !4898)
  %0 = call double @"runtime.maximumFloat[float64 int64]"(double %x, double %y, i64 9218868437227405313, i64 9223372036854775807, ptr undef), !dbg !4899
  ret double %0, !dbg !4900
}

; Function Attrs: nounwind uwtable(sync)
define internal double @"runtime.maximumFloat[float64 int64]"(double %x, double %y, i64 %minPosNaN, i64 %magMask, ptr %context) unnamed_addr #1 !dbg !4901 {
entry:
    #dbg_value(double %x, !4903, !DIExpression(), !4910)
    #dbg_value(double %y, !4904, !DIExpression(), !4910)
    #dbg_value(i64 %minPosNaN, !4905, !DIExpression(), !4910)
    #dbg_value(i64 %magMask, !4906, !DIExpression(), !4910)
  %x6 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4911
  store double %x, ptr %x6, align 8, !dbg !4911
  %y7 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4912
  store double %y, ptr %y7, align 8, !dbg !4912
  %0 = load i64, ptr %x6, align 8, !dbg !4913
    #dbg_value(i64 %0, !4907, !DIExpression(), !4914)
  %1 = load i64, ptr %y7, align 8, !dbg !4915
    #dbg_value(i64 %1, !4908, !DIExpression(), !4916)
    #dbg_value(i64 %0, !4907, !DIExpression(), !4917)
  %2 = icmp slt i64 %0, 0, !dbg !4918
  br i1 %2, label %if.then, label %if.done, !dbg !4919

if.then:                                          ; preds = %entry
    #dbg_value(i64 %magMask, !4906, !DIExpression(), !4920)
  %3 = xor i64 %0, %magMask, !dbg !4921
    #dbg_value(i64 %3, !4907, !DIExpression(), !4921)
  br label %if.done, !dbg !4919

if.done:                                          ; preds = %if.then, %entry
  %4 = phi i64 [ %0, %entry ], [ %3, %if.then ], !dbg !4914
    #dbg_value(i64 %1, !4908, !DIExpression(), !4922)
  %5 = icmp slt i64 %1, 0, !dbg !4923
  br i1 %5, label %if.then1, label %if.done2, !dbg !4919

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %magMask, !4906, !DIExpression(), !4924)
  %6 = xor i64 %1, %magMask, !dbg !4925
    #dbg_value(i64 %6, !4908, !DIExpression(), !4925)
  br label %if.done2, !dbg !4919

if.done2:                                         ; preds = %if.then1, %if.done
  %7 = phi i64 [ %1, %if.done ], [ %6, %if.then1 ], !dbg !4916
    #dbg_value(i64 %minPosNaN, !4905, !DIExpression(), !4926)
  %8 = xor i64 %minPosNaN, -1, !dbg !4927
    #dbg_value(i64 %8, !4909, !DIExpression(), !4928)
    #dbg_value(i64 %4, !4907, !DIExpression(), !4929)
    #dbg_value(i64 %8, !4909, !DIExpression(), !4930)
  %9 = icmp sle i64 %4, %8, !dbg !4931
  br i1 %9, label %switch.body, label %switch.next, !dbg !4919

switch.body:                                      ; preds = %if.done2
  %10 = load double, ptr %x6, align 8, !dbg !4932
    #dbg_value(double %10, !4903, !DIExpression(), !4932)
  ret double %10, !dbg !4933

switch.next:                                      ; preds = %if.done2
    #dbg_value(i64 %7, !4908, !DIExpression(), !4934)
    #dbg_value(i64 %8, !4909, !DIExpression(), !4935)
  %11 = icmp sle i64 %7, %8, !dbg !4936
  br i1 %11, label %switch.body3, label %switch.next4, !dbg !4919

switch.body3:                                     ; preds = %switch.next
  %12 = load double, ptr %y7, align 8, !dbg !4937
    #dbg_value(double %12, !4904, !DIExpression(), !4937)
  ret double %12, !dbg !4938

switch.next4:                                     ; preds = %switch.next
    #dbg_value(i64 %4, !4907, !DIExpression(), !4939)
    #dbg_value(i64 %7, !4908, !DIExpression(), !4940)
  %13 = icmp sge i64 %4, %7, !dbg !4941
  br i1 %13, label %if.then5, label %if.else, !dbg !4919

if.then5:                                         ; preds = %switch.next4
  %14 = load double, ptr %x6, align 8, !dbg !4942
    #dbg_value(double %14, !4903, !DIExpression(), !4942)
  ret double %14, !dbg !4943

if.else:                                          ; preds = %switch.next4
  %15 = load double, ptr %y7, align 8, !dbg !4944
    #dbg_value(double %15, !4904, !DIExpression(), !4944)
  ret double %15, !dbg !4945
}

; Function Attrs: nounwind uwtable(sync)
define float @fmaximumf(float %x, float %y) #1 !dbg !4946 {
entry:
    #dbg_value(float %x, !4948, !DIExpression(), !4950)
    #dbg_value(float %y, !4949, !DIExpression(), !4950)
    #dbg_value(float %x, !4948, !DIExpression(), !4951)
    #dbg_value(float %y, !4949, !DIExpression(), !4952)
  %0 = call float @runtime.maximumFloat32(float %x, float %y, ptr undef), !dbg !4953
  ret float %0, !dbg !4954
}

; Function Attrs: nounwind uwtable(sync)
define internal float @runtime.maximumFloat32(float %x, float %y, ptr %context) unnamed_addr #1 !dbg !4955 {
entry:
    #dbg_value(float %x, !4957, !DIExpression(), !4959)
    #dbg_value(float %y, !4958, !DIExpression(), !4959)
    #dbg_value(float %x, !4957, !DIExpression(), !4960)
    #dbg_value(float %y, !4958, !DIExpression(), !4961)
  %0 = call float @"runtime.maximumFloat[float32 int32]"(float %x, float %y, i32 2139095041, i32 2147483647, ptr undef), !dbg !4962
  ret float %0, !dbg !4963
}

; Function Attrs: nounwind uwtable(sync)
define internal float @"runtime.maximumFloat[float32 int32]"(float %x, float %y, i32 %minPosNaN, i32 %magMask, ptr %context) unnamed_addr #1 !dbg !4964 {
entry:
    #dbg_value(float %x, !4966, !DIExpression(), !4973)
    #dbg_value(float %y, !4967, !DIExpression(), !4973)
    #dbg_value(i32 %minPosNaN, !4968, !DIExpression(), !4973)
    #dbg_value(i32 %magMask, !4969, !DIExpression(), !4973)
  %x6 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4974
  store float %x, ptr %x6, align 4, !dbg !4974
  %y7 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4975
  store float %y, ptr %y7, align 4, !dbg !4975
  %0 = load i32, ptr %x6, align 4, !dbg !4976
    #dbg_value(i32 %0, !4970, !DIExpression(), !4977)
  %1 = load i32, ptr %y7, align 4, !dbg !4978
    #dbg_value(i32 %1, !4971, !DIExpression(), !4979)
    #dbg_value(i32 %0, !4970, !DIExpression(), !4980)
  %2 = icmp slt i32 %0, 0, !dbg !4981
  br i1 %2, label %if.then, label %if.done, !dbg !4982

if.then:                                          ; preds = %entry
    #dbg_value(i32 %magMask, !4969, !DIExpression(), !4983)
  %3 = xor i32 %0, %magMask, !dbg !4984
    #dbg_value(i32 %3, !4970, !DIExpression(), !4984)
  br label %if.done, !dbg !4982

if.done:                                          ; preds = %if.then, %entry
  %4 = phi i32 [ %0, %entry ], [ %3, %if.then ], !dbg !4977
    #dbg_value(i32 %1, !4971, !DIExpression(), !4985)
  %5 = icmp slt i32 %1, 0, !dbg !4986
  br i1 %5, label %if.then1, label %if.done2, !dbg !4982

if.then1:                                         ; preds = %if.done
    #dbg_value(i32 %magMask, !4969, !DIExpression(), !4987)
  %6 = xor i32 %1, %magMask, !dbg !4988
    #dbg_value(i32 %6, !4971, !DIExpression(), !4988)
  br label %if.done2, !dbg !4982

if.done2:                                         ; preds = %if.then1, %if.done
  %7 = phi i32 [ %1, %if.done ], [ %6, %if.then1 ], !dbg !4979
    #dbg_value(i32 %minPosNaN, !4968, !DIExpression(), !4989)
  %8 = xor i32 %minPosNaN, -1, !dbg !4990
    #dbg_value(i32 %8, !4972, !DIExpression(), !4991)
    #dbg_value(i32 %4, !4970, !DIExpression(), !4992)
    #dbg_value(i32 %8, !4972, !DIExpression(), !4993)
  %9 = icmp sle i32 %4, %8, !dbg !4994
  br i1 %9, label %switch.body, label %switch.next, !dbg !4982

switch.body:                                      ; preds = %if.done2
  %10 = load float, ptr %x6, align 4, !dbg !4995
    #dbg_value(float %10, !4966, !DIExpression(), !4995)
  ret float %10, !dbg !4996

switch.next:                                      ; preds = %if.done2
    #dbg_value(i32 %7, !4971, !DIExpression(), !4997)
    #dbg_value(i32 %8, !4972, !DIExpression(), !4998)
  %11 = icmp sle i32 %7, %8, !dbg !4999
  br i1 %11, label %switch.body3, label %switch.next4, !dbg !4982

switch.body3:                                     ; preds = %switch.next
  %12 = load float, ptr %y7, align 4, !dbg !5000
    #dbg_value(float %12, !4967, !DIExpression(), !5000)
  ret float %12, !dbg !5001

switch.next4:                                     ; preds = %switch.next
    #dbg_value(i32 %4, !4970, !DIExpression(), !5002)
    #dbg_value(i32 %7, !4971, !DIExpression(), !5003)
  %13 = icmp sge i32 %4, %7, !dbg !5004
  br i1 %13, label %if.then5, label %if.else, !dbg !4982

if.then5:                                         ; preds = %switch.next4
  %14 = load float, ptr %x6, align 4, !dbg !5005
    #dbg_value(float %14, !4966, !DIExpression(), !5005)
  ret float %14, !dbg !5006

if.else:                                          ; preds = %switch.next4
  %15 = load float, ptr %y7, align 4, !dbg !5007
    #dbg_value(float %15, !4967, !DIExpression(), !5007)
  ret float %15, !dbg !5008
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.initHeap(ptr %context) unnamed_addr #1 !dbg !5009 {
entry:
  call void @GC_init(), !dbg !5010
  call void @tinygo_runtime_bdwgc_init(), !dbg !5011
  ret void, !dbg !5012
}

declare void @GC_init() #2

declare void @tinygo_runtime_bdwgc_init() #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_runtime_bdwgc_callback() #1 !dbg !5013 {
entry:
  call void @runtime.gcMarkReachable(ptr undef), !dbg !5014
  ret void, !dbg !5015
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.gcMarkReachable(ptr %context) unnamed_addr #1 !dbg !5016 {
entry:
  call void @"internal/task.GCStopWorldAndScan"(ptr undef), !dbg !5017
  ret void, !dbg !5018
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.markRoots(i64 %start, i64 %end, ptr %context) #1 !dbg !5019 {
entry:
    #dbg_value(i64 %start, !5023, !DIExpression(), !5025)
    #dbg_value(i64 %end, !5024, !DIExpression(), !5025)
    #dbg_value(i64 %start, !5023, !DIExpression(), !5026)
    #dbg_value(i64 %end, !5024, !DIExpression(), !5027)
  call void @GC_push_all(i64 %start, i64 %end), !dbg !5028
  ret void, !dbg !5029
}

declare void @GC_push_all(i64, i64) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.free(ptr %ptr, ptr %context) unnamed_addr #1 !dbg !5030 {
entry:
    #dbg_value(ptr %ptr, !5032, !DIExpression(), !5033)
    #dbg_value(ptr %ptr, !5032, !DIExpression(), !5034)
  call void @GC_free(ptr %ptr), !dbg !5035
  ret void, !dbg !5036
}

declare void @GC_free(ptr nocapture) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.gcScanGlobals"(ptr %context) #1 !dbg !5037 {
entry:
  call void @runtime.findGlobals(ptr undef, ptr @runtime.markRoots, ptr undef), !dbg !5038
  ret void, !dbg !5039
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.findGlobals(ptr %found.context, ptr %found.funcptr, ptr %context) unnamed_addr #1 !dbg !5040 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %found.context, 0, !dbg !5071
  %1 = insertvalue { ptr, ptr } %0, ptr %found.funcptr, 1, !dbg !5071
    #dbg_value(ptr %found.context, !5044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5071)
    #dbg_value(ptr %found.funcptr, !5044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5071)
  %2 = load i64, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 11), align 8, !dbg !5072
  %3 = add i64 ptrtoint (ptr @__ehdr_start to i64), %2, !dbg !5073
  %4 = inttoptr i64 %3 to ptr, !dbg !5074
    #dbg_value(ptr %4, !5045, !DIExpression(), !5075)
    #dbg_value(i64 0, !5046, !DIExpression(), !5076)
  br label %for.loop, !dbg !5077

for.loop:                                         ; preds = %if.done, %entry
  %5 = phi ptr [ %4, %entry ], [ %30, %if.done ], !dbg !5075
  %6 = phi i64 [ 0, %entry ], [ %31, %if.done ], !dbg !5076
    #dbg_value(i64 %6, !5046, !DIExpression(), !5078)
  %7 = load i16, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 16), align 2, !dbg !5079
  %8 = zext i16 %7 to i64, !dbg !5080
  %9 = icmp slt i64 %6, %8, !dbg !5081
  br i1 %9, label %for.body, label %for.done, !dbg !5077

for.body:                                         ; preds = %for.loop
  br i1 true, label %if.then, label %if.else, !dbg !5077

if.then:                                          ; preds = %for.body
    #dbg_value(ptr %5, !5045, !DIExpression(), !5082)
    #dbg_value(ptr %5, !5047, !DIExpression(), !5083)
    #dbg_value(ptr %5, !5047, !DIExpression(), !5084)
  %10 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 0, !dbg !5085
  %11 = icmp eq ptr %10, null, !dbg !5085
  br i1 %11, label %deref.throw, label %deref.next, !dbg !5085

deref.next:                                       ; preds = %if.then
  %12 = load i32, ptr %10, align 4, !dbg !5085
  %13 = icmp eq i32 %12, 1, !dbg !5086
  br i1 %13, label %cond.true, label %if.done, !dbg !5077

cond.true:                                        ; preds = %deref.next
    #dbg_value(ptr %5, !5047, !DIExpression(), !5087)
  %14 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 1, !dbg !5088
  %15 = icmp eq ptr %14, null, !dbg !5088
  br i1 %15, label %deref.throw4, label %deref.next5, !dbg !5088

deref.next5:                                      ; preds = %cond.true
  %16 = load i32, ptr %14, align 4, !dbg !5088
  %17 = and i32 %16, 2, !dbg !5089
  %18 = icmp ne i32 %17, 0, !dbg !5090
  br i1 %18, label %if.then1, label %if.done, !dbg !5077

if.then1:                                         ; preds = %deref.next5
    #dbg_value(ptr %5, !5047, !DIExpression(), !5091)
  %19 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 3, !dbg !5092
  %20 = icmp eq ptr %19, null, !dbg !5092
  br i1 %20, label %deref.throw6, label %deref.next7, !dbg !5092

deref.next7:                                      ; preds = %if.then1
  %21 = load i64, ptr %19, align 8, !dbg !5092
    #dbg_value(i64 %21, !5060, !DIExpression(), !5093)
    #dbg_value(i64 %21, !5060, !DIExpression(), !5094)
    #dbg_value(ptr %5, !5047, !DIExpression(), !5095)
  %22 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 6, !dbg !5096
  %23 = icmp eq ptr %22, null, !dbg !5096
  br i1 %23, label %deref.throw8, label %deref.next9, !dbg !5096

deref.next9:                                      ; preds = %deref.next7
  %24 = load i64, ptr %22, align 8, !dbg !5096
  %25 = add i64 %21, %24, !dbg !5097
    #dbg_value(i64 %25, !5061, !DIExpression(), !5098)
    #dbg_value({ ptr, ptr } %1, !5044, !DIExpression(), !5099)
    #dbg_value(i64 %21, !5060, !DIExpression(), !5100)
    #dbg_value(i64 %25, !5061, !DIExpression(), !5101)
  %26 = extractvalue { ptr, ptr } %1, 0, !dbg !5102
  %27 = extractvalue { ptr, ptr } %1, 1, !dbg !5102
  %28 = icmp eq ptr %27, null, !dbg !5102
  br i1 %28, label %fpcall.throw, label %fpcall.next, !dbg !5102

fpcall.next:                                      ; preds = %deref.next9
  call void %27(i64 %21, i64 %25, ptr %26), !dbg !5102
  br label %if.done, !dbg !5077

if.done:                                          ; preds = %fpcall.next19, %deref.next13, %deref.next11, %fpcall.next, %deref.next5, %deref.next
    #dbg_value(ptr %5, !5045, !DIExpression(), !5103)
  %29 = load i16, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 15), align 2, !dbg !5104
  %30 = getelementptr i8, ptr %5, i16 %29, !dbg !5105
    #dbg_value(ptr %30, !5045, !DIExpression(), !5106)
  %31 = add i64 %6, 1, !dbg !5107
    #dbg_value(i64 %31, !5046, !DIExpression(), !5107)
  br label %for.loop, !dbg !5077

if.else:                                          ; preds = %for.body
    #dbg_value(ptr %5, !5045, !DIExpression(), !5108)
    #dbg_value(ptr %5, !5062, !DIExpression(), !5109)
    #dbg_value(ptr %5, !5062, !DIExpression(), !5110)
  %32 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 0, !dbg !5111
  %33 = icmp eq ptr %32, null, !dbg !5111
  br i1 %33, label %deref.throw10, label %deref.next11, !dbg !5111

deref.next11:                                     ; preds = %if.else
  %34 = load i32, ptr %32, align 4, !dbg !5111
  %35 = icmp eq i32 %34, 1, !dbg !5112
  br i1 %35, label %cond.true2, label %if.done, !dbg !5077

cond.true2:                                       ; preds = %deref.next11
    #dbg_value(ptr %5, !5062, !DIExpression(), !5113)
  %36 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 6, !dbg !5114
  %37 = icmp eq ptr %36, null, !dbg !5114
  br i1 %37, label %deref.throw12, label %deref.next13, !dbg !5114

deref.next13:                                     ; preds = %cond.true2
  %38 = load i32, ptr %36, align 4, !dbg !5114
  %39 = and i32 %38, 2, !dbg !5115
  %40 = icmp ne i32 %39, 0, !dbg !5116
  br i1 %40, label %if.then3, label %if.done, !dbg !5077

if.then3:                                         ; preds = %deref.next13
    #dbg_value(ptr %5, !5062, !DIExpression(), !5117)
  %41 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 2, !dbg !5118
  %42 = icmp eq ptr %41, null, !dbg !5118
  br i1 %42, label %deref.throw14, label %deref.next15, !dbg !5118

deref.next15:                                     ; preds = %if.then3
  %43 = load i64, ptr %41, align 8, !dbg !5118
    #dbg_value(i64 %43, !5069, !DIExpression(), !5119)
    #dbg_value(i64 %43, !5069, !DIExpression(), !5120)
    #dbg_value(ptr %5, !5062, !DIExpression(), !5121)
  %44 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 5, !dbg !5122
  %45 = icmp eq ptr %44, null, !dbg !5122
  br i1 %45, label %deref.throw16, label %deref.next17, !dbg !5122

deref.next17:                                     ; preds = %deref.next15
  %46 = load i64, ptr %44, align 8, !dbg !5122
  %47 = add i64 %43, %46, !dbg !5123
    #dbg_value(i64 %47, !5070, !DIExpression(), !5124)
    #dbg_value({ ptr, ptr } %1, !5044, !DIExpression(), !5125)
    #dbg_value(i64 %43, !5069, !DIExpression(), !5126)
    #dbg_value(i64 %47, !5070, !DIExpression(), !5127)
  %48 = extractvalue { ptr, ptr } %1, 0, !dbg !5128
  %49 = extractvalue { ptr, ptr } %1, 1, !dbg !5128
  %50 = icmp eq ptr %49, null, !dbg !5128
  br i1 %50, label %fpcall.throw18, label %fpcall.next19, !dbg !5128

fpcall.next19:                                    ; preds = %deref.next17
  call void %49(i64 %43, i64 %47, ptr %48), !dbg !5128
  br label %if.done, !dbg !5077

for.done:                                         ; preds = %for.loop
  ret void, !dbg !5129

deref.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !5085
  unreachable, !dbg !5085

deref.throw4:                                     ; preds = %cond.true
  call void @runtime.nilPanic(ptr undef), !dbg !5088
  unreachable, !dbg !5088

deref.throw6:                                     ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !5092
  unreachable, !dbg !5092

deref.throw8:                                     ; preds = %deref.next7
  call void @runtime.nilPanic(ptr undef), !dbg !5096
  unreachable, !dbg !5096

fpcall.throw:                                     ; preds = %deref.next9
  call void @runtime.nilPanic(ptr undef), !dbg !5102
  unreachable, !dbg !5102

deref.throw10:                                    ; preds = %if.else
  call void @runtime.nilPanic(ptr undef), !dbg !5111
  unreachable, !dbg !5111

deref.throw12:                                    ; preds = %cond.true2
  call void @runtime.nilPanic(ptr undef), !dbg !5114
  unreachable, !dbg !5114

deref.throw14:                                    ; preds = %if.then3
  call void @runtime.nilPanic(ptr undef), !dbg !5118
  unreachable, !dbg !5118

deref.throw16:                                    ; preds = %deref.next15
  call void @runtime.nilPanic(ptr undef), !dbg !5122
  unreachable, !dbg !5122

fpcall.throw18:                                   ; preds = %deref.next17
  call void @runtime.nilPanic(ptr undef), !dbg !5128
  unreachable, !dbg !5128
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_scanstack(i64 %sp) #1 !dbg !5130 {
entry:
    #dbg_value(i64 %sp, !5132, !DIExpression(), !5133)
    #dbg_value(i64 %sp, !5132, !DIExpression(), !5134)
  %0 = call i64 @"internal/task.StackTop"(ptr undef), !dbg !5135
  call void @runtime.markRoots(i64 %sp, i64 %0, ptr undef), !dbg !5136
  ret void, !dbg !5137
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.unsafeSlicePanic(ptr %context) #1 !dbg !5138 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !5139
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.22", i64 37, ptr undef), !dbg !5140
  ret void, !dbg !5141
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.negativeShiftPanic(ptr %context) #1 !dbg !5142 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !5143
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.24", i64 14, ptr undef), !dbg !5144
  ret void, !dbg !5145
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printspace(ptr %context) #1 !dbg !5146 {
entry:
  call void @runtime.putchar(i8 32, ptr undef), !dbg !5147
  ret void, !dbg !5148
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memmove(ptr %dst, ptr %src, i64 %size, ptr %context) #1 !dbg !5149 {
entry:
    #dbg_value(ptr %dst, !5151, !DIExpression(), !5154)
    #dbg_value(ptr %src, !5152, !DIExpression(), !5154)
    #dbg_value(i64 %size, !5153, !DIExpression(), !5154)
  call void @llvm.memmove.p0.p0.i64(ptr %dst, ptr %src, i64 %size, i1 false), !dbg !5154
  ret void, !dbg !5154
}

; Function Attrs: nounwind uwtable(sync)
define i64 @main(i32 %argc, ptr nocapture dereferenceable_or_null(8) %argv) #1 !dbg !5155 {
entry:
    #dbg_value(i32 %argc, !5159, !DIExpression(), !5164)
    #dbg_value(ptr %argv, !5160, !DIExpression(), !5164)
  br i1 false, label %if.then, label %if.done, !dbg !5165

if.then:                                          ; preds = %entry
  call void @runtime.allocateHeap(ptr undef), !dbg !5166
  br label %if.done, !dbg !5165

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(i32 %argc, !5159, !DIExpression(), !5167)
  store i32 %argc, ptr @runtime.main_argc, align 4, !dbg !5168
    #dbg_value(i32 %argc, !5161, !DIExpression(), !5168)
    #dbg_value(ptr %argv, !5160, !DIExpression(), !5169)
  store ptr %argv, ptr @runtime.main_argv, align 8, !dbg !5170
    #dbg_value(ptr %argv, !5162, !DIExpression(), !5170)
  call void @tinygo_register_fatal_signals(), !dbg !5171
  %0 = call i64 @runtime.getCurrentStackPointer(ptr undef), !dbg !5172
  store i64 %0, ptr @runtime.stackTop, align 8, !dbg !5173
    #dbg_value(i64 %0, !5163, !DIExpression(), !5173)
  call void @runtime.runMain(ptr undef), !dbg !5174
  ret i64 0, !dbg !5175
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.allocateHeap(ptr %context) unnamed_addr #1 !dbg !5176 {
entry:
  store i64 1073741824, ptr @runtime.heapMaxSize, align 8, !dbg !5183
    #dbg_value(i64 1073741824, !5178, !DIExpression(), !5183)
  br label %for.body, !dbg !5184

for.body:                                         ; preds = %if.then1, %if.then, %entry
  %0 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !5185
    #dbg_value(i64 %0, !5178, !DIExpression(), !5185)
  %1 = call ptr @mmap(ptr null, i64 %0, i64 3, i64 34, i64 -1, i64 0), !dbg !5186
    #dbg_value(ptr %1, !5179, !DIExpression(), !5187)
    #dbg_value(ptr %1, !5179, !DIExpression(), !5188)
  %2 = icmp eq ptr %1, inttoptr (i64 -1 to ptr), !dbg !5189
  br i1 %2, label %if.then, label %if.done, !dbg !5184

if.then:                                          ; preds = %for.body
  %3 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !5190
  %4 = udiv i64 %3, 2, !dbg !5190
  store i64 %4, ptr @runtime.heapMaxSize, align 8, !dbg !5190
    #dbg_value(i64 %4, !5178, !DIExpression(), !5190)
  %5 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !5191
    #dbg_value(i64 %5, !5178, !DIExpression(), !5191)
  %6 = icmp ult i64 %5, 4096, !dbg !5192
  br i1 %6, label %if.then1, label %for.body, !dbg !5184

if.then1:                                         ; preds = %if.then
  call void @runtime.runtimePanic(ptr @"runtime$string.56", i64 27, ptr undef), !dbg !5193
  br label %for.body, !dbg !5184

if.done:                                          ; preds = %for.body
    #dbg_value(ptr %1, !5179, !DIExpression(), !5194)
  %7 = ptrtoint ptr %1 to i64, !dbg !5195
  store i64 %7, ptr @runtime.heapStart, align 8, !dbg !5196
    #dbg_value(i64 %7, !5180, !DIExpression(), !5196)
  %8 = load i64, ptr @runtime.heapStart, align 8, !dbg !5197
    #dbg_value(i64 %8, !5180, !DIExpression(), !5197)
  %9 = load i64, ptr @runtime.heapSize, align 8, !dbg !5198
    #dbg_value(i64 %9, !5181, !DIExpression(), !5198)
  %10 = add i64 %8, %9, !dbg !5199
  store i64 %10, ptr @runtime.heapEnd, align 8, !dbg !5200
    #dbg_value(i64 %10, !5182, !DIExpression(), !5200)
  ret void, !dbg !5201
}

declare void @tinygo_register_fatal_signals() #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @runtime.runMain(ptr %context) unnamed_addr #15 !dbg !5202 {
entry:
  call void @runtime.run(ptr undef), !dbg !5203
  ret void, !dbg !5204
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.run(ptr %context) unnamed_addr #1 !dbg !5205 {
entry:
  call void @runtime.initRand(ptr undef), !dbg !5208
  call void @runtime.initHeap(ptr undef), !dbg !5209
  %0 = load i64, ptr @runtime.stackTop, align 8, !dbg !5210
    #dbg_value(i64 %0, !5207, !DIExpression(), !5210)
  call void @"internal/task.Init"(i64 %0, ptr undef), !dbg !5211
  call void @runtime.initAll(ptr undef), !dbg !5212
  call void @main.main(ptr undef), !dbg !5213
  ret void, !dbg !5214
}

define internal void @runtime.initAll(ptr %context) unnamed_addr #2 {
entry:
  ret void
}

declare void @main.main(ptr) #2

declare ptr @mmap(ptr nocapture, i64, i64, i64, i64, i64) #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_handle_fatal_signal(i32 %sig, i64 %addr) #1 !dbg !5215 {
entry:
    #dbg_value(i32 %sig, !5219, !DIExpression(), !5221)
    #dbg_value(i64 %addr, !5220, !DIExpression(), !5221)
  br i1 false, label %if.then, label %if.done, !dbg !5222

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !5223
  br label %if.done, !dbg !5222

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(i64 %addr, !5220, !DIExpression(), !5224)
  %0 = icmp ne i64 %addr, 0, !dbg !5225
  br i1 %0, label %if.then1, label %if.else, !dbg !5222

if.then1:                                         ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.50", i64 24, ptr undef), !dbg !5226
    #dbg_value(i64 %addr, !5220, !DIExpression(), !5227)
  call void @runtime.printptr(i64 %addr, ptr undef), !dbg !5228
  br label %if.done2, !dbg !5222

if.done2:                                         ; preds = %if.else, %if.then1
  call void @runtime.printstring(ptr @"runtime$string.51", i64 16, ptr undef), !dbg !5229
    #dbg_value(i32 %sig, !5219, !DIExpression(), !5230)
  %1 = icmp eq i32 %sig, 7, !dbg !5231
  br i1 %1, label %switch.body, label %switch.next, !dbg !5222

switch.body:                                      ; preds = %if.done2
  call void @runtime.printlock(ptr undef), !dbg !5232
  call void @runtime.printstring(ptr @"runtime$string.52", i64 6, ptr undef), !dbg !5232
  call void @runtime.printnl(ptr undef), !dbg !5232
  call void @runtime.printunlock(ptr undef), !dbg !5232
  br label %switch.done, !dbg !5222

switch.done:                                      ; preds = %switch.next6, %switch.body5, %switch.body3, %switch.body
    #dbg_value(i32 %sig, !5219, !DIExpression(), !5233)
  call void @raise(i32 %sig), !dbg !5234
  ret void, !dbg !5235

switch.next:                                      ; preds = %if.done2
  %2 = icmp eq i32 %sig, 4, !dbg !5236
  br i1 %2, label %switch.body3, label %switch.next4, !dbg !5222

switch.body3:                                     ; preds = %switch.next
  call void @runtime.printlock(ptr undef), !dbg !5237
  call void @runtime.printstring(ptr @"runtime$string.53", i64 6, ptr undef), !dbg !5237
  call void @runtime.printnl(ptr undef), !dbg !5237
  call void @runtime.printunlock(ptr undef), !dbg !5237
  br label %switch.done, !dbg !5222

switch.next4:                                     ; preds = %switch.next
  %3 = icmp eq i32 %sig, 11, !dbg !5238
  br i1 %3, label %switch.body5, label %switch.next6, !dbg !5222

switch.body5:                                     ; preds = %switch.next4
  call void @runtime.printlock(ptr undef), !dbg !5239
  call void @runtime.printstring(ptr @"runtime$string.54", i64 7, ptr undef), !dbg !5239
  call void @runtime.printnl(ptr undef), !dbg !5239
  call void @runtime.printunlock(ptr undef), !dbg !5239
  br label %switch.done, !dbg !5222

switch.next6:                                     ; preds = %switch.next4
    #dbg_value(i32 %sig, !5219, !DIExpression(), !5240)
  call void @runtime.printlock(ptr undef), !dbg !5241
  call void @runtime.printint32(i32 %sig, ptr undef), !dbg !5241
  call void @runtime.printnl(ptr undef), !dbg !5241
  call void @runtime.printunlock(ptr undef), !dbg !5241
  br label %switch.done, !dbg !5222

if.else:                                          ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.55", i64 20, ptr undef), !dbg !5242
  br label %if.done2, !dbg !5222
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printlock(ptr %context) #1 !dbg !5243 {
entry:
  call void @"(*internal/task.Mutex).Lock"(ptr @runtime.printLock, ptr undef), !dbg !5244
  ret void, !dbg !5245
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printunlock(ptr %context) #1 !dbg !5246 {
entry:
  call void @"(*internal/task.Mutex).Unlock"(ptr @runtime.printLock, ptr undef), !dbg !5247
  ret void, !dbg !5248
}

declare void @raise(i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @runtime.sliceAppend(ptr %srcBuf, ptr nocapture readonly %elemsBuf, i64 %srcLen, i64 %srcCap, i64 %elemsLen, i64 %elemSize, ptr %layout, ptr %context) #1 !dbg !5249 {
entry:
    #dbg_value(ptr %srcBuf, !5254, !DIExpression(), !5262)
    #dbg_value(ptr %elemsBuf, !5255, !DIExpression(), !5262)
    #dbg_value(i64 %srcLen, !5256, !DIExpression(), !5262)
    #dbg_value(i64 %srcCap, !5257, !DIExpression(), !5262)
    #dbg_value(i64 %elemsLen, !5258, !DIExpression(), !5262)
    #dbg_value(i64 %elemSize, !5259, !DIExpression(), !5262)
    #dbg_value(ptr %layout, !5260, !DIExpression(), !5262)
    #dbg_value(i64 %srcLen, !5256, !DIExpression(), !5263)
    #dbg_value(i64 %elemsLen, !5258, !DIExpression(), !5264)
  %0 = add i64 %srcLen, %elemsLen, !dbg !5265
    #dbg_value(i64 %0, !5261, !DIExpression(), !5266)
    #dbg_value(i64 %elemsLen, !5258, !DIExpression(), !5267)
  %1 = icmp ugt i64 %elemsLen, 0, !dbg !5268
  br i1 %1, label %if.then, label %if.done, !dbg !5269

if.then:                                          ; preds = %entry
    #dbg_value(ptr %srcBuf, !5254, !DIExpression(), !5270)
    #dbg_value(i64 %srcLen, !5256, !DIExpression(), !5271)
    #dbg_value(i64 %srcCap, !5257, !DIExpression(), !5272)
    #dbg_value(i64 %0, !5261, !DIExpression(), !5273)
    #dbg_value(i64 %elemSize, !5259, !DIExpression(), !5274)
    #dbg_value(ptr %layout, !5260, !DIExpression(), !5275)
  %2 = call { ptr, i64, i64 } @runtime.sliceGrow(ptr %srcBuf, i64 %srcLen, i64 %srcCap, i64 %0, i64 %elemSize, ptr %layout, ptr undef), !dbg !5276
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !5276
    #dbg_value(ptr %3, !5254, !DIExpression(), !5277)
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !5276
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !5276
    #dbg_value(i64 %5, !5257, !DIExpression(), !5278)
    #dbg_value(ptr %3, !5254, !DIExpression(), !5279)
    #dbg_value(i64 %srcLen, !5256, !DIExpression(), !5280)
    #dbg_value(i64 %elemSize, !5259, !DIExpression(), !5281)
  %6 = mul i64 %srcLen, %elemSize, !dbg !5282
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !5283
    #dbg_value(ptr %elemsBuf, !5255, !DIExpression(), !5284)
    #dbg_value(i64 %elemsLen, !5258, !DIExpression(), !5285)
    #dbg_value(i64 %elemSize, !5259, !DIExpression(), !5286)
  %8 = mul i64 %elemsLen, %elemSize, !dbg !5287
  call void @runtime.memmove(ptr %7, ptr %elemsBuf, i64 %8, ptr undef), !dbg !5288
  br label %if.done, !dbg !5269

if.done:                                          ; preds = %if.then, %entry
  %9 = phi ptr [ %srcBuf, %entry ], [ %3, %if.then ], !dbg !5289
  %10 = phi i64 [ %srcCap, %entry ], [ %5, %if.then ], !dbg !5290
    #dbg_value(ptr %9, !5254, !DIExpression(), !5291)
    #dbg_value(i64 %0, !5261, !DIExpression(), !5292)
    #dbg_value(i64 %10, !5257, !DIExpression(), !5293)
  %11 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %9, 0, !dbg !5294
  %12 = insertvalue { ptr, i64, i64 } %11, i64 %0, 1, !dbg !5294
  %13 = insertvalue { ptr, i64, i64 } %12, i64 %10, 2, !dbg !5294
  ret { ptr, i64, i64 } %13, !dbg !5294
}

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @runtime.sliceGrow(ptr %oldBuf, i64 %oldLen, i64 %oldCap, i64 %newCap, i64 %elemSize, ptr %layout, ptr %context) #1 !dbg !5295 {
entry:
    #dbg_value(ptr %oldBuf, !5299, !DIExpression(), !5306)
    #dbg_value(i64 %oldLen, !5300, !DIExpression(), !5306)
    #dbg_value(i64 %oldCap, !5301, !DIExpression(), !5306)
    #dbg_value(i64 %newCap, !5302, !DIExpression(), !5306)
    #dbg_value(i64 %elemSize, !5303, !DIExpression(), !5306)
    #dbg_value(ptr %layout, !5304, !DIExpression(), !5306)
    #dbg_value(i64 %oldCap, !5301, !DIExpression(), !5307)
    #dbg_value(i64 %newCap, !5302, !DIExpression(), !5308)
  %0 = icmp uge i64 %oldCap, %newCap, !dbg !5309
  br i1 %0, label %if.then, label %if.done, !dbg !5310

if.then:                                          ; preds = %entry
    #dbg_value(ptr %oldBuf, !5299, !DIExpression(), !5311)
    #dbg_value(i64 %oldLen, !5300, !DIExpression(), !5312)
    #dbg_value(i64 %oldCap, !5301, !DIExpression(), !5313)
  %1 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %oldBuf, 0, !dbg !5314
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %oldLen, 1, !dbg !5314
  %3 = insertvalue { ptr, i64, i64 } %2, i64 %oldCap, 2, !dbg !5314
  ret { ptr, i64, i64 } %3, !dbg !5314

if.done:                                          ; preds = %entry
    #dbg_value(i64 %newCap, !5302, !DIExpression(), !5315)
  %4 = call i64 @"math/bits.Len"(i64 %newCap, ptr undef), !dbg !5316
  %5 = icmp slt i64 %4, 0, !dbg !5317
  br i1 %5, label %shift.throw, label %shift.next, !dbg !5317

shift.next:                                       ; preds = %if.done
  %shift.overflow = icmp uge i64 %4, 64, !dbg !5317
  %6 = shl i64 1, %4, !dbg !5317
  %shift.result = select i1 %shift.overflow, i64 0, i64 %6, !dbg !5317
    #dbg_value(i64 %shift.result, !5302, !DIExpression(), !5318)
    #dbg_value(i64 %shift.result, !5302, !DIExpression(), !5319)
    #dbg_value(i64 %elemSize, !5303, !DIExpression(), !5320)
  %7 = mul i64 %shift.result, %elemSize, !dbg !5321
    #dbg_value(ptr %layout, !5304, !DIExpression(), !5322)
  %8 = call ptr @runtime.alloc(i64 %7, ptr %layout, ptr undef), !dbg !5323
    #dbg_value(ptr %8, !5305, !DIExpression(), !5324)
    #dbg_value(i64 %oldLen, !5300, !DIExpression(), !5325)
  %9 = icmp ugt i64 %oldLen, 0, !dbg !5326
  br i1 %9, label %if.then1, label %if.done2, !dbg !5310

if.then1:                                         ; preds = %shift.next
    #dbg_value(ptr %8, !5305, !DIExpression(), !5327)
    #dbg_value(ptr %oldBuf, !5299, !DIExpression(), !5328)
    #dbg_value(i64 %oldLen, !5300, !DIExpression(), !5329)
    #dbg_value(i64 %elemSize, !5303, !DIExpression(), !5330)
  %10 = mul i64 %oldLen, %elemSize, !dbg !5331
  call void @runtime.memmove(ptr %8, ptr %oldBuf, i64 %10, ptr undef), !dbg !5332
  br label %if.done2, !dbg !5310

if.done2:                                         ; preds = %if.then1, %shift.next
    #dbg_value(ptr %8, !5305, !DIExpression(), !5333)
    #dbg_value(i64 %oldLen, !5300, !DIExpression(), !5334)
    #dbg_value(i64 %shift.result, !5302, !DIExpression(), !5335)
  %11 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %8, 0, !dbg !5336
  %12 = insertvalue { ptr, i64, i64 } %11, i64 %oldLen, 1, !dbg !5336
  %13 = insertvalue { ptr, i64, i64 } %12, i64 %shift.result, 2, !dbg !5336
  ret { ptr, i64, i64 } %13, !dbg !5336

shift.throw:                                      ; preds = %if.done
  call void @runtime.negativeShiftPanic(ptr undef), !dbg !5317
  unreachable, !dbg !5317
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_signal_handler(i32 %s) #1 !dbg !5337 {
entry:
    #dbg_value(i32 %s, !5339, !DIExpression(), !5343)
  br label %for.body, !dbg !5344

for.body:                                         ; preds = %for.body, %entry
    #dbg_value(i32 %s, !5339, !DIExpression(), !5345)
  %shift.overflow = icmp uge i32 %s, 32, !dbg !5346
  %0 = shl i32 1, %s, !dbg !5346
  %shift.result = select i1 %shift.overflow, i32 0, i32 %0, !dbg !5346
    #dbg_value(i32 %shift.result, !5340, !DIExpression(), !5347)
  %1 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @runtime.receivedSignals, ptr undef), !dbg !5348
    #dbg_value(i32 %1, !5341, !DIExpression(), !5349)
    #dbg_value(i32 %1, !5341, !DIExpression(), !5350)
    #dbg_value(i32 %1, !5341, !DIExpression(), !5351)
    #dbg_value(i32 %shift.result, !5340, !DIExpression(), !5352)
  %2 = or i32 %1, %shift.result, !dbg !5353
  %3 = call i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr @runtime.receivedSignals, i32 %1, i32 %2, ptr undef), !dbg !5354
    #dbg_value(i1 %3, !5342, !DIExpression(), !5355)
    #dbg_value(i1 %3, !5342, !DIExpression(), !5356)
  br i1 %3, label %if.then, label %for.body, !dbg !5344

if.then:                                          ; preds = %for.body
  %4 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr @runtime.signalFutex, i32 1, ptr undef), !dbg !5357
  %5 = icmp eq i32 %4, 0, !dbg !5358
  br i1 %5, label %if.then1, label %if.done, !dbg !5344

if.then1:                                         ; preds = %if.then
  call void @"(*internal/futex.Futex).WakeAll"(ptr @runtime.signalFutex, ptr undef), !dbg !5359
  br label %if.done, !dbg !5344

if.done:                                          ; preds = %if.then1, %if.then
  ret void, !dbg !5360
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @runtime.stringConcat(ptr dereferenceable_or_null(1) %x.ptr, i64 %x.length, ptr dereferenceable_or_null(1) %y.ptr, i64 %y.length, ptr %context) #1 !dbg !5361 {
entry:
  %complit = alloca %runtime._string, align 8, !dbg !5373
  %y = alloca %runtime._string, align 8, !dbg !5373
  %x = alloca %runtime._string, align 8, !dbg !5373
  %0 = insertvalue %runtime._string zeroinitializer, ptr %x.ptr, 0, !dbg !5373
  %1 = insertvalue %runtime._string %0, i64 %x.length, 1, !dbg !5373
    #dbg_value(ptr %x.ptr, !5369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5373)
    #dbg_value(i64 %x.length, !5369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5373)
  %2 = insertvalue %runtime._string zeroinitializer, ptr %y.ptr, 0, !dbg !5373
  %3 = insertvalue %runtime._string %2, i64 %y.length, 1, !dbg !5373
    #dbg_value(ptr %y.ptr, !5370, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5373)
    #dbg_value(i64 %y.length, !5370, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5373)
  store %runtime._string zeroinitializer, ptr %x, align 8, !dbg !5373
  store %runtime._string %1, ptr %x, align 8, !dbg !5374
  store %runtime._string zeroinitializer, ptr %y, align 8, !dbg !5373
  store %runtime._string %3, ptr %y, align 8, !dbg !5375
  %4 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !5376
  %5 = icmp eq ptr %4, null, !dbg !5376
  br i1 %5, label %deref.throw, label %deref.next, !dbg !5376

deref.next:                                       ; preds = %entry
  %6 = load i64, ptr %4, align 8, !dbg !5376
  %7 = icmp eq i64 %6, 0, !dbg !5377
  br i1 %7, label %if.then, label %if.else, !dbg !5378

if.then:                                          ; preds = %deref.next
  %8 = load %runtime._string, ptr %y, align 8, !dbg !5379
    #dbg_value(%runtime._string %8, !5370, !DIExpression(), !5379)
  ret %runtime._string %8, !dbg !5380

if.else:                                          ; preds = %deref.next
  %9 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !5381
  %10 = icmp eq ptr %9, null, !dbg !5381
  br i1 %10, label %deref.throw3, label %deref.next4, !dbg !5381

deref.next4:                                      ; preds = %if.else
  %11 = load i64, ptr %9, align 8, !dbg !5381
  %12 = icmp eq i64 %11, 0, !dbg !5382
  br i1 %12, label %if.then1, label %if.else2, !dbg !5378

if.then1:                                         ; preds = %deref.next4
  %13 = load %runtime._string, ptr %x, align 8, !dbg !5383
    #dbg_value(%runtime._string %13, !5369, !DIExpression(), !5383)
  ret %runtime._string %13, !dbg !5384

if.else2:                                         ; preds = %deref.next4
  %14 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !5385
  %15 = icmp eq ptr %14, null, !dbg !5385
  br i1 %15, label %deref.throw5, label %deref.next6, !dbg !5385

deref.next6:                                      ; preds = %if.else2
  %16 = load i64, ptr %14, align 8, !dbg !5385
  %17 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !5386
  %18 = icmp eq ptr %17, null, !dbg !5386
  br i1 %18, label %deref.throw7, label %deref.next8, !dbg !5386

deref.next8:                                      ; preds = %deref.next6
  %19 = load i64, ptr %17, align 8, !dbg !5386
  %20 = add i64 %16, %19, !dbg !5387
    #dbg_value(i64 %20, !5371, !DIExpression(), !5388)
    #dbg_value(i64 %20, !5371, !DIExpression(), !5389)
  %21 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !5390
  %22 = call ptr @runtime.alloc(i64 %20, ptr %21, ptr undef), !dbg !5391
    #dbg_value(ptr %22, !5372, !DIExpression(), !5392)
    #dbg_value(ptr %22, !5372, !DIExpression(), !5393)
  %23 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 0, !dbg !5394
  %24 = icmp eq ptr %23, null, !dbg !5394
  br i1 %24, label %deref.throw9, label %deref.next10, !dbg !5394

deref.next10:                                     ; preds = %deref.next8
  %25 = load ptr, ptr %23, align 8, !dbg !5394
  %26 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !5395
  %27 = icmp eq ptr %26, null, !dbg !5395
  br i1 %27, label %deref.throw11, label %deref.next12, !dbg !5395

deref.next12:                                     ; preds = %deref.next10
  %28 = load i64, ptr %26, align 8, !dbg !5395
  call void @runtime.memcpy(ptr %22, ptr %25, i64 %28, ptr undef), !dbg !5396
    #dbg_value(ptr %22, !5372, !DIExpression(), !5397)
  %29 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !5398
  %30 = icmp eq ptr %29, null, !dbg !5398
  br i1 %30, label %deref.throw13, label %deref.next14, !dbg !5398

deref.next14:                                     ; preds = %deref.next12
  %31 = load i64, ptr %29, align 8, !dbg !5398
  %32 = getelementptr i8, ptr %22, i64 %31, !dbg !5399
  %33 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 0, !dbg !5400
  %34 = icmp eq ptr %33, null, !dbg !5400
  br i1 %34, label %deref.throw15, label %deref.next16, !dbg !5400

deref.next16:                                     ; preds = %deref.next14
  %35 = load ptr, ptr %33, align 8, !dbg !5400
  %36 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !5401
  %37 = icmp eq ptr %36, null, !dbg !5401
  br i1 %37, label %deref.throw17, label %deref.next18, !dbg !5401

deref.next18:                                     ; preds = %deref.next16
  %38 = load i64, ptr %36, align 8, !dbg !5401
  call void @runtime.memcpy(ptr %32, ptr %35, i64 %38, ptr undef), !dbg !5402
  store %runtime._string zeroinitializer, ptr %complit, align 8, !dbg !5373
  %39 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !5403
    #dbg_value(ptr %22, !5372, !DIExpression(), !5404)
  %40 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !5405
    #dbg_value(i64 %20, !5371, !DIExpression(), !5406)
  %41 = icmp eq ptr %39, null, !dbg !5403
  br i1 %41, label %store.throw, label %store.next, !dbg !5403

store.next:                                       ; preds = %deref.next18
  store ptr %22, ptr %39, align 8, !dbg !5403
  %42 = icmp eq ptr %40, null, !dbg !5405
  br i1 %42, label %store.throw19, label %store.next20, !dbg !5405

store.next20:                                     ; preds = %store.next
  store i64 %20, ptr %40, align 8, !dbg !5405
    #dbg_value(i64 %20, !5371, !DIExpression(), !5406)
  %43 = load %runtime._string, ptr %complit, align 8, !dbg !5407
  ret %runtime._string %43, !dbg !5408

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !5376
  unreachable, !dbg !5376

deref.throw3:                                     ; preds = %if.else
  call void @runtime.nilPanic(ptr undef), !dbg !5381
  unreachable, !dbg !5381

deref.throw5:                                     ; preds = %if.else2
  call void @runtime.nilPanic(ptr undef), !dbg !5385
  unreachable, !dbg !5385

deref.throw7:                                     ; preds = %deref.next6
  call void @runtime.nilPanic(ptr undef), !dbg !5386
  unreachable, !dbg !5386

deref.throw9:                                     ; preds = %deref.next8
  call void @runtime.nilPanic(ptr undef), !dbg !5394
  unreachable, !dbg !5394

deref.throw11:                                    ; preds = %deref.next10
  call void @runtime.nilPanic(ptr undef), !dbg !5395
  unreachable, !dbg !5395

deref.throw13:                                    ; preds = %deref.next12
  call void @runtime.nilPanic(ptr undef), !dbg !5398
  unreachable, !dbg !5398

deref.throw15:                                    ; preds = %deref.next14
  call void @runtime.nilPanic(ptr undef), !dbg !5400
  unreachable, !dbg !5400

deref.throw17:                                    ; preds = %deref.next16
  call void @runtime.nilPanic(ptr undef), !dbg !5401
  unreachable, !dbg !5401

store.throw:                                      ; preds = %deref.next18
  call void @runtime.nilPanic(ptr undef), !dbg !5403
  unreachable, !dbg !5403

store.throw19:                                    ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !5405
  unreachable, !dbg !5405
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @runtime.stringFromBytes(ptr nocapture readonly dereferenceable_or_null(1) %x.ptr, i64 %x.len, i64 %x.cap, ptr %context) #1 !dbg !5409 {
entry:
  %complit = alloca %runtime._string, align 8, !dbg !5416
  %x = alloca { ptr, i64, i64 }, align 8, !dbg !5416
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %x.ptr, 0, !dbg !5416
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %x.len, 1, !dbg !5416
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %x.cap, 2, !dbg !5416
    #dbg_value(ptr %x.ptr, !5414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5416)
    #dbg_value(i64 %x.len, !5414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5416)
    #dbg_value(i64 %x.cap, !5414, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5416)
  store { ptr, i64, i64 } zeroinitializer, ptr %x, align 8, !dbg !5416
  store { ptr, i64, i64 } %2, ptr %x, align 8, !dbg !5417
  %3 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !5418
  %4 = icmp eq ptr %3, null, !dbg !5418
  br i1 %4, label %deref.throw, label %deref.next, !dbg !5418

deref.next:                                       ; preds = %entry
  %5 = load i64, ptr %3, align 8, !dbg !5418
  %6 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !5419
  %7 = call ptr @runtime.alloc(i64 %5, ptr %6, ptr undef), !dbg !5420
    #dbg_value(ptr %7, !5415, !DIExpression(), !5421)
    #dbg_value(ptr %7, !5415, !DIExpression(), !5422)
  %8 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 0, !dbg !5423
  %9 = icmp eq ptr %8, null, !dbg !5423
  br i1 %9, label %deref.throw1, label %deref.next2, !dbg !5423

deref.next2:                                      ; preds = %deref.next
  %10 = load ptr, ptr %8, align 8, !dbg !5423
  %11 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !5424
  %12 = icmp eq ptr %11, null, !dbg !5424
  br i1 %12, label %deref.throw3, label %deref.next4, !dbg !5424

deref.next4:                                      ; preds = %deref.next2
  %13 = load i64, ptr %11, align 8, !dbg !5424
  call void @runtime.memcpy(ptr %7, ptr %10, i64 %13, ptr undef), !dbg !5425
  store %runtime._string zeroinitializer, ptr %complit, align 8, !dbg !5416
  %14 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !5426
    #dbg_value(ptr %7, !5415, !DIExpression(), !5427)
  %15 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !5428
  %16 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !5429
  %17 = icmp eq ptr %16, null, !dbg !5429
  br i1 %17, label %deref.throw5, label %deref.next6, !dbg !5429

deref.next6:                                      ; preds = %deref.next4
  %18 = load i64, ptr %16, align 8, !dbg !5429
  %19 = icmp eq ptr %14, null, !dbg !5426
  br i1 %19, label %store.throw, label %store.next, !dbg !5426

store.next:                                       ; preds = %deref.next6
  store ptr %7, ptr %14, align 8, !dbg !5426
  %20 = icmp eq ptr %15, null, !dbg !5428
  br i1 %20, label %store.throw7, label %store.next8, !dbg !5428

store.next8:                                      ; preds = %store.next
  store i64 %18, ptr %15, align 8, !dbg !5428
  %21 = load %runtime._string, ptr %complit, align 8, !dbg !5430
  ret %runtime._string %21, !dbg !5431

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !5418
  unreachable, !dbg !5418

deref.throw1:                                     ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !5423
  unreachable, !dbg !5423

deref.throw3:                                     ; preds = %deref.next2
  call void @runtime.nilPanic(ptr undef), !dbg !5424
  unreachable, !dbg !5424

deref.throw5:                                     ; preds = %deref.next4
  call void @runtime.nilPanic(ptr undef), !dbg !5429
  unreachable, !dbg !5429

store.throw:                                      ; preds = %deref.next6
  call void @runtime.nilPanic(ptr undef), !dbg !5426
  unreachable, !dbg !5426

store.throw7:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !5428
  unreachable, !dbg !5428
}

; Function Attrs: nounwind uwtable(sync)
define i64 @f_gold(i64 %n) #1 !dbg !5432 {
entry:
    #dbg_value(i64 %n, !5435, !DIExpression(), !5437)
    #dbg_value(i64 %n, !5435, !DIExpression(), !5438)
  %0 = sitofp i64 %n to double, !dbg !5439
  %1 = call double @math.Pow(double 3.000000e+00, double %0, ptr undef), !dbg !5440
  %2 = fmul double %1, 2.000000e+00, !dbg !5441
  %3 = fsub double %2, 1.000000e+00, !dbg !5442
  %abovemin = fcmp ole double 0xC3E0000000000000, %3, !dbg !5443
  %belowmax = fcmp ole double %3, 0x43DFFFFFFFFFFFFE, !dbg !5443
  %inbounds = and i1 %abovemin, %belowmax, !dbg !5443
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5443
  %isnan = fcmp uno double %3, %3, !dbg !5443
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !5443
  %normal = fptosi double %3 to i64, !dbg !5443
  %4 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !5443
    #dbg_value(i64 %4, !5436, !DIExpression(), !5444)
    #dbg_value(i64 %4, !5436, !DIExpression(), !5445)
  ret i64 %4, !dbg !5446
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

!llvm.dbg.cu = !{!523, !525, !773, !791, !976, !1020, !1021, !1022, !1030, !1032, !1516, !1527, !1555, !1556, !1731}
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
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1, type: !3, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(scope: null, file: !13, line: 12, type: !14, isLocal: true, isDefinition: true)
!13 = !DIFile(filename: "itoa.go", directory: "/usr/local/lib/tinygo/src/internal/itoa")
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, align: 8, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 1, lowerBound: 0)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !13, line: 20, type: !14, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "unicode/utf8.first", linkageName: "unicode/utf8.first", scope: !21, file: !21, line: 71, type: !22, isLocal: false, isDefinition: true, align: 8)
!21 = !DIFile(filename: "utf8.go", directory: "/usr/local/lib/tinygo/src/unicode/utf8")
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, align: 8, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 256, lowerBound: 0)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "unicode/utf8.acceptRanges", linkageName: "unicode/utf8.acceptRanges", scope: !21, file: !21, line: 100, type: !27, isLocal: false, isDefinition: true, align: 8)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, align: 8, elements: !33)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "unicode/utf8.acceptRange", baseType: !29)
!29 = !DICompositeType(tag: DW_TAG_structure_type, size: 16, align: 8, elements: !30)
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "lo", baseType: !4, size: 8, align: 8)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "hi", baseType: !4, size: 8, align: 8, offset: 8)
!33 = !{!34}
!34 = !DISubrange(count: 16, lowerBound: 0)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !37, line: 393, type: !38, isLocal: true, isDefinition: true)
!37 = !DIFile(filename: "type.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, align: 8, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 4, lowerBound: 0)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeElem", linkageName: "internal/reflectlite.errTypeElem", scope: !37, file: !37, line: 393, type: !43, isLocal: false, isDefinition: true, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64, dwarfAddressSpace: 0)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.TypeError", baseType: !45)
!45 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !46)
!46 = !{!47}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "Method", baseType: !48, size: 128, align: 64)
!48 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", size: 128, align: 64, elements: !49)
!49 = !{!50, !52}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64, dwarfAddressSpace: 0)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "len", baseType: !53, size: 64, align: 64, offset: 64)
!53 = !DIBasicType(name: "uintptr", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !37, line: 394, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, align: 8, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 3, lowerBound: 0)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeKey", linkageName: "internal/reflectlite.errTypeKey", scope: !37, file: !37, line: 394, type: !43, isLocal: false, isDefinition: true, align: 64)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !37, line: 395, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, align: 8, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 5, lowerBound: 0)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeField", linkageName: "internal/reflectlite.errTypeField", scope: !37, file: !37, line: 395, type: !43, isLocal: false, isDefinition: true, align: 64)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !37, line: 397, type: !56, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeLen", linkageName: "internal/reflectlite.errTypeLen", scope: !37, file: !37, line: 397, type: !43, isLocal: false, isDefinition: true, align: 64)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !37, line: 398, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, align: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 8, lowerBound: 0)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeNumField", linkageName: "internal/reflectlite.errTypeNumField", scope: !37, file: !37, line: 398, type: !43, isLocal: false, isDefinition: true, align: 64)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !37, line: 399, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 7, lowerBound: 0)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeChanDir", linkageName: "internal/reflectlite.errTypeChanDir", scope: !37, file: !37, line: 399, type: !43, isLocal: false, isDefinition: true, align: 64)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "type uint8", scope: !88, file: !88, line: 1, type: !89, isLocal: false, isDefinition: true, align: 64)
!88 = !DIFile(filename: "<Go type>", directory: "")
!89 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !90)
!90 = !{!91, !93}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !92, size: 8, align: 8)
!92 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !94, size: 64, align: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe.Pointer", baseType: null, size: 64, align: 64, dwarfAddressSpace: 0)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "type *uint8", scope: !88, file: !88, line: 1, type: !97, isLocal: false, isDefinition: true, align: 64)
!97 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !98)
!98 = !{!91, !99, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !100, size: 16, align: 16, offset: 16)
!100 = !DIBasicType(name: "uint16", size: 16, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !94, size: 64, align: 64, offset: 64)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "type struct{meta uint8}", scope: !88, file: !88, line: 1, type: !104, isLocal: false, isDefinition: true, align: 64)
!104 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !105)
!105 = !{!91, !99, !93, !106, !107, !109, !110}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !94, size: 64, align: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "size", baseType: !108, size: 32, align: 32, offset: 192)
!108 = !DIBasicType(name: "uint32", size: 32, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "numFields", baseType: !100, size: 16, align: 16, offset: 224)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !111, size: 128, align: 64, offset: 256)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 128, align: 64, elements: !15)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.structField", baseType: !113)
!113 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !114)
!114 = !{!115, !116}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "typecode", baseType: !94, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !51, size: 64, align: 64, offset: 64)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "type *struct{meta uint8}", scope: !88, file: !88, line: 1, type: !97, isLocal: false, isDefinition: true, align: 64)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !121, line: 17, type: !122, isLocal: true, isDefinition: true)
!121 = !DIFile(filename: "strconv.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, align: 8, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 14, lowerBound: 0)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "type struct{}", scope: !88, file: !88, line: 1, type: !127, isLocal: false, isDefinition: true, align: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !128)
!128 = !{!91, !99, !93, !106, !107, !109, !129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !130, align: 64, offset: 256)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, align: 64, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 0, lowerBound: 0)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "type *struct{}", scope: !88, file: !88, line: 1, type: !97, isLocal: false, isDefinition: true, align: 64)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !121, line: 250, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, align: 8, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 2, lowerBound: 0)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !121, line: 251, type: !3, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !121, line: 252, type: !3, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !121, line: 278, type: !137, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !121, line: 280, type: !137, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !121, line: 282, type: !137, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !121, line: 284, type: !137, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !121, line: 286, type: !137, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !121, line: 288, type: !137, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !121, line: 290, type: !137, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !121, line: 294, type: !137, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !121, line: 295, type: !3, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !121, line: 296, type: !3, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !121, line: 301, type: !137, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !121, line: 303, type: !3, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !121, line: 306, type: !137, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !121, line: 308, type: !3, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "type internal/reflectlite.ValueError", scope: !88, file: !88, line: 1, type: !174, isLocal: false, isDefinition: true, align: 64)
!174 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !175)
!175 = !{!91, !99, !93, !176, !177, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !94, size: 64, align: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !94, size: 64, align: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !179, size: 184, align: 8, offset: 256)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 184, align: 8, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 23, lowerBound: 0)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "type struct{Method string; Kind internal/reflectlite.Kind}", scope: !88, file: !88, line: 1, type: !184, isLocal: false, isDefinition: true, align: 64)
!184 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !185)
!185 = !{!91, !99, !93, !106, !107, !109, !186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !187, size: 256, align: 64, offset: 256)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 256, align: 64, elements: !138)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "type *struct{Method string; Kind internal/reflectlite.Kind}", scope: !88, file: !88, line: 1, type: !97, isLocal: false, isDefinition: true, align: 64)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !37, line: 60, type: !81, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !37, line: 62, type: !38, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !37, line: 64, type: !56, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !37, line: 66, type: !38, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !37, line: 68, type: !63, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !37, line: 70, type: !63, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !37, line: 72, type: !63, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !37, line: 74, type: !38, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !37, line: 76, type: !63, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !37, line: 78, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, align: 8, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 6, lowerBound: 0)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !37, line: 80, type: !210, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !37, line: 82, type: !210, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !37, line: 84, type: !81, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !37, line: 86, type: !81, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !37, line: 88, type: !81, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !37, line: 90, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, align: 8, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 9, lowerBound: 0)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !37, line: 92, type: !230, isLocal: true, isDefinition: true)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, align: 8, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 10, lowerBound: 0)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !37, line: 94, type: !210, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !37, line: 96, type: !122, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !37, line: 98, type: !38, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !37, line: 100, type: !225, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !37, line: 102, type: !56, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !37, line: 104, type: !63, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !37, line: 106, type: !63, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !37, line: 108, type: !38, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !37, line: 110, type: !56, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !37, line: 112, type: !210, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !37, line: 114, type: !38, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "type internal/reflectlite.TypeError", scope: !88, file: !88, line: 1, type: !257, isLocal: false, isDefinition: true, align: 64)
!257 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !258)
!258 = !{!91, !99, !93, !176, !177, !259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !260, size: 176, align: 8, offset: 256)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 176, align: 8, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 22, lowerBound: 0)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "type struct{Method string}", scope: !88, file: !88, line: 1, type: !104, isLocal: false, isDefinition: true, align: 64)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(name: "type *struct{Method string}", scope: !88, file: !88, line: 1, type: !97, isLocal: false, isDefinition: true, align: 64)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !37, line: 329, type: !81, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !37, line: 331, type: !81, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !37, line: 338, type: !210, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !37, line: 338, type: !14, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !37, line: 340, type: !63, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !37, line: 344, type: !14, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !37, line: 346, type: !137, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !37, line: 348, type: !14, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !37, line: 348, type: !14, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !37, line: 350, type: !38, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !37, line: 350, type: !14, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !37, line: 354, type: !225, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !37, line: 359, type: !14, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !37, line: 359, type: !14, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !37, line: 361, type: !14, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !37, line: 365, type: !14, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !37, line: 368, type: !137, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !37, line: 372, type: !303, isLocal: true, isDefinition: true)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, align: 8, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 12, lowerBound: 0)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !37, line: 356, type: !74, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !310, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, align: 8, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 33, lowerBound: 0)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1212, type: !315, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, align: 8, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 30, lowerBound: 0)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1212, type: !320, isLocal: true, isDefinition: true)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, align: 8, elements: !33)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1791, type: !324, isLocal: true, isDefinition: true)
!323 = !DIFile(filename: "value.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, align: 8, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 17, lowerBound: 0)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1791, type: !122, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1793, type: !324, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1793, type: !38, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1793, type: !210, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "internal/task.activeTasks", linkageName: "internal/task.activeTasks", scope: !337, file: !337, line: 45, type: !338, isLocal: false, isDefinition: true, align: 64)
!337 = !DIFile(filename: "task_threads.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64, dwarfAddressSpace: 0)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !340)
!340 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !341)
!341 = !{!342, !343, !344, !346, !350, !376, !377, !379, !380}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !338, size: 64, align: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "Ptr", baseType: !94, size: 64, align: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "Data", baseType: !345, size: 64, align: 64, offset: 128)
!345 = !DIBasicType(name: "uint64", size: 64, encoding: DW_ATE_unsigned)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "gcData", baseType: !347, align: 8, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.gcData", baseType: !348)
!348 = !DICompositeType(tag: DW_TAG_structure_type, align: 8, elements: !349)
!349 = !{}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !351, size: 384, align: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !352)
!352 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !353)
!353 = !{!354, !355, !357, !358, !359, !360}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "id", baseType: !53, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "thread", baseType: !356, size: 64, align: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.threadID", baseType: !94)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "stackTop", baseType: !53, size: 64, align: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "stackBottom", baseType: !53, size: 64, align: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !338, size: 64, align: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pauseSem", baseType: !361, size: 32, align: 32, offset: 320)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Semaphore", baseType: !362)
!362 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "futex", baseType: !365, size: 32, align: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Futex", baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/futex.Futex", baseType: !367)
!367 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "Uint32", baseType: !370, size: 32, align: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Uint32", baseType: !371)
!371 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !372)
!372 = !{!373, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !374, align: 8)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.noCopy", baseType: !348)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !108, size: 32, align: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "FipsIndicator", baseType: !4, size: 8, align: 8, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "FipsOnlyBypass", baseType: !378, size: 8, align: 8, offset: 584)
!378 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "RunState", baseType: !4, size: 8, align: 8, offset: 592)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "DeferFrame", baseType: !94, size: 64, align: 64, offset: 640)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(name: "internal/task.mainTask", linkageName: "internal/task.mainTask", scope: !337, file: !337, line: 42, type: !339, isLocal: false, isDefinition: true, align: 64)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !385, line: 1, type: !315, isLocal: true, isDefinition: true)
!385 = !DIFile(filename: "mutex-preemptive.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "internal/task.numCPU", linkageName: "internal/task.numCPU", scope: !337, file: !337, line: 40, type: !388, isLocal: false, isDefinition: true, align: 32)
!388 = !DIBasicType(name: "int32", size: 32, encoding: DW_ATE_signed)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "internal/task.activeTaskLock", linkageName: "internal/task.activeTaskLock", scope: !337, file: !337, line: 46, type: !391, isLocal: false, isDefinition: true, align: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.PMutex", baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Mutex", baseType: !362)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !337, line: 64, type: !395, isLocal: true, isDefinition: true)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, align: 8, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 20, lowerBound: 0)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !337, line: 77, type: !303, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "internal/task.otherGoroutines", linkageName: "internal/task.otherGoroutines", scope: !337, file: !337, line: 99, type: !108, isLocal: false, isDefinition: true, align: 32)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !337, line: 127, type: !225, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !337, line: 146, type: !324, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "internal/task.scanWaitGroup", linkageName: "internal/task.scanWaitGroup", scope: !337, file: !337, line: 151, type: !408, isLocal: false, isDefinition: true, align: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.waitGroup", baseType: !409)
!409 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !365, size: 32, align: 32)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(name: "internal/task.gcState", linkageName: "internal/task.gcState", scope: !337, file: !337, line: 180, type: !365, isLocal: false, isDefinition: true, align: 32)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "runtime.xorshift32State", linkageName: "runtime.xorshift32State", scope: !416, file: !416, line: 32, type: !108, isLocal: false, isDefinition: true, align: 32)
!416 = !DIFile(filename: "algorithm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(name: "runtime.xorshift64State", linkageName: "runtime.xorshift64State", scope: !416, file: !416, line: 52, type: !345, isLocal: false, isDefinition: true, align: 64)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(name: "runtime.heapSize", linkageName: "runtime.heapSize", scope: !421, file: !421, line: 298, type: !53, isLocal: false, isDefinition: true, align: 64)
!421 = !DIFile(filename: "runtime_unix.go", directory: "/usr/local/lib/tinygo/src/runtime")
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "type string", scope: !88, file: !88, line: 1, type: !89, isLocal: false, isDefinition: true, align: 64)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "type *string", scope: !88, file: !88, line: 1, type: !97, isLocal: false, isDefinition: true, align: 64)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "runtime.zeroSizedAlloc", linkageName: "runtime.zeroSizedAlloc", scope: !428, file: !428, line: 30, type: !4, isLocal: false, isDefinition: true, align: 8)
!428 = !DIFile(filename: "gc_boehm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "runtime.gcLock", linkageName: "runtime.gcLock", scope: !428, file: !428, line: 32, type: !391, isLocal: false, isDefinition: true, align: 32)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !428, line: 93, type: !324, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !435, line: 78, type: !81, isLocal: true, isDefinition: true)
!435 = !DIFile(filename: "panic.go", directory: "/usr/local/lib/tinygo/src/runtime")
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !435, line: 99, type: !438, isLocal: true, isDefinition: true)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, align: 8, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 24, lowerBound: 0)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !435, line: 101, type: !137, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !435, line: 103, type: !445, isLocal: true, isDefinition: true)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, align: 8, elements: !261)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !435, line: 184, type: !448, isLocal: true, isDefinition: true)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, align: 8, elements: !180)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !435, line: 194, type: !451, isLocal: true, isDefinition: true)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, align: 8, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 18, lowerBound: 0)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !435, line: 199, type: !451, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !435, line: 212, type: !458, isLocal: true, isDefinition: true)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, align: 8, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 37, lowerBound: 0)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !435, line: 222, type: !122, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !465, line: 117, type: !56, isLocal: true, isDefinition: true)
!465 = !DIFile(filename: "print.go", directory: "/usr/local/lib/tinygo/src/runtime")
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !465, line: 120, type: !38, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !465, line: 123, type: !38, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !465, line: 197, type: !56, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !465, line: 200, type: !38, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !465, line: 203, type: !38, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !465, line: 272, type: !137, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !465, line: 279, type: !137, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !465, line: 373, type: !56, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !465, line: 391, type: !38, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !465, line: 393, type: !63, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "runtime.stackTop", linkageName: "runtime.stackTop", scope: !421, file: !421, line: 75, type: !53, isLocal: false, isDefinition: true, align: 64)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(name: "runtime.main_argc", linkageName: "runtime.main_argc", scope: !421, file: !421, line: 105, type: !388, isLocal: false, isDefinition: true, align: 32)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(name: "runtime.main_argv", linkageName: "runtime.main_argv", scope: !421, file: !421, line: 106, type: !492, isLocal: false, isDefinition: true, align: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64, dwarfAddressSpace: 0)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !421, line: 155, type: !438, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !421, line: 160, type: !320, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !421, line: 163, type: !210, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !421, line: 165, type: !210, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !421, line: 167, type: !81, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !421, line: 158, type: !395, isLocal: true, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "runtime.signalFutex", linkageName: "runtime.signalFutex", scope: !421, file: !421, line: 354, type: !366, isLocal: false, isDefinition: true, align: 32)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "runtime.heapMaxSize", linkageName: "runtime.heapMaxSize", scope: !421, file: !421, line: 299, type: !53, isLocal: false, isDefinition: true, align: 64)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "runtime.heapStart", linkageName: "runtime.heapStart", scope: !421, file: !421, line: 301, type: !53, isLocal: false, isDefinition: true, align: 64)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(name: "runtime.heapEnd", linkageName: "runtime.heapEnd", scope: !421, file: !421, line: 301, type: !53, isLocal: false, isDefinition: true, align: 64)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !421, line: 317, type: !515, isLocal: true, isDefinition: true)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, align: 8, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 27, lowerBound: 0)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "runtime.receivedSignals", linkageName: "runtime.receivedSignals", scope: !421, file: !421, line: 358, type: !370, isLocal: false, isDefinition: true, align: 32)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "runtime.printLock", linkageName: "runtime.printLock", scope: !522, file: !522, line: 136, type: !392, isLocal: false, isDefinition: true, align: 32)
!522 = !DIFile(filename: "scheduler_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!523 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!524 = !DIFile(filename: "<unknown>", directory: "")
!525 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !526)
!526 = !{!527, !530, !579, !587, !602, !612, !618, !627, !653, !660, !666, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !704, !706, !711, !713, !716, !718, !720, !722, !724, !726, !728, !730, !732, !734, !736, !738, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !762, !424, !422, !768}
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(name: "internal/cpu.CacheLineSize", linkageName: "internal/cpu.CacheLineSize", scope: !529, file: !529, line: 17, type: !53, isLocal: false, isDefinition: true, align: 64)
!529 = !DIFile(filename: "cpu.go", directory: "/usr/local/go/src/internal/cpu")
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !529, file: !529, line: 23, type: !532, isLocal: false, isDefinition: true, align: 8)
!532 = !DICompositeType(tag: DW_TAG_structure_type, size: 1304, align: 8, elements: !533)
!533 = !{!534, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !535, size: 512, align: 8)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.CacheLinePad", baseType: !536)
!536 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 8, elements: !537)
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !539, size: 512, align: 8)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 512, align: 8, elements: !541)
!540 = !DIBasicType(name: "byte", size: 8, encoding: DW_ATE_unsigned)
!541 = !{!542}
!542 = !DISubrange(count: 64, lowerBound: 0)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !378, size: 8, align: 8, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "HasADX", baseType: !378, size: 8, align: 8, offset: 520)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX", baseType: !378, size: 8, align: 8, offset: 528)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVXVNNI", baseType: !378, size: 8, align: 8, offset: 536)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX2", baseType: !378, size: 8, align: 8, offset: 544)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512", baseType: !378, size: 8, align: 8, offset: 552)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512F", baseType: !378, size: 8, align: 8, offset: 560)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512CD", baseType: !378, size: 8, align: 8, offset: 568)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BW", baseType: !378, size: 8, align: 8, offset: 576)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512DQ", baseType: !378, size: 8, align: 8, offset: 584)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VL", baseType: !378, size: 8, align: 8, offset: 592)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512GFNI", baseType: !378, size: 8, align: 8, offset: 600)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VAES", baseType: !378, size: 8, align: 8, offset: 608)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VNNI", baseType: !378, size: 8, align: 8, offset: 616)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI", baseType: !378, size: 8, align: 8, offset: 624)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI2", baseType: !378, size: 8, align: 8, offset: 632)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BITALG", baseType: !378, size: 8, align: 8, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPOPCNTDQ", baseType: !378, size: 8, align: 8, offset: 648)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPCLMULQDQ", baseType: !378, size: 8, align: 8, offset: 656)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI1", baseType: !378, size: 8, align: 8, offset: 664)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI2", baseType: !378, size: 8, align: 8, offset: 672)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "HasERMS", baseType: !378, size: 8, align: 8, offset: 680)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "HasFSRM", baseType: !378, size: 8, align: 8, offset: 688)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "HasFMA", baseType: !378, size: 8, align: 8, offset: 696)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "HasGFNI", baseType: !378, size: 8, align: 8, offset: 704)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "HasOSXSAVE", baseType: !378, size: 8, align: 8, offset: 712)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "HasPCLMULQDQ", baseType: !378, size: 8, align: 8, offset: 720)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "HasPOPCNT", baseType: !378, size: 8, align: 8, offset: 728)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "HasRDTSCP", baseType: !378, size: 8, align: 8, offset: 736)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA", baseType: !378, size: 8, align: 8, offset: 744)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE3", baseType: !378, size: 8, align: 8, offset: 752)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSSE3", baseType: !378, size: 8, align: 8, offset: 760)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE41", baseType: !378, size: 8, align: 8, offset: 768)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE42", baseType: !378, size: 8, align: 8, offset: 776)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "HasVAES", baseType: !378, size: 8, align: 8, offset: 784)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !535, size: 512, align: 8, offset: 792)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(name: "internal/cpu.ARM", linkageName: "internal/cpu.ARM", scope: !529, file: !529, line: 65, type: !581, isLocal: false, isDefinition: true, align: 8)
!581 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !582)
!582 = !{!534, !583, !584, !585, !586}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "HasVFPv4", baseType: !378, size: 8, align: 8, offset: 512)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "HasIDIVA", baseType: !378, size: 8, align: 8, offset: 520)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "HasV7Atomics", baseType: !378, size: 8, align: 8, offset: 528)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !535, size: 512, align: 8, offset: 536)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(name: "internal/cpu.ARM64", linkageName: "internal/cpu.ARM64", scope: !529, file: !529, line: 75, type: !589, isLocal: false, isDefinition: true, align: 8)
!589 = !DICompositeType(tag: DW_TAG_structure_type, size: 1112, align: 8, elements: !590)
!590 = !{!534, !543, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "HasPMULL", baseType: !378, size: 8, align: 8, offset: 520)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !378, size: 8, align: 8, offset: 528)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA2", baseType: !378, size: 8, align: 8, offset: 536)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !378, size: 8, align: 8, offset: 544)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !378, size: 8, align: 8, offset: 552)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !378, size: 8, align: 8, offset: 560)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "HasATOMICS", baseType: !378, size: 8, align: 8, offset: 568)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "HasCPUID", baseType: !378, size: 8, align: 8, offset: 576)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "HasDIT", baseType: !378, size: 8, align: 8, offset: 584)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "IsNeoverse", baseType: !378, size: 8, align: 8, offset: 592)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !535, size: 512, align: 8, offset: 600)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "internal/cpu.Loong64", linkageName: "internal/cpu.Loong64", scope: !529, file: !529, line: 93, type: !604, isLocal: false, isDefinition: true, align: 8)
!604 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !605)
!605 = !{!534, !606, !607, !608, !609, !610, !611}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "HasLSX", baseType: !378, size: 8, align: 8, offset: 512)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "HasLASX", baseType: !378, size: 8, align: 8, offset: 520)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !378, size: 8, align: 8, offset: 528)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAMCAS", baseType: !378, size: 8, align: 8, offset: 536)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAM_BH", baseType: !378, size: 8, align: 8, offset: 544)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !535, size: 512, align: 8, offset: 552)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(name: "internal/cpu.MIPS64X", linkageName: "internal/cpu.MIPS64X", scope: !529, file: !529, line: 103, type: !614, isLocal: false, isDefinition: true, align: 8)
!614 = !DICompositeType(tag: DW_TAG_structure_type, size: 1032, align: 8, elements: !615)
!615 = !{!534, !616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !378, size: 8, align: 8, offset: 512)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !535, size: 512, align: 8, offset: 520)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(name: "internal/cpu.PPC64", linkageName: "internal/cpu.PPC64", scope: !529, file: !529, line: 114, type: !620, isLocal: false, isDefinition: true, align: 8)
!620 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !621)
!621 = !{!534, !622, !623, !624, !625, !626, !611}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "HasDARN", baseType: !378, size: 8, align: 8, offset: 512)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "HasSCV", baseType: !378, size: 8, align: 8, offset: 520)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER8", baseType: !378, size: 8, align: 8, offset: 528)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER9", baseType: !378, size: 8, align: 8, offset: 536)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER10", baseType: !378, size: 8, align: 8, offset: 544)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(name: "internal/cpu.S390X", linkageName: "internal/cpu.S390X", scope: !529, file: !529, line: 124, type: !629, isLocal: false, isDefinition: true, align: 8)
!629 = !DICompositeType(tag: DW_TAG_structure_type, size: 1192, align: 8, elements: !630)
!630 = !{!534, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "HasZARCH", baseType: !378, size: 8, align: 8, offset: 512)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "HasSTFLE", baseType: !378, size: 8, align: 8, offset: 520)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "HasLDISP", baseType: !378, size: 8, align: 8, offset: 528)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "HasEIMM", baseType: !378, size: 8, align: 8, offset: 536)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "HasDFP", baseType: !378, size: 8, align: 8, offset: 544)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "HasETF3EH", baseType: !378, size: 8, align: 8, offset: 552)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !378, size: 8, align: 8, offset: 560)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !378, size: 8, align: 8, offset: 568)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCBC", baseType: !378, size: 8, align: 8, offset: 576)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCTR", baseType: !378, size: 8, align: 8, offset: 584)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESGCM", baseType: !378, size: 8, align: 8, offset: 592)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "HasGHASH", baseType: !378, size: 8, align: 8, offset: 600)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !378, size: 8, align: 8, offset: 608)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA256", baseType: !378, size: 8, align: 8, offset: 616)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !378, size: 8, align: 8, offset: 624)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !378, size: 8, align: 8, offset: 632)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "HasVX", baseType: !378, size: 8, align: 8, offset: 640)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "HasVXE", baseType: !378, size: 8, align: 8, offset: 648)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "HasKDSA", baseType: !378, size: 8, align: 8, offset: 656)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "HasECDSA", baseType: !378, size: 8, align: 8, offset: 664)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "HasEDDSA", baseType: !378, size: 8, align: 8, offset: 672)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !535, size: 512, align: 8, offset: 680)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(name: "internal/cpu.RISCV64", linkageName: "internal/cpu.RISCV64", scope: !529, file: !529, line: 154, type: !655, isLocal: false, isDefinition: true, align: 8)
!655 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !656)
!656 = !{!534, !657, !658, !659, !586}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "HasFastMisaligned", baseType: !378, size: 8, align: 8, offset: 512)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "HasV", baseType: !378, size: 8, align: 8, offset: 520)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "HasZbb", baseType: !378, size: 8, align: 8, offset: 528)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(name: "internal/cpu.doDerived", linkageName: "internal/cpu.doDerived", scope: !529, file: !529, line: 174, type: !662, isLocal: false, isDefinition: true, align: 64)
!662 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !663)
!663 = !{!664, !665}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "context", baseType: !94, size: 64, align: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "fn", baseType: !94, size: 64, align: 64, offset: 64)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(name: "internal/cpu.options", linkageName: "internal/cpu.options", scope: !529, file: !529, line: 192, type: !668, isLocal: false, isDefinition: true, align: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]internal/cpu.option", size: 192, align: 64, elements: !669)
!669 = !{!670, !52, !680}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !671, size: 64, align: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64, align: 64, dwarfAddressSpace: 0)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.option", baseType: !673)
!673 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !674)
!674 = !{!675, !676, !678, !679}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "Name", baseType: !48, size: 128, align: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "Feature", baseType: !677, size: 64, align: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64, dwarfAddressSpace: 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "Specified", baseType: !378, size: 8, align: 8, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "Enable", baseType: !378, size: 8, align: 8, offset: 200)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "cap", baseType: !53, size: 64, align: 64, offset: 128)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !529, line: 218, type: !38, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !529, line: 223, type: !310, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !529, line: 223, type: !137, isLocal: true, isDefinition: true)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !529, line: 230, type: !137, isLocal: true, isDefinition: true)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !529, line: 239, type: !56, isLocal: true, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !529, line: 255, type: !315, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !529, line: 255, type: !137, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !529, line: 232, type: !56, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !529, line: 235, type: !320, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !529, line: 235, type: !701, isLocal: true, isDefinition: true)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, align: 8, elements: !702)
!702 = !{!703}
!703 = !DISubrange(count: 32, lowerBound: 0)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !529, line: 235, type: !137, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !529, line: 264, type: !708, isLocal: true, isDefinition: true)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, align: 8, elements: !709)
!709 = !{!710}
!710 = !DISubrange(count: 25, lowerBound: 0)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !529, line: 264, type: !448, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(name: "internal/cpu.maxExtendedFunctionInformation", linkageName: "internal/cpu.maxExtendedFunctionInformation", scope: !715, file: !715, line: 69, type: !108, isLocal: false, isDefinition: true, align: 32)
!715 = !DIFile(filename: "cpu_x86.go", directory: "/usr/local/go/src/internal/cpu")
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !715, line: 73, type: !56, isLocal: true, isDefinition: true)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !715, line: 74, type: !56, isLocal: true, isDefinition: true)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !715, line: 75, type: !38, isLocal: true, isDefinition: true)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !715, line: 76, type: !38, isLocal: true, isDefinition: true)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !715, line: 77, type: !225, isLocal: true, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !715, line: 78, type: !210, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !715, line: 79, type: !56, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !715, line: 80, type: !230, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !715, line: 87, type: !210, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !715, line: 88, type: !38, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !715, line: 89, type: !63, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !715, line: 90, type: !63, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !715, line: 91, type: !63, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !715, line: 97, type: !56, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !715, line: 98, type: !38, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !715, line: 99, type: !38, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !715, line: 100, type: !38, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !715, line: 101, type: !56, isLocal: true, isDefinition: true)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !715, line: 107, type: !81, isLocal: true, isDefinition: true)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !715, line: 108, type: !74, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !715, line: 109, type: !74, isLocal: true, isDefinition: true)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(scope: null, file: !715, line: 110, type: !74, isLocal: true, isDefinition: true)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !715, line: 111, type: !74, isLocal: true, isDefinition: true)
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(scope: null, file: !764, line: 1, type: !765, isLocal: true, isDefinition: true)
!764 = !DIFile(filename: "datacache_x86.go", directory: "/usr/local/go/src/internal/cpu")
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, align: 8, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 13, lowerBound: 0)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !764, line: 1, type: !770, isLocal: true, isDefinition: true)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 664, align: 8, elements: !771)
!771 = !{!772}
!772 = !DISubrange(count: 83, lowerBound: 0)
!773 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !774)
!774 = !{!775, !779, !781, !789}
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(name: "math/bits.deBruijn32tab", linkageName: "math/bits.deBruijn32tab", scope: !777, file: !777, line: 44, type: !778, isLocal: false, isDefinition: true, align: 8)
!777 = !DIFile(filename: "bits.go", directory: "/usr/local/go/src/math/bits")
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 256, align: 8, elements: !702)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(name: "math/bits.deBruijn64tab", linkageName: "math/bits.deBruijn64tab", scope: !777, file: !777, line: 51, type: !539, isLocal: false, isDefinition: true, align: 8)
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(name: "math/bits.overflowError", linkageName: "runtime.overflowError", scope: !783, file: !783, line: 12, type: !784, isLocal: false, isDefinition: true, align: 64)
!783 = !DIFile(filename: "bits_errors.go", directory: "/usr/local/go/src/math/bits")
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._interface", baseType: !786)
!786 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !787)
!787 = !{!115, !788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "value", baseType: !94, size: 64, align: 64, offset: 64)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(name: "math/bits.divideError", linkageName: "runtime.divideError", scope: !783, file: !783, line: 15, type: !784, isLocal: false, isDefinition: true, align: 64)
!791 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !792)
!792 = !{!793, !795, !798, !803, !806, !809, !813, !815, !817, !819, !821, !823, !825, !827, !829, !831, !833, !835, !837, !839, !841, !843, !846, !848, !850, !852, !854, !856, !858, !860, !862, !864, !866, !868, !870, !872, !874, !876, !880, !882, !884, !887, !889, !891, !893, !897, !900, !905, !908, !910, !914, !916, !919, !921, !925, !928, !930, !932, !934, !936, !938, !940, !942, !944, !946, !948, !950, !952, !954, !956, !0, !7, !958, !960, !962, !964, !9, !966, !968, !970, !972, !974}
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !529, file: !529, line: 23, type: !532, isLocal: false, isDefinition: true, align: 8)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(name: "math.useFMA", linkageName: "math.useFMA", scope: !797, file: !797, line: 11, type: !378, isLocal: false, isDefinition: true, align: 8)
!797 = !DIFile(filename: "exp_amd64.go", directory: "/usr/local/go/src/math")
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(name: "math._gamP", linkageName: "math._gamP", scope: !800, file: !800, line: 66, type: !801, isLocal: false, isDefinition: true, align: 64)
!800 = !DIFile(filename: "gamma.go", directory: "/usr/local/go/src/math")
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 448, align: 64, elements: !82)
!802 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(name: "math._gamQ", linkageName: "math._gamQ", scope: !800, file: !800, line: 75, type: !805, isLocal: false, isDefinition: true, align: 64)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 512, align: 64, elements: !75)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(name: "math._gamS", linkageName: "math._gamS", scope: !800, file: !800, line: 85, type: !808, isLocal: false, isDefinition: true, align: 64)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 320, align: 64, elements: !64)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(name: "math.p0R8", linkageName: "math.p0R8", scope: !811, file: !811, line: 240, type: !812, isLocal: false, isDefinition: true, align: 64)
!811 = !DIFile(filename: "j0.go", directory: "/usr/local/go/src/math")
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 384, align: 64, elements: !211)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(name: "math.p0S8", linkageName: "math.p0S8", scope: !811, file: !811, line: 248, type: !808, isLocal: false, isDefinition: true, align: 64)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(name: "math.p0R5", linkageName: "math.p0R5", scope: !811, file: !811, line: 257, type: !812, isLocal: false, isDefinition: true, align: 64)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(name: "math.p0S5", linkageName: "math.p0S5", scope: !811, file: !811, line: 265, type: !808, isLocal: false, isDefinition: true, align: 64)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(name: "math.p0R3", linkageName: "math.p0R3", scope: !811, file: !811, line: 274, type: !812, isLocal: false, isDefinition: true, align: 64)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(name: "math.p0S3", linkageName: "math.p0S3", scope: !811, file: !811, line: 282, type: !808, isLocal: false, isDefinition: true, align: 64)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(name: "math.p0R2", linkageName: "math.p0R2", scope: !811, file: !811, line: 291, type: !812, isLocal: false, isDefinition: true, align: 64)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(name: "math.p0S2", linkageName: "math.p0S2", scope: !811, file: !811, line: 299, type: !808, isLocal: false, isDefinition: true, align: 64)
!827 = !DIGlobalVariableExpression(var: !828, expr: !DIExpression())
!828 = distinct !DIGlobalVariable(name: "math.q0R8", linkageName: "math.q0R8", scope: !811, file: !811, line: 339, type: !812, isLocal: false, isDefinition: true, align: 64)
!829 = !DIGlobalVariableExpression(var: !830, expr: !DIExpression())
!830 = distinct !DIGlobalVariable(name: "math.q0S8", linkageName: "math.q0S8", scope: !811, file: !811, line: 347, type: !812, isLocal: false, isDefinition: true, align: 64)
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(name: "math.q0R5", linkageName: "math.q0R5", scope: !811, file: !811, line: 357, type: !812, isLocal: false, isDefinition: true, align: 64)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(name: "math.q0S5", linkageName: "math.q0S5", scope: !811, file: !811, line: 365, type: !812, isLocal: false, isDefinition: true, align: 64)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(name: "math.q0R3", linkageName: "math.q0R3", scope: !811, file: !811, line: 375, type: !812, isLocal: false, isDefinition: true, align: 64)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(name: "math.q0S3", linkageName: "math.q0S3", scope: !811, file: !811, line: 383, type: !812, isLocal: false, isDefinition: true, align: 64)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(name: "math.q0R2", linkageName: "math.q0R2", scope: !811, file: !811, line: 393, type: !812, isLocal: false, isDefinition: true, align: 64)
!841 = !DIGlobalVariableExpression(var: !842, expr: !DIExpression())
!842 = distinct !DIGlobalVariable(name: "math.q0S2", linkageName: "math.q0S2", scope: !811, file: !811, line: 401, type: !812, isLocal: false, isDefinition: true, align: 64)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(name: "math.p1R8", linkageName: "math.p1R8", scope: !845, file: !845, line: 235, type: !812, isLocal: false, isDefinition: true, align: 64)
!845 = !DIFile(filename: "j1.go", directory: "/usr/local/go/src/math")
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(name: "math.p1S8", linkageName: "math.p1S8", scope: !845, file: !845, line: 243, type: !808, isLocal: false, isDefinition: true, align: 64)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(name: "math.p1R5", linkageName: "math.p1R5", scope: !845, file: !845, line: 252, type: !812, isLocal: false, isDefinition: true, align: 64)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(name: "math.p1S5", linkageName: "math.p1S5", scope: !845, file: !845, line: 260, type: !808, isLocal: false, isDefinition: true, align: 64)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(name: "math.p1R3", linkageName: "math.p1R3", scope: !845, file: !845, line: 269, type: !812, isLocal: false, isDefinition: true, align: 64)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(name: "math.p1S3", linkageName: "math.p1S3", scope: !845, file: !845, line: 277, type: !808, isLocal: false, isDefinition: true, align: 64)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(name: "math.p1R2", linkageName: "math.p1R2", scope: !845, file: !845, line: 286, type: !812, isLocal: false, isDefinition: true, align: 64)
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(name: "math.p1S2", linkageName: "math.p1S2", scope: !845, file: !845, line: 294, type: !808, isLocal: false, isDefinition: true, align: 64)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(name: "math.q1R8", linkageName: "math.q1R8", scope: !845, file: !845, line: 334, type: !812, isLocal: false, isDefinition: true, align: 64)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(name: "math.q1S8", linkageName: "math.q1S8", scope: !845, file: !845, line: 342, type: !812, isLocal: false, isDefinition: true, align: 64)
!864 = !DIGlobalVariableExpression(var: !865, expr: !DIExpression())
!865 = distinct !DIGlobalVariable(name: "math.q1R5", linkageName: "math.q1R5", scope: !845, file: !845, line: 352, type: !812, isLocal: false, isDefinition: true, align: 64)
!866 = !DIGlobalVariableExpression(var: !867, expr: !DIExpression())
!867 = distinct !DIGlobalVariable(name: "math.q1S5", linkageName: "math.q1S5", scope: !845, file: !845, line: 360, type: !812, isLocal: false, isDefinition: true, align: 64)
!868 = !DIGlobalVariableExpression(var: !869, expr: !DIExpression())
!869 = distinct !DIGlobalVariable(name: "math.q1R3", linkageName: "math.q1R3", scope: !845, file: !845, line: 370, type: !812, isLocal: false, isDefinition: true, align: 64)
!870 = !DIGlobalVariableExpression(var: !871, expr: !DIExpression())
!871 = distinct !DIGlobalVariable(name: "math.q1S3", linkageName: "math.q1S3", scope: !845, file: !845, line: 378, type: !812, isLocal: false, isDefinition: true, align: 64)
!872 = !DIGlobalVariableExpression(var: !873, expr: !DIExpression())
!873 = distinct !DIGlobalVariable(name: "math.q1R2", linkageName: "math.q1R2", scope: !845, file: !845, line: 388, type: !812, isLocal: false, isDefinition: true, align: 64)
!874 = !DIGlobalVariableExpression(var: !875, expr: !DIExpression())
!875 = distinct !DIGlobalVariable(name: "math.q1S2", linkageName: "math.q1S2", scope: !845, file: !845, line: 396, type: !812, isLocal: false, isDefinition: true, align: 64)
!876 = !DIGlobalVariableExpression(var: !877, expr: !DIExpression())
!877 = distinct !DIGlobalVariable(name: "math._lgamA", linkageName: "math._lgamA", scope: !878, file: !878, line: 91, type: !879, isLocal: false, isDefinition: true, align: 64)
!878 = !DIFile(filename: "lgamma.go", directory: "/usr/local/go/src/math")
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 768, align: 64, elements: !304)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(name: "math._lgamR", linkageName: "math._lgamR", scope: !878, file: !878, line: 105, type: !801, isLocal: false, isDefinition: true, align: 64)
!882 = !DIGlobalVariableExpression(var: !883, expr: !DIExpression())
!883 = distinct !DIGlobalVariable(name: "math._lgamS", linkageName: "math._lgamS", scope: !878, file: !878, line: 114, type: !801, isLocal: false, isDefinition: true, align: 64)
!884 = !DIGlobalVariableExpression(var: !885, expr: !DIExpression())
!885 = distinct !DIGlobalVariable(name: "math._lgamT", linkageName: "math._lgamT", scope: !878, file: !878, line: 123, type: !886, isLocal: false, isDefinition: true, align: 64)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 960, align: 64, elements: !5)
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(name: "math._lgamU", linkageName: "math._lgamU", scope: !878, file: !878, line: 140, type: !812, isLocal: false, isDefinition: true, align: 64)
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(name: "math._lgamV", linkageName: "math._lgamV", scope: !878, file: !878, line: 148, type: !812, isLocal: false, isDefinition: true, align: 64)
!891 = !DIGlobalVariableExpression(var: !892, expr: !DIExpression())
!892 = distinct !DIGlobalVariable(name: "math._lgamW", linkageName: "math._lgamW", scope: !878, file: !878, line: 156, type: !801, isLocal: false, isDefinition: true, align: 64)
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression())
!894 = distinct !DIGlobalVariable(name: "math.pow10tab", linkageName: "math.pow10tab", scope: !895, file: !895, line: 8, type: !896, isLocal: false, isDefinition: true, align: 64)
!895 = !DIFile(filename: "pow10.go", directory: "/usr/local/go/src/math")
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 2048, align: 64, elements: !702)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(name: "math.pow10postab32", linkageName: "math.pow10postab32", scope: !895, file: !895, line: 16, type: !899, isLocal: false, isDefinition: true, align: 64)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 640, align: 64, elements: !231)
!900 = !DIGlobalVariableExpression(var: !901, expr: !DIExpression())
!901 = distinct !DIGlobalVariable(name: "math.pow10negtab32", linkageName: "math.pow10negtab32", scope: !895, file: !895, line: 21, type: !902, isLocal: false, isDefinition: true, align: 64)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 704, align: 64, elements: !903)
!903 = !{!904}
!904 = !DISubrange(count: 11, lowerBound: 0)
!905 = !DIGlobalVariableExpression(var: !906, expr: !DIExpression())
!906 = distinct !DIGlobalVariable(name: "math._sin", linkageName: "math._sin", scope: !907, file: !907, line: 93, type: !812, isLocal: false, isDefinition: true, align: 64)
!907 = !DIFile(filename: "sin.go", directory: "/usr/local/go/src/math")
!908 = !DIGlobalVariableExpression(var: !909, expr: !DIExpression())
!909 = distinct !DIGlobalVariable(name: "math._cos", linkageName: "math._cos", scope: !907, file: !907, line: 103, type: !812, isLocal: false, isDefinition: true, align: 64)
!910 = !DIGlobalVariableExpression(var: !911, expr: !DIExpression())
!911 = distinct !DIGlobalVariable(name: "math._tanP", linkageName: "math._tanP", scope: !912, file: !912, line: 63, type: !913, isLocal: false, isDefinition: true, align: 64)
!912 = !DIFile(filename: "tan.go", directory: "/usr/local/go/src/math")
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 192, align: 64, elements: !57)
!914 = !DIGlobalVariableExpression(var: !915, expr: !DIExpression())
!915 = distinct !DIGlobalVariable(name: "math._tanQ", linkageName: "math._tanQ", scope: !912, file: !912, line: 68, type: !808, isLocal: false, isDefinition: true, align: 64)
!916 = !DIGlobalVariableExpression(var: !917, expr: !DIExpression())
!917 = distinct !DIGlobalVariable(name: "math.tanhP", linkageName: "math.tanhP", scope: !918, file: !918, line: 57, type: !913, isLocal: false, isDefinition: true, align: 64)
!918 = !DIFile(filename: "tanh.go", directory: "/usr/local/go/src/math")
!919 = !DIGlobalVariableExpression(var: !920, expr: !DIExpression())
!920 = distinct !DIGlobalVariable(name: "math.tanhQ", linkageName: "math.tanhQ", scope: !918, file: !918, line: 62, type: !913, isLocal: false, isDefinition: true, align: 64)
!921 = !DIGlobalVariableExpression(var: !922, expr: !DIExpression())
!922 = distinct !DIGlobalVariable(name: "math.mPi4", linkageName: "math.mPi4", scope: !923, file: !923, line: 81, type: !924, isLocal: false, isDefinition: true, align: 64)
!923 = !DIFile(filename: "trig_reduce.go", directory: "/usr/local/go/src/math")
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 1280, align: 64, elements: !396)
!925 = !DIGlobalVariableExpression(var: !926, expr: !DIExpression())
!926 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !3, isLocal: true, isDefinition: true)
!927 = !DIFile(filename: "exp2_noasm.go", directory: "/usr/local/go/src/math")
!928 = !DIGlobalVariableExpression(var: !929, expr: !DIExpression())
!929 = distinct !DIGlobalVariable(name: "type *string", scope: !88, file: !88, line: 1, type: !97, isLocal: false, isDefinition: true, align: 64)
!930 = !DIGlobalVariableExpression(var: !931, expr: !DIExpression())
!931 = distinct !DIGlobalVariable(name: "type string", scope: !88, file: !88, line: 1, type: !89, isLocal: false, isDefinition: true, align: 64)
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
!976 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !977)
!977 = !{!978, !984, !986, !988, !993, !995, !1000, !1005, !1010, !1015}
!978 = !DIGlobalVariableExpression(var: !979, expr: !DIExpression())
!979 = distinct !DIGlobalVariable(scope: null, file: !980, line: 1, type: !981, isLocal: true, isDefinition: true)
!980 = !DIFile(filename: "value.go", directory: "/usr/local/go/src/sync/atomic")
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, align: 8, elements: !982)
!982 = !{!983}
!983 = !DISubrange(count: 53, lowerBound: 0)
!984 = !DIGlobalVariableExpression(var: !985, expr: !DIExpression())
!985 = distinct !DIGlobalVariable(name: "type *string", scope: !88, file: !88, line: 1, type: !97, isLocal: false, isDefinition: true, align: 64)
!986 = !DIGlobalVariableExpression(var: !987, expr: !DIExpression())
!987 = distinct !DIGlobalVariable(name: "type string", scope: !88, file: !88, line: 1, type: !89, isLocal: false, isDefinition: true, align: 64)
!988 = !DIGlobalVariableExpression(var: !989, expr: !DIExpression())
!989 = distinct !DIGlobalVariable(scope: null, file: !980, line: 1, type: !990, isLocal: true, isDefinition: true)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, align: 8, elements: !991)
!991 = !{!992}
!992 = !DISubrange(count: 60, lowerBound: 0)
!993 = !DIGlobalVariableExpression(var: !994, expr: !DIExpression())
!994 = distinct !DIGlobalVariable(name: "sync/atomic.firstStoreInProgress", linkageName: "sync/atomic.firstStoreInProgress", scope: !980, file: !980, line: 42, type: !540, isLocal: false, isDefinition: true, align: 8)
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
!1020 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1021 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1022 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1023)
!1023 = !{!11, !17, !1024, !1026, !1028}
!1024 = !DIGlobalVariableExpression(var: !1025, expr: !DIExpression())
!1025 = distinct !DIGlobalVariable(scope: null, file: !13, line: 40, type: !56, isLocal: true, isDefinition: true)
!1026 = !DIGlobalVariableExpression(var: !1027, expr: !DIExpression())
!1027 = distinct !DIGlobalVariable(scope: null, file: !13, line: 46, type: !320, isLocal: true, isDefinition: true)
!1028 = !DIGlobalVariableExpression(var: !1029, expr: !DIExpression())
!1029 = distinct !DIGlobalVariable(scope: null, file: !13, line: 51, type: !320, isLocal: true, isDefinition: true)
!1030 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1031)
!1031 = !{!19, !25}
!1032 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1033)
!1033 = !{!35, !41, !54, !59, !61, !66, !1034, !1036, !68, !70, !72, !77, !79, !84, !1038, !1041, !1043, !1045, !95, !86, !1047, !1054, !1056, !1058, !1060, !1062, !1064, !1066, !1068, !1070, !1072, !1074, !1076, !1078, !1080, !1082, !1084, !1086, !1088, !1090, !1092, !1094, !1096, !1098, !1100, !1102, !1104, !1106, !1108, !1110, !1112, !1114, !1116, !1118, !1120, !1122, !1124, !1126, !1128, !1130, !117, !102, !1132, !1150, !1155, !1157, !1159, !1161, !1163, !1165, !1167, !1169, !1181, !1187, !1193, !119, !1196, !1198, !1200, !1202, !133, !125, !1211, !135, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !1217, !188, !1220, !1222, !1224, !1226, !1228, !1230, !182, !172, !1236, !1238, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !213, !215, !217, !219, !221, !223, !228, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !1240, !1245, !1250, !1255, !1260, !265, !263, !255, !1262, !1264, !1266, !1268, !1270, !1272, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !1274, !291, !293, !295, !297, !299, !301, !306, !308, !1276, !313, !318, !1278, !1280, !1282, !1284, !1286, !1291, !1293, !1295, !1297, !1299, !1301, !1303, !1305, !1307, !1309, !1311, !1313, !1318, !1320, !1322, !1327, !1329, !1331, !1333, !1335, !1337, !1339, !1341, !1343, !1345, !1347, !1349, !1351, !1356, !1358, !1360, !1362, !1364, !1366, !1368, !1370, !1372, !1377, !1379, !1384, !1389, !1391, !1393, !1395, !1400, !1402, !1404, !1406, !1408, !1413, !1415, !1417, !1419, !1421, !1423, !1428, !1430, !1435, !1437, !1439, !1441, !1443, !1445, !1447, !1449, !1451, !1453, !1455, !1457, !1462, !1464, !1469, !1471, !1473, !1475, !1477, !1480, !1482, !1484, !321, !327, !329, !331, !333, !1486, !1488, !1493, !1495, !1497, !1499, !1501, !1503, !1505, !1507, !1509, !1511, !1514}
!1034 = !DIGlobalVariableExpression(var: !1035, expr: !DIExpression())
!1035 = distinct !DIGlobalVariable(scope: null, file: !37, line: 396, type: !38, isLocal: true, isDefinition: true)
!1036 = !DIGlobalVariableExpression(var: !1037, expr: !DIExpression())
!1037 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeBits", linkageName: "internal/reflectlite.errTypeBits", scope: !37, file: !37, line: 396, type: !43, isLocal: false, isDefinition: true, align: 64)
!1038 = !DIGlobalVariableExpression(var: !1039, expr: !DIExpression())
!1039 = distinct !DIGlobalVariable(scope: null, file: !37, line: 400, type: !1040, isLocal: true, isDefinition: true)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, align: 8, elements: !903)
!1041 = !DIGlobalVariableExpression(var: !1042, expr: !DIExpression())
!1042 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByName", linkageName: "internal/reflectlite.errTypeFieldByName", scope: !37, file: !37, line: 400, type: !43, isLocal: false, isDefinition: true, align: 64)
!1043 = !DIGlobalVariableExpression(var: !1044, expr: !DIExpression())
!1044 = distinct !DIGlobalVariable(scope: null, file: !37, line: 401, type: !303, isLocal: true, isDefinition: true)
!1045 = !DIGlobalVariableExpression(var: !1046, expr: !DIExpression())
!1046 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByIndex", linkageName: "internal/reflectlite.errTypeFieldByIndex", scope: !37, file: !37, line: 401, type: !43, isLocal: false, isDefinition: true, align: 64)
!1047 = !DIGlobalVariableExpression(var: !1048, expr: !DIExpression())
!1048 = distinct !DIGlobalVariable(name: "internal/reflectlite.uint8Type", linkageName: "internal/reflectlite.uint8Type", scope: !323, file: !323, line: 956, type: !1049, isLocal: false, isDefinition: true, align: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64, align: 64, dwarfAddressSpace: 0)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.RawType", baseType: !1051)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, size: 8, align: 8, elements: !1052)
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "meta", baseType: !4, size: 8, align: 8)
!1054 = !DIGlobalVariableExpression(var: !1055, expr: !DIExpression())
!1055 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.visit", scope: !88, file: !88, line: 1, type: !97, isLocal: false, isDefinition: true, align: 64)
!1056 = !DIGlobalVariableExpression(var: !1057, expr: !DIExpression())
!1057 = distinct !DIGlobalVariable(name: "type *struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !88, file: !88, line: 1, type: !97, isLocal: false, isDefinition: true, align: 64)
!1058 = !DIGlobalVariableExpression(var: !1059, expr: !DIExpression())
!1059 = distinct !DIGlobalVariable(name: "type *unsafe.Pointer", scope: !88, file: !88, line: 1, type: !97, isLocal: false, isDefinition: true, align: 64)
!1060 = !DIGlobalVariableExpression(var: !1061, expr: !DIExpression())
!1061 = distinct !DIGlobalVariable(name: "type unsafe.Pointer", scope: !88, file: !88, line: 1, type: !89, isLocal: false, isDefinition: true, align: 64)
!1062 = !DIGlobalVariableExpression(var: !1063, expr: !DIExpression())
!1063 = distinct !DIGlobalVariable(name: "reflect/types.signature:Align:func:{}{basic:int}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1064 = !DIGlobalVariableExpression(var: !1065, expr: !DIExpression())
!1065 = distinct !DIGlobalVariable(name: "reflect/types.signature:AssignableTo:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1066 = !DIGlobalVariableExpression(var: !1067, expr: !DIExpression())
!1067 = distinct !DIGlobalVariable(name: "reflect/types.signature:Bits:func:{}{basic:int}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1068 = !DIGlobalVariableExpression(var: !1069, expr: !DIExpression())
!1069 = distinct !DIGlobalVariable(name: "reflect/types.signature:ChanDir:func:{}{named:internal/reflectlite.ChanDir}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1070 = !DIGlobalVariableExpression(var: !1071, expr: !DIExpression())
!1071 = distinct !DIGlobalVariable(name: "reflect/types.signature:Comparable:func:{}{basic:bool}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1072 = !DIGlobalVariableExpression(var: !1073, expr: !DIExpression())
!1073 = distinct !DIGlobalVariable(name: "reflect/types.signature:Elem:func:{}{named:internal/reflectlite.Type}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1074 = !DIGlobalVariableExpression(var: !1075, expr: !DIExpression())
!1075 = distinct !DIGlobalVariable(name: "reflect/types.signature:Field:func:{basic:int}{named:internal/reflectlite.StructField}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1076 = !DIGlobalVariableExpression(var: !1077, expr: !DIExpression())
!1077 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldAlign:func:{}{basic:int}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1078 = !DIGlobalVariableExpression(var: !1079, expr: !DIExpression())
!1079 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByIndex:func:{slice:basic:int}{named:internal/reflectlite.StructField}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1080 = !DIGlobalVariableExpression(var: !1081, expr: !DIExpression())
!1081 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByName:func:{basic:string}{named:internal/reflectlite.StructField,basic:bool}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1082 = !DIGlobalVariableExpression(var: !1083, expr: !DIExpression())
!1083 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.StructField,basic:bool}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1084 = !DIGlobalVariableExpression(var: !1085, expr: !DIExpression())
!1085 = distinct !DIGlobalVariable(name: "reflect/types.signature:Implements:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1086 = !DIGlobalVariableExpression(var: !1087, expr: !DIExpression())
!1087 = distinct !DIGlobalVariable(name: "reflect/types.signature:Key:func:{}{named:internal/reflectlite.Type}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1088 = !DIGlobalVariableExpression(var: !1089, expr: !DIExpression())
!1089 = distinct !DIGlobalVariable(name: "reflect/types.signature:Kind:func:{}{named:internal/reflectlite.Kind}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1090 = !DIGlobalVariableExpression(var: !1091, expr: !DIExpression())
!1091 = distinct !DIGlobalVariable(name: "reflect/types.signature:Len:func:{}{basic:int}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1092 = !DIGlobalVariableExpression(var: !1093, expr: !DIExpression())
!1093 = distinct !DIGlobalVariable(name: "reflect/types.signature:Name:func:{}{basic:string}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1094 = !DIGlobalVariableExpression(var: !1095, expr: !DIExpression())
!1095 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumField:func:{}{basic:int}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1096 = !DIGlobalVariableExpression(var: !1097, expr: !DIExpression())
!1097 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumMethod:func:{}{basic:int}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1098 = !DIGlobalVariableExpression(var: !1099, expr: !DIExpression())
!1099 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowComplex:func:{basic:complex128}{basic:bool}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1100 = !DIGlobalVariableExpression(var: !1101, expr: !DIExpression())
!1101 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowFloat:func:{basic:float64}{basic:bool}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1102 = !DIGlobalVariableExpression(var: !1103, expr: !DIExpression())
!1103 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowInt:func:{basic:int64}{basic:bool}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1104 = !DIGlobalVariableExpression(var: !1105, expr: !DIExpression())
!1105 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowUint:func:{basic:uint64}{basic:bool}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1106 = !DIGlobalVariableExpression(var: !1107, expr: !DIExpression())
!1107 = distinct !DIGlobalVariable(name: "reflect/types.signature:PkgPath:func:{}{basic:string}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1108 = !DIGlobalVariableExpression(var: !1109, expr: !DIExpression())
!1109 = distinct !DIGlobalVariable(name: "reflect/types.signature:Size:func:{}{basic:uintptr}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1110 = !DIGlobalVariableExpression(var: !1111, expr: !DIExpression())
!1111 = distinct !DIGlobalVariable(name: "reflect/types.signature:String:func:{}{basic:string}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1112 = !DIGlobalVariableExpression(var: !1113, expr: !DIExpression())
!1113 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.elem:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1114 = !DIGlobalVariableExpression(var: !1115, expr: !DIExpression())
!1115 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.gcLayout:func:{}{basic:unsafe.Pointer}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1116 = !DIGlobalVariableExpression(var: !1117, expr: !DIExpression())
!1117 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isBinary:func:{}{basic:bool}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1118 = !DIGlobalVariableExpression(var: !1119, expr: !DIExpression())
!1119 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isNamed:func:{}{basic:bool}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1120 = !DIGlobalVariableExpression(var: !1121, expr: !DIExpression())
!1121 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.key:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1122 = !DIGlobalVariableExpression(var: !1123, expr: !DIExpression())
!1123 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.name:func:{}{basic:string}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1124 = !DIGlobalVariableExpression(var: !1125, expr: !DIExpression())
!1125 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.ptrtag:func:{}{basic:uintptr}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1126 = !DIGlobalVariableExpression(var: !1127, expr: !DIExpression())
!1127 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawField:func:{basic:int}{named:internal/reflectlite.rawStructField}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1128 = !DIGlobalVariableExpression(var: !1129, expr: !DIExpression())
!1129 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawFieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.rawStructField,slice:basic:int,basic:bool}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1130 = !DIGlobalVariableExpression(var: !1131, expr: !DIExpression())
!1131 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.underlying:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1132 = !DIGlobalVariableExpression(var: !1133, expr: !DIExpression())
!1133 = distinct !DIGlobalVariable(name: "type internal/reflectlite.RawType", scope: !88, file: !88, line: 1, type: !1134, isLocal: false, isDefinition: true, align: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, size: 832, align: 64, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1142, !1148}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "methodSet", baseType: !94, size: 64, align: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !92, size: 8, align: 8, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !100, size: 16, align: 16, offset: 80)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !94, size: 64, align: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !94, size: 64, align: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !94, size: 64, align: 64, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1143, size: 320, align: 64, offset: 320)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !1144)
!1144 = !{!1145, !1146}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !53, size: 64, align: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1147, size: 256, align: 64, offset: 64)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 256, align: 64, elements: !39)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1149, size: 160, align: 8, offset: 640)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 160, align: 8, elements: !396)
!1150 = !DIGlobalVariableExpression(var: !1151, expr: !DIExpression())
!1151 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, align: 8, elements: !1153)
!1153 = !{!1154}
!1154 = !DISubrange(count: 28, lowerBound: 0)
!1155 = !DIGlobalVariableExpression(var: !1156, expr: !DIExpression())
!1156 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !3, isLocal: true, isDefinition: true)
!1157 = !DIGlobalVariableExpression(var: !1158, expr: !DIExpression())
!1158 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1159 = !DIGlobalVariableExpression(var: !1160, expr: !DIExpression())
!1160 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !765, isLocal: true, isDefinition: true)
!1161 = !DIGlobalVariableExpression(var: !1162, expr: !DIExpression())
!1162 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1163 = !DIGlobalVariableExpression(var: !1164, expr: !DIExpression())
!1164 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !1040, isLocal: true, isDefinition: true)
!1165 = !DIGlobalVariableExpression(var: !1166, expr: !DIExpression())
!1166 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1167 = !DIGlobalVariableExpression(var: !1168, expr: !DIExpression())
!1168 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !303, isLocal: true, isDefinition: true)
!1169 = !DIGlobalVariableExpression(var: !1170, expr: !DIExpression())
!1170 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.RawType", scope: !88, file: !88, line: 1, type: !1171, isLocal: false, isDefinition: true, align: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, size: 2496, align: 64, elements: !1172)
!1172 = !{!1136, !1137, !1138, !1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !94, size: 64, align: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1175, size: 2304, align: 64, offset: 192)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, size: 2304, align: 64, elements: !1176)
!1176 = !{!1145, !1177}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1178, size: 2240, align: 64, offset: 64)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2240, align: 64, elements: !1179)
!1179 = !{!1180}
!1180 = !DISubrange(count: 35, lowerBound: 0)
!1181 = !DIGlobalVariableExpression(var: !1182, expr: !DIExpression())
!1182 = distinct !DIGlobalVariable(name: "type struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !88, file: !88, line: 1, type: !1183, isLocal: false, isDefinition: true, align: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1184)
!1184 = !{!91, !99, !93, !106, !107, !109, !1185}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !1186, size: 384, align: 64, offset: 256)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 384, align: 64, elements: !57)
!1187 = !DIGlobalVariableExpression(var: !1188, expr: !DIExpression())
!1188 = distinct !DIGlobalVariable(name: "type internal/reflectlite.visit", scope: !88, file: !88, line: 1, type: !1189, isLocal: false, isDefinition: true, align: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1190)
!1190 = !{!91, !99, !93, !176, !177, !1191}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1192, size: 144, align: 8, offset: 256)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 144, align: 8, elements: !452)
!1193 = !DIGlobalVariableExpression(var: !1194, expr: !DIExpression())
!1194 = distinct !DIGlobalVariable(name: "internal/reflectlite.errSyntax", linkageName: "internal/reflectlite.errSyntax", scope: !121, file: !121, line: 12, type: !1195, isLocal: false, isDefinition: true, align: 8)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.badSyntax", baseType: !348)
!1196 = !DIGlobalVariableExpression(var: !1197, expr: !DIExpression())
!1197 = distinct !DIGlobalVariable(name: "reflect/types.signature:Error:func:{}{basic:string}", scope: !88, file: !88, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1198 = !DIGlobalVariableExpression(var: !1199, expr: !DIExpression())
!1199 = distinct !DIGlobalVariable(scope: null, file: !121, line: 1, type: !315, isLocal: true, isDefinition: true)
!1200 = !DIGlobalVariableExpression(var: !1201, expr: !DIExpression())
!1201 = distinct !DIGlobalVariable(scope: null, file: !121, line: 1, type: !63, isLocal: true, isDefinition: true)
!1202 = !DIGlobalVariableExpression(var: !1203, expr: !DIExpression())
!1203 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.badSyntax", scope: !88, file: !88, line: 1, type: !1204, isLocal: false, isDefinition: true, align: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !1205)
!1205 = !{!1136, !1137, !1138, !1173, !1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1207, size: 128, align: 64, offset: 192)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !1208)
!1208 = !{!1145, !1209}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1210, size: 64, align: 64, offset: 64)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, align: 64, elements: !15)
!1211 = !DIGlobalVariableExpression(var: !1212, expr: !DIExpression())
!1212 = distinct !DIGlobalVariable(name: "type internal/reflectlite.badSyntax", scope: !88, file: !88, line: 1, type: !1213, isLocal: false, isDefinition: true, align: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1214)
!1214 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1207, size: 128, align: 64, offset: 320)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !260, size: 176, align: 8, offset: 448)
!1217 = !DIGlobalVariableExpression(var: !1218, expr: !DIExpression())
!1218 = distinct !DIGlobalVariable(scope: null, file: !1219, line: 16, type: !81, isLocal: true, isDefinition: true)
!1219 = !DIFile(filename: "swapper.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1220 = !DIGlobalVariableExpression(var: !1221, expr: !DIExpression())
!1221 = distinct !DIGlobalVariable(name: "type *string", scope: !88, file: !88, line: 1, type: !97, isLocal: false, isDefinition: true, align: 64)
!1222 = !DIGlobalVariableExpression(var: !1223, expr: !DIExpression())
!1223 = distinct !DIGlobalVariable(name: "type string", scope: !88, file: !88, line: 1, type: !89, isLocal: false, isDefinition: true, align: 64)
!1224 = !DIGlobalVariableExpression(var: !1225, expr: !DIExpression())
!1225 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !708, isLocal: true, isDefinition: true)
!1226 = !DIGlobalVariableExpression(var: !1227, expr: !DIExpression())
!1227 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !210, isLocal: true, isDefinition: true)
!1228 = !DIGlobalVariableExpression(var: !1229, expr: !DIExpression())
!1229 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.Kind", scope: !88, file: !88, line: 1, type: !1204, isLocal: false, isDefinition: true, align: 64)
!1230 = !DIGlobalVariableExpression(var: !1231, expr: !DIExpression())
!1231 = distinct !DIGlobalVariable(name: "type internal/reflectlite.Kind", scope: !88, file: !88, line: 1, type: !1232, isLocal: false, isDefinition: true, align: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1233)
!1233 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1215, !1234}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1235, size: 136, align: 8, offset: 448)
!1235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 136, align: 8, elements: !325)
!1236 = !DIGlobalVariableExpression(var: !1237, expr: !DIExpression())
!1237 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.ValueError", scope: !88, file: !88, line: 1, type: !1204, isLocal: false, isDefinition: true, align: 64)
!1238 = !DIGlobalVariableExpression(var: !1239, expr: !DIExpression())
!1239 = distinct !DIGlobalVariable(scope: null, file: !1219, line: 1, type: !310, isLocal: true, isDefinition: true)
!1240 = !DIGlobalVariableExpression(var: !1241, expr: !DIExpression())
!1241 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !1242, isLocal: true, isDefinition: true)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, align: 8, elements: !1243)
!1243 = !{!1244}
!1244 = !DISubrange(count: 44, lowerBound: 0)
!1245 = !DIGlobalVariableExpression(var: !1246, expr: !DIExpression())
!1246 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !1247, isLocal: true, isDefinition: true)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, align: 8, elements: !1248)
!1248 = !{!1249}
!1249 = !DISubrange(count: 40, lowerBound: 0)
!1250 = !DIGlobalVariableExpression(var: !1251, expr: !DIExpression())
!1251 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !1252, isLocal: true, isDefinition: true)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, align: 8, elements: !1253)
!1253 = !{!1254}
!1254 = !DISubrange(count: 36, lowerBound: 0)
!1255 = !DIGlobalVariableExpression(var: !1256, expr: !DIExpression())
!1256 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !1257, isLocal: true, isDefinition: true)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, align: 8, elements: !1258)
!1258 = !{!1259}
!1259 = !DISubrange(count: 38, lowerBound: 0)
!1260 = !DIGlobalVariableExpression(var: !1261, expr: !DIExpression())
!1261 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !701, isLocal: true, isDefinition: true)
!1262 = !DIGlobalVariableExpression(var: !1263, expr: !DIExpression())
!1263 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.TypeError", scope: !88, file: !88, line: 1, type: !1204, isLocal: false, isDefinition: true, align: 64)
!1264 = !DIGlobalVariableExpression(var: !1265, expr: !DIExpression())
!1265 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1059, type: !3, isLocal: true, isDefinition: true)
!1266 = !DIGlobalVariableExpression(var: !1267, expr: !DIExpression())
!1267 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !981, isLocal: true, isDefinition: true)
!1268 = !DIGlobalVariableExpression(var: !1269, expr: !DIExpression())
!1269 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !324, isLocal: true, isDefinition: true)
!1270 = !DIGlobalVariableExpression(var: !1271, expr: !DIExpression())
!1271 = distinct !DIGlobalVariable(scope: null, file: !37, line: 965, type: !81, isLocal: true, isDefinition: true)
!1272 = !DIGlobalVariableExpression(var: !1273, expr: !DIExpression())
!1273 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !515, isLocal: true, isDefinition: true)
!1274 = !DIGlobalVariableExpression(var: !1275, expr: !DIExpression())
!1275 = distinct !DIGlobalVariable(scope: null, file: !37, line: 356, type: !74, isLocal: true, isDefinition: true)
!1276 = !DIGlobalVariableExpression(var: !1277, expr: !DIExpression())
!1277 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !701, isLocal: true, isDefinition: true)
!1278 = !DIGlobalVariableExpression(var: !1279, expr: !DIExpression())
!1279 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !701, isLocal: true, isDefinition: true)
!1280 = !DIGlobalVariableExpression(var: !1281, expr: !DIExpression())
!1281 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !701, isLocal: true, isDefinition: true)
!1282 = !DIGlobalVariableExpression(var: !1283, expr: !DIExpression())
!1283 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !310, isLocal: true, isDefinition: true)
!1284 = !DIGlobalVariableExpression(var: !1285, expr: !DIExpression())
!1285 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !315, isLocal: true, isDefinition: true)
!1286 = !DIGlobalVariableExpression(var: !1287, expr: !DIExpression())
!1287 = distinct !DIGlobalVariable(scope: null, file: !37, line: 1, type: !1288, isLocal: true, isDefinition: true)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, align: 8, elements: !1289)
!1289 = !{!1290}
!1290 = !DISubrange(count: 31, lowerBound: 0)
!1291 = !DIGlobalVariableExpression(var: !1292, expr: !DIExpression())
!1292 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1012, isLocal: true, isDefinition: true)
!1293 = !DIGlobalVariableExpression(var: !1294, expr: !DIExpression())
!1294 = distinct !DIGlobalVariable(scope: null, file: !323, line: 441, type: !38, isLocal: true, isDefinition: true)
!1295 = !DIGlobalVariableExpression(var: !1296, expr: !DIExpression())
!1296 = distinct !DIGlobalVariable(scope: null, file: !323, line: 650, type: !63, isLocal: true, isDefinition: true)
!1297 = !DIGlobalVariableExpression(var: !1298, expr: !DIExpression())
!1298 = distinct !DIGlobalVariable(scope: null, file: !323, line: 658, type: !63, isLocal: true, isDefinition: true)
!1299 = !DIGlobalVariableExpression(var: !1300, expr: !DIExpression())
!1300 = distinct !DIGlobalVariable(scope: null, file: !323, line: 667, type: !63, isLocal: true, isDefinition: true)
!1301 = !DIGlobalVariableExpression(var: !1302, expr: !DIExpression())
!1302 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !458, isLocal: true, isDefinition: true)
!1303 = !DIGlobalVariableExpression(var: !1304, expr: !DIExpression())
!1304 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1002, isLocal: true, isDefinition: true)
!1305 = !DIGlobalVariableExpression(var: !1306, expr: !DIExpression())
!1306 = distinct !DIGlobalVariable(scope: null, file: !323, line: 824, type: !56, isLocal: true, isDefinition: true)
!1307 = !DIGlobalVariableExpression(var: !1308, expr: !DIExpression())
!1308 = distinct !DIGlobalVariable(scope: null, file: !323, line: 843, type: !63, isLocal: true, isDefinition: true)
!1309 = !DIGlobalVariableExpression(var: !1310, expr: !DIExpression())
!1310 = distinct !DIGlobalVariable(scope: null, file: !323, line: 630, type: !81, isLocal: true, isDefinition: true)
!1311 = !DIGlobalVariableExpression(var: !1312, expr: !DIExpression())
!1312 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1425, type: !458, isLocal: true, isDefinition: true)
!1313 = !DIGlobalVariableExpression(var: !1314, expr: !DIExpression())
!1314 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1425, type: !1315, isLocal: true, isDefinition: true)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, align: 8, elements: !1316)
!1316 = !{!1317}
!1317 = !DISubrange(count: 29, lowerBound: 0)
!1318 = !DIGlobalVariableExpression(var: !1319, expr: !DIExpression())
!1319 = distinct !DIGlobalVariable(scope: null, file: !323, line: 875, type: !38, isLocal: true, isDefinition: true)
!1320 = !DIGlobalVariableExpression(var: !1321, expr: !DIExpression())
!1321 = distinct !DIGlobalVariable(scope: null, file: !323, line: 407, type: !1252, isLocal: true, isDefinition: true)
!1322 = !DIGlobalVariableExpression(var: !1323, expr: !DIExpression())
!1323 = distinct !DIGlobalVariable(scope: null, file: !323, line: 407, type: !1324, isLocal: true, isDefinition: true)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, align: 8, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 19, lowerBound: 0)
!1327 = !DIGlobalVariableExpression(var: !1328, expr: !DIExpression())
!1328 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !310, isLocal: true, isDefinition: true)
!1329 = !DIGlobalVariableExpression(var: !1330, expr: !DIExpression())
!1330 = distinct !DIGlobalVariable(scope: null, file: !323, line: 882, type: !63, isLocal: true, isDefinition: true)
!1331 = !DIGlobalVariableExpression(var: !1332, expr: !DIExpression())
!1332 = distinct !DIGlobalVariable(scope: null, file: !323, line: 2067, type: !303, isLocal: true, isDefinition: true)
!1333 = !DIGlobalVariableExpression(var: !1334, expr: !DIExpression())
!1334 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1007, isLocal: true, isDefinition: true)
!1335 = !DIGlobalVariableExpression(var: !1336, expr: !DIExpression())
!1336 = distinct !DIGlobalVariable(scope: null, file: !323, line: 2085, type: !3, isLocal: true, isDefinition: true)
!1337 = !DIGlobalVariableExpression(var: !1338, expr: !DIExpression())
!1338 = distinct !DIGlobalVariable(scope: null, file: !323, line: 2090, type: !1040, isLocal: true, isDefinition: true)
!1339 = !DIGlobalVariableExpression(var: !1340, expr: !DIExpression())
!1340 = distinct !DIGlobalVariable(scope: null, file: !323, line: 2101, type: !1040, isLocal: true, isDefinition: true)
!1341 = !DIGlobalVariableExpression(var: !1342, expr: !DIExpression())
!1342 = distinct !DIGlobalVariable(scope: null, file: !323, line: 598, type: !63, isLocal: true, isDefinition: true)
!1343 = !DIGlobalVariableExpression(var: !1344, expr: !DIExpression())
!1344 = distinct !DIGlobalVariable(scope: null, file: !323, line: 573, type: !63, isLocal: true, isDefinition: true)
!1345 = !DIGlobalVariableExpression(var: !1346, expr: !DIExpression())
!1346 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1315, isLocal: true, isDefinition: true)
!1347 = !DIGlobalVariableExpression(var: !1348, expr: !DIExpression())
!1348 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1957, type: !38, isLocal: true, isDefinition: true)
!1349 = !DIGlobalVariableExpression(var: !1350, expr: !DIExpression())
!1350 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !310, isLocal: true, isDefinition: true)
!1351 = !DIGlobalVariableExpression(var: !1352, expr: !DIExpression())
!1352 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1353, isLocal: true, isDefinition: true)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, align: 8, elements: !1354)
!1354 = !{!1355}
!1355 = !DISubrange(count: 34, lowerBound: 0)
!1356 = !DIGlobalVariableExpression(var: !1357, expr: !DIExpression())
!1357 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1041, type: !63, isLocal: true, isDefinition: true)
!1358 = !DIGlobalVariableExpression(var: !1359, expr: !DIExpression())
!1359 = distinct !DIGlobalVariable(scope: null, file: !323, line: 488, type: !56, isLocal: true, isDefinition: true)
!1360 = !DIGlobalVariableExpression(var: !1361, expr: !DIExpression())
!1361 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !458, isLocal: true, isDefinition: true)
!1362 = !DIGlobalVariableExpression(var: !1363, expr: !DIExpression())
!1363 = distinct !DIGlobalVariable(scope: null, file: !323, line: 247, type: !63, isLocal: true, isDefinition: true)
!1364 = !DIGlobalVariableExpression(var: !1365, expr: !DIExpression())
!1365 = distinct !DIGlobalVariable(scope: null, file: !323, line: 201, type: !14, isLocal: true, isDefinition: true)
!1366 = !DIGlobalVariableExpression(var: !1367, expr: !DIExpression())
!1367 = distinct !DIGlobalVariable(scope: null, file: !323, line: 209, type: !395, isLocal: true, isDefinition: true)
!1368 = !DIGlobalVariableExpression(var: !1369, expr: !DIExpression())
!1369 = distinct !DIGlobalVariable(scope: null, file: !323, line: 806, type: !56, isLocal: true, isDefinition: true)
!1370 = !DIGlobalVariableExpression(var: !1371, expr: !DIExpression())
!1371 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1117, type: !74, isLocal: true, isDefinition: true)
!1372 = !DIGlobalVariableExpression(var: !1373, expr: !DIExpression())
!1373 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1374, isLocal: true, isDefinition: true)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, align: 8, elements: !1375)
!1375 = !{!1376}
!1376 = !DISubrange(count: 50, lowerBound: 0)
!1377 = !DIGlobalVariableExpression(var: !1378, expr: !DIExpression())
!1378 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1074, type: !81, isLocal: true, isDefinition: true)
!1379 = !DIGlobalVariableExpression(var: !1380, expr: !DIExpression())
!1380 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1381, isLocal: true, isDefinition: true)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, align: 8, elements: !1382)
!1382 = !{!1383}
!1383 = !DISubrange(count: 39, lowerBound: 0)
!1384 = !DIGlobalVariableExpression(var: !1385, expr: !DIExpression())
!1385 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1386, isLocal: true, isDefinition: true)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, align: 8, elements: !1387)
!1387 = !{!1388}
!1388 = !DISubrange(count: 45, lowerBound: 0)
!1389 = !DIGlobalVariableExpression(var: !1390, expr: !DIExpression())
!1390 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1047, type: !448, isLocal: true, isDefinition: true)
!1391 = !DIGlobalVariableExpression(var: !1392, expr: !DIExpression())
!1392 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1062, type: !515, isLocal: true, isDefinition: true)
!1393 = !DIGlobalVariableExpression(var: !1394, expr: !DIExpression())
!1394 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1398, type: !708, isLocal: true, isDefinition: true)
!1395 = !DIGlobalVariableExpression(var: !1396, expr: !DIExpression())
!1396 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1411, type: !1397, isLocal: true, isDefinition: true)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, align: 8, elements: !1398)
!1398 = !{!1399}
!1399 = !DISubrange(count: 26, lowerBound: 0)
!1400 = !DIGlobalVariableExpression(var: !1401, expr: !DIExpression())
!1401 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !458, isLocal: true, isDefinition: true)
!1402 = !DIGlobalVariableExpression(var: !1403, expr: !DIExpression())
!1403 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1237, type: !310, isLocal: true, isDefinition: true)
!1404 = !DIGlobalVariableExpression(var: !1405, expr: !DIExpression())
!1405 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1237, type: !1152, isLocal: true, isDefinition: true)
!1406 = !DIGlobalVariableExpression(var: !1407, expr: !DIExpression())
!1407 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1275, type: !81, isLocal: true, isDefinition: true)
!1408 = !DIGlobalVariableExpression(var: !1409, expr: !DIExpression())
!1409 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1410, isLocal: true, isDefinition: true)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, align: 8, elements: !1411)
!1411 = !{!1412}
!1412 = !DISubrange(count: 43, lowerBound: 0)
!1413 = !DIGlobalVariableExpression(var: !1414, expr: !DIExpression())
!1414 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1381, isLocal: true, isDefinition: true)
!1415 = !DIGlobalVariableExpression(var: !1416, expr: !DIExpression())
!1416 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1341, type: !230, isLocal: true, isDefinition: true)
!1417 = !DIGlobalVariableExpression(var: !1418, expr: !DIExpression())
!1418 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1328, type: !74, isLocal: true, isDefinition: true)
!1419 = !DIGlobalVariableExpression(var: !1420, expr: !DIExpression())
!1420 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1294, type: !210, isLocal: true, isDefinition: true)
!1421 = !DIGlobalVariableExpression(var: !1422, expr: !DIExpression())
!1422 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1373, type: !395, isLocal: true, isDefinition: true)
!1423 = !DIGlobalVariableExpression(var: !1424, expr: !DIExpression())
!1424 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1425, isLocal: true, isDefinition: true)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, align: 8, elements: !1426)
!1426 = !{!1427}
!1427 = !DISubrange(count: 47, lowerBound: 0)
!1428 = !DIGlobalVariableExpression(var: !1429, expr: !DIExpression())
!1429 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1987, type: !1040, isLocal: true, isDefinition: true)
!1430 = !DIGlobalVariableExpression(var: !1431, expr: !DIExpression())
!1431 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1432, isLocal: true, isDefinition: true)
!1432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, align: 8, elements: !1433)
!1433 = !{!1434}
!1434 = !DISubrange(count: 55, lowerBound: 0)
!1435 = !DIGlobalVariableExpression(var: !1436, expr: !DIExpression())
!1436 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !981, isLocal: true, isDefinition: true)
!1437 = !DIGlobalVariableExpression(var: !1438, expr: !DIExpression())
!1438 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1352, type: !225, isLocal: true, isDefinition: true)
!1439 = !DIGlobalVariableExpression(var: !1440, expr: !DIExpression())
!1440 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1315, type: !81, isLocal: true, isDefinition: true)
!1441 = !DIGlobalVariableExpression(var: !1442, expr: !DIExpression())
!1442 = distinct !DIGlobalVariable(scope: null, file: !323, line: 734, type: !63, isLocal: true, isDefinition: true)
!1443 = !DIGlobalVariableExpression(var: !1444, expr: !DIExpression())
!1444 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1381, isLocal: true, isDefinition: true)
!1445 = !DIGlobalVariableExpression(var: !1446, expr: !DIExpression())
!1446 = distinct !DIGlobalVariable(scope: null, file: !323, line: 642, type: !14, isLocal: true, isDefinition: true)
!1447 = !DIGlobalVariableExpression(var: !1448, expr: !DIExpression())
!1448 = distinct !DIGlobalVariable(scope: null, file: !323, line: 642, type: !81, isLocal: true, isDefinition: true)
!1449 = !DIGlobalVariableExpression(var: !1450, expr: !DIExpression())
!1450 = distinct !DIGlobalVariable(scope: null, file: !323, line: 541, type: !38, isLocal: true, isDefinition: true)
!1451 = !DIGlobalVariableExpression(var: !1452, expr: !DIExpression())
!1452 = distinct !DIGlobalVariable(scope: null, file: !323, line: 273, type: !765, isLocal: true, isDefinition: true)
!1453 = !DIGlobalVariableExpression(var: !1454, expr: !DIExpression())
!1454 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !310, isLocal: true, isDefinition: true)
!1455 = !DIGlobalVariableExpression(var: !1456, expr: !DIExpression())
!1456 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !315, isLocal: true, isDefinition: true)
!1457 = !DIGlobalVariableExpression(var: !1458, expr: !DIExpression())
!1458 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1459, isLocal: true, isDefinition: true)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, align: 8, elements: !1460)
!1460 = !{!1461}
!1461 = !DISubrange(count: 46, lowerBound: 0)
!1462 = !DIGlobalVariableExpression(var: !1463, expr: !DIExpression())
!1463 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1218, type: !74, isLocal: true, isDefinition: true)
!1464 = !DIGlobalVariableExpression(var: !1465, expr: !DIExpression())
!1465 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1466, isLocal: true, isDefinition: true)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, align: 8, elements: !1467)
!1467 = !{!1468}
!1468 = !DISubrange(count: 48, lowerBound: 0)
!1469 = !DIGlobalVariableExpression(var: !1470, expr: !DIExpression())
!1470 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1471 = !DIGlobalVariableExpression(var: !1472, expr: !DIExpression())
!1472 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1473 = !DIGlobalVariableExpression(var: !1474, expr: !DIExpression())
!1474 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1315, isLocal: true, isDefinition: true)
!1475 = !DIGlobalVariableExpression(var: !1476, expr: !DIExpression())
!1476 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1315, isLocal: true, isDefinition: true)
!1477 = !DIGlobalVariableExpression(var: !1478, expr: !DIExpression())
!1478 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1479, isLocal: true, isDefinition: true)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, align: 8, elements: !1179)
!1480 = !DIGlobalVariableExpression(var: !1481, expr: !DIExpression())
!1481 = distinct !DIGlobalVariable(name: "internal/reflectlite.zerobuffer", linkageName: "internal/reflectlite.zerobuffer", scope: !323, file: !323, line: 1710, type: !94, isLocal: false, isDefinition: true, align: 64)
!1482 = !DIGlobalVariableExpression(var: !1483, expr: !DIExpression())
!1483 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1716, type: !701, isLocal: true, isDefinition: true)
!1484 = !DIGlobalVariableExpression(var: !1485, expr: !DIExpression())
!1485 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1716, type: !701, isLocal: true, isDefinition: true)
!1486 = !DIGlobalVariableExpression(var: !1487, expr: !DIExpression())
!1487 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1381, isLocal: true, isDefinition: true)
!1488 = !DIGlobalVariableExpression(var: !1489, expr: !DIExpression())
!1489 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1825, type: !1490, isLocal: true, isDefinition: true)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, align: 8, elements: !1491)
!1491 = !{!1492}
!1492 = !DISubrange(count: 21, lowerBound: 0)
!1493 = !DIGlobalVariableExpression(var: !1494, expr: !DIExpression())
!1494 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1825, type: !14, isLocal: true, isDefinition: true)
!1495 = !DIGlobalVariableExpression(var: !1496, expr: !DIExpression())
!1496 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1002, isLocal: true, isDefinition: true)
!1497 = !DIGlobalVariableExpression(var: !1498, expr: !DIExpression())
!1498 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1879, type: !1040, isLocal: true, isDefinition: true)
!1499 = !DIGlobalVariableExpression(var: !1500, expr: !DIExpression())
!1500 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1903, type: !210, isLocal: true, isDefinition: true)
!1501 = !DIGlobalVariableExpression(var: !1502, expr: !DIExpression())
!1502 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1353, isLocal: true, isDefinition: true)
!1503 = !DIGlobalVariableExpression(var: !1504, expr: !DIExpression())
!1504 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1288, isLocal: true, isDefinition: true)
!1505 = !DIGlobalVariableExpression(var: !1506, expr: !DIExpression())
!1506 = distinct !DIGlobalVariable(scope: null, file: !323, line: 2125, type: !81, isLocal: true, isDefinition: true)
!1507 = !DIGlobalVariableExpression(var: !1508, expr: !DIExpression())
!1508 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1410, isLocal: true, isDefinition: true)
!1509 = !DIGlobalVariableExpression(var: !1510, expr: !DIExpression())
!1510 = distinct !DIGlobalVariable(scope: null, file: !323, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1511 = !DIGlobalVariableExpression(var: !1512, expr: !DIExpression())
!1512 = distinct !DIGlobalVariable(scope: null, file: !1513, line: 1, type: !515, isLocal: true, isDefinition: true)
!1513 = !DIFile(filename: "visiblefields.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1514 = !DIGlobalVariableExpression(var: !1515, expr: !DIExpression())
!1515 = distinct !DIGlobalVariable(scope: null, file: !1513, line: 1, type: !1247, isLocal: true, isDefinition: true)
!1516 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1517)
!1517 = !{!1518, !1521, !1523, !1525}
!1518 = !DIGlobalVariableExpression(var: !1519, expr: !DIExpression())
!1519 = distinct !DIGlobalVariable(scope: null, file: !1520, line: 1, type: !303, isLocal: true, isDefinition: true)
!1520 = !DIFile(filename: "checkpoint.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!1521 = !DIGlobalVariableExpression(var: !1522, expr: !DIExpression())
!1522 = distinct !DIGlobalVariable(name: "type *string", scope: !88, file: !88, line: 1, type: !97, isLocal: false, isDefinition: true, align: 64)
!1523 = !DIGlobalVariableExpression(var: !1524, expr: !DIExpression())
!1524 = distinct !DIGlobalVariable(name: "type string", scope: !88, file: !88, line: 1, type: !89, isLocal: false, isDefinition: true, align: 64)
!1525 = !DIGlobalVariableExpression(var: !1526, expr: !DIExpression())
!1526 = distinct !DIGlobalVariable(scope: null, file: !1520, line: 1, type: !1002, isLocal: true, isDefinition: true)
!1527 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1528)
!1528 = !{!335, !381, !383, !1529, !1531, !1533, !1539, !1541, !1543, !386, !389, !1545, !393, !398, !400, !1547, !1549, !1551, !402, !404, !406, !412, !1553}
!1529 = !DIGlobalVariableExpression(var: !1530, expr: !DIExpression())
!1530 = distinct !DIGlobalVariable(name: "type *string", scope: !88, file: !88, line: 1, type: !97, isLocal: false, isDefinition: true, align: 64)
!1531 = !DIGlobalVariableExpression(var: !1532, expr: !DIExpression())
!1532 = distinct !DIGlobalVariable(name: "type string", scope: !88, file: !88, line: 1, type: !89, isLocal: false, isDefinition: true, align: 64)
!1533 = !DIGlobalVariableExpression(var: !1534, expr: !DIExpression())
!1534 = distinct !DIGlobalVariable(scope: null, file: !1535, line: 1, type: !1536, isLocal: true, isDefinition: true)
!1535 = !DIFile(filename: "queue.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!1536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, align: 8, elements: !1537)
!1537 = !{!1538}
!1538 = !DISubrange(count: 62, lowerBound: 0)
!1539 = !DIGlobalVariableExpression(var: !1540, expr: !DIExpression())
!1540 = distinct !DIGlobalVariable(scope: null, file: !1535, line: 1, type: !1536, isLocal: true, isDefinition: true)
!1541 = !DIGlobalVariableExpression(var: !1542, expr: !DIExpression())
!1542 = distinct !DIGlobalVariable(scope: null, file: !337, line: 89, type: !303, isLocal: true, isDefinition: true)
!1543 = !DIGlobalVariableExpression(var: !1544, expr: !DIExpression())
!1544 = distinct !DIGlobalVariable(name: "internal/task.goroutineID", linkageName: "internal/task.goroutineID", scope: !337, file: !337, line: 38, type: !53, isLocal: false, isDefinition: true, align: 64)
!1545 = !DIGlobalVariableExpression(var: !1546, expr: !DIExpression())
!1546 = distinct !DIGlobalVariable(scope: null, file: !337, line: 49, type: !438, isLocal: true, isDefinition: true)
!1547 = !DIGlobalVariableExpression(var: !1548, expr: !DIExpression())
!1548 = distinct !DIGlobalVariable(scope: null, file: !337, line: 106, type: !303, isLocal: true, isDefinition: true)
!1549 = !DIGlobalVariableExpression(var: !1550, expr: !DIExpression())
!1550 = distinct !DIGlobalVariable(scope: null, file: !337, line: 106, type: !38, isLocal: true, isDefinition: true)
!1551 = !DIGlobalVariableExpression(var: !1552, expr: !DIExpression())
!1552 = distinct !DIGlobalVariable(scope: null, file: !337, line: 116, type: !445, isLocal: true, isDefinition: true)
!1553 = !DIGlobalVariableExpression(var: !1554, expr: !DIExpression())
!1554 = distinct !DIGlobalVariable(name: "internal/task.stackScanLock", linkageName: "internal/task.stackScanLock", scope: !337, file: !337, line: 263, type: !391, isLocal: false, isDefinition: true, align: 32)
!1555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1556 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1557)
!1557 = !{!414, !417, !1558, !419, !1561, !1564, !1566, !1568, !1570, !1572, !1575, !1577, !1579, !1582, !1585, !426, !429, !1588, !431, !1590, !1607, !1609, !1612, !1615, !433, !436, !441, !443, !1617, !446, !1619, !449, !454, !1621, !456, !1623, !461, !1625, !1627, !1632, !1635, !1637, !1639, !463, !466, !468, !470, !472, !474, !476, !478, !1641, !1643, !480, !482, !484, !1645, !1647, !486, !488, !490, !1649, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !1655, !518, !1657, !1659, !1661, !1663, !1681, !1683, !1685, !1705, !1707, !1709, !1711, !1713, !1715, !1717, !1719, !520, !1721, !1723, !1726, !1728}
!1558 = !DIGlobalVariableExpression(var: !1559, expr: !DIExpression())
!1559 = distinct !DIGlobalVariable(name: "runtime.inf", linkageName: "runtime.inf", scope: !1560, file: !1560, line: 9, type: !802, isLocal: false, isDefinition: true, align: 64)
!1560 = !DIFile(filename: "float.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1561 = !DIGlobalVariableExpression(var: !1562, expr: !DIExpression())
!1562 = distinct !DIGlobalVariable(scope: null, file: !1563, line: 210, type: !445, isLocal: true, isDefinition: true)
!1563 = !DIFile(filename: "chan.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1564 = !DIGlobalVariableExpression(var: !1565, expr: !DIExpression())
!1565 = distinct !DIGlobalVariable(scope: null, file: !1563, line: 267, type: !445, isLocal: true, isDefinition: true)
!1566 = !DIGlobalVariableExpression(var: !1567, expr: !DIExpression())
!1567 = distinct !DIGlobalVariable(scope: null, file: !1563, line: 348, type: !395, isLocal: true, isDefinition: true)
!1568 = !DIGlobalVariableExpression(var: !1569, expr: !DIExpression())
!1569 = distinct !DIGlobalVariable(scope: null, file: !1563, line: 358, type: !448, isLocal: true, isDefinition: true)
!1570 = !DIGlobalVariableExpression(var: !1571, expr: !DIExpression())
!1571 = distinct !DIGlobalVariable(name: "runtime.chanSelectLock", linkageName: "runtime.chanSelectLock", scope: !1563, file: !1563, line: 402, type: !391, isLocal: false, isDefinition: true, align: 32)
!1572 = !DIGlobalVariableExpression(var: !1573, expr: !DIExpression())
!1573 = distinct !DIGlobalVariable(scope: null, file: !1574, line: 1, type: !438, isLocal: true, isDefinition: true)
!1574 = !DIFile(filename: "debug.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1575 = !DIGlobalVariableExpression(var: !1576, expr: !DIExpression())
!1576 = distinct !DIGlobalVariable(name: "type *string", scope: !88, file: !88, line: 1, type: !97, isLocal: false, isDefinition: true, align: 64)
!1577 = !DIGlobalVariableExpression(var: !1578, expr: !DIExpression())
!1578 = distinct !DIGlobalVariable(name: "type string", scope: !88, file: !88, line: 1, type: !89, isLocal: false, isDefinition: true, align: 64)
!1579 = !DIGlobalVariableExpression(var: !1580, expr: !DIExpression())
!1580 = distinct !DIGlobalVariable(scope: null, file: !1581, line: 13, type: !81, isLocal: true, isDefinition: true)
!1581 = !DIFile(filename: "env.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1582 = !DIGlobalVariableExpression(var: !1583, expr: !DIExpression())
!1583 = distinct !DIGlobalVariable(name: "runtime.godebugUpdate", linkageName: "runtime.godebugUpdate", scope: !1584, file: !1584, line: 142, type: !662, isLocal: false, isDefinition: true, align: 64)
!1584 = !DIFile(filename: "runtime.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1585 = !DIGlobalVariableExpression(var: !1586, expr: !DIExpression())
!1586 = distinct !DIGlobalVariable(name: "runtime.buildVersion", linkageName: "runtime.buildVersion", scope: !1587, file: !1587, line: 10, type: !48, isLocal: false, isDefinition: true, align: 64)
!1587 = !DIFile(filename: "extern.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1588 = !DIGlobalVariableExpression(var: !1589, expr: !DIExpression())
!1589 = distinct !DIGlobalVariable(scope: null, file: !428, line: 61, type: !1012, isLocal: true, isDefinition: true)
!1590 = !DIGlobalVariableExpression(var: !1591, expr: !DIExpression())
!1591 = distinct !DIGlobalVariable(name: "runtime.gcMemStats", linkageName: "runtime.gcMemStats", scope: !428, file: !428, line: 112, type: !1592, isLocal: false, isDefinition: true, align: 64)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.libgc_prof_stats", baseType: !1593)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, size: 768, align: 64, elements: !1594)
!1594 = !{!1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "heapsize_full", baseType: !53, size: 64, align: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "free_bytes_full", baseType: !53, size: 64, align: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "unmapped_bytes", baseType: !53, size: 64, align: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_allocd_since_gc", baseType: !53, size: 64, align: 64, offset: 192)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "allocd_bytes_before_gc", baseType: !53, size: 64, align: 64, offset: 256)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "non_gc_bytes", baseType: !53, size: 64, align: 64, offset: 320)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "gc_no", baseType: !53, size: 64, align: 64, offset: 384)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "markers_m1", baseType: !53, size: 64, align: 64, offset: 448)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_reclaimed_since_gc", baseType: !53, size: 64, align: 64, offset: 512)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_bytes_before_gc", baseType: !53, size: 64, align: 64, offset: 576)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "expl_freed_bytes_since_gc", baseType: !53, size: 64, align: 64, offset: 640)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "obtained_from_os_bytes", baseType: !53, size: 64, align: 64, offset: 704)
!1607 = !DIGlobalVariableExpression(var: !1608, expr: !DIExpression())
!1608 = distinct !DIGlobalVariable(scope: null, file: !428, line: 135, type: !1353, isLocal: true, isDefinition: true)
!1609 = !DIGlobalVariableExpression(var: !1610, expr: !DIExpression())
!1610 = distinct !DIGlobalVariable(scope: null, file: !1611, line: 616, type: !1152, isLocal: true, isDefinition: true)
!1611 = !DIFile(filename: "hashmap.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1612 = !DIGlobalVariableExpression(var: !1613, expr: !DIExpression())
!1613 = distinct !DIGlobalVariable(scope: null, file: !1614, line: 80, type: !1152, isLocal: true, isDefinition: true)
!1614 = !DIFile(filename: "interface.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1615 = !DIGlobalVariableExpression(var: !1616, expr: !DIExpression())
!1616 = distinct !DIGlobalVariable(scope: null, file: !1614, line: 89, type: !451, isLocal: true, isDefinition: true)
!1617 = !DIGlobalVariableExpression(var: !1618, expr: !DIExpression())
!1618 = distinct !DIGlobalVariable(scope: null, file: !435, line: 122, type: !451, isLocal: true, isDefinition: true)
!1619 = !DIGlobalVariableExpression(var: !1620, expr: !DIExpression())
!1620 = distinct !DIGlobalVariable(scope: null, file: !435, line: 189, type: !315, isLocal: true, isDefinition: true)
!1621 = !DIGlobalVariableExpression(var: !1622, expr: !DIExpression())
!1622 = distinct !DIGlobalVariable(scope: null, file: !435, line: 205, type: !438, isLocal: true, isDefinition: true)
!1623 = !DIGlobalVariableExpression(var: !1624, expr: !DIExpression())
!1624 = distinct !DIGlobalVariable(scope: null, file: !435, line: 217, type: !445, isLocal: true, isDefinition: true)
!1625 = !DIGlobalVariableExpression(var: !1626, expr: !DIExpression())
!1626 = distinct !DIGlobalVariable(scope: null, file: !435, line: 227, type: !122, isLocal: true, isDefinition: true)
!1627 = !DIGlobalVariableExpression(var: !1628, expr: !DIExpression())
!1628 = distinct !DIGlobalVariable(scope: null, file: !435, line: 231, type: !1629, isLocal: true, isDefinition: true)
!1629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, align: 8, elements: !1630)
!1630 = !{!1631}
!1631 = !DISubrange(count: 52, lowerBound: 0)
!1632 = !DIGlobalVariableExpression(var: !1633, expr: !DIExpression())
!1633 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1634 = !DIFile(filename: "poll.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1635 = !DIGlobalVariableExpression(var: !1636, expr: !DIExpression())
!1636 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !445, isLocal: true, isDefinition: true)
!1637 = !DIGlobalVariableExpression(var: !1638, expr: !DIExpression())
!1638 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !448, isLocal: true, isDefinition: true)
!1639 = !DIGlobalVariableExpression(var: !1640, expr: !DIExpression())
!1640 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !708, isLocal: true, isDefinition: true)
!1641 = !DIGlobalVariableExpression(var: !1642, expr: !DIExpression())
!1642 = distinct !DIGlobalVariable(scope: null, file: !465, line: 355, type: !38, isLocal: true, isDefinition: true)
!1643 = !DIGlobalVariableExpression(var: !1644, expr: !DIExpression())
!1644 = distinct !DIGlobalVariable(scope: null, file: !465, line: 357, type: !56, isLocal: true, isDefinition: true)
!1645 = !DIGlobalVariableExpression(var: !1646, expr: !DIExpression())
!1646 = distinct !DIGlobalVariable(scope: null, file: !1584, line: 36, type: !765, isLocal: true, isDefinition: true)
!1647 = !DIGlobalVariableExpression(var: !1648, expr: !DIExpression())
!1648 = distinct !DIGlobalVariable(scope: null, file: !1584, line: 97, type: !315, isLocal: true, isDefinition: true)
!1649 = !DIGlobalVariableExpression(var: !1650, expr: !DIExpression())
!1650 = distinct !DIGlobalVariable(name: "runtime.args", linkageName: "runtime.args", scope: !421, file: !421, line: 107, type: !1651, isLocal: false, isDefinition: true, align: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]string", size: 192, align: 64, elements: !1652)
!1652 = !{!1653, !52, !680}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !1654, size: 64, align: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64, dwarfAddressSpace: 0)
!1655 = !DIGlobalVariableExpression(var: !1656, expr: !DIExpression())
!1656 = distinct !DIGlobalVariable(name: "runtime.hasSignals", linkageName: "runtime.hasSignals", scope: !421, file: !421, line: 345, type: !378, isLocal: false, isDefinition: true, align: 8)
!1657 = !DIGlobalVariableExpression(var: !1658, expr: !DIExpression())
!1658 = distinct !DIGlobalVariable(scope: null, file: !421, line: 365, type: !708, isLocal: true, isDefinition: true)
!1659 = !DIGlobalVariableExpression(var: !1660, expr: !DIExpression())
!1660 = distinct !DIGlobalVariable(scope: null, file: !421, line: 382, type: !708, isLocal: true, isDefinition: true)
!1661 = !DIGlobalVariableExpression(var: !1662, expr: !DIExpression())
!1662 = distinct !DIGlobalVariable(scope: null, file: !421, line: 392, type: !708, isLocal: true, isDefinition: true)
!1663 = !DIGlobalVariableExpression(var: !1664, expr: !DIExpression())
!1664 = distinct !DIGlobalVariable(name: "runtime.signalRecvWaiter", linkageName: "runtime.signalRecvWaiter", scope: !421, file: !421, line: 447, type: !1665, isLocal: false, isDefinition: true, align: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Pointer[internal/task.Task]", baseType: !1666)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !1667)
!1667 = !{!1668, !373, !1680}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !1669, align: 64)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1670, align: 64, elements: !131)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64, align: 64, dwarfAddressSpace: 0)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !1672)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !1673)
!1673 = !{!1674, !343, !344, !346, !1675, !376, !377, !379, !380}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !1670, size: 64, align: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !1676, size: 384, align: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !1677)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !1678)
!1678 = !{!354, !355, !357, !358, !1679, !360}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !1670, size: 64, align: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !94, size: 64, align: 64)
!1681 = !DIGlobalVariableExpression(var: !1682, expr: !DIExpression())
!1682 = distinct !DIGlobalVariable(scope: null, file: !421, line: 458, type: !1288, isLocal: true, isDefinition: true)
!1683 = !DIGlobalVariableExpression(var: !1684, expr: !DIExpression())
!1684 = distinct !DIGlobalVariable(scope: null, file: !421, line: 514, type: !515, isLocal: true, isDefinition: true)
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
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !662, size: 128, align: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "arg", baseType: !1703, size: 128, align: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "any", baseType: !785)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "callback", baseType: !662, size: 128, align: 64, offset: 128)
!1705 = !DIGlobalVariableExpression(var: !1706, expr: !DIExpression())
!1706 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 12, type: !56, isLocal: true, isDefinition: true)
!1707 = !DIGlobalVariableExpression(var: !1708, expr: !DIExpression())
!1708 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 19, type: !56, isLocal: true, isDefinition: true)
!1709 = !DIGlobalVariableExpression(var: !1710, expr: !DIExpression())
!1710 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 26, type: !56, isLocal: true, isDefinition: true)
!1711 = !DIGlobalVariableExpression(var: !1712, expr: !DIExpression())
!1712 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 45, type: !765, isLocal: true, isDefinition: true)
!1713 = !DIGlobalVariableExpression(var: !1714, expr: !DIExpression())
!1714 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 51, type: !395, isLocal: true, isDefinition: true)
!1715 = !DIGlobalVariableExpression(var: !1716, expr: !DIExpression())
!1716 = distinct !DIGlobalVariable(name: "runtime.timerQueueLock", linkageName: "runtime.timerQueueLock", scope: !522, file: !522, line: 16, type: !391, isLocal: false, isDefinition: true, align: 32)
!1717 = !DIGlobalVariableExpression(var: !1718, expr: !DIExpression())
!1718 = distinct !DIGlobalVariable(name: "runtime.timerQueueStarted", linkageName: "runtime.timerQueueStarted", scope: !522, file: !522, line: 17, type: !378, isLocal: false, isDefinition: true, align: 8)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(name: "runtime.timerFutex", linkageName: "runtime.timerFutex", scope: !522, file: !522, line: 18, type: !365, isLocal: false, isDefinition: true, align: 32)
!1721 = !DIGlobalVariableExpression(var: !1722, expr: !DIExpression())
!1722 = distinct !DIGlobalVariable(name: "runtime.atomicsLock", linkageName: "runtime.atomicsLock", scope: !522, file: !522, line: 151, type: !392, isLocal: false, isDefinition: true, align: 32)
!1723 = !DIGlobalVariableExpression(var: !1724, expr: !DIExpression())
!1724 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !320, isLocal: true, isDefinition: true)
!1725 = !DIFile(filename: "sync.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !320, isLocal: true, isDefinition: true)
!1728 = !DIGlobalVariableExpression(var: !1729, expr: !DIExpression())
!1729 = distinct !DIGlobalVariable(scope: null, file: !1730, line: 45, type: !225, isLocal: true, isDefinition: true)
!1730 = !DIFile(filename: "time_go123.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1731 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1732 = !{!"TinyGo version 0.41.1"}
!1733 = !{i32 2, !"Debug Info Version", i32 3}
!1734 = !{i32 7, !"Dwarf Version", i32 4}
!1735 = distinct !DISubprogram(name: "math/bits.Len", linkageName: "math/bits.Len", scope: !777, file: !777, line: 302, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !1739)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!1738}
!1738 = !DIBasicType(name: "uint", size: 64, encoding: DW_ATE_unsigned)
!1739 = !{!1740}
!1740 = !DILocalVariable(name: "x", arg: 1, scope: !1735, file: !777, line: 302, type: !1738)
!1741 = !DILocation(line: 302, column: 6, scope: !1735)
!1742 = distinct !DISubprogram(name: "math.Abs", linkageName: "math.Abs", scope: !1743, file: !1743, line: 13, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1746)
!1743 = !DIFile(filename: "abs.go", directory: "/usr/local/go/src/math")
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!802}
!1746 = !{!1747}
!1747 = !DILocalVariable(name: "x", arg: 1, scope: !1742, file: !1743, line: 13, type: !802)
!1748 = !DILocation(line: 13, column: 6, scope: !1742)
!1749 = !DILocation(line: 14, column: 37, scope: !1742)
!1750 = !DILocation(line: 14, column: 36, scope: !1742)
!1751 = !DILocation(line: 14, column: 40, scope: !1742)
!1752 = !DILocation(line: 14, column: 24, scope: !1742)
!1753 = !DILocation(line: 14, column: 2, scope: !1742)
!1754 = distinct !DISubprogram(name: "math.Float64bits", linkageName: "math.Float64bits", scope: !1755, file: !1755, line: 35, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1756)
!1755 = !DIFile(filename: "unsafe.go", directory: "/usr/local/go/src/math")
!1756 = !{!1757}
!1757 = !DILocalVariable(name: "f", arg: 1, scope: !1754, file: !1755, line: 35, type: !802)
!1758 = !DILocation(line: 35, column: 6, scope: !1754)
!1759 = !DILocation(line: 35, column: 18, scope: !1754)
!1760 = !DILocation(line: 35, column: 45, scope: !1754)
!1761 = !DILocation(line: 35, column: 38, scope: !1754)
!1762 = distinct !DISubprogram(name: "math.Float64frombits", linkageName: "math.Float64frombits", scope: !1755, file: !1755, line: 41, type: !1763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1765)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!345}
!1765 = !{!1766}
!1766 = !DILocalVariable(name: "b", arg: 1, scope: !1762, file: !1755, line: 41, type: !345)
!1767 = !DILocation(line: 41, column: 6, scope: !1762)
!1768 = !DILocation(line: 41, column: 22, scope: !1762)
!1769 = !DILocation(line: 41, column: 49, scope: !1762)
!1770 = !DILocation(line: 41, column: 42, scope: !1762)
!1771 = distinct !DISubprogram(name: "math.NaN", linkageName: "math.NaN", scope: !1772, file: !1772, line: 31, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791)
!1772 = !DIFile(filename: "bits.go", directory: "/usr/local/go/src/math")
!1773 = !DISubroutineType(types: !349)
!1774 = !DILocation(line: 31, column: 44, scope: !1771)
!1775 = !DILocation(line: 31, column: 22, scope: !1771)
!1776 = distinct !DISubprogram(name: "math.Log", linkageName: "math.Log", scope: !1777, file: !1777, line: 81, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1778)
!1777 = !DIFile(filename: "log.go", directory: "/usr/local/go/src/math")
!1778 = !{!1779}
!1779 = !DILocalVariable(name: "x", arg: 1, scope: !1776, file: !1777, line: 81, type: !802)
!1780 = !DILocation(line: 81, column: 6, scope: !1776)
!1781 = distinct !DISubprogram(name: "math.Sqrt", linkageName: "math.Sqrt", scope: !1782, file: !1782, line: 93, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1783)
!1782 = !DIFile(filename: "sqrt.go", directory: "/usr/local/go/src/math")
!1783 = !{!1784}
!1784 = !DILocalVariable(name: "x", arg: 1, scope: !1781, file: !1782, line: 93, type: !802)
!1785 = !DILocation(line: 93, column: 6, scope: !1781)
!1786 = distinct !DISubprogram(name: "math.IsNaN", linkageName: "math.IsNaN", scope: !1772, file: !1772, line: 34, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1787)
!1787 = !{!1788}
!1788 = !DILocalVariable(name: "f", arg: 1, scope: !1786, file: !1772, line: 34, type: !802)
!1789 = !DILocation(line: 34, column: 6, scope: !1786)
!1790 = !DILocation(line: 39, column: 9, scope: !1786)
!1791 = !DILocation(line: 39, column: 14, scope: !1786)
!1792 = !DILocation(line: 39, column: 11, scope: !1786)
!1793 = !DILocation(line: 39, column: 2, scope: !1786)
!1794 = distinct !DISubprogram(name: "math.Inf", linkageName: "math.Inf", scope: !1772, file: !1772, line: 20, type: !1795, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1798)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!1797}
!1797 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!1798 = !{!1799, !1800}
!1799 = !DILocalVariable(name: "sign", arg: 1, scope: !1794, file: !1772, line: 20, type: !1797)
!1800 = !DILocalVariable(name: "v", scope: !1794, file: !1772, line: 21, type: !345)
!1801 = !DILocation(line: 20, column: 6, scope: !1794)
!1802 = !DILocation(line: 21, column: 6, scope: !1794)
!1803 = !DILocation(line: 22, column: 5, scope: !1794)
!1804 = !DILocation(line: 22, column: 10, scope: !1794)
!1805 = !DILocation(line: 0, scope: !1794)
!1806 = !DILocation(line: 23, column: 3, scope: !1794)
!1807 = !DILocation(line: 27, column: 25, scope: !1794)
!1808 = !DILocation(line: 27, column: 24, scope: !1794)
!1809 = !DILocation(line: 27, column: 2, scope: !1794)
!1810 = !DILocation(line: 25, column: 3, scope: !1794)
!1811 = distinct !DISubprogram(name: "math.IsInf", linkageName: "math.IsInf", scope: !1772, file: !1772, line: 46, type: !1812, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1814)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!802, !1797}
!1814 = !{!1815, !1816}
!1815 = !DILocalVariable(name: "f", arg: 1, scope: !1811, file: !1772, line: 46, type: !802)
!1816 = !DILocalVariable(name: "sign", arg: 2, scope: !1811, file: !1772, line: 46, type: !1797)
!1817 = !DILocation(line: 46, column: 6, scope: !1811)
!1818 = !DILocation(line: 51, column: 5, scope: !1811)
!1819 = !DILocation(line: 51, column: 10, scope: !1811)
!1820 = !DILocation(line: 0, scope: !1811)
!1821 = !DILocation(line: 52, column: 11, scope: !1811)
!1822 = !DILocation(line: 52, column: 10, scope: !1811)
!1823 = !DILocation(line: 52, column: 3, scope: !1811)
!1824 = !DILocation(line: 46, column: 12, scope: !1811)
!1825 = !DILocation(line: 56, column: 9, scope: !1811)
!1826 = !DILocation(line: 56, column: 11, scope: !1811)
!1827 = !DILocation(line: 56, column: 2, scope: !1811)
!1828 = !DILocation(line: 53, column: 12, scope: !1811)
!1829 = !DILocation(line: 53, column: 17, scope: !1811)
!1830 = !DILocation(line: 54, column: 8, scope: !1811)
!1831 = !DILocation(line: 54, column: 7, scope: !1811)
!1832 = !DILocation(line: 54, column: 3, scope: !1811)
!1833 = distinct !DISubprogram(name: "math.Signbit", linkageName: "math.Signbit", scope: !1834, file: !1834, line: 8, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1835)
!1834 = !DIFile(filename: "signbit.go", directory: "/usr/local/go/src/math")
!1835 = !{!1836}
!1836 = !DILocalVariable(name: "x", arg: 1, scope: !1833, file: !1834, line: 8, type: !802)
!1837 = !DILocation(line: 8, column: 6, scope: !1833)
!1838 = !DILocation(line: 9, column: 27, scope: !1833)
!1839 = !DILocation(line: 9, column: 26, scope: !1833)
!1840 = !DILocation(line: 9, column: 31, scope: !1833)
!1841 = !DILocation(line: 9, column: 2, scope: !1833)
!1842 = distinct !DISubprogram(name: "math.Copysign", linkageName: "math.Copysign", scope: !1843, file: !1843, line: 9, type: !1844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1846)
!1843 = !DIFile(filename: "copysign.go", directory: "/usr/local/go/src/math")
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!802, !802}
!1846 = !{!1847, !1848}
!1847 = !DILocalVariable(name: "f", arg: 1, scope: !1842, file: !1843, line: 9, type: !802)
!1848 = !DILocalVariable(name: "sign", arg: 2, scope: !1842, file: !1843, line: 9, type: !802)
!1849 = !DILocation(line: 9, column: 6, scope: !1842)
!1850 = !DILocation(line: 11, column: 37, scope: !1842)
!1851 = !DILocation(line: 11, column: 36, scope: !1842)
!1852 = !DILocation(line: 11, column: 39, scope: !1842)
!1853 = !DILocation(line: 11, column: 63, scope: !1842)
!1854 = !DILocation(line: 11, column: 62, scope: !1842)
!1855 = !DILocation(line: 11, column: 68, scope: !1842)
!1856 = !DILocation(line: 11, column: 49, scope: !1842)
!1857 = !DILocation(line: 11, column: 24, scope: !1842)
!1858 = !DILocation(line: 11, column: 2, scope: !1842)
!1859 = distinct !DISubprogram(name: "math.normalize", linkageName: "math.normalize", scope: !1772, file: !1772, line: 61, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1860)
!1860 = !{!1861}
!1861 = !DILocalVariable(name: "x", arg: 1, scope: !1859, file: !1772, line: 61, type: !802)
!1862 = !DILocation(line: 61, column: 6, scope: !1859)
!1863 = !DILocation(line: 63, column: 9, scope: !1859)
!1864 = !DILocation(line: 63, column: 8, scope: !1859)
!1865 = !DILocation(line: 63, column: 12, scope: !1859)
!1866 = !DILocation(line: 0, scope: !1859)
!1867 = !DILocation(line: 64, column: 10, scope: !1859)
!1868 = !DILocation(line: 64, column: 12, scope: !1859)
!1869 = !DILocation(line: 64, column: 3, scope: !1859)
!1870 = !DILocation(line: 66, column: 9, scope: !1859)
!1871 = !DILocation(line: 66, column: 2, scope: !1859)
!1872 = distinct !DISubprogram(name: "math.Exp", linkageName: "math.Exp", scope: !1873, file: !1873, line: 16, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1874)
!1873 = !DIFile(filename: "exp.go", directory: "/usr/local/go/src/math")
!1874 = !{!1875}
!1875 = !DILocalVariable(name: "x", arg: 1, scope: !1872, file: !1873, line: 16, type: !802)
!1876 = !DILocation(line: 16, column: 6, scope: !1872)
!1877 = distinct !DISubprogram(name: "math.Ldexp", linkageName: "math.Ldexp", scope: !1878, file: !1878, line: 15, type: !1812, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1879)
!1878 = !DIFile(filename: "ldexp.go", directory: "/usr/local/go/src/math")
!1879 = !{!1880, !1881}
!1880 = !DILocalVariable(name: "frac", arg: 1, scope: !1877, file: !1878, line: 15, type: !802)
!1881 = !DILocalVariable(name: "exp", arg: 2, scope: !1877, file: !1878, line: 15, type: !1797)
!1882 = !DILocation(line: 15, column: 6, scope: !1877)
!1883 = !DILocation(line: 0, scope: !1877)
!1884 = !DILocation(line: 17, column: 20, scope: !1877)
!1885 = !DILocation(line: 17, column: 26, scope: !1877)
!1886 = !DILocation(line: 17, column: 19, scope: !1877)
!1887 = !DILocation(line: 17, column: 3, scope: !1877)
!1888 = !DILocation(line: 19, column: 15, scope: !1877)
!1889 = !DILocation(line: 19, column: 21, scope: !1877)
!1890 = !DILocation(line: 19, column: 14, scope: !1877)
!1891 = !DILocation(line: 19, column: 2, scope: !1877)
!1892 = distinct !DISubprogram(name: "math.archLdexp", linkageName: "math.archLdexp", scope: !2, file: !2, line: 98, type: !1812, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1893)
!1893 = !{!1894, !1895}
!1894 = !DILocalVariable(name: "frac", arg: 1, scope: !1892, file: !2, line: 98, type: !802)
!1895 = !DILocalVariable(name: "exp", arg: 2, scope: !1892, file: !2, line: 98, type: !1797)
!1896 = !DILocation(line: 98, column: 6, scope: !1892)
!1897 = !DILocation(line: 99, column: 7, scope: !1892)
!1898 = distinct !DISubprogram(name: "math.ldexp", linkageName: "math.ldexp", scope: !1878, file: !1878, line: 22, type: !1812, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1899)
!1899 = !{!1900, !1901, !1902, !1903, !1904}
!1900 = !DILocalVariable(name: "frac", arg: 1, scope: !1898, file: !1878, line: 22, type: !802)
!1901 = !DILocalVariable(name: "exp", arg: 2, scope: !1898, file: !1878, line: 22, type: !1797)
!1902 = !DILocalVariable(name: "e", scope: !1898, file: !1878, line: 30, type: !1797)
!1903 = !DILocalVariable(name: "x", scope: !1898, file: !1878, line: 32, type: !345)
!1904 = !DILocalVariable(name: "m", scope: !1898, file: !1878, line: 43, type: !802)
!1905 = !DILocation(line: 22, column: 6, scope: !1898)
!1906 = !DILocation(line: 25, column: 7, scope: !1898)
!1907 = !DILocation(line: 25, column: 12, scope: !1898)
!1908 = !DILocation(line: 0, scope: !1898)
!1909 = !DILocation(line: 26, column: 10, scope: !1898)
!1910 = !DILocation(line: 26, column: 3, scope: !1898)
!1911 = !DILocation(line: 27, column: 13, scope: !1898)
!1912 = !DILocation(line: 27, column: 12, scope: !1898)
!1913 = !DILocation(line: 27, column: 22, scope: !1898)
!1914 = !DILocation(line: 28, column: 10, scope: !1898)
!1915 = !DILocation(line: 28, column: 3, scope: !1898)
!1916 = !DILocation(line: 30, column: 23, scope: !1898)
!1917 = !DILocation(line: 30, column: 22, scope: !1898)
!1918 = !DILocation(line: 30, column: 2, scope: !1898)
!1919 = !DILocation(line: 30, column: 8, scope: !1898)
!1920 = !DILocation(line: 31, column: 9, scope: !1898)
!1921 = !DILocation(line: 31, column: 2, scope: !1898)
!1922 = !DILocation(line: 32, column: 19, scope: !1898)
!1923 = !DILocation(line: 32, column: 18, scope: !1898)
!1924 = !DILocation(line: 32, column: 2, scope: !1898)
!1925 = !DILocation(line: 33, column: 13, scope: !1898)
!1926 = !DILocation(line: 33, column: 14, scope: !1898)
!1927 = !DILocation(line: 33, column: 22, scope: !1898)
!1928 = !DILocation(line: 33, column: 28, scope: !1898)
!1929 = !DILocation(line: 33, column: 2, scope: !1898)
!1930 = !DILocation(line: 34, column: 5, scope: !1898)
!1931 = !DILocation(line: 34, column: 9, scope: !1898)
!1932 = !DILocation(line: 35, column: 22, scope: !1898)
!1933 = !DILocation(line: 35, column: 18, scope: !1898)
!1934 = !DILocation(line: 35, column: 3, scope: !1898)
!1935 = !DILocation(line: 37, column: 5, scope: !1898)
!1936 = !DILocation(line: 37, column: 9, scope: !1898)
!1937 = !DILocation(line: 38, column: 6, scope: !1898)
!1938 = !DILocation(line: 38, column: 11, scope: !1898)
!1939 = !DILocation(line: 39, column: 14, scope: !1898)
!1940 = !DILocation(line: 39, column: 4, scope: !1898)
!1941 = !DILocation(line: 41, column: 13, scope: !1898)
!1942 = !DILocation(line: 41, column: 3, scope: !1898)
!1943 = !DILocation(line: 43, column: 6, scope: !1898)
!1944 = !DILocation(line: 44, column: 5, scope: !1898)
!1945 = !DILocation(line: 44, column: 9, scope: !1898)
!1946 = !DILocation(line: 45, column: 3, scope: !1898)
!1947 = !DILocation(line: 46, column: 3, scope: !1898)
!1948 = !DILocation(line: 22, column: 26, scope: !1898)
!1949 = !DILocation(line: 48, column: 2, scope: !1898)
!1950 = !DILocation(line: 49, column: 14, scope: !1898)
!1951 = !DILocation(line: 49, column: 17, scope: !1898)
!1952 = !DILocation(line: 49, column: 24, scope: !1898)
!1953 = !DILocation(line: 49, column: 2, scope: !1898)
!1954 = !DILocation(line: 50, column: 9, scope: !1898)
!1955 = !DILocation(line: 50, column: 29, scope: !1898)
!1956 = !DILocation(line: 50, column: 28, scope: !1898)
!1957 = !DILocation(line: 50, column: 11, scope: !1898)
!1958 = !DILocation(line: 50, column: 2, scope: !1898)
!1959 = !DILocation(line: 27, column: 31, scope: !1898)
!1960 = !DILocation(line: 27, column: 30, scope: !1898)
!1961 = distinct !DISubprogram(name: "math.Modf", linkageName: "math.Modf", scope: !1962, file: !1962, line: 14, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1963)
!1962 = !DIFile(filename: "modf.go", directory: "/usr/local/go/src/math")
!1963 = !{!1964, !1965, !1966}
!1964 = !DILocalVariable(name: "f", arg: 1, scope: !1961, file: !1962, line: 14, type: !802)
!1965 = !DILocalVariable(name: "integer", scope: !1961, file: !1962, line: 14, type: !802)
!1966 = !DILocalVariable(name: "fractional", scope: !1961, file: !1962, line: 14, type: !802)
!1967 = !DILocation(line: 14, column: 6, scope: !1961)
!1968 = !DILocation(line: 15, column: 18, scope: !1961)
!1969 = !DILocation(line: 15, column: 17, scope: !1961)
!1970 = !DILocation(line: 15, column: 2, scope: !1961)
!1971 = !DILocation(line: 16, column: 24, scope: !1961)
!1972 = !DILocation(line: 16, column: 26, scope: !1961)
!1973 = !DILocation(line: 16, column: 25, scope: !1961)
!1974 = !DILocation(line: 16, column: 35, scope: !1961)
!1975 = !DILocation(line: 16, column: 23, scope: !1961)
!1976 = !DILocation(line: 16, column: 2, scope: !1961)
!1977 = !DILocation(line: 17, column: 2, scope: !1961)
!1978 = distinct !DISubprogram(name: "math.Trunc", linkageName: "math.Trunc", scope: !1979, file: !1979, line: 61, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1980)
!1979 = !DIFile(filename: "floor.go", directory: "/usr/local/go/src/math")
!1980 = !{!1981}
!1981 = !DILocalVariable(name: "x", arg: 1, scope: !1978, file: !1979, line: 61, type: !802)
!1982 = !DILocation(line: 61, column: 6, scope: !1978)
!1983 = distinct !DISubprogram(name: "math.Frexp", linkageName: "math.Frexp", scope: !1984, file: !1984, line: 17, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1985)
!1984 = !DIFile(filename: "frexp.go", directory: "/usr/local/go/src/math")
!1985 = !{!1986}
!1986 = !DILocalVariable(name: "f", arg: 1, scope: !1983, file: !1984, line: 17, type: !802)
!1987 = !DILocation(line: 17, column: 6, scope: !1983)
!1988 = !DILocation(line: 0, scope: !1983)
!1989 = !DILocation(line: 19, column: 20, scope: !1983)
!1990 = !DILocation(line: 19, column: 19, scope: !1983)
!1991 = !DILocation(line: 19, column: 3, scope: !1983)
!1992 = !DILocation(line: 21, column: 15, scope: !1983)
!1993 = !DILocation(line: 21, column: 14, scope: !1983)
!1994 = !DILocation(line: 21, column: 2, scope: !1983)
!1995 = distinct !DISubprogram(name: "math.archFrexp", linkageName: "math.archFrexp", scope: !2, file: !2, line: 92, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !1996)
!1996 = !{!1997}
!1997 = !DILocalVariable(name: "x", arg: 1, scope: !1995, file: !2, line: 92, type: !802)
!1998 = !DILocation(line: 92, column: 6, scope: !1995)
!1999 = !DILocation(line: 93, column: 7, scope: !1995)
!2000 = distinct !DISubprogram(name: "math.frexp", linkageName: "math.frexp", scope: !1984, file: !1984, line: 24, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !2001)
!2001 = !{!2002, !2003, !2004, !2005}
!2002 = !DILocalVariable(name: "f", arg: 1, scope: !2000, file: !1984, line: 24, type: !802)
!2003 = !DILocalVariable(name: "exp", scope: !2000, file: !1984, line: 24, type: !1797)
!2004 = !DILocalVariable(name: "x", scope: !2000, file: !1984, line: 33, type: !345)
!2005 = !DILocalVariable(name: "frac", scope: !2000, file: !1984, line: 24, type: !802)
!2006 = !DILocation(line: 24, column: 6, scope: !2000)
!2007 = !DILocation(line: 27, column: 7, scope: !2000)
!2008 = !DILocation(line: 27, column: 9, scope: !2000)
!2009 = !DILocation(line: 0, scope: !2000)
!2010 = !DILocation(line: 28, column: 10, scope: !2000)
!2011 = !DILocation(line: 28, column: 3, scope: !2000)
!2012 = !DILocation(line: 29, column: 13, scope: !2000)
!2013 = !DILocation(line: 29, column: 12, scope: !2000)
!2014 = !DILocation(line: 29, column: 19, scope: !2000)
!2015 = !DILocation(line: 30, column: 10, scope: !2000)
!2016 = !DILocation(line: 30, column: 3, scope: !2000)
!2017 = !DILocation(line: 32, column: 21, scope: !2000)
!2018 = !DILocation(line: 32, column: 20, scope: !2000)
!2019 = !DILocation(line: 32, column: 2, scope: !2000)
!2020 = !DILocation(line: 32, column: 5, scope: !2000)
!2021 = !DILocation(line: 33, column: 19, scope: !2000)
!2022 = !DILocation(line: 33, column: 18, scope: !2000)
!2023 = !DILocation(line: 33, column: 2, scope: !2000)
!2024 = !DILocation(line: 34, column: 14, scope: !2000)
!2025 = !DILocation(line: 34, column: 15, scope: !2000)
!2026 = !DILocation(line: 34, column: 23, scope: !2000)
!2027 = !DILocation(line: 34, column: 30, scope: !2000)
!2028 = !DILocation(line: 34, column: 37, scope: !2000)
!2029 = !DILocation(line: 34, column: 2, scope: !2000)
!2030 = !DILocation(line: 35, column: 2, scope: !2000)
!2031 = !DILocation(line: 36, column: 2, scope: !2000)
!2032 = !DILocation(line: 37, column: 25, scope: !2000)
!2033 = !DILocation(line: 37, column: 24, scope: !2000)
!2034 = !DILocation(line: 37, column: 2, scope: !2000)
!2035 = !DILocation(line: 38, column: 2, scope: !2000)
!2036 = !DILocation(line: 29, column: 28, scope: !2000)
!2037 = !DILocation(line: 29, column: 27, scope: !2000)
!2038 = distinct !DISubprogram(name: "math.Pow", linkageName: "math.Pow", scope: !2039, file: !2039, line: 48, type: !1844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !2040)
!2039 = !DIFile(filename: "pow.go", directory: "/usr/local/go/src/math")
!2040 = !{!2041, !2042}
!2041 = !DILocalVariable(name: "x", arg: 1, scope: !2038, file: !2039, line: 48, type: !802)
!2042 = !DILocalVariable(name: "y", arg: 2, scope: !2038, file: !2039, line: 48, type: !802)
!2043 = !DILocation(line: 48, column: 6, scope: !2038)
!2044 = !DILocation(line: 0, scope: !2038)
!2045 = !DILocation(line: 50, column: 18, scope: !2038)
!2046 = !DILocation(line: 50, column: 21, scope: !2038)
!2047 = !DILocation(line: 50, column: 17, scope: !2038)
!2048 = !DILocation(line: 50, column: 3, scope: !2038)
!2049 = !DILocation(line: 52, column: 13, scope: !2038)
!2050 = !DILocation(line: 52, column: 16, scope: !2038)
!2051 = !DILocation(line: 52, column: 12, scope: !2038)
!2052 = !DILocation(line: 52, column: 2, scope: !2038)
!2053 = distinct !DISubprogram(name: "math.archPow", linkageName: "math.archPow", scope: !2, file: !2, line: 128, type: !1844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !2054)
!2054 = !{!2055, !2056}
!2055 = !DILocalVariable(name: "x", arg: 1, scope: !2053, file: !2, line: 128, type: !802)
!2056 = !DILocalVariable(name: "y", arg: 2, scope: !2053, file: !2, line: 128, type: !802)
!2057 = !DILocation(line: 128, column: 6, scope: !2053)
!2058 = !DILocation(line: 129, column: 7, scope: !2053)
!2059 = distinct !DISubprogram(name: "math.pow", linkageName: "math.pow", scope: !2039, file: !2039, line: 55, type: !1844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !2060)
!2060 = !{!2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069}
!2061 = !DILocalVariable(name: "x", arg: 1, scope: !2059, file: !2039, line: 55, type: !802)
!2062 = !DILocalVariable(name: "y", arg: 2, scope: !2059, file: !2039, line: 55, type: !802)
!2063 = !DILocalVariable(name: "yi", scope: !2059, file: !2039, line: 101, type: !802)
!2064 = !DILocalVariable(name: "yf", scope: !2059, file: !2039, line: 101, type: !802)
!2065 = !DILocalVariable(name: "a1", scope: !2059, file: !2039, line: 119, type: !802)
!2066 = !DILocalVariable(name: "ae", scope: !2059, file: !2039, line: 120, type: !1797)
!2067 = !DILocalVariable(name: "x1", scope: !2059, file: !2039, line: 135, type: !802)
!2068 = !DILocalVariable(name: "xe", scope: !2059, file: !2039, line: 135, type: !1797)
!2069 = !DILocalVariable(name: "i", scope: !2059, file: !2039, line: 136, type: !1699)
!2070 = !DILocation(line: 55, column: 6, scope: !2059)
!2071 = !DILocation(line: 57, column: 7, scope: !2059)
!2072 = !DILocation(line: 57, column: 9, scope: !2059)
!2073 = !DILocation(line: 0, scope: !2059)
!2074 = !DILocation(line: 57, column: 14, scope: !2059)
!2075 = !DILocation(line: 58, column: 3, scope: !2059)
!2076 = !DILocation(line: 59, column: 7, scope: !2059)
!2077 = !DILocation(line: 59, column: 9, scope: !2059)
!2078 = !DILocation(line: 60, column: 10, scope: !2059)
!2079 = !DILocation(line: 60, column: 3, scope: !2059)
!2080 = !DILocation(line: 61, column: 13, scope: !2059)
!2081 = !DILocation(line: 61, column: 12, scope: !2059)
!2082 = !DILocation(line: 61, column: 16, scope: !2059)
!2083 = !DILocation(line: 62, column: 13, scope: !2059)
!2084 = !DILocation(line: 62, column: 3, scope: !2059)
!2085 = !DILocation(line: 63, column: 7, scope: !2059)
!2086 = !DILocation(line: 63, column: 9, scope: !2059)
!2087 = !DILocation(line: 65, column: 8, scope: !2059)
!2088 = !DILocation(line: 65, column: 10, scope: !2059)
!2089 = !DILocation(line: 66, column: 15, scope: !2059)
!2090 = !DILocation(line: 66, column: 14, scope: !2059)
!2091 = !DILocation(line: 66, column: 30, scope: !2059)
!2092 = !DILocation(line: 66, column: 29, scope: !2059)
!2093 = !DILocation(line: 67, column: 15, scope: !2059)
!2094 = !DILocation(line: 67, column: 5, scope: !2059)
!2095 = !DILocation(line: 69, column: 14, scope: !2059)
!2096 = !DILocation(line: 69, column: 4, scope: !2059)
!2097 = !DILocation(line: 70, column: 8, scope: !2059)
!2098 = !DILocation(line: 70, column: 10, scope: !2059)
!2099 = !DILocation(line: 71, column: 15, scope: !2059)
!2100 = !DILocation(line: 71, column: 14, scope: !2059)
!2101 = !DILocation(line: 71, column: 30, scope: !2059)
!2102 = !DILocation(line: 71, column: 29, scope: !2059)
!2103 = !DILocation(line: 72, column: 12, scope: !2059)
!2104 = !DILocation(line: 72, column: 5, scope: !2059)
!2105 = !DILocation(line: 74, column: 4, scope: !2059)
!2106 = !DILocation(line: 101, column: 21, scope: !2059)
!2107 = !DILocation(line: 101, column: 20, scope: !2059)
!2108 = !DILocation(line: 101, column: 16, scope: !2059)
!2109 = !DILocation(line: 101, column: 2, scope: !2059)
!2110 = !DILocation(line: 101, column: 6, scope: !2059)
!2111 = !DILocation(line: 102, column: 5, scope: !2059)
!2112 = !DILocation(line: 102, column: 8, scope: !2059)
!2113 = !DILocation(line: 102, column: 16, scope: !2059)
!2114 = !DILocation(line: 102, column: 18, scope: !2059)
!2115 = !DILocation(line: 103, column: 13, scope: !2059)
!2116 = !DILocation(line: 103, column: 3, scope: !2059)
!2117 = !DILocation(line: 105, column: 5, scope: !2059)
!2118 = !DILocation(line: 105, column: 8, scope: !2059)
!2119 = !DILocation(line: 109, column: 8, scope: !2059)
!2120 = !DILocation(line: 109, column: 10, scope: !2059)
!2121 = !DILocation(line: 110, column: 4, scope: !2059)
!2122 = !DILocation(line: 111, column: 13, scope: !2059)
!2123 = !DILocation(line: 111, column: 12, scope: !2059)
!2124 = !DILocation(line: 111, column: 16, scope: !2059)
!2125 = !DILocation(line: 111, column: 25, scope: !2059)
!2126 = !DILocation(line: 111, column: 27, scope: !2059)
!2127 = !DILocation(line: 111, column: 21, scope: !2059)
!2128 = !DILocation(line: 112, column: 4, scope: !2059)
!2129 = !DILocation(line: 114, column: 14, scope: !2059)
!2130 = !DILocation(line: 114, column: 4, scope: !2059)
!2131 = !DILocation(line: 119, column: 2, scope: !2059)
!2132 = !DILocation(line: 120, column: 2, scope: !2059)
!2133 = !DILocation(line: 123, column: 5, scope: !2059)
!2134 = !DILocation(line: 123, column: 8, scope: !2059)
!2135 = !DILocation(line: 124, column: 6, scope: !2059)
!2136 = !DILocation(line: 124, column: 9, scope: !2059)
!2137 = !DILocation(line: 125, column: 4, scope: !2059)
!2138 = !DILocation(line: 126, column: 4, scope: !2059)
!2139 = !DILocation(line: 128, column: 12, scope: !2059)
!2140 = !DILocation(line: 128, column: 21, scope: !2059)
!2141 = !DILocation(line: 128, column: 20, scope: !2059)
!2142 = !DILocation(line: 128, column: 15, scope: !2059)
!2143 = !DILocation(line: 128, column: 11, scope: !2059)
!2144 = !DILocation(line: 128, column: 3, scope: !2059)
!2145 = !DILocation(line: 135, column: 18, scope: !2059)
!2146 = !DILocation(line: 135, column: 17, scope: !2059)
!2147 = !DILocation(line: 135, column: 2, scope: !2059)
!2148 = !DILocation(line: 135, column: 6, scope: !2059)
!2149 = !DILocation(line: 136, column: 17, scope: !2059)
!2150 = !DILocation(line: 136, column: 16, scope: !2059)
!2151 = !DILocation(line: 136, column: 6, scope: !2059)
!2152 = !DILocation(line: 136, column: 22, scope: !2059)
!2153 = !DILocation(line: 136, column: 24, scope: !2059)
!2154 = !DILocation(line: 137, column: 6, scope: !2059)
!2155 = !DILocation(line: 137, column: 9, scope: !2059)
!2156 = !DILocation(line: 143, column: 10, scope: !2059)
!2157 = !DILocation(line: 143, column: 4, scope: !2059)
!2158 = !DILocation(line: 137, column: 29, scope: !2059)
!2159 = !DILocation(line: 137, column: 27, scope: !2059)
!2160 = !DILocation(line: 146, column: 6, scope: !2059)
!2161 = !DILocation(line: 146, column: 7, scope: !2059)
!2162 = !DILocation(line: 146, column: 10, scope: !2059)
!2163 = !DILocation(line: 147, column: 10, scope: !2059)
!2164 = !DILocation(line: 147, column: 4, scope: !2059)
!2165 = !DILocation(line: 148, column: 10, scope: !2059)
!2166 = !DILocation(line: 148, column: 4, scope: !2059)
!2167 = !DILocation(line: 150, column: 9, scope: !2059)
!2168 = !DILocation(line: 150, column: 3, scope: !2059)
!2169 = !DILocation(line: 151, column: 3, scope: !2059)
!2170 = !DILocation(line: 152, column: 6, scope: !2059)
!2171 = !DILocation(line: 152, column: 9, scope: !2059)
!2172 = !DILocation(line: 153, column: 10, scope: !2059)
!2173 = !DILocation(line: 153, column: 4, scope: !2059)
!2174 = !DILocation(line: 154, column: 4, scope: !2059)
!2175 = !DILocation(line: 136, column: 30, scope: !2059)
!2176 = !DILocation(line: 161, column: 5, scope: !2059)
!2177 = !DILocation(line: 161, column: 7, scope: !2059)
!2178 = !DILocation(line: 162, column: 12, scope: !2059)
!2179 = !DILocation(line: 162, column: 10, scope: !2059)
!2180 = !DILocation(line: 162, column: 3, scope: !2059)
!2181 = !DILocation(line: 163, column: 9, scope: !2059)
!2182 = !DILocation(line: 163, column: 8, scope: !2059)
!2183 = !DILocation(line: 163, column: 3, scope: !2059)
!2184 = !DILocation(line: 165, column: 15, scope: !2059)
!2185 = !DILocation(line: 165, column: 19, scope: !2059)
!2186 = !DILocation(line: 165, column: 14, scope: !2059)
!2187 = !DILocation(line: 165, column: 2, scope: !2059)
!2188 = !DILocation(line: 76, column: 13, scope: !2059)
!2189 = !DILocation(line: 76, column: 12, scope: !2059)
!2190 = !DILocation(line: 78, column: 8, scope: !2059)
!2191 = !DILocation(line: 78, column: 10, scope: !2059)
!2192 = !DILocation(line: 79, column: 4, scope: !2059)
!2193 = !DILocation(line: 80, column: 13, scope: !2059)
!2194 = !DILocation(line: 80, column: 12, scope: !2059)
!2195 = !DILocation(line: 80, column: 16, scope: !2059)
!2196 = !DILocation(line: 80, column: 30, scope: !2059)
!2197 = !DILocation(line: 80, column: 29, scope: !2059)
!2198 = !DILocation(line: 80, column: 21, scope: !2059)
!2199 = !DILocation(line: 81, column: 4, scope: !2059)
!2200 = !DILocation(line: 83, column: 14, scope: !2059)
!2201 = !DILocation(line: 83, column: 4, scope: !2059)
!2202 = !DILocation(line: 85, column: 13, scope: !2059)
!2203 = !DILocation(line: 85, column: 12, scope: !2059)
!2204 = !DILocation(line: 86, column: 12, scope: !2059)
!2205 = !DILocation(line: 86, column: 11, scope: !2059)
!2206 = !DILocation(line: 87, column: 17, scope: !2059)
!2207 = !DILocation(line: 87, column: 16, scope: !2059)
!2208 = !DILocation(line: 87, column: 21, scope: !2059)
!2209 = !DILocation(line: 87, column: 20, scope: !2059)
!2210 = !DILocation(line: 87, column: 14, scope: !2059)
!2211 = !DILocation(line: 87, column: 4, scope: !2059)
!2212 = !DILocation(line: 90, column: 8, scope: !2059)
!2213 = !DILocation(line: 90, column: 10, scope: !2059)
!2214 = !DILocation(line: 91, column: 4, scope: !2059)
!2215 = !DILocation(line: 92, column: 8, scope: !2059)
!2216 = !DILocation(line: 92, column: 10, scope: !2059)
!2217 = !DILocation(line: 93, column: 14, scope: !2059)
!2218 = !DILocation(line: 93, column: 4, scope: !2059)
!2219 = !DILocation(line: 95, column: 7, scope: !2059)
!2220 = !DILocation(line: 95, column: 9, scope: !2059)
!2221 = !DILocation(line: 96, column: 15, scope: !2059)
!2222 = !DILocation(line: 96, column: 14, scope: !2059)
!2223 = !DILocation(line: 96, column: 3, scope: !2059)
!2224 = !DILocation(line: 97, column: 7, scope: !2059)
!2225 = !DILocation(line: 97, column: 9, scope: !2059)
!2226 = !DILocation(line: 98, column: 19, scope: !2059)
!2227 = !DILocation(line: 98, column: 18, scope: !2059)
!2228 = !DILocation(line: 98, column: 12, scope: !2059)
!2229 = !DILocation(line: 98, column: 3, scope: !2059)
!2230 = !DILocation(line: 61, column: 25, scope: !2059)
!2231 = !DILocation(line: 61, column: 24, scope: !2059)
!2232 = !DILocation(line: 57, column: 17, scope: !2059)
!2233 = !DILocation(line: 57, column: 19, scope: !2059)
!2234 = distinct !DISubprogram(name: "math.isOddInt", linkageName: "math.isOddInt", scope: !2039, file: !2039, line: 7, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !2235)
!2235 = !{!2236, !2237, !2238}
!2236 = !DILocalVariable(name: "x", arg: 1, scope: !2234, file: !2039, line: 7, type: !802)
!2237 = !DILocalVariable(name: "xi", scope: !2234, file: !2039, line: 17, type: !802)
!2238 = !DILocalVariable(name: "xf", scope: !2234, file: !2039, line: 17, type: !802)
!2239 = !DILocation(line: 7, column: 6, scope: !2234)
!2240 = !DILocation(line: 8, column: 9, scope: !2234)
!2241 = !DILocation(line: 8, column: 8, scope: !2234)
!2242 = !DILocation(line: 8, column: 12, scope: !2234)
!2243 = !DILocation(line: 0, scope: !2234)
!2244 = !DILocation(line: 14, column: 3, scope: !2234)
!2245 = !DILocation(line: 17, column: 17, scope: !2234)
!2246 = !DILocation(line: 17, column: 16, scope: !2234)
!2247 = !DILocation(line: 17, column: 2, scope: !2234)
!2248 = !DILocation(line: 17, column: 6, scope: !2234)
!2249 = !DILocation(line: 18, column: 9, scope: !2234)
!2250 = !DILocation(line: 18, column: 12, scope: !2234)
!2251 = !DILocation(line: 18, column: 26, scope: !2234)
!2252 = !DILocation(line: 18, column: 25, scope: !2234)
!2253 = !DILocation(line: 18, column: 29, scope: !2234)
!2254 = !DILocation(line: 18, column: 32, scope: !2234)
!2255 = !DILocation(line: 18, column: 17, scope: !2234)
!2256 = !DILocation(line: 18, column: 2, scope: !2234)
!2257 = distinct !DISubprogram(name: "sync/atomic.SwapUint32", linkageName: "sync/atomic.SwapUint32", scope: !2258, file: !2258, line: 77, type: !2259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !2262)
!2258 = !DIFile(filename: "doc.go", directory: "/usr/local/go/src/sync/atomic")
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!2261, !108}
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64, dwarfAddressSpace: 0)
!2262 = !{!2263, !2264}
!2263 = !DILocalVariable(name: "addr", arg: 1, scope: !2257, file: !2258, line: 77, type: !2261)
!2264 = !DILocalVariable(name: "new", arg: 2, scope: !2257, file: !2258, line: 77, type: !108)
!2265 = !DILocation(line: 77, column: 6, scope: !2257)
!2266 = distinct !DISubprogram(name: "sync/atomic.CompareAndSwapUint32", linkageName: "sync/atomic.CompareAndSwapUint32", scope: !2258, file: !2258, line: 99, type: !2267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !2269)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!2261, !108, !108}
!2269 = !{!2270, !2271, !2272}
!2270 = !DILocalVariable(name: "addr", arg: 1, scope: !2266, file: !2258, line: 99, type: !2261)
!2271 = !DILocalVariable(name: "old", arg: 2, scope: !2266, file: !2258, line: 99, type: !108)
!2272 = !DILocalVariable(name: "new", arg: 3, scope: !2266, file: !2258, line: 99, type: !108)
!2273 = !DILocation(line: 99, column: 6, scope: !2266)
!2274 = distinct !DISubprogram(name: "sync/atomic.AddUint32", linkageName: "sync/atomic.AddUint32", scope: !2258, file: !2258, line: 123, type: !2259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !2275)
!2275 = !{!2276, !2277}
!2276 = !DILocalVariable(name: "addr", arg: 1, scope: !2274, file: !2258, line: 123, type: !2261)
!2277 = !DILocalVariable(name: "delta", arg: 2, scope: !2274, file: !2258, line: 123, type: !108)
!2278 = !DILocation(line: 123, column: 6, scope: !2274)
!2279 = distinct !DISubprogram(name: "sync/atomic.LoadUint32", linkageName: "sync/atomic.LoadUint32", scope: !2258, file: !2258, line: 183, type: !2280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !2282)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!2261}
!2282 = !{!2283}
!2283 = !DILocalVariable(name: "addr", arg: 1, scope: !2279, file: !2258, line: 183, type: !2261)
!2284 = !DILocation(line: 183, column: 6, scope: !2279)
!2285 = distinct !DISubprogram(name: "sync/atomic.StoreUint32", linkageName: "sync/atomic.StoreUint32", scope: !2258, file: !2258, line: 205, type: !2259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !2286)
!2286 = !{!2287, !2288}
!2287 = !DILocalVariable(name: "addr", arg: 1, scope: !2285, file: !2258, line: 205, type: !2261)
!2288 = !DILocalVariable(name: "val", arg: 2, scope: !2285, file: !2258, line: 205, type: !108)
!2289 = !DILocation(line: 205, column: 6, scope: !2285)
!2290 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Add", linkageName: "(*sync/atomic.Uint32).Add", scope: !2291, file: !2291, line: 161, type: !2292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !2295)
!2291 = !DIFile(filename: "type.go", directory: "/usr/local/go/src/sync/atomic")
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!2294, !108}
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64, dwarfAddressSpace: 0)
!2295 = !{!2296, !2297}
!2296 = !DILocalVariable(name: "x", arg: 1, scope: !2290, file: !2291, line: 161, type: !2294)
!2297 = !DILocalVariable(name: "delta", arg: 2, scope: !2290, file: !2291, line: 161, type: !108)
!2298 = !DILocation(line: 161, column: 18, scope: !2290)
!2299 = !DILocation(line: 161, column: 69, scope: !2290)
!2300 = !DILocation(line: 161, column: 71, scope: !2290)
!2301 = !DILocation(line: 161, column: 74, scope: !2290)
!2302 = !DILocation(line: 161, column: 67, scope: !2290)
!2303 = !DILocation(line: 161, column: 51, scope: !2290)
!2304 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).CompareAndSwap", linkageName: "(*sync/atomic.Uint32).CompareAndSwap", scope: !2291, file: !2291, line: 156, type: !2305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !2307)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!2294, !108, !108}
!2307 = !{!2308, !2309, !2310}
!2308 = !DILocalVariable(name: "x", arg: 1, scope: !2304, file: !2291, line: 156, type: !2294)
!2309 = !DILocalVariable(name: "old", arg: 2, scope: !2304, file: !2291, line: 156, type: !108)
!2310 = !DILocalVariable(name: "new", arg: 3, scope: !2304, file: !2291, line: 156, type: !108)
!2311 = !DILocation(line: 156, column: 18, scope: !2304)
!2312 = !DILocation(line: 157, column: 31, scope: !2304)
!2313 = !DILocation(line: 157, column: 33, scope: !2304)
!2314 = !DILocation(line: 157, column: 36, scope: !2304)
!2315 = !DILocation(line: 157, column: 41, scope: !2304)
!2316 = !DILocation(line: 157, column: 29, scope: !2304)
!2317 = !DILocation(line: 157, column: 2, scope: !2304)
!2318 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Load", linkageName: "(*sync/atomic.Uint32).Load", scope: !2291, file: !2291, line: 147, type: !2319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !2321)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!2294}
!2321 = !{!2322}
!2322 = !DILocalVariable(name: "x", arg: 1, scope: !2318, file: !2291, line: 147, type: !2294)
!2323 = !DILocation(line: 147, column: 18, scope: !2318)
!2324 = !DILocation(line: 147, column: 53, scope: !2318)
!2325 = !DILocation(line: 147, column: 55, scope: !2318)
!2326 = !DILocation(line: 147, column: 51, scope: !2318)
!2327 = !DILocation(line: 147, column: 34, scope: !2318)
!2328 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Store", linkageName: "(*sync/atomic.Uint32).Store", scope: !2291, file: !2291, line: 150, type: !2292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !2329)
!2329 = !{!2330, !2331}
!2330 = !DILocalVariable(name: "x", arg: 1, scope: !2328, file: !2291, line: 150, type: !2294)
!2331 = !DILocalVariable(name: "val", arg: 2, scope: !2328, file: !2291, line: 150, type: !108)
!2332 = !DILocation(line: 150, column: 18, scope: !2328)
!2333 = !DILocation(line: 150, column: 51, scope: !2328)
!2334 = !DILocation(line: 150, column: 53, scope: !2328)
!2335 = !DILocation(line: 150, column: 56, scope: !2328)
!2336 = !DILocation(line: 150, column: 49, scope: !2328)
!2337 = !DILocation(line: 150, column: 62, scope: !2328)
!2338 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Swap", linkageName: "(*sync/atomic.Uint32).Swap", scope: !2291, file: !2291, line: 153, type: !2292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !2339)
!2339 = !{!2340, !2341}
!2340 = !DILocalVariable(name: "x", arg: 1, scope: !2338, file: !2291, line: 153, type: !2294)
!2341 = !DILocalVariable(name: "new", arg: 2, scope: !2338, file: !2291, line: 153, type: !108)
!2342 = !DILocation(line: 153, column: 18, scope: !2338)
!2343 = !DILocation(line: 153, column: 69, scope: !2338)
!2344 = !DILocation(line: 153, column: 71, scope: !2338)
!2345 = !DILocation(line: 153, column: 74, scope: !2338)
!2346 = !DILocation(line: 153, column: 67, scope: !2338)
!2347 = !DILocation(line: 153, column: 50, scope: !2338)
!2348 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wait", linkageName: "(*internal/futex.Futex).Wait", scope: !2349, file: !2349, line: 25, type: !2350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !2353)
!2349 = !DIFile(filename: "futex.go", directory: "/usr/local/lib/tinygo/src/internal/futex")
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!2352, !108}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64, dwarfAddressSpace: 0)
!2353 = !{!2354, !2355}
!2354 = !DILocalVariable(name: "f", arg: 1, scope: !2348, file: !2349, line: 25, type: !2352)
!2355 = !DILocalVariable(name: "cmp", arg: 2, scope: !2348, file: !2349, line: 25, type: !108)
!2356 = !DILocation(line: 25, column: 17, scope: !2348)
!2357 = !DILocation(line: 26, column: 46, scope: !2348)
!2358 = !DILocation(line: 26, column: 48, scope: !2348)
!2359 = !DILocation(line: 26, column: 58, scope: !2348)
!2360 = !DILocation(line: 26, column: 19, scope: !2348)
!2361 = !DILocation(line: 44, column: 2, scope: !2348)
!2362 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wake", linkageName: "(*internal/futex.Futex).Wake", scope: !2349, file: !2349, line: 53, type: !2363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !2365)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!2352}
!2365 = !{!2366}
!2366 = !DILocalVariable(name: "f", arg: 1, scope: !2362, file: !2349, line: 53, type: !2352)
!2367 = !DILocation(line: 53, column: 17, scope: !2362)
!2368 = !DILocation(line: 54, column: 46, scope: !2362)
!2369 = !DILocation(line: 54, column: 48, scope: !2362)
!2370 = !DILocation(line: 54, column: 19, scope: !2362)
!2371 = !DILocation(line: 55, column: 2, scope: !2362)
!2372 = distinct !DISubprogram(name: "(*internal/futex.Futex).WakeAll", linkageName: "(*internal/futex.Futex).WakeAll", scope: !2349, file: !2349, line: 58, type: !2363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !2373)
!2373 = !{!2374}
!2374 = !DILocalVariable(name: "f", arg: 1, scope: !2372, file: !2349, line: 58, type: !2352)
!2375 = !DILocation(line: 58, column: 17, scope: !2372)
!2376 = !DILocation(line: 59, column: 50, scope: !2372)
!2377 = !DILocation(line: 59, column: 52, scope: !2372)
!2378 = !DILocation(line: 59, column: 23, scope: !2372)
!2379 = !DILocation(line: 60, column: 2, scope: !2372)
!2380 = distinct !DISubprogram(name: "(internal/gclayout.Layout).AsPtr", linkageName: "(internal/gclayout.Layout).AsPtr", scope: !2381, file: !2381, line: 26, type: !2382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1021, retainedNodes: !2385)
!2381 = !DIFile(filename: "gclayout.go", directory: "/usr/local/lib/tinygo/src/internal/gclayout")
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!2384}
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/gclayout.Layout", baseType: !53)
!2385 = !{!2386}
!2386 = !DILocalVariable(name: "l", arg: 1, scope: !2380, file: !2381, line: 26, type: !2384)
!2387 = !DILocation(line: 26, column: 17, scope: !2380)
!2388 = !DILocation(line: 26, column: 64, scope: !2380)
!2389 = !DILocation(line: 26, column: 63, scope: !2380)
!2390 = !DILocation(line: 26, column: 42, scope: !2380)
!2391 = distinct !DISubprogram(name: "internal/itoa.Itoa", linkageName: "internal/itoa.Itoa", scope: !13, file: !13, line: 10, type: !1795, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !2392)
!2392 = !{!2393}
!2393 = !DILocalVariable(name: "val", arg: 1, scope: !2391, file: !13, line: 10, type: !1797)
!2394 = !DILocation(line: 10, column: 6, scope: !2391)
!2395 = !DILocation(line: 11, column: 5, scope: !2391)
!2396 = !DILocation(line: 11, column: 9, scope: !2391)
!2397 = !DILocation(line: 0, scope: !2391)
!2398 = !DILocation(line: 12, column: 28, scope: !2391)
!2399 = !DILocation(line: 12, column: 27, scope: !2391)
!2400 = !DILocation(line: 12, column: 21, scope: !2391)
!2401 = !DILocation(line: 12, column: 14, scope: !2391)
!2402 = !DILocation(line: 12, column: 3, scope: !2391)
!2403 = !DILocation(line: 14, column: 20, scope: !2391)
!2404 = !DILocation(line: 14, column: 14, scope: !2391)
!2405 = !DILocation(line: 14, column: 2, scope: !2391)
!2406 = distinct !DISubprogram(name: "internal/itoa.Uitoa", linkageName: "internal/itoa.Uitoa", scope: !13, file: !13, line: 18, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !2407)
!2407 = !{!2408, !2409, !2410}
!2408 = !DILocalVariable(name: "val", arg: 1, scope: !2406, file: !13, line: 18, type: !1738)
!2409 = !DILocalVariable(name: "i", scope: !2406, file: !13, line: 23, type: !1797)
!2410 = !DILocalVariable(name: "q", scope: !2406, file: !13, line: 25, type: !1738)
!2411 = !DILocation(line: 18, column: 6, scope: !2406)
!2412 = !DILocation(line: 19, column: 5, scope: !2406)
!2413 = !DILocation(line: 19, column: 9, scope: !2406)
!2414 = !DILocation(line: 0, scope: !2406)
!2415 = !DILocation(line: 20, column: 3, scope: !2406)
!2416 = !DILocation(line: 22, column: 6, scope: !2406)
!2417 = !DILocation(line: 23, column: 2, scope: !2406)
!2418 = !DILocation(line: 18, column: 12, scope: !2406)
!2419 = !DILocation(line: 24, column: 6, scope: !2406)
!2420 = !DILocation(line: 24, column: 10, scope: !2406)
!2421 = !DILocation(line: 25, column: 8, scope: !2406)
!2422 = !DILocation(line: 25, column: 12, scope: !2406)
!2423 = !DILocation(line: 25, column: 3, scope: !2406)
!2424 = !DILocation(line: 26, column: 7, scope: !2406)
!2425 = !DILocation(line: 26, column: 23, scope: !2406)
!2426 = !DILocation(line: 26, column: 21, scope: !2406)
!2427 = !DILocation(line: 26, column: 29, scope: !2406)
!2428 = !DILocation(line: 26, column: 30, scope: !2406)
!2429 = !DILocation(line: 26, column: 27, scope: !2406)
!2430 = !DILocation(line: 26, column: 16, scope: !2406)
!2431 = !DILocation(line: 26, column: 6, scope: !2406)
!2432 = !DILocation(line: 27, column: 3, scope: !2406)
!2433 = !DILocation(line: 28, column: 9, scope: !2406)
!2434 = !DILocation(line: 28, column: 3, scope: !2406)
!2435 = !DILocation(line: 31, column: 6, scope: !2406)
!2436 = !DILocation(line: 31, column: 22, scope: !2406)
!2437 = !DILocation(line: 31, column: 20, scope: !2406)
!2438 = !DILocation(line: 31, column: 15, scope: !2406)
!2439 = !DILocation(line: 31, column: 5, scope: !2406)
!2440 = !DILocation(line: 32, column: 20, scope: !2406)
!2441 = !DILocation(line: 32, column: 19, scope: !2406)
!2442 = !DILocation(line: 32, column: 15, scope: !2406)
!2443 = !DILocation(line: 32, column: 2, scope: !2406)
!2444 = distinct !DISubprogram(name: "unicode/utf8.DecodeRuneInString", linkageName: "unicode/utf8.DecodeRuneInString", scope: !21, file: !21, line: 219, type: !2445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!48}
!2447 = !{!2448, !2449, !2451}
!2448 = !DILocalVariable(name: "s", arg: 1, scope: !2444, file: !21, line: 219, type: !48)
!2449 = !DILocalVariable(name: "r", scope: !2444, file: !21, line: 219, type: !2450)
!2450 = !DIBasicType(name: "rune", size: 32, encoding: DW_ATE_signed)
!2451 = !DILocalVariable(name: "size", scope: !2444, file: !21, line: 219, type: !1797)
!2452 = !DILocation(line: 219, column: 6, scope: !2444)
!2453 = !DILocation(line: 223, column: 5, scope: !2444)
!2454 = !DILocation(line: 223, column: 7, scope: !2444)
!2455 = !DILocation(line: 0, scope: !2444)
!2456 = !DILocation(line: 223, column: 16, scope: !2444)
!2457 = !DILocation(line: 223, column: 17, scope: !2444)
!2458 = !DILocation(line: 223, column: 21, scope: !2444)
!2459 = !DILocation(line: 224, column: 15, scope: !2444)
!2460 = !DILocation(line: 224, column: 16, scope: !2444)
!2461 = !DILocation(line: 224, column: 14, scope: !2444)
!2462 = !DILocation(line: 224, column: 3, scope: !2444)
!2463 = !DILocation(line: 226, column: 36, scope: !2444)
!2464 = !DILocation(line: 226, column: 35, scope: !2444)
!2465 = !DILocation(line: 226, column: 3, scope: !2444)
!2466 = !DILocation(line: 226, column: 6, scope: !2444)
!2467 = !DILocation(line: 228, column: 2, scope: !2444)
!2468 = distinct !DISubprogram(name: "unicode/utf8.decodeRuneInStringSlow", linkageName: "unicode/utf8.decodeRuneInStringSlow", scope: !21, file: !21, line: 231, type: !2445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2469)
!2469 = !{!2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479}
!2470 = !DILocalVariable(name: "s", arg: 1, scope: !2468, file: !21, line: 231, type: !48)
!2471 = !DILocalVariable(name: "n", scope: !2468, file: !21, line: 232, type: !1797)
!2472 = !DILocalVariable(name: "s0", scope: !2468, file: !21, line: 236, type: !540)
!2473 = !DILocalVariable(name: "x", scope: !2468, file: !21, line: 237, type: !4)
!2474 = !DILocalVariable(name: "mask", scope: !2468, file: !21, line: 242, type: !2450)
!2475 = !DILocalVariable(name: "sz", scope: !2468, file: !21, line: 245, type: !1797)
!2476 = !DILocalVariable(name: "accept", scope: !2468, file: !21, line: 246, type: !28)
!2477 = !DILocalVariable(name: "s1", scope: !2468, file: !21, line: 250, type: !540)
!2478 = !DILocalVariable(name: "s2", scope: !2468, file: !21, line: 257, type: !540)
!2479 = !DILocalVariable(name: "s3", scope: !2468, file: !21, line: 264, type: !540)
!2480 = !DILocation(line: 231, column: 6, scope: !2468)
!2481 = !DILocation(line: 232, column: 11, scope: !2468)
!2482 = !DILocation(line: 232, column: 10, scope: !2468)
!2483 = !DILocation(line: 232, column: 2, scope: !2468)
!2484 = !DILocation(line: 233, column: 5, scope: !2468)
!2485 = !DILocation(line: 233, column: 7, scope: !2468)
!2486 = !DILocation(line: 0, scope: !2468)
!2487 = !DILocation(line: 234, column: 3, scope: !2468)
!2488 = !DILocation(line: 236, column: 8, scope: !2468)
!2489 = !DILocation(line: 236, column: 9, scope: !2468)
!2490 = !DILocation(line: 236, column: 2, scope: !2468)
!2491 = !DILocation(line: 237, column: 13, scope: !2468)
!2492 = !DILocation(line: 237, column: 12, scope: !2468)
!2493 = !DILocation(line: 237, column: 2, scope: !2468)
!2494 = !DILocation(line: 238, column: 5, scope: !2468)
!2495 = !DILocation(line: 238, column: 7, scope: !2468)
!2496 = !DILocation(line: 242, column: 16, scope: !2468)
!2497 = !DILocation(line: 242, column: 15, scope: !2468)
!2498 = !DILocation(line: 242, column: 19, scope: !2468)
!2499 = !DILocation(line: 242, column: 25, scope: !2468)
!2500 = !DILocation(line: 242, column: 3, scope: !2468)
!2501 = !DILocation(line: 243, column: 15, scope: !2468)
!2502 = !DILocation(line: 243, column: 16, scope: !2468)
!2503 = !DILocation(line: 243, column: 14, scope: !2468)
!2504 = !DILocation(line: 243, column: 22, scope: !2468)
!2505 = !DILocation(line: 243, column: 20, scope: !2468)
!2506 = !DILocation(line: 243, column: 39, scope: !2468)
!2507 = !DILocation(line: 243, column: 38, scope: !2468)
!2508 = !DILocation(line: 243, column: 27, scope: !2468)
!2509 = !DILocation(line: 243, column: 3, scope: !2468)
!2510 = !DILocation(line: 245, column: 12, scope: !2468)
!2511 = !DILocation(line: 245, column: 14, scope: !2468)
!2512 = !DILocation(line: 245, column: 11, scope: !2468)
!2513 = !DILocation(line: 245, column: 2, scope: !2468)
!2514 = !DILocation(line: 246, column: 25, scope: !2468)
!2515 = !DILocation(line: 246, column: 26, scope: !2468)
!2516 = !DILocation(line: 246, column: 24, scope: !2468)
!2517 = !DILocation(line: 246, column: 2, scope: !2468)
!2518 = !DILocation(line: 247, column: 5, scope: !2468)
!2519 = !DILocation(line: 247, column: 9, scope: !2468)
!2520 = !DILocation(line: 247, column: 7, scope: !2468)
!2521 = !DILocation(line: 248, column: 3, scope: !2468)
!2522 = !DILocation(line: 250, column: 8, scope: !2468)
!2523 = !DILocation(line: 250, column: 9, scope: !2468)
!2524 = !DILocation(line: 250, column: 2, scope: !2468)
!2525 = !DILocation(line: 251, column: 5, scope: !2468)
!2526 = !DILocation(line: 251, column: 17, scope: !2468)
!2527 = !DILocation(line: 251, column: 8, scope: !2468)
!2528 = !DILocation(line: 252, column: 3, scope: !2468)
!2529 = !DILocation(line: 251, column: 30, scope: !2468)
!2530 = !DILocation(line: 251, column: 35, scope: !2468)
!2531 = !DILocation(line: 251, column: 33, scope: !2468)
!2532 = !DILocation(line: 254, column: 5, scope: !2468)
!2533 = !DILocation(line: 254, column: 8, scope: !2468)
!2534 = !DILocation(line: 255, column: 15, scope: !2468)
!2535 = !DILocation(line: 255, column: 17, scope: !2468)
!2536 = !DILocation(line: 255, column: 14, scope: !2468)
!2537 = !DILocation(line: 255, column: 24, scope: !2468)
!2538 = !DILocation(line: 255, column: 35, scope: !2468)
!2539 = !DILocation(line: 255, column: 37, scope: !2468)
!2540 = !DILocation(line: 255, column: 34, scope: !2468)
!2541 = !DILocation(line: 255, column: 28, scope: !2468)
!2542 = !DILocation(line: 255, column: 3, scope: !2468)
!2543 = !DILocation(line: 257, column: 8, scope: !2468)
!2544 = !DILocation(line: 257, column: 9, scope: !2468)
!2545 = !DILocation(line: 257, column: 2, scope: !2468)
!2546 = !DILocation(line: 258, column: 5, scope: !2468)
!2547 = !DILocation(line: 258, column: 8, scope: !2468)
!2548 = !DILocation(line: 259, column: 3, scope: !2468)
!2549 = !DILocation(line: 258, column: 25, scope: !2468)
!2550 = !DILocation(line: 258, column: 23, scope: !2468)
!2551 = !DILocation(line: 261, column: 5, scope: !2468)
!2552 = !DILocation(line: 261, column: 8, scope: !2468)
!2553 = !DILocation(line: 262, column: 15, scope: !2468)
!2554 = !DILocation(line: 262, column: 17, scope: !2468)
!2555 = !DILocation(line: 262, column: 14, scope: !2468)
!2556 = !DILocation(line: 262, column: 24, scope: !2468)
!2557 = !DILocation(line: 262, column: 36, scope: !2468)
!2558 = !DILocation(line: 262, column: 38, scope: !2468)
!2559 = !DILocation(line: 262, column: 35, scope: !2468)
!2560 = !DILocation(line: 262, column: 45, scope: !2468)
!2561 = !DILocation(line: 262, column: 29, scope: !2468)
!2562 = !DILocation(line: 262, column: 56, scope: !2468)
!2563 = !DILocation(line: 262, column: 58, scope: !2468)
!2564 = !DILocation(line: 262, column: 55, scope: !2468)
!2565 = !DILocation(line: 262, column: 49, scope: !2468)
!2566 = !DILocation(line: 262, column: 3, scope: !2468)
!2567 = !DILocation(line: 264, column: 8, scope: !2468)
!2568 = !DILocation(line: 264, column: 9, scope: !2468)
!2569 = !DILocation(line: 264, column: 2, scope: !2468)
!2570 = !DILocation(line: 265, column: 5, scope: !2468)
!2571 = !DILocation(line: 265, column: 8, scope: !2468)
!2572 = !DILocation(line: 266, column: 3, scope: !2468)
!2573 = !DILocation(line: 265, column: 25, scope: !2468)
!2574 = !DILocation(line: 265, column: 23, scope: !2468)
!2575 = !DILocation(line: 268, column: 14, scope: !2468)
!2576 = !DILocation(line: 268, column: 16, scope: !2468)
!2577 = !DILocation(line: 268, column: 13, scope: !2468)
!2578 = !DILocation(line: 268, column: 23, scope: !2468)
!2579 = !DILocation(line: 268, column: 35, scope: !2468)
!2580 = !DILocation(line: 268, column: 37, scope: !2468)
!2581 = !DILocation(line: 268, column: 34, scope: !2468)
!2582 = !DILocation(line: 268, column: 44, scope: !2468)
!2583 = !DILocation(line: 268, column: 28, scope: !2468)
!2584 = !DILocation(line: 268, column: 56, scope: !2468)
!2585 = !DILocation(line: 268, column: 58, scope: !2468)
!2586 = !DILocation(line: 268, column: 55, scope: !2468)
!2587 = !DILocation(line: 268, column: 65, scope: !2468)
!2588 = !DILocation(line: 268, column: 49, scope: !2468)
!2589 = !DILocation(line: 268, column: 76, scope: !2468)
!2590 = !DILocation(line: 268, column: 78, scope: !2468)
!2591 = !DILocation(line: 268, column: 75, scope: !2468)
!2592 = !DILocation(line: 268, column: 69, scope: !2468)
!2593 = !DILocation(line: 268, column: 2, scope: !2468)
!2594 = distinct !DISubprogram(name: "unicode/utf8.EncodeRune", linkageName: "unicode/utf8.EncodeRune", scope: !21, file: !21, line: 368, type: !2595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2601)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!2597, !2450}
!2597 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]byte", size: 192, align: 64, elements: !2598)
!2598 = !{!2599, !52, !680}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !2600, size: 64, align: 64)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64, align: 64, dwarfAddressSpace: 0)
!2601 = !{!2602, !2603}
!2602 = !DILocalVariable(name: "p", arg: 1, scope: !2594, file: !21, line: 368, type: !2597)
!2603 = !DILocalVariable(name: "r", arg: 2, scope: !2594, file: !21, line: 368, type: !2450)
!2604 = !DILocation(line: 368, column: 6, scope: !2594)
!2605 = !DILocation(line: 370, column: 12, scope: !2594)
!2606 = !DILocation(line: 370, column: 15, scope: !2594)
!2607 = !DILocation(line: 0, scope: !2594)
!2608 = !DILocation(line: 371, column: 3, scope: !2594)
!2609 = !DILocation(line: 371, column: 15, scope: !2594)
!2610 = !DILocation(line: 371, column: 14, scope: !2594)
!2611 = !DILocation(line: 371, column: 4, scope: !2594)
!2612 = !DILocation(line: 372, column: 3, scope: !2594)
!2613 = !DILocation(line: 374, column: 28, scope: !2594)
!2614 = !DILocation(line: 374, column: 31, scope: !2594)
!2615 = !DILocation(line: 374, column: 27, scope: !2594)
!2616 = !DILocation(line: 374, column: 2, scope: !2594)
!2617 = distinct !DISubprogram(name: "unicode/utf8.encodeRuneNonASCII", linkageName: "unicode/utf8.encodeRuneNonASCII", scope: !21, file: !21, line: 377, type: !2595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2618)
!2618 = !{!2619, !2620, !2621}
!2619 = !DILocalVariable(name: "p", arg: 1, scope: !2617, file: !21, line: 377, type: !2597)
!2620 = !DILocalVariable(name: "r", arg: 2, scope: !2617, file: !21, line: 377, type: !2450)
!2621 = !DILocalVariable(name: "i", scope: !2617, file: !21, line: 379, type: !108)
!2622 = !DILocation(line: 377, column: 6, scope: !2617)
!2623 = !DILocation(line: 379, column: 21, scope: !2617)
!2624 = !DILocation(line: 379, column: 9, scope: !2617)
!2625 = !DILocation(line: 380, column: 7, scope: !2617)
!2626 = !DILocation(line: 380, column: 9, scope: !2617)
!2627 = !DILocation(line: 0, scope: !2617)
!2628 = !DILocation(line: 381, column: 7, scope: !2617)
!2629 = !DILocation(line: 381, column: 8, scope: !2617)
!2630 = !DILocation(line: 382, column: 3, scope: !2617)
!2631 = !DILocation(line: 382, column: 20, scope: !2617)
!2632 = !DILocation(line: 382, column: 21, scope: !2617)
!2633 = !DILocation(line: 382, column: 19, scope: !2617)
!2634 = !DILocation(line: 382, column: 13, scope: !2617)
!2635 = !DILocation(line: 382, column: 4, scope: !2617)
!2636 = !DILocation(line: 383, column: 3, scope: !2617)
!2637 = !DILocation(line: 383, column: 20, scope: !2617)
!2638 = !DILocation(line: 383, column: 19, scope: !2617)
!2639 = !DILocation(line: 383, column: 22, scope: !2617)
!2640 = !DILocation(line: 383, column: 13, scope: !2617)
!2641 = !DILocation(line: 383, column: 4, scope: !2617)
!2642 = !DILocation(line: 384, column: 3, scope: !2617)
!2643 = !DILocation(line: 385, column: 7, scope: !2617)
!2644 = !DILocation(line: 385, column: 9, scope: !2617)
!2645 = !DILocation(line: 386, column: 7, scope: !2617)
!2646 = !DILocation(line: 386, column: 8, scope: !2617)
!2647 = !DILocation(line: 387, column: 3, scope: !2617)
!2648 = !DILocation(line: 387, column: 20, scope: !2617)
!2649 = !DILocation(line: 387, column: 21, scope: !2617)
!2650 = !DILocation(line: 387, column: 19, scope: !2617)
!2651 = !DILocation(line: 387, column: 13, scope: !2617)
!2652 = !DILocation(line: 387, column: 4, scope: !2617)
!2653 = !DILocation(line: 388, column: 3, scope: !2617)
!2654 = !DILocation(line: 388, column: 20, scope: !2617)
!2655 = !DILocation(line: 388, column: 21, scope: !2617)
!2656 = !DILocation(line: 388, column: 19, scope: !2617)
!2657 = !DILocation(line: 388, column: 25, scope: !2617)
!2658 = !DILocation(line: 388, column: 13, scope: !2617)
!2659 = !DILocation(line: 388, column: 4, scope: !2617)
!2660 = !DILocation(line: 389, column: 3, scope: !2617)
!2661 = !DILocation(line: 389, column: 20, scope: !2617)
!2662 = !DILocation(line: 389, column: 19, scope: !2617)
!2663 = !DILocation(line: 389, column: 22, scope: !2617)
!2664 = !DILocation(line: 389, column: 13, scope: !2617)
!2665 = !DILocation(line: 389, column: 4, scope: !2617)
!2666 = !DILocation(line: 390, column: 3, scope: !2617)
!2667 = !DILocation(line: 385, column: 40, scope: !2617)
!2668 = !DILocation(line: 385, column: 38, scope: !2617)
!2669 = !DILocation(line: 385, column: 45, scope: !2617)
!2670 = !DILocation(line: 385, column: 47, scope: !2617)
!2671 = !DILocation(line: 385, column: 42, scope: !2617)
!2672 = !DILocation(line: 391, column: 7, scope: !2617)
!2673 = !DILocation(line: 391, column: 9, scope: !2617)
!2674 = !DILocation(line: 391, column: 23, scope: !2617)
!2675 = !DILocation(line: 391, column: 25, scope: !2617)
!2676 = !DILocation(line: 391, column: 20, scope: !2617)
!2677 = !DILocation(line: 392, column: 7, scope: !2617)
!2678 = !DILocation(line: 392, column: 8, scope: !2617)
!2679 = !DILocation(line: 393, column: 3, scope: !2617)
!2680 = !DILocation(line: 393, column: 20, scope: !2617)
!2681 = !DILocation(line: 393, column: 21, scope: !2617)
!2682 = !DILocation(line: 393, column: 19, scope: !2617)
!2683 = !DILocation(line: 393, column: 13, scope: !2617)
!2684 = !DILocation(line: 393, column: 4, scope: !2617)
!2685 = !DILocation(line: 394, column: 3, scope: !2617)
!2686 = !DILocation(line: 394, column: 20, scope: !2617)
!2687 = !DILocation(line: 394, column: 21, scope: !2617)
!2688 = !DILocation(line: 394, column: 19, scope: !2617)
!2689 = !DILocation(line: 394, column: 26, scope: !2617)
!2690 = !DILocation(line: 394, column: 13, scope: !2617)
!2691 = !DILocation(line: 394, column: 4, scope: !2617)
!2692 = !DILocation(line: 395, column: 3, scope: !2617)
!2693 = !DILocation(line: 395, column: 20, scope: !2617)
!2694 = !DILocation(line: 395, column: 21, scope: !2617)
!2695 = !DILocation(line: 395, column: 19, scope: !2617)
!2696 = !DILocation(line: 395, column: 25, scope: !2617)
!2697 = !DILocation(line: 395, column: 13, scope: !2617)
!2698 = !DILocation(line: 395, column: 4, scope: !2617)
!2699 = !DILocation(line: 396, column: 3, scope: !2617)
!2700 = !DILocation(line: 396, column: 20, scope: !2617)
!2701 = !DILocation(line: 396, column: 19, scope: !2617)
!2702 = !DILocation(line: 396, column: 22, scope: !2617)
!2703 = !DILocation(line: 396, column: 13, scope: !2617)
!2704 = !DILocation(line: 396, column: 4, scope: !2617)
!2705 = !DILocation(line: 397, column: 3, scope: !2617)
!2706 = !DILocation(line: 399, column: 7, scope: !2617)
!2707 = !DILocation(line: 399, column: 8, scope: !2617)
!2708 = !DILocation(line: 400, column: 3, scope: !2617)
!2709 = !DILocation(line: 400, column: 4, scope: !2617)
!2710 = !DILocation(line: 401, column: 3, scope: !2617)
!2711 = !DILocation(line: 401, column: 4, scope: !2617)
!2712 = !DILocation(line: 402, column: 3, scope: !2617)
!2713 = !DILocation(line: 402, column: 4, scope: !2617)
!2714 = !DILocation(line: 403, column: 3, scope: !2617)
!2715 = distinct !DISubprogram(name: "unicode/utf8.ValidRune", linkageName: "unicode/utf8.ValidRune", scope: !21, file: !21, line: 577, type: !2716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!2450}
!2718 = !{!2719}
!2719 = !DILocalVariable(name: "r", arg: 1, scope: !2715, file: !21, line: 577, type: !2450)
!2720 = !DILocation(line: 577, column: 6, scope: !2715)
!2721 = !DILocation(line: 579, column: 12, scope: !2715)
!2722 = !DILocation(line: 579, column: 9, scope: !2715)
!2723 = !DILocation(line: 0, scope: !2715)
!2724 = !DILocation(line: 579, column: 17, scope: !2715)
!2725 = !DILocation(line: 579, column: 19, scope: !2715)
!2726 = !DILocation(line: 579, column: 14, scope: !2715)
!2727 = !DILocation(line: 580, column: 3, scope: !2715)
!2728 = !DILocation(line: 581, column: 22, scope: !2715)
!2729 = !DILocation(line: 581, column: 20, scope: !2715)
!2730 = !DILocation(line: 581, column: 27, scope: !2715)
!2731 = !DILocation(line: 581, column: 29, scope: !2715)
!2732 = !DILocation(line: 581, column: 24, scope: !2715)
!2733 = !DILocation(line: 582, column: 3, scope: !2715)
!2734 = !DILocation(line: 584, column: 2, scope: !2715)
!2735 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).Kind", linkageName: "(*internal/reflectlite.RawType).Kind", scope: !37, file: !37, line: 380, type: !2736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!1049}
!2738 = !{!2739, !2740}
!2739 = !DILocalVariable(name: "t", arg: 1, scope: !2735, file: !37, line: 380, type: !1049)
!2740 = !DILocalVariable(name: "tag", scope: !2735, file: !37, line: 385, type: !53)
!2741 = !DILocation(line: 380, column: 19, scope: !2735)
!2742 = !DILocation(line: 381, column: 5, scope: !2735)
!2743 = !DILocation(line: 381, column: 7, scope: !2735)
!2744 = !DILocation(line: 0, scope: !2735)
!2745 = !DILocation(line: 382, column: 3, scope: !2735)
!2746 = !DILocation(line: 385, column: 12, scope: !2735)
!2747 = !DILocation(line: 385, column: 20, scope: !2735)
!2748 = !DILocation(line: 385, column: 5, scope: !2735)
!2749 = !DILocation(line: 385, column: 24, scope: !2735)
!2750 = !DILocation(line: 385, column: 28, scope: !2735)
!2751 = !DILocation(line: 386, column: 3, scope: !2735)
!2752 = !DILocation(line: 389, column: 14, scope: !2735)
!2753 = !DILocation(line: 389, column: 16, scope: !2735)
!2754 = !DILocation(line: 389, column: 21, scope: !2735)
!2755 = !DILocation(line: 389, column: 2, scope: !2735)
!2756 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).elem", linkageName: "(*internal/reflectlite.RawType).elem", scope: !37, file: !37, line: 410, type: !2736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2757)
!2757 = !{!2758, !2759, !2760, !2761}
!2758 = !DILocalVariable(name: "t", arg: 1, scope: !2756, file: !37, line: 410, type: !1049)
!2759 = !DILocalVariable(name: "tag", scope: !2756, file: !37, line: 411, type: !53)
!2760 = !DILocalVariable(name: "underlying", scope: !2756, file: !37, line: 415, type: !1049)
!2761 = !DILocalVariable(name: "errTypeElem", scope: !2756, file: !37, line: 393, type: !43)
!2762 = !DILocation(line: 410, column: 19, scope: !2756)
!2763 = !DILocation(line: 411, column: 12, scope: !2756)
!2764 = !DILocation(line: 411, column: 20, scope: !2756)
!2765 = !DILocation(line: 411, column: 5, scope: !2756)
!2766 = !DILocation(line: 411, column: 24, scope: !2756)
!2767 = !DILocation(line: 411, column: 28, scope: !2756)
!2768 = !DILocation(line: 0, scope: !2756)
!2769 = !DILocation(line: 412, column: 47, scope: !2756)
!2770 = !DILocation(line: 412, column: 31, scope: !2756)
!2771 = !DILocation(line: 412, column: 3, scope: !2756)
!2772 = !DILocation(line: 415, column: 16, scope: !2756)
!2773 = !DILocation(line: 415, column: 28, scope: !2756)
!2774 = !DILocation(line: 415, column: 2, scope: !2756)
!2775 = !DILocation(line: 416, column: 9, scope: !2756)
!2776 = !DILocation(line: 416, column: 24, scope: !2756)
!2777 = !DILocation(line: 417, column: 7, scope: !2756)
!2778 = !DILocation(line: 418, column: 36, scope: !2756)
!2779 = !DILocation(line: 418, column: 49, scope: !2756)
!2780 = !DILocation(line: 418, column: 3, scope: !2756)
!2781 = !DILocation(line: 419, column: 7, scope: !2756)
!2782 = !DILocation(line: 420, column: 37, scope: !2756)
!2783 = !DILocation(line: 420, column: 50, scope: !2756)
!2784 = !DILocation(line: 420, column: 3, scope: !2756)
!2785 = !DILocation(line: 419, column: 13, scope: !2756)
!2786 = !DILocation(line: 419, column: 20, scope: !2756)
!2787 = !DILocation(line: 419, column: 27, scope: !2756)
!2788 = !DILocation(line: 422, column: 9, scope: !2756)
!2789 = !DILocation(line: 422, column: 8, scope: !2756)
!2790 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).Len", linkageName: "(*internal/reflectlite.RawType).Len", scope: !37, file: !37, line: 620, type: !2736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2791)
!2791 = !{!2792, !2793}
!2792 = !DILocalVariable(name: "t", arg: 1, scope: !2790, file: !37, line: 620, type: !1049)
!2793 = !DILocalVariable(name: "errTypeLen", scope: !2790, file: !37, line: 397, type: !43)
!2794 = !DILocation(line: 620, column: 19, scope: !2790)
!2795 = !DILocation(line: 621, column: 5, scope: !2790)
!2796 = !DILocation(line: 621, column: 11, scope: !2790)
!2797 = !DILocation(line: 621, column: 14, scope: !2790)
!2798 = !DILocation(line: 0, scope: !2790)
!2799 = !DILocation(line: 622, column: 9, scope: !2790)
!2800 = !DILocation(line: 622, column: 8, scope: !2790)
!2801 = !DILocation(line: 625, column: 41, scope: !2790)
!2802 = !DILocation(line: 625, column: 53, scope: !2790)
!2803 = !DILocation(line: 625, column: 58, scope: !2790)
!2804 = !DILocation(line: 625, column: 2, scope: !2790)
!2805 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).underlying", linkageName: "(*internal/reflectlite.RawType).underlying", scope: !37, file: !37, line: 263, type: !2736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2806)
!2806 = !{!2807}
!2807 = !DILocalVariable(name: "t", arg: 1, scope: !2805, file: !37, line: 263, type: !1049)
!2808 = !DILocation(line: 263, column: 19, scope: !2805)
!2809 = !DILocation(line: 264, column: 5, scope: !2805)
!2810 = !DILocation(line: 264, column: 14, scope: !2805)
!2811 = !DILocation(line: 0, scope: !2805)
!2812 = !DILocation(line: 265, column: 37, scope: !2805)
!2813 = !DILocation(line: 265, column: 41, scope: !2805)
!2814 = !DILocation(line: 265, column: 3, scope: !2805)
!2815 = !DILocation(line: 267, column: 9, scope: !2805)
!2816 = !DILocation(line: 267, column: 2, scope: !2805)
!2817 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).isNamed", linkageName: "(*internal/reflectlite.RawType).isNamed", scope: !37, file: !37, line: 274, type: !2736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2818)
!2818 = !{!2819, !2820}
!2819 = !DILocalVariable(name: "t", arg: 1, scope: !2817, file: !37, line: 274, type: !1049)
!2820 = !DILocalVariable(name: "tag", scope: !2817, file: !37, line: 275, type: !53)
!2821 = !DILocation(line: 274, column: 19, scope: !2817)
!2822 = !DILocation(line: 275, column: 12, scope: !2817)
!2823 = !DILocation(line: 275, column: 20, scope: !2817)
!2824 = !DILocation(line: 275, column: 5, scope: !2817)
!2825 = !DILocation(line: 275, column: 24, scope: !2817)
!2826 = !DILocation(line: 275, column: 28, scope: !2817)
!2827 = !DILocation(line: 0, scope: !2817)
!2828 = !DILocation(line: 276, column: 3, scope: !2817)
!2829 = !DILocation(line: 278, column: 9, scope: !2817)
!2830 = !DILocation(line: 278, column: 11, scope: !2817)
!2831 = !DILocation(line: 278, column: 15, scope: !2817)
!2832 = !DILocation(line: 278, column: 26, scope: !2817)
!2833 = !DILocation(line: 278, column: 2, scope: !2817)
!2834 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).ptrtag", linkageName: "(*internal/reflectlite.RawType).ptrtag", scope: !37, file: !37, line: 270, type: !2736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2835)
!2835 = !{!2836}
!2836 = !DILocalVariable(name: "t", arg: 1, scope: !2834, file: !37, line: 270, type: !1049)
!2837 = !DILocation(line: 270, column: 19, scope: !2834)
!2838 = !DILocation(line: 271, column: 32, scope: !2834)
!2839 = !DILocation(line: 271, column: 16, scope: !2834)
!2840 = !DILocation(line: 271, column: 36, scope: !2834)
!2841 = !DILocation(line: 271, column: 2, scope: !2834)
!2842 = distinct !DISubprogram(name: "(*internal/reflectlite.TypeError).Error", linkageName: "(*internal/reflectlite.TypeError).Error", scope: !37, file: !37, line: 1211, type: !2843, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2845)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!43}
!2845 = !{!2846}
!2846 = !DILocalVariable(name: "e", arg: 1, scope: !2842, file: !37, line: 1211, type: !43)
!2847 = !DILocation(line: 1211, column: 21, scope: !2842)
!2848 = !DILocation(line: 1212, column: 44, scope: !2842)
!2849 = !DILocation(line: 1212, column: 46, scope: !2842)
!2850 = !DILocation(line: 1212, column: 42, scope: !2842)
!2851 = !DILocation(line: 1212, column: 53, scope: !2842)
!2852 = !DILocation(line: 1212, column: 2, scope: !2842)
!2853 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).ChanDir", linkageName: "(*internal/reflectlite.RawType).ChanDir", scope: !37, file: !37, line: 893, type: !2736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2854)
!2854 = !{!2855, !2856, !2857}
!2855 = !DILocalVariable(name: "t", arg: 1, scope: !2853, file: !37, line: 893, type: !1049)
!2856 = !DILocalVariable(name: "errTypeChanDir", scope: !2853, file: !37, line: 399, type: !43)
!2857 = !DILocalVariable(name: "dir", scope: !2853, file: !37, line: 898, type: !1797)
!2858 = !DILocation(line: 893, column: 19, scope: !2853)
!2859 = !DILocation(line: 894, column: 5, scope: !2853)
!2860 = !DILocation(line: 894, column: 11, scope: !2853)
!2861 = !DILocation(line: 894, column: 14, scope: !2853)
!2862 = !DILocation(line: 0, scope: !2853)
!2863 = !DILocation(line: 895, column: 9, scope: !2853)
!2864 = !DILocation(line: 895, column: 8, scope: !2853)
!2865 = !DILocation(line: 898, column: 40, scope: !2853)
!2866 = !DILocation(line: 898, column: 44, scope: !2853)
!2867 = !DILocation(line: 898, column: 12, scope: !2853)
!2868 = !DILocation(line: 898, column: 2, scope: !2853)
!2869 = !DILocation(line: 901, column: 17, scope: !2853)
!2870 = !DILocation(line: 901, column: 2, scope: !2853)
!2871 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).NumField", linkageName: "(*internal/reflectlite.RawType).NumField", scope: !37, file: !37, line: 630, type: !2736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2872)
!2872 = !{!2873, !2874}
!2873 = !DILocalVariable(name: "t", arg: 1, scope: !2871, file: !37, line: 630, type: !1049)
!2874 = !DILocalVariable(name: "errTypeNumField", scope: !2871, file: !37, line: 398, type: !43)
!2875 = !DILocation(line: 630, column: 19, scope: !2871)
!2876 = !DILocation(line: 631, column: 5, scope: !2871)
!2877 = !DILocation(line: 631, column: 11, scope: !2871)
!2878 = !DILocation(line: 631, column: 14, scope: !2871)
!2879 = !DILocation(line: 0, scope: !2871)
!2880 = !DILocation(line: 632, column: 9, scope: !2871)
!2881 = !DILocation(line: 632, column: 8, scope: !2871)
!2882 = !DILocation(line: 634, column: 42, scope: !2871)
!2883 = !DILocation(line: 634, column: 54, scope: !2871)
!2884 = !DILocation(line: 634, column: 59, scope: !2871)
!2885 = !DILocation(line: 634, column: 12, scope: !2871)
!2886 = !DILocation(line: 634, column: 2, scope: !2871)
!2887 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).String", linkageName: "(*internal/reflectlite.RawType).String", scope: !37, file: !37, line: 316, type: !2736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2888)
!2888 = !{!2889, !2890, !2891, !2892, !2893, !2894, !2895}
!2889 = !DILocalVariable(name: "t", arg: 1, scope: !2887, file: !37, line: 316, type: !1049)
!2890 = !DILocalVariable(name: "s", scope: !2887, file: !37, line: 318, type: !48)
!2891 = !DILocalVariable(name: "elem", scope: !2887, file: !37, line: 326, type: !48)
!2892 = !DILocalVariable(name: "numField", scope: !2887, file: !37, line: 352, type: !1797)
!2893 = !DILocalVariable(name: "s", scope: !2887, file: !37, line: 356, type: !48)
!2894 = !DILocalVariable(name: "i", scope: !2887, file: !37, line: 357, type: !1797)
!2895 = !DILocalVariable(name: "f", scope: !2887, file: !37, line: 358, type: !2896)
!2896 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.rawStructField", baseType: !2897)
!2897 = !DICompositeType(tag: DW_TAG_structure_type, size: 576, align: 64, elements: !2898)
!2898 = !{!675, !2899, !2900, !2901, !2903, !2904}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "PkgPath", baseType: !48, size: 128, align: 64, offset: 128)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "Type", baseType: !1049, size: 64, align: 64, offset: 256)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "Tag", baseType: !2902, size: 128, align: 64, offset: 320)
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.StructTag", baseType: !48)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "Offset", baseType: !53, size: 64, align: 64, offset: 448)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "Anonymous", baseType: !378, size: 8, align: 8, offset: 512)
!2905 = !DILocation(line: 316, column: 19, scope: !2887)
!2906 = !DILocation(line: 317, column: 5, scope: !2887)
!2907 = !DILocation(line: 317, column: 14, scope: !2887)
!2908 = !DILocation(line: 0, scope: !2887)
!2909 = !DILocation(line: 318, column: 8, scope: !2887)
!2910 = !DILocation(line: 318, column: 14, scope: !2887)
!2911 = !DILocation(line: 318, column: 3, scope: !2887)
!2912 = !DILocation(line: 319, column: 6, scope: !2887)
!2913 = !DILocation(line: 319, column: 7, scope: !2887)
!2914 = !DILocation(line: 319, column: 11, scope: !2887)
!2915 = !DILocation(line: 320, column: 11, scope: !2887)
!2916 = !DILocation(line: 320, column: 12, scope: !2887)
!2917 = !DILocation(line: 320, column: 4, scope: !2887)
!2918 = !DILocation(line: 322, column: 10, scope: !2887)
!2919 = !DILocation(line: 322, column: 3, scope: !2887)
!2920 = !DILocation(line: 324, column: 9, scope: !2887)
!2921 = !DILocation(line: 324, column: 15, scope: !2887)
!2922 = !DILocation(line: 325, column: 7, scope: !2887)
!2923 = !DILocation(line: 326, column: 11, scope: !2887)
!2924 = !DILocation(line: 326, column: 17, scope: !2887)
!2925 = !DILocation(line: 326, column: 26, scope: !2887)
!2926 = !DILocation(line: 326, column: 3, scope: !2887)
!2927 = !DILocation(line: 327, column: 10, scope: !2887)
!2928 = !DILocation(line: 327, column: 19, scope: !2887)
!2929 = !DILocation(line: 328, column: 8, scope: !2887)
!2930 = !DILocation(line: 329, column: 23, scope: !2887)
!2931 = !DILocation(line: 329, column: 21, scope: !2887)
!2932 = !DILocation(line: 329, column: 4, scope: !2887)
!2933 = !DILocation(line: 330, column: 8, scope: !2887)
!2934 = !DILocation(line: 331, column: 23, scope: !2887)
!2935 = !DILocation(line: 331, column: 21, scope: !2887)
!2936 = !DILocation(line: 331, column: 4, scope: !2887)
!2937 = !DILocation(line: 332, column: 8, scope: !2887)
!2938 = !DILocation(line: 333, column: 7, scope: !2887)
!2939 = !DILocation(line: 333, column: 11, scope: !2887)
!2940 = !DILocation(line: 333, column: 15, scope: !2887)
!2941 = !DILocation(line: 338, column: 23, scope: !2887)
!2942 = !DILocation(line: 338, column: 21, scope: !2887)
!2943 = !DILocation(line: 338, column: 28, scope: !2887)
!2944 = !DILocation(line: 338, column: 5, scope: !2887)
!2945 = !DILocation(line: 340, column: 21, scope: !2887)
!2946 = !DILocation(line: 340, column: 19, scope: !2887)
!2947 = !DILocation(line: 340, column: 4, scope: !2887)
!2948 = !DILocation(line: 377, column: 9, scope: !2887)
!2949 = !DILocation(line: 377, column: 15, scope: !2887)
!2950 = !DILocation(line: 377, column: 24, scope: !2887)
!2951 = !DILocation(line: 377, column: 2, scope: !2887)
!2952 = !DILocation(line: 343, column: 7, scope: !2887)
!2953 = !DILocation(line: 344, column: 16, scope: !2887)
!2954 = !DILocation(line: 344, column: 22, scope: !2887)
!2955 = !DILocation(line: 344, column: 31, scope: !2887)
!2956 = !DILocation(line: 344, column: 14, scope: !2887)
!2957 = !DILocation(line: 344, column: 3, scope: !2887)
!2958 = !DILocation(line: 345, column: 7, scope: !2887)
!2959 = !DILocation(line: 346, column: 17, scope: !2887)
!2960 = !DILocation(line: 346, column: 23, scope: !2887)
!2961 = !DILocation(line: 346, column: 32, scope: !2887)
!2962 = !DILocation(line: 346, column: 15, scope: !2887)
!2963 = !DILocation(line: 346, column: 3, scope: !2887)
!2964 = !DILocation(line: 347, column: 7, scope: !2887)
!2965 = !DILocation(line: 348, column: 26, scope: !2887)
!2966 = !DILocation(line: 348, column: 31, scope: !2887)
!2967 = !DILocation(line: 348, column: 25, scope: !2887)
!2968 = !DILocation(line: 348, column: 14, scope: !2887)
!2969 = !DILocation(line: 348, column: 35, scope: !2887)
!2970 = !DILocation(line: 348, column: 43, scope: !2887)
!2971 = !DILocation(line: 348, column: 49, scope: !2887)
!2972 = !DILocation(line: 348, column: 58, scope: !2887)
!2973 = !DILocation(line: 348, column: 41, scope: !2887)
!2974 = !DILocation(line: 348, column: 3, scope: !2887)
!2975 = !DILocation(line: 349, column: 7, scope: !2887)
!2976 = !DILocation(line: 350, column: 19, scope: !2887)
!2977 = !DILocation(line: 350, column: 24, scope: !2887)
!2978 = !DILocation(line: 350, column: 33, scope: !2887)
!2979 = !DILocation(line: 350, column: 17, scope: !2887)
!2980 = !DILocation(line: 350, column: 36, scope: !2887)
!2981 = !DILocation(line: 350, column: 44, scope: !2887)
!2982 = !DILocation(line: 350, column: 50, scope: !2887)
!2983 = !DILocation(line: 350, column: 59, scope: !2887)
!2984 = !DILocation(line: 350, column: 42, scope: !2887)
!2985 = !DILocation(line: 350, column: 3, scope: !2887)
!2986 = !DILocation(line: 351, column: 7, scope: !2887)
!2987 = !DILocation(line: 352, column: 15, scope: !2887)
!2988 = !DILocation(line: 352, column: 25, scope: !2887)
!2989 = !DILocation(line: 352, column: 3, scope: !2887)
!2990 = !DILocation(line: 353, column: 6, scope: !2887)
!2991 = !DILocation(line: 353, column: 15, scope: !2887)
!2992 = !DILocation(line: 354, column: 4, scope: !2887)
!2993 = !DILocation(line: 356, column: 3, scope: !2887)
!2994 = !DILocation(line: 357, column: 7, scope: !2887)
!2995 = !DILocation(line: 357, column: 15, scope: !2887)
!2996 = !DILocation(line: 357, column: 19, scope: !2887)
!2997 = !DILocation(line: 357, column: 17, scope: !2887)
!2998 = !DILocation(line: 358, column: 9, scope: !2887)
!2999 = !DILocation(line: 358, column: 20, scope: !2887)
!3000 = !DILocation(line: 358, column: 19, scope: !2887)
!3001 = !DILocation(line: 358, column: 4, scope: !2887)
!3002 = !DILocation(line: 359, column: 17, scope: !2887)
!3003 = !DILocation(line: 359, column: 13, scope: !2887)
!3004 = !DILocation(line: 359, column: 22, scope: !2887)
!3005 = !DILocation(line: 359, column: 32, scope: !2887)
!3006 = !DILocation(line: 359, column: 43, scope: !2887)
!3007 = !DILocation(line: 359, column: 28, scope: !2887)
!3008 = !DILocation(line: 359, column: 4, scope: !2887)
!3009 = !DILocation(line: 360, column: 9, scope: !2887)
!3010 = !DILocation(line: 360, column: 13, scope: !2887)
!3011 = !DILocation(line: 361, column: 31, scope: !2887)
!3012 = !DILocation(line: 361, column: 21, scope: !2887)
!3013 = !DILocation(line: 361, column: 14, scope: !2887)
!3014 = !DILocation(line: 361, column: 5, scope: !2887)
!3015 = !DILocation(line: 364, column: 7, scope: !2887)
!3016 = !DILocation(line: 364, column: 11, scope: !2887)
!3017 = !DILocation(line: 364, column: 19, scope: !2887)
!3018 = !DILocation(line: 364, column: 9, scope: !2887)
!3019 = !DILocation(line: 365, column: 5, scope: !2887)
!3020 = !DILocation(line: 357, column: 29, scope: !2887)
!3021 = !DILocation(line: 368, column: 3, scope: !2887)
!3022 = !DILocation(line: 369, column: 10, scope: !2887)
!3023 = !DILocation(line: 369, column: 3, scope: !2887)
!3024 = !DILocation(line: 370, column: 7, scope: !2887)
!3025 = !DILocation(line: 372, column: 3, scope: !2887)
!3026 = !DILocation(line: 374, column: 10, scope: !2887)
!3027 = !DILocation(line: 374, column: 16, scope: !2887)
!3028 = !DILocation(line: 374, column: 25, scope: !2887)
!3029 = !DILocation(line: 374, column: 3, scope: !2887)
!3030 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).key", linkageName: "(*internal/reflectlite.RawType).key", scope: !37, file: !37, line: 426, type: !2736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3031)
!3031 = !{!3032, !3033, !3034}
!3032 = !DILocalVariable(name: "t", arg: 1, scope: !3030, file: !37, line: 426, type: !1049)
!3033 = !DILocalVariable(name: "underlying", scope: !3030, file: !37, line: 427, type: !1049)
!3034 = !DILocalVariable(name: "errTypeKey", scope: !3030, file: !37, line: 394, type: !43)
!3035 = !DILocation(line: 426, column: 19, scope: !3030)
!3036 = !DILocation(line: 427, column: 16, scope: !3030)
!3037 = !DILocation(line: 427, column: 28, scope: !3030)
!3038 = !DILocation(line: 427, column: 2, scope: !3030)
!3039 = !DILocation(line: 428, column: 5, scope: !3030)
!3040 = !DILocation(line: 428, column: 20, scope: !3030)
!3041 = !DILocation(line: 428, column: 23, scope: !3030)
!3042 = !DILocation(line: 0, scope: !3030)
!3043 = !DILocation(line: 429, column: 9, scope: !3030)
!3044 = !DILocation(line: 429, column: 8, scope: !3030)
!3045 = !DILocation(line: 431, column: 35, scope: !3030)
!3046 = !DILocation(line: 431, column: 48, scope: !3030)
!3047 = !DILocation(line: 431, column: 2, scope: !3030)
!3048 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).name", linkageName: "(*internal/reflectlite.RawType).name", scope: !37, file: !37, line: 939, type: !2736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3049)
!3049 = !{!3050, !3051, !3061, !3062}
!3050 = !DILocalVariable(name: "t", arg: 1, scope: !3048, file: !37, line: 939, type: !1049)
!3051 = !DILocalVariable(name: "ntype", scope: !3048, file: !37, line: 940, type: !3052)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64, align: 64, dwarfAddressSpace: 0)
!3053 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.namedType", baseType: !3054)
!3054 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !3055)
!3055 = !{!3056, !3057, !3058, !3059, !3060}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "RawType", baseType: !1050, size: 8, align: 8)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "numMethod", baseType: !100, size: 16, align: 16, offset: 16)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !1049, size: 64, align: 64, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "elem", baseType: !1049, size: 64, align: 64, offset: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", baseType: !2600, size: 64, align: 64, offset: 192)
!3061 = !DILocalVariable(name: "ptr", scope: !3048, file: !37, line: 942, type: !94)
!3062 = !DILocalVariable(name: "ms", scope: !3048, file: !37, line: 944, type: !3063)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64, align: 64, dwarfAddressSpace: 0)
!3064 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.methodSet", baseType: !3065)
!3065 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !3066)
!3066 = !{!1145, !3067}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !3068, align: 64, offset: 64)
!3068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, align: 64, elements: !131)
!3069 = !DILocation(line: 939, column: 19, scope: !3048)
!3070 = !DILocation(line: 940, column: 39, scope: !3048)
!3071 = !DILocation(line: 940, column: 2, scope: !3048)
!3072 = !DILocation(line: 942, column: 35, scope: !3048)
!3073 = !DILocation(line: 942, column: 19, scope: !3048)
!3074 = !DILocation(line: 942, column: 2, scope: !3048)
!3075 = !DILocation(line: 943, column: 5, scope: !3048)
!3076 = !DILocation(line: 943, column: 11, scope: !3048)
!3077 = !DILocation(line: 943, column: 20, scope: !3048)
!3078 = !DILocation(line: 943, column: 43, scope: !3048)
!3079 = !DILocation(line: 0, scope: !3048)
!3080 = !DILocation(line: 944, column: 22, scope: !3048)
!3081 = !DILocation(line: 944, column: 3, scope: !3048)
!3082 = !DILocation(line: 946, column: 20, scope: !3048)
!3083 = !DILocation(line: 946, column: 59, scope: !3048)
!3084 = !DILocation(line: 946, column: 62, scope: !3048)
!3085 = !DILocation(line: 946, column: 69, scope: !3048)
!3086 = !DILocation(line: 946, column: 50, scope: !3048)
!3087 = !DILocation(line: 946, column: 19, scope: !3048)
!3088 = !DILocation(line: 946, column: 3, scope: !3048)
!3089 = !DILocation(line: 948, column: 21, scope: !3048)
!3090 = !DILocation(line: 948, column: 20, scope: !3048)
!3091 = !DILocation(line: 948, column: 2, scope: !3048)
!3092 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).rawField", linkageName: "(*internal/reflectlite.RawType).rawField", scope: !37, file: !37, line: 484, type: !3093, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!1049, !1797}
!3095 = !{!3096, !3097, !3098, !3099, !3113, !3115, !3116, !3117, !3118, !3119}
!3096 = !DILocalVariable(name: "t", arg: 1, scope: !3092, file: !37, line: 484, type: !1049)
!3097 = !DILocalVariable(name: "n", arg: 2, scope: !3092, file: !37, line: 484, type: !1797)
!3098 = !DILocalVariable(name: "errTypeField", scope: !3092, file: !37, line: 395, type: !43)
!3099 = !DILocalVariable(name: "descriptor", scope: !3092, file: !37, line: 488, type: !3100)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64, align: 64, dwarfAddressSpace: 0)
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.structType", baseType: !3102)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !3103)
!3103 = !{!3056, !3057, !3058, !3104, !107, !3105, !3106}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !2600, size: 64, align: 64, offset: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "numField", baseType: !100, size: 16, align: 16, offset: 224)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !3107, size: 128, align: 64, offset: 256)
!3107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3108, size: 128, align: 64, elements: !15)
!3108 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.structField", baseType: !3109)
!3109 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !3110)
!3110 = !{!3111, !3112}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "fieldType", baseType: !1049, size: 64, align: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !94, size: 64, align: 64, offset: 64)
!3113 = !DILocalVariable(name: "field", scope: !3092, file: !37, line: 497, type: !3114)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64, align: 64, dwarfAddressSpace: 0)
!3115 = !DILocalVariable(name: "data", scope: !3092, file: !37, line: 498, type: !94)
!3116 = !DILocalVariable(name: "flagsByte", scope: !3092, file: !37, line: 502, type: !540)
!3117 = !DILocalVariable(name: "offset", scope: !3092, file: !37, line: 504, type: !108)
!3118 = !DILocalVariable(name: "lenOffs", scope: !3092, file: !37, line: 504, type: !1797)
!3119 = !DILocalVariable(name: "name", scope: !3092, file: !37, line: 507, type: !48)
!3120 = !DILocation(line: 484, column: 19, scope: !3092)
!3121 = !DILocation(line: 485, column: 5, scope: !3092)
!3122 = !DILocation(line: 485, column: 11, scope: !3092)
!3123 = !DILocation(line: 485, column: 14, scope: !3092)
!3124 = !DILocation(line: 0, scope: !3092)
!3125 = !DILocation(line: 486, column: 9, scope: !3092)
!3126 = !DILocation(line: 486, column: 8, scope: !3092)
!3127 = !DILocation(line: 488, column: 45, scope: !3092)
!3128 = !DILocation(line: 488, column: 57, scope: !3092)
!3129 = !DILocation(line: 488, column: 2, scope: !3092)
!3130 = !DILocation(line: 489, column: 10, scope: !3092)
!3131 = !DILocation(line: 489, column: 21, scope: !3092)
!3132 = !DILocation(line: 489, column: 32, scope: !3092)
!3133 = !DILocation(line: 489, column: 20, scope: !3092)
!3134 = !DILocation(line: 489, column: 13, scope: !3092)
!3135 = !DILocation(line: 490, column: 8, scope: !3092)
!3136 = !DILocation(line: 497, column: 53, scope: !3092)
!3137 = !DILocation(line: 497, column: 64, scope: !3092)
!3138 = !DILocation(line: 497, column: 70, scope: !3092)
!3139 = !DILocation(line: 497, column: 84, scope: !3092)
!3140 = !DILocation(line: 497, column: 86, scope: !3092)
!3141 = !DILocation(line: 497, column: 36, scope: !3092)
!3142 = !DILocation(line: 497, column: 2, scope: !3092)
!3143 = !DILocation(line: 498, column: 10, scope: !3092)
!3144 = !DILocation(line: 498, column: 16, scope: !3092)
!3145 = !DILocation(line: 498, column: 2, scope: !3092)
!3146 = !DILocation(line: 502, column: 24, scope: !3092)
!3147 = !DILocation(line: 502, column: 15, scope: !3092)
!3148 = !DILocation(line: 502, column: 2, scope: !3092)
!3149 = !DILocation(line: 503, column: 20, scope: !3092)
!3150 = !DILocation(line: 503, column: 19, scope: !3092)
!3151 = !DILocation(line: 503, column: 2, scope: !3092)
!3152 = !DILocation(line: 504, column: 52, scope: !3092)
!3153 = !DILocation(line: 504, column: 43, scope: !3092)
!3154 = !DILocation(line: 504, column: 30, scope: !3092)
!3155 = !DILocation(line: 504, column: 2, scope: !3092)
!3156 = !DILocation(line: 504, column: 10, scope: !3092)
!3157 = !DILocation(line: 505, column: 20, scope: !3092)
!3158 = !DILocation(line: 505, column: 26, scope: !3092)
!3159 = !DILocation(line: 505, column: 19, scope: !3092)
!3160 = !DILocation(line: 505, column: 2, scope: !3092)
!3161 = !DILocation(line: 507, column: 22, scope: !3092)
!3162 = !DILocation(line: 507, column: 21, scope: !3092)
!3163 = !DILocation(line: 507, column: 2, scope: !3092)
!3164 = !DILocation(line: 508, column: 20, scope: !3092)
!3165 = !DILocation(line: 508, column: 30, scope: !3092)
!3166 = !DILocation(line: 508, column: 29, scope: !3092)
!3167 = !DILocation(line: 508, column: 19, scope: !3092)
!3168 = !DILocation(line: 508, column: 2, scope: !3092)
!3169 = !DILocation(line: 510, column: 35, scope: !3092)
!3170 = !DILocation(line: 510, column: 47, scope: !3092)
!3171 = !DILocation(line: 510, column: 53, scope: !3092)
!3172 = !DILocation(line: 510, column: 64, scope: !3092)
!3173 = !DILocation(line: 510, column: 70, scope: !3092)
!3174 = !DILocation(line: 510, column: 81, scope: !3092)
!3175 = !DILocation(line: 510, column: 87, scope: !3092)
!3176 = !DILocation(line: 510, column: 34, scope: !3092)
!3177 = !DILocation(line: 510, column: 2, scope: !3092)
!3178 = distinct !DISubprogram(name: "internal/reflectlite.uvarint32", linkageName: "internal/reflectlite.uvarint32", scope: !37, file: !37, line: 1242, type: !3179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3181)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!2597}
!3181 = !{!3182, !3183, !3184, !3185, !3186}
!3182 = !DILocalVariable(name: "buf", arg: 1, scope: !3178, file: !37, line: 1242, type: !2597)
!3183 = !DILocalVariable(name: "x", scope: !3178, file: !37, line: 1243, type: !108)
!3184 = !DILocalVariable(name: "s", scope: !3178, file: !37, line: 1244, type: !1738)
!3185 = !DILocalVariable(name: "i", scope: !3178, file: !37, line: 1245, type: !1797)
!3186 = !DILocalVariable(name: "b", scope: !3178, file: !37, line: 1245, type: !540)
!3187 = !DILocation(line: 1242, column: 6, scope: !3178)
!3188 = !DILocation(line: 1243, column: 6, scope: !3178)
!3189 = !DILocation(line: 1244, column: 6, scope: !3178)
!3190 = !DILocation(line: 1245, column: 20, scope: !3178)
!3191 = !DILocation(line: 0, scope: !3178)
!3192 = !DILocation(line: 1245, column: 6, scope: !3178)
!3193 = !DILocation(line: 1245, column: 9, scope: !3178)
!3194 = !DILocation(line: 1246, column: 6, scope: !3178)
!3195 = !DILocation(line: 1246, column: 8, scope: !3178)
!3196 = !DILocation(line: 1247, column: 11, scope: !3178)
!3197 = !DILocation(line: 1247, column: 22, scope: !3178)
!3198 = !DILocation(line: 1247, column: 21, scope: !3178)
!3199 = !DILocation(line: 1247, column: 26, scope: !3178)
!3200 = !DILocation(line: 1247, column: 24, scope: !3178)
!3201 = !DILocation(line: 1247, column: 13, scope: !3178)
!3202 = !DILocation(line: 1247, column: 29, scope: !3178)
!3203 = !DILocation(line: 1247, column: 31, scope: !3178)
!3204 = !DILocation(line: 1247, column: 4, scope: !3178)
!3205 = !DILocation(line: 1249, column: 15, scope: !3178)
!3206 = !DILocation(line: 1249, column: 16, scope: !3178)
!3207 = !DILocation(line: 1249, column: 14, scope: !3178)
!3208 = !DILocation(line: 1249, column: 26, scope: !3178)
!3209 = !DILocation(line: 1249, column: 23, scope: !3178)
!3210 = !DILocation(line: 1249, column: 3, scope: !3178)
!3211 = !DILocation(line: 1250, column: 3, scope: !3178)
!3212 = !DILocation(line: 1252, column: 2, scope: !3178)
!3213 = distinct !DISubprogram(name: "internal/reflectlite.readStringZ", linkageName: "internal/reflectlite.readStringZ", scope: !37, file: !37, line: 925, type: !3214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!94}
!3216 = !{!3217, !3218, !3219}
!3217 = !DILocalVariable(name: "data", arg: 1, scope: !3213, file: !37, line: 925, type: !94)
!3218 = !DILocalVariable(name: "start", scope: !3213, file: !37, line: 926, type: !94)
!3219 = !DILocalVariable(name: "len", scope: !3213, file: !37, line: 927, type: !53)
!3220 = !DILocation(line: 925, column: 6, scope: !3213)
!3221 = !DILocation(line: 926, column: 11, scope: !3213)
!3222 = !DILocation(line: 926, column: 2, scope: !3213)
!3223 = !DILocation(line: 927, column: 6, scope: !3213)
!3224 = !DILocation(line: 0, scope: !3213)
!3225 = !DILocation(line: 925, column: 18, scope: !3213)
!3226 = !DILocation(line: 928, column: 15, scope: !3213)
!3227 = !DILocation(line: 928, column: 6, scope: !3213)
!3228 = !DILocation(line: 928, column: 21, scope: !3213)
!3229 = !DILocation(line: 929, column: 3, scope: !3213)
!3230 = !DILocation(line: 930, column: 21, scope: !3213)
!3231 = !DILocation(line: 930, column: 20, scope: !3213)
!3232 = !DILocation(line: 930, column: 3, scope: !3213)
!3233 = !DILocation(line: 933, column: 48, scope: !3213)
!3234 = !DILocation(line: 934, column: 7, scope: !3213)
!3235 = !DILocation(line: 934, column: 9, scope: !3213)
!3236 = !DILocation(line: 935, column: 6, scope: !3213)
!3237 = !DILocation(line: 935, column: 9, scope: !3213)
!3238 = !DILocation(line: 933, column: 9, scope: !3213)
!3239 = !DILocation(line: 933, column: 2, scope: !3213)
!3240 = distinct !DISubprogram(name: "internal/reflectlite.rawStructFieldFromPointer", linkageName: "internal/reflectlite.rawStructFieldFromPointer", scope: !37, file: !37, line: 449, type: !3241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3243)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!3100, !1049, !94, !4, !48, !108}
!3243 = !{!3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252}
!3244 = !DILocalVariable(name: "descriptor", arg: 1, scope: !3240, file: !37, line: 449, type: !3100)
!3245 = !DILocalVariable(name: "fieldType", arg: 2, scope: !3240, file: !37, line: 449, type: !1049)
!3246 = !DILocalVariable(name: "data", arg: 3, scope: !3240, file: !37, line: 449, type: !94)
!3247 = !DILocalVariable(name: "flagsByte", arg: 4, scope: !3240, file: !37, line: 449, type: !4)
!3248 = !DILocalVariable(name: "name", arg: 5, scope: !3240, file: !37, line: 449, type: !48)
!3249 = !DILocalVariable(name: "offset", arg: 6, scope: !3240, file: !37, line: 449, type: !108)
!3250 = !DILocalVariable(name: "tag", scope: !3240, file: !37, line: 451, type: !48)
!3251 = !DILocalVariable(name: "tagLen", scope: !3240, file: !37, line: 454, type: !53)
!3252 = !DILocalVariable(name: "pkgPath", scope: !3240, file: !37, line: 464, type: !48)
!3253 = !DILocation(line: 449, column: 6, scope: !3240)
!3254 = !DILocation(line: 451, column: 6, scope: !3240)
!3255 = !DILocation(line: 452, column: 5, scope: !3240)
!3256 = !DILocation(line: 452, column: 14, scope: !3240)
!3257 = !DILocation(line: 452, column: 37, scope: !3240)
!3258 = !DILocation(line: 0, scope: !3240)
!3259 = !DILocation(line: 453, column: 21, scope: !3240)
!3260 = !DILocation(line: 453, column: 20, scope: !3240)
!3261 = !DILocation(line: 453, column: 3, scope: !3240)
!3262 = !DILocation(line: 454, column: 30, scope: !3240)
!3263 = !DILocation(line: 454, column: 21, scope: !3240)
!3264 = !DILocation(line: 454, column: 20, scope: !3240)
!3265 = !DILocation(line: 454, column: 3, scope: !3240)
!3266 = !DILocation(line: 455, column: 21, scope: !3240)
!3267 = !DILocation(line: 455, column: 20, scope: !3240)
!3268 = !DILocation(line: 455, column: 3, scope: !3240)
!3269 = !DILocation(line: 456, column: 48, scope: !3240)
!3270 = !DILocation(line: 457, column: 8, scope: !3240)
!3271 = !DILocation(line: 457, column: 10, scope: !3240)
!3272 = !DILocation(line: 458, column: 7, scope: !3240)
!3273 = !DILocation(line: 458, column: 10, scope: !3240)
!3274 = !DILocation(line: 456, column: 9, scope: !3240)
!3275 = !DILocation(line: 456, column: 3, scope: !3240)
!3276 = !DILocation(line: 464, column: 2, scope: !3240)
!3277 = !DILocation(line: 465, column: 5, scope: !3240)
!3278 = !DILocation(line: 465, column: 14, scope: !3240)
!3279 = !DILocation(line: 465, column: 41, scope: !3240)
!3280 = !DILocation(line: 467, column: 40, scope: !3240)
!3281 = !DILocation(line: 467, column: 51, scope: !3240)
!3282 = !DILocation(line: 467, column: 24, scope: !3240)
!3283 = !DILocation(line: 467, column: 3, scope: !3240)
!3284 = !DILocation(line: 471, column: 7, scope: !3240)
!3285 = !DILocation(line: 471, column: 14, scope: !3240)
!3286 = !DILocation(line: 472, column: 10, scope: !3240)
!3287 = !DILocation(line: 472, column: 14, scope: !3240)
!3288 = !DILocation(line: 473, column: 7, scope: !3240)
!3289 = !DILocation(line: 473, column: 14, scope: !3240)
!3290 = !DILocation(line: 474, column: 6, scope: !3240)
!3291 = !DILocation(line: 474, column: 24, scope: !3240)
!3292 = !DILocation(line: 475, column: 12, scope: !3240)
!3293 = !DILocation(line: 475, column: 14, scope: !3240)
!3294 = !DILocation(line: 475, column: 23, scope: !3240)
!3295 = !DILocation(line: 475, column: 49, scope: !3240)
!3296 = !DILocation(line: 476, column: 9, scope: !3240)
!3297 = !DILocation(line: 476, column: 22, scope: !3240)
!3298 = !DILocation(line: 476, column: 21, scope: !3240)
!3299 = !DILocation(line: 470, column: 23, scope: !3240)
!3300 = !DILocation(line: 470, column: 2, scope: !3240)
!3301 = distinct !DISubprogram(name: "(internal/reflectlite.Kind).String", linkageName: "(internal/reflectlite.Kind).String", scope: !37, file: !37, line: 57, type: !3302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3305)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!3304}
!3304 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.Kind", baseType: !4)
!3305 = !{!3306}
!3306 = !DILocalVariable(name: "k", arg: 1, scope: !3301, file: !37, line: 57, type: !3304)
!3307 = !DILocation(line: 57, column: 15, scope: !3301)
!3308 = !DILocation(line: 58, column: 9, scope: !3301)
!3309 = !DILocation(line: 59, column: 7, scope: !3301)
!3310 = !DILocation(line: 0, scope: !3301)
!3311 = !DILocation(line: 60, column: 3, scope: !3301)
!3312 = !DILocation(line: 61, column: 7, scope: !3301)
!3313 = !DILocation(line: 62, column: 3, scope: !3301)
!3314 = !DILocation(line: 63, column: 7, scope: !3301)
!3315 = !DILocation(line: 64, column: 3, scope: !3301)
!3316 = !DILocation(line: 65, column: 7, scope: !3301)
!3317 = !DILocation(line: 66, column: 3, scope: !3301)
!3318 = !DILocation(line: 67, column: 7, scope: !3301)
!3319 = !DILocation(line: 68, column: 3, scope: !3301)
!3320 = !DILocation(line: 69, column: 7, scope: !3301)
!3321 = !DILocation(line: 70, column: 3, scope: !3301)
!3322 = !DILocation(line: 71, column: 7, scope: !3301)
!3323 = !DILocation(line: 72, column: 3, scope: !3301)
!3324 = !DILocation(line: 73, column: 7, scope: !3301)
!3325 = !DILocation(line: 74, column: 3, scope: !3301)
!3326 = !DILocation(line: 75, column: 7, scope: !3301)
!3327 = !DILocation(line: 76, column: 3, scope: !3301)
!3328 = !DILocation(line: 77, column: 7, scope: !3301)
!3329 = !DILocation(line: 78, column: 3, scope: !3301)
!3330 = !DILocation(line: 79, column: 7, scope: !3301)
!3331 = !DILocation(line: 80, column: 3, scope: !3301)
!3332 = !DILocation(line: 81, column: 7, scope: !3301)
!3333 = !DILocation(line: 82, column: 3, scope: !3301)
!3334 = !DILocation(line: 83, column: 7, scope: !3301)
!3335 = !DILocation(line: 84, column: 3, scope: !3301)
!3336 = !DILocation(line: 85, column: 7, scope: !3301)
!3337 = !DILocation(line: 86, column: 3, scope: !3301)
!3338 = !DILocation(line: 87, column: 7, scope: !3301)
!3339 = !DILocation(line: 88, column: 3, scope: !3301)
!3340 = !DILocation(line: 89, column: 7, scope: !3301)
!3341 = !DILocation(line: 90, column: 3, scope: !3301)
!3342 = !DILocation(line: 91, column: 7, scope: !3301)
!3343 = !DILocation(line: 92, column: 3, scope: !3301)
!3344 = !DILocation(line: 93, column: 7, scope: !3301)
!3345 = !DILocation(line: 94, column: 3, scope: !3301)
!3346 = !DILocation(line: 95, column: 7, scope: !3301)
!3347 = !DILocation(line: 96, column: 3, scope: !3301)
!3348 = !DILocation(line: 97, column: 7, scope: !3301)
!3349 = !DILocation(line: 98, column: 3, scope: !3301)
!3350 = !DILocation(line: 99, column: 7, scope: !3301)
!3351 = !DILocation(line: 100, column: 3, scope: !3301)
!3352 = !DILocation(line: 101, column: 7, scope: !3301)
!3353 = !DILocation(line: 102, column: 3, scope: !3301)
!3354 = !DILocation(line: 103, column: 7, scope: !3301)
!3355 = !DILocation(line: 104, column: 3, scope: !3301)
!3356 = !DILocation(line: 105, column: 7, scope: !3301)
!3357 = !DILocation(line: 106, column: 3, scope: !3301)
!3358 = !DILocation(line: 107, column: 7, scope: !3301)
!3359 = !DILocation(line: 108, column: 3, scope: !3301)
!3360 = !DILocation(line: 109, column: 7, scope: !3301)
!3361 = !DILocation(line: 110, column: 3, scope: !3301)
!3362 = !DILocation(line: 111, column: 7, scope: !3301)
!3363 = !DILocation(line: 112, column: 3, scope: !3301)
!3364 = !DILocation(line: 114, column: 38, scope: !3301)
!3365 = !DILocation(line: 114, column: 32, scope: !3301)
!3366 = !DILocation(line: 114, column: 28, scope: !3301)
!3367 = !DILocation(line: 114, column: 17, scope: !3301)
!3368 = !DILocation(line: 114, column: 3, scope: !3301)
!3369 = distinct !DISubprogram(name: "internal/reflectlite.quote", linkageName: "internal/reflectlite.quote", scope: !121, file: !121, line: 238, type: !2445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3370)
!3370 = !{!3371, !3372, !3373, !3374}
!3371 = !DILocalVariable(name: "s", arg: 1, scope: !3369, file: !121, line: 238, type: !48)
!3372 = !DILocalVariable(name: "buf", scope: !3369, file: !121, line: 239, type: !2597)
!3373 = !DILocalVariable(name: "width", scope: !3369, file: !121, line: 243, type: !1797)
!3374 = !DILocalVariable(name: "r", scope: !3369, file: !121, line: 244, type: !2450)
!3375 = !DILocation(line: 238, column: 6, scope: !3369)
!3376 = !DILocation(line: 239, column: 31, scope: !3369)
!3377 = !DILocation(line: 239, column: 30, scope: !3369)
!3378 = !DILocation(line: 239, column: 26, scope: !3369)
!3379 = !DILocation(line: 239, column: 33, scope: !3369)
!3380 = !DILocation(line: 239, column: 13, scope: !3369)
!3381 = !DILocation(line: 239, column: 2, scope: !3369)
!3382 = !DILocation(line: 242, column: 15, scope: !3369)
!3383 = !DILocation(line: 242, column: 25, scope: !3369)
!3384 = !DILocation(line: 242, column: 14, scope: !3369)
!3385 = !DILocation(line: 242, column: 2, scope: !3369)
!3386 = !DILocation(line: 243, column: 6, scope: !3369)
!3387 = !DILocation(line: 0, scope: !3369)
!3388 = !DILocation(line: 238, column: 12, scope: !3369)
!3389 = !DILocation(line: 243, column: 22, scope: !3369)
!3390 = !DILocation(line: 243, column: 21, scope: !3369)
!3391 = !DILocation(line: 243, column: 25, scope: !3369)
!3392 = !DILocation(line: 244, column: 13, scope: !3369)
!3393 = !DILocation(line: 244, column: 14, scope: !3369)
!3394 = !DILocation(line: 244, column: 12, scope: !3369)
!3395 = !DILocation(line: 244, column: 3, scope: !3369)
!3396 = !DILocation(line: 245, column: 3, scope: !3369)
!3397 = !DILocation(line: 246, column: 6, scope: !3369)
!3398 = !DILocation(line: 246, column: 8, scope: !3369)
!3399 = !DILocation(line: 247, column: 39, scope: !3369)
!3400 = !DILocation(line: 247, column: 38, scope: !3369)
!3401 = !DILocation(line: 247, column: 4, scope: !3369)
!3402 = !DILocation(line: 247, column: 7, scope: !3369)
!3403 = !DILocation(line: 249, column: 6, scope: !3369)
!3404 = !DILocation(line: 249, column: 12, scope: !3369)
!3405 = !DILocation(line: 249, column: 20, scope: !3369)
!3406 = !DILocation(line: 249, column: 22, scope: !3369)
!3407 = !DILocation(line: 250, column: 17, scope: !3369)
!3408 = !DILocation(line: 250, column: 16, scope: !3369)
!3409 = !DILocation(line: 250, column: 4, scope: !3369)
!3410 = !DILocation(line: 251, column: 17, scope: !3369)
!3411 = !DILocation(line: 251, column: 31, scope: !3369)
!3412 = !DILocation(line: 251, column: 32, scope: !3369)
!3413 = !DILocation(line: 251, column: 35, scope: !3369)
!3414 = !DILocation(line: 251, column: 30, scope: !3369)
!3415 = !DILocation(line: 251, column: 39, scope: !3369)
!3416 = !DILocation(line: 251, column: 16, scope: !3369)
!3417 = !DILocation(line: 251, column: 4, scope: !3369)
!3418 = !DILocation(line: 252, column: 17, scope: !3369)
!3419 = !DILocation(line: 252, column: 31, scope: !3369)
!3420 = !DILocation(line: 252, column: 32, scope: !3369)
!3421 = !DILocation(line: 252, column: 35, scope: !3369)
!3422 = !DILocation(line: 252, column: 30, scope: !3369)
!3423 = !DILocation(line: 252, column: 40, scope: !3369)
!3424 = !DILocation(line: 252, column: 16, scope: !3369)
!3425 = !DILocation(line: 252, column: 4, scope: !3369)
!3426 = !DILocation(line: 243, column: 34, scope: !3369)
!3427 = !DILocation(line: 243, column: 36, scope: !3369)
!3428 = !DILocation(line: 243, column: 35, scope: !3369)
!3429 = !DILocation(line: 243, column: 30, scope: !3369)
!3430 = !DILocation(line: 255, column: 27, scope: !3369)
!3431 = !DILocation(line: 255, column: 32, scope: !3369)
!3432 = !DILocation(line: 255, column: 26, scope: !3369)
!3433 = !DILocation(line: 255, column: 3, scope: !3369)
!3434 = !DILocation(line: 257, column: 15, scope: !3369)
!3435 = !DILocation(line: 257, column: 25, scope: !3369)
!3436 = !DILocation(line: 257, column: 14, scope: !3369)
!3437 = !DILocation(line: 257, column: 2, scope: !3369)
!3438 = !DILocation(line: 258, column: 16, scope: !3369)
!3439 = !DILocation(line: 258, column: 15, scope: !3369)
!3440 = !DILocation(line: 258, column: 2, scope: !3369)
!3441 = distinct !DISubprogram(name: "internal/reflectlite.appendEscapedRune", linkageName: "internal/reflectlite.appendEscapedRune", scope: !121, file: !121, line: 261, type: !2595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3442)
!3442 = !{!3443, !3444, !3445, !3446, !3447}
!3443 = !DILocalVariable(name: "buf", arg: 1, scope: !3441, file: !121, line: 261, type: !2597)
!3444 = !DILocalVariable(name: "r", arg: 2, scope: !3441, file: !121, line: 261, type: !2450)
!3445 = !DILocalVariable(name: "n", scope: !3441, file: !121, line: 272, type: !1797)
!3446 = !DILocalVariable(name: "s", scope: !3441, file: !121, line: 302, type: !1797)
!3447 = !DILocalVariable(name: "s", scope: !3441, file: !121, line: 307, type: !1797)
!3448 = !DILocation(line: 261, column: 6, scope: !3441)
!3449 = !DILocation(line: 265, column: 6, scope: !3441)
!3450 = !DILocation(line: 266, column: 5, scope: !3441)
!3451 = !DILocation(line: 266, column: 7, scope: !3441)
!3452 = !DILocation(line: 0, scope: !3441)
!3453 = !DILocation(line: 267, column: 16, scope: !3441)
!3454 = !DILocation(line: 267, column: 25, scope: !3441)
!3455 = !DILocation(line: 267, column: 15, scope: !3441)
!3456 = !DILocation(line: 267, column: 3, scope: !3441)
!3457 = !DILocation(line: 268, column: 16, scope: !3441)
!3458 = !DILocation(line: 268, column: 26, scope: !3441)
!3459 = !DILocation(line: 268, column: 25, scope: !3441)
!3460 = !DILocation(line: 268, column: 28, scope: !3441)
!3461 = !DILocation(line: 268, column: 15, scope: !3441)
!3462 = !DILocation(line: 268, column: 3, scope: !3441)
!3463 = !DILocation(line: 269, column: 10, scope: !3441)
!3464 = !DILocation(line: 269, column: 3, scope: !3441)
!3465 = !DILocation(line: 266, column: 25, scope: !3441)
!3466 = !DILocation(line: 266, column: 27, scope: !3441)
!3467 = !DILocation(line: 271, column: 13, scope: !3441)
!3468 = !DILocation(line: 271, column: 12, scope: !3441)
!3469 = !DILocation(line: 272, column: 31, scope: !3441)
!3470 = !DILocation(line: 272, column: 36, scope: !3441)
!3471 = !DILocation(line: 272, column: 23, scope: !3441)
!3472 = !DILocation(line: 272, column: 3, scope: !3441)
!3473 = !DILocation(line: 273, column: 16, scope: !3441)
!3474 = !DILocation(line: 273, column: 30, scope: !3441)
!3475 = !DILocation(line: 273, column: 28, scope: !3441)
!3476 = !DILocation(line: 273, column: 15, scope: !3441)
!3477 = !DILocation(line: 273, column: 3, scope: !3441)
!3478 = !DILocation(line: 274, column: 10, scope: !3441)
!3479 = !DILocation(line: 274, column: 3, scope: !3441)
!3480 = !DILocation(line: 276, column: 9, scope: !3441)
!3481 = !DILocation(line: 277, column: 7, scope: !3441)
!3482 = !DILocation(line: 278, column: 16, scope: !3441)
!3483 = !DILocation(line: 278, column: 15, scope: !3441)
!3484 = !DILocation(line: 278, column: 3, scope: !3441)
!3485 = !DILocation(line: 261, column: 24, scope: !3441)
!3486 = !DILocation(line: 312, column: 9, scope: !3441)
!3487 = !DILocation(line: 312, column: 2, scope: !3441)
!3488 = !DILocation(line: 279, column: 7, scope: !3441)
!3489 = !DILocation(line: 280, column: 16, scope: !3441)
!3490 = !DILocation(line: 280, column: 15, scope: !3441)
!3491 = !DILocation(line: 280, column: 3, scope: !3441)
!3492 = !DILocation(line: 281, column: 7, scope: !3441)
!3493 = !DILocation(line: 282, column: 16, scope: !3441)
!3494 = !DILocation(line: 282, column: 15, scope: !3441)
!3495 = !DILocation(line: 282, column: 3, scope: !3441)
!3496 = !DILocation(line: 283, column: 7, scope: !3441)
!3497 = !DILocation(line: 284, column: 16, scope: !3441)
!3498 = !DILocation(line: 284, column: 15, scope: !3441)
!3499 = !DILocation(line: 284, column: 3, scope: !3441)
!3500 = !DILocation(line: 285, column: 7, scope: !3441)
!3501 = !DILocation(line: 286, column: 16, scope: !3441)
!3502 = !DILocation(line: 286, column: 15, scope: !3441)
!3503 = !DILocation(line: 286, column: 3, scope: !3441)
!3504 = !DILocation(line: 287, column: 7, scope: !3441)
!3505 = !DILocation(line: 288, column: 16, scope: !3441)
!3506 = !DILocation(line: 288, column: 15, scope: !3441)
!3507 = !DILocation(line: 288, column: 3, scope: !3441)
!3508 = !DILocation(line: 289, column: 7, scope: !3441)
!3509 = !DILocation(line: 290, column: 16, scope: !3441)
!3510 = !DILocation(line: 290, column: 15, scope: !3441)
!3511 = !DILocation(line: 290, column: 3, scope: !3441)
!3512 = !DILocation(line: 293, column: 8, scope: !3441)
!3513 = !DILocation(line: 293, column: 10, scope: !3441)
!3514 = !DILocation(line: 293, column: 16, scope: !3441)
!3515 = !DILocation(line: 294, column: 17, scope: !3441)
!3516 = !DILocation(line: 294, column: 16, scope: !3441)
!3517 = !DILocation(line: 294, column: 4, scope: !3441)
!3518 = !DILocation(line: 295, column: 17, scope: !3441)
!3519 = !DILocation(line: 295, column: 36, scope: !3441)
!3520 = !DILocation(line: 295, column: 35, scope: !3441)
!3521 = !DILocation(line: 295, column: 38, scope: !3441)
!3522 = !DILocation(line: 295, column: 30, scope: !3441)
!3523 = !DILocation(line: 295, column: 42, scope: !3441)
!3524 = !DILocation(line: 295, column: 16, scope: !3441)
!3525 = !DILocation(line: 295, column: 4, scope: !3441)
!3526 = !DILocation(line: 296, column: 17, scope: !3441)
!3527 = !DILocation(line: 296, column: 36, scope: !3441)
!3528 = !DILocation(line: 296, column: 35, scope: !3441)
!3529 = !DILocation(line: 296, column: 38, scope: !3441)
!3530 = !DILocation(line: 296, column: 30, scope: !3441)
!3531 = !DILocation(line: 296, column: 43, scope: !3441)
!3532 = !DILocation(line: 296, column: 16, scope: !3441)
!3533 = !DILocation(line: 296, column: 4, scope: !3441)
!3534 = !DILocation(line: 297, column: 24, scope: !3441)
!3535 = !DILocation(line: 297, column: 23, scope: !3441)
!3536 = !DILocation(line: 297, column: 8, scope: !3441)
!3537 = !DILocation(line: 298, column: 4, scope: !3441)
!3538 = !DILocation(line: 261, column: 36, scope: !3441)
!3539 = !DILocation(line: 301, column: 17, scope: !3441)
!3540 = !DILocation(line: 301, column: 16, scope: !3441)
!3541 = !DILocation(line: 301, column: 4, scope: !3441)
!3542 = !DILocation(line: 302, column: 8, scope: !3441)
!3543 = !DILocation(line: 302, column: 17, scope: !3441)
!3544 = !DILocation(line: 302, column: 19, scope: !3441)
!3545 = !DILocation(line: 303, column: 18, scope: !3441)
!3546 = !DILocation(line: 303, column: 32, scope: !3441)
!3547 = !DILocation(line: 303, column: 40, scope: !3441)
!3548 = !DILocation(line: 303, column: 33, scope: !3441)
!3549 = !DILocation(line: 303, column: 42, scope: !3441)
!3550 = !DILocation(line: 303, column: 31, scope: !3441)
!3551 = !DILocation(line: 303, column: 47, scope: !3441)
!3552 = !DILocation(line: 303, column: 17, scope: !3441)
!3553 = !DILocation(line: 303, column: 5, scope: !3441)
!3554 = !DILocation(line: 302, column: 25, scope: !3441)
!3555 = !DILocation(line: 300, column: 8, scope: !3441)
!3556 = !DILocation(line: 300, column: 10, scope: !3441)
!3557 = !DILocation(line: 306, column: 17, scope: !3441)
!3558 = !DILocation(line: 306, column: 16, scope: !3441)
!3559 = !DILocation(line: 306, column: 4, scope: !3441)
!3560 = !DILocation(line: 307, column: 8, scope: !3441)
!3561 = !DILocation(line: 307, column: 17, scope: !3441)
!3562 = !DILocation(line: 307, column: 19, scope: !3441)
!3563 = !DILocation(line: 308, column: 18, scope: !3441)
!3564 = !DILocation(line: 308, column: 32, scope: !3441)
!3565 = !DILocation(line: 308, column: 40, scope: !3441)
!3566 = !DILocation(line: 308, column: 33, scope: !3441)
!3567 = !DILocation(line: 308, column: 42, scope: !3441)
!3568 = !DILocation(line: 308, column: 31, scope: !3441)
!3569 = !DILocation(line: 308, column: 47, scope: !3441)
!3570 = !DILocation(line: 308, column: 17, scope: !3441)
!3571 = !DILocation(line: 308, column: 5, scope: !3441)
!3572 = !DILocation(line: 307, column: 25, scope: !3441)
!3573 = !DILocation(line: 293, column: 19, scope: !3441)
!3574 = !DILocation(line: 293, column: 21, scope: !3441)
!3575 = distinct !DISubprogram(name: "internal/reflectlite.isPrint", linkageName: "internal/reflectlite.isPrint", scope: !121, file: !121, line: 316, type: !2716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3576)
!3576 = !{!3577}
!3577 = !DILocalVariable(name: "r", arg: 1, scope: !3575, file: !121, line: 316, type: !2450)
!3578 = !DILocation(line: 316, column: 6, scope: !3575)
!3579 = !DILocation(line: 317, column: 5, scope: !3575)
!3580 = !DILocation(line: 317, column: 7, scope: !3575)
!3581 = !DILocation(line: 0, scope: !3575)
!3582 = !DILocation(line: 318, column: 14, scope: !3575)
!3583 = !DILocation(line: 318, column: 11, scope: !3575)
!3584 = !DILocation(line: 318, column: 19, scope: !3575)
!3585 = !DILocation(line: 318, column: 21, scope: !3575)
!3586 = !DILocation(line: 320, column: 4, scope: !3575)
!3587 = !DILocation(line: 322, column: 14, scope: !3575)
!3588 = !DILocation(line: 322, column: 11, scope: !3575)
!3589 = !DILocation(line: 322, column: 19, scope: !3575)
!3590 = !DILocation(line: 322, column: 21, scope: !3575)
!3591 = !DILocation(line: 324, column: 11, scope: !3575)
!3592 = !DILocation(line: 324, column: 13, scope: !3575)
!3593 = !DILocation(line: 324, column: 4, scope: !3575)
!3594 = !DILocation(line: 326, column: 3, scope: !3575)
!3595 = !DILocation(line: 330, column: 2, scope: !3575)
!3596 = distinct !DISubprogram(name: "(internal/reflectlite.Kind).String$invoke", linkageName: "(internal/reflectlite.Kind).String$invoke", scope: !37, file: !37, line: 57, type: !3302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032)
!3597 = !DILocation(line: 57, column: 15, scope: !3596)
!3598 = distinct !DISubprogram(name: "(*internal/reflectlite.ValueError).Error", linkageName: "(*internal/reflectlite.ValueError).Error", scope: !323, file: !323, line: 1789, type: !3599, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3606)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!3601}
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64, align: 64, dwarfAddressSpace: 0)
!3602 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.ValueError", baseType: !3603)
!3603 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !3604)
!3604 = !{!47, !3605}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "Kind", baseType: !3304, size: 8, align: 8, offset: 128)
!3606 = !{!3607}
!3607 = !DILocalVariable(name: "e", arg: 1, scope: !3598, file: !323, line: 1789, type: !3601)
!3608 = !DILocation(line: 1789, column: 22, scope: !3598)
!3609 = !DILocation(line: 1790, column: 5, scope: !3598)
!3610 = !DILocation(line: 1790, column: 7, scope: !3598)
!3611 = !DILocation(line: 1790, column: 12, scope: !3598)
!3612 = !DILocation(line: 0, scope: !3598)
!3613 = !DILocation(line: 1791, column: 32, scope: !3598)
!3614 = !DILocation(line: 1791, column: 34, scope: !3598)
!3615 = !DILocation(line: 1791, column: 30, scope: !3598)
!3616 = !DILocation(line: 1791, column: 41, scope: !3598)
!3617 = !DILocation(line: 1791, column: 3, scope: !3598)
!3618 = !DILocation(line: 1793, column: 31, scope: !3598)
!3619 = !DILocation(line: 1793, column: 33, scope: !3598)
!3620 = !DILocation(line: 1793, column: 29, scope: !3598)
!3621 = !DILocation(line: 1793, column: 40, scope: !3598)
!3622 = !DILocation(line: 1793, column: 51, scope: !3598)
!3623 = !DILocation(line: 1793, column: 53, scope: !3598)
!3624 = !DILocation(line: 1793, column: 64, scope: !3598)
!3625 = !DILocation(line: 1793, column: 49, scope: !3598)
!3626 = !DILocation(line: 1793, column: 67, scope: !3598)
!3627 = !DILocation(line: 1793, column: 2, scope: !3598)
!3628 = distinct !DISubprogram(name: "(internal/reflectlite.badSyntax).Error", linkageName: "(internal/reflectlite.badSyntax).Error", scope: !121, file: !121, line: 16, type: !3629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3631)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!1195}
!3631 = !{!3632}
!3632 = !DILocalVariable(name: "arg0", arg: 1, scope: !3628, file: !121, line: 16, type: !1195)
!3633 = !DILocation(line: 17, column: 2, scope: !3628)
!3634 = distinct !DISubprogram(name: "(internal/reflectlite.badSyntax).Error$invoke", linkageName: "(internal/reflectlite.badSyntax).Error$invoke", scope: !121, file: !121, line: 16, type: !3629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032)
!3635 = !DILocation(line: 16, column: 18, scope: !3634)
!3636 = distinct !DISubprogram(name: "runtime/interrupt.In", linkageName: "runtime/interrupt.In", scope: !3637, file: !3637, line: 28, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1516)
!3637 = !DIFile(filename: "interrupt_none.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!3638 = !DILocation(line: 30, column: 2, scope: !3636)
!3639 = distinct !DISubprogram(name: "(*internal/task.Mutex).Lock", linkageName: "(*internal/task.Mutex).Lock", scope: !385, file: !385, line: 31, type: !3640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3643)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!3642}
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64, dwarfAddressSpace: 0)
!3643 = !{!3644}
!3644 = !DILocalVariable(name: "m", arg: 1, scope: !3639, file: !385, line: 31, type: !3642)
!3645 = !DILocation(line: 31, column: 17, scope: !3639)
!3646 = !DILocation(line: 33, column: 5, scope: !3639)
!3647 = !DILocation(line: 33, column: 7, scope: !3639)
!3648 = !DILocation(line: 33, column: 27, scope: !3639)
!3649 = !DILocation(line: 0, scope: !3639)
!3650 = !DILocation(line: 35, column: 3, scope: !3639)
!3651 = !DILocation(line: 43, column: 6, scope: !3639)
!3652 = !DILocation(line: 43, column: 8, scope: !3639)
!3653 = !DILocation(line: 43, column: 18, scope: !3639)
!3654 = !DILocation(line: 43, column: 22, scope: !3639)
!3655 = !DILocation(line: 45, column: 3, scope: !3639)
!3656 = !DILocation(line: 45, column: 5, scope: !3639)
!3657 = !DILocation(line: 45, column: 15, scope: !3639)
!3658 = !DILocation(line: 47, column: 2, scope: !3639)
!3659 = distinct !DISubprogram(name: "(*internal/task.Mutex).Unlock", linkageName: "(*internal/task.Mutex).Unlock", scope: !385, file: !385, line: 49, type: !3640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3660)
!3660 = !{!3661, !3662}
!3661 = !DILocalVariable(name: "m", arg: 1, scope: !3659, file: !385, line: 49, type: !3642)
!3662 = !DILocalVariable(name: "old", scope: !3659, file: !385, line: 50, type: !108)
!3663 = !DILocation(line: 49, column: 17, scope: !3659)
!3664 = !DILocation(line: 50, column: 12, scope: !3659)
!3665 = !DILocation(line: 50, column: 14, scope: !3659)
!3666 = !DILocation(line: 50, column: 24, scope: !3659)
!3667 = !DILocation(line: 50, column: 5, scope: !3659)
!3668 = !DILocation(line: 50, column: 29, scope: !3659)
!3669 = !DILocation(line: 50, column: 33, scope: !3659)
!3670 = !DILocation(line: 0, scope: !3659)
!3671 = !DILocation(line: 52, column: 8, scope: !3659)
!3672 = !DILocation(line: 53, column: 12, scope: !3659)
!3673 = !DILocation(line: 53, column: 16, scope: !3659)
!3674 = !DILocation(line: 55, column: 3, scope: !3659)
!3675 = !DILocation(line: 55, column: 5, scope: !3659)
!3676 = !DILocation(line: 55, column: 15, scope: !3659)
!3677 = !DILocation(line: 57, column: 2, scope: !3659)
!3678 = distinct !DISubprogram(name: "(*internal/task.Semaphore).Wait", linkageName: "(*internal/task.Semaphore).Wait", scope: !3679, file: !3679, line: 21, type: !3680, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3683)
!3679 = !DIFile(filename: "semaphore.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!3682}
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64, dwarfAddressSpace: 0)
!3683 = !{!3684, !3685, !3686}
!3684 = !DILocalVariable(name: "s", arg: 1, scope: !3678, file: !3679, line: 21, type: !3682)
!3685 = !DILocalVariable(name: "delta", scope: !3678, file: !3679, line: 22, type: !388)
!3686 = !DILocalVariable(name: "value", scope: !3678, file: !3679, line: 23, type: !108)
!3687 = !DILocation(line: 21, column: 21, scope: !3678)
!3688 = !DILocation(line: 22, column: 2, scope: !3678)
!3689 = !DILocation(line: 23, column: 11, scope: !3678)
!3690 = !DILocation(line: 23, column: 13, scope: !3678)
!3691 = !DILocation(line: 23, column: 30, scope: !3678)
!3692 = !DILocation(line: 23, column: 22, scope: !3678)
!3693 = !DILocation(line: 23, column: 2, scope: !3678)
!3694 = !DILocation(line: 0, scope: !3678)
!3695 = !DILocation(line: 25, column: 12, scope: !3678)
!3696 = !DILocation(line: 25, column: 19, scope: !3678)
!3697 = !DILocation(line: 27, column: 4, scope: !3678)
!3698 = !DILocation(line: 29, column: 3, scope: !3678)
!3699 = !DILocation(line: 29, column: 5, scope: !3678)
!3700 = !DILocation(line: 29, column: 16, scope: !3678)
!3701 = !DILocation(line: 29, column: 15, scope: !3678)
!3702 = !DILocation(line: 30, column: 11, scope: !3678)
!3703 = !DILocation(line: 30, column: 13, scope: !3678)
!3704 = !DILocation(line: 30, column: 23, scope: !3678)
!3705 = !DILocation(line: 30, column: 3, scope: !3678)
!3706 = distinct !DISubprogram(name: "internal/task.Init", linkageName: "internal/task.Init", scope: !337, file: !337, line: 55, type: !3707, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3709)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!53}
!3709 = !{!3710, !3711}
!3710 = !DILocalVariable(name: "sp", arg: 1, scope: !3706, file: !337, line: 55, type: !53)
!3711 = !DILocalVariable(name: "stackTop", scope: !3706, file: !337, line: 24, type: !53)
!3712 = !DILocation(line: 55, column: 6, scope: !3706)
!3713 = !DILocation(line: 56, column: 28, scope: !3706)
!3714 = !DILocation(line: 56, column: 17, scope: !3706)
!3715 = !DILocation(line: 57, column: 18, scope: !3706)
!3716 = !DILocation(line: 58, column: 2, scope: !3706)
!3717 = distinct !DISubprogram(name: "internal/task.Current", linkageName: "internal/task.Current", scope: !337, file: !337, line: 61, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3718)
!3718 = !{!3719}
!3719 = !DILocalVariable(name: "t", scope: !3717, file: !337, line: 62, type: !338)
!3720 = !DILocation(line: 62, column: 34, scope: !3717)
!3721 = !DILocation(line: 62, column: 2, scope: !3717)
!3722 = !DILocation(line: 63, column: 5, scope: !3717)
!3723 = !DILocation(line: 63, column: 7, scope: !3717)
!3724 = !DILocation(line: 0, scope: !3717)
!3725 = !DILocation(line: 64, column: 15, scope: !3717)
!3726 = !DILocation(line: 66, column: 9, scope: !3717)
!3727 = !DILocation(line: 66, column: 2, scope: !3717)
!3728 = distinct !DISubprogram(name: "internal/task.Pause", linkageName: "internal/task.Pause", scope: !337, file: !337, line: 73, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3729)
!3729 = !{!3730}
!3730 = !DILocalVariable(name: "t", scope: !3728, file: !337, line: 75, type: !338)
!3731 = !DILocation(line: 75, column: 14, scope: !3728)
!3732 = !DILocation(line: 75, column: 2, scope: !3728)
!3733 = !DILocation(line: 0, scope: !3728)
!3734 = !DILocation(line: 77, column: 27, scope: !3728)
!3735 = !DILocation(line: 77, column: 29, scope: !3728)
!3736 = !DILocation(line: 77, column: 35, scope: !3728)
!3737 = !DILocation(line: 77, column: 10, scope: !3728)
!3738 = !DILocation(line: 79, column: 2, scope: !3728)
!3739 = !DILocation(line: 79, column: 4, scope: !3728)
!3740 = !DILocation(line: 79, column: 10, scope: !3728)
!3741 = !DILocation(line: 79, column: 23, scope: !3728)
!3742 = !DILocation(line: 80, column: 2, scope: !3728)
!3743 = distinct !DISubprogram(name: "internal/task.taskExited", linkageName: "tinygo_task_exited", scope: !337, file: !337, line: 125, type: !3744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3746)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!338}
!3746 = !{!3747, !3748, !3749, !3751}
!3747 = !DILocalVariable(name: "t", arg: 1, scope: !3743, file: !337, line: 125, type: !338)
!3748 = !DILocalVariable(name: "found", scope: !3743, file: !337, line: 133, type: !378)
!3749 = !DILocalVariable(name: "q", scope: !3743, file: !337, line: 134, type: !3750)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64, dwarfAddressSpace: 0)
!3751 = !DILocalVariable(name: "otherGoroutines", scope: !3743, file: !337, line: 99, type: !108)
!3752 = !DILocation(line: 125, column: 6, scope: !3743)
!3753 = !DILocation(line: 0, scope: !3743)
!3754 = !DILocation(line: 127, column: 24, scope: !3743)
!3755 = !DILocation(line: 127, column: 26, scope: !3743)
!3756 = !DILocation(line: 127, column: 32, scope: !3743)
!3757 = !DILocation(line: 127, column: 10, scope: !3743)
!3758 = !DILocation(line: 132, column: 21, scope: !3743)
!3759 = !DILocation(line: 133, column: 2, scope: !3743)
!3760 = !DILocation(line: 134, column: 6, scope: !3743)
!3761 = !DILocation(line: 134, column: 26, scope: !3743)
!3762 = !DILocation(line: 134, column: 25, scope: !3743)
!3763 = !DILocation(line: 134, column: 28, scope: !3743)
!3764 = !DILocation(line: 135, column: 7, scope: !3743)
!3765 = !DILocation(line: 135, column: 6, scope: !3743)
!3766 = !DILocation(line: 135, column: 12, scope: !3743)
!3767 = !DILocation(line: 135, column: 9, scope: !3743)
!3768 = !DILocation(line: 136, column: 5, scope: !3743)
!3769 = !DILocation(line: 136, column: 9, scope: !3743)
!3770 = !DILocation(line: 136, column: 11, scope: !3743)
!3771 = !DILocation(line: 136, column: 17, scope: !3743)
!3772 = !DILocation(line: 136, column: 4, scope: !3743)
!3773 = !DILocation(line: 137, column: 4, scope: !3743)
!3774 = !DILocation(line: 134, column: 43, scope: !3743)
!3775 = !DILocation(line: 134, column: 42, scope: !3743)
!3776 = !DILocation(line: 134, column: 46, scope: !3743)
!3777 = !DILocation(line: 134, column: 52, scope: !3743)
!3778 = !DILocation(line: 134, column: 36, scope: !3743)
!3779 = !DILocation(line: 141, column: 2, scope: !3743)
!3780 = !DILocation(line: 142, column: 23, scope: !3743)
!3781 = !DILocation(line: 145, column: 6, scope: !3743)
!3782 = !DILocation(line: 148, column: 2, scope: !3743)
!3783 = !DILocation(line: 146, column: 15, scope: !3743)
!3784 = distinct !DISubprogram(name: "(*internal/task.waitGroup).done", linkageName: "(*internal/task.waitGroup).done", scope: !337, file: !337, line: 163, type: !3785, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3788)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!3787}
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64, dwarfAddressSpace: 0)
!3788 = !{!3789}
!3789 = !DILocalVariable(name: "wg", arg: 1, scope: !3784, file: !337, line: 163, type: !3787)
!3790 = !DILocation(line: 163, column: 22, scope: !3784)
!3791 = !DILocation(line: 164, column: 5, scope: !3784)
!3792 = !DILocation(line: 164, column: 8, scope: !3784)
!3793 = !DILocation(line: 164, column: 13, scope: !3784)
!3794 = !DILocation(line: 164, column: 26, scope: !3784)
!3795 = !DILocation(line: 0, scope: !3784)
!3796 = !DILocation(line: 165, column: 3, scope: !3784)
!3797 = !DILocation(line: 165, column: 6, scope: !3784)
!3798 = !DILocation(line: 165, column: 15, scope: !3784)
!3799 = !DILocation(line: 167, column: 2, scope: !3784)
!3800 = distinct !DISubprogram(name: "(*internal/task.waitGroup).wait", linkageName: "(*internal/task.waitGroup).wait", scope: !337, file: !337, line: 169, type: !3785, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3801)
!3801 = !{!3802, !3803}
!3802 = !DILocalVariable(name: "wg", arg: 1, scope: !3800, file: !337, line: 169, type: !3787)
!3803 = !DILocalVariable(name: "val", scope: !3800, file: !337, line: 171, type: !108)
!3804 = !DILocation(line: 169, column: 22, scope: !3800)
!3805 = !DILocation(line: 0, scope: !3800)
!3806 = !DILocation(line: 171, column: 10, scope: !3800)
!3807 = !DILocation(line: 171, column: 13, scope: !3800)
!3808 = !DILocation(line: 171, column: 19, scope: !3800)
!3809 = !DILocation(line: 171, column: 3, scope: !3800)
!3810 = !DILocation(line: 172, column: 6, scope: !3800)
!3811 = !DILocation(line: 172, column: 10, scope: !3800)
!3812 = !DILocation(line: 173, column: 4, scope: !3800)
!3813 = !DILocation(line: 175, column: 3, scope: !3800)
!3814 = !DILocation(line: 175, column: 6, scope: !3800)
!3815 = !DILocation(line: 175, column: 13, scope: !3800)
!3816 = !DILocation(line: 175, column: 12, scope: !3800)
!3817 = distinct !DISubprogram(name: "internal/task.initWaitGroup", linkageName: "internal/task.initWaitGroup", scope: !337, file: !337, line: 157, type: !3818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3820)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!108}
!3820 = !{!3821, !3822}
!3821 = !DILocalVariable(name: "n", arg: 1, scope: !3817, file: !337, line: 157, type: !108)
!3822 = !DILocalVariable(name: "wg", scope: !3817, file: !337, line: 158, type: !408)
!3823 = !DILocation(line: 157, column: 6, scope: !3817)
!3824 = !DILocation(line: 158, column: 6, scope: !3817)
!3825 = !DILocation(line: 159, column: 5, scope: !3817)
!3826 = !DILocation(line: 159, column: 2, scope: !3817)
!3827 = !DILocation(line: 159, column: 13, scope: !3817)
!3828 = !DILocation(line: 159, column: 12, scope: !3817)
!3829 = !DILocation(line: 160, column: 9, scope: !3817)
!3830 = !DILocation(line: 160, column: 2, scope: !3817)
!3831 = distinct !DISubprogram(name: "internal/task.GCStopWorldAndScan", linkageName: "internal/task.GCStopWorldAndScan", scope: !337, file: !337, line: 192, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3832)
!3832 = !{!3833, !3834, !3835, !3836, !3837, !3838}
!3833 = !DILocalVariable(name: "current", scope: !3831, file: !337, line: 193, type: !338)
!3834 = !DILocalVariable(name: "otherGoroutines", scope: !3831, file: !337, line: 99, type: !108)
!3835 = !DILocalVariable(name: "scanWaitGroup", scope: !3831, file: !337, line: 151, type: !408)
!3836 = !DILocalVariable(name: "activeTasks", scope: !3831, file: !337, line: 45, type: !338)
!3837 = !DILocalVariable(name: "t", scope: !3831, file: !337, line: 212, type: !338)
!3838 = !DILocalVariable(name: "t", scope: !3831, file: !337, line: 223, type: !338)
!3839 = !DILocation(line: 193, column: 20, scope: !3831)
!3840 = !DILocation(line: 193, column: 2, scope: !3831)
!3841 = !DILocation(line: 196, column: 17, scope: !3831)
!3842 = !DILocation(line: 196, column: 20, scope: !3831)
!3843 = !DILocation(line: 0, scope: !3831)
!3844 = !DILocation(line: 199, column: 22, scope: !3831)
!3845 = !DILocation(line: 202, column: 21, scope: !3831)
!3846 = !DILocation(line: 206, column: 16, scope: !3831)
!3847 = !DILocation(line: 209, column: 33, scope: !3831)
!3848 = !DILocation(line: 209, column: 32, scope: !3831)
!3849 = !DILocation(line: 209, column: 3, scope: !3831)
!3850 = !DILocation(line: 212, column: 12, scope: !3831)
!3851 = !DILocation(line: 212, column: 7, scope: !3831)
!3852 = !DILocation(line: 212, column: 25, scope: !3831)
!3853 = !DILocation(line: 212, column: 27, scope: !3831)
!3854 = !DILocation(line: 213, column: 7, scope: !3831)
!3855 = !DILocation(line: 213, column: 12, scope: !3831)
!3856 = !DILocation(line: 213, column: 9, scope: !3831)
!3857 = !DILocation(line: 214, column: 32, scope: !3831)
!3858 = !DILocation(line: 214, column: 34, scope: !3831)
!3859 = !DILocation(line: 214, column: 40, scope: !3831)
!3860 = !DILocation(line: 214, column: 31, scope: !3831)
!3861 = !DILocation(line: 212, column: 39, scope: !3831)
!3862 = !DILocation(line: 212, column: 41, scope: !3831)
!3863 = !DILocation(line: 212, column: 47, scope: !3831)
!3864 = !DILocation(line: 212, column: 35, scope: !3831)
!3865 = !DILocation(line: 219, column: 21, scope: !3831)
!3866 = !DILocation(line: 223, column: 11, scope: !3831)
!3867 = !DILocation(line: 223, column: 6, scope: !3831)
!3868 = !DILocation(line: 223, column: 24, scope: !3831)
!3869 = !DILocation(line: 223, column: 26, scope: !3831)
!3870 = !DILocation(line: 224, column: 6, scope: !3831)
!3871 = !DILocation(line: 224, column: 11, scope: !3831)
!3872 = !DILocation(line: 224, column: 8, scope: !3831)
!3873 = !DILocation(line: 225, column: 14, scope: !3831)
!3874 = !DILocation(line: 225, column: 16, scope: !3831)
!3875 = !DILocation(line: 225, column: 22, scope: !3831)
!3876 = !DILocation(line: 225, column: 35, scope: !3831)
!3877 = !DILocation(line: 225, column: 37, scope: !3831)
!3878 = !DILocation(line: 225, column: 43, scope: !3831)
!3879 = !DILocation(line: 225, column: 13, scope: !3831)
!3880 = !DILocation(line: 223, column: 38, scope: !3831)
!3881 = !DILocation(line: 223, column: 40, scope: !3831)
!3882 = !DILocation(line: 223, column: 46, scope: !3831)
!3883 = !DILocation(line: 223, column: 34, scope: !3831)
!3884 = !DILocation(line: 230, column: 18, scope: !3831)
!3885 = !DILocation(line: 233, column: 15, scope: !3831)
!3886 = !DILocation(line: 234, column: 2, scope: !3831)
!3887 = distinct !DISubprogram(name: "internal/task.GCResumeWorld", linkageName: "internal/task.GCResumeWorld", scope: !337, file: !337, line: 237, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3888)
!3888 = !{!3889, !3890}
!3889 = !DILocalVariable(name: "otherGoroutines", scope: !3887, file: !337, line: 99, type: !108)
!3890 = !DILocalVariable(name: "scanWaitGroup", scope: !3887, file: !337, line: 151, type: !408)
!3891 = !DILocation(line: 239, column: 17, scope: !3887)
!3892 = !DILocation(line: 239, column: 20, scope: !3887)
!3893 = !DILocation(line: 0, scope: !3887)
!3894 = !DILocation(line: 241, column: 3, scope: !3887)
!3895 = !DILocation(line: 245, column: 32, scope: !3887)
!3896 = !DILocation(line: 245, column: 31, scope: !3887)
!3897 = !DILocation(line: 245, column: 2, scope: !3887)
!3898 = !DILocation(line: 248, column: 15, scope: !3887)
!3899 = !DILocation(line: 251, column: 17, scope: !3887)
!3900 = !DILocation(line: 254, column: 23, scope: !3887)
!3901 = !DILocation(line: 255, column: 2, scope: !3887)
!3902 = distinct !DISubprogram(name: "internal/task.tingyo_task_gc_pause", linkageName: "tinygo_task_gc_pause", scope: !337, file: !337, line: 266, type: !3903, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3905)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!388}
!3905 = !{!3906, !3907}
!3906 = !DILocalVariable(name: "sig", arg: 1, scope: !3902, file: !337, line: 266, type: !388)
!3907 = !DILocalVariable(name: "stackBottom", scope: !3902, file: !337, line: 28, type: !53)
!3908 = !DILocation(line: 266, column: 6, scope: !3902)
!3909 = !DILocation(line: 268, column: 9, scope: !3902)
!3910 = !DILocation(line: 268, column: 12, scope: !3902)
!3911 = !DILocation(line: 268, column: 49, scope: !3902)
!3912 = !DILocation(line: 268, column: 39, scope: !3902)
!3913 = !DILocation(line: 268, column: 18, scope: !3902)
!3914 = !DILocation(line: 271, column: 20, scope: !3902)
!3915 = !DILocation(line: 0, scope: !3902)
!3916 = !DILocation(line: 274, column: 18, scope: !3902)
!3917 = !DILocation(line: 274, column: 21, scope: !3902)
!3918 = !DILocation(line: 275, column: 15, scope: !3902)
!3919 = !DILocation(line: 279, column: 20, scope: !3902)
!3920 = !DILocation(line: 280, column: 2, scope: !3902)
!3921 = distinct !DISubprogram(name: "internal/task.StackTop", linkageName: "internal/task.StackTop", scope: !337, file: !337, line: 289, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527)
!3922 = !DILocation(line: 290, column: 16, scope: !3921)
!3923 = !DILocation(line: 290, column: 19, scope: !3921)
!3924 = !DILocation(line: 290, column: 25, scope: !3921)
!3925 = !DILocation(line: 290, column: 2, scope: !3921)
!3926 = distinct !DISubprogram(name: "runtime.alloc", linkageName: "runtime.alloc", scope: !428, file: !428, line: 68, type: !3927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3929)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!53, !94}
!3929 = !{!3930, !3931, !3932}
!3930 = !DILocalVariable(name: "size", arg: 1, scope: !3926, file: !428, line: 68, type: !53)
!3931 = !DILocalVariable(name: "layout", arg: 2, scope: !3926, file: !428, line: 68, type: !94)
!3932 = !DILocalVariable(name: "ptr", scope: !3926, file: !428, line: 74, type: !94)
!3933 = !DILocation(line: 68, column: 6, scope: !3926)
!3934 = !DILocation(line: 69, column: 5, scope: !3926)
!3935 = !DILocation(line: 69, column: 10, scope: !3926)
!3936 = !DILocation(line: 0, scope: !3926)
!3937 = !DILocation(line: 70, column: 3, scope: !3926)
!3938 = !DILocation(line: 73, column: 13, scope: !3926)
!3939 = !DILocation(line: 74, column: 6, scope: !3926)
!3940 = !DILocation(line: 75, column: 5, scope: !3926)
!3941 = !DILocation(line: 75, column: 36, scope: !3926)
!3942 = !DILocation(line: 75, column: 12, scope: !3926)
!3943 = !DILocation(line: 79, column: 29, scope: !3926)
!3944 = !DILocation(line: 79, column: 28, scope: !3926)
!3945 = !DILocation(line: 79, column: 3, scope: !3926)
!3946 = !DILocation(line: 82, column: 11, scope: !3926)
!3947 = !DILocation(line: 82, column: 16, scope: !3926)
!3948 = !DILocation(line: 82, column: 10, scope: !3926)
!3949 = !DILocation(line: 90, column: 15, scope: !3926)
!3950 = !DILocation(line: 91, column: 15, scope: !3926)
!3951 = !DILocation(line: 92, column: 5, scope: !3926)
!3952 = !DILocation(line: 92, column: 9, scope: !3926)
!3953 = !DILocation(line: 93, column: 15, scope: !3926)
!3954 = !DILocation(line: 96, column: 9, scope: !3926)
!3955 = !DILocation(line: 96, column: 2, scope: !3926)
!3956 = !DILocation(line: 86, column: 22, scope: !3926)
!3957 = !DILocation(line: 86, column: 21, scope: !3926)
!3958 = !DILocation(line: 86, column: 3, scope: !3926)
!3959 = distinct !DISubprogram(name: "runtime.memzero", linkageName: "runtime.memzero", scope: !1584, file: !1584, line: 53, type: !3960, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3962)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!94, !53}
!3962 = !{!3963, !3964}
!3963 = !DILocalVariable(name: "ptr", arg: 1, scope: !3959, file: !1584, line: 53, type: !94)
!3964 = !DILocalVariable(name: "size", arg: 2, scope: !3959, file: !1584, line: 53, type: !53)
!3965 = !DILocation(line: 53, column: 6, scope: !3959)
!3966 = distinct !DISubprogram(name: "runtime.gcResumeWorld", linkageName: "runtime.gcResumeWorld", scope: !3967, file: !3967, line: 27, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3967 = !DIFile(filename: "gc_stack_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3968 = !DILocation(line: 28, column: 20, scope: !3966)
!3969 = !DILocation(line: 29, column: 2, scope: !3966)
!3970 = distinct !DISubprogram(name: "runtime.runtimePanic", linkageName: "runtime.runtimePanic", scope: !435, file: !435, line: 85, type: !2445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3971)
!3971 = !{!3972}
!3972 = !DILocalVariable(name: "msg", arg: 1, scope: !3970, file: !435, line: 85, type: !48)
!3973 = !DILocation(line: 85, column: 6, scope: !3970)
!3974 = !DILocation(line: 88, column: 30, scope: !3970)
!3975 = !DILocation(line: 88, column: 35, scope: !3970)
!3976 = !DILocation(line: 88, column: 16, scope: !3970)
!3977 = !DILocation(line: 89, column: 2, scope: !3970)
!3978 = distinct !DISubprogram(name: "runtime.runtimePanicAt", linkageName: "runtime.runtimePanicAt", scope: !435, file: !435, line: 91, type: !3979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3981)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!94, !48}
!3981 = !{!3982, !3983}
!3982 = !DILocalVariable(name: "addr", arg: 1, scope: !3978, file: !435, line: 91, type: !94)
!3983 = !DILocalVariable(name: "msg", arg: 2, scope: !3978, file: !435, line: 91, type: !48)
!3984 = !DILocation(line: 91, column: 6, scope: !3978)
!3985 = !DILocation(line: 0, scope: !3978)
!3986 = !DILocation(line: 93, column: 7, scope: !3978)
!3987 = !DILocation(line: 99, column: 14, scope: !3978)
!3988 = !DILocation(line: 100, column: 20, scope: !3978)
!3989 = !DILocation(line: 100, column: 19, scope: !3978)
!3990 = !DILocation(line: 100, column: 26, scope: !3978)
!3991 = !DILocation(line: 100, column: 11, scope: !3978)
!3992 = !DILocation(line: 101, column: 14, scope: !3978)
!3993 = !DILocation(line: 105, column: 14, scope: !3978)
!3994 = !DILocation(line: 105, column: 13, scope: !3978)
!3995 = !DILocation(line: 106, column: 9, scope: !3978)
!3996 = !DILocation(line: 107, column: 7, scope: !3978)
!3997 = !DILocation(line: 108, column: 2, scope: !3978)
!3998 = !DILocation(line: 103, column: 14, scope: !3978)
!3999 = distinct !DISubprogram(name: "runtime.printstring", linkageName: "runtime.printstring", scope: !465, file: !465, line: 12, type: !2445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4000)
!4000 = !{!4001, !4002}
!4001 = !DILocalVariable(name: "s", arg: 1, scope: !3999, file: !465, line: 12, type: !48)
!4002 = !DILocalVariable(name: "i", scope: !3999, file: !465, line: 13, type: !1797)
!4003 = !DILocation(line: 12, column: 6, scope: !3999)
!4004 = !DILocation(line: 13, column: 6, scope: !3999)
!4005 = !DILocation(line: 0, scope: !3999)
!4006 = !DILocation(line: 13, column: 14, scope: !3999)
!4007 = !DILocation(line: 13, column: 22, scope: !3999)
!4008 = !DILocation(line: 13, column: 21, scope: !3999)
!4009 = !DILocation(line: 13, column: 16, scope: !3999)
!4010 = !DILocation(line: 14, column: 13, scope: !3999)
!4011 = !DILocation(line: 14, column: 11, scope: !3999)
!4012 = !DILocation(line: 14, column: 12, scope: !3999)
!4013 = !DILocation(line: 14, column: 10, scope: !3999)
!4014 = !DILocation(line: 13, column: 26, scope: !3999)
!4015 = !DILocation(line: 16, column: 2, scope: !3999)
!4016 = distinct !DISubprogram(name: "runtime.printptr", linkageName: "runtime.printptr", scope: !465, file: !465, line: 371, type: !3707, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4017)
!4017 = !{!4018, !4019, !4020}
!4018 = !DILocalVariable(name: "ptr", arg: 1, scope: !4016, file: !465, line: 371, type: !53)
!4019 = !DILocalVariable(name: "i", scope: !4016, file: !465, line: 378, type: !1797)
!4020 = !DILocalVariable(name: "nibble", scope: !4016, file: !465, line: 379, type: !540)
!4021 = !DILocation(line: 371, column: 6, scope: !4016)
!4022 = !DILocation(line: 372, column: 5, scope: !4016)
!4023 = !DILocation(line: 372, column: 9, scope: !4016)
!4024 = !DILocation(line: 0, scope: !4016)
!4025 = !DILocation(line: 373, column: 14, scope: !4016)
!4026 = !DILocation(line: 374, column: 3, scope: !4016)
!4027 = !DILocation(line: 376, column: 9, scope: !4016)
!4028 = !DILocation(line: 377, column: 9, scope: !4016)
!4029 = !DILocation(line: 378, column: 6, scope: !4016)
!4030 = !DILocation(line: 371, column: 15, scope: !4016)
!4031 = !DILocation(line: 378, column: 14, scope: !4016)
!4032 = !DILocation(line: 378, column: 16, scope: !4016)
!4033 = !DILocation(line: 379, column: 18, scope: !4016)
!4034 = !DILocation(line: 379, column: 22, scope: !4016)
!4035 = !DILocation(line: 379, column: 17, scope: !4016)
!4036 = !DILocation(line: 379, column: 3, scope: !4016)
!4037 = !DILocation(line: 380, column: 6, scope: !4016)
!4038 = !DILocation(line: 380, column: 13, scope: !4016)
!4039 = !DILocation(line: 381, column: 12, scope: !4016)
!4040 = !DILocation(line: 381, column: 19, scope: !4016)
!4041 = !DILocation(line: 381, column: 11, scope: !4016)
!4042 = !DILocation(line: 385, column: 3, scope: !4016)
!4043 = !DILocation(line: 378, column: 45, scope: !4016)
!4044 = !DILocation(line: 383, column: 12, scope: !4016)
!4045 = !DILocation(line: 383, column: 19, scope: !4016)
!4046 = !DILocation(line: 383, column: 24, scope: !4016)
!4047 = !DILocation(line: 383, column: 11, scope: !4016)
!4048 = !DILocation(line: 387, column: 2, scope: !4016)
!4049 = distinct !DISubprogram(name: "runtime.printnl", linkageName: "runtime.printnl", scope: !465, file: !465, line: 286, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4050 = !DILocation(line: 0, scope: !4049)
!4051 = !DILocation(line: 288, column: 10, scope: !4049)
!4052 = !DILocation(line: 290, column: 9, scope: !4049)
!4053 = !DILocation(line: 291, column: 2, scope: !4049)
!4054 = distinct !DISubprogram(name: "runtime.putchar", linkageName: "runtime.putchar", scope: !421, file: !421, line: 214, type: !4055, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4057)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!540}
!4057 = !{!4058}
!4058 = !DILocalVariable(name: "c", arg: 1, scope: !4054, file: !421, line: 214, type: !540)
!4059 = !DILocation(line: 214, column: 6, scope: !4054)
!4060 = !DILocation(line: 215, column: 2, scope: !4054)
!4061 = !DILocation(line: 215, column: 17, scope: !4054)
!4062 = !DILocation(line: 216, column: 35, scope: !4054)
!4063 = !DILocation(line: 216, column: 12, scope: !4054)
!4064 = !DILocation(line: 217, column: 2, scope: !4054)
!4065 = distinct !DISubprogram(name: "runtime.initRand", linkageName: "runtime.initRand", scope: !416, file: !416, line: 26, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4066)
!4066 = !{!4067, !4068, !4069}
!4067 = !DILocalVariable(name: "r", scope: !4065, file: !416, line: 27, type: !345)
!4068 = !DILocalVariable(name: "xorshift64State", scope: !4065, file: !416, line: 52, type: !345)
!4069 = !DILocalVariable(name: "xorshift32State", scope: !4065, file: !416, line: 32, type: !108)
!4070 = !DILocation(line: 27, column: 22, scope: !4065)
!4071 = !DILocation(line: 27, column: 2, scope: !4065)
!4072 = !DILocation(line: 28, column: 27, scope: !4065)
!4073 = !DILocation(line: 28, column: 29, scope: !4065)
!4074 = !DILocation(line: 28, column: 2, scope: !4065)
!4075 = !DILocation(line: 29, column: 27, scope: !4065)
!4076 = !DILocation(line: 29, column: 26, scope: !4065)
!4077 = !DILocation(line: 29, column: 2, scope: !4065)
!4078 = !DILocation(line: 30, column: 2, scope: !4065)
!4079 = distinct !DISubprogram(name: "runtime.hardwareRand", linkageName: "runtime.hardwareRand", scope: !4080, file: !4080, line: 137, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4081)
!4080 = !DIFile(filename: "os_linux.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4081 = !{!4082, !4083}
!4082 = !DILocalVariable(name: "read", scope: !4079, file: !4080, line: 138, type: !108)
!4083 = !DILocalVariable(name: "n", scope: !4079, file: !4080, line: 137, type: !345)
!4084 = !DILocation(line: 137, column: 22, scope: !4079)
!4085 = !DILocation(line: 138, column: 24, scope: !4079)
!4086 = !DILocation(line: 138, column: 2, scope: !4079)
!4087 = !DILocation(line: 139, column: 5, scope: !4079)
!4088 = !DILocation(line: 139, column: 10, scope: !4079)
!4089 = !DILocation(line: 0, scope: !4079)
!4090 = !DILocation(line: 140, column: 3, scope: !4079)
!4091 = !DILocation(line: 142, column: 9, scope: !4079)
!4092 = !DILocation(line: 142, column: 2, scope: !4079)
!4093 = distinct !DISubprogram(name: "runtime.getCurrentStackPointer", linkageName: "runtime.getCurrentStackPointer", scope: !4094, file: !4094, line: 26, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4094 = !DIFile(filename: "arch_amd64.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4095 = !DILocation(line: 27, column: 26, scope: !4093)
!4096 = !DILocation(line: 27, column: 16, scope: !4093)
!4097 = !DILocation(line: 27, column: 2, scope: !4093)
!4098 = distinct !DISubprogram(name: "runtime.stacksave", linkageName: "runtime.stacksave", scope: !1584, file: !1584, line: 58, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4099 = !DILocation(line: 58, column: 6, scope: !4098)
!4100 = distinct !DISubprogram(name: "runtime.memcpy", linkageName: "runtime.memcpy", scope: !1584, file: !1584, line: 42, type: !4101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4103)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!94, !94, !53}
!4103 = !{!4104, !4105, !4106}
!4104 = !DILocalVariable(name: "dst", arg: 1, scope: !4100, file: !1584, line: 42, type: !94)
!4105 = !DILocalVariable(name: "src", arg: 2, scope: !4100, file: !1584, line: 42, type: !94)
!4106 = !DILocalVariable(name: "size", arg: 3, scope: !4100, file: !1584, line: 42, type: !53)
!4107 = !DILocation(line: 42, column: 6, scope: !4100)
!4108 = distinct !DISubprogram(name: "runtime.nilPanic", linkageName: "runtime.nilPanic", scope: !435, file: !435, line: 183, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4109 = !DILocation(line: 184, column: 30, scope: !4108)
!4110 = !DILocation(line: 184, column: 16, scope: !4108)
!4111 = !DILocation(line: 185, column: 2, scope: !4108)
!4112 = distinct !DISubprogram(name: "runtime.deadlock", linkageName: "runtime.deadlock", scope: !522, file: !522, line: 42, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4113 = !DILocation(line: 44, column: 12, scope: !4112)
!4114 = !DILocation(line: 45, column: 2, scope: !4112)
!4115 = distinct !DISubprogram(name: "runtime.lookupPanic", linkageName: "runtime.lookupPanic", scope: !435, file: !435, line: 193, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4116 = !DILocation(line: 194, column: 30, scope: !4115)
!4117 = !DILocation(line: 194, column: 16, scope: !4115)
!4118 = !DILocation(line: 195, column: 2, scope: !4115)
!4119 = distinct !DISubprogram(name: "runtime.panicOrGoexit", linkageName: "runtime.panicOrGoexit", scope: !435, file: !435, line: 58, type: !4120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4123)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!785, !4122}
!4122 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.panicState", baseType: !4)
!4123 = !{!4124, !4125, !4126, !4137, !4138}
!4124 = !DILocalVariable(name: "message", arg: 1, scope: !4119, file: !435, line: 58, type: !785)
!4125 = !DILocalVariable(name: "panicking", arg: 2, scope: !4119, file: !435, line: 58, type: !4122)
!4126 = !DILocalVariable(name: "frame", scope: !4119, file: !435, line: 65, type: !4127)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64, align: 64, dwarfAddressSpace: 0)
!4128 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.deferFrame", baseType: !4129)
!4129 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !4130)
!4130 = !{!4131, !4132, !4133, !4134, !4135, !4136}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "JumpSP", baseType: !94, size: 64, align: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "JumpPC", baseType: !94, size: 64, align: 64, offset: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraRegs", baseType: !3068, align: 64, offset: 128)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "Previous", baseType: !4127, size: 64, align: 64, offset: 128)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "Panicking", baseType: !4122, size: 8, align: 8, offset: 192)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "PanicValue", baseType: !785, size: 128, align: 64, offset: 256)
!4137 = !DILocalVariable(name: "PanicValue", scope: !4119, file: !435, line: 42, type: !785)
!4138 = !DILocalVariable(name: "Panicking", scope: !4119, file: !435, line: 41, type: !4122)
!4139 = !DILocation(line: 58, column: 6, scope: !4119)
!4140 = !DILocation(line: 0, scope: !4119)
!4141 = !DILocation(line: 60, column: 7, scope: !4119)
!4142 = !DILocation(line: 64, column: 39, scope: !4119)
!4143 = !DILocation(line: 65, column: 38, scope: !4119)
!4144 = !DILocation(line: 65, column: 41, scope: !4119)
!4145 = !DILocation(line: 65, column: 3, scope: !4119)
!4146 = !DILocation(line: 66, column: 6, scope: !4119)
!4147 = !DILocation(line: 66, column: 12, scope: !4119)
!4148 = !DILocation(line: 67, column: 4, scope: !4119)
!4149 = !DILocation(line: 67, column: 23, scope: !4119)
!4150 = !DILocation(line: 67, column: 10, scope: !4119)
!4151 = !DILocation(line: 68, column: 4, scope: !4119)
!4152 = !DILocation(line: 68, column: 22, scope: !4119)
!4153 = !DILocation(line: 68, column: 10, scope: !4119)
!4154 = !DILocation(line: 69, column: 19, scope: !4119)
!4155 = !DILocation(line: 69, column: 18, scope: !4119)
!4156 = !DILocation(line: 73, column: 5, scope: !4119)
!4157 = !DILocation(line: 73, column: 15, scope: !4119)
!4158 = !DILocation(line: 76, column: 11, scope: !4119)
!4159 = !DILocation(line: 78, column: 13, scope: !4119)
!4160 = !DILocation(line: 79, column: 11, scope: !4119)
!4161 = !DILocation(line: 79, column: 10, scope: !4119)
!4162 = !DILocation(line: 80, column: 9, scope: !4119)
!4163 = !DILocation(line: 81, column: 7, scope: !4119)
!4164 = !DILocation(line: 82, column: 2, scope: !4119)
!4165 = distinct !DISubprogram(name: "runtime.printitf", linkageName: "runtime.printitf", scope: !465, file: !465, line: 293, type: !4166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4168)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!785}
!4168 = !{!4169, !4170, !4171, !4172, !4173, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4185, !4186, !4188, !4190, !4191, !4192, !4194}
!4169 = !DILocalVariable(name: "msg", arg: 1, scope: !4165, file: !465, line: 293, type: !785)
!4170 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !378)
!4171 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !1797)
!4172 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !92)
!4173 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !4174)
!4174 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!4175 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !388)
!4176 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !1699)
!4177 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !1738)
!4178 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !4)
!4179 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !100)
!4180 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !108)
!4181 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !345)
!4182 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !53)
!4183 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !4184)
!4184 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!4185 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !802)
!4186 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !4187)
!4187 = !DIBasicType(name: "complex64", size: 64, encoding: DW_ATE_complex_float)
!4188 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !4189)
!4189 = !DIBasicType(name: "complex128", size: 128, encoding: DW_ATE_complex_float)
!4190 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !48)
!4191 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !784)
!4192 = !DILocalVariable(name: "msg", scope: !4165, file: !465, line: 294, type: !4193)
!4193 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.stringer", baseType: !785)
!4194 = !DILocalVariable(name: "itf", scope: !4165, file: !465, line: 345, type: !785)
!4195 = !DILocation(line: 293, column: 6, scope: !4165)
!4196 = !DILocation(line: 294, column: 16, scope: !4165)
!4197 = !DILocation(line: 295, column: 2, scope: !4165)
!4198 = !DILocation(line: 0, scope: !4165)
!4199 = !DILocation(line: 296, column: 13, scope: !4165)
!4200 = !DILocation(line: 296, column: 12, scope: !4165)
!4201 = !DILocation(line: 352, column: 2, scope: !4165)
!4202 = !DILocation(line: 297, column: 2, scope: !4165)
!4203 = !DILocation(line: 300, column: 21, scope: !4165)
!4204 = !DILocation(line: 300, column: 14, scope: !4165)
!4205 = !DILocation(line: 302, column: 21, scope: !4165)
!4206 = !DILocation(line: 302, column: 20, scope: !4165)
!4207 = !DILocation(line: 302, column: 14, scope: !4165)
!4208 = !DILocation(line: 304, column: 2, scope: !4165)
!4209 = !DILocation(line: 305, column: 13, scope: !4165)
!4210 = !DILocation(line: 305, column: 12, scope: !4165)
!4211 = !DILocation(line: 306, column: 2, scope: !4165)
!4212 = !DILocation(line: 307, column: 14, scope: !4165)
!4213 = !DILocation(line: 307, column: 13, scope: !4165)
!4214 = !DILocation(line: 308, column: 2, scope: !4165)
!4215 = !DILocation(line: 309, column: 14, scope: !4165)
!4216 = !DILocation(line: 309, column: 13, scope: !4165)
!4217 = !DILocation(line: 310, column: 2, scope: !4165)
!4218 = !DILocation(line: 311, column: 14, scope: !4165)
!4219 = !DILocation(line: 311, column: 13, scope: !4165)
!4220 = !DILocation(line: 312, column: 2, scope: !4165)
!4221 = !DILocation(line: 315, column: 23, scope: !4165)
!4222 = !DILocation(line: 315, column: 15, scope: !4165)
!4223 = !DILocation(line: 317, column: 23, scope: !4165)
!4224 = !DILocation(line: 317, column: 22, scope: !4165)
!4225 = !DILocation(line: 317, column: 15, scope: !4165)
!4226 = !DILocation(line: 319, column: 2, scope: !4165)
!4227 = !DILocation(line: 320, column: 14, scope: !4165)
!4228 = !DILocation(line: 320, column: 13, scope: !4165)
!4229 = !DILocation(line: 321, column: 2, scope: !4165)
!4230 = !DILocation(line: 322, column: 15, scope: !4165)
!4231 = !DILocation(line: 322, column: 14, scope: !4165)
!4232 = !DILocation(line: 323, column: 2, scope: !4165)
!4233 = !DILocation(line: 324, column: 15, scope: !4165)
!4234 = !DILocation(line: 324, column: 14, scope: !4165)
!4235 = !DILocation(line: 325, column: 2, scope: !4165)
!4236 = !DILocation(line: 326, column: 15, scope: !4165)
!4237 = !DILocation(line: 326, column: 14, scope: !4165)
!4238 = !DILocation(line: 327, column: 2, scope: !4165)
!4239 = !DILocation(line: 328, column: 16, scope: !4165)
!4240 = !DILocation(line: 328, column: 15, scope: !4165)
!4241 = !DILocation(line: 329, column: 2, scope: !4165)
!4242 = !DILocation(line: 330, column: 16, scope: !4165)
!4243 = !DILocation(line: 330, column: 15, scope: !4165)
!4244 = !DILocation(line: 331, column: 2, scope: !4165)
!4245 = !DILocation(line: 332, column: 16, scope: !4165)
!4246 = !DILocation(line: 332, column: 15, scope: !4165)
!4247 = !DILocation(line: 333, column: 2, scope: !4165)
!4248 = !DILocation(line: 334, column: 18, scope: !4165)
!4249 = !DILocation(line: 334, column: 17, scope: !4165)
!4250 = !DILocation(line: 335, column: 2, scope: !4165)
!4251 = !DILocation(line: 336, column: 19, scope: !4165)
!4252 = !DILocation(line: 336, column: 18, scope: !4165)
!4253 = !DILocation(line: 337, column: 2, scope: !4165)
!4254 = !DILocation(line: 338, column: 15, scope: !4165)
!4255 = !DILocation(line: 338, column: 14, scope: !4165)
!4256 = !DILocation(line: 339, column: 2, scope: !4165)
!4257 = !DILocation(line: 340, column: 15, scope: !4165)
!4258 = !DILocation(line: 340, column: 24, scope: !4165)
!4259 = !DILocation(line: 340, column: 14, scope: !4165)
!4260 = !DILocation(line: 341, column: 2, scope: !4165)
!4261 = !DILocation(line: 342, column: 15, scope: !4165)
!4262 = !DILocation(line: 342, column: 25, scope: !4165)
!4263 = !DILocation(line: 342, column: 14, scope: !4165)
!4264 = !DILocation(line: 294, column: 9, scope: !4165)
!4265 = !DILocation(line: 345, column: 10, scope: !4165)
!4266 = !DILocation(line: 345, column: 3, scope: !4165)
!4267 = !DILocation(line: 346, column: 10, scope: !4165)
!4268 = !DILocation(line: 347, column: 28, scope: !4165)
!4269 = !DILocation(line: 347, column: 23, scope: !4165)
!4270 = !DILocation(line: 347, column: 15, scope: !4165)
!4271 = !DILocation(line: 348, column: 10, scope: !4165)
!4272 = !DILocation(line: 349, column: 24, scope: !4165)
!4273 = !DILocation(line: 349, column: 19, scope: !4165)
!4274 = !DILocation(line: 349, column: 11, scope: !4165)
!4275 = !DILocation(line: 350, column: 10, scope: !4165)
!4276 = distinct !DISubprogram(name: "runtime.printbool", linkageName: "runtime.printbool", scope: !465, file: !465, line: 389, type: !4277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4279)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!378}
!4279 = !{!4280}
!4280 = !DILocalVariable(name: "b", arg: 1, scope: !4276, file: !465, line: 389, type: !378)
!4281 = !DILocation(line: 389, column: 6, scope: !4276)
!4282 = !DILocation(line: 390, column: 5, scope: !4276)
!4283 = !DILocation(line: 0, scope: !4276)
!4284 = !DILocation(line: 391, column: 14, scope: !4276)
!4285 = !DILocation(line: 395, column: 2, scope: !4276)
!4286 = !DILocation(line: 393, column: 14, scope: !4276)
!4287 = distinct !DISubprogram(name: "runtime.printint64", linkageName: "runtime.printint64", scope: !465, file: !465, line: 94, type: !4288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4290)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!1699}
!4290 = !{!4291}
!4291 = !DILocalVariable(name: "n", arg: 1, scope: !4287, file: !465, line: 94, type: !1699)
!4292 = !DILocation(line: 94, column: 6, scope: !4287)
!4293 = !DILocation(line: 95, column: 5, scope: !4287)
!4294 = !DILocation(line: 95, column: 7, scope: !4287)
!4295 = !DILocation(line: 0, scope: !4287)
!4296 = !DILocation(line: 96, column: 10, scope: !4287)
!4297 = !DILocation(line: 97, column: 8, scope: !4287)
!4298 = !DILocation(line: 97, column: 7, scope: !4287)
!4299 = !DILocation(line: 97, column: 3, scope: !4287)
!4300 = !DILocation(line: 94, column: 17, scope: !4287)
!4301 = !DILocation(line: 99, column: 21, scope: !4287)
!4302 = !DILocation(line: 99, column: 13, scope: !4287)
!4303 = !DILocation(line: 100, column: 2, scope: !4287)
!4304 = distinct !DISubprogram(name: "runtime.printint32", linkageName: "runtime.printint32", scope: !465, file: !465, line: 65, type: !3903, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4305)
!4305 = !{!4306}
!4306 = !DILocalVariable(name: "n", arg: 1, scope: !4304, file: !465, line: 65, type: !388)
!4307 = !DILocation(line: 65, column: 6, scope: !4304)
!4308 = !DILocation(line: 68, column: 5, scope: !4304)
!4309 = !DILocation(line: 68, column: 7, scope: !4304)
!4310 = !DILocation(line: 0, scope: !4304)
!4311 = !DILocation(line: 69, column: 10, scope: !4304)
!4312 = !DILocation(line: 70, column: 8, scope: !4304)
!4313 = !DILocation(line: 70, column: 7, scope: !4304)
!4314 = !DILocation(line: 70, column: 3, scope: !4304)
!4315 = !DILocation(line: 65, column: 17, scope: !4304)
!4316 = !DILocation(line: 72, column: 21, scope: !4304)
!4317 = !DILocation(line: 72, column: 13, scope: !4304)
!4318 = !DILocation(line: 73, column: 2, scope: !4304)
!4319 = distinct !DISubprogram(name: "runtime.printint8", linkageName: "runtime.printint8", scope: !465, file: !465, line: 30, type: !4320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4322)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!92}
!4322 = !{!4323}
!4323 = !DILocalVariable(name: "n", arg: 1, scope: !4319, file: !465, line: 30, type: !92)
!4324 = !DILocation(line: 30, column: 6, scope: !4319)
!4325 = !DILocation(line: 0, scope: !4319)
!4326 = !DILocation(line: 32, column: 20, scope: !4319)
!4327 = !DILocation(line: 32, column: 19, scope: !4319)
!4328 = !DILocation(line: 32, column: 13, scope: !4319)
!4329 = !DILocation(line: 40, column: 2, scope: !4319)
!4330 = !DILocation(line: 34, column: 6, scope: !4319)
!4331 = !DILocation(line: 34, column: 8, scope: !4319)
!4332 = !DILocation(line: 35, column: 11, scope: !4319)
!4333 = !DILocation(line: 36, column: 9, scope: !4319)
!4334 = !DILocation(line: 36, column: 8, scope: !4319)
!4335 = !DILocation(line: 36, column: 4, scope: !4319)
!4336 = !DILocation(line: 30, column: 16, scope: !4319)
!4337 = !DILocation(line: 38, column: 20, scope: !4319)
!4338 = !DILocation(line: 38, column: 13, scope: !4319)
!4339 = distinct !DISubprogram(name: "runtime.printint16", linkageName: "runtime.printint16", scope: !465, file: !465, line: 57, type: !4340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4342)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!4174}
!4342 = !{!4343}
!4343 = !DILocalVariable(name: "n", arg: 1, scope: !4339, file: !465, line: 57, type: !4174)
!4344 = !DILocation(line: 57, column: 6, scope: !4339)
!4345 = !DILocation(line: 58, column: 19, scope: !4339)
!4346 = !DILocation(line: 58, column: 18, scope: !4339)
!4347 = !DILocation(line: 58, column: 12, scope: !4339)
!4348 = !DILocation(line: 59, column: 2, scope: !4339)
!4349 = distinct !DISubprogram(name: "runtime.printuint64", linkageName: "runtime.printuint64", scope: !465, file: !465, line: 76, type: !1763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4350)
!4350 = !{!4351, !4352, !4353, !4354, !4355}
!4351 = !DILocalVariable(name: "n", arg: 1, scope: !4349, file: !465, line: 76, type: !345)
!4352 = !DILocalVariable(name: "firstdigit", scope: !4349, file: !465, line: 79, type: !1797)
!4353 = !DILocalVariable(name: "i", scope: !4349, file: !465, line: 80, type: !1797)
!4354 = !DILocalVariable(name: "digit", scope: !4349, file: !465, line: 81, type: !540)
!4355 = !DILocalVariable(name: "i", scope: !4349, file: !465, line: 89, type: !1797)
!4356 = !DILocation(line: 76, column: 6, scope: !4349)
!4357 = !DILocation(line: 77, column: 2, scope: !4349)
!4358 = !DILocation(line: 79, column: 2, scope: !4349)
!4359 = !DILocation(line: 80, column: 6, scope: !4349)
!4360 = !DILocation(line: 0, scope: !4349)
!4361 = !DILocation(line: 76, column: 18, scope: !4349)
!4362 = !DILocation(line: 80, column: 15, scope: !4349)
!4363 = !DILocation(line: 80, column: 17, scope: !4349)
!4364 = !DILocation(line: 81, column: 17, scope: !4349)
!4365 = !DILocation(line: 81, column: 18, scope: !4349)
!4366 = !DILocation(line: 81, column: 22, scope: !4349)
!4367 = !DILocation(line: 81, column: 16, scope: !4349)
!4368 = !DILocation(line: 81, column: 3, scope: !4349)
!4369 = !DILocation(line: 82, column: 10, scope: !4349)
!4370 = !DILocation(line: 82, column: 15, scope: !4349)
!4371 = !DILocation(line: 82, column: 9, scope: !4349)
!4372 = !DILocation(line: 83, column: 6, scope: !4349)
!4373 = !DILocation(line: 83, column: 12, scope: !4349)
!4374 = !DILocation(line: 84, column: 17, scope: !4349)
!4375 = !DILocation(line: 84, column: 4, scope: !4349)
!4376 = !DILocation(line: 86, column: 3, scope: !4349)
!4377 = !DILocation(line: 80, column: 23, scope: !4349)
!4378 = !DILocation(line: 89, column: 11, scope: !4349)
!4379 = !DILocation(line: 89, column: 6, scope: !4349)
!4380 = !DILocation(line: 89, column: 23, scope: !4349)
!4381 = !DILocation(line: 89, column: 25, scope: !4349)
!4382 = !DILocation(line: 90, column: 18, scope: !4349)
!4383 = !DILocation(line: 90, column: 17, scope: !4349)
!4384 = !DILocation(line: 90, column: 10, scope: !4349)
!4385 = !DILocation(line: 89, column: 31, scope: !4349)
!4386 = !DILocation(line: 92, column: 2, scope: !4349)
!4387 = distinct !DISubprogram(name: "runtime.printuint32", linkageName: "runtime.printuint32", scope: !465, file: !465, line: 61, type: !3818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4388)
!4388 = !{!4389}
!4389 = !DILocalVariable(name: "n", arg: 1, scope: !4387, file: !465, line: 61, type: !108)
!4390 = !DILocation(line: 61, column: 6, scope: !4387)
!4391 = !DILocation(line: 62, column: 21, scope: !4387)
!4392 = !DILocation(line: 62, column: 20, scope: !4387)
!4393 = !DILocation(line: 62, column: 13, scope: !4387)
!4394 = !DILocation(line: 63, column: 2, scope: !4387)
!4395 = distinct !DISubprogram(name: "runtime.printuint8", linkageName: "runtime.printuint8", scope: !465, file: !465, line: 18, type: !4396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4398)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!4}
!4398 = !{!4399, !4400}
!4399 = !DILocalVariable(name: "n", arg: 1, scope: !4395, file: !465, line: 18, type: !4)
!4400 = !DILocalVariable(name: "prevdigits", scope: !4395, file: !465, line: 22, type: !4)
!4401 = !DILocation(line: 18, column: 6, scope: !4395)
!4402 = !DILocation(line: 0, scope: !4395)
!4403 = !DILocation(line: 20, column: 22, scope: !4395)
!4404 = !DILocation(line: 20, column: 21, scope: !4395)
!4405 = !DILocation(line: 20, column: 14, scope: !4395)
!4406 = !DILocation(line: 28, column: 2, scope: !4395)
!4407 = !DILocation(line: 22, column: 17, scope: !4395)
!4408 = !DILocation(line: 22, column: 19, scope: !4395)
!4409 = !DILocation(line: 22, column: 3, scope: !4395)
!4410 = !DILocation(line: 23, column: 6, scope: !4395)
!4411 = !DILocation(line: 23, column: 17, scope: !4395)
!4412 = !DILocation(line: 24, column: 15, scope: !4395)
!4413 = !DILocation(line: 24, column: 14, scope: !4395)
!4414 = !DILocation(line: 26, column: 17, scope: !4395)
!4415 = !DILocation(line: 26, column: 19, scope: !4395)
!4416 = !DILocation(line: 26, column: 25, scope: !4395)
!4417 = !DILocation(line: 26, column: 10, scope: !4395)
!4418 = distinct !DISubprogram(name: "runtime.printuint16", linkageName: "runtime.printuint16", scope: !465, file: !465, line: 53, type: !4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4421)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!100}
!4421 = !{!4422}
!4422 = !DILocalVariable(name: "n", arg: 1, scope: !4418, file: !465, line: 53, type: !100)
!4423 = !DILocation(line: 53, column: 6, scope: !4418)
!4424 = !DILocation(line: 54, column: 21, scope: !4418)
!4425 = !DILocation(line: 54, column: 20, scope: !4418)
!4426 = !DILocation(line: 54, column: 13, scope: !4418)
!4427 = !DILocation(line: 55, column: 2, scope: !4418)
!4428 = distinct !DISubprogram(name: "runtime.printuintptr", linkageName: "runtime.printuintptr", scope: !465, file: !465, line: 42, type: !3707, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4429)
!4429 = !{!4430}
!4430 = !DILocalVariable(name: "n", arg: 1, scope: !4428, file: !465, line: 42, type: !53)
!4431 = !DILocation(line: 42, column: 6, scope: !4428)
!4432 = !DILocation(line: 0, scope: !4428)
!4433 = !DILocation(line: 45, column: 22, scope: !4428)
!4434 = !DILocation(line: 45, column: 21, scope: !4428)
!4435 = !DILocation(line: 45, column: 14, scope: !4428)
!4436 = !DILocation(line: 51, column: 2, scope: !4428)
!4437 = !DILocation(line: 47, column: 22, scope: !4428)
!4438 = !DILocation(line: 47, column: 21, scope: !4428)
!4439 = !DILocation(line: 47, column: 14, scope: !4428)
!4440 = !DILocation(line: 49, column: 22, scope: !4428)
!4441 = !DILocation(line: 49, column: 14, scope: !4428)
!4442 = distinct !DISubprogram(name: "runtime.printfloat32", linkageName: "runtime.printfloat32", scope: !465, file: !465, line: 114, type: !4443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4445)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!4184}
!4445 = !{!4446, !4447, !4448, !4449, !4450, !4452, !4453, !4454}
!4446 = !DILocalVariable(name: "v", arg: 1, scope: !4442, file: !465, line: 114, type: !4184)
!4447 = !DILocalVariable(name: "e", scope: !4442, file: !465, line: 130, type: !1797)
!4448 = !DILocalVariable(name: "i", scope: !4442, file: !465, line: 164, type: !1797)
!4449 = !DILocalVariable(name: "s", scope: !4442, file: !465, line: 165, type: !1797)
!4450 = !DILocalVariable(name: "buf", scope: !4442, file: !465, line: 128, type: !4451)
!4451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 112, align: 8, elements: !123)
!4452 = !DILocalVariable(name: "c", scope: !4442, file: !465, line: 183, type: !540)
!4453 = !DILocalVariable(name: "h", scope: !4442, file: !465, line: 152, type: !4184)
!4454 = !DILocalVariable(name: "i", scope: !4442, file: !465, line: 153, type: !1797)
!4455 = !DILocation(line: 114, column: 6, scope: !4442)
!4456 = !DILocation(line: 116, column: 7, scope: !4442)
!4457 = !DILocation(line: 116, column: 12, scope: !4442)
!4458 = !DILocation(line: 116, column: 9, scope: !4442)
!4459 = !DILocation(line: 0, scope: !4442)
!4460 = !DILocation(line: 117, column: 14, scope: !4442)
!4461 = !DILocation(line: 118, column: 3, scope: !4442)
!4462 = !DILocation(line: 119, column: 7, scope: !4442)
!4463 = !DILocation(line: 119, column: 9, scope: !4442)
!4464 = !DILocation(line: 119, column: 8, scope: !4442)
!4465 = !DILocation(line: 119, column: 14, scope: !4442)
!4466 = !DILocation(line: 119, column: 11, scope: !4442)
!4467 = !DILocation(line: 119, column: 19, scope: !4442)
!4468 = !DILocation(line: 119, column: 21, scope: !4442)
!4469 = !DILocation(line: 119, column: 16, scope: !4442)
!4470 = !DILocation(line: 120, column: 14, scope: !4442)
!4471 = !DILocation(line: 121, column: 3, scope: !4442)
!4472 = !DILocation(line: 122, column: 7, scope: !4442)
!4473 = !DILocation(line: 122, column: 9, scope: !4442)
!4474 = !DILocation(line: 122, column: 8, scope: !4442)
!4475 = !DILocation(line: 122, column: 14, scope: !4442)
!4476 = !DILocation(line: 122, column: 11, scope: !4442)
!4477 = !DILocation(line: 122, column: 19, scope: !4442)
!4478 = !DILocation(line: 122, column: 21, scope: !4442)
!4479 = !DILocation(line: 122, column: 16, scope: !4442)
!4480 = !DILocation(line: 123, column: 14, scope: !4442)
!4481 = !DILocation(line: 124, column: 3, scope: !4442)
!4482 = !DILocation(line: 129, column: 5, scope: !4442)
!4483 = !DILocation(line: 130, column: 2, scope: !4442)
!4484 = !DILocation(line: 131, column: 5, scope: !4442)
!4485 = !DILocation(line: 131, column: 7, scope: !4442)
!4486 = !DILocation(line: 132, column: 8, scope: !4442)
!4487 = !DILocation(line: 132, column: 7, scope: !4442)
!4488 = !DILocation(line: 132, column: 10, scope: !4442)
!4489 = !DILocation(line: 133, column: 7, scope: !4442)
!4490 = !DILocation(line: 114, column: 19, scope: !4442)
!4491 = !DILocation(line: 164, column: 6, scope: !4442)
!4492 = !DILocation(line: 164, column: 14, scope: !4442)
!4493 = !DILocation(line: 164, column: 16, scope: !4442)
!4494 = !DILocation(line: 165, column: 12, scope: !4442)
!4495 = !DILocation(line: 165, column: 11, scope: !4442)
!4496 = !DILocation(line: 165, column: 3, scope: !4442)
!4497 = !DILocation(line: 166, column: 7, scope: !4442)
!4498 = !DILocation(line: 166, column: 8, scope: !4442)
!4499 = !DILocation(line: 166, column: 19, scope: !4442)
!4500 = !DILocation(line: 166, column: 21, scope: !4442)
!4501 = !DILocation(line: 166, column: 18, scope: !4442)
!4502 = !DILocation(line: 166, column: 6, scope: !4442)
!4503 = !DILocation(line: 167, column: 16, scope: !4442)
!4504 = !DILocation(line: 167, column: 15, scope: !4442)
!4505 = !DILocation(line: 167, column: 3, scope: !4442)
!4506 = !DILocation(line: 168, column: 3, scope: !4442)
!4507 = !DILocation(line: 164, column: 21, scope: !4442)
!4508 = !DILocation(line: 170, column: 14, scope: !4442)
!4509 = !DILocation(line: 170, column: 5, scope: !4442)
!4510 = !DILocation(line: 171, column: 5, scope: !4442)
!4511 = !DILocation(line: 173, column: 5, scope: !4442)
!4512 = !DILocation(line: 174, column: 5, scope: !4442)
!4513 = !DILocation(line: 175, column: 5, scope: !4442)
!4514 = !DILocation(line: 175, column: 7, scope: !4442)
!4515 = !DILocation(line: 176, column: 8, scope: !4442)
!4516 = !DILocation(line: 176, column: 7, scope: !4442)
!4517 = !DILocation(line: 176, column: 3, scope: !4442)
!4518 = !DILocation(line: 177, column: 6, scope: !4442)
!4519 = !DILocation(line: 180, column: 18, scope: !4442)
!4520 = !DILocation(line: 180, column: 19, scope: !4442)
!4521 = !DILocation(line: 180, column: 17, scope: !4442)
!4522 = !DILocation(line: 180, column: 25, scope: !4442)
!4523 = !DILocation(line: 180, column: 5, scope: !4442)
!4524 = !DILocation(line: 181, column: 18, scope: !4442)
!4525 = !DILocation(line: 181, column: 19, scope: !4442)
!4526 = !DILocation(line: 181, column: 17, scope: !4442)
!4527 = !DILocation(line: 181, column: 23, scope: !4442)
!4528 = !DILocation(line: 181, column: 27, scope: !4442)
!4529 = !DILocation(line: 181, column: 5, scope: !4442)
!4530 = !DILocation(line: 182, column: 18, scope: !4442)
!4531 = !DILocation(line: 182, column: 19, scope: !4442)
!4532 = !DILocation(line: 182, column: 17, scope: !4442)
!4533 = !DILocation(line: 182, column: 24, scope: !4442)
!4534 = !DILocation(line: 182, column: 5, scope: !4442)
!4535 = !DILocation(line: 183, column: 20, scope: !4442)
!4536 = !DILocation(line: 183, column: 9, scope: !4442)
!4537 = !DILocation(line: 184, column: 11, scope: !4442)
!4538 = !DILocation(line: 184, column: 10, scope: !4442)
!4539 = !DILocation(line: 186, column: 2, scope: !4442)
!4540 = !DILocation(line: 136, column: 6, scope: !4442)
!4541 = !DILocation(line: 136, column: 8, scope: !4442)
!4542 = !DILocation(line: 137, column: 9, scope: !4442)
!4543 = !DILocation(line: 137, column: 8, scope: !4442)
!4544 = !DILocation(line: 137, column: 4, scope: !4442)
!4545 = !DILocation(line: 138, column: 7, scope: !4442)
!4546 = !DILocation(line: 142, column: 7, scope: !4442)
!4547 = !DILocation(line: 142, column: 9, scope: !4442)
!4548 = !DILocation(line: 143, column: 4, scope: !4442)
!4549 = !DILocation(line: 144, column: 4, scope: !4442)
!4550 = !DILocation(line: 146, column: 7, scope: !4442)
!4551 = !DILocation(line: 146, column: 9, scope: !4442)
!4552 = !DILocation(line: 147, column: 4, scope: !4442)
!4553 = !DILocation(line: 148, column: 4, scope: !4442)
!4554 = !DILocation(line: 152, column: 3, scope: !4442)
!4555 = !DILocation(line: 153, column: 7, scope: !4442)
!4556 = !DILocation(line: 153, column: 15, scope: !4442)
!4557 = !DILocation(line: 153, column: 17, scope: !4442)
!4558 = !DILocation(line: 154, column: 4, scope: !4442)
!4559 = !DILocation(line: 153, column: 22, scope: !4442)
!4560 = !DILocation(line: 156, column: 8, scope: !4442)
!4561 = !DILocation(line: 156, column: 3, scope: !4442)
!4562 = !DILocation(line: 157, column: 6, scope: !4442)
!4563 = !DILocation(line: 157, column: 8, scope: !4442)
!4564 = !DILocation(line: 158, column: 4, scope: !4442)
!4565 = !DILocation(line: 159, column: 4, scope: !4442)
!4566 = distinct !DISubprogram(name: "runtime.printfloat64", linkageName: "runtime.printfloat64", scope: !465, file: !465, line: 194, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4567)
!4567 = !{!4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575}
!4568 = !DILocalVariable(name: "v", arg: 1, scope: !4566, file: !465, line: 194, type: !802)
!4569 = !DILocalVariable(name: "e", scope: !4566, file: !465, line: 210, type: !1797)
!4570 = !DILocalVariable(name: "i", scope: !4566, file: !465, line: 244, type: !1797)
!4571 = !DILocalVariable(name: "s", scope: !4566, file: !465, line: 245, type: !1797)
!4572 = !DILocalVariable(name: "buf", scope: !4566, file: !465, line: 208, type: !4451)
!4573 = !DILocalVariable(name: "c", scope: !4566, file: !465, line: 263, type: !540)
!4574 = !DILocalVariable(name: "h", scope: !4566, file: !465, line: 232, type: !802)
!4575 = !DILocalVariable(name: "i", scope: !4566, file: !465, line: 233, type: !1797)
!4576 = !DILocation(line: 194, column: 6, scope: !4566)
!4577 = !DILocation(line: 196, column: 7, scope: !4566)
!4578 = !DILocation(line: 196, column: 12, scope: !4566)
!4579 = !DILocation(line: 196, column: 9, scope: !4566)
!4580 = !DILocation(line: 0, scope: !4566)
!4581 = !DILocation(line: 197, column: 14, scope: !4566)
!4582 = !DILocation(line: 198, column: 3, scope: !4566)
!4583 = !DILocation(line: 199, column: 7, scope: !4566)
!4584 = !DILocation(line: 199, column: 9, scope: !4566)
!4585 = !DILocation(line: 199, column: 8, scope: !4566)
!4586 = !DILocation(line: 199, column: 14, scope: !4566)
!4587 = !DILocation(line: 199, column: 11, scope: !4566)
!4588 = !DILocation(line: 199, column: 19, scope: !4566)
!4589 = !DILocation(line: 199, column: 21, scope: !4566)
!4590 = !DILocation(line: 199, column: 16, scope: !4566)
!4591 = !DILocation(line: 200, column: 14, scope: !4566)
!4592 = !DILocation(line: 201, column: 3, scope: !4566)
!4593 = !DILocation(line: 202, column: 7, scope: !4566)
!4594 = !DILocation(line: 202, column: 9, scope: !4566)
!4595 = !DILocation(line: 202, column: 8, scope: !4566)
!4596 = !DILocation(line: 202, column: 14, scope: !4566)
!4597 = !DILocation(line: 202, column: 11, scope: !4566)
!4598 = !DILocation(line: 202, column: 19, scope: !4566)
!4599 = !DILocation(line: 202, column: 21, scope: !4566)
!4600 = !DILocation(line: 202, column: 16, scope: !4566)
!4601 = !DILocation(line: 203, column: 14, scope: !4566)
!4602 = !DILocation(line: 204, column: 3, scope: !4566)
!4603 = !DILocation(line: 209, column: 5, scope: !4566)
!4604 = !DILocation(line: 210, column: 2, scope: !4566)
!4605 = !DILocation(line: 211, column: 5, scope: !4566)
!4606 = !DILocation(line: 211, column: 7, scope: !4566)
!4607 = !DILocation(line: 212, column: 8, scope: !4566)
!4608 = !DILocation(line: 212, column: 7, scope: !4566)
!4609 = !DILocation(line: 212, column: 10, scope: !4566)
!4610 = !DILocation(line: 213, column: 7, scope: !4566)
!4611 = !DILocation(line: 194, column: 19, scope: !4566)
!4612 = !DILocation(line: 244, column: 6, scope: !4566)
!4613 = !DILocation(line: 244, column: 14, scope: !4566)
!4614 = !DILocation(line: 244, column: 16, scope: !4566)
!4615 = !DILocation(line: 245, column: 12, scope: !4566)
!4616 = !DILocation(line: 245, column: 11, scope: !4566)
!4617 = !DILocation(line: 245, column: 3, scope: !4566)
!4618 = !DILocation(line: 246, column: 7, scope: !4566)
!4619 = !DILocation(line: 246, column: 8, scope: !4566)
!4620 = !DILocation(line: 246, column: 19, scope: !4566)
!4621 = !DILocation(line: 246, column: 21, scope: !4566)
!4622 = !DILocation(line: 246, column: 18, scope: !4566)
!4623 = !DILocation(line: 246, column: 6, scope: !4566)
!4624 = !DILocation(line: 247, column: 16, scope: !4566)
!4625 = !DILocation(line: 247, column: 15, scope: !4566)
!4626 = !DILocation(line: 247, column: 3, scope: !4566)
!4627 = !DILocation(line: 248, column: 3, scope: !4566)
!4628 = !DILocation(line: 244, column: 21, scope: !4566)
!4629 = !DILocation(line: 250, column: 14, scope: !4566)
!4630 = !DILocation(line: 250, column: 5, scope: !4566)
!4631 = !DILocation(line: 251, column: 5, scope: !4566)
!4632 = !DILocation(line: 253, column: 5, scope: !4566)
!4633 = !DILocation(line: 254, column: 5, scope: !4566)
!4634 = !DILocation(line: 255, column: 5, scope: !4566)
!4635 = !DILocation(line: 255, column: 7, scope: !4566)
!4636 = !DILocation(line: 256, column: 8, scope: !4566)
!4637 = !DILocation(line: 256, column: 7, scope: !4566)
!4638 = !DILocation(line: 256, column: 3, scope: !4566)
!4639 = !DILocation(line: 257, column: 6, scope: !4566)
!4640 = !DILocation(line: 260, column: 18, scope: !4566)
!4641 = !DILocation(line: 260, column: 19, scope: !4566)
!4642 = !DILocation(line: 260, column: 17, scope: !4566)
!4643 = !DILocation(line: 260, column: 25, scope: !4566)
!4644 = !DILocation(line: 260, column: 5, scope: !4566)
!4645 = !DILocation(line: 261, column: 18, scope: !4566)
!4646 = !DILocation(line: 261, column: 19, scope: !4566)
!4647 = !DILocation(line: 261, column: 17, scope: !4566)
!4648 = !DILocation(line: 261, column: 23, scope: !4566)
!4649 = !DILocation(line: 261, column: 27, scope: !4566)
!4650 = !DILocation(line: 261, column: 5, scope: !4566)
!4651 = !DILocation(line: 262, column: 18, scope: !4566)
!4652 = !DILocation(line: 262, column: 19, scope: !4566)
!4653 = !DILocation(line: 262, column: 17, scope: !4566)
!4654 = !DILocation(line: 262, column: 24, scope: !4566)
!4655 = !DILocation(line: 262, column: 5, scope: !4566)
!4656 = !DILocation(line: 263, column: 20, scope: !4566)
!4657 = !DILocation(line: 263, column: 9, scope: !4566)
!4658 = !DILocation(line: 264, column: 11, scope: !4566)
!4659 = !DILocation(line: 264, column: 10, scope: !4566)
!4660 = !DILocation(line: 266, column: 2, scope: !4566)
!4661 = !DILocation(line: 216, column: 6, scope: !4566)
!4662 = !DILocation(line: 216, column: 8, scope: !4566)
!4663 = !DILocation(line: 217, column: 9, scope: !4566)
!4664 = !DILocation(line: 217, column: 8, scope: !4566)
!4665 = !DILocation(line: 217, column: 4, scope: !4566)
!4666 = !DILocation(line: 218, column: 7, scope: !4566)
!4667 = !DILocation(line: 222, column: 7, scope: !4566)
!4668 = !DILocation(line: 222, column: 9, scope: !4566)
!4669 = !DILocation(line: 223, column: 4, scope: !4566)
!4670 = !DILocation(line: 224, column: 4, scope: !4566)
!4671 = !DILocation(line: 226, column: 7, scope: !4566)
!4672 = !DILocation(line: 226, column: 9, scope: !4566)
!4673 = !DILocation(line: 227, column: 4, scope: !4566)
!4674 = !DILocation(line: 228, column: 4, scope: !4566)
!4675 = !DILocation(line: 232, column: 3, scope: !4566)
!4676 = !DILocation(line: 233, column: 7, scope: !4566)
!4677 = !DILocation(line: 233, column: 15, scope: !4566)
!4678 = !DILocation(line: 233, column: 17, scope: !4566)
!4679 = !DILocation(line: 234, column: 4, scope: !4566)
!4680 = !DILocation(line: 233, column: 22, scope: !4566)
!4681 = !DILocation(line: 236, column: 8, scope: !4566)
!4682 = !DILocation(line: 236, column: 3, scope: !4566)
!4683 = !DILocation(line: 237, column: 6, scope: !4566)
!4684 = !DILocation(line: 237, column: 8, scope: !4566)
!4685 = !DILocation(line: 238, column: 4, scope: !4566)
!4686 = !DILocation(line: 239, column: 4, scope: !4566)
!4687 = distinct !DISubprogram(name: "runtime.printcomplex64", linkageName: "runtime.printcomplex64", scope: !465, file: !465, line: 268, type: !4688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4690)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!4187}
!4690 = !{!4691}
!4691 = !DILocalVariable(name: "c", arg: 1, scope: !4687, file: !465, line: 268, type: !4187)
!4692 = !DILocation(line: 268, column: 6, scope: !4687)
!4693 = !DILocation(line: 269, column: 9, scope: !4687)
!4694 = !DILocation(line: 270, column: 20, scope: !4687)
!4695 = !DILocation(line: 270, column: 19, scope: !4687)
!4696 = !DILocation(line: 270, column: 14, scope: !4687)
!4697 = !DILocation(line: 271, column: 20, scope: !4687)
!4698 = !DILocation(line: 271, column: 19, scope: !4687)
!4699 = !DILocation(line: 271, column: 14, scope: !4687)
!4700 = !DILocation(line: 272, column: 13, scope: !4687)
!4701 = !DILocation(line: 273, column: 2, scope: !4687)
!4702 = distinct !DISubprogram(name: "runtime.printcomplex128", linkageName: "runtime.printcomplex128", scope: !465, file: !465, line: 275, type: !4703, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4705)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{!4189}
!4705 = !{!4706}
!4706 = !DILocalVariable(name: "c", arg: 1, scope: !4702, file: !465, line: 275, type: !4189)
!4707 = !DILocation(line: 275, column: 6, scope: !4702)
!4708 = !DILocation(line: 276, column: 9, scope: !4702)
!4709 = !DILocation(line: 277, column: 20, scope: !4702)
!4710 = !DILocation(line: 277, column: 19, scope: !4702)
!4711 = !DILocation(line: 277, column: 14, scope: !4702)
!4712 = !DILocation(line: 278, column: 20, scope: !4702)
!4713 = !DILocation(line: 278, column: 19, scope: !4702)
!4714 = !DILocation(line: 278, column: 14, scope: !4702)
!4715 = !DILocation(line: 279, column: 13, scope: !4702)
!4716 = !DILocation(line: 280, column: 2, scope: !4702)
!4717 = distinct !DISubprogram(name: "runtime._panic", linkageName: "runtime._panic", scope: !435, file: !435, line: 54, type: !4166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4718)
!4718 = !{!4719}
!4719 = !DILocalVariable(name: "message", arg: 1, scope: !4717, file: !435, line: 54, type: !785)
!4720 = !DILocation(line: 54, column: 6, scope: !4717)
!4721 = !DILocation(line: 55, column: 16, scope: !4717)
!4722 = !DILocation(line: 55, column: 15, scope: !4717)
!4723 = !DILocation(line: 56, column: 2, scope: !4717)
!4724 = distinct !DISubprogram(name: "runtime.stringEqual", linkageName: "runtime.stringEqual", scope: !4725, file: !4725, line: 24, type: !4726, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4728)
!4725 = !DIFile(filename: "string.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!48, !48}
!4728 = !{!4729, !4730, !4731}
!4729 = !DILocalVariable(name: "x", arg: 1, scope: !4724, file: !4725, line: 24, type: !48)
!4730 = !DILocalVariable(name: "y", arg: 2, scope: !4724, file: !4725, line: 24, type: !48)
!4731 = !DILocalVariable(name: "i", scope: !4724, file: !4725, line: 28, type: !1797)
!4732 = !DILocation(line: 24, column: 6, scope: !4724)
!4733 = !DILocation(line: 25, column: 9, scope: !4724)
!4734 = !DILocation(line: 25, column: 8, scope: !4724)
!4735 = !DILocation(line: 25, column: 19, scope: !4724)
!4736 = !DILocation(line: 25, column: 18, scope: !4724)
!4737 = !DILocation(line: 25, column: 12, scope: !4724)
!4738 = !DILocation(line: 0, scope: !4724)
!4739 = !DILocation(line: 26, column: 3, scope: !4724)
!4740 = !DILocation(line: 28, column: 6, scope: !4724)
!4741 = !DILocation(line: 28, column: 14, scope: !4724)
!4742 = !DILocation(line: 28, column: 22, scope: !4724)
!4743 = !DILocation(line: 28, column: 21, scope: !4724)
!4744 = !DILocation(line: 28, column: 16, scope: !4724)
!4745 = !DILocation(line: 29, column: 8, scope: !4724)
!4746 = !DILocation(line: 29, column: 6, scope: !4724)
!4747 = !DILocation(line: 29, column: 7, scope: !4724)
!4748 = !DILocation(line: 29, column: 16, scope: !4724)
!4749 = !DILocation(line: 29, column: 14, scope: !4724)
!4750 = !DILocation(line: 29, column: 15, scope: !4724)
!4751 = !DILocation(line: 29, column: 11, scope: !4724)
!4752 = !DILocation(line: 30, column: 4, scope: !4724)
!4753 = !DILocation(line: 28, column: 26, scope: !4724)
!4754 = !DILocation(line: 33, column: 2, scope: !4724)
!4755 = distinct !DISubprogram(name: "runtime.slicePanic", linkageName: "runtime.slicePanic", scope: !435, file: !435, line: 198, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4756 = !DILocation(line: 199, column: 30, scope: !4755)
!4757 = !DILocation(line: 199, column: 16, scope: !4755)
!4758 = !DILocation(line: 200, column: 2, scope: !4755)
!4759 = distinct !DISubprogram(name: "runtime.fminimum", linkageName: "fminimum", scope: !1560, file: !1560, line: 60, type: !1844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4760)
!4760 = !{!4761, !4762}
!4761 = !DILocalVariable(name: "x", arg: 1, scope: !4759, file: !1560, line: 60, type: !802)
!4762 = !DILocalVariable(name: "y", arg: 2, scope: !4759, file: !1560, line: 60, type: !802)
!4763 = !DILocation(line: 60, column: 6, scope: !4759)
!4764 = !DILocation(line: 61, column: 24, scope: !4759)
!4765 = !DILocation(line: 61, column: 27, scope: !4759)
!4766 = !DILocation(line: 61, column: 23, scope: !4759)
!4767 = !DILocation(line: 61, column: 2, scope: !4759)
!4768 = distinct !DISubprogram(name: "runtime.minimumFloat64", linkageName: "runtime.minimumFloat64", scope: !1560, file: !1560, line: 87, type: !1844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4769)
!4769 = !{!4770, !4771}
!4770 = !DILocalVariable(name: "x", arg: 1, scope: !4768, file: !1560, line: 87, type: !802)
!4771 = !DILocalVariable(name: "y", arg: 2, scope: !4768, file: !1560, line: 87, type: !802)
!4772 = !DILocation(line: 87, column: 6, scope: !4768)
!4773 = !DILocation(line: 88, column: 38, scope: !4768)
!4774 = !DILocation(line: 88, column: 41, scope: !4768)
!4775 = !DILocation(line: 88, column: 37, scope: !4768)
!4776 = !DILocation(line: 88, column: 2, scope: !4768)
!4777 = distinct !DISubprogram(name: "runtime.minimumFloat[float64 int64]", linkageName: "runtime.minimumFloat[float64 int64]", scope: !1560, file: !1560, line: 101, type: !4778, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4780)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!802, !802, !1699, !1699}
!4780 = !{!4781, !4782, !4783, !4784, !4785, !4786}
!4781 = !DILocalVariable(name: "x", arg: 1, scope: !4777, file: !1560, line: 101, type: !802)
!4782 = !DILocalVariable(name: "y", arg: 2, scope: !4777, file: !1560, line: 101, type: !802)
!4783 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4777, file: !1560, line: 101, type: !1699)
!4784 = !DILocalVariable(name: "magMask", arg: 4, scope: !4777, file: !1560, line: 101, type: !1699)
!4785 = !DILocalVariable(name: "xBits", scope: !4777, file: !1560, line: 102, type: !785)
!4786 = !DILocalVariable(name: "yBits", scope: !4777, file: !1560, line: 103, type: !785)
!4787 = !DILocation(line: 101, column: 6, scope: !4777)
!4788 = !DILocation(line: 101, column: 40, scope: !4777)
!4789 = !DILocation(line: 101, column: 43, scope: !4777)
!4790 = !DILocation(line: 102, column: 11, scope: !4777)
!4791 = !DILocation(line: 102, column: 2, scope: !4777)
!4792 = !DILocation(line: 103, column: 11, scope: !4777)
!4793 = !DILocation(line: 103, column: 2, scope: !4777)
!4794 = !DILocation(line: 107, column: 7, scope: !4777)
!4795 = !DILocation(line: 107, column: 16, scope: !4777)
!4796 = !DILocation(line: 107, column: 13, scope: !4777)
!4797 = !DILocation(line: 0, scope: !4777)
!4798 = !DILocation(line: 108, column: 10, scope: !4777)
!4799 = !DILocation(line: 108, column: 3, scope: !4777)
!4800 = !DILocation(line: 109, column: 7, scope: !4777)
!4801 = !DILocation(line: 109, column: 16, scope: !4777)
!4802 = !DILocation(line: 109, column: 13, scope: !4777)
!4803 = !DILocation(line: 110, column: 10, scope: !4777)
!4804 = !DILocation(line: 110, column: 3, scope: !4777)
!4805 = !DILocation(line: 118, column: 5, scope: !4777)
!4806 = !DILocation(line: 118, column: 11, scope: !4777)
!4807 = !DILocation(line: 119, column: 12, scope: !4777)
!4808 = !DILocation(line: 119, column: 3, scope: !4777)
!4809 = !DILocation(line: 121, column: 5, scope: !4777)
!4810 = !DILocation(line: 121, column: 11, scope: !4777)
!4811 = !DILocation(line: 122, column: 12, scope: !4777)
!4812 = !DILocation(line: 122, column: 3, scope: !4777)
!4813 = !DILocation(line: 124, column: 5, scope: !4777)
!4814 = !DILocation(line: 124, column: 14, scope: !4777)
!4815 = !DILocation(line: 124, column: 11, scope: !4777)
!4816 = !DILocation(line: 125, column: 10, scope: !4777)
!4817 = !DILocation(line: 125, column: 3, scope: !4777)
!4818 = !DILocation(line: 127, column: 10, scope: !4777)
!4819 = !DILocation(line: 127, column: 3, scope: !4777)
!4820 = distinct !DISubprogram(name: "runtime.fminimumf", linkageName: "fminimumf", scope: !1560, file: !1560, line: 65, type: !4821, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4823)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!4184, !4184}
!4823 = !{!4824, !4825}
!4824 = !DILocalVariable(name: "x", arg: 1, scope: !4820, file: !1560, line: 65, type: !4184)
!4825 = !DILocalVariable(name: "y", arg: 2, scope: !4820, file: !1560, line: 65, type: !4184)
!4826 = !DILocation(line: 65, column: 6, scope: !4820)
!4827 = !DILocation(line: 66, column: 24, scope: !4820)
!4828 = !DILocation(line: 66, column: 27, scope: !4820)
!4829 = !DILocation(line: 66, column: 23, scope: !4820)
!4830 = !DILocation(line: 66, column: 2, scope: !4820)
!4831 = distinct !DISubprogram(name: "runtime.minimumFloat32", linkageName: "runtime.minimumFloat32", scope: !1560, file: !1560, line: 83, type: !4821, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4832)
!4832 = !{!4833, !4834}
!4833 = !DILocalVariable(name: "x", arg: 1, scope: !4831, file: !1560, line: 83, type: !4184)
!4834 = !DILocalVariable(name: "y", arg: 2, scope: !4831, file: !1560, line: 83, type: !4184)
!4835 = !DILocation(line: 83, column: 6, scope: !4831)
!4836 = !DILocation(line: 84, column: 38, scope: !4831)
!4837 = !DILocation(line: 84, column: 41, scope: !4831)
!4838 = !DILocation(line: 84, column: 37, scope: !4831)
!4839 = !DILocation(line: 84, column: 2, scope: !4831)
!4840 = distinct !DISubprogram(name: "runtime.minimumFloat[float32 int32]", linkageName: "runtime.minimumFloat[float32 int32]", scope: !1560, file: !1560, line: 101, type: !4841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4843)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!4184, !4184, !388, !388}
!4843 = !{!4844, !4845, !4846, !4847, !4848, !4849}
!4844 = !DILocalVariable(name: "x", arg: 1, scope: !4840, file: !1560, line: 101, type: !4184)
!4845 = !DILocalVariable(name: "y", arg: 2, scope: !4840, file: !1560, line: 101, type: !4184)
!4846 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4840, file: !1560, line: 101, type: !388)
!4847 = !DILocalVariable(name: "magMask", arg: 4, scope: !4840, file: !1560, line: 101, type: !388)
!4848 = !DILocalVariable(name: "xBits", scope: !4840, file: !1560, line: 102, type: !785)
!4849 = !DILocalVariable(name: "yBits", scope: !4840, file: !1560, line: 103, type: !785)
!4850 = !DILocation(line: 101, column: 6, scope: !4840)
!4851 = !DILocation(line: 101, column: 40, scope: !4840)
!4852 = !DILocation(line: 101, column: 43, scope: !4840)
!4853 = !DILocation(line: 102, column: 11, scope: !4840)
!4854 = !DILocation(line: 102, column: 2, scope: !4840)
!4855 = !DILocation(line: 103, column: 11, scope: !4840)
!4856 = !DILocation(line: 103, column: 2, scope: !4840)
!4857 = !DILocation(line: 107, column: 7, scope: !4840)
!4858 = !DILocation(line: 107, column: 16, scope: !4840)
!4859 = !DILocation(line: 107, column: 13, scope: !4840)
!4860 = !DILocation(line: 0, scope: !4840)
!4861 = !DILocation(line: 108, column: 10, scope: !4840)
!4862 = !DILocation(line: 108, column: 3, scope: !4840)
!4863 = !DILocation(line: 109, column: 7, scope: !4840)
!4864 = !DILocation(line: 109, column: 16, scope: !4840)
!4865 = !DILocation(line: 109, column: 13, scope: !4840)
!4866 = !DILocation(line: 110, column: 10, scope: !4840)
!4867 = !DILocation(line: 110, column: 3, scope: !4840)
!4868 = !DILocation(line: 118, column: 5, scope: !4840)
!4869 = !DILocation(line: 118, column: 11, scope: !4840)
!4870 = !DILocation(line: 119, column: 12, scope: !4840)
!4871 = !DILocation(line: 119, column: 3, scope: !4840)
!4872 = !DILocation(line: 121, column: 5, scope: !4840)
!4873 = !DILocation(line: 121, column: 11, scope: !4840)
!4874 = !DILocation(line: 122, column: 12, scope: !4840)
!4875 = !DILocation(line: 122, column: 3, scope: !4840)
!4876 = !DILocation(line: 124, column: 5, scope: !4840)
!4877 = !DILocation(line: 124, column: 14, scope: !4840)
!4878 = !DILocation(line: 124, column: 11, scope: !4840)
!4879 = !DILocation(line: 125, column: 10, scope: !4840)
!4880 = !DILocation(line: 125, column: 3, scope: !4840)
!4881 = !DILocation(line: 127, column: 10, scope: !4840)
!4882 = !DILocation(line: 127, column: 3, scope: !4840)
!4883 = distinct !DISubprogram(name: "runtime.fmaximum", linkageName: "fmaximum", scope: !1560, file: !1560, line: 70, type: !1844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4884)
!4884 = !{!4885, !4886}
!4885 = !DILocalVariable(name: "x", arg: 1, scope: !4883, file: !1560, line: 70, type: !802)
!4886 = !DILocalVariable(name: "y", arg: 2, scope: !4883, file: !1560, line: 70, type: !802)
!4887 = !DILocation(line: 70, column: 6, scope: !4883)
!4888 = !DILocation(line: 71, column: 24, scope: !4883)
!4889 = !DILocation(line: 71, column: 27, scope: !4883)
!4890 = !DILocation(line: 71, column: 23, scope: !4883)
!4891 = !DILocation(line: 71, column: 2, scope: !4883)
!4892 = distinct !DISubprogram(name: "runtime.maximumFloat64", linkageName: "runtime.maximumFloat64", scope: !1560, file: !1560, line: 95, type: !1844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4893)
!4893 = !{!4894, !4895}
!4894 = !DILocalVariable(name: "x", arg: 1, scope: !4892, file: !1560, line: 95, type: !802)
!4895 = !DILocalVariable(name: "y", arg: 2, scope: !4892, file: !1560, line: 95, type: !802)
!4896 = !DILocation(line: 95, column: 6, scope: !4892)
!4897 = !DILocation(line: 96, column: 38, scope: !4892)
!4898 = !DILocation(line: 96, column: 41, scope: !4892)
!4899 = !DILocation(line: 96, column: 37, scope: !4892)
!4900 = !DILocation(line: 96, column: 2, scope: !4892)
!4901 = distinct !DISubprogram(name: "runtime.maximumFloat[float64 int64]", linkageName: "runtime.maximumFloat[float64 int64]", scope: !1560, file: !1560, line: 133, type: !4778, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4902)
!4902 = !{!4903, !4904, !4905, !4906, !4907, !4908, !4909}
!4903 = !DILocalVariable(name: "x", arg: 1, scope: !4901, file: !1560, line: 133, type: !802)
!4904 = !DILocalVariable(name: "y", arg: 2, scope: !4901, file: !1560, line: 133, type: !802)
!4905 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4901, file: !1560, line: 133, type: !1699)
!4906 = !DILocalVariable(name: "magMask", arg: 4, scope: !4901, file: !1560, line: 133, type: !1699)
!4907 = !DILocalVariable(name: "xBits", scope: !4901, file: !1560, line: 134, type: !785)
!4908 = !DILocalVariable(name: "yBits", scope: !4901, file: !1560, line: 135, type: !785)
!4909 = !DILocalVariable(name: "maxNegNaN", scope: !4901, file: !1560, line: 149, type: !785)
!4910 = !DILocation(line: 133, column: 6, scope: !4901)
!4911 = !DILocation(line: 133, column: 40, scope: !4901)
!4912 = !DILocation(line: 133, column: 43, scope: !4901)
!4913 = !DILocation(line: 134, column: 11, scope: !4901)
!4914 = !DILocation(line: 134, column: 2, scope: !4901)
!4915 = !DILocation(line: 135, column: 11, scope: !4901)
!4916 = !DILocation(line: 135, column: 2, scope: !4901)
!4917 = !DILocation(line: 142, column: 5, scope: !4901)
!4918 = !DILocation(line: 142, column: 11, scope: !4901)
!4919 = !DILocation(line: 0, scope: !4901)
!4920 = !DILocation(line: 143, column: 12, scope: !4901)
!4921 = !DILocation(line: 143, column: 3, scope: !4901)
!4922 = !DILocation(line: 145, column: 5, scope: !4901)
!4923 = !DILocation(line: 145, column: 11, scope: !4901)
!4924 = !DILocation(line: 146, column: 12, scope: !4901)
!4925 = !DILocation(line: 146, column: 3, scope: !4901)
!4926 = !DILocation(line: 149, column: 16, scope: !4901)
!4927 = !DILocation(line: 149, column: 15, scope: !4901)
!4928 = !DILocation(line: 149, column: 2, scope: !4901)
!4929 = !DILocation(line: 151, column: 7, scope: !4901)
!4930 = !DILocation(line: 151, column: 16, scope: !4901)
!4931 = !DILocation(line: 151, column: 13, scope: !4901)
!4932 = !DILocation(line: 152, column: 10, scope: !4901)
!4933 = !DILocation(line: 152, column: 3, scope: !4901)
!4934 = !DILocation(line: 153, column: 7, scope: !4901)
!4935 = !DILocation(line: 153, column: 16, scope: !4901)
!4936 = !DILocation(line: 153, column: 13, scope: !4901)
!4937 = !DILocation(line: 154, column: 10, scope: !4901)
!4938 = !DILocation(line: 154, column: 3, scope: !4901)
!4939 = !DILocation(line: 156, column: 5, scope: !4901)
!4940 = !DILocation(line: 156, column: 14, scope: !4901)
!4941 = !DILocation(line: 156, column: 11, scope: !4901)
!4942 = !DILocation(line: 157, column: 10, scope: !4901)
!4943 = !DILocation(line: 157, column: 3, scope: !4901)
!4944 = !DILocation(line: 159, column: 10, scope: !4901)
!4945 = !DILocation(line: 159, column: 3, scope: !4901)
!4946 = distinct !DISubprogram(name: "runtime.fmaximumf", linkageName: "fmaximumf", scope: !1560, file: !1560, line: 75, type: !4821, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4947)
!4947 = !{!4948, !4949}
!4948 = !DILocalVariable(name: "x", arg: 1, scope: !4946, file: !1560, line: 75, type: !4184)
!4949 = !DILocalVariable(name: "y", arg: 2, scope: !4946, file: !1560, line: 75, type: !4184)
!4950 = !DILocation(line: 75, column: 6, scope: !4946)
!4951 = !DILocation(line: 76, column: 24, scope: !4946)
!4952 = !DILocation(line: 76, column: 27, scope: !4946)
!4953 = !DILocation(line: 76, column: 23, scope: !4946)
!4954 = !DILocation(line: 76, column: 2, scope: !4946)
!4955 = distinct !DISubprogram(name: "runtime.maximumFloat32", linkageName: "runtime.maximumFloat32", scope: !1560, file: !1560, line: 91, type: !4821, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4956)
!4956 = !{!4957, !4958}
!4957 = !DILocalVariable(name: "x", arg: 1, scope: !4955, file: !1560, line: 91, type: !4184)
!4958 = !DILocalVariable(name: "y", arg: 2, scope: !4955, file: !1560, line: 91, type: !4184)
!4959 = !DILocation(line: 91, column: 6, scope: !4955)
!4960 = !DILocation(line: 92, column: 38, scope: !4955)
!4961 = !DILocation(line: 92, column: 41, scope: !4955)
!4962 = !DILocation(line: 92, column: 37, scope: !4955)
!4963 = !DILocation(line: 92, column: 2, scope: !4955)
!4964 = distinct !DISubprogram(name: "runtime.maximumFloat[float32 int32]", linkageName: "runtime.maximumFloat[float32 int32]", scope: !1560, file: !1560, line: 133, type: !4841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4965)
!4965 = !{!4966, !4967, !4968, !4969, !4970, !4971, !4972}
!4966 = !DILocalVariable(name: "x", arg: 1, scope: !4964, file: !1560, line: 133, type: !4184)
!4967 = !DILocalVariable(name: "y", arg: 2, scope: !4964, file: !1560, line: 133, type: !4184)
!4968 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4964, file: !1560, line: 133, type: !388)
!4969 = !DILocalVariable(name: "magMask", arg: 4, scope: !4964, file: !1560, line: 133, type: !388)
!4970 = !DILocalVariable(name: "xBits", scope: !4964, file: !1560, line: 134, type: !785)
!4971 = !DILocalVariable(name: "yBits", scope: !4964, file: !1560, line: 135, type: !785)
!4972 = !DILocalVariable(name: "maxNegNaN", scope: !4964, file: !1560, line: 149, type: !785)
!4973 = !DILocation(line: 133, column: 6, scope: !4964)
!4974 = !DILocation(line: 133, column: 40, scope: !4964)
!4975 = !DILocation(line: 133, column: 43, scope: !4964)
!4976 = !DILocation(line: 134, column: 11, scope: !4964)
!4977 = !DILocation(line: 134, column: 2, scope: !4964)
!4978 = !DILocation(line: 135, column: 11, scope: !4964)
!4979 = !DILocation(line: 135, column: 2, scope: !4964)
!4980 = !DILocation(line: 142, column: 5, scope: !4964)
!4981 = !DILocation(line: 142, column: 11, scope: !4964)
!4982 = !DILocation(line: 0, scope: !4964)
!4983 = !DILocation(line: 143, column: 12, scope: !4964)
!4984 = !DILocation(line: 143, column: 3, scope: !4964)
!4985 = !DILocation(line: 145, column: 5, scope: !4964)
!4986 = !DILocation(line: 145, column: 11, scope: !4964)
!4987 = !DILocation(line: 146, column: 12, scope: !4964)
!4988 = !DILocation(line: 146, column: 3, scope: !4964)
!4989 = !DILocation(line: 149, column: 16, scope: !4964)
!4990 = !DILocation(line: 149, column: 15, scope: !4964)
!4991 = !DILocation(line: 149, column: 2, scope: !4964)
!4992 = !DILocation(line: 151, column: 7, scope: !4964)
!4993 = !DILocation(line: 151, column: 16, scope: !4964)
!4994 = !DILocation(line: 151, column: 13, scope: !4964)
!4995 = !DILocation(line: 152, column: 10, scope: !4964)
!4996 = !DILocation(line: 152, column: 3, scope: !4964)
!4997 = !DILocation(line: 153, column: 7, scope: !4964)
!4998 = !DILocation(line: 153, column: 16, scope: !4964)
!4999 = !DILocation(line: 153, column: 13, scope: !4964)
!5000 = !DILocation(line: 154, column: 10, scope: !4964)
!5001 = !DILocation(line: 154, column: 3, scope: !4964)
!5002 = !DILocation(line: 156, column: 5, scope: !4964)
!5003 = !DILocation(line: 156, column: 14, scope: !4964)
!5004 = !DILocation(line: 156, column: 11, scope: !4964)
!5005 = !DILocation(line: 157, column: 10, scope: !4964)
!5006 = !DILocation(line: 157, column: 3, scope: !4964)
!5007 = !DILocation(line: 159, column: 10, scope: !4964)
!5008 = !DILocation(line: 159, column: 3, scope: !4964)
!5009 = distinct !DISubprogram(name: "runtime.initHeap", linkageName: "runtime.initHeap", scope: !428, file: !428, line: 34, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!5010 = !DILocation(line: 35, column: 12, scope: !5009)
!5011 = !DILocation(line: 39, column: 8, scope: !5009)
!5012 = !DILocation(line: 40, column: 2, scope: !5009)
!5013 = distinct !DISubprogram(name: "runtime.gcCallback", linkageName: "tinygo_runtime_bdwgc_callback", scope: !428, file: !428, line: 46, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!5014 = !DILocation(line: 48, column: 17, scope: !5013)
!5015 = !DILocation(line: 49, column: 2, scope: !5013)
!5016 = distinct !DISubprogram(name: "runtime.gcMarkReachable", linkageName: "runtime.gcMarkReachable", scope: !3967, file: !3967, line: 7, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!5017 = !DILocation(line: 8, column: 25, scope: !5016)
!5018 = !DILocation(line: 9, column: 2, scope: !5016)
!5019 = distinct !DISubprogram(name: "runtime.markRoots", linkageName: "runtime.markRoots", scope: !428, file: !428, line: 51, type: !5020, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !5022)
!5020 = !DISubroutineType(types: !5021)
!5021 = !{!53, !53}
!5022 = !{!5023, !5024}
!5023 = !DILocalVariable(name: "start", arg: 1, scope: !5019, file: !428, line: 51, type: !53)
!5024 = !DILocalVariable(name: "end", arg: 2, scope: !5019, file: !428, line: 51, type: !53)
!5025 = !DILocation(line: 51, column: 6, scope: !5019)
!5026 = !DILocation(line: 52, column: 17, scope: !5019)
!5027 = !DILocation(line: 52, column: 24, scope: !5019)
!5028 = !DILocation(line: 52, column: 16, scope: !5019)
!5029 = !DILocation(line: 53, column: 2, scope: !5019)
!5030 = distinct !DISubprogram(name: "runtime.free", linkageName: "runtime.free", scope: !428, file: !428, line: 99, type: !3214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !5031)
!5031 = !{!5032}
!5032 = !DILocalVariable(name: "ptr", arg: 1, scope: !5030, file: !428, line: 99, type: !94)
!5033 = !DILocation(line: 99, column: 6, scope: !5030)
!5034 = !DILocation(line: 100, column: 13, scope: !5030)
!5035 = !DILocation(line: 100, column: 12, scope: !5030)
!5036 = !DILocation(line: 101, column: 2, scope: !5030)
!5037 = distinct !DISubprogram(name: "runtime.gcScanGlobals", linkageName: "internal/task.gcScanGlobals", scope: !3967, file: !3967, line: 15, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!5038 = !DILocation(line: 16, column: 13, scope: !5037)
!5039 = !DILocation(line: 17, column: 2, scope: !5037)
!5040 = distinct !DISubprogram(name: "runtime.findGlobals", linkageName: "runtime.findGlobals", scope: !4080, file: !4080, line: 95, type: !5041, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !5043)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!662}
!5043 = !{!5044, !5045, !5046, !5047, !5060, !5061, !5062, !5069, !5070}
!5044 = !DILocalVariable(name: "found", arg: 1, scope: !5040, file: !4080, line: 95, type: !662)
!5045 = !DILocalVariable(name: "headerPtr", scope: !5040, file: !4080, line: 103, type: !94)
!5046 = !DILocalVariable(name: "i", scope: !5040, file: !4080, line: 104, type: !1797)
!5047 = !DILocalVariable(name: "header", scope: !5040, file: !4080, line: 111, type: !5048)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64, align: 64, dwarfAddressSpace: 0)
!5049 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader64", baseType: !5050)
!5050 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !5051)
!5051 = !{!5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "_type", baseType: !108, size: 32, align: 32)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !108, size: 32, align: 32, offset: 32)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "offset", baseType: !53, size: 64, align: 64, offset: 64)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", baseType: !53, size: 64, align: 64, offset: 128)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", baseType: !53, size: 64, align: 64, offset: 192)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "filesz", baseType: !53, size: 64, align: 64, offset: 256)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", baseType: !53, size: 64, align: 64, offset: 320)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !53, size: 64, align: 64, offset: 384)
!5060 = !DILocalVariable(name: "start", scope: !5040, file: !4080, line: 113, type: !53)
!5061 = !DILocalVariable(name: "end", scope: !5040, file: !4080, line: 114, type: !53)
!5062 = !DILocalVariable(name: "header", scope: !5040, file: !4080, line: 118, type: !5063)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64, align: 64, dwarfAddressSpace: 0)
!5064 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader32", baseType: !5065)
!5065 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !5066)
!5066 = !{!5052, !5054, !5055, !5056, !5057, !5058, !5067, !5068}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !108, size: 32, align: 32, offset: 384)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !53, size: 64, align: 64, offset: 448)
!5069 = !DILocalVariable(name: "start", scope: !5040, file: !4080, line: 120, type: !53)
!5070 = !DILocalVariable(name: "end", scope: !5040, file: !4080, line: 121, type: !53)
!5071 = !DILocation(line: 95, column: 6, scope: !5040)
!5072 = !DILocation(line: 103, column: 80, scope: !5040)
!5073 = !DILocation(line: 103, column: 67, scope: !5040)
!5074 = !DILocation(line: 103, column: 29, scope: !5040)
!5075 = !DILocation(line: 103, column: 2, scope: !5040)
!5076 = !DILocation(line: 104, column: 6, scope: !5040)
!5077 = !DILocation(line: 0, scope: !5040)
!5078 = !DILocation(line: 104, column: 14, scope: !5040)
!5079 = !DILocation(line: 104, column: 33, scope: !5040)
!5080 = !DILocation(line: 104, column: 21, scope: !5040)
!5081 = !DILocation(line: 104, column: 16, scope: !5040)
!5082 = !DILocation(line: 111, column: 36, scope: !5040)
!5083 = !DILocation(line: 111, column: 4, scope: !5040)
!5084 = !DILocation(line: 112, column: 7, scope: !5040)
!5085 = !DILocation(line: 112, column: 14, scope: !5040)
!5086 = !DILocation(line: 112, column: 20, scope: !5040)
!5087 = !DILocation(line: 112, column: 34, scope: !5040)
!5088 = !DILocation(line: 112, column: 41, scope: !5040)
!5089 = !DILocation(line: 112, column: 46, scope: !5040)
!5090 = !DILocation(line: 112, column: 52, scope: !5040)
!5091 = !DILocation(line: 113, column: 14, scope: !5040)
!5092 = !DILocation(line: 113, column: 21, scope: !5040)
!5093 = !DILocation(line: 113, column: 5, scope: !5040)
!5094 = !DILocation(line: 114, column: 12, scope: !5040)
!5095 = !DILocation(line: 114, column: 20, scope: !5040)
!5096 = !DILocation(line: 114, column: 27, scope: !5040)
!5097 = !DILocation(line: 114, column: 18, scope: !5040)
!5098 = !DILocation(line: 114, column: 5, scope: !5040)
!5099 = !DILocation(line: 115, column: 5, scope: !5040)
!5100 = !DILocation(line: 115, column: 11, scope: !5040)
!5101 = !DILocation(line: 115, column: 18, scope: !5040)
!5102 = !DILocation(line: 115, column: 10, scope: !5040)
!5103 = !DILocation(line: 125, column: 26, scope: !5040)
!5104 = !DILocation(line: 125, column: 48, scope: !5040)
!5105 = !DILocation(line: 125, column: 25, scope: !5040)
!5106 = !DILocation(line: 125, column: 3, scope: !5040)
!5107 = !DILocation(line: 104, column: 41, scope: !5040)
!5108 = !DILocation(line: 118, column: 36, scope: !5040)
!5109 = !DILocation(line: 118, column: 4, scope: !5040)
!5110 = !DILocation(line: 119, column: 7, scope: !5040)
!5111 = !DILocation(line: 119, column: 14, scope: !5040)
!5112 = !DILocation(line: 119, column: 20, scope: !5040)
!5113 = !DILocation(line: 119, column: 34, scope: !5040)
!5114 = !DILocation(line: 119, column: 41, scope: !5040)
!5115 = !DILocation(line: 119, column: 46, scope: !5040)
!5116 = !DILocation(line: 119, column: 52, scope: !5040)
!5117 = !DILocation(line: 120, column: 14, scope: !5040)
!5118 = !DILocation(line: 120, column: 21, scope: !5040)
!5119 = !DILocation(line: 120, column: 5, scope: !5040)
!5120 = !DILocation(line: 121, column: 12, scope: !5040)
!5121 = !DILocation(line: 121, column: 20, scope: !5040)
!5122 = !DILocation(line: 121, column: 27, scope: !5040)
!5123 = !DILocation(line: 121, column: 18, scope: !5040)
!5124 = !DILocation(line: 121, column: 5, scope: !5040)
!5125 = !DILocation(line: 122, column: 5, scope: !5040)
!5126 = !DILocation(line: 122, column: 11, scope: !5040)
!5127 = !DILocation(line: 122, column: 18, scope: !5040)
!5128 = !DILocation(line: 122, column: 10, scope: !5040)
!5129 = !DILocation(line: 127, column: 2, scope: !5040)
!5130 = distinct !DISubprogram(name: "runtime.scanstack", linkageName: "tinygo_scanstack", scope: !3967, file: !3967, line: 23, type: !3707, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !5131)
!5131 = !{!5132}
!5132 = !DILocalVariable(name: "sp", arg: 1, scope: !5130, file: !3967, line: 23, type: !53)
!5133 = !DILocation(line: 23, column: 6, scope: !5130)
!5134 = !DILocation(line: 24, column: 12, scope: !5130)
!5135 = !DILocation(line: 24, column: 29, scope: !5130)
!5136 = !DILocation(line: 24, column: 11, scope: !5130)
!5137 = !DILocation(line: 25, column: 2, scope: !5130)
!5138 = distinct !DISubprogram(name: "runtime.unsafeSlicePanic", linkageName: "runtime.unsafeSlicePanic", scope: !435, file: !435, line: 211, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!5139 = !DILocation(line: 212, column: 30, scope: !5138)
!5140 = !DILocation(line: 212, column: 16, scope: !5138)
!5141 = !DILocation(line: 213, column: 2, scope: !5138)
!5142 = distinct !DISubprogram(name: "runtime.negativeShiftPanic", linkageName: "runtime.negativeShiftPanic", scope: !435, file: !435, line: 221, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!5143 = !DILocation(line: 222, column: 30, scope: !5142)
!5144 = !DILocation(line: 222, column: 16, scope: !5142)
!5145 = !DILocation(line: 223, column: 2, scope: !5142)
!5146 = distinct !DISubprogram(name: "runtime.printspace", linkageName: "runtime.printspace", scope: !465, file: !465, line: 282, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!5147 = !DILocation(line: 283, column: 9, scope: !5146)
!5148 = !DILocation(line: 284, column: 2, scope: !5146)
!5149 = distinct !DISubprogram(name: "runtime.memmove", linkageName: "runtime.memmove", scope: !1584, file: !1584, line: 48, type: !4101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !5150)
!5150 = !{!5151, !5152, !5153}
!5151 = !DILocalVariable(name: "dst", arg: 1, scope: !5149, file: !1584, line: 48, type: !94)
!5152 = !DILocalVariable(name: "src", arg: 2, scope: !5149, file: !1584, line: 48, type: !94)
!5153 = !DILocalVariable(name: "size", arg: 3, scope: !5149, file: !1584, line: 48, type: !53)
!5154 = !DILocation(line: 48, column: 6, scope: !5149)
!5155 = distinct !DISubprogram(name: "runtime.main", linkageName: "main", scope: !421, file: !421, line: 80, type: !5156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !5158)
!5156 = !DISubroutineType(types: !5157)
!5157 = !{!388, !492}
!5158 = !{!5159, !5160, !5161, !5162, !5163}
!5159 = !DILocalVariable(name: "argc", arg: 1, scope: !5155, file: !421, line: 80, type: !388)
!5160 = !DILocalVariable(name: "argv", arg: 2, scope: !5155, file: !421, line: 80, type: !492)
!5161 = !DILocalVariable(name: "main_argc", scope: !5155, file: !421, line: 105, type: !388)
!5162 = !DILocalVariable(name: "main_argv", scope: !5155, file: !421, line: 106, type: !492)
!5163 = !DILocalVariable(name: "stackTop", scope: !5155, file: !421, line: 75, type: !53)
!5164 = !DILocation(line: 80, column: 6, scope: !5155)
!5165 = !DILocation(line: 0, scope: !5155)
!5166 = !DILocation(line: 83, column: 15, scope: !5155)
!5167 = !DILocation(line: 87, column: 14, scope: !5155)
!5168 = !DILocation(line: 87, column: 2, scope: !5155)
!5169 = !DILocation(line: 88, column: 14, scope: !5155)
!5170 = !DILocation(line: 88, column: 2, scope: !5155)
!5171 = !DILocation(line: 92, column: 31, scope: !5155)
!5172 = !DILocation(line: 97, column: 35, scope: !5155)
!5173 = !DILocation(line: 97, column: 2, scope: !5155)
!5174 = !DILocation(line: 98, column: 9, scope: !5155)
!5175 = !DILocation(line: 101, column: 2, scope: !5155)
!5176 = distinct !DISubprogram(name: "runtime.allocateHeap", linkageName: "runtime.allocateHeap", scope: !421, file: !421, line: 303, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !5177)
!5177 = !{!5178, !5179, !5180, !5181, !5182}
!5178 = !DILocalVariable(name: "heapMaxSize", scope: !5176, file: !421, line: 299, type: !53)
!5179 = !DILocalVariable(name: "addr", scope: !5176, file: !421, line: 309, type: !94)
!5180 = !DILocalVariable(name: "heapStart", scope: !5176, file: !421, line: 301, type: !53)
!5181 = !DILocalVariable(name: "heapSize", scope: !5176, file: !421, line: 298, type: !53)
!5182 = !DILocalVariable(name: "heapEnd", scope: !5176, file: !421, line: 301, type: !53)
!5183 = !DILocation(line: 307, column: 2, scope: !5176)
!5184 = !DILocation(line: 0, scope: !5176)
!5185 = !DILocation(line: 309, column: 21, scope: !5176)
!5186 = !DILocation(line: 309, column: 15, scope: !5176)
!5187 = !DILocation(line: 309, column: 3, scope: !5176)
!5188 = !DILocation(line: 310, column: 6, scope: !5176)
!5189 = !DILocation(line: 310, column: 11, scope: !5176)
!5190 = !DILocation(line: 315, column: 4, scope: !5176)
!5191 = !DILocation(line: 316, column: 7, scope: !5176)
!5192 = !DILocation(line: 316, column: 19, scope: !5176)
!5193 = !DILocation(line: 317, column: 17, scope: !5176)
!5194 = !DILocation(line: 321, column: 23, scope: !5176)
!5195 = !DILocation(line: 321, column: 22, scope: !5176)
!5196 = !DILocation(line: 321, column: 3, scope: !5176)
!5197 = !DILocation(line: 322, column: 13, scope: !5176)
!5198 = !DILocation(line: 322, column: 25, scope: !5176)
!5199 = !DILocation(line: 322, column: 23, scope: !5176)
!5200 = !DILocation(line: 322, column: 3, scope: !5176)
!5201 = !DILocation(line: 325, column: 2, scope: !5176)
!5202 = distinct !DISubprogram(name: "runtime.runMain", linkageName: "runtime.runMain", scope: !421, file: !421, line: 135, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!5203 = !DILocation(line: 136, column: 5, scope: !5202)
!5204 = !DILocation(line: 137, column: 2, scope: !5202)
!5205 = distinct !DISubprogram(name: "runtime.run", linkageName: "runtime.run", scope: !522, file: !522, line: 23, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !5206)
!5206 = !{!5207}
!5207 = !DILocalVariable(name: "stackTop", scope: !5205, file: !421, line: 75, type: !53)
!5208 = !DILocation(line: 24, column: 10, scope: !5205)
!5209 = !DILocation(line: 25, column: 10, scope: !5205)
!5210 = !DILocation(line: 26, column: 12, scope: !5205)
!5211 = !DILocation(line: 26, column: 11, scope: !5205)
!5212 = !DILocation(line: 27, column: 9, scope: !5205)
!5213 = !DILocation(line: 28, column: 10, scope: !5205)
!5214 = !DILocation(line: 29, column: 2, scope: !5205)
!5215 = distinct !DISubprogram(name: "runtime.tinygo_handle_fatal_signal", linkageName: "tinygo_handle_fatal_signal", scope: !421, file: !421, line: 148, type: !5216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !5218)
!5216 = !DISubroutineType(types: !5217)
!5217 = !{!388, !53}
!5218 = !{!5219, !5220}
!5219 = !DILocalVariable(name: "sig", arg: 1, scope: !5215, file: !421, line: 148, type: !388)
!5220 = !DILocalVariable(name: "addr", arg: 2, scope: !5215, file: !421, line: 148, type: !53)
!5221 = !DILocation(line: 148, column: 6, scope: !5215)
!5222 = !DILocation(line: 0, scope: !5215)
!5223 = !DILocation(line: 150, column: 7, scope: !5215)
!5224 = !DILocation(line: 154, column: 5, scope: !5215)
!5225 = !DILocation(line: 154, column: 10, scope: !5215)
!5226 = !DILocation(line: 155, column: 14, scope: !5215)
!5227 = !DILocation(line: 156, column: 12, scope: !5215)
!5228 = !DILocation(line: 156, column: 11, scope: !5215)
!5229 = !DILocation(line: 160, column: 13, scope: !5215)
!5230 = !DILocation(line: 161, column: 9, scope: !5215)
!5231 = !DILocation(line: 162, column: 7, scope: !5215)
!5232 = !DILocation(line: 163, column: 10, scope: !5215)
!5233 = !DILocation(line: 180, column: 8, scope: !5215)
!5234 = !DILocation(line: 180, column: 7, scope: !5215)
!5235 = !DILocation(line: 181, column: 2, scope: !5215)
!5236 = !DILocation(line: 164, column: 7, scope: !5215)
!5237 = !DILocation(line: 165, column: 10, scope: !5215)
!5238 = !DILocation(line: 166, column: 7, scope: !5215)
!5239 = !DILocation(line: 167, column: 10, scope: !5215)
!5240 = !DILocation(line: 169, column: 11, scope: !5215)
!5241 = !DILocation(line: 169, column: 10, scope: !5215)
!5242 = !DILocation(line: 158, column: 14, scope: !5215)
!5243 = distinct !DISubprogram(name: "runtime.printlock", linkageName: "runtime.printlock", scope: !522, file: !522, line: 138, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!5244 = !DILocation(line: 139, column: 16, scope: !5243)
!5245 = !DILocation(line: 140, column: 2, scope: !5243)
!5246 = distinct !DISubprogram(name: "runtime.printunlock", linkageName: "runtime.printunlock", scope: !522, file: !522, line: 142, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!5247 = !DILocation(line: 143, column: 18, scope: !5246)
!5248 = !DILocation(line: 144, column: 2, scope: !5246)
!5249 = distinct !DISubprogram(name: "runtime.sliceAppend", linkageName: "runtime.sliceAppend", scope: !5250, file: !5250, line: 12, type: !5251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !5253)
!5250 = !DIFile(filename: "slice.go", directory: "/usr/local/lib/tinygo/src/runtime")
!5251 = !DISubroutineType(types: !5252)
!5252 = !{!94, !94, !53, !53, !53, !53, !94}
!5253 = !{!5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261}
!5254 = !DILocalVariable(name: "srcBuf", arg: 1, scope: !5249, file: !5250, line: 12, type: !94)
!5255 = !DILocalVariable(name: "elemsBuf", arg: 2, scope: !5249, file: !5250, line: 12, type: !94)
!5256 = !DILocalVariable(name: "srcLen", arg: 3, scope: !5249, file: !5250, line: 12, type: !53)
!5257 = !DILocalVariable(name: "srcCap", arg: 4, scope: !5249, file: !5250, line: 12, type: !53)
!5258 = !DILocalVariable(name: "elemsLen", arg: 5, scope: !5249, file: !5250, line: 12, type: !53)
!5259 = !DILocalVariable(name: "elemSize", arg: 6, scope: !5249, file: !5250, line: 12, type: !53)
!5260 = !DILocalVariable(name: "layout", arg: 7, scope: !5249, file: !5250, line: 12, type: !94)
!5261 = !DILocalVariable(name: "newLen", scope: !5249, file: !5250, line: 13, type: !53)
!5262 = !DILocation(line: 12, column: 6, scope: !5249)
!5263 = !DILocation(line: 13, column: 12, scope: !5249)
!5264 = !DILocation(line: 13, column: 21, scope: !5249)
!5265 = !DILocation(line: 13, column: 19, scope: !5249)
!5266 = !DILocation(line: 13, column: 2, scope: !5249)
!5267 = !DILocation(line: 14, column: 5, scope: !5249)
!5268 = !DILocation(line: 14, column: 14, scope: !5249)
!5269 = !DILocation(line: 0, scope: !5249)
!5270 = !DILocation(line: 17, column: 33, scope: !5249)
!5271 = !DILocation(line: 17, column: 41, scope: !5249)
!5272 = !DILocation(line: 17, column: 49, scope: !5249)
!5273 = !DILocation(line: 17, column: 57, scope: !5249)
!5274 = !DILocation(line: 17, column: 65, scope: !5249)
!5275 = !DILocation(line: 17, column: 75, scope: !5249)
!5276 = !DILocation(line: 17, column: 32, scope: !5249)
!5277 = !DILocation(line: 17, column: 3, scope: !5249)
!5278 = !DILocation(line: 17, column: 14, scope: !5249)
!5279 = !DILocation(line: 20, column: 22, scope: !5249)
!5280 = !DILocation(line: 20, column: 30, scope: !5249)
!5281 = !DILocation(line: 20, column: 37, scope: !5249)
!5282 = !DILocation(line: 20, column: 36, scope: !5249)
!5283 = !DILocation(line: 20, column: 21, scope: !5249)
!5284 = !DILocation(line: 20, column: 48, scope: !5249)
!5285 = !DILocation(line: 20, column: 58, scope: !5249)
!5286 = !DILocation(line: 20, column: 67, scope: !5249)
!5287 = !DILocation(line: 20, column: 66, scope: !5249)
!5288 = !DILocation(line: 20, column: 10, scope: !5249)
!5289 = !DILocation(line: 12, column: 18, scope: !5249)
!5290 = !DILocation(line: 12, column: 59, scope: !5249)
!5291 = !DILocation(line: 23, column: 9, scope: !5249)
!5292 = !DILocation(line: 23, column: 17, scope: !5249)
!5293 = !DILocation(line: 23, column: 25, scope: !5249)
!5294 = !DILocation(line: 23, column: 2, scope: !5249)
!5295 = distinct !DISubprogram(name: "runtime.sliceGrow", linkageName: "runtime.sliceGrow", scope: !5250, file: !5250, line: 27, type: !5296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !5298)
!5296 = !DISubroutineType(types: !5297)
!5297 = !{!94, !53, !53, !53, !53, !94}
!5298 = !{!5299, !5300, !5301, !5302, !5303, !5304, !5305}
!5299 = !DILocalVariable(name: "oldBuf", arg: 1, scope: !5295, file: !5250, line: 27, type: !94)
!5300 = !DILocalVariable(name: "oldLen", arg: 2, scope: !5295, file: !5250, line: 27, type: !53)
!5301 = !DILocalVariable(name: "oldCap", arg: 3, scope: !5295, file: !5250, line: 27, type: !53)
!5302 = !DILocalVariable(name: "newCap", arg: 4, scope: !5295, file: !5250, line: 27, type: !53)
!5303 = !DILocalVariable(name: "elemSize", arg: 5, scope: !5295, file: !5250, line: 27, type: !53)
!5304 = !DILocalVariable(name: "layout", arg: 6, scope: !5295, file: !5250, line: 27, type: !94)
!5305 = !DILocalVariable(name: "buf", scope: !5295, file: !5250, line: 39, type: !94)
!5306 = !DILocation(line: 27, column: 6, scope: !5295)
!5307 = !DILocation(line: 28, column: 5, scope: !5295)
!5308 = !DILocation(line: 28, column: 15, scope: !5295)
!5309 = !DILocation(line: 28, column: 12, scope: !5295)
!5310 = !DILocation(line: 0, scope: !5295)
!5311 = !DILocation(line: 30, column: 10, scope: !5295)
!5312 = !DILocation(line: 30, column: 18, scope: !5295)
!5313 = !DILocation(line: 30, column: 26, scope: !5295)
!5314 = !DILocation(line: 30, column: 3, scope: !5295)
!5315 = !DILocation(line: 37, column: 30, scope: !5295)
!5316 = !DILocation(line: 37, column: 24, scope: !5295)
!5317 = !DILocation(line: 37, column: 13, scope: !5295)
!5318 = !DILocation(line: 37, column: 2, scope: !5295)
!5319 = !DILocation(line: 39, column: 15, scope: !5295)
!5320 = !DILocation(line: 39, column: 22, scope: !5295)
!5321 = !DILocation(line: 39, column: 21, scope: !5295)
!5322 = !DILocation(line: 39, column: 32, scope: !5295)
!5323 = !DILocation(line: 39, column: 14, scope: !5295)
!5324 = !DILocation(line: 39, column: 2, scope: !5295)
!5325 = !DILocation(line: 40, column: 5, scope: !5295)
!5326 = !DILocation(line: 40, column: 12, scope: !5295)
!5327 = !DILocation(line: 42, column: 11, scope: !5295)
!5328 = !DILocation(line: 42, column: 16, scope: !5295)
!5329 = !DILocation(line: 42, column: 24, scope: !5295)
!5330 = !DILocation(line: 42, column: 31, scope: !5295)
!5331 = !DILocation(line: 42, column: 30, scope: !5295)
!5332 = !DILocation(line: 42, column: 10, scope: !5295)
!5333 = !DILocation(line: 45, column: 9, scope: !5295)
!5334 = !DILocation(line: 45, column: 14, scope: !5295)
!5335 = !DILocation(line: 45, column: 22, scope: !5295)
!5336 = !DILocation(line: 45, column: 2, scope: !5295)
!5337 = distinct !DISubprogram(name: "runtime.tinygo_signal_handler", linkageName: "tinygo_signal_handler", scope: !421, file: !421, line: 420, type: !3903, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !5338)
!5338 = !{!5339, !5340, !5341, !5342}
!5339 = !DILocalVariable(name: "s", arg: 1, scope: !5337, file: !421, line: 420, type: !388)
!5340 = !DILocalVariable(name: "mask", scope: !5337, file: !421, line: 427, type: !108)
!5341 = !DILocalVariable(name: "val", scope: !5337, file: !421, line: 428, type: !108)
!5342 = !DILocalVariable(name: "swapped", scope: !5337, file: !421, line: 429, type: !378)
!5343 = !DILocation(line: 420, column: 6, scope: !5337)
!5344 = !DILocation(line: 0, scope: !5337)
!5345 = !DILocation(line: 427, column: 31, scope: !5337)
!5346 = !DILocation(line: 427, column: 21, scope: !5337)
!5347 = !DILocation(line: 427, column: 3, scope: !5337)
!5348 = !DILocation(line: 428, column: 30, scope: !5337)
!5349 = !DILocation(line: 428, column: 3, scope: !5337)
!5350 = !DILocation(line: 429, column: 45, scope: !5337)
!5351 = !DILocation(line: 429, column: 50, scope: !5337)
!5352 = !DILocation(line: 429, column: 54, scope: !5337)
!5353 = !DILocation(line: 429, column: 53, scope: !5337)
!5354 = !DILocation(line: 429, column: 44, scope: !5337)
!5355 = !DILocation(line: 429, column: 3, scope: !5337)
!5356 = !DILocation(line: 430, column: 6, scope: !5337)
!5357 = !DILocation(line: 437, column: 21, scope: !5337)
!5358 = !DILocation(line: 437, column: 25, scope: !5337)
!5359 = !DILocation(line: 441, column: 22, scope: !5337)
!5360 = !DILocation(line: 443, column: 2, scope: !5337)
!5361 = distinct !DISubprogram(name: "runtime.stringConcat", linkageName: "runtime.stringConcat", scope: !4725, file: !4725, line: 56, type: !5362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !5368)
!5362 = !DISubroutineType(types: !5363)
!5363 = !{!5364, !5364}
!5364 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._string", baseType: !5365)
!5365 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !5366)
!5366 = !{!2599, !5367}
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !53, size: 64, align: 64, offset: 64)
!5368 = !{!5369, !5370, !5371, !5372}
!5369 = !DILocalVariable(name: "x", arg: 1, scope: !5361, file: !4725, line: 56, type: !5364)
!5370 = !DILocalVariable(name: "y", arg: 2, scope: !5361, file: !4725, line: 56, type: !5364)
!5371 = !DILocalVariable(name: "length", scope: !5361, file: !4725, line: 62, type: !53)
!5372 = !DILocalVariable(name: "buf", scope: !5361, file: !4725, line: 63, type: !94)
!5373 = !DILocation(line: 56, column: 6, scope: !5361)
!5374 = !DILocation(line: 56, column: 19, scope: !5361)
!5375 = !DILocation(line: 56, column: 22, scope: !5361)
!5376 = !DILocation(line: 57, column: 7, scope: !5361)
!5377 = !DILocation(line: 57, column: 14, scope: !5361)
!5378 = !DILocation(line: 0, scope: !5361)
!5379 = !DILocation(line: 58, column: 10, scope: !5361)
!5380 = !DILocation(line: 58, column: 3, scope: !5361)
!5381 = !DILocation(line: 59, column: 14, scope: !5361)
!5382 = !DILocation(line: 59, column: 21, scope: !5361)
!5383 = !DILocation(line: 60, column: 10, scope: !5361)
!5384 = !DILocation(line: 60, column: 3, scope: !5361)
!5385 = !DILocation(line: 62, column: 15, scope: !5361)
!5386 = !DILocation(line: 62, column: 26, scope: !5361)
!5387 = !DILocation(line: 62, column: 22, scope: !5361)
!5388 = !DILocation(line: 62, column: 3, scope: !5361)
!5389 = !DILocation(line: 63, column: 16, scope: !5361)
!5390 = !DILocation(line: 63, column: 45, scope: !5361)
!5391 = !DILocation(line: 63, column: 15, scope: !5361)
!5392 = !DILocation(line: 63, column: 3, scope: !5361)
!5393 = !DILocation(line: 64, column: 10, scope: !5361)
!5394 = !DILocation(line: 64, column: 32, scope: !5361)
!5395 = !DILocation(line: 64, column: 40, scope: !5361)
!5396 = !DILocation(line: 64, column: 9, scope: !5361)
!5397 = !DILocation(line: 65, column: 21, scope: !5361)
!5398 = !DILocation(line: 65, column: 28, scope: !5361)
!5399 = !DILocation(line: 65, column: 20, scope: !5361)
!5400 = !DILocation(line: 65, column: 54, scope: !5361)
!5401 = !DILocation(line: 65, column: 62, scope: !5361)
!5402 = !DILocation(line: 65, column: 9, scope: !5361)
!5403 = !DILocation(line: 66, column: 21, scope: !5361)
!5404 = !DILocation(line: 66, column: 31, scope: !5361)
!5405 = !DILocation(line: 66, column: 43, scope: !5361)
!5406 = !DILocation(line: 66, column: 45, scope: !5361)
!5407 = !DILocation(line: 66, column: 17, scope: !5361)
!5408 = !DILocation(line: 66, column: 3, scope: !5361)
!5409 = distinct !DISubprogram(name: "runtime.stringFromBytes", linkageName: "runtime.stringFromBytes", scope: !4725, file: !4725, line: 71, type: !5410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !5413)
!5410 = !DISubroutineType(types: !5411)
!5411 = !{!5412}
!5412 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !2598)
!5413 = !{!5414, !5415}
!5414 = !DILocalVariable(name: "x", arg: 1, scope: !5409, file: !4725, line: 71, type: !5412)
!5415 = !DILocalVariable(name: "buf", scope: !5409, file: !4725, line: 76, type: !94)
!5416 = !DILocation(line: 71, column: 6, scope: !5409)
!5417 = !DILocation(line: 71, column: 22, scope: !5409)
!5418 = !DILocation(line: 76, column: 17, scope: !5409)
!5419 = !DILocation(line: 76, column: 43, scope: !5409)
!5420 = !DILocation(line: 76, column: 14, scope: !5409)
!5421 = !DILocation(line: 76, column: 2, scope: !5409)
!5422 = !DILocation(line: 77, column: 9, scope: !5409)
!5423 = !DILocation(line: 77, column: 31, scope: !5409)
!5424 = !DILocation(line: 77, column: 39, scope: !5409)
!5425 = !DILocation(line: 77, column: 8, scope: !5409)
!5426 = !DILocation(line: 78, column: 20, scope: !5409)
!5427 = !DILocation(line: 78, column: 30, scope: !5409)
!5428 = !DILocation(line: 78, column: 42, scope: !5409)
!5429 = !DILocation(line: 78, column: 46, scope: !5409)
!5430 = !DILocation(line: 78, column: 16, scope: !5409)
!5431 = !DILocation(line: 78, column: 2, scope: !5409)
!5432 = distinct !DISubprogram(name: "main.f_gold", linkageName: "f_gold", scope: !5433, file: !5433, line: 6, type: !1795, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !5434)
!5433 = !DIFile(filename: "NUMBER_TRIANGLES_N_MOVES_1_emit.go", directory: "/root/es/vert/vert/source_funs/go_transcoder/NUMBER_TRIANGLES_N_MOVES_1")
!5434 = !{!5435, !5436}
!5435 = !DILocalVariable(name: "n", arg: 1, scope: !5432, file: !5433, line: 6, type: !1797)
!5436 = !DILocalVariable(name: "ans", scope: !5432, file: !5433, line: 7, type: !1797)
!5437 = !DILocation(line: 6, column: 6, scope: !5432)
!5438 = !DILocation(line: 7, column: 40, scope: !5432)
!5439 = !DILocation(line: 7, column: 39, scope: !5432)
!5440 = !DILocation(line: 7, column: 28, scope: !5432)
!5441 = !DILocation(line: 7, column: 43, scope: !5432)
!5442 = !DILocation(line: 7, column: 46, scope: !5432)
!5443 = !DILocation(line: 7, column: 19, scope: !5432)
!5444 = !DILocation(line: 7, column: 6, scope: !5432)
!5445 = !DILocation(line: 8, column: 9, scope: !5432)
!5446 = !DILocation(line: 8, column: 2, scope: !5432)
