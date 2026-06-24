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
define internal double @math.Sqrt(double %x, ptr %context) #1 !dbg !1742 {
entry:
    #dbg_value(double %x, !1747, !DIExpression(), !1748)
  %0 = call double @llvm.sqrt.f64(double %x), !dbg !1748
  ret double %0, !dbg !1748
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #0

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
define internal i32 @"sync/atomic.SwapUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %new, ptr %context) unnamed_addr #1 !dbg !1754 {
entry:
    #dbg_value(ptr %addr, !1760, !DIExpression(), !1762)
    #dbg_value(i32 %new, !1761, !DIExpression(), !1762)
  %0 = atomicrmw xchg ptr %addr, i32 %new syncscope("singlethread") seq_cst, align 4, !dbg !1762
  ret i32 %0, !dbg !1762
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"sync/atomic.CompareAndSwapUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %old, i32 %new, ptr %context) unnamed_addr #1 !dbg !1763 {
entry:
    #dbg_value(ptr %addr, !1767, !DIExpression(), !1770)
    #dbg_value(i32 %old, !1768, !DIExpression(), !1770)
    #dbg_value(i32 %new, !1769, !DIExpression(), !1770)
  %0 = cmpxchg ptr %addr, i32 %old, i32 %new syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !1770
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !1770
  ret i1 %1, !dbg !1770
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.AddUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %delta, ptr %context) unnamed_addr #1 !dbg !1771 {
entry:
    #dbg_value(ptr %addr, !1773, !DIExpression(), !1775)
    #dbg_value(i32 %delta, !1774, !DIExpression(), !1775)
  %0 = atomicrmw add ptr %addr, i32 %delta syncscope("singlethread") seq_cst, align 4, !dbg !1775
  %1 = add i32 %0, %delta, !dbg !1775
  ret i32 %1, !dbg !1775
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.LoadUint32"(ptr nocapture dereferenceable_or_null(4) %addr, ptr %context) unnamed_addr #1 !dbg !1776 {
entry:
    #dbg_value(ptr %addr, !1780, !DIExpression(), !1781)
  %0 = load atomic i32, ptr %addr seq_cst, align 4, !dbg !1781
  ret i32 %0, !dbg !1781
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"sync/atomic.StoreUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %val, ptr %context) unnamed_addr #1 !dbg !1782 {
entry:
    #dbg_value(ptr %addr, !1784, !DIExpression(), !1786)
    #dbg_value(i32 %val, !1785, !DIExpression(), !1786)
  store atomic i32 %val, ptr %addr seq_cst, align 4, !dbg !1786
  ret void, !dbg !1786
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Add"(ptr dereferenceable_or_null(4) %x, i32 %delta, ptr %context) #1 !dbg !1787 {
entry:
    #dbg_value(ptr %x, !1793, !DIExpression(), !1795)
    #dbg_value(i32 %delta, !1794, !DIExpression(), !1795)
    #dbg_value(ptr %x, !1793, !DIExpression(), !1796)
  %0 = icmp eq ptr %x, null, !dbg !1797
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1797

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1797
    #dbg_value(i32 %delta, !1794, !DIExpression(), !1798)
  %2 = call i32 @"sync/atomic.AddUint32"(ptr %1, i32 %delta, ptr undef), !dbg !1799
  ret i32 %2, !dbg !1800

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1797
  unreachable, !dbg !1797
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr dereferenceable_or_null(4) %x, i32 %old, i32 %new, ptr %context) #1 !dbg !1801 {
entry:
    #dbg_value(ptr %x, !1805, !DIExpression(), !1808)
    #dbg_value(i32 %old, !1806, !DIExpression(), !1808)
    #dbg_value(i32 %new, !1807, !DIExpression(), !1808)
    #dbg_value(ptr %x, !1805, !DIExpression(), !1809)
  %0 = icmp eq ptr %x, null, !dbg !1810
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1810

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1810
    #dbg_value(i32 %old, !1806, !DIExpression(), !1811)
    #dbg_value(i32 %new, !1807, !DIExpression(), !1812)
  %2 = call i1 @"sync/atomic.CompareAndSwapUint32"(ptr %1, i32 %old, i32 %new, ptr undef), !dbg !1813
  ret i1 %2, !dbg !1814

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1810
  unreachable, !dbg !1810
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Load"(ptr dereferenceable_or_null(4) %x, ptr %context) #1 !dbg !1815 {
entry:
    #dbg_value(ptr %x, !1819, !DIExpression(), !1820)
    #dbg_value(ptr %x, !1819, !DIExpression(), !1821)
  %0 = icmp eq ptr %x, null, !dbg !1822
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1822

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1822
  %2 = call i32 @"sync/atomic.LoadUint32"(ptr %1, ptr undef), !dbg !1823
  ret i32 %2, !dbg !1824

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1822
  unreachable, !dbg !1822
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*sync/atomic.Uint32).Store"(ptr dereferenceable_or_null(4) %x, i32 %val, ptr %context) #1 !dbg !1825 {
entry:
    #dbg_value(ptr %x, !1827, !DIExpression(), !1829)
    #dbg_value(i32 %val, !1828, !DIExpression(), !1829)
    #dbg_value(ptr %x, !1827, !DIExpression(), !1830)
  %0 = icmp eq ptr %x, null, !dbg !1831
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1831

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1831
    #dbg_value(i32 %val, !1828, !DIExpression(), !1832)
  call void @"sync/atomic.StoreUint32"(ptr %1, i32 %val, ptr undef), !dbg !1833
  ret void, !dbg !1834

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1831
  unreachable, !dbg !1831
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Swap"(ptr dereferenceable_or_null(4) %x, i32 %new, ptr %context) #1 !dbg !1835 {
entry:
    #dbg_value(ptr %x, !1837, !DIExpression(), !1839)
    #dbg_value(i32 %new, !1838, !DIExpression(), !1839)
    #dbg_value(ptr %x, !1837, !DIExpression(), !1840)
  %0 = icmp eq ptr %x, null, !dbg !1841
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1841

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1841
    #dbg_value(i32 %new, !1838, !DIExpression(), !1842)
  %2 = call i32 @"sync/atomic.SwapUint32"(ptr %1, i32 %new, ptr undef), !dbg !1843
  ret i32 %2, !dbg !1844

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1841
  unreachable, !dbg !1841
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*internal/futex.Futex).Wait"(ptr dereferenceable_or_null(4) %f, i32 %cmp, ptr %context) #1 !dbg !1845 {
entry:
    #dbg_value(ptr %f, !1851, !DIExpression(), !1853)
    #dbg_value(i32 %cmp, !1852, !DIExpression(), !1853)
    #dbg_value(ptr %f, !1851, !DIExpression(), !1854)
  %0 = icmp eq ptr %f, null, !dbg !1855
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1855

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1855
    #dbg_value(i32 %cmp, !1852, !DIExpression(), !1856)
  call void @tinygo_futex_wait(ptr %1, i32 %cmp), !dbg !1857
  ret i1 false, !dbg !1858

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1855
  unreachable, !dbg !1855
}

declare void @tinygo_futex_wait(ptr nocapture dereferenceable_or_null(4), i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/futex.Futex).Wake"(ptr dereferenceable_or_null(4) %f, ptr %context) #1 !dbg !1859 {
entry:
    #dbg_value(ptr %f, !1863, !DIExpression(), !1864)
    #dbg_value(ptr %f, !1863, !DIExpression(), !1865)
  %0 = icmp eq ptr %f, null, !dbg !1866
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1866

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1866
  call void @tinygo_futex_wake(ptr %1), !dbg !1867
  ret void, !dbg !1868

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1866
  unreachable, !dbg !1866
}

declare void @tinygo_futex_wake(ptr nocapture dereferenceable_or_null(4)) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/futex.Futex).WakeAll"(ptr dereferenceable_or_null(4) %f, ptr %context) #1 !dbg !1869 {
entry:
    #dbg_value(ptr %f, !1871, !DIExpression(), !1872)
    #dbg_value(ptr %f, !1871, !DIExpression(), !1873)
  %0 = icmp eq ptr %f, null, !dbg !1874
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1874

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1874
  call void @tinygo_futex_wake_all(ptr %1), !dbg !1875
  ret void, !dbg !1876

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1874
  unreachable, !dbg !1874
}

declare void @tinygo_futex_wake_all(ptr nocapture dereferenceable_or_null(4)) #2

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(internal/gclayout.Layout).AsPtr"(i64 %l, ptr %context) #1 !dbg !1877 {
entry:
    #dbg_value(i64 %l, !1883, !DIExpression(), !1884)
    #dbg_value(i64 %l, !1883, !DIExpression(), !1885)
  %0 = inttoptr i64 %l to ptr, !dbg !1886
  ret ptr %0, !dbg !1887
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/itoa.Itoa"(i64 %val, ptr %context) #1 !dbg !1888 {
entry:
    #dbg_value(i64 %val, !1893, !DIExpression(), !1894)
    #dbg_value(i64 %val, !1893, !DIExpression(), !1895)
  %0 = icmp slt i64 %val, 0, !dbg !1896
  br i1 %0, label %if.then, label %if.done, !dbg !1897

if.then:                                          ; preds = %entry
    #dbg_value(i64 %val, !1893, !DIExpression(), !1898)
  %1 = sub i64 0, %val, !dbg !1899
  %2 = call %runtime._string @"internal/itoa.Uitoa"(i64 %1, ptr undef), !dbg !1900
  %3 = extractvalue %runtime._string %2, 0, !dbg !1901
  %4 = extractvalue %runtime._string %2, 1, !dbg !1901
  %5 = call %runtime._string @runtime.stringConcat(ptr @"internal/itoa$string", i64 1, ptr %3, i64 %4, ptr undef), !dbg !1901
  ret %runtime._string %5, !dbg !1902

if.done:                                          ; preds = %entry
    #dbg_value(i64 %val, !1893, !DIExpression(), !1903)
  %6 = call %runtime._string @"internal/itoa.Uitoa"(i64 %val, ptr undef), !dbg !1904
  ret %runtime._string %6, !dbg !1905
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/itoa.Uitoa"(i64 %val, ptr %context) unnamed_addr #1 !dbg !1906 {
entry:
    #dbg_value(i64 %val, !1908, !DIExpression(), !1911)
    #dbg_value(i64 %val, !1908, !DIExpression(), !1912)
  %0 = icmp eq i64 %val, 0, !dbg !1913
  br i1 %0, label %if.then, label %if.done, !dbg !1914

if.then:                                          ; preds = %entry
  ret %runtime._string { ptr @"internal/itoa$string.1", i64 1 }, !dbg !1915

if.done:                                          ; preds = %entry
  %buf = call align 1 ptr @runtime.alloc(i64 20, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !1916
    #dbg_value(i64 19, !1909, !DIExpression(), !1917)
  br label %for.loop, !dbg !1914

for.loop:                                         ; preds = %lookup.next, %if.done
  %1 = phi i64 [ %val, %if.done ], [ %4, %lookup.next ], !dbg !1918
  %2 = phi i64 [ 19, %if.done ], [ %11, %lookup.next ], !dbg !1917
    #dbg_value(i64 %1, !1908, !DIExpression(), !1919)
  %3 = icmp uge i64 %1, 10, !dbg !1920
  br i1 %3, label %for.body, label %for.done, !dbg !1914

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !1908, !DIExpression(), !1921)
  %4 = udiv i64 %1, 10, !dbg !1922
    #dbg_value(i64 %4, !1910, !DIExpression(), !1923)
    #dbg_value(i64 %2, !1909, !DIExpression(), !1924)
    #dbg_value(i64 %1, !1908, !DIExpression(), !1925)
  %5 = add i64 48, %1, !dbg !1926
    #dbg_value(i64 %4, !1910, !DIExpression(), !1927)
  %6 = mul i64 %4, 10, !dbg !1928
  %7 = sub i64 %5, %6, !dbg !1929
  %8 = trunc i64 %7 to i8, !dbg !1930
  %9 = icmp uge i64 %2, 20, !dbg !1931
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !1931

lookup.next:                                      ; preds = %for.body
  %10 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1931
  store i8 %8, ptr %10, align 1, !dbg !1931
  %11 = sub i64 %2, 1, !dbg !1932
    #dbg_value(i64 %11, !1909, !DIExpression(), !1932)
    #dbg_value(i64 %4, !1910, !DIExpression(), !1933)
    #dbg_value(i64 %4, !1908, !DIExpression(), !1934)
  br label %for.loop, !dbg !1914

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !1909, !DIExpression(), !1935)
    #dbg_value(i64 %1, !1908, !DIExpression(), !1936)
  %12 = add i64 48, %1, !dbg !1937
  %13 = trunc i64 %12 to i8, !dbg !1938
  %14 = icmp uge i64 %2, 20, !dbg !1939
  br i1 %14, label %lookup.throw1, label %lookup.next2, !dbg !1939

lookup.next2:                                     ; preds = %for.done
  %15 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1939
  store i8 %13, ptr %15, align 1, !dbg !1939
    #dbg_value(i64 %2, !1909, !DIExpression(), !1940)
  %slice.lowhigh = icmp ugt i64 %2, 20, !dbg !1941
  %slice.lowmax = or i1 %slice.lowhigh, false, !dbg !1941
  %slice.lowcap = or i1 %slice.lowmax, false, !dbg !1941
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !1941

slice.next:                                       ; preds = %lookup.next2
  %slice.len = sub i64 20, %2, !dbg !1941
  %slice.ptr = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1941
  %slice.cap = sub i64 20, %2, !dbg !1941
  %16 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !1941
  %17 = insertvalue { ptr, i64, i64 } %16, i64 %slice.len, 1, !dbg !1941
  %18 = insertvalue { ptr, i64, i64 } %17, i64 %slice.cap, 2, !dbg !1941
  %19 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !1942
  %20 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !1942
  %21 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !1942
  %22 = call %runtime._string @runtime.stringFromBytes(ptr %19, i64 %20, i64 %21, ptr undef), !dbg !1942
  ret %runtime._string %22, !dbg !1943

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !1931
  unreachable, !dbg !1931

lookup.throw1:                                    ; preds = %for.done
  call void @runtime.lookupPanic(ptr undef), !dbg !1939
  unreachable, !dbg !1939

slice.throw:                                      ; preds = %lookup.next2
  call void @runtime.slicePanic(ptr undef), !dbg !1941
  unreachable, !dbg !1941
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"unicode/utf8.DecodeRuneInString"(ptr readonly %s.data, i64 %s.len, ptr %context) #1 !dbg !1944 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !1952
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !1952
    #dbg_value(ptr %s.data, !1948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1952)
    #dbg_value(i64 %s.len, !1948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1952)
    #dbg_value(%runtime._string %1, !1948, !DIExpression(), !1953)
  %2 = extractvalue %runtime._string %1, 0, !dbg !1954
  %3 = extractvalue %runtime._string %1, 1, !dbg !1954
  %4 = call i1 @runtime.stringEqual(ptr %2, i64 %3, ptr null, i64 0, ptr undef), !dbg !1954
  %5 = xor i1 %4, true, !dbg !1954
  br i1 %5, label %cond.true, label %if.else, !dbg !1955

cond.true:                                        ; preds = %entry
    #dbg_value(%runtime._string %1, !1948, !DIExpression(), !1956)
  %len = extractvalue %runtime._string %1, 1, !dbg !1957
  %6 = icmp uge i64 0, %len, !dbg !1957
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !1957

lookup.next:                                      ; preds = %cond.true
  %7 = extractvalue %runtime._string %1, 0, !dbg !1957
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !1957
  %9 = load i8, ptr %8, align 1, !dbg !1957
  %10 = icmp ult i8 %9, -128, !dbg !1958
  br i1 %10, label %if.then, label %if.else, !dbg !1955

if.then:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !1948, !DIExpression(), !1959)
  %len1 = extractvalue %runtime._string %1, 1, !dbg !1960
  %11 = icmp uge i64 0, %len1, !dbg !1960
  br i1 %11, label %lookup.throw2, label %lookup.next3, !dbg !1960

lookup.next3:                                     ; preds = %if.then
  %12 = extractvalue %runtime._string %1, 0, !dbg !1960
  %13 = getelementptr inbounds i8, ptr %12, i64 0, !dbg !1960
  %14 = load i8, ptr %13, align 1, !dbg !1960
  %15 = zext i8 %14 to i32, !dbg !1961
  %16 = insertvalue { i32, i64 } zeroinitializer, i32 %15, 0, !dbg !1962
  %17 = insertvalue { i32, i64 } %16, i64 1, 1, !dbg !1962
  ret { i32, i64 } %17, !dbg !1962

if.else:                                          ; preds = %lookup.next, %entry
    #dbg_value(%runtime._string %1, !1948, !DIExpression(), !1963)
  %18 = extractvalue %runtime._string %1, 0, !dbg !1964
  %19 = extractvalue %runtime._string %1, 1, !dbg !1964
  %20 = call { i32, i64 } @"unicode/utf8.decodeRuneInStringSlow"(ptr %18, i64 %19, ptr undef), !dbg !1964
  %21 = extractvalue { i32, i64 } %20, 0, !dbg !1964
    #dbg_value(i32 %21, !1949, !DIExpression(), !1965)
  %22 = extractvalue { i32, i64 } %20, 1, !dbg !1964
    #dbg_value(i64 %22, !1951, !DIExpression(), !1966)
  %23 = insertvalue { i32, i64 } zeroinitializer, i32 %21, 0, !dbg !1967
  %24 = insertvalue { i32, i64 } %23, i64 %22, 1, !dbg !1967
  ret { i32, i64 } %24, !dbg !1967

lookup.throw:                                     ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !1957
  unreachable, !dbg !1957

lookup.throw2:                                    ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !1960
  unreachable, !dbg !1960
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"unicode/utf8.decodeRuneInStringSlow"(ptr readonly %s.data, i64 %s.len, ptr %context) unnamed_addr #1 !dbg !1968 {
entry:
  %accept = alloca %"unicode/utf8.acceptRange", align 8, !dbg !1980
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !1980
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !1980
    #dbg_value(ptr %s.data, !1970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1980)
    #dbg_value(i64 %s.len, !1970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1980)
    #dbg_value(%runtime._string %1, !1970, !DIExpression(), !1981)
  %len = extractvalue %runtime._string %1, 1, !dbg !1982
    #dbg_value(i64 %len, !1971, !DIExpression(), !1983)
    #dbg_value(i64 %len, !1971, !DIExpression(), !1984)
  %2 = icmp slt i64 %len, 1, !dbg !1985
  br i1 %2, label %if.then, label %if.done, !dbg !1986

if.then:                                          ; preds = %entry
  ret { i32, i64 } { i32 65533, i64 0 }, !dbg !1987

if.done:                                          ; preds = %entry
    #dbg_value(%runtime._string %1, !1970, !DIExpression(), !1988)
  %len17 = extractvalue %runtime._string %1, 1, !dbg !1989
  %3 = icmp uge i64 0, %len17, !dbg !1989
  br i1 %3, label %lookup.throw, label %lookup.next, !dbg !1989

lookup.next:                                      ; preds = %if.done
  %4 = extractvalue %runtime._string %1, 0, !dbg !1989
  %5 = getelementptr inbounds i8, ptr %4, i64 0, !dbg !1989
  %6 = load i8, ptr %5, align 1, !dbg !1989
    #dbg_value(i8 %6, !1972, !DIExpression(), !1990)
    #dbg_value(i8 %6, !1972, !DIExpression(), !1991)
  %7 = zext i8 %6 to i64, !dbg !1992
  %8 = icmp uge i64 %7, 256, !dbg !1992
  br i1 %8, label %lookup.throw18, label %lookup.next19, !dbg !1992

lookup.next19:                                    ; preds = %lookup.next
  %9 = getelementptr inbounds [256 x i8], ptr @"unicode/utf8.first", i32 0, i64 %7, !dbg !1992
  %10 = load i8, ptr %9, align 1, !dbg !1992
    #dbg_value(i8 %10, !1973, !DIExpression(), !1993)
    #dbg_value(i8 %10, !1973, !DIExpression(), !1994)
  %11 = icmp uge i8 %10, -16, !dbg !1995
  br i1 %11, label %if.then1, label %if.done2, !dbg !1986

if.then1:                                         ; preds = %lookup.next19
    #dbg_value(i8 %10, !1973, !DIExpression(), !1996)
  %12 = zext i8 %10 to i32, !dbg !1997
  %13 = shl i32 %12, 31, !dbg !1998
  %shift.result = select i1 false, i32 0, i32 %13, !dbg !1998
  %14 = ashr i32 %shift.result, 31, !dbg !1999
    #dbg_value(i32 %14, !1974, !DIExpression(), !2000)
    #dbg_value(%runtime._string %1, !1970, !DIExpression(), !2001)
  %len20 = extractvalue %runtime._string %1, 1, !dbg !2002
  %15 = icmp uge i64 0, %len20, !dbg !2002
  br i1 %15, label %lookup.throw21, label %lookup.next22, !dbg !2002

lookup.next22:                                    ; preds = %if.then1
  %16 = extractvalue %runtime._string %1, 0, !dbg !2002
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !2002
  %18 = load i8, ptr %17, align 1, !dbg !2002
  %19 = zext i8 %18 to i32, !dbg !2003
    #dbg_value(i32 %14, !1974, !DIExpression(), !2004)
  %20 = xor i32 %14, -1, !dbg !2005
  %21 = and i32 %19, %20, !dbg !2005
    #dbg_value(i32 %14, !1974, !DIExpression(), !2006)
  %22 = and i32 65533, %14, !dbg !2007
  %23 = or i32 %21, %22, !dbg !2008
  %24 = insertvalue { i32, i64 } zeroinitializer, i32 %23, 0, !dbg !2009
  %25 = insertvalue { i32, i64 } %24, i64 1, 1, !dbg !2009
  ret { i32, i64 } %25, !dbg !2009

if.done2:                                         ; preds = %lookup.next19
    #dbg_value(i8 %10, !1973, !DIExpression(), !2010)
  %26 = and i8 %10, 7, !dbg !2011
  %27 = zext i8 %26 to i64, !dbg !2012
    #dbg_value(i64 %27, !1975, !DIExpression(), !2013)
  store %"unicode/utf8.acceptRange" zeroinitializer, ptr %accept, align 1, !dbg !1980
    #dbg_value(i8 %10, !1973, !DIExpression(), !2014)
  %28 = lshr i8 %10, 4, !dbg !2015
  %shift.result23 = select i1 false, i8 0, i8 %28, !dbg !2015
  %29 = zext i8 %shift.result23 to i64, !dbg !2016
  %30 = icmp uge i64 %29, 16, !dbg !2016
  br i1 %30, label %lookup.throw24, label %lookup.next25, !dbg !2016

lookup.next25:                                    ; preds = %if.done2
  %31 = getelementptr inbounds [16 x %"unicode/utf8.acceptRange"], ptr @"unicode/utf8.acceptRanges", i32 0, i64 %29, !dbg !2016
  %32 = load %"unicode/utf8.acceptRange", ptr %31, align 1, !dbg !2016
  store %"unicode/utf8.acceptRange" %32, ptr %accept, align 1, !dbg !2017
    #dbg_value(%"unicode/utf8.acceptRange" %32, !1976, !DIExpression(), !2017)
    #dbg_value(i64 %len, !1971, !DIExpression(), !2018)
    #dbg_value(i64 %27, !1975, !DIExpression(), !2019)
  %33 = icmp slt i64 %len, %27, !dbg !2020
  br i1 %33, label %if.then3, label %if.done4, !dbg !1986

if.then3:                                         ; preds = %lookup.next25
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2021

if.done4:                                         ; preds = %lookup.next25
    #dbg_value(%runtime._string %1, !1970, !DIExpression(), !2022)
  %len26 = extractvalue %runtime._string %1, 1, !dbg !2023
  %34 = icmp uge i64 1, %len26, !dbg !2023
  br i1 %34, label %lookup.throw27, label %lookup.next28, !dbg !2023

lookup.next28:                                    ; preds = %if.done4
  %35 = extractvalue %runtime._string %1, 0, !dbg !2023
  %36 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !2023
  %37 = load i8, ptr %36, align 1, !dbg !2023
    #dbg_value(i8 %37, !1977, !DIExpression(), !2024)
    #dbg_value(i8 %37, !1977, !DIExpression(), !2025)
  %38 = getelementptr inbounds %"unicode/utf8.acceptRange", ptr %accept, i32 0, i32 0, !dbg !2026
  %39 = icmp eq ptr %38, null, !dbg !2026
  br i1 %39, label %deref.throw, label %deref.next, !dbg !2026

deref.next:                                       ; preds = %lookup.next28
  %40 = load i8, ptr %38, align 1, !dbg !2026
  %41 = icmp ult i8 %37, %40, !dbg !2027
  br i1 %41, label %if.then5, label %cond.false, !dbg !1986

if.then5:                                         ; preds = %deref.next30, %deref.next
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2028

cond.false:                                       ; preds = %deref.next
  %42 = getelementptr inbounds %"unicode/utf8.acceptRange", ptr %accept, i32 0, i32 1, !dbg !2029
  %43 = icmp eq ptr %42, null, !dbg !2029
  br i1 %43, label %deref.throw29, label %deref.next30, !dbg !2029

deref.next30:                                     ; preds = %cond.false
  %44 = load i8, ptr %42, align 1, !dbg !2029
    #dbg_value(i8 %37, !1977, !DIExpression(), !2030)
  %45 = icmp ult i8 %44, %37, !dbg !2031
  br i1 %45, label %if.then5, label %if.done6, !dbg !1986

if.done6:                                         ; preds = %deref.next30
    #dbg_value(i64 %27, !1975, !DIExpression(), !2032)
  %46 = icmp sle i64 %27, 2, !dbg !2033
  br i1 %46, label %if.then7, label %if.done8, !dbg !1986

if.then7:                                         ; preds = %if.done6
    #dbg_value(i8 %6, !1972, !DIExpression(), !2034)
  %47 = and i8 %6, 31, !dbg !2035
  %48 = zext i8 %47 to i32, !dbg !2036
  %49 = shl i32 %48, 6, !dbg !2037
  %shift.result31 = select i1 false, i32 0, i32 %49, !dbg !2037
    #dbg_value(i8 %37, !1977, !DIExpression(), !2038)
  %50 = and i8 %37, 63, !dbg !2039
  %51 = zext i8 %50 to i32, !dbg !2040
  %52 = or i32 %shift.result31, %51, !dbg !2041
  %53 = insertvalue { i32, i64 } zeroinitializer, i32 %52, 0, !dbg !2042
  %54 = insertvalue { i32, i64 } %53, i64 2, 1, !dbg !2042
  ret { i32, i64 } %54, !dbg !2042

if.done8:                                         ; preds = %if.done6
    #dbg_value(%runtime._string %1, !1970, !DIExpression(), !2043)
  %len32 = extractvalue %runtime._string %1, 1, !dbg !2044
  %55 = icmp uge i64 2, %len32, !dbg !2044
  br i1 %55, label %lookup.throw33, label %lookup.next34, !dbg !2044

lookup.next34:                                    ; preds = %if.done8
  %56 = extractvalue %runtime._string %1, 0, !dbg !2044
  %57 = getelementptr inbounds i8, ptr %56, i64 2, !dbg !2044
  %58 = load i8, ptr %57, align 1, !dbg !2044
    #dbg_value(i8 %58, !1978, !DIExpression(), !2045)
    #dbg_value(i8 %58, !1978, !DIExpression(), !2046)
  %59 = icmp ult i8 %58, -128, !dbg !2047
  br i1 %59, label %if.then9, label %cond.false10, !dbg !1986

if.then9:                                         ; preds = %cond.false10, %lookup.next34
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2048

cond.false10:                                     ; preds = %lookup.next34
    #dbg_value(i8 %58, !1978, !DIExpression(), !2049)
  %60 = icmp ult i8 -65, %58, !dbg !2050
  br i1 %60, label %if.then9, label %if.done11, !dbg !1986

if.done11:                                        ; preds = %cond.false10
    #dbg_value(i64 %27, !1975, !DIExpression(), !2051)
  %61 = icmp sle i64 %27, 3, !dbg !2052
  br i1 %61, label %if.then12, label %if.done13, !dbg !1986

if.then12:                                        ; preds = %if.done11
    #dbg_value(i8 %6, !1972, !DIExpression(), !2053)
  %62 = and i8 %6, 15, !dbg !2054
  %63 = zext i8 %62 to i32, !dbg !2055
  %64 = shl i32 %63, 12, !dbg !2056
  %shift.result35 = select i1 false, i32 0, i32 %64, !dbg !2056
    #dbg_value(i8 %37, !1977, !DIExpression(), !2057)
  %65 = and i8 %37, 63, !dbg !2058
  %66 = zext i8 %65 to i32, !dbg !2059
  %67 = shl i32 %66, 6, !dbg !2060
  %shift.result36 = select i1 false, i32 0, i32 %67, !dbg !2060
  %68 = or i32 %shift.result35, %shift.result36, !dbg !2061
    #dbg_value(i8 %58, !1978, !DIExpression(), !2062)
  %69 = and i8 %58, 63, !dbg !2063
  %70 = zext i8 %69 to i32, !dbg !2064
  %71 = or i32 %68, %70, !dbg !2065
  %72 = insertvalue { i32, i64 } zeroinitializer, i32 %71, 0, !dbg !2066
  %73 = insertvalue { i32, i64 } %72, i64 3, 1, !dbg !2066
  ret { i32, i64 } %73, !dbg !2066

if.done13:                                        ; preds = %if.done11
    #dbg_value(%runtime._string %1, !1970, !DIExpression(), !2067)
  %len37 = extractvalue %runtime._string %1, 1, !dbg !2068
  %74 = icmp uge i64 3, %len37, !dbg !2068
  br i1 %74, label %lookup.throw38, label %lookup.next39, !dbg !2068

lookup.next39:                                    ; preds = %if.done13
  %75 = extractvalue %runtime._string %1, 0, !dbg !2068
  %76 = getelementptr inbounds i8, ptr %75, i64 3, !dbg !2068
  %77 = load i8, ptr %76, align 1, !dbg !2068
    #dbg_value(i8 %77, !1979, !DIExpression(), !2069)
    #dbg_value(i8 %77, !1979, !DIExpression(), !2070)
  %78 = icmp ult i8 %77, -128, !dbg !2071
  br i1 %78, label %if.then14, label %cond.false15, !dbg !1986

if.then14:                                        ; preds = %cond.false15, %lookup.next39
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2072

cond.false15:                                     ; preds = %lookup.next39
    #dbg_value(i8 %77, !1979, !DIExpression(), !2073)
  %79 = icmp ult i8 -65, %77, !dbg !2074
  br i1 %79, label %if.then14, label %if.done16, !dbg !1986

if.done16:                                        ; preds = %cond.false15
    #dbg_value(i8 %6, !1972, !DIExpression(), !2075)
  %80 = and i8 %6, 7, !dbg !2076
  %81 = zext i8 %80 to i32, !dbg !2077
  %82 = shl i32 %81, 18, !dbg !2078
  %shift.result40 = select i1 false, i32 0, i32 %82, !dbg !2078
    #dbg_value(i8 %37, !1977, !DIExpression(), !2079)
  %83 = and i8 %37, 63, !dbg !2080
  %84 = zext i8 %83 to i32, !dbg !2081
  %85 = shl i32 %84, 12, !dbg !2082
  %shift.result41 = select i1 false, i32 0, i32 %85, !dbg !2082
  %86 = or i32 %shift.result40, %shift.result41, !dbg !2083
    #dbg_value(i8 %58, !1978, !DIExpression(), !2084)
  %87 = and i8 %58, 63, !dbg !2085
  %88 = zext i8 %87 to i32, !dbg !2086
  %89 = shl i32 %88, 6, !dbg !2087
  %shift.result42 = select i1 false, i32 0, i32 %89, !dbg !2087
  %90 = or i32 %86, %shift.result42, !dbg !2088
    #dbg_value(i8 %77, !1979, !DIExpression(), !2089)
  %91 = and i8 %77, 63, !dbg !2090
  %92 = zext i8 %91 to i32, !dbg !2091
  %93 = or i32 %90, %92, !dbg !2092
  %94 = insertvalue { i32, i64 } zeroinitializer, i32 %93, 0, !dbg !2093
  %95 = insertvalue { i32, i64 } %94, i64 4, 1, !dbg !2093
  ret { i32, i64 } %95, !dbg !2093

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !1989
  unreachable, !dbg !1989

lookup.throw18:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !1992
  unreachable, !dbg !1992

lookup.throw21:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !2002
  unreachable, !dbg !2002

lookup.throw24:                                   ; preds = %if.done2
  call void @runtime.lookupPanic(ptr undef), !dbg !2016
  unreachable, !dbg !2016

lookup.throw27:                                   ; preds = %if.done4
  call void @runtime.lookupPanic(ptr undef), !dbg !2023
  unreachable, !dbg !2023

deref.throw:                                      ; preds = %lookup.next28
  call void @runtime.nilPanic(ptr undef), !dbg !2026
  unreachable, !dbg !2026

deref.throw29:                                    ; preds = %cond.false
  call void @runtime.nilPanic(ptr undef), !dbg !2029
  unreachable, !dbg !2029

lookup.throw33:                                   ; preds = %if.done8
  call void @runtime.lookupPanic(ptr undef), !dbg !2044
  unreachable, !dbg !2044

lookup.throw38:                                   ; preds = %if.done13
  call void @runtime.lookupPanic(ptr undef), !dbg !2068
  unreachable, !dbg !2068
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"unicode/utf8.EncodeRune"(ptr %p.data, i64 %p.len, i64 %p.cap, i32 %r, ptr %context) #1 !dbg !2094 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !2104
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !2104
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !2104
    #dbg_value(ptr %p.data, !2102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2104)
    #dbg_value(i64 %p.len, !2102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2104)
    #dbg_value(i64 %p.cap, !2102, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2104)
    #dbg_value(i32 %r, !2103, !DIExpression(), !2104)
    #dbg_value(i32 %r, !2103, !DIExpression(), !2105)
  %3 = icmp ule i32 %r, 127, !dbg !2106
  br i1 %3, label %if.then, label %if.done, !dbg !2107

if.then:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2102, !DIExpression(), !2108)
    #dbg_value(i32 %r, !2103, !DIExpression(), !2109)
  %4 = trunc i32 %r to i8, !dbg !2110
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2111
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2111
  %5 = icmp uge i64 0, %indexaddr.len, !dbg !2111
  br i1 %5, label %lookup.throw, label %lookup.next, !dbg !2111

lookup.next:                                      ; preds = %if.then
  %6 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 0, !dbg !2111
  store i8 %4, ptr %6, align 1, !dbg !2111
  ret i64 1, !dbg !2112

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2102, !DIExpression(), !2113)
    #dbg_value(i32 %r, !2103, !DIExpression(), !2114)
  %7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2115
  %8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2115
  %9 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2115
  %10 = call i64 @"unicode/utf8.encodeRuneNonASCII"(ptr %7, i64 %8, i64 %9, i32 %r, ptr undef), !dbg !2115
  ret i64 %10, !dbg !2116

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2111
  unreachable, !dbg !2111
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"unicode/utf8.encodeRuneNonASCII"(ptr %p.data, i64 %p.len, i64 %p.cap, i32 %r, ptr %context) unnamed_addr #1 !dbg !2117 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !2122
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !2122
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !2122
    #dbg_value(ptr %p.data, !2119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2122)
    #dbg_value(i64 %p.len, !2119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2122)
    #dbg_value(i64 %p.cap, !2119, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2122)
    #dbg_value(i32 %r, !2120, !DIExpression(), !2122)
    #dbg_value(i32 %r, !2120, !DIExpression(), !2123)
    #dbg_value(i32 %r, !2121, !DIExpression(), !2124)
    #dbg_value(i32 %r, !2121, !DIExpression(), !2125)
  %3 = icmp ule i32 %r, 2047, !dbg !2126
  br i1 %3, label %switch.body, label %switch.next, !dbg !2127

switch.body:                                      ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2119, !DIExpression(), !2128)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2129
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2129
  %4 = icmp uge i64 1, %indexaddr.len, !dbg !2129
  br i1 %4, label %lookup.throw, label %lookup.next, !dbg !2129

lookup.next:                                      ; preds = %switch.body
  %5 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 1, !dbg !2129
  %6 = load i8, ptr %5, align 1, !dbg !2129
    #dbg_value({ ptr, i64, i64 } %2, !2119, !DIExpression(), !2130)
    #dbg_value(i32 %r, !2120, !DIExpression(), !2131)
  %7 = ashr i32 %r, 6, !dbg !2132
  %8 = trunc i32 %7 to i8, !dbg !2133
  %9 = or i8 -64, %8, !dbg !2134
  %indexaddr.ptr8 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2135
  %indexaddr.len9 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2135
  %10 = icmp uge i64 0, %indexaddr.len9, !dbg !2135
  br i1 %10, label %lookup.throw10, label %lookup.next11, !dbg !2135

lookup.next11:                                    ; preds = %lookup.next
  %11 = getelementptr inbounds i8, ptr %indexaddr.ptr8, i64 0, !dbg !2135
  store i8 %9, ptr %11, align 1, !dbg !2135
    #dbg_value({ ptr, i64, i64 } %2, !2119, !DIExpression(), !2136)
    #dbg_value(i32 %r, !2120, !DIExpression(), !2137)
  %12 = trunc i32 %r to i8, !dbg !2138
  %13 = and i8 %12, 63, !dbg !2139
  %14 = or i8 -128, %13, !dbg !2140
  %indexaddr.ptr12 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2141
  %indexaddr.len13 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2141
  %15 = icmp uge i64 1, %indexaddr.len13, !dbg !2141
  br i1 %15, label %lookup.throw14, label %lookup.next15, !dbg !2141

lookup.next15:                                    ; preds = %lookup.next11
  %16 = getelementptr inbounds i8, ptr %indexaddr.ptr12, i64 1, !dbg !2141
  store i8 %14, ptr %16, align 1, !dbg !2141
  ret i64 2, !dbg !2142

switch.next:                                      ; preds = %entry
    #dbg_value(i32 %r, !2121, !DIExpression(), !2143)
  %17 = icmp ult i32 %r, 55296, !dbg !2144
  br i1 %17, label %switch.body1, label %switch.next2, !dbg !2127

switch.body1:                                     ; preds = %binop.done, %switch.next
    #dbg_value({ ptr, i64, i64 } %2, !2119, !DIExpression(), !2145)
  %indexaddr.ptr16 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2146
  %indexaddr.len17 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2146
  %18 = icmp uge i64 2, %indexaddr.len17, !dbg !2146
  br i1 %18, label %lookup.throw18, label %lookup.next19, !dbg !2146

lookup.next19:                                    ; preds = %switch.body1
  %19 = getelementptr inbounds i8, ptr %indexaddr.ptr16, i64 2, !dbg !2146
  %20 = load i8, ptr %19, align 1, !dbg !2146
    #dbg_value({ ptr, i64, i64 } %2, !2119, !DIExpression(), !2147)
    #dbg_value(i32 %r, !2120, !DIExpression(), !2148)
  %21 = ashr i32 %r, 12, !dbg !2149
  %22 = trunc i32 %21 to i8, !dbg !2150
  %23 = or i8 -32, %22, !dbg !2151
  %indexaddr.ptr20 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2152
  %indexaddr.len21 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2152
  %24 = icmp uge i64 0, %indexaddr.len21, !dbg !2152
  br i1 %24, label %lookup.throw22, label %lookup.next23, !dbg !2152

lookup.next23:                                    ; preds = %lookup.next19
  %25 = getelementptr inbounds i8, ptr %indexaddr.ptr20, i64 0, !dbg !2152
  store i8 %23, ptr %25, align 1, !dbg !2152
    #dbg_value({ ptr, i64, i64 } %2, !2119, !DIExpression(), !2153)
    #dbg_value(i32 %r, !2120, !DIExpression(), !2154)
  %26 = ashr i32 %r, 6, !dbg !2155
  %27 = trunc i32 %26 to i8, !dbg !2156
  %28 = and i8 %27, 63, !dbg !2157
  %29 = or i8 -128, %28, !dbg !2158
  %indexaddr.ptr24 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2159
  %indexaddr.len25 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2159
  %30 = icmp uge i64 1, %indexaddr.len25, !dbg !2159
  br i1 %30, label %lookup.throw26, label %lookup.next27, !dbg !2159

lookup.next27:                                    ; preds = %lookup.next23
  %31 = getelementptr inbounds i8, ptr %indexaddr.ptr24, i64 1, !dbg !2159
  store i8 %29, ptr %31, align 1, !dbg !2159
    #dbg_value({ ptr, i64, i64 } %2, !2119, !DIExpression(), !2160)
    #dbg_value(i32 %r, !2120, !DIExpression(), !2161)
  %32 = trunc i32 %r to i8, !dbg !2162
  %33 = and i8 %32, 63, !dbg !2163
  %34 = or i8 -128, %33, !dbg !2164
  %indexaddr.ptr28 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2165
  %indexaddr.len29 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2165
  %35 = icmp uge i64 2, %indexaddr.len29, !dbg !2165
  br i1 %35, label %lookup.throw30, label %lookup.next31, !dbg !2165

lookup.next31:                                    ; preds = %lookup.next27
  %36 = getelementptr inbounds i8, ptr %indexaddr.ptr28, i64 2, !dbg !2165
  store i8 %34, ptr %36, align 1, !dbg !2165
  ret i64 3, !dbg !2166

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i32 %r, !2121, !DIExpression(), !2167)
  %37 = icmp ult i32 57343, %r, !dbg !2168
  br i1 %37, label %binop.rhs, label %binop.done, !dbg !2127

binop.rhs:                                        ; preds = %switch.next2
    #dbg_value(i32 %r, !2121, !DIExpression(), !2169)
  %38 = icmp ule i32 %r, 65535, !dbg !2170
  br label %binop.done, !dbg !2127

binop.done:                                       ; preds = %binop.rhs, %switch.next2
  %39 = phi i1 [ false, %switch.next2 ], [ %38, %binop.rhs ], !dbg !2171
  br i1 %39, label %switch.body1, label %switch.next3, !dbg !2127

switch.next3:                                     ; preds = %binop.done
    #dbg_value(i32 %r, !2121, !DIExpression(), !2172)
  %40 = icmp ugt i32 %r, 65535, !dbg !2173
  br i1 %40, label %binop.rhs4, label %binop.done5, !dbg !2127

binop.rhs4:                                       ; preds = %switch.next3
    #dbg_value(i32 %r, !2121, !DIExpression(), !2174)
  %41 = icmp ule i32 %r, 1114111, !dbg !2175
  br label %binop.done5, !dbg !2127

binop.done5:                                      ; preds = %binop.rhs4, %switch.next3
  %42 = phi i1 [ false, %switch.next3 ], [ %41, %binop.rhs4 ], !dbg !2176
  br i1 %42, label %switch.body6, label %switch.next7, !dbg !2127

switch.body6:                                     ; preds = %binop.done5
    #dbg_value({ ptr, i64, i64 } %2, !2119, !DIExpression(), !2177)
  %indexaddr.ptr32 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2178
  %indexaddr.len33 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2178
  %43 = icmp uge i64 3, %indexaddr.len33, !dbg !2178
  br i1 %43, label %lookup.throw34, label %lookup.next35, !dbg !2178

lookup.next35:                                    ; preds = %switch.body6
  %44 = getelementptr inbounds i8, ptr %indexaddr.ptr32, i64 3, !dbg !2178
  %45 = load i8, ptr %44, align 1, !dbg !2178
    #dbg_value({ ptr, i64, i64 } %2, !2119, !DIExpression(), !2179)
    #dbg_value(i32 %r, !2120, !DIExpression(), !2180)
  %46 = ashr i32 %r, 18, !dbg !2181
  %47 = trunc i32 %46 to i8, !dbg !2182
  %48 = or i8 -16, %47, !dbg !2183
  %indexaddr.ptr36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2184
  %indexaddr.len37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2184
  %49 = icmp uge i64 0, %indexaddr.len37, !dbg !2184
  br i1 %49, label %lookup.throw38, label %lookup.next39, !dbg !2184

lookup.next39:                                    ; preds = %lookup.next35
  %50 = getelementptr inbounds i8, ptr %indexaddr.ptr36, i64 0, !dbg !2184
  store i8 %48, ptr %50, align 1, !dbg !2184
    #dbg_value({ ptr, i64, i64 } %2, !2119, !DIExpression(), !2185)
    #dbg_value(i32 %r, !2120, !DIExpression(), !2186)
  %51 = ashr i32 %r, 12, !dbg !2187
  %52 = trunc i32 %51 to i8, !dbg !2188
  %53 = and i8 %52, 63, !dbg !2189
  %54 = or i8 -128, %53, !dbg !2190
  %indexaddr.ptr40 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2191
  %indexaddr.len41 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2191
  %55 = icmp uge i64 1, %indexaddr.len41, !dbg !2191
  br i1 %55, label %lookup.throw42, label %lookup.next43, !dbg !2191

lookup.next43:                                    ; preds = %lookup.next39
  %56 = getelementptr inbounds i8, ptr %indexaddr.ptr40, i64 1, !dbg !2191
  store i8 %54, ptr %56, align 1, !dbg !2191
    #dbg_value({ ptr, i64, i64 } %2, !2119, !DIExpression(), !2192)
    #dbg_value(i32 %r, !2120, !DIExpression(), !2193)
  %57 = ashr i32 %r, 6, !dbg !2194
  %58 = trunc i32 %57 to i8, !dbg !2195
  %59 = and i8 %58, 63, !dbg !2196
  %60 = or i8 -128, %59, !dbg !2197
  %indexaddr.ptr44 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2198
  %indexaddr.len45 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2198
  %61 = icmp uge i64 2, %indexaddr.len45, !dbg !2198
  br i1 %61, label %lookup.throw46, label %lookup.next47, !dbg !2198

lookup.next47:                                    ; preds = %lookup.next43
  %62 = getelementptr inbounds i8, ptr %indexaddr.ptr44, i64 2, !dbg !2198
  store i8 %60, ptr %62, align 1, !dbg !2198
    #dbg_value({ ptr, i64, i64 } %2, !2119, !DIExpression(), !2199)
    #dbg_value(i32 %r, !2120, !DIExpression(), !2200)
  %63 = trunc i32 %r to i8, !dbg !2201
  %64 = and i8 %63, 63, !dbg !2202
  %65 = or i8 -128, %64, !dbg !2203
  %indexaddr.ptr48 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2204
  %indexaddr.len49 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2204
  %66 = icmp uge i64 3, %indexaddr.len49, !dbg !2204
  br i1 %66, label %lookup.throw50, label %lookup.next51, !dbg !2204

lookup.next51:                                    ; preds = %lookup.next47
  %67 = getelementptr inbounds i8, ptr %indexaddr.ptr48, i64 3, !dbg !2204
  store i8 %65, ptr %67, align 1, !dbg !2204
  ret i64 4, !dbg !2205

switch.next7:                                     ; preds = %binop.done5
    #dbg_value({ ptr, i64, i64 } %2, !2119, !DIExpression(), !2206)
  %indexaddr.ptr52 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2207
  %indexaddr.len53 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2207
  %68 = icmp uge i64 2, %indexaddr.len53, !dbg !2207
  br i1 %68, label %lookup.throw54, label %lookup.next55, !dbg !2207

lookup.next55:                                    ; preds = %switch.next7
  %69 = getelementptr inbounds i8, ptr %indexaddr.ptr52, i64 2, !dbg !2207
  %70 = load i8, ptr %69, align 1, !dbg !2207
    #dbg_value({ ptr, i64, i64 } %2, !2119, !DIExpression(), !2208)
  %indexaddr.ptr56 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2209
  %indexaddr.len57 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2209
  %71 = icmp uge i64 0, %indexaddr.len57, !dbg !2209
  br i1 %71, label %lookup.throw58, label %lookup.next59, !dbg !2209

lookup.next59:                                    ; preds = %lookup.next55
  %72 = getelementptr inbounds i8, ptr %indexaddr.ptr56, i64 0, !dbg !2209
  store i8 -17, ptr %72, align 1, !dbg !2209
    #dbg_value({ ptr, i64, i64 } %2, !2119, !DIExpression(), !2210)
  %indexaddr.ptr60 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2211
  %indexaddr.len61 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2211
  %73 = icmp uge i64 1, %indexaddr.len61, !dbg !2211
  br i1 %73, label %lookup.throw62, label %lookup.next63, !dbg !2211

lookup.next63:                                    ; preds = %lookup.next59
  %74 = getelementptr inbounds i8, ptr %indexaddr.ptr60, i64 1, !dbg !2211
  store i8 -65, ptr %74, align 1, !dbg !2211
    #dbg_value({ ptr, i64, i64 } %2, !2119, !DIExpression(), !2212)
  %indexaddr.ptr64 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2213
  %indexaddr.len65 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2213
  %75 = icmp uge i64 2, %indexaddr.len65, !dbg !2213
  br i1 %75, label %lookup.throw66, label %lookup.next67, !dbg !2213

lookup.next67:                                    ; preds = %lookup.next63
  %76 = getelementptr inbounds i8, ptr %indexaddr.ptr64, i64 2, !dbg !2213
  store i8 -67, ptr %76, align 1, !dbg !2213
  ret i64 3, !dbg !2214

lookup.throw:                                     ; preds = %switch.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2129
  unreachable, !dbg !2129

lookup.throw10:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !2135
  unreachable, !dbg !2135

lookup.throw14:                                   ; preds = %lookup.next11
  call void @runtime.lookupPanic(ptr undef), !dbg !2141
  unreachable, !dbg !2141

lookup.throw18:                                   ; preds = %switch.body1
  call void @runtime.lookupPanic(ptr undef), !dbg !2146
  unreachable, !dbg !2146

lookup.throw22:                                   ; preds = %lookup.next19
  call void @runtime.lookupPanic(ptr undef), !dbg !2152
  unreachable, !dbg !2152

lookup.throw26:                                   ; preds = %lookup.next23
  call void @runtime.lookupPanic(ptr undef), !dbg !2159
  unreachable, !dbg !2159

lookup.throw30:                                   ; preds = %lookup.next27
  call void @runtime.lookupPanic(ptr undef), !dbg !2165
  unreachable, !dbg !2165

lookup.throw34:                                   ; preds = %switch.body6
  call void @runtime.lookupPanic(ptr undef), !dbg !2178
  unreachable, !dbg !2178

lookup.throw38:                                   ; preds = %lookup.next35
  call void @runtime.lookupPanic(ptr undef), !dbg !2184
  unreachable, !dbg !2184

lookup.throw42:                                   ; preds = %lookup.next39
  call void @runtime.lookupPanic(ptr undef), !dbg !2191
  unreachable, !dbg !2191

lookup.throw46:                                   ; preds = %lookup.next43
  call void @runtime.lookupPanic(ptr undef), !dbg !2198
  unreachable, !dbg !2198

lookup.throw50:                                   ; preds = %lookup.next47
  call void @runtime.lookupPanic(ptr undef), !dbg !2204
  unreachable, !dbg !2204

lookup.throw54:                                   ; preds = %switch.next7
  call void @runtime.lookupPanic(ptr undef), !dbg !2207
  unreachable, !dbg !2207

lookup.throw58:                                   ; preds = %lookup.next55
  call void @runtime.lookupPanic(ptr undef), !dbg !2209
  unreachable, !dbg !2209

lookup.throw62:                                   ; preds = %lookup.next59
  call void @runtime.lookupPanic(ptr undef), !dbg !2211
  unreachable, !dbg !2211

lookup.throw66:                                   ; preds = %lookup.next63
  call void @runtime.lookupPanic(ptr undef), !dbg !2213
  unreachable, !dbg !2213
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"unicode/utf8.ValidRune"(i32 %r, ptr %context) #1 !dbg !2215 {
entry:
    #dbg_value(i32 %r, !2219, !DIExpression(), !2220)
    #dbg_value(i32 %r, !2219, !DIExpression(), !2221)
  %0 = icmp sle i32 0, %r, !dbg !2222
  br i1 %0, label %binop.rhs, label %binop.done, !dbg !2223

binop.rhs:                                        ; preds = %entry
    #dbg_value(i32 %r, !2219, !DIExpression(), !2224)
  %1 = icmp slt i32 %r, 55296, !dbg !2225
  br label %binop.done, !dbg !2223

binop.done:                                       ; preds = %binop.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %1, %binop.rhs ], !dbg !2226
  br i1 %2, label %switch.body, label %switch.next, !dbg !2223

switch.body:                                      ; preds = %binop.done
  ret i1 true, !dbg !2227

switch.next:                                      ; preds = %binop.done
    #dbg_value(i32 %r, !2219, !DIExpression(), !2228)
  %3 = icmp slt i32 57343, %r, !dbg !2229
  br i1 %3, label %binop.rhs1, label %binop.done2, !dbg !2223

binop.rhs1:                                       ; preds = %switch.next
    #dbg_value(i32 %r, !2219, !DIExpression(), !2230)
  %4 = icmp sle i32 %r, 1114111, !dbg !2231
  br label %binop.done2, !dbg !2223

binop.done2:                                      ; preds = %binop.rhs1, %switch.next
  %5 = phi i1 [ false, %switch.next ], [ %4, %binop.rhs1 ], !dbg !2232
  br i1 %5, label %switch.body3, label %switch.next4, !dbg !2223

switch.body3:                                     ; preds = %binop.done2
  ret i1 true, !dbg !2233

switch.next4:                                     ; preds = %binop.done2
  ret i1 false, !dbg !2234
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable(sync)
define internal i8 @"(*internal/reflectlite.RawType).Kind"(ptr dereferenceable_or_null(1) %t, ptr %context) #1 !dbg !2235 {
entry:
    #dbg_value(ptr %t, !2239, !DIExpression(), !2241)
    #dbg_value(ptr %t, !2239, !DIExpression(), !2242)
  %0 = icmp eq ptr %t, null, !dbg !2243
  br i1 %0, label %if.then, label %if.done, !dbg !2244

if.then:                                          ; preds = %entry
  ret i8 0, !dbg !2245

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2239, !DIExpression(), !2246)
  %1 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2247
    #dbg_value(i64 %1, !2240, !DIExpression(), !2248)
    #dbg_value(i64 %1, !2240, !DIExpression(), !2249)
  %2 = icmp ne i64 %1, 0, !dbg !2250
  br i1 %2, label %if.then1, label %if.done2, !dbg !2244

if.then1:                                         ; preds = %if.done
  ret i8 21, !dbg !2251

if.done2:                                         ; preds = %if.done
    #dbg_value(ptr %t, !2239, !DIExpression(), !2252)
  %3 = icmp eq ptr %t, null, !dbg !2253
  br i1 %3, label %gep.throw, label %gep.next, !dbg !2253

gep.next:                                         ; preds = %if.done2
  %4 = getelementptr inbounds %"internal/reflectlite.RawType", ptr %t, i32 0, i32 0, !dbg !2253
  %5 = icmp eq ptr %4, null, !dbg !2253
  br i1 %5, label %deref.throw, label %deref.next, !dbg !2253

deref.next:                                       ; preds = %gep.next
  %6 = load i8, ptr %4, align 1, !dbg !2253
  %7 = and i8 %6, 31, !dbg !2254
  ret i8 %7, !dbg !2255

gep.throw:                                        ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2253
  unreachable, !dbg !2253

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2253
  unreachable, !dbg !2253
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).elem"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2256 {
entry:
    #dbg_value(ptr %t, !2258, !DIExpression(), !2262)
    #dbg_value(ptr %t, !2258, !DIExpression(), !2263)
  %0 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2264
    #dbg_value(i64 %0, !2259, !DIExpression(), !2265)
    #dbg_value(i64 %0, !2259, !DIExpression(), !2266)
  %1 = icmp ne i64 %0, 0, !dbg !2267
  br i1 %1, label %if.then, label %if.done, !dbg !2268

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2258, !DIExpression(), !2269)
  %2 = getelementptr i8, ptr %t, i64 -1, !dbg !2270
  ret ptr %2, !dbg !2271

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2258, !DIExpression(), !2272)
  %3 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2273
    #dbg_value(ptr %3, !2260, !DIExpression(), !2274)
    #dbg_value(ptr %3, !2260, !DIExpression(), !2275)
  %4 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %3, ptr undef), !dbg !2276
  %5 = icmp eq i8 %4, 21, !dbg !2277
  br i1 %5, label %switch.body, label %switch.next, !dbg !2268

switch.body:                                      ; preds = %if.done
    #dbg_value(ptr %3, !2260, !DIExpression(), !2278)
  %6 = getelementptr inbounds %"internal/reflectlite.ptrType", ptr %3, i32 0, i32 2, !dbg !2279
  %7 = icmp eq ptr %6, null, !dbg !2279
  br i1 %7, label %deref.throw, label %deref.next, !dbg !2279

deref.next:                                       ; preds = %switch.body
  %8 = load ptr, ptr %6, align 8, !dbg !2279
  ret ptr %8, !dbg !2280

switch.next:                                      ; preds = %if.done
  %9 = icmp eq i8 %4, 19, !dbg !2281
  br i1 %9, label %switch.body1, label %switch.next2, !dbg !2268

switch.body1:                                     ; preds = %switch.next4, %switch.next3, %switch.next2, %switch.next
    #dbg_value(ptr %3, !2260, !DIExpression(), !2282)
  %10 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %3, i32 0, i32 3, !dbg !2283
  %11 = icmp eq ptr %10, null, !dbg !2283
  br i1 %11, label %deref.throw6, label %deref.next7, !dbg !2283

deref.next7:                                      ; preds = %switch.body1
  %12 = load ptr, ptr %10, align 8, !dbg !2283
  ret ptr %12, !dbg !2284

switch.next2:                                     ; preds = %switch.next
  %13 = icmp eq i8 %4, 22, !dbg !2285
  br i1 %13, label %switch.body1, label %switch.next3, !dbg !2268

switch.next3:                                     ; preds = %switch.next2
  %14 = icmp eq i8 %4, 23, !dbg !2286
  br i1 %14, label %switch.body1, label %switch.next4, !dbg !2268

switch.next4:                                     ; preds = %switch.next3
  %15 = icmp eq i8 %4, 25, !dbg !2287
  br i1 %15, label %switch.body1, label %switch.next5, !dbg !2268

switch.next5:                                     ; preds = %switch.next4
  %16 = load ptr, ptr @"internal/reflectlite.errTypeElem", align 8, !dbg !2288
    #dbg_value(ptr %16, !2261, !DIExpression(), !2288)
  %17 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %16, 1, !dbg !2288
  %18 = extractvalue { ptr, ptr } %17, 0, !dbg !2289
  %19 = extractvalue { ptr, ptr } %17, 1, !dbg !2289
  call void @runtime._panic(ptr %18, ptr %19, ptr undef), !dbg !2289
  unreachable, !dbg !2289

deref.throw:                                      ; preds = %switch.body
  call void @runtime.nilPanic(ptr undef), !dbg !2279
  unreachable, !dbg !2279

deref.throw6:                                     ; preds = %switch.body1
  call void @runtime.nilPanic(ptr undef), !dbg !2283
  unreachable, !dbg !2283
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).Len"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2290 {
entry:
    #dbg_value(ptr %t, !2292, !DIExpression(), !2294)
    #dbg_value(ptr %t, !2292, !DIExpression(), !2295)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2296
  %1 = icmp ne i8 %0, 23, !dbg !2297
  br i1 %1, label %if.then, label %if.done, !dbg !2298

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeLen", align 8, !dbg !2299
    #dbg_value(ptr %2, !2293, !DIExpression(), !2299)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2299
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2300
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2300
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2300
  unreachable, !dbg !2300

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2292, !DIExpression(), !2301)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2302
  %7 = getelementptr inbounds %"internal/reflectlite.arrayType", ptr %6, i32 0, i32 4, !dbg !2303
  %8 = icmp eq ptr %7, null, !dbg !2303
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2303

deref.next:                                       ; preds = %if.done
  %9 = load i64, ptr %7, align 8, !dbg !2303
  ret i64 %9, !dbg !2304

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2303
  unreachable, !dbg !2303
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).underlying"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2305 {
entry:
    #dbg_value(ptr %t, !2307, !DIExpression(), !2308)
    #dbg_value(ptr %t, !2307, !DIExpression(), !2309)
  %0 = call i1 @"(*internal/reflectlite.RawType).isNamed"(ptr %t, ptr undef), !dbg !2310
  br i1 %0, label %if.then, label %if.done, !dbg !2311

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2307, !DIExpression(), !2312)
  %1 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %t, i32 0, i32 3, !dbg !2313
  %2 = icmp eq ptr %1, null, !dbg !2313
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2313

deref.next:                                       ; preds = %if.then
  %3 = load ptr, ptr %1, align 8, !dbg !2313
  ret ptr %3, !dbg !2314

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2307, !DIExpression(), !2315)
  ret ptr %t, !dbg !2316

deref.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2313
  unreachable, !dbg !2313
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*internal/reflectlite.RawType).isNamed"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2317 {
entry:
    #dbg_value(ptr %t, !2319, !DIExpression(), !2321)
    #dbg_value(ptr %t, !2319, !DIExpression(), !2322)
  %0 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2323
    #dbg_value(i64 %0, !2320, !DIExpression(), !2324)
    #dbg_value(i64 %0, !2320, !DIExpression(), !2325)
  %1 = icmp ne i64 %0, 0, !dbg !2326
  br i1 %1, label %if.then, label %if.done, !dbg !2327

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !2328

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2319, !DIExpression(), !2329)
  %2 = icmp eq ptr %t, null, !dbg !2330
  br i1 %2, label %gep.throw, label %gep.next, !dbg !2330

gep.next:                                         ; preds = %if.done
  %3 = getelementptr inbounds %"internal/reflectlite.RawType", ptr %t, i32 0, i32 0, !dbg !2330
  %4 = icmp eq ptr %3, null, !dbg !2330
  br i1 %4, label %deref.throw, label %deref.next, !dbg !2330

deref.next:                                       ; preds = %gep.next
  %5 = load i8, ptr %3, align 1, !dbg !2330
  %6 = and i8 %5, 32, !dbg !2331
  %7 = icmp ne i8 %6, 0, !dbg !2332
  ret i1 %7, !dbg !2333

gep.throw:                                        ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2330
  unreachable, !dbg !2330

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2330
  unreachable, !dbg !2330
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2334 {
entry:
    #dbg_value(ptr %t, !2336, !DIExpression(), !2337)
    #dbg_value(ptr %t, !2336, !DIExpression(), !2338)
  %0 = ptrtoint ptr %t to i64, !dbg !2339
  %1 = and i64 %0, 3, !dbg !2340
  ret i64 %1, !dbg !2341
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.TypeError).Error"(ptr dereferenceable_or_null(16) %e, ptr %context) unnamed_addr #1 !dbg !2342 {
entry:
    #dbg_value(ptr %e, !2346, !DIExpression(), !2347)
    #dbg_value(ptr %e, !2346, !DIExpression(), !2348)
  %0 = icmp eq ptr %e, null, !dbg !2349
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2349

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds { %runtime._string }, ptr %e, i32 0, i32 0, !dbg !2349
  %2 = icmp eq ptr %1, null, !dbg !2349
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2349

deref.next:                                       ; preds = %gep.next
  %3 = load %runtime._string, ptr %1, align 8, !dbg !2349
  %4 = extractvalue %runtime._string %3, 0, !dbg !2350
  %5 = extractvalue %runtime._string %3, 1, !dbg !2350
  %6 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.111", i64 30, ptr %4, i64 %5, ptr undef), !dbg !2350
  %7 = extractvalue %runtime._string %6, 0, !dbg !2351
  %8 = extractvalue %runtime._string %6, 1, !dbg !2351
  %9 = call %runtime._string @runtime.stringConcat(ptr %7, i64 %8, ptr @"internal/reflectlite$string.112", i64 16, ptr undef), !dbg !2351
  ret %runtime._string %9, !dbg !2352

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2349
  unreachable, !dbg !2349

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2349
  unreachable, !dbg !2349
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).ChanDir"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2353 {
entry:
    #dbg_value(ptr %t, !2355, !DIExpression(), !2358)
    #dbg_value(ptr %t, !2355, !DIExpression(), !2359)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2360
  %1 = icmp ne i8 %0, 19, !dbg !2361
  br i1 %1, label %if.then, label %if.done, !dbg !2362

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeChanDir", align 8, !dbg !2363
    #dbg_value(ptr %2, !2356, !DIExpression(), !2363)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2363
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2364
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2364
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2364
  unreachable, !dbg !2364

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2355, !DIExpression(), !2365)
  %6 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %t, i32 0, i32 1, !dbg !2366
  %7 = icmp eq ptr %6, null, !dbg !2366
  br i1 %7, label %deref.throw, label %deref.next, !dbg !2366

deref.next:                                       ; preds = %if.done
  %8 = load i16, ptr %6, align 2, !dbg !2366
  %9 = zext i16 %8 to i64, !dbg !2367
    #dbg_value(i64 %9, !2357, !DIExpression(), !2368)
    #dbg_value(i64 %9, !2357, !DIExpression(), !2369)
  ret i64 %9, !dbg !2370

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2366
  unreachable, !dbg !2366
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).NumField"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2371 {
entry:
    #dbg_value(ptr %t, !2373, !DIExpression(), !2375)
    #dbg_value(ptr %t, !2373, !DIExpression(), !2376)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2377
  %1 = icmp ne i8 %0, 26, !dbg !2378
  br i1 %1, label %if.then, label %if.done, !dbg !2379

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeNumField", align 8, !dbg !2380
    #dbg_value(ptr %2, !2374, !DIExpression(), !2380)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2380
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2381
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2381
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2381
  unreachable, !dbg !2381

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2373, !DIExpression(), !2382)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2383
  %7 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 5, !dbg !2384
  %8 = icmp eq ptr %7, null, !dbg !2384
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2384

deref.next:                                       ; preds = %if.done
  %9 = load i16, ptr %7, align 2, !dbg !2384
  %10 = zext i16 %9 to i64, !dbg !2385
  ret i64 %10, !dbg !2386

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2384
  unreachable, !dbg !2384
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.RawType).String"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2387 {
entry:
    #dbg_value(ptr %t, !2389, !DIExpression(), !2405)
    #dbg_value(ptr %t, !2389, !DIExpression(), !2406)
  %f = alloca %"internal/reflectlite.rawStructField", align 8, !dbg !2407
  %0 = call i1 @"(*internal/reflectlite.RawType).isNamed"(ptr %t, ptr undef), !dbg !2407
  br i1 %0, label %if.then, label %if.done2, !dbg !2408

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2389, !DIExpression(), !2409)
  %1 = call %runtime._string @"(*internal/reflectlite.RawType).name"(ptr %t, ptr undef), !dbg !2410
    #dbg_value(%runtime._string %1, !2390, !DIExpression(), !2411)
    #dbg_value(%runtime._string %1, !2390, !DIExpression(), !2412)
  %len = extractvalue %runtime._string %1, 1, !dbg !2413
  %2 = icmp uge i64 0, %len, !dbg !2413
  br i1 %2, label %lookup.throw, label %lookup.next, !dbg !2413

lookup.next:                                      ; preds = %if.then
  %3 = extractvalue %runtime._string %1, 0, !dbg !2413
  %4 = getelementptr inbounds i8, ptr %3, i64 0, !dbg !2413
  %5 = load i8, ptr %4, align 1, !dbg !2413
  %6 = icmp eq i8 %5, 46, !dbg !2414
  br i1 %6, label %if.then1, label %if.done, !dbg !2408

if.then1:                                         ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2390, !DIExpression(), !2415)
  %7 = extractvalue %runtime._string %1, 0, !dbg !2416
  %8 = extractvalue %runtime._string %1, 1, !dbg !2416
  %slice.lowhigh = icmp ugt i64 1, %8, !dbg !2416
  %slice.highmax = icmp ugt i64 %8, %8, !dbg !2416
  %slice.maxcap = icmp ugt i64 %8, %8, !dbg !2416
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2416
  %slice.lowcap = or i1 %slice.lowmax, %slice.maxcap, !dbg !2416
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2416

slice.next:                                       ; preds = %if.then1
  %9 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !2416
  %10 = sub i64 %8, 1, !dbg !2416
  %11 = insertvalue %runtime._string undef, ptr %9, 0, !dbg !2416
  %12 = insertvalue %runtime._string %11, i64 %10, 1, !dbg !2416
  ret %runtime._string %12, !dbg !2417

if.done:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2390, !DIExpression(), !2418)
  ret %runtime._string %1, !dbg !2419

if.done2:                                         ; preds = %entry
    #dbg_value(ptr %t, !2389, !DIExpression(), !2420)
  %13 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2421
  %14 = icmp eq i8 %13, 19, !dbg !2422
  br i1 %14, label %switch.body, label %switch.next10, !dbg !2408

switch.body:                                      ; preds = %if.done2
    #dbg_value(ptr %t, !2389, !DIExpression(), !2423)
  %15 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2424
  %16 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %15, ptr undef), !dbg !2425
    #dbg_value(%runtime._string %16, !2391, !DIExpression(), !2426)
    #dbg_value(ptr %t, !2389, !DIExpression(), !2427)
  %17 = call i64 @"(*internal/reflectlite.RawType).ChanDir"(ptr %t, ptr undef), !dbg !2428
  %18 = icmp eq i64 %17, 2, !dbg !2429
  br i1 %18, label %switch.body3, label %switch.next, !dbg !2408

switch.body3:                                     ; preds = %switch.body
    #dbg_value(%runtime._string %16, !2391, !DIExpression(), !2430)
  %19 = extractvalue %runtime._string %16, 0, !dbg !2431
  %20 = extractvalue %runtime._string %16, 1, !dbg !2431
  %21 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.87", i64 7, ptr %19, i64 %20, ptr undef), !dbg !2431
  ret %runtime._string %21, !dbg !2432

switch.next:                                      ; preds = %switch.body
  %22 = icmp eq i64 %17, 1, !dbg !2433
  br i1 %22, label %switch.body4, label %switch.next5, !dbg !2408

switch.body4:                                     ; preds = %switch.next
    #dbg_value(%runtime._string %16, !2391, !DIExpression(), !2434)
  %23 = extractvalue %runtime._string %16, 0, !dbg !2435
  %24 = extractvalue %runtime._string %16, 1, !dbg !2435
  %25 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.88", i64 7, ptr %23, i64 %24, ptr undef), !dbg !2435
  ret %runtime._string %25, !dbg !2436

switch.next5:                                     ; preds = %switch.next
  %26 = icmp eq i64 %17, 3, !dbg !2437
  br i1 %26, label %switch.body6, label %switch.next9, !dbg !2408

switch.body6:                                     ; preds = %switch.next5
    #dbg_value(%runtime._string %16, !2391, !DIExpression(), !2438)
  %len29 = extractvalue %runtime._string %16, 1, !dbg !2439
  %27 = icmp uge i64 0, %len29, !dbg !2439
  br i1 %27, label %lookup.throw30, label %lookup.next31, !dbg !2439

lookup.next31:                                    ; preds = %switch.body6
  %28 = extractvalue %runtime._string %16, 0, !dbg !2439
  %29 = getelementptr inbounds i8, ptr %28, i64 0, !dbg !2439
  %30 = load i8, ptr %29, align 1, !dbg !2439
  %31 = icmp eq i8 %30, 60, !dbg !2440
  br i1 %31, label %if.then7, label %if.done8, !dbg !2408

if.then7:                                         ; preds = %lookup.next31
    #dbg_value(%runtime._string %16, !2391, !DIExpression(), !2441)
  %32 = extractvalue %runtime._string %16, 0, !dbg !2442
  %33 = extractvalue %runtime._string %16, 1, !dbg !2442
  %34 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.89", i64 6, ptr %32, i64 %33, ptr undef), !dbg !2442
  %35 = extractvalue %runtime._string %34, 0, !dbg !2443
  %36 = extractvalue %runtime._string %34, 1, !dbg !2443
  %37 = call %runtime._string @runtime.stringConcat(ptr %35, i64 %36, ptr @"internal/reflectlite$string.90", i64 1, ptr undef), !dbg !2443
  ret %runtime._string %37, !dbg !2444

if.done8:                                         ; preds = %lookup.next31
    #dbg_value(%runtime._string %16, !2391, !DIExpression(), !2445)
  %38 = extractvalue %runtime._string %16, 0, !dbg !2446
  %39 = extractvalue %runtime._string %16, 1, !dbg !2446
  %40 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.91", i64 5, ptr %38, i64 %39, ptr undef), !dbg !2446
  ret %runtime._string %40, !dbg !2447

switch.next9:                                     ; preds = %switch.next5
    #dbg_value(ptr %t, !2389, !DIExpression(), !2448)
  %41 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2449
  %42 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %41, ptr undef), !dbg !2450
  ret %runtime._string %42, !dbg !2451

switch.next10:                                    ; preds = %if.done2
  %43 = icmp eq i8 %13, 21, !dbg !2452
  br i1 %43, label %switch.body11, label %switch.next12, !dbg !2408

switch.body11:                                    ; preds = %switch.next10
    #dbg_value(ptr %t, !2389, !DIExpression(), !2453)
  %44 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2454
  %45 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %44, ptr undef), !dbg !2455
  %46 = extractvalue %runtime._string %45, 0, !dbg !2456
  %47 = extractvalue %runtime._string %45, 1, !dbg !2456
  %48 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.92", i64 1, ptr %46, i64 %47, ptr undef), !dbg !2456
  ret %runtime._string %48, !dbg !2457

switch.next12:                                    ; preds = %switch.next10
  %49 = icmp eq i8 %13, 22, !dbg !2458
  br i1 %49, label %switch.body13, label %switch.next14, !dbg !2408

switch.body13:                                    ; preds = %switch.next12
    #dbg_value(ptr %t, !2389, !DIExpression(), !2459)
  %50 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2460
  %51 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %50, ptr undef), !dbg !2461
  %52 = extractvalue %runtime._string %51, 0, !dbg !2462
  %53 = extractvalue %runtime._string %51, 1, !dbg !2462
  %54 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.93", i64 2, ptr %52, i64 %53, ptr undef), !dbg !2462
  ret %runtime._string %54, !dbg !2463

switch.next14:                                    ; preds = %switch.next12
  %55 = icmp eq i8 %13, 23, !dbg !2464
  br i1 %55, label %switch.body15, label %switch.next16, !dbg !2408

switch.body15:                                    ; preds = %switch.next14
    #dbg_value(ptr %t, !2389, !DIExpression(), !2465)
  %56 = call i64 @"(*internal/reflectlite.RawType).Len"(ptr %t, ptr undef), !dbg !2466
  %57 = call %runtime._string @"internal/itoa.Itoa"(i64 %56, ptr undef), !dbg !2467
  %58 = extractvalue %runtime._string %57, 0, !dbg !2468
  %59 = extractvalue %runtime._string %57, 1, !dbg !2468
  %60 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.94", i64 1, ptr %58, i64 %59, ptr undef), !dbg !2468
  %61 = extractvalue %runtime._string %60, 0, !dbg !2469
  %62 = extractvalue %runtime._string %60, 1, !dbg !2469
  %63 = call %runtime._string @runtime.stringConcat(ptr %61, i64 %62, ptr @"internal/reflectlite$string.95", i64 1, ptr undef), !dbg !2469
    #dbg_value(ptr %t, !2389, !DIExpression(), !2470)
  %64 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2471
  %65 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %64, ptr undef), !dbg !2472
  %66 = extractvalue %runtime._string %63, 0, !dbg !2473
  %67 = extractvalue %runtime._string %63, 1, !dbg !2473
  %68 = extractvalue %runtime._string %65, 0, !dbg !2473
  %69 = extractvalue %runtime._string %65, 1, !dbg !2473
  %70 = call %runtime._string @runtime.stringConcat(ptr %66, i64 %67, ptr %68, i64 %69, ptr undef), !dbg !2473
  ret %runtime._string %70, !dbg !2474

switch.next16:                                    ; preds = %switch.next14
  %71 = icmp eq i8 %13, 25, !dbg !2475
  br i1 %71, label %switch.body17, label %switch.next18, !dbg !2408

switch.body17:                                    ; preds = %switch.next16
    #dbg_value(ptr %t, !2389, !DIExpression(), !2476)
  %72 = call ptr @"(*internal/reflectlite.RawType).key"(ptr %t, ptr undef), !dbg !2477
  %73 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %72, ptr undef), !dbg !2478
  %74 = extractvalue %runtime._string %73, 0, !dbg !2479
  %75 = extractvalue %runtime._string %73, 1, !dbg !2479
  %76 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.96", i64 4, ptr %74, i64 %75, ptr undef), !dbg !2479
  %77 = extractvalue %runtime._string %76, 0, !dbg !2480
  %78 = extractvalue %runtime._string %76, 1, !dbg !2480
  %79 = call %runtime._string @runtime.stringConcat(ptr %77, i64 %78, ptr @"internal/reflectlite$string.97", i64 1, ptr undef), !dbg !2480
    #dbg_value(ptr %t, !2389, !DIExpression(), !2481)
  %80 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2482
  %81 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %80, ptr undef), !dbg !2483
  %82 = extractvalue %runtime._string %79, 0, !dbg !2484
  %83 = extractvalue %runtime._string %79, 1, !dbg !2484
  %84 = extractvalue %runtime._string %81, 0, !dbg !2484
  %85 = extractvalue %runtime._string %81, 1, !dbg !2484
  %86 = call %runtime._string @runtime.stringConcat(ptr %82, i64 %83, ptr %84, i64 %85, ptr undef), !dbg !2484
  ret %runtime._string %86, !dbg !2485

switch.next18:                                    ; preds = %switch.next16
  %87 = icmp eq i8 %13, 26, !dbg !2486
  br i1 %87, label %switch.body19, label %switch.next26, !dbg !2408

switch.body19:                                    ; preds = %switch.next18
    #dbg_value(ptr %t, !2389, !DIExpression(), !2487)
  %88 = call i64 @"(*internal/reflectlite.RawType).NumField"(ptr %t, ptr undef), !dbg !2488
    #dbg_value(i64 %88, !2392, !DIExpression(), !2489)
    #dbg_value(i64 %88, !2392, !DIExpression(), !2490)
  %89 = icmp eq i64 %88, 0, !dbg !2491
  br i1 %89, label %if.then20, label %if.done21, !dbg !2408

if.then20:                                        ; preds = %switch.body19
  ret %runtime._string { ptr @"internal/reflectlite$string.98", i64 9 }, !dbg !2492

if.done21:                                        ; preds = %switch.body19
    #dbg_value(%runtime._string poison, !2393, !DIExpression(), !2493)
    #dbg_value(i64 0, !2394, !DIExpression(), !2494)
  br label %for.loop, !dbg !2408

for.loop:                                         ; preds = %if.done25, %if.done21
  %90 = phi %runtime._string [ { ptr @"internal/reflectlite$string.106", i64 8 }, %if.done21 ], [ %144, %if.done25 ], !dbg !2493
  %91 = phi i64 [ 0, %if.done21 ], [ %145, %if.done25 ], !dbg !2494
    #dbg_value(i64 %91, !2394, !DIExpression(), !2495)
    #dbg_value(i64 %88, !2392, !DIExpression(), !2496)
  %92 = icmp slt i64 %91, %88, !dbg !2497
  br i1 %92, label %for.body, label %for.done, !dbg !2408

for.body:                                         ; preds = %for.loop
  store %"internal/reflectlite.rawStructField" zeroinitializer, ptr %f, align 8, !dbg !2407
    #dbg_value(ptr %t, !2389, !DIExpression(), !2498)
    #dbg_value(i64 %91, !2394, !DIExpression(), !2499)
  %93 = call %"internal/reflectlite.rawStructField" @"(*internal/reflectlite.RawType).rawField"(ptr %t, i64 %91, ptr undef), !dbg !2500
  store %"internal/reflectlite.rawStructField" %93, ptr %f, align 8, !dbg !2501
    #dbg_value(%"internal/reflectlite.rawStructField" %93, !2395, !DIExpression(), !2501)
  %94 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 0, !dbg !2502
  %95 = icmp eq ptr %94, null, !dbg !2502
  br i1 %95, label %deref.throw, label %deref.next, !dbg !2502

deref.next:                                       ; preds = %for.body
  %96 = load %runtime._string, ptr %94, align 8, !dbg !2502
  %97 = extractvalue %runtime._string %96, 0, !dbg !2503
  %98 = extractvalue %runtime._string %96, 1, !dbg !2503
  %99 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.100", i64 1, ptr %97, i64 %98, ptr undef), !dbg !2503
  %100 = extractvalue %runtime._string %99, 0, !dbg !2504
  %101 = extractvalue %runtime._string %99, 1, !dbg !2504
  %102 = call %runtime._string @runtime.stringConcat(ptr %100, i64 %101, ptr @"internal/reflectlite$string.101", i64 1, ptr undef), !dbg !2504
  %103 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 2, !dbg !2505
  %104 = icmp eq ptr %103, null, !dbg !2505
  br i1 %104, label %deref.throw32, label %deref.next33, !dbg !2505

deref.next33:                                     ; preds = %deref.next
  %105 = load ptr, ptr %103, align 8, !dbg !2505
  %106 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %105, ptr undef), !dbg !2506
  %107 = extractvalue %runtime._string %102, 0, !dbg !2507
  %108 = extractvalue %runtime._string %102, 1, !dbg !2507
  %109 = extractvalue %runtime._string %106, 0, !dbg !2507
  %110 = extractvalue %runtime._string %106, 1, !dbg !2507
  %111 = call %runtime._string @runtime.stringConcat(ptr %107, i64 %108, ptr %109, i64 %110, ptr undef), !dbg !2507
  %112 = extractvalue %runtime._string %90, 0, !dbg !2508
  %113 = extractvalue %runtime._string %90, 1, !dbg !2508
  %114 = extractvalue %runtime._string %111, 0, !dbg !2508
  %115 = extractvalue %runtime._string %111, 1, !dbg !2508
  %116 = call %runtime._string @runtime.stringConcat(ptr %112, i64 %113, ptr %114, i64 %115, ptr undef), !dbg !2508
    #dbg_value(%runtime._string %116, !2393, !DIExpression(), !2508)
  %117 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 3, !dbg !2509
  %118 = icmp eq ptr %117, null, !dbg !2509
  br i1 %118, label %deref.throw34, label %deref.next35, !dbg !2509

deref.next35:                                     ; preds = %deref.next33
  %119 = load %runtime._string, ptr %117, align 8, !dbg !2509
  %120 = extractvalue %runtime._string %119, 0, !dbg !2510
  %121 = extractvalue %runtime._string %119, 1, !dbg !2510
  %122 = call i1 @runtime.stringEqual(ptr %120, i64 %121, ptr null, i64 0, ptr undef), !dbg !2510
  %123 = xor i1 %122, true, !dbg !2510
  br i1 %123, label %if.then22, label %if.done23, !dbg !2408

if.then22:                                        ; preds = %deref.next35
  %124 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 3, !dbg !2511
  %125 = icmp eq ptr %124, null, !dbg !2511
  br i1 %125, label %deref.throw36, label %deref.next37, !dbg !2511

deref.next37:                                     ; preds = %if.then22
  %126 = load %runtime._string, ptr %124, align 8, !dbg !2511
  %127 = extractvalue %runtime._string %126, 0, !dbg !2512
  %128 = extractvalue %runtime._string %126, 1, !dbg !2512
  %129 = call %runtime._string @"internal/reflectlite.quote"(ptr %127, i64 %128, ptr undef), !dbg !2512
  %130 = extractvalue %runtime._string %129, 0, !dbg !2513
  %131 = extractvalue %runtime._string %129, 1, !dbg !2513
  %132 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.102", i64 1, ptr %130, i64 %131, ptr undef), !dbg !2513
  %133 = extractvalue %runtime._string %116, 0, !dbg !2514
  %134 = extractvalue %runtime._string %116, 1, !dbg !2514
  %135 = extractvalue %runtime._string %132, 0, !dbg !2514
  %136 = extractvalue %runtime._string %132, 1, !dbg !2514
  %137 = call %runtime._string @runtime.stringConcat(ptr %133, i64 %134, ptr %135, i64 %136, ptr undef), !dbg !2514
    #dbg_value(%runtime._string %137, !2393, !DIExpression(), !2514)
  br label %if.done23, !dbg !2408

if.done23:                                        ; preds = %deref.next37, %deref.next35
  %138 = phi %runtime._string [ %116, %deref.next35 ], [ %137, %deref.next37 ], !dbg !2493
    #dbg_value(i64 %91, !2394, !DIExpression(), !2515)
    #dbg_value(i64 %88, !2392, !DIExpression(), !2516)
  %139 = sub i64 %88, 1, !dbg !2517
  %140 = icmp slt i64 %91, %139, !dbg !2518
  br i1 %140, label %if.then24, label %if.done25, !dbg !2408

if.then24:                                        ; preds = %if.done23
  %141 = extractvalue %runtime._string %138, 0, !dbg !2519
  %142 = extractvalue %runtime._string %138, 1, !dbg !2519
  %143 = call %runtime._string @runtime.stringConcat(ptr %141, i64 %142, ptr @"internal/reflectlite$string.103", i64 1, ptr undef), !dbg !2519
    #dbg_value(%runtime._string %143, !2393, !DIExpression(), !2519)
  br label %if.done25, !dbg !2408

if.done25:                                        ; preds = %if.then24, %if.done23
  %144 = phi %runtime._string [ %138, %if.done23 ], [ %143, %if.then24 ], !dbg !2493
  %145 = add i64 %91, 1, !dbg !2520
    #dbg_value(i64 %145, !2394, !DIExpression(), !2520)
  br label %for.loop, !dbg !2408

for.done:                                         ; preds = %for.loop
  %146 = extractvalue %runtime._string %90, 0, !dbg !2521
  %147 = extractvalue %runtime._string %90, 1, !dbg !2521
  %148 = call %runtime._string @runtime.stringConcat(ptr %146, i64 %147, ptr @"internal/reflectlite$string.104", i64 2, ptr undef), !dbg !2521
    #dbg_value(%runtime._string %148, !2393, !DIExpression(), !2521)
    #dbg_value(%runtime._string %148, !2393, !DIExpression(), !2522)
  ret %runtime._string %148, !dbg !2523

switch.next26:                                    ; preds = %switch.next18
  %149 = icmp eq i8 %13, 20, !dbg !2524
  br i1 %149, label %switch.body27, label %switch.next28, !dbg !2408

switch.body27:                                    ; preds = %switch.next26
  ret %runtime._string { ptr @"internal/reflectlite$string.105", i64 12 }, !dbg !2525

switch.next28:                                    ; preds = %switch.next26
    #dbg_value(ptr %t, !2389, !DIExpression(), !2526)
  %150 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2527
  %151 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %150, ptr undef), !dbg !2528
  ret %runtime._string %151, !dbg !2529

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2413
  unreachable, !dbg !2413

slice.throw:                                      ; preds = %if.then1
  call void @runtime.slicePanic(ptr undef), !dbg !2416
  unreachable, !dbg !2416

lookup.throw30:                                   ; preds = %switch.body6
  call void @runtime.lookupPanic(ptr undef), !dbg !2439
  unreachable, !dbg !2439

deref.throw:                                      ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !2502
  unreachable, !dbg !2502

deref.throw32:                                    ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !2505
  unreachable, !dbg !2505

deref.throw34:                                    ; preds = %deref.next33
  call void @runtime.nilPanic(ptr undef), !dbg !2509
  unreachable, !dbg !2509

deref.throw36:                                    ; preds = %if.then22
  call void @runtime.nilPanic(ptr undef), !dbg !2511
  unreachable, !dbg !2511
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).key"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2530 {
entry:
    #dbg_value(ptr %t, !2532, !DIExpression(), !2535)
    #dbg_value(ptr %t, !2532, !DIExpression(), !2536)
  %0 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2537
    #dbg_value(ptr %0, !2533, !DIExpression(), !2538)
    #dbg_value(ptr %0, !2533, !DIExpression(), !2539)
  %1 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %0, ptr undef), !dbg !2540
  %2 = icmp ne i8 %1, 25, !dbg !2541
  br i1 %2, label %if.then, label %if.done, !dbg !2542

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @"internal/reflectlite.errTypeKey", align 8, !dbg !2543
    #dbg_value(ptr %3, !2534, !DIExpression(), !2543)
  %4 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %3, 1, !dbg !2543
  %5 = extractvalue { ptr, ptr } %4, 0, !dbg !2544
  %6 = extractvalue { ptr, ptr } %4, 1, !dbg !2544
  call void @runtime._panic(ptr %5, ptr %6, ptr undef), !dbg !2544
  unreachable, !dbg !2544

if.done:                                          ; preds = %entry
    #dbg_value(ptr %0, !2533, !DIExpression(), !2545)
  %7 = getelementptr inbounds %"internal/reflectlite.namedType", ptr %0, i32 0, i32 4, !dbg !2546
  %8 = icmp eq ptr %7, null, !dbg !2546
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2546

deref.next:                                       ; preds = %if.done
  %9 = load ptr, ptr %7, align 8, !dbg !2546
  ret ptr %9, !dbg !2547

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2546
  unreachable, !dbg !2546
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.RawType).name"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #1 !dbg !2548 {
entry:
    #dbg_value(ptr %t, !2550, !DIExpression(), !2569)
    #dbg_value(ptr %t, !2550, !DIExpression(), !2570)
    #dbg_value(ptr %t, !2551, !DIExpression(), !2571)
    #dbg_value(ptr %t, !2551, !DIExpression(), !2572)
  %0 = getelementptr i8, ptr %t, i64 32, !dbg !2573
    #dbg_value(ptr %0, !2561, !DIExpression(), !2574)
    #dbg_value(ptr %t, !2551, !DIExpression(), !2575)
  %1 = getelementptr inbounds %"internal/reflectlite.namedType", ptr %t, i32 0, i32 1, !dbg !2576
  %2 = icmp eq ptr %1, null, !dbg !2576
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2576

deref.next:                                       ; preds = %entry
  %3 = load i16, ptr %1, align 2, !dbg !2576
  %4 = and i16 %3, -32768, !dbg !2577
  %5 = icmp ne i16 %4, 0, !dbg !2578
  br i1 %5, label %if.then, label %if.done, !dbg !2579

if.then:                                          ; preds = %deref.next
    #dbg_value(ptr %0, !2561, !DIExpression(), !2580)
    #dbg_value(ptr %0, !2562, !DIExpression(), !2581)
    #dbg_value(ptr %0, !2561, !DIExpression(), !2582)
    #dbg_value(ptr %0, !2562, !DIExpression(), !2583)
  %6 = getelementptr inbounds %"internal/reflectlite.methodSet", ptr %0, i32 0, i32 0, !dbg !2584
  %7 = icmp eq ptr %6, null, !dbg !2584
  br i1 %7, label %deref.throw1, label %deref.next2, !dbg !2584

deref.next2:                                      ; preds = %if.then
  %8 = load i64, ptr %6, align 8, !dbg !2584
  %9 = mul i64 %8, 8, !dbg !2585
  %10 = add i64 8, %9, !dbg !2586
  %11 = getelementptr i8, ptr %0, i64 %10, !dbg !2587
    #dbg_value(ptr %11, !2561, !DIExpression(), !2588)
  br label %if.done, !dbg !2579

if.done:                                          ; preds = %deref.next2, %deref.next
  %12 = phi ptr [ %0, %deref.next ], [ %11, %deref.next2 ], !dbg !2574
    #dbg_value(ptr %12, !2561, !DIExpression(), !2589)
  %13 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %12, ptr undef), !dbg !2590
  ret %runtime._string %13, !dbg !2591

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2576
  unreachable, !dbg !2576

deref.throw1:                                     ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2584
  unreachable, !dbg !2584
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/reflectlite.rawStructField" @"(*internal/reflectlite.RawType).rawField"(ptr dereferenceable_or_null(1) %t, i64 %n, ptr %context) unnamed_addr #1 !dbg !2592 {
entry:
    #dbg_value(ptr %t, !2596, !DIExpression(), !2620)
    #dbg_value(i64 %n, !2597, !DIExpression(), !2620)
    #dbg_value(ptr %t, !2596, !DIExpression(), !2621)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2622
  %1 = icmp ne i8 %0, 26, !dbg !2623
  br i1 %1, label %if.then, label %if.done, !dbg !2624

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeField", align 8, !dbg !2625
    #dbg_value(ptr %2, !2598, !DIExpression(), !2625)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2625
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2626
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2626
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2626
  unreachable, !dbg !2626

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2596, !DIExpression(), !2627)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2628
    #dbg_value(ptr %6, !2599, !DIExpression(), !2629)
    #dbg_value(i64 %n, !2597, !DIExpression(), !2630)
    #dbg_value(ptr %6, !2599, !DIExpression(), !2631)
  %7 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 5, !dbg !2632
  %8 = icmp eq ptr %7, null, !dbg !2632
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2632

deref.next:                                       ; preds = %if.done
  %9 = load i16, ptr %7, align 2, !dbg !2632
  %10 = zext i16 %9 to i64, !dbg !2633
  %11 = icmp uge i64 %n, %10, !dbg !2634
  br i1 %11, label %if.then1, label %if.done2, !dbg !2624

if.then1:                                         ; preds = %deref.next
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"internal/reflectlite$pack.108", ptr undef), !dbg !2635
  unreachable, !dbg !2635

if.done2:                                         ; preds = %deref.next
    #dbg_value(ptr %6, !2599, !DIExpression(), !2636)
  %12 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 6, !dbg !2637
  %13 = icmp eq ptr %12, null, !dbg !2638
  br i1 %13, label %gep.throw, label %gep.next, !dbg !2638

gep.next:                                         ; preds = %if.done2
  %14 = getelementptr inbounds [1 x { ptr, ptr }], ptr %12, i32 0, i64 0, !dbg !2638
    #dbg_value(i64 %n, !2597, !DIExpression(), !2639)
  %15 = mul i64 %n, 16, !dbg !2640
  %16 = getelementptr i8, ptr %14, i64 %15, !dbg !2641
    #dbg_value(ptr %16, !2613, !DIExpression(), !2642)
    #dbg_value(ptr %16, !2613, !DIExpression(), !2643)
  %17 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 1, !dbg !2644
  %18 = icmp eq ptr %17, null, !dbg !2644
  br i1 %18, label %deref.throw3, label %deref.next4, !dbg !2644

deref.next4:                                      ; preds = %gep.next
  %19 = load ptr, ptr %17, align 8, !dbg !2644
    #dbg_value(ptr %19, !2615, !DIExpression(), !2645)
    #dbg_value(ptr %19, !2615, !DIExpression(), !2646)
  %20 = load i8, ptr %19, align 1, !dbg !2647
    #dbg_value(i8 %20, !2616, !DIExpression(), !2648)
    #dbg_value(ptr %19, !2615, !DIExpression(), !2649)
  %21 = getelementptr i8, ptr %19, i64 1, !dbg !2650
    #dbg_value(ptr %21, !2615, !DIExpression(), !2651)
    #dbg_value(ptr %21, !2615, !DIExpression(), !2652)
  %22 = icmp eq ptr %21, null, !dbg !2653
  %23 = and i1 %22, true, !dbg !2653
  %24 = or i1 %23, false, !dbg !2653
  br i1 %24, label %unsafe.Slice.throw, label %unsafe.Slice.next, !dbg !2653

unsafe.Slice.next:                                ; preds = %deref.next4
  %25 = insertvalue { ptr, i64, i64 } undef, ptr %21, 0, !dbg !2653
  %26 = insertvalue { ptr, i64, i64 } %25, i64 5, 1, !dbg !2653
  %27 = insertvalue { ptr, i64, i64 } %26, i64 5, 2, !dbg !2653
  %28 = extractvalue { ptr, i64, i64 } %27, 0, !dbg !2654
  %29 = extractvalue { ptr, i64, i64 } %27, 1, !dbg !2654
  %30 = extractvalue { ptr, i64, i64 } %27, 2, !dbg !2654
  %31 = call { i32, i64 } @"internal/reflectlite.uvarint32"(ptr %28, i64 %29, i64 %30, ptr undef), !dbg !2654
  %32 = extractvalue { i32, i64 } %31, 0, !dbg !2654
    #dbg_value(i32 %32, !2617, !DIExpression(), !2655)
  %33 = extractvalue { i32, i64 } %31, 1, !dbg !2654
    #dbg_value(i64 %33, !2618, !DIExpression(), !2656)
    #dbg_value(ptr %21, !2615, !DIExpression(), !2657)
    #dbg_value(i64 %33, !2618, !DIExpression(), !2658)
  %34 = getelementptr i8, ptr %21, i64 %33, !dbg !2659
    #dbg_value(ptr %34, !2615, !DIExpression(), !2660)
    #dbg_value(ptr %34, !2615, !DIExpression(), !2661)
  %35 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %34, ptr undef), !dbg !2662
    #dbg_value(%runtime._string %35, !2619, !DIExpression(), !2663)
    #dbg_value(ptr %34, !2615, !DIExpression(), !2664)
    #dbg_value(%runtime._string %35, !2619, !DIExpression(), !2665)
  %len = extractvalue %runtime._string %35, 1, !dbg !2666
  %36 = getelementptr i8, ptr %34, i64 %len, !dbg !2667
    #dbg_value(ptr %36, !2615, !DIExpression(), !2668)
    #dbg_value(ptr %6, !2599, !DIExpression(), !2669)
    #dbg_value(ptr %16, !2613, !DIExpression(), !2670)
  %37 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 0, !dbg !2671
  %38 = icmp eq ptr %37, null, !dbg !2671
  br i1 %38, label %deref.throw5, label %deref.next6, !dbg !2671

deref.next6:                                      ; preds = %unsafe.Slice.next
  %39 = load ptr, ptr %37, align 8, !dbg !2671
    #dbg_value(ptr %36, !2615, !DIExpression(), !2672)
    #dbg_value(i8 %20, !2616, !DIExpression(), !2673)
    #dbg_value(%runtime._string %35, !2619, !DIExpression(), !2674)
    #dbg_value(i32 %32, !2617, !DIExpression(), !2675)
  %40 = extractvalue %runtime._string %35, 0, !dbg !2676
  %41 = extractvalue %runtime._string %35, 1, !dbg !2676
  %42 = call %"internal/reflectlite.rawStructField" @"internal/reflectlite.rawStructFieldFromPointer"(ptr %6, ptr %39, ptr %36, i8 %20, ptr %40, i64 %41, i32 %32, ptr undef), !dbg !2676
  ret %"internal/reflectlite.rawStructField" %42, !dbg !2677

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2632
  unreachable, !dbg !2632

gep.throw:                                        ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2638
  unreachable, !dbg !2638

deref.throw3:                                     ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2644
  unreachable, !dbg !2644

unsafe.Slice.throw:                               ; preds = %deref.next4
  call void @runtime.unsafeSlicePanic(ptr undef), !dbg !2653
  unreachable, !dbg !2653

deref.throw5:                                     ; preds = %unsafe.Slice.next
  call void @runtime.nilPanic(ptr undef), !dbg !2671
  unreachable, !dbg !2671
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"internal/reflectlite.uvarint32"(ptr %buf.data, i64 %buf.len, i64 %buf.cap, ptr %context) unnamed_addr #1 !dbg !2678 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %buf.data, 0, !dbg !2687
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %buf.len, 1, !dbg !2687
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %buf.cap, 2, !dbg !2687
    #dbg_value(ptr %buf.data, !2682, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2687)
    #dbg_value(i64 %buf.len, !2682, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2687)
    #dbg_value(i64 %buf.cap, !2682, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2687)
    #dbg_value(i32 0, !2683, !DIExpression(), !2688)
    #dbg_value(i64 0, !2684, !DIExpression(), !2689)
    #dbg_value({ ptr, i64, i64 } %2, !2682, !DIExpression(), !2690)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2691
  br label %rangeindex.loop, !dbg !2691

rangeindex.loop:                                  ; preds = %if.done, %entry
  %3 = phi i32 [ 0, %entry ], [ %23, %if.done ], !dbg !2688
  %4 = phi i64 [ 0, %entry ], [ %24, %if.done ], !dbg !2689
  %5 = phi i64 [ -1, %entry ], [ %6, %if.done ], !dbg !2691
  %6 = add i64 %5, 1, !dbg !2691
  %7 = icmp slt i64 %6, %len, !dbg !2691
  br i1 %7, label %rangeindex.body, label %rangeindex.done, !dbg !2691

rangeindex.body:                                  ; preds = %rangeindex.loop
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2690
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2690
  %8 = icmp uge i64 %6, %indexaddr.len, !dbg !2690
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !2690

lookup.next:                                      ; preds = %rangeindex.body
  %9 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %6, !dbg !2690
  %10 = load i8, ptr %9, align 1, !dbg !2691
    #dbg_value(i64 %6, !2685, !DIExpression(), !2692)
    #dbg_value(i8 %10, !2686, !DIExpression(), !2693)
    #dbg_value(i8 %10, !2686, !DIExpression(), !2694)
  %11 = icmp ult i8 %10, -128, !dbg !2695
  br i1 %11, label %if.then, label %if.done, !dbg !2691

if.then:                                          ; preds = %lookup.next
    #dbg_value(i32 %3, !2683, !DIExpression(), !2696)
    #dbg_value(i8 %10, !2686, !DIExpression(), !2697)
  %12 = zext i8 %10 to i32, !dbg !2698
    #dbg_value(i64 %4, !2684, !DIExpression(), !2699)
  %shift.overflow = icmp uge i64 %4, 32, !dbg !2700
  %13 = trunc i64 %4 to i32, !dbg !2700
  %14 = shl i32 %12, %13, !dbg !2700
  %shift.result = select i1 %shift.overflow, i32 0, i32 %14, !dbg !2700
  %15 = or i32 %3, %shift.result, !dbg !2701
    #dbg_value(i64 %6, !2685, !DIExpression(), !2702)
  %16 = add i64 %6, 1, !dbg !2703
  %17 = insertvalue { i32, i64 } zeroinitializer, i32 %15, 0, !dbg !2704
  %18 = insertvalue { i32, i64 } %17, i64 %16, 1, !dbg !2704
  ret { i32, i64 } %18, !dbg !2704

if.done:                                          ; preds = %lookup.next
    #dbg_value(i8 %10, !2686, !DIExpression(), !2705)
  %19 = and i8 %10, 127, !dbg !2706
  %20 = zext i8 %19 to i32, !dbg !2707
    #dbg_value(i64 %4, !2684, !DIExpression(), !2708)
  %shift.overflow1 = icmp uge i64 %4, 32, !dbg !2709
  %21 = trunc i64 %4 to i32, !dbg !2709
  %22 = shl i32 %20, %21, !dbg !2709
  %shift.result2 = select i1 %shift.overflow1, i32 0, i32 %22, !dbg !2709
  %23 = or i32 %3, %shift.result2, !dbg !2710
    #dbg_value(i32 %23, !2683, !DIExpression(), !2710)
  %24 = add i64 %4, 7, !dbg !2711
    #dbg_value(i64 %24, !2684, !DIExpression(), !2711)
  br label %rangeindex.loop, !dbg !2691

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret { i32, i64 } zeroinitializer, !dbg !2712

lookup.throw:                                     ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2690
  unreachable, !dbg !2690
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/reflectlite.readStringZ"(ptr %data, ptr %context) unnamed_addr #1 !dbg !2713 {
entry:
    #dbg_value(ptr %data, !2717, !DIExpression(), !2720)
    #dbg_value(ptr %data, !2717, !DIExpression(), !2721)
    #dbg_value(ptr %data, !2718, !DIExpression(), !2722)
    #dbg_value(i64 0, !2719, !DIExpression(), !2723)
  br label %for.loop, !dbg !2724

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi ptr [ %data, %entry ], [ %5, %for.body ], !dbg !2725
  %1 = phi i64 [ 0, %entry ], [ %4, %for.body ], !dbg !2723
    #dbg_value(ptr %0, !2717, !DIExpression(), !2726)
  %2 = load i8, ptr %0, align 1, !dbg !2727
  %3 = icmp ne i8 %2, 0, !dbg !2728
  br i1 %3, label %for.body, label %for.done, !dbg !2724

for.body:                                         ; preds = %for.loop
  %4 = add i64 %1, 1, !dbg !2729
    #dbg_value(i64 %4, !2719, !DIExpression(), !2729)
    #dbg_value(ptr %0, !2717, !DIExpression(), !2730)
  %5 = getelementptr i8, ptr %0, i64 1, !dbg !2731
    #dbg_value(ptr %5, !2717, !DIExpression(), !2732)
  br label %for.loop, !dbg !2724

for.done:                                         ; preds = %for.loop
  %complit = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 133 to ptr), ptr undef), !dbg !2733
  %6 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !2734
    #dbg_value(ptr %data, !2718, !DIExpression(), !2735)
  %7 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !2736
    #dbg_value(i64 %1, !2719, !DIExpression(), !2737)
  %8 = icmp eq ptr %6, null, !dbg !2734
  br i1 %8, label %store.throw, label %store.next, !dbg !2734

store.next:                                       ; preds = %for.done
  store ptr %data, ptr %6, align 8, !dbg !2734
    #dbg_value(ptr %data, !2718, !DIExpression(), !2735)
  %9 = icmp eq ptr %7, null, !dbg !2736
  br i1 %9, label %store.throw1, label %store.next2, !dbg !2736

store.next2:                                      ; preds = %store.next
  store i64 %1, ptr %7, align 8, !dbg !2736
    #dbg_value(i64 %1, !2719, !DIExpression(), !2737)
  %10 = load %runtime._string, ptr %complit, align 8, !dbg !2738
  ret %runtime._string %10, !dbg !2739

store.throw:                                      ; preds = %for.done
  call void @runtime.nilPanic(ptr undef), !dbg !2734
  unreachable, !dbg !2734

store.throw1:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !2736
  unreachable, !dbg !2736
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/reflectlite.rawStructField" @"internal/reflectlite.rawStructFieldFromPointer"(ptr dereferenceable_or_null(48) %descriptor, ptr dereferenceable_or_null(1) %fieldType, ptr %data, i8 %flagsByte, ptr readonly %name.data, i64 %name.len, i32 %offset, ptr %context) unnamed_addr #1 !dbg !2740 {
entry:
    #dbg_value(ptr %descriptor, !2744, !DIExpression(), !2753)
    #dbg_value(ptr %fieldType, !2745, !DIExpression(), !2753)
    #dbg_value(ptr %data, !2746, !DIExpression(), !2753)
    #dbg_value(i8 %flagsByte, !2747, !DIExpression(), !2753)
  %complit5 = alloca %"internal/reflectlite.rawStructField", align 8, !dbg !2753
  %0 = insertvalue %runtime._string zeroinitializer, ptr %name.data, 0, !dbg !2753
  %1 = insertvalue %runtime._string %0, i64 %name.len, 1, !dbg !2753
    #dbg_value(ptr %name.data, !2748, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2753)
    #dbg_value(i64 %name.len, !2748, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2753)
    #dbg_value(i32 %offset, !2749, !DIExpression(), !2753)
    #dbg_value(%runtime._string zeroinitializer, !2750, !DIExpression(), !2754)
    #dbg_value(i8 %flagsByte, !2747, !DIExpression(), !2755)
  %2 = and i8 %flagsByte, 2, !dbg !2756
  %3 = icmp ne i8 %2, 0, !dbg !2757
  br i1 %3, label %if.then, label %if.done, !dbg !2758

if.then:                                          ; preds = %entry
    #dbg_value(ptr %data, !2746, !DIExpression(), !2759)
  %4 = getelementptr i8, ptr %data, i64 1, !dbg !2760
    #dbg_value(ptr %4, !2746, !DIExpression(), !2761)
    #dbg_value(ptr %4, !2746, !DIExpression(), !2762)
  %5 = load i8, ptr %4, align 1, !dbg !2763
  %6 = zext i8 %5 to i64, !dbg !2764
    #dbg_value(i64 %6, !2751, !DIExpression(), !2765)
    #dbg_value(ptr %4, !2746, !DIExpression(), !2766)
  %7 = getelementptr i8, ptr %4, i64 1, !dbg !2767
    #dbg_value(ptr %7, !2746, !DIExpression(), !2768)
  %complit = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 133 to ptr), ptr undef), !dbg !2769
  %8 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !2770
    #dbg_value(ptr %7, !2746, !DIExpression(), !2771)
  %9 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !2772
    #dbg_value(i64 %6, !2751, !DIExpression(), !2773)
  %10 = icmp eq ptr %8, null, !dbg !2770
  br i1 %10, label %store.throw, label %store.next, !dbg !2770

store.next:                                       ; preds = %if.then
  store ptr %7, ptr %8, align 8, !dbg !2770
    #dbg_value(ptr %7, !2746, !DIExpression(), !2771)
  %11 = icmp eq ptr %9, null, !dbg !2772
  br i1 %11, label %store.throw3, label %store.next4, !dbg !2772

store.next4:                                      ; preds = %store.next
  store i64 %6, ptr %9, align 8, !dbg !2772
    #dbg_value(i64 %6, !2751, !DIExpression(), !2773)
  %12 = load %runtime._string, ptr %complit, align 8, !dbg !2774
    #dbg_value(%runtime._string %12, !2750, !DIExpression(), !2775)
  br label %if.done, !dbg !2758

if.done:                                          ; preds = %store.next4, %entry
  %13 = phi %runtime._string [ zeroinitializer, %entry ], [ %12, %store.next4 ], !dbg !2754
    #dbg_value(%runtime._string zeroinitializer, !2752, !DIExpression(), !2776)
    #dbg_value(i8 %flagsByte, !2747, !DIExpression(), !2777)
  %14 = and i8 %flagsByte, 4, !dbg !2778
  %15 = icmp eq i8 %14, 0, !dbg !2779
  br i1 %15, label %if.then1, label %if.done2, !dbg !2758

if.then1:                                         ; preds = %if.done
    #dbg_value(ptr %descriptor, !2744, !DIExpression(), !2780)
  %16 = icmp eq ptr %descriptor, null, !dbg !2781
  br i1 %16, label %gep.throw, label %gep.next, !dbg !2781

gep.next:                                         ; preds = %if.then1
  %17 = getelementptr inbounds %"internal/reflectlite.structType", ptr %descriptor, i32 0, i32 3, !dbg !2781
  %18 = icmp eq ptr %17, null, !dbg !2781
  br i1 %18, label %deref.throw, label %deref.next, !dbg !2781

deref.next:                                       ; preds = %gep.next
  %19 = load ptr, ptr %17, align 8, !dbg !2781
  %20 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %19, ptr undef), !dbg !2782
    #dbg_value(%runtime._string %20, !2752, !DIExpression(), !2783)
  br label %if.done2, !dbg !2758

if.done2:                                         ; preds = %deref.next, %if.done
  %21 = phi %runtime._string [ zeroinitializer, %if.done ], [ %20, %deref.next ], !dbg !2776
  store %"internal/reflectlite.rawStructField" zeroinitializer, ptr %complit5, align 8, !dbg !2753
  %22 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 0, !dbg !2784
    #dbg_value(%runtime._string %1, !2748, !DIExpression(), !2785)
  %23 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 1, !dbg !2786
    #dbg_value(%runtime._string %21, !2752, !DIExpression(), !2787)
  %24 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 2, !dbg !2788
    #dbg_value(ptr %fieldType, !2745, !DIExpression(), !2789)
  %25 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 3, !dbg !2790
    #dbg_value(%runtime._string %13, !2750, !DIExpression(), !2791)
  %26 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 5, !dbg !2792
    #dbg_value(i8 %flagsByte, !2747, !DIExpression(), !2793)
  %27 = and i8 %flagsByte, 1, !dbg !2794
  %28 = icmp ne i8 %27, 0, !dbg !2795
  %29 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 4, !dbg !2796
    #dbg_value(i32 %offset, !2749, !DIExpression(), !2797)
  %30 = zext i32 %offset to i64, !dbg !2798
  %31 = icmp eq ptr %22, null, !dbg !2784
  br i1 %31, label %store.throw6, label %store.next7, !dbg !2784

store.next7:                                      ; preds = %if.done2
  store %runtime._string %1, ptr %22, align 8, !dbg !2784
    #dbg_value(%runtime._string %1, !2748, !DIExpression(), !2785)
  %32 = icmp eq ptr %23, null, !dbg !2786
  br i1 %32, label %store.throw8, label %store.next9, !dbg !2786

store.next9:                                      ; preds = %store.next7
  store %runtime._string %21, ptr %23, align 8, !dbg !2786
    #dbg_value(%runtime._string %21, !2752, !DIExpression(), !2787)
  %33 = icmp eq ptr %24, null, !dbg !2788
  br i1 %33, label %store.throw10, label %store.next11, !dbg !2788

store.next11:                                     ; preds = %store.next9
  store ptr %fieldType, ptr %24, align 8, !dbg !2788
    #dbg_value(ptr %fieldType, !2745, !DIExpression(), !2789)
  %34 = icmp eq ptr %25, null, !dbg !2790
  br i1 %34, label %store.throw12, label %store.next13, !dbg !2790

store.next13:                                     ; preds = %store.next11
  store %runtime._string %13, ptr %25, align 8, !dbg !2790
  %35 = icmp eq ptr %26, null, !dbg !2792
  br i1 %35, label %store.throw14, label %store.next15, !dbg !2792

store.next15:                                     ; preds = %store.next13
  store i1 %28, ptr %26, align 1, !dbg !2792
  %36 = icmp eq ptr %29, null, !dbg !2796
  br i1 %36, label %store.throw16, label %store.next17, !dbg !2796

store.next17:                                     ; preds = %store.next15
  store i64 %30, ptr %29, align 8, !dbg !2796
  %37 = load %"internal/reflectlite.rawStructField", ptr %complit5, align 8, !dbg !2799
  ret %"internal/reflectlite.rawStructField" %37, !dbg !2800

store.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2770
  unreachable, !dbg !2770

store.throw3:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !2772
  unreachable, !dbg !2772

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !2781
  unreachable, !dbg !2781

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2781
  unreachable, !dbg !2781

store.throw6:                                     ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2784
  unreachable, !dbg !2784

store.throw8:                                     ; preds = %store.next7
  call void @runtime.nilPanic(ptr undef), !dbg !2786
  unreachable, !dbg !2786

store.throw10:                                    ; preds = %store.next9
  call void @runtime.nilPanic(ptr undef), !dbg !2788
  unreachable, !dbg !2788

store.throw12:                                    ; preds = %store.next11
  call void @runtime.nilPanic(ptr undef), !dbg !2790
  unreachable, !dbg !2790

store.throw14:                                    ; preds = %store.next13
  call void @runtime.nilPanic(ptr undef), !dbg !2792
  unreachable, !dbg !2792

store.throw16:                                    ; preds = %store.next15
  call void @runtime.nilPanic(ptr undef), !dbg !2796
  unreachable, !dbg !2796
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.Kind).String"(i8 %k, ptr %context) unnamed_addr #1 !dbg !2801 {
entry:
    #dbg_value(i8 %k, !2806, !DIExpression(), !2807)
    #dbg_value(i8 %k, !2806, !DIExpression(), !2808)
  %0 = icmp eq i8 %k, 0, !dbg !2809
  br i1 %0, label %switch.body, label %switch.next, !dbg !2810

switch.body:                                      ; preds = %entry
  ret %runtime._string { ptr @"internal/reflectlite$string.41", i64 7 }, !dbg !2811

switch.next:                                      ; preds = %entry
  %1 = icmp eq i8 %k, 1, !dbg !2812
  br i1 %1, label %switch.body1, label %switch.next2, !dbg !2810

switch.body1:                                     ; preds = %switch.next
  ret %runtime._string { ptr @"internal/reflectlite$string.42", i64 4 }, !dbg !2813

switch.next2:                                     ; preds = %switch.next
  %2 = icmp eq i8 %k, 2, !dbg !2814
  br i1 %2, label %switch.body3, label %switch.next4, !dbg !2810

switch.body3:                                     ; preds = %switch.next2
  ret %runtime._string { ptr @"internal/reflectlite$string.43", i64 3 }, !dbg !2815

switch.next4:                                     ; preds = %switch.next2
  %3 = icmp eq i8 %k, 3, !dbg !2816
  br i1 %3, label %switch.body5, label %switch.next6, !dbg !2810

switch.body5:                                     ; preds = %switch.next4
  ret %runtime._string { ptr @"internal/reflectlite$string.44", i64 4 }, !dbg !2817

switch.next6:                                     ; preds = %switch.next4
  %4 = icmp eq i8 %k, 4, !dbg !2818
  br i1 %4, label %switch.body7, label %switch.next8, !dbg !2810

switch.body7:                                     ; preds = %switch.next6
  ret %runtime._string { ptr @"internal/reflectlite$string.45", i64 5 }, !dbg !2819

switch.next8:                                     ; preds = %switch.next6
  %5 = icmp eq i8 %k, 5, !dbg !2820
  br i1 %5, label %switch.body9, label %switch.next10, !dbg !2810

switch.body9:                                     ; preds = %switch.next8
  ret %runtime._string { ptr @"internal/reflectlite$string.46", i64 5 }, !dbg !2821

switch.next10:                                    ; preds = %switch.next8
  %6 = icmp eq i8 %k, 6, !dbg !2822
  br i1 %6, label %switch.body11, label %switch.next12, !dbg !2810

switch.body11:                                    ; preds = %switch.next10
  ret %runtime._string { ptr @"internal/reflectlite$string.47", i64 5 }, !dbg !2823

switch.next12:                                    ; preds = %switch.next10
  %7 = icmp eq i8 %k, 7, !dbg !2824
  br i1 %7, label %switch.body13, label %switch.next14, !dbg !2810

switch.body13:                                    ; preds = %switch.next12
  ret %runtime._string { ptr @"internal/reflectlite$string.48", i64 4 }, !dbg !2825

switch.next14:                                    ; preds = %switch.next12
  %8 = icmp eq i8 %k, 8, !dbg !2826
  br i1 %8, label %switch.body15, label %switch.next16, !dbg !2810

switch.body15:                                    ; preds = %switch.next14
  ret %runtime._string { ptr @"internal/reflectlite$string.49", i64 5 }, !dbg !2827

switch.next16:                                    ; preds = %switch.next14
  %9 = icmp eq i8 %k, 9, !dbg !2828
  br i1 %9, label %switch.body17, label %switch.next18, !dbg !2810

switch.body17:                                    ; preds = %switch.next16
  ret %runtime._string { ptr @"internal/reflectlite$string.50", i64 6 }, !dbg !2829

switch.next18:                                    ; preds = %switch.next16
  %10 = icmp eq i8 %k, 10, !dbg !2830
  br i1 %10, label %switch.body19, label %switch.next20, !dbg !2810

switch.body19:                                    ; preds = %switch.next18
  ret %runtime._string { ptr @"internal/reflectlite$string.51", i64 6 }, !dbg !2831

switch.next20:                                    ; preds = %switch.next18
  %11 = icmp eq i8 %k, 11, !dbg !2832
  br i1 %11, label %switch.body21, label %switch.next22, !dbg !2810

switch.body21:                                    ; preds = %switch.next20
  ret %runtime._string { ptr @"internal/reflectlite$string.52", i64 6 }, !dbg !2833

switch.next22:                                    ; preds = %switch.next20
  %12 = icmp eq i8 %k, 12, !dbg !2834
  br i1 %12, label %switch.body23, label %switch.next24, !dbg !2810

switch.body23:                                    ; preds = %switch.next22
  ret %runtime._string { ptr @"internal/reflectlite$string.53", i64 7 }, !dbg !2835

switch.next24:                                    ; preds = %switch.next22
  %13 = icmp eq i8 %k, 13, !dbg !2836
  br i1 %13, label %switch.body25, label %switch.next26, !dbg !2810

switch.body25:                                    ; preds = %switch.next24
  ret %runtime._string { ptr @"internal/reflectlite$string.54", i64 7 }, !dbg !2837

switch.next26:                                    ; preds = %switch.next24
  %14 = icmp eq i8 %k, 14, !dbg !2838
  br i1 %14, label %switch.body27, label %switch.next28, !dbg !2810

switch.body27:                                    ; preds = %switch.next26
  ret %runtime._string { ptr @"internal/reflectlite$string.55", i64 7 }, !dbg !2839

switch.next28:                                    ; preds = %switch.next26
  %15 = icmp eq i8 %k, 15, !dbg !2840
  br i1 %15, label %switch.body29, label %switch.next30, !dbg !2810

switch.body29:                                    ; preds = %switch.next28
  ret %runtime._string { ptr @"internal/reflectlite$string.56", i64 9 }, !dbg !2841

switch.next30:                                    ; preds = %switch.next28
  %16 = icmp eq i8 %k, 16, !dbg !2842
  br i1 %16, label %switch.body31, label %switch.next32, !dbg !2810

switch.body31:                                    ; preds = %switch.next30
  ret %runtime._string { ptr @"internal/reflectlite$string.57", i64 10 }, !dbg !2843

switch.next32:                                    ; preds = %switch.next30
  %17 = icmp eq i8 %k, 17, !dbg !2844
  br i1 %17, label %switch.body33, label %switch.next34, !dbg !2810

switch.body33:                                    ; preds = %switch.next32
  ret %runtime._string { ptr @"internal/reflectlite$string.58", i64 6 }, !dbg !2845

switch.next34:                                    ; preds = %switch.next32
  %18 = icmp eq i8 %k, 18, !dbg !2846
  br i1 %18, label %switch.body35, label %switch.next36, !dbg !2810

switch.body35:                                    ; preds = %switch.next34
  ret %runtime._string { ptr @"internal/reflectlite$string.59", i64 14 }, !dbg !2847

switch.next36:                                    ; preds = %switch.next34
  %19 = icmp eq i8 %k, 19, !dbg !2848
  br i1 %19, label %switch.body37, label %switch.next38, !dbg !2810

switch.body37:                                    ; preds = %switch.next36
  ret %runtime._string { ptr @"internal/reflectlite$string.60", i64 4 }, !dbg !2849

switch.next38:                                    ; preds = %switch.next36
  %20 = icmp eq i8 %k, 20, !dbg !2850
  br i1 %20, label %switch.body39, label %switch.next40, !dbg !2810

switch.body39:                                    ; preds = %switch.next38
  ret %runtime._string { ptr @"internal/reflectlite$string.61", i64 9 }, !dbg !2851

switch.next40:                                    ; preds = %switch.next38
  %21 = icmp eq i8 %k, 21, !dbg !2852
  br i1 %21, label %switch.body41, label %switch.next42, !dbg !2810

switch.body41:                                    ; preds = %switch.next40
  ret %runtime._string { ptr @"internal/reflectlite$string.62", i64 3 }, !dbg !2853

switch.next42:                                    ; preds = %switch.next40
  %22 = icmp eq i8 %k, 22, !dbg !2854
  br i1 %22, label %switch.body43, label %switch.next44, !dbg !2810

switch.body43:                                    ; preds = %switch.next42
  ret %runtime._string { ptr @"internal/reflectlite$string.63", i64 5 }, !dbg !2855

switch.next44:                                    ; preds = %switch.next42
  %23 = icmp eq i8 %k, 23, !dbg !2856
  br i1 %23, label %switch.body45, label %switch.next46, !dbg !2810

switch.body45:                                    ; preds = %switch.next44
  ret %runtime._string { ptr @"internal/reflectlite$string.64", i64 5 }, !dbg !2857

switch.next46:                                    ; preds = %switch.next44
  %24 = icmp eq i8 %k, 24, !dbg !2858
  br i1 %24, label %switch.body47, label %switch.next48, !dbg !2810

switch.body47:                                    ; preds = %switch.next46
  ret %runtime._string { ptr @"internal/reflectlite$string.65", i64 4 }, !dbg !2859

switch.next48:                                    ; preds = %switch.next46
  %25 = icmp eq i8 %k, 25, !dbg !2860
  br i1 %25, label %switch.body49, label %switch.next50, !dbg !2810

switch.body49:                                    ; preds = %switch.next48
  ret %runtime._string { ptr @"internal/reflectlite$string.66", i64 3 }, !dbg !2861

switch.next50:                                    ; preds = %switch.next48
  %26 = icmp eq i8 %k, 26, !dbg !2862
  br i1 %26, label %switch.body51, label %switch.next52, !dbg !2810

switch.body51:                                    ; preds = %switch.next50
  ret %runtime._string { ptr @"internal/reflectlite$string.67", i64 6 }, !dbg !2863

switch.next52:                                    ; preds = %switch.next50
    #dbg_value(i8 %k, !2806, !DIExpression(), !2864)
  %27 = sext i8 %k to i64, !dbg !2865
  %28 = call %runtime._string @"internal/itoa.Itoa"(i64 %27, ptr undef), !dbg !2866
  %29 = extractvalue %runtime._string %28, 0, !dbg !2867
  %30 = extractvalue %runtime._string %28, 1, !dbg !2867
  %31 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.68", i64 4, ptr %29, i64 %30, ptr undef), !dbg !2867
  ret %runtime._string %31, !dbg !2868
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/reflectlite.quote"(ptr readonly %s.data, i64 %s.len, ptr %context) unnamed_addr #1 !dbg !2869 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !2875
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !2875
    #dbg_value(ptr %s.data, !2871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2875)
    #dbg_value(i64 %s.len, !2871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2875)
    #dbg_value(%runtime._string %1, !2871, !DIExpression(), !2876)
  %len = extractvalue %runtime._string %1, 1, !dbg !2877
  %2 = mul i64 3, %len, !dbg !2878
  %3 = icmp eq i64 %2, -9223372036854775808, !dbg !2879
  %4 = and i1 false, %3, !dbg !2879
  %5 = select i1 %4, i64 1, i64 2, !dbg !2879
  %6 = sdiv i64 %2, %5, !dbg !2879
  %slice.lowhigh = icmp ugt i64 0, %6, !dbg !2880
  %slice.highmax = icmp ugt i64 %6, %6, !dbg !2880
  %slice.maxcap = icmp ugt i64 %6, 9223372036854775807, !dbg !2880
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2880
  %slice.lowcap = or i1 %slice.lowmax, %slice.maxcap, !dbg !2880
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2880

slice.next:                                       ; preds = %entry
  %makeslice.cap = mul i64 1, %6, !dbg !2880
  %makeslice.buf = call align 1 ptr @runtime.alloc(i64 %makeslice.cap, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2880
  %7 = insertvalue { ptr, i64, i64 } undef, ptr %makeslice.buf, 0, !dbg !2880
  %8 = insertvalue { ptr, i64, i64 } %7, i64 0, 1, !dbg !2880
  %9 = insertvalue { ptr, i64, i64 } %8, i64 %6, 2, !dbg !2880
    #dbg_value({ ptr, i64, i64 } %9, !2872, !DIExpression(), !2881)
    #dbg_value({ ptr, i64, i64 } %9, !2872, !DIExpression(), !2882)
  %varargs = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2883
  %10 = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2883
  store i8 34, ptr %10, align 1, !dbg !2883
  %slice.ptr = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2883
  %11 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !2883
  %12 = insertvalue { ptr, i64, i64 } %11, i64 1, 1, !dbg !2883
  %13 = insertvalue { ptr, i64, i64 } %12, i64 1, 2, !dbg !2883
  %append.srcBuf = extractvalue { ptr, i64, i64 } %9, 0, !dbg !2884
  %append.srcLen = extractvalue { ptr, i64, i64 } %9, 1, !dbg !2884
  %append.srcCap = extractvalue { ptr, i64, i64 } %9, 2, !dbg !2884
  %append.elemsBuf = extractvalue { ptr, i64, i64 } %13, 0, !dbg !2884
  %append.elemsLen = extractvalue { ptr, i64, i64 } %13, 1, !dbg !2884
  %append.new = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf, ptr %append.elemsBuf, i64 %append.srcLen, i64 %append.srcCap, i64 %append.elemsLen, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2884
  %append.newPtr = extractvalue { ptr, i64, i64 } %append.new, 0, !dbg !2884
  %append.newLen = extractvalue { ptr, i64, i64 } %append.new, 1, !dbg !2884
  %append.newCap = extractvalue { ptr, i64, i64 } %append.new, 2, !dbg !2884
  %14 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr, 0, !dbg !2884
  %15 = insertvalue { ptr, i64, i64 } %14, i64 %append.newLen, 1, !dbg !2884
  %16 = insertvalue { ptr, i64, i64 } %15, i64 %append.newCap, 2, !dbg !2884
    #dbg_value({ ptr, i64, i64 } %16, !2872, !DIExpression(), !2885)
    #dbg_value(i64 0, !2873, !DIExpression(), !2886)
  br label %for.loop, !dbg !2887

for.loop:                                         ; preds = %slice.next50, %slice.next
  %17 = phi %runtime._string [ %1, %slice.next ], [ %76, %slice.next50 ], !dbg !2888
  %18 = phi { ptr, i64, i64 } [ %16, %slice.next ], [ %70, %slice.next50 ], !dbg !2881
    #dbg_value(%runtime._string %17, !2871, !DIExpression(), !2889)
  %len3 = extractvalue %runtime._string %17, 1, !dbg !2890
  %19 = icmp sgt i64 %len3, 0, !dbg !2891
  br i1 %19, label %for.body, label %for.done, !dbg !2887

for.body:                                         ; preds = %for.loop
    #dbg_value(%runtime._string %17, !2871, !DIExpression(), !2892)
  %len4 = extractvalue %runtime._string %17, 1, !dbg !2893
  %20 = icmp uge i64 0, %len4, !dbg !2893
  br i1 %20, label %lookup.throw, label %lookup.next, !dbg !2893

lookup.next:                                      ; preds = %for.body
  %21 = extractvalue %runtime._string %17, 0, !dbg !2893
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !2893
  %23 = load i8, ptr %22, align 1, !dbg !2893
  %24 = zext i8 %23 to i32, !dbg !2894
    #dbg_value(i32 %24, !2874, !DIExpression(), !2895)
    #dbg_value(i64 1, !2873, !DIExpression(), !2896)
    #dbg_value(i32 %24, !2874, !DIExpression(), !2897)
  %25 = icmp sge i32 %24, 128, !dbg !2898
  br i1 %25, label %if.then, label %if.done, !dbg !2887

if.then:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %17, !2871, !DIExpression(), !2899)
  %26 = extractvalue %runtime._string %17, 0, !dbg !2900
  %27 = extractvalue %runtime._string %17, 1, !dbg !2900
  %28 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(ptr %26, i64 %27, ptr undef), !dbg !2900
  %29 = extractvalue { i32, i64 } %28, 0, !dbg !2900
    #dbg_value(i32 %29, !2874, !DIExpression(), !2901)
  %30 = extractvalue { i32, i64 } %28, 1, !dbg !2900
    #dbg_value(i64 %30, !2873, !DIExpression(), !2902)
  br label %if.done, !dbg !2887

if.done:                                          ; preds = %if.then, %lookup.next
  %31 = phi i64 [ 1, %lookup.next ], [ %30, %if.then ], !dbg !2886
  %32 = phi i32 [ %24, %lookup.next ], [ %29, %if.then ], !dbg !2895
    #dbg_value(i64 %31, !2873, !DIExpression(), !2903)
  %33 = icmp eq i64 %31, 1, !dbg !2904
  br i1 %33, label %cond.true, label %if.done2, !dbg !2887

cond.true:                                        ; preds = %if.done
    #dbg_value(i32 %32, !2874, !DIExpression(), !2905)
  %34 = icmp eq i32 %32, 65533, !dbg !2906
  br i1 %34, label %if.then1, label %if.done2, !dbg !2887

if.then1:                                         ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } %18, !2872, !DIExpression(), !2907)
  %append.srcBuf5 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2908
  %append.srcLen6 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2908
  %append.srcCap7 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2908
  %append.new8 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf5, ptr @"internal/reflectlite$string.20", i64 %append.srcLen6, i64 %append.srcCap7, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2908
  %append.newPtr9 = extractvalue { ptr, i64, i64 } %append.new8, 0, !dbg !2908
  %append.newLen10 = extractvalue { ptr, i64, i64 } %append.new8, 1, !dbg !2908
  %append.newCap11 = extractvalue { ptr, i64, i64 } %append.new8, 2, !dbg !2908
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr9, 0, !dbg !2908
  %36 = insertvalue { ptr, i64, i64 } %35, i64 %append.newLen10, 1, !dbg !2908
  %37 = insertvalue { ptr, i64, i64 } %36, i64 %append.newCap11, 2, !dbg !2908
    #dbg_value({ ptr, i64, i64 } %37, !2872, !DIExpression(), !2909)
    #dbg_value({ ptr, i64, i64 } %37, !2872, !DIExpression(), !2910)
    #dbg_value(%runtime._string %17, !2871, !DIExpression(), !2911)
  %len12 = extractvalue %runtime._string %17, 1, !dbg !2912
  %38 = icmp uge i64 0, %len12, !dbg !2912
  br i1 %38, label %lookup.throw13, label %lookup.next14, !dbg !2912

lookup.next14:                                    ; preds = %if.then1
  %39 = extractvalue %runtime._string %17, 0, !dbg !2912
  %40 = getelementptr inbounds i8, ptr %39, i64 0, !dbg !2912
  %41 = load i8, ptr %40, align 1, !dbg !2912
  %42 = lshr i8 %41, 4, !dbg !2913
  %shift.result = select i1 false, i8 0, i8 %42, !dbg !2913
  %43 = zext i8 %shift.result to i64, !dbg !2914
  %44 = icmp uge i64 %43, 15, !dbg !2914
  br i1 %44, label %lookup.throw15, label %lookup.next16, !dbg !2914

lookup.next16:                                    ; preds = %lookup.next14
  %45 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.21", i64 %43, !dbg !2914
  %46 = load i8, ptr %45, align 1, !dbg !2914
  %varargs17 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2915
  %47 = getelementptr inbounds [1 x i8], ptr %varargs17, i32 0, i64 0, !dbg !2915
  store i8 %46, ptr %47, align 1, !dbg !2914
  %slice.ptr18 = getelementptr inbounds [1 x i8], ptr %varargs17, i32 0, i64 0, !dbg !2915
  %48 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr18, 0, !dbg !2915
  %49 = insertvalue { ptr, i64, i64 } %48, i64 1, 1, !dbg !2915
  %50 = insertvalue { ptr, i64, i64 } %49, i64 1, 2, !dbg !2915
  %append.srcBuf19 = extractvalue { ptr, i64, i64 } %37, 0, !dbg !2916
  %append.srcLen20 = extractvalue { ptr, i64, i64 } %37, 1, !dbg !2916
  %append.srcCap21 = extractvalue { ptr, i64, i64 } %37, 2, !dbg !2916
  %append.elemsBuf22 = extractvalue { ptr, i64, i64 } %50, 0, !dbg !2916
  %append.elemsLen23 = extractvalue { ptr, i64, i64 } %50, 1, !dbg !2916
  %append.new24 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf19, ptr %append.elemsBuf22, i64 %append.srcLen20, i64 %append.srcCap21, i64 %append.elemsLen23, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2916
  %append.newPtr25 = extractvalue { ptr, i64, i64 } %append.new24, 0, !dbg !2916
  %append.newLen26 = extractvalue { ptr, i64, i64 } %append.new24, 1, !dbg !2916
  %append.newCap27 = extractvalue { ptr, i64, i64 } %append.new24, 2, !dbg !2916
  %51 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr25, 0, !dbg !2916
  %52 = insertvalue { ptr, i64, i64 } %51, i64 %append.newLen26, 1, !dbg !2916
  %53 = insertvalue { ptr, i64, i64 } %52, i64 %append.newCap27, 2, !dbg !2916
    #dbg_value({ ptr, i64, i64 } %53, !2872, !DIExpression(), !2917)
    #dbg_value({ ptr, i64, i64 } %53, !2872, !DIExpression(), !2918)
    #dbg_value(%runtime._string %17, !2871, !DIExpression(), !2919)
  %len28 = extractvalue %runtime._string %17, 1, !dbg !2920
  %54 = icmp uge i64 0, %len28, !dbg !2920
  br i1 %54, label %lookup.throw29, label %lookup.next30, !dbg !2920

lookup.next30:                                    ; preds = %lookup.next16
  %55 = extractvalue %runtime._string %17, 0, !dbg !2920
  %56 = getelementptr inbounds i8, ptr %55, i64 0, !dbg !2920
  %57 = load i8, ptr %56, align 1, !dbg !2920
  %58 = and i8 %57, 15, !dbg !2921
  %59 = zext i8 %58 to i64, !dbg !2922
  %60 = icmp uge i64 %59, 15, !dbg !2922
  br i1 %60, label %lookup.throw31, label %lookup.next32, !dbg !2922

lookup.next32:                                    ; preds = %lookup.next30
  %61 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.22", i64 %59, !dbg !2922
  %62 = load i8, ptr %61, align 1, !dbg !2922
  %varargs33 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2923
  %63 = getelementptr inbounds [1 x i8], ptr %varargs33, i32 0, i64 0, !dbg !2923
  store i8 %62, ptr %63, align 1, !dbg !2922
  %slice.ptr34 = getelementptr inbounds [1 x i8], ptr %varargs33, i32 0, i64 0, !dbg !2923
  %64 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr34, 0, !dbg !2923
  %65 = insertvalue { ptr, i64, i64 } %64, i64 1, 1, !dbg !2923
  %66 = insertvalue { ptr, i64, i64 } %65, i64 1, 2, !dbg !2923
  %append.srcBuf35 = extractvalue { ptr, i64, i64 } %53, 0, !dbg !2924
  %append.srcLen36 = extractvalue { ptr, i64, i64 } %53, 1, !dbg !2924
  %append.srcCap37 = extractvalue { ptr, i64, i64 } %53, 2, !dbg !2924
  %append.elemsBuf38 = extractvalue { ptr, i64, i64 } %66, 0, !dbg !2924
  %append.elemsLen39 = extractvalue { ptr, i64, i64 } %66, 1, !dbg !2924
  %append.new40 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf35, ptr %append.elemsBuf38, i64 %append.srcLen36, i64 %append.srcCap37, i64 %append.elemsLen39, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2924
  %append.newPtr41 = extractvalue { ptr, i64, i64 } %append.new40, 0, !dbg !2924
  %append.newLen42 = extractvalue { ptr, i64, i64 } %append.new40, 1, !dbg !2924
  %append.newCap43 = extractvalue { ptr, i64, i64 } %append.new40, 2, !dbg !2924
  %67 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr41, 0, !dbg !2924
  %68 = insertvalue { ptr, i64, i64 } %67, i64 %append.newLen42, 1, !dbg !2924
  %69 = insertvalue { ptr, i64, i64 } %68, i64 %append.newCap43, 2, !dbg !2924
    #dbg_value({ ptr, i64, i64 } %69, !2872, !DIExpression(), !2925)
  br label %for.post, !dbg !2887

for.post:                                         ; preds = %if.done2, %lookup.next32
  %70 = phi { ptr, i64, i64 } [ %69, %lookup.next32 ], [ %80, %if.done2 ], !dbg !2881
    #dbg_value(%runtime._string %17, !2871, !DIExpression(), !2926)
    #dbg_value(i64 %31, !2873, !DIExpression(), !2927)
  %71 = extractvalue %runtime._string %17, 0, !dbg !2928
  %72 = extractvalue %runtime._string %17, 1, !dbg !2928
  %slice.lowhigh44 = icmp ugt i64 %31, %72, !dbg !2928
  %slice.highmax45 = icmp ugt i64 %72, %72, !dbg !2928
  %slice.maxcap46 = icmp ugt i64 %72, %72, !dbg !2928
  %slice.lowmax47 = or i1 %slice.lowhigh44, %slice.highmax45, !dbg !2928
  %slice.lowcap48 = or i1 %slice.lowmax47, %slice.maxcap46, !dbg !2928
  br i1 %slice.lowcap48, label %slice.throw49, label %slice.next50, !dbg !2928

slice.next50:                                     ; preds = %for.post
  %73 = getelementptr inbounds i8, ptr %71, i64 %31, !dbg !2928
  %74 = sub i64 %72, %31, !dbg !2928
  %75 = insertvalue %runtime._string undef, ptr %73, 0, !dbg !2928
  %76 = insertvalue %runtime._string %75, i64 %74, 1, !dbg !2928
    #dbg_value(%runtime._string %76, !2871, !DIExpression(), !2929)
  br label %for.loop, !dbg !2887

if.done2:                                         ; preds = %cond.true, %if.done
    #dbg_value({ ptr, i64, i64 } %18, !2872, !DIExpression(), !2930)
    #dbg_value(i32 %32, !2874, !DIExpression(), !2931)
  %77 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2932
  %78 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2932
  %79 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2932
  %80 = call { ptr, i64, i64 } @"internal/reflectlite.appendEscapedRune"(ptr %77, i64 %78, i64 %79, i32 %32, ptr undef), !dbg !2932
    #dbg_value({ ptr, i64, i64 } %80, !2872, !DIExpression(), !2933)
  br label %for.post, !dbg !2887

for.done:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %18, !2872, !DIExpression(), !2934)
  %varargs51 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2935
  %81 = getelementptr inbounds [1 x i8], ptr %varargs51, i32 0, i64 0, !dbg !2935
  store i8 34, ptr %81, align 1, !dbg !2935
  %slice.ptr52 = getelementptr inbounds [1 x i8], ptr %varargs51, i32 0, i64 0, !dbg !2935
  %82 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr52, 0, !dbg !2935
  %83 = insertvalue { ptr, i64, i64 } %82, i64 1, 1, !dbg !2935
  %84 = insertvalue { ptr, i64, i64 } %83, i64 1, 2, !dbg !2935
  %append.srcBuf53 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2936
  %append.srcLen54 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2936
  %append.srcCap55 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2936
  %append.elemsBuf56 = extractvalue { ptr, i64, i64 } %84, 0, !dbg !2936
  %append.elemsLen57 = extractvalue { ptr, i64, i64 } %84, 1, !dbg !2936
  %append.new58 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf53, ptr %append.elemsBuf56, i64 %append.srcLen54, i64 %append.srcCap55, i64 %append.elemsLen57, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2936
  %append.newPtr59 = extractvalue { ptr, i64, i64 } %append.new58, 0, !dbg !2936
  %append.newLen60 = extractvalue { ptr, i64, i64 } %append.new58, 1, !dbg !2936
  %append.newCap61 = extractvalue { ptr, i64, i64 } %append.new58, 2, !dbg !2936
  %85 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr59, 0, !dbg !2936
  %86 = insertvalue { ptr, i64, i64 } %85, i64 %append.newLen60, 1, !dbg !2936
  %87 = insertvalue { ptr, i64, i64 } %86, i64 %append.newCap61, 2, !dbg !2936
    #dbg_value({ ptr, i64, i64 } %87, !2872, !DIExpression(), !2937)
    #dbg_value({ ptr, i64, i64 } %87, !2872, !DIExpression(), !2938)
  %88 = extractvalue { ptr, i64, i64 } %87, 0, !dbg !2939
  %89 = extractvalue { ptr, i64, i64 } %87, 1, !dbg !2939
  %90 = extractvalue { ptr, i64, i64 } %87, 2, !dbg !2939
  %91 = call %runtime._string @runtime.stringFromBytes(ptr %88, i64 %89, i64 %90, ptr undef), !dbg !2939
  ret %runtime._string %91, !dbg !2940

slice.throw:                                      ; preds = %entry
  call void @runtime.slicePanic(ptr undef), !dbg !2880
  unreachable, !dbg !2880

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2893
  unreachable, !dbg !2893

lookup.throw13:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !2912
  unreachable, !dbg !2912

lookup.throw15:                                   ; preds = %lookup.next14
  call void @runtime.lookupPanic(ptr undef), !dbg !2914
  unreachable, !dbg !2914

lookup.throw29:                                   ; preds = %lookup.next16
  call void @runtime.lookupPanic(ptr undef), !dbg !2920
  unreachable, !dbg !2920

lookup.throw31:                                   ; preds = %lookup.next30
  call void @runtime.lookupPanic(ptr undef), !dbg !2922
  unreachable, !dbg !2922

slice.throw49:                                    ; preds = %for.post
  call void @runtime.slicePanic(ptr undef), !dbg !2928
  unreachable, !dbg !2928
}

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @"internal/reflectlite.appendEscapedRune"(ptr %buf.data, i64 %buf.len, i64 %buf.cap, i32 %r, ptr %context) unnamed_addr #1 !dbg !2941 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %buf.data, 0, !dbg !2948
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %buf.len, 1, !dbg !2948
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %buf.cap, 2, !dbg !2948
    #dbg_value(ptr %buf.data, !2943, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2948)
    #dbg_value(i64 %buf.len, !2943, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2948)
    #dbg_value(i64 %buf.cap, !2943, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2948)
    #dbg_value(i32 %r, !2944, !DIExpression(), !2948)
  %runeTmp = call align 1 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2949
    #dbg_value(i32 %r, !2944, !DIExpression(), !2950)
  %3 = icmp eq i32 %r, 34, !dbg !2951
  br i1 %3, label %if.then, label %cond.false, !dbg !2952

if.then:                                          ; preds = %cond.false, %entry
    #dbg_value({ ptr, i64, i64 } %2, !2943, !DIExpression(), !2953)
  %varargs = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2954
  %4 = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2954
  store i8 92, ptr %4, align 1, !dbg !2954
  %slice.ptr = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2954
  %5 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !2954
  %6 = insertvalue { ptr, i64, i64 } %5, i64 1, 1, !dbg !2954
  %7 = insertvalue { ptr, i64, i64 } %6, i64 1, 2, !dbg !2954
  %append.srcBuf = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2955
  %append.srcLen = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2955
  %append.srcCap = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2955
  %append.elemsBuf = extractvalue { ptr, i64, i64 } %7, 0, !dbg !2955
  %append.elemsLen = extractvalue { ptr, i64, i64 } %7, 1, !dbg !2955
  %append.new = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf, ptr %append.elemsBuf, i64 %append.srcLen, i64 %append.srcCap, i64 %append.elemsLen, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2955
  %append.newPtr = extractvalue { ptr, i64, i64 } %append.new, 0, !dbg !2955
  %append.newLen = extractvalue { ptr, i64, i64 } %append.new, 1, !dbg !2955
  %append.newCap = extractvalue { ptr, i64, i64 } %append.new, 2, !dbg !2955
  %8 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr, 0, !dbg !2955
  %9 = insertvalue { ptr, i64, i64 } %8, i64 %append.newLen, 1, !dbg !2955
  %10 = insertvalue { ptr, i64, i64 } %9, i64 %append.newCap, 2, !dbg !2955
    #dbg_value({ ptr, i64, i64 } %10, !2943, !DIExpression(), !2956)
    #dbg_value({ ptr, i64, i64 } %10, !2943, !DIExpression(), !2957)
    #dbg_value(i32 %r, !2944, !DIExpression(), !2958)
  %11 = trunc i32 %r to i8, !dbg !2959
  %varargs23 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2960
  %12 = getelementptr inbounds [1 x i8], ptr %varargs23, i32 0, i64 0, !dbg !2960
  store i8 %11, ptr %12, align 1, !dbg !2959
  %slice.ptr24 = getelementptr inbounds [1 x i8], ptr %varargs23, i32 0, i64 0, !dbg !2960
  %13 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr24, 0, !dbg !2960
  %14 = insertvalue { ptr, i64, i64 } %13, i64 1, 1, !dbg !2960
  %15 = insertvalue { ptr, i64, i64 } %14, i64 1, 2, !dbg !2960
  %append.srcBuf25 = extractvalue { ptr, i64, i64 } %10, 0, !dbg !2961
  %append.srcLen26 = extractvalue { ptr, i64, i64 } %10, 1, !dbg !2961
  %append.srcCap27 = extractvalue { ptr, i64, i64 } %10, 2, !dbg !2961
  %append.elemsBuf28 = extractvalue { ptr, i64, i64 } %15, 0, !dbg !2961
  %append.elemsLen29 = extractvalue { ptr, i64, i64 } %15, 1, !dbg !2961
  %append.new30 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf25, ptr %append.elemsBuf28, i64 %append.srcLen26, i64 %append.srcCap27, i64 %append.elemsLen29, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2961
  %append.newPtr31 = extractvalue { ptr, i64, i64 } %append.new30, 0, !dbg !2961
  %append.newLen32 = extractvalue { ptr, i64, i64 } %append.new30, 1, !dbg !2961
  %append.newCap33 = extractvalue { ptr, i64, i64 } %append.new30, 2, !dbg !2961
  %16 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr31, 0, !dbg !2961
  %17 = insertvalue { ptr, i64, i64 } %16, i64 %append.newLen32, 1, !dbg !2961
  %18 = insertvalue { ptr, i64, i64 } %17, i64 %append.newCap33, 2, !dbg !2961
    #dbg_value({ ptr, i64, i64 } %18, !2943, !DIExpression(), !2962)
    #dbg_value({ ptr, i64, i64 } %18, !2943, !DIExpression(), !2963)
  ret { ptr, i64, i64 } %18, !dbg !2964

cond.false:                                       ; preds = %entry
    #dbg_value(i32 %r, !2944, !DIExpression(), !2965)
  %19 = icmp eq i32 %r, 92, !dbg !2966
  br i1 %19, label %if.then, label %if.done, !dbg !2952

if.done:                                          ; preds = %cond.false
    #dbg_value(i32 %r, !2944, !DIExpression(), !2967)
  %20 = call i1 @"internal/reflectlite.isPrint"(i32 %r, ptr undef), !dbg !2968
  br i1 %20, label %if.then1, label %if.done2, !dbg !2952

if.then1:                                         ; preds = %if.done
  %slice.ptr34 = getelementptr inbounds [4 x i8], ptr %runeTmp, i32 0, i64 0, !dbg !2969
  %21 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr34, 0, !dbg !2969
  %22 = insertvalue { ptr, i64, i64 } %21, i64 4, 1, !dbg !2969
  %23 = insertvalue { ptr, i64, i64 } %22, i64 4, 2, !dbg !2969
    #dbg_value(i32 %r, !2944, !DIExpression(), !2970)
  %24 = extractvalue { ptr, i64, i64 } %23, 0, !dbg !2971
  %25 = extractvalue { ptr, i64, i64 } %23, 1, !dbg !2971
  %26 = extractvalue { ptr, i64, i64 } %23, 2, !dbg !2971
  %27 = call i64 @"unicode/utf8.EncodeRune"(ptr %24, i64 %25, i64 %26, i32 %r, ptr undef), !dbg !2971
    #dbg_value(i64 %27, !2945, !DIExpression(), !2972)
    #dbg_value({ ptr, i64, i64 } %2, !2943, !DIExpression(), !2973)
    #dbg_value(i64 %27, !2945, !DIExpression(), !2974)
  %slice.lowhigh = icmp ugt i64 0, %27, !dbg !2975
  %slice.highmax = icmp ugt i64 %27, 4, !dbg !2975
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2975
  %slice.lowcap = or i1 %slice.lowmax, false, !dbg !2975
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2975

slice.next:                                       ; preds = %if.then1
  %slice.len = sub i64 %27, 0, !dbg !2975
  %slice.ptr35 = getelementptr inbounds [4 x i8], ptr %runeTmp, i32 0, i64 0, !dbg !2975
  %28 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr35, 0, !dbg !2975
  %29 = insertvalue { ptr, i64, i64 } %28, i64 %slice.len, 1, !dbg !2975
  %30 = insertvalue { ptr, i64, i64 } %29, i64 4, 2, !dbg !2975
  %append.srcBuf36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2976
  %append.srcLen37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2976
  %append.srcCap38 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2976
  %append.elemsBuf39 = extractvalue { ptr, i64, i64 } %30, 0, !dbg !2976
  %append.elemsLen40 = extractvalue { ptr, i64, i64 } %30, 1, !dbg !2976
  %append.new41 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf36, ptr %append.elemsBuf39, i64 %append.srcLen37, i64 %append.srcCap38, i64 %append.elemsLen40, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2976
  %append.newPtr42 = extractvalue { ptr, i64, i64 } %append.new41, 0, !dbg !2976
  %append.newLen43 = extractvalue { ptr, i64, i64 } %append.new41, 1, !dbg !2976
  %append.newCap44 = extractvalue { ptr, i64, i64 } %append.new41, 2, !dbg !2976
  %31 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr42, 0, !dbg !2976
  %32 = insertvalue { ptr, i64, i64 } %31, i64 %append.newLen43, 1, !dbg !2976
  %33 = insertvalue { ptr, i64, i64 } %32, i64 %append.newCap44, 2, !dbg !2976
    #dbg_value({ ptr, i64, i64 } %33, !2943, !DIExpression(), !2977)
    #dbg_value({ ptr, i64, i64 } %33, !2943, !DIExpression(), !2978)
  ret { ptr, i64, i64 } %33, !dbg !2979

if.done2:                                         ; preds = %if.done
    #dbg_value(i32 %r, !2944, !DIExpression(), !2980)
  %34 = icmp eq i32 %r, 7, !dbg !2981
  br i1 %34, label %switch.body, label %switch.next, !dbg !2952

switch.body:                                      ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } %2, !2943, !DIExpression(), !2982)
  %append.srcBuf45 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2983
  %append.srcLen46 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2983
  %append.srcCap47 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2983
  %append.new48 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf45, ptr @"internal/reflectlite$string.23", i64 %append.srcLen46, i64 %append.srcCap47, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2983
  %append.newPtr49 = extractvalue { ptr, i64, i64 } %append.new48, 0, !dbg !2983
  %append.newLen50 = extractvalue { ptr, i64, i64 } %append.new48, 1, !dbg !2983
  %append.newCap51 = extractvalue { ptr, i64, i64 } %append.new48, 2, !dbg !2983
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr49, 0, !dbg !2983
  %36 = insertvalue { ptr, i64, i64 } %35, i64 %append.newLen50, 1, !dbg !2983
  %37 = insertvalue { ptr, i64, i64 } %36, i64 %append.newCap51, 2, !dbg !2983
    #dbg_value({ ptr, i64, i64 } %37, !2943, !DIExpression(), !2984)
  br label %switch.done, !dbg !2952

switch.done:                                      ; preds = %for.loop21, %for.loop, %lookup.next113, %switch.body13, %switch.body11, %switch.body9, %switch.body7, %switch.body5, %switch.body3, %switch.body
  %38 = phi { ptr, i64, i64 } [ %37, %switch.body ], [ %42, %switch.body3 ], [ %46, %switch.body5 ], [ %50, %switch.body7 ], [ %54, %switch.body9 ], [ %58, %switch.body11 ], [ %62, %switch.body13 ], [ %93, %lookup.next113 ], [ %100, %for.loop ], [ %122, %for.loop21 ], !dbg !2985
    #dbg_value({ ptr, i64, i64 } %38, !2943, !DIExpression(), !2986)
  ret { ptr, i64, i64 } %38, !dbg !2987

switch.next:                                      ; preds = %if.done2
  %39 = icmp eq i32 %r, 8, !dbg !2988
  br i1 %39, label %switch.body3, label %switch.next4, !dbg !2952

switch.body3:                                     ; preds = %switch.next
    #dbg_value({ ptr, i64, i64 } %2, !2943, !DIExpression(), !2989)
  %append.srcBuf52 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2990
  %append.srcLen53 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2990
  %append.srcCap54 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2990
  %append.new55 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf52, ptr @"internal/reflectlite$string.24", i64 %append.srcLen53, i64 %append.srcCap54, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2990
  %append.newPtr56 = extractvalue { ptr, i64, i64 } %append.new55, 0, !dbg !2990
  %append.newLen57 = extractvalue { ptr, i64, i64 } %append.new55, 1, !dbg !2990
  %append.newCap58 = extractvalue { ptr, i64, i64 } %append.new55, 2, !dbg !2990
  %40 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr56, 0, !dbg !2990
  %41 = insertvalue { ptr, i64, i64 } %40, i64 %append.newLen57, 1, !dbg !2990
  %42 = insertvalue { ptr, i64, i64 } %41, i64 %append.newCap58, 2, !dbg !2990
    #dbg_value({ ptr, i64, i64 } %42, !2943, !DIExpression(), !2991)
  br label %switch.done, !dbg !2952

switch.next4:                                     ; preds = %switch.next
  %43 = icmp eq i32 %r, 12, !dbg !2992
  br i1 %43, label %switch.body5, label %switch.next6, !dbg !2952

switch.body5:                                     ; preds = %switch.next4
    #dbg_value({ ptr, i64, i64 } %2, !2943, !DIExpression(), !2993)
  %append.srcBuf59 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2994
  %append.srcLen60 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2994
  %append.srcCap61 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2994
  %append.new62 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf59, ptr @"internal/reflectlite$string.25", i64 %append.srcLen60, i64 %append.srcCap61, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2994
  %append.newPtr63 = extractvalue { ptr, i64, i64 } %append.new62, 0, !dbg !2994
  %append.newLen64 = extractvalue { ptr, i64, i64 } %append.new62, 1, !dbg !2994
  %append.newCap65 = extractvalue { ptr, i64, i64 } %append.new62, 2, !dbg !2994
  %44 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr63, 0, !dbg !2994
  %45 = insertvalue { ptr, i64, i64 } %44, i64 %append.newLen64, 1, !dbg !2994
  %46 = insertvalue { ptr, i64, i64 } %45, i64 %append.newCap65, 2, !dbg !2994
    #dbg_value({ ptr, i64, i64 } %46, !2943, !DIExpression(), !2995)
  br label %switch.done, !dbg !2952

switch.next6:                                     ; preds = %switch.next4
  %47 = icmp eq i32 %r, 10, !dbg !2996
  br i1 %47, label %switch.body7, label %switch.next8, !dbg !2952

switch.body7:                                     ; preds = %switch.next6
    #dbg_value({ ptr, i64, i64 } %2, !2943, !DIExpression(), !2997)
  %append.srcBuf66 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2998
  %append.srcLen67 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2998
  %append.srcCap68 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2998
  %append.new69 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf66, ptr @"internal/reflectlite$string.26", i64 %append.srcLen67, i64 %append.srcCap68, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2998
  %append.newPtr70 = extractvalue { ptr, i64, i64 } %append.new69, 0, !dbg !2998
  %append.newLen71 = extractvalue { ptr, i64, i64 } %append.new69, 1, !dbg !2998
  %append.newCap72 = extractvalue { ptr, i64, i64 } %append.new69, 2, !dbg !2998
  %48 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr70, 0, !dbg !2998
  %49 = insertvalue { ptr, i64, i64 } %48, i64 %append.newLen71, 1, !dbg !2998
  %50 = insertvalue { ptr, i64, i64 } %49, i64 %append.newCap72, 2, !dbg !2998
    #dbg_value({ ptr, i64, i64 } %50, !2943, !DIExpression(), !2999)
  br label %switch.done, !dbg !2952

switch.next8:                                     ; preds = %switch.next6
  %51 = icmp eq i32 %r, 13, !dbg !3000
  br i1 %51, label %switch.body9, label %switch.next10, !dbg !2952

switch.body9:                                     ; preds = %switch.next8
    #dbg_value({ ptr, i64, i64 } %2, !2943, !DIExpression(), !3001)
  %append.srcBuf73 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3002
  %append.srcLen74 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3002
  %append.srcCap75 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3002
  %append.new76 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf73, ptr @"internal/reflectlite$string.27", i64 %append.srcLen74, i64 %append.srcCap75, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3002
  %append.newPtr77 = extractvalue { ptr, i64, i64 } %append.new76, 0, !dbg !3002
  %append.newLen78 = extractvalue { ptr, i64, i64 } %append.new76, 1, !dbg !3002
  %append.newCap79 = extractvalue { ptr, i64, i64 } %append.new76, 2, !dbg !3002
  %52 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr77, 0, !dbg !3002
  %53 = insertvalue { ptr, i64, i64 } %52, i64 %append.newLen78, 1, !dbg !3002
  %54 = insertvalue { ptr, i64, i64 } %53, i64 %append.newCap79, 2, !dbg !3002
    #dbg_value({ ptr, i64, i64 } %54, !2943, !DIExpression(), !3003)
  br label %switch.done, !dbg !2952

switch.next10:                                    ; preds = %switch.next8
  %55 = icmp eq i32 %r, 9, !dbg !3004
  br i1 %55, label %switch.body11, label %switch.next12, !dbg !2952

switch.body11:                                    ; preds = %switch.next10
    #dbg_value({ ptr, i64, i64 } %2, !2943, !DIExpression(), !3005)
  %append.srcBuf80 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3006
  %append.srcLen81 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3006
  %append.srcCap82 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3006
  %append.new83 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf80, ptr @"internal/reflectlite$string.28", i64 %append.srcLen81, i64 %append.srcCap82, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3006
  %append.newPtr84 = extractvalue { ptr, i64, i64 } %append.new83, 0, !dbg !3006
  %append.newLen85 = extractvalue { ptr, i64, i64 } %append.new83, 1, !dbg !3006
  %append.newCap86 = extractvalue { ptr, i64, i64 } %append.new83, 2, !dbg !3006
  %56 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr84, 0, !dbg !3006
  %57 = insertvalue { ptr, i64, i64 } %56, i64 %append.newLen85, 1, !dbg !3006
  %58 = insertvalue { ptr, i64, i64 } %57, i64 %append.newCap86, 2, !dbg !3006
    #dbg_value({ ptr, i64, i64 } %58, !2943, !DIExpression(), !3007)
  br label %switch.done, !dbg !2952

switch.next12:                                    ; preds = %switch.next10
  %59 = icmp eq i32 %r, 11, !dbg !3008
  br i1 %59, label %switch.body13, label %switch.next14, !dbg !2952

switch.body13:                                    ; preds = %switch.next12
    #dbg_value({ ptr, i64, i64 } %2, !2943, !DIExpression(), !3009)
  %append.srcBuf87 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3010
  %append.srcLen88 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3010
  %append.srcCap89 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3010
  %append.new90 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf87, ptr @"internal/reflectlite$string.29", i64 %append.srcLen88, i64 %append.srcCap89, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3010
  %append.newPtr91 = extractvalue { ptr, i64, i64 } %append.new90, 0, !dbg !3010
  %append.newLen92 = extractvalue { ptr, i64, i64 } %append.new90, 1, !dbg !3010
  %append.newCap93 = extractvalue { ptr, i64, i64 } %append.new90, 2, !dbg !3010
  %60 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr91, 0, !dbg !3010
  %61 = insertvalue { ptr, i64, i64 } %60, i64 %append.newLen92, 1, !dbg !3010
  %62 = insertvalue { ptr, i64, i64 } %61, i64 %append.newCap93, 2, !dbg !3010
    #dbg_value({ ptr, i64, i64 } %62, !2943, !DIExpression(), !3011)
  br label %switch.done, !dbg !2952

switch.next14:                                    ; preds = %switch.next12
    #dbg_value(i32 %r, !2944, !DIExpression(), !3012)
  %63 = icmp slt i32 %r, 32, !dbg !3013
  br i1 %63, label %binop.done, label %binop.rhs, !dbg !2952

binop.done:                                       ; preds = %binop.rhs, %switch.next14
  %64 = phi i1 [ true, %switch.next14 ], [ %140, %binop.rhs ], !dbg !3014
  br i1 %64, label %switch.body15, label %switch.next16, !dbg !2952

switch.body15:                                    ; preds = %binop.done
    #dbg_value({ ptr, i64, i64 } %2, !2943, !DIExpression(), !3015)
  %append.srcBuf94 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3016
  %append.srcLen95 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3016
  %append.srcCap96 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3016
  %append.new97 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf94, ptr @"internal/reflectlite$string.30", i64 %append.srcLen95, i64 %append.srcCap96, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3016
  %append.newPtr98 = extractvalue { ptr, i64, i64 } %append.new97, 0, !dbg !3016
  %append.newLen99 = extractvalue { ptr, i64, i64 } %append.new97, 1, !dbg !3016
  %append.newCap100 = extractvalue { ptr, i64, i64 } %append.new97, 2, !dbg !3016
  %65 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr98, 0, !dbg !3016
  %66 = insertvalue { ptr, i64, i64 } %65, i64 %append.newLen99, 1, !dbg !3016
  %67 = insertvalue { ptr, i64, i64 } %66, i64 %append.newCap100, 2, !dbg !3016
    #dbg_value({ ptr, i64, i64 } %67, !2943, !DIExpression(), !3017)
    #dbg_value({ ptr, i64, i64 } %67, !2943, !DIExpression(), !3018)
    #dbg_value(i32 %r, !2944, !DIExpression(), !3019)
  %68 = trunc i32 %r to i8, !dbg !3020
  %69 = lshr i8 %68, 4, !dbg !3021
  %shift.result = select i1 false, i8 0, i8 %69, !dbg !3021
  %70 = zext i8 %shift.result to i64, !dbg !3022
  %71 = icmp uge i64 %70, 15, !dbg !3022
  br i1 %71, label %lookup.throw, label %lookup.next, !dbg !3022

lookup.next:                                      ; preds = %switch.body15
  %72 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.31", i64 %70, !dbg !3022
  %73 = load i8, ptr %72, align 1, !dbg !3022
  %varargs101 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3023
  %74 = getelementptr inbounds [1 x i8], ptr %varargs101, i32 0, i64 0, !dbg !3023
  store i8 %73, ptr %74, align 1, !dbg !3022
  %slice.ptr102 = getelementptr inbounds [1 x i8], ptr %varargs101, i32 0, i64 0, !dbg !3023
  %75 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr102, 0, !dbg !3023
  %76 = insertvalue { ptr, i64, i64 } %75, i64 1, 1, !dbg !3023
  %77 = insertvalue { ptr, i64, i64 } %76, i64 1, 2, !dbg !3023
  %append.srcBuf103 = extractvalue { ptr, i64, i64 } %67, 0, !dbg !3024
  %append.srcLen104 = extractvalue { ptr, i64, i64 } %67, 1, !dbg !3024
  %append.srcCap105 = extractvalue { ptr, i64, i64 } %67, 2, !dbg !3024
  %append.elemsBuf106 = extractvalue { ptr, i64, i64 } %77, 0, !dbg !3024
  %append.elemsLen107 = extractvalue { ptr, i64, i64 } %77, 1, !dbg !3024
  %append.new108 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf103, ptr %append.elemsBuf106, i64 %append.srcLen104, i64 %append.srcCap105, i64 %append.elemsLen107, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3024
  %append.newPtr109 = extractvalue { ptr, i64, i64 } %append.new108, 0, !dbg !3024
  %append.newLen110 = extractvalue { ptr, i64, i64 } %append.new108, 1, !dbg !3024
  %append.newCap111 = extractvalue { ptr, i64, i64 } %append.new108, 2, !dbg !3024
  %78 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr109, 0, !dbg !3024
  %79 = insertvalue { ptr, i64, i64 } %78, i64 %append.newLen110, 1, !dbg !3024
  %80 = insertvalue { ptr, i64, i64 } %79, i64 %append.newCap111, 2, !dbg !3024
    #dbg_value({ ptr, i64, i64 } %80, !2943, !DIExpression(), !3025)
    #dbg_value({ ptr, i64, i64 } %80, !2943, !DIExpression(), !3026)
    #dbg_value(i32 %r, !2944, !DIExpression(), !3027)
  %81 = trunc i32 %r to i8, !dbg !3028
  %82 = and i8 %81, 15, !dbg !3029
  %83 = zext i8 %82 to i64, !dbg !3030
  %84 = icmp uge i64 %83, 15, !dbg !3030
  br i1 %84, label %lookup.throw112, label %lookup.next113, !dbg !3030

lookup.next113:                                   ; preds = %lookup.next
  %85 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.32", i64 %83, !dbg !3030
  %86 = load i8, ptr %85, align 1, !dbg !3030
  %varargs114 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3031
  %87 = getelementptr inbounds [1 x i8], ptr %varargs114, i32 0, i64 0, !dbg !3031
  store i8 %86, ptr %87, align 1, !dbg !3030
  %slice.ptr115 = getelementptr inbounds [1 x i8], ptr %varargs114, i32 0, i64 0, !dbg !3031
  %88 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr115, 0, !dbg !3031
  %89 = insertvalue { ptr, i64, i64 } %88, i64 1, 1, !dbg !3031
  %90 = insertvalue { ptr, i64, i64 } %89, i64 1, 2, !dbg !3031
  %append.srcBuf116 = extractvalue { ptr, i64, i64 } %80, 0, !dbg !3032
  %append.srcLen117 = extractvalue { ptr, i64, i64 } %80, 1, !dbg !3032
  %append.srcCap118 = extractvalue { ptr, i64, i64 } %80, 2, !dbg !3032
  %append.elemsBuf119 = extractvalue { ptr, i64, i64 } %90, 0, !dbg !3032
  %append.elemsLen120 = extractvalue { ptr, i64, i64 } %90, 1, !dbg !3032
  %append.new121 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf116, ptr %append.elemsBuf119, i64 %append.srcLen117, i64 %append.srcCap118, i64 %append.elemsLen120, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3032
  %append.newPtr122 = extractvalue { ptr, i64, i64 } %append.new121, 0, !dbg !3032
  %append.newLen123 = extractvalue { ptr, i64, i64 } %append.new121, 1, !dbg !3032
  %append.newCap124 = extractvalue { ptr, i64, i64 } %append.new121, 2, !dbg !3032
  %91 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr122, 0, !dbg !3032
  %92 = insertvalue { ptr, i64, i64 } %91, i64 %append.newLen123, 1, !dbg !3032
  %93 = insertvalue { ptr, i64, i64 } %92, i64 %append.newCap124, 2, !dbg !3032
    #dbg_value({ ptr, i64, i64 } %93, !2943, !DIExpression(), !3033)
  br label %switch.done, !dbg !2952

switch.next16:                                    ; preds = %binop.done
    #dbg_value(i32 %r, !2944, !DIExpression(), !3034)
  %94 = call i1 @"unicode/utf8.ValidRune"(i32 %r, ptr undef), !dbg !3035
  %95 = xor i1 %94, true, !dbg !3036
  br i1 %95, label %switch.body17, label %switch.next19, !dbg !2952

switch.body17:                                    ; preds = %switch.next16
    #dbg_value(i32 65533, !2944, !DIExpression(), !3037)
  br label %switch.body18, !dbg !2952

switch.body18:                                    ; preds = %switch.next19, %switch.body17
  %96 = phi i32 [ 65533, %switch.body17 ], [ %r, %switch.next19 ], !dbg !3038
    #dbg_value({ ptr, i64, i64 } %2, !2943, !DIExpression(), !3039)
  %append.srcBuf125 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3040
  %append.srcLen126 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3040
  %append.srcCap127 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3040
  %append.new128 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf125, ptr @"internal/reflectlite$string.33", i64 %append.srcLen126, i64 %append.srcCap127, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3040
  %append.newPtr129 = extractvalue { ptr, i64, i64 } %append.new128, 0, !dbg !3040
  %append.newLen130 = extractvalue { ptr, i64, i64 } %append.new128, 1, !dbg !3040
  %append.newCap131 = extractvalue { ptr, i64, i64 } %append.new128, 2, !dbg !3040
  %97 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr129, 0, !dbg !3040
  %98 = insertvalue { ptr, i64, i64 } %97, i64 %append.newLen130, 1, !dbg !3040
  %99 = insertvalue { ptr, i64, i64 } %98, i64 %append.newCap131, 2, !dbg !3040
    #dbg_value({ ptr, i64, i64 } %99, !2943, !DIExpression(), !3041)
    #dbg_value(i64 12, !2946, !DIExpression(), !3042)
  br label %for.loop, !dbg !2952

for.loop:                                         ; preds = %lookup.next133, %switch.body18
  %100 = phi { ptr, i64, i64 } [ %99, %switch.body18 ], [ %116, %lookup.next133 ], !dbg !2985
  %101 = phi i64 [ 12, %switch.body18 ], [ %117, %lookup.next133 ], !dbg !3042
    #dbg_value(i64 %101, !2946, !DIExpression(), !3043)
  %102 = icmp sge i64 %101, 0, !dbg !3044
  br i1 %102, label %for.body, label %switch.done, !dbg !2952

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %100, !2943, !DIExpression(), !3045)
    #dbg_value(i32 %96, !2944, !DIExpression(), !3046)
    #dbg_value(i64 %101, !2946, !DIExpression(), !3047)
  %shift.overflow = icmp uge i64 %101, 32, !dbg !3048
  %103 = trunc i64 %101 to i32, !dbg !3048
  %shift.offset = select i1 %shift.overflow, i32 31, i32 %103, !dbg !3048
  %104 = ashr i32 %96, %shift.offset, !dbg !3048
  %105 = and i32 %104, 15, !dbg !3049
  %106 = sext i32 %105 to i64, !dbg !3050
  %107 = icmp uge i64 %106, 15, !dbg !3050
  br i1 %107, label %lookup.throw132, label %lookup.next133, !dbg !3050

lookup.next133:                                   ; preds = %for.body
  %108 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.34", i64 %106, !dbg !3050
  %109 = load i8, ptr %108, align 1, !dbg !3050
  %varargs134 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3051
  %110 = getelementptr inbounds [1 x i8], ptr %varargs134, i32 0, i64 0, !dbg !3051
  store i8 %109, ptr %110, align 1, !dbg !3050
  %slice.ptr135 = getelementptr inbounds [1 x i8], ptr %varargs134, i32 0, i64 0, !dbg !3051
  %111 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr135, 0, !dbg !3051
  %112 = insertvalue { ptr, i64, i64 } %111, i64 1, 1, !dbg !3051
  %113 = insertvalue { ptr, i64, i64 } %112, i64 1, 2, !dbg !3051
  %append.srcBuf136 = extractvalue { ptr, i64, i64 } %100, 0, !dbg !3052
  %append.srcLen137 = extractvalue { ptr, i64, i64 } %100, 1, !dbg !3052
  %append.srcCap138 = extractvalue { ptr, i64, i64 } %100, 2, !dbg !3052
  %append.elemsBuf139 = extractvalue { ptr, i64, i64 } %113, 0, !dbg !3052
  %append.elemsLen140 = extractvalue { ptr, i64, i64 } %113, 1, !dbg !3052
  %append.new141 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf136, ptr %append.elemsBuf139, i64 %append.srcLen137, i64 %append.srcCap138, i64 %append.elemsLen140, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3052
  %append.newPtr142 = extractvalue { ptr, i64, i64 } %append.new141, 0, !dbg !3052
  %append.newLen143 = extractvalue { ptr, i64, i64 } %append.new141, 1, !dbg !3052
  %append.newCap144 = extractvalue { ptr, i64, i64 } %append.new141, 2, !dbg !3052
  %114 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr142, 0, !dbg !3052
  %115 = insertvalue { ptr, i64, i64 } %114, i64 %append.newLen143, 1, !dbg !3052
  %116 = insertvalue { ptr, i64, i64 } %115, i64 %append.newCap144, 2, !dbg !3052
    #dbg_value({ ptr, i64, i64 } %116, !2943, !DIExpression(), !3053)
  %117 = sub i64 %101, 4, !dbg !3054
    #dbg_value(i64 %117, !2946, !DIExpression(), !3054)
  br label %for.loop, !dbg !2952

switch.next19:                                    ; preds = %switch.next16
    #dbg_value(i32 %r, !2944, !DIExpression(), !3055)
  %118 = icmp slt i32 %r, 65536, !dbg !3056
  br i1 %118, label %switch.body18, label %switch.next20, !dbg !2952

switch.next20:                                    ; preds = %switch.next19
    #dbg_value({ ptr, i64, i64 } %2, !2943, !DIExpression(), !3057)
  %append.srcBuf145 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3058
  %append.srcLen146 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3058
  %append.srcCap147 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3058
  %append.new148 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf145, ptr @"internal/reflectlite$string.35", i64 %append.srcLen146, i64 %append.srcCap147, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3058
  %append.newPtr149 = extractvalue { ptr, i64, i64 } %append.new148, 0, !dbg !3058
  %append.newLen150 = extractvalue { ptr, i64, i64 } %append.new148, 1, !dbg !3058
  %append.newCap151 = extractvalue { ptr, i64, i64 } %append.new148, 2, !dbg !3058
  %119 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr149, 0, !dbg !3058
  %120 = insertvalue { ptr, i64, i64 } %119, i64 %append.newLen150, 1, !dbg !3058
  %121 = insertvalue { ptr, i64, i64 } %120, i64 %append.newCap151, 2, !dbg !3058
    #dbg_value({ ptr, i64, i64 } %121, !2943, !DIExpression(), !3059)
    #dbg_value(i64 28, !2947, !DIExpression(), !3060)
  br label %for.loop21, !dbg !2952

for.loop21:                                       ; preds = %lookup.next155, %switch.next20
  %122 = phi { ptr, i64, i64 } [ %121, %switch.next20 ], [ %138, %lookup.next155 ], !dbg !2985
  %123 = phi i64 [ 28, %switch.next20 ], [ %139, %lookup.next155 ], !dbg !3060
    #dbg_value(i64 %123, !2947, !DIExpression(), !3061)
  %124 = icmp sge i64 %123, 0, !dbg !3062
  br i1 %124, label %for.body22, label %switch.done, !dbg !2952

for.body22:                                       ; preds = %for.loop21
    #dbg_value({ ptr, i64, i64 } %122, !2943, !DIExpression(), !3063)
    #dbg_value(i32 %r, !2944, !DIExpression(), !3064)
    #dbg_value(i64 %123, !2947, !DIExpression(), !3065)
  %shift.overflow152 = icmp uge i64 %123, 32, !dbg !3066
  %125 = trunc i64 %123 to i32, !dbg !3066
  %shift.offset153 = select i1 %shift.overflow152, i32 31, i32 %125, !dbg !3066
  %126 = ashr i32 %r, %shift.offset153, !dbg !3066
  %127 = and i32 %126, 15, !dbg !3067
  %128 = sext i32 %127 to i64, !dbg !3068
  %129 = icmp uge i64 %128, 15, !dbg !3068
  br i1 %129, label %lookup.throw154, label %lookup.next155, !dbg !3068

lookup.next155:                                   ; preds = %for.body22
  %130 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.36", i64 %128, !dbg !3068
  %131 = load i8, ptr %130, align 1, !dbg !3068
  %varargs156 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3069
  %132 = getelementptr inbounds [1 x i8], ptr %varargs156, i32 0, i64 0, !dbg !3069
  store i8 %131, ptr %132, align 1, !dbg !3068
  %slice.ptr157 = getelementptr inbounds [1 x i8], ptr %varargs156, i32 0, i64 0, !dbg !3069
  %133 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr157, 0, !dbg !3069
  %134 = insertvalue { ptr, i64, i64 } %133, i64 1, 1, !dbg !3069
  %135 = insertvalue { ptr, i64, i64 } %134, i64 1, 2, !dbg !3069
  %append.srcBuf158 = extractvalue { ptr, i64, i64 } %122, 0, !dbg !3070
  %append.srcLen159 = extractvalue { ptr, i64, i64 } %122, 1, !dbg !3070
  %append.srcCap160 = extractvalue { ptr, i64, i64 } %122, 2, !dbg !3070
  %append.elemsBuf161 = extractvalue { ptr, i64, i64 } %135, 0, !dbg !3070
  %append.elemsLen162 = extractvalue { ptr, i64, i64 } %135, 1, !dbg !3070
  %append.new163 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf158, ptr %append.elemsBuf161, i64 %append.srcLen159, i64 %append.srcCap160, i64 %append.elemsLen162, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3070
  %append.newPtr164 = extractvalue { ptr, i64, i64 } %append.new163, 0, !dbg !3070
  %append.newLen165 = extractvalue { ptr, i64, i64 } %append.new163, 1, !dbg !3070
  %append.newCap166 = extractvalue { ptr, i64, i64 } %append.new163, 2, !dbg !3070
  %136 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr164, 0, !dbg !3070
  %137 = insertvalue { ptr, i64, i64 } %136, i64 %append.newLen165, 1, !dbg !3070
  %138 = insertvalue { ptr, i64, i64 } %137, i64 %append.newCap166, 2, !dbg !3070
    #dbg_value({ ptr, i64, i64 } %138, !2943, !DIExpression(), !3071)
  %139 = sub i64 %123, 4, !dbg !3072
    #dbg_value(i64 %139, !2947, !DIExpression(), !3072)
  br label %for.loop21, !dbg !2952

binop.rhs:                                        ; preds = %switch.next14
    #dbg_value(i32 %r, !2944, !DIExpression(), !3073)
  %140 = icmp eq i32 %r, 127, !dbg !3074
  br label %binop.done, !dbg !2952

slice.throw:                                      ; preds = %if.then1
  call void @runtime.slicePanic(ptr undef), !dbg !2975
  unreachable, !dbg !2975

lookup.throw:                                     ; preds = %switch.body15
  call void @runtime.lookupPanic(ptr undef), !dbg !3022
  unreachable, !dbg !3022

lookup.throw112:                                  ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !3030
  unreachable, !dbg !3030

lookup.throw132:                                  ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !3050
  unreachable, !dbg !3050

lookup.throw154:                                  ; preds = %for.body22
  call void @runtime.lookupPanic(ptr undef), !dbg !3068
  unreachable, !dbg !3068
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"internal/reflectlite.isPrint"(i32 %r, ptr %context) unnamed_addr #1 !dbg !3075 {
entry:
    #dbg_value(i32 %r, !3077, !DIExpression(), !3078)
    #dbg_value(i32 %r, !3077, !DIExpression(), !3079)
  %0 = icmp sle i32 %r, 255, !dbg !3080
  br i1 %0, label %if.then, label %if.done5, !dbg !3081

if.then:                                          ; preds = %entry
    #dbg_value(i32 %r, !3077, !DIExpression(), !3082)
  %1 = icmp sle i32 32, %r, !dbg !3083
  br i1 %1, label %cond.true, label %if.done, !dbg !3081

cond.true:                                        ; preds = %if.then
    #dbg_value(i32 %r, !3077, !DIExpression(), !3084)
  %2 = icmp sle i32 %r, 126, !dbg !3085
  br i1 %2, label %if.then1, label %if.done, !dbg !3081

if.then1:                                         ; preds = %cond.true
  ret i1 true, !dbg !3086

if.done:                                          ; preds = %cond.true, %if.then
    #dbg_value(i32 %r, !3077, !DIExpression(), !3087)
  %3 = icmp sle i32 161, %r, !dbg !3088
  br i1 %3, label %cond.true2, label %if.done4, !dbg !3081

cond.true2:                                       ; preds = %if.done
    #dbg_value(i32 %r, !3077, !DIExpression(), !3089)
  %4 = icmp sle i32 %r, 255, !dbg !3090
  br i1 %4, label %if.then3, label %if.done4, !dbg !3081

if.then3:                                         ; preds = %cond.true2
    #dbg_value(i32 %r, !3077, !DIExpression(), !3091)
  %5 = icmp ne i32 %r, 173, !dbg !3092
  ret i1 %5, !dbg !3093

if.done4:                                         ; preds = %cond.true2, %if.done
  ret i1 false, !dbg !3094

if.done5:                                         ; preds = %entry
  ret i1 false, !dbg !3095
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
define internal %runtime._string @"(internal/reflectlite.Kind).String$invoke"(ptr %0, ptr %1) unnamed_addr #1 !dbg !3096 {
entry:
  %unpack.int = ptrtoint ptr %0 to i8, !dbg !3097
  %ret = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %unpack.int, ptr %1), !dbg !3097
  ret %runtime._string %ret, !dbg !3097
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.ValueError).Error"(ptr dereferenceable_or_null(24) %e, ptr %context) unnamed_addr #1 !dbg !3098 {
entry:
    #dbg_value(ptr %e, !3107, !DIExpression(), !3108)
    #dbg_value(ptr %e, !3107, !DIExpression(), !3109)
  %0 = icmp eq ptr %e, null, !dbg !3110
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3110

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 1, !dbg !3110
  %2 = icmp eq ptr %1, null, !dbg !3110
  br i1 %2, label %deref.throw, label %deref.next, !dbg !3110

deref.next:                                       ; preds = %gep.next
  %3 = load i8, ptr %1, align 1, !dbg !3110
  %4 = icmp eq i8 %3, 0, !dbg !3111
  br i1 %4, label %if.then, label %if.done, !dbg !3112

if.then:                                          ; preds = %deref.next
    #dbg_value(ptr %e, !3107, !DIExpression(), !3113)
  %5 = icmp eq ptr %e, null, !dbg !3114
  br i1 %5, label %gep.throw1, label %gep.next2, !dbg !3114

gep.next2:                                        ; preds = %if.then
  %6 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 0, !dbg !3114
  %7 = icmp eq ptr %6, null, !dbg !3114
  br i1 %7, label %deref.throw3, label %deref.next4, !dbg !3114

deref.next4:                                      ; preds = %gep.next2
  %8 = load %runtime._string, ptr %6, align 8, !dbg !3114
  %9 = extractvalue %runtime._string %8, 0, !dbg !3115
  %10 = extractvalue %runtime._string %8, 1, !dbg !3115
  %11 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.229", i64 17, ptr %9, i64 %10, ptr undef), !dbg !3115
  %12 = extractvalue %runtime._string %11, 0, !dbg !3116
  %13 = extractvalue %runtime._string %11, 1, !dbg !3116
  %14 = call %runtime._string @runtime.stringConcat(ptr %12, i64 %13, ptr @"internal/reflectlite$string.230", i64 14, ptr undef), !dbg !3116
  ret %runtime._string %14, !dbg !3117

if.done:                                          ; preds = %deref.next
    #dbg_value(ptr %e, !3107, !DIExpression(), !3118)
  %15 = icmp eq ptr %e, null, !dbg !3119
  br i1 %15, label %gep.throw5, label %gep.next6, !dbg !3119

gep.next6:                                        ; preds = %if.done
  %16 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 0, !dbg !3119
  %17 = icmp eq ptr %16, null, !dbg !3119
  br i1 %17, label %deref.throw7, label %deref.next8, !dbg !3119

deref.next8:                                      ; preds = %gep.next6
  %18 = load %runtime._string, ptr %16, align 8, !dbg !3119
  %19 = extractvalue %runtime._string %18, 0, !dbg !3120
  %20 = extractvalue %runtime._string %18, 1, !dbg !3120
  %21 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.231", i64 17, ptr %19, i64 %20, ptr undef), !dbg !3120
  %22 = extractvalue %runtime._string %21, 0, !dbg !3121
  %23 = extractvalue %runtime._string %21, 1, !dbg !3121
  %24 = call %runtime._string @runtime.stringConcat(ptr %22, i64 %23, ptr @"internal/reflectlite$string.232", i64 4, ptr undef), !dbg !3121
    #dbg_value(ptr %e, !3107, !DIExpression(), !3122)
  %25 = icmp eq ptr %e, null, !dbg !3123
  br i1 %25, label %gep.throw9, label %gep.next10, !dbg !3123

gep.next10:                                       ; preds = %deref.next8
  %26 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 1, !dbg !3123
  %27 = icmp eq ptr %26, null, !dbg !3123
  br i1 %27, label %deref.throw11, label %deref.next12, !dbg !3123

deref.next12:                                     ; preds = %gep.next10
  %28 = load i8, ptr %26, align 1, !dbg !3123
  %29 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %28, ptr undef), !dbg !3124
  %30 = extractvalue %runtime._string %24, 0, !dbg !3125
  %31 = extractvalue %runtime._string %24, 1, !dbg !3125
  %32 = extractvalue %runtime._string %29, 0, !dbg !3125
  %33 = extractvalue %runtime._string %29, 1, !dbg !3125
  %34 = call %runtime._string @runtime.stringConcat(ptr %30, i64 %31, ptr %32, i64 %33, ptr undef), !dbg !3125
  %35 = extractvalue %runtime._string %34, 0, !dbg !3126
  %36 = extractvalue %runtime._string %34, 1, !dbg !3126
  %37 = call %runtime._string @runtime.stringConcat(ptr %35, i64 %36, ptr @"internal/reflectlite$string.233", i64 6, ptr undef), !dbg !3126
  ret %runtime._string %37, !dbg !3127

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3110
  unreachable, !dbg !3110

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3110
  unreachable, !dbg !3110

gep.throw1:                                       ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3114
  unreachable, !dbg !3114

deref.throw3:                                     ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3114
  unreachable, !dbg !3114

gep.throw5:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3119
  unreachable, !dbg !3119

deref.throw7:                                     ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3119
  unreachable, !dbg !3119

gep.throw9:                                       ; preds = %deref.next8
  call void @runtime.nilPanic(ptr undef), !dbg !3123
  unreachable, !dbg !3123

deref.throw11:                                    ; preds = %gep.next10
  call void @runtime.nilPanic(ptr undef), !dbg !3123
  unreachable, !dbg !3123
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr %context) unnamed_addr #1 !dbg !3128 {
entry:
  ret %runtime._string { ptr @"internal/reflectlite$string.17", i64 14 }, !dbg !3133
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.badSyntax).Error"(ptr %arg0, ptr %context) unnamed_addr #1 {
entry:
  %0 = call %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr undef)
  ret %runtime._string %0
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.badSyntax).Error$invoke"(ptr %0, ptr %1) unnamed_addr #1 !dbg !3134 {
entry:
  %ret = call %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr %1), !dbg !3135
  ret %runtime._string %ret, !dbg !3135
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"runtime/interrupt.In"(ptr %context) #1 !dbg !3136 {
entry:
  ret i1 false, !dbg !3139
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Mutex).Lock"(ptr dereferenceable_or_null(4) %m, ptr %context) #1 !dbg !3140 {
entry:
    #dbg_value(ptr %m, !3145, !DIExpression(), !3146)
    #dbg_value(ptr %m, !3145, !DIExpression(), !3147)
  %0 = icmp eq ptr %m, null, !dbg !3148
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3148

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3148
  %2 = icmp eq ptr %1, null, !dbg !3147
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3147

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3147
  %4 = call i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr %3, i32 0, i32 1, ptr undef), !dbg !3149
  br i1 %4, label %if.then, label %for.loop, !dbg !3150

if.then:                                          ; preds = %gep.next2
  ret void, !dbg !3151

for.loop:                                         ; preds = %gep.next8, %gep.next2
    #dbg_value(ptr %m, !3145, !DIExpression(), !3152)
  %5 = icmp eq ptr %m, null, !dbg !3153
  br i1 %5, label %gep.throw3, label %gep.next4, !dbg !3153

gep.next4:                                        ; preds = %for.loop
  %6 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3153
  %7 = icmp eq ptr %6, null, !dbg !3152
  br i1 %7, label %gep.throw5, label %gep.next6, !dbg !3152

gep.next6:                                        ; preds = %gep.next4
  %8 = getelementptr inbounds %"internal/futex.Futex", ptr %6, i32 0, i32 0, !dbg !3152
  %9 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr %8, i32 2, ptr undef), !dbg !3154
  %10 = icmp ne i32 %9, 0, !dbg !3155
  br i1 %10, label %for.body, label %for.done, !dbg !3150

for.body:                                         ; preds = %gep.next6
    #dbg_value(ptr %m, !3145, !DIExpression(), !3156)
  %11 = icmp eq ptr %m, null, !dbg !3157
  br i1 %11, label %gep.throw7, label %gep.next8, !dbg !3157

gep.next8:                                        ; preds = %for.body
  %12 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3157
  %13 = call i1 @"(*internal/futex.Futex).Wait"(ptr %12, i32 2, ptr undef), !dbg !3158
  br label %for.loop, !dbg !3150

for.done:                                         ; preds = %gep.next6
  ret void, !dbg !3159

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3148
  unreachable, !dbg !3148

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3147
  unreachable, !dbg !3147

gep.throw3:                                       ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !3153
  unreachable, !dbg !3153

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3152
  unreachable, !dbg !3152

gep.throw7:                                       ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3157
  unreachable, !dbg !3157
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Mutex).Unlock"(ptr dereferenceable_or_null(4) %m, ptr %context) #1 !dbg !3160 {
entry:
    #dbg_value(ptr %m, !3162, !DIExpression(), !3164)
    #dbg_value(ptr %m, !3162, !DIExpression(), !3165)
  %0 = icmp eq ptr %m, null, !dbg !3166
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3166

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3166
  %2 = icmp eq ptr %1, null, !dbg !3165
  br i1 %2, label %gep.throw2, label %gep.next3, !dbg !3165

gep.next3:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3165
  %4 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr %3, i32 0, ptr undef), !dbg !3167
    #dbg_value(i32 %4, !3163, !DIExpression(), !3168)
    #dbg_value(i32 %4, !3163, !DIExpression(), !3169)
  %5 = icmp eq i32 %4, 0, !dbg !3170
  br i1 %5, label %if.then, label %if.else, !dbg !3171

if.then:                                          ; preds = %gep.next3
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"internal/task$pack", ptr undef), !dbg !3172
  unreachable, !dbg !3172

if.else:                                          ; preds = %gep.next3
    #dbg_value(i32 %4, !3163, !DIExpression(), !3173)
  %6 = icmp eq i32 %4, 2, !dbg !3174
  br i1 %6, label %if.then1, label %if.done, !dbg !3171

if.then1:                                         ; preds = %if.else
    #dbg_value(ptr %m, !3162, !DIExpression(), !3175)
  %7 = icmp eq ptr %m, null, !dbg !3176
  br i1 %7, label %gep.throw4, label %gep.next5, !dbg !3176

gep.next5:                                        ; preds = %if.then1
  %8 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3176
  call void @"(*internal/futex.Futex).Wake"(ptr %8, ptr undef), !dbg !3177
  br label %if.done, !dbg !3171

if.done:                                          ; preds = %gep.next5, %if.else
  ret void, !dbg !3178

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3166
  unreachable, !dbg !3166

gep.throw2:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3165
  unreachable, !dbg !3165

gep.throw4:                                       ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3176
  unreachable, !dbg !3176
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Semaphore).Wait"(ptr dereferenceable_or_null(4) %s, ptr %context) unnamed_addr #1 !dbg !3179 {
entry:
    #dbg_value(ptr %s, !3185, !DIExpression(), !3188)
    #dbg_value(i32 -1, !3186, !DIExpression(), !3189)
    #dbg_value(ptr %s, !3185, !DIExpression(), !3190)
  %0 = icmp eq ptr %s, null, !dbg !3191
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3191

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3191
  %2 = icmp eq ptr %1, null, !dbg !3190
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3190

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3190
    #dbg_value(i32 -1, !3186, !DIExpression(), !3192)
  %4 = call i32 @"(*sync/atomic.Uint32).Add"(ptr %3, i32 -1, ptr undef), !dbg !3193
    #dbg_value(i32 %4, !3187, !DIExpression(), !3194)
  br label %for.body, !dbg !3195

for.body:                                         ; preds = %gep.next8, %gep.next2
  %5 = phi i32 [ %4, %gep.next2 ], [ %14, %gep.next8 ], !dbg !3194
    #dbg_value(i32 %5, !3187, !DIExpression(), !3196)
  %6 = icmp sge i32 %5, 0, !dbg !3197
  br i1 %6, label %if.then, label %if.done, !dbg !3195

if.then:                                          ; preds = %for.body
  ret void, !dbg !3198

if.done:                                          ; preds = %for.body
    #dbg_value(ptr %s, !3185, !DIExpression(), !3199)
  %7 = icmp eq ptr %s, null, !dbg !3200
  br i1 %7, label %gep.throw3, label %gep.next4, !dbg !3200

gep.next4:                                        ; preds = %if.done
  %8 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3200
    #dbg_value(i32 %5, !3187, !DIExpression(), !3201)
  %9 = call i1 @"(*internal/futex.Futex).Wait"(ptr %8, i32 %5, ptr undef), !dbg !3202
    #dbg_value(ptr %s, !3185, !DIExpression(), !3203)
  %10 = icmp eq ptr %s, null, !dbg !3204
  br i1 %10, label %gep.throw5, label %gep.next6, !dbg !3204

gep.next6:                                        ; preds = %gep.next4
  %11 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3204
  %12 = icmp eq ptr %11, null, !dbg !3203
  br i1 %12, label %gep.throw7, label %gep.next8, !dbg !3203

gep.next8:                                        ; preds = %gep.next6
  %13 = getelementptr inbounds %"internal/futex.Futex", ptr %11, i32 0, i32 0, !dbg !3203
  %14 = call i32 @"(*sync/atomic.Uint32).Load"(ptr %13, ptr undef), !dbg !3205
    #dbg_value(i32 %14, !3187, !DIExpression(), !3206)
  br label %for.body, !dbg !3195

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3191
  unreachable, !dbg !3191

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3190
  unreachable, !dbg !3190

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3200
  unreachable, !dbg !3200

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3204
  unreachable, !dbg !3204

gep.throw7:                                       ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3203
  unreachable, !dbg !3203
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.Init"(i64 %sp, ptr %context) #1 !dbg !3207 {
entry:
    #dbg_value(i64 %sp, !3211, !DIExpression(), !3213)
    #dbg_value(i64 %sp, !3211, !DIExpression(), !3214)
  %0 = icmp eq ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 2), null, !dbg !3215
  br i1 %0, label %store.throw, label %store.next, !dbg !3215

store.next:                                       ; preds = %entry
  store i64 %sp, ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 2), align 8, !dbg !3215
    #dbg_value(i64 %sp, !3212, !DIExpression(), !3215)
  call void @tinygo_task_init(ptr @"internal/task.mainTask", ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 1), ptr @"internal/task.numCPU", ptr undef), !dbg !3216
  ret void, !dbg !3217

store.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3215
  unreachable, !dbg !3215
}

declare void @tinygo_task_init(ptr dereferenceable_or_null(88), ptr dereferenceable_or_null(8), ptr dereferenceable_or_null(4), ptr) #2

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"internal/task.Current"(ptr %context) #1 !dbg !3218 {
entry:
  %0 = call ptr @tinygo_task_current(), !dbg !3221
    #dbg_value(ptr %0, !3220, !DIExpression(), !3222)
    #dbg_value(ptr %0, !3220, !DIExpression(), !3223)
  %1 = icmp eq ptr %0, null, !dbg !3224
  br i1 %1, label %if.then, label %if.done, !dbg !3225

if.then:                                          ; preds = %entry
  call void @runtime.runtimePanic(ptr @"internal/task$string.7", i64 20, ptr undef), !dbg !3226
  br label %if.done, !dbg !3225

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(ptr %0, !3220, !DIExpression(), !3227)
  ret ptr %0, !dbg !3228
}

declare ptr @tinygo_task_current() #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.Pause"(ptr %context) #1 !dbg !3229 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3232
    #dbg_value(ptr %0, !3231, !DIExpression(), !3233)
  br i1 false, label %if.then, label %if.done, !dbg !3234

if.then:                                          ; preds = %entry
    #dbg_value(ptr %0, !3231, !DIExpression(), !3235)
  %1 = icmp eq ptr %0, null, !dbg !3236
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3236

gep.next:                                         ; preds = %if.then
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3236
  %3 = icmp eq ptr %2, null, !dbg !3237
  br i1 %3, label %gep.throw1, label %gep.next2, !dbg !3237

gep.next2:                                        ; preds = %gep.next
  %4 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 0, !dbg !3237
  %5 = icmp eq ptr %4, null, !dbg !3237
  br i1 %5, label %deref.throw, label %deref.next, !dbg !3237

deref.next:                                       ; preds = %gep.next2
  %6 = load i64, ptr %4, align 8, !dbg !3237
  call void @runtime.printlock(ptr undef), !dbg !3238
  call void @runtime.printstring(ptr @"internal/task$string.8", i64 12, ptr undef), !dbg !3238
  call void @runtime.printspace(ptr undef), !dbg !3238
  call void @runtime.printptr(i64 %6, ptr undef), !dbg !3238
  call void @runtime.printnl(ptr undef), !dbg !3238
  call void @runtime.printunlock(ptr undef), !dbg !3238
  br label %if.done, !dbg !3234

if.done:                                          ; preds = %deref.next, %entry
    #dbg_value(ptr %0, !3231, !DIExpression(), !3239)
  %7 = icmp eq ptr %0, null, !dbg !3240
  br i1 %7, label %gep.throw3, label %gep.next4, !dbg !3240

gep.next4:                                        ; preds = %if.done
  %8 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3240
  %9 = icmp eq ptr %8, null, !dbg !3241
  br i1 %9, label %gep.throw5, label %gep.next6, !dbg !3241

gep.next6:                                        ; preds = %gep.next4
  %10 = getelementptr inbounds %"internal/task.state", ptr %8, i32 0, i32 5, !dbg !3241
  call void @"(*internal/task.Semaphore).Wait"(ptr %10, ptr undef), !dbg !3242
  ret void, !dbg !3243

gep.throw:                                        ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3236
  unreachable, !dbg !3236

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3237
  unreachable, !dbg !3237

deref.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3237
  unreachable, !dbg !3237

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3240
  unreachable, !dbg !3240

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3241
  unreachable, !dbg !3241
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_exited(ptr nocapture dereferenceable_or_null(88) %t) #1 !dbg !3244 {
entry:
    #dbg_value(ptr %t, !3248, !DIExpression(), !3253)
  br i1 false, label %if.then, label %if.done, !dbg !3254

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !3248, !DIExpression(), !3255)
  %0 = icmp eq ptr %t, null, !dbg !3256
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3256

gep.next:                                         ; preds = %if.then
  %1 = getelementptr inbounds %"internal/task.Task", ptr %t, i32 0, i32 4, !dbg !3256
  %2 = icmp eq ptr %1, null, !dbg !3257
  br i1 %2, label %gep.throw5, label %gep.next6, !dbg !3257

gep.next6:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/task.state", ptr %1, i32 0, i32 0, !dbg !3257
  %4 = icmp eq ptr %3, null, !dbg !3257
  br i1 %4, label %deref.throw, label %deref.next, !dbg !3257

deref.next:                                       ; preds = %gep.next6
  %5 = load i64, ptr %3, align 8, !dbg !3257
  call void @runtime.printlock(ptr undef), !dbg !3258
  call void @runtime.printstring(ptr @"internal/task$string.12", i64 9, ptr undef), !dbg !3258
  call void @runtime.printspace(ptr undef), !dbg !3258
  call void @runtime.printptr(i64 %5, ptr undef), !dbg !3258
  call void @runtime.printnl(ptr undef), !dbg !3258
  call void @runtime.printunlock(ptr undef), !dbg !3258
  br label %if.done, !dbg !3254

if.done:                                          ; preds = %deref.next, %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3259
    #dbg_value(i1 false, !3249, !DIExpression(), !3260)
    #dbg_value(ptr @"internal/task.activeTasks", !3250, !DIExpression(), !3261)
  br label %for.loop, !dbg !3254

for.loop:                                         ; preds = %gep.next22, %if.done
  %6 = phi ptr [ @"internal/task.activeTasks", %if.done ], [ %25, %gep.next22 ], !dbg !3261
    #dbg_value(ptr %6, !3250, !DIExpression(), !3262)
  %7 = icmp eq ptr %6, null, !dbg !3263
  br i1 %7, label %deref.throw7, label %deref.next8, !dbg !3263

deref.next8:                                      ; preds = %for.loop
  %8 = load ptr, ptr %6, align 8, !dbg !3263
  %9 = icmp ne ptr %8, null, !dbg !3264
  br i1 %9, label %for.body, label %for.done, !dbg !3254

for.body:                                         ; preds = %deref.next8
    #dbg_value(ptr %6, !3250, !DIExpression(), !3265)
  %10 = icmp eq ptr %6, null, !dbg !3266
  br i1 %10, label %deref.throw9, label %deref.next10, !dbg !3266

deref.next10:                                     ; preds = %for.body
  %11 = load ptr, ptr %6, align 8, !dbg !3266
    #dbg_value(ptr %t, !3248, !DIExpression(), !3267)
  %12 = icmp eq ptr %11, %t, !dbg !3268
  br i1 %12, label %if.then1, label %if.done2, !dbg !3254

if.then1:                                         ; preds = %deref.next10
    #dbg_value(ptr %6, !3250, !DIExpression(), !3269)
    #dbg_value(ptr %t, !3248, !DIExpression(), !3270)
  %13 = icmp eq ptr %t, null, !dbg !3271
  br i1 %13, label %gep.throw11, label %gep.next12, !dbg !3271

gep.next12:                                       ; preds = %if.then1
  %14 = getelementptr inbounds %"internal/task.Task", ptr %t, i32 0, i32 4, !dbg !3271
  %15 = icmp eq ptr %14, null, !dbg !3272
  br i1 %15, label %gep.throw13, label %gep.next14, !dbg !3272

gep.next14:                                       ; preds = %gep.next12
  %16 = getelementptr inbounds %"internal/task.state", ptr %14, i32 0, i32 4, !dbg !3272
  %17 = icmp eq ptr %16, null, !dbg !3272
  br i1 %17, label %deref.throw15, label %deref.next16, !dbg !3272

deref.next16:                                     ; preds = %gep.next14
  %18 = load ptr, ptr %16, align 8, !dbg !3272
  %19 = icmp eq ptr %6, null, !dbg !3273
  br i1 %19, label %store.throw, label %store.next, !dbg !3273

store.next:                                       ; preds = %deref.next16
  store ptr %18, ptr %6, align 8, !dbg !3273
    #dbg_value(i1 true, !3249, !DIExpression(), !3274)
  br label %for.done, !dbg !3254

if.done2:                                         ; preds = %deref.next10
    #dbg_value(ptr %6, !3250, !DIExpression(), !3275)
  %20 = icmp eq ptr %6, null, !dbg !3276
  br i1 %20, label %deref.throw17, label %deref.next18, !dbg !3276

deref.next18:                                     ; preds = %if.done2
  %21 = load ptr, ptr %6, align 8, !dbg !3276
  %22 = icmp eq ptr %21, null, !dbg !3277
  br i1 %22, label %gep.throw19, label %gep.next20, !dbg !3277

gep.next20:                                       ; preds = %deref.next18
  %23 = getelementptr inbounds %"internal/task.Task", ptr %21, i32 0, i32 4, !dbg !3277
  %24 = icmp eq ptr %23, null, !dbg !3278
  br i1 %24, label %gep.throw21, label %gep.next22, !dbg !3278

gep.next22:                                       ; preds = %gep.next20
  %25 = getelementptr inbounds %"internal/task.state", ptr %23, i32 0, i32 4, !dbg !3278
    #dbg_value(ptr %25, !3250, !DIExpression(), !3279)
  br label %for.loop, !dbg !3254

for.done:                                         ; preds = %store.next, %deref.next8
  %26 = phi i1 [ false, %deref.next8 ], [ true, %store.next ], !dbg !3260
  %27 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3280
  %28 = sub i32 %27, 1, !dbg !3280
  store i32 %28, ptr @"internal/task.otherGoroutines", align 4, !dbg !3280
    #dbg_value(i32 %28, !3252, !DIExpression(), !3280)
  call void @"(*internal/task.Mutex).Unlock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3281
    #dbg_value(i1 %26, !3249, !DIExpression(), !3282)
  br i1 %26, label %if.done3, label %if.then4, !dbg !3254

if.done3:                                         ; preds = %if.then4, %for.done
  ret void, !dbg !3283

if.then4:                                         ; preds = %for.done
  call void @runtime.runtimePanic(ptr @"internal/task$string.13", i64 17, ptr undef), !dbg !3284
  br label %if.done3, !dbg !3254

gep.throw:                                        ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3256
  unreachable, !dbg !3256

gep.throw5:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3257
  unreachable, !dbg !3257

deref.throw:                                      ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3257
  unreachable, !dbg !3257

deref.throw7:                                     ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !3263
  unreachable, !dbg !3263

deref.throw9:                                     ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3266
  unreachable, !dbg !3266

gep.throw11:                                      ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3271
  unreachable, !dbg !3271

gep.throw13:                                      ; preds = %gep.next12
  call void @runtime.nilPanic(ptr undef), !dbg !3272
  unreachable, !dbg !3272

deref.throw15:                                    ; preds = %gep.next14
  call void @runtime.nilPanic(ptr undef), !dbg !3272
  unreachable, !dbg !3272

store.throw:                                      ; preds = %deref.next16
  call void @runtime.nilPanic(ptr undef), !dbg !3273
  unreachable, !dbg !3273

deref.throw17:                                    ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !3276
  unreachable, !dbg !3276

gep.throw19:                                      ; preds = %deref.next18
  call void @runtime.nilPanic(ptr undef), !dbg !3277
  unreachable, !dbg !3277

gep.throw21:                                      ; preds = %gep.next20
  call void @runtime.nilPanic(ptr undef), !dbg !3278
  unreachable, !dbg !3278
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.waitGroup).done"(ptr dereferenceable_or_null(4) %wg, ptr %context) unnamed_addr #1 !dbg !3285 {
entry:
    #dbg_value(ptr %wg, !3290, !DIExpression(), !3291)
    #dbg_value(ptr %wg, !3290, !DIExpression(), !3292)
  %0 = icmp eq ptr %wg, null, !dbg !3293
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3293

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3293
  %2 = icmp eq ptr %1, null, !dbg !3292
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3292

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3292
  %4 = call i32 @"(*sync/atomic.Uint32).Add"(ptr %3, i32 -1, ptr undef), !dbg !3294
  %5 = icmp eq i32 %4, 0, !dbg !3295
  br i1 %5, label %if.then, label %if.done, !dbg !3296

if.then:                                          ; preds = %gep.next2
    #dbg_value(ptr %wg, !3290, !DIExpression(), !3297)
  %6 = icmp eq ptr %wg, null, !dbg !3298
  br i1 %6, label %gep.throw3, label %gep.next4, !dbg !3298

gep.next4:                                        ; preds = %if.then
  %7 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3298
  call void @"(*internal/futex.Futex).WakeAll"(ptr %7, ptr undef), !dbg !3299
  br label %if.done, !dbg !3296

if.done:                                          ; preds = %gep.next4, %gep.next2
  ret void, !dbg !3300

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3293
  unreachable, !dbg !3293

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3292
  unreachable, !dbg !3292

gep.throw3:                                       ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3298
  unreachable, !dbg !3298
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.waitGroup).wait"(ptr dereferenceable_or_null(4) %wg, ptr %context) unnamed_addr #1 !dbg !3301 {
entry:
    #dbg_value(ptr %wg, !3303, !DIExpression(), !3305)
  br label %for.body, !dbg !3306

for.body:                                         ; preds = %gep.next4, %entry
    #dbg_value(ptr %wg, !3303, !DIExpression(), !3307)
  %0 = icmp eq ptr %wg, null, !dbg !3308
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3308

gep.next:                                         ; preds = %for.body
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3308
  %2 = icmp eq ptr %1, null, !dbg !3307
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3307

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3307
  %4 = call i32 @"(*sync/atomic.Uint32).Load"(ptr %3, ptr undef), !dbg !3309
    #dbg_value(i32 %4, !3304, !DIExpression(), !3310)
    #dbg_value(i32 %4, !3304, !DIExpression(), !3311)
  %5 = icmp eq i32 %4, 0, !dbg !3312
  br i1 %5, label %if.then, label %if.done, !dbg !3306

if.then:                                          ; preds = %gep.next2
  ret void, !dbg !3313

if.done:                                          ; preds = %gep.next2
    #dbg_value(ptr %wg, !3303, !DIExpression(), !3314)
  %6 = icmp eq ptr %wg, null, !dbg !3315
  br i1 %6, label %gep.throw3, label %gep.next4, !dbg !3315

gep.next4:                                        ; preds = %if.done
  %7 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3315
    #dbg_value(i32 %4, !3304, !DIExpression(), !3316)
  %8 = call i1 @"(*internal/futex.Futex).Wait"(ptr %7, i32 %4, ptr undef), !dbg !3317
  br label %for.body, !dbg !3306

gep.throw:                                        ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3308
  unreachable, !dbg !3308

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3307
  unreachable, !dbg !3307

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3315
  unreachable, !dbg !3315
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %n, ptr %context) unnamed_addr #1 !dbg !3318 {
entry:
    #dbg_value(i32 %n, !3322, !DIExpression(), !3324)
  %wg = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3325
  %0 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3326
  %1 = icmp eq ptr %0, null, !dbg !3327
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3327

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/futex.Futex", ptr %0, i32 0, i32 0, !dbg !3327
    #dbg_value(i32 %n, !3322, !DIExpression(), !3328)
  call void @"(*sync/atomic.Uint32).Store"(ptr %2, i32 %n, ptr undef), !dbg !3329
  %3 = load %"internal/task.Semaphore", ptr %wg, align 4, !dbg !3330
    #dbg_value(%"internal/task.Semaphore" %3, !3323, !DIExpression(), !3330)
  ret %"internal/task.Semaphore" %3, !dbg !3331

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3327
  unreachable, !dbg !3327
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.GCStopWorldAndScan"(ptr %context) #1 !dbg !3332 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3340
    #dbg_value(ptr %0, !3334, !DIExpression(), !3341)
  %1 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3342
  %2 = icmp eq i32 %1, 0, !dbg !3343
  br i1 %2, label %if.then, label %if.done2, !dbg !3344

if.then:                                          ; preds = %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3345
  call void @"(*internal/task.waitGroup).wait"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3346
  call void @"(*sync/atomic.Uint32).Store"(ptr @"internal/task.gcState", i32 1, ptr undef), !dbg !3347
  %3 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3348
    #dbg_value(i32 %3, !3335, !DIExpression(), !3348)
  %4 = call %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %3, ptr undef), !dbg !3349
  store %"internal/task.Semaphore" %4, ptr @"internal/task.scanWaitGroup", align 4, !dbg !3350
    #dbg_value(%"internal/task.Semaphore" %4, !3336, !DIExpression(), !3350)
  %5 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !3351
    #dbg_value(ptr %5, !3337, !DIExpression(), !3351)
    #dbg_value(ptr %5, !3338, !DIExpression(), !3352)
  br label %for.loop, !dbg !3344

for.loop:                                         ; preds = %deref.next15, %if.then
  %6 = phi ptr [ %5, %if.then ], [ %20, %deref.next15 ], !dbg !3352
    #dbg_value(ptr %6, !3338, !DIExpression(), !3353)
  %7 = icmp ne ptr %6, null, !dbg !3354
  br i1 %7, label %for.body, label %for.done, !dbg !3344

for.body:                                         ; preds = %for.loop
    #dbg_value(ptr %6, !3338, !DIExpression(), !3355)
    #dbg_value(ptr %0, !3334, !DIExpression(), !3356)
  %8 = icmp ne ptr %6, %0, !dbg !3357
  br i1 %8, label %if.then1, label %if.done, !dbg !3344

if.then1:                                         ; preds = %for.body
    #dbg_value(ptr %6, !3338, !DIExpression(), !3358)
  %9 = icmp eq ptr %6, null, !dbg !3359
  br i1 %9, label %gep.throw, label %gep.next, !dbg !3359

gep.next:                                         ; preds = %if.then1
  %10 = getelementptr inbounds %"internal/task.Task", ptr %6, i32 0, i32 4, !dbg !3359
  %11 = icmp eq ptr %10, null, !dbg !3360
  br i1 %11, label %gep.throw8, label %gep.next9, !dbg !3360

gep.next9:                                        ; preds = %gep.next
  %12 = getelementptr inbounds %"internal/task.state", ptr %10, i32 0, i32 1, !dbg !3360
  %13 = icmp eq ptr %12, null, !dbg !3360
  br i1 %13, label %deref.throw, label %deref.next, !dbg !3360

deref.next:                                       ; preds = %gep.next9
  %14 = load ptr, ptr %12, align 8, !dbg !3360
  call void @tinygo_task_send_gc_signal(ptr %14), !dbg !3361
  br label %if.done, !dbg !3344

if.done:                                          ; preds = %deref.next, %for.body
    #dbg_value(ptr %6, !3338, !DIExpression(), !3362)
  %15 = icmp eq ptr %6, null, !dbg !3363
  br i1 %15, label %gep.throw10, label %gep.next11, !dbg !3363

gep.next11:                                       ; preds = %if.done
  %16 = getelementptr inbounds %"internal/task.Task", ptr %6, i32 0, i32 4, !dbg !3363
  %17 = icmp eq ptr %16, null, !dbg !3364
  br i1 %17, label %gep.throw12, label %gep.next13, !dbg !3364

gep.next13:                                       ; preds = %gep.next11
  %18 = getelementptr inbounds %"internal/task.state", ptr %16, i32 0, i32 4, !dbg !3364
  %19 = icmp eq ptr %18, null, !dbg !3364
  br i1 %19, label %deref.throw14, label %deref.next15, !dbg !3364

deref.next15:                                     ; preds = %gep.next13
  %20 = load ptr, ptr %18, align 8, !dbg !3364
    #dbg_value(ptr %20, !3338, !DIExpression(), !3365)
  br label %for.loop, !dbg !3344

for.done:                                         ; preds = %for.loop
  call void @"(*internal/task.waitGroup).wait"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3366
  br label %if.done2, !dbg !3344

if.done2:                                         ; preds = %for.done, %entry
  %21 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !3367
    #dbg_value(ptr %21, !3337, !DIExpression(), !3367)
    #dbg_value(ptr %21, !3339, !DIExpression(), !3368)
  br label %for.loop3, !dbg !3344

for.loop3:                                        ; preds = %deref.next33, %if.done2
  %22 = phi ptr [ %21, %if.done2 ], [ %42, %deref.next33 ], !dbg !3368
    #dbg_value(ptr %22, !3339, !DIExpression(), !3369)
  %23 = icmp ne ptr %22, null, !dbg !3370
  br i1 %23, label %for.body4, label %for.done7, !dbg !3344

for.body4:                                        ; preds = %for.loop3
    #dbg_value(ptr %22, !3339, !DIExpression(), !3371)
    #dbg_value(ptr %0, !3334, !DIExpression(), !3372)
  %24 = icmp ne ptr %22, %0, !dbg !3373
  br i1 %24, label %if.then5, label %if.done6, !dbg !3344

if.then5:                                         ; preds = %for.body4
    #dbg_value(ptr %22, !3339, !DIExpression(), !3374)
  %25 = icmp eq ptr %22, null, !dbg !3375
  br i1 %25, label %gep.throw16, label %gep.next17, !dbg !3375

gep.next17:                                       ; preds = %if.then5
  %26 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3375
  %27 = icmp eq ptr %26, null, !dbg !3376
  br i1 %27, label %gep.throw18, label %gep.next19, !dbg !3376

gep.next19:                                       ; preds = %gep.next17
  %28 = getelementptr inbounds %"internal/task.state", ptr %26, i32 0, i32 3, !dbg !3376
  %29 = icmp eq ptr %28, null, !dbg !3376
  br i1 %29, label %deref.throw20, label %deref.next21, !dbg !3376

deref.next21:                                     ; preds = %gep.next19
  %30 = load i64, ptr %28, align 8, !dbg !3376
    #dbg_value(ptr %22, !3339, !DIExpression(), !3377)
  %31 = icmp eq ptr %22, null, !dbg !3378
  br i1 %31, label %gep.throw22, label %gep.next23, !dbg !3378

gep.next23:                                       ; preds = %deref.next21
  %32 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3378
  %33 = icmp eq ptr %32, null, !dbg !3379
  br i1 %33, label %gep.throw24, label %gep.next25, !dbg !3379

gep.next25:                                       ; preds = %gep.next23
  %34 = getelementptr inbounds %"internal/task.state", ptr %32, i32 0, i32 2, !dbg !3379
  %35 = icmp eq ptr %34, null, !dbg !3379
  br i1 %35, label %deref.throw26, label %deref.next27, !dbg !3379

deref.next27:                                     ; preds = %gep.next25
  %36 = load i64, ptr %34, align 8, !dbg !3379
  call void @runtime.markRoots(i64 %30, i64 %36, ptr undef), !dbg !3380
  br label %if.done6, !dbg !3344

if.done6:                                         ; preds = %deref.next27, %for.body4
    #dbg_value(ptr %22, !3339, !DIExpression(), !3381)
  %37 = icmp eq ptr %22, null, !dbg !3382
  br i1 %37, label %gep.throw28, label %gep.next29, !dbg !3382

gep.next29:                                       ; preds = %if.done6
  %38 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3382
  %39 = icmp eq ptr %38, null, !dbg !3383
  br i1 %39, label %gep.throw30, label %gep.next31, !dbg !3383

gep.next31:                                       ; preds = %gep.next29
  %40 = getelementptr inbounds %"internal/task.state", ptr %38, i32 0, i32 4, !dbg !3383
  %41 = icmp eq ptr %40, null, !dbg !3383
  br i1 %41, label %deref.throw32, label %deref.next33, !dbg !3383

deref.next33:                                     ; preds = %gep.next31
  %42 = load ptr, ptr %40, align 8, !dbg !3383
    #dbg_value(ptr %42, !3339, !DIExpression(), !3384)
  br label %for.loop3, !dbg !3344

for.done7:                                        ; preds = %for.loop3
  call void @tinygo_scanCurrentStack(), !dbg !3385
  call void @"internal/task.gcScanGlobals"(ptr undef), !dbg !3386
  ret void, !dbg !3387

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3359
  unreachable, !dbg !3359

gep.throw8:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3360
  unreachable, !dbg !3360

deref.throw:                                      ; preds = %gep.next9
  call void @runtime.nilPanic(ptr undef), !dbg !3360
  unreachable, !dbg !3360

gep.throw10:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3363
  unreachable, !dbg !3363

gep.throw12:                                      ; preds = %gep.next11
  call void @runtime.nilPanic(ptr undef), !dbg !3364
  unreachable, !dbg !3364

deref.throw14:                                    ; preds = %gep.next13
  call void @runtime.nilPanic(ptr undef), !dbg !3364
  unreachable, !dbg !3364

gep.throw16:                                      ; preds = %if.then5
  call void @runtime.nilPanic(ptr undef), !dbg !3375
  unreachable, !dbg !3375

gep.throw18:                                      ; preds = %gep.next17
  call void @runtime.nilPanic(ptr undef), !dbg !3376
  unreachable, !dbg !3376

deref.throw20:                                    ; preds = %gep.next19
  call void @runtime.nilPanic(ptr undef), !dbg !3376
  unreachable, !dbg !3376

gep.throw22:                                      ; preds = %deref.next21
  call void @runtime.nilPanic(ptr undef), !dbg !3378
  unreachable, !dbg !3378

gep.throw24:                                      ; preds = %gep.next23
  call void @runtime.nilPanic(ptr undef), !dbg !3379
  unreachable, !dbg !3379

deref.throw26:                                    ; preds = %gep.next25
  call void @runtime.nilPanic(ptr undef), !dbg !3379
  unreachable, !dbg !3379

gep.throw28:                                      ; preds = %if.done6
  call void @runtime.nilPanic(ptr undef), !dbg !3382
  unreachable, !dbg !3382

gep.throw30:                                      ; preds = %gep.next29
  call void @runtime.nilPanic(ptr undef), !dbg !3383
  unreachable, !dbg !3383

deref.throw32:                                    ; preds = %gep.next31
  call void @runtime.nilPanic(ptr undef), !dbg !3383
  unreachable, !dbg !3383
}

declare void @tinygo_task_send_gc_signal(ptr nocapture) #2

declare void @tinygo_scanCurrentStack() #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.GCResumeWorld"(ptr %context) #1 !dbg !3388 {
entry:
  %0 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3392
  %1 = icmp eq i32 %0, 0, !dbg !3393
  br i1 %1, label %if.then, label %if.done, !dbg !3394

if.then:                                          ; preds = %entry
  ret void, !dbg !3395

if.done:                                          ; preds = %entry
  %2 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3396
    #dbg_value(i32 %2, !3390, !DIExpression(), !3396)
  %3 = call %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %2, ptr undef), !dbg !3397
  store %"internal/task.Semaphore" %3, ptr @"internal/task.scanWaitGroup", align 4, !dbg !3398
    #dbg_value(%"internal/task.Semaphore" %3, !3391, !DIExpression(), !3398)
  call void @"(*sync/atomic.Uint32).Store"(ptr @"internal/task.gcState", i32 0, ptr undef), !dbg !3399
  call void @"(*internal/futex.Futex).WakeAll"(ptr @"internal/task.gcState", ptr undef), !dbg !3400
  call void @"(*internal/task.Mutex).Unlock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3401
  ret void, !dbg !3402
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_gc_pause(i32 %sig) #1 !dbg !3403 {
entry:
    #dbg_value(i32 %sig, !3407, !DIExpression(), !3409)
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3410
  %1 = icmp eq ptr %0, null, !dbg !3411
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3411

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3411
  %3 = call ptr @runtime.stacksave(ptr undef), !dbg !3412
  %4 = ptrtoint ptr %3 to i64, !dbg !3413
  %5 = icmp eq ptr %2, null, !dbg !3414
  br i1 %5, label %gep.throw1, label %gep.next2, !dbg !3414

gep.next2:                                        ; preds = %gep.next
  %6 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 3, !dbg !3414
  %7 = icmp eq ptr %6, null, !dbg !3414
  br i1 %7, label %store.throw, label %store.next, !dbg !3414

store.next:                                       ; preds = %gep.next2
  store i64 %4, ptr %6, align 8, !dbg !3414
    #dbg_value(i64 %4, !3408, !DIExpression(), !3414)
  call void @"(*internal/task.waitGroup).done"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3415
  br label %for.loop, !dbg !3416

for.loop:                                         ; preds = %for.body, %store.next
  %8 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3417
  %9 = icmp eq i32 %8, 1, !dbg !3418
  br i1 %9, label %for.body, label %for.done, !dbg !3416

for.body:                                         ; preds = %for.loop
  %10 = call i1 @"(*internal/futex.Futex).Wait"(ptr @"internal/task.gcState", i32 1, ptr undef), !dbg !3419
  br label %for.loop, !dbg !3416

for.done:                                         ; preds = %for.loop
  call void @"(*internal/task.waitGroup).done"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3420
  ret void, !dbg !3421

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3411
  unreachable, !dbg !3411

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3414
  unreachable, !dbg !3414

store.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3414
  unreachable, !dbg !3414
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"internal/task.StackTop"(ptr %context) #1 !dbg !3422 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3423
  %1 = icmp eq ptr %0, null, !dbg !3424
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3424

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3424
  %3 = icmp eq ptr %2, null, !dbg !3425
  br i1 %3, label %gep.throw1, label %gep.next2, !dbg !3425

gep.next2:                                        ; preds = %gep.next
  %4 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 2, !dbg !3425
  %5 = icmp eq ptr %4, null, !dbg !3425
  br i1 %5, label %deref.throw, label %deref.next, !dbg !3425

deref.next:                                       ; preds = %gep.next2
  %6 = load i64, ptr %4, align 8, !dbg !3425
  ret i64 %6, !dbg !3426

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3424
  unreachable, !dbg !3424

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3425
  unreachable, !dbg !3425

deref.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3425
  unreachable, !dbg !3425
}

; Function Attrs: noinline nounwind allockind("alloc,zeroed") allocsize(0) uwtable(sync)
define internal noalias nonnull ptr @runtime.alloc(i64 %size, ptr %layout, ptr %context) #4 !dbg !3427 {
entry:
    #dbg_value(i64 %size, !3431, !DIExpression(), !3434)
    #dbg_value(ptr %layout, !3432, !DIExpression(), !3434)
    #dbg_value(i64 %size, !3431, !DIExpression(), !3435)
  %0 = icmp eq i64 %size, 0, !dbg !3436
  br i1 %0, label %if.then, label %if.done, !dbg !3437

if.then:                                          ; preds = %entry
  ret ptr @runtime.zeroSizedAlloc, !dbg !3438

if.done:                                          ; preds = %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @runtime.gcLock, ptr undef), !dbg !3439
    #dbg_value(ptr null, !3433, !DIExpression(), !3440)
    #dbg_value(ptr %layout, !3432, !DIExpression(), !3441)
  %1 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !3442
  %2 = icmp eq ptr %layout, %1, !dbg !3443
  br i1 %2, label %if.then1, label %if.else, !dbg !3437

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %size, !3431, !DIExpression(), !3444)
  %3 = call ptr @GC_malloc_atomic(i64 %size), !dbg !3445
    #dbg_value(ptr %3, !3433, !DIExpression(), !3446)
    #dbg_value(ptr %3, !3433, !DIExpression(), !3447)
    #dbg_value(i64 %size, !3431, !DIExpression(), !3448)
  call void @runtime.memzero(ptr %3, i64 %size, ptr undef), !dbg !3449
  br label %if.done2, !dbg !3437

if.done2:                                         ; preds = %if.else, %if.then1
  %4 = phi ptr [ %3, %if.then1 ], [ %6, %if.else ], !dbg !3440
  call void @runtime.gcResumeWorld(ptr undef), !dbg !3450
  call void @"(*internal/task.Mutex).Unlock"(ptr @runtime.gcLock, ptr undef), !dbg !3451
    #dbg_value(ptr %4, !3433, !DIExpression(), !3452)
  %5 = icmp eq ptr %4, null, !dbg !3453
  br i1 %5, label %if.then3, label %if.done4, !dbg !3437

if.then3:                                         ; preds = %if.done2
  call void @runtime.runtimePanic(ptr @"runtime$string.7", i64 17, ptr undef), !dbg !3454
  br label %if.done4, !dbg !3437

if.done4:                                         ; preds = %if.then3, %if.done2
    #dbg_value(ptr %4, !3433, !DIExpression(), !3455)
  ret ptr %4, !dbg !3456

if.else:                                          ; preds = %if.done
    #dbg_value(i64 %size, !3431, !DIExpression(), !3457)
  %6 = call ptr @GC_malloc(i64 %size), !dbg !3458
    #dbg_value(ptr %6, !3433, !DIExpression(), !3459)
  br label %if.done2, !dbg !3437
}

declare ptr @GC_malloc_atomic(i64) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memzero(ptr %ptr, i64 %size, ptr %context) #1 !dbg !3460 {
entry:
    #dbg_value(ptr %ptr, !3464, !DIExpression(), !3466)
    #dbg_value(i64 %size, !3465, !DIExpression(), !3466)
  call void @llvm.memset.p0.i64(ptr %ptr, i8 0, i64 %size, i1 false), !dbg !3466
  ret void, !dbg !3466
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.gcResumeWorld(ptr %context) unnamed_addr #1 !dbg !3467 {
entry:
  call void @"internal/task.GCResumeWorld"(ptr undef), !dbg !3469
  ret void, !dbg !3470
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.runtimePanic(ptr readonly %msg.data, i64 %msg.len, ptr %context) #1 !dbg !3471 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %msg.data, 0, !dbg !3474
  %1 = insertvalue %runtime._string %0, i64 %msg.len, 1, !dbg !3474
    #dbg_value(ptr %msg.data, !3473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3474)
    #dbg_value(i64 %msg.len, !3473, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3474)
  %2 = call ptr @llvm.returnaddress(i32 0), !dbg !3475
    #dbg_value(%runtime._string %1, !3473, !DIExpression(), !3476)
  %3 = extractvalue %runtime._string %1, 0, !dbg !3477
  %4 = extractvalue %runtime._string %1, 1, !dbg !3477
  call void @runtime.runtimePanicAt(ptr %2, ptr %3, i64 %4, ptr undef), !dbg !3477
  ret void, !dbg !3478
}

declare ptr @GC_malloc(i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.runtimePanicAt(ptr %addr, ptr readonly %msg.data, i64 %msg.len, ptr %context) unnamed_addr #1 !dbg !3479 {
entry:
    #dbg_value(ptr %addr, !3483, !DIExpression(), !3485)
  %0 = insertvalue %runtime._string zeroinitializer, ptr %msg.data, 0, !dbg !3485
  %1 = insertvalue %runtime._string %0, i64 %msg.len, 1, !dbg !3485
    #dbg_value(ptr %msg.data, !3484, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3485)
    #dbg_value(i64 %msg.len, !3484, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3485)
  br i1 false, label %if.then, label %if.done, !dbg !3486

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !3487
  br label %if.done, !dbg !3486

if.done:                                          ; preds = %if.then, %entry
  br i1 true, label %if.then1, label %if.else, !dbg !3486

if.then1:                                         ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.13", i64 24, ptr undef), !dbg !3488
    #dbg_value(ptr %addr, !3483, !DIExpression(), !3489)
  %2 = ptrtoint ptr %addr to i64, !dbg !3490
  %3 = sub i64 %2, 5, !dbg !3491
  call void @runtime.printptr(i64 %3, ptr undef), !dbg !3492
  call void @runtime.printstring(ptr @"runtime$string.14", i64 2, ptr undef), !dbg !3493
  br label %if.done2, !dbg !3486

if.done2:                                         ; preds = %if.else, %if.then1
    #dbg_value(%runtime._string %1, !3484, !DIExpression(), !3494)
  %4 = extractvalue %runtime._string %1, 0, !dbg !3495
  %5 = extractvalue %runtime._string %1, 1, !dbg !3495
  call void @runtime.printstring(ptr %4, i64 %5, ptr undef), !dbg !3495
  call void @runtime.printnl(ptr undef), !dbg !3496
  call void @abort(), !dbg !3497
  ret void, !dbg !3498

if.else:                                          ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.15", i64 22, ptr undef), !dbg !3499
  br label %if.done2, !dbg !3486
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printstring(ptr readonly %s.data, i64 %s.len, ptr %context) #1 !dbg !3500 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !3504
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !3504
    #dbg_value(ptr %s.data, !3502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3504)
    #dbg_value(i64 %s.len, !3502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3504)
    #dbg_value(i64 0, !3503, !DIExpression(), !3505)
  br label %for.loop, !dbg !3506

for.loop:                                         ; preds = %for.body, %entry
  %2 = phi i64 [ 0, %entry ], [ %7, %for.body ], !dbg !3505
    #dbg_value(i64 %2, !3503, !DIExpression(), !3507)
    #dbg_value(%runtime._string %1, !3502, !DIExpression(), !3508)
  %len = extractvalue %runtime._string %1, 1, !dbg !3509
  %3 = icmp slt i64 %2, %len, !dbg !3510
  br i1 %3, label %for.body, label %for.done, !dbg !3506

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !3503, !DIExpression(), !3511)
    #dbg_value(%runtime._string %1, !3502, !DIExpression(), !3512)
  %len1 = extractvalue %runtime._string %1, 1, !dbg !3513
  %4 = extractvalue %runtime._string %1, 0, !dbg !3513
  %5 = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !3513
  %6 = load i8, ptr %5, align 1, !dbg !3513
  call void @runtime.putchar(i8 %6, ptr undef), !dbg !3514
  %7 = add i64 %2, 1, !dbg !3515
    #dbg_value(i64 %7, !3503, !DIExpression(), !3515)
  br label %for.loop, !dbg !3506

for.done:                                         ; preds = %for.loop
  ret void, !dbg !3516
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printptr(i64 %ptr, ptr %context) #1 !dbg !3517 {
entry:
    #dbg_value(i64 %ptr, !3519, !DIExpression(), !3522)
    #dbg_value(i64 %ptr, !3519, !DIExpression(), !3523)
  %0 = icmp eq i64 %ptr, 0, !dbg !3524
  br i1 %0, label %if.then, label %if.done, !dbg !3525

if.then:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.45", i64 3, ptr undef), !dbg !3526
  ret void, !dbg !3527

if.done:                                          ; preds = %entry
  call void @runtime.putchar(i8 48, ptr undef), !dbg !3528
  call void @runtime.putchar(i8 120, ptr undef), !dbg !3529
    #dbg_value(i64 0, !3520, !DIExpression(), !3530)
  br label %for.loop, !dbg !3525

for.loop:                                         ; preds = %if.done2, %if.done
  %1 = phi i64 [ %ptr, %if.done ], [ %shift.result3, %if.done2 ], !dbg !3531
  %2 = phi i64 [ 0, %if.done ], [ %9, %if.done2 ], !dbg !3530
    #dbg_value(i64 %2, !3520, !DIExpression(), !3532)
  %3 = icmp slt i64 %2, 16, !dbg !3533
  br i1 %3, label %for.body, label %for.done, !dbg !3525

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !3519, !DIExpression(), !3534)
  %4 = lshr i64 %1, 60, !dbg !3535
  %shift.result = select i1 false, i64 0, i64 %4, !dbg !3535
  %5 = trunc i64 %shift.result to i8, !dbg !3536
    #dbg_value(i8 %5, !3521, !DIExpression(), !3537)
    #dbg_value(i8 %5, !3521, !DIExpression(), !3538)
  %6 = icmp ult i8 %5, 10, !dbg !3539
  br i1 %6, label %if.then1, label %if.else, !dbg !3525

if.then1:                                         ; preds = %for.body
    #dbg_value(i8 %5, !3521, !DIExpression(), !3540)
  %7 = add i8 %5, 48, !dbg !3541
  call void @runtime.putchar(i8 %7, ptr undef), !dbg !3542
  br label %if.done2, !dbg !3525

if.done2:                                         ; preds = %if.else, %if.then1
  %8 = shl i64 %1, 4, !dbg !3543
  %shift.result3 = select i1 false, i64 0, i64 %8, !dbg !3543
    #dbg_value(i64 %shift.result3, !3519, !DIExpression(), !3543)
  %9 = add i64 %2, 1, !dbg !3544
    #dbg_value(i64 %9, !3520, !DIExpression(), !3544)
  br label %for.loop, !dbg !3525

if.else:                                          ; preds = %for.body
    #dbg_value(i8 %5, !3521, !DIExpression(), !3545)
  %10 = sub i8 %5, 10, !dbg !3546
  %11 = add i8 %10, 97, !dbg !3547
  call void @runtime.putchar(i8 %11, ptr undef), !dbg !3548
  br label %if.done2, !dbg !3525

for.done:                                         ; preds = %for.loop
  ret void, !dbg !3549
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printnl(ptr %context) #1 !dbg !3550 {
entry:
  br i1 false, label %if.then, label %if.done, !dbg !3551

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 13, ptr undef), !dbg !3552
  br label %if.done, !dbg !3551

if.done:                                          ; preds = %if.then, %entry
  call void @runtime.putchar(i8 10, ptr undef), !dbg !3553
  ret void, !dbg !3554
}

; Function Attrs: noreturn
declare void @abort() #7

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.putchar(i8 %c, ptr %context) unnamed_addr #1 !dbg !3555 {
entry:
    #dbg_value(i8 %c, !3559, !DIExpression(), !3560)
  %buf = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3561
  %0 = getelementptr inbounds [1 x i8], ptr %buf, i32 0, i64 0, !dbg !3561
    #dbg_value(i8 %c, !3559, !DIExpression(), !3562)
  store i8 %c, ptr %0, align 1, !dbg !3562
    #dbg_value(i8 %c, !3559, !DIExpression(), !3562)
  %1 = getelementptr inbounds [1 x i8], ptr %buf, i32 0, i64 0, !dbg !3563
  %2 = call i64 @write(i32 1, ptr %1, i64 1), !dbg !3564
  ret void, !dbg !3565
}

declare i64 @write(i32, ptr nocapture, i64) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.initRand(ptr %context) unnamed_addr #1 !dbg !3566 {
entry:
  %0 = call { i64, i1 } @runtime.hardwareRand(ptr undef), !dbg !3571
  %1 = extractvalue { i64, i1 } %0, 0, !dbg !3571
    #dbg_value(i64 %1, !3568, !DIExpression(), !3572)
  %2 = extractvalue { i64, i1 } %0, 1, !dbg !3571
    #dbg_value(i64 %1, !3568, !DIExpression(), !3573)
  %3 = or i64 %1, 1, !dbg !3574
  store i64 %3, ptr @runtime.xorshift64State, align 8, !dbg !3575
    #dbg_value(i64 %3, !3569, !DIExpression(), !3575)
  %4 = load i64, ptr @runtime.xorshift64State, align 8, !dbg !3576
    #dbg_value(i64 %4, !3569, !DIExpression(), !3576)
  %5 = trunc i64 %4 to i32, !dbg !3577
  store i32 %5, ptr @runtime.xorshift32State, align 4, !dbg !3578
    #dbg_value(i32 %5, !3570, !DIExpression(), !3578)
  ret void, !dbg !3579
}

; Function Attrs: nounwind uwtable(sync)
define internal { i64, i1 } @runtime.hardwareRand(ptr %context) unnamed_addr #1 !dbg !3580 {
entry:
  %n = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3585
  %0 = call i32 @getrandom(ptr %n, i64 8, i32 0), !dbg !3586
    #dbg_value(i32 %0, !3583, !DIExpression(), !3587)
    #dbg_value(i32 %0, !3583, !DIExpression(), !3588)
  %1 = icmp ne i32 %0, 8, !dbg !3589
  br i1 %1, label %if.then, label %if.done, !dbg !3590

if.then:                                          ; preds = %entry
  store i64 0, ptr %n, align 8, !dbg !3591
  %2 = load i64, ptr %n, align 8, !dbg !3590
  %3 = insertvalue { i64, i1 } zeroinitializer, i64 %2, 0, !dbg !3591
  %4 = insertvalue { i64, i1 } %3, i1 false, 1, !dbg !3591
  ret { i64, i1 } %4, !dbg !3591

if.done:                                          ; preds = %entry
  %5 = load i64, ptr %n, align 8, !dbg !3592
    #dbg_value(i64 %5, !3584, !DIExpression(), !3592)
  store i64 %5, ptr %n, align 8, !dbg !3593
  %6 = load i64, ptr %n, align 8, !dbg !3590
  %7 = insertvalue { i64, i1 } zeroinitializer, i64 %6, 0, !dbg !3593
  %8 = insertvalue { i64, i1 } %7, i1 true, 1, !dbg !3593
  ret { i64, i1 } %8, !dbg !3593
}

declare i32 @getrandom(ptr nocapture, i64, i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal i64 @runtime.getCurrentStackPointer(ptr %context) unnamed_addr #1 !dbg !3594 {
entry:
  %0 = call ptr @runtime.stacksave(ptr undef), !dbg !3596
  %1 = ptrtoint ptr %0 to i64, !dbg !3597
  ret i64 %1, !dbg !3598
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @runtime.stacksave(ptr %context) #1 !dbg !3599 {
entry:
  %0 = call ptr @llvm.stacksave.p0(), !dbg !3600
  ret ptr %0, !dbg !3600
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #9

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memcpy(ptr %dst, ptr %src, i64 %size, ptr %context) #1 !dbg !3601 {
entry:
    #dbg_value(ptr %dst, !3605, !DIExpression(), !3608)
    #dbg_value(ptr %src, !3606, !DIExpression(), !3608)
    #dbg_value(i64 %size, !3607, !DIExpression(), !3608)
  call void @llvm.memcpy.p0.p0.i64(ptr %dst, ptr %src, i64 %size, i1 false), !dbg !3608
  ret void, !dbg !3608
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.nilPanic(ptr %context) #1 !dbg !3609 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !3610
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.17", i64 23, ptr undef), !dbg !3611
  ret void, !dbg !3612
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.deadlock(ptr %context) unnamed_addr #1 !dbg !3613 {
entry:
  call void @"internal/task.Pause"(ptr undef), !dbg !3614
  ret void, !dbg !3615
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.lookupPanic(ptr %context) #1 !dbg !3616 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !3617
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.19", i64 18, ptr undef), !dbg !3618
  ret void, !dbg !3619
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.panicOrGoexit(ptr %message.typecode, ptr %message.value, i8 %panicking, ptr %context) unnamed_addr #1 !dbg !3620 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %message.typecode, 0, !dbg !3640
  %1 = insertvalue { ptr, ptr } %0, ptr %message.value, 1, !dbg !3640
    #dbg_value(ptr %message.typecode, !3625, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3640)
    #dbg_value(ptr %message.value, !3625, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3640)
    #dbg_value(i8 %panicking, !3626, !DIExpression(), !3640)
  br i1 false, label %if.then, label %if.done, !dbg !3641

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !3642
  br label %if.done, !dbg !3641

if.done:                                          ; preds = %if.then, %entry
  br i1 true, label %cond.true, label %if.done3, !dbg !3641

cond.true:                                        ; preds = %if.done
  %2 = call i1 @"runtime/interrupt.In"(ptr undef), !dbg !3643
  br i1 %2, label %if.done3, label %if.then1, !dbg !3641

if.then1:                                         ; preds = %cond.true
  %3 = call ptr @"internal/task.Current"(ptr undef), !dbg !3644
  %4 = icmp eq ptr %3, null, !dbg !3645
  br i1 %4, label %gep.throw, label %gep.next, !dbg !3645

gep.next:                                         ; preds = %if.then1
  %5 = getelementptr inbounds %"internal/task.Task", ptr %3, i32 0, i32 8, !dbg !3645
  %6 = icmp eq ptr %5, null, !dbg !3645
  br i1 %6, label %deref.throw, label %deref.next, !dbg !3645

deref.next:                                       ; preds = %gep.next
  %7 = load ptr, ptr %5, align 8, !dbg !3645
    #dbg_value(ptr %7, !3627, !DIExpression(), !3646)
    #dbg_value(ptr %7, !3627, !DIExpression(), !3647)
  %8 = icmp ne ptr %7, null, !dbg !3648
  br i1 %8, label %if.then2, label %if.done3, !dbg !3641

if.then2:                                         ; preds = %deref.next
    #dbg_value(ptr %7, !3627, !DIExpression(), !3649)
    #dbg_value({ ptr, ptr } %1, !3625, !DIExpression(), !3650)
  %9 = getelementptr inbounds %runtime.deferFrame, ptr %7, i32 0, i32 5, !dbg !3651
  %10 = icmp eq ptr %9, null, !dbg !3651
  br i1 %10, label %store.throw, label %store.next, !dbg !3651

store.next:                                       ; preds = %if.then2
  store { ptr, ptr } %1, ptr %9, align 8, !dbg !3651
    #dbg_value({ ptr, ptr } %1, !3638, !DIExpression(), !3651)
    #dbg_value(ptr %7, !3627, !DIExpression(), !3652)
    #dbg_value(i8 %panicking, !3626, !DIExpression(), !3653)
  %11 = getelementptr inbounds %runtime.deferFrame, ptr %7, i32 0, i32 4, !dbg !3654
  %12 = icmp eq ptr %11, null, !dbg !3654
  br i1 %12, label %store.throw6, label %store.next7, !dbg !3654

store.next7:                                      ; preds = %store.next
  store i8 %panicking, ptr %11, align 1, !dbg !3654
    #dbg_value(i8 %panicking, !3639, !DIExpression(), !3654)
    #dbg_value(ptr %7, !3627, !DIExpression(), !3655)
  call void @tinygo_longjmp(ptr %7), !dbg !3656
  br label %if.done3, !dbg !3641

if.done3:                                         ; preds = %store.next7, %deref.next, %cond.true, %if.done
    #dbg_value(i8 %panicking, !3626, !DIExpression(), !3657)
  %13 = icmp eq i8 %panicking, 2, !dbg !3658
  br i1 %13, label %if.then4, label %if.done5, !dbg !3641

if.then4:                                         ; preds = %if.done3
  call void @runtime.deadlock(ptr undef), !dbg !3659
  br label %if.done5, !dbg !3641

if.done5:                                         ; preds = %if.then4, %if.done3
  call void @runtime.printstring(ptr @"runtime$string.12", i64 7, ptr undef), !dbg !3660
    #dbg_value({ ptr, ptr } %1, !3625, !DIExpression(), !3661)
  %14 = extractvalue { ptr, ptr } %1, 0, !dbg !3662
  %15 = extractvalue { ptr, ptr } %1, 1, !dbg !3662
  call void @runtime.printitf(ptr %14, ptr %15, ptr undef), !dbg !3662
  call void @runtime.printnl(ptr undef), !dbg !3663
  call void @abort(), !dbg !3664
  ret void, !dbg !3665

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3645
  unreachable, !dbg !3645

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3645
  unreachable, !dbg !3645

store.throw:                                      ; preds = %if.then2
  call void @runtime.nilPanic(ptr undef), !dbg !3651
  unreachable, !dbg !3651

store.throw6:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !3654
  unreachable, !dbg !3654
}

declare void @tinygo_longjmp(ptr nocapture dereferenceable_or_null(48)) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printitf(ptr %msg.typecode, ptr %msg.value, ptr %context) unnamed_addr #1 !dbg !3666 {
entry:
  %itf = alloca { ptr, ptr }, align 8, !dbg !3696
  %unpack.raw.alloc136 = alloca ptr, align 8, !dbg !3696
  %unpack.raw.alloc129 = alloca ptr, align 8, !dbg !3696
  %unpack.raw.alloc = alloca ptr, align 8, !dbg !3696
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %msg.typecode, 0, !dbg !3696
  %1 = insertvalue { ptr, ptr } %0, ptr %msg.value, 1, !dbg !3696
    #dbg_value(ptr %msg.typecode, !3670, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3696)
    #dbg_value(ptr %msg.value, !3670, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3696)
    #dbg_value({ ptr, ptr } %1, !3670, !DIExpression(), !3697)
  %interface.type = extractvalue { ptr, ptr } %1, 0, !dbg !3698
  br i1 false, label %typeassert.ok, label %typeassert.next, !dbg !3698

typeassert.next:                                  ; preds = %typeassert.ok, %entry
  %typeassert.value = phi i1 [ false, %entry ], [ %unpack.int, %typeassert.ok ], !dbg !3698
  %2 = insertvalue { i1, i1 } undef, i1 %typeassert.value, 0, !dbg !3698
  %3 = insertvalue { i1, i1 } %2, i1 false, 1, !dbg !3698
  %4 = extractvalue { i1, i1 } %3, 0, !dbg !3698
  %5 = extractvalue { i1, i1 } %3, 1, !dbg !3698
  br i1 %5, label %typeswitch.body, label %typeswitch.next, !dbg !3699

typeassert.ok:                                    ; preds = %entry
  %typeassert.value.ptr = extractvalue { ptr, ptr } %1, 1, !dbg !3698
  %unpack.int = ptrtoint ptr %typeassert.value.ptr to i1, !dbg !3698
  br label %typeassert.next, !dbg !3698

typeswitch.body:                                  ; preds = %typeassert.next
    #dbg_value(i1 %4, !3671, !DIExpression(), !3700)
  call void @runtime.printbool(i1 %4, ptr undef), !dbg !3701
  br label %typeswitch.done, !dbg !3699

typeswitch.done:                                  ; preds = %deref.next161, %typeswitch.body39, %typeswitch.body37, %typeswitch.body35, %typeswitch.body33, %typeswitch.body31, %typeswitch.body29, %typeswitch.body27, %typeswitch.body25, %typeswitch.body23, %typeswitch.body21, %typeswitch.body19, %typeswitch.body17, %switch.body15, %switch.next14, %switch.body13, %typeswitch.body10, %typeswitch.body8, %typeswitch.body6, %typeswitch.body4, %switch.body2, %switch.next, %switch.body, %typeswitch.body
  ret void, !dbg !3702

typeswitch.next:                                  ; preds = %typeassert.next
  %interface.type41 = extractvalue { ptr, ptr } %1, 0, !dbg !3703
  br i1 false, label %typeassert.ok43, label %typeassert.next44, !dbg !3703

typeassert.next44:                                ; preds = %typeassert.ok43, %typeswitch.next
  %typeassert.value47 = phi i64 [ 0, %typeswitch.next ], [ %unpack.int46, %typeassert.ok43 ], !dbg !3703
  %6 = insertvalue { i64, i1 } undef, i64 %typeassert.value47, 0, !dbg !3703
  %7 = insertvalue { i64, i1 } %6, i1 false, 1, !dbg !3703
  %8 = extractvalue { i64, i1 } %7, 0, !dbg !3703
  %9 = extractvalue { i64, i1 } %7, 1, !dbg !3703
  br i1 %9, label %typeswitch.body1, label %typeswitch.next3, !dbg !3699

typeassert.ok43:                                  ; preds = %typeswitch.next
  %typeassert.value.ptr45 = extractvalue { ptr, ptr } %1, 1, !dbg !3703
  %unpack.int46 = ptrtoint ptr %typeassert.value.ptr45 to i64, !dbg !3703
  br label %typeassert.next44, !dbg !3703

typeswitch.body1:                                 ; preds = %typeassert.next44
  br i1 true, label %switch.body, label %switch.next, !dbg !3699

switch.body:                                      ; preds = %typeswitch.body1
    #dbg_value(i64 %8, !3672, !DIExpression(), !3704)
  call void @runtime.printint64(i64 %8, ptr undef), !dbg !3705
  br label %typeswitch.done, !dbg !3699

switch.next:                                      ; preds = %typeswitch.body1
  br i1 false, label %switch.body2, label %typeswitch.done, !dbg !3699

switch.body2:                                     ; preds = %switch.next
    #dbg_value(i64 %8, !3672, !DIExpression(), !3706)
  %10 = trunc i64 %8 to i32, !dbg !3707
  call void @runtime.printint32(i32 %10, ptr undef), !dbg !3708
  br label %typeswitch.done, !dbg !3699

typeswitch.next3:                                 ; preds = %typeassert.next44
  %interface.type48 = extractvalue { ptr, ptr } %1, 0, !dbg !3709
  br i1 false, label %typeassert.ok50, label %typeassert.next51, !dbg !3709

typeassert.next51:                                ; preds = %typeassert.ok50, %typeswitch.next3
  %typeassert.value54 = phi i8 [ 0, %typeswitch.next3 ], [ %unpack.int53, %typeassert.ok50 ], !dbg !3709
  %11 = insertvalue { i8, i1 } undef, i8 %typeassert.value54, 0, !dbg !3709
  %12 = insertvalue { i8, i1 } %11, i1 false, 1, !dbg !3709
  %13 = extractvalue { i8, i1 } %12, 0, !dbg !3709
  %14 = extractvalue { i8, i1 } %12, 1, !dbg !3709
  br i1 %14, label %typeswitch.body4, label %typeswitch.next5, !dbg !3699

typeassert.ok50:                                  ; preds = %typeswitch.next3
  %typeassert.value.ptr52 = extractvalue { ptr, ptr } %1, 1, !dbg !3709
  %unpack.int53 = ptrtoint ptr %typeassert.value.ptr52 to i8, !dbg !3709
  br label %typeassert.next51, !dbg !3709

typeswitch.body4:                                 ; preds = %typeassert.next51
    #dbg_value(i8 %13, !3673, !DIExpression(), !3710)
  call void @runtime.printint8(i8 %13, ptr undef), !dbg !3711
  br label %typeswitch.done, !dbg !3699

typeswitch.next5:                                 ; preds = %typeassert.next51
  %interface.type55 = extractvalue { ptr, ptr } %1, 0, !dbg !3712
  br i1 false, label %typeassert.ok57, label %typeassert.next58, !dbg !3712

typeassert.next58:                                ; preds = %typeassert.ok57, %typeswitch.next5
  %typeassert.value61 = phi i16 [ 0, %typeswitch.next5 ], [ %unpack.int60, %typeassert.ok57 ], !dbg !3712
  %15 = insertvalue { i16, i1 } undef, i16 %typeassert.value61, 0, !dbg !3712
  %16 = insertvalue { i16, i1 } %15, i1 false, 1, !dbg !3712
  %17 = extractvalue { i16, i1 } %16, 0, !dbg !3712
  %18 = extractvalue { i16, i1 } %16, 1, !dbg !3712
  br i1 %18, label %typeswitch.body6, label %typeswitch.next7, !dbg !3699

typeassert.ok57:                                  ; preds = %typeswitch.next5
  %typeassert.value.ptr59 = extractvalue { ptr, ptr } %1, 1, !dbg !3712
  %unpack.int60 = ptrtoint ptr %typeassert.value.ptr59 to i16, !dbg !3712
  br label %typeassert.next58, !dbg !3712

typeswitch.body6:                                 ; preds = %typeassert.next58
    #dbg_value(i16 %17, !3674, !DIExpression(), !3713)
  call void @runtime.printint16(i16 %17, ptr undef), !dbg !3714
  br label %typeswitch.done, !dbg !3699

typeswitch.next7:                                 ; preds = %typeassert.next58
  %interface.type62 = extractvalue { ptr, ptr } %1, 0, !dbg !3715
  br i1 false, label %typeassert.ok64, label %typeassert.next65, !dbg !3715

typeassert.next65:                                ; preds = %typeassert.ok64, %typeswitch.next7
  %typeassert.value68 = phi i32 [ 0, %typeswitch.next7 ], [ %unpack.int67, %typeassert.ok64 ], !dbg !3715
  %19 = insertvalue { i32, i1 } undef, i32 %typeassert.value68, 0, !dbg !3715
  %20 = insertvalue { i32, i1 } %19, i1 false, 1, !dbg !3715
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !3715
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !3715
  br i1 %22, label %typeswitch.body8, label %typeswitch.next9, !dbg !3699

typeassert.ok64:                                  ; preds = %typeswitch.next7
  %typeassert.value.ptr66 = extractvalue { ptr, ptr } %1, 1, !dbg !3715
  %unpack.int67 = ptrtoint ptr %typeassert.value.ptr66 to i32, !dbg !3715
  br label %typeassert.next65, !dbg !3715

typeswitch.body8:                                 ; preds = %typeassert.next65
    #dbg_value(i32 %21, !3676, !DIExpression(), !3716)
  call void @runtime.printint32(i32 %21, ptr undef), !dbg !3717
  br label %typeswitch.done, !dbg !3699

typeswitch.next9:                                 ; preds = %typeassert.next65
  %interface.type69 = extractvalue { ptr, ptr } %1, 0, !dbg !3718
  br i1 false, label %typeassert.ok71, label %typeassert.next72, !dbg !3718

typeassert.next72:                                ; preds = %typeassert.ok71, %typeswitch.next9
  %typeassert.value75 = phi i64 [ 0, %typeswitch.next9 ], [ %unpack.int74, %typeassert.ok71 ], !dbg !3718
  %23 = insertvalue { i64, i1 } undef, i64 %typeassert.value75, 0, !dbg !3718
  %24 = insertvalue { i64, i1 } %23, i1 false, 1, !dbg !3718
  %25 = extractvalue { i64, i1 } %24, 0, !dbg !3718
  %26 = extractvalue { i64, i1 } %24, 1, !dbg !3718
  br i1 %26, label %typeswitch.body10, label %typeswitch.next11, !dbg !3699

typeassert.ok71:                                  ; preds = %typeswitch.next9
  %typeassert.value.ptr73 = extractvalue { ptr, ptr } %1, 1, !dbg !3718
  %unpack.int74 = ptrtoint ptr %typeassert.value.ptr73 to i64, !dbg !3718
  br label %typeassert.next72, !dbg !3718

typeswitch.body10:                                ; preds = %typeassert.next72
    #dbg_value(i64 %25, !3677, !DIExpression(), !3719)
  call void @runtime.printint64(i64 %25, ptr undef), !dbg !3720
  br label %typeswitch.done, !dbg !3699

typeswitch.next11:                                ; preds = %typeassert.next72
  %interface.type76 = extractvalue { ptr, ptr } %1, 0, !dbg !3721
  br i1 false, label %typeassert.ok78, label %typeassert.next79, !dbg !3721

typeassert.next79:                                ; preds = %typeassert.ok78, %typeswitch.next11
  %typeassert.value82 = phi i64 [ 0, %typeswitch.next11 ], [ %unpack.int81, %typeassert.ok78 ], !dbg !3721
  %27 = insertvalue { i64, i1 } undef, i64 %typeassert.value82, 0, !dbg !3721
  %28 = insertvalue { i64, i1 } %27, i1 false, 1, !dbg !3721
  %29 = extractvalue { i64, i1 } %28, 0, !dbg !3721
  %30 = extractvalue { i64, i1 } %28, 1, !dbg !3721
  br i1 %30, label %typeswitch.body12, label %typeswitch.next16, !dbg !3699

typeassert.ok78:                                  ; preds = %typeswitch.next11
  %typeassert.value.ptr80 = extractvalue { ptr, ptr } %1, 1, !dbg !3721
  %unpack.int81 = ptrtoint ptr %typeassert.value.ptr80 to i64, !dbg !3721
  br label %typeassert.next79, !dbg !3721

typeswitch.body12:                                ; preds = %typeassert.next79
  br i1 true, label %switch.body13, label %switch.next14, !dbg !3699

switch.body13:                                    ; preds = %typeswitch.body12
    #dbg_value(i64 %29, !3678, !DIExpression(), !3722)
  call void @runtime.printuint64(i64 %29, ptr undef), !dbg !3723
  br label %typeswitch.done, !dbg !3699

switch.next14:                                    ; preds = %typeswitch.body12
  br i1 false, label %switch.body15, label %typeswitch.done, !dbg !3699

switch.body15:                                    ; preds = %switch.next14
    #dbg_value(i64 %29, !3678, !DIExpression(), !3724)
  %31 = trunc i64 %29 to i32, !dbg !3725
  call void @runtime.printuint32(i32 %31, ptr undef), !dbg !3726
  br label %typeswitch.done, !dbg !3699

typeswitch.next16:                                ; preds = %typeassert.next79
  %interface.type83 = extractvalue { ptr, ptr } %1, 0, !dbg !3727
  %typeassert.ok2 = icmp eq ptr @"reflect/types.type:basic:uint8", %interface.type83, !dbg !3727
  br i1 %typeassert.ok2, label %typeassert.ok85, label %typeassert.next86, !dbg !3727

typeassert.next86:                                ; preds = %typeassert.ok85, %typeswitch.next16
  %typeassert.value89 = phi i8 [ 0, %typeswitch.next16 ], [ %unpack.int88, %typeassert.ok85 ], !dbg !3727
  %32 = insertvalue { i8, i1 } undef, i8 %typeassert.value89, 0, !dbg !3727
  %33 = insertvalue { i8, i1 } %32, i1 %typeassert.ok2, 1, !dbg !3727
  %34 = extractvalue { i8, i1 } %33, 0, !dbg !3727
  %35 = extractvalue { i8, i1 } %33, 1, !dbg !3727
  br i1 %35, label %typeswitch.body17, label %typeswitch.next18, !dbg !3699

typeassert.ok85:                                  ; preds = %typeswitch.next16
  %typeassert.value.ptr87 = extractvalue { ptr, ptr } %1, 1, !dbg !3727
  %unpack.int88 = ptrtoint ptr %typeassert.value.ptr87 to i8, !dbg !3727
  br label %typeassert.next86, !dbg !3727

typeswitch.body17:                                ; preds = %typeassert.next86
    #dbg_value(i8 %34, !3679, !DIExpression(), !3728)
  call void @runtime.printuint8(i8 %34, ptr undef), !dbg !3729
  br label %typeswitch.done, !dbg !3699

typeswitch.next18:                                ; preds = %typeassert.next86
  %interface.type90 = extractvalue { ptr, ptr } %1, 0, !dbg !3730
  br i1 false, label %typeassert.ok92, label %typeassert.next93, !dbg !3730

typeassert.next93:                                ; preds = %typeassert.ok92, %typeswitch.next18
  %typeassert.value96 = phi i16 [ 0, %typeswitch.next18 ], [ %unpack.int95, %typeassert.ok92 ], !dbg !3730
  %36 = insertvalue { i16, i1 } undef, i16 %typeassert.value96, 0, !dbg !3730
  %37 = insertvalue { i16, i1 } %36, i1 false, 1, !dbg !3730
  %38 = extractvalue { i16, i1 } %37, 0, !dbg !3730
  %39 = extractvalue { i16, i1 } %37, 1, !dbg !3730
  br i1 %39, label %typeswitch.body19, label %typeswitch.next20, !dbg !3699

typeassert.ok92:                                  ; preds = %typeswitch.next18
  %typeassert.value.ptr94 = extractvalue { ptr, ptr } %1, 1, !dbg !3730
  %unpack.int95 = ptrtoint ptr %typeassert.value.ptr94 to i16, !dbg !3730
  br label %typeassert.next93, !dbg !3730

typeswitch.body19:                                ; preds = %typeassert.next93
    #dbg_value(i16 %38, !3680, !DIExpression(), !3731)
  call void @runtime.printuint16(i16 %38, ptr undef), !dbg !3732
  br label %typeswitch.done, !dbg !3699

typeswitch.next20:                                ; preds = %typeassert.next93
  %interface.type97 = extractvalue { ptr, ptr } %1, 0, !dbg !3733
  br i1 false, label %typeassert.ok99, label %typeassert.next100, !dbg !3733

typeassert.next100:                               ; preds = %typeassert.ok99, %typeswitch.next20
  %typeassert.value103 = phi i32 [ 0, %typeswitch.next20 ], [ %unpack.int102, %typeassert.ok99 ], !dbg !3733
  %40 = insertvalue { i32, i1 } undef, i32 %typeassert.value103, 0, !dbg !3733
  %41 = insertvalue { i32, i1 } %40, i1 false, 1, !dbg !3733
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !3733
  %43 = extractvalue { i32, i1 } %41, 1, !dbg !3733
  br i1 %43, label %typeswitch.body21, label %typeswitch.next22, !dbg !3699

typeassert.ok99:                                  ; preds = %typeswitch.next20
  %typeassert.value.ptr101 = extractvalue { ptr, ptr } %1, 1, !dbg !3733
  %unpack.int102 = ptrtoint ptr %typeassert.value.ptr101 to i32, !dbg !3733
  br label %typeassert.next100, !dbg !3733

typeswitch.body21:                                ; preds = %typeassert.next100
    #dbg_value(i32 %42, !3681, !DIExpression(), !3734)
  call void @runtime.printuint32(i32 %42, ptr undef), !dbg !3735
  br label %typeswitch.done, !dbg !3699

typeswitch.next22:                                ; preds = %typeassert.next100
  %interface.type104 = extractvalue { ptr, ptr } %1, 0, !dbg !3736
  br i1 false, label %typeassert.ok106, label %typeassert.next107, !dbg !3736

typeassert.next107:                               ; preds = %typeassert.ok106, %typeswitch.next22
  %typeassert.value110 = phi i64 [ 0, %typeswitch.next22 ], [ %unpack.int109, %typeassert.ok106 ], !dbg !3736
  %44 = insertvalue { i64, i1 } undef, i64 %typeassert.value110, 0, !dbg !3736
  %45 = insertvalue { i64, i1 } %44, i1 false, 1, !dbg !3736
  %46 = extractvalue { i64, i1 } %45, 0, !dbg !3736
  %47 = extractvalue { i64, i1 } %45, 1, !dbg !3736
  br i1 %47, label %typeswitch.body23, label %typeswitch.next24, !dbg !3699

typeassert.ok106:                                 ; preds = %typeswitch.next22
  %typeassert.value.ptr108 = extractvalue { ptr, ptr } %1, 1, !dbg !3736
  %unpack.int109 = ptrtoint ptr %typeassert.value.ptr108 to i64, !dbg !3736
  br label %typeassert.next107, !dbg !3736

typeswitch.body23:                                ; preds = %typeassert.next107
    #dbg_value(i64 %46, !3682, !DIExpression(), !3737)
  call void @runtime.printuint64(i64 %46, ptr undef), !dbg !3738
  br label %typeswitch.done, !dbg !3699

typeswitch.next24:                                ; preds = %typeassert.next107
  %interface.type111 = extractvalue { ptr, ptr } %1, 0, !dbg !3739
  br i1 false, label %typeassert.ok113, label %typeassert.next114, !dbg !3739

typeassert.next114:                               ; preds = %typeassert.ok113, %typeswitch.next24
  %typeassert.value117 = phi i64 [ 0, %typeswitch.next24 ], [ %unpack.int116, %typeassert.ok113 ], !dbg !3739
  %48 = insertvalue { i64, i1 } undef, i64 %typeassert.value117, 0, !dbg !3739
  %49 = insertvalue { i64, i1 } %48, i1 false, 1, !dbg !3739
  %50 = extractvalue { i64, i1 } %49, 0, !dbg !3739
  %51 = extractvalue { i64, i1 } %49, 1, !dbg !3739
  br i1 %51, label %typeswitch.body25, label %typeswitch.next26, !dbg !3699

typeassert.ok113:                                 ; preds = %typeswitch.next24
  %typeassert.value.ptr115 = extractvalue { ptr, ptr } %1, 1, !dbg !3739
  %unpack.int116 = ptrtoint ptr %typeassert.value.ptr115 to i64, !dbg !3739
  br label %typeassert.next114, !dbg !3739

typeswitch.body25:                                ; preds = %typeassert.next114
    #dbg_value(i64 %50, !3683, !DIExpression(), !3740)
  call void @runtime.printuintptr(i64 %50, ptr undef), !dbg !3741
  br label %typeswitch.done, !dbg !3699

typeswitch.next26:                                ; preds = %typeassert.next114
  %interface.type118 = extractvalue { ptr, ptr } %1, 0, !dbg !3742
  br i1 false, label %typeassert.ok120, label %typeassert.next121, !dbg !3742

typeassert.next121:                               ; preds = %typeassert.ok120, %typeswitch.next26
  %typeassert.value123 = phi float [ 0.000000e+00, %typeswitch.next26 ], [ %57, %typeassert.ok120 ], !dbg !3696
  %52 = insertvalue { float, i1 } undef, float %typeassert.value123, 0, !dbg !3696
  %53 = insertvalue { float, i1 } %52, i1 false, 1, !dbg !3696
  %54 = extractvalue { float, i1 } %53, 0, !dbg !3742
  %55 = extractvalue { float, i1 } %53, 1, !dbg !3742
  br i1 %55, label %typeswitch.body27, label %typeswitch.next28, !dbg !3699

typeassert.ok120:                                 ; preds = %typeswitch.next26
  %typeassert.value.ptr122 = extractvalue { ptr, ptr } %1, 1, !dbg !3742
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc), !dbg !3696
  store ptr %typeassert.value.ptr122, ptr %unpack.raw.alloc, align 8, !dbg !3696
  %56 = getelementptr inbounds { float }, ptr %unpack.raw.alloc, i32 0, i32 0, !dbg !3696
  %57 = load float, ptr %56, align 4, !dbg !3696
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc), !dbg !3696
  br label %typeassert.next121, !dbg !3696

typeswitch.body27:                                ; preds = %typeassert.next121
    #dbg_value(float %54, !3684, !DIExpression(), !3743)
  call void @runtime.printfloat32(float %54, ptr undef), !dbg !3744
  br label %typeswitch.done, !dbg !3699

typeswitch.next28:                                ; preds = %typeassert.next121
  %interface.type124 = extractvalue { ptr, ptr } %1, 0, !dbg !3745
  br i1 false, label %typeassert.ok126, label %typeassert.next127, !dbg !3745

typeassert.next127:                               ; preds = %typeassert.ok126, %typeswitch.next28
  %typeassert.value130 = phi double [ 0.000000e+00, %typeswitch.next28 ], [ %63, %typeassert.ok126 ], !dbg !3696
  %58 = insertvalue { double, i1 } undef, double %typeassert.value130, 0, !dbg !3696
  %59 = insertvalue { double, i1 } %58, i1 false, 1, !dbg !3696
  %60 = extractvalue { double, i1 } %59, 0, !dbg !3745
  %61 = extractvalue { double, i1 } %59, 1, !dbg !3745
  br i1 %61, label %typeswitch.body29, label %typeswitch.next30, !dbg !3699

typeassert.ok126:                                 ; preds = %typeswitch.next28
  %typeassert.value.ptr128 = extractvalue { ptr, ptr } %1, 1, !dbg !3745
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc129), !dbg !3696
  store ptr %typeassert.value.ptr128, ptr %unpack.raw.alloc129, align 8, !dbg !3696
  %62 = getelementptr inbounds { double }, ptr %unpack.raw.alloc129, i32 0, i32 0, !dbg !3696
  %63 = load double, ptr %62, align 8, !dbg !3696
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc129), !dbg !3696
  br label %typeassert.next127, !dbg !3696

typeswitch.body29:                                ; preds = %typeassert.next127
    #dbg_value(double %60, !3686, !DIExpression(), !3746)
  call void @runtime.printfloat64(double %60, ptr undef), !dbg !3747
  br label %typeswitch.done, !dbg !3699

typeswitch.next30:                                ; preds = %typeassert.next127
  %interface.type131 = extractvalue { ptr, ptr } %1, 0, !dbg !3748
  br i1 false, label %typeassert.ok133, label %typeassert.next134, !dbg !3748

typeassert.next134:                               ; preds = %typeassert.ok133, %typeswitch.next30
  %typeassert.value137 = phi { float, float } [ zeroinitializer, %typeswitch.next30 ], [ %69, %typeassert.ok133 ], !dbg !3696
  %64 = insertvalue { { float, float }, i1 } undef, { float, float } %typeassert.value137, 0, !dbg !3696
  %65 = insertvalue { { float, float }, i1 } %64, i1 false, 1, !dbg !3696
  %66 = extractvalue { { float, float }, i1 } %65, 0, !dbg !3748
  %67 = extractvalue { { float, float }, i1 } %65, 1, !dbg !3748
  br i1 %67, label %typeswitch.body31, label %typeswitch.next32, !dbg !3699

typeassert.ok133:                                 ; preds = %typeswitch.next30
  %typeassert.value.ptr135 = extractvalue { ptr, ptr } %1, 1, !dbg !3748
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc136), !dbg !3696
  store ptr %typeassert.value.ptr135, ptr %unpack.raw.alloc136, align 8, !dbg !3696
  %68 = getelementptr inbounds { { float, float } }, ptr %unpack.raw.alloc136, i32 0, i32 0, !dbg !3696
  %69 = load { float, float }, ptr %68, align 4, !dbg !3696
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc136), !dbg !3696
  br label %typeassert.next134, !dbg !3696

typeswitch.body31:                                ; preds = %typeassert.next134
    #dbg_value({ float, float } %66, !3687, !DIExpression(), !3749)
  %70 = extractvalue { float, float } %66, 0, !dbg !3750
  %71 = extractvalue { float, float } %66, 1, !dbg !3750
  call void @runtime.printcomplex64(float %70, float %71, ptr undef), !dbg !3750
  br label %typeswitch.done, !dbg !3699

typeswitch.next32:                                ; preds = %typeassert.next134
  %interface.type138 = extractvalue { ptr, ptr } %1, 0, !dbg !3751
  br i1 false, label %typeassert.ok140, label %typeassert.next141, !dbg !3751

typeassert.next141:                               ; preds = %typeassert.ok140, %typeswitch.next32
  %typeassert.value143 = phi { double, double } [ zeroinitializer, %typeswitch.next32 ], [ %77, %typeassert.ok140 ], !dbg !3751
  %72 = insertvalue { { double, double }, i1 } undef, { double, double } %typeassert.value143, 0, !dbg !3751
  %73 = insertvalue { { double, double }, i1 } %72, i1 false, 1, !dbg !3751
  %74 = extractvalue { { double, double }, i1 } %73, 0, !dbg !3751
  %75 = extractvalue { { double, double }, i1 } %73, 1, !dbg !3751
  br i1 %75, label %typeswitch.body33, label %typeswitch.next34, !dbg !3699

typeassert.ok140:                                 ; preds = %typeswitch.next32
  %typeassert.value.ptr142 = extractvalue { ptr, ptr } %1, 1, !dbg !3751
  %76 = getelementptr inbounds { { double, double } }, ptr %typeassert.value.ptr142, i32 0, i32 0, !dbg !3751
  %77 = load { double, double }, ptr %76, align 8, !dbg !3751
  br label %typeassert.next141, !dbg !3751

typeswitch.body33:                                ; preds = %typeassert.next141
    #dbg_value({ double, double } %74, !3689, !DIExpression(), !3752)
  %78 = extractvalue { double, double } %74, 0, !dbg !3753
  %79 = extractvalue { double, double } %74, 1, !dbg !3753
  call void @runtime.printcomplex128(double %78, double %79, ptr undef), !dbg !3753
  br label %typeswitch.done, !dbg !3699

typeswitch.next34:                                ; preds = %typeassert.next141
  %interface.type144 = extractvalue { ptr, ptr } %1, 0, !dbg !3754
  %typeassert.ok1 = icmp eq ptr @"reflect/types.type:basic:string", %interface.type144, !dbg !3754
  br i1 %typeassert.ok1, label %typeassert.ok146, label %typeassert.next147, !dbg !3754

typeassert.next147:                               ; preds = %typeassert.ok146, %typeswitch.next34
  %typeassert.value149 = phi %runtime._string [ zeroinitializer, %typeswitch.next34 ], [ %85, %typeassert.ok146 ], !dbg !3754
  %80 = insertvalue { %runtime._string, i1 } undef, %runtime._string %typeassert.value149, 0, !dbg !3754
  %81 = insertvalue { %runtime._string, i1 } %80, i1 %typeassert.ok1, 1, !dbg !3754
  %82 = extractvalue { %runtime._string, i1 } %81, 0, !dbg !3754
  %83 = extractvalue { %runtime._string, i1 } %81, 1, !dbg !3754
  br i1 %83, label %typeswitch.body35, label %typeswitch.next36, !dbg !3699

typeassert.ok146:                                 ; preds = %typeswitch.next34
  %typeassert.value.ptr148 = extractvalue { ptr, ptr } %1, 1, !dbg !3754
  %84 = getelementptr inbounds { %runtime._string }, ptr %typeassert.value.ptr148, i32 0, i32 0, !dbg !3754
  %85 = load %runtime._string, ptr %84, align 8, !dbg !3754
  br label %typeassert.next147, !dbg !3754

typeswitch.body35:                                ; preds = %typeassert.next147
    #dbg_value(%runtime._string %82, !3691, !DIExpression(), !3755)
  %86 = extractvalue %runtime._string %82, 0, !dbg !3756
  %87 = extractvalue %runtime._string %82, 1, !dbg !3756
  call void @runtime.printstring(ptr %86, i64 %87, ptr undef), !dbg !3756
  br label %typeswitch.done, !dbg !3699

typeswitch.next36:                                ; preds = %typeassert.next147
  %interface.type150 = extractvalue { ptr, ptr } %1, 0, !dbg !3757
  %88 = call i1 @"interface:{Error:func:{}{basic:string}}.$typeassert"(ptr %interface.type150), !dbg !3757
  br i1 %88, label %typeassert.ok151, label %typeassert.next152, !dbg !3757

typeassert.next152:                               ; preds = %typeassert.ok151, %typeswitch.next36
  %typeassert.value153 = phi { ptr, ptr } [ zeroinitializer, %typeswitch.next36 ], [ %1, %typeassert.ok151 ], !dbg !3757
  %89 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %typeassert.value153, 0, !dbg !3757
  %90 = insertvalue { { ptr, ptr }, i1 } %89, i1 %88, 1, !dbg !3757
  %91 = extractvalue { { ptr, ptr }, i1 } %90, 0, !dbg !3757
  %92 = extractvalue { { ptr, ptr }, i1 } %90, 1, !dbg !3757
  br i1 %92, label %typeswitch.body37, label %typeswitch.next38, !dbg !3699

typeassert.ok151:                                 ; preds = %typeswitch.next36
  br label %typeassert.next152, !dbg !3757

typeswitch.body37:                                ; preds = %typeassert.next152
    #dbg_value({ ptr, ptr } %91, !3692, !DIExpression(), !3758)
  %invoke.func.typecode = extractvalue { ptr, ptr } %91, 0, !dbg !3759
  %invoke.func.value = extractvalue { ptr, ptr } %91, 1, !dbg !3759
  %93 = call %runtime._string @"interface:{Error:func:{}{basic:string}}.Error$invoke"(ptr %invoke.func.value, ptr %invoke.func.typecode, ptr undef), !dbg !3759
  %94 = extractvalue %runtime._string %93, 0, !dbg !3760
  %95 = extractvalue %runtime._string %93, 1, !dbg !3760
  call void @runtime.printstring(ptr %94, i64 %95, ptr undef), !dbg !3760
  br label %typeswitch.done, !dbg !3699

typeswitch.next38:                                ; preds = %typeassert.next152
  %interface.type154 = extractvalue { ptr, ptr } %1, 0, !dbg !3761
  %96 = call i1 @"interface:{String:func:{}{basic:string}}.$typeassert"(ptr %interface.type154), !dbg !3761
  br i1 %96, label %typeassert.ok155, label %typeassert.next156, !dbg !3761

typeassert.next156:                               ; preds = %typeassert.ok155, %typeswitch.next38
  %typeassert.value157 = phi { ptr, ptr } [ zeroinitializer, %typeswitch.next38 ], [ %1, %typeassert.ok155 ], !dbg !3761
  %97 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %typeassert.value157, 0, !dbg !3761
  %98 = insertvalue { { ptr, ptr }, i1 } %97, i1 %96, 1, !dbg !3761
  %99 = extractvalue { { ptr, ptr }, i1 } %98, 0, !dbg !3761
  %100 = extractvalue { { ptr, ptr }, i1 } %98, 1, !dbg !3761
  br i1 %100, label %typeswitch.body39, label %typeswitch.next40, !dbg !3699

typeassert.ok155:                                 ; preds = %typeswitch.next38
  br label %typeassert.next156, !dbg !3761

typeswitch.body39:                                ; preds = %typeassert.next156
    #dbg_value({ ptr, ptr } %99, !3693, !DIExpression(), !3762)
  %invoke.func.typecode158 = extractvalue { ptr, ptr } %99, 0, !dbg !3763
  %invoke.func.value159 = extractvalue { ptr, ptr } %99, 1, !dbg !3763
  %101 = call %runtime._string @"interface:{String:func:{}{basic:string}}.String$invoke"(ptr %invoke.func.value159, ptr %invoke.func.typecode158, ptr undef), !dbg !3763
  %102 = extractvalue %runtime._string %101, 0, !dbg !3764
  %103 = extractvalue %runtime._string %101, 1, !dbg !3764
  call void @runtime.printstring(ptr %102, i64 %103, ptr undef), !dbg !3764
  br label %typeswitch.done, !dbg !3699

typeswitch.next40:                                ; preds = %typeassert.next156
  %msg = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 389 to ptr), ptr undef), !dbg !3765
  store { ptr, ptr } %1, ptr %msg, align 8, !dbg !3765
  store { ptr, ptr } zeroinitializer, ptr %itf, align 8, !dbg !3696
  %104 = load { ptr, ptr }, ptr %msg, align 8, !dbg !3766
  store { ptr, ptr } %104, ptr %itf, align 8, !dbg !3767
    #dbg_value({ ptr, ptr } %104, !3695, !DIExpression(), !3767)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !3768
  %105 = getelementptr inbounds { ptr, ptr }, ptr %itf, i32 0, i32 0, !dbg !3769
  %106 = icmp eq ptr %105, null, !dbg !3769
  br i1 %106, label %deref.throw, label %deref.next, !dbg !3769

deref.next:                                       ; preds = %typeswitch.next40
  %107 = load ptr, ptr %105, align 8, !dbg !3769
  %108 = ptrtoint ptr %107 to i64, !dbg !3770
  call void @runtime.printuintptr(i64 %108, ptr undef), !dbg !3771
  call void @runtime.putchar(i8 58, ptr undef), !dbg !3772
  %109 = getelementptr inbounds { ptr, ptr }, ptr %itf, i32 0, i32 1, !dbg !3773
  %110 = icmp eq ptr %109, null, !dbg !3773
  br i1 %110, label %deref.throw160, label %deref.next161, !dbg !3773

deref.next161:                                    ; preds = %deref.next
  %111 = load ptr, ptr %109, align 8, !dbg !3773
  %112 = ptrtoint ptr %111 to i64, !dbg !3774
  call void @runtime.printptr(i64 %112, ptr undef), !dbg !3775
  call void @runtime.putchar(i8 41, ptr undef), !dbg !3776
  br label %typeswitch.done, !dbg !3699

deref.throw:                                      ; preds = %typeswitch.next40
  call void @runtime.nilPanic(ptr undef), !dbg !3769
  unreachable, !dbg !3769

deref.throw160:                                   ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !3773
  unreachable, !dbg !3773
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printbool(i1 %b, ptr %context) unnamed_addr #1 !dbg !3777 {
entry:
    #dbg_value(i1 %b, !3781, !DIExpression(), !3782)
    #dbg_value(i1 %b, !3781, !DIExpression(), !3783)
  br i1 %b, label %if.then, label %if.else, !dbg !3784

if.then:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.46", i64 4, ptr undef), !dbg !3785
  br label %if.done, !dbg !3784

if.done:                                          ; preds = %if.else, %if.then
  ret void, !dbg !3786

if.else:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.47", i64 5, ptr undef), !dbg !3787
  br label %if.done, !dbg !3784
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint64(i64 %n, ptr %context) unnamed_addr #1 !dbg !3788 {
entry:
    #dbg_value(i64 %n, !3792, !DIExpression(), !3793)
    #dbg_value(i64 %n, !3792, !DIExpression(), !3794)
  %0 = icmp slt i64 %n, 0, !dbg !3795
  br i1 %0, label %if.then, label %if.done, !dbg !3796

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3797
    #dbg_value(i64 %n, !3792, !DIExpression(), !3798)
  %1 = sub i64 0, %n, !dbg !3799
    #dbg_value(i64 %1, !3792, !DIExpression(), !3800)
  br label %if.done, !dbg !3796

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i64 [ %n, %entry ], [ %1, %if.then ], !dbg !3801
    #dbg_value(i64 %2, !3792, !DIExpression(), !3802)
  call void @runtime.printuint64(i64 %2, ptr undef), !dbg !3803
  ret void, !dbg !3804
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint32(i32 %n, ptr %context) unnamed_addr #1 !dbg !3805 {
entry:
    #dbg_value(i32 %n, !3807, !DIExpression(), !3808)
    #dbg_value(i32 %n, !3807, !DIExpression(), !3809)
  %0 = icmp slt i32 %n, 0, !dbg !3810
  br i1 %0, label %if.then, label %if.done, !dbg !3811

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3812
    #dbg_value(i32 %n, !3807, !DIExpression(), !3813)
  %1 = sub i32 0, %n, !dbg !3814
    #dbg_value(i32 %1, !3807, !DIExpression(), !3815)
  br label %if.done, !dbg !3811

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i32 [ %n, %entry ], [ %1, %if.then ], !dbg !3816
    #dbg_value(i32 %2, !3807, !DIExpression(), !3817)
  call void @runtime.printuint32(i32 %2, ptr undef), !dbg !3818
  ret void, !dbg !3819
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint8(i8 %n, ptr %context) unnamed_addr #1 !dbg !3820 {
entry:
    #dbg_value(i8 %n, !3824, !DIExpression(), !3825)
  br i1 true, label %if.then, label %if.else, !dbg !3826

if.then:                                          ; preds = %entry
    #dbg_value(i8 %n, !3824, !DIExpression(), !3827)
  %0 = sext i8 %n to i32, !dbg !3828
  call void @runtime.printint32(i32 %0, ptr undef), !dbg !3829
  br label %if.done, !dbg !3826

if.done:                                          ; preds = %if.done2, %if.then
  ret void, !dbg !3830

if.else:                                          ; preds = %entry
    #dbg_value(i8 %n, !3824, !DIExpression(), !3831)
  %1 = icmp slt i8 %n, 0, !dbg !3832
  br i1 %1, label %if.then1, label %if.done2, !dbg !3826

if.then1:                                         ; preds = %if.else
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3833
    #dbg_value(i8 %n, !3824, !DIExpression(), !3834)
  %2 = sub i8 0, %n, !dbg !3835
    #dbg_value(i8 %2, !3824, !DIExpression(), !3836)
  br label %if.done2, !dbg !3826

if.done2:                                         ; preds = %if.then1, %if.else
  %3 = phi i8 [ %n, %if.else ], [ %2, %if.then1 ], !dbg !3837
    #dbg_value(i8 %3, !3824, !DIExpression(), !3838)
  call void @runtime.printuint8(i8 %3, ptr undef), !dbg !3839
  br label %if.done, !dbg !3826
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint16(i16 %n, ptr %context) unnamed_addr #1 !dbg !3840 {
entry:
    #dbg_value(i16 %n, !3844, !DIExpression(), !3845)
    #dbg_value(i16 %n, !3844, !DIExpression(), !3846)
  %0 = sext i16 %n to i32, !dbg !3847
  call void @runtime.printint32(i32 %0, ptr undef), !dbg !3848
  ret void, !dbg !3849
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint64(i64 %n, ptr %context) unnamed_addr #1 !dbg !3850 {
entry:
    #dbg_value(i64 %n, !3854, !DIExpression(), !3859)
  %digits = alloca [20 x i8], align 1, !dbg !3860
  store [20 x i8] zeroinitializer, ptr %digits, align 1, !dbg !3860
    #dbg_value(i64 19, !3855, !DIExpression(), !3861)
    #dbg_value(i64 19, !3856, !DIExpression(), !3862)
  br label %for.loop, !dbg !3863

for.loop:                                         ; preds = %if.done, %entry
  %0 = phi i64 [ %n, %entry ], [ %10, %if.done ], !dbg !3864
  %1 = phi i64 [ 19, %entry ], [ %9, %if.done ], !dbg !3861
  %2 = phi i64 [ 19, %entry ], [ %11, %if.done ], !dbg !3862
    #dbg_value(i64 %2, !3856, !DIExpression(), !3865)
  %3 = icmp sge i64 %2, 0, !dbg !3866
  br i1 %3, label %for.body, label %for.done, !dbg !3863

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !3854, !DIExpression(), !3867)
  %4 = urem i64 %0, 10, !dbg !3868
  %5 = add i64 %4, 48, !dbg !3869
  %6 = trunc i64 %5 to i8, !dbg !3870
    #dbg_value(i8 %6, !3857, !DIExpression(), !3871)
    #dbg_value(i64 %2, !3856, !DIExpression(), !3872)
    #dbg_value(i8 %6, !3857, !DIExpression(), !3873)
  %7 = getelementptr inbounds [20 x i8], ptr %digits, i32 0, i64 %2, !dbg !3874
  store i8 %6, ptr %7, align 1, !dbg !3874
    #dbg_value(i8 %6, !3857, !DIExpression(), !3875)
  %8 = icmp ne i8 %6, 48, !dbg !3876
  br i1 %8, label %if.then, label %if.done, !dbg !3863

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %2, !3856, !DIExpression(), !3877)
    #dbg_value(i64 %2, !3855, !DIExpression(), !3878)
  br label %if.done, !dbg !3863

if.done:                                          ; preds = %if.then, %for.body
  %9 = phi i64 [ %1, %for.body ], [ %2, %if.then ], !dbg !3861
  %10 = udiv i64 %0, 10, !dbg !3879
    #dbg_value(i64 %10, !3854, !DIExpression(), !3879)
  %11 = sub i64 %2, 1, !dbg !3880
    #dbg_value(i64 %11, !3856, !DIExpression(), !3880)
  br label %for.loop, !dbg !3863

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !3855, !DIExpression(), !3881)
    #dbg_value(i64 %1, !3858, !DIExpression(), !3882)
  br label %for.loop1, !dbg !3863

for.loop1:                                        ; preds = %for.body2, %for.done
  %12 = phi i64 [ %1, %for.done ], [ %16, %for.body2 ], !dbg !3882
    #dbg_value(i64 %12, !3858, !DIExpression(), !3883)
  %13 = icmp slt i64 %12, 20, !dbg !3884
  br i1 %13, label %for.body2, label %for.done3, !dbg !3863

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %12, !3858, !DIExpression(), !3885)
  %14 = getelementptr inbounds [20 x i8], ptr %digits, i32 0, i64 %12, !dbg !3886
  %15 = load i8, ptr %14, align 1, !dbg !3886
  call void @runtime.putchar(i8 %15, ptr undef), !dbg !3887
  %16 = add i64 %12, 1, !dbg !3888
    #dbg_value(i64 %16, !3858, !DIExpression(), !3888)
  br label %for.loop1, !dbg !3863

for.done3:                                        ; preds = %for.loop1
  ret void, !dbg !3889
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint32(i32 %n, ptr %context) unnamed_addr #1 !dbg !3890 {
entry:
    #dbg_value(i32 %n, !3892, !DIExpression(), !3893)
    #dbg_value(i32 %n, !3892, !DIExpression(), !3894)
  %0 = zext i32 %n to i64, !dbg !3895
  call void @runtime.printuint64(i64 %0, ptr undef), !dbg !3896
  ret void, !dbg !3897
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint8(i8 %n, ptr %context) unnamed_addr #1 !dbg !3898 {
entry:
    #dbg_value(i8 %n, !3902, !DIExpression(), !3904)
  br i1 true, label %if.then, label %if.else, !dbg !3905

if.then:                                          ; preds = %entry
    #dbg_value(i8 %n, !3902, !DIExpression(), !3906)
  %0 = zext i8 %n to i32, !dbg !3907
  call void @runtime.printuint32(i32 %0, ptr undef), !dbg !3908
  br label %if.done, !dbg !3905

if.done:                                          ; preds = %if.done2, %if.then
  ret void, !dbg !3909

if.else:                                          ; preds = %entry
    #dbg_value(i8 %n, !3902, !DIExpression(), !3910)
  %1 = udiv i8 %n, 10, !dbg !3911
    #dbg_value(i8 %1, !3903, !DIExpression(), !3912)
    #dbg_value(i8 %1, !3903, !DIExpression(), !3913)
  %2 = icmp ne i8 %1, 0, !dbg !3914
  br i1 %2, label %if.then1, label %if.done2, !dbg !3905

if.then1:                                         ; preds = %if.else
    #dbg_value(i8 %1, !3903, !DIExpression(), !3915)
  call void @runtime.printuint8(i8 %1, ptr undef), !dbg !3916
  br label %if.done2, !dbg !3905

if.done2:                                         ; preds = %if.then1, %if.else
    #dbg_value(i8 %n, !3902, !DIExpression(), !3917)
  %3 = urem i8 %n, 10, !dbg !3918
  %4 = add i8 %3, 48, !dbg !3919
  call void @runtime.putchar(i8 %4, ptr undef), !dbg !3920
  br label %if.done, !dbg !3905
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint16(i16 %n, ptr %context) unnamed_addr #1 !dbg !3921 {
entry:
    #dbg_value(i16 %n, !3925, !DIExpression(), !3926)
    #dbg_value(i16 %n, !3925, !DIExpression(), !3927)
  %0 = zext i16 %n to i32, !dbg !3928
  call void @runtime.printuint32(i32 %0, ptr undef), !dbg !3929
  ret void, !dbg !3930
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuintptr(i64 %n, ptr %context) unnamed_addr #1 !dbg !3931 {
entry:
    #dbg_value(i64 %n, !3933, !DIExpression(), !3934)
  br i1 false, label %switch.body, label %switch.next, !dbg !3935

switch.body:                                      ; preds = %entry
    #dbg_value(i64 %n, !3933, !DIExpression(), !3936)
  %0 = trunc i64 %n to i16, !dbg !3937
  call void @runtime.printuint16(i16 %0, ptr undef), !dbg !3938
  br label %switch.done, !dbg !3935

switch.done:                                      ; preds = %switch.body3, %switch.next2, %switch.body1, %switch.body
  ret void, !dbg !3939

switch.next:                                      ; preds = %entry
  br i1 false, label %switch.body1, label %switch.next2, !dbg !3935

switch.body1:                                     ; preds = %switch.next
    #dbg_value(i64 %n, !3933, !DIExpression(), !3940)
  %1 = trunc i64 %n to i32, !dbg !3941
  call void @runtime.printuint32(i32 %1, ptr undef), !dbg !3942
  br label %switch.done, !dbg !3935

switch.next2:                                     ; preds = %switch.next
  br i1 true, label %switch.body3, label %switch.done, !dbg !3935

switch.body3:                                     ; preds = %switch.next2
    #dbg_value(i64 %n, !3933, !DIExpression(), !3943)
  call void @runtime.printuint64(i64 %n, ptr undef), !dbg !3944
  br label %switch.done, !dbg !3935
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printfloat32(float %v, ptr %context) unnamed_addr #1 !dbg !3945 {
entry:
    #dbg_value(float %v, !3949, !DIExpression(), !3958)
    #dbg_value(float %v, !3949, !DIExpression(), !3959)
    #dbg_value(float %v, !3949, !DIExpression(), !3960)
  %index.alloca = alloca [14 x i8], align 1, !dbg !3961
  %buf = alloca [14 x i8], align 1, !dbg !3961
  %0 = fcmp une float %v, %v, !dbg !3961
  br i1 %0, label %switch.body, label %switch.next, !dbg !3962

switch.body:                                      ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.35", i64 3, ptr undef), !dbg !3963
  ret void, !dbg !3964

switch.next:                                      ; preds = %entry
    #dbg_value(float %v, !3949, !DIExpression(), !3965)
    #dbg_value(float %v, !3949, !DIExpression(), !3966)
  %1 = fadd float %v, %v, !dbg !3967
    #dbg_value(float %v, !3949, !DIExpression(), !3968)
  %2 = fcmp oeq float %1, %v, !dbg !3969
  br i1 %2, label %binop.rhs, label %binop.done, !dbg !3962

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(float %v, !3949, !DIExpression(), !3970)
  %3 = fcmp ogt float %v, 0.000000e+00, !dbg !3971
  br label %binop.done, !dbg !3962

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ false, %switch.next ], [ %3, %binop.rhs ], !dbg !3972
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !3962

switch.body1:                                     ; preds = %binop.done
  call void @runtime.printstring(ptr @"runtime$string.36", i64 4, ptr undef), !dbg !3973
  ret void, !dbg !3974

switch.next2:                                     ; preds = %binop.done
    #dbg_value(float %v, !3949, !DIExpression(), !3975)
    #dbg_value(float %v, !3949, !DIExpression(), !3976)
  %5 = fadd float %v, %v, !dbg !3977
    #dbg_value(float %v, !3949, !DIExpression(), !3978)
  %6 = fcmp oeq float %5, %v, !dbg !3979
  br i1 %6, label %binop.rhs3, label %binop.done4, !dbg !3962

binop.rhs3:                                       ; preds = %switch.next2
    #dbg_value(float %v, !3949, !DIExpression(), !3980)
  %7 = fcmp olt float %v, 0.000000e+00, !dbg !3981
  br label %binop.done4, !dbg !3962

binop.done4:                                      ; preds = %binop.rhs3, %switch.next2
  %8 = phi i1 [ false, %switch.next2 ], [ %7, %binop.rhs3 ], !dbg !3982
  br i1 %8, label %switch.body5, label %switch.next6, !dbg !3962

switch.body5:                                     ; preds = %binop.done4
  call void @runtime.printstring(ptr @"runtime$string.37", i64 4, ptr undef), !dbg !3983
  ret void, !dbg !3984

switch.next6:                                     ; preds = %binop.done4
  store [14 x i8] zeroinitializer, ptr %buf, align 1, !dbg !3961
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !3985
  store i8 43, ptr %9, align 1, !dbg !3985
    #dbg_value(i64 0, !3950, !DIExpression(), !3986)
    #dbg_value(float %v, !3949, !DIExpression(), !3987)
  %10 = fcmp oeq float %v, 0.000000e+00, !dbg !3988
  br i1 %10, label %if.then, label %if.else, !dbg !3962

if.then:                                          ; preds = %switch.next6
    #dbg_value(float %v, !3949, !DIExpression(), !3989)
  %11 = fdiv float 1.000000e+00, %v, !dbg !3990
  %12 = fcmp olt float %11, 0.000000e+00, !dbg !3991
  br i1 %12, label %if.then7, label %if.done, !dbg !3962

if.then7:                                         ; preds = %if.then
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !3992
  store i8 45, ptr %13, align 1, !dbg !3992
  br label %if.done, !dbg !3962

if.done:                                          ; preds = %if.then19, %for.done18, %if.then7, %if.then
  %14 = phi float [ %v, %if.then ], [ %84, %for.done18 ], [ %v, %if.then7 ], [ %87, %if.then19 ], !dbg !3993
  %15 = phi i64 [ 0, %if.then ], [ %75, %for.done18 ], [ 0, %if.then7 ], [ %86, %if.then19 ], !dbg !3986
    #dbg_value(i64 0, !3951, !DIExpression(), !3994)
  br label %for.loop, !dbg !3962

for.loop:                                         ; preds = %lookup.next, %if.done
  %16 = phi float [ %14, %if.done ], [ %27, %lookup.next ], !dbg !3993
  %17 = phi i64 [ 0, %if.done ], [ %28, %lookup.next ], !dbg !3994
    #dbg_value(i64 %17, !3951, !DIExpression(), !3995)
  %18 = icmp slt i64 %17, 7, !dbg !3996
  br i1 %18, label %for.body, label %for.done, !dbg !3962

for.body:                                         ; preds = %for.loop
    #dbg_value(float %16, !3949, !DIExpression(), !3997)
  %abovemin = fcmp ole float 0xC3E0000000000000, %16, !dbg !3998
  %belowmax = fcmp ole float %16, 0x43DFFFFFC0000000, !dbg !3998
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3998
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3998
  %isnan = fcmp uno float %16, %16, !dbg !3998
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3998
  %normal = fptosi float %16 to i64, !dbg !3998
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3998
    #dbg_value(i64 %19, !3952, !DIExpression(), !3999)
    #dbg_value(i64 %17, !3951, !DIExpression(), !4000)
  %20 = add i64 %17, 2, !dbg !4001
    #dbg_value(i64 %19, !3952, !DIExpression(), !4002)
  %21 = add i64 %19, 48, !dbg !4003
  %22 = trunc i64 %21 to i8, !dbg !4004
  %23 = icmp uge i64 %20, 14, !dbg !4005
  br i1 %23, label %lookup.throw, label %lookup.next, !dbg !4005

lookup.next:                                      ; preds = %for.body
  %24 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 %20, !dbg !4005
  store i8 %22, ptr %24, align 1, !dbg !4005
    #dbg_value(i64 %19, !3952, !DIExpression(), !4006)
  %25 = sitofp i64 %19 to float, !dbg !4007
  %26 = fsub float %16, %25, !dbg !4008
    #dbg_value(float %26, !3949, !DIExpression(), !4008)
  %27 = fmul float %26, 1.000000e+01, !dbg !4009
    #dbg_value(float %27, !3949, !DIExpression(), !4009)
  %28 = add i64 %17, 1, !dbg !4010
    #dbg_value(i64 %28, !3951, !DIExpression(), !4010)
  br label %for.loop, !dbg !3962

for.done:                                         ; preds = %for.loop
  %29 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4011
  %30 = load i8, ptr %29, align 1, !dbg !4011
  %31 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 1, !dbg !4012
  store i8 %30, ptr %31, align 1, !dbg !4012
  %32 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4013
  store i8 46, ptr %32, align 1, !dbg !4013
  %33 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 9, !dbg !4014
  store i8 101, ptr %33, align 1, !dbg !4014
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4015
  store i8 43, ptr %34, align 1, !dbg !4015
    #dbg_value(i64 %15, !3950, !DIExpression(), !4016)
  %35 = icmp slt i64 %15, 0, !dbg !4017
  br i1 %35, label %if.then8, label %if.done9, !dbg !3962

if.then8:                                         ; preds = %for.done
    #dbg_value(i64 %15, !3950, !DIExpression(), !4018)
  %36 = sub i64 0, %15, !dbg !4019
    #dbg_value(i64 %36, !3950, !DIExpression(), !4020)
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4021
  store i8 45, ptr %37, align 1, !dbg !4021
  br label %if.done9, !dbg !3962

if.done9:                                         ; preds = %if.then8, %for.done
  %38 = phi i64 [ %15, %for.done ], [ %36, %if.then8 ], !dbg !3986
    #dbg_value(i64 %38, !3950, !DIExpression(), !4022)
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !4023
  %40 = and i1 false, %39, !dbg !4023
  %41 = select i1 %40, i64 1, i64 100, !dbg !4023
  %42 = sdiv i64 %38, %41, !dbg !4023
  %43 = trunc i64 %42 to i8, !dbg !4024
  %44 = add i8 %43, 48, !dbg !4025
  %45 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 11, !dbg !4026
  store i8 %44, ptr %45, align 1, !dbg !4026
    #dbg_value(i64 %38, !3950, !DIExpression(), !4027)
  %46 = icmp eq i64 %38, -9223372036854775808, !dbg !4028
  %47 = and i1 false, %46, !dbg !4028
  %48 = select i1 %47, i64 1, i64 10, !dbg !4028
  %49 = sdiv i64 %38, %48, !dbg !4028
  %50 = trunc i64 %49 to i8, !dbg !4029
  %51 = urem i8 %50, 10, !dbg !4030
  %52 = add i8 %51, 48, !dbg !4031
  %53 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 12, !dbg !4032
  store i8 %52, ptr %53, align 1, !dbg !4032
    #dbg_value(i64 %38, !3950, !DIExpression(), !4033)
  %54 = icmp eq i64 %38, -9223372036854775808, !dbg !4034
  %55 = and i1 false, %54, !dbg !4034
  %56 = select i1 %55, i64 1, i64 10, !dbg !4034
  %57 = srem i64 %38, %56, !dbg !4034
  %58 = trunc i64 %57 to i8, !dbg !4035
  %59 = add i8 %58, 48, !dbg !4036
  %60 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 13, !dbg !4037
  store i8 %59, ptr %60, align 1, !dbg !4037
  %61 = load [14 x i8], ptr %buf, align 1, !dbg !4038
    #dbg_value([14 x i8] %61, !3953, !DIExpression(), !4038)
  br label %rangeindex.loop, !dbg !3962

rangeindex.loop:                                  ; preds = %lookup.next21, %if.done9
  %62 = phi i64 [ -1, %if.done9 ], [ %63, %lookup.next21 ], !dbg !3962
  %63 = add i64 %62, 1, !dbg !3962
  %64 = icmp slt i64 %63, 14, !dbg !3962
  br i1 %64, label %rangeindex.body, label %rangeindex.done, !dbg !3962

rangeindex.body:                                  ; preds = %rangeindex.loop
  %65 = icmp uge i64 %63, 14, !dbg !4038
  br i1 %65, label %lookup.throw20, label %lookup.next21, !dbg !4038

lookup.next21:                                    ; preds = %rangeindex.body
  call void @llvm.lifetime.start.p0(i64 14, ptr %index.alloca), !dbg !3961
  store [14 x i8] %61, ptr %index.alloca, align 1, !dbg !3961
  %index.gep = getelementptr inbounds [14 x i8], ptr %index.alloca, i32 0, i64 %63, !dbg !3961
  %index.load = load i8, ptr %index.gep, align 1, !dbg !3961
  call void @llvm.lifetime.end.p0(i64 14, ptr %index.alloca), !dbg !3961
    #dbg_value(i8 %index.load, !3955, !DIExpression(), !4039)
    #dbg_value(i8 %index.load, !3955, !DIExpression(), !4040)
  call void @runtime.putchar(i8 %index.load, ptr undef), !dbg !4041
  br label %rangeindex.loop, !dbg !3962

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret void, !dbg !4042

if.else:                                          ; preds = %switch.next6
    #dbg_value(float %v, !3949, !DIExpression(), !4043)
  %66 = fcmp olt float %v, 0.000000e+00, !dbg !4044
  br i1 %66, label %if.then10, label %for.loop11, !dbg !3962

if.then10:                                        ; preds = %if.else
    #dbg_value(float %v, !3949, !DIExpression(), !4045)
  %67 = fneg float %v, !dbg !4046
    #dbg_value(float %67, !3949, !DIExpression(), !4047)
  %68 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4048
  store i8 45, ptr %68, align 1, !dbg !4048
  br label %for.loop11, !dbg !3962

for.loop11:                                       ; preds = %for.body12, %if.then10, %if.else
  %69 = phi float [ %v, %if.else ], [ %73, %for.body12 ], [ %67, %if.then10 ], !dbg !3993
  %70 = phi i64 [ 0, %if.else ], [ %72, %for.body12 ], [ 0, %if.then10 ], !dbg !3986
    #dbg_value(float %69, !3949, !DIExpression(), !4049)
  %71 = fcmp oge float %69, 1.000000e+01, !dbg !4050
  br i1 %71, label %for.body12, label %for.loop13, !dbg !3962

for.body12:                                       ; preds = %for.loop11
  %72 = add i64 %70, 1, !dbg !4051
    #dbg_value(i64 %72, !3950, !DIExpression(), !4051)
  %73 = fdiv float %69, 1.000000e+01, !dbg !4052
    #dbg_value(float %73, !3949, !DIExpression(), !4052)
  br label %for.loop11, !dbg !3962

for.loop13:                                       ; preds = %for.body14, %for.loop11
  %74 = phi float [ %69, %for.loop11 ], [ %78, %for.body14 ], !dbg !3993
  %75 = phi i64 [ %70, %for.loop11 ], [ %77, %for.body14 ], !dbg !3986
    #dbg_value(float %74, !3949, !DIExpression(), !4053)
  %76 = fcmp olt float %74, 1.000000e+00, !dbg !4054
  br i1 %76, label %for.body14, label %for.done15, !dbg !3962

for.body14:                                       ; preds = %for.loop13
  %77 = sub i64 %75, 1, !dbg !4055
    #dbg_value(i64 %77, !3950, !DIExpression(), !4055)
  %78 = fmul float %74, 1.000000e+01, !dbg !4056
    #dbg_value(float %78, !3949, !DIExpression(), !4056)
  br label %for.loop13, !dbg !3962

for.done15:                                       ; preds = %for.loop13
    #dbg_value(float 5.000000e+00, !3956, !DIExpression(), !4057)
    #dbg_value(i64 0, !3957, !DIExpression(), !4058)
  br label %for.loop16, !dbg !3962

for.loop16:                                       ; preds = %for.body17, %for.done15
  %79 = phi float [ 5.000000e+00, %for.done15 ], [ %82, %for.body17 ], !dbg !4057
  %80 = phi i64 [ 0, %for.done15 ], [ %83, %for.body17 ], !dbg !4058
    #dbg_value(i64 %80, !3957, !DIExpression(), !4059)
  %81 = icmp slt i64 %80, 7, !dbg !4060
  br i1 %81, label %for.body17, label %for.done18, !dbg !3962

for.body17:                                       ; preds = %for.loop16
  %82 = fdiv float %79, 1.000000e+01, !dbg !4061
    #dbg_value(float %82, !3956, !DIExpression(), !4061)
  %83 = add i64 %80, 1, !dbg !4062
    #dbg_value(i64 %83, !3957, !DIExpression(), !4062)
  br label %for.loop16, !dbg !3962

for.done18:                                       ; preds = %for.loop16
    #dbg_value(float %79, !3956, !DIExpression(), !4063)
  %84 = fadd float %74, %79, !dbg !4064
    #dbg_value(float %84, !3949, !DIExpression(), !4064)
    #dbg_value(float %84, !3949, !DIExpression(), !4065)
  %85 = fcmp oge float %84, 1.000000e+01, !dbg !4066
  br i1 %85, label %if.then19, label %if.done, !dbg !3962

if.then19:                                        ; preds = %for.done18
  %86 = add i64 %75, 1, !dbg !4067
    #dbg_value(i64 %86, !3950, !DIExpression(), !4067)
  %87 = fdiv float %84, 1.000000e+01, !dbg !4068
    #dbg_value(float %87, !3949, !DIExpression(), !4068)
  br label %if.done, !dbg !3962

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4005
  unreachable, !dbg !4005

lookup.throw20:                                   ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4038
  unreachable, !dbg !4038
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printfloat64(double %v, ptr %context) unnamed_addr #1 !dbg !4069 {
entry:
    #dbg_value(double %v, !4071, !DIExpression(), !4079)
    #dbg_value(double %v, !4071, !DIExpression(), !4080)
    #dbg_value(double %v, !4071, !DIExpression(), !4081)
  %index.alloca = alloca [14 x i8], align 1, !dbg !4082
  %buf = alloca [14 x i8], align 1, !dbg !4082
  %0 = fcmp une double %v, %v, !dbg !4082
  br i1 %0, label %switch.body, label %switch.next, !dbg !4083

switch.body:                                      ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.38", i64 3, ptr undef), !dbg !4084
  ret void, !dbg !4085

switch.next:                                      ; preds = %entry
    #dbg_value(double %v, !4071, !DIExpression(), !4086)
    #dbg_value(double %v, !4071, !DIExpression(), !4087)
  %1 = fadd double %v, %v, !dbg !4088
    #dbg_value(double %v, !4071, !DIExpression(), !4089)
  %2 = fcmp oeq double %1, %v, !dbg !4090
  br i1 %2, label %binop.rhs, label %binop.done, !dbg !4083

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(double %v, !4071, !DIExpression(), !4091)
  %3 = fcmp ogt double %v, 0.000000e+00, !dbg !4092
  br label %binop.done, !dbg !4083

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ false, %switch.next ], [ %3, %binop.rhs ], !dbg !4093
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4083

switch.body1:                                     ; preds = %binop.done
  call void @runtime.printstring(ptr @"runtime$string.39", i64 4, ptr undef), !dbg !4094
  ret void, !dbg !4095

switch.next2:                                     ; preds = %binop.done
    #dbg_value(double %v, !4071, !DIExpression(), !4096)
    #dbg_value(double %v, !4071, !DIExpression(), !4097)
  %5 = fadd double %v, %v, !dbg !4098
    #dbg_value(double %v, !4071, !DIExpression(), !4099)
  %6 = fcmp oeq double %5, %v, !dbg !4100
  br i1 %6, label %binop.rhs3, label %binop.done4, !dbg !4083

binop.rhs3:                                       ; preds = %switch.next2
    #dbg_value(double %v, !4071, !DIExpression(), !4101)
  %7 = fcmp olt double %v, 0.000000e+00, !dbg !4102
  br label %binop.done4, !dbg !4083

binop.done4:                                      ; preds = %binop.rhs3, %switch.next2
  %8 = phi i1 [ false, %switch.next2 ], [ %7, %binop.rhs3 ], !dbg !4103
  br i1 %8, label %switch.body5, label %switch.next6, !dbg !4083

switch.body5:                                     ; preds = %binop.done4
  call void @runtime.printstring(ptr @"runtime$string.40", i64 4, ptr undef), !dbg !4104
  ret void, !dbg !4105

switch.next6:                                     ; preds = %binop.done4
  store [14 x i8] zeroinitializer, ptr %buf, align 1, !dbg !4082
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4106
  store i8 43, ptr %9, align 1, !dbg !4106
    #dbg_value(i64 0, !4072, !DIExpression(), !4107)
    #dbg_value(double %v, !4071, !DIExpression(), !4108)
  %10 = fcmp oeq double %v, 0.000000e+00, !dbg !4109
  br i1 %10, label %if.then, label %if.else, !dbg !4083

if.then:                                          ; preds = %switch.next6
    #dbg_value(double %v, !4071, !DIExpression(), !4110)
  %11 = fdiv double 1.000000e+00, %v, !dbg !4111
  %12 = fcmp olt double %11, 0.000000e+00, !dbg !4112
  br i1 %12, label %if.then7, label %if.done, !dbg !4083

if.then7:                                         ; preds = %if.then
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4113
  store i8 45, ptr %13, align 1, !dbg !4113
  br label %if.done, !dbg !4083

if.done:                                          ; preds = %if.then19, %for.done18, %if.then7, %if.then
  %14 = phi double [ %v, %if.then ], [ %84, %for.done18 ], [ %v, %if.then7 ], [ %87, %if.then19 ], !dbg !4114
  %15 = phi i64 [ 0, %if.then ], [ %75, %for.done18 ], [ 0, %if.then7 ], [ %86, %if.then19 ], !dbg !4107
    #dbg_value(i64 0, !4073, !DIExpression(), !4115)
  br label %for.loop, !dbg !4083

for.loop:                                         ; preds = %lookup.next, %if.done
  %16 = phi double [ %14, %if.done ], [ %27, %lookup.next ], !dbg !4114
  %17 = phi i64 [ 0, %if.done ], [ %28, %lookup.next ], !dbg !4115
    #dbg_value(i64 %17, !4073, !DIExpression(), !4116)
  %18 = icmp slt i64 %17, 7, !dbg !4117
  br i1 %18, label %for.body, label %for.done, !dbg !4083

for.body:                                         ; preds = %for.loop
    #dbg_value(double %16, !4071, !DIExpression(), !4118)
  %abovemin = fcmp ole double 0xC3E0000000000000, %16, !dbg !4119
  %belowmax = fcmp ole double %16, 0x43DFFFFFFFFFFFFE, !dbg !4119
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4119
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4119
  %isnan = fcmp uno double %16, %16, !dbg !4119
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4119
  %normal = fptosi double %16 to i64, !dbg !4119
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4119
    #dbg_value(i64 %19, !4074, !DIExpression(), !4120)
    #dbg_value(i64 %17, !4073, !DIExpression(), !4121)
  %20 = add i64 %17, 2, !dbg !4122
    #dbg_value(i64 %19, !4074, !DIExpression(), !4123)
  %21 = add i64 %19, 48, !dbg !4124
  %22 = trunc i64 %21 to i8, !dbg !4125
  %23 = icmp uge i64 %20, 14, !dbg !4126
  br i1 %23, label %lookup.throw, label %lookup.next, !dbg !4126

lookup.next:                                      ; preds = %for.body
  %24 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 %20, !dbg !4126
  store i8 %22, ptr %24, align 1, !dbg !4126
    #dbg_value(i64 %19, !4074, !DIExpression(), !4127)
  %25 = sitofp i64 %19 to double, !dbg !4128
  %26 = fsub double %16, %25, !dbg !4129
    #dbg_value(double %26, !4071, !DIExpression(), !4129)
  %27 = fmul double %26, 1.000000e+01, !dbg !4130
    #dbg_value(double %27, !4071, !DIExpression(), !4130)
  %28 = add i64 %17, 1, !dbg !4131
    #dbg_value(i64 %28, !4073, !DIExpression(), !4131)
  br label %for.loop, !dbg !4083

for.done:                                         ; preds = %for.loop
  %29 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4132
  %30 = load i8, ptr %29, align 1, !dbg !4132
  %31 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 1, !dbg !4133
  store i8 %30, ptr %31, align 1, !dbg !4133
  %32 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4134
  store i8 46, ptr %32, align 1, !dbg !4134
  %33 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 9, !dbg !4135
  store i8 101, ptr %33, align 1, !dbg !4135
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4136
  store i8 43, ptr %34, align 1, !dbg !4136
    #dbg_value(i64 %15, !4072, !DIExpression(), !4137)
  %35 = icmp slt i64 %15, 0, !dbg !4138
  br i1 %35, label %if.then8, label %if.done9, !dbg !4083

if.then8:                                         ; preds = %for.done
    #dbg_value(i64 %15, !4072, !DIExpression(), !4139)
  %36 = sub i64 0, %15, !dbg !4140
    #dbg_value(i64 %36, !4072, !DIExpression(), !4141)
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4142
  store i8 45, ptr %37, align 1, !dbg !4142
  br label %if.done9, !dbg !4083

if.done9:                                         ; preds = %if.then8, %for.done
  %38 = phi i64 [ %15, %for.done ], [ %36, %if.then8 ], !dbg !4107
    #dbg_value(i64 %38, !4072, !DIExpression(), !4143)
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !4144
  %40 = and i1 false, %39, !dbg !4144
  %41 = select i1 %40, i64 1, i64 100, !dbg !4144
  %42 = sdiv i64 %38, %41, !dbg !4144
  %43 = trunc i64 %42 to i8, !dbg !4145
  %44 = add i8 %43, 48, !dbg !4146
  %45 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 11, !dbg !4147
  store i8 %44, ptr %45, align 1, !dbg !4147
    #dbg_value(i64 %38, !4072, !DIExpression(), !4148)
  %46 = icmp eq i64 %38, -9223372036854775808, !dbg !4149
  %47 = and i1 false, %46, !dbg !4149
  %48 = select i1 %47, i64 1, i64 10, !dbg !4149
  %49 = sdiv i64 %38, %48, !dbg !4149
  %50 = trunc i64 %49 to i8, !dbg !4150
  %51 = urem i8 %50, 10, !dbg !4151
  %52 = add i8 %51, 48, !dbg !4152
  %53 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 12, !dbg !4153
  store i8 %52, ptr %53, align 1, !dbg !4153
    #dbg_value(i64 %38, !4072, !DIExpression(), !4154)
  %54 = icmp eq i64 %38, -9223372036854775808, !dbg !4155
  %55 = and i1 false, %54, !dbg !4155
  %56 = select i1 %55, i64 1, i64 10, !dbg !4155
  %57 = srem i64 %38, %56, !dbg !4155
  %58 = trunc i64 %57 to i8, !dbg !4156
  %59 = add i8 %58, 48, !dbg !4157
  %60 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 13, !dbg !4158
  store i8 %59, ptr %60, align 1, !dbg !4158
  %61 = load [14 x i8], ptr %buf, align 1, !dbg !4159
    #dbg_value([14 x i8] %61, !4075, !DIExpression(), !4159)
  br label %rangeindex.loop, !dbg !4083

rangeindex.loop:                                  ; preds = %lookup.next21, %if.done9
  %62 = phi i64 [ -1, %if.done9 ], [ %63, %lookup.next21 ], !dbg !4083
  %63 = add i64 %62, 1, !dbg !4083
  %64 = icmp slt i64 %63, 14, !dbg !4083
  br i1 %64, label %rangeindex.body, label %rangeindex.done, !dbg !4083

rangeindex.body:                                  ; preds = %rangeindex.loop
  %65 = icmp uge i64 %63, 14, !dbg !4159
  br i1 %65, label %lookup.throw20, label %lookup.next21, !dbg !4159

lookup.next21:                                    ; preds = %rangeindex.body
  call void @llvm.lifetime.start.p0(i64 14, ptr %index.alloca), !dbg !4082
  store [14 x i8] %61, ptr %index.alloca, align 1, !dbg !4082
  %index.gep = getelementptr inbounds [14 x i8], ptr %index.alloca, i32 0, i64 %63, !dbg !4082
  %index.load = load i8, ptr %index.gep, align 1, !dbg !4082
  call void @llvm.lifetime.end.p0(i64 14, ptr %index.alloca), !dbg !4082
    #dbg_value(i8 %index.load, !4076, !DIExpression(), !4160)
    #dbg_value(i8 %index.load, !4076, !DIExpression(), !4161)
  call void @runtime.putchar(i8 %index.load, ptr undef), !dbg !4162
  br label %rangeindex.loop, !dbg !4083

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret void, !dbg !4163

if.else:                                          ; preds = %switch.next6
    #dbg_value(double %v, !4071, !DIExpression(), !4164)
  %66 = fcmp olt double %v, 0.000000e+00, !dbg !4165
  br i1 %66, label %if.then10, label %for.loop11, !dbg !4083

if.then10:                                        ; preds = %if.else
    #dbg_value(double %v, !4071, !DIExpression(), !4166)
  %67 = fneg double %v, !dbg !4167
    #dbg_value(double %67, !4071, !DIExpression(), !4168)
  %68 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4169
  store i8 45, ptr %68, align 1, !dbg !4169
  br label %for.loop11, !dbg !4083

for.loop11:                                       ; preds = %for.body12, %if.then10, %if.else
  %69 = phi double [ %v, %if.else ], [ %73, %for.body12 ], [ %67, %if.then10 ], !dbg !4114
  %70 = phi i64 [ 0, %if.else ], [ %72, %for.body12 ], [ 0, %if.then10 ], !dbg !4107
    #dbg_value(double %69, !4071, !DIExpression(), !4170)
  %71 = fcmp oge double %69, 1.000000e+01, !dbg !4171
  br i1 %71, label %for.body12, label %for.loop13, !dbg !4083

for.body12:                                       ; preds = %for.loop11
  %72 = add i64 %70, 1, !dbg !4172
    #dbg_value(i64 %72, !4072, !DIExpression(), !4172)
  %73 = fdiv double %69, 1.000000e+01, !dbg !4173
    #dbg_value(double %73, !4071, !DIExpression(), !4173)
  br label %for.loop11, !dbg !4083

for.loop13:                                       ; preds = %for.body14, %for.loop11
  %74 = phi double [ %69, %for.loop11 ], [ %78, %for.body14 ], !dbg !4114
  %75 = phi i64 [ %70, %for.loop11 ], [ %77, %for.body14 ], !dbg !4107
    #dbg_value(double %74, !4071, !DIExpression(), !4174)
  %76 = fcmp olt double %74, 1.000000e+00, !dbg !4175
  br i1 %76, label %for.body14, label %for.done15, !dbg !4083

for.body14:                                       ; preds = %for.loop13
  %77 = sub i64 %75, 1, !dbg !4176
    #dbg_value(i64 %77, !4072, !DIExpression(), !4176)
  %78 = fmul double %74, 1.000000e+01, !dbg !4177
    #dbg_value(double %78, !4071, !DIExpression(), !4177)
  br label %for.loop13, !dbg !4083

for.done15:                                       ; preds = %for.loop13
    #dbg_value(double 5.000000e+00, !4077, !DIExpression(), !4178)
    #dbg_value(i64 0, !4078, !DIExpression(), !4179)
  br label %for.loop16, !dbg !4083

for.loop16:                                       ; preds = %for.body17, %for.done15
  %79 = phi double [ 5.000000e+00, %for.done15 ], [ %82, %for.body17 ], !dbg !4178
  %80 = phi i64 [ 0, %for.done15 ], [ %83, %for.body17 ], !dbg !4179
    #dbg_value(i64 %80, !4078, !DIExpression(), !4180)
  %81 = icmp slt i64 %80, 7, !dbg !4181
  br i1 %81, label %for.body17, label %for.done18, !dbg !4083

for.body17:                                       ; preds = %for.loop16
  %82 = fdiv double %79, 1.000000e+01, !dbg !4182
    #dbg_value(double %82, !4077, !DIExpression(), !4182)
  %83 = add i64 %80, 1, !dbg !4183
    #dbg_value(i64 %83, !4078, !DIExpression(), !4183)
  br label %for.loop16, !dbg !4083

for.done18:                                       ; preds = %for.loop16
    #dbg_value(double %79, !4077, !DIExpression(), !4184)
  %84 = fadd double %74, %79, !dbg !4185
    #dbg_value(double %84, !4071, !DIExpression(), !4185)
    #dbg_value(double %84, !4071, !DIExpression(), !4186)
  %85 = fcmp oge double %84, 1.000000e+01, !dbg !4187
  br i1 %85, label %if.then19, label %if.done, !dbg !4083

if.then19:                                        ; preds = %for.done18
  %86 = add i64 %75, 1, !dbg !4188
    #dbg_value(i64 %86, !4072, !DIExpression(), !4188)
  %87 = fdiv double %84, 1.000000e+01, !dbg !4189
    #dbg_value(double %87, !4071, !DIExpression(), !4189)
  br label %if.done, !dbg !4083

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4126
  unreachable, !dbg !4126

lookup.throw20:                                   ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4159
  unreachable, !dbg !4159
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printcomplex64(float %c.r, float %c.i, ptr %context) unnamed_addr #1 !dbg !4190 {
entry:
  %0 = insertvalue { float, float } zeroinitializer, float %c.r, 0, !dbg !4195
  %1 = insertvalue { float, float } %0, float %c.i, 1, !dbg !4195
    #dbg_value(float %c.r, !4194, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4195)
    #dbg_value(float %c.i, !4194, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4195)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4196
    #dbg_value({ float, float } %1, !4194, !DIExpression(), !4197)
  %real = extractvalue { float, float } %1, 0, !dbg !4198
  call void @runtime.printfloat32(float %real, ptr undef), !dbg !4199
    #dbg_value({ float, float } %1, !4194, !DIExpression(), !4200)
  %imag = extractvalue { float, float } %1, 1, !dbg !4201
  call void @runtime.printfloat32(float %imag, ptr undef), !dbg !4202
  call void @runtime.printstring(ptr @"runtime$string.41", i64 2, ptr undef), !dbg !4203
  ret void, !dbg !4204
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printcomplex128(double %c.r, double %c.i, ptr %context) unnamed_addr #1 !dbg !4205 {
entry:
  %0 = insertvalue { double, double } zeroinitializer, double %c.r, 0, !dbg !4210
  %1 = insertvalue { double, double } %0, double %c.i, 1, !dbg !4210
    #dbg_value(double %c.r, !4209, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4210)
    #dbg_value(double %c.i, !4209, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4210)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4211
    #dbg_value({ double, double } %1, !4209, !DIExpression(), !4212)
  %real = extractvalue { double, double } %1, 0, !dbg !4213
  call void @runtime.printfloat64(double %real, ptr undef), !dbg !4214
    #dbg_value({ double, double } %1, !4209, !DIExpression(), !4215)
  %imag = extractvalue { double, double } %1, 1, !dbg !4216
  call void @runtime.printfloat64(double %imag, ptr undef), !dbg !4217
  call void @runtime.printstring(ptr @"runtime$string.42", i64 2, ptr undef), !dbg !4218
  ret void, !dbg !4219
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
define internal void @runtime._panic(ptr %message.typecode, ptr %message.value, ptr %context) #1 !dbg !4220 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %message.typecode, 0, !dbg !4223
  %1 = insertvalue { ptr, ptr } %0, ptr %message.value, 1, !dbg !4223
    #dbg_value(ptr %message.typecode, !4222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4223)
    #dbg_value(ptr %message.value, !4222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4223)
    #dbg_value({ ptr, ptr } %1, !4222, !DIExpression(), !4224)
  %2 = extractvalue { ptr, ptr } %1, 0, !dbg !4225
  %3 = extractvalue { ptr, ptr } %1, 1, !dbg !4225
  call void @runtime.panicOrGoexit(ptr %2, ptr %3, i8 1, ptr undef), !dbg !4225
  ret void, !dbg !4226
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @runtime.stringEqual(ptr readonly %x.data, i64 %x.len, ptr readonly %y.data, i64 %y.len, ptr %context) #1 !dbg !4227 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %x.data, 0, !dbg !4235
  %1 = insertvalue %runtime._string %0, i64 %x.len, 1, !dbg !4235
    #dbg_value(ptr %x.data, !4232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4235)
    #dbg_value(i64 %x.len, !4232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4235)
  %2 = insertvalue %runtime._string zeroinitializer, ptr %y.data, 0, !dbg !4235
  %3 = insertvalue %runtime._string %2, i64 %y.len, 1, !dbg !4235
    #dbg_value(ptr %y.data, !4233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4235)
    #dbg_value(i64 %y.len, !4233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4235)
    #dbg_value(%runtime._string %1, !4232, !DIExpression(), !4236)
  %len = extractvalue %runtime._string %1, 1, !dbg !4237
    #dbg_value(%runtime._string %3, !4233, !DIExpression(), !4238)
  %len3 = extractvalue %runtime._string %3, 1, !dbg !4239
  %4 = icmp ne i64 %len, %len3, !dbg !4240
  br i1 %4, label %if.then, label %if.done, !dbg !4241

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !4242

if.done:                                          ; preds = %entry
    #dbg_value(i64 0, !4234, !DIExpression(), !4243)
  br label %for.loop, !dbg !4241

for.loop:                                         ; preds = %if.done2, %if.done
  %5 = phi i64 [ 0, %if.done ], [ %14, %if.done2 ], !dbg !4243
    #dbg_value(i64 %5, !4234, !DIExpression(), !4244)
    #dbg_value(%runtime._string %1, !4232, !DIExpression(), !4245)
  %len4 = extractvalue %runtime._string %1, 1, !dbg !4246
  %6 = icmp slt i64 %5, %len4, !dbg !4247
  br i1 %6, label %for.body, label %for.done, !dbg !4241

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4234, !DIExpression(), !4248)
    #dbg_value(%runtime._string %1, !4232, !DIExpression(), !4249)
  %len5 = extractvalue %runtime._string %1, 1, !dbg !4250
  %7 = extractvalue %runtime._string %1, 0, !dbg !4250
  %8 = getelementptr inbounds i8, ptr %7, i64 %5, !dbg !4250
  %9 = load i8, ptr %8, align 1, !dbg !4250
    #dbg_value(i64 %5, !4234, !DIExpression(), !4251)
    #dbg_value(%runtime._string %3, !4233, !DIExpression(), !4252)
  %len6 = extractvalue %runtime._string %3, 1, !dbg !4253
  %10 = extractvalue %runtime._string %3, 0, !dbg !4253
  %11 = getelementptr inbounds i8, ptr %10, i64 %5, !dbg !4253
  %12 = load i8, ptr %11, align 1, !dbg !4253
  %13 = icmp ne i8 %9, %12, !dbg !4254
  br i1 %13, label %if.then1, label %if.done2, !dbg !4241

if.then1:                                         ; preds = %for.body
  ret i1 false, !dbg !4255

if.done2:                                         ; preds = %for.body
  %14 = add i64 %5, 1, !dbg !4256
    #dbg_value(i64 %14, !4234, !DIExpression(), !4256)
  br label %for.loop, !dbg !4241

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4257
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.slicePanic(ptr %context) #1 !dbg !4258 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4259
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.20", i64 18, ptr undef), !dbg !4260
  ret void, !dbg !4261
}

; Function Attrs: nounwind uwtable(sync)
define double @fminimum(double %x, double %y) #1 !dbg !4262 {
entry:
    #dbg_value(double %x, !4266, !DIExpression(), !4268)
    #dbg_value(double %y, !4267, !DIExpression(), !4268)
    #dbg_value(double %x, !4266, !DIExpression(), !4269)
    #dbg_value(double %y, !4267, !DIExpression(), !4270)
  %0 = call double @runtime.minimumFloat64(double %x, double %y, ptr undef), !dbg !4271
  ret double %0, !dbg !4272
}

; Function Attrs: nounwind uwtable(sync)
define internal double @runtime.minimumFloat64(double %x, double %y, ptr %context) unnamed_addr #1 !dbg !4273 {
entry:
    #dbg_value(double %x, !4275, !DIExpression(), !4277)
    #dbg_value(double %y, !4276, !DIExpression(), !4277)
    #dbg_value(double %x, !4275, !DIExpression(), !4278)
    #dbg_value(double %y, !4276, !DIExpression(), !4279)
  %0 = call double @"runtime.minimumFloat[float64 int64]"(double %x, double %y, i64 9218868437227405313, i64 9223372036854775807, ptr undef), !dbg !4280
  ret double %0, !dbg !4281
}

; Function Attrs: nounwind uwtable(sync)
define internal double @"runtime.minimumFloat[float64 int64]"(double %x, double %y, i64 %minPosNaN, i64 %magMask, ptr %context) unnamed_addr #1 !dbg !4282 {
entry:
    #dbg_value(double %x, !4286, !DIExpression(), !4292)
    #dbg_value(double %y, !4287, !DIExpression(), !4292)
    #dbg_value(i64 %minPosNaN, !4288, !DIExpression(), !4292)
    #dbg_value(i64 %magMask, !4289, !DIExpression(), !4292)
  %x6 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4293
  store double %x, ptr %x6, align 8, !dbg !4293
  %y7 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4294
  store double %y, ptr %y7, align 8, !dbg !4294
  %0 = load i64, ptr %x6, align 8, !dbg !4295
    #dbg_value(i64 %0, !4290, !DIExpression(), !4296)
  %1 = load i64, ptr %y7, align 8, !dbg !4297
    #dbg_value(i64 %1, !4291, !DIExpression(), !4298)
    #dbg_value(i64 %0, !4290, !DIExpression(), !4299)
    #dbg_value(i64 %minPosNaN, !4288, !DIExpression(), !4300)
  %2 = icmp sge i64 %0, %minPosNaN, !dbg !4301
  br i1 %2, label %switch.body, label %switch.next, !dbg !4302

switch.body:                                      ; preds = %entry
  %3 = load double, ptr %x6, align 8, !dbg !4303
    #dbg_value(double %3, !4286, !DIExpression(), !4303)
  ret double %3, !dbg !4304

switch.next:                                      ; preds = %entry
    #dbg_value(i64 %1, !4291, !DIExpression(), !4305)
    #dbg_value(i64 %minPosNaN, !4288, !DIExpression(), !4306)
  %4 = icmp sge i64 %1, %minPosNaN, !dbg !4307
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4302

switch.body1:                                     ; preds = %switch.next
  %5 = load double, ptr %y7, align 8, !dbg !4308
    #dbg_value(double %5, !4287, !DIExpression(), !4308)
  ret double %5, !dbg !4309

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i64 %0, !4290, !DIExpression(), !4310)
  %6 = icmp slt i64 %0, 0, !dbg !4311
  br i1 %6, label %if.then, label %if.done, !dbg !4302

if.then:                                          ; preds = %switch.next2
    #dbg_value(i64 %magMask, !4289, !DIExpression(), !4312)
  %7 = xor i64 %0, %magMask, !dbg !4313
    #dbg_value(i64 %7, !4290, !DIExpression(), !4313)
  br label %if.done, !dbg !4302

if.done:                                          ; preds = %if.then, %switch.next2
  %8 = phi i64 [ %0, %switch.next2 ], [ %7, %if.then ], !dbg !4296
    #dbg_value(i64 %1, !4291, !DIExpression(), !4314)
  %9 = icmp slt i64 %1, 0, !dbg !4315
  br i1 %9, label %if.then3, label %if.done4, !dbg !4302

if.then3:                                         ; preds = %if.done
    #dbg_value(i64 %magMask, !4289, !DIExpression(), !4316)
  %10 = xor i64 %1, %magMask, !dbg !4317
    #dbg_value(i64 %10, !4291, !DIExpression(), !4317)
  br label %if.done4, !dbg !4302

if.done4:                                         ; preds = %if.then3, %if.done
  %11 = phi i64 [ %1, %if.done ], [ %10, %if.then3 ], !dbg !4298
    #dbg_value(i64 %8, !4290, !DIExpression(), !4318)
    #dbg_value(i64 %11, !4291, !DIExpression(), !4319)
  %12 = icmp sle i64 %8, %11, !dbg !4320
  br i1 %12, label %if.then5, label %if.else, !dbg !4302

if.then5:                                         ; preds = %if.done4
  %13 = load double, ptr %x6, align 8, !dbg !4321
    #dbg_value(double %13, !4286, !DIExpression(), !4321)
  ret double %13, !dbg !4322

if.else:                                          ; preds = %if.done4
  %14 = load double, ptr %y7, align 8, !dbg !4323
    #dbg_value(double %14, !4287, !DIExpression(), !4323)
  ret double %14, !dbg !4324
}

; Function Attrs: nounwind uwtable(sync)
define float @fminimumf(float %x, float %y) #1 !dbg !4325 {
entry:
    #dbg_value(float %x, !4329, !DIExpression(), !4331)
    #dbg_value(float %y, !4330, !DIExpression(), !4331)
    #dbg_value(float %x, !4329, !DIExpression(), !4332)
    #dbg_value(float %y, !4330, !DIExpression(), !4333)
  %0 = call float @runtime.minimumFloat32(float %x, float %y, ptr undef), !dbg !4334
  ret float %0, !dbg !4335
}

; Function Attrs: nounwind uwtable(sync)
define internal float @runtime.minimumFloat32(float %x, float %y, ptr %context) unnamed_addr #1 !dbg !4336 {
entry:
    #dbg_value(float %x, !4338, !DIExpression(), !4340)
    #dbg_value(float %y, !4339, !DIExpression(), !4340)
    #dbg_value(float %x, !4338, !DIExpression(), !4341)
    #dbg_value(float %y, !4339, !DIExpression(), !4342)
  %0 = call float @"runtime.minimumFloat[float32 int32]"(float %x, float %y, i32 2139095041, i32 2147483647, ptr undef), !dbg !4343
  ret float %0, !dbg !4344
}

; Function Attrs: nounwind uwtable(sync)
define internal float @"runtime.minimumFloat[float32 int32]"(float %x, float %y, i32 %minPosNaN, i32 %magMask, ptr %context) unnamed_addr #1 !dbg !4345 {
entry:
    #dbg_value(float %x, !4349, !DIExpression(), !4355)
    #dbg_value(float %y, !4350, !DIExpression(), !4355)
    #dbg_value(i32 %minPosNaN, !4351, !DIExpression(), !4355)
    #dbg_value(i32 %magMask, !4352, !DIExpression(), !4355)
  %x6 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4356
  store float %x, ptr %x6, align 4, !dbg !4356
  %y7 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4357
  store float %y, ptr %y7, align 4, !dbg !4357
  %0 = load i32, ptr %x6, align 4, !dbg !4358
    #dbg_value(i32 %0, !4353, !DIExpression(), !4359)
  %1 = load i32, ptr %y7, align 4, !dbg !4360
    #dbg_value(i32 %1, !4354, !DIExpression(), !4361)
    #dbg_value(i32 %0, !4353, !DIExpression(), !4362)
    #dbg_value(i32 %minPosNaN, !4351, !DIExpression(), !4363)
  %2 = icmp sge i32 %0, %minPosNaN, !dbg !4364
  br i1 %2, label %switch.body, label %switch.next, !dbg !4365

switch.body:                                      ; preds = %entry
  %3 = load float, ptr %x6, align 4, !dbg !4366
    #dbg_value(float %3, !4349, !DIExpression(), !4366)
  ret float %3, !dbg !4367

switch.next:                                      ; preds = %entry
    #dbg_value(i32 %1, !4354, !DIExpression(), !4368)
    #dbg_value(i32 %minPosNaN, !4351, !DIExpression(), !4369)
  %4 = icmp sge i32 %1, %minPosNaN, !dbg !4370
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4365

switch.body1:                                     ; preds = %switch.next
  %5 = load float, ptr %y7, align 4, !dbg !4371
    #dbg_value(float %5, !4350, !DIExpression(), !4371)
  ret float %5, !dbg !4372

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i32 %0, !4353, !DIExpression(), !4373)
  %6 = icmp slt i32 %0, 0, !dbg !4374
  br i1 %6, label %if.then, label %if.done, !dbg !4365

if.then:                                          ; preds = %switch.next2
    #dbg_value(i32 %magMask, !4352, !DIExpression(), !4375)
  %7 = xor i32 %0, %magMask, !dbg !4376
    #dbg_value(i32 %7, !4353, !DIExpression(), !4376)
  br label %if.done, !dbg !4365

if.done:                                          ; preds = %if.then, %switch.next2
  %8 = phi i32 [ %0, %switch.next2 ], [ %7, %if.then ], !dbg !4359
    #dbg_value(i32 %1, !4354, !DIExpression(), !4377)
  %9 = icmp slt i32 %1, 0, !dbg !4378
  br i1 %9, label %if.then3, label %if.done4, !dbg !4365

if.then3:                                         ; preds = %if.done
    #dbg_value(i32 %magMask, !4352, !DIExpression(), !4379)
  %10 = xor i32 %1, %magMask, !dbg !4380
    #dbg_value(i32 %10, !4354, !DIExpression(), !4380)
  br label %if.done4, !dbg !4365

if.done4:                                         ; preds = %if.then3, %if.done
  %11 = phi i32 [ %1, %if.done ], [ %10, %if.then3 ], !dbg !4361
    #dbg_value(i32 %8, !4353, !DIExpression(), !4381)
    #dbg_value(i32 %11, !4354, !DIExpression(), !4382)
  %12 = icmp sle i32 %8, %11, !dbg !4383
  br i1 %12, label %if.then5, label %if.else, !dbg !4365

if.then5:                                         ; preds = %if.done4
  %13 = load float, ptr %x6, align 4, !dbg !4384
    #dbg_value(float %13, !4349, !DIExpression(), !4384)
  ret float %13, !dbg !4385

if.else:                                          ; preds = %if.done4
  %14 = load float, ptr %y7, align 4, !dbg !4386
    #dbg_value(float %14, !4350, !DIExpression(), !4386)
  ret float %14, !dbg !4387
}

; Function Attrs: nounwind uwtable(sync)
define double @fmaximum(double %x, double %y) #1 !dbg !4388 {
entry:
    #dbg_value(double %x, !4390, !DIExpression(), !4392)
    #dbg_value(double %y, !4391, !DIExpression(), !4392)
    #dbg_value(double %x, !4390, !DIExpression(), !4393)
    #dbg_value(double %y, !4391, !DIExpression(), !4394)
  %0 = call double @runtime.maximumFloat64(double %x, double %y, ptr undef), !dbg !4395
  ret double %0, !dbg !4396
}

; Function Attrs: nounwind uwtable(sync)
define internal double @runtime.maximumFloat64(double %x, double %y, ptr %context) unnamed_addr #1 !dbg !4397 {
entry:
    #dbg_value(double %x, !4399, !DIExpression(), !4401)
    #dbg_value(double %y, !4400, !DIExpression(), !4401)
    #dbg_value(double %x, !4399, !DIExpression(), !4402)
    #dbg_value(double %y, !4400, !DIExpression(), !4403)
  %0 = call double @"runtime.maximumFloat[float64 int64]"(double %x, double %y, i64 9218868437227405313, i64 9223372036854775807, ptr undef), !dbg !4404
  ret double %0, !dbg !4405
}

; Function Attrs: nounwind uwtable(sync)
define internal double @"runtime.maximumFloat[float64 int64]"(double %x, double %y, i64 %minPosNaN, i64 %magMask, ptr %context) unnamed_addr #1 !dbg !4406 {
entry:
    #dbg_value(double %x, !4408, !DIExpression(), !4415)
    #dbg_value(double %y, !4409, !DIExpression(), !4415)
    #dbg_value(i64 %minPosNaN, !4410, !DIExpression(), !4415)
    #dbg_value(i64 %magMask, !4411, !DIExpression(), !4415)
  %x6 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4416
  store double %x, ptr %x6, align 8, !dbg !4416
  %y7 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4417
  store double %y, ptr %y7, align 8, !dbg !4417
  %0 = load i64, ptr %x6, align 8, !dbg !4418
    #dbg_value(i64 %0, !4412, !DIExpression(), !4419)
  %1 = load i64, ptr %y7, align 8, !dbg !4420
    #dbg_value(i64 %1, !4413, !DIExpression(), !4421)
    #dbg_value(i64 %0, !4412, !DIExpression(), !4422)
  %2 = icmp slt i64 %0, 0, !dbg !4423
  br i1 %2, label %if.then, label %if.done, !dbg !4424

if.then:                                          ; preds = %entry
    #dbg_value(i64 %magMask, !4411, !DIExpression(), !4425)
  %3 = xor i64 %0, %magMask, !dbg !4426
    #dbg_value(i64 %3, !4412, !DIExpression(), !4426)
  br label %if.done, !dbg !4424

if.done:                                          ; preds = %if.then, %entry
  %4 = phi i64 [ %0, %entry ], [ %3, %if.then ], !dbg !4419
    #dbg_value(i64 %1, !4413, !DIExpression(), !4427)
  %5 = icmp slt i64 %1, 0, !dbg !4428
  br i1 %5, label %if.then1, label %if.done2, !dbg !4424

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %magMask, !4411, !DIExpression(), !4429)
  %6 = xor i64 %1, %magMask, !dbg !4430
    #dbg_value(i64 %6, !4413, !DIExpression(), !4430)
  br label %if.done2, !dbg !4424

if.done2:                                         ; preds = %if.then1, %if.done
  %7 = phi i64 [ %1, %if.done ], [ %6, %if.then1 ], !dbg !4421
    #dbg_value(i64 %minPosNaN, !4410, !DIExpression(), !4431)
  %8 = xor i64 %minPosNaN, -1, !dbg !4432
    #dbg_value(i64 %8, !4414, !DIExpression(), !4433)
    #dbg_value(i64 %4, !4412, !DIExpression(), !4434)
    #dbg_value(i64 %8, !4414, !DIExpression(), !4435)
  %9 = icmp sle i64 %4, %8, !dbg !4436
  br i1 %9, label %switch.body, label %switch.next, !dbg !4424

switch.body:                                      ; preds = %if.done2
  %10 = load double, ptr %x6, align 8, !dbg !4437
    #dbg_value(double %10, !4408, !DIExpression(), !4437)
  ret double %10, !dbg !4438

switch.next:                                      ; preds = %if.done2
    #dbg_value(i64 %7, !4413, !DIExpression(), !4439)
    #dbg_value(i64 %8, !4414, !DIExpression(), !4440)
  %11 = icmp sle i64 %7, %8, !dbg !4441
  br i1 %11, label %switch.body3, label %switch.next4, !dbg !4424

switch.body3:                                     ; preds = %switch.next
  %12 = load double, ptr %y7, align 8, !dbg !4442
    #dbg_value(double %12, !4409, !DIExpression(), !4442)
  ret double %12, !dbg !4443

switch.next4:                                     ; preds = %switch.next
    #dbg_value(i64 %4, !4412, !DIExpression(), !4444)
    #dbg_value(i64 %7, !4413, !DIExpression(), !4445)
  %13 = icmp sge i64 %4, %7, !dbg !4446
  br i1 %13, label %if.then5, label %if.else, !dbg !4424

if.then5:                                         ; preds = %switch.next4
  %14 = load double, ptr %x6, align 8, !dbg !4447
    #dbg_value(double %14, !4408, !DIExpression(), !4447)
  ret double %14, !dbg !4448

if.else:                                          ; preds = %switch.next4
  %15 = load double, ptr %y7, align 8, !dbg !4449
    #dbg_value(double %15, !4409, !DIExpression(), !4449)
  ret double %15, !dbg !4450
}

; Function Attrs: nounwind uwtable(sync)
define float @fmaximumf(float %x, float %y) #1 !dbg !4451 {
entry:
    #dbg_value(float %x, !4453, !DIExpression(), !4455)
    #dbg_value(float %y, !4454, !DIExpression(), !4455)
    #dbg_value(float %x, !4453, !DIExpression(), !4456)
    #dbg_value(float %y, !4454, !DIExpression(), !4457)
  %0 = call float @runtime.maximumFloat32(float %x, float %y, ptr undef), !dbg !4458
  ret float %0, !dbg !4459
}

; Function Attrs: nounwind uwtable(sync)
define internal float @runtime.maximumFloat32(float %x, float %y, ptr %context) unnamed_addr #1 !dbg !4460 {
entry:
    #dbg_value(float %x, !4462, !DIExpression(), !4464)
    #dbg_value(float %y, !4463, !DIExpression(), !4464)
    #dbg_value(float %x, !4462, !DIExpression(), !4465)
    #dbg_value(float %y, !4463, !DIExpression(), !4466)
  %0 = call float @"runtime.maximumFloat[float32 int32]"(float %x, float %y, i32 2139095041, i32 2147483647, ptr undef), !dbg !4467
  ret float %0, !dbg !4468
}

; Function Attrs: nounwind uwtable(sync)
define internal float @"runtime.maximumFloat[float32 int32]"(float %x, float %y, i32 %minPosNaN, i32 %magMask, ptr %context) unnamed_addr #1 !dbg !4469 {
entry:
    #dbg_value(float %x, !4471, !DIExpression(), !4478)
    #dbg_value(float %y, !4472, !DIExpression(), !4478)
    #dbg_value(i32 %minPosNaN, !4473, !DIExpression(), !4478)
    #dbg_value(i32 %magMask, !4474, !DIExpression(), !4478)
  %x6 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4479
  store float %x, ptr %x6, align 4, !dbg !4479
  %y7 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4480
  store float %y, ptr %y7, align 4, !dbg !4480
  %0 = load i32, ptr %x6, align 4, !dbg !4481
    #dbg_value(i32 %0, !4475, !DIExpression(), !4482)
  %1 = load i32, ptr %y7, align 4, !dbg !4483
    #dbg_value(i32 %1, !4476, !DIExpression(), !4484)
    #dbg_value(i32 %0, !4475, !DIExpression(), !4485)
  %2 = icmp slt i32 %0, 0, !dbg !4486
  br i1 %2, label %if.then, label %if.done, !dbg !4487

if.then:                                          ; preds = %entry
    #dbg_value(i32 %magMask, !4474, !DIExpression(), !4488)
  %3 = xor i32 %0, %magMask, !dbg !4489
    #dbg_value(i32 %3, !4475, !DIExpression(), !4489)
  br label %if.done, !dbg !4487

if.done:                                          ; preds = %if.then, %entry
  %4 = phi i32 [ %0, %entry ], [ %3, %if.then ], !dbg !4482
    #dbg_value(i32 %1, !4476, !DIExpression(), !4490)
  %5 = icmp slt i32 %1, 0, !dbg !4491
  br i1 %5, label %if.then1, label %if.done2, !dbg !4487

if.then1:                                         ; preds = %if.done
    #dbg_value(i32 %magMask, !4474, !DIExpression(), !4492)
  %6 = xor i32 %1, %magMask, !dbg !4493
    #dbg_value(i32 %6, !4476, !DIExpression(), !4493)
  br label %if.done2, !dbg !4487

if.done2:                                         ; preds = %if.then1, %if.done
  %7 = phi i32 [ %1, %if.done ], [ %6, %if.then1 ], !dbg !4484
    #dbg_value(i32 %minPosNaN, !4473, !DIExpression(), !4494)
  %8 = xor i32 %minPosNaN, -1, !dbg !4495
    #dbg_value(i32 %8, !4477, !DIExpression(), !4496)
    #dbg_value(i32 %4, !4475, !DIExpression(), !4497)
    #dbg_value(i32 %8, !4477, !DIExpression(), !4498)
  %9 = icmp sle i32 %4, %8, !dbg !4499
  br i1 %9, label %switch.body, label %switch.next, !dbg !4487

switch.body:                                      ; preds = %if.done2
  %10 = load float, ptr %x6, align 4, !dbg !4500
    #dbg_value(float %10, !4471, !DIExpression(), !4500)
  ret float %10, !dbg !4501

switch.next:                                      ; preds = %if.done2
    #dbg_value(i32 %7, !4476, !DIExpression(), !4502)
    #dbg_value(i32 %8, !4477, !DIExpression(), !4503)
  %11 = icmp sle i32 %7, %8, !dbg !4504
  br i1 %11, label %switch.body3, label %switch.next4, !dbg !4487

switch.body3:                                     ; preds = %switch.next
  %12 = load float, ptr %y7, align 4, !dbg !4505
    #dbg_value(float %12, !4472, !DIExpression(), !4505)
  ret float %12, !dbg !4506

switch.next4:                                     ; preds = %switch.next
    #dbg_value(i32 %4, !4475, !DIExpression(), !4507)
    #dbg_value(i32 %7, !4476, !DIExpression(), !4508)
  %13 = icmp sge i32 %4, %7, !dbg !4509
  br i1 %13, label %if.then5, label %if.else, !dbg !4487

if.then5:                                         ; preds = %switch.next4
  %14 = load float, ptr %x6, align 4, !dbg !4510
    #dbg_value(float %14, !4471, !DIExpression(), !4510)
  ret float %14, !dbg !4511

if.else:                                          ; preds = %switch.next4
  %15 = load float, ptr %y7, align 4, !dbg !4512
    #dbg_value(float %15, !4472, !DIExpression(), !4512)
  ret float %15, !dbg !4513
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.initHeap(ptr %context) unnamed_addr #1 !dbg !4514 {
entry:
  call void @GC_init(), !dbg !4515
  call void @tinygo_runtime_bdwgc_init(), !dbg !4516
  ret void, !dbg !4517
}

declare void @GC_init() #2

declare void @tinygo_runtime_bdwgc_init() #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_runtime_bdwgc_callback() #1 !dbg !4518 {
entry:
  call void @runtime.gcMarkReachable(ptr undef), !dbg !4519
  ret void, !dbg !4520
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.gcMarkReachable(ptr %context) unnamed_addr #1 !dbg !4521 {
entry:
  call void @"internal/task.GCStopWorldAndScan"(ptr undef), !dbg !4522
  ret void, !dbg !4523
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.markRoots(i64 %start, i64 %end, ptr %context) #1 !dbg !4524 {
entry:
    #dbg_value(i64 %start, !4528, !DIExpression(), !4530)
    #dbg_value(i64 %end, !4529, !DIExpression(), !4530)
    #dbg_value(i64 %start, !4528, !DIExpression(), !4531)
    #dbg_value(i64 %end, !4529, !DIExpression(), !4532)
  call void @GC_push_all(i64 %start, i64 %end), !dbg !4533
  ret void, !dbg !4534
}

declare void @GC_push_all(i64, i64) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.free(ptr %ptr, ptr %context) unnamed_addr #1 !dbg !4535 {
entry:
    #dbg_value(ptr %ptr, !4537, !DIExpression(), !4538)
    #dbg_value(ptr %ptr, !4537, !DIExpression(), !4539)
  call void @GC_free(ptr %ptr), !dbg !4540
  ret void, !dbg !4541
}

declare void @GC_free(ptr nocapture) #2

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.gcScanGlobals"(ptr %context) #1 !dbg !4542 {
entry:
  call void @runtime.findGlobals(ptr undef, ptr @runtime.markRoots, ptr undef), !dbg !4543
  ret void, !dbg !4544
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.findGlobals(ptr %found.context, ptr %found.funcptr, ptr %context) unnamed_addr #1 !dbg !4545 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %found.context, 0, !dbg !4576
  %1 = insertvalue { ptr, ptr } %0, ptr %found.funcptr, 1, !dbg !4576
    #dbg_value(ptr %found.context, !4549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4576)
    #dbg_value(ptr %found.funcptr, !4549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4576)
  %2 = load i64, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 11), align 8, !dbg !4577
  %3 = add i64 ptrtoint (ptr @__ehdr_start to i64), %2, !dbg !4578
  %4 = inttoptr i64 %3 to ptr, !dbg !4579
    #dbg_value(ptr %4, !4550, !DIExpression(), !4580)
    #dbg_value(i64 0, !4551, !DIExpression(), !4581)
  br label %for.loop, !dbg !4582

for.loop:                                         ; preds = %if.done, %entry
  %5 = phi ptr [ %4, %entry ], [ %30, %if.done ], !dbg !4580
  %6 = phi i64 [ 0, %entry ], [ %31, %if.done ], !dbg !4581
    #dbg_value(i64 %6, !4551, !DIExpression(), !4583)
  %7 = load i16, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 16), align 2, !dbg !4584
  %8 = zext i16 %7 to i64, !dbg !4585
  %9 = icmp slt i64 %6, %8, !dbg !4586
  br i1 %9, label %for.body, label %for.done, !dbg !4582

for.body:                                         ; preds = %for.loop
  br i1 true, label %if.then, label %if.else, !dbg !4582

if.then:                                          ; preds = %for.body
    #dbg_value(ptr %5, !4550, !DIExpression(), !4587)
    #dbg_value(ptr %5, !4552, !DIExpression(), !4588)
    #dbg_value(ptr %5, !4552, !DIExpression(), !4589)
  %10 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 0, !dbg !4590
  %11 = icmp eq ptr %10, null, !dbg !4590
  br i1 %11, label %deref.throw, label %deref.next, !dbg !4590

deref.next:                                       ; preds = %if.then
  %12 = load i32, ptr %10, align 4, !dbg !4590
  %13 = icmp eq i32 %12, 1, !dbg !4591
  br i1 %13, label %cond.true, label %if.done, !dbg !4582

cond.true:                                        ; preds = %deref.next
    #dbg_value(ptr %5, !4552, !DIExpression(), !4592)
  %14 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 1, !dbg !4593
  %15 = icmp eq ptr %14, null, !dbg !4593
  br i1 %15, label %deref.throw4, label %deref.next5, !dbg !4593

deref.next5:                                      ; preds = %cond.true
  %16 = load i32, ptr %14, align 4, !dbg !4593
  %17 = and i32 %16, 2, !dbg !4594
  %18 = icmp ne i32 %17, 0, !dbg !4595
  br i1 %18, label %if.then1, label %if.done, !dbg !4582

if.then1:                                         ; preds = %deref.next5
    #dbg_value(ptr %5, !4552, !DIExpression(), !4596)
  %19 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 3, !dbg !4597
  %20 = icmp eq ptr %19, null, !dbg !4597
  br i1 %20, label %deref.throw6, label %deref.next7, !dbg !4597

deref.next7:                                      ; preds = %if.then1
  %21 = load i64, ptr %19, align 8, !dbg !4597
    #dbg_value(i64 %21, !4565, !DIExpression(), !4598)
    #dbg_value(i64 %21, !4565, !DIExpression(), !4599)
    #dbg_value(ptr %5, !4552, !DIExpression(), !4600)
  %22 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 6, !dbg !4601
  %23 = icmp eq ptr %22, null, !dbg !4601
  br i1 %23, label %deref.throw8, label %deref.next9, !dbg !4601

deref.next9:                                      ; preds = %deref.next7
  %24 = load i64, ptr %22, align 8, !dbg !4601
  %25 = add i64 %21, %24, !dbg !4602
    #dbg_value(i64 %25, !4566, !DIExpression(), !4603)
    #dbg_value({ ptr, ptr } %1, !4549, !DIExpression(), !4604)
    #dbg_value(i64 %21, !4565, !DIExpression(), !4605)
    #dbg_value(i64 %25, !4566, !DIExpression(), !4606)
  %26 = extractvalue { ptr, ptr } %1, 0, !dbg !4607
  %27 = extractvalue { ptr, ptr } %1, 1, !dbg !4607
  %28 = icmp eq ptr %27, null, !dbg !4607
  br i1 %28, label %fpcall.throw, label %fpcall.next, !dbg !4607

fpcall.next:                                      ; preds = %deref.next9
  call void %27(i64 %21, i64 %25, ptr %26), !dbg !4607
  br label %if.done, !dbg !4582

if.done:                                          ; preds = %fpcall.next19, %deref.next13, %deref.next11, %fpcall.next, %deref.next5, %deref.next
    #dbg_value(ptr %5, !4550, !DIExpression(), !4608)
  %29 = load i16, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 15), align 2, !dbg !4609
  %30 = getelementptr i8, ptr %5, i16 %29, !dbg !4610
    #dbg_value(ptr %30, !4550, !DIExpression(), !4611)
  %31 = add i64 %6, 1, !dbg !4612
    #dbg_value(i64 %31, !4551, !DIExpression(), !4612)
  br label %for.loop, !dbg !4582

if.else:                                          ; preds = %for.body
    #dbg_value(ptr %5, !4550, !DIExpression(), !4613)
    #dbg_value(ptr %5, !4567, !DIExpression(), !4614)
    #dbg_value(ptr %5, !4567, !DIExpression(), !4615)
  %32 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 0, !dbg !4616
  %33 = icmp eq ptr %32, null, !dbg !4616
  br i1 %33, label %deref.throw10, label %deref.next11, !dbg !4616

deref.next11:                                     ; preds = %if.else
  %34 = load i32, ptr %32, align 4, !dbg !4616
  %35 = icmp eq i32 %34, 1, !dbg !4617
  br i1 %35, label %cond.true2, label %if.done, !dbg !4582

cond.true2:                                       ; preds = %deref.next11
    #dbg_value(ptr %5, !4567, !DIExpression(), !4618)
  %36 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 6, !dbg !4619
  %37 = icmp eq ptr %36, null, !dbg !4619
  br i1 %37, label %deref.throw12, label %deref.next13, !dbg !4619

deref.next13:                                     ; preds = %cond.true2
  %38 = load i32, ptr %36, align 4, !dbg !4619
  %39 = and i32 %38, 2, !dbg !4620
  %40 = icmp ne i32 %39, 0, !dbg !4621
  br i1 %40, label %if.then3, label %if.done, !dbg !4582

if.then3:                                         ; preds = %deref.next13
    #dbg_value(ptr %5, !4567, !DIExpression(), !4622)
  %41 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 2, !dbg !4623
  %42 = icmp eq ptr %41, null, !dbg !4623
  br i1 %42, label %deref.throw14, label %deref.next15, !dbg !4623

deref.next15:                                     ; preds = %if.then3
  %43 = load i64, ptr %41, align 8, !dbg !4623
    #dbg_value(i64 %43, !4574, !DIExpression(), !4624)
    #dbg_value(i64 %43, !4574, !DIExpression(), !4625)
    #dbg_value(ptr %5, !4567, !DIExpression(), !4626)
  %44 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 5, !dbg !4627
  %45 = icmp eq ptr %44, null, !dbg !4627
  br i1 %45, label %deref.throw16, label %deref.next17, !dbg !4627

deref.next17:                                     ; preds = %deref.next15
  %46 = load i64, ptr %44, align 8, !dbg !4627
  %47 = add i64 %43, %46, !dbg !4628
    #dbg_value(i64 %47, !4575, !DIExpression(), !4629)
    #dbg_value({ ptr, ptr } %1, !4549, !DIExpression(), !4630)
    #dbg_value(i64 %43, !4574, !DIExpression(), !4631)
    #dbg_value(i64 %47, !4575, !DIExpression(), !4632)
  %48 = extractvalue { ptr, ptr } %1, 0, !dbg !4633
  %49 = extractvalue { ptr, ptr } %1, 1, !dbg !4633
  %50 = icmp eq ptr %49, null, !dbg !4633
  br i1 %50, label %fpcall.throw18, label %fpcall.next19, !dbg !4633

fpcall.next19:                                    ; preds = %deref.next17
  call void %49(i64 %43, i64 %47, ptr %48), !dbg !4633
  br label %if.done, !dbg !4582

for.done:                                         ; preds = %for.loop
  ret void, !dbg !4634

deref.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !4590
  unreachable, !dbg !4590

deref.throw4:                                     ; preds = %cond.true
  call void @runtime.nilPanic(ptr undef), !dbg !4593
  unreachable, !dbg !4593

deref.throw6:                                     ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !4597
  unreachable, !dbg !4597

deref.throw8:                                     ; preds = %deref.next7
  call void @runtime.nilPanic(ptr undef), !dbg !4601
  unreachable, !dbg !4601

fpcall.throw:                                     ; preds = %deref.next9
  call void @runtime.nilPanic(ptr undef), !dbg !4607
  unreachable, !dbg !4607

deref.throw10:                                    ; preds = %if.else
  call void @runtime.nilPanic(ptr undef), !dbg !4616
  unreachable, !dbg !4616

deref.throw12:                                    ; preds = %cond.true2
  call void @runtime.nilPanic(ptr undef), !dbg !4619
  unreachable, !dbg !4619

deref.throw14:                                    ; preds = %if.then3
  call void @runtime.nilPanic(ptr undef), !dbg !4623
  unreachable, !dbg !4623

deref.throw16:                                    ; preds = %deref.next15
  call void @runtime.nilPanic(ptr undef), !dbg !4627
  unreachable, !dbg !4627

fpcall.throw18:                                   ; preds = %deref.next17
  call void @runtime.nilPanic(ptr undef), !dbg !4633
  unreachable, !dbg !4633
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_scanstack(i64 %sp) #1 !dbg !4635 {
entry:
    #dbg_value(i64 %sp, !4637, !DIExpression(), !4638)
    #dbg_value(i64 %sp, !4637, !DIExpression(), !4639)
  %0 = call i64 @"internal/task.StackTop"(ptr undef), !dbg !4640
  call void @runtime.markRoots(i64 %sp, i64 %0, ptr undef), !dbg !4641
  ret void, !dbg !4642
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.unsafeSlicePanic(ptr %context) #1 !dbg !4643 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4644
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.22", i64 37, ptr undef), !dbg !4645
  ret void, !dbg !4646
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.negativeShiftPanic(ptr %context) #1 !dbg !4647 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4648
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.24", i64 14, ptr undef), !dbg !4649
  ret void, !dbg !4650
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printspace(ptr %context) #1 !dbg !4651 {
entry:
  call void @runtime.putchar(i8 32, ptr undef), !dbg !4652
  ret void, !dbg !4653
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memmove(ptr %dst, ptr %src, i64 %size, ptr %context) #1 !dbg !4654 {
entry:
    #dbg_value(ptr %dst, !4656, !DIExpression(), !4659)
    #dbg_value(ptr %src, !4657, !DIExpression(), !4659)
    #dbg_value(i64 %size, !4658, !DIExpression(), !4659)
  call void @llvm.memmove.p0.p0.i64(ptr %dst, ptr %src, i64 %size, i1 false), !dbg !4659
  ret void, !dbg !4659
}

; Function Attrs: nounwind uwtable(sync)
define i64 @main(i32 %argc, ptr nocapture dereferenceable_or_null(8) %argv) #1 !dbg !4660 {
entry:
    #dbg_value(i32 %argc, !4664, !DIExpression(), !4669)
    #dbg_value(ptr %argv, !4665, !DIExpression(), !4669)
  br i1 false, label %if.then, label %if.done, !dbg !4670

if.then:                                          ; preds = %entry
  call void @runtime.allocateHeap(ptr undef), !dbg !4671
  br label %if.done, !dbg !4670

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(i32 %argc, !4664, !DIExpression(), !4672)
  store i32 %argc, ptr @runtime.main_argc, align 4, !dbg !4673
    #dbg_value(i32 %argc, !4666, !DIExpression(), !4673)
    #dbg_value(ptr %argv, !4665, !DIExpression(), !4674)
  store ptr %argv, ptr @runtime.main_argv, align 8, !dbg !4675
    #dbg_value(ptr %argv, !4667, !DIExpression(), !4675)
  call void @tinygo_register_fatal_signals(), !dbg !4676
  %0 = call i64 @runtime.getCurrentStackPointer(ptr undef), !dbg !4677
  store i64 %0, ptr @runtime.stackTop, align 8, !dbg !4678
    #dbg_value(i64 %0, !4668, !DIExpression(), !4678)
  call void @runtime.runMain(ptr undef), !dbg !4679
  ret i64 0, !dbg !4680
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.allocateHeap(ptr %context) unnamed_addr #1 !dbg !4681 {
entry:
  store i64 1073741824, ptr @runtime.heapMaxSize, align 8, !dbg !4688
    #dbg_value(i64 1073741824, !4683, !DIExpression(), !4688)
  br label %for.body, !dbg !4689

for.body:                                         ; preds = %if.then1, %if.then, %entry
  %0 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4690
    #dbg_value(i64 %0, !4683, !DIExpression(), !4690)
  %1 = call ptr @mmap(ptr null, i64 %0, i64 3, i64 34, i64 -1, i64 0), !dbg !4691
    #dbg_value(ptr %1, !4684, !DIExpression(), !4692)
    #dbg_value(ptr %1, !4684, !DIExpression(), !4693)
  %2 = icmp eq ptr %1, inttoptr (i64 -1 to ptr), !dbg !4694
  br i1 %2, label %if.then, label %if.done, !dbg !4689

if.then:                                          ; preds = %for.body
  %3 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4695
  %4 = udiv i64 %3, 2, !dbg !4695
  store i64 %4, ptr @runtime.heapMaxSize, align 8, !dbg !4695
    #dbg_value(i64 %4, !4683, !DIExpression(), !4695)
  %5 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4696
    #dbg_value(i64 %5, !4683, !DIExpression(), !4696)
  %6 = icmp ult i64 %5, 4096, !dbg !4697
  br i1 %6, label %if.then1, label %for.body, !dbg !4689

if.then1:                                         ; preds = %if.then
  call void @runtime.runtimePanic(ptr @"runtime$string.56", i64 27, ptr undef), !dbg !4698
  br label %for.body, !dbg !4689

if.done:                                          ; preds = %for.body
    #dbg_value(ptr %1, !4684, !DIExpression(), !4699)
  %7 = ptrtoint ptr %1 to i64, !dbg !4700
  store i64 %7, ptr @runtime.heapStart, align 8, !dbg !4701
    #dbg_value(i64 %7, !4685, !DIExpression(), !4701)
  %8 = load i64, ptr @runtime.heapStart, align 8, !dbg !4702
    #dbg_value(i64 %8, !4685, !DIExpression(), !4702)
  %9 = load i64, ptr @runtime.heapSize, align 8, !dbg !4703
    #dbg_value(i64 %9, !4686, !DIExpression(), !4703)
  %10 = add i64 %8, %9, !dbg !4704
  store i64 %10, ptr @runtime.heapEnd, align 8, !dbg !4705
    #dbg_value(i64 %10, !4687, !DIExpression(), !4705)
  ret void, !dbg !4706
}

declare void @tinygo_register_fatal_signals() #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @runtime.runMain(ptr %context) unnamed_addr #15 !dbg !4707 {
entry:
  call void @runtime.run(ptr undef), !dbg !4708
  ret void, !dbg !4709
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.run(ptr %context) unnamed_addr #1 !dbg !4710 {
entry:
  call void @runtime.initRand(ptr undef), !dbg !4713
  call void @runtime.initHeap(ptr undef), !dbg !4714
  %0 = load i64, ptr @runtime.stackTop, align 8, !dbg !4715
    #dbg_value(i64 %0, !4712, !DIExpression(), !4715)
  call void @"internal/task.Init"(i64 %0, ptr undef), !dbg !4716
  call void @runtime.initAll(ptr undef), !dbg !4717
  call void @main.main(ptr undef), !dbg !4718
  ret void, !dbg !4719
}

define internal void @runtime.initAll(ptr %context) unnamed_addr #2 {
entry:
  ret void
}

declare void @main.main(ptr) #2

declare ptr @mmap(ptr nocapture, i64, i64, i64, i64, i64) #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_handle_fatal_signal(i32 %sig, i64 %addr) #1 !dbg !4720 {
entry:
    #dbg_value(i32 %sig, !4724, !DIExpression(), !4726)
    #dbg_value(i64 %addr, !4725, !DIExpression(), !4726)
  br i1 false, label %if.then, label %if.done, !dbg !4727

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !4728
  br label %if.done, !dbg !4727

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(i64 %addr, !4725, !DIExpression(), !4729)
  %0 = icmp ne i64 %addr, 0, !dbg !4730
  br i1 %0, label %if.then1, label %if.else, !dbg !4727

if.then1:                                         ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.50", i64 24, ptr undef), !dbg !4731
    #dbg_value(i64 %addr, !4725, !DIExpression(), !4732)
  call void @runtime.printptr(i64 %addr, ptr undef), !dbg !4733
  br label %if.done2, !dbg !4727

if.done2:                                         ; preds = %if.else, %if.then1
  call void @runtime.printstring(ptr @"runtime$string.51", i64 16, ptr undef), !dbg !4734
    #dbg_value(i32 %sig, !4724, !DIExpression(), !4735)
  %1 = icmp eq i32 %sig, 7, !dbg !4736
  br i1 %1, label %switch.body, label %switch.next, !dbg !4727

switch.body:                                      ; preds = %if.done2
  call void @runtime.printlock(ptr undef), !dbg !4737
  call void @runtime.printstring(ptr @"runtime$string.52", i64 6, ptr undef), !dbg !4737
  call void @runtime.printnl(ptr undef), !dbg !4737
  call void @runtime.printunlock(ptr undef), !dbg !4737
  br label %switch.done, !dbg !4727

switch.done:                                      ; preds = %switch.next6, %switch.body5, %switch.body3, %switch.body
    #dbg_value(i32 %sig, !4724, !DIExpression(), !4738)
  call void @raise(i32 %sig), !dbg !4739
  ret void, !dbg !4740

switch.next:                                      ; preds = %if.done2
  %2 = icmp eq i32 %sig, 4, !dbg !4741
  br i1 %2, label %switch.body3, label %switch.next4, !dbg !4727

switch.body3:                                     ; preds = %switch.next
  call void @runtime.printlock(ptr undef), !dbg !4742
  call void @runtime.printstring(ptr @"runtime$string.53", i64 6, ptr undef), !dbg !4742
  call void @runtime.printnl(ptr undef), !dbg !4742
  call void @runtime.printunlock(ptr undef), !dbg !4742
  br label %switch.done, !dbg !4727

switch.next4:                                     ; preds = %switch.next
  %3 = icmp eq i32 %sig, 11, !dbg !4743
  br i1 %3, label %switch.body5, label %switch.next6, !dbg !4727

switch.body5:                                     ; preds = %switch.next4
  call void @runtime.printlock(ptr undef), !dbg !4744
  call void @runtime.printstring(ptr @"runtime$string.54", i64 7, ptr undef), !dbg !4744
  call void @runtime.printnl(ptr undef), !dbg !4744
  call void @runtime.printunlock(ptr undef), !dbg !4744
  br label %switch.done, !dbg !4727

switch.next6:                                     ; preds = %switch.next4
    #dbg_value(i32 %sig, !4724, !DIExpression(), !4745)
  call void @runtime.printlock(ptr undef), !dbg !4746
  call void @runtime.printint32(i32 %sig, ptr undef), !dbg !4746
  call void @runtime.printnl(ptr undef), !dbg !4746
  call void @runtime.printunlock(ptr undef), !dbg !4746
  br label %switch.done, !dbg !4727

if.else:                                          ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.55", i64 20, ptr undef), !dbg !4747
  br label %if.done2, !dbg !4727
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printlock(ptr %context) #1 !dbg !4748 {
entry:
  call void @"(*internal/task.Mutex).Lock"(ptr @runtime.printLock, ptr undef), !dbg !4749
  ret void, !dbg !4750
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printunlock(ptr %context) #1 !dbg !4751 {
entry:
  call void @"(*internal/task.Mutex).Unlock"(ptr @runtime.printLock, ptr undef), !dbg !4752
  ret void, !dbg !4753
}

declare void @raise(i32) #2

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @runtime.sliceAppend(ptr %srcBuf, ptr nocapture readonly %elemsBuf, i64 %srcLen, i64 %srcCap, i64 %elemsLen, i64 %elemSize, ptr %layout, ptr %context) #1 !dbg !4754 {
entry:
    #dbg_value(ptr %srcBuf, !4759, !DIExpression(), !4767)
    #dbg_value(ptr %elemsBuf, !4760, !DIExpression(), !4767)
    #dbg_value(i64 %srcLen, !4761, !DIExpression(), !4767)
    #dbg_value(i64 %srcCap, !4762, !DIExpression(), !4767)
    #dbg_value(i64 %elemsLen, !4763, !DIExpression(), !4767)
    #dbg_value(i64 %elemSize, !4764, !DIExpression(), !4767)
    #dbg_value(ptr %layout, !4765, !DIExpression(), !4767)
    #dbg_value(i64 %srcLen, !4761, !DIExpression(), !4768)
    #dbg_value(i64 %elemsLen, !4763, !DIExpression(), !4769)
  %0 = add i64 %srcLen, %elemsLen, !dbg !4770
    #dbg_value(i64 %0, !4766, !DIExpression(), !4771)
    #dbg_value(i64 %elemsLen, !4763, !DIExpression(), !4772)
  %1 = icmp ugt i64 %elemsLen, 0, !dbg !4773
  br i1 %1, label %if.then, label %if.done, !dbg !4774

if.then:                                          ; preds = %entry
    #dbg_value(ptr %srcBuf, !4759, !DIExpression(), !4775)
    #dbg_value(i64 %srcLen, !4761, !DIExpression(), !4776)
    #dbg_value(i64 %srcCap, !4762, !DIExpression(), !4777)
    #dbg_value(i64 %0, !4766, !DIExpression(), !4778)
    #dbg_value(i64 %elemSize, !4764, !DIExpression(), !4779)
    #dbg_value(ptr %layout, !4765, !DIExpression(), !4780)
  %2 = call { ptr, i64, i64 } @runtime.sliceGrow(ptr %srcBuf, i64 %srcLen, i64 %srcCap, i64 %0, i64 %elemSize, ptr %layout, ptr undef), !dbg !4781
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4781
    #dbg_value(ptr %3, !4759, !DIExpression(), !4782)
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4781
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4781
    #dbg_value(i64 %5, !4762, !DIExpression(), !4783)
    #dbg_value(ptr %3, !4759, !DIExpression(), !4784)
    #dbg_value(i64 %srcLen, !4761, !DIExpression(), !4785)
    #dbg_value(i64 %elemSize, !4764, !DIExpression(), !4786)
  %6 = mul i64 %srcLen, %elemSize, !dbg !4787
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !4788
    #dbg_value(ptr %elemsBuf, !4760, !DIExpression(), !4789)
    #dbg_value(i64 %elemsLen, !4763, !DIExpression(), !4790)
    #dbg_value(i64 %elemSize, !4764, !DIExpression(), !4791)
  %8 = mul i64 %elemsLen, %elemSize, !dbg !4792
  call void @runtime.memmove(ptr %7, ptr %elemsBuf, i64 %8, ptr undef), !dbg !4793
  br label %if.done, !dbg !4774

if.done:                                          ; preds = %if.then, %entry
  %9 = phi ptr [ %srcBuf, %entry ], [ %3, %if.then ], !dbg !4794
  %10 = phi i64 [ %srcCap, %entry ], [ %5, %if.then ], !dbg !4795
    #dbg_value(ptr %9, !4759, !DIExpression(), !4796)
    #dbg_value(i64 %0, !4766, !DIExpression(), !4797)
    #dbg_value(i64 %10, !4762, !DIExpression(), !4798)
  %11 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %9, 0, !dbg !4799
  %12 = insertvalue { ptr, i64, i64 } %11, i64 %0, 1, !dbg !4799
  %13 = insertvalue { ptr, i64, i64 } %12, i64 %10, 2, !dbg !4799
  ret { ptr, i64, i64 } %13, !dbg !4799
}

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @runtime.sliceGrow(ptr %oldBuf, i64 %oldLen, i64 %oldCap, i64 %newCap, i64 %elemSize, ptr %layout, ptr %context) #1 !dbg !4800 {
entry:
    #dbg_value(ptr %oldBuf, !4804, !DIExpression(), !4811)
    #dbg_value(i64 %oldLen, !4805, !DIExpression(), !4811)
    #dbg_value(i64 %oldCap, !4806, !DIExpression(), !4811)
    #dbg_value(i64 %newCap, !4807, !DIExpression(), !4811)
    #dbg_value(i64 %elemSize, !4808, !DIExpression(), !4811)
    #dbg_value(ptr %layout, !4809, !DIExpression(), !4811)
    #dbg_value(i64 %oldCap, !4806, !DIExpression(), !4812)
    #dbg_value(i64 %newCap, !4807, !DIExpression(), !4813)
  %0 = icmp uge i64 %oldCap, %newCap, !dbg !4814
  br i1 %0, label %if.then, label %if.done, !dbg !4815

if.then:                                          ; preds = %entry
    #dbg_value(ptr %oldBuf, !4804, !DIExpression(), !4816)
    #dbg_value(i64 %oldLen, !4805, !DIExpression(), !4817)
    #dbg_value(i64 %oldCap, !4806, !DIExpression(), !4818)
  %1 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %oldBuf, 0, !dbg !4819
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %oldLen, 1, !dbg !4819
  %3 = insertvalue { ptr, i64, i64 } %2, i64 %oldCap, 2, !dbg !4819
  ret { ptr, i64, i64 } %3, !dbg !4819

if.done:                                          ; preds = %entry
    #dbg_value(i64 %newCap, !4807, !DIExpression(), !4820)
  %4 = call i64 @"math/bits.Len"(i64 %newCap, ptr undef), !dbg !4821
  %5 = icmp slt i64 %4, 0, !dbg !4822
  br i1 %5, label %shift.throw, label %shift.next, !dbg !4822

shift.next:                                       ; preds = %if.done
  %shift.overflow = icmp uge i64 %4, 64, !dbg !4822
  %6 = shl i64 1, %4, !dbg !4822
  %shift.result = select i1 %shift.overflow, i64 0, i64 %6, !dbg !4822
    #dbg_value(i64 %shift.result, !4807, !DIExpression(), !4823)
    #dbg_value(i64 %shift.result, !4807, !DIExpression(), !4824)
    #dbg_value(i64 %elemSize, !4808, !DIExpression(), !4825)
  %7 = mul i64 %shift.result, %elemSize, !dbg !4826
    #dbg_value(ptr %layout, !4809, !DIExpression(), !4827)
  %8 = call ptr @runtime.alloc(i64 %7, ptr %layout, ptr undef), !dbg !4828
    #dbg_value(ptr %8, !4810, !DIExpression(), !4829)
    #dbg_value(i64 %oldLen, !4805, !DIExpression(), !4830)
  %9 = icmp ugt i64 %oldLen, 0, !dbg !4831
  br i1 %9, label %if.then1, label %if.done2, !dbg !4815

if.then1:                                         ; preds = %shift.next
    #dbg_value(ptr %8, !4810, !DIExpression(), !4832)
    #dbg_value(ptr %oldBuf, !4804, !DIExpression(), !4833)
    #dbg_value(i64 %oldLen, !4805, !DIExpression(), !4834)
    #dbg_value(i64 %elemSize, !4808, !DIExpression(), !4835)
  %10 = mul i64 %oldLen, %elemSize, !dbg !4836
  call void @runtime.memmove(ptr %8, ptr %oldBuf, i64 %10, ptr undef), !dbg !4837
  br label %if.done2, !dbg !4815

if.done2:                                         ; preds = %if.then1, %shift.next
    #dbg_value(ptr %8, !4810, !DIExpression(), !4838)
    #dbg_value(i64 %oldLen, !4805, !DIExpression(), !4839)
    #dbg_value(i64 %shift.result, !4807, !DIExpression(), !4840)
  %11 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %8, 0, !dbg !4841
  %12 = insertvalue { ptr, i64, i64 } %11, i64 %oldLen, 1, !dbg !4841
  %13 = insertvalue { ptr, i64, i64 } %12, i64 %shift.result, 2, !dbg !4841
  ret { ptr, i64, i64 } %13, !dbg !4841

shift.throw:                                      ; preds = %if.done
  call void @runtime.negativeShiftPanic(ptr undef), !dbg !4822
  unreachable, !dbg !4822
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_signal_handler(i32 %s) #1 !dbg !4842 {
entry:
    #dbg_value(i32 %s, !4844, !DIExpression(), !4848)
  br label %for.body, !dbg !4849

for.body:                                         ; preds = %for.body, %entry
    #dbg_value(i32 %s, !4844, !DIExpression(), !4850)
  %shift.overflow = icmp uge i32 %s, 32, !dbg !4851
  %0 = shl i32 1, %s, !dbg !4851
  %shift.result = select i1 %shift.overflow, i32 0, i32 %0, !dbg !4851
    #dbg_value(i32 %shift.result, !4845, !DIExpression(), !4852)
  %1 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @runtime.receivedSignals, ptr undef), !dbg !4853
    #dbg_value(i32 %1, !4846, !DIExpression(), !4854)
    #dbg_value(i32 %1, !4846, !DIExpression(), !4855)
    #dbg_value(i32 %1, !4846, !DIExpression(), !4856)
    #dbg_value(i32 %shift.result, !4845, !DIExpression(), !4857)
  %2 = or i32 %1, %shift.result, !dbg !4858
  %3 = call i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr @runtime.receivedSignals, i32 %1, i32 %2, ptr undef), !dbg !4859
    #dbg_value(i1 %3, !4847, !DIExpression(), !4860)
    #dbg_value(i1 %3, !4847, !DIExpression(), !4861)
  br i1 %3, label %if.then, label %for.body, !dbg !4849

if.then:                                          ; preds = %for.body
  %4 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr @runtime.signalFutex, i32 1, ptr undef), !dbg !4862
  %5 = icmp eq i32 %4, 0, !dbg !4863
  br i1 %5, label %if.then1, label %if.done, !dbg !4849

if.then1:                                         ; preds = %if.then
  call void @"(*internal/futex.Futex).WakeAll"(ptr @runtime.signalFutex, ptr undef), !dbg !4864
  br label %if.done, !dbg !4849

if.done:                                          ; preds = %if.then1, %if.then
  ret void, !dbg !4865
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @runtime.stringConcat(ptr dereferenceable_or_null(1) %x.ptr, i64 %x.length, ptr dereferenceable_or_null(1) %y.ptr, i64 %y.length, ptr %context) #1 !dbg !4866 {
entry:
  %complit = alloca %runtime._string, align 8, !dbg !4878
  %y = alloca %runtime._string, align 8, !dbg !4878
  %x = alloca %runtime._string, align 8, !dbg !4878
  %0 = insertvalue %runtime._string zeroinitializer, ptr %x.ptr, 0, !dbg !4878
  %1 = insertvalue %runtime._string %0, i64 %x.length, 1, !dbg !4878
    #dbg_value(ptr %x.ptr, !4874, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4878)
    #dbg_value(i64 %x.length, !4874, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4878)
  %2 = insertvalue %runtime._string zeroinitializer, ptr %y.ptr, 0, !dbg !4878
  %3 = insertvalue %runtime._string %2, i64 %y.length, 1, !dbg !4878
    #dbg_value(ptr %y.ptr, !4875, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4878)
    #dbg_value(i64 %y.length, !4875, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4878)
  store %runtime._string zeroinitializer, ptr %x, align 8, !dbg !4878
  store %runtime._string %1, ptr %x, align 8, !dbg !4879
  store %runtime._string zeroinitializer, ptr %y, align 8, !dbg !4878
  store %runtime._string %3, ptr %y, align 8, !dbg !4880
  %4 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4881
  %5 = icmp eq ptr %4, null, !dbg !4881
  br i1 %5, label %deref.throw, label %deref.next, !dbg !4881

deref.next:                                       ; preds = %entry
  %6 = load i64, ptr %4, align 8, !dbg !4881
  %7 = icmp eq i64 %6, 0, !dbg !4882
  br i1 %7, label %if.then, label %if.else, !dbg !4883

if.then:                                          ; preds = %deref.next
  %8 = load %runtime._string, ptr %y, align 8, !dbg !4884
    #dbg_value(%runtime._string %8, !4875, !DIExpression(), !4884)
  ret %runtime._string %8, !dbg !4885

if.else:                                          ; preds = %deref.next
  %9 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4886
  %10 = icmp eq ptr %9, null, !dbg !4886
  br i1 %10, label %deref.throw3, label %deref.next4, !dbg !4886

deref.next4:                                      ; preds = %if.else
  %11 = load i64, ptr %9, align 8, !dbg !4886
  %12 = icmp eq i64 %11, 0, !dbg !4887
  br i1 %12, label %if.then1, label %if.else2, !dbg !4883

if.then1:                                         ; preds = %deref.next4
  %13 = load %runtime._string, ptr %x, align 8, !dbg !4888
    #dbg_value(%runtime._string %13, !4874, !DIExpression(), !4888)
  ret %runtime._string %13, !dbg !4889

if.else2:                                         ; preds = %deref.next4
  %14 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4890
  %15 = icmp eq ptr %14, null, !dbg !4890
  br i1 %15, label %deref.throw5, label %deref.next6, !dbg !4890

deref.next6:                                      ; preds = %if.else2
  %16 = load i64, ptr %14, align 8, !dbg !4890
  %17 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4891
  %18 = icmp eq ptr %17, null, !dbg !4891
  br i1 %18, label %deref.throw7, label %deref.next8, !dbg !4891

deref.next8:                                      ; preds = %deref.next6
  %19 = load i64, ptr %17, align 8, !dbg !4891
  %20 = add i64 %16, %19, !dbg !4892
    #dbg_value(i64 %20, !4876, !DIExpression(), !4893)
    #dbg_value(i64 %20, !4876, !DIExpression(), !4894)
  %21 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !4895
  %22 = call ptr @runtime.alloc(i64 %20, ptr %21, ptr undef), !dbg !4896
    #dbg_value(ptr %22, !4877, !DIExpression(), !4897)
    #dbg_value(ptr %22, !4877, !DIExpression(), !4898)
  %23 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 0, !dbg !4899
  %24 = icmp eq ptr %23, null, !dbg !4899
  br i1 %24, label %deref.throw9, label %deref.next10, !dbg !4899

deref.next10:                                     ; preds = %deref.next8
  %25 = load ptr, ptr %23, align 8, !dbg !4899
  %26 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4900
  %27 = icmp eq ptr %26, null, !dbg !4900
  br i1 %27, label %deref.throw11, label %deref.next12, !dbg !4900

deref.next12:                                     ; preds = %deref.next10
  %28 = load i64, ptr %26, align 8, !dbg !4900
  call void @runtime.memcpy(ptr %22, ptr %25, i64 %28, ptr undef), !dbg !4901
    #dbg_value(ptr %22, !4877, !DIExpression(), !4902)
  %29 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4903
  %30 = icmp eq ptr %29, null, !dbg !4903
  br i1 %30, label %deref.throw13, label %deref.next14, !dbg !4903

deref.next14:                                     ; preds = %deref.next12
  %31 = load i64, ptr %29, align 8, !dbg !4903
  %32 = getelementptr i8, ptr %22, i64 %31, !dbg !4904
  %33 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 0, !dbg !4905
  %34 = icmp eq ptr %33, null, !dbg !4905
  br i1 %34, label %deref.throw15, label %deref.next16, !dbg !4905

deref.next16:                                     ; preds = %deref.next14
  %35 = load ptr, ptr %33, align 8, !dbg !4905
  %36 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4906
  %37 = icmp eq ptr %36, null, !dbg !4906
  br i1 %37, label %deref.throw17, label %deref.next18, !dbg !4906

deref.next18:                                     ; preds = %deref.next16
  %38 = load i64, ptr %36, align 8, !dbg !4906
  call void @runtime.memcpy(ptr %32, ptr %35, i64 %38, ptr undef), !dbg !4907
  store %runtime._string zeroinitializer, ptr %complit, align 8, !dbg !4878
  %39 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !4908
    #dbg_value(ptr %22, !4877, !DIExpression(), !4909)
  %40 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !4910
    #dbg_value(i64 %20, !4876, !DIExpression(), !4911)
  %41 = icmp eq ptr %39, null, !dbg !4908
  br i1 %41, label %store.throw, label %store.next, !dbg !4908

store.next:                                       ; preds = %deref.next18
  store ptr %22, ptr %39, align 8, !dbg !4908
  %42 = icmp eq ptr %40, null, !dbg !4910
  br i1 %42, label %store.throw19, label %store.next20, !dbg !4910

store.next20:                                     ; preds = %store.next
  store i64 %20, ptr %40, align 8, !dbg !4910
    #dbg_value(i64 %20, !4876, !DIExpression(), !4911)
  %43 = load %runtime._string, ptr %complit, align 8, !dbg !4912
  ret %runtime._string %43, !dbg !4913

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !4881
  unreachable, !dbg !4881

deref.throw3:                                     ; preds = %if.else
  call void @runtime.nilPanic(ptr undef), !dbg !4886
  unreachable, !dbg !4886

deref.throw5:                                     ; preds = %if.else2
  call void @runtime.nilPanic(ptr undef), !dbg !4890
  unreachable, !dbg !4890

deref.throw7:                                     ; preds = %deref.next6
  call void @runtime.nilPanic(ptr undef), !dbg !4891
  unreachable, !dbg !4891

deref.throw9:                                     ; preds = %deref.next8
  call void @runtime.nilPanic(ptr undef), !dbg !4899
  unreachable, !dbg !4899

deref.throw11:                                    ; preds = %deref.next10
  call void @runtime.nilPanic(ptr undef), !dbg !4900
  unreachable, !dbg !4900

deref.throw13:                                    ; preds = %deref.next12
  call void @runtime.nilPanic(ptr undef), !dbg !4903
  unreachable, !dbg !4903

deref.throw15:                                    ; preds = %deref.next14
  call void @runtime.nilPanic(ptr undef), !dbg !4905
  unreachable, !dbg !4905

deref.throw17:                                    ; preds = %deref.next16
  call void @runtime.nilPanic(ptr undef), !dbg !4906
  unreachable, !dbg !4906

store.throw:                                      ; preds = %deref.next18
  call void @runtime.nilPanic(ptr undef), !dbg !4908
  unreachable, !dbg !4908

store.throw19:                                    ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !4910
  unreachable, !dbg !4910
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @runtime.stringFromBytes(ptr nocapture readonly dereferenceable_or_null(1) %x.ptr, i64 %x.len, i64 %x.cap, ptr %context) #1 !dbg !4914 {
entry:
  %complit = alloca %runtime._string, align 8, !dbg !4921
  %x = alloca { ptr, i64, i64 }, align 8, !dbg !4921
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %x.ptr, 0, !dbg !4921
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %x.len, 1, !dbg !4921
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %x.cap, 2, !dbg !4921
    #dbg_value(ptr %x.ptr, !4919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4921)
    #dbg_value(i64 %x.len, !4919, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4921)
    #dbg_value(i64 %x.cap, !4919, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4921)
  store { ptr, i64, i64 } zeroinitializer, ptr %x, align 8, !dbg !4921
  store { ptr, i64, i64 } %2, ptr %x, align 8, !dbg !4922
  %3 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4923
  %4 = icmp eq ptr %3, null, !dbg !4923
  br i1 %4, label %deref.throw, label %deref.next, !dbg !4923

deref.next:                                       ; preds = %entry
  %5 = load i64, ptr %3, align 8, !dbg !4923
  %6 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !4924
  %7 = call ptr @runtime.alloc(i64 %5, ptr %6, ptr undef), !dbg !4925
    #dbg_value(ptr %7, !4920, !DIExpression(), !4926)
    #dbg_value(ptr %7, !4920, !DIExpression(), !4927)
  %8 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 0, !dbg !4928
  %9 = icmp eq ptr %8, null, !dbg !4928
  br i1 %9, label %deref.throw1, label %deref.next2, !dbg !4928

deref.next2:                                      ; preds = %deref.next
  %10 = load ptr, ptr %8, align 8, !dbg !4928
  %11 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4929
  %12 = icmp eq ptr %11, null, !dbg !4929
  br i1 %12, label %deref.throw3, label %deref.next4, !dbg !4929

deref.next4:                                      ; preds = %deref.next2
  %13 = load i64, ptr %11, align 8, !dbg !4929
  call void @runtime.memcpy(ptr %7, ptr %10, i64 %13, ptr undef), !dbg !4930
  store %runtime._string zeroinitializer, ptr %complit, align 8, !dbg !4921
  %14 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !4931
    #dbg_value(ptr %7, !4920, !DIExpression(), !4932)
  %15 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !4933
  %16 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4934
  %17 = icmp eq ptr %16, null, !dbg !4934
  br i1 %17, label %deref.throw5, label %deref.next6, !dbg !4934

deref.next6:                                      ; preds = %deref.next4
  %18 = load i64, ptr %16, align 8, !dbg !4934
  %19 = icmp eq ptr %14, null, !dbg !4931
  br i1 %19, label %store.throw, label %store.next, !dbg !4931

store.next:                                       ; preds = %deref.next6
  store ptr %7, ptr %14, align 8, !dbg !4931
  %20 = icmp eq ptr %15, null, !dbg !4933
  br i1 %20, label %store.throw7, label %store.next8, !dbg !4933

store.next8:                                      ; preds = %store.next
  store i64 %18, ptr %15, align 8, !dbg !4933
  %21 = load %runtime._string, ptr %complit, align 8, !dbg !4935
  ret %runtime._string %21, !dbg !4936

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !4923
  unreachable, !dbg !4923

deref.throw1:                                     ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !4928
  unreachable, !dbg !4928

deref.throw3:                                     ; preds = %deref.next2
  call void @runtime.nilPanic(ptr undef), !dbg !4929
  unreachable, !dbg !4929

deref.throw5:                                     ; preds = %deref.next4
  call void @runtime.nilPanic(ptr undef), !dbg !4934
  unreachable, !dbg !4934

store.throw:                                      ; preds = %deref.next6
  call void @runtime.nilPanic(ptr undef), !dbg !4931
  unreachable, !dbg !4931

store.throw7:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !4933
  unreachable, !dbg !4933
}

; Function Attrs: nounwind uwtable(sync)
define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, i64 %n) #1 !dbg !4937 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a.data, 0, !dbg !4948
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %a.len, 1, !dbg !4948
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %a.cap, 2, !dbg !4948
    #dbg_value(ptr %a.data, !4946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4948)
    #dbg_value(i64 %a.len, !4946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4948)
    #dbg_value(i64 %a.cap, !4946, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4948)
    #dbg_value(i64 %n, !4947, !DIExpression(), !4948)
    #dbg_value(i64 %n, !4947, !DIExpression(), !4949)
  %3 = mul i64 %n, 8, !dbg !4950
  %4 = add i64 %3, 1, !dbg !4951
  %5 = sitofp i64 %4 to double, !dbg !4952
  %6 = call double @math.Sqrt(double %5, ptr undef), !dbg !4953
  %7 = fadd double %6, -1.000000e+00, !dbg !4954
  %8 = fdiv double %7, 2.000000e+00, !dbg !4955
  %9 = call double @math.Floor(double %8, ptr undef), !dbg !4956
  %abovemin = fcmp ole double 0xC3E0000000000000, %9, !dbg !4957
  %belowmax = fcmp ole double %9, 0x43DFFFFFFFFFFFFE, !dbg !4957
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4957
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4957
  %isnan = fcmp uno double %9, %9, !dbg !4957
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4957
  %normal = fptosi double %9 to i64, !dbg !4957
  %10 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4957
  ret i64 %10, !dbg !4958
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
!1742 = distinct !DISubprogram(name: "math.Sqrt", linkageName: "math.Sqrt", scope: !1743, file: !1743, line: 93, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !1746)
!1743 = !DIFile(filename: "sqrt.go", directory: "/usr/local/go/src/math")
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!795}
!1746 = !{!1747}
!1747 = !DILocalVariable(name: "x", arg: 1, scope: !1742, file: !1743, line: 93, type: !795)
!1748 = !DILocation(line: 93, column: 6, scope: !1742)
!1749 = distinct !DISubprogram(name: "math.Floor", linkageName: "math.Floor", scope: !1750, file: !1750, line: 14, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !1751)
!1750 = !DIFile(filename: "floor.go", directory: "/usr/local/go/src/math")
!1751 = !{!1752}
!1752 = !DILocalVariable(name: "x", arg: 1, scope: !1749, file: !1750, line: 14, type: !795)
!1753 = !DILocation(line: 14, column: 6, scope: !1749)
!1754 = distinct !DISubprogram(name: "sync/atomic.SwapUint32", linkageName: "sync/atomic.SwapUint32", scope: !1755, file: !1755, line: 77, type: !1756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1759)
!1755 = !DIFile(filename: "doc.go", directory: "/usr/local/go/src/sync/atomic")
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!1758, !98}
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64, dwarfAddressSpace: 0)
!1759 = !{!1760, !1761}
!1760 = !DILocalVariable(name: "addr", arg: 1, scope: !1754, file: !1755, line: 77, type: !1758)
!1761 = !DILocalVariable(name: "new", arg: 2, scope: !1754, file: !1755, line: 77, type: !98)
!1762 = !DILocation(line: 77, column: 6, scope: !1754)
!1763 = distinct !DISubprogram(name: "sync/atomic.CompareAndSwapUint32", linkageName: "sync/atomic.CompareAndSwapUint32", scope: !1755, file: !1755, line: 99, type: !1764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1766)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!1758, !98, !98}
!1766 = !{!1767, !1768, !1769}
!1767 = !DILocalVariable(name: "addr", arg: 1, scope: !1763, file: !1755, line: 99, type: !1758)
!1768 = !DILocalVariable(name: "old", arg: 2, scope: !1763, file: !1755, line: 99, type: !98)
!1769 = !DILocalVariable(name: "new", arg: 3, scope: !1763, file: !1755, line: 99, type: !98)
!1770 = !DILocation(line: 99, column: 6, scope: !1763)
!1771 = distinct !DISubprogram(name: "sync/atomic.AddUint32", linkageName: "sync/atomic.AddUint32", scope: !1755, file: !1755, line: 123, type: !1756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1772)
!1772 = !{!1773, !1774}
!1773 = !DILocalVariable(name: "addr", arg: 1, scope: !1771, file: !1755, line: 123, type: !1758)
!1774 = !DILocalVariable(name: "delta", arg: 2, scope: !1771, file: !1755, line: 123, type: !98)
!1775 = !DILocation(line: 123, column: 6, scope: !1771)
!1776 = distinct !DISubprogram(name: "sync/atomic.LoadUint32", linkageName: "sync/atomic.LoadUint32", scope: !1755, file: !1755, line: 183, type: !1777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1779)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!1758}
!1779 = !{!1780}
!1780 = !DILocalVariable(name: "addr", arg: 1, scope: !1776, file: !1755, line: 183, type: !1758)
!1781 = !DILocation(line: 183, column: 6, scope: !1776)
!1782 = distinct !DISubprogram(name: "sync/atomic.StoreUint32", linkageName: "sync/atomic.StoreUint32", scope: !1755, file: !1755, line: 205, type: !1756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1783)
!1783 = !{!1784, !1785}
!1784 = !DILocalVariable(name: "addr", arg: 1, scope: !1782, file: !1755, line: 205, type: !1758)
!1785 = !DILocalVariable(name: "val", arg: 2, scope: !1782, file: !1755, line: 205, type: !98)
!1786 = !DILocation(line: 205, column: 6, scope: !1782)
!1787 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Add", linkageName: "(*sync/atomic.Uint32).Add", scope: !1788, file: !1788, line: 161, type: !1789, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1792)
!1788 = !DIFile(filename: "type.go", directory: "/usr/local/go/src/sync/atomic")
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!1791, !98}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64, dwarfAddressSpace: 0)
!1792 = !{!1793, !1794}
!1793 = !DILocalVariable(name: "x", arg: 1, scope: !1787, file: !1788, line: 161, type: !1791)
!1794 = !DILocalVariable(name: "delta", arg: 2, scope: !1787, file: !1788, line: 161, type: !98)
!1795 = !DILocation(line: 161, column: 18, scope: !1787)
!1796 = !DILocation(line: 161, column: 69, scope: !1787)
!1797 = !DILocation(line: 161, column: 71, scope: !1787)
!1798 = !DILocation(line: 161, column: 74, scope: !1787)
!1799 = !DILocation(line: 161, column: 67, scope: !1787)
!1800 = !DILocation(line: 161, column: 51, scope: !1787)
!1801 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).CompareAndSwap", linkageName: "(*sync/atomic.Uint32).CompareAndSwap", scope: !1788, file: !1788, line: 156, type: !1802, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1804)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!1791, !98, !98}
!1804 = !{!1805, !1806, !1807}
!1805 = !DILocalVariable(name: "x", arg: 1, scope: !1801, file: !1788, line: 156, type: !1791)
!1806 = !DILocalVariable(name: "old", arg: 2, scope: !1801, file: !1788, line: 156, type: !98)
!1807 = !DILocalVariable(name: "new", arg: 3, scope: !1801, file: !1788, line: 156, type: !98)
!1808 = !DILocation(line: 156, column: 18, scope: !1801)
!1809 = !DILocation(line: 157, column: 31, scope: !1801)
!1810 = !DILocation(line: 157, column: 33, scope: !1801)
!1811 = !DILocation(line: 157, column: 36, scope: !1801)
!1812 = !DILocation(line: 157, column: 41, scope: !1801)
!1813 = !DILocation(line: 157, column: 29, scope: !1801)
!1814 = !DILocation(line: 157, column: 2, scope: !1801)
!1815 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Load", linkageName: "(*sync/atomic.Uint32).Load", scope: !1788, file: !1788, line: 147, type: !1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1818)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!1791}
!1818 = !{!1819}
!1819 = !DILocalVariable(name: "x", arg: 1, scope: !1815, file: !1788, line: 147, type: !1791)
!1820 = !DILocation(line: 147, column: 18, scope: !1815)
!1821 = !DILocation(line: 147, column: 53, scope: !1815)
!1822 = !DILocation(line: 147, column: 55, scope: !1815)
!1823 = !DILocation(line: 147, column: 51, scope: !1815)
!1824 = !DILocation(line: 147, column: 34, scope: !1815)
!1825 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Store", linkageName: "(*sync/atomic.Uint32).Store", scope: !1788, file: !1788, line: 150, type: !1789, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1826)
!1826 = !{!1827, !1828}
!1827 = !DILocalVariable(name: "x", arg: 1, scope: !1825, file: !1788, line: 150, type: !1791)
!1828 = !DILocalVariable(name: "val", arg: 2, scope: !1825, file: !1788, line: 150, type: !98)
!1829 = !DILocation(line: 150, column: 18, scope: !1825)
!1830 = !DILocation(line: 150, column: 51, scope: !1825)
!1831 = !DILocation(line: 150, column: 53, scope: !1825)
!1832 = !DILocation(line: 150, column: 56, scope: !1825)
!1833 = !DILocation(line: 150, column: 49, scope: !1825)
!1834 = !DILocation(line: 150, column: 62, scope: !1825)
!1835 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Swap", linkageName: "(*sync/atomic.Uint32).Swap", scope: !1788, file: !1788, line: 153, type: !1789, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !1836)
!1836 = !{!1837, !1838}
!1837 = !DILocalVariable(name: "x", arg: 1, scope: !1835, file: !1788, line: 153, type: !1791)
!1838 = !DILocalVariable(name: "new", arg: 2, scope: !1835, file: !1788, line: 153, type: !98)
!1839 = !DILocation(line: 153, column: 18, scope: !1835)
!1840 = !DILocation(line: 153, column: 69, scope: !1835)
!1841 = !DILocation(line: 153, column: 71, scope: !1835)
!1842 = !DILocation(line: 153, column: 74, scope: !1835)
!1843 = !DILocation(line: 153, column: 67, scope: !1835)
!1844 = !DILocation(line: 153, column: 50, scope: !1835)
!1845 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wait", linkageName: "(*internal/futex.Futex).Wait", scope: !1846, file: !1846, line: 25, type: !1847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !1850)
!1846 = !DIFile(filename: "futex.go", directory: "/usr/local/lib/tinygo/src/internal/futex")
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!1849, !98}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64, dwarfAddressSpace: 0)
!1850 = !{!1851, !1852}
!1851 = !DILocalVariable(name: "f", arg: 1, scope: !1845, file: !1846, line: 25, type: !1849)
!1852 = !DILocalVariable(name: "cmp", arg: 2, scope: !1845, file: !1846, line: 25, type: !98)
!1853 = !DILocation(line: 25, column: 17, scope: !1845)
!1854 = !DILocation(line: 26, column: 46, scope: !1845)
!1855 = !DILocation(line: 26, column: 48, scope: !1845)
!1856 = !DILocation(line: 26, column: 58, scope: !1845)
!1857 = !DILocation(line: 26, column: 19, scope: !1845)
!1858 = !DILocation(line: 44, column: 2, scope: !1845)
!1859 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wake", linkageName: "(*internal/futex.Futex).Wake", scope: !1846, file: !1846, line: 53, type: !1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !1862)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!1849}
!1862 = !{!1863}
!1863 = !DILocalVariable(name: "f", arg: 1, scope: !1859, file: !1846, line: 53, type: !1849)
!1864 = !DILocation(line: 53, column: 17, scope: !1859)
!1865 = !DILocation(line: 54, column: 46, scope: !1859)
!1866 = !DILocation(line: 54, column: 48, scope: !1859)
!1867 = !DILocation(line: 54, column: 19, scope: !1859)
!1868 = !DILocation(line: 55, column: 2, scope: !1859)
!1869 = distinct !DISubprogram(name: "(*internal/futex.Futex).WakeAll", linkageName: "(*internal/futex.Futex).WakeAll", scope: !1846, file: !1846, line: 58, type: !1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !1870)
!1870 = !{!1871}
!1871 = !DILocalVariable(name: "f", arg: 1, scope: !1869, file: !1846, line: 58, type: !1849)
!1872 = !DILocation(line: 58, column: 17, scope: !1869)
!1873 = !DILocation(line: 59, column: 50, scope: !1869)
!1874 = !DILocation(line: 59, column: 52, scope: !1869)
!1875 = !DILocation(line: 59, column: 23, scope: !1869)
!1876 = !DILocation(line: 60, column: 2, scope: !1869)
!1877 = distinct !DISubprogram(name: "(internal/gclayout.Layout).AsPtr", linkageName: "(internal/gclayout.Layout).AsPtr", scope: !1878, file: !1878, line: 26, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1021, retainedNodes: !1882)
!1878 = !DIFile(filename: "gclayout.go", directory: "/usr/local/lib/tinygo/src/internal/gclayout")
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!1881}
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/gclayout.Layout", baseType: !43)
!1882 = !{!1883}
!1883 = !DILocalVariable(name: "l", arg: 1, scope: !1877, file: !1878, line: 26, type: !1881)
!1884 = !DILocation(line: 26, column: 17, scope: !1877)
!1885 = !DILocation(line: 26, column: 64, scope: !1877)
!1886 = !DILocation(line: 26, column: 63, scope: !1877)
!1887 = !DILocation(line: 26, column: 42, scope: !1877)
!1888 = distinct !DISubprogram(name: "internal/itoa.Itoa", linkageName: "internal/itoa.Itoa", scope: !2, file: !2, line: 10, type: !1889, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !1892)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!1891}
!1891 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!1892 = !{!1893}
!1893 = !DILocalVariable(name: "val", arg: 1, scope: !1888, file: !2, line: 10, type: !1891)
!1894 = !DILocation(line: 10, column: 6, scope: !1888)
!1895 = !DILocation(line: 11, column: 5, scope: !1888)
!1896 = !DILocation(line: 11, column: 9, scope: !1888)
!1897 = !DILocation(line: 0, scope: !1888)
!1898 = !DILocation(line: 12, column: 28, scope: !1888)
!1899 = !DILocation(line: 12, column: 27, scope: !1888)
!1900 = !DILocation(line: 12, column: 21, scope: !1888)
!1901 = !DILocation(line: 12, column: 14, scope: !1888)
!1902 = !DILocation(line: 12, column: 3, scope: !1888)
!1903 = !DILocation(line: 14, column: 20, scope: !1888)
!1904 = !DILocation(line: 14, column: 14, scope: !1888)
!1905 = !DILocation(line: 14, column: 2, scope: !1888)
!1906 = distinct !DISubprogram(name: "internal/itoa.Uitoa", linkageName: "internal/itoa.Uitoa", scope: !2, file: !2, line: 18, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !1907)
!1907 = !{!1908, !1909, !1910}
!1908 = !DILocalVariable(name: "val", arg: 1, scope: !1906, file: !2, line: 18, type: !1738)
!1909 = !DILocalVariable(name: "i", scope: !1906, file: !2, line: 23, type: !1891)
!1910 = !DILocalVariable(name: "q", scope: !1906, file: !2, line: 25, type: !1738)
!1911 = !DILocation(line: 18, column: 6, scope: !1906)
!1912 = !DILocation(line: 19, column: 5, scope: !1906)
!1913 = !DILocation(line: 19, column: 9, scope: !1906)
!1914 = !DILocation(line: 0, scope: !1906)
!1915 = !DILocation(line: 20, column: 3, scope: !1906)
!1916 = !DILocation(line: 22, column: 6, scope: !1906)
!1917 = !DILocation(line: 23, column: 2, scope: !1906)
!1918 = !DILocation(line: 18, column: 12, scope: !1906)
!1919 = !DILocation(line: 24, column: 6, scope: !1906)
!1920 = !DILocation(line: 24, column: 10, scope: !1906)
!1921 = !DILocation(line: 25, column: 8, scope: !1906)
!1922 = !DILocation(line: 25, column: 12, scope: !1906)
!1923 = !DILocation(line: 25, column: 3, scope: !1906)
!1924 = !DILocation(line: 26, column: 7, scope: !1906)
!1925 = !DILocation(line: 26, column: 23, scope: !1906)
!1926 = !DILocation(line: 26, column: 21, scope: !1906)
!1927 = !DILocation(line: 26, column: 29, scope: !1906)
!1928 = !DILocation(line: 26, column: 30, scope: !1906)
!1929 = !DILocation(line: 26, column: 27, scope: !1906)
!1930 = !DILocation(line: 26, column: 16, scope: !1906)
!1931 = !DILocation(line: 26, column: 6, scope: !1906)
!1932 = !DILocation(line: 27, column: 3, scope: !1906)
!1933 = !DILocation(line: 28, column: 9, scope: !1906)
!1934 = !DILocation(line: 28, column: 3, scope: !1906)
!1935 = !DILocation(line: 31, column: 6, scope: !1906)
!1936 = !DILocation(line: 31, column: 22, scope: !1906)
!1937 = !DILocation(line: 31, column: 20, scope: !1906)
!1938 = !DILocation(line: 31, column: 15, scope: !1906)
!1939 = !DILocation(line: 31, column: 5, scope: !1906)
!1940 = !DILocation(line: 32, column: 20, scope: !1906)
!1941 = !DILocation(line: 32, column: 19, scope: !1906)
!1942 = !DILocation(line: 32, column: 15, scope: !1906)
!1943 = !DILocation(line: 32, column: 2, scope: !1906)
!1944 = distinct !DISubprogram(name: "unicode/utf8.DecodeRuneInString", linkageName: "unicode/utf8.DecodeRuneInString", scope: !11, file: !11, line: 219, type: !1945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !1947)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!38}
!1947 = !{!1948, !1949, !1951}
!1948 = !DILocalVariable(name: "s", arg: 1, scope: !1944, file: !11, line: 219, type: !38)
!1949 = !DILocalVariable(name: "r", scope: !1944, file: !11, line: 219, type: !1950)
!1950 = !DIBasicType(name: "rune", size: 32, encoding: DW_ATE_signed)
!1951 = !DILocalVariable(name: "size", scope: !1944, file: !11, line: 219, type: !1891)
!1952 = !DILocation(line: 219, column: 6, scope: !1944)
!1953 = !DILocation(line: 223, column: 5, scope: !1944)
!1954 = !DILocation(line: 223, column: 7, scope: !1944)
!1955 = !DILocation(line: 0, scope: !1944)
!1956 = !DILocation(line: 223, column: 16, scope: !1944)
!1957 = !DILocation(line: 223, column: 17, scope: !1944)
!1958 = !DILocation(line: 223, column: 21, scope: !1944)
!1959 = !DILocation(line: 224, column: 15, scope: !1944)
!1960 = !DILocation(line: 224, column: 16, scope: !1944)
!1961 = !DILocation(line: 224, column: 14, scope: !1944)
!1962 = !DILocation(line: 224, column: 3, scope: !1944)
!1963 = !DILocation(line: 226, column: 36, scope: !1944)
!1964 = !DILocation(line: 226, column: 35, scope: !1944)
!1965 = !DILocation(line: 226, column: 3, scope: !1944)
!1966 = !DILocation(line: 226, column: 6, scope: !1944)
!1967 = !DILocation(line: 228, column: 2, scope: !1944)
!1968 = distinct !DISubprogram(name: "unicode/utf8.decodeRuneInStringSlow", linkageName: "unicode/utf8.decodeRuneInStringSlow", scope: !11, file: !11, line: 231, type: !1945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !1969)
!1969 = !{!1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979}
!1970 = !DILocalVariable(name: "s", arg: 1, scope: !1968, file: !11, line: 231, type: !38)
!1971 = !DILocalVariable(name: "n", scope: !1968, file: !11, line: 232, type: !1891)
!1972 = !DILocalVariable(name: "s0", scope: !1968, file: !11, line: 236, type: !533)
!1973 = !DILocalVariable(name: "x", scope: !1968, file: !11, line: 237, type: !4)
!1974 = !DILocalVariable(name: "mask", scope: !1968, file: !11, line: 242, type: !1950)
!1975 = !DILocalVariable(name: "sz", scope: !1968, file: !11, line: 245, type: !1891)
!1976 = !DILocalVariable(name: "accept", scope: !1968, file: !11, line: 246, type: !18)
!1977 = !DILocalVariable(name: "s1", scope: !1968, file: !11, line: 250, type: !533)
!1978 = !DILocalVariable(name: "s2", scope: !1968, file: !11, line: 257, type: !533)
!1979 = !DILocalVariable(name: "s3", scope: !1968, file: !11, line: 264, type: !533)
!1980 = !DILocation(line: 231, column: 6, scope: !1968)
!1981 = !DILocation(line: 232, column: 11, scope: !1968)
!1982 = !DILocation(line: 232, column: 10, scope: !1968)
!1983 = !DILocation(line: 232, column: 2, scope: !1968)
!1984 = !DILocation(line: 233, column: 5, scope: !1968)
!1985 = !DILocation(line: 233, column: 7, scope: !1968)
!1986 = !DILocation(line: 0, scope: !1968)
!1987 = !DILocation(line: 234, column: 3, scope: !1968)
!1988 = !DILocation(line: 236, column: 8, scope: !1968)
!1989 = !DILocation(line: 236, column: 9, scope: !1968)
!1990 = !DILocation(line: 236, column: 2, scope: !1968)
!1991 = !DILocation(line: 237, column: 13, scope: !1968)
!1992 = !DILocation(line: 237, column: 12, scope: !1968)
!1993 = !DILocation(line: 237, column: 2, scope: !1968)
!1994 = !DILocation(line: 238, column: 5, scope: !1968)
!1995 = !DILocation(line: 238, column: 7, scope: !1968)
!1996 = !DILocation(line: 242, column: 16, scope: !1968)
!1997 = !DILocation(line: 242, column: 15, scope: !1968)
!1998 = !DILocation(line: 242, column: 19, scope: !1968)
!1999 = !DILocation(line: 242, column: 25, scope: !1968)
!2000 = !DILocation(line: 242, column: 3, scope: !1968)
!2001 = !DILocation(line: 243, column: 15, scope: !1968)
!2002 = !DILocation(line: 243, column: 16, scope: !1968)
!2003 = !DILocation(line: 243, column: 14, scope: !1968)
!2004 = !DILocation(line: 243, column: 22, scope: !1968)
!2005 = !DILocation(line: 243, column: 20, scope: !1968)
!2006 = !DILocation(line: 243, column: 39, scope: !1968)
!2007 = !DILocation(line: 243, column: 38, scope: !1968)
!2008 = !DILocation(line: 243, column: 27, scope: !1968)
!2009 = !DILocation(line: 243, column: 3, scope: !1968)
!2010 = !DILocation(line: 245, column: 12, scope: !1968)
!2011 = !DILocation(line: 245, column: 14, scope: !1968)
!2012 = !DILocation(line: 245, column: 11, scope: !1968)
!2013 = !DILocation(line: 245, column: 2, scope: !1968)
!2014 = !DILocation(line: 246, column: 25, scope: !1968)
!2015 = !DILocation(line: 246, column: 26, scope: !1968)
!2016 = !DILocation(line: 246, column: 24, scope: !1968)
!2017 = !DILocation(line: 246, column: 2, scope: !1968)
!2018 = !DILocation(line: 247, column: 5, scope: !1968)
!2019 = !DILocation(line: 247, column: 9, scope: !1968)
!2020 = !DILocation(line: 247, column: 7, scope: !1968)
!2021 = !DILocation(line: 248, column: 3, scope: !1968)
!2022 = !DILocation(line: 250, column: 8, scope: !1968)
!2023 = !DILocation(line: 250, column: 9, scope: !1968)
!2024 = !DILocation(line: 250, column: 2, scope: !1968)
!2025 = !DILocation(line: 251, column: 5, scope: !1968)
!2026 = !DILocation(line: 251, column: 17, scope: !1968)
!2027 = !DILocation(line: 251, column: 8, scope: !1968)
!2028 = !DILocation(line: 252, column: 3, scope: !1968)
!2029 = !DILocation(line: 251, column: 30, scope: !1968)
!2030 = !DILocation(line: 251, column: 35, scope: !1968)
!2031 = !DILocation(line: 251, column: 33, scope: !1968)
!2032 = !DILocation(line: 254, column: 5, scope: !1968)
!2033 = !DILocation(line: 254, column: 8, scope: !1968)
!2034 = !DILocation(line: 255, column: 15, scope: !1968)
!2035 = !DILocation(line: 255, column: 17, scope: !1968)
!2036 = !DILocation(line: 255, column: 14, scope: !1968)
!2037 = !DILocation(line: 255, column: 24, scope: !1968)
!2038 = !DILocation(line: 255, column: 35, scope: !1968)
!2039 = !DILocation(line: 255, column: 37, scope: !1968)
!2040 = !DILocation(line: 255, column: 34, scope: !1968)
!2041 = !DILocation(line: 255, column: 28, scope: !1968)
!2042 = !DILocation(line: 255, column: 3, scope: !1968)
!2043 = !DILocation(line: 257, column: 8, scope: !1968)
!2044 = !DILocation(line: 257, column: 9, scope: !1968)
!2045 = !DILocation(line: 257, column: 2, scope: !1968)
!2046 = !DILocation(line: 258, column: 5, scope: !1968)
!2047 = !DILocation(line: 258, column: 8, scope: !1968)
!2048 = !DILocation(line: 259, column: 3, scope: !1968)
!2049 = !DILocation(line: 258, column: 25, scope: !1968)
!2050 = !DILocation(line: 258, column: 23, scope: !1968)
!2051 = !DILocation(line: 261, column: 5, scope: !1968)
!2052 = !DILocation(line: 261, column: 8, scope: !1968)
!2053 = !DILocation(line: 262, column: 15, scope: !1968)
!2054 = !DILocation(line: 262, column: 17, scope: !1968)
!2055 = !DILocation(line: 262, column: 14, scope: !1968)
!2056 = !DILocation(line: 262, column: 24, scope: !1968)
!2057 = !DILocation(line: 262, column: 36, scope: !1968)
!2058 = !DILocation(line: 262, column: 38, scope: !1968)
!2059 = !DILocation(line: 262, column: 35, scope: !1968)
!2060 = !DILocation(line: 262, column: 45, scope: !1968)
!2061 = !DILocation(line: 262, column: 29, scope: !1968)
!2062 = !DILocation(line: 262, column: 56, scope: !1968)
!2063 = !DILocation(line: 262, column: 58, scope: !1968)
!2064 = !DILocation(line: 262, column: 55, scope: !1968)
!2065 = !DILocation(line: 262, column: 49, scope: !1968)
!2066 = !DILocation(line: 262, column: 3, scope: !1968)
!2067 = !DILocation(line: 264, column: 8, scope: !1968)
!2068 = !DILocation(line: 264, column: 9, scope: !1968)
!2069 = !DILocation(line: 264, column: 2, scope: !1968)
!2070 = !DILocation(line: 265, column: 5, scope: !1968)
!2071 = !DILocation(line: 265, column: 8, scope: !1968)
!2072 = !DILocation(line: 266, column: 3, scope: !1968)
!2073 = !DILocation(line: 265, column: 25, scope: !1968)
!2074 = !DILocation(line: 265, column: 23, scope: !1968)
!2075 = !DILocation(line: 268, column: 14, scope: !1968)
!2076 = !DILocation(line: 268, column: 16, scope: !1968)
!2077 = !DILocation(line: 268, column: 13, scope: !1968)
!2078 = !DILocation(line: 268, column: 23, scope: !1968)
!2079 = !DILocation(line: 268, column: 35, scope: !1968)
!2080 = !DILocation(line: 268, column: 37, scope: !1968)
!2081 = !DILocation(line: 268, column: 34, scope: !1968)
!2082 = !DILocation(line: 268, column: 44, scope: !1968)
!2083 = !DILocation(line: 268, column: 28, scope: !1968)
!2084 = !DILocation(line: 268, column: 56, scope: !1968)
!2085 = !DILocation(line: 268, column: 58, scope: !1968)
!2086 = !DILocation(line: 268, column: 55, scope: !1968)
!2087 = !DILocation(line: 268, column: 65, scope: !1968)
!2088 = !DILocation(line: 268, column: 49, scope: !1968)
!2089 = !DILocation(line: 268, column: 76, scope: !1968)
!2090 = !DILocation(line: 268, column: 78, scope: !1968)
!2091 = !DILocation(line: 268, column: 75, scope: !1968)
!2092 = !DILocation(line: 268, column: 69, scope: !1968)
!2093 = !DILocation(line: 268, column: 2, scope: !1968)
!2094 = distinct !DISubprogram(name: "unicode/utf8.EncodeRune", linkageName: "unicode/utf8.EncodeRune", scope: !11, file: !11, line: 368, type: !2095, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2101)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!2097, !1950}
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]byte", size: 192, align: 64, elements: !2098)
!2098 = !{!2099, !42, !673}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !2100, size: 64, align: 64)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64, align: 64, dwarfAddressSpace: 0)
!2101 = !{!2102, !2103}
!2102 = !DILocalVariable(name: "p", arg: 1, scope: !2094, file: !11, line: 368, type: !2097)
!2103 = !DILocalVariable(name: "r", arg: 2, scope: !2094, file: !11, line: 368, type: !1950)
!2104 = !DILocation(line: 368, column: 6, scope: !2094)
!2105 = !DILocation(line: 370, column: 12, scope: !2094)
!2106 = !DILocation(line: 370, column: 15, scope: !2094)
!2107 = !DILocation(line: 0, scope: !2094)
!2108 = !DILocation(line: 371, column: 3, scope: !2094)
!2109 = !DILocation(line: 371, column: 15, scope: !2094)
!2110 = !DILocation(line: 371, column: 14, scope: !2094)
!2111 = !DILocation(line: 371, column: 4, scope: !2094)
!2112 = !DILocation(line: 372, column: 3, scope: !2094)
!2113 = !DILocation(line: 374, column: 28, scope: !2094)
!2114 = !DILocation(line: 374, column: 31, scope: !2094)
!2115 = !DILocation(line: 374, column: 27, scope: !2094)
!2116 = !DILocation(line: 374, column: 2, scope: !2094)
!2117 = distinct !DISubprogram(name: "unicode/utf8.encodeRuneNonASCII", linkageName: "unicode/utf8.encodeRuneNonASCII", scope: !11, file: !11, line: 377, type: !2095, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2118)
!2118 = !{!2119, !2120, !2121}
!2119 = !DILocalVariable(name: "p", arg: 1, scope: !2117, file: !11, line: 377, type: !2097)
!2120 = !DILocalVariable(name: "r", arg: 2, scope: !2117, file: !11, line: 377, type: !1950)
!2121 = !DILocalVariable(name: "i", scope: !2117, file: !11, line: 379, type: !98)
!2122 = !DILocation(line: 377, column: 6, scope: !2117)
!2123 = !DILocation(line: 379, column: 21, scope: !2117)
!2124 = !DILocation(line: 379, column: 9, scope: !2117)
!2125 = !DILocation(line: 380, column: 7, scope: !2117)
!2126 = !DILocation(line: 380, column: 9, scope: !2117)
!2127 = !DILocation(line: 0, scope: !2117)
!2128 = !DILocation(line: 381, column: 7, scope: !2117)
!2129 = !DILocation(line: 381, column: 8, scope: !2117)
!2130 = !DILocation(line: 382, column: 3, scope: !2117)
!2131 = !DILocation(line: 382, column: 20, scope: !2117)
!2132 = !DILocation(line: 382, column: 21, scope: !2117)
!2133 = !DILocation(line: 382, column: 19, scope: !2117)
!2134 = !DILocation(line: 382, column: 13, scope: !2117)
!2135 = !DILocation(line: 382, column: 4, scope: !2117)
!2136 = !DILocation(line: 383, column: 3, scope: !2117)
!2137 = !DILocation(line: 383, column: 20, scope: !2117)
!2138 = !DILocation(line: 383, column: 19, scope: !2117)
!2139 = !DILocation(line: 383, column: 22, scope: !2117)
!2140 = !DILocation(line: 383, column: 13, scope: !2117)
!2141 = !DILocation(line: 383, column: 4, scope: !2117)
!2142 = !DILocation(line: 384, column: 3, scope: !2117)
!2143 = !DILocation(line: 385, column: 7, scope: !2117)
!2144 = !DILocation(line: 385, column: 9, scope: !2117)
!2145 = !DILocation(line: 386, column: 7, scope: !2117)
!2146 = !DILocation(line: 386, column: 8, scope: !2117)
!2147 = !DILocation(line: 387, column: 3, scope: !2117)
!2148 = !DILocation(line: 387, column: 20, scope: !2117)
!2149 = !DILocation(line: 387, column: 21, scope: !2117)
!2150 = !DILocation(line: 387, column: 19, scope: !2117)
!2151 = !DILocation(line: 387, column: 13, scope: !2117)
!2152 = !DILocation(line: 387, column: 4, scope: !2117)
!2153 = !DILocation(line: 388, column: 3, scope: !2117)
!2154 = !DILocation(line: 388, column: 20, scope: !2117)
!2155 = !DILocation(line: 388, column: 21, scope: !2117)
!2156 = !DILocation(line: 388, column: 19, scope: !2117)
!2157 = !DILocation(line: 388, column: 25, scope: !2117)
!2158 = !DILocation(line: 388, column: 13, scope: !2117)
!2159 = !DILocation(line: 388, column: 4, scope: !2117)
!2160 = !DILocation(line: 389, column: 3, scope: !2117)
!2161 = !DILocation(line: 389, column: 20, scope: !2117)
!2162 = !DILocation(line: 389, column: 19, scope: !2117)
!2163 = !DILocation(line: 389, column: 22, scope: !2117)
!2164 = !DILocation(line: 389, column: 13, scope: !2117)
!2165 = !DILocation(line: 389, column: 4, scope: !2117)
!2166 = !DILocation(line: 390, column: 3, scope: !2117)
!2167 = !DILocation(line: 385, column: 40, scope: !2117)
!2168 = !DILocation(line: 385, column: 38, scope: !2117)
!2169 = !DILocation(line: 385, column: 45, scope: !2117)
!2170 = !DILocation(line: 385, column: 47, scope: !2117)
!2171 = !DILocation(line: 385, column: 42, scope: !2117)
!2172 = !DILocation(line: 391, column: 7, scope: !2117)
!2173 = !DILocation(line: 391, column: 9, scope: !2117)
!2174 = !DILocation(line: 391, column: 23, scope: !2117)
!2175 = !DILocation(line: 391, column: 25, scope: !2117)
!2176 = !DILocation(line: 391, column: 20, scope: !2117)
!2177 = !DILocation(line: 392, column: 7, scope: !2117)
!2178 = !DILocation(line: 392, column: 8, scope: !2117)
!2179 = !DILocation(line: 393, column: 3, scope: !2117)
!2180 = !DILocation(line: 393, column: 20, scope: !2117)
!2181 = !DILocation(line: 393, column: 21, scope: !2117)
!2182 = !DILocation(line: 393, column: 19, scope: !2117)
!2183 = !DILocation(line: 393, column: 13, scope: !2117)
!2184 = !DILocation(line: 393, column: 4, scope: !2117)
!2185 = !DILocation(line: 394, column: 3, scope: !2117)
!2186 = !DILocation(line: 394, column: 20, scope: !2117)
!2187 = !DILocation(line: 394, column: 21, scope: !2117)
!2188 = !DILocation(line: 394, column: 19, scope: !2117)
!2189 = !DILocation(line: 394, column: 26, scope: !2117)
!2190 = !DILocation(line: 394, column: 13, scope: !2117)
!2191 = !DILocation(line: 394, column: 4, scope: !2117)
!2192 = !DILocation(line: 395, column: 3, scope: !2117)
!2193 = !DILocation(line: 395, column: 20, scope: !2117)
!2194 = !DILocation(line: 395, column: 21, scope: !2117)
!2195 = !DILocation(line: 395, column: 19, scope: !2117)
!2196 = !DILocation(line: 395, column: 25, scope: !2117)
!2197 = !DILocation(line: 395, column: 13, scope: !2117)
!2198 = !DILocation(line: 395, column: 4, scope: !2117)
!2199 = !DILocation(line: 396, column: 3, scope: !2117)
!2200 = !DILocation(line: 396, column: 20, scope: !2117)
!2201 = !DILocation(line: 396, column: 19, scope: !2117)
!2202 = !DILocation(line: 396, column: 22, scope: !2117)
!2203 = !DILocation(line: 396, column: 13, scope: !2117)
!2204 = !DILocation(line: 396, column: 4, scope: !2117)
!2205 = !DILocation(line: 397, column: 3, scope: !2117)
!2206 = !DILocation(line: 399, column: 7, scope: !2117)
!2207 = !DILocation(line: 399, column: 8, scope: !2117)
!2208 = !DILocation(line: 400, column: 3, scope: !2117)
!2209 = !DILocation(line: 400, column: 4, scope: !2117)
!2210 = !DILocation(line: 401, column: 3, scope: !2117)
!2211 = !DILocation(line: 401, column: 4, scope: !2117)
!2212 = !DILocation(line: 402, column: 3, scope: !2117)
!2213 = !DILocation(line: 402, column: 4, scope: !2117)
!2214 = !DILocation(line: 403, column: 3, scope: !2117)
!2215 = distinct !DISubprogram(name: "unicode/utf8.ValidRune", linkageName: "unicode/utf8.ValidRune", scope: !11, file: !11, line: 577, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2218)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!1950}
!2218 = !{!2219}
!2219 = !DILocalVariable(name: "r", arg: 1, scope: !2215, file: !11, line: 577, type: !1950)
!2220 = !DILocation(line: 577, column: 6, scope: !2215)
!2221 = !DILocation(line: 579, column: 12, scope: !2215)
!2222 = !DILocation(line: 579, column: 9, scope: !2215)
!2223 = !DILocation(line: 0, scope: !2215)
!2224 = !DILocation(line: 579, column: 17, scope: !2215)
!2225 = !DILocation(line: 579, column: 19, scope: !2215)
!2226 = !DILocation(line: 579, column: 14, scope: !2215)
!2227 = !DILocation(line: 580, column: 3, scope: !2215)
!2228 = !DILocation(line: 581, column: 22, scope: !2215)
!2229 = !DILocation(line: 581, column: 20, scope: !2215)
!2230 = !DILocation(line: 581, column: 27, scope: !2215)
!2231 = !DILocation(line: 581, column: 29, scope: !2215)
!2232 = !DILocation(line: 581, column: 24, scope: !2215)
!2233 = !DILocation(line: 582, column: 3, scope: !2215)
!2234 = !DILocation(line: 584, column: 2, scope: !2215)
!2235 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).Kind", linkageName: "(*internal/reflectlite.RawType).Kind", scope: !27, file: !27, line: 380, type: !2236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2238)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!1049}
!2238 = !{!2239, !2240}
!2239 = !DILocalVariable(name: "t", arg: 1, scope: !2235, file: !27, line: 380, type: !1049)
!2240 = !DILocalVariable(name: "tag", scope: !2235, file: !27, line: 385, type: !43)
!2241 = !DILocation(line: 380, column: 19, scope: !2235)
!2242 = !DILocation(line: 381, column: 5, scope: !2235)
!2243 = !DILocation(line: 381, column: 7, scope: !2235)
!2244 = !DILocation(line: 0, scope: !2235)
!2245 = !DILocation(line: 382, column: 3, scope: !2235)
!2246 = !DILocation(line: 385, column: 12, scope: !2235)
!2247 = !DILocation(line: 385, column: 20, scope: !2235)
!2248 = !DILocation(line: 385, column: 5, scope: !2235)
!2249 = !DILocation(line: 385, column: 24, scope: !2235)
!2250 = !DILocation(line: 385, column: 28, scope: !2235)
!2251 = !DILocation(line: 386, column: 3, scope: !2235)
!2252 = !DILocation(line: 389, column: 14, scope: !2235)
!2253 = !DILocation(line: 389, column: 16, scope: !2235)
!2254 = !DILocation(line: 389, column: 21, scope: !2235)
!2255 = !DILocation(line: 389, column: 2, scope: !2235)
!2256 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).elem", linkageName: "(*internal/reflectlite.RawType).elem", scope: !27, file: !27, line: 410, type: !2236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2257)
!2257 = !{!2258, !2259, !2260, !2261}
!2258 = !DILocalVariable(name: "t", arg: 1, scope: !2256, file: !27, line: 410, type: !1049)
!2259 = !DILocalVariable(name: "tag", scope: !2256, file: !27, line: 411, type: !43)
!2260 = !DILocalVariable(name: "underlying", scope: !2256, file: !27, line: 415, type: !1049)
!2261 = !DILocalVariable(name: "errTypeElem", scope: !2256, file: !27, line: 393, type: !33)
!2262 = !DILocation(line: 410, column: 19, scope: !2256)
!2263 = !DILocation(line: 411, column: 12, scope: !2256)
!2264 = !DILocation(line: 411, column: 20, scope: !2256)
!2265 = !DILocation(line: 411, column: 5, scope: !2256)
!2266 = !DILocation(line: 411, column: 24, scope: !2256)
!2267 = !DILocation(line: 411, column: 28, scope: !2256)
!2268 = !DILocation(line: 0, scope: !2256)
!2269 = !DILocation(line: 412, column: 47, scope: !2256)
!2270 = !DILocation(line: 412, column: 31, scope: !2256)
!2271 = !DILocation(line: 412, column: 3, scope: !2256)
!2272 = !DILocation(line: 415, column: 16, scope: !2256)
!2273 = !DILocation(line: 415, column: 28, scope: !2256)
!2274 = !DILocation(line: 415, column: 2, scope: !2256)
!2275 = !DILocation(line: 416, column: 9, scope: !2256)
!2276 = !DILocation(line: 416, column: 24, scope: !2256)
!2277 = !DILocation(line: 417, column: 7, scope: !2256)
!2278 = !DILocation(line: 418, column: 36, scope: !2256)
!2279 = !DILocation(line: 418, column: 49, scope: !2256)
!2280 = !DILocation(line: 418, column: 3, scope: !2256)
!2281 = !DILocation(line: 419, column: 7, scope: !2256)
!2282 = !DILocation(line: 420, column: 37, scope: !2256)
!2283 = !DILocation(line: 420, column: 50, scope: !2256)
!2284 = !DILocation(line: 420, column: 3, scope: !2256)
!2285 = !DILocation(line: 419, column: 13, scope: !2256)
!2286 = !DILocation(line: 419, column: 20, scope: !2256)
!2287 = !DILocation(line: 419, column: 27, scope: !2256)
!2288 = !DILocation(line: 422, column: 9, scope: !2256)
!2289 = !DILocation(line: 422, column: 8, scope: !2256)
!2290 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).Len", linkageName: "(*internal/reflectlite.RawType).Len", scope: !27, file: !27, line: 620, type: !2236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2291)
!2291 = !{!2292, !2293}
!2292 = !DILocalVariable(name: "t", arg: 1, scope: !2290, file: !27, line: 620, type: !1049)
!2293 = !DILocalVariable(name: "errTypeLen", scope: !2290, file: !27, line: 397, type: !33)
!2294 = !DILocation(line: 620, column: 19, scope: !2290)
!2295 = !DILocation(line: 621, column: 5, scope: !2290)
!2296 = !DILocation(line: 621, column: 11, scope: !2290)
!2297 = !DILocation(line: 621, column: 14, scope: !2290)
!2298 = !DILocation(line: 0, scope: !2290)
!2299 = !DILocation(line: 622, column: 9, scope: !2290)
!2300 = !DILocation(line: 622, column: 8, scope: !2290)
!2301 = !DILocation(line: 625, column: 41, scope: !2290)
!2302 = !DILocation(line: 625, column: 53, scope: !2290)
!2303 = !DILocation(line: 625, column: 58, scope: !2290)
!2304 = !DILocation(line: 625, column: 2, scope: !2290)
!2305 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).underlying", linkageName: "(*internal/reflectlite.RawType).underlying", scope: !27, file: !27, line: 263, type: !2236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2306)
!2306 = !{!2307}
!2307 = !DILocalVariable(name: "t", arg: 1, scope: !2305, file: !27, line: 263, type: !1049)
!2308 = !DILocation(line: 263, column: 19, scope: !2305)
!2309 = !DILocation(line: 264, column: 5, scope: !2305)
!2310 = !DILocation(line: 264, column: 14, scope: !2305)
!2311 = !DILocation(line: 0, scope: !2305)
!2312 = !DILocation(line: 265, column: 37, scope: !2305)
!2313 = !DILocation(line: 265, column: 41, scope: !2305)
!2314 = !DILocation(line: 265, column: 3, scope: !2305)
!2315 = !DILocation(line: 267, column: 9, scope: !2305)
!2316 = !DILocation(line: 267, column: 2, scope: !2305)
!2317 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).isNamed", linkageName: "(*internal/reflectlite.RawType).isNamed", scope: !27, file: !27, line: 274, type: !2236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2318)
!2318 = !{!2319, !2320}
!2319 = !DILocalVariable(name: "t", arg: 1, scope: !2317, file: !27, line: 274, type: !1049)
!2320 = !DILocalVariable(name: "tag", scope: !2317, file: !27, line: 275, type: !43)
!2321 = !DILocation(line: 274, column: 19, scope: !2317)
!2322 = !DILocation(line: 275, column: 12, scope: !2317)
!2323 = !DILocation(line: 275, column: 20, scope: !2317)
!2324 = !DILocation(line: 275, column: 5, scope: !2317)
!2325 = !DILocation(line: 275, column: 24, scope: !2317)
!2326 = !DILocation(line: 275, column: 28, scope: !2317)
!2327 = !DILocation(line: 0, scope: !2317)
!2328 = !DILocation(line: 276, column: 3, scope: !2317)
!2329 = !DILocation(line: 278, column: 9, scope: !2317)
!2330 = !DILocation(line: 278, column: 11, scope: !2317)
!2331 = !DILocation(line: 278, column: 15, scope: !2317)
!2332 = !DILocation(line: 278, column: 26, scope: !2317)
!2333 = !DILocation(line: 278, column: 2, scope: !2317)
!2334 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).ptrtag", linkageName: "(*internal/reflectlite.RawType).ptrtag", scope: !27, file: !27, line: 270, type: !2236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2335)
!2335 = !{!2336}
!2336 = !DILocalVariable(name: "t", arg: 1, scope: !2334, file: !27, line: 270, type: !1049)
!2337 = !DILocation(line: 270, column: 19, scope: !2334)
!2338 = !DILocation(line: 271, column: 32, scope: !2334)
!2339 = !DILocation(line: 271, column: 16, scope: !2334)
!2340 = !DILocation(line: 271, column: 36, scope: !2334)
!2341 = !DILocation(line: 271, column: 2, scope: !2334)
!2342 = distinct !DISubprogram(name: "(*internal/reflectlite.TypeError).Error", linkageName: "(*internal/reflectlite.TypeError).Error", scope: !27, file: !27, line: 1211, type: !2343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2345)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!33}
!2345 = !{!2346}
!2346 = !DILocalVariable(name: "e", arg: 1, scope: !2342, file: !27, line: 1211, type: !33)
!2347 = !DILocation(line: 1211, column: 21, scope: !2342)
!2348 = !DILocation(line: 1212, column: 44, scope: !2342)
!2349 = !DILocation(line: 1212, column: 46, scope: !2342)
!2350 = !DILocation(line: 1212, column: 42, scope: !2342)
!2351 = !DILocation(line: 1212, column: 53, scope: !2342)
!2352 = !DILocation(line: 1212, column: 2, scope: !2342)
!2353 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).ChanDir", linkageName: "(*internal/reflectlite.RawType).ChanDir", scope: !27, file: !27, line: 893, type: !2236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2354)
!2354 = !{!2355, !2356, !2357}
!2355 = !DILocalVariable(name: "t", arg: 1, scope: !2353, file: !27, line: 893, type: !1049)
!2356 = !DILocalVariable(name: "errTypeChanDir", scope: !2353, file: !27, line: 399, type: !33)
!2357 = !DILocalVariable(name: "dir", scope: !2353, file: !27, line: 898, type: !1891)
!2358 = !DILocation(line: 893, column: 19, scope: !2353)
!2359 = !DILocation(line: 894, column: 5, scope: !2353)
!2360 = !DILocation(line: 894, column: 11, scope: !2353)
!2361 = !DILocation(line: 894, column: 14, scope: !2353)
!2362 = !DILocation(line: 0, scope: !2353)
!2363 = !DILocation(line: 895, column: 9, scope: !2353)
!2364 = !DILocation(line: 895, column: 8, scope: !2353)
!2365 = !DILocation(line: 898, column: 40, scope: !2353)
!2366 = !DILocation(line: 898, column: 44, scope: !2353)
!2367 = !DILocation(line: 898, column: 12, scope: !2353)
!2368 = !DILocation(line: 898, column: 2, scope: !2353)
!2369 = !DILocation(line: 901, column: 17, scope: !2353)
!2370 = !DILocation(line: 901, column: 2, scope: !2353)
!2371 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).NumField", linkageName: "(*internal/reflectlite.RawType).NumField", scope: !27, file: !27, line: 630, type: !2236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2372)
!2372 = !{!2373, !2374}
!2373 = !DILocalVariable(name: "t", arg: 1, scope: !2371, file: !27, line: 630, type: !1049)
!2374 = !DILocalVariable(name: "errTypeNumField", scope: !2371, file: !27, line: 398, type: !33)
!2375 = !DILocation(line: 630, column: 19, scope: !2371)
!2376 = !DILocation(line: 631, column: 5, scope: !2371)
!2377 = !DILocation(line: 631, column: 11, scope: !2371)
!2378 = !DILocation(line: 631, column: 14, scope: !2371)
!2379 = !DILocation(line: 0, scope: !2371)
!2380 = !DILocation(line: 632, column: 9, scope: !2371)
!2381 = !DILocation(line: 632, column: 8, scope: !2371)
!2382 = !DILocation(line: 634, column: 42, scope: !2371)
!2383 = !DILocation(line: 634, column: 54, scope: !2371)
!2384 = !DILocation(line: 634, column: 59, scope: !2371)
!2385 = !DILocation(line: 634, column: 12, scope: !2371)
!2386 = !DILocation(line: 634, column: 2, scope: !2371)
!2387 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).String", linkageName: "(*internal/reflectlite.RawType).String", scope: !27, file: !27, line: 316, type: !2236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2388)
!2388 = !{!2389, !2390, !2391, !2392, !2393, !2394, !2395}
!2389 = !DILocalVariable(name: "t", arg: 1, scope: !2387, file: !27, line: 316, type: !1049)
!2390 = !DILocalVariable(name: "s", scope: !2387, file: !27, line: 318, type: !38)
!2391 = !DILocalVariable(name: "elem", scope: !2387, file: !27, line: 326, type: !38)
!2392 = !DILocalVariable(name: "numField", scope: !2387, file: !27, line: 352, type: !1891)
!2393 = !DILocalVariable(name: "s", scope: !2387, file: !27, line: 356, type: !38)
!2394 = !DILocalVariable(name: "i", scope: !2387, file: !27, line: 357, type: !1891)
!2395 = !DILocalVariable(name: "f", scope: !2387, file: !27, line: 358, type: !2396)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.rawStructField", baseType: !2397)
!2397 = !DICompositeType(tag: DW_TAG_structure_type, size: 576, align: 64, elements: !2398)
!2398 = !{!668, !2399, !2400, !2401, !2403, !2404}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "PkgPath", baseType: !38, size: 128, align: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "Type", baseType: !1049, size: 64, align: 64, offset: 256)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "Tag", baseType: !2402, size: 128, align: 64, offset: 320)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.StructTag", baseType: !38)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "Offset", baseType: !43, size: 64, align: 64, offset: 448)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "Anonymous", baseType: !371, size: 8, align: 8, offset: 512)
!2405 = !DILocation(line: 316, column: 19, scope: !2387)
!2406 = !DILocation(line: 317, column: 5, scope: !2387)
!2407 = !DILocation(line: 317, column: 14, scope: !2387)
!2408 = !DILocation(line: 0, scope: !2387)
!2409 = !DILocation(line: 318, column: 8, scope: !2387)
!2410 = !DILocation(line: 318, column: 14, scope: !2387)
!2411 = !DILocation(line: 318, column: 3, scope: !2387)
!2412 = !DILocation(line: 319, column: 6, scope: !2387)
!2413 = !DILocation(line: 319, column: 7, scope: !2387)
!2414 = !DILocation(line: 319, column: 11, scope: !2387)
!2415 = !DILocation(line: 320, column: 11, scope: !2387)
!2416 = !DILocation(line: 320, column: 12, scope: !2387)
!2417 = !DILocation(line: 320, column: 4, scope: !2387)
!2418 = !DILocation(line: 322, column: 10, scope: !2387)
!2419 = !DILocation(line: 322, column: 3, scope: !2387)
!2420 = !DILocation(line: 324, column: 9, scope: !2387)
!2421 = !DILocation(line: 324, column: 15, scope: !2387)
!2422 = !DILocation(line: 325, column: 7, scope: !2387)
!2423 = !DILocation(line: 326, column: 11, scope: !2387)
!2424 = !DILocation(line: 326, column: 17, scope: !2387)
!2425 = !DILocation(line: 326, column: 26, scope: !2387)
!2426 = !DILocation(line: 326, column: 3, scope: !2387)
!2427 = !DILocation(line: 327, column: 10, scope: !2387)
!2428 = !DILocation(line: 327, column: 19, scope: !2387)
!2429 = !DILocation(line: 328, column: 8, scope: !2387)
!2430 = !DILocation(line: 329, column: 23, scope: !2387)
!2431 = !DILocation(line: 329, column: 21, scope: !2387)
!2432 = !DILocation(line: 329, column: 4, scope: !2387)
!2433 = !DILocation(line: 330, column: 8, scope: !2387)
!2434 = !DILocation(line: 331, column: 23, scope: !2387)
!2435 = !DILocation(line: 331, column: 21, scope: !2387)
!2436 = !DILocation(line: 331, column: 4, scope: !2387)
!2437 = !DILocation(line: 332, column: 8, scope: !2387)
!2438 = !DILocation(line: 333, column: 7, scope: !2387)
!2439 = !DILocation(line: 333, column: 11, scope: !2387)
!2440 = !DILocation(line: 333, column: 15, scope: !2387)
!2441 = !DILocation(line: 338, column: 23, scope: !2387)
!2442 = !DILocation(line: 338, column: 21, scope: !2387)
!2443 = !DILocation(line: 338, column: 28, scope: !2387)
!2444 = !DILocation(line: 338, column: 5, scope: !2387)
!2445 = !DILocation(line: 340, column: 21, scope: !2387)
!2446 = !DILocation(line: 340, column: 19, scope: !2387)
!2447 = !DILocation(line: 340, column: 4, scope: !2387)
!2448 = !DILocation(line: 377, column: 9, scope: !2387)
!2449 = !DILocation(line: 377, column: 15, scope: !2387)
!2450 = !DILocation(line: 377, column: 24, scope: !2387)
!2451 = !DILocation(line: 377, column: 2, scope: !2387)
!2452 = !DILocation(line: 343, column: 7, scope: !2387)
!2453 = !DILocation(line: 344, column: 16, scope: !2387)
!2454 = !DILocation(line: 344, column: 22, scope: !2387)
!2455 = !DILocation(line: 344, column: 31, scope: !2387)
!2456 = !DILocation(line: 344, column: 14, scope: !2387)
!2457 = !DILocation(line: 344, column: 3, scope: !2387)
!2458 = !DILocation(line: 345, column: 7, scope: !2387)
!2459 = !DILocation(line: 346, column: 17, scope: !2387)
!2460 = !DILocation(line: 346, column: 23, scope: !2387)
!2461 = !DILocation(line: 346, column: 32, scope: !2387)
!2462 = !DILocation(line: 346, column: 15, scope: !2387)
!2463 = !DILocation(line: 346, column: 3, scope: !2387)
!2464 = !DILocation(line: 347, column: 7, scope: !2387)
!2465 = !DILocation(line: 348, column: 26, scope: !2387)
!2466 = !DILocation(line: 348, column: 31, scope: !2387)
!2467 = !DILocation(line: 348, column: 25, scope: !2387)
!2468 = !DILocation(line: 348, column: 14, scope: !2387)
!2469 = !DILocation(line: 348, column: 35, scope: !2387)
!2470 = !DILocation(line: 348, column: 43, scope: !2387)
!2471 = !DILocation(line: 348, column: 49, scope: !2387)
!2472 = !DILocation(line: 348, column: 58, scope: !2387)
!2473 = !DILocation(line: 348, column: 41, scope: !2387)
!2474 = !DILocation(line: 348, column: 3, scope: !2387)
!2475 = !DILocation(line: 349, column: 7, scope: !2387)
!2476 = !DILocation(line: 350, column: 19, scope: !2387)
!2477 = !DILocation(line: 350, column: 24, scope: !2387)
!2478 = !DILocation(line: 350, column: 33, scope: !2387)
!2479 = !DILocation(line: 350, column: 17, scope: !2387)
!2480 = !DILocation(line: 350, column: 36, scope: !2387)
!2481 = !DILocation(line: 350, column: 44, scope: !2387)
!2482 = !DILocation(line: 350, column: 50, scope: !2387)
!2483 = !DILocation(line: 350, column: 59, scope: !2387)
!2484 = !DILocation(line: 350, column: 42, scope: !2387)
!2485 = !DILocation(line: 350, column: 3, scope: !2387)
!2486 = !DILocation(line: 351, column: 7, scope: !2387)
!2487 = !DILocation(line: 352, column: 15, scope: !2387)
!2488 = !DILocation(line: 352, column: 25, scope: !2387)
!2489 = !DILocation(line: 352, column: 3, scope: !2387)
!2490 = !DILocation(line: 353, column: 6, scope: !2387)
!2491 = !DILocation(line: 353, column: 15, scope: !2387)
!2492 = !DILocation(line: 354, column: 4, scope: !2387)
!2493 = !DILocation(line: 356, column: 3, scope: !2387)
!2494 = !DILocation(line: 357, column: 7, scope: !2387)
!2495 = !DILocation(line: 357, column: 15, scope: !2387)
!2496 = !DILocation(line: 357, column: 19, scope: !2387)
!2497 = !DILocation(line: 357, column: 17, scope: !2387)
!2498 = !DILocation(line: 358, column: 9, scope: !2387)
!2499 = !DILocation(line: 358, column: 20, scope: !2387)
!2500 = !DILocation(line: 358, column: 19, scope: !2387)
!2501 = !DILocation(line: 358, column: 4, scope: !2387)
!2502 = !DILocation(line: 359, column: 17, scope: !2387)
!2503 = !DILocation(line: 359, column: 13, scope: !2387)
!2504 = !DILocation(line: 359, column: 22, scope: !2387)
!2505 = !DILocation(line: 359, column: 32, scope: !2387)
!2506 = !DILocation(line: 359, column: 43, scope: !2387)
!2507 = !DILocation(line: 359, column: 28, scope: !2387)
!2508 = !DILocation(line: 359, column: 4, scope: !2387)
!2509 = !DILocation(line: 360, column: 9, scope: !2387)
!2510 = !DILocation(line: 360, column: 13, scope: !2387)
!2511 = !DILocation(line: 361, column: 31, scope: !2387)
!2512 = !DILocation(line: 361, column: 21, scope: !2387)
!2513 = !DILocation(line: 361, column: 14, scope: !2387)
!2514 = !DILocation(line: 361, column: 5, scope: !2387)
!2515 = !DILocation(line: 364, column: 7, scope: !2387)
!2516 = !DILocation(line: 364, column: 11, scope: !2387)
!2517 = !DILocation(line: 364, column: 19, scope: !2387)
!2518 = !DILocation(line: 364, column: 9, scope: !2387)
!2519 = !DILocation(line: 365, column: 5, scope: !2387)
!2520 = !DILocation(line: 357, column: 29, scope: !2387)
!2521 = !DILocation(line: 368, column: 3, scope: !2387)
!2522 = !DILocation(line: 369, column: 10, scope: !2387)
!2523 = !DILocation(line: 369, column: 3, scope: !2387)
!2524 = !DILocation(line: 370, column: 7, scope: !2387)
!2525 = !DILocation(line: 372, column: 3, scope: !2387)
!2526 = !DILocation(line: 374, column: 10, scope: !2387)
!2527 = !DILocation(line: 374, column: 16, scope: !2387)
!2528 = !DILocation(line: 374, column: 25, scope: !2387)
!2529 = !DILocation(line: 374, column: 3, scope: !2387)
!2530 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).key", linkageName: "(*internal/reflectlite.RawType).key", scope: !27, file: !27, line: 426, type: !2236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2531)
!2531 = !{!2532, !2533, !2534}
!2532 = !DILocalVariable(name: "t", arg: 1, scope: !2530, file: !27, line: 426, type: !1049)
!2533 = !DILocalVariable(name: "underlying", scope: !2530, file: !27, line: 427, type: !1049)
!2534 = !DILocalVariable(name: "errTypeKey", scope: !2530, file: !27, line: 394, type: !33)
!2535 = !DILocation(line: 426, column: 19, scope: !2530)
!2536 = !DILocation(line: 427, column: 16, scope: !2530)
!2537 = !DILocation(line: 427, column: 28, scope: !2530)
!2538 = !DILocation(line: 427, column: 2, scope: !2530)
!2539 = !DILocation(line: 428, column: 5, scope: !2530)
!2540 = !DILocation(line: 428, column: 20, scope: !2530)
!2541 = !DILocation(line: 428, column: 23, scope: !2530)
!2542 = !DILocation(line: 0, scope: !2530)
!2543 = !DILocation(line: 429, column: 9, scope: !2530)
!2544 = !DILocation(line: 429, column: 8, scope: !2530)
!2545 = !DILocation(line: 431, column: 35, scope: !2530)
!2546 = !DILocation(line: 431, column: 48, scope: !2530)
!2547 = !DILocation(line: 431, column: 2, scope: !2530)
!2548 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).name", linkageName: "(*internal/reflectlite.RawType).name", scope: !27, file: !27, line: 939, type: !2236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2549)
!2549 = !{!2550, !2551, !2561, !2562}
!2550 = !DILocalVariable(name: "t", arg: 1, scope: !2548, file: !27, line: 939, type: !1049)
!2551 = !DILocalVariable(name: "ntype", scope: !2548, file: !27, line: 940, type: !2552)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64, align: 64, dwarfAddressSpace: 0)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.namedType", baseType: !2554)
!2554 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !2555)
!2555 = !{!2556, !2557, !2558, !2559, !2560}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "RawType", baseType: !1050, size: 8, align: 8)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "numMethod", baseType: !90, size: 16, align: 16, offset: 16)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !1049, size: 64, align: 64, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "elem", baseType: !1049, size: 64, align: 64, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", baseType: !2100, size: 64, align: 64, offset: 192)
!2561 = !DILocalVariable(name: "ptr", scope: !2548, file: !27, line: 942, type: !84)
!2562 = !DILocalVariable(name: "ms", scope: !2548, file: !27, line: 944, type: !2563)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64, align: 64, dwarfAddressSpace: 0)
!2564 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.methodSet", baseType: !2565)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !2566)
!2566 = !{!1145, !2567}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !2568, align: 64, offset: 64)
!2568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, align: 64, elements: !121)
!2569 = !DILocation(line: 939, column: 19, scope: !2548)
!2570 = !DILocation(line: 940, column: 39, scope: !2548)
!2571 = !DILocation(line: 940, column: 2, scope: !2548)
!2572 = !DILocation(line: 942, column: 35, scope: !2548)
!2573 = !DILocation(line: 942, column: 19, scope: !2548)
!2574 = !DILocation(line: 942, column: 2, scope: !2548)
!2575 = !DILocation(line: 943, column: 5, scope: !2548)
!2576 = !DILocation(line: 943, column: 11, scope: !2548)
!2577 = !DILocation(line: 943, column: 20, scope: !2548)
!2578 = !DILocation(line: 943, column: 43, scope: !2548)
!2579 = !DILocation(line: 0, scope: !2548)
!2580 = !DILocation(line: 944, column: 22, scope: !2548)
!2581 = !DILocation(line: 944, column: 3, scope: !2548)
!2582 = !DILocation(line: 946, column: 20, scope: !2548)
!2583 = !DILocation(line: 946, column: 59, scope: !2548)
!2584 = !DILocation(line: 946, column: 62, scope: !2548)
!2585 = !DILocation(line: 946, column: 69, scope: !2548)
!2586 = !DILocation(line: 946, column: 50, scope: !2548)
!2587 = !DILocation(line: 946, column: 19, scope: !2548)
!2588 = !DILocation(line: 946, column: 3, scope: !2548)
!2589 = !DILocation(line: 948, column: 21, scope: !2548)
!2590 = !DILocation(line: 948, column: 20, scope: !2548)
!2591 = !DILocation(line: 948, column: 2, scope: !2548)
!2592 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).rawField", linkageName: "(*internal/reflectlite.RawType).rawField", scope: !27, file: !27, line: 484, type: !2593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2595)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!1049, !1891}
!2595 = !{!2596, !2597, !2598, !2599, !2613, !2615, !2616, !2617, !2618, !2619}
!2596 = !DILocalVariable(name: "t", arg: 1, scope: !2592, file: !27, line: 484, type: !1049)
!2597 = !DILocalVariable(name: "n", arg: 2, scope: !2592, file: !27, line: 484, type: !1891)
!2598 = !DILocalVariable(name: "errTypeField", scope: !2592, file: !27, line: 395, type: !33)
!2599 = !DILocalVariable(name: "descriptor", scope: !2592, file: !27, line: 488, type: !2600)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64, align: 64, dwarfAddressSpace: 0)
!2601 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.structType", baseType: !2602)
!2602 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !2603)
!2603 = !{!2556, !2557, !2558, !2604, !97, !2605, !2606}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !2100, size: 64, align: 64, offset: 128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "numField", baseType: !90, size: 16, align: 16, offset: 224)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !2607, size: 128, align: 64, offset: 256)
!2607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2608, size: 128, align: 64, elements: !5)
!2608 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.structField", baseType: !2609)
!2609 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !2610)
!2610 = !{!2611, !2612}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "fieldType", baseType: !1049, size: 64, align: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !84, size: 64, align: 64, offset: 64)
!2613 = !DILocalVariable(name: "field", scope: !2592, file: !27, line: 497, type: !2614)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64, align: 64, dwarfAddressSpace: 0)
!2615 = !DILocalVariable(name: "data", scope: !2592, file: !27, line: 498, type: !84)
!2616 = !DILocalVariable(name: "flagsByte", scope: !2592, file: !27, line: 502, type: !533)
!2617 = !DILocalVariable(name: "offset", scope: !2592, file: !27, line: 504, type: !98)
!2618 = !DILocalVariable(name: "lenOffs", scope: !2592, file: !27, line: 504, type: !1891)
!2619 = !DILocalVariable(name: "name", scope: !2592, file: !27, line: 507, type: !38)
!2620 = !DILocation(line: 484, column: 19, scope: !2592)
!2621 = !DILocation(line: 485, column: 5, scope: !2592)
!2622 = !DILocation(line: 485, column: 11, scope: !2592)
!2623 = !DILocation(line: 485, column: 14, scope: !2592)
!2624 = !DILocation(line: 0, scope: !2592)
!2625 = !DILocation(line: 486, column: 9, scope: !2592)
!2626 = !DILocation(line: 486, column: 8, scope: !2592)
!2627 = !DILocation(line: 488, column: 45, scope: !2592)
!2628 = !DILocation(line: 488, column: 57, scope: !2592)
!2629 = !DILocation(line: 488, column: 2, scope: !2592)
!2630 = !DILocation(line: 489, column: 10, scope: !2592)
!2631 = !DILocation(line: 489, column: 21, scope: !2592)
!2632 = !DILocation(line: 489, column: 32, scope: !2592)
!2633 = !DILocation(line: 489, column: 20, scope: !2592)
!2634 = !DILocation(line: 489, column: 13, scope: !2592)
!2635 = !DILocation(line: 490, column: 8, scope: !2592)
!2636 = !DILocation(line: 497, column: 53, scope: !2592)
!2637 = !DILocation(line: 497, column: 64, scope: !2592)
!2638 = !DILocation(line: 497, column: 70, scope: !2592)
!2639 = !DILocation(line: 497, column: 84, scope: !2592)
!2640 = !DILocation(line: 497, column: 86, scope: !2592)
!2641 = !DILocation(line: 497, column: 36, scope: !2592)
!2642 = !DILocation(line: 497, column: 2, scope: !2592)
!2643 = !DILocation(line: 498, column: 10, scope: !2592)
!2644 = !DILocation(line: 498, column: 16, scope: !2592)
!2645 = !DILocation(line: 498, column: 2, scope: !2592)
!2646 = !DILocation(line: 502, column: 24, scope: !2592)
!2647 = !DILocation(line: 502, column: 15, scope: !2592)
!2648 = !DILocation(line: 502, column: 2, scope: !2592)
!2649 = !DILocation(line: 503, column: 20, scope: !2592)
!2650 = !DILocation(line: 503, column: 19, scope: !2592)
!2651 = !DILocation(line: 503, column: 2, scope: !2592)
!2652 = !DILocation(line: 504, column: 52, scope: !2592)
!2653 = !DILocation(line: 504, column: 43, scope: !2592)
!2654 = !DILocation(line: 504, column: 30, scope: !2592)
!2655 = !DILocation(line: 504, column: 2, scope: !2592)
!2656 = !DILocation(line: 504, column: 10, scope: !2592)
!2657 = !DILocation(line: 505, column: 20, scope: !2592)
!2658 = !DILocation(line: 505, column: 26, scope: !2592)
!2659 = !DILocation(line: 505, column: 19, scope: !2592)
!2660 = !DILocation(line: 505, column: 2, scope: !2592)
!2661 = !DILocation(line: 507, column: 22, scope: !2592)
!2662 = !DILocation(line: 507, column: 21, scope: !2592)
!2663 = !DILocation(line: 507, column: 2, scope: !2592)
!2664 = !DILocation(line: 508, column: 20, scope: !2592)
!2665 = !DILocation(line: 508, column: 30, scope: !2592)
!2666 = !DILocation(line: 508, column: 29, scope: !2592)
!2667 = !DILocation(line: 508, column: 19, scope: !2592)
!2668 = !DILocation(line: 508, column: 2, scope: !2592)
!2669 = !DILocation(line: 510, column: 35, scope: !2592)
!2670 = !DILocation(line: 510, column: 47, scope: !2592)
!2671 = !DILocation(line: 510, column: 53, scope: !2592)
!2672 = !DILocation(line: 510, column: 64, scope: !2592)
!2673 = !DILocation(line: 510, column: 70, scope: !2592)
!2674 = !DILocation(line: 510, column: 81, scope: !2592)
!2675 = !DILocation(line: 510, column: 87, scope: !2592)
!2676 = !DILocation(line: 510, column: 34, scope: !2592)
!2677 = !DILocation(line: 510, column: 2, scope: !2592)
!2678 = distinct !DISubprogram(name: "internal/reflectlite.uvarint32", linkageName: "internal/reflectlite.uvarint32", scope: !27, file: !27, line: 1242, type: !2679, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!2097}
!2681 = !{!2682, !2683, !2684, !2685, !2686}
!2682 = !DILocalVariable(name: "buf", arg: 1, scope: !2678, file: !27, line: 1242, type: !2097)
!2683 = !DILocalVariable(name: "x", scope: !2678, file: !27, line: 1243, type: !98)
!2684 = !DILocalVariable(name: "s", scope: !2678, file: !27, line: 1244, type: !1738)
!2685 = !DILocalVariable(name: "i", scope: !2678, file: !27, line: 1245, type: !1891)
!2686 = !DILocalVariable(name: "b", scope: !2678, file: !27, line: 1245, type: !533)
!2687 = !DILocation(line: 1242, column: 6, scope: !2678)
!2688 = !DILocation(line: 1243, column: 6, scope: !2678)
!2689 = !DILocation(line: 1244, column: 6, scope: !2678)
!2690 = !DILocation(line: 1245, column: 20, scope: !2678)
!2691 = !DILocation(line: 0, scope: !2678)
!2692 = !DILocation(line: 1245, column: 6, scope: !2678)
!2693 = !DILocation(line: 1245, column: 9, scope: !2678)
!2694 = !DILocation(line: 1246, column: 6, scope: !2678)
!2695 = !DILocation(line: 1246, column: 8, scope: !2678)
!2696 = !DILocation(line: 1247, column: 11, scope: !2678)
!2697 = !DILocation(line: 1247, column: 22, scope: !2678)
!2698 = !DILocation(line: 1247, column: 21, scope: !2678)
!2699 = !DILocation(line: 1247, column: 26, scope: !2678)
!2700 = !DILocation(line: 1247, column: 24, scope: !2678)
!2701 = !DILocation(line: 1247, column: 13, scope: !2678)
!2702 = !DILocation(line: 1247, column: 29, scope: !2678)
!2703 = !DILocation(line: 1247, column: 31, scope: !2678)
!2704 = !DILocation(line: 1247, column: 4, scope: !2678)
!2705 = !DILocation(line: 1249, column: 15, scope: !2678)
!2706 = !DILocation(line: 1249, column: 16, scope: !2678)
!2707 = !DILocation(line: 1249, column: 14, scope: !2678)
!2708 = !DILocation(line: 1249, column: 26, scope: !2678)
!2709 = !DILocation(line: 1249, column: 23, scope: !2678)
!2710 = !DILocation(line: 1249, column: 3, scope: !2678)
!2711 = !DILocation(line: 1250, column: 3, scope: !2678)
!2712 = !DILocation(line: 1252, column: 2, scope: !2678)
!2713 = distinct !DISubprogram(name: "internal/reflectlite.readStringZ", linkageName: "internal/reflectlite.readStringZ", scope: !27, file: !27, line: 925, type: !2714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!84}
!2716 = !{!2717, !2718, !2719}
!2717 = !DILocalVariable(name: "data", arg: 1, scope: !2713, file: !27, line: 925, type: !84)
!2718 = !DILocalVariable(name: "start", scope: !2713, file: !27, line: 926, type: !84)
!2719 = !DILocalVariable(name: "len", scope: !2713, file: !27, line: 927, type: !43)
!2720 = !DILocation(line: 925, column: 6, scope: !2713)
!2721 = !DILocation(line: 926, column: 11, scope: !2713)
!2722 = !DILocation(line: 926, column: 2, scope: !2713)
!2723 = !DILocation(line: 927, column: 6, scope: !2713)
!2724 = !DILocation(line: 0, scope: !2713)
!2725 = !DILocation(line: 925, column: 18, scope: !2713)
!2726 = !DILocation(line: 928, column: 15, scope: !2713)
!2727 = !DILocation(line: 928, column: 6, scope: !2713)
!2728 = !DILocation(line: 928, column: 21, scope: !2713)
!2729 = !DILocation(line: 929, column: 3, scope: !2713)
!2730 = !DILocation(line: 930, column: 21, scope: !2713)
!2731 = !DILocation(line: 930, column: 20, scope: !2713)
!2732 = !DILocation(line: 930, column: 3, scope: !2713)
!2733 = !DILocation(line: 933, column: 48, scope: !2713)
!2734 = !DILocation(line: 934, column: 7, scope: !2713)
!2735 = !DILocation(line: 934, column: 9, scope: !2713)
!2736 = !DILocation(line: 935, column: 6, scope: !2713)
!2737 = !DILocation(line: 935, column: 9, scope: !2713)
!2738 = !DILocation(line: 933, column: 9, scope: !2713)
!2739 = !DILocation(line: 933, column: 2, scope: !2713)
!2740 = distinct !DISubprogram(name: "internal/reflectlite.rawStructFieldFromPointer", linkageName: "internal/reflectlite.rawStructFieldFromPointer", scope: !27, file: !27, line: 449, type: !2741, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2743)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!2600, !1049, !84, !4, !38, !98}
!2743 = !{!2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752}
!2744 = !DILocalVariable(name: "descriptor", arg: 1, scope: !2740, file: !27, line: 449, type: !2600)
!2745 = !DILocalVariable(name: "fieldType", arg: 2, scope: !2740, file: !27, line: 449, type: !1049)
!2746 = !DILocalVariable(name: "data", arg: 3, scope: !2740, file: !27, line: 449, type: !84)
!2747 = !DILocalVariable(name: "flagsByte", arg: 4, scope: !2740, file: !27, line: 449, type: !4)
!2748 = !DILocalVariable(name: "name", arg: 5, scope: !2740, file: !27, line: 449, type: !38)
!2749 = !DILocalVariable(name: "offset", arg: 6, scope: !2740, file: !27, line: 449, type: !98)
!2750 = !DILocalVariable(name: "tag", scope: !2740, file: !27, line: 451, type: !38)
!2751 = !DILocalVariable(name: "tagLen", scope: !2740, file: !27, line: 454, type: !43)
!2752 = !DILocalVariable(name: "pkgPath", scope: !2740, file: !27, line: 464, type: !38)
!2753 = !DILocation(line: 449, column: 6, scope: !2740)
!2754 = !DILocation(line: 451, column: 6, scope: !2740)
!2755 = !DILocation(line: 452, column: 5, scope: !2740)
!2756 = !DILocation(line: 452, column: 14, scope: !2740)
!2757 = !DILocation(line: 452, column: 37, scope: !2740)
!2758 = !DILocation(line: 0, scope: !2740)
!2759 = !DILocation(line: 453, column: 21, scope: !2740)
!2760 = !DILocation(line: 453, column: 20, scope: !2740)
!2761 = !DILocation(line: 453, column: 3, scope: !2740)
!2762 = !DILocation(line: 454, column: 30, scope: !2740)
!2763 = !DILocation(line: 454, column: 21, scope: !2740)
!2764 = !DILocation(line: 454, column: 20, scope: !2740)
!2765 = !DILocation(line: 454, column: 3, scope: !2740)
!2766 = !DILocation(line: 455, column: 21, scope: !2740)
!2767 = !DILocation(line: 455, column: 20, scope: !2740)
!2768 = !DILocation(line: 455, column: 3, scope: !2740)
!2769 = !DILocation(line: 456, column: 48, scope: !2740)
!2770 = !DILocation(line: 457, column: 8, scope: !2740)
!2771 = !DILocation(line: 457, column: 10, scope: !2740)
!2772 = !DILocation(line: 458, column: 7, scope: !2740)
!2773 = !DILocation(line: 458, column: 10, scope: !2740)
!2774 = !DILocation(line: 456, column: 9, scope: !2740)
!2775 = !DILocation(line: 456, column: 3, scope: !2740)
!2776 = !DILocation(line: 464, column: 2, scope: !2740)
!2777 = !DILocation(line: 465, column: 5, scope: !2740)
!2778 = !DILocation(line: 465, column: 14, scope: !2740)
!2779 = !DILocation(line: 465, column: 41, scope: !2740)
!2780 = !DILocation(line: 467, column: 40, scope: !2740)
!2781 = !DILocation(line: 467, column: 51, scope: !2740)
!2782 = !DILocation(line: 467, column: 24, scope: !2740)
!2783 = !DILocation(line: 467, column: 3, scope: !2740)
!2784 = !DILocation(line: 471, column: 7, scope: !2740)
!2785 = !DILocation(line: 471, column: 14, scope: !2740)
!2786 = !DILocation(line: 472, column: 10, scope: !2740)
!2787 = !DILocation(line: 472, column: 14, scope: !2740)
!2788 = !DILocation(line: 473, column: 7, scope: !2740)
!2789 = !DILocation(line: 473, column: 14, scope: !2740)
!2790 = !DILocation(line: 474, column: 6, scope: !2740)
!2791 = !DILocation(line: 474, column: 24, scope: !2740)
!2792 = !DILocation(line: 475, column: 12, scope: !2740)
!2793 = !DILocation(line: 475, column: 14, scope: !2740)
!2794 = !DILocation(line: 475, column: 23, scope: !2740)
!2795 = !DILocation(line: 475, column: 49, scope: !2740)
!2796 = !DILocation(line: 476, column: 9, scope: !2740)
!2797 = !DILocation(line: 476, column: 22, scope: !2740)
!2798 = !DILocation(line: 476, column: 21, scope: !2740)
!2799 = !DILocation(line: 470, column: 23, scope: !2740)
!2800 = !DILocation(line: 470, column: 2, scope: !2740)
!2801 = distinct !DISubprogram(name: "(internal/reflectlite.Kind).String", linkageName: "(internal/reflectlite.Kind).String", scope: !27, file: !27, line: 57, type: !2802, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2805)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!2804}
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.Kind", baseType: !4)
!2805 = !{!2806}
!2806 = !DILocalVariable(name: "k", arg: 1, scope: !2801, file: !27, line: 57, type: !2804)
!2807 = !DILocation(line: 57, column: 15, scope: !2801)
!2808 = !DILocation(line: 58, column: 9, scope: !2801)
!2809 = !DILocation(line: 59, column: 7, scope: !2801)
!2810 = !DILocation(line: 0, scope: !2801)
!2811 = !DILocation(line: 60, column: 3, scope: !2801)
!2812 = !DILocation(line: 61, column: 7, scope: !2801)
!2813 = !DILocation(line: 62, column: 3, scope: !2801)
!2814 = !DILocation(line: 63, column: 7, scope: !2801)
!2815 = !DILocation(line: 64, column: 3, scope: !2801)
!2816 = !DILocation(line: 65, column: 7, scope: !2801)
!2817 = !DILocation(line: 66, column: 3, scope: !2801)
!2818 = !DILocation(line: 67, column: 7, scope: !2801)
!2819 = !DILocation(line: 68, column: 3, scope: !2801)
!2820 = !DILocation(line: 69, column: 7, scope: !2801)
!2821 = !DILocation(line: 70, column: 3, scope: !2801)
!2822 = !DILocation(line: 71, column: 7, scope: !2801)
!2823 = !DILocation(line: 72, column: 3, scope: !2801)
!2824 = !DILocation(line: 73, column: 7, scope: !2801)
!2825 = !DILocation(line: 74, column: 3, scope: !2801)
!2826 = !DILocation(line: 75, column: 7, scope: !2801)
!2827 = !DILocation(line: 76, column: 3, scope: !2801)
!2828 = !DILocation(line: 77, column: 7, scope: !2801)
!2829 = !DILocation(line: 78, column: 3, scope: !2801)
!2830 = !DILocation(line: 79, column: 7, scope: !2801)
!2831 = !DILocation(line: 80, column: 3, scope: !2801)
!2832 = !DILocation(line: 81, column: 7, scope: !2801)
!2833 = !DILocation(line: 82, column: 3, scope: !2801)
!2834 = !DILocation(line: 83, column: 7, scope: !2801)
!2835 = !DILocation(line: 84, column: 3, scope: !2801)
!2836 = !DILocation(line: 85, column: 7, scope: !2801)
!2837 = !DILocation(line: 86, column: 3, scope: !2801)
!2838 = !DILocation(line: 87, column: 7, scope: !2801)
!2839 = !DILocation(line: 88, column: 3, scope: !2801)
!2840 = !DILocation(line: 89, column: 7, scope: !2801)
!2841 = !DILocation(line: 90, column: 3, scope: !2801)
!2842 = !DILocation(line: 91, column: 7, scope: !2801)
!2843 = !DILocation(line: 92, column: 3, scope: !2801)
!2844 = !DILocation(line: 93, column: 7, scope: !2801)
!2845 = !DILocation(line: 94, column: 3, scope: !2801)
!2846 = !DILocation(line: 95, column: 7, scope: !2801)
!2847 = !DILocation(line: 96, column: 3, scope: !2801)
!2848 = !DILocation(line: 97, column: 7, scope: !2801)
!2849 = !DILocation(line: 98, column: 3, scope: !2801)
!2850 = !DILocation(line: 99, column: 7, scope: !2801)
!2851 = !DILocation(line: 100, column: 3, scope: !2801)
!2852 = !DILocation(line: 101, column: 7, scope: !2801)
!2853 = !DILocation(line: 102, column: 3, scope: !2801)
!2854 = !DILocation(line: 103, column: 7, scope: !2801)
!2855 = !DILocation(line: 104, column: 3, scope: !2801)
!2856 = !DILocation(line: 105, column: 7, scope: !2801)
!2857 = !DILocation(line: 106, column: 3, scope: !2801)
!2858 = !DILocation(line: 107, column: 7, scope: !2801)
!2859 = !DILocation(line: 108, column: 3, scope: !2801)
!2860 = !DILocation(line: 109, column: 7, scope: !2801)
!2861 = !DILocation(line: 110, column: 3, scope: !2801)
!2862 = !DILocation(line: 111, column: 7, scope: !2801)
!2863 = !DILocation(line: 112, column: 3, scope: !2801)
!2864 = !DILocation(line: 114, column: 38, scope: !2801)
!2865 = !DILocation(line: 114, column: 32, scope: !2801)
!2866 = !DILocation(line: 114, column: 28, scope: !2801)
!2867 = !DILocation(line: 114, column: 17, scope: !2801)
!2868 = !DILocation(line: 114, column: 3, scope: !2801)
!2869 = distinct !DISubprogram(name: "internal/reflectlite.quote", linkageName: "internal/reflectlite.quote", scope: !111, file: !111, line: 238, type: !1945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2870)
!2870 = !{!2871, !2872, !2873, !2874}
!2871 = !DILocalVariable(name: "s", arg: 1, scope: !2869, file: !111, line: 238, type: !38)
!2872 = !DILocalVariable(name: "buf", scope: !2869, file: !111, line: 239, type: !2097)
!2873 = !DILocalVariable(name: "width", scope: !2869, file: !111, line: 243, type: !1891)
!2874 = !DILocalVariable(name: "r", scope: !2869, file: !111, line: 244, type: !1950)
!2875 = !DILocation(line: 238, column: 6, scope: !2869)
!2876 = !DILocation(line: 239, column: 31, scope: !2869)
!2877 = !DILocation(line: 239, column: 30, scope: !2869)
!2878 = !DILocation(line: 239, column: 26, scope: !2869)
!2879 = !DILocation(line: 239, column: 33, scope: !2869)
!2880 = !DILocation(line: 239, column: 13, scope: !2869)
!2881 = !DILocation(line: 239, column: 2, scope: !2869)
!2882 = !DILocation(line: 242, column: 15, scope: !2869)
!2883 = !DILocation(line: 242, column: 25, scope: !2869)
!2884 = !DILocation(line: 242, column: 14, scope: !2869)
!2885 = !DILocation(line: 242, column: 2, scope: !2869)
!2886 = !DILocation(line: 243, column: 6, scope: !2869)
!2887 = !DILocation(line: 0, scope: !2869)
!2888 = !DILocation(line: 238, column: 12, scope: !2869)
!2889 = !DILocation(line: 243, column: 22, scope: !2869)
!2890 = !DILocation(line: 243, column: 21, scope: !2869)
!2891 = !DILocation(line: 243, column: 25, scope: !2869)
!2892 = !DILocation(line: 244, column: 13, scope: !2869)
!2893 = !DILocation(line: 244, column: 14, scope: !2869)
!2894 = !DILocation(line: 244, column: 12, scope: !2869)
!2895 = !DILocation(line: 244, column: 3, scope: !2869)
!2896 = !DILocation(line: 245, column: 3, scope: !2869)
!2897 = !DILocation(line: 246, column: 6, scope: !2869)
!2898 = !DILocation(line: 246, column: 8, scope: !2869)
!2899 = !DILocation(line: 247, column: 39, scope: !2869)
!2900 = !DILocation(line: 247, column: 38, scope: !2869)
!2901 = !DILocation(line: 247, column: 4, scope: !2869)
!2902 = !DILocation(line: 247, column: 7, scope: !2869)
!2903 = !DILocation(line: 249, column: 6, scope: !2869)
!2904 = !DILocation(line: 249, column: 12, scope: !2869)
!2905 = !DILocation(line: 249, column: 20, scope: !2869)
!2906 = !DILocation(line: 249, column: 22, scope: !2869)
!2907 = !DILocation(line: 250, column: 17, scope: !2869)
!2908 = !DILocation(line: 250, column: 16, scope: !2869)
!2909 = !DILocation(line: 250, column: 4, scope: !2869)
!2910 = !DILocation(line: 251, column: 17, scope: !2869)
!2911 = !DILocation(line: 251, column: 31, scope: !2869)
!2912 = !DILocation(line: 251, column: 32, scope: !2869)
!2913 = !DILocation(line: 251, column: 35, scope: !2869)
!2914 = !DILocation(line: 251, column: 30, scope: !2869)
!2915 = !DILocation(line: 251, column: 39, scope: !2869)
!2916 = !DILocation(line: 251, column: 16, scope: !2869)
!2917 = !DILocation(line: 251, column: 4, scope: !2869)
!2918 = !DILocation(line: 252, column: 17, scope: !2869)
!2919 = !DILocation(line: 252, column: 31, scope: !2869)
!2920 = !DILocation(line: 252, column: 32, scope: !2869)
!2921 = !DILocation(line: 252, column: 35, scope: !2869)
!2922 = !DILocation(line: 252, column: 30, scope: !2869)
!2923 = !DILocation(line: 252, column: 40, scope: !2869)
!2924 = !DILocation(line: 252, column: 16, scope: !2869)
!2925 = !DILocation(line: 252, column: 4, scope: !2869)
!2926 = !DILocation(line: 243, column: 34, scope: !2869)
!2927 = !DILocation(line: 243, column: 36, scope: !2869)
!2928 = !DILocation(line: 243, column: 35, scope: !2869)
!2929 = !DILocation(line: 243, column: 30, scope: !2869)
!2930 = !DILocation(line: 255, column: 27, scope: !2869)
!2931 = !DILocation(line: 255, column: 32, scope: !2869)
!2932 = !DILocation(line: 255, column: 26, scope: !2869)
!2933 = !DILocation(line: 255, column: 3, scope: !2869)
!2934 = !DILocation(line: 257, column: 15, scope: !2869)
!2935 = !DILocation(line: 257, column: 25, scope: !2869)
!2936 = !DILocation(line: 257, column: 14, scope: !2869)
!2937 = !DILocation(line: 257, column: 2, scope: !2869)
!2938 = !DILocation(line: 258, column: 16, scope: !2869)
!2939 = !DILocation(line: 258, column: 15, scope: !2869)
!2940 = !DILocation(line: 258, column: 2, scope: !2869)
!2941 = distinct !DISubprogram(name: "internal/reflectlite.appendEscapedRune", linkageName: "internal/reflectlite.appendEscapedRune", scope: !111, file: !111, line: 261, type: !2095, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2942)
!2942 = !{!2943, !2944, !2945, !2946, !2947}
!2943 = !DILocalVariable(name: "buf", arg: 1, scope: !2941, file: !111, line: 261, type: !2097)
!2944 = !DILocalVariable(name: "r", arg: 2, scope: !2941, file: !111, line: 261, type: !1950)
!2945 = !DILocalVariable(name: "n", scope: !2941, file: !111, line: 272, type: !1891)
!2946 = !DILocalVariable(name: "s", scope: !2941, file: !111, line: 302, type: !1891)
!2947 = !DILocalVariable(name: "s", scope: !2941, file: !111, line: 307, type: !1891)
!2948 = !DILocation(line: 261, column: 6, scope: !2941)
!2949 = !DILocation(line: 265, column: 6, scope: !2941)
!2950 = !DILocation(line: 266, column: 5, scope: !2941)
!2951 = !DILocation(line: 266, column: 7, scope: !2941)
!2952 = !DILocation(line: 0, scope: !2941)
!2953 = !DILocation(line: 267, column: 16, scope: !2941)
!2954 = !DILocation(line: 267, column: 25, scope: !2941)
!2955 = !DILocation(line: 267, column: 15, scope: !2941)
!2956 = !DILocation(line: 267, column: 3, scope: !2941)
!2957 = !DILocation(line: 268, column: 16, scope: !2941)
!2958 = !DILocation(line: 268, column: 26, scope: !2941)
!2959 = !DILocation(line: 268, column: 25, scope: !2941)
!2960 = !DILocation(line: 268, column: 28, scope: !2941)
!2961 = !DILocation(line: 268, column: 15, scope: !2941)
!2962 = !DILocation(line: 268, column: 3, scope: !2941)
!2963 = !DILocation(line: 269, column: 10, scope: !2941)
!2964 = !DILocation(line: 269, column: 3, scope: !2941)
!2965 = !DILocation(line: 266, column: 25, scope: !2941)
!2966 = !DILocation(line: 266, column: 27, scope: !2941)
!2967 = !DILocation(line: 271, column: 13, scope: !2941)
!2968 = !DILocation(line: 271, column: 12, scope: !2941)
!2969 = !DILocation(line: 272, column: 31, scope: !2941)
!2970 = !DILocation(line: 272, column: 36, scope: !2941)
!2971 = !DILocation(line: 272, column: 23, scope: !2941)
!2972 = !DILocation(line: 272, column: 3, scope: !2941)
!2973 = !DILocation(line: 273, column: 16, scope: !2941)
!2974 = !DILocation(line: 273, column: 30, scope: !2941)
!2975 = !DILocation(line: 273, column: 28, scope: !2941)
!2976 = !DILocation(line: 273, column: 15, scope: !2941)
!2977 = !DILocation(line: 273, column: 3, scope: !2941)
!2978 = !DILocation(line: 274, column: 10, scope: !2941)
!2979 = !DILocation(line: 274, column: 3, scope: !2941)
!2980 = !DILocation(line: 276, column: 9, scope: !2941)
!2981 = !DILocation(line: 277, column: 7, scope: !2941)
!2982 = !DILocation(line: 278, column: 16, scope: !2941)
!2983 = !DILocation(line: 278, column: 15, scope: !2941)
!2984 = !DILocation(line: 278, column: 3, scope: !2941)
!2985 = !DILocation(line: 261, column: 24, scope: !2941)
!2986 = !DILocation(line: 312, column: 9, scope: !2941)
!2987 = !DILocation(line: 312, column: 2, scope: !2941)
!2988 = !DILocation(line: 279, column: 7, scope: !2941)
!2989 = !DILocation(line: 280, column: 16, scope: !2941)
!2990 = !DILocation(line: 280, column: 15, scope: !2941)
!2991 = !DILocation(line: 280, column: 3, scope: !2941)
!2992 = !DILocation(line: 281, column: 7, scope: !2941)
!2993 = !DILocation(line: 282, column: 16, scope: !2941)
!2994 = !DILocation(line: 282, column: 15, scope: !2941)
!2995 = !DILocation(line: 282, column: 3, scope: !2941)
!2996 = !DILocation(line: 283, column: 7, scope: !2941)
!2997 = !DILocation(line: 284, column: 16, scope: !2941)
!2998 = !DILocation(line: 284, column: 15, scope: !2941)
!2999 = !DILocation(line: 284, column: 3, scope: !2941)
!3000 = !DILocation(line: 285, column: 7, scope: !2941)
!3001 = !DILocation(line: 286, column: 16, scope: !2941)
!3002 = !DILocation(line: 286, column: 15, scope: !2941)
!3003 = !DILocation(line: 286, column: 3, scope: !2941)
!3004 = !DILocation(line: 287, column: 7, scope: !2941)
!3005 = !DILocation(line: 288, column: 16, scope: !2941)
!3006 = !DILocation(line: 288, column: 15, scope: !2941)
!3007 = !DILocation(line: 288, column: 3, scope: !2941)
!3008 = !DILocation(line: 289, column: 7, scope: !2941)
!3009 = !DILocation(line: 290, column: 16, scope: !2941)
!3010 = !DILocation(line: 290, column: 15, scope: !2941)
!3011 = !DILocation(line: 290, column: 3, scope: !2941)
!3012 = !DILocation(line: 293, column: 8, scope: !2941)
!3013 = !DILocation(line: 293, column: 10, scope: !2941)
!3014 = !DILocation(line: 293, column: 16, scope: !2941)
!3015 = !DILocation(line: 294, column: 17, scope: !2941)
!3016 = !DILocation(line: 294, column: 16, scope: !2941)
!3017 = !DILocation(line: 294, column: 4, scope: !2941)
!3018 = !DILocation(line: 295, column: 17, scope: !2941)
!3019 = !DILocation(line: 295, column: 36, scope: !2941)
!3020 = !DILocation(line: 295, column: 35, scope: !2941)
!3021 = !DILocation(line: 295, column: 38, scope: !2941)
!3022 = !DILocation(line: 295, column: 30, scope: !2941)
!3023 = !DILocation(line: 295, column: 42, scope: !2941)
!3024 = !DILocation(line: 295, column: 16, scope: !2941)
!3025 = !DILocation(line: 295, column: 4, scope: !2941)
!3026 = !DILocation(line: 296, column: 17, scope: !2941)
!3027 = !DILocation(line: 296, column: 36, scope: !2941)
!3028 = !DILocation(line: 296, column: 35, scope: !2941)
!3029 = !DILocation(line: 296, column: 38, scope: !2941)
!3030 = !DILocation(line: 296, column: 30, scope: !2941)
!3031 = !DILocation(line: 296, column: 43, scope: !2941)
!3032 = !DILocation(line: 296, column: 16, scope: !2941)
!3033 = !DILocation(line: 296, column: 4, scope: !2941)
!3034 = !DILocation(line: 297, column: 24, scope: !2941)
!3035 = !DILocation(line: 297, column: 23, scope: !2941)
!3036 = !DILocation(line: 297, column: 8, scope: !2941)
!3037 = !DILocation(line: 298, column: 4, scope: !2941)
!3038 = !DILocation(line: 261, column: 36, scope: !2941)
!3039 = !DILocation(line: 301, column: 17, scope: !2941)
!3040 = !DILocation(line: 301, column: 16, scope: !2941)
!3041 = !DILocation(line: 301, column: 4, scope: !2941)
!3042 = !DILocation(line: 302, column: 8, scope: !2941)
!3043 = !DILocation(line: 302, column: 17, scope: !2941)
!3044 = !DILocation(line: 302, column: 19, scope: !2941)
!3045 = !DILocation(line: 303, column: 18, scope: !2941)
!3046 = !DILocation(line: 303, column: 32, scope: !2941)
!3047 = !DILocation(line: 303, column: 40, scope: !2941)
!3048 = !DILocation(line: 303, column: 33, scope: !2941)
!3049 = !DILocation(line: 303, column: 42, scope: !2941)
!3050 = !DILocation(line: 303, column: 31, scope: !2941)
!3051 = !DILocation(line: 303, column: 47, scope: !2941)
!3052 = !DILocation(line: 303, column: 17, scope: !2941)
!3053 = !DILocation(line: 303, column: 5, scope: !2941)
!3054 = !DILocation(line: 302, column: 25, scope: !2941)
!3055 = !DILocation(line: 300, column: 8, scope: !2941)
!3056 = !DILocation(line: 300, column: 10, scope: !2941)
!3057 = !DILocation(line: 306, column: 17, scope: !2941)
!3058 = !DILocation(line: 306, column: 16, scope: !2941)
!3059 = !DILocation(line: 306, column: 4, scope: !2941)
!3060 = !DILocation(line: 307, column: 8, scope: !2941)
!3061 = !DILocation(line: 307, column: 17, scope: !2941)
!3062 = !DILocation(line: 307, column: 19, scope: !2941)
!3063 = !DILocation(line: 308, column: 18, scope: !2941)
!3064 = !DILocation(line: 308, column: 32, scope: !2941)
!3065 = !DILocation(line: 308, column: 40, scope: !2941)
!3066 = !DILocation(line: 308, column: 33, scope: !2941)
!3067 = !DILocation(line: 308, column: 42, scope: !2941)
!3068 = !DILocation(line: 308, column: 31, scope: !2941)
!3069 = !DILocation(line: 308, column: 47, scope: !2941)
!3070 = !DILocation(line: 308, column: 17, scope: !2941)
!3071 = !DILocation(line: 308, column: 5, scope: !2941)
!3072 = !DILocation(line: 307, column: 25, scope: !2941)
!3073 = !DILocation(line: 293, column: 19, scope: !2941)
!3074 = !DILocation(line: 293, column: 21, scope: !2941)
!3075 = distinct !DISubprogram(name: "internal/reflectlite.isPrint", linkageName: "internal/reflectlite.isPrint", scope: !111, file: !111, line: 316, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3076)
!3076 = !{!3077}
!3077 = !DILocalVariable(name: "r", arg: 1, scope: !3075, file: !111, line: 316, type: !1950)
!3078 = !DILocation(line: 316, column: 6, scope: !3075)
!3079 = !DILocation(line: 317, column: 5, scope: !3075)
!3080 = !DILocation(line: 317, column: 7, scope: !3075)
!3081 = !DILocation(line: 0, scope: !3075)
!3082 = !DILocation(line: 318, column: 14, scope: !3075)
!3083 = !DILocation(line: 318, column: 11, scope: !3075)
!3084 = !DILocation(line: 318, column: 19, scope: !3075)
!3085 = !DILocation(line: 318, column: 21, scope: !3075)
!3086 = !DILocation(line: 320, column: 4, scope: !3075)
!3087 = !DILocation(line: 322, column: 14, scope: !3075)
!3088 = !DILocation(line: 322, column: 11, scope: !3075)
!3089 = !DILocation(line: 322, column: 19, scope: !3075)
!3090 = !DILocation(line: 322, column: 21, scope: !3075)
!3091 = !DILocation(line: 324, column: 11, scope: !3075)
!3092 = !DILocation(line: 324, column: 13, scope: !3075)
!3093 = !DILocation(line: 324, column: 4, scope: !3075)
!3094 = !DILocation(line: 326, column: 3, scope: !3075)
!3095 = !DILocation(line: 330, column: 2, scope: !3075)
!3096 = distinct !DISubprogram(name: "(internal/reflectlite.Kind).String$invoke", linkageName: "(internal/reflectlite.Kind).String$invoke", scope: !27, file: !27, line: 57, type: !2802, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032)
!3097 = !DILocation(line: 57, column: 15, scope: !3096)
!3098 = distinct !DISubprogram(name: "(*internal/reflectlite.ValueError).Error", linkageName: "(*internal/reflectlite.ValueError).Error", scope: !316, file: !316, line: 1789, type: !3099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3106)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!3101}
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64, align: 64, dwarfAddressSpace: 0)
!3102 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.ValueError", baseType: !3103)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !3104)
!3104 = !{!37, !3105}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "Kind", baseType: !2804, size: 8, align: 8, offset: 128)
!3106 = !{!3107}
!3107 = !DILocalVariable(name: "e", arg: 1, scope: !3098, file: !316, line: 1789, type: !3101)
!3108 = !DILocation(line: 1789, column: 22, scope: !3098)
!3109 = !DILocation(line: 1790, column: 5, scope: !3098)
!3110 = !DILocation(line: 1790, column: 7, scope: !3098)
!3111 = !DILocation(line: 1790, column: 12, scope: !3098)
!3112 = !DILocation(line: 0, scope: !3098)
!3113 = !DILocation(line: 1791, column: 32, scope: !3098)
!3114 = !DILocation(line: 1791, column: 34, scope: !3098)
!3115 = !DILocation(line: 1791, column: 30, scope: !3098)
!3116 = !DILocation(line: 1791, column: 41, scope: !3098)
!3117 = !DILocation(line: 1791, column: 3, scope: !3098)
!3118 = !DILocation(line: 1793, column: 31, scope: !3098)
!3119 = !DILocation(line: 1793, column: 33, scope: !3098)
!3120 = !DILocation(line: 1793, column: 29, scope: !3098)
!3121 = !DILocation(line: 1793, column: 40, scope: !3098)
!3122 = !DILocation(line: 1793, column: 51, scope: !3098)
!3123 = !DILocation(line: 1793, column: 53, scope: !3098)
!3124 = !DILocation(line: 1793, column: 64, scope: !3098)
!3125 = !DILocation(line: 1793, column: 49, scope: !3098)
!3126 = !DILocation(line: 1793, column: 67, scope: !3098)
!3127 = !DILocation(line: 1793, column: 2, scope: !3098)
!3128 = distinct !DISubprogram(name: "(internal/reflectlite.badSyntax).Error", linkageName: "(internal/reflectlite.badSyntax).Error", scope: !111, file: !111, line: 16, type: !3129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3131)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!1195}
!3131 = !{!3132}
!3132 = !DILocalVariable(name: "arg0", arg: 1, scope: !3128, file: !111, line: 16, type: !1195)
!3133 = !DILocation(line: 17, column: 2, scope: !3128)
!3134 = distinct !DISubprogram(name: "(internal/reflectlite.badSyntax).Error$invoke", linkageName: "(internal/reflectlite.badSyntax).Error$invoke", scope: !111, file: !111, line: 16, type: !3129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032)
!3135 = !DILocation(line: 16, column: 18, scope: !3134)
!3136 = distinct !DISubprogram(name: "runtime/interrupt.In", linkageName: "runtime/interrupt.In", scope: !3137, file: !3137, line: 28, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1516)
!3137 = !DIFile(filename: "interrupt_none.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!3138 = !DISubroutineType(types: !342)
!3139 = !DILocation(line: 30, column: 2, scope: !3136)
!3140 = distinct !DISubprogram(name: "(*internal/task.Mutex).Lock", linkageName: "(*internal/task.Mutex).Lock", scope: !378, file: !378, line: 31, type: !3141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3144)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!3143}
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64, dwarfAddressSpace: 0)
!3144 = !{!3145}
!3145 = !DILocalVariable(name: "m", arg: 1, scope: !3140, file: !378, line: 31, type: !3143)
!3146 = !DILocation(line: 31, column: 17, scope: !3140)
!3147 = !DILocation(line: 33, column: 5, scope: !3140)
!3148 = !DILocation(line: 33, column: 7, scope: !3140)
!3149 = !DILocation(line: 33, column: 27, scope: !3140)
!3150 = !DILocation(line: 0, scope: !3140)
!3151 = !DILocation(line: 35, column: 3, scope: !3140)
!3152 = !DILocation(line: 43, column: 6, scope: !3140)
!3153 = !DILocation(line: 43, column: 8, scope: !3140)
!3154 = !DILocation(line: 43, column: 18, scope: !3140)
!3155 = !DILocation(line: 43, column: 22, scope: !3140)
!3156 = !DILocation(line: 45, column: 3, scope: !3140)
!3157 = !DILocation(line: 45, column: 5, scope: !3140)
!3158 = !DILocation(line: 45, column: 15, scope: !3140)
!3159 = !DILocation(line: 47, column: 2, scope: !3140)
!3160 = distinct !DISubprogram(name: "(*internal/task.Mutex).Unlock", linkageName: "(*internal/task.Mutex).Unlock", scope: !378, file: !378, line: 49, type: !3141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3161)
!3161 = !{!3162, !3163}
!3162 = !DILocalVariable(name: "m", arg: 1, scope: !3160, file: !378, line: 49, type: !3143)
!3163 = !DILocalVariable(name: "old", scope: !3160, file: !378, line: 50, type: !98)
!3164 = !DILocation(line: 49, column: 17, scope: !3160)
!3165 = !DILocation(line: 50, column: 12, scope: !3160)
!3166 = !DILocation(line: 50, column: 14, scope: !3160)
!3167 = !DILocation(line: 50, column: 24, scope: !3160)
!3168 = !DILocation(line: 50, column: 5, scope: !3160)
!3169 = !DILocation(line: 50, column: 29, scope: !3160)
!3170 = !DILocation(line: 50, column: 33, scope: !3160)
!3171 = !DILocation(line: 0, scope: !3160)
!3172 = !DILocation(line: 52, column: 8, scope: !3160)
!3173 = !DILocation(line: 53, column: 12, scope: !3160)
!3174 = !DILocation(line: 53, column: 16, scope: !3160)
!3175 = !DILocation(line: 55, column: 3, scope: !3160)
!3176 = !DILocation(line: 55, column: 5, scope: !3160)
!3177 = !DILocation(line: 55, column: 15, scope: !3160)
!3178 = !DILocation(line: 57, column: 2, scope: !3160)
!3179 = distinct !DISubprogram(name: "(*internal/task.Semaphore).Wait", linkageName: "(*internal/task.Semaphore).Wait", scope: !3180, file: !3180, line: 21, type: !3181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3184)
!3180 = !DIFile(filename: "semaphore.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!3183}
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64, dwarfAddressSpace: 0)
!3184 = !{!3185, !3186, !3187}
!3185 = !DILocalVariable(name: "s", arg: 1, scope: !3179, file: !3180, line: 21, type: !3183)
!3186 = !DILocalVariable(name: "delta", scope: !3179, file: !3180, line: 22, type: !381)
!3187 = !DILocalVariable(name: "value", scope: !3179, file: !3180, line: 23, type: !98)
!3188 = !DILocation(line: 21, column: 21, scope: !3179)
!3189 = !DILocation(line: 22, column: 2, scope: !3179)
!3190 = !DILocation(line: 23, column: 11, scope: !3179)
!3191 = !DILocation(line: 23, column: 13, scope: !3179)
!3192 = !DILocation(line: 23, column: 30, scope: !3179)
!3193 = !DILocation(line: 23, column: 22, scope: !3179)
!3194 = !DILocation(line: 23, column: 2, scope: !3179)
!3195 = !DILocation(line: 0, scope: !3179)
!3196 = !DILocation(line: 25, column: 12, scope: !3179)
!3197 = !DILocation(line: 25, column: 19, scope: !3179)
!3198 = !DILocation(line: 27, column: 4, scope: !3179)
!3199 = !DILocation(line: 29, column: 3, scope: !3179)
!3200 = !DILocation(line: 29, column: 5, scope: !3179)
!3201 = !DILocation(line: 29, column: 16, scope: !3179)
!3202 = !DILocation(line: 29, column: 15, scope: !3179)
!3203 = !DILocation(line: 30, column: 11, scope: !3179)
!3204 = !DILocation(line: 30, column: 13, scope: !3179)
!3205 = !DILocation(line: 30, column: 23, scope: !3179)
!3206 = !DILocation(line: 30, column: 3, scope: !3179)
!3207 = distinct !DISubprogram(name: "internal/task.Init", linkageName: "internal/task.Init", scope: !330, file: !330, line: 55, type: !3208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3210)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!43}
!3210 = !{!3211, !3212}
!3211 = !DILocalVariable(name: "sp", arg: 1, scope: !3207, file: !330, line: 55, type: !43)
!3212 = !DILocalVariable(name: "stackTop", scope: !3207, file: !330, line: 24, type: !43)
!3213 = !DILocation(line: 55, column: 6, scope: !3207)
!3214 = !DILocation(line: 56, column: 28, scope: !3207)
!3215 = !DILocation(line: 56, column: 17, scope: !3207)
!3216 = !DILocation(line: 57, column: 18, scope: !3207)
!3217 = !DILocation(line: 58, column: 2, scope: !3207)
!3218 = distinct !DISubprogram(name: "internal/task.Current", linkageName: "internal/task.Current", scope: !330, file: !330, line: 61, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3219)
!3219 = !{!3220}
!3220 = !DILocalVariable(name: "t", scope: !3218, file: !330, line: 62, type: !331)
!3221 = !DILocation(line: 62, column: 34, scope: !3218)
!3222 = !DILocation(line: 62, column: 2, scope: !3218)
!3223 = !DILocation(line: 63, column: 5, scope: !3218)
!3224 = !DILocation(line: 63, column: 7, scope: !3218)
!3225 = !DILocation(line: 0, scope: !3218)
!3226 = !DILocation(line: 64, column: 15, scope: !3218)
!3227 = !DILocation(line: 66, column: 9, scope: !3218)
!3228 = !DILocation(line: 66, column: 2, scope: !3218)
!3229 = distinct !DISubprogram(name: "internal/task.Pause", linkageName: "internal/task.Pause", scope: !330, file: !330, line: 73, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3230)
!3230 = !{!3231}
!3231 = !DILocalVariable(name: "t", scope: !3229, file: !330, line: 75, type: !331)
!3232 = !DILocation(line: 75, column: 14, scope: !3229)
!3233 = !DILocation(line: 75, column: 2, scope: !3229)
!3234 = !DILocation(line: 0, scope: !3229)
!3235 = !DILocation(line: 77, column: 27, scope: !3229)
!3236 = !DILocation(line: 77, column: 29, scope: !3229)
!3237 = !DILocation(line: 77, column: 35, scope: !3229)
!3238 = !DILocation(line: 77, column: 10, scope: !3229)
!3239 = !DILocation(line: 79, column: 2, scope: !3229)
!3240 = !DILocation(line: 79, column: 4, scope: !3229)
!3241 = !DILocation(line: 79, column: 10, scope: !3229)
!3242 = !DILocation(line: 79, column: 23, scope: !3229)
!3243 = !DILocation(line: 80, column: 2, scope: !3229)
!3244 = distinct !DISubprogram(name: "internal/task.taskExited", linkageName: "tinygo_task_exited", scope: !330, file: !330, line: 125, type: !3245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3247)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!331}
!3247 = !{!3248, !3249, !3250, !3252}
!3248 = !DILocalVariable(name: "t", arg: 1, scope: !3244, file: !330, line: 125, type: !331)
!3249 = !DILocalVariable(name: "found", scope: !3244, file: !330, line: 133, type: !371)
!3250 = !DILocalVariable(name: "q", scope: !3244, file: !330, line: 134, type: !3251)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64, dwarfAddressSpace: 0)
!3252 = !DILocalVariable(name: "otherGoroutines", scope: !3244, file: !330, line: 99, type: !98)
!3253 = !DILocation(line: 125, column: 6, scope: !3244)
!3254 = !DILocation(line: 0, scope: !3244)
!3255 = !DILocation(line: 127, column: 24, scope: !3244)
!3256 = !DILocation(line: 127, column: 26, scope: !3244)
!3257 = !DILocation(line: 127, column: 32, scope: !3244)
!3258 = !DILocation(line: 127, column: 10, scope: !3244)
!3259 = !DILocation(line: 132, column: 21, scope: !3244)
!3260 = !DILocation(line: 133, column: 2, scope: !3244)
!3261 = !DILocation(line: 134, column: 6, scope: !3244)
!3262 = !DILocation(line: 134, column: 26, scope: !3244)
!3263 = !DILocation(line: 134, column: 25, scope: !3244)
!3264 = !DILocation(line: 134, column: 28, scope: !3244)
!3265 = !DILocation(line: 135, column: 7, scope: !3244)
!3266 = !DILocation(line: 135, column: 6, scope: !3244)
!3267 = !DILocation(line: 135, column: 12, scope: !3244)
!3268 = !DILocation(line: 135, column: 9, scope: !3244)
!3269 = !DILocation(line: 136, column: 5, scope: !3244)
!3270 = !DILocation(line: 136, column: 9, scope: !3244)
!3271 = !DILocation(line: 136, column: 11, scope: !3244)
!3272 = !DILocation(line: 136, column: 17, scope: !3244)
!3273 = !DILocation(line: 136, column: 4, scope: !3244)
!3274 = !DILocation(line: 137, column: 4, scope: !3244)
!3275 = !DILocation(line: 134, column: 43, scope: !3244)
!3276 = !DILocation(line: 134, column: 42, scope: !3244)
!3277 = !DILocation(line: 134, column: 46, scope: !3244)
!3278 = !DILocation(line: 134, column: 52, scope: !3244)
!3279 = !DILocation(line: 134, column: 36, scope: !3244)
!3280 = !DILocation(line: 141, column: 2, scope: !3244)
!3281 = !DILocation(line: 142, column: 23, scope: !3244)
!3282 = !DILocation(line: 145, column: 6, scope: !3244)
!3283 = !DILocation(line: 148, column: 2, scope: !3244)
!3284 = !DILocation(line: 146, column: 15, scope: !3244)
!3285 = distinct !DISubprogram(name: "(*internal/task.waitGroup).done", linkageName: "(*internal/task.waitGroup).done", scope: !330, file: !330, line: 163, type: !3286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3289)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!3288}
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64, dwarfAddressSpace: 0)
!3289 = !{!3290}
!3290 = !DILocalVariable(name: "wg", arg: 1, scope: !3285, file: !330, line: 163, type: !3288)
!3291 = !DILocation(line: 163, column: 22, scope: !3285)
!3292 = !DILocation(line: 164, column: 5, scope: !3285)
!3293 = !DILocation(line: 164, column: 8, scope: !3285)
!3294 = !DILocation(line: 164, column: 13, scope: !3285)
!3295 = !DILocation(line: 164, column: 26, scope: !3285)
!3296 = !DILocation(line: 0, scope: !3285)
!3297 = !DILocation(line: 165, column: 3, scope: !3285)
!3298 = !DILocation(line: 165, column: 6, scope: !3285)
!3299 = !DILocation(line: 165, column: 15, scope: !3285)
!3300 = !DILocation(line: 167, column: 2, scope: !3285)
!3301 = distinct !DISubprogram(name: "(*internal/task.waitGroup).wait", linkageName: "(*internal/task.waitGroup).wait", scope: !330, file: !330, line: 169, type: !3286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3302)
!3302 = !{!3303, !3304}
!3303 = !DILocalVariable(name: "wg", arg: 1, scope: !3301, file: !330, line: 169, type: !3288)
!3304 = !DILocalVariable(name: "val", scope: !3301, file: !330, line: 171, type: !98)
!3305 = !DILocation(line: 169, column: 22, scope: !3301)
!3306 = !DILocation(line: 0, scope: !3301)
!3307 = !DILocation(line: 171, column: 10, scope: !3301)
!3308 = !DILocation(line: 171, column: 13, scope: !3301)
!3309 = !DILocation(line: 171, column: 19, scope: !3301)
!3310 = !DILocation(line: 171, column: 3, scope: !3301)
!3311 = !DILocation(line: 172, column: 6, scope: !3301)
!3312 = !DILocation(line: 172, column: 10, scope: !3301)
!3313 = !DILocation(line: 173, column: 4, scope: !3301)
!3314 = !DILocation(line: 175, column: 3, scope: !3301)
!3315 = !DILocation(line: 175, column: 6, scope: !3301)
!3316 = !DILocation(line: 175, column: 13, scope: !3301)
!3317 = !DILocation(line: 175, column: 12, scope: !3301)
!3318 = distinct !DISubprogram(name: "internal/task.initWaitGroup", linkageName: "internal/task.initWaitGroup", scope: !330, file: !330, line: 157, type: !3319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3321)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!98}
!3321 = !{!3322, !3323}
!3322 = !DILocalVariable(name: "n", arg: 1, scope: !3318, file: !330, line: 157, type: !98)
!3323 = !DILocalVariable(name: "wg", scope: !3318, file: !330, line: 158, type: !401)
!3324 = !DILocation(line: 157, column: 6, scope: !3318)
!3325 = !DILocation(line: 158, column: 6, scope: !3318)
!3326 = !DILocation(line: 159, column: 5, scope: !3318)
!3327 = !DILocation(line: 159, column: 2, scope: !3318)
!3328 = !DILocation(line: 159, column: 13, scope: !3318)
!3329 = !DILocation(line: 159, column: 12, scope: !3318)
!3330 = !DILocation(line: 160, column: 9, scope: !3318)
!3331 = !DILocation(line: 160, column: 2, scope: !3318)
!3332 = distinct !DISubprogram(name: "internal/task.GCStopWorldAndScan", linkageName: "internal/task.GCStopWorldAndScan", scope: !330, file: !330, line: 192, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3333)
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3339}
!3334 = !DILocalVariable(name: "current", scope: !3332, file: !330, line: 193, type: !331)
!3335 = !DILocalVariable(name: "otherGoroutines", scope: !3332, file: !330, line: 99, type: !98)
!3336 = !DILocalVariable(name: "scanWaitGroup", scope: !3332, file: !330, line: 151, type: !401)
!3337 = !DILocalVariable(name: "activeTasks", scope: !3332, file: !330, line: 45, type: !331)
!3338 = !DILocalVariable(name: "t", scope: !3332, file: !330, line: 212, type: !331)
!3339 = !DILocalVariable(name: "t", scope: !3332, file: !330, line: 223, type: !331)
!3340 = !DILocation(line: 193, column: 20, scope: !3332)
!3341 = !DILocation(line: 193, column: 2, scope: !3332)
!3342 = !DILocation(line: 196, column: 17, scope: !3332)
!3343 = !DILocation(line: 196, column: 20, scope: !3332)
!3344 = !DILocation(line: 0, scope: !3332)
!3345 = !DILocation(line: 199, column: 22, scope: !3332)
!3346 = !DILocation(line: 202, column: 21, scope: !3332)
!3347 = !DILocation(line: 206, column: 16, scope: !3332)
!3348 = !DILocation(line: 209, column: 33, scope: !3332)
!3349 = !DILocation(line: 209, column: 32, scope: !3332)
!3350 = !DILocation(line: 209, column: 3, scope: !3332)
!3351 = !DILocation(line: 212, column: 12, scope: !3332)
!3352 = !DILocation(line: 212, column: 7, scope: !3332)
!3353 = !DILocation(line: 212, column: 25, scope: !3332)
!3354 = !DILocation(line: 212, column: 27, scope: !3332)
!3355 = !DILocation(line: 213, column: 7, scope: !3332)
!3356 = !DILocation(line: 213, column: 12, scope: !3332)
!3357 = !DILocation(line: 213, column: 9, scope: !3332)
!3358 = !DILocation(line: 214, column: 32, scope: !3332)
!3359 = !DILocation(line: 214, column: 34, scope: !3332)
!3360 = !DILocation(line: 214, column: 40, scope: !3332)
!3361 = !DILocation(line: 214, column: 31, scope: !3332)
!3362 = !DILocation(line: 212, column: 39, scope: !3332)
!3363 = !DILocation(line: 212, column: 41, scope: !3332)
!3364 = !DILocation(line: 212, column: 47, scope: !3332)
!3365 = !DILocation(line: 212, column: 35, scope: !3332)
!3366 = !DILocation(line: 219, column: 21, scope: !3332)
!3367 = !DILocation(line: 223, column: 11, scope: !3332)
!3368 = !DILocation(line: 223, column: 6, scope: !3332)
!3369 = !DILocation(line: 223, column: 24, scope: !3332)
!3370 = !DILocation(line: 223, column: 26, scope: !3332)
!3371 = !DILocation(line: 224, column: 6, scope: !3332)
!3372 = !DILocation(line: 224, column: 11, scope: !3332)
!3373 = !DILocation(line: 224, column: 8, scope: !3332)
!3374 = !DILocation(line: 225, column: 14, scope: !3332)
!3375 = !DILocation(line: 225, column: 16, scope: !3332)
!3376 = !DILocation(line: 225, column: 22, scope: !3332)
!3377 = !DILocation(line: 225, column: 35, scope: !3332)
!3378 = !DILocation(line: 225, column: 37, scope: !3332)
!3379 = !DILocation(line: 225, column: 43, scope: !3332)
!3380 = !DILocation(line: 225, column: 13, scope: !3332)
!3381 = !DILocation(line: 223, column: 38, scope: !3332)
!3382 = !DILocation(line: 223, column: 40, scope: !3332)
!3383 = !DILocation(line: 223, column: 46, scope: !3332)
!3384 = !DILocation(line: 223, column: 34, scope: !3332)
!3385 = !DILocation(line: 230, column: 18, scope: !3332)
!3386 = !DILocation(line: 233, column: 15, scope: !3332)
!3387 = !DILocation(line: 234, column: 2, scope: !3332)
!3388 = distinct !DISubprogram(name: "internal/task.GCResumeWorld", linkageName: "internal/task.GCResumeWorld", scope: !330, file: !330, line: 237, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3389)
!3389 = !{!3390, !3391}
!3390 = !DILocalVariable(name: "otherGoroutines", scope: !3388, file: !330, line: 99, type: !98)
!3391 = !DILocalVariable(name: "scanWaitGroup", scope: !3388, file: !330, line: 151, type: !401)
!3392 = !DILocation(line: 239, column: 17, scope: !3388)
!3393 = !DILocation(line: 239, column: 20, scope: !3388)
!3394 = !DILocation(line: 0, scope: !3388)
!3395 = !DILocation(line: 241, column: 3, scope: !3388)
!3396 = !DILocation(line: 245, column: 32, scope: !3388)
!3397 = !DILocation(line: 245, column: 31, scope: !3388)
!3398 = !DILocation(line: 245, column: 2, scope: !3388)
!3399 = !DILocation(line: 248, column: 15, scope: !3388)
!3400 = !DILocation(line: 251, column: 17, scope: !3388)
!3401 = !DILocation(line: 254, column: 23, scope: !3388)
!3402 = !DILocation(line: 255, column: 2, scope: !3388)
!3403 = distinct !DISubprogram(name: "internal/task.tingyo_task_gc_pause", linkageName: "tinygo_task_gc_pause", scope: !330, file: !330, line: 266, type: !3404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3406)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!381}
!3406 = !{!3407, !3408}
!3407 = !DILocalVariable(name: "sig", arg: 1, scope: !3403, file: !330, line: 266, type: !381)
!3408 = !DILocalVariable(name: "stackBottom", scope: !3403, file: !330, line: 28, type: !43)
!3409 = !DILocation(line: 266, column: 6, scope: !3403)
!3410 = !DILocation(line: 268, column: 9, scope: !3403)
!3411 = !DILocation(line: 268, column: 12, scope: !3403)
!3412 = !DILocation(line: 268, column: 49, scope: !3403)
!3413 = !DILocation(line: 268, column: 39, scope: !3403)
!3414 = !DILocation(line: 268, column: 18, scope: !3403)
!3415 = !DILocation(line: 271, column: 20, scope: !3403)
!3416 = !DILocation(line: 0, scope: !3403)
!3417 = !DILocation(line: 274, column: 18, scope: !3403)
!3418 = !DILocation(line: 274, column: 21, scope: !3403)
!3419 = !DILocation(line: 275, column: 15, scope: !3403)
!3420 = !DILocation(line: 279, column: 20, scope: !3403)
!3421 = !DILocation(line: 280, column: 2, scope: !3403)
!3422 = distinct !DISubprogram(name: "internal/task.StackTop", linkageName: "internal/task.StackTop", scope: !330, file: !330, line: 289, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527)
!3423 = !DILocation(line: 290, column: 16, scope: !3422)
!3424 = !DILocation(line: 290, column: 19, scope: !3422)
!3425 = !DILocation(line: 290, column: 25, scope: !3422)
!3426 = !DILocation(line: 290, column: 2, scope: !3422)
!3427 = distinct !DISubprogram(name: "runtime.alloc", linkageName: "runtime.alloc", scope: !421, file: !421, line: 68, type: !3428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3430)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!43, !84}
!3430 = !{!3431, !3432, !3433}
!3431 = !DILocalVariable(name: "size", arg: 1, scope: !3427, file: !421, line: 68, type: !43)
!3432 = !DILocalVariable(name: "layout", arg: 2, scope: !3427, file: !421, line: 68, type: !84)
!3433 = !DILocalVariable(name: "ptr", scope: !3427, file: !421, line: 74, type: !84)
!3434 = !DILocation(line: 68, column: 6, scope: !3427)
!3435 = !DILocation(line: 69, column: 5, scope: !3427)
!3436 = !DILocation(line: 69, column: 10, scope: !3427)
!3437 = !DILocation(line: 0, scope: !3427)
!3438 = !DILocation(line: 70, column: 3, scope: !3427)
!3439 = !DILocation(line: 73, column: 13, scope: !3427)
!3440 = !DILocation(line: 74, column: 6, scope: !3427)
!3441 = !DILocation(line: 75, column: 5, scope: !3427)
!3442 = !DILocation(line: 75, column: 36, scope: !3427)
!3443 = !DILocation(line: 75, column: 12, scope: !3427)
!3444 = !DILocation(line: 79, column: 29, scope: !3427)
!3445 = !DILocation(line: 79, column: 28, scope: !3427)
!3446 = !DILocation(line: 79, column: 3, scope: !3427)
!3447 = !DILocation(line: 82, column: 11, scope: !3427)
!3448 = !DILocation(line: 82, column: 16, scope: !3427)
!3449 = !DILocation(line: 82, column: 10, scope: !3427)
!3450 = !DILocation(line: 90, column: 15, scope: !3427)
!3451 = !DILocation(line: 91, column: 15, scope: !3427)
!3452 = !DILocation(line: 92, column: 5, scope: !3427)
!3453 = !DILocation(line: 92, column: 9, scope: !3427)
!3454 = !DILocation(line: 93, column: 15, scope: !3427)
!3455 = !DILocation(line: 96, column: 9, scope: !3427)
!3456 = !DILocation(line: 96, column: 2, scope: !3427)
!3457 = !DILocation(line: 86, column: 22, scope: !3427)
!3458 = !DILocation(line: 86, column: 21, scope: !3427)
!3459 = !DILocation(line: 86, column: 3, scope: !3427)
!3460 = distinct !DISubprogram(name: "runtime.memzero", linkageName: "runtime.memzero", scope: !1584, file: !1584, line: 53, type: !3461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3463)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!84, !43}
!3463 = !{!3464, !3465}
!3464 = !DILocalVariable(name: "ptr", arg: 1, scope: !3460, file: !1584, line: 53, type: !84)
!3465 = !DILocalVariable(name: "size", arg: 2, scope: !3460, file: !1584, line: 53, type: !43)
!3466 = !DILocation(line: 53, column: 6, scope: !3460)
!3467 = distinct !DISubprogram(name: "runtime.gcResumeWorld", linkageName: "runtime.gcResumeWorld", scope: !3468, file: !3468, line: 27, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3468 = !DIFile(filename: "gc_stack_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3469 = !DILocation(line: 28, column: 20, scope: !3467)
!3470 = !DILocation(line: 29, column: 2, scope: !3467)
!3471 = distinct !DISubprogram(name: "runtime.runtimePanic", linkageName: "runtime.runtimePanic", scope: !428, file: !428, line: 85, type: !1945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3472)
!3472 = !{!3473}
!3473 = !DILocalVariable(name: "msg", arg: 1, scope: !3471, file: !428, line: 85, type: !38)
!3474 = !DILocation(line: 85, column: 6, scope: !3471)
!3475 = !DILocation(line: 88, column: 30, scope: !3471)
!3476 = !DILocation(line: 88, column: 35, scope: !3471)
!3477 = !DILocation(line: 88, column: 16, scope: !3471)
!3478 = !DILocation(line: 89, column: 2, scope: !3471)
!3479 = distinct !DISubprogram(name: "runtime.runtimePanicAt", linkageName: "runtime.runtimePanicAt", scope: !428, file: !428, line: 91, type: !3480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3482)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!84, !38}
!3482 = !{!3483, !3484}
!3483 = !DILocalVariable(name: "addr", arg: 1, scope: !3479, file: !428, line: 91, type: !84)
!3484 = !DILocalVariable(name: "msg", arg: 2, scope: !3479, file: !428, line: 91, type: !38)
!3485 = !DILocation(line: 91, column: 6, scope: !3479)
!3486 = !DILocation(line: 0, scope: !3479)
!3487 = !DILocation(line: 93, column: 7, scope: !3479)
!3488 = !DILocation(line: 99, column: 14, scope: !3479)
!3489 = !DILocation(line: 100, column: 20, scope: !3479)
!3490 = !DILocation(line: 100, column: 19, scope: !3479)
!3491 = !DILocation(line: 100, column: 26, scope: !3479)
!3492 = !DILocation(line: 100, column: 11, scope: !3479)
!3493 = !DILocation(line: 101, column: 14, scope: !3479)
!3494 = !DILocation(line: 105, column: 14, scope: !3479)
!3495 = !DILocation(line: 105, column: 13, scope: !3479)
!3496 = !DILocation(line: 106, column: 9, scope: !3479)
!3497 = !DILocation(line: 107, column: 7, scope: !3479)
!3498 = !DILocation(line: 108, column: 2, scope: !3479)
!3499 = !DILocation(line: 103, column: 14, scope: !3479)
!3500 = distinct !DISubprogram(name: "runtime.printstring", linkageName: "runtime.printstring", scope: !458, file: !458, line: 12, type: !1945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3501)
!3501 = !{!3502, !3503}
!3502 = !DILocalVariable(name: "s", arg: 1, scope: !3500, file: !458, line: 12, type: !38)
!3503 = !DILocalVariable(name: "i", scope: !3500, file: !458, line: 13, type: !1891)
!3504 = !DILocation(line: 12, column: 6, scope: !3500)
!3505 = !DILocation(line: 13, column: 6, scope: !3500)
!3506 = !DILocation(line: 0, scope: !3500)
!3507 = !DILocation(line: 13, column: 14, scope: !3500)
!3508 = !DILocation(line: 13, column: 22, scope: !3500)
!3509 = !DILocation(line: 13, column: 21, scope: !3500)
!3510 = !DILocation(line: 13, column: 16, scope: !3500)
!3511 = !DILocation(line: 14, column: 13, scope: !3500)
!3512 = !DILocation(line: 14, column: 11, scope: !3500)
!3513 = !DILocation(line: 14, column: 12, scope: !3500)
!3514 = !DILocation(line: 14, column: 10, scope: !3500)
!3515 = !DILocation(line: 13, column: 26, scope: !3500)
!3516 = !DILocation(line: 16, column: 2, scope: !3500)
!3517 = distinct !DISubprogram(name: "runtime.printptr", linkageName: "runtime.printptr", scope: !458, file: !458, line: 371, type: !3208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3518)
!3518 = !{!3519, !3520, !3521}
!3519 = !DILocalVariable(name: "ptr", arg: 1, scope: !3517, file: !458, line: 371, type: !43)
!3520 = !DILocalVariable(name: "i", scope: !3517, file: !458, line: 378, type: !1891)
!3521 = !DILocalVariable(name: "nibble", scope: !3517, file: !458, line: 379, type: !533)
!3522 = !DILocation(line: 371, column: 6, scope: !3517)
!3523 = !DILocation(line: 372, column: 5, scope: !3517)
!3524 = !DILocation(line: 372, column: 9, scope: !3517)
!3525 = !DILocation(line: 0, scope: !3517)
!3526 = !DILocation(line: 373, column: 14, scope: !3517)
!3527 = !DILocation(line: 374, column: 3, scope: !3517)
!3528 = !DILocation(line: 376, column: 9, scope: !3517)
!3529 = !DILocation(line: 377, column: 9, scope: !3517)
!3530 = !DILocation(line: 378, column: 6, scope: !3517)
!3531 = !DILocation(line: 371, column: 15, scope: !3517)
!3532 = !DILocation(line: 378, column: 14, scope: !3517)
!3533 = !DILocation(line: 378, column: 16, scope: !3517)
!3534 = !DILocation(line: 379, column: 18, scope: !3517)
!3535 = !DILocation(line: 379, column: 22, scope: !3517)
!3536 = !DILocation(line: 379, column: 17, scope: !3517)
!3537 = !DILocation(line: 379, column: 3, scope: !3517)
!3538 = !DILocation(line: 380, column: 6, scope: !3517)
!3539 = !DILocation(line: 380, column: 13, scope: !3517)
!3540 = !DILocation(line: 381, column: 12, scope: !3517)
!3541 = !DILocation(line: 381, column: 19, scope: !3517)
!3542 = !DILocation(line: 381, column: 11, scope: !3517)
!3543 = !DILocation(line: 385, column: 3, scope: !3517)
!3544 = !DILocation(line: 378, column: 45, scope: !3517)
!3545 = !DILocation(line: 383, column: 12, scope: !3517)
!3546 = !DILocation(line: 383, column: 19, scope: !3517)
!3547 = !DILocation(line: 383, column: 24, scope: !3517)
!3548 = !DILocation(line: 383, column: 11, scope: !3517)
!3549 = !DILocation(line: 387, column: 2, scope: !3517)
!3550 = distinct !DISubprogram(name: "runtime.printnl", linkageName: "runtime.printnl", scope: !458, file: !458, line: 286, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3551 = !DILocation(line: 0, scope: !3550)
!3552 = !DILocation(line: 288, column: 10, scope: !3550)
!3553 = !DILocation(line: 290, column: 9, scope: !3550)
!3554 = !DILocation(line: 291, column: 2, scope: !3550)
!3555 = distinct !DISubprogram(name: "runtime.putchar", linkageName: "runtime.putchar", scope: !414, file: !414, line: 214, type: !3556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3558)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!533}
!3558 = !{!3559}
!3559 = !DILocalVariable(name: "c", arg: 1, scope: !3555, file: !414, line: 214, type: !533)
!3560 = !DILocation(line: 214, column: 6, scope: !3555)
!3561 = !DILocation(line: 215, column: 2, scope: !3555)
!3562 = !DILocation(line: 215, column: 17, scope: !3555)
!3563 = !DILocation(line: 216, column: 35, scope: !3555)
!3564 = !DILocation(line: 216, column: 12, scope: !3555)
!3565 = !DILocation(line: 217, column: 2, scope: !3555)
!3566 = distinct !DISubprogram(name: "runtime.initRand", linkageName: "runtime.initRand", scope: !409, file: !409, line: 26, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3567)
!3567 = !{!3568, !3569, !3570}
!3568 = !DILocalVariable(name: "r", scope: !3566, file: !409, line: 27, type: !338)
!3569 = !DILocalVariable(name: "xorshift64State", scope: !3566, file: !409, line: 52, type: !338)
!3570 = !DILocalVariable(name: "xorshift32State", scope: !3566, file: !409, line: 32, type: !98)
!3571 = !DILocation(line: 27, column: 22, scope: !3566)
!3572 = !DILocation(line: 27, column: 2, scope: !3566)
!3573 = !DILocation(line: 28, column: 27, scope: !3566)
!3574 = !DILocation(line: 28, column: 29, scope: !3566)
!3575 = !DILocation(line: 28, column: 2, scope: !3566)
!3576 = !DILocation(line: 29, column: 27, scope: !3566)
!3577 = !DILocation(line: 29, column: 26, scope: !3566)
!3578 = !DILocation(line: 29, column: 2, scope: !3566)
!3579 = !DILocation(line: 30, column: 2, scope: !3566)
!3580 = distinct !DISubprogram(name: "runtime.hardwareRand", linkageName: "runtime.hardwareRand", scope: !3581, file: !3581, line: 137, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3582)
!3581 = !DIFile(filename: "os_linux.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3582 = !{!3583, !3584}
!3583 = !DILocalVariable(name: "read", scope: !3580, file: !3581, line: 138, type: !98)
!3584 = !DILocalVariable(name: "n", scope: !3580, file: !3581, line: 137, type: !338)
!3585 = !DILocation(line: 137, column: 22, scope: !3580)
!3586 = !DILocation(line: 138, column: 24, scope: !3580)
!3587 = !DILocation(line: 138, column: 2, scope: !3580)
!3588 = !DILocation(line: 139, column: 5, scope: !3580)
!3589 = !DILocation(line: 139, column: 10, scope: !3580)
!3590 = !DILocation(line: 0, scope: !3580)
!3591 = !DILocation(line: 140, column: 3, scope: !3580)
!3592 = !DILocation(line: 142, column: 9, scope: !3580)
!3593 = !DILocation(line: 142, column: 2, scope: !3580)
!3594 = distinct !DISubprogram(name: "runtime.getCurrentStackPointer", linkageName: "runtime.getCurrentStackPointer", scope: !3595, file: !3595, line: 26, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3595 = !DIFile(filename: "arch_amd64.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3596 = !DILocation(line: 27, column: 26, scope: !3594)
!3597 = !DILocation(line: 27, column: 16, scope: !3594)
!3598 = !DILocation(line: 27, column: 2, scope: !3594)
!3599 = distinct !DISubprogram(name: "runtime.stacksave", linkageName: "runtime.stacksave", scope: !1584, file: !1584, line: 58, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3600 = !DILocation(line: 58, column: 6, scope: !3599)
!3601 = distinct !DISubprogram(name: "runtime.memcpy", linkageName: "runtime.memcpy", scope: !1584, file: !1584, line: 42, type: !3602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3604)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!84, !84, !43}
!3604 = !{!3605, !3606, !3607}
!3605 = !DILocalVariable(name: "dst", arg: 1, scope: !3601, file: !1584, line: 42, type: !84)
!3606 = !DILocalVariable(name: "src", arg: 2, scope: !3601, file: !1584, line: 42, type: !84)
!3607 = !DILocalVariable(name: "size", arg: 3, scope: !3601, file: !1584, line: 42, type: !43)
!3608 = !DILocation(line: 42, column: 6, scope: !3601)
!3609 = distinct !DISubprogram(name: "runtime.nilPanic", linkageName: "runtime.nilPanic", scope: !428, file: !428, line: 183, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3610 = !DILocation(line: 184, column: 30, scope: !3609)
!3611 = !DILocation(line: 184, column: 16, scope: !3609)
!3612 = !DILocation(line: 185, column: 2, scope: !3609)
!3613 = distinct !DISubprogram(name: "runtime.deadlock", linkageName: "runtime.deadlock", scope: !515, file: !515, line: 42, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3614 = !DILocation(line: 44, column: 12, scope: !3613)
!3615 = !DILocation(line: 45, column: 2, scope: !3613)
!3616 = distinct !DISubprogram(name: "runtime.lookupPanic", linkageName: "runtime.lookupPanic", scope: !428, file: !428, line: 193, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3617 = !DILocation(line: 194, column: 30, scope: !3616)
!3618 = !DILocation(line: 194, column: 16, scope: !3616)
!3619 = !DILocation(line: 195, column: 2, scope: !3616)
!3620 = distinct !DISubprogram(name: "runtime.panicOrGoexit", linkageName: "runtime.panicOrGoexit", scope: !428, file: !428, line: 58, type: !3621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3624)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!778, !3623}
!3623 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.panicState", baseType: !4)
!3624 = !{!3625, !3626, !3627, !3638, !3639}
!3625 = !DILocalVariable(name: "message", arg: 1, scope: !3620, file: !428, line: 58, type: !778)
!3626 = !DILocalVariable(name: "panicking", arg: 2, scope: !3620, file: !428, line: 58, type: !3623)
!3627 = !DILocalVariable(name: "frame", scope: !3620, file: !428, line: 65, type: !3628)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64, align: 64, dwarfAddressSpace: 0)
!3629 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.deferFrame", baseType: !3630)
!3630 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !3631)
!3631 = !{!3632, !3633, !3634, !3635, !3636, !3637}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "JumpSP", baseType: !84, size: 64, align: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "JumpPC", baseType: !84, size: 64, align: 64, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraRegs", baseType: !2568, align: 64, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "Previous", baseType: !3628, size: 64, align: 64, offset: 128)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "Panicking", baseType: !3623, size: 8, align: 8, offset: 192)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "PanicValue", baseType: !778, size: 128, align: 64, offset: 256)
!3638 = !DILocalVariable(name: "PanicValue", scope: !3620, file: !428, line: 42, type: !778)
!3639 = !DILocalVariable(name: "Panicking", scope: !3620, file: !428, line: 41, type: !3623)
!3640 = !DILocation(line: 58, column: 6, scope: !3620)
!3641 = !DILocation(line: 0, scope: !3620)
!3642 = !DILocation(line: 60, column: 7, scope: !3620)
!3643 = !DILocation(line: 64, column: 39, scope: !3620)
!3644 = !DILocation(line: 65, column: 38, scope: !3620)
!3645 = !DILocation(line: 65, column: 41, scope: !3620)
!3646 = !DILocation(line: 65, column: 3, scope: !3620)
!3647 = !DILocation(line: 66, column: 6, scope: !3620)
!3648 = !DILocation(line: 66, column: 12, scope: !3620)
!3649 = !DILocation(line: 67, column: 4, scope: !3620)
!3650 = !DILocation(line: 67, column: 23, scope: !3620)
!3651 = !DILocation(line: 67, column: 10, scope: !3620)
!3652 = !DILocation(line: 68, column: 4, scope: !3620)
!3653 = !DILocation(line: 68, column: 22, scope: !3620)
!3654 = !DILocation(line: 68, column: 10, scope: !3620)
!3655 = !DILocation(line: 69, column: 19, scope: !3620)
!3656 = !DILocation(line: 69, column: 18, scope: !3620)
!3657 = !DILocation(line: 73, column: 5, scope: !3620)
!3658 = !DILocation(line: 73, column: 15, scope: !3620)
!3659 = !DILocation(line: 76, column: 11, scope: !3620)
!3660 = !DILocation(line: 78, column: 13, scope: !3620)
!3661 = !DILocation(line: 79, column: 11, scope: !3620)
!3662 = !DILocation(line: 79, column: 10, scope: !3620)
!3663 = !DILocation(line: 80, column: 9, scope: !3620)
!3664 = !DILocation(line: 81, column: 7, scope: !3620)
!3665 = !DILocation(line: 82, column: 2, scope: !3620)
!3666 = distinct !DISubprogram(name: "runtime.printitf", linkageName: "runtime.printitf", scope: !458, file: !458, line: 293, type: !3667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3669)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!778}
!3669 = !{!3670, !3671, !3672, !3673, !3674, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3686, !3687, !3689, !3691, !3692, !3693, !3695}
!3670 = !DILocalVariable(name: "msg", arg: 1, scope: !3666, file: !458, line: 293, type: !778)
!3671 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !371)
!3672 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !1891)
!3673 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !82)
!3674 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !3675)
!3675 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!3676 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !381)
!3677 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !1699)
!3678 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !1738)
!3679 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !4)
!3680 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !90)
!3681 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !98)
!3682 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !338)
!3683 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !43)
!3684 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !3685)
!3685 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!3686 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !795)
!3687 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !3688)
!3688 = !DIBasicType(name: "complex64", size: 64, encoding: DW_ATE_complex_float)
!3689 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !3690)
!3690 = !DIBasicType(name: "complex128", size: 128, encoding: DW_ATE_complex_float)
!3691 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !38)
!3692 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !777)
!3693 = !DILocalVariable(name: "msg", scope: !3666, file: !458, line: 294, type: !3694)
!3694 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.stringer", baseType: !778)
!3695 = !DILocalVariable(name: "itf", scope: !3666, file: !458, line: 345, type: !778)
!3696 = !DILocation(line: 293, column: 6, scope: !3666)
!3697 = !DILocation(line: 294, column: 16, scope: !3666)
!3698 = !DILocation(line: 295, column: 2, scope: !3666)
!3699 = !DILocation(line: 0, scope: !3666)
!3700 = !DILocation(line: 296, column: 13, scope: !3666)
!3701 = !DILocation(line: 296, column: 12, scope: !3666)
!3702 = !DILocation(line: 352, column: 2, scope: !3666)
!3703 = !DILocation(line: 297, column: 2, scope: !3666)
!3704 = !DILocation(line: 300, column: 21, scope: !3666)
!3705 = !DILocation(line: 300, column: 14, scope: !3666)
!3706 = !DILocation(line: 302, column: 21, scope: !3666)
!3707 = !DILocation(line: 302, column: 20, scope: !3666)
!3708 = !DILocation(line: 302, column: 14, scope: !3666)
!3709 = !DILocation(line: 304, column: 2, scope: !3666)
!3710 = !DILocation(line: 305, column: 13, scope: !3666)
!3711 = !DILocation(line: 305, column: 12, scope: !3666)
!3712 = !DILocation(line: 306, column: 2, scope: !3666)
!3713 = !DILocation(line: 307, column: 14, scope: !3666)
!3714 = !DILocation(line: 307, column: 13, scope: !3666)
!3715 = !DILocation(line: 308, column: 2, scope: !3666)
!3716 = !DILocation(line: 309, column: 14, scope: !3666)
!3717 = !DILocation(line: 309, column: 13, scope: !3666)
!3718 = !DILocation(line: 310, column: 2, scope: !3666)
!3719 = !DILocation(line: 311, column: 14, scope: !3666)
!3720 = !DILocation(line: 311, column: 13, scope: !3666)
!3721 = !DILocation(line: 312, column: 2, scope: !3666)
!3722 = !DILocation(line: 315, column: 23, scope: !3666)
!3723 = !DILocation(line: 315, column: 15, scope: !3666)
!3724 = !DILocation(line: 317, column: 23, scope: !3666)
!3725 = !DILocation(line: 317, column: 22, scope: !3666)
!3726 = !DILocation(line: 317, column: 15, scope: !3666)
!3727 = !DILocation(line: 319, column: 2, scope: !3666)
!3728 = !DILocation(line: 320, column: 14, scope: !3666)
!3729 = !DILocation(line: 320, column: 13, scope: !3666)
!3730 = !DILocation(line: 321, column: 2, scope: !3666)
!3731 = !DILocation(line: 322, column: 15, scope: !3666)
!3732 = !DILocation(line: 322, column: 14, scope: !3666)
!3733 = !DILocation(line: 323, column: 2, scope: !3666)
!3734 = !DILocation(line: 324, column: 15, scope: !3666)
!3735 = !DILocation(line: 324, column: 14, scope: !3666)
!3736 = !DILocation(line: 325, column: 2, scope: !3666)
!3737 = !DILocation(line: 326, column: 15, scope: !3666)
!3738 = !DILocation(line: 326, column: 14, scope: !3666)
!3739 = !DILocation(line: 327, column: 2, scope: !3666)
!3740 = !DILocation(line: 328, column: 16, scope: !3666)
!3741 = !DILocation(line: 328, column: 15, scope: !3666)
!3742 = !DILocation(line: 329, column: 2, scope: !3666)
!3743 = !DILocation(line: 330, column: 16, scope: !3666)
!3744 = !DILocation(line: 330, column: 15, scope: !3666)
!3745 = !DILocation(line: 331, column: 2, scope: !3666)
!3746 = !DILocation(line: 332, column: 16, scope: !3666)
!3747 = !DILocation(line: 332, column: 15, scope: !3666)
!3748 = !DILocation(line: 333, column: 2, scope: !3666)
!3749 = !DILocation(line: 334, column: 18, scope: !3666)
!3750 = !DILocation(line: 334, column: 17, scope: !3666)
!3751 = !DILocation(line: 335, column: 2, scope: !3666)
!3752 = !DILocation(line: 336, column: 19, scope: !3666)
!3753 = !DILocation(line: 336, column: 18, scope: !3666)
!3754 = !DILocation(line: 337, column: 2, scope: !3666)
!3755 = !DILocation(line: 338, column: 15, scope: !3666)
!3756 = !DILocation(line: 338, column: 14, scope: !3666)
!3757 = !DILocation(line: 339, column: 2, scope: !3666)
!3758 = !DILocation(line: 340, column: 15, scope: !3666)
!3759 = !DILocation(line: 340, column: 24, scope: !3666)
!3760 = !DILocation(line: 340, column: 14, scope: !3666)
!3761 = !DILocation(line: 341, column: 2, scope: !3666)
!3762 = !DILocation(line: 342, column: 15, scope: !3666)
!3763 = !DILocation(line: 342, column: 25, scope: !3666)
!3764 = !DILocation(line: 342, column: 14, scope: !3666)
!3765 = !DILocation(line: 294, column: 9, scope: !3666)
!3766 = !DILocation(line: 345, column: 10, scope: !3666)
!3767 = !DILocation(line: 345, column: 3, scope: !3666)
!3768 = !DILocation(line: 346, column: 10, scope: !3666)
!3769 = !DILocation(line: 347, column: 28, scope: !3666)
!3770 = !DILocation(line: 347, column: 23, scope: !3666)
!3771 = !DILocation(line: 347, column: 15, scope: !3666)
!3772 = !DILocation(line: 348, column: 10, scope: !3666)
!3773 = !DILocation(line: 349, column: 24, scope: !3666)
!3774 = !DILocation(line: 349, column: 19, scope: !3666)
!3775 = !DILocation(line: 349, column: 11, scope: !3666)
!3776 = !DILocation(line: 350, column: 10, scope: !3666)
!3777 = distinct !DISubprogram(name: "runtime.printbool", linkageName: "runtime.printbool", scope: !458, file: !458, line: 389, type: !3778, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3780)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!371}
!3780 = !{!3781}
!3781 = !DILocalVariable(name: "b", arg: 1, scope: !3777, file: !458, line: 389, type: !371)
!3782 = !DILocation(line: 389, column: 6, scope: !3777)
!3783 = !DILocation(line: 390, column: 5, scope: !3777)
!3784 = !DILocation(line: 0, scope: !3777)
!3785 = !DILocation(line: 391, column: 14, scope: !3777)
!3786 = !DILocation(line: 395, column: 2, scope: !3777)
!3787 = !DILocation(line: 393, column: 14, scope: !3777)
!3788 = distinct !DISubprogram(name: "runtime.printint64", linkageName: "runtime.printint64", scope: !458, file: !458, line: 94, type: !3789, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3791)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!1699}
!3791 = !{!3792}
!3792 = !DILocalVariable(name: "n", arg: 1, scope: !3788, file: !458, line: 94, type: !1699)
!3793 = !DILocation(line: 94, column: 6, scope: !3788)
!3794 = !DILocation(line: 95, column: 5, scope: !3788)
!3795 = !DILocation(line: 95, column: 7, scope: !3788)
!3796 = !DILocation(line: 0, scope: !3788)
!3797 = !DILocation(line: 96, column: 10, scope: !3788)
!3798 = !DILocation(line: 97, column: 8, scope: !3788)
!3799 = !DILocation(line: 97, column: 7, scope: !3788)
!3800 = !DILocation(line: 97, column: 3, scope: !3788)
!3801 = !DILocation(line: 94, column: 17, scope: !3788)
!3802 = !DILocation(line: 99, column: 21, scope: !3788)
!3803 = !DILocation(line: 99, column: 13, scope: !3788)
!3804 = !DILocation(line: 100, column: 2, scope: !3788)
!3805 = distinct !DISubprogram(name: "runtime.printint32", linkageName: "runtime.printint32", scope: !458, file: !458, line: 65, type: !3404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3806)
!3806 = !{!3807}
!3807 = !DILocalVariable(name: "n", arg: 1, scope: !3805, file: !458, line: 65, type: !381)
!3808 = !DILocation(line: 65, column: 6, scope: !3805)
!3809 = !DILocation(line: 68, column: 5, scope: !3805)
!3810 = !DILocation(line: 68, column: 7, scope: !3805)
!3811 = !DILocation(line: 0, scope: !3805)
!3812 = !DILocation(line: 69, column: 10, scope: !3805)
!3813 = !DILocation(line: 70, column: 8, scope: !3805)
!3814 = !DILocation(line: 70, column: 7, scope: !3805)
!3815 = !DILocation(line: 70, column: 3, scope: !3805)
!3816 = !DILocation(line: 65, column: 17, scope: !3805)
!3817 = !DILocation(line: 72, column: 21, scope: !3805)
!3818 = !DILocation(line: 72, column: 13, scope: !3805)
!3819 = !DILocation(line: 73, column: 2, scope: !3805)
!3820 = distinct !DISubprogram(name: "runtime.printint8", linkageName: "runtime.printint8", scope: !458, file: !458, line: 30, type: !3821, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3823)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!82}
!3823 = !{!3824}
!3824 = !DILocalVariable(name: "n", arg: 1, scope: !3820, file: !458, line: 30, type: !82)
!3825 = !DILocation(line: 30, column: 6, scope: !3820)
!3826 = !DILocation(line: 0, scope: !3820)
!3827 = !DILocation(line: 32, column: 20, scope: !3820)
!3828 = !DILocation(line: 32, column: 19, scope: !3820)
!3829 = !DILocation(line: 32, column: 13, scope: !3820)
!3830 = !DILocation(line: 40, column: 2, scope: !3820)
!3831 = !DILocation(line: 34, column: 6, scope: !3820)
!3832 = !DILocation(line: 34, column: 8, scope: !3820)
!3833 = !DILocation(line: 35, column: 11, scope: !3820)
!3834 = !DILocation(line: 36, column: 9, scope: !3820)
!3835 = !DILocation(line: 36, column: 8, scope: !3820)
!3836 = !DILocation(line: 36, column: 4, scope: !3820)
!3837 = !DILocation(line: 30, column: 16, scope: !3820)
!3838 = !DILocation(line: 38, column: 20, scope: !3820)
!3839 = !DILocation(line: 38, column: 13, scope: !3820)
!3840 = distinct !DISubprogram(name: "runtime.printint16", linkageName: "runtime.printint16", scope: !458, file: !458, line: 57, type: !3841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3843)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!3675}
!3843 = !{!3844}
!3844 = !DILocalVariable(name: "n", arg: 1, scope: !3840, file: !458, line: 57, type: !3675)
!3845 = !DILocation(line: 57, column: 6, scope: !3840)
!3846 = !DILocation(line: 58, column: 19, scope: !3840)
!3847 = !DILocation(line: 58, column: 18, scope: !3840)
!3848 = !DILocation(line: 58, column: 12, scope: !3840)
!3849 = !DILocation(line: 59, column: 2, scope: !3840)
!3850 = distinct !DISubprogram(name: "runtime.printuint64", linkageName: "runtime.printuint64", scope: !458, file: !458, line: 76, type: !3851, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3853)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!338}
!3853 = !{!3854, !3855, !3856, !3857, !3858}
!3854 = !DILocalVariable(name: "n", arg: 1, scope: !3850, file: !458, line: 76, type: !338)
!3855 = !DILocalVariable(name: "firstdigit", scope: !3850, file: !458, line: 79, type: !1891)
!3856 = !DILocalVariable(name: "i", scope: !3850, file: !458, line: 80, type: !1891)
!3857 = !DILocalVariable(name: "digit", scope: !3850, file: !458, line: 81, type: !533)
!3858 = !DILocalVariable(name: "i", scope: !3850, file: !458, line: 89, type: !1891)
!3859 = !DILocation(line: 76, column: 6, scope: !3850)
!3860 = !DILocation(line: 77, column: 2, scope: !3850)
!3861 = !DILocation(line: 79, column: 2, scope: !3850)
!3862 = !DILocation(line: 80, column: 6, scope: !3850)
!3863 = !DILocation(line: 0, scope: !3850)
!3864 = !DILocation(line: 76, column: 18, scope: !3850)
!3865 = !DILocation(line: 80, column: 15, scope: !3850)
!3866 = !DILocation(line: 80, column: 17, scope: !3850)
!3867 = !DILocation(line: 81, column: 17, scope: !3850)
!3868 = !DILocation(line: 81, column: 18, scope: !3850)
!3869 = !DILocation(line: 81, column: 22, scope: !3850)
!3870 = !DILocation(line: 81, column: 16, scope: !3850)
!3871 = !DILocation(line: 81, column: 3, scope: !3850)
!3872 = !DILocation(line: 82, column: 10, scope: !3850)
!3873 = !DILocation(line: 82, column: 15, scope: !3850)
!3874 = !DILocation(line: 82, column: 9, scope: !3850)
!3875 = !DILocation(line: 83, column: 6, scope: !3850)
!3876 = !DILocation(line: 83, column: 12, scope: !3850)
!3877 = !DILocation(line: 84, column: 17, scope: !3850)
!3878 = !DILocation(line: 84, column: 4, scope: !3850)
!3879 = !DILocation(line: 86, column: 3, scope: !3850)
!3880 = !DILocation(line: 80, column: 23, scope: !3850)
!3881 = !DILocation(line: 89, column: 11, scope: !3850)
!3882 = !DILocation(line: 89, column: 6, scope: !3850)
!3883 = !DILocation(line: 89, column: 23, scope: !3850)
!3884 = !DILocation(line: 89, column: 25, scope: !3850)
!3885 = !DILocation(line: 90, column: 18, scope: !3850)
!3886 = !DILocation(line: 90, column: 17, scope: !3850)
!3887 = !DILocation(line: 90, column: 10, scope: !3850)
!3888 = !DILocation(line: 89, column: 31, scope: !3850)
!3889 = !DILocation(line: 92, column: 2, scope: !3850)
!3890 = distinct !DISubprogram(name: "runtime.printuint32", linkageName: "runtime.printuint32", scope: !458, file: !458, line: 61, type: !3319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3891)
!3891 = !{!3892}
!3892 = !DILocalVariable(name: "n", arg: 1, scope: !3890, file: !458, line: 61, type: !98)
!3893 = !DILocation(line: 61, column: 6, scope: !3890)
!3894 = !DILocation(line: 62, column: 21, scope: !3890)
!3895 = !DILocation(line: 62, column: 20, scope: !3890)
!3896 = !DILocation(line: 62, column: 13, scope: !3890)
!3897 = !DILocation(line: 63, column: 2, scope: !3890)
!3898 = distinct !DISubprogram(name: "runtime.printuint8", linkageName: "runtime.printuint8", scope: !458, file: !458, line: 18, type: !3899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3901)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!4}
!3901 = !{!3902, !3903}
!3902 = !DILocalVariable(name: "n", arg: 1, scope: !3898, file: !458, line: 18, type: !4)
!3903 = !DILocalVariable(name: "prevdigits", scope: !3898, file: !458, line: 22, type: !4)
!3904 = !DILocation(line: 18, column: 6, scope: !3898)
!3905 = !DILocation(line: 0, scope: !3898)
!3906 = !DILocation(line: 20, column: 22, scope: !3898)
!3907 = !DILocation(line: 20, column: 21, scope: !3898)
!3908 = !DILocation(line: 20, column: 14, scope: !3898)
!3909 = !DILocation(line: 28, column: 2, scope: !3898)
!3910 = !DILocation(line: 22, column: 17, scope: !3898)
!3911 = !DILocation(line: 22, column: 19, scope: !3898)
!3912 = !DILocation(line: 22, column: 3, scope: !3898)
!3913 = !DILocation(line: 23, column: 6, scope: !3898)
!3914 = !DILocation(line: 23, column: 17, scope: !3898)
!3915 = !DILocation(line: 24, column: 15, scope: !3898)
!3916 = !DILocation(line: 24, column: 14, scope: !3898)
!3917 = !DILocation(line: 26, column: 17, scope: !3898)
!3918 = !DILocation(line: 26, column: 19, scope: !3898)
!3919 = !DILocation(line: 26, column: 25, scope: !3898)
!3920 = !DILocation(line: 26, column: 10, scope: !3898)
!3921 = distinct !DISubprogram(name: "runtime.printuint16", linkageName: "runtime.printuint16", scope: !458, file: !458, line: 53, type: !3922, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3924)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!90}
!3924 = !{!3925}
!3925 = !DILocalVariable(name: "n", arg: 1, scope: !3921, file: !458, line: 53, type: !90)
!3926 = !DILocation(line: 53, column: 6, scope: !3921)
!3927 = !DILocation(line: 54, column: 21, scope: !3921)
!3928 = !DILocation(line: 54, column: 20, scope: !3921)
!3929 = !DILocation(line: 54, column: 13, scope: !3921)
!3930 = !DILocation(line: 55, column: 2, scope: !3921)
!3931 = distinct !DISubprogram(name: "runtime.printuintptr", linkageName: "runtime.printuintptr", scope: !458, file: !458, line: 42, type: !3208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3932)
!3932 = !{!3933}
!3933 = !DILocalVariable(name: "n", arg: 1, scope: !3931, file: !458, line: 42, type: !43)
!3934 = !DILocation(line: 42, column: 6, scope: !3931)
!3935 = !DILocation(line: 0, scope: !3931)
!3936 = !DILocation(line: 45, column: 22, scope: !3931)
!3937 = !DILocation(line: 45, column: 21, scope: !3931)
!3938 = !DILocation(line: 45, column: 14, scope: !3931)
!3939 = !DILocation(line: 51, column: 2, scope: !3931)
!3940 = !DILocation(line: 47, column: 22, scope: !3931)
!3941 = !DILocation(line: 47, column: 21, scope: !3931)
!3942 = !DILocation(line: 47, column: 14, scope: !3931)
!3943 = !DILocation(line: 49, column: 22, scope: !3931)
!3944 = !DILocation(line: 49, column: 14, scope: !3931)
!3945 = distinct !DISubprogram(name: "runtime.printfloat32", linkageName: "runtime.printfloat32", scope: !458, file: !458, line: 114, type: !3946, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3948)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!3685}
!3948 = !{!3949, !3950, !3951, !3952, !3953, !3955, !3956, !3957}
!3949 = !DILocalVariable(name: "v", arg: 1, scope: !3945, file: !458, line: 114, type: !3685)
!3950 = !DILocalVariable(name: "e", scope: !3945, file: !458, line: 130, type: !1891)
!3951 = !DILocalVariable(name: "i", scope: !3945, file: !458, line: 164, type: !1891)
!3952 = !DILocalVariable(name: "s", scope: !3945, file: !458, line: 165, type: !1891)
!3953 = !DILocalVariable(name: "buf", scope: !3945, file: !458, line: 128, type: !3954)
!3954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 112, align: 8, elements: !113)
!3955 = !DILocalVariable(name: "c", scope: !3945, file: !458, line: 183, type: !533)
!3956 = !DILocalVariable(name: "h", scope: !3945, file: !458, line: 152, type: !3685)
!3957 = !DILocalVariable(name: "i", scope: !3945, file: !458, line: 153, type: !1891)
!3958 = !DILocation(line: 114, column: 6, scope: !3945)
!3959 = !DILocation(line: 116, column: 7, scope: !3945)
!3960 = !DILocation(line: 116, column: 12, scope: !3945)
!3961 = !DILocation(line: 116, column: 9, scope: !3945)
!3962 = !DILocation(line: 0, scope: !3945)
!3963 = !DILocation(line: 117, column: 14, scope: !3945)
!3964 = !DILocation(line: 118, column: 3, scope: !3945)
!3965 = !DILocation(line: 119, column: 7, scope: !3945)
!3966 = !DILocation(line: 119, column: 9, scope: !3945)
!3967 = !DILocation(line: 119, column: 8, scope: !3945)
!3968 = !DILocation(line: 119, column: 14, scope: !3945)
!3969 = !DILocation(line: 119, column: 11, scope: !3945)
!3970 = !DILocation(line: 119, column: 19, scope: !3945)
!3971 = !DILocation(line: 119, column: 21, scope: !3945)
!3972 = !DILocation(line: 119, column: 16, scope: !3945)
!3973 = !DILocation(line: 120, column: 14, scope: !3945)
!3974 = !DILocation(line: 121, column: 3, scope: !3945)
!3975 = !DILocation(line: 122, column: 7, scope: !3945)
!3976 = !DILocation(line: 122, column: 9, scope: !3945)
!3977 = !DILocation(line: 122, column: 8, scope: !3945)
!3978 = !DILocation(line: 122, column: 14, scope: !3945)
!3979 = !DILocation(line: 122, column: 11, scope: !3945)
!3980 = !DILocation(line: 122, column: 19, scope: !3945)
!3981 = !DILocation(line: 122, column: 21, scope: !3945)
!3982 = !DILocation(line: 122, column: 16, scope: !3945)
!3983 = !DILocation(line: 123, column: 14, scope: !3945)
!3984 = !DILocation(line: 124, column: 3, scope: !3945)
!3985 = !DILocation(line: 129, column: 5, scope: !3945)
!3986 = !DILocation(line: 130, column: 2, scope: !3945)
!3987 = !DILocation(line: 131, column: 5, scope: !3945)
!3988 = !DILocation(line: 131, column: 7, scope: !3945)
!3989 = !DILocation(line: 132, column: 8, scope: !3945)
!3990 = !DILocation(line: 132, column: 7, scope: !3945)
!3991 = !DILocation(line: 132, column: 10, scope: !3945)
!3992 = !DILocation(line: 133, column: 7, scope: !3945)
!3993 = !DILocation(line: 114, column: 19, scope: !3945)
!3994 = !DILocation(line: 164, column: 6, scope: !3945)
!3995 = !DILocation(line: 164, column: 14, scope: !3945)
!3996 = !DILocation(line: 164, column: 16, scope: !3945)
!3997 = !DILocation(line: 165, column: 12, scope: !3945)
!3998 = !DILocation(line: 165, column: 11, scope: !3945)
!3999 = !DILocation(line: 165, column: 3, scope: !3945)
!4000 = !DILocation(line: 166, column: 7, scope: !3945)
!4001 = !DILocation(line: 166, column: 8, scope: !3945)
!4002 = !DILocation(line: 166, column: 19, scope: !3945)
!4003 = !DILocation(line: 166, column: 21, scope: !3945)
!4004 = !DILocation(line: 166, column: 18, scope: !3945)
!4005 = !DILocation(line: 166, column: 6, scope: !3945)
!4006 = !DILocation(line: 167, column: 16, scope: !3945)
!4007 = !DILocation(line: 167, column: 15, scope: !3945)
!4008 = !DILocation(line: 167, column: 3, scope: !3945)
!4009 = !DILocation(line: 168, column: 3, scope: !3945)
!4010 = !DILocation(line: 164, column: 21, scope: !3945)
!4011 = !DILocation(line: 170, column: 14, scope: !3945)
!4012 = !DILocation(line: 170, column: 5, scope: !3945)
!4013 = !DILocation(line: 171, column: 5, scope: !3945)
!4014 = !DILocation(line: 173, column: 5, scope: !3945)
!4015 = !DILocation(line: 174, column: 5, scope: !3945)
!4016 = !DILocation(line: 175, column: 5, scope: !3945)
!4017 = !DILocation(line: 175, column: 7, scope: !3945)
!4018 = !DILocation(line: 176, column: 8, scope: !3945)
!4019 = !DILocation(line: 176, column: 7, scope: !3945)
!4020 = !DILocation(line: 176, column: 3, scope: !3945)
!4021 = !DILocation(line: 177, column: 6, scope: !3945)
!4022 = !DILocation(line: 180, column: 18, scope: !3945)
!4023 = !DILocation(line: 180, column: 19, scope: !3945)
!4024 = !DILocation(line: 180, column: 17, scope: !3945)
!4025 = !DILocation(line: 180, column: 25, scope: !3945)
!4026 = !DILocation(line: 180, column: 5, scope: !3945)
!4027 = !DILocation(line: 181, column: 18, scope: !3945)
!4028 = !DILocation(line: 181, column: 19, scope: !3945)
!4029 = !DILocation(line: 181, column: 17, scope: !3945)
!4030 = !DILocation(line: 181, column: 23, scope: !3945)
!4031 = !DILocation(line: 181, column: 27, scope: !3945)
!4032 = !DILocation(line: 181, column: 5, scope: !3945)
!4033 = !DILocation(line: 182, column: 18, scope: !3945)
!4034 = !DILocation(line: 182, column: 19, scope: !3945)
!4035 = !DILocation(line: 182, column: 17, scope: !3945)
!4036 = !DILocation(line: 182, column: 24, scope: !3945)
!4037 = !DILocation(line: 182, column: 5, scope: !3945)
!4038 = !DILocation(line: 183, column: 20, scope: !3945)
!4039 = !DILocation(line: 183, column: 9, scope: !3945)
!4040 = !DILocation(line: 184, column: 11, scope: !3945)
!4041 = !DILocation(line: 184, column: 10, scope: !3945)
!4042 = !DILocation(line: 186, column: 2, scope: !3945)
!4043 = !DILocation(line: 136, column: 6, scope: !3945)
!4044 = !DILocation(line: 136, column: 8, scope: !3945)
!4045 = !DILocation(line: 137, column: 9, scope: !3945)
!4046 = !DILocation(line: 137, column: 8, scope: !3945)
!4047 = !DILocation(line: 137, column: 4, scope: !3945)
!4048 = !DILocation(line: 138, column: 7, scope: !3945)
!4049 = !DILocation(line: 142, column: 7, scope: !3945)
!4050 = !DILocation(line: 142, column: 9, scope: !3945)
!4051 = !DILocation(line: 143, column: 4, scope: !3945)
!4052 = !DILocation(line: 144, column: 4, scope: !3945)
!4053 = !DILocation(line: 146, column: 7, scope: !3945)
!4054 = !DILocation(line: 146, column: 9, scope: !3945)
!4055 = !DILocation(line: 147, column: 4, scope: !3945)
!4056 = !DILocation(line: 148, column: 4, scope: !3945)
!4057 = !DILocation(line: 152, column: 3, scope: !3945)
!4058 = !DILocation(line: 153, column: 7, scope: !3945)
!4059 = !DILocation(line: 153, column: 15, scope: !3945)
!4060 = !DILocation(line: 153, column: 17, scope: !3945)
!4061 = !DILocation(line: 154, column: 4, scope: !3945)
!4062 = !DILocation(line: 153, column: 22, scope: !3945)
!4063 = !DILocation(line: 156, column: 8, scope: !3945)
!4064 = !DILocation(line: 156, column: 3, scope: !3945)
!4065 = !DILocation(line: 157, column: 6, scope: !3945)
!4066 = !DILocation(line: 157, column: 8, scope: !3945)
!4067 = !DILocation(line: 158, column: 4, scope: !3945)
!4068 = !DILocation(line: 159, column: 4, scope: !3945)
!4069 = distinct !DISubprogram(name: "runtime.printfloat64", linkageName: "runtime.printfloat64", scope: !458, file: !458, line: 194, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4070)
!4070 = !{!4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078}
!4071 = !DILocalVariable(name: "v", arg: 1, scope: !4069, file: !458, line: 194, type: !795)
!4072 = !DILocalVariable(name: "e", scope: !4069, file: !458, line: 210, type: !1891)
!4073 = !DILocalVariable(name: "i", scope: !4069, file: !458, line: 244, type: !1891)
!4074 = !DILocalVariable(name: "s", scope: !4069, file: !458, line: 245, type: !1891)
!4075 = !DILocalVariable(name: "buf", scope: !4069, file: !458, line: 208, type: !3954)
!4076 = !DILocalVariable(name: "c", scope: !4069, file: !458, line: 263, type: !533)
!4077 = !DILocalVariable(name: "h", scope: !4069, file: !458, line: 232, type: !795)
!4078 = !DILocalVariable(name: "i", scope: !4069, file: !458, line: 233, type: !1891)
!4079 = !DILocation(line: 194, column: 6, scope: !4069)
!4080 = !DILocation(line: 196, column: 7, scope: !4069)
!4081 = !DILocation(line: 196, column: 12, scope: !4069)
!4082 = !DILocation(line: 196, column: 9, scope: !4069)
!4083 = !DILocation(line: 0, scope: !4069)
!4084 = !DILocation(line: 197, column: 14, scope: !4069)
!4085 = !DILocation(line: 198, column: 3, scope: !4069)
!4086 = !DILocation(line: 199, column: 7, scope: !4069)
!4087 = !DILocation(line: 199, column: 9, scope: !4069)
!4088 = !DILocation(line: 199, column: 8, scope: !4069)
!4089 = !DILocation(line: 199, column: 14, scope: !4069)
!4090 = !DILocation(line: 199, column: 11, scope: !4069)
!4091 = !DILocation(line: 199, column: 19, scope: !4069)
!4092 = !DILocation(line: 199, column: 21, scope: !4069)
!4093 = !DILocation(line: 199, column: 16, scope: !4069)
!4094 = !DILocation(line: 200, column: 14, scope: !4069)
!4095 = !DILocation(line: 201, column: 3, scope: !4069)
!4096 = !DILocation(line: 202, column: 7, scope: !4069)
!4097 = !DILocation(line: 202, column: 9, scope: !4069)
!4098 = !DILocation(line: 202, column: 8, scope: !4069)
!4099 = !DILocation(line: 202, column: 14, scope: !4069)
!4100 = !DILocation(line: 202, column: 11, scope: !4069)
!4101 = !DILocation(line: 202, column: 19, scope: !4069)
!4102 = !DILocation(line: 202, column: 21, scope: !4069)
!4103 = !DILocation(line: 202, column: 16, scope: !4069)
!4104 = !DILocation(line: 203, column: 14, scope: !4069)
!4105 = !DILocation(line: 204, column: 3, scope: !4069)
!4106 = !DILocation(line: 209, column: 5, scope: !4069)
!4107 = !DILocation(line: 210, column: 2, scope: !4069)
!4108 = !DILocation(line: 211, column: 5, scope: !4069)
!4109 = !DILocation(line: 211, column: 7, scope: !4069)
!4110 = !DILocation(line: 212, column: 8, scope: !4069)
!4111 = !DILocation(line: 212, column: 7, scope: !4069)
!4112 = !DILocation(line: 212, column: 10, scope: !4069)
!4113 = !DILocation(line: 213, column: 7, scope: !4069)
!4114 = !DILocation(line: 194, column: 19, scope: !4069)
!4115 = !DILocation(line: 244, column: 6, scope: !4069)
!4116 = !DILocation(line: 244, column: 14, scope: !4069)
!4117 = !DILocation(line: 244, column: 16, scope: !4069)
!4118 = !DILocation(line: 245, column: 12, scope: !4069)
!4119 = !DILocation(line: 245, column: 11, scope: !4069)
!4120 = !DILocation(line: 245, column: 3, scope: !4069)
!4121 = !DILocation(line: 246, column: 7, scope: !4069)
!4122 = !DILocation(line: 246, column: 8, scope: !4069)
!4123 = !DILocation(line: 246, column: 19, scope: !4069)
!4124 = !DILocation(line: 246, column: 21, scope: !4069)
!4125 = !DILocation(line: 246, column: 18, scope: !4069)
!4126 = !DILocation(line: 246, column: 6, scope: !4069)
!4127 = !DILocation(line: 247, column: 16, scope: !4069)
!4128 = !DILocation(line: 247, column: 15, scope: !4069)
!4129 = !DILocation(line: 247, column: 3, scope: !4069)
!4130 = !DILocation(line: 248, column: 3, scope: !4069)
!4131 = !DILocation(line: 244, column: 21, scope: !4069)
!4132 = !DILocation(line: 250, column: 14, scope: !4069)
!4133 = !DILocation(line: 250, column: 5, scope: !4069)
!4134 = !DILocation(line: 251, column: 5, scope: !4069)
!4135 = !DILocation(line: 253, column: 5, scope: !4069)
!4136 = !DILocation(line: 254, column: 5, scope: !4069)
!4137 = !DILocation(line: 255, column: 5, scope: !4069)
!4138 = !DILocation(line: 255, column: 7, scope: !4069)
!4139 = !DILocation(line: 256, column: 8, scope: !4069)
!4140 = !DILocation(line: 256, column: 7, scope: !4069)
!4141 = !DILocation(line: 256, column: 3, scope: !4069)
!4142 = !DILocation(line: 257, column: 6, scope: !4069)
!4143 = !DILocation(line: 260, column: 18, scope: !4069)
!4144 = !DILocation(line: 260, column: 19, scope: !4069)
!4145 = !DILocation(line: 260, column: 17, scope: !4069)
!4146 = !DILocation(line: 260, column: 25, scope: !4069)
!4147 = !DILocation(line: 260, column: 5, scope: !4069)
!4148 = !DILocation(line: 261, column: 18, scope: !4069)
!4149 = !DILocation(line: 261, column: 19, scope: !4069)
!4150 = !DILocation(line: 261, column: 17, scope: !4069)
!4151 = !DILocation(line: 261, column: 23, scope: !4069)
!4152 = !DILocation(line: 261, column: 27, scope: !4069)
!4153 = !DILocation(line: 261, column: 5, scope: !4069)
!4154 = !DILocation(line: 262, column: 18, scope: !4069)
!4155 = !DILocation(line: 262, column: 19, scope: !4069)
!4156 = !DILocation(line: 262, column: 17, scope: !4069)
!4157 = !DILocation(line: 262, column: 24, scope: !4069)
!4158 = !DILocation(line: 262, column: 5, scope: !4069)
!4159 = !DILocation(line: 263, column: 20, scope: !4069)
!4160 = !DILocation(line: 263, column: 9, scope: !4069)
!4161 = !DILocation(line: 264, column: 11, scope: !4069)
!4162 = !DILocation(line: 264, column: 10, scope: !4069)
!4163 = !DILocation(line: 266, column: 2, scope: !4069)
!4164 = !DILocation(line: 216, column: 6, scope: !4069)
!4165 = !DILocation(line: 216, column: 8, scope: !4069)
!4166 = !DILocation(line: 217, column: 9, scope: !4069)
!4167 = !DILocation(line: 217, column: 8, scope: !4069)
!4168 = !DILocation(line: 217, column: 4, scope: !4069)
!4169 = !DILocation(line: 218, column: 7, scope: !4069)
!4170 = !DILocation(line: 222, column: 7, scope: !4069)
!4171 = !DILocation(line: 222, column: 9, scope: !4069)
!4172 = !DILocation(line: 223, column: 4, scope: !4069)
!4173 = !DILocation(line: 224, column: 4, scope: !4069)
!4174 = !DILocation(line: 226, column: 7, scope: !4069)
!4175 = !DILocation(line: 226, column: 9, scope: !4069)
!4176 = !DILocation(line: 227, column: 4, scope: !4069)
!4177 = !DILocation(line: 228, column: 4, scope: !4069)
!4178 = !DILocation(line: 232, column: 3, scope: !4069)
!4179 = !DILocation(line: 233, column: 7, scope: !4069)
!4180 = !DILocation(line: 233, column: 15, scope: !4069)
!4181 = !DILocation(line: 233, column: 17, scope: !4069)
!4182 = !DILocation(line: 234, column: 4, scope: !4069)
!4183 = !DILocation(line: 233, column: 22, scope: !4069)
!4184 = !DILocation(line: 236, column: 8, scope: !4069)
!4185 = !DILocation(line: 236, column: 3, scope: !4069)
!4186 = !DILocation(line: 237, column: 6, scope: !4069)
!4187 = !DILocation(line: 237, column: 8, scope: !4069)
!4188 = !DILocation(line: 238, column: 4, scope: !4069)
!4189 = !DILocation(line: 239, column: 4, scope: !4069)
!4190 = distinct !DISubprogram(name: "runtime.printcomplex64", linkageName: "runtime.printcomplex64", scope: !458, file: !458, line: 268, type: !4191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4193)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!3688}
!4193 = !{!4194}
!4194 = !DILocalVariable(name: "c", arg: 1, scope: !4190, file: !458, line: 268, type: !3688)
!4195 = !DILocation(line: 268, column: 6, scope: !4190)
!4196 = !DILocation(line: 269, column: 9, scope: !4190)
!4197 = !DILocation(line: 270, column: 20, scope: !4190)
!4198 = !DILocation(line: 270, column: 19, scope: !4190)
!4199 = !DILocation(line: 270, column: 14, scope: !4190)
!4200 = !DILocation(line: 271, column: 20, scope: !4190)
!4201 = !DILocation(line: 271, column: 19, scope: !4190)
!4202 = !DILocation(line: 271, column: 14, scope: !4190)
!4203 = !DILocation(line: 272, column: 13, scope: !4190)
!4204 = !DILocation(line: 273, column: 2, scope: !4190)
!4205 = distinct !DISubprogram(name: "runtime.printcomplex128", linkageName: "runtime.printcomplex128", scope: !458, file: !458, line: 275, type: !4206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4208)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!3690}
!4208 = !{!4209}
!4209 = !DILocalVariable(name: "c", arg: 1, scope: !4205, file: !458, line: 275, type: !3690)
!4210 = !DILocation(line: 275, column: 6, scope: !4205)
!4211 = !DILocation(line: 276, column: 9, scope: !4205)
!4212 = !DILocation(line: 277, column: 20, scope: !4205)
!4213 = !DILocation(line: 277, column: 19, scope: !4205)
!4214 = !DILocation(line: 277, column: 14, scope: !4205)
!4215 = !DILocation(line: 278, column: 20, scope: !4205)
!4216 = !DILocation(line: 278, column: 19, scope: !4205)
!4217 = !DILocation(line: 278, column: 14, scope: !4205)
!4218 = !DILocation(line: 279, column: 13, scope: !4205)
!4219 = !DILocation(line: 280, column: 2, scope: !4205)
!4220 = distinct !DISubprogram(name: "runtime._panic", linkageName: "runtime._panic", scope: !428, file: !428, line: 54, type: !3667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4221)
!4221 = !{!4222}
!4222 = !DILocalVariable(name: "message", arg: 1, scope: !4220, file: !428, line: 54, type: !778)
!4223 = !DILocation(line: 54, column: 6, scope: !4220)
!4224 = !DILocation(line: 55, column: 16, scope: !4220)
!4225 = !DILocation(line: 55, column: 15, scope: !4220)
!4226 = !DILocation(line: 56, column: 2, scope: !4220)
!4227 = distinct !DISubprogram(name: "runtime.stringEqual", linkageName: "runtime.stringEqual", scope: !4228, file: !4228, line: 24, type: !4229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4231)
!4228 = !DIFile(filename: "string.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!38, !38}
!4231 = !{!4232, !4233, !4234}
!4232 = !DILocalVariable(name: "x", arg: 1, scope: !4227, file: !4228, line: 24, type: !38)
!4233 = !DILocalVariable(name: "y", arg: 2, scope: !4227, file: !4228, line: 24, type: !38)
!4234 = !DILocalVariable(name: "i", scope: !4227, file: !4228, line: 28, type: !1891)
!4235 = !DILocation(line: 24, column: 6, scope: !4227)
!4236 = !DILocation(line: 25, column: 9, scope: !4227)
!4237 = !DILocation(line: 25, column: 8, scope: !4227)
!4238 = !DILocation(line: 25, column: 19, scope: !4227)
!4239 = !DILocation(line: 25, column: 18, scope: !4227)
!4240 = !DILocation(line: 25, column: 12, scope: !4227)
!4241 = !DILocation(line: 0, scope: !4227)
!4242 = !DILocation(line: 26, column: 3, scope: !4227)
!4243 = !DILocation(line: 28, column: 6, scope: !4227)
!4244 = !DILocation(line: 28, column: 14, scope: !4227)
!4245 = !DILocation(line: 28, column: 22, scope: !4227)
!4246 = !DILocation(line: 28, column: 21, scope: !4227)
!4247 = !DILocation(line: 28, column: 16, scope: !4227)
!4248 = !DILocation(line: 29, column: 8, scope: !4227)
!4249 = !DILocation(line: 29, column: 6, scope: !4227)
!4250 = !DILocation(line: 29, column: 7, scope: !4227)
!4251 = !DILocation(line: 29, column: 16, scope: !4227)
!4252 = !DILocation(line: 29, column: 14, scope: !4227)
!4253 = !DILocation(line: 29, column: 15, scope: !4227)
!4254 = !DILocation(line: 29, column: 11, scope: !4227)
!4255 = !DILocation(line: 30, column: 4, scope: !4227)
!4256 = !DILocation(line: 28, column: 26, scope: !4227)
!4257 = !DILocation(line: 33, column: 2, scope: !4227)
!4258 = distinct !DISubprogram(name: "runtime.slicePanic", linkageName: "runtime.slicePanic", scope: !428, file: !428, line: 198, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4259 = !DILocation(line: 199, column: 30, scope: !4258)
!4260 = !DILocation(line: 199, column: 16, scope: !4258)
!4261 = !DILocation(line: 200, column: 2, scope: !4258)
!4262 = distinct !DISubprogram(name: "runtime.fminimum", linkageName: "fminimum", scope: !1560, file: !1560, line: 60, type: !4263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4265)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!795, !795}
!4265 = !{!4266, !4267}
!4266 = !DILocalVariable(name: "x", arg: 1, scope: !4262, file: !1560, line: 60, type: !795)
!4267 = !DILocalVariable(name: "y", arg: 2, scope: !4262, file: !1560, line: 60, type: !795)
!4268 = !DILocation(line: 60, column: 6, scope: !4262)
!4269 = !DILocation(line: 61, column: 24, scope: !4262)
!4270 = !DILocation(line: 61, column: 27, scope: !4262)
!4271 = !DILocation(line: 61, column: 23, scope: !4262)
!4272 = !DILocation(line: 61, column: 2, scope: !4262)
!4273 = distinct !DISubprogram(name: "runtime.minimumFloat64", linkageName: "runtime.minimumFloat64", scope: !1560, file: !1560, line: 87, type: !4263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4274)
!4274 = !{!4275, !4276}
!4275 = !DILocalVariable(name: "x", arg: 1, scope: !4273, file: !1560, line: 87, type: !795)
!4276 = !DILocalVariable(name: "y", arg: 2, scope: !4273, file: !1560, line: 87, type: !795)
!4277 = !DILocation(line: 87, column: 6, scope: !4273)
!4278 = !DILocation(line: 88, column: 38, scope: !4273)
!4279 = !DILocation(line: 88, column: 41, scope: !4273)
!4280 = !DILocation(line: 88, column: 37, scope: !4273)
!4281 = !DILocation(line: 88, column: 2, scope: !4273)
!4282 = distinct !DISubprogram(name: "runtime.minimumFloat[float64 int64]", linkageName: "runtime.minimumFloat[float64 int64]", scope: !1560, file: !1560, line: 101, type: !4283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4285)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!795, !795, !1699, !1699}
!4285 = !{!4286, !4287, !4288, !4289, !4290, !4291}
!4286 = !DILocalVariable(name: "x", arg: 1, scope: !4282, file: !1560, line: 101, type: !795)
!4287 = !DILocalVariable(name: "y", arg: 2, scope: !4282, file: !1560, line: 101, type: !795)
!4288 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4282, file: !1560, line: 101, type: !1699)
!4289 = !DILocalVariable(name: "magMask", arg: 4, scope: !4282, file: !1560, line: 101, type: !1699)
!4290 = !DILocalVariable(name: "xBits", scope: !4282, file: !1560, line: 102, type: !778)
!4291 = !DILocalVariable(name: "yBits", scope: !4282, file: !1560, line: 103, type: !778)
!4292 = !DILocation(line: 101, column: 6, scope: !4282)
!4293 = !DILocation(line: 101, column: 40, scope: !4282)
!4294 = !DILocation(line: 101, column: 43, scope: !4282)
!4295 = !DILocation(line: 102, column: 11, scope: !4282)
!4296 = !DILocation(line: 102, column: 2, scope: !4282)
!4297 = !DILocation(line: 103, column: 11, scope: !4282)
!4298 = !DILocation(line: 103, column: 2, scope: !4282)
!4299 = !DILocation(line: 107, column: 7, scope: !4282)
!4300 = !DILocation(line: 107, column: 16, scope: !4282)
!4301 = !DILocation(line: 107, column: 13, scope: !4282)
!4302 = !DILocation(line: 0, scope: !4282)
!4303 = !DILocation(line: 108, column: 10, scope: !4282)
!4304 = !DILocation(line: 108, column: 3, scope: !4282)
!4305 = !DILocation(line: 109, column: 7, scope: !4282)
!4306 = !DILocation(line: 109, column: 16, scope: !4282)
!4307 = !DILocation(line: 109, column: 13, scope: !4282)
!4308 = !DILocation(line: 110, column: 10, scope: !4282)
!4309 = !DILocation(line: 110, column: 3, scope: !4282)
!4310 = !DILocation(line: 118, column: 5, scope: !4282)
!4311 = !DILocation(line: 118, column: 11, scope: !4282)
!4312 = !DILocation(line: 119, column: 12, scope: !4282)
!4313 = !DILocation(line: 119, column: 3, scope: !4282)
!4314 = !DILocation(line: 121, column: 5, scope: !4282)
!4315 = !DILocation(line: 121, column: 11, scope: !4282)
!4316 = !DILocation(line: 122, column: 12, scope: !4282)
!4317 = !DILocation(line: 122, column: 3, scope: !4282)
!4318 = !DILocation(line: 124, column: 5, scope: !4282)
!4319 = !DILocation(line: 124, column: 14, scope: !4282)
!4320 = !DILocation(line: 124, column: 11, scope: !4282)
!4321 = !DILocation(line: 125, column: 10, scope: !4282)
!4322 = !DILocation(line: 125, column: 3, scope: !4282)
!4323 = !DILocation(line: 127, column: 10, scope: !4282)
!4324 = !DILocation(line: 127, column: 3, scope: !4282)
!4325 = distinct !DISubprogram(name: "runtime.fminimumf", linkageName: "fminimumf", scope: !1560, file: !1560, line: 65, type: !4326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4328)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!3685, !3685}
!4328 = !{!4329, !4330}
!4329 = !DILocalVariable(name: "x", arg: 1, scope: !4325, file: !1560, line: 65, type: !3685)
!4330 = !DILocalVariable(name: "y", arg: 2, scope: !4325, file: !1560, line: 65, type: !3685)
!4331 = !DILocation(line: 65, column: 6, scope: !4325)
!4332 = !DILocation(line: 66, column: 24, scope: !4325)
!4333 = !DILocation(line: 66, column: 27, scope: !4325)
!4334 = !DILocation(line: 66, column: 23, scope: !4325)
!4335 = !DILocation(line: 66, column: 2, scope: !4325)
!4336 = distinct !DISubprogram(name: "runtime.minimumFloat32", linkageName: "runtime.minimumFloat32", scope: !1560, file: !1560, line: 83, type: !4326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4337)
!4337 = !{!4338, !4339}
!4338 = !DILocalVariable(name: "x", arg: 1, scope: !4336, file: !1560, line: 83, type: !3685)
!4339 = !DILocalVariable(name: "y", arg: 2, scope: !4336, file: !1560, line: 83, type: !3685)
!4340 = !DILocation(line: 83, column: 6, scope: !4336)
!4341 = !DILocation(line: 84, column: 38, scope: !4336)
!4342 = !DILocation(line: 84, column: 41, scope: !4336)
!4343 = !DILocation(line: 84, column: 37, scope: !4336)
!4344 = !DILocation(line: 84, column: 2, scope: !4336)
!4345 = distinct !DISubprogram(name: "runtime.minimumFloat[float32 int32]", linkageName: "runtime.minimumFloat[float32 int32]", scope: !1560, file: !1560, line: 101, type: !4346, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4348)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!3685, !3685, !381, !381}
!4348 = !{!4349, !4350, !4351, !4352, !4353, !4354}
!4349 = !DILocalVariable(name: "x", arg: 1, scope: !4345, file: !1560, line: 101, type: !3685)
!4350 = !DILocalVariable(name: "y", arg: 2, scope: !4345, file: !1560, line: 101, type: !3685)
!4351 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4345, file: !1560, line: 101, type: !381)
!4352 = !DILocalVariable(name: "magMask", arg: 4, scope: !4345, file: !1560, line: 101, type: !381)
!4353 = !DILocalVariable(name: "xBits", scope: !4345, file: !1560, line: 102, type: !778)
!4354 = !DILocalVariable(name: "yBits", scope: !4345, file: !1560, line: 103, type: !778)
!4355 = !DILocation(line: 101, column: 6, scope: !4345)
!4356 = !DILocation(line: 101, column: 40, scope: !4345)
!4357 = !DILocation(line: 101, column: 43, scope: !4345)
!4358 = !DILocation(line: 102, column: 11, scope: !4345)
!4359 = !DILocation(line: 102, column: 2, scope: !4345)
!4360 = !DILocation(line: 103, column: 11, scope: !4345)
!4361 = !DILocation(line: 103, column: 2, scope: !4345)
!4362 = !DILocation(line: 107, column: 7, scope: !4345)
!4363 = !DILocation(line: 107, column: 16, scope: !4345)
!4364 = !DILocation(line: 107, column: 13, scope: !4345)
!4365 = !DILocation(line: 0, scope: !4345)
!4366 = !DILocation(line: 108, column: 10, scope: !4345)
!4367 = !DILocation(line: 108, column: 3, scope: !4345)
!4368 = !DILocation(line: 109, column: 7, scope: !4345)
!4369 = !DILocation(line: 109, column: 16, scope: !4345)
!4370 = !DILocation(line: 109, column: 13, scope: !4345)
!4371 = !DILocation(line: 110, column: 10, scope: !4345)
!4372 = !DILocation(line: 110, column: 3, scope: !4345)
!4373 = !DILocation(line: 118, column: 5, scope: !4345)
!4374 = !DILocation(line: 118, column: 11, scope: !4345)
!4375 = !DILocation(line: 119, column: 12, scope: !4345)
!4376 = !DILocation(line: 119, column: 3, scope: !4345)
!4377 = !DILocation(line: 121, column: 5, scope: !4345)
!4378 = !DILocation(line: 121, column: 11, scope: !4345)
!4379 = !DILocation(line: 122, column: 12, scope: !4345)
!4380 = !DILocation(line: 122, column: 3, scope: !4345)
!4381 = !DILocation(line: 124, column: 5, scope: !4345)
!4382 = !DILocation(line: 124, column: 14, scope: !4345)
!4383 = !DILocation(line: 124, column: 11, scope: !4345)
!4384 = !DILocation(line: 125, column: 10, scope: !4345)
!4385 = !DILocation(line: 125, column: 3, scope: !4345)
!4386 = !DILocation(line: 127, column: 10, scope: !4345)
!4387 = !DILocation(line: 127, column: 3, scope: !4345)
!4388 = distinct !DISubprogram(name: "runtime.fmaximum", linkageName: "fmaximum", scope: !1560, file: !1560, line: 70, type: !4263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4389)
!4389 = !{!4390, !4391}
!4390 = !DILocalVariable(name: "x", arg: 1, scope: !4388, file: !1560, line: 70, type: !795)
!4391 = !DILocalVariable(name: "y", arg: 2, scope: !4388, file: !1560, line: 70, type: !795)
!4392 = !DILocation(line: 70, column: 6, scope: !4388)
!4393 = !DILocation(line: 71, column: 24, scope: !4388)
!4394 = !DILocation(line: 71, column: 27, scope: !4388)
!4395 = !DILocation(line: 71, column: 23, scope: !4388)
!4396 = !DILocation(line: 71, column: 2, scope: !4388)
!4397 = distinct !DISubprogram(name: "runtime.maximumFloat64", linkageName: "runtime.maximumFloat64", scope: !1560, file: !1560, line: 95, type: !4263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4398)
!4398 = !{!4399, !4400}
!4399 = !DILocalVariable(name: "x", arg: 1, scope: !4397, file: !1560, line: 95, type: !795)
!4400 = !DILocalVariable(name: "y", arg: 2, scope: !4397, file: !1560, line: 95, type: !795)
!4401 = !DILocation(line: 95, column: 6, scope: !4397)
!4402 = !DILocation(line: 96, column: 38, scope: !4397)
!4403 = !DILocation(line: 96, column: 41, scope: !4397)
!4404 = !DILocation(line: 96, column: 37, scope: !4397)
!4405 = !DILocation(line: 96, column: 2, scope: !4397)
!4406 = distinct !DISubprogram(name: "runtime.maximumFloat[float64 int64]", linkageName: "runtime.maximumFloat[float64 int64]", scope: !1560, file: !1560, line: 133, type: !4283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4407)
!4407 = !{!4408, !4409, !4410, !4411, !4412, !4413, !4414}
!4408 = !DILocalVariable(name: "x", arg: 1, scope: !4406, file: !1560, line: 133, type: !795)
!4409 = !DILocalVariable(name: "y", arg: 2, scope: !4406, file: !1560, line: 133, type: !795)
!4410 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4406, file: !1560, line: 133, type: !1699)
!4411 = !DILocalVariable(name: "magMask", arg: 4, scope: !4406, file: !1560, line: 133, type: !1699)
!4412 = !DILocalVariable(name: "xBits", scope: !4406, file: !1560, line: 134, type: !778)
!4413 = !DILocalVariable(name: "yBits", scope: !4406, file: !1560, line: 135, type: !778)
!4414 = !DILocalVariable(name: "maxNegNaN", scope: !4406, file: !1560, line: 149, type: !778)
!4415 = !DILocation(line: 133, column: 6, scope: !4406)
!4416 = !DILocation(line: 133, column: 40, scope: !4406)
!4417 = !DILocation(line: 133, column: 43, scope: !4406)
!4418 = !DILocation(line: 134, column: 11, scope: !4406)
!4419 = !DILocation(line: 134, column: 2, scope: !4406)
!4420 = !DILocation(line: 135, column: 11, scope: !4406)
!4421 = !DILocation(line: 135, column: 2, scope: !4406)
!4422 = !DILocation(line: 142, column: 5, scope: !4406)
!4423 = !DILocation(line: 142, column: 11, scope: !4406)
!4424 = !DILocation(line: 0, scope: !4406)
!4425 = !DILocation(line: 143, column: 12, scope: !4406)
!4426 = !DILocation(line: 143, column: 3, scope: !4406)
!4427 = !DILocation(line: 145, column: 5, scope: !4406)
!4428 = !DILocation(line: 145, column: 11, scope: !4406)
!4429 = !DILocation(line: 146, column: 12, scope: !4406)
!4430 = !DILocation(line: 146, column: 3, scope: !4406)
!4431 = !DILocation(line: 149, column: 16, scope: !4406)
!4432 = !DILocation(line: 149, column: 15, scope: !4406)
!4433 = !DILocation(line: 149, column: 2, scope: !4406)
!4434 = !DILocation(line: 151, column: 7, scope: !4406)
!4435 = !DILocation(line: 151, column: 16, scope: !4406)
!4436 = !DILocation(line: 151, column: 13, scope: !4406)
!4437 = !DILocation(line: 152, column: 10, scope: !4406)
!4438 = !DILocation(line: 152, column: 3, scope: !4406)
!4439 = !DILocation(line: 153, column: 7, scope: !4406)
!4440 = !DILocation(line: 153, column: 16, scope: !4406)
!4441 = !DILocation(line: 153, column: 13, scope: !4406)
!4442 = !DILocation(line: 154, column: 10, scope: !4406)
!4443 = !DILocation(line: 154, column: 3, scope: !4406)
!4444 = !DILocation(line: 156, column: 5, scope: !4406)
!4445 = !DILocation(line: 156, column: 14, scope: !4406)
!4446 = !DILocation(line: 156, column: 11, scope: !4406)
!4447 = !DILocation(line: 157, column: 10, scope: !4406)
!4448 = !DILocation(line: 157, column: 3, scope: !4406)
!4449 = !DILocation(line: 159, column: 10, scope: !4406)
!4450 = !DILocation(line: 159, column: 3, scope: !4406)
!4451 = distinct !DISubprogram(name: "runtime.fmaximumf", linkageName: "fmaximumf", scope: !1560, file: !1560, line: 75, type: !4326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4452)
!4452 = !{!4453, !4454}
!4453 = !DILocalVariable(name: "x", arg: 1, scope: !4451, file: !1560, line: 75, type: !3685)
!4454 = !DILocalVariable(name: "y", arg: 2, scope: !4451, file: !1560, line: 75, type: !3685)
!4455 = !DILocation(line: 75, column: 6, scope: !4451)
!4456 = !DILocation(line: 76, column: 24, scope: !4451)
!4457 = !DILocation(line: 76, column: 27, scope: !4451)
!4458 = !DILocation(line: 76, column: 23, scope: !4451)
!4459 = !DILocation(line: 76, column: 2, scope: !4451)
!4460 = distinct !DISubprogram(name: "runtime.maximumFloat32", linkageName: "runtime.maximumFloat32", scope: !1560, file: !1560, line: 91, type: !4326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4461)
!4461 = !{!4462, !4463}
!4462 = !DILocalVariable(name: "x", arg: 1, scope: !4460, file: !1560, line: 91, type: !3685)
!4463 = !DILocalVariable(name: "y", arg: 2, scope: !4460, file: !1560, line: 91, type: !3685)
!4464 = !DILocation(line: 91, column: 6, scope: !4460)
!4465 = !DILocation(line: 92, column: 38, scope: !4460)
!4466 = !DILocation(line: 92, column: 41, scope: !4460)
!4467 = !DILocation(line: 92, column: 37, scope: !4460)
!4468 = !DILocation(line: 92, column: 2, scope: !4460)
!4469 = distinct !DISubprogram(name: "runtime.maximumFloat[float32 int32]", linkageName: "runtime.maximumFloat[float32 int32]", scope: !1560, file: !1560, line: 133, type: !4346, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4470)
!4470 = !{!4471, !4472, !4473, !4474, !4475, !4476, !4477}
!4471 = !DILocalVariable(name: "x", arg: 1, scope: !4469, file: !1560, line: 133, type: !3685)
!4472 = !DILocalVariable(name: "y", arg: 2, scope: !4469, file: !1560, line: 133, type: !3685)
!4473 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4469, file: !1560, line: 133, type: !381)
!4474 = !DILocalVariable(name: "magMask", arg: 4, scope: !4469, file: !1560, line: 133, type: !381)
!4475 = !DILocalVariable(name: "xBits", scope: !4469, file: !1560, line: 134, type: !778)
!4476 = !DILocalVariable(name: "yBits", scope: !4469, file: !1560, line: 135, type: !778)
!4477 = !DILocalVariable(name: "maxNegNaN", scope: !4469, file: !1560, line: 149, type: !778)
!4478 = !DILocation(line: 133, column: 6, scope: !4469)
!4479 = !DILocation(line: 133, column: 40, scope: !4469)
!4480 = !DILocation(line: 133, column: 43, scope: !4469)
!4481 = !DILocation(line: 134, column: 11, scope: !4469)
!4482 = !DILocation(line: 134, column: 2, scope: !4469)
!4483 = !DILocation(line: 135, column: 11, scope: !4469)
!4484 = !DILocation(line: 135, column: 2, scope: !4469)
!4485 = !DILocation(line: 142, column: 5, scope: !4469)
!4486 = !DILocation(line: 142, column: 11, scope: !4469)
!4487 = !DILocation(line: 0, scope: !4469)
!4488 = !DILocation(line: 143, column: 12, scope: !4469)
!4489 = !DILocation(line: 143, column: 3, scope: !4469)
!4490 = !DILocation(line: 145, column: 5, scope: !4469)
!4491 = !DILocation(line: 145, column: 11, scope: !4469)
!4492 = !DILocation(line: 146, column: 12, scope: !4469)
!4493 = !DILocation(line: 146, column: 3, scope: !4469)
!4494 = !DILocation(line: 149, column: 16, scope: !4469)
!4495 = !DILocation(line: 149, column: 15, scope: !4469)
!4496 = !DILocation(line: 149, column: 2, scope: !4469)
!4497 = !DILocation(line: 151, column: 7, scope: !4469)
!4498 = !DILocation(line: 151, column: 16, scope: !4469)
!4499 = !DILocation(line: 151, column: 13, scope: !4469)
!4500 = !DILocation(line: 152, column: 10, scope: !4469)
!4501 = !DILocation(line: 152, column: 3, scope: !4469)
!4502 = !DILocation(line: 153, column: 7, scope: !4469)
!4503 = !DILocation(line: 153, column: 16, scope: !4469)
!4504 = !DILocation(line: 153, column: 13, scope: !4469)
!4505 = !DILocation(line: 154, column: 10, scope: !4469)
!4506 = !DILocation(line: 154, column: 3, scope: !4469)
!4507 = !DILocation(line: 156, column: 5, scope: !4469)
!4508 = !DILocation(line: 156, column: 14, scope: !4469)
!4509 = !DILocation(line: 156, column: 11, scope: !4469)
!4510 = !DILocation(line: 157, column: 10, scope: !4469)
!4511 = !DILocation(line: 157, column: 3, scope: !4469)
!4512 = !DILocation(line: 159, column: 10, scope: !4469)
!4513 = !DILocation(line: 159, column: 3, scope: !4469)
!4514 = distinct !DISubprogram(name: "runtime.initHeap", linkageName: "runtime.initHeap", scope: !421, file: !421, line: 34, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4515 = !DILocation(line: 35, column: 12, scope: !4514)
!4516 = !DILocation(line: 39, column: 8, scope: !4514)
!4517 = !DILocation(line: 40, column: 2, scope: !4514)
!4518 = distinct !DISubprogram(name: "runtime.gcCallback", linkageName: "tinygo_runtime_bdwgc_callback", scope: !421, file: !421, line: 46, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4519 = !DILocation(line: 48, column: 17, scope: !4518)
!4520 = !DILocation(line: 49, column: 2, scope: !4518)
!4521 = distinct !DISubprogram(name: "runtime.gcMarkReachable", linkageName: "runtime.gcMarkReachable", scope: !3468, file: !3468, line: 7, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4522 = !DILocation(line: 8, column: 25, scope: !4521)
!4523 = !DILocation(line: 9, column: 2, scope: !4521)
!4524 = distinct !DISubprogram(name: "runtime.markRoots", linkageName: "runtime.markRoots", scope: !421, file: !421, line: 51, type: !4525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4527)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!43, !43}
!4527 = !{!4528, !4529}
!4528 = !DILocalVariable(name: "start", arg: 1, scope: !4524, file: !421, line: 51, type: !43)
!4529 = !DILocalVariable(name: "end", arg: 2, scope: !4524, file: !421, line: 51, type: !43)
!4530 = !DILocation(line: 51, column: 6, scope: !4524)
!4531 = !DILocation(line: 52, column: 17, scope: !4524)
!4532 = !DILocation(line: 52, column: 24, scope: !4524)
!4533 = !DILocation(line: 52, column: 16, scope: !4524)
!4534 = !DILocation(line: 53, column: 2, scope: !4524)
!4535 = distinct !DISubprogram(name: "runtime.free", linkageName: "runtime.free", scope: !421, file: !421, line: 99, type: !2714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4536)
!4536 = !{!4537}
!4537 = !DILocalVariable(name: "ptr", arg: 1, scope: !4535, file: !421, line: 99, type: !84)
!4538 = !DILocation(line: 99, column: 6, scope: !4535)
!4539 = !DILocation(line: 100, column: 13, scope: !4535)
!4540 = !DILocation(line: 100, column: 12, scope: !4535)
!4541 = !DILocation(line: 101, column: 2, scope: !4535)
!4542 = distinct !DISubprogram(name: "runtime.gcScanGlobals", linkageName: "internal/task.gcScanGlobals", scope: !3468, file: !3468, line: 15, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4543 = !DILocation(line: 16, column: 13, scope: !4542)
!4544 = !DILocation(line: 17, column: 2, scope: !4542)
!4545 = distinct !DISubprogram(name: "runtime.findGlobals", linkageName: "runtime.findGlobals", scope: !3581, file: !3581, line: 95, type: !4546, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4548)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!655}
!4548 = !{!4549, !4550, !4551, !4552, !4565, !4566, !4567, !4574, !4575}
!4549 = !DILocalVariable(name: "found", arg: 1, scope: !4545, file: !3581, line: 95, type: !655)
!4550 = !DILocalVariable(name: "headerPtr", scope: !4545, file: !3581, line: 103, type: !84)
!4551 = !DILocalVariable(name: "i", scope: !4545, file: !3581, line: 104, type: !1891)
!4552 = !DILocalVariable(name: "header", scope: !4545, file: !3581, line: 111, type: !4553)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64, align: 64, dwarfAddressSpace: 0)
!4554 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader64", baseType: !4555)
!4555 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !4556)
!4556 = !{!4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_type", baseType: !98, size: 32, align: 32)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !98, size: 32, align: 32, offset: 32)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "offset", baseType: !43, size: 64, align: 64, offset: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", baseType: !43, size: 64, align: 64, offset: 128)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", baseType: !43, size: 64, align: 64, offset: 192)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "filesz", baseType: !43, size: 64, align: 64, offset: 256)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", baseType: !43, size: 64, align: 64, offset: 320)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !43, size: 64, align: 64, offset: 384)
!4565 = !DILocalVariable(name: "start", scope: !4545, file: !3581, line: 113, type: !43)
!4566 = !DILocalVariable(name: "end", scope: !4545, file: !3581, line: 114, type: !43)
!4567 = !DILocalVariable(name: "header", scope: !4545, file: !3581, line: 118, type: !4568)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64, align: 64, dwarfAddressSpace: 0)
!4569 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader32", baseType: !4570)
!4570 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !4571)
!4571 = !{!4557, !4559, !4560, !4561, !4562, !4563, !4572, !4573}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !98, size: 32, align: 32, offset: 384)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !43, size: 64, align: 64, offset: 448)
!4574 = !DILocalVariable(name: "start", scope: !4545, file: !3581, line: 120, type: !43)
!4575 = !DILocalVariable(name: "end", scope: !4545, file: !3581, line: 121, type: !43)
!4576 = !DILocation(line: 95, column: 6, scope: !4545)
!4577 = !DILocation(line: 103, column: 80, scope: !4545)
!4578 = !DILocation(line: 103, column: 67, scope: !4545)
!4579 = !DILocation(line: 103, column: 29, scope: !4545)
!4580 = !DILocation(line: 103, column: 2, scope: !4545)
!4581 = !DILocation(line: 104, column: 6, scope: !4545)
!4582 = !DILocation(line: 0, scope: !4545)
!4583 = !DILocation(line: 104, column: 14, scope: !4545)
!4584 = !DILocation(line: 104, column: 33, scope: !4545)
!4585 = !DILocation(line: 104, column: 21, scope: !4545)
!4586 = !DILocation(line: 104, column: 16, scope: !4545)
!4587 = !DILocation(line: 111, column: 36, scope: !4545)
!4588 = !DILocation(line: 111, column: 4, scope: !4545)
!4589 = !DILocation(line: 112, column: 7, scope: !4545)
!4590 = !DILocation(line: 112, column: 14, scope: !4545)
!4591 = !DILocation(line: 112, column: 20, scope: !4545)
!4592 = !DILocation(line: 112, column: 34, scope: !4545)
!4593 = !DILocation(line: 112, column: 41, scope: !4545)
!4594 = !DILocation(line: 112, column: 46, scope: !4545)
!4595 = !DILocation(line: 112, column: 52, scope: !4545)
!4596 = !DILocation(line: 113, column: 14, scope: !4545)
!4597 = !DILocation(line: 113, column: 21, scope: !4545)
!4598 = !DILocation(line: 113, column: 5, scope: !4545)
!4599 = !DILocation(line: 114, column: 12, scope: !4545)
!4600 = !DILocation(line: 114, column: 20, scope: !4545)
!4601 = !DILocation(line: 114, column: 27, scope: !4545)
!4602 = !DILocation(line: 114, column: 18, scope: !4545)
!4603 = !DILocation(line: 114, column: 5, scope: !4545)
!4604 = !DILocation(line: 115, column: 5, scope: !4545)
!4605 = !DILocation(line: 115, column: 11, scope: !4545)
!4606 = !DILocation(line: 115, column: 18, scope: !4545)
!4607 = !DILocation(line: 115, column: 10, scope: !4545)
!4608 = !DILocation(line: 125, column: 26, scope: !4545)
!4609 = !DILocation(line: 125, column: 48, scope: !4545)
!4610 = !DILocation(line: 125, column: 25, scope: !4545)
!4611 = !DILocation(line: 125, column: 3, scope: !4545)
!4612 = !DILocation(line: 104, column: 41, scope: !4545)
!4613 = !DILocation(line: 118, column: 36, scope: !4545)
!4614 = !DILocation(line: 118, column: 4, scope: !4545)
!4615 = !DILocation(line: 119, column: 7, scope: !4545)
!4616 = !DILocation(line: 119, column: 14, scope: !4545)
!4617 = !DILocation(line: 119, column: 20, scope: !4545)
!4618 = !DILocation(line: 119, column: 34, scope: !4545)
!4619 = !DILocation(line: 119, column: 41, scope: !4545)
!4620 = !DILocation(line: 119, column: 46, scope: !4545)
!4621 = !DILocation(line: 119, column: 52, scope: !4545)
!4622 = !DILocation(line: 120, column: 14, scope: !4545)
!4623 = !DILocation(line: 120, column: 21, scope: !4545)
!4624 = !DILocation(line: 120, column: 5, scope: !4545)
!4625 = !DILocation(line: 121, column: 12, scope: !4545)
!4626 = !DILocation(line: 121, column: 20, scope: !4545)
!4627 = !DILocation(line: 121, column: 27, scope: !4545)
!4628 = !DILocation(line: 121, column: 18, scope: !4545)
!4629 = !DILocation(line: 121, column: 5, scope: !4545)
!4630 = !DILocation(line: 122, column: 5, scope: !4545)
!4631 = !DILocation(line: 122, column: 11, scope: !4545)
!4632 = !DILocation(line: 122, column: 18, scope: !4545)
!4633 = !DILocation(line: 122, column: 10, scope: !4545)
!4634 = !DILocation(line: 127, column: 2, scope: !4545)
!4635 = distinct !DISubprogram(name: "runtime.scanstack", linkageName: "tinygo_scanstack", scope: !3468, file: !3468, line: 23, type: !3208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4636)
!4636 = !{!4637}
!4637 = !DILocalVariable(name: "sp", arg: 1, scope: !4635, file: !3468, line: 23, type: !43)
!4638 = !DILocation(line: 23, column: 6, scope: !4635)
!4639 = !DILocation(line: 24, column: 12, scope: !4635)
!4640 = !DILocation(line: 24, column: 29, scope: !4635)
!4641 = !DILocation(line: 24, column: 11, scope: !4635)
!4642 = !DILocation(line: 25, column: 2, scope: !4635)
!4643 = distinct !DISubprogram(name: "runtime.unsafeSlicePanic", linkageName: "runtime.unsafeSlicePanic", scope: !428, file: !428, line: 211, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4644 = !DILocation(line: 212, column: 30, scope: !4643)
!4645 = !DILocation(line: 212, column: 16, scope: !4643)
!4646 = !DILocation(line: 213, column: 2, scope: !4643)
!4647 = distinct !DISubprogram(name: "runtime.negativeShiftPanic", linkageName: "runtime.negativeShiftPanic", scope: !428, file: !428, line: 221, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4648 = !DILocation(line: 222, column: 30, scope: !4647)
!4649 = !DILocation(line: 222, column: 16, scope: !4647)
!4650 = !DILocation(line: 223, column: 2, scope: !4647)
!4651 = distinct !DISubprogram(name: "runtime.printspace", linkageName: "runtime.printspace", scope: !458, file: !458, line: 282, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4652 = !DILocation(line: 283, column: 9, scope: !4651)
!4653 = !DILocation(line: 284, column: 2, scope: !4651)
!4654 = distinct !DISubprogram(name: "runtime.memmove", linkageName: "runtime.memmove", scope: !1584, file: !1584, line: 48, type: !3602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4655)
!4655 = !{!4656, !4657, !4658}
!4656 = !DILocalVariable(name: "dst", arg: 1, scope: !4654, file: !1584, line: 48, type: !84)
!4657 = !DILocalVariable(name: "src", arg: 2, scope: !4654, file: !1584, line: 48, type: !84)
!4658 = !DILocalVariable(name: "size", arg: 3, scope: !4654, file: !1584, line: 48, type: !43)
!4659 = !DILocation(line: 48, column: 6, scope: !4654)
!4660 = distinct !DISubprogram(name: "runtime.main", linkageName: "main", scope: !414, file: !414, line: 80, type: !4661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4663)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!381, !485}
!4663 = !{!4664, !4665, !4666, !4667, !4668}
!4664 = !DILocalVariable(name: "argc", arg: 1, scope: !4660, file: !414, line: 80, type: !381)
!4665 = !DILocalVariable(name: "argv", arg: 2, scope: !4660, file: !414, line: 80, type: !485)
!4666 = !DILocalVariable(name: "main_argc", scope: !4660, file: !414, line: 105, type: !381)
!4667 = !DILocalVariable(name: "main_argv", scope: !4660, file: !414, line: 106, type: !485)
!4668 = !DILocalVariable(name: "stackTop", scope: !4660, file: !414, line: 75, type: !43)
!4669 = !DILocation(line: 80, column: 6, scope: !4660)
!4670 = !DILocation(line: 0, scope: !4660)
!4671 = !DILocation(line: 83, column: 15, scope: !4660)
!4672 = !DILocation(line: 87, column: 14, scope: !4660)
!4673 = !DILocation(line: 87, column: 2, scope: !4660)
!4674 = !DILocation(line: 88, column: 14, scope: !4660)
!4675 = !DILocation(line: 88, column: 2, scope: !4660)
!4676 = !DILocation(line: 92, column: 31, scope: !4660)
!4677 = !DILocation(line: 97, column: 35, scope: !4660)
!4678 = !DILocation(line: 97, column: 2, scope: !4660)
!4679 = !DILocation(line: 98, column: 9, scope: !4660)
!4680 = !DILocation(line: 101, column: 2, scope: !4660)
!4681 = distinct !DISubprogram(name: "runtime.allocateHeap", linkageName: "runtime.allocateHeap", scope: !414, file: !414, line: 303, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4682)
!4682 = !{!4683, !4684, !4685, !4686, !4687}
!4683 = !DILocalVariable(name: "heapMaxSize", scope: !4681, file: !414, line: 299, type: !43)
!4684 = !DILocalVariable(name: "addr", scope: !4681, file: !414, line: 309, type: !84)
!4685 = !DILocalVariable(name: "heapStart", scope: !4681, file: !414, line: 301, type: !43)
!4686 = !DILocalVariable(name: "heapSize", scope: !4681, file: !414, line: 298, type: !43)
!4687 = !DILocalVariable(name: "heapEnd", scope: !4681, file: !414, line: 301, type: !43)
!4688 = !DILocation(line: 307, column: 2, scope: !4681)
!4689 = !DILocation(line: 0, scope: !4681)
!4690 = !DILocation(line: 309, column: 21, scope: !4681)
!4691 = !DILocation(line: 309, column: 15, scope: !4681)
!4692 = !DILocation(line: 309, column: 3, scope: !4681)
!4693 = !DILocation(line: 310, column: 6, scope: !4681)
!4694 = !DILocation(line: 310, column: 11, scope: !4681)
!4695 = !DILocation(line: 315, column: 4, scope: !4681)
!4696 = !DILocation(line: 316, column: 7, scope: !4681)
!4697 = !DILocation(line: 316, column: 19, scope: !4681)
!4698 = !DILocation(line: 317, column: 17, scope: !4681)
!4699 = !DILocation(line: 321, column: 23, scope: !4681)
!4700 = !DILocation(line: 321, column: 22, scope: !4681)
!4701 = !DILocation(line: 321, column: 3, scope: !4681)
!4702 = !DILocation(line: 322, column: 13, scope: !4681)
!4703 = !DILocation(line: 322, column: 25, scope: !4681)
!4704 = !DILocation(line: 322, column: 23, scope: !4681)
!4705 = !DILocation(line: 322, column: 3, scope: !4681)
!4706 = !DILocation(line: 325, column: 2, scope: !4681)
!4707 = distinct !DISubprogram(name: "runtime.runMain", linkageName: "runtime.runMain", scope: !414, file: !414, line: 135, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4708 = !DILocation(line: 136, column: 5, scope: !4707)
!4709 = !DILocation(line: 137, column: 2, scope: !4707)
!4710 = distinct !DISubprogram(name: "runtime.run", linkageName: "runtime.run", scope: !515, file: !515, line: 23, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4711)
!4711 = !{!4712}
!4712 = !DILocalVariable(name: "stackTop", scope: !4710, file: !414, line: 75, type: !43)
!4713 = !DILocation(line: 24, column: 10, scope: !4710)
!4714 = !DILocation(line: 25, column: 10, scope: !4710)
!4715 = !DILocation(line: 26, column: 12, scope: !4710)
!4716 = !DILocation(line: 26, column: 11, scope: !4710)
!4717 = !DILocation(line: 27, column: 9, scope: !4710)
!4718 = !DILocation(line: 28, column: 10, scope: !4710)
!4719 = !DILocation(line: 29, column: 2, scope: !4710)
!4720 = distinct !DISubprogram(name: "runtime.tinygo_handle_fatal_signal", linkageName: "tinygo_handle_fatal_signal", scope: !414, file: !414, line: 148, type: !4721, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4723)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!381, !43}
!4723 = !{!4724, !4725}
!4724 = !DILocalVariable(name: "sig", arg: 1, scope: !4720, file: !414, line: 148, type: !381)
!4725 = !DILocalVariable(name: "addr", arg: 2, scope: !4720, file: !414, line: 148, type: !43)
!4726 = !DILocation(line: 148, column: 6, scope: !4720)
!4727 = !DILocation(line: 0, scope: !4720)
!4728 = !DILocation(line: 150, column: 7, scope: !4720)
!4729 = !DILocation(line: 154, column: 5, scope: !4720)
!4730 = !DILocation(line: 154, column: 10, scope: !4720)
!4731 = !DILocation(line: 155, column: 14, scope: !4720)
!4732 = !DILocation(line: 156, column: 12, scope: !4720)
!4733 = !DILocation(line: 156, column: 11, scope: !4720)
!4734 = !DILocation(line: 160, column: 13, scope: !4720)
!4735 = !DILocation(line: 161, column: 9, scope: !4720)
!4736 = !DILocation(line: 162, column: 7, scope: !4720)
!4737 = !DILocation(line: 163, column: 10, scope: !4720)
!4738 = !DILocation(line: 180, column: 8, scope: !4720)
!4739 = !DILocation(line: 180, column: 7, scope: !4720)
!4740 = !DILocation(line: 181, column: 2, scope: !4720)
!4741 = !DILocation(line: 164, column: 7, scope: !4720)
!4742 = !DILocation(line: 165, column: 10, scope: !4720)
!4743 = !DILocation(line: 166, column: 7, scope: !4720)
!4744 = !DILocation(line: 167, column: 10, scope: !4720)
!4745 = !DILocation(line: 169, column: 11, scope: !4720)
!4746 = !DILocation(line: 169, column: 10, scope: !4720)
!4747 = !DILocation(line: 158, column: 14, scope: !4720)
!4748 = distinct !DISubprogram(name: "runtime.printlock", linkageName: "runtime.printlock", scope: !515, file: !515, line: 138, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4749 = !DILocation(line: 139, column: 16, scope: !4748)
!4750 = !DILocation(line: 140, column: 2, scope: !4748)
!4751 = distinct !DISubprogram(name: "runtime.printunlock", linkageName: "runtime.printunlock", scope: !515, file: !515, line: 142, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4752 = !DILocation(line: 143, column: 18, scope: !4751)
!4753 = !DILocation(line: 144, column: 2, scope: !4751)
!4754 = distinct !DISubprogram(name: "runtime.sliceAppend", linkageName: "runtime.sliceAppend", scope: !4755, file: !4755, line: 12, type: !4756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4758)
!4755 = !DIFile(filename: "slice.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4756 = !DISubroutineType(types: !4757)
!4757 = !{!84, !84, !43, !43, !43, !43, !84}
!4758 = !{!4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766}
!4759 = !DILocalVariable(name: "srcBuf", arg: 1, scope: !4754, file: !4755, line: 12, type: !84)
!4760 = !DILocalVariable(name: "elemsBuf", arg: 2, scope: !4754, file: !4755, line: 12, type: !84)
!4761 = !DILocalVariable(name: "srcLen", arg: 3, scope: !4754, file: !4755, line: 12, type: !43)
!4762 = !DILocalVariable(name: "srcCap", arg: 4, scope: !4754, file: !4755, line: 12, type: !43)
!4763 = !DILocalVariable(name: "elemsLen", arg: 5, scope: !4754, file: !4755, line: 12, type: !43)
!4764 = !DILocalVariable(name: "elemSize", arg: 6, scope: !4754, file: !4755, line: 12, type: !43)
!4765 = !DILocalVariable(name: "layout", arg: 7, scope: !4754, file: !4755, line: 12, type: !84)
!4766 = !DILocalVariable(name: "newLen", scope: !4754, file: !4755, line: 13, type: !43)
!4767 = !DILocation(line: 12, column: 6, scope: !4754)
!4768 = !DILocation(line: 13, column: 12, scope: !4754)
!4769 = !DILocation(line: 13, column: 21, scope: !4754)
!4770 = !DILocation(line: 13, column: 19, scope: !4754)
!4771 = !DILocation(line: 13, column: 2, scope: !4754)
!4772 = !DILocation(line: 14, column: 5, scope: !4754)
!4773 = !DILocation(line: 14, column: 14, scope: !4754)
!4774 = !DILocation(line: 0, scope: !4754)
!4775 = !DILocation(line: 17, column: 33, scope: !4754)
!4776 = !DILocation(line: 17, column: 41, scope: !4754)
!4777 = !DILocation(line: 17, column: 49, scope: !4754)
!4778 = !DILocation(line: 17, column: 57, scope: !4754)
!4779 = !DILocation(line: 17, column: 65, scope: !4754)
!4780 = !DILocation(line: 17, column: 75, scope: !4754)
!4781 = !DILocation(line: 17, column: 32, scope: !4754)
!4782 = !DILocation(line: 17, column: 3, scope: !4754)
!4783 = !DILocation(line: 17, column: 14, scope: !4754)
!4784 = !DILocation(line: 20, column: 22, scope: !4754)
!4785 = !DILocation(line: 20, column: 30, scope: !4754)
!4786 = !DILocation(line: 20, column: 37, scope: !4754)
!4787 = !DILocation(line: 20, column: 36, scope: !4754)
!4788 = !DILocation(line: 20, column: 21, scope: !4754)
!4789 = !DILocation(line: 20, column: 48, scope: !4754)
!4790 = !DILocation(line: 20, column: 58, scope: !4754)
!4791 = !DILocation(line: 20, column: 67, scope: !4754)
!4792 = !DILocation(line: 20, column: 66, scope: !4754)
!4793 = !DILocation(line: 20, column: 10, scope: !4754)
!4794 = !DILocation(line: 12, column: 18, scope: !4754)
!4795 = !DILocation(line: 12, column: 59, scope: !4754)
!4796 = !DILocation(line: 23, column: 9, scope: !4754)
!4797 = !DILocation(line: 23, column: 17, scope: !4754)
!4798 = !DILocation(line: 23, column: 25, scope: !4754)
!4799 = !DILocation(line: 23, column: 2, scope: !4754)
!4800 = distinct !DISubprogram(name: "runtime.sliceGrow", linkageName: "runtime.sliceGrow", scope: !4755, file: !4755, line: 27, type: !4801, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4803)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!84, !43, !43, !43, !43, !84}
!4803 = !{!4804, !4805, !4806, !4807, !4808, !4809, !4810}
!4804 = !DILocalVariable(name: "oldBuf", arg: 1, scope: !4800, file: !4755, line: 27, type: !84)
!4805 = !DILocalVariable(name: "oldLen", arg: 2, scope: !4800, file: !4755, line: 27, type: !43)
!4806 = !DILocalVariable(name: "oldCap", arg: 3, scope: !4800, file: !4755, line: 27, type: !43)
!4807 = !DILocalVariable(name: "newCap", arg: 4, scope: !4800, file: !4755, line: 27, type: !43)
!4808 = !DILocalVariable(name: "elemSize", arg: 5, scope: !4800, file: !4755, line: 27, type: !43)
!4809 = !DILocalVariable(name: "layout", arg: 6, scope: !4800, file: !4755, line: 27, type: !84)
!4810 = !DILocalVariable(name: "buf", scope: !4800, file: !4755, line: 39, type: !84)
!4811 = !DILocation(line: 27, column: 6, scope: !4800)
!4812 = !DILocation(line: 28, column: 5, scope: !4800)
!4813 = !DILocation(line: 28, column: 15, scope: !4800)
!4814 = !DILocation(line: 28, column: 12, scope: !4800)
!4815 = !DILocation(line: 0, scope: !4800)
!4816 = !DILocation(line: 30, column: 10, scope: !4800)
!4817 = !DILocation(line: 30, column: 18, scope: !4800)
!4818 = !DILocation(line: 30, column: 26, scope: !4800)
!4819 = !DILocation(line: 30, column: 3, scope: !4800)
!4820 = !DILocation(line: 37, column: 30, scope: !4800)
!4821 = !DILocation(line: 37, column: 24, scope: !4800)
!4822 = !DILocation(line: 37, column: 13, scope: !4800)
!4823 = !DILocation(line: 37, column: 2, scope: !4800)
!4824 = !DILocation(line: 39, column: 15, scope: !4800)
!4825 = !DILocation(line: 39, column: 22, scope: !4800)
!4826 = !DILocation(line: 39, column: 21, scope: !4800)
!4827 = !DILocation(line: 39, column: 32, scope: !4800)
!4828 = !DILocation(line: 39, column: 14, scope: !4800)
!4829 = !DILocation(line: 39, column: 2, scope: !4800)
!4830 = !DILocation(line: 40, column: 5, scope: !4800)
!4831 = !DILocation(line: 40, column: 12, scope: !4800)
!4832 = !DILocation(line: 42, column: 11, scope: !4800)
!4833 = !DILocation(line: 42, column: 16, scope: !4800)
!4834 = !DILocation(line: 42, column: 24, scope: !4800)
!4835 = !DILocation(line: 42, column: 31, scope: !4800)
!4836 = !DILocation(line: 42, column: 30, scope: !4800)
!4837 = !DILocation(line: 42, column: 10, scope: !4800)
!4838 = !DILocation(line: 45, column: 9, scope: !4800)
!4839 = !DILocation(line: 45, column: 14, scope: !4800)
!4840 = !DILocation(line: 45, column: 22, scope: !4800)
!4841 = !DILocation(line: 45, column: 2, scope: !4800)
!4842 = distinct !DISubprogram(name: "runtime.tinygo_signal_handler", linkageName: "tinygo_signal_handler", scope: !414, file: !414, line: 420, type: !3404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4843)
!4843 = !{!4844, !4845, !4846, !4847}
!4844 = !DILocalVariable(name: "s", arg: 1, scope: !4842, file: !414, line: 420, type: !381)
!4845 = !DILocalVariable(name: "mask", scope: !4842, file: !414, line: 427, type: !98)
!4846 = !DILocalVariable(name: "val", scope: !4842, file: !414, line: 428, type: !98)
!4847 = !DILocalVariable(name: "swapped", scope: !4842, file: !414, line: 429, type: !371)
!4848 = !DILocation(line: 420, column: 6, scope: !4842)
!4849 = !DILocation(line: 0, scope: !4842)
!4850 = !DILocation(line: 427, column: 31, scope: !4842)
!4851 = !DILocation(line: 427, column: 21, scope: !4842)
!4852 = !DILocation(line: 427, column: 3, scope: !4842)
!4853 = !DILocation(line: 428, column: 30, scope: !4842)
!4854 = !DILocation(line: 428, column: 3, scope: !4842)
!4855 = !DILocation(line: 429, column: 45, scope: !4842)
!4856 = !DILocation(line: 429, column: 50, scope: !4842)
!4857 = !DILocation(line: 429, column: 54, scope: !4842)
!4858 = !DILocation(line: 429, column: 53, scope: !4842)
!4859 = !DILocation(line: 429, column: 44, scope: !4842)
!4860 = !DILocation(line: 429, column: 3, scope: !4842)
!4861 = !DILocation(line: 430, column: 6, scope: !4842)
!4862 = !DILocation(line: 437, column: 21, scope: !4842)
!4863 = !DILocation(line: 437, column: 25, scope: !4842)
!4864 = !DILocation(line: 441, column: 22, scope: !4842)
!4865 = !DILocation(line: 443, column: 2, scope: !4842)
!4866 = distinct !DISubprogram(name: "runtime.stringConcat", linkageName: "runtime.stringConcat", scope: !4228, file: !4228, line: 56, type: !4867, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4873)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!4869, !4869}
!4869 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._string", baseType: !4870)
!4870 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !4871)
!4871 = !{!2099, !4872}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !43, size: 64, align: 64, offset: 64)
!4873 = !{!4874, !4875, !4876, !4877}
!4874 = !DILocalVariable(name: "x", arg: 1, scope: !4866, file: !4228, line: 56, type: !4869)
!4875 = !DILocalVariable(name: "y", arg: 2, scope: !4866, file: !4228, line: 56, type: !4869)
!4876 = !DILocalVariable(name: "length", scope: !4866, file: !4228, line: 62, type: !43)
!4877 = !DILocalVariable(name: "buf", scope: !4866, file: !4228, line: 63, type: !84)
!4878 = !DILocation(line: 56, column: 6, scope: !4866)
!4879 = !DILocation(line: 56, column: 19, scope: !4866)
!4880 = !DILocation(line: 56, column: 22, scope: !4866)
!4881 = !DILocation(line: 57, column: 7, scope: !4866)
!4882 = !DILocation(line: 57, column: 14, scope: !4866)
!4883 = !DILocation(line: 0, scope: !4866)
!4884 = !DILocation(line: 58, column: 10, scope: !4866)
!4885 = !DILocation(line: 58, column: 3, scope: !4866)
!4886 = !DILocation(line: 59, column: 14, scope: !4866)
!4887 = !DILocation(line: 59, column: 21, scope: !4866)
!4888 = !DILocation(line: 60, column: 10, scope: !4866)
!4889 = !DILocation(line: 60, column: 3, scope: !4866)
!4890 = !DILocation(line: 62, column: 15, scope: !4866)
!4891 = !DILocation(line: 62, column: 26, scope: !4866)
!4892 = !DILocation(line: 62, column: 22, scope: !4866)
!4893 = !DILocation(line: 62, column: 3, scope: !4866)
!4894 = !DILocation(line: 63, column: 16, scope: !4866)
!4895 = !DILocation(line: 63, column: 45, scope: !4866)
!4896 = !DILocation(line: 63, column: 15, scope: !4866)
!4897 = !DILocation(line: 63, column: 3, scope: !4866)
!4898 = !DILocation(line: 64, column: 10, scope: !4866)
!4899 = !DILocation(line: 64, column: 32, scope: !4866)
!4900 = !DILocation(line: 64, column: 40, scope: !4866)
!4901 = !DILocation(line: 64, column: 9, scope: !4866)
!4902 = !DILocation(line: 65, column: 21, scope: !4866)
!4903 = !DILocation(line: 65, column: 28, scope: !4866)
!4904 = !DILocation(line: 65, column: 20, scope: !4866)
!4905 = !DILocation(line: 65, column: 54, scope: !4866)
!4906 = !DILocation(line: 65, column: 62, scope: !4866)
!4907 = !DILocation(line: 65, column: 9, scope: !4866)
!4908 = !DILocation(line: 66, column: 21, scope: !4866)
!4909 = !DILocation(line: 66, column: 31, scope: !4866)
!4910 = !DILocation(line: 66, column: 43, scope: !4866)
!4911 = !DILocation(line: 66, column: 45, scope: !4866)
!4912 = !DILocation(line: 66, column: 17, scope: !4866)
!4913 = !DILocation(line: 66, column: 3, scope: !4866)
!4914 = distinct !DISubprogram(name: "runtime.stringFromBytes", linkageName: "runtime.stringFromBytes", scope: !4228, file: !4228, line: 71, type: !4915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4918)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!4917}
!4917 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !2098)
!4918 = !{!4919, !4920}
!4919 = !DILocalVariable(name: "x", arg: 1, scope: !4914, file: !4228, line: 71, type: !4917)
!4920 = !DILocalVariable(name: "buf", scope: !4914, file: !4228, line: 76, type: !84)
!4921 = !DILocation(line: 71, column: 6, scope: !4914)
!4922 = !DILocation(line: 71, column: 22, scope: !4914)
!4923 = !DILocation(line: 76, column: 17, scope: !4914)
!4924 = !DILocation(line: 76, column: 43, scope: !4914)
!4925 = !DILocation(line: 76, column: 14, scope: !4914)
!4926 = !DILocation(line: 76, column: 2, scope: !4914)
!4927 = !DILocation(line: 77, column: 9, scope: !4914)
!4928 = !DILocation(line: 77, column: 31, scope: !4914)
!4929 = !DILocation(line: 77, column: 39, scope: !4914)
!4930 = !DILocation(line: 77, column: 8, scope: !4914)
!4931 = !DILocation(line: 78, column: 20, scope: !4914)
!4932 = !DILocation(line: 78, column: 30, scope: !4914)
!4933 = !DILocation(line: 78, column: 42, scope: !4914)
!4934 = !DILocation(line: 78, column: 46, scope: !4914)
!4935 = !DILocation(line: 78, column: 16, scope: !4914)
!4936 = !DILocation(line: 78, column: 2, scope: !4914)
!4937 = distinct !DISubprogram(name: "main.f_gold", linkageName: "f_gold", scope: !4938, file: !4938, line: 6, type: !4939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !4945)
!4938 = !DIFile(filename: "MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1_emit.go", directory: "/root/es/vert/vert/source_funs/go_transcoder/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1")
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!4941, !1891}
!4941 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]int", size: 192, align: 64, elements: !4942)
!4942 = !{!4943, !42, !673}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !4944, size: 64, align: 64)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64, align: 64, dwarfAddressSpace: 0)
!4945 = !{!4946, !4947}
!4946 = !DILocalVariable(name: "a", arg: 1, scope: !4937, file: !4938, line: 6, type: !4941)
!4947 = !DILocalVariable(name: "n", arg: 2, scope: !4937, file: !4938, line: 6, type: !1891)
!4948 = !DILocation(line: 6, column: 6, scope: !4937)
!4949 = !DILocation(line: 7, column: 44, scope: !4937)
!4950 = !DILocation(line: 7, column: 45, scope: !4937)
!4951 = !DILocation(line: 7, column: 48, scope: !4937)
!4952 = !DILocation(line: 7, column: 42, scope: !4937)
!4953 = !DILocation(line: 7, column: 34, scope: !4937)
!4954 = !DILocation(line: 7, column: 53, scope: !4937)
!4955 = !DILocation(line: 7, column: 68, scope: !4937)
!4956 = !DILocation(line: 7, column: 23, scope: !4937)
!4957 = !DILocation(line: 7, column: 12, scope: !4937)
!4958 = !DILocation(line: 7, column: 2, scope: !4937)
