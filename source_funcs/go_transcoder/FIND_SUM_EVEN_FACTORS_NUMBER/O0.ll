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
@"runtime$string.25" = internal unnamed_addr constant [14 x i8] c"divide by zero", align 1, !dbg !456
@"runtime$string.35" = internal unnamed_addr constant [3 x i8] c"NaN", align 1, !dbg !458
@"runtime$string.36" = internal unnamed_addr constant [4 x i8] c"+Inf", align 1, !dbg !461
@"runtime$string.37" = internal unnamed_addr constant [4 x i8] c"-Inf", align 1, !dbg !463
@"runtime$string.38" = internal unnamed_addr constant [3 x i8] c"NaN", align 1, !dbg !465
@"runtime$string.39" = internal unnamed_addr constant [4 x i8] c"+Inf", align 1, !dbg !467
@"runtime$string.40" = internal unnamed_addr constant [4 x i8] c"-Inf", align 1, !dbg !469
@"runtime$string.41" = internal unnamed_addr constant [2 x i8] c"i)", align 1, !dbg !471
@"runtime$string.42" = internal unnamed_addr constant [2 x i8] c"i)", align 1, !dbg !473
@"runtime$string.45" = internal unnamed_addr constant [3 x i8] c"nil", align 1, !dbg !475
@"runtime$string.46" = internal unnamed_addr constant [4 x i8] c"true", align 1, !dbg !477
@"runtime$string.47" = internal unnamed_addr constant [5 x i8] c"false", align 1, !dbg !479
@runtime.stackTop = internal global i64 0, align 8, !dbg !481
@runtime.main_argc = internal global i32 0, align 4, !dbg !483
@runtime.main_argv = internal global ptr null, align 8, !dbg !485
@"runtime$string.50" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !488
@"runtime$string.51" = internal unnamed_addr constant [16 x i8] c": caught signal ", align 1, !dbg !490
@"runtime$string.52" = internal unnamed_addr constant [6 x i8] c"SIGBUS", align 1, !dbg !492
@"runtime$string.53" = internal unnamed_addr constant [6 x i8] c"SIGILL", align 1, !dbg !494
@"runtime$string.54" = internal unnamed_addr constant [7 x i8] c"SIGSEGV", align 1, !dbg !496
@"runtime$string.55" = internal unnamed_addr constant [20 x i8] c"panic: runtime error", align 1, !dbg !498
@runtime.signalFutex = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !500
@runtime.heapMaxSize = internal global i64 0, align 8, !dbg !502
@runtime.heapStart = internal global i64 0, align 8, !dbg !504
@runtime.heapEnd = internal global i64 0, align 8, !dbg !506
@"runtime$string.56" = internal unnamed_addr constant [27 x i8] c"cannot allocate heap memory", align 1, !dbg !508
@runtime.receivedSignals = internal global %"sync/atomic.Bool" zeroinitializer, align 4, !dbg !513
@runtime.printLock = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !515
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
define internal double @math.Sqrt(double %x, ptr %context) #1 !dbg !1742 {
entry:
    #dbg_value(double %x, !1747, !DIExpression(), !1748)
  %0 = call double @llvm.sqrt.f64(double %x), !dbg !1748
  ret double %0, !dbg !1748
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #0

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.SwapUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %new, ptr %context) unnamed_addr #1 !dbg !1749 {
entry:
    #dbg_value(ptr %addr, !1755, !DIExpression(), !1757)
    #dbg_value(i32 %new, !1756, !DIExpression(), !1757)
  %0 = atomicrmw xchg ptr %addr, i32 %new syncscope("singlethread") seq_cst, align 4, !dbg !1757
  ret i32 %0, !dbg !1757
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"sync/atomic.CompareAndSwapUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %old, i32 %new, ptr %context) unnamed_addr #1 !dbg !1758 {
entry:
    #dbg_value(ptr %addr, !1762, !DIExpression(), !1765)
    #dbg_value(i32 %old, !1763, !DIExpression(), !1765)
    #dbg_value(i32 %new, !1764, !DIExpression(), !1765)
  %0 = cmpxchg ptr %addr, i32 %old, i32 %new syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !1765
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !1765
  ret i1 %1, !dbg !1765
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.AddUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %delta, ptr %context) unnamed_addr #1 !dbg !1766 {
entry:
    #dbg_value(ptr %addr, !1768, !DIExpression(), !1770)
    #dbg_value(i32 %delta, !1769, !DIExpression(), !1770)
  %0 = atomicrmw add ptr %addr, i32 %delta syncscope("singlethread") seq_cst, align 4, !dbg !1770
  %1 = add i32 %0, %delta, !dbg !1770
  ret i32 %1, !dbg !1770
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.LoadUint32"(ptr nocapture dereferenceable_or_null(4) %addr, ptr %context) unnamed_addr #1 !dbg !1771 {
entry:
    #dbg_value(ptr %addr, !1775, !DIExpression(), !1776)
  %0 = load atomic i32, ptr %addr seq_cst, align 4, !dbg !1776
  ret i32 %0, !dbg !1776
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"sync/atomic.StoreUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %val, ptr %context) unnamed_addr #1 !dbg !1777 {
entry:
    #dbg_value(ptr %addr, !1779, !DIExpression(), !1781)
    #dbg_value(i32 %val, !1780, !DIExpression(), !1781)
  store atomic i32 %val, ptr %addr seq_cst, align 4, !dbg !1781
  ret void, !dbg !1781
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Add"(ptr dereferenceable_or_null(4) %x, i32 %delta, ptr %context) #1 !dbg !1782 {
entry:
    #dbg_value(ptr %x, !1788, !DIExpression(), !1790)
    #dbg_value(i32 %delta, !1789, !DIExpression(), !1790)
    #dbg_value(ptr %x, !1788, !DIExpression(), !1791)
  %0 = icmp eq ptr %x, null, !dbg !1792
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1792

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1792
    #dbg_value(i32 %delta, !1789, !DIExpression(), !1793)
  %2 = call i32 @"sync/atomic.AddUint32"(ptr %1, i32 %delta, ptr undef), !dbg !1794
  ret i32 %2, !dbg !1795

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1792
  unreachable, !dbg !1792
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr dereferenceable_or_null(4) %x, i32 %old, i32 %new, ptr %context) #1 !dbg !1796 {
entry:
    #dbg_value(ptr %x, !1800, !DIExpression(), !1803)
    #dbg_value(i32 %old, !1801, !DIExpression(), !1803)
    #dbg_value(i32 %new, !1802, !DIExpression(), !1803)
    #dbg_value(ptr %x, !1800, !DIExpression(), !1804)
  %0 = icmp eq ptr %x, null, !dbg !1805
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1805

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1805
    #dbg_value(i32 %old, !1801, !DIExpression(), !1806)
    #dbg_value(i32 %new, !1802, !DIExpression(), !1807)
  %2 = call i1 @"sync/atomic.CompareAndSwapUint32"(ptr %1, i32 %old, i32 %new, ptr undef), !dbg !1808
  ret i1 %2, !dbg !1809

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1805
  unreachable, !dbg !1805
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Load"(ptr dereferenceable_or_null(4) %x, ptr %context) #1 !dbg !1810 {
entry:
    #dbg_value(ptr %x, !1814, !DIExpression(), !1815)
    #dbg_value(ptr %x, !1814, !DIExpression(), !1816)
  %0 = icmp eq ptr %x, null, !dbg !1817
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1817

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1817
  %2 = call i32 @"sync/atomic.LoadUint32"(ptr %1, ptr undef), !dbg !1818
  ret i32 %2, !dbg !1819

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1817
  unreachable, !dbg !1817
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*sync/atomic.Uint32).Store"(ptr dereferenceable_or_null(4) %x, i32 %val, ptr %context) #1 !dbg !1820 {
entry:
    #dbg_value(ptr %x, !1822, !DIExpression(), !1824)
    #dbg_value(i32 %val, !1823, !DIExpression(), !1824)
    #dbg_value(ptr %x, !1822, !DIExpression(), !1825)
  %0 = icmp eq ptr %x, null, !dbg !1826
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1826

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1826
    #dbg_value(i32 %val, !1823, !DIExpression(), !1827)
  call void @"sync/atomic.StoreUint32"(ptr %1, i32 %val, ptr undef), !dbg !1828
  ret void, !dbg !1829

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1826
  unreachable, !dbg !1826
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Swap"(ptr dereferenceable_or_null(4) %x, i32 %new, ptr %context) #1 !dbg !1830 {
entry:
    #dbg_value(ptr %x, !1832, !DIExpression(), !1834)
    #dbg_value(i32 %new, !1833, !DIExpression(), !1834)
    #dbg_value(ptr %x, !1832, !DIExpression(), !1835)
  %0 = icmp eq ptr %x, null, !dbg !1836
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1836

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1836
    #dbg_value(i32 %new, !1833, !DIExpression(), !1837)
  %2 = call i32 @"sync/atomic.SwapUint32"(ptr %1, i32 %new, ptr undef), !dbg !1838
  ret i32 %2, !dbg !1839

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1836
  unreachable, !dbg !1836
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*internal/futex.Futex).Wait"(ptr dereferenceable_or_null(4) %f, i32 %cmp, ptr %context) #1 !dbg !1840 {
entry:
    #dbg_value(ptr %f, !1846, !DIExpression(), !1848)
    #dbg_value(i32 %cmp, !1847, !DIExpression(), !1848)
    #dbg_value(ptr %f, !1846, !DIExpression(), !1849)
  %0 = icmp eq ptr %f, null, !dbg !1850
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1850

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1850
    #dbg_value(i32 %cmp, !1847, !DIExpression(), !1851)
  call void @tinygo_futex_wait(ptr %1, i32 %cmp), !dbg !1852
  ret i1 false, !dbg !1853

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1850
  unreachable, !dbg !1850
}

declare void @tinygo_futex_wait(ptr nocapture dereferenceable_or_null(4), i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/futex.Futex).Wake"(ptr dereferenceable_or_null(4) %f, ptr %context) #1 !dbg !1854 {
entry:
    #dbg_value(ptr %f, !1858, !DIExpression(), !1859)
    #dbg_value(ptr %f, !1858, !DIExpression(), !1860)
  %0 = icmp eq ptr %f, null, !dbg !1861
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1861

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1861
  call void @tinygo_futex_wake(ptr %1), !dbg !1862
  ret void, !dbg !1863

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1861
  unreachable, !dbg !1861
}

declare void @tinygo_futex_wake(ptr nocapture dereferenceable_or_null(4)) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/futex.Futex).WakeAll"(ptr dereferenceable_or_null(4) %f, ptr %context) #1 !dbg !1864 {
entry:
    #dbg_value(ptr %f, !1866, !DIExpression(), !1867)
    #dbg_value(ptr %f, !1866, !DIExpression(), !1868)
  %0 = icmp eq ptr %f, null, !dbg !1869
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1869

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1869
  call void @tinygo_futex_wake_all(ptr %1), !dbg !1870
  ret void, !dbg !1871

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1869
  unreachable, !dbg !1869
}

declare void @tinygo_futex_wake_all(ptr nocapture dereferenceable_or_null(4)) #2

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(internal/gclayout.Layout).AsPtr"(i64 %l, ptr %context) #1 !dbg !1872 {
entry:
    #dbg_value(i64 %l, !1878, !DIExpression(), !1879)
    #dbg_value(i64 %l, !1878, !DIExpression(), !1880)
  %0 = inttoptr i64 %l to ptr, !dbg !1881
  ret ptr %0, !dbg !1882
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/itoa.Itoa"(i64 %val, ptr %context) #1 !dbg !1883 {
entry:
    #dbg_value(i64 %val, !1888, !DIExpression(), !1889)
    #dbg_value(i64 %val, !1888, !DIExpression(), !1890)
  %0 = icmp slt i64 %val, 0, !dbg !1891
  br i1 %0, label %if.then, label %if.done, !dbg !1892

if.then:                                          ; preds = %entry
    #dbg_value(i64 %val, !1888, !DIExpression(), !1893)
  %1 = sub i64 0, %val, !dbg !1894
  %2 = call %runtime._string @"internal/itoa.Uitoa"(i64 %1, ptr undef), !dbg !1895
  %3 = extractvalue %runtime._string %2, 0, !dbg !1896
  %4 = extractvalue %runtime._string %2, 1, !dbg !1896
  %5 = call %runtime._string @runtime.stringConcat(ptr @"internal/itoa$string", i64 1, ptr %3, i64 %4, ptr undef), !dbg !1896
  ret %runtime._string %5, !dbg !1897

if.done:                                          ; preds = %entry
    #dbg_value(i64 %val, !1888, !DIExpression(), !1898)
  %6 = call %runtime._string @"internal/itoa.Uitoa"(i64 %val, ptr undef), !dbg !1899
  ret %runtime._string %6, !dbg !1900
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/itoa.Uitoa"(i64 %val, ptr %context) unnamed_addr #1 !dbg !1901 {
entry:
    #dbg_value(i64 %val, !1903, !DIExpression(), !1906)
    #dbg_value(i64 %val, !1903, !DIExpression(), !1907)
  %0 = icmp eq i64 %val, 0, !dbg !1908
  br i1 %0, label %if.then, label %if.done, !dbg !1909

if.then:                                          ; preds = %entry
  ret %runtime._string { ptr @"internal/itoa$string.1", i64 1 }, !dbg !1910

if.done:                                          ; preds = %entry
  %buf = call align 1 ptr @runtime.alloc(i64 20, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !1911
    #dbg_value(i64 19, !1904, !DIExpression(), !1912)
  br label %for.loop, !dbg !1909

for.loop:                                         ; preds = %lookup.next, %if.done
  %1 = phi i64 [ %val, %if.done ], [ %4, %lookup.next ], !dbg !1913
  %2 = phi i64 [ 19, %if.done ], [ %11, %lookup.next ], !dbg !1912
    #dbg_value(i64 %1, !1903, !DIExpression(), !1914)
  %3 = icmp uge i64 %1, 10, !dbg !1915
  br i1 %3, label %for.body, label %for.done, !dbg !1909

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !1903, !DIExpression(), !1916)
  %4 = udiv i64 %1, 10, !dbg !1917
    #dbg_value(i64 %4, !1905, !DIExpression(), !1918)
    #dbg_value(i64 %2, !1904, !DIExpression(), !1919)
    #dbg_value(i64 %1, !1903, !DIExpression(), !1920)
  %5 = add i64 48, %1, !dbg !1921
    #dbg_value(i64 %4, !1905, !DIExpression(), !1922)
  %6 = mul i64 %4, 10, !dbg !1923
  %7 = sub i64 %5, %6, !dbg !1924
  %8 = trunc i64 %7 to i8, !dbg !1925
  %9 = icmp uge i64 %2, 20, !dbg !1926
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !1926

lookup.next:                                      ; preds = %for.body
  %10 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1926
  store i8 %8, ptr %10, align 1, !dbg !1926
  %11 = sub i64 %2, 1, !dbg !1927
    #dbg_value(i64 %11, !1904, !DIExpression(), !1927)
    #dbg_value(i64 %4, !1905, !DIExpression(), !1928)
    #dbg_value(i64 %4, !1903, !DIExpression(), !1929)
  br label %for.loop, !dbg !1909

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !1904, !DIExpression(), !1930)
    #dbg_value(i64 %1, !1903, !DIExpression(), !1931)
  %12 = add i64 48, %1, !dbg !1932
  %13 = trunc i64 %12 to i8, !dbg !1933
  %14 = icmp uge i64 %2, 20, !dbg !1934
  br i1 %14, label %lookup.throw1, label %lookup.next2, !dbg !1934

lookup.next2:                                     ; preds = %for.done
  %15 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1934
  store i8 %13, ptr %15, align 1, !dbg !1934
    #dbg_value(i64 %2, !1904, !DIExpression(), !1935)
  %slice.lowhigh = icmp ugt i64 %2, 20, !dbg !1936
  %slice.lowmax = or i1 %slice.lowhigh, false, !dbg !1936
  %slice.lowcap = or i1 %slice.lowmax, false, !dbg !1936
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !1936

slice.next:                                       ; preds = %lookup.next2
  %slice.len = sub i64 20, %2, !dbg !1936
  %slice.ptr = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1936
  %slice.cap = sub i64 20, %2, !dbg !1936
  %16 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !1936
  %17 = insertvalue { ptr, i64, i64 } %16, i64 %slice.len, 1, !dbg !1936
  %18 = insertvalue { ptr, i64, i64 } %17, i64 %slice.cap, 2, !dbg !1936
  %19 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !1937
  %20 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !1937
  %21 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !1937
  %22 = call %runtime._string @runtime.stringFromBytes(ptr %19, i64 %20, i64 %21, ptr undef), !dbg !1937
  ret %runtime._string %22, !dbg !1938

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !1926
  unreachable, !dbg !1926

lookup.throw1:                                    ; preds = %for.done
  call void @runtime.lookupPanic(ptr undef), !dbg !1934
  unreachable, !dbg !1934

slice.throw:                                      ; preds = %lookup.next2
  call void @runtime.slicePanic(ptr undef), !dbg !1936
  unreachable, !dbg !1936
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"unicode/utf8.DecodeRuneInString"(ptr readonly %s.data, i64 %s.len, ptr %context) #1 !dbg !1939 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !1947
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !1947
    #dbg_value(ptr %s.data, !1943, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1947)
    #dbg_value(i64 %s.len, !1943, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1947)
    #dbg_value(%runtime._string %1, !1943, !DIExpression(), !1948)
  %2 = extractvalue %runtime._string %1, 0, !dbg !1949
  %3 = extractvalue %runtime._string %1, 1, !dbg !1949
  %4 = call i1 @runtime.stringEqual(ptr %2, i64 %3, ptr null, i64 0, ptr undef), !dbg !1949
  %5 = xor i1 %4, true, !dbg !1949
  br i1 %5, label %cond.true, label %if.else, !dbg !1950

cond.true:                                        ; preds = %entry
    #dbg_value(%runtime._string %1, !1943, !DIExpression(), !1951)
  %len = extractvalue %runtime._string %1, 1, !dbg !1952
  %6 = icmp uge i64 0, %len, !dbg !1952
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !1952

lookup.next:                                      ; preds = %cond.true
  %7 = extractvalue %runtime._string %1, 0, !dbg !1952
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !1952
  %9 = load i8, ptr %8, align 1, !dbg !1952
  %10 = icmp ult i8 %9, -128, !dbg !1953
  br i1 %10, label %if.then, label %if.else, !dbg !1950

if.then:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !1943, !DIExpression(), !1954)
  %len1 = extractvalue %runtime._string %1, 1, !dbg !1955
  %11 = icmp uge i64 0, %len1, !dbg !1955
  br i1 %11, label %lookup.throw2, label %lookup.next3, !dbg !1955

lookup.next3:                                     ; preds = %if.then
  %12 = extractvalue %runtime._string %1, 0, !dbg !1955
  %13 = getelementptr inbounds i8, ptr %12, i64 0, !dbg !1955
  %14 = load i8, ptr %13, align 1, !dbg !1955
  %15 = zext i8 %14 to i32, !dbg !1956
  %16 = insertvalue { i32, i64 } zeroinitializer, i32 %15, 0, !dbg !1957
  %17 = insertvalue { i32, i64 } %16, i64 1, 1, !dbg !1957
  ret { i32, i64 } %17, !dbg !1957

if.else:                                          ; preds = %lookup.next, %entry
    #dbg_value(%runtime._string %1, !1943, !DIExpression(), !1958)
  %18 = extractvalue %runtime._string %1, 0, !dbg !1959
  %19 = extractvalue %runtime._string %1, 1, !dbg !1959
  %20 = call { i32, i64 } @"unicode/utf8.decodeRuneInStringSlow"(ptr %18, i64 %19, ptr undef), !dbg !1959
  %21 = extractvalue { i32, i64 } %20, 0, !dbg !1959
    #dbg_value(i32 %21, !1944, !DIExpression(), !1960)
  %22 = extractvalue { i32, i64 } %20, 1, !dbg !1959
    #dbg_value(i64 %22, !1946, !DIExpression(), !1961)
  %23 = insertvalue { i32, i64 } zeroinitializer, i32 %21, 0, !dbg !1962
  %24 = insertvalue { i32, i64 } %23, i64 %22, 1, !dbg !1962
  ret { i32, i64 } %24, !dbg !1962

lookup.throw:                                     ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !1952
  unreachable, !dbg !1952

lookup.throw2:                                    ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !1955
  unreachable, !dbg !1955
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"unicode/utf8.decodeRuneInStringSlow"(ptr readonly %s.data, i64 %s.len, ptr %context) unnamed_addr #1 !dbg !1963 {
entry:
  %accept = alloca %"unicode/utf8.acceptRange", align 8, !dbg !1975
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !1975
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !1975
    #dbg_value(ptr %s.data, !1965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1975)
    #dbg_value(i64 %s.len, !1965, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1975)
    #dbg_value(%runtime._string %1, !1965, !DIExpression(), !1976)
  %len = extractvalue %runtime._string %1, 1, !dbg !1977
    #dbg_value(i64 %len, !1966, !DIExpression(), !1978)
    #dbg_value(i64 %len, !1966, !DIExpression(), !1979)
  %2 = icmp slt i64 %len, 1, !dbg !1980
  br i1 %2, label %if.then, label %if.done, !dbg !1981

if.then:                                          ; preds = %entry
  ret { i32, i64 } { i32 65533, i64 0 }, !dbg !1982

if.done:                                          ; preds = %entry
    #dbg_value(%runtime._string %1, !1965, !DIExpression(), !1983)
  %len17 = extractvalue %runtime._string %1, 1, !dbg !1984
  %3 = icmp uge i64 0, %len17, !dbg !1984
  br i1 %3, label %lookup.throw, label %lookup.next, !dbg !1984

lookup.next:                                      ; preds = %if.done
  %4 = extractvalue %runtime._string %1, 0, !dbg !1984
  %5 = getelementptr inbounds i8, ptr %4, i64 0, !dbg !1984
  %6 = load i8, ptr %5, align 1, !dbg !1984
    #dbg_value(i8 %6, !1967, !DIExpression(), !1985)
    #dbg_value(i8 %6, !1967, !DIExpression(), !1986)
  %7 = zext i8 %6 to i64, !dbg !1987
  %8 = icmp uge i64 %7, 256, !dbg !1987
  br i1 %8, label %lookup.throw18, label %lookup.next19, !dbg !1987

lookup.next19:                                    ; preds = %lookup.next
  %9 = getelementptr inbounds [256 x i8], ptr @"unicode/utf8.first", i32 0, i64 %7, !dbg !1987
  %10 = load i8, ptr %9, align 1, !dbg !1987
    #dbg_value(i8 %10, !1968, !DIExpression(), !1988)
    #dbg_value(i8 %10, !1968, !DIExpression(), !1989)
  %11 = icmp uge i8 %10, -16, !dbg !1990
  br i1 %11, label %if.then1, label %if.done2, !dbg !1981

if.then1:                                         ; preds = %lookup.next19
    #dbg_value(i8 %10, !1968, !DIExpression(), !1991)
  %12 = zext i8 %10 to i32, !dbg !1992
  %13 = shl i32 %12, 31, !dbg !1993
  %shift.result = select i1 false, i32 0, i32 %13, !dbg !1993
  %14 = ashr i32 %shift.result, 31, !dbg !1994
    #dbg_value(i32 %14, !1969, !DIExpression(), !1995)
    #dbg_value(%runtime._string %1, !1965, !DIExpression(), !1996)
  %len20 = extractvalue %runtime._string %1, 1, !dbg !1997
  %15 = icmp uge i64 0, %len20, !dbg !1997
  br i1 %15, label %lookup.throw21, label %lookup.next22, !dbg !1997

lookup.next22:                                    ; preds = %if.then1
  %16 = extractvalue %runtime._string %1, 0, !dbg !1997
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !1997
  %18 = load i8, ptr %17, align 1, !dbg !1997
  %19 = zext i8 %18 to i32, !dbg !1998
    #dbg_value(i32 %14, !1969, !DIExpression(), !1999)
  %20 = xor i32 %14, -1, !dbg !2000
  %21 = and i32 %19, %20, !dbg !2000
    #dbg_value(i32 %14, !1969, !DIExpression(), !2001)
  %22 = and i32 65533, %14, !dbg !2002
  %23 = or i32 %21, %22, !dbg !2003
  %24 = insertvalue { i32, i64 } zeroinitializer, i32 %23, 0, !dbg !2004
  %25 = insertvalue { i32, i64 } %24, i64 1, 1, !dbg !2004
  ret { i32, i64 } %25, !dbg !2004

if.done2:                                         ; preds = %lookup.next19
    #dbg_value(i8 %10, !1968, !DIExpression(), !2005)
  %26 = and i8 %10, 7, !dbg !2006
  %27 = zext i8 %26 to i64, !dbg !2007
    #dbg_value(i64 %27, !1970, !DIExpression(), !2008)
  store %"unicode/utf8.acceptRange" zeroinitializer, ptr %accept, align 1, !dbg !1975
    #dbg_value(i8 %10, !1968, !DIExpression(), !2009)
  %28 = lshr i8 %10, 4, !dbg !2010
  %shift.result23 = select i1 false, i8 0, i8 %28, !dbg !2010
  %29 = zext i8 %shift.result23 to i64, !dbg !2011
  %30 = icmp uge i64 %29, 16, !dbg !2011
  br i1 %30, label %lookup.throw24, label %lookup.next25, !dbg !2011

lookup.next25:                                    ; preds = %if.done2
  %31 = getelementptr inbounds [16 x %"unicode/utf8.acceptRange"], ptr @"unicode/utf8.acceptRanges", i32 0, i64 %29, !dbg !2011
  %32 = load %"unicode/utf8.acceptRange", ptr %31, align 1, !dbg !2011
  store %"unicode/utf8.acceptRange" %32, ptr %accept, align 1, !dbg !2012
    #dbg_value(%"unicode/utf8.acceptRange" %32, !1971, !DIExpression(), !2012)
    #dbg_value(i64 %len, !1966, !DIExpression(), !2013)
    #dbg_value(i64 %27, !1970, !DIExpression(), !2014)
  %33 = icmp slt i64 %len, %27, !dbg !2015
  br i1 %33, label %if.then3, label %if.done4, !dbg !1981

if.then3:                                         ; preds = %lookup.next25
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2016

if.done4:                                         ; preds = %lookup.next25
    #dbg_value(%runtime._string %1, !1965, !DIExpression(), !2017)
  %len26 = extractvalue %runtime._string %1, 1, !dbg !2018
  %34 = icmp uge i64 1, %len26, !dbg !2018
  br i1 %34, label %lookup.throw27, label %lookup.next28, !dbg !2018

lookup.next28:                                    ; preds = %if.done4
  %35 = extractvalue %runtime._string %1, 0, !dbg !2018
  %36 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !2018
  %37 = load i8, ptr %36, align 1, !dbg !2018
    #dbg_value(i8 %37, !1972, !DIExpression(), !2019)
    #dbg_value(i8 %37, !1972, !DIExpression(), !2020)
  %38 = getelementptr inbounds %"unicode/utf8.acceptRange", ptr %accept, i32 0, i32 0, !dbg !2021
  %39 = icmp eq ptr %38, null, !dbg !2021
  br i1 %39, label %deref.throw, label %deref.next, !dbg !2021

deref.next:                                       ; preds = %lookup.next28
  %40 = load i8, ptr %38, align 1, !dbg !2021
  %41 = icmp ult i8 %37, %40, !dbg !2022
  br i1 %41, label %if.then5, label %cond.false, !dbg !1981

if.then5:                                         ; preds = %deref.next30, %deref.next
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2023

cond.false:                                       ; preds = %deref.next
  %42 = getelementptr inbounds %"unicode/utf8.acceptRange", ptr %accept, i32 0, i32 1, !dbg !2024
  %43 = icmp eq ptr %42, null, !dbg !2024
  br i1 %43, label %deref.throw29, label %deref.next30, !dbg !2024

deref.next30:                                     ; preds = %cond.false
  %44 = load i8, ptr %42, align 1, !dbg !2024
    #dbg_value(i8 %37, !1972, !DIExpression(), !2025)
  %45 = icmp ult i8 %44, %37, !dbg !2026
  br i1 %45, label %if.then5, label %if.done6, !dbg !1981

if.done6:                                         ; preds = %deref.next30
    #dbg_value(i64 %27, !1970, !DIExpression(), !2027)
  %46 = icmp sle i64 %27, 2, !dbg !2028
  br i1 %46, label %if.then7, label %if.done8, !dbg !1981

if.then7:                                         ; preds = %if.done6
    #dbg_value(i8 %6, !1967, !DIExpression(), !2029)
  %47 = and i8 %6, 31, !dbg !2030
  %48 = zext i8 %47 to i32, !dbg !2031
  %49 = shl i32 %48, 6, !dbg !2032
  %shift.result31 = select i1 false, i32 0, i32 %49, !dbg !2032
    #dbg_value(i8 %37, !1972, !DIExpression(), !2033)
  %50 = and i8 %37, 63, !dbg !2034
  %51 = zext i8 %50 to i32, !dbg !2035
  %52 = or i32 %shift.result31, %51, !dbg !2036
  %53 = insertvalue { i32, i64 } zeroinitializer, i32 %52, 0, !dbg !2037
  %54 = insertvalue { i32, i64 } %53, i64 2, 1, !dbg !2037
  ret { i32, i64 } %54, !dbg !2037

if.done8:                                         ; preds = %if.done6
    #dbg_value(%runtime._string %1, !1965, !DIExpression(), !2038)
  %len32 = extractvalue %runtime._string %1, 1, !dbg !2039
  %55 = icmp uge i64 2, %len32, !dbg !2039
  br i1 %55, label %lookup.throw33, label %lookup.next34, !dbg !2039

lookup.next34:                                    ; preds = %if.done8
  %56 = extractvalue %runtime._string %1, 0, !dbg !2039
  %57 = getelementptr inbounds i8, ptr %56, i64 2, !dbg !2039
  %58 = load i8, ptr %57, align 1, !dbg !2039
    #dbg_value(i8 %58, !1973, !DIExpression(), !2040)
    #dbg_value(i8 %58, !1973, !DIExpression(), !2041)
  %59 = icmp ult i8 %58, -128, !dbg !2042
  br i1 %59, label %if.then9, label %cond.false10, !dbg !1981

if.then9:                                         ; preds = %cond.false10, %lookup.next34
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2043

cond.false10:                                     ; preds = %lookup.next34
    #dbg_value(i8 %58, !1973, !DIExpression(), !2044)
  %60 = icmp ult i8 -65, %58, !dbg !2045
  br i1 %60, label %if.then9, label %if.done11, !dbg !1981

if.done11:                                        ; preds = %cond.false10
    #dbg_value(i64 %27, !1970, !DIExpression(), !2046)
  %61 = icmp sle i64 %27, 3, !dbg !2047
  br i1 %61, label %if.then12, label %if.done13, !dbg !1981

if.then12:                                        ; preds = %if.done11
    #dbg_value(i8 %6, !1967, !DIExpression(), !2048)
  %62 = and i8 %6, 15, !dbg !2049
  %63 = zext i8 %62 to i32, !dbg !2050
  %64 = shl i32 %63, 12, !dbg !2051
  %shift.result35 = select i1 false, i32 0, i32 %64, !dbg !2051
    #dbg_value(i8 %37, !1972, !DIExpression(), !2052)
  %65 = and i8 %37, 63, !dbg !2053
  %66 = zext i8 %65 to i32, !dbg !2054
  %67 = shl i32 %66, 6, !dbg !2055
  %shift.result36 = select i1 false, i32 0, i32 %67, !dbg !2055
  %68 = or i32 %shift.result35, %shift.result36, !dbg !2056
    #dbg_value(i8 %58, !1973, !DIExpression(), !2057)
  %69 = and i8 %58, 63, !dbg !2058
  %70 = zext i8 %69 to i32, !dbg !2059
  %71 = or i32 %68, %70, !dbg !2060
  %72 = insertvalue { i32, i64 } zeroinitializer, i32 %71, 0, !dbg !2061
  %73 = insertvalue { i32, i64 } %72, i64 3, 1, !dbg !2061
  ret { i32, i64 } %73, !dbg !2061

if.done13:                                        ; preds = %if.done11
    #dbg_value(%runtime._string %1, !1965, !DIExpression(), !2062)
  %len37 = extractvalue %runtime._string %1, 1, !dbg !2063
  %74 = icmp uge i64 3, %len37, !dbg !2063
  br i1 %74, label %lookup.throw38, label %lookup.next39, !dbg !2063

lookup.next39:                                    ; preds = %if.done13
  %75 = extractvalue %runtime._string %1, 0, !dbg !2063
  %76 = getelementptr inbounds i8, ptr %75, i64 3, !dbg !2063
  %77 = load i8, ptr %76, align 1, !dbg !2063
    #dbg_value(i8 %77, !1974, !DIExpression(), !2064)
    #dbg_value(i8 %77, !1974, !DIExpression(), !2065)
  %78 = icmp ult i8 %77, -128, !dbg !2066
  br i1 %78, label %if.then14, label %cond.false15, !dbg !1981

if.then14:                                        ; preds = %cond.false15, %lookup.next39
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2067

cond.false15:                                     ; preds = %lookup.next39
    #dbg_value(i8 %77, !1974, !DIExpression(), !2068)
  %79 = icmp ult i8 -65, %77, !dbg !2069
  br i1 %79, label %if.then14, label %if.done16, !dbg !1981

if.done16:                                        ; preds = %cond.false15
    #dbg_value(i8 %6, !1967, !DIExpression(), !2070)
  %80 = and i8 %6, 7, !dbg !2071
  %81 = zext i8 %80 to i32, !dbg !2072
  %82 = shl i32 %81, 18, !dbg !2073
  %shift.result40 = select i1 false, i32 0, i32 %82, !dbg !2073
    #dbg_value(i8 %37, !1972, !DIExpression(), !2074)
  %83 = and i8 %37, 63, !dbg !2075
  %84 = zext i8 %83 to i32, !dbg !2076
  %85 = shl i32 %84, 12, !dbg !2077
  %shift.result41 = select i1 false, i32 0, i32 %85, !dbg !2077
  %86 = or i32 %shift.result40, %shift.result41, !dbg !2078
    #dbg_value(i8 %58, !1973, !DIExpression(), !2079)
  %87 = and i8 %58, 63, !dbg !2080
  %88 = zext i8 %87 to i32, !dbg !2081
  %89 = shl i32 %88, 6, !dbg !2082
  %shift.result42 = select i1 false, i32 0, i32 %89, !dbg !2082
  %90 = or i32 %86, %shift.result42, !dbg !2083
    #dbg_value(i8 %77, !1974, !DIExpression(), !2084)
  %91 = and i8 %77, 63, !dbg !2085
  %92 = zext i8 %91 to i32, !dbg !2086
  %93 = or i32 %90, %92, !dbg !2087
  %94 = insertvalue { i32, i64 } zeroinitializer, i32 %93, 0, !dbg !2088
  %95 = insertvalue { i32, i64 } %94, i64 4, 1, !dbg !2088
  ret { i32, i64 } %95, !dbg !2088

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !1984
  unreachable, !dbg !1984

lookup.throw18:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !1987
  unreachable, !dbg !1987

lookup.throw21:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !1997
  unreachable, !dbg !1997

lookup.throw24:                                   ; preds = %if.done2
  call void @runtime.lookupPanic(ptr undef), !dbg !2011
  unreachable, !dbg !2011

lookup.throw27:                                   ; preds = %if.done4
  call void @runtime.lookupPanic(ptr undef), !dbg !2018
  unreachable, !dbg !2018

deref.throw:                                      ; preds = %lookup.next28
  call void @runtime.nilPanic(ptr undef), !dbg !2021
  unreachable, !dbg !2021

deref.throw29:                                    ; preds = %cond.false
  call void @runtime.nilPanic(ptr undef), !dbg !2024
  unreachable, !dbg !2024

lookup.throw33:                                   ; preds = %if.done8
  call void @runtime.lookupPanic(ptr undef), !dbg !2039
  unreachable, !dbg !2039

lookup.throw38:                                   ; preds = %if.done13
  call void @runtime.lookupPanic(ptr undef), !dbg !2063
  unreachable, !dbg !2063
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"unicode/utf8.EncodeRune"(ptr %p.data, i64 %p.len, i64 %p.cap, i32 %r, ptr %context) #1 !dbg !2089 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !2099
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !2099
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !2099
    #dbg_value(ptr %p.data, !2097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2099)
    #dbg_value(i64 %p.len, !2097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2099)
    #dbg_value(i64 %p.cap, !2097, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2099)
    #dbg_value(i32 %r, !2098, !DIExpression(), !2099)
    #dbg_value(i32 %r, !2098, !DIExpression(), !2100)
  %3 = icmp ule i32 %r, 127, !dbg !2101
  br i1 %3, label %if.then, label %if.done, !dbg !2102

if.then:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2097, !DIExpression(), !2103)
    #dbg_value(i32 %r, !2098, !DIExpression(), !2104)
  %4 = trunc i32 %r to i8, !dbg !2105
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2106
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2106
  %5 = icmp uge i64 0, %indexaddr.len, !dbg !2106
  br i1 %5, label %lookup.throw, label %lookup.next, !dbg !2106

lookup.next:                                      ; preds = %if.then
  %6 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 0, !dbg !2106
  store i8 %4, ptr %6, align 1, !dbg !2106
  ret i64 1, !dbg !2107

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2097, !DIExpression(), !2108)
    #dbg_value(i32 %r, !2098, !DIExpression(), !2109)
  %7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2110
  %8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2110
  %9 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2110
  %10 = call i64 @"unicode/utf8.encodeRuneNonASCII"(ptr %7, i64 %8, i64 %9, i32 %r, ptr undef), !dbg !2110
  ret i64 %10, !dbg !2111

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2106
  unreachable, !dbg !2106
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"unicode/utf8.encodeRuneNonASCII"(ptr %p.data, i64 %p.len, i64 %p.cap, i32 %r, ptr %context) unnamed_addr #1 !dbg !2112 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !2117
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !2117
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !2117
    #dbg_value(ptr %p.data, !2114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2117)
    #dbg_value(i64 %p.len, !2114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2117)
    #dbg_value(i64 %p.cap, !2114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2117)
    #dbg_value(i32 %r, !2115, !DIExpression(), !2117)
    #dbg_value(i32 %r, !2115, !DIExpression(), !2118)
    #dbg_value(i32 %r, !2116, !DIExpression(), !2119)
    #dbg_value(i32 %r, !2116, !DIExpression(), !2120)
  %3 = icmp ule i32 %r, 2047, !dbg !2121
  br i1 %3, label %switch.body, label %switch.next, !dbg !2122

switch.body:                                      ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2114, !DIExpression(), !2123)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2124
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2124
  %4 = icmp uge i64 1, %indexaddr.len, !dbg !2124
  br i1 %4, label %lookup.throw, label %lookup.next, !dbg !2124

lookup.next:                                      ; preds = %switch.body
  %5 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 1, !dbg !2124
  %6 = load i8, ptr %5, align 1, !dbg !2124
    #dbg_value({ ptr, i64, i64 } %2, !2114, !DIExpression(), !2125)
    #dbg_value(i32 %r, !2115, !DIExpression(), !2126)
  %7 = ashr i32 %r, 6, !dbg !2127
  %8 = trunc i32 %7 to i8, !dbg !2128
  %9 = or i8 -64, %8, !dbg !2129
  %indexaddr.ptr8 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2130
  %indexaddr.len9 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2130
  %10 = icmp uge i64 0, %indexaddr.len9, !dbg !2130
  br i1 %10, label %lookup.throw10, label %lookup.next11, !dbg !2130

lookup.next11:                                    ; preds = %lookup.next
  %11 = getelementptr inbounds i8, ptr %indexaddr.ptr8, i64 0, !dbg !2130
  store i8 %9, ptr %11, align 1, !dbg !2130
    #dbg_value({ ptr, i64, i64 } %2, !2114, !DIExpression(), !2131)
    #dbg_value(i32 %r, !2115, !DIExpression(), !2132)
  %12 = trunc i32 %r to i8, !dbg !2133
  %13 = and i8 %12, 63, !dbg !2134
  %14 = or i8 -128, %13, !dbg !2135
  %indexaddr.ptr12 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2136
  %indexaddr.len13 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2136
  %15 = icmp uge i64 1, %indexaddr.len13, !dbg !2136
  br i1 %15, label %lookup.throw14, label %lookup.next15, !dbg !2136

lookup.next15:                                    ; preds = %lookup.next11
  %16 = getelementptr inbounds i8, ptr %indexaddr.ptr12, i64 1, !dbg !2136
  store i8 %14, ptr %16, align 1, !dbg !2136
  ret i64 2, !dbg !2137

switch.next:                                      ; preds = %entry
    #dbg_value(i32 %r, !2116, !DIExpression(), !2138)
  %17 = icmp ult i32 %r, 55296, !dbg !2139
  br i1 %17, label %switch.body1, label %switch.next2, !dbg !2122

switch.body1:                                     ; preds = %binop.done, %switch.next
    #dbg_value({ ptr, i64, i64 } %2, !2114, !DIExpression(), !2140)
  %indexaddr.ptr16 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2141
  %indexaddr.len17 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2141
  %18 = icmp uge i64 2, %indexaddr.len17, !dbg !2141
  br i1 %18, label %lookup.throw18, label %lookup.next19, !dbg !2141

lookup.next19:                                    ; preds = %switch.body1
  %19 = getelementptr inbounds i8, ptr %indexaddr.ptr16, i64 2, !dbg !2141
  %20 = load i8, ptr %19, align 1, !dbg !2141
    #dbg_value({ ptr, i64, i64 } %2, !2114, !DIExpression(), !2142)
    #dbg_value(i32 %r, !2115, !DIExpression(), !2143)
  %21 = ashr i32 %r, 12, !dbg !2144
  %22 = trunc i32 %21 to i8, !dbg !2145
  %23 = or i8 -32, %22, !dbg !2146
  %indexaddr.ptr20 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2147
  %indexaddr.len21 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2147
  %24 = icmp uge i64 0, %indexaddr.len21, !dbg !2147
  br i1 %24, label %lookup.throw22, label %lookup.next23, !dbg !2147

lookup.next23:                                    ; preds = %lookup.next19
  %25 = getelementptr inbounds i8, ptr %indexaddr.ptr20, i64 0, !dbg !2147
  store i8 %23, ptr %25, align 1, !dbg !2147
    #dbg_value({ ptr, i64, i64 } %2, !2114, !DIExpression(), !2148)
    #dbg_value(i32 %r, !2115, !DIExpression(), !2149)
  %26 = ashr i32 %r, 6, !dbg !2150
  %27 = trunc i32 %26 to i8, !dbg !2151
  %28 = and i8 %27, 63, !dbg !2152
  %29 = or i8 -128, %28, !dbg !2153
  %indexaddr.ptr24 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2154
  %indexaddr.len25 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2154
  %30 = icmp uge i64 1, %indexaddr.len25, !dbg !2154
  br i1 %30, label %lookup.throw26, label %lookup.next27, !dbg !2154

lookup.next27:                                    ; preds = %lookup.next23
  %31 = getelementptr inbounds i8, ptr %indexaddr.ptr24, i64 1, !dbg !2154
  store i8 %29, ptr %31, align 1, !dbg !2154
    #dbg_value({ ptr, i64, i64 } %2, !2114, !DIExpression(), !2155)
    #dbg_value(i32 %r, !2115, !DIExpression(), !2156)
  %32 = trunc i32 %r to i8, !dbg !2157
  %33 = and i8 %32, 63, !dbg !2158
  %34 = or i8 -128, %33, !dbg !2159
  %indexaddr.ptr28 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2160
  %indexaddr.len29 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2160
  %35 = icmp uge i64 2, %indexaddr.len29, !dbg !2160
  br i1 %35, label %lookup.throw30, label %lookup.next31, !dbg !2160

lookup.next31:                                    ; preds = %lookup.next27
  %36 = getelementptr inbounds i8, ptr %indexaddr.ptr28, i64 2, !dbg !2160
  store i8 %34, ptr %36, align 1, !dbg !2160
  ret i64 3, !dbg !2161

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i32 %r, !2116, !DIExpression(), !2162)
  %37 = icmp ult i32 57343, %r, !dbg !2163
  br i1 %37, label %binop.rhs, label %binop.done, !dbg !2122

binop.rhs:                                        ; preds = %switch.next2
    #dbg_value(i32 %r, !2116, !DIExpression(), !2164)
  %38 = icmp ule i32 %r, 65535, !dbg !2165
  br label %binop.done, !dbg !2122

binop.done:                                       ; preds = %binop.rhs, %switch.next2
  %39 = phi i1 [ false, %switch.next2 ], [ %38, %binop.rhs ], !dbg !2166
  br i1 %39, label %switch.body1, label %switch.next3, !dbg !2122

switch.next3:                                     ; preds = %binop.done
    #dbg_value(i32 %r, !2116, !DIExpression(), !2167)
  %40 = icmp ugt i32 %r, 65535, !dbg !2168
  br i1 %40, label %binop.rhs4, label %binop.done5, !dbg !2122

binop.rhs4:                                       ; preds = %switch.next3
    #dbg_value(i32 %r, !2116, !DIExpression(), !2169)
  %41 = icmp ule i32 %r, 1114111, !dbg !2170
  br label %binop.done5, !dbg !2122

binop.done5:                                      ; preds = %binop.rhs4, %switch.next3
  %42 = phi i1 [ false, %switch.next3 ], [ %41, %binop.rhs4 ], !dbg !2171
  br i1 %42, label %switch.body6, label %switch.next7, !dbg !2122

switch.body6:                                     ; preds = %binop.done5
    #dbg_value({ ptr, i64, i64 } %2, !2114, !DIExpression(), !2172)
  %indexaddr.ptr32 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2173
  %indexaddr.len33 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2173
  %43 = icmp uge i64 3, %indexaddr.len33, !dbg !2173
  br i1 %43, label %lookup.throw34, label %lookup.next35, !dbg !2173

lookup.next35:                                    ; preds = %switch.body6
  %44 = getelementptr inbounds i8, ptr %indexaddr.ptr32, i64 3, !dbg !2173
  %45 = load i8, ptr %44, align 1, !dbg !2173
    #dbg_value({ ptr, i64, i64 } %2, !2114, !DIExpression(), !2174)
    #dbg_value(i32 %r, !2115, !DIExpression(), !2175)
  %46 = ashr i32 %r, 18, !dbg !2176
  %47 = trunc i32 %46 to i8, !dbg !2177
  %48 = or i8 -16, %47, !dbg !2178
  %indexaddr.ptr36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2179
  %indexaddr.len37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2179
  %49 = icmp uge i64 0, %indexaddr.len37, !dbg !2179
  br i1 %49, label %lookup.throw38, label %lookup.next39, !dbg !2179

lookup.next39:                                    ; preds = %lookup.next35
  %50 = getelementptr inbounds i8, ptr %indexaddr.ptr36, i64 0, !dbg !2179
  store i8 %48, ptr %50, align 1, !dbg !2179
    #dbg_value({ ptr, i64, i64 } %2, !2114, !DIExpression(), !2180)
    #dbg_value(i32 %r, !2115, !DIExpression(), !2181)
  %51 = ashr i32 %r, 12, !dbg !2182
  %52 = trunc i32 %51 to i8, !dbg !2183
  %53 = and i8 %52, 63, !dbg !2184
  %54 = or i8 -128, %53, !dbg !2185
  %indexaddr.ptr40 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2186
  %indexaddr.len41 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2186
  %55 = icmp uge i64 1, %indexaddr.len41, !dbg !2186
  br i1 %55, label %lookup.throw42, label %lookup.next43, !dbg !2186

lookup.next43:                                    ; preds = %lookup.next39
  %56 = getelementptr inbounds i8, ptr %indexaddr.ptr40, i64 1, !dbg !2186
  store i8 %54, ptr %56, align 1, !dbg !2186
    #dbg_value({ ptr, i64, i64 } %2, !2114, !DIExpression(), !2187)
    #dbg_value(i32 %r, !2115, !DIExpression(), !2188)
  %57 = ashr i32 %r, 6, !dbg !2189
  %58 = trunc i32 %57 to i8, !dbg !2190
  %59 = and i8 %58, 63, !dbg !2191
  %60 = or i8 -128, %59, !dbg !2192
  %indexaddr.ptr44 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2193
  %indexaddr.len45 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2193
  %61 = icmp uge i64 2, %indexaddr.len45, !dbg !2193
  br i1 %61, label %lookup.throw46, label %lookup.next47, !dbg !2193

lookup.next47:                                    ; preds = %lookup.next43
  %62 = getelementptr inbounds i8, ptr %indexaddr.ptr44, i64 2, !dbg !2193
  store i8 %60, ptr %62, align 1, !dbg !2193
    #dbg_value({ ptr, i64, i64 } %2, !2114, !DIExpression(), !2194)
    #dbg_value(i32 %r, !2115, !DIExpression(), !2195)
  %63 = trunc i32 %r to i8, !dbg !2196
  %64 = and i8 %63, 63, !dbg !2197
  %65 = or i8 -128, %64, !dbg !2198
  %indexaddr.ptr48 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2199
  %indexaddr.len49 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2199
  %66 = icmp uge i64 3, %indexaddr.len49, !dbg !2199
  br i1 %66, label %lookup.throw50, label %lookup.next51, !dbg !2199

lookup.next51:                                    ; preds = %lookup.next47
  %67 = getelementptr inbounds i8, ptr %indexaddr.ptr48, i64 3, !dbg !2199
  store i8 %65, ptr %67, align 1, !dbg !2199
  ret i64 4, !dbg !2200

switch.next7:                                     ; preds = %binop.done5
    #dbg_value({ ptr, i64, i64 } %2, !2114, !DIExpression(), !2201)
  %indexaddr.ptr52 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2202
  %indexaddr.len53 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2202
  %68 = icmp uge i64 2, %indexaddr.len53, !dbg !2202
  br i1 %68, label %lookup.throw54, label %lookup.next55, !dbg !2202

lookup.next55:                                    ; preds = %switch.next7
  %69 = getelementptr inbounds i8, ptr %indexaddr.ptr52, i64 2, !dbg !2202
  %70 = load i8, ptr %69, align 1, !dbg !2202
    #dbg_value({ ptr, i64, i64 } %2, !2114, !DIExpression(), !2203)
  %indexaddr.ptr56 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2204
  %indexaddr.len57 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2204
  %71 = icmp uge i64 0, %indexaddr.len57, !dbg !2204
  br i1 %71, label %lookup.throw58, label %lookup.next59, !dbg !2204

lookup.next59:                                    ; preds = %lookup.next55
  %72 = getelementptr inbounds i8, ptr %indexaddr.ptr56, i64 0, !dbg !2204
  store i8 -17, ptr %72, align 1, !dbg !2204
    #dbg_value({ ptr, i64, i64 } %2, !2114, !DIExpression(), !2205)
  %indexaddr.ptr60 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2206
  %indexaddr.len61 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2206
  %73 = icmp uge i64 1, %indexaddr.len61, !dbg !2206
  br i1 %73, label %lookup.throw62, label %lookup.next63, !dbg !2206

lookup.next63:                                    ; preds = %lookup.next59
  %74 = getelementptr inbounds i8, ptr %indexaddr.ptr60, i64 1, !dbg !2206
  store i8 -65, ptr %74, align 1, !dbg !2206
    #dbg_value({ ptr, i64, i64 } %2, !2114, !DIExpression(), !2207)
  %indexaddr.ptr64 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2208
  %indexaddr.len65 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2208
  %75 = icmp uge i64 2, %indexaddr.len65, !dbg !2208
  br i1 %75, label %lookup.throw66, label %lookup.next67, !dbg !2208

lookup.next67:                                    ; preds = %lookup.next63
  %76 = getelementptr inbounds i8, ptr %indexaddr.ptr64, i64 2, !dbg !2208
  store i8 -67, ptr %76, align 1, !dbg !2208
  ret i64 3, !dbg !2209

lookup.throw:                                     ; preds = %switch.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2124
  unreachable, !dbg !2124

lookup.throw10:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !2130
  unreachable, !dbg !2130

lookup.throw14:                                   ; preds = %lookup.next11
  call void @runtime.lookupPanic(ptr undef), !dbg !2136
  unreachable, !dbg !2136

lookup.throw18:                                   ; preds = %switch.body1
  call void @runtime.lookupPanic(ptr undef), !dbg !2141
  unreachable, !dbg !2141

lookup.throw22:                                   ; preds = %lookup.next19
  call void @runtime.lookupPanic(ptr undef), !dbg !2147
  unreachable, !dbg !2147

lookup.throw26:                                   ; preds = %lookup.next23
  call void @runtime.lookupPanic(ptr undef), !dbg !2154
  unreachable, !dbg !2154

lookup.throw30:                                   ; preds = %lookup.next27
  call void @runtime.lookupPanic(ptr undef), !dbg !2160
  unreachable, !dbg !2160

lookup.throw34:                                   ; preds = %switch.body6
  call void @runtime.lookupPanic(ptr undef), !dbg !2173
  unreachable, !dbg !2173

lookup.throw38:                                   ; preds = %lookup.next35
  call void @runtime.lookupPanic(ptr undef), !dbg !2179
  unreachable, !dbg !2179

lookup.throw42:                                   ; preds = %lookup.next39
  call void @runtime.lookupPanic(ptr undef), !dbg !2186
  unreachable, !dbg !2186

lookup.throw46:                                   ; preds = %lookup.next43
  call void @runtime.lookupPanic(ptr undef), !dbg !2193
  unreachable, !dbg !2193

lookup.throw50:                                   ; preds = %lookup.next47
  call void @runtime.lookupPanic(ptr undef), !dbg !2199
  unreachable, !dbg !2199

lookup.throw54:                                   ; preds = %switch.next7
  call void @runtime.lookupPanic(ptr undef), !dbg !2202
  unreachable, !dbg !2202

lookup.throw58:                                   ; preds = %lookup.next55
  call void @runtime.lookupPanic(ptr undef), !dbg !2204
  unreachable, !dbg !2204

lookup.throw62:                                   ; preds = %lookup.next59
  call void @runtime.lookupPanic(ptr undef), !dbg !2206
  unreachable, !dbg !2206

lookup.throw66:                                   ; preds = %lookup.next63
  call void @runtime.lookupPanic(ptr undef), !dbg !2208
  unreachable, !dbg !2208
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"unicode/utf8.ValidRune"(i32 %r, ptr %context) #1 !dbg !2210 {
entry:
    #dbg_value(i32 %r, !2214, !DIExpression(), !2215)
    #dbg_value(i32 %r, !2214, !DIExpression(), !2216)
  %0 = icmp sle i32 0, %r, !dbg !2217
  br i1 %0, label %binop.rhs, label %binop.done, !dbg !2218

binop.rhs:                                        ; preds = %entry
    #dbg_value(i32 %r, !2214, !DIExpression(), !2219)
  %1 = icmp slt i32 %r, 55296, !dbg !2220
  br label %binop.done, !dbg !2218

binop.done:                                       ; preds = %binop.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %1, %binop.rhs ], !dbg !2221
  br i1 %2, label %switch.body, label %switch.next, !dbg !2218

switch.body:                                      ; preds = %binop.done
  ret i1 true, !dbg !2222

switch.next:                                      ; preds = %binop.done
    #dbg_value(i32 %r, !2214, !DIExpression(), !2223)
  %3 = icmp slt i32 57343, %r, !dbg !2224
  br i1 %3, label %binop.rhs1, label %binop.done2, !dbg !2218

binop.rhs1:                                       ; preds = %switch.next
    #dbg_value(i32 %r, !2214, !DIExpression(), !2225)
  %4 = icmp sle i32 %r, 1114111, !dbg !2226
  br label %binop.done2, !dbg !2218

binop.done2:                                      ; preds = %binop.rhs1, %switch.next
  %5 = phi i1 [ false, %switch.next ], [ %4, %binop.rhs1 ], !dbg !2227
  br i1 %5, label %switch.body3, label %switch.next4, !dbg !2218

switch.body3:                                     ; preds = %binop.done2
  ret i1 true, !dbg !2228

switch.next4:                                     ; preds = %binop.done2
  ret i1 false, !dbg !2229
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable(sync)
define internal i8 @"(*internal/reflectlite.RawType).Kind"(ptr dereferenceable_or_null(1) %t, ptr %context) #1 !dbg !2230 {
entry:
    #dbg_value(ptr %t, !2234, !DIExpression(), !2236)
    #dbg_value(ptr %t, !2234, !DIExpression(), !2237)
  %0 = icmp eq ptr %t, null, !dbg !2238
  br i1 %0, label %if.then, label %if.done, !dbg !2239

if.then:                                          ; preds = %entry
  ret i8 0, !dbg !2240

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2234, !DIExpression(), !2241)
  %1 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2242
    #dbg_value(i64 %1, !2235, !DIExpression(), !2243)
    #dbg_value(i64 %1, !2235, !DIExpression(), !2244)
  %2 = icmp ne i64 %1, 0, !dbg !2245
  br i1 %2, label %if.then1, label %if.done2, !dbg !2239

if.then1:                                         ; preds = %if.done
  ret i8 21, !dbg !2246

if.done2:                                         ; preds = %if.done
    #dbg_value(ptr %t, !2234, !DIExpression(), !2247)
  %3 = icmp eq ptr %t, null, !dbg !2248
  br i1 %3, label %gep.throw, label %gep.next, !dbg !2248

gep.next:                                         ; preds = %if.done2
  %4 = getelementptr inbounds %"internal/reflectlite.RawType", ptr %t, i32 0, i32 0, !dbg !2248
  %5 = icmp eq ptr %4, null, !dbg !2248
  br i1 %5, label %deref.throw, label %deref.next, !dbg !2248

deref.next:                                       ; preds = %gep.next
  %6 = load i8, ptr %4, align 1, !dbg !2248
  %7 = and i8 %6, 31, !dbg !2249
  ret i8 %7, !dbg !2250

gep.throw:                                        ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2248
  unreachable, !dbg !2248

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2248
  unreachable, !dbg !2248
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).elem"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2251 {
entry:
    #dbg_value(ptr %t, !2253, !DIExpression(), !2257)
    #dbg_value(ptr %t, !2253, !DIExpression(), !2258)
  %0 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2259
    #dbg_value(i64 %0, !2254, !DIExpression(), !2260)
    #dbg_value(i64 %0, !2254, !DIExpression(), !2261)
  %1 = icmp ne i64 %0, 0, !dbg !2262
  br i1 %1, label %if.then, label %if.done, !dbg !2263

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2253, !DIExpression(), !2264)
  %2 = getelementptr i8, ptr %t, i64 -1, !dbg !2265
  ret ptr %2, !dbg !2266

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2253, !DIExpression(), !2267)
  %3 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2268
    #dbg_value(ptr %3, !2255, !DIExpression(), !2269)
    #dbg_value(ptr %3, !2255, !DIExpression(), !2270)
  %4 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %3, ptr undef), !dbg !2271
  %5 = icmp eq i8 %4, 21, !dbg !2272
  br i1 %5, label %switch.body, label %switch.next, !dbg !2263

switch.body:                                      ; preds = %if.done
    #dbg_value(ptr %3, !2255, !DIExpression(), !2273)
  %6 = getelementptr inbounds %"internal/reflectlite.ptrType", ptr %3, i32 0, i32 2, !dbg !2274
  %7 = icmp eq ptr %6, null, !dbg !2274
  br i1 %7, label %deref.throw, label %deref.next, !dbg !2274

deref.next:                                       ; preds = %switch.body
  %8 = load ptr, ptr %6, align 8, !dbg !2274
  ret ptr %8, !dbg !2275

switch.next:                                      ; preds = %if.done
  %9 = icmp eq i8 %4, 19, !dbg !2276
  br i1 %9, label %switch.body1, label %switch.next2, !dbg !2263

switch.body1:                                     ; preds = %switch.next4, %switch.next3, %switch.next2, %switch.next
    #dbg_value(ptr %3, !2255, !DIExpression(), !2277)
  %10 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %3, i32 0, i32 3, !dbg !2278
  %11 = icmp eq ptr %10, null, !dbg !2278
  br i1 %11, label %deref.throw6, label %deref.next7, !dbg !2278

deref.next7:                                      ; preds = %switch.body1
  %12 = load ptr, ptr %10, align 8, !dbg !2278
  ret ptr %12, !dbg !2279

switch.next2:                                     ; preds = %switch.next
  %13 = icmp eq i8 %4, 22, !dbg !2280
  br i1 %13, label %switch.body1, label %switch.next3, !dbg !2263

switch.next3:                                     ; preds = %switch.next2
  %14 = icmp eq i8 %4, 23, !dbg !2281
  br i1 %14, label %switch.body1, label %switch.next4, !dbg !2263

switch.next4:                                     ; preds = %switch.next3
  %15 = icmp eq i8 %4, 25, !dbg !2282
  br i1 %15, label %switch.body1, label %switch.next5, !dbg !2263

switch.next5:                                     ; preds = %switch.next4
  %16 = load ptr, ptr @"internal/reflectlite.errTypeElem", align 8, !dbg !2283
    #dbg_value(ptr %16, !2256, !DIExpression(), !2283)
  %17 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %16, 1, !dbg !2283
  %18 = extractvalue { ptr, ptr } %17, 0, !dbg !2284
  %19 = extractvalue { ptr, ptr } %17, 1, !dbg !2284
  call void @runtime._panic(ptr %18, ptr %19, ptr undef), !dbg !2284
  unreachable, !dbg !2284

deref.throw:                                      ; preds = %switch.body
  call void @runtime.nilPanic(ptr undef), !dbg !2274
  unreachable, !dbg !2274

deref.throw6:                                     ; preds = %switch.body1
  call void @runtime.nilPanic(ptr undef), !dbg !2278
  unreachable, !dbg !2278
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).Len"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2285 {
entry:
    #dbg_value(ptr %t, !2287, !DIExpression(), !2289)
    #dbg_value(ptr %t, !2287, !DIExpression(), !2290)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2291
  %1 = icmp ne i8 %0, 23, !dbg !2292
  br i1 %1, label %if.then, label %if.done, !dbg !2293

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeLen", align 8, !dbg !2294
    #dbg_value(ptr %2, !2288, !DIExpression(), !2294)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2294
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2295
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2295
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2295
  unreachable, !dbg !2295

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2287, !DIExpression(), !2296)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2297
  %7 = getelementptr inbounds %"internal/reflectlite.arrayType", ptr %6, i32 0, i32 4, !dbg !2298
  %8 = icmp eq ptr %7, null, !dbg !2298
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2298

deref.next:                                       ; preds = %if.done
  %9 = load i64, ptr %7, align 8, !dbg !2298
  ret i64 %9, !dbg !2299

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2298
  unreachable, !dbg !2298
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).underlying"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2300 {
entry:
    #dbg_value(ptr %t, !2302, !DIExpression(), !2303)
    #dbg_value(ptr %t, !2302, !DIExpression(), !2304)
  %0 = call i1 @"(*internal/reflectlite.RawType).isNamed"(ptr %t, ptr undef), !dbg !2305
  br i1 %0, label %if.then, label %if.done, !dbg !2306

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2302, !DIExpression(), !2307)
  %1 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %t, i32 0, i32 3, !dbg !2308
  %2 = icmp eq ptr %1, null, !dbg !2308
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2308

deref.next:                                       ; preds = %if.then
  %3 = load ptr, ptr %1, align 8, !dbg !2308
  ret ptr %3, !dbg !2309

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2302, !DIExpression(), !2310)
  ret ptr %t, !dbg !2311

deref.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2308
  unreachable, !dbg !2308
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*internal/reflectlite.RawType).isNamed"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2312 {
entry:
    #dbg_value(ptr %t, !2314, !DIExpression(), !2316)
    #dbg_value(ptr %t, !2314, !DIExpression(), !2317)
  %0 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2318
    #dbg_value(i64 %0, !2315, !DIExpression(), !2319)
    #dbg_value(i64 %0, !2315, !DIExpression(), !2320)
  %1 = icmp ne i64 %0, 0, !dbg !2321
  br i1 %1, label %if.then, label %if.done, !dbg !2322

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !2323

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2314, !DIExpression(), !2324)
  %2 = icmp eq ptr %t, null, !dbg !2325
  br i1 %2, label %gep.throw, label %gep.next, !dbg !2325

gep.next:                                         ; preds = %if.done
  %3 = getelementptr inbounds %"internal/reflectlite.RawType", ptr %t, i32 0, i32 0, !dbg !2325
  %4 = icmp eq ptr %3, null, !dbg !2325
  br i1 %4, label %deref.throw, label %deref.next, !dbg !2325

deref.next:                                       ; preds = %gep.next
  %5 = load i8, ptr %3, align 1, !dbg !2325
  %6 = and i8 %5, 32, !dbg !2326
  %7 = icmp ne i8 %6, 0, !dbg !2327
  ret i1 %7, !dbg !2328

gep.throw:                                        ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2325
  unreachable, !dbg !2325

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2325
  unreachable, !dbg !2325
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2329 {
entry:
    #dbg_value(ptr %t, !2331, !DIExpression(), !2332)
    #dbg_value(ptr %t, !2331, !DIExpression(), !2333)
  %0 = ptrtoint ptr %t to i64, !dbg !2334
  %1 = and i64 %0, 3, !dbg !2335
  ret i64 %1, !dbg !2336
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.TypeError).Error"(ptr dereferenceable_or_null(16) %e, ptr %context) unnamed_addr #1 !dbg !2337 {
entry:
    #dbg_value(ptr %e, !2341, !DIExpression(), !2342)
    #dbg_value(ptr %e, !2341, !DIExpression(), !2343)
  %0 = icmp eq ptr %e, null, !dbg !2344
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2344

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds { %runtime._string }, ptr %e, i32 0, i32 0, !dbg !2344
  %2 = icmp eq ptr %1, null, !dbg !2344
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2344

deref.next:                                       ; preds = %gep.next
  %3 = load %runtime._string, ptr %1, align 8, !dbg !2344
  %4 = extractvalue %runtime._string %3, 0, !dbg !2345
  %5 = extractvalue %runtime._string %3, 1, !dbg !2345
  %6 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.111", i64 30, ptr %4, i64 %5, ptr undef), !dbg !2345
  %7 = extractvalue %runtime._string %6, 0, !dbg !2346
  %8 = extractvalue %runtime._string %6, 1, !dbg !2346
  %9 = call %runtime._string @runtime.stringConcat(ptr %7, i64 %8, ptr @"internal/reflectlite$string.112", i64 16, ptr undef), !dbg !2346
  ret %runtime._string %9, !dbg !2347

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2344
  unreachable, !dbg !2344

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2344
  unreachable, !dbg !2344
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).ChanDir"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2348 {
entry:
    #dbg_value(ptr %t, !2350, !DIExpression(), !2353)
    #dbg_value(ptr %t, !2350, !DIExpression(), !2354)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2355
  %1 = icmp ne i8 %0, 19, !dbg !2356
  br i1 %1, label %if.then, label %if.done, !dbg !2357

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeChanDir", align 8, !dbg !2358
    #dbg_value(ptr %2, !2351, !DIExpression(), !2358)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2358
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2359
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2359
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2359
  unreachable, !dbg !2359

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2350, !DIExpression(), !2360)
  %6 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %t, i32 0, i32 1, !dbg !2361
  %7 = icmp eq ptr %6, null, !dbg !2361
  br i1 %7, label %deref.throw, label %deref.next, !dbg !2361

deref.next:                                       ; preds = %if.done
  %8 = load i16, ptr %6, align 2, !dbg !2361
  %9 = zext i16 %8 to i64, !dbg !2362
    #dbg_value(i64 %9, !2352, !DIExpression(), !2363)
    #dbg_value(i64 %9, !2352, !DIExpression(), !2364)
  ret i64 %9, !dbg !2365

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2361
  unreachable, !dbg !2361
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).NumField"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2366 {
entry:
    #dbg_value(ptr %t, !2368, !DIExpression(), !2370)
    #dbg_value(ptr %t, !2368, !DIExpression(), !2371)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2372
  %1 = icmp ne i8 %0, 26, !dbg !2373
  br i1 %1, label %if.then, label %if.done, !dbg !2374

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeNumField", align 8, !dbg !2375
    #dbg_value(ptr %2, !2369, !DIExpression(), !2375)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2375
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2376
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2376
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2376
  unreachable, !dbg !2376

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2368, !DIExpression(), !2377)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2378
  %7 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 5, !dbg !2379
  %8 = icmp eq ptr %7, null, !dbg !2379
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2379

deref.next:                                       ; preds = %if.done
  %9 = load i16, ptr %7, align 2, !dbg !2379
  %10 = zext i16 %9 to i64, !dbg !2380
  ret i64 %10, !dbg !2381

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2379
  unreachable, !dbg !2379
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.RawType).String"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2382 {
entry:
    #dbg_value(ptr %t, !2384, !DIExpression(), !2400)
    #dbg_value(ptr %t, !2384, !DIExpression(), !2401)
  %f = alloca %"internal/reflectlite.rawStructField", align 8, !dbg !2402
  %0 = call i1 @"(*internal/reflectlite.RawType).isNamed"(ptr %t, ptr undef), !dbg !2402
  br i1 %0, label %if.then, label %if.done2, !dbg !2403

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2384, !DIExpression(), !2404)
  %1 = call %runtime._string @"(*internal/reflectlite.RawType).name"(ptr %t, ptr undef), !dbg !2405
    #dbg_value(%runtime._string %1, !2385, !DIExpression(), !2406)
    #dbg_value(%runtime._string %1, !2385, !DIExpression(), !2407)
  %len = extractvalue %runtime._string %1, 1, !dbg !2408
  %2 = icmp uge i64 0, %len, !dbg !2408
  br i1 %2, label %lookup.throw, label %lookup.next, !dbg !2408

lookup.next:                                      ; preds = %if.then
  %3 = extractvalue %runtime._string %1, 0, !dbg !2408
  %4 = getelementptr inbounds i8, ptr %3, i64 0, !dbg !2408
  %5 = load i8, ptr %4, align 1, !dbg !2408
  %6 = icmp eq i8 %5, 46, !dbg !2409
  br i1 %6, label %if.then1, label %if.done, !dbg !2403

if.then1:                                         ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2385, !DIExpression(), !2410)
  %7 = extractvalue %runtime._string %1, 0, !dbg !2411
  %8 = extractvalue %runtime._string %1, 1, !dbg !2411
  %slice.lowhigh = icmp ugt i64 1, %8, !dbg !2411
  %slice.highmax = icmp ugt i64 %8, %8, !dbg !2411
  %slice.maxcap = icmp ugt i64 %8, %8, !dbg !2411
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2411
  %slice.lowcap = or i1 %slice.lowmax, %slice.maxcap, !dbg !2411
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2411

slice.next:                                       ; preds = %if.then1
  %9 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !2411
  %10 = sub i64 %8, 1, !dbg !2411
  %11 = insertvalue %runtime._string undef, ptr %9, 0, !dbg !2411
  %12 = insertvalue %runtime._string %11, i64 %10, 1, !dbg !2411
  ret %runtime._string %12, !dbg !2412

if.done:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2385, !DIExpression(), !2413)
  ret %runtime._string %1, !dbg !2414

if.done2:                                         ; preds = %entry
    #dbg_value(ptr %t, !2384, !DIExpression(), !2415)
  %13 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2416
  %14 = icmp eq i8 %13, 19, !dbg !2417
  br i1 %14, label %switch.body, label %switch.next10, !dbg !2403

switch.body:                                      ; preds = %if.done2
    #dbg_value(ptr %t, !2384, !DIExpression(), !2418)
  %15 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2419
  %16 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %15, ptr undef), !dbg !2420
    #dbg_value(%runtime._string %16, !2386, !DIExpression(), !2421)
    #dbg_value(ptr %t, !2384, !DIExpression(), !2422)
  %17 = call i64 @"(*internal/reflectlite.RawType).ChanDir"(ptr %t, ptr undef), !dbg !2423
  %18 = icmp eq i64 %17, 2, !dbg !2424
  br i1 %18, label %switch.body3, label %switch.next, !dbg !2403

switch.body3:                                     ; preds = %switch.body
    #dbg_value(%runtime._string %16, !2386, !DIExpression(), !2425)
  %19 = extractvalue %runtime._string %16, 0, !dbg !2426
  %20 = extractvalue %runtime._string %16, 1, !dbg !2426
  %21 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.87", i64 7, ptr %19, i64 %20, ptr undef), !dbg !2426
  ret %runtime._string %21, !dbg !2427

switch.next:                                      ; preds = %switch.body
  %22 = icmp eq i64 %17, 1, !dbg !2428
  br i1 %22, label %switch.body4, label %switch.next5, !dbg !2403

switch.body4:                                     ; preds = %switch.next
    #dbg_value(%runtime._string %16, !2386, !DIExpression(), !2429)
  %23 = extractvalue %runtime._string %16, 0, !dbg !2430
  %24 = extractvalue %runtime._string %16, 1, !dbg !2430
  %25 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.88", i64 7, ptr %23, i64 %24, ptr undef), !dbg !2430
  ret %runtime._string %25, !dbg !2431

switch.next5:                                     ; preds = %switch.next
  %26 = icmp eq i64 %17, 3, !dbg !2432
  br i1 %26, label %switch.body6, label %switch.next9, !dbg !2403

switch.body6:                                     ; preds = %switch.next5
    #dbg_value(%runtime._string %16, !2386, !DIExpression(), !2433)
  %len29 = extractvalue %runtime._string %16, 1, !dbg !2434
  %27 = icmp uge i64 0, %len29, !dbg !2434
  br i1 %27, label %lookup.throw30, label %lookup.next31, !dbg !2434

lookup.next31:                                    ; preds = %switch.body6
  %28 = extractvalue %runtime._string %16, 0, !dbg !2434
  %29 = getelementptr inbounds i8, ptr %28, i64 0, !dbg !2434
  %30 = load i8, ptr %29, align 1, !dbg !2434
  %31 = icmp eq i8 %30, 60, !dbg !2435
  br i1 %31, label %if.then7, label %if.done8, !dbg !2403

if.then7:                                         ; preds = %lookup.next31
    #dbg_value(%runtime._string %16, !2386, !DIExpression(), !2436)
  %32 = extractvalue %runtime._string %16, 0, !dbg !2437
  %33 = extractvalue %runtime._string %16, 1, !dbg !2437
  %34 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.89", i64 6, ptr %32, i64 %33, ptr undef), !dbg !2437
  %35 = extractvalue %runtime._string %34, 0, !dbg !2438
  %36 = extractvalue %runtime._string %34, 1, !dbg !2438
  %37 = call %runtime._string @runtime.stringConcat(ptr %35, i64 %36, ptr @"internal/reflectlite$string.90", i64 1, ptr undef), !dbg !2438
  ret %runtime._string %37, !dbg !2439

if.done8:                                         ; preds = %lookup.next31
    #dbg_value(%runtime._string %16, !2386, !DIExpression(), !2440)
  %38 = extractvalue %runtime._string %16, 0, !dbg !2441
  %39 = extractvalue %runtime._string %16, 1, !dbg !2441
  %40 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.91", i64 5, ptr %38, i64 %39, ptr undef), !dbg !2441
  ret %runtime._string %40, !dbg !2442

switch.next9:                                     ; preds = %switch.next5
    #dbg_value(ptr %t, !2384, !DIExpression(), !2443)
  %41 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2444
  %42 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %41, ptr undef), !dbg !2445
  ret %runtime._string %42, !dbg !2446

switch.next10:                                    ; preds = %if.done2
  %43 = icmp eq i8 %13, 21, !dbg !2447
  br i1 %43, label %switch.body11, label %switch.next12, !dbg !2403

switch.body11:                                    ; preds = %switch.next10
    #dbg_value(ptr %t, !2384, !DIExpression(), !2448)
  %44 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2449
  %45 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %44, ptr undef), !dbg !2450
  %46 = extractvalue %runtime._string %45, 0, !dbg !2451
  %47 = extractvalue %runtime._string %45, 1, !dbg !2451
  %48 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.92", i64 1, ptr %46, i64 %47, ptr undef), !dbg !2451
  ret %runtime._string %48, !dbg !2452

switch.next12:                                    ; preds = %switch.next10
  %49 = icmp eq i8 %13, 22, !dbg !2453
  br i1 %49, label %switch.body13, label %switch.next14, !dbg !2403

switch.body13:                                    ; preds = %switch.next12
    #dbg_value(ptr %t, !2384, !DIExpression(), !2454)
  %50 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2455
  %51 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %50, ptr undef), !dbg !2456
  %52 = extractvalue %runtime._string %51, 0, !dbg !2457
  %53 = extractvalue %runtime._string %51, 1, !dbg !2457
  %54 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.93", i64 2, ptr %52, i64 %53, ptr undef), !dbg !2457
  ret %runtime._string %54, !dbg !2458

switch.next14:                                    ; preds = %switch.next12
  %55 = icmp eq i8 %13, 23, !dbg !2459
  br i1 %55, label %switch.body15, label %switch.next16, !dbg !2403

switch.body15:                                    ; preds = %switch.next14
    #dbg_value(ptr %t, !2384, !DIExpression(), !2460)
  %56 = call i64 @"(*internal/reflectlite.RawType).Len"(ptr %t, ptr undef), !dbg !2461
  %57 = call %runtime._string @"internal/itoa.Itoa"(i64 %56, ptr undef), !dbg !2462
  %58 = extractvalue %runtime._string %57, 0, !dbg !2463
  %59 = extractvalue %runtime._string %57, 1, !dbg !2463
  %60 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.94", i64 1, ptr %58, i64 %59, ptr undef), !dbg !2463
  %61 = extractvalue %runtime._string %60, 0, !dbg !2464
  %62 = extractvalue %runtime._string %60, 1, !dbg !2464
  %63 = call %runtime._string @runtime.stringConcat(ptr %61, i64 %62, ptr @"internal/reflectlite$string.95", i64 1, ptr undef), !dbg !2464
    #dbg_value(ptr %t, !2384, !DIExpression(), !2465)
  %64 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2466
  %65 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %64, ptr undef), !dbg !2467
  %66 = extractvalue %runtime._string %63, 0, !dbg !2468
  %67 = extractvalue %runtime._string %63, 1, !dbg !2468
  %68 = extractvalue %runtime._string %65, 0, !dbg !2468
  %69 = extractvalue %runtime._string %65, 1, !dbg !2468
  %70 = call %runtime._string @runtime.stringConcat(ptr %66, i64 %67, ptr %68, i64 %69, ptr undef), !dbg !2468
  ret %runtime._string %70, !dbg !2469

switch.next16:                                    ; preds = %switch.next14
  %71 = icmp eq i8 %13, 25, !dbg !2470
  br i1 %71, label %switch.body17, label %switch.next18, !dbg !2403

switch.body17:                                    ; preds = %switch.next16
    #dbg_value(ptr %t, !2384, !DIExpression(), !2471)
  %72 = call ptr @"(*internal/reflectlite.RawType).key"(ptr %t, ptr undef), !dbg !2472
  %73 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %72, ptr undef), !dbg !2473
  %74 = extractvalue %runtime._string %73, 0, !dbg !2474
  %75 = extractvalue %runtime._string %73, 1, !dbg !2474
  %76 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.96", i64 4, ptr %74, i64 %75, ptr undef), !dbg !2474
  %77 = extractvalue %runtime._string %76, 0, !dbg !2475
  %78 = extractvalue %runtime._string %76, 1, !dbg !2475
  %79 = call %runtime._string @runtime.stringConcat(ptr %77, i64 %78, ptr @"internal/reflectlite$string.97", i64 1, ptr undef), !dbg !2475
    #dbg_value(ptr %t, !2384, !DIExpression(), !2476)
  %80 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2477
  %81 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %80, ptr undef), !dbg !2478
  %82 = extractvalue %runtime._string %79, 0, !dbg !2479
  %83 = extractvalue %runtime._string %79, 1, !dbg !2479
  %84 = extractvalue %runtime._string %81, 0, !dbg !2479
  %85 = extractvalue %runtime._string %81, 1, !dbg !2479
  %86 = call %runtime._string @runtime.stringConcat(ptr %82, i64 %83, ptr %84, i64 %85, ptr undef), !dbg !2479
  ret %runtime._string %86, !dbg !2480

switch.next18:                                    ; preds = %switch.next16
  %87 = icmp eq i8 %13, 26, !dbg !2481
  br i1 %87, label %switch.body19, label %switch.next26, !dbg !2403

switch.body19:                                    ; preds = %switch.next18
    #dbg_value(ptr %t, !2384, !DIExpression(), !2482)
  %88 = call i64 @"(*internal/reflectlite.RawType).NumField"(ptr %t, ptr undef), !dbg !2483
    #dbg_value(i64 %88, !2387, !DIExpression(), !2484)
    #dbg_value(i64 %88, !2387, !DIExpression(), !2485)
  %89 = icmp eq i64 %88, 0, !dbg !2486
  br i1 %89, label %if.then20, label %if.done21, !dbg !2403

if.then20:                                        ; preds = %switch.body19
  ret %runtime._string { ptr @"internal/reflectlite$string.98", i64 9 }, !dbg !2487

if.done21:                                        ; preds = %switch.body19
    #dbg_value(%runtime._string poison, !2388, !DIExpression(), !2488)
    #dbg_value(i64 0, !2389, !DIExpression(), !2489)
  br label %for.loop, !dbg !2403

for.loop:                                         ; preds = %if.done25, %if.done21
  %90 = phi %runtime._string [ { ptr @"internal/reflectlite$string.106", i64 8 }, %if.done21 ], [ %144, %if.done25 ], !dbg !2488
  %91 = phi i64 [ 0, %if.done21 ], [ %145, %if.done25 ], !dbg !2489
    #dbg_value(i64 %91, !2389, !DIExpression(), !2490)
    #dbg_value(i64 %88, !2387, !DIExpression(), !2491)
  %92 = icmp slt i64 %91, %88, !dbg !2492
  br i1 %92, label %for.body, label %for.done, !dbg !2403

for.body:                                         ; preds = %for.loop
  store %"internal/reflectlite.rawStructField" zeroinitializer, ptr %f, align 8, !dbg !2402
    #dbg_value(ptr %t, !2384, !DIExpression(), !2493)
    #dbg_value(i64 %91, !2389, !DIExpression(), !2494)
  %93 = call %"internal/reflectlite.rawStructField" @"(*internal/reflectlite.RawType).rawField"(ptr %t, i64 %91, ptr undef), !dbg !2495
  store %"internal/reflectlite.rawStructField" %93, ptr %f, align 8, !dbg !2496
    #dbg_value(%"internal/reflectlite.rawStructField" %93, !2390, !DIExpression(), !2496)
  %94 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 0, !dbg !2497
  %95 = icmp eq ptr %94, null, !dbg !2497
  br i1 %95, label %deref.throw, label %deref.next, !dbg !2497

deref.next:                                       ; preds = %for.body
  %96 = load %runtime._string, ptr %94, align 8, !dbg !2497
  %97 = extractvalue %runtime._string %96, 0, !dbg !2498
  %98 = extractvalue %runtime._string %96, 1, !dbg !2498
  %99 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.100", i64 1, ptr %97, i64 %98, ptr undef), !dbg !2498
  %100 = extractvalue %runtime._string %99, 0, !dbg !2499
  %101 = extractvalue %runtime._string %99, 1, !dbg !2499
  %102 = call %runtime._string @runtime.stringConcat(ptr %100, i64 %101, ptr @"internal/reflectlite$string.101", i64 1, ptr undef), !dbg !2499
  %103 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 2, !dbg !2500
  %104 = icmp eq ptr %103, null, !dbg !2500
  br i1 %104, label %deref.throw32, label %deref.next33, !dbg !2500

deref.next33:                                     ; preds = %deref.next
  %105 = load ptr, ptr %103, align 8, !dbg !2500
  %106 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %105, ptr undef), !dbg !2501
  %107 = extractvalue %runtime._string %102, 0, !dbg !2502
  %108 = extractvalue %runtime._string %102, 1, !dbg !2502
  %109 = extractvalue %runtime._string %106, 0, !dbg !2502
  %110 = extractvalue %runtime._string %106, 1, !dbg !2502
  %111 = call %runtime._string @runtime.stringConcat(ptr %107, i64 %108, ptr %109, i64 %110, ptr undef), !dbg !2502
  %112 = extractvalue %runtime._string %90, 0, !dbg !2503
  %113 = extractvalue %runtime._string %90, 1, !dbg !2503
  %114 = extractvalue %runtime._string %111, 0, !dbg !2503
  %115 = extractvalue %runtime._string %111, 1, !dbg !2503
  %116 = call %runtime._string @runtime.stringConcat(ptr %112, i64 %113, ptr %114, i64 %115, ptr undef), !dbg !2503
    #dbg_value(%runtime._string %116, !2388, !DIExpression(), !2503)
  %117 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 3, !dbg !2504
  %118 = icmp eq ptr %117, null, !dbg !2504
  br i1 %118, label %deref.throw34, label %deref.next35, !dbg !2504

deref.next35:                                     ; preds = %deref.next33
  %119 = load %runtime._string, ptr %117, align 8, !dbg !2504
  %120 = extractvalue %runtime._string %119, 0, !dbg !2505
  %121 = extractvalue %runtime._string %119, 1, !dbg !2505
  %122 = call i1 @runtime.stringEqual(ptr %120, i64 %121, ptr null, i64 0, ptr undef), !dbg !2505
  %123 = xor i1 %122, true, !dbg !2505
  br i1 %123, label %if.then22, label %if.done23, !dbg !2403

if.then22:                                        ; preds = %deref.next35
  %124 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 3, !dbg !2506
  %125 = icmp eq ptr %124, null, !dbg !2506
  br i1 %125, label %deref.throw36, label %deref.next37, !dbg !2506

deref.next37:                                     ; preds = %if.then22
  %126 = load %runtime._string, ptr %124, align 8, !dbg !2506
  %127 = extractvalue %runtime._string %126, 0, !dbg !2507
  %128 = extractvalue %runtime._string %126, 1, !dbg !2507
  %129 = call %runtime._string @"internal/reflectlite.quote"(ptr %127, i64 %128, ptr undef), !dbg !2507
  %130 = extractvalue %runtime._string %129, 0, !dbg !2508
  %131 = extractvalue %runtime._string %129, 1, !dbg !2508
  %132 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.102", i64 1, ptr %130, i64 %131, ptr undef), !dbg !2508
  %133 = extractvalue %runtime._string %116, 0, !dbg !2509
  %134 = extractvalue %runtime._string %116, 1, !dbg !2509
  %135 = extractvalue %runtime._string %132, 0, !dbg !2509
  %136 = extractvalue %runtime._string %132, 1, !dbg !2509
  %137 = call %runtime._string @runtime.stringConcat(ptr %133, i64 %134, ptr %135, i64 %136, ptr undef), !dbg !2509
    #dbg_value(%runtime._string %137, !2388, !DIExpression(), !2509)
  br label %if.done23, !dbg !2403

if.done23:                                        ; preds = %deref.next37, %deref.next35
  %138 = phi %runtime._string [ %116, %deref.next35 ], [ %137, %deref.next37 ], !dbg !2488
    #dbg_value(i64 %91, !2389, !DIExpression(), !2510)
    #dbg_value(i64 %88, !2387, !DIExpression(), !2511)
  %139 = sub i64 %88, 1, !dbg !2512
  %140 = icmp slt i64 %91, %139, !dbg !2513
  br i1 %140, label %if.then24, label %if.done25, !dbg !2403

if.then24:                                        ; preds = %if.done23
  %141 = extractvalue %runtime._string %138, 0, !dbg !2514
  %142 = extractvalue %runtime._string %138, 1, !dbg !2514
  %143 = call %runtime._string @runtime.stringConcat(ptr %141, i64 %142, ptr @"internal/reflectlite$string.103", i64 1, ptr undef), !dbg !2514
    #dbg_value(%runtime._string %143, !2388, !DIExpression(), !2514)
  br label %if.done25, !dbg !2403

if.done25:                                        ; preds = %if.then24, %if.done23
  %144 = phi %runtime._string [ %138, %if.done23 ], [ %143, %if.then24 ], !dbg !2488
  %145 = add i64 %91, 1, !dbg !2515
    #dbg_value(i64 %145, !2389, !DIExpression(), !2515)
  br label %for.loop, !dbg !2403

for.done:                                         ; preds = %for.loop
  %146 = extractvalue %runtime._string %90, 0, !dbg !2516
  %147 = extractvalue %runtime._string %90, 1, !dbg !2516
  %148 = call %runtime._string @runtime.stringConcat(ptr %146, i64 %147, ptr @"internal/reflectlite$string.104", i64 2, ptr undef), !dbg !2516
    #dbg_value(%runtime._string %148, !2388, !DIExpression(), !2516)
    #dbg_value(%runtime._string %148, !2388, !DIExpression(), !2517)
  ret %runtime._string %148, !dbg !2518

switch.next26:                                    ; preds = %switch.next18
  %149 = icmp eq i8 %13, 20, !dbg !2519
  br i1 %149, label %switch.body27, label %switch.next28, !dbg !2403

switch.body27:                                    ; preds = %switch.next26
  ret %runtime._string { ptr @"internal/reflectlite$string.105", i64 12 }, !dbg !2520

switch.next28:                                    ; preds = %switch.next26
    #dbg_value(ptr %t, !2384, !DIExpression(), !2521)
  %150 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2522
  %151 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %150, ptr undef), !dbg !2523
  ret %runtime._string %151, !dbg !2524

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2408
  unreachable, !dbg !2408

slice.throw:                                      ; preds = %if.then1
  call void @runtime.slicePanic(ptr undef), !dbg !2411
  unreachable, !dbg !2411

lookup.throw30:                                   ; preds = %switch.body6
  call void @runtime.lookupPanic(ptr undef), !dbg !2434
  unreachable, !dbg !2434

deref.throw:                                      ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !2497
  unreachable, !dbg !2497

deref.throw32:                                    ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !2500
  unreachable, !dbg !2500

deref.throw34:                                    ; preds = %deref.next33
  call void @runtime.nilPanic(ptr undef), !dbg !2504
  unreachable, !dbg !2504

deref.throw36:                                    ; preds = %if.then22
  call void @runtime.nilPanic(ptr undef), !dbg !2506
  unreachable, !dbg !2506
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).key"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2525 {
entry:
    #dbg_value(ptr %t, !2527, !DIExpression(), !2530)
    #dbg_value(ptr %t, !2527, !DIExpression(), !2531)
  %0 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2532
    #dbg_value(ptr %0, !2528, !DIExpression(), !2533)
    #dbg_value(ptr %0, !2528, !DIExpression(), !2534)
  %1 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %0, ptr undef), !dbg !2535
  %2 = icmp ne i8 %1, 25, !dbg !2536
  br i1 %2, label %if.then, label %if.done, !dbg !2537

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @"internal/reflectlite.errTypeKey", align 8, !dbg !2538
    #dbg_value(ptr %3, !2529, !DIExpression(), !2538)
  %4 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %3, 1, !dbg !2538
  %5 = extractvalue { ptr, ptr } %4, 0, !dbg !2539
  %6 = extractvalue { ptr, ptr } %4, 1, !dbg !2539
  call void @runtime._panic(ptr %5, ptr %6, ptr undef), !dbg !2539
  unreachable, !dbg !2539

if.done:                                          ; preds = %entry
    #dbg_value(ptr %0, !2528, !DIExpression(), !2540)
  %7 = getelementptr inbounds %"internal/reflectlite.namedType", ptr %0, i32 0, i32 4, !dbg !2541
  %8 = icmp eq ptr %7, null, !dbg !2541
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2541

deref.next:                                       ; preds = %if.done
  %9 = load ptr, ptr %7, align 8, !dbg !2541
  ret ptr %9, !dbg !2542

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2541
  unreachable, !dbg !2541
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.RawType).name"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2543 {
entry:
    #dbg_value(ptr %t, !2545, !DIExpression(), !2564)
    #dbg_value(ptr %t, !2545, !DIExpression(), !2565)
    #dbg_value(ptr %t, !2546, !DIExpression(), !2566)
    #dbg_value(ptr %t, !2546, !DIExpression(), !2567)
  %0 = getelementptr i8, ptr %t, i64 32, !dbg !2568
    #dbg_value(ptr %0, !2556, !DIExpression(), !2569)
    #dbg_value(ptr %t, !2546, !DIExpression(), !2570)
  %1 = getelementptr inbounds %"internal/reflectlite.namedType", ptr %t, i32 0, i32 1, !dbg !2571
  %2 = icmp eq ptr %1, null, !dbg !2571
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2571

deref.next:                                       ; preds = %entry
  %3 = load i16, ptr %1, align 2, !dbg !2571
  %4 = and i16 %3, -32768, !dbg !2572
  %5 = icmp ne i16 %4, 0, !dbg !2573
  br i1 %5, label %if.then, label %if.done, !dbg !2574

if.then:                                          ; preds = %deref.next
    #dbg_value(ptr %0, !2556, !DIExpression(), !2575)
    #dbg_value(ptr %0, !2557, !DIExpression(), !2576)
    #dbg_value(ptr %0, !2556, !DIExpression(), !2577)
    #dbg_value(ptr %0, !2557, !DIExpression(), !2578)
  %6 = getelementptr inbounds %"internal/reflectlite.methodSet", ptr %0, i32 0, i32 0, !dbg !2579
  %7 = icmp eq ptr %6, null, !dbg !2579
  br i1 %7, label %deref.throw1, label %deref.next2, !dbg !2579

deref.next2:                                      ; preds = %if.then
  %8 = load i64, ptr %6, align 8, !dbg !2579
  %9 = mul i64 %8, 8, !dbg !2580
  %10 = add i64 8, %9, !dbg !2581
  %11 = getelementptr i8, ptr %0, i64 %10, !dbg !2582
    #dbg_value(ptr %11, !2556, !DIExpression(), !2583)
  br label %if.done, !dbg !2574

if.done:                                          ; preds = %deref.next2, %deref.next
  %12 = phi ptr [ %0, %deref.next ], [ %11, %deref.next2 ], !dbg !2569
    #dbg_value(ptr %12, !2556, !DIExpression(), !2584)
  %13 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %12, ptr undef), !dbg !2585
  ret %runtime._string %13, !dbg !2586

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2571
  unreachable, !dbg !2571

deref.throw1:                                     ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2579
  unreachable, !dbg !2579
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/reflectlite.rawStructField" @"(*internal/reflectlite.RawType).rawField"(ptr dereferenceable_or_null(1) %t, i64 %n, ptr %context) unnamed_addr #1 !dbg !2587 {
entry:
    #dbg_value(ptr %t, !2591, !DIExpression(), !2615)
    #dbg_value(i64 %n, !2592, !DIExpression(), !2615)
    #dbg_value(ptr %t, !2591, !DIExpression(), !2616)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2617
  %1 = icmp ne i8 %0, 26, !dbg !2618
  br i1 %1, label %if.then, label %if.done, !dbg !2619

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeField", align 8, !dbg !2620
    #dbg_value(ptr %2, !2593, !DIExpression(), !2620)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2620
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2621
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2621
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2621
  unreachable, !dbg !2621

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2591, !DIExpression(), !2622)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2623
    #dbg_value(ptr %6, !2594, !DIExpression(), !2624)
    #dbg_value(i64 %n, !2592, !DIExpression(), !2625)
    #dbg_value(ptr %6, !2594, !DIExpression(), !2626)
  %7 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 5, !dbg !2627
  %8 = icmp eq ptr %7, null, !dbg !2627
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2627

deref.next:                                       ; preds = %if.done
  %9 = load i16, ptr %7, align 2, !dbg !2627
  %10 = zext i16 %9 to i64, !dbg !2628
  %11 = icmp uge i64 %n, %10, !dbg !2629
  br i1 %11, label %if.then1, label %if.done2, !dbg !2619

if.then1:                                         ; preds = %deref.next
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"internal/reflectlite$pack.108", ptr undef), !dbg !2630
  unreachable, !dbg !2630

if.done2:                                         ; preds = %deref.next
    #dbg_value(ptr %6, !2594, !DIExpression(), !2631)
  %12 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 6, !dbg !2632
  %13 = icmp eq ptr %12, null, !dbg !2633
  br i1 %13, label %gep.throw, label %gep.next, !dbg !2633

gep.next:                                         ; preds = %if.done2
  %14 = getelementptr inbounds [1 x { ptr, ptr }], ptr %12, i32 0, i64 0, !dbg !2633
    #dbg_value(i64 %n, !2592, !DIExpression(), !2634)
  %15 = mul i64 %n, 16, !dbg !2635
  %16 = getelementptr i8, ptr %14, i64 %15, !dbg !2636
    #dbg_value(ptr %16, !2608, !DIExpression(), !2637)
    #dbg_value(ptr %16, !2608, !DIExpression(), !2638)
  %17 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 1, !dbg !2639
  %18 = icmp eq ptr %17, null, !dbg !2639
  br i1 %18, label %deref.throw3, label %deref.next4, !dbg !2639

deref.next4:                                      ; preds = %gep.next
  %19 = load ptr, ptr %17, align 8, !dbg !2639
    #dbg_value(ptr %19, !2610, !DIExpression(), !2640)
    #dbg_value(ptr %19, !2610, !DIExpression(), !2641)
  %20 = load i8, ptr %19, align 1, !dbg !2642
    #dbg_value(i8 %20, !2611, !DIExpression(), !2643)
    #dbg_value(ptr %19, !2610, !DIExpression(), !2644)
  %21 = getelementptr i8, ptr %19, i64 1, !dbg !2645
    #dbg_value(ptr %21, !2610, !DIExpression(), !2646)
    #dbg_value(ptr %21, !2610, !DIExpression(), !2647)
  %22 = icmp eq ptr %21, null, !dbg !2648
  %23 = and i1 %22, true, !dbg !2648
  %24 = or i1 %23, false, !dbg !2648
  br i1 %24, label %unsafe.Slice.throw, label %unsafe.Slice.next, !dbg !2648

unsafe.Slice.next:                                ; preds = %deref.next4
  %25 = insertvalue { ptr, i64, i64 } undef, ptr %21, 0, !dbg !2648
  %26 = insertvalue { ptr, i64, i64 } %25, i64 5, 1, !dbg !2648
  %27 = insertvalue { ptr, i64, i64 } %26, i64 5, 2, !dbg !2648
  %28 = extractvalue { ptr, i64, i64 } %27, 0, !dbg !2649
  %29 = extractvalue { ptr, i64, i64 } %27, 1, !dbg !2649
  %30 = extractvalue { ptr, i64, i64 } %27, 2, !dbg !2649
  %31 = call { i32, i64 } @"internal/reflectlite.uvarint32"(ptr %28, i64 %29, i64 %30, ptr undef), !dbg !2649
  %32 = extractvalue { i32, i64 } %31, 0, !dbg !2649
    #dbg_value(i32 %32, !2612, !DIExpression(), !2650)
  %33 = extractvalue { i32, i64 } %31, 1, !dbg !2649
    #dbg_value(i64 %33, !2613, !DIExpression(), !2651)
    #dbg_value(ptr %21, !2610, !DIExpression(), !2652)
    #dbg_value(i64 %33, !2613, !DIExpression(), !2653)
  %34 = getelementptr i8, ptr %21, i64 %33, !dbg !2654
    #dbg_value(ptr %34, !2610, !DIExpression(), !2655)
    #dbg_value(ptr %34, !2610, !DIExpression(), !2656)
  %35 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %34, ptr undef), !dbg !2657
    #dbg_value(%runtime._string %35, !2614, !DIExpression(), !2658)
    #dbg_value(ptr %34, !2610, !DIExpression(), !2659)
    #dbg_value(%runtime._string %35, !2614, !DIExpression(), !2660)
  %len = extractvalue %runtime._string %35, 1, !dbg !2661
  %36 = getelementptr i8, ptr %34, i64 %len, !dbg !2662
    #dbg_value(ptr %36, !2610, !DIExpression(), !2663)
    #dbg_value(ptr %6, !2594, !DIExpression(), !2664)
    #dbg_value(ptr %16, !2608, !DIExpression(), !2665)
  %37 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 0, !dbg !2666
  %38 = icmp eq ptr %37, null, !dbg !2666
  br i1 %38, label %deref.throw5, label %deref.next6, !dbg !2666

deref.next6:                                      ; preds = %unsafe.Slice.next
  %39 = load ptr, ptr %37, align 8, !dbg !2666
    #dbg_value(ptr %36, !2610, !DIExpression(), !2667)
    #dbg_value(i8 %20, !2611, !DIExpression(), !2668)
    #dbg_value(%runtime._string %35, !2614, !DIExpression(), !2669)
    #dbg_value(i32 %32, !2612, !DIExpression(), !2670)
  %40 = extractvalue %runtime._string %35, 0, !dbg !2671
  %41 = extractvalue %runtime._string %35, 1, !dbg !2671
  %42 = call %"internal/reflectlite.rawStructField" @"internal/reflectlite.rawStructFieldFromPointer"(ptr %6, ptr %39, ptr %36, i8 %20, ptr %40, i64 %41, i32 %32, ptr undef), !dbg !2671
  ret %"internal/reflectlite.rawStructField" %42, !dbg !2672

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2627
  unreachable, !dbg !2627

gep.throw:                                        ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2633
  unreachable, !dbg !2633

deref.throw3:                                     ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2639
  unreachable, !dbg !2639

unsafe.Slice.throw:                               ; preds = %deref.next4
  call void @runtime.unsafeSlicePanic(ptr undef), !dbg !2648
  unreachable, !dbg !2648

deref.throw5:                                     ; preds = %unsafe.Slice.next
  call void @runtime.nilPanic(ptr undef), !dbg !2666
  unreachable, !dbg !2666
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"internal/reflectlite.uvarint32"(ptr %buf.data, i64 %buf.len, i64 %buf.cap, ptr %context) unnamed_addr #1 !dbg !2673 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %buf.data, 0, !dbg !2682
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %buf.len, 1, !dbg !2682
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %buf.cap, 2, !dbg !2682
    #dbg_value(ptr %buf.data, !2677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2682)
    #dbg_value(i64 %buf.len, !2677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2682)
    #dbg_value(i64 %buf.cap, !2677, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2682)
    #dbg_value(i32 0, !2678, !DIExpression(), !2683)
    #dbg_value(i64 0, !2679, !DIExpression(), !2684)
    #dbg_value({ ptr, i64, i64 } %2, !2677, !DIExpression(), !2685)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2686
  br label %rangeindex.loop, !dbg !2686

rangeindex.loop:                                  ; preds = %if.done, %entry
  %3 = phi i32 [ 0, %entry ], [ %23, %if.done ], !dbg !2683
  %4 = phi i64 [ 0, %entry ], [ %24, %if.done ], !dbg !2684
  %5 = phi i64 [ -1, %entry ], [ %6, %if.done ], !dbg !2686
  %6 = add i64 %5, 1, !dbg !2686
  %7 = icmp slt i64 %6, %len, !dbg !2686
  br i1 %7, label %rangeindex.body, label %rangeindex.done, !dbg !2686

rangeindex.body:                                  ; preds = %rangeindex.loop
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2685
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2685
  %8 = icmp uge i64 %6, %indexaddr.len, !dbg !2685
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !2685

lookup.next:                                      ; preds = %rangeindex.body
  %9 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %6, !dbg !2685
  %10 = load i8, ptr %9, align 1, !dbg !2686
    #dbg_value(i64 %6, !2680, !DIExpression(), !2687)
    #dbg_value(i8 %10, !2681, !DIExpression(), !2688)
    #dbg_value(i8 %10, !2681, !DIExpression(), !2689)
  %11 = icmp ult i8 %10, -128, !dbg !2690
  br i1 %11, label %if.then, label %if.done, !dbg !2686

if.then:                                          ; preds = %lookup.next
    #dbg_value(i32 %3, !2678, !DIExpression(), !2691)
    #dbg_value(i8 %10, !2681, !DIExpression(), !2692)
  %12 = zext i8 %10 to i32, !dbg !2693
    #dbg_value(i64 %4, !2679, !DIExpression(), !2694)
  %shift.overflow = icmp uge i64 %4, 32, !dbg !2695
  %13 = trunc i64 %4 to i32, !dbg !2695
  %14 = shl i32 %12, %13, !dbg !2695
  %shift.result = select i1 %shift.overflow, i32 0, i32 %14, !dbg !2695
  %15 = or i32 %3, %shift.result, !dbg !2696
    #dbg_value(i64 %6, !2680, !DIExpression(), !2697)
  %16 = add i64 %6, 1, !dbg !2698
  %17 = insertvalue { i32, i64 } zeroinitializer, i32 %15, 0, !dbg !2699
  %18 = insertvalue { i32, i64 } %17, i64 %16, 1, !dbg !2699
  ret { i32, i64 } %18, !dbg !2699

if.done:                                          ; preds = %lookup.next
    #dbg_value(i8 %10, !2681, !DIExpression(), !2700)
  %19 = and i8 %10, 127, !dbg !2701
  %20 = zext i8 %19 to i32, !dbg !2702
    #dbg_value(i64 %4, !2679, !DIExpression(), !2703)
  %shift.overflow1 = icmp uge i64 %4, 32, !dbg !2704
  %21 = trunc i64 %4 to i32, !dbg !2704
  %22 = shl i32 %20, %21, !dbg !2704
  %shift.result2 = select i1 %shift.overflow1, i32 0, i32 %22, !dbg !2704
  %23 = or i32 %3, %shift.result2, !dbg !2705
    #dbg_value(i32 %23, !2678, !DIExpression(), !2705)
  %24 = add i64 %4, 7, !dbg !2706
    #dbg_value(i64 %24, !2679, !DIExpression(), !2706)
  br label %rangeindex.loop, !dbg !2686

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret { i32, i64 } zeroinitializer, !dbg !2707

lookup.throw:                                     ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2685
  unreachable, !dbg !2685
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/reflectlite.readStringZ"(ptr %data, ptr %context) unnamed_addr #1 !dbg !2708 {
entry:
    #dbg_value(ptr %data, !2712, !DIExpression(), !2715)
    #dbg_value(ptr %data, !2712, !DIExpression(), !2716)
    #dbg_value(ptr %data, !2713, !DIExpression(), !2717)
    #dbg_value(i64 0, !2714, !DIExpression(), !2718)
  br label %for.loop, !dbg !2719

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi ptr [ %data, %entry ], [ %5, %for.body ], !dbg !2720
  %1 = phi i64 [ 0, %entry ], [ %4, %for.body ], !dbg !2718
    #dbg_value(ptr %0, !2712, !DIExpression(), !2721)
  %2 = load i8, ptr %0, align 1, !dbg !2722
  %3 = icmp ne i8 %2, 0, !dbg !2723
  br i1 %3, label %for.body, label %for.done, !dbg !2719

for.body:                                         ; preds = %for.loop
  %4 = add i64 %1, 1, !dbg !2724
    #dbg_value(i64 %4, !2714, !DIExpression(), !2724)
    #dbg_value(ptr %0, !2712, !DIExpression(), !2725)
  %5 = getelementptr i8, ptr %0, i64 1, !dbg !2726
    #dbg_value(ptr %5, !2712, !DIExpression(), !2727)
  br label %for.loop, !dbg !2719

for.done:                                         ; preds = %for.loop
  %complit = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 133 to ptr), ptr undef), !dbg !2728
  %6 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !2729
    #dbg_value(ptr %data, !2713, !DIExpression(), !2730)
  %7 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !2731
    #dbg_value(i64 %1, !2714, !DIExpression(), !2732)
  %8 = icmp eq ptr %6, null, !dbg !2729
  br i1 %8, label %store.throw, label %store.next, !dbg !2729

store.next:                                       ; preds = %for.done
  store ptr %data, ptr %6, align 8, !dbg !2729
    #dbg_value(ptr %data, !2713, !DIExpression(), !2730)
  %9 = icmp eq ptr %7, null, !dbg !2731
  br i1 %9, label %store.throw1, label %store.next2, !dbg !2731

store.next2:                                      ; preds = %store.next
  store i64 %1, ptr %7, align 8, !dbg !2731
    #dbg_value(i64 %1, !2714, !DIExpression(), !2732)
  %10 = load %runtime._string, ptr %complit, align 8, !dbg !2733
  ret %runtime._string %10, !dbg !2734

store.throw:                                      ; preds = %for.done
  call void @runtime.nilPanic(ptr undef), !dbg !2729
  unreachable, !dbg !2729

store.throw1:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !2731
  unreachable, !dbg !2731
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/reflectlite.rawStructField" @"internal/reflectlite.rawStructFieldFromPointer"(ptr dereferenceable_or_null(48) %descriptor, ptr dereferenceable_or_null(1) %fieldType, ptr %data, i8 %flagsByte, ptr readonly %name.data, i64 %name.len, i32 %offset, ptr %context) unnamed_addr #1 !dbg !2735 {
entry:
    #dbg_value(ptr %descriptor, !2739, !DIExpression(), !2748)
    #dbg_value(ptr %fieldType, !2740, !DIExpression(), !2748)
    #dbg_value(ptr %data, !2741, !DIExpression(), !2748)
    #dbg_value(i8 %flagsByte, !2742, !DIExpression(), !2748)
  %complit5 = alloca %"internal/reflectlite.rawStructField", align 8, !dbg !2748
  %0 = insertvalue %runtime._string zeroinitializer, ptr %name.data, 0, !dbg !2748
  %1 = insertvalue %runtime._string %0, i64 %name.len, 1, !dbg !2748
    #dbg_value(ptr %name.data, !2743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2748)
    #dbg_value(i64 %name.len, !2743, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2748)
    #dbg_value(i32 %offset, !2744, !DIExpression(), !2748)
    #dbg_value(%runtime._string zeroinitializer, !2745, !DIExpression(), !2749)
    #dbg_value(i8 %flagsByte, !2742, !DIExpression(), !2750)
  %2 = and i8 %flagsByte, 2, !dbg !2751
  %3 = icmp ne i8 %2, 0, !dbg !2752
  br i1 %3, label %if.then, label %if.done, !dbg !2753

if.then:                                          ; preds = %entry
    #dbg_value(ptr %data, !2741, !DIExpression(), !2754)
  %4 = getelementptr i8, ptr %data, i64 1, !dbg !2755
    #dbg_value(ptr %4, !2741, !DIExpression(), !2756)
    #dbg_value(ptr %4, !2741, !DIExpression(), !2757)
  %5 = load i8, ptr %4, align 1, !dbg !2758
  %6 = zext i8 %5 to i64, !dbg !2759
    #dbg_value(i64 %6, !2746, !DIExpression(), !2760)
    #dbg_value(ptr %4, !2741, !DIExpression(), !2761)
  %7 = getelementptr i8, ptr %4, i64 1, !dbg !2762
    #dbg_value(ptr %7, !2741, !DIExpression(), !2763)
  %complit = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 133 to ptr), ptr undef), !dbg !2764
  %8 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !2765
    #dbg_value(ptr %7, !2741, !DIExpression(), !2766)
  %9 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !2767
    #dbg_value(i64 %6, !2746, !DIExpression(), !2768)
  %10 = icmp eq ptr %8, null, !dbg !2765
  br i1 %10, label %store.throw, label %store.next, !dbg !2765

store.next:                                       ; preds = %if.then
  store ptr %7, ptr %8, align 8, !dbg !2765
    #dbg_value(ptr %7, !2741, !DIExpression(), !2766)
  %11 = icmp eq ptr %9, null, !dbg !2767
  br i1 %11, label %store.throw3, label %store.next4, !dbg !2767

store.next4:                                      ; preds = %store.next
  store i64 %6, ptr %9, align 8, !dbg !2767
    #dbg_value(i64 %6, !2746, !DIExpression(), !2768)
  %12 = load %runtime._string, ptr %complit, align 8, !dbg !2769
    #dbg_value(%runtime._string %12, !2745, !DIExpression(), !2770)
  br label %if.done, !dbg !2753

if.done:                                          ; preds = %store.next4, %entry
  %13 = phi %runtime._string [ zeroinitializer, %entry ], [ %12, %store.next4 ], !dbg !2749
    #dbg_value(%runtime._string zeroinitializer, !2747, !DIExpression(), !2771)
    #dbg_value(i8 %flagsByte, !2742, !DIExpression(), !2772)
  %14 = and i8 %flagsByte, 4, !dbg !2773
  %15 = icmp eq i8 %14, 0, !dbg !2774
  br i1 %15, label %if.then1, label %if.done2, !dbg !2753

if.then1:                                         ; preds = %if.done
    #dbg_value(ptr %descriptor, !2739, !DIExpression(), !2775)
  %16 = icmp eq ptr %descriptor, null, !dbg !2776
  br i1 %16, label %gep.throw, label %gep.next, !dbg !2776

gep.next:                                         ; preds = %if.then1
  %17 = getelementptr inbounds %"internal/reflectlite.structType", ptr %descriptor, i32 0, i32 3, !dbg !2776
  %18 = icmp eq ptr %17, null, !dbg !2776
  br i1 %18, label %deref.throw, label %deref.next, !dbg !2776

deref.next:                                       ; preds = %gep.next
  %19 = load ptr, ptr %17, align 8, !dbg !2776
  %20 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %19, ptr undef), !dbg !2777
    #dbg_value(%runtime._string %20, !2747, !DIExpression(), !2778)
  br label %if.done2, !dbg !2753

if.done2:                                         ; preds = %deref.next, %if.done
  %21 = phi %runtime._string [ zeroinitializer, %if.done ], [ %20, %deref.next ], !dbg !2771
  store %"internal/reflectlite.rawStructField" zeroinitializer, ptr %complit5, align 8, !dbg !2748
  %22 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 0, !dbg !2779
    #dbg_value(%runtime._string %1, !2743, !DIExpression(), !2780)
  %23 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 1, !dbg !2781
    #dbg_value(%runtime._string %21, !2747, !DIExpression(), !2782)
  %24 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 2, !dbg !2783
    #dbg_value(ptr %fieldType, !2740, !DIExpression(), !2784)
  %25 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 3, !dbg !2785
    #dbg_value(%runtime._string %13, !2745, !DIExpression(), !2786)
  %26 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 5, !dbg !2787
    #dbg_value(i8 %flagsByte, !2742, !DIExpression(), !2788)
  %27 = and i8 %flagsByte, 1, !dbg !2789
  %28 = icmp ne i8 %27, 0, !dbg !2790
  %29 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 4, !dbg !2791
    #dbg_value(i32 %offset, !2744, !DIExpression(), !2792)
  %30 = zext i32 %offset to i64, !dbg !2793
  %31 = icmp eq ptr %22, null, !dbg !2779
  br i1 %31, label %store.throw6, label %store.next7, !dbg !2779

store.next7:                                      ; preds = %if.done2
  store %runtime._string %1, ptr %22, align 8, !dbg !2779
    #dbg_value(%runtime._string %1, !2743, !DIExpression(), !2780)
  %32 = icmp eq ptr %23, null, !dbg !2781
  br i1 %32, label %store.throw8, label %store.next9, !dbg !2781

store.next9:                                      ; preds = %store.next7
  store %runtime._string %21, ptr %23, align 8, !dbg !2781
    #dbg_value(%runtime._string %21, !2747, !DIExpression(), !2782)
  %33 = icmp eq ptr %24, null, !dbg !2783
  br i1 %33, label %store.throw10, label %store.next11, !dbg !2783

store.next11:                                     ; preds = %store.next9
  store ptr %fieldType, ptr %24, align 8, !dbg !2783
    #dbg_value(ptr %fieldType, !2740, !DIExpression(), !2784)
  %34 = icmp eq ptr %25, null, !dbg !2785
  br i1 %34, label %store.throw12, label %store.next13, !dbg !2785

store.next13:                                     ; preds = %store.next11
  store %runtime._string %13, ptr %25, align 8, !dbg !2785
  %35 = icmp eq ptr %26, null, !dbg !2787
  br i1 %35, label %store.throw14, label %store.next15, !dbg !2787

store.next15:                                     ; preds = %store.next13
  store i1 %28, ptr %26, align 1, !dbg !2787
  %36 = icmp eq ptr %29, null, !dbg !2791
  br i1 %36, label %store.throw16, label %store.next17, !dbg !2791

store.next17:                                     ; preds = %store.next15
  store i64 %30, ptr %29, align 8, !dbg !2791
  %37 = load %"internal/reflectlite.rawStructField", ptr %complit5, align 8, !dbg !2794
  ret %"internal/reflectlite.rawStructField" %37, !dbg !2795

store.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2765
  unreachable, !dbg !2765

store.throw3:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !2767
  unreachable, !dbg !2767

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !2776
  unreachable, !dbg !2776

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2776
  unreachable, !dbg !2776

store.throw6:                                     ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2779
  unreachable, !dbg !2779

store.throw8:                                     ; preds = %store.next7
  call void @runtime.nilPanic(ptr undef), !dbg !2781
  unreachable, !dbg !2781

store.throw10:                                    ; preds = %store.next9
  call void @runtime.nilPanic(ptr undef), !dbg !2783
  unreachable, !dbg !2783

store.throw12:                                    ; preds = %store.next11
  call void @runtime.nilPanic(ptr undef), !dbg !2785
  unreachable, !dbg !2785

store.throw14:                                    ; preds = %store.next13
  call void @runtime.nilPanic(ptr undef), !dbg !2787
  unreachable, !dbg !2787

store.throw16:                                    ; preds = %store.next15
  call void @runtime.nilPanic(ptr undef), !dbg !2791
  unreachable, !dbg !2791
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.Kind).String"(i8 %k, ptr %context) unnamed_addr #1 !dbg !2796 {
entry:
    #dbg_value(i8 %k, !2801, !DIExpression(), !2802)
    #dbg_value(i8 %k, !2801, !DIExpression(), !2803)
  %0 = icmp eq i8 %k, 0, !dbg !2804
  br i1 %0, label %switch.body, label %switch.next, !dbg !2805

switch.body:                                      ; preds = %entry
  ret %runtime._string { ptr @"internal/reflectlite$string.41", i64 7 }, !dbg !2806

switch.next:                                      ; preds = %entry
  %1 = icmp eq i8 %k, 1, !dbg !2807
  br i1 %1, label %switch.body1, label %switch.next2, !dbg !2805

switch.body1:                                     ; preds = %switch.next
  ret %runtime._string { ptr @"internal/reflectlite$string.42", i64 4 }, !dbg !2808

switch.next2:                                     ; preds = %switch.next
  %2 = icmp eq i8 %k, 2, !dbg !2809
  br i1 %2, label %switch.body3, label %switch.next4, !dbg !2805

switch.body3:                                     ; preds = %switch.next2
  ret %runtime._string { ptr @"internal/reflectlite$string.43", i64 3 }, !dbg !2810

switch.next4:                                     ; preds = %switch.next2
  %3 = icmp eq i8 %k, 3, !dbg !2811
  br i1 %3, label %switch.body5, label %switch.next6, !dbg !2805

switch.body5:                                     ; preds = %switch.next4
  ret %runtime._string { ptr @"internal/reflectlite$string.44", i64 4 }, !dbg !2812

switch.next6:                                     ; preds = %switch.next4
  %4 = icmp eq i8 %k, 4, !dbg !2813
  br i1 %4, label %switch.body7, label %switch.next8, !dbg !2805

switch.body7:                                     ; preds = %switch.next6
  ret %runtime._string { ptr @"internal/reflectlite$string.45", i64 5 }, !dbg !2814

switch.next8:                                     ; preds = %switch.next6
  %5 = icmp eq i8 %k, 5, !dbg !2815
  br i1 %5, label %switch.body9, label %switch.next10, !dbg !2805

switch.body9:                                     ; preds = %switch.next8
  ret %runtime._string { ptr @"internal/reflectlite$string.46", i64 5 }, !dbg !2816

switch.next10:                                    ; preds = %switch.next8
  %6 = icmp eq i8 %k, 6, !dbg !2817
  br i1 %6, label %switch.body11, label %switch.next12, !dbg !2805

switch.body11:                                    ; preds = %switch.next10
  ret %runtime._string { ptr @"internal/reflectlite$string.47", i64 5 }, !dbg !2818

switch.next12:                                    ; preds = %switch.next10
  %7 = icmp eq i8 %k, 7, !dbg !2819
  br i1 %7, label %switch.body13, label %switch.next14, !dbg !2805

switch.body13:                                    ; preds = %switch.next12
  ret %runtime._string { ptr @"internal/reflectlite$string.48", i64 4 }, !dbg !2820

switch.next14:                                    ; preds = %switch.next12
  %8 = icmp eq i8 %k, 8, !dbg !2821
  br i1 %8, label %switch.body15, label %switch.next16, !dbg !2805

switch.body15:                                    ; preds = %switch.next14
  ret %runtime._string { ptr @"internal/reflectlite$string.49", i64 5 }, !dbg !2822

switch.next16:                                    ; preds = %switch.next14
  %9 = icmp eq i8 %k, 9, !dbg !2823
  br i1 %9, label %switch.body17, label %switch.next18, !dbg !2805

switch.body17:                                    ; preds = %switch.next16
  ret %runtime._string { ptr @"internal/reflectlite$string.50", i64 6 }, !dbg !2824

switch.next18:                                    ; preds = %switch.next16
  %10 = icmp eq i8 %k, 10, !dbg !2825
  br i1 %10, label %switch.body19, label %switch.next20, !dbg !2805

switch.body19:                                    ; preds = %switch.next18
  ret %runtime._string { ptr @"internal/reflectlite$string.51", i64 6 }, !dbg !2826

switch.next20:                                    ; preds = %switch.next18
  %11 = icmp eq i8 %k, 11, !dbg !2827
  br i1 %11, label %switch.body21, label %switch.next22, !dbg !2805

switch.body21:                                    ; preds = %switch.next20
  ret %runtime._string { ptr @"internal/reflectlite$string.52", i64 6 }, !dbg !2828

switch.next22:                                    ; preds = %switch.next20
  %12 = icmp eq i8 %k, 12, !dbg !2829
  br i1 %12, label %switch.body23, label %switch.next24, !dbg !2805

switch.body23:                                    ; preds = %switch.next22
  ret %runtime._string { ptr @"internal/reflectlite$string.53", i64 7 }, !dbg !2830

switch.next24:                                    ; preds = %switch.next22
  %13 = icmp eq i8 %k, 13, !dbg !2831
  br i1 %13, label %switch.body25, label %switch.next26, !dbg !2805

switch.body25:                                    ; preds = %switch.next24
  ret %runtime._string { ptr @"internal/reflectlite$string.54", i64 7 }, !dbg !2832

switch.next26:                                    ; preds = %switch.next24
  %14 = icmp eq i8 %k, 14, !dbg !2833
  br i1 %14, label %switch.body27, label %switch.next28, !dbg !2805

switch.body27:                                    ; preds = %switch.next26
  ret %runtime._string { ptr @"internal/reflectlite$string.55", i64 7 }, !dbg !2834

switch.next28:                                    ; preds = %switch.next26
  %15 = icmp eq i8 %k, 15, !dbg !2835
  br i1 %15, label %switch.body29, label %switch.next30, !dbg !2805

switch.body29:                                    ; preds = %switch.next28
  ret %runtime._string { ptr @"internal/reflectlite$string.56", i64 9 }, !dbg !2836

switch.next30:                                    ; preds = %switch.next28
  %16 = icmp eq i8 %k, 16, !dbg !2837
  br i1 %16, label %switch.body31, label %switch.next32, !dbg !2805

switch.body31:                                    ; preds = %switch.next30
  ret %runtime._string { ptr @"internal/reflectlite$string.57", i64 10 }, !dbg !2838

switch.next32:                                    ; preds = %switch.next30
  %17 = icmp eq i8 %k, 17, !dbg !2839
  br i1 %17, label %switch.body33, label %switch.next34, !dbg !2805

switch.body33:                                    ; preds = %switch.next32
  ret %runtime._string { ptr @"internal/reflectlite$string.58", i64 6 }, !dbg !2840

switch.next34:                                    ; preds = %switch.next32
  %18 = icmp eq i8 %k, 18, !dbg !2841
  br i1 %18, label %switch.body35, label %switch.next36, !dbg !2805

switch.body35:                                    ; preds = %switch.next34
  ret %runtime._string { ptr @"internal/reflectlite$string.59", i64 14 }, !dbg !2842

switch.next36:                                    ; preds = %switch.next34
  %19 = icmp eq i8 %k, 19, !dbg !2843
  br i1 %19, label %switch.body37, label %switch.next38, !dbg !2805

switch.body37:                                    ; preds = %switch.next36
  ret %runtime._string { ptr @"internal/reflectlite$string.60", i64 4 }, !dbg !2844

switch.next38:                                    ; preds = %switch.next36
  %20 = icmp eq i8 %k, 20, !dbg !2845
  br i1 %20, label %switch.body39, label %switch.next40, !dbg !2805

switch.body39:                                    ; preds = %switch.next38
  ret %runtime._string { ptr @"internal/reflectlite$string.61", i64 9 }, !dbg !2846

switch.next40:                                    ; preds = %switch.next38
  %21 = icmp eq i8 %k, 21, !dbg !2847
  br i1 %21, label %switch.body41, label %switch.next42, !dbg !2805

switch.body41:                                    ; preds = %switch.next40
  ret %runtime._string { ptr @"internal/reflectlite$string.62", i64 3 }, !dbg !2848

switch.next42:                                    ; preds = %switch.next40
  %22 = icmp eq i8 %k, 22, !dbg !2849
  br i1 %22, label %switch.body43, label %switch.next44, !dbg !2805

switch.body43:                                    ; preds = %switch.next42
  ret %runtime._string { ptr @"internal/reflectlite$string.63", i64 5 }, !dbg !2850

switch.next44:                                    ; preds = %switch.next42
  %23 = icmp eq i8 %k, 23, !dbg !2851
  br i1 %23, label %switch.body45, label %switch.next46, !dbg !2805

switch.body45:                                    ; preds = %switch.next44
  ret %runtime._string { ptr @"internal/reflectlite$string.64", i64 5 }, !dbg !2852

switch.next46:                                    ; preds = %switch.next44
  %24 = icmp eq i8 %k, 24, !dbg !2853
  br i1 %24, label %switch.body47, label %switch.next48, !dbg !2805

switch.body47:                                    ; preds = %switch.next46
  ret %runtime._string { ptr @"internal/reflectlite$string.65", i64 4 }, !dbg !2854

switch.next48:                                    ; preds = %switch.next46
  %25 = icmp eq i8 %k, 25, !dbg !2855
  br i1 %25, label %switch.body49, label %switch.next50, !dbg !2805

switch.body49:                                    ; preds = %switch.next48
  ret %runtime._string { ptr @"internal/reflectlite$string.66", i64 3 }, !dbg !2856

switch.next50:                                    ; preds = %switch.next48
  %26 = icmp eq i8 %k, 26, !dbg !2857
  br i1 %26, label %switch.body51, label %switch.next52, !dbg !2805

switch.body51:                                    ; preds = %switch.next50
  ret %runtime._string { ptr @"internal/reflectlite$string.67", i64 6 }, !dbg !2858

switch.next52:                                    ; preds = %switch.next50
    #dbg_value(i8 %k, !2801, !DIExpression(), !2859)
  %27 = sext i8 %k to i64, !dbg !2860
  %28 = call %runtime._string @"internal/itoa.Itoa"(i64 %27, ptr undef), !dbg !2861
  %29 = extractvalue %runtime._string %28, 0, !dbg !2862
  %30 = extractvalue %runtime._string %28, 1, !dbg !2862
  %31 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.68", i64 4, ptr %29, i64 %30, ptr undef), !dbg !2862
  ret %runtime._string %31, !dbg !2863
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/reflectlite.quote"(ptr readonly %s.data, i64 %s.len, ptr %context) unnamed_addr #1 !dbg !2864 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !2870
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !2870
    #dbg_value(ptr %s.data, !2866, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2870)
    #dbg_value(i64 %s.len, !2866, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2870)
    #dbg_value(%runtime._string %1, !2866, !DIExpression(), !2871)
  %len = extractvalue %runtime._string %1, 1, !dbg !2872
  %2 = mul i64 3, %len, !dbg !2873
  %3 = icmp eq i64 %2, -9223372036854775808, !dbg !2874
  %4 = and i1 false, %3, !dbg !2874
  %5 = select i1 %4, i64 1, i64 2, !dbg !2874
  %6 = sdiv i64 %2, %5, !dbg !2874
  %slice.lowhigh = icmp ugt i64 0, %6, !dbg !2875
  %slice.highmax = icmp ugt i64 %6, %6, !dbg !2875
  %slice.maxcap = icmp ugt i64 %6, 9223372036854775807, !dbg !2875
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2875
  %slice.lowcap = or i1 %slice.lowmax, %slice.maxcap, !dbg !2875
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2875

slice.next:                                       ; preds = %entry
  %makeslice.cap = mul i64 1, %6, !dbg !2875
  %makeslice.buf = call align 1 ptr @runtime.alloc(i64 %makeslice.cap, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2875
  %7 = insertvalue { ptr, i64, i64 } undef, ptr %makeslice.buf, 0, !dbg !2875
  %8 = insertvalue { ptr, i64, i64 } %7, i64 0, 1, !dbg !2875
  %9 = insertvalue { ptr, i64, i64 } %8, i64 %6, 2, !dbg !2875
    #dbg_value({ ptr, i64, i64 } %9, !2867, !DIExpression(), !2876)
    #dbg_value({ ptr, i64, i64 } %9, !2867, !DIExpression(), !2877)
  %varargs = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2878
  %10 = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2878
  store i8 34, ptr %10, align 1, !dbg !2878
  %slice.ptr = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2878
  %11 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !2878
  %12 = insertvalue { ptr, i64, i64 } %11, i64 1, 1, !dbg !2878
  %13 = insertvalue { ptr, i64, i64 } %12, i64 1, 2, !dbg !2878
  %append.srcBuf = extractvalue { ptr, i64, i64 } %9, 0, !dbg !2879
  %append.srcLen = extractvalue { ptr, i64, i64 } %9, 1, !dbg !2879
  %append.srcCap = extractvalue { ptr, i64, i64 } %9, 2, !dbg !2879
  %append.elemsBuf = extractvalue { ptr, i64, i64 } %13, 0, !dbg !2879
  %append.elemsLen = extractvalue { ptr, i64, i64 } %13, 1, !dbg !2879
  %append.new = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf, ptr %append.elemsBuf, i64 %append.srcLen, i64 %append.srcCap, i64 %append.elemsLen, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2879
  %append.newPtr = extractvalue { ptr, i64, i64 } %append.new, 0, !dbg !2879
  %append.newLen = extractvalue { ptr, i64, i64 } %append.new, 1, !dbg !2879
  %append.newCap = extractvalue { ptr, i64, i64 } %append.new, 2, !dbg !2879
  %14 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr, 0, !dbg !2879
  %15 = insertvalue { ptr, i64, i64 } %14, i64 %append.newLen, 1, !dbg !2879
  %16 = insertvalue { ptr, i64, i64 } %15, i64 %append.newCap, 2, !dbg !2879
    #dbg_value({ ptr, i64, i64 } %16, !2867, !DIExpression(), !2880)
    #dbg_value(i64 0, !2868, !DIExpression(), !2881)
  br label %for.loop, !dbg !2882

for.loop:                                         ; preds = %slice.next50, %slice.next
  %17 = phi %runtime._string [ %1, %slice.next ], [ %76, %slice.next50 ], !dbg !2883
  %18 = phi { ptr, i64, i64 } [ %16, %slice.next ], [ %70, %slice.next50 ], !dbg !2876
    #dbg_value(%runtime._string %17, !2866, !DIExpression(), !2884)
  %len3 = extractvalue %runtime._string %17, 1, !dbg !2885
  %19 = icmp sgt i64 %len3, 0, !dbg !2886
  br i1 %19, label %for.body, label %for.done, !dbg !2882

for.body:                                         ; preds = %for.loop
    #dbg_value(%runtime._string %17, !2866, !DIExpression(), !2887)
  %len4 = extractvalue %runtime._string %17, 1, !dbg !2888
  %20 = icmp uge i64 0, %len4, !dbg !2888
  br i1 %20, label %lookup.throw, label %lookup.next, !dbg !2888

lookup.next:                                      ; preds = %for.body
  %21 = extractvalue %runtime._string %17, 0, !dbg !2888
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !2888
  %23 = load i8, ptr %22, align 1, !dbg !2888
  %24 = zext i8 %23 to i32, !dbg !2889
    #dbg_value(i32 %24, !2869, !DIExpression(), !2890)
    #dbg_value(i64 1, !2868, !DIExpression(), !2891)
    #dbg_value(i32 %24, !2869, !DIExpression(), !2892)
  %25 = icmp sge i32 %24, 128, !dbg !2893
  br i1 %25, label %if.then, label %if.done, !dbg !2882

if.then:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %17, !2866, !DIExpression(), !2894)
  %26 = extractvalue %runtime._string %17, 0, !dbg !2895
  %27 = extractvalue %runtime._string %17, 1, !dbg !2895
  %28 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(ptr %26, i64 %27, ptr undef), !dbg !2895
  %29 = extractvalue { i32, i64 } %28, 0, !dbg !2895
    #dbg_value(i32 %29, !2869, !DIExpression(), !2896)
  %30 = extractvalue { i32, i64 } %28, 1, !dbg !2895
    #dbg_value(i64 %30, !2868, !DIExpression(), !2897)
  br label %if.done, !dbg !2882

if.done:                                          ; preds = %if.then, %lookup.next
  %31 = phi i64 [ 1, %lookup.next ], [ %30, %if.then ], !dbg !2881
  %32 = phi i32 [ %24, %lookup.next ], [ %29, %if.then ], !dbg !2890
    #dbg_value(i64 %31, !2868, !DIExpression(), !2898)
  %33 = icmp eq i64 %31, 1, !dbg !2899
  br i1 %33, label %cond.true, label %if.done2, !dbg !2882

cond.true:                                        ; preds = %if.done
    #dbg_value(i32 %32, !2869, !DIExpression(), !2900)
  %34 = icmp eq i32 %32, 65533, !dbg !2901
  br i1 %34, label %if.then1, label %if.done2, !dbg !2882

if.then1:                                         ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } %18, !2867, !DIExpression(), !2902)
  %append.srcBuf5 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2903
  %append.srcLen6 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2903
  %append.srcCap7 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2903
  %append.new8 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf5, ptr @"internal/reflectlite$string.20", i64 %append.srcLen6, i64 %append.srcCap7, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2903
  %append.newPtr9 = extractvalue { ptr, i64, i64 } %append.new8, 0, !dbg !2903
  %append.newLen10 = extractvalue { ptr, i64, i64 } %append.new8, 1, !dbg !2903
  %append.newCap11 = extractvalue { ptr, i64, i64 } %append.new8, 2, !dbg !2903
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr9, 0, !dbg !2903
  %36 = insertvalue { ptr, i64, i64 } %35, i64 %append.newLen10, 1, !dbg !2903
  %37 = insertvalue { ptr, i64, i64 } %36, i64 %append.newCap11, 2, !dbg !2903
    #dbg_value({ ptr, i64, i64 } %37, !2867, !DIExpression(), !2904)
    #dbg_value({ ptr, i64, i64 } %37, !2867, !DIExpression(), !2905)
    #dbg_value(%runtime._string %17, !2866, !DIExpression(), !2906)
  %len12 = extractvalue %runtime._string %17, 1, !dbg !2907
  %38 = icmp uge i64 0, %len12, !dbg !2907
  br i1 %38, label %lookup.throw13, label %lookup.next14, !dbg !2907

lookup.next14:                                    ; preds = %if.then1
  %39 = extractvalue %runtime._string %17, 0, !dbg !2907
  %40 = getelementptr inbounds i8, ptr %39, i64 0, !dbg !2907
  %41 = load i8, ptr %40, align 1, !dbg !2907
  %42 = lshr i8 %41, 4, !dbg !2908
  %shift.result = select i1 false, i8 0, i8 %42, !dbg !2908
  %43 = zext i8 %shift.result to i64, !dbg !2909
  %44 = icmp uge i64 %43, 15, !dbg !2909
  br i1 %44, label %lookup.throw15, label %lookup.next16, !dbg !2909

lookup.next16:                                    ; preds = %lookup.next14
  %45 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.21", i64 %43, !dbg !2909
  %46 = load i8, ptr %45, align 1, !dbg !2909
  %varargs17 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2910
  %47 = getelementptr inbounds [1 x i8], ptr %varargs17, i32 0, i64 0, !dbg !2910
  store i8 %46, ptr %47, align 1, !dbg !2909
  %slice.ptr18 = getelementptr inbounds [1 x i8], ptr %varargs17, i32 0, i64 0, !dbg !2910
  %48 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr18, 0, !dbg !2910
  %49 = insertvalue { ptr, i64, i64 } %48, i64 1, 1, !dbg !2910
  %50 = insertvalue { ptr, i64, i64 } %49, i64 1, 2, !dbg !2910
  %append.srcBuf19 = extractvalue { ptr, i64, i64 } %37, 0, !dbg !2911
  %append.srcLen20 = extractvalue { ptr, i64, i64 } %37, 1, !dbg !2911
  %append.srcCap21 = extractvalue { ptr, i64, i64 } %37, 2, !dbg !2911
  %append.elemsBuf22 = extractvalue { ptr, i64, i64 } %50, 0, !dbg !2911
  %append.elemsLen23 = extractvalue { ptr, i64, i64 } %50, 1, !dbg !2911
  %append.new24 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf19, ptr %append.elemsBuf22, i64 %append.srcLen20, i64 %append.srcCap21, i64 %append.elemsLen23, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2911
  %append.newPtr25 = extractvalue { ptr, i64, i64 } %append.new24, 0, !dbg !2911
  %append.newLen26 = extractvalue { ptr, i64, i64 } %append.new24, 1, !dbg !2911
  %append.newCap27 = extractvalue { ptr, i64, i64 } %append.new24, 2, !dbg !2911
  %51 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr25, 0, !dbg !2911
  %52 = insertvalue { ptr, i64, i64 } %51, i64 %append.newLen26, 1, !dbg !2911
  %53 = insertvalue { ptr, i64, i64 } %52, i64 %append.newCap27, 2, !dbg !2911
    #dbg_value({ ptr, i64, i64 } %53, !2867, !DIExpression(), !2912)
    #dbg_value({ ptr, i64, i64 } %53, !2867, !DIExpression(), !2913)
    #dbg_value(%runtime._string %17, !2866, !DIExpression(), !2914)
  %len28 = extractvalue %runtime._string %17, 1, !dbg !2915
  %54 = icmp uge i64 0, %len28, !dbg !2915
  br i1 %54, label %lookup.throw29, label %lookup.next30, !dbg !2915

lookup.next30:                                    ; preds = %lookup.next16
  %55 = extractvalue %runtime._string %17, 0, !dbg !2915
  %56 = getelementptr inbounds i8, ptr %55, i64 0, !dbg !2915
  %57 = load i8, ptr %56, align 1, !dbg !2915
  %58 = and i8 %57, 15, !dbg !2916
  %59 = zext i8 %58 to i64, !dbg !2917
  %60 = icmp uge i64 %59, 15, !dbg !2917
  br i1 %60, label %lookup.throw31, label %lookup.next32, !dbg !2917

lookup.next32:                                    ; preds = %lookup.next30
  %61 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.22", i64 %59, !dbg !2917
  %62 = load i8, ptr %61, align 1, !dbg !2917
  %varargs33 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2918
  %63 = getelementptr inbounds [1 x i8], ptr %varargs33, i32 0, i64 0, !dbg !2918
  store i8 %62, ptr %63, align 1, !dbg !2917
  %slice.ptr34 = getelementptr inbounds [1 x i8], ptr %varargs33, i32 0, i64 0, !dbg !2918
  %64 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr34, 0, !dbg !2918
  %65 = insertvalue { ptr, i64, i64 } %64, i64 1, 1, !dbg !2918
  %66 = insertvalue { ptr, i64, i64 } %65, i64 1, 2, !dbg !2918
  %append.srcBuf35 = extractvalue { ptr, i64, i64 } %53, 0, !dbg !2919
  %append.srcLen36 = extractvalue { ptr, i64, i64 } %53, 1, !dbg !2919
  %append.srcCap37 = extractvalue { ptr, i64, i64 } %53, 2, !dbg !2919
  %append.elemsBuf38 = extractvalue { ptr, i64, i64 } %66, 0, !dbg !2919
  %append.elemsLen39 = extractvalue { ptr, i64, i64 } %66, 1, !dbg !2919
  %append.new40 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf35, ptr %append.elemsBuf38, i64 %append.srcLen36, i64 %append.srcCap37, i64 %append.elemsLen39, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2919
  %append.newPtr41 = extractvalue { ptr, i64, i64 } %append.new40, 0, !dbg !2919
  %append.newLen42 = extractvalue { ptr, i64, i64 } %append.new40, 1, !dbg !2919
  %append.newCap43 = extractvalue { ptr, i64, i64 } %append.new40, 2, !dbg !2919
  %67 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr41, 0, !dbg !2919
  %68 = insertvalue { ptr, i64, i64 } %67, i64 %append.newLen42, 1, !dbg !2919
  %69 = insertvalue { ptr, i64, i64 } %68, i64 %append.newCap43, 2, !dbg !2919
    #dbg_value({ ptr, i64, i64 } %69, !2867, !DIExpression(), !2920)
  br label %for.post, !dbg !2882

for.post:                                         ; preds = %if.done2, %lookup.next32
  %70 = phi { ptr, i64, i64 } [ %69, %lookup.next32 ], [ %80, %if.done2 ], !dbg !2876
    #dbg_value(%runtime._string %17, !2866, !DIExpression(), !2921)
    #dbg_value(i64 %31, !2868, !DIExpression(), !2922)
  %71 = extractvalue %runtime._string %17, 0, !dbg !2923
  %72 = extractvalue %runtime._string %17, 1, !dbg !2923
  %slice.lowhigh44 = icmp ugt i64 %31, %72, !dbg !2923
  %slice.highmax45 = icmp ugt i64 %72, %72, !dbg !2923
  %slice.maxcap46 = icmp ugt i64 %72, %72, !dbg !2923
  %slice.lowmax47 = or i1 %slice.lowhigh44, %slice.highmax45, !dbg !2923
  %slice.lowcap48 = or i1 %slice.lowmax47, %slice.maxcap46, !dbg !2923
  br i1 %slice.lowcap48, label %slice.throw49, label %slice.next50, !dbg !2923

slice.next50:                                     ; preds = %for.post
  %73 = getelementptr inbounds i8, ptr %71, i64 %31, !dbg !2923
  %74 = sub i64 %72, %31, !dbg !2923
  %75 = insertvalue %runtime._string undef, ptr %73, 0, !dbg !2923
  %76 = insertvalue %runtime._string %75, i64 %74, 1, !dbg !2923
    #dbg_value(%runtime._string %76, !2866, !DIExpression(), !2924)
  br label %for.loop, !dbg !2882

if.done2:                                         ; preds = %cond.true, %if.done
    #dbg_value({ ptr, i64, i64 } %18, !2867, !DIExpression(), !2925)
    #dbg_value(i32 %32, !2869, !DIExpression(), !2926)
  %77 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2927
  %78 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2927
  %79 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2927
  %80 = call { ptr, i64, i64 } @"internal/reflectlite.appendEscapedRune"(ptr %77, i64 %78, i64 %79, i32 %32, ptr undef), !dbg !2927
    #dbg_value({ ptr, i64, i64 } %80, !2867, !DIExpression(), !2928)
  br label %for.post, !dbg !2882

for.done:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %18, !2867, !DIExpression(), !2929)
  %varargs51 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2930
  %81 = getelementptr inbounds [1 x i8], ptr %varargs51, i32 0, i64 0, !dbg !2930
  store i8 34, ptr %81, align 1, !dbg !2930
  %slice.ptr52 = getelementptr inbounds [1 x i8], ptr %varargs51, i32 0, i64 0, !dbg !2930
  %82 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr52, 0, !dbg !2930
  %83 = insertvalue { ptr, i64, i64 } %82, i64 1, 1, !dbg !2930
  %84 = insertvalue { ptr, i64, i64 } %83, i64 1, 2, !dbg !2930
  %append.srcBuf53 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2931
  %append.srcLen54 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2931
  %append.srcCap55 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2931
  %append.elemsBuf56 = extractvalue { ptr, i64, i64 } %84, 0, !dbg !2931
  %append.elemsLen57 = extractvalue { ptr, i64, i64 } %84, 1, !dbg !2931
  %append.new58 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf53, ptr %append.elemsBuf56, i64 %append.srcLen54, i64 %append.srcCap55, i64 %append.elemsLen57, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2931
  %append.newPtr59 = extractvalue { ptr, i64, i64 } %append.new58, 0, !dbg !2931
  %append.newLen60 = extractvalue { ptr, i64, i64 } %append.new58, 1, !dbg !2931
  %append.newCap61 = extractvalue { ptr, i64, i64 } %append.new58, 2, !dbg !2931
  %85 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr59, 0, !dbg !2931
  %86 = insertvalue { ptr, i64, i64 } %85, i64 %append.newLen60, 1, !dbg !2931
  %87 = insertvalue { ptr, i64, i64 } %86, i64 %append.newCap61, 2, !dbg !2931
    #dbg_value({ ptr, i64, i64 } %87, !2867, !DIExpression(), !2932)
    #dbg_value({ ptr, i64, i64 } %87, !2867, !DIExpression(), !2933)
  %88 = extractvalue { ptr, i64, i64 } %87, 0, !dbg !2934
  %89 = extractvalue { ptr, i64, i64 } %87, 1, !dbg !2934
  %90 = extractvalue { ptr, i64, i64 } %87, 2, !dbg !2934
  %91 = call %runtime._string @runtime.stringFromBytes(ptr %88, i64 %89, i64 %90, ptr undef), !dbg !2934
  ret %runtime._string %91, !dbg !2935

slice.throw:                                      ; preds = %entry
  call void @runtime.slicePanic(ptr undef), !dbg !2875
  unreachable, !dbg !2875

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2888
  unreachable, !dbg !2888

lookup.throw13:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !2907
  unreachable, !dbg !2907

lookup.throw15:                                   ; preds = %lookup.next14
  call void @runtime.lookupPanic(ptr undef), !dbg !2909
  unreachable, !dbg !2909

lookup.throw29:                                   ; preds = %lookup.next16
  call void @runtime.lookupPanic(ptr undef), !dbg !2915
  unreachable, !dbg !2915

lookup.throw31:                                   ; preds = %lookup.next30
  call void @runtime.lookupPanic(ptr undef), !dbg !2917
  unreachable, !dbg !2917

slice.throw49:                                    ; preds = %for.post
  call void @runtime.slicePanic(ptr undef), !dbg !2923
  unreachable, !dbg !2923
}

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @"internal/reflectlite.appendEscapedRune"(ptr %buf.data, i64 %buf.len, i64 %buf.cap, i32 %r, ptr %context) unnamed_addr #1 !dbg !2936 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %buf.data, 0, !dbg !2943
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %buf.len, 1, !dbg !2943
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %buf.cap, 2, !dbg !2943
    #dbg_value(ptr %buf.data, !2938, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2943)
    #dbg_value(i64 %buf.len, !2938, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2943)
    #dbg_value(i64 %buf.cap, !2938, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2943)
    #dbg_value(i32 %r, !2939, !DIExpression(), !2943)
  %runeTmp = call align 1 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2944
    #dbg_value(i32 %r, !2939, !DIExpression(), !2945)
  %3 = icmp eq i32 %r, 34, !dbg !2946
  br i1 %3, label %if.then, label %cond.false, !dbg !2947

if.then:                                          ; preds = %cond.false, %entry
    #dbg_value({ ptr, i64, i64 } %2, !2938, !DIExpression(), !2948)
  %varargs = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2949
  %4 = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2949
  store i8 92, ptr %4, align 1, !dbg !2949
  %slice.ptr = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2949
  %5 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !2949
  %6 = insertvalue { ptr, i64, i64 } %5, i64 1, 1, !dbg !2949
  %7 = insertvalue { ptr, i64, i64 } %6, i64 1, 2, !dbg !2949
  %append.srcBuf = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2950
  %append.srcLen = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2950
  %append.srcCap = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2950
  %append.elemsBuf = extractvalue { ptr, i64, i64 } %7, 0, !dbg !2950
  %append.elemsLen = extractvalue { ptr, i64, i64 } %7, 1, !dbg !2950
  %append.new = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf, ptr %append.elemsBuf, i64 %append.srcLen, i64 %append.srcCap, i64 %append.elemsLen, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2950
  %append.newPtr = extractvalue { ptr, i64, i64 } %append.new, 0, !dbg !2950
  %append.newLen = extractvalue { ptr, i64, i64 } %append.new, 1, !dbg !2950
  %append.newCap = extractvalue { ptr, i64, i64 } %append.new, 2, !dbg !2950
  %8 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr, 0, !dbg !2950
  %9 = insertvalue { ptr, i64, i64 } %8, i64 %append.newLen, 1, !dbg !2950
  %10 = insertvalue { ptr, i64, i64 } %9, i64 %append.newCap, 2, !dbg !2950
    #dbg_value({ ptr, i64, i64 } %10, !2938, !DIExpression(), !2951)
    #dbg_value({ ptr, i64, i64 } %10, !2938, !DIExpression(), !2952)
    #dbg_value(i32 %r, !2939, !DIExpression(), !2953)
  %11 = trunc i32 %r to i8, !dbg !2954
  %varargs23 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2955
  %12 = getelementptr inbounds [1 x i8], ptr %varargs23, i32 0, i64 0, !dbg !2955
  store i8 %11, ptr %12, align 1, !dbg !2954
  %slice.ptr24 = getelementptr inbounds [1 x i8], ptr %varargs23, i32 0, i64 0, !dbg !2955
  %13 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr24, 0, !dbg !2955
  %14 = insertvalue { ptr, i64, i64 } %13, i64 1, 1, !dbg !2955
  %15 = insertvalue { ptr, i64, i64 } %14, i64 1, 2, !dbg !2955
  %append.srcBuf25 = extractvalue { ptr, i64, i64 } %10, 0, !dbg !2956
  %append.srcLen26 = extractvalue { ptr, i64, i64 } %10, 1, !dbg !2956
  %append.srcCap27 = extractvalue { ptr, i64, i64 } %10, 2, !dbg !2956
  %append.elemsBuf28 = extractvalue { ptr, i64, i64 } %15, 0, !dbg !2956
  %append.elemsLen29 = extractvalue { ptr, i64, i64 } %15, 1, !dbg !2956
  %append.new30 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf25, ptr %append.elemsBuf28, i64 %append.srcLen26, i64 %append.srcCap27, i64 %append.elemsLen29, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2956
  %append.newPtr31 = extractvalue { ptr, i64, i64 } %append.new30, 0, !dbg !2956
  %append.newLen32 = extractvalue { ptr, i64, i64 } %append.new30, 1, !dbg !2956
  %append.newCap33 = extractvalue { ptr, i64, i64 } %append.new30, 2, !dbg !2956
  %16 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr31, 0, !dbg !2956
  %17 = insertvalue { ptr, i64, i64 } %16, i64 %append.newLen32, 1, !dbg !2956
  %18 = insertvalue { ptr, i64, i64 } %17, i64 %append.newCap33, 2, !dbg !2956
    #dbg_value({ ptr, i64, i64 } %18, !2938, !DIExpression(), !2957)
    #dbg_value({ ptr, i64, i64 } %18, !2938, !DIExpression(), !2958)
  ret { ptr, i64, i64 } %18, !dbg !2959

cond.false:                                       ; preds = %entry
    #dbg_value(i32 %r, !2939, !DIExpression(), !2960)
  %19 = icmp eq i32 %r, 92, !dbg !2961
  br i1 %19, label %if.then, label %if.done, !dbg !2947

if.done:                                          ; preds = %cond.false
    #dbg_value(i32 %r, !2939, !DIExpression(), !2962)
  %20 = call i1 @"internal/reflectlite.isPrint"(i32 %r, ptr undef), !dbg !2963
  br i1 %20, label %if.then1, label %if.done2, !dbg !2947

if.then1:                                         ; preds = %if.done
  %slice.ptr34 = getelementptr inbounds [4 x i8], ptr %runeTmp, i32 0, i64 0, !dbg !2964
  %21 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr34, 0, !dbg !2964
  %22 = insertvalue { ptr, i64, i64 } %21, i64 4, 1, !dbg !2964
  %23 = insertvalue { ptr, i64, i64 } %22, i64 4, 2, !dbg !2964
    #dbg_value(i32 %r, !2939, !DIExpression(), !2965)
  %24 = extractvalue { ptr, i64, i64 } %23, 0, !dbg !2966
  %25 = extractvalue { ptr, i64, i64 } %23, 1, !dbg !2966
  %26 = extractvalue { ptr, i64, i64 } %23, 2, !dbg !2966
  %27 = call i64 @"unicode/utf8.EncodeRune"(ptr %24, i64 %25, i64 %26, i32 %r, ptr undef), !dbg !2966
    #dbg_value(i64 %27, !2940, !DIExpression(), !2967)
    #dbg_value({ ptr, i64, i64 } %2, !2938, !DIExpression(), !2968)
    #dbg_value(i64 %27, !2940, !DIExpression(), !2969)
  %slice.lowhigh = icmp ugt i64 0, %27, !dbg !2970
  %slice.highmax = icmp ugt i64 %27, 4, !dbg !2970
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2970
  %slice.lowcap = or i1 %slice.lowmax, false, !dbg !2970
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2970

slice.next:                                       ; preds = %if.then1
  %slice.len = sub i64 %27, 0, !dbg !2970
  %slice.ptr35 = getelementptr inbounds [4 x i8], ptr %runeTmp, i32 0, i64 0, !dbg !2970
  %28 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr35, 0, !dbg !2970
  %29 = insertvalue { ptr, i64, i64 } %28, i64 %slice.len, 1, !dbg !2970
  %30 = insertvalue { ptr, i64, i64 } %29, i64 4, 2, !dbg !2970
  %append.srcBuf36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2971
  %append.srcLen37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2971
  %append.srcCap38 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2971
  %append.elemsBuf39 = extractvalue { ptr, i64, i64 } %30, 0, !dbg !2971
  %append.elemsLen40 = extractvalue { ptr, i64, i64 } %30, 1, !dbg !2971
  %append.new41 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf36, ptr %append.elemsBuf39, i64 %append.srcLen37, i64 %append.srcCap38, i64 %append.elemsLen40, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2971
  %append.newPtr42 = extractvalue { ptr, i64, i64 } %append.new41, 0, !dbg !2971
  %append.newLen43 = extractvalue { ptr, i64, i64 } %append.new41, 1, !dbg !2971
  %append.newCap44 = extractvalue { ptr, i64, i64 } %append.new41, 2, !dbg !2971
  %31 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr42, 0, !dbg !2971
  %32 = insertvalue { ptr, i64, i64 } %31, i64 %append.newLen43, 1, !dbg !2971
  %33 = insertvalue { ptr, i64, i64 } %32, i64 %append.newCap44, 2, !dbg !2971
    #dbg_value({ ptr, i64, i64 } %33, !2938, !DIExpression(), !2972)
    #dbg_value({ ptr, i64, i64 } %33, !2938, !DIExpression(), !2973)
  ret { ptr, i64, i64 } %33, !dbg !2974

if.done2:                                         ; preds = %if.done
    #dbg_value(i32 %r, !2939, !DIExpression(), !2975)
  %34 = icmp eq i32 %r, 7, !dbg !2976
  br i1 %34, label %switch.body, label %switch.next, !dbg !2947

switch.body:                                      ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } %2, !2938, !DIExpression(), !2977)
  %append.srcBuf45 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2978
  %append.srcLen46 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2978
  %append.srcCap47 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2978
  %append.new48 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf45, ptr @"internal/reflectlite$string.23", i64 %append.srcLen46, i64 %append.srcCap47, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2978
  %append.newPtr49 = extractvalue { ptr, i64, i64 } %append.new48, 0, !dbg !2978
  %append.newLen50 = extractvalue { ptr, i64, i64 } %append.new48, 1, !dbg !2978
  %append.newCap51 = extractvalue { ptr, i64, i64 } %append.new48, 2, !dbg !2978
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr49, 0, !dbg !2978
  %36 = insertvalue { ptr, i64, i64 } %35, i64 %append.newLen50, 1, !dbg !2978
  %37 = insertvalue { ptr, i64, i64 } %36, i64 %append.newCap51, 2, !dbg !2978
    #dbg_value({ ptr, i64, i64 } %37, !2938, !DIExpression(), !2979)
  br label %switch.done, !dbg !2947

switch.done:                                      ; preds = %for.loop21, %for.loop, %lookup.next113, %switch.body13, %switch.body11, %switch.body9, %switch.body7, %switch.body5, %switch.body3, %switch.body
  %38 = phi { ptr, i64, i64 } [ %37, %switch.body ], [ %42, %switch.body3 ], [ %46, %switch.body5 ], [ %50, %switch.body7 ], [ %54, %switch.body9 ], [ %58, %switch.body11 ], [ %62, %switch.body13 ], [ %93, %lookup.next113 ], [ %100, %for.loop ], [ %122, %for.loop21 ], !dbg !2980
    #dbg_value({ ptr, i64, i64 } %38, !2938, !DIExpression(), !2981)
  ret { ptr, i64, i64 } %38, !dbg !2982

switch.next:                                      ; preds = %if.done2
  %39 = icmp eq i32 %r, 8, !dbg !2983
  br i1 %39, label %switch.body3, label %switch.next4, !dbg !2947

switch.body3:                                     ; preds = %switch.next
    #dbg_value({ ptr, i64, i64 } %2, !2938, !DIExpression(), !2984)
  %append.srcBuf52 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2985
  %append.srcLen53 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2985
  %append.srcCap54 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2985
  %append.new55 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf52, ptr @"internal/reflectlite$string.24", i64 %append.srcLen53, i64 %append.srcCap54, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2985
  %append.newPtr56 = extractvalue { ptr, i64, i64 } %append.new55, 0, !dbg !2985
  %append.newLen57 = extractvalue { ptr, i64, i64 } %append.new55, 1, !dbg !2985
  %append.newCap58 = extractvalue { ptr, i64, i64 } %append.new55, 2, !dbg !2985
  %40 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr56, 0, !dbg !2985
  %41 = insertvalue { ptr, i64, i64 } %40, i64 %append.newLen57, 1, !dbg !2985
  %42 = insertvalue { ptr, i64, i64 } %41, i64 %append.newCap58, 2, !dbg !2985
    #dbg_value({ ptr, i64, i64 } %42, !2938, !DIExpression(), !2986)
  br label %switch.done, !dbg !2947

switch.next4:                                     ; preds = %switch.next
  %43 = icmp eq i32 %r, 12, !dbg !2987
  br i1 %43, label %switch.body5, label %switch.next6, !dbg !2947

switch.body5:                                     ; preds = %switch.next4
    #dbg_value({ ptr, i64, i64 } %2, !2938, !DIExpression(), !2988)
  %append.srcBuf59 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2989
  %append.srcLen60 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2989
  %append.srcCap61 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2989
  %append.new62 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf59, ptr @"internal/reflectlite$string.25", i64 %append.srcLen60, i64 %append.srcCap61, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2989
  %append.newPtr63 = extractvalue { ptr, i64, i64 } %append.new62, 0, !dbg !2989
  %append.newLen64 = extractvalue { ptr, i64, i64 } %append.new62, 1, !dbg !2989
  %append.newCap65 = extractvalue { ptr, i64, i64 } %append.new62, 2, !dbg !2989
  %44 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr63, 0, !dbg !2989
  %45 = insertvalue { ptr, i64, i64 } %44, i64 %append.newLen64, 1, !dbg !2989
  %46 = insertvalue { ptr, i64, i64 } %45, i64 %append.newCap65, 2, !dbg !2989
    #dbg_value({ ptr, i64, i64 } %46, !2938, !DIExpression(), !2990)
  br label %switch.done, !dbg !2947

switch.next6:                                     ; preds = %switch.next4
  %47 = icmp eq i32 %r, 10, !dbg !2991
  br i1 %47, label %switch.body7, label %switch.next8, !dbg !2947

switch.body7:                                     ; preds = %switch.next6
    #dbg_value({ ptr, i64, i64 } %2, !2938, !DIExpression(), !2992)
  %append.srcBuf66 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2993
  %append.srcLen67 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2993
  %append.srcCap68 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2993
  %append.new69 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf66, ptr @"internal/reflectlite$string.26", i64 %append.srcLen67, i64 %append.srcCap68, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2993
  %append.newPtr70 = extractvalue { ptr, i64, i64 } %append.new69, 0, !dbg !2993
  %append.newLen71 = extractvalue { ptr, i64, i64 } %append.new69, 1, !dbg !2993
  %append.newCap72 = extractvalue { ptr, i64, i64 } %append.new69, 2, !dbg !2993
  %48 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr70, 0, !dbg !2993
  %49 = insertvalue { ptr, i64, i64 } %48, i64 %append.newLen71, 1, !dbg !2993
  %50 = insertvalue { ptr, i64, i64 } %49, i64 %append.newCap72, 2, !dbg !2993
    #dbg_value({ ptr, i64, i64 } %50, !2938, !DIExpression(), !2994)
  br label %switch.done, !dbg !2947

switch.next8:                                     ; preds = %switch.next6
  %51 = icmp eq i32 %r, 13, !dbg !2995
  br i1 %51, label %switch.body9, label %switch.next10, !dbg !2947

switch.body9:                                     ; preds = %switch.next8
    #dbg_value({ ptr, i64, i64 } %2, !2938, !DIExpression(), !2996)
  %append.srcBuf73 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2997
  %append.srcLen74 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2997
  %append.srcCap75 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2997
  %append.new76 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf73, ptr @"internal/reflectlite$string.27", i64 %append.srcLen74, i64 %append.srcCap75, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2997
  %append.newPtr77 = extractvalue { ptr, i64, i64 } %append.new76, 0, !dbg !2997
  %append.newLen78 = extractvalue { ptr, i64, i64 } %append.new76, 1, !dbg !2997
  %append.newCap79 = extractvalue { ptr, i64, i64 } %append.new76, 2, !dbg !2997
  %52 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr77, 0, !dbg !2997
  %53 = insertvalue { ptr, i64, i64 } %52, i64 %append.newLen78, 1, !dbg !2997
  %54 = insertvalue { ptr, i64, i64 } %53, i64 %append.newCap79, 2, !dbg !2997
    #dbg_value({ ptr, i64, i64 } %54, !2938, !DIExpression(), !2998)
  br label %switch.done, !dbg !2947

switch.next10:                                    ; preds = %switch.next8
  %55 = icmp eq i32 %r, 9, !dbg !2999
  br i1 %55, label %switch.body11, label %switch.next12, !dbg !2947

switch.body11:                                    ; preds = %switch.next10
    #dbg_value({ ptr, i64, i64 } %2, !2938, !DIExpression(), !3000)
  %append.srcBuf80 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3001
  %append.srcLen81 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3001
  %append.srcCap82 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3001
  %append.new83 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf80, ptr @"internal/reflectlite$string.28", i64 %append.srcLen81, i64 %append.srcCap82, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3001
  %append.newPtr84 = extractvalue { ptr, i64, i64 } %append.new83, 0, !dbg !3001
  %append.newLen85 = extractvalue { ptr, i64, i64 } %append.new83, 1, !dbg !3001
  %append.newCap86 = extractvalue { ptr, i64, i64 } %append.new83, 2, !dbg !3001
  %56 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr84, 0, !dbg !3001
  %57 = insertvalue { ptr, i64, i64 } %56, i64 %append.newLen85, 1, !dbg !3001
  %58 = insertvalue { ptr, i64, i64 } %57, i64 %append.newCap86, 2, !dbg !3001
    #dbg_value({ ptr, i64, i64 } %58, !2938, !DIExpression(), !3002)
  br label %switch.done, !dbg !2947

switch.next12:                                    ; preds = %switch.next10
  %59 = icmp eq i32 %r, 11, !dbg !3003
  br i1 %59, label %switch.body13, label %switch.next14, !dbg !2947

switch.body13:                                    ; preds = %switch.next12
    #dbg_value({ ptr, i64, i64 } %2, !2938, !DIExpression(), !3004)
  %append.srcBuf87 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3005
  %append.srcLen88 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3005
  %append.srcCap89 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3005
  %append.new90 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf87, ptr @"internal/reflectlite$string.29", i64 %append.srcLen88, i64 %append.srcCap89, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3005
  %append.newPtr91 = extractvalue { ptr, i64, i64 } %append.new90, 0, !dbg !3005
  %append.newLen92 = extractvalue { ptr, i64, i64 } %append.new90, 1, !dbg !3005
  %append.newCap93 = extractvalue { ptr, i64, i64 } %append.new90, 2, !dbg !3005
  %60 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr91, 0, !dbg !3005
  %61 = insertvalue { ptr, i64, i64 } %60, i64 %append.newLen92, 1, !dbg !3005
  %62 = insertvalue { ptr, i64, i64 } %61, i64 %append.newCap93, 2, !dbg !3005
    #dbg_value({ ptr, i64, i64 } %62, !2938, !DIExpression(), !3006)
  br label %switch.done, !dbg !2947

switch.next14:                                    ; preds = %switch.next12
    #dbg_value(i32 %r, !2939, !DIExpression(), !3007)
  %63 = icmp slt i32 %r, 32, !dbg !3008
  br i1 %63, label %binop.done, label %binop.rhs, !dbg !2947

binop.done:                                       ; preds = %binop.rhs, %switch.next14
  %64 = phi i1 [ true, %switch.next14 ], [ %140, %binop.rhs ], !dbg !3009
  br i1 %64, label %switch.body15, label %switch.next16, !dbg !2947

switch.body15:                                    ; preds = %binop.done
    #dbg_value({ ptr, i64, i64 } %2, !2938, !DIExpression(), !3010)
  %append.srcBuf94 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3011
  %append.srcLen95 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3011
  %append.srcCap96 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3011
  %append.new97 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf94, ptr @"internal/reflectlite$string.30", i64 %append.srcLen95, i64 %append.srcCap96, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3011
  %append.newPtr98 = extractvalue { ptr, i64, i64 } %append.new97, 0, !dbg !3011
  %append.newLen99 = extractvalue { ptr, i64, i64 } %append.new97, 1, !dbg !3011
  %append.newCap100 = extractvalue { ptr, i64, i64 } %append.new97, 2, !dbg !3011
  %65 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr98, 0, !dbg !3011
  %66 = insertvalue { ptr, i64, i64 } %65, i64 %append.newLen99, 1, !dbg !3011
  %67 = insertvalue { ptr, i64, i64 } %66, i64 %append.newCap100, 2, !dbg !3011
    #dbg_value({ ptr, i64, i64 } %67, !2938, !DIExpression(), !3012)
    #dbg_value({ ptr, i64, i64 } %67, !2938, !DIExpression(), !3013)
    #dbg_value(i32 %r, !2939, !DIExpression(), !3014)
  %68 = trunc i32 %r to i8, !dbg !3015
  %69 = lshr i8 %68, 4, !dbg !3016
  %shift.result = select i1 false, i8 0, i8 %69, !dbg !3016
  %70 = zext i8 %shift.result to i64, !dbg !3017
  %71 = icmp uge i64 %70, 15, !dbg !3017
  br i1 %71, label %lookup.throw, label %lookup.next, !dbg !3017

lookup.next:                                      ; preds = %switch.body15
  %72 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.31", i64 %70, !dbg !3017
  %73 = load i8, ptr %72, align 1, !dbg !3017
  %varargs101 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3018
  %74 = getelementptr inbounds [1 x i8], ptr %varargs101, i32 0, i64 0, !dbg !3018
  store i8 %73, ptr %74, align 1, !dbg !3017
  %slice.ptr102 = getelementptr inbounds [1 x i8], ptr %varargs101, i32 0, i64 0, !dbg !3018
  %75 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr102, 0, !dbg !3018
  %76 = insertvalue { ptr, i64, i64 } %75, i64 1, 1, !dbg !3018
  %77 = insertvalue { ptr, i64, i64 } %76, i64 1, 2, !dbg !3018
  %append.srcBuf103 = extractvalue { ptr, i64, i64 } %67, 0, !dbg !3019
  %append.srcLen104 = extractvalue { ptr, i64, i64 } %67, 1, !dbg !3019
  %append.srcCap105 = extractvalue { ptr, i64, i64 } %67, 2, !dbg !3019
  %append.elemsBuf106 = extractvalue { ptr, i64, i64 } %77, 0, !dbg !3019
  %append.elemsLen107 = extractvalue { ptr, i64, i64 } %77, 1, !dbg !3019
  %append.new108 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf103, ptr %append.elemsBuf106, i64 %append.srcLen104, i64 %append.srcCap105, i64 %append.elemsLen107, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3019
  %append.newPtr109 = extractvalue { ptr, i64, i64 } %append.new108, 0, !dbg !3019
  %append.newLen110 = extractvalue { ptr, i64, i64 } %append.new108, 1, !dbg !3019
  %append.newCap111 = extractvalue { ptr, i64, i64 } %append.new108, 2, !dbg !3019
  %78 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr109, 0, !dbg !3019
  %79 = insertvalue { ptr, i64, i64 } %78, i64 %append.newLen110, 1, !dbg !3019
  %80 = insertvalue { ptr, i64, i64 } %79, i64 %append.newCap111, 2, !dbg !3019
    #dbg_value({ ptr, i64, i64 } %80, !2938, !DIExpression(), !3020)
    #dbg_value({ ptr, i64, i64 } %80, !2938, !DIExpression(), !3021)
    #dbg_value(i32 %r, !2939, !DIExpression(), !3022)
  %81 = trunc i32 %r to i8, !dbg !3023
  %82 = and i8 %81, 15, !dbg !3024
  %83 = zext i8 %82 to i64, !dbg !3025
  %84 = icmp uge i64 %83, 15, !dbg !3025
  br i1 %84, label %lookup.throw112, label %lookup.next113, !dbg !3025

lookup.next113:                                   ; preds = %lookup.next
  %85 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.32", i64 %83, !dbg !3025
  %86 = load i8, ptr %85, align 1, !dbg !3025
  %varargs114 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3026
  %87 = getelementptr inbounds [1 x i8], ptr %varargs114, i32 0, i64 0, !dbg !3026
  store i8 %86, ptr %87, align 1, !dbg !3025
  %slice.ptr115 = getelementptr inbounds [1 x i8], ptr %varargs114, i32 0, i64 0, !dbg !3026
  %88 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr115, 0, !dbg !3026
  %89 = insertvalue { ptr, i64, i64 } %88, i64 1, 1, !dbg !3026
  %90 = insertvalue { ptr, i64, i64 } %89, i64 1, 2, !dbg !3026
  %append.srcBuf116 = extractvalue { ptr, i64, i64 } %80, 0, !dbg !3027
  %append.srcLen117 = extractvalue { ptr, i64, i64 } %80, 1, !dbg !3027
  %append.srcCap118 = extractvalue { ptr, i64, i64 } %80, 2, !dbg !3027
  %append.elemsBuf119 = extractvalue { ptr, i64, i64 } %90, 0, !dbg !3027
  %append.elemsLen120 = extractvalue { ptr, i64, i64 } %90, 1, !dbg !3027
  %append.new121 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf116, ptr %append.elemsBuf119, i64 %append.srcLen117, i64 %append.srcCap118, i64 %append.elemsLen120, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3027
  %append.newPtr122 = extractvalue { ptr, i64, i64 } %append.new121, 0, !dbg !3027
  %append.newLen123 = extractvalue { ptr, i64, i64 } %append.new121, 1, !dbg !3027
  %append.newCap124 = extractvalue { ptr, i64, i64 } %append.new121, 2, !dbg !3027
  %91 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr122, 0, !dbg !3027
  %92 = insertvalue { ptr, i64, i64 } %91, i64 %append.newLen123, 1, !dbg !3027
  %93 = insertvalue { ptr, i64, i64 } %92, i64 %append.newCap124, 2, !dbg !3027
    #dbg_value({ ptr, i64, i64 } %93, !2938, !DIExpression(), !3028)
  br label %switch.done, !dbg !2947

switch.next16:                                    ; preds = %binop.done
    #dbg_value(i32 %r, !2939, !DIExpression(), !3029)
  %94 = call i1 @"unicode/utf8.ValidRune"(i32 %r, ptr undef), !dbg !3030
  %95 = xor i1 %94, true, !dbg !3031
  br i1 %95, label %switch.body17, label %switch.next19, !dbg !2947

switch.body17:                                    ; preds = %switch.next16
    #dbg_value(i32 65533, !2939, !DIExpression(), !3032)
  br label %switch.body18, !dbg !2947

switch.body18:                                    ; preds = %switch.next19, %switch.body17
  %96 = phi i32 [ 65533, %switch.body17 ], [ %r, %switch.next19 ], !dbg !3033
    #dbg_value({ ptr, i64, i64 } %2, !2938, !DIExpression(), !3034)
  %append.srcBuf125 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3035
  %append.srcLen126 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3035
  %append.srcCap127 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3035
  %append.new128 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf125, ptr @"internal/reflectlite$string.33", i64 %append.srcLen126, i64 %append.srcCap127, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3035
  %append.newPtr129 = extractvalue { ptr, i64, i64 } %append.new128, 0, !dbg !3035
  %append.newLen130 = extractvalue { ptr, i64, i64 } %append.new128, 1, !dbg !3035
  %append.newCap131 = extractvalue { ptr, i64, i64 } %append.new128, 2, !dbg !3035
  %97 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr129, 0, !dbg !3035
  %98 = insertvalue { ptr, i64, i64 } %97, i64 %append.newLen130, 1, !dbg !3035
  %99 = insertvalue { ptr, i64, i64 } %98, i64 %append.newCap131, 2, !dbg !3035
    #dbg_value({ ptr, i64, i64 } %99, !2938, !DIExpression(), !3036)
    #dbg_value(i64 12, !2941, !DIExpression(), !3037)
  br label %for.loop, !dbg !2947

for.loop:                                         ; preds = %lookup.next133, %switch.body18
  %100 = phi { ptr, i64, i64 } [ %99, %switch.body18 ], [ %116, %lookup.next133 ], !dbg !2980
  %101 = phi i64 [ 12, %switch.body18 ], [ %117, %lookup.next133 ], !dbg !3037
    #dbg_value(i64 %101, !2941, !DIExpression(), !3038)
  %102 = icmp sge i64 %101, 0, !dbg !3039
  br i1 %102, label %for.body, label %switch.done, !dbg !2947

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %100, !2938, !DIExpression(), !3040)
    #dbg_value(i32 %96, !2939, !DIExpression(), !3041)
    #dbg_value(i64 %101, !2941, !DIExpression(), !3042)
  %shift.overflow = icmp uge i64 %101, 32, !dbg !3043
  %103 = trunc i64 %101 to i32, !dbg !3043
  %shift.offset = select i1 %shift.overflow, i32 31, i32 %103, !dbg !3043
  %104 = ashr i32 %96, %shift.offset, !dbg !3043
  %105 = and i32 %104, 15, !dbg !3044
  %106 = sext i32 %105 to i64, !dbg !3045
  %107 = icmp uge i64 %106, 15, !dbg !3045
  br i1 %107, label %lookup.throw132, label %lookup.next133, !dbg !3045

lookup.next133:                                   ; preds = %for.body
  %108 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.34", i64 %106, !dbg !3045
  %109 = load i8, ptr %108, align 1, !dbg !3045
  %varargs134 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3046
  %110 = getelementptr inbounds [1 x i8], ptr %varargs134, i32 0, i64 0, !dbg !3046
  store i8 %109, ptr %110, align 1, !dbg !3045
  %slice.ptr135 = getelementptr inbounds [1 x i8], ptr %varargs134, i32 0, i64 0, !dbg !3046
  %111 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr135, 0, !dbg !3046
  %112 = insertvalue { ptr, i64, i64 } %111, i64 1, 1, !dbg !3046
  %113 = insertvalue { ptr, i64, i64 } %112, i64 1, 2, !dbg !3046
  %append.srcBuf136 = extractvalue { ptr, i64, i64 } %100, 0, !dbg !3047
  %append.srcLen137 = extractvalue { ptr, i64, i64 } %100, 1, !dbg !3047
  %append.srcCap138 = extractvalue { ptr, i64, i64 } %100, 2, !dbg !3047
  %append.elemsBuf139 = extractvalue { ptr, i64, i64 } %113, 0, !dbg !3047
  %append.elemsLen140 = extractvalue { ptr, i64, i64 } %113, 1, !dbg !3047
  %append.new141 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf136, ptr %append.elemsBuf139, i64 %append.srcLen137, i64 %append.srcCap138, i64 %append.elemsLen140, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3047
  %append.newPtr142 = extractvalue { ptr, i64, i64 } %append.new141, 0, !dbg !3047
  %append.newLen143 = extractvalue { ptr, i64, i64 } %append.new141, 1, !dbg !3047
  %append.newCap144 = extractvalue { ptr, i64, i64 } %append.new141, 2, !dbg !3047
  %114 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr142, 0, !dbg !3047
  %115 = insertvalue { ptr, i64, i64 } %114, i64 %append.newLen143, 1, !dbg !3047
  %116 = insertvalue { ptr, i64, i64 } %115, i64 %append.newCap144, 2, !dbg !3047
    #dbg_value({ ptr, i64, i64 } %116, !2938, !DIExpression(), !3048)
  %117 = sub i64 %101, 4, !dbg !3049
    #dbg_value(i64 %117, !2941, !DIExpression(), !3049)
  br label %for.loop, !dbg !2947

switch.next19:                                    ; preds = %switch.next16
    #dbg_value(i32 %r, !2939, !DIExpression(), !3050)
  %118 = icmp slt i32 %r, 65536, !dbg !3051
  br i1 %118, label %switch.body18, label %switch.next20, !dbg !2947

switch.next20:                                    ; preds = %switch.next19
    #dbg_value({ ptr, i64, i64 } %2, !2938, !DIExpression(), !3052)
  %append.srcBuf145 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3053
  %append.srcLen146 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3053
  %append.srcCap147 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3053
  %append.new148 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf145, ptr @"internal/reflectlite$string.35", i64 %append.srcLen146, i64 %append.srcCap147, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3053
  %append.newPtr149 = extractvalue { ptr, i64, i64 } %append.new148, 0, !dbg !3053
  %append.newLen150 = extractvalue { ptr, i64, i64 } %append.new148, 1, !dbg !3053
  %append.newCap151 = extractvalue { ptr, i64, i64 } %append.new148, 2, !dbg !3053
  %119 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr149, 0, !dbg !3053
  %120 = insertvalue { ptr, i64, i64 } %119, i64 %append.newLen150, 1, !dbg !3053
  %121 = insertvalue { ptr, i64, i64 } %120, i64 %append.newCap151, 2, !dbg !3053
    #dbg_value({ ptr, i64, i64 } %121, !2938, !DIExpression(), !3054)
    #dbg_value(i64 28, !2942, !DIExpression(), !3055)
  br label %for.loop21, !dbg !2947

for.loop21:                                       ; preds = %lookup.next155, %switch.next20
  %122 = phi { ptr, i64, i64 } [ %121, %switch.next20 ], [ %138, %lookup.next155 ], !dbg !2980
  %123 = phi i64 [ 28, %switch.next20 ], [ %139, %lookup.next155 ], !dbg !3055
    #dbg_value(i64 %123, !2942, !DIExpression(), !3056)
  %124 = icmp sge i64 %123, 0, !dbg !3057
  br i1 %124, label %for.body22, label %switch.done, !dbg !2947

for.body22:                                       ; preds = %for.loop21
    #dbg_value({ ptr, i64, i64 } %122, !2938, !DIExpression(), !3058)
    #dbg_value(i32 %r, !2939, !DIExpression(), !3059)
    #dbg_value(i64 %123, !2942, !DIExpression(), !3060)
  %shift.overflow152 = icmp uge i64 %123, 32, !dbg !3061
  %125 = trunc i64 %123 to i32, !dbg !3061
  %shift.offset153 = select i1 %shift.overflow152, i32 31, i32 %125, !dbg !3061
  %126 = ashr i32 %r, %shift.offset153, !dbg !3061
  %127 = and i32 %126, 15, !dbg !3062
  %128 = sext i32 %127 to i64, !dbg !3063
  %129 = icmp uge i64 %128, 15, !dbg !3063
  br i1 %129, label %lookup.throw154, label %lookup.next155, !dbg !3063

lookup.next155:                                   ; preds = %for.body22
  %130 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.36", i64 %128, !dbg !3063
  %131 = load i8, ptr %130, align 1, !dbg !3063
  %varargs156 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3064
  %132 = getelementptr inbounds [1 x i8], ptr %varargs156, i32 0, i64 0, !dbg !3064
  store i8 %131, ptr %132, align 1, !dbg !3063
  %slice.ptr157 = getelementptr inbounds [1 x i8], ptr %varargs156, i32 0, i64 0, !dbg !3064
  %133 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr157, 0, !dbg !3064
  %134 = insertvalue { ptr, i64, i64 } %133, i64 1, 1, !dbg !3064
  %135 = insertvalue { ptr, i64, i64 } %134, i64 1, 2, !dbg !3064
  %append.srcBuf158 = extractvalue { ptr, i64, i64 } %122, 0, !dbg !3065
  %append.srcLen159 = extractvalue { ptr, i64, i64 } %122, 1, !dbg !3065
  %append.srcCap160 = extractvalue { ptr, i64, i64 } %122, 2, !dbg !3065
  %append.elemsBuf161 = extractvalue { ptr, i64, i64 } %135, 0, !dbg !3065
  %append.elemsLen162 = extractvalue { ptr, i64, i64 } %135, 1, !dbg !3065
  %append.new163 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf158, ptr %append.elemsBuf161, i64 %append.srcLen159, i64 %append.srcCap160, i64 %append.elemsLen162, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3065
  %append.newPtr164 = extractvalue { ptr, i64, i64 } %append.new163, 0, !dbg !3065
  %append.newLen165 = extractvalue { ptr, i64, i64 } %append.new163, 1, !dbg !3065
  %append.newCap166 = extractvalue { ptr, i64, i64 } %append.new163, 2, !dbg !3065
  %136 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr164, 0, !dbg !3065
  %137 = insertvalue { ptr, i64, i64 } %136, i64 %append.newLen165, 1, !dbg !3065
  %138 = insertvalue { ptr, i64, i64 } %137, i64 %append.newCap166, 2, !dbg !3065
    #dbg_value({ ptr, i64, i64 } %138, !2938, !DIExpression(), !3066)
  %139 = sub i64 %123, 4, !dbg !3067
    #dbg_value(i64 %139, !2942, !DIExpression(), !3067)
  br label %for.loop21, !dbg !2947

binop.rhs:                                        ; preds = %switch.next14
    #dbg_value(i32 %r, !2939, !DIExpression(), !3068)
  %140 = icmp eq i32 %r, 127, !dbg !3069
  br label %binop.done, !dbg !2947

slice.throw:                                      ; preds = %if.then1
  call void @runtime.slicePanic(ptr undef), !dbg !2970
  unreachable, !dbg !2970

lookup.throw:                                     ; preds = %switch.body15
  call void @runtime.lookupPanic(ptr undef), !dbg !3017
  unreachable, !dbg !3017

lookup.throw112:                                  ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !3025
  unreachable, !dbg !3025

lookup.throw132:                                  ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !3045
  unreachable, !dbg !3045

lookup.throw154:                                  ; preds = %for.body22
  call void @runtime.lookupPanic(ptr undef), !dbg !3063
  unreachable, !dbg !3063
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"internal/reflectlite.isPrint"(i32 %r, ptr %context) unnamed_addr #1 !dbg !3070 {
entry:
    #dbg_value(i32 %r, !3072, !DIExpression(), !3073)
    #dbg_value(i32 %r, !3072, !DIExpression(), !3074)
  %0 = icmp sle i32 %r, 255, !dbg !3075
  br i1 %0, label %if.then, label %if.done5, !dbg !3076

if.then:                                          ; preds = %entry
    #dbg_value(i32 %r, !3072, !DIExpression(), !3077)
  %1 = icmp sle i32 32, %r, !dbg !3078
  br i1 %1, label %cond.true, label %if.done, !dbg !3076

cond.true:                                        ; preds = %if.then
    #dbg_value(i32 %r, !3072, !DIExpression(), !3079)
  %2 = icmp sle i32 %r, 126, !dbg !3080
  br i1 %2, label %if.then1, label %if.done, !dbg !3076

if.then1:                                         ; preds = %cond.true
  ret i1 true, !dbg !3081

if.done:                                          ; preds = %cond.true, %if.then
    #dbg_value(i32 %r, !3072, !DIExpression(), !3082)
  %3 = icmp sle i32 161, %r, !dbg !3083
  br i1 %3, label %cond.true2, label %if.done4, !dbg !3076

cond.true2:                                       ; preds = %if.done
    #dbg_value(i32 %r, !3072, !DIExpression(), !3084)
  %4 = icmp sle i32 %r, 255, !dbg !3085
  br i1 %4, label %if.then3, label %if.done4, !dbg !3076

if.then3:                                         ; preds = %cond.true2
    #dbg_value(i32 %r, !3072, !DIExpression(), !3086)
  %5 = icmp ne i32 %r, 173, !dbg !3087
  ret i1 %5, !dbg !3088

if.done4:                                         ; preds = %cond.true2, %if.done
  ret i1 false, !dbg !3089

if.done5:                                         ; preds = %entry
  ret i1 false, !dbg !3090
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
define internal %runtime._string @"(internal/reflectlite.Kind).String$invoke"(ptr %0, ptr %1) unnamed_addr #1 !dbg !3091 {
entry:
  %unpack.int = ptrtoint ptr %0 to i8, !dbg !3092
  %ret = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %unpack.int, ptr %1), !dbg !3092
  ret %runtime._string %ret, !dbg !3092
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.ValueError).Error"(ptr dereferenceable_or_null(24) %e, ptr %context) unnamed_addr #1 !dbg !3093 {
entry:
    #dbg_value(ptr %e, !3102, !DIExpression(), !3103)
    #dbg_value(ptr %e, !3102, !DIExpression(), !3104)
  %0 = icmp eq ptr %e, null, !dbg !3105
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3105

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 1, !dbg !3105
  %2 = icmp eq ptr %1, null, !dbg !3105
  br i1 %2, label %deref.throw, label %deref.next, !dbg !3105

deref.next:                                       ; preds = %gep.next
  %3 = load i8, ptr %1, align 1, !dbg !3105
  %4 = icmp eq i8 %3, 0, !dbg !3106
  br i1 %4, label %if.then, label %if.done, !dbg !3107

if.then:                                          ; preds = %deref.next
    #dbg_value(ptr %e, !3102, !DIExpression(), !3108)
  %5 = icmp eq ptr %e, null, !dbg !3109
  br i1 %5, label %gep.throw1, label %gep.next2, !dbg !3109

gep.next2:                                        ; preds = %if.then
  %6 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 0, !dbg !3109
  %7 = icmp eq ptr %6, null, !dbg !3109
  br i1 %7, label %deref.throw3, label %deref.next4, !dbg !3109

deref.next4:                                      ; preds = %gep.next2
  %8 = load %runtime._string, ptr %6, align 8, !dbg !3109
  %9 = extractvalue %runtime._string %8, 0, !dbg !3110
  %10 = extractvalue %runtime._string %8, 1, !dbg !3110
  %11 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.229", i64 17, ptr %9, i64 %10, ptr undef), !dbg !3110
  %12 = extractvalue %runtime._string %11, 0, !dbg !3111
  %13 = extractvalue %runtime._string %11, 1, !dbg !3111
  %14 = call %runtime._string @runtime.stringConcat(ptr %12, i64 %13, ptr @"internal/reflectlite$string.230", i64 14, ptr undef), !dbg !3111
  ret %runtime._string %14, !dbg !3112

if.done:                                          ; preds = %deref.next
    #dbg_value(ptr %e, !3102, !DIExpression(), !3113)
  %15 = icmp eq ptr %e, null, !dbg !3114
  br i1 %15, label %gep.throw5, label %gep.next6, !dbg !3114

gep.next6:                                        ; preds = %if.done
  %16 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 0, !dbg !3114
  %17 = icmp eq ptr %16, null, !dbg !3114
  br i1 %17, label %deref.throw7, label %deref.next8, !dbg !3114

deref.next8:                                      ; preds = %gep.next6
  %18 = load %runtime._string, ptr %16, align 8, !dbg !3114
  %19 = extractvalue %runtime._string %18, 0, !dbg !3115
  %20 = extractvalue %runtime._string %18, 1, !dbg !3115
  %21 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.231", i64 17, ptr %19, i64 %20, ptr undef), !dbg !3115
  %22 = extractvalue %runtime._string %21, 0, !dbg !3116
  %23 = extractvalue %runtime._string %21, 1, !dbg !3116
  %24 = call %runtime._string @runtime.stringConcat(ptr %22, i64 %23, ptr @"internal/reflectlite$string.232", i64 4, ptr undef), !dbg !3116
    #dbg_value(ptr %e, !3102, !DIExpression(), !3117)
  %25 = icmp eq ptr %e, null, !dbg !3118
  br i1 %25, label %gep.throw9, label %gep.next10, !dbg !3118

gep.next10:                                       ; preds = %deref.next8
  %26 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 1, !dbg !3118
  %27 = icmp eq ptr %26, null, !dbg !3118
  br i1 %27, label %deref.throw11, label %deref.next12, !dbg !3118

deref.next12:                                     ; preds = %gep.next10
  %28 = load i8, ptr %26, align 1, !dbg !3118
  %29 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %28, ptr undef), !dbg !3119
  %30 = extractvalue %runtime._string %24, 0, !dbg !3120
  %31 = extractvalue %runtime._string %24, 1, !dbg !3120
  %32 = extractvalue %runtime._string %29, 0, !dbg !3120
  %33 = extractvalue %runtime._string %29, 1, !dbg !3120
  %34 = call %runtime._string @runtime.stringConcat(ptr %30, i64 %31, ptr %32, i64 %33, ptr undef), !dbg !3120
  %35 = extractvalue %runtime._string %34, 0, !dbg !3121
  %36 = extractvalue %runtime._string %34, 1, !dbg !3121
  %37 = call %runtime._string @runtime.stringConcat(ptr %35, i64 %36, ptr @"internal/reflectlite$string.233", i64 6, ptr undef), !dbg !3121
  ret %runtime._string %37, !dbg !3122

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3105
  unreachable, !dbg !3105

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3105
  unreachable, !dbg !3105

gep.throw1:                                       ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3109
  unreachable, !dbg !3109

deref.throw3:                                     ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3109
  unreachable, !dbg !3109

gep.throw5:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3114
  unreachable, !dbg !3114

deref.throw7:                                     ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3114
  unreachable, !dbg !3114

gep.throw9:                                       ; preds = %deref.next8
  call void @runtime.nilPanic(ptr undef), !dbg !3118
  unreachable, !dbg !3118

deref.throw11:                                    ; preds = %gep.next10
  call void @runtime.nilPanic(ptr undef), !dbg !3118
  unreachable, !dbg !3118
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr %context) unnamed_addr #1 !dbg !3123 {
entry:
  ret %runtime._string { ptr @"internal/reflectlite$string.17", i64 14 }, !dbg !3128
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.badSyntax).Error"(ptr %arg0, ptr %context) unnamed_addr #1 {
entry:
  %0 = call %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr undef)
  ret %runtime._string %0
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.badSyntax).Error$invoke"(ptr %0, ptr %1) unnamed_addr #1 !dbg !3129 {
entry:
  %ret = call %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr %1), !dbg !3130
  ret %runtime._string %ret, !dbg !3130
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"runtime/interrupt.In"(ptr %context) #1 !dbg !3131 {
entry:
  ret i1 false, !dbg !3134
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Mutex).Lock"(ptr dereferenceable_or_null(4) %m, ptr %context) #1 !dbg !3135 {
entry:
    #dbg_value(ptr %m, !3140, !DIExpression(), !3141)
    #dbg_value(ptr %m, !3140, !DIExpression(), !3142)
  %0 = icmp eq ptr %m, null, !dbg !3143
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3143

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3143
  %2 = icmp eq ptr %1, null, !dbg !3142
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3142

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3142
  %4 = call i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr %3, i32 0, i32 1, ptr undef), !dbg !3144
  br i1 %4, label %if.then, label %for.loop, !dbg !3145

if.then:                                          ; preds = %gep.next2
  ret void, !dbg !3146

for.loop:                                         ; preds = %gep.next8, %gep.next2
    #dbg_value(ptr %m, !3140, !DIExpression(), !3147)
  %5 = icmp eq ptr %m, null, !dbg !3148
  br i1 %5, label %gep.throw3, label %gep.next4, !dbg !3148

gep.next4:                                        ; preds = %for.loop
  %6 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3148
  %7 = icmp eq ptr %6, null, !dbg !3147
  br i1 %7, label %gep.throw5, label %gep.next6, !dbg !3147

gep.next6:                                        ; preds = %gep.next4
  %8 = getelementptr inbounds %"internal/futex.Futex", ptr %6, i32 0, i32 0, !dbg !3147
  %9 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr %8, i32 2, ptr undef), !dbg !3149
  %10 = icmp ne i32 %9, 0, !dbg !3150
  br i1 %10, label %for.body, label %for.done, !dbg !3145

for.body:                                         ; preds = %gep.next6
    #dbg_value(ptr %m, !3140, !DIExpression(), !3151)
  %11 = icmp eq ptr %m, null, !dbg !3152
  br i1 %11, label %gep.throw7, label %gep.next8, !dbg !3152

gep.next8:                                        ; preds = %for.body
  %12 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3152
  %13 = call i1 @"(*internal/futex.Futex).Wait"(ptr %12, i32 2, ptr undef), !dbg !3153
  br label %for.loop, !dbg !3145

for.done:                                         ; preds = %gep.next6
  ret void, !dbg !3154

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3143
  unreachable, !dbg !3143

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3142
  unreachable, !dbg !3142

gep.throw3:                                       ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !3148
  unreachable, !dbg !3148

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3147
  unreachable, !dbg !3147

gep.throw7:                                       ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3152
  unreachable, !dbg !3152
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Mutex).Unlock"(ptr dereferenceable_or_null(4) %m, ptr %context) #1 !dbg !3155 {
entry:
    #dbg_value(ptr %m, !3157, !DIExpression(), !3159)
    #dbg_value(ptr %m, !3157, !DIExpression(), !3160)
  %0 = icmp eq ptr %m, null, !dbg !3161
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3161

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3161
  %2 = icmp eq ptr %1, null, !dbg !3160
  br i1 %2, label %gep.throw2, label %gep.next3, !dbg !3160

gep.next3:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3160
  %4 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr %3, i32 0, ptr undef), !dbg !3162
    #dbg_value(i32 %4, !3158, !DIExpression(), !3163)
    #dbg_value(i32 %4, !3158, !DIExpression(), !3164)
  %5 = icmp eq i32 %4, 0, !dbg !3165
  br i1 %5, label %if.then, label %if.else, !dbg !3166

if.then:                                          ; preds = %gep.next3
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"internal/task$pack", ptr undef), !dbg !3167
  unreachable, !dbg !3167

if.else:                                          ; preds = %gep.next3
    #dbg_value(i32 %4, !3158, !DIExpression(), !3168)
  %6 = icmp eq i32 %4, 2, !dbg !3169
  br i1 %6, label %if.then1, label %if.done, !dbg !3166

if.then1:                                         ; preds = %if.else
    #dbg_value(ptr %m, !3157, !DIExpression(), !3170)
  %7 = icmp eq ptr %m, null, !dbg !3171
  br i1 %7, label %gep.throw4, label %gep.next5, !dbg !3171

gep.next5:                                        ; preds = %if.then1
  %8 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3171
  call void @"(*internal/futex.Futex).Wake"(ptr %8, ptr undef), !dbg !3172
  br label %if.done, !dbg !3166

if.done:                                          ; preds = %gep.next5, %if.else
  ret void, !dbg !3173

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3161
  unreachable, !dbg !3161

gep.throw2:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3160
  unreachable, !dbg !3160

gep.throw4:                                       ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3171
  unreachable, !dbg !3171
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Semaphore).Wait"(ptr dereferenceable_or_null(4) %s, ptr %context) unnamed_addr #1 !dbg !3174 {
entry:
    #dbg_value(ptr %s, !3180, !DIExpression(), !3183)
    #dbg_value(i32 -1, !3181, !DIExpression(), !3184)
    #dbg_value(ptr %s, !3180, !DIExpression(), !3185)
  %0 = icmp eq ptr %s, null, !dbg !3186
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3186

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3186
  %2 = icmp eq ptr %1, null, !dbg !3185
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3185

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3185
    #dbg_value(i32 -1, !3181, !DIExpression(), !3187)
  %4 = call i32 @"(*sync/atomic.Uint32).Add"(ptr %3, i32 -1, ptr undef), !dbg !3188
    #dbg_value(i32 %4, !3182, !DIExpression(), !3189)
  br label %for.body, !dbg !3190

for.body:                                         ; preds = %gep.next8, %gep.next2
  %5 = phi i32 [ %4, %gep.next2 ], [ %14, %gep.next8 ], !dbg !3189
    #dbg_value(i32 %5, !3182, !DIExpression(), !3191)
  %6 = icmp sge i32 %5, 0, !dbg !3192
  br i1 %6, label %if.then, label %if.done, !dbg !3190

if.then:                                          ; preds = %for.body
  ret void, !dbg !3193

if.done:                                          ; preds = %for.body
    #dbg_value(ptr %s, !3180, !DIExpression(), !3194)
  %7 = icmp eq ptr %s, null, !dbg !3195
  br i1 %7, label %gep.throw3, label %gep.next4, !dbg !3195

gep.next4:                                        ; preds = %if.done
  %8 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3195
    #dbg_value(i32 %5, !3182, !DIExpression(), !3196)
  %9 = call i1 @"(*internal/futex.Futex).Wait"(ptr %8, i32 %5, ptr undef), !dbg !3197
    #dbg_value(ptr %s, !3180, !DIExpression(), !3198)
  %10 = icmp eq ptr %s, null, !dbg !3199
  br i1 %10, label %gep.throw5, label %gep.next6, !dbg !3199

gep.next6:                                        ; preds = %gep.next4
  %11 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3199
  %12 = icmp eq ptr %11, null, !dbg !3198
  br i1 %12, label %gep.throw7, label %gep.next8, !dbg !3198

gep.next8:                                        ; preds = %gep.next6
  %13 = getelementptr inbounds %"internal/futex.Futex", ptr %11, i32 0, i32 0, !dbg !3198
  %14 = call i32 @"(*sync/atomic.Uint32).Load"(ptr %13, ptr undef), !dbg !3200
    #dbg_value(i32 %14, !3182, !DIExpression(), !3201)
  br label %for.body, !dbg !3190

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3186
  unreachable, !dbg !3186

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3185
  unreachable, !dbg !3185

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3195
  unreachable, !dbg !3195

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3199
  unreachable, !dbg !3199

gep.throw7:                                       ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3198
  unreachable, !dbg !3198
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.Init"(i64 %sp, ptr %context) #1 !dbg !3202 {
entry:
    #dbg_value(i64 %sp, !3206, !DIExpression(), !3208)
    #dbg_value(i64 %sp, !3206, !DIExpression(), !3209)
  %0 = icmp eq ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 2), null, !dbg !3210
  br i1 %0, label %store.throw, label %store.next, !dbg !3210

store.next:                                       ; preds = %entry
  store i64 %sp, ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 2), align 8, !dbg !3210
    #dbg_value(i64 %sp, !3207, !DIExpression(), !3210)
  call void @tinygo_task_init(ptr @"internal/task.mainTask", ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 1), ptr @"internal/task.numCPU", ptr undef), !dbg !3211
  ret void, !dbg !3212

store.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3210
  unreachable, !dbg !3210
}

declare void @tinygo_task_init(ptr dereferenceable_or_null(88), ptr dereferenceable_or_null(8), ptr dereferenceable_or_null(4), ptr) #2

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"internal/task.Current"(ptr %context) #1 !dbg !3213 {
entry:
  %0 = call ptr @tinygo_task_current(), !dbg !3216
    #dbg_value(ptr %0, !3215, !DIExpression(), !3217)
    #dbg_value(ptr %0, !3215, !DIExpression(), !3218)
  %1 = icmp eq ptr %0, null, !dbg !3219
  br i1 %1, label %if.then, label %if.done, !dbg !3220

if.then:                                          ; preds = %entry
  call void @runtime.runtimePanic(ptr @"internal/task$string.7", i64 20, ptr undef), !dbg !3221
  br label %if.done, !dbg !3220

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(ptr %0, !3215, !DIExpression(), !3222)
  ret ptr %0, !dbg !3223
}

declare ptr @tinygo_task_current() #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.Pause"(ptr %context) #1 !dbg !3224 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3227
    #dbg_value(ptr %0, !3226, !DIExpression(), !3228)
  br i1 false, label %if.then, label %if.done, !dbg !3229

if.then:                                          ; preds = %entry
    #dbg_value(ptr %0, !3226, !DIExpression(), !3230)
  %1 = icmp eq ptr %0, null, !dbg !3231
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3231

gep.next:                                         ; preds = %if.then
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3231
  %3 = icmp eq ptr %2, null, !dbg !3232
  br i1 %3, label %gep.throw1, label %gep.next2, !dbg !3232

gep.next2:                                        ; preds = %gep.next
  %4 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 0, !dbg !3232
  %5 = icmp eq ptr %4, null, !dbg !3232
  br i1 %5, label %deref.throw, label %deref.next, !dbg !3232

deref.next:                                       ; preds = %gep.next2
  %6 = load i64, ptr %4, align 8, !dbg !3232
  call void @runtime.printlock(ptr undef), !dbg !3233
  call void @runtime.printstring(ptr @"internal/task$string.8", i64 12, ptr undef), !dbg !3233
  call void @runtime.printspace(ptr undef), !dbg !3233
  call void @runtime.printptr(i64 %6, ptr undef), !dbg !3233
  call void @runtime.printnl(ptr undef), !dbg !3233
  call void @runtime.printunlock(ptr undef), !dbg !3233
  br label %if.done, !dbg !3229

if.done:                                          ; preds = %deref.next, %entry
    #dbg_value(ptr %0, !3226, !DIExpression(), !3234)
  %7 = icmp eq ptr %0, null, !dbg !3235
  br i1 %7, label %gep.throw3, label %gep.next4, !dbg !3235

gep.next4:                                        ; preds = %if.done
  %8 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3235
  %9 = icmp eq ptr %8, null, !dbg !3236
  br i1 %9, label %gep.throw5, label %gep.next6, !dbg !3236

gep.next6:                                        ; preds = %gep.next4
  %10 = getelementptr inbounds %"internal/task.state", ptr %8, i32 0, i32 5, !dbg !3236
  call void @"(*internal/task.Semaphore).Wait"(ptr %10, ptr undef), !dbg !3237
  ret void, !dbg !3238

gep.throw:                                        ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3231
  unreachable, !dbg !3231

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3232
  unreachable, !dbg !3232

deref.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3232
  unreachable, !dbg !3232

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3235
  unreachable, !dbg !3235

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3236
  unreachable, !dbg !3236
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_exited(ptr nocapture dereferenceable_or_null(88) %t) #1 !dbg !3239 {
entry:
    #dbg_value(ptr %t, !3243, !DIExpression(), !3248)
  br i1 false, label %if.then, label %if.done, !dbg !3249

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !3243, !DIExpression(), !3250)
  %0 = icmp eq ptr %t, null, !dbg !3251
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3251

gep.next:                                         ; preds = %if.then
  %1 = getelementptr inbounds %"internal/task.Task", ptr %t, i32 0, i32 4, !dbg !3251
  %2 = icmp eq ptr %1, null, !dbg !3252
  br i1 %2, label %gep.throw5, label %gep.next6, !dbg !3252

gep.next6:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/task.state", ptr %1, i32 0, i32 0, !dbg !3252
  %4 = icmp eq ptr %3, null, !dbg !3252
  br i1 %4, label %deref.throw, label %deref.next, !dbg !3252

deref.next:                                       ; preds = %gep.next6
  %5 = load i64, ptr %3, align 8, !dbg !3252
  call void @runtime.printlock(ptr undef), !dbg !3253
  call void @runtime.printstring(ptr @"internal/task$string.12", i64 9, ptr undef), !dbg !3253
  call void @runtime.printspace(ptr undef), !dbg !3253
  call void @runtime.printptr(i64 %5, ptr undef), !dbg !3253
  call void @runtime.printnl(ptr undef), !dbg !3253
  call void @runtime.printunlock(ptr undef), !dbg !3253
  br label %if.done, !dbg !3249

if.done:                                          ; preds = %deref.next, %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3254
    #dbg_value(i1 false, !3244, !DIExpression(), !3255)
    #dbg_value(ptr @"internal/task.activeTasks", !3245, !DIExpression(), !3256)
  br label %for.loop, !dbg !3249

for.loop:                                         ; preds = %gep.next22, %if.done
  %6 = phi ptr [ @"internal/task.activeTasks", %if.done ], [ %25, %gep.next22 ], !dbg !3256
    #dbg_value(ptr %6, !3245, !DIExpression(), !3257)
  %7 = icmp eq ptr %6, null, !dbg !3258
  br i1 %7, label %deref.throw7, label %deref.next8, !dbg !3258

deref.next8:                                      ; preds = %for.loop
  %8 = load ptr, ptr %6, align 8, !dbg !3258
  %9 = icmp ne ptr %8, null, !dbg !3259
  br i1 %9, label %for.body, label %for.done, !dbg !3249

for.body:                                         ; preds = %deref.next8
    #dbg_value(ptr %6, !3245, !DIExpression(), !3260)
  %10 = icmp eq ptr %6, null, !dbg !3261
  br i1 %10, label %deref.throw9, label %deref.next10, !dbg !3261

deref.next10:                                     ; preds = %for.body
  %11 = load ptr, ptr %6, align 8, !dbg !3261
    #dbg_value(ptr %t, !3243, !DIExpression(), !3262)
  %12 = icmp eq ptr %11, %t, !dbg !3263
  br i1 %12, label %if.then1, label %if.done2, !dbg !3249

if.then1:                                         ; preds = %deref.next10
    #dbg_value(ptr %6, !3245, !DIExpression(), !3264)
    #dbg_value(ptr %t, !3243, !DIExpression(), !3265)
  %13 = icmp eq ptr %t, null, !dbg !3266
  br i1 %13, label %gep.throw11, label %gep.next12, !dbg !3266

gep.next12:                                       ; preds = %if.then1
  %14 = getelementptr inbounds %"internal/task.Task", ptr %t, i32 0, i32 4, !dbg !3266
  %15 = icmp eq ptr %14, null, !dbg !3267
  br i1 %15, label %gep.throw13, label %gep.next14, !dbg !3267

gep.next14:                                       ; preds = %gep.next12
  %16 = getelementptr inbounds %"internal/task.state", ptr %14, i32 0, i32 4, !dbg !3267
  %17 = icmp eq ptr %16, null, !dbg !3267
  br i1 %17, label %deref.throw15, label %deref.next16, !dbg !3267

deref.next16:                                     ; preds = %gep.next14
  %18 = load ptr, ptr %16, align 8, !dbg !3267
  %19 = icmp eq ptr %6, null, !dbg !3268
  br i1 %19, label %store.throw, label %store.next, !dbg !3268

store.next:                                       ; preds = %deref.next16
  store ptr %18, ptr %6, align 8, !dbg !3268
    #dbg_value(i1 true, !3244, !DIExpression(), !3269)
  br label %for.done, !dbg !3249

if.done2:                                         ; preds = %deref.next10
    #dbg_value(ptr %6, !3245, !DIExpression(), !3270)
  %20 = icmp eq ptr %6, null, !dbg !3271
  br i1 %20, label %deref.throw17, label %deref.next18, !dbg !3271

deref.next18:                                     ; preds = %if.done2
  %21 = load ptr, ptr %6, align 8, !dbg !3271
  %22 = icmp eq ptr %21, null, !dbg !3272
  br i1 %22, label %gep.throw19, label %gep.next20, !dbg !3272

gep.next20:                                       ; preds = %deref.next18
  %23 = getelementptr inbounds %"internal/task.Task", ptr %21, i32 0, i32 4, !dbg !3272
  %24 = icmp eq ptr %23, null, !dbg !3273
  br i1 %24, label %gep.throw21, label %gep.next22, !dbg !3273

gep.next22:                                       ; preds = %gep.next20
  %25 = getelementptr inbounds %"internal/task.state", ptr %23, i32 0, i32 4, !dbg !3273
    #dbg_value(ptr %25, !3245, !DIExpression(), !3274)
  br label %for.loop, !dbg !3249

for.done:                                         ; preds = %store.next, %deref.next8
  %26 = phi i1 [ false, %deref.next8 ], [ true, %store.next ], !dbg !3255
  %27 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3275
  %28 = sub i32 %27, 1, !dbg !3275
  store i32 %28, ptr @"internal/task.otherGoroutines", align 4, !dbg !3275
    #dbg_value(i32 %28, !3247, !DIExpression(), !3275)
  call void @"(*internal/task.Mutex).Unlock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3276
    #dbg_value(i1 %26, !3244, !DIExpression(), !3277)
  br i1 %26, label %if.done3, label %if.then4, !dbg !3249

if.done3:                                         ; preds = %if.then4, %for.done
  ret void, !dbg !3278

if.then4:                                         ; preds = %for.done
  call void @runtime.runtimePanic(ptr @"internal/task$string.13", i64 17, ptr undef), !dbg !3279
  br label %if.done3, !dbg !3249

gep.throw:                                        ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3251
  unreachable, !dbg !3251

gep.throw5:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3252
  unreachable, !dbg !3252

deref.throw:                                      ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3252
  unreachable, !dbg !3252

deref.throw7:                                     ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !3258
  unreachable, !dbg !3258

deref.throw9:                                     ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3261
  unreachable, !dbg !3261

gep.throw11:                                      ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3266
  unreachable, !dbg !3266

gep.throw13:                                      ; preds = %gep.next12
  call void @runtime.nilPanic(ptr undef), !dbg !3267
  unreachable, !dbg !3267

deref.throw15:                                    ; preds = %gep.next14
  call void @runtime.nilPanic(ptr undef), !dbg !3267
  unreachable, !dbg !3267

store.throw:                                      ; preds = %deref.next16
  call void @runtime.nilPanic(ptr undef), !dbg !3268
  unreachable, !dbg !3268

deref.throw17:                                    ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !3271
  unreachable, !dbg !3271

gep.throw19:                                      ; preds = %deref.next18
  call void @runtime.nilPanic(ptr undef), !dbg !3272
  unreachable, !dbg !3272

gep.throw21:                                      ; preds = %gep.next20
  call void @runtime.nilPanic(ptr undef), !dbg !3273
  unreachable, !dbg !3273
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.waitGroup).done"(ptr dereferenceable_or_null(4) %wg, ptr %context) unnamed_addr #1 !dbg !3280 {
entry:
    #dbg_value(ptr %wg, !3285, !DIExpression(), !3286)
    #dbg_value(ptr %wg, !3285, !DIExpression(), !3287)
  %0 = icmp eq ptr %wg, null, !dbg !3288
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3288

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3288
  %2 = icmp eq ptr %1, null, !dbg !3287
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3287

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3287
  %4 = call i32 @"(*sync/atomic.Uint32).Add"(ptr %3, i32 -1, ptr undef), !dbg !3289
  %5 = icmp eq i32 %4, 0, !dbg !3290
  br i1 %5, label %if.then, label %if.done, !dbg !3291

if.then:                                          ; preds = %gep.next2
    #dbg_value(ptr %wg, !3285, !DIExpression(), !3292)
  %6 = icmp eq ptr %wg, null, !dbg !3293
  br i1 %6, label %gep.throw3, label %gep.next4, !dbg !3293

gep.next4:                                        ; preds = %if.then
  %7 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3293
  call void @"(*internal/futex.Futex).WakeAll"(ptr %7, ptr undef), !dbg !3294
  br label %if.done, !dbg !3291

if.done:                                          ; preds = %gep.next4, %gep.next2
  ret void, !dbg !3295

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3288
  unreachable, !dbg !3288

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3287
  unreachable, !dbg !3287

gep.throw3:                                       ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3293
  unreachable, !dbg !3293
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.waitGroup).wait"(ptr dereferenceable_or_null(4) %wg, ptr %context) unnamed_addr #1 !dbg !3296 {
entry:
    #dbg_value(ptr %wg, !3298, !DIExpression(), !3300)
  br label %for.body, !dbg !3301

for.body:                                         ; preds = %gep.next4, %entry
    #dbg_value(ptr %wg, !3298, !DIExpression(), !3302)
  %0 = icmp eq ptr %wg, null, !dbg !3303
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3303

gep.next:                                         ; preds = %for.body
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3303
  %2 = icmp eq ptr %1, null, !dbg !3302
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3302

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3302
  %4 = call i32 @"(*sync/atomic.Uint32).Load"(ptr %3, ptr undef), !dbg !3304
    #dbg_value(i32 %4, !3299, !DIExpression(), !3305)
    #dbg_value(i32 %4, !3299, !DIExpression(), !3306)
  %5 = icmp eq i32 %4, 0, !dbg !3307
  br i1 %5, label %if.then, label %if.done, !dbg !3301

if.then:                                          ; preds = %gep.next2
  ret void, !dbg !3308

if.done:                                          ; preds = %gep.next2
    #dbg_value(ptr %wg, !3298, !DIExpression(), !3309)
  %6 = icmp eq ptr %wg, null, !dbg !3310
  br i1 %6, label %gep.throw3, label %gep.next4, !dbg !3310

gep.next4:                                        ; preds = %if.done
  %7 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3310
    #dbg_value(i32 %4, !3299, !DIExpression(), !3311)
  %8 = call i1 @"(*internal/futex.Futex).Wait"(ptr %7, i32 %4, ptr undef), !dbg !3312
  br label %for.body, !dbg !3301

gep.throw:                                        ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3303
  unreachable, !dbg !3303

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3302
  unreachable, !dbg !3302

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3310
  unreachable, !dbg !3310
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %n, ptr %context) unnamed_addr #1 !dbg !3313 {
entry:
    #dbg_value(i32 %n, !3317, !DIExpression(), !3319)
  %wg = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3320
  %0 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3321
  %1 = icmp eq ptr %0, null, !dbg !3322
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3322

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/futex.Futex", ptr %0, i32 0, i32 0, !dbg !3322
    #dbg_value(i32 %n, !3317, !DIExpression(), !3323)
  call void @"(*sync/atomic.Uint32).Store"(ptr %2, i32 %n, ptr undef), !dbg !3324
  %3 = load %"internal/task.Semaphore", ptr %wg, align 4, !dbg !3325
    #dbg_value(%"internal/task.Semaphore" %3, !3318, !DIExpression(), !3325)
  ret %"internal/task.Semaphore" %3, !dbg !3326

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3322
  unreachable, !dbg !3322
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.GCStopWorldAndScan"(ptr %context) #1 !dbg !3327 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3335
    #dbg_value(ptr %0, !3329, !DIExpression(), !3336)
  %1 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3337
  %2 = icmp eq i32 %1, 0, !dbg !3338
  br i1 %2, label %if.then, label %if.done2, !dbg !3339

if.then:                                          ; preds = %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3340
  call void @"(*internal/task.waitGroup).wait"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3341
  call void @"(*sync/atomic.Uint32).Store"(ptr @"internal/task.gcState", i32 1, ptr undef), !dbg !3342
  %3 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3343
    #dbg_value(i32 %3, !3330, !DIExpression(), !3343)
  %4 = call %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %3, ptr undef), !dbg !3344
  store %"internal/task.Semaphore" %4, ptr @"internal/task.scanWaitGroup", align 4, !dbg !3345
    #dbg_value(%"internal/task.Semaphore" %4, !3331, !DIExpression(), !3345)
  %5 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !3346
    #dbg_value(ptr %5, !3332, !DIExpression(), !3346)
    #dbg_value(ptr %5, !3333, !DIExpression(), !3347)
  br label %for.loop, !dbg !3339

for.loop:                                         ; preds = %deref.next15, %if.then
  %6 = phi ptr [ %5, %if.then ], [ %20, %deref.next15 ], !dbg !3347
    #dbg_value(ptr %6, !3333, !DIExpression(), !3348)
  %7 = icmp ne ptr %6, null, !dbg !3349
  br i1 %7, label %for.body, label %for.done, !dbg !3339

for.body:                                         ; preds = %for.loop
    #dbg_value(ptr %6, !3333, !DIExpression(), !3350)
    #dbg_value(ptr %0, !3329, !DIExpression(), !3351)
  %8 = icmp ne ptr %6, %0, !dbg !3352
  br i1 %8, label %if.then1, label %if.done, !dbg !3339

if.then1:                                         ; preds = %for.body
    #dbg_value(ptr %6, !3333, !DIExpression(), !3353)
  %9 = icmp eq ptr %6, null, !dbg !3354
  br i1 %9, label %gep.throw, label %gep.next, !dbg !3354

gep.next:                                         ; preds = %if.then1
  %10 = getelementptr inbounds %"internal/task.Task", ptr %6, i32 0, i32 4, !dbg !3354
  %11 = icmp eq ptr %10, null, !dbg !3355
  br i1 %11, label %gep.throw8, label %gep.next9, !dbg !3355

gep.next9:                                        ; preds = %gep.next
  %12 = getelementptr inbounds %"internal/task.state", ptr %10, i32 0, i32 1, !dbg !3355
  %13 = icmp eq ptr %12, null, !dbg !3355
  br i1 %13, label %deref.throw, label %deref.next, !dbg !3355

deref.next:                                       ; preds = %gep.next9
  %14 = load ptr, ptr %12, align 8, !dbg !3355
  call void @tinygo_task_send_gc_signal(ptr %14), !dbg !3356
  br label %if.done, !dbg !3339

if.done:                                          ; preds = %deref.next, %for.body
    #dbg_value(ptr %6, !3333, !DIExpression(), !3357)
  %15 = icmp eq ptr %6, null, !dbg !3358
  br i1 %15, label %gep.throw10, label %gep.next11, !dbg !3358

gep.next11:                                       ; preds = %if.done
  %16 = getelementptr inbounds %"internal/task.Task", ptr %6, i32 0, i32 4, !dbg !3358
  %17 = icmp eq ptr %16, null, !dbg !3359
  br i1 %17, label %gep.throw12, label %gep.next13, !dbg !3359

gep.next13:                                       ; preds = %gep.next11
  %18 = getelementptr inbounds %"internal/task.state", ptr %16, i32 0, i32 4, !dbg !3359
  %19 = icmp eq ptr %18, null, !dbg !3359
  br i1 %19, label %deref.throw14, label %deref.next15, !dbg !3359

deref.next15:                                     ; preds = %gep.next13
  %20 = load ptr, ptr %18, align 8, !dbg !3359
    #dbg_value(ptr %20, !3333, !DIExpression(), !3360)
  br label %for.loop, !dbg !3339

for.done:                                         ; preds = %for.loop
  call void @"(*internal/task.waitGroup).wait"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3361
  br label %if.done2, !dbg !3339

if.done2:                                         ; preds = %for.done, %entry
  %21 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !3362
    #dbg_value(ptr %21, !3332, !DIExpression(), !3362)
    #dbg_value(ptr %21, !3334, !DIExpression(), !3363)
  br label %for.loop3, !dbg !3339

for.loop3:                                        ; preds = %deref.next33, %if.done2
  %22 = phi ptr [ %21, %if.done2 ], [ %42, %deref.next33 ], !dbg !3363
    #dbg_value(ptr %22, !3334, !DIExpression(), !3364)
  %23 = icmp ne ptr %22, null, !dbg !3365
  br i1 %23, label %for.body4, label %for.done7, !dbg !3339

for.body4:                                        ; preds = %for.loop3
    #dbg_value(ptr %22, !3334, !DIExpression(), !3366)
    #dbg_value(ptr %0, !3329, !DIExpression(), !3367)
  %24 = icmp ne ptr %22, %0, !dbg !3368
  br i1 %24, label %if.then5, label %if.done6, !dbg !3339

if.then5:                                         ; preds = %for.body4
    #dbg_value(ptr %22, !3334, !DIExpression(), !3369)
  %25 = icmp eq ptr %22, null, !dbg !3370
  br i1 %25, label %gep.throw16, label %gep.next17, !dbg !3370

gep.next17:                                       ; preds = %if.then5
  %26 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3370
  %27 = icmp eq ptr %26, null, !dbg !3371
  br i1 %27, label %gep.throw18, label %gep.next19, !dbg !3371

gep.next19:                                       ; preds = %gep.next17
  %28 = getelementptr inbounds %"internal/task.state", ptr %26, i32 0, i32 3, !dbg !3371
  %29 = icmp eq ptr %28, null, !dbg !3371
  br i1 %29, label %deref.throw20, label %deref.next21, !dbg !3371

deref.next21:                                     ; preds = %gep.next19
  %30 = load i64, ptr %28, align 8, !dbg !3371
    #dbg_value(ptr %22, !3334, !DIExpression(), !3372)
  %31 = icmp eq ptr %22, null, !dbg !3373
  br i1 %31, label %gep.throw22, label %gep.next23, !dbg !3373

gep.next23:                                       ; preds = %deref.next21
  %32 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3373
  %33 = icmp eq ptr %32, null, !dbg !3374
  br i1 %33, label %gep.throw24, label %gep.next25, !dbg !3374

gep.next25:                                       ; preds = %gep.next23
  %34 = getelementptr inbounds %"internal/task.state", ptr %32, i32 0, i32 2, !dbg !3374
  %35 = icmp eq ptr %34, null, !dbg !3374
  br i1 %35, label %deref.throw26, label %deref.next27, !dbg !3374

deref.next27:                                     ; preds = %gep.next25
  %36 = load i64, ptr %34, align 8, !dbg !3374
  call void @runtime.markRoots(i64 %30, i64 %36, ptr undef), !dbg !3375
  br label %if.done6, !dbg !3339

if.done6:                                         ; preds = %deref.next27, %for.body4
    #dbg_value(ptr %22, !3334, !DIExpression(), !3376)
  %37 = icmp eq ptr %22, null, !dbg !3377
  br i1 %37, label %gep.throw28, label %gep.next29, !dbg !3377

gep.next29:                                       ; preds = %if.done6
  %38 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3377
  %39 = icmp eq ptr %38, null, !dbg !3378
  br i1 %39, label %gep.throw30, label %gep.next31, !dbg !3378

gep.next31:                                       ; preds = %gep.next29
  %40 = getelementptr inbounds %"internal/task.state", ptr %38, i32 0, i32 4, !dbg !3378
  %41 = icmp eq ptr %40, null, !dbg !3378
  br i1 %41, label %deref.throw32, label %deref.next33, !dbg !3378

deref.next33:                                     ; preds = %gep.next31
  %42 = load ptr, ptr %40, align 8, !dbg !3378
    #dbg_value(ptr %42, !3334, !DIExpression(), !3379)
  br label %for.loop3, !dbg !3339

for.done7:                                        ; preds = %for.loop3
  call void @tinygo_scanCurrentStack(), !dbg !3380
  call void @"internal/task.gcScanGlobals"(ptr undef), !dbg !3381
  ret void, !dbg !3382

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3354
  unreachable, !dbg !3354

gep.throw8:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3355
  unreachable, !dbg !3355

deref.throw:                                      ; preds = %gep.next9
  call void @runtime.nilPanic(ptr undef), !dbg !3355
  unreachable, !dbg !3355

gep.throw10:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3358
  unreachable, !dbg !3358

gep.throw12:                                      ; preds = %gep.next11
  call void @runtime.nilPanic(ptr undef), !dbg !3359
  unreachable, !dbg !3359

deref.throw14:                                    ; preds = %gep.next13
  call void @runtime.nilPanic(ptr undef), !dbg !3359
  unreachable, !dbg !3359

gep.throw16:                                      ; preds = %if.then5
  call void @runtime.nilPanic(ptr undef), !dbg !3370
  unreachable, !dbg !3370

gep.throw18:                                      ; preds = %gep.next17
  call void @runtime.nilPanic(ptr undef), !dbg !3371
  unreachable, !dbg !3371

deref.throw20:                                    ; preds = %gep.next19
  call void @runtime.nilPanic(ptr undef), !dbg !3371
  unreachable, !dbg !3371

gep.throw22:                                      ; preds = %deref.next21
  call void @runtime.nilPanic(ptr undef), !dbg !3373
  unreachable, !dbg !3373

gep.throw24:                                      ; preds = %gep.next23
  call void @runtime.nilPanic(ptr undef), !dbg !3374
  unreachable, !dbg !3374

deref.throw26:                                    ; preds = %gep.next25
  call void @runtime.nilPanic(ptr undef), !dbg !3374
  unreachable, !dbg !3374

gep.throw28:                                      ; preds = %if.done6
  call void @runtime.nilPanic(ptr undef), !dbg !3377
  unreachable, !dbg !3377

gep.throw30:                                      ; preds = %gep.next29
  call void @runtime.nilPanic(ptr undef), !dbg !3378
  unreachable, !dbg !3378

deref.throw32:                                    ; preds = %gep.next31
  call void @runtime.nilPanic(ptr undef), !dbg !3378
  unreachable, !dbg !3378
}

declare void @tinygo_task_send_gc_signal(ptr nocapture) #2

declare void @tinygo_scanCurrentStack() #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.GCResumeWorld"(ptr %context) #1 !dbg !3383 {
entry:
  %0 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3387
  %1 = icmp eq i32 %0, 0, !dbg !3388
  br i1 %1, label %if.then, label %if.done, !dbg !3389

if.then:                                          ; preds = %entry
  ret void, !dbg !3390

if.done:                                          ; preds = %entry
  %2 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3391
    #dbg_value(i32 %2, !3385, !DIExpression(), !3391)
  %3 = call %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %2, ptr undef), !dbg !3392
  store %"internal/task.Semaphore" %3, ptr @"internal/task.scanWaitGroup", align 4, !dbg !3393
    #dbg_value(%"internal/task.Semaphore" %3, !3386, !DIExpression(), !3393)
  call void @"(*sync/atomic.Uint32).Store"(ptr @"internal/task.gcState", i32 0, ptr undef), !dbg !3394
  call void @"(*internal/futex.Futex).WakeAll"(ptr @"internal/task.gcState", ptr undef), !dbg !3395
  call void @"(*internal/task.Mutex).Unlock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3396
  ret void, !dbg !3397
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_gc_pause(i32 %sig) #1 !dbg !3398 {
entry:
    #dbg_value(i32 %sig, !3402, !DIExpression(), !3404)
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3405
  %1 = icmp eq ptr %0, null, !dbg !3406
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3406

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3406
  %3 = call ptr @runtime.stacksave(ptr undef), !dbg !3407
  %4 = ptrtoint ptr %3 to i64, !dbg !3408
  %5 = icmp eq ptr %2, null, !dbg !3409
  br i1 %5, label %gep.throw1, label %gep.next2, !dbg !3409

gep.next2:                                        ; preds = %gep.next
  %6 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 3, !dbg !3409
  %7 = icmp eq ptr %6, null, !dbg !3409
  br i1 %7, label %store.throw, label %store.next, !dbg !3409

store.next:                                       ; preds = %gep.next2
  store i64 %4, ptr %6, align 8, !dbg !3409
    #dbg_value(i64 %4, !3403, !DIExpression(), !3409)
  call void @"(*internal/task.waitGroup).done"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3410
  br label %for.loop, !dbg !3411

for.loop:                                         ; preds = %for.body, %store.next
  %8 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3412
  %9 = icmp eq i32 %8, 1, !dbg !3413
  br i1 %9, label %for.body, label %for.done, !dbg !3411

for.body:                                         ; preds = %for.loop
  %10 = call i1 @"(*internal/futex.Futex).Wait"(ptr @"internal/task.gcState", i32 1, ptr undef), !dbg !3414
  br label %for.loop, !dbg !3411

for.done:                                         ; preds = %for.loop
  call void @"(*internal/task.waitGroup).done"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3415
  ret void, !dbg !3416

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3406
  unreachable, !dbg !3406

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3409
  unreachable, !dbg !3409

store.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3409
  unreachable, !dbg !3409
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"internal/task.StackTop"(ptr %context) #1 !dbg !3417 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3418
  %1 = icmp eq ptr %0, null, !dbg !3419
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3419

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3419
  %3 = icmp eq ptr %2, null, !dbg !3420
  br i1 %3, label %gep.throw1, label %gep.next2, !dbg !3420

gep.next2:                                        ; preds = %gep.next
  %4 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 2, !dbg !3420
  %5 = icmp eq ptr %4, null, !dbg !3420
  br i1 %5, label %deref.throw, label %deref.next, !dbg !3420

deref.next:                                       ; preds = %gep.next2
  %6 = load i64, ptr %4, align 8, !dbg !3420
  ret i64 %6, !dbg !3421

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3419
  unreachable, !dbg !3419

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3420
  unreachable, !dbg !3420

deref.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3420
  unreachable, !dbg !3420
}

; Function Attrs: noinline nounwind allockind("alloc,zeroed") allocsize(0) uwtable(sync)
define internal noalias nonnull ptr @runtime.alloc(i64 %size, ptr %layout, ptr %context) #4 !dbg !3422 {
entry:
    #dbg_value(i64 %size, !3426, !DIExpression(), !3429)
    #dbg_value(ptr %layout, !3427, !DIExpression(), !3429)
    #dbg_value(i64 %size, !3426, !DIExpression(), !3430)
  %0 = icmp eq i64 %size, 0, !dbg !3431
  br i1 %0, label %if.then, label %if.done, !dbg !3432

if.then:                                          ; preds = %entry
  ret ptr @runtime.zeroSizedAlloc, !dbg !3433

if.done:                                          ; preds = %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @runtime.gcLock, ptr undef), !dbg !3434
    #dbg_value(ptr null, !3428, !DIExpression(), !3435)
    #dbg_value(ptr %layout, !3427, !DIExpression(), !3436)
  %1 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !3437
  %2 = icmp eq ptr %layout, %1, !dbg !3438
  br i1 %2, label %if.then1, label %if.else, !dbg !3432

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %size, !3426, !DIExpression(), !3439)
  %3 = call ptr @GC_malloc_atomic(i64 %size), !dbg !3440
    #dbg_value(ptr %3, !3428, !DIExpression(), !3441)
    #dbg_value(ptr %3, !3428, !DIExpression(), !3442)
    #dbg_value(i64 %size, !3426, !DIExpression(), !3443)
  call void @runtime.memzero(ptr %3, i64 %size, ptr undef), !dbg !3444
  br label %if.done2, !dbg !3432

if.done2:                                         ; preds = %if.else, %if.then1
  %4 = phi ptr [ %3, %if.then1 ], [ %6, %if.else ], !dbg !3435
  call void @runtime.gcResumeWorld(ptr undef), !dbg !3445
  call void @"(*internal/task.Mutex).Unlock"(ptr @runtime.gcLock, ptr undef), !dbg !3446
    #dbg_value(ptr %4, !3428, !DIExpression(), !3447)
  %5 = icmp eq ptr %4, null, !dbg !3448
  br i1 %5, label %if.then3, label %if.done4, !dbg !3432

if.then3:                                         ; preds = %if.done2
  call void @runtime.runtimePanic(ptr @"runtime$string.7", i64 17, ptr undef), !dbg !3449
  br label %if.done4, !dbg !3432

if.done4:                                         ; preds = %if.then3, %if.done2
    #dbg_value(ptr %4, !3428, !DIExpression(), !3450)
  ret ptr %4, !dbg !3451

if.else:                                          ; preds = %if.done
    #dbg_value(i64 %size, !3426, !DIExpression(), !3452)
  %6 = call ptr @GC_malloc(i64 %size), !dbg !3453
    #dbg_value(ptr %6, !3428, !DIExpression(), !3454)
  br label %if.done2, !dbg !3432
}

declare ptr @GC_malloc_atomic(i64) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memzero(ptr %ptr, i64 %size, ptr %context) #1 !dbg !3455 {
entry:
    #dbg_value(ptr %ptr, !3459, !DIExpression(), !3461)
    #dbg_value(i64 %size, !3460, !DIExpression(), !3461)
  call void @llvm.memset.p0.i64(ptr %ptr, i8 0, i64 %size, i1 false), !dbg !3461
  ret void, !dbg !3461
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.gcResumeWorld(ptr %context) unnamed_addr #1 !dbg !3462 {
entry:
  call void @"internal/task.GCResumeWorld"(ptr undef), !dbg !3464
  ret void, !dbg !3465
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.runtimePanic(ptr readonly %msg.data, i64 %msg.len, ptr %context) #1 !dbg !3466 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %msg.data, 0, !dbg !3469
  %1 = insertvalue %runtime._string %0, i64 %msg.len, 1, !dbg !3469
    #dbg_value(ptr %msg.data, !3468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3469)
    #dbg_value(i64 %msg.len, !3468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3469)
  %2 = call ptr @llvm.returnaddress(i32 0), !dbg !3470
    #dbg_value(%runtime._string %1, !3468, !DIExpression(), !3471)
  %3 = extractvalue %runtime._string %1, 0, !dbg !3472
  %4 = extractvalue %runtime._string %1, 1, !dbg !3472
  call void @runtime.runtimePanicAt(ptr %2, ptr %3, i64 %4, ptr undef), !dbg !3472
  ret void, !dbg !3473
}

declare ptr @GC_malloc(i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.runtimePanicAt(ptr %addr, ptr readonly %msg.data, i64 %msg.len, ptr %context) unnamed_addr #1 !dbg !3474 {
entry:
    #dbg_value(ptr %addr, !3478, !DIExpression(), !3480)
  %0 = insertvalue %runtime._string zeroinitializer, ptr %msg.data, 0, !dbg !3480
  %1 = insertvalue %runtime._string %0, i64 %msg.len, 1, !dbg !3480
    #dbg_value(ptr %msg.data, !3479, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3480)
    #dbg_value(i64 %msg.len, !3479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3480)
  br i1 false, label %if.then, label %if.done, !dbg !3481

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !3482
  br label %if.done, !dbg !3481

if.done:                                          ; preds = %if.then, %entry
  br i1 true, label %if.then1, label %if.else, !dbg !3481

if.then1:                                         ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.13", i64 24, ptr undef), !dbg !3483
    #dbg_value(ptr %addr, !3478, !DIExpression(), !3484)
  %2 = ptrtoint ptr %addr to i64, !dbg !3485
  %3 = sub i64 %2, 5, !dbg !3486
  call void @runtime.printptr(i64 %3, ptr undef), !dbg !3487
  call void @runtime.printstring(ptr @"runtime$string.14", i64 2, ptr undef), !dbg !3488
  br label %if.done2, !dbg !3481

if.done2:                                         ; preds = %if.else, %if.then1
    #dbg_value(%runtime._string %1, !3479, !DIExpression(), !3489)
  %4 = extractvalue %runtime._string %1, 0, !dbg !3490
  %5 = extractvalue %runtime._string %1, 1, !dbg !3490
  call void @runtime.printstring(ptr %4, i64 %5, ptr undef), !dbg !3490
  call void @runtime.printnl(ptr undef), !dbg !3491
  call void @abort(), !dbg !3492
  ret void, !dbg !3493

if.else:                                          ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.15", i64 22, ptr undef), !dbg !3494
  br label %if.done2, !dbg !3481
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printstring(ptr readonly %s.data, i64 %s.len, ptr %context) #1 !dbg !3495 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !3499
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !3499
    #dbg_value(ptr %s.data, !3497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3499)
    #dbg_value(i64 %s.len, !3497, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3499)
    #dbg_value(i64 0, !3498, !DIExpression(), !3500)
  br label %for.loop, !dbg !3501

for.loop:                                         ; preds = %for.body, %entry
  %2 = phi i64 [ 0, %entry ], [ %7, %for.body ], !dbg !3500
    #dbg_value(i64 %2, !3498, !DIExpression(), !3502)
    #dbg_value(%runtime._string %1, !3497, !DIExpression(), !3503)
  %len = extractvalue %runtime._string %1, 1, !dbg !3504
  %3 = icmp slt i64 %2, %len, !dbg !3505
  br i1 %3, label %for.body, label %for.done, !dbg !3501

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !3498, !DIExpression(), !3506)
    #dbg_value(%runtime._string %1, !3497, !DIExpression(), !3507)
  %len1 = extractvalue %runtime._string %1, 1, !dbg !3508
  %4 = extractvalue %runtime._string %1, 0, !dbg !3508
  %5 = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !3508
  %6 = load i8, ptr %5, align 1, !dbg !3508
  call void @runtime.putchar(i8 %6, ptr undef), !dbg !3509
  %7 = add i64 %2, 1, !dbg !3510
    #dbg_value(i64 %7, !3498, !DIExpression(), !3510)
  br label %for.loop, !dbg !3501

for.done:                                         ; preds = %for.loop
  ret void, !dbg !3511
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printptr(i64 %ptr, ptr %context) #1 !dbg !3512 {
entry:
    #dbg_value(i64 %ptr, !3514, !DIExpression(), !3517)
    #dbg_value(i64 %ptr, !3514, !DIExpression(), !3518)
  %0 = icmp eq i64 %ptr, 0, !dbg !3519
  br i1 %0, label %if.then, label %if.done, !dbg !3520

if.then:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.45", i64 3, ptr undef), !dbg !3521
  ret void, !dbg !3522

if.done:                                          ; preds = %entry
  call void @runtime.putchar(i8 48, ptr undef), !dbg !3523
  call void @runtime.putchar(i8 120, ptr undef), !dbg !3524
    #dbg_value(i64 0, !3515, !DIExpression(), !3525)
  br label %for.loop, !dbg !3520

for.loop:                                         ; preds = %if.done2, %if.done
  %1 = phi i64 [ %ptr, %if.done ], [ %shift.result3, %if.done2 ], !dbg !3526
  %2 = phi i64 [ 0, %if.done ], [ %9, %if.done2 ], !dbg !3525
    #dbg_value(i64 %2, !3515, !DIExpression(), !3527)
  %3 = icmp slt i64 %2, 16, !dbg !3528
  br i1 %3, label %for.body, label %for.done, !dbg !3520

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !3514, !DIExpression(), !3529)
  %4 = lshr i64 %1, 60, !dbg !3530
  %shift.result = select i1 false, i64 0, i64 %4, !dbg !3530
  %5 = trunc i64 %shift.result to i8, !dbg !3531
    #dbg_value(i8 %5, !3516, !DIExpression(), !3532)
    #dbg_value(i8 %5, !3516, !DIExpression(), !3533)
  %6 = icmp ult i8 %5, 10, !dbg !3534
  br i1 %6, label %if.then1, label %if.else, !dbg !3520

if.then1:                                         ; preds = %for.body
    #dbg_value(i8 %5, !3516, !DIExpression(), !3535)
  %7 = add i8 %5, 48, !dbg !3536
  call void @runtime.putchar(i8 %7, ptr undef), !dbg !3537
  br label %if.done2, !dbg !3520

if.done2:                                         ; preds = %if.else, %if.then1
  %8 = shl i64 %1, 4, !dbg !3538
  %shift.result3 = select i1 false, i64 0, i64 %8, !dbg !3538
    #dbg_value(i64 %shift.result3, !3514, !DIExpression(), !3538)
  %9 = add i64 %2, 1, !dbg !3539
    #dbg_value(i64 %9, !3515, !DIExpression(), !3539)
  br label %for.loop, !dbg !3520

if.else:                                          ; preds = %for.body
    #dbg_value(i8 %5, !3516, !DIExpression(), !3540)
  %10 = sub i8 %5, 10, !dbg !3541
  %11 = add i8 %10, 97, !dbg !3542
  call void @runtime.putchar(i8 %11, ptr undef), !dbg !3543
  br label %if.done2, !dbg !3520

for.done:                                         ; preds = %for.loop
  ret void, !dbg !3544
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printnl(ptr %context) #1 !dbg !3545 {
entry:
  br i1 false, label %if.then, label %if.done, !dbg !3546

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 13, ptr undef), !dbg !3547
  br label %if.done, !dbg !3546

if.done:                                          ; preds = %if.then, %entry
  call void @runtime.putchar(i8 10, ptr undef), !dbg !3548
  ret void, !dbg !3549
}

; Function Attrs: noreturn
declare void @abort() #7

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.putchar(i8 %c, ptr %context) unnamed_addr #1 !dbg !3550 {
entry:
    #dbg_value(i8 %c, !3554, !DIExpression(), !3555)
  %buf = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3556
  %0 = getelementptr inbounds [1 x i8], ptr %buf, i32 0, i64 0, !dbg !3556
    #dbg_value(i8 %c, !3554, !DIExpression(), !3557)
  store i8 %c, ptr %0, align 1, !dbg !3557
    #dbg_value(i8 %c, !3554, !DIExpression(), !3557)
  %1 = getelementptr inbounds [1 x i8], ptr %buf, i32 0, i64 0, !dbg !3558
  %2 = call i64 @write(i32 1, ptr %1, i64 1), !dbg !3559
  ret void, !dbg !3560
}

declare i64 @write(i32, ptr nocapture, i64) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.initRand(ptr %context) unnamed_addr #1 !dbg !3561 {
entry:
  %0 = call { i64, i1 } @runtime.hardwareRand(ptr undef), !dbg !3566
  %1 = extractvalue { i64, i1 } %0, 0, !dbg !3566
    #dbg_value(i64 %1, !3563, !DIExpression(), !3567)
  %2 = extractvalue { i64, i1 } %0, 1, !dbg !3566
    #dbg_value(i64 %1, !3563, !DIExpression(), !3568)
  %3 = or i64 %1, 1, !dbg !3569
  store i64 %3, ptr @runtime.xorshift64State, align 8, !dbg !3570
    #dbg_value(i64 %3, !3564, !DIExpression(), !3570)
  %4 = load i64, ptr @runtime.xorshift64State, align 8, !dbg !3571
    #dbg_value(i64 %4, !3564, !DIExpression(), !3571)
  %5 = trunc i64 %4 to i32, !dbg !3572
  store i32 %5, ptr @runtime.xorshift32State, align 4, !dbg !3573
    #dbg_value(i32 %5, !3565, !DIExpression(), !3573)
  ret void, !dbg !3574
}

; Function Attrs: nounwind uwtable(sync)
define internal { i64, i1 } @runtime.hardwareRand(ptr %context) unnamed_addr #1 !dbg !3575 {
entry:
  %n = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3580
  %0 = call i32 @getrandom(ptr %n, i64 8, i32 0), !dbg !3581
    #dbg_value(i32 %0, !3578, !DIExpression(), !3582)
    #dbg_value(i32 %0, !3578, !DIExpression(), !3583)
  %1 = icmp ne i32 %0, 8, !dbg !3584
  br i1 %1, label %if.then, label %if.done, !dbg !3585

if.then:                                          ; preds = %entry
  store i64 0, ptr %n, align 8, !dbg !3586
  %2 = load i64, ptr %n, align 8, !dbg !3585
  %3 = insertvalue { i64, i1 } zeroinitializer, i64 %2, 0, !dbg !3586
  %4 = insertvalue { i64, i1 } %3, i1 false, 1, !dbg !3586
  ret { i64, i1 } %4, !dbg !3586

if.done:                                          ; preds = %entry
  %5 = load i64, ptr %n, align 8, !dbg !3587
    #dbg_value(i64 %5, !3579, !DIExpression(), !3587)
  store i64 %5, ptr %n, align 8, !dbg !3588
  %6 = load i64, ptr %n, align 8, !dbg !3585
  %7 = insertvalue { i64, i1 } zeroinitializer, i64 %6, 0, !dbg !3588
  %8 = insertvalue { i64, i1 } %7, i1 true, 1, !dbg !3588
  ret { i64, i1 } %8, !dbg !3588
}

declare i32 @getrandom(ptr nocapture, i64, i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal i64 @runtime.getCurrentStackPointer(ptr %context) unnamed_addr #1 !dbg !3589 {
entry:
  %0 = call ptr @runtime.stacksave(ptr undef), !dbg !3591
  %1 = ptrtoint ptr %0 to i64, !dbg !3592
  ret i64 %1, !dbg !3593
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @runtime.stacksave(ptr %context) #1 !dbg !3594 {
entry:
  %0 = call ptr @llvm.stacksave.p0(), !dbg !3595
  ret ptr %0, !dbg !3595
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #9

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memcpy(ptr %dst, ptr %src, i64 %size, ptr %context) #1 !dbg !3596 {
entry:
    #dbg_value(ptr %dst, !3600, !DIExpression(), !3603)
    #dbg_value(ptr %src, !3601, !DIExpression(), !3603)
    #dbg_value(i64 %size, !3602, !DIExpression(), !3603)
  call void @llvm.memcpy.p0.p0.i64(ptr %dst, ptr %src, i64 %size, i1 false), !dbg !3603
  ret void, !dbg !3603
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.nilPanic(ptr %context) #1 !dbg !3604 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !3605
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.17", i64 23, ptr undef), !dbg !3606
  ret void, !dbg !3607
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.deadlock(ptr %context) unnamed_addr #1 !dbg !3608 {
entry:
  call void @"internal/task.Pause"(ptr undef), !dbg !3609
  ret void, !dbg !3610
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.lookupPanic(ptr %context) #1 !dbg !3611 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !3612
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.19", i64 18, ptr undef), !dbg !3613
  ret void, !dbg !3614
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.panicOrGoexit(ptr %message.typecode, ptr %message.value, i8 %panicking, ptr %context) unnamed_addr #1 !dbg !3615 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %message.typecode, 0, !dbg !3635
  %1 = insertvalue { ptr, ptr } %0, ptr %message.value, 1, !dbg !3635
    #dbg_value(ptr %message.typecode, !3620, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3635)
    #dbg_value(ptr %message.value, !3620, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3635)
    #dbg_value(i8 %panicking, !3621, !DIExpression(), !3635)
  br i1 false, label %if.then, label %if.done, !dbg !3636

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !3637
  br label %if.done, !dbg !3636

if.done:                                          ; preds = %if.then, %entry
  br i1 true, label %cond.true, label %if.done3, !dbg !3636

cond.true:                                        ; preds = %if.done
  %2 = call i1 @"runtime/interrupt.In"(ptr undef), !dbg !3638
  br i1 %2, label %if.done3, label %if.then1, !dbg !3636

if.then1:                                         ; preds = %cond.true
  %3 = call ptr @"internal/task.Current"(ptr undef), !dbg !3639
  %4 = icmp eq ptr %3, null, !dbg !3640
  br i1 %4, label %gep.throw, label %gep.next, !dbg !3640

gep.next:                                         ; preds = %if.then1
  %5 = getelementptr inbounds %"internal/task.Task", ptr %3, i32 0, i32 8, !dbg !3640
  %6 = icmp eq ptr %5, null, !dbg !3640
  br i1 %6, label %deref.throw, label %deref.next, !dbg !3640

deref.next:                                       ; preds = %gep.next
  %7 = load ptr, ptr %5, align 8, !dbg !3640
    #dbg_value(ptr %7, !3622, !DIExpression(), !3641)
    #dbg_value(ptr %7, !3622, !DIExpression(), !3642)
  %8 = icmp ne ptr %7, null, !dbg !3643
  br i1 %8, label %if.then2, label %if.done3, !dbg !3636

if.then2:                                         ; preds = %deref.next
    #dbg_value(ptr %7, !3622, !DIExpression(), !3644)
    #dbg_value({ ptr, ptr } %1, !3620, !DIExpression(), !3645)
  %9 = getelementptr inbounds %runtime.deferFrame, ptr %7, i32 0, i32 5, !dbg !3646
  %10 = icmp eq ptr %9, null, !dbg !3646
  br i1 %10, label %store.throw, label %store.next, !dbg !3646

store.next:                                       ; preds = %if.then2
  store { ptr, ptr } %1, ptr %9, align 8, !dbg !3646
    #dbg_value({ ptr, ptr } %1, !3633, !DIExpression(), !3646)
    #dbg_value(ptr %7, !3622, !DIExpression(), !3647)
    #dbg_value(i8 %panicking, !3621, !DIExpression(), !3648)
  %11 = getelementptr inbounds %runtime.deferFrame, ptr %7, i32 0, i32 4, !dbg !3649
  %12 = icmp eq ptr %11, null, !dbg !3649
  br i1 %12, label %store.throw6, label %store.next7, !dbg !3649

store.next7:                                      ; preds = %store.next
  store i8 %panicking, ptr %11, align 1, !dbg !3649
    #dbg_value(i8 %panicking, !3634, !DIExpression(), !3649)
    #dbg_value(ptr %7, !3622, !DIExpression(), !3650)
  call void @tinygo_longjmp(ptr %7), !dbg !3651
  br label %if.done3, !dbg !3636

if.done3:                                         ; preds = %store.next7, %deref.next, %cond.true, %if.done
    #dbg_value(i8 %panicking, !3621, !DIExpression(), !3652)
  %13 = icmp eq i8 %panicking, 2, !dbg !3653
  br i1 %13, label %if.then4, label %if.done5, !dbg !3636

if.then4:                                         ; preds = %if.done3
  call void @runtime.deadlock(ptr undef), !dbg !3654
  br label %if.done5, !dbg !3636

if.done5:                                         ; preds = %if.then4, %if.done3
  call void @runtime.printstring(ptr @"runtime$string.12", i64 7, ptr undef), !dbg !3655
    #dbg_value({ ptr, ptr } %1, !3620, !DIExpression(), !3656)
  %14 = extractvalue { ptr, ptr } %1, 0, !dbg !3657
  %15 = extractvalue { ptr, ptr } %1, 1, !dbg !3657
  call void @runtime.printitf(ptr %14, ptr %15, ptr undef), !dbg !3657
  call void @runtime.printnl(ptr undef), !dbg !3658
  call void @abort(), !dbg !3659
  ret void, !dbg !3660

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3640
  unreachable, !dbg !3640

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3640
  unreachable, !dbg !3640

store.throw:                                      ; preds = %if.then2
  call void @runtime.nilPanic(ptr undef), !dbg !3646
  unreachable, !dbg !3646

store.throw6:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !3649
  unreachable, !dbg !3649
}

declare void @tinygo_longjmp(ptr nocapture dereferenceable_or_null(48)) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printitf(ptr %msg.typecode, ptr %msg.value, ptr %context) unnamed_addr #1 !dbg !3661 {
entry:
  %itf = alloca { ptr, ptr }, align 8, !dbg !3691
  %unpack.raw.alloc136 = alloca ptr, align 8, !dbg !3691
  %unpack.raw.alloc129 = alloca ptr, align 8, !dbg !3691
  %unpack.raw.alloc = alloca ptr, align 8, !dbg !3691
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %msg.typecode, 0, !dbg !3691
  %1 = insertvalue { ptr, ptr } %0, ptr %msg.value, 1, !dbg !3691
    #dbg_value(ptr %msg.typecode, !3665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3691)
    #dbg_value(ptr %msg.value, !3665, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3691)
    #dbg_value({ ptr, ptr } %1, !3665, !DIExpression(), !3692)
  %interface.type = extractvalue { ptr, ptr } %1, 0, !dbg !3693
  br i1 false, label %typeassert.ok, label %typeassert.next, !dbg !3693

typeassert.next:                                  ; preds = %typeassert.ok, %entry
  %typeassert.value = phi i1 [ false, %entry ], [ %unpack.int, %typeassert.ok ], !dbg !3693
  %2 = insertvalue { i1, i1 } undef, i1 %typeassert.value, 0, !dbg !3693
  %3 = insertvalue { i1, i1 } %2, i1 false, 1, !dbg !3693
  %4 = extractvalue { i1, i1 } %3, 0, !dbg !3693
  %5 = extractvalue { i1, i1 } %3, 1, !dbg !3693
  br i1 %5, label %typeswitch.body, label %typeswitch.next, !dbg !3694

typeassert.ok:                                    ; preds = %entry
  %typeassert.value.ptr = extractvalue { ptr, ptr } %1, 1, !dbg !3693
  %unpack.int = ptrtoint ptr %typeassert.value.ptr to i1, !dbg !3693
  br label %typeassert.next, !dbg !3693

typeswitch.body:                                  ; preds = %typeassert.next
    #dbg_value(i1 %4, !3666, !DIExpression(), !3695)
  call void @runtime.printbool(i1 %4, ptr undef), !dbg !3696
  br label %typeswitch.done, !dbg !3694

typeswitch.done:                                  ; preds = %deref.next161, %typeswitch.body39, %typeswitch.body37, %typeswitch.body35, %typeswitch.body33, %typeswitch.body31, %typeswitch.body29, %typeswitch.body27, %typeswitch.body25, %typeswitch.body23, %typeswitch.body21, %typeswitch.body19, %typeswitch.body17, %switch.body15, %switch.next14, %switch.body13, %typeswitch.body10, %typeswitch.body8, %typeswitch.body6, %typeswitch.body4, %switch.body2, %switch.next, %switch.body, %typeswitch.body
  ret void, !dbg !3697

typeswitch.next:                                  ; preds = %typeassert.next
  %interface.type41 = extractvalue { ptr, ptr } %1, 0, !dbg !3698
  br i1 false, label %typeassert.ok43, label %typeassert.next44, !dbg !3698

typeassert.next44:                                ; preds = %typeassert.ok43, %typeswitch.next
  %typeassert.value47 = phi i64 [ 0, %typeswitch.next ], [ %unpack.int46, %typeassert.ok43 ], !dbg !3698
  %6 = insertvalue { i64, i1 } undef, i64 %typeassert.value47, 0, !dbg !3698
  %7 = insertvalue { i64, i1 } %6, i1 false, 1, !dbg !3698
  %8 = extractvalue { i64, i1 } %7, 0, !dbg !3698
  %9 = extractvalue { i64, i1 } %7, 1, !dbg !3698
  br i1 %9, label %typeswitch.body1, label %typeswitch.next3, !dbg !3694

typeassert.ok43:                                  ; preds = %typeswitch.next
  %typeassert.value.ptr45 = extractvalue { ptr, ptr } %1, 1, !dbg !3698
  %unpack.int46 = ptrtoint ptr %typeassert.value.ptr45 to i64, !dbg !3698
  br label %typeassert.next44, !dbg !3698

typeswitch.body1:                                 ; preds = %typeassert.next44
  br i1 true, label %switch.body, label %switch.next, !dbg !3694

switch.body:                                      ; preds = %typeswitch.body1
    #dbg_value(i64 %8, !3667, !DIExpression(), !3699)
  call void @runtime.printint64(i64 %8, ptr undef), !dbg !3700
  br label %typeswitch.done, !dbg !3694

switch.next:                                      ; preds = %typeswitch.body1
  br i1 false, label %switch.body2, label %typeswitch.done, !dbg !3694

switch.body2:                                     ; preds = %switch.next
    #dbg_value(i64 %8, !3667, !DIExpression(), !3701)
  %10 = trunc i64 %8 to i32, !dbg !3702
  call void @runtime.printint32(i32 %10, ptr undef), !dbg !3703
  br label %typeswitch.done, !dbg !3694

typeswitch.next3:                                 ; preds = %typeassert.next44
  %interface.type48 = extractvalue { ptr, ptr } %1, 0, !dbg !3704
  br i1 false, label %typeassert.ok50, label %typeassert.next51, !dbg !3704

typeassert.next51:                                ; preds = %typeassert.ok50, %typeswitch.next3
  %typeassert.value54 = phi i8 [ 0, %typeswitch.next3 ], [ %unpack.int53, %typeassert.ok50 ], !dbg !3704
  %11 = insertvalue { i8, i1 } undef, i8 %typeassert.value54, 0, !dbg !3704
  %12 = insertvalue { i8, i1 } %11, i1 false, 1, !dbg !3704
  %13 = extractvalue { i8, i1 } %12, 0, !dbg !3704
  %14 = extractvalue { i8, i1 } %12, 1, !dbg !3704
  br i1 %14, label %typeswitch.body4, label %typeswitch.next5, !dbg !3694

typeassert.ok50:                                  ; preds = %typeswitch.next3
  %typeassert.value.ptr52 = extractvalue { ptr, ptr } %1, 1, !dbg !3704
  %unpack.int53 = ptrtoint ptr %typeassert.value.ptr52 to i8, !dbg !3704
  br label %typeassert.next51, !dbg !3704

typeswitch.body4:                                 ; preds = %typeassert.next51
    #dbg_value(i8 %13, !3668, !DIExpression(), !3705)
  call void @runtime.printint8(i8 %13, ptr undef), !dbg !3706
  br label %typeswitch.done, !dbg !3694

typeswitch.next5:                                 ; preds = %typeassert.next51
  %interface.type55 = extractvalue { ptr, ptr } %1, 0, !dbg !3707
  br i1 false, label %typeassert.ok57, label %typeassert.next58, !dbg !3707

typeassert.next58:                                ; preds = %typeassert.ok57, %typeswitch.next5
  %typeassert.value61 = phi i16 [ 0, %typeswitch.next5 ], [ %unpack.int60, %typeassert.ok57 ], !dbg !3707
  %15 = insertvalue { i16, i1 } undef, i16 %typeassert.value61, 0, !dbg !3707
  %16 = insertvalue { i16, i1 } %15, i1 false, 1, !dbg !3707
  %17 = extractvalue { i16, i1 } %16, 0, !dbg !3707
  %18 = extractvalue { i16, i1 } %16, 1, !dbg !3707
  br i1 %18, label %typeswitch.body6, label %typeswitch.next7, !dbg !3694

typeassert.ok57:                                  ; preds = %typeswitch.next5
  %typeassert.value.ptr59 = extractvalue { ptr, ptr } %1, 1, !dbg !3707
  %unpack.int60 = ptrtoint ptr %typeassert.value.ptr59 to i16, !dbg !3707
  br label %typeassert.next58, !dbg !3707

typeswitch.body6:                                 ; preds = %typeassert.next58
    #dbg_value(i16 %17, !3669, !DIExpression(), !3708)
  call void @runtime.printint16(i16 %17, ptr undef), !dbg !3709
  br label %typeswitch.done, !dbg !3694

typeswitch.next7:                                 ; preds = %typeassert.next58
  %interface.type62 = extractvalue { ptr, ptr } %1, 0, !dbg !3710
  br i1 false, label %typeassert.ok64, label %typeassert.next65, !dbg !3710

typeassert.next65:                                ; preds = %typeassert.ok64, %typeswitch.next7
  %typeassert.value68 = phi i32 [ 0, %typeswitch.next7 ], [ %unpack.int67, %typeassert.ok64 ], !dbg !3710
  %19 = insertvalue { i32, i1 } undef, i32 %typeassert.value68, 0, !dbg !3710
  %20 = insertvalue { i32, i1 } %19, i1 false, 1, !dbg !3710
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !3710
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !3710
  br i1 %22, label %typeswitch.body8, label %typeswitch.next9, !dbg !3694

typeassert.ok64:                                  ; preds = %typeswitch.next7
  %typeassert.value.ptr66 = extractvalue { ptr, ptr } %1, 1, !dbg !3710
  %unpack.int67 = ptrtoint ptr %typeassert.value.ptr66 to i32, !dbg !3710
  br label %typeassert.next65, !dbg !3710

typeswitch.body8:                                 ; preds = %typeassert.next65
    #dbg_value(i32 %21, !3671, !DIExpression(), !3711)
  call void @runtime.printint32(i32 %21, ptr undef), !dbg !3712
  br label %typeswitch.done, !dbg !3694

typeswitch.next9:                                 ; preds = %typeassert.next65
  %interface.type69 = extractvalue { ptr, ptr } %1, 0, !dbg !3713
  br i1 false, label %typeassert.ok71, label %typeassert.next72, !dbg !3713

typeassert.next72:                                ; preds = %typeassert.ok71, %typeswitch.next9
  %typeassert.value75 = phi i64 [ 0, %typeswitch.next9 ], [ %unpack.int74, %typeassert.ok71 ], !dbg !3713
  %23 = insertvalue { i64, i1 } undef, i64 %typeassert.value75, 0, !dbg !3713
  %24 = insertvalue { i64, i1 } %23, i1 false, 1, !dbg !3713
  %25 = extractvalue { i64, i1 } %24, 0, !dbg !3713
  %26 = extractvalue { i64, i1 } %24, 1, !dbg !3713
  br i1 %26, label %typeswitch.body10, label %typeswitch.next11, !dbg !3694

typeassert.ok71:                                  ; preds = %typeswitch.next9
  %typeassert.value.ptr73 = extractvalue { ptr, ptr } %1, 1, !dbg !3713
  %unpack.int74 = ptrtoint ptr %typeassert.value.ptr73 to i64, !dbg !3713
  br label %typeassert.next72, !dbg !3713

typeswitch.body10:                                ; preds = %typeassert.next72
    #dbg_value(i64 %25, !3672, !DIExpression(), !3714)
  call void @runtime.printint64(i64 %25, ptr undef), !dbg !3715
  br label %typeswitch.done, !dbg !3694

typeswitch.next11:                                ; preds = %typeassert.next72
  %interface.type76 = extractvalue { ptr, ptr } %1, 0, !dbg !3716
  br i1 false, label %typeassert.ok78, label %typeassert.next79, !dbg !3716

typeassert.next79:                                ; preds = %typeassert.ok78, %typeswitch.next11
  %typeassert.value82 = phi i64 [ 0, %typeswitch.next11 ], [ %unpack.int81, %typeassert.ok78 ], !dbg !3716
  %27 = insertvalue { i64, i1 } undef, i64 %typeassert.value82, 0, !dbg !3716
  %28 = insertvalue { i64, i1 } %27, i1 false, 1, !dbg !3716
  %29 = extractvalue { i64, i1 } %28, 0, !dbg !3716
  %30 = extractvalue { i64, i1 } %28, 1, !dbg !3716
  br i1 %30, label %typeswitch.body12, label %typeswitch.next16, !dbg !3694

typeassert.ok78:                                  ; preds = %typeswitch.next11
  %typeassert.value.ptr80 = extractvalue { ptr, ptr } %1, 1, !dbg !3716
  %unpack.int81 = ptrtoint ptr %typeassert.value.ptr80 to i64, !dbg !3716
  br label %typeassert.next79, !dbg !3716

typeswitch.body12:                                ; preds = %typeassert.next79
  br i1 true, label %switch.body13, label %switch.next14, !dbg !3694

switch.body13:                                    ; preds = %typeswitch.body12
    #dbg_value(i64 %29, !3673, !DIExpression(), !3717)
  call void @runtime.printuint64(i64 %29, ptr undef), !dbg !3718
  br label %typeswitch.done, !dbg !3694

switch.next14:                                    ; preds = %typeswitch.body12
  br i1 false, label %switch.body15, label %typeswitch.done, !dbg !3694

switch.body15:                                    ; preds = %switch.next14
    #dbg_value(i64 %29, !3673, !DIExpression(), !3719)
  %31 = trunc i64 %29 to i32, !dbg !3720
  call void @runtime.printuint32(i32 %31, ptr undef), !dbg !3721
  br label %typeswitch.done, !dbg !3694

typeswitch.next16:                                ; preds = %typeassert.next79
  %interface.type83 = extractvalue { ptr, ptr } %1, 0, !dbg !3722
  %typeassert.ok2 = icmp eq ptr @"reflect/types.type:basic:uint8", %interface.type83, !dbg !3722
  br i1 %typeassert.ok2, label %typeassert.ok85, label %typeassert.next86, !dbg !3722

typeassert.next86:                                ; preds = %typeassert.ok85, %typeswitch.next16
  %typeassert.value89 = phi i8 [ 0, %typeswitch.next16 ], [ %unpack.int88, %typeassert.ok85 ], !dbg !3722
  %32 = insertvalue { i8, i1 } undef, i8 %typeassert.value89, 0, !dbg !3722
  %33 = insertvalue { i8, i1 } %32, i1 %typeassert.ok2, 1, !dbg !3722
  %34 = extractvalue { i8, i1 } %33, 0, !dbg !3722
  %35 = extractvalue { i8, i1 } %33, 1, !dbg !3722
  br i1 %35, label %typeswitch.body17, label %typeswitch.next18, !dbg !3694

typeassert.ok85:                                  ; preds = %typeswitch.next16
  %typeassert.value.ptr87 = extractvalue { ptr, ptr } %1, 1, !dbg !3722
  %unpack.int88 = ptrtoint ptr %typeassert.value.ptr87 to i8, !dbg !3722
  br label %typeassert.next86, !dbg !3722

typeswitch.body17:                                ; preds = %typeassert.next86
    #dbg_value(i8 %34, !3674, !DIExpression(), !3723)
  call void @runtime.printuint8(i8 %34, ptr undef), !dbg !3724
  br label %typeswitch.done, !dbg !3694

typeswitch.next18:                                ; preds = %typeassert.next86
  %interface.type90 = extractvalue { ptr, ptr } %1, 0, !dbg !3725
  br i1 false, label %typeassert.ok92, label %typeassert.next93, !dbg !3725

typeassert.next93:                                ; preds = %typeassert.ok92, %typeswitch.next18
  %typeassert.value96 = phi i16 [ 0, %typeswitch.next18 ], [ %unpack.int95, %typeassert.ok92 ], !dbg !3725
  %36 = insertvalue { i16, i1 } undef, i16 %typeassert.value96, 0, !dbg !3725
  %37 = insertvalue { i16, i1 } %36, i1 false, 1, !dbg !3725
  %38 = extractvalue { i16, i1 } %37, 0, !dbg !3725
  %39 = extractvalue { i16, i1 } %37, 1, !dbg !3725
  br i1 %39, label %typeswitch.body19, label %typeswitch.next20, !dbg !3694

typeassert.ok92:                                  ; preds = %typeswitch.next18
  %typeassert.value.ptr94 = extractvalue { ptr, ptr } %1, 1, !dbg !3725
  %unpack.int95 = ptrtoint ptr %typeassert.value.ptr94 to i16, !dbg !3725
  br label %typeassert.next93, !dbg !3725

typeswitch.body19:                                ; preds = %typeassert.next93
    #dbg_value(i16 %38, !3675, !DIExpression(), !3726)
  call void @runtime.printuint16(i16 %38, ptr undef), !dbg !3727
  br label %typeswitch.done, !dbg !3694

typeswitch.next20:                                ; preds = %typeassert.next93
  %interface.type97 = extractvalue { ptr, ptr } %1, 0, !dbg !3728
  br i1 false, label %typeassert.ok99, label %typeassert.next100, !dbg !3728

typeassert.next100:                               ; preds = %typeassert.ok99, %typeswitch.next20
  %typeassert.value103 = phi i32 [ 0, %typeswitch.next20 ], [ %unpack.int102, %typeassert.ok99 ], !dbg !3728
  %40 = insertvalue { i32, i1 } undef, i32 %typeassert.value103, 0, !dbg !3728
  %41 = insertvalue { i32, i1 } %40, i1 false, 1, !dbg !3728
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !3728
  %43 = extractvalue { i32, i1 } %41, 1, !dbg !3728
  br i1 %43, label %typeswitch.body21, label %typeswitch.next22, !dbg !3694

typeassert.ok99:                                  ; preds = %typeswitch.next20
  %typeassert.value.ptr101 = extractvalue { ptr, ptr } %1, 1, !dbg !3728
  %unpack.int102 = ptrtoint ptr %typeassert.value.ptr101 to i32, !dbg !3728
  br label %typeassert.next100, !dbg !3728

typeswitch.body21:                                ; preds = %typeassert.next100
    #dbg_value(i32 %42, !3676, !DIExpression(), !3729)
  call void @runtime.printuint32(i32 %42, ptr undef), !dbg !3730
  br label %typeswitch.done, !dbg !3694

typeswitch.next22:                                ; preds = %typeassert.next100
  %interface.type104 = extractvalue { ptr, ptr } %1, 0, !dbg !3731
  br i1 false, label %typeassert.ok106, label %typeassert.next107, !dbg !3731

typeassert.next107:                               ; preds = %typeassert.ok106, %typeswitch.next22
  %typeassert.value110 = phi i64 [ 0, %typeswitch.next22 ], [ %unpack.int109, %typeassert.ok106 ], !dbg !3731
  %44 = insertvalue { i64, i1 } undef, i64 %typeassert.value110, 0, !dbg !3731
  %45 = insertvalue { i64, i1 } %44, i1 false, 1, !dbg !3731
  %46 = extractvalue { i64, i1 } %45, 0, !dbg !3731
  %47 = extractvalue { i64, i1 } %45, 1, !dbg !3731
  br i1 %47, label %typeswitch.body23, label %typeswitch.next24, !dbg !3694

typeassert.ok106:                                 ; preds = %typeswitch.next22
  %typeassert.value.ptr108 = extractvalue { ptr, ptr } %1, 1, !dbg !3731
  %unpack.int109 = ptrtoint ptr %typeassert.value.ptr108 to i64, !dbg !3731
  br label %typeassert.next107, !dbg !3731

typeswitch.body23:                                ; preds = %typeassert.next107
    #dbg_value(i64 %46, !3677, !DIExpression(), !3732)
  call void @runtime.printuint64(i64 %46, ptr undef), !dbg !3733
  br label %typeswitch.done, !dbg !3694

typeswitch.next24:                                ; preds = %typeassert.next107
  %interface.type111 = extractvalue { ptr, ptr } %1, 0, !dbg !3734
  br i1 false, label %typeassert.ok113, label %typeassert.next114, !dbg !3734

typeassert.next114:                               ; preds = %typeassert.ok113, %typeswitch.next24
  %typeassert.value117 = phi i64 [ 0, %typeswitch.next24 ], [ %unpack.int116, %typeassert.ok113 ], !dbg !3734
  %48 = insertvalue { i64, i1 } undef, i64 %typeassert.value117, 0, !dbg !3734
  %49 = insertvalue { i64, i1 } %48, i1 false, 1, !dbg !3734
  %50 = extractvalue { i64, i1 } %49, 0, !dbg !3734
  %51 = extractvalue { i64, i1 } %49, 1, !dbg !3734
  br i1 %51, label %typeswitch.body25, label %typeswitch.next26, !dbg !3694

typeassert.ok113:                                 ; preds = %typeswitch.next24
  %typeassert.value.ptr115 = extractvalue { ptr, ptr } %1, 1, !dbg !3734
  %unpack.int116 = ptrtoint ptr %typeassert.value.ptr115 to i64, !dbg !3734
  br label %typeassert.next114, !dbg !3734

typeswitch.body25:                                ; preds = %typeassert.next114
    #dbg_value(i64 %50, !3678, !DIExpression(), !3735)
  call void @runtime.printuintptr(i64 %50, ptr undef), !dbg !3736
  br label %typeswitch.done, !dbg !3694

typeswitch.next26:                                ; preds = %typeassert.next114
  %interface.type118 = extractvalue { ptr, ptr } %1, 0, !dbg !3737
  br i1 false, label %typeassert.ok120, label %typeassert.next121, !dbg !3737

typeassert.next121:                               ; preds = %typeassert.ok120, %typeswitch.next26
  %typeassert.value123 = phi float [ 0.000000e+00, %typeswitch.next26 ], [ %57, %typeassert.ok120 ], !dbg !3691
  %52 = insertvalue { float, i1 } undef, float %typeassert.value123, 0, !dbg !3691
  %53 = insertvalue { float, i1 } %52, i1 false, 1, !dbg !3691
  %54 = extractvalue { float, i1 } %53, 0, !dbg !3737
  %55 = extractvalue { float, i1 } %53, 1, !dbg !3737
  br i1 %55, label %typeswitch.body27, label %typeswitch.next28, !dbg !3694

typeassert.ok120:                                 ; preds = %typeswitch.next26
  %typeassert.value.ptr122 = extractvalue { ptr, ptr } %1, 1, !dbg !3737
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc), !dbg !3691
  store ptr %typeassert.value.ptr122, ptr %unpack.raw.alloc, align 8, !dbg !3691
  %56 = getelementptr inbounds { float }, ptr %unpack.raw.alloc, i32 0, i32 0, !dbg !3691
  %57 = load float, ptr %56, align 4, !dbg !3691
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc), !dbg !3691
  br label %typeassert.next121, !dbg !3691

typeswitch.body27:                                ; preds = %typeassert.next121
    #dbg_value(float %54, !3679, !DIExpression(), !3738)
  call void @runtime.printfloat32(float %54, ptr undef), !dbg !3739
  br label %typeswitch.done, !dbg !3694

typeswitch.next28:                                ; preds = %typeassert.next121
  %interface.type124 = extractvalue { ptr, ptr } %1, 0, !dbg !3740
  br i1 false, label %typeassert.ok126, label %typeassert.next127, !dbg !3740

typeassert.next127:                               ; preds = %typeassert.ok126, %typeswitch.next28
  %typeassert.value130 = phi double [ 0.000000e+00, %typeswitch.next28 ], [ %63, %typeassert.ok126 ], !dbg !3691
  %58 = insertvalue { double, i1 } undef, double %typeassert.value130, 0, !dbg !3691
  %59 = insertvalue { double, i1 } %58, i1 false, 1, !dbg !3691
  %60 = extractvalue { double, i1 } %59, 0, !dbg !3740
  %61 = extractvalue { double, i1 } %59, 1, !dbg !3740
  br i1 %61, label %typeswitch.body29, label %typeswitch.next30, !dbg !3694

typeassert.ok126:                                 ; preds = %typeswitch.next28
  %typeassert.value.ptr128 = extractvalue { ptr, ptr } %1, 1, !dbg !3740
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc129), !dbg !3691
  store ptr %typeassert.value.ptr128, ptr %unpack.raw.alloc129, align 8, !dbg !3691
  %62 = getelementptr inbounds { double }, ptr %unpack.raw.alloc129, i32 0, i32 0, !dbg !3691
  %63 = load double, ptr %62, align 8, !dbg !3691
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc129), !dbg !3691
  br label %typeassert.next127, !dbg !3691

typeswitch.body29:                                ; preds = %typeassert.next127
    #dbg_value(double %60, !3681, !DIExpression(), !3741)
  call void @runtime.printfloat64(double %60, ptr undef), !dbg !3742
  br label %typeswitch.done, !dbg !3694

typeswitch.next30:                                ; preds = %typeassert.next127
  %interface.type131 = extractvalue { ptr, ptr } %1, 0, !dbg !3743
  br i1 false, label %typeassert.ok133, label %typeassert.next134, !dbg !3743

typeassert.next134:                               ; preds = %typeassert.ok133, %typeswitch.next30
  %typeassert.value137 = phi { float, float } [ zeroinitializer, %typeswitch.next30 ], [ %69, %typeassert.ok133 ], !dbg !3691
  %64 = insertvalue { { float, float }, i1 } undef, { float, float } %typeassert.value137, 0, !dbg !3691
  %65 = insertvalue { { float, float }, i1 } %64, i1 false, 1, !dbg !3691
  %66 = extractvalue { { float, float }, i1 } %65, 0, !dbg !3743
  %67 = extractvalue { { float, float }, i1 } %65, 1, !dbg !3743
  br i1 %67, label %typeswitch.body31, label %typeswitch.next32, !dbg !3694

typeassert.ok133:                                 ; preds = %typeswitch.next30
  %typeassert.value.ptr135 = extractvalue { ptr, ptr } %1, 1, !dbg !3743
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc136), !dbg !3691
  store ptr %typeassert.value.ptr135, ptr %unpack.raw.alloc136, align 8, !dbg !3691
  %68 = getelementptr inbounds { { float, float } }, ptr %unpack.raw.alloc136, i32 0, i32 0, !dbg !3691
  %69 = load { float, float }, ptr %68, align 4, !dbg !3691
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc136), !dbg !3691
  br label %typeassert.next134, !dbg !3691

typeswitch.body31:                                ; preds = %typeassert.next134
    #dbg_value({ float, float } %66, !3682, !DIExpression(), !3744)
  %70 = extractvalue { float, float } %66, 0, !dbg !3745
  %71 = extractvalue { float, float } %66, 1, !dbg !3745
  call void @runtime.printcomplex64(float %70, float %71, ptr undef), !dbg !3745
  br label %typeswitch.done, !dbg !3694

typeswitch.next32:                                ; preds = %typeassert.next134
  %interface.type138 = extractvalue { ptr, ptr } %1, 0, !dbg !3746
  br i1 false, label %typeassert.ok140, label %typeassert.next141, !dbg !3746

typeassert.next141:                               ; preds = %typeassert.ok140, %typeswitch.next32
  %typeassert.value143 = phi { double, double } [ zeroinitializer, %typeswitch.next32 ], [ %77, %typeassert.ok140 ], !dbg !3746
  %72 = insertvalue { { double, double }, i1 } undef, { double, double } %typeassert.value143, 0, !dbg !3746
  %73 = insertvalue { { double, double }, i1 } %72, i1 false, 1, !dbg !3746
  %74 = extractvalue { { double, double }, i1 } %73, 0, !dbg !3746
  %75 = extractvalue { { double, double }, i1 } %73, 1, !dbg !3746
  br i1 %75, label %typeswitch.body33, label %typeswitch.next34, !dbg !3694

typeassert.ok140:                                 ; preds = %typeswitch.next32
  %typeassert.value.ptr142 = extractvalue { ptr, ptr } %1, 1, !dbg !3746
  %76 = getelementptr inbounds { { double, double } }, ptr %typeassert.value.ptr142, i32 0, i32 0, !dbg !3746
  %77 = load { double, double }, ptr %76, align 8, !dbg !3746
  br label %typeassert.next141, !dbg !3746

typeswitch.body33:                                ; preds = %typeassert.next141
    #dbg_value({ double, double } %74, !3684, !DIExpression(), !3747)
  %78 = extractvalue { double, double } %74, 0, !dbg !3748
  %79 = extractvalue { double, double } %74, 1, !dbg !3748
  call void @runtime.printcomplex128(double %78, double %79, ptr undef), !dbg !3748
  br label %typeswitch.done, !dbg !3694

typeswitch.next34:                                ; preds = %typeassert.next141
  %interface.type144 = extractvalue { ptr, ptr } %1, 0, !dbg !3749
  %typeassert.ok1 = icmp eq ptr @"reflect/types.type:basic:string", %interface.type144, !dbg !3749
  br i1 %typeassert.ok1, label %typeassert.ok146, label %typeassert.next147, !dbg !3749

typeassert.next147:                               ; preds = %typeassert.ok146, %typeswitch.next34
  %typeassert.value149 = phi %runtime._string [ zeroinitializer, %typeswitch.next34 ], [ %85, %typeassert.ok146 ], !dbg !3749
  %80 = insertvalue { %runtime._string, i1 } undef, %runtime._string %typeassert.value149, 0, !dbg !3749
  %81 = insertvalue { %runtime._string, i1 } %80, i1 %typeassert.ok1, 1, !dbg !3749
  %82 = extractvalue { %runtime._string, i1 } %81, 0, !dbg !3749
  %83 = extractvalue { %runtime._string, i1 } %81, 1, !dbg !3749
  br i1 %83, label %typeswitch.body35, label %typeswitch.next36, !dbg !3694

typeassert.ok146:                                 ; preds = %typeswitch.next34
  %typeassert.value.ptr148 = extractvalue { ptr, ptr } %1, 1, !dbg !3749
  %84 = getelementptr inbounds { %runtime._string }, ptr %typeassert.value.ptr148, i32 0, i32 0, !dbg !3749
  %85 = load %runtime._string, ptr %84, align 8, !dbg !3749
  br label %typeassert.next147, !dbg !3749

typeswitch.body35:                                ; preds = %typeassert.next147
    #dbg_value(%runtime._string %82, !3686, !DIExpression(), !3750)
  %86 = extractvalue %runtime._string %82, 0, !dbg !3751
  %87 = extractvalue %runtime._string %82, 1, !dbg !3751
  call void @runtime.printstring(ptr %86, i64 %87, ptr undef), !dbg !3751
  br label %typeswitch.done, !dbg !3694

typeswitch.next36:                                ; preds = %typeassert.next147
  %interface.type150 = extractvalue { ptr, ptr } %1, 0, !dbg !3752
  %88 = call i1 @"interface:{Error:func:{}{basic:string}}.$typeassert"(ptr %interface.type150), !dbg !3752
  br i1 %88, label %typeassert.ok151, label %typeassert.next152, !dbg !3752

typeassert.next152:                               ; preds = %typeassert.ok151, %typeswitch.next36
  %typeassert.value153 = phi { ptr, ptr } [ zeroinitializer, %typeswitch.next36 ], [ %1, %typeassert.ok151 ], !dbg !3752
  %89 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %typeassert.value153, 0, !dbg !3752
  %90 = insertvalue { { ptr, ptr }, i1 } %89, i1 %88, 1, !dbg !3752
  %91 = extractvalue { { ptr, ptr }, i1 } %90, 0, !dbg !3752
  %92 = extractvalue { { ptr, ptr }, i1 } %90, 1, !dbg !3752
  br i1 %92, label %typeswitch.body37, label %typeswitch.next38, !dbg !3694

typeassert.ok151:                                 ; preds = %typeswitch.next36
  br label %typeassert.next152, !dbg !3752

typeswitch.body37:                                ; preds = %typeassert.next152
    #dbg_value({ ptr, ptr } %91, !3687, !DIExpression(), !3753)
  %invoke.func.typecode = extractvalue { ptr, ptr } %91, 0, !dbg !3754
  %invoke.func.value = extractvalue { ptr, ptr } %91, 1, !dbg !3754
  %93 = call %runtime._string @"interface:{Error:func:{}{basic:string}}.Error$invoke"(ptr %invoke.func.value, ptr %invoke.func.typecode, ptr undef), !dbg !3754
  %94 = extractvalue %runtime._string %93, 0, !dbg !3755
  %95 = extractvalue %runtime._string %93, 1, !dbg !3755
  call void @runtime.printstring(ptr %94, i64 %95, ptr undef), !dbg !3755
  br label %typeswitch.done, !dbg !3694

typeswitch.next38:                                ; preds = %typeassert.next152
  %interface.type154 = extractvalue { ptr, ptr } %1, 0, !dbg !3756
  %96 = call i1 @"interface:{String:func:{}{basic:string}}.$typeassert"(ptr %interface.type154), !dbg !3756
  br i1 %96, label %typeassert.ok155, label %typeassert.next156, !dbg !3756

typeassert.next156:                               ; preds = %typeassert.ok155, %typeswitch.next38
  %typeassert.value157 = phi { ptr, ptr } [ zeroinitializer, %typeswitch.next38 ], [ %1, %typeassert.ok155 ], !dbg !3756
  %97 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %typeassert.value157, 0, !dbg !3756
  %98 = insertvalue { { ptr, ptr }, i1 } %97, i1 %96, 1, !dbg !3756
  %99 = extractvalue { { ptr, ptr }, i1 } %98, 0, !dbg !3756
  %100 = extractvalue { { ptr, ptr }, i1 } %98, 1, !dbg !3756
  br i1 %100, label %typeswitch.body39, label %typeswitch.next40, !dbg !3694

typeassert.ok155:                                 ; preds = %typeswitch.next38
  br label %typeassert.next156, !dbg !3756

typeswitch.body39:                                ; preds = %typeassert.next156
    #dbg_value({ ptr, ptr } %99, !3688, !DIExpression(), !3757)
  %invoke.func.typecode158 = extractvalue { ptr, ptr } %99, 0, !dbg !3758
  %invoke.func.value159 = extractvalue { ptr, ptr } %99, 1, !dbg !3758
  %101 = call %runtime._string @"interface:{String:func:{}{basic:string}}.String$invoke"(ptr %invoke.func.value159, ptr %invoke.func.typecode158, ptr undef), !dbg !3758
  %102 = extractvalue %runtime._string %101, 0, !dbg !3759
  %103 = extractvalue %runtime._string %101, 1, !dbg !3759
  call void @runtime.printstring(ptr %102, i64 %103, ptr undef), !dbg !3759
  br label %typeswitch.done, !dbg !3694

typeswitch.next40:                                ; preds = %typeassert.next156
  %msg = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 389 to ptr), ptr undef), !dbg !3760
  store { ptr, ptr } %1, ptr %msg, align 8, !dbg !3760
  store { ptr, ptr } zeroinitializer, ptr %itf, align 8, !dbg !3691
  %104 = load { ptr, ptr }, ptr %msg, align 8, !dbg !3761
  store { ptr, ptr } %104, ptr %itf, align 8, !dbg !3762
    #dbg_value({ ptr, ptr } %104, !3690, !DIExpression(), !3762)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !3763
  %105 = getelementptr inbounds { ptr, ptr }, ptr %itf, i32 0, i32 0, !dbg !3764
  %106 = icmp eq ptr %105, null, !dbg !3764
  br i1 %106, label %deref.throw, label %deref.next, !dbg !3764

deref.next:                                       ; preds = %typeswitch.next40
  %107 = load ptr, ptr %105, align 8, !dbg !3764
  %108 = ptrtoint ptr %107 to i64, !dbg !3765
  call void @runtime.printuintptr(i64 %108, ptr undef), !dbg !3766
  call void @runtime.putchar(i8 58, ptr undef), !dbg !3767
  %109 = getelementptr inbounds { ptr, ptr }, ptr %itf, i32 0, i32 1, !dbg !3768
  %110 = icmp eq ptr %109, null, !dbg !3768
  br i1 %110, label %deref.throw160, label %deref.next161, !dbg !3768

deref.next161:                                    ; preds = %deref.next
  %111 = load ptr, ptr %109, align 8, !dbg !3768
  %112 = ptrtoint ptr %111 to i64, !dbg !3769
  call void @runtime.printptr(i64 %112, ptr undef), !dbg !3770
  call void @runtime.putchar(i8 41, ptr undef), !dbg !3771
  br label %typeswitch.done, !dbg !3694

deref.throw:                                      ; preds = %typeswitch.next40
  call void @runtime.nilPanic(ptr undef), !dbg !3764
  unreachable, !dbg !3764

deref.throw160:                                   ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !3768
  unreachable, !dbg !3768
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printbool(i1 %b, ptr %context) unnamed_addr #1 !dbg !3772 {
entry:
    #dbg_value(i1 %b, !3776, !DIExpression(), !3777)
    #dbg_value(i1 %b, !3776, !DIExpression(), !3778)
  br i1 %b, label %if.then, label %if.else, !dbg !3779

if.then:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.46", i64 4, ptr undef), !dbg !3780
  br label %if.done, !dbg !3779

if.done:                                          ; preds = %if.else, %if.then
  ret void, !dbg !3781

if.else:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.47", i64 5, ptr undef), !dbg !3782
  br label %if.done, !dbg !3779
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint64(i64 %n, ptr %context) unnamed_addr #1 !dbg !3783 {
entry:
    #dbg_value(i64 %n, !3787, !DIExpression(), !3788)
    #dbg_value(i64 %n, !3787, !DIExpression(), !3789)
  %0 = icmp slt i64 %n, 0, !dbg !3790
  br i1 %0, label %if.then, label %if.done, !dbg !3791

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3792
    #dbg_value(i64 %n, !3787, !DIExpression(), !3793)
  %1 = sub i64 0, %n, !dbg !3794
    #dbg_value(i64 %1, !3787, !DIExpression(), !3795)
  br label %if.done, !dbg !3791

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i64 [ %n, %entry ], [ %1, %if.then ], !dbg !3796
    #dbg_value(i64 %2, !3787, !DIExpression(), !3797)
  call void @runtime.printuint64(i64 %2, ptr undef), !dbg !3798
  ret void, !dbg !3799
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint32(i32 %n, ptr %context) unnamed_addr #1 !dbg !3800 {
entry:
    #dbg_value(i32 %n, !3802, !DIExpression(), !3803)
    #dbg_value(i32 %n, !3802, !DIExpression(), !3804)
  %0 = icmp slt i32 %n, 0, !dbg !3805
  br i1 %0, label %if.then, label %if.done, !dbg !3806

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3807
    #dbg_value(i32 %n, !3802, !DIExpression(), !3808)
  %1 = sub i32 0, %n, !dbg !3809
    #dbg_value(i32 %1, !3802, !DIExpression(), !3810)
  br label %if.done, !dbg !3806

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i32 [ %n, %entry ], [ %1, %if.then ], !dbg !3811
    #dbg_value(i32 %2, !3802, !DIExpression(), !3812)
  call void @runtime.printuint32(i32 %2, ptr undef), !dbg !3813
  ret void, !dbg !3814
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint8(i8 %n, ptr %context) unnamed_addr #1 !dbg !3815 {
entry:
    #dbg_value(i8 %n, !3819, !DIExpression(), !3820)
  br i1 true, label %if.then, label %if.else, !dbg !3821

if.then:                                          ; preds = %entry
    #dbg_value(i8 %n, !3819, !DIExpression(), !3822)
  %0 = sext i8 %n to i32, !dbg !3823
  call void @runtime.printint32(i32 %0, ptr undef), !dbg !3824
  br label %if.done, !dbg !3821

if.done:                                          ; preds = %if.done2, %if.then
  ret void, !dbg !3825

if.else:                                          ; preds = %entry
    #dbg_value(i8 %n, !3819, !DIExpression(), !3826)
  %1 = icmp slt i8 %n, 0, !dbg !3827
  br i1 %1, label %if.then1, label %if.done2, !dbg !3821

if.then1:                                         ; preds = %if.else
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3828
    #dbg_value(i8 %n, !3819, !DIExpression(), !3829)
  %2 = sub i8 0, %n, !dbg !3830
    #dbg_value(i8 %2, !3819, !DIExpression(), !3831)
  br label %if.done2, !dbg !3821

if.done2:                                         ; preds = %if.then1, %if.else
  %3 = phi i8 [ %n, %if.else ], [ %2, %if.then1 ], !dbg !3832
    #dbg_value(i8 %3, !3819, !DIExpression(), !3833)
  call void @runtime.printuint8(i8 %3, ptr undef), !dbg !3834
  br label %if.done, !dbg !3821
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint16(i16 %n, ptr %context) unnamed_addr #1 !dbg !3835 {
entry:
    #dbg_value(i16 %n, !3839, !DIExpression(), !3840)
    #dbg_value(i16 %n, !3839, !DIExpression(), !3841)
  %0 = sext i16 %n to i32, !dbg !3842
  call void @runtime.printint32(i32 %0, ptr undef), !dbg !3843
  ret void, !dbg !3844
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint64(i64 %n, ptr %context) unnamed_addr #1 !dbg !3845 {
entry:
    #dbg_value(i64 %n, !3849, !DIExpression(), !3854)
  %digits = alloca [20 x i8], align 1, !dbg !3855
  store [20 x i8] zeroinitializer, ptr %digits, align 1, !dbg !3855
    #dbg_value(i64 19, !3850, !DIExpression(), !3856)
    #dbg_value(i64 19, !3851, !DIExpression(), !3857)
  br label %for.loop, !dbg !3858

for.loop:                                         ; preds = %if.done, %entry
  %0 = phi i64 [ %n, %entry ], [ %10, %if.done ], !dbg !3859
  %1 = phi i64 [ 19, %entry ], [ %9, %if.done ], !dbg !3856
  %2 = phi i64 [ 19, %entry ], [ %11, %if.done ], !dbg !3857
    #dbg_value(i64 %2, !3851, !DIExpression(), !3860)
  %3 = icmp sge i64 %2, 0, !dbg !3861
  br i1 %3, label %for.body, label %for.done, !dbg !3858

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !3849, !DIExpression(), !3862)
  %4 = urem i64 %0, 10, !dbg !3863
  %5 = add i64 %4, 48, !dbg !3864
  %6 = trunc i64 %5 to i8, !dbg !3865
    #dbg_value(i8 %6, !3852, !DIExpression(), !3866)
    #dbg_value(i64 %2, !3851, !DIExpression(), !3867)
    #dbg_value(i8 %6, !3852, !DIExpression(), !3868)
  %7 = getelementptr inbounds [20 x i8], ptr %digits, i32 0, i64 %2, !dbg !3869
  store i8 %6, ptr %7, align 1, !dbg !3869
    #dbg_value(i8 %6, !3852, !DIExpression(), !3870)
  %8 = icmp ne i8 %6, 48, !dbg !3871
  br i1 %8, label %if.then, label %if.done, !dbg !3858

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %2, !3851, !DIExpression(), !3872)
    #dbg_value(i64 %2, !3850, !DIExpression(), !3873)
  br label %if.done, !dbg !3858

if.done:                                          ; preds = %if.then, %for.body
  %9 = phi i64 [ %1, %for.body ], [ %2, %if.then ], !dbg !3856
  %10 = udiv i64 %0, 10, !dbg !3874
    #dbg_value(i64 %10, !3849, !DIExpression(), !3874)
  %11 = sub i64 %2, 1, !dbg !3875
    #dbg_value(i64 %11, !3851, !DIExpression(), !3875)
  br label %for.loop, !dbg !3858

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !3850, !DIExpression(), !3876)
    #dbg_value(i64 %1, !3853, !DIExpression(), !3877)
  br label %for.loop1, !dbg !3858

for.loop1:                                        ; preds = %for.body2, %for.done
  %12 = phi i64 [ %1, %for.done ], [ %16, %for.body2 ], !dbg !3877
    #dbg_value(i64 %12, !3853, !DIExpression(), !3878)
  %13 = icmp slt i64 %12, 20, !dbg !3879
  br i1 %13, label %for.body2, label %for.done3, !dbg !3858

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %12, !3853, !DIExpression(), !3880)
  %14 = getelementptr inbounds [20 x i8], ptr %digits, i32 0, i64 %12, !dbg !3881
  %15 = load i8, ptr %14, align 1, !dbg !3881
  call void @runtime.putchar(i8 %15, ptr undef), !dbg !3882
  %16 = add i64 %12, 1, !dbg !3883
    #dbg_value(i64 %16, !3853, !DIExpression(), !3883)
  br label %for.loop1, !dbg !3858

for.done3:                                        ; preds = %for.loop1
  ret void, !dbg !3884
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint32(i32 %n, ptr %context) unnamed_addr #1 !dbg !3885 {
entry:
    #dbg_value(i32 %n, !3887, !DIExpression(), !3888)
    #dbg_value(i32 %n, !3887, !DIExpression(), !3889)
  %0 = zext i32 %n to i64, !dbg !3890
  call void @runtime.printuint64(i64 %0, ptr undef), !dbg !3891
  ret void, !dbg !3892
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint8(i8 %n, ptr %context) unnamed_addr #1 !dbg !3893 {
entry:
    #dbg_value(i8 %n, !3897, !DIExpression(), !3899)
  br i1 true, label %if.then, label %if.else, !dbg !3900

if.then:                                          ; preds = %entry
    #dbg_value(i8 %n, !3897, !DIExpression(), !3901)
  %0 = zext i8 %n to i32, !dbg !3902
  call void @runtime.printuint32(i32 %0, ptr undef), !dbg !3903
  br label %if.done, !dbg !3900

if.done:                                          ; preds = %if.done2, %if.then
  ret void, !dbg !3904

if.else:                                          ; preds = %entry
    #dbg_value(i8 %n, !3897, !DIExpression(), !3905)
  %1 = udiv i8 %n, 10, !dbg !3906
    #dbg_value(i8 %1, !3898, !DIExpression(), !3907)
    #dbg_value(i8 %1, !3898, !DIExpression(), !3908)
  %2 = icmp ne i8 %1, 0, !dbg !3909
  br i1 %2, label %if.then1, label %if.done2, !dbg !3900

if.then1:                                         ; preds = %if.else
    #dbg_value(i8 %1, !3898, !DIExpression(), !3910)
  call void @runtime.printuint8(i8 %1, ptr undef), !dbg !3911
  br label %if.done2, !dbg !3900

if.done2:                                         ; preds = %if.then1, %if.else
    #dbg_value(i8 %n, !3897, !DIExpression(), !3912)
  %3 = urem i8 %n, 10, !dbg !3913
  %4 = add i8 %3, 48, !dbg !3914
  call void @runtime.putchar(i8 %4, ptr undef), !dbg !3915
  br label %if.done, !dbg !3900
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint16(i16 %n, ptr %context) unnamed_addr #1 !dbg !3916 {
entry:
    #dbg_value(i16 %n, !3920, !DIExpression(), !3921)
    #dbg_value(i16 %n, !3920, !DIExpression(), !3922)
  %0 = zext i16 %n to i32, !dbg !3923
  call void @runtime.printuint32(i32 %0, ptr undef), !dbg !3924
  ret void, !dbg !3925
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuintptr(i64 %n, ptr %context) unnamed_addr #1 !dbg !3926 {
entry:
    #dbg_value(i64 %n, !3928, !DIExpression(), !3929)
  br i1 false, label %switch.body, label %switch.next, !dbg !3930

switch.body:                                      ; preds = %entry
    #dbg_value(i64 %n, !3928, !DIExpression(), !3931)
  %0 = trunc i64 %n to i16, !dbg !3932
  call void @runtime.printuint16(i16 %0, ptr undef), !dbg !3933
  br label %switch.done, !dbg !3930

switch.done:                                      ; preds = %switch.body3, %switch.next2, %switch.body1, %switch.body
  ret void, !dbg !3934

switch.next:                                      ; preds = %entry
  br i1 false, label %switch.body1, label %switch.next2, !dbg !3930

switch.body1:                                     ; preds = %switch.next
    #dbg_value(i64 %n, !3928, !DIExpression(), !3935)
  %1 = trunc i64 %n to i32, !dbg !3936
  call void @runtime.printuint32(i32 %1, ptr undef), !dbg !3937
  br label %switch.done, !dbg !3930

switch.next2:                                     ; preds = %switch.next
  br i1 true, label %switch.body3, label %switch.done, !dbg !3930

switch.body3:                                     ; preds = %switch.next2
    #dbg_value(i64 %n, !3928, !DIExpression(), !3938)
  call void @runtime.printuint64(i64 %n, ptr undef), !dbg !3939
  br label %switch.done, !dbg !3930
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printfloat32(float %v, ptr %context) unnamed_addr #1 !dbg !3940 {
entry:
    #dbg_value(float %v, !3944, !DIExpression(), !3953)
    #dbg_value(float %v, !3944, !DIExpression(), !3954)
    #dbg_value(float %v, !3944, !DIExpression(), !3955)
  %index.alloca = alloca [14 x i8], align 1, !dbg !3956
  %buf = alloca [14 x i8], align 1, !dbg !3956
  %0 = fcmp une float %v, %v, !dbg !3956
  br i1 %0, label %switch.body, label %switch.next, !dbg !3957

switch.body:                                      ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.35", i64 3, ptr undef), !dbg !3958
  ret void, !dbg !3959

switch.next:                                      ; preds = %entry
    #dbg_value(float %v, !3944, !DIExpression(), !3960)
    #dbg_value(float %v, !3944, !DIExpression(), !3961)
  %1 = fadd float %v, %v, !dbg !3962
    #dbg_value(float %v, !3944, !DIExpression(), !3963)
  %2 = fcmp oeq float %1, %v, !dbg !3964
  br i1 %2, label %binop.rhs, label %binop.done, !dbg !3957

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(float %v, !3944, !DIExpression(), !3965)
  %3 = fcmp ogt float %v, 0.000000e+00, !dbg !3966
  br label %binop.done, !dbg !3957

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ false, %switch.next ], [ %3, %binop.rhs ], !dbg !3967
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !3957

switch.body1:                                     ; preds = %binop.done
  call void @runtime.printstring(ptr @"runtime$string.36", i64 4, ptr undef), !dbg !3968
  ret void, !dbg !3969

switch.next2:                                     ; preds = %binop.done
    #dbg_value(float %v, !3944, !DIExpression(), !3970)
    #dbg_value(float %v, !3944, !DIExpression(), !3971)
  %5 = fadd float %v, %v, !dbg !3972
    #dbg_value(float %v, !3944, !DIExpression(), !3973)
  %6 = fcmp oeq float %5, %v, !dbg !3974
  br i1 %6, label %binop.rhs3, label %binop.done4, !dbg !3957

binop.rhs3:                                       ; preds = %switch.next2
    #dbg_value(float %v, !3944, !DIExpression(), !3975)
  %7 = fcmp olt float %v, 0.000000e+00, !dbg !3976
  br label %binop.done4, !dbg !3957

binop.done4:                                      ; preds = %binop.rhs3, %switch.next2
  %8 = phi i1 [ false, %switch.next2 ], [ %7, %binop.rhs3 ], !dbg !3977
  br i1 %8, label %switch.body5, label %switch.next6, !dbg !3957

switch.body5:                                     ; preds = %binop.done4
  call void @runtime.printstring(ptr @"runtime$string.37", i64 4, ptr undef), !dbg !3978
  ret void, !dbg !3979

switch.next6:                                     ; preds = %binop.done4
  store [14 x i8] zeroinitializer, ptr %buf, align 1, !dbg !3956
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !3980
  store i8 43, ptr %9, align 1, !dbg !3980
    #dbg_value(i64 0, !3945, !DIExpression(), !3981)
    #dbg_value(float %v, !3944, !DIExpression(), !3982)
  %10 = fcmp oeq float %v, 0.000000e+00, !dbg !3983
  br i1 %10, label %if.then, label %if.else, !dbg !3957

if.then:                                          ; preds = %switch.next6
    #dbg_value(float %v, !3944, !DIExpression(), !3984)
  %11 = fdiv float 1.000000e+00, %v, !dbg !3985
  %12 = fcmp olt float %11, 0.000000e+00, !dbg !3986
  br i1 %12, label %if.then7, label %if.done, !dbg !3957

if.then7:                                         ; preds = %if.then
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !3987
  store i8 45, ptr %13, align 1, !dbg !3987
  br label %if.done, !dbg !3957

if.done:                                          ; preds = %if.then19, %for.done18, %if.then7, %if.then
  %14 = phi float [ %v, %if.then ], [ %84, %for.done18 ], [ %v, %if.then7 ], [ %87, %if.then19 ], !dbg !3988
  %15 = phi i64 [ 0, %if.then ], [ %75, %for.done18 ], [ 0, %if.then7 ], [ %86, %if.then19 ], !dbg !3981
    #dbg_value(i64 0, !3946, !DIExpression(), !3989)
  br label %for.loop, !dbg !3957

for.loop:                                         ; preds = %lookup.next, %if.done
  %16 = phi float [ %14, %if.done ], [ %27, %lookup.next ], !dbg !3988
  %17 = phi i64 [ 0, %if.done ], [ %28, %lookup.next ], !dbg !3989
    #dbg_value(i64 %17, !3946, !DIExpression(), !3990)
  %18 = icmp slt i64 %17, 7, !dbg !3991
  br i1 %18, label %for.body, label %for.done, !dbg !3957

for.body:                                         ; preds = %for.loop
    #dbg_value(float %16, !3944, !DIExpression(), !3992)
  %abovemin = fcmp ole float 0xC3E0000000000000, %16, !dbg !3993
  %belowmax = fcmp ole float %16, 0x43DFFFFFC0000000, !dbg !3993
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3993
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3993
  %isnan = fcmp uno float %16, %16, !dbg !3993
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3993
  %normal = fptosi float %16 to i64, !dbg !3993
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3993
    #dbg_value(i64 %19, !3947, !DIExpression(), !3994)
    #dbg_value(i64 %17, !3946, !DIExpression(), !3995)
  %20 = add i64 %17, 2, !dbg !3996
    #dbg_value(i64 %19, !3947, !DIExpression(), !3997)
  %21 = add i64 %19, 48, !dbg !3998
  %22 = trunc i64 %21 to i8, !dbg !3999
  %23 = icmp uge i64 %20, 14, !dbg !4000
  br i1 %23, label %lookup.throw, label %lookup.next, !dbg !4000

lookup.next:                                      ; preds = %for.body
  %24 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 %20, !dbg !4000
  store i8 %22, ptr %24, align 1, !dbg !4000
    #dbg_value(i64 %19, !3947, !DIExpression(), !4001)
  %25 = sitofp i64 %19 to float, !dbg !4002
  %26 = fsub float %16, %25, !dbg !4003
    #dbg_value(float %26, !3944, !DIExpression(), !4003)
  %27 = fmul float %26, 1.000000e+01, !dbg !4004
    #dbg_value(float %27, !3944, !DIExpression(), !4004)
  %28 = add i64 %17, 1, !dbg !4005
    #dbg_value(i64 %28, !3946, !DIExpression(), !4005)
  br label %for.loop, !dbg !3957

for.done:                                         ; preds = %for.loop
  %29 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4006
  %30 = load i8, ptr %29, align 1, !dbg !4006
  %31 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 1, !dbg !4007
  store i8 %30, ptr %31, align 1, !dbg !4007
  %32 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4008
  store i8 46, ptr %32, align 1, !dbg !4008
  %33 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 9, !dbg !4009
  store i8 101, ptr %33, align 1, !dbg !4009
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4010
  store i8 43, ptr %34, align 1, !dbg !4010
    #dbg_value(i64 %15, !3945, !DIExpression(), !4011)
  %35 = icmp slt i64 %15, 0, !dbg !4012
  br i1 %35, label %if.then8, label %if.done9, !dbg !3957

if.then8:                                         ; preds = %for.done
    #dbg_value(i64 %15, !3945, !DIExpression(), !4013)
  %36 = sub i64 0, %15, !dbg !4014
    #dbg_value(i64 %36, !3945, !DIExpression(), !4015)
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4016
  store i8 45, ptr %37, align 1, !dbg !4016
  br label %if.done9, !dbg !3957

if.done9:                                         ; preds = %if.then8, %for.done
  %38 = phi i64 [ %15, %for.done ], [ %36, %if.then8 ], !dbg !3981
    #dbg_value(i64 %38, !3945, !DIExpression(), !4017)
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !4018
  %40 = and i1 false, %39, !dbg !4018
  %41 = select i1 %40, i64 1, i64 100, !dbg !4018
  %42 = sdiv i64 %38, %41, !dbg !4018
  %43 = trunc i64 %42 to i8, !dbg !4019
  %44 = add i8 %43, 48, !dbg !4020
  %45 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 11, !dbg !4021
  store i8 %44, ptr %45, align 1, !dbg !4021
    #dbg_value(i64 %38, !3945, !DIExpression(), !4022)
  %46 = icmp eq i64 %38, -9223372036854775808, !dbg !4023
  %47 = and i1 false, %46, !dbg !4023
  %48 = select i1 %47, i64 1, i64 10, !dbg !4023
  %49 = sdiv i64 %38, %48, !dbg !4023
  %50 = trunc i64 %49 to i8, !dbg !4024
  %51 = urem i8 %50, 10, !dbg !4025
  %52 = add i8 %51, 48, !dbg !4026
  %53 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 12, !dbg !4027
  store i8 %52, ptr %53, align 1, !dbg !4027
    #dbg_value(i64 %38, !3945, !DIExpression(), !4028)
  %54 = icmp eq i64 %38, -9223372036854775808, !dbg !4029
  %55 = and i1 false, %54, !dbg !4029
  %56 = select i1 %55, i64 1, i64 10, !dbg !4029
  %57 = srem i64 %38, %56, !dbg !4029
  %58 = trunc i64 %57 to i8, !dbg !4030
  %59 = add i8 %58, 48, !dbg !4031
  %60 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 13, !dbg !4032
  store i8 %59, ptr %60, align 1, !dbg !4032
  %61 = load [14 x i8], ptr %buf, align 1, !dbg !4033
    #dbg_value([14 x i8] %61, !3948, !DIExpression(), !4033)
  br label %rangeindex.loop, !dbg !3957

rangeindex.loop:                                  ; preds = %lookup.next21, %if.done9
  %62 = phi i64 [ -1, %if.done9 ], [ %63, %lookup.next21 ], !dbg !3957
  %63 = add i64 %62, 1, !dbg !3957
  %64 = icmp slt i64 %63, 14, !dbg !3957
  br i1 %64, label %rangeindex.body, label %rangeindex.done, !dbg !3957

rangeindex.body:                                  ; preds = %rangeindex.loop
  %65 = icmp uge i64 %63, 14, !dbg !4033
  br i1 %65, label %lookup.throw20, label %lookup.next21, !dbg !4033

lookup.next21:                                    ; preds = %rangeindex.body
  call void @llvm.lifetime.start.p0(i64 14, ptr %index.alloca), !dbg !3956
  store [14 x i8] %61, ptr %index.alloca, align 1, !dbg !3956
  %index.gep = getelementptr inbounds [14 x i8], ptr %index.alloca, i32 0, i64 %63, !dbg !3956
  %index.load = load i8, ptr %index.gep, align 1, !dbg !3956
  call void @llvm.lifetime.end.p0(i64 14, ptr %index.alloca), !dbg !3956
    #dbg_value(i8 %index.load, !3950, !DIExpression(), !4034)
    #dbg_value(i8 %index.load, !3950, !DIExpression(), !4035)
  call void @runtime.putchar(i8 %index.load, ptr undef), !dbg !4036
  br label %rangeindex.loop, !dbg !3957

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret void, !dbg !4037

if.else:                                          ; preds = %switch.next6
    #dbg_value(float %v, !3944, !DIExpression(), !4038)
  %66 = fcmp olt float %v, 0.000000e+00, !dbg !4039
  br i1 %66, label %if.then10, label %for.loop11, !dbg !3957

if.then10:                                        ; preds = %if.else
    #dbg_value(float %v, !3944, !DIExpression(), !4040)
  %67 = fneg float %v, !dbg !4041
    #dbg_value(float %67, !3944, !DIExpression(), !4042)
  %68 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4043
  store i8 45, ptr %68, align 1, !dbg !4043
  br label %for.loop11, !dbg !3957

for.loop11:                                       ; preds = %for.body12, %if.then10, %if.else
  %69 = phi float [ %v, %if.else ], [ %73, %for.body12 ], [ %67, %if.then10 ], !dbg !3988
  %70 = phi i64 [ 0, %if.else ], [ %72, %for.body12 ], [ 0, %if.then10 ], !dbg !3981
    #dbg_value(float %69, !3944, !DIExpression(), !4044)
  %71 = fcmp oge float %69, 1.000000e+01, !dbg !4045
  br i1 %71, label %for.body12, label %for.loop13, !dbg !3957

for.body12:                                       ; preds = %for.loop11
  %72 = add i64 %70, 1, !dbg !4046
    #dbg_value(i64 %72, !3945, !DIExpression(), !4046)
  %73 = fdiv float %69, 1.000000e+01, !dbg !4047
    #dbg_value(float %73, !3944, !DIExpression(), !4047)
  br label %for.loop11, !dbg !3957

for.loop13:                                       ; preds = %for.body14, %for.loop11
  %74 = phi float [ %69, %for.loop11 ], [ %78, %for.body14 ], !dbg !3988
  %75 = phi i64 [ %70, %for.loop11 ], [ %77, %for.body14 ], !dbg !3981
    #dbg_value(float %74, !3944, !DIExpression(), !4048)
  %76 = fcmp olt float %74, 1.000000e+00, !dbg !4049
  br i1 %76, label %for.body14, label %for.done15, !dbg !3957

for.body14:                                       ; preds = %for.loop13
  %77 = sub i64 %75, 1, !dbg !4050
    #dbg_value(i64 %77, !3945, !DIExpression(), !4050)
  %78 = fmul float %74, 1.000000e+01, !dbg !4051
    #dbg_value(float %78, !3944, !DIExpression(), !4051)
  br label %for.loop13, !dbg !3957

for.done15:                                       ; preds = %for.loop13
    #dbg_value(float 5.000000e+00, !3951, !DIExpression(), !4052)
    #dbg_value(i64 0, !3952, !DIExpression(), !4053)
  br label %for.loop16, !dbg !3957

for.loop16:                                       ; preds = %for.body17, %for.done15
  %79 = phi float [ 5.000000e+00, %for.done15 ], [ %82, %for.body17 ], !dbg !4052
  %80 = phi i64 [ 0, %for.done15 ], [ %83, %for.body17 ], !dbg !4053
    #dbg_value(i64 %80, !3952, !DIExpression(), !4054)
  %81 = icmp slt i64 %80, 7, !dbg !4055
  br i1 %81, label %for.body17, label %for.done18, !dbg !3957

for.body17:                                       ; preds = %for.loop16
  %82 = fdiv float %79, 1.000000e+01, !dbg !4056
    #dbg_value(float %82, !3951, !DIExpression(), !4056)
  %83 = add i64 %80, 1, !dbg !4057
    #dbg_value(i64 %83, !3952, !DIExpression(), !4057)
  br label %for.loop16, !dbg !3957

for.done18:                                       ; preds = %for.loop16
    #dbg_value(float %79, !3951, !DIExpression(), !4058)
  %84 = fadd float %74, %79, !dbg !4059
    #dbg_value(float %84, !3944, !DIExpression(), !4059)
    #dbg_value(float %84, !3944, !DIExpression(), !4060)
  %85 = fcmp oge float %84, 1.000000e+01, !dbg !4061
  br i1 %85, label %if.then19, label %if.done, !dbg !3957

if.then19:                                        ; preds = %for.done18
  %86 = add i64 %75, 1, !dbg !4062
    #dbg_value(i64 %86, !3945, !DIExpression(), !4062)
  %87 = fdiv float %84, 1.000000e+01, !dbg !4063
    #dbg_value(float %87, !3944, !DIExpression(), !4063)
  br label %if.done, !dbg !3957

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4000
  unreachable, !dbg !4000

lookup.throw20:                                   ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4033
  unreachable, !dbg !4033
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printfloat64(double %v, ptr %context) unnamed_addr #1 !dbg !4064 {
entry:
    #dbg_value(double %v, !4066, !DIExpression(), !4074)
    #dbg_value(double %v, !4066, !DIExpression(), !4075)
    #dbg_value(double %v, !4066, !DIExpression(), !4076)
  %index.alloca = alloca [14 x i8], align 1, !dbg !4077
  %buf = alloca [14 x i8], align 1, !dbg !4077
  %0 = fcmp une double %v, %v, !dbg !4077
  br i1 %0, label %switch.body, label %switch.next, !dbg !4078

switch.body:                                      ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.38", i64 3, ptr undef), !dbg !4079
  ret void, !dbg !4080

switch.next:                                      ; preds = %entry
    #dbg_value(double %v, !4066, !DIExpression(), !4081)
    #dbg_value(double %v, !4066, !DIExpression(), !4082)
  %1 = fadd double %v, %v, !dbg !4083
    #dbg_value(double %v, !4066, !DIExpression(), !4084)
  %2 = fcmp oeq double %1, %v, !dbg !4085
  br i1 %2, label %binop.rhs, label %binop.done, !dbg !4078

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(double %v, !4066, !DIExpression(), !4086)
  %3 = fcmp ogt double %v, 0.000000e+00, !dbg !4087
  br label %binop.done, !dbg !4078

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ false, %switch.next ], [ %3, %binop.rhs ], !dbg !4088
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4078

switch.body1:                                     ; preds = %binop.done
  call void @runtime.printstring(ptr @"runtime$string.39", i64 4, ptr undef), !dbg !4089
  ret void, !dbg !4090

switch.next2:                                     ; preds = %binop.done
    #dbg_value(double %v, !4066, !DIExpression(), !4091)
    #dbg_value(double %v, !4066, !DIExpression(), !4092)
  %5 = fadd double %v, %v, !dbg !4093
    #dbg_value(double %v, !4066, !DIExpression(), !4094)
  %6 = fcmp oeq double %5, %v, !dbg !4095
  br i1 %6, label %binop.rhs3, label %binop.done4, !dbg !4078

binop.rhs3:                                       ; preds = %switch.next2
    #dbg_value(double %v, !4066, !DIExpression(), !4096)
  %7 = fcmp olt double %v, 0.000000e+00, !dbg !4097
  br label %binop.done4, !dbg !4078

binop.done4:                                      ; preds = %binop.rhs3, %switch.next2
  %8 = phi i1 [ false, %switch.next2 ], [ %7, %binop.rhs3 ], !dbg !4098
  br i1 %8, label %switch.body5, label %switch.next6, !dbg !4078

switch.body5:                                     ; preds = %binop.done4
  call void @runtime.printstring(ptr @"runtime$string.40", i64 4, ptr undef), !dbg !4099
  ret void, !dbg !4100

switch.next6:                                     ; preds = %binop.done4
  store [14 x i8] zeroinitializer, ptr %buf, align 1, !dbg !4077
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4101
  store i8 43, ptr %9, align 1, !dbg !4101
    #dbg_value(i64 0, !4067, !DIExpression(), !4102)
    #dbg_value(double %v, !4066, !DIExpression(), !4103)
  %10 = fcmp oeq double %v, 0.000000e+00, !dbg !4104
  br i1 %10, label %if.then, label %if.else, !dbg !4078

if.then:                                          ; preds = %switch.next6
    #dbg_value(double %v, !4066, !DIExpression(), !4105)
  %11 = fdiv double 1.000000e+00, %v, !dbg !4106
  %12 = fcmp olt double %11, 0.000000e+00, !dbg !4107
  br i1 %12, label %if.then7, label %if.done, !dbg !4078

if.then7:                                         ; preds = %if.then
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4108
  store i8 45, ptr %13, align 1, !dbg !4108
  br label %if.done, !dbg !4078

if.done:                                          ; preds = %if.then19, %for.done18, %if.then7, %if.then
  %14 = phi double [ %v, %if.then ], [ %84, %for.done18 ], [ %v, %if.then7 ], [ %87, %if.then19 ], !dbg !4109
  %15 = phi i64 [ 0, %if.then ], [ %75, %for.done18 ], [ 0, %if.then7 ], [ %86, %if.then19 ], !dbg !4102
    #dbg_value(i64 0, !4068, !DIExpression(), !4110)
  br label %for.loop, !dbg !4078

for.loop:                                         ; preds = %lookup.next, %if.done
  %16 = phi double [ %14, %if.done ], [ %27, %lookup.next ], !dbg !4109
  %17 = phi i64 [ 0, %if.done ], [ %28, %lookup.next ], !dbg !4110
    #dbg_value(i64 %17, !4068, !DIExpression(), !4111)
  %18 = icmp slt i64 %17, 7, !dbg !4112
  br i1 %18, label %for.body, label %for.done, !dbg !4078

for.body:                                         ; preds = %for.loop
    #dbg_value(double %16, !4066, !DIExpression(), !4113)
  %abovemin = fcmp ole double 0xC3E0000000000000, %16, !dbg !4114
  %belowmax = fcmp ole double %16, 0x43DFFFFFFFFFFFFE, !dbg !4114
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4114
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4114
  %isnan = fcmp uno double %16, %16, !dbg !4114
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4114
  %normal = fptosi double %16 to i64, !dbg !4114
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4114
    #dbg_value(i64 %19, !4069, !DIExpression(), !4115)
    #dbg_value(i64 %17, !4068, !DIExpression(), !4116)
  %20 = add i64 %17, 2, !dbg !4117
    #dbg_value(i64 %19, !4069, !DIExpression(), !4118)
  %21 = add i64 %19, 48, !dbg !4119
  %22 = trunc i64 %21 to i8, !dbg !4120
  %23 = icmp uge i64 %20, 14, !dbg !4121
  br i1 %23, label %lookup.throw, label %lookup.next, !dbg !4121

lookup.next:                                      ; preds = %for.body
  %24 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 %20, !dbg !4121
  store i8 %22, ptr %24, align 1, !dbg !4121
    #dbg_value(i64 %19, !4069, !DIExpression(), !4122)
  %25 = sitofp i64 %19 to double, !dbg !4123
  %26 = fsub double %16, %25, !dbg !4124
    #dbg_value(double %26, !4066, !DIExpression(), !4124)
  %27 = fmul double %26, 1.000000e+01, !dbg !4125
    #dbg_value(double %27, !4066, !DIExpression(), !4125)
  %28 = add i64 %17, 1, !dbg !4126
    #dbg_value(i64 %28, !4068, !DIExpression(), !4126)
  br label %for.loop, !dbg !4078

for.done:                                         ; preds = %for.loop
  %29 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4127
  %30 = load i8, ptr %29, align 1, !dbg !4127
  %31 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 1, !dbg !4128
  store i8 %30, ptr %31, align 1, !dbg !4128
  %32 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4129
  store i8 46, ptr %32, align 1, !dbg !4129
  %33 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 9, !dbg !4130
  store i8 101, ptr %33, align 1, !dbg !4130
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4131
  store i8 43, ptr %34, align 1, !dbg !4131
    #dbg_value(i64 %15, !4067, !DIExpression(), !4132)
  %35 = icmp slt i64 %15, 0, !dbg !4133
  br i1 %35, label %if.then8, label %if.done9, !dbg !4078

if.then8:                                         ; preds = %for.done
    #dbg_value(i64 %15, !4067, !DIExpression(), !4134)
  %36 = sub i64 0, %15, !dbg !4135
    #dbg_value(i64 %36, !4067, !DIExpression(), !4136)
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4137
  store i8 45, ptr %37, align 1, !dbg !4137
  br label %if.done9, !dbg !4078

if.done9:                                         ; preds = %if.then8, %for.done
  %38 = phi i64 [ %15, %for.done ], [ %36, %if.then8 ], !dbg !4102
    #dbg_value(i64 %38, !4067, !DIExpression(), !4138)
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !4139
  %40 = and i1 false, %39, !dbg !4139
  %41 = select i1 %40, i64 1, i64 100, !dbg !4139
  %42 = sdiv i64 %38, %41, !dbg !4139
  %43 = trunc i64 %42 to i8, !dbg !4140
  %44 = add i8 %43, 48, !dbg !4141
  %45 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 11, !dbg !4142
  store i8 %44, ptr %45, align 1, !dbg !4142
    #dbg_value(i64 %38, !4067, !DIExpression(), !4143)
  %46 = icmp eq i64 %38, -9223372036854775808, !dbg !4144
  %47 = and i1 false, %46, !dbg !4144
  %48 = select i1 %47, i64 1, i64 10, !dbg !4144
  %49 = sdiv i64 %38, %48, !dbg !4144
  %50 = trunc i64 %49 to i8, !dbg !4145
  %51 = urem i8 %50, 10, !dbg !4146
  %52 = add i8 %51, 48, !dbg !4147
  %53 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 12, !dbg !4148
  store i8 %52, ptr %53, align 1, !dbg !4148
    #dbg_value(i64 %38, !4067, !DIExpression(), !4149)
  %54 = icmp eq i64 %38, -9223372036854775808, !dbg !4150
  %55 = and i1 false, %54, !dbg !4150
  %56 = select i1 %55, i64 1, i64 10, !dbg !4150
  %57 = srem i64 %38, %56, !dbg !4150
  %58 = trunc i64 %57 to i8, !dbg !4151
  %59 = add i8 %58, 48, !dbg !4152
  %60 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 13, !dbg !4153
  store i8 %59, ptr %60, align 1, !dbg !4153
  %61 = load [14 x i8], ptr %buf, align 1, !dbg !4154
    #dbg_value([14 x i8] %61, !4070, !DIExpression(), !4154)
  br label %rangeindex.loop, !dbg !4078

rangeindex.loop:                                  ; preds = %lookup.next21, %if.done9
  %62 = phi i64 [ -1, %if.done9 ], [ %63, %lookup.next21 ], !dbg !4078
  %63 = add i64 %62, 1, !dbg !4078
  %64 = icmp slt i64 %63, 14, !dbg !4078
  br i1 %64, label %rangeindex.body, label %rangeindex.done, !dbg !4078

rangeindex.body:                                  ; preds = %rangeindex.loop
  %65 = icmp uge i64 %63, 14, !dbg !4154
  br i1 %65, label %lookup.throw20, label %lookup.next21, !dbg !4154

lookup.next21:                                    ; preds = %rangeindex.body
  call void @llvm.lifetime.start.p0(i64 14, ptr %index.alloca), !dbg !4077
  store [14 x i8] %61, ptr %index.alloca, align 1, !dbg !4077
  %index.gep = getelementptr inbounds [14 x i8], ptr %index.alloca, i32 0, i64 %63, !dbg !4077
  %index.load = load i8, ptr %index.gep, align 1, !dbg !4077
  call void @llvm.lifetime.end.p0(i64 14, ptr %index.alloca), !dbg !4077
    #dbg_value(i8 %index.load, !4071, !DIExpression(), !4155)
    #dbg_value(i8 %index.load, !4071, !DIExpression(), !4156)
  call void @runtime.putchar(i8 %index.load, ptr undef), !dbg !4157
  br label %rangeindex.loop, !dbg !4078

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret void, !dbg !4158

if.else:                                          ; preds = %switch.next6
    #dbg_value(double %v, !4066, !DIExpression(), !4159)
  %66 = fcmp olt double %v, 0.000000e+00, !dbg !4160
  br i1 %66, label %if.then10, label %for.loop11, !dbg !4078

if.then10:                                        ; preds = %if.else
    #dbg_value(double %v, !4066, !DIExpression(), !4161)
  %67 = fneg double %v, !dbg !4162
    #dbg_value(double %67, !4066, !DIExpression(), !4163)
  %68 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4164
  store i8 45, ptr %68, align 1, !dbg !4164
  br label %for.loop11, !dbg !4078

for.loop11:                                       ; preds = %for.body12, %if.then10, %if.else
  %69 = phi double [ %v, %if.else ], [ %73, %for.body12 ], [ %67, %if.then10 ], !dbg !4109
  %70 = phi i64 [ 0, %if.else ], [ %72, %for.body12 ], [ 0, %if.then10 ], !dbg !4102
    #dbg_value(double %69, !4066, !DIExpression(), !4165)
  %71 = fcmp oge double %69, 1.000000e+01, !dbg !4166
  br i1 %71, label %for.body12, label %for.loop13, !dbg !4078

for.body12:                                       ; preds = %for.loop11
  %72 = add i64 %70, 1, !dbg !4167
    #dbg_value(i64 %72, !4067, !DIExpression(), !4167)
  %73 = fdiv double %69, 1.000000e+01, !dbg !4168
    #dbg_value(double %73, !4066, !DIExpression(), !4168)
  br label %for.loop11, !dbg !4078

for.loop13:                                       ; preds = %for.body14, %for.loop11
  %74 = phi double [ %69, %for.loop11 ], [ %78, %for.body14 ], !dbg !4109
  %75 = phi i64 [ %70, %for.loop11 ], [ %77, %for.body14 ], !dbg !4102
    #dbg_value(double %74, !4066, !DIExpression(), !4169)
  %76 = fcmp olt double %74, 1.000000e+00, !dbg !4170
  br i1 %76, label %for.body14, label %for.done15, !dbg !4078

for.body14:                                       ; preds = %for.loop13
  %77 = sub i64 %75, 1, !dbg !4171
    #dbg_value(i64 %77, !4067, !DIExpression(), !4171)
  %78 = fmul double %74, 1.000000e+01, !dbg !4172
    #dbg_value(double %78, !4066, !DIExpression(), !4172)
  br label %for.loop13, !dbg !4078

for.done15:                                       ; preds = %for.loop13
    #dbg_value(double 5.000000e+00, !4072, !DIExpression(), !4173)
    #dbg_value(i64 0, !4073, !DIExpression(), !4174)
  br label %for.loop16, !dbg !4078

for.loop16:                                       ; preds = %for.body17, %for.done15
  %79 = phi double [ 5.000000e+00, %for.done15 ], [ %82, %for.body17 ], !dbg !4173
  %80 = phi i64 [ 0, %for.done15 ], [ %83, %for.body17 ], !dbg !4174
    #dbg_value(i64 %80, !4073, !DIExpression(), !4175)
  %81 = icmp slt i64 %80, 7, !dbg !4176
  br i1 %81, label %for.body17, label %for.done18, !dbg !4078

for.body17:                                       ; preds = %for.loop16
  %82 = fdiv double %79, 1.000000e+01, !dbg !4177
    #dbg_value(double %82, !4072, !DIExpression(), !4177)
  %83 = add i64 %80, 1, !dbg !4178
    #dbg_value(i64 %83, !4073, !DIExpression(), !4178)
  br label %for.loop16, !dbg !4078

for.done18:                                       ; preds = %for.loop16
    #dbg_value(double %79, !4072, !DIExpression(), !4179)
  %84 = fadd double %74, %79, !dbg !4180
    #dbg_value(double %84, !4066, !DIExpression(), !4180)
    #dbg_value(double %84, !4066, !DIExpression(), !4181)
  %85 = fcmp oge double %84, 1.000000e+01, !dbg !4182
  br i1 %85, label %if.then19, label %if.done, !dbg !4078

if.then19:                                        ; preds = %for.done18
  %86 = add i64 %75, 1, !dbg !4183
    #dbg_value(i64 %86, !4067, !DIExpression(), !4183)
  %87 = fdiv double %84, 1.000000e+01, !dbg !4184
    #dbg_value(double %87, !4066, !DIExpression(), !4184)
  br label %if.done, !dbg !4078

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4121
  unreachable, !dbg !4121

lookup.throw20:                                   ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4154
  unreachable, !dbg !4154
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printcomplex64(float %c.r, float %c.i, ptr %context) unnamed_addr #1 !dbg !4185 {
entry:
  %0 = insertvalue { float, float } zeroinitializer, float %c.r, 0, !dbg !4190
  %1 = insertvalue { float, float } %0, float %c.i, 1, !dbg !4190
    #dbg_value(float %c.r, !4189, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4190)
    #dbg_value(float %c.i, !4189, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4190)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4191
    #dbg_value({ float, float } %1, !4189, !DIExpression(), !4192)
  %real = extractvalue { float, float } %1, 0, !dbg !4193
  call void @runtime.printfloat32(float %real, ptr undef), !dbg !4194
    #dbg_value({ float, float } %1, !4189, !DIExpression(), !4195)
  %imag = extractvalue { float, float } %1, 1, !dbg !4196
  call void @runtime.printfloat32(float %imag, ptr undef), !dbg !4197
  call void @runtime.printstring(ptr @"runtime$string.41", i64 2, ptr undef), !dbg !4198
  ret void, !dbg !4199
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printcomplex128(double %c.r, double %c.i, ptr %context) unnamed_addr #1 !dbg !4200 {
entry:
  %0 = insertvalue { double, double } zeroinitializer, double %c.r, 0, !dbg !4205
  %1 = insertvalue { double, double } %0, double %c.i, 1, !dbg !4205
    #dbg_value(double %c.r, !4204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4205)
    #dbg_value(double %c.i, !4204, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4205)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4206
    #dbg_value({ double, double } %1, !4204, !DIExpression(), !4207)
  %real = extractvalue { double, double } %1, 0, !dbg !4208
  call void @runtime.printfloat64(double %real, ptr undef), !dbg !4209
    #dbg_value({ double, double } %1, !4204, !DIExpression(), !4210)
  %imag = extractvalue { double, double } %1, 1, !dbg !4211
  call void @runtime.printfloat64(double %imag, ptr undef), !dbg !4212
  call void @runtime.printstring(ptr @"runtime$string.42", i64 2, ptr undef), !dbg !4213
  ret void, !dbg !4214
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
define internal void @runtime._panic(ptr %message.typecode, ptr %message.value, ptr %context) #1 !dbg !4215 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %message.typecode, 0, !dbg !4218
  %1 = insertvalue { ptr, ptr } %0, ptr %message.value, 1, !dbg !4218
    #dbg_value(ptr %message.typecode, !4217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4218)
    #dbg_value(ptr %message.value, !4217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4218)
    #dbg_value({ ptr, ptr } %1, !4217, !DIExpression(), !4219)
  %2 = extractvalue { ptr, ptr } %1, 0, !dbg !4220
  %3 = extractvalue { ptr, ptr } %1, 1, !dbg !4220
  call void @runtime.panicOrGoexit(ptr %2, ptr %3, i8 1, ptr undef), !dbg !4220
  ret void, !dbg !4221
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @runtime.stringEqual(ptr readonly %x.data, i64 %x.len, ptr readonly %y.data, i64 %y.len, ptr %context) #1 !dbg !4222 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %x.data, 0, !dbg !4230
  %1 = insertvalue %runtime._string %0, i64 %x.len, 1, !dbg !4230
    #dbg_value(ptr %x.data, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4230)
    #dbg_value(i64 %x.len, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4230)
  %2 = insertvalue %runtime._string zeroinitializer, ptr %y.data, 0, !dbg !4230
  %3 = insertvalue %runtime._string %2, i64 %y.len, 1, !dbg !4230
    #dbg_value(ptr %y.data, !4228, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4230)
    #dbg_value(i64 %y.len, !4228, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4230)
    #dbg_value(%runtime._string %1, !4227, !DIExpression(), !4231)
  %len = extractvalue %runtime._string %1, 1, !dbg !4232
    #dbg_value(%runtime._string %3, !4228, !DIExpression(), !4233)
  %len3 = extractvalue %runtime._string %3, 1, !dbg !4234
  %4 = icmp ne i64 %len, %len3, !dbg !4235
  br i1 %4, label %if.then, label %if.done, !dbg !4236

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !4237

if.done:                                          ; preds = %entry
    #dbg_value(i64 0, !4229, !DIExpression(), !4238)
  br label %for.loop, !dbg !4236

for.loop:                                         ; preds = %if.done2, %if.done
  %5 = phi i64 [ 0, %if.done ], [ %14, %if.done2 ], !dbg !4238
    #dbg_value(i64 %5, !4229, !DIExpression(), !4239)
    #dbg_value(%runtime._string %1, !4227, !DIExpression(), !4240)
  %len4 = extractvalue %runtime._string %1, 1, !dbg !4241
  %6 = icmp slt i64 %5, %len4, !dbg !4242
  br i1 %6, label %for.body, label %for.done, !dbg !4236

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4229, !DIExpression(), !4243)
    #dbg_value(%runtime._string %1, !4227, !DIExpression(), !4244)
  %len5 = extractvalue %runtime._string %1, 1, !dbg !4245
  %7 = extractvalue %runtime._string %1, 0, !dbg !4245
  %8 = getelementptr inbounds i8, ptr %7, i64 %5, !dbg !4245
  %9 = load i8, ptr %8, align 1, !dbg !4245
    #dbg_value(i64 %5, !4229, !DIExpression(), !4246)
    #dbg_value(%runtime._string %3, !4228, !DIExpression(), !4247)
  %len6 = extractvalue %runtime._string %3, 1, !dbg !4248
  %10 = extractvalue %runtime._string %3, 0, !dbg !4248
  %11 = getelementptr inbounds i8, ptr %10, i64 %5, !dbg !4248
  %12 = load i8, ptr %11, align 1, !dbg !4248
  %13 = icmp ne i8 %9, %12, !dbg !4249
  br i1 %13, label %if.then1, label %if.done2, !dbg !4236

if.then1:                                         ; preds = %for.body
  ret i1 false, !dbg !4250

if.done2:                                         ; preds = %for.body
  %14 = add i64 %5, 1, !dbg !4251
    #dbg_value(i64 %14, !4229, !DIExpression(), !4251)
  br label %for.loop, !dbg !4236

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4252
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.slicePanic(ptr %context) #1 !dbg !4253 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4254
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.20", i64 18, ptr undef), !dbg !4255
  ret void, !dbg !4256
}

; Function Attrs: nounwind uwtable(sync)
define double @fminimum(double %x, double %y) #1 !dbg !4257 {
entry:
    #dbg_value(double %x, !4261, !DIExpression(), !4263)
    #dbg_value(double %y, !4262, !DIExpression(), !4263)
    #dbg_value(double %x, !4261, !DIExpression(), !4264)
    #dbg_value(double %y, !4262, !DIExpression(), !4265)
  %0 = call double @runtime.minimumFloat64(double %x, double %y, ptr undef), !dbg !4266
  ret double %0, !dbg !4267
}

; Function Attrs: nounwind uwtable(sync)
define internal double @runtime.minimumFloat64(double %x, double %y, ptr %context) unnamed_addr #1 !dbg !4268 {
entry:
    #dbg_value(double %x, !4270, !DIExpression(), !4272)
    #dbg_value(double %y, !4271, !DIExpression(), !4272)
    #dbg_value(double %x, !4270, !DIExpression(), !4273)
    #dbg_value(double %y, !4271, !DIExpression(), !4274)
  %0 = call double @"runtime.minimumFloat[float64 int64]"(double %x, double %y, i64 9218868437227405313, i64 9223372036854775807, ptr undef), !dbg !4275
  ret double %0, !dbg !4276
}

; Function Attrs: nounwind uwtable(sync)
define internal double @"runtime.minimumFloat[float64 int64]"(double %x, double %y, i64 %minPosNaN, i64 %magMask, ptr %context) unnamed_addr #1 !dbg !4277 {
entry:
    #dbg_value(double %x, !4281, !DIExpression(), !4287)
    #dbg_value(double %y, !4282, !DIExpression(), !4287)
    #dbg_value(i64 %minPosNaN, !4283, !DIExpression(), !4287)
    #dbg_value(i64 %magMask, !4284, !DIExpression(), !4287)
  %x6 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4288
  store double %x, ptr %x6, align 8, !dbg !4288
  %y7 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4289
  store double %y, ptr %y7, align 8, !dbg !4289
  %0 = load i64, ptr %x6, align 8, !dbg !4290
    #dbg_value(i64 %0, !4285, !DIExpression(), !4291)
  %1 = load i64, ptr %y7, align 8, !dbg !4292
    #dbg_value(i64 %1, !4286, !DIExpression(), !4293)
    #dbg_value(i64 %0, !4285, !DIExpression(), !4294)
    #dbg_value(i64 %minPosNaN, !4283, !DIExpression(), !4295)
  %2 = icmp sge i64 %0, %minPosNaN, !dbg !4296
  br i1 %2, label %switch.body, label %switch.next, !dbg !4297

switch.body:                                      ; preds = %entry
  %3 = load double, ptr %x6, align 8, !dbg !4298
    #dbg_value(double %3, !4281, !DIExpression(), !4298)
  ret double %3, !dbg !4299

switch.next:                                      ; preds = %entry
    #dbg_value(i64 %1, !4286, !DIExpression(), !4300)
    #dbg_value(i64 %minPosNaN, !4283, !DIExpression(), !4301)
  %4 = icmp sge i64 %1, %minPosNaN, !dbg !4302
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4297

switch.body1:                                     ; preds = %switch.next
  %5 = load double, ptr %y7, align 8, !dbg !4303
    #dbg_value(double %5, !4282, !DIExpression(), !4303)
  ret double %5, !dbg !4304

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i64 %0, !4285, !DIExpression(), !4305)
  %6 = icmp slt i64 %0, 0, !dbg !4306
  br i1 %6, label %if.then, label %if.done, !dbg !4297

if.then:                                          ; preds = %switch.next2
    #dbg_value(i64 %magMask, !4284, !DIExpression(), !4307)
  %7 = xor i64 %0, %magMask, !dbg !4308
    #dbg_value(i64 %7, !4285, !DIExpression(), !4308)
  br label %if.done, !dbg !4297

if.done:                                          ; preds = %if.then, %switch.next2
  %8 = phi i64 [ %0, %switch.next2 ], [ %7, %if.then ], !dbg !4291
    #dbg_value(i64 %1, !4286, !DIExpression(), !4309)
  %9 = icmp slt i64 %1, 0, !dbg !4310
  br i1 %9, label %if.then3, label %if.done4, !dbg !4297

if.then3:                                         ; preds = %if.done
    #dbg_value(i64 %magMask, !4284, !DIExpression(), !4311)
  %10 = xor i64 %1, %magMask, !dbg !4312
    #dbg_value(i64 %10, !4286, !DIExpression(), !4312)
  br label %if.done4, !dbg !4297

if.done4:                                         ; preds = %if.then3, %if.done
  %11 = phi i64 [ %1, %if.done ], [ %10, %if.then3 ], !dbg !4293
    #dbg_value(i64 %8, !4285, !DIExpression(), !4313)
    #dbg_value(i64 %11, !4286, !DIExpression(), !4314)
  %12 = icmp sle i64 %8, %11, !dbg !4315
  br i1 %12, label %if.then5, label %if.else, !dbg !4297

if.then5:                                         ; preds = %if.done4
  %13 = load double, ptr %x6, align 8, !dbg !4316
    #dbg_value(double %13, !4281, !DIExpression(), !4316)
  ret double %13, !dbg !4317

if.else:                                          ; preds = %if.done4
  %14 = load double, ptr %y7, align 8, !dbg !4318
    #dbg_value(double %14, !4282, !DIExpression(), !4318)
  ret double %14, !dbg !4319
}

; Function Attrs: nounwind uwtable(sync)
define float @fminimumf(float %x, float %y) #1 !dbg !4320 {
entry:
    #dbg_value(float %x, !4324, !DIExpression(), !4326)
    #dbg_value(float %y, !4325, !DIExpression(), !4326)
    #dbg_value(float %x, !4324, !DIExpression(), !4327)
    #dbg_value(float %y, !4325, !DIExpression(), !4328)
  %0 = call float @runtime.minimumFloat32(float %x, float %y, ptr undef), !dbg !4329
  ret float %0, !dbg !4330
}

; Function Attrs: nounwind uwtable(sync)
define internal float @runtime.minimumFloat32(float %x, float %y, ptr %context) unnamed_addr #1 !dbg !4331 {
entry:
    #dbg_value(float %x, !4333, !DIExpression(), !4335)
    #dbg_value(float %y, !4334, !DIExpression(), !4335)
    #dbg_value(float %x, !4333, !DIExpression(), !4336)
    #dbg_value(float %y, !4334, !DIExpression(), !4337)
  %0 = call float @"runtime.minimumFloat[float32 int32]"(float %x, float %y, i32 2139095041, i32 2147483647, ptr undef), !dbg !4338
  ret float %0, !dbg !4339
}

; Function Attrs: nounwind uwtable(sync)
define internal float @"runtime.minimumFloat[float32 int32]"(float %x, float %y, i32 %minPosNaN, i32 %magMask, ptr %context) unnamed_addr #1 !dbg !4340 {
entry:
    #dbg_value(float %x, !4344, !DIExpression(), !4350)
    #dbg_value(float %y, !4345, !DIExpression(), !4350)
    #dbg_value(i32 %minPosNaN, !4346, !DIExpression(), !4350)
    #dbg_value(i32 %magMask, !4347, !DIExpression(), !4350)
  %x6 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4351
  store float %x, ptr %x6, align 4, !dbg !4351
  %y7 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4352
  store float %y, ptr %y7, align 4, !dbg !4352
  %0 = load i32, ptr %x6, align 4, !dbg !4353
    #dbg_value(i32 %0, !4348, !DIExpression(), !4354)
  %1 = load i32, ptr %y7, align 4, !dbg !4355
    #dbg_value(i32 %1, !4349, !DIExpression(), !4356)
    #dbg_value(i32 %0, !4348, !DIExpression(), !4357)
    #dbg_value(i32 %minPosNaN, !4346, !DIExpression(), !4358)
  %2 = icmp sge i32 %0, %minPosNaN, !dbg !4359
  br i1 %2, label %switch.body, label %switch.next, !dbg !4360

switch.body:                                      ; preds = %entry
  %3 = load float, ptr %x6, align 4, !dbg !4361
    #dbg_value(float %3, !4344, !DIExpression(), !4361)
  ret float %3, !dbg !4362

switch.next:                                      ; preds = %entry
    #dbg_value(i32 %1, !4349, !DIExpression(), !4363)
    #dbg_value(i32 %minPosNaN, !4346, !DIExpression(), !4364)
  %4 = icmp sge i32 %1, %minPosNaN, !dbg !4365
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4360

switch.body1:                                     ; preds = %switch.next
  %5 = load float, ptr %y7, align 4, !dbg !4366
    #dbg_value(float %5, !4345, !DIExpression(), !4366)
  ret float %5, !dbg !4367

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i32 %0, !4348, !DIExpression(), !4368)
  %6 = icmp slt i32 %0, 0, !dbg !4369
  br i1 %6, label %if.then, label %if.done, !dbg !4360

if.then:                                          ; preds = %switch.next2
    #dbg_value(i32 %magMask, !4347, !DIExpression(), !4370)
  %7 = xor i32 %0, %magMask, !dbg !4371
    #dbg_value(i32 %7, !4348, !DIExpression(), !4371)
  br label %if.done, !dbg !4360

if.done:                                          ; preds = %if.then, %switch.next2
  %8 = phi i32 [ %0, %switch.next2 ], [ %7, %if.then ], !dbg !4354
    #dbg_value(i32 %1, !4349, !DIExpression(), !4372)
  %9 = icmp slt i32 %1, 0, !dbg !4373
  br i1 %9, label %if.then3, label %if.done4, !dbg !4360

if.then3:                                         ; preds = %if.done
    #dbg_value(i32 %magMask, !4347, !DIExpression(), !4374)
  %10 = xor i32 %1, %magMask, !dbg !4375
    #dbg_value(i32 %10, !4349, !DIExpression(), !4375)
  br label %if.done4, !dbg !4360

if.done4:                                         ; preds = %if.then3, %if.done
  %11 = phi i32 [ %1, %if.done ], [ %10, %if.then3 ], !dbg !4356
    #dbg_value(i32 %8, !4348, !DIExpression(), !4376)
    #dbg_value(i32 %11, !4349, !DIExpression(), !4377)
  %12 = icmp sle i32 %8, %11, !dbg !4378
  br i1 %12, label %if.then5, label %if.else, !dbg !4360

if.then5:                                         ; preds = %if.done4
  %13 = load float, ptr %x6, align 4, !dbg !4379
    #dbg_value(float %13, !4344, !DIExpression(), !4379)
  ret float %13, !dbg !4380

if.else:                                          ; preds = %if.done4
  %14 = load float, ptr %y7, align 4, !dbg !4381
    #dbg_value(float %14, !4345, !DIExpression(), !4381)
  ret float %14, !dbg !4382
}

; Function Attrs: nounwind uwtable(sync)
define double @fmaximum(double %x, double %y) #1 !dbg !4383 {
entry:
    #dbg_value(double %x, !4385, !DIExpression(), !4387)
    #dbg_value(double %y, !4386, !DIExpression(), !4387)
    #dbg_value(double %x, !4385, !DIExpression(), !4388)
    #dbg_value(double %y, !4386, !DIExpression(), !4389)
  %0 = call double @runtime.maximumFloat64(double %x, double %y, ptr undef), !dbg !4390
  ret double %0, !dbg !4391
}

; Function Attrs: nounwind uwtable(sync)
define internal double @runtime.maximumFloat64(double %x, double %y, ptr %context) unnamed_addr #1 !dbg !4392 {
entry:
    #dbg_value(double %x, !4394, !DIExpression(), !4396)
    #dbg_value(double %y, !4395, !DIExpression(), !4396)
    #dbg_value(double %x, !4394, !DIExpression(), !4397)
    #dbg_value(double %y, !4395, !DIExpression(), !4398)
  %0 = call double @"runtime.maximumFloat[float64 int64]"(double %x, double %y, i64 9218868437227405313, i64 9223372036854775807, ptr undef), !dbg !4399
  ret double %0, !dbg !4400
}

; Function Attrs: nounwind uwtable(sync)
define internal double @"runtime.maximumFloat[float64 int64]"(double %x, double %y, i64 %minPosNaN, i64 %magMask, ptr %context) unnamed_addr #1 !dbg !4401 {
entry:
    #dbg_value(double %x, !4403, !DIExpression(), !4410)
    #dbg_value(double %y, !4404, !DIExpression(), !4410)
    #dbg_value(i64 %minPosNaN, !4405, !DIExpression(), !4410)
    #dbg_value(i64 %magMask, !4406, !DIExpression(), !4410)
  %x6 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4411
  store double %x, ptr %x6, align 8, !dbg !4411
  %y7 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4412
  store double %y, ptr %y7, align 8, !dbg !4412
  %0 = load i64, ptr %x6, align 8, !dbg !4413
    #dbg_value(i64 %0, !4407, !DIExpression(), !4414)
  %1 = load i64, ptr %y7, align 8, !dbg !4415
    #dbg_value(i64 %1, !4408, !DIExpression(), !4416)
    #dbg_value(i64 %0, !4407, !DIExpression(), !4417)
  %2 = icmp slt i64 %0, 0, !dbg !4418
  br i1 %2, label %if.then, label %if.done, !dbg !4419

if.then:                                          ; preds = %entry
    #dbg_value(i64 %magMask, !4406, !DIExpression(), !4420)
  %3 = xor i64 %0, %magMask, !dbg !4421
    #dbg_value(i64 %3, !4407, !DIExpression(), !4421)
  br label %if.done, !dbg !4419

if.done:                                          ; preds = %if.then, %entry
  %4 = phi i64 [ %0, %entry ], [ %3, %if.then ], !dbg !4414
    #dbg_value(i64 %1, !4408, !DIExpression(), !4422)
  %5 = icmp slt i64 %1, 0, !dbg !4423
  br i1 %5, label %if.then1, label %if.done2, !dbg !4419

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %magMask, !4406, !DIExpression(), !4424)
  %6 = xor i64 %1, %magMask, !dbg !4425
    #dbg_value(i64 %6, !4408, !DIExpression(), !4425)
  br label %if.done2, !dbg !4419

if.done2:                                         ; preds = %if.then1, %if.done
  %7 = phi i64 [ %1, %if.done ], [ %6, %if.then1 ], !dbg !4416
    #dbg_value(i64 %minPosNaN, !4405, !DIExpression(), !4426)
  %8 = xor i64 %minPosNaN, -1, !dbg !4427
    #dbg_value(i64 %8, !4409, !DIExpression(), !4428)
    #dbg_value(i64 %4, !4407, !DIExpression(), !4429)
    #dbg_value(i64 %8, !4409, !DIExpression(), !4430)
  %9 = icmp sle i64 %4, %8, !dbg !4431
  br i1 %9, label %switch.body, label %switch.next, !dbg !4419

switch.body:                                      ; preds = %if.done2
  %10 = load double, ptr %x6, align 8, !dbg !4432
    #dbg_value(double %10, !4403, !DIExpression(), !4432)
  ret double %10, !dbg !4433

switch.next:                                      ; preds = %if.done2
    #dbg_value(i64 %7, !4408, !DIExpression(), !4434)
    #dbg_value(i64 %8, !4409, !DIExpression(), !4435)
  %11 = icmp sle i64 %7, %8, !dbg !4436
  br i1 %11, label %switch.body3, label %switch.next4, !dbg !4419

switch.body3:                                     ; preds = %switch.next
  %12 = load double, ptr %y7, align 8, !dbg !4437
    #dbg_value(double %12, !4404, !DIExpression(), !4437)
  ret double %12, !dbg !4438

switch.next4:                                     ; preds = %switch.next
    #dbg_value(i64 %4, !4407, !DIExpression(), !4439)
    #dbg_value(i64 %7, !4408, !DIExpression(), !4440)
  %13 = icmp sge i64 %4, %7, !dbg !4441
  br i1 %13, label %if.then5, label %if.else, !dbg !4419

if.then5:                                         ; preds = %switch.next4
  %14 = load double, ptr %x6, align 8, !dbg !4442
    #dbg_value(double %14, !4403, !DIExpression(), !4442)
  ret double %14, !dbg !4443

if.else:                                          ; preds = %switch.next4
  %15 = load double, ptr %y7, align 8, !dbg !4444
    #dbg_value(double %15, !4404, !DIExpression(), !4444)
  ret double %15, !dbg !4445
}

; Function Attrs: nounwind uwtable(sync)
define float @fmaximumf(float %x, float %y) #1 !dbg !4446 {
entry:
    #dbg_value(float %x, !4448, !DIExpression(), !4450)
    #dbg_value(float %y, !4449, !DIExpression(), !4450)
    #dbg_value(float %x, !4448, !DIExpression(), !4451)
    #dbg_value(float %y, !4449, !DIExpression(), !4452)
  %0 = call float @runtime.maximumFloat32(float %x, float %y, ptr undef), !dbg !4453
  ret float %0, !dbg !4454
}

; Function Attrs: nounwind uwtable(sync)
define internal float @runtime.maximumFloat32(float %x, float %y, ptr %context) unnamed_addr #1 !dbg !4455 {
entry:
    #dbg_value(float %x, !4457, !DIExpression(), !4459)
    #dbg_value(float %y, !4458, !DIExpression(), !4459)
    #dbg_value(float %x, !4457, !DIExpression(), !4460)
    #dbg_value(float %y, !4458, !DIExpression(), !4461)
  %0 = call float @"runtime.maximumFloat[float32 int32]"(float %x, float %y, i32 2139095041, i32 2147483647, ptr undef), !dbg !4462
  ret float %0, !dbg !4463
}

; Function Attrs: nounwind uwtable(sync)
define internal float @"runtime.maximumFloat[float32 int32]"(float %x, float %y, i32 %minPosNaN, i32 %magMask, ptr %context) unnamed_addr #1 !dbg !4464 {
entry:
    #dbg_value(float %x, !4466, !DIExpression(), !4473)
    #dbg_value(float %y, !4467, !DIExpression(), !4473)
    #dbg_value(i32 %minPosNaN, !4468, !DIExpression(), !4473)
    #dbg_value(i32 %magMask, !4469, !DIExpression(), !4473)
  %x6 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4474
  store float %x, ptr %x6, align 4, !dbg !4474
  %y7 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4475
  store float %y, ptr %y7, align 4, !dbg !4475
  %0 = load i32, ptr %x6, align 4, !dbg !4476
    #dbg_value(i32 %0, !4470, !DIExpression(), !4477)
  %1 = load i32, ptr %y7, align 4, !dbg !4478
    #dbg_value(i32 %1, !4471, !DIExpression(), !4479)
    #dbg_value(i32 %0, !4470, !DIExpression(), !4480)
  %2 = icmp slt i32 %0, 0, !dbg !4481
  br i1 %2, label %if.then, label %if.done, !dbg !4482

if.then:                                          ; preds = %entry
    #dbg_value(i32 %magMask, !4469, !DIExpression(), !4483)
  %3 = xor i32 %0, %magMask, !dbg !4484
    #dbg_value(i32 %3, !4470, !DIExpression(), !4484)
  br label %if.done, !dbg !4482

if.done:                                          ; preds = %if.then, %entry
  %4 = phi i32 [ %0, %entry ], [ %3, %if.then ], !dbg !4477
    #dbg_value(i32 %1, !4471, !DIExpression(), !4485)
  %5 = icmp slt i32 %1, 0, !dbg !4486
  br i1 %5, label %if.then1, label %if.done2, !dbg !4482

if.then1:                                         ; preds = %if.done
    #dbg_value(i32 %magMask, !4469, !DIExpression(), !4487)
  %6 = xor i32 %1, %magMask, !dbg !4488
    #dbg_value(i32 %6, !4471, !DIExpression(), !4488)
  br label %if.done2, !dbg !4482

if.done2:                                         ; preds = %if.then1, %if.done
  %7 = phi i32 [ %1, %if.done ], [ %6, %if.then1 ], !dbg !4479
    #dbg_value(i32 %minPosNaN, !4468, !DIExpression(), !4489)
  %8 = xor i32 %minPosNaN, -1, !dbg !4490
    #dbg_value(i32 %8, !4472, !DIExpression(), !4491)
    #dbg_value(i32 %4, !4470, !DIExpression(), !4492)
    #dbg_value(i32 %8, !4472, !DIExpression(), !4493)
  %9 = icmp sle i32 %4, %8, !dbg !4494
  br i1 %9, label %switch.body, label %switch.next, !dbg !4482

switch.body:                                      ; preds = %if.done2
  %10 = load float, ptr %x6, align 4, !dbg !4495
    #dbg_value(float %10, !4466, !DIExpression(), !4495)
  ret float %10, !dbg !4496

switch.next:                                      ; preds = %if.done2
    #dbg_value(i32 %7, !4471, !DIExpression(), !4497)
    #dbg_value(i32 %8, !4472, !DIExpression(), !4498)
  %11 = icmp sle i32 %7, %8, !dbg !4499
  br i1 %11, label %switch.body3, label %switch.next4, !dbg !4482

switch.body3:                                     ; preds = %switch.next
  %12 = load float, ptr %y7, align 4, !dbg !4500
    #dbg_value(float %12, !4467, !DIExpression(), !4500)
  ret float %12, !dbg !4501

switch.next4:                                     ; preds = %switch.next
    #dbg_value(i32 %4, !4470, !DIExpression(), !4502)
    #dbg_value(i32 %7, !4471, !DIExpression(), !4503)
  %13 = icmp sge i32 %4, %7, !dbg !4504
  br i1 %13, label %if.then5, label %if.else, !dbg !4482

if.then5:                                         ; preds = %switch.next4
  %14 = load float, ptr %x6, align 4, !dbg !4505
    #dbg_value(float %14, !4466, !DIExpression(), !4505)
  ret float %14, !dbg !4506

if.else:                                          ; preds = %switch.next4
  %15 = load float, ptr %y7, align 4, !dbg !4507
    #dbg_value(float %15, !4467, !DIExpression(), !4507)
  ret float %15, !dbg !4508
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.initHeap(ptr %context) unnamed_addr #1 !dbg !4509 {
entry:
  call void @GC_init(), !dbg !4510
  call void @tinygo_runtime_bdwgc_init(), !dbg !4511
  ret void, !dbg !4512
}

declare void @GC_init() #2

declare void @tinygo_runtime_bdwgc_init() #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_runtime_bdwgc_callback() #1 !dbg !4513 {
entry:
  call void @runtime.gcMarkReachable(ptr undef), !dbg !4514
  ret void, !dbg !4515
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.gcMarkReachable(ptr %context) unnamed_addr #1 !dbg !4516 {
entry:
  call void @"internal/task.GCStopWorldAndScan"(ptr undef), !dbg !4517
  ret void, !dbg !4518
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.markRoots(i64 %start, i64 %end, ptr %context) #1 !dbg !4519 {
entry:
    #dbg_value(i64 %start, !4523, !DIExpression(), !4525)
    #dbg_value(i64 %end, !4524, !DIExpression(), !4525)
    #dbg_value(i64 %start, !4523, !DIExpression(), !4526)
    #dbg_value(i64 %end, !4524, !DIExpression(), !4527)
  call void @GC_push_all(i64 %start, i64 %end), !dbg !4528
  ret void, !dbg !4529
}

declare void @GC_push_all(i64, i64) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.free(ptr %ptr, ptr %context) unnamed_addr #1 !dbg !4530 {
entry:
    #dbg_value(ptr %ptr, !4532, !DIExpression(), !4533)
    #dbg_value(ptr %ptr, !4532, !DIExpression(), !4534)
  call void @GC_free(ptr %ptr), !dbg !4535
  ret void, !dbg !4536
}

declare void @GC_free(ptr nocapture) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.gcScanGlobals"(ptr %context) #1 !dbg !4537 {
entry:
  call void @runtime.findGlobals(ptr undef, ptr @runtime.markRoots, ptr undef), !dbg !4538
  ret void, !dbg !4539
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.findGlobals(ptr %found.context, ptr %found.funcptr, ptr %context) unnamed_addr #1 !dbg !4540 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %found.context, 0, !dbg !4571
  %1 = insertvalue { ptr, ptr } %0, ptr %found.funcptr, 1, !dbg !4571
    #dbg_value(ptr %found.context, !4544, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4571)
    #dbg_value(ptr %found.funcptr, !4544, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4571)
  %2 = load i64, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 11), align 8, !dbg !4572
  %3 = add i64 ptrtoint (ptr @__ehdr_start to i64), %2, !dbg !4573
  %4 = inttoptr i64 %3 to ptr, !dbg !4574
    #dbg_value(ptr %4, !4545, !DIExpression(), !4575)
    #dbg_value(i64 0, !4546, !DIExpression(), !4576)
  br label %for.loop, !dbg !4577

for.loop:                                         ; preds = %if.done, %entry
  %5 = phi ptr [ %4, %entry ], [ %30, %if.done ], !dbg !4575
  %6 = phi i64 [ 0, %entry ], [ %31, %if.done ], !dbg !4576
    #dbg_value(i64 %6, !4546, !DIExpression(), !4578)
  %7 = load i16, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 16), align 2, !dbg !4579
  %8 = zext i16 %7 to i64, !dbg !4580
  %9 = icmp slt i64 %6, %8, !dbg !4581
  br i1 %9, label %for.body, label %for.done, !dbg !4577

for.body:                                         ; preds = %for.loop
  br i1 true, label %if.then, label %if.else, !dbg !4577

if.then:                                          ; preds = %for.body
    #dbg_value(ptr %5, !4545, !DIExpression(), !4582)
    #dbg_value(ptr %5, !4547, !DIExpression(), !4583)
    #dbg_value(ptr %5, !4547, !DIExpression(), !4584)
  %10 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 0, !dbg !4585
  %11 = icmp eq ptr %10, null, !dbg !4585
  br i1 %11, label %deref.throw, label %deref.next, !dbg !4585

deref.next:                                       ; preds = %if.then
  %12 = load i32, ptr %10, align 4, !dbg !4585
  %13 = icmp eq i32 %12, 1, !dbg !4586
  br i1 %13, label %cond.true, label %if.done, !dbg !4577

cond.true:                                        ; preds = %deref.next
    #dbg_value(ptr %5, !4547, !DIExpression(), !4587)
  %14 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 1, !dbg !4588
  %15 = icmp eq ptr %14, null, !dbg !4588
  br i1 %15, label %deref.throw4, label %deref.next5, !dbg !4588

deref.next5:                                      ; preds = %cond.true
  %16 = load i32, ptr %14, align 4, !dbg !4588
  %17 = and i32 %16, 2, !dbg !4589
  %18 = icmp ne i32 %17, 0, !dbg !4590
  br i1 %18, label %if.then1, label %if.done, !dbg !4577

if.then1:                                         ; preds = %deref.next5
    #dbg_value(ptr %5, !4547, !DIExpression(), !4591)
  %19 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 3, !dbg !4592
  %20 = icmp eq ptr %19, null, !dbg !4592
  br i1 %20, label %deref.throw6, label %deref.next7, !dbg !4592

deref.next7:                                      ; preds = %if.then1
  %21 = load i64, ptr %19, align 8, !dbg !4592
    #dbg_value(i64 %21, !4560, !DIExpression(), !4593)
    #dbg_value(i64 %21, !4560, !DIExpression(), !4594)
    #dbg_value(ptr %5, !4547, !DIExpression(), !4595)
  %22 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 6, !dbg !4596
  %23 = icmp eq ptr %22, null, !dbg !4596
  br i1 %23, label %deref.throw8, label %deref.next9, !dbg !4596

deref.next9:                                      ; preds = %deref.next7
  %24 = load i64, ptr %22, align 8, !dbg !4596
  %25 = add i64 %21, %24, !dbg !4597
    #dbg_value(i64 %25, !4561, !DIExpression(), !4598)
    #dbg_value({ ptr, ptr } %1, !4544, !DIExpression(), !4599)
    #dbg_value(i64 %21, !4560, !DIExpression(), !4600)
    #dbg_value(i64 %25, !4561, !DIExpression(), !4601)
  %26 = extractvalue { ptr, ptr } %1, 0, !dbg !4602
  %27 = extractvalue { ptr, ptr } %1, 1, !dbg !4602
  %28 = icmp eq ptr %27, null, !dbg !4602
  br i1 %28, label %fpcall.throw, label %fpcall.next, !dbg !4602

fpcall.next:                                      ; preds = %deref.next9
  call void %27(i64 %21, i64 %25, ptr %26), !dbg !4602
  br label %if.done, !dbg !4577

if.done:                                          ; preds = %fpcall.next19, %deref.next13, %deref.next11, %fpcall.next, %deref.next5, %deref.next
    #dbg_value(ptr %5, !4545, !DIExpression(), !4603)
  %29 = load i16, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 15), align 2, !dbg !4604
  %30 = getelementptr i8, ptr %5, i16 %29, !dbg !4605
    #dbg_value(ptr %30, !4545, !DIExpression(), !4606)
  %31 = add i64 %6, 1, !dbg !4607
    #dbg_value(i64 %31, !4546, !DIExpression(), !4607)
  br label %for.loop, !dbg !4577

if.else:                                          ; preds = %for.body
    #dbg_value(ptr %5, !4545, !DIExpression(), !4608)
    #dbg_value(ptr %5, !4562, !DIExpression(), !4609)
    #dbg_value(ptr %5, !4562, !DIExpression(), !4610)
  %32 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 0, !dbg !4611
  %33 = icmp eq ptr %32, null, !dbg !4611
  br i1 %33, label %deref.throw10, label %deref.next11, !dbg !4611

deref.next11:                                     ; preds = %if.else
  %34 = load i32, ptr %32, align 4, !dbg !4611
  %35 = icmp eq i32 %34, 1, !dbg !4612
  br i1 %35, label %cond.true2, label %if.done, !dbg !4577

cond.true2:                                       ; preds = %deref.next11
    #dbg_value(ptr %5, !4562, !DIExpression(), !4613)
  %36 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 6, !dbg !4614
  %37 = icmp eq ptr %36, null, !dbg !4614
  br i1 %37, label %deref.throw12, label %deref.next13, !dbg !4614

deref.next13:                                     ; preds = %cond.true2
  %38 = load i32, ptr %36, align 4, !dbg !4614
  %39 = and i32 %38, 2, !dbg !4615
  %40 = icmp ne i32 %39, 0, !dbg !4616
  br i1 %40, label %if.then3, label %if.done, !dbg !4577

if.then3:                                         ; preds = %deref.next13
    #dbg_value(ptr %5, !4562, !DIExpression(), !4617)
  %41 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 2, !dbg !4618
  %42 = icmp eq ptr %41, null, !dbg !4618
  br i1 %42, label %deref.throw14, label %deref.next15, !dbg !4618

deref.next15:                                     ; preds = %if.then3
  %43 = load i64, ptr %41, align 8, !dbg !4618
    #dbg_value(i64 %43, !4569, !DIExpression(), !4619)
    #dbg_value(i64 %43, !4569, !DIExpression(), !4620)
    #dbg_value(ptr %5, !4562, !DIExpression(), !4621)
  %44 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 5, !dbg !4622
  %45 = icmp eq ptr %44, null, !dbg !4622
  br i1 %45, label %deref.throw16, label %deref.next17, !dbg !4622

deref.next17:                                     ; preds = %deref.next15
  %46 = load i64, ptr %44, align 8, !dbg !4622
  %47 = add i64 %43, %46, !dbg !4623
    #dbg_value(i64 %47, !4570, !DIExpression(), !4624)
    #dbg_value({ ptr, ptr } %1, !4544, !DIExpression(), !4625)
    #dbg_value(i64 %43, !4569, !DIExpression(), !4626)
    #dbg_value(i64 %47, !4570, !DIExpression(), !4627)
  %48 = extractvalue { ptr, ptr } %1, 0, !dbg !4628
  %49 = extractvalue { ptr, ptr } %1, 1, !dbg !4628
  %50 = icmp eq ptr %49, null, !dbg !4628
  br i1 %50, label %fpcall.throw18, label %fpcall.next19, !dbg !4628

fpcall.next19:                                    ; preds = %deref.next17
  call void %49(i64 %43, i64 %47, ptr %48), !dbg !4628
  br label %if.done, !dbg !4577

for.done:                                         ; preds = %for.loop
  ret void, !dbg !4629

deref.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !4585
  unreachable, !dbg !4585

deref.throw4:                                     ; preds = %cond.true
  call void @runtime.nilPanic(ptr undef), !dbg !4588
  unreachable, !dbg !4588

deref.throw6:                                     ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !4592
  unreachable, !dbg !4592

deref.throw8:                                     ; preds = %deref.next7
  call void @runtime.nilPanic(ptr undef), !dbg !4596
  unreachable, !dbg !4596

fpcall.throw:                                     ; preds = %deref.next9
  call void @runtime.nilPanic(ptr undef), !dbg !4602
  unreachable, !dbg !4602

deref.throw10:                                    ; preds = %if.else
  call void @runtime.nilPanic(ptr undef), !dbg !4611
  unreachable, !dbg !4611

deref.throw12:                                    ; preds = %cond.true2
  call void @runtime.nilPanic(ptr undef), !dbg !4614
  unreachable, !dbg !4614

deref.throw14:                                    ; preds = %if.then3
  call void @runtime.nilPanic(ptr undef), !dbg !4618
  unreachable, !dbg !4618

deref.throw16:                                    ; preds = %deref.next15
  call void @runtime.nilPanic(ptr undef), !dbg !4622
  unreachable, !dbg !4622

fpcall.throw18:                                   ; preds = %deref.next17
  call void @runtime.nilPanic(ptr undef), !dbg !4628
  unreachable, !dbg !4628
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_scanstack(i64 %sp) #1 !dbg !4630 {
entry:
    #dbg_value(i64 %sp, !4632, !DIExpression(), !4633)
    #dbg_value(i64 %sp, !4632, !DIExpression(), !4634)
  %0 = call i64 @"internal/task.StackTop"(ptr undef), !dbg !4635
  call void @runtime.markRoots(i64 %sp, i64 %0, ptr undef), !dbg !4636
  ret void, !dbg !4637
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.unsafeSlicePanic(ptr %context) #1 !dbg !4638 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4639
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.22", i64 37, ptr undef), !dbg !4640
  ret void, !dbg !4641
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.negativeShiftPanic(ptr %context) #1 !dbg !4642 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4643
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.24", i64 14, ptr undef), !dbg !4644
  ret void, !dbg !4645
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.divideByZeroPanic(ptr %context) #1 !dbg !4646 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4647
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.25", i64 14, ptr undef), !dbg !4648
  ret void, !dbg !4649
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printspace(ptr %context) #1 !dbg !4650 {
entry:
  call void @runtime.putchar(i8 32, ptr undef), !dbg !4651
  ret void, !dbg !4652
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memmove(ptr %dst, ptr %src, i64 %size, ptr %context) #1 !dbg !4653 {
entry:
    #dbg_value(ptr %dst, !4655, !DIExpression(), !4658)
    #dbg_value(ptr %src, !4656, !DIExpression(), !4658)
    #dbg_value(i64 %size, !4657, !DIExpression(), !4658)
  call void @llvm.memmove.p0.p0.i64(ptr %dst, ptr %src, i64 %size, i1 false), !dbg !4658
  ret void, !dbg !4658
}

; Function Attrs: nounwind uwtable(sync)
define i64 @main(i32 %argc, ptr nocapture dereferenceable_or_null(8) %argv) #1 !dbg !4659 {
entry:
    #dbg_value(i32 %argc, !4663, !DIExpression(), !4668)
    #dbg_value(ptr %argv, !4664, !DIExpression(), !4668)
  br i1 false, label %if.then, label %if.done, !dbg !4669

if.then:                                          ; preds = %entry
  call void @runtime.allocateHeap(ptr undef), !dbg !4670
  br label %if.done, !dbg !4669

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(i32 %argc, !4663, !DIExpression(), !4671)
  store i32 %argc, ptr @runtime.main_argc, align 4, !dbg !4672
    #dbg_value(i32 %argc, !4665, !DIExpression(), !4672)
    #dbg_value(ptr %argv, !4664, !DIExpression(), !4673)
  store ptr %argv, ptr @runtime.main_argv, align 8, !dbg !4674
    #dbg_value(ptr %argv, !4666, !DIExpression(), !4674)
  call void @tinygo_register_fatal_signals(), !dbg !4675
  %0 = call i64 @runtime.getCurrentStackPointer(ptr undef), !dbg !4676
  store i64 %0, ptr @runtime.stackTop, align 8, !dbg !4677
    #dbg_value(i64 %0, !4667, !DIExpression(), !4677)
  call void @runtime.runMain(ptr undef), !dbg !4678
  ret i64 0, !dbg !4679
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.allocateHeap(ptr %context) unnamed_addr #1 !dbg !4680 {
entry:
  store i64 1073741824, ptr @runtime.heapMaxSize, align 8, !dbg !4687
    #dbg_value(i64 1073741824, !4682, !DIExpression(), !4687)
  br label %for.body, !dbg !4688

for.body:                                         ; preds = %if.then1, %if.then, %entry
  %0 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4689
    #dbg_value(i64 %0, !4682, !DIExpression(), !4689)
  %1 = call ptr @mmap(ptr null, i64 %0, i64 3, i64 34, i64 -1, i64 0), !dbg !4690
    #dbg_value(ptr %1, !4683, !DIExpression(), !4691)
    #dbg_value(ptr %1, !4683, !DIExpression(), !4692)
  %2 = icmp eq ptr %1, inttoptr (i64 -1 to ptr), !dbg !4693
  br i1 %2, label %if.then, label %if.done, !dbg !4688

if.then:                                          ; preds = %for.body
  %3 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4694
  %4 = udiv i64 %3, 2, !dbg !4694
  store i64 %4, ptr @runtime.heapMaxSize, align 8, !dbg !4694
    #dbg_value(i64 %4, !4682, !DIExpression(), !4694)
  %5 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4695
    #dbg_value(i64 %5, !4682, !DIExpression(), !4695)
  %6 = icmp ult i64 %5, 4096, !dbg !4696
  br i1 %6, label %if.then1, label %for.body, !dbg !4688

if.then1:                                         ; preds = %if.then
  call void @runtime.runtimePanic(ptr @"runtime$string.56", i64 27, ptr undef), !dbg !4697
  br label %for.body, !dbg !4688

if.done:                                          ; preds = %for.body
    #dbg_value(ptr %1, !4683, !DIExpression(), !4698)
  %7 = ptrtoint ptr %1 to i64, !dbg !4699
  store i64 %7, ptr @runtime.heapStart, align 8, !dbg !4700
    #dbg_value(i64 %7, !4684, !DIExpression(), !4700)
  %8 = load i64, ptr @runtime.heapStart, align 8, !dbg !4701
    #dbg_value(i64 %8, !4684, !DIExpression(), !4701)
  %9 = load i64, ptr @runtime.heapSize, align 8, !dbg !4702
    #dbg_value(i64 %9, !4685, !DIExpression(), !4702)
  %10 = add i64 %8, %9, !dbg !4703
  store i64 %10, ptr @runtime.heapEnd, align 8, !dbg !4704
    #dbg_value(i64 %10, !4686, !DIExpression(), !4704)
  ret void, !dbg !4705
}

declare void @tinygo_register_fatal_signals() #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @runtime.runMain(ptr %context) unnamed_addr #15 !dbg !4706 {
entry:
  call void @runtime.run(ptr undef), !dbg !4707
  ret void, !dbg !4708
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.run(ptr %context) unnamed_addr #1 !dbg !4709 {
entry:
  call void @runtime.initRand(ptr undef), !dbg !4712
  call void @runtime.initHeap(ptr undef), !dbg !4713
  %0 = load i64, ptr @runtime.stackTop, align 8, !dbg !4714
    #dbg_value(i64 %0, !4711, !DIExpression(), !4714)
  call void @"internal/task.Init"(i64 %0, ptr undef), !dbg !4715
  call void @runtime.initAll(ptr undef), !dbg !4716
  call void @main.main(ptr undef), !dbg !4717
  ret void, !dbg !4718
}

define internal void @runtime.initAll(ptr %context) unnamed_addr #2 {
entry:
  ret void
}

declare void @main.main(ptr) #2

declare ptr @mmap(ptr nocapture, i64, i64, i64, i64, i64) #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_handle_fatal_signal(i32 %sig, i64 %addr) #1 !dbg !4719 {
entry:
    #dbg_value(i32 %sig, !4723, !DIExpression(), !4725)
    #dbg_value(i64 %addr, !4724, !DIExpression(), !4725)
  br i1 false, label %if.then, label %if.done, !dbg !4726

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !4727
  br label %if.done, !dbg !4726

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(i64 %addr, !4724, !DIExpression(), !4728)
  %0 = icmp ne i64 %addr, 0, !dbg !4729
  br i1 %0, label %if.then1, label %if.else, !dbg !4726

if.then1:                                         ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.50", i64 24, ptr undef), !dbg !4730
    #dbg_value(i64 %addr, !4724, !DIExpression(), !4731)
  call void @runtime.printptr(i64 %addr, ptr undef), !dbg !4732
  br label %if.done2, !dbg !4726

if.done2:                                         ; preds = %if.else, %if.then1
  call void @runtime.printstring(ptr @"runtime$string.51", i64 16, ptr undef), !dbg !4733
    #dbg_value(i32 %sig, !4723, !DIExpression(), !4734)
  %1 = icmp eq i32 %sig, 7, !dbg !4735
  br i1 %1, label %switch.body, label %switch.next, !dbg !4726

switch.body:                                      ; preds = %if.done2
  call void @runtime.printlock(ptr undef), !dbg !4736
  call void @runtime.printstring(ptr @"runtime$string.52", i64 6, ptr undef), !dbg !4736
  call void @runtime.printnl(ptr undef), !dbg !4736
  call void @runtime.printunlock(ptr undef), !dbg !4736
  br label %switch.done, !dbg !4726

switch.done:                                      ; preds = %switch.next6, %switch.body5, %switch.body3, %switch.body
    #dbg_value(i32 %sig, !4723, !DIExpression(), !4737)
  call void @raise(i32 %sig), !dbg !4738
  ret void, !dbg !4739

switch.next:                                      ; preds = %if.done2
  %2 = icmp eq i32 %sig, 4, !dbg !4740
  br i1 %2, label %switch.body3, label %switch.next4, !dbg !4726

switch.body3:                                     ; preds = %switch.next
  call void @runtime.printlock(ptr undef), !dbg !4741
  call void @runtime.printstring(ptr @"runtime$string.53", i64 6, ptr undef), !dbg !4741
  call void @runtime.printnl(ptr undef), !dbg !4741
  call void @runtime.printunlock(ptr undef), !dbg !4741
  br label %switch.done, !dbg !4726

switch.next4:                                     ; preds = %switch.next
  %3 = icmp eq i32 %sig, 11, !dbg !4742
  br i1 %3, label %switch.body5, label %switch.next6, !dbg !4726

switch.body5:                                     ; preds = %switch.next4
  call void @runtime.printlock(ptr undef), !dbg !4743
  call void @runtime.printstring(ptr @"runtime$string.54", i64 7, ptr undef), !dbg !4743
  call void @runtime.printnl(ptr undef), !dbg !4743
  call void @runtime.printunlock(ptr undef), !dbg !4743
  br label %switch.done, !dbg !4726

switch.next6:                                     ; preds = %switch.next4
    #dbg_value(i32 %sig, !4723, !DIExpression(), !4744)
  call void @runtime.printlock(ptr undef), !dbg !4745
  call void @runtime.printint32(i32 %sig, ptr undef), !dbg !4745
  call void @runtime.printnl(ptr undef), !dbg !4745
  call void @runtime.printunlock(ptr undef), !dbg !4745
  br label %switch.done, !dbg !4726

if.else:                                          ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.55", i64 20, ptr undef), !dbg !4746
  br label %if.done2, !dbg !4726
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printlock(ptr %context) #1 !dbg !4747 {
entry:
  call void @"(*internal/task.Mutex).Lock"(ptr @runtime.printLock, ptr undef), !dbg !4748
  ret void, !dbg !4749
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printunlock(ptr %context) #1 !dbg !4750 {
entry:
  call void @"(*internal/task.Mutex).Unlock"(ptr @runtime.printLock, ptr undef), !dbg !4751
  ret void, !dbg !4752
}

declare void @raise(i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @runtime.sliceAppend(ptr %srcBuf, ptr nocapture readonly %elemsBuf, i64 %srcLen, i64 %srcCap, i64 %elemsLen, i64 %elemSize, ptr %layout, ptr %context) #1 !dbg !4753 {
entry:
    #dbg_value(ptr %srcBuf, !4758, !DIExpression(), !4766)
    #dbg_value(ptr %elemsBuf, !4759, !DIExpression(), !4766)
    #dbg_value(i64 %srcLen, !4760, !DIExpression(), !4766)
    #dbg_value(i64 %srcCap, !4761, !DIExpression(), !4766)
    #dbg_value(i64 %elemsLen, !4762, !DIExpression(), !4766)
    #dbg_value(i64 %elemSize, !4763, !DIExpression(), !4766)
    #dbg_value(ptr %layout, !4764, !DIExpression(), !4766)
    #dbg_value(i64 %srcLen, !4760, !DIExpression(), !4767)
    #dbg_value(i64 %elemsLen, !4762, !DIExpression(), !4768)
  %0 = add i64 %srcLen, %elemsLen, !dbg !4769
    #dbg_value(i64 %0, !4765, !DIExpression(), !4770)
    #dbg_value(i64 %elemsLen, !4762, !DIExpression(), !4771)
  %1 = icmp ugt i64 %elemsLen, 0, !dbg !4772
  br i1 %1, label %if.then, label %if.done, !dbg !4773

if.then:                                          ; preds = %entry
    #dbg_value(ptr %srcBuf, !4758, !DIExpression(), !4774)
    #dbg_value(i64 %srcLen, !4760, !DIExpression(), !4775)
    #dbg_value(i64 %srcCap, !4761, !DIExpression(), !4776)
    #dbg_value(i64 %0, !4765, !DIExpression(), !4777)
    #dbg_value(i64 %elemSize, !4763, !DIExpression(), !4778)
    #dbg_value(ptr %layout, !4764, !DIExpression(), !4779)
  %2 = call { ptr, i64, i64 } @runtime.sliceGrow(ptr %srcBuf, i64 %srcLen, i64 %srcCap, i64 %0, i64 %elemSize, ptr %layout, ptr undef), !dbg !4780
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4780
    #dbg_value(ptr %3, !4758, !DIExpression(), !4781)
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4780
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4780
    #dbg_value(i64 %5, !4761, !DIExpression(), !4782)
    #dbg_value(ptr %3, !4758, !DIExpression(), !4783)
    #dbg_value(i64 %srcLen, !4760, !DIExpression(), !4784)
    #dbg_value(i64 %elemSize, !4763, !DIExpression(), !4785)
  %6 = mul i64 %srcLen, %elemSize, !dbg !4786
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !4787
    #dbg_value(ptr %elemsBuf, !4759, !DIExpression(), !4788)
    #dbg_value(i64 %elemsLen, !4762, !DIExpression(), !4789)
    #dbg_value(i64 %elemSize, !4763, !DIExpression(), !4790)
  %8 = mul i64 %elemsLen, %elemSize, !dbg !4791
  call void @runtime.memmove(ptr %7, ptr %elemsBuf, i64 %8, ptr undef), !dbg !4792
  br label %if.done, !dbg !4773

if.done:                                          ; preds = %if.then, %entry
  %9 = phi ptr [ %srcBuf, %entry ], [ %3, %if.then ], !dbg !4793
  %10 = phi i64 [ %srcCap, %entry ], [ %5, %if.then ], !dbg !4794
    #dbg_value(ptr %9, !4758, !DIExpression(), !4795)
    #dbg_value(i64 %0, !4765, !DIExpression(), !4796)
    #dbg_value(i64 %10, !4761, !DIExpression(), !4797)
  %11 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %9, 0, !dbg !4798
  %12 = insertvalue { ptr, i64, i64 } %11, i64 %0, 1, !dbg !4798
  %13 = insertvalue { ptr, i64, i64 } %12, i64 %10, 2, !dbg !4798
  ret { ptr, i64, i64 } %13, !dbg !4798
}

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @runtime.sliceGrow(ptr %oldBuf, i64 %oldLen, i64 %oldCap, i64 %newCap, i64 %elemSize, ptr %layout, ptr %context) #1 !dbg !4799 {
entry:
    #dbg_value(ptr %oldBuf, !4803, !DIExpression(), !4810)
    #dbg_value(i64 %oldLen, !4804, !DIExpression(), !4810)
    #dbg_value(i64 %oldCap, !4805, !DIExpression(), !4810)
    #dbg_value(i64 %newCap, !4806, !DIExpression(), !4810)
    #dbg_value(i64 %elemSize, !4807, !DIExpression(), !4810)
    #dbg_value(ptr %layout, !4808, !DIExpression(), !4810)
    #dbg_value(i64 %oldCap, !4805, !DIExpression(), !4811)
    #dbg_value(i64 %newCap, !4806, !DIExpression(), !4812)
  %0 = icmp uge i64 %oldCap, %newCap, !dbg !4813
  br i1 %0, label %if.then, label %if.done, !dbg !4814

if.then:                                          ; preds = %entry
    #dbg_value(ptr %oldBuf, !4803, !DIExpression(), !4815)
    #dbg_value(i64 %oldLen, !4804, !DIExpression(), !4816)
    #dbg_value(i64 %oldCap, !4805, !DIExpression(), !4817)
  %1 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %oldBuf, 0, !dbg !4818
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %oldLen, 1, !dbg !4818
  %3 = insertvalue { ptr, i64, i64 } %2, i64 %oldCap, 2, !dbg !4818
  ret { ptr, i64, i64 } %3, !dbg !4818

if.done:                                          ; preds = %entry
    #dbg_value(i64 %newCap, !4806, !DIExpression(), !4819)
  %4 = call i64 @"math/bits.Len"(i64 %newCap, ptr undef), !dbg !4820
  %5 = icmp slt i64 %4, 0, !dbg !4821
  br i1 %5, label %shift.throw, label %shift.next, !dbg !4821

shift.next:                                       ; preds = %if.done
  %shift.overflow = icmp uge i64 %4, 64, !dbg !4821
  %6 = shl i64 1, %4, !dbg !4821
  %shift.result = select i1 %shift.overflow, i64 0, i64 %6, !dbg !4821
    #dbg_value(i64 %shift.result, !4806, !DIExpression(), !4822)
    #dbg_value(i64 %shift.result, !4806, !DIExpression(), !4823)
    #dbg_value(i64 %elemSize, !4807, !DIExpression(), !4824)
  %7 = mul i64 %shift.result, %elemSize, !dbg !4825
    #dbg_value(ptr %layout, !4808, !DIExpression(), !4826)
  %8 = call ptr @runtime.alloc(i64 %7, ptr %layout, ptr undef), !dbg !4827
    #dbg_value(ptr %8, !4809, !DIExpression(), !4828)
    #dbg_value(i64 %oldLen, !4804, !DIExpression(), !4829)
  %9 = icmp ugt i64 %oldLen, 0, !dbg !4830
  br i1 %9, label %if.then1, label %if.done2, !dbg !4814

if.then1:                                         ; preds = %shift.next
    #dbg_value(ptr %8, !4809, !DIExpression(), !4831)
    #dbg_value(ptr %oldBuf, !4803, !DIExpression(), !4832)
    #dbg_value(i64 %oldLen, !4804, !DIExpression(), !4833)
    #dbg_value(i64 %elemSize, !4807, !DIExpression(), !4834)
  %10 = mul i64 %oldLen, %elemSize, !dbg !4835
  call void @runtime.memmove(ptr %8, ptr %oldBuf, i64 %10, ptr undef), !dbg !4836
  br label %if.done2, !dbg !4814

if.done2:                                         ; preds = %if.then1, %shift.next
    #dbg_value(ptr %8, !4809, !DIExpression(), !4837)
    #dbg_value(i64 %oldLen, !4804, !DIExpression(), !4838)
    #dbg_value(i64 %shift.result, !4806, !DIExpression(), !4839)
  %11 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %8, 0, !dbg !4840
  %12 = insertvalue { ptr, i64, i64 } %11, i64 %oldLen, 1, !dbg !4840
  %13 = insertvalue { ptr, i64, i64 } %12, i64 %shift.result, 2, !dbg !4840
  ret { ptr, i64, i64 } %13, !dbg !4840

shift.throw:                                      ; preds = %if.done
  call void @runtime.negativeShiftPanic(ptr undef), !dbg !4821
  unreachable, !dbg !4821
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_signal_handler(i32 %s) #1 !dbg !4841 {
entry:
    #dbg_value(i32 %s, !4843, !DIExpression(), !4847)
  br label %for.body, !dbg !4848

for.body:                                         ; preds = %for.body, %entry
    #dbg_value(i32 %s, !4843, !DIExpression(), !4849)
  %shift.overflow = icmp uge i32 %s, 32, !dbg !4850
  %0 = shl i32 1, %s, !dbg !4850
  %shift.result = select i1 %shift.overflow, i32 0, i32 %0, !dbg !4850
    #dbg_value(i32 %shift.result, !4844, !DIExpression(), !4851)
  %1 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @runtime.receivedSignals, ptr undef), !dbg !4852
    #dbg_value(i32 %1, !4845, !DIExpression(), !4853)
    #dbg_value(i32 %1, !4845, !DIExpression(), !4854)
    #dbg_value(i32 %1, !4845, !DIExpression(), !4855)
    #dbg_value(i32 %shift.result, !4844, !DIExpression(), !4856)
  %2 = or i32 %1, %shift.result, !dbg !4857
  %3 = call i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr @runtime.receivedSignals, i32 %1, i32 %2, ptr undef), !dbg !4858
    #dbg_value(i1 %3, !4846, !DIExpression(), !4859)
    #dbg_value(i1 %3, !4846, !DIExpression(), !4860)
  br i1 %3, label %if.then, label %for.body, !dbg !4848

if.then:                                          ; preds = %for.body
  %4 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr @runtime.signalFutex, i32 1, ptr undef), !dbg !4861
  %5 = icmp eq i32 %4, 0, !dbg !4862
  br i1 %5, label %if.then1, label %if.done, !dbg !4848

if.then1:                                         ; preds = %if.then
  call void @"(*internal/futex.Futex).WakeAll"(ptr @runtime.signalFutex, ptr undef), !dbg !4863
  br label %if.done, !dbg !4848

if.done:                                          ; preds = %if.then1, %if.then
  ret void, !dbg !4864
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @runtime.stringConcat(ptr dereferenceable_or_null(1) %x.ptr, i64 %x.length, ptr dereferenceable_or_null(1) %y.ptr, i64 %y.length, ptr %context) #1 !dbg !4865 {
entry:
  %complit = alloca %runtime._string, align 8, !dbg !4877
  %y = alloca %runtime._string, align 8, !dbg !4877
  %x = alloca %runtime._string, align 8, !dbg !4877
  %0 = insertvalue %runtime._string zeroinitializer, ptr %x.ptr, 0, !dbg !4877
  %1 = insertvalue %runtime._string %0, i64 %x.length, 1, !dbg !4877
    #dbg_value(ptr %x.ptr, !4873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4877)
    #dbg_value(i64 %x.length, !4873, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4877)
  %2 = insertvalue %runtime._string zeroinitializer, ptr %y.ptr, 0, !dbg !4877
  %3 = insertvalue %runtime._string %2, i64 %y.length, 1, !dbg !4877
    #dbg_value(ptr %y.ptr, !4874, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4877)
    #dbg_value(i64 %y.length, !4874, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4877)
  store %runtime._string zeroinitializer, ptr %x, align 8, !dbg !4877
  store %runtime._string %1, ptr %x, align 8, !dbg !4878
  store %runtime._string zeroinitializer, ptr %y, align 8, !dbg !4877
  store %runtime._string %3, ptr %y, align 8, !dbg !4879
  %4 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4880
  %5 = icmp eq ptr %4, null, !dbg !4880
  br i1 %5, label %deref.throw, label %deref.next, !dbg !4880

deref.next:                                       ; preds = %entry
  %6 = load i64, ptr %4, align 8, !dbg !4880
  %7 = icmp eq i64 %6, 0, !dbg !4881
  br i1 %7, label %if.then, label %if.else, !dbg !4882

if.then:                                          ; preds = %deref.next
  %8 = load %runtime._string, ptr %y, align 8, !dbg !4883
    #dbg_value(%runtime._string %8, !4874, !DIExpression(), !4883)
  ret %runtime._string %8, !dbg !4884

if.else:                                          ; preds = %deref.next
  %9 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4885
  %10 = icmp eq ptr %9, null, !dbg !4885
  br i1 %10, label %deref.throw3, label %deref.next4, !dbg !4885

deref.next4:                                      ; preds = %if.else
  %11 = load i64, ptr %9, align 8, !dbg !4885
  %12 = icmp eq i64 %11, 0, !dbg !4886
  br i1 %12, label %if.then1, label %if.else2, !dbg !4882

if.then1:                                         ; preds = %deref.next4
  %13 = load %runtime._string, ptr %x, align 8, !dbg !4887
    #dbg_value(%runtime._string %13, !4873, !DIExpression(), !4887)
  ret %runtime._string %13, !dbg !4888

if.else2:                                         ; preds = %deref.next4
  %14 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4889
  %15 = icmp eq ptr %14, null, !dbg !4889
  br i1 %15, label %deref.throw5, label %deref.next6, !dbg !4889

deref.next6:                                      ; preds = %if.else2
  %16 = load i64, ptr %14, align 8, !dbg !4889
  %17 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4890
  %18 = icmp eq ptr %17, null, !dbg !4890
  br i1 %18, label %deref.throw7, label %deref.next8, !dbg !4890

deref.next8:                                      ; preds = %deref.next6
  %19 = load i64, ptr %17, align 8, !dbg !4890
  %20 = add i64 %16, %19, !dbg !4891
    #dbg_value(i64 %20, !4875, !DIExpression(), !4892)
    #dbg_value(i64 %20, !4875, !DIExpression(), !4893)
  %21 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !4894
  %22 = call ptr @runtime.alloc(i64 %20, ptr %21, ptr undef), !dbg !4895
    #dbg_value(ptr %22, !4876, !DIExpression(), !4896)
    #dbg_value(ptr %22, !4876, !DIExpression(), !4897)
  %23 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 0, !dbg !4898
  %24 = icmp eq ptr %23, null, !dbg !4898
  br i1 %24, label %deref.throw9, label %deref.next10, !dbg !4898

deref.next10:                                     ; preds = %deref.next8
  %25 = load ptr, ptr %23, align 8, !dbg !4898
  %26 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4899
  %27 = icmp eq ptr %26, null, !dbg !4899
  br i1 %27, label %deref.throw11, label %deref.next12, !dbg !4899

deref.next12:                                     ; preds = %deref.next10
  %28 = load i64, ptr %26, align 8, !dbg !4899
  call void @runtime.memcpy(ptr %22, ptr %25, i64 %28, ptr undef), !dbg !4900
    #dbg_value(ptr %22, !4876, !DIExpression(), !4901)
  %29 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4902
  %30 = icmp eq ptr %29, null, !dbg !4902
  br i1 %30, label %deref.throw13, label %deref.next14, !dbg !4902

deref.next14:                                     ; preds = %deref.next12
  %31 = load i64, ptr %29, align 8, !dbg !4902
  %32 = getelementptr i8, ptr %22, i64 %31, !dbg !4903
  %33 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 0, !dbg !4904
  %34 = icmp eq ptr %33, null, !dbg !4904
  br i1 %34, label %deref.throw15, label %deref.next16, !dbg !4904

deref.next16:                                     ; preds = %deref.next14
  %35 = load ptr, ptr %33, align 8, !dbg !4904
  %36 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4905
  %37 = icmp eq ptr %36, null, !dbg !4905
  br i1 %37, label %deref.throw17, label %deref.next18, !dbg !4905

deref.next18:                                     ; preds = %deref.next16
  %38 = load i64, ptr %36, align 8, !dbg !4905
  call void @runtime.memcpy(ptr %32, ptr %35, i64 %38, ptr undef), !dbg !4906
  store %runtime._string zeroinitializer, ptr %complit, align 8, !dbg !4877
  %39 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !4907
    #dbg_value(ptr %22, !4876, !DIExpression(), !4908)
  %40 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !4909
    #dbg_value(i64 %20, !4875, !DIExpression(), !4910)
  %41 = icmp eq ptr %39, null, !dbg !4907
  br i1 %41, label %store.throw, label %store.next, !dbg !4907

store.next:                                       ; preds = %deref.next18
  store ptr %22, ptr %39, align 8, !dbg !4907
  %42 = icmp eq ptr %40, null, !dbg !4909
  br i1 %42, label %store.throw19, label %store.next20, !dbg !4909

store.next20:                                     ; preds = %store.next
  store i64 %20, ptr %40, align 8, !dbg !4909
    #dbg_value(i64 %20, !4875, !DIExpression(), !4910)
  %43 = load %runtime._string, ptr %complit, align 8, !dbg !4911
  ret %runtime._string %43, !dbg !4912

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !4880
  unreachable, !dbg !4880

deref.throw3:                                     ; preds = %if.else
  call void @runtime.nilPanic(ptr undef), !dbg !4885
  unreachable, !dbg !4885

deref.throw5:                                     ; preds = %if.else2
  call void @runtime.nilPanic(ptr undef), !dbg !4889
  unreachable, !dbg !4889

deref.throw7:                                     ; preds = %deref.next6
  call void @runtime.nilPanic(ptr undef), !dbg !4890
  unreachable, !dbg !4890

deref.throw9:                                     ; preds = %deref.next8
  call void @runtime.nilPanic(ptr undef), !dbg !4898
  unreachable, !dbg !4898

deref.throw11:                                    ; preds = %deref.next10
  call void @runtime.nilPanic(ptr undef), !dbg !4899
  unreachable, !dbg !4899

deref.throw13:                                    ; preds = %deref.next12
  call void @runtime.nilPanic(ptr undef), !dbg !4902
  unreachable, !dbg !4902

deref.throw15:                                    ; preds = %deref.next14
  call void @runtime.nilPanic(ptr undef), !dbg !4904
  unreachable, !dbg !4904

deref.throw17:                                    ; preds = %deref.next16
  call void @runtime.nilPanic(ptr undef), !dbg !4905
  unreachable, !dbg !4905

store.throw:                                      ; preds = %deref.next18
  call void @runtime.nilPanic(ptr undef), !dbg !4907
  unreachable, !dbg !4907

store.throw19:                                    ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !4909
  unreachable, !dbg !4909
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @runtime.stringFromBytes(ptr nocapture readonly dereferenceable_or_null(1) %x.ptr, i64 %x.len, i64 %x.cap, ptr %context) #1 !dbg !4913 {
entry:
  %complit = alloca %runtime._string, align 8, !dbg !4920
  %x = alloca { ptr, i64, i64 }, align 8, !dbg !4920
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %x.ptr, 0, !dbg !4920
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %x.len, 1, !dbg !4920
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %x.cap, 2, !dbg !4920
    #dbg_value(ptr %x.ptr, !4918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4920)
    #dbg_value(i64 %x.len, !4918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4920)
    #dbg_value(i64 %x.cap, !4918, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4920)
  store { ptr, i64, i64 } zeroinitializer, ptr %x, align 8, !dbg !4920
  store { ptr, i64, i64 } %2, ptr %x, align 8, !dbg !4921
  %3 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4922
  %4 = icmp eq ptr %3, null, !dbg !4922
  br i1 %4, label %deref.throw, label %deref.next, !dbg !4922

deref.next:                                       ; preds = %entry
  %5 = load i64, ptr %3, align 8, !dbg !4922
  %6 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !4923
  %7 = call ptr @runtime.alloc(i64 %5, ptr %6, ptr undef), !dbg !4924
    #dbg_value(ptr %7, !4919, !DIExpression(), !4925)
    #dbg_value(ptr %7, !4919, !DIExpression(), !4926)
  %8 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 0, !dbg !4927
  %9 = icmp eq ptr %8, null, !dbg !4927
  br i1 %9, label %deref.throw1, label %deref.next2, !dbg !4927

deref.next2:                                      ; preds = %deref.next
  %10 = load ptr, ptr %8, align 8, !dbg !4927
  %11 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4928
  %12 = icmp eq ptr %11, null, !dbg !4928
  br i1 %12, label %deref.throw3, label %deref.next4, !dbg !4928

deref.next4:                                      ; preds = %deref.next2
  %13 = load i64, ptr %11, align 8, !dbg !4928
  call void @runtime.memcpy(ptr %7, ptr %10, i64 %13, ptr undef), !dbg !4929
  store %runtime._string zeroinitializer, ptr %complit, align 8, !dbg !4920
  %14 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !4930
    #dbg_value(ptr %7, !4919, !DIExpression(), !4931)
  %15 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !4932
  %16 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4933
  %17 = icmp eq ptr %16, null, !dbg !4933
  br i1 %17, label %deref.throw5, label %deref.next6, !dbg !4933

deref.next6:                                      ; preds = %deref.next4
  %18 = load i64, ptr %16, align 8, !dbg !4933
  %19 = icmp eq ptr %14, null, !dbg !4930
  br i1 %19, label %store.throw, label %store.next, !dbg !4930

store.next:                                       ; preds = %deref.next6
  store ptr %7, ptr %14, align 8, !dbg !4930
  %20 = icmp eq ptr %15, null, !dbg !4932
  br i1 %20, label %store.throw7, label %store.next8, !dbg !4932

store.next8:                                      ; preds = %store.next
  store i64 %18, ptr %15, align 8, !dbg !4932
  %21 = load %runtime._string, ptr %complit, align 8, !dbg !4934
  ret %runtime._string %21, !dbg !4935

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !4922
  unreachable, !dbg !4922

deref.throw1:                                     ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !4927
  unreachable, !dbg !4927

deref.throw3:                                     ; preds = %deref.next2
  call void @runtime.nilPanic(ptr undef), !dbg !4928
  unreachable, !dbg !4928

deref.throw5:                                     ; preds = %deref.next4
  call void @runtime.nilPanic(ptr undef), !dbg !4933
  unreachable, !dbg !4933

store.throw:                                      ; preds = %deref.next6
  call void @runtime.nilPanic(ptr undef), !dbg !4930
  unreachable, !dbg !4930

store.throw7:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !4932
  unreachable, !dbg !4932
}

; Function Attrs: nounwind uwtable(sync)
define i64 @f_gold(i64 %n) #1 !dbg !4936 {
entry:
    #dbg_value(i64 %n, !4939, !DIExpression(), !4945)
    #dbg_value(i64 %n, !4939, !DIExpression(), !4946)
  %0 = icmp eq i64 %n, -9223372036854775808, !dbg !4947
  %1 = and i1 false, %0, !dbg !4947
  %2 = select i1 %1, i64 1, i64 2, !dbg !4947
  %3 = srem i64 %n, %2, !dbg !4947
  %4 = icmp ne i64 %3, 0, !dbg !4948
  br i1 %4, label %if.then, label %if.done, !dbg !4949

if.then:                                          ; preds = %entry
  ret i64 0, !dbg !4950

if.done:                                          ; preds = %entry
    #dbg_value(i64 1, !4940, !DIExpression(), !4951)
    #dbg_value(i64 2, !4941, !DIExpression(), !4952)
  br label %for.loop, !dbg !4949

for.loop:                                         ; preds = %for.done, %if.done
  %5 = phi i64 [ %n, %if.done ], [ %12, %for.done ], !dbg !4953
  %6 = phi i64 [ 1, %if.done ], [ %35, %for.done ], !dbg !4951
  %7 = phi i64 [ 2, %if.done ], [ %36, %for.done ], !dbg !4952
    #dbg_value(i64 %7, !4941, !DIExpression(), !4954)
  %8 = sitofp i64 %7 to double, !dbg !4955
    #dbg_value(i64 %5, !4939, !DIExpression(), !4956)
  %9 = sitofp i64 %5 to double, !dbg !4957
  %10 = call double @math.Sqrt(double %9, ptr undef), !dbg !4958
  %11 = fcmp ole double %8, %10, !dbg !4959
  br i1 %11, label %for.body, label %for.done5, !dbg !4949

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4942, !DIExpression(), !4960)
    #dbg_value(i64 1, !4943, !DIExpression(), !4961)
    #dbg_value(i64 1, !4944, !DIExpression(), !4962)
  br label %for.loop1, !dbg !4949

for.loop1:                                        ; preds = %if.done4, %for.body
  %12 = phi i64 [ %5, %for.body ], [ %29, %if.done4 ], !dbg !4953
  %13 = phi i64 [ 0, %for.body ], [ %23, %if.done4 ], !dbg !4960
  %14 = phi i64 [ 1, %for.body ], [ %34, %if.done4 ], !dbg !4961
  %15 = phi i64 [ 1, %for.body ], [ %33, %if.done4 ], !dbg !4962
    #dbg_value(i64 %12, !4939, !DIExpression(), !4963)
    #dbg_value(i64 %7, !4941, !DIExpression(), !4964)
  %16 = icmp eq i64 %7, 0, !dbg !4965
  br i1 %16, label %divbyzero.throw, label %divbyzero.next, !dbg !4965

divbyzero.next:                                   ; preds = %for.loop1
  %17 = icmp eq i64 %7, -1, !dbg !4965
  %18 = icmp eq i64 %12, -9223372036854775808, !dbg !4965
  %19 = and i1 %17, %18, !dbg !4965
  %20 = select i1 %19, i64 1, i64 %7, !dbg !4965
  %21 = srem i64 %12, %20, !dbg !4965
  %22 = icmp eq i64 %21, 0, !dbg !4966
  br i1 %22, label %for.body2, label %for.done, !dbg !4949

for.body2:                                        ; preds = %divbyzero.next
  %23 = add i64 %13, 1, !dbg !4967
    #dbg_value(i64 %23, !4942, !DIExpression(), !4967)
    #dbg_value(i64 %12, !4939, !DIExpression(), !4968)
    #dbg_value(i64 %7, !4941, !DIExpression(), !4969)
  %24 = icmp eq i64 %7, 0, !dbg !4970
  br i1 %24, label %divbyzero.throw8, label %divbyzero.next9, !dbg !4970

divbyzero.next9:                                  ; preds = %for.body2
  %25 = icmp eq i64 %7, -1, !dbg !4970
  %26 = icmp eq i64 %12, -9223372036854775808, !dbg !4970
  %27 = and i1 %25, %26, !dbg !4970
  %28 = select i1 %27, i64 1, i64 %7, !dbg !4970
  %29 = sdiv i64 %12, %28, !dbg !4970
    #dbg_value(i64 %29, !4939, !DIExpression(), !4971)
    #dbg_value(i64 %7, !4941, !DIExpression(), !4972)
  %30 = icmp eq i64 %7, 2, !dbg !4973
  br i1 %30, label %cond.true, label %if.done4, !dbg !4949

cond.true:                                        ; preds = %divbyzero.next9
    #dbg_value(i64 %23, !4942, !DIExpression(), !4974)
  %31 = icmp eq i64 %23, 1, !dbg !4975
  br i1 %31, label %if.then3, label %if.done4, !dbg !4949

if.then3:                                         ; preds = %cond.true
    #dbg_value(i64 0, !4943, !DIExpression(), !4976)
  br label %if.done4, !dbg !4949

if.done4:                                         ; preds = %if.then3, %cond.true, %divbyzero.next9
  %32 = phi i64 [ %14, %divbyzero.next9 ], [ %14, %cond.true ], [ 0, %if.then3 ], !dbg !4961
    #dbg_value(i64 %7, !4941, !DIExpression(), !4977)
  %33 = mul i64 %15, %7, !dbg !4978
    #dbg_value(i64 %33, !4944, !DIExpression(), !4978)
    #dbg_value(i64 %33, !4944, !DIExpression(), !4979)
  %34 = add i64 %32, %33, !dbg !4980
    #dbg_value(i64 %34, !4943, !DIExpression(), !4980)
  br label %for.loop1, !dbg !4949

for.done:                                         ; preds = %divbyzero.next
    #dbg_value(i64 %14, !4943, !DIExpression(), !4981)
  %35 = mul i64 %6, %14, !dbg !4982
    #dbg_value(i64 %35, !4940, !DIExpression(), !4982)
  %36 = add i64 %7, 1, !dbg !4983
    #dbg_value(i64 %36, !4941, !DIExpression(), !4983)
  br label %for.loop, !dbg !4949

for.done5:                                        ; preds = %for.loop
    #dbg_value(i64 %5, !4939, !DIExpression(), !4984)
  %37 = icmp sge i64 %5, 2, !dbg !4985
  br i1 %37, label %if.then6, label %if.done7, !dbg !4949

if.then6:                                         ; preds = %for.done5
    #dbg_value(i64 %5, !4939, !DIExpression(), !4986)
  %38 = add i64 %5, 1, !dbg !4987
  %39 = mul i64 %6, %38, !dbg !4988
    #dbg_value(i64 %39, !4940, !DIExpression(), !4988)
  br label %if.done7, !dbg !4949

if.done7:                                         ; preds = %if.then6, %for.done5
  %40 = phi i64 [ %6, %for.done5 ], [ %39, %if.then6 ], !dbg !4951
    #dbg_value(i64 %40, !4940, !DIExpression(), !4989)
  ret i64 %40, !dbg !4990

divbyzero.throw:                                  ; preds = %for.loop1
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4965
  unreachable, !dbg !4965

divbyzero.throw8:                                 ; preds = %for.body2
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4970
  unreachable, !dbg !4970
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

!llvm.dbg.cu = !{!518, !520, !768, !786, !978, !1022, !1023, !1024, !1032, !1034, !1518, !1529, !1557, !1558, !1731}
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
!457 = distinct !DIGlobalVariable(scope: null, file: !428, line: 227, type: !112, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !460, line: 117, type: !46, isLocal: true, isDefinition: true)
!460 = !DIFile(filename: "print.go", directory: "/usr/local/lib/tinygo/src/runtime")
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !460, line: 120, type: !28, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !460, line: 123, type: !28, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !460, line: 197, type: !46, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !460, line: 200, type: !28, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !460, line: 203, type: !28, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !460, line: 272, type: !127, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !460, line: 279, type: !127, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !460, line: 373, type: !46, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !460, line: 391, type: !28, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !460, line: 393, type: !53, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(name: "runtime.stackTop", linkageName: "runtime.stackTop", scope: !414, file: !414, line: 75, type: !43, isLocal: false, isDefinition: true, align: 64)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "runtime.main_argc", linkageName: "runtime.main_argc", scope: !414, file: !414, line: 105, type: !381, isLocal: false, isDefinition: true, align: 32)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "runtime.main_argv", linkageName: "runtime.main_argv", scope: !414, file: !414, line: 106, type: !487, isLocal: false, isDefinition: true, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64, dwarfAddressSpace: 0)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !414, line: 155, type: !431, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !414, line: 160, type: !313, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !414, line: 163, type: !203, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !414, line: 165, type: !203, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !414, line: 167, type: !71, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !414, line: 158, type: !388, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "runtime.signalFutex", linkageName: "runtime.signalFutex", scope: !414, file: !414, line: 354, type: !359, isLocal: false, isDefinition: true, align: 32)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "runtime.heapMaxSize", linkageName: "runtime.heapMaxSize", scope: !414, file: !414, line: 299, type: !43, isLocal: false, isDefinition: true, align: 64)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "runtime.heapStart", linkageName: "runtime.heapStart", scope: !414, file: !414, line: 301, type: !43, isLocal: false, isDefinition: true, align: 64)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(name: "runtime.heapEnd", linkageName: "runtime.heapEnd", scope: !414, file: !414, line: 301, type: !43, isLocal: false, isDefinition: true, align: 64)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !414, line: 317, type: !510, isLocal: true, isDefinition: true)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, align: 8, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 27, lowerBound: 0)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "runtime.receivedSignals", linkageName: "runtime.receivedSignals", scope: !414, file: !414, line: 358, type: !363, isLocal: false, isDefinition: true, align: 32)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(name: "runtime.printLock", linkageName: "runtime.printLock", scope: !517, file: !517, line: 136, type: !385, isLocal: false, isDefinition: true, align: 32)
!517 = !DIFile(filename: "scheduler_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!518 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!519 = !DIFile(filename: "<unknown>", directory: "")
!520 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !521)
!521 = !{!522, !525, !574, !582, !597, !607, !613, !622, !648, !655, !661, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !699, !701, !706, !708, !711, !713, !715, !717, !719, !721, !723, !725, !727, !729, !731, !733, !735, !737, !739, !741, !743, !745, !747, !749, !751, !753, !755, !757, !417, !415, !763}
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(name: "internal/cpu.CacheLineSize", linkageName: "internal/cpu.CacheLineSize", scope: !524, file: !524, line: 17, type: !43, isLocal: false, isDefinition: true, align: 64)
!524 = !DIFile(filename: "cpu.go", directory: "/usr/local/go/src/internal/cpu")
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !524, file: !524, line: 23, type: !527, isLocal: false, isDefinition: true, align: 8)
!527 = !DICompositeType(tag: DW_TAG_structure_type, size: 1304, align: 8, elements: !528)
!528 = !{!529, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !530, size: 512, align: 8)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.CacheLinePad", baseType: !531)
!531 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 8, elements: !532)
!532 = !{!533}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !534, size: 512, align: 8)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 512, align: 8, elements: !536)
!535 = !DIBasicType(name: "byte", size: 8, encoding: DW_ATE_unsigned)
!536 = !{!537}
!537 = !DISubrange(count: 64, lowerBound: 0)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !371, size: 8, align: 8, offset: 512)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "HasADX", baseType: !371, size: 8, align: 8, offset: 520)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX", baseType: !371, size: 8, align: 8, offset: 528)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVXVNNI", baseType: !371, size: 8, align: 8, offset: 536)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX2", baseType: !371, size: 8, align: 8, offset: 544)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512", baseType: !371, size: 8, align: 8, offset: 552)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512F", baseType: !371, size: 8, align: 8, offset: 560)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512CD", baseType: !371, size: 8, align: 8, offset: 568)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BW", baseType: !371, size: 8, align: 8, offset: 576)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512DQ", baseType: !371, size: 8, align: 8, offset: 584)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VL", baseType: !371, size: 8, align: 8, offset: 592)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512GFNI", baseType: !371, size: 8, align: 8, offset: 600)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VAES", baseType: !371, size: 8, align: 8, offset: 608)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VNNI", baseType: !371, size: 8, align: 8, offset: 616)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI", baseType: !371, size: 8, align: 8, offset: 624)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI2", baseType: !371, size: 8, align: 8, offset: 632)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BITALG", baseType: !371, size: 8, align: 8, offset: 640)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPOPCNTDQ", baseType: !371, size: 8, align: 8, offset: 648)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPCLMULQDQ", baseType: !371, size: 8, align: 8, offset: 656)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI1", baseType: !371, size: 8, align: 8, offset: 664)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI2", baseType: !371, size: 8, align: 8, offset: 672)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "HasERMS", baseType: !371, size: 8, align: 8, offset: 680)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "HasFSRM", baseType: !371, size: 8, align: 8, offset: 688)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "HasFMA", baseType: !371, size: 8, align: 8, offset: 696)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "HasGFNI", baseType: !371, size: 8, align: 8, offset: 704)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "HasOSXSAVE", baseType: !371, size: 8, align: 8, offset: 712)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "HasPCLMULQDQ", baseType: !371, size: 8, align: 8, offset: 720)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "HasPOPCNT", baseType: !371, size: 8, align: 8, offset: 728)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "HasRDTSCP", baseType: !371, size: 8, align: 8, offset: 736)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA", baseType: !371, size: 8, align: 8, offset: 744)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE3", baseType: !371, size: 8, align: 8, offset: 752)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSSE3", baseType: !371, size: 8, align: 8, offset: 760)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE41", baseType: !371, size: 8, align: 8, offset: 768)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE42", baseType: !371, size: 8, align: 8, offset: 776)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "HasVAES", baseType: !371, size: 8, align: 8, offset: 784)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !530, size: 512, align: 8, offset: 792)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(name: "internal/cpu.ARM", linkageName: "internal/cpu.ARM", scope: !524, file: !524, line: 65, type: !576, isLocal: false, isDefinition: true, align: 8)
!576 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !577)
!577 = !{!529, !578, !579, !580, !581}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "HasVFPv4", baseType: !371, size: 8, align: 8, offset: 512)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "HasIDIVA", baseType: !371, size: 8, align: 8, offset: 520)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "HasV7Atomics", baseType: !371, size: 8, align: 8, offset: 528)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !530, size: 512, align: 8, offset: 536)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "internal/cpu.ARM64", linkageName: "internal/cpu.ARM64", scope: !524, file: !524, line: 75, type: !584, isLocal: false, isDefinition: true, align: 8)
!584 = !DICompositeType(tag: DW_TAG_structure_type, size: 1112, align: 8, elements: !585)
!585 = !{!529, !538, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "HasPMULL", baseType: !371, size: 8, align: 8, offset: 520)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !371, size: 8, align: 8, offset: 528)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA2", baseType: !371, size: 8, align: 8, offset: 536)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !371, size: 8, align: 8, offset: 544)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !371, size: 8, align: 8, offset: 552)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !371, size: 8, align: 8, offset: 560)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "HasATOMICS", baseType: !371, size: 8, align: 8, offset: 568)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "HasCPUID", baseType: !371, size: 8, align: 8, offset: 576)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "HasDIT", baseType: !371, size: 8, align: 8, offset: 584)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "IsNeoverse", baseType: !371, size: 8, align: 8, offset: 592)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !530, size: 512, align: 8, offset: 600)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(name: "internal/cpu.Loong64", linkageName: "internal/cpu.Loong64", scope: !524, file: !524, line: 93, type: !599, isLocal: false, isDefinition: true, align: 8)
!599 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !600)
!600 = !{!529, !601, !602, !603, !604, !605, !606}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "HasLSX", baseType: !371, size: 8, align: 8, offset: 512)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "HasLASX", baseType: !371, size: 8, align: 8, offset: 520)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !371, size: 8, align: 8, offset: 528)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAMCAS", baseType: !371, size: 8, align: 8, offset: 536)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAM_BH", baseType: !371, size: 8, align: 8, offset: 544)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !530, size: 512, align: 8, offset: 552)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(name: "internal/cpu.MIPS64X", linkageName: "internal/cpu.MIPS64X", scope: !524, file: !524, line: 103, type: !609, isLocal: false, isDefinition: true, align: 8)
!609 = !DICompositeType(tag: DW_TAG_structure_type, size: 1032, align: 8, elements: !610)
!610 = !{!529, !611, !612}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !371, size: 8, align: 8, offset: 512)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !530, size: 512, align: 8, offset: 520)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(name: "internal/cpu.PPC64", linkageName: "internal/cpu.PPC64", scope: !524, file: !524, line: 114, type: !615, isLocal: false, isDefinition: true, align: 8)
!615 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !616)
!616 = !{!529, !617, !618, !619, !620, !621, !606}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "HasDARN", baseType: !371, size: 8, align: 8, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "HasSCV", baseType: !371, size: 8, align: 8, offset: 520)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER8", baseType: !371, size: 8, align: 8, offset: 528)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER9", baseType: !371, size: 8, align: 8, offset: 536)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER10", baseType: !371, size: 8, align: 8, offset: 544)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(name: "internal/cpu.S390X", linkageName: "internal/cpu.S390X", scope: !524, file: !524, line: 124, type: !624, isLocal: false, isDefinition: true, align: 8)
!624 = !DICompositeType(tag: DW_TAG_structure_type, size: 1192, align: 8, elements: !625)
!625 = !{!529, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "HasZARCH", baseType: !371, size: 8, align: 8, offset: 512)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "HasSTFLE", baseType: !371, size: 8, align: 8, offset: 520)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "HasLDISP", baseType: !371, size: 8, align: 8, offset: 528)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "HasEIMM", baseType: !371, size: 8, align: 8, offset: 536)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "HasDFP", baseType: !371, size: 8, align: 8, offset: 544)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "HasETF3EH", baseType: !371, size: 8, align: 8, offset: 552)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !371, size: 8, align: 8, offset: 560)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !371, size: 8, align: 8, offset: 568)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCBC", baseType: !371, size: 8, align: 8, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCTR", baseType: !371, size: 8, align: 8, offset: 584)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESGCM", baseType: !371, size: 8, align: 8, offset: 592)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "HasGHASH", baseType: !371, size: 8, align: 8, offset: 600)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !371, size: 8, align: 8, offset: 608)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA256", baseType: !371, size: 8, align: 8, offset: 616)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !371, size: 8, align: 8, offset: 624)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !371, size: 8, align: 8, offset: 632)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "HasVX", baseType: !371, size: 8, align: 8, offset: 640)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "HasVXE", baseType: !371, size: 8, align: 8, offset: 648)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "HasKDSA", baseType: !371, size: 8, align: 8, offset: 656)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "HasECDSA", baseType: !371, size: 8, align: 8, offset: 664)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "HasEDDSA", baseType: !371, size: 8, align: 8, offset: 672)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !530, size: 512, align: 8, offset: 680)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(name: "internal/cpu.RISCV64", linkageName: "internal/cpu.RISCV64", scope: !524, file: !524, line: 154, type: !650, isLocal: false, isDefinition: true, align: 8)
!650 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !651)
!651 = !{!529, !652, !653, !654, !581}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "HasFastMisaligned", baseType: !371, size: 8, align: 8, offset: 512)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "HasV", baseType: !371, size: 8, align: 8, offset: 520)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "HasZbb", baseType: !371, size: 8, align: 8, offset: 528)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(name: "internal/cpu.doDerived", linkageName: "internal/cpu.doDerived", scope: !524, file: !524, line: 174, type: !657, isLocal: false, isDefinition: true, align: 64)
!657 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !658)
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "context", baseType: !84, size: 64, align: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "fn", baseType: !84, size: 64, align: 64, offset: 64)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(name: "internal/cpu.options", linkageName: "internal/cpu.options", scope: !524, file: !524, line: 192, type: !663, isLocal: false, isDefinition: true, align: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]internal/cpu.option", size: 192, align: 64, elements: !664)
!664 = !{!665, !42, !675}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !666, size: 64, align: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64, align: 64, dwarfAddressSpace: 0)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.option", baseType: !668)
!668 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !669)
!669 = !{!670, !671, !673, !674}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "Name", baseType: !38, size: 128, align: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "Feature", baseType: !672, size: 64, align: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64, dwarfAddressSpace: 0)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "Specified", baseType: !371, size: 8, align: 8, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "Enable", baseType: !371, size: 8, align: 8, offset: 200)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "cap", baseType: !43, size: 64, align: 64, offset: 128)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !524, line: 218, type: !28, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !524, line: 223, type: !303, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !524, line: 223, type: !127, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !524, line: 230, type: !127, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !524, line: 239, type: !46, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !524, line: 255, type: !308, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !524, line: 255, type: !127, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !524, line: 232, type: !46, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !524, line: 235, type: !313, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !524, line: 235, type: !696, isLocal: true, isDefinition: true)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, align: 8, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 32, lowerBound: 0)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !524, line: 235, type: !127, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !524, line: 264, type: !703, isLocal: true, isDefinition: true)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, align: 8, elements: !704)
!704 = !{!705}
!705 = !DISubrange(count: 25, lowerBound: 0)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !524, line: 264, type: !441, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(name: "internal/cpu.maxExtendedFunctionInformation", linkageName: "internal/cpu.maxExtendedFunctionInformation", scope: !710, file: !710, line: 69, type: !98, isLocal: false, isDefinition: true, align: 32)
!710 = !DIFile(filename: "cpu_x86.go", directory: "/usr/local/go/src/internal/cpu")
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !710, line: 73, type: !46, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !710, line: 74, type: !46, isLocal: true, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !710, line: 75, type: !28, isLocal: true, isDefinition: true)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !710, line: 76, type: !28, isLocal: true, isDefinition: true)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !710, line: 77, type: !218, isLocal: true, isDefinition: true)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !710, line: 78, type: !203, isLocal: true, isDefinition: true)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !710, line: 79, type: !46, isLocal: true, isDefinition: true)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !710, line: 80, type: !223, isLocal: true, isDefinition: true)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !710, line: 87, type: !203, isLocal: true, isDefinition: true)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !710, line: 88, type: !28, isLocal: true, isDefinition: true)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !710, line: 89, type: !53, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !710, line: 90, type: !53, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !710, line: 91, type: !53, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !710, line: 97, type: !46, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !710, line: 98, type: !28, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !710, line: 99, type: !28, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !710, line: 100, type: !28, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !710, line: 101, type: !46, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !710, line: 107, type: !71, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !710, line: 108, type: !64, isLocal: true, isDefinition: true)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !710, line: 109, type: !64, isLocal: true, isDefinition: true)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !710, line: 110, type: !64, isLocal: true, isDefinition: true)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !710, line: 111, type: !64, isLocal: true, isDefinition: true)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !759, line: 1, type: !760, isLocal: true, isDefinition: true)
!759 = !DIFile(filename: "datacache_x86.go", directory: "/usr/local/go/src/internal/cpu")
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, align: 8, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 13, lowerBound: 0)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !759, line: 1, type: !765, isLocal: true, isDefinition: true)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 664, align: 8, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 83, lowerBound: 0)
!768 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !769)
!769 = !{!770, !774, !776, !784}
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(name: "math/bits.deBruijn32tab", linkageName: "math/bits.deBruijn32tab", scope: !772, file: !772, line: 44, type: !773, isLocal: false, isDefinition: true, align: 8)
!772 = !DIFile(filename: "bits.go", directory: "/usr/local/go/src/math/bits")
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 256, align: 8, elements: !697)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(name: "math/bits.deBruijn64tab", linkageName: "math/bits.deBruijn64tab", scope: !772, file: !772, line: 51, type: !534, isLocal: false, isDefinition: true, align: 8)
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(name: "math/bits.overflowError", linkageName: "runtime.overflowError", scope: !778, file: !778, line: 12, type: !779, isLocal: false, isDefinition: true, align: 64)
!778 = !DIFile(filename: "bits_errors.go", directory: "/usr/local/go/src/math/bits")
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._interface", baseType: !781)
!781 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !782)
!782 = !{!105, !783}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "value", baseType: !84, size: 64, align: 64, offset: 64)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(name: "math/bits.divideError", linkageName: "runtime.divideError", scope: !778, file: !778, line: 15, type: !779, isLocal: false, isDefinition: true, align: 64)
!786 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !787)
!787 = !{!788, !790, !793, !798, !801, !804, !808, !810, !812, !814, !816, !818, !820, !822, !824, !826, !828, !830, !832, !834, !836, !838, !841, !843, !845, !847, !849, !851, !853, !855, !857, !859, !861, !863, !865, !867, !869, !871, !875, !877, !879, !882, !884, !886, !888, !892, !895, !900, !903, !905, !909, !911, !914, !916, !920, !923, !925, !927, !930, !932, !934, !936, !938, !940, !942, !944, !946, !948, !950, !952, !954, !956, !958, !960, !962, !964, !966, !968, !970, !972, !974, !976}
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !524, file: !524, line: 23, type: !527, isLocal: false, isDefinition: true, align: 8)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(name: "math.useFMA", linkageName: "math.useFMA", scope: !792, file: !792, line: 11, type: !371, isLocal: false, isDefinition: true, align: 8)
!792 = !DIFile(filename: "exp_amd64.go", directory: "/usr/local/go/src/math")
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(name: "math._gamP", linkageName: "math._gamP", scope: !795, file: !795, line: 66, type: !796, isLocal: false, isDefinition: true, align: 64)
!795 = !DIFile(filename: "gamma.go", directory: "/usr/local/go/src/math")
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 448, align: 64, elements: !72)
!797 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(name: "math._gamQ", linkageName: "math._gamQ", scope: !795, file: !795, line: 75, type: !800, isLocal: false, isDefinition: true, align: 64)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 512, align: 64, elements: !65)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(name: "math._gamS", linkageName: "math._gamS", scope: !795, file: !795, line: 85, type: !803, isLocal: false, isDefinition: true, align: 64)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 320, align: 64, elements: !54)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(name: "math.p0R8", linkageName: "math.p0R8", scope: !806, file: !806, line: 240, type: !807, isLocal: false, isDefinition: true, align: 64)
!806 = !DIFile(filename: "j0.go", directory: "/usr/local/go/src/math")
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 384, align: 64, elements: !204)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(name: "math.p0S8", linkageName: "math.p0S8", scope: !806, file: !806, line: 248, type: !803, isLocal: false, isDefinition: true, align: 64)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(name: "math.p0R5", linkageName: "math.p0R5", scope: !806, file: !806, line: 257, type: !807, isLocal: false, isDefinition: true, align: 64)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(name: "math.p0S5", linkageName: "math.p0S5", scope: !806, file: !806, line: 265, type: !803, isLocal: false, isDefinition: true, align: 64)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(name: "math.p0R3", linkageName: "math.p0R3", scope: !806, file: !806, line: 274, type: !807, isLocal: false, isDefinition: true, align: 64)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(name: "math.p0S3", linkageName: "math.p0S3", scope: !806, file: !806, line: 282, type: !803, isLocal: false, isDefinition: true, align: 64)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(name: "math.p0R2", linkageName: "math.p0R2", scope: !806, file: !806, line: 291, type: !807, isLocal: false, isDefinition: true, align: 64)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(name: "math.p0S2", linkageName: "math.p0S2", scope: !806, file: !806, line: 299, type: !803, isLocal: false, isDefinition: true, align: 64)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(name: "math.q0R8", linkageName: "math.q0R8", scope: !806, file: !806, line: 339, type: !807, isLocal: false, isDefinition: true, align: 64)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(name: "math.q0S8", linkageName: "math.q0S8", scope: !806, file: !806, line: 347, type: !807, isLocal: false, isDefinition: true, align: 64)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(name: "math.q0R5", linkageName: "math.q0R5", scope: !806, file: !806, line: 357, type: !807, isLocal: false, isDefinition: true, align: 64)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(name: "math.q0S5", linkageName: "math.q0S5", scope: !806, file: !806, line: 365, type: !807, isLocal: false, isDefinition: true, align: 64)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(name: "math.q0R3", linkageName: "math.q0R3", scope: !806, file: !806, line: 375, type: !807, isLocal: false, isDefinition: true, align: 64)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(name: "math.q0S3", linkageName: "math.q0S3", scope: !806, file: !806, line: 383, type: !807, isLocal: false, isDefinition: true, align: 64)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(name: "math.q0R2", linkageName: "math.q0R2", scope: !806, file: !806, line: 393, type: !807, isLocal: false, isDefinition: true, align: 64)
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(name: "math.q0S2", linkageName: "math.q0S2", scope: !806, file: !806, line: 401, type: !807, isLocal: false, isDefinition: true, align: 64)
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(name: "math.p1R8", linkageName: "math.p1R8", scope: !840, file: !840, line: 235, type: !807, isLocal: false, isDefinition: true, align: 64)
!840 = !DIFile(filename: "j1.go", directory: "/usr/local/go/src/math")
!841 = !DIGlobalVariableExpression(var: !842, expr: !DIExpression())
!842 = distinct !DIGlobalVariable(name: "math.p1S8", linkageName: "math.p1S8", scope: !840, file: !840, line: 243, type: !803, isLocal: false, isDefinition: true, align: 64)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(name: "math.p1R5", linkageName: "math.p1R5", scope: !840, file: !840, line: 252, type: !807, isLocal: false, isDefinition: true, align: 64)
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(name: "math.p1S5", linkageName: "math.p1S5", scope: !840, file: !840, line: 260, type: !803, isLocal: false, isDefinition: true, align: 64)
!847 = !DIGlobalVariableExpression(var: !848, expr: !DIExpression())
!848 = distinct !DIGlobalVariable(name: "math.p1R3", linkageName: "math.p1R3", scope: !840, file: !840, line: 269, type: !807, isLocal: false, isDefinition: true, align: 64)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(name: "math.p1S3", linkageName: "math.p1S3", scope: !840, file: !840, line: 277, type: !803, isLocal: false, isDefinition: true, align: 64)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(name: "math.p1R2", linkageName: "math.p1R2", scope: !840, file: !840, line: 286, type: !807, isLocal: false, isDefinition: true, align: 64)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(name: "math.p1S2", linkageName: "math.p1S2", scope: !840, file: !840, line: 294, type: !803, isLocal: false, isDefinition: true, align: 64)
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(name: "math.q1R8", linkageName: "math.q1R8", scope: !840, file: !840, line: 334, type: !807, isLocal: false, isDefinition: true, align: 64)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(name: "math.q1S8", linkageName: "math.q1S8", scope: !840, file: !840, line: 342, type: !807, isLocal: false, isDefinition: true, align: 64)
!859 = !DIGlobalVariableExpression(var: !860, expr: !DIExpression())
!860 = distinct !DIGlobalVariable(name: "math.q1R5", linkageName: "math.q1R5", scope: !840, file: !840, line: 352, type: !807, isLocal: false, isDefinition: true, align: 64)
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(name: "math.q1S5", linkageName: "math.q1S5", scope: !840, file: !840, line: 360, type: !807, isLocal: false, isDefinition: true, align: 64)
!863 = !DIGlobalVariableExpression(var: !864, expr: !DIExpression())
!864 = distinct !DIGlobalVariable(name: "math.q1R3", linkageName: "math.q1R3", scope: !840, file: !840, line: 370, type: !807, isLocal: false, isDefinition: true, align: 64)
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(name: "math.q1S3", linkageName: "math.q1S3", scope: !840, file: !840, line: 378, type: !807, isLocal: false, isDefinition: true, align: 64)
!867 = !DIGlobalVariableExpression(var: !868, expr: !DIExpression())
!868 = distinct !DIGlobalVariable(name: "math.q1R2", linkageName: "math.q1R2", scope: !840, file: !840, line: 388, type: !807, isLocal: false, isDefinition: true, align: 64)
!869 = !DIGlobalVariableExpression(var: !870, expr: !DIExpression())
!870 = distinct !DIGlobalVariable(name: "math.q1S2", linkageName: "math.q1S2", scope: !840, file: !840, line: 396, type: !807, isLocal: false, isDefinition: true, align: 64)
!871 = !DIGlobalVariableExpression(var: !872, expr: !DIExpression())
!872 = distinct !DIGlobalVariable(name: "math._lgamA", linkageName: "math._lgamA", scope: !873, file: !873, line: 91, type: !874, isLocal: false, isDefinition: true, align: 64)
!873 = !DIFile(filename: "lgamma.go", directory: "/usr/local/go/src/math")
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 768, align: 64, elements: !297)
!875 = !DIGlobalVariableExpression(var: !876, expr: !DIExpression())
!876 = distinct !DIGlobalVariable(name: "math._lgamR", linkageName: "math._lgamR", scope: !873, file: !873, line: 105, type: !796, isLocal: false, isDefinition: true, align: 64)
!877 = !DIGlobalVariableExpression(var: !878, expr: !DIExpression())
!878 = distinct !DIGlobalVariable(name: "math._lgamS", linkageName: "math._lgamS", scope: !873, file: !873, line: 114, type: !796, isLocal: false, isDefinition: true, align: 64)
!879 = !DIGlobalVariableExpression(var: !880, expr: !DIExpression())
!880 = distinct !DIGlobalVariable(name: "math._lgamT", linkageName: "math._lgamT", scope: !873, file: !873, line: 123, type: !881, isLocal: false, isDefinition: true, align: 64)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 960, align: 64, elements: !133)
!882 = !DIGlobalVariableExpression(var: !883, expr: !DIExpression())
!883 = distinct !DIGlobalVariable(name: "math._lgamU", linkageName: "math._lgamU", scope: !873, file: !873, line: 140, type: !807, isLocal: false, isDefinition: true, align: 64)
!884 = !DIGlobalVariableExpression(var: !885, expr: !DIExpression())
!885 = distinct !DIGlobalVariable(name: "math._lgamV", linkageName: "math._lgamV", scope: !873, file: !873, line: 148, type: !807, isLocal: false, isDefinition: true, align: 64)
!886 = !DIGlobalVariableExpression(var: !887, expr: !DIExpression())
!887 = distinct !DIGlobalVariable(name: "math._lgamW", linkageName: "math._lgamW", scope: !873, file: !873, line: 156, type: !796, isLocal: false, isDefinition: true, align: 64)
!888 = !DIGlobalVariableExpression(var: !889, expr: !DIExpression())
!889 = distinct !DIGlobalVariable(name: "math.pow10tab", linkageName: "math.pow10tab", scope: !890, file: !890, line: 8, type: !891, isLocal: false, isDefinition: true, align: 64)
!890 = !DIFile(filename: "pow10.go", directory: "/usr/local/go/src/math")
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 2048, align: 64, elements: !697)
!892 = !DIGlobalVariableExpression(var: !893, expr: !DIExpression())
!893 = distinct !DIGlobalVariable(name: "math.pow10postab32", linkageName: "math.pow10postab32", scope: !890, file: !890, line: 16, type: !894, isLocal: false, isDefinition: true, align: 64)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 640, align: 64, elements: !224)
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(name: "math.pow10negtab32", linkageName: "math.pow10negtab32", scope: !890, file: !890, line: 21, type: !897, isLocal: false, isDefinition: true, align: 64)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 704, align: 64, elements: !898)
!898 = !{!899}
!899 = !DISubrange(count: 11, lowerBound: 0)
!900 = !DIGlobalVariableExpression(var: !901, expr: !DIExpression())
!901 = distinct !DIGlobalVariable(name: "math._sin", linkageName: "math._sin", scope: !902, file: !902, line: 93, type: !807, isLocal: false, isDefinition: true, align: 64)
!902 = !DIFile(filename: "sin.go", directory: "/usr/local/go/src/math")
!903 = !DIGlobalVariableExpression(var: !904, expr: !DIExpression())
!904 = distinct !DIGlobalVariable(name: "math._cos", linkageName: "math._cos", scope: !902, file: !902, line: 103, type: !807, isLocal: false, isDefinition: true, align: 64)
!905 = !DIGlobalVariableExpression(var: !906, expr: !DIExpression())
!906 = distinct !DIGlobalVariable(name: "math._tanP", linkageName: "math._tanP", scope: !907, file: !907, line: 63, type: !908, isLocal: false, isDefinition: true, align: 64)
!907 = !DIFile(filename: "tan.go", directory: "/usr/local/go/src/math")
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 192, align: 64, elements: !47)
!909 = !DIGlobalVariableExpression(var: !910, expr: !DIExpression())
!910 = distinct !DIGlobalVariable(name: "math._tanQ", linkageName: "math._tanQ", scope: !907, file: !907, line: 68, type: !803, isLocal: false, isDefinition: true, align: 64)
!911 = !DIGlobalVariableExpression(var: !912, expr: !DIExpression())
!912 = distinct !DIGlobalVariable(name: "math.tanhP", linkageName: "math.tanhP", scope: !913, file: !913, line: 57, type: !908, isLocal: false, isDefinition: true, align: 64)
!913 = !DIFile(filename: "tanh.go", directory: "/usr/local/go/src/math")
!914 = !DIGlobalVariableExpression(var: !915, expr: !DIExpression())
!915 = distinct !DIGlobalVariable(name: "math.tanhQ", linkageName: "math.tanhQ", scope: !913, file: !913, line: 62, type: !908, isLocal: false, isDefinition: true, align: 64)
!916 = !DIGlobalVariableExpression(var: !917, expr: !DIExpression())
!917 = distinct !DIGlobalVariable(name: "math.mPi4", linkageName: "math.mPi4", scope: !918, file: !918, line: 81, type: !919, isLocal: false, isDefinition: true, align: 64)
!918 = !DIFile(filename: "trig_reduce.go", directory: "/usr/local/go/src/math")
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 1280, align: 64, elements: !389)
!920 = !DIGlobalVariableExpression(var: !921, expr: !DIExpression())
!921 = distinct !DIGlobalVariable(scope: null, file: !922, line: 1, type: !132, isLocal: true, isDefinition: true)
!922 = !DIFile(filename: "exp2_noasm.go", directory: "/usr/local/go/src/math")
!923 = !DIGlobalVariableExpression(var: !924, expr: !DIExpression())
!924 = distinct !DIGlobalVariable(name: "type *string", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!925 = !DIGlobalVariableExpression(var: !926, expr: !DIExpression())
!926 = distinct !DIGlobalVariable(name: "type string", scope: !78, file: !78, line: 1, type: !79, isLocal: false, isDefinition: true, align: 64)
!927 = !DIGlobalVariableExpression(var: !928, expr: !DIExpression())
!928 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!929 = !DIFile(filename: "stubs.go", directory: "/usr/local/go/src/math")
!930 = !DIGlobalVariableExpression(var: !931, expr: !DIExpression())
!931 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!932 = !DIGlobalVariableExpression(var: !933, expr: !DIExpression())
!933 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!934 = !DIGlobalVariableExpression(var: !935, expr: !DIExpression())
!935 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!936 = !DIGlobalVariableExpression(var: !937, expr: !DIExpression())
!937 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!938 = !DIGlobalVariableExpression(var: !939, expr: !DIExpression())
!939 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!940 = !DIGlobalVariableExpression(var: !941, expr: !DIExpression())
!941 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!942 = !DIGlobalVariableExpression(var: !943, expr: !DIExpression())
!943 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!944 = !DIGlobalVariableExpression(var: !945, expr: !DIExpression())
!945 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!946 = !DIGlobalVariableExpression(var: !947, expr: !DIExpression())
!947 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!948 = !DIGlobalVariableExpression(var: !949, expr: !DIExpression())
!949 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!950 = !DIGlobalVariableExpression(var: !951, expr: !DIExpression())
!951 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!952 = !DIGlobalVariableExpression(var: !953, expr: !DIExpression())
!953 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!954 = !DIGlobalVariableExpression(var: !955, expr: !DIExpression())
!955 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!956 = !DIGlobalVariableExpression(var: !957, expr: !DIExpression())
!957 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!958 = !DIGlobalVariableExpression(var: !959, expr: !DIExpression())
!959 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!960 = !DIGlobalVariableExpression(var: !961, expr: !DIExpression())
!961 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!962 = !DIGlobalVariableExpression(var: !963, expr: !DIExpression())
!963 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!964 = !DIGlobalVariableExpression(var: !965, expr: !DIExpression())
!965 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!966 = !DIGlobalVariableExpression(var: !967, expr: !DIExpression())
!967 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!968 = !DIGlobalVariableExpression(var: !969, expr: !DIExpression())
!969 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!970 = !DIGlobalVariableExpression(var: !971, expr: !DIExpression())
!971 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!972 = !DIGlobalVariableExpression(var: !973, expr: !DIExpression())
!973 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!974 = !DIGlobalVariableExpression(var: !975, expr: !DIExpression())
!975 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!976 = !DIGlobalVariableExpression(var: !977, expr: !DIExpression())
!977 = distinct !DIGlobalVariable(scope: null, file: !929, line: 1, type: !132, isLocal: true, isDefinition: true)
!978 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !979)
!979 = !{!980, !986, !988, !990, !995, !997, !1002, !1007, !1012, !1017}
!980 = !DIGlobalVariableExpression(var: !981, expr: !DIExpression())
!981 = distinct !DIGlobalVariable(scope: null, file: !982, line: 1, type: !983, isLocal: true, isDefinition: true)
!982 = !DIFile(filename: "value.go", directory: "/usr/local/go/src/sync/atomic")
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, align: 8, elements: !984)
!984 = !{!985}
!985 = !DISubrange(count: 53, lowerBound: 0)
!986 = !DIGlobalVariableExpression(var: !987, expr: !DIExpression())
!987 = distinct !DIGlobalVariable(name: "type *string", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!988 = !DIGlobalVariableExpression(var: !989, expr: !DIExpression())
!989 = distinct !DIGlobalVariable(name: "type string", scope: !78, file: !78, line: 1, type: !79, isLocal: false, isDefinition: true, align: 64)
!990 = !DIGlobalVariableExpression(var: !991, expr: !DIExpression())
!991 = distinct !DIGlobalVariable(scope: null, file: !982, line: 1, type: !992, isLocal: true, isDefinition: true)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, align: 8, elements: !993)
!993 = !{!994}
!994 = !DISubrange(count: 60, lowerBound: 0)
!995 = !DIGlobalVariableExpression(var: !996, expr: !DIExpression())
!996 = distinct !DIGlobalVariable(name: "sync/atomic.firstStoreInProgress", linkageName: "sync/atomic.firstStoreInProgress", scope: !982, file: !982, line: 42, type: !535, isLocal: false, isDefinition: true, align: 8)
!997 = !DIGlobalVariableExpression(var: !998, expr: !DIExpression())
!998 = distinct !DIGlobalVariable(scope: null, file: !982, line: 1, type: !999, isLocal: true, isDefinition: true)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, align: 8, elements: !1000)
!1000 = !{!1001}
!1001 = !DISubrange(count: 70, lowerBound: 0)
!1002 = !DIGlobalVariableExpression(var: !1003, expr: !DIExpression())
!1003 = distinct !DIGlobalVariable(scope: null, file: !982, line: 1, type: !1004, isLocal: true, isDefinition: true)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, align: 8, elements: !1005)
!1005 = !{!1006}
!1006 = !DISubrange(count: 42, lowerBound: 0)
!1007 = !DIGlobalVariableExpression(var: !1008, expr: !DIExpression())
!1008 = distinct !DIGlobalVariable(scope: null, file: !982, line: 1, type: !1009, isLocal: true, isDefinition: true)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, align: 8, elements: !1010)
!1010 = !{!1011}
!1011 = !DISubrange(count: 59, lowerBound: 0)
!1012 = !DIGlobalVariableExpression(var: !1013, expr: !DIExpression())
!1013 = distinct !DIGlobalVariable(scope: null, file: !982, line: 1, type: !1014, isLocal: true, isDefinition: true)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, align: 8, elements: !1015)
!1015 = !{!1016}
!1016 = !DISubrange(count: 41, lowerBound: 0)
!1017 = !DIGlobalVariableExpression(var: !1018, expr: !DIExpression())
!1018 = distinct !DIGlobalVariable(scope: null, file: !982, line: 1, type: !1019, isLocal: true, isDefinition: true)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, align: 8, elements: !1020)
!1020 = !{!1021}
!1021 = !DISubrange(count: 58, lowerBound: 0)
!1022 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1023 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1024 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1025)
!1025 = !{!0, !7, !1026, !1028, !1030}
!1026 = !DIGlobalVariableExpression(var: !1027, expr: !DIExpression())
!1027 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !46, isLocal: true, isDefinition: true)
!1028 = !DIGlobalVariableExpression(var: !1029, expr: !DIExpression())
!1029 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !313, isLocal: true, isDefinition: true)
!1030 = !DIGlobalVariableExpression(var: !1031, expr: !DIExpression())
!1031 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !313, isLocal: true, isDefinition: true)
!1032 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1033)
!1033 = !{!9, !15}
!1034 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1035)
!1035 = !{!25, !31, !44, !49, !51, !56, !1036, !1038, !58, !60, !62, !67, !69, !74, !1040, !1043, !1045, !1047, !85, !76, !1049, !1056, !1058, !1060, !1062, !1064, !1066, !1068, !1070, !1072, !1074, !1076, !1078, !1080, !1082, !1084, !1086, !1088, !1090, !1092, !1094, !1096, !1098, !1100, !1102, !1104, !1106, !1108, !1110, !1112, !1114, !1116, !1118, !1120, !1122, !1124, !1126, !1128, !1130, !1132, !107, !92, !1134, !1152, !1157, !1159, !1161, !1163, !1165, !1167, !1169, !1171, !1183, !1189, !1195, !109, !1198, !1200, !1202, !1204, !123, !115, !1213, !125, !130, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !1219, !181, !1222, !1224, !1226, !1228, !1230, !1232, !175, !165, !1238, !1240, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !206, !208, !210, !212, !214, !216, !221, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !1242, !1247, !1252, !1257, !1262, !258, !256, !248, !1264, !1266, !1268, !1270, !1272, !1274, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !1276, !284, !286, !288, !290, !292, !294, !299, !301, !1278, !306, !311, !1280, !1282, !1284, !1286, !1288, !1293, !1295, !1297, !1299, !1301, !1303, !1305, !1307, !1309, !1311, !1313, !1315, !1320, !1322, !1324, !1329, !1331, !1333, !1335, !1337, !1339, !1341, !1343, !1345, !1347, !1349, !1351, !1353, !1358, !1360, !1362, !1364, !1366, !1368, !1370, !1372, !1374, !1379, !1381, !1386, !1391, !1393, !1395, !1397, !1402, !1404, !1406, !1408, !1410, !1415, !1417, !1419, !1421, !1423, !1425, !1430, !1432, !1437, !1439, !1441, !1443, !1445, !1447, !1449, !1451, !1453, !1455, !1457, !1459, !1464, !1466, !1471, !1473, !1475, !1477, !1479, !1482, !1484, !1486, !314, !320, !322, !324, !326, !1488, !1490, !1495, !1497, !1499, !1501, !1503, !1505, !1507, !1509, !1511, !1513, !1516}
!1036 = !DIGlobalVariableExpression(var: !1037, expr: !DIExpression())
!1037 = distinct !DIGlobalVariable(scope: null, file: !27, line: 396, type: !28, isLocal: true, isDefinition: true)
!1038 = !DIGlobalVariableExpression(var: !1039, expr: !DIExpression())
!1039 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeBits", linkageName: "internal/reflectlite.errTypeBits", scope: !27, file: !27, line: 396, type: !33, isLocal: false, isDefinition: true, align: 64)
!1040 = !DIGlobalVariableExpression(var: !1041, expr: !DIExpression())
!1041 = distinct !DIGlobalVariable(scope: null, file: !27, line: 400, type: !1042, isLocal: true, isDefinition: true)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, align: 8, elements: !898)
!1043 = !DIGlobalVariableExpression(var: !1044, expr: !DIExpression())
!1044 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByName", linkageName: "internal/reflectlite.errTypeFieldByName", scope: !27, file: !27, line: 400, type: !33, isLocal: false, isDefinition: true, align: 64)
!1045 = !DIGlobalVariableExpression(var: !1046, expr: !DIExpression())
!1046 = distinct !DIGlobalVariable(scope: null, file: !27, line: 401, type: !296, isLocal: true, isDefinition: true)
!1047 = !DIGlobalVariableExpression(var: !1048, expr: !DIExpression())
!1048 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByIndex", linkageName: "internal/reflectlite.errTypeFieldByIndex", scope: !27, file: !27, line: 401, type: !33, isLocal: false, isDefinition: true, align: 64)
!1049 = !DIGlobalVariableExpression(var: !1050, expr: !DIExpression())
!1050 = distinct !DIGlobalVariable(name: "internal/reflectlite.uint8Type", linkageName: "internal/reflectlite.uint8Type", scope: !316, file: !316, line: 956, type: !1051, isLocal: false, isDefinition: true, align: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64, align: 64, dwarfAddressSpace: 0)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.RawType", baseType: !1053)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, size: 8, align: 8, elements: !1054)
!1054 = !{!1055}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "meta", baseType: !4, size: 8, align: 8)
!1056 = !DIGlobalVariableExpression(var: !1057, expr: !DIExpression())
!1057 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.visit", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1058 = !DIGlobalVariableExpression(var: !1059, expr: !DIExpression())
!1059 = distinct !DIGlobalVariable(name: "type *struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1060 = !DIGlobalVariableExpression(var: !1061, expr: !DIExpression())
!1061 = distinct !DIGlobalVariable(name: "type *unsafe.Pointer", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1062 = !DIGlobalVariableExpression(var: !1063, expr: !DIExpression())
!1063 = distinct !DIGlobalVariable(name: "type unsafe.Pointer", scope: !78, file: !78, line: 1, type: !79, isLocal: false, isDefinition: true, align: 64)
!1064 = !DIGlobalVariableExpression(var: !1065, expr: !DIExpression())
!1065 = distinct !DIGlobalVariable(name: "reflect/types.signature:Align:func:{}{basic:int}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1066 = !DIGlobalVariableExpression(var: !1067, expr: !DIExpression())
!1067 = distinct !DIGlobalVariable(name: "reflect/types.signature:AssignableTo:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1068 = !DIGlobalVariableExpression(var: !1069, expr: !DIExpression())
!1069 = distinct !DIGlobalVariable(name: "reflect/types.signature:Bits:func:{}{basic:int}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1070 = !DIGlobalVariableExpression(var: !1071, expr: !DIExpression())
!1071 = distinct !DIGlobalVariable(name: "reflect/types.signature:ChanDir:func:{}{named:internal/reflectlite.ChanDir}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1072 = !DIGlobalVariableExpression(var: !1073, expr: !DIExpression())
!1073 = distinct !DIGlobalVariable(name: "reflect/types.signature:Comparable:func:{}{basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1074 = !DIGlobalVariableExpression(var: !1075, expr: !DIExpression())
!1075 = distinct !DIGlobalVariable(name: "reflect/types.signature:Elem:func:{}{named:internal/reflectlite.Type}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1076 = !DIGlobalVariableExpression(var: !1077, expr: !DIExpression())
!1077 = distinct !DIGlobalVariable(name: "reflect/types.signature:Field:func:{basic:int}{named:internal/reflectlite.StructField}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1078 = !DIGlobalVariableExpression(var: !1079, expr: !DIExpression())
!1079 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldAlign:func:{}{basic:int}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1080 = !DIGlobalVariableExpression(var: !1081, expr: !DIExpression())
!1081 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByIndex:func:{slice:basic:int}{named:internal/reflectlite.StructField}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1082 = !DIGlobalVariableExpression(var: !1083, expr: !DIExpression())
!1083 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByName:func:{basic:string}{named:internal/reflectlite.StructField,basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1084 = !DIGlobalVariableExpression(var: !1085, expr: !DIExpression())
!1085 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.StructField,basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1086 = !DIGlobalVariableExpression(var: !1087, expr: !DIExpression())
!1087 = distinct !DIGlobalVariable(name: "reflect/types.signature:Implements:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1088 = !DIGlobalVariableExpression(var: !1089, expr: !DIExpression())
!1089 = distinct !DIGlobalVariable(name: "reflect/types.signature:Key:func:{}{named:internal/reflectlite.Type}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1090 = !DIGlobalVariableExpression(var: !1091, expr: !DIExpression())
!1091 = distinct !DIGlobalVariable(name: "reflect/types.signature:Kind:func:{}{named:internal/reflectlite.Kind}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1092 = !DIGlobalVariableExpression(var: !1093, expr: !DIExpression())
!1093 = distinct !DIGlobalVariable(name: "reflect/types.signature:Len:func:{}{basic:int}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1094 = !DIGlobalVariableExpression(var: !1095, expr: !DIExpression())
!1095 = distinct !DIGlobalVariable(name: "reflect/types.signature:Name:func:{}{basic:string}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1096 = !DIGlobalVariableExpression(var: !1097, expr: !DIExpression())
!1097 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumField:func:{}{basic:int}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1098 = !DIGlobalVariableExpression(var: !1099, expr: !DIExpression())
!1099 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumMethod:func:{}{basic:int}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1100 = !DIGlobalVariableExpression(var: !1101, expr: !DIExpression())
!1101 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowComplex:func:{basic:complex128}{basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1102 = !DIGlobalVariableExpression(var: !1103, expr: !DIExpression())
!1103 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowFloat:func:{basic:float64}{basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1104 = !DIGlobalVariableExpression(var: !1105, expr: !DIExpression())
!1105 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowInt:func:{basic:int64}{basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1106 = !DIGlobalVariableExpression(var: !1107, expr: !DIExpression())
!1107 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowUint:func:{basic:uint64}{basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1108 = !DIGlobalVariableExpression(var: !1109, expr: !DIExpression())
!1109 = distinct !DIGlobalVariable(name: "reflect/types.signature:PkgPath:func:{}{basic:string}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1110 = !DIGlobalVariableExpression(var: !1111, expr: !DIExpression())
!1111 = distinct !DIGlobalVariable(name: "reflect/types.signature:Size:func:{}{basic:uintptr}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1112 = !DIGlobalVariableExpression(var: !1113, expr: !DIExpression())
!1113 = distinct !DIGlobalVariable(name: "reflect/types.signature:String:func:{}{basic:string}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1114 = !DIGlobalVariableExpression(var: !1115, expr: !DIExpression())
!1115 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.elem:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1116 = !DIGlobalVariableExpression(var: !1117, expr: !DIExpression())
!1117 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.gcLayout:func:{}{basic:unsafe.Pointer}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1118 = !DIGlobalVariableExpression(var: !1119, expr: !DIExpression())
!1119 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isBinary:func:{}{basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1120 = !DIGlobalVariableExpression(var: !1121, expr: !DIExpression())
!1121 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isNamed:func:{}{basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1122 = !DIGlobalVariableExpression(var: !1123, expr: !DIExpression())
!1123 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.key:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1124 = !DIGlobalVariableExpression(var: !1125, expr: !DIExpression())
!1125 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.name:func:{}{basic:string}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1126 = !DIGlobalVariableExpression(var: !1127, expr: !DIExpression())
!1127 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.ptrtag:func:{}{basic:uintptr}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1128 = !DIGlobalVariableExpression(var: !1129, expr: !DIExpression())
!1129 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawField:func:{basic:int}{named:internal/reflectlite.rawStructField}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1130 = !DIGlobalVariableExpression(var: !1131, expr: !DIExpression())
!1131 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawFieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.rawStructField,slice:basic:int,basic:bool}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1132 = !DIGlobalVariableExpression(var: !1133, expr: !DIExpression())
!1133 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.underlying:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1134 = !DIGlobalVariableExpression(var: !1135, expr: !DIExpression())
!1135 = distinct !DIGlobalVariable(name: "type internal/reflectlite.RawType", scope: !78, file: !78, line: 1, type: !1136, isLocal: false, isDefinition: true, align: 64)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, size: 832, align: 64, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1141, !1142, !1143, !1144, !1150}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "methodSet", baseType: !84, size: 64, align: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !82, size: 8, align: 8, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !90, size: 16, align: 16, offset: 80)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !84, size: 64, align: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !84, size: 64, align: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !84, size: 64, align: 64, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1145, size: 320, align: 64, offset: 320)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !1146)
!1146 = !{!1147, !1148}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !43, size: 64, align: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1149, size: 256, align: 64, offset: 64)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, align: 64, elements: !29)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1151, size: 160, align: 8, offset: 640)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 160, align: 8, elements: !389)
!1152 = !DIGlobalVariableExpression(var: !1153, expr: !DIExpression())
!1153 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1154, isLocal: true, isDefinition: true)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, align: 8, elements: !1155)
!1155 = !{!1156}
!1156 = !DISubrange(count: 28, lowerBound: 0)
!1157 = !DIGlobalVariableExpression(var: !1158, expr: !DIExpression())
!1158 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !132, isLocal: true, isDefinition: true)
!1159 = !DIGlobalVariableExpression(var: !1160, expr: !DIExpression())
!1160 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1154, isLocal: true, isDefinition: true)
!1161 = !DIGlobalVariableExpression(var: !1162, expr: !DIExpression())
!1162 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !760, isLocal: true, isDefinition: true)
!1163 = !DIGlobalVariableExpression(var: !1164, expr: !DIExpression())
!1164 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1154, isLocal: true, isDefinition: true)
!1165 = !DIGlobalVariableExpression(var: !1166, expr: !DIExpression())
!1166 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1042, isLocal: true, isDefinition: true)
!1167 = !DIGlobalVariableExpression(var: !1168, expr: !DIExpression())
!1168 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1154, isLocal: true, isDefinition: true)
!1169 = !DIGlobalVariableExpression(var: !1170, expr: !DIExpression())
!1170 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !296, isLocal: true, isDefinition: true)
!1171 = !DIGlobalVariableExpression(var: !1172, expr: !DIExpression())
!1172 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.RawType", scope: !78, file: !78, line: 1, type: !1173, isLocal: false, isDefinition: true, align: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, size: 2496, align: 64, elements: !1174)
!1174 = !{!1138, !1139, !1140, !1175, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !84, size: 64, align: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1177, size: 2304, align: 64, offset: 192)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, size: 2304, align: 64, elements: !1178)
!1178 = !{!1147, !1179}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1180, size: 2240, align: 64, offset: 64)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 2240, align: 64, elements: !1181)
!1181 = !{!1182}
!1182 = !DISubrange(count: 35, lowerBound: 0)
!1183 = !DIGlobalVariableExpression(var: !1184, expr: !DIExpression())
!1184 = distinct !DIGlobalVariable(name: "type struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !78, file: !78, line: 1, type: !1185, isLocal: false, isDefinition: true, align: 64)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1186)
!1186 = !{!81, !89, !83, !96, !97, !99, !1187}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !1188, size: 384, align: 64, offset: 256)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 384, align: 64, elements: !47)
!1189 = !DIGlobalVariableExpression(var: !1190, expr: !DIExpression())
!1190 = distinct !DIGlobalVariable(name: "type internal/reflectlite.visit", scope: !78, file: !78, line: 1, type: !1191, isLocal: false, isDefinition: true, align: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1192)
!1192 = !{!81, !89, !83, !169, !170, !1193}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1194, size: 144, align: 8, offset: 256)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 144, align: 8, elements: !445)
!1195 = !DIGlobalVariableExpression(var: !1196, expr: !DIExpression())
!1196 = distinct !DIGlobalVariable(name: "internal/reflectlite.errSyntax", linkageName: "internal/reflectlite.errSyntax", scope: !111, file: !111, line: 12, type: !1197, isLocal: false, isDefinition: true, align: 8)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.badSyntax", baseType: !341)
!1198 = !DIGlobalVariableExpression(var: !1199, expr: !DIExpression())
!1199 = distinct !DIGlobalVariable(name: "reflect/types.signature:Error:func:{}{basic:string}", scope: !78, file: !78, line: 1, type: !4, isLocal: false, isDefinition: true, align: 8)
!1200 = !DIGlobalVariableExpression(var: !1201, expr: !DIExpression())
!1201 = distinct !DIGlobalVariable(scope: null, file: !111, line: 1, type: !308, isLocal: true, isDefinition: true)
!1202 = !DIGlobalVariableExpression(var: !1203, expr: !DIExpression())
!1203 = distinct !DIGlobalVariable(scope: null, file: !111, line: 1, type: !53, isLocal: true, isDefinition: true)
!1204 = !DIGlobalVariableExpression(var: !1205, expr: !DIExpression())
!1205 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.badSyntax", scope: !78, file: !78, line: 1, type: !1206, isLocal: false, isDefinition: true, align: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !1207)
!1207 = !{!1138, !1139, !1140, !1175, !1208}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1209, size: 128, align: 64, offset: 192)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !1210)
!1210 = !{!1147, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1212, size: 64, align: 64, offset: 64)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 64, align: 64, elements: !5)
!1213 = !DIGlobalVariableExpression(var: !1214, expr: !DIExpression())
!1214 = distinct !DIGlobalVariable(name: "type internal/reflectlite.badSyntax", scope: !78, file: !78, line: 1, type: !1215, isLocal: false, isDefinition: true, align: 64)
!1215 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1216)
!1216 = !{!1138, !1139, !1140, !1141, !1142, !1143, !1217, !1218}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1209, size: 128, align: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !253, size: 176, align: 8, offset: 448)
!1219 = !DIGlobalVariableExpression(var: !1220, expr: !DIExpression())
!1220 = distinct !DIGlobalVariable(scope: null, file: !1221, line: 16, type: !71, isLocal: true, isDefinition: true)
!1221 = !DIFile(filename: "swapper.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1222 = !DIGlobalVariableExpression(var: !1223, expr: !DIExpression())
!1223 = distinct !DIGlobalVariable(name: "type *string", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1224 = !DIGlobalVariableExpression(var: !1225, expr: !DIExpression())
!1225 = distinct !DIGlobalVariable(name: "type string", scope: !78, file: !78, line: 1, type: !79, isLocal: false, isDefinition: true, align: 64)
!1226 = !DIGlobalVariableExpression(var: !1227, expr: !DIExpression())
!1227 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !703, isLocal: true, isDefinition: true)
!1228 = !DIGlobalVariableExpression(var: !1229, expr: !DIExpression())
!1229 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !203, isLocal: true, isDefinition: true)
!1230 = !DIGlobalVariableExpression(var: !1231, expr: !DIExpression())
!1231 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.Kind", scope: !78, file: !78, line: 1, type: !1206, isLocal: false, isDefinition: true, align: 64)
!1232 = !DIGlobalVariableExpression(var: !1233, expr: !DIExpression())
!1233 = distinct !DIGlobalVariable(name: "type internal/reflectlite.Kind", scope: !78, file: !78, line: 1, type: !1234, isLocal: false, isDefinition: true, align: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1235)
!1235 = !{!1138, !1139, !1140, !1141, !1142, !1143, !1217, !1236}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1237, size: 136, align: 8, offset: 448)
!1237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 136, align: 8, elements: !318)
!1238 = !DIGlobalVariableExpression(var: !1239, expr: !DIExpression())
!1239 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.ValueError", scope: !78, file: !78, line: 1, type: !1206, isLocal: false, isDefinition: true, align: 64)
!1240 = !DIGlobalVariableExpression(var: !1241, expr: !DIExpression())
!1241 = distinct !DIGlobalVariable(scope: null, file: !1221, line: 1, type: !303, isLocal: true, isDefinition: true)
!1242 = !DIGlobalVariableExpression(var: !1243, expr: !DIExpression())
!1243 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1244, isLocal: true, isDefinition: true)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, align: 8, elements: !1245)
!1245 = !{!1246}
!1246 = !DISubrange(count: 44, lowerBound: 0)
!1247 = !DIGlobalVariableExpression(var: !1248, expr: !DIExpression())
!1248 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1249, isLocal: true, isDefinition: true)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, align: 8, elements: !1250)
!1250 = !{!1251}
!1251 = !DISubrange(count: 40, lowerBound: 0)
!1252 = !DIGlobalVariableExpression(var: !1253, expr: !DIExpression())
!1253 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1254, isLocal: true, isDefinition: true)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, align: 8, elements: !1255)
!1255 = !{!1256}
!1256 = !DISubrange(count: 36, lowerBound: 0)
!1257 = !DIGlobalVariableExpression(var: !1258, expr: !DIExpression())
!1258 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1259, isLocal: true, isDefinition: true)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, align: 8, elements: !1260)
!1260 = !{!1261}
!1261 = !DISubrange(count: 38, lowerBound: 0)
!1262 = !DIGlobalVariableExpression(var: !1263, expr: !DIExpression())
!1263 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !696, isLocal: true, isDefinition: true)
!1264 = !DIGlobalVariableExpression(var: !1265, expr: !DIExpression())
!1265 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.TypeError", scope: !78, file: !78, line: 1, type: !1206, isLocal: false, isDefinition: true, align: 64)
!1266 = !DIGlobalVariableExpression(var: !1267, expr: !DIExpression())
!1267 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1059, type: !132, isLocal: true, isDefinition: true)
!1268 = !DIGlobalVariableExpression(var: !1269, expr: !DIExpression())
!1269 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !983, isLocal: true, isDefinition: true)
!1270 = !DIGlobalVariableExpression(var: !1271, expr: !DIExpression())
!1271 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !317, isLocal: true, isDefinition: true)
!1272 = !DIGlobalVariableExpression(var: !1273, expr: !DIExpression())
!1273 = distinct !DIGlobalVariable(scope: null, file: !27, line: 965, type: !71, isLocal: true, isDefinition: true)
!1274 = !DIGlobalVariableExpression(var: !1275, expr: !DIExpression())
!1275 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !510, isLocal: true, isDefinition: true)
!1276 = !DIGlobalVariableExpression(var: !1277, expr: !DIExpression())
!1277 = distinct !DIGlobalVariable(scope: null, file: !27, line: 356, type: !64, isLocal: true, isDefinition: true)
!1278 = !DIGlobalVariableExpression(var: !1279, expr: !DIExpression())
!1279 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !696, isLocal: true, isDefinition: true)
!1280 = !DIGlobalVariableExpression(var: !1281, expr: !DIExpression())
!1281 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !696, isLocal: true, isDefinition: true)
!1282 = !DIGlobalVariableExpression(var: !1283, expr: !DIExpression())
!1283 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !696, isLocal: true, isDefinition: true)
!1284 = !DIGlobalVariableExpression(var: !1285, expr: !DIExpression())
!1285 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !303, isLocal: true, isDefinition: true)
!1286 = !DIGlobalVariableExpression(var: !1287, expr: !DIExpression())
!1287 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !308, isLocal: true, isDefinition: true)
!1288 = !DIGlobalVariableExpression(var: !1289, expr: !DIExpression())
!1289 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !1290, isLocal: true, isDefinition: true)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, align: 8, elements: !1291)
!1291 = !{!1292}
!1292 = !DISubrange(count: 31, lowerBound: 0)
!1293 = !DIGlobalVariableExpression(var: !1294, expr: !DIExpression())
!1294 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1014, isLocal: true, isDefinition: true)
!1295 = !DIGlobalVariableExpression(var: !1296, expr: !DIExpression())
!1296 = distinct !DIGlobalVariable(scope: null, file: !316, line: 441, type: !28, isLocal: true, isDefinition: true)
!1297 = !DIGlobalVariableExpression(var: !1298, expr: !DIExpression())
!1298 = distinct !DIGlobalVariable(scope: null, file: !316, line: 650, type: !53, isLocal: true, isDefinition: true)
!1299 = !DIGlobalVariableExpression(var: !1300, expr: !DIExpression())
!1300 = distinct !DIGlobalVariable(scope: null, file: !316, line: 658, type: !53, isLocal: true, isDefinition: true)
!1301 = !DIGlobalVariableExpression(var: !1302, expr: !DIExpression())
!1302 = distinct !DIGlobalVariable(scope: null, file: !316, line: 667, type: !53, isLocal: true, isDefinition: true)
!1303 = !DIGlobalVariableExpression(var: !1304, expr: !DIExpression())
!1304 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !451, isLocal: true, isDefinition: true)
!1305 = !DIGlobalVariableExpression(var: !1306, expr: !DIExpression())
!1306 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1004, isLocal: true, isDefinition: true)
!1307 = !DIGlobalVariableExpression(var: !1308, expr: !DIExpression())
!1308 = distinct !DIGlobalVariable(scope: null, file: !316, line: 824, type: !46, isLocal: true, isDefinition: true)
!1309 = !DIGlobalVariableExpression(var: !1310, expr: !DIExpression())
!1310 = distinct !DIGlobalVariable(scope: null, file: !316, line: 843, type: !53, isLocal: true, isDefinition: true)
!1311 = !DIGlobalVariableExpression(var: !1312, expr: !DIExpression())
!1312 = distinct !DIGlobalVariable(scope: null, file: !316, line: 630, type: !71, isLocal: true, isDefinition: true)
!1313 = !DIGlobalVariableExpression(var: !1314, expr: !DIExpression())
!1314 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1425, type: !451, isLocal: true, isDefinition: true)
!1315 = !DIGlobalVariableExpression(var: !1316, expr: !DIExpression())
!1316 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1425, type: !1317, isLocal: true, isDefinition: true)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, align: 8, elements: !1318)
!1318 = !{!1319}
!1319 = !DISubrange(count: 29, lowerBound: 0)
!1320 = !DIGlobalVariableExpression(var: !1321, expr: !DIExpression())
!1321 = distinct !DIGlobalVariable(scope: null, file: !316, line: 875, type: !28, isLocal: true, isDefinition: true)
!1322 = !DIGlobalVariableExpression(var: !1323, expr: !DIExpression())
!1323 = distinct !DIGlobalVariable(scope: null, file: !316, line: 407, type: !1254, isLocal: true, isDefinition: true)
!1324 = !DIGlobalVariableExpression(var: !1325, expr: !DIExpression())
!1325 = distinct !DIGlobalVariable(scope: null, file: !316, line: 407, type: !1326, isLocal: true, isDefinition: true)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, align: 8, elements: !1327)
!1327 = !{!1328}
!1328 = !DISubrange(count: 19, lowerBound: 0)
!1329 = !DIGlobalVariableExpression(var: !1330, expr: !DIExpression())
!1330 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !303, isLocal: true, isDefinition: true)
!1331 = !DIGlobalVariableExpression(var: !1332, expr: !DIExpression())
!1332 = distinct !DIGlobalVariable(scope: null, file: !316, line: 882, type: !53, isLocal: true, isDefinition: true)
!1333 = !DIGlobalVariableExpression(var: !1334, expr: !DIExpression())
!1334 = distinct !DIGlobalVariable(scope: null, file: !316, line: 2067, type: !296, isLocal: true, isDefinition: true)
!1335 = !DIGlobalVariableExpression(var: !1336, expr: !DIExpression())
!1336 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1009, isLocal: true, isDefinition: true)
!1337 = !DIGlobalVariableExpression(var: !1338, expr: !DIExpression())
!1338 = distinct !DIGlobalVariable(scope: null, file: !316, line: 2085, type: !132, isLocal: true, isDefinition: true)
!1339 = !DIGlobalVariableExpression(var: !1340, expr: !DIExpression())
!1340 = distinct !DIGlobalVariable(scope: null, file: !316, line: 2090, type: !1042, isLocal: true, isDefinition: true)
!1341 = !DIGlobalVariableExpression(var: !1342, expr: !DIExpression())
!1342 = distinct !DIGlobalVariable(scope: null, file: !316, line: 2101, type: !1042, isLocal: true, isDefinition: true)
!1343 = !DIGlobalVariableExpression(var: !1344, expr: !DIExpression())
!1344 = distinct !DIGlobalVariable(scope: null, file: !316, line: 598, type: !53, isLocal: true, isDefinition: true)
!1345 = !DIGlobalVariableExpression(var: !1346, expr: !DIExpression())
!1346 = distinct !DIGlobalVariable(scope: null, file: !316, line: 573, type: !53, isLocal: true, isDefinition: true)
!1347 = !DIGlobalVariableExpression(var: !1348, expr: !DIExpression())
!1348 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1317, isLocal: true, isDefinition: true)
!1349 = !DIGlobalVariableExpression(var: !1350, expr: !DIExpression())
!1350 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1957, type: !28, isLocal: true, isDefinition: true)
!1351 = !DIGlobalVariableExpression(var: !1352, expr: !DIExpression())
!1352 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !303, isLocal: true, isDefinition: true)
!1353 = !DIGlobalVariableExpression(var: !1354, expr: !DIExpression())
!1354 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1355, isLocal: true, isDefinition: true)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, align: 8, elements: !1356)
!1356 = !{!1357}
!1357 = !DISubrange(count: 34, lowerBound: 0)
!1358 = !DIGlobalVariableExpression(var: !1359, expr: !DIExpression())
!1359 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1041, type: !53, isLocal: true, isDefinition: true)
!1360 = !DIGlobalVariableExpression(var: !1361, expr: !DIExpression())
!1361 = distinct !DIGlobalVariable(scope: null, file: !316, line: 488, type: !46, isLocal: true, isDefinition: true)
!1362 = !DIGlobalVariableExpression(var: !1363, expr: !DIExpression())
!1363 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !451, isLocal: true, isDefinition: true)
!1364 = !DIGlobalVariableExpression(var: !1365, expr: !DIExpression())
!1365 = distinct !DIGlobalVariable(scope: null, file: !316, line: 247, type: !53, isLocal: true, isDefinition: true)
!1366 = !DIGlobalVariableExpression(var: !1367, expr: !DIExpression())
!1367 = distinct !DIGlobalVariable(scope: null, file: !316, line: 201, type: !3, isLocal: true, isDefinition: true)
!1368 = !DIGlobalVariableExpression(var: !1369, expr: !DIExpression())
!1369 = distinct !DIGlobalVariable(scope: null, file: !316, line: 209, type: !388, isLocal: true, isDefinition: true)
!1370 = !DIGlobalVariableExpression(var: !1371, expr: !DIExpression())
!1371 = distinct !DIGlobalVariable(scope: null, file: !316, line: 806, type: !46, isLocal: true, isDefinition: true)
!1372 = !DIGlobalVariableExpression(var: !1373, expr: !DIExpression())
!1373 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1117, type: !64, isLocal: true, isDefinition: true)
!1374 = !DIGlobalVariableExpression(var: !1375, expr: !DIExpression())
!1375 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1376, isLocal: true, isDefinition: true)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, align: 8, elements: !1377)
!1377 = !{!1378}
!1378 = !DISubrange(count: 50, lowerBound: 0)
!1379 = !DIGlobalVariableExpression(var: !1380, expr: !DIExpression())
!1380 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1074, type: !71, isLocal: true, isDefinition: true)
!1381 = !DIGlobalVariableExpression(var: !1382, expr: !DIExpression())
!1382 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1383, isLocal: true, isDefinition: true)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, align: 8, elements: !1384)
!1384 = !{!1385}
!1385 = !DISubrange(count: 39, lowerBound: 0)
!1386 = !DIGlobalVariableExpression(var: !1387, expr: !DIExpression())
!1387 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1388, isLocal: true, isDefinition: true)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, align: 8, elements: !1389)
!1389 = !{!1390}
!1390 = !DISubrange(count: 45, lowerBound: 0)
!1391 = !DIGlobalVariableExpression(var: !1392, expr: !DIExpression())
!1392 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1047, type: !441, isLocal: true, isDefinition: true)
!1393 = !DIGlobalVariableExpression(var: !1394, expr: !DIExpression())
!1394 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1062, type: !510, isLocal: true, isDefinition: true)
!1395 = !DIGlobalVariableExpression(var: !1396, expr: !DIExpression())
!1396 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1398, type: !703, isLocal: true, isDefinition: true)
!1397 = !DIGlobalVariableExpression(var: !1398, expr: !DIExpression())
!1398 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1411, type: !1399, isLocal: true, isDefinition: true)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, align: 8, elements: !1400)
!1400 = !{!1401}
!1401 = !DISubrange(count: 26, lowerBound: 0)
!1402 = !DIGlobalVariableExpression(var: !1403, expr: !DIExpression())
!1403 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !451, isLocal: true, isDefinition: true)
!1404 = !DIGlobalVariableExpression(var: !1405, expr: !DIExpression())
!1405 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1237, type: !303, isLocal: true, isDefinition: true)
!1406 = !DIGlobalVariableExpression(var: !1407, expr: !DIExpression())
!1407 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1237, type: !1154, isLocal: true, isDefinition: true)
!1408 = !DIGlobalVariableExpression(var: !1409, expr: !DIExpression())
!1409 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1275, type: !71, isLocal: true, isDefinition: true)
!1410 = !DIGlobalVariableExpression(var: !1411, expr: !DIExpression())
!1411 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1412, isLocal: true, isDefinition: true)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, align: 8, elements: !1413)
!1413 = !{!1414}
!1414 = !DISubrange(count: 43, lowerBound: 0)
!1415 = !DIGlobalVariableExpression(var: !1416, expr: !DIExpression())
!1416 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1383, isLocal: true, isDefinition: true)
!1417 = !DIGlobalVariableExpression(var: !1418, expr: !DIExpression())
!1418 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1341, type: !223, isLocal: true, isDefinition: true)
!1419 = !DIGlobalVariableExpression(var: !1420, expr: !DIExpression())
!1420 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1328, type: !64, isLocal: true, isDefinition: true)
!1421 = !DIGlobalVariableExpression(var: !1422, expr: !DIExpression())
!1422 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1294, type: !203, isLocal: true, isDefinition: true)
!1423 = !DIGlobalVariableExpression(var: !1424, expr: !DIExpression())
!1424 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1373, type: !388, isLocal: true, isDefinition: true)
!1425 = !DIGlobalVariableExpression(var: !1426, expr: !DIExpression())
!1426 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1427, isLocal: true, isDefinition: true)
!1427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, align: 8, elements: !1428)
!1428 = !{!1429}
!1429 = !DISubrange(count: 47, lowerBound: 0)
!1430 = !DIGlobalVariableExpression(var: !1431, expr: !DIExpression())
!1431 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1987, type: !1042, isLocal: true, isDefinition: true)
!1432 = !DIGlobalVariableExpression(var: !1433, expr: !DIExpression())
!1433 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1434, isLocal: true, isDefinition: true)
!1434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, align: 8, elements: !1435)
!1435 = !{!1436}
!1436 = !DISubrange(count: 55, lowerBound: 0)
!1437 = !DIGlobalVariableExpression(var: !1438, expr: !DIExpression())
!1438 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !983, isLocal: true, isDefinition: true)
!1439 = !DIGlobalVariableExpression(var: !1440, expr: !DIExpression())
!1440 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1352, type: !218, isLocal: true, isDefinition: true)
!1441 = !DIGlobalVariableExpression(var: !1442, expr: !DIExpression())
!1442 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1315, type: !71, isLocal: true, isDefinition: true)
!1443 = !DIGlobalVariableExpression(var: !1444, expr: !DIExpression())
!1444 = distinct !DIGlobalVariable(scope: null, file: !316, line: 734, type: !53, isLocal: true, isDefinition: true)
!1445 = !DIGlobalVariableExpression(var: !1446, expr: !DIExpression())
!1446 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1383, isLocal: true, isDefinition: true)
!1447 = !DIGlobalVariableExpression(var: !1448, expr: !DIExpression())
!1448 = distinct !DIGlobalVariable(scope: null, file: !316, line: 642, type: !3, isLocal: true, isDefinition: true)
!1449 = !DIGlobalVariableExpression(var: !1450, expr: !DIExpression())
!1450 = distinct !DIGlobalVariable(scope: null, file: !316, line: 642, type: !71, isLocal: true, isDefinition: true)
!1451 = !DIGlobalVariableExpression(var: !1452, expr: !DIExpression())
!1452 = distinct !DIGlobalVariable(scope: null, file: !316, line: 541, type: !28, isLocal: true, isDefinition: true)
!1453 = !DIGlobalVariableExpression(var: !1454, expr: !DIExpression())
!1454 = distinct !DIGlobalVariable(scope: null, file: !316, line: 273, type: !760, isLocal: true, isDefinition: true)
!1455 = !DIGlobalVariableExpression(var: !1456, expr: !DIExpression())
!1456 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !303, isLocal: true, isDefinition: true)
!1457 = !DIGlobalVariableExpression(var: !1458, expr: !DIExpression())
!1458 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !308, isLocal: true, isDefinition: true)
!1459 = !DIGlobalVariableExpression(var: !1460, expr: !DIExpression())
!1460 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1461, isLocal: true, isDefinition: true)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, align: 8, elements: !1462)
!1462 = !{!1463}
!1463 = !DISubrange(count: 46, lowerBound: 0)
!1464 = !DIGlobalVariableExpression(var: !1465, expr: !DIExpression())
!1465 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1218, type: !64, isLocal: true, isDefinition: true)
!1466 = !DIGlobalVariableExpression(var: !1467, expr: !DIExpression())
!1467 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1468, isLocal: true, isDefinition: true)
!1468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, align: 8, elements: !1469)
!1469 = !{!1470}
!1470 = !DISubrange(count: 48, lowerBound: 0)
!1471 = !DIGlobalVariableExpression(var: !1472, expr: !DIExpression())
!1472 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1154, isLocal: true, isDefinition: true)
!1473 = !DIGlobalVariableExpression(var: !1474, expr: !DIExpression())
!1474 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1154, isLocal: true, isDefinition: true)
!1475 = !DIGlobalVariableExpression(var: !1476, expr: !DIExpression())
!1476 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1317, isLocal: true, isDefinition: true)
!1477 = !DIGlobalVariableExpression(var: !1478, expr: !DIExpression())
!1478 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1317, isLocal: true, isDefinition: true)
!1479 = !DIGlobalVariableExpression(var: !1480, expr: !DIExpression())
!1480 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1481, isLocal: true, isDefinition: true)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, align: 8, elements: !1181)
!1482 = !DIGlobalVariableExpression(var: !1483, expr: !DIExpression())
!1483 = distinct !DIGlobalVariable(name: "internal/reflectlite.zerobuffer", linkageName: "internal/reflectlite.zerobuffer", scope: !316, file: !316, line: 1710, type: !84, isLocal: false, isDefinition: true, align: 64)
!1484 = !DIGlobalVariableExpression(var: !1485, expr: !DIExpression())
!1485 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1716, type: !696, isLocal: true, isDefinition: true)
!1486 = !DIGlobalVariableExpression(var: !1487, expr: !DIExpression())
!1487 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1716, type: !696, isLocal: true, isDefinition: true)
!1488 = !DIGlobalVariableExpression(var: !1489, expr: !DIExpression())
!1489 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1383, isLocal: true, isDefinition: true)
!1490 = !DIGlobalVariableExpression(var: !1491, expr: !DIExpression())
!1491 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1825, type: !1492, isLocal: true, isDefinition: true)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, align: 8, elements: !1493)
!1493 = !{!1494}
!1494 = !DISubrange(count: 21, lowerBound: 0)
!1495 = !DIGlobalVariableExpression(var: !1496, expr: !DIExpression())
!1496 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1825, type: !3, isLocal: true, isDefinition: true)
!1497 = !DIGlobalVariableExpression(var: !1498, expr: !DIExpression())
!1498 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1004, isLocal: true, isDefinition: true)
!1499 = !DIGlobalVariableExpression(var: !1500, expr: !DIExpression())
!1500 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1879, type: !1042, isLocal: true, isDefinition: true)
!1501 = !DIGlobalVariableExpression(var: !1502, expr: !DIExpression())
!1502 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1903, type: !203, isLocal: true, isDefinition: true)
!1503 = !DIGlobalVariableExpression(var: !1504, expr: !DIExpression())
!1504 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1355, isLocal: true, isDefinition: true)
!1505 = !DIGlobalVariableExpression(var: !1506, expr: !DIExpression())
!1506 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1290, isLocal: true, isDefinition: true)
!1507 = !DIGlobalVariableExpression(var: !1508, expr: !DIExpression())
!1508 = distinct !DIGlobalVariable(scope: null, file: !316, line: 2125, type: !71, isLocal: true, isDefinition: true)
!1509 = !DIGlobalVariableExpression(var: !1510, expr: !DIExpression())
!1510 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1412, isLocal: true, isDefinition: true)
!1511 = !DIGlobalVariableExpression(var: !1512, expr: !DIExpression())
!1512 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !1154, isLocal: true, isDefinition: true)
!1513 = !DIGlobalVariableExpression(var: !1514, expr: !DIExpression())
!1514 = distinct !DIGlobalVariable(scope: null, file: !1515, line: 1, type: !510, isLocal: true, isDefinition: true)
!1515 = !DIFile(filename: "visiblefields.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1516 = !DIGlobalVariableExpression(var: !1517, expr: !DIExpression())
!1517 = distinct !DIGlobalVariable(scope: null, file: !1515, line: 1, type: !1249, isLocal: true, isDefinition: true)
!1518 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1519)
!1519 = !{!1520, !1523, !1525, !1527}
!1520 = !DIGlobalVariableExpression(var: !1521, expr: !DIExpression())
!1521 = distinct !DIGlobalVariable(scope: null, file: !1522, line: 1, type: !296, isLocal: true, isDefinition: true)
!1522 = !DIFile(filename: "checkpoint.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!1523 = !DIGlobalVariableExpression(var: !1524, expr: !DIExpression())
!1524 = distinct !DIGlobalVariable(name: "type *string", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1525 = !DIGlobalVariableExpression(var: !1526, expr: !DIExpression())
!1526 = distinct !DIGlobalVariable(name: "type string", scope: !78, file: !78, line: 1, type: !79, isLocal: false, isDefinition: true, align: 64)
!1527 = !DIGlobalVariableExpression(var: !1528, expr: !DIExpression())
!1528 = distinct !DIGlobalVariable(scope: null, file: !1522, line: 1, type: !1004, isLocal: true, isDefinition: true)
!1529 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1530)
!1530 = !{!328, !374, !376, !1531, !1533, !1535, !1541, !1543, !1545, !379, !382, !1547, !386, !391, !393, !1549, !1551, !1553, !395, !397, !399, !405, !1555}
!1531 = !DIGlobalVariableExpression(var: !1532, expr: !DIExpression())
!1532 = distinct !DIGlobalVariable(name: "type *string", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1533 = !DIGlobalVariableExpression(var: !1534, expr: !DIExpression())
!1534 = distinct !DIGlobalVariable(name: "type string", scope: !78, file: !78, line: 1, type: !79, isLocal: false, isDefinition: true, align: 64)
!1535 = !DIGlobalVariableExpression(var: !1536, expr: !DIExpression())
!1536 = distinct !DIGlobalVariable(scope: null, file: !1537, line: 1, type: !1538, isLocal: true, isDefinition: true)
!1537 = !DIFile(filename: "queue.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!1538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, align: 8, elements: !1539)
!1539 = !{!1540}
!1540 = !DISubrange(count: 62, lowerBound: 0)
!1541 = !DIGlobalVariableExpression(var: !1542, expr: !DIExpression())
!1542 = distinct !DIGlobalVariable(scope: null, file: !1537, line: 1, type: !1538, isLocal: true, isDefinition: true)
!1543 = !DIGlobalVariableExpression(var: !1544, expr: !DIExpression())
!1544 = distinct !DIGlobalVariable(scope: null, file: !330, line: 89, type: !296, isLocal: true, isDefinition: true)
!1545 = !DIGlobalVariableExpression(var: !1546, expr: !DIExpression())
!1546 = distinct !DIGlobalVariable(name: "internal/task.goroutineID", linkageName: "internal/task.goroutineID", scope: !330, file: !330, line: 38, type: !43, isLocal: false, isDefinition: true, align: 64)
!1547 = !DIGlobalVariableExpression(var: !1548, expr: !DIExpression())
!1548 = distinct !DIGlobalVariable(scope: null, file: !330, line: 49, type: !431, isLocal: true, isDefinition: true)
!1549 = !DIGlobalVariableExpression(var: !1550, expr: !DIExpression())
!1550 = distinct !DIGlobalVariable(scope: null, file: !330, line: 106, type: !296, isLocal: true, isDefinition: true)
!1551 = !DIGlobalVariableExpression(var: !1552, expr: !DIExpression())
!1552 = distinct !DIGlobalVariable(scope: null, file: !330, line: 106, type: !28, isLocal: true, isDefinition: true)
!1553 = !DIGlobalVariableExpression(var: !1554, expr: !DIExpression())
!1554 = distinct !DIGlobalVariable(scope: null, file: !330, line: 116, type: !438, isLocal: true, isDefinition: true)
!1555 = !DIGlobalVariableExpression(var: !1556, expr: !DIExpression())
!1556 = distinct !DIGlobalVariable(name: "internal/task.stackScanLock", linkageName: "internal/task.stackScanLock", scope: !330, file: !330, line: 263, type: !384, isLocal: false, isDefinition: true, align: 32)
!1557 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1558 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1559)
!1559 = !{!407, !410, !1560, !412, !1563, !1566, !1568, !1570, !1572, !1574, !1577, !1579, !1581, !1584, !1587, !419, !422, !1590, !424, !1592, !1609, !1611, !1614, !1617, !426, !429, !434, !436, !1619, !439, !1621, !442, !447, !1623, !449, !1625, !454, !456, !1627, !1632, !1635, !1637, !1639, !458, !461, !463, !465, !467, !469, !471, !473, !1641, !1643, !475, !477, !479, !1645, !1647, !481, !483, !485, !1649, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !1655, !513, !1657, !1659, !1661, !1663, !1681, !1683, !1685, !1705, !1707, !1709, !1711, !1713, !1715, !1717, !1719, !515, !1721, !1723, !1726, !1728}
!1560 = !DIGlobalVariableExpression(var: !1561, expr: !DIExpression())
!1561 = distinct !DIGlobalVariable(name: "runtime.inf", linkageName: "runtime.inf", scope: !1562, file: !1562, line: 9, type: !797, isLocal: false, isDefinition: true, align: 64)
!1562 = !DIFile(filename: "float.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1563 = !DIGlobalVariableExpression(var: !1564, expr: !DIExpression())
!1564 = distinct !DIGlobalVariable(scope: null, file: !1565, line: 210, type: !438, isLocal: true, isDefinition: true)
!1565 = !DIFile(filename: "chan.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1566 = !DIGlobalVariableExpression(var: !1567, expr: !DIExpression())
!1567 = distinct !DIGlobalVariable(scope: null, file: !1565, line: 267, type: !438, isLocal: true, isDefinition: true)
!1568 = !DIGlobalVariableExpression(var: !1569, expr: !DIExpression())
!1569 = distinct !DIGlobalVariable(scope: null, file: !1565, line: 348, type: !388, isLocal: true, isDefinition: true)
!1570 = !DIGlobalVariableExpression(var: !1571, expr: !DIExpression())
!1571 = distinct !DIGlobalVariable(scope: null, file: !1565, line: 358, type: !441, isLocal: true, isDefinition: true)
!1572 = !DIGlobalVariableExpression(var: !1573, expr: !DIExpression())
!1573 = distinct !DIGlobalVariable(name: "runtime.chanSelectLock", linkageName: "runtime.chanSelectLock", scope: !1565, file: !1565, line: 402, type: !384, isLocal: false, isDefinition: true, align: 32)
!1574 = !DIGlobalVariableExpression(var: !1575, expr: !DIExpression())
!1575 = distinct !DIGlobalVariable(scope: null, file: !1576, line: 1, type: !431, isLocal: true, isDefinition: true)
!1576 = !DIFile(filename: "debug.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1577 = !DIGlobalVariableExpression(var: !1578, expr: !DIExpression())
!1578 = distinct !DIGlobalVariable(name: "type *string", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!1579 = !DIGlobalVariableExpression(var: !1580, expr: !DIExpression())
!1580 = distinct !DIGlobalVariable(name: "type string", scope: !78, file: !78, line: 1, type: !79, isLocal: false, isDefinition: true, align: 64)
!1581 = !DIGlobalVariableExpression(var: !1582, expr: !DIExpression())
!1582 = distinct !DIGlobalVariable(scope: null, file: !1583, line: 13, type: !71, isLocal: true, isDefinition: true)
!1583 = !DIFile(filename: "env.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1584 = !DIGlobalVariableExpression(var: !1585, expr: !DIExpression())
!1585 = distinct !DIGlobalVariable(name: "runtime.godebugUpdate", linkageName: "runtime.godebugUpdate", scope: !1586, file: !1586, line: 142, type: !657, isLocal: false, isDefinition: true, align: 64)
!1586 = !DIFile(filename: "runtime.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1587 = !DIGlobalVariableExpression(var: !1588, expr: !DIExpression())
!1588 = distinct !DIGlobalVariable(name: "runtime.buildVersion", linkageName: "runtime.buildVersion", scope: !1589, file: !1589, line: 10, type: !38, isLocal: false, isDefinition: true, align: 64)
!1589 = !DIFile(filename: "extern.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1590 = !DIGlobalVariableExpression(var: !1591, expr: !DIExpression())
!1591 = distinct !DIGlobalVariable(scope: null, file: !421, line: 61, type: !1014, isLocal: true, isDefinition: true)
!1592 = !DIGlobalVariableExpression(var: !1593, expr: !DIExpression())
!1593 = distinct !DIGlobalVariable(name: "runtime.gcMemStats", linkageName: "runtime.gcMemStats", scope: !421, file: !421, line: 112, type: !1594, isLocal: false, isDefinition: true, align: 64)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.libgc_prof_stats", baseType: !1595)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, size: 768, align: 64, elements: !1596)
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "heapsize_full", baseType: !43, size: 64, align: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "free_bytes_full", baseType: !43, size: 64, align: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "unmapped_bytes", baseType: !43, size: 64, align: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_allocd_since_gc", baseType: !43, size: 64, align: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "allocd_bytes_before_gc", baseType: !43, size: 64, align: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "non_gc_bytes", baseType: !43, size: 64, align: 64, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "gc_no", baseType: !43, size: 64, align: 64, offset: 384)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "markers_m1", baseType: !43, size: 64, align: 64, offset: 448)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_reclaimed_since_gc", baseType: !43, size: 64, align: 64, offset: 512)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_bytes_before_gc", baseType: !43, size: 64, align: 64, offset: 576)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "expl_freed_bytes_since_gc", baseType: !43, size: 64, align: 64, offset: 640)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "obtained_from_os_bytes", baseType: !43, size: 64, align: 64, offset: 704)
!1609 = !DIGlobalVariableExpression(var: !1610, expr: !DIExpression())
!1610 = distinct !DIGlobalVariable(scope: null, file: !421, line: 135, type: !1355, isLocal: true, isDefinition: true)
!1611 = !DIGlobalVariableExpression(var: !1612, expr: !DIExpression())
!1612 = distinct !DIGlobalVariable(scope: null, file: !1613, line: 616, type: !1154, isLocal: true, isDefinition: true)
!1613 = !DIFile(filename: "hashmap.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1614 = !DIGlobalVariableExpression(var: !1615, expr: !DIExpression())
!1615 = distinct !DIGlobalVariable(scope: null, file: !1616, line: 80, type: !1154, isLocal: true, isDefinition: true)
!1616 = !DIFile(filename: "interface.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1617 = !DIGlobalVariableExpression(var: !1618, expr: !DIExpression())
!1618 = distinct !DIGlobalVariable(scope: null, file: !1616, line: 89, type: !444, isLocal: true, isDefinition: true)
!1619 = !DIGlobalVariableExpression(var: !1620, expr: !DIExpression())
!1620 = distinct !DIGlobalVariable(scope: null, file: !428, line: 122, type: !444, isLocal: true, isDefinition: true)
!1621 = !DIGlobalVariableExpression(var: !1622, expr: !DIExpression())
!1622 = distinct !DIGlobalVariable(scope: null, file: !428, line: 189, type: !308, isLocal: true, isDefinition: true)
!1623 = !DIGlobalVariableExpression(var: !1624, expr: !DIExpression())
!1624 = distinct !DIGlobalVariable(scope: null, file: !428, line: 205, type: !431, isLocal: true, isDefinition: true)
!1625 = !DIGlobalVariableExpression(var: !1626, expr: !DIExpression())
!1626 = distinct !DIGlobalVariable(scope: null, file: !428, line: 217, type: !438, isLocal: true, isDefinition: true)
!1627 = !DIGlobalVariableExpression(var: !1628, expr: !DIExpression())
!1628 = distinct !DIGlobalVariable(scope: null, file: !428, line: 231, type: !1629, isLocal: true, isDefinition: true)
!1629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, align: 8, elements: !1630)
!1630 = !{!1631}
!1631 = !DISubrange(count: 52, lowerBound: 0)
!1632 = !DIGlobalVariableExpression(var: !1633, expr: !DIExpression())
!1633 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !1154, isLocal: true, isDefinition: true)
!1634 = !DIFile(filename: "poll.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1635 = !DIGlobalVariableExpression(var: !1636, expr: !DIExpression())
!1636 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !438, isLocal: true, isDefinition: true)
!1637 = !DIGlobalVariableExpression(var: !1638, expr: !DIExpression())
!1638 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !441, isLocal: true, isDefinition: true)
!1639 = !DIGlobalVariableExpression(var: !1640, expr: !DIExpression())
!1640 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !703, isLocal: true, isDefinition: true)
!1641 = !DIGlobalVariableExpression(var: !1642, expr: !DIExpression())
!1642 = distinct !DIGlobalVariable(scope: null, file: !460, line: 355, type: !28, isLocal: true, isDefinition: true)
!1643 = !DIGlobalVariableExpression(var: !1644, expr: !DIExpression())
!1644 = distinct !DIGlobalVariable(scope: null, file: !460, line: 357, type: !46, isLocal: true, isDefinition: true)
!1645 = !DIGlobalVariableExpression(var: !1646, expr: !DIExpression())
!1646 = distinct !DIGlobalVariable(scope: null, file: !1586, line: 36, type: !760, isLocal: true, isDefinition: true)
!1647 = !DIGlobalVariableExpression(var: !1648, expr: !DIExpression())
!1648 = distinct !DIGlobalVariable(scope: null, file: !1586, line: 97, type: !308, isLocal: true, isDefinition: true)
!1649 = !DIGlobalVariableExpression(var: !1650, expr: !DIExpression())
!1650 = distinct !DIGlobalVariable(name: "runtime.args", linkageName: "runtime.args", scope: !414, file: !414, line: 107, type: !1651, isLocal: false, isDefinition: true, align: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]string", size: 192, align: 64, elements: !1652)
!1652 = !{!1653, !42, !675}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !1654, size: 64, align: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64, dwarfAddressSpace: 0)
!1655 = !DIGlobalVariableExpression(var: !1656, expr: !DIExpression())
!1656 = distinct !DIGlobalVariable(name: "runtime.hasSignals", linkageName: "runtime.hasSignals", scope: !414, file: !414, line: 345, type: !371, isLocal: false, isDefinition: true, align: 8)
!1657 = !DIGlobalVariableExpression(var: !1658, expr: !DIExpression())
!1658 = distinct !DIGlobalVariable(scope: null, file: !414, line: 365, type: !703, isLocal: true, isDefinition: true)
!1659 = !DIGlobalVariableExpression(var: !1660, expr: !DIExpression())
!1660 = distinct !DIGlobalVariable(scope: null, file: !414, line: 382, type: !703, isLocal: true, isDefinition: true)
!1661 = !DIGlobalVariableExpression(var: !1662, expr: !DIExpression())
!1662 = distinct !DIGlobalVariable(scope: null, file: !414, line: 392, type: !703, isLocal: true, isDefinition: true)
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
!1682 = distinct !DIGlobalVariable(scope: null, file: !414, line: 458, type: !1290, isLocal: true, isDefinition: true)
!1683 = !DIGlobalVariableExpression(var: !1684, expr: !DIExpression())
!1684 = distinct !DIGlobalVariable(scope: null, file: !414, line: 514, type: !510, isLocal: true, isDefinition: true)
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
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !657, size: 128, align: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "arg", baseType: !1703, size: 128, align: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "any", baseType: !780)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "callback", baseType: !657, size: 128, align: 64, offset: 128)
!1705 = !DIGlobalVariableExpression(var: !1706, expr: !DIExpression())
!1706 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 12, type: !46, isLocal: true, isDefinition: true)
!1707 = !DIGlobalVariableExpression(var: !1708, expr: !DIExpression())
!1708 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 19, type: !46, isLocal: true, isDefinition: true)
!1709 = !DIGlobalVariableExpression(var: !1710, expr: !DIExpression())
!1710 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 26, type: !46, isLocal: true, isDefinition: true)
!1711 = !DIGlobalVariableExpression(var: !1712, expr: !DIExpression())
!1712 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 45, type: !760, isLocal: true, isDefinition: true)
!1713 = !DIGlobalVariableExpression(var: !1714, expr: !DIExpression())
!1714 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 51, type: !388, isLocal: true, isDefinition: true)
!1715 = !DIGlobalVariableExpression(var: !1716, expr: !DIExpression())
!1716 = distinct !DIGlobalVariable(name: "runtime.timerQueueLock", linkageName: "runtime.timerQueueLock", scope: !517, file: !517, line: 16, type: !384, isLocal: false, isDefinition: true, align: 32)
!1717 = !DIGlobalVariableExpression(var: !1718, expr: !DIExpression())
!1718 = distinct !DIGlobalVariable(name: "runtime.timerQueueStarted", linkageName: "runtime.timerQueueStarted", scope: !517, file: !517, line: 17, type: !371, isLocal: false, isDefinition: true, align: 8)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(name: "runtime.timerFutex", linkageName: "runtime.timerFutex", scope: !517, file: !517, line: 18, type: !358, isLocal: false, isDefinition: true, align: 32)
!1721 = !DIGlobalVariableExpression(var: !1722, expr: !DIExpression())
!1722 = distinct !DIGlobalVariable(name: "runtime.atomicsLock", linkageName: "runtime.atomicsLock", scope: !517, file: !517, line: 151, type: !385, isLocal: false, isDefinition: true, align: 32)
!1723 = !DIGlobalVariableExpression(var: !1724, expr: !DIExpression())
!1724 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !313, isLocal: true, isDefinition: true)
!1725 = !DIFile(filename: "sync.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !313, isLocal: true, isDefinition: true)
!1728 = !DIGlobalVariableExpression(var: !1729, expr: !DIExpression())
!1729 = distinct !DIGlobalVariable(scope: null, file: !1730, line: 45, type: !218, isLocal: true, isDefinition: true)
!1730 = !DIFile(filename: "time_go123.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1731 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1732 = !{!"TinyGo version 0.41.1"}
!1733 = !{i32 2, !"Debug Info Version", i32 3}
!1734 = !{i32 7, !"Dwarf Version", i32 4}
!1735 = distinct !DISubprogram(name: "math/bits.Len", linkageName: "math/bits.Len", scope: !772, file: !772, line: 302, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !1739)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!1738}
!1738 = !DIBasicType(name: "uint", size: 64, encoding: DW_ATE_unsigned)
!1739 = !{!1740}
!1740 = !DILocalVariable(name: "x", arg: 1, scope: !1735, file: !772, line: 302, type: !1738)
!1741 = !DILocation(line: 302, column: 6, scope: !1735)
!1742 = distinct !DISubprogram(name: "math.Sqrt", linkageName: "math.Sqrt", scope: !1743, file: !1743, line: 93, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !1746)
!1743 = !DIFile(filename: "sqrt.go", directory: "/usr/local/go/src/math")
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!797}
!1746 = !{!1747}
!1747 = !DILocalVariable(name: "x", arg: 1, scope: !1742, file: !1743, line: 93, type: !797)
!1748 = !DILocation(line: 93, column: 6, scope: !1742)
!1749 = distinct !DISubprogram(name: "sync/atomic.SwapUint32", linkageName: "sync/atomic.SwapUint32", scope: !1750, file: !1750, line: 77, type: !1751, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !1754)
!1750 = !DIFile(filename: "doc.go", directory: "/usr/local/go/src/sync/atomic")
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!1753, !98}
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64, dwarfAddressSpace: 0)
!1754 = !{!1755, !1756}
!1755 = !DILocalVariable(name: "addr", arg: 1, scope: !1749, file: !1750, line: 77, type: !1753)
!1756 = !DILocalVariable(name: "new", arg: 2, scope: !1749, file: !1750, line: 77, type: !98)
!1757 = !DILocation(line: 77, column: 6, scope: !1749)
!1758 = distinct !DISubprogram(name: "sync/atomic.CompareAndSwapUint32", linkageName: "sync/atomic.CompareAndSwapUint32", scope: !1750, file: !1750, line: 99, type: !1759, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !1761)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!1753, !98, !98}
!1761 = !{!1762, !1763, !1764}
!1762 = !DILocalVariable(name: "addr", arg: 1, scope: !1758, file: !1750, line: 99, type: !1753)
!1763 = !DILocalVariable(name: "old", arg: 2, scope: !1758, file: !1750, line: 99, type: !98)
!1764 = !DILocalVariable(name: "new", arg: 3, scope: !1758, file: !1750, line: 99, type: !98)
!1765 = !DILocation(line: 99, column: 6, scope: !1758)
!1766 = distinct !DISubprogram(name: "sync/atomic.AddUint32", linkageName: "sync/atomic.AddUint32", scope: !1750, file: !1750, line: 123, type: !1751, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !1767)
!1767 = !{!1768, !1769}
!1768 = !DILocalVariable(name: "addr", arg: 1, scope: !1766, file: !1750, line: 123, type: !1753)
!1769 = !DILocalVariable(name: "delta", arg: 2, scope: !1766, file: !1750, line: 123, type: !98)
!1770 = !DILocation(line: 123, column: 6, scope: !1766)
!1771 = distinct !DISubprogram(name: "sync/atomic.LoadUint32", linkageName: "sync/atomic.LoadUint32", scope: !1750, file: !1750, line: 183, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !1774)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!1753}
!1774 = !{!1775}
!1775 = !DILocalVariable(name: "addr", arg: 1, scope: !1771, file: !1750, line: 183, type: !1753)
!1776 = !DILocation(line: 183, column: 6, scope: !1771)
!1777 = distinct !DISubprogram(name: "sync/atomic.StoreUint32", linkageName: "sync/atomic.StoreUint32", scope: !1750, file: !1750, line: 205, type: !1751, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !1778)
!1778 = !{!1779, !1780}
!1779 = !DILocalVariable(name: "addr", arg: 1, scope: !1777, file: !1750, line: 205, type: !1753)
!1780 = !DILocalVariable(name: "val", arg: 2, scope: !1777, file: !1750, line: 205, type: !98)
!1781 = !DILocation(line: 205, column: 6, scope: !1777)
!1782 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Add", linkageName: "(*sync/atomic.Uint32).Add", scope: !1783, file: !1783, line: 161, type: !1784, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !1787)
!1783 = !DIFile(filename: "type.go", directory: "/usr/local/go/src/sync/atomic")
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!1786, !98}
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64, dwarfAddressSpace: 0)
!1787 = !{!1788, !1789}
!1788 = !DILocalVariable(name: "x", arg: 1, scope: !1782, file: !1783, line: 161, type: !1786)
!1789 = !DILocalVariable(name: "delta", arg: 2, scope: !1782, file: !1783, line: 161, type: !98)
!1790 = !DILocation(line: 161, column: 18, scope: !1782)
!1791 = !DILocation(line: 161, column: 69, scope: !1782)
!1792 = !DILocation(line: 161, column: 71, scope: !1782)
!1793 = !DILocation(line: 161, column: 74, scope: !1782)
!1794 = !DILocation(line: 161, column: 67, scope: !1782)
!1795 = !DILocation(line: 161, column: 51, scope: !1782)
!1796 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).CompareAndSwap", linkageName: "(*sync/atomic.Uint32).CompareAndSwap", scope: !1783, file: !1783, line: 156, type: !1797, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !1799)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!1786, !98, !98}
!1799 = !{!1800, !1801, !1802}
!1800 = !DILocalVariable(name: "x", arg: 1, scope: !1796, file: !1783, line: 156, type: !1786)
!1801 = !DILocalVariable(name: "old", arg: 2, scope: !1796, file: !1783, line: 156, type: !98)
!1802 = !DILocalVariable(name: "new", arg: 3, scope: !1796, file: !1783, line: 156, type: !98)
!1803 = !DILocation(line: 156, column: 18, scope: !1796)
!1804 = !DILocation(line: 157, column: 31, scope: !1796)
!1805 = !DILocation(line: 157, column: 33, scope: !1796)
!1806 = !DILocation(line: 157, column: 36, scope: !1796)
!1807 = !DILocation(line: 157, column: 41, scope: !1796)
!1808 = !DILocation(line: 157, column: 29, scope: !1796)
!1809 = !DILocation(line: 157, column: 2, scope: !1796)
!1810 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Load", linkageName: "(*sync/atomic.Uint32).Load", scope: !1783, file: !1783, line: 147, type: !1811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !1813)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!1786}
!1813 = !{!1814}
!1814 = !DILocalVariable(name: "x", arg: 1, scope: !1810, file: !1783, line: 147, type: !1786)
!1815 = !DILocation(line: 147, column: 18, scope: !1810)
!1816 = !DILocation(line: 147, column: 53, scope: !1810)
!1817 = !DILocation(line: 147, column: 55, scope: !1810)
!1818 = !DILocation(line: 147, column: 51, scope: !1810)
!1819 = !DILocation(line: 147, column: 34, scope: !1810)
!1820 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Store", linkageName: "(*sync/atomic.Uint32).Store", scope: !1783, file: !1783, line: 150, type: !1784, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !1821)
!1821 = !{!1822, !1823}
!1822 = !DILocalVariable(name: "x", arg: 1, scope: !1820, file: !1783, line: 150, type: !1786)
!1823 = !DILocalVariable(name: "val", arg: 2, scope: !1820, file: !1783, line: 150, type: !98)
!1824 = !DILocation(line: 150, column: 18, scope: !1820)
!1825 = !DILocation(line: 150, column: 51, scope: !1820)
!1826 = !DILocation(line: 150, column: 53, scope: !1820)
!1827 = !DILocation(line: 150, column: 56, scope: !1820)
!1828 = !DILocation(line: 150, column: 49, scope: !1820)
!1829 = !DILocation(line: 150, column: 62, scope: !1820)
!1830 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Swap", linkageName: "(*sync/atomic.Uint32).Swap", scope: !1783, file: !1783, line: 153, type: !1784, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !1831)
!1831 = !{!1832, !1833}
!1832 = !DILocalVariable(name: "x", arg: 1, scope: !1830, file: !1783, line: 153, type: !1786)
!1833 = !DILocalVariable(name: "new", arg: 2, scope: !1830, file: !1783, line: 153, type: !98)
!1834 = !DILocation(line: 153, column: 18, scope: !1830)
!1835 = !DILocation(line: 153, column: 69, scope: !1830)
!1836 = !DILocation(line: 153, column: 71, scope: !1830)
!1837 = !DILocation(line: 153, column: 74, scope: !1830)
!1838 = !DILocation(line: 153, column: 67, scope: !1830)
!1839 = !DILocation(line: 153, column: 50, scope: !1830)
!1840 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wait", linkageName: "(*internal/futex.Futex).Wait", scope: !1841, file: !1841, line: 25, type: !1842, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !1845)
!1841 = !DIFile(filename: "futex.go", directory: "/usr/local/lib/tinygo/src/internal/futex")
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!1844, !98}
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64, dwarfAddressSpace: 0)
!1845 = !{!1846, !1847}
!1846 = !DILocalVariable(name: "f", arg: 1, scope: !1840, file: !1841, line: 25, type: !1844)
!1847 = !DILocalVariable(name: "cmp", arg: 2, scope: !1840, file: !1841, line: 25, type: !98)
!1848 = !DILocation(line: 25, column: 17, scope: !1840)
!1849 = !DILocation(line: 26, column: 46, scope: !1840)
!1850 = !DILocation(line: 26, column: 48, scope: !1840)
!1851 = !DILocation(line: 26, column: 58, scope: !1840)
!1852 = !DILocation(line: 26, column: 19, scope: !1840)
!1853 = !DILocation(line: 44, column: 2, scope: !1840)
!1854 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wake", linkageName: "(*internal/futex.Futex).Wake", scope: !1841, file: !1841, line: 53, type: !1855, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !1857)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!1844}
!1857 = !{!1858}
!1858 = !DILocalVariable(name: "f", arg: 1, scope: !1854, file: !1841, line: 53, type: !1844)
!1859 = !DILocation(line: 53, column: 17, scope: !1854)
!1860 = !DILocation(line: 54, column: 46, scope: !1854)
!1861 = !DILocation(line: 54, column: 48, scope: !1854)
!1862 = !DILocation(line: 54, column: 19, scope: !1854)
!1863 = !DILocation(line: 55, column: 2, scope: !1854)
!1864 = distinct !DISubprogram(name: "(*internal/futex.Futex).WakeAll", linkageName: "(*internal/futex.Futex).WakeAll", scope: !1841, file: !1841, line: 58, type: !1855, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !1865)
!1865 = !{!1866}
!1866 = !DILocalVariable(name: "f", arg: 1, scope: !1864, file: !1841, line: 58, type: !1844)
!1867 = !DILocation(line: 58, column: 17, scope: !1864)
!1868 = !DILocation(line: 59, column: 50, scope: !1864)
!1869 = !DILocation(line: 59, column: 52, scope: !1864)
!1870 = !DILocation(line: 59, column: 23, scope: !1864)
!1871 = !DILocation(line: 60, column: 2, scope: !1864)
!1872 = distinct !DISubprogram(name: "(internal/gclayout.Layout).AsPtr", linkageName: "(internal/gclayout.Layout).AsPtr", scope: !1873, file: !1873, line: 26, type: !1874, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1023, retainedNodes: !1877)
!1873 = !DIFile(filename: "gclayout.go", directory: "/usr/local/lib/tinygo/src/internal/gclayout")
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!1876}
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/gclayout.Layout", baseType: !43)
!1877 = !{!1878}
!1878 = !DILocalVariable(name: "l", arg: 1, scope: !1872, file: !1873, line: 26, type: !1876)
!1879 = !DILocation(line: 26, column: 17, scope: !1872)
!1880 = !DILocation(line: 26, column: 64, scope: !1872)
!1881 = !DILocation(line: 26, column: 63, scope: !1872)
!1882 = !DILocation(line: 26, column: 42, scope: !1872)
!1883 = distinct !DISubprogram(name: "internal/itoa.Itoa", linkageName: "internal/itoa.Itoa", scope: !2, file: !2, line: 10, type: !1884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !1887)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!1886}
!1886 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!1887 = !{!1888}
!1888 = !DILocalVariable(name: "val", arg: 1, scope: !1883, file: !2, line: 10, type: !1886)
!1889 = !DILocation(line: 10, column: 6, scope: !1883)
!1890 = !DILocation(line: 11, column: 5, scope: !1883)
!1891 = !DILocation(line: 11, column: 9, scope: !1883)
!1892 = !DILocation(line: 0, scope: !1883)
!1893 = !DILocation(line: 12, column: 28, scope: !1883)
!1894 = !DILocation(line: 12, column: 27, scope: !1883)
!1895 = !DILocation(line: 12, column: 21, scope: !1883)
!1896 = !DILocation(line: 12, column: 14, scope: !1883)
!1897 = !DILocation(line: 12, column: 3, scope: !1883)
!1898 = !DILocation(line: 14, column: 20, scope: !1883)
!1899 = !DILocation(line: 14, column: 14, scope: !1883)
!1900 = !DILocation(line: 14, column: 2, scope: !1883)
!1901 = distinct !DISubprogram(name: "internal/itoa.Uitoa", linkageName: "internal/itoa.Uitoa", scope: !2, file: !2, line: 18, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !1902)
!1902 = !{!1903, !1904, !1905}
!1903 = !DILocalVariable(name: "val", arg: 1, scope: !1901, file: !2, line: 18, type: !1738)
!1904 = !DILocalVariable(name: "i", scope: !1901, file: !2, line: 23, type: !1886)
!1905 = !DILocalVariable(name: "q", scope: !1901, file: !2, line: 25, type: !1738)
!1906 = !DILocation(line: 18, column: 6, scope: !1901)
!1907 = !DILocation(line: 19, column: 5, scope: !1901)
!1908 = !DILocation(line: 19, column: 9, scope: !1901)
!1909 = !DILocation(line: 0, scope: !1901)
!1910 = !DILocation(line: 20, column: 3, scope: !1901)
!1911 = !DILocation(line: 22, column: 6, scope: !1901)
!1912 = !DILocation(line: 23, column: 2, scope: !1901)
!1913 = !DILocation(line: 18, column: 12, scope: !1901)
!1914 = !DILocation(line: 24, column: 6, scope: !1901)
!1915 = !DILocation(line: 24, column: 10, scope: !1901)
!1916 = !DILocation(line: 25, column: 8, scope: !1901)
!1917 = !DILocation(line: 25, column: 12, scope: !1901)
!1918 = !DILocation(line: 25, column: 3, scope: !1901)
!1919 = !DILocation(line: 26, column: 7, scope: !1901)
!1920 = !DILocation(line: 26, column: 23, scope: !1901)
!1921 = !DILocation(line: 26, column: 21, scope: !1901)
!1922 = !DILocation(line: 26, column: 29, scope: !1901)
!1923 = !DILocation(line: 26, column: 30, scope: !1901)
!1924 = !DILocation(line: 26, column: 27, scope: !1901)
!1925 = !DILocation(line: 26, column: 16, scope: !1901)
!1926 = !DILocation(line: 26, column: 6, scope: !1901)
!1927 = !DILocation(line: 27, column: 3, scope: !1901)
!1928 = !DILocation(line: 28, column: 9, scope: !1901)
!1929 = !DILocation(line: 28, column: 3, scope: !1901)
!1930 = !DILocation(line: 31, column: 6, scope: !1901)
!1931 = !DILocation(line: 31, column: 22, scope: !1901)
!1932 = !DILocation(line: 31, column: 20, scope: !1901)
!1933 = !DILocation(line: 31, column: 15, scope: !1901)
!1934 = !DILocation(line: 31, column: 5, scope: !1901)
!1935 = !DILocation(line: 32, column: 20, scope: !1901)
!1936 = !DILocation(line: 32, column: 19, scope: !1901)
!1937 = !DILocation(line: 32, column: 15, scope: !1901)
!1938 = !DILocation(line: 32, column: 2, scope: !1901)
!1939 = distinct !DISubprogram(name: "unicode/utf8.DecodeRuneInString", linkageName: "unicode/utf8.DecodeRuneInString", scope: !11, file: !11, line: 219, type: !1940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !1942)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!38}
!1942 = !{!1943, !1944, !1946}
!1943 = !DILocalVariable(name: "s", arg: 1, scope: !1939, file: !11, line: 219, type: !38)
!1944 = !DILocalVariable(name: "r", scope: !1939, file: !11, line: 219, type: !1945)
!1945 = !DIBasicType(name: "rune", size: 32, encoding: DW_ATE_signed)
!1946 = !DILocalVariable(name: "size", scope: !1939, file: !11, line: 219, type: !1886)
!1947 = !DILocation(line: 219, column: 6, scope: !1939)
!1948 = !DILocation(line: 223, column: 5, scope: !1939)
!1949 = !DILocation(line: 223, column: 7, scope: !1939)
!1950 = !DILocation(line: 0, scope: !1939)
!1951 = !DILocation(line: 223, column: 16, scope: !1939)
!1952 = !DILocation(line: 223, column: 17, scope: !1939)
!1953 = !DILocation(line: 223, column: 21, scope: !1939)
!1954 = !DILocation(line: 224, column: 15, scope: !1939)
!1955 = !DILocation(line: 224, column: 16, scope: !1939)
!1956 = !DILocation(line: 224, column: 14, scope: !1939)
!1957 = !DILocation(line: 224, column: 3, scope: !1939)
!1958 = !DILocation(line: 226, column: 36, scope: !1939)
!1959 = !DILocation(line: 226, column: 35, scope: !1939)
!1960 = !DILocation(line: 226, column: 3, scope: !1939)
!1961 = !DILocation(line: 226, column: 6, scope: !1939)
!1962 = !DILocation(line: 228, column: 2, scope: !1939)
!1963 = distinct !DISubprogram(name: "unicode/utf8.decodeRuneInStringSlow", linkageName: "unicode/utf8.decodeRuneInStringSlow", scope: !11, file: !11, line: 231, type: !1940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !1964)
!1964 = !{!1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974}
!1965 = !DILocalVariable(name: "s", arg: 1, scope: !1963, file: !11, line: 231, type: !38)
!1966 = !DILocalVariable(name: "n", scope: !1963, file: !11, line: 232, type: !1886)
!1967 = !DILocalVariable(name: "s0", scope: !1963, file: !11, line: 236, type: !535)
!1968 = !DILocalVariable(name: "x", scope: !1963, file: !11, line: 237, type: !4)
!1969 = !DILocalVariable(name: "mask", scope: !1963, file: !11, line: 242, type: !1945)
!1970 = !DILocalVariable(name: "sz", scope: !1963, file: !11, line: 245, type: !1886)
!1971 = !DILocalVariable(name: "accept", scope: !1963, file: !11, line: 246, type: !18)
!1972 = !DILocalVariable(name: "s1", scope: !1963, file: !11, line: 250, type: !535)
!1973 = !DILocalVariable(name: "s2", scope: !1963, file: !11, line: 257, type: !535)
!1974 = !DILocalVariable(name: "s3", scope: !1963, file: !11, line: 264, type: !535)
!1975 = !DILocation(line: 231, column: 6, scope: !1963)
!1976 = !DILocation(line: 232, column: 11, scope: !1963)
!1977 = !DILocation(line: 232, column: 10, scope: !1963)
!1978 = !DILocation(line: 232, column: 2, scope: !1963)
!1979 = !DILocation(line: 233, column: 5, scope: !1963)
!1980 = !DILocation(line: 233, column: 7, scope: !1963)
!1981 = !DILocation(line: 0, scope: !1963)
!1982 = !DILocation(line: 234, column: 3, scope: !1963)
!1983 = !DILocation(line: 236, column: 8, scope: !1963)
!1984 = !DILocation(line: 236, column: 9, scope: !1963)
!1985 = !DILocation(line: 236, column: 2, scope: !1963)
!1986 = !DILocation(line: 237, column: 13, scope: !1963)
!1987 = !DILocation(line: 237, column: 12, scope: !1963)
!1988 = !DILocation(line: 237, column: 2, scope: !1963)
!1989 = !DILocation(line: 238, column: 5, scope: !1963)
!1990 = !DILocation(line: 238, column: 7, scope: !1963)
!1991 = !DILocation(line: 242, column: 16, scope: !1963)
!1992 = !DILocation(line: 242, column: 15, scope: !1963)
!1993 = !DILocation(line: 242, column: 19, scope: !1963)
!1994 = !DILocation(line: 242, column: 25, scope: !1963)
!1995 = !DILocation(line: 242, column: 3, scope: !1963)
!1996 = !DILocation(line: 243, column: 15, scope: !1963)
!1997 = !DILocation(line: 243, column: 16, scope: !1963)
!1998 = !DILocation(line: 243, column: 14, scope: !1963)
!1999 = !DILocation(line: 243, column: 22, scope: !1963)
!2000 = !DILocation(line: 243, column: 20, scope: !1963)
!2001 = !DILocation(line: 243, column: 39, scope: !1963)
!2002 = !DILocation(line: 243, column: 38, scope: !1963)
!2003 = !DILocation(line: 243, column: 27, scope: !1963)
!2004 = !DILocation(line: 243, column: 3, scope: !1963)
!2005 = !DILocation(line: 245, column: 12, scope: !1963)
!2006 = !DILocation(line: 245, column: 14, scope: !1963)
!2007 = !DILocation(line: 245, column: 11, scope: !1963)
!2008 = !DILocation(line: 245, column: 2, scope: !1963)
!2009 = !DILocation(line: 246, column: 25, scope: !1963)
!2010 = !DILocation(line: 246, column: 26, scope: !1963)
!2011 = !DILocation(line: 246, column: 24, scope: !1963)
!2012 = !DILocation(line: 246, column: 2, scope: !1963)
!2013 = !DILocation(line: 247, column: 5, scope: !1963)
!2014 = !DILocation(line: 247, column: 9, scope: !1963)
!2015 = !DILocation(line: 247, column: 7, scope: !1963)
!2016 = !DILocation(line: 248, column: 3, scope: !1963)
!2017 = !DILocation(line: 250, column: 8, scope: !1963)
!2018 = !DILocation(line: 250, column: 9, scope: !1963)
!2019 = !DILocation(line: 250, column: 2, scope: !1963)
!2020 = !DILocation(line: 251, column: 5, scope: !1963)
!2021 = !DILocation(line: 251, column: 17, scope: !1963)
!2022 = !DILocation(line: 251, column: 8, scope: !1963)
!2023 = !DILocation(line: 252, column: 3, scope: !1963)
!2024 = !DILocation(line: 251, column: 30, scope: !1963)
!2025 = !DILocation(line: 251, column: 35, scope: !1963)
!2026 = !DILocation(line: 251, column: 33, scope: !1963)
!2027 = !DILocation(line: 254, column: 5, scope: !1963)
!2028 = !DILocation(line: 254, column: 8, scope: !1963)
!2029 = !DILocation(line: 255, column: 15, scope: !1963)
!2030 = !DILocation(line: 255, column: 17, scope: !1963)
!2031 = !DILocation(line: 255, column: 14, scope: !1963)
!2032 = !DILocation(line: 255, column: 24, scope: !1963)
!2033 = !DILocation(line: 255, column: 35, scope: !1963)
!2034 = !DILocation(line: 255, column: 37, scope: !1963)
!2035 = !DILocation(line: 255, column: 34, scope: !1963)
!2036 = !DILocation(line: 255, column: 28, scope: !1963)
!2037 = !DILocation(line: 255, column: 3, scope: !1963)
!2038 = !DILocation(line: 257, column: 8, scope: !1963)
!2039 = !DILocation(line: 257, column: 9, scope: !1963)
!2040 = !DILocation(line: 257, column: 2, scope: !1963)
!2041 = !DILocation(line: 258, column: 5, scope: !1963)
!2042 = !DILocation(line: 258, column: 8, scope: !1963)
!2043 = !DILocation(line: 259, column: 3, scope: !1963)
!2044 = !DILocation(line: 258, column: 25, scope: !1963)
!2045 = !DILocation(line: 258, column: 23, scope: !1963)
!2046 = !DILocation(line: 261, column: 5, scope: !1963)
!2047 = !DILocation(line: 261, column: 8, scope: !1963)
!2048 = !DILocation(line: 262, column: 15, scope: !1963)
!2049 = !DILocation(line: 262, column: 17, scope: !1963)
!2050 = !DILocation(line: 262, column: 14, scope: !1963)
!2051 = !DILocation(line: 262, column: 24, scope: !1963)
!2052 = !DILocation(line: 262, column: 36, scope: !1963)
!2053 = !DILocation(line: 262, column: 38, scope: !1963)
!2054 = !DILocation(line: 262, column: 35, scope: !1963)
!2055 = !DILocation(line: 262, column: 45, scope: !1963)
!2056 = !DILocation(line: 262, column: 29, scope: !1963)
!2057 = !DILocation(line: 262, column: 56, scope: !1963)
!2058 = !DILocation(line: 262, column: 58, scope: !1963)
!2059 = !DILocation(line: 262, column: 55, scope: !1963)
!2060 = !DILocation(line: 262, column: 49, scope: !1963)
!2061 = !DILocation(line: 262, column: 3, scope: !1963)
!2062 = !DILocation(line: 264, column: 8, scope: !1963)
!2063 = !DILocation(line: 264, column: 9, scope: !1963)
!2064 = !DILocation(line: 264, column: 2, scope: !1963)
!2065 = !DILocation(line: 265, column: 5, scope: !1963)
!2066 = !DILocation(line: 265, column: 8, scope: !1963)
!2067 = !DILocation(line: 266, column: 3, scope: !1963)
!2068 = !DILocation(line: 265, column: 25, scope: !1963)
!2069 = !DILocation(line: 265, column: 23, scope: !1963)
!2070 = !DILocation(line: 268, column: 14, scope: !1963)
!2071 = !DILocation(line: 268, column: 16, scope: !1963)
!2072 = !DILocation(line: 268, column: 13, scope: !1963)
!2073 = !DILocation(line: 268, column: 23, scope: !1963)
!2074 = !DILocation(line: 268, column: 35, scope: !1963)
!2075 = !DILocation(line: 268, column: 37, scope: !1963)
!2076 = !DILocation(line: 268, column: 34, scope: !1963)
!2077 = !DILocation(line: 268, column: 44, scope: !1963)
!2078 = !DILocation(line: 268, column: 28, scope: !1963)
!2079 = !DILocation(line: 268, column: 56, scope: !1963)
!2080 = !DILocation(line: 268, column: 58, scope: !1963)
!2081 = !DILocation(line: 268, column: 55, scope: !1963)
!2082 = !DILocation(line: 268, column: 65, scope: !1963)
!2083 = !DILocation(line: 268, column: 49, scope: !1963)
!2084 = !DILocation(line: 268, column: 76, scope: !1963)
!2085 = !DILocation(line: 268, column: 78, scope: !1963)
!2086 = !DILocation(line: 268, column: 75, scope: !1963)
!2087 = !DILocation(line: 268, column: 69, scope: !1963)
!2088 = !DILocation(line: 268, column: 2, scope: !1963)
!2089 = distinct !DISubprogram(name: "unicode/utf8.EncodeRune", linkageName: "unicode/utf8.EncodeRune", scope: !11, file: !11, line: 368, type: !2090, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2096)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!2092, !1945}
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]byte", size: 192, align: 64, elements: !2093)
!2093 = !{!2094, !42, !675}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !2095, size: 64, align: 64)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64, align: 64, dwarfAddressSpace: 0)
!2096 = !{!2097, !2098}
!2097 = !DILocalVariable(name: "p", arg: 1, scope: !2089, file: !11, line: 368, type: !2092)
!2098 = !DILocalVariable(name: "r", arg: 2, scope: !2089, file: !11, line: 368, type: !1945)
!2099 = !DILocation(line: 368, column: 6, scope: !2089)
!2100 = !DILocation(line: 370, column: 12, scope: !2089)
!2101 = !DILocation(line: 370, column: 15, scope: !2089)
!2102 = !DILocation(line: 0, scope: !2089)
!2103 = !DILocation(line: 371, column: 3, scope: !2089)
!2104 = !DILocation(line: 371, column: 15, scope: !2089)
!2105 = !DILocation(line: 371, column: 14, scope: !2089)
!2106 = !DILocation(line: 371, column: 4, scope: !2089)
!2107 = !DILocation(line: 372, column: 3, scope: !2089)
!2108 = !DILocation(line: 374, column: 28, scope: !2089)
!2109 = !DILocation(line: 374, column: 31, scope: !2089)
!2110 = !DILocation(line: 374, column: 27, scope: !2089)
!2111 = !DILocation(line: 374, column: 2, scope: !2089)
!2112 = distinct !DISubprogram(name: "unicode/utf8.encodeRuneNonASCII", linkageName: "unicode/utf8.encodeRuneNonASCII", scope: !11, file: !11, line: 377, type: !2090, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2113)
!2113 = !{!2114, !2115, !2116}
!2114 = !DILocalVariable(name: "p", arg: 1, scope: !2112, file: !11, line: 377, type: !2092)
!2115 = !DILocalVariable(name: "r", arg: 2, scope: !2112, file: !11, line: 377, type: !1945)
!2116 = !DILocalVariable(name: "i", scope: !2112, file: !11, line: 379, type: !98)
!2117 = !DILocation(line: 377, column: 6, scope: !2112)
!2118 = !DILocation(line: 379, column: 21, scope: !2112)
!2119 = !DILocation(line: 379, column: 9, scope: !2112)
!2120 = !DILocation(line: 380, column: 7, scope: !2112)
!2121 = !DILocation(line: 380, column: 9, scope: !2112)
!2122 = !DILocation(line: 0, scope: !2112)
!2123 = !DILocation(line: 381, column: 7, scope: !2112)
!2124 = !DILocation(line: 381, column: 8, scope: !2112)
!2125 = !DILocation(line: 382, column: 3, scope: !2112)
!2126 = !DILocation(line: 382, column: 20, scope: !2112)
!2127 = !DILocation(line: 382, column: 21, scope: !2112)
!2128 = !DILocation(line: 382, column: 19, scope: !2112)
!2129 = !DILocation(line: 382, column: 13, scope: !2112)
!2130 = !DILocation(line: 382, column: 4, scope: !2112)
!2131 = !DILocation(line: 383, column: 3, scope: !2112)
!2132 = !DILocation(line: 383, column: 20, scope: !2112)
!2133 = !DILocation(line: 383, column: 19, scope: !2112)
!2134 = !DILocation(line: 383, column: 22, scope: !2112)
!2135 = !DILocation(line: 383, column: 13, scope: !2112)
!2136 = !DILocation(line: 383, column: 4, scope: !2112)
!2137 = !DILocation(line: 384, column: 3, scope: !2112)
!2138 = !DILocation(line: 385, column: 7, scope: !2112)
!2139 = !DILocation(line: 385, column: 9, scope: !2112)
!2140 = !DILocation(line: 386, column: 7, scope: !2112)
!2141 = !DILocation(line: 386, column: 8, scope: !2112)
!2142 = !DILocation(line: 387, column: 3, scope: !2112)
!2143 = !DILocation(line: 387, column: 20, scope: !2112)
!2144 = !DILocation(line: 387, column: 21, scope: !2112)
!2145 = !DILocation(line: 387, column: 19, scope: !2112)
!2146 = !DILocation(line: 387, column: 13, scope: !2112)
!2147 = !DILocation(line: 387, column: 4, scope: !2112)
!2148 = !DILocation(line: 388, column: 3, scope: !2112)
!2149 = !DILocation(line: 388, column: 20, scope: !2112)
!2150 = !DILocation(line: 388, column: 21, scope: !2112)
!2151 = !DILocation(line: 388, column: 19, scope: !2112)
!2152 = !DILocation(line: 388, column: 25, scope: !2112)
!2153 = !DILocation(line: 388, column: 13, scope: !2112)
!2154 = !DILocation(line: 388, column: 4, scope: !2112)
!2155 = !DILocation(line: 389, column: 3, scope: !2112)
!2156 = !DILocation(line: 389, column: 20, scope: !2112)
!2157 = !DILocation(line: 389, column: 19, scope: !2112)
!2158 = !DILocation(line: 389, column: 22, scope: !2112)
!2159 = !DILocation(line: 389, column: 13, scope: !2112)
!2160 = !DILocation(line: 389, column: 4, scope: !2112)
!2161 = !DILocation(line: 390, column: 3, scope: !2112)
!2162 = !DILocation(line: 385, column: 40, scope: !2112)
!2163 = !DILocation(line: 385, column: 38, scope: !2112)
!2164 = !DILocation(line: 385, column: 45, scope: !2112)
!2165 = !DILocation(line: 385, column: 47, scope: !2112)
!2166 = !DILocation(line: 385, column: 42, scope: !2112)
!2167 = !DILocation(line: 391, column: 7, scope: !2112)
!2168 = !DILocation(line: 391, column: 9, scope: !2112)
!2169 = !DILocation(line: 391, column: 23, scope: !2112)
!2170 = !DILocation(line: 391, column: 25, scope: !2112)
!2171 = !DILocation(line: 391, column: 20, scope: !2112)
!2172 = !DILocation(line: 392, column: 7, scope: !2112)
!2173 = !DILocation(line: 392, column: 8, scope: !2112)
!2174 = !DILocation(line: 393, column: 3, scope: !2112)
!2175 = !DILocation(line: 393, column: 20, scope: !2112)
!2176 = !DILocation(line: 393, column: 21, scope: !2112)
!2177 = !DILocation(line: 393, column: 19, scope: !2112)
!2178 = !DILocation(line: 393, column: 13, scope: !2112)
!2179 = !DILocation(line: 393, column: 4, scope: !2112)
!2180 = !DILocation(line: 394, column: 3, scope: !2112)
!2181 = !DILocation(line: 394, column: 20, scope: !2112)
!2182 = !DILocation(line: 394, column: 21, scope: !2112)
!2183 = !DILocation(line: 394, column: 19, scope: !2112)
!2184 = !DILocation(line: 394, column: 26, scope: !2112)
!2185 = !DILocation(line: 394, column: 13, scope: !2112)
!2186 = !DILocation(line: 394, column: 4, scope: !2112)
!2187 = !DILocation(line: 395, column: 3, scope: !2112)
!2188 = !DILocation(line: 395, column: 20, scope: !2112)
!2189 = !DILocation(line: 395, column: 21, scope: !2112)
!2190 = !DILocation(line: 395, column: 19, scope: !2112)
!2191 = !DILocation(line: 395, column: 25, scope: !2112)
!2192 = !DILocation(line: 395, column: 13, scope: !2112)
!2193 = !DILocation(line: 395, column: 4, scope: !2112)
!2194 = !DILocation(line: 396, column: 3, scope: !2112)
!2195 = !DILocation(line: 396, column: 20, scope: !2112)
!2196 = !DILocation(line: 396, column: 19, scope: !2112)
!2197 = !DILocation(line: 396, column: 22, scope: !2112)
!2198 = !DILocation(line: 396, column: 13, scope: !2112)
!2199 = !DILocation(line: 396, column: 4, scope: !2112)
!2200 = !DILocation(line: 397, column: 3, scope: !2112)
!2201 = !DILocation(line: 399, column: 7, scope: !2112)
!2202 = !DILocation(line: 399, column: 8, scope: !2112)
!2203 = !DILocation(line: 400, column: 3, scope: !2112)
!2204 = !DILocation(line: 400, column: 4, scope: !2112)
!2205 = !DILocation(line: 401, column: 3, scope: !2112)
!2206 = !DILocation(line: 401, column: 4, scope: !2112)
!2207 = !DILocation(line: 402, column: 3, scope: !2112)
!2208 = !DILocation(line: 402, column: 4, scope: !2112)
!2209 = !DILocation(line: 403, column: 3, scope: !2112)
!2210 = distinct !DISubprogram(name: "unicode/utf8.ValidRune", linkageName: "unicode/utf8.ValidRune", scope: !11, file: !11, line: 577, type: !2211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2213)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!1945}
!2213 = !{!2214}
!2214 = !DILocalVariable(name: "r", arg: 1, scope: !2210, file: !11, line: 577, type: !1945)
!2215 = !DILocation(line: 577, column: 6, scope: !2210)
!2216 = !DILocation(line: 579, column: 12, scope: !2210)
!2217 = !DILocation(line: 579, column: 9, scope: !2210)
!2218 = !DILocation(line: 0, scope: !2210)
!2219 = !DILocation(line: 579, column: 17, scope: !2210)
!2220 = !DILocation(line: 579, column: 19, scope: !2210)
!2221 = !DILocation(line: 579, column: 14, scope: !2210)
!2222 = !DILocation(line: 580, column: 3, scope: !2210)
!2223 = !DILocation(line: 581, column: 22, scope: !2210)
!2224 = !DILocation(line: 581, column: 20, scope: !2210)
!2225 = !DILocation(line: 581, column: 27, scope: !2210)
!2226 = !DILocation(line: 581, column: 29, scope: !2210)
!2227 = !DILocation(line: 581, column: 24, scope: !2210)
!2228 = !DILocation(line: 582, column: 3, scope: !2210)
!2229 = !DILocation(line: 584, column: 2, scope: !2210)
!2230 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).Kind", linkageName: "(*internal/reflectlite.RawType).Kind", scope: !27, file: !27, line: 380, type: !2231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2233)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!1051}
!2233 = !{!2234, !2235}
!2234 = !DILocalVariable(name: "t", arg: 1, scope: !2230, file: !27, line: 380, type: !1051)
!2235 = !DILocalVariable(name: "tag", scope: !2230, file: !27, line: 385, type: !43)
!2236 = !DILocation(line: 380, column: 19, scope: !2230)
!2237 = !DILocation(line: 381, column: 5, scope: !2230)
!2238 = !DILocation(line: 381, column: 7, scope: !2230)
!2239 = !DILocation(line: 0, scope: !2230)
!2240 = !DILocation(line: 382, column: 3, scope: !2230)
!2241 = !DILocation(line: 385, column: 12, scope: !2230)
!2242 = !DILocation(line: 385, column: 20, scope: !2230)
!2243 = !DILocation(line: 385, column: 5, scope: !2230)
!2244 = !DILocation(line: 385, column: 24, scope: !2230)
!2245 = !DILocation(line: 385, column: 28, scope: !2230)
!2246 = !DILocation(line: 386, column: 3, scope: !2230)
!2247 = !DILocation(line: 389, column: 14, scope: !2230)
!2248 = !DILocation(line: 389, column: 16, scope: !2230)
!2249 = !DILocation(line: 389, column: 21, scope: !2230)
!2250 = !DILocation(line: 389, column: 2, scope: !2230)
!2251 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).elem", linkageName: "(*internal/reflectlite.RawType).elem", scope: !27, file: !27, line: 410, type: !2231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2252)
!2252 = !{!2253, !2254, !2255, !2256}
!2253 = !DILocalVariable(name: "t", arg: 1, scope: !2251, file: !27, line: 410, type: !1051)
!2254 = !DILocalVariable(name: "tag", scope: !2251, file: !27, line: 411, type: !43)
!2255 = !DILocalVariable(name: "underlying", scope: !2251, file: !27, line: 415, type: !1051)
!2256 = !DILocalVariable(name: "errTypeElem", scope: !2251, file: !27, line: 393, type: !33)
!2257 = !DILocation(line: 410, column: 19, scope: !2251)
!2258 = !DILocation(line: 411, column: 12, scope: !2251)
!2259 = !DILocation(line: 411, column: 20, scope: !2251)
!2260 = !DILocation(line: 411, column: 5, scope: !2251)
!2261 = !DILocation(line: 411, column: 24, scope: !2251)
!2262 = !DILocation(line: 411, column: 28, scope: !2251)
!2263 = !DILocation(line: 0, scope: !2251)
!2264 = !DILocation(line: 412, column: 47, scope: !2251)
!2265 = !DILocation(line: 412, column: 31, scope: !2251)
!2266 = !DILocation(line: 412, column: 3, scope: !2251)
!2267 = !DILocation(line: 415, column: 16, scope: !2251)
!2268 = !DILocation(line: 415, column: 28, scope: !2251)
!2269 = !DILocation(line: 415, column: 2, scope: !2251)
!2270 = !DILocation(line: 416, column: 9, scope: !2251)
!2271 = !DILocation(line: 416, column: 24, scope: !2251)
!2272 = !DILocation(line: 417, column: 7, scope: !2251)
!2273 = !DILocation(line: 418, column: 36, scope: !2251)
!2274 = !DILocation(line: 418, column: 49, scope: !2251)
!2275 = !DILocation(line: 418, column: 3, scope: !2251)
!2276 = !DILocation(line: 419, column: 7, scope: !2251)
!2277 = !DILocation(line: 420, column: 37, scope: !2251)
!2278 = !DILocation(line: 420, column: 50, scope: !2251)
!2279 = !DILocation(line: 420, column: 3, scope: !2251)
!2280 = !DILocation(line: 419, column: 13, scope: !2251)
!2281 = !DILocation(line: 419, column: 20, scope: !2251)
!2282 = !DILocation(line: 419, column: 27, scope: !2251)
!2283 = !DILocation(line: 422, column: 9, scope: !2251)
!2284 = !DILocation(line: 422, column: 8, scope: !2251)
!2285 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).Len", linkageName: "(*internal/reflectlite.RawType).Len", scope: !27, file: !27, line: 620, type: !2231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2286)
!2286 = !{!2287, !2288}
!2287 = !DILocalVariable(name: "t", arg: 1, scope: !2285, file: !27, line: 620, type: !1051)
!2288 = !DILocalVariable(name: "errTypeLen", scope: !2285, file: !27, line: 397, type: !33)
!2289 = !DILocation(line: 620, column: 19, scope: !2285)
!2290 = !DILocation(line: 621, column: 5, scope: !2285)
!2291 = !DILocation(line: 621, column: 11, scope: !2285)
!2292 = !DILocation(line: 621, column: 14, scope: !2285)
!2293 = !DILocation(line: 0, scope: !2285)
!2294 = !DILocation(line: 622, column: 9, scope: !2285)
!2295 = !DILocation(line: 622, column: 8, scope: !2285)
!2296 = !DILocation(line: 625, column: 41, scope: !2285)
!2297 = !DILocation(line: 625, column: 53, scope: !2285)
!2298 = !DILocation(line: 625, column: 58, scope: !2285)
!2299 = !DILocation(line: 625, column: 2, scope: !2285)
!2300 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).underlying", linkageName: "(*internal/reflectlite.RawType).underlying", scope: !27, file: !27, line: 263, type: !2231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2301)
!2301 = !{!2302}
!2302 = !DILocalVariable(name: "t", arg: 1, scope: !2300, file: !27, line: 263, type: !1051)
!2303 = !DILocation(line: 263, column: 19, scope: !2300)
!2304 = !DILocation(line: 264, column: 5, scope: !2300)
!2305 = !DILocation(line: 264, column: 14, scope: !2300)
!2306 = !DILocation(line: 0, scope: !2300)
!2307 = !DILocation(line: 265, column: 37, scope: !2300)
!2308 = !DILocation(line: 265, column: 41, scope: !2300)
!2309 = !DILocation(line: 265, column: 3, scope: !2300)
!2310 = !DILocation(line: 267, column: 9, scope: !2300)
!2311 = !DILocation(line: 267, column: 2, scope: !2300)
!2312 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).isNamed", linkageName: "(*internal/reflectlite.RawType).isNamed", scope: !27, file: !27, line: 274, type: !2231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2313)
!2313 = !{!2314, !2315}
!2314 = !DILocalVariable(name: "t", arg: 1, scope: !2312, file: !27, line: 274, type: !1051)
!2315 = !DILocalVariable(name: "tag", scope: !2312, file: !27, line: 275, type: !43)
!2316 = !DILocation(line: 274, column: 19, scope: !2312)
!2317 = !DILocation(line: 275, column: 12, scope: !2312)
!2318 = !DILocation(line: 275, column: 20, scope: !2312)
!2319 = !DILocation(line: 275, column: 5, scope: !2312)
!2320 = !DILocation(line: 275, column: 24, scope: !2312)
!2321 = !DILocation(line: 275, column: 28, scope: !2312)
!2322 = !DILocation(line: 0, scope: !2312)
!2323 = !DILocation(line: 276, column: 3, scope: !2312)
!2324 = !DILocation(line: 278, column: 9, scope: !2312)
!2325 = !DILocation(line: 278, column: 11, scope: !2312)
!2326 = !DILocation(line: 278, column: 15, scope: !2312)
!2327 = !DILocation(line: 278, column: 26, scope: !2312)
!2328 = !DILocation(line: 278, column: 2, scope: !2312)
!2329 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).ptrtag", linkageName: "(*internal/reflectlite.RawType).ptrtag", scope: !27, file: !27, line: 270, type: !2231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2330)
!2330 = !{!2331}
!2331 = !DILocalVariable(name: "t", arg: 1, scope: !2329, file: !27, line: 270, type: !1051)
!2332 = !DILocation(line: 270, column: 19, scope: !2329)
!2333 = !DILocation(line: 271, column: 32, scope: !2329)
!2334 = !DILocation(line: 271, column: 16, scope: !2329)
!2335 = !DILocation(line: 271, column: 36, scope: !2329)
!2336 = !DILocation(line: 271, column: 2, scope: !2329)
!2337 = distinct !DISubprogram(name: "(*internal/reflectlite.TypeError).Error", linkageName: "(*internal/reflectlite.TypeError).Error", scope: !27, file: !27, line: 1211, type: !2338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!33}
!2340 = !{!2341}
!2341 = !DILocalVariable(name: "e", arg: 1, scope: !2337, file: !27, line: 1211, type: !33)
!2342 = !DILocation(line: 1211, column: 21, scope: !2337)
!2343 = !DILocation(line: 1212, column: 44, scope: !2337)
!2344 = !DILocation(line: 1212, column: 46, scope: !2337)
!2345 = !DILocation(line: 1212, column: 42, scope: !2337)
!2346 = !DILocation(line: 1212, column: 53, scope: !2337)
!2347 = !DILocation(line: 1212, column: 2, scope: !2337)
!2348 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).ChanDir", linkageName: "(*internal/reflectlite.RawType).ChanDir", scope: !27, file: !27, line: 893, type: !2231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2349)
!2349 = !{!2350, !2351, !2352}
!2350 = !DILocalVariable(name: "t", arg: 1, scope: !2348, file: !27, line: 893, type: !1051)
!2351 = !DILocalVariable(name: "errTypeChanDir", scope: !2348, file: !27, line: 399, type: !33)
!2352 = !DILocalVariable(name: "dir", scope: !2348, file: !27, line: 898, type: !1886)
!2353 = !DILocation(line: 893, column: 19, scope: !2348)
!2354 = !DILocation(line: 894, column: 5, scope: !2348)
!2355 = !DILocation(line: 894, column: 11, scope: !2348)
!2356 = !DILocation(line: 894, column: 14, scope: !2348)
!2357 = !DILocation(line: 0, scope: !2348)
!2358 = !DILocation(line: 895, column: 9, scope: !2348)
!2359 = !DILocation(line: 895, column: 8, scope: !2348)
!2360 = !DILocation(line: 898, column: 40, scope: !2348)
!2361 = !DILocation(line: 898, column: 44, scope: !2348)
!2362 = !DILocation(line: 898, column: 12, scope: !2348)
!2363 = !DILocation(line: 898, column: 2, scope: !2348)
!2364 = !DILocation(line: 901, column: 17, scope: !2348)
!2365 = !DILocation(line: 901, column: 2, scope: !2348)
!2366 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).NumField", linkageName: "(*internal/reflectlite.RawType).NumField", scope: !27, file: !27, line: 630, type: !2231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2367)
!2367 = !{!2368, !2369}
!2368 = !DILocalVariable(name: "t", arg: 1, scope: !2366, file: !27, line: 630, type: !1051)
!2369 = !DILocalVariable(name: "errTypeNumField", scope: !2366, file: !27, line: 398, type: !33)
!2370 = !DILocation(line: 630, column: 19, scope: !2366)
!2371 = !DILocation(line: 631, column: 5, scope: !2366)
!2372 = !DILocation(line: 631, column: 11, scope: !2366)
!2373 = !DILocation(line: 631, column: 14, scope: !2366)
!2374 = !DILocation(line: 0, scope: !2366)
!2375 = !DILocation(line: 632, column: 9, scope: !2366)
!2376 = !DILocation(line: 632, column: 8, scope: !2366)
!2377 = !DILocation(line: 634, column: 42, scope: !2366)
!2378 = !DILocation(line: 634, column: 54, scope: !2366)
!2379 = !DILocation(line: 634, column: 59, scope: !2366)
!2380 = !DILocation(line: 634, column: 12, scope: !2366)
!2381 = !DILocation(line: 634, column: 2, scope: !2366)
!2382 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).String", linkageName: "(*internal/reflectlite.RawType).String", scope: !27, file: !27, line: 316, type: !2231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2383)
!2383 = !{!2384, !2385, !2386, !2387, !2388, !2389, !2390}
!2384 = !DILocalVariable(name: "t", arg: 1, scope: !2382, file: !27, line: 316, type: !1051)
!2385 = !DILocalVariable(name: "s", scope: !2382, file: !27, line: 318, type: !38)
!2386 = !DILocalVariable(name: "elem", scope: !2382, file: !27, line: 326, type: !38)
!2387 = !DILocalVariable(name: "numField", scope: !2382, file: !27, line: 352, type: !1886)
!2388 = !DILocalVariable(name: "s", scope: !2382, file: !27, line: 356, type: !38)
!2389 = !DILocalVariable(name: "i", scope: !2382, file: !27, line: 357, type: !1886)
!2390 = !DILocalVariable(name: "f", scope: !2382, file: !27, line: 358, type: !2391)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.rawStructField", baseType: !2392)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, size: 576, align: 64, elements: !2393)
!2393 = !{!670, !2394, !2395, !2396, !2398, !2399}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "PkgPath", baseType: !38, size: 128, align: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "Type", baseType: !1051, size: 64, align: 64, offset: 256)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "Tag", baseType: !2397, size: 128, align: 64, offset: 320)
!2397 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.StructTag", baseType: !38)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "Offset", baseType: !43, size: 64, align: 64, offset: 448)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "Anonymous", baseType: !371, size: 8, align: 8, offset: 512)
!2400 = !DILocation(line: 316, column: 19, scope: !2382)
!2401 = !DILocation(line: 317, column: 5, scope: !2382)
!2402 = !DILocation(line: 317, column: 14, scope: !2382)
!2403 = !DILocation(line: 0, scope: !2382)
!2404 = !DILocation(line: 318, column: 8, scope: !2382)
!2405 = !DILocation(line: 318, column: 14, scope: !2382)
!2406 = !DILocation(line: 318, column: 3, scope: !2382)
!2407 = !DILocation(line: 319, column: 6, scope: !2382)
!2408 = !DILocation(line: 319, column: 7, scope: !2382)
!2409 = !DILocation(line: 319, column: 11, scope: !2382)
!2410 = !DILocation(line: 320, column: 11, scope: !2382)
!2411 = !DILocation(line: 320, column: 12, scope: !2382)
!2412 = !DILocation(line: 320, column: 4, scope: !2382)
!2413 = !DILocation(line: 322, column: 10, scope: !2382)
!2414 = !DILocation(line: 322, column: 3, scope: !2382)
!2415 = !DILocation(line: 324, column: 9, scope: !2382)
!2416 = !DILocation(line: 324, column: 15, scope: !2382)
!2417 = !DILocation(line: 325, column: 7, scope: !2382)
!2418 = !DILocation(line: 326, column: 11, scope: !2382)
!2419 = !DILocation(line: 326, column: 17, scope: !2382)
!2420 = !DILocation(line: 326, column: 26, scope: !2382)
!2421 = !DILocation(line: 326, column: 3, scope: !2382)
!2422 = !DILocation(line: 327, column: 10, scope: !2382)
!2423 = !DILocation(line: 327, column: 19, scope: !2382)
!2424 = !DILocation(line: 328, column: 8, scope: !2382)
!2425 = !DILocation(line: 329, column: 23, scope: !2382)
!2426 = !DILocation(line: 329, column: 21, scope: !2382)
!2427 = !DILocation(line: 329, column: 4, scope: !2382)
!2428 = !DILocation(line: 330, column: 8, scope: !2382)
!2429 = !DILocation(line: 331, column: 23, scope: !2382)
!2430 = !DILocation(line: 331, column: 21, scope: !2382)
!2431 = !DILocation(line: 331, column: 4, scope: !2382)
!2432 = !DILocation(line: 332, column: 8, scope: !2382)
!2433 = !DILocation(line: 333, column: 7, scope: !2382)
!2434 = !DILocation(line: 333, column: 11, scope: !2382)
!2435 = !DILocation(line: 333, column: 15, scope: !2382)
!2436 = !DILocation(line: 338, column: 23, scope: !2382)
!2437 = !DILocation(line: 338, column: 21, scope: !2382)
!2438 = !DILocation(line: 338, column: 28, scope: !2382)
!2439 = !DILocation(line: 338, column: 5, scope: !2382)
!2440 = !DILocation(line: 340, column: 21, scope: !2382)
!2441 = !DILocation(line: 340, column: 19, scope: !2382)
!2442 = !DILocation(line: 340, column: 4, scope: !2382)
!2443 = !DILocation(line: 377, column: 9, scope: !2382)
!2444 = !DILocation(line: 377, column: 15, scope: !2382)
!2445 = !DILocation(line: 377, column: 24, scope: !2382)
!2446 = !DILocation(line: 377, column: 2, scope: !2382)
!2447 = !DILocation(line: 343, column: 7, scope: !2382)
!2448 = !DILocation(line: 344, column: 16, scope: !2382)
!2449 = !DILocation(line: 344, column: 22, scope: !2382)
!2450 = !DILocation(line: 344, column: 31, scope: !2382)
!2451 = !DILocation(line: 344, column: 14, scope: !2382)
!2452 = !DILocation(line: 344, column: 3, scope: !2382)
!2453 = !DILocation(line: 345, column: 7, scope: !2382)
!2454 = !DILocation(line: 346, column: 17, scope: !2382)
!2455 = !DILocation(line: 346, column: 23, scope: !2382)
!2456 = !DILocation(line: 346, column: 32, scope: !2382)
!2457 = !DILocation(line: 346, column: 15, scope: !2382)
!2458 = !DILocation(line: 346, column: 3, scope: !2382)
!2459 = !DILocation(line: 347, column: 7, scope: !2382)
!2460 = !DILocation(line: 348, column: 26, scope: !2382)
!2461 = !DILocation(line: 348, column: 31, scope: !2382)
!2462 = !DILocation(line: 348, column: 25, scope: !2382)
!2463 = !DILocation(line: 348, column: 14, scope: !2382)
!2464 = !DILocation(line: 348, column: 35, scope: !2382)
!2465 = !DILocation(line: 348, column: 43, scope: !2382)
!2466 = !DILocation(line: 348, column: 49, scope: !2382)
!2467 = !DILocation(line: 348, column: 58, scope: !2382)
!2468 = !DILocation(line: 348, column: 41, scope: !2382)
!2469 = !DILocation(line: 348, column: 3, scope: !2382)
!2470 = !DILocation(line: 349, column: 7, scope: !2382)
!2471 = !DILocation(line: 350, column: 19, scope: !2382)
!2472 = !DILocation(line: 350, column: 24, scope: !2382)
!2473 = !DILocation(line: 350, column: 33, scope: !2382)
!2474 = !DILocation(line: 350, column: 17, scope: !2382)
!2475 = !DILocation(line: 350, column: 36, scope: !2382)
!2476 = !DILocation(line: 350, column: 44, scope: !2382)
!2477 = !DILocation(line: 350, column: 50, scope: !2382)
!2478 = !DILocation(line: 350, column: 59, scope: !2382)
!2479 = !DILocation(line: 350, column: 42, scope: !2382)
!2480 = !DILocation(line: 350, column: 3, scope: !2382)
!2481 = !DILocation(line: 351, column: 7, scope: !2382)
!2482 = !DILocation(line: 352, column: 15, scope: !2382)
!2483 = !DILocation(line: 352, column: 25, scope: !2382)
!2484 = !DILocation(line: 352, column: 3, scope: !2382)
!2485 = !DILocation(line: 353, column: 6, scope: !2382)
!2486 = !DILocation(line: 353, column: 15, scope: !2382)
!2487 = !DILocation(line: 354, column: 4, scope: !2382)
!2488 = !DILocation(line: 356, column: 3, scope: !2382)
!2489 = !DILocation(line: 357, column: 7, scope: !2382)
!2490 = !DILocation(line: 357, column: 15, scope: !2382)
!2491 = !DILocation(line: 357, column: 19, scope: !2382)
!2492 = !DILocation(line: 357, column: 17, scope: !2382)
!2493 = !DILocation(line: 358, column: 9, scope: !2382)
!2494 = !DILocation(line: 358, column: 20, scope: !2382)
!2495 = !DILocation(line: 358, column: 19, scope: !2382)
!2496 = !DILocation(line: 358, column: 4, scope: !2382)
!2497 = !DILocation(line: 359, column: 17, scope: !2382)
!2498 = !DILocation(line: 359, column: 13, scope: !2382)
!2499 = !DILocation(line: 359, column: 22, scope: !2382)
!2500 = !DILocation(line: 359, column: 32, scope: !2382)
!2501 = !DILocation(line: 359, column: 43, scope: !2382)
!2502 = !DILocation(line: 359, column: 28, scope: !2382)
!2503 = !DILocation(line: 359, column: 4, scope: !2382)
!2504 = !DILocation(line: 360, column: 9, scope: !2382)
!2505 = !DILocation(line: 360, column: 13, scope: !2382)
!2506 = !DILocation(line: 361, column: 31, scope: !2382)
!2507 = !DILocation(line: 361, column: 21, scope: !2382)
!2508 = !DILocation(line: 361, column: 14, scope: !2382)
!2509 = !DILocation(line: 361, column: 5, scope: !2382)
!2510 = !DILocation(line: 364, column: 7, scope: !2382)
!2511 = !DILocation(line: 364, column: 11, scope: !2382)
!2512 = !DILocation(line: 364, column: 19, scope: !2382)
!2513 = !DILocation(line: 364, column: 9, scope: !2382)
!2514 = !DILocation(line: 365, column: 5, scope: !2382)
!2515 = !DILocation(line: 357, column: 29, scope: !2382)
!2516 = !DILocation(line: 368, column: 3, scope: !2382)
!2517 = !DILocation(line: 369, column: 10, scope: !2382)
!2518 = !DILocation(line: 369, column: 3, scope: !2382)
!2519 = !DILocation(line: 370, column: 7, scope: !2382)
!2520 = !DILocation(line: 372, column: 3, scope: !2382)
!2521 = !DILocation(line: 374, column: 10, scope: !2382)
!2522 = !DILocation(line: 374, column: 16, scope: !2382)
!2523 = !DILocation(line: 374, column: 25, scope: !2382)
!2524 = !DILocation(line: 374, column: 3, scope: !2382)
!2525 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).key", linkageName: "(*internal/reflectlite.RawType).key", scope: !27, file: !27, line: 426, type: !2231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2526)
!2526 = !{!2527, !2528, !2529}
!2527 = !DILocalVariable(name: "t", arg: 1, scope: !2525, file: !27, line: 426, type: !1051)
!2528 = !DILocalVariable(name: "underlying", scope: !2525, file: !27, line: 427, type: !1051)
!2529 = !DILocalVariable(name: "errTypeKey", scope: !2525, file: !27, line: 394, type: !33)
!2530 = !DILocation(line: 426, column: 19, scope: !2525)
!2531 = !DILocation(line: 427, column: 16, scope: !2525)
!2532 = !DILocation(line: 427, column: 28, scope: !2525)
!2533 = !DILocation(line: 427, column: 2, scope: !2525)
!2534 = !DILocation(line: 428, column: 5, scope: !2525)
!2535 = !DILocation(line: 428, column: 20, scope: !2525)
!2536 = !DILocation(line: 428, column: 23, scope: !2525)
!2537 = !DILocation(line: 0, scope: !2525)
!2538 = !DILocation(line: 429, column: 9, scope: !2525)
!2539 = !DILocation(line: 429, column: 8, scope: !2525)
!2540 = !DILocation(line: 431, column: 35, scope: !2525)
!2541 = !DILocation(line: 431, column: 48, scope: !2525)
!2542 = !DILocation(line: 431, column: 2, scope: !2525)
!2543 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).name", linkageName: "(*internal/reflectlite.RawType).name", scope: !27, file: !27, line: 939, type: !2231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2544)
!2544 = !{!2545, !2546, !2556, !2557}
!2545 = !DILocalVariable(name: "t", arg: 1, scope: !2543, file: !27, line: 939, type: !1051)
!2546 = !DILocalVariable(name: "ntype", scope: !2543, file: !27, line: 940, type: !2547)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64, align: 64, dwarfAddressSpace: 0)
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.namedType", baseType: !2549)
!2549 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !2550)
!2550 = !{!2551, !2552, !2553, !2554, !2555}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "RawType", baseType: !1052, size: 8, align: 8)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "numMethod", baseType: !90, size: 16, align: 16, offset: 16)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !1051, size: 64, align: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "elem", baseType: !1051, size: 64, align: 64, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", baseType: !2095, size: 64, align: 64, offset: 192)
!2556 = !DILocalVariable(name: "ptr", scope: !2543, file: !27, line: 942, type: !84)
!2557 = !DILocalVariable(name: "ms", scope: !2543, file: !27, line: 944, type: !2558)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64, align: 64, dwarfAddressSpace: 0)
!2559 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.methodSet", baseType: !2560)
!2560 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !2561)
!2561 = !{!1147, !2562}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !2563, align: 64, offset: 64)
!2563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, align: 64, elements: !121)
!2564 = !DILocation(line: 939, column: 19, scope: !2543)
!2565 = !DILocation(line: 940, column: 39, scope: !2543)
!2566 = !DILocation(line: 940, column: 2, scope: !2543)
!2567 = !DILocation(line: 942, column: 35, scope: !2543)
!2568 = !DILocation(line: 942, column: 19, scope: !2543)
!2569 = !DILocation(line: 942, column: 2, scope: !2543)
!2570 = !DILocation(line: 943, column: 5, scope: !2543)
!2571 = !DILocation(line: 943, column: 11, scope: !2543)
!2572 = !DILocation(line: 943, column: 20, scope: !2543)
!2573 = !DILocation(line: 943, column: 43, scope: !2543)
!2574 = !DILocation(line: 0, scope: !2543)
!2575 = !DILocation(line: 944, column: 22, scope: !2543)
!2576 = !DILocation(line: 944, column: 3, scope: !2543)
!2577 = !DILocation(line: 946, column: 20, scope: !2543)
!2578 = !DILocation(line: 946, column: 59, scope: !2543)
!2579 = !DILocation(line: 946, column: 62, scope: !2543)
!2580 = !DILocation(line: 946, column: 69, scope: !2543)
!2581 = !DILocation(line: 946, column: 50, scope: !2543)
!2582 = !DILocation(line: 946, column: 19, scope: !2543)
!2583 = !DILocation(line: 946, column: 3, scope: !2543)
!2584 = !DILocation(line: 948, column: 21, scope: !2543)
!2585 = !DILocation(line: 948, column: 20, scope: !2543)
!2586 = !DILocation(line: 948, column: 2, scope: !2543)
!2587 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).rawField", linkageName: "(*internal/reflectlite.RawType).rawField", scope: !27, file: !27, line: 484, type: !2588, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2590)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!1051, !1886}
!2590 = !{!2591, !2592, !2593, !2594, !2608, !2610, !2611, !2612, !2613, !2614}
!2591 = !DILocalVariable(name: "t", arg: 1, scope: !2587, file: !27, line: 484, type: !1051)
!2592 = !DILocalVariable(name: "n", arg: 2, scope: !2587, file: !27, line: 484, type: !1886)
!2593 = !DILocalVariable(name: "errTypeField", scope: !2587, file: !27, line: 395, type: !33)
!2594 = !DILocalVariable(name: "descriptor", scope: !2587, file: !27, line: 488, type: !2595)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64, align: 64, dwarfAddressSpace: 0)
!2596 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.structType", baseType: !2597)
!2597 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !2598)
!2598 = !{!2551, !2552, !2553, !2599, !97, !2600, !2601}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !2095, size: 64, align: 64, offset: 128)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "numField", baseType: !90, size: 16, align: 16, offset: 224)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !2602, size: 128, align: 64, offset: 256)
!2602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2603, size: 128, align: 64, elements: !5)
!2603 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.structField", baseType: !2604)
!2604 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !2605)
!2605 = !{!2606, !2607}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "fieldType", baseType: !1051, size: 64, align: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !84, size: 64, align: 64, offset: 64)
!2608 = !DILocalVariable(name: "field", scope: !2587, file: !27, line: 497, type: !2609)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64, align: 64, dwarfAddressSpace: 0)
!2610 = !DILocalVariable(name: "data", scope: !2587, file: !27, line: 498, type: !84)
!2611 = !DILocalVariable(name: "flagsByte", scope: !2587, file: !27, line: 502, type: !535)
!2612 = !DILocalVariable(name: "offset", scope: !2587, file: !27, line: 504, type: !98)
!2613 = !DILocalVariable(name: "lenOffs", scope: !2587, file: !27, line: 504, type: !1886)
!2614 = !DILocalVariable(name: "name", scope: !2587, file: !27, line: 507, type: !38)
!2615 = !DILocation(line: 484, column: 19, scope: !2587)
!2616 = !DILocation(line: 485, column: 5, scope: !2587)
!2617 = !DILocation(line: 485, column: 11, scope: !2587)
!2618 = !DILocation(line: 485, column: 14, scope: !2587)
!2619 = !DILocation(line: 0, scope: !2587)
!2620 = !DILocation(line: 486, column: 9, scope: !2587)
!2621 = !DILocation(line: 486, column: 8, scope: !2587)
!2622 = !DILocation(line: 488, column: 45, scope: !2587)
!2623 = !DILocation(line: 488, column: 57, scope: !2587)
!2624 = !DILocation(line: 488, column: 2, scope: !2587)
!2625 = !DILocation(line: 489, column: 10, scope: !2587)
!2626 = !DILocation(line: 489, column: 21, scope: !2587)
!2627 = !DILocation(line: 489, column: 32, scope: !2587)
!2628 = !DILocation(line: 489, column: 20, scope: !2587)
!2629 = !DILocation(line: 489, column: 13, scope: !2587)
!2630 = !DILocation(line: 490, column: 8, scope: !2587)
!2631 = !DILocation(line: 497, column: 53, scope: !2587)
!2632 = !DILocation(line: 497, column: 64, scope: !2587)
!2633 = !DILocation(line: 497, column: 70, scope: !2587)
!2634 = !DILocation(line: 497, column: 84, scope: !2587)
!2635 = !DILocation(line: 497, column: 86, scope: !2587)
!2636 = !DILocation(line: 497, column: 36, scope: !2587)
!2637 = !DILocation(line: 497, column: 2, scope: !2587)
!2638 = !DILocation(line: 498, column: 10, scope: !2587)
!2639 = !DILocation(line: 498, column: 16, scope: !2587)
!2640 = !DILocation(line: 498, column: 2, scope: !2587)
!2641 = !DILocation(line: 502, column: 24, scope: !2587)
!2642 = !DILocation(line: 502, column: 15, scope: !2587)
!2643 = !DILocation(line: 502, column: 2, scope: !2587)
!2644 = !DILocation(line: 503, column: 20, scope: !2587)
!2645 = !DILocation(line: 503, column: 19, scope: !2587)
!2646 = !DILocation(line: 503, column: 2, scope: !2587)
!2647 = !DILocation(line: 504, column: 52, scope: !2587)
!2648 = !DILocation(line: 504, column: 43, scope: !2587)
!2649 = !DILocation(line: 504, column: 30, scope: !2587)
!2650 = !DILocation(line: 504, column: 2, scope: !2587)
!2651 = !DILocation(line: 504, column: 10, scope: !2587)
!2652 = !DILocation(line: 505, column: 20, scope: !2587)
!2653 = !DILocation(line: 505, column: 26, scope: !2587)
!2654 = !DILocation(line: 505, column: 19, scope: !2587)
!2655 = !DILocation(line: 505, column: 2, scope: !2587)
!2656 = !DILocation(line: 507, column: 22, scope: !2587)
!2657 = !DILocation(line: 507, column: 21, scope: !2587)
!2658 = !DILocation(line: 507, column: 2, scope: !2587)
!2659 = !DILocation(line: 508, column: 20, scope: !2587)
!2660 = !DILocation(line: 508, column: 30, scope: !2587)
!2661 = !DILocation(line: 508, column: 29, scope: !2587)
!2662 = !DILocation(line: 508, column: 19, scope: !2587)
!2663 = !DILocation(line: 508, column: 2, scope: !2587)
!2664 = !DILocation(line: 510, column: 35, scope: !2587)
!2665 = !DILocation(line: 510, column: 47, scope: !2587)
!2666 = !DILocation(line: 510, column: 53, scope: !2587)
!2667 = !DILocation(line: 510, column: 64, scope: !2587)
!2668 = !DILocation(line: 510, column: 70, scope: !2587)
!2669 = !DILocation(line: 510, column: 81, scope: !2587)
!2670 = !DILocation(line: 510, column: 87, scope: !2587)
!2671 = !DILocation(line: 510, column: 34, scope: !2587)
!2672 = !DILocation(line: 510, column: 2, scope: !2587)
!2673 = distinct !DISubprogram(name: "internal/reflectlite.uvarint32", linkageName: "internal/reflectlite.uvarint32", scope: !27, file: !27, line: 1242, type: !2674, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2676)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!2092}
!2676 = !{!2677, !2678, !2679, !2680, !2681}
!2677 = !DILocalVariable(name: "buf", arg: 1, scope: !2673, file: !27, line: 1242, type: !2092)
!2678 = !DILocalVariable(name: "x", scope: !2673, file: !27, line: 1243, type: !98)
!2679 = !DILocalVariable(name: "s", scope: !2673, file: !27, line: 1244, type: !1738)
!2680 = !DILocalVariable(name: "i", scope: !2673, file: !27, line: 1245, type: !1886)
!2681 = !DILocalVariable(name: "b", scope: !2673, file: !27, line: 1245, type: !535)
!2682 = !DILocation(line: 1242, column: 6, scope: !2673)
!2683 = !DILocation(line: 1243, column: 6, scope: !2673)
!2684 = !DILocation(line: 1244, column: 6, scope: !2673)
!2685 = !DILocation(line: 1245, column: 20, scope: !2673)
!2686 = !DILocation(line: 0, scope: !2673)
!2687 = !DILocation(line: 1245, column: 6, scope: !2673)
!2688 = !DILocation(line: 1245, column: 9, scope: !2673)
!2689 = !DILocation(line: 1246, column: 6, scope: !2673)
!2690 = !DILocation(line: 1246, column: 8, scope: !2673)
!2691 = !DILocation(line: 1247, column: 11, scope: !2673)
!2692 = !DILocation(line: 1247, column: 22, scope: !2673)
!2693 = !DILocation(line: 1247, column: 21, scope: !2673)
!2694 = !DILocation(line: 1247, column: 26, scope: !2673)
!2695 = !DILocation(line: 1247, column: 24, scope: !2673)
!2696 = !DILocation(line: 1247, column: 13, scope: !2673)
!2697 = !DILocation(line: 1247, column: 29, scope: !2673)
!2698 = !DILocation(line: 1247, column: 31, scope: !2673)
!2699 = !DILocation(line: 1247, column: 4, scope: !2673)
!2700 = !DILocation(line: 1249, column: 15, scope: !2673)
!2701 = !DILocation(line: 1249, column: 16, scope: !2673)
!2702 = !DILocation(line: 1249, column: 14, scope: !2673)
!2703 = !DILocation(line: 1249, column: 26, scope: !2673)
!2704 = !DILocation(line: 1249, column: 23, scope: !2673)
!2705 = !DILocation(line: 1249, column: 3, scope: !2673)
!2706 = !DILocation(line: 1250, column: 3, scope: !2673)
!2707 = !DILocation(line: 1252, column: 2, scope: !2673)
!2708 = distinct !DISubprogram(name: "internal/reflectlite.readStringZ", linkageName: "internal/reflectlite.readStringZ", scope: !27, file: !27, line: 925, type: !2709, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2711)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!84}
!2711 = !{!2712, !2713, !2714}
!2712 = !DILocalVariable(name: "data", arg: 1, scope: !2708, file: !27, line: 925, type: !84)
!2713 = !DILocalVariable(name: "start", scope: !2708, file: !27, line: 926, type: !84)
!2714 = !DILocalVariable(name: "len", scope: !2708, file: !27, line: 927, type: !43)
!2715 = !DILocation(line: 925, column: 6, scope: !2708)
!2716 = !DILocation(line: 926, column: 11, scope: !2708)
!2717 = !DILocation(line: 926, column: 2, scope: !2708)
!2718 = !DILocation(line: 927, column: 6, scope: !2708)
!2719 = !DILocation(line: 0, scope: !2708)
!2720 = !DILocation(line: 925, column: 18, scope: !2708)
!2721 = !DILocation(line: 928, column: 15, scope: !2708)
!2722 = !DILocation(line: 928, column: 6, scope: !2708)
!2723 = !DILocation(line: 928, column: 21, scope: !2708)
!2724 = !DILocation(line: 929, column: 3, scope: !2708)
!2725 = !DILocation(line: 930, column: 21, scope: !2708)
!2726 = !DILocation(line: 930, column: 20, scope: !2708)
!2727 = !DILocation(line: 930, column: 3, scope: !2708)
!2728 = !DILocation(line: 933, column: 48, scope: !2708)
!2729 = !DILocation(line: 934, column: 7, scope: !2708)
!2730 = !DILocation(line: 934, column: 9, scope: !2708)
!2731 = !DILocation(line: 935, column: 6, scope: !2708)
!2732 = !DILocation(line: 935, column: 9, scope: !2708)
!2733 = !DILocation(line: 933, column: 9, scope: !2708)
!2734 = !DILocation(line: 933, column: 2, scope: !2708)
!2735 = distinct !DISubprogram(name: "internal/reflectlite.rawStructFieldFromPointer", linkageName: "internal/reflectlite.rawStructFieldFromPointer", scope: !27, file: !27, line: 449, type: !2736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!2595, !1051, !84, !4, !38, !98}
!2738 = !{!2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747}
!2739 = !DILocalVariable(name: "descriptor", arg: 1, scope: !2735, file: !27, line: 449, type: !2595)
!2740 = !DILocalVariable(name: "fieldType", arg: 2, scope: !2735, file: !27, line: 449, type: !1051)
!2741 = !DILocalVariable(name: "data", arg: 3, scope: !2735, file: !27, line: 449, type: !84)
!2742 = !DILocalVariable(name: "flagsByte", arg: 4, scope: !2735, file: !27, line: 449, type: !4)
!2743 = !DILocalVariable(name: "name", arg: 5, scope: !2735, file: !27, line: 449, type: !38)
!2744 = !DILocalVariable(name: "offset", arg: 6, scope: !2735, file: !27, line: 449, type: !98)
!2745 = !DILocalVariable(name: "tag", scope: !2735, file: !27, line: 451, type: !38)
!2746 = !DILocalVariable(name: "tagLen", scope: !2735, file: !27, line: 454, type: !43)
!2747 = !DILocalVariable(name: "pkgPath", scope: !2735, file: !27, line: 464, type: !38)
!2748 = !DILocation(line: 449, column: 6, scope: !2735)
!2749 = !DILocation(line: 451, column: 6, scope: !2735)
!2750 = !DILocation(line: 452, column: 5, scope: !2735)
!2751 = !DILocation(line: 452, column: 14, scope: !2735)
!2752 = !DILocation(line: 452, column: 37, scope: !2735)
!2753 = !DILocation(line: 0, scope: !2735)
!2754 = !DILocation(line: 453, column: 21, scope: !2735)
!2755 = !DILocation(line: 453, column: 20, scope: !2735)
!2756 = !DILocation(line: 453, column: 3, scope: !2735)
!2757 = !DILocation(line: 454, column: 30, scope: !2735)
!2758 = !DILocation(line: 454, column: 21, scope: !2735)
!2759 = !DILocation(line: 454, column: 20, scope: !2735)
!2760 = !DILocation(line: 454, column: 3, scope: !2735)
!2761 = !DILocation(line: 455, column: 21, scope: !2735)
!2762 = !DILocation(line: 455, column: 20, scope: !2735)
!2763 = !DILocation(line: 455, column: 3, scope: !2735)
!2764 = !DILocation(line: 456, column: 48, scope: !2735)
!2765 = !DILocation(line: 457, column: 8, scope: !2735)
!2766 = !DILocation(line: 457, column: 10, scope: !2735)
!2767 = !DILocation(line: 458, column: 7, scope: !2735)
!2768 = !DILocation(line: 458, column: 10, scope: !2735)
!2769 = !DILocation(line: 456, column: 9, scope: !2735)
!2770 = !DILocation(line: 456, column: 3, scope: !2735)
!2771 = !DILocation(line: 464, column: 2, scope: !2735)
!2772 = !DILocation(line: 465, column: 5, scope: !2735)
!2773 = !DILocation(line: 465, column: 14, scope: !2735)
!2774 = !DILocation(line: 465, column: 41, scope: !2735)
!2775 = !DILocation(line: 467, column: 40, scope: !2735)
!2776 = !DILocation(line: 467, column: 51, scope: !2735)
!2777 = !DILocation(line: 467, column: 24, scope: !2735)
!2778 = !DILocation(line: 467, column: 3, scope: !2735)
!2779 = !DILocation(line: 471, column: 7, scope: !2735)
!2780 = !DILocation(line: 471, column: 14, scope: !2735)
!2781 = !DILocation(line: 472, column: 10, scope: !2735)
!2782 = !DILocation(line: 472, column: 14, scope: !2735)
!2783 = !DILocation(line: 473, column: 7, scope: !2735)
!2784 = !DILocation(line: 473, column: 14, scope: !2735)
!2785 = !DILocation(line: 474, column: 6, scope: !2735)
!2786 = !DILocation(line: 474, column: 24, scope: !2735)
!2787 = !DILocation(line: 475, column: 12, scope: !2735)
!2788 = !DILocation(line: 475, column: 14, scope: !2735)
!2789 = !DILocation(line: 475, column: 23, scope: !2735)
!2790 = !DILocation(line: 475, column: 49, scope: !2735)
!2791 = !DILocation(line: 476, column: 9, scope: !2735)
!2792 = !DILocation(line: 476, column: 22, scope: !2735)
!2793 = !DILocation(line: 476, column: 21, scope: !2735)
!2794 = !DILocation(line: 470, column: 23, scope: !2735)
!2795 = !DILocation(line: 470, column: 2, scope: !2735)
!2796 = distinct !DISubprogram(name: "(internal/reflectlite.Kind).String", linkageName: "(internal/reflectlite.Kind).String", scope: !27, file: !27, line: 57, type: !2797, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2800)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!2799}
!2799 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.Kind", baseType: !4)
!2800 = !{!2801}
!2801 = !DILocalVariable(name: "k", arg: 1, scope: !2796, file: !27, line: 57, type: !2799)
!2802 = !DILocation(line: 57, column: 15, scope: !2796)
!2803 = !DILocation(line: 58, column: 9, scope: !2796)
!2804 = !DILocation(line: 59, column: 7, scope: !2796)
!2805 = !DILocation(line: 0, scope: !2796)
!2806 = !DILocation(line: 60, column: 3, scope: !2796)
!2807 = !DILocation(line: 61, column: 7, scope: !2796)
!2808 = !DILocation(line: 62, column: 3, scope: !2796)
!2809 = !DILocation(line: 63, column: 7, scope: !2796)
!2810 = !DILocation(line: 64, column: 3, scope: !2796)
!2811 = !DILocation(line: 65, column: 7, scope: !2796)
!2812 = !DILocation(line: 66, column: 3, scope: !2796)
!2813 = !DILocation(line: 67, column: 7, scope: !2796)
!2814 = !DILocation(line: 68, column: 3, scope: !2796)
!2815 = !DILocation(line: 69, column: 7, scope: !2796)
!2816 = !DILocation(line: 70, column: 3, scope: !2796)
!2817 = !DILocation(line: 71, column: 7, scope: !2796)
!2818 = !DILocation(line: 72, column: 3, scope: !2796)
!2819 = !DILocation(line: 73, column: 7, scope: !2796)
!2820 = !DILocation(line: 74, column: 3, scope: !2796)
!2821 = !DILocation(line: 75, column: 7, scope: !2796)
!2822 = !DILocation(line: 76, column: 3, scope: !2796)
!2823 = !DILocation(line: 77, column: 7, scope: !2796)
!2824 = !DILocation(line: 78, column: 3, scope: !2796)
!2825 = !DILocation(line: 79, column: 7, scope: !2796)
!2826 = !DILocation(line: 80, column: 3, scope: !2796)
!2827 = !DILocation(line: 81, column: 7, scope: !2796)
!2828 = !DILocation(line: 82, column: 3, scope: !2796)
!2829 = !DILocation(line: 83, column: 7, scope: !2796)
!2830 = !DILocation(line: 84, column: 3, scope: !2796)
!2831 = !DILocation(line: 85, column: 7, scope: !2796)
!2832 = !DILocation(line: 86, column: 3, scope: !2796)
!2833 = !DILocation(line: 87, column: 7, scope: !2796)
!2834 = !DILocation(line: 88, column: 3, scope: !2796)
!2835 = !DILocation(line: 89, column: 7, scope: !2796)
!2836 = !DILocation(line: 90, column: 3, scope: !2796)
!2837 = !DILocation(line: 91, column: 7, scope: !2796)
!2838 = !DILocation(line: 92, column: 3, scope: !2796)
!2839 = !DILocation(line: 93, column: 7, scope: !2796)
!2840 = !DILocation(line: 94, column: 3, scope: !2796)
!2841 = !DILocation(line: 95, column: 7, scope: !2796)
!2842 = !DILocation(line: 96, column: 3, scope: !2796)
!2843 = !DILocation(line: 97, column: 7, scope: !2796)
!2844 = !DILocation(line: 98, column: 3, scope: !2796)
!2845 = !DILocation(line: 99, column: 7, scope: !2796)
!2846 = !DILocation(line: 100, column: 3, scope: !2796)
!2847 = !DILocation(line: 101, column: 7, scope: !2796)
!2848 = !DILocation(line: 102, column: 3, scope: !2796)
!2849 = !DILocation(line: 103, column: 7, scope: !2796)
!2850 = !DILocation(line: 104, column: 3, scope: !2796)
!2851 = !DILocation(line: 105, column: 7, scope: !2796)
!2852 = !DILocation(line: 106, column: 3, scope: !2796)
!2853 = !DILocation(line: 107, column: 7, scope: !2796)
!2854 = !DILocation(line: 108, column: 3, scope: !2796)
!2855 = !DILocation(line: 109, column: 7, scope: !2796)
!2856 = !DILocation(line: 110, column: 3, scope: !2796)
!2857 = !DILocation(line: 111, column: 7, scope: !2796)
!2858 = !DILocation(line: 112, column: 3, scope: !2796)
!2859 = !DILocation(line: 114, column: 38, scope: !2796)
!2860 = !DILocation(line: 114, column: 32, scope: !2796)
!2861 = !DILocation(line: 114, column: 28, scope: !2796)
!2862 = !DILocation(line: 114, column: 17, scope: !2796)
!2863 = !DILocation(line: 114, column: 3, scope: !2796)
!2864 = distinct !DISubprogram(name: "internal/reflectlite.quote", linkageName: "internal/reflectlite.quote", scope: !111, file: !111, line: 238, type: !1940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2865)
!2865 = !{!2866, !2867, !2868, !2869}
!2866 = !DILocalVariable(name: "s", arg: 1, scope: !2864, file: !111, line: 238, type: !38)
!2867 = !DILocalVariable(name: "buf", scope: !2864, file: !111, line: 239, type: !2092)
!2868 = !DILocalVariable(name: "width", scope: !2864, file: !111, line: 243, type: !1886)
!2869 = !DILocalVariable(name: "r", scope: !2864, file: !111, line: 244, type: !1945)
!2870 = !DILocation(line: 238, column: 6, scope: !2864)
!2871 = !DILocation(line: 239, column: 31, scope: !2864)
!2872 = !DILocation(line: 239, column: 30, scope: !2864)
!2873 = !DILocation(line: 239, column: 26, scope: !2864)
!2874 = !DILocation(line: 239, column: 33, scope: !2864)
!2875 = !DILocation(line: 239, column: 13, scope: !2864)
!2876 = !DILocation(line: 239, column: 2, scope: !2864)
!2877 = !DILocation(line: 242, column: 15, scope: !2864)
!2878 = !DILocation(line: 242, column: 25, scope: !2864)
!2879 = !DILocation(line: 242, column: 14, scope: !2864)
!2880 = !DILocation(line: 242, column: 2, scope: !2864)
!2881 = !DILocation(line: 243, column: 6, scope: !2864)
!2882 = !DILocation(line: 0, scope: !2864)
!2883 = !DILocation(line: 238, column: 12, scope: !2864)
!2884 = !DILocation(line: 243, column: 22, scope: !2864)
!2885 = !DILocation(line: 243, column: 21, scope: !2864)
!2886 = !DILocation(line: 243, column: 25, scope: !2864)
!2887 = !DILocation(line: 244, column: 13, scope: !2864)
!2888 = !DILocation(line: 244, column: 14, scope: !2864)
!2889 = !DILocation(line: 244, column: 12, scope: !2864)
!2890 = !DILocation(line: 244, column: 3, scope: !2864)
!2891 = !DILocation(line: 245, column: 3, scope: !2864)
!2892 = !DILocation(line: 246, column: 6, scope: !2864)
!2893 = !DILocation(line: 246, column: 8, scope: !2864)
!2894 = !DILocation(line: 247, column: 39, scope: !2864)
!2895 = !DILocation(line: 247, column: 38, scope: !2864)
!2896 = !DILocation(line: 247, column: 4, scope: !2864)
!2897 = !DILocation(line: 247, column: 7, scope: !2864)
!2898 = !DILocation(line: 249, column: 6, scope: !2864)
!2899 = !DILocation(line: 249, column: 12, scope: !2864)
!2900 = !DILocation(line: 249, column: 20, scope: !2864)
!2901 = !DILocation(line: 249, column: 22, scope: !2864)
!2902 = !DILocation(line: 250, column: 17, scope: !2864)
!2903 = !DILocation(line: 250, column: 16, scope: !2864)
!2904 = !DILocation(line: 250, column: 4, scope: !2864)
!2905 = !DILocation(line: 251, column: 17, scope: !2864)
!2906 = !DILocation(line: 251, column: 31, scope: !2864)
!2907 = !DILocation(line: 251, column: 32, scope: !2864)
!2908 = !DILocation(line: 251, column: 35, scope: !2864)
!2909 = !DILocation(line: 251, column: 30, scope: !2864)
!2910 = !DILocation(line: 251, column: 39, scope: !2864)
!2911 = !DILocation(line: 251, column: 16, scope: !2864)
!2912 = !DILocation(line: 251, column: 4, scope: !2864)
!2913 = !DILocation(line: 252, column: 17, scope: !2864)
!2914 = !DILocation(line: 252, column: 31, scope: !2864)
!2915 = !DILocation(line: 252, column: 32, scope: !2864)
!2916 = !DILocation(line: 252, column: 35, scope: !2864)
!2917 = !DILocation(line: 252, column: 30, scope: !2864)
!2918 = !DILocation(line: 252, column: 40, scope: !2864)
!2919 = !DILocation(line: 252, column: 16, scope: !2864)
!2920 = !DILocation(line: 252, column: 4, scope: !2864)
!2921 = !DILocation(line: 243, column: 34, scope: !2864)
!2922 = !DILocation(line: 243, column: 36, scope: !2864)
!2923 = !DILocation(line: 243, column: 35, scope: !2864)
!2924 = !DILocation(line: 243, column: 30, scope: !2864)
!2925 = !DILocation(line: 255, column: 27, scope: !2864)
!2926 = !DILocation(line: 255, column: 32, scope: !2864)
!2927 = !DILocation(line: 255, column: 26, scope: !2864)
!2928 = !DILocation(line: 255, column: 3, scope: !2864)
!2929 = !DILocation(line: 257, column: 15, scope: !2864)
!2930 = !DILocation(line: 257, column: 25, scope: !2864)
!2931 = !DILocation(line: 257, column: 14, scope: !2864)
!2932 = !DILocation(line: 257, column: 2, scope: !2864)
!2933 = !DILocation(line: 258, column: 16, scope: !2864)
!2934 = !DILocation(line: 258, column: 15, scope: !2864)
!2935 = !DILocation(line: 258, column: 2, scope: !2864)
!2936 = distinct !DISubprogram(name: "internal/reflectlite.appendEscapedRune", linkageName: "internal/reflectlite.appendEscapedRune", scope: !111, file: !111, line: 261, type: !2090, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !2937)
!2937 = !{!2938, !2939, !2940, !2941, !2942}
!2938 = !DILocalVariable(name: "buf", arg: 1, scope: !2936, file: !111, line: 261, type: !2092)
!2939 = !DILocalVariable(name: "r", arg: 2, scope: !2936, file: !111, line: 261, type: !1945)
!2940 = !DILocalVariable(name: "n", scope: !2936, file: !111, line: 272, type: !1886)
!2941 = !DILocalVariable(name: "s", scope: !2936, file: !111, line: 302, type: !1886)
!2942 = !DILocalVariable(name: "s", scope: !2936, file: !111, line: 307, type: !1886)
!2943 = !DILocation(line: 261, column: 6, scope: !2936)
!2944 = !DILocation(line: 265, column: 6, scope: !2936)
!2945 = !DILocation(line: 266, column: 5, scope: !2936)
!2946 = !DILocation(line: 266, column: 7, scope: !2936)
!2947 = !DILocation(line: 0, scope: !2936)
!2948 = !DILocation(line: 267, column: 16, scope: !2936)
!2949 = !DILocation(line: 267, column: 25, scope: !2936)
!2950 = !DILocation(line: 267, column: 15, scope: !2936)
!2951 = !DILocation(line: 267, column: 3, scope: !2936)
!2952 = !DILocation(line: 268, column: 16, scope: !2936)
!2953 = !DILocation(line: 268, column: 26, scope: !2936)
!2954 = !DILocation(line: 268, column: 25, scope: !2936)
!2955 = !DILocation(line: 268, column: 28, scope: !2936)
!2956 = !DILocation(line: 268, column: 15, scope: !2936)
!2957 = !DILocation(line: 268, column: 3, scope: !2936)
!2958 = !DILocation(line: 269, column: 10, scope: !2936)
!2959 = !DILocation(line: 269, column: 3, scope: !2936)
!2960 = !DILocation(line: 266, column: 25, scope: !2936)
!2961 = !DILocation(line: 266, column: 27, scope: !2936)
!2962 = !DILocation(line: 271, column: 13, scope: !2936)
!2963 = !DILocation(line: 271, column: 12, scope: !2936)
!2964 = !DILocation(line: 272, column: 31, scope: !2936)
!2965 = !DILocation(line: 272, column: 36, scope: !2936)
!2966 = !DILocation(line: 272, column: 23, scope: !2936)
!2967 = !DILocation(line: 272, column: 3, scope: !2936)
!2968 = !DILocation(line: 273, column: 16, scope: !2936)
!2969 = !DILocation(line: 273, column: 30, scope: !2936)
!2970 = !DILocation(line: 273, column: 28, scope: !2936)
!2971 = !DILocation(line: 273, column: 15, scope: !2936)
!2972 = !DILocation(line: 273, column: 3, scope: !2936)
!2973 = !DILocation(line: 274, column: 10, scope: !2936)
!2974 = !DILocation(line: 274, column: 3, scope: !2936)
!2975 = !DILocation(line: 276, column: 9, scope: !2936)
!2976 = !DILocation(line: 277, column: 7, scope: !2936)
!2977 = !DILocation(line: 278, column: 16, scope: !2936)
!2978 = !DILocation(line: 278, column: 15, scope: !2936)
!2979 = !DILocation(line: 278, column: 3, scope: !2936)
!2980 = !DILocation(line: 261, column: 24, scope: !2936)
!2981 = !DILocation(line: 312, column: 9, scope: !2936)
!2982 = !DILocation(line: 312, column: 2, scope: !2936)
!2983 = !DILocation(line: 279, column: 7, scope: !2936)
!2984 = !DILocation(line: 280, column: 16, scope: !2936)
!2985 = !DILocation(line: 280, column: 15, scope: !2936)
!2986 = !DILocation(line: 280, column: 3, scope: !2936)
!2987 = !DILocation(line: 281, column: 7, scope: !2936)
!2988 = !DILocation(line: 282, column: 16, scope: !2936)
!2989 = !DILocation(line: 282, column: 15, scope: !2936)
!2990 = !DILocation(line: 282, column: 3, scope: !2936)
!2991 = !DILocation(line: 283, column: 7, scope: !2936)
!2992 = !DILocation(line: 284, column: 16, scope: !2936)
!2993 = !DILocation(line: 284, column: 15, scope: !2936)
!2994 = !DILocation(line: 284, column: 3, scope: !2936)
!2995 = !DILocation(line: 285, column: 7, scope: !2936)
!2996 = !DILocation(line: 286, column: 16, scope: !2936)
!2997 = !DILocation(line: 286, column: 15, scope: !2936)
!2998 = !DILocation(line: 286, column: 3, scope: !2936)
!2999 = !DILocation(line: 287, column: 7, scope: !2936)
!3000 = !DILocation(line: 288, column: 16, scope: !2936)
!3001 = !DILocation(line: 288, column: 15, scope: !2936)
!3002 = !DILocation(line: 288, column: 3, scope: !2936)
!3003 = !DILocation(line: 289, column: 7, scope: !2936)
!3004 = !DILocation(line: 290, column: 16, scope: !2936)
!3005 = !DILocation(line: 290, column: 15, scope: !2936)
!3006 = !DILocation(line: 290, column: 3, scope: !2936)
!3007 = !DILocation(line: 293, column: 8, scope: !2936)
!3008 = !DILocation(line: 293, column: 10, scope: !2936)
!3009 = !DILocation(line: 293, column: 16, scope: !2936)
!3010 = !DILocation(line: 294, column: 17, scope: !2936)
!3011 = !DILocation(line: 294, column: 16, scope: !2936)
!3012 = !DILocation(line: 294, column: 4, scope: !2936)
!3013 = !DILocation(line: 295, column: 17, scope: !2936)
!3014 = !DILocation(line: 295, column: 36, scope: !2936)
!3015 = !DILocation(line: 295, column: 35, scope: !2936)
!3016 = !DILocation(line: 295, column: 38, scope: !2936)
!3017 = !DILocation(line: 295, column: 30, scope: !2936)
!3018 = !DILocation(line: 295, column: 42, scope: !2936)
!3019 = !DILocation(line: 295, column: 16, scope: !2936)
!3020 = !DILocation(line: 295, column: 4, scope: !2936)
!3021 = !DILocation(line: 296, column: 17, scope: !2936)
!3022 = !DILocation(line: 296, column: 36, scope: !2936)
!3023 = !DILocation(line: 296, column: 35, scope: !2936)
!3024 = !DILocation(line: 296, column: 38, scope: !2936)
!3025 = !DILocation(line: 296, column: 30, scope: !2936)
!3026 = !DILocation(line: 296, column: 43, scope: !2936)
!3027 = !DILocation(line: 296, column: 16, scope: !2936)
!3028 = !DILocation(line: 296, column: 4, scope: !2936)
!3029 = !DILocation(line: 297, column: 24, scope: !2936)
!3030 = !DILocation(line: 297, column: 23, scope: !2936)
!3031 = !DILocation(line: 297, column: 8, scope: !2936)
!3032 = !DILocation(line: 298, column: 4, scope: !2936)
!3033 = !DILocation(line: 261, column: 36, scope: !2936)
!3034 = !DILocation(line: 301, column: 17, scope: !2936)
!3035 = !DILocation(line: 301, column: 16, scope: !2936)
!3036 = !DILocation(line: 301, column: 4, scope: !2936)
!3037 = !DILocation(line: 302, column: 8, scope: !2936)
!3038 = !DILocation(line: 302, column: 17, scope: !2936)
!3039 = !DILocation(line: 302, column: 19, scope: !2936)
!3040 = !DILocation(line: 303, column: 18, scope: !2936)
!3041 = !DILocation(line: 303, column: 32, scope: !2936)
!3042 = !DILocation(line: 303, column: 40, scope: !2936)
!3043 = !DILocation(line: 303, column: 33, scope: !2936)
!3044 = !DILocation(line: 303, column: 42, scope: !2936)
!3045 = !DILocation(line: 303, column: 31, scope: !2936)
!3046 = !DILocation(line: 303, column: 47, scope: !2936)
!3047 = !DILocation(line: 303, column: 17, scope: !2936)
!3048 = !DILocation(line: 303, column: 5, scope: !2936)
!3049 = !DILocation(line: 302, column: 25, scope: !2936)
!3050 = !DILocation(line: 300, column: 8, scope: !2936)
!3051 = !DILocation(line: 300, column: 10, scope: !2936)
!3052 = !DILocation(line: 306, column: 17, scope: !2936)
!3053 = !DILocation(line: 306, column: 16, scope: !2936)
!3054 = !DILocation(line: 306, column: 4, scope: !2936)
!3055 = !DILocation(line: 307, column: 8, scope: !2936)
!3056 = !DILocation(line: 307, column: 17, scope: !2936)
!3057 = !DILocation(line: 307, column: 19, scope: !2936)
!3058 = !DILocation(line: 308, column: 18, scope: !2936)
!3059 = !DILocation(line: 308, column: 32, scope: !2936)
!3060 = !DILocation(line: 308, column: 40, scope: !2936)
!3061 = !DILocation(line: 308, column: 33, scope: !2936)
!3062 = !DILocation(line: 308, column: 42, scope: !2936)
!3063 = !DILocation(line: 308, column: 31, scope: !2936)
!3064 = !DILocation(line: 308, column: 47, scope: !2936)
!3065 = !DILocation(line: 308, column: 17, scope: !2936)
!3066 = !DILocation(line: 308, column: 5, scope: !2936)
!3067 = !DILocation(line: 307, column: 25, scope: !2936)
!3068 = !DILocation(line: 293, column: 19, scope: !2936)
!3069 = !DILocation(line: 293, column: 21, scope: !2936)
!3070 = distinct !DISubprogram(name: "internal/reflectlite.isPrint", linkageName: "internal/reflectlite.isPrint", scope: !111, file: !111, line: 316, type: !2211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !3071)
!3071 = !{!3072}
!3072 = !DILocalVariable(name: "r", arg: 1, scope: !3070, file: !111, line: 316, type: !1945)
!3073 = !DILocation(line: 316, column: 6, scope: !3070)
!3074 = !DILocation(line: 317, column: 5, scope: !3070)
!3075 = !DILocation(line: 317, column: 7, scope: !3070)
!3076 = !DILocation(line: 0, scope: !3070)
!3077 = !DILocation(line: 318, column: 14, scope: !3070)
!3078 = !DILocation(line: 318, column: 11, scope: !3070)
!3079 = !DILocation(line: 318, column: 19, scope: !3070)
!3080 = !DILocation(line: 318, column: 21, scope: !3070)
!3081 = !DILocation(line: 320, column: 4, scope: !3070)
!3082 = !DILocation(line: 322, column: 14, scope: !3070)
!3083 = !DILocation(line: 322, column: 11, scope: !3070)
!3084 = !DILocation(line: 322, column: 19, scope: !3070)
!3085 = !DILocation(line: 322, column: 21, scope: !3070)
!3086 = !DILocation(line: 324, column: 11, scope: !3070)
!3087 = !DILocation(line: 324, column: 13, scope: !3070)
!3088 = !DILocation(line: 324, column: 4, scope: !3070)
!3089 = !DILocation(line: 326, column: 3, scope: !3070)
!3090 = !DILocation(line: 330, column: 2, scope: !3070)
!3091 = distinct !DISubprogram(name: "(internal/reflectlite.Kind).String$invoke", linkageName: "(internal/reflectlite.Kind).String$invoke", scope: !27, file: !27, line: 57, type: !2797, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034)
!3092 = !DILocation(line: 57, column: 15, scope: !3091)
!3093 = distinct !DISubprogram(name: "(*internal/reflectlite.ValueError).Error", linkageName: "(*internal/reflectlite.ValueError).Error", scope: !316, file: !316, line: 1789, type: !3094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !3101)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!3096}
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64, align: 64, dwarfAddressSpace: 0)
!3097 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.ValueError", baseType: !3098)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !3099)
!3099 = !{!37, !3100}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "Kind", baseType: !2799, size: 8, align: 8, offset: 128)
!3101 = !{!3102}
!3102 = !DILocalVariable(name: "e", arg: 1, scope: !3093, file: !316, line: 1789, type: !3096)
!3103 = !DILocation(line: 1789, column: 22, scope: !3093)
!3104 = !DILocation(line: 1790, column: 5, scope: !3093)
!3105 = !DILocation(line: 1790, column: 7, scope: !3093)
!3106 = !DILocation(line: 1790, column: 12, scope: !3093)
!3107 = !DILocation(line: 0, scope: !3093)
!3108 = !DILocation(line: 1791, column: 32, scope: !3093)
!3109 = !DILocation(line: 1791, column: 34, scope: !3093)
!3110 = !DILocation(line: 1791, column: 30, scope: !3093)
!3111 = !DILocation(line: 1791, column: 41, scope: !3093)
!3112 = !DILocation(line: 1791, column: 3, scope: !3093)
!3113 = !DILocation(line: 1793, column: 31, scope: !3093)
!3114 = !DILocation(line: 1793, column: 33, scope: !3093)
!3115 = !DILocation(line: 1793, column: 29, scope: !3093)
!3116 = !DILocation(line: 1793, column: 40, scope: !3093)
!3117 = !DILocation(line: 1793, column: 51, scope: !3093)
!3118 = !DILocation(line: 1793, column: 53, scope: !3093)
!3119 = !DILocation(line: 1793, column: 64, scope: !3093)
!3120 = !DILocation(line: 1793, column: 49, scope: !3093)
!3121 = !DILocation(line: 1793, column: 67, scope: !3093)
!3122 = !DILocation(line: 1793, column: 2, scope: !3093)
!3123 = distinct !DISubprogram(name: "(internal/reflectlite.badSyntax).Error", linkageName: "(internal/reflectlite.badSyntax).Error", scope: !111, file: !111, line: 16, type: !3124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!1197}
!3126 = !{!3127}
!3127 = !DILocalVariable(name: "arg0", arg: 1, scope: !3123, file: !111, line: 16, type: !1197)
!3128 = !DILocation(line: 17, column: 2, scope: !3123)
!3129 = distinct !DISubprogram(name: "(internal/reflectlite.badSyntax).Error$invoke", linkageName: "(internal/reflectlite.badSyntax).Error$invoke", scope: !111, file: !111, line: 16, type: !3124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034)
!3130 = !DILocation(line: 16, column: 18, scope: !3129)
!3131 = distinct !DISubprogram(name: "runtime/interrupt.In", linkageName: "runtime/interrupt.In", scope: !3132, file: !3132, line: 28, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1518)
!3132 = !DIFile(filename: "interrupt_none.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!3133 = !DISubroutineType(types: !342)
!3134 = !DILocation(line: 30, column: 2, scope: !3131)
!3135 = distinct !DISubprogram(name: "(*internal/task.Mutex).Lock", linkageName: "(*internal/task.Mutex).Lock", scope: !378, file: !378, line: 31, type: !3136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1529, retainedNodes: !3139)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!3138}
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64, dwarfAddressSpace: 0)
!3139 = !{!3140}
!3140 = !DILocalVariable(name: "m", arg: 1, scope: !3135, file: !378, line: 31, type: !3138)
!3141 = !DILocation(line: 31, column: 17, scope: !3135)
!3142 = !DILocation(line: 33, column: 5, scope: !3135)
!3143 = !DILocation(line: 33, column: 7, scope: !3135)
!3144 = !DILocation(line: 33, column: 27, scope: !3135)
!3145 = !DILocation(line: 0, scope: !3135)
!3146 = !DILocation(line: 35, column: 3, scope: !3135)
!3147 = !DILocation(line: 43, column: 6, scope: !3135)
!3148 = !DILocation(line: 43, column: 8, scope: !3135)
!3149 = !DILocation(line: 43, column: 18, scope: !3135)
!3150 = !DILocation(line: 43, column: 22, scope: !3135)
!3151 = !DILocation(line: 45, column: 3, scope: !3135)
!3152 = !DILocation(line: 45, column: 5, scope: !3135)
!3153 = !DILocation(line: 45, column: 15, scope: !3135)
!3154 = !DILocation(line: 47, column: 2, scope: !3135)
!3155 = distinct !DISubprogram(name: "(*internal/task.Mutex).Unlock", linkageName: "(*internal/task.Mutex).Unlock", scope: !378, file: !378, line: 49, type: !3136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1529, retainedNodes: !3156)
!3156 = !{!3157, !3158}
!3157 = !DILocalVariable(name: "m", arg: 1, scope: !3155, file: !378, line: 49, type: !3138)
!3158 = !DILocalVariable(name: "old", scope: !3155, file: !378, line: 50, type: !98)
!3159 = !DILocation(line: 49, column: 17, scope: !3155)
!3160 = !DILocation(line: 50, column: 12, scope: !3155)
!3161 = !DILocation(line: 50, column: 14, scope: !3155)
!3162 = !DILocation(line: 50, column: 24, scope: !3155)
!3163 = !DILocation(line: 50, column: 5, scope: !3155)
!3164 = !DILocation(line: 50, column: 29, scope: !3155)
!3165 = !DILocation(line: 50, column: 33, scope: !3155)
!3166 = !DILocation(line: 0, scope: !3155)
!3167 = !DILocation(line: 52, column: 8, scope: !3155)
!3168 = !DILocation(line: 53, column: 12, scope: !3155)
!3169 = !DILocation(line: 53, column: 16, scope: !3155)
!3170 = !DILocation(line: 55, column: 3, scope: !3155)
!3171 = !DILocation(line: 55, column: 5, scope: !3155)
!3172 = !DILocation(line: 55, column: 15, scope: !3155)
!3173 = !DILocation(line: 57, column: 2, scope: !3155)
!3174 = distinct !DISubprogram(name: "(*internal/task.Semaphore).Wait", linkageName: "(*internal/task.Semaphore).Wait", scope: !3175, file: !3175, line: 21, type: !3176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1529, retainedNodes: !3179)
!3175 = !DIFile(filename: "semaphore.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!3178}
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64, dwarfAddressSpace: 0)
!3179 = !{!3180, !3181, !3182}
!3180 = !DILocalVariable(name: "s", arg: 1, scope: !3174, file: !3175, line: 21, type: !3178)
!3181 = !DILocalVariable(name: "delta", scope: !3174, file: !3175, line: 22, type: !381)
!3182 = !DILocalVariable(name: "value", scope: !3174, file: !3175, line: 23, type: !98)
!3183 = !DILocation(line: 21, column: 21, scope: !3174)
!3184 = !DILocation(line: 22, column: 2, scope: !3174)
!3185 = !DILocation(line: 23, column: 11, scope: !3174)
!3186 = !DILocation(line: 23, column: 13, scope: !3174)
!3187 = !DILocation(line: 23, column: 30, scope: !3174)
!3188 = !DILocation(line: 23, column: 22, scope: !3174)
!3189 = !DILocation(line: 23, column: 2, scope: !3174)
!3190 = !DILocation(line: 0, scope: !3174)
!3191 = !DILocation(line: 25, column: 12, scope: !3174)
!3192 = !DILocation(line: 25, column: 19, scope: !3174)
!3193 = !DILocation(line: 27, column: 4, scope: !3174)
!3194 = !DILocation(line: 29, column: 3, scope: !3174)
!3195 = !DILocation(line: 29, column: 5, scope: !3174)
!3196 = !DILocation(line: 29, column: 16, scope: !3174)
!3197 = !DILocation(line: 29, column: 15, scope: !3174)
!3198 = !DILocation(line: 30, column: 11, scope: !3174)
!3199 = !DILocation(line: 30, column: 13, scope: !3174)
!3200 = !DILocation(line: 30, column: 23, scope: !3174)
!3201 = !DILocation(line: 30, column: 3, scope: !3174)
!3202 = distinct !DISubprogram(name: "internal/task.Init", linkageName: "internal/task.Init", scope: !330, file: !330, line: 55, type: !3203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1529, retainedNodes: !3205)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!43}
!3205 = !{!3206, !3207}
!3206 = !DILocalVariable(name: "sp", arg: 1, scope: !3202, file: !330, line: 55, type: !43)
!3207 = !DILocalVariable(name: "stackTop", scope: !3202, file: !330, line: 24, type: !43)
!3208 = !DILocation(line: 55, column: 6, scope: !3202)
!3209 = !DILocation(line: 56, column: 28, scope: !3202)
!3210 = !DILocation(line: 56, column: 17, scope: !3202)
!3211 = !DILocation(line: 57, column: 18, scope: !3202)
!3212 = !DILocation(line: 58, column: 2, scope: !3202)
!3213 = distinct !DISubprogram(name: "internal/task.Current", linkageName: "internal/task.Current", scope: !330, file: !330, line: 61, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1529, retainedNodes: !3214)
!3214 = !{!3215}
!3215 = !DILocalVariable(name: "t", scope: !3213, file: !330, line: 62, type: !331)
!3216 = !DILocation(line: 62, column: 34, scope: !3213)
!3217 = !DILocation(line: 62, column: 2, scope: !3213)
!3218 = !DILocation(line: 63, column: 5, scope: !3213)
!3219 = !DILocation(line: 63, column: 7, scope: !3213)
!3220 = !DILocation(line: 0, scope: !3213)
!3221 = !DILocation(line: 64, column: 15, scope: !3213)
!3222 = !DILocation(line: 66, column: 9, scope: !3213)
!3223 = !DILocation(line: 66, column: 2, scope: !3213)
!3224 = distinct !DISubprogram(name: "internal/task.Pause", linkageName: "internal/task.Pause", scope: !330, file: !330, line: 73, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1529, retainedNodes: !3225)
!3225 = !{!3226}
!3226 = !DILocalVariable(name: "t", scope: !3224, file: !330, line: 75, type: !331)
!3227 = !DILocation(line: 75, column: 14, scope: !3224)
!3228 = !DILocation(line: 75, column: 2, scope: !3224)
!3229 = !DILocation(line: 0, scope: !3224)
!3230 = !DILocation(line: 77, column: 27, scope: !3224)
!3231 = !DILocation(line: 77, column: 29, scope: !3224)
!3232 = !DILocation(line: 77, column: 35, scope: !3224)
!3233 = !DILocation(line: 77, column: 10, scope: !3224)
!3234 = !DILocation(line: 79, column: 2, scope: !3224)
!3235 = !DILocation(line: 79, column: 4, scope: !3224)
!3236 = !DILocation(line: 79, column: 10, scope: !3224)
!3237 = !DILocation(line: 79, column: 23, scope: !3224)
!3238 = !DILocation(line: 80, column: 2, scope: !3224)
!3239 = distinct !DISubprogram(name: "internal/task.taskExited", linkageName: "tinygo_task_exited", scope: !330, file: !330, line: 125, type: !3240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1529, retainedNodes: !3242)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!331}
!3242 = !{!3243, !3244, !3245, !3247}
!3243 = !DILocalVariable(name: "t", arg: 1, scope: !3239, file: !330, line: 125, type: !331)
!3244 = !DILocalVariable(name: "found", scope: !3239, file: !330, line: 133, type: !371)
!3245 = !DILocalVariable(name: "q", scope: !3239, file: !330, line: 134, type: !3246)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64, dwarfAddressSpace: 0)
!3247 = !DILocalVariable(name: "otherGoroutines", scope: !3239, file: !330, line: 99, type: !98)
!3248 = !DILocation(line: 125, column: 6, scope: !3239)
!3249 = !DILocation(line: 0, scope: !3239)
!3250 = !DILocation(line: 127, column: 24, scope: !3239)
!3251 = !DILocation(line: 127, column: 26, scope: !3239)
!3252 = !DILocation(line: 127, column: 32, scope: !3239)
!3253 = !DILocation(line: 127, column: 10, scope: !3239)
!3254 = !DILocation(line: 132, column: 21, scope: !3239)
!3255 = !DILocation(line: 133, column: 2, scope: !3239)
!3256 = !DILocation(line: 134, column: 6, scope: !3239)
!3257 = !DILocation(line: 134, column: 26, scope: !3239)
!3258 = !DILocation(line: 134, column: 25, scope: !3239)
!3259 = !DILocation(line: 134, column: 28, scope: !3239)
!3260 = !DILocation(line: 135, column: 7, scope: !3239)
!3261 = !DILocation(line: 135, column: 6, scope: !3239)
!3262 = !DILocation(line: 135, column: 12, scope: !3239)
!3263 = !DILocation(line: 135, column: 9, scope: !3239)
!3264 = !DILocation(line: 136, column: 5, scope: !3239)
!3265 = !DILocation(line: 136, column: 9, scope: !3239)
!3266 = !DILocation(line: 136, column: 11, scope: !3239)
!3267 = !DILocation(line: 136, column: 17, scope: !3239)
!3268 = !DILocation(line: 136, column: 4, scope: !3239)
!3269 = !DILocation(line: 137, column: 4, scope: !3239)
!3270 = !DILocation(line: 134, column: 43, scope: !3239)
!3271 = !DILocation(line: 134, column: 42, scope: !3239)
!3272 = !DILocation(line: 134, column: 46, scope: !3239)
!3273 = !DILocation(line: 134, column: 52, scope: !3239)
!3274 = !DILocation(line: 134, column: 36, scope: !3239)
!3275 = !DILocation(line: 141, column: 2, scope: !3239)
!3276 = !DILocation(line: 142, column: 23, scope: !3239)
!3277 = !DILocation(line: 145, column: 6, scope: !3239)
!3278 = !DILocation(line: 148, column: 2, scope: !3239)
!3279 = !DILocation(line: 146, column: 15, scope: !3239)
!3280 = distinct !DISubprogram(name: "(*internal/task.waitGroup).done", linkageName: "(*internal/task.waitGroup).done", scope: !330, file: !330, line: 163, type: !3281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1529, retainedNodes: !3284)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!3283}
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64, dwarfAddressSpace: 0)
!3284 = !{!3285}
!3285 = !DILocalVariable(name: "wg", arg: 1, scope: !3280, file: !330, line: 163, type: !3283)
!3286 = !DILocation(line: 163, column: 22, scope: !3280)
!3287 = !DILocation(line: 164, column: 5, scope: !3280)
!3288 = !DILocation(line: 164, column: 8, scope: !3280)
!3289 = !DILocation(line: 164, column: 13, scope: !3280)
!3290 = !DILocation(line: 164, column: 26, scope: !3280)
!3291 = !DILocation(line: 0, scope: !3280)
!3292 = !DILocation(line: 165, column: 3, scope: !3280)
!3293 = !DILocation(line: 165, column: 6, scope: !3280)
!3294 = !DILocation(line: 165, column: 15, scope: !3280)
!3295 = !DILocation(line: 167, column: 2, scope: !3280)
!3296 = distinct !DISubprogram(name: "(*internal/task.waitGroup).wait", linkageName: "(*internal/task.waitGroup).wait", scope: !330, file: !330, line: 169, type: !3281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1529, retainedNodes: !3297)
!3297 = !{!3298, !3299}
!3298 = !DILocalVariable(name: "wg", arg: 1, scope: !3296, file: !330, line: 169, type: !3283)
!3299 = !DILocalVariable(name: "val", scope: !3296, file: !330, line: 171, type: !98)
!3300 = !DILocation(line: 169, column: 22, scope: !3296)
!3301 = !DILocation(line: 0, scope: !3296)
!3302 = !DILocation(line: 171, column: 10, scope: !3296)
!3303 = !DILocation(line: 171, column: 13, scope: !3296)
!3304 = !DILocation(line: 171, column: 19, scope: !3296)
!3305 = !DILocation(line: 171, column: 3, scope: !3296)
!3306 = !DILocation(line: 172, column: 6, scope: !3296)
!3307 = !DILocation(line: 172, column: 10, scope: !3296)
!3308 = !DILocation(line: 173, column: 4, scope: !3296)
!3309 = !DILocation(line: 175, column: 3, scope: !3296)
!3310 = !DILocation(line: 175, column: 6, scope: !3296)
!3311 = !DILocation(line: 175, column: 13, scope: !3296)
!3312 = !DILocation(line: 175, column: 12, scope: !3296)
!3313 = distinct !DISubprogram(name: "internal/task.initWaitGroup", linkageName: "internal/task.initWaitGroup", scope: !330, file: !330, line: 157, type: !3314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1529, retainedNodes: !3316)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!98}
!3316 = !{!3317, !3318}
!3317 = !DILocalVariable(name: "n", arg: 1, scope: !3313, file: !330, line: 157, type: !98)
!3318 = !DILocalVariable(name: "wg", scope: !3313, file: !330, line: 158, type: !401)
!3319 = !DILocation(line: 157, column: 6, scope: !3313)
!3320 = !DILocation(line: 158, column: 6, scope: !3313)
!3321 = !DILocation(line: 159, column: 5, scope: !3313)
!3322 = !DILocation(line: 159, column: 2, scope: !3313)
!3323 = !DILocation(line: 159, column: 13, scope: !3313)
!3324 = !DILocation(line: 159, column: 12, scope: !3313)
!3325 = !DILocation(line: 160, column: 9, scope: !3313)
!3326 = !DILocation(line: 160, column: 2, scope: !3313)
!3327 = distinct !DISubprogram(name: "internal/task.GCStopWorldAndScan", linkageName: "internal/task.GCStopWorldAndScan", scope: !330, file: !330, line: 192, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1529, retainedNodes: !3328)
!3328 = !{!3329, !3330, !3331, !3332, !3333, !3334}
!3329 = !DILocalVariable(name: "current", scope: !3327, file: !330, line: 193, type: !331)
!3330 = !DILocalVariable(name: "otherGoroutines", scope: !3327, file: !330, line: 99, type: !98)
!3331 = !DILocalVariable(name: "scanWaitGroup", scope: !3327, file: !330, line: 151, type: !401)
!3332 = !DILocalVariable(name: "activeTasks", scope: !3327, file: !330, line: 45, type: !331)
!3333 = !DILocalVariable(name: "t", scope: !3327, file: !330, line: 212, type: !331)
!3334 = !DILocalVariable(name: "t", scope: !3327, file: !330, line: 223, type: !331)
!3335 = !DILocation(line: 193, column: 20, scope: !3327)
!3336 = !DILocation(line: 193, column: 2, scope: !3327)
!3337 = !DILocation(line: 196, column: 17, scope: !3327)
!3338 = !DILocation(line: 196, column: 20, scope: !3327)
!3339 = !DILocation(line: 0, scope: !3327)
!3340 = !DILocation(line: 199, column: 22, scope: !3327)
!3341 = !DILocation(line: 202, column: 21, scope: !3327)
!3342 = !DILocation(line: 206, column: 16, scope: !3327)
!3343 = !DILocation(line: 209, column: 33, scope: !3327)
!3344 = !DILocation(line: 209, column: 32, scope: !3327)
!3345 = !DILocation(line: 209, column: 3, scope: !3327)
!3346 = !DILocation(line: 212, column: 12, scope: !3327)
!3347 = !DILocation(line: 212, column: 7, scope: !3327)
!3348 = !DILocation(line: 212, column: 25, scope: !3327)
!3349 = !DILocation(line: 212, column: 27, scope: !3327)
!3350 = !DILocation(line: 213, column: 7, scope: !3327)
!3351 = !DILocation(line: 213, column: 12, scope: !3327)
!3352 = !DILocation(line: 213, column: 9, scope: !3327)
!3353 = !DILocation(line: 214, column: 32, scope: !3327)
!3354 = !DILocation(line: 214, column: 34, scope: !3327)
!3355 = !DILocation(line: 214, column: 40, scope: !3327)
!3356 = !DILocation(line: 214, column: 31, scope: !3327)
!3357 = !DILocation(line: 212, column: 39, scope: !3327)
!3358 = !DILocation(line: 212, column: 41, scope: !3327)
!3359 = !DILocation(line: 212, column: 47, scope: !3327)
!3360 = !DILocation(line: 212, column: 35, scope: !3327)
!3361 = !DILocation(line: 219, column: 21, scope: !3327)
!3362 = !DILocation(line: 223, column: 11, scope: !3327)
!3363 = !DILocation(line: 223, column: 6, scope: !3327)
!3364 = !DILocation(line: 223, column: 24, scope: !3327)
!3365 = !DILocation(line: 223, column: 26, scope: !3327)
!3366 = !DILocation(line: 224, column: 6, scope: !3327)
!3367 = !DILocation(line: 224, column: 11, scope: !3327)
!3368 = !DILocation(line: 224, column: 8, scope: !3327)
!3369 = !DILocation(line: 225, column: 14, scope: !3327)
!3370 = !DILocation(line: 225, column: 16, scope: !3327)
!3371 = !DILocation(line: 225, column: 22, scope: !3327)
!3372 = !DILocation(line: 225, column: 35, scope: !3327)
!3373 = !DILocation(line: 225, column: 37, scope: !3327)
!3374 = !DILocation(line: 225, column: 43, scope: !3327)
!3375 = !DILocation(line: 225, column: 13, scope: !3327)
!3376 = !DILocation(line: 223, column: 38, scope: !3327)
!3377 = !DILocation(line: 223, column: 40, scope: !3327)
!3378 = !DILocation(line: 223, column: 46, scope: !3327)
!3379 = !DILocation(line: 223, column: 34, scope: !3327)
!3380 = !DILocation(line: 230, column: 18, scope: !3327)
!3381 = !DILocation(line: 233, column: 15, scope: !3327)
!3382 = !DILocation(line: 234, column: 2, scope: !3327)
!3383 = distinct !DISubprogram(name: "internal/task.GCResumeWorld", linkageName: "internal/task.GCResumeWorld", scope: !330, file: !330, line: 237, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1529, retainedNodes: !3384)
!3384 = !{!3385, !3386}
!3385 = !DILocalVariable(name: "otherGoroutines", scope: !3383, file: !330, line: 99, type: !98)
!3386 = !DILocalVariable(name: "scanWaitGroup", scope: !3383, file: !330, line: 151, type: !401)
!3387 = !DILocation(line: 239, column: 17, scope: !3383)
!3388 = !DILocation(line: 239, column: 20, scope: !3383)
!3389 = !DILocation(line: 0, scope: !3383)
!3390 = !DILocation(line: 241, column: 3, scope: !3383)
!3391 = !DILocation(line: 245, column: 32, scope: !3383)
!3392 = !DILocation(line: 245, column: 31, scope: !3383)
!3393 = !DILocation(line: 245, column: 2, scope: !3383)
!3394 = !DILocation(line: 248, column: 15, scope: !3383)
!3395 = !DILocation(line: 251, column: 17, scope: !3383)
!3396 = !DILocation(line: 254, column: 23, scope: !3383)
!3397 = !DILocation(line: 255, column: 2, scope: !3383)
!3398 = distinct !DISubprogram(name: "internal/task.tingyo_task_gc_pause", linkageName: "tinygo_task_gc_pause", scope: !330, file: !330, line: 266, type: !3399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1529, retainedNodes: !3401)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!381}
!3401 = !{!3402, !3403}
!3402 = !DILocalVariable(name: "sig", arg: 1, scope: !3398, file: !330, line: 266, type: !381)
!3403 = !DILocalVariable(name: "stackBottom", scope: !3398, file: !330, line: 28, type: !43)
!3404 = !DILocation(line: 266, column: 6, scope: !3398)
!3405 = !DILocation(line: 268, column: 9, scope: !3398)
!3406 = !DILocation(line: 268, column: 12, scope: !3398)
!3407 = !DILocation(line: 268, column: 49, scope: !3398)
!3408 = !DILocation(line: 268, column: 39, scope: !3398)
!3409 = !DILocation(line: 268, column: 18, scope: !3398)
!3410 = !DILocation(line: 271, column: 20, scope: !3398)
!3411 = !DILocation(line: 0, scope: !3398)
!3412 = !DILocation(line: 274, column: 18, scope: !3398)
!3413 = !DILocation(line: 274, column: 21, scope: !3398)
!3414 = !DILocation(line: 275, column: 15, scope: !3398)
!3415 = !DILocation(line: 279, column: 20, scope: !3398)
!3416 = !DILocation(line: 280, column: 2, scope: !3398)
!3417 = distinct !DISubprogram(name: "internal/task.StackTop", linkageName: "internal/task.StackTop", scope: !330, file: !330, line: 289, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1529)
!3418 = !DILocation(line: 290, column: 16, scope: !3417)
!3419 = !DILocation(line: 290, column: 19, scope: !3417)
!3420 = !DILocation(line: 290, column: 25, scope: !3417)
!3421 = !DILocation(line: 290, column: 2, scope: !3417)
!3422 = distinct !DISubprogram(name: "runtime.alloc", linkageName: "runtime.alloc", scope: !421, file: !421, line: 68, type: !3423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3425)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!43, !84}
!3425 = !{!3426, !3427, !3428}
!3426 = !DILocalVariable(name: "size", arg: 1, scope: !3422, file: !421, line: 68, type: !43)
!3427 = !DILocalVariable(name: "layout", arg: 2, scope: !3422, file: !421, line: 68, type: !84)
!3428 = !DILocalVariable(name: "ptr", scope: !3422, file: !421, line: 74, type: !84)
!3429 = !DILocation(line: 68, column: 6, scope: !3422)
!3430 = !DILocation(line: 69, column: 5, scope: !3422)
!3431 = !DILocation(line: 69, column: 10, scope: !3422)
!3432 = !DILocation(line: 0, scope: !3422)
!3433 = !DILocation(line: 70, column: 3, scope: !3422)
!3434 = !DILocation(line: 73, column: 13, scope: !3422)
!3435 = !DILocation(line: 74, column: 6, scope: !3422)
!3436 = !DILocation(line: 75, column: 5, scope: !3422)
!3437 = !DILocation(line: 75, column: 36, scope: !3422)
!3438 = !DILocation(line: 75, column: 12, scope: !3422)
!3439 = !DILocation(line: 79, column: 29, scope: !3422)
!3440 = !DILocation(line: 79, column: 28, scope: !3422)
!3441 = !DILocation(line: 79, column: 3, scope: !3422)
!3442 = !DILocation(line: 82, column: 11, scope: !3422)
!3443 = !DILocation(line: 82, column: 16, scope: !3422)
!3444 = !DILocation(line: 82, column: 10, scope: !3422)
!3445 = !DILocation(line: 90, column: 15, scope: !3422)
!3446 = !DILocation(line: 91, column: 15, scope: !3422)
!3447 = !DILocation(line: 92, column: 5, scope: !3422)
!3448 = !DILocation(line: 92, column: 9, scope: !3422)
!3449 = !DILocation(line: 93, column: 15, scope: !3422)
!3450 = !DILocation(line: 96, column: 9, scope: !3422)
!3451 = !DILocation(line: 96, column: 2, scope: !3422)
!3452 = !DILocation(line: 86, column: 22, scope: !3422)
!3453 = !DILocation(line: 86, column: 21, scope: !3422)
!3454 = !DILocation(line: 86, column: 3, scope: !3422)
!3455 = distinct !DISubprogram(name: "runtime.memzero", linkageName: "runtime.memzero", scope: !1586, file: !1586, line: 53, type: !3456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3458)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!84, !43}
!3458 = !{!3459, !3460}
!3459 = !DILocalVariable(name: "ptr", arg: 1, scope: !3455, file: !1586, line: 53, type: !84)
!3460 = !DILocalVariable(name: "size", arg: 2, scope: !3455, file: !1586, line: 53, type: !43)
!3461 = !DILocation(line: 53, column: 6, scope: !3455)
!3462 = distinct !DISubprogram(name: "runtime.gcResumeWorld", linkageName: "runtime.gcResumeWorld", scope: !3463, file: !3463, line: 27, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!3463 = !DIFile(filename: "gc_stack_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3464 = !DILocation(line: 28, column: 20, scope: !3462)
!3465 = !DILocation(line: 29, column: 2, scope: !3462)
!3466 = distinct !DISubprogram(name: "runtime.runtimePanic", linkageName: "runtime.runtimePanic", scope: !428, file: !428, line: 85, type: !1940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3467)
!3467 = !{!3468}
!3468 = !DILocalVariable(name: "msg", arg: 1, scope: !3466, file: !428, line: 85, type: !38)
!3469 = !DILocation(line: 85, column: 6, scope: !3466)
!3470 = !DILocation(line: 88, column: 30, scope: !3466)
!3471 = !DILocation(line: 88, column: 35, scope: !3466)
!3472 = !DILocation(line: 88, column: 16, scope: !3466)
!3473 = !DILocation(line: 89, column: 2, scope: !3466)
!3474 = distinct !DISubprogram(name: "runtime.runtimePanicAt", linkageName: "runtime.runtimePanicAt", scope: !428, file: !428, line: 91, type: !3475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!84, !38}
!3477 = !{!3478, !3479}
!3478 = !DILocalVariable(name: "addr", arg: 1, scope: !3474, file: !428, line: 91, type: !84)
!3479 = !DILocalVariable(name: "msg", arg: 2, scope: !3474, file: !428, line: 91, type: !38)
!3480 = !DILocation(line: 91, column: 6, scope: !3474)
!3481 = !DILocation(line: 0, scope: !3474)
!3482 = !DILocation(line: 93, column: 7, scope: !3474)
!3483 = !DILocation(line: 99, column: 14, scope: !3474)
!3484 = !DILocation(line: 100, column: 20, scope: !3474)
!3485 = !DILocation(line: 100, column: 19, scope: !3474)
!3486 = !DILocation(line: 100, column: 26, scope: !3474)
!3487 = !DILocation(line: 100, column: 11, scope: !3474)
!3488 = !DILocation(line: 101, column: 14, scope: !3474)
!3489 = !DILocation(line: 105, column: 14, scope: !3474)
!3490 = !DILocation(line: 105, column: 13, scope: !3474)
!3491 = !DILocation(line: 106, column: 9, scope: !3474)
!3492 = !DILocation(line: 107, column: 7, scope: !3474)
!3493 = !DILocation(line: 108, column: 2, scope: !3474)
!3494 = !DILocation(line: 103, column: 14, scope: !3474)
!3495 = distinct !DISubprogram(name: "runtime.printstring", linkageName: "runtime.printstring", scope: !460, file: !460, line: 12, type: !1940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3496)
!3496 = !{!3497, !3498}
!3497 = !DILocalVariable(name: "s", arg: 1, scope: !3495, file: !460, line: 12, type: !38)
!3498 = !DILocalVariable(name: "i", scope: !3495, file: !460, line: 13, type: !1886)
!3499 = !DILocation(line: 12, column: 6, scope: !3495)
!3500 = !DILocation(line: 13, column: 6, scope: !3495)
!3501 = !DILocation(line: 0, scope: !3495)
!3502 = !DILocation(line: 13, column: 14, scope: !3495)
!3503 = !DILocation(line: 13, column: 22, scope: !3495)
!3504 = !DILocation(line: 13, column: 21, scope: !3495)
!3505 = !DILocation(line: 13, column: 16, scope: !3495)
!3506 = !DILocation(line: 14, column: 13, scope: !3495)
!3507 = !DILocation(line: 14, column: 11, scope: !3495)
!3508 = !DILocation(line: 14, column: 12, scope: !3495)
!3509 = !DILocation(line: 14, column: 10, scope: !3495)
!3510 = !DILocation(line: 13, column: 26, scope: !3495)
!3511 = !DILocation(line: 16, column: 2, scope: !3495)
!3512 = distinct !DISubprogram(name: "runtime.printptr", linkageName: "runtime.printptr", scope: !460, file: !460, line: 371, type: !3203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3513)
!3513 = !{!3514, !3515, !3516}
!3514 = !DILocalVariable(name: "ptr", arg: 1, scope: !3512, file: !460, line: 371, type: !43)
!3515 = !DILocalVariable(name: "i", scope: !3512, file: !460, line: 378, type: !1886)
!3516 = !DILocalVariable(name: "nibble", scope: !3512, file: !460, line: 379, type: !535)
!3517 = !DILocation(line: 371, column: 6, scope: !3512)
!3518 = !DILocation(line: 372, column: 5, scope: !3512)
!3519 = !DILocation(line: 372, column: 9, scope: !3512)
!3520 = !DILocation(line: 0, scope: !3512)
!3521 = !DILocation(line: 373, column: 14, scope: !3512)
!3522 = !DILocation(line: 374, column: 3, scope: !3512)
!3523 = !DILocation(line: 376, column: 9, scope: !3512)
!3524 = !DILocation(line: 377, column: 9, scope: !3512)
!3525 = !DILocation(line: 378, column: 6, scope: !3512)
!3526 = !DILocation(line: 371, column: 15, scope: !3512)
!3527 = !DILocation(line: 378, column: 14, scope: !3512)
!3528 = !DILocation(line: 378, column: 16, scope: !3512)
!3529 = !DILocation(line: 379, column: 18, scope: !3512)
!3530 = !DILocation(line: 379, column: 22, scope: !3512)
!3531 = !DILocation(line: 379, column: 17, scope: !3512)
!3532 = !DILocation(line: 379, column: 3, scope: !3512)
!3533 = !DILocation(line: 380, column: 6, scope: !3512)
!3534 = !DILocation(line: 380, column: 13, scope: !3512)
!3535 = !DILocation(line: 381, column: 12, scope: !3512)
!3536 = !DILocation(line: 381, column: 19, scope: !3512)
!3537 = !DILocation(line: 381, column: 11, scope: !3512)
!3538 = !DILocation(line: 385, column: 3, scope: !3512)
!3539 = !DILocation(line: 378, column: 45, scope: !3512)
!3540 = !DILocation(line: 383, column: 12, scope: !3512)
!3541 = !DILocation(line: 383, column: 19, scope: !3512)
!3542 = !DILocation(line: 383, column: 24, scope: !3512)
!3543 = !DILocation(line: 383, column: 11, scope: !3512)
!3544 = !DILocation(line: 387, column: 2, scope: !3512)
!3545 = distinct !DISubprogram(name: "runtime.printnl", linkageName: "runtime.printnl", scope: !460, file: !460, line: 286, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!3546 = !DILocation(line: 0, scope: !3545)
!3547 = !DILocation(line: 288, column: 10, scope: !3545)
!3548 = !DILocation(line: 290, column: 9, scope: !3545)
!3549 = !DILocation(line: 291, column: 2, scope: !3545)
!3550 = distinct !DISubprogram(name: "runtime.putchar", linkageName: "runtime.putchar", scope: !414, file: !414, line: 214, type: !3551, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3553)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!535}
!3553 = !{!3554}
!3554 = !DILocalVariable(name: "c", arg: 1, scope: !3550, file: !414, line: 214, type: !535)
!3555 = !DILocation(line: 214, column: 6, scope: !3550)
!3556 = !DILocation(line: 215, column: 2, scope: !3550)
!3557 = !DILocation(line: 215, column: 17, scope: !3550)
!3558 = !DILocation(line: 216, column: 35, scope: !3550)
!3559 = !DILocation(line: 216, column: 12, scope: !3550)
!3560 = !DILocation(line: 217, column: 2, scope: !3550)
!3561 = distinct !DISubprogram(name: "runtime.initRand", linkageName: "runtime.initRand", scope: !409, file: !409, line: 26, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3562)
!3562 = !{!3563, !3564, !3565}
!3563 = !DILocalVariable(name: "r", scope: !3561, file: !409, line: 27, type: !338)
!3564 = !DILocalVariable(name: "xorshift64State", scope: !3561, file: !409, line: 52, type: !338)
!3565 = !DILocalVariable(name: "xorshift32State", scope: !3561, file: !409, line: 32, type: !98)
!3566 = !DILocation(line: 27, column: 22, scope: !3561)
!3567 = !DILocation(line: 27, column: 2, scope: !3561)
!3568 = !DILocation(line: 28, column: 27, scope: !3561)
!3569 = !DILocation(line: 28, column: 29, scope: !3561)
!3570 = !DILocation(line: 28, column: 2, scope: !3561)
!3571 = !DILocation(line: 29, column: 27, scope: !3561)
!3572 = !DILocation(line: 29, column: 26, scope: !3561)
!3573 = !DILocation(line: 29, column: 2, scope: !3561)
!3574 = !DILocation(line: 30, column: 2, scope: !3561)
!3575 = distinct !DISubprogram(name: "runtime.hardwareRand", linkageName: "runtime.hardwareRand", scope: !3576, file: !3576, line: 137, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3577)
!3576 = !DIFile(filename: "os_linux.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3577 = !{!3578, !3579}
!3578 = !DILocalVariable(name: "read", scope: !3575, file: !3576, line: 138, type: !98)
!3579 = !DILocalVariable(name: "n", scope: !3575, file: !3576, line: 137, type: !338)
!3580 = !DILocation(line: 137, column: 22, scope: !3575)
!3581 = !DILocation(line: 138, column: 24, scope: !3575)
!3582 = !DILocation(line: 138, column: 2, scope: !3575)
!3583 = !DILocation(line: 139, column: 5, scope: !3575)
!3584 = !DILocation(line: 139, column: 10, scope: !3575)
!3585 = !DILocation(line: 0, scope: !3575)
!3586 = !DILocation(line: 140, column: 3, scope: !3575)
!3587 = !DILocation(line: 142, column: 9, scope: !3575)
!3588 = !DILocation(line: 142, column: 2, scope: !3575)
!3589 = distinct !DISubprogram(name: "runtime.getCurrentStackPointer", linkageName: "runtime.getCurrentStackPointer", scope: !3590, file: !3590, line: 26, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!3590 = !DIFile(filename: "arch_amd64.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3591 = !DILocation(line: 27, column: 26, scope: !3589)
!3592 = !DILocation(line: 27, column: 16, scope: !3589)
!3593 = !DILocation(line: 27, column: 2, scope: !3589)
!3594 = distinct !DISubprogram(name: "runtime.stacksave", linkageName: "runtime.stacksave", scope: !1586, file: !1586, line: 58, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!3595 = !DILocation(line: 58, column: 6, scope: !3594)
!3596 = distinct !DISubprogram(name: "runtime.memcpy", linkageName: "runtime.memcpy", scope: !1586, file: !1586, line: 42, type: !3597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3599)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!84, !84, !43}
!3599 = !{!3600, !3601, !3602}
!3600 = !DILocalVariable(name: "dst", arg: 1, scope: !3596, file: !1586, line: 42, type: !84)
!3601 = !DILocalVariable(name: "src", arg: 2, scope: !3596, file: !1586, line: 42, type: !84)
!3602 = !DILocalVariable(name: "size", arg: 3, scope: !3596, file: !1586, line: 42, type: !43)
!3603 = !DILocation(line: 42, column: 6, scope: !3596)
!3604 = distinct !DISubprogram(name: "runtime.nilPanic", linkageName: "runtime.nilPanic", scope: !428, file: !428, line: 183, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!3605 = !DILocation(line: 184, column: 30, scope: !3604)
!3606 = !DILocation(line: 184, column: 16, scope: !3604)
!3607 = !DILocation(line: 185, column: 2, scope: !3604)
!3608 = distinct !DISubprogram(name: "runtime.deadlock", linkageName: "runtime.deadlock", scope: !517, file: !517, line: 42, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!3609 = !DILocation(line: 44, column: 12, scope: !3608)
!3610 = !DILocation(line: 45, column: 2, scope: !3608)
!3611 = distinct !DISubprogram(name: "runtime.lookupPanic", linkageName: "runtime.lookupPanic", scope: !428, file: !428, line: 193, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!3612 = !DILocation(line: 194, column: 30, scope: !3611)
!3613 = !DILocation(line: 194, column: 16, scope: !3611)
!3614 = !DILocation(line: 195, column: 2, scope: !3611)
!3615 = distinct !DISubprogram(name: "runtime.panicOrGoexit", linkageName: "runtime.panicOrGoexit", scope: !428, file: !428, line: 58, type: !3616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3619)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!780, !3618}
!3618 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.panicState", baseType: !4)
!3619 = !{!3620, !3621, !3622, !3633, !3634}
!3620 = !DILocalVariable(name: "message", arg: 1, scope: !3615, file: !428, line: 58, type: !780)
!3621 = !DILocalVariable(name: "panicking", arg: 2, scope: !3615, file: !428, line: 58, type: !3618)
!3622 = !DILocalVariable(name: "frame", scope: !3615, file: !428, line: 65, type: !3623)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64, align: 64, dwarfAddressSpace: 0)
!3624 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.deferFrame", baseType: !3625)
!3625 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !3626)
!3626 = !{!3627, !3628, !3629, !3630, !3631, !3632}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "JumpSP", baseType: !84, size: 64, align: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "JumpPC", baseType: !84, size: 64, align: 64, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraRegs", baseType: !2563, align: 64, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "Previous", baseType: !3623, size: 64, align: 64, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "Panicking", baseType: !3618, size: 8, align: 8, offset: 192)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "PanicValue", baseType: !780, size: 128, align: 64, offset: 256)
!3633 = !DILocalVariable(name: "PanicValue", scope: !3615, file: !428, line: 42, type: !780)
!3634 = !DILocalVariable(name: "Panicking", scope: !3615, file: !428, line: 41, type: !3618)
!3635 = !DILocation(line: 58, column: 6, scope: !3615)
!3636 = !DILocation(line: 0, scope: !3615)
!3637 = !DILocation(line: 60, column: 7, scope: !3615)
!3638 = !DILocation(line: 64, column: 39, scope: !3615)
!3639 = !DILocation(line: 65, column: 38, scope: !3615)
!3640 = !DILocation(line: 65, column: 41, scope: !3615)
!3641 = !DILocation(line: 65, column: 3, scope: !3615)
!3642 = !DILocation(line: 66, column: 6, scope: !3615)
!3643 = !DILocation(line: 66, column: 12, scope: !3615)
!3644 = !DILocation(line: 67, column: 4, scope: !3615)
!3645 = !DILocation(line: 67, column: 23, scope: !3615)
!3646 = !DILocation(line: 67, column: 10, scope: !3615)
!3647 = !DILocation(line: 68, column: 4, scope: !3615)
!3648 = !DILocation(line: 68, column: 22, scope: !3615)
!3649 = !DILocation(line: 68, column: 10, scope: !3615)
!3650 = !DILocation(line: 69, column: 19, scope: !3615)
!3651 = !DILocation(line: 69, column: 18, scope: !3615)
!3652 = !DILocation(line: 73, column: 5, scope: !3615)
!3653 = !DILocation(line: 73, column: 15, scope: !3615)
!3654 = !DILocation(line: 76, column: 11, scope: !3615)
!3655 = !DILocation(line: 78, column: 13, scope: !3615)
!3656 = !DILocation(line: 79, column: 11, scope: !3615)
!3657 = !DILocation(line: 79, column: 10, scope: !3615)
!3658 = !DILocation(line: 80, column: 9, scope: !3615)
!3659 = !DILocation(line: 81, column: 7, scope: !3615)
!3660 = !DILocation(line: 82, column: 2, scope: !3615)
!3661 = distinct !DISubprogram(name: "runtime.printitf", linkageName: "runtime.printitf", scope: !460, file: !460, line: 293, type: !3662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3664)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!780}
!3664 = !{!3665, !3666, !3667, !3668, !3669, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3681, !3682, !3684, !3686, !3687, !3688, !3690}
!3665 = !DILocalVariable(name: "msg", arg: 1, scope: !3661, file: !460, line: 293, type: !780)
!3666 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !371)
!3667 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !1886)
!3668 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !82)
!3669 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !3670)
!3670 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!3671 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !381)
!3672 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !1699)
!3673 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !1738)
!3674 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !4)
!3675 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !90)
!3676 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !98)
!3677 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !338)
!3678 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !43)
!3679 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !3680)
!3680 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!3681 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !797)
!3682 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !3683)
!3683 = !DIBasicType(name: "complex64", size: 64, encoding: DW_ATE_complex_float)
!3684 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !3685)
!3685 = !DIBasicType(name: "complex128", size: 128, encoding: DW_ATE_complex_float)
!3686 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !38)
!3687 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !779)
!3688 = !DILocalVariable(name: "msg", scope: !3661, file: !460, line: 294, type: !3689)
!3689 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.stringer", baseType: !780)
!3690 = !DILocalVariable(name: "itf", scope: !3661, file: !460, line: 345, type: !780)
!3691 = !DILocation(line: 293, column: 6, scope: !3661)
!3692 = !DILocation(line: 294, column: 16, scope: !3661)
!3693 = !DILocation(line: 295, column: 2, scope: !3661)
!3694 = !DILocation(line: 0, scope: !3661)
!3695 = !DILocation(line: 296, column: 13, scope: !3661)
!3696 = !DILocation(line: 296, column: 12, scope: !3661)
!3697 = !DILocation(line: 352, column: 2, scope: !3661)
!3698 = !DILocation(line: 297, column: 2, scope: !3661)
!3699 = !DILocation(line: 300, column: 21, scope: !3661)
!3700 = !DILocation(line: 300, column: 14, scope: !3661)
!3701 = !DILocation(line: 302, column: 21, scope: !3661)
!3702 = !DILocation(line: 302, column: 20, scope: !3661)
!3703 = !DILocation(line: 302, column: 14, scope: !3661)
!3704 = !DILocation(line: 304, column: 2, scope: !3661)
!3705 = !DILocation(line: 305, column: 13, scope: !3661)
!3706 = !DILocation(line: 305, column: 12, scope: !3661)
!3707 = !DILocation(line: 306, column: 2, scope: !3661)
!3708 = !DILocation(line: 307, column: 14, scope: !3661)
!3709 = !DILocation(line: 307, column: 13, scope: !3661)
!3710 = !DILocation(line: 308, column: 2, scope: !3661)
!3711 = !DILocation(line: 309, column: 14, scope: !3661)
!3712 = !DILocation(line: 309, column: 13, scope: !3661)
!3713 = !DILocation(line: 310, column: 2, scope: !3661)
!3714 = !DILocation(line: 311, column: 14, scope: !3661)
!3715 = !DILocation(line: 311, column: 13, scope: !3661)
!3716 = !DILocation(line: 312, column: 2, scope: !3661)
!3717 = !DILocation(line: 315, column: 23, scope: !3661)
!3718 = !DILocation(line: 315, column: 15, scope: !3661)
!3719 = !DILocation(line: 317, column: 23, scope: !3661)
!3720 = !DILocation(line: 317, column: 22, scope: !3661)
!3721 = !DILocation(line: 317, column: 15, scope: !3661)
!3722 = !DILocation(line: 319, column: 2, scope: !3661)
!3723 = !DILocation(line: 320, column: 14, scope: !3661)
!3724 = !DILocation(line: 320, column: 13, scope: !3661)
!3725 = !DILocation(line: 321, column: 2, scope: !3661)
!3726 = !DILocation(line: 322, column: 15, scope: !3661)
!3727 = !DILocation(line: 322, column: 14, scope: !3661)
!3728 = !DILocation(line: 323, column: 2, scope: !3661)
!3729 = !DILocation(line: 324, column: 15, scope: !3661)
!3730 = !DILocation(line: 324, column: 14, scope: !3661)
!3731 = !DILocation(line: 325, column: 2, scope: !3661)
!3732 = !DILocation(line: 326, column: 15, scope: !3661)
!3733 = !DILocation(line: 326, column: 14, scope: !3661)
!3734 = !DILocation(line: 327, column: 2, scope: !3661)
!3735 = !DILocation(line: 328, column: 16, scope: !3661)
!3736 = !DILocation(line: 328, column: 15, scope: !3661)
!3737 = !DILocation(line: 329, column: 2, scope: !3661)
!3738 = !DILocation(line: 330, column: 16, scope: !3661)
!3739 = !DILocation(line: 330, column: 15, scope: !3661)
!3740 = !DILocation(line: 331, column: 2, scope: !3661)
!3741 = !DILocation(line: 332, column: 16, scope: !3661)
!3742 = !DILocation(line: 332, column: 15, scope: !3661)
!3743 = !DILocation(line: 333, column: 2, scope: !3661)
!3744 = !DILocation(line: 334, column: 18, scope: !3661)
!3745 = !DILocation(line: 334, column: 17, scope: !3661)
!3746 = !DILocation(line: 335, column: 2, scope: !3661)
!3747 = !DILocation(line: 336, column: 19, scope: !3661)
!3748 = !DILocation(line: 336, column: 18, scope: !3661)
!3749 = !DILocation(line: 337, column: 2, scope: !3661)
!3750 = !DILocation(line: 338, column: 15, scope: !3661)
!3751 = !DILocation(line: 338, column: 14, scope: !3661)
!3752 = !DILocation(line: 339, column: 2, scope: !3661)
!3753 = !DILocation(line: 340, column: 15, scope: !3661)
!3754 = !DILocation(line: 340, column: 24, scope: !3661)
!3755 = !DILocation(line: 340, column: 14, scope: !3661)
!3756 = !DILocation(line: 341, column: 2, scope: !3661)
!3757 = !DILocation(line: 342, column: 15, scope: !3661)
!3758 = !DILocation(line: 342, column: 25, scope: !3661)
!3759 = !DILocation(line: 342, column: 14, scope: !3661)
!3760 = !DILocation(line: 294, column: 9, scope: !3661)
!3761 = !DILocation(line: 345, column: 10, scope: !3661)
!3762 = !DILocation(line: 345, column: 3, scope: !3661)
!3763 = !DILocation(line: 346, column: 10, scope: !3661)
!3764 = !DILocation(line: 347, column: 28, scope: !3661)
!3765 = !DILocation(line: 347, column: 23, scope: !3661)
!3766 = !DILocation(line: 347, column: 15, scope: !3661)
!3767 = !DILocation(line: 348, column: 10, scope: !3661)
!3768 = !DILocation(line: 349, column: 24, scope: !3661)
!3769 = !DILocation(line: 349, column: 19, scope: !3661)
!3770 = !DILocation(line: 349, column: 11, scope: !3661)
!3771 = !DILocation(line: 350, column: 10, scope: !3661)
!3772 = distinct !DISubprogram(name: "runtime.printbool", linkageName: "runtime.printbool", scope: !460, file: !460, line: 389, type: !3773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3775)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!371}
!3775 = !{!3776}
!3776 = !DILocalVariable(name: "b", arg: 1, scope: !3772, file: !460, line: 389, type: !371)
!3777 = !DILocation(line: 389, column: 6, scope: !3772)
!3778 = !DILocation(line: 390, column: 5, scope: !3772)
!3779 = !DILocation(line: 0, scope: !3772)
!3780 = !DILocation(line: 391, column: 14, scope: !3772)
!3781 = !DILocation(line: 395, column: 2, scope: !3772)
!3782 = !DILocation(line: 393, column: 14, scope: !3772)
!3783 = distinct !DISubprogram(name: "runtime.printint64", linkageName: "runtime.printint64", scope: !460, file: !460, line: 94, type: !3784, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3786)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!1699}
!3786 = !{!3787}
!3787 = !DILocalVariable(name: "n", arg: 1, scope: !3783, file: !460, line: 94, type: !1699)
!3788 = !DILocation(line: 94, column: 6, scope: !3783)
!3789 = !DILocation(line: 95, column: 5, scope: !3783)
!3790 = !DILocation(line: 95, column: 7, scope: !3783)
!3791 = !DILocation(line: 0, scope: !3783)
!3792 = !DILocation(line: 96, column: 10, scope: !3783)
!3793 = !DILocation(line: 97, column: 8, scope: !3783)
!3794 = !DILocation(line: 97, column: 7, scope: !3783)
!3795 = !DILocation(line: 97, column: 3, scope: !3783)
!3796 = !DILocation(line: 94, column: 17, scope: !3783)
!3797 = !DILocation(line: 99, column: 21, scope: !3783)
!3798 = !DILocation(line: 99, column: 13, scope: !3783)
!3799 = !DILocation(line: 100, column: 2, scope: !3783)
!3800 = distinct !DISubprogram(name: "runtime.printint32", linkageName: "runtime.printint32", scope: !460, file: !460, line: 65, type: !3399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3801)
!3801 = !{!3802}
!3802 = !DILocalVariable(name: "n", arg: 1, scope: !3800, file: !460, line: 65, type: !381)
!3803 = !DILocation(line: 65, column: 6, scope: !3800)
!3804 = !DILocation(line: 68, column: 5, scope: !3800)
!3805 = !DILocation(line: 68, column: 7, scope: !3800)
!3806 = !DILocation(line: 0, scope: !3800)
!3807 = !DILocation(line: 69, column: 10, scope: !3800)
!3808 = !DILocation(line: 70, column: 8, scope: !3800)
!3809 = !DILocation(line: 70, column: 7, scope: !3800)
!3810 = !DILocation(line: 70, column: 3, scope: !3800)
!3811 = !DILocation(line: 65, column: 17, scope: !3800)
!3812 = !DILocation(line: 72, column: 21, scope: !3800)
!3813 = !DILocation(line: 72, column: 13, scope: !3800)
!3814 = !DILocation(line: 73, column: 2, scope: !3800)
!3815 = distinct !DISubprogram(name: "runtime.printint8", linkageName: "runtime.printint8", scope: !460, file: !460, line: 30, type: !3816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3818)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!82}
!3818 = !{!3819}
!3819 = !DILocalVariable(name: "n", arg: 1, scope: !3815, file: !460, line: 30, type: !82)
!3820 = !DILocation(line: 30, column: 6, scope: !3815)
!3821 = !DILocation(line: 0, scope: !3815)
!3822 = !DILocation(line: 32, column: 20, scope: !3815)
!3823 = !DILocation(line: 32, column: 19, scope: !3815)
!3824 = !DILocation(line: 32, column: 13, scope: !3815)
!3825 = !DILocation(line: 40, column: 2, scope: !3815)
!3826 = !DILocation(line: 34, column: 6, scope: !3815)
!3827 = !DILocation(line: 34, column: 8, scope: !3815)
!3828 = !DILocation(line: 35, column: 11, scope: !3815)
!3829 = !DILocation(line: 36, column: 9, scope: !3815)
!3830 = !DILocation(line: 36, column: 8, scope: !3815)
!3831 = !DILocation(line: 36, column: 4, scope: !3815)
!3832 = !DILocation(line: 30, column: 16, scope: !3815)
!3833 = !DILocation(line: 38, column: 20, scope: !3815)
!3834 = !DILocation(line: 38, column: 13, scope: !3815)
!3835 = distinct !DISubprogram(name: "runtime.printint16", linkageName: "runtime.printint16", scope: !460, file: !460, line: 57, type: !3836, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3838)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!3670}
!3838 = !{!3839}
!3839 = !DILocalVariable(name: "n", arg: 1, scope: !3835, file: !460, line: 57, type: !3670)
!3840 = !DILocation(line: 57, column: 6, scope: !3835)
!3841 = !DILocation(line: 58, column: 19, scope: !3835)
!3842 = !DILocation(line: 58, column: 18, scope: !3835)
!3843 = !DILocation(line: 58, column: 12, scope: !3835)
!3844 = !DILocation(line: 59, column: 2, scope: !3835)
!3845 = distinct !DISubprogram(name: "runtime.printuint64", linkageName: "runtime.printuint64", scope: !460, file: !460, line: 76, type: !3846, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3848)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!338}
!3848 = !{!3849, !3850, !3851, !3852, !3853}
!3849 = !DILocalVariable(name: "n", arg: 1, scope: !3845, file: !460, line: 76, type: !338)
!3850 = !DILocalVariable(name: "firstdigit", scope: !3845, file: !460, line: 79, type: !1886)
!3851 = !DILocalVariable(name: "i", scope: !3845, file: !460, line: 80, type: !1886)
!3852 = !DILocalVariable(name: "digit", scope: !3845, file: !460, line: 81, type: !535)
!3853 = !DILocalVariable(name: "i", scope: !3845, file: !460, line: 89, type: !1886)
!3854 = !DILocation(line: 76, column: 6, scope: !3845)
!3855 = !DILocation(line: 77, column: 2, scope: !3845)
!3856 = !DILocation(line: 79, column: 2, scope: !3845)
!3857 = !DILocation(line: 80, column: 6, scope: !3845)
!3858 = !DILocation(line: 0, scope: !3845)
!3859 = !DILocation(line: 76, column: 18, scope: !3845)
!3860 = !DILocation(line: 80, column: 15, scope: !3845)
!3861 = !DILocation(line: 80, column: 17, scope: !3845)
!3862 = !DILocation(line: 81, column: 17, scope: !3845)
!3863 = !DILocation(line: 81, column: 18, scope: !3845)
!3864 = !DILocation(line: 81, column: 22, scope: !3845)
!3865 = !DILocation(line: 81, column: 16, scope: !3845)
!3866 = !DILocation(line: 81, column: 3, scope: !3845)
!3867 = !DILocation(line: 82, column: 10, scope: !3845)
!3868 = !DILocation(line: 82, column: 15, scope: !3845)
!3869 = !DILocation(line: 82, column: 9, scope: !3845)
!3870 = !DILocation(line: 83, column: 6, scope: !3845)
!3871 = !DILocation(line: 83, column: 12, scope: !3845)
!3872 = !DILocation(line: 84, column: 17, scope: !3845)
!3873 = !DILocation(line: 84, column: 4, scope: !3845)
!3874 = !DILocation(line: 86, column: 3, scope: !3845)
!3875 = !DILocation(line: 80, column: 23, scope: !3845)
!3876 = !DILocation(line: 89, column: 11, scope: !3845)
!3877 = !DILocation(line: 89, column: 6, scope: !3845)
!3878 = !DILocation(line: 89, column: 23, scope: !3845)
!3879 = !DILocation(line: 89, column: 25, scope: !3845)
!3880 = !DILocation(line: 90, column: 18, scope: !3845)
!3881 = !DILocation(line: 90, column: 17, scope: !3845)
!3882 = !DILocation(line: 90, column: 10, scope: !3845)
!3883 = !DILocation(line: 89, column: 31, scope: !3845)
!3884 = !DILocation(line: 92, column: 2, scope: !3845)
!3885 = distinct !DISubprogram(name: "runtime.printuint32", linkageName: "runtime.printuint32", scope: !460, file: !460, line: 61, type: !3314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3886)
!3886 = !{!3887}
!3887 = !DILocalVariable(name: "n", arg: 1, scope: !3885, file: !460, line: 61, type: !98)
!3888 = !DILocation(line: 61, column: 6, scope: !3885)
!3889 = !DILocation(line: 62, column: 21, scope: !3885)
!3890 = !DILocation(line: 62, column: 20, scope: !3885)
!3891 = !DILocation(line: 62, column: 13, scope: !3885)
!3892 = !DILocation(line: 63, column: 2, scope: !3885)
!3893 = distinct !DISubprogram(name: "runtime.printuint8", linkageName: "runtime.printuint8", scope: !460, file: !460, line: 18, type: !3894, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3896)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!4}
!3896 = !{!3897, !3898}
!3897 = !DILocalVariable(name: "n", arg: 1, scope: !3893, file: !460, line: 18, type: !4)
!3898 = !DILocalVariable(name: "prevdigits", scope: !3893, file: !460, line: 22, type: !4)
!3899 = !DILocation(line: 18, column: 6, scope: !3893)
!3900 = !DILocation(line: 0, scope: !3893)
!3901 = !DILocation(line: 20, column: 22, scope: !3893)
!3902 = !DILocation(line: 20, column: 21, scope: !3893)
!3903 = !DILocation(line: 20, column: 14, scope: !3893)
!3904 = !DILocation(line: 28, column: 2, scope: !3893)
!3905 = !DILocation(line: 22, column: 17, scope: !3893)
!3906 = !DILocation(line: 22, column: 19, scope: !3893)
!3907 = !DILocation(line: 22, column: 3, scope: !3893)
!3908 = !DILocation(line: 23, column: 6, scope: !3893)
!3909 = !DILocation(line: 23, column: 17, scope: !3893)
!3910 = !DILocation(line: 24, column: 15, scope: !3893)
!3911 = !DILocation(line: 24, column: 14, scope: !3893)
!3912 = !DILocation(line: 26, column: 17, scope: !3893)
!3913 = !DILocation(line: 26, column: 19, scope: !3893)
!3914 = !DILocation(line: 26, column: 25, scope: !3893)
!3915 = !DILocation(line: 26, column: 10, scope: !3893)
!3916 = distinct !DISubprogram(name: "runtime.printuint16", linkageName: "runtime.printuint16", scope: !460, file: !460, line: 53, type: !3917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3919)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!90}
!3919 = !{!3920}
!3920 = !DILocalVariable(name: "n", arg: 1, scope: !3916, file: !460, line: 53, type: !90)
!3921 = !DILocation(line: 53, column: 6, scope: !3916)
!3922 = !DILocation(line: 54, column: 21, scope: !3916)
!3923 = !DILocation(line: 54, column: 20, scope: !3916)
!3924 = !DILocation(line: 54, column: 13, scope: !3916)
!3925 = !DILocation(line: 55, column: 2, scope: !3916)
!3926 = distinct !DISubprogram(name: "runtime.printuintptr", linkageName: "runtime.printuintptr", scope: !460, file: !460, line: 42, type: !3203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3927)
!3927 = !{!3928}
!3928 = !DILocalVariable(name: "n", arg: 1, scope: !3926, file: !460, line: 42, type: !43)
!3929 = !DILocation(line: 42, column: 6, scope: !3926)
!3930 = !DILocation(line: 0, scope: !3926)
!3931 = !DILocation(line: 45, column: 22, scope: !3926)
!3932 = !DILocation(line: 45, column: 21, scope: !3926)
!3933 = !DILocation(line: 45, column: 14, scope: !3926)
!3934 = !DILocation(line: 51, column: 2, scope: !3926)
!3935 = !DILocation(line: 47, column: 22, scope: !3926)
!3936 = !DILocation(line: 47, column: 21, scope: !3926)
!3937 = !DILocation(line: 47, column: 14, scope: !3926)
!3938 = !DILocation(line: 49, column: 22, scope: !3926)
!3939 = !DILocation(line: 49, column: 14, scope: !3926)
!3940 = distinct !DISubprogram(name: "runtime.printfloat32", linkageName: "runtime.printfloat32", scope: !460, file: !460, line: 114, type: !3941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !3943)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!3680}
!3943 = !{!3944, !3945, !3946, !3947, !3948, !3950, !3951, !3952}
!3944 = !DILocalVariable(name: "v", arg: 1, scope: !3940, file: !460, line: 114, type: !3680)
!3945 = !DILocalVariable(name: "e", scope: !3940, file: !460, line: 130, type: !1886)
!3946 = !DILocalVariable(name: "i", scope: !3940, file: !460, line: 164, type: !1886)
!3947 = !DILocalVariable(name: "s", scope: !3940, file: !460, line: 165, type: !1886)
!3948 = !DILocalVariable(name: "buf", scope: !3940, file: !460, line: 128, type: !3949)
!3949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 112, align: 8, elements: !113)
!3950 = !DILocalVariable(name: "c", scope: !3940, file: !460, line: 183, type: !535)
!3951 = !DILocalVariable(name: "h", scope: !3940, file: !460, line: 152, type: !3680)
!3952 = !DILocalVariable(name: "i", scope: !3940, file: !460, line: 153, type: !1886)
!3953 = !DILocation(line: 114, column: 6, scope: !3940)
!3954 = !DILocation(line: 116, column: 7, scope: !3940)
!3955 = !DILocation(line: 116, column: 12, scope: !3940)
!3956 = !DILocation(line: 116, column: 9, scope: !3940)
!3957 = !DILocation(line: 0, scope: !3940)
!3958 = !DILocation(line: 117, column: 14, scope: !3940)
!3959 = !DILocation(line: 118, column: 3, scope: !3940)
!3960 = !DILocation(line: 119, column: 7, scope: !3940)
!3961 = !DILocation(line: 119, column: 9, scope: !3940)
!3962 = !DILocation(line: 119, column: 8, scope: !3940)
!3963 = !DILocation(line: 119, column: 14, scope: !3940)
!3964 = !DILocation(line: 119, column: 11, scope: !3940)
!3965 = !DILocation(line: 119, column: 19, scope: !3940)
!3966 = !DILocation(line: 119, column: 21, scope: !3940)
!3967 = !DILocation(line: 119, column: 16, scope: !3940)
!3968 = !DILocation(line: 120, column: 14, scope: !3940)
!3969 = !DILocation(line: 121, column: 3, scope: !3940)
!3970 = !DILocation(line: 122, column: 7, scope: !3940)
!3971 = !DILocation(line: 122, column: 9, scope: !3940)
!3972 = !DILocation(line: 122, column: 8, scope: !3940)
!3973 = !DILocation(line: 122, column: 14, scope: !3940)
!3974 = !DILocation(line: 122, column: 11, scope: !3940)
!3975 = !DILocation(line: 122, column: 19, scope: !3940)
!3976 = !DILocation(line: 122, column: 21, scope: !3940)
!3977 = !DILocation(line: 122, column: 16, scope: !3940)
!3978 = !DILocation(line: 123, column: 14, scope: !3940)
!3979 = !DILocation(line: 124, column: 3, scope: !3940)
!3980 = !DILocation(line: 129, column: 5, scope: !3940)
!3981 = !DILocation(line: 130, column: 2, scope: !3940)
!3982 = !DILocation(line: 131, column: 5, scope: !3940)
!3983 = !DILocation(line: 131, column: 7, scope: !3940)
!3984 = !DILocation(line: 132, column: 8, scope: !3940)
!3985 = !DILocation(line: 132, column: 7, scope: !3940)
!3986 = !DILocation(line: 132, column: 10, scope: !3940)
!3987 = !DILocation(line: 133, column: 7, scope: !3940)
!3988 = !DILocation(line: 114, column: 19, scope: !3940)
!3989 = !DILocation(line: 164, column: 6, scope: !3940)
!3990 = !DILocation(line: 164, column: 14, scope: !3940)
!3991 = !DILocation(line: 164, column: 16, scope: !3940)
!3992 = !DILocation(line: 165, column: 12, scope: !3940)
!3993 = !DILocation(line: 165, column: 11, scope: !3940)
!3994 = !DILocation(line: 165, column: 3, scope: !3940)
!3995 = !DILocation(line: 166, column: 7, scope: !3940)
!3996 = !DILocation(line: 166, column: 8, scope: !3940)
!3997 = !DILocation(line: 166, column: 19, scope: !3940)
!3998 = !DILocation(line: 166, column: 21, scope: !3940)
!3999 = !DILocation(line: 166, column: 18, scope: !3940)
!4000 = !DILocation(line: 166, column: 6, scope: !3940)
!4001 = !DILocation(line: 167, column: 16, scope: !3940)
!4002 = !DILocation(line: 167, column: 15, scope: !3940)
!4003 = !DILocation(line: 167, column: 3, scope: !3940)
!4004 = !DILocation(line: 168, column: 3, scope: !3940)
!4005 = !DILocation(line: 164, column: 21, scope: !3940)
!4006 = !DILocation(line: 170, column: 14, scope: !3940)
!4007 = !DILocation(line: 170, column: 5, scope: !3940)
!4008 = !DILocation(line: 171, column: 5, scope: !3940)
!4009 = !DILocation(line: 173, column: 5, scope: !3940)
!4010 = !DILocation(line: 174, column: 5, scope: !3940)
!4011 = !DILocation(line: 175, column: 5, scope: !3940)
!4012 = !DILocation(line: 175, column: 7, scope: !3940)
!4013 = !DILocation(line: 176, column: 8, scope: !3940)
!4014 = !DILocation(line: 176, column: 7, scope: !3940)
!4015 = !DILocation(line: 176, column: 3, scope: !3940)
!4016 = !DILocation(line: 177, column: 6, scope: !3940)
!4017 = !DILocation(line: 180, column: 18, scope: !3940)
!4018 = !DILocation(line: 180, column: 19, scope: !3940)
!4019 = !DILocation(line: 180, column: 17, scope: !3940)
!4020 = !DILocation(line: 180, column: 25, scope: !3940)
!4021 = !DILocation(line: 180, column: 5, scope: !3940)
!4022 = !DILocation(line: 181, column: 18, scope: !3940)
!4023 = !DILocation(line: 181, column: 19, scope: !3940)
!4024 = !DILocation(line: 181, column: 17, scope: !3940)
!4025 = !DILocation(line: 181, column: 23, scope: !3940)
!4026 = !DILocation(line: 181, column: 27, scope: !3940)
!4027 = !DILocation(line: 181, column: 5, scope: !3940)
!4028 = !DILocation(line: 182, column: 18, scope: !3940)
!4029 = !DILocation(line: 182, column: 19, scope: !3940)
!4030 = !DILocation(line: 182, column: 17, scope: !3940)
!4031 = !DILocation(line: 182, column: 24, scope: !3940)
!4032 = !DILocation(line: 182, column: 5, scope: !3940)
!4033 = !DILocation(line: 183, column: 20, scope: !3940)
!4034 = !DILocation(line: 183, column: 9, scope: !3940)
!4035 = !DILocation(line: 184, column: 11, scope: !3940)
!4036 = !DILocation(line: 184, column: 10, scope: !3940)
!4037 = !DILocation(line: 186, column: 2, scope: !3940)
!4038 = !DILocation(line: 136, column: 6, scope: !3940)
!4039 = !DILocation(line: 136, column: 8, scope: !3940)
!4040 = !DILocation(line: 137, column: 9, scope: !3940)
!4041 = !DILocation(line: 137, column: 8, scope: !3940)
!4042 = !DILocation(line: 137, column: 4, scope: !3940)
!4043 = !DILocation(line: 138, column: 7, scope: !3940)
!4044 = !DILocation(line: 142, column: 7, scope: !3940)
!4045 = !DILocation(line: 142, column: 9, scope: !3940)
!4046 = !DILocation(line: 143, column: 4, scope: !3940)
!4047 = !DILocation(line: 144, column: 4, scope: !3940)
!4048 = !DILocation(line: 146, column: 7, scope: !3940)
!4049 = !DILocation(line: 146, column: 9, scope: !3940)
!4050 = !DILocation(line: 147, column: 4, scope: !3940)
!4051 = !DILocation(line: 148, column: 4, scope: !3940)
!4052 = !DILocation(line: 152, column: 3, scope: !3940)
!4053 = !DILocation(line: 153, column: 7, scope: !3940)
!4054 = !DILocation(line: 153, column: 15, scope: !3940)
!4055 = !DILocation(line: 153, column: 17, scope: !3940)
!4056 = !DILocation(line: 154, column: 4, scope: !3940)
!4057 = !DILocation(line: 153, column: 22, scope: !3940)
!4058 = !DILocation(line: 156, column: 8, scope: !3940)
!4059 = !DILocation(line: 156, column: 3, scope: !3940)
!4060 = !DILocation(line: 157, column: 6, scope: !3940)
!4061 = !DILocation(line: 157, column: 8, scope: !3940)
!4062 = !DILocation(line: 158, column: 4, scope: !3940)
!4063 = !DILocation(line: 159, column: 4, scope: !3940)
!4064 = distinct !DISubprogram(name: "runtime.printfloat64", linkageName: "runtime.printfloat64", scope: !460, file: !460, line: 194, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4065)
!4065 = !{!4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073}
!4066 = !DILocalVariable(name: "v", arg: 1, scope: !4064, file: !460, line: 194, type: !797)
!4067 = !DILocalVariable(name: "e", scope: !4064, file: !460, line: 210, type: !1886)
!4068 = !DILocalVariable(name: "i", scope: !4064, file: !460, line: 244, type: !1886)
!4069 = !DILocalVariable(name: "s", scope: !4064, file: !460, line: 245, type: !1886)
!4070 = !DILocalVariable(name: "buf", scope: !4064, file: !460, line: 208, type: !3949)
!4071 = !DILocalVariable(name: "c", scope: !4064, file: !460, line: 263, type: !535)
!4072 = !DILocalVariable(name: "h", scope: !4064, file: !460, line: 232, type: !797)
!4073 = !DILocalVariable(name: "i", scope: !4064, file: !460, line: 233, type: !1886)
!4074 = !DILocation(line: 194, column: 6, scope: !4064)
!4075 = !DILocation(line: 196, column: 7, scope: !4064)
!4076 = !DILocation(line: 196, column: 12, scope: !4064)
!4077 = !DILocation(line: 196, column: 9, scope: !4064)
!4078 = !DILocation(line: 0, scope: !4064)
!4079 = !DILocation(line: 197, column: 14, scope: !4064)
!4080 = !DILocation(line: 198, column: 3, scope: !4064)
!4081 = !DILocation(line: 199, column: 7, scope: !4064)
!4082 = !DILocation(line: 199, column: 9, scope: !4064)
!4083 = !DILocation(line: 199, column: 8, scope: !4064)
!4084 = !DILocation(line: 199, column: 14, scope: !4064)
!4085 = !DILocation(line: 199, column: 11, scope: !4064)
!4086 = !DILocation(line: 199, column: 19, scope: !4064)
!4087 = !DILocation(line: 199, column: 21, scope: !4064)
!4088 = !DILocation(line: 199, column: 16, scope: !4064)
!4089 = !DILocation(line: 200, column: 14, scope: !4064)
!4090 = !DILocation(line: 201, column: 3, scope: !4064)
!4091 = !DILocation(line: 202, column: 7, scope: !4064)
!4092 = !DILocation(line: 202, column: 9, scope: !4064)
!4093 = !DILocation(line: 202, column: 8, scope: !4064)
!4094 = !DILocation(line: 202, column: 14, scope: !4064)
!4095 = !DILocation(line: 202, column: 11, scope: !4064)
!4096 = !DILocation(line: 202, column: 19, scope: !4064)
!4097 = !DILocation(line: 202, column: 21, scope: !4064)
!4098 = !DILocation(line: 202, column: 16, scope: !4064)
!4099 = !DILocation(line: 203, column: 14, scope: !4064)
!4100 = !DILocation(line: 204, column: 3, scope: !4064)
!4101 = !DILocation(line: 209, column: 5, scope: !4064)
!4102 = !DILocation(line: 210, column: 2, scope: !4064)
!4103 = !DILocation(line: 211, column: 5, scope: !4064)
!4104 = !DILocation(line: 211, column: 7, scope: !4064)
!4105 = !DILocation(line: 212, column: 8, scope: !4064)
!4106 = !DILocation(line: 212, column: 7, scope: !4064)
!4107 = !DILocation(line: 212, column: 10, scope: !4064)
!4108 = !DILocation(line: 213, column: 7, scope: !4064)
!4109 = !DILocation(line: 194, column: 19, scope: !4064)
!4110 = !DILocation(line: 244, column: 6, scope: !4064)
!4111 = !DILocation(line: 244, column: 14, scope: !4064)
!4112 = !DILocation(line: 244, column: 16, scope: !4064)
!4113 = !DILocation(line: 245, column: 12, scope: !4064)
!4114 = !DILocation(line: 245, column: 11, scope: !4064)
!4115 = !DILocation(line: 245, column: 3, scope: !4064)
!4116 = !DILocation(line: 246, column: 7, scope: !4064)
!4117 = !DILocation(line: 246, column: 8, scope: !4064)
!4118 = !DILocation(line: 246, column: 19, scope: !4064)
!4119 = !DILocation(line: 246, column: 21, scope: !4064)
!4120 = !DILocation(line: 246, column: 18, scope: !4064)
!4121 = !DILocation(line: 246, column: 6, scope: !4064)
!4122 = !DILocation(line: 247, column: 16, scope: !4064)
!4123 = !DILocation(line: 247, column: 15, scope: !4064)
!4124 = !DILocation(line: 247, column: 3, scope: !4064)
!4125 = !DILocation(line: 248, column: 3, scope: !4064)
!4126 = !DILocation(line: 244, column: 21, scope: !4064)
!4127 = !DILocation(line: 250, column: 14, scope: !4064)
!4128 = !DILocation(line: 250, column: 5, scope: !4064)
!4129 = !DILocation(line: 251, column: 5, scope: !4064)
!4130 = !DILocation(line: 253, column: 5, scope: !4064)
!4131 = !DILocation(line: 254, column: 5, scope: !4064)
!4132 = !DILocation(line: 255, column: 5, scope: !4064)
!4133 = !DILocation(line: 255, column: 7, scope: !4064)
!4134 = !DILocation(line: 256, column: 8, scope: !4064)
!4135 = !DILocation(line: 256, column: 7, scope: !4064)
!4136 = !DILocation(line: 256, column: 3, scope: !4064)
!4137 = !DILocation(line: 257, column: 6, scope: !4064)
!4138 = !DILocation(line: 260, column: 18, scope: !4064)
!4139 = !DILocation(line: 260, column: 19, scope: !4064)
!4140 = !DILocation(line: 260, column: 17, scope: !4064)
!4141 = !DILocation(line: 260, column: 25, scope: !4064)
!4142 = !DILocation(line: 260, column: 5, scope: !4064)
!4143 = !DILocation(line: 261, column: 18, scope: !4064)
!4144 = !DILocation(line: 261, column: 19, scope: !4064)
!4145 = !DILocation(line: 261, column: 17, scope: !4064)
!4146 = !DILocation(line: 261, column: 23, scope: !4064)
!4147 = !DILocation(line: 261, column: 27, scope: !4064)
!4148 = !DILocation(line: 261, column: 5, scope: !4064)
!4149 = !DILocation(line: 262, column: 18, scope: !4064)
!4150 = !DILocation(line: 262, column: 19, scope: !4064)
!4151 = !DILocation(line: 262, column: 17, scope: !4064)
!4152 = !DILocation(line: 262, column: 24, scope: !4064)
!4153 = !DILocation(line: 262, column: 5, scope: !4064)
!4154 = !DILocation(line: 263, column: 20, scope: !4064)
!4155 = !DILocation(line: 263, column: 9, scope: !4064)
!4156 = !DILocation(line: 264, column: 11, scope: !4064)
!4157 = !DILocation(line: 264, column: 10, scope: !4064)
!4158 = !DILocation(line: 266, column: 2, scope: !4064)
!4159 = !DILocation(line: 216, column: 6, scope: !4064)
!4160 = !DILocation(line: 216, column: 8, scope: !4064)
!4161 = !DILocation(line: 217, column: 9, scope: !4064)
!4162 = !DILocation(line: 217, column: 8, scope: !4064)
!4163 = !DILocation(line: 217, column: 4, scope: !4064)
!4164 = !DILocation(line: 218, column: 7, scope: !4064)
!4165 = !DILocation(line: 222, column: 7, scope: !4064)
!4166 = !DILocation(line: 222, column: 9, scope: !4064)
!4167 = !DILocation(line: 223, column: 4, scope: !4064)
!4168 = !DILocation(line: 224, column: 4, scope: !4064)
!4169 = !DILocation(line: 226, column: 7, scope: !4064)
!4170 = !DILocation(line: 226, column: 9, scope: !4064)
!4171 = !DILocation(line: 227, column: 4, scope: !4064)
!4172 = !DILocation(line: 228, column: 4, scope: !4064)
!4173 = !DILocation(line: 232, column: 3, scope: !4064)
!4174 = !DILocation(line: 233, column: 7, scope: !4064)
!4175 = !DILocation(line: 233, column: 15, scope: !4064)
!4176 = !DILocation(line: 233, column: 17, scope: !4064)
!4177 = !DILocation(line: 234, column: 4, scope: !4064)
!4178 = !DILocation(line: 233, column: 22, scope: !4064)
!4179 = !DILocation(line: 236, column: 8, scope: !4064)
!4180 = !DILocation(line: 236, column: 3, scope: !4064)
!4181 = !DILocation(line: 237, column: 6, scope: !4064)
!4182 = !DILocation(line: 237, column: 8, scope: !4064)
!4183 = !DILocation(line: 238, column: 4, scope: !4064)
!4184 = !DILocation(line: 239, column: 4, scope: !4064)
!4185 = distinct !DISubprogram(name: "runtime.printcomplex64", linkageName: "runtime.printcomplex64", scope: !460, file: !460, line: 268, type: !4186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4188)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!3683}
!4188 = !{!4189}
!4189 = !DILocalVariable(name: "c", arg: 1, scope: !4185, file: !460, line: 268, type: !3683)
!4190 = !DILocation(line: 268, column: 6, scope: !4185)
!4191 = !DILocation(line: 269, column: 9, scope: !4185)
!4192 = !DILocation(line: 270, column: 20, scope: !4185)
!4193 = !DILocation(line: 270, column: 19, scope: !4185)
!4194 = !DILocation(line: 270, column: 14, scope: !4185)
!4195 = !DILocation(line: 271, column: 20, scope: !4185)
!4196 = !DILocation(line: 271, column: 19, scope: !4185)
!4197 = !DILocation(line: 271, column: 14, scope: !4185)
!4198 = !DILocation(line: 272, column: 13, scope: !4185)
!4199 = !DILocation(line: 273, column: 2, scope: !4185)
!4200 = distinct !DISubprogram(name: "runtime.printcomplex128", linkageName: "runtime.printcomplex128", scope: !460, file: !460, line: 275, type: !4201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4203)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!3685}
!4203 = !{!4204}
!4204 = !DILocalVariable(name: "c", arg: 1, scope: !4200, file: !460, line: 275, type: !3685)
!4205 = !DILocation(line: 275, column: 6, scope: !4200)
!4206 = !DILocation(line: 276, column: 9, scope: !4200)
!4207 = !DILocation(line: 277, column: 20, scope: !4200)
!4208 = !DILocation(line: 277, column: 19, scope: !4200)
!4209 = !DILocation(line: 277, column: 14, scope: !4200)
!4210 = !DILocation(line: 278, column: 20, scope: !4200)
!4211 = !DILocation(line: 278, column: 19, scope: !4200)
!4212 = !DILocation(line: 278, column: 14, scope: !4200)
!4213 = !DILocation(line: 279, column: 13, scope: !4200)
!4214 = !DILocation(line: 280, column: 2, scope: !4200)
!4215 = distinct !DISubprogram(name: "runtime._panic", linkageName: "runtime._panic", scope: !428, file: !428, line: 54, type: !3662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4216)
!4216 = !{!4217}
!4217 = !DILocalVariable(name: "message", arg: 1, scope: !4215, file: !428, line: 54, type: !780)
!4218 = !DILocation(line: 54, column: 6, scope: !4215)
!4219 = !DILocation(line: 55, column: 16, scope: !4215)
!4220 = !DILocation(line: 55, column: 15, scope: !4215)
!4221 = !DILocation(line: 56, column: 2, scope: !4215)
!4222 = distinct !DISubprogram(name: "runtime.stringEqual", linkageName: "runtime.stringEqual", scope: !4223, file: !4223, line: 24, type: !4224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4226)
!4223 = !DIFile(filename: "string.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!38, !38}
!4226 = !{!4227, !4228, !4229}
!4227 = !DILocalVariable(name: "x", arg: 1, scope: !4222, file: !4223, line: 24, type: !38)
!4228 = !DILocalVariable(name: "y", arg: 2, scope: !4222, file: !4223, line: 24, type: !38)
!4229 = !DILocalVariable(name: "i", scope: !4222, file: !4223, line: 28, type: !1886)
!4230 = !DILocation(line: 24, column: 6, scope: !4222)
!4231 = !DILocation(line: 25, column: 9, scope: !4222)
!4232 = !DILocation(line: 25, column: 8, scope: !4222)
!4233 = !DILocation(line: 25, column: 19, scope: !4222)
!4234 = !DILocation(line: 25, column: 18, scope: !4222)
!4235 = !DILocation(line: 25, column: 12, scope: !4222)
!4236 = !DILocation(line: 0, scope: !4222)
!4237 = !DILocation(line: 26, column: 3, scope: !4222)
!4238 = !DILocation(line: 28, column: 6, scope: !4222)
!4239 = !DILocation(line: 28, column: 14, scope: !4222)
!4240 = !DILocation(line: 28, column: 22, scope: !4222)
!4241 = !DILocation(line: 28, column: 21, scope: !4222)
!4242 = !DILocation(line: 28, column: 16, scope: !4222)
!4243 = !DILocation(line: 29, column: 8, scope: !4222)
!4244 = !DILocation(line: 29, column: 6, scope: !4222)
!4245 = !DILocation(line: 29, column: 7, scope: !4222)
!4246 = !DILocation(line: 29, column: 16, scope: !4222)
!4247 = !DILocation(line: 29, column: 14, scope: !4222)
!4248 = !DILocation(line: 29, column: 15, scope: !4222)
!4249 = !DILocation(line: 29, column: 11, scope: !4222)
!4250 = !DILocation(line: 30, column: 4, scope: !4222)
!4251 = !DILocation(line: 28, column: 26, scope: !4222)
!4252 = !DILocation(line: 33, column: 2, scope: !4222)
!4253 = distinct !DISubprogram(name: "runtime.slicePanic", linkageName: "runtime.slicePanic", scope: !428, file: !428, line: 198, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!4254 = !DILocation(line: 199, column: 30, scope: !4253)
!4255 = !DILocation(line: 199, column: 16, scope: !4253)
!4256 = !DILocation(line: 200, column: 2, scope: !4253)
!4257 = distinct !DISubprogram(name: "runtime.fminimum", linkageName: "fminimum", scope: !1562, file: !1562, line: 60, type: !4258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4260)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!797, !797}
!4260 = !{!4261, !4262}
!4261 = !DILocalVariable(name: "x", arg: 1, scope: !4257, file: !1562, line: 60, type: !797)
!4262 = !DILocalVariable(name: "y", arg: 2, scope: !4257, file: !1562, line: 60, type: !797)
!4263 = !DILocation(line: 60, column: 6, scope: !4257)
!4264 = !DILocation(line: 61, column: 24, scope: !4257)
!4265 = !DILocation(line: 61, column: 27, scope: !4257)
!4266 = !DILocation(line: 61, column: 23, scope: !4257)
!4267 = !DILocation(line: 61, column: 2, scope: !4257)
!4268 = distinct !DISubprogram(name: "runtime.minimumFloat64", linkageName: "runtime.minimumFloat64", scope: !1562, file: !1562, line: 87, type: !4258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4269)
!4269 = !{!4270, !4271}
!4270 = !DILocalVariable(name: "x", arg: 1, scope: !4268, file: !1562, line: 87, type: !797)
!4271 = !DILocalVariable(name: "y", arg: 2, scope: !4268, file: !1562, line: 87, type: !797)
!4272 = !DILocation(line: 87, column: 6, scope: !4268)
!4273 = !DILocation(line: 88, column: 38, scope: !4268)
!4274 = !DILocation(line: 88, column: 41, scope: !4268)
!4275 = !DILocation(line: 88, column: 37, scope: !4268)
!4276 = !DILocation(line: 88, column: 2, scope: !4268)
!4277 = distinct !DISubprogram(name: "runtime.minimumFloat[float64 int64]", linkageName: "runtime.minimumFloat[float64 int64]", scope: !1562, file: !1562, line: 101, type: !4278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4280)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!797, !797, !1699, !1699}
!4280 = !{!4281, !4282, !4283, !4284, !4285, !4286}
!4281 = !DILocalVariable(name: "x", arg: 1, scope: !4277, file: !1562, line: 101, type: !797)
!4282 = !DILocalVariable(name: "y", arg: 2, scope: !4277, file: !1562, line: 101, type: !797)
!4283 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4277, file: !1562, line: 101, type: !1699)
!4284 = !DILocalVariable(name: "magMask", arg: 4, scope: !4277, file: !1562, line: 101, type: !1699)
!4285 = !DILocalVariable(name: "xBits", scope: !4277, file: !1562, line: 102, type: !780)
!4286 = !DILocalVariable(name: "yBits", scope: !4277, file: !1562, line: 103, type: !780)
!4287 = !DILocation(line: 101, column: 6, scope: !4277)
!4288 = !DILocation(line: 101, column: 40, scope: !4277)
!4289 = !DILocation(line: 101, column: 43, scope: !4277)
!4290 = !DILocation(line: 102, column: 11, scope: !4277)
!4291 = !DILocation(line: 102, column: 2, scope: !4277)
!4292 = !DILocation(line: 103, column: 11, scope: !4277)
!4293 = !DILocation(line: 103, column: 2, scope: !4277)
!4294 = !DILocation(line: 107, column: 7, scope: !4277)
!4295 = !DILocation(line: 107, column: 16, scope: !4277)
!4296 = !DILocation(line: 107, column: 13, scope: !4277)
!4297 = !DILocation(line: 0, scope: !4277)
!4298 = !DILocation(line: 108, column: 10, scope: !4277)
!4299 = !DILocation(line: 108, column: 3, scope: !4277)
!4300 = !DILocation(line: 109, column: 7, scope: !4277)
!4301 = !DILocation(line: 109, column: 16, scope: !4277)
!4302 = !DILocation(line: 109, column: 13, scope: !4277)
!4303 = !DILocation(line: 110, column: 10, scope: !4277)
!4304 = !DILocation(line: 110, column: 3, scope: !4277)
!4305 = !DILocation(line: 118, column: 5, scope: !4277)
!4306 = !DILocation(line: 118, column: 11, scope: !4277)
!4307 = !DILocation(line: 119, column: 12, scope: !4277)
!4308 = !DILocation(line: 119, column: 3, scope: !4277)
!4309 = !DILocation(line: 121, column: 5, scope: !4277)
!4310 = !DILocation(line: 121, column: 11, scope: !4277)
!4311 = !DILocation(line: 122, column: 12, scope: !4277)
!4312 = !DILocation(line: 122, column: 3, scope: !4277)
!4313 = !DILocation(line: 124, column: 5, scope: !4277)
!4314 = !DILocation(line: 124, column: 14, scope: !4277)
!4315 = !DILocation(line: 124, column: 11, scope: !4277)
!4316 = !DILocation(line: 125, column: 10, scope: !4277)
!4317 = !DILocation(line: 125, column: 3, scope: !4277)
!4318 = !DILocation(line: 127, column: 10, scope: !4277)
!4319 = !DILocation(line: 127, column: 3, scope: !4277)
!4320 = distinct !DISubprogram(name: "runtime.fminimumf", linkageName: "fminimumf", scope: !1562, file: !1562, line: 65, type: !4321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4323)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!3680, !3680}
!4323 = !{!4324, !4325}
!4324 = !DILocalVariable(name: "x", arg: 1, scope: !4320, file: !1562, line: 65, type: !3680)
!4325 = !DILocalVariable(name: "y", arg: 2, scope: !4320, file: !1562, line: 65, type: !3680)
!4326 = !DILocation(line: 65, column: 6, scope: !4320)
!4327 = !DILocation(line: 66, column: 24, scope: !4320)
!4328 = !DILocation(line: 66, column: 27, scope: !4320)
!4329 = !DILocation(line: 66, column: 23, scope: !4320)
!4330 = !DILocation(line: 66, column: 2, scope: !4320)
!4331 = distinct !DISubprogram(name: "runtime.minimumFloat32", linkageName: "runtime.minimumFloat32", scope: !1562, file: !1562, line: 83, type: !4321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4332)
!4332 = !{!4333, !4334}
!4333 = !DILocalVariable(name: "x", arg: 1, scope: !4331, file: !1562, line: 83, type: !3680)
!4334 = !DILocalVariable(name: "y", arg: 2, scope: !4331, file: !1562, line: 83, type: !3680)
!4335 = !DILocation(line: 83, column: 6, scope: !4331)
!4336 = !DILocation(line: 84, column: 38, scope: !4331)
!4337 = !DILocation(line: 84, column: 41, scope: !4331)
!4338 = !DILocation(line: 84, column: 37, scope: !4331)
!4339 = !DILocation(line: 84, column: 2, scope: !4331)
!4340 = distinct !DISubprogram(name: "runtime.minimumFloat[float32 int32]", linkageName: "runtime.minimumFloat[float32 int32]", scope: !1562, file: !1562, line: 101, type: !4341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4343)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!3680, !3680, !381, !381}
!4343 = !{!4344, !4345, !4346, !4347, !4348, !4349}
!4344 = !DILocalVariable(name: "x", arg: 1, scope: !4340, file: !1562, line: 101, type: !3680)
!4345 = !DILocalVariable(name: "y", arg: 2, scope: !4340, file: !1562, line: 101, type: !3680)
!4346 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4340, file: !1562, line: 101, type: !381)
!4347 = !DILocalVariable(name: "magMask", arg: 4, scope: !4340, file: !1562, line: 101, type: !381)
!4348 = !DILocalVariable(name: "xBits", scope: !4340, file: !1562, line: 102, type: !780)
!4349 = !DILocalVariable(name: "yBits", scope: !4340, file: !1562, line: 103, type: !780)
!4350 = !DILocation(line: 101, column: 6, scope: !4340)
!4351 = !DILocation(line: 101, column: 40, scope: !4340)
!4352 = !DILocation(line: 101, column: 43, scope: !4340)
!4353 = !DILocation(line: 102, column: 11, scope: !4340)
!4354 = !DILocation(line: 102, column: 2, scope: !4340)
!4355 = !DILocation(line: 103, column: 11, scope: !4340)
!4356 = !DILocation(line: 103, column: 2, scope: !4340)
!4357 = !DILocation(line: 107, column: 7, scope: !4340)
!4358 = !DILocation(line: 107, column: 16, scope: !4340)
!4359 = !DILocation(line: 107, column: 13, scope: !4340)
!4360 = !DILocation(line: 0, scope: !4340)
!4361 = !DILocation(line: 108, column: 10, scope: !4340)
!4362 = !DILocation(line: 108, column: 3, scope: !4340)
!4363 = !DILocation(line: 109, column: 7, scope: !4340)
!4364 = !DILocation(line: 109, column: 16, scope: !4340)
!4365 = !DILocation(line: 109, column: 13, scope: !4340)
!4366 = !DILocation(line: 110, column: 10, scope: !4340)
!4367 = !DILocation(line: 110, column: 3, scope: !4340)
!4368 = !DILocation(line: 118, column: 5, scope: !4340)
!4369 = !DILocation(line: 118, column: 11, scope: !4340)
!4370 = !DILocation(line: 119, column: 12, scope: !4340)
!4371 = !DILocation(line: 119, column: 3, scope: !4340)
!4372 = !DILocation(line: 121, column: 5, scope: !4340)
!4373 = !DILocation(line: 121, column: 11, scope: !4340)
!4374 = !DILocation(line: 122, column: 12, scope: !4340)
!4375 = !DILocation(line: 122, column: 3, scope: !4340)
!4376 = !DILocation(line: 124, column: 5, scope: !4340)
!4377 = !DILocation(line: 124, column: 14, scope: !4340)
!4378 = !DILocation(line: 124, column: 11, scope: !4340)
!4379 = !DILocation(line: 125, column: 10, scope: !4340)
!4380 = !DILocation(line: 125, column: 3, scope: !4340)
!4381 = !DILocation(line: 127, column: 10, scope: !4340)
!4382 = !DILocation(line: 127, column: 3, scope: !4340)
!4383 = distinct !DISubprogram(name: "runtime.fmaximum", linkageName: "fmaximum", scope: !1562, file: !1562, line: 70, type: !4258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4384)
!4384 = !{!4385, !4386}
!4385 = !DILocalVariable(name: "x", arg: 1, scope: !4383, file: !1562, line: 70, type: !797)
!4386 = !DILocalVariable(name: "y", arg: 2, scope: !4383, file: !1562, line: 70, type: !797)
!4387 = !DILocation(line: 70, column: 6, scope: !4383)
!4388 = !DILocation(line: 71, column: 24, scope: !4383)
!4389 = !DILocation(line: 71, column: 27, scope: !4383)
!4390 = !DILocation(line: 71, column: 23, scope: !4383)
!4391 = !DILocation(line: 71, column: 2, scope: !4383)
!4392 = distinct !DISubprogram(name: "runtime.maximumFloat64", linkageName: "runtime.maximumFloat64", scope: !1562, file: !1562, line: 95, type: !4258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4393)
!4393 = !{!4394, !4395}
!4394 = !DILocalVariable(name: "x", arg: 1, scope: !4392, file: !1562, line: 95, type: !797)
!4395 = !DILocalVariable(name: "y", arg: 2, scope: !4392, file: !1562, line: 95, type: !797)
!4396 = !DILocation(line: 95, column: 6, scope: !4392)
!4397 = !DILocation(line: 96, column: 38, scope: !4392)
!4398 = !DILocation(line: 96, column: 41, scope: !4392)
!4399 = !DILocation(line: 96, column: 37, scope: !4392)
!4400 = !DILocation(line: 96, column: 2, scope: !4392)
!4401 = distinct !DISubprogram(name: "runtime.maximumFloat[float64 int64]", linkageName: "runtime.maximumFloat[float64 int64]", scope: !1562, file: !1562, line: 133, type: !4278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4402)
!4402 = !{!4403, !4404, !4405, !4406, !4407, !4408, !4409}
!4403 = !DILocalVariable(name: "x", arg: 1, scope: !4401, file: !1562, line: 133, type: !797)
!4404 = !DILocalVariable(name: "y", arg: 2, scope: !4401, file: !1562, line: 133, type: !797)
!4405 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4401, file: !1562, line: 133, type: !1699)
!4406 = !DILocalVariable(name: "magMask", arg: 4, scope: !4401, file: !1562, line: 133, type: !1699)
!4407 = !DILocalVariable(name: "xBits", scope: !4401, file: !1562, line: 134, type: !780)
!4408 = !DILocalVariable(name: "yBits", scope: !4401, file: !1562, line: 135, type: !780)
!4409 = !DILocalVariable(name: "maxNegNaN", scope: !4401, file: !1562, line: 149, type: !780)
!4410 = !DILocation(line: 133, column: 6, scope: !4401)
!4411 = !DILocation(line: 133, column: 40, scope: !4401)
!4412 = !DILocation(line: 133, column: 43, scope: !4401)
!4413 = !DILocation(line: 134, column: 11, scope: !4401)
!4414 = !DILocation(line: 134, column: 2, scope: !4401)
!4415 = !DILocation(line: 135, column: 11, scope: !4401)
!4416 = !DILocation(line: 135, column: 2, scope: !4401)
!4417 = !DILocation(line: 142, column: 5, scope: !4401)
!4418 = !DILocation(line: 142, column: 11, scope: !4401)
!4419 = !DILocation(line: 0, scope: !4401)
!4420 = !DILocation(line: 143, column: 12, scope: !4401)
!4421 = !DILocation(line: 143, column: 3, scope: !4401)
!4422 = !DILocation(line: 145, column: 5, scope: !4401)
!4423 = !DILocation(line: 145, column: 11, scope: !4401)
!4424 = !DILocation(line: 146, column: 12, scope: !4401)
!4425 = !DILocation(line: 146, column: 3, scope: !4401)
!4426 = !DILocation(line: 149, column: 16, scope: !4401)
!4427 = !DILocation(line: 149, column: 15, scope: !4401)
!4428 = !DILocation(line: 149, column: 2, scope: !4401)
!4429 = !DILocation(line: 151, column: 7, scope: !4401)
!4430 = !DILocation(line: 151, column: 16, scope: !4401)
!4431 = !DILocation(line: 151, column: 13, scope: !4401)
!4432 = !DILocation(line: 152, column: 10, scope: !4401)
!4433 = !DILocation(line: 152, column: 3, scope: !4401)
!4434 = !DILocation(line: 153, column: 7, scope: !4401)
!4435 = !DILocation(line: 153, column: 16, scope: !4401)
!4436 = !DILocation(line: 153, column: 13, scope: !4401)
!4437 = !DILocation(line: 154, column: 10, scope: !4401)
!4438 = !DILocation(line: 154, column: 3, scope: !4401)
!4439 = !DILocation(line: 156, column: 5, scope: !4401)
!4440 = !DILocation(line: 156, column: 14, scope: !4401)
!4441 = !DILocation(line: 156, column: 11, scope: !4401)
!4442 = !DILocation(line: 157, column: 10, scope: !4401)
!4443 = !DILocation(line: 157, column: 3, scope: !4401)
!4444 = !DILocation(line: 159, column: 10, scope: !4401)
!4445 = !DILocation(line: 159, column: 3, scope: !4401)
!4446 = distinct !DISubprogram(name: "runtime.fmaximumf", linkageName: "fmaximumf", scope: !1562, file: !1562, line: 75, type: !4321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4447)
!4447 = !{!4448, !4449}
!4448 = !DILocalVariable(name: "x", arg: 1, scope: !4446, file: !1562, line: 75, type: !3680)
!4449 = !DILocalVariable(name: "y", arg: 2, scope: !4446, file: !1562, line: 75, type: !3680)
!4450 = !DILocation(line: 75, column: 6, scope: !4446)
!4451 = !DILocation(line: 76, column: 24, scope: !4446)
!4452 = !DILocation(line: 76, column: 27, scope: !4446)
!4453 = !DILocation(line: 76, column: 23, scope: !4446)
!4454 = !DILocation(line: 76, column: 2, scope: !4446)
!4455 = distinct !DISubprogram(name: "runtime.maximumFloat32", linkageName: "runtime.maximumFloat32", scope: !1562, file: !1562, line: 91, type: !4321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4456)
!4456 = !{!4457, !4458}
!4457 = !DILocalVariable(name: "x", arg: 1, scope: !4455, file: !1562, line: 91, type: !3680)
!4458 = !DILocalVariable(name: "y", arg: 2, scope: !4455, file: !1562, line: 91, type: !3680)
!4459 = !DILocation(line: 91, column: 6, scope: !4455)
!4460 = !DILocation(line: 92, column: 38, scope: !4455)
!4461 = !DILocation(line: 92, column: 41, scope: !4455)
!4462 = !DILocation(line: 92, column: 37, scope: !4455)
!4463 = !DILocation(line: 92, column: 2, scope: !4455)
!4464 = distinct !DISubprogram(name: "runtime.maximumFloat[float32 int32]", linkageName: "runtime.maximumFloat[float32 int32]", scope: !1562, file: !1562, line: 133, type: !4341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4465)
!4465 = !{!4466, !4467, !4468, !4469, !4470, !4471, !4472}
!4466 = !DILocalVariable(name: "x", arg: 1, scope: !4464, file: !1562, line: 133, type: !3680)
!4467 = !DILocalVariable(name: "y", arg: 2, scope: !4464, file: !1562, line: 133, type: !3680)
!4468 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4464, file: !1562, line: 133, type: !381)
!4469 = !DILocalVariable(name: "magMask", arg: 4, scope: !4464, file: !1562, line: 133, type: !381)
!4470 = !DILocalVariable(name: "xBits", scope: !4464, file: !1562, line: 134, type: !780)
!4471 = !DILocalVariable(name: "yBits", scope: !4464, file: !1562, line: 135, type: !780)
!4472 = !DILocalVariable(name: "maxNegNaN", scope: !4464, file: !1562, line: 149, type: !780)
!4473 = !DILocation(line: 133, column: 6, scope: !4464)
!4474 = !DILocation(line: 133, column: 40, scope: !4464)
!4475 = !DILocation(line: 133, column: 43, scope: !4464)
!4476 = !DILocation(line: 134, column: 11, scope: !4464)
!4477 = !DILocation(line: 134, column: 2, scope: !4464)
!4478 = !DILocation(line: 135, column: 11, scope: !4464)
!4479 = !DILocation(line: 135, column: 2, scope: !4464)
!4480 = !DILocation(line: 142, column: 5, scope: !4464)
!4481 = !DILocation(line: 142, column: 11, scope: !4464)
!4482 = !DILocation(line: 0, scope: !4464)
!4483 = !DILocation(line: 143, column: 12, scope: !4464)
!4484 = !DILocation(line: 143, column: 3, scope: !4464)
!4485 = !DILocation(line: 145, column: 5, scope: !4464)
!4486 = !DILocation(line: 145, column: 11, scope: !4464)
!4487 = !DILocation(line: 146, column: 12, scope: !4464)
!4488 = !DILocation(line: 146, column: 3, scope: !4464)
!4489 = !DILocation(line: 149, column: 16, scope: !4464)
!4490 = !DILocation(line: 149, column: 15, scope: !4464)
!4491 = !DILocation(line: 149, column: 2, scope: !4464)
!4492 = !DILocation(line: 151, column: 7, scope: !4464)
!4493 = !DILocation(line: 151, column: 16, scope: !4464)
!4494 = !DILocation(line: 151, column: 13, scope: !4464)
!4495 = !DILocation(line: 152, column: 10, scope: !4464)
!4496 = !DILocation(line: 152, column: 3, scope: !4464)
!4497 = !DILocation(line: 153, column: 7, scope: !4464)
!4498 = !DILocation(line: 153, column: 16, scope: !4464)
!4499 = !DILocation(line: 153, column: 13, scope: !4464)
!4500 = !DILocation(line: 154, column: 10, scope: !4464)
!4501 = !DILocation(line: 154, column: 3, scope: !4464)
!4502 = !DILocation(line: 156, column: 5, scope: !4464)
!4503 = !DILocation(line: 156, column: 14, scope: !4464)
!4504 = !DILocation(line: 156, column: 11, scope: !4464)
!4505 = !DILocation(line: 157, column: 10, scope: !4464)
!4506 = !DILocation(line: 157, column: 3, scope: !4464)
!4507 = !DILocation(line: 159, column: 10, scope: !4464)
!4508 = !DILocation(line: 159, column: 3, scope: !4464)
!4509 = distinct !DISubprogram(name: "runtime.initHeap", linkageName: "runtime.initHeap", scope: !421, file: !421, line: 34, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!4510 = !DILocation(line: 35, column: 12, scope: !4509)
!4511 = !DILocation(line: 39, column: 8, scope: !4509)
!4512 = !DILocation(line: 40, column: 2, scope: !4509)
!4513 = distinct !DISubprogram(name: "runtime.gcCallback", linkageName: "tinygo_runtime_bdwgc_callback", scope: !421, file: !421, line: 46, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!4514 = !DILocation(line: 48, column: 17, scope: !4513)
!4515 = !DILocation(line: 49, column: 2, scope: !4513)
!4516 = distinct !DISubprogram(name: "runtime.gcMarkReachable", linkageName: "runtime.gcMarkReachable", scope: !3463, file: !3463, line: 7, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!4517 = !DILocation(line: 8, column: 25, scope: !4516)
!4518 = !DILocation(line: 9, column: 2, scope: !4516)
!4519 = distinct !DISubprogram(name: "runtime.markRoots", linkageName: "runtime.markRoots", scope: !421, file: !421, line: 51, type: !4520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4522)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!43, !43}
!4522 = !{!4523, !4524}
!4523 = !DILocalVariable(name: "start", arg: 1, scope: !4519, file: !421, line: 51, type: !43)
!4524 = !DILocalVariable(name: "end", arg: 2, scope: !4519, file: !421, line: 51, type: !43)
!4525 = !DILocation(line: 51, column: 6, scope: !4519)
!4526 = !DILocation(line: 52, column: 17, scope: !4519)
!4527 = !DILocation(line: 52, column: 24, scope: !4519)
!4528 = !DILocation(line: 52, column: 16, scope: !4519)
!4529 = !DILocation(line: 53, column: 2, scope: !4519)
!4530 = distinct !DISubprogram(name: "runtime.free", linkageName: "runtime.free", scope: !421, file: !421, line: 99, type: !2709, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4531)
!4531 = !{!4532}
!4532 = !DILocalVariable(name: "ptr", arg: 1, scope: !4530, file: !421, line: 99, type: !84)
!4533 = !DILocation(line: 99, column: 6, scope: !4530)
!4534 = !DILocation(line: 100, column: 13, scope: !4530)
!4535 = !DILocation(line: 100, column: 12, scope: !4530)
!4536 = !DILocation(line: 101, column: 2, scope: !4530)
!4537 = distinct !DISubprogram(name: "runtime.gcScanGlobals", linkageName: "internal/task.gcScanGlobals", scope: !3463, file: !3463, line: 15, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!4538 = !DILocation(line: 16, column: 13, scope: !4537)
!4539 = !DILocation(line: 17, column: 2, scope: !4537)
!4540 = distinct !DISubprogram(name: "runtime.findGlobals", linkageName: "runtime.findGlobals", scope: !3576, file: !3576, line: 95, type: !4541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4543)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!657}
!4543 = !{!4544, !4545, !4546, !4547, !4560, !4561, !4562, !4569, !4570}
!4544 = !DILocalVariable(name: "found", arg: 1, scope: !4540, file: !3576, line: 95, type: !657)
!4545 = !DILocalVariable(name: "headerPtr", scope: !4540, file: !3576, line: 103, type: !84)
!4546 = !DILocalVariable(name: "i", scope: !4540, file: !3576, line: 104, type: !1886)
!4547 = !DILocalVariable(name: "header", scope: !4540, file: !3576, line: 111, type: !4548)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64, align: 64, dwarfAddressSpace: 0)
!4549 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader64", baseType: !4550)
!4550 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !4551)
!4551 = !{!4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_type", baseType: !98, size: 32, align: 32)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !98, size: 32, align: 32, offset: 32)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "offset", baseType: !43, size: 64, align: 64, offset: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", baseType: !43, size: 64, align: 64, offset: 128)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", baseType: !43, size: 64, align: 64, offset: 192)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "filesz", baseType: !43, size: 64, align: 64, offset: 256)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", baseType: !43, size: 64, align: 64, offset: 320)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !43, size: 64, align: 64, offset: 384)
!4560 = !DILocalVariable(name: "start", scope: !4540, file: !3576, line: 113, type: !43)
!4561 = !DILocalVariable(name: "end", scope: !4540, file: !3576, line: 114, type: !43)
!4562 = !DILocalVariable(name: "header", scope: !4540, file: !3576, line: 118, type: !4563)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64, align: 64, dwarfAddressSpace: 0)
!4564 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader32", baseType: !4565)
!4565 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !4566)
!4566 = !{!4552, !4554, !4555, !4556, !4557, !4558, !4567, !4568}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !98, size: 32, align: 32, offset: 384)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !43, size: 64, align: 64, offset: 448)
!4569 = !DILocalVariable(name: "start", scope: !4540, file: !3576, line: 120, type: !43)
!4570 = !DILocalVariable(name: "end", scope: !4540, file: !3576, line: 121, type: !43)
!4571 = !DILocation(line: 95, column: 6, scope: !4540)
!4572 = !DILocation(line: 103, column: 80, scope: !4540)
!4573 = !DILocation(line: 103, column: 67, scope: !4540)
!4574 = !DILocation(line: 103, column: 29, scope: !4540)
!4575 = !DILocation(line: 103, column: 2, scope: !4540)
!4576 = !DILocation(line: 104, column: 6, scope: !4540)
!4577 = !DILocation(line: 0, scope: !4540)
!4578 = !DILocation(line: 104, column: 14, scope: !4540)
!4579 = !DILocation(line: 104, column: 33, scope: !4540)
!4580 = !DILocation(line: 104, column: 21, scope: !4540)
!4581 = !DILocation(line: 104, column: 16, scope: !4540)
!4582 = !DILocation(line: 111, column: 36, scope: !4540)
!4583 = !DILocation(line: 111, column: 4, scope: !4540)
!4584 = !DILocation(line: 112, column: 7, scope: !4540)
!4585 = !DILocation(line: 112, column: 14, scope: !4540)
!4586 = !DILocation(line: 112, column: 20, scope: !4540)
!4587 = !DILocation(line: 112, column: 34, scope: !4540)
!4588 = !DILocation(line: 112, column: 41, scope: !4540)
!4589 = !DILocation(line: 112, column: 46, scope: !4540)
!4590 = !DILocation(line: 112, column: 52, scope: !4540)
!4591 = !DILocation(line: 113, column: 14, scope: !4540)
!4592 = !DILocation(line: 113, column: 21, scope: !4540)
!4593 = !DILocation(line: 113, column: 5, scope: !4540)
!4594 = !DILocation(line: 114, column: 12, scope: !4540)
!4595 = !DILocation(line: 114, column: 20, scope: !4540)
!4596 = !DILocation(line: 114, column: 27, scope: !4540)
!4597 = !DILocation(line: 114, column: 18, scope: !4540)
!4598 = !DILocation(line: 114, column: 5, scope: !4540)
!4599 = !DILocation(line: 115, column: 5, scope: !4540)
!4600 = !DILocation(line: 115, column: 11, scope: !4540)
!4601 = !DILocation(line: 115, column: 18, scope: !4540)
!4602 = !DILocation(line: 115, column: 10, scope: !4540)
!4603 = !DILocation(line: 125, column: 26, scope: !4540)
!4604 = !DILocation(line: 125, column: 48, scope: !4540)
!4605 = !DILocation(line: 125, column: 25, scope: !4540)
!4606 = !DILocation(line: 125, column: 3, scope: !4540)
!4607 = !DILocation(line: 104, column: 41, scope: !4540)
!4608 = !DILocation(line: 118, column: 36, scope: !4540)
!4609 = !DILocation(line: 118, column: 4, scope: !4540)
!4610 = !DILocation(line: 119, column: 7, scope: !4540)
!4611 = !DILocation(line: 119, column: 14, scope: !4540)
!4612 = !DILocation(line: 119, column: 20, scope: !4540)
!4613 = !DILocation(line: 119, column: 34, scope: !4540)
!4614 = !DILocation(line: 119, column: 41, scope: !4540)
!4615 = !DILocation(line: 119, column: 46, scope: !4540)
!4616 = !DILocation(line: 119, column: 52, scope: !4540)
!4617 = !DILocation(line: 120, column: 14, scope: !4540)
!4618 = !DILocation(line: 120, column: 21, scope: !4540)
!4619 = !DILocation(line: 120, column: 5, scope: !4540)
!4620 = !DILocation(line: 121, column: 12, scope: !4540)
!4621 = !DILocation(line: 121, column: 20, scope: !4540)
!4622 = !DILocation(line: 121, column: 27, scope: !4540)
!4623 = !DILocation(line: 121, column: 18, scope: !4540)
!4624 = !DILocation(line: 121, column: 5, scope: !4540)
!4625 = !DILocation(line: 122, column: 5, scope: !4540)
!4626 = !DILocation(line: 122, column: 11, scope: !4540)
!4627 = !DILocation(line: 122, column: 18, scope: !4540)
!4628 = !DILocation(line: 122, column: 10, scope: !4540)
!4629 = !DILocation(line: 127, column: 2, scope: !4540)
!4630 = distinct !DISubprogram(name: "runtime.scanstack", linkageName: "tinygo_scanstack", scope: !3463, file: !3463, line: 23, type: !3203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4631)
!4631 = !{!4632}
!4632 = !DILocalVariable(name: "sp", arg: 1, scope: !4630, file: !3463, line: 23, type: !43)
!4633 = !DILocation(line: 23, column: 6, scope: !4630)
!4634 = !DILocation(line: 24, column: 12, scope: !4630)
!4635 = !DILocation(line: 24, column: 29, scope: !4630)
!4636 = !DILocation(line: 24, column: 11, scope: !4630)
!4637 = !DILocation(line: 25, column: 2, scope: !4630)
!4638 = distinct !DISubprogram(name: "runtime.unsafeSlicePanic", linkageName: "runtime.unsafeSlicePanic", scope: !428, file: !428, line: 211, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!4639 = !DILocation(line: 212, column: 30, scope: !4638)
!4640 = !DILocation(line: 212, column: 16, scope: !4638)
!4641 = !DILocation(line: 213, column: 2, scope: !4638)
!4642 = distinct !DISubprogram(name: "runtime.negativeShiftPanic", linkageName: "runtime.negativeShiftPanic", scope: !428, file: !428, line: 221, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!4643 = !DILocation(line: 222, column: 30, scope: !4642)
!4644 = !DILocation(line: 222, column: 16, scope: !4642)
!4645 = !DILocation(line: 223, column: 2, scope: !4642)
!4646 = distinct !DISubprogram(name: "runtime.divideByZeroPanic", linkageName: "runtime.divideByZeroPanic", scope: !428, file: !428, line: 226, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!4647 = !DILocation(line: 227, column: 30, scope: !4646)
!4648 = !DILocation(line: 227, column: 16, scope: !4646)
!4649 = !DILocation(line: 228, column: 2, scope: !4646)
!4650 = distinct !DISubprogram(name: "runtime.printspace", linkageName: "runtime.printspace", scope: !460, file: !460, line: 282, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!4651 = !DILocation(line: 283, column: 9, scope: !4650)
!4652 = !DILocation(line: 284, column: 2, scope: !4650)
!4653 = distinct !DISubprogram(name: "runtime.memmove", linkageName: "runtime.memmove", scope: !1586, file: !1586, line: 48, type: !3597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4654)
!4654 = !{!4655, !4656, !4657}
!4655 = !DILocalVariable(name: "dst", arg: 1, scope: !4653, file: !1586, line: 48, type: !84)
!4656 = !DILocalVariable(name: "src", arg: 2, scope: !4653, file: !1586, line: 48, type: !84)
!4657 = !DILocalVariable(name: "size", arg: 3, scope: !4653, file: !1586, line: 48, type: !43)
!4658 = !DILocation(line: 48, column: 6, scope: !4653)
!4659 = distinct !DISubprogram(name: "runtime.main", linkageName: "main", scope: !414, file: !414, line: 80, type: !4660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4662)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!381, !487}
!4662 = !{!4663, !4664, !4665, !4666, !4667}
!4663 = !DILocalVariable(name: "argc", arg: 1, scope: !4659, file: !414, line: 80, type: !381)
!4664 = !DILocalVariable(name: "argv", arg: 2, scope: !4659, file: !414, line: 80, type: !487)
!4665 = !DILocalVariable(name: "main_argc", scope: !4659, file: !414, line: 105, type: !381)
!4666 = !DILocalVariable(name: "main_argv", scope: !4659, file: !414, line: 106, type: !487)
!4667 = !DILocalVariable(name: "stackTop", scope: !4659, file: !414, line: 75, type: !43)
!4668 = !DILocation(line: 80, column: 6, scope: !4659)
!4669 = !DILocation(line: 0, scope: !4659)
!4670 = !DILocation(line: 83, column: 15, scope: !4659)
!4671 = !DILocation(line: 87, column: 14, scope: !4659)
!4672 = !DILocation(line: 87, column: 2, scope: !4659)
!4673 = !DILocation(line: 88, column: 14, scope: !4659)
!4674 = !DILocation(line: 88, column: 2, scope: !4659)
!4675 = !DILocation(line: 92, column: 31, scope: !4659)
!4676 = !DILocation(line: 97, column: 35, scope: !4659)
!4677 = !DILocation(line: 97, column: 2, scope: !4659)
!4678 = !DILocation(line: 98, column: 9, scope: !4659)
!4679 = !DILocation(line: 101, column: 2, scope: !4659)
!4680 = distinct !DISubprogram(name: "runtime.allocateHeap", linkageName: "runtime.allocateHeap", scope: !414, file: !414, line: 303, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4681)
!4681 = !{!4682, !4683, !4684, !4685, !4686}
!4682 = !DILocalVariable(name: "heapMaxSize", scope: !4680, file: !414, line: 299, type: !43)
!4683 = !DILocalVariable(name: "addr", scope: !4680, file: !414, line: 309, type: !84)
!4684 = !DILocalVariable(name: "heapStart", scope: !4680, file: !414, line: 301, type: !43)
!4685 = !DILocalVariable(name: "heapSize", scope: !4680, file: !414, line: 298, type: !43)
!4686 = !DILocalVariable(name: "heapEnd", scope: !4680, file: !414, line: 301, type: !43)
!4687 = !DILocation(line: 307, column: 2, scope: !4680)
!4688 = !DILocation(line: 0, scope: !4680)
!4689 = !DILocation(line: 309, column: 21, scope: !4680)
!4690 = !DILocation(line: 309, column: 15, scope: !4680)
!4691 = !DILocation(line: 309, column: 3, scope: !4680)
!4692 = !DILocation(line: 310, column: 6, scope: !4680)
!4693 = !DILocation(line: 310, column: 11, scope: !4680)
!4694 = !DILocation(line: 315, column: 4, scope: !4680)
!4695 = !DILocation(line: 316, column: 7, scope: !4680)
!4696 = !DILocation(line: 316, column: 19, scope: !4680)
!4697 = !DILocation(line: 317, column: 17, scope: !4680)
!4698 = !DILocation(line: 321, column: 23, scope: !4680)
!4699 = !DILocation(line: 321, column: 22, scope: !4680)
!4700 = !DILocation(line: 321, column: 3, scope: !4680)
!4701 = !DILocation(line: 322, column: 13, scope: !4680)
!4702 = !DILocation(line: 322, column: 25, scope: !4680)
!4703 = !DILocation(line: 322, column: 23, scope: !4680)
!4704 = !DILocation(line: 322, column: 3, scope: !4680)
!4705 = !DILocation(line: 325, column: 2, scope: !4680)
!4706 = distinct !DISubprogram(name: "runtime.runMain", linkageName: "runtime.runMain", scope: !414, file: !414, line: 135, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!4707 = !DILocation(line: 136, column: 5, scope: !4706)
!4708 = !DILocation(line: 137, column: 2, scope: !4706)
!4709 = distinct !DISubprogram(name: "runtime.run", linkageName: "runtime.run", scope: !517, file: !517, line: 23, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4710)
!4710 = !{!4711}
!4711 = !DILocalVariable(name: "stackTop", scope: !4709, file: !414, line: 75, type: !43)
!4712 = !DILocation(line: 24, column: 10, scope: !4709)
!4713 = !DILocation(line: 25, column: 10, scope: !4709)
!4714 = !DILocation(line: 26, column: 12, scope: !4709)
!4715 = !DILocation(line: 26, column: 11, scope: !4709)
!4716 = !DILocation(line: 27, column: 9, scope: !4709)
!4717 = !DILocation(line: 28, column: 10, scope: !4709)
!4718 = !DILocation(line: 29, column: 2, scope: !4709)
!4719 = distinct !DISubprogram(name: "runtime.tinygo_handle_fatal_signal", linkageName: "tinygo_handle_fatal_signal", scope: !414, file: !414, line: 148, type: !4720, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4722)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!381, !43}
!4722 = !{!4723, !4724}
!4723 = !DILocalVariable(name: "sig", arg: 1, scope: !4719, file: !414, line: 148, type: !381)
!4724 = !DILocalVariable(name: "addr", arg: 2, scope: !4719, file: !414, line: 148, type: !43)
!4725 = !DILocation(line: 148, column: 6, scope: !4719)
!4726 = !DILocation(line: 0, scope: !4719)
!4727 = !DILocation(line: 150, column: 7, scope: !4719)
!4728 = !DILocation(line: 154, column: 5, scope: !4719)
!4729 = !DILocation(line: 154, column: 10, scope: !4719)
!4730 = !DILocation(line: 155, column: 14, scope: !4719)
!4731 = !DILocation(line: 156, column: 12, scope: !4719)
!4732 = !DILocation(line: 156, column: 11, scope: !4719)
!4733 = !DILocation(line: 160, column: 13, scope: !4719)
!4734 = !DILocation(line: 161, column: 9, scope: !4719)
!4735 = !DILocation(line: 162, column: 7, scope: !4719)
!4736 = !DILocation(line: 163, column: 10, scope: !4719)
!4737 = !DILocation(line: 180, column: 8, scope: !4719)
!4738 = !DILocation(line: 180, column: 7, scope: !4719)
!4739 = !DILocation(line: 181, column: 2, scope: !4719)
!4740 = !DILocation(line: 164, column: 7, scope: !4719)
!4741 = !DILocation(line: 165, column: 10, scope: !4719)
!4742 = !DILocation(line: 166, column: 7, scope: !4719)
!4743 = !DILocation(line: 167, column: 10, scope: !4719)
!4744 = !DILocation(line: 169, column: 11, scope: !4719)
!4745 = !DILocation(line: 169, column: 10, scope: !4719)
!4746 = !DILocation(line: 158, column: 14, scope: !4719)
!4747 = distinct !DISubprogram(name: "runtime.printlock", linkageName: "runtime.printlock", scope: !517, file: !517, line: 138, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!4748 = !DILocation(line: 139, column: 16, scope: !4747)
!4749 = !DILocation(line: 140, column: 2, scope: !4747)
!4750 = distinct !DISubprogram(name: "runtime.printunlock", linkageName: "runtime.printunlock", scope: !517, file: !517, line: 142, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558)
!4751 = !DILocation(line: 143, column: 18, scope: !4750)
!4752 = !DILocation(line: 144, column: 2, scope: !4750)
!4753 = distinct !DISubprogram(name: "runtime.sliceAppend", linkageName: "runtime.sliceAppend", scope: !4754, file: !4754, line: 12, type: !4755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4757)
!4754 = !DIFile(filename: "slice.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!84, !84, !43, !43, !43, !43, !84}
!4757 = !{!4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765}
!4758 = !DILocalVariable(name: "srcBuf", arg: 1, scope: !4753, file: !4754, line: 12, type: !84)
!4759 = !DILocalVariable(name: "elemsBuf", arg: 2, scope: !4753, file: !4754, line: 12, type: !84)
!4760 = !DILocalVariable(name: "srcLen", arg: 3, scope: !4753, file: !4754, line: 12, type: !43)
!4761 = !DILocalVariable(name: "srcCap", arg: 4, scope: !4753, file: !4754, line: 12, type: !43)
!4762 = !DILocalVariable(name: "elemsLen", arg: 5, scope: !4753, file: !4754, line: 12, type: !43)
!4763 = !DILocalVariable(name: "elemSize", arg: 6, scope: !4753, file: !4754, line: 12, type: !43)
!4764 = !DILocalVariable(name: "layout", arg: 7, scope: !4753, file: !4754, line: 12, type: !84)
!4765 = !DILocalVariable(name: "newLen", scope: !4753, file: !4754, line: 13, type: !43)
!4766 = !DILocation(line: 12, column: 6, scope: !4753)
!4767 = !DILocation(line: 13, column: 12, scope: !4753)
!4768 = !DILocation(line: 13, column: 21, scope: !4753)
!4769 = !DILocation(line: 13, column: 19, scope: !4753)
!4770 = !DILocation(line: 13, column: 2, scope: !4753)
!4771 = !DILocation(line: 14, column: 5, scope: !4753)
!4772 = !DILocation(line: 14, column: 14, scope: !4753)
!4773 = !DILocation(line: 0, scope: !4753)
!4774 = !DILocation(line: 17, column: 33, scope: !4753)
!4775 = !DILocation(line: 17, column: 41, scope: !4753)
!4776 = !DILocation(line: 17, column: 49, scope: !4753)
!4777 = !DILocation(line: 17, column: 57, scope: !4753)
!4778 = !DILocation(line: 17, column: 65, scope: !4753)
!4779 = !DILocation(line: 17, column: 75, scope: !4753)
!4780 = !DILocation(line: 17, column: 32, scope: !4753)
!4781 = !DILocation(line: 17, column: 3, scope: !4753)
!4782 = !DILocation(line: 17, column: 14, scope: !4753)
!4783 = !DILocation(line: 20, column: 22, scope: !4753)
!4784 = !DILocation(line: 20, column: 30, scope: !4753)
!4785 = !DILocation(line: 20, column: 37, scope: !4753)
!4786 = !DILocation(line: 20, column: 36, scope: !4753)
!4787 = !DILocation(line: 20, column: 21, scope: !4753)
!4788 = !DILocation(line: 20, column: 48, scope: !4753)
!4789 = !DILocation(line: 20, column: 58, scope: !4753)
!4790 = !DILocation(line: 20, column: 67, scope: !4753)
!4791 = !DILocation(line: 20, column: 66, scope: !4753)
!4792 = !DILocation(line: 20, column: 10, scope: !4753)
!4793 = !DILocation(line: 12, column: 18, scope: !4753)
!4794 = !DILocation(line: 12, column: 59, scope: !4753)
!4795 = !DILocation(line: 23, column: 9, scope: !4753)
!4796 = !DILocation(line: 23, column: 17, scope: !4753)
!4797 = !DILocation(line: 23, column: 25, scope: !4753)
!4798 = !DILocation(line: 23, column: 2, scope: !4753)
!4799 = distinct !DISubprogram(name: "runtime.sliceGrow", linkageName: "runtime.sliceGrow", scope: !4754, file: !4754, line: 27, type: !4800, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4802)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!84, !43, !43, !43, !43, !84}
!4802 = !{!4803, !4804, !4805, !4806, !4807, !4808, !4809}
!4803 = !DILocalVariable(name: "oldBuf", arg: 1, scope: !4799, file: !4754, line: 27, type: !84)
!4804 = !DILocalVariable(name: "oldLen", arg: 2, scope: !4799, file: !4754, line: 27, type: !43)
!4805 = !DILocalVariable(name: "oldCap", arg: 3, scope: !4799, file: !4754, line: 27, type: !43)
!4806 = !DILocalVariable(name: "newCap", arg: 4, scope: !4799, file: !4754, line: 27, type: !43)
!4807 = !DILocalVariable(name: "elemSize", arg: 5, scope: !4799, file: !4754, line: 27, type: !43)
!4808 = !DILocalVariable(name: "layout", arg: 6, scope: !4799, file: !4754, line: 27, type: !84)
!4809 = !DILocalVariable(name: "buf", scope: !4799, file: !4754, line: 39, type: !84)
!4810 = !DILocation(line: 27, column: 6, scope: !4799)
!4811 = !DILocation(line: 28, column: 5, scope: !4799)
!4812 = !DILocation(line: 28, column: 15, scope: !4799)
!4813 = !DILocation(line: 28, column: 12, scope: !4799)
!4814 = !DILocation(line: 0, scope: !4799)
!4815 = !DILocation(line: 30, column: 10, scope: !4799)
!4816 = !DILocation(line: 30, column: 18, scope: !4799)
!4817 = !DILocation(line: 30, column: 26, scope: !4799)
!4818 = !DILocation(line: 30, column: 3, scope: !4799)
!4819 = !DILocation(line: 37, column: 30, scope: !4799)
!4820 = !DILocation(line: 37, column: 24, scope: !4799)
!4821 = !DILocation(line: 37, column: 13, scope: !4799)
!4822 = !DILocation(line: 37, column: 2, scope: !4799)
!4823 = !DILocation(line: 39, column: 15, scope: !4799)
!4824 = !DILocation(line: 39, column: 22, scope: !4799)
!4825 = !DILocation(line: 39, column: 21, scope: !4799)
!4826 = !DILocation(line: 39, column: 32, scope: !4799)
!4827 = !DILocation(line: 39, column: 14, scope: !4799)
!4828 = !DILocation(line: 39, column: 2, scope: !4799)
!4829 = !DILocation(line: 40, column: 5, scope: !4799)
!4830 = !DILocation(line: 40, column: 12, scope: !4799)
!4831 = !DILocation(line: 42, column: 11, scope: !4799)
!4832 = !DILocation(line: 42, column: 16, scope: !4799)
!4833 = !DILocation(line: 42, column: 24, scope: !4799)
!4834 = !DILocation(line: 42, column: 31, scope: !4799)
!4835 = !DILocation(line: 42, column: 30, scope: !4799)
!4836 = !DILocation(line: 42, column: 10, scope: !4799)
!4837 = !DILocation(line: 45, column: 9, scope: !4799)
!4838 = !DILocation(line: 45, column: 14, scope: !4799)
!4839 = !DILocation(line: 45, column: 22, scope: !4799)
!4840 = !DILocation(line: 45, column: 2, scope: !4799)
!4841 = distinct !DISubprogram(name: "runtime.tinygo_signal_handler", linkageName: "tinygo_signal_handler", scope: !414, file: !414, line: 420, type: !3399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4842)
!4842 = !{!4843, !4844, !4845, !4846}
!4843 = !DILocalVariable(name: "s", arg: 1, scope: !4841, file: !414, line: 420, type: !381)
!4844 = !DILocalVariable(name: "mask", scope: !4841, file: !414, line: 427, type: !98)
!4845 = !DILocalVariable(name: "val", scope: !4841, file: !414, line: 428, type: !98)
!4846 = !DILocalVariable(name: "swapped", scope: !4841, file: !414, line: 429, type: !371)
!4847 = !DILocation(line: 420, column: 6, scope: !4841)
!4848 = !DILocation(line: 0, scope: !4841)
!4849 = !DILocation(line: 427, column: 31, scope: !4841)
!4850 = !DILocation(line: 427, column: 21, scope: !4841)
!4851 = !DILocation(line: 427, column: 3, scope: !4841)
!4852 = !DILocation(line: 428, column: 30, scope: !4841)
!4853 = !DILocation(line: 428, column: 3, scope: !4841)
!4854 = !DILocation(line: 429, column: 45, scope: !4841)
!4855 = !DILocation(line: 429, column: 50, scope: !4841)
!4856 = !DILocation(line: 429, column: 54, scope: !4841)
!4857 = !DILocation(line: 429, column: 53, scope: !4841)
!4858 = !DILocation(line: 429, column: 44, scope: !4841)
!4859 = !DILocation(line: 429, column: 3, scope: !4841)
!4860 = !DILocation(line: 430, column: 6, scope: !4841)
!4861 = !DILocation(line: 437, column: 21, scope: !4841)
!4862 = !DILocation(line: 437, column: 25, scope: !4841)
!4863 = !DILocation(line: 441, column: 22, scope: !4841)
!4864 = !DILocation(line: 443, column: 2, scope: !4841)
!4865 = distinct !DISubprogram(name: "runtime.stringConcat", linkageName: "runtime.stringConcat", scope: !4223, file: !4223, line: 56, type: !4866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4872)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!4868, !4868}
!4868 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._string", baseType: !4869)
!4869 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !4870)
!4870 = !{!2094, !4871}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !43, size: 64, align: 64, offset: 64)
!4872 = !{!4873, !4874, !4875, !4876}
!4873 = !DILocalVariable(name: "x", arg: 1, scope: !4865, file: !4223, line: 56, type: !4868)
!4874 = !DILocalVariable(name: "y", arg: 2, scope: !4865, file: !4223, line: 56, type: !4868)
!4875 = !DILocalVariable(name: "length", scope: !4865, file: !4223, line: 62, type: !43)
!4876 = !DILocalVariable(name: "buf", scope: !4865, file: !4223, line: 63, type: !84)
!4877 = !DILocation(line: 56, column: 6, scope: !4865)
!4878 = !DILocation(line: 56, column: 19, scope: !4865)
!4879 = !DILocation(line: 56, column: 22, scope: !4865)
!4880 = !DILocation(line: 57, column: 7, scope: !4865)
!4881 = !DILocation(line: 57, column: 14, scope: !4865)
!4882 = !DILocation(line: 0, scope: !4865)
!4883 = !DILocation(line: 58, column: 10, scope: !4865)
!4884 = !DILocation(line: 58, column: 3, scope: !4865)
!4885 = !DILocation(line: 59, column: 14, scope: !4865)
!4886 = !DILocation(line: 59, column: 21, scope: !4865)
!4887 = !DILocation(line: 60, column: 10, scope: !4865)
!4888 = !DILocation(line: 60, column: 3, scope: !4865)
!4889 = !DILocation(line: 62, column: 15, scope: !4865)
!4890 = !DILocation(line: 62, column: 26, scope: !4865)
!4891 = !DILocation(line: 62, column: 22, scope: !4865)
!4892 = !DILocation(line: 62, column: 3, scope: !4865)
!4893 = !DILocation(line: 63, column: 16, scope: !4865)
!4894 = !DILocation(line: 63, column: 45, scope: !4865)
!4895 = !DILocation(line: 63, column: 15, scope: !4865)
!4896 = !DILocation(line: 63, column: 3, scope: !4865)
!4897 = !DILocation(line: 64, column: 10, scope: !4865)
!4898 = !DILocation(line: 64, column: 32, scope: !4865)
!4899 = !DILocation(line: 64, column: 40, scope: !4865)
!4900 = !DILocation(line: 64, column: 9, scope: !4865)
!4901 = !DILocation(line: 65, column: 21, scope: !4865)
!4902 = !DILocation(line: 65, column: 28, scope: !4865)
!4903 = !DILocation(line: 65, column: 20, scope: !4865)
!4904 = !DILocation(line: 65, column: 54, scope: !4865)
!4905 = !DILocation(line: 65, column: 62, scope: !4865)
!4906 = !DILocation(line: 65, column: 9, scope: !4865)
!4907 = !DILocation(line: 66, column: 21, scope: !4865)
!4908 = !DILocation(line: 66, column: 31, scope: !4865)
!4909 = !DILocation(line: 66, column: 43, scope: !4865)
!4910 = !DILocation(line: 66, column: 45, scope: !4865)
!4911 = !DILocation(line: 66, column: 17, scope: !4865)
!4912 = !DILocation(line: 66, column: 3, scope: !4865)
!4913 = distinct !DISubprogram(name: "runtime.stringFromBytes", linkageName: "runtime.stringFromBytes", scope: !4223, file: !4223, line: 71, type: !4914, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1558, retainedNodes: !4917)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!4916}
!4916 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !2093)
!4917 = !{!4918, !4919}
!4918 = !DILocalVariable(name: "x", arg: 1, scope: !4913, file: !4223, line: 71, type: !4916)
!4919 = !DILocalVariable(name: "buf", scope: !4913, file: !4223, line: 76, type: !84)
!4920 = !DILocation(line: 71, column: 6, scope: !4913)
!4921 = !DILocation(line: 71, column: 22, scope: !4913)
!4922 = !DILocation(line: 76, column: 17, scope: !4913)
!4923 = !DILocation(line: 76, column: 43, scope: !4913)
!4924 = !DILocation(line: 76, column: 14, scope: !4913)
!4925 = !DILocation(line: 76, column: 2, scope: !4913)
!4926 = !DILocation(line: 77, column: 9, scope: !4913)
!4927 = !DILocation(line: 77, column: 31, scope: !4913)
!4928 = !DILocation(line: 77, column: 39, scope: !4913)
!4929 = !DILocation(line: 77, column: 8, scope: !4913)
!4930 = !DILocation(line: 78, column: 20, scope: !4913)
!4931 = !DILocation(line: 78, column: 30, scope: !4913)
!4932 = !DILocation(line: 78, column: 42, scope: !4913)
!4933 = !DILocation(line: 78, column: 46, scope: !4913)
!4934 = !DILocation(line: 78, column: 16, scope: !4913)
!4935 = !DILocation(line: 78, column: 2, scope: !4913)
!4936 = distinct !DISubprogram(name: "main.f_gold", linkageName: "f_gold", scope: !4937, file: !4937, line: 6, type: !1884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !4938)
!4937 = !DIFile(filename: "FIND_SUM_EVEN_FACTORS_NUMBER_emit.go", directory: "/root/es/vert/vert/source_funs/go_transcoder/FIND_SUM_EVEN_FACTORS_NUMBER")
!4938 = !{!4939, !4940, !4941, !4942, !4943, !4944}
!4939 = !DILocalVariable(name: "n", arg: 1, scope: !4936, file: !4937, line: 6, type: !1886)
!4940 = !DILocalVariable(name: "res", scope: !4936, file: !4937, line: 10, type: !1886)
!4941 = !DILocalVariable(name: "i", scope: !4936, file: !4937, line: 11, type: !1886)
!4942 = !DILocalVariable(name: "count", scope: !4936, file: !4937, line: 13, type: !1886)
!4943 = !DILocalVariable(name: "curr_sum", scope: !4936, file: !4937, line: 14, type: !1886)
!4944 = !DILocalVariable(name: "curr_term", scope: !4936, file: !4937, line: 15, type: !1886)
!4945 = !DILocation(line: 6, column: 6, scope: !4936)
!4946 = !DILocation(line: 7, column: 5, scope: !4936)
!4947 = !DILocation(line: 7, column: 6, scope: !4936)
!4948 = !DILocation(line: 7, column: 9, scope: !4936)
!4949 = !DILocation(line: 0, scope: !4936)
!4950 = !DILocation(line: 8, column: 3, scope: !4936)
!4951 = !DILocation(line: 10, column: 6, scope: !4936)
!4952 = !DILocation(line: 11, column: 6, scope: !4936)
!4953 = !DILocation(line: 6, column: 13, scope: !4936)
!4954 = !DILocation(line: 11, column: 27, scope: !4936)
!4955 = !DILocation(line: 11, column: 26, scope: !4936)
!4956 = !DILocation(line: 11, column: 51, scope: !4936)
!4957 = !DILocation(line: 11, column: 50, scope: !4936)
!4958 = !DILocation(line: 11, column: 42, scope: !4936)
!4959 = !DILocation(line: 11, column: 30, scope: !4936)
!4960 = !DILocation(line: 13, column: 4, scope: !4936)
!4961 = !DILocation(line: 14, column: 4, scope: !4936)
!4962 = !DILocation(line: 15, column: 4, scope: !4936)
!4963 = !DILocation(line: 17, column: 7, scope: !4936)
!4964 = !DILocation(line: 17, column: 9, scope: !4936)
!4965 = !DILocation(line: 17, column: 8, scope: !4936)
!4966 = !DILocation(line: 17, column: 11, scope: !4936)
!4967 = !DILocation(line: 18, column: 4, scope: !4936)
!4968 = !DILocation(line: 19, column: 8, scope: !4936)
!4969 = !DILocation(line: 19, column: 12, scope: !4936)
!4970 = !DILocation(line: 19, column: 10, scope: !4936)
!4971 = !DILocation(line: 19, column: 4, scope: !4936)
!4972 = !DILocation(line: 20, column: 7, scope: !4936)
!4973 = !DILocation(line: 20, column: 9, scope: !4936)
!4974 = !DILocation(line: 20, column: 17, scope: !4936)
!4975 = !DILocation(line: 20, column: 23, scope: !4936)
!4976 = !DILocation(line: 21, column: 5, scope: !4936)
!4977 = !DILocation(line: 23, column: 17, scope: !4936)
!4978 = !DILocation(line: 23, column: 4, scope: !4936)
!4979 = !DILocation(line: 24, column: 16, scope: !4936)
!4980 = !DILocation(line: 24, column: 4, scope: !4936)
!4981 = !DILocation(line: 26, column: 10, scope: !4936)
!4982 = !DILocation(line: 26, column: 3, scope: !4936)
!4983 = !DILocation(line: 11, column: 56, scope: !4936)
!4984 = !DILocation(line: 28, column: 5, scope: !4936)
!4985 = !DILocation(line: 28, column: 7, scope: !4936)
!4986 = !DILocation(line: 29, column: 10, scope: !4936)
!4987 = !DILocation(line: 29, column: 12, scope: !4936)
!4988 = !DILocation(line: 29, column: 3, scope: !4936)
!4989 = !DILocation(line: 31, column: 9, scope: !4936)
!4990 = !DILocation(line: 31, column: 2, scope: !4936)
