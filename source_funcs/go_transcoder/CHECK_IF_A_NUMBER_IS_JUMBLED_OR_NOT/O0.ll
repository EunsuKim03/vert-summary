; ModuleID = 'main'
source_filename = "main"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-musleabihf"

%"unicode/utf8.acceptRange" = type { i8, i8 }
%runtime._string = type { ptr, i64 }
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

@"internal/itoa$string" = internal unnamed_addr constant [1 x i8] c"-", align 1, !dbg !0
@"internal/itoa$string.1" = internal unnamed_addr constant [1 x i8] c"0", align 1, !dbg !7
@"unicode/utf8.first" = internal global [256 x i8] c"\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\13\03\03\03\03\03\03\03\03\03\03\03\03#\03\034\04\04\04D\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1", align 1, !dbg !9
@"unicode/utf8.acceptRanges" = internal global [16 x %"unicode/utf8.acceptRange"] [%"unicode/utf8.acceptRange" { i8 -128, i8 -65 }, %"unicode/utf8.acceptRange" { i8 -96, i8 -65 }, %"unicode/utf8.acceptRange" { i8 -128, i8 -97 }, %"unicode/utf8.acceptRange" { i8 -112, i8 -65 }, %"unicode/utf8.acceptRange" { i8 -128, i8 -113 }, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer, %"unicode/utf8.acceptRange" zeroinitializer], align 1, !dbg !15
@"internal/reflectlite$string" = internal unnamed_addr constant [4 x i8] c"Elem", align 1, !dbg !25
@"internal/reflectlite.errTypeElem" = internal global ptr @"internal/reflectlite$alloc", align 8, !dbg !31
@"internal/reflectlite$string.1" = internal unnamed_addr constant [3 x i8] c"Key", align 1, !dbg !44
@"internal/reflectlite.errTypeKey" = internal global ptr @"internal/reflectlite$alloc.107", align 8, !dbg !49
@"internal/reflectlite$string.2" = internal unnamed_addr constant [5 x i8] c"Field", align 1, !dbg !51
@"internal/reflectlite.errTypeField" = internal global ptr @"internal/reflectlite$alloc.108", align 8, !dbg !56
@"internal/reflectlite$string.4" = internal unnamed_addr constant [3 x i8] c"Len", align 1, !dbg !58
@"internal/reflectlite.errTypeLen" = internal global ptr @"internal/reflectlite$alloc.110", align 8, !dbg !60
@"internal/reflectlite$string.5" = internal unnamed_addr constant [8 x i8] c"NumField", align 1, !dbg !62
@"internal/reflectlite.errTypeNumField" = internal global ptr @"internal/reflectlite$alloc.111", align 8, !dbg !67
@"internal/reflectlite$string.6" = internal unnamed_addr constant [7 x i8] c"ChanDir", align 1, !dbg !69
@"internal/reflectlite.errTypeChanDir" = internal global ptr @"internal/reflectlite$alloc.112", align 8, !dbg !74
@"reflect/types.type:basic:uint8" = internal constant { i8, ptr } { i8 -56, ptr @"reflect/types.type:pointer:basic:uint8" }, align 8, !dbg !76
@"reflect/types.type:pointer:basic:uint8" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:basic:uint8" }, align 8, !dbg !85
@"reflect/types.type.pkgpath:internal/reflectlite" = internal unnamed_addr constant [21 x i8] c"internal/reflectlite\00", align 1
@"reflect/types.type:struct:{meta:basic:uint8}" = internal constant { i8, i16, ptr, ptr, i32, i16, [1 x { ptr, ptr }] } { i8 -38, i16 0, ptr @"reflect/types.type:pointer:struct:{meta:basic:uint8}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", i32 1, i16 1, [1 x { ptr, ptr }] [{ ptr, ptr } { ptr @"reflect/types.type:basic:uint8", ptr @"reflect/types.type:struct:{meta:basic:uint8}.meta" }] }, align 8, !dbg !92
@"reflect/types.type:pointer:struct:{meta:basic:uint8}" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:struct:{meta:basic:uint8}" }, align 8, !dbg !107
@"reflect/types.type:struct:{meta:basic:uint8}.meta" = internal unnamed_addr constant [7 x i8] c"\00\00meta\00", align 1
@"internal/reflectlite$string.17" = internal unnamed_addr constant [14 x i8] c"invalid syntax", align 1, !dbg !109
@"reflect/types.type:struct:{}" = internal constant { i8, i16, ptr, ptr, i32, i16, [0 x { ptr, ptr }] } { i8 -38, i16 0, ptr @"reflect/types.type:pointer:struct:{}", ptr @"reflect/types.type.pkgpath.empty", i32 0, i16 0, [0 x { ptr, ptr }] zeroinitializer }, align 8, !dbg !115
@"reflect/types.type.pkgpath.empty" = internal unnamed_addr constant [1 x i8] zeroinitializer, align 1
@"reflect/types.type:pointer:struct:{}" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:struct:{}" }, align 8, !dbg !123
@"internal/reflectlite$string.20" = internal unnamed_addr constant [2 x i8] c"\\x", align 1, !dbg !125
@"internal/reflectlite$string.21" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !130
@"internal/reflectlite$string.22" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !135
@"internal/reflectlite$string.23" = internal unnamed_addr constant [2 x i8] c"\\a", align 1, !dbg !137
@"internal/reflectlite$string.24" = internal unnamed_addr constant [2 x i8] c"\\b", align 1, !dbg !139
@"internal/reflectlite$string.25" = internal unnamed_addr constant [2 x i8] c"\\f", align 1, !dbg !141
@"internal/reflectlite$string.26" = internal unnamed_addr constant [2 x i8] c"\\n", align 1, !dbg !143
@"internal/reflectlite$string.27" = internal unnamed_addr constant [2 x i8] c"\\r", align 1, !dbg !145
@"internal/reflectlite$string.28" = internal unnamed_addr constant [2 x i8] c"\\t", align 1, !dbg !147
@"internal/reflectlite$string.29" = internal unnamed_addr constant [2 x i8] c"\\v", align 1, !dbg !149
@"internal/reflectlite$string.30" = internal unnamed_addr constant [2 x i8] c"\\x", align 1, !dbg !151
@"internal/reflectlite$string.31" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !153
@"internal/reflectlite$string.32" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !155
@"internal/reflectlite$string.33" = internal unnamed_addr constant [2 x i8] c"\\u", align 1, !dbg !157
@"internal/reflectlite$string.34" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !159
@"internal/reflectlite$string.35" = internal unnamed_addr constant [2 x i8] c"\\U", align 1, !dbg !161
@"internal/reflectlite$string.36" = internal unnamed_addr constant [15 x i8] c"0123456789abcef", align 1, !dbg !163
@"reflect/types.type:named:internal/reflectlite.ValueError" = internal constant { i8, i16, ptr, ptr, ptr, [23 x i8] } { i8 122, i16 0, ptr @"reflect/types.type:pointer:named:internal/reflectlite.ValueError", ptr @"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", [23 x i8] c"reflectlite.ValueError\00" }, align 8, !dbg !165
@"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}" = internal constant { i8, i16, ptr, ptr, i32, i16, [2 x { ptr, ptr }] } { i8 90, i16 0, ptr @"reflect/types.type:pointer:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", i32 24, i16 2, [2 x { ptr, ptr }] [{ ptr, ptr } { ptr @"reflect/types.type:basic:string", ptr @"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}.Method" }, { ptr, ptr } { ptr @"reflect/types.type:named:internal/reflectlite.Kind", ptr @"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}.Kind" }] }, align 8, !dbg !175
@"reflect/types.type:pointer:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}" }, align 8, !dbg !181
@"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}.Method" = internal unnamed_addr constant [9 x i8] c"\04\00Method\00", align 1
@"reflect/types.type:struct:{Method:basic:string,Kind:named:internal/reflectlite.Kind}.Kind" = internal unnamed_addr constant [7 x i8] c"\04\10Kind\00", align 1
@"internal/reflectlite$string.41" = internal unnamed_addr constant [7 x i8] c"invalid", align 1, !dbg !183
@"internal/reflectlite$string.42" = internal unnamed_addr constant [4 x i8] c"bool", align 1, !dbg !185
@"internal/reflectlite$string.43" = internal unnamed_addr constant [3 x i8] c"int", align 1, !dbg !187
@"internal/reflectlite$string.44" = internal unnamed_addr constant [4 x i8] c"int8", align 1, !dbg !189
@"internal/reflectlite$string.45" = internal unnamed_addr constant [5 x i8] c"int16", align 1, !dbg !191
@"internal/reflectlite$string.46" = internal unnamed_addr constant [5 x i8] c"int32", align 1, !dbg !193
@"internal/reflectlite$string.47" = internal unnamed_addr constant [5 x i8] c"int64", align 1, !dbg !195
@"internal/reflectlite$string.48" = internal unnamed_addr constant [4 x i8] c"uint", align 1, !dbg !197
@"internal/reflectlite$string.49" = internal unnamed_addr constant [5 x i8] c"uint8", align 1, !dbg !199
@"internal/reflectlite$string.50" = internal unnamed_addr constant [6 x i8] c"uint16", align 1, !dbg !201
@"internal/reflectlite$string.51" = internal unnamed_addr constant [6 x i8] c"uint32", align 1, !dbg !206
@"internal/reflectlite$string.52" = internal unnamed_addr constant [6 x i8] c"uint64", align 1, !dbg !208
@"internal/reflectlite$string.53" = internal unnamed_addr constant [7 x i8] c"uintptr", align 1, !dbg !210
@"internal/reflectlite$string.54" = internal unnamed_addr constant [7 x i8] c"float32", align 1, !dbg !212
@"internal/reflectlite$string.55" = internal unnamed_addr constant [7 x i8] c"float64", align 1, !dbg !214
@"internal/reflectlite$string.56" = internal unnamed_addr constant [9 x i8] c"complex64", align 1, !dbg !216
@"internal/reflectlite$string.57" = internal unnamed_addr constant [10 x i8] c"complex128", align 1, !dbg !221
@"internal/reflectlite$string.58" = internal unnamed_addr constant [6 x i8] c"string", align 1, !dbg !226
@"internal/reflectlite$string.59" = internal unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1, !dbg !228
@"internal/reflectlite$string.60" = internal unnamed_addr constant [4 x i8] c"chan", align 1, !dbg !230
@"internal/reflectlite$string.61" = internal unnamed_addr constant [9 x i8] c"interface", align 1, !dbg !232
@"internal/reflectlite$string.62" = internal unnamed_addr constant [3 x i8] c"ptr", align 1, !dbg !234
@"internal/reflectlite$string.63" = internal unnamed_addr constant [5 x i8] c"slice", align 1, !dbg !236
@"internal/reflectlite$string.64" = internal unnamed_addr constant [5 x i8] c"array", align 1, !dbg !238
@"internal/reflectlite$string.65" = internal unnamed_addr constant [4 x i8] c"func", align 1, !dbg !240
@"internal/reflectlite$string.66" = internal unnamed_addr constant [3 x i8] c"map", align 1, !dbg !242
@"internal/reflectlite$string.67" = internal unnamed_addr constant [6 x i8] c"struct", align 1, !dbg !244
@"internal/reflectlite$string.68" = internal unnamed_addr constant [4 x i8] c"kind", align 1, !dbg !246
@"reflect/types.type:named:internal/reflectlite.TypeError" = internal constant { i8, i16, ptr, ptr, ptr, [22 x i8] } { i8 122, i16 0, ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr @"reflect/types.type:struct:{Method:basic:string}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", [22 x i8] c"reflectlite.TypeError\00" }, align 8, !dbg !248
@"reflect/types.type:struct:{Method:basic:string}" = internal constant { i8, i16, ptr, ptr, i32, i16, [1 x { ptr, ptr }] } { i8 90, i16 0, ptr @"reflect/types.type:pointer:struct:{Method:basic:string}", ptr @"reflect/types.type.pkgpath:internal/reflectlite", i32 16, i16 1, [1 x { ptr, ptr }] [{ ptr, ptr } { ptr @"reflect/types.type:basic:string", ptr @"reflect/types.type:struct:{Method:basic:string}.Method" }] }, align 8, !dbg !256
@"reflect/types.type:pointer:struct:{Method:basic:string}" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:struct:{Method:basic:string}" }, align 8, !dbg !258
@"reflect/types.type:struct:{Method:basic:string}.Method" = internal unnamed_addr constant [9 x i8] c"\04\00Method\00", align 1
@"internal/reflectlite$string.87" = internal unnamed_addr constant [7 x i8] c"chan<- ", align 1, !dbg !260
@"internal/reflectlite$string.88" = internal unnamed_addr constant [7 x i8] c"<-chan ", align 1, !dbg !262
@"internal/reflectlite$string.89" = internal unnamed_addr constant [6 x i8] c"chan (", align 1, !dbg !264
@"internal/reflectlite$string.90" = internal unnamed_addr constant [1 x i8] c")", align 1, !dbg !266
@"internal/reflectlite$string.91" = internal unnamed_addr constant [5 x i8] c"chan ", align 1, !dbg !268
@"internal/reflectlite$string.92" = internal unnamed_addr constant [1 x i8] c"*", align 1, !dbg !270
@"internal/reflectlite$string.93" = internal unnamed_addr constant [2 x i8] c"[]", align 1, !dbg !272
@"internal/reflectlite$string.94" = internal unnamed_addr constant [1 x i8] c"[", align 1, !dbg !274
@"internal/reflectlite$string.95" = internal unnamed_addr constant [1 x i8] c"]", align 1, !dbg !276
@"internal/reflectlite$string.96" = internal unnamed_addr constant [4 x i8] c"map[", align 1, !dbg !278
@"internal/reflectlite$string.97" = internal unnamed_addr constant [1 x i8] c"]", align 1, !dbg !280
@"internal/reflectlite$string.98" = internal unnamed_addr constant [9 x i8] c"struct {}", align 1, !dbg !282
@"internal/reflectlite$string.100" = internal unnamed_addr constant [1 x i8] c" ", align 1, !dbg !284
@"internal/reflectlite$string.101" = internal unnamed_addr constant [1 x i8] c" ", align 1, !dbg !286
@"internal/reflectlite$string.102" = internal unnamed_addr constant [1 x i8] c" ", align 1, !dbg !288
@"internal/reflectlite$string.103" = internal unnamed_addr constant [1 x i8] c";", align 1, !dbg !290
@"internal/reflectlite$string.104" = internal unnamed_addr constant [2 x i8] c" }", align 1, !dbg !292
@"internal/reflectlite$string.105" = internal unnamed_addr constant [12 x i8] c"interface {}", align 1, !dbg !294
@"internal/reflectlite$string.106" = internal unnamed_addr constant [8 x i8] c"struct {", align 1, !dbg !299
@"internal/reflectlite$string.107" = internal unnamed_addr constant [33 x i8] c"reflect: field index out of range", align 1, !dbg !301
@"internal/reflectlite$pack.108" = internal unnamed_addr constant { %runtime._string } { %runtime._string { ptr @"internal/reflectlite$string.107", i64 33 } }
@"internal/reflectlite$string.111" = internal unnamed_addr constant [30 x i8] c"reflect: call of reflect.Type.", align 1, !dbg !306
@"internal/reflectlite$string.112" = internal unnamed_addr constant [16 x i8] c" on invalid type", align 1, !dbg !311
@"internal/reflectlite$string.229" = internal unnamed_addr constant [17 x i8] c"reflect: call of ", align 1, !dbg !314
@"internal/reflectlite$string.230" = internal unnamed_addr constant [14 x i8] c" on zero Value", align 1, !dbg !320
@"internal/reflectlite$string.231" = internal unnamed_addr constant [17 x i8] c"reflect: call of ", align 1, !dbg !322
@"internal/reflectlite$string.232" = internal unnamed_addr constant [4 x i8] c" on ", align 1, !dbg !324
@"internal/reflectlite$string.233" = internal unnamed_addr constant [6 x i8] c" Value", align 1, !dbg !326
@"internal/task.activeTasks" = internal global ptr @"internal/task.mainTask", align 8, !dbg !328
@"internal/task.mainTask" = internal global %"internal/task.Task" zeroinitializer, align 8, !dbg !374
@"internal/task$string" = internal unnamed_addr constant [30 x i8] c"sync: unlock of unlocked Mutex", align 1, !dbg !376
@"internal/task$pack" = internal unnamed_addr constant { %runtime._string } { %runtime._string { ptr @"internal/task$string", i64 30 } }
@"internal/task.numCPU" = internal global i32 0, align 4, !dbg !379
@"internal/task.activeTaskLock" = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !382
@"internal/task$string.7" = internal unnamed_addr constant [20 x i8] c"unknown current task", align 1, !dbg !386
@"internal/task$string.8" = internal unnamed_addr constant [12 x i8] c"*** pause:  ", align 1, !dbg !391
@"internal/task.otherGoroutines" = internal global i32 0, align 4, !dbg !393
@"internal/task$string.12" = internal unnamed_addr constant [9 x i8] c"*** exit:", align 1, !dbg !395
@"internal/task$string.13" = internal unnamed_addr constant [17 x i8] c"taskExited failed", align 1, !dbg !397
@"internal/task.scanWaitGroup" = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !399
@"internal/task.gcState" = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !405
@runtime.xorshift32State = internal global i32 1, align 4, !dbg !407
@runtime.xorshift64State = internal global i64 1, align 8, !dbg !410
@runtime.heapSize = internal global i64 131072, align 8, !dbg !412
@"reflect/types.type:basic:string" = internal constant { i8, ptr } { i8 81, ptr @"reflect/types.type:pointer:basic:string" }, align 8, !dbg !415
@"reflect/types.type:pointer:basic:string" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:basic:string" }, align 8, !dbg !417
@runtime.zeroSizedAlloc = internal global i8 0, align 1, !dbg !419
@runtime.gcLock = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !422
@"runtime$string.7" = internal unnamed_addr constant [17 x i8] c"gc: out of memory", align 1, !dbg !424
@__ehdr_start = external global %runtime.elfHeader, align 8
@"runtime$string.12" = internal unnamed_addr constant [7 x i8] c"panic: ", align 1, !dbg !426
@"runtime$string.13" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !429
@"runtime$string.14" = internal unnamed_addr constant [2 x i8] c": ", align 1, !dbg !434
@"runtime$string.15" = internal unnamed_addr constant [22 x i8] c"panic: runtime error: ", align 1, !dbg !436
@"runtime$string.17" = internal unnamed_addr constant [23 x i8] c"nil pointer dereference", align 1, !dbg !439
@"runtime$string.19" = internal unnamed_addr constant [18 x i8] c"index out of range", align 1, !dbg !442
@"runtime$string.20" = internal unnamed_addr constant [18 x i8] c"slice out of range", align 1, !dbg !447
@"runtime$string.22" = internal unnamed_addr constant [37 x i8] c"unsafe.Slice/String: len out of range", align 1, !dbg !449
@"runtime$string.24" = internal unnamed_addr constant [14 x i8] c"negative shift", align 1, !dbg !454
@"runtime$string.35" = internal unnamed_addr constant [3 x i8] c"NaN", align 1, !dbg !456
@"runtime$string.36" = internal unnamed_addr constant [4 x i8] c"+Inf", align 1, !dbg !459
@"runtime$string.37" = internal unnamed_addr constant [4 x i8] c"-Inf", align 1, !dbg !461
@"runtime$string.38" = internal unnamed_addr constant [3 x i8] c"NaN", align 1, !dbg !463
@"runtime$string.39" = internal unnamed_addr constant [4 x i8] c"+Inf", align 1, !dbg !465
@"runtime$string.40" = internal unnamed_addr constant [4 x i8] c"-Inf", align 1, !dbg !467
@"runtime$string.41" = internal unnamed_addr constant [2 x i8] c"i)", align 1, !dbg !469
@"runtime$string.42" = internal unnamed_addr constant [2 x i8] c"i)", align 1, !dbg !471
@"runtime$string.45" = internal unnamed_addr constant [3 x i8] c"nil", align 1, !dbg !473
@"runtime$string.46" = internal unnamed_addr constant [4 x i8] c"true", align 1, !dbg !475
@"runtime$string.47" = internal unnamed_addr constant [5 x i8] c"false", align 1, !dbg !477
@runtime.stackTop = internal global i64 0, align 8, !dbg !479
@runtime.main_argc = internal global i32 0, align 4, !dbg !481
@runtime.main_argv = internal global ptr null, align 8, !dbg !483
@"runtime$string.50" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !486
@"runtime$string.51" = internal unnamed_addr constant [16 x i8] c": caught signal ", align 1, !dbg !488
@"runtime$string.52" = internal unnamed_addr constant [6 x i8] c"SIGBUS", align 1, !dbg !490
@"runtime$string.53" = internal unnamed_addr constant [6 x i8] c"SIGILL", align 1, !dbg !492
@"runtime$string.54" = internal unnamed_addr constant [7 x i8] c"SIGSEGV", align 1, !dbg !494
@"runtime$string.55" = internal unnamed_addr constant [20 x i8] c"panic: runtime error", align 1, !dbg !496
@runtime.signalFutex = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !498
@runtime.heapMaxSize = internal global i64 0, align 8, !dbg !500
@runtime.heapStart = internal global i64 0, align 8, !dbg !502
@runtime.heapEnd = internal global i64 0, align 8, !dbg !504
@"runtime$string.56" = internal unnamed_addr constant [27 x i8] c"cannot allocate heap memory", align 1, !dbg !506
@runtime.receivedSignals = internal global %"sync/atomic.Bool" zeroinitializer, align 4, !dbg !511
@runtime.printLock = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !513
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
define internal i32 @"sync/atomic.SwapUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %new, ptr %context) unnamed_addr #1 !dbg !1771 {
entry:
    #dbg_value(ptr %addr, !1777, !DIExpression(), !1779)
    #dbg_value(i32 %new, !1778, !DIExpression(), !1779)
  %0 = atomicrmw xchg ptr %addr, i32 %new syncscope("singlethread") seq_cst, align 4, !dbg !1779
  ret i32 %0, !dbg !1779
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"sync/atomic.CompareAndSwapUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %old, i32 %new, ptr %context) unnamed_addr #1 !dbg !1780 {
entry:
    #dbg_value(ptr %addr, !1784, !DIExpression(), !1787)
    #dbg_value(i32 %old, !1785, !DIExpression(), !1787)
    #dbg_value(i32 %new, !1786, !DIExpression(), !1787)
  %0 = cmpxchg ptr %addr, i32 %old, i32 %new syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !1787
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !1787
  ret i1 %1, !dbg !1787
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.AddUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %delta, ptr %context) unnamed_addr #1 !dbg !1788 {
entry:
    #dbg_value(ptr %addr, !1790, !DIExpression(), !1792)
    #dbg_value(i32 %delta, !1791, !DIExpression(), !1792)
  %0 = atomicrmw add ptr %addr, i32 %delta syncscope("singlethread") seq_cst, align 4, !dbg !1792
  %1 = add i32 %0, %delta, !dbg !1792
  ret i32 %1, !dbg !1792
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.LoadUint32"(ptr nocapture dereferenceable_or_null(4) %addr, ptr %context) unnamed_addr #1 !dbg !1793 {
entry:
    #dbg_value(ptr %addr, !1797, !DIExpression(), !1798)
  %0 = load atomic i32, ptr %addr seq_cst, align 4, !dbg !1798
  ret i32 %0, !dbg !1798
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"sync/atomic.StoreUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %val, ptr %context) unnamed_addr #1 !dbg !1799 {
entry:
    #dbg_value(ptr %addr, !1801, !DIExpression(), !1803)
    #dbg_value(i32 %val, !1802, !DIExpression(), !1803)
  store atomic i32 %val, ptr %addr seq_cst, align 4, !dbg !1803
  ret void, !dbg !1803
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Add"(ptr dereferenceable_or_null(4) %x, i32 %delta, ptr %context) #1 !dbg !1804 {
entry:
    #dbg_value(ptr %x, !1810, !DIExpression(), !1812)
    #dbg_value(i32 %delta, !1811, !DIExpression(), !1812)
    #dbg_value(ptr %x, !1810, !DIExpression(), !1813)
  %0 = icmp eq ptr %x, null, !dbg !1814
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1814

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1814
    #dbg_value(i32 %delta, !1811, !DIExpression(), !1815)
  %2 = call i32 @"sync/atomic.AddUint32"(ptr %1, i32 %delta, ptr undef), !dbg !1816
  ret i32 %2, !dbg !1817

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1814
  unreachable, !dbg !1814
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr dereferenceable_or_null(4) %x, i32 %old, i32 %new, ptr %context) #1 !dbg !1818 {
entry:
    #dbg_value(ptr %x, !1822, !DIExpression(), !1825)
    #dbg_value(i32 %old, !1823, !DIExpression(), !1825)
    #dbg_value(i32 %new, !1824, !DIExpression(), !1825)
    #dbg_value(ptr %x, !1822, !DIExpression(), !1826)
  %0 = icmp eq ptr %x, null, !dbg !1827
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1827

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1827
    #dbg_value(i32 %old, !1823, !DIExpression(), !1828)
    #dbg_value(i32 %new, !1824, !DIExpression(), !1829)
  %2 = call i1 @"sync/atomic.CompareAndSwapUint32"(ptr %1, i32 %old, i32 %new, ptr undef), !dbg !1830
  ret i1 %2, !dbg !1831

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1827
  unreachable, !dbg !1827
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Load"(ptr dereferenceable_or_null(4) %x, ptr %context) #1 !dbg !1832 {
entry:
    #dbg_value(ptr %x, !1836, !DIExpression(), !1837)
    #dbg_value(ptr %x, !1836, !DIExpression(), !1838)
  %0 = icmp eq ptr %x, null, !dbg !1839
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1839

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1839
  %2 = call i32 @"sync/atomic.LoadUint32"(ptr %1, ptr undef), !dbg !1840
  ret i32 %2, !dbg !1841

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1839
  unreachable, !dbg !1839
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*sync/atomic.Uint32).Store"(ptr dereferenceable_or_null(4) %x, i32 %val, ptr %context) #1 !dbg !1842 {
entry:
    #dbg_value(ptr %x, !1844, !DIExpression(), !1846)
    #dbg_value(i32 %val, !1845, !DIExpression(), !1846)
    #dbg_value(ptr %x, !1844, !DIExpression(), !1847)
  %0 = icmp eq ptr %x, null, !dbg !1848
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1848

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1848
    #dbg_value(i32 %val, !1845, !DIExpression(), !1849)
  call void @"sync/atomic.StoreUint32"(ptr %1, i32 %val, ptr undef), !dbg !1850
  ret void, !dbg !1851

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1848
  unreachable, !dbg !1848
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Swap"(ptr dereferenceable_or_null(4) %x, i32 %new, ptr %context) #1 !dbg !1852 {
entry:
    #dbg_value(ptr %x, !1854, !DIExpression(), !1856)
    #dbg_value(i32 %new, !1855, !DIExpression(), !1856)
    #dbg_value(ptr %x, !1854, !DIExpression(), !1857)
  %0 = icmp eq ptr %x, null, !dbg !1858
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1858

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1858
    #dbg_value(i32 %new, !1855, !DIExpression(), !1859)
  %2 = call i32 @"sync/atomic.SwapUint32"(ptr %1, i32 %new, ptr undef), !dbg !1860
  ret i32 %2, !dbg !1861

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1858
  unreachable, !dbg !1858
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*internal/futex.Futex).Wait"(ptr dereferenceable_or_null(4) %f, i32 %cmp, ptr %context) #1 !dbg !1862 {
entry:
    #dbg_value(ptr %f, !1868, !DIExpression(), !1870)
    #dbg_value(i32 %cmp, !1869, !DIExpression(), !1870)
    #dbg_value(ptr %f, !1868, !DIExpression(), !1871)
  %0 = icmp eq ptr %f, null, !dbg !1872
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1872

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1872
    #dbg_value(i32 %cmp, !1869, !DIExpression(), !1873)
  call void @tinygo_futex_wait(ptr %1, i32 %cmp), !dbg !1874
  ret i1 false, !dbg !1875

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1872
  unreachable, !dbg !1872
}

declare void @tinygo_futex_wait(ptr nocapture dereferenceable_or_null(4), i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/futex.Futex).Wake"(ptr dereferenceable_or_null(4) %f, ptr %context) #1 !dbg !1876 {
entry:
    #dbg_value(ptr %f, !1880, !DIExpression(), !1881)
    #dbg_value(ptr %f, !1880, !DIExpression(), !1882)
  %0 = icmp eq ptr %f, null, !dbg !1883
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1883

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1883
  call void @tinygo_futex_wake(ptr %1), !dbg !1884
  ret void, !dbg !1885

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1883
  unreachable, !dbg !1883
}

declare void @tinygo_futex_wake(ptr nocapture dereferenceable_or_null(4)) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/futex.Futex).WakeAll"(ptr dereferenceable_or_null(4) %f, ptr %context) #1 !dbg !1886 {
entry:
    #dbg_value(ptr %f, !1888, !DIExpression(), !1889)
    #dbg_value(ptr %f, !1888, !DIExpression(), !1890)
  %0 = icmp eq ptr %f, null, !dbg !1891
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1891

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1891
  call void @tinygo_futex_wake_all(ptr %1), !dbg !1892
  ret void, !dbg !1893

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1891
  unreachable, !dbg !1891
}

declare void @tinygo_futex_wake_all(ptr nocapture dereferenceable_or_null(4)) #2

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(internal/gclayout.Layout).AsPtr"(i64 %l, ptr %context) #1 !dbg !1894 {
entry:
    #dbg_value(i64 %l, !1900, !DIExpression(), !1901)
    #dbg_value(i64 %l, !1900, !DIExpression(), !1902)
  %0 = inttoptr i64 %l to ptr, !dbg !1903
  ret ptr %0, !dbg !1904
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/itoa.Itoa"(i64 %val, ptr %context) #1 !dbg !1905 {
entry:
    #dbg_value(i64 %val, !1910, !DIExpression(), !1911)
    #dbg_value(i64 %val, !1910, !DIExpression(), !1912)
  %0 = icmp slt i64 %val, 0, !dbg !1913
  br i1 %0, label %if.then, label %if.done, !dbg !1914

if.then:                                          ; preds = %entry
    #dbg_value(i64 %val, !1910, !DIExpression(), !1915)
  %1 = sub i64 0, %val, !dbg !1916
  %2 = call %runtime._string @"internal/itoa.Uitoa"(i64 %1, ptr undef), !dbg !1917
  %3 = extractvalue %runtime._string %2, 0, !dbg !1918
  %4 = extractvalue %runtime._string %2, 1, !dbg !1918
  %5 = call %runtime._string @runtime.stringConcat(ptr @"internal/itoa$string", i64 1, ptr %3, i64 %4, ptr undef), !dbg !1918
  ret %runtime._string %5, !dbg !1919

if.done:                                          ; preds = %entry
    #dbg_value(i64 %val, !1910, !DIExpression(), !1920)
  %6 = call %runtime._string @"internal/itoa.Uitoa"(i64 %val, ptr undef), !dbg !1921
  ret %runtime._string %6, !dbg !1922
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/itoa.Uitoa"(i64 %val, ptr %context) unnamed_addr #1 !dbg !1923 {
entry:
    #dbg_value(i64 %val, !1925, !DIExpression(), !1928)
    #dbg_value(i64 %val, !1925, !DIExpression(), !1929)
  %0 = icmp eq i64 %val, 0, !dbg !1930
  br i1 %0, label %if.then, label %if.done, !dbg !1931

if.then:                                          ; preds = %entry
  ret %runtime._string { ptr @"internal/itoa$string.1", i64 1 }, !dbg !1932

if.done:                                          ; preds = %entry
  %buf = call align 1 ptr @runtime.alloc(i64 20, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !1933
    #dbg_value(i64 19, !1926, !DIExpression(), !1934)
  br label %for.loop, !dbg !1931

for.loop:                                         ; preds = %lookup.next, %if.done
  %1 = phi i64 [ %val, %if.done ], [ %4, %lookup.next ], !dbg !1935
  %2 = phi i64 [ 19, %if.done ], [ %11, %lookup.next ], !dbg !1934
    #dbg_value(i64 %1, !1925, !DIExpression(), !1936)
  %3 = icmp uge i64 %1, 10, !dbg !1937
  br i1 %3, label %for.body, label %for.done, !dbg !1931

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !1925, !DIExpression(), !1938)
  %4 = udiv i64 %1, 10, !dbg !1939
    #dbg_value(i64 %4, !1927, !DIExpression(), !1940)
    #dbg_value(i64 %2, !1926, !DIExpression(), !1941)
    #dbg_value(i64 %1, !1925, !DIExpression(), !1942)
  %5 = add i64 48, %1, !dbg !1943
    #dbg_value(i64 %4, !1927, !DIExpression(), !1944)
  %6 = mul i64 %4, 10, !dbg !1945
  %7 = sub i64 %5, %6, !dbg !1946
  %8 = trunc i64 %7 to i8, !dbg !1947
  %9 = icmp uge i64 %2, 20, !dbg !1948
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !1948

lookup.next:                                      ; preds = %for.body
  %10 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1948
  store i8 %8, ptr %10, align 1, !dbg !1948
  %11 = sub i64 %2, 1, !dbg !1949
    #dbg_value(i64 %11, !1926, !DIExpression(), !1949)
    #dbg_value(i64 %4, !1927, !DIExpression(), !1950)
    #dbg_value(i64 %4, !1925, !DIExpression(), !1951)
  br label %for.loop, !dbg !1931

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !1926, !DIExpression(), !1952)
    #dbg_value(i64 %1, !1925, !DIExpression(), !1953)
  %12 = add i64 48, %1, !dbg !1954
  %13 = trunc i64 %12 to i8, !dbg !1955
  %14 = icmp uge i64 %2, 20, !dbg !1956
  br i1 %14, label %lookup.throw1, label %lookup.next2, !dbg !1956

lookup.next2:                                     ; preds = %for.done
  %15 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1956
  store i8 %13, ptr %15, align 1, !dbg !1956
    #dbg_value(i64 %2, !1926, !DIExpression(), !1957)
  %slice.lowhigh = icmp ugt i64 %2, 20, !dbg !1958
  %slice.lowmax = or i1 %slice.lowhigh, false, !dbg !1958
  %slice.lowcap = or i1 %slice.lowmax, false, !dbg !1958
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !1958

slice.next:                                       ; preds = %lookup.next2
  %slice.len = sub i64 20, %2, !dbg !1958
  %slice.ptr = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1958
  %slice.cap = sub i64 20, %2, !dbg !1958
  %16 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !1958
  %17 = insertvalue { ptr, i64, i64 } %16, i64 %slice.len, 1, !dbg !1958
  %18 = insertvalue { ptr, i64, i64 } %17, i64 %slice.cap, 2, !dbg !1958
  %19 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !1959
  %20 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !1959
  %21 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !1959
  %22 = call %runtime._string @runtime.stringFromBytes(ptr %19, i64 %20, i64 %21, ptr undef), !dbg !1959
  ret %runtime._string %22, !dbg !1960

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !1948
  unreachable, !dbg !1948

lookup.throw1:                                    ; preds = %for.done
  call void @runtime.lookupPanic(ptr undef), !dbg !1956
  unreachable, !dbg !1956

slice.throw:                                      ; preds = %lookup.next2
  call void @runtime.slicePanic(ptr undef), !dbg !1958
  unreachable, !dbg !1958
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"unicode/utf8.DecodeRuneInString"(ptr readonly %s.data, i64 %s.len, ptr %context) #1 !dbg !1961 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !1969
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !1969
    #dbg_value(ptr %s.data, !1965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1969)
    #dbg_value(i64 %s.len, !1965, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1969)
    #dbg_value(%runtime._string %1, !1965, !DIExpression(), !1970)
  %2 = extractvalue %runtime._string %1, 0, !dbg !1971
  %3 = extractvalue %runtime._string %1, 1, !dbg !1971
  %4 = call i1 @runtime.stringEqual(ptr %2, i64 %3, ptr null, i64 0, ptr undef), !dbg !1971
  %5 = xor i1 %4, true, !dbg !1971
  br i1 %5, label %cond.true, label %if.else, !dbg !1972

cond.true:                                        ; preds = %entry
    #dbg_value(%runtime._string %1, !1965, !DIExpression(), !1973)
  %len = extractvalue %runtime._string %1, 1, !dbg !1974
  %6 = icmp uge i64 0, %len, !dbg !1974
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !1974

lookup.next:                                      ; preds = %cond.true
  %7 = extractvalue %runtime._string %1, 0, !dbg !1974
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !1974
  %9 = load i8, ptr %8, align 1, !dbg !1974
  %10 = icmp ult i8 %9, -128, !dbg !1975
  br i1 %10, label %if.then, label %if.else, !dbg !1972

if.then:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !1965, !DIExpression(), !1976)
  %len1 = extractvalue %runtime._string %1, 1, !dbg !1977
  %11 = icmp uge i64 0, %len1, !dbg !1977
  br i1 %11, label %lookup.throw2, label %lookup.next3, !dbg !1977

lookup.next3:                                     ; preds = %if.then
  %12 = extractvalue %runtime._string %1, 0, !dbg !1977
  %13 = getelementptr inbounds i8, ptr %12, i64 0, !dbg !1977
  %14 = load i8, ptr %13, align 1, !dbg !1977
  %15 = zext i8 %14 to i32, !dbg !1978
  %16 = insertvalue { i32, i64 } zeroinitializer, i32 %15, 0, !dbg !1979
  %17 = insertvalue { i32, i64 } %16, i64 1, 1, !dbg !1979
  ret { i32, i64 } %17, !dbg !1979

if.else:                                          ; preds = %lookup.next, %entry
    #dbg_value(%runtime._string %1, !1965, !DIExpression(), !1980)
  %18 = extractvalue %runtime._string %1, 0, !dbg !1981
  %19 = extractvalue %runtime._string %1, 1, !dbg !1981
  %20 = call { i32, i64 } @"unicode/utf8.decodeRuneInStringSlow"(ptr %18, i64 %19, ptr undef), !dbg !1981
  %21 = extractvalue { i32, i64 } %20, 0, !dbg !1981
    #dbg_value(i32 %21, !1966, !DIExpression(), !1982)
  %22 = extractvalue { i32, i64 } %20, 1, !dbg !1981
    #dbg_value(i64 %22, !1968, !DIExpression(), !1983)
  %23 = insertvalue { i32, i64 } zeroinitializer, i32 %21, 0, !dbg !1984
  %24 = insertvalue { i32, i64 } %23, i64 %22, 1, !dbg !1984
  ret { i32, i64 } %24, !dbg !1984

lookup.throw:                                     ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !1974
  unreachable, !dbg !1974

lookup.throw2:                                    ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !1977
  unreachable, !dbg !1977
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"unicode/utf8.decodeRuneInStringSlow"(ptr readonly %s.data, i64 %s.len, ptr %context) unnamed_addr #1 !dbg !1985 {
entry:
  %accept = alloca %"unicode/utf8.acceptRange", align 8, !dbg !1997
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !1997
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !1997
    #dbg_value(ptr %s.data, !1987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1997)
    #dbg_value(i64 %s.len, !1987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1997)
    #dbg_value(%runtime._string %1, !1987, !DIExpression(), !1998)
  %len = extractvalue %runtime._string %1, 1, !dbg !1999
    #dbg_value(i64 %len, !1988, !DIExpression(), !2000)
    #dbg_value(i64 %len, !1988, !DIExpression(), !2001)
  %2 = icmp slt i64 %len, 1, !dbg !2002
  br i1 %2, label %if.then, label %if.done, !dbg !2003

if.then:                                          ; preds = %entry
  ret { i32, i64 } { i32 65533, i64 0 }, !dbg !2004

if.done:                                          ; preds = %entry
    #dbg_value(%runtime._string %1, !1987, !DIExpression(), !2005)
  %len17 = extractvalue %runtime._string %1, 1, !dbg !2006
  %3 = icmp uge i64 0, %len17, !dbg !2006
  br i1 %3, label %lookup.throw, label %lookup.next, !dbg !2006

lookup.next:                                      ; preds = %if.done
  %4 = extractvalue %runtime._string %1, 0, !dbg !2006
  %5 = getelementptr inbounds i8, ptr %4, i64 0, !dbg !2006
  %6 = load i8, ptr %5, align 1, !dbg !2006
    #dbg_value(i8 %6, !1989, !DIExpression(), !2007)
    #dbg_value(i8 %6, !1989, !DIExpression(), !2008)
  %7 = zext i8 %6 to i64, !dbg !2009
  %8 = icmp uge i64 %7, 256, !dbg !2009
  br i1 %8, label %lookup.throw18, label %lookup.next19, !dbg !2009

lookup.next19:                                    ; preds = %lookup.next
  %9 = getelementptr inbounds [256 x i8], ptr @"unicode/utf8.first", i32 0, i64 %7, !dbg !2009
  %10 = load i8, ptr %9, align 1, !dbg !2009
    #dbg_value(i8 %10, !1990, !DIExpression(), !2010)
    #dbg_value(i8 %10, !1990, !DIExpression(), !2011)
  %11 = icmp uge i8 %10, -16, !dbg !2012
  br i1 %11, label %if.then1, label %if.done2, !dbg !2003

if.then1:                                         ; preds = %lookup.next19
    #dbg_value(i8 %10, !1990, !DIExpression(), !2013)
  %12 = zext i8 %10 to i32, !dbg !2014
  %13 = shl i32 %12, 31, !dbg !2015
  %shift.result = select i1 false, i32 0, i32 %13, !dbg !2015
  %14 = ashr i32 %shift.result, 31, !dbg !2016
    #dbg_value(i32 %14, !1991, !DIExpression(), !2017)
    #dbg_value(%runtime._string %1, !1987, !DIExpression(), !2018)
  %len20 = extractvalue %runtime._string %1, 1, !dbg !2019
  %15 = icmp uge i64 0, %len20, !dbg !2019
  br i1 %15, label %lookup.throw21, label %lookup.next22, !dbg !2019

lookup.next22:                                    ; preds = %if.then1
  %16 = extractvalue %runtime._string %1, 0, !dbg !2019
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !2019
  %18 = load i8, ptr %17, align 1, !dbg !2019
  %19 = zext i8 %18 to i32, !dbg !2020
    #dbg_value(i32 %14, !1991, !DIExpression(), !2021)
  %20 = xor i32 %14, -1, !dbg !2022
  %21 = and i32 %19, %20, !dbg !2022
    #dbg_value(i32 %14, !1991, !DIExpression(), !2023)
  %22 = and i32 65533, %14, !dbg !2024
  %23 = or i32 %21, %22, !dbg !2025
  %24 = insertvalue { i32, i64 } zeroinitializer, i32 %23, 0, !dbg !2026
  %25 = insertvalue { i32, i64 } %24, i64 1, 1, !dbg !2026
  ret { i32, i64 } %25, !dbg !2026

if.done2:                                         ; preds = %lookup.next19
    #dbg_value(i8 %10, !1990, !DIExpression(), !2027)
  %26 = and i8 %10, 7, !dbg !2028
  %27 = zext i8 %26 to i64, !dbg !2029
    #dbg_value(i64 %27, !1992, !DIExpression(), !2030)
  store %"unicode/utf8.acceptRange" zeroinitializer, ptr %accept, align 1, !dbg !1997
    #dbg_value(i8 %10, !1990, !DIExpression(), !2031)
  %28 = lshr i8 %10, 4, !dbg !2032
  %shift.result23 = select i1 false, i8 0, i8 %28, !dbg !2032
  %29 = zext i8 %shift.result23 to i64, !dbg !2033
  %30 = icmp uge i64 %29, 16, !dbg !2033
  br i1 %30, label %lookup.throw24, label %lookup.next25, !dbg !2033

lookup.next25:                                    ; preds = %if.done2
  %31 = getelementptr inbounds [16 x %"unicode/utf8.acceptRange"], ptr @"unicode/utf8.acceptRanges", i32 0, i64 %29, !dbg !2033
  %32 = load %"unicode/utf8.acceptRange", ptr %31, align 1, !dbg !2033
  store %"unicode/utf8.acceptRange" %32, ptr %accept, align 1, !dbg !2034
    #dbg_value(%"unicode/utf8.acceptRange" %32, !1993, !DIExpression(), !2034)
    #dbg_value(i64 %len, !1988, !DIExpression(), !2035)
    #dbg_value(i64 %27, !1992, !DIExpression(), !2036)
  %33 = icmp slt i64 %len, %27, !dbg !2037
  br i1 %33, label %if.then3, label %if.done4, !dbg !2003

if.then3:                                         ; preds = %lookup.next25
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2038

if.done4:                                         ; preds = %lookup.next25
    #dbg_value(%runtime._string %1, !1987, !DIExpression(), !2039)
  %len26 = extractvalue %runtime._string %1, 1, !dbg !2040
  %34 = icmp uge i64 1, %len26, !dbg !2040
  br i1 %34, label %lookup.throw27, label %lookup.next28, !dbg !2040

lookup.next28:                                    ; preds = %if.done4
  %35 = extractvalue %runtime._string %1, 0, !dbg !2040
  %36 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !2040
  %37 = load i8, ptr %36, align 1, !dbg !2040
    #dbg_value(i8 %37, !1994, !DIExpression(), !2041)
    #dbg_value(i8 %37, !1994, !DIExpression(), !2042)
  %38 = getelementptr inbounds %"unicode/utf8.acceptRange", ptr %accept, i32 0, i32 0, !dbg !2043
  %39 = icmp eq ptr %38, null, !dbg !2043
  br i1 %39, label %deref.throw, label %deref.next, !dbg !2043

deref.next:                                       ; preds = %lookup.next28
  %40 = load i8, ptr %38, align 1, !dbg !2043
  %41 = icmp ult i8 %37, %40, !dbg !2044
  br i1 %41, label %if.then5, label %cond.false, !dbg !2003

if.then5:                                         ; preds = %deref.next30, %deref.next
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2045

cond.false:                                       ; preds = %deref.next
  %42 = getelementptr inbounds %"unicode/utf8.acceptRange", ptr %accept, i32 0, i32 1, !dbg !2046
  %43 = icmp eq ptr %42, null, !dbg !2046
  br i1 %43, label %deref.throw29, label %deref.next30, !dbg !2046

deref.next30:                                     ; preds = %cond.false
  %44 = load i8, ptr %42, align 1, !dbg !2046
    #dbg_value(i8 %37, !1994, !DIExpression(), !2047)
  %45 = icmp ult i8 %44, %37, !dbg !2048
  br i1 %45, label %if.then5, label %if.done6, !dbg !2003

if.done6:                                         ; preds = %deref.next30
    #dbg_value(i64 %27, !1992, !DIExpression(), !2049)
  %46 = icmp sle i64 %27, 2, !dbg !2050
  br i1 %46, label %if.then7, label %if.done8, !dbg !2003

if.then7:                                         ; preds = %if.done6
    #dbg_value(i8 %6, !1989, !DIExpression(), !2051)
  %47 = and i8 %6, 31, !dbg !2052
  %48 = zext i8 %47 to i32, !dbg !2053
  %49 = shl i32 %48, 6, !dbg !2054
  %shift.result31 = select i1 false, i32 0, i32 %49, !dbg !2054
    #dbg_value(i8 %37, !1994, !DIExpression(), !2055)
  %50 = and i8 %37, 63, !dbg !2056
  %51 = zext i8 %50 to i32, !dbg !2057
  %52 = or i32 %shift.result31, %51, !dbg !2058
  %53 = insertvalue { i32, i64 } zeroinitializer, i32 %52, 0, !dbg !2059
  %54 = insertvalue { i32, i64 } %53, i64 2, 1, !dbg !2059
  ret { i32, i64 } %54, !dbg !2059

if.done8:                                         ; preds = %if.done6
    #dbg_value(%runtime._string %1, !1987, !DIExpression(), !2060)
  %len32 = extractvalue %runtime._string %1, 1, !dbg !2061
  %55 = icmp uge i64 2, %len32, !dbg !2061
  br i1 %55, label %lookup.throw33, label %lookup.next34, !dbg !2061

lookup.next34:                                    ; preds = %if.done8
  %56 = extractvalue %runtime._string %1, 0, !dbg !2061
  %57 = getelementptr inbounds i8, ptr %56, i64 2, !dbg !2061
  %58 = load i8, ptr %57, align 1, !dbg !2061
    #dbg_value(i8 %58, !1995, !DIExpression(), !2062)
    #dbg_value(i8 %58, !1995, !DIExpression(), !2063)
  %59 = icmp ult i8 %58, -128, !dbg !2064
  br i1 %59, label %if.then9, label %cond.false10, !dbg !2003

if.then9:                                         ; preds = %cond.false10, %lookup.next34
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2065

cond.false10:                                     ; preds = %lookup.next34
    #dbg_value(i8 %58, !1995, !DIExpression(), !2066)
  %60 = icmp ult i8 -65, %58, !dbg !2067
  br i1 %60, label %if.then9, label %if.done11, !dbg !2003

if.done11:                                        ; preds = %cond.false10
    #dbg_value(i64 %27, !1992, !DIExpression(), !2068)
  %61 = icmp sle i64 %27, 3, !dbg !2069
  br i1 %61, label %if.then12, label %if.done13, !dbg !2003

if.then12:                                        ; preds = %if.done11
    #dbg_value(i8 %6, !1989, !DIExpression(), !2070)
  %62 = and i8 %6, 15, !dbg !2071
  %63 = zext i8 %62 to i32, !dbg !2072
  %64 = shl i32 %63, 12, !dbg !2073
  %shift.result35 = select i1 false, i32 0, i32 %64, !dbg !2073
    #dbg_value(i8 %37, !1994, !DIExpression(), !2074)
  %65 = and i8 %37, 63, !dbg !2075
  %66 = zext i8 %65 to i32, !dbg !2076
  %67 = shl i32 %66, 6, !dbg !2077
  %shift.result36 = select i1 false, i32 0, i32 %67, !dbg !2077
  %68 = or i32 %shift.result35, %shift.result36, !dbg !2078
    #dbg_value(i8 %58, !1995, !DIExpression(), !2079)
  %69 = and i8 %58, 63, !dbg !2080
  %70 = zext i8 %69 to i32, !dbg !2081
  %71 = or i32 %68, %70, !dbg !2082
  %72 = insertvalue { i32, i64 } zeroinitializer, i32 %71, 0, !dbg !2083
  %73 = insertvalue { i32, i64 } %72, i64 3, 1, !dbg !2083
  ret { i32, i64 } %73, !dbg !2083

if.done13:                                        ; preds = %if.done11
    #dbg_value(%runtime._string %1, !1987, !DIExpression(), !2084)
  %len37 = extractvalue %runtime._string %1, 1, !dbg !2085
  %74 = icmp uge i64 3, %len37, !dbg !2085
  br i1 %74, label %lookup.throw38, label %lookup.next39, !dbg !2085

lookup.next39:                                    ; preds = %if.done13
  %75 = extractvalue %runtime._string %1, 0, !dbg !2085
  %76 = getelementptr inbounds i8, ptr %75, i64 3, !dbg !2085
  %77 = load i8, ptr %76, align 1, !dbg !2085
    #dbg_value(i8 %77, !1996, !DIExpression(), !2086)
    #dbg_value(i8 %77, !1996, !DIExpression(), !2087)
  %78 = icmp ult i8 %77, -128, !dbg !2088
  br i1 %78, label %if.then14, label %cond.false15, !dbg !2003

if.then14:                                        ; preds = %cond.false15, %lookup.next39
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2089

cond.false15:                                     ; preds = %lookup.next39
    #dbg_value(i8 %77, !1996, !DIExpression(), !2090)
  %79 = icmp ult i8 -65, %77, !dbg !2091
  br i1 %79, label %if.then14, label %if.done16, !dbg !2003

if.done16:                                        ; preds = %cond.false15
    #dbg_value(i8 %6, !1989, !DIExpression(), !2092)
  %80 = and i8 %6, 7, !dbg !2093
  %81 = zext i8 %80 to i32, !dbg !2094
  %82 = shl i32 %81, 18, !dbg !2095
  %shift.result40 = select i1 false, i32 0, i32 %82, !dbg !2095
    #dbg_value(i8 %37, !1994, !DIExpression(), !2096)
  %83 = and i8 %37, 63, !dbg !2097
  %84 = zext i8 %83 to i32, !dbg !2098
  %85 = shl i32 %84, 12, !dbg !2099
  %shift.result41 = select i1 false, i32 0, i32 %85, !dbg !2099
  %86 = or i32 %shift.result40, %shift.result41, !dbg !2100
    #dbg_value(i8 %58, !1995, !DIExpression(), !2101)
  %87 = and i8 %58, 63, !dbg !2102
  %88 = zext i8 %87 to i32, !dbg !2103
  %89 = shl i32 %88, 6, !dbg !2104
  %shift.result42 = select i1 false, i32 0, i32 %89, !dbg !2104
  %90 = or i32 %86, %shift.result42, !dbg !2105
    #dbg_value(i8 %77, !1996, !DIExpression(), !2106)
  %91 = and i8 %77, 63, !dbg !2107
  %92 = zext i8 %91 to i32, !dbg !2108
  %93 = or i32 %90, %92, !dbg !2109
  %94 = insertvalue { i32, i64 } zeroinitializer, i32 %93, 0, !dbg !2110
  %95 = insertvalue { i32, i64 } %94, i64 4, 1, !dbg !2110
  ret { i32, i64 } %95, !dbg !2110

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !2006
  unreachable, !dbg !2006

lookup.throw18:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !2009
  unreachable, !dbg !2009

lookup.throw21:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !2019
  unreachable, !dbg !2019

lookup.throw24:                                   ; preds = %if.done2
  call void @runtime.lookupPanic(ptr undef), !dbg !2033
  unreachable, !dbg !2033

lookup.throw27:                                   ; preds = %if.done4
  call void @runtime.lookupPanic(ptr undef), !dbg !2040
  unreachable, !dbg !2040

deref.throw:                                      ; preds = %lookup.next28
  call void @runtime.nilPanic(ptr undef), !dbg !2043
  unreachable, !dbg !2043

deref.throw29:                                    ; preds = %cond.false
  call void @runtime.nilPanic(ptr undef), !dbg !2046
  unreachable, !dbg !2046

lookup.throw33:                                   ; preds = %if.done8
  call void @runtime.lookupPanic(ptr undef), !dbg !2061
  unreachable, !dbg !2061

lookup.throw38:                                   ; preds = %if.done13
  call void @runtime.lookupPanic(ptr undef), !dbg !2085
  unreachable, !dbg !2085
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"unicode/utf8.EncodeRune"(ptr %p.data, i64 %p.len, i64 %p.cap, i32 %r, ptr %context) #1 !dbg !2111 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !2121
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !2121
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !2121
    #dbg_value(ptr %p.data, !2119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2121)
    #dbg_value(i64 %p.len, !2119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2121)
    #dbg_value(i64 %p.cap, !2119, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2121)
    #dbg_value(i32 %r, !2120, !DIExpression(), !2121)
    #dbg_value(i32 %r, !2120, !DIExpression(), !2122)
  %3 = icmp ule i32 %r, 127, !dbg !2123
  br i1 %3, label %if.then, label %if.done, !dbg !2124

if.then:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2119, !DIExpression(), !2125)
    #dbg_value(i32 %r, !2120, !DIExpression(), !2126)
  %4 = trunc i32 %r to i8, !dbg !2127
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2128
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2128
  %5 = icmp uge i64 0, %indexaddr.len, !dbg !2128
  br i1 %5, label %lookup.throw, label %lookup.next, !dbg !2128

lookup.next:                                      ; preds = %if.then
  %6 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 0, !dbg !2128
  store i8 %4, ptr %6, align 1, !dbg !2128
  ret i64 1, !dbg !2129

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2119, !DIExpression(), !2130)
    #dbg_value(i32 %r, !2120, !DIExpression(), !2131)
  %7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2132
  %8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2132
  %9 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2132
  %10 = call i64 @"unicode/utf8.encodeRuneNonASCII"(ptr %7, i64 %8, i64 %9, i32 %r, ptr undef), !dbg !2132
  ret i64 %10, !dbg !2133

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2128
  unreachable, !dbg !2128
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"unicode/utf8.encodeRuneNonASCII"(ptr %p.data, i64 %p.len, i64 %p.cap, i32 %r, ptr %context) unnamed_addr #1 !dbg !2134 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !2139
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !2139
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !2139
    #dbg_value(ptr %p.data, !2136, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2139)
    #dbg_value(i64 %p.len, !2136, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2139)
    #dbg_value(i64 %p.cap, !2136, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2139)
    #dbg_value(i32 %r, !2137, !DIExpression(), !2139)
    #dbg_value(i32 %r, !2137, !DIExpression(), !2140)
    #dbg_value(i32 %r, !2138, !DIExpression(), !2141)
    #dbg_value(i32 %r, !2138, !DIExpression(), !2142)
  %3 = icmp ule i32 %r, 2047, !dbg !2143
  br i1 %3, label %switch.body, label %switch.next, !dbg !2144

switch.body:                                      ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2136, !DIExpression(), !2145)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2146
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2146
  %4 = icmp uge i64 1, %indexaddr.len, !dbg !2146
  br i1 %4, label %lookup.throw, label %lookup.next, !dbg !2146

lookup.next:                                      ; preds = %switch.body
  %5 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 1, !dbg !2146
  %6 = load i8, ptr %5, align 1, !dbg !2146
    #dbg_value({ ptr, i64, i64 } %2, !2136, !DIExpression(), !2147)
    #dbg_value(i32 %r, !2137, !DIExpression(), !2148)
  %7 = ashr i32 %r, 6, !dbg !2149
  %8 = trunc i32 %7 to i8, !dbg !2150
  %9 = or i8 -64, %8, !dbg !2151
  %indexaddr.ptr8 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2152
  %indexaddr.len9 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2152
  %10 = icmp uge i64 0, %indexaddr.len9, !dbg !2152
  br i1 %10, label %lookup.throw10, label %lookup.next11, !dbg !2152

lookup.next11:                                    ; preds = %lookup.next
  %11 = getelementptr inbounds i8, ptr %indexaddr.ptr8, i64 0, !dbg !2152
  store i8 %9, ptr %11, align 1, !dbg !2152
    #dbg_value({ ptr, i64, i64 } %2, !2136, !DIExpression(), !2153)
    #dbg_value(i32 %r, !2137, !DIExpression(), !2154)
  %12 = trunc i32 %r to i8, !dbg !2155
  %13 = and i8 %12, 63, !dbg !2156
  %14 = or i8 -128, %13, !dbg !2157
  %indexaddr.ptr12 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2158
  %indexaddr.len13 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2158
  %15 = icmp uge i64 1, %indexaddr.len13, !dbg !2158
  br i1 %15, label %lookup.throw14, label %lookup.next15, !dbg !2158

lookup.next15:                                    ; preds = %lookup.next11
  %16 = getelementptr inbounds i8, ptr %indexaddr.ptr12, i64 1, !dbg !2158
  store i8 %14, ptr %16, align 1, !dbg !2158
  ret i64 2, !dbg !2159

switch.next:                                      ; preds = %entry
    #dbg_value(i32 %r, !2138, !DIExpression(), !2160)
  %17 = icmp ult i32 %r, 55296, !dbg !2161
  br i1 %17, label %switch.body1, label %switch.next2, !dbg !2144

switch.body1:                                     ; preds = %binop.done, %switch.next
    #dbg_value({ ptr, i64, i64 } %2, !2136, !DIExpression(), !2162)
  %indexaddr.ptr16 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2163
  %indexaddr.len17 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2163
  %18 = icmp uge i64 2, %indexaddr.len17, !dbg !2163
  br i1 %18, label %lookup.throw18, label %lookup.next19, !dbg !2163

lookup.next19:                                    ; preds = %switch.body1
  %19 = getelementptr inbounds i8, ptr %indexaddr.ptr16, i64 2, !dbg !2163
  %20 = load i8, ptr %19, align 1, !dbg !2163
    #dbg_value({ ptr, i64, i64 } %2, !2136, !DIExpression(), !2164)
    #dbg_value(i32 %r, !2137, !DIExpression(), !2165)
  %21 = ashr i32 %r, 12, !dbg !2166
  %22 = trunc i32 %21 to i8, !dbg !2167
  %23 = or i8 -32, %22, !dbg !2168
  %indexaddr.ptr20 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2169
  %indexaddr.len21 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2169
  %24 = icmp uge i64 0, %indexaddr.len21, !dbg !2169
  br i1 %24, label %lookup.throw22, label %lookup.next23, !dbg !2169

lookup.next23:                                    ; preds = %lookup.next19
  %25 = getelementptr inbounds i8, ptr %indexaddr.ptr20, i64 0, !dbg !2169
  store i8 %23, ptr %25, align 1, !dbg !2169
    #dbg_value({ ptr, i64, i64 } %2, !2136, !DIExpression(), !2170)
    #dbg_value(i32 %r, !2137, !DIExpression(), !2171)
  %26 = ashr i32 %r, 6, !dbg !2172
  %27 = trunc i32 %26 to i8, !dbg !2173
  %28 = and i8 %27, 63, !dbg !2174
  %29 = or i8 -128, %28, !dbg !2175
  %indexaddr.ptr24 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2176
  %indexaddr.len25 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2176
  %30 = icmp uge i64 1, %indexaddr.len25, !dbg !2176
  br i1 %30, label %lookup.throw26, label %lookup.next27, !dbg !2176

lookup.next27:                                    ; preds = %lookup.next23
  %31 = getelementptr inbounds i8, ptr %indexaddr.ptr24, i64 1, !dbg !2176
  store i8 %29, ptr %31, align 1, !dbg !2176
    #dbg_value({ ptr, i64, i64 } %2, !2136, !DIExpression(), !2177)
    #dbg_value(i32 %r, !2137, !DIExpression(), !2178)
  %32 = trunc i32 %r to i8, !dbg !2179
  %33 = and i8 %32, 63, !dbg !2180
  %34 = or i8 -128, %33, !dbg !2181
  %indexaddr.ptr28 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2182
  %indexaddr.len29 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2182
  %35 = icmp uge i64 2, %indexaddr.len29, !dbg !2182
  br i1 %35, label %lookup.throw30, label %lookup.next31, !dbg !2182

lookup.next31:                                    ; preds = %lookup.next27
  %36 = getelementptr inbounds i8, ptr %indexaddr.ptr28, i64 2, !dbg !2182
  store i8 %34, ptr %36, align 1, !dbg !2182
  ret i64 3, !dbg !2183

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i32 %r, !2138, !DIExpression(), !2184)
  %37 = icmp ult i32 57343, %r, !dbg !2185
  br i1 %37, label %binop.rhs, label %binop.done, !dbg !2144

binop.rhs:                                        ; preds = %switch.next2
    #dbg_value(i32 %r, !2138, !DIExpression(), !2186)
  %38 = icmp ule i32 %r, 65535, !dbg !2187
  br label %binop.done, !dbg !2144

binop.done:                                       ; preds = %binop.rhs, %switch.next2
  %39 = phi i1 [ false, %switch.next2 ], [ %38, %binop.rhs ], !dbg !2188
  br i1 %39, label %switch.body1, label %switch.next3, !dbg !2144

switch.next3:                                     ; preds = %binop.done
    #dbg_value(i32 %r, !2138, !DIExpression(), !2189)
  %40 = icmp ugt i32 %r, 65535, !dbg !2190
  br i1 %40, label %binop.rhs4, label %binop.done5, !dbg !2144

binop.rhs4:                                       ; preds = %switch.next3
    #dbg_value(i32 %r, !2138, !DIExpression(), !2191)
  %41 = icmp ule i32 %r, 1114111, !dbg !2192
  br label %binop.done5, !dbg !2144

binop.done5:                                      ; preds = %binop.rhs4, %switch.next3
  %42 = phi i1 [ false, %switch.next3 ], [ %41, %binop.rhs4 ], !dbg !2193
  br i1 %42, label %switch.body6, label %switch.next7, !dbg !2144

switch.body6:                                     ; preds = %binop.done5
    #dbg_value({ ptr, i64, i64 } %2, !2136, !DIExpression(), !2194)
  %indexaddr.ptr32 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2195
  %indexaddr.len33 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2195
  %43 = icmp uge i64 3, %indexaddr.len33, !dbg !2195
  br i1 %43, label %lookup.throw34, label %lookup.next35, !dbg !2195

lookup.next35:                                    ; preds = %switch.body6
  %44 = getelementptr inbounds i8, ptr %indexaddr.ptr32, i64 3, !dbg !2195
  %45 = load i8, ptr %44, align 1, !dbg !2195
    #dbg_value({ ptr, i64, i64 } %2, !2136, !DIExpression(), !2196)
    #dbg_value(i32 %r, !2137, !DIExpression(), !2197)
  %46 = ashr i32 %r, 18, !dbg !2198
  %47 = trunc i32 %46 to i8, !dbg !2199
  %48 = or i8 -16, %47, !dbg !2200
  %indexaddr.ptr36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2201
  %indexaddr.len37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2201
  %49 = icmp uge i64 0, %indexaddr.len37, !dbg !2201
  br i1 %49, label %lookup.throw38, label %lookup.next39, !dbg !2201

lookup.next39:                                    ; preds = %lookup.next35
  %50 = getelementptr inbounds i8, ptr %indexaddr.ptr36, i64 0, !dbg !2201
  store i8 %48, ptr %50, align 1, !dbg !2201
    #dbg_value({ ptr, i64, i64 } %2, !2136, !DIExpression(), !2202)
    #dbg_value(i32 %r, !2137, !DIExpression(), !2203)
  %51 = ashr i32 %r, 12, !dbg !2204
  %52 = trunc i32 %51 to i8, !dbg !2205
  %53 = and i8 %52, 63, !dbg !2206
  %54 = or i8 -128, %53, !dbg !2207
  %indexaddr.ptr40 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2208
  %indexaddr.len41 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2208
  %55 = icmp uge i64 1, %indexaddr.len41, !dbg !2208
  br i1 %55, label %lookup.throw42, label %lookup.next43, !dbg !2208

lookup.next43:                                    ; preds = %lookup.next39
  %56 = getelementptr inbounds i8, ptr %indexaddr.ptr40, i64 1, !dbg !2208
  store i8 %54, ptr %56, align 1, !dbg !2208
    #dbg_value({ ptr, i64, i64 } %2, !2136, !DIExpression(), !2209)
    #dbg_value(i32 %r, !2137, !DIExpression(), !2210)
  %57 = ashr i32 %r, 6, !dbg !2211
  %58 = trunc i32 %57 to i8, !dbg !2212
  %59 = and i8 %58, 63, !dbg !2213
  %60 = or i8 -128, %59, !dbg !2214
  %indexaddr.ptr44 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2215
  %indexaddr.len45 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2215
  %61 = icmp uge i64 2, %indexaddr.len45, !dbg !2215
  br i1 %61, label %lookup.throw46, label %lookup.next47, !dbg !2215

lookup.next47:                                    ; preds = %lookup.next43
  %62 = getelementptr inbounds i8, ptr %indexaddr.ptr44, i64 2, !dbg !2215
  store i8 %60, ptr %62, align 1, !dbg !2215
    #dbg_value({ ptr, i64, i64 } %2, !2136, !DIExpression(), !2216)
    #dbg_value(i32 %r, !2137, !DIExpression(), !2217)
  %63 = trunc i32 %r to i8, !dbg !2218
  %64 = and i8 %63, 63, !dbg !2219
  %65 = or i8 -128, %64, !dbg !2220
  %indexaddr.ptr48 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2221
  %indexaddr.len49 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2221
  %66 = icmp uge i64 3, %indexaddr.len49, !dbg !2221
  br i1 %66, label %lookup.throw50, label %lookup.next51, !dbg !2221

lookup.next51:                                    ; preds = %lookup.next47
  %67 = getelementptr inbounds i8, ptr %indexaddr.ptr48, i64 3, !dbg !2221
  store i8 %65, ptr %67, align 1, !dbg !2221
  ret i64 4, !dbg !2222

switch.next7:                                     ; preds = %binop.done5
    #dbg_value({ ptr, i64, i64 } %2, !2136, !DIExpression(), !2223)
  %indexaddr.ptr52 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2224
  %indexaddr.len53 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2224
  %68 = icmp uge i64 2, %indexaddr.len53, !dbg !2224
  br i1 %68, label %lookup.throw54, label %lookup.next55, !dbg !2224

lookup.next55:                                    ; preds = %switch.next7
  %69 = getelementptr inbounds i8, ptr %indexaddr.ptr52, i64 2, !dbg !2224
  %70 = load i8, ptr %69, align 1, !dbg !2224
    #dbg_value({ ptr, i64, i64 } %2, !2136, !DIExpression(), !2225)
  %indexaddr.ptr56 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2226
  %indexaddr.len57 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2226
  %71 = icmp uge i64 0, %indexaddr.len57, !dbg !2226
  br i1 %71, label %lookup.throw58, label %lookup.next59, !dbg !2226

lookup.next59:                                    ; preds = %lookup.next55
  %72 = getelementptr inbounds i8, ptr %indexaddr.ptr56, i64 0, !dbg !2226
  store i8 -17, ptr %72, align 1, !dbg !2226
    #dbg_value({ ptr, i64, i64 } %2, !2136, !DIExpression(), !2227)
  %indexaddr.ptr60 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2228
  %indexaddr.len61 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2228
  %73 = icmp uge i64 1, %indexaddr.len61, !dbg !2228
  br i1 %73, label %lookup.throw62, label %lookup.next63, !dbg !2228

lookup.next63:                                    ; preds = %lookup.next59
  %74 = getelementptr inbounds i8, ptr %indexaddr.ptr60, i64 1, !dbg !2228
  store i8 -65, ptr %74, align 1, !dbg !2228
    #dbg_value({ ptr, i64, i64 } %2, !2136, !DIExpression(), !2229)
  %indexaddr.ptr64 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2230
  %indexaddr.len65 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2230
  %75 = icmp uge i64 2, %indexaddr.len65, !dbg !2230
  br i1 %75, label %lookup.throw66, label %lookup.next67, !dbg !2230

lookup.next67:                                    ; preds = %lookup.next63
  %76 = getelementptr inbounds i8, ptr %indexaddr.ptr64, i64 2, !dbg !2230
  store i8 -67, ptr %76, align 1, !dbg !2230
  ret i64 3, !dbg !2231

lookup.throw:                                     ; preds = %switch.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2146
  unreachable, !dbg !2146

lookup.throw10:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !2152
  unreachable, !dbg !2152

lookup.throw14:                                   ; preds = %lookup.next11
  call void @runtime.lookupPanic(ptr undef), !dbg !2158
  unreachable, !dbg !2158

lookup.throw18:                                   ; preds = %switch.body1
  call void @runtime.lookupPanic(ptr undef), !dbg !2163
  unreachable, !dbg !2163

lookup.throw22:                                   ; preds = %lookup.next19
  call void @runtime.lookupPanic(ptr undef), !dbg !2169
  unreachable, !dbg !2169

lookup.throw26:                                   ; preds = %lookup.next23
  call void @runtime.lookupPanic(ptr undef), !dbg !2176
  unreachable, !dbg !2176

lookup.throw30:                                   ; preds = %lookup.next27
  call void @runtime.lookupPanic(ptr undef), !dbg !2182
  unreachable, !dbg !2182

lookup.throw34:                                   ; preds = %switch.body6
  call void @runtime.lookupPanic(ptr undef), !dbg !2195
  unreachable, !dbg !2195

lookup.throw38:                                   ; preds = %lookup.next35
  call void @runtime.lookupPanic(ptr undef), !dbg !2201
  unreachable, !dbg !2201

lookup.throw42:                                   ; preds = %lookup.next39
  call void @runtime.lookupPanic(ptr undef), !dbg !2208
  unreachable, !dbg !2208

lookup.throw46:                                   ; preds = %lookup.next43
  call void @runtime.lookupPanic(ptr undef), !dbg !2215
  unreachable, !dbg !2215

lookup.throw50:                                   ; preds = %lookup.next47
  call void @runtime.lookupPanic(ptr undef), !dbg !2221
  unreachable, !dbg !2221

lookup.throw54:                                   ; preds = %switch.next7
  call void @runtime.lookupPanic(ptr undef), !dbg !2224
  unreachable, !dbg !2224

lookup.throw58:                                   ; preds = %lookup.next55
  call void @runtime.lookupPanic(ptr undef), !dbg !2226
  unreachable, !dbg !2226

lookup.throw62:                                   ; preds = %lookup.next59
  call void @runtime.lookupPanic(ptr undef), !dbg !2228
  unreachable, !dbg !2228

lookup.throw66:                                   ; preds = %lookup.next63
  call void @runtime.lookupPanic(ptr undef), !dbg !2230
  unreachable, !dbg !2230
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"unicode/utf8.ValidRune"(i32 %r, ptr %context) #1 !dbg !2232 {
entry:
    #dbg_value(i32 %r, !2236, !DIExpression(), !2237)
    #dbg_value(i32 %r, !2236, !DIExpression(), !2238)
  %0 = icmp sle i32 0, %r, !dbg !2239
  br i1 %0, label %binop.rhs, label %binop.done, !dbg !2240

binop.rhs:                                        ; preds = %entry
    #dbg_value(i32 %r, !2236, !DIExpression(), !2241)
  %1 = icmp slt i32 %r, 55296, !dbg !2242
  br label %binop.done, !dbg !2240

binop.done:                                       ; preds = %binop.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %1, %binop.rhs ], !dbg !2243
  br i1 %2, label %switch.body, label %switch.next, !dbg !2240

switch.body:                                      ; preds = %binop.done
  ret i1 true, !dbg !2244

switch.next:                                      ; preds = %binop.done
    #dbg_value(i32 %r, !2236, !DIExpression(), !2245)
  %3 = icmp slt i32 57343, %r, !dbg !2246
  br i1 %3, label %binop.rhs1, label %binop.done2, !dbg !2240

binop.rhs1:                                       ; preds = %switch.next
    #dbg_value(i32 %r, !2236, !DIExpression(), !2247)
  %4 = icmp sle i32 %r, 1114111, !dbg !2248
  br label %binop.done2, !dbg !2240

binop.done2:                                      ; preds = %binop.rhs1, %switch.next
  %5 = phi i1 [ false, %switch.next ], [ %4, %binop.rhs1 ], !dbg !2249
  br i1 %5, label %switch.body3, label %switch.next4, !dbg !2240

switch.body3:                                     ; preds = %binop.done2
  ret i1 true, !dbg !2250

switch.next4:                                     ; preds = %binop.done2
  ret i1 false, !dbg !2251
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable(sync)
define internal i8 @"(*internal/reflectlite.RawType).Kind"(ptr dereferenceable_or_null(1) %t, ptr %context) #1 !dbg !2252 {
entry:
    #dbg_value(ptr %t, !2256, !DIExpression(), !2258)
    #dbg_value(ptr %t, !2256, !DIExpression(), !2259)
  %0 = icmp eq ptr %t, null, !dbg !2260
  br i1 %0, label %if.then, label %if.done, !dbg !2261

if.then:                                          ; preds = %entry
  ret i8 0, !dbg !2262

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2256, !DIExpression(), !2263)
  %1 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2264
    #dbg_value(i64 %1, !2257, !DIExpression(), !2265)
    #dbg_value(i64 %1, !2257, !DIExpression(), !2266)
  %2 = icmp ne i64 %1, 0, !dbg !2267
  br i1 %2, label %if.then1, label %if.done2, !dbg !2261

if.then1:                                         ; preds = %if.done
  ret i8 21, !dbg !2268

if.done2:                                         ; preds = %if.done
    #dbg_value(ptr %t, !2256, !DIExpression(), !2269)
  %3 = icmp eq ptr %t, null, !dbg !2270
  br i1 %3, label %gep.throw, label %gep.next, !dbg !2270

gep.next:                                         ; preds = %if.done2
  %4 = getelementptr inbounds %"internal/reflectlite.RawType", ptr %t, i32 0, i32 0, !dbg !2270
  %5 = icmp eq ptr %4, null, !dbg !2270
  br i1 %5, label %deref.throw, label %deref.next, !dbg !2270

deref.next:                                       ; preds = %gep.next
  %6 = load i8, ptr %4, align 1, !dbg !2270
  %7 = and i8 %6, 31, !dbg !2271
  ret i8 %7, !dbg !2272

gep.throw:                                        ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2270
  unreachable, !dbg !2270

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2270
  unreachable, !dbg !2270
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).elem"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2273 {
entry:
    #dbg_value(ptr %t, !2275, !DIExpression(), !2279)
    #dbg_value(ptr %t, !2275, !DIExpression(), !2280)
  %0 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2281
    #dbg_value(i64 %0, !2276, !DIExpression(), !2282)
    #dbg_value(i64 %0, !2276, !DIExpression(), !2283)
  %1 = icmp ne i64 %0, 0, !dbg !2284
  br i1 %1, label %if.then, label %if.done, !dbg !2285

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2275, !DIExpression(), !2286)
  %2 = getelementptr i8, ptr %t, i64 -1, !dbg !2287
  ret ptr %2, !dbg !2288

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2275, !DIExpression(), !2289)
  %3 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2290
    #dbg_value(ptr %3, !2277, !DIExpression(), !2291)
    #dbg_value(ptr %3, !2277, !DIExpression(), !2292)
  %4 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %3, ptr undef), !dbg !2293
  %5 = icmp eq i8 %4, 21, !dbg !2294
  br i1 %5, label %switch.body, label %switch.next, !dbg !2285

switch.body:                                      ; preds = %if.done
    #dbg_value(ptr %3, !2277, !DIExpression(), !2295)
  %6 = getelementptr inbounds %"internal/reflectlite.ptrType", ptr %3, i32 0, i32 2, !dbg !2296
  %7 = icmp eq ptr %6, null, !dbg !2296
  br i1 %7, label %deref.throw, label %deref.next, !dbg !2296

deref.next:                                       ; preds = %switch.body
  %8 = load ptr, ptr %6, align 8, !dbg !2296
  ret ptr %8, !dbg !2297

switch.next:                                      ; preds = %if.done
  %9 = icmp eq i8 %4, 19, !dbg !2298
  br i1 %9, label %switch.body1, label %switch.next2, !dbg !2285

switch.body1:                                     ; preds = %switch.next4, %switch.next3, %switch.next2, %switch.next
    #dbg_value(ptr %3, !2277, !DIExpression(), !2299)
  %10 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %3, i32 0, i32 3, !dbg !2300
  %11 = icmp eq ptr %10, null, !dbg !2300
  br i1 %11, label %deref.throw6, label %deref.next7, !dbg !2300

deref.next7:                                      ; preds = %switch.body1
  %12 = load ptr, ptr %10, align 8, !dbg !2300
  ret ptr %12, !dbg !2301

switch.next2:                                     ; preds = %switch.next
  %13 = icmp eq i8 %4, 22, !dbg !2302
  br i1 %13, label %switch.body1, label %switch.next3, !dbg !2285

switch.next3:                                     ; preds = %switch.next2
  %14 = icmp eq i8 %4, 23, !dbg !2303
  br i1 %14, label %switch.body1, label %switch.next4, !dbg !2285

switch.next4:                                     ; preds = %switch.next3
  %15 = icmp eq i8 %4, 25, !dbg !2304
  br i1 %15, label %switch.body1, label %switch.next5, !dbg !2285

switch.next5:                                     ; preds = %switch.next4
  %16 = load ptr, ptr @"internal/reflectlite.errTypeElem", align 8, !dbg !2305
    #dbg_value(ptr %16, !2278, !DIExpression(), !2305)
  %17 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %16, 1, !dbg !2305
  %18 = extractvalue { ptr, ptr } %17, 0, !dbg !2306
  %19 = extractvalue { ptr, ptr } %17, 1, !dbg !2306
  call void @runtime._panic(ptr %18, ptr %19, ptr undef), !dbg !2306
  unreachable, !dbg !2306

deref.throw:                                      ; preds = %switch.body
  call void @runtime.nilPanic(ptr undef), !dbg !2296
  unreachable, !dbg !2296

deref.throw6:                                     ; preds = %switch.body1
  call void @runtime.nilPanic(ptr undef), !dbg !2300
  unreachable, !dbg !2300
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).Len"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2307 {
entry:
    #dbg_value(ptr %t, !2309, !DIExpression(), !2311)
    #dbg_value(ptr %t, !2309, !DIExpression(), !2312)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2313
  %1 = icmp ne i8 %0, 23, !dbg !2314
  br i1 %1, label %if.then, label %if.done, !dbg !2315

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeLen", align 8, !dbg !2316
    #dbg_value(ptr %2, !2310, !DIExpression(), !2316)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2316
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2317
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2317
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2317
  unreachable, !dbg !2317

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2309, !DIExpression(), !2318)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2319
  %7 = getelementptr inbounds %"internal/reflectlite.arrayType", ptr %6, i32 0, i32 4, !dbg !2320
  %8 = icmp eq ptr %7, null, !dbg !2320
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2320

deref.next:                                       ; preds = %if.done
  %9 = load i64, ptr %7, align 8, !dbg !2320
  ret i64 %9, !dbg !2321

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2320
  unreachable, !dbg !2320
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).underlying"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2322 {
entry:
    #dbg_value(ptr %t, !2324, !DIExpression(), !2325)
    #dbg_value(ptr %t, !2324, !DIExpression(), !2326)
  %0 = call i1 @"(*internal/reflectlite.RawType).isNamed"(ptr %t, ptr undef), !dbg !2327
  br i1 %0, label %if.then, label %if.done, !dbg !2328

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2324, !DIExpression(), !2329)
  %1 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %t, i32 0, i32 3, !dbg !2330
  %2 = icmp eq ptr %1, null, !dbg !2330
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2330

deref.next:                                       ; preds = %if.then
  %3 = load ptr, ptr %1, align 8, !dbg !2330
  ret ptr %3, !dbg !2331

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2324, !DIExpression(), !2332)
  ret ptr %t, !dbg !2333

deref.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2330
  unreachable, !dbg !2330
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*internal/reflectlite.RawType).isNamed"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2334 {
entry:
    #dbg_value(ptr %t, !2336, !DIExpression(), !2338)
    #dbg_value(ptr %t, !2336, !DIExpression(), !2339)
  %0 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2340
    #dbg_value(i64 %0, !2337, !DIExpression(), !2341)
    #dbg_value(i64 %0, !2337, !DIExpression(), !2342)
  %1 = icmp ne i64 %0, 0, !dbg !2343
  br i1 %1, label %if.then, label %if.done, !dbg !2344

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !2345

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2336, !DIExpression(), !2346)
  %2 = icmp eq ptr %t, null, !dbg !2347
  br i1 %2, label %gep.throw, label %gep.next, !dbg !2347

gep.next:                                         ; preds = %if.done
  %3 = getelementptr inbounds %"internal/reflectlite.RawType", ptr %t, i32 0, i32 0, !dbg !2347
  %4 = icmp eq ptr %3, null, !dbg !2347
  br i1 %4, label %deref.throw, label %deref.next, !dbg !2347

deref.next:                                       ; preds = %gep.next
  %5 = load i8, ptr %3, align 1, !dbg !2347
  %6 = and i8 %5, 32, !dbg !2348
  %7 = icmp ne i8 %6, 0, !dbg !2349
  ret i1 %7, !dbg !2350

gep.throw:                                        ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2347
  unreachable, !dbg !2347

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2347
  unreachable, !dbg !2347
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2351 {
entry:
    #dbg_value(ptr %t, !2353, !DIExpression(), !2354)
    #dbg_value(ptr %t, !2353, !DIExpression(), !2355)
  %0 = ptrtoint ptr %t to i64, !dbg !2356
  %1 = and i64 %0, 3, !dbg !2357
  ret i64 %1, !dbg !2358
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.TypeError).Error"(ptr dereferenceable_or_null(16) %e, ptr %context) unnamed_addr #1 !dbg !2359 {
entry:
    #dbg_value(ptr %e, !2363, !DIExpression(), !2364)
    #dbg_value(ptr %e, !2363, !DIExpression(), !2365)
  %0 = icmp eq ptr %e, null, !dbg !2366
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2366

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds { %runtime._string }, ptr %e, i32 0, i32 0, !dbg !2366
  %2 = icmp eq ptr %1, null, !dbg !2366
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2366

deref.next:                                       ; preds = %gep.next
  %3 = load %runtime._string, ptr %1, align 8, !dbg !2366
  %4 = extractvalue %runtime._string %3, 0, !dbg !2367
  %5 = extractvalue %runtime._string %3, 1, !dbg !2367
  %6 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.111", i64 30, ptr %4, i64 %5, ptr undef), !dbg !2367
  %7 = extractvalue %runtime._string %6, 0, !dbg !2368
  %8 = extractvalue %runtime._string %6, 1, !dbg !2368
  %9 = call %runtime._string @runtime.stringConcat(ptr %7, i64 %8, ptr @"internal/reflectlite$string.112", i64 16, ptr undef), !dbg !2368
  ret %runtime._string %9, !dbg !2369

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2366
  unreachable, !dbg !2366

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2366
  unreachable, !dbg !2366
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).ChanDir"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2370 {
entry:
    #dbg_value(ptr %t, !2372, !DIExpression(), !2375)
    #dbg_value(ptr %t, !2372, !DIExpression(), !2376)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2377
  %1 = icmp ne i8 %0, 19, !dbg !2378
  br i1 %1, label %if.then, label %if.done, !dbg !2379

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeChanDir", align 8, !dbg !2380
    #dbg_value(ptr %2, !2373, !DIExpression(), !2380)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2380
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2381
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2381
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2381
  unreachable, !dbg !2381

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2372, !DIExpression(), !2382)
  %6 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %t, i32 0, i32 1, !dbg !2383
  %7 = icmp eq ptr %6, null, !dbg !2383
  br i1 %7, label %deref.throw, label %deref.next, !dbg !2383

deref.next:                                       ; preds = %if.done
  %8 = load i16, ptr %6, align 2, !dbg !2383
  %9 = zext i16 %8 to i64, !dbg !2384
    #dbg_value(i64 %9, !2374, !DIExpression(), !2385)
    #dbg_value(i64 %9, !2374, !DIExpression(), !2386)
  ret i64 %9, !dbg !2387

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2383
  unreachable, !dbg !2383
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).NumField"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2388 {
entry:
    #dbg_value(ptr %t, !2390, !DIExpression(), !2392)
    #dbg_value(ptr %t, !2390, !DIExpression(), !2393)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2394
  %1 = icmp ne i8 %0, 26, !dbg !2395
  br i1 %1, label %if.then, label %if.done, !dbg !2396

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeNumField", align 8, !dbg !2397
    #dbg_value(ptr %2, !2391, !DIExpression(), !2397)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2397
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2398
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2398
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2398
  unreachable, !dbg !2398

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2390, !DIExpression(), !2399)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2400
  %7 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 5, !dbg !2401
  %8 = icmp eq ptr %7, null, !dbg !2401
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2401

deref.next:                                       ; preds = %if.done
  %9 = load i16, ptr %7, align 2, !dbg !2401
  %10 = zext i16 %9 to i64, !dbg !2402
  ret i64 %10, !dbg !2403

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2401
  unreachable, !dbg !2401
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.RawType).String"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2404 {
entry:
    #dbg_value(ptr %t, !2406, !DIExpression(), !2422)
    #dbg_value(ptr %t, !2406, !DIExpression(), !2423)
  %f = alloca %"internal/reflectlite.rawStructField", align 8, !dbg !2424
  %0 = call i1 @"(*internal/reflectlite.RawType).isNamed"(ptr %t, ptr undef), !dbg !2424
  br i1 %0, label %if.then, label %if.done2, !dbg !2425

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2406, !DIExpression(), !2426)
  %1 = call %runtime._string @"(*internal/reflectlite.RawType).name"(ptr %t, ptr undef), !dbg !2427
    #dbg_value(%runtime._string %1, !2407, !DIExpression(), !2428)
    #dbg_value(%runtime._string %1, !2407, !DIExpression(), !2429)
  %len = extractvalue %runtime._string %1, 1, !dbg !2430
  %2 = icmp uge i64 0, %len, !dbg !2430
  br i1 %2, label %lookup.throw, label %lookup.next, !dbg !2430

lookup.next:                                      ; preds = %if.then
  %3 = extractvalue %runtime._string %1, 0, !dbg !2430
  %4 = getelementptr inbounds i8, ptr %3, i64 0, !dbg !2430
  %5 = load i8, ptr %4, align 1, !dbg !2430
  %6 = icmp eq i8 %5, 46, !dbg !2431
  br i1 %6, label %if.then1, label %if.done, !dbg !2425

if.then1:                                         ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2407, !DIExpression(), !2432)
  %7 = extractvalue %runtime._string %1, 0, !dbg !2433
  %8 = extractvalue %runtime._string %1, 1, !dbg !2433
  %slice.lowhigh = icmp ugt i64 1, %8, !dbg !2433
  %slice.highmax = icmp ugt i64 %8, %8, !dbg !2433
  %slice.maxcap = icmp ugt i64 %8, %8, !dbg !2433
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2433
  %slice.lowcap = or i1 %slice.lowmax, %slice.maxcap, !dbg !2433
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2433

slice.next:                                       ; preds = %if.then1
  %9 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !2433
  %10 = sub i64 %8, 1, !dbg !2433
  %11 = insertvalue %runtime._string undef, ptr %9, 0, !dbg !2433
  %12 = insertvalue %runtime._string %11, i64 %10, 1, !dbg !2433
  ret %runtime._string %12, !dbg !2434

if.done:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2407, !DIExpression(), !2435)
  ret %runtime._string %1, !dbg !2436

if.done2:                                         ; preds = %entry
    #dbg_value(ptr %t, !2406, !DIExpression(), !2437)
  %13 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2438
  %14 = icmp eq i8 %13, 19, !dbg !2439
  br i1 %14, label %switch.body, label %switch.next10, !dbg !2425

switch.body:                                      ; preds = %if.done2
    #dbg_value(ptr %t, !2406, !DIExpression(), !2440)
  %15 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2441
  %16 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %15, ptr undef), !dbg !2442
    #dbg_value(%runtime._string %16, !2408, !DIExpression(), !2443)
    #dbg_value(ptr %t, !2406, !DIExpression(), !2444)
  %17 = call i64 @"(*internal/reflectlite.RawType).ChanDir"(ptr %t, ptr undef), !dbg !2445
  %18 = icmp eq i64 %17, 2, !dbg !2446
  br i1 %18, label %switch.body3, label %switch.next, !dbg !2425

switch.body3:                                     ; preds = %switch.body
    #dbg_value(%runtime._string %16, !2408, !DIExpression(), !2447)
  %19 = extractvalue %runtime._string %16, 0, !dbg !2448
  %20 = extractvalue %runtime._string %16, 1, !dbg !2448
  %21 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.87", i64 7, ptr %19, i64 %20, ptr undef), !dbg !2448
  ret %runtime._string %21, !dbg !2449

switch.next:                                      ; preds = %switch.body
  %22 = icmp eq i64 %17, 1, !dbg !2450
  br i1 %22, label %switch.body4, label %switch.next5, !dbg !2425

switch.body4:                                     ; preds = %switch.next
    #dbg_value(%runtime._string %16, !2408, !DIExpression(), !2451)
  %23 = extractvalue %runtime._string %16, 0, !dbg !2452
  %24 = extractvalue %runtime._string %16, 1, !dbg !2452
  %25 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.88", i64 7, ptr %23, i64 %24, ptr undef), !dbg !2452
  ret %runtime._string %25, !dbg !2453

switch.next5:                                     ; preds = %switch.next
  %26 = icmp eq i64 %17, 3, !dbg !2454
  br i1 %26, label %switch.body6, label %switch.next9, !dbg !2425

switch.body6:                                     ; preds = %switch.next5
    #dbg_value(%runtime._string %16, !2408, !DIExpression(), !2455)
  %len29 = extractvalue %runtime._string %16, 1, !dbg !2456
  %27 = icmp uge i64 0, %len29, !dbg !2456
  br i1 %27, label %lookup.throw30, label %lookup.next31, !dbg !2456

lookup.next31:                                    ; preds = %switch.body6
  %28 = extractvalue %runtime._string %16, 0, !dbg !2456
  %29 = getelementptr inbounds i8, ptr %28, i64 0, !dbg !2456
  %30 = load i8, ptr %29, align 1, !dbg !2456
  %31 = icmp eq i8 %30, 60, !dbg !2457
  br i1 %31, label %if.then7, label %if.done8, !dbg !2425

if.then7:                                         ; preds = %lookup.next31
    #dbg_value(%runtime._string %16, !2408, !DIExpression(), !2458)
  %32 = extractvalue %runtime._string %16, 0, !dbg !2459
  %33 = extractvalue %runtime._string %16, 1, !dbg !2459
  %34 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.89", i64 6, ptr %32, i64 %33, ptr undef), !dbg !2459
  %35 = extractvalue %runtime._string %34, 0, !dbg !2460
  %36 = extractvalue %runtime._string %34, 1, !dbg !2460
  %37 = call %runtime._string @runtime.stringConcat(ptr %35, i64 %36, ptr @"internal/reflectlite$string.90", i64 1, ptr undef), !dbg !2460
  ret %runtime._string %37, !dbg !2461

if.done8:                                         ; preds = %lookup.next31
    #dbg_value(%runtime._string %16, !2408, !DIExpression(), !2462)
  %38 = extractvalue %runtime._string %16, 0, !dbg !2463
  %39 = extractvalue %runtime._string %16, 1, !dbg !2463
  %40 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.91", i64 5, ptr %38, i64 %39, ptr undef), !dbg !2463
  ret %runtime._string %40, !dbg !2464

switch.next9:                                     ; preds = %switch.next5
    #dbg_value(ptr %t, !2406, !DIExpression(), !2465)
  %41 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2466
  %42 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %41, ptr undef), !dbg !2467
  ret %runtime._string %42, !dbg !2468

switch.next10:                                    ; preds = %if.done2
  %43 = icmp eq i8 %13, 21, !dbg !2469
  br i1 %43, label %switch.body11, label %switch.next12, !dbg !2425

switch.body11:                                    ; preds = %switch.next10
    #dbg_value(ptr %t, !2406, !DIExpression(), !2470)
  %44 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2471
  %45 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %44, ptr undef), !dbg !2472
  %46 = extractvalue %runtime._string %45, 0, !dbg !2473
  %47 = extractvalue %runtime._string %45, 1, !dbg !2473
  %48 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.92", i64 1, ptr %46, i64 %47, ptr undef), !dbg !2473
  ret %runtime._string %48, !dbg !2474

switch.next12:                                    ; preds = %switch.next10
  %49 = icmp eq i8 %13, 22, !dbg !2475
  br i1 %49, label %switch.body13, label %switch.next14, !dbg !2425

switch.body13:                                    ; preds = %switch.next12
    #dbg_value(ptr %t, !2406, !DIExpression(), !2476)
  %50 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2477
  %51 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %50, ptr undef), !dbg !2478
  %52 = extractvalue %runtime._string %51, 0, !dbg !2479
  %53 = extractvalue %runtime._string %51, 1, !dbg !2479
  %54 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.93", i64 2, ptr %52, i64 %53, ptr undef), !dbg !2479
  ret %runtime._string %54, !dbg !2480

switch.next14:                                    ; preds = %switch.next12
  %55 = icmp eq i8 %13, 23, !dbg !2481
  br i1 %55, label %switch.body15, label %switch.next16, !dbg !2425

switch.body15:                                    ; preds = %switch.next14
    #dbg_value(ptr %t, !2406, !DIExpression(), !2482)
  %56 = call i64 @"(*internal/reflectlite.RawType).Len"(ptr %t, ptr undef), !dbg !2483
  %57 = call %runtime._string @"internal/itoa.Itoa"(i64 %56, ptr undef), !dbg !2484
  %58 = extractvalue %runtime._string %57, 0, !dbg !2485
  %59 = extractvalue %runtime._string %57, 1, !dbg !2485
  %60 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.94", i64 1, ptr %58, i64 %59, ptr undef), !dbg !2485
  %61 = extractvalue %runtime._string %60, 0, !dbg !2486
  %62 = extractvalue %runtime._string %60, 1, !dbg !2486
  %63 = call %runtime._string @runtime.stringConcat(ptr %61, i64 %62, ptr @"internal/reflectlite$string.95", i64 1, ptr undef), !dbg !2486
    #dbg_value(ptr %t, !2406, !DIExpression(), !2487)
  %64 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2488
  %65 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %64, ptr undef), !dbg !2489
  %66 = extractvalue %runtime._string %63, 0, !dbg !2490
  %67 = extractvalue %runtime._string %63, 1, !dbg !2490
  %68 = extractvalue %runtime._string %65, 0, !dbg !2490
  %69 = extractvalue %runtime._string %65, 1, !dbg !2490
  %70 = call %runtime._string @runtime.stringConcat(ptr %66, i64 %67, ptr %68, i64 %69, ptr undef), !dbg !2490
  ret %runtime._string %70, !dbg !2491

switch.next16:                                    ; preds = %switch.next14
  %71 = icmp eq i8 %13, 25, !dbg !2492
  br i1 %71, label %switch.body17, label %switch.next18, !dbg !2425

switch.body17:                                    ; preds = %switch.next16
    #dbg_value(ptr %t, !2406, !DIExpression(), !2493)
  %72 = call ptr @"(*internal/reflectlite.RawType).key"(ptr %t, ptr undef), !dbg !2494
  %73 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %72, ptr undef), !dbg !2495
  %74 = extractvalue %runtime._string %73, 0, !dbg !2496
  %75 = extractvalue %runtime._string %73, 1, !dbg !2496
  %76 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.96", i64 4, ptr %74, i64 %75, ptr undef), !dbg !2496
  %77 = extractvalue %runtime._string %76, 0, !dbg !2497
  %78 = extractvalue %runtime._string %76, 1, !dbg !2497
  %79 = call %runtime._string @runtime.stringConcat(ptr %77, i64 %78, ptr @"internal/reflectlite$string.97", i64 1, ptr undef), !dbg !2497
    #dbg_value(ptr %t, !2406, !DIExpression(), !2498)
  %80 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2499
  %81 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %80, ptr undef), !dbg !2500
  %82 = extractvalue %runtime._string %79, 0, !dbg !2501
  %83 = extractvalue %runtime._string %79, 1, !dbg !2501
  %84 = extractvalue %runtime._string %81, 0, !dbg !2501
  %85 = extractvalue %runtime._string %81, 1, !dbg !2501
  %86 = call %runtime._string @runtime.stringConcat(ptr %82, i64 %83, ptr %84, i64 %85, ptr undef), !dbg !2501
  ret %runtime._string %86, !dbg !2502

switch.next18:                                    ; preds = %switch.next16
  %87 = icmp eq i8 %13, 26, !dbg !2503
  br i1 %87, label %switch.body19, label %switch.next26, !dbg !2425

switch.body19:                                    ; preds = %switch.next18
    #dbg_value(ptr %t, !2406, !DIExpression(), !2504)
  %88 = call i64 @"(*internal/reflectlite.RawType).NumField"(ptr %t, ptr undef), !dbg !2505
    #dbg_value(i64 %88, !2409, !DIExpression(), !2506)
    #dbg_value(i64 %88, !2409, !DIExpression(), !2507)
  %89 = icmp eq i64 %88, 0, !dbg !2508
  br i1 %89, label %if.then20, label %if.done21, !dbg !2425

if.then20:                                        ; preds = %switch.body19
  ret %runtime._string { ptr @"internal/reflectlite$string.98", i64 9 }, !dbg !2509

if.done21:                                        ; preds = %switch.body19
    #dbg_value(%runtime._string poison, !2410, !DIExpression(), !2510)
    #dbg_value(i64 0, !2411, !DIExpression(), !2511)
  br label %for.loop, !dbg !2425

for.loop:                                         ; preds = %if.done25, %if.done21
  %90 = phi %runtime._string [ { ptr @"internal/reflectlite$string.106", i64 8 }, %if.done21 ], [ %144, %if.done25 ], !dbg !2510
  %91 = phi i64 [ 0, %if.done21 ], [ %145, %if.done25 ], !dbg !2511
    #dbg_value(i64 %91, !2411, !DIExpression(), !2512)
    #dbg_value(i64 %88, !2409, !DIExpression(), !2513)
  %92 = icmp slt i64 %91, %88, !dbg !2514
  br i1 %92, label %for.body, label %for.done, !dbg !2425

for.body:                                         ; preds = %for.loop
  store %"internal/reflectlite.rawStructField" zeroinitializer, ptr %f, align 8, !dbg !2424
    #dbg_value(ptr %t, !2406, !DIExpression(), !2515)
    #dbg_value(i64 %91, !2411, !DIExpression(), !2516)
  %93 = call %"internal/reflectlite.rawStructField" @"(*internal/reflectlite.RawType).rawField"(ptr %t, i64 %91, ptr undef), !dbg !2517
  store %"internal/reflectlite.rawStructField" %93, ptr %f, align 8, !dbg !2518
    #dbg_value(%"internal/reflectlite.rawStructField" %93, !2412, !DIExpression(), !2518)
  %94 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 0, !dbg !2519
  %95 = icmp eq ptr %94, null, !dbg !2519
  br i1 %95, label %deref.throw, label %deref.next, !dbg !2519

deref.next:                                       ; preds = %for.body
  %96 = load %runtime._string, ptr %94, align 8, !dbg !2519
  %97 = extractvalue %runtime._string %96, 0, !dbg !2520
  %98 = extractvalue %runtime._string %96, 1, !dbg !2520
  %99 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.100", i64 1, ptr %97, i64 %98, ptr undef), !dbg !2520
  %100 = extractvalue %runtime._string %99, 0, !dbg !2521
  %101 = extractvalue %runtime._string %99, 1, !dbg !2521
  %102 = call %runtime._string @runtime.stringConcat(ptr %100, i64 %101, ptr @"internal/reflectlite$string.101", i64 1, ptr undef), !dbg !2521
  %103 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 2, !dbg !2522
  %104 = icmp eq ptr %103, null, !dbg !2522
  br i1 %104, label %deref.throw32, label %deref.next33, !dbg !2522

deref.next33:                                     ; preds = %deref.next
  %105 = load ptr, ptr %103, align 8, !dbg !2522
  %106 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %105, ptr undef), !dbg !2523
  %107 = extractvalue %runtime._string %102, 0, !dbg !2524
  %108 = extractvalue %runtime._string %102, 1, !dbg !2524
  %109 = extractvalue %runtime._string %106, 0, !dbg !2524
  %110 = extractvalue %runtime._string %106, 1, !dbg !2524
  %111 = call %runtime._string @runtime.stringConcat(ptr %107, i64 %108, ptr %109, i64 %110, ptr undef), !dbg !2524
  %112 = extractvalue %runtime._string %90, 0, !dbg !2525
  %113 = extractvalue %runtime._string %90, 1, !dbg !2525
  %114 = extractvalue %runtime._string %111, 0, !dbg !2525
  %115 = extractvalue %runtime._string %111, 1, !dbg !2525
  %116 = call %runtime._string @runtime.stringConcat(ptr %112, i64 %113, ptr %114, i64 %115, ptr undef), !dbg !2525
    #dbg_value(%runtime._string %116, !2410, !DIExpression(), !2525)
  %117 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 3, !dbg !2526
  %118 = icmp eq ptr %117, null, !dbg !2526
  br i1 %118, label %deref.throw34, label %deref.next35, !dbg !2526

deref.next35:                                     ; preds = %deref.next33
  %119 = load %runtime._string, ptr %117, align 8, !dbg !2526
  %120 = extractvalue %runtime._string %119, 0, !dbg !2527
  %121 = extractvalue %runtime._string %119, 1, !dbg !2527
  %122 = call i1 @runtime.stringEqual(ptr %120, i64 %121, ptr null, i64 0, ptr undef), !dbg !2527
  %123 = xor i1 %122, true, !dbg !2527
  br i1 %123, label %if.then22, label %if.done23, !dbg !2425

if.then22:                                        ; preds = %deref.next35
  %124 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 3, !dbg !2528
  %125 = icmp eq ptr %124, null, !dbg !2528
  br i1 %125, label %deref.throw36, label %deref.next37, !dbg !2528

deref.next37:                                     ; preds = %if.then22
  %126 = load %runtime._string, ptr %124, align 8, !dbg !2528
  %127 = extractvalue %runtime._string %126, 0, !dbg !2529
  %128 = extractvalue %runtime._string %126, 1, !dbg !2529
  %129 = call %runtime._string @"internal/reflectlite.quote"(ptr %127, i64 %128, ptr undef), !dbg !2529
  %130 = extractvalue %runtime._string %129, 0, !dbg !2530
  %131 = extractvalue %runtime._string %129, 1, !dbg !2530
  %132 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.102", i64 1, ptr %130, i64 %131, ptr undef), !dbg !2530
  %133 = extractvalue %runtime._string %116, 0, !dbg !2531
  %134 = extractvalue %runtime._string %116, 1, !dbg !2531
  %135 = extractvalue %runtime._string %132, 0, !dbg !2531
  %136 = extractvalue %runtime._string %132, 1, !dbg !2531
  %137 = call %runtime._string @runtime.stringConcat(ptr %133, i64 %134, ptr %135, i64 %136, ptr undef), !dbg !2531
    #dbg_value(%runtime._string %137, !2410, !DIExpression(), !2531)
  br label %if.done23, !dbg !2425

if.done23:                                        ; preds = %deref.next37, %deref.next35
  %138 = phi %runtime._string [ %116, %deref.next35 ], [ %137, %deref.next37 ], !dbg !2510
    #dbg_value(i64 %91, !2411, !DIExpression(), !2532)
    #dbg_value(i64 %88, !2409, !DIExpression(), !2533)
  %139 = sub i64 %88, 1, !dbg !2534
  %140 = icmp slt i64 %91, %139, !dbg !2535
  br i1 %140, label %if.then24, label %if.done25, !dbg !2425

if.then24:                                        ; preds = %if.done23
  %141 = extractvalue %runtime._string %138, 0, !dbg !2536
  %142 = extractvalue %runtime._string %138, 1, !dbg !2536
  %143 = call %runtime._string @runtime.stringConcat(ptr %141, i64 %142, ptr @"internal/reflectlite$string.103", i64 1, ptr undef), !dbg !2536
    #dbg_value(%runtime._string %143, !2410, !DIExpression(), !2536)
  br label %if.done25, !dbg !2425

if.done25:                                        ; preds = %if.then24, %if.done23
  %144 = phi %runtime._string [ %138, %if.done23 ], [ %143, %if.then24 ], !dbg !2510
  %145 = add i64 %91, 1, !dbg !2537
    #dbg_value(i64 %145, !2411, !DIExpression(), !2537)
  br label %for.loop, !dbg !2425

for.done:                                         ; preds = %for.loop
  %146 = extractvalue %runtime._string %90, 0, !dbg !2538
  %147 = extractvalue %runtime._string %90, 1, !dbg !2538
  %148 = call %runtime._string @runtime.stringConcat(ptr %146, i64 %147, ptr @"internal/reflectlite$string.104", i64 2, ptr undef), !dbg !2538
    #dbg_value(%runtime._string %148, !2410, !DIExpression(), !2538)
    #dbg_value(%runtime._string %148, !2410, !DIExpression(), !2539)
  ret %runtime._string %148, !dbg !2540

switch.next26:                                    ; preds = %switch.next18
  %149 = icmp eq i8 %13, 20, !dbg !2541
  br i1 %149, label %switch.body27, label %switch.next28, !dbg !2425

switch.body27:                                    ; preds = %switch.next26
  ret %runtime._string { ptr @"internal/reflectlite$string.105", i64 12 }, !dbg !2542

switch.next28:                                    ; preds = %switch.next26
    #dbg_value(ptr %t, !2406, !DIExpression(), !2543)
  %150 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2544
  %151 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %150, ptr undef), !dbg !2545
  ret %runtime._string %151, !dbg !2546

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2430
  unreachable, !dbg !2430

slice.throw:                                      ; preds = %if.then1
  call void @runtime.slicePanic(ptr undef), !dbg !2433
  unreachable, !dbg !2433

lookup.throw30:                                   ; preds = %switch.body6
  call void @runtime.lookupPanic(ptr undef), !dbg !2456
  unreachable, !dbg !2456

deref.throw:                                      ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !2519
  unreachable, !dbg !2519

deref.throw32:                                    ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !2522
  unreachable, !dbg !2522

deref.throw34:                                    ; preds = %deref.next33
  call void @runtime.nilPanic(ptr undef), !dbg !2526
  unreachable, !dbg !2526

deref.throw36:                                    ; preds = %if.then22
  call void @runtime.nilPanic(ptr undef), !dbg !2528
  unreachable, !dbg !2528
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).key"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2547 {
entry:
    #dbg_value(ptr %t, !2549, !DIExpression(), !2552)
    #dbg_value(ptr %t, !2549, !DIExpression(), !2553)
  %0 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2554
    #dbg_value(ptr %0, !2550, !DIExpression(), !2555)
    #dbg_value(ptr %0, !2550, !DIExpression(), !2556)
  %1 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %0, ptr undef), !dbg !2557
  %2 = icmp ne i8 %1, 25, !dbg !2558
  br i1 %2, label %if.then, label %if.done, !dbg !2559

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @"internal/reflectlite.errTypeKey", align 8, !dbg !2560
    #dbg_value(ptr %3, !2551, !DIExpression(), !2560)
  %4 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %3, 1, !dbg !2560
  %5 = extractvalue { ptr, ptr } %4, 0, !dbg !2561
  %6 = extractvalue { ptr, ptr } %4, 1, !dbg !2561
  call void @runtime._panic(ptr %5, ptr %6, ptr undef), !dbg !2561
  unreachable, !dbg !2561

if.done:                                          ; preds = %entry
    #dbg_value(ptr %0, !2550, !DIExpression(), !2562)
  %7 = getelementptr inbounds %"internal/reflectlite.namedType", ptr %0, i32 0, i32 4, !dbg !2563
  %8 = icmp eq ptr %7, null, !dbg !2563
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2563

deref.next:                                       ; preds = %if.done
  %9 = load ptr, ptr %7, align 8, !dbg !2563
  ret ptr %9, !dbg !2564

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2563
  unreachable, !dbg !2563
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.RawType).name"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2565 {
entry:
    #dbg_value(ptr %t, !2567, !DIExpression(), !2586)
    #dbg_value(ptr %t, !2567, !DIExpression(), !2587)
    #dbg_value(ptr %t, !2568, !DIExpression(), !2588)
    #dbg_value(ptr %t, !2568, !DIExpression(), !2589)
  %0 = getelementptr i8, ptr %t, i64 32, !dbg !2590
    #dbg_value(ptr %0, !2578, !DIExpression(), !2591)
    #dbg_value(ptr %t, !2568, !DIExpression(), !2592)
  %1 = getelementptr inbounds %"internal/reflectlite.namedType", ptr %t, i32 0, i32 1, !dbg !2593
  %2 = icmp eq ptr %1, null, !dbg !2593
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2593

deref.next:                                       ; preds = %entry
  %3 = load i16, ptr %1, align 2, !dbg !2593
  %4 = and i16 %3, -32768, !dbg !2594
  %5 = icmp ne i16 %4, 0, !dbg !2595
  br i1 %5, label %if.then, label %if.done, !dbg !2596

if.then:                                          ; preds = %deref.next
    #dbg_value(ptr %0, !2578, !DIExpression(), !2597)
    #dbg_value(ptr %0, !2579, !DIExpression(), !2598)
    #dbg_value(ptr %0, !2578, !DIExpression(), !2599)
    #dbg_value(ptr %0, !2579, !DIExpression(), !2600)
  %6 = getelementptr inbounds %"internal/reflectlite.methodSet", ptr %0, i32 0, i32 0, !dbg !2601
  %7 = icmp eq ptr %6, null, !dbg !2601
  br i1 %7, label %deref.throw1, label %deref.next2, !dbg !2601

deref.next2:                                      ; preds = %if.then
  %8 = load i64, ptr %6, align 8, !dbg !2601
  %9 = mul i64 %8, 8, !dbg !2602
  %10 = add i64 8, %9, !dbg !2603
  %11 = getelementptr i8, ptr %0, i64 %10, !dbg !2604
    #dbg_value(ptr %11, !2578, !DIExpression(), !2605)
  br label %if.done, !dbg !2596

if.done:                                          ; preds = %deref.next2, %deref.next
  %12 = phi ptr [ %0, %deref.next ], [ %11, %deref.next2 ], !dbg !2591
    #dbg_value(ptr %12, !2578, !DIExpression(), !2606)
  %13 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %12, ptr undef), !dbg !2607
  ret %runtime._string %13, !dbg !2608

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2593
  unreachable, !dbg !2593

deref.throw1:                                     ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2601
  unreachable, !dbg !2601
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/reflectlite.rawStructField" @"(*internal/reflectlite.RawType).rawField"(ptr dereferenceable_or_null(1) %t, i64 %n, ptr %context) unnamed_addr #1 !dbg !2609 {
entry:
    #dbg_value(ptr %t, !2613, !DIExpression(), !2637)
    #dbg_value(i64 %n, !2614, !DIExpression(), !2637)
    #dbg_value(ptr %t, !2613, !DIExpression(), !2638)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2639
  %1 = icmp ne i8 %0, 26, !dbg !2640
  br i1 %1, label %if.then, label %if.done, !dbg !2641

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeField", align 8, !dbg !2642
    #dbg_value(ptr %2, !2615, !DIExpression(), !2642)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2642
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2643
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2643
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2643
  unreachable, !dbg !2643

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2613, !DIExpression(), !2644)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2645
    #dbg_value(ptr %6, !2616, !DIExpression(), !2646)
    #dbg_value(i64 %n, !2614, !DIExpression(), !2647)
    #dbg_value(ptr %6, !2616, !DIExpression(), !2648)
  %7 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 5, !dbg !2649
  %8 = icmp eq ptr %7, null, !dbg !2649
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2649

deref.next:                                       ; preds = %if.done
  %9 = load i16, ptr %7, align 2, !dbg !2649
  %10 = zext i16 %9 to i64, !dbg !2650
  %11 = icmp uge i64 %n, %10, !dbg !2651
  br i1 %11, label %if.then1, label %if.done2, !dbg !2641

if.then1:                                         ; preds = %deref.next
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"internal/reflectlite$pack.108", ptr undef), !dbg !2652
  unreachable, !dbg !2652

if.done2:                                         ; preds = %deref.next
    #dbg_value(ptr %6, !2616, !DIExpression(), !2653)
  %12 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 6, !dbg !2654
  %13 = icmp eq ptr %12, null, !dbg !2655
  br i1 %13, label %gep.throw, label %gep.next, !dbg !2655

gep.next:                                         ; preds = %if.done2
  %14 = getelementptr inbounds [1 x { ptr, ptr }], ptr %12, i32 0, i64 0, !dbg !2655
    #dbg_value(i64 %n, !2614, !DIExpression(), !2656)
  %15 = mul i64 %n, 16, !dbg !2657
  %16 = getelementptr i8, ptr %14, i64 %15, !dbg !2658
    #dbg_value(ptr %16, !2630, !DIExpression(), !2659)
    #dbg_value(ptr %16, !2630, !DIExpression(), !2660)
  %17 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 1, !dbg !2661
  %18 = icmp eq ptr %17, null, !dbg !2661
  br i1 %18, label %deref.throw3, label %deref.next4, !dbg !2661

deref.next4:                                      ; preds = %gep.next
  %19 = load ptr, ptr %17, align 8, !dbg !2661
    #dbg_value(ptr %19, !2632, !DIExpression(), !2662)
    #dbg_value(ptr %19, !2632, !DIExpression(), !2663)
  %20 = load i8, ptr %19, align 1, !dbg !2664
    #dbg_value(i8 %20, !2633, !DIExpression(), !2665)
    #dbg_value(ptr %19, !2632, !DIExpression(), !2666)
  %21 = getelementptr i8, ptr %19, i64 1, !dbg !2667
    #dbg_value(ptr %21, !2632, !DIExpression(), !2668)
    #dbg_value(ptr %21, !2632, !DIExpression(), !2669)
  %22 = icmp eq ptr %21, null, !dbg !2670
  %23 = and i1 %22, true, !dbg !2670
  %24 = or i1 %23, false, !dbg !2670
  br i1 %24, label %unsafe.Slice.throw, label %unsafe.Slice.next, !dbg !2670

unsafe.Slice.next:                                ; preds = %deref.next4
  %25 = insertvalue { ptr, i64, i64 } undef, ptr %21, 0, !dbg !2670
  %26 = insertvalue { ptr, i64, i64 } %25, i64 5, 1, !dbg !2670
  %27 = insertvalue { ptr, i64, i64 } %26, i64 5, 2, !dbg !2670
  %28 = extractvalue { ptr, i64, i64 } %27, 0, !dbg !2671
  %29 = extractvalue { ptr, i64, i64 } %27, 1, !dbg !2671
  %30 = extractvalue { ptr, i64, i64 } %27, 2, !dbg !2671
  %31 = call { i32, i64 } @"internal/reflectlite.uvarint32"(ptr %28, i64 %29, i64 %30, ptr undef), !dbg !2671
  %32 = extractvalue { i32, i64 } %31, 0, !dbg !2671
    #dbg_value(i32 %32, !2634, !DIExpression(), !2672)
  %33 = extractvalue { i32, i64 } %31, 1, !dbg !2671
    #dbg_value(i64 %33, !2635, !DIExpression(), !2673)
    #dbg_value(ptr %21, !2632, !DIExpression(), !2674)
    #dbg_value(i64 %33, !2635, !DIExpression(), !2675)
  %34 = getelementptr i8, ptr %21, i64 %33, !dbg !2676
    #dbg_value(ptr %34, !2632, !DIExpression(), !2677)
    #dbg_value(ptr %34, !2632, !DIExpression(), !2678)
  %35 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %34, ptr undef), !dbg !2679
    #dbg_value(%runtime._string %35, !2636, !DIExpression(), !2680)
    #dbg_value(ptr %34, !2632, !DIExpression(), !2681)
    #dbg_value(%runtime._string %35, !2636, !DIExpression(), !2682)
  %len = extractvalue %runtime._string %35, 1, !dbg !2683
  %36 = getelementptr i8, ptr %34, i64 %len, !dbg !2684
    #dbg_value(ptr %36, !2632, !DIExpression(), !2685)
    #dbg_value(ptr %6, !2616, !DIExpression(), !2686)
    #dbg_value(ptr %16, !2630, !DIExpression(), !2687)
  %37 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 0, !dbg !2688
  %38 = icmp eq ptr %37, null, !dbg !2688
  br i1 %38, label %deref.throw5, label %deref.next6, !dbg !2688

deref.next6:                                      ; preds = %unsafe.Slice.next
  %39 = load ptr, ptr %37, align 8, !dbg !2688
    #dbg_value(ptr %36, !2632, !DIExpression(), !2689)
    #dbg_value(i8 %20, !2633, !DIExpression(), !2690)
    #dbg_value(%runtime._string %35, !2636, !DIExpression(), !2691)
    #dbg_value(i32 %32, !2634, !DIExpression(), !2692)
  %40 = extractvalue %runtime._string %35, 0, !dbg !2693
  %41 = extractvalue %runtime._string %35, 1, !dbg !2693
  %42 = call %"internal/reflectlite.rawStructField" @"internal/reflectlite.rawStructFieldFromPointer"(ptr %6, ptr %39, ptr %36, i8 %20, ptr %40, i64 %41, i32 %32, ptr undef), !dbg !2693
  ret %"internal/reflectlite.rawStructField" %42, !dbg !2694

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2649
  unreachable, !dbg !2649

gep.throw:                                        ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2655
  unreachable, !dbg !2655

deref.throw3:                                     ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2661
  unreachable, !dbg !2661

unsafe.Slice.throw:                               ; preds = %deref.next4
  call void @runtime.unsafeSlicePanic(ptr undef), !dbg !2670
  unreachable, !dbg !2670

deref.throw5:                                     ; preds = %unsafe.Slice.next
  call void @runtime.nilPanic(ptr undef), !dbg !2688
  unreachable, !dbg !2688
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"internal/reflectlite.uvarint32"(ptr %buf.data, i64 %buf.len, i64 %buf.cap, ptr %context) unnamed_addr #1 !dbg !2695 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %buf.data, 0, !dbg !2704
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %buf.len, 1, !dbg !2704
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %buf.cap, 2, !dbg !2704
    #dbg_value(ptr %buf.data, !2699, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2704)
    #dbg_value(i64 %buf.len, !2699, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2704)
    #dbg_value(i64 %buf.cap, !2699, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2704)
    #dbg_value(i32 0, !2700, !DIExpression(), !2705)
    #dbg_value(i64 0, !2701, !DIExpression(), !2706)
    #dbg_value({ ptr, i64, i64 } %2, !2699, !DIExpression(), !2707)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2708
  br label %rangeindex.loop, !dbg !2708

rangeindex.loop:                                  ; preds = %if.done, %entry
  %3 = phi i32 [ 0, %entry ], [ %23, %if.done ], !dbg !2705
  %4 = phi i64 [ 0, %entry ], [ %24, %if.done ], !dbg !2706
  %5 = phi i64 [ -1, %entry ], [ %6, %if.done ], !dbg !2708
  %6 = add i64 %5, 1, !dbg !2708
  %7 = icmp slt i64 %6, %len, !dbg !2708
  br i1 %7, label %rangeindex.body, label %rangeindex.done, !dbg !2708

rangeindex.body:                                  ; preds = %rangeindex.loop
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2707
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2707
  %8 = icmp uge i64 %6, %indexaddr.len, !dbg !2707
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !2707

lookup.next:                                      ; preds = %rangeindex.body
  %9 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %6, !dbg !2707
  %10 = load i8, ptr %9, align 1, !dbg !2708
    #dbg_value(i64 %6, !2702, !DIExpression(), !2709)
    #dbg_value(i8 %10, !2703, !DIExpression(), !2710)
    #dbg_value(i8 %10, !2703, !DIExpression(), !2711)
  %11 = icmp ult i8 %10, -128, !dbg !2712
  br i1 %11, label %if.then, label %if.done, !dbg !2708

if.then:                                          ; preds = %lookup.next
    #dbg_value(i32 %3, !2700, !DIExpression(), !2713)
    #dbg_value(i8 %10, !2703, !DIExpression(), !2714)
  %12 = zext i8 %10 to i32, !dbg !2715
    #dbg_value(i64 %4, !2701, !DIExpression(), !2716)
  %shift.overflow = icmp uge i64 %4, 32, !dbg !2717
  %13 = trunc i64 %4 to i32, !dbg !2717
  %14 = shl i32 %12, %13, !dbg !2717
  %shift.result = select i1 %shift.overflow, i32 0, i32 %14, !dbg !2717
  %15 = or i32 %3, %shift.result, !dbg !2718
    #dbg_value(i64 %6, !2702, !DIExpression(), !2719)
  %16 = add i64 %6, 1, !dbg !2720
  %17 = insertvalue { i32, i64 } zeroinitializer, i32 %15, 0, !dbg !2721
  %18 = insertvalue { i32, i64 } %17, i64 %16, 1, !dbg !2721
  ret { i32, i64 } %18, !dbg !2721

if.done:                                          ; preds = %lookup.next
    #dbg_value(i8 %10, !2703, !DIExpression(), !2722)
  %19 = and i8 %10, 127, !dbg !2723
  %20 = zext i8 %19 to i32, !dbg !2724
    #dbg_value(i64 %4, !2701, !DIExpression(), !2725)
  %shift.overflow1 = icmp uge i64 %4, 32, !dbg !2726
  %21 = trunc i64 %4 to i32, !dbg !2726
  %22 = shl i32 %20, %21, !dbg !2726
  %shift.result2 = select i1 %shift.overflow1, i32 0, i32 %22, !dbg !2726
  %23 = or i32 %3, %shift.result2, !dbg !2727
    #dbg_value(i32 %23, !2700, !DIExpression(), !2727)
  %24 = add i64 %4, 7, !dbg !2728
    #dbg_value(i64 %24, !2701, !DIExpression(), !2728)
  br label %rangeindex.loop, !dbg !2708

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret { i32, i64 } zeroinitializer, !dbg !2729

lookup.throw:                                     ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2707
  unreachable, !dbg !2707
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/reflectlite.readStringZ"(ptr %data, ptr %context) unnamed_addr #1 !dbg !2730 {
entry:
    #dbg_value(ptr %data, !2734, !DIExpression(), !2737)
    #dbg_value(ptr %data, !2734, !DIExpression(), !2738)
    #dbg_value(ptr %data, !2735, !DIExpression(), !2739)
    #dbg_value(i64 0, !2736, !DIExpression(), !2740)
  br label %for.loop, !dbg !2741

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi ptr [ %data, %entry ], [ %5, %for.body ], !dbg !2742
  %1 = phi i64 [ 0, %entry ], [ %4, %for.body ], !dbg !2740
    #dbg_value(ptr %0, !2734, !DIExpression(), !2743)
  %2 = load i8, ptr %0, align 1, !dbg !2744
  %3 = icmp ne i8 %2, 0, !dbg !2745
  br i1 %3, label %for.body, label %for.done, !dbg !2741

for.body:                                         ; preds = %for.loop
  %4 = add i64 %1, 1, !dbg !2746
    #dbg_value(i64 %4, !2736, !DIExpression(), !2746)
    #dbg_value(ptr %0, !2734, !DIExpression(), !2747)
  %5 = getelementptr i8, ptr %0, i64 1, !dbg !2748
    #dbg_value(ptr %5, !2734, !DIExpression(), !2749)
  br label %for.loop, !dbg !2741

for.done:                                         ; preds = %for.loop
  %complit = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 133 to ptr), ptr undef), !dbg !2750
  %6 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !2751
    #dbg_value(ptr %data, !2735, !DIExpression(), !2752)
  %7 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !2753
    #dbg_value(i64 %1, !2736, !DIExpression(), !2754)
  %8 = icmp eq ptr %6, null, !dbg !2751
  br i1 %8, label %store.throw, label %store.next, !dbg !2751

store.next:                                       ; preds = %for.done
  store ptr %data, ptr %6, align 8, !dbg !2751
    #dbg_value(ptr %data, !2735, !DIExpression(), !2752)
  %9 = icmp eq ptr %7, null, !dbg !2753
  br i1 %9, label %store.throw1, label %store.next2, !dbg !2753

store.next2:                                      ; preds = %store.next
  store i64 %1, ptr %7, align 8, !dbg !2753
    #dbg_value(i64 %1, !2736, !DIExpression(), !2754)
  %10 = load %runtime._string, ptr %complit, align 8, !dbg !2755
  ret %runtime._string %10, !dbg !2756

store.throw:                                      ; preds = %for.done
  call void @runtime.nilPanic(ptr undef), !dbg !2751
  unreachable, !dbg !2751

store.throw1:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !2753
  unreachable, !dbg !2753
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/reflectlite.rawStructField" @"internal/reflectlite.rawStructFieldFromPointer"(ptr dereferenceable_or_null(48) %descriptor, ptr dereferenceable_or_null(1) %fieldType, ptr %data, i8 %flagsByte, ptr readonly %name.data, i64 %name.len, i32 %offset, ptr %context) unnamed_addr #1 !dbg !2757 {
entry:
    #dbg_value(ptr %descriptor, !2761, !DIExpression(), !2770)
    #dbg_value(ptr %fieldType, !2762, !DIExpression(), !2770)
    #dbg_value(ptr %data, !2763, !DIExpression(), !2770)
    #dbg_value(i8 %flagsByte, !2764, !DIExpression(), !2770)
  %complit5 = alloca %"internal/reflectlite.rawStructField", align 8, !dbg !2770
  %0 = insertvalue %runtime._string zeroinitializer, ptr %name.data, 0, !dbg !2770
  %1 = insertvalue %runtime._string %0, i64 %name.len, 1, !dbg !2770
    #dbg_value(ptr %name.data, !2765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2770)
    #dbg_value(i64 %name.len, !2765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2770)
    #dbg_value(i32 %offset, !2766, !DIExpression(), !2770)
    #dbg_value(%runtime._string zeroinitializer, !2767, !DIExpression(), !2771)
    #dbg_value(i8 %flagsByte, !2764, !DIExpression(), !2772)
  %2 = and i8 %flagsByte, 2, !dbg !2773
  %3 = icmp ne i8 %2, 0, !dbg !2774
  br i1 %3, label %if.then, label %if.done, !dbg !2775

if.then:                                          ; preds = %entry
    #dbg_value(ptr %data, !2763, !DIExpression(), !2776)
  %4 = getelementptr i8, ptr %data, i64 1, !dbg !2777
    #dbg_value(ptr %4, !2763, !DIExpression(), !2778)
    #dbg_value(ptr %4, !2763, !DIExpression(), !2779)
  %5 = load i8, ptr %4, align 1, !dbg !2780
  %6 = zext i8 %5 to i64, !dbg !2781
    #dbg_value(i64 %6, !2768, !DIExpression(), !2782)
    #dbg_value(ptr %4, !2763, !DIExpression(), !2783)
  %7 = getelementptr i8, ptr %4, i64 1, !dbg !2784
    #dbg_value(ptr %7, !2763, !DIExpression(), !2785)
  %complit = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 133 to ptr), ptr undef), !dbg !2786
  %8 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !2787
    #dbg_value(ptr %7, !2763, !DIExpression(), !2788)
  %9 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !2789
    #dbg_value(i64 %6, !2768, !DIExpression(), !2790)
  %10 = icmp eq ptr %8, null, !dbg !2787
  br i1 %10, label %store.throw, label %store.next, !dbg !2787

store.next:                                       ; preds = %if.then
  store ptr %7, ptr %8, align 8, !dbg !2787
    #dbg_value(ptr %7, !2763, !DIExpression(), !2788)
  %11 = icmp eq ptr %9, null, !dbg !2789
  br i1 %11, label %store.throw3, label %store.next4, !dbg !2789

store.next4:                                      ; preds = %store.next
  store i64 %6, ptr %9, align 8, !dbg !2789
    #dbg_value(i64 %6, !2768, !DIExpression(), !2790)
  %12 = load %runtime._string, ptr %complit, align 8, !dbg !2791
    #dbg_value(%runtime._string %12, !2767, !DIExpression(), !2792)
  br label %if.done, !dbg !2775

if.done:                                          ; preds = %store.next4, %entry
  %13 = phi %runtime._string [ zeroinitializer, %entry ], [ %12, %store.next4 ], !dbg !2771
    #dbg_value(%runtime._string zeroinitializer, !2769, !DIExpression(), !2793)
    #dbg_value(i8 %flagsByte, !2764, !DIExpression(), !2794)
  %14 = and i8 %flagsByte, 4, !dbg !2795
  %15 = icmp eq i8 %14, 0, !dbg !2796
  br i1 %15, label %if.then1, label %if.done2, !dbg !2775

if.then1:                                         ; preds = %if.done
    #dbg_value(ptr %descriptor, !2761, !DIExpression(), !2797)
  %16 = icmp eq ptr %descriptor, null, !dbg !2798
  br i1 %16, label %gep.throw, label %gep.next, !dbg !2798

gep.next:                                         ; preds = %if.then1
  %17 = getelementptr inbounds %"internal/reflectlite.structType", ptr %descriptor, i32 0, i32 3, !dbg !2798
  %18 = icmp eq ptr %17, null, !dbg !2798
  br i1 %18, label %deref.throw, label %deref.next, !dbg !2798

deref.next:                                       ; preds = %gep.next
  %19 = load ptr, ptr %17, align 8, !dbg !2798
  %20 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %19, ptr undef), !dbg !2799
    #dbg_value(%runtime._string %20, !2769, !DIExpression(), !2800)
  br label %if.done2, !dbg !2775

if.done2:                                         ; preds = %deref.next, %if.done
  %21 = phi %runtime._string [ zeroinitializer, %if.done ], [ %20, %deref.next ], !dbg !2793
  store %"internal/reflectlite.rawStructField" zeroinitializer, ptr %complit5, align 8, !dbg !2770
  %22 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 0, !dbg !2801
    #dbg_value(%runtime._string %1, !2765, !DIExpression(), !2802)
  %23 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 1, !dbg !2803
    #dbg_value(%runtime._string %21, !2769, !DIExpression(), !2804)
  %24 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 2, !dbg !2805
    #dbg_value(ptr %fieldType, !2762, !DIExpression(), !2806)
  %25 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 3, !dbg !2807
    #dbg_value(%runtime._string %13, !2767, !DIExpression(), !2808)
  %26 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 5, !dbg !2809
    #dbg_value(i8 %flagsByte, !2764, !DIExpression(), !2810)
  %27 = and i8 %flagsByte, 1, !dbg !2811
  %28 = icmp ne i8 %27, 0, !dbg !2812
  %29 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 4, !dbg !2813
    #dbg_value(i32 %offset, !2766, !DIExpression(), !2814)
  %30 = zext i32 %offset to i64, !dbg !2815
  %31 = icmp eq ptr %22, null, !dbg !2801
  br i1 %31, label %store.throw6, label %store.next7, !dbg !2801

store.next7:                                      ; preds = %if.done2
  store %runtime._string %1, ptr %22, align 8, !dbg !2801
    #dbg_value(%runtime._string %1, !2765, !DIExpression(), !2802)
  %32 = icmp eq ptr %23, null, !dbg !2803
  br i1 %32, label %store.throw8, label %store.next9, !dbg !2803

store.next9:                                      ; preds = %store.next7
  store %runtime._string %21, ptr %23, align 8, !dbg !2803
    #dbg_value(%runtime._string %21, !2769, !DIExpression(), !2804)
  %33 = icmp eq ptr %24, null, !dbg !2805
  br i1 %33, label %store.throw10, label %store.next11, !dbg !2805

store.next11:                                     ; preds = %store.next9
  store ptr %fieldType, ptr %24, align 8, !dbg !2805
    #dbg_value(ptr %fieldType, !2762, !DIExpression(), !2806)
  %34 = icmp eq ptr %25, null, !dbg !2807
  br i1 %34, label %store.throw12, label %store.next13, !dbg !2807

store.next13:                                     ; preds = %store.next11
  store %runtime._string %13, ptr %25, align 8, !dbg !2807
  %35 = icmp eq ptr %26, null, !dbg !2809
  br i1 %35, label %store.throw14, label %store.next15, !dbg !2809

store.next15:                                     ; preds = %store.next13
  store i1 %28, ptr %26, align 1, !dbg !2809
  %36 = icmp eq ptr %29, null, !dbg !2813
  br i1 %36, label %store.throw16, label %store.next17, !dbg !2813

store.next17:                                     ; preds = %store.next15
  store i64 %30, ptr %29, align 8, !dbg !2813
  %37 = load %"internal/reflectlite.rawStructField", ptr %complit5, align 8, !dbg !2816
  ret %"internal/reflectlite.rawStructField" %37, !dbg !2817

store.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2787
  unreachable, !dbg !2787

store.throw3:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !2789
  unreachable, !dbg !2789

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !2798
  unreachable, !dbg !2798

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2798
  unreachable, !dbg !2798

store.throw6:                                     ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2801
  unreachable, !dbg !2801

store.throw8:                                     ; preds = %store.next7
  call void @runtime.nilPanic(ptr undef), !dbg !2803
  unreachable, !dbg !2803

store.throw10:                                    ; preds = %store.next9
  call void @runtime.nilPanic(ptr undef), !dbg !2805
  unreachable, !dbg !2805

store.throw12:                                    ; preds = %store.next11
  call void @runtime.nilPanic(ptr undef), !dbg !2807
  unreachable, !dbg !2807

store.throw14:                                    ; preds = %store.next13
  call void @runtime.nilPanic(ptr undef), !dbg !2809
  unreachable, !dbg !2809

store.throw16:                                    ; preds = %store.next15
  call void @runtime.nilPanic(ptr undef), !dbg !2813
  unreachable, !dbg !2813
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.Kind).String"(i8 %k, ptr %context) unnamed_addr #1 !dbg !2818 {
entry:
    #dbg_value(i8 %k, !2823, !DIExpression(), !2824)
    #dbg_value(i8 %k, !2823, !DIExpression(), !2825)
  %0 = icmp eq i8 %k, 0, !dbg !2826
  br i1 %0, label %switch.body, label %switch.next, !dbg !2827

switch.body:                                      ; preds = %entry
  ret %runtime._string { ptr @"internal/reflectlite$string.41", i64 7 }, !dbg !2828

switch.next:                                      ; preds = %entry
  %1 = icmp eq i8 %k, 1, !dbg !2829
  br i1 %1, label %switch.body1, label %switch.next2, !dbg !2827

switch.body1:                                     ; preds = %switch.next
  ret %runtime._string { ptr @"internal/reflectlite$string.42", i64 4 }, !dbg !2830

switch.next2:                                     ; preds = %switch.next
  %2 = icmp eq i8 %k, 2, !dbg !2831
  br i1 %2, label %switch.body3, label %switch.next4, !dbg !2827

switch.body3:                                     ; preds = %switch.next2
  ret %runtime._string { ptr @"internal/reflectlite$string.43", i64 3 }, !dbg !2832

switch.next4:                                     ; preds = %switch.next2
  %3 = icmp eq i8 %k, 3, !dbg !2833
  br i1 %3, label %switch.body5, label %switch.next6, !dbg !2827

switch.body5:                                     ; preds = %switch.next4
  ret %runtime._string { ptr @"internal/reflectlite$string.44", i64 4 }, !dbg !2834

switch.next6:                                     ; preds = %switch.next4
  %4 = icmp eq i8 %k, 4, !dbg !2835
  br i1 %4, label %switch.body7, label %switch.next8, !dbg !2827

switch.body7:                                     ; preds = %switch.next6
  ret %runtime._string { ptr @"internal/reflectlite$string.45", i64 5 }, !dbg !2836

switch.next8:                                     ; preds = %switch.next6
  %5 = icmp eq i8 %k, 5, !dbg !2837
  br i1 %5, label %switch.body9, label %switch.next10, !dbg !2827

switch.body9:                                     ; preds = %switch.next8
  ret %runtime._string { ptr @"internal/reflectlite$string.46", i64 5 }, !dbg !2838

switch.next10:                                    ; preds = %switch.next8
  %6 = icmp eq i8 %k, 6, !dbg !2839
  br i1 %6, label %switch.body11, label %switch.next12, !dbg !2827

switch.body11:                                    ; preds = %switch.next10
  ret %runtime._string { ptr @"internal/reflectlite$string.47", i64 5 }, !dbg !2840

switch.next12:                                    ; preds = %switch.next10
  %7 = icmp eq i8 %k, 7, !dbg !2841
  br i1 %7, label %switch.body13, label %switch.next14, !dbg !2827

switch.body13:                                    ; preds = %switch.next12
  ret %runtime._string { ptr @"internal/reflectlite$string.48", i64 4 }, !dbg !2842

switch.next14:                                    ; preds = %switch.next12
  %8 = icmp eq i8 %k, 8, !dbg !2843
  br i1 %8, label %switch.body15, label %switch.next16, !dbg !2827

switch.body15:                                    ; preds = %switch.next14
  ret %runtime._string { ptr @"internal/reflectlite$string.49", i64 5 }, !dbg !2844

switch.next16:                                    ; preds = %switch.next14
  %9 = icmp eq i8 %k, 9, !dbg !2845
  br i1 %9, label %switch.body17, label %switch.next18, !dbg !2827

switch.body17:                                    ; preds = %switch.next16
  ret %runtime._string { ptr @"internal/reflectlite$string.50", i64 6 }, !dbg !2846

switch.next18:                                    ; preds = %switch.next16
  %10 = icmp eq i8 %k, 10, !dbg !2847
  br i1 %10, label %switch.body19, label %switch.next20, !dbg !2827

switch.body19:                                    ; preds = %switch.next18
  ret %runtime._string { ptr @"internal/reflectlite$string.51", i64 6 }, !dbg !2848

switch.next20:                                    ; preds = %switch.next18
  %11 = icmp eq i8 %k, 11, !dbg !2849
  br i1 %11, label %switch.body21, label %switch.next22, !dbg !2827

switch.body21:                                    ; preds = %switch.next20
  ret %runtime._string { ptr @"internal/reflectlite$string.52", i64 6 }, !dbg !2850

switch.next22:                                    ; preds = %switch.next20
  %12 = icmp eq i8 %k, 12, !dbg !2851
  br i1 %12, label %switch.body23, label %switch.next24, !dbg !2827

switch.body23:                                    ; preds = %switch.next22
  ret %runtime._string { ptr @"internal/reflectlite$string.53", i64 7 }, !dbg !2852

switch.next24:                                    ; preds = %switch.next22
  %13 = icmp eq i8 %k, 13, !dbg !2853
  br i1 %13, label %switch.body25, label %switch.next26, !dbg !2827

switch.body25:                                    ; preds = %switch.next24
  ret %runtime._string { ptr @"internal/reflectlite$string.54", i64 7 }, !dbg !2854

switch.next26:                                    ; preds = %switch.next24
  %14 = icmp eq i8 %k, 14, !dbg !2855
  br i1 %14, label %switch.body27, label %switch.next28, !dbg !2827

switch.body27:                                    ; preds = %switch.next26
  ret %runtime._string { ptr @"internal/reflectlite$string.55", i64 7 }, !dbg !2856

switch.next28:                                    ; preds = %switch.next26
  %15 = icmp eq i8 %k, 15, !dbg !2857
  br i1 %15, label %switch.body29, label %switch.next30, !dbg !2827

switch.body29:                                    ; preds = %switch.next28
  ret %runtime._string { ptr @"internal/reflectlite$string.56", i64 9 }, !dbg !2858

switch.next30:                                    ; preds = %switch.next28
  %16 = icmp eq i8 %k, 16, !dbg !2859
  br i1 %16, label %switch.body31, label %switch.next32, !dbg !2827

switch.body31:                                    ; preds = %switch.next30
  ret %runtime._string { ptr @"internal/reflectlite$string.57", i64 10 }, !dbg !2860

switch.next32:                                    ; preds = %switch.next30
  %17 = icmp eq i8 %k, 17, !dbg !2861
  br i1 %17, label %switch.body33, label %switch.next34, !dbg !2827

switch.body33:                                    ; preds = %switch.next32
  ret %runtime._string { ptr @"internal/reflectlite$string.58", i64 6 }, !dbg !2862

switch.next34:                                    ; preds = %switch.next32
  %18 = icmp eq i8 %k, 18, !dbg !2863
  br i1 %18, label %switch.body35, label %switch.next36, !dbg !2827

switch.body35:                                    ; preds = %switch.next34
  ret %runtime._string { ptr @"internal/reflectlite$string.59", i64 14 }, !dbg !2864

switch.next36:                                    ; preds = %switch.next34
  %19 = icmp eq i8 %k, 19, !dbg !2865
  br i1 %19, label %switch.body37, label %switch.next38, !dbg !2827

switch.body37:                                    ; preds = %switch.next36
  ret %runtime._string { ptr @"internal/reflectlite$string.60", i64 4 }, !dbg !2866

switch.next38:                                    ; preds = %switch.next36
  %20 = icmp eq i8 %k, 20, !dbg !2867
  br i1 %20, label %switch.body39, label %switch.next40, !dbg !2827

switch.body39:                                    ; preds = %switch.next38
  ret %runtime._string { ptr @"internal/reflectlite$string.61", i64 9 }, !dbg !2868

switch.next40:                                    ; preds = %switch.next38
  %21 = icmp eq i8 %k, 21, !dbg !2869
  br i1 %21, label %switch.body41, label %switch.next42, !dbg !2827

switch.body41:                                    ; preds = %switch.next40
  ret %runtime._string { ptr @"internal/reflectlite$string.62", i64 3 }, !dbg !2870

switch.next42:                                    ; preds = %switch.next40
  %22 = icmp eq i8 %k, 22, !dbg !2871
  br i1 %22, label %switch.body43, label %switch.next44, !dbg !2827

switch.body43:                                    ; preds = %switch.next42
  ret %runtime._string { ptr @"internal/reflectlite$string.63", i64 5 }, !dbg !2872

switch.next44:                                    ; preds = %switch.next42
  %23 = icmp eq i8 %k, 23, !dbg !2873
  br i1 %23, label %switch.body45, label %switch.next46, !dbg !2827

switch.body45:                                    ; preds = %switch.next44
  ret %runtime._string { ptr @"internal/reflectlite$string.64", i64 5 }, !dbg !2874

switch.next46:                                    ; preds = %switch.next44
  %24 = icmp eq i8 %k, 24, !dbg !2875
  br i1 %24, label %switch.body47, label %switch.next48, !dbg !2827

switch.body47:                                    ; preds = %switch.next46
  ret %runtime._string { ptr @"internal/reflectlite$string.65", i64 4 }, !dbg !2876

switch.next48:                                    ; preds = %switch.next46
  %25 = icmp eq i8 %k, 25, !dbg !2877
  br i1 %25, label %switch.body49, label %switch.next50, !dbg !2827

switch.body49:                                    ; preds = %switch.next48
  ret %runtime._string { ptr @"internal/reflectlite$string.66", i64 3 }, !dbg !2878

switch.next50:                                    ; preds = %switch.next48
  %26 = icmp eq i8 %k, 26, !dbg !2879
  br i1 %26, label %switch.body51, label %switch.next52, !dbg !2827

switch.body51:                                    ; preds = %switch.next50
  ret %runtime._string { ptr @"internal/reflectlite$string.67", i64 6 }, !dbg !2880

switch.next52:                                    ; preds = %switch.next50
    #dbg_value(i8 %k, !2823, !DIExpression(), !2881)
  %27 = sext i8 %k to i64, !dbg !2882
  %28 = call %runtime._string @"internal/itoa.Itoa"(i64 %27, ptr undef), !dbg !2883
  %29 = extractvalue %runtime._string %28, 0, !dbg !2884
  %30 = extractvalue %runtime._string %28, 1, !dbg !2884
  %31 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.68", i64 4, ptr %29, i64 %30, ptr undef), !dbg !2884
  ret %runtime._string %31, !dbg !2885
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/reflectlite.quote"(ptr readonly %s.data, i64 %s.len, ptr %context) unnamed_addr #1 !dbg !2886 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !2892
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !2892
    #dbg_value(ptr %s.data, !2888, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2892)
    #dbg_value(i64 %s.len, !2888, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2892)
    #dbg_value(%runtime._string %1, !2888, !DIExpression(), !2893)
  %len = extractvalue %runtime._string %1, 1, !dbg !2894
  %2 = mul i64 3, %len, !dbg !2895
  %3 = icmp eq i64 %2, -9223372036854775808, !dbg !2896
  %4 = and i1 false, %3, !dbg !2896
  %5 = select i1 %4, i64 1, i64 2, !dbg !2896
  %6 = sdiv i64 %2, %5, !dbg !2896
  %slice.lowhigh = icmp ugt i64 0, %6, !dbg !2897
  %slice.highmax = icmp ugt i64 %6, %6, !dbg !2897
  %slice.maxcap = icmp ugt i64 %6, 9223372036854775807, !dbg !2897
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2897
  %slice.lowcap = or i1 %slice.lowmax, %slice.maxcap, !dbg !2897
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2897

slice.next:                                       ; preds = %entry
  %makeslice.cap = mul i64 1, %6, !dbg !2897
  %makeslice.buf = call align 1 ptr @runtime.alloc(i64 %makeslice.cap, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2897
  %7 = insertvalue { ptr, i64, i64 } undef, ptr %makeslice.buf, 0, !dbg !2897
  %8 = insertvalue { ptr, i64, i64 } %7, i64 0, 1, !dbg !2897
  %9 = insertvalue { ptr, i64, i64 } %8, i64 %6, 2, !dbg !2897
    #dbg_value({ ptr, i64, i64 } %9, !2889, !DIExpression(), !2898)
    #dbg_value({ ptr, i64, i64 } %9, !2889, !DIExpression(), !2899)
  %varargs = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2900
  %10 = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2900
  store i8 34, ptr %10, align 1, !dbg !2900
  %slice.ptr = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2900
  %11 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !2900
  %12 = insertvalue { ptr, i64, i64 } %11, i64 1, 1, !dbg !2900
  %13 = insertvalue { ptr, i64, i64 } %12, i64 1, 2, !dbg !2900
  %append.srcBuf = extractvalue { ptr, i64, i64 } %9, 0, !dbg !2901
  %append.srcLen = extractvalue { ptr, i64, i64 } %9, 1, !dbg !2901
  %append.srcCap = extractvalue { ptr, i64, i64 } %9, 2, !dbg !2901
  %append.elemsBuf = extractvalue { ptr, i64, i64 } %13, 0, !dbg !2901
  %append.elemsLen = extractvalue { ptr, i64, i64 } %13, 1, !dbg !2901
  %append.new = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf, ptr %append.elemsBuf, i64 %append.srcLen, i64 %append.srcCap, i64 %append.elemsLen, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2901
  %append.newPtr = extractvalue { ptr, i64, i64 } %append.new, 0, !dbg !2901
  %append.newLen = extractvalue { ptr, i64, i64 } %append.new, 1, !dbg !2901
  %append.newCap = extractvalue { ptr, i64, i64 } %append.new, 2, !dbg !2901
  %14 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr, 0, !dbg !2901
  %15 = insertvalue { ptr, i64, i64 } %14, i64 %append.newLen, 1, !dbg !2901
  %16 = insertvalue { ptr, i64, i64 } %15, i64 %append.newCap, 2, !dbg !2901
    #dbg_value({ ptr, i64, i64 } %16, !2889, !DIExpression(), !2902)
    #dbg_value(i64 0, !2890, !DIExpression(), !2903)
  br label %for.loop, !dbg !2904

for.loop:                                         ; preds = %slice.next50, %slice.next
  %17 = phi %runtime._string [ %1, %slice.next ], [ %76, %slice.next50 ], !dbg !2905
  %18 = phi { ptr, i64, i64 } [ %16, %slice.next ], [ %70, %slice.next50 ], !dbg !2898
    #dbg_value(%runtime._string %17, !2888, !DIExpression(), !2906)
  %len3 = extractvalue %runtime._string %17, 1, !dbg !2907
  %19 = icmp sgt i64 %len3, 0, !dbg !2908
  br i1 %19, label %for.body, label %for.done, !dbg !2904

for.body:                                         ; preds = %for.loop
    #dbg_value(%runtime._string %17, !2888, !DIExpression(), !2909)
  %len4 = extractvalue %runtime._string %17, 1, !dbg !2910
  %20 = icmp uge i64 0, %len4, !dbg !2910
  br i1 %20, label %lookup.throw, label %lookup.next, !dbg !2910

lookup.next:                                      ; preds = %for.body
  %21 = extractvalue %runtime._string %17, 0, !dbg !2910
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !2910
  %23 = load i8, ptr %22, align 1, !dbg !2910
  %24 = zext i8 %23 to i32, !dbg !2911
    #dbg_value(i32 %24, !2891, !DIExpression(), !2912)
    #dbg_value(i64 1, !2890, !DIExpression(), !2913)
    #dbg_value(i32 %24, !2891, !DIExpression(), !2914)
  %25 = icmp sge i32 %24, 128, !dbg !2915
  br i1 %25, label %if.then, label %if.done, !dbg !2904

if.then:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %17, !2888, !DIExpression(), !2916)
  %26 = extractvalue %runtime._string %17, 0, !dbg !2917
  %27 = extractvalue %runtime._string %17, 1, !dbg !2917
  %28 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(ptr %26, i64 %27, ptr undef), !dbg !2917
  %29 = extractvalue { i32, i64 } %28, 0, !dbg !2917
    #dbg_value(i32 %29, !2891, !DIExpression(), !2918)
  %30 = extractvalue { i32, i64 } %28, 1, !dbg !2917
    #dbg_value(i64 %30, !2890, !DIExpression(), !2919)
  br label %if.done, !dbg !2904

if.done:                                          ; preds = %if.then, %lookup.next
  %31 = phi i64 [ 1, %lookup.next ], [ %30, %if.then ], !dbg !2903
  %32 = phi i32 [ %24, %lookup.next ], [ %29, %if.then ], !dbg !2912
    #dbg_value(i64 %31, !2890, !DIExpression(), !2920)
  %33 = icmp eq i64 %31, 1, !dbg !2921
  br i1 %33, label %cond.true, label %if.done2, !dbg !2904

cond.true:                                        ; preds = %if.done
    #dbg_value(i32 %32, !2891, !DIExpression(), !2922)
  %34 = icmp eq i32 %32, 65533, !dbg !2923
  br i1 %34, label %if.then1, label %if.done2, !dbg !2904

if.then1:                                         ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } %18, !2889, !DIExpression(), !2924)
  %append.srcBuf5 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2925
  %append.srcLen6 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2925
  %append.srcCap7 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2925
  %append.new8 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf5, ptr @"internal/reflectlite$string.20", i64 %append.srcLen6, i64 %append.srcCap7, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2925
  %append.newPtr9 = extractvalue { ptr, i64, i64 } %append.new8, 0, !dbg !2925
  %append.newLen10 = extractvalue { ptr, i64, i64 } %append.new8, 1, !dbg !2925
  %append.newCap11 = extractvalue { ptr, i64, i64 } %append.new8, 2, !dbg !2925
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr9, 0, !dbg !2925
  %36 = insertvalue { ptr, i64, i64 } %35, i64 %append.newLen10, 1, !dbg !2925
  %37 = insertvalue { ptr, i64, i64 } %36, i64 %append.newCap11, 2, !dbg !2925
    #dbg_value({ ptr, i64, i64 } %37, !2889, !DIExpression(), !2926)
    #dbg_value({ ptr, i64, i64 } %37, !2889, !DIExpression(), !2927)
    #dbg_value(%runtime._string %17, !2888, !DIExpression(), !2928)
  %len12 = extractvalue %runtime._string %17, 1, !dbg !2929
  %38 = icmp uge i64 0, %len12, !dbg !2929
  br i1 %38, label %lookup.throw13, label %lookup.next14, !dbg !2929

lookup.next14:                                    ; preds = %if.then1
  %39 = extractvalue %runtime._string %17, 0, !dbg !2929
  %40 = getelementptr inbounds i8, ptr %39, i64 0, !dbg !2929
  %41 = load i8, ptr %40, align 1, !dbg !2929
  %42 = lshr i8 %41, 4, !dbg !2930
  %shift.result = select i1 false, i8 0, i8 %42, !dbg !2930
  %43 = zext i8 %shift.result to i64, !dbg !2931
  %44 = icmp uge i64 %43, 15, !dbg !2931
  br i1 %44, label %lookup.throw15, label %lookup.next16, !dbg !2931

lookup.next16:                                    ; preds = %lookup.next14
  %45 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.21", i64 %43, !dbg !2931
  %46 = load i8, ptr %45, align 1, !dbg !2931
  %varargs17 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2932
  %47 = getelementptr inbounds [1 x i8], ptr %varargs17, i32 0, i64 0, !dbg !2932
  store i8 %46, ptr %47, align 1, !dbg !2931
  %slice.ptr18 = getelementptr inbounds [1 x i8], ptr %varargs17, i32 0, i64 0, !dbg !2932
  %48 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr18, 0, !dbg !2932
  %49 = insertvalue { ptr, i64, i64 } %48, i64 1, 1, !dbg !2932
  %50 = insertvalue { ptr, i64, i64 } %49, i64 1, 2, !dbg !2932
  %append.srcBuf19 = extractvalue { ptr, i64, i64 } %37, 0, !dbg !2933
  %append.srcLen20 = extractvalue { ptr, i64, i64 } %37, 1, !dbg !2933
  %append.srcCap21 = extractvalue { ptr, i64, i64 } %37, 2, !dbg !2933
  %append.elemsBuf22 = extractvalue { ptr, i64, i64 } %50, 0, !dbg !2933
  %append.elemsLen23 = extractvalue { ptr, i64, i64 } %50, 1, !dbg !2933
  %append.new24 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf19, ptr %append.elemsBuf22, i64 %append.srcLen20, i64 %append.srcCap21, i64 %append.elemsLen23, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2933
  %append.newPtr25 = extractvalue { ptr, i64, i64 } %append.new24, 0, !dbg !2933
  %append.newLen26 = extractvalue { ptr, i64, i64 } %append.new24, 1, !dbg !2933
  %append.newCap27 = extractvalue { ptr, i64, i64 } %append.new24, 2, !dbg !2933
  %51 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr25, 0, !dbg !2933
  %52 = insertvalue { ptr, i64, i64 } %51, i64 %append.newLen26, 1, !dbg !2933
  %53 = insertvalue { ptr, i64, i64 } %52, i64 %append.newCap27, 2, !dbg !2933
    #dbg_value({ ptr, i64, i64 } %53, !2889, !DIExpression(), !2934)
    #dbg_value({ ptr, i64, i64 } %53, !2889, !DIExpression(), !2935)
    #dbg_value(%runtime._string %17, !2888, !DIExpression(), !2936)
  %len28 = extractvalue %runtime._string %17, 1, !dbg !2937
  %54 = icmp uge i64 0, %len28, !dbg !2937
  br i1 %54, label %lookup.throw29, label %lookup.next30, !dbg !2937

lookup.next30:                                    ; preds = %lookup.next16
  %55 = extractvalue %runtime._string %17, 0, !dbg !2937
  %56 = getelementptr inbounds i8, ptr %55, i64 0, !dbg !2937
  %57 = load i8, ptr %56, align 1, !dbg !2937
  %58 = and i8 %57, 15, !dbg !2938
  %59 = zext i8 %58 to i64, !dbg !2939
  %60 = icmp uge i64 %59, 15, !dbg !2939
  br i1 %60, label %lookup.throw31, label %lookup.next32, !dbg !2939

lookup.next32:                                    ; preds = %lookup.next30
  %61 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.22", i64 %59, !dbg !2939
  %62 = load i8, ptr %61, align 1, !dbg !2939
  %varargs33 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2940
  %63 = getelementptr inbounds [1 x i8], ptr %varargs33, i32 0, i64 0, !dbg !2940
  store i8 %62, ptr %63, align 1, !dbg !2939
  %slice.ptr34 = getelementptr inbounds [1 x i8], ptr %varargs33, i32 0, i64 0, !dbg !2940
  %64 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr34, 0, !dbg !2940
  %65 = insertvalue { ptr, i64, i64 } %64, i64 1, 1, !dbg !2940
  %66 = insertvalue { ptr, i64, i64 } %65, i64 1, 2, !dbg !2940
  %append.srcBuf35 = extractvalue { ptr, i64, i64 } %53, 0, !dbg !2941
  %append.srcLen36 = extractvalue { ptr, i64, i64 } %53, 1, !dbg !2941
  %append.srcCap37 = extractvalue { ptr, i64, i64 } %53, 2, !dbg !2941
  %append.elemsBuf38 = extractvalue { ptr, i64, i64 } %66, 0, !dbg !2941
  %append.elemsLen39 = extractvalue { ptr, i64, i64 } %66, 1, !dbg !2941
  %append.new40 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf35, ptr %append.elemsBuf38, i64 %append.srcLen36, i64 %append.srcCap37, i64 %append.elemsLen39, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2941
  %append.newPtr41 = extractvalue { ptr, i64, i64 } %append.new40, 0, !dbg !2941
  %append.newLen42 = extractvalue { ptr, i64, i64 } %append.new40, 1, !dbg !2941
  %append.newCap43 = extractvalue { ptr, i64, i64 } %append.new40, 2, !dbg !2941
  %67 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr41, 0, !dbg !2941
  %68 = insertvalue { ptr, i64, i64 } %67, i64 %append.newLen42, 1, !dbg !2941
  %69 = insertvalue { ptr, i64, i64 } %68, i64 %append.newCap43, 2, !dbg !2941
    #dbg_value({ ptr, i64, i64 } %69, !2889, !DIExpression(), !2942)
  br label %for.post, !dbg !2904

for.post:                                         ; preds = %if.done2, %lookup.next32
  %70 = phi { ptr, i64, i64 } [ %69, %lookup.next32 ], [ %80, %if.done2 ], !dbg !2898
    #dbg_value(%runtime._string %17, !2888, !DIExpression(), !2943)
    #dbg_value(i64 %31, !2890, !DIExpression(), !2944)
  %71 = extractvalue %runtime._string %17, 0, !dbg !2945
  %72 = extractvalue %runtime._string %17, 1, !dbg !2945
  %slice.lowhigh44 = icmp ugt i64 %31, %72, !dbg !2945
  %slice.highmax45 = icmp ugt i64 %72, %72, !dbg !2945
  %slice.maxcap46 = icmp ugt i64 %72, %72, !dbg !2945
  %slice.lowmax47 = or i1 %slice.lowhigh44, %slice.highmax45, !dbg !2945
  %slice.lowcap48 = or i1 %slice.lowmax47, %slice.maxcap46, !dbg !2945
  br i1 %slice.lowcap48, label %slice.throw49, label %slice.next50, !dbg !2945

slice.next50:                                     ; preds = %for.post
  %73 = getelementptr inbounds i8, ptr %71, i64 %31, !dbg !2945
  %74 = sub i64 %72, %31, !dbg !2945
  %75 = insertvalue %runtime._string undef, ptr %73, 0, !dbg !2945
  %76 = insertvalue %runtime._string %75, i64 %74, 1, !dbg !2945
    #dbg_value(%runtime._string %76, !2888, !DIExpression(), !2946)
  br label %for.loop, !dbg !2904

if.done2:                                         ; preds = %cond.true, %if.done
    #dbg_value({ ptr, i64, i64 } %18, !2889, !DIExpression(), !2947)
    #dbg_value(i32 %32, !2891, !DIExpression(), !2948)
  %77 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2949
  %78 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2949
  %79 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2949
  %80 = call { ptr, i64, i64 } @"internal/reflectlite.appendEscapedRune"(ptr %77, i64 %78, i64 %79, i32 %32, ptr undef), !dbg !2949
    #dbg_value({ ptr, i64, i64 } %80, !2889, !DIExpression(), !2950)
  br label %for.post, !dbg !2904

for.done:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %18, !2889, !DIExpression(), !2951)
  %varargs51 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2952
  %81 = getelementptr inbounds [1 x i8], ptr %varargs51, i32 0, i64 0, !dbg !2952
  store i8 34, ptr %81, align 1, !dbg !2952
  %slice.ptr52 = getelementptr inbounds [1 x i8], ptr %varargs51, i32 0, i64 0, !dbg !2952
  %82 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr52, 0, !dbg !2952
  %83 = insertvalue { ptr, i64, i64 } %82, i64 1, 1, !dbg !2952
  %84 = insertvalue { ptr, i64, i64 } %83, i64 1, 2, !dbg !2952
  %append.srcBuf53 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2953
  %append.srcLen54 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2953
  %append.srcCap55 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2953
  %append.elemsBuf56 = extractvalue { ptr, i64, i64 } %84, 0, !dbg !2953
  %append.elemsLen57 = extractvalue { ptr, i64, i64 } %84, 1, !dbg !2953
  %append.new58 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf53, ptr %append.elemsBuf56, i64 %append.srcLen54, i64 %append.srcCap55, i64 %append.elemsLen57, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2953
  %append.newPtr59 = extractvalue { ptr, i64, i64 } %append.new58, 0, !dbg !2953
  %append.newLen60 = extractvalue { ptr, i64, i64 } %append.new58, 1, !dbg !2953
  %append.newCap61 = extractvalue { ptr, i64, i64 } %append.new58, 2, !dbg !2953
  %85 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr59, 0, !dbg !2953
  %86 = insertvalue { ptr, i64, i64 } %85, i64 %append.newLen60, 1, !dbg !2953
  %87 = insertvalue { ptr, i64, i64 } %86, i64 %append.newCap61, 2, !dbg !2953
    #dbg_value({ ptr, i64, i64 } %87, !2889, !DIExpression(), !2954)
    #dbg_value({ ptr, i64, i64 } %87, !2889, !DIExpression(), !2955)
  %88 = extractvalue { ptr, i64, i64 } %87, 0, !dbg !2956
  %89 = extractvalue { ptr, i64, i64 } %87, 1, !dbg !2956
  %90 = extractvalue { ptr, i64, i64 } %87, 2, !dbg !2956
  %91 = call %runtime._string @runtime.stringFromBytes(ptr %88, i64 %89, i64 %90, ptr undef), !dbg !2956
  ret %runtime._string %91, !dbg !2957

slice.throw:                                      ; preds = %entry
  call void @runtime.slicePanic(ptr undef), !dbg !2897
  unreachable, !dbg !2897

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2910
  unreachable, !dbg !2910

lookup.throw13:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !2929
  unreachable, !dbg !2929

lookup.throw15:                                   ; preds = %lookup.next14
  call void @runtime.lookupPanic(ptr undef), !dbg !2931
  unreachable, !dbg !2931

lookup.throw29:                                   ; preds = %lookup.next16
  call void @runtime.lookupPanic(ptr undef), !dbg !2937
  unreachable, !dbg !2937

lookup.throw31:                                   ; preds = %lookup.next30
  call void @runtime.lookupPanic(ptr undef), !dbg !2939
  unreachable, !dbg !2939

slice.throw49:                                    ; preds = %for.post
  call void @runtime.slicePanic(ptr undef), !dbg !2945
  unreachable, !dbg !2945
}

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @"internal/reflectlite.appendEscapedRune"(ptr %buf.data, i64 %buf.len, i64 %buf.cap, i32 %r, ptr %context) unnamed_addr #1 !dbg !2958 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %buf.data, 0, !dbg !2965
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %buf.len, 1, !dbg !2965
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %buf.cap, 2, !dbg !2965
    #dbg_value(ptr %buf.data, !2960, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2965)
    #dbg_value(i64 %buf.len, !2960, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2965)
    #dbg_value(i64 %buf.cap, !2960, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2965)
    #dbg_value(i32 %r, !2961, !DIExpression(), !2965)
  %runeTmp = call align 1 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2966
    #dbg_value(i32 %r, !2961, !DIExpression(), !2967)
  %3 = icmp eq i32 %r, 34, !dbg !2968
  br i1 %3, label %if.then, label %cond.false, !dbg !2969

if.then:                                          ; preds = %cond.false, %entry
    #dbg_value({ ptr, i64, i64 } %2, !2960, !DIExpression(), !2970)
  %varargs = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2971
  %4 = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2971
  store i8 92, ptr %4, align 1, !dbg !2971
  %slice.ptr = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2971
  %5 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !2971
  %6 = insertvalue { ptr, i64, i64 } %5, i64 1, 1, !dbg !2971
  %7 = insertvalue { ptr, i64, i64 } %6, i64 1, 2, !dbg !2971
  %append.srcBuf = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2972
  %append.srcLen = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2972
  %append.srcCap = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2972
  %append.elemsBuf = extractvalue { ptr, i64, i64 } %7, 0, !dbg !2972
  %append.elemsLen = extractvalue { ptr, i64, i64 } %7, 1, !dbg !2972
  %append.new = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf, ptr %append.elemsBuf, i64 %append.srcLen, i64 %append.srcCap, i64 %append.elemsLen, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2972
  %append.newPtr = extractvalue { ptr, i64, i64 } %append.new, 0, !dbg !2972
  %append.newLen = extractvalue { ptr, i64, i64 } %append.new, 1, !dbg !2972
  %append.newCap = extractvalue { ptr, i64, i64 } %append.new, 2, !dbg !2972
  %8 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr, 0, !dbg !2972
  %9 = insertvalue { ptr, i64, i64 } %8, i64 %append.newLen, 1, !dbg !2972
  %10 = insertvalue { ptr, i64, i64 } %9, i64 %append.newCap, 2, !dbg !2972
    #dbg_value({ ptr, i64, i64 } %10, !2960, !DIExpression(), !2973)
    #dbg_value({ ptr, i64, i64 } %10, !2960, !DIExpression(), !2974)
    #dbg_value(i32 %r, !2961, !DIExpression(), !2975)
  %11 = trunc i32 %r to i8, !dbg !2976
  %varargs23 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2977
  %12 = getelementptr inbounds [1 x i8], ptr %varargs23, i32 0, i64 0, !dbg !2977
  store i8 %11, ptr %12, align 1, !dbg !2976
  %slice.ptr24 = getelementptr inbounds [1 x i8], ptr %varargs23, i32 0, i64 0, !dbg !2977
  %13 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr24, 0, !dbg !2977
  %14 = insertvalue { ptr, i64, i64 } %13, i64 1, 1, !dbg !2977
  %15 = insertvalue { ptr, i64, i64 } %14, i64 1, 2, !dbg !2977
  %append.srcBuf25 = extractvalue { ptr, i64, i64 } %10, 0, !dbg !2978
  %append.srcLen26 = extractvalue { ptr, i64, i64 } %10, 1, !dbg !2978
  %append.srcCap27 = extractvalue { ptr, i64, i64 } %10, 2, !dbg !2978
  %append.elemsBuf28 = extractvalue { ptr, i64, i64 } %15, 0, !dbg !2978
  %append.elemsLen29 = extractvalue { ptr, i64, i64 } %15, 1, !dbg !2978
  %append.new30 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf25, ptr %append.elemsBuf28, i64 %append.srcLen26, i64 %append.srcCap27, i64 %append.elemsLen29, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2978
  %append.newPtr31 = extractvalue { ptr, i64, i64 } %append.new30, 0, !dbg !2978
  %append.newLen32 = extractvalue { ptr, i64, i64 } %append.new30, 1, !dbg !2978
  %append.newCap33 = extractvalue { ptr, i64, i64 } %append.new30, 2, !dbg !2978
  %16 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr31, 0, !dbg !2978
  %17 = insertvalue { ptr, i64, i64 } %16, i64 %append.newLen32, 1, !dbg !2978
  %18 = insertvalue { ptr, i64, i64 } %17, i64 %append.newCap33, 2, !dbg !2978
    #dbg_value({ ptr, i64, i64 } %18, !2960, !DIExpression(), !2979)
    #dbg_value({ ptr, i64, i64 } %18, !2960, !DIExpression(), !2980)
  ret { ptr, i64, i64 } %18, !dbg !2981

cond.false:                                       ; preds = %entry
    #dbg_value(i32 %r, !2961, !DIExpression(), !2982)
  %19 = icmp eq i32 %r, 92, !dbg !2983
  br i1 %19, label %if.then, label %if.done, !dbg !2969

if.done:                                          ; preds = %cond.false
    #dbg_value(i32 %r, !2961, !DIExpression(), !2984)
  %20 = call i1 @"internal/reflectlite.isPrint"(i32 %r, ptr undef), !dbg !2985
  br i1 %20, label %if.then1, label %if.done2, !dbg !2969

if.then1:                                         ; preds = %if.done
  %slice.ptr34 = getelementptr inbounds [4 x i8], ptr %runeTmp, i32 0, i64 0, !dbg !2986
  %21 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr34, 0, !dbg !2986
  %22 = insertvalue { ptr, i64, i64 } %21, i64 4, 1, !dbg !2986
  %23 = insertvalue { ptr, i64, i64 } %22, i64 4, 2, !dbg !2986
    #dbg_value(i32 %r, !2961, !DIExpression(), !2987)
  %24 = extractvalue { ptr, i64, i64 } %23, 0, !dbg !2988
  %25 = extractvalue { ptr, i64, i64 } %23, 1, !dbg !2988
  %26 = extractvalue { ptr, i64, i64 } %23, 2, !dbg !2988
  %27 = call i64 @"unicode/utf8.EncodeRune"(ptr %24, i64 %25, i64 %26, i32 %r, ptr undef), !dbg !2988
    #dbg_value(i64 %27, !2962, !DIExpression(), !2989)
    #dbg_value({ ptr, i64, i64 } %2, !2960, !DIExpression(), !2990)
    #dbg_value(i64 %27, !2962, !DIExpression(), !2991)
  %slice.lowhigh = icmp ugt i64 0, %27, !dbg !2992
  %slice.highmax = icmp ugt i64 %27, 4, !dbg !2992
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2992
  %slice.lowcap = or i1 %slice.lowmax, false, !dbg !2992
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2992

slice.next:                                       ; preds = %if.then1
  %slice.len = sub i64 %27, 0, !dbg !2992
  %slice.ptr35 = getelementptr inbounds [4 x i8], ptr %runeTmp, i32 0, i64 0, !dbg !2992
  %28 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr35, 0, !dbg !2992
  %29 = insertvalue { ptr, i64, i64 } %28, i64 %slice.len, 1, !dbg !2992
  %30 = insertvalue { ptr, i64, i64 } %29, i64 4, 2, !dbg !2992
  %append.srcBuf36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2993
  %append.srcLen37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2993
  %append.srcCap38 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2993
  %append.elemsBuf39 = extractvalue { ptr, i64, i64 } %30, 0, !dbg !2993
  %append.elemsLen40 = extractvalue { ptr, i64, i64 } %30, 1, !dbg !2993
  %append.new41 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf36, ptr %append.elemsBuf39, i64 %append.srcLen37, i64 %append.srcCap38, i64 %append.elemsLen40, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2993
  %append.newPtr42 = extractvalue { ptr, i64, i64 } %append.new41, 0, !dbg !2993
  %append.newLen43 = extractvalue { ptr, i64, i64 } %append.new41, 1, !dbg !2993
  %append.newCap44 = extractvalue { ptr, i64, i64 } %append.new41, 2, !dbg !2993
  %31 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr42, 0, !dbg !2993
  %32 = insertvalue { ptr, i64, i64 } %31, i64 %append.newLen43, 1, !dbg !2993
  %33 = insertvalue { ptr, i64, i64 } %32, i64 %append.newCap44, 2, !dbg !2993
    #dbg_value({ ptr, i64, i64 } %33, !2960, !DIExpression(), !2994)
    #dbg_value({ ptr, i64, i64 } %33, !2960, !DIExpression(), !2995)
  ret { ptr, i64, i64 } %33, !dbg !2996

if.done2:                                         ; preds = %if.done
    #dbg_value(i32 %r, !2961, !DIExpression(), !2997)
  %34 = icmp eq i32 %r, 7, !dbg !2998
  br i1 %34, label %switch.body, label %switch.next, !dbg !2969

switch.body:                                      ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } %2, !2960, !DIExpression(), !2999)
  %append.srcBuf45 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3000
  %append.srcLen46 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3000
  %append.srcCap47 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3000
  %append.new48 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf45, ptr @"internal/reflectlite$string.23", i64 %append.srcLen46, i64 %append.srcCap47, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3000
  %append.newPtr49 = extractvalue { ptr, i64, i64 } %append.new48, 0, !dbg !3000
  %append.newLen50 = extractvalue { ptr, i64, i64 } %append.new48, 1, !dbg !3000
  %append.newCap51 = extractvalue { ptr, i64, i64 } %append.new48, 2, !dbg !3000
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr49, 0, !dbg !3000
  %36 = insertvalue { ptr, i64, i64 } %35, i64 %append.newLen50, 1, !dbg !3000
  %37 = insertvalue { ptr, i64, i64 } %36, i64 %append.newCap51, 2, !dbg !3000
    #dbg_value({ ptr, i64, i64 } %37, !2960, !DIExpression(), !3001)
  br label %switch.done, !dbg !2969

switch.done:                                      ; preds = %for.loop21, %for.loop, %lookup.next113, %switch.body13, %switch.body11, %switch.body9, %switch.body7, %switch.body5, %switch.body3, %switch.body
  %38 = phi { ptr, i64, i64 } [ %37, %switch.body ], [ %42, %switch.body3 ], [ %46, %switch.body5 ], [ %50, %switch.body7 ], [ %54, %switch.body9 ], [ %58, %switch.body11 ], [ %62, %switch.body13 ], [ %93, %lookup.next113 ], [ %100, %for.loop ], [ %122, %for.loop21 ], !dbg !3002
    #dbg_value({ ptr, i64, i64 } %38, !2960, !DIExpression(), !3003)
  ret { ptr, i64, i64 } %38, !dbg !3004

switch.next:                                      ; preds = %if.done2
  %39 = icmp eq i32 %r, 8, !dbg !3005
  br i1 %39, label %switch.body3, label %switch.next4, !dbg !2969

switch.body3:                                     ; preds = %switch.next
    #dbg_value({ ptr, i64, i64 } %2, !2960, !DIExpression(), !3006)
  %append.srcBuf52 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3007
  %append.srcLen53 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3007
  %append.srcCap54 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3007
  %append.new55 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf52, ptr @"internal/reflectlite$string.24", i64 %append.srcLen53, i64 %append.srcCap54, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3007
  %append.newPtr56 = extractvalue { ptr, i64, i64 } %append.new55, 0, !dbg !3007
  %append.newLen57 = extractvalue { ptr, i64, i64 } %append.new55, 1, !dbg !3007
  %append.newCap58 = extractvalue { ptr, i64, i64 } %append.new55, 2, !dbg !3007
  %40 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr56, 0, !dbg !3007
  %41 = insertvalue { ptr, i64, i64 } %40, i64 %append.newLen57, 1, !dbg !3007
  %42 = insertvalue { ptr, i64, i64 } %41, i64 %append.newCap58, 2, !dbg !3007
    #dbg_value({ ptr, i64, i64 } %42, !2960, !DIExpression(), !3008)
  br label %switch.done, !dbg !2969

switch.next4:                                     ; preds = %switch.next
  %43 = icmp eq i32 %r, 12, !dbg !3009
  br i1 %43, label %switch.body5, label %switch.next6, !dbg !2969

switch.body5:                                     ; preds = %switch.next4
    #dbg_value({ ptr, i64, i64 } %2, !2960, !DIExpression(), !3010)
  %append.srcBuf59 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3011
  %append.srcLen60 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3011
  %append.srcCap61 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3011
  %append.new62 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf59, ptr @"internal/reflectlite$string.25", i64 %append.srcLen60, i64 %append.srcCap61, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3011
  %append.newPtr63 = extractvalue { ptr, i64, i64 } %append.new62, 0, !dbg !3011
  %append.newLen64 = extractvalue { ptr, i64, i64 } %append.new62, 1, !dbg !3011
  %append.newCap65 = extractvalue { ptr, i64, i64 } %append.new62, 2, !dbg !3011
  %44 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr63, 0, !dbg !3011
  %45 = insertvalue { ptr, i64, i64 } %44, i64 %append.newLen64, 1, !dbg !3011
  %46 = insertvalue { ptr, i64, i64 } %45, i64 %append.newCap65, 2, !dbg !3011
    #dbg_value({ ptr, i64, i64 } %46, !2960, !DIExpression(), !3012)
  br label %switch.done, !dbg !2969

switch.next6:                                     ; preds = %switch.next4
  %47 = icmp eq i32 %r, 10, !dbg !3013
  br i1 %47, label %switch.body7, label %switch.next8, !dbg !2969

switch.body7:                                     ; preds = %switch.next6
    #dbg_value({ ptr, i64, i64 } %2, !2960, !DIExpression(), !3014)
  %append.srcBuf66 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3015
  %append.srcLen67 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3015
  %append.srcCap68 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3015
  %append.new69 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf66, ptr @"internal/reflectlite$string.26", i64 %append.srcLen67, i64 %append.srcCap68, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3015
  %append.newPtr70 = extractvalue { ptr, i64, i64 } %append.new69, 0, !dbg !3015
  %append.newLen71 = extractvalue { ptr, i64, i64 } %append.new69, 1, !dbg !3015
  %append.newCap72 = extractvalue { ptr, i64, i64 } %append.new69, 2, !dbg !3015
  %48 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr70, 0, !dbg !3015
  %49 = insertvalue { ptr, i64, i64 } %48, i64 %append.newLen71, 1, !dbg !3015
  %50 = insertvalue { ptr, i64, i64 } %49, i64 %append.newCap72, 2, !dbg !3015
    #dbg_value({ ptr, i64, i64 } %50, !2960, !DIExpression(), !3016)
  br label %switch.done, !dbg !2969

switch.next8:                                     ; preds = %switch.next6
  %51 = icmp eq i32 %r, 13, !dbg !3017
  br i1 %51, label %switch.body9, label %switch.next10, !dbg !2969

switch.body9:                                     ; preds = %switch.next8
    #dbg_value({ ptr, i64, i64 } %2, !2960, !DIExpression(), !3018)
  %append.srcBuf73 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3019
  %append.srcLen74 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3019
  %append.srcCap75 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3019
  %append.new76 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf73, ptr @"internal/reflectlite$string.27", i64 %append.srcLen74, i64 %append.srcCap75, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3019
  %append.newPtr77 = extractvalue { ptr, i64, i64 } %append.new76, 0, !dbg !3019
  %append.newLen78 = extractvalue { ptr, i64, i64 } %append.new76, 1, !dbg !3019
  %append.newCap79 = extractvalue { ptr, i64, i64 } %append.new76, 2, !dbg !3019
  %52 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr77, 0, !dbg !3019
  %53 = insertvalue { ptr, i64, i64 } %52, i64 %append.newLen78, 1, !dbg !3019
  %54 = insertvalue { ptr, i64, i64 } %53, i64 %append.newCap79, 2, !dbg !3019
    #dbg_value({ ptr, i64, i64 } %54, !2960, !DIExpression(), !3020)
  br label %switch.done, !dbg !2969

switch.next10:                                    ; preds = %switch.next8
  %55 = icmp eq i32 %r, 9, !dbg !3021
  br i1 %55, label %switch.body11, label %switch.next12, !dbg !2969

switch.body11:                                    ; preds = %switch.next10
    #dbg_value({ ptr, i64, i64 } %2, !2960, !DIExpression(), !3022)
  %append.srcBuf80 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3023
  %append.srcLen81 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3023
  %append.srcCap82 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3023
  %append.new83 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf80, ptr @"internal/reflectlite$string.28", i64 %append.srcLen81, i64 %append.srcCap82, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3023
  %append.newPtr84 = extractvalue { ptr, i64, i64 } %append.new83, 0, !dbg !3023
  %append.newLen85 = extractvalue { ptr, i64, i64 } %append.new83, 1, !dbg !3023
  %append.newCap86 = extractvalue { ptr, i64, i64 } %append.new83, 2, !dbg !3023
  %56 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr84, 0, !dbg !3023
  %57 = insertvalue { ptr, i64, i64 } %56, i64 %append.newLen85, 1, !dbg !3023
  %58 = insertvalue { ptr, i64, i64 } %57, i64 %append.newCap86, 2, !dbg !3023
    #dbg_value({ ptr, i64, i64 } %58, !2960, !DIExpression(), !3024)
  br label %switch.done, !dbg !2969

switch.next12:                                    ; preds = %switch.next10
  %59 = icmp eq i32 %r, 11, !dbg !3025
  br i1 %59, label %switch.body13, label %switch.next14, !dbg !2969

switch.body13:                                    ; preds = %switch.next12
    #dbg_value({ ptr, i64, i64 } %2, !2960, !DIExpression(), !3026)
  %append.srcBuf87 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3027
  %append.srcLen88 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3027
  %append.srcCap89 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3027
  %append.new90 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf87, ptr @"internal/reflectlite$string.29", i64 %append.srcLen88, i64 %append.srcCap89, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3027
  %append.newPtr91 = extractvalue { ptr, i64, i64 } %append.new90, 0, !dbg !3027
  %append.newLen92 = extractvalue { ptr, i64, i64 } %append.new90, 1, !dbg !3027
  %append.newCap93 = extractvalue { ptr, i64, i64 } %append.new90, 2, !dbg !3027
  %60 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr91, 0, !dbg !3027
  %61 = insertvalue { ptr, i64, i64 } %60, i64 %append.newLen92, 1, !dbg !3027
  %62 = insertvalue { ptr, i64, i64 } %61, i64 %append.newCap93, 2, !dbg !3027
    #dbg_value({ ptr, i64, i64 } %62, !2960, !DIExpression(), !3028)
  br label %switch.done, !dbg !2969

switch.next14:                                    ; preds = %switch.next12
    #dbg_value(i32 %r, !2961, !DIExpression(), !3029)
  %63 = icmp slt i32 %r, 32, !dbg !3030
  br i1 %63, label %binop.done, label %binop.rhs, !dbg !2969

binop.done:                                       ; preds = %binop.rhs, %switch.next14
  %64 = phi i1 [ true, %switch.next14 ], [ %140, %binop.rhs ], !dbg !3031
  br i1 %64, label %switch.body15, label %switch.next16, !dbg !2969

switch.body15:                                    ; preds = %binop.done
    #dbg_value({ ptr, i64, i64 } %2, !2960, !DIExpression(), !3032)
  %append.srcBuf94 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3033
  %append.srcLen95 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3033
  %append.srcCap96 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3033
  %append.new97 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf94, ptr @"internal/reflectlite$string.30", i64 %append.srcLen95, i64 %append.srcCap96, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3033
  %append.newPtr98 = extractvalue { ptr, i64, i64 } %append.new97, 0, !dbg !3033
  %append.newLen99 = extractvalue { ptr, i64, i64 } %append.new97, 1, !dbg !3033
  %append.newCap100 = extractvalue { ptr, i64, i64 } %append.new97, 2, !dbg !3033
  %65 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr98, 0, !dbg !3033
  %66 = insertvalue { ptr, i64, i64 } %65, i64 %append.newLen99, 1, !dbg !3033
  %67 = insertvalue { ptr, i64, i64 } %66, i64 %append.newCap100, 2, !dbg !3033
    #dbg_value({ ptr, i64, i64 } %67, !2960, !DIExpression(), !3034)
    #dbg_value({ ptr, i64, i64 } %67, !2960, !DIExpression(), !3035)
    #dbg_value(i32 %r, !2961, !DIExpression(), !3036)
  %68 = trunc i32 %r to i8, !dbg !3037
  %69 = lshr i8 %68, 4, !dbg !3038
  %shift.result = select i1 false, i8 0, i8 %69, !dbg !3038
  %70 = zext i8 %shift.result to i64, !dbg !3039
  %71 = icmp uge i64 %70, 15, !dbg !3039
  br i1 %71, label %lookup.throw, label %lookup.next, !dbg !3039

lookup.next:                                      ; preds = %switch.body15
  %72 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.31", i64 %70, !dbg !3039
  %73 = load i8, ptr %72, align 1, !dbg !3039
  %varargs101 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3040
  %74 = getelementptr inbounds [1 x i8], ptr %varargs101, i32 0, i64 0, !dbg !3040
  store i8 %73, ptr %74, align 1, !dbg !3039
  %slice.ptr102 = getelementptr inbounds [1 x i8], ptr %varargs101, i32 0, i64 0, !dbg !3040
  %75 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr102, 0, !dbg !3040
  %76 = insertvalue { ptr, i64, i64 } %75, i64 1, 1, !dbg !3040
  %77 = insertvalue { ptr, i64, i64 } %76, i64 1, 2, !dbg !3040
  %append.srcBuf103 = extractvalue { ptr, i64, i64 } %67, 0, !dbg !3041
  %append.srcLen104 = extractvalue { ptr, i64, i64 } %67, 1, !dbg !3041
  %append.srcCap105 = extractvalue { ptr, i64, i64 } %67, 2, !dbg !3041
  %append.elemsBuf106 = extractvalue { ptr, i64, i64 } %77, 0, !dbg !3041
  %append.elemsLen107 = extractvalue { ptr, i64, i64 } %77, 1, !dbg !3041
  %append.new108 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf103, ptr %append.elemsBuf106, i64 %append.srcLen104, i64 %append.srcCap105, i64 %append.elemsLen107, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3041
  %append.newPtr109 = extractvalue { ptr, i64, i64 } %append.new108, 0, !dbg !3041
  %append.newLen110 = extractvalue { ptr, i64, i64 } %append.new108, 1, !dbg !3041
  %append.newCap111 = extractvalue { ptr, i64, i64 } %append.new108, 2, !dbg !3041
  %78 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr109, 0, !dbg !3041
  %79 = insertvalue { ptr, i64, i64 } %78, i64 %append.newLen110, 1, !dbg !3041
  %80 = insertvalue { ptr, i64, i64 } %79, i64 %append.newCap111, 2, !dbg !3041
    #dbg_value({ ptr, i64, i64 } %80, !2960, !DIExpression(), !3042)
    #dbg_value({ ptr, i64, i64 } %80, !2960, !DIExpression(), !3043)
    #dbg_value(i32 %r, !2961, !DIExpression(), !3044)
  %81 = trunc i32 %r to i8, !dbg !3045
  %82 = and i8 %81, 15, !dbg !3046
  %83 = zext i8 %82 to i64, !dbg !3047
  %84 = icmp uge i64 %83, 15, !dbg !3047
  br i1 %84, label %lookup.throw112, label %lookup.next113, !dbg !3047

lookup.next113:                                   ; preds = %lookup.next
  %85 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.32", i64 %83, !dbg !3047
  %86 = load i8, ptr %85, align 1, !dbg !3047
  %varargs114 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3048
  %87 = getelementptr inbounds [1 x i8], ptr %varargs114, i32 0, i64 0, !dbg !3048
  store i8 %86, ptr %87, align 1, !dbg !3047
  %slice.ptr115 = getelementptr inbounds [1 x i8], ptr %varargs114, i32 0, i64 0, !dbg !3048
  %88 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr115, 0, !dbg !3048
  %89 = insertvalue { ptr, i64, i64 } %88, i64 1, 1, !dbg !3048
  %90 = insertvalue { ptr, i64, i64 } %89, i64 1, 2, !dbg !3048
  %append.srcBuf116 = extractvalue { ptr, i64, i64 } %80, 0, !dbg !3049
  %append.srcLen117 = extractvalue { ptr, i64, i64 } %80, 1, !dbg !3049
  %append.srcCap118 = extractvalue { ptr, i64, i64 } %80, 2, !dbg !3049
  %append.elemsBuf119 = extractvalue { ptr, i64, i64 } %90, 0, !dbg !3049
  %append.elemsLen120 = extractvalue { ptr, i64, i64 } %90, 1, !dbg !3049
  %append.new121 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf116, ptr %append.elemsBuf119, i64 %append.srcLen117, i64 %append.srcCap118, i64 %append.elemsLen120, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3049
  %append.newPtr122 = extractvalue { ptr, i64, i64 } %append.new121, 0, !dbg !3049
  %append.newLen123 = extractvalue { ptr, i64, i64 } %append.new121, 1, !dbg !3049
  %append.newCap124 = extractvalue { ptr, i64, i64 } %append.new121, 2, !dbg !3049
  %91 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr122, 0, !dbg !3049
  %92 = insertvalue { ptr, i64, i64 } %91, i64 %append.newLen123, 1, !dbg !3049
  %93 = insertvalue { ptr, i64, i64 } %92, i64 %append.newCap124, 2, !dbg !3049
    #dbg_value({ ptr, i64, i64 } %93, !2960, !DIExpression(), !3050)
  br label %switch.done, !dbg !2969

switch.next16:                                    ; preds = %binop.done
    #dbg_value(i32 %r, !2961, !DIExpression(), !3051)
  %94 = call i1 @"unicode/utf8.ValidRune"(i32 %r, ptr undef), !dbg !3052
  %95 = xor i1 %94, true, !dbg !3053
  br i1 %95, label %switch.body17, label %switch.next19, !dbg !2969

switch.body17:                                    ; preds = %switch.next16
    #dbg_value(i32 65533, !2961, !DIExpression(), !3054)
  br label %switch.body18, !dbg !2969

switch.body18:                                    ; preds = %switch.next19, %switch.body17
  %96 = phi i32 [ 65533, %switch.body17 ], [ %r, %switch.next19 ], !dbg !3055
    #dbg_value({ ptr, i64, i64 } %2, !2960, !DIExpression(), !3056)
  %append.srcBuf125 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3057
  %append.srcLen126 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3057
  %append.srcCap127 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3057
  %append.new128 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf125, ptr @"internal/reflectlite$string.33", i64 %append.srcLen126, i64 %append.srcCap127, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3057
  %append.newPtr129 = extractvalue { ptr, i64, i64 } %append.new128, 0, !dbg !3057
  %append.newLen130 = extractvalue { ptr, i64, i64 } %append.new128, 1, !dbg !3057
  %append.newCap131 = extractvalue { ptr, i64, i64 } %append.new128, 2, !dbg !3057
  %97 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr129, 0, !dbg !3057
  %98 = insertvalue { ptr, i64, i64 } %97, i64 %append.newLen130, 1, !dbg !3057
  %99 = insertvalue { ptr, i64, i64 } %98, i64 %append.newCap131, 2, !dbg !3057
    #dbg_value({ ptr, i64, i64 } %99, !2960, !DIExpression(), !3058)
    #dbg_value(i64 12, !2963, !DIExpression(), !3059)
  br label %for.loop, !dbg !2969

for.loop:                                         ; preds = %lookup.next133, %switch.body18
  %100 = phi { ptr, i64, i64 } [ %99, %switch.body18 ], [ %116, %lookup.next133 ], !dbg !3002
  %101 = phi i64 [ 12, %switch.body18 ], [ %117, %lookup.next133 ], !dbg !3059
    #dbg_value(i64 %101, !2963, !DIExpression(), !3060)
  %102 = icmp sge i64 %101, 0, !dbg !3061
  br i1 %102, label %for.body, label %switch.done, !dbg !2969

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %100, !2960, !DIExpression(), !3062)
    #dbg_value(i32 %96, !2961, !DIExpression(), !3063)
    #dbg_value(i64 %101, !2963, !DIExpression(), !3064)
  %shift.overflow = icmp uge i64 %101, 32, !dbg !3065
  %103 = trunc i64 %101 to i32, !dbg !3065
  %shift.offset = select i1 %shift.overflow, i32 31, i32 %103, !dbg !3065
  %104 = ashr i32 %96, %shift.offset, !dbg !3065
  %105 = and i32 %104, 15, !dbg !3066
  %106 = sext i32 %105 to i64, !dbg !3067
  %107 = icmp uge i64 %106, 15, !dbg !3067
  br i1 %107, label %lookup.throw132, label %lookup.next133, !dbg !3067

lookup.next133:                                   ; preds = %for.body
  %108 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.34", i64 %106, !dbg !3067
  %109 = load i8, ptr %108, align 1, !dbg !3067
  %varargs134 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3068
  %110 = getelementptr inbounds [1 x i8], ptr %varargs134, i32 0, i64 0, !dbg !3068
  store i8 %109, ptr %110, align 1, !dbg !3067
  %slice.ptr135 = getelementptr inbounds [1 x i8], ptr %varargs134, i32 0, i64 0, !dbg !3068
  %111 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr135, 0, !dbg !3068
  %112 = insertvalue { ptr, i64, i64 } %111, i64 1, 1, !dbg !3068
  %113 = insertvalue { ptr, i64, i64 } %112, i64 1, 2, !dbg !3068
  %append.srcBuf136 = extractvalue { ptr, i64, i64 } %100, 0, !dbg !3069
  %append.srcLen137 = extractvalue { ptr, i64, i64 } %100, 1, !dbg !3069
  %append.srcCap138 = extractvalue { ptr, i64, i64 } %100, 2, !dbg !3069
  %append.elemsBuf139 = extractvalue { ptr, i64, i64 } %113, 0, !dbg !3069
  %append.elemsLen140 = extractvalue { ptr, i64, i64 } %113, 1, !dbg !3069
  %append.new141 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf136, ptr %append.elemsBuf139, i64 %append.srcLen137, i64 %append.srcCap138, i64 %append.elemsLen140, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3069
  %append.newPtr142 = extractvalue { ptr, i64, i64 } %append.new141, 0, !dbg !3069
  %append.newLen143 = extractvalue { ptr, i64, i64 } %append.new141, 1, !dbg !3069
  %append.newCap144 = extractvalue { ptr, i64, i64 } %append.new141, 2, !dbg !3069
  %114 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr142, 0, !dbg !3069
  %115 = insertvalue { ptr, i64, i64 } %114, i64 %append.newLen143, 1, !dbg !3069
  %116 = insertvalue { ptr, i64, i64 } %115, i64 %append.newCap144, 2, !dbg !3069
    #dbg_value({ ptr, i64, i64 } %116, !2960, !DIExpression(), !3070)
  %117 = sub i64 %101, 4, !dbg !3071
    #dbg_value(i64 %117, !2963, !DIExpression(), !3071)
  br label %for.loop, !dbg !2969

switch.next19:                                    ; preds = %switch.next16
    #dbg_value(i32 %r, !2961, !DIExpression(), !3072)
  %118 = icmp slt i32 %r, 65536, !dbg !3073
  br i1 %118, label %switch.body18, label %switch.next20, !dbg !2969

switch.next20:                                    ; preds = %switch.next19
    #dbg_value({ ptr, i64, i64 } %2, !2960, !DIExpression(), !3074)
  %append.srcBuf145 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3075
  %append.srcLen146 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3075
  %append.srcCap147 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3075
  %append.new148 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf145, ptr @"internal/reflectlite$string.35", i64 %append.srcLen146, i64 %append.srcCap147, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3075
  %append.newPtr149 = extractvalue { ptr, i64, i64 } %append.new148, 0, !dbg !3075
  %append.newLen150 = extractvalue { ptr, i64, i64 } %append.new148, 1, !dbg !3075
  %append.newCap151 = extractvalue { ptr, i64, i64 } %append.new148, 2, !dbg !3075
  %119 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr149, 0, !dbg !3075
  %120 = insertvalue { ptr, i64, i64 } %119, i64 %append.newLen150, 1, !dbg !3075
  %121 = insertvalue { ptr, i64, i64 } %120, i64 %append.newCap151, 2, !dbg !3075
    #dbg_value({ ptr, i64, i64 } %121, !2960, !DIExpression(), !3076)
    #dbg_value(i64 28, !2964, !DIExpression(), !3077)
  br label %for.loop21, !dbg !2969

for.loop21:                                       ; preds = %lookup.next155, %switch.next20
  %122 = phi { ptr, i64, i64 } [ %121, %switch.next20 ], [ %138, %lookup.next155 ], !dbg !3002
  %123 = phi i64 [ 28, %switch.next20 ], [ %139, %lookup.next155 ], !dbg !3077
    #dbg_value(i64 %123, !2964, !DIExpression(), !3078)
  %124 = icmp sge i64 %123, 0, !dbg !3079
  br i1 %124, label %for.body22, label %switch.done, !dbg !2969

for.body22:                                       ; preds = %for.loop21
    #dbg_value({ ptr, i64, i64 } %122, !2960, !DIExpression(), !3080)
    #dbg_value(i32 %r, !2961, !DIExpression(), !3081)
    #dbg_value(i64 %123, !2964, !DIExpression(), !3082)
  %shift.overflow152 = icmp uge i64 %123, 32, !dbg !3083
  %125 = trunc i64 %123 to i32, !dbg !3083
  %shift.offset153 = select i1 %shift.overflow152, i32 31, i32 %125, !dbg !3083
  %126 = ashr i32 %r, %shift.offset153, !dbg !3083
  %127 = and i32 %126, 15, !dbg !3084
  %128 = sext i32 %127 to i64, !dbg !3085
  %129 = icmp uge i64 %128, 15, !dbg !3085
  br i1 %129, label %lookup.throw154, label %lookup.next155, !dbg !3085

lookup.next155:                                   ; preds = %for.body22
  %130 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.36", i64 %128, !dbg !3085
  %131 = load i8, ptr %130, align 1, !dbg !3085
  %varargs156 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3086
  %132 = getelementptr inbounds [1 x i8], ptr %varargs156, i32 0, i64 0, !dbg !3086
  store i8 %131, ptr %132, align 1, !dbg !3085
  %slice.ptr157 = getelementptr inbounds [1 x i8], ptr %varargs156, i32 0, i64 0, !dbg !3086
  %133 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr157, 0, !dbg !3086
  %134 = insertvalue { ptr, i64, i64 } %133, i64 1, 1, !dbg !3086
  %135 = insertvalue { ptr, i64, i64 } %134, i64 1, 2, !dbg !3086
  %append.srcBuf158 = extractvalue { ptr, i64, i64 } %122, 0, !dbg !3087
  %append.srcLen159 = extractvalue { ptr, i64, i64 } %122, 1, !dbg !3087
  %append.srcCap160 = extractvalue { ptr, i64, i64 } %122, 2, !dbg !3087
  %append.elemsBuf161 = extractvalue { ptr, i64, i64 } %135, 0, !dbg !3087
  %append.elemsLen162 = extractvalue { ptr, i64, i64 } %135, 1, !dbg !3087
  %append.new163 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf158, ptr %append.elemsBuf161, i64 %append.srcLen159, i64 %append.srcCap160, i64 %append.elemsLen162, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3087
  %append.newPtr164 = extractvalue { ptr, i64, i64 } %append.new163, 0, !dbg !3087
  %append.newLen165 = extractvalue { ptr, i64, i64 } %append.new163, 1, !dbg !3087
  %append.newCap166 = extractvalue { ptr, i64, i64 } %append.new163, 2, !dbg !3087
  %136 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr164, 0, !dbg !3087
  %137 = insertvalue { ptr, i64, i64 } %136, i64 %append.newLen165, 1, !dbg !3087
  %138 = insertvalue { ptr, i64, i64 } %137, i64 %append.newCap166, 2, !dbg !3087
    #dbg_value({ ptr, i64, i64 } %138, !2960, !DIExpression(), !3088)
  %139 = sub i64 %123, 4, !dbg !3089
    #dbg_value(i64 %139, !2964, !DIExpression(), !3089)
  br label %for.loop21, !dbg !2969

binop.rhs:                                        ; preds = %switch.next14
    #dbg_value(i32 %r, !2961, !DIExpression(), !3090)
  %140 = icmp eq i32 %r, 127, !dbg !3091
  br label %binop.done, !dbg !2969

slice.throw:                                      ; preds = %if.then1
  call void @runtime.slicePanic(ptr undef), !dbg !2992
  unreachable, !dbg !2992

lookup.throw:                                     ; preds = %switch.body15
  call void @runtime.lookupPanic(ptr undef), !dbg !3039
  unreachable, !dbg !3039

lookup.throw112:                                  ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !3047
  unreachable, !dbg !3047

lookup.throw132:                                  ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !3067
  unreachable, !dbg !3067

lookup.throw154:                                  ; preds = %for.body22
  call void @runtime.lookupPanic(ptr undef), !dbg !3085
  unreachable, !dbg !3085
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"internal/reflectlite.isPrint"(i32 %r, ptr %context) unnamed_addr #1 !dbg !3092 {
entry:
    #dbg_value(i32 %r, !3094, !DIExpression(), !3095)
    #dbg_value(i32 %r, !3094, !DIExpression(), !3096)
  %0 = icmp sle i32 %r, 255, !dbg !3097
  br i1 %0, label %if.then, label %if.done5, !dbg !3098

if.then:                                          ; preds = %entry
    #dbg_value(i32 %r, !3094, !DIExpression(), !3099)
  %1 = icmp sle i32 32, %r, !dbg !3100
  br i1 %1, label %cond.true, label %if.done, !dbg !3098

cond.true:                                        ; preds = %if.then
    #dbg_value(i32 %r, !3094, !DIExpression(), !3101)
  %2 = icmp sle i32 %r, 126, !dbg !3102
  br i1 %2, label %if.then1, label %if.done, !dbg !3098

if.then1:                                         ; preds = %cond.true
  ret i1 true, !dbg !3103

if.done:                                          ; preds = %cond.true, %if.then
    #dbg_value(i32 %r, !3094, !DIExpression(), !3104)
  %3 = icmp sle i32 161, %r, !dbg !3105
  br i1 %3, label %cond.true2, label %if.done4, !dbg !3098

cond.true2:                                       ; preds = %if.done
    #dbg_value(i32 %r, !3094, !DIExpression(), !3106)
  %4 = icmp sle i32 %r, 255, !dbg !3107
  br i1 %4, label %if.then3, label %if.done4, !dbg !3098

if.then3:                                         ; preds = %cond.true2
    #dbg_value(i32 %r, !3094, !DIExpression(), !3108)
  %5 = icmp ne i32 %r, 173, !dbg !3109
  ret i1 %5, !dbg !3110

if.done4:                                         ; preds = %cond.true2, %if.done
  ret i1 false, !dbg !3111

if.done5:                                         ; preds = %entry
  ret i1 false, !dbg !3112
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
define internal %runtime._string @"(internal/reflectlite.Kind).String$invoke"(ptr %0, ptr %1) unnamed_addr #1 !dbg !3113 {
entry:
  %unpack.int = ptrtoint ptr %0 to i8, !dbg !3114
  %ret = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %unpack.int, ptr %1), !dbg !3114
  ret %runtime._string %ret, !dbg !3114
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.ValueError).Error"(ptr dereferenceable_or_null(24) %e, ptr %context) unnamed_addr #1 !dbg !3115 {
entry:
    #dbg_value(ptr %e, !3124, !DIExpression(), !3125)
    #dbg_value(ptr %e, !3124, !DIExpression(), !3126)
  %0 = icmp eq ptr %e, null, !dbg !3127
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3127

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 1, !dbg !3127
  %2 = icmp eq ptr %1, null, !dbg !3127
  br i1 %2, label %deref.throw, label %deref.next, !dbg !3127

deref.next:                                       ; preds = %gep.next
  %3 = load i8, ptr %1, align 1, !dbg !3127
  %4 = icmp eq i8 %3, 0, !dbg !3128
  br i1 %4, label %if.then, label %if.done, !dbg !3129

if.then:                                          ; preds = %deref.next
    #dbg_value(ptr %e, !3124, !DIExpression(), !3130)
  %5 = icmp eq ptr %e, null, !dbg !3131
  br i1 %5, label %gep.throw1, label %gep.next2, !dbg !3131

gep.next2:                                        ; preds = %if.then
  %6 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 0, !dbg !3131
  %7 = icmp eq ptr %6, null, !dbg !3131
  br i1 %7, label %deref.throw3, label %deref.next4, !dbg !3131

deref.next4:                                      ; preds = %gep.next2
  %8 = load %runtime._string, ptr %6, align 8, !dbg !3131
  %9 = extractvalue %runtime._string %8, 0, !dbg !3132
  %10 = extractvalue %runtime._string %8, 1, !dbg !3132
  %11 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.229", i64 17, ptr %9, i64 %10, ptr undef), !dbg !3132
  %12 = extractvalue %runtime._string %11, 0, !dbg !3133
  %13 = extractvalue %runtime._string %11, 1, !dbg !3133
  %14 = call %runtime._string @runtime.stringConcat(ptr %12, i64 %13, ptr @"internal/reflectlite$string.230", i64 14, ptr undef), !dbg !3133
  ret %runtime._string %14, !dbg !3134

if.done:                                          ; preds = %deref.next
    #dbg_value(ptr %e, !3124, !DIExpression(), !3135)
  %15 = icmp eq ptr %e, null, !dbg !3136
  br i1 %15, label %gep.throw5, label %gep.next6, !dbg !3136

gep.next6:                                        ; preds = %if.done
  %16 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 0, !dbg !3136
  %17 = icmp eq ptr %16, null, !dbg !3136
  br i1 %17, label %deref.throw7, label %deref.next8, !dbg !3136

deref.next8:                                      ; preds = %gep.next6
  %18 = load %runtime._string, ptr %16, align 8, !dbg !3136
  %19 = extractvalue %runtime._string %18, 0, !dbg !3137
  %20 = extractvalue %runtime._string %18, 1, !dbg !3137
  %21 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.231", i64 17, ptr %19, i64 %20, ptr undef), !dbg !3137
  %22 = extractvalue %runtime._string %21, 0, !dbg !3138
  %23 = extractvalue %runtime._string %21, 1, !dbg !3138
  %24 = call %runtime._string @runtime.stringConcat(ptr %22, i64 %23, ptr @"internal/reflectlite$string.232", i64 4, ptr undef), !dbg !3138
    #dbg_value(ptr %e, !3124, !DIExpression(), !3139)
  %25 = icmp eq ptr %e, null, !dbg !3140
  br i1 %25, label %gep.throw9, label %gep.next10, !dbg !3140

gep.next10:                                       ; preds = %deref.next8
  %26 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 1, !dbg !3140
  %27 = icmp eq ptr %26, null, !dbg !3140
  br i1 %27, label %deref.throw11, label %deref.next12, !dbg !3140

deref.next12:                                     ; preds = %gep.next10
  %28 = load i8, ptr %26, align 1, !dbg !3140
  %29 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %28, ptr undef), !dbg !3141
  %30 = extractvalue %runtime._string %24, 0, !dbg !3142
  %31 = extractvalue %runtime._string %24, 1, !dbg !3142
  %32 = extractvalue %runtime._string %29, 0, !dbg !3142
  %33 = extractvalue %runtime._string %29, 1, !dbg !3142
  %34 = call %runtime._string @runtime.stringConcat(ptr %30, i64 %31, ptr %32, i64 %33, ptr undef), !dbg !3142
  %35 = extractvalue %runtime._string %34, 0, !dbg !3143
  %36 = extractvalue %runtime._string %34, 1, !dbg !3143
  %37 = call %runtime._string @runtime.stringConcat(ptr %35, i64 %36, ptr @"internal/reflectlite$string.233", i64 6, ptr undef), !dbg !3143
  ret %runtime._string %37, !dbg !3144

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3127
  unreachable, !dbg !3127

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3127
  unreachable, !dbg !3127

gep.throw1:                                       ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3131
  unreachable, !dbg !3131

deref.throw3:                                     ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3131
  unreachable, !dbg !3131

gep.throw5:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3136
  unreachable, !dbg !3136

deref.throw7:                                     ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3136
  unreachable, !dbg !3136

gep.throw9:                                       ; preds = %deref.next8
  call void @runtime.nilPanic(ptr undef), !dbg !3140
  unreachable, !dbg !3140

deref.throw11:                                    ; preds = %gep.next10
  call void @runtime.nilPanic(ptr undef), !dbg !3140
  unreachable, !dbg !3140
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr %context) unnamed_addr #1 !dbg !3145 {
entry:
  ret %runtime._string { ptr @"internal/reflectlite$string.17", i64 14 }, !dbg !3150
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.badSyntax).Error"(ptr %arg0, ptr %context) unnamed_addr #1 {
entry:
  %0 = call %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr undef)
  ret %runtime._string %0
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.badSyntax).Error$invoke"(ptr %0, ptr %1) unnamed_addr #1 !dbg !3151 {
entry:
  %ret = call %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr %1), !dbg !3152
  ret %runtime._string %ret, !dbg !3152
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"runtime/interrupt.In"(ptr %context) #1 !dbg !3153 {
entry:
  ret i1 false, !dbg !3156
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Mutex).Lock"(ptr dereferenceable_or_null(4) %m, ptr %context) #1 !dbg !3157 {
entry:
    #dbg_value(ptr %m, !3162, !DIExpression(), !3163)
    #dbg_value(ptr %m, !3162, !DIExpression(), !3164)
  %0 = icmp eq ptr %m, null, !dbg !3165
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3165

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3165
  %2 = icmp eq ptr %1, null, !dbg !3164
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3164

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3164
  %4 = call i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr %3, i32 0, i32 1, ptr undef), !dbg !3166
  br i1 %4, label %if.then, label %for.loop, !dbg !3167

if.then:                                          ; preds = %gep.next2
  ret void, !dbg !3168

for.loop:                                         ; preds = %gep.next8, %gep.next2
    #dbg_value(ptr %m, !3162, !DIExpression(), !3169)
  %5 = icmp eq ptr %m, null, !dbg !3170
  br i1 %5, label %gep.throw3, label %gep.next4, !dbg !3170

gep.next4:                                        ; preds = %for.loop
  %6 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3170
  %7 = icmp eq ptr %6, null, !dbg !3169
  br i1 %7, label %gep.throw5, label %gep.next6, !dbg !3169

gep.next6:                                        ; preds = %gep.next4
  %8 = getelementptr inbounds %"internal/futex.Futex", ptr %6, i32 0, i32 0, !dbg !3169
  %9 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr %8, i32 2, ptr undef), !dbg !3171
  %10 = icmp ne i32 %9, 0, !dbg !3172
  br i1 %10, label %for.body, label %for.done, !dbg !3167

for.body:                                         ; preds = %gep.next6
    #dbg_value(ptr %m, !3162, !DIExpression(), !3173)
  %11 = icmp eq ptr %m, null, !dbg !3174
  br i1 %11, label %gep.throw7, label %gep.next8, !dbg !3174

gep.next8:                                        ; preds = %for.body
  %12 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3174
  %13 = call i1 @"(*internal/futex.Futex).Wait"(ptr %12, i32 2, ptr undef), !dbg !3175
  br label %for.loop, !dbg !3167

for.done:                                         ; preds = %gep.next6
  ret void, !dbg !3176

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3165
  unreachable, !dbg !3165

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3164
  unreachable, !dbg !3164

gep.throw3:                                       ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !3170
  unreachable, !dbg !3170

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3169
  unreachable, !dbg !3169

gep.throw7:                                       ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3174
  unreachable, !dbg !3174
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Mutex).Unlock"(ptr dereferenceable_or_null(4) %m, ptr %context) #1 !dbg !3177 {
entry:
    #dbg_value(ptr %m, !3179, !DIExpression(), !3181)
    #dbg_value(ptr %m, !3179, !DIExpression(), !3182)
  %0 = icmp eq ptr %m, null, !dbg !3183
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3183

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3183
  %2 = icmp eq ptr %1, null, !dbg !3182
  br i1 %2, label %gep.throw2, label %gep.next3, !dbg !3182

gep.next3:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3182
  %4 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr %3, i32 0, ptr undef), !dbg !3184
    #dbg_value(i32 %4, !3180, !DIExpression(), !3185)
    #dbg_value(i32 %4, !3180, !DIExpression(), !3186)
  %5 = icmp eq i32 %4, 0, !dbg !3187
  br i1 %5, label %if.then, label %if.else, !dbg !3188

if.then:                                          ; preds = %gep.next3
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"internal/task$pack", ptr undef), !dbg !3189
  unreachable, !dbg !3189

if.else:                                          ; preds = %gep.next3
    #dbg_value(i32 %4, !3180, !DIExpression(), !3190)
  %6 = icmp eq i32 %4, 2, !dbg !3191
  br i1 %6, label %if.then1, label %if.done, !dbg !3188

if.then1:                                         ; preds = %if.else
    #dbg_value(ptr %m, !3179, !DIExpression(), !3192)
  %7 = icmp eq ptr %m, null, !dbg !3193
  br i1 %7, label %gep.throw4, label %gep.next5, !dbg !3193

gep.next5:                                        ; preds = %if.then1
  %8 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3193
  call void @"(*internal/futex.Futex).Wake"(ptr %8, ptr undef), !dbg !3194
  br label %if.done, !dbg !3188

if.done:                                          ; preds = %gep.next5, %if.else
  ret void, !dbg !3195

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3183
  unreachable, !dbg !3183

gep.throw2:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3182
  unreachable, !dbg !3182

gep.throw4:                                       ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3193
  unreachable, !dbg !3193
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Semaphore).Wait"(ptr dereferenceable_or_null(4) %s, ptr %context) unnamed_addr #1 !dbg !3196 {
entry:
    #dbg_value(ptr %s, !3202, !DIExpression(), !3205)
    #dbg_value(i32 -1, !3203, !DIExpression(), !3206)
    #dbg_value(ptr %s, !3202, !DIExpression(), !3207)
  %0 = icmp eq ptr %s, null, !dbg !3208
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3208

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3208
  %2 = icmp eq ptr %1, null, !dbg !3207
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3207

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3207
    #dbg_value(i32 -1, !3203, !DIExpression(), !3209)
  %4 = call i32 @"(*sync/atomic.Uint32).Add"(ptr %3, i32 -1, ptr undef), !dbg !3210
    #dbg_value(i32 %4, !3204, !DIExpression(), !3211)
  br label %for.body, !dbg !3212

for.body:                                         ; preds = %gep.next8, %gep.next2
  %5 = phi i32 [ %4, %gep.next2 ], [ %14, %gep.next8 ], !dbg !3211
    #dbg_value(i32 %5, !3204, !DIExpression(), !3213)
  %6 = icmp sge i32 %5, 0, !dbg !3214
  br i1 %6, label %if.then, label %if.done, !dbg !3212

if.then:                                          ; preds = %for.body
  ret void, !dbg !3215

if.done:                                          ; preds = %for.body
    #dbg_value(ptr %s, !3202, !DIExpression(), !3216)
  %7 = icmp eq ptr %s, null, !dbg !3217
  br i1 %7, label %gep.throw3, label %gep.next4, !dbg !3217

gep.next4:                                        ; preds = %if.done
  %8 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3217
    #dbg_value(i32 %5, !3204, !DIExpression(), !3218)
  %9 = call i1 @"(*internal/futex.Futex).Wait"(ptr %8, i32 %5, ptr undef), !dbg !3219
    #dbg_value(ptr %s, !3202, !DIExpression(), !3220)
  %10 = icmp eq ptr %s, null, !dbg !3221
  br i1 %10, label %gep.throw5, label %gep.next6, !dbg !3221

gep.next6:                                        ; preds = %gep.next4
  %11 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3221
  %12 = icmp eq ptr %11, null, !dbg !3220
  br i1 %12, label %gep.throw7, label %gep.next8, !dbg !3220

gep.next8:                                        ; preds = %gep.next6
  %13 = getelementptr inbounds %"internal/futex.Futex", ptr %11, i32 0, i32 0, !dbg !3220
  %14 = call i32 @"(*sync/atomic.Uint32).Load"(ptr %13, ptr undef), !dbg !3222
    #dbg_value(i32 %14, !3204, !DIExpression(), !3223)
  br label %for.body, !dbg !3212

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3208
  unreachable, !dbg !3208

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3207
  unreachable, !dbg !3207

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3217
  unreachable, !dbg !3217

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3221
  unreachable, !dbg !3221

gep.throw7:                                       ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3220
  unreachable, !dbg !3220
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.Init"(i64 %sp, ptr %context) #1 !dbg !3224 {
entry:
    #dbg_value(i64 %sp, !3228, !DIExpression(), !3230)
    #dbg_value(i64 %sp, !3228, !DIExpression(), !3231)
  %0 = icmp eq ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 2), null, !dbg !3232
  br i1 %0, label %store.throw, label %store.next, !dbg !3232

store.next:                                       ; preds = %entry
  store i64 %sp, ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 2), align 8, !dbg !3232
    #dbg_value(i64 %sp, !3229, !DIExpression(), !3232)
  call void @tinygo_task_init(ptr @"internal/task.mainTask", ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 1), ptr @"internal/task.numCPU", ptr undef), !dbg !3233
  ret void, !dbg !3234

store.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3232
  unreachable, !dbg !3232
}

declare void @tinygo_task_init(ptr dereferenceable_or_null(88), ptr dereferenceable_or_null(8), ptr dereferenceable_or_null(4), ptr) #2

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"internal/task.Current"(ptr %context) #1 !dbg !3235 {
entry:
  %0 = call ptr @tinygo_task_current(), !dbg !3238
    #dbg_value(ptr %0, !3237, !DIExpression(), !3239)
    #dbg_value(ptr %0, !3237, !DIExpression(), !3240)
  %1 = icmp eq ptr %0, null, !dbg !3241
  br i1 %1, label %if.then, label %if.done, !dbg !3242

if.then:                                          ; preds = %entry
  call void @runtime.runtimePanic(ptr @"internal/task$string.7", i64 20, ptr undef), !dbg !3243
  br label %if.done, !dbg !3242

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(ptr %0, !3237, !DIExpression(), !3244)
  ret ptr %0, !dbg !3245
}

declare ptr @tinygo_task_current() #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.Pause"(ptr %context) #1 !dbg !3246 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3249
    #dbg_value(ptr %0, !3248, !DIExpression(), !3250)
  br i1 false, label %if.then, label %if.done, !dbg !3251

if.then:                                          ; preds = %entry
    #dbg_value(ptr %0, !3248, !DIExpression(), !3252)
  %1 = icmp eq ptr %0, null, !dbg !3253
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3253

gep.next:                                         ; preds = %if.then
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3253
  %3 = icmp eq ptr %2, null, !dbg !3254
  br i1 %3, label %gep.throw1, label %gep.next2, !dbg !3254

gep.next2:                                        ; preds = %gep.next
  %4 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 0, !dbg !3254
  %5 = icmp eq ptr %4, null, !dbg !3254
  br i1 %5, label %deref.throw, label %deref.next, !dbg !3254

deref.next:                                       ; preds = %gep.next2
  %6 = load i64, ptr %4, align 8, !dbg !3254
  call void @runtime.printlock(ptr undef), !dbg !3255
  call void @runtime.printstring(ptr @"internal/task$string.8", i64 12, ptr undef), !dbg !3255
  call void @runtime.printspace(ptr undef), !dbg !3255
  call void @runtime.printptr(i64 %6, ptr undef), !dbg !3255
  call void @runtime.printnl(ptr undef), !dbg !3255
  call void @runtime.printunlock(ptr undef), !dbg !3255
  br label %if.done, !dbg !3251

if.done:                                          ; preds = %deref.next, %entry
    #dbg_value(ptr %0, !3248, !DIExpression(), !3256)
  %7 = icmp eq ptr %0, null, !dbg !3257
  br i1 %7, label %gep.throw3, label %gep.next4, !dbg !3257

gep.next4:                                        ; preds = %if.done
  %8 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3257
  %9 = icmp eq ptr %8, null, !dbg !3258
  br i1 %9, label %gep.throw5, label %gep.next6, !dbg !3258

gep.next6:                                        ; preds = %gep.next4
  %10 = getelementptr inbounds %"internal/task.state", ptr %8, i32 0, i32 5, !dbg !3258
  call void @"(*internal/task.Semaphore).Wait"(ptr %10, ptr undef), !dbg !3259
  ret void, !dbg !3260

gep.throw:                                        ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3253
  unreachable, !dbg !3253

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3254
  unreachable, !dbg !3254

deref.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3254
  unreachable, !dbg !3254

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3257
  unreachable, !dbg !3257

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3258
  unreachable, !dbg !3258
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_exited(ptr nocapture dereferenceable_or_null(88) %t) #1 !dbg !3261 {
entry:
    #dbg_value(ptr %t, !3265, !DIExpression(), !3270)
  br i1 false, label %if.then, label %if.done, !dbg !3271

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !3265, !DIExpression(), !3272)
  %0 = icmp eq ptr %t, null, !dbg !3273
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3273

gep.next:                                         ; preds = %if.then
  %1 = getelementptr inbounds %"internal/task.Task", ptr %t, i32 0, i32 4, !dbg !3273
  %2 = icmp eq ptr %1, null, !dbg !3274
  br i1 %2, label %gep.throw5, label %gep.next6, !dbg !3274

gep.next6:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/task.state", ptr %1, i32 0, i32 0, !dbg !3274
  %4 = icmp eq ptr %3, null, !dbg !3274
  br i1 %4, label %deref.throw, label %deref.next, !dbg !3274

deref.next:                                       ; preds = %gep.next6
  %5 = load i64, ptr %3, align 8, !dbg !3274
  call void @runtime.printlock(ptr undef), !dbg !3275
  call void @runtime.printstring(ptr @"internal/task$string.12", i64 9, ptr undef), !dbg !3275
  call void @runtime.printspace(ptr undef), !dbg !3275
  call void @runtime.printptr(i64 %5, ptr undef), !dbg !3275
  call void @runtime.printnl(ptr undef), !dbg !3275
  call void @runtime.printunlock(ptr undef), !dbg !3275
  br label %if.done, !dbg !3271

if.done:                                          ; preds = %deref.next, %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3276
    #dbg_value(i1 false, !3266, !DIExpression(), !3277)
    #dbg_value(ptr @"internal/task.activeTasks", !3267, !DIExpression(), !3278)
  br label %for.loop, !dbg !3271

for.loop:                                         ; preds = %gep.next22, %if.done
  %6 = phi ptr [ @"internal/task.activeTasks", %if.done ], [ %25, %gep.next22 ], !dbg !3278
    #dbg_value(ptr %6, !3267, !DIExpression(), !3279)
  %7 = icmp eq ptr %6, null, !dbg !3280
  br i1 %7, label %deref.throw7, label %deref.next8, !dbg !3280

deref.next8:                                      ; preds = %for.loop
  %8 = load ptr, ptr %6, align 8, !dbg !3280
  %9 = icmp ne ptr %8, null, !dbg !3281
  br i1 %9, label %for.body, label %for.done, !dbg !3271

for.body:                                         ; preds = %deref.next8
    #dbg_value(ptr %6, !3267, !DIExpression(), !3282)
  %10 = icmp eq ptr %6, null, !dbg !3283
  br i1 %10, label %deref.throw9, label %deref.next10, !dbg !3283

deref.next10:                                     ; preds = %for.body
  %11 = load ptr, ptr %6, align 8, !dbg !3283
    #dbg_value(ptr %t, !3265, !DIExpression(), !3284)
  %12 = icmp eq ptr %11, %t, !dbg !3285
  br i1 %12, label %if.then1, label %if.done2, !dbg !3271

if.then1:                                         ; preds = %deref.next10
    #dbg_value(ptr %6, !3267, !DIExpression(), !3286)
    #dbg_value(ptr %t, !3265, !DIExpression(), !3287)
  %13 = icmp eq ptr %t, null, !dbg !3288
  br i1 %13, label %gep.throw11, label %gep.next12, !dbg !3288

gep.next12:                                       ; preds = %if.then1
  %14 = getelementptr inbounds %"internal/task.Task", ptr %t, i32 0, i32 4, !dbg !3288
  %15 = icmp eq ptr %14, null, !dbg !3289
  br i1 %15, label %gep.throw13, label %gep.next14, !dbg !3289

gep.next14:                                       ; preds = %gep.next12
  %16 = getelementptr inbounds %"internal/task.state", ptr %14, i32 0, i32 4, !dbg !3289
  %17 = icmp eq ptr %16, null, !dbg !3289
  br i1 %17, label %deref.throw15, label %deref.next16, !dbg !3289

deref.next16:                                     ; preds = %gep.next14
  %18 = load ptr, ptr %16, align 8, !dbg !3289
  %19 = icmp eq ptr %6, null, !dbg !3290
  br i1 %19, label %store.throw, label %store.next, !dbg !3290

store.next:                                       ; preds = %deref.next16
  store ptr %18, ptr %6, align 8, !dbg !3290
    #dbg_value(i1 true, !3266, !DIExpression(), !3291)
  br label %for.done, !dbg !3271

if.done2:                                         ; preds = %deref.next10
    #dbg_value(ptr %6, !3267, !DIExpression(), !3292)
  %20 = icmp eq ptr %6, null, !dbg !3293
  br i1 %20, label %deref.throw17, label %deref.next18, !dbg !3293

deref.next18:                                     ; preds = %if.done2
  %21 = load ptr, ptr %6, align 8, !dbg !3293
  %22 = icmp eq ptr %21, null, !dbg !3294
  br i1 %22, label %gep.throw19, label %gep.next20, !dbg !3294

gep.next20:                                       ; preds = %deref.next18
  %23 = getelementptr inbounds %"internal/task.Task", ptr %21, i32 0, i32 4, !dbg !3294
  %24 = icmp eq ptr %23, null, !dbg !3295
  br i1 %24, label %gep.throw21, label %gep.next22, !dbg !3295

gep.next22:                                       ; preds = %gep.next20
  %25 = getelementptr inbounds %"internal/task.state", ptr %23, i32 0, i32 4, !dbg !3295
    #dbg_value(ptr %25, !3267, !DIExpression(), !3296)
  br label %for.loop, !dbg !3271

for.done:                                         ; preds = %store.next, %deref.next8
  %26 = phi i1 [ false, %deref.next8 ], [ true, %store.next ], !dbg !3277
  %27 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3297
  %28 = sub i32 %27, 1, !dbg !3297
  store i32 %28, ptr @"internal/task.otherGoroutines", align 4, !dbg !3297
    #dbg_value(i32 %28, !3269, !DIExpression(), !3297)
  call void @"(*internal/task.Mutex).Unlock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3298
    #dbg_value(i1 %26, !3266, !DIExpression(), !3299)
  br i1 %26, label %if.done3, label %if.then4, !dbg !3271

if.done3:                                         ; preds = %if.then4, %for.done
  ret void, !dbg !3300

if.then4:                                         ; preds = %for.done
  call void @runtime.runtimePanic(ptr @"internal/task$string.13", i64 17, ptr undef), !dbg !3301
  br label %if.done3, !dbg !3271

gep.throw:                                        ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3273
  unreachable, !dbg !3273

gep.throw5:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3274
  unreachable, !dbg !3274

deref.throw:                                      ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3274
  unreachable, !dbg !3274

deref.throw7:                                     ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !3280
  unreachable, !dbg !3280

deref.throw9:                                     ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3283
  unreachable, !dbg !3283

gep.throw11:                                      ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3288
  unreachable, !dbg !3288

gep.throw13:                                      ; preds = %gep.next12
  call void @runtime.nilPanic(ptr undef), !dbg !3289
  unreachable, !dbg !3289

deref.throw15:                                    ; preds = %gep.next14
  call void @runtime.nilPanic(ptr undef), !dbg !3289
  unreachable, !dbg !3289

store.throw:                                      ; preds = %deref.next16
  call void @runtime.nilPanic(ptr undef), !dbg !3290
  unreachable, !dbg !3290

deref.throw17:                                    ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !3293
  unreachable, !dbg !3293

gep.throw19:                                      ; preds = %deref.next18
  call void @runtime.nilPanic(ptr undef), !dbg !3294
  unreachable, !dbg !3294

gep.throw21:                                      ; preds = %gep.next20
  call void @runtime.nilPanic(ptr undef), !dbg !3295
  unreachable, !dbg !3295
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.waitGroup).done"(ptr dereferenceable_or_null(4) %wg, ptr %context) unnamed_addr #1 !dbg !3302 {
entry:
    #dbg_value(ptr %wg, !3307, !DIExpression(), !3308)
    #dbg_value(ptr %wg, !3307, !DIExpression(), !3309)
  %0 = icmp eq ptr %wg, null, !dbg !3310
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3310

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3310
  %2 = icmp eq ptr %1, null, !dbg !3309
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3309

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3309
  %4 = call i32 @"(*sync/atomic.Uint32).Add"(ptr %3, i32 -1, ptr undef), !dbg !3311
  %5 = icmp eq i32 %4, 0, !dbg !3312
  br i1 %5, label %if.then, label %if.done, !dbg !3313

if.then:                                          ; preds = %gep.next2
    #dbg_value(ptr %wg, !3307, !DIExpression(), !3314)
  %6 = icmp eq ptr %wg, null, !dbg !3315
  br i1 %6, label %gep.throw3, label %gep.next4, !dbg !3315

gep.next4:                                        ; preds = %if.then
  %7 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3315
  call void @"(*internal/futex.Futex).WakeAll"(ptr %7, ptr undef), !dbg !3316
  br label %if.done, !dbg !3313

if.done:                                          ; preds = %gep.next4, %gep.next2
  ret void, !dbg !3317

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3310
  unreachable, !dbg !3310

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3309
  unreachable, !dbg !3309

gep.throw3:                                       ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3315
  unreachable, !dbg !3315
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.waitGroup).wait"(ptr dereferenceable_or_null(4) %wg, ptr %context) unnamed_addr #1 !dbg !3318 {
entry:
    #dbg_value(ptr %wg, !3320, !DIExpression(), !3322)
  br label %for.body, !dbg !3323

for.body:                                         ; preds = %gep.next4, %entry
    #dbg_value(ptr %wg, !3320, !DIExpression(), !3324)
  %0 = icmp eq ptr %wg, null, !dbg !3325
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3325

gep.next:                                         ; preds = %for.body
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3325
  %2 = icmp eq ptr %1, null, !dbg !3324
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3324

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3324
  %4 = call i32 @"(*sync/atomic.Uint32).Load"(ptr %3, ptr undef), !dbg !3326
    #dbg_value(i32 %4, !3321, !DIExpression(), !3327)
    #dbg_value(i32 %4, !3321, !DIExpression(), !3328)
  %5 = icmp eq i32 %4, 0, !dbg !3329
  br i1 %5, label %if.then, label %if.done, !dbg !3323

if.then:                                          ; preds = %gep.next2
  ret void, !dbg !3330

if.done:                                          ; preds = %gep.next2
    #dbg_value(ptr %wg, !3320, !DIExpression(), !3331)
  %6 = icmp eq ptr %wg, null, !dbg !3332
  br i1 %6, label %gep.throw3, label %gep.next4, !dbg !3332

gep.next4:                                        ; preds = %if.done
  %7 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3332
    #dbg_value(i32 %4, !3321, !DIExpression(), !3333)
  %8 = call i1 @"(*internal/futex.Futex).Wait"(ptr %7, i32 %4, ptr undef), !dbg !3334
  br label %for.body, !dbg !3323

gep.throw:                                        ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3325
  unreachable, !dbg !3325

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3324
  unreachable, !dbg !3324

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3332
  unreachable, !dbg !3332
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %n, ptr %context) unnamed_addr #1 !dbg !3335 {
entry:
    #dbg_value(i32 %n, !3339, !DIExpression(), !3341)
  %wg = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3342
  %0 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3343
  %1 = icmp eq ptr %0, null, !dbg !3344
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3344

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/futex.Futex", ptr %0, i32 0, i32 0, !dbg !3344
    #dbg_value(i32 %n, !3339, !DIExpression(), !3345)
  call void @"(*sync/atomic.Uint32).Store"(ptr %2, i32 %n, ptr undef), !dbg !3346
  %3 = load %"internal/task.Semaphore", ptr %wg, align 4, !dbg !3347
    #dbg_value(%"internal/task.Semaphore" %3, !3340, !DIExpression(), !3347)
  ret %"internal/task.Semaphore" %3, !dbg !3348

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3344
  unreachable, !dbg !3344
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.GCStopWorldAndScan"(ptr %context) #1 !dbg !3349 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3357
    #dbg_value(ptr %0, !3351, !DIExpression(), !3358)
  %1 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3359
  %2 = icmp eq i32 %1, 0, !dbg !3360
  br i1 %2, label %if.then, label %if.done2, !dbg !3361

if.then:                                          ; preds = %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3362
  call void @"(*internal/task.waitGroup).wait"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3363
  call void @"(*sync/atomic.Uint32).Store"(ptr @"internal/task.gcState", i32 1, ptr undef), !dbg !3364
  %3 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3365
    #dbg_value(i32 %3, !3352, !DIExpression(), !3365)
  %4 = call %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %3, ptr undef), !dbg !3366
  store %"internal/task.Semaphore" %4, ptr @"internal/task.scanWaitGroup", align 4, !dbg !3367
    #dbg_value(%"internal/task.Semaphore" %4, !3353, !DIExpression(), !3367)
  %5 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !3368
    #dbg_value(ptr %5, !3354, !DIExpression(), !3368)
    #dbg_value(ptr %5, !3355, !DIExpression(), !3369)
  br label %for.loop, !dbg !3361

for.loop:                                         ; preds = %deref.next15, %if.then
  %6 = phi ptr [ %5, %if.then ], [ %20, %deref.next15 ], !dbg !3369
    #dbg_value(ptr %6, !3355, !DIExpression(), !3370)
  %7 = icmp ne ptr %6, null, !dbg !3371
  br i1 %7, label %for.body, label %for.done, !dbg !3361

for.body:                                         ; preds = %for.loop
    #dbg_value(ptr %6, !3355, !DIExpression(), !3372)
    #dbg_value(ptr %0, !3351, !DIExpression(), !3373)
  %8 = icmp ne ptr %6, %0, !dbg !3374
  br i1 %8, label %if.then1, label %if.done, !dbg !3361

if.then1:                                         ; preds = %for.body
    #dbg_value(ptr %6, !3355, !DIExpression(), !3375)
  %9 = icmp eq ptr %6, null, !dbg !3376
  br i1 %9, label %gep.throw, label %gep.next, !dbg !3376

gep.next:                                         ; preds = %if.then1
  %10 = getelementptr inbounds %"internal/task.Task", ptr %6, i32 0, i32 4, !dbg !3376
  %11 = icmp eq ptr %10, null, !dbg !3377
  br i1 %11, label %gep.throw8, label %gep.next9, !dbg !3377

gep.next9:                                        ; preds = %gep.next
  %12 = getelementptr inbounds %"internal/task.state", ptr %10, i32 0, i32 1, !dbg !3377
  %13 = icmp eq ptr %12, null, !dbg !3377
  br i1 %13, label %deref.throw, label %deref.next, !dbg !3377

deref.next:                                       ; preds = %gep.next9
  %14 = load ptr, ptr %12, align 8, !dbg !3377
  call void @tinygo_task_send_gc_signal(ptr %14), !dbg !3378
  br label %if.done, !dbg !3361

if.done:                                          ; preds = %deref.next, %for.body
    #dbg_value(ptr %6, !3355, !DIExpression(), !3379)
  %15 = icmp eq ptr %6, null, !dbg !3380
  br i1 %15, label %gep.throw10, label %gep.next11, !dbg !3380

gep.next11:                                       ; preds = %if.done
  %16 = getelementptr inbounds %"internal/task.Task", ptr %6, i32 0, i32 4, !dbg !3380
  %17 = icmp eq ptr %16, null, !dbg !3381
  br i1 %17, label %gep.throw12, label %gep.next13, !dbg !3381

gep.next13:                                       ; preds = %gep.next11
  %18 = getelementptr inbounds %"internal/task.state", ptr %16, i32 0, i32 4, !dbg !3381
  %19 = icmp eq ptr %18, null, !dbg !3381
  br i1 %19, label %deref.throw14, label %deref.next15, !dbg !3381

deref.next15:                                     ; preds = %gep.next13
  %20 = load ptr, ptr %18, align 8, !dbg !3381
    #dbg_value(ptr %20, !3355, !DIExpression(), !3382)
  br label %for.loop, !dbg !3361

for.done:                                         ; preds = %for.loop
  call void @"(*internal/task.waitGroup).wait"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3383
  br label %if.done2, !dbg !3361

if.done2:                                         ; preds = %for.done, %entry
  %21 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !3384
    #dbg_value(ptr %21, !3354, !DIExpression(), !3384)
    #dbg_value(ptr %21, !3356, !DIExpression(), !3385)
  br label %for.loop3, !dbg !3361

for.loop3:                                        ; preds = %deref.next33, %if.done2
  %22 = phi ptr [ %21, %if.done2 ], [ %42, %deref.next33 ], !dbg !3385
    #dbg_value(ptr %22, !3356, !DIExpression(), !3386)
  %23 = icmp ne ptr %22, null, !dbg !3387
  br i1 %23, label %for.body4, label %for.done7, !dbg !3361

for.body4:                                        ; preds = %for.loop3
    #dbg_value(ptr %22, !3356, !DIExpression(), !3388)
    #dbg_value(ptr %0, !3351, !DIExpression(), !3389)
  %24 = icmp ne ptr %22, %0, !dbg !3390
  br i1 %24, label %if.then5, label %if.done6, !dbg !3361

if.then5:                                         ; preds = %for.body4
    #dbg_value(ptr %22, !3356, !DIExpression(), !3391)
  %25 = icmp eq ptr %22, null, !dbg !3392
  br i1 %25, label %gep.throw16, label %gep.next17, !dbg !3392

gep.next17:                                       ; preds = %if.then5
  %26 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3392
  %27 = icmp eq ptr %26, null, !dbg !3393
  br i1 %27, label %gep.throw18, label %gep.next19, !dbg !3393

gep.next19:                                       ; preds = %gep.next17
  %28 = getelementptr inbounds %"internal/task.state", ptr %26, i32 0, i32 3, !dbg !3393
  %29 = icmp eq ptr %28, null, !dbg !3393
  br i1 %29, label %deref.throw20, label %deref.next21, !dbg !3393

deref.next21:                                     ; preds = %gep.next19
  %30 = load i64, ptr %28, align 8, !dbg !3393
    #dbg_value(ptr %22, !3356, !DIExpression(), !3394)
  %31 = icmp eq ptr %22, null, !dbg !3395
  br i1 %31, label %gep.throw22, label %gep.next23, !dbg !3395

gep.next23:                                       ; preds = %deref.next21
  %32 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3395
  %33 = icmp eq ptr %32, null, !dbg !3396
  br i1 %33, label %gep.throw24, label %gep.next25, !dbg !3396

gep.next25:                                       ; preds = %gep.next23
  %34 = getelementptr inbounds %"internal/task.state", ptr %32, i32 0, i32 2, !dbg !3396
  %35 = icmp eq ptr %34, null, !dbg !3396
  br i1 %35, label %deref.throw26, label %deref.next27, !dbg !3396

deref.next27:                                     ; preds = %gep.next25
  %36 = load i64, ptr %34, align 8, !dbg !3396
  call void @runtime.markRoots(i64 %30, i64 %36, ptr undef), !dbg !3397
  br label %if.done6, !dbg !3361

if.done6:                                         ; preds = %deref.next27, %for.body4
    #dbg_value(ptr %22, !3356, !DIExpression(), !3398)
  %37 = icmp eq ptr %22, null, !dbg !3399
  br i1 %37, label %gep.throw28, label %gep.next29, !dbg !3399

gep.next29:                                       ; preds = %if.done6
  %38 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3399
  %39 = icmp eq ptr %38, null, !dbg !3400
  br i1 %39, label %gep.throw30, label %gep.next31, !dbg !3400

gep.next31:                                       ; preds = %gep.next29
  %40 = getelementptr inbounds %"internal/task.state", ptr %38, i32 0, i32 4, !dbg !3400
  %41 = icmp eq ptr %40, null, !dbg !3400
  br i1 %41, label %deref.throw32, label %deref.next33, !dbg !3400

deref.next33:                                     ; preds = %gep.next31
  %42 = load ptr, ptr %40, align 8, !dbg !3400
    #dbg_value(ptr %42, !3356, !DIExpression(), !3401)
  br label %for.loop3, !dbg !3361

for.done7:                                        ; preds = %for.loop3
  call void @tinygo_scanCurrentStack(), !dbg !3402
  call void @"internal/task.gcScanGlobals"(ptr undef), !dbg !3403
  ret void, !dbg !3404

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3376
  unreachable, !dbg !3376

gep.throw8:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3377
  unreachable, !dbg !3377

deref.throw:                                      ; preds = %gep.next9
  call void @runtime.nilPanic(ptr undef), !dbg !3377
  unreachable, !dbg !3377

gep.throw10:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3380
  unreachable, !dbg !3380

gep.throw12:                                      ; preds = %gep.next11
  call void @runtime.nilPanic(ptr undef), !dbg !3381
  unreachable, !dbg !3381

deref.throw14:                                    ; preds = %gep.next13
  call void @runtime.nilPanic(ptr undef), !dbg !3381
  unreachable, !dbg !3381

gep.throw16:                                      ; preds = %if.then5
  call void @runtime.nilPanic(ptr undef), !dbg !3392
  unreachable, !dbg !3392

gep.throw18:                                      ; preds = %gep.next17
  call void @runtime.nilPanic(ptr undef), !dbg !3393
  unreachable, !dbg !3393

deref.throw20:                                    ; preds = %gep.next19
  call void @runtime.nilPanic(ptr undef), !dbg !3393
  unreachable, !dbg !3393

gep.throw22:                                      ; preds = %deref.next21
  call void @runtime.nilPanic(ptr undef), !dbg !3395
  unreachable, !dbg !3395

gep.throw24:                                      ; preds = %gep.next23
  call void @runtime.nilPanic(ptr undef), !dbg !3396
  unreachable, !dbg !3396

deref.throw26:                                    ; preds = %gep.next25
  call void @runtime.nilPanic(ptr undef), !dbg !3396
  unreachable, !dbg !3396

gep.throw28:                                      ; preds = %if.done6
  call void @runtime.nilPanic(ptr undef), !dbg !3399
  unreachable, !dbg !3399

gep.throw30:                                      ; preds = %gep.next29
  call void @runtime.nilPanic(ptr undef), !dbg !3400
  unreachable, !dbg !3400

deref.throw32:                                    ; preds = %gep.next31
  call void @runtime.nilPanic(ptr undef), !dbg !3400
  unreachable, !dbg !3400
}

declare void @tinygo_task_send_gc_signal(ptr nocapture) #2

declare void @tinygo_scanCurrentStack() #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.GCResumeWorld"(ptr %context) #1 !dbg !3405 {
entry:
  %0 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3409
  %1 = icmp eq i32 %0, 0, !dbg !3410
  br i1 %1, label %if.then, label %if.done, !dbg !3411

if.then:                                          ; preds = %entry
  ret void, !dbg !3412

if.done:                                          ; preds = %entry
  %2 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3413
    #dbg_value(i32 %2, !3407, !DIExpression(), !3413)
  %3 = call %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %2, ptr undef), !dbg !3414
  store %"internal/task.Semaphore" %3, ptr @"internal/task.scanWaitGroup", align 4, !dbg !3415
    #dbg_value(%"internal/task.Semaphore" %3, !3408, !DIExpression(), !3415)
  call void @"(*sync/atomic.Uint32).Store"(ptr @"internal/task.gcState", i32 0, ptr undef), !dbg !3416
  call void @"(*internal/futex.Futex).WakeAll"(ptr @"internal/task.gcState", ptr undef), !dbg !3417
  call void @"(*internal/task.Mutex).Unlock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3418
  ret void, !dbg !3419
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_gc_pause(i32 %sig) #1 !dbg !3420 {
entry:
    #dbg_value(i32 %sig, !3424, !DIExpression(), !3426)
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3427
  %1 = icmp eq ptr %0, null, !dbg !3428
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3428

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3428
  %3 = call ptr @runtime.stacksave(ptr undef), !dbg !3429
  %4 = ptrtoint ptr %3 to i64, !dbg !3430
  %5 = icmp eq ptr %2, null, !dbg !3431
  br i1 %5, label %gep.throw1, label %gep.next2, !dbg !3431

gep.next2:                                        ; preds = %gep.next
  %6 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 3, !dbg !3431
  %7 = icmp eq ptr %6, null, !dbg !3431
  br i1 %7, label %store.throw, label %store.next, !dbg !3431

store.next:                                       ; preds = %gep.next2
  store i64 %4, ptr %6, align 8, !dbg !3431
    #dbg_value(i64 %4, !3425, !DIExpression(), !3431)
  call void @"(*internal/task.waitGroup).done"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3432
  br label %for.loop, !dbg !3433

for.loop:                                         ; preds = %for.body, %store.next
  %8 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3434
  %9 = icmp eq i32 %8, 1, !dbg !3435
  br i1 %9, label %for.body, label %for.done, !dbg !3433

for.body:                                         ; preds = %for.loop
  %10 = call i1 @"(*internal/futex.Futex).Wait"(ptr @"internal/task.gcState", i32 1, ptr undef), !dbg !3436
  br label %for.loop, !dbg !3433

for.done:                                         ; preds = %for.loop
  call void @"(*internal/task.waitGroup).done"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3437
  ret void, !dbg !3438

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3428
  unreachable, !dbg !3428

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3431
  unreachable, !dbg !3431

store.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3431
  unreachable, !dbg !3431
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"internal/task.StackTop"(ptr %context) #1 !dbg !3439 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3440
  %1 = icmp eq ptr %0, null, !dbg !3441
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3441

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3441
  %3 = icmp eq ptr %2, null, !dbg !3442
  br i1 %3, label %gep.throw1, label %gep.next2, !dbg !3442

gep.next2:                                        ; preds = %gep.next
  %4 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 2, !dbg !3442
  %5 = icmp eq ptr %4, null, !dbg !3442
  br i1 %5, label %deref.throw, label %deref.next, !dbg !3442

deref.next:                                       ; preds = %gep.next2
  %6 = load i64, ptr %4, align 8, !dbg !3442
  ret i64 %6, !dbg !3443

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3441
  unreachable, !dbg !3441

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3442
  unreachable, !dbg !3442

deref.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3442
  unreachable, !dbg !3442
}

; Function Attrs: noinline nounwind allockind("alloc,zeroed") allocsize(0) uwtable(sync)
define internal noalias nonnull ptr @runtime.alloc(i64 %size, ptr %layout, ptr %context) #4 !dbg !3444 {
entry:
    #dbg_value(i64 %size, !3448, !DIExpression(), !3451)
    #dbg_value(ptr %layout, !3449, !DIExpression(), !3451)
    #dbg_value(i64 %size, !3448, !DIExpression(), !3452)
  %0 = icmp eq i64 %size, 0, !dbg !3453
  br i1 %0, label %if.then, label %if.done, !dbg !3454

if.then:                                          ; preds = %entry
  ret ptr @runtime.zeroSizedAlloc, !dbg !3455

if.done:                                          ; preds = %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @runtime.gcLock, ptr undef), !dbg !3456
    #dbg_value(ptr null, !3450, !DIExpression(), !3457)
    #dbg_value(ptr %layout, !3449, !DIExpression(), !3458)
  %1 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !3459
  %2 = icmp eq ptr %layout, %1, !dbg !3460
  br i1 %2, label %if.then1, label %if.else, !dbg !3454

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %size, !3448, !DIExpression(), !3461)
  %3 = call ptr @GC_malloc_atomic(i64 %size), !dbg !3462
    #dbg_value(ptr %3, !3450, !DIExpression(), !3463)
    #dbg_value(ptr %3, !3450, !DIExpression(), !3464)
    #dbg_value(i64 %size, !3448, !DIExpression(), !3465)
  call void @runtime.memzero(ptr %3, i64 %size, ptr undef), !dbg !3466
  br label %if.done2, !dbg !3454

if.done2:                                         ; preds = %if.else, %if.then1
  %4 = phi ptr [ %3, %if.then1 ], [ %6, %if.else ], !dbg !3457
  call void @runtime.gcResumeWorld(ptr undef), !dbg !3467
  call void @"(*internal/task.Mutex).Unlock"(ptr @runtime.gcLock, ptr undef), !dbg !3468
    #dbg_value(ptr %4, !3450, !DIExpression(), !3469)
  %5 = icmp eq ptr %4, null, !dbg !3470
  br i1 %5, label %if.then3, label %if.done4, !dbg !3454

if.then3:                                         ; preds = %if.done2
  call void @runtime.runtimePanic(ptr @"runtime$string.7", i64 17, ptr undef), !dbg !3471
  br label %if.done4, !dbg !3454

if.done4:                                         ; preds = %if.then3, %if.done2
    #dbg_value(ptr %4, !3450, !DIExpression(), !3472)
  ret ptr %4, !dbg !3473

if.else:                                          ; preds = %if.done
    #dbg_value(i64 %size, !3448, !DIExpression(), !3474)
  %6 = call ptr @GC_malloc(i64 %size), !dbg !3475
    #dbg_value(ptr %6, !3450, !DIExpression(), !3476)
  br label %if.done2, !dbg !3454
}

declare ptr @GC_malloc_atomic(i64) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memzero(ptr %ptr, i64 %size, ptr %context) #1 !dbg !3477 {
entry:
    #dbg_value(ptr %ptr, !3481, !DIExpression(), !3483)
    #dbg_value(i64 %size, !3482, !DIExpression(), !3483)
  call void @llvm.memset.p0.i64(ptr %ptr, i8 0, i64 %size, i1 false), !dbg !3483
  ret void, !dbg !3483
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.gcResumeWorld(ptr %context) unnamed_addr #1 !dbg !3484 {
entry:
  call void @"internal/task.GCResumeWorld"(ptr undef), !dbg !3486
  ret void, !dbg !3487
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.runtimePanic(ptr readonly %msg.data, i64 %msg.len, ptr %context) #1 !dbg !3488 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %msg.data, 0, !dbg !3491
  %1 = insertvalue %runtime._string %0, i64 %msg.len, 1, !dbg !3491
    #dbg_value(ptr %msg.data, !3490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3491)
    #dbg_value(i64 %msg.len, !3490, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3491)
  %2 = call ptr @llvm.returnaddress(i32 0), !dbg !3492
    #dbg_value(%runtime._string %1, !3490, !DIExpression(), !3493)
  %3 = extractvalue %runtime._string %1, 0, !dbg !3494
  %4 = extractvalue %runtime._string %1, 1, !dbg !3494
  call void @runtime.runtimePanicAt(ptr %2, ptr %3, i64 %4, ptr undef), !dbg !3494
  ret void, !dbg !3495
}

declare ptr @GC_malloc(i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.runtimePanicAt(ptr %addr, ptr readonly %msg.data, i64 %msg.len, ptr %context) unnamed_addr #1 !dbg !3496 {
entry:
    #dbg_value(ptr %addr, !3500, !DIExpression(), !3502)
  %0 = insertvalue %runtime._string zeroinitializer, ptr %msg.data, 0, !dbg !3502
  %1 = insertvalue %runtime._string %0, i64 %msg.len, 1, !dbg !3502
    #dbg_value(ptr %msg.data, !3501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3502)
    #dbg_value(i64 %msg.len, !3501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3502)
  br i1 false, label %if.then, label %if.done, !dbg !3503

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !3504
  br label %if.done, !dbg !3503

if.done:                                          ; preds = %if.then, %entry
  br i1 true, label %if.then1, label %if.else, !dbg !3503

if.then1:                                         ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.13", i64 24, ptr undef), !dbg !3505
    #dbg_value(ptr %addr, !3500, !DIExpression(), !3506)
  %2 = ptrtoint ptr %addr to i64, !dbg !3507
  %3 = sub i64 %2, 5, !dbg !3508
  call void @runtime.printptr(i64 %3, ptr undef), !dbg !3509
  call void @runtime.printstring(ptr @"runtime$string.14", i64 2, ptr undef), !dbg !3510
  br label %if.done2, !dbg !3503

if.done2:                                         ; preds = %if.else, %if.then1
    #dbg_value(%runtime._string %1, !3501, !DIExpression(), !3511)
  %4 = extractvalue %runtime._string %1, 0, !dbg !3512
  %5 = extractvalue %runtime._string %1, 1, !dbg !3512
  call void @runtime.printstring(ptr %4, i64 %5, ptr undef), !dbg !3512
  call void @runtime.printnl(ptr undef), !dbg !3513
  call void @abort(), !dbg !3514
  ret void, !dbg !3515

if.else:                                          ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.15", i64 22, ptr undef), !dbg !3516
  br label %if.done2, !dbg !3503
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printstring(ptr readonly %s.data, i64 %s.len, ptr %context) #1 !dbg !3517 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !3521
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !3521
    #dbg_value(ptr %s.data, !3519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3521)
    #dbg_value(i64 %s.len, !3519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3521)
    #dbg_value(i64 0, !3520, !DIExpression(), !3522)
  br label %for.loop, !dbg !3523

for.loop:                                         ; preds = %for.body, %entry
  %2 = phi i64 [ 0, %entry ], [ %7, %for.body ], !dbg !3522
    #dbg_value(i64 %2, !3520, !DIExpression(), !3524)
    #dbg_value(%runtime._string %1, !3519, !DIExpression(), !3525)
  %len = extractvalue %runtime._string %1, 1, !dbg !3526
  %3 = icmp slt i64 %2, %len, !dbg !3527
  br i1 %3, label %for.body, label %for.done, !dbg !3523

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !3520, !DIExpression(), !3528)
    #dbg_value(%runtime._string %1, !3519, !DIExpression(), !3529)
  %len1 = extractvalue %runtime._string %1, 1, !dbg !3530
  %4 = extractvalue %runtime._string %1, 0, !dbg !3530
  %5 = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !3530
  %6 = load i8, ptr %5, align 1, !dbg !3530
  call void @runtime.putchar(i8 %6, ptr undef), !dbg !3531
  %7 = add i64 %2, 1, !dbg !3532
    #dbg_value(i64 %7, !3520, !DIExpression(), !3532)
  br label %for.loop, !dbg !3523

for.done:                                         ; preds = %for.loop
  ret void, !dbg !3533
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printptr(i64 %ptr, ptr %context) #1 !dbg !3534 {
entry:
    #dbg_value(i64 %ptr, !3536, !DIExpression(), !3539)
    #dbg_value(i64 %ptr, !3536, !DIExpression(), !3540)
  %0 = icmp eq i64 %ptr, 0, !dbg !3541
  br i1 %0, label %if.then, label %if.done, !dbg !3542

if.then:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.45", i64 3, ptr undef), !dbg !3543
  ret void, !dbg !3544

if.done:                                          ; preds = %entry
  call void @runtime.putchar(i8 48, ptr undef), !dbg !3545
  call void @runtime.putchar(i8 120, ptr undef), !dbg !3546
    #dbg_value(i64 0, !3537, !DIExpression(), !3547)
  br label %for.loop, !dbg !3542

for.loop:                                         ; preds = %if.done2, %if.done
  %1 = phi i64 [ %ptr, %if.done ], [ %shift.result3, %if.done2 ], !dbg !3548
  %2 = phi i64 [ 0, %if.done ], [ %9, %if.done2 ], !dbg !3547
    #dbg_value(i64 %2, !3537, !DIExpression(), !3549)
  %3 = icmp slt i64 %2, 16, !dbg !3550
  br i1 %3, label %for.body, label %for.done, !dbg !3542

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !3536, !DIExpression(), !3551)
  %4 = lshr i64 %1, 60, !dbg !3552
  %shift.result = select i1 false, i64 0, i64 %4, !dbg !3552
  %5 = trunc i64 %shift.result to i8, !dbg !3553
    #dbg_value(i8 %5, !3538, !DIExpression(), !3554)
    #dbg_value(i8 %5, !3538, !DIExpression(), !3555)
  %6 = icmp ult i8 %5, 10, !dbg !3556
  br i1 %6, label %if.then1, label %if.else, !dbg !3542

if.then1:                                         ; preds = %for.body
    #dbg_value(i8 %5, !3538, !DIExpression(), !3557)
  %7 = add i8 %5, 48, !dbg !3558
  call void @runtime.putchar(i8 %7, ptr undef), !dbg !3559
  br label %if.done2, !dbg !3542

if.done2:                                         ; preds = %if.else, %if.then1
  %8 = shl i64 %1, 4, !dbg !3560
  %shift.result3 = select i1 false, i64 0, i64 %8, !dbg !3560
    #dbg_value(i64 %shift.result3, !3536, !DIExpression(), !3560)
  %9 = add i64 %2, 1, !dbg !3561
    #dbg_value(i64 %9, !3537, !DIExpression(), !3561)
  br label %for.loop, !dbg !3542

if.else:                                          ; preds = %for.body
    #dbg_value(i8 %5, !3538, !DIExpression(), !3562)
  %10 = sub i8 %5, 10, !dbg !3563
  %11 = add i8 %10, 97, !dbg !3564
  call void @runtime.putchar(i8 %11, ptr undef), !dbg !3565
  br label %if.done2, !dbg !3542

for.done:                                         ; preds = %for.loop
  ret void, !dbg !3566
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printnl(ptr %context) #1 !dbg !3567 {
entry:
  br i1 false, label %if.then, label %if.done, !dbg !3568

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 13, ptr undef), !dbg !3569
  br label %if.done, !dbg !3568

if.done:                                          ; preds = %if.then, %entry
  call void @runtime.putchar(i8 10, ptr undef), !dbg !3570
  ret void, !dbg !3571
}

; Function Attrs: noreturn
declare void @abort() #7

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.putchar(i8 %c, ptr %context) unnamed_addr #1 !dbg !3572 {
entry:
    #dbg_value(i8 %c, !3576, !DIExpression(), !3577)
  %buf = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3578
  %0 = getelementptr inbounds [1 x i8], ptr %buf, i32 0, i64 0, !dbg !3578
    #dbg_value(i8 %c, !3576, !DIExpression(), !3579)
  store i8 %c, ptr %0, align 1, !dbg !3579
    #dbg_value(i8 %c, !3576, !DIExpression(), !3579)
  %1 = getelementptr inbounds [1 x i8], ptr %buf, i32 0, i64 0, !dbg !3580
  %2 = call i64 @write(i32 1, ptr %1, i64 1), !dbg !3581
  ret void, !dbg !3582
}

declare i64 @write(i32, ptr nocapture, i64) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.initRand(ptr %context) unnamed_addr #1 !dbg !3583 {
entry:
  %0 = call { i64, i1 } @runtime.hardwareRand(ptr undef), !dbg !3588
  %1 = extractvalue { i64, i1 } %0, 0, !dbg !3588
    #dbg_value(i64 %1, !3585, !DIExpression(), !3589)
  %2 = extractvalue { i64, i1 } %0, 1, !dbg !3588
    #dbg_value(i64 %1, !3585, !DIExpression(), !3590)
  %3 = or i64 %1, 1, !dbg !3591
  store i64 %3, ptr @runtime.xorshift64State, align 8, !dbg !3592
    #dbg_value(i64 %3, !3586, !DIExpression(), !3592)
  %4 = load i64, ptr @runtime.xorshift64State, align 8, !dbg !3593
    #dbg_value(i64 %4, !3586, !DIExpression(), !3593)
  %5 = trunc i64 %4 to i32, !dbg !3594
  store i32 %5, ptr @runtime.xorshift32State, align 4, !dbg !3595
    #dbg_value(i32 %5, !3587, !DIExpression(), !3595)
  ret void, !dbg !3596
}

; Function Attrs: nounwind uwtable(sync)
define internal { i64, i1 } @runtime.hardwareRand(ptr %context) unnamed_addr #1 !dbg !3597 {
entry:
  %n = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3602
  %0 = call i32 @getrandom(ptr %n, i64 8, i32 0), !dbg !3603
    #dbg_value(i32 %0, !3600, !DIExpression(), !3604)
    #dbg_value(i32 %0, !3600, !DIExpression(), !3605)
  %1 = icmp ne i32 %0, 8, !dbg !3606
  br i1 %1, label %if.then, label %if.done, !dbg !3607

if.then:                                          ; preds = %entry
  store i64 0, ptr %n, align 8, !dbg !3608
  %2 = load i64, ptr %n, align 8, !dbg !3607
  %3 = insertvalue { i64, i1 } zeroinitializer, i64 %2, 0, !dbg !3608
  %4 = insertvalue { i64, i1 } %3, i1 false, 1, !dbg !3608
  ret { i64, i1 } %4, !dbg !3608

if.done:                                          ; preds = %entry
  %5 = load i64, ptr %n, align 8, !dbg !3609
    #dbg_value(i64 %5, !3601, !DIExpression(), !3609)
  store i64 %5, ptr %n, align 8, !dbg !3610
  %6 = load i64, ptr %n, align 8, !dbg !3607
  %7 = insertvalue { i64, i1 } zeroinitializer, i64 %6, 0, !dbg !3610
  %8 = insertvalue { i64, i1 } %7, i1 true, 1, !dbg !3610
  ret { i64, i1 } %8, !dbg !3610
}

declare i32 @getrandom(ptr nocapture, i64, i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal i64 @runtime.getCurrentStackPointer(ptr %context) unnamed_addr #1 !dbg !3611 {
entry:
  %0 = call ptr @runtime.stacksave(ptr undef), !dbg !3613
  %1 = ptrtoint ptr %0 to i64, !dbg !3614
  ret i64 %1, !dbg !3615
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @runtime.stacksave(ptr %context) #1 !dbg !3616 {
entry:
  %0 = call ptr @llvm.stacksave.p0(), !dbg !3617
  ret ptr %0, !dbg !3617
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #9

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memcpy(ptr %dst, ptr %src, i64 %size, ptr %context) #1 !dbg !3618 {
entry:
    #dbg_value(ptr %dst, !3622, !DIExpression(), !3625)
    #dbg_value(ptr %src, !3623, !DIExpression(), !3625)
    #dbg_value(i64 %size, !3624, !DIExpression(), !3625)
  call void @llvm.memcpy.p0.p0.i64(ptr %dst, ptr %src, i64 %size, i1 false), !dbg !3625
  ret void, !dbg !3625
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.nilPanic(ptr %context) #1 !dbg !3626 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !3627
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.17", i64 23, ptr undef), !dbg !3628
  ret void, !dbg !3629
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.deadlock(ptr %context) unnamed_addr #1 !dbg !3630 {
entry:
  call void @"internal/task.Pause"(ptr undef), !dbg !3631
  ret void, !dbg !3632
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.lookupPanic(ptr %context) #1 !dbg !3633 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !3634
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.19", i64 18, ptr undef), !dbg !3635
  ret void, !dbg !3636
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.panicOrGoexit(ptr %message.typecode, ptr %message.value, i8 %panicking, ptr %context) unnamed_addr #1 !dbg !3637 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %message.typecode, 0, !dbg !3657
  %1 = insertvalue { ptr, ptr } %0, ptr %message.value, 1, !dbg !3657
    #dbg_value(ptr %message.typecode, !3642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3657)
    #dbg_value(ptr %message.value, !3642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3657)
    #dbg_value(i8 %panicking, !3643, !DIExpression(), !3657)
  br i1 false, label %if.then, label %if.done, !dbg !3658

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !3659
  br label %if.done, !dbg !3658

if.done:                                          ; preds = %if.then, %entry
  br i1 true, label %cond.true, label %if.done3, !dbg !3658

cond.true:                                        ; preds = %if.done
  %2 = call i1 @"runtime/interrupt.In"(ptr undef), !dbg !3660
  br i1 %2, label %if.done3, label %if.then1, !dbg !3658

if.then1:                                         ; preds = %cond.true
  %3 = call ptr @"internal/task.Current"(ptr undef), !dbg !3661
  %4 = icmp eq ptr %3, null, !dbg !3662
  br i1 %4, label %gep.throw, label %gep.next, !dbg !3662

gep.next:                                         ; preds = %if.then1
  %5 = getelementptr inbounds %"internal/task.Task", ptr %3, i32 0, i32 8, !dbg !3662
  %6 = icmp eq ptr %5, null, !dbg !3662
  br i1 %6, label %deref.throw, label %deref.next, !dbg !3662

deref.next:                                       ; preds = %gep.next
  %7 = load ptr, ptr %5, align 8, !dbg !3662
    #dbg_value(ptr %7, !3644, !DIExpression(), !3663)
    #dbg_value(ptr %7, !3644, !DIExpression(), !3664)
  %8 = icmp ne ptr %7, null, !dbg !3665
  br i1 %8, label %if.then2, label %if.done3, !dbg !3658

if.then2:                                         ; preds = %deref.next
    #dbg_value(ptr %7, !3644, !DIExpression(), !3666)
    #dbg_value({ ptr, ptr } %1, !3642, !DIExpression(), !3667)
  %9 = getelementptr inbounds %runtime.deferFrame, ptr %7, i32 0, i32 5, !dbg !3668
  %10 = icmp eq ptr %9, null, !dbg !3668
  br i1 %10, label %store.throw, label %store.next, !dbg !3668

store.next:                                       ; preds = %if.then2
  store { ptr, ptr } %1, ptr %9, align 8, !dbg !3668
    #dbg_value({ ptr, ptr } %1, !3655, !DIExpression(), !3668)
    #dbg_value(ptr %7, !3644, !DIExpression(), !3669)
    #dbg_value(i8 %panicking, !3643, !DIExpression(), !3670)
  %11 = getelementptr inbounds %runtime.deferFrame, ptr %7, i32 0, i32 4, !dbg !3671
  %12 = icmp eq ptr %11, null, !dbg !3671
  br i1 %12, label %store.throw6, label %store.next7, !dbg !3671

store.next7:                                      ; preds = %store.next
  store i8 %panicking, ptr %11, align 1, !dbg !3671
    #dbg_value(i8 %panicking, !3656, !DIExpression(), !3671)
    #dbg_value(ptr %7, !3644, !DIExpression(), !3672)
  call void @tinygo_longjmp(ptr %7), !dbg !3673
  br label %if.done3, !dbg !3658

if.done3:                                         ; preds = %store.next7, %deref.next, %cond.true, %if.done
    #dbg_value(i8 %panicking, !3643, !DIExpression(), !3674)
  %13 = icmp eq i8 %panicking, 2, !dbg !3675
  br i1 %13, label %if.then4, label %if.done5, !dbg !3658

if.then4:                                         ; preds = %if.done3
  call void @runtime.deadlock(ptr undef), !dbg !3676
  br label %if.done5, !dbg !3658

if.done5:                                         ; preds = %if.then4, %if.done3
  call void @runtime.printstring(ptr @"runtime$string.12", i64 7, ptr undef), !dbg !3677
    #dbg_value({ ptr, ptr } %1, !3642, !DIExpression(), !3678)
  %14 = extractvalue { ptr, ptr } %1, 0, !dbg !3679
  %15 = extractvalue { ptr, ptr } %1, 1, !dbg !3679
  call void @runtime.printitf(ptr %14, ptr %15, ptr undef), !dbg !3679
  call void @runtime.printnl(ptr undef), !dbg !3680
  call void @abort(), !dbg !3681
  ret void, !dbg !3682

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3662
  unreachable, !dbg !3662

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3662
  unreachable, !dbg !3662

store.throw:                                      ; preds = %if.then2
  call void @runtime.nilPanic(ptr undef), !dbg !3668
  unreachable, !dbg !3668

store.throw6:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !3671
  unreachable, !dbg !3671
}

declare void @tinygo_longjmp(ptr nocapture dereferenceable_or_null(48)) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printitf(ptr %msg.typecode, ptr %msg.value, ptr %context) unnamed_addr #1 !dbg !3683 {
entry:
  %itf = alloca { ptr, ptr }, align 8, !dbg !3713
  %unpack.raw.alloc136 = alloca ptr, align 8, !dbg !3713
  %unpack.raw.alloc129 = alloca ptr, align 8, !dbg !3713
  %unpack.raw.alloc = alloca ptr, align 8, !dbg !3713
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %msg.typecode, 0, !dbg !3713
  %1 = insertvalue { ptr, ptr } %0, ptr %msg.value, 1, !dbg !3713
    #dbg_value(ptr %msg.typecode, !3687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3713)
    #dbg_value(ptr %msg.value, !3687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3713)
    #dbg_value({ ptr, ptr } %1, !3687, !DIExpression(), !3714)
  %interface.type = extractvalue { ptr, ptr } %1, 0, !dbg !3715
  br i1 false, label %typeassert.ok, label %typeassert.next, !dbg !3715

typeassert.next:                                  ; preds = %typeassert.ok, %entry
  %typeassert.value = phi i1 [ false, %entry ], [ %unpack.int, %typeassert.ok ], !dbg !3715
  %2 = insertvalue { i1, i1 } undef, i1 %typeassert.value, 0, !dbg !3715
  %3 = insertvalue { i1, i1 } %2, i1 false, 1, !dbg !3715
  %4 = extractvalue { i1, i1 } %3, 0, !dbg !3715
  %5 = extractvalue { i1, i1 } %3, 1, !dbg !3715
  br i1 %5, label %typeswitch.body, label %typeswitch.next, !dbg !3716

typeassert.ok:                                    ; preds = %entry
  %typeassert.value.ptr = extractvalue { ptr, ptr } %1, 1, !dbg !3715
  %unpack.int = ptrtoint ptr %typeassert.value.ptr to i1, !dbg !3715
  br label %typeassert.next, !dbg !3715

typeswitch.body:                                  ; preds = %typeassert.next
    #dbg_value(i1 %4, !3688, !DIExpression(), !3717)
  call void @runtime.printbool(i1 %4, ptr undef), !dbg !3718
  br label %typeswitch.done, !dbg !3716

typeswitch.done:                                  ; preds = %deref.next161, %typeswitch.body39, %typeswitch.body37, %typeswitch.body35, %typeswitch.body33, %typeswitch.body31, %typeswitch.body29, %typeswitch.body27, %typeswitch.body25, %typeswitch.body23, %typeswitch.body21, %typeswitch.body19, %typeswitch.body17, %switch.body15, %switch.next14, %switch.body13, %typeswitch.body10, %typeswitch.body8, %typeswitch.body6, %typeswitch.body4, %switch.body2, %switch.next, %switch.body, %typeswitch.body
  ret void, !dbg !3719

typeswitch.next:                                  ; preds = %typeassert.next
  %interface.type41 = extractvalue { ptr, ptr } %1, 0, !dbg !3720
  br i1 false, label %typeassert.ok43, label %typeassert.next44, !dbg !3720

typeassert.next44:                                ; preds = %typeassert.ok43, %typeswitch.next
  %typeassert.value47 = phi i64 [ 0, %typeswitch.next ], [ %unpack.int46, %typeassert.ok43 ], !dbg !3720
  %6 = insertvalue { i64, i1 } undef, i64 %typeassert.value47, 0, !dbg !3720
  %7 = insertvalue { i64, i1 } %6, i1 false, 1, !dbg !3720
  %8 = extractvalue { i64, i1 } %7, 0, !dbg !3720
  %9 = extractvalue { i64, i1 } %7, 1, !dbg !3720
  br i1 %9, label %typeswitch.body1, label %typeswitch.next3, !dbg !3716

typeassert.ok43:                                  ; preds = %typeswitch.next
  %typeassert.value.ptr45 = extractvalue { ptr, ptr } %1, 1, !dbg !3720
  %unpack.int46 = ptrtoint ptr %typeassert.value.ptr45 to i64, !dbg !3720
  br label %typeassert.next44, !dbg !3720

typeswitch.body1:                                 ; preds = %typeassert.next44
  br i1 true, label %switch.body, label %switch.next, !dbg !3716

switch.body:                                      ; preds = %typeswitch.body1
    #dbg_value(i64 %8, !3689, !DIExpression(), !3721)
  call void @runtime.printint64(i64 %8, ptr undef), !dbg !3722
  br label %typeswitch.done, !dbg !3716

switch.next:                                      ; preds = %typeswitch.body1
  br i1 false, label %switch.body2, label %typeswitch.done, !dbg !3716

switch.body2:                                     ; preds = %switch.next
    #dbg_value(i64 %8, !3689, !DIExpression(), !3723)
  %10 = trunc i64 %8 to i32, !dbg !3724
  call void @runtime.printint32(i32 %10, ptr undef), !dbg !3725
  br label %typeswitch.done, !dbg !3716

typeswitch.next3:                                 ; preds = %typeassert.next44
  %interface.type48 = extractvalue { ptr, ptr } %1, 0, !dbg !3726
  br i1 false, label %typeassert.ok50, label %typeassert.next51, !dbg !3726

typeassert.next51:                                ; preds = %typeassert.ok50, %typeswitch.next3
  %typeassert.value54 = phi i8 [ 0, %typeswitch.next3 ], [ %unpack.int53, %typeassert.ok50 ], !dbg !3726
  %11 = insertvalue { i8, i1 } undef, i8 %typeassert.value54, 0, !dbg !3726
  %12 = insertvalue { i8, i1 } %11, i1 false, 1, !dbg !3726
  %13 = extractvalue { i8, i1 } %12, 0, !dbg !3726
  %14 = extractvalue { i8, i1 } %12, 1, !dbg !3726
  br i1 %14, label %typeswitch.body4, label %typeswitch.next5, !dbg !3716

typeassert.ok50:                                  ; preds = %typeswitch.next3
  %typeassert.value.ptr52 = extractvalue { ptr, ptr } %1, 1, !dbg !3726
  %unpack.int53 = ptrtoint ptr %typeassert.value.ptr52 to i8, !dbg !3726
  br label %typeassert.next51, !dbg !3726

typeswitch.body4:                                 ; preds = %typeassert.next51
    #dbg_value(i8 %13, !3690, !DIExpression(), !3727)
  call void @runtime.printint8(i8 %13, ptr undef), !dbg !3728
  br label %typeswitch.done, !dbg !3716

typeswitch.next5:                                 ; preds = %typeassert.next51
  %interface.type55 = extractvalue { ptr, ptr } %1, 0, !dbg !3729
  br i1 false, label %typeassert.ok57, label %typeassert.next58, !dbg !3729

typeassert.next58:                                ; preds = %typeassert.ok57, %typeswitch.next5
  %typeassert.value61 = phi i16 [ 0, %typeswitch.next5 ], [ %unpack.int60, %typeassert.ok57 ], !dbg !3729
  %15 = insertvalue { i16, i1 } undef, i16 %typeassert.value61, 0, !dbg !3729
  %16 = insertvalue { i16, i1 } %15, i1 false, 1, !dbg !3729
  %17 = extractvalue { i16, i1 } %16, 0, !dbg !3729
  %18 = extractvalue { i16, i1 } %16, 1, !dbg !3729
  br i1 %18, label %typeswitch.body6, label %typeswitch.next7, !dbg !3716

typeassert.ok57:                                  ; preds = %typeswitch.next5
  %typeassert.value.ptr59 = extractvalue { ptr, ptr } %1, 1, !dbg !3729
  %unpack.int60 = ptrtoint ptr %typeassert.value.ptr59 to i16, !dbg !3729
  br label %typeassert.next58, !dbg !3729

typeswitch.body6:                                 ; preds = %typeassert.next58
    #dbg_value(i16 %17, !3691, !DIExpression(), !3730)
  call void @runtime.printint16(i16 %17, ptr undef), !dbg !3731
  br label %typeswitch.done, !dbg !3716

typeswitch.next7:                                 ; preds = %typeassert.next58
  %interface.type62 = extractvalue { ptr, ptr } %1, 0, !dbg !3732
  br i1 false, label %typeassert.ok64, label %typeassert.next65, !dbg !3732

typeassert.next65:                                ; preds = %typeassert.ok64, %typeswitch.next7
  %typeassert.value68 = phi i32 [ 0, %typeswitch.next7 ], [ %unpack.int67, %typeassert.ok64 ], !dbg !3732
  %19 = insertvalue { i32, i1 } undef, i32 %typeassert.value68, 0, !dbg !3732
  %20 = insertvalue { i32, i1 } %19, i1 false, 1, !dbg !3732
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !3732
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !3732
  br i1 %22, label %typeswitch.body8, label %typeswitch.next9, !dbg !3716

typeassert.ok64:                                  ; preds = %typeswitch.next7
  %typeassert.value.ptr66 = extractvalue { ptr, ptr } %1, 1, !dbg !3732
  %unpack.int67 = ptrtoint ptr %typeassert.value.ptr66 to i32, !dbg !3732
  br label %typeassert.next65, !dbg !3732

typeswitch.body8:                                 ; preds = %typeassert.next65
    #dbg_value(i32 %21, !3693, !DIExpression(), !3733)
  call void @runtime.printint32(i32 %21, ptr undef), !dbg !3734
  br label %typeswitch.done, !dbg !3716

typeswitch.next9:                                 ; preds = %typeassert.next65
  %interface.type69 = extractvalue { ptr, ptr } %1, 0, !dbg !3735
  br i1 false, label %typeassert.ok71, label %typeassert.next72, !dbg !3735

typeassert.next72:                                ; preds = %typeassert.ok71, %typeswitch.next9
  %typeassert.value75 = phi i64 [ 0, %typeswitch.next9 ], [ %unpack.int74, %typeassert.ok71 ], !dbg !3735
  %23 = insertvalue { i64, i1 } undef, i64 %typeassert.value75, 0, !dbg !3735
  %24 = insertvalue { i64, i1 } %23, i1 false, 1, !dbg !3735
  %25 = extractvalue { i64, i1 } %24, 0, !dbg !3735
  %26 = extractvalue { i64, i1 } %24, 1, !dbg !3735
  br i1 %26, label %typeswitch.body10, label %typeswitch.next11, !dbg !3716

typeassert.ok71:                                  ; preds = %typeswitch.next9
  %typeassert.value.ptr73 = extractvalue { ptr, ptr } %1, 1, !dbg !3735
  %unpack.int74 = ptrtoint ptr %typeassert.value.ptr73 to i64, !dbg !3735
  br label %typeassert.next72, !dbg !3735

typeswitch.body10:                                ; preds = %typeassert.next72
    #dbg_value(i64 %25, !3694, !DIExpression(), !3736)
  call void @runtime.printint64(i64 %25, ptr undef), !dbg !3737
  br label %typeswitch.done, !dbg !3716

typeswitch.next11:                                ; preds = %typeassert.next72
  %interface.type76 = extractvalue { ptr, ptr } %1, 0, !dbg !3738
  br i1 false, label %typeassert.ok78, label %typeassert.next79, !dbg !3738

typeassert.next79:                                ; preds = %typeassert.ok78, %typeswitch.next11
  %typeassert.value82 = phi i64 [ 0, %typeswitch.next11 ], [ %unpack.int81, %typeassert.ok78 ], !dbg !3738
  %27 = insertvalue { i64, i1 } undef, i64 %typeassert.value82, 0, !dbg !3738
  %28 = insertvalue { i64, i1 } %27, i1 false, 1, !dbg !3738
  %29 = extractvalue { i64, i1 } %28, 0, !dbg !3738
  %30 = extractvalue { i64, i1 } %28, 1, !dbg !3738
  br i1 %30, label %typeswitch.body12, label %typeswitch.next16, !dbg !3716

typeassert.ok78:                                  ; preds = %typeswitch.next11
  %typeassert.value.ptr80 = extractvalue { ptr, ptr } %1, 1, !dbg !3738
  %unpack.int81 = ptrtoint ptr %typeassert.value.ptr80 to i64, !dbg !3738
  br label %typeassert.next79, !dbg !3738

typeswitch.body12:                                ; preds = %typeassert.next79
  br i1 true, label %switch.body13, label %switch.next14, !dbg !3716

switch.body13:                                    ; preds = %typeswitch.body12
    #dbg_value(i64 %29, !3695, !DIExpression(), !3739)
  call void @runtime.printuint64(i64 %29, ptr undef), !dbg !3740
  br label %typeswitch.done, !dbg !3716

switch.next14:                                    ; preds = %typeswitch.body12
  br i1 false, label %switch.body15, label %typeswitch.done, !dbg !3716

switch.body15:                                    ; preds = %switch.next14
    #dbg_value(i64 %29, !3695, !DIExpression(), !3741)
  %31 = trunc i64 %29 to i32, !dbg !3742
  call void @runtime.printuint32(i32 %31, ptr undef), !dbg !3743
  br label %typeswitch.done, !dbg !3716

typeswitch.next16:                                ; preds = %typeassert.next79
  %interface.type83 = extractvalue { ptr, ptr } %1, 0, !dbg !3744
  %typeassert.ok2 = icmp eq ptr @"reflect/types.type:basic:uint8", %interface.type83, !dbg !3744
  br i1 %typeassert.ok2, label %typeassert.ok85, label %typeassert.next86, !dbg !3744

typeassert.next86:                                ; preds = %typeassert.ok85, %typeswitch.next16
  %typeassert.value89 = phi i8 [ 0, %typeswitch.next16 ], [ %unpack.int88, %typeassert.ok85 ], !dbg !3744
  %32 = insertvalue { i8, i1 } undef, i8 %typeassert.value89, 0, !dbg !3744
  %33 = insertvalue { i8, i1 } %32, i1 %typeassert.ok2, 1, !dbg !3744
  %34 = extractvalue { i8, i1 } %33, 0, !dbg !3744
  %35 = extractvalue { i8, i1 } %33, 1, !dbg !3744
  br i1 %35, label %typeswitch.body17, label %typeswitch.next18, !dbg !3716

typeassert.ok85:                                  ; preds = %typeswitch.next16
  %typeassert.value.ptr87 = extractvalue { ptr, ptr } %1, 1, !dbg !3744
  %unpack.int88 = ptrtoint ptr %typeassert.value.ptr87 to i8, !dbg !3744
  br label %typeassert.next86, !dbg !3744

typeswitch.body17:                                ; preds = %typeassert.next86
    #dbg_value(i8 %34, !3696, !DIExpression(), !3745)
  call void @runtime.printuint8(i8 %34, ptr undef), !dbg !3746
  br label %typeswitch.done, !dbg !3716

typeswitch.next18:                                ; preds = %typeassert.next86
  %interface.type90 = extractvalue { ptr, ptr } %1, 0, !dbg !3747
  br i1 false, label %typeassert.ok92, label %typeassert.next93, !dbg !3747

typeassert.next93:                                ; preds = %typeassert.ok92, %typeswitch.next18
  %typeassert.value96 = phi i16 [ 0, %typeswitch.next18 ], [ %unpack.int95, %typeassert.ok92 ], !dbg !3747
  %36 = insertvalue { i16, i1 } undef, i16 %typeassert.value96, 0, !dbg !3747
  %37 = insertvalue { i16, i1 } %36, i1 false, 1, !dbg !3747
  %38 = extractvalue { i16, i1 } %37, 0, !dbg !3747
  %39 = extractvalue { i16, i1 } %37, 1, !dbg !3747
  br i1 %39, label %typeswitch.body19, label %typeswitch.next20, !dbg !3716

typeassert.ok92:                                  ; preds = %typeswitch.next18
  %typeassert.value.ptr94 = extractvalue { ptr, ptr } %1, 1, !dbg !3747
  %unpack.int95 = ptrtoint ptr %typeassert.value.ptr94 to i16, !dbg !3747
  br label %typeassert.next93, !dbg !3747

typeswitch.body19:                                ; preds = %typeassert.next93
    #dbg_value(i16 %38, !3697, !DIExpression(), !3748)
  call void @runtime.printuint16(i16 %38, ptr undef), !dbg !3749
  br label %typeswitch.done, !dbg !3716

typeswitch.next20:                                ; preds = %typeassert.next93
  %interface.type97 = extractvalue { ptr, ptr } %1, 0, !dbg !3750
  br i1 false, label %typeassert.ok99, label %typeassert.next100, !dbg !3750

typeassert.next100:                               ; preds = %typeassert.ok99, %typeswitch.next20
  %typeassert.value103 = phi i32 [ 0, %typeswitch.next20 ], [ %unpack.int102, %typeassert.ok99 ], !dbg !3750
  %40 = insertvalue { i32, i1 } undef, i32 %typeassert.value103, 0, !dbg !3750
  %41 = insertvalue { i32, i1 } %40, i1 false, 1, !dbg !3750
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !3750
  %43 = extractvalue { i32, i1 } %41, 1, !dbg !3750
  br i1 %43, label %typeswitch.body21, label %typeswitch.next22, !dbg !3716

typeassert.ok99:                                  ; preds = %typeswitch.next20
  %typeassert.value.ptr101 = extractvalue { ptr, ptr } %1, 1, !dbg !3750
  %unpack.int102 = ptrtoint ptr %typeassert.value.ptr101 to i32, !dbg !3750
  br label %typeassert.next100, !dbg !3750

typeswitch.body21:                                ; preds = %typeassert.next100
    #dbg_value(i32 %42, !3698, !DIExpression(), !3751)
  call void @runtime.printuint32(i32 %42, ptr undef), !dbg !3752
  br label %typeswitch.done, !dbg !3716

typeswitch.next22:                                ; preds = %typeassert.next100
  %interface.type104 = extractvalue { ptr, ptr } %1, 0, !dbg !3753
  br i1 false, label %typeassert.ok106, label %typeassert.next107, !dbg !3753

typeassert.next107:                               ; preds = %typeassert.ok106, %typeswitch.next22
  %typeassert.value110 = phi i64 [ 0, %typeswitch.next22 ], [ %unpack.int109, %typeassert.ok106 ], !dbg !3753
  %44 = insertvalue { i64, i1 } undef, i64 %typeassert.value110, 0, !dbg !3753
  %45 = insertvalue { i64, i1 } %44, i1 false, 1, !dbg !3753
  %46 = extractvalue { i64, i1 } %45, 0, !dbg !3753
  %47 = extractvalue { i64, i1 } %45, 1, !dbg !3753
  br i1 %47, label %typeswitch.body23, label %typeswitch.next24, !dbg !3716

typeassert.ok106:                                 ; preds = %typeswitch.next22
  %typeassert.value.ptr108 = extractvalue { ptr, ptr } %1, 1, !dbg !3753
  %unpack.int109 = ptrtoint ptr %typeassert.value.ptr108 to i64, !dbg !3753
  br label %typeassert.next107, !dbg !3753

typeswitch.body23:                                ; preds = %typeassert.next107
    #dbg_value(i64 %46, !3699, !DIExpression(), !3754)
  call void @runtime.printuint64(i64 %46, ptr undef), !dbg !3755
  br label %typeswitch.done, !dbg !3716

typeswitch.next24:                                ; preds = %typeassert.next107
  %interface.type111 = extractvalue { ptr, ptr } %1, 0, !dbg !3756
  br i1 false, label %typeassert.ok113, label %typeassert.next114, !dbg !3756

typeassert.next114:                               ; preds = %typeassert.ok113, %typeswitch.next24
  %typeassert.value117 = phi i64 [ 0, %typeswitch.next24 ], [ %unpack.int116, %typeassert.ok113 ], !dbg !3756
  %48 = insertvalue { i64, i1 } undef, i64 %typeassert.value117, 0, !dbg !3756
  %49 = insertvalue { i64, i1 } %48, i1 false, 1, !dbg !3756
  %50 = extractvalue { i64, i1 } %49, 0, !dbg !3756
  %51 = extractvalue { i64, i1 } %49, 1, !dbg !3756
  br i1 %51, label %typeswitch.body25, label %typeswitch.next26, !dbg !3716

typeassert.ok113:                                 ; preds = %typeswitch.next24
  %typeassert.value.ptr115 = extractvalue { ptr, ptr } %1, 1, !dbg !3756
  %unpack.int116 = ptrtoint ptr %typeassert.value.ptr115 to i64, !dbg !3756
  br label %typeassert.next114, !dbg !3756

typeswitch.body25:                                ; preds = %typeassert.next114
    #dbg_value(i64 %50, !3700, !DIExpression(), !3757)
  call void @runtime.printuintptr(i64 %50, ptr undef), !dbg !3758
  br label %typeswitch.done, !dbg !3716

typeswitch.next26:                                ; preds = %typeassert.next114
  %interface.type118 = extractvalue { ptr, ptr } %1, 0, !dbg !3759
  br i1 false, label %typeassert.ok120, label %typeassert.next121, !dbg !3759

typeassert.next121:                               ; preds = %typeassert.ok120, %typeswitch.next26
  %typeassert.value123 = phi float [ 0.000000e+00, %typeswitch.next26 ], [ %57, %typeassert.ok120 ], !dbg !3713
  %52 = insertvalue { float, i1 } undef, float %typeassert.value123, 0, !dbg !3713
  %53 = insertvalue { float, i1 } %52, i1 false, 1, !dbg !3713
  %54 = extractvalue { float, i1 } %53, 0, !dbg !3759
  %55 = extractvalue { float, i1 } %53, 1, !dbg !3759
  br i1 %55, label %typeswitch.body27, label %typeswitch.next28, !dbg !3716

typeassert.ok120:                                 ; preds = %typeswitch.next26
  %typeassert.value.ptr122 = extractvalue { ptr, ptr } %1, 1, !dbg !3759
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc), !dbg !3713
  store ptr %typeassert.value.ptr122, ptr %unpack.raw.alloc, align 8, !dbg !3713
  %56 = getelementptr inbounds { float }, ptr %unpack.raw.alloc, i32 0, i32 0, !dbg !3713
  %57 = load float, ptr %56, align 4, !dbg !3713
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc), !dbg !3713
  br label %typeassert.next121, !dbg !3713

typeswitch.body27:                                ; preds = %typeassert.next121
    #dbg_value(float %54, !3701, !DIExpression(), !3760)
  call void @runtime.printfloat32(float %54, ptr undef), !dbg !3761
  br label %typeswitch.done, !dbg !3716

typeswitch.next28:                                ; preds = %typeassert.next121
  %interface.type124 = extractvalue { ptr, ptr } %1, 0, !dbg !3762
  br i1 false, label %typeassert.ok126, label %typeassert.next127, !dbg !3762

typeassert.next127:                               ; preds = %typeassert.ok126, %typeswitch.next28
  %typeassert.value130 = phi double [ 0.000000e+00, %typeswitch.next28 ], [ %63, %typeassert.ok126 ], !dbg !3713
  %58 = insertvalue { double, i1 } undef, double %typeassert.value130, 0, !dbg !3713
  %59 = insertvalue { double, i1 } %58, i1 false, 1, !dbg !3713
  %60 = extractvalue { double, i1 } %59, 0, !dbg !3762
  %61 = extractvalue { double, i1 } %59, 1, !dbg !3762
  br i1 %61, label %typeswitch.body29, label %typeswitch.next30, !dbg !3716

typeassert.ok126:                                 ; preds = %typeswitch.next28
  %typeassert.value.ptr128 = extractvalue { ptr, ptr } %1, 1, !dbg !3762
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc129), !dbg !3713
  store ptr %typeassert.value.ptr128, ptr %unpack.raw.alloc129, align 8, !dbg !3713
  %62 = getelementptr inbounds { double }, ptr %unpack.raw.alloc129, i32 0, i32 0, !dbg !3713
  %63 = load double, ptr %62, align 8, !dbg !3713
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc129), !dbg !3713
  br label %typeassert.next127, !dbg !3713

typeswitch.body29:                                ; preds = %typeassert.next127
    #dbg_value(double %60, !3703, !DIExpression(), !3763)
  call void @runtime.printfloat64(double %60, ptr undef), !dbg !3764
  br label %typeswitch.done, !dbg !3716

typeswitch.next30:                                ; preds = %typeassert.next127
  %interface.type131 = extractvalue { ptr, ptr } %1, 0, !dbg !3765
  br i1 false, label %typeassert.ok133, label %typeassert.next134, !dbg !3765

typeassert.next134:                               ; preds = %typeassert.ok133, %typeswitch.next30
  %typeassert.value137 = phi { float, float } [ zeroinitializer, %typeswitch.next30 ], [ %69, %typeassert.ok133 ], !dbg !3713
  %64 = insertvalue { { float, float }, i1 } undef, { float, float } %typeassert.value137, 0, !dbg !3713
  %65 = insertvalue { { float, float }, i1 } %64, i1 false, 1, !dbg !3713
  %66 = extractvalue { { float, float }, i1 } %65, 0, !dbg !3765
  %67 = extractvalue { { float, float }, i1 } %65, 1, !dbg !3765
  br i1 %67, label %typeswitch.body31, label %typeswitch.next32, !dbg !3716

typeassert.ok133:                                 ; preds = %typeswitch.next30
  %typeassert.value.ptr135 = extractvalue { ptr, ptr } %1, 1, !dbg !3765
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc136), !dbg !3713
  store ptr %typeassert.value.ptr135, ptr %unpack.raw.alloc136, align 8, !dbg !3713
  %68 = getelementptr inbounds { { float, float } }, ptr %unpack.raw.alloc136, i32 0, i32 0, !dbg !3713
  %69 = load { float, float }, ptr %68, align 4, !dbg !3713
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc136), !dbg !3713
  br label %typeassert.next134, !dbg !3713

typeswitch.body31:                                ; preds = %typeassert.next134
    #dbg_value({ float, float } %66, !3704, !DIExpression(), !3766)
  %70 = extractvalue { float, float } %66, 0, !dbg !3767
  %71 = extractvalue { float, float } %66, 1, !dbg !3767
  call void @runtime.printcomplex64(float %70, float %71, ptr undef), !dbg !3767
  br label %typeswitch.done, !dbg !3716

typeswitch.next32:                                ; preds = %typeassert.next134
  %interface.type138 = extractvalue { ptr, ptr } %1, 0, !dbg !3768
  br i1 false, label %typeassert.ok140, label %typeassert.next141, !dbg !3768

typeassert.next141:                               ; preds = %typeassert.ok140, %typeswitch.next32
  %typeassert.value143 = phi { double, double } [ zeroinitializer, %typeswitch.next32 ], [ %77, %typeassert.ok140 ], !dbg !3768
  %72 = insertvalue { { double, double }, i1 } undef, { double, double } %typeassert.value143, 0, !dbg !3768
  %73 = insertvalue { { double, double }, i1 } %72, i1 false, 1, !dbg !3768
  %74 = extractvalue { { double, double }, i1 } %73, 0, !dbg !3768
  %75 = extractvalue { { double, double }, i1 } %73, 1, !dbg !3768
  br i1 %75, label %typeswitch.body33, label %typeswitch.next34, !dbg !3716

typeassert.ok140:                                 ; preds = %typeswitch.next32
  %typeassert.value.ptr142 = extractvalue { ptr, ptr } %1, 1, !dbg !3768
  %76 = getelementptr inbounds { { double, double } }, ptr %typeassert.value.ptr142, i32 0, i32 0, !dbg !3768
  %77 = load { double, double }, ptr %76, align 8, !dbg !3768
  br label %typeassert.next141, !dbg !3768

typeswitch.body33:                                ; preds = %typeassert.next141
    #dbg_value({ double, double } %74, !3706, !DIExpression(), !3769)
  %78 = extractvalue { double, double } %74, 0, !dbg !3770
  %79 = extractvalue { double, double } %74, 1, !dbg !3770
  call void @runtime.printcomplex128(double %78, double %79, ptr undef), !dbg !3770
  br label %typeswitch.done, !dbg !3716

typeswitch.next34:                                ; preds = %typeassert.next141
  %interface.type144 = extractvalue { ptr, ptr } %1, 0, !dbg !3771
  %typeassert.ok1 = icmp eq ptr @"reflect/types.type:basic:string", %interface.type144, !dbg !3771
  br i1 %typeassert.ok1, label %typeassert.ok146, label %typeassert.next147, !dbg !3771

typeassert.next147:                               ; preds = %typeassert.ok146, %typeswitch.next34
  %typeassert.value149 = phi %runtime._string [ zeroinitializer, %typeswitch.next34 ], [ %85, %typeassert.ok146 ], !dbg !3771
  %80 = insertvalue { %runtime._string, i1 } undef, %runtime._string %typeassert.value149, 0, !dbg !3771
  %81 = insertvalue { %runtime._string, i1 } %80, i1 %typeassert.ok1, 1, !dbg !3771
  %82 = extractvalue { %runtime._string, i1 } %81, 0, !dbg !3771
  %83 = extractvalue { %runtime._string, i1 } %81, 1, !dbg !3771
  br i1 %83, label %typeswitch.body35, label %typeswitch.next36, !dbg !3716

typeassert.ok146:                                 ; preds = %typeswitch.next34
  %typeassert.value.ptr148 = extractvalue { ptr, ptr } %1, 1, !dbg !3771
  %84 = getelementptr inbounds { %runtime._string }, ptr %typeassert.value.ptr148, i32 0, i32 0, !dbg !3771
  %85 = load %runtime._string, ptr %84, align 8, !dbg !3771
  br label %typeassert.next147, !dbg !3771

typeswitch.body35:                                ; preds = %typeassert.next147
    #dbg_value(%runtime._string %82, !3708, !DIExpression(), !3772)
  %86 = extractvalue %runtime._string %82, 0, !dbg !3773
  %87 = extractvalue %runtime._string %82, 1, !dbg !3773
  call void @runtime.printstring(ptr %86, i64 %87, ptr undef), !dbg !3773
  br label %typeswitch.done, !dbg !3716

typeswitch.next36:                                ; preds = %typeassert.next147
  %interface.type150 = extractvalue { ptr, ptr } %1, 0, !dbg !3774
  %88 = call i1 @"interface:{Error:func:{}{basic:string}}.$typeassert"(ptr %interface.type150), !dbg !3774
  br i1 %88, label %typeassert.ok151, label %typeassert.next152, !dbg !3774

typeassert.next152:                               ; preds = %typeassert.ok151, %typeswitch.next36
  %typeassert.value153 = phi { ptr, ptr } [ zeroinitializer, %typeswitch.next36 ], [ %1, %typeassert.ok151 ], !dbg !3774
  %89 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %typeassert.value153, 0, !dbg !3774
  %90 = insertvalue { { ptr, ptr }, i1 } %89, i1 %88, 1, !dbg !3774
  %91 = extractvalue { { ptr, ptr }, i1 } %90, 0, !dbg !3774
  %92 = extractvalue { { ptr, ptr }, i1 } %90, 1, !dbg !3774
  br i1 %92, label %typeswitch.body37, label %typeswitch.next38, !dbg !3716

typeassert.ok151:                                 ; preds = %typeswitch.next36
  br label %typeassert.next152, !dbg !3774

typeswitch.body37:                                ; preds = %typeassert.next152
    #dbg_value({ ptr, ptr } %91, !3709, !DIExpression(), !3775)
  %invoke.func.typecode = extractvalue { ptr, ptr } %91, 0, !dbg !3776
  %invoke.func.value = extractvalue { ptr, ptr } %91, 1, !dbg !3776
  %93 = call %runtime._string @"interface:{Error:func:{}{basic:string}}.Error$invoke"(ptr %invoke.func.value, ptr %invoke.func.typecode, ptr undef), !dbg !3776
  %94 = extractvalue %runtime._string %93, 0, !dbg !3777
  %95 = extractvalue %runtime._string %93, 1, !dbg !3777
  call void @runtime.printstring(ptr %94, i64 %95, ptr undef), !dbg !3777
  br label %typeswitch.done, !dbg !3716

typeswitch.next38:                                ; preds = %typeassert.next152
  %interface.type154 = extractvalue { ptr, ptr } %1, 0, !dbg !3778
  %96 = call i1 @"interface:{String:func:{}{basic:string}}.$typeassert"(ptr %interface.type154), !dbg !3778
  br i1 %96, label %typeassert.ok155, label %typeassert.next156, !dbg !3778

typeassert.next156:                               ; preds = %typeassert.ok155, %typeswitch.next38
  %typeassert.value157 = phi { ptr, ptr } [ zeroinitializer, %typeswitch.next38 ], [ %1, %typeassert.ok155 ], !dbg !3778
  %97 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %typeassert.value157, 0, !dbg !3778
  %98 = insertvalue { { ptr, ptr }, i1 } %97, i1 %96, 1, !dbg !3778
  %99 = extractvalue { { ptr, ptr }, i1 } %98, 0, !dbg !3778
  %100 = extractvalue { { ptr, ptr }, i1 } %98, 1, !dbg !3778
  br i1 %100, label %typeswitch.body39, label %typeswitch.next40, !dbg !3716

typeassert.ok155:                                 ; preds = %typeswitch.next38
  br label %typeassert.next156, !dbg !3778

typeswitch.body39:                                ; preds = %typeassert.next156
    #dbg_value({ ptr, ptr } %99, !3710, !DIExpression(), !3779)
  %invoke.func.typecode158 = extractvalue { ptr, ptr } %99, 0, !dbg !3780
  %invoke.func.value159 = extractvalue { ptr, ptr } %99, 1, !dbg !3780
  %101 = call %runtime._string @"interface:{String:func:{}{basic:string}}.String$invoke"(ptr %invoke.func.value159, ptr %invoke.func.typecode158, ptr undef), !dbg !3780
  %102 = extractvalue %runtime._string %101, 0, !dbg !3781
  %103 = extractvalue %runtime._string %101, 1, !dbg !3781
  call void @runtime.printstring(ptr %102, i64 %103, ptr undef), !dbg !3781
  br label %typeswitch.done, !dbg !3716

typeswitch.next40:                                ; preds = %typeassert.next156
  %msg = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 389 to ptr), ptr undef), !dbg !3782
  store { ptr, ptr } %1, ptr %msg, align 8, !dbg !3782
  store { ptr, ptr } zeroinitializer, ptr %itf, align 8, !dbg !3713
  %104 = load { ptr, ptr }, ptr %msg, align 8, !dbg !3783
  store { ptr, ptr } %104, ptr %itf, align 8, !dbg !3784
    #dbg_value({ ptr, ptr } %104, !3712, !DIExpression(), !3784)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !3785
  %105 = getelementptr inbounds { ptr, ptr }, ptr %itf, i32 0, i32 0, !dbg !3786
  %106 = icmp eq ptr %105, null, !dbg !3786
  br i1 %106, label %deref.throw, label %deref.next, !dbg !3786

deref.next:                                       ; preds = %typeswitch.next40
  %107 = load ptr, ptr %105, align 8, !dbg !3786
  %108 = ptrtoint ptr %107 to i64, !dbg !3787
  call void @runtime.printuintptr(i64 %108, ptr undef), !dbg !3788
  call void @runtime.putchar(i8 58, ptr undef), !dbg !3789
  %109 = getelementptr inbounds { ptr, ptr }, ptr %itf, i32 0, i32 1, !dbg !3790
  %110 = icmp eq ptr %109, null, !dbg !3790
  br i1 %110, label %deref.throw160, label %deref.next161, !dbg !3790

deref.next161:                                    ; preds = %deref.next
  %111 = load ptr, ptr %109, align 8, !dbg !3790
  %112 = ptrtoint ptr %111 to i64, !dbg !3791
  call void @runtime.printptr(i64 %112, ptr undef), !dbg !3792
  call void @runtime.putchar(i8 41, ptr undef), !dbg !3793
  br label %typeswitch.done, !dbg !3716

deref.throw:                                      ; preds = %typeswitch.next40
  call void @runtime.nilPanic(ptr undef), !dbg !3786
  unreachable, !dbg !3786

deref.throw160:                                   ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !3790
  unreachable, !dbg !3790
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printbool(i1 %b, ptr %context) unnamed_addr #1 !dbg !3794 {
entry:
    #dbg_value(i1 %b, !3798, !DIExpression(), !3799)
    #dbg_value(i1 %b, !3798, !DIExpression(), !3800)
  br i1 %b, label %if.then, label %if.else, !dbg !3801

if.then:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.46", i64 4, ptr undef), !dbg !3802
  br label %if.done, !dbg !3801

if.done:                                          ; preds = %if.else, %if.then
  ret void, !dbg !3803

if.else:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.47", i64 5, ptr undef), !dbg !3804
  br label %if.done, !dbg !3801
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint64(i64 %n, ptr %context) unnamed_addr #1 !dbg !3805 {
entry:
    #dbg_value(i64 %n, !3809, !DIExpression(), !3810)
    #dbg_value(i64 %n, !3809, !DIExpression(), !3811)
  %0 = icmp slt i64 %n, 0, !dbg !3812
  br i1 %0, label %if.then, label %if.done, !dbg !3813

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3814
    #dbg_value(i64 %n, !3809, !DIExpression(), !3815)
  %1 = sub i64 0, %n, !dbg !3816
    #dbg_value(i64 %1, !3809, !DIExpression(), !3817)
  br label %if.done, !dbg !3813

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i64 [ %n, %entry ], [ %1, %if.then ], !dbg !3818
    #dbg_value(i64 %2, !3809, !DIExpression(), !3819)
  call void @runtime.printuint64(i64 %2, ptr undef), !dbg !3820
  ret void, !dbg !3821
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint32(i32 %n, ptr %context) unnamed_addr #1 !dbg !3822 {
entry:
    #dbg_value(i32 %n, !3824, !DIExpression(), !3825)
    #dbg_value(i32 %n, !3824, !DIExpression(), !3826)
  %0 = icmp slt i32 %n, 0, !dbg !3827
  br i1 %0, label %if.then, label %if.done, !dbg !3828

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3829
    #dbg_value(i32 %n, !3824, !DIExpression(), !3830)
  %1 = sub i32 0, %n, !dbg !3831
    #dbg_value(i32 %1, !3824, !DIExpression(), !3832)
  br label %if.done, !dbg !3828

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i32 [ %n, %entry ], [ %1, %if.then ], !dbg !3833
    #dbg_value(i32 %2, !3824, !DIExpression(), !3834)
  call void @runtime.printuint32(i32 %2, ptr undef), !dbg !3835
  ret void, !dbg !3836
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint8(i8 %n, ptr %context) unnamed_addr #1 !dbg !3837 {
entry:
    #dbg_value(i8 %n, !3841, !DIExpression(), !3842)
  br i1 true, label %if.then, label %if.else, !dbg !3843

if.then:                                          ; preds = %entry
    #dbg_value(i8 %n, !3841, !DIExpression(), !3844)
  %0 = sext i8 %n to i32, !dbg !3845
  call void @runtime.printint32(i32 %0, ptr undef), !dbg !3846
  br label %if.done, !dbg !3843

if.done:                                          ; preds = %if.done2, %if.then
  ret void, !dbg !3847

if.else:                                          ; preds = %entry
    #dbg_value(i8 %n, !3841, !DIExpression(), !3848)
  %1 = icmp slt i8 %n, 0, !dbg !3849
  br i1 %1, label %if.then1, label %if.done2, !dbg !3843

if.then1:                                         ; preds = %if.else
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3850
    #dbg_value(i8 %n, !3841, !DIExpression(), !3851)
  %2 = sub i8 0, %n, !dbg !3852
    #dbg_value(i8 %2, !3841, !DIExpression(), !3853)
  br label %if.done2, !dbg !3843

if.done2:                                         ; preds = %if.then1, %if.else
  %3 = phi i8 [ %n, %if.else ], [ %2, %if.then1 ], !dbg !3854
    #dbg_value(i8 %3, !3841, !DIExpression(), !3855)
  call void @runtime.printuint8(i8 %3, ptr undef), !dbg !3856
  br label %if.done, !dbg !3843
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint16(i16 %n, ptr %context) unnamed_addr #1 !dbg !3857 {
entry:
    #dbg_value(i16 %n, !3861, !DIExpression(), !3862)
    #dbg_value(i16 %n, !3861, !DIExpression(), !3863)
  %0 = sext i16 %n to i32, !dbg !3864
  call void @runtime.printint32(i32 %0, ptr undef), !dbg !3865
  ret void, !dbg !3866
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint64(i64 %n, ptr %context) unnamed_addr #1 !dbg !3867 {
entry:
    #dbg_value(i64 %n, !3869, !DIExpression(), !3874)
  %digits = alloca [20 x i8], align 1, !dbg !3875
  store [20 x i8] zeroinitializer, ptr %digits, align 1, !dbg !3875
    #dbg_value(i64 19, !3870, !DIExpression(), !3876)
    #dbg_value(i64 19, !3871, !DIExpression(), !3877)
  br label %for.loop, !dbg !3878

for.loop:                                         ; preds = %if.done, %entry
  %0 = phi i64 [ %n, %entry ], [ %10, %if.done ], !dbg !3879
  %1 = phi i64 [ 19, %entry ], [ %9, %if.done ], !dbg !3876
  %2 = phi i64 [ 19, %entry ], [ %11, %if.done ], !dbg !3877
    #dbg_value(i64 %2, !3871, !DIExpression(), !3880)
  %3 = icmp sge i64 %2, 0, !dbg !3881
  br i1 %3, label %for.body, label %for.done, !dbg !3878

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !3869, !DIExpression(), !3882)
  %4 = urem i64 %0, 10, !dbg !3883
  %5 = add i64 %4, 48, !dbg !3884
  %6 = trunc i64 %5 to i8, !dbg !3885
    #dbg_value(i8 %6, !3872, !DIExpression(), !3886)
    #dbg_value(i64 %2, !3871, !DIExpression(), !3887)
    #dbg_value(i8 %6, !3872, !DIExpression(), !3888)
  %7 = getelementptr inbounds [20 x i8], ptr %digits, i32 0, i64 %2, !dbg !3889
  store i8 %6, ptr %7, align 1, !dbg !3889
    #dbg_value(i8 %6, !3872, !DIExpression(), !3890)
  %8 = icmp ne i8 %6, 48, !dbg !3891
  br i1 %8, label %if.then, label %if.done, !dbg !3878

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %2, !3871, !DIExpression(), !3892)
    #dbg_value(i64 %2, !3870, !DIExpression(), !3893)
  br label %if.done, !dbg !3878

if.done:                                          ; preds = %if.then, %for.body
  %9 = phi i64 [ %1, %for.body ], [ %2, %if.then ], !dbg !3876
  %10 = udiv i64 %0, 10, !dbg !3894
    #dbg_value(i64 %10, !3869, !DIExpression(), !3894)
  %11 = sub i64 %2, 1, !dbg !3895
    #dbg_value(i64 %11, !3871, !DIExpression(), !3895)
  br label %for.loop, !dbg !3878

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !3870, !DIExpression(), !3896)
    #dbg_value(i64 %1, !3873, !DIExpression(), !3897)
  br label %for.loop1, !dbg !3878

for.loop1:                                        ; preds = %for.body2, %for.done
  %12 = phi i64 [ %1, %for.done ], [ %16, %for.body2 ], !dbg !3897
    #dbg_value(i64 %12, !3873, !DIExpression(), !3898)
  %13 = icmp slt i64 %12, 20, !dbg !3899
  br i1 %13, label %for.body2, label %for.done3, !dbg !3878

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %12, !3873, !DIExpression(), !3900)
  %14 = getelementptr inbounds [20 x i8], ptr %digits, i32 0, i64 %12, !dbg !3901
  %15 = load i8, ptr %14, align 1, !dbg !3901
  call void @runtime.putchar(i8 %15, ptr undef), !dbg !3902
  %16 = add i64 %12, 1, !dbg !3903
    #dbg_value(i64 %16, !3873, !DIExpression(), !3903)
  br label %for.loop1, !dbg !3878

for.done3:                                        ; preds = %for.loop1
  ret void, !dbg !3904
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint32(i32 %n, ptr %context) unnamed_addr #1 !dbg !3905 {
entry:
    #dbg_value(i32 %n, !3907, !DIExpression(), !3908)
    #dbg_value(i32 %n, !3907, !DIExpression(), !3909)
  %0 = zext i32 %n to i64, !dbg !3910
  call void @runtime.printuint64(i64 %0, ptr undef), !dbg !3911
  ret void, !dbg !3912
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint8(i8 %n, ptr %context) unnamed_addr #1 !dbg !3913 {
entry:
    #dbg_value(i8 %n, !3917, !DIExpression(), !3919)
  br i1 true, label %if.then, label %if.else, !dbg !3920

if.then:                                          ; preds = %entry
    #dbg_value(i8 %n, !3917, !DIExpression(), !3921)
  %0 = zext i8 %n to i32, !dbg !3922
  call void @runtime.printuint32(i32 %0, ptr undef), !dbg !3923
  br label %if.done, !dbg !3920

if.done:                                          ; preds = %if.done2, %if.then
  ret void, !dbg !3924

if.else:                                          ; preds = %entry
    #dbg_value(i8 %n, !3917, !DIExpression(), !3925)
  %1 = udiv i8 %n, 10, !dbg !3926
    #dbg_value(i8 %1, !3918, !DIExpression(), !3927)
    #dbg_value(i8 %1, !3918, !DIExpression(), !3928)
  %2 = icmp ne i8 %1, 0, !dbg !3929
  br i1 %2, label %if.then1, label %if.done2, !dbg !3920

if.then1:                                         ; preds = %if.else
    #dbg_value(i8 %1, !3918, !DIExpression(), !3930)
  call void @runtime.printuint8(i8 %1, ptr undef), !dbg !3931
  br label %if.done2, !dbg !3920

if.done2:                                         ; preds = %if.then1, %if.else
    #dbg_value(i8 %n, !3917, !DIExpression(), !3932)
  %3 = urem i8 %n, 10, !dbg !3933
  %4 = add i8 %3, 48, !dbg !3934
  call void @runtime.putchar(i8 %4, ptr undef), !dbg !3935
  br label %if.done, !dbg !3920
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint16(i16 %n, ptr %context) unnamed_addr #1 !dbg !3936 {
entry:
    #dbg_value(i16 %n, !3940, !DIExpression(), !3941)
    #dbg_value(i16 %n, !3940, !DIExpression(), !3942)
  %0 = zext i16 %n to i32, !dbg !3943
  call void @runtime.printuint32(i32 %0, ptr undef), !dbg !3944
  ret void, !dbg !3945
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuintptr(i64 %n, ptr %context) unnamed_addr #1 !dbg !3946 {
entry:
    #dbg_value(i64 %n, !3948, !DIExpression(), !3949)
  br i1 false, label %switch.body, label %switch.next, !dbg !3950

switch.body:                                      ; preds = %entry
    #dbg_value(i64 %n, !3948, !DIExpression(), !3951)
  %0 = trunc i64 %n to i16, !dbg !3952
  call void @runtime.printuint16(i16 %0, ptr undef), !dbg !3953
  br label %switch.done, !dbg !3950

switch.done:                                      ; preds = %switch.body3, %switch.next2, %switch.body1, %switch.body
  ret void, !dbg !3954

switch.next:                                      ; preds = %entry
  br i1 false, label %switch.body1, label %switch.next2, !dbg !3950

switch.body1:                                     ; preds = %switch.next
    #dbg_value(i64 %n, !3948, !DIExpression(), !3955)
  %1 = trunc i64 %n to i32, !dbg !3956
  call void @runtime.printuint32(i32 %1, ptr undef), !dbg !3957
  br label %switch.done, !dbg !3950

switch.next2:                                     ; preds = %switch.next
  br i1 true, label %switch.body3, label %switch.done, !dbg !3950

switch.body3:                                     ; preds = %switch.next2
    #dbg_value(i64 %n, !3948, !DIExpression(), !3958)
  call void @runtime.printuint64(i64 %n, ptr undef), !dbg !3959
  br label %switch.done, !dbg !3950
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printfloat32(float %v, ptr %context) unnamed_addr #1 !dbg !3960 {
entry:
    #dbg_value(float %v, !3964, !DIExpression(), !3973)
    #dbg_value(float %v, !3964, !DIExpression(), !3974)
    #dbg_value(float %v, !3964, !DIExpression(), !3975)
  %index.alloca = alloca [14 x i8], align 1, !dbg !3976
  %buf = alloca [14 x i8], align 1, !dbg !3976
  %0 = fcmp une float %v, %v, !dbg !3976
  br i1 %0, label %switch.body, label %switch.next, !dbg !3977

switch.body:                                      ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.35", i64 3, ptr undef), !dbg !3978
  ret void, !dbg !3979

switch.next:                                      ; preds = %entry
    #dbg_value(float %v, !3964, !DIExpression(), !3980)
    #dbg_value(float %v, !3964, !DIExpression(), !3981)
  %1 = fadd float %v, %v, !dbg !3982
    #dbg_value(float %v, !3964, !DIExpression(), !3983)
  %2 = fcmp oeq float %1, %v, !dbg !3984
  br i1 %2, label %binop.rhs, label %binop.done, !dbg !3977

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(float %v, !3964, !DIExpression(), !3985)
  %3 = fcmp ogt float %v, 0.000000e+00, !dbg !3986
  br label %binop.done, !dbg !3977

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ false, %switch.next ], [ %3, %binop.rhs ], !dbg !3987
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !3977

switch.body1:                                     ; preds = %binop.done
  call void @runtime.printstring(ptr @"runtime$string.36", i64 4, ptr undef), !dbg !3988
  ret void, !dbg !3989

switch.next2:                                     ; preds = %binop.done
    #dbg_value(float %v, !3964, !DIExpression(), !3990)
    #dbg_value(float %v, !3964, !DIExpression(), !3991)
  %5 = fadd float %v, %v, !dbg !3992
    #dbg_value(float %v, !3964, !DIExpression(), !3993)
  %6 = fcmp oeq float %5, %v, !dbg !3994
  br i1 %6, label %binop.rhs3, label %binop.done4, !dbg !3977

binop.rhs3:                                       ; preds = %switch.next2
    #dbg_value(float %v, !3964, !DIExpression(), !3995)
  %7 = fcmp olt float %v, 0.000000e+00, !dbg !3996
  br label %binop.done4, !dbg !3977

binop.done4:                                      ; preds = %binop.rhs3, %switch.next2
  %8 = phi i1 [ false, %switch.next2 ], [ %7, %binop.rhs3 ], !dbg !3997
  br i1 %8, label %switch.body5, label %switch.next6, !dbg !3977

switch.body5:                                     ; preds = %binop.done4
  call void @runtime.printstring(ptr @"runtime$string.37", i64 4, ptr undef), !dbg !3998
  ret void, !dbg !3999

switch.next6:                                     ; preds = %binop.done4
  store [14 x i8] zeroinitializer, ptr %buf, align 1, !dbg !3976
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4000
  store i8 43, ptr %9, align 1, !dbg !4000
    #dbg_value(i64 0, !3965, !DIExpression(), !4001)
    #dbg_value(float %v, !3964, !DIExpression(), !4002)
  %10 = fcmp oeq float %v, 0.000000e+00, !dbg !4003
  br i1 %10, label %if.then, label %if.else, !dbg !3977

if.then:                                          ; preds = %switch.next6
    #dbg_value(float %v, !3964, !DIExpression(), !4004)
  %11 = fdiv float 1.000000e+00, %v, !dbg !4005
  %12 = fcmp olt float %11, 0.000000e+00, !dbg !4006
  br i1 %12, label %if.then7, label %if.done, !dbg !3977

if.then7:                                         ; preds = %if.then
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4007
  store i8 45, ptr %13, align 1, !dbg !4007
  br label %if.done, !dbg !3977

if.done:                                          ; preds = %if.then19, %for.done18, %if.then7, %if.then
  %14 = phi float [ %v, %if.then ], [ %84, %for.done18 ], [ %v, %if.then7 ], [ %87, %if.then19 ], !dbg !4008
  %15 = phi i64 [ 0, %if.then ], [ %75, %for.done18 ], [ 0, %if.then7 ], [ %86, %if.then19 ], !dbg !4001
    #dbg_value(i64 0, !3966, !DIExpression(), !4009)
  br label %for.loop, !dbg !3977

for.loop:                                         ; preds = %lookup.next, %if.done
  %16 = phi float [ %14, %if.done ], [ %27, %lookup.next ], !dbg !4008
  %17 = phi i64 [ 0, %if.done ], [ %28, %lookup.next ], !dbg !4009
    #dbg_value(i64 %17, !3966, !DIExpression(), !4010)
  %18 = icmp slt i64 %17, 7, !dbg !4011
  br i1 %18, label %for.body, label %for.done, !dbg !3977

for.body:                                         ; preds = %for.loop
    #dbg_value(float %16, !3964, !DIExpression(), !4012)
  %abovemin = fcmp ole float 0xC3E0000000000000, %16, !dbg !4013
  %belowmax = fcmp ole float %16, 0x43DFFFFFC0000000, !dbg !4013
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4013
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4013
  %isnan = fcmp uno float %16, %16, !dbg !4013
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4013
  %normal = fptosi float %16 to i64, !dbg !4013
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4013
    #dbg_value(i64 %19, !3967, !DIExpression(), !4014)
    #dbg_value(i64 %17, !3966, !DIExpression(), !4015)
  %20 = add i64 %17, 2, !dbg !4016
    #dbg_value(i64 %19, !3967, !DIExpression(), !4017)
  %21 = add i64 %19, 48, !dbg !4018
  %22 = trunc i64 %21 to i8, !dbg !4019
  %23 = icmp uge i64 %20, 14, !dbg !4020
  br i1 %23, label %lookup.throw, label %lookup.next, !dbg !4020

lookup.next:                                      ; preds = %for.body
  %24 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 %20, !dbg !4020
  store i8 %22, ptr %24, align 1, !dbg !4020
    #dbg_value(i64 %19, !3967, !DIExpression(), !4021)
  %25 = sitofp i64 %19 to float, !dbg !4022
  %26 = fsub float %16, %25, !dbg !4023
    #dbg_value(float %26, !3964, !DIExpression(), !4023)
  %27 = fmul float %26, 1.000000e+01, !dbg !4024
    #dbg_value(float %27, !3964, !DIExpression(), !4024)
  %28 = add i64 %17, 1, !dbg !4025
    #dbg_value(i64 %28, !3966, !DIExpression(), !4025)
  br label %for.loop, !dbg !3977

for.done:                                         ; preds = %for.loop
  %29 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4026
  %30 = load i8, ptr %29, align 1, !dbg !4026
  %31 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 1, !dbg !4027
  store i8 %30, ptr %31, align 1, !dbg !4027
  %32 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4028
  store i8 46, ptr %32, align 1, !dbg !4028
  %33 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 9, !dbg !4029
  store i8 101, ptr %33, align 1, !dbg !4029
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4030
  store i8 43, ptr %34, align 1, !dbg !4030
    #dbg_value(i64 %15, !3965, !DIExpression(), !4031)
  %35 = icmp slt i64 %15, 0, !dbg !4032
  br i1 %35, label %if.then8, label %if.done9, !dbg !3977

if.then8:                                         ; preds = %for.done
    #dbg_value(i64 %15, !3965, !DIExpression(), !4033)
  %36 = sub i64 0, %15, !dbg !4034
    #dbg_value(i64 %36, !3965, !DIExpression(), !4035)
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4036
  store i8 45, ptr %37, align 1, !dbg !4036
  br label %if.done9, !dbg !3977

if.done9:                                         ; preds = %if.then8, %for.done
  %38 = phi i64 [ %15, %for.done ], [ %36, %if.then8 ], !dbg !4001
    #dbg_value(i64 %38, !3965, !DIExpression(), !4037)
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !4038
  %40 = and i1 false, %39, !dbg !4038
  %41 = select i1 %40, i64 1, i64 100, !dbg !4038
  %42 = sdiv i64 %38, %41, !dbg !4038
  %43 = trunc i64 %42 to i8, !dbg !4039
  %44 = add i8 %43, 48, !dbg !4040
  %45 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 11, !dbg !4041
  store i8 %44, ptr %45, align 1, !dbg !4041
    #dbg_value(i64 %38, !3965, !DIExpression(), !4042)
  %46 = icmp eq i64 %38, -9223372036854775808, !dbg !4043
  %47 = and i1 false, %46, !dbg !4043
  %48 = select i1 %47, i64 1, i64 10, !dbg !4043
  %49 = sdiv i64 %38, %48, !dbg !4043
  %50 = trunc i64 %49 to i8, !dbg !4044
  %51 = urem i8 %50, 10, !dbg !4045
  %52 = add i8 %51, 48, !dbg !4046
  %53 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 12, !dbg !4047
  store i8 %52, ptr %53, align 1, !dbg !4047
    #dbg_value(i64 %38, !3965, !DIExpression(), !4048)
  %54 = icmp eq i64 %38, -9223372036854775808, !dbg !4049
  %55 = and i1 false, %54, !dbg !4049
  %56 = select i1 %55, i64 1, i64 10, !dbg !4049
  %57 = srem i64 %38, %56, !dbg !4049
  %58 = trunc i64 %57 to i8, !dbg !4050
  %59 = add i8 %58, 48, !dbg !4051
  %60 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 13, !dbg !4052
  store i8 %59, ptr %60, align 1, !dbg !4052
  %61 = load [14 x i8], ptr %buf, align 1, !dbg !4053
    #dbg_value([14 x i8] %61, !3968, !DIExpression(), !4053)
  br label %rangeindex.loop, !dbg !3977

rangeindex.loop:                                  ; preds = %lookup.next21, %if.done9
  %62 = phi i64 [ -1, %if.done9 ], [ %63, %lookup.next21 ], !dbg !3977
  %63 = add i64 %62, 1, !dbg !3977
  %64 = icmp slt i64 %63, 14, !dbg !3977
  br i1 %64, label %rangeindex.body, label %rangeindex.done, !dbg !3977

rangeindex.body:                                  ; preds = %rangeindex.loop
  %65 = icmp uge i64 %63, 14, !dbg !4053
  br i1 %65, label %lookup.throw20, label %lookup.next21, !dbg !4053

lookup.next21:                                    ; preds = %rangeindex.body
  call void @llvm.lifetime.start.p0(i64 14, ptr %index.alloca), !dbg !3976
  store [14 x i8] %61, ptr %index.alloca, align 1, !dbg !3976
  %index.gep = getelementptr inbounds [14 x i8], ptr %index.alloca, i32 0, i64 %63, !dbg !3976
  %index.load = load i8, ptr %index.gep, align 1, !dbg !3976
  call void @llvm.lifetime.end.p0(i64 14, ptr %index.alloca), !dbg !3976
    #dbg_value(i8 %index.load, !3970, !DIExpression(), !4054)
    #dbg_value(i8 %index.load, !3970, !DIExpression(), !4055)
  call void @runtime.putchar(i8 %index.load, ptr undef), !dbg !4056
  br label %rangeindex.loop, !dbg !3977

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret void, !dbg !4057

if.else:                                          ; preds = %switch.next6
    #dbg_value(float %v, !3964, !DIExpression(), !4058)
  %66 = fcmp olt float %v, 0.000000e+00, !dbg !4059
  br i1 %66, label %if.then10, label %for.loop11, !dbg !3977

if.then10:                                        ; preds = %if.else
    #dbg_value(float %v, !3964, !DIExpression(), !4060)
  %67 = fneg float %v, !dbg !4061
    #dbg_value(float %67, !3964, !DIExpression(), !4062)
  %68 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4063
  store i8 45, ptr %68, align 1, !dbg !4063
  br label %for.loop11, !dbg !3977

for.loop11:                                       ; preds = %for.body12, %if.then10, %if.else
  %69 = phi float [ %v, %if.else ], [ %73, %for.body12 ], [ %67, %if.then10 ], !dbg !4008
  %70 = phi i64 [ 0, %if.else ], [ %72, %for.body12 ], [ 0, %if.then10 ], !dbg !4001
    #dbg_value(float %69, !3964, !DIExpression(), !4064)
  %71 = fcmp oge float %69, 1.000000e+01, !dbg !4065
  br i1 %71, label %for.body12, label %for.loop13, !dbg !3977

for.body12:                                       ; preds = %for.loop11
  %72 = add i64 %70, 1, !dbg !4066
    #dbg_value(i64 %72, !3965, !DIExpression(), !4066)
  %73 = fdiv float %69, 1.000000e+01, !dbg !4067
    #dbg_value(float %73, !3964, !DIExpression(), !4067)
  br label %for.loop11, !dbg !3977

for.loop13:                                       ; preds = %for.body14, %for.loop11
  %74 = phi float [ %69, %for.loop11 ], [ %78, %for.body14 ], !dbg !4008
  %75 = phi i64 [ %70, %for.loop11 ], [ %77, %for.body14 ], !dbg !4001
    #dbg_value(float %74, !3964, !DIExpression(), !4068)
  %76 = fcmp olt float %74, 1.000000e+00, !dbg !4069
  br i1 %76, label %for.body14, label %for.done15, !dbg !3977

for.body14:                                       ; preds = %for.loop13
  %77 = sub i64 %75, 1, !dbg !4070
    #dbg_value(i64 %77, !3965, !DIExpression(), !4070)
  %78 = fmul float %74, 1.000000e+01, !dbg !4071
    #dbg_value(float %78, !3964, !DIExpression(), !4071)
  br label %for.loop13, !dbg !3977

for.done15:                                       ; preds = %for.loop13
    #dbg_value(float 5.000000e+00, !3971, !DIExpression(), !4072)
    #dbg_value(i64 0, !3972, !DIExpression(), !4073)
  br label %for.loop16, !dbg !3977

for.loop16:                                       ; preds = %for.body17, %for.done15
  %79 = phi float [ 5.000000e+00, %for.done15 ], [ %82, %for.body17 ], !dbg !4072
  %80 = phi i64 [ 0, %for.done15 ], [ %83, %for.body17 ], !dbg !4073
    #dbg_value(i64 %80, !3972, !DIExpression(), !4074)
  %81 = icmp slt i64 %80, 7, !dbg !4075
  br i1 %81, label %for.body17, label %for.done18, !dbg !3977

for.body17:                                       ; preds = %for.loop16
  %82 = fdiv float %79, 1.000000e+01, !dbg !4076
    #dbg_value(float %82, !3971, !DIExpression(), !4076)
  %83 = add i64 %80, 1, !dbg !4077
    #dbg_value(i64 %83, !3972, !DIExpression(), !4077)
  br label %for.loop16, !dbg !3977

for.done18:                                       ; preds = %for.loop16
    #dbg_value(float %79, !3971, !DIExpression(), !4078)
  %84 = fadd float %74, %79, !dbg !4079
    #dbg_value(float %84, !3964, !DIExpression(), !4079)
    #dbg_value(float %84, !3964, !DIExpression(), !4080)
  %85 = fcmp oge float %84, 1.000000e+01, !dbg !4081
  br i1 %85, label %if.then19, label %if.done, !dbg !3977

if.then19:                                        ; preds = %for.done18
  %86 = add i64 %75, 1, !dbg !4082
    #dbg_value(i64 %86, !3965, !DIExpression(), !4082)
  %87 = fdiv float %84, 1.000000e+01, !dbg !4083
    #dbg_value(float %87, !3964, !DIExpression(), !4083)
  br label %if.done, !dbg !3977

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4020
  unreachable, !dbg !4020

lookup.throw20:                                   ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4053
  unreachable, !dbg !4053
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printfloat64(double %v, ptr %context) unnamed_addr #1 !dbg !4084 {
entry:
    #dbg_value(double %v, !4086, !DIExpression(), !4094)
    #dbg_value(double %v, !4086, !DIExpression(), !4095)
    #dbg_value(double %v, !4086, !DIExpression(), !4096)
  %index.alloca = alloca [14 x i8], align 1, !dbg !4097
  %buf = alloca [14 x i8], align 1, !dbg !4097
  %0 = fcmp une double %v, %v, !dbg !4097
  br i1 %0, label %switch.body, label %switch.next, !dbg !4098

switch.body:                                      ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.38", i64 3, ptr undef), !dbg !4099
  ret void, !dbg !4100

switch.next:                                      ; preds = %entry
    #dbg_value(double %v, !4086, !DIExpression(), !4101)
    #dbg_value(double %v, !4086, !DIExpression(), !4102)
  %1 = fadd double %v, %v, !dbg !4103
    #dbg_value(double %v, !4086, !DIExpression(), !4104)
  %2 = fcmp oeq double %1, %v, !dbg !4105
  br i1 %2, label %binop.rhs, label %binop.done, !dbg !4098

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(double %v, !4086, !DIExpression(), !4106)
  %3 = fcmp ogt double %v, 0.000000e+00, !dbg !4107
  br label %binop.done, !dbg !4098

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ false, %switch.next ], [ %3, %binop.rhs ], !dbg !4108
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4098

switch.body1:                                     ; preds = %binop.done
  call void @runtime.printstring(ptr @"runtime$string.39", i64 4, ptr undef), !dbg !4109
  ret void, !dbg !4110

switch.next2:                                     ; preds = %binop.done
    #dbg_value(double %v, !4086, !DIExpression(), !4111)
    #dbg_value(double %v, !4086, !DIExpression(), !4112)
  %5 = fadd double %v, %v, !dbg !4113
    #dbg_value(double %v, !4086, !DIExpression(), !4114)
  %6 = fcmp oeq double %5, %v, !dbg !4115
  br i1 %6, label %binop.rhs3, label %binop.done4, !dbg !4098

binop.rhs3:                                       ; preds = %switch.next2
    #dbg_value(double %v, !4086, !DIExpression(), !4116)
  %7 = fcmp olt double %v, 0.000000e+00, !dbg !4117
  br label %binop.done4, !dbg !4098

binop.done4:                                      ; preds = %binop.rhs3, %switch.next2
  %8 = phi i1 [ false, %switch.next2 ], [ %7, %binop.rhs3 ], !dbg !4118
  br i1 %8, label %switch.body5, label %switch.next6, !dbg !4098

switch.body5:                                     ; preds = %binop.done4
  call void @runtime.printstring(ptr @"runtime$string.40", i64 4, ptr undef), !dbg !4119
  ret void, !dbg !4120

switch.next6:                                     ; preds = %binop.done4
  store [14 x i8] zeroinitializer, ptr %buf, align 1, !dbg !4097
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4121
  store i8 43, ptr %9, align 1, !dbg !4121
    #dbg_value(i64 0, !4087, !DIExpression(), !4122)
    #dbg_value(double %v, !4086, !DIExpression(), !4123)
  %10 = fcmp oeq double %v, 0.000000e+00, !dbg !4124
  br i1 %10, label %if.then, label %if.else, !dbg !4098

if.then:                                          ; preds = %switch.next6
    #dbg_value(double %v, !4086, !DIExpression(), !4125)
  %11 = fdiv double 1.000000e+00, %v, !dbg !4126
  %12 = fcmp olt double %11, 0.000000e+00, !dbg !4127
  br i1 %12, label %if.then7, label %if.done, !dbg !4098

if.then7:                                         ; preds = %if.then
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4128
  store i8 45, ptr %13, align 1, !dbg !4128
  br label %if.done, !dbg !4098

if.done:                                          ; preds = %if.then19, %for.done18, %if.then7, %if.then
  %14 = phi double [ %v, %if.then ], [ %84, %for.done18 ], [ %v, %if.then7 ], [ %87, %if.then19 ], !dbg !4129
  %15 = phi i64 [ 0, %if.then ], [ %75, %for.done18 ], [ 0, %if.then7 ], [ %86, %if.then19 ], !dbg !4122
    #dbg_value(i64 0, !4088, !DIExpression(), !4130)
  br label %for.loop, !dbg !4098

for.loop:                                         ; preds = %lookup.next, %if.done
  %16 = phi double [ %14, %if.done ], [ %27, %lookup.next ], !dbg !4129
  %17 = phi i64 [ 0, %if.done ], [ %28, %lookup.next ], !dbg !4130
    #dbg_value(i64 %17, !4088, !DIExpression(), !4131)
  %18 = icmp slt i64 %17, 7, !dbg !4132
  br i1 %18, label %for.body, label %for.done, !dbg !4098

for.body:                                         ; preds = %for.loop
    #dbg_value(double %16, !4086, !DIExpression(), !4133)
  %abovemin = fcmp ole double 0xC3E0000000000000, %16, !dbg !4134
  %belowmax = fcmp ole double %16, 0x43DFFFFFFFFFFFFE, !dbg !4134
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4134
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4134
  %isnan = fcmp uno double %16, %16, !dbg !4134
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4134
  %normal = fptosi double %16 to i64, !dbg !4134
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4134
    #dbg_value(i64 %19, !4089, !DIExpression(), !4135)
    #dbg_value(i64 %17, !4088, !DIExpression(), !4136)
  %20 = add i64 %17, 2, !dbg !4137
    #dbg_value(i64 %19, !4089, !DIExpression(), !4138)
  %21 = add i64 %19, 48, !dbg !4139
  %22 = trunc i64 %21 to i8, !dbg !4140
  %23 = icmp uge i64 %20, 14, !dbg !4141
  br i1 %23, label %lookup.throw, label %lookup.next, !dbg !4141

lookup.next:                                      ; preds = %for.body
  %24 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 %20, !dbg !4141
  store i8 %22, ptr %24, align 1, !dbg !4141
    #dbg_value(i64 %19, !4089, !DIExpression(), !4142)
  %25 = sitofp i64 %19 to double, !dbg !4143
  %26 = fsub double %16, %25, !dbg !4144
    #dbg_value(double %26, !4086, !DIExpression(), !4144)
  %27 = fmul double %26, 1.000000e+01, !dbg !4145
    #dbg_value(double %27, !4086, !DIExpression(), !4145)
  %28 = add i64 %17, 1, !dbg !4146
    #dbg_value(i64 %28, !4088, !DIExpression(), !4146)
  br label %for.loop, !dbg !4098

for.done:                                         ; preds = %for.loop
  %29 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4147
  %30 = load i8, ptr %29, align 1, !dbg !4147
  %31 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 1, !dbg !4148
  store i8 %30, ptr %31, align 1, !dbg !4148
  %32 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4149
  store i8 46, ptr %32, align 1, !dbg !4149
  %33 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 9, !dbg !4150
  store i8 101, ptr %33, align 1, !dbg !4150
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4151
  store i8 43, ptr %34, align 1, !dbg !4151
    #dbg_value(i64 %15, !4087, !DIExpression(), !4152)
  %35 = icmp slt i64 %15, 0, !dbg !4153
  br i1 %35, label %if.then8, label %if.done9, !dbg !4098

if.then8:                                         ; preds = %for.done
    #dbg_value(i64 %15, !4087, !DIExpression(), !4154)
  %36 = sub i64 0, %15, !dbg !4155
    #dbg_value(i64 %36, !4087, !DIExpression(), !4156)
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4157
  store i8 45, ptr %37, align 1, !dbg !4157
  br label %if.done9, !dbg !4098

if.done9:                                         ; preds = %if.then8, %for.done
  %38 = phi i64 [ %15, %for.done ], [ %36, %if.then8 ], !dbg !4122
    #dbg_value(i64 %38, !4087, !DIExpression(), !4158)
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !4159
  %40 = and i1 false, %39, !dbg !4159
  %41 = select i1 %40, i64 1, i64 100, !dbg !4159
  %42 = sdiv i64 %38, %41, !dbg !4159
  %43 = trunc i64 %42 to i8, !dbg !4160
  %44 = add i8 %43, 48, !dbg !4161
  %45 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 11, !dbg !4162
  store i8 %44, ptr %45, align 1, !dbg !4162
    #dbg_value(i64 %38, !4087, !DIExpression(), !4163)
  %46 = icmp eq i64 %38, -9223372036854775808, !dbg !4164
  %47 = and i1 false, %46, !dbg !4164
  %48 = select i1 %47, i64 1, i64 10, !dbg !4164
  %49 = sdiv i64 %38, %48, !dbg !4164
  %50 = trunc i64 %49 to i8, !dbg !4165
  %51 = urem i8 %50, 10, !dbg !4166
  %52 = add i8 %51, 48, !dbg !4167
  %53 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 12, !dbg !4168
  store i8 %52, ptr %53, align 1, !dbg !4168
    #dbg_value(i64 %38, !4087, !DIExpression(), !4169)
  %54 = icmp eq i64 %38, -9223372036854775808, !dbg !4170
  %55 = and i1 false, %54, !dbg !4170
  %56 = select i1 %55, i64 1, i64 10, !dbg !4170
  %57 = srem i64 %38, %56, !dbg !4170
  %58 = trunc i64 %57 to i8, !dbg !4171
  %59 = add i8 %58, 48, !dbg !4172
  %60 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 13, !dbg !4173
  store i8 %59, ptr %60, align 1, !dbg !4173
  %61 = load [14 x i8], ptr %buf, align 1, !dbg !4174
    #dbg_value([14 x i8] %61, !4090, !DIExpression(), !4174)
  br label %rangeindex.loop, !dbg !4098

rangeindex.loop:                                  ; preds = %lookup.next21, %if.done9
  %62 = phi i64 [ -1, %if.done9 ], [ %63, %lookup.next21 ], !dbg !4098
  %63 = add i64 %62, 1, !dbg !4098
  %64 = icmp slt i64 %63, 14, !dbg !4098
  br i1 %64, label %rangeindex.body, label %rangeindex.done, !dbg !4098

rangeindex.body:                                  ; preds = %rangeindex.loop
  %65 = icmp uge i64 %63, 14, !dbg !4174
  br i1 %65, label %lookup.throw20, label %lookup.next21, !dbg !4174

lookup.next21:                                    ; preds = %rangeindex.body
  call void @llvm.lifetime.start.p0(i64 14, ptr %index.alloca), !dbg !4097
  store [14 x i8] %61, ptr %index.alloca, align 1, !dbg !4097
  %index.gep = getelementptr inbounds [14 x i8], ptr %index.alloca, i32 0, i64 %63, !dbg !4097
  %index.load = load i8, ptr %index.gep, align 1, !dbg !4097
  call void @llvm.lifetime.end.p0(i64 14, ptr %index.alloca), !dbg !4097
    #dbg_value(i8 %index.load, !4091, !DIExpression(), !4175)
    #dbg_value(i8 %index.load, !4091, !DIExpression(), !4176)
  call void @runtime.putchar(i8 %index.load, ptr undef), !dbg !4177
  br label %rangeindex.loop, !dbg !4098

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret void, !dbg !4178

if.else:                                          ; preds = %switch.next6
    #dbg_value(double %v, !4086, !DIExpression(), !4179)
  %66 = fcmp olt double %v, 0.000000e+00, !dbg !4180
  br i1 %66, label %if.then10, label %for.loop11, !dbg !4098

if.then10:                                        ; preds = %if.else
    #dbg_value(double %v, !4086, !DIExpression(), !4181)
  %67 = fneg double %v, !dbg !4182
    #dbg_value(double %67, !4086, !DIExpression(), !4183)
  %68 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4184
  store i8 45, ptr %68, align 1, !dbg !4184
  br label %for.loop11, !dbg !4098

for.loop11:                                       ; preds = %for.body12, %if.then10, %if.else
  %69 = phi double [ %v, %if.else ], [ %73, %for.body12 ], [ %67, %if.then10 ], !dbg !4129
  %70 = phi i64 [ 0, %if.else ], [ %72, %for.body12 ], [ 0, %if.then10 ], !dbg !4122
    #dbg_value(double %69, !4086, !DIExpression(), !4185)
  %71 = fcmp oge double %69, 1.000000e+01, !dbg !4186
  br i1 %71, label %for.body12, label %for.loop13, !dbg !4098

for.body12:                                       ; preds = %for.loop11
  %72 = add i64 %70, 1, !dbg !4187
    #dbg_value(i64 %72, !4087, !DIExpression(), !4187)
  %73 = fdiv double %69, 1.000000e+01, !dbg !4188
    #dbg_value(double %73, !4086, !DIExpression(), !4188)
  br label %for.loop11, !dbg !4098

for.loop13:                                       ; preds = %for.body14, %for.loop11
  %74 = phi double [ %69, %for.loop11 ], [ %78, %for.body14 ], !dbg !4129
  %75 = phi i64 [ %70, %for.loop11 ], [ %77, %for.body14 ], !dbg !4122
    #dbg_value(double %74, !4086, !DIExpression(), !4189)
  %76 = fcmp olt double %74, 1.000000e+00, !dbg !4190
  br i1 %76, label %for.body14, label %for.done15, !dbg !4098

for.body14:                                       ; preds = %for.loop13
  %77 = sub i64 %75, 1, !dbg !4191
    #dbg_value(i64 %77, !4087, !DIExpression(), !4191)
  %78 = fmul double %74, 1.000000e+01, !dbg !4192
    #dbg_value(double %78, !4086, !DIExpression(), !4192)
  br label %for.loop13, !dbg !4098

for.done15:                                       ; preds = %for.loop13
    #dbg_value(double 5.000000e+00, !4092, !DIExpression(), !4193)
    #dbg_value(i64 0, !4093, !DIExpression(), !4194)
  br label %for.loop16, !dbg !4098

for.loop16:                                       ; preds = %for.body17, %for.done15
  %79 = phi double [ 5.000000e+00, %for.done15 ], [ %82, %for.body17 ], !dbg !4193
  %80 = phi i64 [ 0, %for.done15 ], [ %83, %for.body17 ], !dbg !4194
    #dbg_value(i64 %80, !4093, !DIExpression(), !4195)
  %81 = icmp slt i64 %80, 7, !dbg !4196
  br i1 %81, label %for.body17, label %for.done18, !dbg !4098

for.body17:                                       ; preds = %for.loop16
  %82 = fdiv double %79, 1.000000e+01, !dbg !4197
    #dbg_value(double %82, !4092, !DIExpression(), !4197)
  %83 = add i64 %80, 1, !dbg !4198
    #dbg_value(i64 %83, !4093, !DIExpression(), !4198)
  br label %for.loop16, !dbg !4098

for.done18:                                       ; preds = %for.loop16
    #dbg_value(double %79, !4092, !DIExpression(), !4199)
  %84 = fadd double %74, %79, !dbg !4200
    #dbg_value(double %84, !4086, !DIExpression(), !4200)
    #dbg_value(double %84, !4086, !DIExpression(), !4201)
  %85 = fcmp oge double %84, 1.000000e+01, !dbg !4202
  br i1 %85, label %if.then19, label %if.done, !dbg !4098

if.then19:                                        ; preds = %for.done18
  %86 = add i64 %75, 1, !dbg !4203
    #dbg_value(i64 %86, !4087, !DIExpression(), !4203)
  %87 = fdiv double %84, 1.000000e+01, !dbg !4204
    #dbg_value(double %87, !4086, !DIExpression(), !4204)
  br label %if.done, !dbg !4098

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4141
  unreachable, !dbg !4141

lookup.throw20:                                   ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4174
  unreachable, !dbg !4174
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printcomplex64(float %c.r, float %c.i, ptr %context) unnamed_addr #1 !dbg !4205 {
entry:
  %0 = insertvalue { float, float } zeroinitializer, float %c.r, 0, !dbg !4210
  %1 = insertvalue { float, float } %0, float %c.i, 1, !dbg !4210
    #dbg_value(float %c.r, !4209, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4210)
    #dbg_value(float %c.i, !4209, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4210)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4211
    #dbg_value({ float, float } %1, !4209, !DIExpression(), !4212)
  %real = extractvalue { float, float } %1, 0, !dbg !4213
  call void @runtime.printfloat32(float %real, ptr undef), !dbg !4214
    #dbg_value({ float, float } %1, !4209, !DIExpression(), !4215)
  %imag = extractvalue { float, float } %1, 1, !dbg !4216
  call void @runtime.printfloat32(float %imag, ptr undef), !dbg !4217
  call void @runtime.printstring(ptr @"runtime$string.41", i64 2, ptr undef), !dbg !4218
  ret void, !dbg !4219
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printcomplex128(double %c.r, double %c.i, ptr %context) unnamed_addr #1 !dbg !4220 {
entry:
  %0 = insertvalue { double, double } zeroinitializer, double %c.r, 0, !dbg !4225
  %1 = insertvalue { double, double } %0, double %c.i, 1, !dbg !4225
    #dbg_value(double %c.r, !4224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4225)
    #dbg_value(double %c.i, !4224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4225)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4226
    #dbg_value({ double, double } %1, !4224, !DIExpression(), !4227)
  %real = extractvalue { double, double } %1, 0, !dbg !4228
  call void @runtime.printfloat64(double %real, ptr undef), !dbg !4229
    #dbg_value({ double, double } %1, !4224, !DIExpression(), !4230)
  %imag = extractvalue { double, double } %1, 1, !dbg !4231
  call void @runtime.printfloat64(double %imag, ptr undef), !dbg !4232
  call void @runtime.printstring(ptr @"runtime$string.42", i64 2, ptr undef), !dbg !4233
  ret void, !dbg !4234
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
define internal void @runtime._panic(ptr %message.typecode, ptr %message.value, ptr %context) #1 !dbg !4235 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %message.typecode, 0, !dbg !4238
  %1 = insertvalue { ptr, ptr } %0, ptr %message.value, 1, !dbg !4238
    #dbg_value(ptr %message.typecode, !4237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4238)
    #dbg_value(ptr %message.value, !4237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4238)
    #dbg_value({ ptr, ptr } %1, !4237, !DIExpression(), !4239)
  %2 = extractvalue { ptr, ptr } %1, 0, !dbg !4240
  %3 = extractvalue { ptr, ptr } %1, 1, !dbg !4240
  call void @runtime.panicOrGoexit(ptr %2, ptr %3, i8 1, ptr undef), !dbg !4240
  ret void, !dbg !4241
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @runtime.stringEqual(ptr readonly %x.data, i64 %x.len, ptr readonly %y.data, i64 %y.len, ptr %context) #1 !dbg !4242 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %x.data, 0, !dbg !4250
  %1 = insertvalue %runtime._string %0, i64 %x.len, 1, !dbg !4250
    #dbg_value(ptr %x.data, !4247, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4250)
    #dbg_value(i64 %x.len, !4247, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4250)
  %2 = insertvalue %runtime._string zeroinitializer, ptr %y.data, 0, !dbg !4250
  %3 = insertvalue %runtime._string %2, i64 %y.len, 1, !dbg !4250
    #dbg_value(ptr %y.data, !4248, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4250)
    #dbg_value(i64 %y.len, !4248, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4250)
    #dbg_value(%runtime._string %1, !4247, !DIExpression(), !4251)
  %len = extractvalue %runtime._string %1, 1, !dbg !4252
    #dbg_value(%runtime._string %3, !4248, !DIExpression(), !4253)
  %len3 = extractvalue %runtime._string %3, 1, !dbg !4254
  %4 = icmp ne i64 %len, %len3, !dbg !4255
  br i1 %4, label %if.then, label %if.done, !dbg !4256

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !4257

if.done:                                          ; preds = %entry
    #dbg_value(i64 0, !4249, !DIExpression(), !4258)
  br label %for.loop, !dbg !4256

for.loop:                                         ; preds = %if.done2, %if.done
  %5 = phi i64 [ 0, %if.done ], [ %14, %if.done2 ], !dbg !4258
    #dbg_value(i64 %5, !4249, !DIExpression(), !4259)
    #dbg_value(%runtime._string %1, !4247, !DIExpression(), !4260)
  %len4 = extractvalue %runtime._string %1, 1, !dbg !4261
  %6 = icmp slt i64 %5, %len4, !dbg !4262
  br i1 %6, label %for.body, label %for.done, !dbg !4256

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4249, !DIExpression(), !4263)
    #dbg_value(%runtime._string %1, !4247, !DIExpression(), !4264)
  %len5 = extractvalue %runtime._string %1, 1, !dbg !4265
  %7 = extractvalue %runtime._string %1, 0, !dbg !4265
  %8 = getelementptr inbounds i8, ptr %7, i64 %5, !dbg !4265
  %9 = load i8, ptr %8, align 1, !dbg !4265
    #dbg_value(i64 %5, !4249, !DIExpression(), !4266)
    #dbg_value(%runtime._string %3, !4248, !DIExpression(), !4267)
  %len6 = extractvalue %runtime._string %3, 1, !dbg !4268
  %10 = extractvalue %runtime._string %3, 0, !dbg !4268
  %11 = getelementptr inbounds i8, ptr %10, i64 %5, !dbg !4268
  %12 = load i8, ptr %11, align 1, !dbg !4268
  %13 = icmp ne i8 %9, %12, !dbg !4269
  br i1 %13, label %if.then1, label %if.done2, !dbg !4256

if.then1:                                         ; preds = %for.body
  ret i1 false, !dbg !4270

if.done2:                                         ; preds = %for.body
  %14 = add i64 %5, 1, !dbg !4271
    #dbg_value(i64 %14, !4249, !DIExpression(), !4271)
  br label %for.loop, !dbg !4256

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4272
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.slicePanic(ptr %context) #1 !dbg !4273 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4274
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.20", i64 18, ptr undef), !dbg !4275
  ret void, !dbg !4276
}

; Function Attrs: nounwind uwtable(sync)
define double @fminimum(double %x, double %y) #1 !dbg !4277 {
entry:
    #dbg_value(double %x, !4281, !DIExpression(), !4283)
    #dbg_value(double %y, !4282, !DIExpression(), !4283)
    #dbg_value(double %x, !4281, !DIExpression(), !4284)
    #dbg_value(double %y, !4282, !DIExpression(), !4285)
  %0 = call double @runtime.minimumFloat64(double %x, double %y, ptr undef), !dbg !4286
  ret double %0, !dbg !4287
}

; Function Attrs: nounwind uwtable(sync)
define internal double @runtime.minimumFloat64(double %x, double %y, ptr %context) unnamed_addr #1 !dbg !4288 {
entry:
    #dbg_value(double %x, !4290, !DIExpression(), !4292)
    #dbg_value(double %y, !4291, !DIExpression(), !4292)
    #dbg_value(double %x, !4290, !DIExpression(), !4293)
    #dbg_value(double %y, !4291, !DIExpression(), !4294)
  %0 = call double @"runtime.minimumFloat[float64 int64]"(double %x, double %y, i64 9218868437227405313, i64 9223372036854775807, ptr undef), !dbg !4295
  ret double %0, !dbg !4296
}

; Function Attrs: nounwind uwtable(sync)
define internal double @"runtime.minimumFloat[float64 int64]"(double %x, double %y, i64 %minPosNaN, i64 %magMask, ptr %context) unnamed_addr #1 !dbg !4297 {
entry:
    #dbg_value(double %x, !4301, !DIExpression(), !4307)
    #dbg_value(double %y, !4302, !DIExpression(), !4307)
    #dbg_value(i64 %minPosNaN, !4303, !DIExpression(), !4307)
    #dbg_value(i64 %magMask, !4304, !DIExpression(), !4307)
  %x6 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4308
  store double %x, ptr %x6, align 8, !dbg !4308
  %y7 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4309
  store double %y, ptr %y7, align 8, !dbg !4309
  %0 = load i64, ptr %x6, align 8, !dbg !4310
    #dbg_value(i64 %0, !4305, !DIExpression(), !4311)
  %1 = load i64, ptr %y7, align 8, !dbg !4312
    #dbg_value(i64 %1, !4306, !DIExpression(), !4313)
    #dbg_value(i64 %0, !4305, !DIExpression(), !4314)
    #dbg_value(i64 %minPosNaN, !4303, !DIExpression(), !4315)
  %2 = icmp sge i64 %0, %minPosNaN, !dbg !4316
  br i1 %2, label %switch.body, label %switch.next, !dbg !4317

switch.body:                                      ; preds = %entry
  %3 = load double, ptr %x6, align 8, !dbg !4318
    #dbg_value(double %3, !4301, !DIExpression(), !4318)
  ret double %3, !dbg !4319

switch.next:                                      ; preds = %entry
    #dbg_value(i64 %1, !4306, !DIExpression(), !4320)
    #dbg_value(i64 %minPosNaN, !4303, !DIExpression(), !4321)
  %4 = icmp sge i64 %1, %minPosNaN, !dbg !4322
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4317

switch.body1:                                     ; preds = %switch.next
  %5 = load double, ptr %y7, align 8, !dbg !4323
    #dbg_value(double %5, !4302, !DIExpression(), !4323)
  ret double %5, !dbg !4324

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i64 %0, !4305, !DIExpression(), !4325)
  %6 = icmp slt i64 %0, 0, !dbg !4326
  br i1 %6, label %if.then, label %if.done, !dbg !4317

if.then:                                          ; preds = %switch.next2
    #dbg_value(i64 %magMask, !4304, !DIExpression(), !4327)
  %7 = xor i64 %0, %magMask, !dbg !4328
    #dbg_value(i64 %7, !4305, !DIExpression(), !4328)
  br label %if.done, !dbg !4317

if.done:                                          ; preds = %if.then, %switch.next2
  %8 = phi i64 [ %0, %switch.next2 ], [ %7, %if.then ], !dbg !4311
    #dbg_value(i64 %1, !4306, !DIExpression(), !4329)
  %9 = icmp slt i64 %1, 0, !dbg !4330
  br i1 %9, label %if.then3, label %if.done4, !dbg !4317

if.then3:                                         ; preds = %if.done
    #dbg_value(i64 %magMask, !4304, !DIExpression(), !4331)
  %10 = xor i64 %1, %magMask, !dbg !4332
    #dbg_value(i64 %10, !4306, !DIExpression(), !4332)
  br label %if.done4, !dbg !4317

if.done4:                                         ; preds = %if.then3, %if.done
  %11 = phi i64 [ %1, %if.done ], [ %10, %if.then3 ], !dbg !4313
    #dbg_value(i64 %8, !4305, !DIExpression(), !4333)
    #dbg_value(i64 %11, !4306, !DIExpression(), !4334)
  %12 = icmp sle i64 %8, %11, !dbg !4335
  br i1 %12, label %if.then5, label %if.else, !dbg !4317

if.then5:                                         ; preds = %if.done4
  %13 = load double, ptr %x6, align 8, !dbg !4336
    #dbg_value(double %13, !4301, !DIExpression(), !4336)
  ret double %13, !dbg !4337

if.else:                                          ; preds = %if.done4
  %14 = load double, ptr %y7, align 8, !dbg !4338
    #dbg_value(double %14, !4302, !DIExpression(), !4338)
  ret double %14, !dbg !4339
}

; Function Attrs: nounwind uwtable(sync)
define float @fminimumf(float %x, float %y) #1 !dbg !4340 {
entry:
    #dbg_value(float %x, !4344, !DIExpression(), !4346)
    #dbg_value(float %y, !4345, !DIExpression(), !4346)
    #dbg_value(float %x, !4344, !DIExpression(), !4347)
    #dbg_value(float %y, !4345, !DIExpression(), !4348)
  %0 = call float @runtime.minimumFloat32(float %x, float %y, ptr undef), !dbg !4349
  ret float %0, !dbg !4350
}

; Function Attrs: nounwind uwtable(sync)
define internal float @runtime.minimumFloat32(float %x, float %y, ptr %context) unnamed_addr #1 !dbg !4351 {
entry:
    #dbg_value(float %x, !4353, !DIExpression(), !4355)
    #dbg_value(float %y, !4354, !DIExpression(), !4355)
    #dbg_value(float %x, !4353, !DIExpression(), !4356)
    #dbg_value(float %y, !4354, !DIExpression(), !4357)
  %0 = call float @"runtime.minimumFloat[float32 int32]"(float %x, float %y, i32 2139095041, i32 2147483647, ptr undef), !dbg !4358
  ret float %0, !dbg !4359
}

; Function Attrs: nounwind uwtable(sync)
define internal float @"runtime.minimumFloat[float32 int32]"(float %x, float %y, i32 %minPosNaN, i32 %magMask, ptr %context) unnamed_addr #1 !dbg !4360 {
entry:
    #dbg_value(float %x, !4364, !DIExpression(), !4370)
    #dbg_value(float %y, !4365, !DIExpression(), !4370)
    #dbg_value(i32 %minPosNaN, !4366, !DIExpression(), !4370)
    #dbg_value(i32 %magMask, !4367, !DIExpression(), !4370)
  %x6 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4371
  store float %x, ptr %x6, align 4, !dbg !4371
  %y7 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4372
  store float %y, ptr %y7, align 4, !dbg !4372
  %0 = load i32, ptr %x6, align 4, !dbg !4373
    #dbg_value(i32 %0, !4368, !DIExpression(), !4374)
  %1 = load i32, ptr %y7, align 4, !dbg !4375
    #dbg_value(i32 %1, !4369, !DIExpression(), !4376)
    #dbg_value(i32 %0, !4368, !DIExpression(), !4377)
    #dbg_value(i32 %minPosNaN, !4366, !DIExpression(), !4378)
  %2 = icmp sge i32 %0, %minPosNaN, !dbg !4379
  br i1 %2, label %switch.body, label %switch.next, !dbg !4380

switch.body:                                      ; preds = %entry
  %3 = load float, ptr %x6, align 4, !dbg !4381
    #dbg_value(float %3, !4364, !DIExpression(), !4381)
  ret float %3, !dbg !4382

switch.next:                                      ; preds = %entry
    #dbg_value(i32 %1, !4369, !DIExpression(), !4383)
    #dbg_value(i32 %minPosNaN, !4366, !DIExpression(), !4384)
  %4 = icmp sge i32 %1, %minPosNaN, !dbg !4385
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4380

switch.body1:                                     ; preds = %switch.next
  %5 = load float, ptr %y7, align 4, !dbg !4386
    #dbg_value(float %5, !4365, !DIExpression(), !4386)
  ret float %5, !dbg !4387

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i32 %0, !4368, !DIExpression(), !4388)
  %6 = icmp slt i32 %0, 0, !dbg !4389
  br i1 %6, label %if.then, label %if.done, !dbg !4380

if.then:                                          ; preds = %switch.next2
    #dbg_value(i32 %magMask, !4367, !DIExpression(), !4390)
  %7 = xor i32 %0, %magMask, !dbg !4391
    #dbg_value(i32 %7, !4368, !DIExpression(), !4391)
  br label %if.done, !dbg !4380

if.done:                                          ; preds = %if.then, %switch.next2
  %8 = phi i32 [ %0, %switch.next2 ], [ %7, %if.then ], !dbg !4374
    #dbg_value(i32 %1, !4369, !DIExpression(), !4392)
  %9 = icmp slt i32 %1, 0, !dbg !4393
  br i1 %9, label %if.then3, label %if.done4, !dbg !4380

if.then3:                                         ; preds = %if.done
    #dbg_value(i32 %magMask, !4367, !DIExpression(), !4394)
  %10 = xor i32 %1, %magMask, !dbg !4395
    #dbg_value(i32 %10, !4369, !DIExpression(), !4395)
  br label %if.done4, !dbg !4380

if.done4:                                         ; preds = %if.then3, %if.done
  %11 = phi i32 [ %1, %if.done ], [ %10, %if.then3 ], !dbg !4376
    #dbg_value(i32 %8, !4368, !DIExpression(), !4396)
    #dbg_value(i32 %11, !4369, !DIExpression(), !4397)
  %12 = icmp sle i32 %8, %11, !dbg !4398
  br i1 %12, label %if.then5, label %if.else, !dbg !4380

if.then5:                                         ; preds = %if.done4
  %13 = load float, ptr %x6, align 4, !dbg !4399
    #dbg_value(float %13, !4364, !DIExpression(), !4399)
  ret float %13, !dbg !4400

if.else:                                          ; preds = %if.done4
  %14 = load float, ptr %y7, align 4, !dbg !4401
    #dbg_value(float %14, !4365, !DIExpression(), !4401)
  ret float %14, !dbg !4402
}

; Function Attrs: nounwind uwtable(sync)
define double @fmaximum(double %x, double %y) #1 !dbg !4403 {
entry:
    #dbg_value(double %x, !4405, !DIExpression(), !4407)
    #dbg_value(double %y, !4406, !DIExpression(), !4407)
    #dbg_value(double %x, !4405, !DIExpression(), !4408)
    #dbg_value(double %y, !4406, !DIExpression(), !4409)
  %0 = call double @runtime.maximumFloat64(double %x, double %y, ptr undef), !dbg !4410
  ret double %0, !dbg !4411
}

; Function Attrs: nounwind uwtable(sync)
define internal double @runtime.maximumFloat64(double %x, double %y, ptr %context) unnamed_addr #1 !dbg !4412 {
entry:
    #dbg_value(double %x, !4414, !DIExpression(), !4416)
    #dbg_value(double %y, !4415, !DIExpression(), !4416)
    #dbg_value(double %x, !4414, !DIExpression(), !4417)
    #dbg_value(double %y, !4415, !DIExpression(), !4418)
  %0 = call double @"runtime.maximumFloat[float64 int64]"(double %x, double %y, i64 9218868437227405313, i64 9223372036854775807, ptr undef), !dbg !4419
  ret double %0, !dbg !4420
}

; Function Attrs: nounwind uwtable(sync)
define internal double @"runtime.maximumFloat[float64 int64]"(double %x, double %y, i64 %minPosNaN, i64 %magMask, ptr %context) unnamed_addr #1 !dbg !4421 {
entry:
    #dbg_value(double %x, !4423, !DIExpression(), !4430)
    #dbg_value(double %y, !4424, !DIExpression(), !4430)
    #dbg_value(i64 %minPosNaN, !4425, !DIExpression(), !4430)
    #dbg_value(i64 %magMask, !4426, !DIExpression(), !4430)
  %x6 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4431
  store double %x, ptr %x6, align 8, !dbg !4431
  %y7 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4432
  store double %y, ptr %y7, align 8, !dbg !4432
  %0 = load i64, ptr %x6, align 8, !dbg !4433
    #dbg_value(i64 %0, !4427, !DIExpression(), !4434)
  %1 = load i64, ptr %y7, align 8, !dbg !4435
    #dbg_value(i64 %1, !4428, !DIExpression(), !4436)
    #dbg_value(i64 %0, !4427, !DIExpression(), !4437)
  %2 = icmp slt i64 %0, 0, !dbg !4438
  br i1 %2, label %if.then, label %if.done, !dbg !4439

if.then:                                          ; preds = %entry
    #dbg_value(i64 %magMask, !4426, !DIExpression(), !4440)
  %3 = xor i64 %0, %magMask, !dbg !4441
    #dbg_value(i64 %3, !4427, !DIExpression(), !4441)
  br label %if.done, !dbg !4439

if.done:                                          ; preds = %if.then, %entry
  %4 = phi i64 [ %0, %entry ], [ %3, %if.then ], !dbg !4434
    #dbg_value(i64 %1, !4428, !DIExpression(), !4442)
  %5 = icmp slt i64 %1, 0, !dbg !4443
  br i1 %5, label %if.then1, label %if.done2, !dbg !4439

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %magMask, !4426, !DIExpression(), !4444)
  %6 = xor i64 %1, %magMask, !dbg !4445
    #dbg_value(i64 %6, !4428, !DIExpression(), !4445)
  br label %if.done2, !dbg !4439

if.done2:                                         ; preds = %if.then1, %if.done
  %7 = phi i64 [ %1, %if.done ], [ %6, %if.then1 ], !dbg !4436
    #dbg_value(i64 %minPosNaN, !4425, !DIExpression(), !4446)
  %8 = xor i64 %minPosNaN, -1, !dbg !4447
    #dbg_value(i64 %8, !4429, !DIExpression(), !4448)
    #dbg_value(i64 %4, !4427, !DIExpression(), !4449)
    #dbg_value(i64 %8, !4429, !DIExpression(), !4450)
  %9 = icmp sle i64 %4, %8, !dbg !4451
  br i1 %9, label %switch.body, label %switch.next, !dbg !4439

switch.body:                                      ; preds = %if.done2
  %10 = load double, ptr %x6, align 8, !dbg !4452
    #dbg_value(double %10, !4423, !DIExpression(), !4452)
  ret double %10, !dbg !4453

switch.next:                                      ; preds = %if.done2
    #dbg_value(i64 %7, !4428, !DIExpression(), !4454)
    #dbg_value(i64 %8, !4429, !DIExpression(), !4455)
  %11 = icmp sle i64 %7, %8, !dbg !4456
  br i1 %11, label %switch.body3, label %switch.next4, !dbg !4439

switch.body3:                                     ; preds = %switch.next
  %12 = load double, ptr %y7, align 8, !dbg !4457
    #dbg_value(double %12, !4424, !DIExpression(), !4457)
  ret double %12, !dbg !4458

switch.next4:                                     ; preds = %switch.next
    #dbg_value(i64 %4, !4427, !DIExpression(), !4459)
    #dbg_value(i64 %7, !4428, !DIExpression(), !4460)
  %13 = icmp sge i64 %4, %7, !dbg !4461
  br i1 %13, label %if.then5, label %if.else, !dbg !4439

if.then5:                                         ; preds = %switch.next4
  %14 = load double, ptr %x6, align 8, !dbg !4462
    #dbg_value(double %14, !4423, !DIExpression(), !4462)
  ret double %14, !dbg !4463

if.else:                                          ; preds = %switch.next4
  %15 = load double, ptr %y7, align 8, !dbg !4464
    #dbg_value(double %15, !4424, !DIExpression(), !4464)
  ret double %15, !dbg !4465
}

; Function Attrs: nounwind uwtable(sync)
define float @fmaximumf(float %x, float %y) #1 !dbg !4466 {
entry:
    #dbg_value(float %x, !4468, !DIExpression(), !4470)
    #dbg_value(float %y, !4469, !DIExpression(), !4470)
    #dbg_value(float %x, !4468, !DIExpression(), !4471)
    #dbg_value(float %y, !4469, !DIExpression(), !4472)
  %0 = call float @runtime.maximumFloat32(float %x, float %y, ptr undef), !dbg !4473
  ret float %0, !dbg !4474
}

; Function Attrs: nounwind uwtable(sync)
define internal float @runtime.maximumFloat32(float %x, float %y, ptr %context) unnamed_addr #1 !dbg !4475 {
entry:
    #dbg_value(float %x, !4477, !DIExpression(), !4479)
    #dbg_value(float %y, !4478, !DIExpression(), !4479)
    #dbg_value(float %x, !4477, !DIExpression(), !4480)
    #dbg_value(float %y, !4478, !DIExpression(), !4481)
  %0 = call float @"runtime.maximumFloat[float32 int32]"(float %x, float %y, i32 2139095041, i32 2147483647, ptr undef), !dbg !4482
  ret float %0, !dbg !4483
}

; Function Attrs: nounwind uwtable(sync)
define internal float @"runtime.maximumFloat[float32 int32]"(float %x, float %y, i32 %minPosNaN, i32 %magMask, ptr %context) unnamed_addr #1 !dbg !4484 {
entry:
    #dbg_value(float %x, !4486, !DIExpression(), !4493)
    #dbg_value(float %y, !4487, !DIExpression(), !4493)
    #dbg_value(i32 %minPosNaN, !4488, !DIExpression(), !4493)
    #dbg_value(i32 %magMask, !4489, !DIExpression(), !4493)
  %x6 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4494
  store float %x, ptr %x6, align 4, !dbg !4494
  %y7 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4495
  store float %y, ptr %y7, align 4, !dbg !4495
  %0 = load i32, ptr %x6, align 4, !dbg !4496
    #dbg_value(i32 %0, !4490, !DIExpression(), !4497)
  %1 = load i32, ptr %y7, align 4, !dbg !4498
    #dbg_value(i32 %1, !4491, !DIExpression(), !4499)
    #dbg_value(i32 %0, !4490, !DIExpression(), !4500)
  %2 = icmp slt i32 %0, 0, !dbg !4501
  br i1 %2, label %if.then, label %if.done, !dbg !4502

if.then:                                          ; preds = %entry
    #dbg_value(i32 %magMask, !4489, !DIExpression(), !4503)
  %3 = xor i32 %0, %magMask, !dbg !4504
    #dbg_value(i32 %3, !4490, !DIExpression(), !4504)
  br label %if.done, !dbg !4502

if.done:                                          ; preds = %if.then, %entry
  %4 = phi i32 [ %0, %entry ], [ %3, %if.then ], !dbg !4497
    #dbg_value(i32 %1, !4491, !DIExpression(), !4505)
  %5 = icmp slt i32 %1, 0, !dbg !4506
  br i1 %5, label %if.then1, label %if.done2, !dbg !4502

if.then1:                                         ; preds = %if.done
    #dbg_value(i32 %magMask, !4489, !DIExpression(), !4507)
  %6 = xor i32 %1, %magMask, !dbg !4508
    #dbg_value(i32 %6, !4491, !DIExpression(), !4508)
  br label %if.done2, !dbg !4502

if.done2:                                         ; preds = %if.then1, %if.done
  %7 = phi i32 [ %1, %if.done ], [ %6, %if.then1 ], !dbg !4499
    #dbg_value(i32 %minPosNaN, !4488, !DIExpression(), !4509)
  %8 = xor i32 %minPosNaN, -1, !dbg !4510
    #dbg_value(i32 %8, !4492, !DIExpression(), !4511)
    #dbg_value(i32 %4, !4490, !DIExpression(), !4512)
    #dbg_value(i32 %8, !4492, !DIExpression(), !4513)
  %9 = icmp sle i32 %4, %8, !dbg !4514
  br i1 %9, label %switch.body, label %switch.next, !dbg !4502

switch.body:                                      ; preds = %if.done2
  %10 = load float, ptr %x6, align 4, !dbg !4515
    #dbg_value(float %10, !4486, !DIExpression(), !4515)
  ret float %10, !dbg !4516

switch.next:                                      ; preds = %if.done2
    #dbg_value(i32 %7, !4491, !DIExpression(), !4517)
    #dbg_value(i32 %8, !4492, !DIExpression(), !4518)
  %11 = icmp sle i32 %7, %8, !dbg !4519
  br i1 %11, label %switch.body3, label %switch.next4, !dbg !4502

switch.body3:                                     ; preds = %switch.next
  %12 = load float, ptr %y7, align 4, !dbg !4520
    #dbg_value(float %12, !4487, !DIExpression(), !4520)
  ret float %12, !dbg !4521

switch.next4:                                     ; preds = %switch.next
    #dbg_value(i32 %4, !4490, !DIExpression(), !4522)
    #dbg_value(i32 %7, !4491, !DIExpression(), !4523)
  %13 = icmp sge i32 %4, %7, !dbg !4524
  br i1 %13, label %if.then5, label %if.else, !dbg !4502

if.then5:                                         ; preds = %switch.next4
  %14 = load float, ptr %x6, align 4, !dbg !4525
    #dbg_value(float %14, !4486, !DIExpression(), !4525)
  ret float %14, !dbg !4526

if.else:                                          ; preds = %switch.next4
  %15 = load float, ptr %y7, align 4, !dbg !4527
    #dbg_value(float %15, !4487, !DIExpression(), !4527)
  ret float %15, !dbg !4528
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.initHeap(ptr %context) unnamed_addr #1 !dbg !4529 {
entry:
  call void @GC_init(), !dbg !4530
  call void @tinygo_runtime_bdwgc_init(), !dbg !4531
  ret void, !dbg !4532
}

declare void @GC_init() #2

declare void @tinygo_runtime_bdwgc_init() #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_runtime_bdwgc_callback() #1 !dbg !4533 {
entry:
  call void @runtime.gcMarkReachable(ptr undef), !dbg !4534
  ret void, !dbg !4535
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.gcMarkReachable(ptr %context) unnamed_addr #1 !dbg !4536 {
entry:
  call void @"internal/task.GCStopWorldAndScan"(ptr undef), !dbg !4537
  ret void, !dbg !4538
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.markRoots(i64 %start, i64 %end, ptr %context) #1 !dbg !4539 {
entry:
    #dbg_value(i64 %start, !4543, !DIExpression(), !4545)
    #dbg_value(i64 %end, !4544, !DIExpression(), !4545)
    #dbg_value(i64 %start, !4543, !DIExpression(), !4546)
    #dbg_value(i64 %end, !4544, !DIExpression(), !4547)
  call void @GC_push_all(i64 %start, i64 %end), !dbg !4548
  ret void, !dbg !4549
}

declare void @GC_push_all(i64, i64) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.free(ptr %ptr, ptr %context) unnamed_addr #1 !dbg !4550 {
entry:
    #dbg_value(ptr %ptr, !4552, !DIExpression(), !4553)
    #dbg_value(ptr %ptr, !4552, !DIExpression(), !4554)
  call void @GC_free(ptr %ptr), !dbg !4555
  ret void, !dbg !4556
}

declare void @GC_free(ptr nocapture) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.gcScanGlobals"(ptr %context) #1 !dbg !4557 {
entry:
  call void @runtime.findGlobals(ptr undef, ptr @runtime.markRoots, ptr undef), !dbg !4558
  ret void, !dbg !4559
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.findGlobals(ptr %found.context, ptr %found.funcptr, ptr %context) unnamed_addr #1 !dbg !4560 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %found.context, 0, !dbg !4591
  %1 = insertvalue { ptr, ptr } %0, ptr %found.funcptr, 1, !dbg !4591
    #dbg_value(ptr %found.context, !4564, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4591)
    #dbg_value(ptr %found.funcptr, !4564, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4591)
  %2 = load i64, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 11), align 8, !dbg !4592
  %3 = add i64 ptrtoint (ptr @__ehdr_start to i64), %2, !dbg !4593
  %4 = inttoptr i64 %3 to ptr, !dbg !4594
    #dbg_value(ptr %4, !4565, !DIExpression(), !4595)
    #dbg_value(i64 0, !4566, !DIExpression(), !4596)
  br label %for.loop, !dbg !4597

for.loop:                                         ; preds = %if.done, %entry
  %5 = phi ptr [ %4, %entry ], [ %30, %if.done ], !dbg !4595
  %6 = phi i64 [ 0, %entry ], [ %31, %if.done ], !dbg !4596
    #dbg_value(i64 %6, !4566, !DIExpression(), !4598)
  %7 = load i16, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 16), align 2, !dbg !4599
  %8 = zext i16 %7 to i64, !dbg !4600
  %9 = icmp slt i64 %6, %8, !dbg !4601
  br i1 %9, label %for.body, label %for.done, !dbg !4597

for.body:                                         ; preds = %for.loop
  br i1 true, label %if.then, label %if.else, !dbg !4597

if.then:                                          ; preds = %for.body
    #dbg_value(ptr %5, !4565, !DIExpression(), !4602)
    #dbg_value(ptr %5, !4567, !DIExpression(), !4603)
    #dbg_value(ptr %5, !4567, !DIExpression(), !4604)
  %10 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 0, !dbg !4605
  %11 = icmp eq ptr %10, null, !dbg !4605
  br i1 %11, label %deref.throw, label %deref.next, !dbg !4605

deref.next:                                       ; preds = %if.then
  %12 = load i32, ptr %10, align 4, !dbg !4605
  %13 = icmp eq i32 %12, 1, !dbg !4606
  br i1 %13, label %cond.true, label %if.done, !dbg !4597

cond.true:                                        ; preds = %deref.next
    #dbg_value(ptr %5, !4567, !DIExpression(), !4607)
  %14 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 1, !dbg !4608
  %15 = icmp eq ptr %14, null, !dbg !4608
  br i1 %15, label %deref.throw4, label %deref.next5, !dbg !4608

deref.next5:                                      ; preds = %cond.true
  %16 = load i32, ptr %14, align 4, !dbg !4608
  %17 = and i32 %16, 2, !dbg !4609
  %18 = icmp ne i32 %17, 0, !dbg !4610
  br i1 %18, label %if.then1, label %if.done, !dbg !4597

if.then1:                                         ; preds = %deref.next5
    #dbg_value(ptr %5, !4567, !DIExpression(), !4611)
  %19 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 3, !dbg !4612
  %20 = icmp eq ptr %19, null, !dbg !4612
  br i1 %20, label %deref.throw6, label %deref.next7, !dbg !4612

deref.next7:                                      ; preds = %if.then1
  %21 = load i64, ptr %19, align 8, !dbg !4612
    #dbg_value(i64 %21, !4580, !DIExpression(), !4613)
    #dbg_value(i64 %21, !4580, !DIExpression(), !4614)
    #dbg_value(ptr %5, !4567, !DIExpression(), !4615)
  %22 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 6, !dbg !4616
  %23 = icmp eq ptr %22, null, !dbg !4616
  br i1 %23, label %deref.throw8, label %deref.next9, !dbg !4616

deref.next9:                                      ; preds = %deref.next7
  %24 = load i64, ptr %22, align 8, !dbg !4616
  %25 = add i64 %21, %24, !dbg !4617
    #dbg_value(i64 %25, !4581, !DIExpression(), !4618)
    #dbg_value({ ptr, ptr } %1, !4564, !DIExpression(), !4619)
    #dbg_value(i64 %21, !4580, !DIExpression(), !4620)
    #dbg_value(i64 %25, !4581, !DIExpression(), !4621)
  %26 = extractvalue { ptr, ptr } %1, 0, !dbg !4622
  %27 = extractvalue { ptr, ptr } %1, 1, !dbg !4622
  %28 = icmp eq ptr %27, null, !dbg !4622
  br i1 %28, label %fpcall.throw, label %fpcall.next, !dbg !4622

fpcall.next:                                      ; preds = %deref.next9
  call void %27(i64 %21, i64 %25, ptr %26), !dbg !4622
  br label %if.done, !dbg !4597

if.done:                                          ; preds = %fpcall.next19, %deref.next13, %deref.next11, %fpcall.next, %deref.next5, %deref.next
    #dbg_value(ptr %5, !4565, !DIExpression(), !4623)
  %29 = load i16, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 15), align 2, !dbg !4624
  %30 = getelementptr i8, ptr %5, i16 %29, !dbg !4625
    #dbg_value(ptr %30, !4565, !DIExpression(), !4626)
  %31 = add i64 %6, 1, !dbg !4627
    #dbg_value(i64 %31, !4566, !DIExpression(), !4627)
  br label %for.loop, !dbg !4597

if.else:                                          ; preds = %for.body
    #dbg_value(ptr %5, !4565, !DIExpression(), !4628)
    #dbg_value(ptr %5, !4582, !DIExpression(), !4629)
    #dbg_value(ptr %5, !4582, !DIExpression(), !4630)
  %32 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 0, !dbg !4631
  %33 = icmp eq ptr %32, null, !dbg !4631
  br i1 %33, label %deref.throw10, label %deref.next11, !dbg !4631

deref.next11:                                     ; preds = %if.else
  %34 = load i32, ptr %32, align 4, !dbg !4631
  %35 = icmp eq i32 %34, 1, !dbg !4632
  br i1 %35, label %cond.true2, label %if.done, !dbg !4597

cond.true2:                                       ; preds = %deref.next11
    #dbg_value(ptr %5, !4582, !DIExpression(), !4633)
  %36 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 6, !dbg !4634
  %37 = icmp eq ptr %36, null, !dbg !4634
  br i1 %37, label %deref.throw12, label %deref.next13, !dbg !4634

deref.next13:                                     ; preds = %cond.true2
  %38 = load i32, ptr %36, align 4, !dbg !4634
  %39 = and i32 %38, 2, !dbg !4635
  %40 = icmp ne i32 %39, 0, !dbg !4636
  br i1 %40, label %if.then3, label %if.done, !dbg !4597

if.then3:                                         ; preds = %deref.next13
    #dbg_value(ptr %5, !4582, !DIExpression(), !4637)
  %41 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 2, !dbg !4638
  %42 = icmp eq ptr %41, null, !dbg !4638
  br i1 %42, label %deref.throw14, label %deref.next15, !dbg !4638

deref.next15:                                     ; preds = %if.then3
  %43 = load i64, ptr %41, align 8, !dbg !4638
    #dbg_value(i64 %43, !4589, !DIExpression(), !4639)
    #dbg_value(i64 %43, !4589, !DIExpression(), !4640)
    #dbg_value(ptr %5, !4582, !DIExpression(), !4641)
  %44 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 5, !dbg !4642
  %45 = icmp eq ptr %44, null, !dbg !4642
  br i1 %45, label %deref.throw16, label %deref.next17, !dbg !4642

deref.next17:                                     ; preds = %deref.next15
  %46 = load i64, ptr %44, align 8, !dbg !4642
  %47 = add i64 %43, %46, !dbg !4643
    #dbg_value(i64 %47, !4590, !DIExpression(), !4644)
    #dbg_value({ ptr, ptr } %1, !4564, !DIExpression(), !4645)
    #dbg_value(i64 %43, !4589, !DIExpression(), !4646)
    #dbg_value(i64 %47, !4590, !DIExpression(), !4647)
  %48 = extractvalue { ptr, ptr } %1, 0, !dbg !4648
  %49 = extractvalue { ptr, ptr } %1, 1, !dbg !4648
  %50 = icmp eq ptr %49, null, !dbg !4648
  br i1 %50, label %fpcall.throw18, label %fpcall.next19, !dbg !4648

fpcall.next19:                                    ; preds = %deref.next17
  call void %49(i64 %43, i64 %47, ptr %48), !dbg !4648
  br label %if.done, !dbg !4597

for.done:                                         ; preds = %for.loop
  ret void, !dbg !4649

deref.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !4605
  unreachable, !dbg !4605

deref.throw4:                                     ; preds = %cond.true
  call void @runtime.nilPanic(ptr undef), !dbg !4608
  unreachable, !dbg !4608

deref.throw6:                                     ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !4612
  unreachable, !dbg !4612

deref.throw8:                                     ; preds = %deref.next7
  call void @runtime.nilPanic(ptr undef), !dbg !4616
  unreachable, !dbg !4616

fpcall.throw:                                     ; preds = %deref.next9
  call void @runtime.nilPanic(ptr undef), !dbg !4622
  unreachable, !dbg !4622

deref.throw10:                                    ; preds = %if.else
  call void @runtime.nilPanic(ptr undef), !dbg !4631
  unreachable, !dbg !4631

deref.throw12:                                    ; preds = %cond.true2
  call void @runtime.nilPanic(ptr undef), !dbg !4634
  unreachable, !dbg !4634

deref.throw14:                                    ; preds = %if.then3
  call void @runtime.nilPanic(ptr undef), !dbg !4638
  unreachable, !dbg !4638

deref.throw16:                                    ; preds = %deref.next15
  call void @runtime.nilPanic(ptr undef), !dbg !4642
  unreachable, !dbg !4642

fpcall.throw18:                                   ; preds = %deref.next17
  call void @runtime.nilPanic(ptr undef), !dbg !4648
  unreachable, !dbg !4648
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_scanstack(i64 %sp) #1 !dbg !4650 {
entry:
    #dbg_value(i64 %sp, !4652, !DIExpression(), !4653)
    #dbg_value(i64 %sp, !4652, !DIExpression(), !4654)
  %0 = call i64 @"internal/task.StackTop"(ptr undef), !dbg !4655
  call void @runtime.markRoots(i64 %sp, i64 %0, ptr undef), !dbg !4656
  ret void, !dbg !4657
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.unsafeSlicePanic(ptr %context) #1 !dbg !4658 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4659
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.22", i64 37, ptr undef), !dbg !4660
  ret void, !dbg !4661
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.negativeShiftPanic(ptr %context) #1 !dbg !4662 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4663
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.24", i64 14, ptr undef), !dbg !4664
  ret void, !dbg !4665
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printspace(ptr %context) #1 !dbg !4666 {
entry:
  call void @runtime.putchar(i8 32, ptr undef), !dbg !4667
  ret void, !dbg !4668
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memmove(ptr %dst, ptr %src, i64 %size, ptr %context) #1 !dbg !4669 {
entry:
    #dbg_value(ptr %dst, !4671, !DIExpression(), !4674)
    #dbg_value(ptr %src, !4672, !DIExpression(), !4674)
    #dbg_value(i64 %size, !4673, !DIExpression(), !4674)
  call void @llvm.memmove.p0.p0.i64(ptr %dst, ptr %src, i64 %size, i1 false), !dbg !4674
  ret void, !dbg !4674
}

; Function Attrs: nounwind uwtable(sync)
define i64 @main(i32 %argc, ptr nocapture dereferenceable_or_null(8) %argv) #1 !dbg !4675 {
entry:
    #dbg_value(i32 %argc, !4679, !DIExpression(), !4684)
    #dbg_value(ptr %argv, !4680, !DIExpression(), !4684)
  br i1 false, label %if.then, label %if.done, !dbg !4685

if.then:                                          ; preds = %entry
  call void @runtime.allocateHeap(ptr undef), !dbg !4686
  br label %if.done, !dbg !4685

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(i32 %argc, !4679, !DIExpression(), !4687)
  store i32 %argc, ptr @runtime.main_argc, align 4, !dbg !4688
    #dbg_value(i32 %argc, !4681, !DIExpression(), !4688)
    #dbg_value(ptr %argv, !4680, !DIExpression(), !4689)
  store ptr %argv, ptr @runtime.main_argv, align 8, !dbg !4690
    #dbg_value(ptr %argv, !4682, !DIExpression(), !4690)
  call void @tinygo_register_fatal_signals(), !dbg !4691
  %0 = call i64 @runtime.getCurrentStackPointer(ptr undef), !dbg !4692
  store i64 %0, ptr @runtime.stackTop, align 8, !dbg !4693
    #dbg_value(i64 %0, !4683, !DIExpression(), !4693)
  call void @runtime.runMain(ptr undef), !dbg !4694
  ret i64 0, !dbg !4695
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.allocateHeap(ptr %context) unnamed_addr #1 !dbg !4696 {
entry:
  store i64 1073741824, ptr @runtime.heapMaxSize, align 8, !dbg !4703
    #dbg_value(i64 1073741824, !4698, !DIExpression(), !4703)
  br label %for.body, !dbg !4704

for.body:                                         ; preds = %if.then1, %if.then, %entry
  %0 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4705
    #dbg_value(i64 %0, !4698, !DIExpression(), !4705)
  %1 = call ptr @mmap(ptr null, i64 %0, i64 3, i64 34, i64 -1, i64 0), !dbg !4706
    #dbg_value(ptr %1, !4699, !DIExpression(), !4707)
    #dbg_value(ptr %1, !4699, !DIExpression(), !4708)
  %2 = icmp eq ptr %1, inttoptr (i64 -1 to ptr), !dbg !4709
  br i1 %2, label %if.then, label %if.done, !dbg !4704

if.then:                                          ; preds = %for.body
  %3 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4710
  %4 = udiv i64 %3, 2, !dbg !4710
  store i64 %4, ptr @runtime.heapMaxSize, align 8, !dbg !4710
    #dbg_value(i64 %4, !4698, !DIExpression(), !4710)
  %5 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4711
    #dbg_value(i64 %5, !4698, !DIExpression(), !4711)
  %6 = icmp ult i64 %5, 4096, !dbg !4712
  br i1 %6, label %if.then1, label %for.body, !dbg !4704

if.then1:                                         ; preds = %if.then
  call void @runtime.runtimePanic(ptr @"runtime$string.56", i64 27, ptr undef), !dbg !4713
  br label %for.body, !dbg !4704

if.done:                                          ; preds = %for.body
    #dbg_value(ptr %1, !4699, !DIExpression(), !4714)
  %7 = ptrtoint ptr %1 to i64, !dbg !4715
  store i64 %7, ptr @runtime.heapStart, align 8, !dbg !4716
    #dbg_value(i64 %7, !4700, !DIExpression(), !4716)
  %8 = load i64, ptr @runtime.heapStart, align 8, !dbg !4717
    #dbg_value(i64 %8, !4700, !DIExpression(), !4717)
  %9 = load i64, ptr @runtime.heapSize, align 8, !dbg !4718
    #dbg_value(i64 %9, !4701, !DIExpression(), !4718)
  %10 = add i64 %8, %9, !dbg !4719
  store i64 %10, ptr @runtime.heapEnd, align 8, !dbg !4720
    #dbg_value(i64 %10, !4702, !DIExpression(), !4720)
  ret void, !dbg !4721
}

declare void @tinygo_register_fatal_signals() #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @runtime.runMain(ptr %context) unnamed_addr #15 !dbg !4722 {
entry:
  call void @runtime.run(ptr undef), !dbg !4723
  ret void, !dbg !4724
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.run(ptr %context) unnamed_addr #1 !dbg !4725 {
entry:
  call void @runtime.initRand(ptr undef), !dbg !4728
  call void @runtime.initHeap(ptr undef), !dbg !4729
  %0 = load i64, ptr @runtime.stackTop, align 8, !dbg !4730
    #dbg_value(i64 %0, !4727, !DIExpression(), !4730)
  call void @"internal/task.Init"(i64 %0, ptr undef), !dbg !4731
  call void @runtime.initAll(ptr undef), !dbg !4732
  call void @main.main(ptr undef), !dbg !4733
  ret void, !dbg !4734
}

define internal void @runtime.initAll(ptr %context) unnamed_addr #2 {
entry:
  ret void
}

declare void @main.main(ptr) #2

declare ptr @mmap(ptr nocapture, i64, i64, i64, i64, i64) #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_handle_fatal_signal(i32 %sig, i64 %addr) #1 !dbg !4735 {
entry:
    #dbg_value(i32 %sig, !4739, !DIExpression(), !4741)
    #dbg_value(i64 %addr, !4740, !DIExpression(), !4741)
  br i1 false, label %if.then, label %if.done, !dbg !4742

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !4743
  br label %if.done, !dbg !4742

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(i64 %addr, !4740, !DIExpression(), !4744)
  %0 = icmp ne i64 %addr, 0, !dbg !4745
  br i1 %0, label %if.then1, label %if.else, !dbg !4742

if.then1:                                         ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.50", i64 24, ptr undef), !dbg !4746
    #dbg_value(i64 %addr, !4740, !DIExpression(), !4747)
  call void @runtime.printptr(i64 %addr, ptr undef), !dbg !4748
  br label %if.done2, !dbg !4742

if.done2:                                         ; preds = %if.else, %if.then1
  call void @runtime.printstring(ptr @"runtime$string.51", i64 16, ptr undef), !dbg !4749
    #dbg_value(i32 %sig, !4739, !DIExpression(), !4750)
  %1 = icmp eq i32 %sig, 7, !dbg !4751
  br i1 %1, label %switch.body, label %switch.next, !dbg !4742

switch.body:                                      ; preds = %if.done2
  call void @runtime.printlock(ptr undef), !dbg !4752
  call void @runtime.printstring(ptr @"runtime$string.52", i64 6, ptr undef), !dbg !4752
  call void @runtime.printnl(ptr undef), !dbg !4752
  call void @runtime.printunlock(ptr undef), !dbg !4752
  br label %switch.done, !dbg !4742

switch.done:                                      ; preds = %switch.next6, %switch.body5, %switch.body3, %switch.body
    #dbg_value(i32 %sig, !4739, !DIExpression(), !4753)
  call void @raise(i32 %sig), !dbg !4754
  ret void, !dbg !4755

switch.next:                                      ; preds = %if.done2
  %2 = icmp eq i32 %sig, 4, !dbg !4756
  br i1 %2, label %switch.body3, label %switch.next4, !dbg !4742

switch.body3:                                     ; preds = %switch.next
  call void @runtime.printlock(ptr undef), !dbg !4757
  call void @runtime.printstring(ptr @"runtime$string.53", i64 6, ptr undef), !dbg !4757
  call void @runtime.printnl(ptr undef), !dbg !4757
  call void @runtime.printunlock(ptr undef), !dbg !4757
  br label %switch.done, !dbg !4742

switch.next4:                                     ; preds = %switch.next
  %3 = icmp eq i32 %sig, 11, !dbg !4758
  br i1 %3, label %switch.body5, label %switch.next6, !dbg !4742

switch.body5:                                     ; preds = %switch.next4
  call void @runtime.printlock(ptr undef), !dbg !4759
  call void @runtime.printstring(ptr @"runtime$string.54", i64 7, ptr undef), !dbg !4759
  call void @runtime.printnl(ptr undef), !dbg !4759
  call void @runtime.printunlock(ptr undef), !dbg !4759
  br label %switch.done, !dbg !4742

switch.next6:                                     ; preds = %switch.next4
    #dbg_value(i32 %sig, !4739, !DIExpression(), !4760)
  call void @runtime.printlock(ptr undef), !dbg !4761
  call void @runtime.printint32(i32 %sig, ptr undef), !dbg !4761
  call void @runtime.printnl(ptr undef), !dbg !4761
  call void @runtime.printunlock(ptr undef), !dbg !4761
  br label %switch.done, !dbg !4742

if.else:                                          ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.55", i64 20, ptr undef), !dbg !4762
  br label %if.done2, !dbg !4742
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printlock(ptr %context) #1 !dbg !4763 {
entry:
  call void @"(*internal/task.Mutex).Lock"(ptr @runtime.printLock, ptr undef), !dbg !4764
  ret void, !dbg !4765
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printunlock(ptr %context) #1 !dbg !4766 {
entry:
  call void @"(*internal/task.Mutex).Unlock"(ptr @runtime.printLock, ptr undef), !dbg !4767
  ret void, !dbg !4768
}

declare void @raise(i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @runtime.sliceAppend(ptr %srcBuf, ptr nocapture readonly %elemsBuf, i64 %srcLen, i64 %srcCap, i64 %elemsLen, i64 %elemSize, ptr %layout, ptr %context) #1 !dbg !4769 {
entry:
    #dbg_value(ptr %srcBuf, !4774, !DIExpression(), !4782)
    #dbg_value(ptr %elemsBuf, !4775, !DIExpression(), !4782)
    #dbg_value(i64 %srcLen, !4776, !DIExpression(), !4782)
    #dbg_value(i64 %srcCap, !4777, !DIExpression(), !4782)
    #dbg_value(i64 %elemsLen, !4778, !DIExpression(), !4782)
    #dbg_value(i64 %elemSize, !4779, !DIExpression(), !4782)
    #dbg_value(ptr %layout, !4780, !DIExpression(), !4782)
    #dbg_value(i64 %srcLen, !4776, !DIExpression(), !4783)
    #dbg_value(i64 %elemsLen, !4778, !DIExpression(), !4784)
  %0 = add i64 %srcLen, %elemsLen, !dbg !4785
    #dbg_value(i64 %0, !4781, !DIExpression(), !4786)
    #dbg_value(i64 %elemsLen, !4778, !DIExpression(), !4787)
  %1 = icmp ugt i64 %elemsLen, 0, !dbg !4788
  br i1 %1, label %if.then, label %if.done, !dbg !4789

if.then:                                          ; preds = %entry
    #dbg_value(ptr %srcBuf, !4774, !DIExpression(), !4790)
    #dbg_value(i64 %srcLen, !4776, !DIExpression(), !4791)
    #dbg_value(i64 %srcCap, !4777, !DIExpression(), !4792)
    #dbg_value(i64 %0, !4781, !DIExpression(), !4793)
    #dbg_value(i64 %elemSize, !4779, !DIExpression(), !4794)
    #dbg_value(ptr %layout, !4780, !DIExpression(), !4795)
  %2 = call { ptr, i64, i64 } @runtime.sliceGrow(ptr %srcBuf, i64 %srcLen, i64 %srcCap, i64 %0, i64 %elemSize, ptr %layout, ptr undef), !dbg !4796
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4796
    #dbg_value(ptr %3, !4774, !DIExpression(), !4797)
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4796
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4796
    #dbg_value(i64 %5, !4777, !DIExpression(), !4798)
    #dbg_value(ptr %3, !4774, !DIExpression(), !4799)
    #dbg_value(i64 %srcLen, !4776, !DIExpression(), !4800)
    #dbg_value(i64 %elemSize, !4779, !DIExpression(), !4801)
  %6 = mul i64 %srcLen, %elemSize, !dbg !4802
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !4803
    #dbg_value(ptr %elemsBuf, !4775, !DIExpression(), !4804)
    #dbg_value(i64 %elemsLen, !4778, !DIExpression(), !4805)
    #dbg_value(i64 %elemSize, !4779, !DIExpression(), !4806)
  %8 = mul i64 %elemsLen, %elemSize, !dbg !4807
  call void @runtime.memmove(ptr %7, ptr %elemsBuf, i64 %8, ptr undef), !dbg !4808
  br label %if.done, !dbg !4789

if.done:                                          ; preds = %if.then, %entry
  %9 = phi ptr [ %srcBuf, %entry ], [ %3, %if.then ], !dbg !4809
  %10 = phi i64 [ %srcCap, %entry ], [ %5, %if.then ], !dbg !4810
    #dbg_value(ptr %9, !4774, !DIExpression(), !4811)
    #dbg_value(i64 %0, !4781, !DIExpression(), !4812)
    #dbg_value(i64 %10, !4777, !DIExpression(), !4813)
  %11 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %9, 0, !dbg !4814
  %12 = insertvalue { ptr, i64, i64 } %11, i64 %0, 1, !dbg !4814
  %13 = insertvalue { ptr, i64, i64 } %12, i64 %10, 2, !dbg !4814
  ret { ptr, i64, i64 } %13, !dbg !4814
}

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @runtime.sliceGrow(ptr %oldBuf, i64 %oldLen, i64 %oldCap, i64 %newCap, i64 %elemSize, ptr %layout, ptr %context) #1 !dbg !4815 {
entry:
    #dbg_value(ptr %oldBuf, !4819, !DIExpression(), !4826)
    #dbg_value(i64 %oldLen, !4820, !DIExpression(), !4826)
    #dbg_value(i64 %oldCap, !4821, !DIExpression(), !4826)
    #dbg_value(i64 %newCap, !4822, !DIExpression(), !4826)
    #dbg_value(i64 %elemSize, !4823, !DIExpression(), !4826)
    #dbg_value(ptr %layout, !4824, !DIExpression(), !4826)
    #dbg_value(i64 %oldCap, !4821, !DIExpression(), !4827)
    #dbg_value(i64 %newCap, !4822, !DIExpression(), !4828)
  %0 = icmp uge i64 %oldCap, %newCap, !dbg !4829
  br i1 %0, label %if.then, label %if.done, !dbg !4830

if.then:                                          ; preds = %entry
    #dbg_value(ptr %oldBuf, !4819, !DIExpression(), !4831)
    #dbg_value(i64 %oldLen, !4820, !DIExpression(), !4832)
    #dbg_value(i64 %oldCap, !4821, !DIExpression(), !4833)
  %1 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %oldBuf, 0, !dbg !4834
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %oldLen, 1, !dbg !4834
  %3 = insertvalue { ptr, i64, i64 } %2, i64 %oldCap, 2, !dbg !4834
  ret { ptr, i64, i64 } %3, !dbg !4834

if.done:                                          ; preds = %entry
    #dbg_value(i64 %newCap, !4822, !DIExpression(), !4835)
  %4 = call i64 @"math/bits.Len"(i64 %newCap, ptr undef), !dbg !4836
  %5 = icmp slt i64 %4, 0, !dbg !4837
  br i1 %5, label %shift.throw, label %shift.next, !dbg !4837

shift.next:                                       ; preds = %if.done
  %shift.overflow = icmp uge i64 %4, 64, !dbg !4837
  %6 = shl i64 1, %4, !dbg !4837
  %shift.result = select i1 %shift.overflow, i64 0, i64 %6, !dbg !4837
    #dbg_value(i64 %shift.result, !4822, !DIExpression(), !4838)
    #dbg_value(i64 %shift.result, !4822, !DIExpression(), !4839)
    #dbg_value(i64 %elemSize, !4823, !DIExpression(), !4840)
  %7 = mul i64 %shift.result, %elemSize, !dbg !4841
    #dbg_value(ptr %layout, !4824, !DIExpression(), !4842)
  %8 = call ptr @runtime.alloc(i64 %7, ptr %layout, ptr undef), !dbg !4843
    #dbg_value(ptr %8, !4825, !DIExpression(), !4844)
    #dbg_value(i64 %oldLen, !4820, !DIExpression(), !4845)
  %9 = icmp ugt i64 %oldLen, 0, !dbg !4846
  br i1 %9, label %if.then1, label %if.done2, !dbg !4830

if.then1:                                         ; preds = %shift.next
    #dbg_value(ptr %8, !4825, !DIExpression(), !4847)
    #dbg_value(ptr %oldBuf, !4819, !DIExpression(), !4848)
    #dbg_value(i64 %oldLen, !4820, !DIExpression(), !4849)
    #dbg_value(i64 %elemSize, !4823, !DIExpression(), !4850)
  %10 = mul i64 %oldLen, %elemSize, !dbg !4851
  call void @runtime.memmove(ptr %8, ptr %oldBuf, i64 %10, ptr undef), !dbg !4852
  br label %if.done2, !dbg !4830

if.done2:                                         ; preds = %if.then1, %shift.next
    #dbg_value(ptr %8, !4825, !DIExpression(), !4853)
    #dbg_value(i64 %oldLen, !4820, !DIExpression(), !4854)
    #dbg_value(i64 %shift.result, !4822, !DIExpression(), !4855)
  %11 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %8, 0, !dbg !4856
  %12 = insertvalue { ptr, i64, i64 } %11, i64 %oldLen, 1, !dbg !4856
  %13 = insertvalue { ptr, i64, i64 } %12, i64 %shift.result, 2, !dbg !4856
  ret { ptr, i64, i64 } %13, !dbg !4856

shift.throw:                                      ; preds = %if.done
  call void @runtime.negativeShiftPanic(ptr undef), !dbg !4837
  unreachable, !dbg !4837
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_signal_handler(i32 %s) #1 !dbg !4857 {
entry:
    #dbg_value(i32 %s, !4859, !DIExpression(), !4863)
  br label %for.body, !dbg !4864

for.body:                                         ; preds = %for.body, %entry
    #dbg_value(i32 %s, !4859, !DIExpression(), !4865)
  %shift.overflow = icmp uge i32 %s, 32, !dbg !4866
  %0 = shl i32 1, %s, !dbg !4866
  %shift.result = select i1 %shift.overflow, i32 0, i32 %0, !dbg !4866
    #dbg_value(i32 %shift.result, !4860, !DIExpression(), !4867)
  %1 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @runtime.receivedSignals, ptr undef), !dbg !4868
    #dbg_value(i32 %1, !4861, !DIExpression(), !4869)
    #dbg_value(i32 %1, !4861, !DIExpression(), !4870)
    #dbg_value(i32 %1, !4861, !DIExpression(), !4871)
    #dbg_value(i32 %shift.result, !4860, !DIExpression(), !4872)
  %2 = or i32 %1, %shift.result, !dbg !4873
  %3 = call i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr @runtime.receivedSignals, i32 %1, i32 %2, ptr undef), !dbg !4874
    #dbg_value(i1 %3, !4862, !DIExpression(), !4875)
    #dbg_value(i1 %3, !4862, !DIExpression(), !4876)
  br i1 %3, label %if.then, label %for.body, !dbg !4864

if.then:                                          ; preds = %for.body
  %4 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr @runtime.signalFutex, i32 1, ptr undef), !dbg !4877
  %5 = icmp eq i32 %4, 0, !dbg !4878
  br i1 %5, label %if.then1, label %if.done, !dbg !4864

if.then1:                                         ; preds = %if.then
  call void @"(*internal/futex.Futex).WakeAll"(ptr @runtime.signalFutex, ptr undef), !dbg !4879
  br label %if.done, !dbg !4864

if.done:                                          ; preds = %if.then1, %if.then
  ret void, !dbg !4880
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @runtime.stringConcat(ptr dereferenceable_or_null(1) %x.ptr, i64 %x.length, ptr dereferenceable_or_null(1) %y.ptr, i64 %y.length, ptr %context) #1 !dbg !4881 {
entry:
  %complit = alloca %runtime._string, align 8, !dbg !4893
  %y = alloca %runtime._string, align 8, !dbg !4893
  %x = alloca %runtime._string, align 8, !dbg !4893
  %0 = insertvalue %runtime._string zeroinitializer, ptr %x.ptr, 0, !dbg !4893
  %1 = insertvalue %runtime._string %0, i64 %x.length, 1, !dbg !4893
    #dbg_value(ptr %x.ptr, !4889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4893)
    #dbg_value(i64 %x.length, !4889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4893)
  %2 = insertvalue %runtime._string zeroinitializer, ptr %y.ptr, 0, !dbg !4893
  %3 = insertvalue %runtime._string %2, i64 %y.length, 1, !dbg !4893
    #dbg_value(ptr %y.ptr, !4890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4893)
    #dbg_value(i64 %y.length, !4890, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4893)
  store %runtime._string zeroinitializer, ptr %x, align 8, !dbg !4893
  store %runtime._string %1, ptr %x, align 8, !dbg !4894
  store %runtime._string zeroinitializer, ptr %y, align 8, !dbg !4893
  store %runtime._string %3, ptr %y, align 8, !dbg !4895
  %4 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4896
  %5 = icmp eq ptr %4, null, !dbg !4896
  br i1 %5, label %deref.throw, label %deref.next, !dbg !4896

deref.next:                                       ; preds = %entry
  %6 = load i64, ptr %4, align 8, !dbg !4896
  %7 = icmp eq i64 %6, 0, !dbg !4897
  br i1 %7, label %if.then, label %if.else, !dbg !4898

if.then:                                          ; preds = %deref.next
  %8 = load %runtime._string, ptr %y, align 8, !dbg !4899
    #dbg_value(%runtime._string %8, !4890, !DIExpression(), !4899)
  ret %runtime._string %8, !dbg !4900

if.else:                                          ; preds = %deref.next
  %9 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4901
  %10 = icmp eq ptr %9, null, !dbg !4901
  br i1 %10, label %deref.throw3, label %deref.next4, !dbg !4901

deref.next4:                                      ; preds = %if.else
  %11 = load i64, ptr %9, align 8, !dbg !4901
  %12 = icmp eq i64 %11, 0, !dbg !4902
  br i1 %12, label %if.then1, label %if.else2, !dbg !4898

if.then1:                                         ; preds = %deref.next4
  %13 = load %runtime._string, ptr %x, align 8, !dbg !4903
    #dbg_value(%runtime._string %13, !4889, !DIExpression(), !4903)
  ret %runtime._string %13, !dbg !4904

if.else2:                                         ; preds = %deref.next4
  %14 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4905
  %15 = icmp eq ptr %14, null, !dbg !4905
  br i1 %15, label %deref.throw5, label %deref.next6, !dbg !4905

deref.next6:                                      ; preds = %if.else2
  %16 = load i64, ptr %14, align 8, !dbg !4905
  %17 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4906
  %18 = icmp eq ptr %17, null, !dbg !4906
  br i1 %18, label %deref.throw7, label %deref.next8, !dbg !4906

deref.next8:                                      ; preds = %deref.next6
  %19 = load i64, ptr %17, align 8, !dbg !4906
  %20 = add i64 %16, %19, !dbg !4907
    #dbg_value(i64 %20, !4891, !DIExpression(), !4908)
    #dbg_value(i64 %20, !4891, !DIExpression(), !4909)
  %21 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !4910
  %22 = call ptr @runtime.alloc(i64 %20, ptr %21, ptr undef), !dbg !4911
    #dbg_value(ptr %22, !4892, !DIExpression(), !4912)
    #dbg_value(ptr %22, !4892, !DIExpression(), !4913)
  %23 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 0, !dbg !4914
  %24 = icmp eq ptr %23, null, !dbg !4914
  br i1 %24, label %deref.throw9, label %deref.next10, !dbg !4914

deref.next10:                                     ; preds = %deref.next8
  %25 = load ptr, ptr %23, align 8, !dbg !4914
  %26 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4915
  %27 = icmp eq ptr %26, null, !dbg !4915
  br i1 %27, label %deref.throw11, label %deref.next12, !dbg !4915

deref.next12:                                     ; preds = %deref.next10
  %28 = load i64, ptr %26, align 8, !dbg !4915
  call void @runtime.memcpy(ptr %22, ptr %25, i64 %28, ptr undef), !dbg !4916
    #dbg_value(ptr %22, !4892, !DIExpression(), !4917)
  %29 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4918
  %30 = icmp eq ptr %29, null, !dbg !4918
  br i1 %30, label %deref.throw13, label %deref.next14, !dbg !4918

deref.next14:                                     ; preds = %deref.next12
  %31 = load i64, ptr %29, align 8, !dbg !4918
  %32 = getelementptr i8, ptr %22, i64 %31, !dbg !4919
  %33 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 0, !dbg !4920
  %34 = icmp eq ptr %33, null, !dbg !4920
  br i1 %34, label %deref.throw15, label %deref.next16, !dbg !4920

deref.next16:                                     ; preds = %deref.next14
  %35 = load ptr, ptr %33, align 8, !dbg !4920
  %36 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4921
  %37 = icmp eq ptr %36, null, !dbg !4921
  br i1 %37, label %deref.throw17, label %deref.next18, !dbg !4921

deref.next18:                                     ; preds = %deref.next16
  %38 = load i64, ptr %36, align 8, !dbg !4921
  call void @runtime.memcpy(ptr %32, ptr %35, i64 %38, ptr undef), !dbg !4922
  store %runtime._string zeroinitializer, ptr %complit, align 8, !dbg !4893
  %39 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !4923
    #dbg_value(ptr %22, !4892, !DIExpression(), !4924)
  %40 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !4925
    #dbg_value(i64 %20, !4891, !DIExpression(), !4926)
  %41 = icmp eq ptr %39, null, !dbg !4923
  br i1 %41, label %store.throw, label %store.next, !dbg !4923

store.next:                                       ; preds = %deref.next18
  store ptr %22, ptr %39, align 8, !dbg !4923
  %42 = icmp eq ptr %40, null, !dbg !4925
  br i1 %42, label %store.throw19, label %store.next20, !dbg !4925

store.next20:                                     ; preds = %store.next
  store i64 %20, ptr %40, align 8, !dbg !4925
    #dbg_value(i64 %20, !4891, !DIExpression(), !4926)
  %43 = load %runtime._string, ptr %complit, align 8, !dbg !4927
  ret %runtime._string %43, !dbg !4928

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !4896
  unreachable, !dbg !4896

deref.throw3:                                     ; preds = %if.else
  call void @runtime.nilPanic(ptr undef), !dbg !4901
  unreachable, !dbg !4901

deref.throw5:                                     ; preds = %if.else2
  call void @runtime.nilPanic(ptr undef), !dbg !4905
  unreachable, !dbg !4905

deref.throw7:                                     ; preds = %deref.next6
  call void @runtime.nilPanic(ptr undef), !dbg !4906
  unreachable, !dbg !4906

deref.throw9:                                     ; preds = %deref.next8
  call void @runtime.nilPanic(ptr undef), !dbg !4914
  unreachable, !dbg !4914

deref.throw11:                                    ; preds = %deref.next10
  call void @runtime.nilPanic(ptr undef), !dbg !4915
  unreachable, !dbg !4915

deref.throw13:                                    ; preds = %deref.next12
  call void @runtime.nilPanic(ptr undef), !dbg !4918
  unreachable, !dbg !4918

deref.throw15:                                    ; preds = %deref.next14
  call void @runtime.nilPanic(ptr undef), !dbg !4920
  unreachable, !dbg !4920

deref.throw17:                                    ; preds = %deref.next16
  call void @runtime.nilPanic(ptr undef), !dbg !4921
  unreachable, !dbg !4921

store.throw:                                      ; preds = %deref.next18
  call void @runtime.nilPanic(ptr undef), !dbg !4923
  unreachable, !dbg !4923

store.throw19:                                    ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !4925
  unreachable, !dbg !4925
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @runtime.stringFromBytes(ptr nocapture readonly dereferenceable_or_null(1) %x.ptr, i64 %x.len, i64 %x.cap, ptr %context) #1 !dbg !4929 {
entry:
  %complit = alloca %runtime._string, align 8, !dbg !4936
  %x = alloca { ptr, i64, i64 }, align 8, !dbg !4936
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %x.ptr, 0, !dbg !4936
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %x.len, 1, !dbg !4936
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %x.cap, 2, !dbg !4936
    #dbg_value(ptr %x.ptr, !4934, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4936)
    #dbg_value(i64 %x.len, !4934, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4936)
    #dbg_value(i64 %x.cap, !4934, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4936)
  store { ptr, i64, i64 } zeroinitializer, ptr %x, align 8, !dbg !4936
  store { ptr, i64, i64 } %2, ptr %x, align 8, !dbg !4937
  %3 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4938
  %4 = icmp eq ptr %3, null, !dbg !4938
  br i1 %4, label %deref.throw, label %deref.next, !dbg !4938

deref.next:                                       ; preds = %entry
  %5 = load i64, ptr %3, align 8, !dbg !4938
  %6 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !4939
  %7 = call ptr @runtime.alloc(i64 %5, ptr %6, ptr undef), !dbg !4940
    #dbg_value(ptr %7, !4935, !DIExpression(), !4941)
    #dbg_value(ptr %7, !4935, !DIExpression(), !4942)
  %8 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 0, !dbg !4943
  %9 = icmp eq ptr %8, null, !dbg !4943
  br i1 %9, label %deref.throw1, label %deref.next2, !dbg !4943

deref.next2:                                      ; preds = %deref.next
  %10 = load ptr, ptr %8, align 8, !dbg !4943
  %11 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4944
  %12 = icmp eq ptr %11, null, !dbg !4944
  br i1 %12, label %deref.throw3, label %deref.next4, !dbg !4944

deref.next4:                                      ; preds = %deref.next2
  %13 = load i64, ptr %11, align 8, !dbg !4944
  call void @runtime.memcpy(ptr %7, ptr %10, i64 %13, ptr undef), !dbg !4945
  store %runtime._string zeroinitializer, ptr %complit, align 8, !dbg !4936
  %14 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !4946
    #dbg_value(ptr %7, !4935, !DIExpression(), !4947)
  %15 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !4948
  %16 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4949
  %17 = icmp eq ptr %16, null, !dbg !4949
  br i1 %17, label %deref.throw5, label %deref.next6, !dbg !4949

deref.next6:                                      ; preds = %deref.next4
  %18 = load i64, ptr %16, align 8, !dbg !4949
  %19 = icmp eq ptr %14, null, !dbg !4946
  br i1 %19, label %store.throw, label %store.next, !dbg !4946

store.next:                                       ; preds = %deref.next6
  store ptr %7, ptr %14, align 8, !dbg !4946
  %20 = icmp eq ptr %15, null, !dbg !4948
  br i1 %20, label %store.throw7, label %store.next8, !dbg !4948

store.next8:                                      ; preds = %store.next
  store i64 %18, ptr %15, align 8, !dbg !4948
  %21 = load %runtime._string, ptr %complit, align 8, !dbg !4950
  ret %runtime._string %21, !dbg !4951

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !4938
  unreachable, !dbg !4938

deref.throw1:                                     ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !4943
  unreachable, !dbg !4943

deref.throw3:                                     ; preds = %deref.next2
  call void @runtime.nilPanic(ptr undef), !dbg !4944
  unreachable, !dbg !4944

deref.throw5:                                     ; preds = %deref.next4
  call void @runtime.nilPanic(ptr undef), !dbg !4949
  unreachable, !dbg !4949

store.throw:                                      ; preds = %deref.next6
  call void @runtime.nilPanic(ptr undef), !dbg !4946
  unreachable, !dbg !4946

store.throw7:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !4948
  unreachable, !dbg !4948
}

; Function Attrs: nounwind uwtable(sync)
define i1 @f_gold(i64 %num) #1 !dbg !4952 {
entry:
    #dbg_value(i64 %num, !4955, !DIExpression(), !4958)
    #dbg_value(i64 %num, !4955, !DIExpression(), !4959)
  %0 = icmp eq i64 %num, -9223372036854775808, !dbg !4960
  %1 = and i1 false, %0, !dbg !4960
  %2 = select i1 %1, i64 1, i64 10, !dbg !4960
  %3 = sdiv i64 %num, %2, !dbg !4960
  %4 = icmp eq i64 %3, 0, !dbg !4961
  br i1 %4, label %if.then, label %for.loop, !dbg !4962

if.then:                                          ; preds = %entry
  ret i1 true, !dbg !4963

for.loop:                                         ; preds = %if.done3, %entry
  %5 = phi i64 [ %num, %entry ], [ %31, %if.done3 ], !dbg !4964
    #dbg_value(i64 %5, !4955, !DIExpression(), !4965)
  %6 = icmp ne i64 %5, 0, !dbg !4966
  br i1 %6, label %for.body, label %for.done, !dbg !4962

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4955, !DIExpression(), !4967)
  %7 = icmp eq i64 %5, -9223372036854775808, !dbg !4968
  %8 = and i1 false, %7, !dbg !4968
  %9 = select i1 %8, i64 1, i64 10, !dbg !4968
  %10 = sdiv i64 %5, %9, !dbg !4968
  %11 = icmp eq i64 %10, 0, !dbg !4969
  br i1 %11, label %if.then1, label %if.done, !dbg !4962

if.then1:                                         ; preds = %for.body
  ret i1 true, !dbg !4970

if.done:                                          ; preds = %for.body
    #dbg_value(i64 %5, !4955, !DIExpression(), !4971)
  %12 = icmp eq i64 %5, -9223372036854775808, !dbg !4972
  %13 = and i1 false, %12, !dbg !4972
  %14 = select i1 %13, i64 1, i64 10, !dbg !4972
  %15 = srem i64 %5, %14, !dbg !4972
    #dbg_value(i64 %15, !4956, !DIExpression(), !4973)
    #dbg_value(i64 %5, !4955, !DIExpression(), !4974)
  %16 = icmp eq i64 %5, -9223372036854775808, !dbg !4975
  %17 = and i1 false, %16, !dbg !4975
  %18 = select i1 %17, i64 1, i64 10, !dbg !4975
  %19 = sdiv i64 %5, %18, !dbg !4975
  %20 = icmp eq i64 %19, -9223372036854775808, !dbg !4976
  %21 = and i1 false, %20, !dbg !4976
  %22 = select i1 %21, i64 1, i64 10, !dbg !4976
  %23 = srem i64 %19, %22, !dbg !4976
    #dbg_value(i64 %23, !4957, !DIExpression(), !4977)
    #dbg_value(i64 %23, !4957, !DIExpression(), !4978)
    #dbg_value(i64 %15, !4956, !DIExpression(), !4979)
  %24 = sub i64 %23, %15, !dbg !4980
  %25 = sitofp i64 %24 to double, !dbg !4981
  %26 = call double @math.Abs(double %25, ptr undef), !dbg !4982
  %27 = fcmp ogt double %26, 1.000000e+00, !dbg !4983
  br i1 %27, label %if.then2, label %if.done3, !dbg !4962

if.then2:                                         ; preds = %if.done
  ret i1 false, !dbg !4984

if.done3:                                         ; preds = %if.done
    #dbg_value(i64 %5, !4955, !DIExpression(), !4985)
  %28 = icmp eq i64 %5, -9223372036854775808, !dbg !4986
  %29 = and i1 false, %28, !dbg !4986
  %30 = select i1 %29, i64 1, i64 10, !dbg !4986
  %31 = sdiv i64 %5, %30, !dbg !4986
    #dbg_value(i64 %31, !4955, !DIExpression(), !4987)
  br label %for.loop, !dbg !4962

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4988
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

!llvm.dbg.cu = !{!516, !518, !766, !784, !976, !1020, !1021, !1022, !1030, !1032, !1516, !1527, !1555, !1556, !1731}
!llvm.ident = !{!1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732}
!llvm.module.flags = !{!1733, !1734}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 12, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "itoa.go", directory: "/usr/local/lib/tinygo/src/internal/itoa")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, align: 8, elements: !5)
!4 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DISubrange(count: 1, lowerBound: 0)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "unicode/utf8.first", linkageName: "unicode/utf8.first", scope: !11, file: !11, line: 71, type: !12, isLocal: false, isDefinition: true, align: 8)
!11 = !DIFile(filename: "utf8.go", directory: "/usr/local/lib/tinygo/src/unicode/utf8")
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, align: 8, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 256, lowerBound: 0)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "unicode/utf8.acceptRanges", linkageName: "unicode/utf8.acceptRanges", scope: !11, file: !11, line: 100, type: !17, isLocal: false, isDefinition: true, align: 8)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, align: 8, elements: !23)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "unicode/utf8.acceptRange", baseType: !19)
!19 = !DICompositeType(tag: DW_TAG_structure_type, size: 16, align: 8, elements: !20)
!20 = !{!21, !22}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "lo", baseType: !4, size: 8, align: 8)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "hi", baseType: !4, size: 8, align: 8, offset: 8)
!23 = !{!24}
!24 = !DISubrange(count: 16, lowerBound: 0)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !27, line: 393, type: !28, isLocal: true, isDefinition: true)
!27 = !DIFile(filename: "type.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, align: 8, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 4, lowerBound: 0)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeElem", linkageName: "internal/reflectlite.errTypeElem", scope: !27, file: !27, line: 393, type: !33, isLocal: false, isDefinition: true, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64, dwarfAddressSpace: 0)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.TypeError", baseType: !35)
!35 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "Method", baseType: !38, size: 128, align: 64)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", size: 128, align: 64, elements: !39)
!39 = !{!40, !42}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64, dwarfAddressSpace: 0)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "len", baseType: !43, size: 64, align: 64, offset: 64)
!43 = !DIBasicType(name: "uintptr", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !27, line: 394, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, align: 8, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 3, lowerBound: 0)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeKey", linkageName: "internal/reflectlite.errTypeKey", scope: !27, file: !27, line: 394, type: !33, isLocal: false, isDefinition: true, align: 64)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !27, line: 395, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, align: 8, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 5, lowerBound: 0)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeField", linkageName: "internal/reflectlite.errTypeField", scope: !27, file: !27, line: 395, type: !33, isLocal: false, isDefinition: true, align: 64)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !27, line: 397, type: !46, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeLen", linkageName: "internal/reflectlite.errTypeLen", scope: !27, file: !27, line: 397, type: !33, isLocal: false, isDefinition: true, align: 64)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !27, line: 398, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, align: 8, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 8, lowerBound: 0)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeNumField", linkageName: "internal/reflectlite.errTypeNumField", scope: !27, file: !27, line: 398, type: !33, isLocal: false, isDefinition: true, align: 64)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !27, line: 399, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, align: 8, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 7, lowerBound: 0)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeChanDir", linkageName: "internal/reflectlite.errTypeChanDir", scope: !27, file: !27, line: 399, type: !33, isLocal: false, isDefinition: true, align: 64)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "type uint8", scope: !78, file: !78, line: 1, type: !79, isLocal: false, isDefinition: true, align: 64)
!78 = !DIFile(filename: "<Go type>", directory: "")
!79 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !80)
!80 = !{!81, !83}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !82, size: 8, align: 8)
!82 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !84, size: 64, align: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe.Pointer", baseType: null, size: 64, align: 64, dwarfAddressSpace: 0)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "type *uint8", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!87 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !88)
!88 = !{!81, !89, !91}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !90, size: 16, align: 16, offset: 16)
!90 = !DIBasicType(name: "uint16", size: 16, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !84, size: 64, align: 64, offset: 64)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "type struct{meta uint8}", scope: !78, file: !78, line: 1, type: !94, isLocal: false, isDefinition: true, align: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !95)
!95 = !{!81, !89, !83, !96, !97, !99, !100}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !84, size: 64, align: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "size", baseType: !98, size: 32, align: 32, offset: 192)
!98 = !DIBasicType(name: "uint32", size: 32, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "numFields", baseType: !90, size: 16, align: 16, offset: 224)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !101, size: 128, align: 64, offset: 256)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 128, align: 64, elements: !5)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.structField", baseType: !103)
!103 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "typecode", baseType: !84, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !41, size: 64, align: 64, offset: 64)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "type *struct{meta uint8}", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !111, line: 17, type: !112, isLocal: true, isDefinition: true)
!111 = !DIFile(filename: "strconv.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, align: 8, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 14, lowerBound: 0)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "type struct{}", scope: !78, file: !78, line: 1, type: !117, isLocal: false, isDefinition: true, align: 64)
!117 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !118)
!118 = !{!81, !89, !83, !96, !97, !99, !119}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !120, align: 64, offset: 256)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, align: 64, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 0, lowerBound: 0)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "type *struct{}", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !111, line: 250, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, align: 8, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 2, lowerBound: 0)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !111, line: 251, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, align: 8, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 15, lowerBound: 0)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !111, line: 252, type: !132, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !111, line: 278, type: !127, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !111, line: 280, type: !127, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !111, line: 282, type: !127, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !111, line: 284, type: !127, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !111, line: 286, type: !127, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !111, line: 288, type: !127, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !111, line: 290, type: !127, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !111, line: 294, type: !127, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !111, line: 295, type: !132, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !111, line: 296, type: !132, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !111, line: 301, type: !127, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !111, line: 303, type: !132, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !111, line: 306, type: !127, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !111, line: 308, type: !132, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "type internal/reflectlite.ValueError", scope: !78, file: !78, line: 1, type: !167, isLocal: false, isDefinition: true, align: 64)
!167 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !168)
!168 = !{!81, !89, !83, !169, !170, !171}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !84, size: 64, align: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !84, size: 64, align: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !172, size: 184, align: 8, offset: 256)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 184, align: 8, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 23, lowerBound: 0)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "type struct{Method string; Kind internal/reflectlite.Kind}", scope: !78, file: !78, line: 1, type: !177, isLocal: false, isDefinition: true, align: 64)
!177 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !178)
!178 = !{!81, !89, !83, !96, !97, !99, !179}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !180, size: 256, align: 64, offset: 256)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 256, align: 64, elements: !128)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "type *struct{Method string; Kind internal/reflectlite.Kind}", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !27, line: 60, type: !71, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !27, line: 62, type: !28, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !27, line: 64, type: !46, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !27, line: 66, type: !28, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !27, line: 68, type: !53, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !27, line: 70, type: !53, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !27, line: 72, type: !53, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !27, line: 74, type: !28, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !27, line: 76, type: !53, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !27, line: 78, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, align: 8, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 6, lowerBound: 0)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !27, line: 80, type: !203, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !27, line: 82, type: !203, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !27, line: 84, type: !71, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !27, line: 86, type: !71, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !27, line: 88, type: !71, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !27, line: 90, type: !218, isLocal: true, isDefinition: true)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, align: 8, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 9, lowerBound: 0)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !27, line: 92, type: !223, isLocal: true, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, align: 8, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 10, lowerBound: 0)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !27, line: 94, type: !203, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !27, line: 96, type: !112, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !27, line: 98, type: !28, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !27, line: 100, type: !218, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !27, line: 102, type: !46, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !27, line: 104, type: !53, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !27, line: 106, type: !53, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !27, line: 108, type: !28, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !27, line: 110, type: !46, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !27, line: 112, type: !203, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !27, line: 114, type: !28, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "type internal/reflectlite.TypeError", scope: !78, file: !78, line: 1, type: !250, isLocal: false, isDefinition: true, align: 64)
!250 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !251)
!251 = !{!81, !89, !83, !169, !170, !252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !253, size: 176, align: 8, offset: 256)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 176, align: 8, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 22, lowerBound: 0)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "type struct{Method string}", scope: !78, file: !78, line: 1, type: !94, isLocal: false, isDefinition: true, align: 64)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "type *struct{Method string}", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !27, line: 329, type: !71, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !27, line: 331, type: !71, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !27, line: 338, type: !203, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !27, line: 338, type: !3, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !27, line: 340, type: !53, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !27, line: 344, type: !3, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !27, line: 346, type: !127, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !27, line: 348, type: !3, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !27, line: 348, type: !3, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !27, line: 350, type: !28, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !27, line: 350, type: !3, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !27, line: 354, type: !218, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !27, line: 359, type: !3, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !27, line: 359, type: !3, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !27, line: 361, type: !3, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !27, line: 365, type: !3, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !27, line: 368, type: !127, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !27, line: 372, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, align: 8, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 12, lowerBound: 0)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !27, line: 356, type: !64, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !303, isLocal: true, isDefinition: true)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, align: 8, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 33, lowerBound: 0)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1212, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, align: 8, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 30, lowerBound: 0)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1212, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, align: 8, elements: !23)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1791, type: !317, isLocal: true, isDefinition: true)
!316 = !DIFile(filename: "value.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, align: 8, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 17, lowerBound: 0)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1791, type: !112, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1793, type: !317, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1793, type: !28, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1793, type: !203, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "internal/task.activeTasks", linkageName: "internal/task.activeTasks", scope: !330, file: !330, line: 45, type: !331, isLocal: false, isDefinition: true, align: 64)
!330 = !DIFile(filename: "task_threads.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64, dwarfAddressSpace: 0)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !333)
!333 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !334)
!334 = !{!335, !336, !337, !339, !343, !369, !370, !372, !373}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !331, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "Ptr", baseType: !84, size: 64, align: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "Data", baseType: !338, size: 64, align: 64, offset: 128)
!338 = !DIBasicType(name: "uint64", size: 64, encoding: DW_ATE_unsigned)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "gcData", baseType: !340, align: 8, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.gcData", baseType: !341)
!341 = !DICompositeType(tag: DW_TAG_structure_type, align: 8, elements: !342)
!342 = !{}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !344, size: 384, align: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !345)
!345 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !346)
!346 = !{!347, !348, !350, !351, !352, !353}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "id", baseType: !43, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "thread", baseType: !349, size: 64, align: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.threadID", baseType: !84)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "stackTop", baseType: !43, size: 64, align: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "stackBottom", baseType: !43, size: 64, align: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !331, size: 64, align: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "pauseSem", baseType: !354, size: 32, align: 32, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Semaphore", baseType: !355)
!355 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "futex", baseType: !358, size: 32, align: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Futex", baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/futex.Futex", baseType: !360)
!360 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "Uint32", baseType: !363, size: 32, align: 32)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Uint32", baseType: !364)
!364 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !365)
!365 = !{!366, !368}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !367, align: 8)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.noCopy", baseType: !341)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !98, size: 32, align: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "FipsIndicator", baseType: !4, size: 8, align: 8, offset: 576)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "FipsOnlyBypass", baseType: !371, size: 8, align: 8, offset: 584)
!371 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "RunState", baseType: !4, size: 8, align: 8, offset: 592)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "DeferFrame", baseType: !84, size: 64, align: 64, offset: 640)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "internal/task.mainTask", linkageName: "internal/task.mainTask", scope: !330, file: !330, line: 42, type: !332, isLocal: false, isDefinition: true, align: 64)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !378, line: 1, type: !308, isLocal: true, isDefinition: true)
!378 = !DIFile(filename: "mutex-preemptive.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "internal/task.numCPU", linkageName: "internal/task.numCPU", scope: !330, file: !330, line: 40, type: !381, isLocal: false, isDefinition: true, align: 32)
!381 = !DIBasicType(name: "int32", size: 32, encoding: DW_ATE_signed)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "internal/task.activeTaskLock", linkageName: "internal/task.activeTaskLock", scope: !330, file: !330, line: 46, type: !384, isLocal: false, isDefinition: true, align: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.PMutex", baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Mutex", baseType: !355)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !330, line: 64, type: !388, isLocal: true, isDefinition: true)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, align: 8, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 20, lowerBound: 0)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !330, line: 77, type: !296, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(name: "internal/task.otherGoroutines", linkageName: "internal/task.otherGoroutines", scope: !330, file: !330, line: 99, type: !98, isLocal: false, isDefinition: true, align: 32)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !330, line: 127, type: !218, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !330, line: 146, type: !317, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "internal/task.scanWaitGroup", linkageName: "internal/task.scanWaitGroup", scope: !330, file: !330, line: 151, type: !401, isLocal: false, isDefinition: true, align: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.waitGroup", baseType: !402)
!402 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !358, size: 32, align: 32)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(name: "internal/task.gcState", linkageName: "internal/task.gcState", scope: !330, file: !330, line: 180, type: !358, isLocal: false, isDefinition: true, align: 32)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(name: "runtime.xorshift32State", linkageName: "runtime.xorshift32State", scope: !409, file: !409, line: 32, type: !98, isLocal: false, isDefinition: true, align: 32)
!409 = !DIFile(filename: "algorithm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "runtime.xorshift64State", linkageName: "runtime.xorshift64State", scope: !409, file: !409, line: 52, type: !338, isLocal: false, isDefinition: true, align: 64)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(name: "runtime.heapSize", linkageName: "runtime.heapSize", scope: !414, file: !414, line: 298, type: !43, isLocal: false, isDefinition: true, align: 64)
!414 = !DIFile(filename: "runtime_unix.go", directory: "/usr/local/lib/tinygo/src/runtime")
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(name: "type string", scope: !78, file: !78, line: 1, type: !79, isLocal: false, isDefinition: true, align: 64)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(name: "type *string", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(name: "runtime.zeroSizedAlloc", linkageName: "runtime.zeroSizedAlloc", scope: !421, file: !421, line: 30, type: !4, isLocal: false, isDefinition: true, align: 8)
!421 = !DIFile(filename: "gc_boehm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "runtime.gcLock", linkageName: "runtime.gcLock", scope: !421, file: !421, line: 32, type: !384, isLocal: false, isDefinition: true, align: 32)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !421, line: 93, type: !317, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !428, line: 78, type: !71, isLocal: true, isDefinition: true)
!428 = !DIFile(filename: "panic.go", directory: "/usr/local/lib/tinygo/src/runtime")
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !428, line: 99, type: !431, isLocal: true, isDefinition: true)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, align: 8, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 24, lowerBound: 0)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !428, line: 101, type: !127, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !428, line: 103, type: !438, isLocal: true, isDefinition: true)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, align: 8, elements: !254)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !428, line: 184, type: !441, isLocal: true, isDefinition: true)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, align: 8, elements: !173)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !428, line: 194, type: !444, isLocal: true, isDefinition: true)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, align: 8, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 18, lowerBound: 0)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !428, line: 199, type: !444, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !428, line: 212, type: !451, isLocal: true, isDefinition: true)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, align: 8, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 37, lowerBound: 0)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !428, line: 222, type: !112, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !458, line: 117, type: !46, isLocal: true, isDefinition: true)
!458 = !DIFile(filename: "print.go", directory: "/usr/local/lib/tinygo/src/runtime")
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !458, line: 120, type: !28, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !458, line: 123, type: !28, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !458, line: 197, type: !46, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !458, line: 200, type: !28, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !458, line: 203, type: !28, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !458, line: 272, type: !127, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !458, line: 279, type: !127, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !458, line: 373, type: !46, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !458, line: 391, type: !28, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !458, line: 393, type: !53, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(name: "runtime.stackTop", linkageName: "runtime.stackTop", scope: !414, file: !414, line: 75, type: !43, isLocal: false, isDefinition: true, align: 64)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(name: "runtime.main_argc", linkageName: "runtime.main_argc", scope: !414, file: !414, line: 105, type: !381, isLocal: false, isDefinition: true, align: 32)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "runtime.main_argv", linkageName: "runtime.main_argv", scope: !414, file: !414, line: 106, type: !485, isLocal: false, isDefinition: true, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64, dwarfAddressSpace: 0)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !414, line: 155, type: !431, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !414, line: 160, type: !313, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !414, line: 163, type: !203, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !414, line: 165, type: !203, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !414, line: 167, type: !71, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !414, line: 158, type: !388, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "runtime.signalFutex", linkageName: "runtime.signalFutex", scope: !414, file: !414, line: 354, type: !359, isLocal: false, isDefinition: true, align: 32)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "runtime.heapMaxSize", linkageName: "runtime.heapMaxSize", scope: !414, file: !414, line: 299, type: !43, isLocal: false, isDefinition: true, align: 64)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "runtime.heapStart", linkageName: "runtime.heapStart", scope: !414, file: !414, line: 301, type: !43, isLocal: false, isDefinition: true, align: 64)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "runtime.heapEnd", linkageName: "runtime.heapEnd", scope: !414, file: !414, line: 301, type: !43, isLocal: false, isDefinition: true, align: 64)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !414, line: 317, type: !508, isLocal: true, isDefinition: true)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, align: 8, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 27, lowerBound: 0)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(name: "runtime.receivedSignals", linkageName: "runtime.receivedSignals", scope: !414, file: !414, line: 358, type: !363, isLocal: false, isDefinition: true, align: 32)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "runtime.printLock", linkageName: "runtime.printLock", scope: !515, file: !515, line: 136, type: !385, isLocal: false, isDefinition: true, align: 32)
!515 = !DIFile(filename: "scheduler_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!516 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!517 = !DIFile(filename: "<unknown>", directory: "")
!518 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !519)
!519 = !{!520, !523, !572, !580, !595, !605, !611, !620, !646, !653, !659, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !697, !699, !704, !706, !709, !711, !713, !715, !717, !719, !721, !723, !725, !727, !729, !731, !733, !735, !737, !739, !741, !743, !745, !747, !749, !751, !753, !755, !417, !415, !761}
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "internal/cpu.CacheLineSize", linkageName: "internal/cpu.CacheLineSize", scope: !522, file: !522, line: 17, type: !43, isLocal: false, isDefinition: true, align: 64)
!522 = !DIFile(filename: "cpu.go", directory: "/usr/local/go/src/internal/cpu")
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !522, file: !522, line: 23, type: !525, isLocal: false, isDefinition: true, align: 8)
!525 = !DICompositeType(tag: DW_TAG_structure_type, size: 1304, align: 8, elements: !526)
!526 = !{!527, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !528, size: 512, align: 8)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.CacheLinePad", baseType: !529)
!529 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 8, elements: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !532, size: 512, align: 8)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 512, align: 8, elements: !534)
!533 = !DIBasicType(name: "byte", size: 8, encoding: DW_ATE_unsigned)
!534 = !{!535}
!535 = !DISubrange(count: 64, lowerBound: 0)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !371, size: 8, align: 8, offset: 512)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "HasADX", baseType: !371, size: 8, align: 8, offset: 520)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX", baseType: !371, size: 8, align: 8, offset: 528)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVXVNNI", baseType: !371, size: 8, align: 8, offset: 536)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX2", baseType: !371, size: 8, align: 8, offset: 544)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512", baseType: !371, size: 8, align: 8, offset: 552)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512F", baseType: !371, size: 8, align: 8, offset: 560)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512CD", baseType: !371, size: 8, align: 8, offset: 568)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BW", baseType: !371, size: 8, align: 8, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512DQ", baseType: !371, size: 8, align: 8, offset: 584)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VL", baseType: !371, size: 8, align: 8, offset: 592)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512GFNI", baseType: !371, size: 8, align: 8, offset: 600)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VAES", baseType: !371, size: 8, align: 8, offset: 608)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VNNI", baseType: !371, size: 8, align: 8, offset: 616)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI", baseType: !371, size: 8, align: 8, offset: 624)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI2", baseType: !371, size: 8, align: 8, offset: 632)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BITALG", baseType: !371, size: 8, align: 8, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPOPCNTDQ", baseType: !371, size: 8, align: 8, offset: 648)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPCLMULQDQ", baseType: !371, size: 8, align: 8, offset: 656)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI1", baseType: !371, size: 8, align: 8, offset: 664)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI2", baseType: !371, size: 8, align: 8, offset: 672)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "HasERMS", baseType: !371, size: 8, align: 8, offset: 680)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "HasFSRM", baseType: !371, size: 8, align: 8, offset: 688)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "HasFMA", baseType: !371, size: 8, align: 8, offset: 696)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "HasGFNI", baseType: !371, size: 8, align: 8, offset: 704)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "HasOSXSAVE", baseType: !371, size: 8, align: 8, offset: 712)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "HasPCLMULQDQ", baseType: !371, size: 8, align: 8, offset: 720)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "HasPOPCNT", baseType: !371, size: 8, align: 8, offset: 728)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "HasRDTSCP", baseType: !371, size: 8, align: 8, offset: 736)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA", baseType: !371, size: 8, align: 8, offset: 744)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE3", baseType: !371, size: 8, align: 8, offset: 752)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSSE3", baseType: !371, size: 8, align: 8, offset: 760)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE41", baseType: !371, size: 8, align: 8, offset: 768)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE42", baseType: !371, size: 8, align: 8, offset: 776)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "HasVAES", baseType: !371, size: 8, align: 8, offset: 784)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !528, size: 512, align: 8, offset: 792)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(name: "internal/cpu.ARM", linkageName: "internal/cpu.ARM", scope: !522, file: !522, line: 65, type: !574, isLocal: false, isDefinition: true, align: 8)
!574 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !575)
!575 = !{!527, !576, !577, !578, !579}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "HasVFPv4", baseType: !371, size: 8, align: 8, offset: 512)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "HasIDIVA", baseType: !371, size: 8, align: 8, offset: 520)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "HasV7Atomics", baseType: !371, size: 8, align: 8, offset: 528)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !528, size: 512, align: 8, offset: 536)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(name: "internal/cpu.ARM64", linkageName: "internal/cpu.ARM64", scope: !522, file: !522, line: 75, type: !582, isLocal: false, isDefinition: true, align: 8)
!582 = !DICompositeType(tag: DW_TAG_structure_type, size: 1112, align: 8, elements: !583)
!583 = !{!527, !536, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "HasPMULL", baseType: !371, size: 8, align: 8, offset: 520)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !371, size: 8, align: 8, offset: 528)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA2", baseType: !371, size: 8, align: 8, offset: 536)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !371, size: 8, align: 8, offset: 544)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !371, size: 8, align: 8, offset: 552)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !371, size: 8, align: 8, offset: 560)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "HasATOMICS", baseType: !371, size: 8, align: 8, offset: 568)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "HasCPUID", baseType: !371, size: 8, align: 8, offset: 576)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "HasDIT", baseType: !371, size: 8, align: 8, offset: 584)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "IsNeoverse", baseType: !371, size: 8, align: 8, offset: 592)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !528, size: 512, align: 8, offset: 600)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(name: "internal/cpu.Loong64", linkageName: "internal/cpu.Loong64", scope: !522, file: !522, line: 93, type: !597, isLocal: false, isDefinition: true, align: 8)
!597 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !598)
!598 = !{!527, !599, !600, !601, !602, !603, !604}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "HasLSX", baseType: !371, size: 8, align: 8, offset: 512)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "HasLASX", baseType: !371, size: 8, align: 8, offset: 520)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !371, size: 8, align: 8, offset: 528)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAMCAS", baseType: !371, size: 8, align: 8, offset: 536)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAM_BH", baseType: !371, size: 8, align: 8, offset: 544)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !528, size: 512, align: 8, offset: 552)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(name: "internal/cpu.MIPS64X", linkageName: "internal/cpu.MIPS64X", scope: !522, file: !522, line: 103, type: !607, isLocal: false, isDefinition: true, align: 8)
!607 = !DICompositeType(tag: DW_TAG_structure_type, size: 1032, align: 8, elements: !608)
!608 = !{!527, !609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !371, size: 8, align: 8, offset: 512)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !528, size: 512, align: 8, offset: 520)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(name: "internal/cpu.PPC64", linkageName: "internal/cpu.PPC64", scope: !522, file: !522, line: 114, type: !613, isLocal: false, isDefinition: true, align: 8)
!613 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !614)
!614 = !{!527, !615, !616, !617, !618, !619, !604}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "HasDARN", baseType: !371, size: 8, align: 8, offset: 512)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "HasSCV", baseType: !371, size: 8, align: 8, offset: 520)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER8", baseType: !371, size: 8, align: 8, offset: 528)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER9", baseType: !371, size: 8, align: 8, offset: 536)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER10", baseType: !371, size: 8, align: 8, offset: 544)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(name: "internal/cpu.S390X", linkageName: "internal/cpu.S390X", scope: !522, file: !522, line: 124, type: !622, isLocal: false, isDefinition: true, align: 8)
!622 = !DICompositeType(tag: DW_TAG_structure_type, size: 1192, align: 8, elements: !623)
!623 = !{!527, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "HasZARCH", baseType: !371, size: 8, align: 8, offset: 512)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "HasSTFLE", baseType: !371, size: 8, align: 8, offset: 520)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "HasLDISP", baseType: !371, size: 8, align: 8, offset: 528)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "HasEIMM", baseType: !371, size: 8, align: 8, offset: 536)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "HasDFP", baseType: !371, size: 8, align: 8, offset: 544)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "HasETF3EH", baseType: !371, size: 8, align: 8, offset: 552)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !371, size: 8, align: 8, offset: 560)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !371, size: 8, align: 8, offset: 568)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCBC", baseType: !371, size: 8, align: 8, offset: 576)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCTR", baseType: !371, size: 8, align: 8, offset: 584)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESGCM", baseType: !371, size: 8, align: 8, offset: 592)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "HasGHASH", baseType: !371, size: 8, align: 8, offset: 600)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !371, size: 8, align: 8, offset: 608)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA256", baseType: !371, size: 8, align: 8, offset: 616)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !371, size: 8, align: 8, offset: 624)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !371, size: 8, align: 8, offset: 632)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "HasVX", baseType: !371, size: 8, align: 8, offset: 640)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "HasVXE", baseType: !371, size: 8, align: 8, offset: 648)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "HasKDSA", baseType: !371, size: 8, align: 8, offset: 656)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "HasECDSA", baseType: !371, size: 8, align: 8, offset: 664)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "HasEDDSA", baseType: !371, size: 8, align: 8, offset: 672)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !528, size: 512, align: 8, offset: 680)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(name: "internal/cpu.RISCV64", linkageName: "internal/cpu.RISCV64", scope: !522, file: !522, line: 154, type: !648, isLocal: false, isDefinition: true, align: 8)
!648 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !649)
!649 = !{!527, !650, !651, !652, !579}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "HasFastMisaligned", baseType: !371, size: 8, align: 8, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "HasV", baseType: !371, size: 8, align: 8, offset: 520)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "HasZbb", baseType: !371, size: 8, align: 8, offset: 528)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(name: "internal/cpu.doDerived", linkageName: "internal/cpu.doDerived", scope: !522, file: !522, line: 174, type: !655, isLocal: false, isDefinition: true, align: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "context", baseType: !84, size: 64, align: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "fn", baseType: !84, size: 64, align: 64, offset: 64)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(name: "internal/cpu.options", linkageName: "internal/cpu.options", scope: !522, file: !522, line: 192, type: !661, isLocal: false, isDefinition: true, align: 64)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]internal/cpu.option", size: 192, align: 64, elements: !662)
!662 = !{!663, !42, !673}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !664, size: 64, align: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64, align: 64, dwarfAddressSpace: 0)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.option", baseType: !666)
!666 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !667)
!667 = !{!668, !669, !671, !672}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "Name", baseType: !38, size: 128, align: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "Feature", baseType: !670, size: 64, align: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64, dwarfAddressSpace: 0)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "Specified", baseType: !371, size: 8, align: 8, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "Enable", baseType: !371, size: 8, align: 8, offset: 200)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "cap", baseType: !43, size: 64, align: 64, offset: 128)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !522, line: 218, type: !28, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !522, line: 223, type: !303, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !522, line: 223, type: !127, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !522, line: 230, type: !127, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !522, line: 239, type: !46, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !522, line: 255, type: !308, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !522, line: 255, type: !127, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !522, line: 232, type: !46, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !522, line: 235, type: !313, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !522, line: 235, type: !694, isLocal: true, isDefinition: true)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, align: 8, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 32, lowerBound: 0)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !522, line: 235, type: !127, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !522, line: 264, type: !701, isLocal: true, isDefinition: true)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, align: 8, elements: !702)
!702 = !{!703}
!703 = !DISubrange(count: 25, lowerBound: 0)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !522, line: 264, type: !441, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(name: "internal/cpu.maxExtendedFunctionInformation", linkageName: "internal/cpu.maxExtendedFunctionInformation", scope: !708, file: !708, line: 69, type: !98, isLocal: false, isDefinition: true, align: 32)
!708 = !DIFile(filename: "cpu_x86.go", directory: "/usr/local/go/src/internal/cpu")
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !708, line: 73, type: !46, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !708, line: 74, type: !46, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !708, line: 75, type: !28, isLocal: true, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !708, line: 76, type: !28, isLocal: true, isDefinition: true)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !708, line: 77, type: !218, isLocal: true, isDefinition: true)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !708, line: 78, type: !203, isLocal: true, isDefinition: true)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !708, line: 79, type: !46, isLocal: true, isDefinition: true)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !708, line: 80, type: !223, isLocal: true, isDefinition: true)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !708, line: 87, type: !203, isLocal: true, isDefinition: true)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !708, line: 88, type: !28, isLocal: true, isDefinition: true)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !708, line: 89, type: !53, isLocal: true, isDefinition: true)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !708, line: 90, type: !53, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !708, line: 91, type: !53, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !708, line: 97, type: !46, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !708, line: 98, type: !28, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !708, line: 99, type: !28, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !708, line: 100, type: !28, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !708, line: 101, type: !46, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !708, line: 107, type: !71, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !708, line: 108, type: !64, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !708, line: 109, type: !64, isLocal: true, isDefinition: true)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !708, line: 110, type: !64, isLocal: true, isDefinition: true)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !708, line: 111, type: !64, isLocal: true, isDefinition: true)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !757, line: 1, type: !758, isLocal: true, isDefinition: true)
!757 = !DIFile(filename: "datacache_x86.go", directory: "/usr/local/go/src/internal/cpu")
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, align: 8, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 13, lowerBound: 0)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !757, line: 1, type: !763, isLocal: true, isDefinition: true)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 664, align: 8, elements: !764)
!764 = !{!765}
!765 = !DISubrange(count: 83, lowerBound: 0)
!766 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !767)
!767 = !{!768, !772, !774, !782}
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(name: "math/bits.deBruijn32tab", linkageName: "math/bits.deBruijn32tab", scope: !770, file: !770, line: 44, type: !771, isLocal: false, isDefinition: true, align: 8)
!770 = !DIFile(filename: "bits.go", directory: "/usr/local/go/src/math/bits")
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 256, align: 8, elements: !695)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(name: "math/bits.deBruijn64tab", linkageName: "math/bits.deBruijn64tab", scope: !770, file: !770, line: 51, type: !532, isLocal: false, isDefinition: true, align: 8)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(name: "math/bits.overflowError", linkageName: "runtime.overflowError", scope: !776, file: !776, line: 12, type: !777, isLocal: false, isDefinition: true, align: 64)
!776 = !DIFile(filename: "bits_errors.go", directory: "/usr/local/go/src/math/bits")
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._interface", baseType: !779)
!779 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !780)
!780 = !{!105, !781}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "value", baseType: !84, size: 64, align: 64, offset: 64)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(name: "math/bits.divideError", linkageName: "runtime.divideError", scope: !776, file: !776, line: 15, type: !777, isLocal: false, isDefinition: true, align: 64)
!784 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !785)
!785 = !{!786, !788, !791, !796, !799, !802, !806, !808, !810, !812, !814, !816, !818, !820, !822, !824, !826, !828, !830, !832, !834, !836, !839, !841, !843, !845, !847, !849, !851, !853, !855, !857, !859, !861, !863, !865, !867, !869, !873, !875, !877, !880, !882, !884, !886, !890, !893, !898, !901, !903, !907, !909, !912, !914, !918, !921, !923, !925, !928, !930, !932, !934, !936, !938, !940, !942, !944, !946, !948, !950, !952, !954, !956, !958, !960, !962, !964, !966, !968, !970, !972, !974}
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !522, file: !522, line: 23, type: !525, isLocal: false, isDefinition: true, align: 8)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(name: "math.useFMA", linkageName: "math.useFMA", scope: !790, file: !790, line: 11, type: !371, isLocal: false, isDefinition: true, align: 8)
!790 = !DIFile(filename: "exp_amd64.go", directory: "/usr/local/go/src/math")
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(name: "math._gamP", linkageName: "math._gamP", scope: !793, file: !793, line: 66, type: !794, isLocal: false, isDefinition: true, align: 64)
!793 = !DIFile(filename: "gamma.go", directory: "/usr/local/go/src/math")
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 448, align: 64, elements: !72)
!795 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(name: "math._gamQ", linkageName: "math._gamQ", scope: !793, file: !793, line: 75, type: !798, isLocal: false, isDefinition: true, align: 64)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 512, align: 64, elements: !65)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(name: "math._gamS", linkageName: "math._gamS", scope: !793, file: !793, line: 85, type: !801, isLocal: false, isDefinition: true, align: 64)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 320, align: 64, elements: !54)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(name: "math.p0R8", linkageName: "math.p0R8", scope: !804, file: !804, line: 240, type: !805, isLocal: false, isDefinition: true, align: 64)
!804 = !DIFile(filename: "j0.go", directory: "/usr/local/go/src/math")
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 384, align: 64, elements: !204)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(name: "math.p0S8", linkageName: "math.p0S8", scope: !804, file: !804, line: 248, type: !801, isLocal: false, isDefinition: true, align: 64)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(name: "math.p0R5", linkageName: "math.p0R5", scope: !804, file: !804, line: 257, type: !805, isLocal: false, isDefinition: true, align: 64)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(name: "math.p0S5", linkageName: "math.p0S5", scope: !804, file: !804, line: 265, type: !801, isLocal: false, isDefinition: true, align: 64)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(name: "math.p0R3", linkageName: "math.p0R3", scope: !804, file: !804, line: 274, type: !805, isLocal: false, isDefinition: true, align: 64)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(name: "math.p0S3", linkageName: "math.p0S3", scope: !804, file: !804, line: 282, type: !801, isLocal: false, isDefinition: true, align: 64)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(name: "math.p0R2", linkageName: "math.p0R2", scope: !804, file: !804, line: 291, type: !805, isLocal: false, isDefinition: true, align: 64)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(name: "math.p0S2", linkageName: "math.p0S2", scope: !804, file: !804, line: 299, type: !801, isLocal: false, isDefinition: true, align: 64)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(name: "math.q0R8", linkageName: "math.q0R8", scope: !804, file: !804, line: 339, type: !805, isLocal: false, isDefinition: true, align: 64)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(name: "math.q0S8", linkageName: "math.q0S8", scope: !804, file: !804, line: 347, type: !805, isLocal: false, isDefinition: true, align: 64)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(name: "math.q0R5", linkageName: "math.q0R5", scope: !804, file: !804, line: 357, type: !805, isLocal: false, isDefinition: true, align: 64)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(name: "math.q0S5", linkageName: "math.q0S5", scope: !804, file: !804, line: 365, type: !805, isLocal: false, isDefinition: true, align: 64)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(name: "math.q0R3", linkageName: "math.q0R3", scope: !804, file: !804, line: 375, type: !805, isLocal: false, isDefinition: true, align: 64)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(name: "math.q0S3", linkageName: "math.q0S3", scope: !804, file: !804, line: 383, type: !805, isLocal: false, isDefinition: true, align: 64)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(name: "math.q0R2", linkageName: "math.q0R2", scope: !804, file: !804, line: 393, type: !805, isLocal: false, isDefinition: true, align: 64)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(name: "math.q0S2", linkageName: "math.q0S2", scope: !804, file: !804, line: 401, type: !805, isLocal: false, isDefinition: true, align: 64)
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(name: "math.p1R8", linkageName: "math.p1R8", scope: !838, file: !838, line: 235, type: !805, isLocal: false, isDefinition: true, align: 64)
!838 = !DIFile(filename: "j1.go", directory: "/usr/local/go/src/math")
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(name: "math.p1S8", linkageName: "math.p1S8", scope: !838, file: !838, line: 243, type: !801, isLocal: false, isDefinition: true, align: 64)
!841 = !DIGlobalVariableExpression(var: !842, expr: !DIExpression())
!842 = distinct !DIGlobalVariable(name: "math.p1R5", linkageName: "math.p1R5", scope: !838, file: !838, line: 252, type: !805, isLocal: false, isDefinition: true, align: 64)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(name: "math.p1S5", linkageName: "math.p1S5", scope: !838, file: !838, line: 260, type: !801, isLocal: false, isDefinition: true, align: 64)
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(name: "math.p1R3", linkageName: "math.p1R3", scope: !838, file: !838, line: 269, type: !805, isLocal: false, isDefinition: true, align: 64)
!847 = !DIGlobalVariableExpression(var: !848, expr: !DIExpression())
!848 = distinct !DIGlobalVariable(name: "math.p1S3", linkageName: "math.p1S3", scope: !838, file: !838, line: 277, type: !801, isLocal: false, isDefinition: true, align: 64)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(name: "math.p1R2", linkageName: "math.p1R2", scope: !838, file: !838, line: 286, type: !805, isLocal: false, isDefinition: true, align: 64)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(name: "math.p1S2", linkageName: "math.p1S2", scope: !838, file: !838, line: 294, type: !801, isLocal: false, isDefinition: true, align: 64)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(name: "math.q1R8", linkageName: "math.q1R8", scope: !838, file: !838, line: 334, type: !805, isLocal: false, isDefinition: true, align: 64)
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(name: "math.q1S8", linkageName: "math.q1S8", scope: !838, file: !838, line: 342, type: !805, isLocal: false, isDefinition: true, align: 64)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(name: "math.q1R5", linkageName: "math.q1R5", scope: !838, file: !838, line: 352, type: !805, isLocal: false, isDefinition: true, align: 64)
!859 = !DIGlobalVariableExpression(var: !860, expr: !DIExpression())
!860 = distinct !DIGlobalVariable(name: "math.q1S5", linkageName: "math.q1S5", scope: !838, file: !838, line: 360, type: !805, isLocal: false, isDefinition: true, align: 64)
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(name: "math.q1R3", linkageName: "math.q1R3", scope: !838, file: !838, line: 370, type: !805, isLocal: false, isDefinition: true, align: 64)
!863 = !DIGlobalVariableExpression(var: !864, expr: !DIExpression())
!864 = distinct !DIGlobalVariable(name: "math.q1S3", linkageName: "math.q1S3", scope: !838, file: !838, line: 378, type: !805, isLocal: false, isDefinition: true, align: 64)
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(name: "math.q1R2", linkageName: "math.q1R2", scope: !838, file: !838, line: 388, type: !805, isLocal: false, isDefinition: true, align: 64)
!867 = !DIGlobalVariableExpression(var: !868, expr: !DIExpression())
!868 = distinct !DIGlobalVariable(name: "math.q1S2", linkageName: "math.q1S2", scope: !838, file: !838, line: 396, type: !805, isLocal: false, isDefinition: true, align: 64)
!869 = !DIGlobalVariableExpression(var: !870, expr: !DIExpression())
!870 = distinct !DIGlobalVariable(name: "math._lgamA", linkageName: "math._lgamA", scope: !871, file: !871, line: 91, type: !872, isLocal: false, isDefinition: true, align: 64)
!871 = !DIFile(filename: "lgamma.go", directory: "/usr/local/go/src/math")
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 768, align: 64, elements: !297)
!873 = !DIGlobalVariableExpression(var: !874, expr: !DIExpression())
!874 = distinct !DIGlobalVariable(name: "math._lgamR", linkageName: "math._lgamR", scope: !871, file: !871, line: 105, type: !794, isLocal: false, isDefinition: true, align: 64)
!875 = !DIGlobalVariableExpression(var: !876, expr: !DIExpression())
!876 = distinct !DIGlobalVariable(name: "math._lgamS", linkageName: "math._lgamS", scope: !871, file: !871, line: 114, type: !794, isLocal: false, isDefinition: true, align: 64)
!877 = !DIGlobalVariableExpression(var: !878, expr: !DIExpression())
!878 = distinct !DIGlobalVariable(name: "math._lgamT", linkageName: "math._lgamT", scope: !871, file: !871, line: 123, type: !879, isLocal: false, isDefinition: true, align: 64)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 960, align: 64, elements: !133)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(name: "math._lgamU", linkageName: "math._lgamU", scope: !871, file: !871, line: 140, type: !805, isLocal: false, isDefinition: true, align: 64)
!882 = !DIGlobalVariableExpression(var: !883, expr: !DIExpression())
!883 = distinct !DIGlobalVariable(name: "math._lgamV", linkageName: "math._lgamV", scope: !871, file: !871, line: 148, type: !805, isLocal: false, isDefinition: true, align: 64)
!884 = !DIGlobalVariableExpression(var: !885, expr: !DIExpression())
!885 = distinct !DIGlobalVariable(name: "math._lgamW", linkageName: "math._lgamW", scope: !871, file: !871, line: 156, type: !794, isLocal: false, isDefinition: true, align: 64)
!886 = !DIGlobalVariableExpression(var: !887, expr: !DIExpression())
!887 = distinct !DIGlobalVariable(name: "math.pow10tab", linkageName: "math.pow10tab", scope: !888, file: !888, line: 8, type: !889, isLocal: false, isDefinition: true, align: 64)
!888 = !DIFile(filename: "pow10.go", directory: "/usr/local/go/src/math")
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 2048, align: 64, elements: !695)
!890 = !DIGlobalVariableExpression(var: !891, expr: !DIExpression())
!891 = distinct !DIGlobalVariable(name: "math.pow10postab32", linkageName: "math.pow10postab32", scope: !888, file: !888, line: 16, type: !892, isLocal: false, isDefinition: true, align: 64)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 640, align: 64, elements: !224)
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression())
!894 = distinct !DIGlobalVariable(name: "math.pow10negtab32", linkageName: "math.pow10negtab32", scope: !888, file: !888, line: 21, type: !895, isLocal: false, isDefinition: true, align: 64)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 704, align: 64, elements: !896)
!896 = !{!897}
!897 = !DISubrange(count: 11, lowerBound: 0)
!898 = !DIGlobalVariableExpression(var: !899, expr: !DIExpression())
!899 = distinct !DIGlobalVariable(name: "math._sin", linkageName: "math._sin", scope: !900, file: !900, line: 93, type: !805, isLocal: false, isDefinition: true, align: 64)
!900 = !DIFile(filename: "sin.go", directory: "/usr/local/go/src/math")
!901 = !DIGlobalVariableExpression(var: !902, expr: !DIExpression())
!902 = distinct !DIGlobalVariable(name: "math._cos", linkageName: "math._cos", scope: !900, file: !900, line: 103, type: !805, isLocal: false, isDefinition: true, align: 64)
!903 = !DIGlobalVariableExpression(var: !904, expr: !DIExpression())
!904 = distinct !DIGlobalVariable(name: "math._tanP", linkageName: "math._tanP", scope: !905, file: !905, line: 63, type: !906, isLocal: false, isDefinition: true, align: 64)
!905 = !DIFile(filename: "tan.go", directory: "/usr/local/go/src/math")
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 192, align: 64, elements: !47)
!907 = !DIGlobalVariableExpression(var: !908, expr: !DIExpression())
!908 = distinct !DIGlobalVariable(name: "math._tanQ", linkageName: "math._tanQ", scope: !905, file: !905, line: 68, type: !801, isLocal: false, isDefinition: true, align: 64)
!909 = !DIGlobalVariableExpression(var: !910, expr: !DIExpression())
!910 = distinct !DIGlobalVariable(name: "math.tanhP", linkageName: "math.tanhP", scope: !911, file: !911, line: 57, type: !906, isLocal: false, isDefinition: true, align: 64)
!911 = !DIFile(filename: "tanh.go", directory: "/usr/local/go/src/math")
!912 = !DIGlobalVariableExpression(var: !913, expr: !DIExpression())
!913 = distinct !DIGlobalVariable(name: "math.tanhQ", linkageName: "math.tanhQ", scope: !911, file: !911, line: 62, type: !906, isLocal: false, isDefinition: true, align: 64)
!914 = !DIGlobalVariableExpression(var: !915, expr: !DIExpression())
!915 = distinct !DIGlobalVariable(name: "math.mPi4", linkageName: "math.mPi4", scope: !916, file: !916, line: 81, type: !917, isLocal: false, isDefinition: true, align: 64)
!916 = !DIFile(filename: "trig_reduce.go", directory: "/usr/local/go/src/math")
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 1280, align: 64, elements: !389)
!918 = !DIGlobalVariableExpression(var: !919, expr: !DIExpression())
!919 = distinct !DIGlobalVariable(scope: null, file: !920, line: 1, type: !132, isLocal: true, isDefinition: true)
!920 = !DIFile(filename: "exp2_noasm.go", directory: "/usr/local/go/src/math")
!921 = !DIGlobalVariableExpression(var: !922, expr: !DIExpression())
!922 = distinct !DIGlobalVariable(name: "type *string", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!923 = !DIGlobalVariableExpression(var: !924, expr: !DIExpression())
!924 = distinct !DIGlobalVariable(name: "type string", scope: !78, file: !78, line: 1, type: !79, isLocal: false, isDefinition: true, align: 64)
!925 = !DIGlobalVariableExpression(var: !926, expr: !DIExpression())
!926 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!927 = !DIFile(filename: "stubs.go", directory: "/usr/local/go/src/math")
!928 = !DIGlobalVariableExpression(var: !929, expr: !DIExpression())
!929 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!930 = !DIGlobalVariableExpression(var: !931, expr: !DIExpression())
!931 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!932 = !DIGlobalVariableExpression(var: !933, expr: !DIExpression())
!933 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!934 = !DIGlobalVariableExpression(var: !935, expr: !DIExpression())
!935 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!936 = !DIGlobalVariableExpression(var: !937, expr: !DIExpression())
!937 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!938 = !DIGlobalVariableExpression(var: !939, expr: !DIExpression())
!939 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!940 = !DIGlobalVariableExpression(var: !941, expr: !DIExpression())
!941 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!942 = !DIGlobalVariableExpression(var: !943, expr: !DIExpression())
!943 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!944 = !DIGlobalVariableExpression(var: !945, expr: !DIExpression())
!945 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!946 = !DIGlobalVariableExpression(var: !947, expr: !DIExpression())
!947 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!948 = !DIGlobalVariableExpression(var: !949, expr: !DIExpression())
!949 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!950 = !DIGlobalVariableExpression(var: !951, expr: !DIExpression())
!951 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!952 = !DIGlobalVariableExpression(var: !953, expr: !DIExpression())
!953 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!954 = !DIGlobalVariableExpression(var: !955, expr: !DIExpression())
!955 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!956 = !DIGlobalVariableExpression(var: !957, expr: !DIExpression())
!957 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!958 = !DIGlobalVariableExpression(var: !959, expr: !DIExpression())
!959 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!960 = !DIGlobalVariableExpression(var: !961, expr: !DIExpression())
!961 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!962 = !DIGlobalVariableExpression(var: !963, expr: !DIExpression())
!963 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!964 = !DIGlobalVariableExpression(var: !965, expr: !DIExpression())
!965 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!966 = !DIGlobalVariableExpression(var: !967, expr: !DIExpression())
!967 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!968 = !DIGlobalVariableExpression(var: !969, expr: !DIExpression())
!969 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!970 = !DIGlobalVariableExpression(var: !971, expr: !DIExpression())
!971 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!972 = !DIGlobalVariableExpression(var: !973, expr: !DIExpression())
!973 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!974 = !DIGlobalVariableExpression(var: !975, expr: !DIExpression())
!975 = distinct !DIGlobalVariable(scope: null, file: !927, line: 1, type: !132, isLocal: true, isDefinition: true)
!976 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !977)
!977 = !{!978, !984, !986, !988, !993, !995, !1000, !1005, !1010, !1015}
!978 = !DIGlobalVariableExpression(var: !979, expr: !DIExpression())
!979 = distinct !DIGlobalVariable(scope: null, file: !980, line: 1, type: !981, isLocal: true, isDefinition: true)
!980 = !DIFile(filename: "value.go", directory: "/usr/local/go/src/sync/atomic")
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, align: 8, elements: !982)
!982 = !{!983}
!983 = !DISubrange(count: 53, lowerBound: 0)
!984 = !DIGlobalVariableExpression(var: !985, expr: !DIExpression())
!985 = distinct !DIGlobalVariable(name: "type *string", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!986 = !DIGlobalVariableExpression(var: !987, expr: !DIExpression())
!987 = distinct !DIGlobalVariable(name: "type string", scope: !78, file: !78, line: 1, type: !79, isLocal: false, isDefinition: true, align: 64)
!988 = !DIGlobalVariableExpression(var: !989, expr: !DIExpression())
!989 = distinct !DIGlobalVariable(scope: null, file: !980, line: 1, type: !990, isLocal: true, isDefinition: true)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, align: 8, elements: !991)
!991 = !{!992}
!992 = !DISubrange(count: 60, lowerBound: 0)
!993 = !DIGlobalVariableExpression(var: !994, expr: !DIExpression())
!994 = distinct !DIGlobalVariable(name: "sync/atomic.firstStoreInProgress", linkageName: "sync/atomic.firstStoreInProgress", scope: !980, file: !980, line: 42, type: !533, isLocal: false, isDefinition: true, align: 8)
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
!1020 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1021 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1022 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1023)
!1023 = !{!0, !7, !1024, !1026, !1028}
!1024 = !DIGlobalVariableExpression(var: !1025, expr: !DIExpression())
!1025 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !46, isLocal: true, isDefinition: true)
!1026 = !DIGlobalVariableExpression(var: !1027, expr: !DIExpression())
!1027 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !313, isLocal: true, isDefinition: true)
!1028 = !DIGlobalVariableExpression(var: !1029, expr: !DIExpression())
!1029 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !313, isLocal: true, isDefinition: true)
!1030 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1031)
!1031 = !{!9, !15}
!1032 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1033)
!1033 = !{!25, !31, !44, !49, !51, !56, !1034, !1036, !58, !60, !62, !67, !69, !74, !1038, !1041, !1043, !1045, !85, !76, !1047, !1054, !1056, !1058, !1060, !1062, !1064, !1066, !1068, !1070, !1072, !1074, !1076, !1078, !1080, !1082, !1084, !1086, !1088, !1090, !1092, !1094, !1096, !1098, !1100, !1102, !1104, !1106, !1108, !1110, !1112, !1114, !1116, !1118, !1120, !1122, !1124, !1126, !1128, !1130, !107, !92, !1132, !1150, !1155, !1157, !1159, !1161, !1163, !1165, !1167, !1169, !1181, !1187, !1193, !109, !1196, !1198, !1200, !1202, !123, !115, !1211, !125, !130, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !1217, !181, !1220, !1222, !1224, !1226, !1228, !1230, !175, !165, !1236, !1238, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !206, !208, !210, !212, !214, !216, !221, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !1240, !1245, !1250, !1255, !1260, !258, !256, !248, !1262, !1264, !1266, !1268, !1270, !1272, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !1274, !284, !286, !288, !290, !292, !294, !299, !301, !1276, !306, !311, !1278, !1280, !1282, !1284, !1286, !1291, !1293, !1295, !1297, !1299, !1301, !1303, !1305, !1307, !1309, !1311, !1313, !1318, !1320, !1322, !1327, !1329, !1331, !1333, !1335, !1337, !1339, !1341, !1343, !1345, !1347, !1349, !1351, !1356, !1358, !1360, !1362, !1364, !1366, !1368, !1370, !1372, !1377, !1379, !1384, !1389, !1391, !1393, !1395, !1400, !1402, !1404, !1406, !1408, !1413, !1415, !1417, !1419, !1421, !1423, !1428, !1430, !1435, !1437, !1439, !1441, !1443, !1445, !1447, !1449, !1451, !1453, !1455, !1457, !1462, !1464, !1469, !1471, !1473, !1475, !1477, !1480, !1482, !1484, !314, !320, !322, !324, !326, !1486, !1488, !1493, !1495, !1497, !1499, !1501, !1503, !1505, !1507, !1509, !1511, !1514}
!1034 = !DIGlobalVariableExpression(var: !1035, expr: !DIExpression())
!1035 = distinct !DIGlobalVariable(scope: null, file: !27, line: 396, type: !28, isLocal: true, isDefinition: true)
!1036 = !DIGlobalVariableExpression(var: !1037, expr: !DIExpression())
!1037 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeBits", linkageName: "internal/reflectlite.errTypeBits", scope: !27, file: !27, line: 396, type: !33, isLocal: false, isDefinition: true, align: 64)
!1038 = !DIGlobalVariableExpression(var: !1039, expr: !DIExpression())
!1039 = distinct !DIGlobalVariable(scope: null, file: !27, line: 400, type: !1040, isLocal: true, isDefinition: true)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, align: 8, elements: !896)
!1041 = !DIGlobalVariableExpression(var: !1042, expr: !DIExpression())
!1042 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByName", linkageName: "internal/reflectlite.errTypeFieldByName", scope: !27, file: !27, line: 400, type: !33, isLocal: false, isDefinition: true, align: 64)
!1043 = !DIGlobalVariableExpression(var: !1044, expr: !DIExpression())
!1044 = distinct !DIGlobalVariable(scope: null, file: !27, line: 401, type: !296, isLocal: true, isDefinition: true)
!1045 = !DIGlobalVariableExpression(var: !1046, expr: !DIExpression())
!1046 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByIndex", linkageName: "internal/reflectlite.errTypeFieldByIndex", scope: !27, file: !27, line: 401, type: !33, isLocal: false, isDefinition: true, align: 64)
!1047 = !DIGlobalVariableExpression(var: !1048, expr: !DIExpression())
!1048 = distinct !DIGlobalVariable(name: "internal/reflectlite.uint8Type", linkageName: "internal/reflectlite.uint8Type", scope: !316, file: !316, line: 956, type: !1049, isLocal: false, isDefinition: true, align: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64, align: 64, dwarfAddressSpace: 0)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.RawType", baseType: !1051)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, size: 8, align: 8, elements: !1052)
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "meta", baseType: !4, size: 8, align: 8)
!1054 = !DIGlobalVariableExpression(var: !1055, expr: !DIExpression())
!1055 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.visit", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1056 = !DIGlobalVariableExpression(var: !1057, expr: !DIExpression())
!1057 = distinct !DIGlobalVariable(name: "type *struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1058 = !DIGlobalVariableExpression(var: !1059, expr: !DIExpression())
!1059 = distinct !DIGlobalVariable(name: "type *unsafe.Pointer", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1060 = !DIGlobalVariableExpression(var: !1061, expr: !DIExpression())
!1061 = distinct !DIGlobalVariable(name: "type unsafe.Pointer", scope: !78, file: !78, line: 1, type: !79, isLocal: false, isDefinition: true, align: 64)
!1062 = !DIGlobalVariableExpression(var: !1063, expr: !DIExpression())
!1063 = distinct !DIGlobalVariable(name: "reflect/types.signature:Align:func:{}{basic:int}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1064 = !DIGlobalVariableExpression(var: !1065, expr: !DIExpression())
!1065 = distinct !DIGlobalVariable(name: "reflect/types.signature:AssignableTo:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1066 = !DIGlobalVariableExpression(var: !1067, expr: !DIExpression())
!1067 = distinct !DIGlobalVariable(name: "reflect/types.signature:Bits:func:{}{basic:int}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1068 = !DIGlobalVariableExpression(var: !1069, expr: !DIExpression())
!1069 = distinct !DIGlobalVariable(name: "reflect/types.signature:ChanDir:func:{}{named:internal/reflectlite.ChanDir}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1070 = !DIGlobalVariableExpression(var: !1071, expr: !DIExpression())
!1071 = distinct !DIGlobalVariable(name: "reflect/types.signature:Comparable:func:{}{basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1072 = !DIGlobalVariableExpression(var: !1073, expr: !DIExpression())
!1073 = distinct !DIGlobalVariable(name: "reflect/types.signature:Elem:func:{}{named:internal/reflectlite.Type}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1074 = !DIGlobalVariableExpression(var: !1075, expr: !DIExpression())
!1075 = distinct !DIGlobalVariable(name: "reflect/types.signature:Field:func:{basic:int}{named:internal/reflectlite.StructField}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1076 = !DIGlobalVariableExpression(var: !1077, expr: !DIExpression())
!1077 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldAlign:func:{}{basic:int}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1078 = !DIGlobalVariableExpression(var: !1079, expr: !DIExpression())
!1079 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByIndex:func:{slice:basic:int}{named:internal/reflectlite.StructField}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1080 = !DIGlobalVariableExpression(var: !1081, expr: !DIExpression())
!1081 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByName:func:{basic:string}{named:internal/reflectlite.StructField,basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1082 = !DIGlobalVariableExpression(var: !1083, expr: !DIExpression())
!1083 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.StructField,basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1084 = !DIGlobalVariableExpression(var: !1085, expr: !DIExpression())
!1085 = distinct !DIGlobalVariable(name: "reflect/types.signature:Implements:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1086 = !DIGlobalVariableExpression(var: !1087, expr: !DIExpression())
!1087 = distinct !DIGlobalVariable(name: "reflect/types.signature:Key:func:{}{named:internal/reflectlite.Type}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1088 = !DIGlobalVariableExpression(var: !1089, expr: !DIExpression())
!1089 = distinct !DIGlobalVariable(name: "reflect/types.signature:Kind:func:{}{named:internal/reflectlite.Kind}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1090 = !DIGlobalVariableExpression(var: !1091, expr: !DIExpression())
!1091 = distinct !DIGlobalVariable(name: "reflect/types.signature:Len:func:{}{basic:int}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1092 = !DIGlobalVariableExpression(var: !1093, expr: !DIExpression())
!1093 = distinct !DIGlobalVariable(name: "reflect/types.signature:Name:func:{}{basic:string}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1094 = !DIGlobalVariableExpression(var: !1095, expr: !DIExpression())
!1095 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumField:func:{}{basic:int}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1096 = !DIGlobalVariableExpression(var: !1097, expr: !DIExpression())
!1097 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumMethod:func:{}{basic:int}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1098 = !DIGlobalVariableExpression(var: !1099, expr: !DIExpression())
!1099 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowComplex:func:{basic:complex128}{basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1100 = !DIGlobalVariableExpression(var: !1101, expr: !DIExpression())
!1101 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowFloat:func:{basic:float64}{basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1102 = !DIGlobalVariableExpression(var: !1103, expr: !DIExpression())
!1103 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowInt:func:{basic:int64}{basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1104 = !DIGlobalVariableExpression(var: !1105, expr: !DIExpression())
!1105 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowUint:func:{basic:uint64}{basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1106 = !DIGlobalVariableExpression(var: !1107, expr: !DIExpression())
!1107 = distinct !DIGlobalVariable(name: "reflect/types.signature:PkgPath:func:{}{basic:string}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1108 = !DIGlobalVariableExpression(var: !1109, expr: !DIExpression())
!1109 = distinct !DIGlobalVariable(name: "reflect/types.signature:Size:func:{}{basic:uintptr}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1110 = !DIGlobalVariableExpression(var: !1111, expr: !DIExpression())
!1111 = distinct !DIGlobalVariable(name: "reflect/types.signature:String:func:{}{basic:string}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1112 = !DIGlobalVariableExpression(var: !1113, expr: !DIExpression())
!1113 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.elem:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1114 = !DIGlobalVariableExpression(var: !1115, expr: !DIExpression())
!1115 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.gcLayout:func:{}{basic:unsafe.Pointer}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1116 = !DIGlobalVariableExpression(var: !1117, expr: !DIExpression())
!1117 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isBinary:func:{}{basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1118 = !DIGlobalVariableExpression(var: !1119, expr: !DIExpression())
!1119 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isNamed:func:{}{basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1120 = !DIGlobalVariableExpression(var: !1121, expr: !DIExpression())
!1121 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.key:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1122 = !DIGlobalVariableExpression(var: !1123, expr: !DIExpression())
!1123 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.name:func:{}{basic:string}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1124 = !DIGlobalVariableExpression(var: !1125, expr: !DIExpression())
!1125 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.ptrtag:func:{}{basic:uintptr}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1126 = !DIGlobalVariableExpression(var: !1127, expr: !DIExpression())
!1127 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawField:func:{basic:int}{named:internal/reflectlite.rawStructField}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1128 = !DIGlobalVariableExpression(var: !1129, expr: !DIExpression())
!1129 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawFieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.rawStructField,slice:basic:int,basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1130 = !DIGlobalVariableExpression(var: !1131, expr: !DIExpression())
!1131 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.underlying:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1132 = !DIGlobalVariableExpression(var: !1133, expr: !DIExpression())
!1133 = distinct !DIGlobalVariable(name: "type internal/reflectlite.RawType", scope: !78, file: !78, line: 1, type: !1134, isLocal: false, isDefinition: true, align: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, size: 832, align: 64, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1142, !1148}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "methodSet", baseType: !84, size: 64, align: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !82, size: 8, align: 8, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !90, size: 16, align: 16, offset: 80)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !84, size: 64, align: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !84, size: 64, align: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !84, size: 64, align: 64, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1143, size: 320, align: 64, offset: 320)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !1144)
!1144 = !{!1145, !1146}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !43, size: 64, align: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1147, size: 256, align: 64, offset: 64)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, align: 64, elements: !29)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1149, size: 160, align: 8, offset: 640)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 160, align: 8, elements: !389)
!1150 = !DIGlobalVariableExpression(var: !1151, expr: !DIExpression())
!1151 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, align: 8, elements: !1153)
!1153 = !{!1154}
!1154 = !DISubrange(count: 28, lowerBound: 0)
!1155 = !DIGlobalVariableExpression(var: !1156, expr: !DIExpression())
!1156 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !132, isLocal: true, isDefinition: true)
!1157 = !DIGlobalVariableExpression(var: !1158, expr: !DIExpression())
!1158 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1159 = !DIGlobalVariableExpression(var: !1160, expr: !DIExpression())
!1160 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !758, isLocal: true, isDefinition: true)
!1161 = !DIGlobalVariableExpression(var: !1162, expr: !DIExpression())
!1162 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1163 = !DIGlobalVariableExpression(var: !1164, expr: !DIExpression())
!1164 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1040, isLocal: true, isDefinition: true)
!1165 = !DIGlobalVariableExpression(var: !1166, expr: !DIExpression())
!1166 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1167 = !DIGlobalVariableExpression(var: !1168, expr: !DIExpression())
!1168 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !296, isLocal: true, isDefinition: true)
!1169 = !DIGlobalVariableExpression(var: !1170, expr: !DIExpression())
!1170 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.RawType", scope: !78, file: !78, line: 1, type: !1171, isLocal: false, isDefinition: true, align: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, size: 2496, align: 64, elements: !1172)
!1172 = !{!1136, !1137, !1138, !1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !84, size: 64, align: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1175, size: 2304, align: 64, offset: 192)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, size: 2304, align: 64, elements: !1176)
!1176 = !{!1145, !1177}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1178, size: 2240, align: 64, offset: 64)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 2240, align: 64, elements: !1179)
!1179 = !{!1180}
!1180 = !DISubrange(count: 35, lowerBound: 0)
!1181 = !DIGlobalVariableExpression(var: !1182, expr: !DIExpression())
!1182 = distinct !DIGlobalVariable(name: "type struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !78, file: !78, line: 1, type: !1183, isLocal: false, isDefinition: true, align: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1184)
!1184 = !{!81, !89, !83, !96, !97, !99, !1185}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !1186, size: 384, align: 64, offset: 256)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 384, align: 64, elements: !47)
!1187 = !DIGlobalVariableExpression(var: !1188, expr: !DIExpression())
!1188 = distinct !DIGlobalVariable(name: "type internal/reflectlite.visit", scope: !78, file: !78, line: 1, type: !1189, isLocal: false, isDefinition: true, align: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1190)
!1190 = !{!81, !89, !83, !169, !170, !1191}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1192, size: 144, align: 8, offset: 256)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 144, align: 8, elements: !445)
!1193 = !DIGlobalVariableExpression(var: !1194, expr: !DIExpression())
!1194 = distinct !DIGlobalVariable(name: "internal/reflectlite.errSyntax", linkageName: "internal/reflectlite.errSyntax", scope: !111, file: !111, line: 12, type: !1195, isLocal: false, isDefinition: true, align: 8)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.badSyntax", baseType: !341)
!1196 = !DIGlobalVariableExpression(var: !1197, expr: !DIExpression())
!1197 = distinct !DIGlobalVariable(name: "reflect/types.signature:Error:func:{}{basic:string}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1198 = !DIGlobalVariableExpression(var: !1199, expr: !DIExpression())
!1199 = distinct !DIGlobalVariable(scope: null, file: !111, line: 1, type: !308, isLocal: true, isDefinition: true)
!1200 = !DIGlobalVariableExpression(var: !1201, expr: !DIExpression())
!1201 = distinct !DIGlobalVariable(scope: null, file: !111, line: 1, type: !53, isLocal: true, isDefinition: true)
!1202 = !DIGlobalVariableExpression(var: !1203, expr: !DIExpression())
!1203 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.badSyntax", scope: !78, file: !78, line: 1, type: !1204, isLocal: false, isDefinition: true, align: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !1205)
!1205 = !{!1136, !1137, !1138, !1173, !1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1207, size: 128, align: 64, offset: 192)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !1208)
!1208 = !{!1145, !1209}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1210, size: 64, align: 64, offset: 64)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 64, align: 64, elements: !5)
!1211 = !DIGlobalVariableExpression(var: !1212, expr: !DIExpression())
!1212 = distinct !DIGlobalVariable(name: "type internal/reflectlite.badSyntax", scope: !78, file: !78, line: 1, type: !1213, isLocal: false, isDefinition: true, align: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1214)
!1214 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1207, size: 128, align: 64, offset: 320)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !253, size: 176, align: 8, offset: 448)
!1217 = !DIGlobalVariableExpression(var: !1218, expr: !DIExpression())
!1218 = distinct !DIGlobalVariable(scope: null, file: !1219, line: 16, type: !71, isLocal: true, isDefinition: true)
!1219 = !DIFile(filename: "swapper.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1220 = !DIGlobalVariableExpression(var: !1221, expr: !DIExpression())
!1221 = distinct !DIGlobalVariable(name: "type *string", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1222 = !DIGlobalVariableExpression(var: !1223, expr: !DIExpression())
!1223 = distinct !DIGlobalVariable(name: "type string", scope: !78, file: !78, line: 1, type: !79, isLocal: false, isDefinition: true, align: 64)
!1224 = !DIGlobalVariableExpression(var: !1225, expr: !DIExpression())
!1225 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !701, isLocal: true, isDefinition: true)
!1226 = !DIGlobalVariableExpression(var: !1227, expr: !DIExpression())
!1227 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !203, isLocal: true, isDefinition: true)
!1228 = !DIGlobalVariableExpression(var: !1229, expr: !DIExpression())
!1229 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.Kind", scope: !78, file: !78, line: 1, type: !1204, isLocal: false, isDefinition: true, align: 64)
!1230 = !DIGlobalVariableExpression(var: !1231, expr: !DIExpression())
!1231 = distinct !DIGlobalVariable(name: "type internal/reflectlite.Kind", scope: !78, file: !78, line: 1, type: !1232, isLocal: false, isDefinition: true, align: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1233)
!1233 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1215, !1234}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1235, size: 136, align: 8, offset: 448)
!1235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 136, align: 8, elements: !318)
!1236 = !DIGlobalVariableExpression(var: !1237, expr: !DIExpression())
!1237 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.ValueError", scope: !78, file: !78, line: 1, type: !1204, isLocal: false, isDefinition: true, align: 64)
!1238 = !DIGlobalVariableExpression(var: !1239, expr: !DIExpression())
!1239 = distinct !DIGlobalVariable(scope: null, file: !1219, line: 1, type: !303, isLocal: true, isDefinition: true)
!1240 = !DIGlobalVariableExpression(var: !1241, expr: !DIExpression())
!1241 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1242, isLocal: true, isDefinition: true)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, align: 8, elements: !1243)
!1243 = !{!1244}
!1244 = !DISubrange(count: 44, lowerBound: 0)
!1245 = !DIGlobalVariableExpression(var: !1246, expr: !DIExpression())
!1246 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1247, isLocal: true, isDefinition: true)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, align: 8, elements: !1248)
!1248 = !{!1249}
!1249 = !DISubrange(count: 40, lowerBound: 0)
!1250 = !DIGlobalVariableExpression(var: !1251, expr: !DIExpression())
!1251 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1252, isLocal: true, isDefinition: true)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, align: 8, elements: !1253)
!1253 = !{!1254}
!1254 = !DISubrange(count: 36, lowerBound: 0)
!1255 = !DIGlobalVariableExpression(var: !1256, expr: !DIExpression())
!1256 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1257, isLocal: true, isDefinition: true)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, align: 8, elements: !1258)
!1258 = !{!1259}
!1259 = !DISubrange(count: 38, lowerBound: 0)
!1260 = !DIGlobalVariableExpression(var: !1261, expr: !DIExpression())
!1261 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !694, isLocal: true, isDefinition: true)
!1262 = !DIGlobalVariableExpression(var: !1263, expr: !DIExpression())
!1263 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.TypeError", scope: !78, file: !78, line: 1, type: !1204, isLocal: false, isDefinition: true, align: 64)
!1264 = !DIGlobalVariableExpression(var: !1265, expr: !DIExpression())
!1265 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1059, type: !132, isLocal: true, isDefinition: true)
!1266 = !DIGlobalVariableExpression(var: !1267, expr: !DIExpression())
!1267 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !981, isLocal: true, isDefinition: true)
!1268 = !DIGlobalVariableExpression(var: !1269, expr: !DIExpression())
!1269 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !317, isLocal: true, isDefinition: true)
!1270 = !DIGlobalVariableExpression(var: !1271, expr: !DIExpression())
!1271 = distinct !DIGlobalVariable(scope: null, file: !27, line: 965, type: !71, isLocal: true, isDefinition: true)
!1272 = !DIGlobalVariableExpression(var: !1273, expr: !DIExpression())
!1273 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !508, isLocal: true, isDefinition: true)
!1274 = !DIGlobalVariableExpression(var: !1275, expr: !DIExpression())
!1275 = distinct !DIGlobalVariable(scope: null, file: !27, line: 356, type: !64, isLocal: true, isDefinition: true)
!1276 = !DIGlobalVariableExpression(var: !1277, expr: !DIExpression())
!1277 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !694, isLocal: true, isDefinition: true)
!1278 = !DIGlobalVariableExpression(var: !1279, expr: !DIExpression())
!1279 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !694, isLocal: true, isDefinition: true)
!1280 = !DIGlobalVariableExpression(var: !1281, expr: !DIExpression())
!1281 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !694, isLocal: true, isDefinition: true)
!1282 = !DIGlobalVariableExpression(var: !1283, expr: !DIExpression())
!1283 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !303, isLocal: true, isDefinition: true)
!1284 = !DIGlobalVariableExpression(var: !1285, expr: !DIExpression())
!1285 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !308, isLocal: true, isDefinition: true)
!1286 = !DIGlobalVariableExpression(var: !1287, expr: !DIExpression())
!1287 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1288, isLocal: true, isDefinition: true)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, align: 8, elements: !1289)
!1289 = !{!1290}
!1290 = !DISubrange(count: 31, lowerBound: 0)
!1291 = !DIGlobalVariableExpression(var: !1292, expr: !DIExpression())
!1292 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1012, isLocal: true, isDefinition: true)
!1293 = !DIGlobalVariableExpression(var: !1294, expr: !DIExpression())
!1294 = distinct !DIGlobalVariable(scope: null, file: !316, line: 441, type: !28, isLocal: true, isDefinition: true)
!1295 = !DIGlobalVariableExpression(var: !1296, expr: !DIExpression())
!1296 = distinct !DIGlobalVariable(scope: null, file: !316, line: 650, type: !53, isLocal: true, isDefinition: true)
!1297 = !DIGlobalVariableExpression(var: !1298, expr: !DIExpression())
!1298 = distinct !DIGlobalVariable(scope: null, file: !316, line: 658, type: !53, isLocal: true, isDefinition: true)
!1299 = !DIGlobalVariableExpression(var: !1300, expr: !DIExpression())
!1300 = distinct !DIGlobalVariable(scope: null, file: !316, line: 667, type: !53, isLocal: true, isDefinition: true)
!1301 = !DIGlobalVariableExpression(var: !1302, expr: !DIExpression())
!1302 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !451, isLocal: true, isDefinition: true)
!1303 = !DIGlobalVariableExpression(var: !1304, expr: !DIExpression())
!1304 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1002, isLocal: true, isDefinition: true)
!1305 = !DIGlobalVariableExpression(var: !1306, expr: !DIExpression())
!1306 = distinct !DIGlobalVariable(scope: null, file: !316, line: 824, type: !46, isLocal: true, isDefinition: true)
!1307 = !DIGlobalVariableExpression(var: !1308, expr: !DIExpression())
!1308 = distinct !DIGlobalVariable(scope: null, file: !316, line: 843, type: !53, isLocal: true, isDefinition: true)
!1309 = !DIGlobalVariableExpression(var: !1310, expr: !DIExpression())
!1310 = distinct !DIGlobalVariable(scope: null, file: !316, line: 630, type: !71, isLocal: true, isDefinition: true)
!1311 = !DIGlobalVariableExpression(var: !1312, expr: !DIExpression())
!1312 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1425, type: !451, isLocal: true, isDefinition: true)
!1313 = !DIGlobalVariableExpression(var: !1314, expr: !DIExpression())
!1314 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1425, type: !1315, isLocal: true, isDefinition: true)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, align: 8, elements: !1316)
!1316 = !{!1317}
!1317 = !DISubrange(count: 29, lowerBound: 0)
!1318 = !DIGlobalVariableExpression(var: !1319, expr: !DIExpression())
!1319 = distinct !DIGlobalVariable(scope: null, file: !316, line: 875, type: !28, isLocal: true, isDefinition: true)
!1320 = !DIGlobalVariableExpression(var: !1321, expr: !DIExpression())
!1321 = distinct !DIGlobalVariable(scope: null, file: !316, line: 407, type: !1252, isLocal: true, isDefinition: true)
!1322 = !DIGlobalVariableExpression(var: !1323, expr: !DIExpression())
!1323 = distinct !DIGlobalVariable(scope: null, file: !316, line: 407, type: !1324, isLocal: true, isDefinition: true)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, align: 8, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 19, lowerBound: 0)
!1327 = !DIGlobalVariableExpression(var: !1328, expr: !DIExpression())
!1328 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !303, isLocal: true, isDefinition: true)
!1329 = !DIGlobalVariableExpression(var: !1330, expr: !DIExpression())
!1330 = distinct !DIGlobalVariable(scope: null, file: !316, line: 882, type: !53, isLocal: true, isDefinition: true)
!1331 = !DIGlobalVariableExpression(var: !1332, expr: !DIExpression())
!1332 = distinct !DIGlobalVariable(scope: null, file: !316, line: 2067, type: !296, isLocal: true, isDefinition: true)
!1333 = !DIGlobalVariableExpression(var: !1334, expr: !DIExpression())
!1334 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1007, isLocal: true, isDefinition: true)
!1335 = !DIGlobalVariableExpression(var: !1336, expr: !DIExpression())
!1336 = distinct !DIGlobalVariable(scope: null, file: !316, line: 2085, type: !132, isLocal: true, isDefinition: true)
!1337 = !DIGlobalVariableExpression(var: !1338, expr: !DIExpression())
!1338 = distinct !DIGlobalVariable(scope: null, file: !316, line: 2090, type: !1040, isLocal: true, isDefinition: true)
!1339 = !DIGlobalVariableExpression(var: !1340, expr: !DIExpression())
!1340 = distinct !DIGlobalVariable(scope: null, file: !316, line: 2101, type: !1040, isLocal: true, isDefinition: true)
!1341 = !DIGlobalVariableExpression(var: !1342, expr: !DIExpression())
!1342 = distinct !DIGlobalVariable(scope: null, file: !316, line: 598, type: !53, isLocal: true, isDefinition: true)
!1343 = !DIGlobalVariableExpression(var: !1344, expr: !DIExpression())
!1344 = distinct !DIGlobalVariable(scope: null, file: !316, line: 573, type: !53, isLocal: true, isDefinition: true)
!1345 = !DIGlobalVariableExpression(var: !1346, expr: !DIExpression())
!1346 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1315, isLocal: true, isDefinition: true)
!1347 = !DIGlobalVariableExpression(var: !1348, expr: !DIExpression())
!1348 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1957, type: !28, isLocal: true, isDefinition: true)
!1349 = !DIGlobalVariableExpression(var: !1350, expr: !DIExpression())
!1350 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !303, isLocal: true, isDefinition: true)
!1351 = !DIGlobalVariableExpression(var: !1352, expr: !DIExpression())
!1352 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1353, isLocal: true, isDefinition: true)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, align: 8, elements: !1354)
!1354 = !{!1355}
!1355 = !DISubrange(count: 34, lowerBound: 0)
!1356 = !DIGlobalVariableExpression(var: !1357, expr: !DIExpression())
!1357 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1041, type: !53, isLocal: true, isDefinition: true)
!1358 = !DIGlobalVariableExpression(var: !1359, expr: !DIExpression())
!1359 = distinct !DIGlobalVariable(scope: null, file: !316, line: 488, type: !46, isLocal: true, isDefinition: true)
!1360 = !DIGlobalVariableExpression(var: !1361, expr: !DIExpression())
!1361 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !451, isLocal: true, isDefinition: true)
!1362 = !DIGlobalVariableExpression(var: !1363, expr: !DIExpression())
!1363 = distinct !DIGlobalVariable(scope: null, file: !316, line: 247, type: !53, isLocal: true, isDefinition: true)
!1364 = !DIGlobalVariableExpression(var: !1365, expr: !DIExpression())
!1365 = distinct !DIGlobalVariable(scope: null, file: !316, line: 201, type: !3, isLocal: true, isDefinition: true)
!1366 = !DIGlobalVariableExpression(var: !1367, expr: !DIExpression())
!1367 = distinct !DIGlobalVariable(scope: null, file: !316, line: 209, type: !388, isLocal: true, isDefinition: true)
!1368 = !DIGlobalVariableExpression(var: !1369, expr: !DIExpression())
!1369 = distinct !DIGlobalVariable(scope: null, file: !316, line: 806, type: !46, isLocal: true, isDefinition: true)
!1370 = !DIGlobalVariableExpression(var: !1371, expr: !DIExpression())
!1371 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1117, type: !64, isLocal: true, isDefinition: true)
!1372 = !DIGlobalVariableExpression(var: !1373, expr: !DIExpression())
!1373 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1374, isLocal: true, isDefinition: true)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, align: 8, elements: !1375)
!1375 = !{!1376}
!1376 = !DISubrange(count: 50, lowerBound: 0)
!1377 = !DIGlobalVariableExpression(var: !1378, expr: !DIExpression())
!1378 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1074, type: !71, isLocal: true, isDefinition: true)
!1379 = !DIGlobalVariableExpression(var: !1380, expr: !DIExpression())
!1380 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1381, isLocal: true, isDefinition: true)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, align: 8, elements: !1382)
!1382 = !{!1383}
!1383 = !DISubrange(count: 39, lowerBound: 0)
!1384 = !DIGlobalVariableExpression(var: !1385, expr: !DIExpression())
!1385 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1386, isLocal: true, isDefinition: true)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, align: 8, elements: !1387)
!1387 = !{!1388}
!1388 = !DISubrange(count: 45, lowerBound: 0)
!1389 = !DIGlobalVariableExpression(var: !1390, expr: !DIExpression())
!1390 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1047, type: !441, isLocal: true, isDefinition: true)
!1391 = !DIGlobalVariableExpression(var: !1392, expr: !DIExpression())
!1392 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1062, type: !508, isLocal: true, isDefinition: true)
!1393 = !DIGlobalVariableExpression(var: !1394, expr: !DIExpression())
!1394 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1398, type: !701, isLocal: true, isDefinition: true)
!1395 = !DIGlobalVariableExpression(var: !1396, expr: !DIExpression())
!1396 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1411, type: !1397, isLocal: true, isDefinition: true)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, align: 8, elements: !1398)
!1398 = !{!1399}
!1399 = !DISubrange(count: 26, lowerBound: 0)
!1400 = !DIGlobalVariableExpression(var: !1401, expr: !DIExpression())
!1401 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !451, isLocal: true, isDefinition: true)
!1402 = !DIGlobalVariableExpression(var: !1403, expr: !DIExpression())
!1403 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1237, type: !303, isLocal: true, isDefinition: true)
!1404 = !DIGlobalVariableExpression(var: !1405, expr: !DIExpression())
!1405 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1237, type: !1152, isLocal: true, isDefinition: true)
!1406 = !DIGlobalVariableExpression(var: !1407, expr: !DIExpression())
!1407 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1275, type: !71, isLocal: true, isDefinition: true)
!1408 = !DIGlobalVariableExpression(var: !1409, expr: !DIExpression())
!1409 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1410, isLocal: true, isDefinition: true)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, align: 8, elements: !1411)
!1411 = !{!1412}
!1412 = !DISubrange(count: 43, lowerBound: 0)
!1413 = !DIGlobalVariableExpression(var: !1414, expr: !DIExpression())
!1414 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1381, isLocal: true, isDefinition: true)
!1415 = !DIGlobalVariableExpression(var: !1416, expr: !DIExpression())
!1416 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1341, type: !223, isLocal: true, isDefinition: true)
!1417 = !DIGlobalVariableExpression(var: !1418, expr: !DIExpression())
!1418 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1328, type: !64, isLocal: true, isDefinition: true)
!1419 = !DIGlobalVariableExpression(var: !1420, expr: !DIExpression())
!1420 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1294, type: !203, isLocal: true, isDefinition: true)
!1421 = !DIGlobalVariableExpression(var: !1422, expr: !DIExpression())
!1422 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1373, type: !388, isLocal: true, isDefinition: true)
!1423 = !DIGlobalVariableExpression(var: !1424, expr: !DIExpression())
!1424 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1425, isLocal: true, isDefinition: true)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, align: 8, elements: !1426)
!1426 = !{!1427}
!1427 = !DISubrange(count: 47, lowerBound: 0)
!1428 = !DIGlobalVariableExpression(var: !1429, expr: !DIExpression())
!1429 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1987, type: !1040, isLocal: true, isDefinition: true)
!1430 = !DIGlobalVariableExpression(var: !1431, expr: !DIExpression())
!1431 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1432, isLocal: true, isDefinition: true)
!1432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, align: 8, elements: !1433)
!1433 = !{!1434}
!1434 = !DISubrange(count: 55, lowerBound: 0)
!1435 = !DIGlobalVariableExpression(var: !1436, expr: !DIExpression())
!1436 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !981, isLocal: true, isDefinition: true)
!1437 = !DIGlobalVariableExpression(var: !1438, expr: !DIExpression())
!1438 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1352, type: !218, isLocal: true, isDefinition: true)
!1439 = !DIGlobalVariableExpression(var: !1440, expr: !DIExpression())
!1440 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1315, type: !71, isLocal: true, isDefinition: true)
!1441 = !DIGlobalVariableExpression(var: !1442, expr: !DIExpression())
!1442 = distinct !DIGlobalVariable(scope: null, file: !316, line: 734, type: !53, isLocal: true, isDefinition: true)
!1443 = !DIGlobalVariableExpression(var: !1444, expr: !DIExpression())
!1444 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1381, isLocal: true, isDefinition: true)
!1445 = !DIGlobalVariableExpression(var: !1446, expr: !DIExpression())
!1446 = distinct !DIGlobalVariable(scope: null, file: !316, line: 642, type: !3, isLocal: true, isDefinition: true)
!1447 = !DIGlobalVariableExpression(var: !1448, expr: !DIExpression())
!1448 = distinct !DIGlobalVariable(scope: null, file: !316, line: 642, type: !71, isLocal: true, isDefinition: true)
!1449 = !DIGlobalVariableExpression(var: !1450, expr: !DIExpression())
!1450 = distinct !DIGlobalVariable(scope: null, file: !316, line: 541, type: !28, isLocal: true, isDefinition: true)
!1451 = !DIGlobalVariableExpression(var: !1452, expr: !DIExpression())
!1452 = distinct !DIGlobalVariable(scope: null, file: !316, line: 273, type: !758, isLocal: true, isDefinition: true)
!1453 = !DIGlobalVariableExpression(var: !1454, expr: !DIExpression())
!1454 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !303, isLocal: true, isDefinition: true)
!1455 = !DIGlobalVariableExpression(var: !1456, expr: !DIExpression())
!1456 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !308, isLocal: true, isDefinition: true)
!1457 = !DIGlobalVariableExpression(var: !1458, expr: !DIExpression())
!1458 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1459, isLocal: true, isDefinition: true)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, align: 8, elements: !1460)
!1460 = !{!1461}
!1461 = !DISubrange(count: 46, lowerBound: 0)
!1462 = !DIGlobalVariableExpression(var: !1463, expr: !DIExpression())
!1463 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1218, type: !64, isLocal: true, isDefinition: true)
!1464 = !DIGlobalVariableExpression(var: !1465, expr: !DIExpression())
!1465 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1466, isLocal: true, isDefinition: true)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, align: 8, elements: !1467)
!1467 = !{!1468}
!1468 = !DISubrange(count: 48, lowerBound: 0)
!1469 = !DIGlobalVariableExpression(var: !1470, expr: !DIExpression())
!1470 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1471 = !DIGlobalVariableExpression(var: !1472, expr: !DIExpression())
!1472 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1473 = !DIGlobalVariableExpression(var: !1474, expr: !DIExpression())
!1474 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1315, isLocal: true, isDefinition: true)
!1475 = !DIGlobalVariableExpression(var: !1476, expr: !DIExpression())
!1476 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1315, isLocal: true, isDefinition: true)
!1477 = !DIGlobalVariableExpression(var: !1478, expr: !DIExpression())
!1478 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1479, isLocal: true, isDefinition: true)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, align: 8, elements: !1179)
!1480 = !DIGlobalVariableExpression(var: !1481, expr: !DIExpression())
!1481 = distinct !DIGlobalVariable(name: "internal/reflectlite.zerobuffer", linkageName: "internal/reflectlite.zerobuffer", scope: !316, file: !316, line: 1710, type: !84, isLocal: false, isDefinition: true, align: 64)
!1482 = !DIGlobalVariableExpression(var: !1483, expr: !DIExpression())
!1483 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1716, type: !694, isLocal: true, isDefinition: true)
!1484 = !DIGlobalVariableExpression(var: !1485, expr: !DIExpression())
!1485 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1716, type: !694, isLocal: true, isDefinition: true)
!1486 = !DIGlobalVariableExpression(var: !1487, expr: !DIExpression())
!1487 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1381, isLocal: true, isDefinition: true)
!1488 = !DIGlobalVariableExpression(var: !1489, expr: !DIExpression())
!1489 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1825, type: !1490, isLocal: true, isDefinition: true)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, align: 8, elements: !1491)
!1491 = !{!1492}
!1492 = !DISubrange(count: 21, lowerBound: 0)
!1493 = !DIGlobalVariableExpression(var: !1494, expr: !DIExpression())
!1494 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1825, type: !3, isLocal: true, isDefinition: true)
!1495 = !DIGlobalVariableExpression(var: !1496, expr: !DIExpression())
!1496 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1002, isLocal: true, isDefinition: true)
!1497 = !DIGlobalVariableExpression(var: !1498, expr: !DIExpression())
!1498 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1879, type: !1040, isLocal: true, isDefinition: true)
!1499 = !DIGlobalVariableExpression(var: !1500, expr: !DIExpression())
!1500 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1903, type: !203, isLocal: true, isDefinition: true)
!1501 = !DIGlobalVariableExpression(var: !1502, expr: !DIExpression())
!1502 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1353, isLocal: true, isDefinition: true)
!1503 = !DIGlobalVariableExpression(var: !1504, expr: !DIExpression())
!1504 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1288, isLocal: true, isDefinition: true)
!1505 = !DIGlobalVariableExpression(var: !1506, expr: !DIExpression())
!1506 = distinct !DIGlobalVariable(scope: null, file: !316, line: 2125, type: !71, isLocal: true, isDefinition: true)
!1507 = !DIGlobalVariableExpression(var: !1508, expr: !DIExpression())
!1508 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1410, isLocal: true, isDefinition: true)
!1509 = !DIGlobalVariableExpression(var: !1510, expr: !DIExpression())
!1510 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1511 = !DIGlobalVariableExpression(var: !1512, expr: !DIExpression())
!1512 = distinct !DIGlobalVariable(scope: null, file: !1513, line: 1, type: !508, isLocal: true, isDefinition: true)
!1513 = !DIFile(filename: "visiblefields.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1514 = !DIGlobalVariableExpression(var: !1515, expr: !DIExpression())
!1515 = distinct !DIGlobalVariable(scope: null, file: !1513, line: 1, type: !1247, isLocal: true, isDefinition: true)
!1516 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1517)
!1517 = !{!1518, !1521, !1523, !1525}
!1518 = !DIGlobalVariableExpression(var: !1519, expr: !DIExpression())
!1519 = distinct !DIGlobalVariable(scope: null, file: !1520, line: 1, type: !296, isLocal: true, isDefinition: true)
!1520 = !DIFile(filename: "checkpoint.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!1521 = !DIGlobalVariableExpression(var: !1522, expr: !DIExpression())
!1522 = distinct !DIGlobalVariable(name: "type *string", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1523 = !DIGlobalVariableExpression(var: !1524, expr: !DIExpression())
!1524 = distinct !DIGlobalVariable(name: "type string", scope: !78, file: !78, line: 1, type: !79, isLocal: false, isDefinition: true, align: 64)
!1525 = !DIGlobalVariableExpression(var: !1526, expr: !DIExpression())
!1526 = distinct !DIGlobalVariable(scope: null, file: !1520, line: 1, type: !1002, isLocal: true, isDefinition: true)
!1527 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1528)
!1528 = !{!328, !374, !376, !1529, !1531, !1533, !1539, !1541, !1543, !379, !382, !1545, !386, !391, !393, !1547, !1549, !1551, !395, !397, !399, !405, !1553}
!1529 = !DIGlobalVariableExpression(var: !1530, expr: !DIExpression())
!1530 = distinct !DIGlobalVariable(name: "type *string", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1531 = !DIGlobalVariableExpression(var: !1532, expr: !DIExpression())
!1532 = distinct !DIGlobalVariable(name: "type string", scope: !78, file: !78, line: 1, type: !79, isLocal: false, isDefinition: true, align: 64)
!1533 = !DIGlobalVariableExpression(var: !1534, expr: !DIExpression())
!1534 = distinct !DIGlobalVariable(scope: null, file: !1535, line: 1, type: !1536, isLocal: true, isDefinition: true)
!1535 = !DIFile(filename: "queue.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!1536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, align: 8, elements: !1537)
!1537 = !{!1538}
!1538 = !DISubrange(count: 62, lowerBound: 0)
!1539 = !DIGlobalVariableExpression(var: !1540, expr: !DIExpression())
!1540 = distinct !DIGlobalVariable(scope: null, file: !1535, line: 1, type: !1536, isLocal: true, isDefinition: true)
!1541 = !DIGlobalVariableExpression(var: !1542, expr: !DIExpression())
!1542 = distinct !DIGlobalVariable(scope: null, file: !330, line: 89, type: !296, isLocal: true, isDefinition: true)
!1543 = !DIGlobalVariableExpression(var: !1544, expr: !DIExpression())
!1544 = distinct !DIGlobalVariable(name: "internal/task.goroutineID", linkageName: "internal/task.goroutineID", scope: !330, file: !330, line: 38, type: !43, isLocal: false, isDefinition: true, align: 64)
!1545 = !DIGlobalVariableExpression(var: !1546, expr: !DIExpression())
!1546 = distinct !DIGlobalVariable(scope: null, file: !330, line: 49, type: !431, isLocal: true, isDefinition: true)
!1547 = !DIGlobalVariableExpression(var: !1548, expr: !DIExpression())
!1548 = distinct !DIGlobalVariable(scope: null, file: !330, line: 106, type: !296, isLocal: true, isDefinition: true)
!1549 = !DIGlobalVariableExpression(var: !1550, expr: !DIExpression())
!1550 = distinct !DIGlobalVariable(scope: null, file: !330, line: 106, type: !28, isLocal: true, isDefinition: true)
!1551 = !DIGlobalVariableExpression(var: !1552, expr: !DIExpression())
!1552 = distinct !DIGlobalVariable(scope: null, file: !330, line: 116, type: !438, isLocal: true, isDefinition: true)
!1553 = !DIGlobalVariableExpression(var: !1554, expr: !DIExpression())
!1554 = distinct !DIGlobalVariable(name: "internal/task.stackScanLock", linkageName: "internal/task.stackScanLock", scope: !330, file: !330, line: 263, type: !384, isLocal: false, isDefinition: true, align: 32)
!1555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1556 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1557)
!1557 = !{!407, !410, !1558, !412, !1561, !1564, !1566, !1568, !1570, !1572, !1575, !1577, !1579, !1582, !1585, !419, !422, !1588, !424, !1590, !1607, !1609, !1612, !1615, !426, !429, !434, !436, !1617, !439, !1619, !442, !447, !1621, !449, !1623, !454, !1625, !1627, !1632, !1635, !1637, !1639, !456, !459, !461, !463, !465, !467, !469, !471, !1641, !1643, !473, !475, !477, !1645, !1647, !479, !481, !483, !1649, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !1655, !511, !1657, !1659, !1661, !1663, !1681, !1683, !1685, !1705, !1707, !1709, !1711, !1713, !1715, !1717, !1719, !513, !1721, !1723, !1726, !1728}
!1558 = !DIGlobalVariableExpression(var: !1559, expr: !DIExpression())
!1559 = distinct !DIGlobalVariable(name: "runtime.inf", linkageName: "runtime.inf", scope: !1560, file: !1560, line: 9, type: !795, isLocal: false, isDefinition: true, align: 64)
!1560 = !DIFile(filename: "float.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1561 = !DIGlobalVariableExpression(var: !1562, expr: !DIExpression())
!1562 = distinct !DIGlobalVariable(scope: null, file: !1563, line: 210, type: !438, isLocal: true, isDefinition: true)
!1563 = !DIFile(filename: "chan.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1564 = !DIGlobalVariableExpression(var: !1565, expr: !DIExpression())
!1565 = distinct !DIGlobalVariable(scope: null, file: !1563, line: 267, type: !438, isLocal: true, isDefinition: true)
!1566 = !DIGlobalVariableExpression(var: !1567, expr: !DIExpression())
!1567 = distinct !DIGlobalVariable(scope: null, file: !1563, line: 348, type: !388, isLocal: true, isDefinition: true)
!1568 = !DIGlobalVariableExpression(var: !1569, expr: !DIExpression())
!1569 = distinct !DIGlobalVariable(scope: null, file: !1563, line: 358, type: !441, isLocal: true, isDefinition: true)
!1570 = !DIGlobalVariableExpression(var: !1571, expr: !DIExpression())
!1571 = distinct !DIGlobalVariable(name: "runtime.chanSelectLock", linkageName: "runtime.chanSelectLock", scope: !1563, file: !1563, line: 402, type: !384, isLocal: false, isDefinition: true, align: 32)
!1572 = !DIGlobalVariableExpression(var: !1573, expr: !DIExpression())
!1573 = distinct !DIGlobalVariable(scope: null, file: !1574, line: 1, type: !431, isLocal: true, isDefinition: true)
!1574 = !DIFile(filename: "debug.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1575 = !DIGlobalVariableExpression(var: !1576, expr: !DIExpression())
!1576 = distinct !DIGlobalVariable(name: "type *string", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1577 = !DIGlobalVariableExpression(var: !1578, expr: !DIExpression())
!1578 = distinct !DIGlobalVariable(name: "type string", scope: !78, file: !78, line: 1, type: !79, isLocal: false, isDefinition: true, align: 64)
!1579 = !DIGlobalVariableExpression(var: !1580, expr: !DIExpression())
!1580 = distinct !DIGlobalVariable(scope: null, file: !1581, line: 13, type: !71, isLocal: true, isDefinition: true)
!1581 = !DIFile(filename: "env.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1582 = !DIGlobalVariableExpression(var: !1583, expr: !DIExpression())
!1583 = distinct !DIGlobalVariable(name: "runtime.godebugUpdate", linkageName: "runtime.godebugUpdate", scope: !1584, file: !1584, line: 142, type: !655, isLocal: false, isDefinition: true, align: 64)
!1584 = !DIFile(filename: "runtime.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1585 = !DIGlobalVariableExpression(var: !1586, expr: !DIExpression())
!1586 = distinct !DIGlobalVariable(name: "runtime.buildVersion", linkageName: "runtime.buildVersion", scope: !1587, file: !1587, line: 10, type: !38, isLocal: false, isDefinition: true, align: 64)
!1587 = !DIFile(filename: "extern.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1588 = !DIGlobalVariableExpression(var: !1589, expr: !DIExpression())
!1589 = distinct !DIGlobalVariable(scope: null, file: !421, line: 61, type: !1012, isLocal: true, isDefinition: true)
!1590 = !DIGlobalVariableExpression(var: !1591, expr: !DIExpression())
!1591 = distinct !DIGlobalVariable(name: "runtime.gcMemStats", linkageName: "runtime.gcMemStats", scope: !421, file: !421, line: 112, type: !1592, isLocal: false, isDefinition: true, align: 64)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.libgc_prof_stats", baseType: !1593)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, size: 768, align: 64, elements: !1594)
!1594 = !{!1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "heapsize_full", baseType: !43, size: 64, align: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "free_bytes_full", baseType: !43, size: 64, align: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "unmapped_bytes", baseType: !43, size: 64, align: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_allocd_since_gc", baseType: !43, size: 64, align: 64, offset: 192)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "allocd_bytes_before_gc", baseType: !43, size: 64, align: 64, offset: 256)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "non_gc_bytes", baseType: !43, size: 64, align: 64, offset: 320)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "gc_no", baseType: !43, size: 64, align: 64, offset: 384)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "markers_m1", baseType: !43, size: 64, align: 64, offset: 448)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_reclaimed_since_gc", baseType: !43, size: 64, align: 64, offset: 512)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_bytes_before_gc", baseType: !43, size: 64, align: 64, offset: 576)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "expl_freed_bytes_since_gc", baseType: !43, size: 64, align: 64, offset: 640)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "obtained_from_os_bytes", baseType: !43, size: 64, align: 64, offset: 704)
!1607 = !DIGlobalVariableExpression(var: !1608, expr: !DIExpression())
!1608 = distinct !DIGlobalVariable(scope: null, file: !421, line: 135, type: !1353, isLocal: true, isDefinition: true)
!1609 = !DIGlobalVariableExpression(var: !1610, expr: !DIExpression())
!1610 = distinct !DIGlobalVariable(scope: null, file: !1611, line: 616, type: !1152, isLocal: true, isDefinition: true)
!1611 = !DIFile(filename: "hashmap.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1612 = !DIGlobalVariableExpression(var: !1613, expr: !DIExpression())
!1613 = distinct !DIGlobalVariable(scope: null, file: !1614, line: 80, type: !1152, isLocal: true, isDefinition: true)
!1614 = !DIFile(filename: "interface.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1615 = !DIGlobalVariableExpression(var: !1616, expr: !DIExpression())
!1616 = distinct !DIGlobalVariable(scope: null, file: !1614, line: 89, type: !444, isLocal: true, isDefinition: true)
!1617 = !DIGlobalVariableExpression(var: !1618, expr: !DIExpression())
!1618 = distinct !DIGlobalVariable(scope: null, file: !428, line: 122, type: !444, isLocal: true, isDefinition: true)
!1619 = !DIGlobalVariableExpression(var: !1620, expr: !DIExpression())
!1620 = distinct !DIGlobalVariable(scope: null, file: !428, line: 189, type: !308, isLocal: true, isDefinition: true)
!1621 = !DIGlobalVariableExpression(var: !1622, expr: !DIExpression())
!1622 = distinct !DIGlobalVariable(scope: null, file: !428, line: 205, type: !431, isLocal: true, isDefinition: true)
!1623 = !DIGlobalVariableExpression(var: !1624, expr: !DIExpression())
!1624 = distinct !DIGlobalVariable(scope: null, file: !428, line: 217, type: !438, isLocal: true, isDefinition: true)
!1625 = !DIGlobalVariableExpression(var: !1626, expr: !DIExpression())
!1626 = distinct !DIGlobalVariable(scope: null, file: !428, line: 227, type: !112, isLocal: true, isDefinition: true)
!1627 = !DIGlobalVariableExpression(var: !1628, expr: !DIExpression())
!1628 = distinct !DIGlobalVariable(scope: null, file: !428, line: 231, type: !1629, isLocal: true, isDefinition: true)
!1629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, align: 8, elements: !1630)
!1630 = !{!1631}
!1631 = !DISubrange(count: 52, lowerBound: 0)
!1632 = !DIGlobalVariableExpression(var: !1633, expr: !DIExpression())
!1633 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !1152, isLocal: true, isDefinition: true)
!1634 = !DIFile(filename: "poll.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1635 = !DIGlobalVariableExpression(var: !1636, expr: !DIExpression())
!1636 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !438, isLocal: true, isDefinition: true)
!1637 = !DIGlobalVariableExpression(var: !1638, expr: !DIExpression())
!1638 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !441, isLocal: true, isDefinition: true)
!1639 = !DIGlobalVariableExpression(var: !1640, expr: !DIExpression())
!1640 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !701, isLocal: true, isDefinition: true)
!1641 = !DIGlobalVariableExpression(var: !1642, expr: !DIExpression())
!1642 = distinct !DIGlobalVariable(scope: null, file: !458, line: 355, type: !28, isLocal: true, isDefinition: true)
!1643 = !DIGlobalVariableExpression(var: !1644, expr: !DIExpression())
!1644 = distinct !DIGlobalVariable(scope: null, file: !458, line: 357, type: !46, isLocal: true, isDefinition: true)
!1645 = !DIGlobalVariableExpression(var: !1646, expr: !DIExpression())
!1646 = distinct !DIGlobalVariable(scope: null, file: !1584, line: 36, type: !758, isLocal: true, isDefinition: true)
!1647 = !DIGlobalVariableExpression(var: !1648, expr: !DIExpression())
!1648 = distinct !DIGlobalVariable(scope: null, file: !1584, line: 97, type: !308, isLocal: true, isDefinition: true)
!1649 = !DIGlobalVariableExpression(var: !1650, expr: !DIExpression())
!1650 = distinct !DIGlobalVariable(name: "runtime.args", linkageName: "runtime.args", scope: !414, file: !414, line: 107, type: !1651, isLocal: false, isDefinition: true, align: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]string", size: 192, align: 64, elements: !1652)
!1652 = !{!1653, !42, !673}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !1654, size: 64, align: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64, dwarfAddressSpace: 0)
!1655 = !DIGlobalVariableExpression(var: !1656, expr: !DIExpression())
!1656 = distinct !DIGlobalVariable(name: "runtime.hasSignals", linkageName: "runtime.hasSignals", scope: !414, file: !414, line: 345, type: !371, isLocal: false, isDefinition: true, align: 8)
!1657 = !DIGlobalVariableExpression(var: !1658, expr: !DIExpression())
!1658 = distinct !DIGlobalVariable(scope: null, file: !414, line: 365, type: !701, isLocal: true, isDefinition: true)
!1659 = !DIGlobalVariableExpression(var: !1660, expr: !DIExpression())
!1660 = distinct !DIGlobalVariable(scope: null, file: !414, line: 382, type: !701, isLocal: true, isDefinition: true)
!1661 = !DIGlobalVariableExpression(var: !1662, expr: !DIExpression())
!1662 = distinct !DIGlobalVariable(scope: null, file: !414, line: 392, type: !701, isLocal: true, isDefinition: true)
!1663 = !DIGlobalVariableExpression(var: !1664, expr: !DIExpression())
!1664 = distinct !DIGlobalVariable(name: "runtime.signalRecvWaiter", linkageName: "runtime.signalRecvWaiter", scope: !414, file: !414, line: 447, type: !1665, isLocal: false, isDefinition: true, align: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Pointer[internal/task.Task]", baseType: !1666)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !1667)
!1667 = !{!1668, !366, !1680}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !1669, align: 64)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1670, align: 64, elements: !121)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64, align: 64, dwarfAddressSpace: 0)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !1672)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !1673)
!1673 = !{!1674, !336, !337, !339, !1675, !369, !370, !372, !373}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !1670, size: 64, align: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !1676, size: 384, align: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !1677)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !1678)
!1678 = !{!347, !348, !350, !351, !1679, !353}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !1670, size: 64, align: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !84, size: 64, align: 64)
!1681 = !DIGlobalVariableExpression(var: !1682, expr: !DIExpression())
!1682 = distinct !DIGlobalVariable(scope: null, file: !414, line: 458, type: !1288, isLocal: true, isDefinition: true)
!1683 = !DIGlobalVariableExpression(var: !1684, expr: !DIExpression())
!1684 = distinct !DIGlobalVariable(scope: null, file: !414, line: 514, type: !508, isLocal: true, isDefinition: true)
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
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !655, size: 128, align: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "arg", baseType: !1703, size: 128, align: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "any", baseType: !778)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "callback", baseType: !655, size: 128, align: 64, offset: 128)
!1705 = !DIGlobalVariableExpression(var: !1706, expr: !DIExpression())
!1706 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 12, type: !46, isLocal: true, isDefinition: true)
!1707 = !DIGlobalVariableExpression(var: !1708, expr: !DIExpression())
!1708 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 19, type: !46, isLocal: true, isDefinition: true)
!1709 = !DIGlobalVariableExpression(var: !1710, expr: !DIExpression())
!1710 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 26, type: !46, isLocal: true, isDefinition: true)
!1711 = !DIGlobalVariableExpression(var: !1712, expr: !DIExpression())
!1712 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 45, type: !758, isLocal: true, isDefinition: true)
!1713 = !DIGlobalVariableExpression(var: !1714, expr: !DIExpression())
!1714 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 51, type: !388, isLocal: true, isDefinition: true)
!1715 = !DIGlobalVariableExpression(var: !1716, expr: !DIExpression())
!1716 = distinct !DIGlobalVariable(name: "runtime.timerQueueLock", linkageName: "runtime.timerQueueLock", scope: !515, file: !515, line: 16, type: !384, isLocal: false, isDefinition: true, align: 32)
!1717 = !DIGlobalVariableExpression(var: !1718, expr: !DIExpression())
!1718 = distinct !DIGlobalVariable(name: "runtime.timerQueueStarted", linkageName: "runtime.timerQueueStarted", scope: !515, file: !515, line: 17, type: !371, isLocal: false, isDefinition: true, align: 8)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(name: "runtime.timerFutex", linkageName: "runtime.timerFutex", scope: !515, file: !515, line: 18, type: !358, isLocal: false, isDefinition: true, align: 32)
!1721 = !DIGlobalVariableExpression(var: !1722, expr: !DIExpression())
!1722 = distinct !DIGlobalVariable(name: "runtime.atomicsLock", linkageName: "runtime.atomicsLock", scope: !515, file: !515, line: 151, type: !385, isLocal: false, isDefinition: true, align: 32)
!1723 = !DIGlobalVariableExpression(var: !1724, expr: !DIExpression())
!1724 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !313, isLocal: true, isDefinition: true)
!1725 = !DIFile(filename: "sync.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !313, isLocal: true, isDefinition: true)
!1728 = !DIGlobalVariableExpression(var: !1729, expr: !DIExpression())
!1729 = distinct !DIGlobalVariable(scope: null, file: !1730, line: 45, type: !218, isLocal: true, isDefinition: true)
!1730 = !DIFile(filename: "time_go123.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1731 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1732 = !{!"TinyGo version 0.41.1"}
!1733 = !{i32 2, !"Debug Info Version", i32 3}
!1734 = !{i32 7, !"Dwarf Version", i32 4}
!1735 = distinct !DISubprogram(name: "math/bits.Len", linkageName: "math/bits.Len", scope: !770, file: !770, line: 302, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !1739)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!1738}
!1738 = !DIBasicType(name: "uint", size: 64, encoding: DW_ATE_unsigned)
!1739 = !{!1740}
!1740 = !DILocalVariable(name: "x", arg: 1, scope: !1735, file: !770, line: 302, type: !1738)
!1741 = !DILocation(line: 302, column: 6, scope: !1735)
!1742 = distinct !DISubprogram(name: "math.Abs", linkageName: "math.Abs", scope: !1743, file: !1743, line: 13, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !1746)
!1743 = !DIFile(filename: "abs.go", directory: "/usr/local/go/src/math")
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!795}
!1746 = !{!1747}
!1747 = !DILocalVariable(name: "x", arg: 1, scope: !1742, file: !1743, line: 13, type: !795)
!1748 = !DILocation(line: 13, column: 6, scope: !1742)
!1749 = !DILocation(line: 14, column: 37, scope: !1742)
!1750 = !DILocation(line: 14, column: 36, scope: !1742)
!1751 = !DILocation(line: 14, column: 40, scope: !1742)
!1752 = !DILocation(line: 14, column: 24, scope: !1742)
!1753 = !DILocation(line: 14, column: 2, scope: !1742)
!1754 = distinct !DISubprogram(name: "math.Float64bits", linkageName: "math.Float64bits", scope: !1755, file: !1755, line: 35, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !1756)
!1755 = !DIFile(filename: "unsafe.go", directory: "/usr/local/go/src/math")
!1756 = !{!1757}
!1757 = !DILocalVariable(name: "f", arg: 1, scope: !1754, file: !1755, line: 35, type: !795)
!1758 = !DILocation(line: 35, column: 6, scope: !1754)
!1759 = !DILocation(line: 35, column: 18, scope: !1754)
!1760 = !DILocation(line: 35, column: 45, scope: !1754)
!1761 = !DILocation(line: 35, column: 38, scope: !1754)
!1762 = distinct !DISubprogram(name: "math.Float64frombits", linkageName: "math.Float64frombits", scope: !1755, file: !1755, line: 41, type: !1763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !1765)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!338}
!1765 = !{!1766}
!1766 = !DILocalVariable(name: "b", arg: 1, scope: !1762, file: !1755, line: 41, type: !338)
!1767 = !DILocation(line: 41, column: 6, scope: !1762)
!1768 = !DILocation(line: 41, column: 22, scope: !1762)
!1769 = !DILocation(line: 41, column: 49, scope: !1762)
!1770 = !DILocation(line: 41, column: 42, scope: !1762)
!1771 = distinct !DISubprogram(name: "sync/atomic.SwapUint32", linkageName: "sync/atomic.SwapUint32", scope: !1772, file: !1772, line: 77, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1776)
!1772 = !DIFile(filename: "doc.go", directory: "/usr/local/go/src/sync/atomic")
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!1775, !98}
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64, dwarfAddressSpace: 0)
!1776 = !{!1777, !1778}
!1777 = !DILocalVariable(name: "addr", arg: 1, scope: !1771, file: !1772, line: 77, type: !1775)
!1778 = !DILocalVariable(name: "new", arg: 2, scope: !1771, file: !1772, line: 77, type: !98)
!1779 = !DILocation(line: 77, column: 6, scope: !1771)
!1780 = distinct !DISubprogram(name: "sync/atomic.CompareAndSwapUint32", linkageName: "sync/atomic.CompareAndSwapUint32", scope: !1772, file: !1772, line: 99, type: !1781, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1783)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!1775, !98, !98}
!1783 = !{!1784, !1785, !1786}
!1784 = !DILocalVariable(name: "addr", arg: 1, scope: !1780, file: !1772, line: 99, type: !1775)
!1785 = !DILocalVariable(name: "old", arg: 2, scope: !1780, file: !1772, line: 99, type: !98)
!1786 = !DILocalVariable(name: "new", arg: 3, scope: !1780, file: !1772, line: 99, type: !98)
!1787 = !DILocation(line: 99, column: 6, scope: !1780)
!1788 = distinct !DISubprogram(name: "sync/atomic.AddUint32", linkageName: "sync/atomic.AddUint32", scope: !1772, file: !1772, line: 123, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1789)
!1789 = !{!1790, !1791}
!1790 = !DILocalVariable(name: "addr", arg: 1, scope: !1788, file: !1772, line: 123, type: !1775)
!1791 = !DILocalVariable(name: "delta", arg: 2, scope: !1788, file: !1772, line: 123, type: !98)
!1792 = !DILocation(line: 123, column: 6, scope: !1788)
!1793 = distinct !DISubprogram(name: "sync/atomic.LoadUint32", linkageName: "sync/atomic.LoadUint32", scope: !1772, file: !1772, line: 183, type: !1794, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1796)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!1775}
!1796 = !{!1797}
!1797 = !DILocalVariable(name: "addr", arg: 1, scope: !1793, file: !1772, line: 183, type: !1775)
!1798 = !DILocation(line: 183, column: 6, scope: !1793)
!1799 = distinct !DISubprogram(name: "sync/atomic.StoreUint32", linkageName: "sync/atomic.StoreUint32", scope: !1772, file: !1772, line: 205, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1800)
!1800 = !{!1801, !1802}
!1801 = !DILocalVariable(name: "addr", arg: 1, scope: !1799, file: !1772, line: 205, type: !1775)
!1802 = !DILocalVariable(name: "val", arg: 2, scope: !1799, file: !1772, line: 205, type: !98)
!1803 = !DILocation(line: 205, column: 6, scope: !1799)
!1804 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Add", linkageName: "(*sync/atomic.Uint32).Add", scope: !1805, file: !1805, line: 161, type: !1806, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1809)
!1805 = !DIFile(filename: "type.go", directory: "/usr/local/go/src/sync/atomic")
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!1808, !98}
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64, dwarfAddressSpace: 0)
!1809 = !{!1810, !1811}
!1810 = !DILocalVariable(name: "x", arg: 1, scope: !1804, file: !1805, line: 161, type: !1808)
!1811 = !DILocalVariable(name: "delta", arg: 2, scope: !1804, file: !1805, line: 161, type: !98)
!1812 = !DILocation(line: 161, column: 18, scope: !1804)
!1813 = !DILocation(line: 161, column: 69, scope: !1804)
!1814 = !DILocation(line: 161, column: 71, scope: !1804)
!1815 = !DILocation(line: 161, column: 74, scope: !1804)
!1816 = !DILocation(line: 161, column: 67, scope: !1804)
!1817 = !DILocation(line: 161, column: 51, scope: !1804)
!1818 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).CompareAndSwap", linkageName: "(*sync/atomic.Uint32).CompareAndSwap", scope: !1805, file: !1805, line: 156, type: !1819, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1821)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!1808, !98, !98}
!1821 = !{!1822, !1823, !1824}
!1822 = !DILocalVariable(name: "x", arg: 1, scope: !1818, file: !1805, line: 156, type: !1808)
!1823 = !DILocalVariable(name: "old", arg: 2, scope: !1818, file: !1805, line: 156, type: !98)
!1824 = !DILocalVariable(name: "new", arg: 3, scope: !1818, file: !1805, line: 156, type: !98)
!1825 = !DILocation(line: 156, column: 18, scope: !1818)
!1826 = !DILocation(line: 157, column: 31, scope: !1818)
!1827 = !DILocation(line: 157, column: 33, scope: !1818)
!1828 = !DILocation(line: 157, column: 36, scope: !1818)
!1829 = !DILocation(line: 157, column: 41, scope: !1818)
!1830 = !DILocation(line: 157, column: 29, scope: !1818)
!1831 = !DILocation(line: 157, column: 2, scope: !1818)
!1832 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Load", linkageName: "(*sync/atomic.Uint32).Load", scope: !1805, file: !1805, line: 147, type: !1833, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1835)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!1808}
!1835 = !{!1836}
!1836 = !DILocalVariable(name: "x", arg: 1, scope: !1832, file: !1805, line: 147, type: !1808)
!1837 = !DILocation(line: 147, column: 18, scope: !1832)
!1838 = !DILocation(line: 147, column: 53, scope: !1832)
!1839 = !DILocation(line: 147, column: 55, scope: !1832)
!1840 = !DILocation(line: 147, column: 51, scope: !1832)
!1841 = !DILocation(line: 147, column: 34, scope: !1832)
!1842 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Store", linkageName: "(*sync/atomic.Uint32).Store", scope: !1805, file: !1805, line: 150, type: !1806, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1843)
!1843 = !{!1844, !1845}
!1844 = !DILocalVariable(name: "x", arg: 1, scope: !1842, file: !1805, line: 150, type: !1808)
!1845 = !DILocalVariable(name: "val", arg: 2, scope: !1842, file: !1805, line: 150, type: !98)
!1846 = !DILocation(line: 150, column: 18, scope: !1842)
!1847 = !DILocation(line: 150, column: 51, scope: !1842)
!1848 = !DILocation(line: 150, column: 53, scope: !1842)
!1849 = !DILocation(line: 150, column: 56, scope: !1842)
!1850 = !DILocation(line: 150, column: 49, scope: !1842)
!1851 = !DILocation(line: 150, column: 62, scope: !1842)
!1852 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Swap", linkageName: "(*sync/atomic.Uint32).Swap", scope: !1805, file: !1805, line: 153, type: !1806, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1853)
!1853 = !{!1854, !1855}
!1854 = !DILocalVariable(name: "x", arg: 1, scope: !1852, file: !1805, line: 153, type: !1808)
!1855 = !DILocalVariable(name: "new", arg: 2, scope: !1852, file: !1805, line: 153, type: !98)
!1856 = !DILocation(line: 153, column: 18, scope: !1852)
!1857 = !DILocation(line: 153, column: 69, scope: !1852)
!1858 = !DILocation(line: 153, column: 71, scope: !1852)
!1859 = !DILocation(line: 153, column: 74, scope: !1852)
!1860 = !DILocation(line: 153, column: 67, scope: !1852)
!1861 = !DILocation(line: 153, column: 50, scope: !1852)
!1862 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wait", linkageName: "(*internal/futex.Futex).Wait", scope: !1863, file: !1863, line: 25, type: !1864, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !1867)
!1863 = !DIFile(filename: "futex.go", directory: "/usr/local/lib/tinygo/src/internal/futex")
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!1866, !98}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64, dwarfAddressSpace: 0)
!1867 = !{!1868, !1869}
!1868 = !DILocalVariable(name: "f", arg: 1, scope: !1862, file: !1863, line: 25, type: !1866)
!1869 = !DILocalVariable(name: "cmp", arg: 2, scope: !1862, file: !1863, line: 25, type: !98)
!1870 = !DILocation(line: 25, column: 17, scope: !1862)
!1871 = !DILocation(line: 26, column: 46, scope: !1862)
!1872 = !DILocation(line: 26, column: 48, scope: !1862)
!1873 = !DILocation(line: 26, column: 58, scope: !1862)
!1874 = !DILocation(line: 26, column: 19, scope: !1862)
!1875 = !DILocation(line: 44, column: 2, scope: !1862)
!1876 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wake", linkageName: "(*internal/futex.Futex).Wake", scope: !1863, file: !1863, line: 53, type: !1877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !1879)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!1866}
!1879 = !{!1880}
!1880 = !DILocalVariable(name: "f", arg: 1, scope: !1876, file: !1863, line: 53, type: !1866)
!1881 = !DILocation(line: 53, column: 17, scope: !1876)
!1882 = !DILocation(line: 54, column: 46, scope: !1876)
!1883 = !DILocation(line: 54, column: 48, scope: !1876)
!1884 = !DILocation(line: 54, column: 19, scope: !1876)
!1885 = !DILocation(line: 55, column: 2, scope: !1876)
!1886 = distinct !DISubprogram(name: "(*internal/futex.Futex).WakeAll", linkageName: "(*internal/futex.Futex).WakeAll", scope: !1863, file: !1863, line: 58, type: !1877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !1887)
!1887 = !{!1888}
!1888 = !DILocalVariable(name: "f", arg: 1, scope: !1886, file: !1863, line: 58, type: !1866)
!1889 = !DILocation(line: 58, column: 17, scope: !1886)
!1890 = !DILocation(line: 59, column: 50, scope: !1886)
!1891 = !DILocation(line: 59, column: 52, scope: !1886)
!1892 = !DILocation(line: 59, column: 23, scope: !1886)
!1893 = !DILocation(line: 60, column: 2, scope: !1886)
!1894 = distinct !DISubprogram(name: "(internal/gclayout.Layout).AsPtr", linkageName: "(internal/gclayout.Layout).AsPtr", scope: !1895, file: !1895, line: 26, type: !1896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1021, retainedNodes: !1899)
!1895 = !DIFile(filename: "gclayout.go", directory: "/usr/local/lib/tinygo/src/internal/gclayout")
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!1898}
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/gclayout.Layout", baseType: !43)
!1899 = !{!1900}
!1900 = !DILocalVariable(name: "l", arg: 1, scope: !1894, file: !1895, line: 26, type: !1898)
!1901 = !DILocation(line: 26, column: 17, scope: !1894)
!1902 = !DILocation(line: 26, column: 64, scope: !1894)
!1903 = !DILocation(line: 26, column: 63, scope: !1894)
!1904 = !DILocation(line: 26, column: 42, scope: !1894)
!1905 = distinct !DISubprogram(name: "internal/itoa.Itoa", linkageName: "internal/itoa.Itoa", scope: !2, file: !2, line: 10, type: !1906, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !1909)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!1908}
!1908 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!1909 = !{!1910}
!1910 = !DILocalVariable(name: "val", arg: 1, scope: !1905, file: !2, line: 10, type: !1908)
!1911 = !DILocation(line: 10, column: 6, scope: !1905)
!1912 = !DILocation(line: 11, column: 5, scope: !1905)
!1913 = !DILocation(line: 11, column: 9, scope: !1905)
!1914 = !DILocation(line: 0, scope: !1905)
!1915 = !DILocation(line: 12, column: 28, scope: !1905)
!1916 = !DILocation(line: 12, column: 27, scope: !1905)
!1917 = !DILocation(line: 12, column: 21, scope: !1905)
!1918 = !DILocation(line: 12, column: 14, scope: !1905)
!1919 = !DILocation(line: 12, column: 3, scope: !1905)
!1920 = !DILocation(line: 14, column: 20, scope: !1905)
!1921 = !DILocation(line: 14, column: 14, scope: !1905)
!1922 = !DILocation(line: 14, column: 2, scope: !1905)
!1923 = distinct !DISubprogram(name: "internal/itoa.Uitoa", linkageName: "internal/itoa.Uitoa", scope: !2, file: !2, line: 18, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !1924)
!1924 = !{!1925, !1926, !1927}
!1925 = !DILocalVariable(name: "val", arg: 1, scope: !1923, file: !2, line: 18, type: !1738)
!1926 = !DILocalVariable(name: "i", scope: !1923, file: !2, line: 23, type: !1908)
!1927 = !DILocalVariable(name: "q", scope: !1923, file: !2, line: 25, type: !1738)
!1928 = !DILocation(line: 18, column: 6, scope: !1923)
!1929 = !DILocation(line: 19, column: 5, scope: !1923)
!1930 = !DILocation(line: 19, column: 9, scope: !1923)
!1931 = !DILocation(line: 0, scope: !1923)
!1932 = !DILocation(line: 20, column: 3, scope: !1923)
!1933 = !DILocation(line: 22, column: 6, scope: !1923)
!1934 = !DILocation(line: 23, column: 2, scope: !1923)
!1935 = !DILocation(line: 18, column: 12, scope: !1923)
!1936 = !DILocation(line: 24, column: 6, scope: !1923)
!1937 = !DILocation(line: 24, column: 10, scope: !1923)
!1938 = !DILocation(line: 25, column: 8, scope: !1923)
!1939 = !DILocation(line: 25, column: 12, scope: !1923)
!1940 = !DILocation(line: 25, column: 3, scope: !1923)
!1941 = !DILocation(line: 26, column: 7, scope: !1923)
!1942 = !DILocation(line: 26, column: 23, scope: !1923)
!1943 = !DILocation(line: 26, column: 21, scope: !1923)
!1944 = !DILocation(line: 26, column: 29, scope: !1923)
!1945 = !DILocation(line: 26, column: 30, scope: !1923)
!1946 = !DILocation(line: 26, column: 27, scope: !1923)
!1947 = !DILocation(line: 26, column: 16, scope: !1923)
!1948 = !DILocation(line: 26, column: 6, scope: !1923)
!1949 = !DILocation(line: 27, column: 3, scope: !1923)
!1950 = !DILocation(line: 28, column: 9, scope: !1923)
!1951 = !DILocation(line: 28, column: 3, scope: !1923)
!1952 = !DILocation(line: 31, column: 6, scope: !1923)
!1953 = !DILocation(line: 31, column: 22, scope: !1923)
!1954 = !DILocation(line: 31, column: 20, scope: !1923)
!1955 = !DILocation(line: 31, column: 15, scope: !1923)
!1956 = !DILocation(line: 31, column: 5, scope: !1923)
!1957 = !DILocation(line: 32, column: 20, scope: !1923)
!1958 = !DILocation(line: 32, column: 19, scope: !1923)
!1959 = !DILocation(line: 32, column: 15, scope: !1923)
!1960 = !DILocation(line: 32, column: 2, scope: !1923)
!1961 = distinct !DISubprogram(name: "unicode/utf8.DecodeRuneInString", linkageName: "unicode/utf8.DecodeRuneInString", scope: !11, file: !11, line: 219, type: !1962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !1964)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!38}
!1964 = !{!1965, !1966, !1968}
!1965 = !DILocalVariable(name: "s", arg: 1, scope: !1961, file: !11, line: 219, type: !38)
!1966 = !DILocalVariable(name: "r", scope: !1961, file: !11, line: 219, type: !1967)
!1967 = !DIBasicType(name: "rune", size: 32, encoding: DW_ATE_signed)
!1968 = !DILocalVariable(name: "size", scope: !1961, file: !11, line: 219, type: !1908)
!1969 = !DILocation(line: 219, column: 6, scope: !1961)
!1970 = !DILocation(line: 223, column: 5, scope: !1961)
!1971 = !DILocation(line: 223, column: 7, scope: !1961)
!1972 = !DILocation(line: 0, scope: !1961)
!1973 = !DILocation(line: 223, column: 16, scope: !1961)
!1974 = !DILocation(line: 223, column: 17, scope: !1961)
!1975 = !DILocation(line: 223, column: 21, scope: !1961)
!1976 = !DILocation(line: 224, column: 15, scope: !1961)
!1977 = !DILocation(line: 224, column: 16, scope: !1961)
!1978 = !DILocation(line: 224, column: 14, scope: !1961)
!1979 = !DILocation(line: 224, column: 3, scope: !1961)
!1980 = !DILocation(line: 226, column: 36, scope: !1961)
!1981 = !DILocation(line: 226, column: 35, scope: !1961)
!1982 = !DILocation(line: 226, column: 3, scope: !1961)
!1983 = !DILocation(line: 226, column: 6, scope: !1961)
!1984 = !DILocation(line: 228, column: 2, scope: !1961)
!1985 = distinct !DISubprogram(name: "unicode/utf8.decodeRuneInStringSlow", linkageName: "unicode/utf8.decodeRuneInStringSlow", scope: !11, file: !11, line: 231, type: !1962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !1986)
!1986 = !{!1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996}
!1987 = !DILocalVariable(name: "s", arg: 1, scope: !1985, file: !11, line: 231, type: !38)
!1988 = !DILocalVariable(name: "n", scope: !1985, file: !11, line: 232, type: !1908)
!1989 = !DILocalVariable(name: "s0", scope: !1985, file: !11, line: 236, type: !533)
!1990 = !DILocalVariable(name: "x", scope: !1985, file: !11, line: 237, type: !4)
!1991 = !DILocalVariable(name: "mask", scope: !1985, file: !11, line: 242, type: !1967)
!1992 = !DILocalVariable(name: "sz", scope: !1985, file: !11, line: 245, type: !1908)
!1993 = !DILocalVariable(name: "accept", scope: !1985, file: !11, line: 246, type: !18)
!1994 = !DILocalVariable(name: "s1", scope: !1985, file: !11, line: 250, type: !533)
!1995 = !DILocalVariable(name: "s2", scope: !1985, file: !11, line: 257, type: !533)
!1996 = !DILocalVariable(name: "s3", scope: !1985, file: !11, line: 264, type: !533)
!1997 = !DILocation(line: 231, column: 6, scope: !1985)
!1998 = !DILocation(line: 232, column: 11, scope: !1985)
!1999 = !DILocation(line: 232, column: 10, scope: !1985)
!2000 = !DILocation(line: 232, column: 2, scope: !1985)
!2001 = !DILocation(line: 233, column: 5, scope: !1985)
!2002 = !DILocation(line: 233, column: 7, scope: !1985)
!2003 = !DILocation(line: 0, scope: !1985)
!2004 = !DILocation(line: 234, column: 3, scope: !1985)
!2005 = !DILocation(line: 236, column: 8, scope: !1985)
!2006 = !DILocation(line: 236, column: 9, scope: !1985)
!2007 = !DILocation(line: 236, column: 2, scope: !1985)
!2008 = !DILocation(line: 237, column: 13, scope: !1985)
!2009 = !DILocation(line: 237, column: 12, scope: !1985)
!2010 = !DILocation(line: 237, column: 2, scope: !1985)
!2011 = !DILocation(line: 238, column: 5, scope: !1985)
!2012 = !DILocation(line: 238, column: 7, scope: !1985)
!2013 = !DILocation(line: 242, column: 16, scope: !1985)
!2014 = !DILocation(line: 242, column: 15, scope: !1985)
!2015 = !DILocation(line: 242, column: 19, scope: !1985)
!2016 = !DILocation(line: 242, column: 25, scope: !1985)
!2017 = !DILocation(line: 242, column: 3, scope: !1985)
!2018 = !DILocation(line: 243, column: 15, scope: !1985)
!2019 = !DILocation(line: 243, column: 16, scope: !1985)
!2020 = !DILocation(line: 243, column: 14, scope: !1985)
!2021 = !DILocation(line: 243, column: 22, scope: !1985)
!2022 = !DILocation(line: 243, column: 20, scope: !1985)
!2023 = !DILocation(line: 243, column: 39, scope: !1985)
!2024 = !DILocation(line: 243, column: 38, scope: !1985)
!2025 = !DILocation(line: 243, column: 27, scope: !1985)
!2026 = !DILocation(line: 243, column: 3, scope: !1985)
!2027 = !DILocation(line: 245, column: 12, scope: !1985)
!2028 = !DILocation(line: 245, column: 14, scope: !1985)
!2029 = !DILocation(line: 245, column: 11, scope: !1985)
!2030 = !DILocation(line: 245, column: 2, scope: !1985)
!2031 = !DILocation(line: 246, column: 25, scope: !1985)
!2032 = !DILocation(line: 246, column: 26, scope: !1985)
!2033 = !DILocation(line: 246, column: 24, scope: !1985)
!2034 = !DILocation(line: 246, column: 2, scope: !1985)
!2035 = !DILocation(line: 247, column: 5, scope: !1985)
!2036 = !DILocation(line: 247, column: 9, scope: !1985)
!2037 = !DILocation(line: 247, column: 7, scope: !1985)
!2038 = !DILocation(line: 248, column: 3, scope: !1985)
!2039 = !DILocation(line: 250, column: 8, scope: !1985)
!2040 = !DILocation(line: 250, column: 9, scope: !1985)
!2041 = !DILocation(line: 250, column: 2, scope: !1985)
!2042 = !DILocation(line: 251, column: 5, scope: !1985)
!2043 = !DILocation(line: 251, column: 17, scope: !1985)
!2044 = !DILocation(line: 251, column: 8, scope: !1985)
!2045 = !DILocation(line: 252, column: 3, scope: !1985)
!2046 = !DILocation(line: 251, column: 30, scope: !1985)
!2047 = !DILocation(line: 251, column: 35, scope: !1985)
!2048 = !DILocation(line: 251, column: 33, scope: !1985)
!2049 = !DILocation(line: 254, column: 5, scope: !1985)
!2050 = !DILocation(line: 254, column: 8, scope: !1985)
!2051 = !DILocation(line: 255, column: 15, scope: !1985)
!2052 = !DILocation(line: 255, column: 17, scope: !1985)
!2053 = !DILocation(line: 255, column: 14, scope: !1985)
!2054 = !DILocation(line: 255, column: 24, scope: !1985)
!2055 = !DILocation(line: 255, column: 35, scope: !1985)
!2056 = !DILocation(line: 255, column: 37, scope: !1985)
!2057 = !DILocation(line: 255, column: 34, scope: !1985)
!2058 = !DILocation(line: 255, column: 28, scope: !1985)
!2059 = !DILocation(line: 255, column: 3, scope: !1985)
!2060 = !DILocation(line: 257, column: 8, scope: !1985)
!2061 = !DILocation(line: 257, column: 9, scope: !1985)
!2062 = !DILocation(line: 257, column: 2, scope: !1985)
!2063 = !DILocation(line: 258, column: 5, scope: !1985)
!2064 = !DILocation(line: 258, column: 8, scope: !1985)
!2065 = !DILocation(line: 259, column: 3, scope: !1985)
!2066 = !DILocation(line: 258, column: 25, scope: !1985)
!2067 = !DILocation(line: 258, column: 23, scope: !1985)
!2068 = !DILocation(line: 261, column: 5, scope: !1985)
!2069 = !DILocation(line: 261, column: 8, scope: !1985)
!2070 = !DILocation(line: 262, column: 15, scope: !1985)
!2071 = !DILocation(line: 262, column: 17, scope: !1985)
!2072 = !DILocation(line: 262, column: 14, scope: !1985)
!2073 = !DILocation(line: 262, column: 24, scope: !1985)
!2074 = !DILocation(line: 262, column: 36, scope: !1985)
!2075 = !DILocation(line: 262, column: 38, scope: !1985)
!2076 = !DILocation(line: 262, column: 35, scope: !1985)
!2077 = !DILocation(line: 262, column: 45, scope: !1985)
!2078 = !DILocation(line: 262, column: 29, scope: !1985)
!2079 = !DILocation(line: 262, column: 56, scope: !1985)
!2080 = !DILocation(line: 262, column: 58, scope: !1985)
!2081 = !DILocation(line: 262, column: 55, scope: !1985)
!2082 = !DILocation(line: 262, column: 49, scope: !1985)
!2083 = !DILocation(line: 262, column: 3, scope: !1985)
!2084 = !DILocation(line: 264, column: 8, scope: !1985)
!2085 = !DILocation(line: 264, column: 9, scope: !1985)
!2086 = !DILocation(line: 264, column: 2, scope: !1985)
!2087 = !DILocation(line: 265, column: 5, scope: !1985)
!2088 = !DILocation(line: 265, column: 8, scope: !1985)
!2089 = !DILocation(line: 266, column: 3, scope: !1985)
!2090 = !DILocation(line: 265, column: 25, scope: !1985)
!2091 = !DILocation(line: 265, column: 23, scope: !1985)
!2092 = !DILocation(line: 268, column: 14, scope: !1985)
!2093 = !DILocation(line: 268, column: 16, scope: !1985)
!2094 = !DILocation(line: 268, column: 13, scope: !1985)
!2095 = !DILocation(line: 268, column: 23, scope: !1985)
!2096 = !DILocation(line: 268, column: 35, scope: !1985)
!2097 = !DILocation(line: 268, column: 37, scope: !1985)
!2098 = !DILocation(line: 268, column: 34, scope: !1985)
!2099 = !DILocation(line: 268, column: 44, scope: !1985)
!2100 = !DILocation(line: 268, column: 28, scope: !1985)
!2101 = !DILocation(line: 268, column: 56, scope: !1985)
!2102 = !DILocation(line: 268, column: 58, scope: !1985)
!2103 = !DILocation(line: 268, column: 55, scope: !1985)
!2104 = !DILocation(line: 268, column: 65, scope: !1985)
!2105 = !DILocation(line: 268, column: 49, scope: !1985)
!2106 = !DILocation(line: 268, column: 76, scope: !1985)
!2107 = !DILocation(line: 268, column: 78, scope: !1985)
!2108 = !DILocation(line: 268, column: 75, scope: !1985)
!2109 = !DILocation(line: 268, column: 69, scope: !1985)
!2110 = !DILocation(line: 268, column: 2, scope: !1985)
!2111 = distinct !DISubprogram(name: "unicode/utf8.EncodeRune", linkageName: "unicode/utf8.EncodeRune", scope: !11, file: !11, line: 368, type: !2112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2118)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!2114, !1967}
!2114 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]byte", size: 192, align: 64, elements: !2115)
!2115 = !{!2116, !42, !673}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !2117, size: 64, align: 64)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64, align: 64, dwarfAddressSpace: 0)
!2118 = !{!2119, !2120}
!2119 = !DILocalVariable(name: "p", arg: 1, scope: !2111, file: !11, line: 368, type: !2114)
!2120 = !DILocalVariable(name: "r", arg: 2, scope: !2111, file: !11, line: 368, type: !1967)
!2121 = !DILocation(line: 368, column: 6, scope: !2111)
!2122 = !DILocation(line: 370, column: 12, scope: !2111)
!2123 = !DILocation(line: 370, column: 15, scope: !2111)
!2124 = !DILocation(line: 0, scope: !2111)
!2125 = !DILocation(line: 371, column: 3, scope: !2111)
!2126 = !DILocation(line: 371, column: 15, scope: !2111)
!2127 = !DILocation(line: 371, column: 14, scope: !2111)
!2128 = !DILocation(line: 371, column: 4, scope: !2111)
!2129 = !DILocation(line: 372, column: 3, scope: !2111)
!2130 = !DILocation(line: 374, column: 28, scope: !2111)
!2131 = !DILocation(line: 374, column: 31, scope: !2111)
!2132 = !DILocation(line: 374, column: 27, scope: !2111)
!2133 = !DILocation(line: 374, column: 2, scope: !2111)
!2134 = distinct !DISubprogram(name: "unicode/utf8.encodeRuneNonASCII", linkageName: "unicode/utf8.encodeRuneNonASCII", scope: !11, file: !11, line: 377, type: !2112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2135)
!2135 = !{!2136, !2137, !2138}
!2136 = !DILocalVariable(name: "p", arg: 1, scope: !2134, file: !11, line: 377, type: !2114)
!2137 = !DILocalVariable(name: "r", arg: 2, scope: !2134, file: !11, line: 377, type: !1967)
!2138 = !DILocalVariable(name: "i", scope: !2134, file: !11, line: 379, type: !98)
!2139 = !DILocation(line: 377, column: 6, scope: !2134)
!2140 = !DILocation(line: 379, column: 21, scope: !2134)
!2141 = !DILocation(line: 379, column: 9, scope: !2134)
!2142 = !DILocation(line: 380, column: 7, scope: !2134)
!2143 = !DILocation(line: 380, column: 9, scope: !2134)
!2144 = !DILocation(line: 0, scope: !2134)
!2145 = !DILocation(line: 381, column: 7, scope: !2134)
!2146 = !DILocation(line: 381, column: 8, scope: !2134)
!2147 = !DILocation(line: 382, column: 3, scope: !2134)
!2148 = !DILocation(line: 382, column: 20, scope: !2134)
!2149 = !DILocation(line: 382, column: 21, scope: !2134)
!2150 = !DILocation(line: 382, column: 19, scope: !2134)
!2151 = !DILocation(line: 382, column: 13, scope: !2134)
!2152 = !DILocation(line: 382, column: 4, scope: !2134)
!2153 = !DILocation(line: 383, column: 3, scope: !2134)
!2154 = !DILocation(line: 383, column: 20, scope: !2134)
!2155 = !DILocation(line: 383, column: 19, scope: !2134)
!2156 = !DILocation(line: 383, column: 22, scope: !2134)
!2157 = !DILocation(line: 383, column: 13, scope: !2134)
!2158 = !DILocation(line: 383, column: 4, scope: !2134)
!2159 = !DILocation(line: 384, column: 3, scope: !2134)
!2160 = !DILocation(line: 385, column: 7, scope: !2134)
!2161 = !DILocation(line: 385, column: 9, scope: !2134)
!2162 = !DILocation(line: 386, column: 7, scope: !2134)
!2163 = !DILocation(line: 386, column: 8, scope: !2134)
!2164 = !DILocation(line: 387, column: 3, scope: !2134)
!2165 = !DILocation(line: 387, column: 20, scope: !2134)
!2166 = !DILocation(line: 387, column: 21, scope: !2134)
!2167 = !DILocation(line: 387, column: 19, scope: !2134)
!2168 = !DILocation(line: 387, column: 13, scope: !2134)
!2169 = !DILocation(line: 387, column: 4, scope: !2134)
!2170 = !DILocation(line: 388, column: 3, scope: !2134)
!2171 = !DILocation(line: 388, column: 20, scope: !2134)
!2172 = !DILocation(line: 388, column: 21, scope: !2134)
!2173 = !DILocation(line: 388, column: 19, scope: !2134)
!2174 = !DILocation(line: 388, column: 25, scope: !2134)
!2175 = !DILocation(line: 388, column: 13, scope: !2134)
!2176 = !DILocation(line: 388, column: 4, scope: !2134)
!2177 = !DILocation(line: 389, column: 3, scope: !2134)
!2178 = !DILocation(line: 389, column: 20, scope: !2134)
!2179 = !DILocation(line: 389, column: 19, scope: !2134)
!2180 = !DILocation(line: 389, column: 22, scope: !2134)
!2181 = !DILocation(line: 389, column: 13, scope: !2134)
!2182 = !DILocation(line: 389, column: 4, scope: !2134)
!2183 = !DILocation(line: 390, column: 3, scope: !2134)
!2184 = !DILocation(line: 385, column: 40, scope: !2134)
!2185 = !DILocation(line: 385, column: 38, scope: !2134)
!2186 = !DILocation(line: 385, column: 45, scope: !2134)
!2187 = !DILocation(line: 385, column: 47, scope: !2134)
!2188 = !DILocation(line: 385, column: 42, scope: !2134)
!2189 = !DILocation(line: 391, column: 7, scope: !2134)
!2190 = !DILocation(line: 391, column: 9, scope: !2134)
!2191 = !DILocation(line: 391, column: 23, scope: !2134)
!2192 = !DILocation(line: 391, column: 25, scope: !2134)
!2193 = !DILocation(line: 391, column: 20, scope: !2134)
!2194 = !DILocation(line: 392, column: 7, scope: !2134)
!2195 = !DILocation(line: 392, column: 8, scope: !2134)
!2196 = !DILocation(line: 393, column: 3, scope: !2134)
!2197 = !DILocation(line: 393, column: 20, scope: !2134)
!2198 = !DILocation(line: 393, column: 21, scope: !2134)
!2199 = !DILocation(line: 393, column: 19, scope: !2134)
!2200 = !DILocation(line: 393, column: 13, scope: !2134)
!2201 = !DILocation(line: 393, column: 4, scope: !2134)
!2202 = !DILocation(line: 394, column: 3, scope: !2134)
!2203 = !DILocation(line: 394, column: 20, scope: !2134)
!2204 = !DILocation(line: 394, column: 21, scope: !2134)
!2205 = !DILocation(line: 394, column: 19, scope: !2134)
!2206 = !DILocation(line: 394, column: 26, scope: !2134)
!2207 = !DILocation(line: 394, column: 13, scope: !2134)
!2208 = !DILocation(line: 394, column: 4, scope: !2134)
!2209 = !DILocation(line: 395, column: 3, scope: !2134)
!2210 = !DILocation(line: 395, column: 20, scope: !2134)
!2211 = !DILocation(line: 395, column: 21, scope: !2134)
!2212 = !DILocation(line: 395, column: 19, scope: !2134)
!2213 = !DILocation(line: 395, column: 25, scope: !2134)
!2214 = !DILocation(line: 395, column: 13, scope: !2134)
!2215 = !DILocation(line: 395, column: 4, scope: !2134)
!2216 = !DILocation(line: 396, column: 3, scope: !2134)
!2217 = !DILocation(line: 396, column: 20, scope: !2134)
!2218 = !DILocation(line: 396, column: 19, scope: !2134)
!2219 = !DILocation(line: 396, column: 22, scope: !2134)
!2220 = !DILocation(line: 396, column: 13, scope: !2134)
!2221 = !DILocation(line: 396, column: 4, scope: !2134)
!2222 = !DILocation(line: 397, column: 3, scope: !2134)
!2223 = !DILocation(line: 399, column: 7, scope: !2134)
!2224 = !DILocation(line: 399, column: 8, scope: !2134)
!2225 = !DILocation(line: 400, column: 3, scope: !2134)
!2226 = !DILocation(line: 400, column: 4, scope: !2134)
!2227 = !DILocation(line: 401, column: 3, scope: !2134)
!2228 = !DILocation(line: 401, column: 4, scope: !2134)
!2229 = !DILocation(line: 402, column: 3, scope: !2134)
!2230 = !DILocation(line: 402, column: 4, scope: !2134)
!2231 = !DILocation(line: 403, column: 3, scope: !2134)
!2232 = distinct !DISubprogram(name: "unicode/utf8.ValidRune", linkageName: "unicode/utf8.ValidRune", scope: !11, file: !11, line: 577, type: !2233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2235)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!1967}
!2235 = !{!2236}
!2236 = !DILocalVariable(name: "r", arg: 1, scope: !2232, file: !11, line: 577, type: !1967)
!2237 = !DILocation(line: 577, column: 6, scope: !2232)
!2238 = !DILocation(line: 579, column: 12, scope: !2232)
!2239 = !DILocation(line: 579, column: 9, scope: !2232)
!2240 = !DILocation(line: 0, scope: !2232)
!2241 = !DILocation(line: 579, column: 17, scope: !2232)
!2242 = !DILocation(line: 579, column: 19, scope: !2232)
!2243 = !DILocation(line: 579, column: 14, scope: !2232)
!2244 = !DILocation(line: 580, column: 3, scope: !2232)
!2245 = !DILocation(line: 581, column: 22, scope: !2232)
!2246 = !DILocation(line: 581, column: 20, scope: !2232)
!2247 = !DILocation(line: 581, column: 27, scope: !2232)
!2248 = !DILocation(line: 581, column: 29, scope: !2232)
!2249 = !DILocation(line: 581, column: 24, scope: !2232)
!2250 = !DILocation(line: 582, column: 3, scope: !2232)
!2251 = !DILocation(line: 584, column: 2, scope: !2232)
!2252 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).Kind", linkageName: "(*internal/reflectlite.RawType).Kind", scope: !27, file: !27, line: 380, type: !2253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2255)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!1049}
!2255 = !{!2256, !2257}
!2256 = !DILocalVariable(name: "t", arg: 1, scope: !2252, file: !27, line: 380, type: !1049)
!2257 = !DILocalVariable(name: "tag", scope: !2252, file: !27, line: 385, type: !43)
!2258 = !DILocation(line: 380, column: 19, scope: !2252)
!2259 = !DILocation(line: 381, column: 5, scope: !2252)
!2260 = !DILocation(line: 381, column: 7, scope: !2252)
!2261 = !DILocation(line: 0, scope: !2252)
!2262 = !DILocation(line: 382, column: 3, scope: !2252)
!2263 = !DILocation(line: 385, column: 12, scope: !2252)
!2264 = !DILocation(line: 385, column: 20, scope: !2252)
!2265 = !DILocation(line: 385, column: 5, scope: !2252)
!2266 = !DILocation(line: 385, column: 24, scope: !2252)
!2267 = !DILocation(line: 385, column: 28, scope: !2252)
!2268 = !DILocation(line: 386, column: 3, scope: !2252)
!2269 = !DILocation(line: 389, column: 14, scope: !2252)
!2270 = !DILocation(line: 389, column: 16, scope: !2252)
!2271 = !DILocation(line: 389, column: 21, scope: !2252)
!2272 = !DILocation(line: 389, column: 2, scope: !2252)
!2273 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).elem", linkageName: "(*internal/reflectlite.RawType).elem", scope: !27, file: !27, line: 410, type: !2253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2274)
!2274 = !{!2275, !2276, !2277, !2278}
!2275 = !DILocalVariable(name: "t", arg: 1, scope: !2273, file: !27, line: 410, type: !1049)
!2276 = !DILocalVariable(name: "tag", scope: !2273, file: !27, line: 411, type: !43)
!2277 = !DILocalVariable(name: "underlying", scope: !2273, file: !27, line: 415, type: !1049)
!2278 = !DILocalVariable(name: "errTypeElem", scope: !2273, file: !27, line: 393, type: !33)
!2279 = !DILocation(line: 410, column: 19, scope: !2273)
!2280 = !DILocation(line: 411, column: 12, scope: !2273)
!2281 = !DILocation(line: 411, column: 20, scope: !2273)
!2282 = !DILocation(line: 411, column: 5, scope: !2273)
!2283 = !DILocation(line: 411, column: 24, scope: !2273)
!2284 = !DILocation(line: 411, column: 28, scope: !2273)
!2285 = !DILocation(line: 0, scope: !2273)
!2286 = !DILocation(line: 412, column: 47, scope: !2273)
!2287 = !DILocation(line: 412, column: 31, scope: !2273)
!2288 = !DILocation(line: 412, column: 3, scope: !2273)
!2289 = !DILocation(line: 415, column: 16, scope: !2273)
!2290 = !DILocation(line: 415, column: 28, scope: !2273)
!2291 = !DILocation(line: 415, column: 2, scope: !2273)
!2292 = !DILocation(line: 416, column: 9, scope: !2273)
!2293 = !DILocation(line: 416, column: 24, scope: !2273)
!2294 = !DILocation(line: 417, column: 7, scope: !2273)
!2295 = !DILocation(line: 418, column: 36, scope: !2273)
!2296 = !DILocation(line: 418, column: 49, scope: !2273)
!2297 = !DILocation(line: 418, column: 3, scope: !2273)
!2298 = !DILocation(line: 419, column: 7, scope: !2273)
!2299 = !DILocation(line: 420, column: 37, scope: !2273)
!2300 = !DILocation(line: 420, column: 50, scope: !2273)
!2301 = !DILocation(line: 420, column: 3, scope: !2273)
!2302 = !DILocation(line: 419, column: 13, scope: !2273)
!2303 = !DILocation(line: 419, column: 20, scope: !2273)
!2304 = !DILocation(line: 419, column: 27, scope: !2273)
!2305 = !DILocation(line: 422, column: 9, scope: !2273)
!2306 = !DILocation(line: 422, column: 8, scope: !2273)
!2307 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).Len", linkageName: "(*internal/reflectlite.RawType).Len", scope: !27, file: !27, line: 620, type: !2253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2308)
!2308 = !{!2309, !2310}
!2309 = !DILocalVariable(name: "t", arg: 1, scope: !2307, file: !27, line: 620, type: !1049)
!2310 = !DILocalVariable(name: "errTypeLen", scope: !2307, file: !27, line: 397, type: !33)
!2311 = !DILocation(line: 620, column: 19, scope: !2307)
!2312 = !DILocation(line: 621, column: 5, scope: !2307)
!2313 = !DILocation(line: 621, column: 11, scope: !2307)
!2314 = !DILocation(line: 621, column: 14, scope: !2307)
!2315 = !DILocation(line: 0, scope: !2307)
!2316 = !DILocation(line: 622, column: 9, scope: !2307)
!2317 = !DILocation(line: 622, column: 8, scope: !2307)
!2318 = !DILocation(line: 625, column: 41, scope: !2307)
!2319 = !DILocation(line: 625, column: 53, scope: !2307)
!2320 = !DILocation(line: 625, column: 58, scope: !2307)
!2321 = !DILocation(line: 625, column: 2, scope: !2307)
!2322 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).underlying", linkageName: "(*internal/reflectlite.RawType).underlying", scope: !27, file: !27, line: 263, type: !2253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2323)
!2323 = !{!2324}
!2324 = !DILocalVariable(name: "t", arg: 1, scope: !2322, file: !27, line: 263, type: !1049)
!2325 = !DILocation(line: 263, column: 19, scope: !2322)
!2326 = !DILocation(line: 264, column: 5, scope: !2322)
!2327 = !DILocation(line: 264, column: 14, scope: !2322)
!2328 = !DILocation(line: 0, scope: !2322)
!2329 = !DILocation(line: 265, column: 37, scope: !2322)
!2330 = !DILocation(line: 265, column: 41, scope: !2322)
!2331 = !DILocation(line: 265, column: 3, scope: !2322)
!2332 = !DILocation(line: 267, column: 9, scope: !2322)
!2333 = !DILocation(line: 267, column: 2, scope: !2322)
!2334 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).isNamed", linkageName: "(*internal/reflectlite.RawType).isNamed", scope: !27, file: !27, line: 274, type: !2253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2335)
!2335 = !{!2336, !2337}
!2336 = !DILocalVariable(name: "t", arg: 1, scope: !2334, file: !27, line: 274, type: !1049)
!2337 = !DILocalVariable(name: "tag", scope: !2334, file: !27, line: 275, type: !43)
!2338 = !DILocation(line: 274, column: 19, scope: !2334)
!2339 = !DILocation(line: 275, column: 12, scope: !2334)
!2340 = !DILocation(line: 275, column: 20, scope: !2334)
!2341 = !DILocation(line: 275, column: 5, scope: !2334)
!2342 = !DILocation(line: 275, column: 24, scope: !2334)
!2343 = !DILocation(line: 275, column: 28, scope: !2334)
!2344 = !DILocation(line: 0, scope: !2334)
!2345 = !DILocation(line: 276, column: 3, scope: !2334)
!2346 = !DILocation(line: 278, column: 9, scope: !2334)
!2347 = !DILocation(line: 278, column: 11, scope: !2334)
!2348 = !DILocation(line: 278, column: 15, scope: !2334)
!2349 = !DILocation(line: 278, column: 26, scope: !2334)
!2350 = !DILocation(line: 278, column: 2, scope: !2334)
!2351 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).ptrtag", linkageName: "(*internal/reflectlite.RawType).ptrtag", scope: !27, file: !27, line: 270, type: !2253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2352)
!2352 = !{!2353}
!2353 = !DILocalVariable(name: "t", arg: 1, scope: !2351, file: !27, line: 270, type: !1049)
!2354 = !DILocation(line: 270, column: 19, scope: !2351)
!2355 = !DILocation(line: 271, column: 32, scope: !2351)
!2356 = !DILocation(line: 271, column: 16, scope: !2351)
!2357 = !DILocation(line: 271, column: 36, scope: !2351)
!2358 = !DILocation(line: 271, column: 2, scope: !2351)
!2359 = distinct !DISubprogram(name: "(*internal/reflectlite.TypeError).Error", linkageName: "(*internal/reflectlite.TypeError).Error", scope: !27, file: !27, line: 1211, type: !2360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!33}
!2362 = !{!2363}
!2363 = !DILocalVariable(name: "e", arg: 1, scope: !2359, file: !27, line: 1211, type: !33)
!2364 = !DILocation(line: 1211, column: 21, scope: !2359)
!2365 = !DILocation(line: 1212, column: 44, scope: !2359)
!2366 = !DILocation(line: 1212, column: 46, scope: !2359)
!2367 = !DILocation(line: 1212, column: 42, scope: !2359)
!2368 = !DILocation(line: 1212, column: 53, scope: !2359)
!2369 = !DILocation(line: 1212, column: 2, scope: !2359)
!2370 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).ChanDir", linkageName: "(*internal/reflectlite.RawType).ChanDir", scope: !27, file: !27, line: 893, type: !2253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2371)
!2371 = !{!2372, !2373, !2374}
!2372 = !DILocalVariable(name: "t", arg: 1, scope: !2370, file: !27, line: 893, type: !1049)
!2373 = !DILocalVariable(name: "errTypeChanDir", scope: !2370, file: !27, line: 399, type: !33)
!2374 = !DILocalVariable(name: "dir", scope: !2370, file: !27, line: 898, type: !1908)
!2375 = !DILocation(line: 893, column: 19, scope: !2370)
!2376 = !DILocation(line: 894, column: 5, scope: !2370)
!2377 = !DILocation(line: 894, column: 11, scope: !2370)
!2378 = !DILocation(line: 894, column: 14, scope: !2370)
!2379 = !DILocation(line: 0, scope: !2370)
!2380 = !DILocation(line: 895, column: 9, scope: !2370)
!2381 = !DILocation(line: 895, column: 8, scope: !2370)
!2382 = !DILocation(line: 898, column: 40, scope: !2370)
!2383 = !DILocation(line: 898, column: 44, scope: !2370)
!2384 = !DILocation(line: 898, column: 12, scope: !2370)
!2385 = !DILocation(line: 898, column: 2, scope: !2370)
!2386 = !DILocation(line: 901, column: 17, scope: !2370)
!2387 = !DILocation(line: 901, column: 2, scope: !2370)
!2388 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).NumField", linkageName: "(*internal/reflectlite.RawType).NumField", scope: !27, file: !27, line: 630, type: !2253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2389)
!2389 = !{!2390, !2391}
!2390 = !DILocalVariable(name: "t", arg: 1, scope: !2388, file: !27, line: 630, type: !1049)
!2391 = !DILocalVariable(name: "errTypeNumField", scope: !2388, file: !27, line: 398, type: !33)
!2392 = !DILocation(line: 630, column: 19, scope: !2388)
!2393 = !DILocation(line: 631, column: 5, scope: !2388)
!2394 = !DILocation(line: 631, column: 11, scope: !2388)
!2395 = !DILocation(line: 631, column: 14, scope: !2388)
!2396 = !DILocation(line: 0, scope: !2388)
!2397 = !DILocation(line: 632, column: 9, scope: !2388)
!2398 = !DILocation(line: 632, column: 8, scope: !2388)
!2399 = !DILocation(line: 634, column: 42, scope: !2388)
!2400 = !DILocation(line: 634, column: 54, scope: !2388)
!2401 = !DILocation(line: 634, column: 59, scope: !2388)
!2402 = !DILocation(line: 634, column: 12, scope: !2388)
!2403 = !DILocation(line: 634, column: 2, scope: !2388)
!2404 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).String", linkageName: "(*internal/reflectlite.RawType).String", scope: !27, file: !27, line: 316, type: !2253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2405)
!2405 = !{!2406, !2407, !2408, !2409, !2410, !2411, !2412}
!2406 = !DILocalVariable(name: "t", arg: 1, scope: !2404, file: !27, line: 316, type: !1049)
!2407 = !DILocalVariable(name: "s", scope: !2404, file: !27, line: 318, type: !38)
!2408 = !DILocalVariable(name: "elem", scope: !2404, file: !27, line: 326, type: !38)
!2409 = !DILocalVariable(name: "numField", scope: !2404, file: !27, line: 352, type: !1908)
!2410 = !DILocalVariable(name: "s", scope: !2404, file: !27, line: 356, type: !38)
!2411 = !DILocalVariable(name: "i", scope: !2404, file: !27, line: 357, type: !1908)
!2412 = !DILocalVariable(name: "f", scope: !2404, file: !27, line: 358, type: !2413)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.rawStructField", baseType: !2414)
!2414 = !DICompositeType(tag: DW_TAG_structure_type, size: 576, align: 64, elements: !2415)
!2415 = !{!668, !2416, !2417, !2418, !2420, !2421}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "PkgPath", baseType: !38, size: 128, align: 64, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "Type", baseType: !1049, size: 64, align: 64, offset: 256)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "Tag", baseType: !2419, size: 128, align: 64, offset: 320)
!2419 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.StructTag", baseType: !38)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "Offset", baseType: !43, size: 64, align: 64, offset: 448)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "Anonymous", baseType: !371, size: 8, align: 8, offset: 512)
!2422 = !DILocation(line: 316, column: 19, scope: !2404)
!2423 = !DILocation(line: 317, column: 5, scope: !2404)
!2424 = !DILocation(line: 317, column: 14, scope: !2404)
!2425 = !DILocation(line: 0, scope: !2404)
!2426 = !DILocation(line: 318, column: 8, scope: !2404)
!2427 = !DILocation(line: 318, column: 14, scope: !2404)
!2428 = !DILocation(line: 318, column: 3, scope: !2404)
!2429 = !DILocation(line: 319, column: 6, scope: !2404)
!2430 = !DILocation(line: 319, column: 7, scope: !2404)
!2431 = !DILocation(line: 319, column: 11, scope: !2404)
!2432 = !DILocation(line: 320, column: 11, scope: !2404)
!2433 = !DILocation(line: 320, column: 12, scope: !2404)
!2434 = !DILocation(line: 320, column: 4, scope: !2404)
!2435 = !DILocation(line: 322, column: 10, scope: !2404)
!2436 = !DILocation(line: 322, column: 3, scope: !2404)
!2437 = !DILocation(line: 324, column: 9, scope: !2404)
!2438 = !DILocation(line: 324, column: 15, scope: !2404)
!2439 = !DILocation(line: 325, column: 7, scope: !2404)
!2440 = !DILocation(line: 326, column: 11, scope: !2404)
!2441 = !DILocation(line: 326, column: 17, scope: !2404)
!2442 = !DILocation(line: 326, column: 26, scope: !2404)
!2443 = !DILocation(line: 326, column: 3, scope: !2404)
!2444 = !DILocation(line: 327, column: 10, scope: !2404)
!2445 = !DILocation(line: 327, column: 19, scope: !2404)
!2446 = !DILocation(line: 328, column: 8, scope: !2404)
!2447 = !DILocation(line: 329, column: 23, scope: !2404)
!2448 = !DILocation(line: 329, column: 21, scope: !2404)
!2449 = !DILocation(line: 329, column: 4, scope: !2404)
!2450 = !DILocation(line: 330, column: 8, scope: !2404)
!2451 = !DILocation(line: 331, column: 23, scope: !2404)
!2452 = !DILocation(line: 331, column: 21, scope: !2404)
!2453 = !DILocation(line: 331, column: 4, scope: !2404)
!2454 = !DILocation(line: 332, column: 8, scope: !2404)
!2455 = !DILocation(line: 333, column: 7, scope: !2404)
!2456 = !DILocation(line: 333, column: 11, scope: !2404)
!2457 = !DILocation(line: 333, column: 15, scope: !2404)
!2458 = !DILocation(line: 338, column: 23, scope: !2404)
!2459 = !DILocation(line: 338, column: 21, scope: !2404)
!2460 = !DILocation(line: 338, column: 28, scope: !2404)
!2461 = !DILocation(line: 338, column: 5, scope: !2404)
!2462 = !DILocation(line: 340, column: 21, scope: !2404)
!2463 = !DILocation(line: 340, column: 19, scope: !2404)
!2464 = !DILocation(line: 340, column: 4, scope: !2404)
!2465 = !DILocation(line: 377, column: 9, scope: !2404)
!2466 = !DILocation(line: 377, column: 15, scope: !2404)
!2467 = !DILocation(line: 377, column: 24, scope: !2404)
!2468 = !DILocation(line: 377, column: 2, scope: !2404)
!2469 = !DILocation(line: 343, column: 7, scope: !2404)
!2470 = !DILocation(line: 344, column: 16, scope: !2404)
!2471 = !DILocation(line: 344, column: 22, scope: !2404)
!2472 = !DILocation(line: 344, column: 31, scope: !2404)
!2473 = !DILocation(line: 344, column: 14, scope: !2404)
!2474 = !DILocation(line: 344, column: 3, scope: !2404)
!2475 = !DILocation(line: 345, column: 7, scope: !2404)
!2476 = !DILocation(line: 346, column: 17, scope: !2404)
!2477 = !DILocation(line: 346, column: 23, scope: !2404)
!2478 = !DILocation(line: 346, column: 32, scope: !2404)
!2479 = !DILocation(line: 346, column: 15, scope: !2404)
!2480 = !DILocation(line: 346, column: 3, scope: !2404)
!2481 = !DILocation(line: 347, column: 7, scope: !2404)
!2482 = !DILocation(line: 348, column: 26, scope: !2404)
!2483 = !DILocation(line: 348, column: 31, scope: !2404)
!2484 = !DILocation(line: 348, column: 25, scope: !2404)
!2485 = !DILocation(line: 348, column: 14, scope: !2404)
!2486 = !DILocation(line: 348, column: 35, scope: !2404)
!2487 = !DILocation(line: 348, column: 43, scope: !2404)
!2488 = !DILocation(line: 348, column: 49, scope: !2404)
!2489 = !DILocation(line: 348, column: 58, scope: !2404)
!2490 = !DILocation(line: 348, column: 41, scope: !2404)
!2491 = !DILocation(line: 348, column: 3, scope: !2404)
!2492 = !DILocation(line: 349, column: 7, scope: !2404)
!2493 = !DILocation(line: 350, column: 19, scope: !2404)
!2494 = !DILocation(line: 350, column: 24, scope: !2404)
!2495 = !DILocation(line: 350, column: 33, scope: !2404)
!2496 = !DILocation(line: 350, column: 17, scope: !2404)
!2497 = !DILocation(line: 350, column: 36, scope: !2404)
!2498 = !DILocation(line: 350, column: 44, scope: !2404)
!2499 = !DILocation(line: 350, column: 50, scope: !2404)
!2500 = !DILocation(line: 350, column: 59, scope: !2404)
!2501 = !DILocation(line: 350, column: 42, scope: !2404)
!2502 = !DILocation(line: 350, column: 3, scope: !2404)
!2503 = !DILocation(line: 351, column: 7, scope: !2404)
!2504 = !DILocation(line: 352, column: 15, scope: !2404)
!2505 = !DILocation(line: 352, column: 25, scope: !2404)
!2506 = !DILocation(line: 352, column: 3, scope: !2404)
!2507 = !DILocation(line: 353, column: 6, scope: !2404)
!2508 = !DILocation(line: 353, column: 15, scope: !2404)
!2509 = !DILocation(line: 354, column: 4, scope: !2404)
!2510 = !DILocation(line: 356, column: 3, scope: !2404)
!2511 = !DILocation(line: 357, column: 7, scope: !2404)
!2512 = !DILocation(line: 357, column: 15, scope: !2404)
!2513 = !DILocation(line: 357, column: 19, scope: !2404)
!2514 = !DILocation(line: 357, column: 17, scope: !2404)
!2515 = !DILocation(line: 358, column: 9, scope: !2404)
!2516 = !DILocation(line: 358, column: 20, scope: !2404)
!2517 = !DILocation(line: 358, column: 19, scope: !2404)
!2518 = !DILocation(line: 358, column: 4, scope: !2404)
!2519 = !DILocation(line: 359, column: 17, scope: !2404)
!2520 = !DILocation(line: 359, column: 13, scope: !2404)
!2521 = !DILocation(line: 359, column: 22, scope: !2404)
!2522 = !DILocation(line: 359, column: 32, scope: !2404)
!2523 = !DILocation(line: 359, column: 43, scope: !2404)
!2524 = !DILocation(line: 359, column: 28, scope: !2404)
!2525 = !DILocation(line: 359, column: 4, scope: !2404)
!2526 = !DILocation(line: 360, column: 9, scope: !2404)
!2527 = !DILocation(line: 360, column: 13, scope: !2404)
!2528 = !DILocation(line: 361, column: 31, scope: !2404)
!2529 = !DILocation(line: 361, column: 21, scope: !2404)
!2530 = !DILocation(line: 361, column: 14, scope: !2404)
!2531 = !DILocation(line: 361, column: 5, scope: !2404)
!2532 = !DILocation(line: 364, column: 7, scope: !2404)
!2533 = !DILocation(line: 364, column: 11, scope: !2404)
!2534 = !DILocation(line: 364, column: 19, scope: !2404)
!2535 = !DILocation(line: 364, column: 9, scope: !2404)
!2536 = !DILocation(line: 365, column: 5, scope: !2404)
!2537 = !DILocation(line: 357, column: 29, scope: !2404)
!2538 = !DILocation(line: 368, column: 3, scope: !2404)
!2539 = !DILocation(line: 369, column: 10, scope: !2404)
!2540 = !DILocation(line: 369, column: 3, scope: !2404)
!2541 = !DILocation(line: 370, column: 7, scope: !2404)
!2542 = !DILocation(line: 372, column: 3, scope: !2404)
!2543 = !DILocation(line: 374, column: 10, scope: !2404)
!2544 = !DILocation(line: 374, column: 16, scope: !2404)
!2545 = !DILocation(line: 374, column: 25, scope: !2404)
!2546 = !DILocation(line: 374, column: 3, scope: !2404)
!2547 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).key", linkageName: "(*internal/reflectlite.RawType).key", scope: !27, file: !27, line: 426, type: !2253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2548)
!2548 = !{!2549, !2550, !2551}
!2549 = !DILocalVariable(name: "t", arg: 1, scope: !2547, file: !27, line: 426, type: !1049)
!2550 = !DILocalVariable(name: "underlying", scope: !2547, file: !27, line: 427, type: !1049)
!2551 = !DILocalVariable(name: "errTypeKey", scope: !2547, file: !27, line: 394, type: !33)
!2552 = !DILocation(line: 426, column: 19, scope: !2547)
!2553 = !DILocation(line: 427, column: 16, scope: !2547)
!2554 = !DILocation(line: 427, column: 28, scope: !2547)
!2555 = !DILocation(line: 427, column: 2, scope: !2547)
!2556 = !DILocation(line: 428, column: 5, scope: !2547)
!2557 = !DILocation(line: 428, column: 20, scope: !2547)
!2558 = !DILocation(line: 428, column: 23, scope: !2547)
!2559 = !DILocation(line: 0, scope: !2547)
!2560 = !DILocation(line: 429, column: 9, scope: !2547)
!2561 = !DILocation(line: 429, column: 8, scope: !2547)
!2562 = !DILocation(line: 431, column: 35, scope: !2547)
!2563 = !DILocation(line: 431, column: 48, scope: !2547)
!2564 = !DILocation(line: 431, column: 2, scope: !2547)
!2565 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).name", linkageName: "(*internal/reflectlite.RawType).name", scope: !27, file: !27, line: 939, type: !2253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2566)
!2566 = !{!2567, !2568, !2578, !2579}
!2567 = !DILocalVariable(name: "t", arg: 1, scope: !2565, file: !27, line: 939, type: !1049)
!2568 = !DILocalVariable(name: "ntype", scope: !2565, file: !27, line: 940, type: !2569)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64, align: 64, dwarfAddressSpace: 0)
!2570 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.namedType", baseType: !2571)
!2571 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !2572)
!2572 = !{!2573, !2574, !2575, !2576, !2577}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "RawType", baseType: !1050, size: 8, align: 8)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "numMethod", baseType: !90, size: 16, align: 16, offset: 16)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !1049, size: 64, align: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "elem", baseType: !1049, size: 64, align: 64, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", baseType: !2117, size: 64, align: 64, offset: 192)
!2578 = !DILocalVariable(name: "ptr", scope: !2565, file: !27, line: 942, type: !84)
!2579 = !DILocalVariable(name: "ms", scope: !2565, file: !27, line: 944, type: !2580)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64, align: 64, dwarfAddressSpace: 0)
!2581 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.methodSet", baseType: !2582)
!2582 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !2583)
!2583 = !{!1145, !2584}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !2585, align: 64, offset: 64)
!2585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, align: 64, elements: !121)
!2586 = !DILocation(line: 939, column: 19, scope: !2565)
!2587 = !DILocation(line: 940, column: 39, scope: !2565)
!2588 = !DILocation(line: 940, column: 2, scope: !2565)
!2589 = !DILocation(line: 942, column: 35, scope: !2565)
!2590 = !DILocation(line: 942, column: 19, scope: !2565)
!2591 = !DILocation(line: 942, column: 2, scope: !2565)
!2592 = !DILocation(line: 943, column: 5, scope: !2565)
!2593 = !DILocation(line: 943, column: 11, scope: !2565)
!2594 = !DILocation(line: 943, column: 20, scope: !2565)
!2595 = !DILocation(line: 943, column: 43, scope: !2565)
!2596 = !DILocation(line: 0, scope: !2565)
!2597 = !DILocation(line: 944, column: 22, scope: !2565)
!2598 = !DILocation(line: 944, column: 3, scope: !2565)
!2599 = !DILocation(line: 946, column: 20, scope: !2565)
!2600 = !DILocation(line: 946, column: 59, scope: !2565)
!2601 = !DILocation(line: 946, column: 62, scope: !2565)
!2602 = !DILocation(line: 946, column: 69, scope: !2565)
!2603 = !DILocation(line: 946, column: 50, scope: !2565)
!2604 = !DILocation(line: 946, column: 19, scope: !2565)
!2605 = !DILocation(line: 946, column: 3, scope: !2565)
!2606 = !DILocation(line: 948, column: 21, scope: !2565)
!2607 = !DILocation(line: 948, column: 20, scope: !2565)
!2608 = !DILocation(line: 948, column: 2, scope: !2565)
!2609 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).rawField", linkageName: "(*internal/reflectlite.RawType).rawField", scope: !27, file: !27, line: 484, type: !2610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2612)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!1049, !1908}
!2612 = !{!2613, !2614, !2615, !2616, !2630, !2632, !2633, !2634, !2635, !2636}
!2613 = !DILocalVariable(name: "t", arg: 1, scope: !2609, file: !27, line: 484, type: !1049)
!2614 = !DILocalVariable(name: "n", arg: 2, scope: !2609, file: !27, line: 484, type: !1908)
!2615 = !DILocalVariable(name: "errTypeField", scope: !2609, file: !27, line: 395, type: !33)
!2616 = !DILocalVariable(name: "descriptor", scope: !2609, file: !27, line: 488, type: !2617)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64, align: 64, dwarfAddressSpace: 0)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.structType", baseType: !2619)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !2620)
!2620 = !{!2573, !2574, !2575, !2621, !97, !2622, !2623}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !2117, size: 64, align: 64, offset: 128)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "numField", baseType: !90, size: 16, align: 16, offset: 224)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !2624, size: 128, align: 64, offset: 256)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2625, size: 128, align: 64, elements: !5)
!2625 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.structField", baseType: !2626)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !2627)
!2627 = !{!2628, !2629}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "fieldType", baseType: !1049, size: 64, align: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !84, size: 64, align: 64, offset: 64)
!2630 = !DILocalVariable(name: "field", scope: !2609, file: !27, line: 497, type: !2631)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64, align: 64, dwarfAddressSpace: 0)
!2632 = !DILocalVariable(name: "data", scope: !2609, file: !27, line: 498, type: !84)
!2633 = !DILocalVariable(name: "flagsByte", scope: !2609, file: !27, line: 502, type: !533)
!2634 = !DILocalVariable(name: "offset", scope: !2609, file: !27, line: 504, type: !98)
!2635 = !DILocalVariable(name: "lenOffs", scope: !2609, file: !27, line: 504, type: !1908)
!2636 = !DILocalVariable(name: "name", scope: !2609, file: !27, line: 507, type: !38)
!2637 = !DILocation(line: 484, column: 19, scope: !2609)
!2638 = !DILocation(line: 485, column: 5, scope: !2609)
!2639 = !DILocation(line: 485, column: 11, scope: !2609)
!2640 = !DILocation(line: 485, column: 14, scope: !2609)
!2641 = !DILocation(line: 0, scope: !2609)
!2642 = !DILocation(line: 486, column: 9, scope: !2609)
!2643 = !DILocation(line: 486, column: 8, scope: !2609)
!2644 = !DILocation(line: 488, column: 45, scope: !2609)
!2645 = !DILocation(line: 488, column: 57, scope: !2609)
!2646 = !DILocation(line: 488, column: 2, scope: !2609)
!2647 = !DILocation(line: 489, column: 10, scope: !2609)
!2648 = !DILocation(line: 489, column: 21, scope: !2609)
!2649 = !DILocation(line: 489, column: 32, scope: !2609)
!2650 = !DILocation(line: 489, column: 20, scope: !2609)
!2651 = !DILocation(line: 489, column: 13, scope: !2609)
!2652 = !DILocation(line: 490, column: 8, scope: !2609)
!2653 = !DILocation(line: 497, column: 53, scope: !2609)
!2654 = !DILocation(line: 497, column: 64, scope: !2609)
!2655 = !DILocation(line: 497, column: 70, scope: !2609)
!2656 = !DILocation(line: 497, column: 84, scope: !2609)
!2657 = !DILocation(line: 497, column: 86, scope: !2609)
!2658 = !DILocation(line: 497, column: 36, scope: !2609)
!2659 = !DILocation(line: 497, column: 2, scope: !2609)
!2660 = !DILocation(line: 498, column: 10, scope: !2609)
!2661 = !DILocation(line: 498, column: 16, scope: !2609)
!2662 = !DILocation(line: 498, column: 2, scope: !2609)
!2663 = !DILocation(line: 502, column: 24, scope: !2609)
!2664 = !DILocation(line: 502, column: 15, scope: !2609)
!2665 = !DILocation(line: 502, column: 2, scope: !2609)
!2666 = !DILocation(line: 503, column: 20, scope: !2609)
!2667 = !DILocation(line: 503, column: 19, scope: !2609)
!2668 = !DILocation(line: 503, column: 2, scope: !2609)
!2669 = !DILocation(line: 504, column: 52, scope: !2609)
!2670 = !DILocation(line: 504, column: 43, scope: !2609)
!2671 = !DILocation(line: 504, column: 30, scope: !2609)
!2672 = !DILocation(line: 504, column: 2, scope: !2609)
!2673 = !DILocation(line: 504, column: 10, scope: !2609)
!2674 = !DILocation(line: 505, column: 20, scope: !2609)
!2675 = !DILocation(line: 505, column: 26, scope: !2609)
!2676 = !DILocation(line: 505, column: 19, scope: !2609)
!2677 = !DILocation(line: 505, column: 2, scope: !2609)
!2678 = !DILocation(line: 507, column: 22, scope: !2609)
!2679 = !DILocation(line: 507, column: 21, scope: !2609)
!2680 = !DILocation(line: 507, column: 2, scope: !2609)
!2681 = !DILocation(line: 508, column: 20, scope: !2609)
!2682 = !DILocation(line: 508, column: 30, scope: !2609)
!2683 = !DILocation(line: 508, column: 29, scope: !2609)
!2684 = !DILocation(line: 508, column: 19, scope: !2609)
!2685 = !DILocation(line: 508, column: 2, scope: !2609)
!2686 = !DILocation(line: 510, column: 35, scope: !2609)
!2687 = !DILocation(line: 510, column: 47, scope: !2609)
!2688 = !DILocation(line: 510, column: 53, scope: !2609)
!2689 = !DILocation(line: 510, column: 64, scope: !2609)
!2690 = !DILocation(line: 510, column: 70, scope: !2609)
!2691 = !DILocation(line: 510, column: 81, scope: !2609)
!2692 = !DILocation(line: 510, column: 87, scope: !2609)
!2693 = !DILocation(line: 510, column: 34, scope: !2609)
!2694 = !DILocation(line: 510, column: 2, scope: !2609)
!2695 = distinct !DISubprogram(name: "internal/reflectlite.uvarint32", linkageName: "internal/reflectlite.uvarint32", scope: !27, file: !27, line: 1242, type: !2696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2698)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!2114}
!2698 = !{!2699, !2700, !2701, !2702, !2703}
!2699 = !DILocalVariable(name: "buf", arg: 1, scope: !2695, file: !27, line: 1242, type: !2114)
!2700 = !DILocalVariable(name: "x", scope: !2695, file: !27, line: 1243, type: !98)
!2701 = !DILocalVariable(name: "s", scope: !2695, file: !27, line: 1244, type: !1738)
!2702 = !DILocalVariable(name: "i", scope: !2695, file: !27, line: 1245, type: !1908)
!2703 = !DILocalVariable(name: "b", scope: !2695, file: !27, line: 1245, type: !533)
!2704 = !DILocation(line: 1242, column: 6, scope: !2695)
!2705 = !DILocation(line: 1243, column: 6, scope: !2695)
!2706 = !DILocation(line: 1244, column: 6, scope: !2695)
!2707 = !DILocation(line: 1245, column: 20, scope: !2695)
!2708 = !DILocation(line: 0, scope: !2695)
!2709 = !DILocation(line: 1245, column: 6, scope: !2695)
!2710 = !DILocation(line: 1245, column: 9, scope: !2695)
!2711 = !DILocation(line: 1246, column: 6, scope: !2695)
!2712 = !DILocation(line: 1246, column: 8, scope: !2695)
!2713 = !DILocation(line: 1247, column: 11, scope: !2695)
!2714 = !DILocation(line: 1247, column: 22, scope: !2695)
!2715 = !DILocation(line: 1247, column: 21, scope: !2695)
!2716 = !DILocation(line: 1247, column: 26, scope: !2695)
!2717 = !DILocation(line: 1247, column: 24, scope: !2695)
!2718 = !DILocation(line: 1247, column: 13, scope: !2695)
!2719 = !DILocation(line: 1247, column: 29, scope: !2695)
!2720 = !DILocation(line: 1247, column: 31, scope: !2695)
!2721 = !DILocation(line: 1247, column: 4, scope: !2695)
!2722 = !DILocation(line: 1249, column: 15, scope: !2695)
!2723 = !DILocation(line: 1249, column: 16, scope: !2695)
!2724 = !DILocation(line: 1249, column: 14, scope: !2695)
!2725 = !DILocation(line: 1249, column: 26, scope: !2695)
!2726 = !DILocation(line: 1249, column: 23, scope: !2695)
!2727 = !DILocation(line: 1249, column: 3, scope: !2695)
!2728 = !DILocation(line: 1250, column: 3, scope: !2695)
!2729 = !DILocation(line: 1252, column: 2, scope: !2695)
!2730 = distinct !DISubprogram(name: "internal/reflectlite.readStringZ", linkageName: "internal/reflectlite.readStringZ", scope: !27, file: !27, line: 925, type: !2731, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!84}
!2733 = !{!2734, !2735, !2736}
!2734 = !DILocalVariable(name: "data", arg: 1, scope: !2730, file: !27, line: 925, type: !84)
!2735 = !DILocalVariable(name: "start", scope: !2730, file: !27, line: 926, type: !84)
!2736 = !DILocalVariable(name: "len", scope: !2730, file: !27, line: 927, type: !43)
!2737 = !DILocation(line: 925, column: 6, scope: !2730)
!2738 = !DILocation(line: 926, column: 11, scope: !2730)
!2739 = !DILocation(line: 926, column: 2, scope: !2730)
!2740 = !DILocation(line: 927, column: 6, scope: !2730)
!2741 = !DILocation(line: 0, scope: !2730)
!2742 = !DILocation(line: 925, column: 18, scope: !2730)
!2743 = !DILocation(line: 928, column: 15, scope: !2730)
!2744 = !DILocation(line: 928, column: 6, scope: !2730)
!2745 = !DILocation(line: 928, column: 21, scope: !2730)
!2746 = !DILocation(line: 929, column: 3, scope: !2730)
!2747 = !DILocation(line: 930, column: 21, scope: !2730)
!2748 = !DILocation(line: 930, column: 20, scope: !2730)
!2749 = !DILocation(line: 930, column: 3, scope: !2730)
!2750 = !DILocation(line: 933, column: 48, scope: !2730)
!2751 = !DILocation(line: 934, column: 7, scope: !2730)
!2752 = !DILocation(line: 934, column: 9, scope: !2730)
!2753 = !DILocation(line: 935, column: 6, scope: !2730)
!2754 = !DILocation(line: 935, column: 9, scope: !2730)
!2755 = !DILocation(line: 933, column: 9, scope: !2730)
!2756 = !DILocation(line: 933, column: 2, scope: !2730)
!2757 = distinct !DISubprogram(name: "internal/reflectlite.rawStructFieldFromPointer", linkageName: "internal/reflectlite.rawStructFieldFromPointer", scope: !27, file: !27, line: 449, type: !2758, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!2617, !1049, !84, !4, !38, !98}
!2760 = !{!2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769}
!2761 = !DILocalVariable(name: "descriptor", arg: 1, scope: !2757, file: !27, line: 449, type: !2617)
!2762 = !DILocalVariable(name: "fieldType", arg: 2, scope: !2757, file: !27, line: 449, type: !1049)
!2763 = !DILocalVariable(name: "data", arg: 3, scope: !2757, file: !27, line: 449, type: !84)
!2764 = !DILocalVariable(name: "flagsByte", arg: 4, scope: !2757, file: !27, line: 449, type: !4)
!2765 = !DILocalVariable(name: "name", arg: 5, scope: !2757, file: !27, line: 449, type: !38)
!2766 = !DILocalVariable(name: "offset", arg: 6, scope: !2757, file: !27, line: 449, type: !98)
!2767 = !DILocalVariable(name: "tag", scope: !2757, file: !27, line: 451, type: !38)
!2768 = !DILocalVariable(name: "tagLen", scope: !2757, file: !27, line: 454, type: !43)
!2769 = !DILocalVariable(name: "pkgPath", scope: !2757, file: !27, line: 464, type: !38)
!2770 = !DILocation(line: 449, column: 6, scope: !2757)
!2771 = !DILocation(line: 451, column: 6, scope: !2757)
!2772 = !DILocation(line: 452, column: 5, scope: !2757)
!2773 = !DILocation(line: 452, column: 14, scope: !2757)
!2774 = !DILocation(line: 452, column: 37, scope: !2757)
!2775 = !DILocation(line: 0, scope: !2757)
!2776 = !DILocation(line: 453, column: 21, scope: !2757)
!2777 = !DILocation(line: 453, column: 20, scope: !2757)
!2778 = !DILocation(line: 453, column: 3, scope: !2757)
!2779 = !DILocation(line: 454, column: 30, scope: !2757)
!2780 = !DILocation(line: 454, column: 21, scope: !2757)
!2781 = !DILocation(line: 454, column: 20, scope: !2757)
!2782 = !DILocation(line: 454, column: 3, scope: !2757)
!2783 = !DILocation(line: 455, column: 21, scope: !2757)
!2784 = !DILocation(line: 455, column: 20, scope: !2757)
!2785 = !DILocation(line: 455, column: 3, scope: !2757)
!2786 = !DILocation(line: 456, column: 48, scope: !2757)
!2787 = !DILocation(line: 457, column: 8, scope: !2757)
!2788 = !DILocation(line: 457, column: 10, scope: !2757)
!2789 = !DILocation(line: 458, column: 7, scope: !2757)
!2790 = !DILocation(line: 458, column: 10, scope: !2757)
!2791 = !DILocation(line: 456, column: 9, scope: !2757)
!2792 = !DILocation(line: 456, column: 3, scope: !2757)
!2793 = !DILocation(line: 464, column: 2, scope: !2757)
!2794 = !DILocation(line: 465, column: 5, scope: !2757)
!2795 = !DILocation(line: 465, column: 14, scope: !2757)
!2796 = !DILocation(line: 465, column: 41, scope: !2757)
!2797 = !DILocation(line: 467, column: 40, scope: !2757)
!2798 = !DILocation(line: 467, column: 51, scope: !2757)
!2799 = !DILocation(line: 467, column: 24, scope: !2757)
!2800 = !DILocation(line: 467, column: 3, scope: !2757)
!2801 = !DILocation(line: 471, column: 7, scope: !2757)
!2802 = !DILocation(line: 471, column: 14, scope: !2757)
!2803 = !DILocation(line: 472, column: 10, scope: !2757)
!2804 = !DILocation(line: 472, column: 14, scope: !2757)
!2805 = !DILocation(line: 473, column: 7, scope: !2757)
!2806 = !DILocation(line: 473, column: 14, scope: !2757)
!2807 = !DILocation(line: 474, column: 6, scope: !2757)
!2808 = !DILocation(line: 474, column: 24, scope: !2757)
!2809 = !DILocation(line: 475, column: 12, scope: !2757)
!2810 = !DILocation(line: 475, column: 14, scope: !2757)
!2811 = !DILocation(line: 475, column: 23, scope: !2757)
!2812 = !DILocation(line: 475, column: 49, scope: !2757)
!2813 = !DILocation(line: 476, column: 9, scope: !2757)
!2814 = !DILocation(line: 476, column: 22, scope: !2757)
!2815 = !DILocation(line: 476, column: 21, scope: !2757)
!2816 = !DILocation(line: 470, column: 23, scope: !2757)
!2817 = !DILocation(line: 470, column: 2, scope: !2757)
!2818 = distinct !DISubprogram(name: "(internal/reflectlite.Kind).String", linkageName: "(internal/reflectlite.Kind).String", scope: !27, file: !27, line: 57, type: !2819, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2822)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!2821}
!2821 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.Kind", baseType: !4)
!2822 = !{!2823}
!2823 = !DILocalVariable(name: "k", arg: 1, scope: !2818, file: !27, line: 57, type: !2821)
!2824 = !DILocation(line: 57, column: 15, scope: !2818)
!2825 = !DILocation(line: 58, column: 9, scope: !2818)
!2826 = !DILocation(line: 59, column: 7, scope: !2818)
!2827 = !DILocation(line: 0, scope: !2818)
!2828 = !DILocation(line: 60, column: 3, scope: !2818)
!2829 = !DILocation(line: 61, column: 7, scope: !2818)
!2830 = !DILocation(line: 62, column: 3, scope: !2818)
!2831 = !DILocation(line: 63, column: 7, scope: !2818)
!2832 = !DILocation(line: 64, column: 3, scope: !2818)
!2833 = !DILocation(line: 65, column: 7, scope: !2818)
!2834 = !DILocation(line: 66, column: 3, scope: !2818)
!2835 = !DILocation(line: 67, column: 7, scope: !2818)
!2836 = !DILocation(line: 68, column: 3, scope: !2818)
!2837 = !DILocation(line: 69, column: 7, scope: !2818)
!2838 = !DILocation(line: 70, column: 3, scope: !2818)
!2839 = !DILocation(line: 71, column: 7, scope: !2818)
!2840 = !DILocation(line: 72, column: 3, scope: !2818)
!2841 = !DILocation(line: 73, column: 7, scope: !2818)
!2842 = !DILocation(line: 74, column: 3, scope: !2818)
!2843 = !DILocation(line: 75, column: 7, scope: !2818)
!2844 = !DILocation(line: 76, column: 3, scope: !2818)
!2845 = !DILocation(line: 77, column: 7, scope: !2818)
!2846 = !DILocation(line: 78, column: 3, scope: !2818)
!2847 = !DILocation(line: 79, column: 7, scope: !2818)
!2848 = !DILocation(line: 80, column: 3, scope: !2818)
!2849 = !DILocation(line: 81, column: 7, scope: !2818)
!2850 = !DILocation(line: 82, column: 3, scope: !2818)
!2851 = !DILocation(line: 83, column: 7, scope: !2818)
!2852 = !DILocation(line: 84, column: 3, scope: !2818)
!2853 = !DILocation(line: 85, column: 7, scope: !2818)
!2854 = !DILocation(line: 86, column: 3, scope: !2818)
!2855 = !DILocation(line: 87, column: 7, scope: !2818)
!2856 = !DILocation(line: 88, column: 3, scope: !2818)
!2857 = !DILocation(line: 89, column: 7, scope: !2818)
!2858 = !DILocation(line: 90, column: 3, scope: !2818)
!2859 = !DILocation(line: 91, column: 7, scope: !2818)
!2860 = !DILocation(line: 92, column: 3, scope: !2818)
!2861 = !DILocation(line: 93, column: 7, scope: !2818)
!2862 = !DILocation(line: 94, column: 3, scope: !2818)
!2863 = !DILocation(line: 95, column: 7, scope: !2818)
!2864 = !DILocation(line: 96, column: 3, scope: !2818)
!2865 = !DILocation(line: 97, column: 7, scope: !2818)
!2866 = !DILocation(line: 98, column: 3, scope: !2818)
!2867 = !DILocation(line: 99, column: 7, scope: !2818)
!2868 = !DILocation(line: 100, column: 3, scope: !2818)
!2869 = !DILocation(line: 101, column: 7, scope: !2818)
!2870 = !DILocation(line: 102, column: 3, scope: !2818)
!2871 = !DILocation(line: 103, column: 7, scope: !2818)
!2872 = !DILocation(line: 104, column: 3, scope: !2818)
!2873 = !DILocation(line: 105, column: 7, scope: !2818)
!2874 = !DILocation(line: 106, column: 3, scope: !2818)
!2875 = !DILocation(line: 107, column: 7, scope: !2818)
!2876 = !DILocation(line: 108, column: 3, scope: !2818)
!2877 = !DILocation(line: 109, column: 7, scope: !2818)
!2878 = !DILocation(line: 110, column: 3, scope: !2818)
!2879 = !DILocation(line: 111, column: 7, scope: !2818)
!2880 = !DILocation(line: 112, column: 3, scope: !2818)
!2881 = !DILocation(line: 114, column: 38, scope: !2818)
!2882 = !DILocation(line: 114, column: 32, scope: !2818)
!2883 = !DILocation(line: 114, column: 28, scope: !2818)
!2884 = !DILocation(line: 114, column: 17, scope: !2818)
!2885 = !DILocation(line: 114, column: 3, scope: !2818)
!2886 = distinct !DISubprogram(name: "internal/reflectlite.quote", linkageName: "internal/reflectlite.quote", scope: !111, file: !111, line: 238, type: !1962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2887)
!2887 = !{!2888, !2889, !2890, !2891}
!2888 = !DILocalVariable(name: "s", arg: 1, scope: !2886, file: !111, line: 238, type: !38)
!2889 = !DILocalVariable(name: "buf", scope: !2886, file: !111, line: 239, type: !2114)
!2890 = !DILocalVariable(name: "width", scope: !2886, file: !111, line: 243, type: !1908)
!2891 = !DILocalVariable(name: "r", scope: !2886, file: !111, line: 244, type: !1967)
!2892 = !DILocation(line: 238, column: 6, scope: !2886)
!2893 = !DILocation(line: 239, column: 31, scope: !2886)
!2894 = !DILocation(line: 239, column: 30, scope: !2886)
!2895 = !DILocation(line: 239, column: 26, scope: !2886)
!2896 = !DILocation(line: 239, column: 33, scope: !2886)
!2897 = !DILocation(line: 239, column: 13, scope: !2886)
!2898 = !DILocation(line: 239, column: 2, scope: !2886)
!2899 = !DILocation(line: 242, column: 15, scope: !2886)
!2900 = !DILocation(line: 242, column: 25, scope: !2886)
!2901 = !DILocation(line: 242, column: 14, scope: !2886)
!2902 = !DILocation(line: 242, column: 2, scope: !2886)
!2903 = !DILocation(line: 243, column: 6, scope: !2886)
!2904 = !DILocation(line: 0, scope: !2886)
!2905 = !DILocation(line: 238, column: 12, scope: !2886)
!2906 = !DILocation(line: 243, column: 22, scope: !2886)
!2907 = !DILocation(line: 243, column: 21, scope: !2886)
!2908 = !DILocation(line: 243, column: 25, scope: !2886)
!2909 = !DILocation(line: 244, column: 13, scope: !2886)
!2910 = !DILocation(line: 244, column: 14, scope: !2886)
!2911 = !DILocation(line: 244, column: 12, scope: !2886)
!2912 = !DILocation(line: 244, column: 3, scope: !2886)
!2913 = !DILocation(line: 245, column: 3, scope: !2886)
!2914 = !DILocation(line: 246, column: 6, scope: !2886)
!2915 = !DILocation(line: 246, column: 8, scope: !2886)
!2916 = !DILocation(line: 247, column: 39, scope: !2886)
!2917 = !DILocation(line: 247, column: 38, scope: !2886)
!2918 = !DILocation(line: 247, column: 4, scope: !2886)
!2919 = !DILocation(line: 247, column: 7, scope: !2886)
!2920 = !DILocation(line: 249, column: 6, scope: !2886)
!2921 = !DILocation(line: 249, column: 12, scope: !2886)
!2922 = !DILocation(line: 249, column: 20, scope: !2886)
!2923 = !DILocation(line: 249, column: 22, scope: !2886)
!2924 = !DILocation(line: 250, column: 17, scope: !2886)
!2925 = !DILocation(line: 250, column: 16, scope: !2886)
!2926 = !DILocation(line: 250, column: 4, scope: !2886)
!2927 = !DILocation(line: 251, column: 17, scope: !2886)
!2928 = !DILocation(line: 251, column: 31, scope: !2886)
!2929 = !DILocation(line: 251, column: 32, scope: !2886)
!2930 = !DILocation(line: 251, column: 35, scope: !2886)
!2931 = !DILocation(line: 251, column: 30, scope: !2886)
!2932 = !DILocation(line: 251, column: 39, scope: !2886)
!2933 = !DILocation(line: 251, column: 16, scope: !2886)
!2934 = !DILocation(line: 251, column: 4, scope: !2886)
!2935 = !DILocation(line: 252, column: 17, scope: !2886)
!2936 = !DILocation(line: 252, column: 31, scope: !2886)
!2937 = !DILocation(line: 252, column: 32, scope: !2886)
!2938 = !DILocation(line: 252, column: 35, scope: !2886)
!2939 = !DILocation(line: 252, column: 30, scope: !2886)
!2940 = !DILocation(line: 252, column: 40, scope: !2886)
!2941 = !DILocation(line: 252, column: 16, scope: !2886)
!2942 = !DILocation(line: 252, column: 4, scope: !2886)
!2943 = !DILocation(line: 243, column: 34, scope: !2886)
!2944 = !DILocation(line: 243, column: 36, scope: !2886)
!2945 = !DILocation(line: 243, column: 35, scope: !2886)
!2946 = !DILocation(line: 243, column: 30, scope: !2886)
!2947 = !DILocation(line: 255, column: 27, scope: !2886)
!2948 = !DILocation(line: 255, column: 32, scope: !2886)
!2949 = !DILocation(line: 255, column: 26, scope: !2886)
!2950 = !DILocation(line: 255, column: 3, scope: !2886)
!2951 = !DILocation(line: 257, column: 15, scope: !2886)
!2952 = !DILocation(line: 257, column: 25, scope: !2886)
!2953 = !DILocation(line: 257, column: 14, scope: !2886)
!2954 = !DILocation(line: 257, column: 2, scope: !2886)
!2955 = !DILocation(line: 258, column: 16, scope: !2886)
!2956 = !DILocation(line: 258, column: 15, scope: !2886)
!2957 = !DILocation(line: 258, column: 2, scope: !2886)
!2958 = distinct !DISubprogram(name: "internal/reflectlite.appendEscapedRune", linkageName: "internal/reflectlite.appendEscapedRune", scope: !111, file: !111, line: 261, type: !2112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2959)
!2959 = !{!2960, !2961, !2962, !2963, !2964}
!2960 = !DILocalVariable(name: "buf", arg: 1, scope: !2958, file: !111, line: 261, type: !2114)
!2961 = !DILocalVariable(name: "r", arg: 2, scope: !2958, file: !111, line: 261, type: !1967)
!2962 = !DILocalVariable(name: "n", scope: !2958, file: !111, line: 272, type: !1908)
!2963 = !DILocalVariable(name: "s", scope: !2958, file: !111, line: 302, type: !1908)
!2964 = !DILocalVariable(name: "s", scope: !2958, file: !111, line: 307, type: !1908)
!2965 = !DILocation(line: 261, column: 6, scope: !2958)
!2966 = !DILocation(line: 265, column: 6, scope: !2958)
!2967 = !DILocation(line: 266, column: 5, scope: !2958)
!2968 = !DILocation(line: 266, column: 7, scope: !2958)
!2969 = !DILocation(line: 0, scope: !2958)
!2970 = !DILocation(line: 267, column: 16, scope: !2958)
!2971 = !DILocation(line: 267, column: 25, scope: !2958)
!2972 = !DILocation(line: 267, column: 15, scope: !2958)
!2973 = !DILocation(line: 267, column: 3, scope: !2958)
!2974 = !DILocation(line: 268, column: 16, scope: !2958)
!2975 = !DILocation(line: 268, column: 26, scope: !2958)
!2976 = !DILocation(line: 268, column: 25, scope: !2958)
!2977 = !DILocation(line: 268, column: 28, scope: !2958)
!2978 = !DILocation(line: 268, column: 15, scope: !2958)
!2979 = !DILocation(line: 268, column: 3, scope: !2958)
!2980 = !DILocation(line: 269, column: 10, scope: !2958)
!2981 = !DILocation(line: 269, column: 3, scope: !2958)
!2982 = !DILocation(line: 266, column: 25, scope: !2958)
!2983 = !DILocation(line: 266, column: 27, scope: !2958)
!2984 = !DILocation(line: 271, column: 13, scope: !2958)
!2985 = !DILocation(line: 271, column: 12, scope: !2958)
!2986 = !DILocation(line: 272, column: 31, scope: !2958)
!2987 = !DILocation(line: 272, column: 36, scope: !2958)
!2988 = !DILocation(line: 272, column: 23, scope: !2958)
!2989 = !DILocation(line: 272, column: 3, scope: !2958)
!2990 = !DILocation(line: 273, column: 16, scope: !2958)
!2991 = !DILocation(line: 273, column: 30, scope: !2958)
!2992 = !DILocation(line: 273, column: 28, scope: !2958)
!2993 = !DILocation(line: 273, column: 15, scope: !2958)
!2994 = !DILocation(line: 273, column: 3, scope: !2958)
!2995 = !DILocation(line: 274, column: 10, scope: !2958)
!2996 = !DILocation(line: 274, column: 3, scope: !2958)
!2997 = !DILocation(line: 276, column: 9, scope: !2958)
!2998 = !DILocation(line: 277, column: 7, scope: !2958)
!2999 = !DILocation(line: 278, column: 16, scope: !2958)
!3000 = !DILocation(line: 278, column: 15, scope: !2958)
!3001 = !DILocation(line: 278, column: 3, scope: !2958)
!3002 = !DILocation(line: 261, column: 24, scope: !2958)
!3003 = !DILocation(line: 312, column: 9, scope: !2958)
!3004 = !DILocation(line: 312, column: 2, scope: !2958)
!3005 = !DILocation(line: 279, column: 7, scope: !2958)
!3006 = !DILocation(line: 280, column: 16, scope: !2958)
!3007 = !DILocation(line: 280, column: 15, scope: !2958)
!3008 = !DILocation(line: 280, column: 3, scope: !2958)
!3009 = !DILocation(line: 281, column: 7, scope: !2958)
!3010 = !DILocation(line: 282, column: 16, scope: !2958)
!3011 = !DILocation(line: 282, column: 15, scope: !2958)
!3012 = !DILocation(line: 282, column: 3, scope: !2958)
!3013 = !DILocation(line: 283, column: 7, scope: !2958)
!3014 = !DILocation(line: 284, column: 16, scope: !2958)
!3015 = !DILocation(line: 284, column: 15, scope: !2958)
!3016 = !DILocation(line: 284, column: 3, scope: !2958)
!3017 = !DILocation(line: 285, column: 7, scope: !2958)
!3018 = !DILocation(line: 286, column: 16, scope: !2958)
!3019 = !DILocation(line: 286, column: 15, scope: !2958)
!3020 = !DILocation(line: 286, column: 3, scope: !2958)
!3021 = !DILocation(line: 287, column: 7, scope: !2958)
!3022 = !DILocation(line: 288, column: 16, scope: !2958)
!3023 = !DILocation(line: 288, column: 15, scope: !2958)
!3024 = !DILocation(line: 288, column: 3, scope: !2958)
!3025 = !DILocation(line: 289, column: 7, scope: !2958)
!3026 = !DILocation(line: 290, column: 16, scope: !2958)
!3027 = !DILocation(line: 290, column: 15, scope: !2958)
!3028 = !DILocation(line: 290, column: 3, scope: !2958)
!3029 = !DILocation(line: 293, column: 8, scope: !2958)
!3030 = !DILocation(line: 293, column: 10, scope: !2958)
!3031 = !DILocation(line: 293, column: 16, scope: !2958)
!3032 = !DILocation(line: 294, column: 17, scope: !2958)
!3033 = !DILocation(line: 294, column: 16, scope: !2958)
!3034 = !DILocation(line: 294, column: 4, scope: !2958)
!3035 = !DILocation(line: 295, column: 17, scope: !2958)
!3036 = !DILocation(line: 295, column: 36, scope: !2958)
!3037 = !DILocation(line: 295, column: 35, scope: !2958)
!3038 = !DILocation(line: 295, column: 38, scope: !2958)
!3039 = !DILocation(line: 295, column: 30, scope: !2958)
!3040 = !DILocation(line: 295, column: 42, scope: !2958)
!3041 = !DILocation(line: 295, column: 16, scope: !2958)
!3042 = !DILocation(line: 295, column: 4, scope: !2958)
!3043 = !DILocation(line: 296, column: 17, scope: !2958)
!3044 = !DILocation(line: 296, column: 36, scope: !2958)
!3045 = !DILocation(line: 296, column: 35, scope: !2958)
!3046 = !DILocation(line: 296, column: 38, scope: !2958)
!3047 = !DILocation(line: 296, column: 30, scope: !2958)
!3048 = !DILocation(line: 296, column: 43, scope: !2958)
!3049 = !DILocation(line: 296, column: 16, scope: !2958)
!3050 = !DILocation(line: 296, column: 4, scope: !2958)
!3051 = !DILocation(line: 297, column: 24, scope: !2958)
!3052 = !DILocation(line: 297, column: 23, scope: !2958)
!3053 = !DILocation(line: 297, column: 8, scope: !2958)
!3054 = !DILocation(line: 298, column: 4, scope: !2958)
!3055 = !DILocation(line: 261, column: 36, scope: !2958)
!3056 = !DILocation(line: 301, column: 17, scope: !2958)
!3057 = !DILocation(line: 301, column: 16, scope: !2958)
!3058 = !DILocation(line: 301, column: 4, scope: !2958)
!3059 = !DILocation(line: 302, column: 8, scope: !2958)
!3060 = !DILocation(line: 302, column: 17, scope: !2958)
!3061 = !DILocation(line: 302, column: 19, scope: !2958)
!3062 = !DILocation(line: 303, column: 18, scope: !2958)
!3063 = !DILocation(line: 303, column: 32, scope: !2958)
!3064 = !DILocation(line: 303, column: 40, scope: !2958)
!3065 = !DILocation(line: 303, column: 33, scope: !2958)
!3066 = !DILocation(line: 303, column: 42, scope: !2958)
!3067 = !DILocation(line: 303, column: 31, scope: !2958)
!3068 = !DILocation(line: 303, column: 47, scope: !2958)
!3069 = !DILocation(line: 303, column: 17, scope: !2958)
!3070 = !DILocation(line: 303, column: 5, scope: !2958)
!3071 = !DILocation(line: 302, column: 25, scope: !2958)
!3072 = !DILocation(line: 300, column: 8, scope: !2958)
!3073 = !DILocation(line: 300, column: 10, scope: !2958)
!3074 = !DILocation(line: 306, column: 17, scope: !2958)
!3075 = !DILocation(line: 306, column: 16, scope: !2958)
!3076 = !DILocation(line: 306, column: 4, scope: !2958)
!3077 = !DILocation(line: 307, column: 8, scope: !2958)
!3078 = !DILocation(line: 307, column: 17, scope: !2958)
!3079 = !DILocation(line: 307, column: 19, scope: !2958)
!3080 = !DILocation(line: 308, column: 18, scope: !2958)
!3081 = !DILocation(line: 308, column: 32, scope: !2958)
!3082 = !DILocation(line: 308, column: 40, scope: !2958)
!3083 = !DILocation(line: 308, column: 33, scope: !2958)
!3084 = !DILocation(line: 308, column: 42, scope: !2958)
!3085 = !DILocation(line: 308, column: 31, scope: !2958)
!3086 = !DILocation(line: 308, column: 47, scope: !2958)
!3087 = !DILocation(line: 308, column: 17, scope: !2958)
!3088 = !DILocation(line: 308, column: 5, scope: !2958)
!3089 = !DILocation(line: 307, column: 25, scope: !2958)
!3090 = !DILocation(line: 293, column: 19, scope: !2958)
!3091 = !DILocation(line: 293, column: 21, scope: !2958)
!3092 = distinct !DISubprogram(name: "internal/reflectlite.isPrint", linkageName: "internal/reflectlite.isPrint", scope: !111, file: !111, line: 316, type: !2233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3093)
!3093 = !{!3094}
!3094 = !DILocalVariable(name: "r", arg: 1, scope: !3092, file: !111, line: 316, type: !1967)
!3095 = !DILocation(line: 316, column: 6, scope: !3092)
!3096 = !DILocation(line: 317, column: 5, scope: !3092)
!3097 = !DILocation(line: 317, column: 7, scope: !3092)
!3098 = !DILocation(line: 0, scope: !3092)
!3099 = !DILocation(line: 318, column: 14, scope: !3092)
!3100 = !DILocation(line: 318, column: 11, scope: !3092)
!3101 = !DILocation(line: 318, column: 19, scope: !3092)
!3102 = !DILocation(line: 318, column: 21, scope: !3092)
!3103 = !DILocation(line: 320, column: 4, scope: !3092)
!3104 = !DILocation(line: 322, column: 14, scope: !3092)
!3105 = !DILocation(line: 322, column: 11, scope: !3092)
!3106 = !DILocation(line: 322, column: 19, scope: !3092)
!3107 = !DILocation(line: 322, column: 21, scope: !3092)
!3108 = !DILocation(line: 324, column: 11, scope: !3092)
!3109 = !DILocation(line: 324, column: 13, scope: !3092)
!3110 = !DILocation(line: 324, column: 4, scope: !3092)
!3111 = !DILocation(line: 326, column: 3, scope: !3092)
!3112 = !DILocation(line: 330, column: 2, scope: !3092)
!3113 = distinct !DISubprogram(name: "(internal/reflectlite.Kind).String$invoke", linkageName: "(internal/reflectlite.Kind).String$invoke", scope: !27, file: !27, line: 57, type: !2819, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032)
!3114 = !DILocation(line: 57, column: 15, scope: !3113)
!3115 = distinct !DISubprogram(name: "(*internal/reflectlite.ValueError).Error", linkageName: "(*internal/reflectlite.ValueError).Error", scope: !316, file: !316, line: 1789, type: !3116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3123)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!3118}
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64, align: 64, dwarfAddressSpace: 0)
!3119 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.ValueError", baseType: !3120)
!3120 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !3121)
!3121 = !{!37, !3122}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "Kind", baseType: !2821, size: 8, align: 8, offset: 128)
!3123 = !{!3124}
!3124 = !DILocalVariable(name: "e", arg: 1, scope: !3115, file: !316, line: 1789, type: !3118)
!3125 = !DILocation(line: 1789, column: 22, scope: !3115)
!3126 = !DILocation(line: 1790, column: 5, scope: !3115)
!3127 = !DILocation(line: 1790, column: 7, scope: !3115)
!3128 = !DILocation(line: 1790, column: 12, scope: !3115)
!3129 = !DILocation(line: 0, scope: !3115)
!3130 = !DILocation(line: 1791, column: 32, scope: !3115)
!3131 = !DILocation(line: 1791, column: 34, scope: !3115)
!3132 = !DILocation(line: 1791, column: 30, scope: !3115)
!3133 = !DILocation(line: 1791, column: 41, scope: !3115)
!3134 = !DILocation(line: 1791, column: 3, scope: !3115)
!3135 = !DILocation(line: 1793, column: 31, scope: !3115)
!3136 = !DILocation(line: 1793, column: 33, scope: !3115)
!3137 = !DILocation(line: 1793, column: 29, scope: !3115)
!3138 = !DILocation(line: 1793, column: 40, scope: !3115)
!3139 = !DILocation(line: 1793, column: 51, scope: !3115)
!3140 = !DILocation(line: 1793, column: 53, scope: !3115)
!3141 = !DILocation(line: 1793, column: 64, scope: !3115)
!3142 = !DILocation(line: 1793, column: 49, scope: !3115)
!3143 = !DILocation(line: 1793, column: 67, scope: !3115)
!3144 = !DILocation(line: 1793, column: 2, scope: !3115)
!3145 = distinct !DISubprogram(name: "(internal/reflectlite.badSyntax).Error", linkageName: "(internal/reflectlite.badSyntax).Error", scope: !111, file: !111, line: 16, type: !3146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3148)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!1195}
!3148 = !{!3149}
!3149 = !DILocalVariable(name: "arg0", arg: 1, scope: !3145, file: !111, line: 16, type: !1195)
!3150 = !DILocation(line: 17, column: 2, scope: !3145)
!3151 = distinct !DISubprogram(name: "(internal/reflectlite.badSyntax).Error$invoke", linkageName: "(internal/reflectlite.badSyntax).Error$invoke", scope: !111, file: !111, line: 16, type: !3146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032)
!3152 = !DILocation(line: 16, column: 18, scope: !3151)
!3153 = distinct !DISubprogram(name: "runtime/interrupt.In", linkageName: "runtime/interrupt.In", scope: !3154, file: !3154, line: 28, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1516)
!3154 = !DIFile(filename: "interrupt_none.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!3155 = !DISubroutineType(types: !342)
!3156 = !DILocation(line: 30, column: 2, scope: !3153)
!3157 = distinct !DISubprogram(name: "(*internal/task.Mutex).Lock", linkageName: "(*internal/task.Mutex).Lock", scope: !378, file: !378, line: 31, type: !3158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3161)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!3160}
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64, dwarfAddressSpace: 0)
!3161 = !{!3162}
!3162 = !DILocalVariable(name: "m", arg: 1, scope: !3157, file: !378, line: 31, type: !3160)
!3163 = !DILocation(line: 31, column: 17, scope: !3157)
!3164 = !DILocation(line: 33, column: 5, scope: !3157)
!3165 = !DILocation(line: 33, column: 7, scope: !3157)
!3166 = !DILocation(line: 33, column: 27, scope: !3157)
!3167 = !DILocation(line: 0, scope: !3157)
!3168 = !DILocation(line: 35, column: 3, scope: !3157)
!3169 = !DILocation(line: 43, column: 6, scope: !3157)
!3170 = !DILocation(line: 43, column: 8, scope: !3157)
!3171 = !DILocation(line: 43, column: 18, scope: !3157)
!3172 = !DILocation(line: 43, column: 22, scope: !3157)
!3173 = !DILocation(line: 45, column: 3, scope: !3157)
!3174 = !DILocation(line: 45, column: 5, scope: !3157)
!3175 = !DILocation(line: 45, column: 15, scope: !3157)
!3176 = !DILocation(line: 47, column: 2, scope: !3157)
!3177 = distinct !DISubprogram(name: "(*internal/task.Mutex).Unlock", linkageName: "(*internal/task.Mutex).Unlock", scope: !378, file: !378, line: 49, type: !3158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3178)
!3178 = !{!3179, !3180}
!3179 = !DILocalVariable(name: "m", arg: 1, scope: !3177, file: !378, line: 49, type: !3160)
!3180 = !DILocalVariable(name: "old", scope: !3177, file: !378, line: 50, type: !98)
!3181 = !DILocation(line: 49, column: 17, scope: !3177)
!3182 = !DILocation(line: 50, column: 12, scope: !3177)
!3183 = !DILocation(line: 50, column: 14, scope: !3177)
!3184 = !DILocation(line: 50, column: 24, scope: !3177)
!3185 = !DILocation(line: 50, column: 5, scope: !3177)
!3186 = !DILocation(line: 50, column: 29, scope: !3177)
!3187 = !DILocation(line: 50, column: 33, scope: !3177)
!3188 = !DILocation(line: 0, scope: !3177)
!3189 = !DILocation(line: 52, column: 8, scope: !3177)
!3190 = !DILocation(line: 53, column: 12, scope: !3177)
!3191 = !DILocation(line: 53, column: 16, scope: !3177)
!3192 = !DILocation(line: 55, column: 3, scope: !3177)
!3193 = !DILocation(line: 55, column: 5, scope: !3177)
!3194 = !DILocation(line: 55, column: 15, scope: !3177)
!3195 = !DILocation(line: 57, column: 2, scope: !3177)
!3196 = distinct !DISubprogram(name: "(*internal/task.Semaphore).Wait", linkageName: "(*internal/task.Semaphore).Wait", scope: !3197, file: !3197, line: 21, type: !3198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3201)
!3197 = !DIFile(filename: "semaphore.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!3200}
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64, dwarfAddressSpace: 0)
!3201 = !{!3202, !3203, !3204}
!3202 = !DILocalVariable(name: "s", arg: 1, scope: !3196, file: !3197, line: 21, type: !3200)
!3203 = !DILocalVariable(name: "delta", scope: !3196, file: !3197, line: 22, type: !381)
!3204 = !DILocalVariable(name: "value", scope: !3196, file: !3197, line: 23, type: !98)
!3205 = !DILocation(line: 21, column: 21, scope: !3196)
!3206 = !DILocation(line: 22, column: 2, scope: !3196)
!3207 = !DILocation(line: 23, column: 11, scope: !3196)
!3208 = !DILocation(line: 23, column: 13, scope: !3196)
!3209 = !DILocation(line: 23, column: 30, scope: !3196)
!3210 = !DILocation(line: 23, column: 22, scope: !3196)
!3211 = !DILocation(line: 23, column: 2, scope: !3196)
!3212 = !DILocation(line: 0, scope: !3196)
!3213 = !DILocation(line: 25, column: 12, scope: !3196)
!3214 = !DILocation(line: 25, column: 19, scope: !3196)
!3215 = !DILocation(line: 27, column: 4, scope: !3196)
!3216 = !DILocation(line: 29, column: 3, scope: !3196)
!3217 = !DILocation(line: 29, column: 5, scope: !3196)
!3218 = !DILocation(line: 29, column: 16, scope: !3196)
!3219 = !DILocation(line: 29, column: 15, scope: !3196)
!3220 = !DILocation(line: 30, column: 11, scope: !3196)
!3221 = !DILocation(line: 30, column: 13, scope: !3196)
!3222 = !DILocation(line: 30, column: 23, scope: !3196)
!3223 = !DILocation(line: 30, column: 3, scope: !3196)
!3224 = distinct !DISubprogram(name: "internal/task.Init", linkageName: "internal/task.Init", scope: !330, file: !330, line: 55, type: !3225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3227)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!43}
!3227 = !{!3228, !3229}
!3228 = !DILocalVariable(name: "sp", arg: 1, scope: !3224, file: !330, line: 55, type: !43)
!3229 = !DILocalVariable(name: "stackTop", scope: !3224, file: !330, line: 24, type: !43)
!3230 = !DILocation(line: 55, column: 6, scope: !3224)
!3231 = !DILocation(line: 56, column: 28, scope: !3224)
!3232 = !DILocation(line: 56, column: 17, scope: !3224)
!3233 = !DILocation(line: 57, column: 18, scope: !3224)
!3234 = !DILocation(line: 58, column: 2, scope: !3224)
!3235 = distinct !DISubprogram(name: "internal/task.Current", linkageName: "internal/task.Current", scope: !330, file: !330, line: 61, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3236)
!3236 = !{!3237}
!3237 = !DILocalVariable(name: "t", scope: !3235, file: !330, line: 62, type: !331)
!3238 = !DILocation(line: 62, column: 34, scope: !3235)
!3239 = !DILocation(line: 62, column: 2, scope: !3235)
!3240 = !DILocation(line: 63, column: 5, scope: !3235)
!3241 = !DILocation(line: 63, column: 7, scope: !3235)
!3242 = !DILocation(line: 0, scope: !3235)
!3243 = !DILocation(line: 64, column: 15, scope: !3235)
!3244 = !DILocation(line: 66, column: 9, scope: !3235)
!3245 = !DILocation(line: 66, column: 2, scope: !3235)
!3246 = distinct !DISubprogram(name: "internal/task.Pause", linkageName: "internal/task.Pause", scope: !330, file: !330, line: 73, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3247)
!3247 = !{!3248}
!3248 = !DILocalVariable(name: "t", scope: !3246, file: !330, line: 75, type: !331)
!3249 = !DILocation(line: 75, column: 14, scope: !3246)
!3250 = !DILocation(line: 75, column: 2, scope: !3246)
!3251 = !DILocation(line: 0, scope: !3246)
!3252 = !DILocation(line: 77, column: 27, scope: !3246)
!3253 = !DILocation(line: 77, column: 29, scope: !3246)
!3254 = !DILocation(line: 77, column: 35, scope: !3246)
!3255 = !DILocation(line: 77, column: 10, scope: !3246)
!3256 = !DILocation(line: 79, column: 2, scope: !3246)
!3257 = !DILocation(line: 79, column: 4, scope: !3246)
!3258 = !DILocation(line: 79, column: 10, scope: !3246)
!3259 = !DILocation(line: 79, column: 23, scope: !3246)
!3260 = !DILocation(line: 80, column: 2, scope: !3246)
!3261 = distinct !DISubprogram(name: "internal/task.taskExited", linkageName: "tinygo_task_exited", scope: !330, file: !330, line: 125, type: !3262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3264)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!331}
!3264 = !{!3265, !3266, !3267, !3269}
!3265 = !DILocalVariable(name: "t", arg: 1, scope: !3261, file: !330, line: 125, type: !331)
!3266 = !DILocalVariable(name: "found", scope: !3261, file: !330, line: 133, type: !371)
!3267 = !DILocalVariable(name: "q", scope: !3261, file: !330, line: 134, type: !3268)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64, dwarfAddressSpace: 0)
!3269 = !DILocalVariable(name: "otherGoroutines", scope: !3261, file: !330, line: 99, type: !98)
!3270 = !DILocation(line: 125, column: 6, scope: !3261)
!3271 = !DILocation(line: 0, scope: !3261)
!3272 = !DILocation(line: 127, column: 24, scope: !3261)
!3273 = !DILocation(line: 127, column: 26, scope: !3261)
!3274 = !DILocation(line: 127, column: 32, scope: !3261)
!3275 = !DILocation(line: 127, column: 10, scope: !3261)
!3276 = !DILocation(line: 132, column: 21, scope: !3261)
!3277 = !DILocation(line: 133, column: 2, scope: !3261)
!3278 = !DILocation(line: 134, column: 6, scope: !3261)
!3279 = !DILocation(line: 134, column: 26, scope: !3261)
!3280 = !DILocation(line: 134, column: 25, scope: !3261)
!3281 = !DILocation(line: 134, column: 28, scope: !3261)
!3282 = !DILocation(line: 135, column: 7, scope: !3261)
!3283 = !DILocation(line: 135, column: 6, scope: !3261)
!3284 = !DILocation(line: 135, column: 12, scope: !3261)
!3285 = !DILocation(line: 135, column: 9, scope: !3261)
!3286 = !DILocation(line: 136, column: 5, scope: !3261)
!3287 = !DILocation(line: 136, column: 9, scope: !3261)
!3288 = !DILocation(line: 136, column: 11, scope: !3261)
!3289 = !DILocation(line: 136, column: 17, scope: !3261)
!3290 = !DILocation(line: 136, column: 4, scope: !3261)
!3291 = !DILocation(line: 137, column: 4, scope: !3261)
!3292 = !DILocation(line: 134, column: 43, scope: !3261)
!3293 = !DILocation(line: 134, column: 42, scope: !3261)
!3294 = !DILocation(line: 134, column: 46, scope: !3261)
!3295 = !DILocation(line: 134, column: 52, scope: !3261)
!3296 = !DILocation(line: 134, column: 36, scope: !3261)
!3297 = !DILocation(line: 141, column: 2, scope: !3261)
!3298 = !DILocation(line: 142, column: 23, scope: !3261)
!3299 = !DILocation(line: 145, column: 6, scope: !3261)
!3300 = !DILocation(line: 148, column: 2, scope: !3261)
!3301 = !DILocation(line: 146, column: 15, scope: !3261)
!3302 = distinct !DISubprogram(name: "(*internal/task.waitGroup).done", linkageName: "(*internal/task.waitGroup).done", scope: !330, file: !330, line: 163, type: !3303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3306)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!3305}
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64, dwarfAddressSpace: 0)
!3306 = !{!3307}
!3307 = !DILocalVariable(name: "wg", arg: 1, scope: !3302, file: !330, line: 163, type: !3305)
!3308 = !DILocation(line: 163, column: 22, scope: !3302)
!3309 = !DILocation(line: 164, column: 5, scope: !3302)
!3310 = !DILocation(line: 164, column: 8, scope: !3302)
!3311 = !DILocation(line: 164, column: 13, scope: !3302)
!3312 = !DILocation(line: 164, column: 26, scope: !3302)
!3313 = !DILocation(line: 0, scope: !3302)
!3314 = !DILocation(line: 165, column: 3, scope: !3302)
!3315 = !DILocation(line: 165, column: 6, scope: !3302)
!3316 = !DILocation(line: 165, column: 15, scope: !3302)
!3317 = !DILocation(line: 167, column: 2, scope: !3302)
!3318 = distinct !DISubprogram(name: "(*internal/task.waitGroup).wait", linkageName: "(*internal/task.waitGroup).wait", scope: !330, file: !330, line: 169, type: !3303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3319)
!3319 = !{!3320, !3321}
!3320 = !DILocalVariable(name: "wg", arg: 1, scope: !3318, file: !330, line: 169, type: !3305)
!3321 = !DILocalVariable(name: "val", scope: !3318, file: !330, line: 171, type: !98)
!3322 = !DILocation(line: 169, column: 22, scope: !3318)
!3323 = !DILocation(line: 0, scope: !3318)
!3324 = !DILocation(line: 171, column: 10, scope: !3318)
!3325 = !DILocation(line: 171, column: 13, scope: !3318)
!3326 = !DILocation(line: 171, column: 19, scope: !3318)
!3327 = !DILocation(line: 171, column: 3, scope: !3318)
!3328 = !DILocation(line: 172, column: 6, scope: !3318)
!3329 = !DILocation(line: 172, column: 10, scope: !3318)
!3330 = !DILocation(line: 173, column: 4, scope: !3318)
!3331 = !DILocation(line: 175, column: 3, scope: !3318)
!3332 = !DILocation(line: 175, column: 6, scope: !3318)
!3333 = !DILocation(line: 175, column: 13, scope: !3318)
!3334 = !DILocation(line: 175, column: 12, scope: !3318)
!3335 = distinct !DISubprogram(name: "internal/task.initWaitGroup", linkageName: "internal/task.initWaitGroup", scope: !330, file: !330, line: 157, type: !3336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3338)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!98}
!3338 = !{!3339, !3340}
!3339 = !DILocalVariable(name: "n", arg: 1, scope: !3335, file: !330, line: 157, type: !98)
!3340 = !DILocalVariable(name: "wg", scope: !3335, file: !330, line: 158, type: !401)
!3341 = !DILocation(line: 157, column: 6, scope: !3335)
!3342 = !DILocation(line: 158, column: 6, scope: !3335)
!3343 = !DILocation(line: 159, column: 5, scope: !3335)
!3344 = !DILocation(line: 159, column: 2, scope: !3335)
!3345 = !DILocation(line: 159, column: 13, scope: !3335)
!3346 = !DILocation(line: 159, column: 12, scope: !3335)
!3347 = !DILocation(line: 160, column: 9, scope: !3335)
!3348 = !DILocation(line: 160, column: 2, scope: !3335)
!3349 = distinct !DISubprogram(name: "internal/task.GCStopWorldAndScan", linkageName: "internal/task.GCStopWorldAndScan", scope: !330, file: !330, line: 192, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3350)
!3350 = !{!3351, !3352, !3353, !3354, !3355, !3356}
!3351 = !DILocalVariable(name: "current", scope: !3349, file: !330, line: 193, type: !331)
!3352 = !DILocalVariable(name: "otherGoroutines", scope: !3349, file: !330, line: 99, type: !98)
!3353 = !DILocalVariable(name: "scanWaitGroup", scope: !3349, file: !330, line: 151, type: !401)
!3354 = !DILocalVariable(name: "activeTasks", scope: !3349, file: !330, line: 45, type: !331)
!3355 = !DILocalVariable(name: "t", scope: !3349, file: !330, line: 212, type: !331)
!3356 = !DILocalVariable(name: "t", scope: !3349, file: !330, line: 223, type: !331)
!3357 = !DILocation(line: 193, column: 20, scope: !3349)
!3358 = !DILocation(line: 193, column: 2, scope: !3349)
!3359 = !DILocation(line: 196, column: 17, scope: !3349)
!3360 = !DILocation(line: 196, column: 20, scope: !3349)
!3361 = !DILocation(line: 0, scope: !3349)
!3362 = !DILocation(line: 199, column: 22, scope: !3349)
!3363 = !DILocation(line: 202, column: 21, scope: !3349)
!3364 = !DILocation(line: 206, column: 16, scope: !3349)
!3365 = !DILocation(line: 209, column: 33, scope: !3349)
!3366 = !DILocation(line: 209, column: 32, scope: !3349)
!3367 = !DILocation(line: 209, column: 3, scope: !3349)
!3368 = !DILocation(line: 212, column: 12, scope: !3349)
!3369 = !DILocation(line: 212, column: 7, scope: !3349)
!3370 = !DILocation(line: 212, column: 25, scope: !3349)
!3371 = !DILocation(line: 212, column: 27, scope: !3349)
!3372 = !DILocation(line: 213, column: 7, scope: !3349)
!3373 = !DILocation(line: 213, column: 12, scope: !3349)
!3374 = !DILocation(line: 213, column: 9, scope: !3349)
!3375 = !DILocation(line: 214, column: 32, scope: !3349)
!3376 = !DILocation(line: 214, column: 34, scope: !3349)
!3377 = !DILocation(line: 214, column: 40, scope: !3349)
!3378 = !DILocation(line: 214, column: 31, scope: !3349)
!3379 = !DILocation(line: 212, column: 39, scope: !3349)
!3380 = !DILocation(line: 212, column: 41, scope: !3349)
!3381 = !DILocation(line: 212, column: 47, scope: !3349)
!3382 = !DILocation(line: 212, column: 35, scope: !3349)
!3383 = !DILocation(line: 219, column: 21, scope: !3349)
!3384 = !DILocation(line: 223, column: 11, scope: !3349)
!3385 = !DILocation(line: 223, column: 6, scope: !3349)
!3386 = !DILocation(line: 223, column: 24, scope: !3349)
!3387 = !DILocation(line: 223, column: 26, scope: !3349)
!3388 = !DILocation(line: 224, column: 6, scope: !3349)
!3389 = !DILocation(line: 224, column: 11, scope: !3349)
!3390 = !DILocation(line: 224, column: 8, scope: !3349)
!3391 = !DILocation(line: 225, column: 14, scope: !3349)
!3392 = !DILocation(line: 225, column: 16, scope: !3349)
!3393 = !DILocation(line: 225, column: 22, scope: !3349)
!3394 = !DILocation(line: 225, column: 35, scope: !3349)
!3395 = !DILocation(line: 225, column: 37, scope: !3349)
!3396 = !DILocation(line: 225, column: 43, scope: !3349)
!3397 = !DILocation(line: 225, column: 13, scope: !3349)
!3398 = !DILocation(line: 223, column: 38, scope: !3349)
!3399 = !DILocation(line: 223, column: 40, scope: !3349)
!3400 = !DILocation(line: 223, column: 46, scope: !3349)
!3401 = !DILocation(line: 223, column: 34, scope: !3349)
!3402 = !DILocation(line: 230, column: 18, scope: !3349)
!3403 = !DILocation(line: 233, column: 15, scope: !3349)
!3404 = !DILocation(line: 234, column: 2, scope: !3349)
!3405 = distinct !DISubprogram(name: "internal/task.GCResumeWorld", linkageName: "internal/task.GCResumeWorld", scope: !330, file: !330, line: 237, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3406)
!3406 = !{!3407, !3408}
!3407 = !DILocalVariable(name: "otherGoroutines", scope: !3405, file: !330, line: 99, type: !98)
!3408 = !DILocalVariable(name: "scanWaitGroup", scope: !3405, file: !330, line: 151, type: !401)
!3409 = !DILocation(line: 239, column: 17, scope: !3405)
!3410 = !DILocation(line: 239, column: 20, scope: !3405)
!3411 = !DILocation(line: 0, scope: !3405)
!3412 = !DILocation(line: 241, column: 3, scope: !3405)
!3413 = !DILocation(line: 245, column: 32, scope: !3405)
!3414 = !DILocation(line: 245, column: 31, scope: !3405)
!3415 = !DILocation(line: 245, column: 2, scope: !3405)
!3416 = !DILocation(line: 248, column: 15, scope: !3405)
!3417 = !DILocation(line: 251, column: 17, scope: !3405)
!3418 = !DILocation(line: 254, column: 23, scope: !3405)
!3419 = !DILocation(line: 255, column: 2, scope: !3405)
!3420 = distinct !DISubprogram(name: "internal/task.tingyo_task_gc_pause", linkageName: "tinygo_task_gc_pause", scope: !330, file: !330, line: 266, type: !3421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3423)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!381}
!3423 = !{!3424, !3425}
!3424 = !DILocalVariable(name: "sig", arg: 1, scope: !3420, file: !330, line: 266, type: !381)
!3425 = !DILocalVariable(name: "stackBottom", scope: !3420, file: !330, line: 28, type: !43)
!3426 = !DILocation(line: 266, column: 6, scope: !3420)
!3427 = !DILocation(line: 268, column: 9, scope: !3420)
!3428 = !DILocation(line: 268, column: 12, scope: !3420)
!3429 = !DILocation(line: 268, column: 49, scope: !3420)
!3430 = !DILocation(line: 268, column: 39, scope: !3420)
!3431 = !DILocation(line: 268, column: 18, scope: !3420)
!3432 = !DILocation(line: 271, column: 20, scope: !3420)
!3433 = !DILocation(line: 0, scope: !3420)
!3434 = !DILocation(line: 274, column: 18, scope: !3420)
!3435 = !DILocation(line: 274, column: 21, scope: !3420)
!3436 = !DILocation(line: 275, column: 15, scope: !3420)
!3437 = !DILocation(line: 279, column: 20, scope: !3420)
!3438 = !DILocation(line: 280, column: 2, scope: !3420)
!3439 = distinct !DISubprogram(name: "internal/task.StackTop", linkageName: "internal/task.StackTop", scope: !330, file: !330, line: 289, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527)
!3440 = !DILocation(line: 290, column: 16, scope: !3439)
!3441 = !DILocation(line: 290, column: 19, scope: !3439)
!3442 = !DILocation(line: 290, column: 25, scope: !3439)
!3443 = !DILocation(line: 290, column: 2, scope: !3439)
!3444 = distinct !DISubprogram(name: "runtime.alloc", linkageName: "runtime.alloc", scope: !421, file: !421, line: 68, type: !3445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3447)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!43, !84}
!3447 = !{!3448, !3449, !3450}
!3448 = !DILocalVariable(name: "size", arg: 1, scope: !3444, file: !421, line: 68, type: !43)
!3449 = !DILocalVariable(name: "layout", arg: 2, scope: !3444, file: !421, line: 68, type: !84)
!3450 = !DILocalVariable(name: "ptr", scope: !3444, file: !421, line: 74, type: !84)
!3451 = !DILocation(line: 68, column: 6, scope: !3444)
!3452 = !DILocation(line: 69, column: 5, scope: !3444)
!3453 = !DILocation(line: 69, column: 10, scope: !3444)
!3454 = !DILocation(line: 0, scope: !3444)
!3455 = !DILocation(line: 70, column: 3, scope: !3444)
!3456 = !DILocation(line: 73, column: 13, scope: !3444)
!3457 = !DILocation(line: 74, column: 6, scope: !3444)
!3458 = !DILocation(line: 75, column: 5, scope: !3444)
!3459 = !DILocation(line: 75, column: 36, scope: !3444)
!3460 = !DILocation(line: 75, column: 12, scope: !3444)
!3461 = !DILocation(line: 79, column: 29, scope: !3444)
!3462 = !DILocation(line: 79, column: 28, scope: !3444)
!3463 = !DILocation(line: 79, column: 3, scope: !3444)
!3464 = !DILocation(line: 82, column: 11, scope: !3444)
!3465 = !DILocation(line: 82, column: 16, scope: !3444)
!3466 = !DILocation(line: 82, column: 10, scope: !3444)
!3467 = !DILocation(line: 90, column: 15, scope: !3444)
!3468 = !DILocation(line: 91, column: 15, scope: !3444)
!3469 = !DILocation(line: 92, column: 5, scope: !3444)
!3470 = !DILocation(line: 92, column: 9, scope: !3444)
!3471 = !DILocation(line: 93, column: 15, scope: !3444)
!3472 = !DILocation(line: 96, column: 9, scope: !3444)
!3473 = !DILocation(line: 96, column: 2, scope: !3444)
!3474 = !DILocation(line: 86, column: 22, scope: !3444)
!3475 = !DILocation(line: 86, column: 21, scope: !3444)
!3476 = !DILocation(line: 86, column: 3, scope: !3444)
!3477 = distinct !DISubprogram(name: "runtime.memzero", linkageName: "runtime.memzero", scope: !1584, file: !1584, line: 53, type: !3478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3480)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!84, !43}
!3480 = !{!3481, !3482}
!3481 = !DILocalVariable(name: "ptr", arg: 1, scope: !3477, file: !1584, line: 53, type: !84)
!3482 = !DILocalVariable(name: "size", arg: 2, scope: !3477, file: !1584, line: 53, type: !43)
!3483 = !DILocation(line: 53, column: 6, scope: !3477)
!3484 = distinct !DISubprogram(name: "runtime.gcResumeWorld", linkageName: "runtime.gcResumeWorld", scope: !3485, file: !3485, line: 27, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3485 = !DIFile(filename: "gc_stack_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3486 = !DILocation(line: 28, column: 20, scope: !3484)
!3487 = !DILocation(line: 29, column: 2, scope: !3484)
!3488 = distinct !DISubprogram(name: "runtime.runtimePanic", linkageName: "runtime.runtimePanic", scope: !428, file: !428, line: 85, type: !1962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3489)
!3489 = !{!3490}
!3490 = !DILocalVariable(name: "msg", arg: 1, scope: !3488, file: !428, line: 85, type: !38)
!3491 = !DILocation(line: 85, column: 6, scope: !3488)
!3492 = !DILocation(line: 88, column: 30, scope: !3488)
!3493 = !DILocation(line: 88, column: 35, scope: !3488)
!3494 = !DILocation(line: 88, column: 16, scope: !3488)
!3495 = !DILocation(line: 89, column: 2, scope: !3488)
!3496 = distinct !DISubprogram(name: "runtime.runtimePanicAt", linkageName: "runtime.runtimePanicAt", scope: !428, file: !428, line: 91, type: !3497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3499)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!84, !38}
!3499 = !{!3500, !3501}
!3500 = !DILocalVariable(name: "addr", arg: 1, scope: !3496, file: !428, line: 91, type: !84)
!3501 = !DILocalVariable(name: "msg", arg: 2, scope: !3496, file: !428, line: 91, type: !38)
!3502 = !DILocation(line: 91, column: 6, scope: !3496)
!3503 = !DILocation(line: 0, scope: !3496)
!3504 = !DILocation(line: 93, column: 7, scope: !3496)
!3505 = !DILocation(line: 99, column: 14, scope: !3496)
!3506 = !DILocation(line: 100, column: 20, scope: !3496)
!3507 = !DILocation(line: 100, column: 19, scope: !3496)
!3508 = !DILocation(line: 100, column: 26, scope: !3496)
!3509 = !DILocation(line: 100, column: 11, scope: !3496)
!3510 = !DILocation(line: 101, column: 14, scope: !3496)
!3511 = !DILocation(line: 105, column: 14, scope: !3496)
!3512 = !DILocation(line: 105, column: 13, scope: !3496)
!3513 = !DILocation(line: 106, column: 9, scope: !3496)
!3514 = !DILocation(line: 107, column: 7, scope: !3496)
!3515 = !DILocation(line: 108, column: 2, scope: !3496)
!3516 = !DILocation(line: 103, column: 14, scope: !3496)
!3517 = distinct !DISubprogram(name: "runtime.printstring", linkageName: "runtime.printstring", scope: !458, file: !458, line: 12, type: !1962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3518)
!3518 = !{!3519, !3520}
!3519 = !DILocalVariable(name: "s", arg: 1, scope: !3517, file: !458, line: 12, type: !38)
!3520 = !DILocalVariable(name: "i", scope: !3517, file: !458, line: 13, type: !1908)
!3521 = !DILocation(line: 12, column: 6, scope: !3517)
!3522 = !DILocation(line: 13, column: 6, scope: !3517)
!3523 = !DILocation(line: 0, scope: !3517)
!3524 = !DILocation(line: 13, column: 14, scope: !3517)
!3525 = !DILocation(line: 13, column: 22, scope: !3517)
!3526 = !DILocation(line: 13, column: 21, scope: !3517)
!3527 = !DILocation(line: 13, column: 16, scope: !3517)
!3528 = !DILocation(line: 14, column: 13, scope: !3517)
!3529 = !DILocation(line: 14, column: 11, scope: !3517)
!3530 = !DILocation(line: 14, column: 12, scope: !3517)
!3531 = !DILocation(line: 14, column: 10, scope: !3517)
!3532 = !DILocation(line: 13, column: 26, scope: !3517)
!3533 = !DILocation(line: 16, column: 2, scope: !3517)
!3534 = distinct !DISubprogram(name: "runtime.printptr", linkageName: "runtime.printptr", scope: !458, file: !458, line: 371, type: !3225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3535)
!3535 = !{!3536, !3537, !3538}
!3536 = !DILocalVariable(name: "ptr", arg: 1, scope: !3534, file: !458, line: 371, type: !43)
!3537 = !DILocalVariable(name: "i", scope: !3534, file: !458, line: 378, type: !1908)
!3538 = !DILocalVariable(name: "nibble", scope: !3534, file: !458, line: 379, type: !533)
!3539 = !DILocation(line: 371, column: 6, scope: !3534)
!3540 = !DILocation(line: 372, column: 5, scope: !3534)
!3541 = !DILocation(line: 372, column: 9, scope: !3534)
!3542 = !DILocation(line: 0, scope: !3534)
!3543 = !DILocation(line: 373, column: 14, scope: !3534)
!3544 = !DILocation(line: 374, column: 3, scope: !3534)
!3545 = !DILocation(line: 376, column: 9, scope: !3534)
!3546 = !DILocation(line: 377, column: 9, scope: !3534)
!3547 = !DILocation(line: 378, column: 6, scope: !3534)
!3548 = !DILocation(line: 371, column: 15, scope: !3534)
!3549 = !DILocation(line: 378, column: 14, scope: !3534)
!3550 = !DILocation(line: 378, column: 16, scope: !3534)
!3551 = !DILocation(line: 379, column: 18, scope: !3534)
!3552 = !DILocation(line: 379, column: 22, scope: !3534)
!3553 = !DILocation(line: 379, column: 17, scope: !3534)
!3554 = !DILocation(line: 379, column: 3, scope: !3534)
!3555 = !DILocation(line: 380, column: 6, scope: !3534)
!3556 = !DILocation(line: 380, column: 13, scope: !3534)
!3557 = !DILocation(line: 381, column: 12, scope: !3534)
!3558 = !DILocation(line: 381, column: 19, scope: !3534)
!3559 = !DILocation(line: 381, column: 11, scope: !3534)
!3560 = !DILocation(line: 385, column: 3, scope: !3534)
!3561 = !DILocation(line: 378, column: 45, scope: !3534)
!3562 = !DILocation(line: 383, column: 12, scope: !3534)
!3563 = !DILocation(line: 383, column: 19, scope: !3534)
!3564 = !DILocation(line: 383, column: 24, scope: !3534)
!3565 = !DILocation(line: 383, column: 11, scope: !3534)
!3566 = !DILocation(line: 387, column: 2, scope: !3534)
!3567 = distinct !DISubprogram(name: "runtime.printnl", linkageName: "runtime.printnl", scope: !458, file: !458, line: 286, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3568 = !DILocation(line: 0, scope: !3567)
!3569 = !DILocation(line: 288, column: 10, scope: !3567)
!3570 = !DILocation(line: 290, column: 9, scope: !3567)
!3571 = !DILocation(line: 291, column: 2, scope: !3567)
!3572 = distinct !DISubprogram(name: "runtime.putchar", linkageName: "runtime.putchar", scope: !414, file: !414, line: 214, type: !3573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3575)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!533}
!3575 = !{!3576}
!3576 = !DILocalVariable(name: "c", arg: 1, scope: !3572, file: !414, line: 214, type: !533)
!3577 = !DILocation(line: 214, column: 6, scope: !3572)
!3578 = !DILocation(line: 215, column: 2, scope: !3572)
!3579 = !DILocation(line: 215, column: 17, scope: !3572)
!3580 = !DILocation(line: 216, column: 35, scope: !3572)
!3581 = !DILocation(line: 216, column: 12, scope: !3572)
!3582 = !DILocation(line: 217, column: 2, scope: !3572)
!3583 = distinct !DISubprogram(name: "runtime.initRand", linkageName: "runtime.initRand", scope: !409, file: !409, line: 26, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3584)
!3584 = !{!3585, !3586, !3587}
!3585 = !DILocalVariable(name: "r", scope: !3583, file: !409, line: 27, type: !338)
!3586 = !DILocalVariable(name: "xorshift64State", scope: !3583, file: !409, line: 52, type: !338)
!3587 = !DILocalVariable(name: "xorshift32State", scope: !3583, file: !409, line: 32, type: !98)
!3588 = !DILocation(line: 27, column: 22, scope: !3583)
!3589 = !DILocation(line: 27, column: 2, scope: !3583)
!3590 = !DILocation(line: 28, column: 27, scope: !3583)
!3591 = !DILocation(line: 28, column: 29, scope: !3583)
!3592 = !DILocation(line: 28, column: 2, scope: !3583)
!3593 = !DILocation(line: 29, column: 27, scope: !3583)
!3594 = !DILocation(line: 29, column: 26, scope: !3583)
!3595 = !DILocation(line: 29, column: 2, scope: !3583)
!3596 = !DILocation(line: 30, column: 2, scope: !3583)
!3597 = distinct !DISubprogram(name: "runtime.hardwareRand", linkageName: "runtime.hardwareRand", scope: !3598, file: !3598, line: 137, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3599)
!3598 = !DIFile(filename: "os_linux.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3599 = !{!3600, !3601}
!3600 = !DILocalVariable(name: "read", scope: !3597, file: !3598, line: 138, type: !98)
!3601 = !DILocalVariable(name: "n", scope: !3597, file: !3598, line: 137, type: !338)
!3602 = !DILocation(line: 137, column: 22, scope: !3597)
!3603 = !DILocation(line: 138, column: 24, scope: !3597)
!3604 = !DILocation(line: 138, column: 2, scope: !3597)
!3605 = !DILocation(line: 139, column: 5, scope: !3597)
!3606 = !DILocation(line: 139, column: 10, scope: !3597)
!3607 = !DILocation(line: 0, scope: !3597)
!3608 = !DILocation(line: 140, column: 3, scope: !3597)
!3609 = !DILocation(line: 142, column: 9, scope: !3597)
!3610 = !DILocation(line: 142, column: 2, scope: !3597)
!3611 = distinct !DISubprogram(name: "runtime.getCurrentStackPointer", linkageName: "runtime.getCurrentStackPointer", scope: !3612, file: !3612, line: 26, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3612 = !DIFile(filename: "arch_amd64.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3613 = !DILocation(line: 27, column: 26, scope: !3611)
!3614 = !DILocation(line: 27, column: 16, scope: !3611)
!3615 = !DILocation(line: 27, column: 2, scope: !3611)
!3616 = distinct !DISubprogram(name: "runtime.stacksave", linkageName: "runtime.stacksave", scope: !1584, file: !1584, line: 58, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3617 = !DILocation(line: 58, column: 6, scope: !3616)
!3618 = distinct !DISubprogram(name: "runtime.memcpy", linkageName: "runtime.memcpy", scope: !1584, file: !1584, line: 42, type: !3619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3621)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!84, !84, !43}
!3621 = !{!3622, !3623, !3624}
!3622 = !DILocalVariable(name: "dst", arg: 1, scope: !3618, file: !1584, line: 42, type: !84)
!3623 = !DILocalVariable(name: "src", arg: 2, scope: !3618, file: !1584, line: 42, type: !84)
!3624 = !DILocalVariable(name: "size", arg: 3, scope: !3618, file: !1584, line: 42, type: !43)
!3625 = !DILocation(line: 42, column: 6, scope: !3618)
!3626 = distinct !DISubprogram(name: "runtime.nilPanic", linkageName: "runtime.nilPanic", scope: !428, file: !428, line: 183, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3627 = !DILocation(line: 184, column: 30, scope: !3626)
!3628 = !DILocation(line: 184, column: 16, scope: !3626)
!3629 = !DILocation(line: 185, column: 2, scope: !3626)
!3630 = distinct !DISubprogram(name: "runtime.deadlock", linkageName: "runtime.deadlock", scope: !515, file: !515, line: 42, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3631 = !DILocation(line: 44, column: 12, scope: !3630)
!3632 = !DILocation(line: 45, column: 2, scope: !3630)
!3633 = distinct !DISubprogram(name: "runtime.lookupPanic", linkageName: "runtime.lookupPanic", scope: !428, file: !428, line: 193, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3634 = !DILocation(line: 194, column: 30, scope: !3633)
!3635 = !DILocation(line: 194, column: 16, scope: !3633)
!3636 = !DILocation(line: 195, column: 2, scope: !3633)
!3637 = distinct !DISubprogram(name: "runtime.panicOrGoexit", linkageName: "runtime.panicOrGoexit", scope: !428, file: !428, line: 58, type: !3638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3641)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!778, !3640}
!3640 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.panicState", baseType: !4)
!3641 = !{!3642, !3643, !3644, !3655, !3656}
!3642 = !DILocalVariable(name: "message", arg: 1, scope: !3637, file: !428, line: 58, type: !778)
!3643 = !DILocalVariable(name: "panicking", arg: 2, scope: !3637, file: !428, line: 58, type: !3640)
!3644 = !DILocalVariable(name: "frame", scope: !3637, file: !428, line: 65, type: !3645)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64, align: 64, dwarfAddressSpace: 0)
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.deferFrame", baseType: !3647)
!3647 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !3648)
!3648 = !{!3649, !3650, !3651, !3652, !3653, !3654}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "JumpSP", baseType: !84, size: 64, align: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "JumpPC", baseType: !84, size: 64, align: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraRegs", baseType: !2585, align: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "Previous", baseType: !3645, size: 64, align: 64, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "Panicking", baseType: !3640, size: 8, align: 8, offset: 192)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "PanicValue", baseType: !778, size: 128, align: 64, offset: 256)
!3655 = !DILocalVariable(name: "PanicValue", scope: !3637, file: !428, line: 42, type: !778)
!3656 = !DILocalVariable(name: "Panicking", scope: !3637, file: !428, line: 41, type: !3640)
!3657 = !DILocation(line: 58, column: 6, scope: !3637)
!3658 = !DILocation(line: 0, scope: !3637)
!3659 = !DILocation(line: 60, column: 7, scope: !3637)
!3660 = !DILocation(line: 64, column: 39, scope: !3637)
!3661 = !DILocation(line: 65, column: 38, scope: !3637)
!3662 = !DILocation(line: 65, column: 41, scope: !3637)
!3663 = !DILocation(line: 65, column: 3, scope: !3637)
!3664 = !DILocation(line: 66, column: 6, scope: !3637)
!3665 = !DILocation(line: 66, column: 12, scope: !3637)
!3666 = !DILocation(line: 67, column: 4, scope: !3637)
!3667 = !DILocation(line: 67, column: 23, scope: !3637)
!3668 = !DILocation(line: 67, column: 10, scope: !3637)
!3669 = !DILocation(line: 68, column: 4, scope: !3637)
!3670 = !DILocation(line: 68, column: 22, scope: !3637)
!3671 = !DILocation(line: 68, column: 10, scope: !3637)
!3672 = !DILocation(line: 69, column: 19, scope: !3637)
!3673 = !DILocation(line: 69, column: 18, scope: !3637)
!3674 = !DILocation(line: 73, column: 5, scope: !3637)
!3675 = !DILocation(line: 73, column: 15, scope: !3637)
!3676 = !DILocation(line: 76, column: 11, scope: !3637)
!3677 = !DILocation(line: 78, column: 13, scope: !3637)
!3678 = !DILocation(line: 79, column: 11, scope: !3637)
!3679 = !DILocation(line: 79, column: 10, scope: !3637)
!3680 = !DILocation(line: 80, column: 9, scope: !3637)
!3681 = !DILocation(line: 81, column: 7, scope: !3637)
!3682 = !DILocation(line: 82, column: 2, scope: !3637)
!3683 = distinct !DISubprogram(name: "runtime.printitf", linkageName: "runtime.printitf", scope: !458, file: !458, line: 293, type: !3684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3686)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!778}
!3686 = !{!3687, !3688, !3689, !3690, !3691, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3703, !3704, !3706, !3708, !3709, !3710, !3712}
!3687 = !DILocalVariable(name: "msg", arg: 1, scope: !3683, file: !458, line: 293, type: !778)
!3688 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !371)
!3689 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !1908)
!3690 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !82)
!3691 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !3692)
!3692 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!3693 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !381)
!3694 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !1699)
!3695 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !1738)
!3696 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !4)
!3697 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !90)
!3698 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !98)
!3699 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !338)
!3700 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !43)
!3701 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !3702)
!3702 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!3703 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !795)
!3704 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !3705)
!3705 = !DIBasicType(name: "complex64", size: 64, encoding: DW_ATE_complex_float)
!3706 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !3707)
!3707 = !DIBasicType(name: "complex128", size: 128, encoding: DW_ATE_complex_float)
!3708 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !38)
!3709 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !777)
!3710 = !DILocalVariable(name: "msg", scope: !3683, file: !458, line: 294, type: !3711)
!3711 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.stringer", baseType: !778)
!3712 = !DILocalVariable(name: "itf", scope: !3683, file: !458, line: 345, type: !778)
!3713 = !DILocation(line: 293, column: 6, scope: !3683)
!3714 = !DILocation(line: 294, column: 16, scope: !3683)
!3715 = !DILocation(line: 295, column: 2, scope: !3683)
!3716 = !DILocation(line: 0, scope: !3683)
!3717 = !DILocation(line: 296, column: 13, scope: !3683)
!3718 = !DILocation(line: 296, column: 12, scope: !3683)
!3719 = !DILocation(line: 352, column: 2, scope: !3683)
!3720 = !DILocation(line: 297, column: 2, scope: !3683)
!3721 = !DILocation(line: 300, column: 21, scope: !3683)
!3722 = !DILocation(line: 300, column: 14, scope: !3683)
!3723 = !DILocation(line: 302, column: 21, scope: !3683)
!3724 = !DILocation(line: 302, column: 20, scope: !3683)
!3725 = !DILocation(line: 302, column: 14, scope: !3683)
!3726 = !DILocation(line: 304, column: 2, scope: !3683)
!3727 = !DILocation(line: 305, column: 13, scope: !3683)
!3728 = !DILocation(line: 305, column: 12, scope: !3683)
!3729 = !DILocation(line: 306, column: 2, scope: !3683)
!3730 = !DILocation(line: 307, column: 14, scope: !3683)
!3731 = !DILocation(line: 307, column: 13, scope: !3683)
!3732 = !DILocation(line: 308, column: 2, scope: !3683)
!3733 = !DILocation(line: 309, column: 14, scope: !3683)
!3734 = !DILocation(line: 309, column: 13, scope: !3683)
!3735 = !DILocation(line: 310, column: 2, scope: !3683)
!3736 = !DILocation(line: 311, column: 14, scope: !3683)
!3737 = !DILocation(line: 311, column: 13, scope: !3683)
!3738 = !DILocation(line: 312, column: 2, scope: !3683)
!3739 = !DILocation(line: 315, column: 23, scope: !3683)
!3740 = !DILocation(line: 315, column: 15, scope: !3683)
!3741 = !DILocation(line: 317, column: 23, scope: !3683)
!3742 = !DILocation(line: 317, column: 22, scope: !3683)
!3743 = !DILocation(line: 317, column: 15, scope: !3683)
!3744 = !DILocation(line: 319, column: 2, scope: !3683)
!3745 = !DILocation(line: 320, column: 14, scope: !3683)
!3746 = !DILocation(line: 320, column: 13, scope: !3683)
!3747 = !DILocation(line: 321, column: 2, scope: !3683)
!3748 = !DILocation(line: 322, column: 15, scope: !3683)
!3749 = !DILocation(line: 322, column: 14, scope: !3683)
!3750 = !DILocation(line: 323, column: 2, scope: !3683)
!3751 = !DILocation(line: 324, column: 15, scope: !3683)
!3752 = !DILocation(line: 324, column: 14, scope: !3683)
!3753 = !DILocation(line: 325, column: 2, scope: !3683)
!3754 = !DILocation(line: 326, column: 15, scope: !3683)
!3755 = !DILocation(line: 326, column: 14, scope: !3683)
!3756 = !DILocation(line: 327, column: 2, scope: !3683)
!3757 = !DILocation(line: 328, column: 16, scope: !3683)
!3758 = !DILocation(line: 328, column: 15, scope: !3683)
!3759 = !DILocation(line: 329, column: 2, scope: !3683)
!3760 = !DILocation(line: 330, column: 16, scope: !3683)
!3761 = !DILocation(line: 330, column: 15, scope: !3683)
!3762 = !DILocation(line: 331, column: 2, scope: !3683)
!3763 = !DILocation(line: 332, column: 16, scope: !3683)
!3764 = !DILocation(line: 332, column: 15, scope: !3683)
!3765 = !DILocation(line: 333, column: 2, scope: !3683)
!3766 = !DILocation(line: 334, column: 18, scope: !3683)
!3767 = !DILocation(line: 334, column: 17, scope: !3683)
!3768 = !DILocation(line: 335, column: 2, scope: !3683)
!3769 = !DILocation(line: 336, column: 19, scope: !3683)
!3770 = !DILocation(line: 336, column: 18, scope: !3683)
!3771 = !DILocation(line: 337, column: 2, scope: !3683)
!3772 = !DILocation(line: 338, column: 15, scope: !3683)
!3773 = !DILocation(line: 338, column: 14, scope: !3683)
!3774 = !DILocation(line: 339, column: 2, scope: !3683)
!3775 = !DILocation(line: 340, column: 15, scope: !3683)
!3776 = !DILocation(line: 340, column: 24, scope: !3683)
!3777 = !DILocation(line: 340, column: 14, scope: !3683)
!3778 = !DILocation(line: 341, column: 2, scope: !3683)
!3779 = !DILocation(line: 342, column: 15, scope: !3683)
!3780 = !DILocation(line: 342, column: 25, scope: !3683)
!3781 = !DILocation(line: 342, column: 14, scope: !3683)
!3782 = !DILocation(line: 294, column: 9, scope: !3683)
!3783 = !DILocation(line: 345, column: 10, scope: !3683)
!3784 = !DILocation(line: 345, column: 3, scope: !3683)
!3785 = !DILocation(line: 346, column: 10, scope: !3683)
!3786 = !DILocation(line: 347, column: 28, scope: !3683)
!3787 = !DILocation(line: 347, column: 23, scope: !3683)
!3788 = !DILocation(line: 347, column: 15, scope: !3683)
!3789 = !DILocation(line: 348, column: 10, scope: !3683)
!3790 = !DILocation(line: 349, column: 24, scope: !3683)
!3791 = !DILocation(line: 349, column: 19, scope: !3683)
!3792 = !DILocation(line: 349, column: 11, scope: !3683)
!3793 = !DILocation(line: 350, column: 10, scope: !3683)
!3794 = distinct !DISubprogram(name: "runtime.printbool", linkageName: "runtime.printbool", scope: !458, file: !458, line: 389, type: !3795, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3797)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!371}
!3797 = !{!3798}
!3798 = !DILocalVariable(name: "b", arg: 1, scope: !3794, file: !458, line: 389, type: !371)
!3799 = !DILocation(line: 389, column: 6, scope: !3794)
!3800 = !DILocation(line: 390, column: 5, scope: !3794)
!3801 = !DILocation(line: 0, scope: !3794)
!3802 = !DILocation(line: 391, column: 14, scope: !3794)
!3803 = !DILocation(line: 395, column: 2, scope: !3794)
!3804 = !DILocation(line: 393, column: 14, scope: !3794)
!3805 = distinct !DISubprogram(name: "runtime.printint64", linkageName: "runtime.printint64", scope: !458, file: !458, line: 94, type: !3806, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3808)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!1699}
!3808 = !{!3809}
!3809 = !DILocalVariable(name: "n", arg: 1, scope: !3805, file: !458, line: 94, type: !1699)
!3810 = !DILocation(line: 94, column: 6, scope: !3805)
!3811 = !DILocation(line: 95, column: 5, scope: !3805)
!3812 = !DILocation(line: 95, column: 7, scope: !3805)
!3813 = !DILocation(line: 0, scope: !3805)
!3814 = !DILocation(line: 96, column: 10, scope: !3805)
!3815 = !DILocation(line: 97, column: 8, scope: !3805)
!3816 = !DILocation(line: 97, column: 7, scope: !3805)
!3817 = !DILocation(line: 97, column: 3, scope: !3805)
!3818 = !DILocation(line: 94, column: 17, scope: !3805)
!3819 = !DILocation(line: 99, column: 21, scope: !3805)
!3820 = !DILocation(line: 99, column: 13, scope: !3805)
!3821 = !DILocation(line: 100, column: 2, scope: !3805)
!3822 = distinct !DISubprogram(name: "runtime.printint32", linkageName: "runtime.printint32", scope: !458, file: !458, line: 65, type: !3421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3823)
!3823 = !{!3824}
!3824 = !DILocalVariable(name: "n", arg: 1, scope: !3822, file: !458, line: 65, type: !381)
!3825 = !DILocation(line: 65, column: 6, scope: !3822)
!3826 = !DILocation(line: 68, column: 5, scope: !3822)
!3827 = !DILocation(line: 68, column: 7, scope: !3822)
!3828 = !DILocation(line: 0, scope: !3822)
!3829 = !DILocation(line: 69, column: 10, scope: !3822)
!3830 = !DILocation(line: 70, column: 8, scope: !3822)
!3831 = !DILocation(line: 70, column: 7, scope: !3822)
!3832 = !DILocation(line: 70, column: 3, scope: !3822)
!3833 = !DILocation(line: 65, column: 17, scope: !3822)
!3834 = !DILocation(line: 72, column: 21, scope: !3822)
!3835 = !DILocation(line: 72, column: 13, scope: !3822)
!3836 = !DILocation(line: 73, column: 2, scope: !3822)
!3837 = distinct !DISubprogram(name: "runtime.printint8", linkageName: "runtime.printint8", scope: !458, file: !458, line: 30, type: !3838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3840)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!82}
!3840 = !{!3841}
!3841 = !DILocalVariable(name: "n", arg: 1, scope: !3837, file: !458, line: 30, type: !82)
!3842 = !DILocation(line: 30, column: 6, scope: !3837)
!3843 = !DILocation(line: 0, scope: !3837)
!3844 = !DILocation(line: 32, column: 20, scope: !3837)
!3845 = !DILocation(line: 32, column: 19, scope: !3837)
!3846 = !DILocation(line: 32, column: 13, scope: !3837)
!3847 = !DILocation(line: 40, column: 2, scope: !3837)
!3848 = !DILocation(line: 34, column: 6, scope: !3837)
!3849 = !DILocation(line: 34, column: 8, scope: !3837)
!3850 = !DILocation(line: 35, column: 11, scope: !3837)
!3851 = !DILocation(line: 36, column: 9, scope: !3837)
!3852 = !DILocation(line: 36, column: 8, scope: !3837)
!3853 = !DILocation(line: 36, column: 4, scope: !3837)
!3854 = !DILocation(line: 30, column: 16, scope: !3837)
!3855 = !DILocation(line: 38, column: 20, scope: !3837)
!3856 = !DILocation(line: 38, column: 13, scope: !3837)
!3857 = distinct !DISubprogram(name: "runtime.printint16", linkageName: "runtime.printint16", scope: !458, file: !458, line: 57, type: !3858, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3860)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!3692}
!3860 = !{!3861}
!3861 = !DILocalVariable(name: "n", arg: 1, scope: !3857, file: !458, line: 57, type: !3692)
!3862 = !DILocation(line: 57, column: 6, scope: !3857)
!3863 = !DILocation(line: 58, column: 19, scope: !3857)
!3864 = !DILocation(line: 58, column: 18, scope: !3857)
!3865 = !DILocation(line: 58, column: 12, scope: !3857)
!3866 = !DILocation(line: 59, column: 2, scope: !3857)
!3867 = distinct !DISubprogram(name: "runtime.printuint64", linkageName: "runtime.printuint64", scope: !458, file: !458, line: 76, type: !1763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3868)
!3868 = !{!3869, !3870, !3871, !3872, !3873}
!3869 = !DILocalVariable(name: "n", arg: 1, scope: !3867, file: !458, line: 76, type: !338)
!3870 = !DILocalVariable(name: "firstdigit", scope: !3867, file: !458, line: 79, type: !1908)
!3871 = !DILocalVariable(name: "i", scope: !3867, file: !458, line: 80, type: !1908)
!3872 = !DILocalVariable(name: "digit", scope: !3867, file: !458, line: 81, type: !533)
!3873 = !DILocalVariable(name: "i", scope: !3867, file: !458, line: 89, type: !1908)
!3874 = !DILocation(line: 76, column: 6, scope: !3867)
!3875 = !DILocation(line: 77, column: 2, scope: !3867)
!3876 = !DILocation(line: 79, column: 2, scope: !3867)
!3877 = !DILocation(line: 80, column: 6, scope: !3867)
!3878 = !DILocation(line: 0, scope: !3867)
!3879 = !DILocation(line: 76, column: 18, scope: !3867)
!3880 = !DILocation(line: 80, column: 15, scope: !3867)
!3881 = !DILocation(line: 80, column: 17, scope: !3867)
!3882 = !DILocation(line: 81, column: 17, scope: !3867)
!3883 = !DILocation(line: 81, column: 18, scope: !3867)
!3884 = !DILocation(line: 81, column: 22, scope: !3867)
!3885 = !DILocation(line: 81, column: 16, scope: !3867)
!3886 = !DILocation(line: 81, column: 3, scope: !3867)
!3887 = !DILocation(line: 82, column: 10, scope: !3867)
!3888 = !DILocation(line: 82, column: 15, scope: !3867)
!3889 = !DILocation(line: 82, column: 9, scope: !3867)
!3890 = !DILocation(line: 83, column: 6, scope: !3867)
!3891 = !DILocation(line: 83, column: 12, scope: !3867)
!3892 = !DILocation(line: 84, column: 17, scope: !3867)
!3893 = !DILocation(line: 84, column: 4, scope: !3867)
!3894 = !DILocation(line: 86, column: 3, scope: !3867)
!3895 = !DILocation(line: 80, column: 23, scope: !3867)
!3896 = !DILocation(line: 89, column: 11, scope: !3867)
!3897 = !DILocation(line: 89, column: 6, scope: !3867)
!3898 = !DILocation(line: 89, column: 23, scope: !3867)
!3899 = !DILocation(line: 89, column: 25, scope: !3867)
!3900 = !DILocation(line: 90, column: 18, scope: !3867)
!3901 = !DILocation(line: 90, column: 17, scope: !3867)
!3902 = !DILocation(line: 90, column: 10, scope: !3867)
!3903 = !DILocation(line: 89, column: 31, scope: !3867)
!3904 = !DILocation(line: 92, column: 2, scope: !3867)
!3905 = distinct !DISubprogram(name: "runtime.printuint32", linkageName: "runtime.printuint32", scope: !458, file: !458, line: 61, type: !3336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3906)
!3906 = !{!3907}
!3907 = !DILocalVariable(name: "n", arg: 1, scope: !3905, file: !458, line: 61, type: !98)
!3908 = !DILocation(line: 61, column: 6, scope: !3905)
!3909 = !DILocation(line: 62, column: 21, scope: !3905)
!3910 = !DILocation(line: 62, column: 20, scope: !3905)
!3911 = !DILocation(line: 62, column: 13, scope: !3905)
!3912 = !DILocation(line: 63, column: 2, scope: !3905)
!3913 = distinct !DISubprogram(name: "runtime.printuint8", linkageName: "runtime.printuint8", scope: !458, file: !458, line: 18, type: !3914, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3916)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!4}
!3916 = !{!3917, !3918}
!3917 = !DILocalVariable(name: "n", arg: 1, scope: !3913, file: !458, line: 18, type: !4)
!3918 = !DILocalVariable(name: "prevdigits", scope: !3913, file: !458, line: 22, type: !4)
!3919 = !DILocation(line: 18, column: 6, scope: !3913)
!3920 = !DILocation(line: 0, scope: !3913)
!3921 = !DILocation(line: 20, column: 22, scope: !3913)
!3922 = !DILocation(line: 20, column: 21, scope: !3913)
!3923 = !DILocation(line: 20, column: 14, scope: !3913)
!3924 = !DILocation(line: 28, column: 2, scope: !3913)
!3925 = !DILocation(line: 22, column: 17, scope: !3913)
!3926 = !DILocation(line: 22, column: 19, scope: !3913)
!3927 = !DILocation(line: 22, column: 3, scope: !3913)
!3928 = !DILocation(line: 23, column: 6, scope: !3913)
!3929 = !DILocation(line: 23, column: 17, scope: !3913)
!3930 = !DILocation(line: 24, column: 15, scope: !3913)
!3931 = !DILocation(line: 24, column: 14, scope: !3913)
!3932 = !DILocation(line: 26, column: 17, scope: !3913)
!3933 = !DILocation(line: 26, column: 19, scope: !3913)
!3934 = !DILocation(line: 26, column: 25, scope: !3913)
!3935 = !DILocation(line: 26, column: 10, scope: !3913)
!3936 = distinct !DISubprogram(name: "runtime.printuint16", linkageName: "runtime.printuint16", scope: !458, file: !458, line: 53, type: !3937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3939)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!90}
!3939 = !{!3940}
!3940 = !DILocalVariable(name: "n", arg: 1, scope: !3936, file: !458, line: 53, type: !90)
!3941 = !DILocation(line: 53, column: 6, scope: !3936)
!3942 = !DILocation(line: 54, column: 21, scope: !3936)
!3943 = !DILocation(line: 54, column: 20, scope: !3936)
!3944 = !DILocation(line: 54, column: 13, scope: !3936)
!3945 = !DILocation(line: 55, column: 2, scope: !3936)
!3946 = distinct !DISubprogram(name: "runtime.printuintptr", linkageName: "runtime.printuintptr", scope: !458, file: !458, line: 42, type: !3225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3947)
!3947 = !{!3948}
!3948 = !DILocalVariable(name: "n", arg: 1, scope: !3946, file: !458, line: 42, type: !43)
!3949 = !DILocation(line: 42, column: 6, scope: !3946)
!3950 = !DILocation(line: 0, scope: !3946)
!3951 = !DILocation(line: 45, column: 22, scope: !3946)
!3952 = !DILocation(line: 45, column: 21, scope: !3946)
!3953 = !DILocation(line: 45, column: 14, scope: !3946)
!3954 = !DILocation(line: 51, column: 2, scope: !3946)
!3955 = !DILocation(line: 47, column: 22, scope: !3946)
!3956 = !DILocation(line: 47, column: 21, scope: !3946)
!3957 = !DILocation(line: 47, column: 14, scope: !3946)
!3958 = !DILocation(line: 49, column: 22, scope: !3946)
!3959 = !DILocation(line: 49, column: 14, scope: !3946)
!3960 = distinct !DISubprogram(name: "runtime.printfloat32", linkageName: "runtime.printfloat32", scope: !458, file: !458, line: 114, type: !3961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3963)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!3702}
!3963 = !{!3964, !3965, !3966, !3967, !3968, !3970, !3971, !3972}
!3964 = !DILocalVariable(name: "v", arg: 1, scope: !3960, file: !458, line: 114, type: !3702)
!3965 = !DILocalVariable(name: "e", scope: !3960, file: !458, line: 130, type: !1908)
!3966 = !DILocalVariable(name: "i", scope: !3960, file: !458, line: 164, type: !1908)
!3967 = !DILocalVariable(name: "s", scope: !3960, file: !458, line: 165, type: !1908)
!3968 = !DILocalVariable(name: "buf", scope: !3960, file: !458, line: 128, type: !3969)
!3969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 112, align: 8, elements: !113)
!3970 = !DILocalVariable(name: "c", scope: !3960, file: !458, line: 183, type: !533)
!3971 = !DILocalVariable(name: "h", scope: !3960, file: !458, line: 152, type: !3702)
!3972 = !DILocalVariable(name: "i", scope: !3960, file: !458, line: 153, type: !1908)
!3973 = !DILocation(line: 114, column: 6, scope: !3960)
!3974 = !DILocation(line: 116, column: 7, scope: !3960)
!3975 = !DILocation(line: 116, column: 12, scope: !3960)
!3976 = !DILocation(line: 116, column: 9, scope: !3960)
!3977 = !DILocation(line: 0, scope: !3960)
!3978 = !DILocation(line: 117, column: 14, scope: !3960)
!3979 = !DILocation(line: 118, column: 3, scope: !3960)
!3980 = !DILocation(line: 119, column: 7, scope: !3960)
!3981 = !DILocation(line: 119, column: 9, scope: !3960)
!3982 = !DILocation(line: 119, column: 8, scope: !3960)
!3983 = !DILocation(line: 119, column: 14, scope: !3960)
!3984 = !DILocation(line: 119, column: 11, scope: !3960)
!3985 = !DILocation(line: 119, column: 19, scope: !3960)
!3986 = !DILocation(line: 119, column: 21, scope: !3960)
!3987 = !DILocation(line: 119, column: 16, scope: !3960)
!3988 = !DILocation(line: 120, column: 14, scope: !3960)
!3989 = !DILocation(line: 121, column: 3, scope: !3960)
!3990 = !DILocation(line: 122, column: 7, scope: !3960)
!3991 = !DILocation(line: 122, column: 9, scope: !3960)
!3992 = !DILocation(line: 122, column: 8, scope: !3960)
!3993 = !DILocation(line: 122, column: 14, scope: !3960)
!3994 = !DILocation(line: 122, column: 11, scope: !3960)
!3995 = !DILocation(line: 122, column: 19, scope: !3960)
!3996 = !DILocation(line: 122, column: 21, scope: !3960)
!3997 = !DILocation(line: 122, column: 16, scope: !3960)
!3998 = !DILocation(line: 123, column: 14, scope: !3960)
!3999 = !DILocation(line: 124, column: 3, scope: !3960)
!4000 = !DILocation(line: 129, column: 5, scope: !3960)
!4001 = !DILocation(line: 130, column: 2, scope: !3960)
!4002 = !DILocation(line: 131, column: 5, scope: !3960)
!4003 = !DILocation(line: 131, column: 7, scope: !3960)
!4004 = !DILocation(line: 132, column: 8, scope: !3960)
!4005 = !DILocation(line: 132, column: 7, scope: !3960)
!4006 = !DILocation(line: 132, column: 10, scope: !3960)
!4007 = !DILocation(line: 133, column: 7, scope: !3960)
!4008 = !DILocation(line: 114, column: 19, scope: !3960)
!4009 = !DILocation(line: 164, column: 6, scope: !3960)
!4010 = !DILocation(line: 164, column: 14, scope: !3960)
!4011 = !DILocation(line: 164, column: 16, scope: !3960)
!4012 = !DILocation(line: 165, column: 12, scope: !3960)
!4013 = !DILocation(line: 165, column: 11, scope: !3960)
!4014 = !DILocation(line: 165, column: 3, scope: !3960)
!4015 = !DILocation(line: 166, column: 7, scope: !3960)
!4016 = !DILocation(line: 166, column: 8, scope: !3960)
!4017 = !DILocation(line: 166, column: 19, scope: !3960)
!4018 = !DILocation(line: 166, column: 21, scope: !3960)
!4019 = !DILocation(line: 166, column: 18, scope: !3960)
!4020 = !DILocation(line: 166, column: 6, scope: !3960)
!4021 = !DILocation(line: 167, column: 16, scope: !3960)
!4022 = !DILocation(line: 167, column: 15, scope: !3960)
!4023 = !DILocation(line: 167, column: 3, scope: !3960)
!4024 = !DILocation(line: 168, column: 3, scope: !3960)
!4025 = !DILocation(line: 164, column: 21, scope: !3960)
!4026 = !DILocation(line: 170, column: 14, scope: !3960)
!4027 = !DILocation(line: 170, column: 5, scope: !3960)
!4028 = !DILocation(line: 171, column: 5, scope: !3960)
!4029 = !DILocation(line: 173, column: 5, scope: !3960)
!4030 = !DILocation(line: 174, column: 5, scope: !3960)
!4031 = !DILocation(line: 175, column: 5, scope: !3960)
!4032 = !DILocation(line: 175, column: 7, scope: !3960)
!4033 = !DILocation(line: 176, column: 8, scope: !3960)
!4034 = !DILocation(line: 176, column: 7, scope: !3960)
!4035 = !DILocation(line: 176, column: 3, scope: !3960)
!4036 = !DILocation(line: 177, column: 6, scope: !3960)
!4037 = !DILocation(line: 180, column: 18, scope: !3960)
!4038 = !DILocation(line: 180, column: 19, scope: !3960)
!4039 = !DILocation(line: 180, column: 17, scope: !3960)
!4040 = !DILocation(line: 180, column: 25, scope: !3960)
!4041 = !DILocation(line: 180, column: 5, scope: !3960)
!4042 = !DILocation(line: 181, column: 18, scope: !3960)
!4043 = !DILocation(line: 181, column: 19, scope: !3960)
!4044 = !DILocation(line: 181, column: 17, scope: !3960)
!4045 = !DILocation(line: 181, column: 23, scope: !3960)
!4046 = !DILocation(line: 181, column: 27, scope: !3960)
!4047 = !DILocation(line: 181, column: 5, scope: !3960)
!4048 = !DILocation(line: 182, column: 18, scope: !3960)
!4049 = !DILocation(line: 182, column: 19, scope: !3960)
!4050 = !DILocation(line: 182, column: 17, scope: !3960)
!4051 = !DILocation(line: 182, column: 24, scope: !3960)
!4052 = !DILocation(line: 182, column: 5, scope: !3960)
!4053 = !DILocation(line: 183, column: 20, scope: !3960)
!4054 = !DILocation(line: 183, column: 9, scope: !3960)
!4055 = !DILocation(line: 184, column: 11, scope: !3960)
!4056 = !DILocation(line: 184, column: 10, scope: !3960)
!4057 = !DILocation(line: 186, column: 2, scope: !3960)
!4058 = !DILocation(line: 136, column: 6, scope: !3960)
!4059 = !DILocation(line: 136, column: 8, scope: !3960)
!4060 = !DILocation(line: 137, column: 9, scope: !3960)
!4061 = !DILocation(line: 137, column: 8, scope: !3960)
!4062 = !DILocation(line: 137, column: 4, scope: !3960)
!4063 = !DILocation(line: 138, column: 7, scope: !3960)
!4064 = !DILocation(line: 142, column: 7, scope: !3960)
!4065 = !DILocation(line: 142, column: 9, scope: !3960)
!4066 = !DILocation(line: 143, column: 4, scope: !3960)
!4067 = !DILocation(line: 144, column: 4, scope: !3960)
!4068 = !DILocation(line: 146, column: 7, scope: !3960)
!4069 = !DILocation(line: 146, column: 9, scope: !3960)
!4070 = !DILocation(line: 147, column: 4, scope: !3960)
!4071 = !DILocation(line: 148, column: 4, scope: !3960)
!4072 = !DILocation(line: 152, column: 3, scope: !3960)
!4073 = !DILocation(line: 153, column: 7, scope: !3960)
!4074 = !DILocation(line: 153, column: 15, scope: !3960)
!4075 = !DILocation(line: 153, column: 17, scope: !3960)
!4076 = !DILocation(line: 154, column: 4, scope: !3960)
!4077 = !DILocation(line: 153, column: 22, scope: !3960)
!4078 = !DILocation(line: 156, column: 8, scope: !3960)
!4079 = !DILocation(line: 156, column: 3, scope: !3960)
!4080 = !DILocation(line: 157, column: 6, scope: !3960)
!4081 = !DILocation(line: 157, column: 8, scope: !3960)
!4082 = !DILocation(line: 158, column: 4, scope: !3960)
!4083 = !DILocation(line: 159, column: 4, scope: !3960)
!4084 = distinct !DISubprogram(name: "runtime.printfloat64", linkageName: "runtime.printfloat64", scope: !458, file: !458, line: 194, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4085)
!4085 = !{!4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093}
!4086 = !DILocalVariable(name: "v", arg: 1, scope: !4084, file: !458, line: 194, type: !795)
!4087 = !DILocalVariable(name: "e", scope: !4084, file: !458, line: 210, type: !1908)
!4088 = !DILocalVariable(name: "i", scope: !4084, file: !458, line: 244, type: !1908)
!4089 = !DILocalVariable(name: "s", scope: !4084, file: !458, line: 245, type: !1908)
!4090 = !DILocalVariable(name: "buf", scope: !4084, file: !458, line: 208, type: !3969)
!4091 = !DILocalVariable(name: "c", scope: !4084, file: !458, line: 263, type: !533)
!4092 = !DILocalVariable(name: "h", scope: !4084, file: !458, line: 232, type: !795)
!4093 = !DILocalVariable(name: "i", scope: !4084, file: !458, line: 233, type: !1908)
!4094 = !DILocation(line: 194, column: 6, scope: !4084)
!4095 = !DILocation(line: 196, column: 7, scope: !4084)
!4096 = !DILocation(line: 196, column: 12, scope: !4084)
!4097 = !DILocation(line: 196, column: 9, scope: !4084)
!4098 = !DILocation(line: 0, scope: !4084)
!4099 = !DILocation(line: 197, column: 14, scope: !4084)
!4100 = !DILocation(line: 198, column: 3, scope: !4084)
!4101 = !DILocation(line: 199, column: 7, scope: !4084)
!4102 = !DILocation(line: 199, column: 9, scope: !4084)
!4103 = !DILocation(line: 199, column: 8, scope: !4084)
!4104 = !DILocation(line: 199, column: 14, scope: !4084)
!4105 = !DILocation(line: 199, column: 11, scope: !4084)
!4106 = !DILocation(line: 199, column: 19, scope: !4084)
!4107 = !DILocation(line: 199, column: 21, scope: !4084)
!4108 = !DILocation(line: 199, column: 16, scope: !4084)
!4109 = !DILocation(line: 200, column: 14, scope: !4084)
!4110 = !DILocation(line: 201, column: 3, scope: !4084)
!4111 = !DILocation(line: 202, column: 7, scope: !4084)
!4112 = !DILocation(line: 202, column: 9, scope: !4084)
!4113 = !DILocation(line: 202, column: 8, scope: !4084)
!4114 = !DILocation(line: 202, column: 14, scope: !4084)
!4115 = !DILocation(line: 202, column: 11, scope: !4084)
!4116 = !DILocation(line: 202, column: 19, scope: !4084)
!4117 = !DILocation(line: 202, column: 21, scope: !4084)
!4118 = !DILocation(line: 202, column: 16, scope: !4084)
!4119 = !DILocation(line: 203, column: 14, scope: !4084)
!4120 = !DILocation(line: 204, column: 3, scope: !4084)
!4121 = !DILocation(line: 209, column: 5, scope: !4084)
!4122 = !DILocation(line: 210, column: 2, scope: !4084)
!4123 = !DILocation(line: 211, column: 5, scope: !4084)
!4124 = !DILocation(line: 211, column: 7, scope: !4084)
!4125 = !DILocation(line: 212, column: 8, scope: !4084)
!4126 = !DILocation(line: 212, column: 7, scope: !4084)
!4127 = !DILocation(line: 212, column: 10, scope: !4084)
!4128 = !DILocation(line: 213, column: 7, scope: !4084)
!4129 = !DILocation(line: 194, column: 19, scope: !4084)
!4130 = !DILocation(line: 244, column: 6, scope: !4084)
!4131 = !DILocation(line: 244, column: 14, scope: !4084)
!4132 = !DILocation(line: 244, column: 16, scope: !4084)
!4133 = !DILocation(line: 245, column: 12, scope: !4084)
!4134 = !DILocation(line: 245, column: 11, scope: !4084)
!4135 = !DILocation(line: 245, column: 3, scope: !4084)
!4136 = !DILocation(line: 246, column: 7, scope: !4084)
!4137 = !DILocation(line: 246, column: 8, scope: !4084)
!4138 = !DILocation(line: 246, column: 19, scope: !4084)
!4139 = !DILocation(line: 246, column: 21, scope: !4084)
!4140 = !DILocation(line: 246, column: 18, scope: !4084)
!4141 = !DILocation(line: 246, column: 6, scope: !4084)
!4142 = !DILocation(line: 247, column: 16, scope: !4084)
!4143 = !DILocation(line: 247, column: 15, scope: !4084)
!4144 = !DILocation(line: 247, column: 3, scope: !4084)
!4145 = !DILocation(line: 248, column: 3, scope: !4084)
!4146 = !DILocation(line: 244, column: 21, scope: !4084)
!4147 = !DILocation(line: 250, column: 14, scope: !4084)
!4148 = !DILocation(line: 250, column: 5, scope: !4084)
!4149 = !DILocation(line: 251, column: 5, scope: !4084)
!4150 = !DILocation(line: 253, column: 5, scope: !4084)
!4151 = !DILocation(line: 254, column: 5, scope: !4084)
!4152 = !DILocation(line: 255, column: 5, scope: !4084)
!4153 = !DILocation(line: 255, column: 7, scope: !4084)
!4154 = !DILocation(line: 256, column: 8, scope: !4084)
!4155 = !DILocation(line: 256, column: 7, scope: !4084)
!4156 = !DILocation(line: 256, column: 3, scope: !4084)
!4157 = !DILocation(line: 257, column: 6, scope: !4084)
!4158 = !DILocation(line: 260, column: 18, scope: !4084)
!4159 = !DILocation(line: 260, column: 19, scope: !4084)
!4160 = !DILocation(line: 260, column: 17, scope: !4084)
!4161 = !DILocation(line: 260, column: 25, scope: !4084)
!4162 = !DILocation(line: 260, column: 5, scope: !4084)
!4163 = !DILocation(line: 261, column: 18, scope: !4084)
!4164 = !DILocation(line: 261, column: 19, scope: !4084)
!4165 = !DILocation(line: 261, column: 17, scope: !4084)
!4166 = !DILocation(line: 261, column: 23, scope: !4084)
!4167 = !DILocation(line: 261, column: 27, scope: !4084)
!4168 = !DILocation(line: 261, column: 5, scope: !4084)
!4169 = !DILocation(line: 262, column: 18, scope: !4084)
!4170 = !DILocation(line: 262, column: 19, scope: !4084)
!4171 = !DILocation(line: 262, column: 17, scope: !4084)
!4172 = !DILocation(line: 262, column: 24, scope: !4084)
!4173 = !DILocation(line: 262, column: 5, scope: !4084)
!4174 = !DILocation(line: 263, column: 20, scope: !4084)
!4175 = !DILocation(line: 263, column: 9, scope: !4084)
!4176 = !DILocation(line: 264, column: 11, scope: !4084)
!4177 = !DILocation(line: 264, column: 10, scope: !4084)
!4178 = !DILocation(line: 266, column: 2, scope: !4084)
!4179 = !DILocation(line: 216, column: 6, scope: !4084)
!4180 = !DILocation(line: 216, column: 8, scope: !4084)
!4181 = !DILocation(line: 217, column: 9, scope: !4084)
!4182 = !DILocation(line: 217, column: 8, scope: !4084)
!4183 = !DILocation(line: 217, column: 4, scope: !4084)
!4184 = !DILocation(line: 218, column: 7, scope: !4084)
!4185 = !DILocation(line: 222, column: 7, scope: !4084)
!4186 = !DILocation(line: 222, column: 9, scope: !4084)
!4187 = !DILocation(line: 223, column: 4, scope: !4084)
!4188 = !DILocation(line: 224, column: 4, scope: !4084)
!4189 = !DILocation(line: 226, column: 7, scope: !4084)
!4190 = !DILocation(line: 226, column: 9, scope: !4084)
!4191 = !DILocation(line: 227, column: 4, scope: !4084)
!4192 = !DILocation(line: 228, column: 4, scope: !4084)
!4193 = !DILocation(line: 232, column: 3, scope: !4084)
!4194 = !DILocation(line: 233, column: 7, scope: !4084)
!4195 = !DILocation(line: 233, column: 15, scope: !4084)
!4196 = !DILocation(line: 233, column: 17, scope: !4084)
!4197 = !DILocation(line: 234, column: 4, scope: !4084)
!4198 = !DILocation(line: 233, column: 22, scope: !4084)
!4199 = !DILocation(line: 236, column: 8, scope: !4084)
!4200 = !DILocation(line: 236, column: 3, scope: !4084)
!4201 = !DILocation(line: 237, column: 6, scope: !4084)
!4202 = !DILocation(line: 237, column: 8, scope: !4084)
!4203 = !DILocation(line: 238, column: 4, scope: !4084)
!4204 = !DILocation(line: 239, column: 4, scope: !4084)
!4205 = distinct !DISubprogram(name: "runtime.printcomplex64", linkageName: "runtime.printcomplex64", scope: !458, file: !458, line: 268, type: !4206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4208)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!3705}
!4208 = !{!4209}
!4209 = !DILocalVariable(name: "c", arg: 1, scope: !4205, file: !458, line: 268, type: !3705)
!4210 = !DILocation(line: 268, column: 6, scope: !4205)
!4211 = !DILocation(line: 269, column: 9, scope: !4205)
!4212 = !DILocation(line: 270, column: 20, scope: !4205)
!4213 = !DILocation(line: 270, column: 19, scope: !4205)
!4214 = !DILocation(line: 270, column: 14, scope: !4205)
!4215 = !DILocation(line: 271, column: 20, scope: !4205)
!4216 = !DILocation(line: 271, column: 19, scope: !4205)
!4217 = !DILocation(line: 271, column: 14, scope: !4205)
!4218 = !DILocation(line: 272, column: 13, scope: !4205)
!4219 = !DILocation(line: 273, column: 2, scope: !4205)
!4220 = distinct !DISubprogram(name: "runtime.printcomplex128", linkageName: "runtime.printcomplex128", scope: !458, file: !458, line: 275, type: !4221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4223)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!3707}
!4223 = !{!4224}
!4224 = !DILocalVariable(name: "c", arg: 1, scope: !4220, file: !458, line: 275, type: !3707)
!4225 = !DILocation(line: 275, column: 6, scope: !4220)
!4226 = !DILocation(line: 276, column: 9, scope: !4220)
!4227 = !DILocation(line: 277, column: 20, scope: !4220)
!4228 = !DILocation(line: 277, column: 19, scope: !4220)
!4229 = !DILocation(line: 277, column: 14, scope: !4220)
!4230 = !DILocation(line: 278, column: 20, scope: !4220)
!4231 = !DILocation(line: 278, column: 19, scope: !4220)
!4232 = !DILocation(line: 278, column: 14, scope: !4220)
!4233 = !DILocation(line: 279, column: 13, scope: !4220)
!4234 = !DILocation(line: 280, column: 2, scope: !4220)
!4235 = distinct !DISubprogram(name: "runtime._panic", linkageName: "runtime._panic", scope: !428, file: !428, line: 54, type: !3684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4236)
!4236 = !{!4237}
!4237 = !DILocalVariable(name: "message", arg: 1, scope: !4235, file: !428, line: 54, type: !778)
!4238 = !DILocation(line: 54, column: 6, scope: !4235)
!4239 = !DILocation(line: 55, column: 16, scope: !4235)
!4240 = !DILocation(line: 55, column: 15, scope: !4235)
!4241 = !DILocation(line: 56, column: 2, scope: !4235)
!4242 = distinct !DISubprogram(name: "runtime.stringEqual", linkageName: "runtime.stringEqual", scope: !4243, file: !4243, line: 24, type: !4244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4246)
!4243 = !DIFile(filename: "string.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!38, !38}
!4246 = !{!4247, !4248, !4249}
!4247 = !DILocalVariable(name: "x", arg: 1, scope: !4242, file: !4243, line: 24, type: !38)
!4248 = !DILocalVariable(name: "y", arg: 2, scope: !4242, file: !4243, line: 24, type: !38)
!4249 = !DILocalVariable(name: "i", scope: !4242, file: !4243, line: 28, type: !1908)
!4250 = !DILocation(line: 24, column: 6, scope: !4242)
!4251 = !DILocation(line: 25, column: 9, scope: !4242)
!4252 = !DILocation(line: 25, column: 8, scope: !4242)
!4253 = !DILocation(line: 25, column: 19, scope: !4242)
!4254 = !DILocation(line: 25, column: 18, scope: !4242)
!4255 = !DILocation(line: 25, column: 12, scope: !4242)
!4256 = !DILocation(line: 0, scope: !4242)
!4257 = !DILocation(line: 26, column: 3, scope: !4242)
!4258 = !DILocation(line: 28, column: 6, scope: !4242)
!4259 = !DILocation(line: 28, column: 14, scope: !4242)
!4260 = !DILocation(line: 28, column: 22, scope: !4242)
!4261 = !DILocation(line: 28, column: 21, scope: !4242)
!4262 = !DILocation(line: 28, column: 16, scope: !4242)
!4263 = !DILocation(line: 29, column: 8, scope: !4242)
!4264 = !DILocation(line: 29, column: 6, scope: !4242)
!4265 = !DILocation(line: 29, column: 7, scope: !4242)
!4266 = !DILocation(line: 29, column: 16, scope: !4242)
!4267 = !DILocation(line: 29, column: 14, scope: !4242)
!4268 = !DILocation(line: 29, column: 15, scope: !4242)
!4269 = !DILocation(line: 29, column: 11, scope: !4242)
!4270 = !DILocation(line: 30, column: 4, scope: !4242)
!4271 = !DILocation(line: 28, column: 26, scope: !4242)
!4272 = !DILocation(line: 33, column: 2, scope: !4242)
!4273 = distinct !DISubprogram(name: "runtime.slicePanic", linkageName: "runtime.slicePanic", scope: !428, file: !428, line: 198, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4274 = !DILocation(line: 199, column: 30, scope: !4273)
!4275 = !DILocation(line: 199, column: 16, scope: !4273)
!4276 = !DILocation(line: 200, column: 2, scope: !4273)
!4277 = distinct !DISubprogram(name: "runtime.fminimum", linkageName: "fminimum", scope: !1560, file: !1560, line: 60, type: !4278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4280)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!795, !795}
!4280 = !{!4281, !4282}
!4281 = !DILocalVariable(name: "x", arg: 1, scope: !4277, file: !1560, line: 60, type: !795)
!4282 = !DILocalVariable(name: "y", arg: 2, scope: !4277, file: !1560, line: 60, type: !795)
!4283 = !DILocation(line: 60, column: 6, scope: !4277)
!4284 = !DILocation(line: 61, column: 24, scope: !4277)
!4285 = !DILocation(line: 61, column: 27, scope: !4277)
!4286 = !DILocation(line: 61, column: 23, scope: !4277)
!4287 = !DILocation(line: 61, column: 2, scope: !4277)
!4288 = distinct !DISubprogram(name: "runtime.minimumFloat64", linkageName: "runtime.minimumFloat64", scope: !1560, file: !1560, line: 87, type: !4278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4289)
!4289 = !{!4290, !4291}
!4290 = !DILocalVariable(name: "x", arg: 1, scope: !4288, file: !1560, line: 87, type: !795)
!4291 = !DILocalVariable(name: "y", arg: 2, scope: !4288, file: !1560, line: 87, type: !795)
!4292 = !DILocation(line: 87, column: 6, scope: !4288)
!4293 = !DILocation(line: 88, column: 38, scope: !4288)
!4294 = !DILocation(line: 88, column: 41, scope: !4288)
!4295 = !DILocation(line: 88, column: 37, scope: !4288)
!4296 = !DILocation(line: 88, column: 2, scope: !4288)
!4297 = distinct !DISubprogram(name: "runtime.minimumFloat[float64 int64]", linkageName: "runtime.minimumFloat[float64 int64]", scope: !1560, file: !1560, line: 101, type: !4298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4300)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!795, !795, !1699, !1699}
!4300 = !{!4301, !4302, !4303, !4304, !4305, !4306}
!4301 = !DILocalVariable(name: "x", arg: 1, scope: !4297, file: !1560, line: 101, type: !795)
!4302 = !DILocalVariable(name: "y", arg: 2, scope: !4297, file: !1560, line: 101, type: !795)
!4303 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4297, file: !1560, line: 101, type: !1699)
!4304 = !DILocalVariable(name: "magMask", arg: 4, scope: !4297, file: !1560, line: 101, type: !1699)
!4305 = !DILocalVariable(name: "xBits", scope: !4297, file: !1560, line: 102, type: !778)
!4306 = !DILocalVariable(name: "yBits", scope: !4297, file: !1560, line: 103, type: !778)
!4307 = !DILocation(line: 101, column: 6, scope: !4297)
!4308 = !DILocation(line: 101, column: 40, scope: !4297)
!4309 = !DILocation(line: 101, column: 43, scope: !4297)
!4310 = !DILocation(line: 102, column: 11, scope: !4297)
!4311 = !DILocation(line: 102, column: 2, scope: !4297)
!4312 = !DILocation(line: 103, column: 11, scope: !4297)
!4313 = !DILocation(line: 103, column: 2, scope: !4297)
!4314 = !DILocation(line: 107, column: 7, scope: !4297)
!4315 = !DILocation(line: 107, column: 16, scope: !4297)
!4316 = !DILocation(line: 107, column: 13, scope: !4297)
!4317 = !DILocation(line: 0, scope: !4297)
!4318 = !DILocation(line: 108, column: 10, scope: !4297)
!4319 = !DILocation(line: 108, column: 3, scope: !4297)
!4320 = !DILocation(line: 109, column: 7, scope: !4297)
!4321 = !DILocation(line: 109, column: 16, scope: !4297)
!4322 = !DILocation(line: 109, column: 13, scope: !4297)
!4323 = !DILocation(line: 110, column: 10, scope: !4297)
!4324 = !DILocation(line: 110, column: 3, scope: !4297)
!4325 = !DILocation(line: 118, column: 5, scope: !4297)
!4326 = !DILocation(line: 118, column: 11, scope: !4297)
!4327 = !DILocation(line: 119, column: 12, scope: !4297)
!4328 = !DILocation(line: 119, column: 3, scope: !4297)
!4329 = !DILocation(line: 121, column: 5, scope: !4297)
!4330 = !DILocation(line: 121, column: 11, scope: !4297)
!4331 = !DILocation(line: 122, column: 12, scope: !4297)
!4332 = !DILocation(line: 122, column: 3, scope: !4297)
!4333 = !DILocation(line: 124, column: 5, scope: !4297)
!4334 = !DILocation(line: 124, column: 14, scope: !4297)
!4335 = !DILocation(line: 124, column: 11, scope: !4297)
!4336 = !DILocation(line: 125, column: 10, scope: !4297)
!4337 = !DILocation(line: 125, column: 3, scope: !4297)
!4338 = !DILocation(line: 127, column: 10, scope: !4297)
!4339 = !DILocation(line: 127, column: 3, scope: !4297)
!4340 = distinct !DISubprogram(name: "runtime.fminimumf", linkageName: "fminimumf", scope: !1560, file: !1560, line: 65, type: !4341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4343)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!3702, !3702}
!4343 = !{!4344, !4345}
!4344 = !DILocalVariable(name: "x", arg: 1, scope: !4340, file: !1560, line: 65, type: !3702)
!4345 = !DILocalVariable(name: "y", arg: 2, scope: !4340, file: !1560, line: 65, type: !3702)
!4346 = !DILocation(line: 65, column: 6, scope: !4340)
!4347 = !DILocation(line: 66, column: 24, scope: !4340)
!4348 = !DILocation(line: 66, column: 27, scope: !4340)
!4349 = !DILocation(line: 66, column: 23, scope: !4340)
!4350 = !DILocation(line: 66, column: 2, scope: !4340)
!4351 = distinct !DISubprogram(name: "runtime.minimumFloat32", linkageName: "runtime.minimumFloat32", scope: !1560, file: !1560, line: 83, type: !4341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4352)
!4352 = !{!4353, !4354}
!4353 = !DILocalVariable(name: "x", arg: 1, scope: !4351, file: !1560, line: 83, type: !3702)
!4354 = !DILocalVariable(name: "y", arg: 2, scope: !4351, file: !1560, line: 83, type: !3702)
!4355 = !DILocation(line: 83, column: 6, scope: !4351)
!4356 = !DILocation(line: 84, column: 38, scope: !4351)
!4357 = !DILocation(line: 84, column: 41, scope: !4351)
!4358 = !DILocation(line: 84, column: 37, scope: !4351)
!4359 = !DILocation(line: 84, column: 2, scope: !4351)
!4360 = distinct !DISubprogram(name: "runtime.minimumFloat[float32 int32]", linkageName: "runtime.minimumFloat[float32 int32]", scope: !1560, file: !1560, line: 101, type: !4361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4363)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!3702, !3702, !381, !381}
!4363 = !{!4364, !4365, !4366, !4367, !4368, !4369}
!4364 = !DILocalVariable(name: "x", arg: 1, scope: !4360, file: !1560, line: 101, type: !3702)
!4365 = !DILocalVariable(name: "y", arg: 2, scope: !4360, file: !1560, line: 101, type: !3702)
!4366 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4360, file: !1560, line: 101, type: !381)
!4367 = !DILocalVariable(name: "magMask", arg: 4, scope: !4360, file: !1560, line: 101, type: !381)
!4368 = !DILocalVariable(name: "xBits", scope: !4360, file: !1560, line: 102, type: !778)
!4369 = !DILocalVariable(name: "yBits", scope: !4360, file: !1560, line: 103, type: !778)
!4370 = !DILocation(line: 101, column: 6, scope: !4360)
!4371 = !DILocation(line: 101, column: 40, scope: !4360)
!4372 = !DILocation(line: 101, column: 43, scope: !4360)
!4373 = !DILocation(line: 102, column: 11, scope: !4360)
!4374 = !DILocation(line: 102, column: 2, scope: !4360)
!4375 = !DILocation(line: 103, column: 11, scope: !4360)
!4376 = !DILocation(line: 103, column: 2, scope: !4360)
!4377 = !DILocation(line: 107, column: 7, scope: !4360)
!4378 = !DILocation(line: 107, column: 16, scope: !4360)
!4379 = !DILocation(line: 107, column: 13, scope: !4360)
!4380 = !DILocation(line: 0, scope: !4360)
!4381 = !DILocation(line: 108, column: 10, scope: !4360)
!4382 = !DILocation(line: 108, column: 3, scope: !4360)
!4383 = !DILocation(line: 109, column: 7, scope: !4360)
!4384 = !DILocation(line: 109, column: 16, scope: !4360)
!4385 = !DILocation(line: 109, column: 13, scope: !4360)
!4386 = !DILocation(line: 110, column: 10, scope: !4360)
!4387 = !DILocation(line: 110, column: 3, scope: !4360)
!4388 = !DILocation(line: 118, column: 5, scope: !4360)
!4389 = !DILocation(line: 118, column: 11, scope: !4360)
!4390 = !DILocation(line: 119, column: 12, scope: !4360)
!4391 = !DILocation(line: 119, column: 3, scope: !4360)
!4392 = !DILocation(line: 121, column: 5, scope: !4360)
!4393 = !DILocation(line: 121, column: 11, scope: !4360)
!4394 = !DILocation(line: 122, column: 12, scope: !4360)
!4395 = !DILocation(line: 122, column: 3, scope: !4360)
!4396 = !DILocation(line: 124, column: 5, scope: !4360)
!4397 = !DILocation(line: 124, column: 14, scope: !4360)
!4398 = !DILocation(line: 124, column: 11, scope: !4360)
!4399 = !DILocation(line: 125, column: 10, scope: !4360)
!4400 = !DILocation(line: 125, column: 3, scope: !4360)
!4401 = !DILocation(line: 127, column: 10, scope: !4360)
!4402 = !DILocation(line: 127, column: 3, scope: !4360)
!4403 = distinct !DISubprogram(name: "runtime.fmaximum", linkageName: "fmaximum", scope: !1560, file: !1560, line: 70, type: !4278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4404)
!4404 = !{!4405, !4406}
!4405 = !DILocalVariable(name: "x", arg: 1, scope: !4403, file: !1560, line: 70, type: !795)
!4406 = !DILocalVariable(name: "y", arg: 2, scope: !4403, file: !1560, line: 70, type: !795)
!4407 = !DILocation(line: 70, column: 6, scope: !4403)
!4408 = !DILocation(line: 71, column: 24, scope: !4403)
!4409 = !DILocation(line: 71, column: 27, scope: !4403)
!4410 = !DILocation(line: 71, column: 23, scope: !4403)
!4411 = !DILocation(line: 71, column: 2, scope: !4403)
!4412 = distinct !DISubprogram(name: "runtime.maximumFloat64", linkageName: "runtime.maximumFloat64", scope: !1560, file: !1560, line: 95, type: !4278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4413)
!4413 = !{!4414, !4415}
!4414 = !DILocalVariable(name: "x", arg: 1, scope: !4412, file: !1560, line: 95, type: !795)
!4415 = !DILocalVariable(name: "y", arg: 2, scope: !4412, file: !1560, line: 95, type: !795)
!4416 = !DILocation(line: 95, column: 6, scope: !4412)
!4417 = !DILocation(line: 96, column: 38, scope: !4412)
!4418 = !DILocation(line: 96, column: 41, scope: !4412)
!4419 = !DILocation(line: 96, column: 37, scope: !4412)
!4420 = !DILocation(line: 96, column: 2, scope: !4412)
!4421 = distinct !DISubprogram(name: "runtime.maximumFloat[float64 int64]", linkageName: "runtime.maximumFloat[float64 int64]", scope: !1560, file: !1560, line: 133, type: !4298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4422)
!4422 = !{!4423, !4424, !4425, !4426, !4427, !4428, !4429}
!4423 = !DILocalVariable(name: "x", arg: 1, scope: !4421, file: !1560, line: 133, type: !795)
!4424 = !DILocalVariable(name: "y", arg: 2, scope: !4421, file: !1560, line: 133, type: !795)
!4425 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4421, file: !1560, line: 133, type: !1699)
!4426 = !DILocalVariable(name: "magMask", arg: 4, scope: !4421, file: !1560, line: 133, type: !1699)
!4427 = !DILocalVariable(name: "xBits", scope: !4421, file: !1560, line: 134, type: !778)
!4428 = !DILocalVariable(name: "yBits", scope: !4421, file: !1560, line: 135, type: !778)
!4429 = !DILocalVariable(name: "maxNegNaN", scope: !4421, file: !1560, line: 149, type: !778)
!4430 = !DILocation(line: 133, column: 6, scope: !4421)
!4431 = !DILocation(line: 133, column: 40, scope: !4421)
!4432 = !DILocation(line: 133, column: 43, scope: !4421)
!4433 = !DILocation(line: 134, column: 11, scope: !4421)
!4434 = !DILocation(line: 134, column: 2, scope: !4421)
!4435 = !DILocation(line: 135, column: 11, scope: !4421)
!4436 = !DILocation(line: 135, column: 2, scope: !4421)
!4437 = !DILocation(line: 142, column: 5, scope: !4421)
!4438 = !DILocation(line: 142, column: 11, scope: !4421)
!4439 = !DILocation(line: 0, scope: !4421)
!4440 = !DILocation(line: 143, column: 12, scope: !4421)
!4441 = !DILocation(line: 143, column: 3, scope: !4421)
!4442 = !DILocation(line: 145, column: 5, scope: !4421)
!4443 = !DILocation(line: 145, column: 11, scope: !4421)
!4444 = !DILocation(line: 146, column: 12, scope: !4421)
!4445 = !DILocation(line: 146, column: 3, scope: !4421)
!4446 = !DILocation(line: 149, column: 16, scope: !4421)
!4447 = !DILocation(line: 149, column: 15, scope: !4421)
!4448 = !DILocation(line: 149, column: 2, scope: !4421)
!4449 = !DILocation(line: 151, column: 7, scope: !4421)
!4450 = !DILocation(line: 151, column: 16, scope: !4421)
!4451 = !DILocation(line: 151, column: 13, scope: !4421)
!4452 = !DILocation(line: 152, column: 10, scope: !4421)
!4453 = !DILocation(line: 152, column: 3, scope: !4421)
!4454 = !DILocation(line: 153, column: 7, scope: !4421)
!4455 = !DILocation(line: 153, column: 16, scope: !4421)
!4456 = !DILocation(line: 153, column: 13, scope: !4421)
!4457 = !DILocation(line: 154, column: 10, scope: !4421)
!4458 = !DILocation(line: 154, column: 3, scope: !4421)
!4459 = !DILocation(line: 156, column: 5, scope: !4421)
!4460 = !DILocation(line: 156, column: 14, scope: !4421)
!4461 = !DILocation(line: 156, column: 11, scope: !4421)
!4462 = !DILocation(line: 157, column: 10, scope: !4421)
!4463 = !DILocation(line: 157, column: 3, scope: !4421)
!4464 = !DILocation(line: 159, column: 10, scope: !4421)
!4465 = !DILocation(line: 159, column: 3, scope: !4421)
!4466 = distinct !DISubprogram(name: "runtime.fmaximumf", linkageName: "fmaximumf", scope: !1560, file: !1560, line: 75, type: !4341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4467)
!4467 = !{!4468, !4469}
!4468 = !DILocalVariable(name: "x", arg: 1, scope: !4466, file: !1560, line: 75, type: !3702)
!4469 = !DILocalVariable(name: "y", arg: 2, scope: !4466, file: !1560, line: 75, type: !3702)
!4470 = !DILocation(line: 75, column: 6, scope: !4466)
!4471 = !DILocation(line: 76, column: 24, scope: !4466)
!4472 = !DILocation(line: 76, column: 27, scope: !4466)
!4473 = !DILocation(line: 76, column: 23, scope: !4466)
!4474 = !DILocation(line: 76, column: 2, scope: !4466)
!4475 = distinct !DISubprogram(name: "runtime.maximumFloat32", linkageName: "runtime.maximumFloat32", scope: !1560, file: !1560, line: 91, type: !4341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4476)
!4476 = !{!4477, !4478}
!4477 = !DILocalVariable(name: "x", arg: 1, scope: !4475, file: !1560, line: 91, type: !3702)
!4478 = !DILocalVariable(name: "y", arg: 2, scope: !4475, file: !1560, line: 91, type: !3702)
!4479 = !DILocation(line: 91, column: 6, scope: !4475)
!4480 = !DILocation(line: 92, column: 38, scope: !4475)
!4481 = !DILocation(line: 92, column: 41, scope: !4475)
!4482 = !DILocation(line: 92, column: 37, scope: !4475)
!4483 = !DILocation(line: 92, column: 2, scope: !4475)
!4484 = distinct !DISubprogram(name: "runtime.maximumFloat[float32 int32]", linkageName: "runtime.maximumFloat[float32 int32]", scope: !1560, file: !1560, line: 133, type: !4361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4485)
!4485 = !{!4486, !4487, !4488, !4489, !4490, !4491, !4492}
!4486 = !DILocalVariable(name: "x", arg: 1, scope: !4484, file: !1560, line: 133, type: !3702)
!4487 = !DILocalVariable(name: "y", arg: 2, scope: !4484, file: !1560, line: 133, type: !3702)
!4488 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4484, file: !1560, line: 133, type: !381)
!4489 = !DILocalVariable(name: "magMask", arg: 4, scope: !4484, file: !1560, line: 133, type: !381)
!4490 = !DILocalVariable(name: "xBits", scope: !4484, file: !1560, line: 134, type: !778)
!4491 = !DILocalVariable(name: "yBits", scope: !4484, file: !1560, line: 135, type: !778)
!4492 = !DILocalVariable(name: "maxNegNaN", scope: !4484, file: !1560, line: 149, type: !778)
!4493 = !DILocation(line: 133, column: 6, scope: !4484)
!4494 = !DILocation(line: 133, column: 40, scope: !4484)
!4495 = !DILocation(line: 133, column: 43, scope: !4484)
!4496 = !DILocation(line: 134, column: 11, scope: !4484)
!4497 = !DILocation(line: 134, column: 2, scope: !4484)
!4498 = !DILocation(line: 135, column: 11, scope: !4484)
!4499 = !DILocation(line: 135, column: 2, scope: !4484)
!4500 = !DILocation(line: 142, column: 5, scope: !4484)
!4501 = !DILocation(line: 142, column: 11, scope: !4484)
!4502 = !DILocation(line: 0, scope: !4484)
!4503 = !DILocation(line: 143, column: 12, scope: !4484)
!4504 = !DILocation(line: 143, column: 3, scope: !4484)
!4505 = !DILocation(line: 145, column: 5, scope: !4484)
!4506 = !DILocation(line: 145, column: 11, scope: !4484)
!4507 = !DILocation(line: 146, column: 12, scope: !4484)
!4508 = !DILocation(line: 146, column: 3, scope: !4484)
!4509 = !DILocation(line: 149, column: 16, scope: !4484)
!4510 = !DILocation(line: 149, column: 15, scope: !4484)
!4511 = !DILocation(line: 149, column: 2, scope: !4484)
!4512 = !DILocation(line: 151, column: 7, scope: !4484)
!4513 = !DILocation(line: 151, column: 16, scope: !4484)
!4514 = !DILocation(line: 151, column: 13, scope: !4484)
!4515 = !DILocation(line: 152, column: 10, scope: !4484)
!4516 = !DILocation(line: 152, column: 3, scope: !4484)
!4517 = !DILocation(line: 153, column: 7, scope: !4484)
!4518 = !DILocation(line: 153, column: 16, scope: !4484)
!4519 = !DILocation(line: 153, column: 13, scope: !4484)
!4520 = !DILocation(line: 154, column: 10, scope: !4484)
!4521 = !DILocation(line: 154, column: 3, scope: !4484)
!4522 = !DILocation(line: 156, column: 5, scope: !4484)
!4523 = !DILocation(line: 156, column: 14, scope: !4484)
!4524 = !DILocation(line: 156, column: 11, scope: !4484)
!4525 = !DILocation(line: 157, column: 10, scope: !4484)
!4526 = !DILocation(line: 157, column: 3, scope: !4484)
!4527 = !DILocation(line: 159, column: 10, scope: !4484)
!4528 = !DILocation(line: 159, column: 3, scope: !4484)
!4529 = distinct !DISubprogram(name: "runtime.initHeap", linkageName: "runtime.initHeap", scope: !421, file: !421, line: 34, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4530 = !DILocation(line: 35, column: 12, scope: !4529)
!4531 = !DILocation(line: 39, column: 8, scope: !4529)
!4532 = !DILocation(line: 40, column: 2, scope: !4529)
!4533 = distinct !DISubprogram(name: "runtime.gcCallback", linkageName: "tinygo_runtime_bdwgc_callback", scope: !421, file: !421, line: 46, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4534 = !DILocation(line: 48, column: 17, scope: !4533)
!4535 = !DILocation(line: 49, column: 2, scope: !4533)
!4536 = distinct !DISubprogram(name: "runtime.gcMarkReachable", linkageName: "runtime.gcMarkReachable", scope: !3485, file: !3485, line: 7, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4537 = !DILocation(line: 8, column: 25, scope: !4536)
!4538 = !DILocation(line: 9, column: 2, scope: !4536)
!4539 = distinct !DISubprogram(name: "runtime.markRoots", linkageName: "runtime.markRoots", scope: !421, file: !421, line: 51, type: !4540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4542)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!43, !43}
!4542 = !{!4543, !4544}
!4543 = !DILocalVariable(name: "start", arg: 1, scope: !4539, file: !421, line: 51, type: !43)
!4544 = !DILocalVariable(name: "end", arg: 2, scope: !4539, file: !421, line: 51, type: !43)
!4545 = !DILocation(line: 51, column: 6, scope: !4539)
!4546 = !DILocation(line: 52, column: 17, scope: !4539)
!4547 = !DILocation(line: 52, column: 24, scope: !4539)
!4548 = !DILocation(line: 52, column: 16, scope: !4539)
!4549 = !DILocation(line: 53, column: 2, scope: !4539)
!4550 = distinct !DISubprogram(name: "runtime.free", linkageName: "runtime.free", scope: !421, file: !421, line: 99, type: !2731, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4551)
!4551 = !{!4552}
!4552 = !DILocalVariable(name: "ptr", arg: 1, scope: !4550, file: !421, line: 99, type: !84)
!4553 = !DILocation(line: 99, column: 6, scope: !4550)
!4554 = !DILocation(line: 100, column: 13, scope: !4550)
!4555 = !DILocation(line: 100, column: 12, scope: !4550)
!4556 = !DILocation(line: 101, column: 2, scope: !4550)
!4557 = distinct !DISubprogram(name: "runtime.gcScanGlobals", linkageName: "internal/task.gcScanGlobals", scope: !3485, file: !3485, line: 15, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4558 = !DILocation(line: 16, column: 13, scope: !4557)
!4559 = !DILocation(line: 17, column: 2, scope: !4557)
!4560 = distinct !DISubprogram(name: "runtime.findGlobals", linkageName: "runtime.findGlobals", scope: !3598, file: !3598, line: 95, type: !4561, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4563)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!655}
!4563 = !{!4564, !4565, !4566, !4567, !4580, !4581, !4582, !4589, !4590}
!4564 = !DILocalVariable(name: "found", arg: 1, scope: !4560, file: !3598, line: 95, type: !655)
!4565 = !DILocalVariable(name: "headerPtr", scope: !4560, file: !3598, line: 103, type: !84)
!4566 = !DILocalVariable(name: "i", scope: !4560, file: !3598, line: 104, type: !1908)
!4567 = !DILocalVariable(name: "header", scope: !4560, file: !3598, line: 111, type: !4568)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64, align: 64, dwarfAddressSpace: 0)
!4569 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader64", baseType: !4570)
!4570 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !4571)
!4571 = !{!4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_type", baseType: !98, size: 32, align: 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !98, size: 32, align: 32, offset: 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "offset", baseType: !43, size: 64, align: 64, offset: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", baseType: !43, size: 64, align: 64, offset: 128)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", baseType: !43, size: 64, align: 64, offset: 192)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "filesz", baseType: !43, size: 64, align: 64, offset: 256)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", baseType: !43, size: 64, align: 64, offset: 320)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !43, size: 64, align: 64, offset: 384)
!4580 = !DILocalVariable(name: "start", scope: !4560, file: !3598, line: 113, type: !43)
!4581 = !DILocalVariable(name: "end", scope: !4560, file: !3598, line: 114, type: !43)
!4582 = !DILocalVariable(name: "header", scope: !4560, file: !3598, line: 118, type: !4583)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64, align: 64, dwarfAddressSpace: 0)
!4584 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader32", baseType: !4585)
!4585 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !4586)
!4586 = !{!4572, !4574, !4575, !4576, !4577, !4578, !4587, !4588}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !98, size: 32, align: 32, offset: 384)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !43, size: 64, align: 64, offset: 448)
!4589 = !DILocalVariable(name: "start", scope: !4560, file: !3598, line: 120, type: !43)
!4590 = !DILocalVariable(name: "end", scope: !4560, file: !3598, line: 121, type: !43)
!4591 = !DILocation(line: 95, column: 6, scope: !4560)
!4592 = !DILocation(line: 103, column: 80, scope: !4560)
!4593 = !DILocation(line: 103, column: 67, scope: !4560)
!4594 = !DILocation(line: 103, column: 29, scope: !4560)
!4595 = !DILocation(line: 103, column: 2, scope: !4560)
!4596 = !DILocation(line: 104, column: 6, scope: !4560)
!4597 = !DILocation(line: 0, scope: !4560)
!4598 = !DILocation(line: 104, column: 14, scope: !4560)
!4599 = !DILocation(line: 104, column: 33, scope: !4560)
!4600 = !DILocation(line: 104, column: 21, scope: !4560)
!4601 = !DILocation(line: 104, column: 16, scope: !4560)
!4602 = !DILocation(line: 111, column: 36, scope: !4560)
!4603 = !DILocation(line: 111, column: 4, scope: !4560)
!4604 = !DILocation(line: 112, column: 7, scope: !4560)
!4605 = !DILocation(line: 112, column: 14, scope: !4560)
!4606 = !DILocation(line: 112, column: 20, scope: !4560)
!4607 = !DILocation(line: 112, column: 34, scope: !4560)
!4608 = !DILocation(line: 112, column: 41, scope: !4560)
!4609 = !DILocation(line: 112, column: 46, scope: !4560)
!4610 = !DILocation(line: 112, column: 52, scope: !4560)
!4611 = !DILocation(line: 113, column: 14, scope: !4560)
!4612 = !DILocation(line: 113, column: 21, scope: !4560)
!4613 = !DILocation(line: 113, column: 5, scope: !4560)
!4614 = !DILocation(line: 114, column: 12, scope: !4560)
!4615 = !DILocation(line: 114, column: 20, scope: !4560)
!4616 = !DILocation(line: 114, column: 27, scope: !4560)
!4617 = !DILocation(line: 114, column: 18, scope: !4560)
!4618 = !DILocation(line: 114, column: 5, scope: !4560)
!4619 = !DILocation(line: 115, column: 5, scope: !4560)
!4620 = !DILocation(line: 115, column: 11, scope: !4560)
!4621 = !DILocation(line: 115, column: 18, scope: !4560)
!4622 = !DILocation(line: 115, column: 10, scope: !4560)
!4623 = !DILocation(line: 125, column: 26, scope: !4560)
!4624 = !DILocation(line: 125, column: 48, scope: !4560)
!4625 = !DILocation(line: 125, column: 25, scope: !4560)
!4626 = !DILocation(line: 125, column: 3, scope: !4560)
!4627 = !DILocation(line: 104, column: 41, scope: !4560)
!4628 = !DILocation(line: 118, column: 36, scope: !4560)
!4629 = !DILocation(line: 118, column: 4, scope: !4560)
!4630 = !DILocation(line: 119, column: 7, scope: !4560)
!4631 = !DILocation(line: 119, column: 14, scope: !4560)
!4632 = !DILocation(line: 119, column: 20, scope: !4560)
!4633 = !DILocation(line: 119, column: 34, scope: !4560)
!4634 = !DILocation(line: 119, column: 41, scope: !4560)
!4635 = !DILocation(line: 119, column: 46, scope: !4560)
!4636 = !DILocation(line: 119, column: 52, scope: !4560)
!4637 = !DILocation(line: 120, column: 14, scope: !4560)
!4638 = !DILocation(line: 120, column: 21, scope: !4560)
!4639 = !DILocation(line: 120, column: 5, scope: !4560)
!4640 = !DILocation(line: 121, column: 12, scope: !4560)
!4641 = !DILocation(line: 121, column: 20, scope: !4560)
!4642 = !DILocation(line: 121, column: 27, scope: !4560)
!4643 = !DILocation(line: 121, column: 18, scope: !4560)
!4644 = !DILocation(line: 121, column: 5, scope: !4560)
!4645 = !DILocation(line: 122, column: 5, scope: !4560)
!4646 = !DILocation(line: 122, column: 11, scope: !4560)
!4647 = !DILocation(line: 122, column: 18, scope: !4560)
!4648 = !DILocation(line: 122, column: 10, scope: !4560)
!4649 = !DILocation(line: 127, column: 2, scope: !4560)
!4650 = distinct !DISubprogram(name: "runtime.scanstack", linkageName: "tinygo_scanstack", scope: !3485, file: !3485, line: 23, type: !3225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4651)
!4651 = !{!4652}
!4652 = !DILocalVariable(name: "sp", arg: 1, scope: !4650, file: !3485, line: 23, type: !43)
!4653 = !DILocation(line: 23, column: 6, scope: !4650)
!4654 = !DILocation(line: 24, column: 12, scope: !4650)
!4655 = !DILocation(line: 24, column: 29, scope: !4650)
!4656 = !DILocation(line: 24, column: 11, scope: !4650)
!4657 = !DILocation(line: 25, column: 2, scope: !4650)
!4658 = distinct !DISubprogram(name: "runtime.unsafeSlicePanic", linkageName: "runtime.unsafeSlicePanic", scope: !428, file: !428, line: 211, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4659 = !DILocation(line: 212, column: 30, scope: !4658)
!4660 = !DILocation(line: 212, column: 16, scope: !4658)
!4661 = !DILocation(line: 213, column: 2, scope: !4658)
!4662 = distinct !DISubprogram(name: "runtime.negativeShiftPanic", linkageName: "runtime.negativeShiftPanic", scope: !428, file: !428, line: 221, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4663 = !DILocation(line: 222, column: 30, scope: !4662)
!4664 = !DILocation(line: 222, column: 16, scope: !4662)
!4665 = !DILocation(line: 223, column: 2, scope: !4662)
!4666 = distinct !DISubprogram(name: "runtime.printspace", linkageName: "runtime.printspace", scope: !458, file: !458, line: 282, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4667 = !DILocation(line: 283, column: 9, scope: !4666)
!4668 = !DILocation(line: 284, column: 2, scope: !4666)
!4669 = distinct !DISubprogram(name: "runtime.memmove", linkageName: "runtime.memmove", scope: !1584, file: !1584, line: 48, type: !3619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4670)
!4670 = !{!4671, !4672, !4673}
!4671 = !DILocalVariable(name: "dst", arg: 1, scope: !4669, file: !1584, line: 48, type: !84)
!4672 = !DILocalVariable(name: "src", arg: 2, scope: !4669, file: !1584, line: 48, type: !84)
!4673 = !DILocalVariable(name: "size", arg: 3, scope: !4669, file: !1584, line: 48, type: !43)
!4674 = !DILocation(line: 48, column: 6, scope: !4669)
!4675 = distinct !DISubprogram(name: "runtime.main", linkageName: "main", scope: !414, file: !414, line: 80, type: !4676, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4678)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!381, !485}
!4678 = !{!4679, !4680, !4681, !4682, !4683}
!4679 = !DILocalVariable(name: "argc", arg: 1, scope: !4675, file: !414, line: 80, type: !381)
!4680 = !DILocalVariable(name: "argv", arg: 2, scope: !4675, file: !414, line: 80, type: !485)
!4681 = !DILocalVariable(name: "main_argc", scope: !4675, file: !414, line: 105, type: !381)
!4682 = !DILocalVariable(name: "main_argv", scope: !4675, file: !414, line: 106, type: !485)
!4683 = !DILocalVariable(name: "stackTop", scope: !4675, file: !414, line: 75, type: !43)
!4684 = !DILocation(line: 80, column: 6, scope: !4675)
!4685 = !DILocation(line: 0, scope: !4675)
!4686 = !DILocation(line: 83, column: 15, scope: !4675)
!4687 = !DILocation(line: 87, column: 14, scope: !4675)
!4688 = !DILocation(line: 87, column: 2, scope: !4675)
!4689 = !DILocation(line: 88, column: 14, scope: !4675)
!4690 = !DILocation(line: 88, column: 2, scope: !4675)
!4691 = !DILocation(line: 92, column: 31, scope: !4675)
!4692 = !DILocation(line: 97, column: 35, scope: !4675)
!4693 = !DILocation(line: 97, column: 2, scope: !4675)
!4694 = !DILocation(line: 98, column: 9, scope: !4675)
!4695 = !DILocation(line: 101, column: 2, scope: !4675)
!4696 = distinct !DISubprogram(name: "runtime.allocateHeap", linkageName: "runtime.allocateHeap", scope: !414, file: !414, line: 303, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4697)
!4697 = !{!4698, !4699, !4700, !4701, !4702}
!4698 = !DILocalVariable(name: "heapMaxSize", scope: !4696, file: !414, line: 299, type: !43)
!4699 = !DILocalVariable(name: "addr", scope: !4696, file: !414, line: 309, type: !84)
!4700 = !DILocalVariable(name: "heapStart", scope: !4696, file: !414, line: 301, type: !43)
!4701 = !DILocalVariable(name: "heapSize", scope: !4696, file: !414, line: 298, type: !43)
!4702 = !DILocalVariable(name: "heapEnd", scope: !4696, file: !414, line: 301, type: !43)
!4703 = !DILocation(line: 307, column: 2, scope: !4696)
!4704 = !DILocation(line: 0, scope: !4696)
!4705 = !DILocation(line: 309, column: 21, scope: !4696)
!4706 = !DILocation(line: 309, column: 15, scope: !4696)
!4707 = !DILocation(line: 309, column: 3, scope: !4696)
!4708 = !DILocation(line: 310, column: 6, scope: !4696)
!4709 = !DILocation(line: 310, column: 11, scope: !4696)
!4710 = !DILocation(line: 315, column: 4, scope: !4696)
!4711 = !DILocation(line: 316, column: 7, scope: !4696)
!4712 = !DILocation(line: 316, column: 19, scope: !4696)
!4713 = !DILocation(line: 317, column: 17, scope: !4696)
!4714 = !DILocation(line: 321, column: 23, scope: !4696)
!4715 = !DILocation(line: 321, column: 22, scope: !4696)
!4716 = !DILocation(line: 321, column: 3, scope: !4696)
!4717 = !DILocation(line: 322, column: 13, scope: !4696)
!4718 = !DILocation(line: 322, column: 25, scope: !4696)
!4719 = !DILocation(line: 322, column: 23, scope: !4696)
!4720 = !DILocation(line: 322, column: 3, scope: !4696)
!4721 = !DILocation(line: 325, column: 2, scope: !4696)
!4722 = distinct !DISubprogram(name: "runtime.runMain", linkageName: "runtime.runMain", scope: !414, file: !414, line: 135, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4723 = !DILocation(line: 136, column: 5, scope: !4722)
!4724 = !DILocation(line: 137, column: 2, scope: !4722)
!4725 = distinct !DISubprogram(name: "runtime.run", linkageName: "runtime.run", scope: !515, file: !515, line: 23, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4726)
!4726 = !{!4727}
!4727 = !DILocalVariable(name: "stackTop", scope: !4725, file: !414, line: 75, type: !43)
!4728 = !DILocation(line: 24, column: 10, scope: !4725)
!4729 = !DILocation(line: 25, column: 10, scope: !4725)
!4730 = !DILocation(line: 26, column: 12, scope: !4725)
!4731 = !DILocation(line: 26, column: 11, scope: !4725)
!4732 = !DILocation(line: 27, column: 9, scope: !4725)
!4733 = !DILocation(line: 28, column: 10, scope: !4725)
!4734 = !DILocation(line: 29, column: 2, scope: !4725)
!4735 = distinct !DISubprogram(name: "runtime.tinygo_handle_fatal_signal", linkageName: "tinygo_handle_fatal_signal", scope: !414, file: !414, line: 148, type: !4736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4738)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!381, !43}
!4738 = !{!4739, !4740}
!4739 = !DILocalVariable(name: "sig", arg: 1, scope: !4735, file: !414, line: 148, type: !381)
!4740 = !DILocalVariable(name: "addr", arg: 2, scope: !4735, file: !414, line: 148, type: !43)
!4741 = !DILocation(line: 148, column: 6, scope: !4735)
!4742 = !DILocation(line: 0, scope: !4735)
!4743 = !DILocation(line: 150, column: 7, scope: !4735)
!4744 = !DILocation(line: 154, column: 5, scope: !4735)
!4745 = !DILocation(line: 154, column: 10, scope: !4735)
!4746 = !DILocation(line: 155, column: 14, scope: !4735)
!4747 = !DILocation(line: 156, column: 12, scope: !4735)
!4748 = !DILocation(line: 156, column: 11, scope: !4735)
!4749 = !DILocation(line: 160, column: 13, scope: !4735)
!4750 = !DILocation(line: 161, column: 9, scope: !4735)
!4751 = !DILocation(line: 162, column: 7, scope: !4735)
!4752 = !DILocation(line: 163, column: 10, scope: !4735)
!4753 = !DILocation(line: 180, column: 8, scope: !4735)
!4754 = !DILocation(line: 180, column: 7, scope: !4735)
!4755 = !DILocation(line: 181, column: 2, scope: !4735)
!4756 = !DILocation(line: 164, column: 7, scope: !4735)
!4757 = !DILocation(line: 165, column: 10, scope: !4735)
!4758 = !DILocation(line: 166, column: 7, scope: !4735)
!4759 = !DILocation(line: 167, column: 10, scope: !4735)
!4760 = !DILocation(line: 169, column: 11, scope: !4735)
!4761 = !DILocation(line: 169, column: 10, scope: !4735)
!4762 = !DILocation(line: 158, column: 14, scope: !4735)
!4763 = distinct !DISubprogram(name: "runtime.printlock", linkageName: "runtime.printlock", scope: !515, file: !515, line: 138, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4764 = !DILocation(line: 139, column: 16, scope: !4763)
!4765 = !DILocation(line: 140, column: 2, scope: !4763)
!4766 = distinct !DISubprogram(name: "runtime.printunlock", linkageName: "runtime.printunlock", scope: !515, file: !515, line: 142, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4767 = !DILocation(line: 143, column: 18, scope: !4766)
!4768 = !DILocation(line: 144, column: 2, scope: !4766)
!4769 = distinct !DISubprogram(name: "runtime.sliceAppend", linkageName: "runtime.sliceAppend", scope: !4770, file: !4770, line: 12, type: !4771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4773)
!4770 = !DIFile(filename: "slice.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!84, !84, !43, !43, !43, !43, !84}
!4773 = !{!4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781}
!4774 = !DILocalVariable(name: "srcBuf", arg: 1, scope: !4769, file: !4770, line: 12, type: !84)
!4775 = !DILocalVariable(name: "elemsBuf", arg: 2, scope: !4769, file: !4770, line: 12, type: !84)
!4776 = !DILocalVariable(name: "srcLen", arg: 3, scope: !4769, file: !4770, line: 12, type: !43)
!4777 = !DILocalVariable(name: "srcCap", arg: 4, scope: !4769, file: !4770, line: 12, type: !43)
!4778 = !DILocalVariable(name: "elemsLen", arg: 5, scope: !4769, file: !4770, line: 12, type: !43)
!4779 = !DILocalVariable(name: "elemSize", arg: 6, scope: !4769, file: !4770, line: 12, type: !43)
!4780 = !DILocalVariable(name: "layout", arg: 7, scope: !4769, file: !4770, line: 12, type: !84)
!4781 = !DILocalVariable(name: "newLen", scope: !4769, file: !4770, line: 13, type: !43)
!4782 = !DILocation(line: 12, column: 6, scope: !4769)
!4783 = !DILocation(line: 13, column: 12, scope: !4769)
!4784 = !DILocation(line: 13, column: 21, scope: !4769)
!4785 = !DILocation(line: 13, column: 19, scope: !4769)
!4786 = !DILocation(line: 13, column: 2, scope: !4769)
!4787 = !DILocation(line: 14, column: 5, scope: !4769)
!4788 = !DILocation(line: 14, column: 14, scope: !4769)
!4789 = !DILocation(line: 0, scope: !4769)
!4790 = !DILocation(line: 17, column: 33, scope: !4769)
!4791 = !DILocation(line: 17, column: 41, scope: !4769)
!4792 = !DILocation(line: 17, column: 49, scope: !4769)
!4793 = !DILocation(line: 17, column: 57, scope: !4769)
!4794 = !DILocation(line: 17, column: 65, scope: !4769)
!4795 = !DILocation(line: 17, column: 75, scope: !4769)
!4796 = !DILocation(line: 17, column: 32, scope: !4769)
!4797 = !DILocation(line: 17, column: 3, scope: !4769)
!4798 = !DILocation(line: 17, column: 14, scope: !4769)
!4799 = !DILocation(line: 20, column: 22, scope: !4769)
!4800 = !DILocation(line: 20, column: 30, scope: !4769)
!4801 = !DILocation(line: 20, column: 37, scope: !4769)
!4802 = !DILocation(line: 20, column: 36, scope: !4769)
!4803 = !DILocation(line: 20, column: 21, scope: !4769)
!4804 = !DILocation(line: 20, column: 48, scope: !4769)
!4805 = !DILocation(line: 20, column: 58, scope: !4769)
!4806 = !DILocation(line: 20, column: 67, scope: !4769)
!4807 = !DILocation(line: 20, column: 66, scope: !4769)
!4808 = !DILocation(line: 20, column: 10, scope: !4769)
!4809 = !DILocation(line: 12, column: 18, scope: !4769)
!4810 = !DILocation(line: 12, column: 59, scope: !4769)
!4811 = !DILocation(line: 23, column: 9, scope: !4769)
!4812 = !DILocation(line: 23, column: 17, scope: !4769)
!4813 = !DILocation(line: 23, column: 25, scope: !4769)
!4814 = !DILocation(line: 23, column: 2, scope: !4769)
!4815 = distinct !DISubprogram(name: "runtime.sliceGrow", linkageName: "runtime.sliceGrow", scope: !4770, file: !4770, line: 27, type: !4816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4818)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{!84, !43, !43, !43, !43, !84}
!4818 = !{!4819, !4820, !4821, !4822, !4823, !4824, !4825}
!4819 = !DILocalVariable(name: "oldBuf", arg: 1, scope: !4815, file: !4770, line: 27, type: !84)
!4820 = !DILocalVariable(name: "oldLen", arg: 2, scope: !4815, file: !4770, line: 27, type: !43)
!4821 = !DILocalVariable(name: "oldCap", arg: 3, scope: !4815, file: !4770, line: 27, type: !43)
!4822 = !DILocalVariable(name: "newCap", arg: 4, scope: !4815, file: !4770, line: 27, type: !43)
!4823 = !DILocalVariable(name: "elemSize", arg: 5, scope: !4815, file: !4770, line: 27, type: !43)
!4824 = !DILocalVariable(name: "layout", arg: 6, scope: !4815, file: !4770, line: 27, type: !84)
!4825 = !DILocalVariable(name: "buf", scope: !4815, file: !4770, line: 39, type: !84)
!4826 = !DILocation(line: 27, column: 6, scope: !4815)
!4827 = !DILocation(line: 28, column: 5, scope: !4815)
!4828 = !DILocation(line: 28, column: 15, scope: !4815)
!4829 = !DILocation(line: 28, column: 12, scope: !4815)
!4830 = !DILocation(line: 0, scope: !4815)
!4831 = !DILocation(line: 30, column: 10, scope: !4815)
!4832 = !DILocation(line: 30, column: 18, scope: !4815)
!4833 = !DILocation(line: 30, column: 26, scope: !4815)
!4834 = !DILocation(line: 30, column: 3, scope: !4815)
!4835 = !DILocation(line: 37, column: 30, scope: !4815)
!4836 = !DILocation(line: 37, column: 24, scope: !4815)
!4837 = !DILocation(line: 37, column: 13, scope: !4815)
!4838 = !DILocation(line: 37, column: 2, scope: !4815)
!4839 = !DILocation(line: 39, column: 15, scope: !4815)
!4840 = !DILocation(line: 39, column: 22, scope: !4815)
!4841 = !DILocation(line: 39, column: 21, scope: !4815)
!4842 = !DILocation(line: 39, column: 32, scope: !4815)
!4843 = !DILocation(line: 39, column: 14, scope: !4815)
!4844 = !DILocation(line: 39, column: 2, scope: !4815)
!4845 = !DILocation(line: 40, column: 5, scope: !4815)
!4846 = !DILocation(line: 40, column: 12, scope: !4815)
!4847 = !DILocation(line: 42, column: 11, scope: !4815)
!4848 = !DILocation(line: 42, column: 16, scope: !4815)
!4849 = !DILocation(line: 42, column: 24, scope: !4815)
!4850 = !DILocation(line: 42, column: 31, scope: !4815)
!4851 = !DILocation(line: 42, column: 30, scope: !4815)
!4852 = !DILocation(line: 42, column: 10, scope: !4815)
!4853 = !DILocation(line: 45, column: 9, scope: !4815)
!4854 = !DILocation(line: 45, column: 14, scope: !4815)
!4855 = !DILocation(line: 45, column: 22, scope: !4815)
!4856 = !DILocation(line: 45, column: 2, scope: !4815)
!4857 = distinct !DISubprogram(name: "runtime.tinygo_signal_handler", linkageName: "tinygo_signal_handler", scope: !414, file: !414, line: 420, type: !3421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4858)
!4858 = !{!4859, !4860, !4861, !4862}
!4859 = !DILocalVariable(name: "s", arg: 1, scope: !4857, file: !414, line: 420, type: !381)
!4860 = !DILocalVariable(name: "mask", scope: !4857, file: !414, line: 427, type: !98)
!4861 = !DILocalVariable(name: "val", scope: !4857, file: !414, line: 428, type: !98)
!4862 = !DILocalVariable(name: "swapped", scope: !4857, file: !414, line: 429, type: !371)
!4863 = !DILocation(line: 420, column: 6, scope: !4857)
!4864 = !DILocation(line: 0, scope: !4857)
!4865 = !DILocation(line: 427, column: 31, scope: !4857)
!4866 = !DILocation(line: 427, column: 21, scope: !4857)
!4867 = !DILocation(line: 427, column: 3, scope: !4857)
!4868 = !DILocation(line: 428, column: 30, scope: !4857)
!4869 = !DILocation(line: 428, column: 3, scope: !4857)
!4870 = !DILocation(line: 429, column: 45, scope: !4857)
!4871 = !DILocation(line: 429, column: 50, scope: !4857)
!4872 = !DILocation(line: 429, column: 54, scope: !4857)
!4873 = !DILocation(line: 429, column: 53, scope: !4857)
!4874 = !DILocation(line: 429, column: 44, scope: !4857)
!4875 = !DILocation(line: 429, column: 3, scope: !4857)
!4876 = !DILocation(line: 430, column: 6, scope: !4857)
!4877 = !DILocation(line: 437, column: 21, scope: !4857)
!4878 = !DILocation(line: 437, column: 25, scope: !4857)
!4879 = !DILocation(line: 441, column: 22, scope: !4857)
!4880 = !DILocation(line: 443, column: 2, scope: !4857)
!4881 = distinct !DISubprogram(name: "runtime.stringConcat", linkageName: "runtime.stringConcat", scope: !4243, file: !4243, line: 56, type: !4882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4888)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!4884, !4884}
!4884 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._string", baseType: !4885)
!4885 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !4886)
!4886 = !{!2116, !4887}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !43, size: 64, align: 64, offset: 64)
!4888 = !{!4889, !4890, !4891, !4892}
!4889 = !DILocalVariable(name: "x", arg: 1, scope: !4881, file: !4243, line: 56, type: !4884)
!4890 = !DILocalVariable(name: "y", arg: 2, scope: !4881, file: !4243, line: 56, type: !4884)
!4891 = !DILocalVariable(name: "length", scope: !4881, file: !4243, line: 62, type: !43)
!4892 = !DILocalVariable(name: "buf", scope: !4881, file: !4243, line: 63, type: !84)
!4893 = !DILocation(line: 56, column: 6, scope: !4881)
!4894 = !DILocation(line: 56, column: 19, scope: !4881)
!4895 = !DILocation(line: 56, column: 22, scope: !4881)
!4896 = !DILocation(line: 57, column: 7, scope: !4881)
!4897 = !DILocation(line: 57, column: 14, scope: !4881)
!4898 = !DILocation(line: 0, scope: !4881)
!4899 = !DILocation(line: 58, column: 10, scope: !4881)
!4900 = !DILocation(line: 58, column: 3, scope: !4881)
!4901 = !DILocation(line: 59, column: 14, scope: !4881)
!4902 = !DILocation(line: 59, column: 21, scope: !4881)
!4903 = !DILocation(line: 60, column: 10, scope: !4881)
!4904 = !DILocation(line: 60, column: 3, scope: !4881)
!4905 = !DILocation(line: 62, column: 15, scope: !4881)
!4906 = !DILocation(line: 62, column: 26, scope: !4881)
!4907 = !DILocation(line: 62, column: 22, scope: !4881)
!4908 = !DILocation(line: 62, column: 3, scope: !4881)
!4909 = !DILocation(line: 63, column: 16, scope: !4881)
!4910 = !DILocation(line: 63, column: 45, scope: !4881)
!4911 = !DILocation(line: 63, column: 15, scope: !4881)
!4912 = !DILocation(line: 63, column: 3, scope: !4881)
!4913 = !DILocation(line: 64, column: 10, scope: !4881)
!4914 = !DILocation(line: 64, column: 32, scope: !4881)
!4915 = !DILocation(line: 64, column: 40, scope: !4881)
!4916 = !DILocation(line: 64, column: 9, scope: !4881)
!4917 = !DILocation(line: 65, column: 21, scope: !4881)
!4918 = !DILocation(line: 65, column: 28, scope: !4881)
!4919 = !DILocation(line: 65, column: 20, scope: !4881)
!4920 = !DILocation(line: 65, column: 54, scope: !4881)
!4921 = !DILocation(line: 65, column: 62, scope: !4881)
!4922 = !DILocation(line: 65, column: 9, scope: !4881)
!4923 = !DILocation(line: 66, column: 21, scope: !4881)
!4924 = !DILocation(line: 66, column: 31, scope: !4881)
!4925 = !DILocation(line: 66, column: 43, scope: !4881)
!4926 = !DILocation(line: 66, column: 45, scope: !4881)
!4927 = !DILocation(line: 66, column: 17, scope: !4881)
!4928 = !DILocation(line: 66, column: 3, scope: !4881)
!4929 = distinct !DISubprogram(name: "runtime.stringFromBytes", linkageName: "runtime.stringFromBytes", scope: !4243, file: !4243, line: 71, type: !4930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4933)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!4932}
!4932 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !2115)
!4933 = !{!4934, !4935}
!4934 = !DILocalVariable(name: "x", arg: 1, scope: !4929, file: !4243, line: 71, type: !4932)
!4935 = !DILocalVariable(name: "buf", scope: !4929, file: !4243, line: 76, type: !84)
!4936 = !DILocation(line: 71, column: 6, scope: !4929)
!4937 = !DILocation(line: 71, column: 22, scope: !4929)
!4938 = !DILocation(line: 76, column: 17, scope: !4929)
!4939 = !DILocation(line: 76, column: 43, scope: !4929)
!4940 = !DILocation(line: 76, column: 14, scope: !4929)
!4941 = !DILocation(line: 76, column: 2, scope: !4929)
!4942 = !DILocation(line: 77, column: 9, scope: !4929)
!4943 = !DILocation(line: 77, column: 31, scope: !4929)
!4944 = !DILocation(line: 77, column: 39, scope: !4929)
!4945 = !DILocation(line: 77, column: 8, scope: !4929)
!4946 = !DILocation(line: 78, column: 20, scope: !4929)
!4947 = !DILocation(line: 78, column: 30, scope: !4929)
!4948 = !DILocation(line: 78, column: 42, scope: !4929)
!4949 = !DILocation(line: 78, column: 46, scope: !4929)
!4950 = !DILocation(line: 78, column: 16, scope: !4929)
!4951 = !DILocation(line: 78, column: 2, scope: !4929)
!4952 = distinct !DISubprogram(name: "main.f_gold", linkageName: "f_gold", scope: !4953, file: !4953, line: 6, type: !1906, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !4954)
!4953 = !DIFile(filename: "CHECK_IF_A_NUMBER_IS_JUMBLED_OR_NOT_emit.go", directory: "/root/es/vert/vert/source_funs/go_transcoder/CHECK_IF_A_NUMBER_IS_JUMBLED_OR_NOT")
!4954 = !{!4955, !4956, !4957}
!4955 = !DILocalVariable(name: "num", arg: 1, scope: !4952, file: !4953, line: 6, type: !1908)
!4956 = !DILocalVariable(name: "digit1", scope: !4952, file: !4953, line: 14, type: !1908)
!4957 = !DILocalVariable(name: "digit2", scope: !4952, file: !4953, line: 15, type: !1908)
!4958 = !DILocation(line: 6, column: 6, scope: !4952)
!4959 = !DILocation(line: 7, column: 5, scope: !4952)
!4960 = !DILocation(line: 7, column: 8, scope: !4952)
!4961 = !DILocation(line: 7, column: 12, scope: !4952)
!4962 = !DILocation(line: 0, scope: !4952)
!4963 = !DILocation(line: 8, column: 3, scope: !4952)
!4964 = !DILocation(line: 6, column: 13, scope: !4952)
!4965 = !DILocation(line: 10, column: 6, scope: !4952)
!4966 = !DILocation(line: 10, column: 10, scope: !4952)
!4967 = !DILocation(line: 11, column: 6, scope: !4952)
!4968 = !DILocation(line: 11, column: 9, scope: !4952)
!4969 = !DILocation(line: 11, column: 13, scope: !4952)
!4970 = !DILocation(line: 12, column: 4, scope: !4952)
!4971 = !DILocation(line: 14, column: 20, scope: !4952)
!4972 = !DILocation(line: 14, column: 24, scope: !4952)
!4973 = !DILocation(line: 14, column: 7, scope: !4952)
!4974 = !DILocation(line: 15, column: 21, scope: !4952)
!4975 = !DILocation(line: 15, column: 25, scope: !4952)
!4976 = !DILocation(line: 15, column: 31, scope: !4952)
!4977 = !DILocation(line: 15, column: 7, scope: !4952)
!4978 = !DILocation(line: 16, column: 23, scope: !4952)
!4979 = !DILocation(line: 16, column: 30, scope: !4952)
!4980 = !DILocation(line: 16, column: 29, scope: !4952)
!4981 = !DILocation(line: 16, column: 22, scope: !4952)
!4982 = !DILocation(line: 16, column: 14, scope: !4952)
!4983 = !DILocation(line: 16, column: 39, scope: !4952)
!4984 = !DILocation(line: 17, column: 4, scope: !4952)
!4985 = !DILocation(line: 19, column: 9, scope: !4952)
!4986 = !DILocation(line: 19, column: 13, scope: !4952)
!4987 = !DILocation(line: 19, column: 3, scope: !4952)
!4988 = !DILocation(line: 21, column: 2, scope: !4952)
