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
define internal i64 @math.Float64bits(double %f, ptr %context) unnamed_addr #1 !dbg !1742 {
entry:
    #dbg_value(double %f, !1747, !DIExpression(), !1748)
  %f1 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !1749
  store double %f, ptr %f1, align 8, !dbg !1749
  %0 = load i64, ptr %f1, align 8, !dbg !1750
  ret i64 %0, !dbg !1751
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Float64frombits(i64 %b, ptr %context) unnamed_addr #1 !dbg !1752 {
entry:
    #dbg_value(i64 %b, !1756, !DIExpression(), !1757)
  %b1 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !1758
  store i64 %b, ptr %b1, align 8, !dbg !1758
  %0 = load double, ptr %b1, align 8, !dbg !1759
  ret double %0, !dbg !1760
}

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Log(double %x, ptr %context) #1 !dbg !1761 {
entry:
    #dbg_value(double %x, !1764, !DIExpression(), !1765)
  %0 = call double @llvm.log.f64(double %x), !dbg !1765
  ret double %0, !dbg !1765
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #0

; Function Attrs: nounwind uwtable(sync)
define internal double @math.Round(double %x, ptr %context) #1 !dbg !1766 {
entry:
    #dbg_value(double %x, !1769, !DIExpression(), !1772)
    #dbg_value(double %x, !1769, !DIExpression(), !1773)
  %0 = call i64 @math.Float64bits(double %x, ptr undef), !dbg !1774
    #dbg_value(i64 %0, !1770, !DIExpression(), !1775)
    #dbg_value(i64 %0, !1770, !DIExpression(), !1776)
  %1 = lshr i64 %0, 52, !dbg !1777
  %shift.result = select i1 false, i64 0, i64 %1, !dbg !1777
  %2 = and i64 %shift.result, 2047, !dbg !1778
    #dbg_value(i64 %2, !1771, !DIExpression(), !1779)
    #dbg_value(i64 %2, !1771, !DIExpression(), !1780)
  %3 = icmp ult i64 %2, 1023, !dbg !1781
  br i1 %3, label %if.then, label %if.else, !dbg !1782

if.then:                                          ; preds = %entry
  %4 = and i64 %0, -9223372036854775808, !dbg !1783
    #dbg_value(i64 %4, !1770, !DIExpression(), !1783)
    #dbg_value(i64 %2, !1771, !DIExpression(), !1784)
  %5 = icmp eq i64 %2, 1022, !dbg !1785
  br i1 %5, label %if.then1, label %if.done, !dbg !1782

if.then1:                                         ; preds = %if.then
  %6 = or i64 %4, 4607182418800017408, !dbg !1786
    #dbg_value(i64 %6, !1770, !DIExpression(), !1786)
  br label %if.done, !dbg !1782

if.done:                                          ; preds = %if.then2, %if.else, %if.then1, %if.then
  %7 = phi i64 [ %4, %if.then ], [ %0, %if.else ], [ %6, %if.then1 ], [ %15, %if.then2 ], !dbg !1775
    #dbg_value(i64 %7, !1770, !DIExpression(), !1787)
  %8 = call double @math.Float64frombits(i64 %7, ptr undef), !dbg !1788
  ret double %8, !dbg !1789

if.else:                                          ; preds = %entry
    #dbg_value(i64 %2, !1771, !DIExpression(), !1790)
  %9 = icmp ult i64 %2, 1075, !dbg !1791
  br i1 %9, label %if.then2, label %if.done, !dbg !1782

if.then2:                                         ; preds = %if.else
  %10 = sub i64 %2, 1023, !dbg !1792
    #dbg_value(i64 %10, !1771, !DIExpression(), !1792)
    #dbg_value(i64 %10, !1771, !DIExpression(), !1793)
  %shift.overflow = icmp uge i64 %10, 64, !dbg !1794
  %11 = lshr i64 2251799813685248, %10, !dbg !1794
  %shift.result3 = select i1 %shift.overflow, i64 0, i64 %11, !dbg !1794
  %12 = add i64 %0, %shift.result3, !dbg !1795
    #dbg_value(i64 %12, !1770, !DIExpression(), !1795)
    #dbg_value(i64 %10, !1771, !DIExpression(), !1796)
  %shift.overflow4 = icmp uge i64 %10, 64, !dbg !1797
  %13 = lshr i64 4503599627370495, %10, !dbg !1797
  %shift.result5 = select i1 %shift.overflow4, i64 0, i64 %13, !dbg !1797
  %14 = xor i64 %shift.result5, -1, !dbg !1798
  %15 = and i64 %12, %14, !dbg !1798
    #dbg_value(i64 %15, !1770, !DIExpression(), !1798)
  br label %if.done, !dbg !1782
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.SwapUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %new, ptr %context) unnamed_addr #1 !dbg !1799 {
entry:
    #dbg_value(ptr %addr, !1805, !DIExpression(), !1807)
    #dbg_value(i32 %new, !1806, !DIExpression(), !1807)
  %0 = atomicrmw xchg ptr %addr, i32 %new syncscope("singlethread") seq_cst, align 4, !dbg !1807
  ret i32 %0, !dbg !1807
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"sync/atomic.CompareAndSwapUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %old, i32 %new, ptr %context) unnamed_addr #1 !dbg !1808 {
entry:
    #dbg_value(ptr %addr, !1812, !DIExpression(), !1815)
    #dbg_value(i32 %old, !1813, !DIExpression(), !1815)
    #dbg_value(i32 %new, !1814, !DIExpression(), !1815)
  %0 = cmpxchg ptr %addr, i32 %old, i32 %new syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !1815
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !1815
  ret i1 %1, !dbg !1815
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.AddUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %delta, ptr %context) unnamed_addr #1 !dbg !1816 {
entry:
    #dbg_value(ptr %addr, !1818, !DIExpression(), !1820)
    #dbg_value(i32 %delta, !1819, !DIExpression(), !1820)
  %0 = atomicrmw add ptr %addr, i32 %delta syncscope("singlethread") seq_cst, align 4, !dbg !1820
  %1 = add i32 %0, %delta, !dbg !1820
  ret i32 %1, !dbg !1820
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.LoadUint32"(ptr nocapture dereferenceable_or_null(4) %addr, ptr %context) unnamed_addr #1 !dbg !1821 {
entry:
    #dbg_value(ptr %addr, !1825, !DIExpression(), !1826)
  %0 = load atomic i32, ptr %addr seq_cst, align 4, !dbg !1826
  ret i32 %0, !dbg !1826
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"sync/atomic.StoreUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %val, ptr %context) unnamed_addr #1 !dbg !1827 {
entry:
    #dbg_value(ptr %addr, !1829, !DIExpression(), !1831)
    #dbg_value(i32 %val, !1830, !DIExpression(), !1831)
  store atomic i32 %val, ptr %addr seq_cst, align 4, !dbg !1831
  ret void, !dbg !1831
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Add"(ptr dereferenceable_or_null(4) %x, i32 %delta, ptr %context) #1 !dbg !1832 {
entry:
    #dbg_value(ptr %x, !1838, !DIExpression(), !1840)
    #dbg_value(i32 %delta, !1839, !DIExpression(), !1840)
    #dbg_value(ptr %x, !1838, !DIExpression(), !1841)
  %0 = icmp eq ptr %x, null, !dbg !1842
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1842

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1842
    #dbg_value(i32 %delta, !1839, !DIExpression(), !1843)
  %2 = call i32 @"sync/atomic.AddUint32"(ptr %1, i32 %delta, ptr undef), !dbg !1844
  ret i32 %2, !dbg !1845

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1842
  unreachable, !dbg !1842
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr dereferenceable_or_null(4) %x, i32 %old, i32 %new, ptr %context) #1 !dbg !1846 {
entry:
    #dbg_value(ptr %x, !1850, !DIExpression(), !1853)
    #dbg_value(i32 %old, !1851, !DIExpression(), !1853)
    #dbg_value(i32 %new, !1852, !DIExpression(), !1853)
    #dbg_value(ptr %x, !1850, !DIExpression(), !1854)
  %0 = icmp eq ptr %x, null, !dbg !1855
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1855

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1855
    #dbg_value(i32 %old, !1851, !DIExpression(), !1856)
    #dbg_value(i32 %new, !1852, !DIExpression(), !1857)
  %2 = call i1 @"sync/atomic.CompareAndSwapUint32"(ptr %1, i32 %old, i32 %new, ptr undef), !dbg !1858
  ret i1 %2, !dbg !1859

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1855
  unreachable, !dbg !1855
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Load"(ptr dereferenceable_or_null(4) %x, ptr %context) #1 !dbg !1860 {
entry:
    #dbg_value(ptr %x, !1864, !DIExpression(), !1865)
    #dbg_value(ptr %x, !1864, !DIExpression(), !1866)
  %0 = icmp eq ptr %x, null, !dbg !1867
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1867

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1867
  %2 = call i32 @"sync/atomic.LoadUint32"(ptr %1, ptr undef), !dbg !1868
  ret i32 %2, !dbg !1869

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1867
  unreachable, !dbg !1867
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*sync/atomic.Uint32).Store"(ptr dereferenceable_or_null(4) %x, i32 %val, ptr %context) #1 !dbg !1870 {
entry:
    #dbg_value(ptr %x, !1872, !DIExpression(), !1874)
    #dbg_value(i32 %val, !1873, !DIExpression(), !1874)
    #dbg_value(ptr %x, !1872, !DIExpression(), !1875)
  %0 = icmp eq ptr %x, null, !dbg !1876
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1876

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1876
    #dbg_value(i32 %val, !1873, !DIExpression(), !1877)
  call void @"sync/atomic.StoreUint32"(ptr %1, i32 %val, ptr undef), !dbg !1878
  ret void, !dbg !1879

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1876
  unreachable, !dbg !1876
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Swap"(ptr dereferenceable_or_null(4) %x, i32 %new, ptr %context) #1 !dbg !1880 {
entry:
    #dbg_value(ptr %x, !1882, !DIExpression(), !1884)
    #dbg_value(i32 %new, !1883, !DIExpression(), !1884)
    #dbg_value(ptr %x, !1882, !DIExpression(), !1885)
  %0 = icmp eq ptr %x, null, !dbg !1886
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1886

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1886
    #dbg_value(i32 %new, !1883, !DIExpression(), !1887)
  %2 = call i32 @"sync/atomic.SwapUint32"(ptr %1, i32 %new, ptr undef), !dbg !1888
  ret i32 %2, !dbg !1889

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1886
  unreachable, !dbg !1886
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*internal/futex.Futex).Wait"(ptr dereferenceable_or_null(4) %f, i32 %cmp, ptr %context) #1 !dbg !1890 {
entry:
    #dbg_value(ptr %f, !1896, !DIExpression(), !1898)
    #dbg_value(i32 %cmp, !1897, !DIExpression(), !1898)
    #dbg_value(ptr %f, !1896, !DIExpression(), !1899)
  %0 = icmp eq ptr %f, null, !dbg !1900
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1900

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1900
    #dbg_value(i32 %cmp, !1897, !DIExpression(), !1901)
  call void @tinygo_futex_wait(ptr %1, i32 %cmp), !dbg !1902
  ret i1 false, !dbg !1903

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1900
  unreachable, !dbg !1900
}

declare void @tinygo_futex_wait(ptr nocapture dereferenceable_or_null(4), i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/futex.Futex).Wake"(ptr dereferenceable_or_null(4) %f, ptr %context) #1 !dbg !1904 {
entry:
    #dbg_value(ptr %f, !1908, !DIExpression(), !1909)
    #dbg_value(ptr %f, !1908, !DIExpression(), !1910)
  %0 = icmp eq ptr %f, null, !dbg !1911
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1911

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1911
  call void @tinygo_futex_wake(ptr %1), !dbg !1912
  ret void, !dbg !1913

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1911
  unreachable, !dbg !1911
}

declare void @tinygo_futex_wake(ptr nocapture dereferenceable_or_null(4)) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/futex.Futex).WakeAll"(ptr dereferenceable_or_null(4) %f, ptr %context) #1 !dbg !1914 {
entry:
    #dbg_value(ptr %f, !1916, !DIExpression(), !1917)
    #dbg_value(ptr %f, !1916, !DIExpression(), !1918)
  %0 = icmp eq ptr %f, null, !dbg !1919
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1919

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1919
  call void @tinygo_futex_wake_all(ptr %1), !dbg !1920
  ret void, !dbg !1921

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1919
  unreachable, !dbg !1919
}

declare void @tinygo_futex_wake_all(ptr nocapture dereferenceable_or_null(4)) #2

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(internal/gclayout.Layout).AsPtr"(i64 %l, ptr %context) #1 !dbg !1922 {
entry:
    #dbg_value(i64 %l, !1928, !DIExpression(), !1929)
    #dbg_value(i64 %l, !1928, !DIExpression(), !1930)
  %0 = inttoptr i64 %l to ptr, !dbg !1931
  ret ptr %0, !dbg !1932
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/itoa.Itoa"(i64 %val, ptr %context) #1 !dbg !1933 {
entry:
    #dbg_value(i64 %val, !1938, !DIExpression(), !1939)
    #dbg_value(i64 %val, !1938, !DIExpression(), !1940)
  %0 = icmp slt i64 %val, 0, !dbg !1941
  br i1 %0, label %if.then, label %if.done, !dbg !1942

if.then:                                          ; preds = %entry
    #dbg_value(i64 %val, !1938, !DIExpression(), !1943)
  %1 = sub i64 0, %val, !dbg !1944
  %2 = call %runtime._string @"internal/itoa.Uitoa"(i64 %1, ptr undef), !dbg !1945
  %3 = extractvalue %runtime._string %2, 0, !dbg !1946
  %4 = extractvalue %runtime._string %2, 1, !dbg !1946
  %5 = call %runtime._string @runtime.stringConcat(ptr @"internal/itoa$string", i64 1, ptr %3, i64 %4, ptr undef), !dbg !1946
  ret %runtime._string %5, !dbg !1947

if.done:                                          ; preds = %entry
    #dbg_value(i64 %val, !1938, !DIExpression(), !1948)
  %6 = call %runtime._string @"internal/itoa.Uitoa"(i64 %val, ptr undef), !dbg !1949
  ret %runtime._string %6, !dbg !1950
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/itoa.Uitoa"(i64 %val, ptr %context) unnamed_addr #1 !dbg !1951 {
entry:
    #dbg_value(i64 %val, !1953, !DIExpression(), !1956)
    #dbg_value(i64 %val, !1953, !DIExpression(), !1957)
  %0 = icmp eq i64 %val, 0, !dbg !1958
  br i1 %0, label %if.then, label %if.done, !dbg !1959

if.then:                                          ; preds = %entry
  ret %runtime._string { ptr @"internal/itoa$string.1", i64 1 }, !dbg !1960

if.done:                                          ; preds = %entry
  %buf = call align 1 ptr @runtime.alloc(i64 20, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !1961
    #dbg_value(i64 19, !1954, !DIExpression(), !1962)
  br label %for.loop, !dbg !1959

for.loop:                                         ; preds = %lookup.next, %if.done
  %1 = phi i64 [ %val, %if.done ], [ %4, %lookup.next ], !dbg !1963
  %2 = phi i64 [ 19, %if.done ], [ %11, %lookup.next ], !dbg !1962
    #dbg_value(i64 %1, !1953, !DIExpression(), !1964)
  %3 = icmp uge i64 %1, 10, !dbg !1965
  br i1 %3, label %for.body, label %for.done, !dbg !1959

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !1953, !DIExpression(), !1966)
  %4 = udiv i64 %1, 10, !dbg !1967
    #dbg_value(i64 %4, !1955, !DIExpression(), !1968)
    #dbg_value(i64 %2, !1954, !DIExpression(), !1969)
    #dbg_value(i64 %1, !1953, !DIExpression(), !1970)
  %5 = add i64 48, %1, !dbg !1971
    #dbg_value(i64 %4, !1955, !DIExpression(), !1972)
  %6 = mul i64 %4, 10, !dbg !1973
  %7 = sub i64 %5, %6, !dbg !1974
  %8 = trunc i64 %7 to i8, !dbg !1975
  %9 = icmp uge i64 %2, 20, !dbg !1976
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !1976

lookup.next:                                      ; preds = %for.body
  %10 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1976
  store i8 %8, ptr %10, align 1, !dbg !1976
  %11 = sub i64 %2, 1, !dbg !1977
    #dbg_value(i64 %11, !1954, !DIExpression(), !1977)
    #dbg_value(i64 %4, !1955, !DIExpression(), !1978)
    #dbg_value(i64 %4, !1953, !DIExpression(), !1979)
  br label %for.loop, !dbg !1959

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !1954, !DIExpression(), !1980)
    #dbg_value(i64 %1, !1953, !DIExpression(), !1981)
  %12 = add i64 48, %1, !dbg !1982
  %13 = trunc i64 %12 to i8, !dbg !1983
  %14 = icmp uge i64 %2, 20, !dbg !1984
  br i1 %14, label %lookup.throw1, label %lookup.next2, !dbg !1984

lookup.next2:                                     ; preds = %for.done
  %15 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1984
  store i8 %13, ptr %15, align 1, !dbg !1984
    #dbg_value(i64 %2, !1954, !DIExpression(), !1985)
  %slice.lowhigh = icmp ugt i64 %2, 20, !dbg !1986
  %slice.lowmax = or i1 %slice.lowhigh, false, !dbg !1986
  %slice.lowcap = or i1 %slice.lowmax, false, !dbg !1986
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !1986

slice.next:                                       ; preds = %lookup.next2
  %slice.len = sub i64 20, %2, !dbg !1986
  %slice.ptr = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1986
  %slice.cap = sub i64 20, %2, !dbg !1986
  %16 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !1986
  %17 = insertvalue { ptr, i64, i64 } %16, i64 %slice.len, 1, !dbg !1986
  %18 = insertvalue { ptr, i64, i64 } %17, i64 %slice.cap, 2, !dbg !1986
  %19 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !1987
  %20 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !1987
  %21 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !1987
  %22 = call %runtime._string @runtime.stringFromBytes(ptr %19, i64 %20, i64 %21, ptr undef), !dbg !1987
  ret %runtime._string %22, !dbg !1988

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !1976
  unreachable, !dbg !1976

lookup.throw1:                                    ; preds = %for.done
  call void @runtime.lookupPanic(ptr undef), !dbg !1984
  unreachable, !dbg !1984

slice.throw:                                      ; preds = %lookup.next2
  call void @runtime.slicePanic(ptr undef), !dbg !1986
  unreachable, !dbg !1986
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"unicode/utf8.DecodeRuneInString"(ptr readonly %s.data, i64 %s.len, ptr %context) #1 !dbg !1989 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !1997
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !1997
    #dbg_value(ptr %s.data, !1993, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1997)
    #dbg_value(i64 %s.len, !1993, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1997)
    #dbg_value(%runtime._string %1, !1993, !DIExpression(), !1998)
  %2 = extractvalue %runtime._string %1, 0, !dbg !1999
  %3 = extractvalue %runtime._string %1, 1, !dbg !1999
  %4 = call i1 @runtime.stringEqual(ptr %2, i64 %3, ptr null, i64 0, ptr undef), !dbg !1999
  %5 = xor i1 %4, true, !dbg !1999
  br i1 %5, label %cond.true, label %if.else, !dbg !2000

cond.true:                                        ; preds = %entry
    #dbg_value(%runtime._string %1, !1993, !DIExpression(), !2001)
  %len = extractvalue %runtime._string %1, 1, !dbg !2002
  %6 = icmp uge i64 0, %len, !dbg !2002
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !2002

lookup.next:                                      ; preds = %cond.true
  %7 = extractvalue %runtime._string %1, 0, !dbg !2002
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !2002
  %9 = load i8, ptr %8, align 1, !dbg !2002
  %10 = icmp ult i8 %9, -128, !dbg !2003
  br i1 %10, label %if.then, label %if.else, !dbg !2000

if.then:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !1993, !DIExpression(), !2004)
  %len1 = extractvalue %runtime._string %1, 1, !dbg !2005
  %11 = icmp uge i64 0, %len1, !dbg !2005
  br i1 %11, label %lookup.throw2, label %lookup.next3, !dbg !2005

lookup.next3:                                     ; preds = %if.then
  %12 = extractvalue %runtime._string %1, 0, !dbg !2005
  %13 = getelementptr inbounds i8, ptr %12, i64 0, !dbg !2005
  %14 = load i8, ptr %13, align 1, !dbg !2005
  %15 = zext i8 %14 to i32, !dbg !2006
  %16 = insertvalue { i32, i64 } zeroinitializer, i32 %15, 0, !dbg !2007
  %17 = insertvalue { i32, i64 } %16, i64 1, 1, !dbg !2007
  ret { i32, i64 } %17, !dbg !2007

if.else:                                          ; preds = %lookup.next, %entry
    #dbg_value(%runtime._string %1, !1993, !DIExpression(), !2008)
  %18 = extractvalue %runtime._string %1, 0, !dbg !2009
  %19 = extractvalue %runtime._string %1, 1, !dbg !2009
  %20 = call { i32, i64 } @"unicode/utf8.decodeRuneInStringSlow"(ptr %18, i64 %19, ptr undef), !dbg !2009
  %21 = extractvalue { i32, i64 } %20, 0, !dbg !2009
    #dbg_value(i32 %21, !1994, !DIExpression(), !2010)
  %22 = extractvalue { i32, i64 } %20, 1, !dbg !2009
    #dbg_value(i64 %22, !1996, !DIExpression(), !2011)
  %23 = insertvalue { i32, i64 } zeroinitializer, i32 %21, 0, !dbg !2012
  %24 = insertvalue { i32, i64 } %23, i64 %22, 1, !dbg !2012
  ret { i32, i64 } %24, !dbg !2012

lookup.throw:                                     ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !2002
  unreachable, !dbg !2002

lookup.throw2:                                    ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2005
  unreachable, !dbg !2005
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"unicode/utf8.decodeRuneInStringSlow"(ptr readonly %s.data, i64 %s.len, ptr %context) unnamed_addr #1 !dbg !2013 {
entry:
  %accept = alloca %"unicode/utf8.acceptRange", align 8, !dbg !2025
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !2025
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !2025
    #dbg_value(ptr %s.data, !2015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2025)
    #dbg_value(i64 %s.len, !2015, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2025)
    #dbg_value(%runtime._string %1, !2015, !DIExpression(), !2026)
  %len = extractvalue %runtime._string %1, 1, !dbg !2027
    #dbg_value(i64 %len, !2016, !DIExpression(), !2028)
    #dbg_value(i64 %len, !2016, !DIExpression(), !2029)
  %2 = icmp slt i64 %len, 1, !dbg !2030
  br i1 %2, label %if.then, label %if.done, !dbg !2031

if.then:                                          ; preds = %entry
  ret { i32, i64 } { i32 65533, i64 0 }, !dbg !2032

if.done:                                          ; preds = %entry
    #dbg_value(%runtime._string %1, !2015, !DIExpression(), !2033)
  %len17 = extractvalue %runtime._string %1, 1, !dbg !2034
  %3 = icmp uge i64 0, %len17, !dbg !2034
  br i1 %3, label %lookup.throw, label %lookup.next, !dbg !2034

lookup.next:                                      ; preds = %if.done
  %4 = extractvalue %runtime._string %1, 0, !dbg !2034
  %5 = getelementptr inbounds i8, ptr %4, i64 0, !dbg !2034
  %6 = load i8, ptr %5, align 1, !dbg !2034
    #dbg_value(i8 %6, !2017, !DIExpression(), !2035)
    #dbg_value(i8 %6, !2017, !DIExpression(), !2036)
  %7 = zext i8 %6 to i64, !dbg !2037
  %8 = icmp uge i64 %7, 256, !dbg !2037
  br i1 %8, label %lookup.throw18, label %lookup.next19, !dbg !2037

lookup.next19:                                    ; preds = %lookup.next
  %9 = getelementptr inbounds [256 x i8], ptr @"unicode/utf8.first", i32 0, i64 %7, !dbg !2037
  %10 = load i8, ptr %9, align 1, !dbg !2037
    #dbg_value(i8 %10, !2018, !DIExpression(), !2038)
    #dbg_value(i8 %10, !2018, !DIExpression(), !2039)
  %11 = icmp uge i8 %10, -16, !dbg !2040
  br i1 %11, label %if.then1, label %if.done2, !dbg !2031

if.then1:                                         ; preds = %lookup.next19
    #dbg_value(i8 %10, !2018, !DIExpression(), !2041)
  %12 = zext i8 %10 to i32, !dbg !2042
  %13 = shl i32 %12, 31, !dbg !2043
  %shift.result = select i1 false, i32 0, i32 %13, !dbg !2043
  %14 = ashr i32 %shift.result, 31, !dbg !2044
    #dbg_value(i32 %14, !2019, !DIExpression(), !2045)
    #dbg_value(%runtime._string %1, !2015, !DIExpression(), !2046)
  %len20 = extractvalue %runtime._string %1, 1, !dbg !2047
  %15 = icmp uge i64 0, %len20, !dbg !2047
  br i1 %15, label %lookup.throw21, label %lookup.next22, !dbg !2047

lookup.next22:                                    ; preds = %if.then1
  %16 = extractvalue %runtime._string %1, 0, !dbg !2047
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !2047
  %18 = load i8, ptr %17, align 1, !dbg !2047
  %19 = zext i8 %18 to i32, !dbg !2048
    #dbg_value(i32 %14, !2019, !DIExpression(), !2049)
  %20 = xor i32 %14, -1, !dbg !2050
  %21 = and i32 %19, %20, !dbg !2050
    #dbg_value(i32 %14, !2019, !DIExpression(), !2051)
  %22 = and i32 65533, %14, !dbg !2052
  %23 = or i32 %21, %22, !dbg !2053
  %24 = insertvalue { i32, i64 } zeroinitializer, i32 %23, 0, !dbg !2054
  %25 = insertvalue { i32, i64 } %24, i64 1, 1, !dbg !2054
  ret { i32, i64 } %25, !dbg !2054

if.done2:                                         ; preds = %lookup.next19
    #dbg_value(i8 %10, !2018, !DIExpression(), !2055)
  %26 = and i8 %10, 7, !dbg !2056
  %27 = zext i8 %26 to i64, !dbg !2057
    #dbg_value(i64 %27, !2020, !DIExpression(), !2058)
  store %"unicode/utf8.acceptRange" zeroinitializer, ptr %accept, align 1, !dbg !2025
    #dbg_value(i8 %10, !2018, !DIExpression(), !2059)
  %28 = lshr i8 %10, 4, !dbg !2060
  %shift.result23 = select i1 false, i8 0, i8 %28, !dbg !2060
  %29 = zext i8 %shift.result23 to i64, !dbg !2061
  %30 = icmp uge i64 %29, 16, !dbg !2061
  br i1 %30, label %lookup.throw24, label %lookup.next25, !dbg !2061

lookup.next25:                                    ; preds = %if.done2
  %31 = getelementptr inbounds [16 x %"unicode/utf8.acceptRange"], ptr @"unicode/utf8.acceptRanges", i32 0, i64 %29, !dbg !2061
  %32 = load %"unicode/utf8.acceptRange", ptr %31, align 1, !dbg !2061
  store %"unicode/utf8.acceptRange" %32, ptr %accept, align 1, !dbg !2062
    #dbg_value(%"unicode/utf8.acceptRange" %32, !2021, !DIExpression(), !2062)
    #dbg_value(i64 %len, !2016, !DIExpression(), !2063)
    #dbg_value(i64 %27, !2020, !DIExpression(), !2064)
  %33 = icmp slt i64 %len, %27, !dbg !2065
  br i1 %33, label %if.then3, label %if.done4, !dbg !2031

if.then3:                                         ; preds = %lookup.next25
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2066

if.done4:                                         ; preds = %lookup.next25
    #dbg_value(%runtime._string %1, !2015, !DIExpression(), !2067)
  %len26 = extractvalue %runtime._string %1, 1, !dbg !2068
  %34 = icmp uge i64 1, %len26, !dbg !2068
  br i1 %34, label %lookup.throw27, label %lookup.next28, !dbg !2068

lookup.next28:                                    ; preds = %if.done4
  %35 = extractvalue %runtime._string %1, 0, !dbg !2068
  %36 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !2068
  %37 = load i8, ptr %36, align 1, !dbg !2068
    #dbg_value(i8 %37, !2022, !DIExpression(), !2069)
    #dbg_value(i8 %37, !2022, !DIExpression(), !2070)
  %38 = getelementptr inbounds %"unicode/utf8.acceptRange", ptr %accept, i32 0, i32 0, !dbg !2071
  %39 = icmp eq ptr %38, null, !dbg !2071
  br i1 %39, label %deref.throw, label %deref.next, !dbg !2071

deref.next:                                       ; preds = %lookup.next28
  %40 = load i8, ptr %38, align 1, !dbg !2071
  %41 = icmp ult i8 %37, %40, !dbg !2072
  br i1 %41, label %if.then5, label %cond.false, !dbg !2031

if.then5:                                         ; preds = %deref.next30, %deref.next
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2073

cond.false:                                       ; preds = %deref.next
  %42 = getelementptr inbounds %"unicode/utf8.acceptRange", ptr %accept, i32 0, i32 1, !dbg !2074
  %43 = icmp eq ptr %42, null, !dbg !2074
  br i1 %43, label %deref.throw29, label %deref.next30, !dbg !2074

deref.next30:                                     ; preds = %cond.false
  %44 = load i8, ptr %42, align 1, !dbg !2074
    #dbg_value(i8 %37, !2022, !DIExpression(), !2075)
  %45 = icmp ult i8 %44, %37, !dbg !2076
  br i1 %45, label %if.then5, label %if.done6, !dbg !2031

if.done6:                                         ; preds = %deref.next30
    #dbg_value(i64 %27, !2020, !DIExpression(), !2077)
  %46 = icmp sle i64 %27, 2, !dbg !2078
  br i1 %46, label %if.then7, label %if.done8, !dbg !2031

if.then7:                                         ; preds = %if.done6
    #dbg_value(i8 %6, !2017, !DIExpression(), !2079)
  %47 = and i8 %6, 31, !dbg !2080
  %48 = zext i8 %47 to i32, !dbg !2081
  %49 = shl i32 %48, 6, !dbg !2082
  %shift.result31 = select i1 false, i32 0, i32 %49, !dbg !2082
    #dbg_value(i8 %37, !2022, !DIExpression(), !2083)
  %50 = and i8 %37, 63, !dbg !2084
  %51 = zext i8 %50 to i32, !dbg !2085
  %52 = or i32 %shift.result31, %51, !dbg !2086
  %53 = insertvalue { i32, i64 } zeroinitializer, i32 %52, 0, !dbg !2087
  %54 = insertvalue { i32, i64 } %53, i64 2, 1, !dbg !2087
  ret { i32, i64 } %54, !dbg !2087

if.done8:                                         ; preds = %if.done6
    #dbg_value(%runtime._string %1, !2015, !DIExpression(), !2088)
  %len32 = extractvalue %runtime._string %1, 1, !dbg !2089
  %55 = icmp uge i64 2, %len32, !dbg !2089
  br i1 %55, label %lookup.throw33, label %lookup.next34, !dbg !2089

lookup.next34:                                    ; preds = %if.done8
  %56 = extractvalue %runtime._string %1, 0, !dbg !2089
  %57 = getelementptr inbounds i8, ptr %56, i64 2, !dbg !2089
  %58 = load i8, ptr %57, align 1, !dbg !2089
    #dbg_value(i8 %58, !2023, !DIExpression(), !2090)
    #dbg_value(i8 %58, !2023, !DIExpression(), !2091)
  %59 = icmp ult i8 %58, -128, !dbg !2092
  br i1 %59, label %if.then9, label %cond.false10, !dbg !2031

if.then9:                                         ; preds = %cond.false10, %lookup.next34
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2093

cond.false10:                                     ; preds = %lookup.next34
    #dbg_value(i8 %58, !2023, !DIExpression(), !2094)
  %60 = icmp ult i8 -65, %58, !dbg !2095
  br i1 %60, label %if.then9, label %if.done11, !dbg !2031

if.done11:                                        ; preds = %cond.false10
    #dbg_value(i64 %27, !2020, !DIExpression(), !2096)
  %61 = icmp sle i64 %27, 3, !dbg !2097
  br i1 %61, label %if.then12, label %if.done13, !dbg !2031

if.then12:                                        ; preds = %if.done11
    #dbg_value(i8 %6, !2017, !DIExpression(), !2098)
  %62 = and i8 %6, 15, !dbg !2099
  %63 = zext i8 %62 to i32, !dbg !2100
  %64 = shl i32 %63, 12, !dbg !2101
  %shift.result35 = select i1 false, i32 0, i32 %64, !dbg !2101
    #dbg_value(i8 %37, !2022, !DIExpression(), !2102)
  %65 = and i8 %37, 63, !dbg !2103
  %66 = zext i8 %65 to i32, !dbg !2104
  %67 = shl i32 %66, 6, !dbg !2105
  %shift.result36 = select i1 false, i32 0, i32 %67, !dbg !2105
  %68 = or i32 %shift.result35, %shift.result36, !dbg !2106
    #dbg_value(i8 %58, !2023, !DIExpression(), !2107)
  %69 = and i8 %58, 63, !dbg !2108
  %70 = zext i8 %69 to i32, !dbg !2109
  %71 = or i32 %68, %70, !dbg !2110
  %72 = insertvalue { i32, i64 } zeroinitializer, i32 %71, 0, !dbg !2111
  %73 = insertvalue { i32, i64 } %72, i64 3, 1, !dbg !2111
  ret { i32, i64 } %73, !dbg !2111

if.done13:                                        ; preds = %if.done11
    #dbg_value(%runtime._string %1, !2015, !DIExpression(), !2112)
  %len37 = extractvalue %runtime._string %1, 1, !dbg !2113
  %74 = icmp uge i64 3, %len37, !dbg !2113
  br i1 %74, label %lookup.throw38, label %lookup.next39, !dbg !2113

lookup.next39:                                    ; preds = %if.done13
  %75 = extractvalue %runtime._string %1, 0, !dbg !2113
  %76 = getelementptr inbounds i8, ptr %75, i64 3, !dbg !2113
  %77 = load i8, ptr %76, align 1, !dbg !2113
    #dbg_value(i8 %77, !2024, !DIExpression(), !2114)
    #dbg_value(i8 %77, !2024, !DIExpression(), !2115)
  %78 = icmp ult i8 %77, -128, !dbg !2116
  br i1 %78, label %if.then14, label %cond.false15, !dbg !2031

if.then14:                                        ; preds = %cond.false15, %lookup.next39
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2117

cond.false15:                                     ; preds = %lookup.next39
    #dbg_value(i8 %77, !2024, !DIExpression(), !2118)
  %79 = icmp ult i8 -65, %77, !dbg !2119
  br i1 %79, label %if.then14, label %if.done16, !dbg !2031

if.done16:                                        ; preds = %cond.false15
    #dbg_value(i8 %6, !2017, !DIExpression(), !2120)
  %80 = and i8 %6, 7, !dbg !2121
  %81 = zext i8 %80 to i32, !dbg !2122
  %82 = shl i32 %81, 18, !dbg !2123
  %shift.result40 = select i1 false, i32 0, i32 %82, !dbg !2123
    #dbg_value(i8 %37, !2022, !DIExpression(), !2124)
  %83 = and i8 %37, 63, !dbg !2125
  %84 = zext i8 %83 to i32, !dbg !2126
  %85 = shl i32 %84, 12, !dbg !2127
  %shift.result41 = select i1 false, i32 0, i32 %85, !dbg !2127
  %86 = or i32 %shift.result40, %shift.result41, !dbg !2128
    #dbg_value(i8 %58, !2023, !DIExpression(), !2129)
  %87 = and i8 %58, 63, !dbg !2130
  %88 = zext i8 %87 to i32, !dbg !2131
  %89 = shl i32 %88, 6, !dbg !2132
  %shift.result42 = select i1 false, i32 0, i32 %89, !dbg !2132
  %90 = or i32 %86, %shift.result42, !dbg !2133
    #dbg_value(i8 %77, !2024, !DIExpression(), !2134)
  %91 = and i8 %77, 63, !dbg !2135
  %92 = zext i8 %91 to i32, !dbg !2136
  %93 = or i32 %90, %92, !dbg !2137
  %94 = insertvalue { i32, i64 } zeroinitializer, i32 %93, 0, !dbg !2138
  %95 = insertvalue { i32, i64 } %94, i64 4, 1, !dbg !2138
  ret { i32, i64 } %95, !dbg !2138

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !2034
  unreachable, !dbg !2034

lookup.throw18:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !2037
  unreachable, !dbg !2037

lookup.throw21:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !2047
  unreachable, !dbg !2047

lookup.throw24:                                   ; preds = %if.done2
  call void @runtime.lookupPanic(ptr undef), !dbg !2061
  unreachable, !dbg !2061

lookup.throw27:                                   ; preds = %if.done4
  call void @runtime.lookupPanic(ptr undef), !dbg !2068
  unreachable, !dbg !2068

deref.throw:                                      ; preds = %lookup.next28
  call void @runtime.nilPanic(ptr undef), !dbg !2071
  unreachable, !dbg !2071

deref.throw29:                                    ; preds = %cond.false
  call void @runtime.nilPanic(ptr undef), !dbg !2074
  unreachable, !dbg !2074

lookup.throw33:                                   ; preds = %if.done8
  call void @runtime.lookupPanic(ptr undef), !dbg !2089
  unreachable, !dbg !2089

lookup.throw38:                                   ; preds = %if.done13
  call void @runtime.lookupPanic(ptr undef), !dbg !2113
  unreachable, !dbg !2113
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"unicode/utf8.EncodeRune"(ptr %p.data, i64 %p.len, i64 %p.cap, i32 %r, ptr %context) #1 !dbg !2139 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !2149
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !2149
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !2149
    #dbg_value(ptr %p.data, !2147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2149)
    #dbg_value(i64 %p.len, !2147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2149)
    #dbg_value(i64 %p.cap, !2147, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2149)
    #dbg_value(i32 %r, !2148, !DIExpression(), !2149)
    #dbg_value(i32 %r, !2148, !DIExpression(), !2150)
  %3 = icmp ule i32 %r, 127, !dbg !2151
  br i1 %3, label %if.then, label %if.done, !dbg !2152

if.then:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2147, !DIExpression(), !2153)
    #dbg_value(i32 %r, !2148, !DIExpression(), !2154)
  %4 = trunc i32 %r to i8, !dbg !2155
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2156
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2156
  %5 = icmp uge i64 0, %indexaddr.len, !dbg !2156
  br i1 %5, label %lookup.throw, label %lookup.next, !dbg !2156

lookup.next:                                      ; preds = %if.then
  %6 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 0, !dbg !2156
  store i8 %4, ptr %6, align 1, !dbg !2156
  ret i64 1, !dbg !2157

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2147, !DIExpression(), !2158)
    #dbg_value(i32 %r, !2148, !DIExpression(), !2159)
  %7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2160
  %8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2160
  %9 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2160
  %10 = call i64 @"unicode/utf8.encodeRuneNonASCII"(ptr %7, i64 %8, i64 %9, i32 %r, ptr undef), !dbg !2160
  ret i64 %10, !dbg !2161

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2156
  unreachable, !dbg !2156
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"unicode/utf8.encodeRuneNonASCII"(ptr %p.data, i64 %p.len, i64 %p.cap, i32 %r, ptr %context) unnamed_addr #1 !dbg !2162 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !2167
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !2167
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !2167
    #dbg_value(ptr %p.data, !2164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2167)
    #dbg_value(i64 %p.len, !2164, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2167)
    #dbg_value(i64 %p.cap, !2164, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2167)
    #dbg_value(i32 %r, !2165, !DIExpression(), !2167)
    #dbg_value(i32 %r, !2165, !DIExpression(), !2168)
    #dbg_value(i32 %r, !2166, !DIExpression(), !2169)
    #dbg_value(i32 %r, !2166, !DIExpression(), !2170)
  %3 = icmp ule i32 %r, 2047, !dbg !2171
  br i1 %3, label %switch.body, label %switch.next, !dbg !2172

switch.body:                                      ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2164, !DIExpression(), !2173)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2174
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2174
  %4 = icmp uge i64 1, %indexaddr.len, !dbg !2174
  br i1 %4, label %lookup.throw, label %lookup.next, !dbg !2174

lookup.next:                                      ; preds = %switch.body
  %5 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 1, !dbg !2174
  %6 = load i8, ptr %5, align 1, !dbg !2174
    #dbg_value({ ptr, i64, i64 } %2, !2164, !DIExpression(), !2175)
    #dbg_value(i32 %r, !2165, !DIExpression(), !2176)
  %7 = ashr i32 %r, 6, !dbg !2177
  %8 = trunc i32 %7 to i8, !dbg !2178
  %9 = or i8 -64, %8, !dbg !2179
  %indexaddr.ptr8 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2180
  %indexaddr.len9 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2180
  %10 = icmp uge i64 0, %indexaddr.len9, !dbg !2180
  br i1 %10, label %lookup.throw10, label %lookup.next11, !dbg !2180

lookup.next11:                                    ; preds = %lookup.next
  %11 = getelementptr inbounds i8, ptr %indexaddr.ptr8, i64 0, !dbg !2180
  store i8 %9, ptr %11, align 1, !dbg !2180
    #dbg_value({ ptr, i64, i64 } %2, !2164, !DIExpression(), !2181)
    #dbg_value(i32 %r, !2165, !DIExpression(), !2182)
  %12 = trunc i32 %r to i8, !dbg !2183
  %13 = and i8 %12, 63, !dbg !2184
  %14 = or i8 -128, %13, !dbg !2185
  %indexaddr.ptr12 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2186
  %indexaddr.len13 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2186
  %15 = icmp uge i64 1, %indexaddr.len13, !dbg !2186
  br i1 %15, label %lookup.throw14, label %lookup.next15, !dbg !2186

lookup.next15:                                    ; preds = %lookup.next11
  %16 = getelementptr inbounds i8, ptr %indexaddr.ptr12, i64 1, !dbg !2186
  store i8 %14, ptr %16, align 1, !dbg !2186
  ret i64 2, !dbg !2187

switch.next:                                      ; preds = %entry
    #dbg_value(i32 %r, !2166, !DIExpression(), !2188)
  %17 = icmp ult i32 %r, 55296, !dbg !2189
  br i1 %17, label %switch.body1, label %switch.next2, !dbg !2172

switch.body1:                                     ; preds = %binop.done, %switch.next
    #dbg_value({ ptr, i64, i64 } %2, !2164, !DIExpression(), !2190)
  %indexaddr.ptr16 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2191
  %indexaddr.len17 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2191
  %18 = icmp uge i64 2, %indexaddr.len17, !dbg !2191
  br i1 %18, label %lookup.throw18, label %lookup.next19, !dbg !2191

lookup.next19:                                    ; preds = %switch.body1
  %19 = getelementptr inbounds i8, ptr %indexaddr.ptr16, i64 2, !dbg !2191
  %20 = load i8, ptr %19, align 1, !dbg !2191
    #dbg_value({ ptr, i64, i64 } %2, !2164, !DIExpression(), !2192)
    #dbg_value(i32 %r, !2165, !DIExpression(), !2193)
  %21 = ashr i32 %r, 12, !dbg !2194
  %22 = trunc i32 %21 to i8, !dbg !2195
  %23 = or i8 -32, %22, !dbg !2196
  %indexaddr.ptr20 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2197
  %indexaddr.len21 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2197
  %24 = icmp uge i64 0, %indexaddr.len21, !dbg !2197
  br i1 %24, label %lookup.throw22, label %lookup.next23, !dbg !2197

lookup.next23:                                    ; preds = %lookup.next19
  %25 = getelementptr inbounds i8, ptr %indexaddr.ptr20, i64 0, !dbg !2197
  store i8 %23, ptr %25, align 1, !dbg !2197
    #dbg_value({ ptr, i64, i64 } %2, !2164, !DIExpression(), !2198)
    #dbg_value(i32 %r, !2165, !DIExpression(), !2199)
  %26 = ashr i32 %r, 6, !dbg !2200
  %27 = trunc i32 %26 to i8, !dbg !2201
  %28 = and i8 %27, 63, !dbg !2202
  %29 = or i8 -128, %28, !dbg !2203
  %indexaddr.ptr24 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2204
  %indexaddr.len25 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2204
  %30 = icmp uge i64 1, %indexaddr.len25, !dbg !2204
  br i1 %30, label %lookup.throw26, label %lookup.next27, !dbg !2204

lookup.next27:                                    ; preds = %lookup.next23
  %31 = getelementptr inbounds i8, ptr %indexaddr.ptr24, i64 1, !dbg !2204
  store i8 %29, ptr %31, align 1, !dbg !2204
    #dbg_value({ ptr, i64, i64 } %2, !2164, !DIExpression(), !2205)
    #dbg_value(i32 %r, !2165, !DIExpression(), !2206)
  %32 = trunc i32 %r to i8, !dbg !2207
  %33 = and i8 %32, 63, !dbg !2208
  %34 = or i8 -128, %33, !dbg !2209
  %indexaddr.ptr28 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2210
  %indexaddr.len29 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2210
  %35 = icmp uge i64 2, %indexaddr.len29, !dbg !2210
  br i1 %35, label %lookup.throw30, label %lookup.next31, !dbg !2210

lookup.next31:                                    ; preds = %lookup.next27
  %36 = getelementptr inbounds i8, ptr %indexaddr.ptr28, i64 2, !dbg !2210
  store i8 %34, ptr %36, align 1, !dbg !2210
  ret i64 3, !dbg !2211

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i32 %r, !2166, !DIExpression(), !2212)
  %37 = icmp ult i32 57343, %r, !dbg !2213
  br i1 %37, label %binop.rhs, label %binop.done, !dbg !2172

binop.rhs:                                        ; preds = %switch.next2
    #dbg_value(i32 %r, !2166, !DIExpression(), !2214)
  %38 = icmp ule i32 %r, 65535, !dbg !2215
  br label %binop.done, !dbg !2172

binop.done:                                       ; preds = %binop.rhs, %switch.next2
  %39 = phi i1 [ false, %switch.next2 ], [ %38, %binop.rhs ], !dbg !2216
  br i1 %39, label %switch.body1, label %switch.next3, !dbg !2172

switch.next3:                                     ; preds = %binop.done
    #dbg_value(i32 %r, !2166, !DIExpression(), !2217)
  %40 = icmp ugt i32 %r, 65535, !dbg !2218
  br i1 %40, label %binop.rhs4, label %binop.done5, !dbg !2172

binop.rhs4:                                       ; preds = %switch.next3
    #dbg_value(i32 %r, !2166, !DIExpression(), !2219)
  %41 = icmp ule i32 %r, 1114111, !dbg !2220
  br label %binop.done5, !dbg !2172

binop.done5:                                      ; preds = %binop.rhs4, %switch.next3
  %42 = phi i1 [ false, %switch.next3 ], [ %41, %binop.rhs4 ], !dbg !2221
  br i1 %42, label %switch.body6, label %switch.next7, !dbg !2172

switch.body6:                                     ; preds = %binop.done5
    #dbg_value({ ptr, i64, i64 } %2, !2164, !DIExpression(), !2222)
  %indexaddr.ptr32 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2223
  %indexaddr.len33 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2223
  %43 = icmp uge i64 3, %indexaddr.len33, !dbg !2223
  br i1 %43, label %lookup.throw34, label %lookup.next35, !dbg !2223

lookup.next35:                                    ; preds = %switch.body6
  %44 = getelementptr inbounds i8, ptr %indexaddr.ptr32, i64 3, !dbg !2223
  %45 = load i8, ptr %44, align 1, !dbg !2223
    #dbg_value({ ptr, i64, i64 } %2, !2164, !DIExpression(), !2224)
    #dbg_value(i32 %r, !2165, !DIExpression(), !2225)
  %46 = ashr i32 %r, 18, !dbg !2226
  %47 = trunc i32 %46 to i8, !dbg !2227
  %48 = or i8 -16, %47, !dbg !2228
  %indexaddr.ptr36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2229
  %indexaddr.len37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2229
  %49 = icmp uge i64 0, %indexaddr.len37, !dbg !2229
  br i1 %49, label %lookup.throw38, label %lookup.next39, !dbg !2229

lookup.next39:                                    ; preds = %lookup.next35
  %50 = getelementptr inbounds i8, ptr %indexaddr.ptr36, i64 0, !dbg !2229
  store i8 %48, ptr %50, align 1, !dbg !2229
    #dbg_value({ ptr, i64, i64 } %2, !2164, !DIExpression(), !2230)
    #dbg_value(i32 %r, !2165, !DIExpression(), !2231)
  %51 = ashr i32 %r, 12, !dbg !2232
  %52 = trunc i32 %51 to i8, !dbg !2233
  %53 = and i8 %52, 63, !dbg !2234
  %54 = or i8 -128, %53, !dbg !2235
  %indexaddr.ptr40 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2236
  %indexaddr.len41 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2236
  %55 = icmp uge i64 1, %indexaddr.len41, !dbg !2236
  br i1 %55, label %lookup.throw42, label %lookup.next43, !dbg !2236

lookup.next43:                                    ; preds = %lookup.next39
  %56 = getelementptr inbounds i8, ptr %indexaddr.ptr40, i64 1, !dbg !2236
  store i8 %54, ptr %56, align 1, !dbg !2236
    #dbg_value({ ptr, i64, i64 } %2, !2164, !DIExpression(), !2237)
    #dbg_value(i32 %r, !2165, !DIExpression(), !2238)
  %57 = ashr i32 %r, 6, !dbg !2239
  %58 = trunc i32 %57 to i8, !dbg !2240
  %59 = and i8 %58, 63, !dbg !2241
  %60 = or i8 -128, %59, !dbg !2242
  %indexaddr.ptr44 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2243
  %indexaddr.len45 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2243
  %61 = icmp uge i64 2, %indexaddr.len45, !dbg !2243
  br i1 %61, label %lookup.throw46, label %lookup.next47, !dbg !2243

lookup.next47:                                    ; preds = %lookup.next43
  %62 = getelementptr inbounds i8, ptr %indexaddr.ptr44, i64 2, !dbg !2243
  store i8 %60, ptr %62, align 1, !dbg !2243
    #dbg_value({ ptr, i64, i64 } %2, !2164, !DIExpression(), !2244)
    #dbg_value(i32 %r, !2165, !DIExpression(), !2245)
  %63 = trunc i32 %r to i8, !dbg !2246
  %64 = and i8 %63, 63, !dbg !2247
  %65 = or i8 -128, %64, !dbg !2248
  %indexaddr.ptr48 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2249
  %indexaddr.len49 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2249
  %66 = icmp uge i64 3, %indexaddr.len49, !dbg !2249
  br i1 %66, label %lookup.throw50, label %lookup.next51, !dbg !2249

lookup.next51:                                    ; preds = %lookup.next47
  %67 = getelementptr inbounds i8, ptr %indexaddr.ptr48, i64 3, !dbg !2249
  store i8 %65, ptr %67, align 1, !dbg !2249
  ret i64 4, !dbg !2250

switch.next7:                                     ; preds = %binop.done5
    #dbg_value({ ptr, i64, i64 } %2, !2164, !DIExpression(), !2251)
  %indexaddr.ptr52 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2252
  %indexaddr.len53 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2252
  %68 = icmp uge i64 2, %indexaddr.len53, !dbg !2252
  br i1 %68, label %lookup.throw54, label %lookup.next55, !dbg !2252

lookup.next55:                                    ; preds = %switch.next7
  %69 = getelementptr inbounds i8, ptr %indexaddr.ptr52, i64 2, !dbg !2252
  %70 = load i8, ptr %69, align 1, !dbg !2252
    #dbg_value({ ptr, i64, i64 } %2, !2164, !DIExpression(), !2253)
  %indexaddr.ptr56 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2254
  %indexaddr.len57 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2254
  %71 = icmp uge i64 0, %indexaddr.len57, !dbg !2254
  br i1 %71, label %lookup.throw58, label %lookup.next59, !dbg !2254

lookup.next59:                                    ; preds = %lookup.next55
  %72 = getelementptr inbounds i8, ptr %indexaddr.ptr56, i64 0, !dbg !2254
  store i8 -17, ptr %72, align 1, !dbg !2254
    #dbg_value({ ptr, i64, i64 } %2, !2164, !DIExpression(), !2255)
  %indexaddr.ptr60 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2256
  %indexaddr.len61 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2256
  %73 = icmp uge i64 1, %indexaddr.len61, !dbg !2256
  br i1 %73, label %lookup.throw62, label %lookup.next63, !dbg !2256

lookup.next63:                                    ; preds = %lookup.next59
  %74 = getelementptr inbounds i8, ptr %indexaddr.ptr60, i64 1, !dbg !2256
  store i8 -65, ptr %74, align 1, !dbg !2256
    #dbg_value({ ptr, i64, i64 } %2, !2164, !DIExpression(), !2257)
  %indexaddr.ptr64 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2258
  %indexaddr.len65 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2258
  %75 = icmp uge i64 2, %indexaddr.len65, !dbg !2258
  br i1 %75, label %lookup.throw66, label %lookup.next67, !dbg !2258

lookup.next67:                                    ; preds = %lookup.next63
  %76 = getelementptr inbounds i8, ptr %indexaddr.ptr64, i64 2, !dbg !2258
  store i8 -67, ptr %76, align 1, !dbg !2258
  ret i64 3, !dbg !2259

lookup.throw:                                     ; preds = %switch.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2174
  unreachable, !dbg !2174

lookup.throw10:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !2180
  unreachable, !dbg !2180

lookup.throw14:                                   ; preds = %lookup.next11
  call void @runtime.lookupPanic(ptr undef), !dbg !2186
  unreachable, !dbg !2186

lookup.throw18:                                   ; preds = %switch.body1
  call void @runtime.lookupPanic(ptr undef), !dbg !2191
  unreachable, !dbg !2191

lookup.throw22:                                   ; preds = %lookup.next19
  call void @runtime.lookupPanic(ptr undef), !dbg !2197
  unreachable, !dbg !2197

lookup.throw26:                                   ; preds = %lookup.next23
  call void @runtime.lookupPanic(ptr undef), !dbg !2204
  unreachable, !dbg !2204

lookup.throw30:                                   ; preds = %lookup.next27
  call void @runtime.lookupPanic(ptr undef), !dbg !2210
  unreachable, !dbg !2210

lookup.throw34:                                   ; preds = %switch.body6
  call void @runtime.lookupPanic(ptr undef), !dbg !2223
  unreachable, !dbg !2223

lookup.throw38:                                   ; preds = %lookup.next35
  call void @runtime.lookupPanic(ptr undef), !dbg !2229
  unreachable, !dbg !2229

lookup.throw42:                                   ; preds = %lookup.next39
  call void @runtime.lookupPanic(ptr undef), !dbg !2236
  unreachable, !dbg !2236

lookup.throw46:                                   ; preds = %lookup.next43
  call void @runtime.lookupPanic(ptr undef), !dbg !2243
  unreachable, !dbg !2243

lookup.throw50:                                   ; preds = %lookup.next47
  call void @runtime.lookupPanic(ptr undef), !dbg !2249
  unreachable, !dbg !2249

lookup.throw54:                                   ; preds = %switch.next7
  call void @runtime.lookupPanic(ptr undef), !dbg !2252
  unreachable, !dbg !2252

lookup.throw58:                                   ; preds = %lookup.next55
  call void @runtime.lookupPanic(ptr undef), !dbg !2254
  unreachable, !dbg !2254

lookup.throw62:                                   ; preds = %lookup.next59
  call void @runtime.lookupPanic(ptr undef), !dbg !2256
  unreachable, !dbg !2256

lookup.throw66:                                   ; preds = %lookup.next63
  call void @runtime.lookupPanic(ptr undef), !dbg !2258
  unreachable, !dbg !2258
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"unicode/utf8.ValidRune"(i32 %r, ptr %context) #1 !dbg !2260 {
entry:
    #dbg_value(i32 %r, !2264, !DIExpression(), !2265)
    #dbg_value(i32 %r, !2264, !DIExpression(), !2266)
  %0 = icmp sle i32 0, %r, !dbg !2267
  br i1 %0, label %binop.rhs, label %binop.done, !dbg !2268

binop.rhs:                                        ; preds = %entry
    #dbg_value(i32 %r, !2264, !DIExpression(), !2269)
  %1 = icmp slt i32 %r, 55296, !dbg !2270
  br label %binop.done, !dbg !2268

binop.done:                                       ; preds = %binop.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %1, %binop.rhs ], !dbg !2271
  br i1 %2, label %switch.body, label %switch.next, !dbg !2268

switch.body:                                      ; preds = %binop.done
  ret i1 true, !dbg !2272

switch.next:                                      ; preds = %binop.done
    #dbg_value(i32 %r, !2264, !DIExpression(), !2273)
  %3 = icmp slt i32 57343, %r, !dbg !2274
  br i1 %3, label %binop.rhs1, label %binop.done2, !dbg !2268

binop.rhs1:                                       ; preds = %switch.next
    #dbg_value(i32 %r, !2264, !DIExpression(), !2275)
  %4 = icmp sle i32 %r, 1114111, !dbg !2276
  br label %binop.done2, !dbg !2268

binop.done2:                                      ; preds = %binop.rhs1, %switch.next
  %5 = phi i1 [ false, %switch.next ], [ %4, %binop.rhs1 ], !dbg !2277
  br i1 %5, label %switch.body3, label %switch.next4, !dbg !2268

switch.body3:                                     ; preds = %binop.done2
  ret i1 true, !dbg !2278

switch.next4:                                     ; preds = %binop.done2
  ret i1 false, !dbg !2279
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable(sync)
define internal i8 @"(*internal/reflectlite.RawType).Kind"(ptr dereferenceable_or_null(1) %t, ptr %context) #1 !dbg !2280 {
entry:
    #dbg_value(ptr %t, !2284, !DIExpression(), !2286)
    #dbg_value(ptr %t, !2284, !DIExpression(), !2287)
  %0 = icmp eq ptr %t, null, !dbg !2288
  br i1 %0, label %if.then, label %if.done, !dbg !2289

if.then:                                          ; preds = %entry
  ret i8 0, !dbg !2290

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2284, !DIExpression(), !2291)
  %1 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2292
    #dbg_value(i64 %1, !2285, !DIExpression(), !2293)
    #dbg_value(i64 %1, !2285, !DIExpression(), !2294)
  %2 = icmp ne i64 %1, 0, !dbg !2295
  br i1 %2, label %if.then1, label %if.done2, !dbg !2289

if.then1:                                         ; preds = %if.done
  ret i8 21, !dbg !2296

if.done2:                                         ; preds = %if.done
    #dbg_value(ptr %t, !2284, !DIExpression(), !2297)
  %3 = icmp eq ptr %t, null, !dbg !2298
  br i1 %3, label %gep.throw, label %gep.next, !dbg !2298

gep.next:                                         ; preds = %if.done2
  %4 = getelementptr inbounds %"internal/reflectlite.RawType", ptr %t, i32 0, i32 0, !dbg !2298
  %5 = icmp eq ptr %4, null, !dbg !2298
  br i1 %5, label %deref.throw, label %deref.next, !dbg !2298

deref.next:                                       ; preds = %gep.next
  %6 = load i8, ptr %4, align 1, !dbg !2298
  %7 = and i8 %6, 31, !dbg !2299
  ret i8 %7, !dbg !2300

gep.throw:                                        ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2298
  unreachable, !dbg !2298

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2298
  unreachable, !dbg !2298
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).elem"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2301 {
entry:
    #dbg_value(ptr %t, !2303, !DIExpression(), !2307)
    #dbg_value(ptr %t, !2303, !DIExpression(), !2308)
  %0 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2309
    #dbg_value(i64 %0, !2304, !DIExpression(), !2310)
    #dbg_value(i64 %0, !2304, !DIExpression(), !2311)
  %1 = icmp ne i64 %0, 0, !dbg !2312
  br i1 %1, label %if.then, label %if.done, !dbg !2313

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2303, !DIExpression(), !2314)
  %2 = getelementptr i8, ptr %t, i64 -1, !dbg !2315
  ret ptr %2, !dbg !2316

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2303, !DIExpression(), !2317)
  %3 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2318
    #dbg_value(ptr %3, !2305, !DIExpression(), !2319)
    #dbg_value(ptr %3, !2305, !DIExpression(), !2320)
  %4 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %3, ptr undef), !dbg !2321
  %5 = icmp eq i8 %4, 21, !dbg !2322
  br i1 %5, label %switch.body, label %switch.next, !dbg !2313

switch.body:                                      ; preds = %if.done
    #dbg_value(ptr %3, !2305, !DIExpression(), !2323)
  %6 = getelementptr inbounds %"internal/reflectlite.ptrType", ptr %3, i32 0, i32 2, !dbg !2324
  %7 = icmp eq ptr %6, null, !dbg !2324
  br i1 %7, label %deref.throw, label %deref.next, !dbg !2324

deref.next:                                       ; preds = %switch.body
  %8 = load ptr, ptr %6, align 8, !dbg !2324
  ret ptr %8, !dbg !2325

switch.next:                                      ; preds = %if.done
  %9 = icmp eq i8 %4, 19, !dbg !2326
  br i1 %9, label %switch.body1, label %switch.next2, !dbg !2313

switch.body1:                                     ; preds = %switch.next4, %switch.next3, %switch.next2, %switch.next
    #dbg_value(ptr %3, !2305, !DIExpression(), !2327)
  %10 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %3, i32 0, i32 3, !dbg !2328
  %11 = icmp eq ptr %10, null, !dbg !2328
  br i1 %11, label %deref.throw6, label %deref.next7, !dbg !2328

deref.next7:                                      ; preds = %switch.body1
  %12 = load ptr, ptr %10, align 8, !dbg !2328
  ret ptr %12, !dbg !2329

switch.next2:                                     ; preds = %switch.next
  %13 = icmp eq i8 %4, 22, !dbg !2330
  br i1 %13, label %switch.body1, label %switch.next3, !dbg !2313

switch.next3:                                     ; preds = %switch.next2
  %14 = icmp eq i8 %4, 23, !dbg !2331
  br i1 %14, label %switch.body1, label %switch.next4, !dbg !2313

switch.next4:                                     ; preds = %switch.next3
  %15 = icmp eq i8 %4, 25, !dbg !2332
  br i1 %15, label %switch.body1, label %switch.next5, !dbg !2313

switch.next5:                                     ; preds = %switch.next4
  %16 = load ptr, ptr @"internal/reflectlite.errTypeElem", align 8, !dbg !2333
    #dbg_value(ptr %16, !2306, !DIExpression(), !2333)
  %17 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %16, 1, !dbg !2333
  %18 = extractvalue { ptr, ptr } %17, 0, !dbg !2334
  %19 = extractvalue { ptr, ptr } %17, 1, !dbg !2334
  call void @runtime._panic(ptr %18, ptr %19, ptr undef), !dbg !2334
  unreachable, !dbg !2334

deref.throw:                                      ; preds = %switch.body
  call void @runtime.nilPanic(ptr undef), !dbg !2324
  unreachable, !dbg !2324

deref.throw6:                                     ; preds = %switch.body1
  call void @runtime.nilPanic(ptr undef), !dbg !2328
  unreachable, !dbg !2328
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).Len"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2335 {
entry:
    #dbg_value(ptr %t, !2337, !DIExpression(), !2339)
    #dbg_value(ptr %t, !2337, !DIExpression(), !2340)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2341
  %1 = icmp ne i8 %0, 23, !dbg !2342
  br i1 %1, label %if.then, label %if.done, !dbg !2343

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeLen", align 8, !dbg !2344
    #dbg_value(ptr %2, !2338, !DIExpression(), !2344)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2344
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2345
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2345
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2345
  unreachable, !dbg !2345

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2337, !DIExpression(), !2346)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2347
  %7 = getelementptr inbounds %"internal/reflectlite.arrayType", ptr %6, i32 0, i32 4, !dbg !2348
  %8 = icmp eq ptr %7, null, !dbg !2348
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2348

deref.next:                                       ; preds = %if.done
  %9 = load i64, ptr %7, align 8, !dbg !2348
  ret i64 %9, !dbg !2349

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2348
  unreachable, !dbg !2348
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).underlying"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2350 {
entry:
    #dbg_value(ptr %t, !2352, !DIExpression(), !2353)
    #dbg_value(ptr %t, !2352, !DIExpression(), !2354)
  %0 = call i1 @"(*internal/reflectlite.RawType).isNamed"(ptr %t, ptr undef), !dbg !2355
  br i1 %0, label %if.then, label %if.done, !dbg !2356

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2352, !DIExpression(), !2357)
  %1 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %t, i32 0, i32 3, !dbg !2358
  %2 = icmp eq ptr %1, null, !dbg !2358
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2358

deref.next:                                       ; preds = %if.then
  %3 = load ptr, ptr %1, align 8, !dbg !2358
  ret ptr %3, !dbg !2359

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2352, !DIExpression(), !2360)
  ret ptr %t, !dbg !2361

deref.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2358
  unreachable, !dbg !2358
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*internal/reflectlite.RawType).isNamed"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2362 {
entry:
    #dbg_value(ptr %t, !2364, !DIExpression(), !2366)
    #dbg_value(ptr %t, !2364, !DIExpression(), !2367)
  %0 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2368
    #dbg_value(i64 %0, !2365, !DIExpression(), !2369)
    #dbg_value(i64 %0, !2365, !DIExpression(), !2370)
  %1 = icmp ne i64 %0, 0, !dbg !2371
  br i1 %1, label %if.then, label %if.done, !dbg !2372

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !2373

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2364, !DIExpression(), !2374)
  %2 = icmp eq ptr %t, null, !dbg !2375
  br i1 %2, label %gep.throw, label %gep.next, !dbg !2375

gep.next:                                         ; preds = %if.done
  %3 = getelementptr inbounds %"internal/reflectlite.RawType", ptr %t, i32 0, i32 0, !dbg !2375
  %4 = icmp eq ptr %3, null, !dbg !2375
  br i1 %4, label %deref.throw, label %deref.next, !dbg !2375

deref.next:                                       ; preds = %gep.next
  %5 = load i8, ptr %3, align 1, !dbg !2375
  %6 = and i8 %5, 32, !dbg !2376
  %7 = icmp ne i8 %6, 0, !dbg !2377
  ret i1 %7, !dbg !2378

gep.throw:                                        ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2375
  unreachable, !dbg !2375

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2375
  unreachable, !dbg !2375
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2379 {
entry:
    #dbg_value(ptr %t, !2381, !DIExpression(), !2382)
    #dbg_value(ptr %t, !2381, !DIExpression(), !2383)
  %0 = ptrtoint ptr %t to i64, !dbg !2384
  %1 = and i64 %0, 3, !dbg !2385
  ret i64 %1, !dbg !2386
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.TypeError).Error"(ptr dereferenceable_or_null(16) %e, ptr %context) unnamed_addr #1 !dbg !2387 {
entry:
    #dbg_value(ptr %e, !2391, !DIExpression(), !2392)
    #dbg_value(ptr %e, !2391, !DIExpression(), !2393)
  %0 = icmp eq ptr %e, null, !dbg !2394
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2394

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds { %runtime._string }, ptr %e, i32 0, i32 0, !dbg !2394
  %2 = icmp eq ptr %1, null, !dbg !2394
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2394

deref.next:                                       ; preds = %gep.next
  %3 = load %runtime._string, ptr %1, align 8, !dbg !2394
  %4 = extractvalue %runtime._string %3, 0, !dbg !2395
  %5 = extractvalue %runtime._string %3, 1, !dbg !2395
  %6 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.111", i64 30, ptr %4, i64 %5, ptr undef), !dbg !2395
  %7 = extractvalue %runtime._string %6, 0, !dbg !2396
  %8 = extractvalue %runtime._string %6, 1, !dbg !2396
  %9 = call %runtime._string @runtime.stringConcat(ptr %7, i64 %8, ptr @"internal/reflectlite$string.112", i64 16, ptr undef), !dbg !2396
  ret %runtime._string %9, !dbg !2397

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2394
  unreachable, !dbg !2394

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2394
  unreachable, !dbg !2394
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).ChanDir"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2398 {
entry:
    #dbg_value(ptr %t, !2400, !DIExpression(), !2403)
    #dbg_value(ptr %t, !2400, !DIExpression(), !2404)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2405
  %1 = icmp ne i8 %0, 19, !dbg !2406
  br i1 %1, label %if.then, label %if.done, !dbg !2407

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeChanDir", align 8, !dbg !2408
    #dbg_value(ptr %2, !2401, !DIExpression(), !2408)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2408
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2409
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2409
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2409
  unreachable, !dbg !2409

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2400, !DIExpression(), !2410)
  %6 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %t, i32 0, i32 1, !dbg !2411
  %7 = icmp eq ptr %6, null, !dbg !2411
  br i1 %7, label %deref.throw, label %deref.next, !dbg !2411

deref.next:                                       ; preds = %if.done
  %8 = load i16, ptr %6, align 2, !dbg !2411
  %9 = zext i16 %8 to i64, !dbg !2412
    #dbg_value(i64 %9, !2402, !DIExpression(), !2413)
    #dbg_value(i64 %9, !2402, !DIExpression(), !2414)
  ret i64 %9, !dbg !2415

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2411
  unreachable, !dbg !2411
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).NumField"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2416 {
entry:
    #dbg_value(ptr %t, !2418, !DIExpression(), !2420)
    #dbg_value(ptr %t, !2418, !DIExpression(), !2421)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2422
  %1 = icmp ne i8 %0, 26, !dbg !2423
  br i1 %1, label %if.then, label %if.done, !dbg !2424

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeNumField", align 8, !dbg !2425
    #dbg_value(ptr %2, !2419, !DIExpression(), !2425)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2425
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2426
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2426
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2426
  unreachable, !dbg !2426

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2418, !DIExpression(), !2427)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2428
  %7 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 5, !dbg !2429
  %8 = icmp eq ptr %7, null, !dbg !2429
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2429

deref.next:                                       ; preds = %if.done
  %9 = load i16, ptr %7, align 2, !dbg !2429
  %10 = zext i16 %9 to i64, !dbg !2430
  ret i64 %10, !dbg !2431

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2429
  unreachable, !dbg !2429
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.RawType).String"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2432 {
entry:
    #dbg_value(ptr %t, !2434, !DIExpression(), !2450)
    #dbg_value(ptr %t, !2434, !DIExpression(), !2451)
  %f = alloca %"internal/reflectlite.rawStructField", align 8, !dbg !2452
  %0 = call i1 @"(*internal/reflectlite.RawType).isNamed"(ptr %t, ptr undef), !dbg !2452
  br i1 %0, label %if.then, label %if.done2, !dbg !2453

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2434, !DIExpression(), !2454)
  %1 = call %runtime._string @"(*internal/reflectlite.RawType).name"(ptr %t, ptr undef), !dbg !2455
    #dbg_value(%runtime._string %1, !2435, !DIExpression(), !2456)
    #dbg_value(%runtime._string %1, !2435, !DIExpression(), !2457)
  %len = extractvalue %runtime._string %1, 1, !dbg !2458
  %2 = icmp uge i64 0, %len, !dbg !2458
  br i1 %2, label %lookup.throw, label %lookup.next, !dbg !2458

lookup.next:                                      ; preds = %if.then
  %3 = extractvalue %runtime._string %1, 0, !dbg !2458
  %4 = getelementptr inbounds i8, ptr %3, i64 0, !dbg !2458
  %5 = load i8, ptr %4, align 1, !dbg !2458
  %6 = icmp eq i8 %5, 46, !dbg !2459
  br i1 %6, label %if.then1, label %if.done, !dbg !2453

if.then1:                                         ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2435, !DIExpression(), !2460)
  %7 = extractvalue %runtime._string %1, 0, !dbg !2461
  %8 = extractvalue %runtime._string %1, 1, !dbg !2461
  %slice.lowhigh = icmp ugt i64 1, %8, !dbg !2461
  %slice.highmax = icmp ugt i64 %8, %8, !dbg !2461
  %slice.maxcap = icmp ugt i64 %8, %8, !dbg !2461
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2461
  %slice.lowcap = or i1 %slice.lowmax, %slice.maxcap, !dbg !2461
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2461

slice.next:                                       ; preds = %if.then1
  %9 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !2461
  %10 = sub i64 %8, 1, !dbg !2461
  %11 = insertvalue %runtime._string undef, ptr %9, 0, !dbg !2461
  %12 = insertvalue %runtime._string %11, i64 %10, 1, !dbg !2461
  ret %runtime._string %12, !dbg !2462

if.done:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2435, !DIExpression(), !2463)
  ret %runtime._string %1, !dbg !2464

if.done2:                                         ; preds = %entry
    #dbg_value(ptr %t, !2434, !DIExpression(), !2465)
  %13 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2466
  %14 = icmp eq i8 %13, 19, !dbg !2467
  br i1 %14, label %switch.body, label %switch.next10, !dbg !2453

switch.body:                                      ; preds = %if.done2
    #dbg_value(ptr %t, !2434, !DIExpression(), !2468)
  %15 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2469
  %16 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %15, ptr undef), !dbg !2470
    #dbg_value(%runtime._string %16, !2436, !DIExpression(), !2471)
    #dbg_value(ptr %t, !2434, !DIExpression(), !2472)
  %17 = call i64 @"(*internal/reflectlite.RawType).ChanDir"(ptr %t, ptr undef), !dbg !2473
  %18 = icmp eq i64 %17, 2, !dbg !2474
  br i1 %18, label %switch.body3, label %switch.next, !dbg !2453

switch.body3:                                     ; preds = %switch.body
    #dbg_value(%runtime._string %16, !2436, !DIExpression(), !2475)
  %19 = extractvalue %runtime._string %16, 0, !dbg !2476
  %20 = extractvalue %runtime._string %16, 1, !dbg !2476
  %21 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.87", i64 7, ptr %19, i64 %20, ptr undef), !dbg !2476
  ret %runtime._string %21, !dbg !2477

switch.next:                                      ; preds = %switch.body
  %22 = icmp eq i64 %17, 1, !dbg !2478
  br i1 %22, label %switch.body4, label %switch.next5, !dbg !2453

switch.body4:                                     ; preds = %switch.next
    #dbg_value(%runtime._string %16, !2436, !DIExpression(), !2479)
  %23 = extractvalue %runtime._string %16, 0, !dbg !2480
  %24 = extractvalue %runtime._string %16, 1, !dbg !2480
  %25 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.88", i64 7, ptr %23, i64 %24, ptr undef), !dbg !2480
  ret %runtime._string %25, !dbg !2481

switch.next5:                                     ; preds = %switch.next
  %26 = icmp eq i64 %17, 3, !dbg !2482
  br i1 %26, label %switch.body6, label %switch.next9, !dbg !2453

switch.body6:                                     ; preds = %switch.next5
    #dbg_value(%runtime._string %16, !2436, !DIExpression(), !2483)
  %len29 = extractvalue %runtime._string %16, 1, !dbg !2484
  %27 = icmp uge i64 0, %len29, !dbg !2484
  br i1 %27, label %lookup.throw30, label %lookup.next31, !dbg !2484

lookup.next31:                                    ; preds = %switch.body6
  %28 = extractvalue %runtime._string %16, 0, !dbg !2484
  %29 = getelementptr inbounds i8, ptr %28, i64 0, !dbg !2484
  %30 = load i8, ptr %29, align 1, !dbg !2484
  %31 = icmp eq i8 %30, 60, !dbg !2485
  br i1 %31, label %if.then7, label %if.done8, !dbg !2453

if.then7:                                         ; preds = %lookup.next31
    #dbg_value(%runtime._string %16, !2436, !DIExpression(), !2486)
  %32 = extractvalue %runtime._string %16, 0, !dbg !2487
  %33 = extractvalue %runtime._string %16, 1, !dbg !2487
  %34 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.89", i64 6, ptr %32, i64 %33, ptr undef), !dbg !2487
  %35 = extractvalue %runtime._string %34, 0, !dbg !2488
  %36 = extractvalue %runtime._string %34, 1, !dbg !2488
  %37 = call %runtime._string @runtime.stringConcat(ptr %35, i64 %36, ptr @"internal/reflectlite$string.90", i64 1, ptr undef), !dbg !2488
  ret %runtime._string %37, !dbg !2489

if.done8:                                         ; preds = %lookup.next31
    #dbg_value(%runtime._string %16, !2436, !DIExpression(), !2490)
  %38 = extractvalue %runtime._string %16, 0, !dbg !2491
  %39 = extractvalue %runtime._string %16, 1, !dbg !2491
  %40 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.91", i64 5, ptr %38, i64 %39, ptr undef), !dbg !2491
  ret %runtime._string %40, !dbg !2492

switch.next9:                                     ; preds = %switch.next5
    #dbg_value(ptr %t, !2434, !DIExpression(), !2493)
  %41 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2494
  %42 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %41, ptr undef), !dbg !2495
  ret %runtime._string %42, !dbg !2496

switch.next10:                                    ; preds = %if.done2
  %43 = icmp eq i8 %13, 21, !dbg !2497
  br i1 %43, label %switch.body11, label %switch.next12, !dbg !2453

switch.body11:                                    ; preds = %switch.next10
    #dbg_value(ptr %t, !2434, !DIExpression(), !2498)
  %44 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2499
  %45 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %44, ptr undef), !dbg !2500
  %46 = extractvalue %runtime._string %45, 0, !dbg !2501
  %47 = extractvalue %runtime._string %45, 1, !dbg !2501
  %48 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.92", i64 1, ptr %46, i64 %47, ptr undef), !dbg !2501
  ret %runtime._string %48, !dbg !2502

switch.next12:                                    ; preds = %switch.next10
  %49 = icmp eq i8 %13, 22, !dbg !2503
  br i1 %49, label %switch.body13, label %switch.next14, !dbg !2453

switch.body13:                                    ; preds = %switch.next12
    #dbg_value(ptr %t, !2434, !DIExpression(), !2504)
  %50 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2505
  %51 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %50, ptr undef), !dbg !2506
  %52 = extractvalue %runtime._string %51, 0, !dbg !2507
  %53 = extractvalue %runtime._string %51, 1, !dbg !2507
  %54 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.93", i64 2, ptr %52, i64 %53, ptr undef), !dbg !2507
  ret %runtime._string %54, !dbg !2508

switch.next14:                                    ; preds = %switch.next12
  %55 = icmp eq i8 %13, 23, !dbg !2509
  br i1 %55, label %switch.body15, label %switch.next16, !dbg !2453

switch.body15:                                    ; preds = %switch.next14
    #dbg_value(ptr %t, !2434, !DIExpression(), !2510)
  %56 = call i64 @"(*internal/reflectlite.RawType).Len"(ptr %t, ptr undef), !dbg !2511
  %57 = call %runtime._string @"internal/itoa.Itoa"(i64 %56, ptr undef), !dbg !2512
  %58 = extractvalue %runtime._string %57, 0, !dbg !2513
  %59 = extractvalue %runtime._string %57, 1, !dbg !2513
  %60 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.94", i64 1, ptr %58, i64 %59, ptr undef), !dbg !2513
  %61 = extractvalue %runtime._string %60, 0, !dbg !2514
  %62 = extractvalue %runtime._string %60, 1, !dbg !2514
  %63 = call %runtime._string @runtime.stringConcat(ptr %61, i64 %62, ptr @"internal/reflectlite$string.95", i64 1, ptr undef), !dbg !2514
    #dbg_value(ptr %t, !2434, !DIExpression(), !2515)
  %64 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2516
  %65 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %64, ptr undef), !dbg !2517
  %66 = extractvalue %runtime._string %63, 0, !dbg !2518
  %67 = extractvalue %runtime._string %63, 1, !dbg !2518
  %68 = extractvalue %runtime._string %65, 0, !dbg !2518
  %69 = extractvalue %runtime._string %65, 1, !dbg !2518
  %70 = call %runtime._string @runtime.stringConcat(ptr %66, i64 %67, ptr %68, i64 %69, ptr undef), !dbg !2518
  ret %runtime._string %70, !dbg !2519

switch.next16:                                    ; preds = %switch.next14
  %71 = icmp eq i8 %13, 25, !dbg !2520
  br i1 %71, label %switch.body17, label %switch.next18, !dbg !2453

switch.body17:                                    ; preds = %switch.next16
    #dbg_value(ptr %t, !2434, !DIExpression(), !2521)
  %72 = call ptr @"(*internal/reflectlite.RawType).key"(ptr %t, ptr undef), !dbg !2522
  %73 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %72, ptr undef), !dbg !2523
  %74 = extractvalue %runtime._string %73, 0, !dbg !2524
  %75 = extractvalue %runtime._string %73, 1, !dbg !2524
  %76 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.96", i64 4, ptr %74, i64 %75, ptr undef), !dbg !2524
  %77 = extractvalue %runtime._string %76, 0, !dbg !2525
  %78 = extractvalue %runtime._string %76, 1, !dbg !2525
  %79 = call %runtime._string @runtime.stringConcat(ptr %77, i64 %78, ptr @"internal/reflectlite$string.97", i64 1, ptr undef), !dbg !2525
    #dbg_value(ptr %t, !2434, !DIExpression(), !2526)
  %80 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2527
  %81 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %80, ptr undef), !dbg !2528
  %82 = extractvalue %runtime._string %79, 0, !dbg !2529
  %83 = extractvalue %runtime._string %79, 1, !dbg !2529
  %84 = extractvalue %runtime._string %81, 0, !dbg !2529
  %85 = extractvalue %runtime._string %81, 1, !dbg !2529
  %86 = call %runtime._string @runtime.stringConcat(ptr %82, i64 %83, ptr %84, i64 %85, ptr undef), !dbg !2529
  ret %runtime._string %86, !dbg !2530

switch.next18:                                    ; preds = %switch.next16
  %87 = icmp eq i8 %13, 26, !dbg !2531
  br i1 %87, label %switch.body19, label %switch.next26, !dbg !2453

switch.body19:                                    ; preds = %switch.next18
    #dbg_value(ptr %t, !2434, !DIExpression(), !2532)
  %88 = call i64 @"(*internal/reflectlite.RawType).NumField"(ptr %t, ptr undef), !dbg !2533
    #dbg_value(i64 %88, !2437, !DIExpression(), !2534)
    #dbg_value(i64 %88, !2437, !DIExpression(), !2535)
  %89 = icmp eq i64 %88, 0, !dbg !2536
  br i1 %89, label %if.then20, label %if.done21, !dbg !2453

if.then20:                                        ; preds = %switch.body19
  ret %runtime._string { ptr @"internal/reflectlite$string.98", i64 9 }, !dbg !2537

if.done21:                                        ; preds = %switch.body19
    #dbg_value(%runtime._string poison, !2438, !DIExpression(), !2538)
    #dbg_value(i64 0, !2439, !DIExpression(), !2539)
  br label %for.loop, !dbg !2453

for.loop:                                         ; preds = %if.done25, %if.done21
  %90 = phi %runtime._string [ { ptr @"internal/reflectlite$string.106", i64 8 }, %if.done21 ], [ %144, %if.done25 ], !dbg !2538
  %91 = phi i64 [ 0, %if.done21 ], [ %145, %if.done25 ], !dbg !2539
    #dbg_value(i64 %91, !2439, !DIExpression(), !2540)
    #dbg_value(i64 %88, !2437, !DIExpression(), !2541)
  %92 = icmp slt i64 %91, %88, !dbg !2542
  br i1 %92, label %for.body, label %for.done, !dbg !2453

for.body:                                         ; preds = %for.loop
  store %"internal/reflectlite.rawStructField" zeroinitializer, ptr %f, align 8, !dbg !2452
    #dbg_value(ptr %t, !2434, !DIExpression(), !2543)
    #dbg_value(i64 %91, !2439, !DIExpression(), !2544)
  %93 = call %"internal/reflectlite.rawStructField" @"(*internal/reflectlite.RawType).rawField"(ptr %t, i64 %91, ptr undef), !dbg !2545
  store %"internal/reflectlite.rawStructField" %93, ptr %f, align 8, !dbg !2546
    #dbg_value(%"internal/reflectlite.rawStructField" %93, !2440, !DIExpression(), !2546)
  %94 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 0, !dbg !2547
  %95 = icmp eq ptr %94, null, !dbg !2547
  br i1 %95, label %deref.throw, label %deref.next, !dbg !2547

deref.next:                                       ; preds = %for.body
  %96 = load %runtime._string, ptr %94, align 8, !dbg !2547
  %97 = extractvalue %runtime._string %96, 0, !dbg !2548
  %98 = extractvalue %runtime._string %96, 1, !dbg !2548
  %99 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.100", i64 1, ptr %97, i64 %98, ptr undef), !dbg !2548
  %100 = extractvalue %runtime._string %99, 0, !dbg !2549
  %101 = extractvalue %runtime._string %99, 1, !dbg !2549
  %102 = call %runtime._string @runtime.stringConcat(ptr %100, i64 %101, ptr @"internal/reflectlite$string.101", i64 1, ptr undef), !dbg !2549
  %103 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 2, !dbg !2550
  %104 = icmp eq ptr %103, null, !dbg !2550
  br i1 %104, label %deref.throw32, label %deref.next33, !dbg !2550

deref.next33:                                     ; preds = %deref.next
  %105 = load ptr, ptr %103, align 8, !dbg !2550
  %106 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %105, ptr undef), !dbg !2551
  %107 = extractvalue %runtime._string %102, 0, !dbg !2552
  %108 = extractvalue %runtime._string %102, 1, !dbg !2552
  %109 = extractvalue %runtime._string %106, 0, !dbg !2552
  %110 = extractvalue %runtime._string %106, 1, !dbg !2552
  %111 = call %runtime._string @runtime.stringConcat(ptr %107, i64 %108, ptr %109, i64 %110, ptr undef), !dbg !2552
  %112 = extractvalue %runtime._string %90, 0, !dbg !2553
  %113 = extractvalue %runtime._string %90, 1, !dbg !2553
  %114 = extractvalue %runtime._string %111, 0, !dbg !2553
  %115 = extractvalue %runtime._string %111, 1, !dbg !2553
  %116 = call %runtime._string @runtime.stringConcat(ptr %112, i64 %113, ptr %114, i64 %115, ptr undef), !dbg !2553
    #dbg_value(%runtime._string %116, !2438, !DIExpression(), !2553)
  %117 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 3, !dbg !2554
  %118 = icmp eq ptr %117, null, !dbg !2554
  br i1 %118, label %deref.throw34, label %deref.next35, !dbg !2554

deref.next35:                                     ; preds = %deref.next33
  %119 = load %runtime._string, ptr %117, align 8, !dbg !2554
  %120 = extractvalue %runtime._string %119, 0, !dbg !2555
  %121 = extractvalue %runtime._string %119, 1, !dbg !2555
  %122 = call i1 @runtime.stringEqual(ptr %120, i64 %121, ptr null, i64 0, ptr undef), !dbg !2555
  %123 = xor i1 %122, true, !dbg !2555
  br i1 %123, label %if.then22, label %if.done23, !dbg !2453

if.then22:                                        ; preds = %deref.next35
  %124 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 3, !dbg !2556
  %125 = icmp eq ptr %124, null, !dbg !2556
  br i1 %125, label %deref.throw36, label %deref.next37, !dbg !2556

deref.next37:                                     ; preds = %if.then22
  %126 = load %runtime._string, ptr %124, align 8, !dbg !2556
  %127 = extractvalue %runtime._string %126, 0, !dbg !2557
  %128 = extractvalue %runtime._string %126, 1, !dbg !2557
  %129 = call %runtime._string @"internal/reflectlite.quote"(ptr %127, i64 %128, ptr undef), !dbg !2557
  %130 = extractvalue %runtime._string %129, 0, !dbg !2558
  %131 = extractvalue %runtime._string %129, 1, !dbg !2558
  %132 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.102", i64 1, ptr %130, i64 %131, ptr undef), !dbg !2558
  %133 = extractvalue %runtime._string %116, 0, !dbg !2559
  %134 = extractvalue %runtime._string %116, 1, !dbg !2559
  %135 = extractvalue %runtime._string %132, 0, !dbg !2559
  %136 = extractvalue %runtime._string %132, 1, !dbg !2559
  %137 = call %runtime._string @runtime.stringConcat(ptr %133, i64 %134, ptr %135, i64 %136, ptr undef), !dbg !2559
    #dbg_value(%runtime._string %137, !2438, !DIExpression(), !2559)
  br label %if.done23, !dbg !2453

if.done23:                                        ; preds = %deref.next37, %deref.next35
  %138 = phi %runtime._string [ %116, %deref.next35 ], [ %137, %deref.next37 ], !dbg !2538
    #dbg_value(i64 %91, !2439, !DIExpression(), !2560)
    #dbg_value(i64 %88, !2437, !DIExpression(), !2561)
  %139 = sub i64 %88, 1, !dbg !2562
  %140 = icmp slt i64 %91, %139, !dbg !2563
  br i1 %140, label %if.then24, label %if.done25, !dbg !2453

if.then24:                                        ; preds = %if.done23
  %141 = extractvalue %runtime._string %138, 0, !dbg !2564
  %142 = extractvalue %runtime._string %138, 1, !dbg !2564
  %143 = call %runtime._string @runtime.stringConcat(ptr %141, i64 %142, ptr @"internal/reflectlite$string.103", i64 1, ptr undef), !dbg !2564
    #dbg_value(%runtime._string %143, !2438, !DIExpression(), !2564)
  br label %if.done25, !dbg !2453

if.done25:                                        ; preds = %if.then24, %if.done23
  %144 = phi %runtime._string [ %138, %if.done23 ], [ %143, %if.then24 ], !dbg !2538
  %145 = add i64 %91, 1, !dbg !2565
    #dbg_value(i64 %145, !2439, !DIExpression(), !2565)
  br label %for.loop, !dbg !2453

for.done:                                         ; preds = %for.loop
  %146 = extractvalue %runtime._string %90, 0, !dbg !2566
  %147 = extractvalue %runtime._string %90, 1, !dbg !2566
  %148 = call %runtime._string @runtime.stringConcat(ptr %146, i64 %147, ptr @"internal/reflectlite$string.104", i64 2, ptr undef), !dbg !2566
    #dbg_value(%runtime._string %148, !2438, !DIExpression(), !2566)
    #dbg_value(%runtime._string %148, !2438, !DIExpression(), !2567)
  ret %runtime._string %148, !dbg !2568

switch.next26:                                    ; preds = %switch.next18
  %149 = icmp eq i8 %13, 20, !dbg !2569
  br i1 %149, label %switch.body27, label %switch.next28, !dbg !2453

switch.body27:                                    ; preds = %switch.next26
  ret %runtime._string { ptr @"internal/reflectlite$string.105", i64 12 }, !dbg !2570

switch.next28:                                    ; preds = %switch.next26
    #dbg_value(ptr %t, !2434, !DIExpression(), !2571)
  %150 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2572
  %151 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %150, ptr undef), !dbg !2573
  ret %runtime._string %151, !dbg !2574

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2458
  unreachable, !dbg !2458

slice.throw:                                      ; preds = %if.then1
  call void @runtime.slicePanic(ptr undef), !dbg !2461
  unreachable, !dbg !2461

lookup.throw30:                                   ; preds = %switch.body6
  call void @runtime.lookupPanic(ptr undef), !dbg !2484
  unreachable, !dbg !2484

deref.throw:                                      ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !2547
  unreachable, !dbg !2547

deref.throw32:                                    ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !2550
  unreachable, !dbg !2550

deref.throw34:                                    ; preds = %deref.next33
  call void @runtime.nilPanic(ptr undef), !dbg !2554
  unreachable, !dbg !2554

deref.throw36:                                    ; preds = %if.then22
  call void @runtime.nilPanic(ptr undef), !dbg !2556
  unreachable, !dbg !2556
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).key"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2575 {
entry:
    #dbg_value(ptr %t, !2577, !DIExpression(), !2580)
    #dbg_value(ptr %t, !2577, !DIExpression(), !2581)
  %0 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2582
    #dbg_value(ptr %0, !2578, !DIExpression(), !2583)
    #dbg_value(ptr %0, !2578, !DIExpression(), !2584)
  %1 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %0, ptr undef), !dbg !2585
  %2 = icmp ne i8 %1, 25, !dbg !2586
  br i1 %2, label %if.then, label %if.done, !dbg !2587

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @"internal/reflectlite.errTypeKey", align 8, !dbg !2588
    #dbg_value(ptr %3, !2579, !DIExpression(), !2588)
  %4 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %3, 1, !dbg !2588
  %5 = extractvalue { ptr, ptr } %4, 0, !dbg !2589
  %6 = extractvalue { ptr, ptr } %4, 1, !dbg !2589
  call void @runtime._panic(ptr %5, ptr %6, ptr undef), !dbg !2589
  unreachable, !dbg !2589

if.done:                                          ; preds = %entry
    #dbg_value(ptr %0, !2578, !DIExpression(), !2590)
  %7 = getelementptr inbounds %"internal/reflectlite.namedType", ptr %0, i32 0, i32 4, !dbg !2591
  %8 = icmp eq ptr %7, null, !dbg !2591
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2591

deref.next:                                       ; preds = %if.done
  %9 = load ptr, ptr %7, align 8, !dbg !2591
  ret ptr %9, !dbg !2592

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2591
  unreachable, !dbg !2591
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.RawType).name"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2593 {
entry:
    #dbg_value(ptr %t, !2595, !DIExpression(), !2614)
    #dbg_value(ptr %t, !2595, !DIExpression(), !2615)
    #dbg_value(ptr %t, !2596, !DIExpression(), !2616)
    #dbg_value(ptr %t, !2596, !DIExpression(), !2617)
  %0 = getelementptr i8, ptr %t, i64 32, !dbg !2618
    #dbg_value(ptr %0, !2606, !DIExpression(), !2619)
    #dbg_value(ptr %t, !2596, !DIExpression(), !2620)
  %1 = getelementptr inbounds %"internal/reflectlite.namedType", ptr %t, i32 0, i32 1, !dbg !2621
  %2 = icmp eq ptr %1, null, !dbg !2621
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2621

deref.next:                                       ; preds = %entry
  %3 = load i16, ptr %1, align 2, !dbg !2621
  %4 = and i16 %3, -32768, !dbg !2622
  %5 = icmp ne i16 %4, 0, !dbg !2623
  br i1 %5, label %if.then, label %if.done, !dbg !2624

if.then:                                          ; preds = %deref.next
    #dbg_value(ptr %0, !2606, !DIExpression(), !2625)
    #dbg_value(ptr %0, !2607, !DIExpression(), !2626)
    #dbg_value(ptr %0, !2606, !DIExpression(), !2627)
    #dbg_value(ptr %0, !2607, !DIExpression(), !2628)
  %6 = getelementptr inbounds %"internal/reflectlite.methodSet", ptr %0, i32 0, i32 0, !dbg !2629
  %7 = icmp eq ptr %6, null, !dbg !2629
  br i1 %7, label %deref.throw1, label %deref.next2, !dbg !2629

deref.next2:                                      ; preds = %if.then
  %8 = load i64, ptr %6, align 8, !dbg !2629
  %9 = mul i64 %8, 8, !dbg !2630
  %10 = add i64 8, %9, !dbg !2631
  %11 = getelementptr i8, ptr %0, i64 %10, !dbg !2632
    #dbg_value(ptr %11, !2606, !DIExpression(), !2633)
  br label %if.done, !dbg !2624

if.done:                                          ; preds = %deref.next2, %deref.next
  %12 = phi ptr [ %0, %deref.next ], [ %11, %deref.next2 ], !dbg !2619
    #dbg_value(ptr %12, !2606, !DIExpression(), !2634)
  %13 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %12, ptr undef), !dbg !2635
  ret %runtime._string %13, !dbg !2636

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2621
  unreachable, !dbg !2621

deref.throw1:                                     ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2629
  unreachable, !dbg !2629
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/reflectlite.rawStructField" @"(*internal/reflectlite.RawType).rawField"(ptr dereferenceable_or_null(1) %t, i64 %n, ptr %context) unnamed_addr #1 !dbg !2637 {
entry:
    #dbg_value(ptr %t, !2641, !DIExpression(), !2665)
    #dbg_value(i64 %n, !2642, !DIExpression(), !2665)
    #dbg_value(ptr %t, !2641, !DIExpression(), !2666)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2667
  %1 = icmp ne i8 %0, 26, !dbg !2668
  br i1 %1, label %if.then, label %if.done, !dbg !2669

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeField", align 8, !dbg !2670
    #dbg_value(ptr %2, !2643, !DIExpression(), !2670)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2670
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2671
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2671
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2671
  unreachable, !dbg !2671

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2641, !DIExpression(), !2672)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2673
    #dbg_value(ptr %6, !2644, !DIExpression(), !2674)
    #dbg_value(i64 %n, !2642, !DIExpression(), !2675)
    #dbg_value(ptr %6, !2644, !DIExpression(), !2676)
  %7 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 5, !dbg !2677
  %8 = icmp eq ptr %7, null, !dbg !2677
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2677

deref.next:                                       ; preds = %if.done
  %9 = load i16, ptr %7, align 2, !dbg !2677
  %10 = zext i16 %9 to i64, !dbg !2678
  %11 = icmp uge i64 %n, %10, !dbg !2679
  br i1 %11, label %if.then1, label %if.done2, !dbg !2669

if.then1:                                         ; preds = %deref.next
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"internal/reflectlite$pack.108", ptr undef), !dbg !2680
  unreachable, !dbg !2680

if.done2:                                         ; preds = %deref.next
    #dbg_value(ptr %6, !2644, !DIExpression(), !2681)
  %12 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 6, !dbg !2682
  %13 = icmp eq ptr %12, null, !dbg !2683
  br i1 %13, label %gep.throw, label %gep.next, !dbg !2683

gep.next:                                         ; preds = %if.done2
  %14 = getelementptr inbounds [1 x { ptr, ptr }], ptr %12, i32 0, i64 0, !dbg !2683
    #dbg_value(i64 %n, !2642, !DIExpression(), !2684)
  %15 = mul i64 %n, 16, !dbg !2685
  %16 = getelementptr i8, ptr %14, i64 %15, !dbg !2686
    #dbg_value(ptr %16, !2658, !DIExpression(), !2687)
    #dbg_value(ptr %16, !2658, !DIExpression(), !2688)
  %17 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 1, !dbg !2689
  %18 = icmp eq ptr %17, null, !dbg !2689
  br i1 %18, label %deref.throw3, label %deref.next4, !dbg !2689

deref.next4:                                      ; preds = %gep.next
  %19 = load ptr, ptr %17, align 8, !dbg !2689
    #dbg_value(ptr %19, !2660, !DIExpression(), !2690)
    #dbg_value(ptr %19, !2660, !DIExpression(), !2691)
  %20 = load i8, ptr %19, align 1, !dbg !2692
    #dbg_value(i8 %20, !2661, !DIExpression(), !2693)
    #dbg_value(ptr %19, !2660, !DIExpression(), !2694)
  %21 = getelementptr i8, ptr %19, i64 1, !dbg !2695
    #dbg_value(ptr %21, !2660, !DIExpression(), !2696)
    #dbg_value(ptr %21, !2660, !DIExpression(), !2697)
  %22 = icmp eq ptr %21, null, !dbg !2698
  %23 = and i1 %22, true, !dbg !2698
  %24 = or i1 %23, false, !dbg !2698
  br i1 %24, label %unsafe.Slice.throw, label %unsafe.Slice.next, !dbg !2698

unsafe.Slice.next:                                ; preds = %deref.next4
  %25 = insertvalue { ptr, i64, i64 } undef, ptr %21, 0, !dbg !2698
  %26 = insertvalue { ptr, i64, i64 } %25, i64 5, 1, !dbg !2698
  %27 = insertvalue { ptr, i64, i64 } %26, i64 5, 2, !dbg !2698
  %28 = extractvalue { ptr, i64, i64 } %27, 0, !dbg !2699
  %29 = extractvalue { ptr, i64, i64 } %27, 1, !dbg !2699
  %30 = extractvalue { ptr, i64, i64 } %27, 2, !dbg !2699
  %31 = call { i32, i64 } @"internal/reflectlite.uvarint32"(ptr %28, i64 %29, i64 %30, ptr undef), !dbg !2699
  %32 = extractvalue { i32, i64 } %31, 0, !dbg !2699
    #dbg_value(i32 %32, !2662, !DIExpression(), !2700)
  %33 = extractvalue { i32, i64 } %31, 1, !dbg !2699
    #dbg_value(i64 %33, !2663, !DIExpression(), !2701)
    #dbg_value(ptr %21, !2660, !DIExpression(), !2702)
    #dbg_value(i64 %33, !2663, !DIExpression(), !2703)
  %34 = getelementptr i8, ptr %21, i64 %33, !dbg !2704
    #dbg_value(ptr %34, !2660, !DIExpression(), !2705)
    #dbg_value(ptr %34, !2660, !DIExpression(), !2706)
  %35 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %34, ptr undef), !dbg !2707
    #dbg_value(%runtime._string %35, !2664, !DIExpression(), !2708)
    #dbg_value(ptr %34, !2660, !DIExpression(), !2709)
    #dbg_value(%runtime._string %35, !2664, !DIExpression(), !2710)
  %len = extractvalue %runtime._string %35, 1, !dbg !2711
  %36 = getelementptr i8, ptr %34, i64 %len, !dbg !2712
    #dbg_value(ptr %36, !2660, !DIExpression(), !2713)
    #dbg_value(ptr %6, !2644, !DIExpression(), !2714)
    #dbg_value(ptr %16, !2658, !DIExpression(), !2715)
  %37 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 0, !dbg !2716
  %38 = icmp eq ptr %37, null, !dbg !2716
  br i1 %38, label %deref.throw5, label %deref.next6, !dbg !2716

deref.next6:                                      ; preds = %unsafe.Slice.next
  %39 = load ptr, ptr %37, align 8, !dbg !2716
    #dbg_value(ptr %36, !2660, !DIExpression(), !2717)
    #dbg_value(i8 %20, !2661, !DIExpression(), !2718)
    #dbg_value(%runtime._string %35, !2664, !DIExpression(), !2719)
    #dbg_value(i32 %32, !2662, !DIExpression(), !2720)
  %40 = extractvalue %runtime._string %35, 0, !dbg !2721
  %41 = extractvalue %runtime._string %35, 1, !dbg !2721
  %42 = call %"internal/reflectlite.rawStructField" @"internal/reflectlite.rawStructFieldFromPointer"(ptr %6, ptr %39, ptr %36, i8 %20, ptr %40, i64 %41, i32 %32, ptr undef), !dbg !2721
  ret %"internal/reflectlite.rawStructField" %42, !dbg !2722

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2677
  unreachable, !dbg !2677

gep.throw:                                        ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2683
  unreachable, !dbg !2683

deref.throw3:                                     ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2689
  unreachable, !dbg !2689

unsafe.Slice.throw:                               ; preds = %deref.next4
  call void @runtime.unsafeSlicePanic(ptr undef), !dbg !2698
  unreachable, !dbg !2698

deref.throw5:                                     ; preds = %unsafe.Slice.next
  call void @runtime.nilPanic(ptr undef), !dbg !2716
  unreachable, !dbg !2716
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"internal/reflectlite.uvarint32"(ptr %buf.data, i64 %buf.len, i64 %buf.cap, ptr %context) unnamed_addr #1 !dbg !2723 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %buf.data, 0, !dbg !2732
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %buf.len, 1, !dbg !2732
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %buf.cap, 2, !dbg !2732
    #dbg_value(ptr %buf.data, !2727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2732)
    #dbg_value(i64 %buf.len, !2727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2732)
    #dbg_value(i64 %buf.cap, !2727, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2732)
    #dbg_value(i32 0, !2728, !DIExpression(), !2733)
    #dbg_value(i64 0, !2729, !DIExpression(), !2734)
    #dbg_value({ ptr, i64, i64 } %2, !2727, !DIExpression(), !2735)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2736
  br label %rangeindex.loop, !dbg !2736

rangeindex.loop:                                  ; preds = %if.done, %entry
  %3 = phi i32 [ 0, %entry ], [ %23, %if.done ], !dbg !2733
  %4 = phi i64 [ 0, %entry ], [ %24, %if.done ], !dbg !2734
  %5 = phi i64 [ -1, %entry ], [ %6, %if.done ], !dbg !2736
  %6 = add i64 %5, 1, !dbg !2736
  %7 = icmp slt i64 %6, %len, !dbg !2736
  br i1 %7, label %rangeindex.body, label %rangeindex.done, !dbg !2736

rangeindex.body:                                  ; preds = %rangeindex.loop
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2735
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2735
  %8 = icmp uge i64 %6, %indexaddr.len, !dbg !2735
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !2735

lookup.next:                                      ; preds = %rangeindex.body
  %9 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %6, !dbg !2735
  %10 = load i8, ptr %9, align 1, !dbg !2736
    #dbg_value(i64 %6, !2730, !DIExpression(), !2737)
    #dbg_value(i8 %10, !2731, !DIExpression(), !2738)
    #dbg_value(i8 %10, !2731, !DIExpression(), !2739)
  %11 = icmp ult i8 %10, -128, !dbg !2740
  br i1 %11, label %if.then, label %if.done, !dbg !2736

if.then:                                          ; preds = %lookup.next
    #dbg_value(i32 %3, !2728, !DIExpression(), !2741)
    #dbg_value(i8 %10, !2731, !DIExpression(), !2742)
  %12 = zext i8 %10 to i32, !dbg !2743
    #dbg_value(i64 %4, !2729, !DIExpression(), !2744)
  %shift.overflow = icmp uge i64 %4, 32, !dbg !2745
  %13 = trunc i64 %4 to i32, !dbg !2745
  %14 = shl i32 %12, %13, !dbg !2745
  %shift.result = select i1 %shift.overflow, i32 0, i32 %14, !dbg !2745
  %15 = or i32 %3, %shift.result, !dbg !2746
    #dbg_value(i64 %6, !2730, !DIExpression(), !2747)
  %16 = add i64 %6, 1, !dbg !2748
  %17 = insertvalue { i32, i64 } zeroinitializer, i32 %15, 0, !dbg !2749
  %18 = insertvalue { i32, i64 } %17, i64 %16, 1, !dbg !2749
  ret { i32, i64 } %18, !dbg !2749

if.done:                                          ; preds = %lookup.next
    #dbg_value(i8 %10, !2731, !DIExpression(), !2750)
  %19 = and i8 %10, 127, !dbg !2751
  %20 = zext i8 %19 to i32, !dbg !2752
    #dbg_value(i64 %4, !2729, !DIExpression(), !2753)
  %shift.overflow1 = icmp uge i64 %4, 32, !dbg !2754
  %21 = trunc i64 %4 to i32, !dbg !2754
  %22 = shl i32 %20, %21, !dbg !2754
  %shift.result2 = select i1 %shift.overflow1, i32 0, i32 %22, !dbg !2754
  %23 = or i32 %3, %shift.result2, !dbg !2755
    #dbg_value(i32 %23, !2728, !DIExpression(), !2755)
  %24 = add i64 %4, 7, !dbg !2756
    #dbg_value(i64 %24, !2729, !DIExpression(), !2756)
  br label %rangeindex.loop, !dbg !2736

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret { i32, i64 } zeroinitializer, !dbg !2757

lookup.throw:                                     ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2735
  unreachable, !dbg !2735
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/reflectlite.readStringZ"(ptr %data, ptr %context) unnamed_addr #1 !dbg !2758 {
entry:
    #dbg_value(ptr %data, !2762, !DIExpression(), !2765)
    #dbg_value(ptr %data, !2762, !DIExpression(), !2766)
    #dbg_value(ptr %data, !2763, !DIExpression(), !2767)
    #dbg_value(i64 0, !2764, !DIExpression(), !2768)
  br label %for.loop, !dbg !2769

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi ptr [ %data, %entry ], [ %5, %for.body ], !dbg !2770
  %1 = phi i64 [ 0, %entry ], [ %4, %for.body ], !dbg !2768
    #dbg_value(ptr %0, !2762, !DIExpression(), !2771)
  %2 = load i8, ptr %0, align 1, !dbg !2772
  %3 = icmp ne i8 %2, 0, !dbg !2773
  br i1 %3, label %for.body, label %for.done, !dbg !2769

for.body:                                         ; preds = %for.loop
  %4 = add i64 %1, 1, !dbg !2774
    #dbg_value(i64 %4, !2764, !DIExpression(), !2774)
    #dbg_value(ptr %0, !2762, !DIExpression(), !2775)
  %5 = getelementptr i8, ptr %0, i64 1, !dbg !2776
    #dbg_value(ptr %5, !2762, !DIExpression(), !2777)
  br label %for.loop, !dbg !2769

for.done:                                         ; preds = %for.loop
  %complit = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 133 to ptr), ptr undef), !dbg !2778
  %6 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !2779
    #dbg_value(ptr %data, !2763, !DIExpression(), !2780)
  %7 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !2781
    #dbg_value(i64 %1, !2764, !DIExpression(), !2782)
  %8 = icmp eq ptr %6, null, !dbg !2779
  br i1 %8, label %store.throw, label %store.next, !dbg !2779

store.next:                                       ; preds = %for.done
  store ptr %data, ptr %6, align 8, !dbg !2779
    #dbg_value(ptr %data, !2763, !DIExpression(), !2780)
  %9 = icmp eq ptr %7, null, !dbg !2781
  br i1 %9, label %store.throw1, label %store.next2, !dbg !2781

store.next2:                                      ; preds = %store.next
  store i64 %1, ptr %7, align 8, !dbg !2781
    #dbg_value(i64 %1, !2764, !DIExpression(), !2782)
  %10 = load %runtime._string, ptr %complit, align 8, !dbg !2783
  ret %runtime._string %10, !dbg !2784

store.throw:                                      ; preds = %for.done
  call void @runtime.nilPanic(ptr undef), !dbg !2779
  unreachable, !dbg !2779

store.throw1:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !2781
  unreachable, !dbg !2781
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/reflectlite.rawStructField" @"internal/reflectlite.rawStructFieldFromPointer"(ptr dereferenceable_or_null(48) %descriptor, ptr dereferenceable_or_null(1) %fieldType, ptr %data, i8 %flagsByte, ptr readonly %name.data, i64 %name.len, i32 %offset, ptr %context) unnamed_addr #1 !dbg !2785 {
entry:
    #dbg_value(ptr %descriptor, !2789, !DIExpression(), !2798)
    #dbg_value(ptr %fieldType, !2790, !DIExpression(), !2798)
    #dbg_value(ptr %data, !2791, !DIExpression(), !2798)
    #dbg_value(i8 %flagsByte, !2792, !DIExpression(), !2798)
  %complit5 = alloca %"internal/reflectlite.rawStructField", align 8, !dbg !2798
  %0 = insertvalue %runtime._string zeroinitializer, ptr %name.data, 0, !dbg !2798
  %1 = insertvalue %runtime._string %0, i64 %name.len, 1, !dbg !2798
    #dbg_value(ptr %name.data, !2793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2798)
    #dbg_value(i64 %name.len, !2793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2798)
    #dbg_value(i32 %offset, !2794, !DIExpression(), !2798)
    #dbg_value(%runtime._string zeroinitializer, !2795, !DIExpression(), !2799)
    #dbg_value(i8 %flagsByte, !2792, !DIExpression(), !2800)
  %2 = and i8 %flagsByte, 2, !dbg !2801
  %3 = icmp ne i8 %2, 0, !dbg !2802
  br i1 %3, label %if.then, label %if.done, !dbg !2803

if.then:                                          ; preds = %entry
    #dbg_value(ptr %data, !2791, !DIExpression(), !2804)
  %4 = getelementptr i8, ptr %data, i64 1, !dbg !2805
    #dbg_value(ptr %4, !2791, !DIExpression(), !2806)
    #dbg_value(ptr %4, !2791, !DIExpression(), !2807)
  %5 = load i8, ptr %4, align 1, !dbg !2808
  %6 = zext i8 %5 to i64, !dbg !2809
    #dbg_value(i64 %6, !2796, !DIExpression(), !2810)
    #dbg_value(ptr %4, !2791, !DIExpression(), !2811)
  %7 = getelementptr i8, ptr %4, i64 1, !dbg !2812
    #dbg_value(ptr %7, !2791, !DIExpression(), !2813)
  %complit = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 133 to ptr), ptr undef), !dbg !2814
  %8 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !2815
    #dbg_value(ptr %7, !2791, !DIExpression(), !2816)
  %9 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !2817
    #dbg_value(i64 %6, !2796, !DIExpression(), !2818)
  %10 = icmp eq ptr %8, null, !dbg !2815
  br i1 %10, label %store.throw, label %store.next, !dbg !2815

store.next:                                       ; preds = %if.then
  store ptr %7, ptr %8, align 8, !dbg !2815
    #dbg_value(ptr %7, !2791, !DIExpression(), !2816)
  %11 = icmp eq ptr %9, null, !dbg !2817
  br i1 %11, label %store.throw3, label %store.next4, !dbg !2817

store.next4:                                      ; preds = %store.next
  store i64 %6, ptr %9, align 8, !dbg !2817
    #dbg_value(i64 %6, !2796, !DIExpression(), !2818)
  %12 = load %runtime._string, ptr %complit, align 8, !dbg !2819
    #dbg_value(%runtime._string %12, !2795, !DIExpression(), !2820)
  br label %if.done, !dbg !2803

if.done:                                          ; preds = %store.next4, %entry
  %13 = phi %runtime._string [ zeroinitializer, %entry ], [ %12, %store.next4 ], !dbg !2799
    #dbg_value(%runtime._string zeroinitializer, !2797, !DIExpression(), !2821)
    #dbg_value(i8 %flagsByte, !2792, !DIExpression(), !2822)
  %14 = and i8 %flagsByte, 4, !dbg !2823
  %15 = icmp eq i8 %14, 0, !dbg !2824
  br i1 %15, label %if.then1, label %if.done2, !dbg !2803

if.then1:                                         ; preds = %if.done
    #dbg_value(ptr %descriptor, !2789, !DIExpression(), !2825)
  %16 = icmp eq ptr %descriptor, null, !dbg !2826
  br i1 %16, label %gep.throw, label %gep.next, !dbg !2826

gep.next:                                         ; preds = %if.then1
  %17 = getelementptr inbounds %"internal/reflectlite.structType", ptr %descriptor, i32 0, i32 3, !dbg !2826
  %18 = icmp eq ptr %17, null, !dbg !2826
  br i1 %18, label %deref.throw, label %deref.next, !dbg !2826

deref.next:                                       ; preds = %gep.next
  %19 = load ptr, ptr %17, align 8, !dbg !2826
  %20 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %19, ptr undef), !dbg !2827
    #dbg_value(%runtime._string %20, !2797, !DIExpression(), !2828)
  br label %if.done2, !dbg !2803

if.done2:                                         ; preds = %deref.next, %if.done
  %21 = phi %runtime._string [ zeroinitializer, %if.done ], [ %20, %deref.next ], !dbg !2821
  store %"internal/reflectlite.rawStructField" zeroinitializer, ptr %complit5, align 8, !dbg !2798
  %22 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 0, !dbg !2829
    #dbg_value(%runtime._string %1, !2793, !DIExpression(), !2830)
  %23 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 1, !dbg !2831
    #dbg_value(%runtime._string %21, !2797, !DIExpression(), !2832)
  %24 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 2, !dbg !2833
    #dbg_value(ptr %fieldType, !2790, !DIExpression(), !2834)
  %25 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 3, !dbg !2835
    #dbg_value(%runtime._string %13, !2795, !DIExpression(), !2836)
  %26 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 5, !dbg !2837
    #dbg_value(i8 %flagsByte, !2792, !DIExpression(), !2838)
  %27 = and i8 %flagsByte, 1, !dbg !2839
  %28 = icmp ne i8 %27, 0, !dbg !2840
  %29 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 4, !dbg !2841
    #dbg_value(i32 %offset, !2794, !DIExpression(), !2842)
  %30 = zext i32 %offset to i64, !dbg !2843
  %31 = icmp eq ptr %22, null, !dbg !2829
  br i1 %31, label %store.throw6, label %store.next7, !dbg !2829

store.next7:                                      ; preds = %if.done2
  store %runtime._string %1, ptr %22, align 8, !dbg !2829
    #dbg_value(%runtime._string %1, !2793, !DIExpression(), !2830)
  %32 = icmp eq ptr %23, null, !dbg !2831
  br i1 %32, label %store.throw8, label %store.next9, !dbg !2831

store.next9:                                      ; preds = %store.next7
  store %runtime._string %21, ptr %23, align 8, !dbg !2831
    #dbg_value(%runtime._string %21, !2797, !DIExpression(), !2832)
  %33 = icmp eq ptr %24, null, !dbg !2833
  br i1 %33, label %store.throw10, label %store.next11, !dbg !2833

store.next11:                                     ; preds = %store.next9
  store ptr %fieldType, ptr %24, align 8, !dbg !2833
    #dbg_value(ptr %fieldType, !2790, !DIExpression(), !2834)
  %34 = icmp eq ptr %25, null, !dbg !2835
  br i1 %34, label %store.throw12, label %store.next13, !dbg !2835

store.next13:                                     ; preds = %store.next11
  store %runtime._string %13, ptr %25, align 8, !dbg !2835
  %35 = icmp eq ptr %26, null, !dbg !2837
  br i1 %35, label %store.throw14, label %store.next15, !dbg !2837

store.next15:                                     ; preds = %store.next13
  store i1 %28, ptr %26, align 1, !dbg !2837
  %36 = icmp eq ptr %29, null, !dbg !2841
  br i1 %36, label %store.throw16, label %store.next17, !dbg !2841

store.next17:                                     ; preds = %store.next15
  store i64 %30, ptr %29, align 8, !dbg !2841
  %37 = load %"internal/reflectlite.rawStructField", ptr %complit5, align 8, !dbg !2844
  ret %"internal/reflectlite.rawStructField" %37, !dbg !2845

store.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2815
  unreachable, !dbg !2815

store.throw3:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !2817
  unreachable, !dbg !2817

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !2826
  unreachable, !dbg !2826

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2826
  unreachable, !dbg !2826

store.throw6:                                     ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2829
  unreachable, !dbg !2829

store.throw8:                                     ; preds = %store.next7
  call void @runtime.nilPanic(ptr undef), !dbg !2831
  unreachable, !dbg !2831

store.throw10:                                    ; preds = %store.next9
  call void @runtime.nilPanic(ptr undef), !dbg !2833
  unreachable, !dbg !2833

store.throw12:                                    ; preds = %store.next11
  call void @runtime.nilPanic(ptr undef), !dbg !2835
  unreachable, !dbg !2835

store.throw14:                                    ; preds = %store.next13
  call void @runtime.nilPanic(ptr undef), !dbg !2837
  unreachable, !dbg !2837

store.throw16:                                    ; preds = %store.next15
  call void @runtime.nilPanic(ptr undef), !dbg !2841
  unreachable, !dbg !2841
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.Kind).String"(i8 %k, ptr %context) unnamed_addr #1 !dbg !2846 {
entry:
    #dbg_value(i8 %k, !2851, !DIExpression(), !2852)
    #dbg_value(i8 %k, !2851, !DIExpression(), !2853)
  %0 = icmp eq i8 %k, 0, !dbg !2854
  br i1 %0, label %switch.body, label %switch.next, !dbg !2855

switch.body:                                      ; preds = %entry
  ret %runtime._string { ptr @"internal/reflectlite$string.41", i64 7 }, !dbg !2856

switch.next:                                      ; preds = %entry
  %1 = icmp eq i8 %k, 1, !dbg !2857
  br i1 %1, label %switch.body1, label %switch.next2, !dbg !2855

switch.body1:                                     ; preds = %switch.next
  ret %runtime._string { ptr @"internal/reflectlite$string.42", i64 4 }, !dbg !2858

switch.next2:                                     ; preds = %switch.next
  %2 = icmp eq i8 %k, 2, !dbg !2859
  br i1 %2, label %switch.body3, label %switch.next4, !dbg !2855

switch.body3:                                     ; preds = %switch.next2
  ret %runtime._string { ptr @"internal/reflectlite$string.43", i64 3 }, !dbg !2860

switch.next4:                                     ; preds = %switch.next2
  %3 = icmp eq i8 %k, 3, !dbg !2861
  br i1 %3, label %switch.body5, label %switch.next6, !dbg !2855

switch.body5:                                     ; preds = %switch.next4
  ret %runtime._string { ptr @"internal/reflectlite$string.44", i64 4 }, !dbg !2862

switch.next6:                                     ; preds = %switch.next4
  %4 = icmp eq i8 %k, 4, !dbg !2863
  br i1 %4, label %switch.body7, label %switch.next8, !dbg !2855

switch.body7:                                     ; preds = %switch.next6
  ret %runtime._string { ptr @"internal/reflectlite$string.45", i64 5 }, !dbg !2864

switch.next8:                                     ; preds = %switch.next6
  %5 = icmp eq i8 %k, 5, !dbg !2865
  br i1 %5, label %switch.body9, label %switch.next10, !dbg !2855

switch.body9:                                     ; preds = %switch.next8
  ret %runtime._string { ptr @"internal/reflectlite$string.46", i64 5 }, !dbg !2866

switch.next10:                                    ; preds = %switch.next8
  %6 = icmp eq i8 %k, 6, !dbg !2867
  br i1 %6, label %switch.body11, label %switch.next12, !dbg !2855

switch.body11:                                    ; preds = %switch.next10
  ret %runtime._string { ptr @"internal/reflectlite$string.47", i64 5 }, !dbg !2868

switch.next12:                                    ; preds = %switch.next10
  %7 = icmp eq i8 %k, 7, !dbg !2869
  br i1 %7, label %switch.body13, label %switch.next14, !dbg !2855

switch.body13:                                    ; preds = %switch.next12
  ret %runtime._string { ptr @"internal/reflectlite$string.48", i64 4 }, !dbg !2870

switch.next14:                                    ; preds = %switch.next12
  %8 = icmp eq i8 %k, 8, !dbg !2871
  br i1 %8, label %switch.body15, label %switch.next16, !dbg !2855

switch.body15:                                    ; preds = %switch.next14
  ret %runtime._string { ptr @"internal/reflectlite$string.49", i64 5 }, !dbg !2872

switch.next16:                                    ; preds = %switch.next14
  %9 = icmp eq i8 %k, 9, !dbg !2873
  br i1 %9, label %switch.body17, label %switch.next18, !dbg !2855

switch.body17:                                    ; preds = %switch.next16
  ret %runtime._string { ptr @"internal/reflectlite$string.50", i64 6 }, !dbg !2874

switch.next18:                                    ; preds = %switch.next16
  %10 = icmp eq i8 %k, 10, !dbg !2875
  br i1 %10, label %switch.body19, label %switch.next20, !dbg !2855

switch.body19:                                    ; preds = %switch.next18
  ret %runtime._string { ptr @"internal/reflectlite$string.51", i64 6 }, !dbg !2876

switch.next20:                                    ; preds = %switch.next18
  %11 = icmp eq i8 %k, 11, !dbg !2877
  br i1 %11, label %switch.body21, label %switch.next22, !dbg !2855

switch.body21:                                    ; preds = %switch.next20
  ret %runtime._string { ptr @"internal/reflectlite$string.52", i64 6 }, !dbg !2878

switch.next22:                                    ; preds = %switch.next20
  %12 = icmp eq i8 %k, 12, !dbg !2879
  br i1 %12, label %switch.body23, label %switch.next24, !dbg !2855

switch.body23:                                    ; preds = %switch.next22
  ret %runtime._string { ptr @"internal/reflectlite$string.53", i64 7 }, !dbg !2880

switch.next24:                                    ; preds = %switch.next22
  %13 = icmp eq i8 %k, 13, !dbg !2881
  br i1 %13, label %switch.body25, label %switch.next26, !dbg !2855

switch.body25:                                    ; preds = %switch.next24
  ret %runtime._string { ptr @"internal/reflectlite$string.54", i64 7 }, !dbg !2882

switch.next26:                                    ; preds = %switch.next24
  %14 = icmp eq i8 %k, 14, !dbg !2883
  br i1 %14, label %switch.body27, label %switch.next28, !dbg !2855

switch.body27:                                    ; preds = %switch.next26
  ret %runtime._string { ptr @"internal/reflectlite$string.55", i64 7 }, !dbg !2884

switch.next28:                                    ; preds = %switch.next26
  %15 = icmp eq i8 %k, 15, !dbg !2885
  br i1 %15, label %switch.body29, label %switch.next30, !dbg !2855

switch.body29:                                    ; preds = %switch.next28
  ret %runtime._string { ptr @"internal/reflectlite$string.56", i64 9 }, !dbg !2886

switch.next30:                                    ; preds = %switch.next28
  %16 = icmp eq i8 %k, 16, !dbg !2887
  br i1 %16, label %switch.body31, label %switch.next32, !dbg !2855

switch.body31:                                    ; preds = %switch.next30
  ret %runtime._string { ptr @"internal/reflectlite$string.57", i64 10 }, !dbg !2888

switch.next32:                                    ; preds = %switch.next30
  %17 = icmp eq i8 %k, 17, !dbg !2889
  br i1 %17, label %switch.body33, label %switch.next34, !dbg !2855

switch.body33:                                    ; preds = %switch.next32
  ret %runtime._string { ptr @"internal/reflectlite$string.58", i64 6 }, !dbg !2890

switch.next34:                                    ; preds = %switch.next32
  %18 = icmp eq i8 %k, 18, !dbg !2891
  br i1 %18, label %switch.body35, label %switch.next36, !dbg !2855

switch.body35:                                    ; preds = %switch.next34
  ret %runtime._string { ptr @"internal/reflectlite$string.59", i64 14 }, !dbg !2892

switch.next36:                                    ; preds = %switch.next34
  %19 = icmp eq i8 %k, 19, !dbg !2893
  br i1 %19, label %switch.body37, label %switch.next38, !dbg !2855

switch.body37:                                    ; preds = %switch.next36
  ret %runtime._string { ptr @"internal/reflectlite$string.60", i64 4 }, !dbg !2894

switch.next38:                                    ; preds = %switch.next36
  %20 = icmp eq i8 %k, 20, !dbg !2895
  br i1 %20, label %switch.body39, label %switch.next40, !dbg !2855

switch.body39:                                    ; preds = %switch.next38
  ret %runtime._string { ptr @"internal/reflectlite$string.61", i64 9 }, !dbg !2896

switch.next40:                                    ; preds = %switch.next38
  %21 = icmp eq i8 %k, 21, !dbg !2897
  br i1 %21, label %switch.body41, label %switch.next42, !dbg !2855

switch.body41:                                    ; preds = %switch.next40
  ret %runtime._string { ptr @"internal/reflectlite$string.62", i64 3 }, !dbg !2898

switch.next42:                                    ; preds = %switch.next40
  %22 = icmp eq i8 %k, 22, !dbg !2899
  br i1 %22, label %switch.body43, label %switch.next44, !dbg !2855

switch.body43:                                    ; preds = %switch.next42
  ret %runtime._string { ptr @"internal/reflectlite$string.63", i64 5 }, !dbg !2900

switch.next44:                                    ; preds = %switch.next42
  %23 = icmp eq i8 %k, 23, !dbg !2901
  br i1 %23, label %switch.body45, label %switch.next46, !dbg !2855

switch.body45:                                    ; preds = %switch.next44
  ret %runtime._string { ptr @"internal/reflectlite$string.64", i64 5 }, !dbg !2902

switch.next46:                                    ; preds = %switch.next44
  %24 = icmp eq i8 %k, 24, !dbg !2903
  br i1 %24, label %switch.body47, label %switch.next48, !dbg !2855

switch.body47:                                    ; preds = %switch.next46
  ret %runtime._string { ptr @"internal/reflectlite$string.65", i64 4 }, !dbg !2904

switch.next48:                                    ; preds = %switch.next46
  %25 = icmp eq i8 %k, 25, !dbg !2905
  br i1 %25, label %switch.body49, label %switch.next50, !dbg !2855

switch.body49:                                    ; preds = %switch.next48
  ret %runtime._string { ptr @"internal/reflectlite$string.66", i64 3 }, !dbg !2906

switch.next50:                                    ; preds = %switch.next48
  %26 = icmp eq i8 %k, 26, !dbg !2907
  br i1 %26, label %switch.body51, label %switch.next52, !dbg !2855

switch.body51:                                    ; preds = %switch.next50
  ret %runtime._string { ptr @"internal/reflectlite$string.67", i64 6 }, !dbg !2908

switch.next52:                                    ; preds = %switch.next50
    #dbg_value(i8 %k, !2851, !DIExpression(), !2909)
  %27 = sext i8 %k to i64, !dbg !2910
  %28 = call %runtime._string @"internal/itoa.Itoa"(i64 %27, ptr undef), !dbg !2911
  %29 = extractvalue %runtime._string %28, 0, !dbg !2912
  %30 = extractvalue %runtime._string %28, 1, !dbg !2912
  %31 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.68", i64 4, ptr %29, i64 %30, ptr undef), !dbg !2912
  ret %runtime._string %31, !dbg !2913
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/reflectlite.quote"(ptr readonly %s.data, i64 %s.len, ptr %context) unnamed_addr #1 !dbg !2914 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !2920
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !2920
    #dbg_value(ptr %s.data, !2916, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2920)
    #dbg_value(i64 %s.len, !2916, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2920)
    #dbg_value(%runtime._string %1, !2916, !DIExpression(), !2921)
  %len = extractvalue %runtime._string %1, 1, !dbg !2922
  %2 = mul i64 3, %len, !dbg !2923
  %3 = icmp eq i64 %2, -9223372036854775808, !dbg !2924
  %4 = and i1 false, %3, !dbg !2924
  %5 = select i1 %4, i64 1, i64 2, !dbg !2924
  %6 = sdiv i64 %2, %5, !dbg !2924
  %slice.lowhigh = icmp ugt i64 0, %6, !dbg !2925
  %slice.highmax = icmp ugt i64 %6, %6, !dbg !2925
  %slice.maxcap = icmp ugt i64 %6, 9223372036854775807, !dbg !2925
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2925
  %slice.lowcap = or i1 %slice.lowmax, %slice.maxcap, !dbg !2925
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2925

slice.next:                                       ; preds = %entry
  %makeslice.cap = mul i64 1, %6, !dbg !2925
  %makeslice.buf = call align 1 ptr @runtime.alloc(i64 %makeslice.cap, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2925
  %7 = insertvalue { ptr, i64, i64 } undef, ptr %makeslice.buf, 0, !dbg !2925
  %8 = insertvalue { ptr, i64, i64 } %7, i64 0, 1, !dbg !2925
  %9 = insertvalue { ptr, i64, i64 } %8, i64 %6, 2, !dbg !2925
    #dbg_value({ ptr, i64, i64 } %9, !2917, !DIExpression(), !2926)
    #dbg_value({ ptr, i64, i64 } %9, !2917, !DIExpression(), !2927)
  %varargs = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2928
  %10 = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2928
  store i8 34, ptr %10, align 1, !dbg !2928
  %slice.ptr = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2928
  %11 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !2928
  %12 = insertvalue { ptr, i64, i64 } %11, i64 1, 1, !dbg !2928
  %13 = insertvalue { ptr, i64, i64 } %12, i64 1, 2, !dbg !2928
  %append.srcBuf = extractvalue { ptr, i64, i64 } %9, 0, !dbg !2929
  %append.srcLen = extractvalue { ptr, i64, i64 } %9, 1, !dbg !2929
  %append.srcCap = extractvalue { ptr, i64, i64 } %9, 2, !dbg !2929
  %append.elemsBuf = extractvalue { ptr, i64, i64 } %13, 0, !dbg !2929
  %append.elemsLen = extractvalue { ptr, i64, i64 } %13, 1, !dbg !2929
  %append.new = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf, ptr %append.elemsBuf, i64 %append.srcLen, i64 %append.srcCap, i64 %append.elemsLen, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2929
  %append.newPtr = extractvalue { ptr, i64, i64 } %append.new, 0, !dbg !2929
  %append.newLen = extractvalue { ptr, i64, i64 } %append.new, 1, !dbg !2929
  %append.newCap = extractvalue { ptr, i64, i64 } %append.new, 2, !dbg !2929
  %14 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr, 0, !dbg !2929
  %15 = insertvalue { ptr, i64, i64 } %14, i64 %append.newLen, 1, !dbg !2929
  %16 = insertvalue { ptr, i64, i64 } %15, i64 %append.newCap, 2, !dbg !2929
    #dbg_value({ ptr, i64, i64 } %16, !2917, !DIExpression(), !2930)
    #dbg_value(i64 0, !2918, !DIExpression(), !2931)
  br label %for.loop, !dbg !2932

for.loop:                                         ; preds = %slice.next50, %slice.next
  %17 = phi %runtime._string [ %1, %slice.next ], [ %76, %slice.next50 ], !dbg !2933
  %18 = phi { ptr, i64, i64 } [ %16, %slice.next ], [ %70, %slice.next50 ], !dbg !2926
    #dbg_value(%runtime._string %17, !2916, !DIExpression(), !2934)
  %len3 = extractvalue %runtime._string %17, 1, !dbg !2935
  %19 = icmp sgt i64 %len3, 0, !dbg !2936
  br i1 %19, label %for.body, label %for.done, !dbg !2932

for.body:                                         ; preds = %for.loop
    #dbg_value(%runtime._string %17, !2916, !DIExpression(), !2937)
  %len4 = extractvalue %runtime._string %17, 1, !dbg !2938
  %20 = icmp uge i64 0, %len4, !dbg !2938
  br i1 %20, label %lookup.throw, label %lookup.next, !dbg !2938

lookup.next:                                      ; preds = %for.body
  %21 = extractvalue %runtime._string %17, 0, !dbg !2938
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !2938
  %23 = load i8, ptr %22, align 1, !dbg !2938
  %24 = zext i8 %23 to i32, !dbg !2939
    #dbg_value(i32 %24, !2919, !DIExpression(), !2940)
    #dbg_value(i64 1, !2918, !DIExpression(), !2941)
    #dbg_value(i32 %24, !2919, !DIExpression(), !2942)
  %25 = icmp sge i32 %24, 128, !dbg !2943
  br i1 %25, label %if.then, label %if.done, !dbg !2932

if.then:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %17, !2916, !DIExpression(), !2944)
  %26 = extractvalue %runtime._string %17, 0, !dbg !2945
  %27 = extractvalue %runtime._string %17, 1, !dbg !2945
  %28 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(ptr %26, i64 %27, ptr undef), !dbg !2945
  %29 = extractvalue { i32, i64 } %28, 0, !dbg !2945
    #dbg_value(i32 %29, !2919, !DIExpression(), !2946)
  %30 = extractvalue { i32, i64 } %28, 1, !dbg !2945
    #dbg_value(i64 %30, !2918, !DIExpression(), !2947)
  br label %if.done, !dbg !2932

if.done:                                          ; preds = %if.then, %lookup.next
  %31 = phi i64 [ 1, %lookup.next ], [ %30, %if.then ], !dbg !2931
  %32 = phi i32 [ %24, %lookup.next ], [ %29, %if.then ], !dbg !2940
    #dbg_value(i64 %31, !2918, !DIExpression(), !2948)
  %33 = icmp eq i64 %31, 1, !dbg !2949
  br i1 %33, label %cond.true, label %if.done2, !dbg !2932

cond.true:                                        ; preds = %if.done
    #dbg_value(i32 %32, !2919, !DIExpression(), !2950)
  %34 = icmp eq i32 %32, 65533, !dbg !2951
  br i1 %34, label %if.then1, label %if.done2, !dbg !2932

if.then1:                                         ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } %18, !2917, !DIExpression(), !2952)
  %append.srcBuf5 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2953
  %append.srcLen6 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2953
  %append.srcCap7 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2953
  %append.new8 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf5, ptr @"internal/reflectlite$string.20", i64 %append.srcLen6, i64 %append.srcCap7, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2953
  %append.newPtr9 = extractvalue { ptr, i64, i64 } %append.new8, 0, !dbg !2953
  %append.newLen10 = extractvalue { ptr, i64, i64 } %append.new8, 1, !dbg !2953
  %append.newCap11 = extractvalue { ptr, i64, i64 } %append.new8, 2, !dbg !2953
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr9, 0, !dbg !2953
  %36 = insertvalue { ptr, i64, i64 } %35, i64 %append.newLen10, 1, !dbg !2953
  %37 = insertvalue { ptr, i64, i64 } %36, i64 %append.newCap11, 2, !dbg !2953
    #dbg_value({ ptr, i64, i64 } %37, !2917, !DIExpression(), !2954)
    #dbg_value({ ptr, i64, i64 } %37, !2917, !DIExpression(), !2955)
    #dbg_value(%runtime._string %17, !2916, !DIExpression(), !2956)
  %len12 = extractvalue %runtime._string %17, 1, !dbg !2957
  %38 = icmp uge i64 0, %len12, !dbg !2957
  br i1 %38, label %lookup.throw13, label %lookup.next14, !dbg !2957

lookup.next14:                                    ; preds = %if.then1
  %39 = extractvalue %runtime._string %17, 0, !dbg !2957
  %40 = getelementptr inbounds i8, ptr %39, i64 0, !dbg !2957
  %41 = load i8, ptr %40, align 1, !dbg !2957
  %42 = lshr i8 %41, 4, !dbg !2958
  %shift.result = select i1 false, i8 0, i8 %42, !dbg !2958
  %43 = zext i8 %shift.result to i64, !dbg !2959
  %44 = icmp uge i64 %43, 15, !dbg !2959
  br i1 %44, label %lookup.throw15, label %lookup.next16, !dbg !2959

lookup.next16:                                    ; preds = %lookup.next14
  %45 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.21", i64 %43, !dbg !2959
  %46 = load i8, ptr %45, align 1, !dbg !2959
  %varargs17 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2960
  %47 = getelementptr inbounds [1 x i8], ptr %varargs17, i32 0, i64 0, !dbg !2960
  store i8 %46, ptr %47, align 1, !dbg !2959
  %slice.ptr18 = getelementptr inbounds [1 x i8], ptr %varargs17, i32 0, i64 0, !dbg !2960
  %48 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr18, 0, !dbg !2960
  %49 = insertvalue { ptr, i64, i64 } %48, i64 1, 1, !dbg !2960
  %50 = insertvalue { ptr, i64, i64 } %49, i64 1, 2, !dbg !2960
  %append.srcBuf19 = extractvalue { ptr, i64, i64 } %37, 0, !dbg !2961
  %append.srcLen20 = extractvalue { ptr, i64, i64 } %37, 1, !dbg !2961
  %append.srcCap21 = extractvalue { ptr, i64, i64 } %37, 2, !dbg !2961
  %append.elemsBuf22 = extractvalue { ptr, i64, i64 } %50, 0, !dbg !2961
  %append.elemsLen23 = extractvalue { ptr, i64, i64 } %50, 1, !dbg !2961
  %append.new24 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf19, ptr %append.elemsBuf22, i64 %append.srcLen20, i64 %append.srcCap21, i64 %append.elemsLen23, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2961
  %append.newPtr25 = extractvalue { ptr, i64, i64 } %append.new24, 0, !dbg !2961
  %append.newLen26 = extractvalue { ptr, i64, i64 } %append.new24, 1, !dbg !2961
  %append.newCap27 = extractvalue { ptr, i64, i64 } %append.new24, 2, !dbg !2961
  %51 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr25, 0, !dbg !2961
  %52 = insertvalue { ptr, i64, i64 } %51, i64 %append.newLen26, 1, !dbg !2961
  %53 = insertvalue { ptr, i64, i64 } %52, i64 %append.newCap27, 2, !dbg !2961
    #dbg_value({ ptr, i64, i64 } %53, !2917, !DIExpression(), !2962)
    #dbg_value({ ptr, i64, i64 } %53, !2917, !DIExpression(), !2963)
    #dbg_value(%runtime._string %17, !2916, !DIExpression(), !2964)
  %len28 = extractvalue %runtime._string %17, 1, !dbg !2965
  %54 = icmp uge i64 0, %len28, !dbg !2965
  br i1 %54, label %lookup.throw29, label %lookup.next30, !dbg !2965

lookup.next30:                                    ; preds = %lookup.next16
  %55 = extractvalue %runtime._string %17, 0, !dbg !2965
  %56 = getelementptr inbounds i8, ptr %55, i64 0, !dbg !2965
  %57 = load i8, ptr %56, align 1, !dbg !2965
  %58 = and i8 %57, 15, !dbg !2966
  %59 = zext i8 %58 to i64, !dbg !2967
  %60 = icmp uge i64 %59, 15, !dbg !2967
  br i1 %60, label %lookup.throw31, label %lookup.next32, !dbg !2967

lookup.next32:                                    ; preds = %lookup.next30
  %61 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.22", i64 %59, !dbg !2967
  %62 = load i8, ptr %61, align 1, !dbg !2967
  %varargs33 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2968
  %63 = getelementptr inbounds [1 x i8], ptr %varargs33, i32 0, i64 0, !dbg !2968
  store i8 %62, ptr %63, align 1, !dbg !2967
  %slice.ptr34 = getelementptr inbounds [1 x i8], ptr %varargs33, i32 0, i64 0, !dbg !2968
  %64 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr34, 0, !dbg !2968
  %65 = insertvalue { ptr, i64, i64 } %64, i64 1, 1, !dbg !2968
  %66 = insertvalue { ptr, i64, i64 } %65, i64 1, 2, !dbg !2968
  %append.srcBuf35 = extractvalue { ptr, i64, i64 } %53, 0, !dbg !2969
  %append.srcLen36 = extractvalue { ptr, i64, i64 } %53, 1, !dbg !2969
  %append.srcCap37 = extractvalue { ptr, i64, i64 } %53, 2, !dbg !2969
  %append.elemsBuf38 = extractvalue { ptr, i64, i64 } %66, 0, !dbg !2969
  %append.elemsLen39 = extractvalue { ptr, i64, i64 } %66, 1, !dbg !2969
  %append.new40 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf35, ptr %append.elemsBuf38, i64 %append.srcLen36, i64 %append.srcCap37, i64 %append.elemsLen39, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2969
  %append.newPtr41 = extractvalue { ptr, i64, i64 } %append.new40, 0, !dbg !2969
  %append.newLen42 = extractvalue { ptr, i64, i64 } %append.new40, 1, !dbg !2969
  %append.newCap43 = extractvalue { ptr, i64, i64 } %append.new40, 2, !dbg !2969
  %67 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr41, 0, !dbg !2969
  %68 = insertvalue { ptr, i64, i64 } %67, i64 %append.newLen42, 1, !dbg !2969
  %69 = insertvalue { ptr, i64, i64 } %68, i64 %append.newCap43, 2, !dbg !2969
    #dbg_value({ ptr, i64, i64 } %69, !2917, !DIExpression(), !2970)
  br label %for.post, !dbg !2932

for.post:                                         ; preds = %if.done2, %lookup.next32
  %70 = phi { ptr, i64, i64 } [ %69, %lookup.next32 ], [ %80, %if.done2 ], !dbg !2926
    #dbg_value(%runtime._string %17, !2916, !DIExpression(), !2971)
    #dbg_value(i64 %31, !2918, !DIExpression(), !2972)
  %71 = extractvalue %runtime._string %17, 0, !dbg !2973
  %72 = extractvalue %runtime._string %17, 1, !dbg !2973
  %slice.lowhigh44 = icmp ugt i64 %31, %72, !dbg !2973
  %slice.highmax45 = icmp ugt i64 %72, %72, !dbg !2973
  %slice.maxcap46 = icmp ugt i64 %72, %72, !dbg !2973
  %slice.lowmax47 = or i1 %slice.lowhigh44, %slice.highmax45, !dbg !2973
  %slice.lowcap48 = or i1 %slice.lowmax47, %slice.maxcap46, !dbg !2973
  br i1 %slice.lowcap48, label %slice.throw49, label %slice.next50, !dbg !2973

slice.next50:                                     ; preds = %for.post
  %73 = getelementptr inbounds i8, ptr %71, i64 %31, !dbg !2973
  %74 = sub i64 %72, %31, !dbg !2973
  %75 = insertvalue %runtime._string undef, ptr %73, 0, !dbg !2973
  %76 = insertvalue %runtime._string %75, i64 %74, 1, !dbg !2973
    #dbg_value(%runtime._string %76, !2916, !DIExpression(), !2974)
  br label %for.loop, !dbg !2932

if.done2:                                         ; preds = %cond.true, %if.done
    #dbg_value({ ptr, i64, i64 } %18, !2917, !DIExpression(), !2975)
    #dbg_value(i32 %32, !2919, !DIExpression(), !2976)
  %77 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2977
  %78 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2977
  %79 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2977
  %80 = call { ptr, i64, i64 } @"internal/reflectlite.appendEscapedRune"(ptr %77, i64 %78, i64 %79, i32 %32, ptr undef), !dbg !2977
    #dbg_value({ ptr, i64, i64 } %80, !2917, !DIExpression(), !2978)
  br label %for.post, !dbg !2932

for.done:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %18, !2917, !DIExpression(), !2979)
  %varargs51 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2980
  %81 = getelementptr inbounds [1 x i8], ptr %varargs51, i32 0, i64 0, !dbg !2980
  store i8 34, ptr %81, align 1, !dbg !2980
  %slice.ptr52 = getelementptr inbounds [1 x i8], ptr %varargs51, i32 0, i64 0, !dbg !2980
  %82 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr52, 0, !dbg !2980
  %83 = insertvalue { ptr, i64, i64 } %82, i64 1, 1, !dbg !2980
  %84 = insertvalue { ptr, i64, i64 } %83, i64 1, 2, !dbg !2980
  %append.srcBuf53 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2981
  %append.srcLen54 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2981
  %append.srcCap55 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2981
  %append.elemsBuf56 = extractvalue { ptr, i64, i64 } %84, 0, !dbg !2981
  %append.elemsLen57 = extractvalue { ptr, i64, i64 } %84, 1, !dbg !2981
  %append.new58 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf53, ptr %append.elemsBuf56, i64 %append.srcLen54, i64 %append.srcCap55, i64 %append.elemsLen57, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2981
  %append.newPtr59 = extractvalue { ptr, i64, i64 } %append.new58, 0, !dbg !2981
  %append.newLen60 = extractvalue { ptr, i64, i64 } %append.new58, 1, !dbg !2981
  %append.newCap61 = extractvalue { ptr, i64, i64 } %append.new58, 2, !dbg !2981
  %85 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr59, 0, !dbg !2981
  %86 = insertvalue { ptr, i64, i64 } %85, i64 %append.newLen60, 1, !dbg !2981
  %87 = insertvalue { ptr, i64, i64 } %86, i64 %append.newCap61, 2, !dbg !2981
    #dbg_value({ ptr, i64, i64 } %87, !2917, !DIExpression(), !2982)
    #dbg_value({ ptr, i64, i64 } %87, !2917, !DIExpression(), !2983)
  %88 = extractvalue { ptr, i64, i64 } %87, 0, !dbg !2984
  %89 = extractvalue { ptr, i64, i64 } %87, 1, !dbg !2984
  %90 = extractvalue { ptr, i64, i64 } %87, 2, !dbg !2984
  %91 = call %runtime._string @runtime.stringFromBytes(ptr %88, i64 %89, i64 %90, ptr undef), !dbg !2984
  ret %runtime._string %91, !dbg !2985

slice.throw:                                      ; preds = %entry
  call void @runtime.slicePanic(ptr undef), !dbg !2925
  unreachable, !dbg !2925

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2938
  unreachable, !dbg !2938

lookup.throw13:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !2957
  unreachable, !dbg !2957

lookup.throw15:                                   ; preds = %lookup.next14
  call void @runtime.lookupPanic(ptr undef), !dbg !2959
  unreachable, !dbg !2959

lookup.throw29:                                   ; preds = %lookup.next16
  call void @runtime.lookupPanic(ptr undef), !dbg !2965
  unreachable, !dbg !2965

lookup.throw31:                                   ; preds = %lookup.next30
  call void @runtime.lookupPanic(ptr undef), !dbg !2967
  unreachable, !dbg !2967

slice.throw49:                                    ; preds = %for.post
  call void @runtime.slicePanic(ptr undef), !dbg !2973
  unreachable, !dbg !2973
}

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @"internal/reflectlite.appendEscapedRune"(ptr %buf.data, i64 %buf.len, i64 %buf.cap, i32 %r, ptr %context) unnamed_addr #1 !dbg !2986 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %buf.data, 0, !dbg !2993
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %buf.len, 1, !dbg !2993
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %buf.cap, 2, !dbg !2993
    #dbg_value(ptr %buf.data, !2988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2993)
    #dbg_value(i64 %buf.len, !2988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2993)
    #dbg_value(i64 %buf.cap, !2988, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2993)
    #dbg_value(i32 %r, !2989, !DIExpression(), !2993)
  %runeTmp = call align 1 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2994
    #dbg_value(i32 %r, !2989, !DIExpression(), !2995)
  %3 = icmp eq i32 %r, 34, !dbg !2996
  br i1 %3, label %if.then, label %cond.false, !dbg !2997

if.then:                                          ; preds = %cond.false, %entry
    #dbg_value({ ptr, i64, i64 } %2, !2988, !DIExpression(), !2998)
  %varargs = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2999
  %4 = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2999
  store i8 92, ptr %4, align 1, !dbg !2999
  %slice.ptr = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2999
  %5 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !2999
  %6 = insertvalue { ptr, i64, i64 } %5, i64 1, 1, !dbg !2999
  %7 = insertvalue { ptr, i64, i64 } %6, i64 1, 2, !dbg !2999
  %append.srcBuf = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3000
  %append.srcLen = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3000
  %append.srcCap = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3000
  %append.elemsBuf = extractvalue { ptr, i64, i64 } %7, 0, !dbg !3000
  %append.elemsLen = extractvalue { ptr, i64, i64 } %7, 1, !dbg !3000
  %append.new = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf, ptr %append.elemsBuf, i64 %append.srcLen, i64 %append.srcCap, i64 %append.elemsLen, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3000
  %append.newPtr = extractvalue { ptr, i64, i64 } %append.new, 0, !dbg !3000
  %append.newLen = extractvalue { ptr, i64, i64 } %append.new, 1, !dbg !3000
  %append.newCap = extractvalue { ptr, i64, i64 } %append.new, 2, !dbg !3000
  %8 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr, 0, !dbg !3000
  %9 = insertvalue { ptr, i64, i64 } %8, i64 %append.newLen, 1, !dbg !3000
  %10 = insertvalue { ptr, i64, i64 } %9, i64 %append.newCap, 2, !dbg !3000
    #dbg_value({ ptr, i64, i64 } %10, !2988, !DIExpression(), !3001)
    #dbg_value({ ptr, i64, i64 } %10, !2988, !DIExpression(), !3002)
    #dbg_value(i32 %r, !2989, !DIExpression(), !3003)
  %11 = trunc i32 %r to i8, !dbg !3004
  %varargs23 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3005
  %12 = getelementptr inbounds [1 x i8], ptr %varargs23, i32 0, i64 0, !dbg !3005
  store i8 %11, ptr %12, align 1, !dbg !3004
  %slice.ptr24 = getelementptr inbounds [1 x i8], ptr %varargs23, i32 0, i64 0, !dbg !3005
  %13 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr24, 0, !dbg !3005
  %14 = insertvalue { ptr, i64, i64 } %13, i64 1, 1, !dbg !3005
  %15 = insertvalue { ptr, i64, i64 } %14, i64 1, 2, !dbg !3005
  %append.srcBuf25 = extractvalue { ptr, i64, i64 } %10, 0, !dbg !3006
  %append.srcLen26 = extractvalue { ptr, i64, i64 } %10, 1, !dbg !3006
  %append.srcCap27 = extractvalue { ptr, i64, i64 } %10, 2, !dbg !3006
  %append.elemsBuf28 = extractvalue { ptr, i64, i64 } %15, 0, !dbg !3006
  %append.elemsLen29 = extractvalue { ptr, i64, i64 } %15, 1, !dbg !3006
  %append.new30 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf25, ptr %append.elemsBuf28, i64 %append.srcLen26, i64 %append.srcCap27, i64 %append.elemsLen29, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3006
  %append.newPtr31 = extractvalue { ptr, i64, i64 } %append.new30, 0, !dbg !3006
  %append.newLen32 = extractvalue { ptr, i64, i64 } %append.new30, 1, !dbg !3006
  %append.newCap33 = extractvalue { ptr, i64, i64 } %append.new30, 2, !dbg !3006
  %16 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr31, 0, !dbg !3006
  %17 = insertvalue { ptr, i64, i64 } %16, i64 %append.newLen32, 1, !dbg !3006
  %18 = insertvalue { ptr, i64, i64 } %17, i64 %append.newCap33, 2, !dbg !3006
    #dbg_value({ ptr, i64, i64 } %18, !2988, !DIExpression(), !3007)
    #dbg_value({ ptr, i64, i64 } %18, !2988, !DIExpression(), !3008)
  ret { ptr, i64, i64 } %18, !dbg !3009

cond.false:                                       ; preds = %entry
    #dbg_value(i32 %r, !2989, !DIExpression(), !3010)
  %19 = icmp eq i32 %r, 92, !dbg !3011
  br i1 %19, label %if.then, label %if.done, !dbg !2997

if.done:                                          ; preds = %cond.false
    #dbg_value(i32 %r, !2989, !DIExpression(), !3012)
  %20 = call i1 @"internal/reflectlite.isPrint"(i32 %r, ptr undef), !dbg !3013
  br i1 %20, label %if.then1, label %if.done2, !dbg !2997

if.then1:                                         ; preds = %if.done
  %slice.ptr34 = getelementptr inbounds [4 x i8], ptr %runeTmp, i32 0, i64 0, !dbg !3014
  %21 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr34, 0, !dbg !3014
  %22 = insertvalue { ptr, i64, i64 } %21, i64 4, 1, !dbg !3014
  %23 = insertvalue { ptr, i64, i64 } %22, i64 4, 2, !dbg !3014
    #dbg_value(i32 %r, !2989, !DIExpression(), !3015)
  %24 = extractvalue { ptr, i64, i64 } %23, 0, !dbg !3016
  %25 = extractvalue { ptr, i64, i64 } %23, 1, !dbg !3016
  %26 = extractvalue { ptr, i64, i64 } %23, 2, !dbg !3016
  %27 = call i64 @"unicode/utf8.EncodeRune"(ptr %24, i64 %25, i64 %26, i32 %r, ptr undef), !dbg !3016
    #dbg_value(i64 %27, !2990, !DIExpression(), !3017)
    #dbg_value({ ptr, i64, i64 } %2, !2988, !DIExpression(), !3018)
    #dbg_value(i64 %27, !2990, !DIExpression(), !3019)
  %slice.lowhigh = icmp ugt i64 0, %27, !dbg !3020
  %slice.highmax = icmp ugt i64 %27, 4, !dbg !3020
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !3020
  %slice.lowcap = or i1 %slice.lowmax, false, !dbg !3020
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !3020

slice.next:                                       ; preds = %if.then1
  %slice.len = sub i64 %27, 0, !dbg !3020
  %slice.ptr35 = getelementptr inbounds [4 x i8], ptr %runeTmp, i32 0, i64 0, !dbg !3020
  %28 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr35, 0, !dbg !3020
  %29 = insertvalue { ptr, i64, i64 } %28, i64 %slice.len, 1, !dbg !3020
  %30 = insertvalue { ptr, i64, i64 } %29, i64 4, 2, !dbg !3020
  %append.srcBuf36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3021
  %append.srcLen37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3021
  %append.srcCap38 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3021
  %append.elemsBuf39 = extractvalue { ptr, i64, i64 } %30, 0, !dbg !3021
  %append.elemsLen40 = extractvalue { ptr, i64, i64 } %30, 1, !dbg !3021
  %append.new41 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf36, ptr %append.elemsBuf39, i64 %append.srcLen37, i64 %append.srcCap38, i64 %append.elemsLen40, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3021
  %append.newPtr42 = extractvalue { ptr, i64, i64 } %append.new41, 0, !dbg !3021
  %append.newLen43 = extractvalue { ptr, i64, i64 } %append.new41, 1, !dbg !3021
  %append.newCap44 = extractvalue { ptr, i64, i64 } %append.new41, 2, !dbg !3021
  %31 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr42, 0, !dbg !3021
  %32 = insertvalue { ptr, i64, i64 } %31, i64 %append.newLen43, 1, !dbg !3021
  %33 = insertvalue { ptr, i64, i64 } %32, i64 %append.newCap44, 2, !dbg !3021
    #dbg_value({ ptr, i64, i64 } %33, !2988, !DIExpression(), !3022)
    #dbg_value({ ptr, i64, i64 } %33, !2988, !DIExpression(), !3023)
  ret { ptr, i64, i64 } %33, !dbg !3024

if.done2:                                         ; preds = %if.done
    #dbg_value(i32 %r, !2989, !DIExpression(), !3025)
  %34 = icmp eq i32 %r, 7, !dbg !3026
  br i1 %34, label %switch.body, label %switch.next, !dbg !2997

switch.body:                                      ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } %2, !2988, !DIExpression(), !3027)
  %append.srcBuf45 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3028
  %append.srcLen46 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3028
  %append.srcCap47 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3028
  %append.new48 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf45, ptr @"internal/reflectlite$string.23", i64 %append.srcLen46, i64 %append.srcCap47, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3028
  %append.newPtr49 = extractvalue { ptr, i64, i64 } %append.new48, 0, !dbg !3028
  %append.newLen50 = extractvalue { ptr, i64, i64 } %append.new48, 1, !dbg !3028
  %append.newCap51 = extractvalue { ptr, i64, i64 } %append.new48, 2, !dbg !3028
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr49, 0, !dbg !3028
  %36 = insertvalue { ptr, i64, i64 } %35, i64 %append.newLen50, 1, !dbg !3028
  %37 = insertvalue { ptr, i64, i64 } %36, i64 %append.newCap51, 2, !dbg !3028
    #dbg_value({ ptr, i64, i64 } %37, !2988, !DIExpression(), !3029)
  br label %switch.done, !dbg !2997

switch.done:                                      ; preds = %for.loop21, %for.loop, %lookup.next113, %switch.body13, %switch.body11, %switch.body9, %switch.body7, %switch.body5, %switch.body3, %switch.body
  %38 = phi { ptr, i64, i64 } [ %37, %switch.body ], [ %42, %switch.body3 ], [ %46, %switch.body5 ], [ %50, %switch.body7 ], [ %54, %switch.body9 ], [ %58, %switch.body11 ], [ %62, %switch.body13 ], [ %93, %lookup.next113 ], [ %100, %for.loop ], [ %122, %for.loop21 ], !dbg !3030
    #dbg_value({ ptr, i64, i64 } %38, !2988, !DIExpression(), !3031)
  ret { ptr, i64, i64 } %38, !dbg !3032

switch.next:                                      ; preds = %if.done2
  %39 = icmp eq i32 %r, 8, !dbg !3033
  br i1 %39, label %switch.body3, label %switch.next4, !dbg !2997

switch.body3:                                     ; preds = %switch.next
    #dbg_value({ ptr, i64, i64 } %2, !2988, !DIExpression(), !3034)
  %append.srcBuf52 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3035
  %append.srcLen53 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3035
  %append.srcCap54 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3035
  %append.new55 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf52, ptr @"internal/reflectlite$string.24", i64 %append.srcLen53, i64 %append.srcCap54, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3035
  %append.newPtr56 = extractvalue { ptr, i64, i64 } %append.new55, 0, !dbg !3035
  %append.newLen57 = extractvalue { ptr, i64, i64 } %append.new55, 1, !dbg !3035
  %append.newCap58 = extractvalue { ptr, i64, i64 } %append.new55, 2, !dbg !3035
  %40 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr56, 0, !dbg !3035
  %41 = insertvalue { ptr, i64, i64 } %40, i64 %append.newLen57, 1, !dbg !3035
  %42 = insertvalue { ptr, i64, i64 } %41, i64 %append.newCap58, 2, !dbg !3035
    #dbg_value({ ptr, i64, i64 } %42, !2988, !DIExpression(), !3036)
  br label %switch.done, !dbg !2997

switch.next4:                                     ; preds = %switch.next
  %43 = icmp eq i32 %r, 12, !dbg !3037
  br i1 %43, label %switch.body5, label %switch.next6, !dbg !2997

switch.body5:                                     ; preds = %switch.next4
    #dbg_value({ ptr, i64, i64 } %2, !2988, !DIExpression(), !3038)
  %append.srcBuf59 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3039
  %append.srcLen60 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3039
  %append.srcCap61 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3039
  %append.new62 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf59, ptr @"internal/reflectlite$string.25", i64 %append.srcLen60, i64 %append.srcCap61, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3039
  %append.newPtr63 = extractvalue { ptr, i64, i64 } %append.new62, 0, !dbg !3039
  %append.newLen64 = extractvalue { ptr, i64, i64 } %append.new62, 1, !dbg !3039
  %append.newCap65 = extractvalue { ptr, i64, i64 } %append.new62, 2, !dbg !3039
  %44 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr63, 0, !dbg !3039
  %45 = insertvalue { ptr, i64, i64 } %44, i64 %append.newLen64, 1, !dbg !3039
  %46 = insertvalue { ptr, i64, i64 } %45, i64 %append.newCap65, 2, !dbg !3039
    #dbg_value({ ptr, i64, i64 } %46, !2988, !DIExpression(), !3040)
  br label %switch.done, !dbg !2997

switch.next6:                                     ; preds = %switch.next4
  %47 = icmp eq i32 %r, 10, !dbg !3041
  br i1 %47, label %switch.body7, label %switch.next8, !dbg !2997

switch.body7:                                     ; preds = %switch.next6
    #dbg_value({ ptr, i64, i64 } %2, !2988, !DIExpression(), !3042)
  %append.srcBuf66 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3043
  %append.srcLen67 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3043
  %append.srcCap68 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3043
  %append.new69 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf66, ptr @"internal/reflectlite$string.26", i64 %append.srcLen67, i64 %append.srcCap68, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3043
  %append.newPtr70 = extractvalue { ptr, i64, i64 } %append.new69, 0, !dbg !3043
  %append.newLen71 = extractvalue { ptr, i64, i64 } %append.new69, 1, !dbg !3043
  %append.newCap72 = extractvalue { ptr, i64, i64 } %append.new69, 2, !dbg !3043
  %48 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr70, 0, !dbg !3043
  %49 = insertvalue { ptr, i64, i64 } %48, i64 %append.newLen71, 1, !dbg !3043
  %50 = insertvalue { ptr, i64, i64 } %49, i64 %append.newCap72, 2, !dbg !3043
    #dbg_value({ ptr, i64, i64 } %50, !2988, !DIExpression(), !3044)
  br label %switch.done, !dbg !2997

switch.next8:                                     ; preds = %switch.next6
  %51 = icmp eq i32 %r, 13, !dbg !3045
  br i1 %51, label %switch.body9, label %switch.next10, !dbg !2997

switch.body9:                                     ; preds = %switch.next8
    #dbg_value({ ptr, i64, i64 } %2, !2988, !DIExpression(), !3046)
  %append.srcBuf73 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3047
  %append.srcLen74 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3047
  %append.srcCap75 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3047
  %append.new76 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf73, ptr @"internal/reflectlite$string.27", i64 %append.srcLen74, i64 %append.srcCap75, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3047
  %append.newPtr77 = extractvalue { ptr, i64, i64 } %append.new76, 0, !dbg !3047
  %append.newLen78 = extractvalue { ptr, i64, i64 } %append.new76, 1, !dbg !3047
  %append.newCap79 = extractvalue { ptr, i64, i64 } %append.new76, 2, !dbg !3047
  %52 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr77, 0, !dbg !3047
  %53 = insertvalue { ptr, i64, i64 } %52, i64 %append.newLen78, 1, !dbg !3047
  %54 = insertvalue { ptr, i64, i64 } %53, i64 %append.newCap79, 2, !dbg !3047
    #dbg_value({ ptr, i64, i64 } %54, !2988, !DIExpression(), !3048)
  br label %switch.done, !dbg !2997

switch.next10:                                    ; preds = %switch.next8
  %55 = icmp eq i32 %r, 9, !dbg !3049
  br i1 %55, label %switch.body11, label %switch.next12, !dbg !2997

switch.body11:                                    ; preds = %switch.next10
    #dbg_value({ ptr, i64, i64 } %2, !2988, !DIExpression(), !3050)
  %append.srcBuf80 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3051
  %append.srcLen81 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3051
  %append.srcCap82 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3051
  %append.new83 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf80, ptr @"internal/reflectlite$string.28", i64 %append.srcLen81, i64 %append.srcCap82, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3051
  %append.newPtr84 = extractvalue { ptr, i64, i64 } %append.new83, 0, !dbg !3051
  %append.newLen85 = extractvalue { ptr, i64, i64 } %append.new83, 1, !dbg !3051
  %append.newCap86 = extractvalue { ptr, i64, i64 } %append.new83, 2, !dbg !3051
  %56 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr84, 0, !dbg !3051
  %57 = insertvalue { ptr, i64, i64 } %56, i64 %append.newLen85, 1, !dbg !3051
  %58 = insertvalue { ptr, i64, i64 } %57, i64 %append.newCap86, 2, !dbg !3051
    #dbg_value({ ptr, i64, i64 } %58, !2988, !DIExpression(), !3052)
  br label %switch.done, !dbg !2997

switch.next12:                                    ; preds = %switch.next10
  %59 = icmp eq i32 %r, 11, !dbg !3053
  br i1 %59, label %switch.body13, label %switch.next14, !dbg !2997

switch.body13:                                    ; preds = %switch.next12
    #dbg_value({ ptr, i64, i64 } %2, !2988, !DIExpression(), !3054)
  %append.srcBuf87 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3055
  %append.srcLen88 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3055
  %append.srcCap89 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3055
  %append.new90 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf87, ptr @"internal/reflectlite$string.29", i64 %append.srcLen88, i64 %append.srcCap89, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3055
  %append.newPtr91 = extractvalue { ptr, i64, i64 } %append.new90, 0, !dbg !3055
  %append.newLen92 = extractvalue { ptr, i64, i64 } %append.new90, 1, !dbg !3055
  %append.newCap93 = extractvalue { ptr, i64, i64 } %append.new90, 2, !dbg !3055
  %60 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr91, 0, !dbg !3055
  %61 = insertvalue { ptr, i64, i64 } %60, i64 %append.newLen92, 1, !dbg !3055
  %62 = insertvalue { ptr, i64, i64 } %61, i64 %append.newCap93, 2, !dbg !3055
    #dbg_value({ ptr, i64, i64 } %62, !2988, !DIExpression(), !3056)
  br label %switch.done, !dbg !2997

switch.next14:                                    ; preds = %switch.next12
    #dbg_value(i32 %r, !2989, !DIExpression(), !3057)
  %63 = icmp slt i32 %r, 32, !dbg !3058
  br i1 %63, label %binop.done, label %binop.rhs, !dbg !2997

binop.done:                                       ; preds = %binop.rhs, %switch.next14
  %64 = phi i1 [ true, %switch.next14 ], [ %140, %binop.rhs ], !dbg !3059
  br i1 %64, label %switch.body15, label %switch.next16, !dbg !2997

switch.body15:                                    ; preds = %binop.done
    #dbg_value({ ptr, i64, i64 } %2, !2988, !DIExpression(), !3060)
  %append.srcBuf94 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3061
  %append.srcLen95 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3061
  %append.srcCap96 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3061
  %append.new97 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf94, ptr @"internal/reflectlite$string.30", i64 %append.srcLen95, i64 %append.srcCap96, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3061
  %append.newPtr98 = extractvalue { ptr, i64, i64 } %append.new97, 0, !dbg !3061
  %append.newLen99 = extractvalue { ptr, i64, i64 } %append.new97, 1, !dbg !3061
  %append.newCap100 = extractvalue { ptr, i64, i64 } %append.new97, 2, !dbg !3061
  %65 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr98, 0, !dbg !3061
  %66 = insertvalue { ptr, i64, i64 } %65, i64 %append.newLen99, 1, !dbg !3061
  %67 = insertvalue { ptr, i64, i64 } %66, i64 %append.newCap100, 2, !dbg !3061
    #dbg_value({ ptr, i64, i64 } %67, !2988, !DIExpression(), !3062)
    #dbg_value({ ptr, i64, i64 } %67, !2988, !DIExpression(), !3063)
    #dbg_value(i32 %r, !2989, !DIExpression(), !3064)
  %68 = trunc i32 %r to i8, !dbg !3065
  %69 = lshr i8 %68, 4, !dbg !3066
  %shift.result = select i1 false, i8 0, i8 %69, !dbg !3066
  %70 = zext i8 %shift.result to i64, !dbg !3067
  %71 = icmp uge i64 %70, 15, !dbg !3067
  br i1 %71, label %lookup.throw, label %lookup.next, !dbg !3067

lookup.next:                                      ; preds = %switch.body15
  %72 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.31", i64 %70, !dbg !3067
  %73 = load i8, ptr %72, align 1, !dbg !3067
  %varargs101 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3068
  %74 = getelementptr inbounds [1 x i8], ptr %varargs101, i32 0, i64 0, !dbg !3068
  store i8 %73, ptr %74, align 1, !dbg !3067
  %slice.ptr102 = getelementptr inbounds [1 x i8], ptr %varargs101, i32 0, i64 0, !dbg !3068
  %75 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr102, 0, !dbg !3068
  %76 = insertvalue { ptr, i64, i64 } %75, i64 1, 1, !dbg !3068
  %77 = insertvalue { ptr, i64, i64 } %76, i64 1, 2, !dbg !3068
  %append.srcBuf103 = extractvalue { ptr, i64, i64 } %67, 0, !dbg !3069
  %append.srcLen104 = extractvalue { ptr, i64, i64 } %67, 1, !dbg !3069
  %append.srcCap105 = extractvalue { ptr, i64, i64 } %67, 2, !dbg !3069
  %append.elemsBuf106 = extractvalue { ptr, i64, i64 } %77, 0, !dbg !3069
  %append.elemsLen107 = extractvalue { ptr, i64, i64 } %77, 1, !dbg !3069
  %append.new108 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf103, ptr %append.elemsBuf106, i64 %append.srcLen104, i64 %append.srcCap105, i64 %append.elemsLen107, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3069
  %append.newPtr109 = extractvalue { ptr, i64, i64 } %append.new108, 0, !dbg !3069
  %append.newLen110 = extractvalue { ptr, i64, i64 } %append.new108, 1, !dbg !3069
  %append.newCap111 = extractvalue { ptr, i64, i64 } %append.new108, 2, !dbg !3069
  %78 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr109, 0, !dbg !3069
  %79 = insertvalue { ptr, i64, i64 } %78, i64 %append.newLen110, 1, !dbg !3069
  %80 = insertvalue { ptr, i64, i64 } %79, i64 %append.newCap111, 2, !dbg !3069
    #dbg_value({ ptr, i64, i64 } %80, !2988, !DIExpression(), !3070)
    #dbg_value({ ptr, i64, i64 } %80, !2988, !DIExpression(), !3071)
    #dbg_value(i32 %r, !2989, !DIExpression(), !3072)
  %81 = trunc i32 %r to i8, !dbg !3073
  %82 = and i8 %81, 15, !dbg !3074
  %83 = zext i8 %82 to i64, !dbg !3075
  %84 = icmp uge i64 %83, 15, !dbg !3075
  br i1 %84, label %lookup.throw112, label %lookup.next113, !dbg !3075

lookup.next113:                                   ; preds = %lookup.next
  %85 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.32", i64 %83, !dbg !3075
  %86 = load i8, ptr %85, align 1, !dbg !3075
  %varargs114 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3076
  %87 = getelementptr inbounds [1 x i8], ptr %varargs114, i32 0, i64 0, !dbg !3076
  store i8 %86, ptr %87, align 1, !dbg !3075
  %slice.ptr115 = getelementptr inbounds [1 x i8], ptr %varargs114, i32 0, i64 0, !dbg !3076
  %88 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr115, 0, !dbg !3076
  %89 = insertvalue { ptr, i64, i64 } %88, i64 1, 1, !dbg !3076
  %90 = insertvalue { ptr, i64, i64 } %89, i64 1, 2, !dbg !3076
  %append.srcBuf116 = extractvalue { ptr, i64, i64 } %80, 0, !dbg !3077
  %append.srcLen117 = extractvalue { ptr, i64, i64 } %80, 1, !dbg !3077
  %append.srcCap118 = extractvalue { ptr, i64, i64 } %80, 2, !dbg !3077
  %append.elemsBuf119 = extractvalue { ptr, i64, i64 } %90, 0, !dbg !3077
  %append.elemsLen120 = extractvalue { ptr, i64, i64 } %90, 1, !dbg !3077
  %append.new121 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf116, ptr %append.elemsBuf119, i64 %append.srcLen117, i64 %append.srcCap118, i64 %append.elemsLen120, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3077
  %append.newPtr122 = extractvalue { ptr, i64, i64 } %append.new121, 0, !dbg !3077
  %append.newLen123 = extractvalue { ptr, i64, i64 } %append.new121, 1, !dbg !3077
  %append.newCap124 = extractvalue { ptr, i64, i64 } %append.new121, 2, !dbg !3077
  %91 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr122, 0, !dbg !3077
  %92 = insertvalue { ptr, i64, i64 } %91, i64 %append.newLen123, 1, !dbg !3077
  %93 = insertvalue { ptr, i64, i64 } %92, i64 %append.newCap124, 2, !dbg !3077
    #dbg_value({ ptr, i64, i64 } %93, !2988, !DIExpression(), !3078)
  br label %switch.done, !dbg !2997

switch.next16:                                    ; preds = %binop.done
    #dbg_value(i32 %r, !2989, !DIExpression(), !3079)
  %94 = call i1 @"unicode/utf8.ValidRune"(i32 %r, ptr undef), !dbg !3080
  %95 = xor i1 %94, true, !dbg !3081
  br i1 %95, label %switch.body17, label %switch.next19, !dbg !2997

switch.body17:                                    ; preds = %switch.next16
    #dbg_value(i32 65533, !2989, !DIExpression(), !3082)
  br label %switch.body18, !dbg !2997

switch.body18:                                    ; preds = %switch.next19, %switch.body17
  %96 = phi i32 [ 65533, %switch.body17 ], [ %r, %switch.next19 ], !dbg !3083
    #dbg_value({ ptr, i64, i64 } %2, !2988, !DIExpression(), !3084)
  %append.srcBuf125 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3085
  %append.srcLen126 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3085
  %append.srcCap127 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3085
  %append.new128 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf125, ptr @"internal/reflectlite$string.33", i64 %append.srcLen126, i64 %append.srcCap127, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3085
  %append.newPtr129 = extractvalue { ptr, i64, i64 } %append.new128, 0, !dbg !3085
  %append.newLen130 = extractvalue { ptr, i64, i64 } %append.new128, 1, !dbg !3085
  %append.newCap131 = extractvalue { ptr, i64, i64 } %append.new128, 2, !dbg !3085
  %97 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr129, 0, !dbg !3085
  %98 = insertvalue { ptr, i64, i64 } %97, i64 %append.newLen130, 1, !dbg !3085
  %99 = insertvalue { ptr, i64, i64 } %98, i64 %append.newCap131, 2, !dbg !3085
    #dbg_value({ ptr, i64, i64 } %99, !2988, !DIExpression(), !3086)
    #dbg_value(i64 12, !2991, !DIExpression(), !3087)
  br label %for.loop, !dbg !2997

for.loop:                                         ; preds = %lookup.next133, %switch.body18
  %100 = phi { ptr, i64, i64 } [ %99, %switch.body18 ], [ %116, %lookup.next133 ], !dbg !3030
  %101 = phi i64 [ 12, %switch.body18 ], [ %117, %lookup.next133 ], !dbg !3087
    #dbg_value(i64 %101, !2991, !DIExpression(), !3088)
  %102 = icmp sge i64 %101, 0, !dbg !3089
  br i1 %102, label %for.body, label %switch.done, !dbg !2997

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %100, !2988, !DIExpression(), !3090)
    #dbg_value(i32 %96, !2989, !DIExpression(), !3091)
    #dbg_value(i64 %101, !2991, !DIExpression(), !3092)
  %shift.overflow = icmp uge i64 %101, 32, !dbg !3093
  %103 = trunc i64 %101 to i32, !dbg !3093
  %shift.offset = select i1 %shift.overflow, i32 31, i32 %103, !dbg !3093
  %104 = ashr i32 %96, %shift.offset, !dbg !3093
  %105 = and i32 %104, 15, !dbg !3094
  %106 = sext i32 %105 to i64, !dbg !3095
  %107 = icmp uge i64 %106, 15, !dbg !3095
  br i1 %107, label %lookup.throw132, label %lookup.next133, !dbg !3095

lookup.next133:                                   ; preds = %for.body
  %108 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.34", i64 %106, !dbg !3095
  %109 = load i8, ptr %108, align 1, !dbg !3095
  %varargs134 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3096
  %110 = getelementptr inbounds [1 x i8], ptr %varargs134, i32 0, i64 0, !dbg !3096
  store i8 %109, ptr %110, align 1, !dbg !3095
  %slice.ptr135 = getelementptr inbounds [1 x i8], ptr %varargs134, i32 0, i64 0, !dbg !3096
  %111 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr135, 0, !dbg !3096
  %112 = insertvalue { ptr, i64, i64 } %111, i64 1, 1, !dbg !3096
  %113 = insertvalue { ptr, i64, i64 } %112, i64 1, 2, !dbg !3096
  %append.srcBuf136 = extractvalue { ptr, i64, i64 } %100, 0, !dbg !3097
  %append.srcLen137 = extractvalue { ptr, i64, i64 } %100, 1, !dbg !3097
  %append.srcCap138 = extractvalue { ptr, i64, i64 } %100, 2, !dbg !3097
  %append.elemsBuf139 = extractvalue { ptr, i64, i64 } %113, 0, !dbg !3097
  %append.elemsLen140 = extractvalue { ptr, i64, i64 } %113, 1, !dbg !3097
  %append.new141 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf136, ptr %append.elemsBuf139, i64 %append.srcLen137, i64 %append.srcCap138, i64 %append.elemsLen140, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3097
  %append.newPtr142 = extractvalue { ptr, i64, i64 } %append.new141, 0, !dbg !3097
  %append.newLen143 = extractvalue { ptr, i64, i64 } %append.new141, 1, !dbg !3097
  %append.newCap144 = extractvalue { ptr, i64, i64 } %append.new141, 2, !dbg !3097
  %114 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr142, 0, !dbg !3097
  %115 = insertvalue { ptr, i64, i64 } %114, i64 %append.newLen143, 1, !dbg !3097
  %116 = insertvalue { ptr, i64, i64 } %115, i64 %append.newCap144, 2, !dbg !3097
    #dbg_value({ ptr, i64, i64 } %116, !2988, !DIExpression(), !3098)
  %117 = sub i64 %101, 4, !dbg !3099
    #dbg_value(i64 %117, !2991, !DIExpression(), !3099)
  br label %for.loop, !dbg !2997

switch.next19:                                    ; preds = %switch.next16
    #dbg_value(i32 %r, !2989, !DIExpression(), !3100)
  %118 = icmp slt i32 %r, 65536, !dbg !3101
  br i1 %118, label %switch.body18, label %switch.next20, !dbg !2997

switch.next20:                                    ; preds = %switch.next19
    #dbg_value({ ptr, i64, i64 } %2, !2988, !DIExpression(), !3102)
  %append.srcBuf145 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3103
  %append.srcLen146 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3103
  %append.srcCap147 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3103
  %append.new148 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf145, ptr @"internal/reflectlite$string.35", i64 %append.srcLen146, i64 %append.srcCap147, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3103
  %append.newPtr149 = extractvalue { ptr, i64, i64 } %append.new148, 0, !dbg !3103
  %append.newLen150 = extractvalue { ptr, i64, i64 } %append.new148, 1, !dbg !3103
  %append.newCap151 = extractvalue { ptr, i64, i64 } %append.new148, 2, !dbg !3103
  %119 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr149, 0, !dbg !3103
  %120 = insertvalue { ptr, i64, i64 } %119, i64 %append.newLen150, 1, !dbg !3103
  %121 = insertvalue { ptr, i64, i64 } %120, i64 %append.newCap151, 2, !dbg !3103
    #dbg_value({ ptr, i64, i64 } %121, !2988, !DIExpression(), !3104)
    #dbg_value(i64 28, !2992, !DIExpression(), !3105)
  br label %for.loop21, !dbg !2997

for.loop21:                                       ; preds = %lookup.next155, %switch.next20
  %122 = phi { ptr, i64, i64 } [ %121, %switch.next20 ], [ %138, %lookup.next155 ], !dbg !3030
  %123 = phi i64 [ 28, %switch.next20 ], [ %139, %lookup.next155 ], !dbg !3105
    #dbg_value(i64 %123, !2992, !DIExpression(), !3106)
  %124 = icmp sge i64 %123, 0, !dbg !3107
  br i1 %124, label %for.body22, label %switch.done, !dbg !2997

for.body22:                                       ; preds = %for.loop21
    #dbg_value({ ptr, i64, i64 } %122, !2988, !DIExpression(), !3108)
    #dbg_value(i32 %r, !2989, !DIExpression(), !3109)
    #dbg_value(i64 %123, !2992, !DIExpression(), !3110)
  %shift.overflow152 = icmp uge i64 %123, 32, !dbg !3111
  %125 = trunc i64 %123 to i32, !dbg !3111
  %shift.offset153 = select i1 %shift.overflow152, i32 31, i32 %125, !dbg !3111
  %126 = ashr i32 %r, %shift.offset153, !dbg !3111
  %127 = and i32 %126, 15, !dbg !3112
  %128 = sext i32 %127 to i64, !dbg !3113
  %129 = icmp uge i64 %128, 15, !dbg !3113
  br i1 %129, label %lookup.throw154, label %lookup.next155, !dbg !3113

lookup.next155:                                   ; preds = %for.body22
  %130 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.36", i64 %128, !dbg !3113
  %131 = load i8, ptr %130, align 1, !dbg !3113
  %varargs156 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3114
  %132 = getelementptr inbounds [1 x i8], ptr %varargs156, i32 0, i64 0, !dbg !3114
  store i8 %131, ptr %132, align 1, !dbg !3113
  %slice.ptr157 = getelementptr inbounds [1 x i8], ptr %varargs156, i32 0, i64 0, !dbg !3114
  %133 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr157, 0, !dbg !3114
  %134 = insertvalue { ptr, i64, i64 } %133, i64 1, 1, !dbg !3114
  %135 = insertvalue { ptr, i64, i64 } %134, i64 1, 2, !dbg !3114
  %append.srcBuf158 = extractvalue { ptr, i64, i64 } %122, 0, !dbg !3115
  %append.srcLen159 = extractvalue { ptr, i64, i64 } %122, 1, !dbg !3115
  %append.srcCap160 = extractvalue { ptr, i64, i64 } %122, 2, !dbg !3115
  %append.elemsBuf161 = extractvalue { ptr, i64, i64 } %135, 0, !dbg !3115
  %append.elemsLen162 = extractvalue { ptr, i64, i64 } %135, 1, !dbg !3115
  %append.new163 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf158, ptr %append.elemsBuf161, i64 %append.srcLen159, i64 %append.srcCap160, i64 %append.elemsLen162, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3115
  %append.newPtr164 = extractvalue { ptr, i64, i64 } %append.new163, 0, !dbg !3115
  %append.newLen165 = extractvalue { ptr, i64, i64 } %append.new163, 1, !dbg !3115
  %append.newCap166 = extractvalue { ptr, i64, i64 } %append.new163, 2, !dbg !3115
  %136 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr164, 0, !dbg !3115
  %137 = insertvalue { ptr, i64, i64 } %136, i64 %append.newLen165, 1, !dbg !3115
  %138 = insertvalue { ptr, i64, i64 } %137, i64 %append.newCap166, 2, !dbg !3115
    #dbg_value({ ptr, i64, i64 } %138, !2988, !DIExpression(), !3116)
  %139 = sub i64 %123, 4, !dbg !3117
    #dbg_value(i64 %139, !2992, !DIExpression(), !3117)
  br label %for.loop21, !dbg !2997

binop.rhs:                                        ; preds = %switch.next14
    #dbg_value(i32 %r, !2989, !DIExpression(), !3118)
  %140 = icmp eq i32 %r, 127, !dbg !3119
  br label %binop.done, !dbg !2997

slice.throw:                                      ; preds = %if.then1
  call void @runtime.slicePanic(ptr undef), !dbg !3020
  unreachable, !dbg !3020

lookup.throw:                                     ; preds = %switch.body15
  call void @runtime.lookupPanic(ptr undef), !dbg !3067
  unreachable, !dbg !3067

lookup.throw112:                                  ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !3075
  unreachable, !dbg !3075

lookup.throw132:                                  ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !3095
  unreachable, !dbg !3095

lookup.throw154:                                  ; preds = %for.body22
  call void @runtime.lookupPanic(ptr undef), !dbg !3113
  unreachable, !dbg !3113
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"internal/reflectlite.isPrint"(i32 %r, ptr %context) unnamed_addr #1 !dbg !3120 {
entry:
    #dbg_value(i32 %r, !3122, !DIExpression(), !3123)
    #dbg_value(i32 %r, !3122, !DIExpression(), !3124)
  %0 = icmp sle i32 %r, 255, !dbg !3125
  br i1 %0, label %if.then, label %if.done5, !dbg !3126

if.then:                                          ; preds = %entry
    #dbg_value(i32 %r, !3122, !DIExpression(), !3127)
  %1 = icmp sle i32 32, %r, !dbg !3128
  br i1 %1, label %cond.true, label %if.done, !dbg !3126

cond.true:                                        ; preds = %if.then
    #dbg_value(i32 %r, !3122, !DIExpression(), !3129)
  %2 = icmp sle i32 %r, 126, !dbg !3130
  br i1 %2, label %if.then1, label %if.done, !dbg !3126

if.then1:                                         ; preds = %cond.true
  ret i1 true, !dbg !3131

if.done:                                          ; preds = %cond.true, %if.then
    #dbg_value(i32 %r, !3122, !DIExpression(), !3132)
  %3 = icmp sle i32 161, %r, !dbg !3133
  br i1 %3, label %cond.true2, label %if.done4, !dbg !3126

cond.true2:                                       ; preds = %if.done
    #dbg_value(i32 %r, !3122, !DIExpression(), !3134)
  %4 = icmp sle i32 %r, 255, !dbg !3135
  br i1 %4, label %if.then3, label %if.done4, !dbg !3126

if.then3:                                         ; preds = %cond.true2
    #dbg_value(i32 %r, !3122, !DIExpression(), !3136)
  %5 = icmp ne i32 %r, 173, !dbg !3137
  ret i1 %5, !dbg !3138

if.done4:                                         ; preds = %cond.true2, %if.done
  ret i1 false, !dbg !3139

if.done5:                                         ; preds = %entry
  ret i1 false, !dbg !3140
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
define internal %runtime._string @"(internal/reflectlite.Kind).String$invoke"(ptr %0, ptr %1) unnamed_addr #1 !dbg !3141 {
entry:
  %unpack.int = ptrtoint ptr %0 to i8, !dbg !3142
  %ret = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %unpack.int, ptr %1), !dbg !3142
  ret %runtime._string %ret, !dbg !3142
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.ValueError).Error"(ptr dereferenceable_or_null(24) %e, ptr %context) unnamed_addr #1 !dbg !3143 {
entry:
    #dbg_value(ptr %e, !3152, !DIExpression(), !3153)
    #dbg_value(ptr %e, !3152, !DIExpression(), !3154)
  %0 = icmp eq ptr %e, null, !dbg !3155
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3155

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 1, !dbg !3155
  %2 = icmp eq ptr %1, null, !dbg !3155
  br i1 %2, label %deref.throw, label %deref.next, !dbg !3155

deref.next:                                       ; preds = %gep.next
  %3 = load i8, ptr %1, align 1, !dbg !3155
  %4 = icmp eq i8 %3, 0, !dbg !3156
  br i1 %4, label %if.then, label %if.done, !dbg !3157

if.then:                                          ; preds = %deref.next
    #dbg_value(ptr %e, !3152, !DIExpression(), !3158)
  %5 = icmp eq ptr %e, null, !dbg !3159
  br i1 %5, label %gep.throw1, label %gep.next2, !dbg !3159

gep.next2:                                        ; preds = %if.then
  %6 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 0, !dbg !3159
  %7 = icmp eq ptr %6, null, !dbg !3159
  br i1 %7, label %deref.throw3, label %deref.next4, !dbg !3159

deref.next4:                                      ; preds = %gep.next2
  %8 = load %runtime._string, ptr %6, align 8, !dbg !3159
  %9 = extractvalue %runtime._string %8, 0, !dbg !3160
  %10 = extractvalue %runtime._string %8, 1, !dbg !3160
  %11 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.229", i64 17, ptr %9, i64 %10, ptr undef), !dbg !3160
  %12 = extractvalue %runtime._string %11, 0, !dbg !3161
  %13 = extractvalue %runtime._string %11, 1, !dbg !3161
  %14 = call %runtime._string @runtime.stringConcat(ptr %12, i64 %13, ptr @"internal/reflectlite$string.230", i64 14, ptr undef), !dbg !3161
  ret %runtime._string %14, !dbg !3162

if.done:                                          ; preds = %deref.next
    #dbg_value(ptr %e, !3152, !DIExpression(), !3163)
  %15 = icmp eq ptr %e, null, !dbg !3164
  br i1 %15, label %gep.throw5, label %gep.next6, !dbg !3164

gep.next6:                                        ; preds = %if.done
  %16 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 0, !dbg !3164
  %17 = icmp eq ptr %16, null, !dbg !3164
  br i1 %17, label %deref.throw7, label %deref.next8, !dbg !3164

deref.next8:                                      ; preds = %gep.next6
  %18 = load %runtime._string, ptr %16, align 8, !dbg !3164
  %19 = extractvalue %runtime._string %18, 0, !dbg !3165
  %20 = extractvalue %runtime._string %18, 1, !dbg !3165
  %21 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.231", i64 17, ptr %19, i64 %20, ptr undef), !dbg !3165
  %22 = extractvalue %runtime._string %21, 0, !dbg !3166
  %23 = extractvalue %runtime._string %21, 1, !dbg !3166
  %24 = call %runtime._string @runtime.stringConcat(ptr %22, i64 %23, ptr @"internal/reflectlite$string.232", i64 4, ptr undef), !dbg !3166
    #dbg_value(ptr %e, !3152, !DIExpression(), !3167)
  %25 = icmp eq ptr %e, null, !dbg !3168
  br i1 %25, label %gep.throw9, label %gep.next10, !dbg !3168

gep.next10:                                       ; preds = %deref.next8
  %26 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 1, !dbg !3168
  %27 = icmp eq ptr %26, null, !dbg !3168
  br i1 %27, label %deref.throw11, label %deref.next12, !dbg !3168

deref.next12:                                     ; preds = %gep.next10
  %28 = load i8, ptr %26, align 1, !dbg !3168
  %29 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %28, ptr undef), !dbg !3169
  %30 = extractvalue %runtime._string %24, 0, !dbg !3170
  %31 = extractvalue %runtime._string %24, 1, !dbg !3170
  %32 = extractvalue %runtime._string %29, 0, !dbg !3170
  %33 = extractvalue %runtime._string %29, 1, !dbg !3170
  %34 = call %runtime._string @runtime.stringConcat(ptr %30, i64 %31, ptr %32, i64 %33, ptr undef), !dbg !3170
  %35 = extractvalue %runtime._string %34, 0, !dbg !3171
  %36 = extractvalue %runtime._string %34, 1, !dbg !3171
  %37 = call %runtime._string @runtime.stringConcat(ptr %35, i64 %36, ptr @"internal/reflectlite$string.233", i64 6, ptr undef), !dbg !3171
  ret %runtime._string %37, !dbg !3172

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3155
  unreachable, !dbg !3155

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3155
  unreachable, !dbg !3155

gep.throw1:                                       ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3159
  unreachable, !dbg !3159

deref.throw3:                                     ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3159
  unreachable, !dbg !3159

gep.throw5:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3164
  unreachable, !dbg !3164

deref.throw7:                                     ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3164
  unreachable, !dbg !3164

gep.throw9:                                       ; preds = %deref.next8
  call void @runtime.nilPanic(ptr undef), !dbg !3168
  unreachable, !dbg !3168

deref.throw11:                                    ; preds = %gep.next10
  call void @runtime.nilPanic(ptr undef), !dbg !3168
  unreachable, !dbg !3168
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr %context) unnamed_addr #1 !dbg !3173 {
entry:
  ret %runtime._string { ptr @"internal/reflectlite$string.17", i64 14 }, !dbg !3178
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.badSyntax).Error"(ptr %arg0, ptr %context) unnamed_addr #1 {
entry:
  %0 = call %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr undef)
  ret %runtime._string %0
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.badSyntax).Error$invoke"(ptr %0, ptr %1) unnamed_addr #1 !dbg !3179 {
entry:
  %ret = call %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr %1), !dbg !3180
  ret %runtime._string %ret, !dbg !3180
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"runtime/interrupt.In"(ptr %context) #1 !dbg !3181 {
entry:
  ret i1 false, !dbg !3184
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Mutex).Lock"(ptr dereferenceable_or_null(4) %m, ptr %context) #1 !dbg !3185 {
entry:
    #dbg_value(ptr %m, !3190, !DIExpression(), !3191)
    #dbg_value(ptr %m, !3190, !DIExpression(), !3192)
  %0 = icmp eq ptr %m, null, !dbg !3193
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3193

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3193
  %2 = icmp eq ptr %1, null, !dbg !3192
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3192

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3192
  %4 = call i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr %3, i32 0, i32 1, ptr undef), !dbg !3194
  br i1 %4, label %if.then, label %for.loop, !dbg !3195

if.then:                                          ; preds = %gep.next2
  ret void, !dbg !3196

for.loop:                                         ; preds = %gep.next8, %gep.next2
    #dbg_value(ptr %m, !3190, !DIExpression(), !3197)
  %5 = icmp eq ptr %m, null, !dbg !3198
  br i1 %5, label %gep.throw3, label %gep.next4, !dbg !3198

gep.next4:                                        ; preds = %for.loop
  %6 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3198
  %7 = icmp eq ptr %6, null, !dbg !3197
  br i1 %7, label %gep.throw5, label %gep.next6, !dbg !3197

gep.next6:                                        ; preds = %gep.next4
  %8 = getelementptr inbounds %"internal/futex.Futex", ptr %6, i32 0, i32 0, !dbg !3197
  %9 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr %8, i32 2, ptr undef), !dbg !3199
  %10 = icmp ne i32 %9, 0, !dbg !3200
  br i1 %10, label %for.body, label %for.done, !dbg !3195

for.body:                                         ; preds = %gep.next6
    #dbg_value(ptr %m, !3190, !DIExpression(), !3201)
  %11 = icmp eq ptr %m, null, !dbg !3202
  br i1 %11, label %gep.throw7, label %gep.next8, !dbg !3202

gep.next8:                                        ; preds = %for.body
  %12 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3202
  %13 = call i1 @"(*internal/futex.Futex).Wait"(ptr %12, i32 2, ptr undef), !dbg !3203
  br label %for.loop, !dbg !3195

for.done:                                         ; preds = %gep.next6
  ret void, !dbg !3204

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3193
  unreachable, !dbg !3193

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3192
  unreachable, !dbg !3192

gep.throw3:                                       ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !3198
  unreachable, !dbg !3198

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3197
  unreachable, !dbg !3197

gep.throw7:                                       ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3202
  unreachable, !dbg !3202
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Mutex).Unlock"(ptr dereferenceable_or_null(4) %m, ptr %context) #1 !dbg !3205 {
entry:
    #dbg_value(ptr %m, !3207, !DIExpression(), !3209)
    #dbg_value(ptr %m, !3207, !DIExpression(), !3210)
  %0 = icmp eq ptr %m, null, !dbg !3211
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3211

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3211
  %2 = icmp eq ptr %1, null, !dbg !3210
  br i1 %2, label %gep.throw2, label %gep.next3, !dbg !3210

gep.next3:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3210
  %4 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr %3, i32 0, ptr undef), !dbg !3212
    #dbg_value(i32 %4, !3208, !DIExpression(), !3213)
    #dbg_value(i32 %4, !3208, !DIExpression(), !3214)
  %5 = icmp eq i32 %4, 0, !dbg !3215
  br i1 %5, label %if.then, label %if.else, !dbg !3216

if.then:                                          ; preds = %gep.next3
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"internal/task$pack", ptr undef), !dbg !3217
  unreachable, !dbg !3217

if.else:                                          ; preds = %gep.next3
    #dbg_value(i32 %4, !3208, !DIExpression(), !3218)
  %6 = icmp eq i32 %4, 2, !dbg !3219
  br i1 %6, label %if.then1, label %if.done, !dbg !3216

if.then1:                                         ; preds = %if.else
    #dbg_value(ptr %m, !3207, !DIExpression(), !3220)
  %7 = icmp eq ptr %m, null, !dbg !3221
  br i1 %7, label %gep.throw4, label %gep.next5, !dbg !3221

gep.next5:                                        ; preds = %if.then1
  %8 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3221
  call void @"(*internal/futex.Futex).Wake"(ptr %8, ptr undef), !dbg !3222
  br label %if.done, !dbg !3216

if.done:                                          ; preds = %gep.next5, %if.else
  ret void, !dbg !3223

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3211
  unreachable, !dbg !3211

gep.throw2:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3210
  unreachable, !dbg !3210

gep.throw4:                                       ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3221
  unreachable, !dbg !3221
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Semaphore).Wait"(ptr dereferenceable_or_null(4) %s, ptr %context) unnamed_addr #1 !dbg !3224 {
entry:
    #dbg_value(ptr %s, !3230, !DIExpression(), !3233)
    #dbg_value(i32 -1, !3231, !DIExpression(), !3234)
    #dbg_value(ptr %s, !3230, !DIExpression(), !3235)
  %0 = icmp eq ptr %s, null, !dbg !3236
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3236

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3236
  %2 = icmp eq ptr %1, null, !dbg !3235
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3235

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3235
    #dbg_value(i32 -1, !3231, !DIExpression(), !3237)
  %4 = call i32 @"(*sync/atomic.Uint32).Add"(ptr %3, i32 -1, ptr undef), !dbg !3238
    #dbg_value(i32 %4, !3232, !DIExpression(), !3239)
  br label %for.body, !dbg !3240

for.body:                                         ; preds = %gep.next8, %gep.next2
  %5 = phi i32 [ %4, %gep.next2 ], [ %14, %gep.next8 ], !dbg !3239
    #dbg_value(i32 %5, !3232, !DIExpression(), !3241)
  %6 = icmp sge i32 %5, 0, !dbg !3242
  br i1 %6, label %if.then, label %if.done, !dbg !3240

if.then:                                          ; preds = %for.body
  ret void, !dbg !3243

if.done:                                          ; preds = %for.body
    #dbg_value(ptr %s, !3230, !DIExpression(), !3244)
  %7 = icmp eq ptr %s, null, !dbg !3245
  br i1 %7, label %gep.throw3, label %gep.next4, !dbg !3245

gep.next4:                                        ; preds = %if.done
  %8 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3245
    #dbg_value(i32 %5, !3232, !DIExpression(), !3246)
  %9 = call i1 @"(*internal/futex.Futex).Wait"(ptr %8, i32 %5, ptr undef), !dbg !3247
    #dbg_value(ptr %s, !3230, !DIExpression(), !3248)
  %10 = icmp eq ptr %s, null, !dbg !3249
  br i1 %10, label %gep.throw5, label %gep.next6, !dbg !3249

gep.next6:                                        ; preds = %gep.next4
  %11 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3249
  %12 = icmp eq ptr %11, null, !dbg !3248
  br i1 %12, label %gep.throw7, label %gep.next8, !dbg !3248

gep.next8:                                        ; preds = %gep.next6
  %13 = getelementptr inbounds %"internal/futex.Futex", ptr %11, i32 0, i32 0, !dbg !3248
  %14 = call i32 @"(*sync/atomic.Uint32).Load"(ptr %13, ptr undef), !dbg !3250
    #dbg_value(i32 %14, !3232, !DIExpression(), !3251)
  br label %for.body, !dbg !3240

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3236
  unreachable, !dbg !3236

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3235
  unreachable, !dbg !3235

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3245
  unreachable, !dbg !3245

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3249
  unreachable, !dbg !3249

gep.throw7:                                       ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3248
  unreachable, !dbg !3248
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.Init"(i64 %sp, ptr %context) #1 !dbg !3252 {
entry:
    #dbg_value(i64 %sp, !3256, !DIExpression(), !3258)
    #dbg_value(i64 %sp, !3256, !DIExpression(), !3259)
  %0 = icmp eq ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 2), null, !dbg !3260
  br i1 %0, label %store.throw, label %store.next, !dbg !3260

store.next:                                       ; preds = %entry
  store i64 %sp, ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 2), align 8, !dbg !3260
    #dbg_value(i64 %sp, !3257, !DIExpression(), !3260)
  call void @tinygo_task_init(ptr @"internal/task.mainTask", ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 1), ptr @"internal/task.numCPU", ptr undef), !dbg !3261
  ret void, !dbg !3262

store.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3260
  unreachable, !dbg !3260
}

declare void @tinygo_task_init(ptr dereferenceable_or_null(88), ptr dereferenceable_or_null(8), ptr dereferenceable_or_null(4), ptr) #2

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"internal/task.Current"(ptr %context) #1 !dbg !3263 {
entry:
  %0 = call ptr @tinygo_task_current(), !dbg !3266
    #dbg_value(ptr %0, !3265, !DIExpression(), !3267)
    #dbg_value(ptr %0, !3265, !DIExpression(), !3268)
  %1 = icmp eq ptr %0, null, !dbg !3269
  br i1 %1, label %if.then, label %if.done, !dbg !3270

if.then:                                          ; preds = %entry
  call void @runtime.runtimePanic(ptr @"internal/task$string.7", i64 20, ptr undef), !dbg !3271
  br label %if.done, !dbg !3270

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(ptr %0, !3265, !DIExpression(), !3272)
  ret ptr %0, !dbg !3273
}

declare ptr @tinygo_task_current() #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.Pause"(ptr %context) #1 !dbg !3274 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3277
    #dbg_value(ptr %0, !3276, !DIExpression(), !3278)
  br i1 false, label %if.then, label %if.done, !dbg !3279

if.then:                                          ; preds = %entry
    #dbg_value(ptr %0, !3276, !DIExpression(), !3280)
  %1 = icmp eq ptr %0, null, !dbg !3281
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3281

gep.next:                                         ; preds = %if.then
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3281
  %3 = icmp eq ptr %2, null, !dbg !3282
  br i1 %3, label %gep.throw1, label %gep.next2, !dbg !3282

gep.next2:                                        ; preds = %gep.next
  %4 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 0, !dbg !3282
  %5 = icmp eq ptr %4, null, !dbg !3282
  br i1 %5, label %deref.throw, label %deref.next, !dbg !3282

deref.next:                                       ; preds = %gep.next2
  %6 = load i64, ptr %4, align 8, !dbg !3282
  call void @runtime.printlock(ptr undef), !dbg !3283
  call void @runtime.printstring(ptr @"internal/task$string.8", i64 12, ptr undef), !dbg !3283
  call void @runtime.printspace(ptr undef), !dbg !3283
  call void @runtime.printptr(i64 %6, ptr undef), !dbg !3283
  call void @runtime.printnl(ptr undef), !dbg !3283
  call void @runtime.printunlock(ptr undef), !dbg !3283
  br label %if.done, !dbg !3279

if.done:                                          ; preds = %deref.next, %entry
    #dbg_value(ptr %0, !3276, !DIExpression(), !3284)
  %7 = icmp eq ptr %0, null, !dbg !3285
  br i1 %7, label %gep.throw3, label %gep.next4, !dbg !3285

gep.next4:                                        ; preds = %if.done
  %8 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3285
  %9 = icmp eq ptr %8, null, !dbg !3286
  br i1 %9, label %gep.throw5, label %gep.next6, !dbg !3286

gep.next6:                                        ; preds = %gep.next4
  %10 = getelementptr inbounds %"internal/task.state", ptr %8, i32 0, i32 5, !dbg !3286
  call void @"(*internal/task.Semaphore).Wait"(ptr %10, ptr undef), !dbg !3287
  ret void, !dbg !3288

gep.throw:                                        ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3281
  unreachable, !dbg !3281

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3282
  unreachable, !dbg !3282

deref.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3282
  unreachable, !dbg !3282

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3285
  unreachable, !dbg !3285

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3286
  unreachable, !dbg !3286
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_exited(ptr nocapture dereferenceable_or_null(88) %t) #1 !dbg !3289 {
entry:
    #dbg_value(ptr %t, !3293, !DIExpression(), !3298)
  br i1 false, label %if.then, label %if.done, !dbg !3299

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !3293, !DIExpression(), !3300)
  %0 = icmp eq ptr %t, null, !dbg !3301
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3301

gep.next:                                         ; preds = %if.then
  %1 = getelementptr inbounds %"internal/task.Task", ptr %t, i32 0, i32 4, !dbg !3301
  %2 = icmp eq ptr %1, null, !dbg !3302
  br i1 %2, label %gep.throw5, label %gep.next6, !dbg !3302

gep.next6:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/task.state", ptr %1, i32 0, i32 0, !dbg !3302
  %4 = icmp eq ptr %3, null, !dbg !3302
  br i1 %4, label %deref.throw, label %deref.next, !dbg !3302

deref.next:                                       ; preds = %gep.next6
  %5 = load i64, ptr %3, align 8, !dbg !3302
  call void @runtime.printlock(ptr undef), !dbg !3303
  call void @runtime.printstring(ptr @"internal/task$string.12", i64 9, ptr undef), !dbg !3303
  call void @runtime.printspace(ptr undef), !dbg !3303
  call void @runtime.printptr(i64 %5, ptr undef), !dbg !3303
  call void @runtime.printnl(ptr undef), !dbg !3303
  call void @runtime.printunlock(ptr undef), !dbg !3303
  br label %if.done, !dbg !3299

if.done:                                          ; preds = %deref.next, %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3304
    #dbg_value(i1 false, !3294, !DIExpression(), !3305)
    #dbg_value(ptr @"internal/task.activeTasks", !3295, !DIExpression(), !3306)
  br label %for.loop, !dbg !3299

for.loop:                                         ; preds = %gep.next22, %if.done
  %6 = phi ptr [ @"internal/task.activeTasks", %if.done ], [ %25, %gep.next22 ], !dbg !3306
    #dbg_value(ptr %6, !3295, !DIExpression(), !3307)
  %7 = icmp eq ptr %6, null, !dbg !3308
  br i1 %7, label %deref.throw7, label %deref.next8, !dbg !3308

deref.next8:                                      ; preds = %for.loop
  %8 = load ptr, ptr %6, align 8, !dbg !3308
  %9 = icmp ne ptr %8, null, !dbg !3309
  br i1 %9, label %for.body, label %for.done, !dbg !3299

for.body:                                         ; preds = %deref.next8
    #dbg_value(ptr %6, !3295, !DIExpression(), !3310)
  %10 = icmp eq ptr %6, null, !dbg !3311
  br i1 %10, label %deref.throw9, label %deref.next10, !dbg !3311

deref.next10:                                     ; preds = %for.body
  %11 = load ptr, ptr %6, align 8, !dbg !3311
    #dbg_value(ptr %t, !3293, !DIExpression(), !3312)
  %12 = icmp eq ptr %11, %t, !dbg !3313
  br i1 %12, label %if.then1, label %if.done2, !dbg !3299

if.then1:                                         ; preds = %deref.next10
    #dbg_value(ptr %6, !3295, !DIExpression(), !3314)
    #dbg_value(ptr %t, !3293, !DIExpression(), !3315)
  %13 = icmp eq ptr %t, null, !dbg !3316
  br i1 %13, label %gep.throw11, label %gep.next12, !dbg !3316

gep.next12:                                       ; preds = %if.then1
  %14 = getelementptr inbounds %"internal/task.Task", ptr %t, i32 0, i32 4, !dbg !3316
  %15 = icmp eq ptr %14, null, !dbg !3317
  br i1 %15, label %gep.throw13, label %gep.next14, !dbg !3317

gep.next14:                                       ; preds = %gep.next12
  %16 = getelementptr inbounds %"internal/task.state", ptr %14, i32 0, i32 4, !dbg !3317
  %17 = icmp eq ptr %16, null, !dbg !3317
  br i1 %17, label %deref.throw15, label %deref.next16, !dbg !3317

deref.next16:                                     ; preds = %gep.next14
  %18 = load ptr, ptr %16, align 8, !dbg !3317
  %19 = icmp eq ptr %6, null, !dbg !3318
  br i1 %19, label %store.throw, label %store.next, !dbg !3318

store.next:                                       ; preds = %deref.next16
  store ptr %18, ptr %6, align 8, !dbg !3318
    #dbg_value(i1 true, !3294, !DIExpression(), !3319)
  br label %for.done, !dbg !3299

if.done2:                                         ; preds = %deref.next10
    #dbg_value(ptr %6, !3295, !DIExpression(), !3320)
  %20 = icmp eq ptr %6, null, !dbg !3321
  br i1 %20, label %deref.throw17, label %deref.next18, !dbg !3321

deref.next18:                                     ; preds = %if.done2
  %21 = load ptr, ptr %6, align 8, !dbg !3321
  %22 = icmp eq ptr %21, null, !dbg !3322
  br i1 %22, label %gep.throw19, label %gep.next20, !dbg !3322

gep.next20:                                       ; preds = %deref.next18
  %23 = getelementptr inbounds %"internal/task.Task", ptr %21, i32 0, i32 4, !dbg !3322
  %24 = icmp eq ptr %23, null, !dbg !3323
  br i1 %24, label %gep.throw21, label %gep.next22, !dbg !3323

gep.next22:                                       ; preds = %gep.next20
  %25 = getelementptr inbounds %"internal/task.state", ptr %23, i32 0, i32 4, !dbg !3323
    #dbg_value(ptr %25, !3295, !DIExpression(), !3324)
  br label %for.loop, !dbg !3299

for.done:                                         ; preds = %store.next, %deref.next8
  %26 = phi i1 [ false, %deref.next8 ], [ true, %store.next ], !dbg !3305
  %27 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3325
  %28 = sub i32 %27, 1, !dbg !3325
  store i32 %28, ptr @"internal/task.otherGoroutines", align 4, !dbg !3325
    #dbg_value(i32 %28, !3297, !DIExpression(), !3325)
  call void @"(*internal/task.Mutex).Unlock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3326
    #dbg_value(i1 %26, !3294, !DIExpression(), !3327)
  br i1 %26, label %if.done3, label %if.then4, !dbg !3299

if.done3:                                         ; preds = %if.then4, %for.done
  ret void, !dbg !3328

if.then4:                                         ; preds = %for.done
  call void @runtime.runtimePanic(ptr @"internal/task$string.13", i64 17, ptr undef), !dbg !3329
  br label %if.done3, !dbg !3299

gep.throw:                                        ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3301
  unreachable, !dbg !3301

gep.throw5:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3302
  unreachable, !dbg !3302

deref.throw:                                      ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3302
  unreachable, !dbg !3302

deref.throw7:                                     ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !3308
  unreachable, !dbg !3308

deref.throw9:                                     ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3311
  unreachable, !dbg !3311

gep.throw11:                                      ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3316
  unreachable, !dbg !3316

gep.throw13:                                      ; preds = %gep.next12
  call void @runtime.nilPanic(ptr undef), !dbg !3317
  unreachable, !dbg !3317

deref.throw15:                                    ; preds = %gep.next14
  call void @runtime.nilPanic(ptr undef), !dbg !3317
  unreachable, !dbg !3317

store.throw:                                      ; preds = %deref.next16
  call void @runtime.nilPanic(ptr undef), !dbg !3318
  unreachable, !dbg !3318

deref.throw17:                                    ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !3321
  unreachable, !dbg !3321

gep.throw19:                                      ; preds = %deref.next18
  call void @runtime.nilPanic(ptr undef), !dbg !3322
  unreachable, !dbg !3322

gep.throw21:                                      ; preds = %gep.next20
  call void @runtime.nilPanic(ptr undef), !dbg !3323
  unreachable, !dbg !3323
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.waitGroup).done"(ptr dereferenceable_or_null(4) %wg, ptr %context) unnamed_addr #1 !dbg !3330 {
entry:
    #dbg_value(ptr %wg, !3335, !DIExpression(), !3336)
    #dbg_value(ptr %wg, !3335, !DIExpression(), !3337)
  %0 = icmp eq ptr %wg, null, !dbg !3338
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3338

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3338
  %2 = icmp eq ptr %1, null, !dbg !3337
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3337

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3337
  %4 = call i32 @"(*sync/atomic.Uint32).Add"(ptr %3, i32 -1, ptr undef), !dbg !3339
  %5 = icmp eq i32 %4, 0, !dbg !3340
  br i1 %5, label %if.then, label %if.done, !dbg !3341

if.then:                                          ; preds = %gep.next2
    #dbg_value(ptr %wg, !3335, !DIExpression(), !3342)
  %6 = icmp eq ptr %wg, null, !dbg !3343
  br i1 %6, label %gep.throw3, label %gep.next4, !dbg !3343

gep.next4:                                        ; preds = %if.then
  %7 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3343
  call void @"(*internal/futex.Futex).WakeAll"(ptr %7, ptr undef), !dbg !3344
  br label %if.done, !dbg !3341

if.done:                                          ; preds = %gep.next4, %gep.next2
  ret void, !dbg !3345

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3338
  unreachable, !dbg !3338

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3337
  unreachable, !dbg !3337

gep.throw3:                                       ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3343
  unreachable, !dbg !3343
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.waitGroup).wait"(ptr dereferenceable_or_null(4) %wg, ptr %context) unnamed_addr #1 !dbg !3346 {
entry:
    #dbg_value(ptr %wg, !3348, !DIExpression(), !3350)
  br label %for.body, !dbg !3351

for.body:                                         ; preds = %gep.next4, %entry
    #dbg_value(ptr %wg, !3348, !DIExpression(), !3352)
  %0 = icmp eq ptr %wg, null, !dbg !3353
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3353

gep.next:                                         ; preds = %for.body
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3353
  %2 = icmp eq ptr %1, null, !dbg !3352
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3352

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3352
  %4 = call i32 @"(*sync/atomic.Uint32).Load"(ptr %3, ptr undef), !dbg !3354
    #dbg_value(i32 %4, !3349, !DIExpression(), !3355)
    #dbg_value(i32 %4, !3349, !DIExpression(), !3356)
  %5 = icmp eq i32 %4, 0, !dbg !3357
  br i1 %5, label %if.then, label %if.done, !dbg !3351

if.then:                                          ; preds = %gep.next2
  ret void, !dbg !3358

if.done:                                          ; preds = %gep.next2
    #dbg_value(ptr %wg, !3348, !DIExpression(), !3359)
  %6 = icmp eq ptr %wg, null, !dbg !3360
  br i1 %6, label %gep.throw3, label %gep.next4, !dbg !3360

gep.next4:                                        ; preds = %if.done
  %7 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3360
    #dbg_value(i32 %4, !3349, !DIExpression(), !3361)
  %8 = call i1 @"(*internal/futex.Futex).Wait"(ptr %7, i32 %4, ptr undef), !dbg !3362
  br label %for.body, !dbg !3351

gep.throw:                                        ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3353
  unreachable, !dbg !3353

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3352
  unreachable, !dbg !3352

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3360
  unreachable, !dbg !3360
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %n, ptr %context) unnamed_addr #1 !dbg !3363 {
entry:
    #dbg_value(i32 %n, !3367, !DIExpression(), !3369)
  %wg = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3370
  %0 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3371
  %1 = icmp eq ptr %0, null, !dbg !3372
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3372

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/futex.Futex", ptr %0, i32 0, i32 0, !dbg !3372
    #dbg_value(i32 %n, !3367, !DIExpression(), !3373)
  call void @"(*sync/atomic.Uint32).Store"(ptr %2, i32 %n, ptr undef), !dbg !3374
  %3 = load %"internal/task.Semaphore", ptr %wg, align 4, !dbg !3375
    #dbg_value(%"internal/task.Semaphore" %3, !3368, !DIExpression(), !3375)
  ret %"internal/task.Semaphore" %3, !dbg !3376

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3372
  unreachable, !dbg !3372
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.GCStopWorldAndScan"(ptr %context) #1 !dbg !3377 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3385
    #dbg_value(ptr %0, !3379, !DIExpression(), !3386)
  %1 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3387
  %2 = icmp eq i32 %1, 0, !dbg !3388
  br i1 %2, label %if.then, label %if.done2, !dbg !3389

if.then:                                          ; preds = %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3390
  call void @"(*internal/task.waitGroup).wait"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3391
  call void @"(*sync/atomic.Uint32).Store"(ptr @"internal/task.gcState", i32 1, ptr undef), !dbg !3392
  %3 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3393
    #dbg_value(i32 %3, !3380, !DIExpression(), !3393)
  %4 = call %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %3, ptr undef), !dbg !3394
  store %"internal/task.Semaphore" %4, ptr @"internal/task.scanWaitGroup", align 4, !dbg !3395
    #dbg_value(%"internal/task.Semaphore" %4, !3381, !DIExpression(), !3395)
  %5 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !3396
    #dbg_value(ptr %5, !3382, !DIExpression(), !3396)
    #dbg_value(ptr %5, !3383, !DIExpression(), !3397)
  br label %for.loop, !dbg !3389

for.loop:                                         ; preds = %deref.next15, %if.then
  %6 = phi ptr [ %5, %if.then ], [ %20, %deref.next15 ], !dbg !3397
    #dbg_value(ptr %6, !3383, !DIExpression(), !3398)
  %7 = icmp ne ptr %6, null, !dbg !3399
  br i1 %7, label %for.body, label %for.done, !dbg !3389

for.body:                                         ; preds = %for.loop
    #dbg_value(ptr %6, !3383, !DIExpression(), !3400)
    #dbg_value(ptr %0, !3379, !DIExpression(), !3401)
  %8 = icmp ne ptr %6, %0, !dbg !3402
  br i1 %8, label %if.then1, label %if.done, !dbg !3389

if.then1:                                         ; preds = %for.body
    #dbg_value(ptr %6, !3383, !DIExpression(), !3403)
  %9 = icmp eq ptr %6, null, !dbg !3404
  br i1 %9, label %gep.throw, label %gep.next, !dbg !3404

gep.next:                                         ; preds = %if.then1
  %10 = getelementptr inbounds %"internal/task.Task", ptr %6, i32 0, i32 4, !dbg !3404
  %11 = icmp eq ptr %10, null, !dbg !3405
  br i1 %11, label %gep.throw8, label %gep.next9, !dbg !3405

gep.next9:                                        ; preds = %gep.next
  %12 = getelementptr inbounds %"internal/task.state", ptr %10, i32 0, i32 1, !dbg !3405
  %13 = icmp eq ptr %12, null, !dbg !3405
  br i1 %13, label %deref.throw, label %deref.next, !dbg !3405

deref.next:                                       ; preds = %gep.next9
  %14 = load ptr, ptr %12, align 8, !dbg !3405
  call void @tinygo_task_send_gc_signal(ptr %14), !dbg !3406
  br label %if.done, !dbg !3389

if.done:                                          ; preds = %deref.next, %for.body
    #dbg_value(ptr %6, !3383, !DIExpression(), !3407)
  %15 = icmp eq ptr %6, null, !dbg !3408
  br i1 %15, label %gep.throw10, label %gep.next11, !dbg !3408

gep.next11:                                       ; preds = %if.done
  %16 = getelementptr inbounds %"internal/task.Task", ptr %6, i32 0, i32 4, !dbg !3408
  %17 = icmp eq ptr %16, null, !dbg !3409
  br i1 %17, label %gep.throw12, label %gep.next13, !dbg !3409

gep.next13:                                       ; preds = %gep.next11
  %18 = getelementptr inbounds %"internal/task.state", ptr %16, i32 0, i32 4, !dbg !3409
  %19 = icmp eq ptr %18, null, !dbg !3409
  br i1 %19, label %deref.throw14, label %deref.next15, !dbg !3409

deref.next15:                                     ; preds = %gep.next13
  %20 = load ptr, ptr %18, align 8, !dbg !3409
    #dbg_value(ptr %20, !3383, !DIExpression(), !3410)
  br label %for.loop, !dbg !3389

for.done:                                         ; preds = %for.loop
  call void @"(*internal/task.waitGroup).wait"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3411
  br label %if.done2, !dbg !3389

if.done2:                                         ; preds = %for.done, %entry
  %21 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !3412
    #dbg_value(ptr %21, !3382, !DIExpression(), !3412)
    #dbg_value(ptr %21, !3384, !DIExpression(), !3413)
  br label %for.loop3, !dbg !3389

for.loop3:                                        ; preds = %deref.next33, %if.done2
  %22 = phi ptr [ %21, %if.done2 ], [ %42, %deref.next33 ], !dbg !3413
    #dbg_value(ptr %22, !3384, !DIExpression(), !3414)
  %23 = icmp ne ptr %22, null, !dbg !3415
  br i1 %23, label %for.body4, label %for.done7, !dbg !3389

for.body4:                                        ; preds = %for.loop3
    #dbg_value(ptr %22, !3384, !DIExpression(), !3416)
    #dbg_value(ptr %0, !3379, !DIExpression(), !3417)
  %24 = icmp ne ptr %22, %0, !dbg !3418
  br i1 %24, label %if.then5, label %if.done6, !dbg !3389

if.then5:                                         ; preds = %for.body4
    #dbg_value(ptr %22, !3384, !DIExpression(), !3419)
  %25 = icmp eq ptr %22, null, !dbg !3420
  br i1 %25, label %gep.throw16, label %gep.next17, !dbg !3420

gep.next17:                                       ; preds = %if.then5
  %26 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3420
  %27 = icmp eq ptr %26, null, !dbg !3421
  br i1 %27, label %gep.throw18, label %gep.next19, !dbg !3421

gep.next19:                                       ; preds = %gep.next17
  %28 = getelementptr inbounds %"internal/task.state", ptr %26, i32 0, i32 3, !dbg !3421
  %29 = icmp eq ptr %28, null, !dbg !3421
  br i1 %29, label %deref.throw20, label %deref.next21, !dbg !3421

deref.next21:                                     ; preds = %gep.next19
  %30 = load i64, ptr %28, align 8, !dbg !3421
    #dbg_value(ptr %22, !3384, !DIExpression(), !3422)
  %31 = icmp eq ptr %22, null, !dbg !3423
  br i1 %31, label %gep.throw22, label %gep.next23, !dbg !3423

gep.next23:                                       ; preds = %deref.next21
  %32 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3423
  %33 = icmp eq ptr %32, null, !dbg !3424
  br i1 %33, label %gep.throw24, label %gep.next25, !dbg !3424

gep.next25:                                       ; preds = %gep.next23
  %34 = getelementptr inbounds %"internal/task.state", ptr %32, i32 0, i32 2, !dbg !3424
  %35 = icmp eq ptr %34, null, !dbg !3424
  br i1 %35, label %deref.throw26, label %deref.next27, !dbg !3424

deref.next27:                                     ; preds = %gep.next25
  %36 = load i64, ptr %34, align 8, !dbg !3424
  call void @runtime.markRoots(i64 %30, i64 %36, ptr undef), !dbg !3425
  br label %if.done6, !dbg !3389

if.done6:                                         ; preds = %deref.next27, %for.body4
    #dbg_value(ptr %22, !3384, !DIExpression(), !3426)
  %37 = icmp eq ptr %22, null, !dbg !3427
  br i1 %37, label %gep.throw28, label %gep.next29, !dbg !3427

gep.next29:                                       ; preds = %if.done6
  %38 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3427
  %39 = icmp eq ptr %38, null, !dbg !3428
  br i1 %39, label %gep.throw30, label %gep.next31, !dbg !3428

gep.next31:                                       ; preds = %gep.next29
  %40 = getelementptr inbounds %"internal/task.state", ptr %38, i32 0, i32 4, !dbg !3428
  %41 = icmp eq ptr %40, null, !dbg !3428
  br i1 %41, label %deref.throw32, label %deref.next33, !dbg !3428

deref.next33:                                     ; preds = %gep.next31
  %42 = load ptr, ptr %40, align 8, !dbg !3428
    #dbg_value(ptr %42, !3384, !DIExpression(), !3429)
  br label %for.loop3, !dbg !3389

for.done7:                                        ; preds = %for.loop3
  call void @tinygo_scanCurrentStack(), !dbg !3430
  call void @"internal/task.gcScanGlobals"(ptr undef), !dbg !3431
  ret void, !dbg !3432

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3404
  unreachable, !dbg !3404

gep.throw8:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3405
  unreachable, !dbg !3405

deref.throw:                                      ; preds = %gep.next9
  call void @runtime.nilPanic(ptr undef), !dbg !3405
  unreachable, !dbg !3405

gep.throw10:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3408
  unreachable, !dbg !3408

gep.throw12:                                      ; preds = %gep.next11
  call void @runtime.nilPanic(ptr undef), !dbg !3409
  unreachable, !dbg !3409

deref.throw14:                                    ; preds = %gep.next13
  call void @runtime.nilPanic(ptr undef), !dbg !3409
  unreachable, !dbg !3409

gep.throw16:                                      ; preds = %if.then5
  call void @runtime.nilPanic(ptr undef), !dbg !3420
  unreachable, !dbg !3420

gep.throw18:                                      ; preds = %gep.next17
  call void @runtime.nilPanic(ptr undef), !dbg !3421
  unreachable, !dbg !3421

deref.throw20:                                    ; preds = %gep.next19
  call void @runtime.nilPanic(ptr undef), !dbg !3421
  unreachable, !dbg !3421

gep.throw22:                                      ; preds = %deref.next21
  call void @runtime.nilPanic(ptr undef), !dbg !3423
  unreachable, !dbg !3423

gep.throw24:                                      ; preds = %gep.next23
  call void @runtime.nilPanic(ptr undef), !dbg !3424
  unreachable, !dbg !3424

deref.throw26:                                    ; preds = %gep.next25
  call void @runtime.nilPanic(ptr undef), !dbg !3424
  unreachable, !dbg !3424

gep.throw28:                                      ; preds = %if.done6
  call void @runtime.nilPanic(ptr undef), !dbg !3427
  unreachable, !dbg !3427

gep.throw30:                                      ; preds = %gep.next29
  call void @runtime.nilPanic(ptr undef), !dbg !3428
  unreachable, !dbg !3428

deref.throw32:                                    ; preds = %gep.next31
  call void @runtime.nilPanic(ptr undef), !dbg !3428
  unreachable, !dbg !3428
}

declare void @tinygo_task_send_gc_signal(ptr nocapture) #2

declare void @tinygo_scanCurrentStack() #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.GCResumeWorld"(ptr %context) #1 !dbg !3433 {
entry:
  %0 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3437
  %1 = icmp eq i32 %0, 0, !dbg !3438
  br i1 %1, label %if.then, label %if.done, !dbg !3439

if.then:                                          ; preds = %entry
  ret void, !dbg !3440

if.done:                                          ; preds = %entry
  %2 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3441
    #dbg_value(i32 %2, !3435, !DIExpression(), !3441)
  %3 = call %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %2, ptr undef), !dbg !3442
  store %"internal/task.Semaphore" %3, ptr @"internal/task.scanWaitGroup", align 4, !dbg !3443
    #dbg_value(%"internal/task.Semaphore" %3, !3436, !DIExpression(), !3443)
  call void @"(*sync/atomic.Uint32).Store"(ptr @"internal/task.gcState", i32 0, ptr undef), !dbg !3444
  call void @"(*internal/futex.Futex).WakeAll"(ptr @"internal/task.gcState", ptr undef), !dbg !3445
  call void @"(*internal/task.Mutex).Unlock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3446
  ret void, !dbg !3447
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_gc_pause(i32 %sig) #1 !dbg !3448 {
entry:
    #dbg_value(i32 %sig, !3452, !DIExpression(), !3454)
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3455
  %1 = icmp eq ptr %0, null, !dbg !3456
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3456

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3456
  %3 = call ptr @runtime.stacksave(ptr undef), !dbg !3457
  %4 = ptrtoint ptr %3 to i64, !dbg !3458
  %5 = icmp eq ptr %2, null, !dbg !3459
  br i1 %5, label %gep.throw1, label %gep.next2, !dbg !3459

gep.next2:                                        ; preds = %gep.next
  %6 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 3, !dbg !3459
  %7 = icmp eq ptr %6, null, !dbg !3459
  br i1 %7, label %store.throw, label %store.next, !dbg !3459

store.next:                                       ; preds = %gep.next2
  store i64 %4, ptr %6, align 8, !dbg !3459
    #dbg_value(i64 %4, !3453, !DIExpression(), !3459)
  call void @"(*internal/task.waitGroup).done"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3460
  br label %for.loop, !dbg !3461

for.loop:                                         ; preds = %for.body, %store.next
  %8 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3462
  %9 = icmp eq i32 %8, 1, !dbg !3463
  br i1 %9, label %for.body, label %for.done, !dbg !3461

for.body:                                         ; preds = %for.loop
  %10 = call i1 @"(*internal/futex.Futex).Wait"(ptr @"internal/task.gcState", i32 1, ptr undef), !dbg !3464
  br label %for.loop, !dbg !3461

for.done:                                         ; preds = %for.loop
  call void @"(*internal/task.waitGroup).done"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3465
  ret void, !dbg !3466

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3456
  unreachable, !dbg !3456

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3459
  unreachable, !dbg !3459

store.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3459
  unreachable, !dbg !3459
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"internal/task.StackTop"(ptr %context) #1 !dbg !3467 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3468
  %1 = icmp eq ptr %0, null, !dbg !3469
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3469

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3469
  %3 = icmp eq ptr %2, null, !dbg !3470
  br i1 %3, label %gep.throw1, label %gep.next2, !dbg !3470

gep.next2:                                        ; preds = %gep.next
  %4 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 2, !dbg !3470
  %5 = icmp eq ptr %4, null, !dbg !3470
  br i1 %5, label %deref.throw, label %deref.next, !dbg !3470

deref.next:                                       ; preds = %gep.next2
  %6 = load i64, ptr %4, align 8, !dbg !3470
  ret i64 %6, !dbg !3471

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3469
  unreachable, !dbg !3469

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3470
  unreachable, !dbg !3470

deref.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3470
  unreachable, !dbg !3470
}

; Function Attrs: noinline nounwind allockind("alloc,zeroed") allocsize(0) uwtable(sync)
define internal noalias nonnull ptr @runtime.alloc(i64 %size, ptr %layout, ptr %context) #4 !dbg !3472 {
entry:
    #dbg_value(i64 %size, !3476, !DIExpression(), !3479)
    #dbg_value(ptr %layout, !3477, !DIExpression(), !3479)
    #dbg_value(i64 %size, !3476, !DIExpression(), !3480)
  %0 = icmp eq i64 %size, 0, !dbg !3481
  br i1 %0, label %if.then, label %if.done, !dbg !3482

if.then:                                          ; preds = %entry
  ret ptr @runtime.zeroSizedAlloc, !dbg !3483

if.done:                                          ; preds = %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @runtime.gcLock, ptr undef), !dbg !3484
    #dbg_value(ptr null, !3478, !DIExpression(), !3485)
    #dbg_value(ptr %layout, !3477, !DIExpression(), !3486)
  %1 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !3487
  %2 = icmp eq ptr %layout, %1, !dbg !3488
  br i1 %2, label %if.then1, label %if.else, !dbg !3482

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %size, !3476, !DIExpression(), !3489)
  %3 = call ptr @GC_malloc_atomic(i64 %size), !dbg !3490
    #dbg_value(ptr %3, !3478, !DIExpression(), !3491)
    #dbg_value(ptr %3, !3478, !DIExpression(), !3492)
    #dbg_value(i64 %size, !3476, !DIExpression(), !3493)
  call void @runtime.memzero(ptr %3, i64 %size, ptr undef), !dbg !3494
  br label %if.done2, !dbg !3482

if.done2:                                         ; preds = %if.else, %if.then1
  %4 = phi ptr [ %3, %if.then1 ], [ %6, %if.else ], !dbg !3485
  call void @runtime.gcResumeWorld(ptr undef), !dbg !3495
  call void @"(*internal/task.Mutex).Unlock"(ptr @runtime.gcLock, ptr undef), !dbg !3496
    #dbg_value(ptr %4, !3478, !DIExpression(), !3497)
  %5 = icmp eq ptr %4, null, !dbg !3498
  br i1 %5, label %if.then3, label %if.done4, !dbg !3482

if.then3:                                         ; preds = %if.done2
  call void @runtime.runtimePanic(ptr @"runtime$string.7", i64 17, ptr undef), !dbg !3499
  br label %if.done4, !dbg !3482

if.done4:                                         ; preds = %if.then3, %if.done2
    #dbg_value(ptr %4, !3478, !DIExpression(), !3500)
  ret ptr %4, !dbg !3501

if.else:                                          ; preds = %if.done
    #dbg_value(i64 %size, !3476, !DIExpression(), !3502)
  %6 = call ptr @GC_malloc(i64 %size), !dbg !3503
    #dbg_value(ptr %6, !3478, !DIExpression(), !3504)
  br label %if.done2, !dbg !3482
}

declare ptr @GC_malloc_atomic(i64) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memzero(ptr %ptr, i64 %size, ptr %context) #1 !dbg !3505 {
entry:
    #dbg_value(ptr %ptr, !3509, !DIExpression(), !3511)
    #dbg_value(i64 %size, !3510, !DIExpression(), !3511)
  call void @llvm.memset.p0.i64(ptr %ptr, i8 0, i64 %size, i1 false), !dbg !3511
  ret void, !dbg !3511
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.gcResumeWorld(ptr %context) unnamed_addr #1 !dbg !3512 {
entry:
  call void @"internal/task.GCResumeWorld"(ptr undef), !dbg !3514
  ret void, !dbg !3515
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.runtimePanic(ptr readonly %msg.data, i64 %msg.len, ptr %context) #1 !dbg !3516 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %msg.data, 0, !dbg !3519
  %1 = insertvalue %runtime._string %0, i64 %msg.len, 1, !dbg !3519
    #dbg_value(ptr %msg.data, !3518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3519)
    #dbg_value(i64 %msg.len, !3518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3519)
  %2 = call ptr @llvm.returnaddress(i32 0), !dbg !3520
    #dbg_value(%runtime._string %1, !3518, !DIExpression(), !3521)
  %3 = extractvalue %runtime._string %1, 0, !dbg !3522
  %4 = extractvalue %runtime._string %1, 1, !dbg !3522
  call void @runtime.runtimePanicAt(ptr %2, ptr %3, i64 %4, ptr undef), !dbg !3522
  ret void, !dbg !3523
}

declare ptr @GC_malloc(i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.runtimePanicAt(ptr %addr, ptr readonly %msg.data, i64 %msg.len, ptr %context) unnamed_addr #1 !dbg !3524 {
entry:
    #dbg_value(ptr %addr, !3528, !DIExpression(), !3530)
  %0 = insertvalue %runtime._string zeroinitializer, ptr %msg.data, 0, !dbg !3530
  %1 = insertvalue %runtime._string %0, i64 %msg.len, 1, !dbg !3530
    #dbg_value(ptr %msg.data, !3529, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3530)
    #dbg_value(i64 %msg.len, !3529, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3530)
  br i1 false, label %if.then, label %if.done, !dbg !3531

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !3532
  br label %if.done, !dbg !3531

if.done:                                          ; preds = %if.then, %entry
  br i1 true, label %if.then1, label %if.else, !dbg !3531

if.then1:                                         ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.13", i64 24, ptr undef), !dbg !3533
    #dbg_value(ptr %addr, !3528, !DIExpression(), !3534)
  %2 = ptrtoint ptr %addr to i64, !dbg !3535
  %3 = sub i64 %2, 5, !dbg !3536
  call void @runtime.printptr(i64 %3, ptr undef), !dbg !3537
  call void @runtime.printstring(ptr @"runtime$string.14", i64 2, ptr undef), !dbg !3538
  br label %if.done2, !dbg !3531

if.done2:                                         ; preds = %if.else, %if.then1
    #dbg_value(%runtime._string %1, !3529, !DIExpression(), !3539)
  %4 = extractvalue %runtime._string %1, 0, !dbg !3540
  %5 = extractvalue %runtime._string %1, 1, !dbg !3540
  call void @runtime.printstring(ptr %4, i64 %5, ptr undef), !dbg !3540
  call void @runtime.printnl(ptr undef), !dbg !3541
  call void @abort(), !dbg !3542
  ret void, !dbg !3543

if.else:                                          ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.15", i64 22, ptr undef), !dbg !3544
  br label %if.done2, !dbg !3531
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printstring(ptr readonly %s.data, i64 %s.len, ptr %context) #1 !dbg !3545 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !3549
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !3549
    #dbg_value(ptr %s.data, !3547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3549)
    #dbg_value(i64 %s.len, !3547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3549)
    #dbg_value(i64 0, !3548, !DIExpression(), !3550)
  br label %for.loop, !dbg !3551

for.loop:                                         ; preds = %for.body, %entry
  %2 = phi i64 [ 0, %entry ], [ %7, %for.body ], !dbg !3550
    #dbg_value(i64 %2, !3548, !DIExpression(), !3552)
    #dbg_value(%runtime._string %1, !3547, !DIExpression(), !3553)
  %len = extractvalue %runtime._string %1, 1, !dbg !3554
  %3 = icmp slt i64 %2, %len, !dbg !3555
  br i1 %3, label %for.body, label %for.done, !dbg !3551

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !3548, !DIExpression(), !3556)
    #dbg_value(%runtime._string %1, !3547, !DIExpression(), !3557)
  %len1 = extractvalue %runtime._string %1, 1, !dbg !3558
  %4 = extractvalue %runtime._string %1, 0, !dbg !3558
  %5 = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !3558
  %6 = load i8, ptr %5, align 1, !dbg !3558
  call void @runtime.putchar(i8 %6, ptr undef), !dbg !3559
  %7 = add i64 %2, 1, !dbg !3560
    #dbg_value(i64 %7, !3548, !DIExpression(), !3560)
  br label %for.loop, !dbg !3551

for.done:                                         ; preds = %for.loop
  ret void, !dbg !3561
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printptr(i64 %ptr, ptr %context) #1 !dbg !3562 {
entry:
    #dbg_value(i64 %ptr, !3564, !DIExpression(), !3567)
    #dbg_value(i64 %ptr, !3564, !DIExpression(), !3568)
  %0 = icmp eq i64 %ptr, 0, !dbg !3569
  br i1 %0, label %if.then, label %if.done, !dbg !3570

if.then:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.45", i64 3, ptr undef), !dbg !3571
  ret void, !dbg !3572

if.done:                                          ; preds = %entry
  call void @runtime.putchar(i8 48, ptr undef), !dbg !3573
  call void @runtime.putchar(i8 120, ptr undef), !dbg !3574
    #dbg_value(i64 0, !3565, !DIExpression(), !3575)
  br label %for.loop, !dbg !3570

for.loop:                                         ; preds = %if.done2, %if.done
  %1 = phi i64 [ %ptr, %if.done ], [ %shift.result3, %if.done2 ], !dbg !3576
  %2 = phi i64 [ 0, %if.done ], [ %9, %if.done2 ], !dbg !3575
    #dbg_value(i64 %2, !3565, !DIExpression(), !3577)
  %3 = icmp slt i64 %2, 16, !dbg !3578
  br i1 %3, label %for.body, label %for.done, !dbg !3570

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !3564, !DIExpression(), !3579)
  %4 = lshr i64 %1, 60, !dbg !3580
  %shift.result = select i1 false, i64 0, i64 %4, !dbg !3580
  %5 = trunc i64 %shift.result to i8, !dbg !3581
    #dbg_value(i8 %5, !3566, !DIExpression(), !3582)
    #dbg_value(i8 %5, !3566, !DIExpression(), !3583)
  %6 = icmp ult i8 %5, 10, !dbg !3584
  br i1 %6, label %if.then1, label %if.else, !dbg !3570

if.then1:                                         ; preds = %for.body
    #dbg_value(i8 %5, !3566, !DIExpression(), !3585)
  %7 = add i8 %5, 48, !dbg !3586
  call void @runtime.putchar(i8 %7, ptr undef), !dbg !3587
  br label %if.done2, !dbg !3570

if.done2:                                         ; preds = %if.else, %if.then1
  %8 = shl i64 %1, 4, !dbg !3588
  %shift.result3 = select i1 false, i64 0, i64 %8, !dbg !3588
    #dbg_value(i64 %shift.result3, !3564, !DIExpression(), !3588)
  %9 = add i64 %2, 1, !dbg !3589
    #dbg_value(i64 %9, !3565, !DIExpression(), !3589)
  br label %for.loop, !dbg !3570

if.else:                                          ; preds = %for.body
    #dbg_value(i8 %5, !3566, !DIExpression(), !3590)
  %10 = sub i8 %5, 10, !dbg !3591
  %11 = add i8 %10, 97, !dbg !3592
  call void @runtime.putchar(i8 %11, ptr undef), !dbg !3593
  br label %if.done2, !dbg !3570

for.done:                                         ; preds = %for.loop
  ret void, !dbg !3594
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printnl(ptr %context) #1 !dbg !3595 {
entry:
  br i1 false, label %if.then, label %if.done, !dbg !3596

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 13, ptr undef), !dbg !3597
  br label %if.done, !dbg !3596

if.done:                                          ; preds = %if.then, %entry
  call void @runtime.putchar(i8 10, ptr undef), !dbg !3598
  ret void, !dbg !3599
}

; Function Attrs: noreturn
declare void @abort() #7

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.putchar(i8 %c, ptr %context) unnamed_addr #1 !dbg !3600 {
entry:
    #dbg_value(i8 %c, !3604, !DIExpression(), !3605)
  %buf = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3606
  %0 = getelementptr inbounds [1 x i8], ptr %buf, i32 0, i64 0, !dbg !3606
    #dbg_value(i8 %c, !3604, !DIExpression(), !3607)
  store i8 %c, ptr %0, align 1, !dbg !3607
    #dbg_value(i8 %c, !3604, !DIExpression(), !3607)
  %1 = getelementptr inbounds [1 x i8], ptr %buf, i32 0, i64 0, !dbg !3608
  %2 = call i64 @write(i32 1, ptr %1, i64 1), !dbg !3609
  ret void, !dbg !3610
}

declare i64 @write(i32, ptr nocapture, i64) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.initRand(ptr %context) unnamed_addr #1 !dbg !3611 {
entry:
  %0 = call { i64, i1 } @runtime.hardwareRand(ptr undef), !dbg !3616
  %1 = extractvalue { i64, i1 } %0, 0, !dbg !3616
    #dbg_value(i64 %1, !3613, !DIExpression(), !3617)
  %2 = extractvalue { i64, i1 } %0, 1, !dbg !3616
    #dbg_value(i64 %1, !3613, !DIExpression(), !3618)
  %3 = or i64 %1, 1, !dbg !3619
  store i64 %3, ptr @runtime.xorshift64State, align 8, !dbg !3620
    #dbg_value(i64 %3, !3614, !DIExpression(), !3620)
  %4 = load i64, ptr @runtime.xorshift64State, align 8, !dbg !3621
    #dbg_value(i64 %4, !3614, !DIExpression(), !3621)
  %5 = trunc i64 %4 to i32, !dbg !3622
  store i32 %5, ptr @runtime.xorshift32State, align 4, !dbg !3623
    #dbg_value(i32 %5, !3615, !DIExpression(), !3623)
  ret void, !dbg !3624
}

; Function Attrs: nounwind uwtable(sync)
define internal { i64, i1 } @runtime.hardwareRand(ptr %context) unnamed_addr #1 !dbg !3625 {
entry:
  %n = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3630
  %0 = call i32 @getrandom(ptr %n, i64 8, i32 0), !dbg !3631
    #dbg_value(i32 %0, !3628, !DIExpression(), !3632)
    #dbg_value(i32 %0, !3628, !DIExpression(), !3633)
  %1 = icmp ne i32 %0, 8, !dbg !3634
  br i1 %1, label %if.then, label %if.done, !dbg !3635

if.then:                                          ; preds = %entry
  store i64 0, ptr %n, align 8, !dbg !3636
  %2 = load i64, ptr %n, align 8, !dbg !3635
  %3 = insertvalue { i64, i1 } zeroinitializer, i64 %2, 0, !dbg !3636
  %4 = insertvalue { i64, i1 } %3, i1 false, 1, !dbg !3636
  ret { i64, i1 } %4, !dbg !3636

if.done:                                          ; preds = %entry
  %5 = load i64, ptr %n, align 8, !dbg !3637
    #dbg_value(i64 %5, !3629, !DIExpression(), !3637)
  store i64 %5, ptr %n, align 8, !dbg !3638
  %6 = load i64, ptr %n, align 8, !dbg !3635
  %7 = insertvalue { i64, i1 } zeroinitializer, i64 %6, 0, !dbg !3638
  %8 = insertvalue { i64, i1 } %7, i1 true, 1, !dbg !3638
  ret { i64, i1 } %8, !dbg !3638
}

declare i32 @getrandom(ptr nocapture, i64, i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal i64 @runtime.getCurrentStackPointer(ptr %context) unnamed_addr #1 !dbg !3639 {
entry:
  %0 = call ptr @runtime.stacksave(ptr undef), !dbg !3641
  %1 = ptrtoint ptr %0 to i64, !dbg !3642
  ret i64 %1, !dbg !3643
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @runtime.stacksave(ptr %context) #1 !dbg !3644 {
entry:
  %0 = call ptr @llvm.stacksave.p0(), !dbg !3645
  ret ptr %0, !dbg !3645
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #9

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memcpy(ptr %dst, ptr %src, i64 %size, ptr %context) #1 !dbg !3646 {
entry:
    #dbg_value(ptr %dst, !3650, !DIExpression(), !3653)
    #dbg_value(ptr %src, !3651, !DIExpression(), !3653)
    #dbg_value(i64 %size, !3652, !DIExpression(), !3653)
  call void @llvm.memcpy.p0.p0.i64(ptr %dst, ptr %src, i64 %size, i1 false), !dbg !3653
  ret void, !dbg !3653
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.nilPanic(ptr %context) #1 !dbg !3654 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !3655
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.17", i64 23, ptr undef), !dbg !3656
  ret void, !dbg !3657
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.deadlock(ptr %context) unnamed_addr #1 !dbg !3658 {
entry:
  call void @"internal/task.Pause"(ptr undef), !dbg !3659
  ret void, !dbg !3660
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.lookupPanic(ptr %context) #1 !dbg !3661 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !3662
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.19", i64 18, ptr undef), !dbg !3663
  ret void, !dbg !3664
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.panicOrGoexit(ptr %message.typecode, ptr %message.value, i8 %panicking, ptr %context) unnamed_addr #1 !dbg !3665 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %message.typecode, 0, !dbg !3685
  %1 = insertvalue { ptr, ptr } %0, ptr %message.value, 1, !dbg !3685
    #dbg_value(ptr %message.typecode, !3670, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3685)
    #dbg_value(ptr %message.value, !3670, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3685)
    #dbg_value(i8 %panicking, !3671, !DIExpression(), !3685)
  br i1 false, label %if.then, label %if.done, !dbg !3686

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !3687
  br label %if.done, !dbg !3686

if.done:                                          ; preds = %if.then, %entry
  br i1 true, label %cond.true, label %if.done3, !dbg !3686

cond.true:                                        ; preds = %if.done
  %2 = call i1 @"runtime/interrupt.In"(ptr undef), !dbg !3688
  br i1 %2, label %if.done3, label %if.then1, !dbg !3686

if.then1:                                         ; preds = %cond.true
  %3 = call ptr @"internal/task.Current"(ptr undef), !dbg !3689
  %4 = icmp eq ptr %3, null, !dbg !3690
  br i1 %4, label %gep.throw, label %gep.next, !dbg !3690

gep.next:                                         ; preds = %if.then1
  %5 = getelementptr inbounds %"internal/task.Task", ptr %3, i32 0, i32 8, !dbg !3690
  %6 = icmp eq ptr %5, null, !dbg !3690
  br i1 %6, label %deref.throw, label %deref.next, !dbg !3690

deref.next:                                       ; preds = %gep.next
  %7 = load ptr, ptr %5, align 8, !dbg !3690
    #dbg_value(ptr %7, !3672, !DIExpression(), !3691)
    #dbg_value(ptr %7, !3672, !DIExpression(), !3692)
  %8 = icmp ne ptr %7, null, !dbg !3693
  br i1 %8, label %if.then2, label %if.done3, !dbg !3686

if.then2:                                         ; preds = %deref.next
    #dbg_value(ptr %7, !3672, !DIExpression(), !3694)
    #dbg_value({ ptr, ptr } %1, !3670, !DIExpression(), !3695)
  %9 = getelementptr inbounds %runtime.deferFrame, ptr %7, i32 0, i32 5, !dbg !3696
  %10 = icmp eq ptr %9, null, !dbg !3696
  br i1 %10, label %store.throw, label %store.next, !dbg !3696

store.next:                                       ; preds = %if.then2
  store { ptr, ptr } %1, ptr %9, align 8, !dbg !3696
    #dbg_value({ ptr, ptr } %1, !3683, !DIExpression(), !3696)
    #dbg_value(ptr %7, !3672, !DIExpression(), !3697)
    #dbg_value(i8 %panicking, !3671, !DIExpression(), !3698)
  %11 = getelementptr inbounds %runtime.deferFrame, ptr %7, i32 0, i32 4, !dbg !3699
  %12 = icmp eq ptr %11, null, !dbg !3699
  br i1 %12, label %store.throw6, label %store.next7, !dbg !3699

store.next7:                                      ; preds = %store.next
  store i8 %panicking, ptr %11, align 1, !dbg !3699
    #dbg_value(i8 %panicking, !3684, !DIExpression(), !3699)
    #dbg_value(ptr %7, !3672, !DIExpression(), !3700)
  call void @tinygo_longjmp(ptr %7), !dbg !3701
  br label %if.done3, !dbg !3686

if.done3:                                         ; preds = %store.next7, %deref.next, %cond.true, %if.done
    #dbg_value(i8 %panicking, !3671, !DIExpression(), !3702)
  %13 = icmp eq i8 %panicking, 2, !dbg !3703
  br i1 %13, label %if.then4, label %if.done5, !dbg !3686

if.then4:                                         ; preds = %if.done3
  call void @runtime.deadlock(ptr undef), !dbg !3704
  br label %if.done5, !dbg !3686

if.done5:                                         ; preds = %if.then4, %if.done3
  call void @runtime.printstring(ptr @"runtime$string.12", i64 7, ptr undef), !dbg !3705
    #dbg_value({ ptr, ptr } %1, !3670, !DIExpression(), !3706)
  %14 = extractvalue { ptr, ptr } %1, 0, !dbg !3707
  %15 = extractvalue { ptr, ptr } %1, 1, !dbg !3707
  call void @runtime.printitf(ptr %14, ptr %15, ptr undef), !dbg !3707
  call void @runtime.printnl(ptr undef), !dbg !3708
  call void @abort(), !dbg !3709
  ret void, !dbg !3710

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3690
  unreachable, !dbg !3690

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3690
  unreachable, !dbg !3690

store.throw:                                      ; preds = %if.then2
  call void @runtime.nilPanic(ptr undef), !dbg !3696
  unreachable, !dbg !3696

store.throw6:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !3699
  unreachable, !dbg !3699
}

declare void @tinygo_longjmp(ptr nocapture dereferenceable_or_null(48)) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printitf(ptr %msg.typecode, ptr %msg.value, ptr %context) unnamed_addr #1 !dbg !3711 {
entry:
  %itf = alloca { ptr, ptr }, align 8, !dbg !3741
  %unpack.raw.alloc136 = alloca ptr, align 8, !dbg !3741
  %unpack.raw.alloc129 = alloca ptr, align 8, !dbg !3741
  %unpack.raw.alloc = alloca ptr, align 8, !dbg !3741
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %msg.typecode, 0, !dbg !3741
  %1 = insertvalue { ptr, ptr } %0, ptr %msg.value, 1, !dbg !3741
    #dbg_value(ptr %msg.typecode, !3715, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3741)
    #dbg_value(ptr %msg.value, !3715, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3741)
    #dbg_value({ ptr, ptr } %1, !3715, !DIExpression(), !3742)
  %interface.type = extractvalue { ptr, ptr } %1, 0, !dbg !3743
  br i1 false, label %typeassert.ok, label %typeassert.next, !dbg !3743

typeassert.next:                                  ; preds = %typeassert.ok, %entry
  %typeassert.value = phi i1 [ false, %entry ], [ %unpack.int, %typeassert.ok ], !dbg !3743
  %2 = insertvalue { i1, i1 } undef, i1 %typeassert.value, 0, !dbg !3743
  %3 = insertvalue { i1, i1 } %2, i1 false, 1, !dbg !3743
  %4 = extractvalue { i1, i1 } %3, 0, !dbg !3743
  %5 = extractvalue { i1, i1 } %3, 1, !dbg !3743
  br i1 %5, label %typeswitch.body, label %typeswitch.next, !dbg !3744

typeassert.ok:                                    ; preds = %entry
  %typeassert.value.ptr = extractvalue { ptr, ptr } %1, 1, !dbg !3743
  %unpack.int = ptrtoint ptr %typeassert.value.ptr to i1, !dbg !3743
  br label %typeassert.next, !dbg !3743

typeswitch.body:                                  ; preds = %typeassert.next
    #dbg_value(i1 %4, !3716, !DIExpression(), !3745)
  call void @runtime.printbool(i1 %4, ptr undef), !dbg !3746
  br label %typeswitch.done, !dbg !3744

typeswitch.done:                                  ; preds = %deref.next161, %typeswitch.body39, %typeswitch.body37, %typeswitch.body35, %typeswitch.body33, %typeswitch.body31, %typeswitch.body29, %typeswitch.body27, %typeswitch.body25, %typeswitch.body23, %typeswitch.body21, %typeswitch.body19, %typeswitch.body17, %switch.body15, %switch.next14, %switch.body13, %typeswitch.body10, %typeswitch.body8, %typeswitch.body6, %typeswitch.body4, %switch.body2, %switch.next, %switch.body, %typeswitch.body
  ret void, !dbg !3747

typeswitch.next:                                  ; preds = %typeassert.next
  %interface.type41 = extractvalue { ptr, ptr } %1, 0, !dbg !3748
  br i1 false, label %typeassert.ok43, label %typeassert.next44, !dbg !3748

typeassert.next44:                                ; preds = %typeassert.ok43, %typeswitch.next
  %typeassert.value47 = phi i64 [ 0, %typeswitch.next ], [ %unpack.int46, %typeassert.ok43 ], !dbg !3748
  %6 = insertvalue { i64, i1 } undef, i64 %typeassert.value47, 0, !dbg !3748
  %7 = insertvalue { i64, i1 } %6, i1 false, 1, !dbg !3748
  %8 = extractvalue { i64, i1 } %7, 0, !dbg !3748
  %9 = extractvalue { i64, i1 } %7, 1, !dbg !3748
  br i1 %9, label %typeswitch.body1, label %typeswitch.next3, !dbg !3744

typeassert.ok43:                                  ; preds = %typeswitch.next
  %typeassert.value.ptr45 = extractvalue { ptr, ptr } %1, 1, !dbg !3748
  %unpack.int46 = ptrtoint ptr %typeassert.value.ptr45 to i64, !dbg !3748
  br label %typeassert.next44, !dbg !3748

typeswitch.body1:                                 ; preds = %typeassert.next44
  br i1 true, label %switch.body, label %switch.next, !dbg !3744

switch.body:                                      ; preds = %typeswitch.body1
    #dbg_value(i64 %8, !3717, !DIExpression(), !3749)
  call void @runtime.printint64(i64 %8, ptr undef), !dbg !3750
  br label %typeswitch.done, !dbg !3744

switch.next:                                      ; preds = %typeswitch.body1
  br i1 false, label %switch.body2, label %typeswitch.done, !dbg !3744

switch.body2:                                     ; preds = %switch.next
    #dbg_value(i64 %8, !3717, !DIExpression(), !3751)
  %10 = trunc i64 %8 to i32, !dbg !3752
  call void @runtime.printint32(i32 %10, ptr undef), !dbg !3753
  br label %typeswitch.done, !dbg !3744

typeswitch.next3:                                 ; preds = %typeassert.next44
  %interface.type48 = extractvalue { ptr, ptr } %1, 0, !dbg !3754
  br i1 false, label %typeassert.ok50, label %typeassert.next51, !dbg !3754

typeassert.next51:                                ; preds = %typeassert.ok50, %typeswitch.next3
  %typeassert.value54 = phi i8 [ 0, %typeswitch.next3 ], [ %unpack.int53, %typeassert.ok50 ], !dbg !3754
  %11 = insertvalue { i8, i1 } undef, i8 %typeassert.value54, 0, !dbg !3754
  %12 = insertvalue { i8, i1 } %11, i1 false, 1, !dbg !3754
  %13 = extractvalue { i8, i1 } %12, 0, !dbg !3754
  %14 = extractvalue { i8, i1 } %12, 1, !dbg !3754
  br i1 %14, label %typeswitch.body4, label %typeswitch.next5, !dbg !3744

typeassert.ok50:                                  ; preds = %typeswitch.next3
  %typeassert.value.ptr52 = extractvalue { ptr, ptr } %1, 1, !dbg !3754
  %unpack.int53 = ptrtoint ptr %typeassert.value.ptr52 to i8, !dbg !3754
  br label %typeassert.next51, !dbg !3754

typeswitch.body4:                                 ; preds = %typeassert.next51
    #dbg_value(i8 %13, !3718, !DIExpression(), !3755)
  call void @runtime.printint8(i8 %13, ptr undef), !dbg !3756
  br label %typeswitch.done, !dbg !3744

typeswitch.next5:                                 ; preds = %typeassert.next51
  %interface.type55 = extractvalue { ptr, ptr } %1, 0, !dbg !3757
  br i1 false, label %typeassert.ok57, label %typeassert.next58, !dbg !3757

typeassert.next58:                                ; preds = %typeassert.ok57, %typeswitch.next5
  %typeassert.value61 = phi i16 [ 0, %typeswitch.next5 ], [ %unpack.int60, %typeassert.ok57 ], !dbg !3757
  %15 = insertvalue { i16, i1 } undef, i16 %typeassert.value61, 0, !dbg !3757
  %16 = insertvalue { i16, i1 } %15, i1 false, 1, !dbg !3757
  %17 = extractvalue { i16, i1 } %16, 0, !dbg !3757
  %18 = extractvalue { i16, i1 } %16, 1, !dbg !3757
  br i1 %18, label %typeswitch.body6, label %typeswitch.next7, !dbg !3744

typeassert.ok57:                                  ; preds = %typeswitch.next5
  %typeassert.value.ptr59 = extractvalue { ptr, ptr } %1, 1, !dbg !3757
  %unpack.int60 = ptrtoint ptr %typeassert.value.ptr59 to i16, !dbg !3757
  br label %typeassert.next58, !dbg !3757

typeswitch.body6:                                 ; preds = %typeassert.next58
    #dbg_value(i16 %17, !3719, !DIExpression(), !3758)
  call void @runtime.printint16(i16 %17, ptr undef), !dbg !3759
  br label %typeswitch.done, !dbg !3744

typeswitch.next7:                                 ; preds = %typeassert.next58
  %interface.type62 = extractvalue { ptr, ptr } %1, 0, !dbg !3760
  br i1 false, label %typeassert.ok64, label %typeassert.next65, !dbg !3760

typeassert.next65:                                ; preds = %typeassert.ok64, %typeswitch.next7
  %typeassert.value68 = phi i32 [ 0, %typeswitch.next7 ], [ %unpack.int67, %typeassert.ok64 ], !dbg !3760
  %19 = insertvalue { i32, i1 } undef, i32 %typeassert.value68, 0, !dbg !3760
  %20 = insertvalue { i32, i1 } %19, i1 false, 1, !dbg !3760
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !3760
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !3760
  br i1 %22, label %typeswitch.body8, label %typeswitch.next9, !dbg !3744

typeassert.ok64:                                  ; preds = %typeswitch.next7
  %typeassert.value.ptr66 = extractvalue { ptr, ptr } %1, 1, !dbg !3760
  %unpack.int67 = ptrtoint ptr %typeassert.value.ptr66 to i32, !dbg !3760
  br label %typeassert.next65, !dbg !3760

typeswitch.body8:                                 ; preds = %typeassert.next65
    #dbg_value(i32 %21, !3721, !DIExpression(), !3761)
  call void @runtime.printint32(i32 %21, ptr undef), !dbg !3762
  br label %typeswitch.done, !dbg !3744

typeswitch.next9:                                 ; preds = %typeassert.next65
  %interface.type69 = extractvalue { ptr, ptr } %1, 0, !dbg !3763
  br i1 false, label %typeassert.ok71, label %typeassert.next72, !dbg !3763

typeassert.next72:                                ; preds = %typeassert.ok71, %typeswitch.next9
  %typeassert.value75 = phi i64 [ 0, %typeswitch.next9 ], [ %unpack.int74, %typeassert.ok71 ], !dbg !3763
  %23 = insertvalue { i64, i1 } undef, i64 %typeassert.value75, 0, !dbg !3763
  %24 = insertvalue { i64, i1 } %23, i1 false, 1, !dbg !3763
  %25 = extractvalue { i64, i1 } %24, 0, !dbg !3763
  %26 = extractvalue { i64, i1 } %24, 1, !dbg !3763
  br i1 %26, label %typeswitch.body10, label %typeswitch.next11, !dbg !3744

typeassert.ok71:                                  ; preds = %typeswitch.next9
  %typeassert.value.ptr73 = extractvalue { ptr, ptr } %1, 1, !dbg !3763
  %unpack.int74 = ptrtoint ptr %typeassert.value.ptr73 to i64, !dbg !3763
  br label %typeassert.next72, !dbg !3763

typeswitch.body10:                                ; preds = %typeassert.next72
    #dbg_value(i64 %25, !3722, !DIExpression(), !3764)
  call void @runtime.printint64(i64 %25, ptr undef), !dbg !3765
  br label %typeswitch.done, !dbg !3744

typeswitch.next11:                                ; preds = %typeassert.next72
  %interface.type76 = extractvalue { ptr, ptr } %1, 0, !dbg !3766
  br i1 false, label %typeassert.ok78, label %typeassert.next79, !dbg !3766

typeassert.next79:                                ; preds = %typeassert.ok78, %typeswitch.next11
  %typeassert.value82 = phi i64 [ 0, %typeswitch.next11 ], [ %unpack.int81, %typeassert.ok78 ], !dbg !3766
  %27 = insertvalue { i64, i1 } undef, i64 %typeassert.value82, 0, !dbg !3766
  %28 = insertvalue { i64, i1 } %27, i1 false, 1, !dbg !3766
  %29 = extractvalue { i64, i1 } %28, 0, !dbg !3766
  %30 = extractvalue { i64, i1 } %28, 1, !dbg !3766
  br i1 %30, label %typeswitch.body12, label %typeswitch.next16, !dbg !3744

typeassert.ok78:                                  ; preds = %typeswitch.next11
  %typeassert.value.ptr80 = extractvalue { ptr, ptr } %1, 1, !dbg !3766
  %unpack.int81 = ptrtoint ptr %typeassert.value.ptr80 to i64, !dbg !3766
  br label %typeassert.next79, !dbg !3766

typeswitch.body12:                                ; preds = %typeassert.next79
  br i1 true, label %switch.body13, label %switch.next14, !dbg !3744

switch.body13:                                    ; preds = %typeswitch.body12
    #dbg_value(i64 %29, !3723, !DIExpression(), !3767)
  call void @runtime.printuint64(i64 %29, ptr undef), !dbg !3768
  br label %typeswitch.done, !dbg !3744

switch.next14:                                    ; preds = %typeswitch.body12
  br i1 false, label %switch.body15, label %typeswitch.done, !dbg !3744

switch.body15:                                    ; preds = %switch.next14
    #dbg_value(i64 %29, !3723, !DIExpression(), !3769)
  %31 = trunc i64 %29 to i32, !dbg !3770
  call void @runtime.printuint32(i32 %31, ptr undef), !dbg !3771
  br label %typeswitch.done, !dbg !3744

typeswitch.next16:                                ; preds = %typeassert.next79
  %interface.type83 = extractvalue { ptr, ptr } %1, 0, !dbg !3772
  %typeassert.ok2 = icmp eq ptr @"reflect/types.type:basic:uint8", %interface.type83, !dbg !3772
  br i1 %typeassert.ok2, label %typeassert.ok85, label %typeassert.next86, !dbg !3772

typeassert.next86:                                ; preds = %typeassert.ok85, %typeswitch.next16
  %typeassert.value89 = phi i8 [ 0, %typeswitch.next16 ], [ %unpack.int88, %typeassert.ok85 ], !dbg !3772
  %32 = insertvalue { i8, i1 } undef, i8 %typeassert.value89, 0, !dbg !3772
  %33 = insertvalue { i8, i1 } %32, i1 %typeassert.ok2, 1, !dbg !3772
  %34 = extractvalue { i8, i1 } %33, 0, !dbg !3772
  %35 = extractvalue { i8, i1 } %33, 1, !dbg !3772
  br i1 %35, label %typeswitch.body17, label %typeswitch.next18, !dbg !3744

typeassert.ok85:                                  ; preds = %typeswitch.next16
  %typeassert.value.ptr87 = extractvalue { ptr, ptr } %1, 1, !dbg !3772
  %unpack.int88 = ptrtoint ptr %typeassert.value.ptr87 to i8, !dbg !3772
  br label %typeassert.next86, !dbg !3772

typeswitch.body17:                                ; preds = %typeassert.next86
    #dbg_value(i8 %34, !3724, !DIExpression(), !3773)
  call void @runtime.printuint8(i8 %34, ptr undef), !dbg !3774
  br label %typeswitch.done, !dbg !3744

typeswitch.next18:                                ; preds = %typeassert.next86
  %interface.type90 = extractvalue { ptr, ptr } %1, 0, !dbg !3775
  br i1 false, label %typeassert.ok92, label %typeassert.next93, !dbg !3775

typeassert.next93:                                ; preds = %typeassert.ok92, %typeswitch.next18
  %typeassert.value96 = phi i16 [ 0, %typeswitch.next18 ], [ %unpack.int95, %typeassert.ok92 ], !dbg !3775
  %36 = insertvalue { i16, i1 } undef, i16 %typeassert.value96, 0, !dbg !3775
  %37 = insertvalue { i16, i1 } %36, i1 false, 1, !dbg !3775
  %38 = extractvalue { i16, i1 } %37, 0, !dbg !3775
  %39 = extractvalue { i16, i1 } %37, 1, !dbg !3775
  br i1 %39, label %typeswitch.body19, label %typeswitch.next20, !dbg !3744

typeassert.ok92:                                  ; preds = %typeswitch.next18
  %typeassert.value.ptr94 = extractvalue { ptr, ptr } %1, 1, !dbg !3775
  %unpack.int95 = ptrtoint ptr %typeassert.value.ptr94 to i16, !dbg !3775
  br label %typeassert.next93, !dbg !3775

typeswitch.body19:                                ; preds = %typeassert.next93
    #dbg_value(i16 %38, !3725, !DIExpression(), !3776)
  call void @runtime.printuint16(i16 %38, ptr undef), !dbg !3777
  br label %typeswitch.done, !dbg !3744

typeswitch.next20:                                ; preds = %typeassert.next93
  %interface.type97 = extractvalue { ptr, ptr } %1, 0, !dbg !3778
  br i1 false, label %typeassert.ok99, label %typeassert.next100, !dbg !3778

typeassert.next100:                               ; preds = %typeassert.ok99, %typeswitch.next20
  %typeassert.value103 = phi i32 [ 0, %typeswitch.next20 ], [ %unpack.int102, %typeassert.ok99 ], !dbg !3778
  %40 = insertvalue { i32, i1 } undef, i32 %typeassert.value103, 0, !dbg !3778
  %41 = insertvalue { i32, i1 } %40, i1 false, 1, !dbg !3778
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !3778
  %43 = extractvalue { i32, i1 } %41, 1, !dbg !3778
  br i1 %43, label %typeswitch.body21, label %typeswitch.next22, !dbg !3744

typeassert.ok99:                                  ; preds = %typeswitch.next20
  %typeassert.value.ptr101 = extractvalue { ptr, ptr } %1, 1, !dbg !3778
  %unpack.int102 = ptrtoint ptr %typeassert.value.ptr101 to i32, !dbg !3778
  br label %typeassert.next100, !dbg !3778

typeswitch.body21:                                ; preds = %typeassert.next100
    #dbg_value(i32 %42, !3726, !DIExpression(), !3779)
  call void @runtime.printuint32(i32 %42, ptr undef), !dbg !3780
  br label %typeswitch.done, !dbg !3744

typeswitch.next22:                                ; preds = %typeassert.next100
  %interface.type104 = extractvalue { ptr, ptr } %1, 0, !dbg !3781
  br i1 false, label %typeassert.ok106, label %typeassert.next107, !dbg !3781

typeassert.next107:                               ; preds = %typeassert.ok106, %typeswitch.next22
  %typeassert.value110 = phi i64 [ 0, %typeswitch.next22 ], [ %unpack.int109, %typeassert.ok106 ], !dbg !3781
  %44 = insertvalue { i64, i1 } undef, i64 %typeassert.value110, 0, !dbg !3781
  %45 = insertvalue { i64, i1 } %44, i1 false, 1, !dbg !3781
  %46 = extractvalue { i64, i1 } %45, 0, !dbg !3781
  %47 = extractvalue { i64, i1 } %45, 1, !dbg !3781
  br i1 %47, label %typeswitch.body23, label %typeswitch.next24, !dbg !3744

typeassert.ok106:                                 ; preds = %typeswitch.next22
  %typeassert.value.ptr108 = extractvalue { ptr, ptr } %1, 1, !dbg !3781
  %unpack.int109 = ptrtoint ptr %typeassert.value.ptr108 to i64, !dbg !3781
  br label %typeassert.next107, !dbg !3781

typeswitch.body23:                                ; preds = %typeassert.next107
    #dbg_value(i64 %46, !3727, !DIExpression(), !3782)
  call void @runtime.printuint64(i64 %46, ptr undef), !dbg !3783
  br label %typeswitch.done, !dbg !3744

typeswitch.next24:                                ; preds = %typeassert.next107
  %interface.type111 = extractvalue { ptr, ptr } %1, 0, !dbg !3784
  br i1 false, label %typeassert.ok113, label %typeassert.next114, !dbg !3784

typeassert.next114:                               ; preds = %typeassert.ok113, %typeswitch.next24
  %typeassert.value117 = phi i64 [ 0, %typeswitch.next24 ], [ %unpack.int116, %typeassert.ok113 ], !dbg !3784
  %48 = insertvalue { i64, i1 } undef, i64 %typeassert.value117, 0, !dbg !3784
  %49 = insertvalue { i64, i1 } %48, i1 false, 1, !dbg !3784
  %50 = extractvalue { i64, i1 } %49, 0, !dbg !3784
  %51 = extractvalue { i64, i1 } %49, 1, !dbg !3784
  br i1 %51, label %typeswitch.body25, label %typeswitch.next26, !dbg !3744

typeassert.ok113:                                 ; preds = %typeswitch.next24
  %typeassert.value.ptr115 = extractvalue { ptr, ptr } %1, 1, !dbg !3784
  %unpack.int116 = ptrtoint ptr %typeassert.value.ptr115 to i64, !dbg !3784
  br label %typeassert.next114, !dbg !3784

typeswitch.body25:                                ; preds = %typeassert.next114
    #dbg_value(i64 %50, !3728, !DIExpression(), !3785)
  call void @runtime.printuintptr(i64 %50, ptr undef), !dbg !3786
  br label %typeswitch.done, !dbg !3744

typeswitch.next26:                                ; preds = %typeassert.next114
  %interface.type118 = extractvalue { ptr, ptr } %1, 0, !dbg !3787
  br i1 false, label %typeassert.ok120, label %typeassert.next121, !dbg !3787

typeassert.next121:                               ; preds = %typeassert.ok120, %typeswitch.next26
  %typeassert.value123 = phi float [ 0.000000e+00, %typeswitch.next26 ], [ %57, %typeassert.ok120 ], !dbg !3741
  %52 = insertvalue { float, i1 } undef, float %typeassert.value123, 0, !dbg !3741
  %53 = insertvalue { float, i1 } %52, i1 false, 1, !dbg !3741
  %54 = extractvalue { float, i1 } %53, 0, !dbg !3787
  %55 = extractvalue { float, i1 } %53, 1, !dbg !3787
  br i1 %55, label %typeswitch.body27, label %typeswitch.next28, !dbg !3744

typeassert.ok120:                                 ; preds = %typeswitch.next26
  %typeassert.value.ptr122 = extractvalue { ptr, ptr } %1, 1, !dbg !3787
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc), !dbg !3741
  store ptr %typeassert.value.ptr122, ptr %unpack.raw.alloc, align 8, !dbg !3741
  %56 = getelementptr inbounds { float }, ptr %unpack.raw.alloc, i32 0, i32 0, !dbg !3741
  %57 = load float, ptr %56, align 4, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc), !dbg !3741
  br label %typeassert.next121, !dbg !3741

typeswitch.body27:                                ; preds = %typeassert.next121
    #dbg_value(float %54, !3729, !DIExpression(), !3788)
  call void @runtime.printfloat32(float %54, ptr undef), !dbg !3789
  br label %typeswitch.done, !dbg !3744

typeswitch.next28:                                ; preds = %typeassert.next121
  %interface.type124 = extractvalue { ptr, ptr } %1, 0, !dbg !3790
  br i1 false, label %typeassert.ok126, label %typeassert.next127, !dbg !3790

typeassert.next127:                               ; preds = %typeassert.ok126, %typeswitch.next28
  %typeassert.value130 = phi double [ 0.000000e+00, %typeswitch.next28 ], [ %63, %typeassert.ok126 ], !dbg !3741
  %58 = insertvalue { double, i1 } undef, double %typeassert.value130, 0, !dbg !3741
  %59 = insertvalue { double, i1 } %58, i1 false, 1, !dbg !3741
  %60 = extractvalue { double, i1 } %59, 0, !dbg !3790
  %61 = extractvalue { double, i1 } %59, 1, !dbg !3790
  br i1 %61, label %typeswitch.body29, label %typeswitch.next30, !dbg !3744

typeassert.ok126:                                 ; preds = %typeswitch.next28
  %typeassert.value.ptr128 = extractvalue { ptr, ptr } %1, 1, !dbg !3790
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc129), !dbg !3741
  store ptr %typeassert.value.ptr128, ptr %unpack.raw.alloc129, align 8, !dbg !3741
  %62 = getelementptr inbounds { double }, ptr %unpack.raw.alloc129, i32 0, i32 0, !dbg !3741
  %63 = load double, ptr %62, align 8, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc129), !dbg !3741
  br label %typeassert.next127, !dbg !3741

typeswitch.body29:                                ; preds = %typeassert.next127
    #dbg_value(double %60, !3731, !DIExpression(), !3791)
  call void @runtime.printfloat64(double %60, ptr undef), !dbg !3792
  br label %typeswitch.done, !dbg !3744

typeswitch.next30:                                ; preds = %typeassert.next127
  %interface.type131 = extractvalue { ptr, ptr } %1, 0, !dbg !3793
  br i1 false, label %typeassert.ok133, label %typeassert.next134, !dbg !3793

typeassert.next134:                               ; preds = %typeassert.ok133, %typeswitch.next30
  %typeassert.value137 = phi { float, float } [ zeroinitializer, %typeswitch.next30 ], [ %69, %typeassert.ok133 ], !dbg !3741
  %64 = insertvalue { { float, float }, i1 } undef, { float, float } %typeassert.value137, 0, !dbg !3741
  %65 = insertvalue { { float, float }, i1 } %64, i1 false, 1, !dbg !3741
  %66 = extractvalue { { float, float }, i1 } %65, 0, !dbg !3793
  %67 = extractvalue { { float, float }, i1 } %65, 1, !dbg !3793
  br i1 %67, label %typeswitch.body31, label %typeswitch.next32, !dbg !3744

typeassert.ok133:                                 ; preds = %typeswitch.next30
  %typeassert.value.ptr135 = extractvalue { ptr, ptr } %1, 1, !dbg !3793
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc136), !dbg !3741
  store ptr %typeassert.value.ptr135, ptr %unpack.raw.alloc136, align 8, !dbg !3741
  %68 = getelementptr inbounds { { float, float } }, ptr %unpack.raw.alloc136, i32 0, i32 0, !dbg !3741
  %69 = load { float, float }, ptr %68, align 4, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc136), !dbg !3741
  br label %typeassert.next134, !dbg !3741

typeswitch.body31:                                ; preds = %typeassert.next134
    #dbg_value({ float, float } %66, !3732, !DIExpression(), !3794)
  %70 = extractvalue { float, float } %66, 0, !dbg !3795
  %71 = extractvalue { float, float } %66, 1, !dbg !3795
  call void @runtime.printcomplex64(float %70, float %71, ptr undef), !dbg !3795
  br label %typeswitch.done, !dbg !3744

typeswitch.next32:                                ; preds = %typeassert.next134
  %interface.type138 = extractvalue { ptr, ptr } %1, 0, !dbg !3796
  br i1 false, label %typeassert.ok140, label %typeassert.next141, !dbg !3796

typeassert.next141:                               ; preds = %typeassert.ok140, %typeswitch.next32
  %typeassert.value143 = phi { double, double } [ zeroinitializer, %typeswitch.next32 ], [ %77, %typeassert.ok140 ], !dbg !3796
  %72 = insertvalue { { double, double }, i1 } undef, { double, double } %typeassert.value143, 0, !dbg !3796
  %73 = insertvalue { { double, double }, i1 } %72, i1 false, 1, !dbg !3796
  %74 = extractvalue { { double, double }, i1 } %73, 0, !dbg !3796
  %75 = extractvalue { { double, double }, i1 } %73, 1, !dbg !3796
  br i1 %75, label %typeswitch.body33, label %typeswitch.next34, !dbg !3744

typeassert.ok140:                                 ; preds = %typeswitch.next32
  %typeassert.value.ptr142 = extractvalue { ptr, ptr } %1, 1, !dbg !3796
  %76 = getelementptr inbounds { { double, double } }, ptr %typeassert.value.ptr142, i32 0, i32 0, !dbg !3796
  %77 = load { double, double }, ptr %76, align 8, !dbg !3796
  br label %typeassert.next141, !dbg !3796

typeswitch.body33:                                ; preds = %typeassert.next141
    #dbg_value({ double, double } %74, !3734, !DIExpression(), !3797)
  %78 = extractvalue { double, double } %74, 0, !dbg !3798
  %79 = extractvalue { double, double } %74, 1, !dbg !3798
  call void @runtime.printcomplex128(double %78, double %79, ptr undef), !dbg !3798
  br label %typeswitch.done, !dbg !3744

typeswitch.next34:                                ; preds = %typeassert.next141
  %interface.type144 = extractvalue { ptr, ptr } %1, 0, !dbg !3799
  %typeassert.ok1 = icmp eq ptr @"reflect/types.type:basic:string", %interface.type144, !dbg !3799
  br i1 %typeassert.ok1, label %typeassert.ok146, label %typeassert.next147, !dbg !3799

typeassert.next147:                               ; preds = %typeassert.ok146, %typeswitch.next34
  %typeassert.value149 = phi %runtime._string [ zeroinitializer, %typeswitch.next34 ], [ %85, %typeassert.ok146 ], !dbg !3799
  %80 = insertvalue { %runtime._string, i1 } undef, %runtime._string %typeassert.value149, 0, !dbg !3799
  %81 = insertvalue { %runtime._string, i1 } %80, i1 %typeassert.ok1, 1, !dbg !3799
  %82 = extractvalue { %runtime._string, i1 } %81, 0, !dbg !3799
  %83 = extractvalue { %runtime._string, i1 } %81, 1, !dbg !3799
  br i1 %83, label %typeswitch.body35, label %typeswitch.next36, !dbg !3744

typeassert.ok146:                                 ; preds = %typeswitch.next34
  %typeassert.value.ptr148 = extractvalue { ptr, ptr } %1, 1, !dbg !3799
  %84 = getelementptr inbounds { %runtime._string }, ptr %typeassert.value.ptr148, i32 0, i32 0, !dbg !3799
  %85 = load %runtime._string, ptr %84, align 8, !dbg !3799
  br label %typeassert.next147, !dbg !3799

typeswitch.body35:                                ; preds = %typeassert.next147
    #dbg_value(%runtime._string %82, !3736, !DIExpression(), !3800)
  %86 = extractvalue %runtime._string %82, 0, !dbg !3801
  %87 = extractvalue %runtime._string %82, 1, !dbg !3801
  call void @runtime.printstring(ptr %86, i64 %87, ptr undef), !dbg !3801
  br label %typeswitch.done, !dbg !3744

typeswitch.next36:                                ; preds = %typeassert.next147
  %interface.type150 = extractvalue { ptr, ptr } %1, 0, !dbg !3802
  %88 = call i1 @"interface:{Error:func:{}{basic:string}}.$typeassert"(ptr %interface.type150), !dbg !3802
  br i1 %88, label %typeassert.ok151, label %typeassert.next152, !dbg !3802

typeassert.next152:                               ; preds = %typeassert.ok151, %typeswitch.next36
  %typeassert.value153 = phi { ptr, ptr } [ zeroinitializer, %typeswitch.next36 ], [ %1, %typeassert.ok151 ], !dbg !3802
  %89 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %typeassert.value153, 0, !dbg !3802
  %90 = insertvalue { { ptr, ptr }, i1 } %89, i1 %88, 1, !dbg !3802
  %91 = extractvalue { { ptr, ptr }, i1 } %90, 0, !dbg !3802
  %92 = extractvalue { { ptr, ptr }, i1 } %90, 1, !dbg !3802
  br i1 %92, label %typeswitch.body37, label %typeswitch.next38, !dbg !3744

typeassert.ok151:                                 ; preds = %typeswitch.next36
  br label %typeassert.next152, !dbg !3802

typeswitch.body37:                                ; preds = %typeassert.next152
    #dbg_value({ ptr, ptr } %91, !3737, !DIExpression(), !3803)
  %invoke.func.typecode = extractvalue { ptr, ptr } %91, 0, !dbg !3804
  %invoke.func.value = extractvalue { ptr, ptr } %91, 1, !dbg !3804
  %93 = call %runtime._string @"interface:{Error:func:{}{basic:string}}.Error$invoke"(ptr %invoke.func.value, ptr %invoke.func.typecode, ptr undef), !dbg !3804
  %94 = extractvalue %runtime._string %93, 0, !dbg !3805
  %95 = extractvalue %runtime._string %93, 1, !dbg !3805
  call void @runtime.printstring(ptr %94, i64 %95, ptr undef), !dbg !3805
  br label %typeswitch.done, !dbg !3744

typeswitch.next38:                                ; preds = %typeassert.next152
  %interface.type154 = extractvalue { ptr, ptr } %1, 0, !dbg !3806
  %96 = call i1 @"interface:{String:func:{}{basic:string}}.$typeassert"(ptr %interface.type154), !dbg !3806
  br i1 %96, label %typeassert.ok155, label %typeassert.next156, !dbg !3806

typeassert.next156:                               ; preds = %typeassert.ok155, %typeswitch.next38
  %typeassert.value157 = phi { ptr, ptr } [ zeroinitializer, %typeswitch.next38 ], [ %1, %typeassert.ok155 ], !dbg !3806
  %97 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %typeassert.value157, 0, !dbg !3806
  %98 = insertvalue { { ptr, ptr }, i1 } %97, i1 %96, 1, !dbg !3806
  %99 = extractvalue { { ptr, ptr }, i1 } %98, 0, !dbg !3806
  %100 = extractvalue { { ptr, ptr }, i1 } %98, 1, !dbg !3806
  br i1 %100, label %typeswitch.body39, label %typeswitch.next40, !dbg !3744

typeassert.ok155:                                 ; preds = %typeswitch.next38
  br label %typeassert.next156, !dbg !3806

typeswitch.body39:                                ; preds = %typeassert.next156
    #dbg_value({ ptr, ptr } %99, !3738, !DIExpression(), !3807)
  %invoke.func.typecode158 = extractvalue { ptr, ptr } %99, 0, !dbg !3808
  %invoke.func.value159 = extractvalue { ptr, ptr } %99, 1, !dbg !3808
  %101 = call %runtime._string @"interface:{String:func:{}{basic:string}}.String$invoke"(ptr %invoke.func.value159, ptr %invoke.func.typecode158, ptr undef), !dbg !3808
  %102 = extractvalue %runtime._string %101, 0, !dbg !3809
  %103 = extractvalue %runtime._string %101, 1, !dbg !3809
  call void @runtime.printstring(ptr %102, i64 %103, ptr undef), !dbg !3809
  br label %typeswitch.done, !dbg !3744

typeswitch.next40:                                ; preds = %typeassert.next156
  %msg = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 389 to ptr), ptr undef), !dbg !3810
  store { ptr, ptr } %1, ptr %msg, align 8, !dbg !3810
  store { ptr, ptr } zeroinitializer, ptr %itf, align 8, !dbg !3741
  %104 = load { ptr, ptr }, ptr %msg, align 8, !dbg !3811
  store { ptr, ptr } %104, ptr %itf, align 8, !dbg !3812
    #dbg_value({ ptr, ptr } %104, !3740, !DIExpression(), !3812)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !3813
  %105 = getelementptr inbounds { ptr, ptr }, ptr %itf, i32 0, i32 0, !dbg !3814
  %106 = icmp eq ptr %105, null, !dbg !3814
  br i1 %106, label %deref.throw, label %deref.next, !dbg !3814

deref.next:                                       ; preds = %typeswitch.next40
  %107 = load ptr, ptr %105, align 8, !dbg !3814
  %108 = ptrtoint ptr %107 to i64, !dbg !3815
  call void @runtime.printuintptr(i64 %108, ptr undef), !dbg !3816
  call void @runtime.putchar(i8 58, ptr undef), !dbg !3817
  %109 = getelementptr inbounds { ptr, ptr }, ptr %itf, i32 0, i32 1, !dbg !3818
  %110 = icmp eq ptr %109, null, !dbg !3818
  br i1 %110, label %deref.throw160, label %deref.next161, !dbg !3818

deref.next161:                                    ; preds = %deref.next
  %111 = load ptr, ptr %109, align 8, !dbg !3818
  %112 = ptrtoint ptr %111 to i64, !dbg !3819
  call void @runtime.printptr(i64 %112, ptr undef), !dbg !3820
  call void @runtime.putchar(i8 41, ptr undef), !dbg !3821
  br label %typeswitch.done, !dbg !3744

deref.throw:                                      ; preds = %typeswitch.next40
  call void @runtime.nilPanic(ptr undef), !dbg !3814
  unreachable, !dbg !3814

deref.throw160:                                   ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !3818
  unreachable, !dbg !3818
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printbool(i1 %b, ptr %context) unnamed_addr #1 !dbg !3822 {
entry:
    #dbg_value(i1 %b, !3826, !DIExpression(), !3827)
    #dbg_value(i1 %b, !3826, !DIExpression(), !3828)
  br i1 %b, label %if.then, label %if.else, !dbg !3829

if.then:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.46", i64 4, ptr undef), !dbg !3830
  br label %if.done, !dbg !3829

if.done:                                          ; preds = %if.else, %if.then
  ret void, !dbg !3831

if.else:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.47", i64 5, ptr undef), !dbg !3832
  br label %if.done, !dbg !3829
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint64(i64 %n, ptr %context) unnamed_addr #1 !dbg !3833 {
entry:
    #dbg_value(i64 %n, !3837, !DIExpression(), !3838)
    #dbg_value(i64 %n, !3837, !DIExpression(), !3839)
  %0 = icmp slt i64 %n, 0, !dbg !3840
  br i1 %0, label %if.then, label %if.done, !dbg !3841

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3842
    #dbg_value(i64 %n, !3837, !DIExpression(), !3843)
  %1 = sub i64 0, %n, !dbg !3844
    #dbg_value(i64 %1, !3837, !DIExpression(), !3845)
  br label %if.done, !dbg !3841

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i64 [ %n, %entry ], [ %1, %if.then ], !dbg !3846
    #dbg_value(i64 %2, !3837, !DIExpression(), !3847)
  call void @runtime.printuint64(i64 %2, ptr undef), !dbg !3848
  ret void, !dbg !3849
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint32(i32 %n, ptr %context) unnamed_addr #1 !dbg !3850 {
entry:
    #dbg_value(i32 %n, !3852, !DIExpression(), !3853)
    #dbg_value(i32 %n, !3852, !DIExpression(), !3854)
  %0 = icmp slt i32 %n, 0, !dbg !3855
  br i1 %0, label %if.then, label %if.done, !dbg !3856

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3857
    #dbg_value(i32 %n, !3852, !DIExpression(), !3858)
  %1 = sub i32 0, %n, !dbg !3859
    #dbg_value(i32 %1, !3852, !DIExpression(), !3860)
  br label %if.done, !dbg !3856

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i32 [ %n, %entry ], [ %1, %if.then ], !dbg !3861
    #dbg_value(i32 %2, !3852, !DIExpression(), !3862)
  call void @runtime.printuint32(i32 %2, ptr undef), !dbg !3863
  ret void, !dbg !3864
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint8(i8 %n, ptr %context) unnamed_addr #1 !dbg !3865 {
entry:
    #dbg_value(i8 %n, !3869, !DIExpression(), !3870)
  br i1 true, label %if.then, label %if.else, !dbg !3871

if.then:                                          ; preds = %entry
    #dbg_value(i8 %n, !3869, !DIExpression(), !3872)
  %0 = sext i8 %n to i32, !dbg !3873
  call void @runtime.printint32(i32 %0, ptr undef), !dbg !3874
  br label %if.done, !dbg !3871

if.done:                                          ; preds = %if.done2, %if.then
  ret void, !dbg !3875

if.else:                                          ; preds = %entry
    #dbg_value(i8 %n, !3869, !DIExpression(), !3876)
  %1 = icmp slt i8 %n, 0, !dbg !3877
  br i1 %1, label %if.then1, label %if.done2, !dbg !3871

if.then1:                                         ; preds = %if.else
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3878
    #dbg_value(i8 %n, !3869, !DIExpression(), !3879)
  %2 = sub i8 0, %n, !dbg !3880
    #dbg_value(i8 %2, !3869, !DIExpression(), !3881)
  br label %if.done2, !dbg !3871

if.done2:                                         ; preds = %if.then1, %if.else
  %3 = phi i8 [ %n, %if.else ], [ %2, %if.then1 ], !dbg !3882
    #dbg_value(i8 %3, !3869, !DIExpression(), !3883)
  call void @runtime.printuint8(i8 %3, ptr undef), !dbg !3884
  br label %if.done, !dbg !3871
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint16(i16 %n, ptr %context) unnamed_addr #1 !dbg !3885 {
entry:
    #dbg_value(i16 %n, !3889, !DIExpression(), !3890)
    #dbg_value(i16 %n, !3889, !DIExpression(), !3891)
  %0 = sext i16 %n to i32, !dbg !3892
  call void @runtime.printint32(i32 %0, ptr undef), !dbg !3893
  ret void, !dbg !3894
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint64(i64 %n, ptr %context) unnamed_addr #1 !dbg !3895 {
entry:
    #dbg_value(i64 %n, !3897, !DIExpression(), !3902)
  %digits = alloca [20 x i8], align 1, !dbg !3903
  store [20 x i8] zeroinitializer, ptr %digits, align 1, !dbg !3903
    #dbg_value(i64 19, !3898, !DIExpression(), !3904)
    #dbg_value(i64 19, !3899, !DIExpression(), !3905)
  br label %for.loop, !dbg !3906

for.loop:                                         ; preds = %if.done, %entry
  %0 = phi i64 [ %n, %entry ], [ %10, %if.done ], !dbg !3907
  %1 = phi i64 [ 19, %entry ], [ %9, %if.done ], !dbg !3904
  %2 = phi i64 [ 19, %entry ], [ %11, %if.done ], !dbg !3905
    #dbg_value(i64 %2, !3899, !DIExpression(), !3908)
  %3 = icmp sge i64 %2, 0, !dbg !3909
  br i1 %3, label %for.body, label %for.done, !dbg !3906

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !3897, !DIExpression(), !3910)
  %4 = urem i64 %0, 10, !dbg !3911
  %5 = add i64 %4, 48, !dbg !3912
  %6 = trunc i64 %5 to i8, !dbg !3913
    #dbg_value(i8 %6, !3900, !DIExpression(), !3914)
    #dbg_value(i64 %2, !3899, !DIExpression(), !3915)
    #dbg_value(i8 %6, !3900, !DIExpression(), !3916)
  %7 = getelementptr inbounds [20 x i8], ptr %digits, i32 0, i64 %2, !dbg !3917
  store i8 %6, ptr %7, align 1, !dbg !3917
    #dbg_value(i8 %6, !3900, !DIExpression(), !3918)
  %8 = icmp ne i8 %6, 48, !dbg !3919
  br i1 %8, label %if.then, label %if.done, !dbg !3906

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %2, !3899, !DIExpression(), !3920)
    #dbg_value(i64 %2, !3898, !DIExpression(), !3921)
  br label %if.done, !dbg !3906

if.done:                                          ; preds = %if.then, %for.body
  %9 = phi i64 [ %1, %for.body ], [ %2, %if.then ], !dbg !3904
  %10 = udiv i64 %0, 10, !dbg !3922
    #dbg_value(i64 %10, !3897, !DIExpression(), !3922)
  %11 = sub i64 %2, 1, !dbg !3923
    #dbg_value(i64 %11, !3899, !DIExpression(), !3923)
  br label %for.loop, !dbg !3906

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !3898, !DIExpression(), !3924)
    #dbg_value(i64 %1, !3901, !DIExpression(), !3925)
  br label %for.loop1, !dbg !3906

for.loop1:                                        ; preds = %for.body2, %for.done
  %12 = phi i64 [ %1, %for.done ], [ %16, %for.body2 ], !dbg !3925
    #dbg_value(i64 %12, !3901, !DIExpression(), !3926)
  %13 = icmp slt i64 %12, 20, !dbg !3927
  br i1 %13, label %for.body2, label %for.done3, !dbg !3906

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %12, !3901, !DIExpression(), !3928)
  %14 = getelementptr inbounds [20 x i8], ptr %digits, i32 0, i64 %12, !dbg !3929
  %15 = load i8, ptr %14, align 1, !dbg !3929
  call void @runtime.putchar(i8 %15, ptr undef), !dbg !3930
  %16 = add i64 %12, 1, !dbg !3931
    #dbg_value(i64 %16, !3901, !DIExpression(), !3931)
  br label %for.loop1, !dbg !3906

for.done3:                                        ; preds = %for.loop1
  ret void, !dbg !3932
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint32(i32 %n, ptr %context) unnamed_addr #1 !dbg !3933 {
entry:
    #dbg_value(i32 %n, !3935, !DIExpression(), !3936)
    #dbg_value(i32 %n, !3935, !DIExpression(), !3937)
  %0 = zext i32 %n to i64, !dbg !3938
  call void @runtime.printuint64(i64 %0, ptr undef), !dbg !3939
  ret void, !dbg !3940
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint8(i8 %n, ptr %context) unnamed_addr #1 !dbg !3941 {
entry:
    #dbg_value(i8 %n, !3945, !DIExpression(), !3947)
  br i1 true, label %if.then, label %if.else, !dbg !3948

if.then:                                          ; preds = %entry
    #dbg_value(i8 %n, !3945, !DIExpression(), !3949)
  %0 = zext i8 %n to i32, !dbg !3950
  call void @runtime.printuint32(i32 %0, ptr undef), !dbg !3951
  br label %if.done, !dbg !3948

if.done:                                          ; preds = %if.done2, %if.then
  ret void, !dbg !3952

if.else:                                          ; preds = %entry
    #dbg_value(i8 %n, !3945, !DIExpression(), !3953)
  %1 = udiv i8 %n, 10, !dbg !3954
    #dbg_value(i8 %1, !3946, !DIExpression(), !3955)
    #dbg_value(i8 %1, !3946, !DIExpression(), !3956)
  %2 = icmp ne i8 %1, 0, !dbg !3957
  br i1 %2, label %if.then1, label %if.done2, !dbg !3948

if.then1:                                         ; preds = %if.else
    #dbg_value(i8 %1, !3946, !DIExpression(), !3958)
  call void @runtime.printuint8(i8 %1, ptr undef), !dbg !3959
  br label %if.done2, !dbg !3948

if.done2:                                         ; preds = %if.then1, %if.else
    #dbg_value(i8 %n, !3945, !DIExpression(), !3960)
  %3 = urem i8 %n, 10, !dbg !3961
  %4 = add i8 %3, 48, !dbg !3962
  call void @runtime.putchar(i8 %4, ptr undef), !dbg !3963
  br label %if.done, !dbg !3948
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint16(i16 %n, ptr %context) unnamed_addr #1 !dbg !3964 {
entry:
    #dbg_value(i16 %n, !3968, !DIExpression(), !3969)
    #dbg_value(i16 %n, !3968, !DIExpression(), !3970)
  %0 = zext i16 %n to i32, !dbg !3971
  call void @runtime.printuint32(i32 %0, ptr undef), !dbg !3972
  ret void, !dbg !3973
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuintptr(i64 %n, ptr %context) unnamed_addr #1 !dbg !3974 {
entry:
    #dbg_value(i64 %n, !3976, !DIExpression(), !3977)
  br i1 false, label %switch.body, label %switch.next, !dbg !3978

switch.body:                                      ; preds = %entry
    #dbg_value(i64 %n, !3976, !DIExpression(), !3979)
  %0 = trunc i64 %n to i16, !dbg !3980
  call void @runtime.printuint16(i16 %0, ptr undef), !dbg !3981
  br label %switch.done, !dbg !3978

switch.done:                                      ; preds = %switch.body3, %switch.next2, %switch.body1, %switch.body
  ret void, !dbg !3982

switch.next:                                      ; preds = %entry
  br i1 false, label %switch.body1, label %switch.next2, !dbg !3978

switch.body1:                                     ; preds = %switch.next
    #dbg_value(i64 %n, !3976, !DIExpression(), !3983)
  %1 = trunc i64 %n to i32, !dbg !3984
  call void @runtime.printuint32(i32 %1, ptr undef), !dbg !3985
  br label %switch.done, !dbg !3978

switch.next2:                                     ; preds = %switch.next
  br i1 true, label %switch.body3, label %switch.done, !dbg !3978

switch.body3:                                     ; preds = %switch.next2
    #dbg_value(i64 %n, !3976, !DIExpression(), !3986)
  call void @runtime.printuint64(i64 %n, ptr undef), !dbg !3987
  br label %switch.done, !dbg !3978
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printfloat32(float %v, ptr %context) unnamed_addr #1 !dbg !3988 {
entry:
    #dbg_value(float %v, !3992, !DIExpression(), !4001)
    #dbg_value(float %v, !3992, !DIExpression(), !4002)
    #dbg_value(float %v, !3992, !DIExpression(), !4003)
  %index.alloca = alloca [14 x i8], align 1, !dbg !4004
  %buf = alloca [14 x i8], align 1, !dbg !4004
  %0 = fcmp une float %v, %v, !dbg !4004
  br i1 %0, label %switch.body, label %switch.next, !dbg !4005

switch.body:                                      ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.35", i64 3, ptr undef), !dbg !4006
  ret void, !dbg !4007

switch.next:                                      ; preds = %entry
    #dbg_value(float %v, !3992, !DIExpression(), !4008)
    #dbg_value(float %v, !3992, !DIExpression(), !4009)
  %1 = fadd float %v, %v, !dbg !4010
    #dbg_value(float %v, !3992, !DIExpression(), !4011)
  %2 = fcmp oeq float %1, %v, !dbg !4012
  br i1 %2, label %binop.rhs, label %binop.done, !dbg !4005

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(float %v, !3992, !DIExpression(), !4013)
  %3 = fcmp ogt float %v, 0.000000e+00, !dbg !4014
  br label %binop.done, !dbg !4005

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ false, %switch.next ], [ %3, %binop.rhs ], !dbg !4015
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4005

switch.body1:                                     ; preds = %binop.done
  call void @runtime.printstring(ptr @"runtime$string.36", i64 4, ptr undef), !dbg !4016
  ret void, !dbg !4017

switch.next2:                                     ; preds = %binop.done
    #dbg_value(float %v, !3992, !DIExpression(), !4018)
    #dbg_value(float %v, !3992, !DIExpression(), !4019)
  %5 = fadd float %v, %v, !dbg !4020
    #dbg_value(float %v, !3992, !DIExpression(), !4021)
  %6 = fcmp oeq float %5, %v, !dbg !4022
  br i1 %6, label %binop.rhs3, label %binop.done4, !dbg !4005

binop.rhs3:                                       ; preds = %switch.next2
    #dbg_value(float %v, !3992, !DIExpression(), !4023)
  %7 = fcmp olt float %v, 0.000000e+00, !dbg !4024
  br label %binop.done4, !dbg !4005

binop.done4:                                      ; preds = %binop.rhs3, %switch.next2
  %8 = phi i1 [ false, %switch.next2 ], [ %7, %binop.rhs3 ], !dbg !4025
  br i1 %8, label %switch.body5, label %switch.next6, !dbg !4005

switch.body5:                                     ; preds = %binop.done4
  call void @runtime.printstring(ptr @"runtime$string.37", i64 4, ptr undef), !dbg !4026
  ret void, !dbg !4027

switch.next6:                                     ; preds = %binop.done4
  store [14 x i8] zeroinitializer, ptr %buf, align 1, !dbg !4004
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4028
  store i8 43, ptr %9, align 1, !dbg !4028
    #dbg_value(i64 0, !3993, !DIExpression(), !4029)
    #dbg_value(float %v, !3992, !DIExpression(), !4030)
  %10 = fcmp oeq float %v, 0.000000e+00, !dbg !4031
  br i1 %10, label %if.then, label %if.else, !dbg !4005

if.then:                                          ; preds = %switch.next6
    #dbg_value(float %v, !3992, !DIExpression(), !4032)
  %11 = fdiv float 1.000000e+00, %v, !dbg !4033
  %12 = fcmp olt float %11, 0.000000e+00, !dbg !4034
  br i1 %12, label %if.then7, label %if.done, !dbg !4005

if.then7:                                         ; preds = %if.then
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4035
  store i8 45, ptr %13, align 1, !dbg !4035
  br label %if.done, !dbg !4005

if.done:                                          ; preds = %if.then19, %for.done18, %if.then7, %if.then
  %14 = phi float [ %v, %if.then ], [ %84, %for.done18 ], [ %v, %if.then7 ], [ %87, %if.then19 ], !dbg !4036
  %15 = phi i64 [ 0, %if.then ], [ %75, %for.done18 ], [ 0, %if.then7 ], [ %86, %if.then19 ], !dbg !4029
    #dbg_value(i64 0, !3994, !DIExpression(), !4037)
  br label %for.loop, !dbg !4005

for.loop:                                         ; preds = %lookup.next, %if.done
  %16 = phi float [ %14, %if.done ], [ %27, %lookup.next ], !dbg !4036
  %17 = phi i64 [ 0, %if.done ], [ %28, %lookup.next ], !dbg !4037
    #dbg_value(i64 %17, !3994, !DIExpression(), !4038)
  %18 = icmp slt i64 %17, 7, !dbg !4039
  br i1 %18, label %for.body, label %for.done, !dbg !4005

for.body:                                         ; preds = %for.loop
    #dbg_value(float %16, !3992, !DIExpression(), !4040)
  %abovemin = fcmp ole float 0xC3E0000000000000, %16, !dbg !4041
  %belowmax = fcmp ole float %16, 0x43DFFFFFC0000000, !dbg !4041
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4041
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4041
  %isnan = fcmp uno float %16, %16, !dbg !4041
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4041
  %normal = fptosi float %16 to i64, !dbg !4041
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4041
    #dbg_value(i64 %19, !3995, !DIExpression(), !4042)
    #dbg_value(i64 %17, !3994, !DIExpression(), !4043)
  %20 = add i64 %17, 2, !dbg !4044
    #dbg_value(i64 %19, !3995, !DIExpression(), !4045)
  %21 = add i64 %19, 48, !dbg !4046
  %22 = trunc i64 %21 to i8, !dbg !4047
  %23 = icmp uge i64 %20, 14, !dbg !4048
  br i1 %23, label %lookup.throw, label %lookup.next, !dbg !4048

lookup.next:                                      ; preds = %for.body
  %24 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 %20, !dbg !4048
  store i8 %22, ptr %24, align 1, !dbg !4048
    #dbg_value(i64 %19, !3995, !DIExpression(), !4049)
  %25 = sitofp i64 %19 to float, !dbg !4050
  %26 = fsub float %16, %25, !dbg !4051
    #dbg_value(float %26, !3992, !DIExpression(), !4051)
  %27 = fmul float %26, 1.000000e+01, !dbg !4052
    #dbg_value(float %27, !3992, !DIExpression(), !4052)
  %28 = add i64 %17, 1, !dbg !4053
    #dbg_value(i64 %28, !3994, !DIExpression(), !4053)
  br label %for.loop, !dbg !4005

for.done:                                         ; preds = %for.loop
  %29 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4054
  %30 = load i8, ptr %29, align 1, !dbg !4054
  %31 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 1, !dbg !4055
  store i8 %30, ptr %31, align 1, !dbg !4055
  %32 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4056
  store i8 46, ptr %32, align 1, !dbg !4056
  %33 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 9, !dbg !4057
  store i8 101, ptr %33, align 1, !dbg !4057
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4058
  store i8 43, ptr %34, align 1, !dbg !4058
    #dbg_value(i64 %15, !3993, !DIExpression(), !4059)
  %35 = icmp slt i64 %15, 0, !dbg !4060
  br i1 %35, label %if.then8, label %if.done9, !dbg !4005

if.then8:                                         ; preds = %for.done
    #dbg_value(i64 %15, !3993, !DIExpression(), !4061)
  %36 = sub i64 0, %15, !dbg !4062
    #dbg_value(i64 %36, !3993, !DIExpression(), !4063)
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4064
  store i8 45, ptr %37, align 1, !dbg !4064
  br label %if.done9, !dbg !4005

if.done9:                                         ; preds = %if.then8, %for.done
  %38 = phi i64 [ %15, %for.done ], [ %36, %if.then8 ], !dbg !4029
    #dbg_value(i64 %38, !3993, !DIExpression(), !4065)
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !4066
  %40 = and i1 false, %39, !dbg !4066
  %41 = select i1 %40, i64 1, i64 100, !dbg !4066
  %42 = sdiv i64 %38, %41, !dbg !4066
  %43 = trunc i64 %42 to i8, !dbg !4067
  %44 = add i8 %43, 48, !dbg !4068
  %45 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 11, !dbg !4069
  store i8 %44, ptr %45, align 1, !dbg !4069
    #dbg_value(i64 %38, !3993, !DIExpression(), !4070)
  %46 = icmp eq i64 %38, -9223372036854775808, !dbg !4071
  %47 = and i1 false, %46, !dbg !4071
  %48 = select i1 %47, i64 1, i64 10, !dbg !4071
  %49 = sdiv i64 %38, %48, !dbg !4071
  %50 = trunc i64 %49 to i8, !dbg !4072
  %51 = urem i8 %50, 10, !dbg !4073
  %52 = add i8 %51, 48, !dbg !4074
  %53 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 12, !dbg !4075
  store i8 %52, ptr %53, align 1, !dbg !4075
    #dbg_value(i64 %38, !3993, !DIExpression(), !4076)
  %54 = icmp eq i64 %38, -9223372036854775808, !dbg !4077
  %55 = and i1 false, %54, !dbg !4077
  %56 = select i1 %55, i64 1, i64 10, !dbg !4077
  %57 = srem i64 %38, %56, !dbg !4077
  %58 = trunc i64 %57 to i8, !dbg !4078
  %59 = add i8 %58, 48, !dbg !4079
  %60 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 13, !dbg !4080
  store i8 %59, ptr %60, align 1, !dbg !4080
  %61 = load [14 x i8], ptr %buf, align 1, !dbg !4081
    #dbg_value([14 x i8] %61, !3996, !DIExpression(), !4081)
  br label %rangeindex.loop, !dbg !4005

rangeindex.loop:                                  ; preds = %lookup.next21, %if.done9
  %62 = phi i64 [ -1, %if.done9 ], [ %63, %lookup.next21 ], !dbg !4005
  %63 = add i64 %62, 1, !dbg !4005
  %64 = icmp slt i64 %63, 14, !dbg !4005
  br i1 %64, label %rangeindex.body, label %rangeindex.done, !dbg !4005

rangeindex.body:                                  ; preds = %rangeindex.loop
  %65 = icmp uge i64 %63, 14, !dbg !4081
  br i1 %65, label %lookup.throw20, label %lookup.next21, !dbg !4081

lookup.next21:                                    ; preds = %rangeindex.body
  call void @llvm.lifetime.start.p0(i64 14, ptr %index.alloca), !dbg !4004
  store [14 x i8] %61, ptr %index.alloca, align 1, !dbg !4004
  %index.gep = getelementptr inbounds [14 x i8], ptr %index.alloca, i32 0, i64 %63, !dbg !4004
  %index.load = load i8, ptr %index.gep, align 1, !dbg !4004
  call void @llvm.lifetime.end.p0(i64 14, ptr %index.alloca), !dbg !4004
    #dbg_value(i8 %index.load, !3998, !DIExpression(), !4082)
    #dbg_value(i8 %index.load, !3998, !DIExpression(), !4083)
  call void @runtime.putchar(i8 %index.load, ptr undef), !dbg !4084
  br label %rangeindex.loop, !dbg !4005

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret void, !dbg !4085

if.else:                                          ; preds = %switch.next6
    #dbg_value(float %v, !3992, !DIExpression(), !4086)
  %66 = fcmp olt float %v, 0.000000e+00, !dbg !4087
  br i1 %66, label %if.then10, label %for.loop11, !dbg !4005

if.then10:                                        ; preds = %if.else
    #dbg_value(float %v, !3992, !DIExpression(), !4088)
  %67 = fneg float %v, !dbg !4089
    #dbg_value(float %67, !3992, !DIExpression(), !4090)
  %68 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4091
  store i8 45, ptr %68, align 1, !dbg !4091
  br label %for.loop11, !dbg !4005

for.loop11:                                       ; preds = %for.body12, %if.then10, %if.else
  %69 = phi float [ %v, %if.else ], [ %73, %for.body12 ], [ %67, %if.then10 ], !dbg !4036
  %70 = phi i64 [ 0, %if.else ], [ %72, %for.body12 ], [ 0, %if.then10 ], !dbg !4029
    #dbg_value(float %69, !3992, !DIExpression(), !4092)
  %71 = fcmp oge float %69, 1.000000e+01, !dbg !4093
  br i1 %71, label %for.body12, label %for.loop13, !dbg !4005

for.body12:                                       ; preds = %for.loop11
  %72 = add i64 %70, 1, !dbg !4094
    #dbg_value(i64 %72, !3993, !DIExpression(), !4094)
  %73 = fdiv float %69, 1.000000e+01, !dbg !4095
    #dbg_value(float %73, !3992, !DIExpression(), !4095)
  br label %for.loop11, !dbg !4005

for.loop13:                                       ; preds = %for.body14, %for.loop11
  %74 = phi float [ %69, %for.loop11 ], [ %78, %for.body14 ], !dbg !4036
  %75 = phi i64 [ %70, %for.loop11 ], [ %77, %for.body14 ], !dbg !4029
    #dbg_value(float %74, !3992, !DIExpression(), !4096)
  %76 = fcmp olt float %74, 1.000000e+00, !dbg !4097
  br i1 %76, label %for.body14, label %for.done15, !dbg !4005

for.body14:                                       ; preds = %for.loop13
  %77 = sub i64 %75, 1, !dbg !4098
    #dbg_value(i64 %77, !3993, !DIExpression(), !4098)
  %78 = fmul float %74, 1.000000e+01, !dbg !4099
    #dbg_value(float %78, !3992, !DIExpression(), !4099)
  br label %for.loop13, !dbg !4005

for.done15:                                       ; preds = %for.loop13
    #dbg_value(float 5.000000e+00, !3999, !DIExpression(), !4100)
    #dbg_value(i64 0, !4000, !DIExpression(), !4101)
  br label %for.loop16, !dbg !4005

for.loop16:                                       ; preds = %for.body17, %for.done15
  %79 = phi float [ 5.000000e+00, %for.done15 ], [ %82, %for.body17 ], !dbg !4100
  %80 = phi i64 [ 0, %for.done15 ], [ %83, %for.body17 ], !dbg !4101
    #dbg_value(i64 %80, !4000, !DIExpression(), !4102)
  %81 = icmp slt i64 %80, 7, !dbg !4103
  br i1 %81, label %for.body17, label %for.done18, !dbg !4005

for.body17:                                       ; preds = %for.loop16
  %82 = fdiv float %79, 1.000000e+01, !dbg !4104
    #dbg_value(float %82, !3999, !DIExpression(), !4104)
  %83 = add i64 %80, 1, !dbg !4105
    #dbg_value(i64 %83, !4000, !DIExpression(), !4105)
  br label %for.loop16, !dbg !4005

for.done18:                                       ; preds = %for.loop16
    #dbg_value(float %79, !3999, !DIExpression(), !4106)
  %84 = fadd float %74, %79, !dbg !4107
    #dbg_value(float %84, !3992, !DIExpression(), !4107)
    #dbg_value(float %84, !3992, !DIExpression(), !4108)
  %85 = fcmp oge float %84, 1.000000e+01, !dbg !4109
  br i1 %85, label %if.then19, label %if.done, !dbg !4005

if.then19:                                        ; preds = %for.done18
  %86 = add i64 %75, 1, !dbg !4110
    #dbg_value(i64 %86, !3993, !DIExpression(), !4110)
  %87 = fdiv float %84, 1.000000e+01, !dbg !4111
    #dbg_value(float %87, !3992, !DIExpression(), !4111)
  br label %if.done, !dbg !4005

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4048
  unreachable, !dbg !4048

lookup.throw20:                                   ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4081
  unreachable, !dbg !4081
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printfloat64(double %v, ptr %context) unnamed_addr #1 !dbg !4112 {
entry:
    #dbg_value(double %v, !4114, !DIExpression(), !4122)
    #dbg_value(double %v, !4114, !DIExpression(), !4123)
    #dbg_value(double %v, !4114, !DIExpression(), !4124)
  %index.alloca = alloca [14 x i8], align 1, !dbg !4125
  %buf = alloca [14 x i8], align 1, !dbg !4125
  %0 = fcmp une double %v, %v, !dbg !4125
  br i1 %0, label %switch.body, label %switch.next, !dbg !4126

switch.body:                                      ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.38", i64 3, ptr undef), !dbg !4127
  ret void, !dbg !4128

switch.next:                                      ; preds = %entry
    #dbg_value(double %v, !4114, !DIExpression(), !4129)
    #dbg_value(double %v, !4114, !DIExpression(), !4130)
  %1 = fadd double %v, %v, !dbg !4131
    #dbg_value(double %v, !4114, !DIExpression(), !4132)
  %2 = fcmp oeq double %1, %v, !dbg !4133
  br i1 %2, label %binop.rhs, label %binop.done, !dbg !4126

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(double %v, !4114, !DIExpression(), !4134)
  %3 = fcmp ogt double %v, 0.000000e+00, !dbg !4135
  br label %binop.done, !dbg !4126

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ false, %switch.next ], [ %3, %binop.rhs ], !dbg !4136
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4126

switch.body1:                                     ; preds = %binop.done
  call void @runtime.printstring(ptr @"runtime$string.39", i64 4, ptr undef), !dbg !4137
  ret void, !dbg !4138

switch.next2:                                     ; preds = %binop.done
    #dbg_value(double %v, !4114, !DIExpression(), !4139)
    #dbg_value(double %v, !4114, !DIExpression(), !4140)
  %5 = fadd double %v, %v, !dbg !4141
    #dbg_value(double %v, !4114, !DIExpression(), !4142)
  %6 = fcmp oeq double %5, %v, !dbg !4143
  br i1 %6, label %binop.rhs3, label %binop.done4, !dbg !4126

binop.rhs3:                                       ; preds = %switch.next2
    #dbg_value(double %v, !4114, !DIExpression(), !4144)
  %7 = fcmp olt double %v, 0.000000e+00, !dbg !4145
  br label %binop.done4, !dbg !4126

binop.done4:                                      ; preds = %binop.rhs3, %switch.next2
  %8 = phi i1 [ false, %switch.next2 ], [ %7, %binop.rhs3 ], !dbg !4146
  br i1 %8, label %switch.body5, label %switch.next6, !dbg !4126

switch.body5:                                     ; preds = %binop.done4
  call void @runtime.printstring(ptr @"runtime$string.40", i64 4, ptr undef), !dbg !4147
  ret void, !dbg !4148

switch.next6:                                     ; preds = %binop.done4
  store [14 x i8] zeroinitializer, ptr %buf, align 1, !dbg !4125
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4149
  store i8 43, ptr %9, align 1, !dbg !4149
    #dbg_value(i64 0, !4115, !DIExpression(), !4150)
    #dbg_value(double %v, !4114, !DIExpression(), !4151)
  %10 = fcmp oeq double %v, 0.000000e+00, !dbg !4152
  br i1 %10, label %if.then, label %if.else, !dbg !4126

if.then:                                          ; preds = %switch.next6
    #dbg_value(double %v, !4114, !DIExpression(), !4153)
  %11 = fdiv double 1.000000e+00, %v, !dbg !4154
  %12 = fcmp olt double %11, 0.000000e+00, !dbg !4155
  br i1 %12, label %if.then7, label %if.done, !dbg !4126

if.then7:                                         ; preds = %if.then
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4156
  store i8 45, ptr %13, align 1, !dbg !4156
  br label %if.done, !dbg !4126

if.done:                                          ; preds = %if.then19, %for.done18, %if.then7, %if.then
  %14 = phi double [ %v, %if.then ], [ %84, %for.done18 ], [ %v, %if.then7 ], [ %87, %if.then19 ], !dbg !4157
  %15 = phi i64 [ 0, %if.then ], [ %75, %for.done18 ], [ 0, %if.then7 ], [ %86, %if.then19 ], !dbg !4150
    #dbg_value(i64 0, !4116, !DIExpression(), !4158)
  br label %for.loop, !dbg !4126

for.loop:                                         ; preds = %lookup.next, %if.done
  %16 = phi double [ %14, %if.done ], [ %27, %lookup.next ], !dbg !4157
  %17 = phi i64 [ 0, %if.done ], [ %28, %lookup.next ], !dbg !4158
    #dbg_value(i64 %17, !4116, !DIExpression(), !4159)
  %18 = icmp slt i64 %17, 7, !dbg !4160
  br i1 %18, label %for.body, label %for.done, !dbg !4126

for.body:                                         ; preds = %for.loop
    #dbg_value(double %16, !4114, !DIExpression(), !4161)
  %abovemin = fcmp ole double 0xC3E0000000000000, %16, !dbg !4162
  %belowmax = fcmp ole double %16, 0x43DFFFFFFFFFFFFE, !dbg !4162
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4162
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4162
  %isnan = fcmp uno double %16, %16, !dbg !4162
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4162
  %normal = fptosi double %16 to i64, !dbg !4162
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4162
    #dbg_value(i64 %19, !4117, !DIExpression(), !4163)
    #dbg_value(i64 %17, !4116, !DIExpression(), !4164)
  %20 = add i64 %17, 2, !dbg !4165
    #dbg_value(i64 %19, !4117, !DIExpression(), !4166)
  %21 = add i64 %19, 48, !dbg !4167
  %22 = trunc i64 %21 to i8, !dbg !4168
  %23 = icmp uge i64 %20, 14, !dbg !4169
  br i1 %23, label %lookup.throw, label %lookup.next, !dbg !4169

lookup.next:                                      ; preds = %for.body
  %24 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 %20, !dbg !4169
  store i8 %22, ptr %24, align 1, !dbg !4169
    #dbg_value(i64 %19, !4117, !DIExpression(), !4170)
  %25 = sitofp i64 %19 to double, !dbg !4171
  %26 = fsub double %16, %25, !dbg !4172
    #dbg_value(double %26, !4114, !DIExpression(), !4172)
  %27 = fmul double %26, 1.000000e+01, !dbg !4173
    #dbg_value(double %27, !4114, !DIExpression(), !4173)
  %28 = add i64 %17, 1, !dbg !4174
    #dbg_value(i64 %28, !4116, !DIExpression(), !4174)
  br label %for.loop, !dbg !4126

for.done:                                         ; preds = %for.loop
  %29 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4175
  %30 = load i8, ptr %29, align 1, !dbg !4175
  %31 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 1, !dbg !4176
  store i8 %30, ptr %31, align 1, !dbg !4176
  %32 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4177
  store i8 46, ptr %32, align 1, !dbg !4177
  %33 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 9, !dbg !4178
  store i8 101, ptr %33, align 1, !dbg !4178
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4179
  store i8 43, ptr %34, align 1, !dbg !4179
    #dbg_value(i64 %15, !4115, !DIExpression(), !4180)
  %35 = icmp slt i64 %15, 0, !dbg !4181
  br i1 %35, label %if.then8, label %if.done9, !dbg !4126

if.then8:                                         ; preds = %for.done
    #dbg_value(i64 %15, !4115, !DIExpression(), !4182)
  %36 = sub i64 0, %15, !dbg !4183
    #dbg_value(i64 %36, !4115, !DIExpression(), !4184)
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4185
  store i8 45, ptr %37, align 1, !dbg !4185
  br label %if.done9, !dbg !4126

if.done9:                                         ; preds = %if.then8, %for.done
  %38 = phi i64 [ %15, %for.done ], [ %36, %if.then8 ], !dbg !4150
    #dbg_value(i64 %38, !4115, !DIExpression(), !4186)
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !4187
  %40 = and i1 false, %39, !dbg !4187
  %41 = select i1 %40, i64 1, i64 100, !dbg !4187
  %42 = sdiv i64 %38, %41, !dbg !4187
  %43 = trunc i64 %42 to i8, !dbg !4188
  %44 = add i8 %43, 48, !dbg !4189
  %45 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 11, !dbg !4190
  store i8 %44, ptr %45, align 1, !dbg !4190
    #dbg_value(i64 %38, !4115, !DIExpression(), !4191)
  %46 = icmp eq i64 %38, -9223372036854775808, !dbg !4192
  %47 = and i1 false, %46, !dbg !4192
  %48 = select i1 %47, i64 1, i64 10, !dbg !4192
  %49 = sdiv i64 %38, %48, !dbg !4192
  %50 = trunc i64 %49 to i8, !dbg !4193
  %51 = urem i8 %50, 10, !dbg !4194
  %52 = add i8 %51, 48, !dbg !4195
  %53 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 12, !dbg !4196
  store i8 %52, ptr %53, align 1, !dbg !4196
    #dbg_value(i64 %38, !4115, !DIExpression(), !4197)
  %54 = icmp eq i64 %38, -9223372036854775808, !dbg !4198
  %55 = and i1 false, %54, !dbg !4198
  %56 = select i1 %55, i64 1, i64 10, !dbg !4198
  %57 = srem i64 %38, %56, !dbg !4198
  %58 = trunc i64 %57 to i8, !dbg !4199
  %59 = add i8 %58, 48, !dbg !4200
  %60 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 13, !dbg !4201
  store i8 %59, ptr %60, align 1, !dbg !4201
  %61 = load [14 x i8], ptr %buf, align 1, !dbg !4202
    #dbg_value([14 x i8] %61, !4118, !DIExpression(), !4202)
  br label %rangeindex.loop, !dbg !4126

rangeindex.loop:                                  ; preds = %lookup.next21, %if.done9
  %62 = phi i64 [ -1, %if.done9 ], [ %63, %lookup.next21 ], !dbg !4126
  %63 = add i64 %62, 1, !dbg !4126
  %64 = icmp slt i64 %63, 14, !dbg !4126
  br i1 %64, label %rangeindex.body, label %rangeindex.done, !dbg !4126

rangeindex.body:                                  ; preds = %rangeindex.loop
  %65 = icmp uge i64 %63, 14, !dbg !4202
  br i1 %65, label %lookup.throw20, label %lookup.next21, !dbg !4202

lookup.next21:                                    ; preds = %rangeindex.body
  call void @llvm.lifetime.start.p0(i64 14, ptr %index.alloca), !dbg !4125
  store [14 x i8] %61, ptr %index.alloca, align 1, !dbg !4125
  %index.gep = getelementptr inbounds [14 x i8], ptr %index.alloca, i32 0, i64 %63, !dbg !4125
  %index.load = load i8, ptr %index.gep, align 1, !dbg !4125
  call void @llvm.lifetime.end.p0(i64 14, ptr %index.alloca), !dbg !4125
    #dbg_value(i8 %index.load, !4119, !DIExpression(), !4203)
    #dbg_value(i8 %index.load, !4119, !DIExpression(), !4204)
  call void @runtime.putchar(i8 %index.load, ptr undef), !dbg !4205
  br label %rangeindex.loop, !dbg !4126

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret void, !dbg !4206

if.else:                                          ; preds = %switch.next6
    #dbg_value(double %v, !4114, !DIExpression(), !4207)
  %66 = fcmp olt double %v, 0.000000e+00, !dbg !4208
  br i1 %66, label %if.then10, label %for.loop11, !dbg !4126

if.then10:                                        ; preds = %if.else
    #dbg_value(double %v, !4114, !DIExpression(), !4209)
  %67 = fneg double %v, !dbg !4210
    #dbg_value(double %67, !4114, !DIExpression(), !4211)
  %68 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4212
  store i8 45, ptr %68, align 1, !dbg !4212
  br label %for.loop11, !dbg !4126

for.loop11:                                       ; preds = %for.body12, %if.then10, %if.else
  %69 = phi double [ %v, %if.else ], [ %73, %for.body12 ], [ %67, %if.then10 ], !dbg !4157
  %70 = phi i64 [ 0, %if.else ], [ %72, %for.body12 ], [ 0, %if.then10 ], !dbg !4150
    #dbg_value(double %69, !4114, !DIExpression(), !4213)
  %71 = fcmp oge double %69, 1.000000e+01, !dbg !4214
  br i1 %71, label %for.body12, label %for.loop13, !dbg !4126

for.body12:                                       ; preds = %for.loop11
  %72 = add i64 %70, 1, !dbg !4215
    #dbg_value(i64 %72, !4115, !DIExpression(), !4215)
  %73 = fdiv double %69, 1.000000e+01, !dbg !4216
    #dbg_value(double %73, !4114, !DIExpression(), !4216)
  br label %for.loop11, !dbg !4126

for.loop13:                                       ; preds = %for.body14, %for.loop11
  %74 = phi double [ %69, %for.loop11 ], [ %78, %for.body14 ], !dbg !4157
  %75 = phi i64 [ %70, %for.loop11 ], [ %77, %for.body14 ], !dbg !4150
    #dbg_value(double %74, !4114, !DIExpression(), !4217)
  %76 = fcmp olt double %74, 1.000000e+00, !dbg !4218
  br i1 %76, label %for.body14, label %for.done15, !dbg !4126

for.body14:                                       ; preds = %for.loop13
  %77 = sub i64 %75, 1, !dbg !4219
    #dbg_value(i64 %77, !4115, !DIExpression(), !4219)
  %78 = fmul double %74, 1.000000e+01, !dbg !4220
    #dbg_value(double %78, !4114, !DIExpression(), !4220)
  br label %for.loop13, !dbg !4126

for.done15:                                       ; preds = %for.loop13
    #dbg_value(double 5.000000e+00, !4120, !DIExpression(), !4221)
    #dbg_value(i64 0, !4121, !DIExpression(), !4222)
  br label %for.loop16, !dbg !4126

for.loop16:                                       ; preds = %for.body17, %for.done15
  %79 = phi double [ 5.000000e+00, %for.done15 ], [ %82, %for.body17 ], !dbg !4221
  %80 = phi i64 [ 0, %for.done15 ], [ %83, %for.body17 ], !dbg !4222
    #dbg_value(i64 %80, !4121, !DIExpression(), !4223)
  %81 = icmp slt i64 %80, 7, !dbg !4224
  br i1 %81, label %for.body17, label %for.done18, !dbg !4126

for.body17:                                       ; preds = %for.loop16
  %82 = fdiv double %79, 1.000000e+01, !dbg !4225
    #dbg_value(double %82, !4120, !DIExpression(), !4225)
  %83 = add i64 %80, 1, !dbg !4226
    #dbg_value(i64 %83, !4121, !DIExpression(), !4226)
  br label %for.loop16, !dbg !4126

for.done18:                                       ; preds = %for.loop16
    #dbg_value(double %79, !4120, !DIExpression(), !4227)
  %84 = fadd double %74, %79, !dbg !4228
    #dbg_value(double %84, !4114, !DIExpression(), !4228)
    #dbg_value(double %84, !4114, !DIExpression(), !4229)
  %85 = fcmp oge double %84, 1.000000e+01, !dbg !4230
  br i1 %85, label %if.then19, label %if.done, !dbg !4126

if.then19:                                        ; preds = %for.done18
  %86 = add i64 %75, 1, !dbg !4231
    #dbg_value(i64 %86, !4115, !DIExpression(), !4231)
  %87 = fdiv double %84, 1.000000e+01, !dbg !4232
    #dbg_value(double %87, !4114, !DIExpression(), !4232)
  br label %if.done, !dbg !4126

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4169
  unreachable, !dbg !4169

lookup.throw20:                                   ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4202
  unreachable, !dbg !4202
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printcomplex64(float %c.r, float %c.i, ptr %context) unnamed_addr #1 !dbg !4233 {
entry:
  %0 = insertvalue { float, float } zeroinitializer, float %c.r, 0, !dbg !4238
  %1 = insertvalue { float, float } %0, float %c.i, 1, !dbg !4238
    #dbg_value(float %c.r, !4237, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4238)
    #dbg_value(float %c.i, !4237, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4238)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4239
    #dbg_value({ float, float } %1, !4237, !DIExpression(), !4240)
  %real = extractvalue { float, float } %1, 0, !dbg !4241
  call void @runtime.printfloat32(float %real, ptr undef), !dbg !4242
    #dbg_value({ float, float } %1, !4237, !DIExpression(), !4243)
  %imag = extractvalue { float, float } %1, 1, !dbg !4244
  call void @runtime.printfloat32(float %imag, ptr undef), !dbg !4245
  call void @runtime.printstring(ptr @"runtime$string.41", i64 2, ptr undef), !dbg !4246
  ret void, !dbg !4247
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printcomplex128(double %c.r, double %c.i, ptr %context) unnamed_addr #1 !dbg !4248 {
entry:
  %0 = insertvalue { double, double } zeroinitializer, double %c.r, 0, !dbg !4253
  %1 = insertvalue { double, double } %0, double %c.i, 1, !dbg !4253
    #dbg_value(double %c.r, !4252, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4253)
    #dbg_value(double %c.i, !4252, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4253)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4254
    #dbg_value({ double, double } %1, !4252, !DIExpression(), !4255)
  %real = extractvalue { double, double } %1, 0, !dbg !4256
  call void @runtime.printfloat64(double %real, ptr undef), !dbg !4257
    #dbg_value({ double, double } %1, !4252, !DIExpression(), !4258)
  %imag = extractvalue { double, double } %1, 1, !dbg !4259
  call void @runtime.printfloat64(double %imag, ptr undef), !dbg !4260
  call void @runtime.printstring(ptr @"runtime$string.42", i64 2, ptr undef), !dbg !4261
  ret void, !dbg !4262
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
define internal void @runtime._panic(ptr %message.typecode, ptr %message.value, ptr %context) #1 !dbg !4263 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %message.typecode, 0, !dbg !4266
  %1 = insertvalue { ptr, ptr } %0, ptr %message.value, 1, !dbg !4266
    #dbg_value(ptr %message.typecode, !4265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4266)
    #dbg_value(ptr %message.value, !4265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4266)
    #dbg_value({ ptr, ptr } %1, !4265, !DIExpression(), !4267)
  %2 = extractvalue { ptr, ptr } %1, 0, !dbg !4268
  %3 = extractvalue { ptr, ptr } %1, 1, !dbg !4268
  call void @runtime.panicOrGoexit(ptr %2, ptr %3, i8 1, ptr undef), !dbg !4268
  ret void, !dbg !4269
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @runtime.stringEqual(ptr readonly %x.data, i64 %x.len, ptr readonly %y.data, i64 %y.len, ptr %context) #1 !dbg !4270 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %x.data, 0, !dbg !4278
  %1 = insertvalue %runtime._string %0, i64 %x.len, 1, !dbg !4278
    #dbg_value(ptr %x.data, !4275, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4278)
    #dbg_value(i64 %x.len, !4275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4278)
  %2 = insertvalue %runtime._string zeroinitializer, ptr %y.data, 0, !dbg !4278
  %3 = insertvalue %runtime._string %2, i64 %y.len, 1, !dbg !4278
    #dbg_value(ptr %y.data, !4276, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4278)
    #dbg_value(i64 %y.len, !4276, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4278)
    #dbg_value(%runtime._string %1, !4275, !DIExpression(), !4279)
  %len = extractvalue %runtime._string %1, 1, !dbg !4280
    #dbg_value(%runtime._string %3, !4276, !DIExpression(), !4281)
  %len3 = extractvalue %runtime._string %3, 1, !dbg !4282
  %4 = icmp ne i64 %len, %len3, !dbg !4283
  br i1 %4, label %if.then, label %if.done, !dbg !4284

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !4285

if.done:                                          ; preds = %entry
    #dbg_value(i64 0, !4277, !DIExpression(), !4286)
  br label %for.loop, !dbg !4284

for.loop:                                         ; preds = %if.done2, %if.done
  %5 = phi i64 [ 0, %if.done ], [ %14, %if.done2 ], !dbg !4286
    #dbg_value(i64 %5, !4277, !DIExpression(), !4287)
    #dbg_value(%runtime._string %1, !4275, !DIExpression(), !4288)
  %len4 = extractvalue %runtime._string %1, 1, !dbg !4289
  %6 = icmp slt i64 %5, %len4, !dbg !4290
  br i1 %6, label %for.body, label %for.done, !dbg !4284

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4277, !DIExpression(), !4291)
    #dbg_value(%runtime._string %1, !4275, !DIExpression(), !4292)
  %len5 = extractvalue %runtime._string %1, 1, !dbg !4293
  %7 = extractvalue %runtime._string %1, 0, !dbg !4293
  %8 = getelementptr inbounds i8, ptr %7, i64 %5, !dbg !4293
  %9 = load i8, ptr %8, align 1, !dbg !4293
    #dbg_value(i64 %5, !4277, !DIExpression(), !4294)
    #dbg_value(%runtime._string %3, !4276, !DIExpression(), !4295)
  %len6 = extractvalue %runtime._string %3, 1, !dbg !4296
  %10 = extractvalue %runtime._string %3, 0, !dbg !4296
  %11 = getelementptr inbounds i8, ptr %10, i64 %5, !dbg !4296
  %12 = load i8, ptr %11, align 1, !dbg !4296
  %13 = icmp ne i8 %9, %12, !dbg !4297
  br i1 %13, label %if.then1, label %if.done2, !dbg !4284

if.then1:                                         ; preds = %for.body
  ret i1 false, !dbg !4298

if.done2:                                         ; preds = %for.body
  %14 = add i64 %5, 1, !dbg !4299
    #dbg_value(i64 %14, !4277, !DIExpression(), !4299)
  br label %for.loop, !dbg !4284

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4300
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.slicePanic(ptr %context) #1 !dbg !4301 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4302
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.20", i64 18, ptr undef), !dbg !4303
  ret void, !dbg !4304
}

; Function Attrs: nounwind uwtable(sync)
define double @fminimum(double %x, double %y) #1 !dbg !4305 {
entry:
    #dbg_value(double %x, !4309, !DIExpression(), !4311)
    #dbg_value(double %y, !4310, !DIExpression(), !4311)
    #dbg_value(double %x, !4309, !DIExpression(), !4312)
    #dbg_value(double %y, !4310, !DIExpression(), !4313)
  %0 = call double @runtime.minimumFloat64(double %x, double %y, ptr undef), !dbg !4314
  ret double %0, !dbg !4315
}

; Function Attrs: nounwind uwtable(sync)
define internal double @runtime.minimumFloat64(double %x, double %y, ptr %context) unnamed_addr #1 !dbg !4316 {
entry:
    #dbg_value(double %x, !4318, !DIExpression(), !4320)
    #dbg_value(double %y, !4319, !DIExpression(), !4320)
    #dbg_value(double %x, !4318, !DIExpression(), !4321)
    #dbg_value(double %y, !4319, !DIExpression(), !4322)
  %0 = call double @"runtime.minimumFloat[float64 int64]"(double %x, double %y, i64 9218868437227405313, i64 9223372036854775807, ptr undef), !dbg !4323
  ret double %0, !dbg !4324
}

; Function Attrs: nounwind uwtable(sync)
define internal double @"runtime.minimumFloat[float64 int64]"(double %x, double %y, i64 %minPosNaN, i64 %magMask, ptr %context) unnamed_addr #1 !dbg !4325 {
entry:
    #dbg_value(double %x, !4329, !DIExpression(), !4335)
    #dbg_value(double %y, !4330, !DIExpression(), !4335)
    #dbg_value(i64 %minPosNaN, !4331, !DIExpression(), !4335)
    #dbg_value(i64 %magMask, !4332, !DIExpression(), !4335)
  %x6 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4336
  store double %x, ptr %x6, align 8, !dbg !4336
  %y7 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4337
  store double %y, ptr %y7, align 8, !dbg !4337
  %0 = load i64, ptr %x6, align 8, !dbg !4338
    #dbg_value(i64 %0, !4333, !DIExpression(), !4339)
  %1 = load i64, ptr %y7, align 8, !dbg !4340
    #dbg_value(i64 %1, !4334, !DIExpression(), !4341)
    #dbg_value(i64 %0, !4333, !DIExpression(), !4342)
    #dbg_value(i64 %minPosNaN, !4331, !DIExpression(), !4343)
  %2 = icmp sge i64 %0, %minPosNaN, !dbg !4344
  br i1 %2, label %switch.body, label %switch.next, !dbg !4345

switch.body:                                      ; preds = %entry
  %3 = load double, ptr %x6, align 8, !dbg !4346
    #dbg_value(double %3, !4329, !DIExpression(), !4346)
  ret double %3, !dbg !4347

switch.next:                                      ; preds = %entry
    #dbg_value(i64 %1, !4334, !DIExpression(), !4348)
    #dbg_value(i64 %minPosNaN, !4331, !DIExpression(), !4349)
  %4 = icmp sge i64 %1, %minPosNaN, !dbg !4350
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4345

switch.body1:                                     ; preds = %switch.next
  %5 = load double, ptr %y7, align 8, !dbg !4351
    #dbg_value(double %5, !4330, !DIExpression(), !4351)
  ret double %5, !dbg !4352

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i64 %0, !4333, !DIExpression(), !4353)
  %6 = icmp slt i64 %0, 0, !dbg !4354
  br i1 %6, label %if.then, label %if.done, !dbg !4345

if.then:                                          ; preds = %switch.next2
    #dbg_value(i64 %magMask, !4332, !DIExpression(), !4355)
  %7 = xor i64 %0, %magMask, !dbg !4356
    #dbg_value(i64 %7, !4333, !DIExpression(), !4356)
  br label %if.done, !dbg !4345

if.done:                                          ; preds = %if.then, %switch.next2
  %8 = phi i64 [ %0, %switch.next2 ], [ %7, %if.then ], !dbg !4339
    #dbg_value(i64 %1, !4334, !DIExpression(), !4357)
  %9 = icmp slt i64 %1, 0, !dbg !4358
  br i1 %9, label %if.then3, label %if.done4, !dbg !4345

if.then3:                                         ; preds = %if.done
    #dbg_value(i64 %magMask, !4332, !DIExpression(), !4359)
  %10 = xor i64 %1, %magMask, !dbg !4360
    #dbg_value(i64 %10, !4334, !DIExpression(), !4360)
  br label %if.done4, !dbg !4345

if.done4:                                         ; preds = %if.then3, %if.done
  %11 = phi i64 [ %1, %if.done ], [ %10, %if.then3 ], !dbg !4341
    #dbg_value(i64 %8, !4333, !DIExpression(), !4361)
    #dbg_value(i64 %11, !4334, !DIExpression(), !4362)
  %12 = icmp sle i64 %8, %11, !dbg !4363
  br i1 %12, label %if.then5, label %if.else, !dbg !4345

if.then5:                                         ; preds = %if.done4
  %13 = load double, ptr %x6, align 8, !dbg !4364
    #dbg_value(double %13, !4329, !DIExpression(), !4364)
  ret double %13, !dbg !4365

if.else:                                          ; preds = %if.done4
  %14 = load double, ptr %y7, align 8, !dbg !4366
    #dbg_value(double %14, !4330, !DIExpression(), !4366)
  ret double %14, !dbg !4367
}

; Function Attrs: nounwind uwtable(sync)
define float @fminimumf(float %x, float %y) #1 !dbg !4368 {
entry:
    #dbg_value(float %x, !4372, !DIExpression(), !4374)
    #dbg_value(float %y, !4373, !DIExpression(), !4374)
    #dbg_value(float %x, !4372, !DIExpression(), !4375)
    #dbg_value(float %y, !4373, !DIExpression(), !4376)
  %0 = call float @runtime.minimumFloat32(float %x, float %y, ptr undef), !dbg !4377
  ret float %0, !dbg !4378
}

; Function Attrs: nounwind uwtable(sync)
define internal float @runtime.minimumFloat32(float %x, float %y, ptr %context) unnamed_addr #1 !dbg !4379 {
entry:
    #dbg_value(float %x, !4381, !DIExpression(), !4383)
    #dbg_value(float %y, !4382, !DIExpression(), !4383)
    #dbg_value(float %x, !4381, !DIExpression(), !4384)
    #dbg_value(float %y, !4382, !DIExpression(), !4385)
  %0 = call float @"runtime.minimumFloat[float32 int32]"(float %x, float %y, i32 2139095041, i32 2147483647, ptr undef), !dbg !4386
  ret float %0, !dbg !4387
}

; Function Attrs: nounwind uwtable(sync)
define internal float @"runtime.minimumFloat[float32 int32]"(float %x, float %y, i32 %minPosNaN, i32 %magMask, ptr %context) unnamed_addr #1 !dbg !4388 {
entry:
    #dbg_value(float %x, !4392, !DIExpression(), !4398)
    #dbg_value(float %y, !4393, !DIExpression(), !4398)
    #dbg_value(i32 %minPosNaN, !4394, !DIExpression(), !4398)
    #dbg_value(i32 %magMask, !4395, !DIExpression(), !4398)
  %x6 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4399
  store float %x, ptr %x6, align 4, !dbg !4399
  %y7 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4400
  store float %y, ptr %y7, align 4, !dbg !4400
  %0 = load i32, ptr %x6, align 4, !dbg !4401
    #dbg_value(i32 %0, !4396, !DIExpression(), !4402)
  %1 = load i32, ptr %y7, align 4, !dbg !4403
    #dbg_value(i32 %1, !4397, !DIExpression(), !4404)
    #dbg_value(i32 %0, !4396, !DIExpression(), !4405)
    #dbg_value(i32 %minPosNaN, !4394, !DIExpression(), !4406)
  %2 = icmp sge i32 %0, %minPosNaN, !dbg !4407
  br i1 %2, label %switch.body, label %switch.next, !dbg !4408

switch.body:                                      ; preds = %entry
  %3 = load float, ptr %x6, align 4, !dbg !4409
    #dbg_value(float %3, !4392, !DIExpression(), !4409)
  ret float %3, !dbg !4410

switch.next:                                      ; preds = %entry
    #dbg_value(i32 %1, !4397, !DIExpression(), !4411)
    #dbg_value(i32 %minPosNaN, !4394, !DIExpression(), !4412)
  %4 = icmp sge i32 %1, %minPosNaN, !dbg !4413
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4408

switch.body1:                                     ; preds = %switch.next
  %5 = load float, ptr %y7, align 4, !dbg !4414
    #dbg_value(float %5, !4393, !DIExpression(), !4414)
  ret float %5, !dbg !4415

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i32 %0, !4396, !DIExpression(), !4416)
  %6 = icmp slt i32 %0, 0, !dbg !4417
  br i1 %6, label %if.then, label %if.done, !dbg !4408

if.then:                                          ; preds = %switch.next2
    #dbg_value(i32 %magMask, !4395, !DIExpression(), !4418)
  %7 = xor i32 %0, %magMask, !dbg !4419
    #dbg_value(i32 %7, !4396, !DIExpression(), !4419)
  br label %if.done, !dbg !4408

if.done:                                          ; preds = %if.then, %switch.next2
  %8 = phi i32 [ %0, %switch.next2 ], [ %7, %if.then ], !dbg !4402
    #dbg_value(i32 %1, !4397, !DIExpression(), !4420)
  %9 = icmp slt i32 %1, 0, !dbg !4421
  br i1 %9, label %if.then3, label %if.done4, !dbg !4408

if.then3:                                         ; preds = %if.done
    #dbg_value(i32 %magMask, !4395, !DIExpression(), !4422)
  %10 = xor i32 %1, %magMask, !dbg !4423
    #dbg_value(i32 %10, !4397, !DIExpression(), !4423)
  br label %if.done4, !dbg !4408

if.done4:                                         ; preds = %if.then3, %if.done
  %11 = phi i32 [ %1, %if.done ], [ %10, %if.then3 ], !dbg !4404
    #dbg_value(i32 %8, !4396, !DIExpression(), !4424)
    #dbg_value(i32 %11, !4397, !DIExpression(), !4425)
  %12 = icmp sle i32 %8, %11, !dbg !4426
  br i1 %12, label %if.then5, label %if.else, !dbg !4408

if.then5:                                         ; preds = %if.done4
  %13 = load float, ptr %x6, align 4, !dbg !4427
    #dbg_value(float %13, !4392, !DIExpression(), !4427)
  ret float %13, !dbg !4428

if.else:                                          ; preds = %if.done4
  %14 = load float, ptr %y7, align 4, !dbg !4429
    #dbg_value(float %14, !4393, !DIExpression(), !4429)
  ret float %14, !dbg !4430
}

; Function Attrs: nounwind uwtable(sync)
define double @fmaximum(double %x, double %y) #1 !dbg !4431 {
entry:
    #dbg_value(double %x, !4433, !DIExpression(), !4435)
    #dbg_value(double %y, !4434, !DIExpression(), !4435)
    #dbg_value(double %x, !4433, !DIExpression(), !4436)
    #dbg_value(double %y, !4434, !DIExpression(), !4437)
  %0 = call double @runtime.maximumFloat64(double %x, double %y, ptr undef), !dbg !4438
  ret double %0, !dbg !4439
}

; Function Attrs: nounwind uwtable(sync)
define internal double @runtime.maximumFloat64(double %x, double %y, ptr %context) unnamed_addr #1 !dbg !4440 {
entry:
    #dbg_value(double %x, !4442, !DIExpression(), !4444)
    #dbg_value(double %y, !4443, !DIExpression(), !4444)
    #dbg_value(double %x, !4442, !DIExpression(), !4445)
    #dbg_value(double %y, !4443, !DIExpression(), !4446)
  %0 = call double @"runtime.maximumFloat[float64 int64]"(double %x, double %y, i64 9218868437227405313, i64 9223372036854775807, ptr undef), !dbg !4447
  ret double %0, !dbg !4448
}

; Function Attrs: nounwind uwtable(sync)
define internal double @"runtime.maximumFloat[float64 int64]"(double %x, double %y, i64 %minPosNaN, i64 %magMask, ptr %context) unnamed_addr #1 !dbg !4449 {
entry:
    #dbg_value(double %x, !4451, !DIExpression(), !4458)
    #dbg_value(double %y, !4452, !DIExpression(), !4458)
    #dbg_value(i64 %minPosNaN, !4453, !DIExpression(), !4458)
    #dbg_value(i64 %magMask, !4454, !DIExpression(), !4458)
  %x6 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4459
  store double %x, ptr %x6, align 8, !dbg !4459
  %y7 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4460
  store double %y, ptr %y7, align 8, !dbg !4460
  %0 = load i64, ptr %x6, align 8, !dbg !4461
    #dbg_value(i64 %0, !4455, !DIExpression(), !4462)
  %1 = load i64, ptr %y7, align 8, !dbg !4463
    #dbg_value(i64 %1, !4456, !DIExpression(), !4464)
    #dbg_value(i64 %0, !4455, !DIExpression(), !4465)
  %2 = icmp slt i64 %0, 0, !dbg !4466
  br i1 %2, label %if.then, label %if.done, !dbg !4467

if.then:                                          ; preds = %entry
    #dbg_value(i64 %magMask, !4454, !DIExpression(), !4468)
  %3 = xor i64 %0, %magMask, !dbg !4469
    #dbg_value(i64 %3, !4455, !DIExpression(), !4469)
  br label %if.done, !dbg !4467

if.done:                                          ; preds = %if.then, %entry
  %4 = phi i64 [ %0, %entry ], [ %3, %if.then ], !dbg !4462
    #dbg_value(i64 %1, !4456, !DIExpression(), !4470)
  %5 = icmp slt i64 %1, 0, !dbg !4471
  br i1 %5, label %if.then1, label %if.done2, !dbg !4467

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %magMask, !4454, !DIExpression(), !4472)
  %6 = xor i64 %1, %magMask, !dbg !4473
    #dbg_value(i64 %6, !4456, !DIExpression(), !4473)
  br label %if.done2, !dbg !4467

if.done2:                                         ; preds = %if.then1, %if.done
  %7 = phi i64 [ %1, %if.done ], [ %6, %if.then1 ], !dbg !4464
    #dbg_value(i64 %minPosNaN, !4453, !DIExpression(), !4474)
  %8 = xor i64 %minPosNaN, -1, !dbg !4475
    #dbg_value(i64 %8, !4457, !DIExpression(), !4476)
    #dbg_value(i64 %4, !4455, !DIExpression(), !4477)
    #dbg_value(i64 %8, !4457, !DIExpression(), !4478)
  %9 = icmp sle i64 %4, %8, !dbg !4479
  br i1 %9, label %switch.body, label %switch.next, !dbg !4467

switch.body:                                      ; preds = %if.done2
  %10 = load double, ptr %x6, align 8, !dbg !4480
    #dbg_value(double %10, !4451, !DIExpression(), !4480)
  ret double %10, !dbg !4481

switch.next:                                      ; preds = %if.done2
    #dbg_value(i64 %7, !4456, !DIExpression(), !4482)
    #dbg_value(i64 %8, !4457, !DIExpression(), !4483)
  %11 = icmp sle i64 %7, %8, !dbg !4484
  br i1 %11, label %switch.body3, label %switch.next4, !dbg !4467

switch.body3:                                     ; preds = %switch.next
  %12 = load double, ptr %y7, align 8, !dbg !4485
    #dbg_value(double %12, !4452, !DIExpression(), !4485)
  ret double %12, !dbg !4486

switch.next4:                                     ; preds = %switch.next
    #dbg_value(i64 %4, !4455, !DIExpression(), !4487)
    #dbg_value(i64 %7, !4456, !DIExpression(), !4488)
  %13 = icmp sge i64 %4, %7, !dbg !4489
  br i1 %13, label %if.then5, label %if.else, !dbg !4467

if.then5:                                         ; preds = %switch.next4
  %14 = load double, ptr %x6, align 8, !dbg !4490
    #dbg_value(double %14, !4451, !DIExpression(), !4490)
  ret double %14, !dbg !4491

if.else:                                          ; preds = %switch.next4
  %15 = load double, ptr %y7, align 8, !dbg !4492
    #dbg_value(double %15, !4452, !DIExpression(), !4492)
  ret double %15, !dbg !4493
}

; Function Attrs: nounwind uwtable(sync)
define float @fmaximumf(float %x, float %y) #1 !dbg !4494 {
entry:
    #dbg_value(float %x, !4496, !DIExpression(), !4498)
    #dbg_value(float %y, !4497, !DIExpression(), !4498)
    #dbg_value(float %x, !4496, !DIExpression(), !4499)
    #dbg_value(float %y, !4497, !DIExpression(), !4500)
  %0 = call float @runtime.maximumFloat32(float %x, float %y, ptr undef), !dbg !4501
  ret float %0, !dbg !4502
}

; Function Attrs: nounwind uwtable(sync)
define internal float @runtime.maximumFloat32(float %x, float %y, ptr %context) unnamed_addr #1 !dbg !4503 {
entry:
    #dbg_value(float %x, !4505, !DIExpression(), !4507)
    #dbg_value(float %y, !4506, !DIExpression(), !4507)
    #dbg_value(float %x, !4505, !DIExpression(), !4508)
    #dbg_value(float %y, !4506, !DIExpression(), !4509)
  %0 = call float @"runtime.maximumFloat[float32 int32]"(float %x, float %y, i32 2139095041, i32 2147483647, ptr undef), !dbg !4510
  ret float %0, !dbg !4511
}

; Function Attrs: nounwind uwtable(sync)
define internal float @"runtime.maximumFloat[float32 int32]"(float %x, float %y, i32 %minPosNaN, i32 %magMask, ptr %context) unnamed_addr #1 !dbg !4512 {
entry:
    #dbg_value(float %x, !4514, !DIExpression(), !4521)
    #dbg_value(float %y, !4515, !DIExpression(), !4521)
    #dbg_value(i32 %minPosNaN, !4516, !DIExpression(), !4521)
    #dbg_value(i32 %magMask, !4517, !DIExpression(), !4521)
  %x6 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4522
  store float %x, ptr %x6, align 4, !dbg !4522
  %y7 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4523
  store float %y, ptr %y7, align 4, !dbg !4523
  %0 = load i32, ptr %x6, align 4, !dbg !4524
    #dbg_value(i32 %0, !4518, !DIExpression(), !4525)
  %1 = load i32, ptr %y7, align 4, !dbg !4526
    #dbg_value(i32 %1, !4519, !DIExpression(), !4527)
    #dbg_value(i32 %0, !4518, !DIExpression(), !4528)
  %2 = icmp slt i32 %0, 0, !dbg !4529
  br i1 %2, label %if.then, label %if.done, !dbg !4530

if.then:                                          ; preds = %entry
    #dbg_value(i32 %magMask, !4517, !DIExpression(), !4531)
  %3 = xor i32 %0, %magMask, !dbg !4532
    #dbg_value(i32 %3, !4518, !DIExpression(), !4532)
  br label %if.done, !dbg !4530

if.done:                                          ; preds = %if.then, %entry
  %4 = phi i32 [ %0, %entry ], [ %3, %if.then ], !dbg !4525
    #dbg_value(i32 %1, !4519, !DIExpression(), !4533)
  %5 = icmp slt i32 %1, 0, !dbg !4534
  br i1 %5, label %if.then1, label %if.done2, !dbg !4530

if.then1:                                         ; preds = %if.done
    #dbg_value(i32 %magMask, !4517, !DIExpression(), !4535)
  %6 = xor i32 %1, %magMask, !dbg !4536
    #dbg_value(i32 %6, !4519, !DIExpression(), !4536)
  br label %if.done2, !dbg !4530

if.done2:                                         ; preds = %if.then1, %if.done
  %7 = phi i32 [ %1, %if.done ], [ %6, %if.then1 ], !dbg !4527
    #dbg_value(i32 %minPosNaN, !4516, !DIExpression(), !4537)
  %8 = xor i32 %minPosNaN, -1, !dbg !4538
    #dbg_value(i32 %8, !4520, !DIExpression(), !4539)
    #dbg_value(i32 %4, !4518, !DIExpression(), !4540)
    #dbg_value(i32 %8, !4520, !DIExpression(), !4541)
  %9 = icmp sle i32 %4, %8, !dbg !4542
  br i1 %9, label %switch.body, label %switch.next, !dbg !4530

switch.body:                                      ; preds = %if.done2
  %10 = load float, ptr %x6, align 4, !dbg !4543
    #dbg_value(float %10, !4514, !DIExpression(), !4543)
  ret float %10, !dbg !4544

switch.next:                                      ; preds = %if.done2
    #dbg_value(i32 %7, !4519, !DIExpression(), !4545)
    #dbg_value(i32 %8, !4520, !DIExpression(), !4546)
  %11 = icmp sle i32 %7, %8, !dbg !4547
  br i1 %11, label %switch.body3, label %switch.next4, !dbg !4530

switch.body3:                                     ; preds = %switch.next
  %12 = load float, ptr %y7, align 4, !dbg !4548
    #dbg_value(float %12, !4515, !DIExpression(), !4548)
  ret float %12, !dbg !4549

switch.next4:                                     ; preds = %switch.next
    #dbg_value(i32 %4, !4518, !DIExpression(), !4550)
    #dbg_value(i32 %7, !4519, !DIExpression(), !4551)
  %13 = icmp sge i32 %4, %7, !dbg !4552
  br i1 %13, label %if.then5, label %if.else, !dbg !4530

if.then5:                                         ; preds = %switch.next4
  %14 = load float, ptr %x6, align 4, !dbg !4553
    #dbg_value(float %14, !4514, !DIExpression(), !4553)
  ret float %14, !dbg !4554

if.else:                                          ; preds = %switch.next4
  %15 = load float, ptr %y7, align 4, !dbg !4555
    #dbg_value(float %15, !4515, !DIExpression(), !4555)
  ret float %15, !dbg !4556
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.initHeap(ptr %context) unnamed_addr #1 !dbg !4557 {
entry:
  call void @GC_init(), !dbg !4558
  call void @tinygo_runtime_bdwgc_init(), !dbg !4559
  ret void, !dbg !4560
}

declare void @GC_init() #2

declare void @tinygo_runtime_bdwgc_init() #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_runtime_bdwgc_callback() #1 !dbg !4561 {
entry:
  call void @runtime.gcMarkReachable(ptr undef), !dbg !4562
  ret void, !dbg !4563
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.gcMarkReachable(ptr %context) unnamed_addr #1 !dbg !4564 {
entry:
  call void @"internal/task.GCStopWorldAndScan"(ptr undef), !dbg !4565
  ret void, !dbg !4566
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.markRoots(i64 %start, i64 %end, ptr %context) #1 !dbg !4567 {
entry:
    #dbg_value(i64 %start, !4571, !DIExpression(), !4573)
    #dbg_value(i64 %end, !4572, !DIExpression(), !4573)
    #dbg_value(i64 %start, !4571, !DIExpression(), !4574)
    #dbg_value(i64 %end, !4572, !DIExpression(), !4575)
  call void @GC_push_all(i64 %start, i64 %end), !dbg !4576
  ret void, !dbg !4577
}

declare void @GC_push_all(i64, i64) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.free(ptr %ptr, ptr %context) unnamed_addr #1 !dbg !4578 {
entry:
    #dbg_value(ptr %ptr, !4580, !DIExpression(), !4581)
    #dbg_value(ptr %ptr, !4580, !DIExpression(), !4582)
  call void @GC_free(ptr %ptr), !dbg !4583
  ret void, !dbg !4584
}

declare void @GC_free(ptr nocapture) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.gcScanGlobals"(ptr %context) #1 !dbg !4585 {
entry:
  call void @runtime.findGlobals(ptr undef, ptr @runtime.markRoots, ptr undef), !dbg !4586
  ret void, !dbg !4587
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.findGlobals(ptr %found.context, ptr %found.funcptr, ptr %context) unnamed_addr #1 !dbg !4588 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %found.context, 0, !dbg !4619
  %1 = insertvalue { ptr, ptr } %0, ptr %found.funcptr, 1, !dbg !4619
    #dbg_value(ptr %found.context, !4592, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4619)
    #dbg_value(ptr %found.funcptr, !4592, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4619)
  %2 = load i64, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 11), align 8, !dbg !4620
  %3 = add i64 ptrtoint (ptr @__ehdr_start to i64), %2, !dbg !4621
  %4 = inttoptr i64 %3 to ptr, !dbg !4622
    #dbg_value(ptr %4, !4593, !DIExpression(), !4623)
    #dbg_value(i64 0, !4594, !DIExpression(), !4624)
  br label %for.loop, !dbg !4625

for.loop:                                         ; preds = %if.done, %entry
  %5 = phi ptr [ %4, %entry ], [ %30, %if.done ], !dbg !4623
  %6 = phi i64 [ 0, %entry ], [ %31, %if.done ], !dbg !4624
    #dbg_value(i64 %6, !4594, !DIExpression(), !4626)
  %7 = load i16, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 16), align 2, !dbg !4627
  %8 = zext i16 %7 to i64, !dbg !4628
  %9 = icmp slt i64 %6, %8, !dbg !4629
  br i1 %9, label %for.body, label %for.done, !dbg !4625

for.body:                                         ; preds = %for.loop
  br i1 true, label %if.then, label %if.else, !dbg !4625

if.then:                                          ; preds = %for.body
    #dbg_value(ptr %5, !4593, !DIExpression(), !4630)
    #dbg_value(ptr %5, !4595, !DIExpression(), !4631)
    #dbg_value(ptr %5, !4595, !DIExpression(), !4632)
  %10 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 0, !dbg !4633
  %11 = icmp eq ptr %10, null, !dbg !4633
  br i1 %11, label %deref.throw, label %deref.next, !dbg !4633

deref.next:                                       ; preds = %if.then
  %12 = load i32, ptr %10, align 4, !dbg !4633
  %13 = icmp eq i32 %12, 1, !dbg !4634
  br i1 %13, label %cond.true, label %if.done, !dbg !4625

cond.true:                                        ; preds = %deref.next
    #dbg_value(ptr %5, !4595, !DIExpression(), !4635)
  %14 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 1, !dbg !4636
  %15 = icmp eq ptr %14, null, !dbg !4636
  br i1 %15, label %deref.throw4, label %deref.next5, !dbg !4636

deref.next5:                                      ; preds = %cond.true
  %16 = load i32, ptr %14, align 4, !dbg !4636
  %17 = and i32 %16, 2, !dbg !4637
  %18 = icmp ne i32 %17, 0, !dbg !4638
  br i1 %18, label %if.then1, label %if.done, !dbg !4625

if.then1:                                         ; preds = %deref.next5
    #dbg_value(ptr %5, !4595, !DIExpression(), !4639)
  %19 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 3, !dbg !4640
  %20 = icmp eq ptr %19, null, !dbg !4640
  br i1 %20, label %deref.throw6, label %deref.next7, !dbg !4640

deref.next7:                                      ; preds = %if.then1
  %21 = load i64, ptr %19, align 8, !dbg !4640
    #dbg_value(i64 %21, !4608, !DIExpression(), !4641)
    #dbg_value(i64 %21, !4608, !DIExpression(), !4642)
    #dbg_value(ptr %5, !4595, !DIExpression(), !4643)
  %22 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 6, !dbg !4644
  %23 = icmp eq ptr %22, null, !dbg !4644
  br i1 %23, label %deref.throw8, label %deref.next9, !dbg !4644

deref.next9:                                      ; preds = %deref.next7
  %24 = load i64, ptr %22, align 8, !dbg !4644
  %25 = add i64 %21, %24, !dbg !4645
    #dbg_value(i64 %25, !4609, !DIExpression(), !4646)
    #dbg_value({ ptr, ptr } %1, !4592, !DIExpression(), !4647)
    #dbg_value(i64 %21, !4608, !DIExpression(), !4648)
    #dbg_value(i64 %25, !4609, !DIExpression(), !4649)
  %26 = extractvalue { ptr, ptr } %1, 0, !dbg !4650
  %27 = extractvalue { ptr, ptr } %1, 1, !dbg !4650
  %28 = icmp eq ptr %27, null, !dbg !4650
  br i1 %28, label %fpcall.throw, label %fpcall.next, !dbg !4650

fpcall.next:                                      ; preds = %deref.next9
  call void %27(i64 %21, i64 %25, ptr %26), !dbg !4650
  br label %if.done, !dbg !4625

if.done:                                          ; preds = %fpcall.next19, %deref.next13, %deref.next11, %fpcall.next, %deref.next5, %deref.next
    #dbg_value(ptr %5, !4593, !DIExpression(), !4651)
  %29 = load i16, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 15), align 2, !dbg !4652
  %30 = getelementptr i8, ptr %5, i16 %29, !dbg !4653
    #dbg_value(ptr %30, !4593, !DIExpression(), !4654)
  %31 = add i64 %6, 1, !dbg !4655
    #dbg_value(i64 %31, !4594, !DIExpression(), !4655)
  br label %for.loop, !dbg !4625

if.else:                                          ; preds = %for.body
    #dbg_value(ptr %5, !4593, !DIExpression(), !4656)
    #dbg_value(ptr %5, !4610, !DIExpression(), !4657)
    #dbg_value(ptr %5, !4610, !DIExpression(), !4658)
  %32 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 0, !dbg !4659
  %33 = icmp eq ptr %32, null, !dbg !4659
  br i1 %33, label %deref.throw10, label %deref.next11, !dbg !4659

deref.next11:                                     ; preds = %if.else
  %34 = load i32, ptr %32, align 4, !dbg !4659
  %35 = icmp eq i32 %34, 1, !dbg !4660
  br i1 %35, label %cond.true2, label %if.done, !dbg !4625

cond.true2:                                       ; preds = %deref.next11
    #dbg_value(ptr %5, !4610, !DIExpression(), !4661)
  %36 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 6, !dbg !4662
  %37 = icmp eq ptr %36, null, !dbg !4662
  br i1 %37, label %deref.throw12, label %deref.next13, !dbg !4662

deref.next13:                                     ; preds = %cond.true2
  %38 = load i32, ptr %36, align 4, !dbg !4662
  %39 = and i32 %38, 2, !dbg !4663
  %40 = icmp ne i32 %39, 0, !dbg !4664
  br i1 %40, label %if.then3, label %if.done, !dbg !4625

if.then3:                                         ; preds = %deref.next13
    #dbg_value(ptr %5, !4610, !DIExpression(), !4665)
  %41 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 2, !dbg !4666
  %42 = icmp eq ptr %41, null, !dbg !4666
  br i1 %42, label %deref.throw14, label %deref.next15, !dbg !4666

deref.next15:                                     ; preds = %if.then3
  %43 = load i64, ptr %41, align 8, !dbg !4666
    #dbg_value(i64 %43, !4617, !DIExpression(), !4667)
    #dbg_value(i64 %43, !4617, !DIExpression(), !4668)
    #dbg_value(ptr %5, !4610, !DIExpression(), !4669)
  %44 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 5, !dbg !4670
  %45 = icmp eq ptr %44, null, !dbg !4670
  br i1 %45, label %deref.throw16, label %deref.next17, !dbg !4670

deref.next17:                                     ; preds = %deref.next15
  %46 = load i64, ptr %44, align 8, !dbg !4670
  %47 = add i64 %43, %46, !dbg !4671
    #dbg_value(i64 %47, !4618, !DIExpression(), !4672)
    #dbg_value({ ptr, ptr } %1, !4592, !DIExpression(), !4673)
    #dbg_value(i64 %43, !4617, !DIExpression(), !4674)
    #dbg_value(i64 %47, !4618, !DIExpression(), !4675)
  %48 = extractvalue { ptr, ptr } %1, 0, !dbg !4676
  %49 = extractvalue { ptr, ptr } %1, 1, !dbg !4676
  %50 = icmp eq ptr %49, null, !dbg !4676
  br i1 %50, label %fpcall.throw18, label %fpcall.next19, !dbg !4676

fpcall.next19:                                    ; preds = %deref.next17
  call void %49(i64 %43, i64 %47, ptr %48), !dbg !4676
  br label %if.done, !dbg !4625

for.done:                                         ; preds = %for.loop
  ret void, !dbg !4677

deref.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !4633
  unreachable, !dbg !4633

deref.throw4:                                     ; preds = %cond.true
  call void @runtime.nilPanic(ptr undef), !dbg !4636
  unreachable, !dbg !4636

deref.throw6:                                     ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !4640
  unreachable, !dbg !4640

deref.throw8:                                     ; preds = %deref.next7
  call void @runtime.nilPanic(ptr undef), !dbg !4644
  unreachable, !dbg !4644

fpcall.throw:                                     ; preds = %deref.next9
  call void @runtime.nilPanic(ptr undef), !dbg !4650
  unreachable, !dbg !4650

deref.throw10:                                    ; preds = %if.else
  call void @runtime.nilPanic(ptr undef), !dbg !4659
  unreachable, !dbg !4659

deref.throw12:                                    ; preds = %cond.true2
  call void @runtime.nilPanic(ptr undef), !dbg !4662
  unreachable, !dbg !4662

deref.throw14:                                    ; preds = %if.then3
  call void @runtime.nilPanic(ptr undef), !dbg !4666
  unreachable, !dbg !4666

deref.throw16:                                    ; preds = %deref.next15
  call void @runtime.nilPanic(ptr undef), !dbg !4670
  unreachable, !dbg !4670

fpcall.throw18:                                   ; preds = %deref.next17
  call void @runtime.nilPanic(ptr undef), !dbg !4676
  unreachable, !dbg !4676
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_scanstack(i64 %sp) #1 !dbg !4678 {
entry:
    #dbg_value(i64 %sp, !4680, !DIExpression(), !4681)
    #dbg_value(i64 %sp, !4680, !DIExpression(), !4682)
  %0 = call i64 @"internal/task.StackTop"(ptr undef), !dbg !4683
  call void @runtime.markRoots(i64 %sp, i64 %0, ptr undef), !dbg !4684
  ret void, !dbg !4685
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.unsafeSlicePanic(ptr %context) #1 !dbg !4686 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4687
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.22", i64 37, ptr undef), !dbg !4688
  ret void, !dbg !4689
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.negativeShiftPanic(ptr %context) #1 !dbg !4690 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4691
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.24", i64 14, ptr undef), !dbg !4692
  ret void, !dbg !4693
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printspace(ptr %context) #1 !dbg !4694 {
entry:
  call void @runtime.putchar(i8 32, ptr undef), !dbg !4695
  ret void, !dbg !4696
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memmove(ptr %dst, ptr %src, i64 %size, ptr %context) #1 !dbg !4697 {
entry:
    #dbg_value(ptr %dst, !4699, !DIExpression(), !4702)
    #dbg_value(ptr %src, !4700, !DIExpression(), !4702)
    #dbg_value(i64 %size, !4701, !DIExpression(), !4702)
  call void @llvm.memmove.p0.p0.i64(ptr %dst, ptr %src, i64 %size, i1 false), !dbg !4702
  ret void, !dbg !4702
}

; Function Attrs: nounwind uwtable(sync)
define i64 @main(i32 %argc, ptr nocapture dereferenceable_or_null(8) %argv) #1 !dbg !4703 {
entry:
    #dbg_value(i32 %argc, !4707, !DIExpression(), !4712)
    #dbg_value(ptr %argv, !4708, !DIExpression(), !4712)
  br i1 false, label %if.then, label %if.done, !dbg !4713

if.then:                                          ; preds = %entry
  call void @runtime.allocateHeap(ptr undef), !dbg !4714
  br label %if.done, !dbg !4713

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(i32 %argc, !4707, !DIExpression(), !4715)
  store i32 %argc, ptr @runtime.main_argc, align 4, !dbg !4716
    #dbg_value(i32 %argc, !4709, !DIExpression(), !4716)
    #dbg_value(ptr %argv, !4708, !DIExpression(), !4717)
  store ptr %argv, ptr @runtime.main_argv, align 8, !dbg !4718
    #dbg_value(ptr %argv, !4710, !DIExpression(), !4718)
  call void @tinygo_register_fatal_signals(), !dbg !4719
  %0 = call i64 @runtime.getCurrentStackPointer(ptr undef), !dbg !4720
  store i64 %0, ptr @runtime.stackTop, align 8, !dbg !4721
    #dbg_value(i64 %0, !4711, !DIExpression(), !4721)
  call void @runtime.runMain(ptr undef), !dbg !4722
  ret i64 0, !dbg !4723
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.allocateHeap(ptr %context) unnamed_addr #1 !dbg !4724 {
entry:
  store i64 1073741824, ptr @runtime.heapMaxSize, align 8, !dbg !4731
    #dbg_value(i64 1073741824, !4726, !DIExpression(), !4731)
  br label %for.body, !dbg !4732

for.body:                                         ; preds = %if.then1, %if.then, %entry
  %0 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4733
    #dbg_value(i64 %0, !4726, !DIExpression(), !4733)
  %1 = call ptr @mmap(ptr null, i64 %0, i64 3, i64 34, i64 -1, i64 0), !dbg !4734
    #dbg_value(ptr %1, !4727, !DIExpression(), !4735)
    #dbg_value(ptr %1, !4727, !DIExpression(), !4736)
  %2 = icmp eq ptr %1, inttoptr (i64 -1 to ptr), !dbg !4737
  br i1 %2, label %if.then, label %if.done, !dbg !4732

if.then:                                          ; preds = %for.body
  %3 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4738
  %4 = udiv i64 %3, 2, !dbg !4738
  store i64 %4, ptr @runtime.heapMaxSize, align 8, !dbg !4738
    #dbg_value(i64 %4, !4726, !DIExpression(), !4738)
  %5 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4739
    #dbg_value(i64 %5, !4726, !DIExpression(), !4739)
  %6 = icmp ult i64 %5, 4096, !dbg !4740
  br i1 %6, label %if.then1, label %for.body, !dbg !4732

if.then1:                                         ; preds = %if.then
  call void @runtime.runtimePanic(ptr @"runtime$string.56", i64 27, ptr undef), !dbg !4741
  br label %for.body, !dbg !4732

if.done:                                          ; preds = %for.body
    #dbg_value(ptr %1, !4727, !DIExpression(), !4742)
  %7 = ptrtoint ptr %1 to i64, !dbg !4743
  store i64 %7, ptr @runtime.heapStart, align 8, !dbg !4744
    #dbg_value(i64 %7, !4728, !DIExpression(), !4744)
  %8 = load i64, ptr @runtime.heapStart, align 8, !dbg !4745
    #dbg_value(i64 %8, !4728, !DIExpression(), !4745)
  %9 = load i64, ptr @runtime.heapSize, align 8, !dbg !4746
    #dbg_value(i64 %9, !4729, !DIExpression(), !4746)
  %10 = add i64 %8, %9, !dbg !4747
  store i64 %10, ptr @runtime.heapEnd, align 8, !dbg !4748
    #dbg_value(i64 %10, !4730, !DIExpression(), !4748)
  ret void, !dbg !4749
}

declare void @tinygo_register_fatal_signals() #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @runtime.runMain(ptr %context) unnamed_addr #15 !dbg !4750 {
entry:
  call void @runtime.run(ptr undef), !dbg !4751
  ret void, !dbg !4752
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.run(ptr %context) unnamed_addr #1 !dbg !4753 {
entry:
  call void @runtime.initRand(ptr undef), !dbg !4756
  call void @runtime.initHeap(ptr undef), !dbg !4757
  %0 = load i64, ptr @runtime.stackTop, align 8, !dbg !4758
    #dbg_value(i64 %0, !4755, !DIExpression(), !4758)
  call void @"internal/task.Init"(i64 %0, ptr undef), !dbg !4759
  call void @runtime.initAll(ptr undef), !dbg !4760
  call void @main.main(ptr undef), !dbg !4761
  ret void, !dbg !4762
}

define internal void @runtime.initAll(ptr %context) unnamed_addr #2 {
entry:
  ret void
}

declare void @main.main(ptr) #2

declare ptr @mmap(ptr nocapture, i64, i64, i64, i64, i64) #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_handle_fatal_signal(i32 %sig, i64 %addr) #1 !dbg !4763 {
entry:
    #dbg_value(i32 %sig, !4767, !DIExpression(), !4769)
    #dbg_value(i64 %addr, !4768, !DIExpression(), !4769)
  br i1 false, label %if.then, label %if.done, !dbg !4770

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !4771
  br label %if.done, !dbg !4770

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(i64 %addr, !4768, !DIExpression(), !4772)
  %0 = icmp ne i64 %addr, 0, !dbg !4773
  br i1 %0, label %if.then1, label %if.else, !dbg !4770

if.then1:                                         ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.50", i64 24, ptr undef), !dbg !4774
    #dbg_value(i64 %addr, !4768, !DIExpression(), !4775)
  call void @runtime.printptr(i64 %addr, ptr undef), !dbg !4776
  br label %if.done2, !dbg !4770

if.done2:                                         ; preds = %if.else, %if.then1
  call void @runtime.printstring(ptr @"runtime$string.51", i64 16, ptr undef), !dbg !4777
    #dbg_value(i32 %sig, !4767, !DIExpression(), !4778)
  %1 = icmp eq i32 %sig, 7, !dbg !4779
  br i1 %1, label %switch.body, label %switch.next, !dbg !4770

switch.body:                                      ; preds = %if.done2
  call void @runtime.printlock(ptr undef), !dbg !4780
  call void @runtime.printstring(ptr @"runtime$string.52", i64 6, ptr undef), !dbg !4780
  call void @runtime.printnl(ptr undef), !dbg !4780
  call void @runtime.printunlock(ptr undef), !dbg !4780
  br label %switch.done, !dbg !4770

switch.done:                                      ; preds = %switch.next6, %switch.body5, %switch.body3, %switch.body
    #dbg_value(i32 %sig, !4767, !DIExpression(), !4781)
  call void @raise(i32 %sig), !dbg !4782
  ret void, !dbg !4783

switch.next:                                      ; preds = %if.done2
  %2 = icmp eq i32 %sig, 4, !dbg !4784
  br i1 %2, label %switch.body3, label %switch.next4, !dbg !4770

switch.body3:                                     ; preds = %switch.next
  call void @runtime.printlock(ptr undef), !dbg !4785
  call void @runtime.printstring(ptr @"runtime$string.53", i64 6, ptr undef), !dbg !4785
  call void @runtime.printnl(ptr undef), !dbg !4785
  call void @runtime.printunlock(ptr undef), !dbg !4785
  br label %switch.done, !dbg !4770

switch.next4:                                     ; preds = %switch.next
  %3 = icmp eq i32 %sig, 11, !dbg !4786
  br i1 %3, label %switch.body5, label %switch.next6, !dbg !4770

switch.body5:                                     ; preds = %switch.next4
  call void @runtime.printlock(ptr undef), !dbg !4787
  call void @runtime.printstring(ptr @"runtime$string.54", i64 7, ptr undef), !dbg !4787
  call void @runtime.printnl(ptr undef), !dbg !4787
  call void @runtime.printunlock(ptr undef), !dbg !4787
  br label %switch.done, !dbg !4770

switch.next6:                                     ; preds = %switch.next4
    #dbg_value(i32 %sig, !4767, !DIExpression(), !4788)
  call void @runtime.printlock(ptr undef), !dbg !4789
  call void @runtime.printint32(i32 %sig, ptr undef), !dbg !4789
  call void @runtime.printnl(ptr undef), !dbg !4789
  call void @runtime.printunlock(ptr undef), !dbg !4789
  br label %switch.done, !dbg !4770

if.else:                                          ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.55", i64 20, ptr undef), !dbg !4790
  br label %if.done2, !dbg !4770
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printlock(ptr %context) #1 !dbg !4791 {
entry:
  call void @"(*internal/task.Mutex).Lock"(ptr @runtime.printLock, ptr undef), !dbg !4792
  ret void, !dbg !4793
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printunlock(ptr %context) #1 !dbg !4794 {
entry:
  call void @"(*internal/task.Mutex).Unlock"(ptr @runtime.printLock, ptr undef), !dbg !4795
  ret void, !dbg !4796
}

declare void @raise(i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @runtime.sliceAppend(ptr %srcBuf, ptr nocapture readonly %elemsBuf, i64 %srcLen, i64 %srcCap, i64 %elemsLen, i64 %elemSize, ptr %layout, ptr %context) #1 !dbg !4797 {
entry:
    #dbg_value(ptr %srcBuf, !4802, !DIExpression(), !4810)
    #dbg_value(ptr %elemsBuf, !4803, !DIExpression(), !4810)
    #dbg_value(i64 %srcLen, !4804, !DIExpression(), !4810)
    #dbg_value(i64 %srcCap, !4805, !DIExpression(), !4810)
    #dbg_value(i64 %elemsLen, !4806, !DIExpression(), !4810)
    #dbg_value(i64 %elemSize, !4807, !DIExpression(), !4810)
    #dbg_value(ptr %layout, !4808, !DIExpression(), !4810)
    #dbg_value(i64 %srcLen, !4804, !DIExpression(), !4811)
    #dbg_value(i64 %elemsLen, !4806, !DIExpression(), !4812)
  %0 = add i64 %srcLen, %elemsLen, !dbg !4813
    #dbg_value(i64 %0, !4809, !DIExpression(), !4814)
    #dbg_value(i64 %elemsLen, !4806, !DIExpression(), !4815)
  %1 = icmp ugt i64 %elemsLen, 0, !dbg !4816
  br i1 %1, label %if.then, label %if.done, !dbg !4817

if.then:                                          ; preds = %entry
    #dbg_value(ptr %srcBuf, !4802, !DIExpression(), !4818)
    #dbg_value(i64 %srcLen, !4804, !DIExpression(), !4819)
    #dbg_value(i64 %srcCap, !4805, !DIExpression(), !4820)
    #dbg_value(i64 %0, !4809, !DIExpression(), !4821)
    #dbg_value(i64 %elemSize, !4807, !DIExpression(), !4822)
    #dbg_value(ptr %layout, !4808, !DIExpression(), !4823)
  %2 = call { ptr, i64, i64 } @runtime.sliceGrow(ptr %srcBuf, i64 %srcLen, i64 %srcCap, i64 %0, i64 %elemSize, ptr %layout, ptr undef), !dbg !4824
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4824
    #dbg_value(ptr %3, !4802, !DIExpression(), !4825)
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4824
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4824
    #dbg_value(i64 %5, !4805, !DIExpression(), !4826)
    #dbg_value(ptr %3, !4802, !DIExpression(), !4827)
    #dbg_value(i64 %srcLen, !4804, !DIExpression(), !4828)
    #dbg_value(i64 %elemSize, !4807, !DIExpression(), !4829)
  %6 = mul i64 %srcLen, %elemSize, !dbg !4830
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !4831
    #dbg_value(ptr %elemsBuf, !4803, !DIExpression(), !4832)
    #dbg_value(i64 %elemsLen, !4806, !DIExpression(), !4833)
    #dbg_value(i64 %elemSize, !4807, !DIExpression(), !4834)
  %8 = mul i64 %elemsLen, %elemSize, !dbg !4835
  call void @runtime.memmove(ptr %7, ptr %elemsBuf, i64 %8, ptr undef), !dbg !4836
  br label %if.done, !dbg !4817

if.done:                                          ; preds = %if.then, %entry
  %9 = phi ptr [ %srcBuf, %entry ], [ %3, %if.then ], !dbg !4837
  %10 = phi i64 [ %srcCap, %entry ], [ %5, %if.then ], !dbg !4838
    #dbg_value(ptr %9, !4802, !DIExpression(), !4839)
    #dbg_value(i64 %0, !4809, !DIExpression(), !4840)
    #dbg_value(i64 %10, !4805, !DIExpression(), !4841)
  %11 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %9, 0, !dbg !4842
  %12 = insertvalue { ptr, i64, i64 } %11, i64 %0, 1, !dbg !4842
  %13 = insertvalue { ptr, i64, i64 } %12, i64 %10, 2, !dbg !4842
  ret { ptr, i64, i64 } %13, !dbg !4842
}

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @runtime.sliceGrow(ptr %oldBuf, i64 %oldLen, i64 %oldCap, i64 %newCap, i64 %elemSize, ptr %layout, ptr %context) #1 !dbg !4843 {
entry:
    #dbg_value(ptr %oldBuf, !4847, !DIExpression(), !4854)
    #dbg_value(i64 %oldLen, !4848, !DIExpression(), !4854)
    #dbg_value(i64 %oldCap, !4849, !DIExpression(), !4854)
    #dbg_value(i64 %newCap, !4850, !DIExpression(), !4854)
    #dbg_value(i64 %elemSize, !4851, !DIExpression(), !4854)
    #dbg_value(ptr %layout, !4852, !DIExpression(), !4854)
    #dbg_value(i64 %oldCap, !4849, !DIExpression(), !4855)
    #dbg_value(i64 %newCap, !4850, !DIExpression(), !4856)
  %0 = icmp uge i64 %oldCap, %newCap, !dbg !4857
  br i1 %0, label %if.then, label %if.done, !dbg !4858

if.then:                                          ; preds = %entry
    #dbg_value(ptr %oldBuf, !4847, !DIExpression(), !4859)
    #dbg_value(i64 %oldLen, !4848, !DIExpression(), !4860)
    #dbg_value(i64 %oldCap, !4849, !DIExpression(), !4861)
  %1 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %oldBuf, 0, !dbg !4862
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %oldLen, 1, !dbg !4862
  %3 = insertvalue { ptr, i64, i64 } %2, i64 %oldCap, 2, !dbg !4862
  ret { ptr, i64, i64 } %3, !dbg !4862

if.done:                                          ; preds = %entry
    #dbg_value(i64 %newCap, !4850, !DIExpression(), !4863)
  %4 = call i64 @"math/bits.Len"(i64 %newCap, ptr undef), !dbg !4864
  %5 = icmp slt i64 %4, 0, !dbg !4865
  br i1 %5, label %shift.throw, label %shift.next, !dbg !4865

shift.next:                                       ; preds = %if.done
  %shift.overflow = icmp uge i64 %4, 64, !dbg !4865
  %6 = shl i64 1, %4, !dbg !4865
  %shift.result = select i1 %shift.overflow, i64 0, i64 %6, !dbg !4865
    #dbg_value(i64 %shift.result, !4850, !DIExpression(), !4866)
    #dbg_value(i64 %shift.result, !4850, !DIExpression(), !4867)
    #dbg_value(i64 %elemSize, !4851, !DIExpression(), !4868)
  %7 = mul i64 %shift.result, %elemSize, !dbg !4869
    #dbg_value(ptr %layout, !4852, !DIExpression(), !4870)
  %8 = call ptr @runtime.alloc(i64 %7, ptr %layout, ptr undef), !dbg !4871
    #dbg_value(ptr %8, !4853, !DIExpression(), !4872)
    #dbg_value(i64 %oldLen, !4848, !DIExpression(), !4873)
  %9 = icmp ugt i64 %oldLen, 0, !dbg !4874
  br i1 %9, label %if.then1, label %if.done2, !dbg !4858

if.then1:                                         ; preds = %shift.next
    #dbg_value(ptr %8, !4853, !DIExpression(), !4875)
    #dbg_value(ptr %oldBuf, !4847, !DIExpression(), !4876)
    #dbg_value(i64 %oldLen, !4848, !DIExpression(), !4877)
    #dbg_value(i64 %elemSize, !4851, !DIExpression(), !4878)
  %10 = mul i64 %oldLen, %elemSize, !dbg !4879
  call void @runtime.memmove(ptr %8, ptr %oldBuf, i64 %10, ptr undef), !dbg !4880
  br label %if.done2, !dbg !4858

if.done2:                                         ; preds = %if.then1, %shift.next
    #dbg_value(ptr %8, !4853, !DIExpression(), !4881)
    #dbg_value(i64 %oldLen, !4848, !DIExpression(), !4882)
    #dbg_value(i64 %shift.result, !4850, !DIExpression(), !4883)
  %11 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %8, 0, !dbg !4884
  %12 = insertvalue { ptr, i64, i64 } %11, i64 %oldLen, 1, !dbg !4884
  %13 = insertvalue { ptr, i64, i64 } %12, i64 %shift.result, 2, !dbg !4884
  ret { ptr, i64, i64 } %13, !dbg !4884

shift.throw:                                      ; preds = %if.done
  call void @runtime.negativeShiftPanic(ptr undef), !dbg !4865
  unreachable, !dbg !4865
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_signal_handler(i32 %s) #1 !dbg !4885 {
entry:
    #dbg_value(i32 %s, !4887, !DIExpression(), !4891)
  br label %for.body, !dbg !4892

for.body:                                         ; preds = %for.body, %entry
    #dbg_value(i32 %s, !4887, !DIExpression(), !4893)
  %shift.overflow = icmp uge i32 %s, 32, !dbg !4894
  %0 = shl i32 1, %s, !dbg !4894
  %shift.result = select i1 %shift.overflow, i32 0, i32 %0, !dbg !4894
    #dbg_value(i32 %shift.result, !4888, !DIExpression(), !4895)
  %1 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @runtime.receivedSignals, ptr undef), !dbg !4896
    #dbg_value(i32 %1, !4889, !DIExpression(), !4897)
    #dbg_value(i32 %1, !4889, !DIExpression(), !4898)
    #dbg_value(i32 %1, !4889, !DIExpression(), !4899)
    #dbg_value(i32 %shift.result, !4888, !DIExpression(), !4900)
  %2 = or i32 %1, %shift.result, !dbg !4901
  %3 = call i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr @runtime.receivedSignals, i32 %1, i32 %2, ptr undef), !dbg !4902
    #dbg_value(i1 %3, !4890, !DIExpression(), !4903)
    #dbg_value(i1 %3, !4890, !DIExpression(), !4904)
  br i1 %3, label %if.then, label %for.body, !dbg !4892

if.then:                                          ; preds = %for.body
  %4 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr @runtime.signalFutex, i32 1, ptr undef), !dbg !4905
  %5 = icmp eq i32 %4, 0, !dbg !4906
  br i1 %5, label %if.then1, label %if.done, !dbg !4892

if.then1:                                         ; preds = %if.then
  call void @"(*internal/futex.Futex).WakeAll"(ptr @runtime.signalFutex, ptr undef), !dbg !4907
  br label %if.done, !dbg !4892

if.done:                                          ; preds = %if.then1, %if.then
  ret void, !dbg !4908
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @runtime.stringConcat(ptr dereferenceable_or_null(1) %x.ptr, i64 %x.length, ptr dereferenceable_or_null(1) %y.ptr, i64 %y.length, ptr %context) #1 !dbg !4909 {
entry:
  %complit = alloca %runtime._string, align 8, !dbg !4921
  %y = alloca %runtime._string, align 8, !dbg !4921
  %x = alloca %runtime._string, align 8, !dbg !4921
  %0 = insertvalue %runtime._string zeroinitializer, ptr %x.ptr, 0, !dbg !4921
  %1 = insertvalue %runtime._string %0, i64 %x.length, 1, !dbg !4921
    #dbg_value(ptr %x.ptr, !4917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4921)
    #dbg_value(i64 %x.length, !4917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4921)
  %2 = insertvalue %runtime._string zeroinitializer, ptr %y.ptr, 0, !dbg !4921
  %3 = insertvalue %runtime._string %2, i64 %y.length, 1, !dbg !4921
    #dbg_value(ptr %y.ptr, !4918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4921)
    #dbg_value(i64 %y.length, !4918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4921)
  store %runtime._string zeroinitializer, ptr %x, align 8, !dbg !4921
  store %runtime._string %1, ptr %x, align 8, !dbg !4922
  store %runtime._string zeroinitializer, ptr %y, align 8, !dbg !4921
  store %runtime._string %3, ptr %y, align 8, !dbg !4923
  %4 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4924
  %5 = icmp eq ptr %4, null, !dbg !4924
  br i1 %5, label %deref.throw, label %deref.next, !dbg !4924

deref.next:                                       ; preds = %entry
  %6 = load i64, ptr %4, align 8, !dbg !4924
  %7 = icmp eq i64 %6, 0, !dbg !4925
  br i1 %7, label %if.then, label %if.else, !dbg !4926

if.then:                                          ; preds = %deref.next
  %8 = load %runtime._string, ptr %y, align 8, !dbg !4927
    #dbg_value(%runtime._string %8, !4918, !DIExpression(), !4927)
  ret %runtime._string %8, !dbg !4928

if.else:                                          ; preds = %deref.next
  %9 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4929
  %10 = icmp eq ptr %9, null, !dbg !4929
  br i1 %10, label %deref.throw3, label %deref.next4, !dbg !4929

deref.next4:                                      ; preds = %if.else
  %11 = load i64, ptr %9, align 8, !dbg !4929
  %12 = icmp eq i64 %11, 0, !dbg !4930
  br i1 %12, label %if.then1, label %if.else2, !dbg !4926

if.then1:                                         ; preds = %deref.next4
  %13 = load %runtime._string, ptr %x, align 8, !dbg !4931
    #dbg_value(%runtime._string %13, !4917, !DIExpression(), !4931)
  ret %runtime._string %13, !dbg !4932

if.else2:                                         ; preds = %deref.next4
  %14 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4933
  %15 = icmp eq ptr %14, null, !dbg !4933
  br i1 %15, label %deref.throw5, label %deref.next6, !dbg !4933

deref.next6:                                      ; preds = %if.else2
  %16 = load i64, ptr %14, align 8, !dbg !4933
  %17 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4934
  %18 = icmp eq ptr %17, null, !dbg !4934
  br i1 %18, label %deref.throw7, label %deref.next8, !dbg !4934

deref.next8:                                      ; preds = %deref.next6
  %19 = load i64, ptr %17, align 8, !dbg !4934
  %20 = add i64 %16, %19, !dbg !4935
    #dbg_value(i64 %20, !4919, !DIExpression(), !4936)
    #dbg_value(i64 %20, !4919, !DIExpression(), !4937)
  %21 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !4938
  %22 = call ptr @runtime.alloc(i64 %20, ptr %21, ptr undef), !dbg !4939
    #dbg_value(ptr %22, !4920, !DIExpression(), !4940)
    #dbg_value(ptr %22, !4920, !DIExpression(), !4941)
  %23 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 0, !dbg !4942
  %24 = icmp eq ptr %23, null, !dbg !4942
  br i1 %24, label %deref.throw9, label %deref.next10, !dbg !4942

deref.next10:                                     ; preds = %deref.next8
  %25 = load ptr, ptr %23, align 8, !dbg !4942
  %26 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4943
  %27 = icmp eq ptr %26, null, !dbg !4943
  br i1 %27, label %deref.throw11, label %deref.next12, !dbg !4943

deref.next12:                                     ; preds = %deref.next10
  %28 = load i64, ptr %26, align 8, !dbg !4943
  call void @runtime.memcpy(ptr %22, ptr %25, i64 %28, ptr undef), !dbg !4944
    #dbg_value(ptr %22, !4920, !DIExpression(), !4945)
  %29 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4946
  %30 = icmp eq ptr %29, null, !dbg !4946
  br i1 %30, label %deref.throw13, label %deref.next14, !dbg !4946

deref.next14:                                     ; preds = %deref.next12
  %31 = load i64, ptr %29, align 8, !dbg !4946
  %32 = getelementptr i8, ptr %22, i64 %31, !dbg !4947
  %33 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 0, !dbg !4948
  %34 = icmp eq ptr %33, null, !dbg !4948
  br i1 %34, label %deref.throw15, label %deref.next16, !dbg !4948

deref.next16:                                     ; preds = %deref.next14
  %35 = load ptr, ptr %33, align 8, !dbg !4948
  %36 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4949
  %37 = icmp eq ptr %36, null, !dbg !4949
  br i1 %37, label %deref.throw17, label %deref.next18, !dbg !4949

deref.next18:                                     ; preds = %deref.next16
  %38 = load i64, ptr %36, align 8, !dbg !4949
  call void @runtime.memcpy(ptr %32, ptr %35, i64 %38, ptr undef), !dbg !4950
  store %runtime._string zeroinitializer, ptr %complit, align 8, !dbg !4921
  %39 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !4951
    #dbg_value(ptr %22, !4920, !DIExpression(), !4952)
  %40 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !4953
    #dbg_value(i64 %20, !4919, !DIExpression(), !4954)
  %41 = icmp eq ptr %39, null, !dbg !4951
  br i1 %41, label %store.throw, label %store.next, !dbg !4951

store.next:                                       ; preds = %deref.next18
  store ptr %22, ptr %39, align 8, !dbg !4951
  %42 = icmp eq ptr %40, null, !dbg !4953
  br i1 %42, label %store.throw19, label %store.next20, !dbg !4953

store.next20:                                     ; preds = %store.next
  store i64 %20, ptr %40, align 8, !dbg !4953
    #dbg_value(i64 %20, !4919, !DIExpression(), !4954)
  %43 = load %runtime._string, ptr %complit, align 8, !dbg !4955
  ret %runtime._string %43, !dbg !4956

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !4924
  unreachable, !dbg !4924

deref.throw3:                                     ; preds = %if.else
  call void @runtime.nilPanic(ptr undef), !dbg !4929
  unreachable, !dbg !4929

deref.throw5:                                     ; preds = %if.else2
  call void @runtime.nilPanic(ptr undef), !dbg !4933
  unreachable, !dbg !4933

deref.throw7:                                     ; preds = %deref.next6
  call void @runtime.nilPanic(ptr undef), !dbg !4934
  unreachable, !dbg !4934

deref.throw9:                                     ; preds = %deref.next8
  call void @runtime.nilPanic(ptr undef), !dbg !4942
  unreachable, !dbg !4942

deref.throw11:                                    ; preds = %deref.next10
  call void @runtime.nilPanic(ptr undef), !dbg !4943
  unreachable, !dbg !4943

deref.throw13:                                    ; preds = %deref.next12
  call void @runtime.nilPanic(ptr undef), !dbg !4946
  unreachable, !dbg !4946

deref.throw15:                                    ; preds = %deref.next14
  call void @runtime.nilPanic(ptr undef), !dbg !4948
  unreachable, !dbg !4948

deref.throw17:                                    ; preds = %deref.next16
  call void @runtime.nilPanic(ptr undef), !dbg !4949
  unreachable, !dbg !4949

store.throw:                                      ; preds = %deref.next18
  call void @runtime.nilPanic(ptr undef), !dbg !4951
  unreachable, !dbg !4951

store.throw19:                                    ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !4953
  unreachable, !dbg !4953
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @runtime.stringFromBytes(ptr nocapture readonly dereferenceable_or_null(1) %x.ptr, i64 %x.len, i64 %x.cap, ptr %context) #1 !dbg !4957 {
entry:
  %complit = alloca %runtime._string, align 8, !dbg !4964
  %x = alloca { ptr, i64, i64 }, align 8, !dbg !4964
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %x.ptr, 0, !dbg !4964
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %x.len, 1, !dbg !4964
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %x.cap, 2, !dbg !4964
    #dbg_value(ptr %x.ptr, !4962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4964)
    #dbg_value(i64 %x.len, !4962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4964)
    #dbg_value(i64 %x.cap, !4962, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4964)
  store { ptr, i64, i64 } zeroinitializer, ptr %x, align 8, !dbg !4964
  store { ptr, i64, i64 } %2, ptr %x, align 8, !dbg !4965
  %3 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4966
  %4 = icmp eq ptr %3, null, !dbg !4966
  br i1 %4, label %deref.throw, label %deref.next, !dbg !4966

deref.next:                                       ; preds = %entry
  %5 = load i64, ptr %3, align 8, !dbg !4966
  %6 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !4967
  %7 = call ptr @runtime.alloc(i64 %5, ptr %6, ptr undef), !dbg !4968
    #dbg_value(ptr %7, !4963, !DIExpression(), !4969)
    #dbg_value(ptr %7, !4963, !DIExpression(), !4970)
  %8 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 0, !dbg !4971
  %9 = icmp eq ptr %8, null, !dbg !4971
  br i1 %9, label %deref.throw1, label %deref.next2, !dbg !4971

deref.next2:                                      ; preds = %deref.next
  %10 = load ptr, ptr %8, align 8, !dbg !4971
  %11 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4972
  %12 = icmp eq ptr %11, null, !dbg !4972
  br i1 %12, label %deref.throw3, label %deref.next4, !dbg !4972

deref.next4:                                      ; preds = %deref.next2
  %13 = load i64, ptr %11, align 8, !dbg !4972
  call void @runtime.memcpy(ptr %7, ptr %10, i64 %13, ptr undef), !dbg !4973
  store %runtime._string zeroinitializer, ptr %complit, align 8, !dbg !4964
  %14 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !4974
    #dbg_value(ptr %7, !4963, !DIExpression(), !4975)
  %15 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !4976
  %16 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4977
  %17 = icmp eq ptr %16, null, !dbg !4977
  br i1 %17, label %deref.throw5, label %deref.next6, !dbg !4977

deref.next6:                                      ; preds = %deref.next4
  %18 = load i64, ptr %16, align 8, !dbg !4977
  %19 = icmp eq ptr %14, null, !dbg !4974
  br i1 %19, label %store.throw, label %store.next, !dbg !4974

store.next:                                       ; preds = %deref.next6
  store ptr %7, ptr %14, align 8, !dbg !4974
  %20 = icmp eq ptr %15, null, !dbg !4976
  br i1 %20, label %store.throw7, label %store.next8, !dbg !4976

store.next8:                                      ; preds = %store.next
  store i64 %18, ptr %15, align 8, !dbg !4976
  %21 = load %runtime._string, ptr %complit, align 8, !dbg !4978
  ret %runtime._string %21, !dbg !4979

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !4966
  unreachable, !dbg !4966

deref.throw1:                                     ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !4971
  unreachable, !dbg !4971

deref.throw3:                                     ; preds = %deref.next2
  call void @runtime.nilPanic(ptr undef), !dbg !4972
  unreachable, !dbg !4972

deref.throw5:                                     ; preds = %deref.next4
  call void @runtime.nilPanic(ptr undef), !dbg !4977
  unreachable, !dbg !4977

store.throw:                                      ; preds = %deref.next6
  call void @runtime.nilPanic(ptr undef), !dbg !4974
  unreachable, !dbg !4974

store.throw7:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !4976
  unreachable, !dbg !4976
}

; Function Attrs: nounwind uwtable(sync)
define i64 @f_gold(i64 %n) #1 !dbg !4980 {
entry:
    #dbg_value(i64 %n, !4983, !DIExpression(), !4985)
    #dbg_value(i64 %n, !4983, !DIExpression(), !4986)
  %0 = sitofp i64 %n to double, !dbg !4987
  %1 = call double @math.Log(double %0, ptr undef), !dbg !4988
  %2 = fmul double %1, 0x40009FEC13B9F128, !dbg !4989
  %3 = fadd double %2, 0x3FFAC1A47A9E2BD0, !dbg !4990
  %4 = fptrunc double %3 to float, !dbg !4991
    #dbg_value(float %4, !4984, !DIExpression(), !4992)
    #dbg_value(float %4, !4984, !DIExpression(), !4993)
  %5 = fpext float %4 to double, !dbg !4994
  %6 = call double @math.Round(double %5, ptr undef), !dbg !4995
  %abovemin = fcmp ole double 0xC3E0000000000000, %6, !dbg !4996
  %belowmax = fcmp ole double %6, 0x43DFFFFFFFFFFFFE, !dbg !4996
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4996
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4996
  %isnan = fcmp uno double %6, %6, !dbg !4996
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4996
  %normal = fptosi double %6 to i64, !dbg !4996
  %7 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4996
  ret i64 %7, !dbg !4997
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
!1742 = distinct !DISubprogram(name: "math.Float64bits", linkageName: "math.Float64bits", scope: !1743, file: !1743, line: 35, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !1746)
!1743 = !DIFile(filename: "unsafe.go", directory: "/usr/local/go/src/math")
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!795}
!1746 = !{!1747}
!1747 = !DILocalVariable(name: "f", arg: 1, scope: !1742, file: !1743, line: 35, type: !795)
!1748 = !DILocation(line: 35, column: 6, scope: !1742)
!1749 = !DILocation(line: 35, column: 18, scope: !1742)
!1750 = !DILocation(line: 35, column: 45, scope: !1742)
!1751 = !DILocation(line: 35, column: 38, scope: !1742)
!1752 = distinct !DISubprogram(name: "math.Float64frombits", linkageName: "math.Float64frombits", scope: !1743, file: !1743, line: 41, type: !1753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !1755)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!338}
!1755 = !{!1756}
!1756 = !DILocalVariable(name: "b", arg: 1, scope: !1752, file: !1743, line: 41, type: !338)
!1757 = !DILocation(line: 41, column: 6, scope: !1752)
!1758 = !DILocation(line: 41, column: 22, scope: !1752)
!1759 = !DILocation(line: 41, column: 49, scope: !1752)
!1760 = !DILocation(line: 41, column: 42, scope: !1752)
!1761 = distinct !DISubprogram(name: "math.Log", linkageName: "math.Log", scope: !1762, file: !1762, line: 81, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !1763)
!1762 = !DIFile(filename: "log.go", directory: "/usr/local/go/src/math")
!1763 = !{!1764}
!1764 = !DILocalVariable(name: "x", arg: 1, scope: !1761, file: !1762, line: 81, type: !795)
!1765 = !DILocation(line: 81, column: 6, scope: !1761)
!1766 = distinct !DISubprogram(name: "math.Round", linkageName: "math.Round", scope: !1767, file: !1767, line: 90, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !1768)
!1767 = !DIFile(filename: "floor.go", directory: "/usr/local/go/src/math")
!1768 = !{!1769, !1770, !1771}
!1769 = !DILocalVariable(name: "x", arg: 1, scope: !1766, file: !1767, line: 90, type: !795)
!1770 = !DILocalVariable(name: "bits", scope: !1766, file: !1767, line: 100, type: !338)
!1771 = !DILocalVariable(name: "e", scope: !1766, file: !1767, line: 101, type: !1738)
!1772 = !DILocation(line: 90, column: 6, scope: !1766)
!1773 = !DILocation(line: 100, column: 22, scope: !1766)
!1774 = !DILocation(line: 100, column: 21, scope: !1766)
!1775 = !DILocation(line: 100, column: 2, scope: !1766)
!1776 = !DILocation(line: 101, column: 12, scope: !1766)
!1777 = !DILocation(line: 101, column: 16, scope: !1766)
!1778 = !DILocation(line: 101, column: 25, scope: !1766)
!1779 = !DILocation(line: 101, column: 2, scope: !1766)
!1780 = !DILocation(line: 102, column: 5, scope: !1766)
!1781 = !DILocation(line: 102, column: 7, scope: !1766)
!1782 = !DILocation(line: 0, scope: !1766)
!1783 = !DILocation(line: 104, column: 3, scope: !1766)
!1784 = !DILocation(line: 105, column: 6, scope: !1766)
!1785 = !DILocation(line: 105, column: 8, scope: !1766)
!1786 = !DILocation(line: 106, column: 4, scope: !1766)
!1787 = !DILocation(line: 118, column: 25, scope: !1766)
!1788 = !DILocation(line: 118, column: 24, scope: !1766)
!1789 = !DILocation(line: 118, column: 2, scope: !1766)
!1790 = !DILocation(line: 108, column: 12, scope: !1766)
!1791 = !DILocation(line: 108, column: 14, scope: !1766)
!1792 = !DILocation(line: 114, column: 3, scope: !1766)
!1793 = !DILocation(line: 115, column: 19, scope: !1766)
!1794 = !DILocation(line: 115, column: 16, scope: !1766)
!1795 = !DILocation(line: 115, column: 3, scope: !1766)
!1796 = !DILocation(line: 116, column: 24, scope: !1766)
!1797 = !DILocation(line: 116, column: 21, scope: !1766)
!1798 = !DILocation(line: 116, column: 3, scope: !1766)
!1799 = distinct !DISubprogram(name: "sync/atomic.SwapUint32", linkageName: "sync/atomic.SwapUint32", scope: !1800, file: !1800, line: 77, type: !1801, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1804)
!1800 = !DIFile(filename: "doc.go", directory: "/usr/local/go/src/sync/atomic")
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!1803, !98}
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64, dwarfAddressSpace: 0)
!1804 = !{!1805, !1806}
!1805 = !DILocalVariable(name: "addr", arg: 1, scope: !1799, file: !1800, line: 77, type: !1803)
!1806 = !DILocalVariable(name: "new", arg: 2, scope: !1799, file: !1800, line: 77, type: !98)
!1807 = !DILocation(line: 77, column: 6, scope: !1799)
!1808 = distinct !DISubprogram(name: "sync/atomic.CompareAndSwapUint32", linkageName: "sync/atomic.CompareAndSwapUint32", scope: !1800, file: !1800, line: 99, type: !1809, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1811)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!1803, !98, !98}
!1811 = !{!1812, !1813, !1814}
!1812 = !DILocalVariable(name: "addr", arg: 1, scope: !1808, file: !1800, line: 99, type: !1803)
!1813 = !DILocalVariable(name: "old", arg: 2, scope: !1808, file: !1800, line: 99, type: !98)
!1814 = !DILocalVariable(name: "new", arg: 3, scope: !1808, file: !1800, line: 99, type: !98)
!1815 = !DILocation(line: 99, column: 6, scope: !1808)
!1816 = distinct !DISubprogram(name: "sync/atomic.AddUint32", linkageName: "sync/atomic.AddUint32", scope: !1800, file: !1800, line: 123, type: !1801, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1817)
!1817 = !{!1818, !1819}
!1818 = !DILocalVariable(name: "addr", arg: 1, scope: !1816, file: !1800, line: 123, type: !1803)
!1819 = !DILocalVariable(name: "delta", arg: 2, scope: !1816, file: !1800, line: 123, type: !98)
!1820 = !DILocation(line: 123, column: 6, scope: !1816)
!1821 = distinct !DISubprogram(name: "sync/atomic.LoadUint32", linkageName: "sync/atomic.LoadUint32", scope: !1800, file: !1800, line: 183, type: !1822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1824)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!1803}
!1824 = !{!1825}
!1825 = !DILocalVariable(name: "addr", arg: 1, scope: !1821, file: !1800, line: 183, type: !1803)
!1826 = !DILocation(line: 183, column: 6, scope: !1821)
!1827 = distinct !DISubprogram(name: "sync/atomic.StoreUint32", linkageName: "sync/atomic.StoreUint32", scope: !1800, file: !1800, line: 205, type: !1801, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1828)
!1828 = !{!1829, !1830}
!1829 = !DILocalVariable(name: "addr", arg: 1, scope: !1827, file: !1800, line: 205, type: !1803)
!1830 = !DILocalVariable(name: "val", arg: 2, scope: !1827, file: !1800, line: 205, type: !98)
!1831 = !DILocation(line: 205, column: 6, scope: !1827)
!1832 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Add", linkageName: "(*sync/atomic.Uint32).Add", scope: !1833, file: !1833, line: 161, type: !1834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1837)
!1833 = !DIFile(filename: "type.go", directory: "/usr/local/go/src/sync/atomic")
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!1836, !98}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64, dwarfAddressSpace: 0)
!1837 = !{!1838, !1839}
!1838 = !DILocalVariable(name: "x", arg: 1, scope: !1832, file: !1833, line: 161, type: !1836)
!1839 = !DILocalVariable(name: "delta", arg: 2, scope: !1832, file: !1833, line: 161, type: !98)
!1840 = !DILocation(line: 161, column: 18, scope: !1832)
!1841 = !DILocation(line: 161, column: 69, scope: !1832)
!1842 = !DILocation(line: 161, column: 71, scope: !1832)
!1843 = !DILocation(line: 161, column: 74, scope: !1832)
!1844 = !DILocation(line: 161, column: 67, scope: !1832)
!1845 = !DILocation(line: 161, column: 51, scope: !1832)
!1846 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).CompareAndSwap", linkageName: "(*sync/atomic.Uint32).CompareAndSwap", scope: !1833, file: !1833, line: 156, type: !1847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1849)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!1836, !98, !98}
!1849 = !{!1850, !1851, !1852}
!1850 = !DILocalVariable(name: "x", arg: 1, scope: !1846, file: !1833, line: 156, type: !1836)
!1851 = !DILocalVariable(name: "old", arg: 2, scope: !1846, file: !1833, line: 156, type: !98)
!1852 = !DILocalVariable(name: "new", arg: 3, scope: !1846, file: !1833, line: 156, type: !98)
!1853 = !DILocation(line: 156, column: 18, scope: !1846)
!1854 = !DILocation(line: 157, column: 31, scope: !1846)
!1855 = !DILocation(line: 157, column: 33, scope: !1846)
!1856 = !DILocation(line: 157, column: 36, scope: !1846)
!1857 = !DILocation(line: 157, column: 41, scope: !1846)
!1858 = !DILocation(line: 157, column: 29, scope: !1846)
!1859 = !DILocation(line: 157, column: 2, scope: !1846)
!1860 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Load", linkageName: "(*sync/atomic.Uint32).Load", scope: !1833, file: !1833, line: 147, type: !1861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1863)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!1836}
!1863 = !{!1864}
!1864 = !DILocalVariable(name: "x", arg: 1, scope: !1860, file: !1833, line: 147, type: !1836)
!1865 = !DILocation(line: 147, column: 18, scope: !1860)
!1866 = !DILocation(line: 147, column: 53, scope: !1860)
!1867 = !DILocation(line: 147, column: 55, scope: !1860)
!1868 = !DILocation(line: 147, column: 51, scope: !1860)
!1869 = !DILocation(line: 147, column: 34, scope: !1860)
!1870 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Store", linkageName: "(*sync/atomic.Uint32).Store", scope: !1833, file: !1833, line: 150, type: !1834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1871)
!1871 = !{!1872, !1873}
!1872 = !DILocalVariable(name: "x", arg: 1, scope: !1870, file: !1833, line: 150, type: !1836)
!1873 = !DILocalVariable(name: "val", arg: 2, scope: !1870, file: !1833, line: 150, type: !98)
!1874 = !DILocation(line: 150, column: 18, scope: !1870)
!1875 = !DILocation(line: 150, column: 51, scope: !1870)
!1876 = !DILocation(line: 150, column: 53, scope: !1870)
!1877 = !DILocation(line: 150, column: 56, scope: !1870)
!1878 = !DILocation(line: 150, column: 49, scope: !1870)
!1879 = !DILocation(line: 150, column: 62, scope: !1870)
!1880 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Swap", linkageName: "(*sync/atomic.Uint32).Swap", scope: !1833, file: !1833, line: 153, type: !1834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1881)
!1881 = !{!1882, !1883}
!1882 = !DILocalVariable(name: "x", arg: 1, scope: !1880, file: !1833, line: 153, type: !1836)
!1883 = !DILocalVariable(name: "new", arg: 2, scope: !1880, file: !1833, line: 153, type: !98)
!1884 = !DILocation(line: 153, column: 18, scope: !1880)
!1885 = !DILocation(line: 153, column: 69, scope: !1880)
!1886 = !DILocation(line: 153, column: 71, scope: !1880)
!1887 = !DILocation(line: 153, column: 74, scope: !1880)
!1888 = !DILocation(line: 153, column: 67, scope: !1880)
!1889 = !DILocation(line: 153, column: 50, scope: !1880)
!1890 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wait", linkageName: "(*internal/futex.Futex).Wait", scope: !1891, file: !1891, line: 25, type: !1892, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !1895)
!1891 = !DIFile(filename: "futex.go", directory: "/usr/local/lib/tinygo/src/internal/futex")
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!1894, !98}
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64, dwarfAddressSpace: 0)
!1895 = !{!1896, !1897}
!1896 = !DILocalVariable(name: "f", arg: 1, scope: !1890, file: !1891, line: 25, type: !1894)
!1897 = !DILocalVariable(name: "cmp", arg: 2, scope: !1890, file: !1891, line: 25, type: !98)
!1898 = !DILocation(line: 25, column: 17, scope: !1890)
!1899 = !DILocation(line: 26, column: 46, scope: !1890)
!1900 = !DILocation(line: 26, column: 48, scope: !1890)
!1901 = !DILocation(line: 26, column: 58, scope: !1890)
!1902 = !DILocation(line: 26, column: 19, scope: !1890)
!1903 = !DILocation(line: 44, column: 2, scope: !1890)
!1904 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wake", linkageName: "(*internal/futex.Futex).Wake", scope: !1891, file: !1891, line: 53, type: !1905, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!1894}
!1907 = !{!1908}
!1908 = !DILocalVariable(name: "f", arg: 1, scope: !1904, file: !1891, line: 53, type: !1894)
!1909 = !DILocation(line: 53, column: 17, scope: !1904)
!1910 = !DILocation(line: 54, column: 46, scope: !1904)
!1911 = !DILocation(line: 54, column: 48, scope: !1904)
!1912 = !DILocation(line: 54, column: 19, scope: !1904)
!1913 = !DILocation(line: 55, column: 2, scope: !1904)
!1914 = distinct !DISubprogram(name: "(*internal/futex.Futex).WakeAll", linkageName: "(*internal/futex.Futex).WakeAll", scope: !1891, file: !1891, line: 58, type: !1905, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !1915)
!1915 = !{!1916}
!1916 = !DILocalVariable(name: "f", arg: 1, scope: !1914, file: !1891, line: 58, type: !1894)
!1917 = !DILocation(line: 58, column: 17, scope: !1914)
!1918 = !DILocation(line: 59, column: 50, scope: !1914)
!1919 = !DILocation(line: 59, column: 52, scope: !1914)
!1920 = !DILocation(line: 59, column: 23, scope: !1914)
!1921 = !DILocation(line: 60, column: 2, scope: !1914)
!1922 = distinct !DISubprogram(name: "(internal/gclayout.Layout).AsPtr", linkageName: "(internal/gclayout.Layout).AsPtr", scope: !1923, file: !1923, line: 26, type: !1924, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1021, retainedNodes: !1927)
!1923 = !DIFile(filename: "gclayout.go", directory: "/usr/local/lib/tinygo/src/internal/gclayout")
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!1926}
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/gclayout.Layout", baseType: !43)
!1927 = !{!1928}
!1928 = !DILocalVariable(name: "l", arg: 1, scope: !1922, file: !1923, line: 26, type: !1926)
!1929 = !DILocation(line: 26, column: 17, scope: !1922)
!1930 = !DILocation(line: 26, column: 64, scope: !1922)
!1931 = !DILocation(line: 26, column: 63, scope: !1922)
!1932 = !DILocation(line: 26, column: 42, scope: !1922)
!1933 = distinct !DISubprogram(name: "internal/itoa.Itoa", linkageName: "internal/itoa.Itoa", scope: !2, file: !2, line: 10, type: !1934, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !1937)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!1936}
!1936 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!1937 = !{!1938}
!1938 = !DILocalVariable(name: "val", arg: 1, scope: !1933, file: !2, line: 10, type: !1936)
!1939 = !DILocation(line: 10, column: 6, scope: !1933)
!1940 = !DILocation(line: 11, column: 5, scope: !1933)
!1941 = !DILocation(line: 11, column: 9, scope: !1933)
!1942 = !DILocation(line: 0, scope: !1933)
!1943 = !DILocation(line: 12, column: 28, scope: !1933)
!1944 = !DILocation(line: 12, column: 27, scope: !1933)
!1945 = !DILocation(line: 12, column: 21, scope: !1933)
!1946 = !DILocation(line: 12, column: 14, scope: !1933)
!1947 = !DILocation(line: 12, column: 3, scope: !1933)
!1948 = !DILocation(line: 14, column: 20, scope: !1933)
!1949 = !DILocation(line: 14, column: 14, scope: !1933)
!1950 = !DILocation(line: 14, column: 2, scope: !1933)
!1951 = distinct !DISubprogram(name: "internal/itoa.Uitoa", linkageName: "internal/itoa.Uitoa", scope: !2, file: !2, line: 18, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !1952)
!1952 = !{!1953, !1954, !1955}
!1953 = !DILocalVariable(name: "val", arg: 1, scope: !1951, file: !2, line: 18, type: !1738)
!1954 = !DILocalVariable(name: "i", scope: !1951, file: !2, line: 23, type: !1936)
!1955 = !DILocalVariable(name: "q", scope: !1951, file: !2, line: 25, type: !1738)
!1956 = !DILocation(line: 18, column: 6, scope: !1951)
!1957 = !DILocation(line: 19, column: 5, scope: !1951)
!1958 = !DILocation(line: 19, column: 9, scope: !1951)
!1959 = !DILocation(line: 0, scope: !1951)
!1960 = !DILocation(line: 20, column: 3, scope: !1951)
!1961 = !DILocation(line: 22, column: 6, scope: !1951)
!1962 = !DILocation(line: 23, column: 2, scope: !1951)
!1963 = !DILocation(line: 18, column: 12, scope: !1951)
!1964 = !DILocation(line: 24, column: 6, scope: !1951)
!1965 = !DILocation(line: 24, column: 10, scope: !1951)
!1966 = !DILocation(line: 25, column: 8, scope: !1951)
!1967 = !DILocation(line: 25, column: 12, scope: !1951)
!1968 = !DILocation(line: 25, column: 3, scope: !1951)
!1969 = !DILocation(line: 26, column: 7, scope: !1951)
!1970 = !DILocation(line: 26, column: 23, scope: !1951)
!1971 = !DILocation(line: 26, column: 21, scope: !1951)
!1972 = !DILocation(line: 26, column: 29, scope: !1951)
!1973 = !DILocation(line: 26, column: 30, scope: !1951)
!1974 = !DILocation(line: 26, column: 27, scope: !1951)
!1975 = !DILocation(line: 26, column: 16, scope: !1951)
!1976 = !DILocation(line: 26, column: 6, scope: !1951)
!1977 = !DILocation(line: 27, column: 3, scope: !1951)
!1978 = !DILocation(line: 28, column: 9, scope: !1951)
!1979 = !DILocation(line: 28, column: 3, scope: !1951)
!1980 = !DILocation(line: 31, column: 6, scope: !1951)
!1981 = !DILocation(line: 31, column: 22, scope: !1951)
!1982 = !DILocation(line: 31, column: 20, scope: !1951)
!1983 = !DILocation(line: 31, column: 15, scope: !1951)
!1984 = !DILocation(line: 31, column: 5, scope: !1951)
!1985 = !DILocation(line: 32, column: 20, scope: !1951)
!1986 = !DILocation(line: 32, column: 19, scope: !1951)
!1987 = !DILocation(line: 32, column: 15, scope: !1951)
!1988 = !DILocation(line: 32, column: 2, scope: !1951)
!1989 = distinct !DISubprogram(name: "unicode/utf8.DecodeRuneInString", linkageName: "unicode/utf8.DecodeRuneInString", scope: !11, file: !11, line: 219, type: !1990, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !1992)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!38}
!1992 = !{!1993, !1994, !1996}
!1993 = !DILocalVariable(name: "s", arg: 1, scope: !1989, file: !11, line: 219, type: !38)
!1994 = !DILocalVariable(name: "r", scope: !1989, file: !11, line: 219, type: !1995)
!1995 = !DIBasicType(name: "rune", size: 32, encoding: DW_ATE_signed)
!1996 = !DILocalVariable(name: "size", scope: !1989, file: !11, line: 219, type: !1936)
!1997 = !DILocation(line: 219, column: 6, scope: !1989)
!1998 = !DILocation(line: 223, column: 5, scope: !1989)
!1999 = !DILocation(line: 223, column: 7, scope: !1989)
!2000 = !DILocation(line: 0, scope: !1989)
!2001 = !DILocation(line: 223, column: 16, scope: !1989)
!2002 = !DILocation(line: 223, column: 17, scope: !1989)
!2003 = !DILocation(line: 223, column: 21, scope: !1989)
!2004 = !DILocation(line: 224, column: 15, scope: !1989)
!2005 = !DILocation(line: 224, column: 16, scope: !1989)
!2006 = !DILocation(line: 224, column: 14, scope: !1989)
!2007 = !DILocation(line: 224, column: 3, scope: !1989)
!2008 = !DILocation(line: 226, column: 36, scope: !1989)
!2009 = !DILocation(line: 226, column: 35, scope: !1989)
!2010 = !DILocation(line: 226, column: 3, scope: !1989)
!2011 = !DILocation(line: 226, column: 6, scope: !1989)
!2012 = !DILocation(line: 228, column: 2, scope: !1989)
!2013 = distinct !DISubprogram(name: "unicode/utf8.decodeRuneInStringSlow", linkageName: "unicode/utf8.decodeRuneInStringSlow", scope: !11, file: !11, line: 231, type: !1990, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2014)
!2014 = !{!2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024}
!2015 = !DILocalVariable(name: "s", arg: 1, scope: !2013, file: !11, line: 231, type: !38)
!2016 = !DILocalVariable(name: "n", scope: !2013, file: !11, line: 232, type: !1936)
!2017 = !DILocalVariable(name: "s0", scope: !2013, file: !11, line: 236, type: !533)
!2018 = !DILocalVariable(name: "x", scope: !2013, file: !11, line: 237, type: !4)
!2019 = !DILocalVariable(name: "mask", scope: !2013, file: !11, line: 242, type: !1995)
!2020 = !DILocalVariable(name: "sz", scope: !2013, file: !11, line: 245, type: !1936)
!2021 = !DILocalVariable(name: "accept", scope: !2013, file: !11, line: 246, type: !18)
!2022 = !DILocalVariable(name: "s1", scope: !2013, file: !11, line: 250, type: !533)
!2023 = !DILocalVariable(name: "s2", scope: !2013, file: !11, line: 257, type: !533)
!2024 = !DILocalVariable(name: "s3", scope: !2013, file: !11, line: 264, type: !533)
!2025 = !DILocation(line: 231, column: 6, scope: !2013)
!2026 = !DILocation(line: 232, column: 11, scope: !2013)
!2027 = !DILocation(line: 232, column: 10, scope: !2013)
!2028 = !DILocation(line: 232, column: 2, scope: !2013)
!2029 = !DILocation(line: 233, column: 5, scope: !2013)
!2030 = !DILocation(line: 233, column: 7, scope: !2013)
!2031 = !DILocation(line: 0, scope: !2013)
!2032 = !DILocation(line: 234, column: 3, scope: !2013)
!2033 = !DILocation(line: 236, column: 8, scope: !2013)
!2034 = !DILocation(line: 236, column: 9, scope: !2013)
!2035 = !DILocation(line: 236, column: 2, scope: !2013)
!2036 = !DILocation(line: 237, column: 13, scope: !2013)
!2037 = !DILocation(line: 237, column: 12, scope: !2013)
!2038 = !DILocation(line: 237, column: 2, scope: !2013)
!2039 = !DILocation(line: 238, column: 5, scope: !2013)
!2040 = !DILocation(line: 238, column: 7, scope: !2013)
!2041 = !DILocation(line: 242, column: 16, scope: !2013)
!2042 = !DILocation(line: 242, column: 15, scope: !2013)
!2043 = !DILocation(line: 242, column: 19, scope: !2013)
!2044 = !DILocation(line: 242, column: 25, scope: !2013)
!2045 = !DILocation(line: 242, column: 3, scope: !2013)
!2046 = !DILocation(line: 243, column: 15, scope: !2013)
!2047 = !DILocation(line: 243, column: 16, scope: !2013)
!2048 = !DILocation(line: 243, column: 14, scope: !2013)
!2049 = !DILocation(line: 243, column: 22, scope: !2013)
!2050 = !DILocation(line: 243, column: 20, scope: !2013)
!2051 = !DILocation(line: 243, column: 39, scope: !2013)
!2052 = !DILocation(line: 243, column: 38, scope: !2013)
!2053 = !DILocation(line: 243, column: 27, scope: !2013)
!2054 = !DILocation(line: 243, column: 3, scope: !2013)
!2055 = !DILocation(line: 245, column: 12, scope: !2013)
!2056 = !DILocation(line: 245, column: 14, scope: !2013)
!2057 = !DILocation(line: 245, column: 11, scope: !2013)
!2058 = !DILocation(line: 245, column: 2, scope: !2013)
!2059 = !DILocation(line: 246, column: 25, scope: !2013)
!2060 = !DILocation(line: 246, column: 26, scope: !2013)
!2061 = !DILocation(line: 246, column: 24, scope: !2013)
!2062 = !DILocation(line: 246, column: 2, scope: !2013)
!2063 = !DILocation(line: 247, column: 5, scope: !2013)
!2064 = !DILocation(line: 247, column: 9, scope: !2013)
!2065 = !DILocation(line: 247, column: 7, scope: !2013)
!2066 = !DILocation(line: 248, column: 3, scope: !2013)
!2067 = !DILocation(line: 250, column: 8, scope: !2013)
!2068 = !DILocation(line: 250, column: 9, scope: !2013)
!2069 = !DILocation(line: 250, column: 2, scope: !2013)
!2070 = !DILocation(line: 251, column: 5, scope: !2013)
!2071 = !DILocation(line: 251, column: 17, scope: !2013)
!2072 = !DILocation(line: 251, column: 8, scope: !2013)
!2073 = !DILocation(line: 252, column: 3, scope: !2013)
!2074 = !DILocation(line: 251, column: 30, scope: !2013)
!2075 = !DILocation(line: 251, column: 35, scope: !2013)
!2076 = !DILocation(line: 251, column: 33, scope: !2013)
!2077 = !DILocation(line: 254, column: 5, scope: !2013)
!2078 = !DILocation(line: 254, column: 8, scope: !2013)
!2079 = !DILocation(line: 255, column: 15, scope: !2013)
!2080 = !DILocation(line: 255, column: 17, scope: !2013)
!2081 = !DILocation(line: 255, column: 14, scope: !2013)
!2082 = !DILocation(line: 255, column: 24, scope: !2013)
!2083 = !DILocation(line: 255, column: 35, scope: !2013)
!2084 = !DILocation(line: 255, column: 37, scope: !2013)
!2085 = !DILocation(line: 255, column: 34, scope: !2013)
!2086 = !DILocation(line: 255, column: 28, scope: !2013)
!2087 = !DILocation(line: 255, column: 3, scope: !2013)
!2088 = !DILocation(line: 257, column: 8, scope: !2013)
!2089 = !DILocation(line: 257, column: 9, scope: !2013)
!2090 = !DILocation(line: 257, column: 2, scope: !2013)
!2091 = !DILocation(line: 258, column: 5, scope: !2013)
!2092 = !DILocation(line: 258, column: 8, scope: !2013)
!2093 = !DILocation(line: 259, column: 3, scope: !2013)
!2094 = !DILocation(line: 258, column: 25, scope: !2013)
!2095 = !DILocation(line: 258, column: 23, scope: !2013)
!2096 = !DILocation(line: 261, column: 5, scope: !2013)
!2097 = !DILocation(line: 261, column: 8, scope: !2013)
!2098 = !DILocation(line: 262, column: 15, scope: !2013)
!2099 = !DILocation(line: 262, column: 17, scope: !2013)
!2100 = !DILocation(line: 262, column: 14, scope: !2013)
!2101 = !DILocation(line: 262, column: 24, scope: !2013)
!2102 = !DILocation(line: 262, column: 36, scope: !2013)
!2103 = !DILocation(line: 262, column: 38, scope: !2013)
!2104 = !DILocation(line: 262, column: 35, scope: !2013)
!2105 = !DILocation(line: 262, column: 45, scope: !2013)
!2106 = !DILocation(line: 262, column: 29, scope: !2013)
!2107 = !DILocation(line: 262, column: 56, scope: !2013)
!2108 = !DILocation(line: 262, column: 58, scope: !2013)
!2109 = !DILocation(line: 262, column: 55, scope: !2013)
!2110 = !DILocation(line: 262, column: 49, scope: !2013)
!2111 = !DILocation(line: 262, column: 3, scope: !2013)
!2112 = !DILocation(line: 264, column: 8, scope: !2013)
!2113 = !DILocation(line: 264, column: 9, scope: !2013)
!2114 = !DILocation(line: 264, column: 2, scope: !2013)
!2115 = !DILocation(line: 265, column: 5, scope: !2013)
!2116 = !DILocation(line: 265, column: 8, scope: !2013)
!2117 = !DILocation(line: 266, column: 3, scope: !2013)
!2118 = !DILocation(line: 265, column: 25, scope: !2013)
!2119 = !DILocation(line: 265, column: 23, scope: !2013)
!2120 = !DILocation(line: 268, column: 14, scope: !2013)
!2121 = !DILocation(line: 268, column: 16, scope: !2013)
!2122 = !DILocation(line: 268, column: 13, scope: !2013)
!2123 = !DILocation(line: 268, column: 23, scope: !2013)
!2124 = !DILocation(line: 268, column: 35, scope: !2013)
!2125 = !DILocation(line: 268, column: 37, scope: !2013)
!2126 = !DILocation(line: 268, column: 34, scope: !2013)
!2127 = !DILocation(line: 268, column: 44, scope: !2013)
!2128 = !DILocation(line: 268, column: 28, scope: !2013)
!2129 = !DILocation(line: 268, column: 56, scope: !2013)
!2130 = !DILocation(line: 268, column: 58, scope: !2013)
!2131 = !DILocation(line: 268, column: 55, scope: !2013)
!2132 = !DILocation(line: 268, column: 65, scope: !2013)
!2133 = !DILocation(line: 268, column: 49, scope: !2013)
!2134 = !DILocation(line: 268, column: 76, scope: !2013)
!2135 = !DILocation(line: 268, column: 78, scope: !2013)
!2136 = !DILocation(line: 268, column: 75, scope: !2013)
!2137 = !DILocation(line: 268, column: 69, scope: !2013)
!2138 = !DILocation(line: 268, column: 2, scope: !2013)
!2139 = distinct !DISubprogram(name: "unicode/utf8.EncodeRune", linkageName: "unicode/utf8.EncodeRune", scope: !11, file: !11, line: 368, type: !2140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2146)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!2142, !1995}
!2142 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]byte", size: 192, align: 64, elements: !2143)
!2143 = !{!2144, !42, !673}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !2145, size: 64, align: 64)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64, align: 64, dwarfAddressSpace: 0)
!2146 = !{!2147, !2148}
!2147 = !DILocalVariable(name: "p", arg: 1, scope: !2139, file: !11, line: 368, type: !2142)
!2148 = !DILocalVariable(name: "r", arg: 2, scope: !2139, file: !11, line: 368, type: !1995)
!2149 = !DILocation(line: 368, column: 6, scope: !2139)
!2150 = !DILocation(line: 370, column: 12, scope: !2139)
!2151 = !DILocation(line: 370, column: 15, scope: !2139)
!2152 = !DILocation(line: 0, scope: !2139)
!2153 = !DILocation(line: 371, column: 3, scope: !2139)
!2154 = !DILocation(line: 371, column: 15, scope: !2139)
!2155 = !DILocation(line: 371, column: 14, scope: !2139)
!2156 = !DILocation(line: 371, column: 4, scope: !2139)
!2157 = !DILocation(line: 372, column: 3, scope: !2139)
!2158 = !DILocation(line: 374, column: 28, scope: !2139)
!2159 = !DILocation(line: 374, column: 31, scope: !2139)
!2160 = !DILocation(line: 374, column: 27, scope: !2139)
!2161 = !DILocation(line: 374, column: 2, scope: !2139)
!2162 = distinct !DISubprogram(name: "unicode/utf8.encodeRuneNonASCII", linkageName: "unicode/utf8.encodeRuneNonASCII", scope: !11, file: !11, line: 377, type: !2140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2163)
!2163 = !{!2164, !2165, !2166}
!2164 = !DILocalVariable(name: "p", arg: 1, scope: !2162, file: !11, line: 377, type: !2142)
!2165 = !DILocalVariable(name: "r", arg: 2, scope: !2162, file: !11, line: 377, type: !1995)
!2166 = !DILocalVariable(name: "i", scope: !2162, file: !11, line: 379, type: !98)
!2167 = !DILocation(line: 377, column: 6, scope: !2162)
!2168 = !DILocation(line: 379, column: 21, scope: !2162)
!2169 = !DILocation(line: 379, column: 9, scope: !2162)
!2170 = !DILocation(line: 380, column: 7, scope: !2162)
!2171 = !DILocation(line: 380, column: 9, scope: !2162)
!2172 = !DILocation(line: 0, scope: !2162)
!2173 = !DILocation(line: 381, column: 7, scope: !2162)
!2174 = !DILocation(line: 381, column: 8, scope: !2162)
!2175 = !DILocation(line: 382, column: 3, scope: !2162)
!2176 = !DILocation(line: 382, column: 20, scope: !2162)
!2177 = !DILocation(line: 382, column: 21, scope: !2162)
!2178 = !DILocation(line: 382, column: 19, scope: !2162)
!2179 = !DILocation(line: 382, column: 13, scope: !2162)
!2180 = !DILocation(line: 382, column: 4, scope: !2162)
!2181 = !DILocation(line: 383, column: 3, scope: !2162)
!2182 = !DILocation(line: 383, column: 20, scope: !2162)
!2183 = !DILocation(line: 383, column: 19, scope: !2162)
!2184 = !DILocation(line: 383, column: 22, scope: !2162)
!2185 = !DILocation(line: 383, column: 13, scope: !2162)
!2186 = !DILocation(line: 383, column: 4, scope: !2162)
!2187 = !DILocation(line: 384, column: 3, scope: !2162)
!2188 = !DILocation(line: 385, column: 7, scope: !2162)
!2189 = !DILocation(line: 385, column: 9, scope: !2162)
!2190 = !DILocation(line: 386, column: 7, scope: !2162)
!2191 = !DILocation(line: 386, column: 8, scope: !2162)
!2192 = !DILocation(line: 387, column: 3, scope: !2162)
!2193 = !DILocation(line: 387, column: 20, scope: !2162)
!2194 = !DILocation(line: 387, column: 21, scope: !2162)
!2195 = !DILocation(line: 387, column: 19, scope: !2162)
!2196 = !DILocation(line: 387, column: 13, scope: !2162)
!2197 = !DILocation(line: 387, column: 4, scope: !2162)
!2198 = !DILocation(line: 388, column: 3, scope: !2162)
!2199 = !DILocation(line: 388, column: 20, scope: !2162)
!2200 = !DILocation(line: 388, column: 21, scope: !2162)
!2201 = !DILocation(line: 388, column: 19, scope: !2162)
!2202 = !DILocation(line: 388, column: 25, scope: !2162)
!2203 = !DILocation(line: 388, column: 13, scope: !2162)
!2204 = !DILocation(line: 388, column: 4, scope: !2162)
!2205 = !DILocation(line: 389, column: 3, scope: !2162)
!2206 = !DILocation(line: 389, column: 20, scope: !2162)
!2207 = !DILocation(line: 389, column: 19, scope: !2162)
!2208 = !DILocation(line: 389, column: 22, scope: !2162)
!2209 = !DILocation(line: 389, column: 13, scope: !2162)
!2210 = !DILocation(line: 389, column: 4, scope: !2162)
!2211 = !DILocation(line: 390, column: 3, scope: !2162)
!2212 = !DILocation(line: 385, column: 40, scope: !2162)
!2213 = !DILocation(line: 385, column: 38, scope: !2162)
!2214 = !DILocation(line: 385, column: 45, scope: !2162)
!2215 = !DILocation(line: 385, column: 47, scope: !2162)
!2216 = !DILocation(line: 385, column: 42, scope: !2162)
!2217 = !DILocation(line: 391, column: 7, scope: !2162)
!2218 = !DILocation(line: 391, column: 9, scope: !2162)
!2219 = !DILocation(line: 391, column: 23, scope: !2162)
!2220 = !DILocation(line: 391, column: 25, scope: !2162)
!2221 = !DILocation(line: 391, column: 20, scope: !2162)
!2222 = !DILocation(line: 392, column: 7, scope: !2162)
!2223 = !DILocation(line: 392, column: 8, scope: !2162)
!2224 = !DILocation(line: 393, column: 3, scope: !2162)
!2225 = !DILocation(line: 393, column: 20, scope: !2162)
!2226 = !DILocation(line: 393, column: 21, scope: !2162)
!2227 = !DILocation(line: 393, column: 19, scope: !2162)
!2228 = !DILocation(line: 393, column: 13, scope: !2162)
!2229 = !DILocation(line: 393, column: 4, scope: !2162)
!2230 = !DILocation(line: 394, column: 3, scope: !2162)
!2231 = !DILocation(line: 394, column: 20, scope: !2162)
!2232 = !DILocation(line: 394, column: 21, scope: !2162)
!2233 = !DILocation(line: 394, column: 19, scope: !2162)
!2234 = !DILocation(line: 394, column: 26, scope: !2162)
!2235 = !DILocation(line: 394, column: 13, scope: !2162)
!2236 = !DILocation(line: 394, column: 4, scope: !2162)
!2237 = !DILocation(line: 395, column: 3, scope: !2162)
!2238 = !DILocation(line: 395, column: 20, scope: !2162)
!2239 = !DILocation(line: 395, column: 21, scope: !2162)
!2240 = !DILocation(line: 395, column: 19, scope: !2162)
!2241 = !DILocation(line: 395, column: 25, scope: !2162)
!2242 = !DILocation(line: 395, column: 13, scope: !2162)
!2243 = !DILocation(line: 395, column: 4, scope: !2162)
!2244 = !DILocation(line: 396, column: 3, scope: !2162)
!2245 = !DILocation(line: 396, column: 20, scope: !2162)
!2246 = !DILocation(line: 396, column: 19, scope: !2162)
!2247 = !DILocation(line: 396, column: 22, scope: !2162)
!2248 = !DILocation(line: 396, column: 13, scope: !2162)
!2249 = !DILocation(line: 396, column: 4, scope: !2162)
!2250 = !DILocation(line: 397, column: 3, scope: !2162)
!2251 = !DILocation(line: 399, column: 7, scope: !2162)
!2252 = !DILocation(line: 399, column: 8, scope: !2162)
!2253 = !DILocation(line: 400, column: 3, scope: !2162)
!2254 = !DILocation(line: 400, column: 4, scope: !2162)
!2255 = !DILocation(line: 401, column: 3, scope: !2162)
!2256 = !DILocation(line: 401, column: 4, scope: !2162)
!2257 = !DILocation(line: 402, column: 3, scope: !2162)
!2258 = !DILocation(line: 402, column: 4, scope: !2162)
!2259 = !DILocation(line: 403, column: 3, scope: !2162)
!2260 = distinct !DISubprogram(name: "unicode/utf8.ValidRune", linkageName: "unicode/utf8.ValidRune", scope: !11, file: !11, line: 577, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2263)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!1995}
!2263 = !{!2264}
!2264 = !DILocalVariable(name: "r", arg: 1, scope: !2260, file: !11, line: 577, type: !1995)
!2265 = !DILocation(line: 577, column: 6, scope: !2260)
!2266 = !DILocation(line: 579, column: 12, scope: !2260)
!2267 = !DILocation(line: 579, column: 9, scope: !2260)
!2268 = !DILocation(line: 0, scope: !2260)
!2269 = !DILocation(line: 579, column: 17, scope: !2260)
!2270 = !DILocation(line: 579, column: 19, scope: !2260)
!2271 = !DILocation(line: 579, column: 14, scope: !2260)
!2272 = !DILocation(line: 580, column: 3, scope: !2260)
!2273 = !DILocation(line: 581, column: 22, scope: !2260)
!2274 = !DILocation(line: 581, column: 20, scope: !2260)
!2275 = !DILocation(line: 581, column: 27, scope: !2260)
!2276 = !DILocation(line: 581, column: 29, scope: !2260)
!2277 = !DILocation(line: 581, column: 24, scope: !2260)
!2278 = !DILocation(line: 582, column: 3, scope: !2260)
!2279 = !DILocation(line: 584, column: 2, scope: !2260)
!2280 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).Kind", linkageName: "(*internal/reflectlite.RawType).Kind", scope: !27, file: !27, line: 380, type: !2281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!1049}
!2283 = !{!2284, !2285}
!2284 = !DILocalVariable(name: "t", arg: 1, scope: !2280, file: !27, line: 380, type: !1049)
!2285 = !DILocalVariable(name: "tag", scope: !2280, file: !27, line: 385, type: !43)
!2286 = !DILocation(line: 380, column: 19, scope: !2280)
!2287 = !DILocation(line: 381, column: 5, scope: !2280)
!2288 = !DILocation(line: 381, column: 7, scope: !2280)
!2289 = !DILocation(line: 0, scope: !2280)
!2290 = !DILocation(line: 382, column: 3, scope: !2280)
!2291 = !DILocation(line: 385, column: 12, scope: !2280)
!2292 = !DILocation(line: 385, column: 20, scope: !2280)
!2293 = !DILocation(line: 385, column: 5, scope: !2280)
!2294 = !DILocation(line: 385, column: 24, scope: !2280)
!2295 = !DILocation(line: 385, column: 28, scope: !2280)
!2296 = !DILocation(line: 386, column: 3, scope: !2280)
!2297 = !DILocation(line: 389, column: 14, scope: !2280)
!2298 = !DILocation(line: 389, column: 16, scope: !2280)
!2299 = !DILocation(line: 389, column: 21, scope: !2280)
!2300 = !DILocation(line: 389, column: 2, scope: !2280)
!2301 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).elem", linkageName: "(*internal/reflectlite.RawType).elem", scope: !27, file: !27, line: 410, type: !2281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2302)
!2302 = !{!2303, !2304, !2305, !2306}
!2303 = !DILocalVariable(name: "t", arg: 1, scope: !2301, file: !27, line: 410, type: !1049)
!2304 = !DILocalVariable(name: "tag", scope: !2301, file: !27, line: 411, type: !43)
!2305 = !DILocalVariable(name: "underlying", scope: !2301, file: !27, line: 415, type: !1049)
!2306 = !DILocalVariable(name: "errTypeElem", scope: !2301, file: !27, line: 393, type: !33)
!2307 = !DILocation(line: 410, column: 19, scope: !2301)
!2308 = !DILocation(line: 411, column: 12, scope: !2301)
!2309 = !DILocation(line: 411, column: 20, scope: !2301)
!2310 = !DILocation(line: 411, column: 5, scope: !2301)
!2311 = !DILocation(line: 411, column: 24, scope: !2301)
!2312 = !DILocation(line: 411, column: 28, scope: !2301)
!2313 = !DILocation(line: 0, scope: !2301)
!2314 = !DILocation(line: 412, column: 47, scope: !2301)
!2315 = !DILocation(line: 412, column: 31, scope: !2301)
!2316 = !DILocation(line: 412, column: 3, scope: !2301)
!2317 = !DILocation(line: 415, column: 16, scope: !2301)
!2318 = !DILocation(line: 415, column: 28, scope: !2301)
!2319 = !DILocation(line: 415, column: 2, scope: !2301)
!2320 = !DILocation(line: 416, column: 9, scope: !2301)
!2321 = !DILocation(line: 416, column: 24, scope: !2301)
!2322 = !DILocation(line: 417, column: 7, scope: !2301)
!2323 = !DILocation(line: 418, column: 36, scope: !2301)
!2324 = !DILocation(line: 418, column: 49, scope: !2301)
!2325 = !DILocation(line: 418, column: 3, scope: !2301)
!2326 = !DILocation(line: 419, column: 7, scope: !2301)
!2327 = !DILocation(line: 420, column: 37, scope: !2301)
!2328 = !DILocation(line: 420, column: 50, scope: !2301)
!2329 = !DILocation(line: 420, column: 3, scope: !2301)
!2330 = !DILocation(line: 419, column: 13, scope: !2301)
!2331 = !DILocation(line: 419, column: 20, scope: !2301)
!2332 = !DILocation(line: 419, column: 27, scope: !2301)
!2333 = !DILocation(line: 422, column: 9, scope: !2301)
!2334 = !DILocation(line: 422, column: 8, scope: !2301)
!2335 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).Len", linkageName: "(*internal/reflectlite.RawType).Len", scope: !27, file: !27, line: 620, type: !2281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2336)
!2336 = !{!2337, !2338}
!2337 = !DILocalVariable(name: "t", arg: 1, scope: !2335, file: !27, line: 620, type: !1049)
!2338 = !DILocalVariable(name: "errTypeLen", scope: !2335, file: !27, line: 397, type: !33)
!2339 = !DILocation(line: 620, column: 19, scope: !2335)
!2340 = !DILocation(line: 621, column: 5, scope: !2335)
!2341 = !DILocation(line: 621, column: 11, scope: !2335)
!2342 = !DILocation(line: 621, column: 14, scope: !2335)
!2343 = !DILocation(line: 0, scope: !2335)
!2344 = !DILocation(line: 622, column: 9, scope: !2335)
!2345 = !DILocation(line: 622, column: 8, scope: !2335)
!2346 = !DILocation(line: 625, column: 41, scope: !2335)
!2347 = !DILocation(line: 625, column: 53, scope: !2335)
!2348 = !DILocation(line: 625, column: 58, scope: !2335)
!2349 = !DILocation(line: 625, column: 2, scope: !2335)
!2350 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).underlying", linkageName: "(*internal/reflectlite.RawType).underlying", scope: !27, file: !27, line: 263, type: !2281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2351)
!2351 = !{!2352}
!2352 = !DILocalVariable(name: "t", arg: 1, scope: !2350, file: !27, line: 263, type: !1049)
!2353 = !DILocation(line: 263, column: 19, scope: !2350)
!2354 = !DILocation(line: 264, column: 5, scope: !2350)
!2355 = !DILocation(line: 264, column: 14, scope: !2350)
!2356 = !DILocation(line: 0, scope: !2350)
!2357 = !DILocation(line: 265, column: 37, scope: !2350)
!2358 = !DILocation(line: 265, column: 41, scope: !2350)
!2359 = !DILocation(line: 265, column: 3, scope: !2350)
!2360 = !DILocation(line: 267, column: 9, scope: !2350)
!2361 = !DILocation(line: 267, column: 2, scope: !2350)
!2362 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).isNamed", linkageName: "(*internal/reflectlite.RawType).isNamed", scope: !27, file: !27, line: 274, type: !2281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2363)
!2363 = !{!2364, !2365}
!2364 = !DILocalVariable(name: "t", arg: 1, scope: !2362, file: !27, line: 274, type: !1049)
!2365 = !DILocalVariable(name: "tag", scope: !2362, file: !27, line: 275, type: !43)
!2366 = !DILocation(line: 274, column: 19, scope: !2362)
!2367 = !DILocation(line: 275, column: 12, scope: !2362)
!2368 = !DILocation(line: 275, column: 20, scope: !2362)
!2369 = !DILocation(line: 275, column: 5, scope: !2362)
!2370 = !DILocation(line: 275, column: 24, scope: !2362)
!2371 = !DILocation(line: 275, column: 28, scope: !2362)
!2372 = !DILocation(line: 0, scope: !2362)
!2373 = !DILocation(line: 276, column: 3, scope: !2362)
!2374 = !DILocation(line: 278, column: 9, scope: !2362)
!2375 = !DILocation(line: 278, column: 11, scope: !2362)
!2376 = !DILocation(line: 278, column: 15, scope: !2362)
!2377 = !DILocation(line: 278, column: 26, scope: !2362)
!2378 = !DILocation(line: 278, column: 2, scope: !2362)
!2379 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).ptrtag", linkageName: "(*internal/reflectlite.RawType).ptrtag", scope: !27, file: !27, line: 270, type: !2281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2380)
!2380 = !{!2381}
!2381 = !DILocalVariable(name: "t", arg: 1, scope: !2379, file: !27, line: 270, type: !1049)
!2382 = !DILocation(line: 270, column: 19, scope: !2379)
!2383 = !DILocation(line: 271, column: 32, scope: !2379)
!2384 = !DILocation(line: 271, column: 16, scope: !2379)
!2385 = !DILocation(line: 271, column: 36, scope: !2379)
!2386 = !DILocation(line: 271, column: 2, scope: !2379)
!2387 = distinct !DISubprogram(name: "(*internal/reflectlite.TypeError).Error", linkageName: "(*internal/reflectlite.TypeError).Error", scope: !27, file: !27, line: 1211, type: !2388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!33}
!2390 = !{!2391}
!2391 = !DILocalVariable(name: "e", arg: 1, scope: !2387, file: !27, line: 1211, type: !33)
!2392 = !DILocation(line: 1211, column: 21, scope: !2387)
!2393 = !DILocation(line: 1212, column: 44, scope: !2387)
!2394 = !DILocation(line: 1212, column: 46, scope: !2387)
!2395 = !DILocation(line: 1212, column: 42, scope: !2387)
!2396 = !DILocation(line: 1212, column: 53, scope: !2387)
!2397 = !DILocation(line: 1212, column: 2, scope: !2387)
!2398 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).ChanDir", linkageName: "(*internal/reflectlite.RawType).ChanDir", scope: !27, file: !27, line: 893, type: !2281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2399)
!2399 = !{!2400, !2401, !2402}
!2400 = !DILocalVariable(name: "t", arg: 1, scope: !2398, file: !27, line: 893, type: !1049)
!2401 = !DILocalVariable(name: "errTypeChanDir", scope: !2398, file: !27, line: 399, type: !33)
!2402 = !DILocalVariable(name: "dir", scope: !2398, file: !27, line: 898, type: !1936)
!2403 = !DILocation(line: 893, column: 19, scope: !2398)
!2404 = !DILocation(line: 894, column: 5, scope: !2398)
!2405 = !DILocation(line: 894, column: 11, scope: !2398)
!2406 = !DILocation(line: 894, column: 14, scope: !2398)
!2407 = !DILocation(line: 0, scope: !2398)
!2408 = !DILocation(line: 895, column: 9, scope: !2398)
!2409 = !DILocation(line: 895, column: 8, scope: !2398)
!2410 = !DILocation(line: 898, column: 40, scope: !2398)
!2411 = !DILocation(line: 898, column: 44, scope: !2398)
!2412 = !DILocation(line: 898, column: 12, scope: !2398)
!2413 = !DILocation(line: 898, column: 2, scope: !2398)
!2414 = !DILocation(line: 901, column: 17, scope: !2398)
!2415 = !DILocation(line: 901, column: 2, scope: !2398)
!2416 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).NumField", linkageName: "(*internal/reflectlite.RawType).NumField", scope: !27, file: !27, line: 630, type: !2281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2417)
!2417 = !{!2418, !2419}
!2418 = !DILocalVariable(name: "t", arg: 1, scope: !2416, file: !27, line: 630, type: !1049)
!2419 = !DILocalVariable(name: "errTypeNumField", scope: !2416, file: !27, line: 398, type: !33)
!2420 = !DILocation(line: 630, column: 19, scope: !2416)
!2421 = !DILocation(line: 631, column: 5, scope: !2416)
!2422 = !DILocation(line: 631, column: 11, scope: !2416)
!2423 = !DILocation(line: 631, column: 14, scope: !2416)
!2424 = !DILocation(line: 0, scope: !2416)
!2425 = !DILocation(line: 632, column: 9, scope: !2416)
!2426 = !DILocation(line: 632, column: 8, scope: !2416)
!2427 = !DILocation(line: 634, column: 42, scope: !2416)
!2428 = !DILocation(line: 634, column: 54, scope: !2416)
!2429 = !DILocation(line: 634, column: 59, scope: !2416)
!2430 = !DILocation(line: 634, column: 12, scope: !2416)
!2431 = !DILocation(line: 634, column: 2, scope: !2416)
!2432 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).String", linkageName: "(*internal/reflectlite.RawType).String", scope: !27, file: !27, line: 316, type: !2281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2433)
!2433 = !{!2434, !2435, !2436, !2437, !2438, !2439, !2440}
!2434 = !DILocalVariable(name: "t", arg: 1, scope: !2432, file: !27, line: 316, type: !1049)
!2435 = !DILocalVariable(name: "s", scope: !2432, file: !27, line: 318, type: !38)
!2436 = !DILocalVariable(name: "elem", scope: !2432, file: !27, line: 326, type: !38)
!2437 = !DILocalVariable(name: "numField", scope: !2432, file: !27, line: 352, type: !1936)
!2438 = !DILocalVariable(name: "s", scope: !2432, file: !27, line: 356, type: !38)
!2439 = !DILocalVariable(name: "i", scope: !2432, file: !27, line: 357, type: !1936)
!2440 = !DILocalVariable(name: "f", scope: !2432, file: !27, line: 358, type: !2441)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.rawStructField", baseType: !2442)
!2442 = !DICompositeType(tag: DW_TAG_structure_type, size: 576, align: 64, elements: !2443)
!2443 = !{!668, !2444, !2445, !2446, !2448, !2449}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "PkgPath", baseType: !38, size: 128, align: 64, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "Type", baseType: !1049, size: 64, align: 64, offset: 256)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "Tag", baseType: !2447, size: 128, align: 64, offset: 320)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.StructTag", baseType: !38)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "Offset", baseType: !43, size: 64, align: 64, offset: 448)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "Anonymous", baseType: !371, size: 8, align: 8, offset: 512)
!2450 = !DILocation(line: 316, column: 19, scope: !2432)
!2451 = !DILocation(line: 317, column: 5, scope: !2432)
!2452 = !DILocation(line: 317, column: 14, scope: !2432)
!2453 = !DILocation(line: 0, scope: !2432)
!2454 = !DILocation(line: 318, column: 8, scope: !2432)
!2455 = !DILocation(line: 318, column: 14, scope: !2432)
!2456 = !DILocation(line: 318, column: 3, scope: !2432)
!2457 = !DILocation(line: 319, column: 6, scope: !2432)
!2458 = !DILocation(line: 319, column: 7, scope: !2432)
!2459 = !DILocation(line: 319, column: 11, scope: !2432)
!2460 = !DILocation(line: 320, column: 11, scope: !2432)
!2461 = !DILocation(line: 320, column: 12, scope: !2432)
!2462 = !DILocation(line: 320, column: 4, scope: !2432)
!2463 = !DILocation(line: 322, column: 10, scope: !2432)
!2464 = !DILocation(line: 322, column: 3, scope: !2432)
!2465 = !DILocation(line: 324, column: 9, scope: !2432)
!2466 = !DILocation(line: 324, column: 15, scope: !2432)
!2467 = !DILocation(line: 325, column: 7, scope: !2432)
!2468 = !DILocation(line: 326, column: 11, scope: !2432)
!2469 = !DILocation(line: 326, column: 17, scope: !2432)
!2470 = !DILocation(line: 326, column: 26, scope: !2432)
!2471 = !DILocation(line: 326, column: 3, scope: !2432)
!2472 = !DILocation(line: 327, column: 10, scope: !2432)
!2473 = !DILocation(line: 327, column: 19, scope: !2432)
!2474 = !DILocation(line: 328, column: 8, scope: !2432)
!2475 = !DILocation(line: 329, column: 23, scope: !2432)
!2476 = !DILocation(line: 329, column: 21, scope: !2432)
!2477 = !DILocation(line: 329, column: 4, scope: !2432)
!2478 = !DILocation(line: 330, column: 8, scope: !2432)
!2479 = !DILocation(line: 331, column: 23, scope: !2432)
!2480 = !DILocation(line: 331, column: 21, scope: !2432)
!2481 = !DILocation(line: 331, column: 4, scope: !2432)
!2482 = !DILocation(line: 332, column: 8, scope: !2432)
!2483 = !DILocation(line: 333, column: 7, scope: !2432)
!2484 = !DILocation(line: 333, column: 11, scope: !2432)
!2485 = !DILocation(line: 333, column: 15, scope: !2432)
!2486 = !DILocation(line: 338, column: 23, scope: !2432)
!2487 = !DILocation(line: 338, column: 21, scope: !2432)
!2488 = !DILocation(line: 338, column: 28, scope: !2432)
!2489 = !DILocation(line: 338, column: 5, scope: !2432)
!2490 = !DILocation(line: 340, column: 21, scope: !2432)
!2491 = !DILocation(line: 340, column: 19, scope: !2432)
!2492 = !DILocation(line: 340, column: 4, scope: !2432)
!2493 = !DILocation(line: 377, column: 9, scope: !2432)
!2494 = !DILocation(line: 377, column: 15, scope: !2432)
!2495 = !DILocation(line: 377, column: 24, scope: !2432)
!2496 = !DILocation(line: 377, column: 2, scope: !2432)
!2497 = !DILocation(line: 343, column: 7, scope: !2432)
!2498 = !DILocation(line: 344, column: 16, scope: !2432)
!2499 = !DILocation(line: 344, column: 22, scope: !2432)
!2500 = !DILocation(line: 344, column: 31, scope: !2432)
!2501 = !DILocation(line: 344, column: 14, scope: !2432)
!2502 = !DILocation(line: 344, column: 3, scope: !2432)
!2503 = !DILocation(line: 345, column: 7, scope: !2432)
!2504 = !DILocation(line: 346, column: 17, scope: !2432)
!2505 = !DILocation(line: 346, column: 23, scope: !2432)
!2506 = !DILocation(line: 346, column: 32, scope: !2432)
!2507 = !DILocation(line: 346, column: 15, scope: !2432)
!2508 = !DILocation(line: 346, column: 3, scope: !2432)
!2509 = !DILocation(line: 347, column: 7, scope: !2432)
!2510 = !DILocation(line: 348, column: 26, scope: !2432)
!2511 = !DILocation(line: 348, column: 31, scope: !2432)
!2512 = !DILocation(line: 348, column: 25, scope: !2432)
!2513 = !DILocation(line: 348, column: 14, scope: !2432)
!2514 = !DILocation(line: 348, column: 35, scope: !2432)
!2515 = !DILocation(line: 348, column: 43, scope: !2432)
!2516 = !DILocation(line: 348, column: 49, scope: !2432)
!2517 = !DILocation(line: 348, column: 58, scope: !2432)
!2518 = !DILocation(line: 348, column: 41, scope: !2432)
!2519 = !DILocation(line: 348, column: 3, scope: !2432)
!2520 = !DILocation(line: 349, column: 7, scope: !2432)
!2521 = !DILocation(line: 350, column: 19, scope: !2432)
!2522 = !DILocation(line: 350, column: 24, scope: !2432)
!2523 = !DILocation(line: 350, column: 33, scope: !2432)
!2524 = !DILocation(line: 350, column: 17, scope: !2432)
!2525 = !DILocation(line: 350, column: 36, scope: !2432)
!2526 = !DILocation(line: 350, column: 44, scope: !2432)
!2527 = !DILocation(line: 350, column: 50, scope: !2432)
!2528 = !DILocation(line: 350, column: 59, scope: !2432)
!2529 = !DILocation(line: 350, column: 42, scope: !2432)
!2530 = !DILocation(line: 350, column: 3, scope: !2432)
!2531 = !DILocation(line: 351, column: 7, scope: !2432)
!2532 = !DILocation(line: 352, column: 15, scope: !2432)
!2533 = !DILocation(line: 352, column: 25, scope: !2432)
!2534 = !DILocation(line: 352, column: 3, scope: !2432)
!2535 = !DILocation(line: 353, column: 6, scope: !2432)
!2536 = !DILocation(line: 353, column: 15, scope: !2432)
!2537 = !DILocation(line: 354, column: 4, scope: !2432)
!2538 = !DILocation(line: 356, column: 3, scope: !2432)
!2539 = !DILocation(line: 357, column: 7, scope: !2432)
!2540 = !DILocation(line: 357, column: 15, scope: !2432)
!2541 = !DILocation(line: 357, column: 19, scope: !2432)
!2542 = !DILocation(line: 357, column: 17, scope: !2432)
!2543 = !DILocation(line: 358, column: 9, scope: !2432)
!2544 = !DILocation(line: 358, column: 20, scope: !2432)
!2545 = !DILocation(line: 358, column: 19, scope: !2432)
!2546 = !DILocation(line: 358, column: 4, scope: !2432)
!2547 = !DILocation(line: 359, column: 17, scope: !2432)
!2548 = !DILocation(line: 359, column: 13, scope: !2432)
!2549 = !DILocation(line: 359, column: 22, scope: !2432)
!2550 = !DILocation(line: 359, column: 32, scope: !2432)
!2551 = !DILocation(line: 359, column: 43, scope: !2432)
!2552 = !DILocation(line: 359, column: 28, scope: !2432)
!2553 = !DILocation(line: 359, column: 4, scope: !2432)
!2554 = !DILocation(line: 360, column: 9, scope: !2432)
!2555 = !DILocation(line: 360, column: 13, scope: !2432)
!2556 = !DILocation(line: 361, column: 31, scope: !2432)
!2557 = !DILocation(line: 361, column: 21, scope: !2432)
!2558 = !DILocation(line: 361, column: 14, scope: !2432)
!2559 = !DILocation(line: 361, column: 5, scope: !2432)
!2560 = !DILocation(line: 364, column: 7, scope: !2432)
!2561 = !DILocation(line: 364, column: 11, scope: !2432)
!2562 = !DILocation(line: 364, column: 19, scope: !2432)
!2563 = !DILocation(line: 364, column: 9, scope: !2432)
!2564 = !DILocation(line: 365, column: 5, scope: !2432)
!2565 = !DILocation(line: 357, column: 29, scope: !2432)
!2566 = !DILocation(line: 368, column: 3, scope: !2432)
!2567 = !DILocation(line: 369, column: 10, scope: !2432)
!2568 = !DILocation(line: 369, column: 3, scope: !2432)
!2569 = !DILocation(line: 370, column: 7, scope: !2432)
!2570 = !DILocation(line: 372, column: 3, scope: !2432)
!2571 = !DILocation(line: 374, column: 10, scope: !2432)
!2572 = !DILocation(line: 374, column: 16, scope: !2432)
!2573 = !DILocation(line: 374, column: 25, scope: !2432)
!2574 = !DILocation(line: 374, column: 3, scope: !2432)
!2575 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).key", linkageName: "(*internal/reflectlite.RawType).key", scope: !27, file: !27, line: 426, type: !2281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2576)
!2576 = !{!2577, !2578, !2579}
!2577 = !DILocalVariable(name: "t", arg: 1, scope: !2575, file: !27, line: 426, type: !1049)
!2578 = !DILocalVariable(name: "underlying", scope: !2575, file: !27, line: 427, type: !1049)
!2579 = !DILocalVariable(name: "errTypeKey", scope: !2575, file: !27, line: 394, type: !33)
!2580 = !DILocation(line: 426, column: 19, scope: !2575)
!2581 = !DILocation(line: 427, column: 16, scope: !2575)
!2582 = !DILocation(line: 427, column: 28, scope: !2575)
!2583 = !DILocation(line: 427, column: 2, scope: !2575)
!2584 = !DILocation(line: 428, column: 5, scope: !2575)
!2585 = !DILocation(line: 428, column: 20, scope: !2575)
!2586 = !DILocation(line: 428, column: 23, scope: !2575)
!2587 = !DILocation(line: 0, scope: !2575)
!2588 = !DILocation(line: 429, column: 9, scope: !2575)
!2589 = !DILocation(line: 429, column: 8, scope: !2575)
!2590 = !DILocation(line: 431, column: 35, scope: !2575)
!2591 = !DILocation(line: 431, column: 48, scope: !2575)
!2592 = !DILocation(line: 431, column: 2, scope: !2575)
!2593 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).name", linkageName: "(*internal/reflectlite.RawType).name", scope: !27, file: !27, line: 939, type: !2281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2594)
!2594 = !{!2595, !2596, !2606, !2607}
!2595 = !DILocalVariable(name: "t", arg: 1, scope: !2593, file: !27, line: 939, type: !1049)
!2596 = !DILocalVariable(name: "ntype", scope: !2593, file: !27, line: 940, type: !2597)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64, align: 64, dwarfAddressSpace: 0)
!2598 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.namedType", baseType: !2599)
!2599 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !2600)
!2600 = !{!2601, !2602, !2603, !2604, !2605}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "RawType", baseType: !1050, size: 8, align: 8)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "numMethod", baseType: !90, size: 16, align: 16, offset: 16)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !1049, size: 64, align: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "elem", baseType: !1049, size: 64, align: 64, offset: 128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", baseType: !2145, size: 64, align: 64, offset: 192)
!2606 = !DILocalVariable(name: "ptr", scope: !2593, file: !27, line: 942, type: !84)
!2607 = !DILocalVariable(name: "ms", scope: !2593, file: !27, line: 944, type: !2608)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64, align: 64, dwarfAddressSpace: 0)
!2609 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.methodSet", baseType: !2610)
!2610 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !2611)
!2611 = !{!1145, !2612}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !2613, align: 64, offset: 64)
!2613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, align: 64, elements: !121)
!2614 = !DILocation(line: 939, column: 19, scope: !2593)
!2615 = !DILocation(line: 940, column: 39, scope: !2593)
!2616 = !DILocation(line: 940, column: 2, scope: !2593)
!2617 = !DILocation(line: 942, column: 35, scope: !2593)
!2618 = !DILocation(line: 942, column: 19, scope: !2593)
!2619 = !DILocation(line: 942, column: 2, scope: !2593)
!2620 = !DILocation(line: 943, column: 5, scope: !2593)
!2621 = !DILocation(line: 943, column: 11, scope: !2593)
!2622 = !DILocation(line: 943, column: 20, scope: !2593)
!2623 = !DILocation(line: 943, column: 43, scope: !2593)
!2624 = !DILocation(line: 0, scope: !2593)
!2625 = !DILocation(line: 944, column: 22, scope: !2593)
!2626 = !DILocation(line: 944, column: 3, scope: !2593)
!2627 = !DILocation(line: 946, column: 20, scope: !2593)
!2628 = !DILocation(line: 946, column: 59, scope: !2593)
!2629 = !DILocation(line: 946, column: 62, scope: !2593)
!2630 = !DILocation(line: 946, column: 69, scope: !2593)
!2631 = !DILocation(line: 946, column: 50, scope: !2593)
!2632 = !DILocation(line: 946, column: 19, scope: !2593)
!2633 = !DILocation(line: 946, column: 3, scope: !2593)
!2634 = !DILocation(line: 948, column: 21, scope: !2593)
!2635 = !DILocation(line: 948, column: 20, scope: !2593)
!2636 = !DILocation(line: 948, column: 2, scope: !2593)
!2637 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).rawField", linkageName: "(*internal/reflectlite.RawType).rawField", scope: !27, file: !27, line: 484, type: !2638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!1049, !1936}
!2640 = !{!2641, !2642, !2643, !2644, !2658, !2660, !2661, !2662, !2663, !2664}
!2641 = !DILocalVariable(name: "t", arg: 1, scope: !2637, file: !27, line: 484, type: !1049)
!2642 = !DILocalVariable(name: "n", arg: 2, scope: !2637, file: !27, line: 484, type: !1936)
!2643 = !DILocalVariable(name: "errTypeField", scope: !2637, file: !27, line: 395, type: !33)
!2644 = !DILocalVariable(name: "descriptor", scope: !2637, file: !27, line: 488, type: !2645)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64, align: 64, dwarfAddressSpace: 0)
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.structType", baseType: !2647)
!2647 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !2648)
!2648 = !{!2601, !2602, !2603, !2649, !97, !2650, !2651}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !2145, size: 64, align: 64, offset: 128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "numField", baseType: !90, size: 16, align: 16, offset: 224)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !2652, size: 128, align: 64, offset: 256)
!2652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2653, size: 128, align: 64, elements: !5)
!2653 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.structField", baseType: !2654)
!2654 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !2655)
!2655 = !{!2656, !2657}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "fieldType", baseType: !1049, size: 64, align: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !84, size: 64, align: 64, offset: 64)
!2658 = !DILocalVariable(name: "field", scope: !2637, file: !27, line: 497, type: !2659)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64, align: 64, dwarfAddressSpace: 0)
!2660 = !DILocalVariable(name: "data", scope: !2637, file: !27, line: 498, type: !84)
!2661 = !DILocalVariable(name: "flagsByte", scope: !2637, file: !27, line: 502, type: !533)
!2662 = !DILocalVariable(name: "offset", scope: !2637, file: !27, line: 504, type: !98)
!2663 = !DILocalVariable(name: "lenOffs", scope: !2637, file: !27, line: 504, type: !1936)
!2664 = !DILocalVariable(name: "name", scope: !2637, file: !27, line: 507, type: !38)
!2665 = !DILocation(line: 484, column: 19, scope: !2637)
!2666 = !DILocation(line: 485, column: 5, scope: !2637)
!2667 = !DILocation(line: 485, column: 11, scope: !2637)
!2668 = !DILocation(line: 485, column: 14, scope: !2637)
!2669 = !DILocation(line: 0, scope: !2637)
!2670 = !DILocation(line: 486, column: 9, scope: !2637)
!2671 = !DILocation(line: 486, column: 8, scope: !2637)
!2672 = !DILocation(line: 488, column: 45, scope: !2637)
!2673 = !DILocation(line: 488, column: 57, scope: !2637)
!2674 = !DILocation(line: 488, column: 2, scope: !2637)
!2675 = !DILocation(line: 489, column: 10, scope: !2637)
!2676 = !DILocation(line: 489, column: 21, scope: !2637)
!2677 = !DILocation(line: 489, column: 32, scope: !2637)
!2678 = !DILocation(line: 489, column: 20, scope: !2637)
!2679 = !DILocation(line: 489, column: 13, scope: !2637)
!2680 = !DILocation(line: 490, column: 8, scope: !2637)
!2681 = !DILocation(line: 497, column: 53, scope: !2637)
!2682 = !DILocation(line: 497, column: 64, scope: !2637)
!2683 = !DILocation(line: 497, column: 70, scope: !2637)
!2684 = !DILocation(line: 497, column: 84, scope: !2637)
!2685 = !DILocation(line: 497, column: 86, scope: !2637)
!2686 = !DILocation(line: 497, column: 36, scope: !2637)
!2687 = !DILocation(line: 497, column: 2, scope: !2637)
!2688 = !DILocation(line: 498, column: 10, scope: !2637)
!2689 = !DILocation(line: 498, column: 16, scope: !2637)
!2690 = !DILocation(line: 498, column: 2, scope: !2637)
!2691 = !DILocation(line: 502, column: 24, scope: !2637)
!2692 = !DILocation(line: 502, column: 15, scope: !2637)
!2693 = !DILocation(line: 502, column: 2, scope: !2637)
!2694 = !DILocation(line: 503, column: 20, scope: !2637)
!2695 = !DILocation(line: 503, column: 19, scope: !2637)
!2696 = !DILocation(line: 503, column: 2, scope: !2637)
!2697 = !DILocation(line: 504, column: 52, scope: !2637)
!2698 = !DILocation(line: 504, column: 43, scope: !2637)
!2699 = !DILocation(line: 504, column: 30, scope: !2637)
!2700 = !DILocation(line: 504, column: 2, scope: !2637)
!2701 = !DILocation(line: 504, column: 10, scope: !2637)
!2702 = !DILocation(line: 505, column: 20, scope: !2637)
!2703 = !DILocation(line: 505, column: 26, scope: !2637)
!2704 = !DILocation(line: 505, column: 19, scope: !2637)
!2705 = !DILocation(line: 505, column: 2, scope: !2637)
!2706 = !DILocation(line: 507, column: 22, scope: !2637)
!2707 = !DILocation(line: 507, column: 21, scope: !2637)
!2708 = !DILocation(line: 507, column: 2, scope: !2637)
!2709 = !DILocation(line: 508, column: 20, scope: !2637)
!2710 = !DILocation(line: 508, column: 30, scope: !2637)
!2711 = !DILocation(line: 508, column: 29, scope: !2637)
!2712 = !DILocation(line: 508, column: 19, scope: !2637)
!2713 = !DILocation(line: 508, column: 2, scope: !2637)
!2714 = !DILocation(line: 510, column: 35, scope: !2637)
!2715 = !DILocation(line: 510, column: 47, scope: !2637)
!2716 = !DILocation(line: 510, column: 53, scope: !2637)
!2717 = !DILocation(line: 510, column: 64, scope: !2637)
!2718 = !DILocation(line: 510, column: 70, scope: !2637)
!2719 = !DILocation(line: 510, column: 81, scope: !2637)
!2720 = !DILocation(line: 510, column: 87, scope: !2637)
!2721 = !DILocation(line: 510, column: 34, scope: !2637)
!2722 = !DILocation(line: 510, column: 2, scope: !2637)
!2723 = distinct !DISubprogram(name: "internal/reflectlite.uvarint32", linkageName: "internal/reflectlite.uvarint32", scope: !27, file: !27, line: 1242, type: !2724, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!2142}
!2726 = !{!2727, !2728, !2729, !2730, !2731}
!2727 = !DILocalVariable(name: "buf", arg: 1, scope: !2723, file: !27, line: 1242, type: !2142)
!2728 = !DILocalVariable(name: "x", scope: !2723, file: !27, line: 1243, type: !98)
!2729 = !DILocalVariable(name: "s", scope: !2723, file: !27, line: 1244, type: !1738)
!2730 = !DILocalVariable(name: "i", scope: !2723, file: !27, line: 1245, type: !1936)
!2731 = !DILocalVariable(name: "b", scope: !2723, file: !27, line: 1245, type: !533)
!2732 = !DILocation(line: 1242, column: 6, scope: !2723)
!2733 = !DILocation(line: 1243, column: 6, scope: !2723)
!2734 = !DILocation(line: 1244, column: 6, scope: !2723)
!2735 = !DILocation(line: 1245, column: 20, scope: !2723)
!2736 = !DILocation(line: 0, scope: !2723)
!2737 = !DILocation(line: 1245, column: 6, scope: !2723)
!2738 = !DILocation(line: 1245, column: 9, scope: !2723)
!2739 = !DILocation(line: 1246, column: 6, scope: !2723)
!2740 = !DILocation(line: 1246, column: 8, scope: !2723)
!2741 = !DILocation(line: 1247, column: 11, scope: !2723)
!2742 = !DILocation(line: 1247, column: 22, scope: !2723)
!2743 = !DILocation(line: 1247, column: 21, scope: !2723)
!2744 = !DILocation(line: 1247, column: 26, scope: !2723)
!2745 = !DILocation(line: 1247, column: 24, scope: !2723)
!2746 = !DILocation(line: 1247, column: 13, scope: !2723)
!2747 = !DILocation(line: 1247, column: 29, scope: !2723)
!2748 = !DILocation(line: 1247, column: 31, scope: !2723)
!2749 = !DILocation(line: 1247, column: 4, scope: !2723)
!2750 = !DILocation(line: 1249, column: 15, scope: !2723)
!2751 = !DILocation(line: 1249, column: 16, scope: !2723)
!2752 = !DILocation(line: 1249, column: 14, scope: !2723)
!2753 = !DILocation(line: 1249, column: 26, scope: !2723)
!2754 = !DILocation(line: 1249, column: 23, scope: !2723)
!2755 = !DILocation(line: 1249, column: 3, scope: !2723)
!2756 = !DILocation(line: 1250, column: 3, scope: !2723)
!2757 = !DILocation(line: 1252, column: 2, scope: !2723)
!2758 = distinct !DISubprogram(name: "internal/reflectlite.readStringZ", linkageName: "internal/reflectlite.readStringZ", scope: !27, file: !27, line: 925, type: !2759, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2761)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!84}
!2761 = !{!2762, !2763, !2764}
!2762 = !DILocalVariable(name: "data", arg: 1, scope: !2758, file: !27, line: 925, type: !84)
!2763 = !DILocalVariable(name: "start", scope: !2758, file: !27, line: 926, type: !84)
!2764 = !DILocalVariable(name: "len", scope: !2758, file: !27, line: 927, type: !43)
!2765 = !DILocation(line: 925, column: 6, scope: !2758)
!2766 = !DILocation(line: 926, column: 11, scope: !2758)
!2767 = !DILocation(line: 926, column: 2, scope: !2758)
!2768 = !DILocation(line: 927, column: 6, scope: !2758)
!2769 = !DILocation(line: 0, scope: !2758)
!2770 = !DILocation(line: 925, column: 18, scope: !2758)
!2771 = !DILocation(line: 928, column: 15, scope: !2758)
!2772 = !DILocation(line: 928, column: 6, scope: !2758)
!2773 = !DILocation(line: 928, column: 21, scope: !2758)
!2774 = !DILocation(line: 929, column: 3, scope: !2758)
!2775 = !DILocation(line: 930, column: 21, scope: !2758)
!2776 = !DILocation(line: 930, column: 20, scope: !2758)
!2777 = !DILocation(line: 930, column: 3, scope: !2758)
!2778 = !DILocation(line: 933, column: 48, scope: !2758)
!2779 = !DILocation(line: 934, column: 7, scope: !2758)
!2780 = !DILocation(line: 934, column: 9, scope: !2758)
!2781 = !DILocation(line: 935, column: 6, scope: !2758)
!2782 = !DILocation(line: 935, column: 9, scope: !2758)
!2783 = !DILocation(line: 933, column: 9, scope: !2758)
!2784 = !DILocation(line: 933, column: 2, scope: !2758)
!2785 = distinct !DISubprogram(name: "internal/reflectlite.rawStructFieldFromPointer", linkageName: "internal/reflectlite.rawStructFieldFromPointer", scope: !27, file: !27, line: 449, type: !2786, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2788)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!2645, !1049, !84, !4, !38, !98}
!2788 = !{!2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797}
!2789 = !DILocalVariable(name: "descriptor", arg: 1, scope: !2785, file: !27, line: 449, type: !2645)
!2790 = !DILocalVariable(name: "fieldType", arg: 2, scope: !2785, file: !27, line: 449, type: !1049)
!2791 = !DILocalVariable(name: "data", arg: 3, scope: !2785, file: !27, line: 449, type: !84)
!2792 = !DILocalVariable(name: "flagsByte", arg: 4, scope: !2785, file: !27, line: 449, type: !4)
!2793 = !DILocalVariable(name: "name", arg: 5, scope: !2785, file: !27, line: 449, type: !38)
!2794 = !DILocalVariable(name: "offset", arg: 6, scope: !2785, file: !27, line: 449, type: !98)
!2795 = !DILocalVariable(name: "tag", scope: !2785, file: !27, line: 451, type: !38)
!2796 = !DILocalVariable(name: "tagLen", scope: !2785, file: !27, line: 454, type: !43)
!2797 = !DILocalVariable(name: "pkgPath", scope: !2785, file: !27, line: 464, type: !38)
!2798 = !DILocation(line: 449, column: 6, scope: !2785)
!2799 = !DILocation(line: 451, column: 6, scope: !2785)
!2800 = !DILocation(line: 452, column: 5, scope: !2785)
!2801 = !DILocation(line: 452, column: 14, scope: !2785)
!2802 = !DILocation(line: 452, column: 37, scope: !2785)
!2803 = !DILocation(line: 0, scope: !2785)
!2804 = !DILocation(line: 453, column: 21, scope: !2785)
!2805 = !DILocation(line: 453, column: 20, scope: !2785)
!2806 = !DILocation(line: 453, column: 3, scope: !2785)
!2807 = !DILocation(line: 454, column: 30, scope: !2785)
!2808 = !DILocation(line: 454, column: 21, scope: !2785)
!2809 = !DILocation(line: 454, column: 20, scope: !2785)
!2810 = !DILocation(line: 454, column: 3, scope: !2785)
!2811 = !DILocation(line: 455, column: 21, scope: !2785)
!2812 = !DILocation(line: 455, column: 20, scope: !2785)
!2813 = !DILocation(line: 455, column: 3, scope: !2785)
!2814 = !DILocation(line: 456, column: 48, scope: !2785)
!2815 = !DILocation(line: 457, column: 8, scope: !2785)
!2816 = !DILocation(line: 457, column: 10, scope: !2785)
!2817 = !DILocation(line: 458, column: 7, scope: !2785)
!2818 = !DILocation(line: 458, column: 10, scope: !2785)
!2819 = !DILocation(line: 456, column: 9, scope: !2785)
!2820 = !DILocation(line: 456, column: 3, scope: !2785)
!2821 = !DILocation(line: 464, column: 2, scope: !2785)
!2822 = !DILocation(line: 465, column: 5, scope: !2785)
!2823 = !DILocation(line: 465, column: 14, scope: !2785)
!2824 = !DILocation(line: 465, column: 41, scope: !2785)
!2825 = !DILocation(line: 467, column: 40, scope: !2785)
!2826 = !DILocation(line: 467, column: 51, scope: !2785)
!2827 = !DILocation(line: 467, column: 24, scope: !2785)
!2828 = !DILocation(line: 467, column: 3, scope: !2785)
!2829 = !DILocation(line: 471, column: 7, scope: !2785)
!2830 = !DILocation(line: 471, column: 14, scope: !2785)
!2831 = !DILocation(line: 472, column: 10, scope: !2785)
!2832 = !DILocation(line: 472, column: 14, scope: !2785)
!2833 = !DILocation(line: 473, column: 7, scope: !2785)
!2834 = !DILocation(line: 473, column: 14, scope: !2785)
!2835 = !DILocation(line: 474, column: 6, scope: !2785)
!2836 = !DILocation(line: 474, column: 24, scope: !2785)
!2837 = !DILocation(line: 475, column: 12, scope: !2785)
!2838 = !DILocation(line: 475, column: 14, scope: !2785)
!2839 = !DILocation(line: 475, column: 23, scope: !2785)
!2840 = !DILocation(line: 475, column: 49, scope: !2785)
!2841 = !DILocation(line: 476, column: 9, scope: !2785)
!2842 = !DILocation(line: 476, column: 22, scope: !2785)
!2843 = !DILocation(line: 476, column: 21, scope: !2785)
!2844 = !DILocation(line: 470, column: 23, scope: !2785)
!2845 = !DILocation(line: 470, column: 2, scope: !2785)
!2846 = distinct !DISubprogram(name: "(internal/reflectlite.Kind).String", linkageName: "(internal/reflectlite.Kind).String", scope: !27, file: !27, line: 57, type: !2847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2850)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!2849}
!2849 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.Kind", baseType: !4)
!2850 = !{!2851}
!2851 = !DILocalVariable(name: "k", arg: 1, scope: !2846, file: !27, line: 57, type: !2849)
!2852 = !DILocation(line: 57, column: 15, scope: !2846)
!2853 = !DILocation(line: 58, column: 9, scope: !2846)
!2854 = !DILocation(line: 59, column: 7, scope: !2846)
!2855 = !DILocation(line: 0, scope: !2846)
!2856 = !DILocation(line: 60, column: 3, scope: !2846)
!2857 = !DILocation(line: 61, column: 7, scope: !2846)
!2858 = !DILocation(line: 62, column: 3, scope: !2846)
!2859 = !DILocation(line: 63, column: 7, scope: !2846)
!2860 = !DILocation(line: 64, column: 3, scope: !2846)
!2861 = !DILocation(line: 65, column: 7, scope: !2846)
!2862 = !DILocation(line: 66, column: 3, scope: !2846)
!2863 = !DILocation(line: 67, column: 7, scope: !2846)
!2864 = !DILocation(line: 68, column: 3, scope: !2846)
!2865 = !DILocation(line: 69, column: 7, scope: !2846)
!2866 = !DILocation(line: 70, column: 3, scope: !2846)
!2867 = !DILocation(line: 71, column: 7, scope: !2846)
!2868 = !DILocation(line: 72, column: 3, scope: !2846)
!2869 = !DILocation(line: 73, column: 7, scope: !2846)
!2870 = !DILocation(line: 74, column: 3, scope: !2846)
!2871 = !DILocation(line: 75, column: 7, scope: !2846)
!2872 = !DILocation(line: 76, column: 3, scope: !2846)
!2873 = !DILocation(line: 77, column: 7, scope: !2846)
!2874 = !DILocation(line: 78, column: 3, scope: !2846)
!2875 = !DILocation(line: 79, column: 7, scope: !2846)
!2876 = !DILocation(line: 80, column: 3, scope: !2846)
!2877 = !DILocation(line: 81, column: 7, scope: !2846)
!2878 = !DILocation(line: 82, column: 3, scope: !2846)
!2879 = !DILocation(line: 83, column: 7, scope: !2846)
!2880 = !DILocation(line: 84, column: 3, scope: !2846)
!2881 = !DILocation(line: 85, column: 7, scope: !2846)
!2882 = !DILocation(line: 86, column: 3, scope: !2846)
!2883 = !DILocation(line: 87, column: 7, scope: !2846)
!2884 = !DILocation(line: 88, column: 3, scope: !2846)
!2885 = !DILocation(line: 89, column: 7, scope: !2846)
!2886 = !DILocation(line: 90, column: 3, scope: !2846)
!2887 = !DILocation(line: 91, column: 7, scope: !2846)
!2888 = !DILocation(line: 92, column: 3, scope: !2846)
!2889 = !DILocation(line: 93, column: 7, scope: !2846)
!2890 = !DILocation(line: 94, column: 3, scope: !2846)
!2891 = !DILocation(line: 95, column: 7, scope: !2846)
!2892 = !DILocation(line: 96, column: 3, scope: !2846)
!2893 = !DILocation(line: 97, column: 7, scope: !2846)
!2894 = !DILocation(line: 98, column: 3, scope: !2846)
!2895 = !DILocation(line: 99, column: 7, scope: !2846)
!2896 = !DILocation(line: 100, column: 3, scope: !2846)
!2897 = !DILocation(line: 101, column: 7, scope: !2846)
!2898 = !DILocation(line: 102, column: 3, scope: !2846)
!2899 = !DILocation(line: 103, column: 7, scope: !2846)
!2900 = !DILocation(line: 104, column: 3, scope: !2846)
!2901 = !DILocation(line: 105, column: 7, scope: !2846)
!2902 = !DILocation(line: 106, column: 3, scope: !2846)
!2903 = !DILocation(line: 107, column: 7, scope: !2846)
!2904 = !DILocation(line: 108, column: 3, scope: !2846)
!2905 = !DILocation(line: 109, column: 7, scope: !2846)
!2906 = !DILocation(line: 110, column: 3, scope: !2846)
!2907 = !DILocation(line: 111, column: 7, scope: !2846)
!2908 = !DILocation(line: 112, column: 3, scope: !2846)
!2909 = !DILocation(line: 114, column: 38, scope: !2846)
!2910 = !DILocation(line: 114, column: 32, scope: !2846)
!2911 = !DILocation(line: 114, column: 28, scope: !2846)
!2912 = !DILocation(line: 114, column: 17, scope: !2846)
!2913 = !DILocation(line: 114, column: 3, scope: !2846)
!2914 = distinct !DISubprogram(name: "internal/reflectlite.quote", linkageName: "internal/reflectlite.quote", scope: !111, file: !111, line: 238, type: !1990, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2915)
!2915 = !{!2916, !2917, !2918, !2919}
!2916 = !DILocalVariable(name: "s", arg: 1, scope: !2914, file: !111, line: 238, type: !38)
!2917 = !DILocalVariable(name: "buf", scope: !2914, file: !111, line: 239, type: !2142)
!2918 = !DILocalVariable(name: "width", scope: !2914, file: !111, line: 243, type: !1936)
!2919 = !DILocalVariable(name: "r", scope: !2914, file: !111, line: 244, type: !1995)
!2920 = !DILocation(line: 238, column: 6, scope: !2914)
!2921 = !DILocation(line: 239, column: 31, scope: !2914)
!2922 = !DILocation(line: 239, column: 30, scope: !2914)
!2923 = !DILocation(line: 239, column: 26, scope: !2914)
!2924 = !DILocation(line: 239, column: 33, scope: !2914)
!2925 = !DILocation(line: 239, column: 13, scope: !2914)
!2926 = !DILocation(line: 239, column: 2, scope: !2914)
!2927 = !DILocation(line: 242, column: 15, scope: !2914)
!2928 = !DILocation(line: 242, column: 25, scope: !2914)
!2929 = !DILocation(line: 242, column: 14, scope: !2914)
!2930 = !DILocation(line: 242, column: 2, scope: !2914)
!2931 = !DILocation(line: 243, column: 6, scope: !2914)
!2932 = !DILocation(line: 0, scope: !2914)
!2933 = !DILocation(line: 238, column: 12, scope: !2914)
!2934 = !DILocation(line: 243, column: 22, scope: !2914)
!2935 = !DILocation(line: 243, column: 21, scope: !2914)
!2936 = !DILocation(line: 243, column: 25, scope: !2914)
!2937 = !DILocation(line: 244, column: 13, scope: !2914)
!2938 = !DILocation(line: 244, column: 14, scope: !2914)
!2939 = !DILocation(line: 244, column: 12, scope: !2914)
!2940 = !DILocation(line: 244, column: 3, scope: !2914)
!2941 = !DILocation(line: 245, column: 3, scope: !2914)
!2942 = !DILocation(line: 246, column: 6, scope: !2914)
!2943 = !DILocation(line: 246, column: 8, scope: !2914)
!2944 = !DILocation(line: 247, column: 39, scope: !2914)
!2945 = !DILocation(line: 247, column: 38, scope: !2914)
!2946 = !DILocation(line: 247, column: 4, scope: !2914)
!2947 = !DILocation(line: 247, column: 7, scope: !2914)
!2948 = !DILocation(line: 249, column: 6, scope: !2914)
!2949 = !DILocation(line: 249, column: 12, scope: !2914)
!2950 = !DILocation(line: 249, column: 20, scope: !2914)
!2951 = !DILocation(line: 249, column: 22, scope: !2914)
!2952 = !DILocation(line: 250, column: 17, scope: !2914)
!2953 = !DILocation(line: 250, column: 16, scope: !2914)
!2954 = !DILocation(line: 250, column: 4, scope: !2914)
!2955 = !DILocation(line: 251, column: 17, scope: !2914)
!2956 = !DILocation(line: 251, column: 31, scope: !2914)
!2957 = !DILocation(line: 251, column: 32, scope: !2914)
!2958 = !DILocation(line: 251, column: 35, scope: !2914)
!2959 = !DILocation(line: 251, column: 30, scope: !2914)
!2960 = !DILocation(line: 251, column: 39, scope: !2914)
!2961 = !DILocation(line: 251, column: 16, scope: !2914)
!2962 = !DILocation(line: 251, column: 4, scope: !2914)
!2963 = !DILocation(line: 252, column: 17, scope: !2914)
!2964 = !DILocation(line: 252, column: 31, scope: !2914)
!2965 = !DILocation(line: 252, column: 32, scope: !2914)
!2966 = !DILocation(line: 252, column: 35, scope: !2914)
!2967 = !DILocation(line: 252, column: 30, scope: !2914)
!2968 = !DILocation(line: 252, column: 40, scope: !2914)
!2969 = !DILocation(line: 252, column: 16, scope: !2914)
!2970 = !DILocation(line: 252, column: 4, scope: !2914)
!2971 = !DILocation(line: 243, column: 34, scope: !2914)
!2972 = !DILocation(line: 243, column: 36, scope: !2914)
!2973 = !DILocation(line: 243, column: 35, scope: !2914)
!2974 = !DILocation(line: 243, column: 30, scope: !2914)
!2975 = !DILocation(line: 255, column: 27, scope: !2914)
!2976 = !DILocation(line: 255, column: 32, scope: !2914)
!2977 = !DILocation(line: 255, column: 26, scope: !2914)
!2978 = !DILocation(line: 255, column: 3, scope: !2914)
!2979 = !DILocation(line: 257, column: 15, scope: !2914)
!2980 = !DILocation(line: 257, column: 25, scope: !2914)
!2981 = !DILocation(line: 257, column: 14, scope: !2914)
!2982 = !DILocation(line: 257, column: 2, scope: !2914)
!2983 = !DILocation(line: 258, column: 16, scope: !2914)
!2984 = !DILocation(line: 258, column: 15, scope: !2914)
!2985 = !DILocation(line: 258, column: 2, scope: !2914)
!2986 = distinct !DISubprogram(name: "internal/reflectlite.appendEscapedRune", linkageName: "internal/reflectlite.appendEscapedRune", scope: !111, file: !111, line: 261, type: !2140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2987)
!2987 = !{!2988, !2989, !2990, !2991, !2992}
!2988 = !DILocalVariable(name: "buf", arg: 1, scope: !2986, file: !111, line: 261, type: !2142)
!2989 = !DILocalVariable(name: "r", arg: 2, scope: !2986, file: !111, line: 261, type: !1995)
!2990 = !DILocalVariable(name: "n", scope: !2986, file: !111, line: 272, type: !1936)
!2991 = !DILocalVariable(name: "s", scope: !2986, file: !111, line: 302, type: !1936)
!2992 = !DILocalVariable(name: "s", scope: !2986, file: !111, line: 307, type: !1936)
!2993 = !DILocation(line: 261, column: 6, scope: !2986)
!2994 = !DILocation(line: 265, column: 6, scope: !2986)
!2995 = !DILocation(line: 266, column: 5, scope: !2986)
!2996 = !DILocation(line: 266, column: 7, scope: !2986)
!2997 = !DILocation(line: 0, scope: !2986)
!2998 = !DILocation(line: 267, column: 16, scope: !2986)
!2999 = !DILocation(line: 267, column: 25, scope: !2986)
!3000 = !DILocation(line: 267, column: 15, scope: !2986)
!3001 = !DILocation(line: 267, column: 3, scope: !2986)
!3002 = !DILocation(line: 268, column: 16, scope: !2986)
!3003 = !DILocation(line: 268, column: 26, scope: !2986)
!3004 = !DILocation(line: 268, column: 25, scope: !2986)
!3005 = !DILocation(line: 268, column: 28, scope: !2986)
!3006 = !DILocation(line: 268, column: 15, scope: !2986)
!3007 = !DILocation(line: 268, column: 3, scope: !2986)
!3008 = !DILocation(line: 269, column: 10, scope: !2986)
!3009 = !DILocation(line: 269, column: 3, scope: !2986)
!3010 = !DILocation(line: 266, column: 25, scope: !2986)
!3011 = !DILocation(line: 266, column: 27, scope: !2986)
!3012 = !DILocation(line: 271, column: 13, scope: !2986)
!3013 = !DILocation(line: 271, column: 12, scope: !2986)
!3014 = !DILocation(line: 272, column: 31, scope: !2986)
!3015 = !DILocation(line: 272, column: 36, scope: !2986)
!3016 = !DILocation(line: 272, column: 23, scope: !2986)
!3017 = !DILocation(line: 272, column: 3, scope: !2986)
!3018 = !DILocation(line: 273, column: 16, scope: !2986)
!3019 = !DILocation(line: 273, column: 30, scope: !2986)
!3020 = !DILocation(line: 273, column: 28, scope: !2986)
!3021 = !DILocation(line: 273, column: 15, scope: !2986)
!3022 = !DILocation(line: 273, column: 3, scope: !2986)
!3023 = !DILocation(line: 274, column: 10, scope: !2986)
!3024 = !DILocation(line: 274, column: 3, scope: !2986)
!3025 = !DILocation(line: 276, column: 9, scope: !2986)
!3026 = !DILocation(line: 277, column: 7, scope: !2986)
!3027 = !DILocation(line: 278, column: 16, scope: !2986)
!3028 = !DILocation(line: 278, column: 15, scope: !2986)
!3029 = !DILocation(line: 278, column: 3, scope: !2986)
!3030 = !DILocation(line: 261, column: 24, scope: !2986)
!3031 = !DILocation(line: 312, column: 9, scope: !2986)
!3032 = !DILocation(line: 312, column: 2, scope: !2986)
!3033 = !DILocation(line: 279, column: 7, scope: !2986)
!3034 = !DILocation(line: 280, column: 16, scope: !2986)
!3035 = !DILocation(line: 280, column: 15, scope: !2986)
!3036 = !DILocation(line: 280, column: 3, scope: !2986)
!3037 = !DILocation(line: 281, column: 7, scope: !2986)
!3038 = !DILocation(line: 282, column: 16, scope: !2986)
!3039 = !DILocation(line: 282, column: 15, scope: !2986)
!3040 = !DILocation(line: 282, column: 3, scope: !2986)
!3041 = !DILocation(line: 283, column: 7, scope: !2986)
!3042 = !DILocation(line: 284, column: 16, scope: !2986)
!3043 = !DILocation(line: 284, column: 15, scope: !2986)
!3044 = !DILocation(line: 284, column: 3, scope: !2986)
!3045 = !DILocation(line: 285, column: 7, scope: !2986)
!3046 = !DILocation(line: 286, column: 16, scope: !2986)
!3047 = !DILocation(line: 286, column: 15, scope: !2986)
!3048 = !DILocation(line: 286, column: 3, scope: !2986)
!3049 = !DILocation(line: 287, column: 7, scope: !2986)
!3050 = !DILocation(line: 288, column: 16, scope: !2986)
!3051 = !DILocation(line: 288, column: 15, scope: !2986)
!3052 = !DILocation(line: 288, column: 3, scope: !2986)
!3053 = !DILocation(line: 289, column: 7, scope: !2986)
!3054 = !DILocation(line: 290, column: 16, scope: !2986)
!3055 = !DILocation(line: 290, column: 15, scope: !2986)
!3056 = !DILocation(line: 290, column: 3, scope: !2986)
!3057 = !DILocation(line: 293, column: 8, scope: !2986)
!3058 = !DILocation(line: 293, column: 10, scope: !2986)
!3059 = !DILocation(line: 293, column: 16, scope: !2986)
!3060 = !DILocation(line: 294, column: 17, scope: !2986)
!3061 = !DILocation(line: 294, column: 16, scope: !2986)
!3062 = !DILocation(line: 294, column: 4, scope: !2986)
!3063 = !DILocation(line: 295, column: 17, scope: !2986)
!3064 = !DILocation(line: 295, column: 36, scope: !2986)
!3065 = !DILocation(line: 295, column: 35, scope: !2986)
!3066 = !DILocation(line: 295, column: 38, scope: !2986)
!3067 = !DILocation(line: 295, column: 30, scope: !2986)
!3068 = !DILocation(line: 295, column: 42, scope: !2986)
!3069 = !DILocation(line: 295, column: 16, scope: !2986)
!3070 = !DILocation(line: 295, column: 4, scope: !2986)
!3071 = !DILocation(line: 296, column: 17, scope: !2986)
!3072 = !DILocation(line: 296, column: 36, scope: !2986)
!3073 = !DILocation(line: 296, column: 35, scope: !2986)
!3074 = !DILocation(line: 296, column: 38, scope: !2986)
!3075 = !DILocation(line: 296, column: 30, scope: !2986)
!3076 = !DILocation(line: 296, column: 43, scope: !2986)
!3077 = !DILocation(line: 296, column: 16, scope: !2986)
!3078 = !DILocation(line: 296, column: 4, scope: !2986)
!3079 = !DILocation(line: 297, column: 24, scope: !2986)
!3080 = !DILocation(line: 297, column: 23, scope: !2986)
!3081 = !DILocation(line: 297, column: 8, scope: !2986)
!3082 = !DILocation(line: 298, column: 4, scope: !2986)
!3083 = !DILocation(line: 261, column: 36, scope: !2986)
!3084 = !DILocation(line: 301, column: 17, scope: !2986)
!3085 = !DILocation(line: 301, column: 16, scope: !2986)
!3086 = !DILocation(line: 301, column: 4, scope: !2986)
!3087 = !DILocation(line: 302, column: 8, scope: !2986)
!3088 = !DILocation(line: 302, column: 17, scope: !2986)
!3089 = !DILocation(line: 302, column: 19, scope: !2986)
!3090 = !DILocation(line: 303, column: 18, scope: !2986)
!3091 = !DILocation(line: 303, column: 32, scope: !2986)
!3092 = !DILocation(line: 303, column: 40, scope: !2986)
!3093 = !DILocation(line: 303, column: 33, scope: !2986)
!3094 = !DILocation(line: 303, column: 42, scope: !2986)
!3095 = !DILocation(line: 303, column: 31, scope: !2986)
!3096 = !DILocation(line: 303, column: 47, scope: !2986)
!3097 = !DILocation(line: 303, column: 17, scope: !2986)
!3098 = !DILocation(line: 303, column: 5, scope: !2986)
!3099 = !DILocation(line: 302, column: 25, scope: !2986)
!3100 = !DILocation(line: 300, column: 8, scope: !2986)
!3101 = !DILocation(line: 300, column: 10, scope: !2986)
!3102 = !DILocation(line: 306, column: 17, scope: !2986)
!3103 = !DILocation(line: 306, column: 16, scope: !2986)
!3104 = !DILocation(line: 306, column: 4, scope: !2986)
!3105 = !DILocation(line: 307, column: 8, scope: !2986)
!3106 = !DILocation(line: 307, column: 17, scope: !2986)
!3107 = !DILocation(line: 307, column: 19, scope: !2986)
!3108 = !DILocation(line: 308, column: 18, scope: !2986)
!3109 = !DILocation(line: 308, column: 32, scope: !2986)
!3110 = !DILocation(line: 308, column: 40, scope: !2986)
!3111 = !DILocation(line: 308, column: 33, scope: !2986)
!3112 = !DILocation(line: 308, column: 42, scope: !2986)
!3113 = !DILocation(line: 308, column: 31, scope: !2986)
!3114 = !DILocation(line: 308, column: 47, scope: !2986)
!3115 = !DILocation(line: 308, column: 17, scope: !2986)
!3116 = !DILocation(line: 308, column: 5, scope: !2986)
!3117 = !DILocation(line: 307, column: 25, scope: !2986)
!3118 = !DILocation(line: 293, column: 19, scope: !2986)
!3119 = !DILocation(line: 293, column: 21, scope: !2986)
!3120 = distinct !DISubprogram(name: "internal/reflectlite.isPrint", linkageName: "internal/reflectlite.isPrint", scope: !111, file: !111, line: 316, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3121)
!3121 = !{!3122}
!3122 = !DILocalVariable(name: "r", arg: 1, scope: !3120, file: !111, line: 316, type: !1995)
!3123 = !DILocation(line: 316, column: 6, scope: !3120)
!3124 = !DILocation(line: 317, column: 5, scope: !3120)
!3125 = !DILocation(line: 317, column: 7, scope: !3120)
!3126 = !DILocation(line: 0, scope: !3120)
!3127 = !DILocation(line: 318, column: 14, scope: !3120)
!3128 = !DILocation(line: 318, column: 11, scope: !3120)
!3129 = !DILocation(line: 318, column: 19, scope: !3120)
!3130 = !DILocation(line: 318, column: 21, scope: !3120)
!3131 = !DILocation(line: 320, column: 4, scope: !3120)
!3132 = !DILocation(line: 322, column: 14, scope: !3120)
!3133 = !DILocation(line: 322, column: 11, scope: !3120)
!3134 = !DILocation(line: 322, column: 19, scope: !3120)
!3135 = !DILocation(line: 322, column: 21, scope: !3120)
!3136 = !DILocation(line: 324, column: 11, scope: !3120)
!3137 = !DILocation(line: 324, column: 13, scope: !3120)
!3138 = !DILocation(line: 324, column: 4, scope: !3120)
!3139 = !DILocation(line: 326, column: 3, scope: !3120)
!3140 = !DILocation(line: 330, column: 2, scope: !3120)
!3141 = distinct !DISubprogram(name: "(internal/reflectlite.Kind).String$invoke", linkageName: "(internal/reflectlite.Kind).String$invoke", scope: !27, file: !27, line: 57, type: !2847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032)
!3142 = !DILocation(line: 57, column: 15, scope: !3141)
!3143 = distinct !DISubprogram(name: "(*internal/reflectlite.ValueError).Error", linkageName: "(*internal/reflectlite.ValueError).Error", scope: !316, file: !316, line: 1789, type: !3144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3151)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!3146}
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64, align: 64, dwarfAddressSpace: 0)
!3147 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.ValueError", baseType: !3148)
!3148 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !3149)
!3149 = !{!37, !3150}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "Kind", baseType: !2849, size: 8, align: 8, offset: 128)
!3151 = !{!3152}
!3152 = !DILocalVariable(name: "e", arg: 1, scope: !3143, file: !316, line: 1789, type: !3146)
!3153 = !DILocation(line: 1789, column: 22, scope: !3143)
!3154 = !DILocation(line: 1790, column: 5, scope: !3143)
!3155 = !DILocation(line: 1790, column: 7, scope: !3143)
!3156 = !DILocation(line: 1790, column: 12, scope: !3143)
!3157 = !DILocation(line: 0, scope: !3143)
!3158 = !DILocation(line: 1791, column: 32, scope: !3143)
!3159 = !DILocation(line: 1791, column: 34, scope: !3143)
!3160 = !DILocation(line: 1791, column: 30, scope: !3143)
!3161 = !DILocation(line: 1791, column: 41, scope: !3143)
!3162 = !DILocation(line: 1791, column: 3, scope: !3143)
!3163 = !DILocation(line: 1793, column: 31, scope: !3143)
!3164 = !DILocation(line: 1793, column: 33, scope: !3143)
!3165 = !DILocation(line: 1793, column: 29, scope: !3143)
!3166 = !DILocation(line: 1793, column: 40, scope: !3143)
!3167 = !DILocation(line: 1793, column: 51, scope: !3143)
!3168 = !DILocation(line: 1793, column: 53, scope: !3143)
!3169 = !DILocation(line: 1793, column: 64, scope: !3143)
!3170 = !DILocation(line: 1793, column: 49, scope: !3143)
!3171 = !DILocation(line: 1793, column: 67, scope: !3143)
!3172 = !DILocation(line: 1793, column: 2, scope: !3143)
!3173 = distinct !DISubprogram(name: "(internal/reflectlite.badSyntax).Error", linkageName: "(internal/reflectlite.badSyntax).Error", scope: !111, file: !111, line: 16, type: !3174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3176)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!1195}
!3176 = !{!3177}
!3177 = !DILocalVariable(name: "arg0", arg: 1, scope: !3173, file: !111, line: 16, type: !1195)
!3178 = !DILocation(line: 17, column: 2, scope: !3173)
!3179 = distinct !DISubprogram(name: "(internal/reflectlite.badSyntax).Error$invoke", linkageName: "(internal/reflectlite.badSyntax).Error$invoke", scope: !111, file: !111, line: 16, type: !3174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032)
!3180 = !DILocation(line: 16, column: 18, scope: !3179)
!3181 = distinct !DISubprogram(name: "runtime/interrupt.In", linkageName: "runtime/interrupt.In", scope: !3182, file: !3182, line: 28, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1516)
!3182 = !DIFile(filename: "interrupt_none.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!3183 = !DISubroutineType(types: !342)
!3184 = !DILocation(line: 30, column: 2, scope: !3181)
!3185 = distinct !DISubprogram(name: "(*internal/task.Mutex).Lock", linkageName: "(*internal/task.Mutex).Lock", scope: !378, file: !378, line: 31, type: !3186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3189)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!3188}
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64, dwarfAddressSpace: 0)
!3189 = !{!3190}
!3190 = !DILocalVariable(name: "m", arg: 1, scope: !3185, file: !378, line: 31, type: !3188)
!3191 = !DILocation(line: 31, column: 17, scope: !3185)
!3192 = !DILocation(line: 33, column: 5, scope: !3185)
!3193 = !DILocation(line: 33, column: 7, scope: !3185)
!3194 = !DILocation(line: 33, column: 27, scope: !3185)
!3195 = !DILocation(line: 0, scope: !3185)
!3196 = !DILocation(line: 35, column: 3, scope: !3185)
!3197 = !DILocation(line: 43, column: 6, scope: !3185)
!3198 = !DILocation(line: 43, column: 8, scope: !3185)
!3199 = !DILocation(line: 43, column: 18, scope: !3185)
!3200 = !DILocation(line: 43, column: 22, scope: !3185)
!3201 = !DILocation(line: 45, column: 3, scope: !3185)
!3202 = !DILocation(line: 45, column: 5, scope: !3185)
!3203 = !DILocation(line: 45, column: 15, scope: !3185)
!3204 = !DILocation(line: 47, column: 2, scope: !3185)
!3205 = distinct !DISubprogram(name: "(*internal/task.Mutex).Unlock", linkageName: "(*internal/task.Mutex).Unlock", scope: !378, file: !378, line: 49, type: !3186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3206)
!3206 = !{!3207, !3208}
!3207 = !DILocalVariable(name: "m", arg: 1, scope: !3205, file: !378, line: 49, type: !3188)
!3208 = !DILocalVariable(name: "old", scope: !3205, file: !378, line: 50, type: !98)
!3209 = !DILocation(line: 49, column: 17, scope: !3205)
!3210 = !DILocation(line: 50, column: 12, scope: !3205)
!3211 = !DILocation(line: 50, column: 14, scope: !3205)
!3212 = !DILocation(line: 50, column: 24, scope: !3205)
!3213 = !DILocation(line: 50, column: 5, scope: !3205)
!3214 = !DILocation(line: 50, column: 29, scope: !3205)
!3215 = !DILocation(line: 50, column: 33, scope: !3205)
!3216 = !DILocation(line: 0, scope: !3205)
!3217 = !DILocation(line: 52, column: 8, scope: !3205)
!3218 = !DILocation(line: 53, column: 12, scope: !3205)
!3219 = !DILocation(line: 53, column: 16, scope: !3205)
!3220 = !DILocation(line: 55, column: 3, scope: !3205)
!3221 = !DILocation(line: 55, column: 5, scope: !3205)
!3222 = !DILocation(line: 55, column: 15, scope: !3205)
!3223 = !DILocation(line: 57, column: 2, scope: !3205)
!3224 = distinct !DISubprogram(name: "(*internal/task.Semaphore).Wait", linkageName: "(*internal/task.Semaphore).Wait", scope: !3225, file: !3225, line: 21, type: !3226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3229)
!3225 = !DIFile(filename: "semaphore.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!3228}
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64, dwarfAddressSpace: 0)
!3229 = !{!3230, !3231, !3232}
!3230 = !DILocalVariable(name: "s", arg: 1, scope: !3224, file: !3225, line: 21, type: !3228)
!3231 = !DILocalVariable(name: "delta", scope: !3224, file: !3225, line: 22, type: !381)
!3232 = !DILocalVariable(name: "value", scope: !3224, file: !3225, line: 23, type: !98)
!3233 = !DILocation(line: 21, column: 21, scope: !3224)
!3234 = !DILocation(line: 22, column: 2, scope: !3224)
!3235 = !DILocation(line: 23, column: 11, scope: !3224)
!3236 = !DILocation(line: 23, column: 13, scope: !3224)
!3237 = !DILocation(line: 23, column: 30, scope: !3224)
!3238 = !DILocation(line: 23, column: 22, scope: !3224)
!3239 = !DILocation(line: 23, column: 2, scope: !3224)
!3240 = !DILocation(line: 0, scope: !3224)
!3241 = !DILocation(line: 25, column: 12, scope: !3224)
!3242 = !DILocation(line: 25, column: 19, scope: !3224)
!3243 = !DILocation(line: 27, column: 4, scope: !3224)
!3244 = !DILocation(line: 29, column: 3, scope: !3224)
!3245 = !DILocation(line: 29, column: 5, scope: !3224)
!3246 = !DILocation(line: 29, column: 16, scope: !3224)
!3247 = !DILocation(line: 29, column: 15, scope: !3224)
!3248 = !DILocation(line: 30, column: 11, scope: !3224)
!3249 = !DILocation(line: 30, column: 13, scope: !3224)
!3250 = !DILocation(line: 30, column: 23, scope: !3224)
!3251 = !DILocation(line: 30, column: 3, scope: !3224)
!3252 = distinct !DISubprogram(name: "internal/task.Init", linkageName: "internal/task.Init", scope: !330, file: !330, line: 55, type: !3253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3255)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!43}
!3255 = !{!3256, !3257}
!3256 = !DILocalVariable(name: "sp", arg: 1, scope: !3252, file: !330, line: 55, type: !43)
!3257 = !DILocalVariable(name: "stackTop", scope: !3252, file: !330, line: 24, type: !43)
!3258 = !DILocation(line: 55, column: 6, scope: !3252)
!3259 = !DILocation(line: 56, column: 28, scope: !3252)
!3260 = !DILocation(line: 56, column: 17, scope: !3252)
!3261 = !DILocation(line: 57, column: 18, scope: !3252)
!3262 = !DILocation(line: 58, column: 2, scope: !3252)
!3263 = distinct !DISubprogram(name: "internal/task.Current", linkageName: "internal/task.Current", scope: !330, file: !330, line: 61, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3264)
!3264 = !{!3265}
!3265 = !DILocalVariable(name: "t", scope: !3263, file: !330, line: 62, type: !331)
!3266 = !DILocation(line: 62, column: 34, scope: !3263)
!3267 = !DILocation(line: 62, column: 2, scope: !3263)
!3268 = !DILocation(line: 63, column: 5, scope: !3263)
!3269 = !DILocation(line: 63, column: 7, scope: !3263)
!3270 = !DILocation(line: 0, scope: !3263)
!3271 = !DILocation(line: 64, column: 15, scope: !3263)
!3272 = !DILocation(line: 66, column: 9, scope: !3263)
!3273 = !DILocation(line: 66, column: 2, scope: !3263)
!3274 = distinct !DISubprogram(name: "internal/task.Pause", linkageName: "internal/task.Pause", scope: !330, file: !330, line: 73, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3275)
!3275 = !{!3276}
!3276 = !DILocalVariable(name: "t", scope: !3274, file: !330, line: 75, type: !331)
!3277 = !DILocation(line: 75, column: 14, scope: !3274)
!3278 = !DILocation(line: 75, column: 2, scope: !3274)
!3279 = !DILocation(line: 0, scope: !3274)
!3280 = !DILocation(line: 77, column: 27, scope: !3274)
!3281 = !DILocation(line: 77, column: 29, scope: !3274)
!3282 = !DILocation(line: 77, column: 35, scope: !3274)
!3283 = !DILocation(line: 77, column: 10, scope: !3274)
!3284 = !DILocation(line: 79, column: 2, scope: !3274)
!3285 = !DILocation(line: 79, column: 4, scope: !3274)
!3286 = !DILocation(line: 79, column: 10, scope: !3274)
!3287 = !DILocation(line: 79, column: 23, scope: !3274)
!3288 = !DILocation(line: 80, column: 2, scope: !3274)
!3289 = distinct !DISubprogram(name: "internal/task.taskExited", linkageName: "tinygo_task_exited", scope: !330, file: !330, line: 125, type: !3290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3292)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!331}
!3292 = !{!3293, !3294, !3295, !3297}
!3293 = !DILocalVariable(name: "t", arg: 1, scope: !3289, file: !330, line: 125, type: !331)
!3294 = !DILocalVariable(name: "found", scope: !3289, file: !330, line: 133, type: !371)
!3295 = !DILocalVariable(name: "q", scope: !3289, file: !330, line: 134, type: !3296)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64, dwarfAddressSpace: 0)
!3297 = !DILocalVariable(name: "otherGoroutines", scope: !3289, file: !330, line: 99, type: !98)
!3298 = !DILocation(line: 125, column: 6, scope: !3289)
!3299 = !DILocation(line: 0, scope: !3289)
!3300 = !DILocation(line: 127, column: 24, scope: !3289)
!3301 = !DILocation(line: 127, column: 26, scope: !3289)
!3302 = !DILocation(line: 127, column: 32, scope: !3289)
!3303 = !DILocation(line: 127, column: 10, scope: !3289)
!3304 = !DILocation(line: 132, column: 21, scope: !3289)
!3305 = !DILocation(line: 133, column: 2, scope: !3289)
!3306 = !DILocation(line: 134, column: 6, scope: !3289)
!3307 = !DILocation(line: 134, column: 26, scope: !3289)
!3308 = !DILocation(line: 134, column: 25, scope: !3289)
!3309 = !DILocation(line: 134, column: 28, scope: !3289)
!3310 = !DILocation(line: 135, column: 7, scope: !3289)
!3311 = !DILocation(line: 135, column: 6, scope: !3289)
!3312 = !DILocation(line: 135, column: 12, scope: !3289)
!3313 = !DILocation(line: 135, column: 9, scope: !3289)
!3314 = !DILocation(line: 136, column: 5, scope: !3289)
!3315 = !DILocation(line: 136, column: 9, scope: !3289)
!3316 = !DILocation(line: 136, column: 11, scope: !3289)
!3317 = !DILocation(line: 136, column: 17, scope: !3289)
!3318 = !DILocation(line: 136, column: 4, scope: !3289)
!3319 = !DILocation(line: 137, column: 4, scope: !3289)
!3320 = !DILocation(line: 134, column: 43, scope: !3289)
!3321 = !DILocation(line: 134, column: 42, scope: !3289)
!3322 = !DILocation(line: 134, column: 46, scope: !3289)
!3323 = !DILocation(line: 134, column: 52, scope: !3289)
!3324 = !DILocation(line: 134, column: 36, scope: !3289)
!3325 = !DILocation(line: 141, column: 2, scope: !3289)
!3326 = !DILocation(line: 142, column: 23, scope: !3289)
!3327 = !DILocation(line: 145, column: 6, scope: !3289)
!3328 = !DILocation(line: 148, column: 2, scope: !3289)
!3329 = !DILocation(line: 146, column: 15, scope: !3289)
!3330 = distinct !DISubprogram(name: "(*internal/task.waitGroup).done", linkageName: "(*internal/task.waitGroup).done", scope: !330, file: !330, line: 163, type: !3331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3334)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!3333}
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64, dwarfAddressSpace: 0)
!3334 = !{!3335}
!3335 = !DILocalVariable(name: "wg", arg: 1, scope: !3330, file: !330, line: 163, type: !3333)
!3336 = !DILocation(line: 163, column: 22, scope: !3330)
!3337 = !DILocation(line: 164, column: 5, scope: !3330)
!3338 = !DILocation(line: 164, column: 8, scope: !3330)
!3339 = !DILocation(line: 164, column: 13, scope: !3330)
!3340 = !DILocation(line: 164, column: 26, scope: !3330)
!3341 = !DILocation(line: 0, scope: !3330)
!3342 = !DILocation(line: 165, column: 3, scope: !3330)
!3343 = !DILocation(line: 165, column: 6, scope: !3330)
!3344 = !DILocation(line: 165, column: 15, scope: !3330)
!3345 = !DILocation(line: 167, column: 2, scope: !3330)
!3346 = distinct !DISubprogram(name: "(*internal/task.waitGroup).wait", linkageName: "(*internal/task.waitGroup).wait", scope: !330, file: !330, line: 169, type: !3331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3347)
!3347 = !{!3348, !3349}
!3348 = !DILocalVariable(name: "wg", arg: 1, scope: !3346, file: !330, line: 169, type: !3333)
!3349 = !DILocalVariable(name: "val", scope: !3346, file: !330, line: 171, type: !98)
!3350 = !DILocation(line: 169, column: 22, scope: !3346)
!3351 = !DILocation(line: 0, scope: !3346)
!3352 = !DILocation(line: 171, column: 10, scope: !3346)
!3353 = !DILocation(line: 171, column: 13, scope: !3346)
!3354 = !DILocation(line: 171, column: 19, scope: !3346)
!3355 = !DILocation(line: 171, column: 3, scope: !3346)
!3356 = !DILocation(line: 172, column: 6, scope: !3346)
!3357 = !DILocation(line: 172, column: 10, scope: !3346)
!3358 = !DILocation(line: 173, column: 4, scope: !3346)
!3359 = !DILocation(line: 175, column: 3, scope: !3346)
!3360 = !DILocation(line: 175, column: 6, scope: !3346)
!3361 = !DILocation(line: 175, column: 13, scope: !3346)
!3362 = !DILocation(line: 175, column: 12, scope: !3346)
!3363 = distinct !DISubprogram(name: "internal/task.initWaitGroup", linkageName: "internal/task.initWaitGroup", scope: !330, file: !330, line: 157, type: !3364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3366)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!98}
!3366 = !{!3367, !3368}
!3367 = !DILocalVariable(name: "n", arg: 1, scope: !3363, file: !330, line: 157, type: !98)
!3368 = !DILocalVariable(name: "wg", scope: !3363, file: !330, line: 158, type: !401)
!3369 = !DILocation(line: 157, column: 6, scope: !3363)
!3370 = !DILocation(line: 158, column: 6, scope: !3363)
!3371 = !DILocation(line: 159, column: 5, scope: !3363)
!3372 = !DILocation(line: 159, column: 2, scope: !3363)
!3373 = !DILocation(line: 159, column: 13, scope: !3363)
!3374 = !DILocation(line: 159, column: 12, scope: !3363)
!3375 = !DILocation(line: 160, column: 9, scope: !3363)
!3376 = !DILocation(line: 160, column: 2, scope: !3363)
!3377 = distinct !DISubprogram(name: "internal/task.GCStopWorldAndScan", linkageName: "internal/task.GCStopWorldAndScan", scope: !330, file: !330, line: 192, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3378)
!3378 = !{!3379, !3380, !3381, !3382, !3383, !3384}
!3379 = !DILocalVariable(name: "current", scope: !3377, file: !330, line: 193, type: !331)
!3380 = !DILocalVariable(name: "otherGoroutines", scope: !3377, file: !330, line: 99, type: !98)
!3381 = !DILocalVariable(name: "scanWaitGroup", scope: !3377, file: !330, line: 151, type: !401)
!3382 = !DILocalVariable(name: "activeTasks", scope: !3377, file: !330, line: 45, type: !331)
!3383 = !DILocalVariable(name: "t", scope: !3377, file: !330, line: 212, type: !331)
!3384 = !DILocalVariable(name: "t", scope: !3377, file: !330, line: 223, type: !331)
!3385 = !DILocation(line: 193, column: 20, scope: !3377)
!3386 = !DILocation(line: 193, column: 2, scope: !3377)
!3387 = !DILocation(line: 196, column: 17, scope: !3377)
!3388 = !DILocation(line: 196, column: 20, scope: !3377)
!3389 = !DILocation(line: 0, scope: !3377)
!3390 = !DILocation(line: 199, column: 22, scope: !3377)
!3391 = !DILocation(line: 202, column: 21, scope: !3377)
!3392 = !DILocation(line: 206, column: 16, scope: !3377)
!3393 = !DILocation(line: 209, column: 33, scope: !3377)
!3394 = !DILocation(line: 209, column: 32, scope: !3377)
!3395 = !DILocation(line: 209, column: 3, scope: !3377)
!3396 = !DILocation(line: 212, column: 12, scope: !3377)
!3397 = !DILocation(line: 212, column: 7, scope: !3377)
!3398 = !DILocation(line: 212, column: 25, scope: !3377)
!3399 = !DILocation(line: 212, column: 27, scope: !3377)
!3400 = !DILocation(line: 213, column: 7, scope: !3377)
!3401 = !DILocation(line: 213, column: 12, scope: !3377)
!3402 = !DILocation(line: 213, column: 9, scope: !3377)
!3403 = !DILocation(line: 214, column: 32, scope: !3377)
!3404 = !DILocation(line: 214, column: 34, scope: !3377)
!3405 = !DILocation(line: 214, column: 40, scope: !3377)
!3406 = !DILocation(line: 214, column: 31, scope: !3377)
!3407 = !DILocation(line: 212, column: 39, scope: !3377)
!3408 = !DILocation(line: 212, column: 41, scope: !3377)
!3409 = !DILocation(line: 212, column: 47, scope: !3377)
!3410 = !DILocation(line: 212, column: 35, scope: !3377)
!3411 = !DILocation(line: 219, column: 21, scope: !3377)
!3412 = !DILocation(line: 223, column: 11, scope: !3377)
!3413 = !DILocation(line: 223, column: 6, scope: !3377)
!3414 = !DILocation(line: 223, column: 24, scope: !3377)
!3415 = !DILocation(line: 223, column: 26, scope: !3377)
!3416 = !DILocation(line: 224, column: 6, scope: !3377)
!3417 = !DILocation(line: 224, column: 11, scope: !3377)
!3418 = !DILocation(line: 224, column: 8, scope: !3377)
!3419 = !DILocation(line: 225, column: 14, scope: !3377)
!3420 = !DILocation(line: 225, column: 16, scope: !3377)
!3421 = !DILocation(line: 225, column: 22, scope: !3377)
!3422 = !DILocation(line: 225, column: 35, scope: !3377)
!3423 = !DILocation(line: 225, column: 37, scope: !3377)
!3424 = !DILocation(line: 225, column: 43, scope: !3377)
!3425 = !DILocation(line: 225, column: 13, scope: !3377)
!3426 = !DILocation(line: 223, column: 38, scope: !3377)
!3427 = !DILocation(line: 223, column: 40, scope: !3377)
!3428 = !DILocation(line: 223, column: 46, scope: !3377)
!3429 = !DILocation(line: 223, column: 34, scope: !3377)
!3430 = !DILocation(line: 230, column: 18, scope: !3377)
!3431 = !DILocation(line: 233, column: 15, scope: !3377)
!3432 = !DILocation(line: 234, column: 2, scope: !3377)
!3433 = distinct !DISubprogram(name: "internal/task.GCResumeWorld", linkageName: "internal/task.GCResumeWorld", scope: !330, file: !330, line: 237, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3434)
!3434 = !{!3435, !3436}
!3435 = !DILocalVariable(name: "otherGoroutines", scope: !3433, file: !330, line: 99, type: !98)
!3436 = !DILocalVariable(name: "scanWaitGroup", scope: !3433, file: !330, line: 151, type: !401)
!3437 = !DILocation(line: 239, column: 17, scope: !3433)
!3438 = !DILocation(line: 239, column: 20, scope: !3433)
!3439 = !DILocation(line: 0, scope: !3433)
!3440 = !DILocation(line: 241, column: 3, scope: !3433)
!3441 = !DILocation(line: 245, column: 32, scope: !3433)
!3442 = !DILocation(line: 245, column: 31, scope: !3433)
!3443 = !DILocation(line: 245, column: 2, scope: !3433)
!3444 = !DILocation(line: 248, column: 15, scope: !3433)
!3445 = !DILocation(line: 251, column: 17, scope: !3433)
!3446 = !DILocation(line: 254, column: 23, scope: !3433)
!3447 = !DILocation(line: 255, column: 2, scope: !3433)
!3448 = distinct !DISubprogram(name: "internal/task.tingyo_task_gc_pause", linkageName: "tinygo_task_gc_pause", scope: !330, file: !330, line: 266, type: !3449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!381}
!3451 = !{!3452, !3453}
!3452 = !DILocalVariable(name: "sig", arg: 1, scope: !3448, file: !330, line: 266, type: !381)
!3453 = !DILocalVariable(name: "stackBottom", scope: !3448, file: !330, line: 28, type: !43)
!3454 = !DILocation(line: 266, column: 6, scope: !3448)
!3455 = !DILocation(line: 268, column: 9, scope: !3448)
!3456 = !DILocation(line: 268, column: 12, scope: !3448)
!3457 = !DILocation(line: 268, column: 49, scope: !3448)
!3458 = !DILocation(line: 268, column: 39, scope: !3448)
!3459 = !DILocation(line: 268, column: 18, scope: !3448)
!3460 = !DILocation(line: 271, column: 20, scope: !3448)
!3461 = !DILocation(line: 0, scope: !3448)
!3462 = !DILocation(line: 274, column: 18, scope: !3448)
!3463 = !DILocation(line: 274, column: 21, scope: !3448)
!3464 = !DILocation(line: 275, column: 15, scope: !3448)
!3465 = !DILocation(line: 279, column: 20, scope: !3448)
!3466 = !DILocation(line: 280, column: 2, scope: !3448)
!3467 = distinct !DISubprogram(name: "internal/task.StackTop", linkageName: "internal/task.StackTop", scope: !330, file: !330, line: 289, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527)
!3468 = !DILocation(line: 290, column: 16, scope: !3467)
!3469 = !DILocation(line: 290, column: 19, scope: !3467)
!3470 = !DILocation(line: 290, column: 25, scope: !3467)
!3471 = !DILocation(line: 290, column: 2, scope: !3467)
!3472 = distinct !DISubprogram(name: "runtime.alloc", linkageName: "runtime.alloc", scope: !421, file: !421, line: 68, type: !3473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3475)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!43, !84}
!3475 = !{!3476, !3477, !3478}
!3476 = !DILocalVariable(name: "size", arg: 1, scope: !3472, file: !421, line: 68, type: !43)
!3477 = !DILocalVariable(name: "layout", arg: 2, scope: !3472, file: !421, line: 68, type: !84)
!3478 = !DILocalVariable(name: "ptr", scope: !3472, file: !421, line: 74, type: !84)
!3479 = !DILocation(line: 68, column: 6, scope: !3472)
!3480 = !DILocation(line: 69, column: 5, scope: !3472)
!3481 = !DILocation(line: 69, column: 10, scope: !3472)
!3482 = !DILocation(line: 0, scope: !3472)
!3483 = !DILocation(line: 70, column: 3, scope: !3472)
!3484 = !DILocation(line: 73, column: 13, scope: !3472)
!3485 = !DILocation(line: 74, column: 6, scope: !3472)
!3486 = !DILocation(line: 75, column: 5, scope: !3472)
!3487 = !DILocation(line: 75, column: 36, scope: !3472)
!3488 = !DILocation(line: 75, column: 12, scope: !3472)
!3489 = !DILocation(line: 79, column: 29, scope: !3472)
!3490 = !DILocation(line: 79, column: 28, scope: !3472)
!3491 = !DILocation(line: 79, column: 3, scope: !3472)
!3492 = !DILocation(line: 82, column: 11, scope: !3472)
!3493 = !DILocation(line: 82, column: 16, scope: !3472)
!3494 = !DILocation(line: 82, column: 10, scope: !3472)
!3495 = !DILocation(line: 90, column: 15, scope: !3472)
!3496 = !DILocation(line: 91, column: 15, scope: !3472)
!3497 = !DILocation(line: 92, column: 5, scope: !3472)
!3498 = !DILocation(line: 92, column: 9, scope: !3472)
!3499 = !DILocation(line: 93, column: 15, scope: !3472)
!3500 = !DILocation(line: 96, column: 9, scope: !3472)
!3501 = !DILocation(line: 96, column: 2, scope: !3472)
!3502 = !DILocation(line: 86, column: 22, scope: !3472)
!3503 = !DILocation(line: 86, column: 21, scope: !3472)
!3504 = !DILocation(line: 86, column: 3, scope: !3472)
!3505 = distinct !DISubprogram(name: "runtime.memzero", linkageName: "runtime.memzero", scope: !1584, file: !1584, line: 53, type: !3506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3508)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!84, !43}
!3508 = !{!3509, !3510}
!3509 = !DILocalVariable(name: "ptr", arg: 1, scope: !3505, file: !1584, line: 53, type: !84)
!3510 = !DILocalVariable(name: "size", arg: 2, scope: !3505, file: !1584, line: 53, type: !43)
!3511 = !DILocation(line: 53, column: 6, scope: !3505)
!3512 = distinct !DISubprogram(name: "runtime.gcResumeWorld", linkageName: "runtime.gcResumeWorld", scope: !3513, file: !3513, line: 27, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3513 = !DIFile(filename: "gc_stack_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3514 = !DILocation(line: 28, column: 20, scope: !3512)
!3515 = !DILocation(line: 29, column: 2, scope: !3512)
!3516 = distinct !DISubprogram(name: "runtime.runtimePanic", linkageName: "runtime.runtimePanic", scope: !428, file: !428, line: 85, type: !1990, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3517)
!3517 = !{!3518}
!3518 = !DILocalVariable(name: "msg", arg: 1, scope: !3516, file: !428, line: 85, type: !38)
!3519 = !DILocation(line: 85, column: 6, scope: !3516)
!3520 = !DILocation(line: 88, column: 30, scope: !3516)
!3521 = !DILocation(line: 88, column: 35, scope: !3516)
!3522 = !DILocation(line: 88, column: 16, scope: !3516)
!3523 = !DILocation(line: 89, column: 2, scope: !3516)
!3524 = distinct !DISubprogram(name: "runtime.runtimePanicAt", linkageName: "runtime.runtimePanicAt", scope: !428, file: !428, line: 91, type: !3525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3527)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!84, !38}
!3527 = !{!3528, !3529}
!3528 = !DILocalVariable(name: "addr", arg: 1, scope: !3524, file: !428, line: 91, type: !84)
!3529 = !DILocalVariable(name: "msg", arg: 2, scope: !3524, file: !428, line: 91, type: !38)
!3530 = !DILocation(line: 91, column: 6, scope: !3524)
!3531 = !DILocation(line: 0, scope: !3524)
!3532 = !DILocation(line: 93, column: 7, scope: !3524)
!3533 = !DILocation(line: 99, column: 14, scope: !3524)
!3534 = !DILocation(line: 100, column: 20, scope: !3524)
!3535 = !DILocation(line: 100, column: 19, scope: !3524)
!3536 = !DILocation(line: 100, column: 26, scope: !3524)
!3537 = !DILocation(line: 100, column: 11, scope: !3524)
!3538 = !DILocation(line: 101, column: 14, scope: !3524)
!3539 = !DILocation(line: 105, column: 14, scope: !3524)
!3540 = !DILocation(line: 105, column: 13, scope: !3524)
!3541 = !DILocation(line: 106, column: 9, scope: !3524)
!3542 = !DILocation(line: 107, column: 7, scope: !3524)
!3543 = !DILocation(line: 108, column: 2, scope: !3524)
!3544 = !DILocation(line: 103, column: 14, scope: !3524)
!3545 = distinct !DISubprogram(name: "runtime.printstring", linkageName: "runtime.printstring", scope: !458, file: !458, line: 12, type: !1990, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3546)
!3546 = !{!3547, !3548}
!3547 = !DILocalVariable(name: "s", arg: 1, scope: !3545, file: !458, line: 12, type: !38)
!3548 = !DILocalVariable(name: "i", scope: !3545, file: !458, line: 13, type: !1936)
!3549 = !DILocation(line: 12, column: 6, scope: !3545)
!3550 = !DILocation(line: 13, column: 6, scope: !3545)
!3551 = !DILocation(line: 0, scope: !3545)
!3552 = !DILocation(line: 13, column: 14, scope: !3545)
!3553 = !DILocation(line: 13, column: 22, scope: !3545)
!3554 = !DILocation(line: 13, column: 21, scope: !3545)
!3555 = !DILocation(line: 13, column: 16, scope: !3545)
!3556 = !DILocation(line: 14, column: 13, scope: !3545)
!3557 = !DILocation(line: 14, column: 11, scope: !3545)
!3558 = !DILocation(line: 14, column: 12, scope: !3545)
!3559 = !DILocation(line: 14, column: 10, scope: !3545)
!3560 = !DILocation(line: 13, column: 26, scope: !3545)
!3561 = !DILocation(line: 16, column: 2, scope: !3545)
!3562 = distinct !DISubprogram(name: "runtime.printptr", linkageName: "runtime.printptr", scope: !458, file: !458, line: 371, type: !3253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3563)
!3563 = !{!3564, !3565, !3566}
!3564 = !DILocalVariable(name: "ptr", arg: 1, scope: !3562, file: !458, line: 371, type: !43)
!3565 = !DILocalVariable(name: "i", scope: !3562, file: !458, line: 378, type: !1936)
!3566 = !DILocalVariable(name: "nibble", scope: !3562, file: !458, line: 379, type: !533)
!3567 = !DILocation(line: 371, column: 6, scope: !3562)
!3568 = !DILocation(line: 372, column: 5, scope: !3562)
!3569 = !DILocation(line: 372, column: 9, scope: !3562)
!3570 = !DILocation(line: 0, scope: !3562)
!3571 = !DILocation(line: 373, column: 14, scope: !3562)
!3572 = !DILocation(line: 374, column: 3, scope: !3562)
!3573 = !DILocation(line: 376, column: 9, scope: !3562)
!3574 = !DILocation(line: 377, column: 9, scope: !3562)
!3575 = !DILocation(line: 378, column: 6, scope: !3562)
!3576 = !DILocation(line: 371, column: 15, scope: !3562)
!3577 = !DILocation(line: 378, column: 14, scope: !3562)
!3578 = !DILocation(line: 378, column: 16, scope: !3562)
!3579 = !DILocation(line: 379, column: 18, scope: !3562)
!3580 = !DILocation(line: 379, column: 22, scope: !3562)
!3581 = !DILocation(line: 379, column: 17, scope: !3562)
!3582 = !DILocation(line: 379, column: 3, scope: !3562)
!3583 = !DILocation(line: 380, column: 6, scope: !3562)
!3584 = !DILocation(line: 380, column: 13, scope: !3562)
!3585 = !DILocation(line: 381, column: 12, scope: !3562)
!3586 = !DILocation(line: 381, column: 19, scope: !3562)
!3587 = !DILocation(line: 381, column: 11, scope: !3562)
!3588 = !DILocation(line: 385, column: 3, scope: !3562)
!3589 = !DILocation(line: 378, column: 45, scope: !3562)
!3590 = !DILocation(line: 383, column: 12, scope: !3562)
!3591 = !DILocation(line: 383, column: 19, scope: !3562)
!3592 = !DILocation(line: 383, column: 24, scope: !3562)
!3593 = !DILocation(line: 383, column: 11, scope: !3562)
!3594 = !DILocation(line: 387, column: 2, scope: !3562)
!3595 = distinct !DISubprogram(name: "runtime.printnl", linkageName: "runtime.printnl", scope: !458, file: !458, line: 286, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3596 = !DILocation(line: 0, scope: !3595)
!3597 = !DILocation(line: 288, column: 10, scope: !3595)
!3598 = !DILocation(line: 290, column: 9, scope: !3595)
!3599 = !DILocation(line: 291, column: 2, scope: !3595)
!3600 = distinct !DISubprogram(name: "runtime.putchar", linkageName: "runtime.putchar", scope: !414, file: !414, line: 214, type: !3601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3603)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!533}
!3603 = !{!3604}
!3604 = !DILocalVariable(name: "c", arg: 1, scope: !3600, file: !414, line: 214, type: !533)
!3605 = !DILocation(line: 214, column: 6, scope: !3600)
!3606 = !DILocation(line: 215, column: 2, scope: !3600)
!3607 = !DILocation(line: 215, column: 17, scope: !3600)
!3608 = !DILocation(line: 216, column: 35, scope: !3600)
!3609 = !DILocation(line: 216, column: 12, scope: !3600)
!3610 = !DILocation(line: 217, column: 2, scope: !3600)
!3611 = distinct !DISubprogram(name: "runtime.initRand", linkageName: "runtime.initRand", scope: !409, file: !409, line: 26, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3612)
!3612 = !{!3613, !3614, !3615}
!3613 = !DILocalVariable(name: "r", scope: !3611, file: !409, line: 27, type: !338)
!3614 = !DILocalVariable(name: "xorshift64State", scope: !3611, file: !409, line: 52, type: !338)
!3615 = !DILocalVariable(name: "xorshift32State", scope: !3611, file: !409, line: 32, type: !98)
!3616 = !DILocation(line: 27, column: 22, scope: !3611)
!3617 = !DILocation(line: 27, column: 2, scope: !3611)
!3618 = !DILocation(line: 28, column: 27, scope: !3611)
!3619 = !DILocation(line: 28, column: 29, scope: !3611)
!3620 = !DILocation(line: 28, column: 2, scope: !3611)
!3621 = !DILocation(line: 29, column: 27, scope: !3611)
!3622 = !DILocation(line: 29, column: 26, scope: !3611)
!3623 = !DILocation(line: 29, column: 2, scope: !3611)
!3624 = !DILocation(line: 30, column: 2, scope: !3611)
!3625 = distinct !DISubprogram(name: "runtime.hardwareRand", linkageName: "runtime.hardwareRand", scope: !3626, file: !3626, line: 137, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3627)
!3626 = !DIFile(filename: "os_linux.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3627 = !{!3628, !3629}
!3628 = !DILocalVariable(name: "read", scope: !3625, file: !3626, line: 138, type: !98)
!3629 = !DILocalVariable(name: "n", scope: !3625, file: !3626, line: 137, type: !338)
!3630 = !DILocation(line: 137, column: 22, scope: !3625)
!3631 = !DILocation(line: 138, column: 24, scope: !3625)
!3632 = !DILocation(line: 138, column: 2, scope: !3625)
!3633 = !DILocation(line: 139, column: 5, scope: !3625)
!3634 = !DILocation(line: 139, column: 10, scope: !3625)
!3635 = !DILocation(line: 0, scope: !3625)
!3636 = !DILocation(line: 140, column: 3, scope: !3625)
!3637 = !DILocation(line: 142, column: 9, scope: !3625)
!3638 = !DILocation(line: 142, column: 2, scope: !3625)
!3639 = distinct !DISubprogram(name: "runtime.getCurrentStackPointer", linkageName: "runtime.getCurrentStackPointer", scope: !3640, file: !3640, line: 26, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3640 = !DIFile(filename: "arch_amd64.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3641 = !DILocation(line: 27, column: 26, scope: !3639)
!3642 = !DILocation(line: 27, column: 16, scope: !3639)
!3643 = !DILocation(line: 27, column: 2, scope: !3639)
!3644 = distinct !DISubprogram(name: "runtime.stacksave", linkageName: "runtime.stacksave", scope: !1584, file: !1584, line: 58, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3645 = !DILocation(line: 58, column: 6, scope: !3644)
!3646 = distinct !DISubprogram(name: "runtime.memcpy", linkageName: "runtime.memcpy", scope: !1584, file: !1584, line: 42, type: !3647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3649)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!84, !84, !43}
!3649 = !{!3650, !3651, !3652}
!3650 = !DILocalVariable(name: "dst", arg: 1, scope: !3646, file: !1584, line: 42, type: !84)
!3651 = !DILocalVariable(name: "src", arg: 2, scope: !3646, file: !1584, line: 42, type: !84)
!3652 = !DILocalVariable(name: "size", arg: 3, scope: !3646, file: !1584, line: 42, type: !43)
!3653 = !DILocation(line: 42, column: 6, scope: !3646)
!3654 = distinct !DISubprogram(name: "runtime.nilPanic", linkageName: "runtime.nilPanic", scope: !428, file: !428, line: 183, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3655 = !DILocation(line: 184, column: 30, scope: !3654)
!3656 = !DILocation(line: 184, column: 16, scope: !3654)
!3657 = !DILocation(line: 185, column: 2, scope: !3654)
!3658 = distinct !DISubprogram(name: "runtime.deadlock", linkageName: "runtime.deadlock", scope: !515, file: !515, line: 42, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3659 = !DILocation(line: 44, column: 12, scope: !3658)
!3660 = !DILocation(line: 45, column: 2, scope: !3658)
!3661 = distinct !DISubprogram(name: "runtime.lookupPanic", linkageName: "runtime.lookupPanic", scope: !428, file: !428, line: 193, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3662 = !DILocation(line: 194, column: 30, scope: !3661)
!3663 = !DILocation(line: 194, column: 16, scope: !3661)
!3664 = !DILocation(line: 195, column: 2, scope: !3661)
!3665 = distinct !DISubprogram(name: "runtime.panicOrGoexit", linkageName: "runtime.panicOrGoexit", scope: !428, file: !428, line: 58, type: !3666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3669)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!778, !3668}
!3668 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.panicState", baseType: !4)
!3669 = !{!3670, !3671, !3672, !3683, !3684}
!3670 = !DILocalVariable(name: "message", arg: 1, scope: !3665, file: !428, line: 58, type: !778)
!3671 = !DILocalVariable(name: "panicking", arg: 2, scope: !3665, file: !428, line: 58, type: !3668)
!3672 = !DILocalVariable(name: "frame", scope: !3665, file: !428, line: 65, type: !3673)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64, align: 64, dwarfAddressSpace: 0)
!3674 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.deferFrame", baseType: !3675)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !3676)
!3676 = !{!3677, !3678, !3679, !3680, !3681, !3682}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "JumpSP", baseType: !84, size: 64, align: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "JumpPC", baseType: !84, size: 64, align: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraRegs", baseType: !2613, align: 64, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "Previous", baseType: !3673, size: 64, align: 64, offset: 128)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "Panicking", baseType: !3668, size: 8, align: 8, offset: 192)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "PanicValue", baseType: !778, size: 128, align: 64, offset: 256)
!3683 = !DILocalVariable(name: "PanicValue", scope: !3665, file: !428, line: 42, type: !778)
!3684 = !DILocalVariable(name: "Panicking", scope: !3665, file: !428, line: 41, type: !3668)
!3685 = !DILocation(line: 58, column: 6, scope: !3665)
!3686 = !DILocation(line: 0, scope: !3665)
!3687 = !DILocation(line: 60, column: 7, scope: !3665)
!3688 = !DILocation(line: 64, column: 39, scope: !3665)
!3689 = !DILocation(line: 65, column: 38, scope: !3665)
!3690 = !DILocation(line: 65, column: 41, scope: !3665)
!3691 = !DILocation(line: 65, column: 3, scope: !3665)
!3692 = !DILocation(line: 66, column: 6, scope: !3665)
!3693 = !DILocation(line: 66, column: 12, scope: !3665)
!3694 = !DILocation(line: 67, column: 4, scope: !3665)
!3695 = !DILocation(line: 67, column: 23, scope: !3665)
!3696 = !DILocation(line: 67, column: 10, scope: !3665)
!3697 = !DILocation(line: 68, column: 4, scope: !3665)
!3698 = !DILocation(line: 68, column: 22, scope: !3665)
!3699 = !DILocation(line: 68, column: 10, scope: !3665)
!3700 = !DILocation(line: 69, column: 19, scope: !3665)
!3701 = !DILocation(line: 69, column: 18, scope: !3665)
!3702 = !DILocation(line: 73, column: 5, scope: !3665)
!3703 = !DILocation(line: 73, column: 15, scope: !3665)
!3704 = !DILocation(line: 76, column: 11, scope: !3665)
!3705 = !DILocation(line: 78, column: 13, scope: !3665)
!3706 = !DILocation(line: 79, column: 11, scope: !3665)
!3707 = !DILocation(line: 79, column: 10, scope: !3665)
!3708 = !DILocation(line: 80, column: 9, scope: !3665)
!3709 = !DILocation(line: 81, column: 7, scope: !3665)
!3710 = !DILocation(line: 82, column: 2, scope: !3665)
!3711 = distinct !DISubprogram(name: "runtime.printitf", linkageName: "runtime.printitf", scope: !458, file: !458, line: 293, type: !3712, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3714)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!778}
!3714 = !{!3715, !3716, !3717, !3718, !3719, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3731, !3732, !3734, !3736, !3737, !3738, !3740}
!3715 = !DILocalVariable(name: "msg", arg: 1, scope: !3711, file: !458, line: 293, type: !778)
!3716 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !371)
!3717 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !1936)
!3718 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !82)
!3719 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !3720)
!3720 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!3721 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !381)
!3722 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !1699)
!3723 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !1738)
!3724 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !4)
!3725 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !90)
!3726 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !98)
!3727 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !338)
!3728 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !43)
!3729 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !3730)
!3730 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!3731 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !795)
!3732 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !3733)
!3733 = !DIBasicType(name: "complex64", size: 64, encoding: DW_ATE_complex_float)
!3734 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !3735)
!3735 = !DIBasicType(name: "complex128", size: 128, encoding: DW_ATE_complex_float)
!3736 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !38)
!3737 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !777)
!3738 = !DILocalVariable(name: "msg", scope: !3711, file: !458, line: 294, type: !3739)
!3739 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.stringer", baseType: !778)
!3740 = !DILocalVariable(name: "itf", scope: !3711, file: !458, line: 345, type: !778)
!3741 = !DILocation(line: 293, column: 6, scope: !3711)
!3742 = !DILocation(line: 294, column: 16, scope: !3711)
!3743 = !DILocation(line: 295, column: 2, scope: !3711)
!3744 = !DILocation(line: 0, scope: !3711)
!3745 = !DILocation(line: 296, column: 13, scope: !3711)
!3746 = !DILocation(line: 296, column: 12, scope: !3711)
!3747 = !DILocation(line: 352, column: 2, scope: !3711)
!3748 = !DILocation(line: 297, column: 2, scope: !3711)
!3749 = !DILocation(line: 300, column: 21, scope: !3711)
!3750 = !DILocation(line: 300, column: 14, scope: !3711)
!3751 = !DILocation(line: 302, column: 21, scope: !3711)
!3752 = !DILocation(line: 302, column: 20, scope: !3711)
!3753 = !DILocation(line: 302, column: 14, scope: !3711)
!3754 = !DILocation(line: 304, column: 2, scope: !3711)
!3755 = !DILocation(line: 305, column: 13, scope: !3711)
!3756 = !DILocation(line: 305, column: 12, scope: !3711)
!3757 = !DILocation(line: 306, column: 2, scope: !3711)
!3758 = !DILocation(line: 307, column: 14, scope: !3711)
!3759 = !DILocation(line: 307, column: 13, scope: !3711)
!3760 = !DILocation(line: 308, column: 2, scope: !3711)
!3761 = !DILocation(line: 309, column: 14, scope: !3711)
!3762 = !DILocation(line: 309, column: 13, scope: !3711)
!3763 = !DILocation(line: 310, column: 2, scope: !3711)
!3764 = !DILocation(line: 311, column: 14, scope: !3711)
!3765 = !DILocation(line: 311, column: 13, scope: !3711)
!3766 = !DILocation(line: 312, column: 2, scope: !3711)
!3767 = !DILocation(line: 315, column: 23, scope: !3711)
!3768 = !DILocation(line: 315, column: 15, scope: !3711)
!3769 = !DILocation(line: 317, column: 23, scope: !3711)
!3770 = !DILocation(line: 317, column: 22, scope: !3711)
!3771 = !DILocation(line: 317, column: 15, scope: !3711)
!3772 = !DILocation(line: 319, column: 2, scope: !3711)
!3773 = !DILocation(line: 320, column: 14, scope: !3711)
!3774 = !DILocation(line: 320, column: 13, scope: !3711)
!3775 = !DILocation(line: 321, column: 2, scope: !3711)
!3776 = !DILocation(line: 322, column: 15, scope: !3711)
!3777 = !DILocation(line: 322, column: 14, scope: !3711)
!3778 = !DILocation(line: 323, column: 2, scope: !3711)
!3779 = !DILocation(line: 324, column: 15, scope: !3711)
!3780 = !DILocation(line: 324, column: 14, scope: !3711)
!3781 = !DILocation(line: 325, column: 2, scope: !3711)
!3782 = !DILocation(line: 326, column: 15, scope: !3711)
!3783 = !DILocation(line: 326, column: 14, scope: !3711)
!3784 = !DILocation(line: 327, column: 2, scope: !3711)
!3785 = !DILocation(line: 328, column: 16, scope: !3711)
!3786 = !DILocation(line: 328, column: 15, scope: !3711)
!3787 = !DILocation(line: 329, column: 2, scope: !3711)
!3788 = !DILocation(line: 330, column: 16, scope: !3711)
!3789 = !DILocation(line: 330, column: 15, scope: !3711)
!3790 = !DILocation(line: 331, column: 2, scope: !3711)
!3791 = !DILocation(line: 332, column: 16, scope: !3711)
!3792 = !DILocation(line: 332, column: 15, scope: !3711)
!3793 = !DILocation(line: 333, column: 2, scope: !3711)
!3794 = !DILocation(line: 334, column: 18, scope: !3711)
!3795 = !DILocation(line: 334, column: 17, scope: !3711)
!3796 = !DILocation(line: 335, column: 2, scope: !3711)
!3797 = !DILocation(line: 336, column: 19, scope: !3711)
!3798 = !DILocation(line: 336, column: 18, scope: !3711)
!3799 = !DILocation(line: 337, column: 2, scope: !3711)
!3800 = !DILocation(line: 338, column: 15, scope: !3711)
!3801 = !DILocation(line: 338, column: 14, scope: !3711)
!3802 = !DILocation(line: 339, column: 2, scope: !3711)
!3803 = !DILocation(line: 340, column: 15, scope: !3711)
!3804 = !DILocation(line: 340, column: 24, scope: !3711)
!3805 = !DILocation(line: 340, column: 14, scope: !3711)
!3806 = !DILocation(line: 341, column: 2, scope: !3711)
!3807 = !DILocation(line: 342, column: 15, scope: !3711)
!3808 = !DILocation(line: 342, column: 25, scope: !3711)
!3809 = !DILocation(line: 342, column: 14, scope: !3711)
!3810 = !DILocation(line: 294, column: 9, scope: !3711)
!3811 = !DILocation(line: 345, column: 10, scope: !3711)
!3812 = !DILocation(line: 345, column: 3, scope: !3711)
!3813 = !DILocation(line: 346, column: 10, scope: !3711)
!3814 = !DILocation(line: 347, column: 28, scope: !3711)
!3815 = !DILocation(line: 347, column: 23, scope: !3711)
!3816 = !DILocation(line: 347, column: 15, scope: !3711)
!3817 = !DILocation(line: 348, column: 10, scope: !3711)
!3818 = !DILocation(line: 349, column: 24, scope: !3711)
!3819 = !DILocation(line: 349, column: 19, scope: !3711)
!3820 = !DILocation(line: 349, column: 11, scope: !3711)
!3821 = !DILocation(line: 350, column: 10, scope: !3711)
!3822 = distinct !DISubprogram(name: "runtime.printbool", linkageName: "runtime.printbool", scope: !458, file: !458, line: 389, type: !3823, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3825)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!371}
!3825 = !{!3826}
!3826 = !DILocalVariable(name: "b", arg: 1, scope: !3822, file: !458, line: 389, type: !371)
!3827 = !DILocation(line: 389, column: 6, scope: !3822)
!3828 = !DILocation(line: 390, column: 5, scope: !3822)
!3829 = !DILocation(line: 0, scope: !3822)
!3830 = !DILocation(line: 391, column: 14, scope: !3822)
!3831 = !DILocation(line: 395, column: 2, scope: !3822)
!3832 = !DILocation(line: 393, column: 14, scope: !3822)
!3833 = distinct !DISubprogram(name: "runtime.printint64", linkageName: "runtime.printint64", scope: !458, file: !458, line: 94, type: !3834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3836)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!1699}
!3836 = !{!3837}
!3837 = !DILocalVariable(name: "n", arg: 1, scope: !3833, file: !458, line: 94, type: !1699)
!3838 = !DILocation(line: 94, column: 6, scope: !3833)
!3839 = !DILocation(line: 95, column: 5, scope: !3833)
!3840 = !DILocation(line: 95, column: 7, scope: !3833)
!3841 = !DILocation(line: 0, scope: !3833)
!3842 = !DILocation(line: 96, column: 10, scope: !3833)
!3843 = !DILocation(line: 97, column: 8, scope: !3833)
!3844 = !DILocation(line: 97, column: 7, scope: !3833)
!3845 = !DILocation(line: 97, column: 3, scope: !3833)
!3846 = !DILocation(line: 94, column: 17, scope: !3833)
!3847 = !DILocation(line: 99, column: 21, scope: !3833)
!3848 = !DILocation(line: 99, column: 13, scope: !3833)
!3849 = !DILocation(line: 100, column: 2, scope: !3833)
!3850 = distinct !DISubprogram(name: "runtime.printint32", linkageName: "runtime.printint32", scope: !458, file: !458, line: 65, type: !3449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3851)
!3851 = !{!3852}
!3852 = !DILocalVariable(name: "n", arg: 1, scope: !3850, file: !458, line: 65, type: !381)
!3853 = !DILocation(line: 65, column: 6, scope: !3850)
!3854 = !DILocation(line: 68, column: 5, scope: !3850)
!3855 = !DILocation(line: 68, column: 7, scope: !3850)
!3856 = !DILocation(line: 0, scope: !3850)
!3857 = !DILocation(line: 69, column: 10, scope: !3850)
!3858 = !DILocation(line: 70, column: 8, scope: !3850)
!3859 = !DILocation(line: 70, column: 7, scope: !3850)
!3860 = !DILocation(line: 70, column: 3, scope: !3850)
!3861 = !DILocation(line: 65, column: 17, scope: !3850)
!3862 = !DILocation(line: 72, column: 21, scope: !3850)
!3863 = !DILocation(line: 72, column: 13, scope: !3850)
!3864 = !DILocation(line: 73, column: 2, scope: !3850)
!3865 = distinct !DISubprogram(name: "runtime.printint8", linkageName: "runtime.printint8", scope: !458, file: !458, line: 30, type: !3866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3868)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!82}
!3868 = !{!3869}
!3869 = !DILocalVariable(name: "n", arg: 1, scope: !3865, file: !458, line: 30, type: !82)
!3870 = !DILocation(line: 30, column: 6, scope: !3865)
!3871 = !DILocation(line: 0, scope: !3865)
!3872 = !DILocation(line: 32, column: 20, scope: !3865)
!3873 = !DILocation(line: 32, column: 19, scope: !3865)
!3874 = !DILocation(line: 32, column: 13, scope: !3865)
!3875 = !DILocation(line: 40, column: 2, scope: !3865)
!3876 = !DILocation(line: 34, column: 6, scope: !3865)
!3877 = !DILocation(line: 34, column: 8, scope: !3865)
!3878 = !DILocation(line: 35, column: 11, scope: !3865)
!3879 = !DILocation(line: 36, column: 9, scope: !3865)
!3880 = !DILocation(line: 36, column: 8, scope: !3865)
!3881 = !DILocation(line: 36, column: 4, scope: !3865)
!3882 = !DILocation(line: 30, column: 16, scope: !3865)
!3883 = !DILocation(line: 38, column: 20, scope: !3865)
!3884 = !DILocation(line: 38, column: 13, scope: !3865)
!3885 = distinct !DISubprogram(name: "runtime.printint16", linkageName: "runtime.printint16", scope: !458, file: !458, line: 57, type: !3886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3888)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!3720}
!3888 = !{!3889}
!3889 = !DILocalVariable(name: "n", arg: 1, scope: !3885, file: !458, line: 57, type: !3720)
!3890 = !DILocation(line: 57, column: 6, scope: !3885)
!3891 = !DILocation(line: 58, column: 19, scope: !3885)
!3892 = !DILocation(line: 58, column: 18, scope: !3885)
!3893 = !DILocation(line: 58, column: 12, scope: !3885)
!3894 = !DILocation(line: 59, column: 2, scope: !3885)
!3895 = distinct !DISubprogram(name: "runtime.printuint64", linkageName: "runtime.printuint64", scope: !458, file: !458, line: 76, type: !1753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3896)
!3896 = !{!3897, !3898, !3899, !3900, !3901}
!3897 = !DILocalVariable(name: "n", arg: 1, scope: !3895, file: !458, line: 76, type: !338)
!3898 = !DILocalVariable(name: "firstdigit", scope: !3895, file: !458, line: 79, type: !1936)
!3899 = !DILocalVariable(name: "i", scope: !3895, file: !458, line: 80, type: !1936)
!3900 = !DILocalVariable(name: "digit", scope: !3895, file: !458, line: 81, type: !533)
!3901 = !DILocalVariable(name: "i", scope: !3895, file: !458, line: 89, type: !1936)
!3902 = !DILocation(line: 76, column: 6, scope: !3895)
!3903 = !DILocation(line: 77, column: 2, scope: !3895)
!3904 = !DILocation(line: 79, column: 2, scope: !3895)
!3905 = !DILocation(line: 80, column: 6, scope: !3895)
!3906 = !DILocation(line: 0, scope: !3895)
!3907 = !DILocation(line: 76, column: 18, scope: !3895)
!3908 = !DILocation(line: 80, column: 15, scope: !3895)
!3909 = !DILocation(line: 80, column: 17, scope: !3895)
!3910 = !DILocation(line: 81, column: 17, scope: !3895)
!3911 = !DILocation(line: 81, column: 18, scope: !3895)
!3912 = !DILocation(line: 81, column: 22, scope: !3895)
!3913 = !DILocation(line: 81, column: 16, scope: !3895)
!3914 = !DILocation(line: 81, column: 3, scope: !3895)
!3915 = !DILocation(line: 82, column: 10, scope: !3895)
!3916 = !DILocation(line: 82, column: 15, scope: !3895)
!3917 = !DILocation(line: 82, column: 9, scope: !3895)
!3918 = !DILocation(line: 83, column: 6, scope: !3895)
!3919 = !DILocation(line: 83, column: 12, scope: !3895)
!3920 = !DILocation(line: 84, column: 17, scope: !3895)
!3921 = !DILocation(line: 84, column: 4, scope: !3895)
!3922 = !DILocation(line: 86, column: 3, scope: !3895)
!3923 = !DILocation(line: 80, column: 23, scope: !3895)
!3924 = !DILocation(line: 89, column: 11, scope: !3895)
!3925 = !DILocation(line: 89, column: 6, scope: !3895)
!3926 = !DILocation(line: 89, column: 23, scope: !3895)
!3927 = !DILocation(line: 89, column: 25, scope: !3895)
!3928 = !DILocation(line: 90, column: 18, scope: !3895)
!3929 = !DILocation(line: 90, column: 17, scope: !3895)
!3930 = !DILocation(line: 90, column: 10, scope: !3895)
!3931 = !DILocation(line: 89, column: 31, scope: !3895)
!3932 = !DILocation(line: 92, column: 2, scope: !3895)
!3933 = distinct !DISubprogram(name: "runtime.printuint32", linkageName: "runtime.printuint32", scope: !458, file: !458, line: 61, type: !3364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3934)
!3934 = !{!3935}
!3935 = !DILocalVariable(name: "n", arg: 1, scope: !3933, file: !458, line: 61, type: !98)
!3936 = !DILocation(line: 61, column: 6, scope: !3933)
!3937 = !DILocation(line: 62, column: 21, scope: !3933)
!3938 = !DILocation(line: 62, column: 20, scope: !3933)
!3939 = !DILocation(line: 62, column: 13, scope: !3933)
!3940 = !DILocation(line: 63, column: 2, scope: !3933)
!3941 = distinct !DISubprogram(name: "runtime.printuint8", linkageName: "runtime.printuint8", scope: !458, file: !458, line: 18, type: !3942, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3944)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!4}
!3944 = !{!3945, !3946}
!3945 = !DILocalVariable(name: "n", arg: 1, scope: !3941, file: !458, line: 18, type: !4)
!3946 = !DILocalVariable(name: "prevdigits", scope: !3941, file: !458, line: 22, type: !4)
!3947 = !DILocation(line: 18, column: 6, scope: !3941)
!3948 = !DILocation(line: 0, scope: !3941)
!3949 = !DILocation(line: 20, column: 22, scope: !3941)
!3950 = !DILocation(line: 20, column: 21, scope: !3941)
!3951 = !DILocation(line: 20, column: 14, scope: !3941)
!3952 = !DILocation(line: 28, column: 2, scope: !3941)
!3953 = !DILocation(line: 22, column: 17, scope: !3941)
!3954 = !DILocation(line: 22, column: 19, scope: !3941)
!3955 = !DILocation(line: 22, column: 3, scope: !3941)
!3956 = !DILocation(line: 23, column: 6, scope: !3941)
!3957 = !DILocation(line: 23, column: 17, scope: !3941)
!3958 = !DILocation(line: 24, column: 15, scope: !3941)
!3959 = !DILocation(line: 24, column: 14, scope: !3941)
!3960 = !DILocation(line: 26, column: 17, scope: !3941)
!3961 = !DILocation(line: 26, column: 19, scope: !3941)
!3962 = !DILocation(line: 26, column: 25, scope: !3941)
!3963 = !DILocation(line: 26, column: 10, scope: !3941)
!3964 = distinct !DISubprogram(name: "runtime.printuint16", linkageName: "runtime.printuint16", scope: !458, file: !458, line: 53, type: !3965, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3967)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!90}
!3967 = !{!3968}
!3968 = !DILocalVariable(name: "n", arg: 1, scope: !3964, file: !458, line: 53, type: !90)
!3969 = !DILocation(line: 53, column: 6, scope: !3964)
!3970 = !DILocation(line: 54, column: 21, scope: !3964)
!3971 = !DILocation(line: 54, column: 20, scope: !3964)
!3972 = !DILocation(line: 54, column: 13, scope: !3964)
!3973 = !DILocation(line: 55, column: 2, scope: !3964)
!3974 = distinct !DISubprogram(name: "runtime.printuintptr", linkageName: "runtime.printuintptr", scope: !458, file: !458, line: 42, type: !3253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3975)
!3975 = !{!3976}
!3976 = !DILocalVariable(name: "n", arg: 1, scope: !3974, file: !458, line: 42, type: !43)
!3977 = !DILocation(line: 42, column: 6, scope: !3974)
!3978 = !DILocation(line: 0, scope: !3974)
!3979 = !DILocation(line: 45, column: 22, scope: !3974)
!3980 = !DILocation(line: 45, column: 21, scope: !3974)
!3981 = !DILocation(line: 45, column: 14, scope: !3974)
!3982 = !DILocation(line: 51, column: 2, scope: !3974)
!3983 = !DILocation(line: 47, column: 22, scope: !3974)
!3984 = !DILocation(line: 47, column: 21, scope: !3974)
!3985 = !DILocation(line: 47, column: 14, scope: !3974)
!3986 = !DILocation(line: 49, column: 22, scope: !3974)
!3987 = !DILocation(line: 49, column: 14, scope: !3974)
!3988 = distinct !DISubprogram(name: "runtime.printfloat32", linkageName: "runtime.printfloat32", scope: !458, file: !458, line: 114, type: !3989, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3991)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!3730}
!3991 = !{!3992, !3993, !3994, !3995, !3996, !3998, !3999, !4000}
!3992 = !DILocalVariable(name: "v", arg: 1, scope: !3988, file: !458, line: 114, type: !3730)
!3993 = !DILocalVariable(name: "e", scope: !3988, file: !458, line: 130, type: !1936)
!3994 = !DILocalVariable(name: "i", scope: !3988, file: !458, line: 164, type: !1936)
!3995 = !DILocalVariable(name: "s", scope: !3988, file: !458, line: 165, type: !1936)
!3996 = !DILocalVariable(name: "buf", scope: !3988, file: !458, line: 128, type: !3997)
!3997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 112, align: 8, elements: !113)
!3998 = !DILocalVariable(name: "c", scope: !3988, file: !458, line: 183, type: !533)
!3999 = !DILocalVariable(name: "h", scope: !3988, file: !458, line: 152, type: !3730)
!4000 = !DILocalVariable(name: "i", scope: !3988, file: !458, line: 153, type: !1936)
!4001 = !DILocation(line: 114, column: 6, scope: !3988)
!4002 = !DILocation(line: 116, column: 7, scope: !3988)
!4003 = !DILocation(line: 116, column: 12, scope: !3988)
!4004 = !DILocation(line: 116, column: 9, scope: !3988)
!4005 = !DILocation(line: 0, scope: !3988)
!4006 = !DILocation(line: 117, column: 14, scope: !3988)
!4007 = !DILocation(line: 118, column: 3, scope: !3988)
!4008 = !DILocation(line: 119, column: 7, scope: !3988)
!4009 = !DILocation(line: 119, column: 9, scope: !3988)
!4010 = !DILocation(line: 119, column: 8, scope: !3988)
!4011 = !DILocation(line: 119, column: 14, scope: !3988)
!4012 = !DILocation(line: 119, column: 11, scope: !3988)
!4013 = !DILocation(line: 119, column: 19, scope: !3988)
!4014 = !DILocation(line: 119, column: 21, scope: !3988)
!4015 = !DILocation(line: 119, column: 16, scope: !3988)
!4016 = !DILocation(line: 120, column: 14, scope: !3988)
!4017 = !DILocation(line: 121, column: 3, scope: !3988)
!4018 = !DILocation(line: 122, column: 7, scope: !3988)
!4019 = !DILocation(line: 122, column: 9, scope: !3988)
!4020 = !DILocation(line: 122, column: 8, scope: !3988)
!4021 = !DILocation(line: 122, column: 14, scope: !3988)
!4022 = !DILocation(line: 122, column: 11, scope: !3988)
!4023 = !DILocation(line: 122, column: 19, scope: !3988)
!4024 = !DILocation(line: 122, column: 21, scope: !3988)
!4025 = !DILocation(line: 122, column: 16, scope: !3988)
!4026 = !DILocation(line: 123, column: 14, scope: !3988)
!4027 = !DILocation(line: 124, column: 3, scope: !3988)
!4028 = !DILocation(line: 129, column: 5, scope: !3988)
!4029 = !DILocation(line: 130, column: 2, scope: !3988)
!4030 = !DILocation(line: 131, column: 5, scope: !3988)
!4031 = !DILocation(line: 131, column: 7, scope: !3988)
!4032 = !DILocation(line: 132, column: 8, scope: !3988)
!4033 = !DILocation(line: 132, column: 7, scope: !3988)
!4034 = !DILocation(line: 132, column: 10, scope: !3988)
!4035 = !DILocation(line: 133, column: 7, scope: !3988)
!4036 = !DILocation(line: 114, column: 19, scope: !3988)
!4037 = !DILocation(line: 164, column: 6, scope: !3988)
!4038 = !DILocation(line: 164, column: 14, scope: !3988)
!4039 = !DILocation(line: 164, column: 16, scope: !3988)
!4040 = !DILocation(line: 165, column: 12, scope: !3988)
!4041 = !DILocation(line: 165, column: 11, scope: !3988)
!4042 = !DILocation(line: 165, column: 3, scope: !3988)
!4043 = !DILocation(line: 166, column: 7, scope: !3988)
!4044 = !DILocation(line: 166, column: 8, scope: !3988)
!4045 = !DILocation(line: 166, column: 19, scope: !3988)
!4046 = !DILocation(line: 166, column: 21, scope: !3988)
!4047 = !DILocation(line: 166, column: 18, scope: !3988)
!4048 = !DILocation(line: 166, column: 6, scope: !3988)
!4049 = !DILocation(line: 167, column: 16, scope: !3988)
!4050 = !DILocation(line: 167, column: 15, scope: !3988)
!4051 = !DILocation(line: 167, column: 3, scope: !3988)
!4052 = !DILocation(line: 168, column: 3, scope: !3988)
!4053 = !DILocation(line: 164, column: 21, scope: !3988)
!4054 = !DILocation(line: 170, column: 14, scope: !3988)
!4055 = !DILocation(line: 170, column: 5, scope: !3988)
!4056 = !DILocation(line: 171, column: 5, scope: !3988)
!4057 = !DILocation(line: 173, column: 5, scope: !3988)
!4058 = !DILocation(line: 174, column: 5, scope: !3988)
!4059 = !DILocation(line: 175, column: 5, scope: !3988)
!4060 = !DILocation(line: 175, column: 7, scope: !3988)
!4061 = !DILocation(line: 176, column: 8, scope: !3988)
!4062 = !DILocation(line: 176, column: 7, scope: !3988)
!4063 = !DILocation(line: 176, column: 3, scope: !3988)
!4064 = !DILocation(line: 177, column: 6, scope: !3988)
!4065 = !DILocation(line: 180, column: 18, scope: !3988)
!4066 = !DILocation(line: 180, column: 19, scope: !3988)
!4067 = !DILocation(line: 180, column: 17, scope: !3988)
!4068 = !DILocation(line: 180, column: 25, scope: !3988)
!4069 = !DILocation(line: 180, column: 5, scope: !3988)
!4070 = !DILocation(line: 181, column: 18, scope: !3988)
!4071 = !DILocation(line: 181, column: 19, scope: !3988)
!4072 = !DILocation(line: 181, column: 17, scope: !3988)
!4073 = !DILocation(line: 181, column: 23, scope: !3988)
!4074 = !DILocation(line: 181, column: 27, scope: !3988)
!4075 = !DILocation(line: 181, column: 5, scope: !3988)
!4076 = !DILocation(line: 182, column: 18, scope: !3988)
!4077 = !DILocation(line: 182, column: 19, scope: !3988)
!4078 = !DILocation(line: 182, column: 17, scope: !3988)
!4079 = !DILocation(line: 182, column: 24, scope: !3988)
!4080 = !DILocation(line: 182, column: 5, scope: !3988)
!4081 = !DILocation(line: 183, column: 20, scope: !3988)
!4082 = !DILocation(line: 183, column: 9, scope: !3988)
!4083 = !DILocation(line: 184, column: 11, scope: !3988)
!4084 = !DILocation(line: 184, column: 10, scope: !3988)
!4085 = !DILocation(line: 186, column: 2, scope: !3988)
!4086 = !DILocation(line: 136, column: 6, scope: !3988)
!4087 = !DILocation(line: 136, column: 8, scope: !3988)
!4088 = !DILocation(line: 137, column: 9, scope: !3988)
!4089 = !DILocation(line: 137, column: 8, scope: !3988)
!4090 = !DILocation(line: 137, column: 4, scope: !3988)
!4091 = !DILocation(line: 138, column: 7, scope: !3988)
!4092 = !DILocation(line: 142, column: 7, scope: !3988)
!4093 = !DILocation(line: 142, column: 9, scope: !3988)
!4094 = !DILocation(line: 143, column: 4, scope: !3988)
!4095 = !DILocation(line: 144, column: 4, scope: !3988)
!4096 = !DILocation(line: 146, column: 7, scope: !3988)
!4097 = !DILocation(line: 146, column: 9, scope: !3988)
!4098 = !DILocation(line: 147, column: 4, scope: !3988)
!4099 = !DILocation(line: 148, column: 4, scope: !3988)
!4100 = !DILocation(line: 152, column: 3, scope: !3988)
!4101 = !DILocation(line: 153, column: 7, scope: !3988)
!4102 = !DILocation(line: 153, column: 15, scope: !3988)
!4103 = !DILocation(line: 153, column: 17, scope: !3988)
!4104 = !DILocation(line: 154, column: 4, scope: !3988)
!4105 = !DILocation(line: 153, column: 22, scope: !3988)
!4106 = !DILocation(line: 156, column: 8, scope: !3988)
!4107 = !DILocation(line: 156, column: 3, scope: !3988)
!4108 = !DILocation(line: 157, column: 6, scope: !3988)
!4109 = !DILocation(line: 157, column: 8, scope: !3988)
!4110 = !DILocation(line: 158, column: 4, scope: !3988)
!4111 = !DILocation(line: 159, column: 4, scope: !3988)
!4112 = distinct !DISubprogram(name: "runtime.printfloat64", linkageName: "runtime.printfloat64", scope: !458, file: !458, line: 194, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4113)
!4113 = !{!4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121}
!4114 = !DILocalVariable(name: "v", arg: 1, scope: !4112, file: !458, line: 194, type: !795)
!4115 = !DILocalVariable(name: "e", scope: !4112, file: !458, line: 210, type: !1936)
!4116 = !DILocalVariable(name: "i", scope: !4112, file: !458, line: 244, type: !1936)
!4117 = !DILocalVariable(name: "s", scope: !4112, file: !458, line: 245, type: !1936)
!4118 = !DILocalVariable(name: "buf", scope: !4112, file: !458, line: 208, type: !3997)
!4119 = !DILocalVariable(name: "c", scope: !4112, file: !458, line: 263, type: !533)
!4120 = !DILocalVariable(name: "h", scope: !4112, file: !458, line: 232, type: !795)
!4121 = !DILocalVariable(name: "i", scope: !4112, file: !458, line: 233, type: !1936)
!4122 = !DILocation(line: 194, column: 6, scope: !4112)
!4123 = !DILocation(line: 196, column: 7, scope: !4112)
!4124 = !DILocation(line: 196, column: 12, scope: !4112)
!4125 = !DILocation(line: 196, column: 9, scope: !4112)
!4126 = !DILocation(line: 0, scope: !4112)
!4127 = !DILocation(line: 197, column: 14, scope: !4112)
!4128 = !DILocation(line: 198, column: 3, scope: !4112)
!4129 = !DILocation(line: 199, column: 7, scope: !4112)
!4130 = !DILocation(line: 199, column: 9, scope: !4112)
!4131 = !DILocation(line: 199, column: 8, scope: !4112)
!4132 = !DILocation(line: 199, column: 14, scope: !4112)
!4133 = !DILocation(line: 199, column: 11, scope: !4112)
!4134 = !DILocation(line: 199, column: 19, scope: !4112)
!4135 = !DILocation(line: 199, column: 21, scope: !4112)
!4136 = !DILocation(line: 199, column: 16, scope: !4112)
!4137 = !DILocation(line: 200, column: 14, scope: !4112)
!4138 = !DILocation(line: 201, column: 3, scope: !4112)
!4139 = !DILocation(line: 202, column: 7, scope: !4112)
!4140 = !DILocation(line: 202, column: 9, scope: !4112)
!4141 = !DILocation(line: 202, column: 8, scope: !4112)
!4142 = !DILocation(line: 202, column: 14, scope: !4112)
!4143 = !DILocation(line: 202, column: 11, scope: !4112)
!4144 = !DILocation(line: 202, column: 19, scope: !4112)
!4145 = !DILocation(line: 202, column: 21, scope: !4112)
!4146 = !DILocation(line: 202, column: 16, scope: !4112)
!4147 = !DILocation(line: 203, column: 14, scope: !4112)
!4148 = !DILocation(line: 204, column: 3, scope: !4112)
!4149 = !DILocation(line: 209, column: 5, scope: !4112)
!4150 = !DILocation(line: 210, column: 2, scope: !4112)
!4151 = !DILocation(line: 211, column: 5, scope: !4112)
!4152 = !DILocation(line: 211, column: 7, scope: !4112)
!4153 = !DILocation(line: 212, column: 8, scope: !4112)
!4154 = !DILocation(line: 212, column: 7, scope: !4112)
!4155 = !DILocation(line: 212, column: 10, scope: !4112)
!4156 = !DILocation(line: 213, column: 7, scope: !4112)
!4157 = !DILocation(line: 194, column: 19, scope: !4112)
!4158 = !DILocation(line: 244, column: 6, scope: !4112)
!4159 = !DILocation(line: 244, column: 14, scope: !4112)
!4160 = !DILocation(line: 244, column: 16, scope: !4112)
!4161 = !DILocation(line: 245, column: 12, scope: !4112)
!4162 = !DILocation(line: 245, column: 11, scope: !4112)
!4163 = !DILocation(line: 245, column: 3, scope: !4112)
!4164 = !DILocation(line: 246, column: 7, scope: !4112)
!4165 = !DILocation(line: 246, column: 8, scope: !4112)
!4166 = !DILocation(line: 246, column: 19, scope: !4112)
!4167 = !DILocation(line: 246, column: 21, scope: !4112)
!4168 = !DILocation(line: 246, column: 18, scope: !4112)
!4169 = !DILocation(line: 246, column: 6, scope: !4112)
!4170 = !DILocation(line: 247, column: 16, scope: !4112)
!4171 = !DILocation(line: 247, column: 15, scope: !4112)
!4172 = !DILocation(line: 247, column: 3, scope: !4112)
!4173 = !DILocation(line: 248, column: 3, scope: !4112)
!4174 = !DILocation(line: 244, column: 21, scope: !4112)
!4175 = !DILocation(line: 250, column: 14, scope: !4112)
!4176 = !DILocation(line: 250, column: 5, scope: !4112)
!4177 = !DILocation(line: 251, column: 5, scope: !4112)
!4178 = !DILocation(line: 253, column: 5, scope: !4112)
!4179 = !DILocation(line: 254, column: 5, scope: !4112)
!4180 = !DILocation(line: 255, column: 5, scope: !4112)
!4181 = !DILocation(line: 255, column: 7, scope: !4112)
!4182 = !DILocation(line: 256, column: 8, scope: !4112)
!4183 = !DILocation(line: 256, column: 7, scope: !4112)
!4184 = !DILocation(line: 256, column: 3, scope: !4112)
!4185 = !DILocation(line: 257, column: 6, scope: !4112)
!4186 = !DILocation(line: 260, column: 18, scope: !4112)
!4187 = !DILocation(line: 260, column: 19, scope: !4112)
!4188 = !DILocation(line: 260, column: 17, scope: !4112)
!4189 = !DILocation(line: 260, column: 25, scope: !4112)
!4190 = !DILocation(line: 260, column: 5, scope: !4112)
!4191 = !DILocation(line: 261, column: 18, scope: !4112)
!4192 = !DILocation(line: 261, column: 19, scope: !4112)
!4193 = !DILocation(line: 261, column: 17, scope: !4112)
!4194 = !DILocation(line: 261, column: 23, scope: !4112)
!4195 = !DILocation(line: 261, column: 27, scope: !4112)
!4196 = !DILocation(line: 261, column: 5, scope: !4112)
!4197 = !DILocation(line: 262, column: 18, scope: !4112)
!4198 = !DILocation(line: 262, column: 19, scope: !4112)
!4199 = !DILocation(line: 262, column: 17, scope: !4112)
!4200 = !DILocation(line: 262, column: 24, scope: !4112)
!4201 = !DILocation(line: 262, column: 5, scope: !4112)
!4202 = !DILocation(line: 263, column: 20, scope: !4112)
!4203 = !DILocation(line: 263, column: 9, scope: !4112)
!4204 = !DILocation(line: 264, column: 11, scope: !4112)
!4205 = !DILocation(line: 264, column: 10, scope: !4112)
!4206 = !DILocation(line: 266, column: 2, scope: !4112)
!4207 = !DILocation(line: 216, column: 6, scope: !4112)
!4208 = !DILocation(line: 216, column: 8, scope: !4112)
!4209 = !DILocation(line: 217, column: 9, scope: !4112)
!4210 = !DILocation(line: 217, column: 8, scope: !4112)
!4211 = !DILocation(line: 217, column: 4, scope: !4112)
!4212 = !DILocation(line: 218, column: 7, scope: !4112)
!4213 = !DILocation(line: 222, column: 7, scope: !4112)
!4214 = !DILocation(line: 222, column: 9, scope: !4112)
!4215 = !DILocation(line: 223, column: 4, scope: !4112)
!4216 = !DILocation(line: 224, column: 4, scope: !4112)
!4217 = !DILocation(line: 226, column: 7, scope: !4112)
!4218 = !DILocation(line: 226, column: 9, scope: !4112)
!4219 = !DILocation(line: 227, column: 4, scope: !4112)
!4220 = !DILocation(line: 228, column: 4, scope: !4112)
!4221 = !DILocation(line: 232, column: 3, scope: !4112)
!4222 = !DILocation(line: 233, column: 7, scope: !4112)
!4223 = !DILocation(line: 233, column: 15, scope: !4112)
!4224 = !DILocation(line: 233, column: 17, scope: !4112)
!4225 = !DILocation(line: 234, column: 4, scope: !4112)
!4226 = !DILocation(line: 233, column: 22, scope: !4112)
!4227 = !DILocation(line: 236, column: 8, scope: !4112)
!4228 = !DILocation(line: 236, column: 3, scope: !4112)
!4229 = !DILocation(line: 237, column: 6, scope: !4112)
!4230 = !DILocation(line: 237, column: 8, scope: !4112)
!4231 = !DILocation(line: 238, column: 4, scope: !4112)
!4232 = !DILocation(line: 239, column: 4, scope: !4112)
!4233 = distinct !DISubprogram(name: "runtime.printcomplex64", linkageName: "runtime.printcomplex64", scope: !458, file: !458, line: 268, type: !4234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4236)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!3733}
!4236 = !{!4237}
!4237 = !DILocalVariable(name: "c", arg: 1, scope: !4233, file: !458, line: 268, type: !3733)
!4238 = !DILocation(line: 268, column: 6, scope: !4233)
!4239 = !DILocation(line: 269, column: 9, scope: !4233)
!4240 = !DILocation(line: 270, column: 20, scope: !4233)
!4241 = !DILocation(line: 270, column: 19, scope: !4233)
!4242 = !DILocation(line: 270, column: 14, scope: !4233)
!4243 = !DILocation(line: 271, column: 20, scope: !4233)
!4244 = !DILocation(line: 271, column: 19, scope: !4233)
!4245 = !DILocation(line: 271, column: 14, scope: !4233)
!4246 = !DILocation(line: 272, column: 13, scope: !4233)
!4247 = !DILocation(line: 273, column: 2, scope: !4233)
!4248 = distinct !DISubprogram(name: "runtime.printcomplex128", linkageName: "runtime.printcomplex128", scope: !458, file: !458, line: 275, type: !4249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4251)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!3735}
!4251 = !{!4252}
!4252 = !DILocalVariable(name: "c", arg: 1, scope: !4248, file: !458, line: 275, type: !3735)
!4253 = !DILocation(line: 275, column: 6, scope: !4248)
!4254 = !DILocation(line: 276, column: 9, scope: !4248)
!4255 = !DILocation(line: 277, column: 20, scope: !4248)
!4256 = !DILocation(line: 277, column: 19, scope: !4248)
!4257 = !DILocation(line: 277, column: 14, scope: !4248)
!4258 = !DILocation(line: 278, column: 20, scope: !4248)
!4259 = !DILocation(line: 278, column: 19, scope: !4248)
!4260 = !DILocation(line: 278, column: 14, scope: !4248)
!4261 = !DILocation(line: 279, column: 13, scope: !4248)
!4262 = !DILocation(line: 280, column: 2, scope: !4248)
!4263 = distinct !DISubprogram(name: "runtime._panic", linkageName: "runtime._panic", scope: !428, file: !428, line: 54, type: !3712, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4264)
!4264 = !{!4265}
!4265 = !DILocalVariable(name: "message", arg: 1, scope: !4263, file: !428, line: 54, type: !778)
!4266 = !DILocation(line: 54, column: 6, scope: !4263)
!4267 = !DILocation(line: 55, column: 16, scope: !4263)
!4268 = !DILocation(line: 55, column: 15, scope: !4263)
!4269 = !DILocation(line: 56, column: 2, scope: !4263)
!4270 = distinct !DISubprogram(name: "runtime.stringEqual", linkageName: "runtime.stringEqual", scope: !4271, file: !4271, line: 24, type: !4272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4274)
!4271 = !DIFile(filename: "string.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!38, !38}
!4274 = !{!4275, !4276, !4277}
!4275 = !DILocalVariable(name: "x", arg: 1, scope: !4270, file: !4271, line: 24, type: !38)
!4276 = !DILocalVariable(name: "y", arg: 2, scope: !4270, file: !4271, line: 24, type: !38)
!4277 = !DILocalVariable(name: "i", scope: !4270, file: !4271, line: 28, type: !1936)
!4278 = !DILocation(line: 24, column: 6, scope: !4270)
!4279 = !DILocation(line: 25, column: 9, scope: !4270)
!4280 = !DILocation(line: 25, column: 8, scope: !4270)
!4281 = !DILocation(line: 25, column: 19, scope: !4270)
!4282 = !DILocation(line: 25, column: 18, scope: !4270)
!4283 = !DILocation(line: 25, column: 12, scope: !4270)
!4284 = !DILocation(line: 0, scope: !4270)
!4285 = !DILocation(line: 26, column: 3, scope: !4270)
!4286 = !DILocation(line: 28, column: 6, scope: !4270)
!4287 = !DILocation(line: 28, column: 14, scope: !4270)
!4288 = !DILocation(line: 28, column: 22, scope: !4270)
!4289 = !DILocation(line: 28, column: 21, scope: !4270)
!4290 = !DILocation(line: 28, column: 16, scope: !4270)
!4291 = !DILocation(line: 29, column: 8, scope: !4270)
!4292 = !DILocation(line: 29, column: 6, scope: !4270)
!4293 = !DILocation(line: 29, column: 7, scope: !4270)
!4294 = !DILocation(line: 29, column: 16, scope: !4270)
!4295 = !DILocation(line: 29, column: 14, scope: !4270)
!4296 = !DILocation(line: 29, column: 15, scope: !4270)
!4297 = !DILocation(line: 29, column: 11, scope: !4270)
!4298 = !DILocation(line: 30, column: 4, scope: !4270)
!4299 = !DILocation(line: 28, column: 26, scope: !4270)
!4300 = !DILocation(line: 33, column: 2, scope: !4270)
!4301 = distinct !DISubprogram(name: "runtime.slicePanic", linkageName: "runtime.slicePanic", scope: !428, file: !428, line: 198, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4302 = !DILocation(line: 199, column: 30, scope: !4301)
!4303 = !DILocation(line: 199, column: 16, scope: !4301)
!4304 = !DILocation(line: 200, column: 2, scope: !4301)
!4305 = distinct !DISubprogram(name: "runtime.fminimum", linkageName: "fminimum", scope: !1560, file: !1560, line: 60, type: !4306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4308)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!795, !795}
!4308 = !{!4309, !4310}
!4309 = !DILocalVariable(name: "x", arg: 1, scope: !4305, file: !1560, line: 60, type: !795)
!4310 = !DILocalVariable(name: "y", arg: 2, scope: !4305, file: !1560, line: 60, type: !795)
!4311 = !DILocation(line: 60, column: 6, scope: !4305)
!4312 = !DILocation(line: 61, column: 24, scope: !4305)
!4313 = !DILocation(line: 61, column: 27, scope: !4305)
!4314 = !DILocation(line: 61, column: 23, scope: !4305)
!4315 = !DILocation(line: 61, column: 2, scope: !4305)
!4316 = distinct !DISubprogram(name: "runtime.minimumFloat64", linkageName: "runtime.minimumFloat64", scope: !1560, file: !1560, line: 87, type: !4306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4317)
!4317 = !{!4318, !4319}
!4318 = !DILocalVariable(name: "x", arg: 1, scope: !4316, file: !1560, line: 87, type: !795)
!4319 = !DILocalVariable(name: "y", arg: 2, scope: !4316, file: !1560, line: 87, type: !795)
!4320 = !DILocation(line: 87, column: 6, scope: !4316)
!4321 = !DILocation(line: 88, column: 38, scope: !4316)
!4322 = !DILocation(line: 88, column: 41, scope: !4316)
!4323 = !DILocation(line: 88, column: 37, scope: !4316)
!4324 = !DILocation(line: 88, column: 2, scope: !4316)
!4325 = distinct !DISubprogram(name: "runtime.minimumFloat[float64 int64]", linkageName: "runtime.minimumFloat[float64 int64]", scope: !1560, file: !1560, line: 101, type: !4326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4328)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!795, !795, !1699, !1699}
!4328 = !{!4329, !4330, !4331, !4332, !4333, !4334}
!4329 = !DILocalVariable(name: "x", arg: 1, scope: !4325, file: !1560, line: 101, type: !795)
!4330 = !DILocalVariable(name: "y", arg: 2, scope: !4325, file: !1560, line: 101, type: !795)
!4331 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4325, file: !1560, line: 101, type: !1699)
!4332 = !DILocalVariable(name: "magMask", arg: 4, scope: !4325, file: !1560, line: 101, type: !1699)
!4333 = !DILocalVariable(name: "xBits", scope: !4325, file: !1560, line: 102, type: !778)
!4334 = !DILocalVariable(name: "yBits", scope: !4325, file: !1560, line: 103, type: !778)
!4335 = !DILocation(line: 101, column: 6, scope: !4325)
!4336 = !DILocation(line: 101, column: 40, scope: !4325)
!4337 = !DILocation(line: 101, column: 43, scope: !4325)
!4338 = !DILocation(line: 102, column: 11, scope: !4325)
!4339 = !DILocation(line: 102, column: 2, scope: !4325)
!4340 = !DILocation(line: 103, column: 11, scope: !4325)
!4341 = !DILocation(line: 103, column: 2, scope: !4325)
!4342 = !DILocation(line: 107, column: 7, scope: !4325)
!4343 = !DILocation(line: 107, column: 16, scope: !4325)
!4344 = !DILocation(line: 107, column: 13, scope: !4325)
!4345 = !DILocation(line: 0, scope: !4325)
!4346 = !DILocation(line: 108, column: 10, scope: !4325)
!4347 = !DILocation(line: 108, column: 3, scope: !4325)
!4348 = !DILocation(line: 109, column: 7, scope: !4325)
!4349 = !DILocation(line: 109, column: 16, scope: !4325)
!4350 = !DILocation(line: 109, column: 13, scope: !4325)
!4351 = !DILocation(line: 110, column: 10, scope: !4325)
!4352 = !DILocation(line: 110, column: 3, scope: !4325)
!4353 = !DILocation(line: 118, column: 5, scope: !4325)
!4354 = !DILocation(line: 118, column: 11, scope: !4325)
!4355 = !DILocation(line: 119, column: 12, scope: !4325)
!4356 = !DILocation(line: 119, column: 3, scope: !4325)
!4357 = !DILocation(line: 121, column: 5, scope: !4325)
!4358 = !DILocation(line: 121, column: 11, scope: !4325)
!4359 = !DILocation(line: 122, column: 12, scope: !4325)
!4360 = !DILocation(line: 122, column: 3, scope: !4325)
!4361 = !DILocation(line: 124, column: 5, scope: !4325)
!4362 = !DILocation(line: 124, column: 14, scope: !4325)
!4363 = !DILocation(line: 124, column: 11, scope: !4325)
!4364 = !DILocation(line: 125, column: 10, scope: !4325)
!4365 = !DILocation(line: 125, column: 3, scope: !4325)
!4366 = !DILocation(line: 127, column: 10, scope: !4325)
!4367 = !DILocation(line: 127, column: 3, scope: !4325)
!4368 = distinct !DISubprogram(name: "runtime.fminimumf", linkageName: "fminimumf", scope: !1560, file: !1560, line: 65, type: !4369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4371)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!3730, !3730}
!4371 = !{!4372, !4373}
!4372 = !DILocalVariable(name: "x", arg: 1, scope: !4368, file: !1560, line: 65, type: !3730)
!4373 = !DILocalVariable(name: "y", arg: 2, scope: !4368, file: !1560, line: 65, type: !3730)
!4374 = !DILocation(line: 65, column: 6, scope: !4368)
!4375 = !DILocation(line: 66, column: 24, scope: !4368)
!4376 = !DILocation(line: 66, column: 27, scope: !4368)
!4377 = !DILocation(line: 66, column: 23, scope: !4368)
!4378 = !DILocation(line: 66, column: 2, scope: !4368)
!4379 = distinct !DISubprogram(name: "runtime.minimumFloat32", linkageName: "runtime.minimumFloat32", scope: !1560, file: !1560, line: 83, type: !4369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4380)
!4380 = !{!4381, !4382}
!4381 = !DILocalVariable(name: "x", arg: 1, scope: !4379, file: !1560, line: 83, type: !3730)
!4382 = !DILocalVariable(name: "y", arg: 2, scope: !4379, file: !1560, line: 83, type: !3730)
!4383 = !DILocation(line: 83, column: 6, scope: !4379)
!4384 = !DILocation(line: 84, column: 38, scope: !4379)
!4385 = !DILocation(line: 84, column: 41, scope: !4379)
!4386 = !DILocation(line: 84, column: 37, scope: !4379)
!4387 = !DILocation(line: 84, column: 2, scope: !4379)
!4388 = distinct !DISubprogram(name: "runtime.minimumFloat[float32 int32]", linkageName: "runtime.minimumFloat[float32 int32]", scope: !1560, file: !1560, line: 101, type: !4389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4391)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!3730, !3730, !381, !381}
!4391 = !{!4392, !4393, !4394, !4395, !4396, !4397}
!4392 = !DILocalVariable(name: "x", arg: 1, scope: !4388, file: !1560, line: 101, type: !3730)
!4393 = !DILocalVariable(name: "y", arg: 2, scope: !4388, file: !1560, line: 101, type: !3730)
!4394 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4388, file: !1560, line: 101, type: !381)
!4395 = !DILocalVariable(name: "magMask", arg: 4, scope: !4388, file: !1560, line: 101, type: !381)
!4396 = !DILocalVariable(name: "xBits", scope: !4388, file: !1560, line: 102, type: !778)
!4397 = !DILocalVariable(name: "yBits", scope: !4388, file: !1560, line: 103, type: !778)
!4398 = !DILocation(line: 101, column: 6, scope: !4388)
!4399 = !DILocation(line: 101, column: 40, scope: !4388)
!4400 = !DILocation(line: 101, column: 43, scope: !4388)
!4401 = !DILocation(line: 102, column: 11, scope: !4388)
!4402 = !DILocation(line: 102, column: 2, scope: !4388)
!4403 = !DILocation(line: 103, column: 11, scope: !4388)
!4404 = !DILocation(line: 103, column: 2, scope: !4388)
!4405 = !DILocation(line: 107, column: 7, scope: !4388)
!4406 = !DILocation(line: 107, column: 16, scope: !4388)
!4407 = !DILocation(line: 107, column: 13, scope: !4388)
!4408 = !DILocation(line: 0, scope: !4388)
!4409 = !DILocation(line: 108, column: 10, scope: !4388)
!4410 = !DILocation(line: 108, column: 3, scope: !4388)
!4411 = !DILocation(line: 109, column: 7, scope: !4388)
!4412 = !DILocation(line: 109, column: 16, scope: !4388)
!4413 = !DILocation(line: 109, column: 13, scope: !4388)
!4414 = !DILocation(line: 110, column: 10, scope: !4388)
!4415 = !DILocation(line: 110, column: 3, scope: !4388)
!4416 = !DILocation(line: 118, column: 5, scope: !4388)
!4417 = !DILocation(line: 118, column: 11, scope: !4388)
!4418 = !DILocation(line: 119, column: 12, scope: !4388)
!4419 = !DILocation(line: 119, column: 3, scope: !4388)
!4420 = !DILocation(line: 121, column: 5, scope: !4388)
!4421 = !DILocation(line: 121, column: 11, scope: !4388)
!4422 = !DILocation(line: 122, column: 12, scope: !4388)
!4423 = !DILocation(line: 122, column: 3, scope: !4388)
!4424 = !DILocation(line: 124, column: 5, scope: !4388)
!4425 = !DILocation(line: 124, column: 14, scope: !4388)
!4426 = !DILocation(line: 124, column: 11, scope: !4388)
!4427 = !DILocation(line: 125, column: 10, scope: !4388)
!4428 = !DILocation(line: 125, column: 3, scope: !4388)
!4429 = !DILocation(line: 127, column: 10, scope: !4388)
!4430 = !DILocation(line: 127, column: 3, scope: !4388)
!4431 = distinct !DISubprogram(name: "runtime.fmaximum", linkageName: "fmaximum", scope: !1560, file: !1560, line: 70, type: !4306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4432)
!4432 = !{!4433, !4434}
!4433 = !DILocalVariable(name: "x", arg: 1, scope: !4431, file: !1560, line: 70, type: !795)
!4434 = !DILocalVariable(name: "y", arg: 2, scope: !4431, file: !1560, line: 70, type: !795)
!4435 = !DILocation(line: 70, column: 6, scope: !4431)
!4436 = !DILocation(line: 71, column: 24, scope: !4431)
!4437 = !DILocation(line: 71, column: 27, scope: !4431)
!4438 = !DILocation(line: 71, column: 23, scope: !4431)
!4439 = !DILocation(line: 71, column: 2, scope: !4431)
!4440 = distinct !DISubprogram(name: "runtime.maximumFloat64", linkageName: "runtime.maximumFloat64", scope: !1560, file: !1560, line: 95, type: !4306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4441)
!4441 = !{!4442, !4443}
!4442 = !DILocalVariable(name: "x", arg: 1, scope: !4440, file: !1560, line: 95, type: !795)
!4443 = !DILocalVariable(name: "y", arg: 2, scope: !4440, file: !1560, line: 95, type: !795)
!4444 = !DILocation(line: 95, column: 6, scope: !4440)
!4445 = !DILocation(line: 96, column: 38, scope: !4440)
!4446 = !DILocation(line: 96, column: 41, scope: !4440)
!4447 = !DILocation(line: 96, column: 37, scope: !4440)
!4448 = !DILocation(line: 96, column: 2, scope: !4440)
!4449 = distinct !DISubprogram(name: "runtime.maximumFloat[float64 int64]", linkageName: "runtime.maximumFloat[float64 int64]", scope: !1560, file: !1560, line: 133, type: !4326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4450)
!4450 = !{!4451, !4452, !4453, !4454, !4455, !4456, !4457}
!4451 = !DILocalVariable(name: "x", arg: 1, scope: !4449, file: !1560, line: 133, type: !795)
!4452 = !DILocalVariable(name: "y", arg: 2, scope: !4449, file: !1560, line: 133, type: !795)
!4453 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4449, file: !1560, line: 133, type: !1699)
!4454 = !DILocalVariable(name: "magMask", arg: 4, scope: !4449, file: !1560, line: 133, type: !1699)
!4455 = !DILocalVariable(name: "xBits", scope: !4449, file: !1560, line: 134, type: !778)
!4456 = !DILocalVariable(name: "yBits", scope: !4449, file: !1560, line: 135, type: !778)
!4457 = !DILocalVariable(name: "maxNegNaN", scope: !4449, file: !1560, line: 149, type: !778)
!4458 = !DILocation(line: 133, column: 6, scope: !4449)
!4459 = !DILocation(line: 133, column: 40, scope: !4449)
!4460 = !DILocation(line: 133, column: 43, scope: !4449)
!4461 = !DILocation(line: 134, column: 11, scope: !4449)
!4462 = !DILocation(line: 134, column: 2, scope: !4449)
!4463 = !DILocation(line: 135, column: 11, scope: !4449)
!4464 = !DILocation(line: 135, column: 2, scope: !4449)
!4465 = !DILocation(line: 142, column: 5, scope: !4449)
!4466 = !DILocation(line: 142, column: 11, scope: !4449)
!4467 = !DILocation(line: 0, scope: !4449)
!4468 = !DILocation(line: 143, column: 12, scope: !4449)
!4469 = !DILocation(line: 143, column: 3, scope: !4449)
!4470 = !DILocation(line: 145, column: 5, scope: !4449)
!4471 = !DILocation(line: 145, column: 11, scope: !4449)
!4472 = !DILocation(line: 146, column: 12, scope: !4449)
!4473 = !DILocation(line: 146, column: 3, scope: !4449)
!4474 = !DILocation(line: 149, column: 16, scope: !4449)
!4475 = !DILocation(line: 149, column: 15, scope: !4449)
!4476 = !DILocation(line: 149, column: 2, scope: !4449)
!4477 = !DILocation(line: 151, column: 7, scope: !4449)
!4478 = !DILocation(line: 151, column: 16, scope: !4449)
!4479 = !DILocation(line: 151, column: 13, scope: !4449)
!4480 = !DILocation(line: 152, column: 10, scope: !4449)
!4481 = !DILocation(line: 152, column: 3, scope: !4449)
!4482 = !DILocation(line: 153, column: 7, scope: !4449)
!4483 = !DILocation(line: 153, column: 16, scope: !4449)
!4484 = !DILocation(line: 153, column: 13, scope: !4449)
!4485 = !DILocation(line: 154, column: 10, scope: !4449)
!4486 = !DILocation(line: 154, column: 3, scope: !4449)
!4487 = !DILocation(line: 156, column: 5, scope: !4449)
!4488 = !DILocation(line: 156, column: 14, scope: !4449)
!4489 = !DILocation(line: 156, column: 11, scope: !4449)
!4490 = !DILocation(line: 157, column: 10, scope: !4449)
!4491 = !DILocation(line: 157, column: 3, scope: !4449)
!4492 = !DILocation(line: 159, column: 10, scope: !4449)
!4493 = !DILocation(line: 159, column: 3, scope: !4449)
!4494 = distinct !DISubprogram(name: "runtime.fmaximumf", linkageName: "fmaximumf", scope: !1560, file: !1560, line: 75, type: !4369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4495)
!4495 = !{!4496, !4497}
!4496 = !DILocalVariable(name: "x", arg: 1, scope: !4494, file: !1560, line: 75, type: !3730)
!4497 = !DILocalVariable(name: "y", arg: 2, scope: !4494, file: !1560, line: 75, type: !3730)
!4498 = !DILocation(line: 75, column: 6, scope: !4494)
!4499 = !DILocation(line: 76, column: 24, scope: !4494)
!4500 = !DILocation(line: 76, column: 27, scope: !4494)
!4501 = !DILocation(line: 76, column: 23, scope: !4494)
!4502 = !DILocation(line: 76, column: 2, scope: !4494)
!4503 = distinct !DISubprogram(name: "runtime.maximumFloat32", linkageName: "runtime.maximumFloat32", scope: !1560, file: !1560, line: 91, type: !4369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4504)
!4504 = !{!4505, !4506}
!4505 = !DILocalVariable(name: "x", arg: 1, scope: !4503, file: !1560, line: 91, type: !3730)
!4506 = !DILocalVariable(name: "y", arg: 2, scope: !4503, file: !1560, line: 91, type: !3730)
!4507 = !DILocation(line: 91, column: 6, scope: !4503)
!4508 = !DILocation(line: 92, column: 38, scope: !4503)
!4509 = !DILocation(line: 92, column: 41, scope: !4503)
!4510 = !DILocation(line: 92, column: 37, scope: !4503)
!4511 = !DILocation(line: 92, column: 2, scope: !4503)
!4512 = distinct !DISubprogram(name: "runtime.maximumFloat[float32 int32]", linkageName: "runtime.maximumFloat[float32 int32]", scope: !1560, file: !1560, line: 133, type: !4389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4513)
!4513 = !{!4514, !4515, !4516, !4517, !4518, !4519, !4520}
!4514 = !DILocalVariable(name: "x", arg: 1, scope: !4512, file: !1560, line: 133, type: !3730)
!4515 = !DILocalVariable(name: "y", arg: 2, scope: !4512, file: !1560, line: 133, type: !3730)
!4516 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4512, file: !1560, line: 133, type: !381)
!4517 = !DILocalVariable(name: "magMask", arg: 4, scope: !4512, file: !1560, line: 133, type: !381)
!4518 = !DILocalVariable(name: "xBits", scope: !4512, file: !1560, line: 134, type: !778)
!4519 = !DILocalVariable(name: "yBits", scope: !4512, file: !1560, line: 135, type: !778)
!4520 = !DILocalVariable(name: "maxNegNaN", scope: !4512, file: !1560, line: 149, type: !778)
!4521 = !DILocation(line: 133, column: 6, scope: !4512)
!4522 = !DILocation(line: 133, column: 40, scope: !4512)
!4523 = !DILocation(line: 133, column: 43, scope: !4512)
!4524 = !DILocation(line: 134, column: 11, scope: !4512)
!4525 = !DILocation(line: 134, column: 2, scope: !4512)
!4526 = !DILocation(line: 135, column: 11, scope: !4512)
!4527 = !DILocation(line: 135, column: 2, scope: !4512)
!4528 = !DILocation(line: 142, column: 5, scope: !4512)
!4529 = !DILocation(line: 142, column: 11, scope: !4512)
!4530 = !DILocation(line: 0, scope: !4512)
!4531 = !DILocation(line: 143, column: 12, scope: !4512)
!4532 = !DILocation(line: 143, column: 3, scope: !4512)
!4533 = !DILocation(line: 145, column: 5, scope: !4512)
!4534 = !DILocation(line: 145, column: 11, scope: !4512)
!4535 = !DILocation(line: 146, column: 12, scope: !4512)
!4536 = !DILocation(line: 146, column: 3, scope: !4512)
!4537 = !DILocation(line: 149, column: 16, scope: !4512)
!4538 = !DILocation(line: 149, column: 15, scope: !4512)
!4539 = !DILocation(line: 149, column: 2, scope: !4512)
!4540 = !DILocation(line: 151, column: 7, scope: !4512)
!4541 = !DILocation(line: 151, column: 16, scope: !4512)
!4542 = !DILocation(line: 151, column: 13, scope: !4512)
!4543 = !DILocation(line: 152, column: 10, scope: !4512)
!4544 = !DILocation(line: 152, column: 3, scope: !4512)
!4545 = !DILocation(line: 153, column: 7, scope: !4512)
!4546 = !DILocation(line: 153, column: 16, scope: !4512)
!4547 = !DILocation(line: 153, column: 13, scope: !4512)
!4548 = !DILocation(line: 154, column: 10, scope: !4512)
!4549 = !DILocation(line: 154, column: 3, scope: !4512)
!4550 = !DILocation(line: 156, column: 5, scope: !4512)
!4551 = !DILocation(line: 156, column: 14, scope: !4512)
!4552 = !DILocation(line: 156, column: 11, scope: !4512)
!4553 = !DILocation(line: 157, column: 10, scope: !4512)
!4554 = !DILocation(line: 157, column: 3, scope: !4512)
!4555 = !DILocation(line: 159, column: 10, scope: !4512)
!4556 = !DILocation(line: 159, column: 3, scope: !4512)
!4557 = distinct !DISubprogram(name: "runtime.initHeap", linkageName: "runtime.initHeap", scope: !421, file: !421, line: 34, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4558 = !DILocation(line: 35, column: 12, scope: !4557)
!4559 = !DILocation(line: 39, column: 8, scope: !4557)
!4560 = !DILocation(line: 40, column: 2, scope: !4557)
!4561 = distinct !DISubprogram(name: "runtime.gcCallback", linkageName: "tinygo_runtime_bdwgc_callback", scope: !421, file: !421, line: 46, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4562 = !DILocation(line: 48, column: 17, scope: !4561)
!4563 = !DILocation(line: 49, column: 2, scope: !4561)
!4564 = distinct !DISubprogram(name: "runtime.gcMarkReachable", linkageName: "runtime.gcMarkReachable", scope: !3513, file: !3513, line: 7, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4565 = !DILocation(line: 8, column: 25, scope: !4564)
!4566 = !DILocation(line: 9, column: 2, scope: !4564)
!4567 = distinct !DISubprogram(name: "runtime.markRoots", linkageName: "runtime.markRoots", scope: !421, file: !421, line: 51, type: !4568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4570)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!43, !43}
!4570 = !{!4571, !4572}
!4571 = !DILocalVariable(name: "start", arg: 1, scope: !4567, file: !421, line: 51, type: !43)
!4572 = !DILocalVariable(name: "end", arg: 2, scope: !4567, file: !421, line: 51, type: !43)
!4573 = !DILocation(line: 51, column: 6, scope: !4567)
!4574 = !DILocation(line: 52, column: 17, scope: !4567)
!4575 = !DILocation(line: 52, column: 24, scope: !4567)
!4576 = !DILocation(line: 52, column: 16, scope: !4567)
!4577 = !DILocation(line: 53, column: 2, scope: !4567)
!4578 = distinct !DISubprogram(name: "runtime.free", linkageName: "runtime.free", scope: !421, file: !421, line: 99, type: !2759, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4579)
!4579 = !{!4580}
!4580 = !DILocalVariable(name: "ptr", arg: 1, scope: !4578, file: !421, line: 99, type: !84)
!4581 = !DILocation(line: 99, column: 6, scope: !4578)
!4582 = !DILocation(line: 100, column: 13, scope: !4578)
!4583 = !DILocation(line: 100, column: 12, scope: !4578)
!4584 = !DILocation(line: 101, column: 2, scope: !4578)
!4585 = distinct !DISubprogram(name: "runtime.gcScanGlobals", linkageName: "internal/task.gcScanGlobals", scope: !3513, file: !3513, line: 15, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4586 = !DILocation(line: 16, column: 13, scope: !4585)
!4587 = !DILocation(line: 17, column: 2, scope: !4585)
!4588 = distinct !DISubprogram(name: "runtime.findGlobals", linkageName: "runtime.findGlobals", scope: !3626, file: !3626, line: 95, type: !4589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4591)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!655}
!4591 = !{!4592, !4593, !4594, !4595, !4608, !4609, !4610, !4617, !4618}
!4592 = !DILocalVariable(name: "found", arg: 1, scope: !4588, file: !3626, line: 95, type: !655)
!4593 = !DILocalVariable(name: "headerPtr", scope: !4588, file: !3626, line: 103, type: !84)
!4594 = !DILocalVariable(name: "i", scope: !4588, file: !3626, line: 104, type: !1936)
!4595 = !DILocalVariable(name: "header", scope: !4588, file: !3626, line: 111, type: !4596)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64, align: 64, dwarfAddressSpace: 0)
!4597 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader64", baseType: !4598)
!4598 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !4599)
!4599 = !{!4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_type", baseType: !98, size: 32, align: 32)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !98, size: 32, align: 32, offset: 32)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "offset", baseType: !43, size: 64, align: 64, offset: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", baseType: !43, size: 64, align: 64, offset: 128)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", baseType: !43, size: 64, align: 64, offset: 192)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "filesz", baseType: !43, size: 64, align: 64, offset: 256)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", baseType: !43, size: 64, align: 64, offset: 320)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !43, size: 64, align: 64, offset: 384)
!4608 = !DILocalVariable(name: "start", scope: !4588, file: !3626, line: 113, type: !43)
!4609 = !DILocalVariable(name: "end", scope: !4588, file: !3626, line: 114, type: !43)
!4610 = !DILocalVariable(name: "header", scope: !4588, file: !3626, line: 118, type: !4611)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64, align: 64, dwarfAddressSpace: 0)
!4612 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader32", baseType: !4613)
!4613 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !4614)
!4614 = !{!4600, !4602, !4603, !4604, !4605, !4606, !4615, !4616}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !98, size: 32, align: 32, offset: 384)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !43, size: 64, align: 64, offset: 448)
!4617 = !DILocalVariable(name: "start", scope: !4588, file: !3626, line: 120, type: !43)
!4618 = !DILocalVariable(name: "end", scope: !4588, file: !3626, line: 121, type: !43)
!4619 = !DILocation(line: 95, column: 6, scope: !4588)
!4620 = !DILocation(line: 103, column: 80, scope: !4588)
!4621 = !DILocation(line: 103, column: 67, scope: !4588)
!4622 = !DILocation(line: 103, column: 29, scope: !4588)
!4623 = !DILocation(line: 103, column: 2, scope: !4588)
!4624 = !DILocation(line: 104, column: 6, scope: !4588)
!4625 = !DILocation(line: 0, scope: !4588)
!4626 = !DILocation(line: 104, column: 14, scope: !4588)
!4627 = !DILocation(line: 104, column: 33, scope: !4588)
!4628 = !DILocation(line: 104, column: 21, scope: !4588)
!4629 = !DILocation(line: 104, column: 16, scope: !4588)
!4630 = !DILocation(line: 111, column: 36, scope: !4588)
!4631 = !DILocation(line: 111, column: 4, scope: !4588)
!4632 = !DILocation(line: 112, column: 7, scope: !4588)
!4633 = !DILocation(line: 112, column: 14, scope: !4588)
!4634 = !DILocation(line: 112, column: 20, scope: !4588)
!4635 = !DILocation(line: 112, column: 34, scope: !4588)
!4636 = !DILocation(line: 112, column: 41, scope: !4588)
!4637 = !DILocation(line: 112, column: 46, scope: !4588)
!4638 = !DILocation(line: 112, column: 52, scope: !4588)
!4639 = !DILocation(line: 113, column: 14, scope: !4588)
!4640 = !DILocation(line: 113, column: 21, scope: !4588)
!4641 = !DILocation(line: 113, column: 5, scope: !4588)
!4642 = !DILocation(line: 114, column: 12, scope: !4588)
!4643 = !DILocation(line: 114, column: 20, scope: !4588)
!4644 = !DILocation(line: 114, column: 27, scope: !4588)
!4645 = !DILocation(line: 114, column: 18, scope: !4588)
!4646 = !DILocation(line: 114, column: 5, scope: !4588)
!4647 = !DILocation(line: 115, column: 5, scope: !4588)
!4648 = !DILocation(line: 115, column: 11, scope: !4588)
!4649 = !DILocation(line: 115, column: 18, scope: !4588)
!4650 = !DILocation(line: 115, column: 10, scope: !4588)
!4651 = !DILocation(line: 125, column: 26, scope: !4588)
!4652 = !DILocation(line: 125, column: 48, scope: !4588)
!4653 = !DILocation(line: 125, column: 25, scope: !4588)
!4654 = !DILocation(line: 125, column: 3, scope: !4588)
!4655 = !DILocation(line: 104, column: 41, scope: !4588)
!4656 = !DILocation(line: 118, column: 36, scope: !4588)
!4657 = !DILocation(line: 118, column: 4, scope: !4588)
!4658 = !DILocation(line: 119, column: 7, scope: !4588)
!4659 = !DILocation(line: 119, column: 14, scope: !4588)
!4660 = !DILocation(line: 119, column: 20, scope: !4588)
!4661 = !DILocation(line: 119, column: 34, scope: !4588)
!4662 = !DILocation(line: 119, column: 41, scope: !4588)
!4663 = !DILocation(line: 119, column: 46, scope: !4588)
!4664 = !DILocation(line: 119, column: 52, scope: !4588)
!4665 = !DILocation(line: 120, column: 14, scope: !4588)
!4666 = !DILocation(line: 120, column: 21, scope: !4588)
!4667 = !DILocation(line: 120, column: 5, scope: !4588)
!4668 = !DILocation(line: 121, column: 12, scope: !4588)
!4669 = !DILocation(line: 121, column: 20, scope: !4588)
!4670 = !DILocation(line: 121, column: 27, scope: !4588)
!4671 = !DILocation(line: 121, column: 18, scope: !4588)
!4672 = !DILocation(line: 121, column: 5, scope: !4588)
!4673 = !DILocation(line: 122, column: 5, scope: !4588)
!4674 = !DILocation(line: 122, column: 11, scope: !4588)
!4675 = !DILocation(line: 122, column: 18, scope: !4588)
!4676 = !DILocation(line: 122, column: 10, scope: !4588)
!4677 = !DILocation(line: 127, column: 2, scope: !4588)
!4678 = distinct !DISubprogram(name: "runtime.scanstack", linkageName: "tinygo_scanstack", scope: !3513, file: !3513, line: 23, type: !3253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4679)
!4679 = !{!4680}
!4680 = !DILocalVariable(name: "sp", arg: 1, scope: !4678, file: !3513, line: 23, type: !43)
!4681 = !DILocation(line: 23, column: 6, scope: !4678)
!4682 = !DILocation(line: 24, column: 12, scope: !4678)
!4683 = !DILocation(line: 24, column: 29, scope: !4678)
!4684 = !DILocation(line: 24, column: 11, scope: !4678)
!4685 = !DILocation(line: 25, column: 2, scope: !4678)
!4686 = distinct !DISubprogram(name: "runtime.unsafeSlicePanic", linkageName: "runtime.unsafeSlicePanic", scope: !428, file: !428, line: 211, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4687 = !DILocation(line: 212, column: 30, scope: !4686)
!4688 = !DILocation(line: 212, column: 16, scope: !4686)
!4689 = !DILocation(line: 213, column: 2, scope: !4686)
!4690 = distinct !DISubprogram(name: "runtime.negativeShiftPanic", linkageName: "runtime.negativeShiftPanic", scope: !428, file: !428, line: 221, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4691 = !DILocation(line: 222, column: 30, scope: !4690)
!4692 = !DILocation(line: 222, column: 16, scope: !4690)
!4693 = !DILocation(line: 223, column: 2, scope: !4690)
!4694 = distinct !DISubprogram(name: "runtime.printspace", linkageName: "runtime.printspace", scope: !458, file: !458, line: 282, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4695 = !DILocation(line: 283, column: 9, scope: !4694)
!4696 = !DILocation(line: 284, column: 2, scope: !4694)
!4697 = distinct !DISubprogram(name: "runtime.memmove", linkageName: "runtime.memmove", scope: !1584, file: !1584, line: 48, type: !3647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4698)
!4698 = !{!4699, !4700, !4701}
!4699 = !DILocalVariable(name: "dst", arg: 1, scope: !4697, file: !1584, line: 48, type: !84)
!4700 = !DILocalVariable(name: "src", arg: 2, scope: !4697, file: !1584, line: 48, type: !84)
!4701 = !DILocalVariable(name: "size", arg: 3, scope: !4697, file: !1584, line: 48, type: !43)
!4702 = !DILocation(line: 48, column: 6, scope: !4697)
!4703 = distinct !DISubprogram(name: "runtime.main", linkageName: "main", scope: !414, file: !414, line: 80, type: !4704, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4706)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!381, !485}
!4706 = !{!4707, !4708, !4709, !4710, !4711}
!4707 = !DILocalVariable(name: "argc", arg: 1, scope: !4703, file: !414, line: 80, type: !381)
!4708 = !DILocalVariable(name: "argv", arg: 2, scope: !4703, file: !414, line: 80, type: !485)
!4709 = !DILocalVariable(name: "main_argc", scope: !4703, file: !414, line: 105, type: !381)
!4710 = !DILocalVariable(name: "main_argv", scope: !4703, file: !414, line: 106, type: !485)
!4711 = !DILocalVariable(name: "stackTop", scope: !4703, file: !414, line: 75, type: !43)
!4712 = !DILocation(line: 80, column: 6, scope: !4703)
!4713 = !DILocation(line: 0, scope: !4703)
!4714 = !DILocation(line: 83, column: 15, scope: !4703)
!4715 = !DILocation(line: 87, column: 14, scope: !4703)
!4716 = !DILocation(line: 87, column: 2, scope: !4703)
!4717 = !DILocation(line: 88, column: 14, scope: !4703)
!4718 = !DILocation(line: 88, column: 2, scope: !4703)
!4719 = !DILocation(line: 92, column: 31, scope: !4703)
!4720 = !DILocation(line: 97, column: 35, scope: !4703)
!4721 = !DILocation(line: 97, column: 2, scope: !4703)
!4722 = !DILocation(line: 98, column: 9, scope: !4703)
!4723 = !DILocation(line: 101, column: 2, scope: !4703)
!4724 = distinct !DISubprogram(name: "runtime.allocateHeap", linkageName: "runtime.allocateHeap", scope: !414, file: !414, line: 303, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4725)
!4725 = !{!4726, !4727, !4728, !4729, !4730}
!4726 = !DILocalVariable(name: "heapMaxSize", scope: !4724, file: !414, line: 299, type: !43)
!4727 = !DILocalVariable(name: "addr", scope: !4724, file: !414, line: 309, type: !84)
!4728 = !DILocalVariable(name: "heapStart", scope: !4724, file: !414, line: 301, type: !43)
!4729 = !DILocalVariable(name: "heapSize", scope: !4724, file: !414, line: 298, type: !43)
!4730 = !DILocalVariable(name: "heapEnd", scope: !4724, file: !414, line: 301, type: !43)
!4731 = !DILocation(line: 307, column: 2, scope: !4724)
!4732 = !DILocation(line: 0, scope: !4724)
!4733 = !DILocation(line: 309, column: 21, scope: !4724)
!4734 = !DILocation(line: 309, column: 15, scope: !4724)
!4735 = !DILocation(line: 309, column: 3, scope: !4724)
!4736 = !DILocation(line: 310, column: 6, scope: !4724)
!4737 = !DILocation(line: 310, column: 11, scope: !4724)
!4738 = !DILocation(line: 315, column: 4, scope: !4724)
!4739 = !DILocation(line: 316, column: 7, scope: !4724)
!4740 = !DILocation(line: 316, column: 19, scope: !4724)
!4741 = !DILocation(line: 317, column: 17, scope: !4724)
!4742 = !DILocation(line: 321, column: 23, scope: !4724)
!4743 = !DILocation(line: 321, column: 22, scope: !4724)
!4744 = !DILocation(line: 321, column: 3, scope: !4724)
!4745 = !DILocation(line: 322, column: 13, scope: !4724)
!4746 = !DILocation(line: 322, column: 25, scope: !4724)
!4747 = !DILocation(line: 322, column: 23, scope: !4724)
!4748 = !DILocation(line: 322, column: 3, scope: !4724)
!4749 = !DILocation(line: 325, column: 2, scope: !4724)
!4750 = distinct !DISubprogram(name: "runtime.runMain", linkageName: "runtime.runMain", scope: !414, file: !414, line: 135, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4751 = !DILocation(line: 136, column: 5, scope: !4750)
!4752 = !DILocation(line: 137, column: 2, scope: !4750)
!4753 = distinct !DISubprogram(name: "runtime.run", linkageName: "runtime.run", scope: !515, file: !515, line: 23, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4754)
!4754 = !{!4755}
!4755 = !DILocalVariable(name: "stackTop", scope: !4753, file: !414, line: 75, type: !43)
!4756 = !DILocation(line: 24, column: 10, scope: !4753)
!4757 = !DILocation(line: 25, column: 10, scope: !4753)
!4758 = !DILocation(line: 26, column: 12, scope: !4753)
!4759 = !DILocation(line: 26, column: 11, scope: !4753)
!4760 = !DILocation(line: 27, column: 9, scope: !4753)
!4761 = !DILocation(line: 28, column: 10, scope: !4753)
!4762 = !DILocation(line: 29, column: 2, scope: !4753)
!4763 = distinct !DISubprogram(name: "runtime.tinygo_handle_fatal_signal", linkageName: "tinygo_handle_fatal_signal", scope: !414, file: !414, line: 148, type: !4764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4766)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{!381, !43}
!4766 = !{!4767, !4768}
!4767 = !DILocalVariable(name: "sig", arg: 1, scope: !4763, file: !414, line: 148, type: !381)
!4768 = !DILocalVariable(name: "addr", arg: 2, scope: !4763, file: !414, line: 148, type: !43)
!4769 = !DILocation(line: 148, column: 6, scope: !4763)
!4770 = !DILocation(line: 0, scope: !4763)
!4771 = !DILocation(line: 150, column: 7, scope: !4763)
!4772 = !DILocation(line: 154, column: 5, scope: !4763)
!4773 = !DILocation(line: 154, column: 10, scope: !4763)
!4774 = !DILocation(line: 155, column: 14, scope: !4763)
!4775 = !DILocation(line: 156, column: 12, scope: !4763)
!4776 = !DILocation(line: 156, column: 11, scope: !4763)
!4777 = !DILocation(line: 160, column: 13, scope: !4763)
!4778 = !DILocation(line: 161, column: 9, scope: !4763)
!4779 = !DILocation(line: 162, column: 7, scope: !4763)
!4780 = !DILocation(line: 163, column: 10, scope: !4763)
!4781 = !DILocation(line: 180, column: 8, scope: !4763)
!4782 = !DILocation(line: 180, column: 7, scope: !4763)
!4783 = !DILocation(line: 181, column: 2, scope: !4763)
!4784 = !DILocation(line: 164, column: 7, scope: !4763)
!4785 = !DILocation(line: 165, column: 10, scope: !4763)
!4786 = !DILocation(line: 166, column: 7, scope: !4763)
!4787 = !DILocation(line: 167, column: 10, scope: !4763)
!4788 = !DILocation(line: 169, column: 11, scope: !4763)
!4789 = !DILocation(line: 169, column: 10, scope: !4763)
!4790 = !DILocation(line: 158, column: 14, scope: !4763)
!4791 = distinct !DISubprogram(name: "runtime.printlock", linkageName: "runtime.printlock", scope: !515, file: !515, line: 138, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4792 = !DILocation(line: 139, column: 16, scope: !4791)
!4793 = !DILocation(line: 140, column: 2, scope: !4791)
!4794 = distinct !DISubprogram(name: "runtime.printunlock", linkageName: "runtime.printunlock", scope: !515, file: !515, line: 142, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4795 = !DILocation(line: 143, column: 18, scope: !4794)
!4796 = !DILocation(line: 144, column: 2, scope: !4794)
!4797 = distinct !DISubprogram(name: "runtime.sliceAppend", linkageName: "runtime.sliceAppend", scope: !4798, file: !4798, line: 12, type: !4799, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4801)
!4798 = !DIFile(filename: "slice.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!84, !84, !43, !43, !43, !43, !84}
!4801 = !{!4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809}
!4802 = !DILocalVariable(name: "srcBuf", arg: 1, scope: !4797, file: !4798, line: 12, type: !84)
!4803 = !DILocalVariable(name: "elemsBuf", arg: 2, scope: !4797, file: !4798, line: 12, type: !84)
!4804 = !DILocalVariable(name: "srcLen", arg: 3, scope: !4797, file: !4798, line: 12, type: !43)
!4805 = !DILocalVariable(name: "srcCap", arg: 4, scope: !4797, file: !4798, line: 12, type: !43)
!4806 = !DILocalVariable(name: "elemsLen", arg: 5, scope: !4797, file: !4798, line: 12, type: !43)
!4807 = !DILocalVariable(name: "elemSize", arg: 6, scope: !4797, file: !4798, line: 12, type: !43)
!4808 = !DILocalVariable(name: "layout", arg: 7, scope: !4797, file: !4798, line: 12, type: !84)
!4809 = !DILocalVariable(name: "newLen", scope: !4797, file: !4798, line: 13, type: !43)
!4810 = !DILocation(line: 12, column: 6, scope: !4797)
!4811 = !DILocation(line: 13, column: 12, scope: !4797)
!4812 = !DILocation(line: 13, column: 21, scope: !4797)
!4813 = !DILocation(line: 13, column: 19, scope: !4797)
!4814 = !DILocation(line: 13, column: 2, scope: !4797)
!4815 = !DILocation(line: 14, column: 5, scope: !4797)
!4816 = !DILocation(line: 14, column: 14, scope: !4797)
!4817 = !DILocation(line: 0, scope: !4797)
!4818 = !DILocation(line: 17, column: 33, scope: !4797)
!4819 = !DILocation(line: 17, column: 41, scope: !4797)
!4820 = !DILocation(line: 17, column: 49, scope: !4797)
!4821 = !DILocation(line: 17, column: 57, scope: !4797)
!4822 = !DILocation(line: 17, column: 65, scope: !4797)
!4823 = !DILocation(line: 17, column: 75, scope: !4797)
!4824 = !DILocation(line: 17, column: 32, scope: !4797)
!4825 = !DILocation(line: 17, column: 3, scope: !4797)
!4826 = !DILocation(line: 17, column: 14, scope: !4797)
!4827 = !DILocation(line: 20, column: 22, scope: !4797)
!4828 = !DILocation(line: 20, column: 30, scope: !4797)
!4829 = !DILocation(line: 20, column: 37, scope: !4797)
!4830 = !DILocation(line: 20, column: 36, scope: !4797)
!4831 = !DILocation(line: 20, column: 21, scope: !4797)
!4832 = !DILocation(line: 20, column: 48, scope: !4797)
!4833 = !DILocation(line: 20, column: 58, scope: !4797)
!4834 = !DILocation(line: 20, column: 67, scope: !4797)
!4835 = !DILocation(line: 20, column: 66, scope: !4797)
!4836 = !DILocation(line: 20, column: 10, scope: !4797)
!4837 = !DILocation(line: 12, column: 18, scope: !4797)
!4838 = !DILocation(line: 12, column: 59, scope: !4797)
!4839 = !DILocation(line: 23, column: 9, scope: !4797)
!4840 = !DILocation(line: 23, column: 17, scope: !4797)
!4841 = !DILocation(line: 23, column: 25, scope: !4797)
!4842 = !DILocation(line: 23, column: 2, scope: !4797)
!4843 = distinct !DISubprogram(name: "runtime.sliceGrow", linkageName: "runtime.sliceGrow", scope: !4798, file: !4798, line: 27, type: !4844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4846)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!84, !43, !43, !43, !43, !84}
!4846 = !{!4847, !4848, !4849, !4850, !4851, !4852, !4853}
!4847 = !DILocalVariable(name: "oldBuf", arg: 1, scope: !4843, file: !4798, line: 27, type: !84)
!4848 = !DILocalVariable(name: "oldLen", arg: 2, scope: !4843, file: !4798, line: 27, type: !43)
!4849 = !DILocalVariable(name: "oldCap", arg: 3, scope: !4843, file: !4798, line: 27, type: !43)
!4850 = !DILocalVariable(name: "newCap", arg: 4, scope: !4843, file: !4798, line: 27, type: !43)
!4851 = !DILocalVariable(name: "elemSize", arg: 5, scope: !4843, file: !4798, line: 27, type: !43)
!4852 = !DILocalVariable(name: "layout", arg: 6, scope: !4843, file: !4798, line: 27, type: !84)
!4853 = !DILocalVariable(name: "buf", scope: !4843, file: !4798, line: 39, type: !84)
!4854 = !DILocation(line: 27, column: 6, scope: !4843)
!4855 = !DILocation(line: 28, column: 5, scope: !4843)
!4856 = !DILocation(line: 28, column: 15, scope: !4843)
!4857 = !DILocation(line: 28, column: 12, scope: !4843)
!4858 = !DILocation(line: 0, scope: !4843)
!4859 = !DILocation(line: 30, column: 10, scope: !4843)
!4860 = !DILocation(line: 30, column: 18, scope: !4843)
!4861 = !DILocation(line: 30, column: 26, scope: !4843)
!4862 = !DILocation(line: 30, column: 3, scope: !4843)
!4863 = !DILocation(line: 37, column: 30, scope: !4843)
!4864 = !DILocation(line: 37, column: 24, scope: !4843)
!4865 = !DILocation(line: 37, column: 13, scope: !4843)
!4866 = !DILocation(line: 37, column: 2, scope: !4843)
!4867 = !DILocation(line: 39, column: 15, scope: !4843)
!4868 = !DILocation(line: 39, column: 22, scope: !4843)
!4869 = !DILocation(line: 39, column: 21, scope: !4843)
!4870 = !DILocation(line: 39, column: 32, scope: !4843)
!4871 = !DILocation(line: 39, column: 14, scope: !4843)
!4872 = !DILocation(line: 39, column: 2, scope: !4843)
!4873 = !DILocation(line: 40, column: 5, scope: !4843)
!4874 = !DILocation(line: 40, column: 12, scope: !4843)
!4875 = !DILocation(line: 42, column: 11, scope: !4843)
!4876 = !DILocation(line: 42, column: 16, scope: !4843)
!4877 = !DILocation(line: 42, column: 24, scope: !4843)
!4878 = !DILocation(line: 42, column: 31, scope: !4843)
!4879 = !DILocation(line: 42, column: 30, scope: !4843)
!4880 = !DILocation(line: 42, column: 10, scope: !4843)
!4881 = !DILocation(line: 45, column: 9, scope: !4843)
!4882 = !DILocation(line: 45, column: 14, scope: !4843)
!4883 = !DILocation(line: 45, column: 22, scope: !4843)
!4884 = !DILocation(line: 45, column: 2, scope: !4843)
!4885 = distinct !DISubprogram(name: "runtime.tinygo_signal_handler", linkageName: "tinygo_signal_handler", scope: !414, file: !414, line: 420, type: !3449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4886)
!4886 = !{!4887, !4888, !4889, !4890}
!4887 = !DILocalVariable(name: "s", arg: 1, scope: !4885, file: !414, line: 420, type: !381)
!4888 = !DILocalVariable(name: "mask", scope: !4885, file: !414, line: 427, type: !98)
!4889 = !DILocalVariable(name: "val", scope: !4885, file: !414, line: 428, type: !98)
!4890 = !DILocalVariable(name: "swapped", scope: !4885, file: !414, line: 429, type: !371)
!4891 = !DILocation(line: 420, column: 6, scope: !4885)
!4892 = !DILocation(line: 0, scope: !4885)
!4893 = !DILocation(line: 427, column: 31, scope: !4885)
!4894 = !DILocation(line: 427, column: 21, scope: !4885)
!4895 = !DILocation(line: 427, column: 3, scope: !4885)
!4896 = !DILocation(line: 428, column: 30, scope: !4885)
!4897 = !DILocation(line: 428, column: 3, scope: !4885)
!4898 = !DILocation(line: 429, column: 45, scope: !4885)
!4899 = !DILocation(line: 429, column: 50, scope: !4885)
!4900 = !DILocation(line: 429, column: 54, scope: !4885)
!4901 = !DILocation(line: 429, column: 53, scope: !4885)
!4902 = !DILocation(line: 429, column: 44, scope: !4885)
!4903 = !DILocation(line: 429, column: 3, scope: !4885)
!4904 = !DILocation(line: 430, column: 6, scope: !4885)
!4905 = !DILocation(line: 437, column: 21, scope: !4885)
!4906 = !DILocation(line: 437, column: 25, scope: !4885)
!4907 = !DILocation(line: 441, column: 22, scope: !4885)
!4908 = !DILocation(line: 443, column: 2, scope: !4885)
!4909 = distinct !DISubprogram(name: "runtime.stringConcat", linkageName: "runtime.stringConcat", scope: !4271, file: !4271, line: 56, type: !4910, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4916)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!4912, !4912}
!4912 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._string", baseType: !4913)
!4913 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !4914)
!4914 = !{!2144, !4915}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !43, size: 64, align: 64, offset: 64)
!4916 = !{!4917, !4918, !4919, !4920}
!4917 = !DILocalVariable(name: "x", arg: 1, scope: !4909, file: !4271, line: 56, type: !4912)
!4918 = !DILocalVariable(name: "y", arg: 2, scope: !4909, file: !4271, line: 56, type: !4912)
!4919 = !DILocalVariable(name: "length", scope: !4909, file: !4271, line: 62, type: !43)
!4920 = !DILocalVariable(name: "buf", scope: !4909, file: !4271, line: 63, type: !84)
!4921 = !DILocation(line: 56, column: 6, scope: !4909)
!4922 = !DILocation(line: 56, column: 19, scope: !4909)
!4923 = !DILocation(line: 56, column: 22, scope: !4909)
!4924 = !DILocation(line: 57, column: 7, scope: !4909)
!4925 = !DILocation(line: 57, column: 14, scope: !4909)
!4926 = !DILocation(line: 0, scope: !4909)
!4927 = !DILocation(line: 58, column: 10, scope: !4909)
!4928 = !DILocation(line: 58, column: 3, scope: !4909)
!4929 = !DILocation(line: 59, column: 14, scope: !4909)
!4930 = !DILocation(line: 59, column: 21, scope: !4909)
!4931 = !DILocation(line: 60, column: 10, scope: !4909)
!4932 = !DILocation(line: 60, column: 3, scope: !4909)
!4933 = !DILocation(line: 62, column: 15, scope: !4909)
!4934 = !DILocation(line: 62, column: 26, scope: !4909)
!4935 = !DILocation(line: 62, column: 22, scope: !4909)
!4936 = !DILocation(line: 62, column: 3, scope: !4909)
!4937 = !DILocation(line: 63, column: 16, scope: !4909)
!4938 = !DILocation(line: 63, column: 45, scope: !4909)
!4939 = !DILocation(line: 63, column: 15, scope: !4909)
!4940 = !DILocation(line: 63, column: 3, scope: !4909)
!4941 = !DILocation(line: 64, column: 10, scope: !4909)
!4942 = !DILocation(line: 64, column: 32, scope: !4909)
!4943 = !DILocation(line: 64, column: 40, scope: !4909)
!4944 = !DILocation(line: 64, column: 9, scope: !4909)
!4945 = !DILocation(line: 65, column: 21, scope: !4909)
!4946 = !DILocation(line: 65, column: 28, scope: !4909)
!4947 = !DILocation(line: 65, column: 20, scope: !4909)
!4948 = !DILocation(line: 65, column: 54, scope: !4909)
!4949 = !DILocation(line: 65, column: 62, scope: !4909)
!4950 = !DILocation(line: 65, column: 9, scope: !4909)
!4951 = !DILocation(line: 66, column: 21, scope: !4909)
!4952 = !DILocation(line: 66, column: 31, scope: !4909)
!4953 = !DILocation(line: 66, column: 43, scope: !4909)
!4954 = !DILocation(line: 66, column: 45, scope: !4909)
!4955 = !DILocation(line: 66, column: 17, scope: !4909)
!4956 = !DILocation(line: 66, column: 3, scope: !4909)
!4957 = distinct !DISubprogram(name: "runtime.stringFromBytes", linkageName: "runtime.stringFromBytes", scope: !4271, file: !4271, line: 71, type: !4958, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4961)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!4960}
!4960 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !2143)
!4961 = !{!4962, !4963}
!4962 = !DILocalVariable(name: "x", arg: 1, scope: !4957, file: !4271, line: 71, type: !4960)
!4963 = !DILocalVariable(name: "buf", scope: !4957, file: !4271, line: 76, type: !84)
!4964 = !DILocation(line: 71, column: 6, scope: !4957)
!4965 = !DILocation(line: 71, column: 22, scope: !4957)
!4966 = !DILocation(line: 76, column: 17, scope: !4957)
!4967 = !DILocation(line: 76, column: 43, scope: !4957)
!4968 = !DILocation(line: 76, column: 14, scope: !4957)
!4969 = !DILocation(line: 76, column: 2, scope: !4957)
!4970 = !DILocation(line: 77, column: 9, scope: !4957)
!4971 = !DILocation(line: 77, column: 31, scope: !4957)
!4972 = !DILocation(line: 77, column: 39, scope: !4957)
!4973 = !DILocation(line: 77, column: 8, scope: !4957)
!4974 = !DILocation(line: 78, column: 20, scope: !4957)
!4975 = !DILocation(line: 78, column: 30, scope: !4957)
!4976 = !DILocation(line: 78, column: 42, scope: !4957)
!4977 = !DILocation(line: 78, column: 46, scope: !4957)
!4978 = !DILocation(line: 78, column: 16, scope: !4957)
!4979 = !DILocation(line: 78, column: 2, scope: !4957)
!4980 = distinct !DISubprogram(name: "main.f_gold", linkageName: "f_gold", scope: !4981, file: !4981, line: 6, type: !1934, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !4982)
!4981 = !DIFile(filename: "FIND_INDEX_GIVEN_FIBONACCI_NUMBER_CONSTANT_TIME_1_emit.go", directory: "/root/es/vert/vert/source_funs/go_transcoder/FIND_INDEX_GIVEN_FIBONACCI_NUMBER_CONSTANT_TIME_1")
!4982 = !{!4983, !4984}
!4983 = !DILocalVariable(name: "n", arg: 1, scope: !4980, file: !4981, line: 6, type: !1936)
!4984 = !DILocalVariable(name: "fibo", scope: !4980, file: !4981, line: 7, type: !3730)
!4985 = !DILocation(line: 6, column: 6, scope: !4980)
!4986 = !DILocation(line: 7, column: 46, scope: !4980)
!4987 = !DILocation(line: 7, column: 45, scope: !4980)
!4988 = !DILocation(line: 7, column: 37, scope: !4980)
!4989 = !DILocation(line: 7, column: 49, scope: !4980)
!4990 = !DILocation(line: 7, column: 59, scope: !4980)
!4991 = !DILocation(line: 7, column: 28, scope: !4980)
!4992 = !DILocation(line: 7, column: 6, scope: !4980)
!4993 = !DILocation(line: 8, column: 32, scope: !4980)
!4994 = !DILocation(line: 8, column: 31, scope: !4980)
!4995 = !DILocation(line: 8, column: 23, scope: !4980)
!4996 = !DILocation(line: 8, column: 12, scope: !4980)
!4997 = !DILocation(line: 8, column: 2, scope: !4980)
