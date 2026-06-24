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

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.SwapUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %new, ptr %context) unnamed_addr #0 !dbg !1735 {
entry:
    #dbg_value(ptr %addr, !1741, !DIExpression(), !1743)
    #dbg_value(i32 %new, !1742, !DIExpression(), !1743)
  %0 = atomicrmw xchg ptr %addr, i32 %new syncscope("singlethread") seq_cst, align 4, !dbg !1743
  ret i32 %0, !dbg !1743
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"sync/atomic.CompareAndSwapUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %old, i32 %new, ptr %context) unnamed_addr #0 !dbg !1744 {
entry:
    #dbg_value(ptr %addr, !1748, !DIExpression(), !1751)
    #dbg_value(i32 %old, !1749, !DIExpression(), !1751)
    #dbg_value(i32 %new, !1750, !DIExpression(), !1751)
  %0 = cmpxchg ptr %addr, i32 %old, i32 %new syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !1751
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !1751
  ret i1 %1, !dbg !1751
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.AddUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %delta, ptr %context) unnamed_addr #0 !dbg !1752 {
entry:
    #dbg_value(ptr %addr, !1754, !DIExpression(), !1756)
    #dbg_value(i32 %delta, !1755, !DIExpression(), !1756)
  %0 = atomicrmw add ptr %addr, i32 %delta syncscope("singlethread") seq_cst, align 4, !dbg !1756
  %1 = add i32 %0, %delta, !dbg !1756
  ret i32 %1, !dbg !1756
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"sync/atomic.LoadUint32"(ptr nocapture dereferenceable_or_null(4) %addr, ptr %context) unnamed_addr #0 !dbg !1757 {
entry:
    #dbg_value(ptr %addr, !1761, !DIExpression(), !1762)
  %0 = load atomic i32, ptr %addr seq_cst, align 4, !dbg !1762
  ret i32 %0, !dbg !1762
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"sync/atomic.StoreUint32"(ptr nocapture dereferenceable_or_null(4) %addr, i32 %val, ptr %context) unnamed_addr #0 !dbg !1763 {
entry:
    #dbg_value(ptr %addr, !1765, !DIExpression(), !1767)
    #dbg_value(i32 %val, !1766, !DIExpression(), !1767)
  store atomic i32 %val, ptr %addr seq_cst, align 4, !dbg !1767
  ret void, !dbg !1767
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Add"(ptr dereferenceable_or_null(4) %x, i32 %delta, ptr %context) #0 !dbg !1768 {
entry:
    #dbg_value(ptr %x, !1774, !DIExpression(), !1776)
    #dbg_value(i32 %delta, !1775, !DIExpression(), !1776)
    #dbg_value(ptr %x, !1774, !DIExpression(), !1777)
  %0 = icmp eq ptr %x, null, !dbg !1778
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1778

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1778
    #dbg_value(i32 %delta, !1775, !DIExpression(), !1779)
  %2 = call i32 @"sync/atomic.AddUint32"(ptr %1, i32 %delta, ptr undef), !dbg !1780
  ret i32 %2, !dbg !1781

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1778
  unreachable, !dbg !1778
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr dereferenceable_or_null(4) %x, i32 %old, i32 %new, ptr %context) #0 !dbg !1782 {
entry:
    #dbg_value(ptr %x, !1786, !DIExpression(), !1789)
    #dbg_value(i32 %old, !1787, !DIExpression(), !1789)
    #dbg_value(i32 %new, !1788, !DIExpression(), !1789)
    #dbg_value(ptr %x, !1786, !DIExpression(), !1790)
  %0 = icmp eq ptr %x, null, !dbg !1791
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1791

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1791
    #dbg_value(i32 %old, !1787, !DIExpression(), !1792)
    #dbg_value(i32 %new, !1788, !DIExpression(), !1793)
  %2 = call i1 @"sync/atomic.CompareAndSwapUint32"(ptr %1, i32 %old, i32 %new, ptr undef), !dbg !1794
  ret i1 %2, !dbg !1795

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1791
  unreachable, !dbg !1791
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Load"(ptr dereferenceable_or_null(4) %x, ptr %context) #0 !dbg !1796 {
entry:
    #dbg_value(ptr %x, !1800, !DIExpression(), !1801)
    #dbg_value(ptr %x, !1800, !DIExpression(), !1802)
  %0 = icmp eq ptr %x, null, !dbg !1803
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1803

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1803
  %2 = call i32 @"sync/atomic.LoadUint32"(ptr %1, ptr undef), !dbg !1804
  ret i32 %2, !dbg !1805

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1803
  unreachable, !dbg !1803
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*sync/atomic.Uint32).Store"(ptr dereferenceable_or_null(4) %x, i32 %val, ptr %context) #0 !dbg !1806 {
entry:
    #dbg_value(ptr %x, !1808, !DIExpression(), !1810)
    #dbg_value(i32 %val, !1809, !DIExpression(), !1810)
    #dbg_value(ptr %x, !1808, !DIExpression(), !1811)
  %0 = icmp eq ptr %x, null, !dbg !1812
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1812

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1812
    #dbg_value(i32 %val, !1809, !DIExpression(), !1813)
  call void @"sync/atomic.StoreUint32"(ptr %1, i32 %val, ptr undef), !dbg !1814
  ret void, !dbg !1815

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1812
  unreachable, !dbg !1812
}

; Function Attrs: nounwind uwtable(sync)
define internal i32 @"(*sync/atomic.Uint32).Swap"(ptr dereferenceable_or_null(4) %x, i32 %new, ptr %context) #0 !dbg !1816 {
entry:
    #dbg_value(ptr %x, !1818, !DIExpression(), !1820)
    #dbg_value(i32 %new, !1819, !DIExpression(), !1820)
    #dbg_value(ptr %x, !1818, !DIExpression(), !1821)
  %0 = icmp eq ptr %x, null, !dbg !1822
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1822

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"sync/atomic.Bool", ptr %x, i32 0, i32 1, !dbg !1822
    #dbg_value(i32 %new, !1819, !DIExpression(), !1823)
  %2 = call i32 @"sync/atomic.SwapUint32"(ptr %1, i32 %new, ptr undef), !dbg !1824
  ret i32 %2, !dbg !1825

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1822
  unreachable, !dbg !1822
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*internal/futex.Futex).Wait"(ptr dereferenceable_or_null(4) %f, i32 %cmp, ptr %context) #0 !dbg !1826 {
entry:
    #dbg_value(ptr %f, !1832, !DIExpression(), !1834)
    #dbg_value(i32 %cmp, !1833, !DIExpression(), !1834)
    #dbg_value(ptr %f, !1832, !DIExpression(), !1835)
  %0 = icmp eq ptr %f, null, !dbg !1836
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1836

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1836
    #dbg_value(i32 %cmp, !1833, !DIExpression(), !1837)
  call void @tinygo_futex_wait(ptr %1, i32 %cmp), !dbg !1838
  ret i1 false, !dbg !1839

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1836
  unreachable, !dbg !1836
}

declare void @tinygo_futex_wait(ptr nocapture dereferenceable_or_null(4), i32) #1

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/futex.Futex).Wake"(ptr dereferenceable_or_null(4) %f, ptr %context) #0 !dbg !1840 {
entry:
    #dbg_value(ptr %f, !1844, !DIExpression(), !1845)
    #dbg_value(ptr %f, !1844, !DIExpression(), !1846)
  %0 = icmp eq ptr %f, null, !dbg !1847
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1847

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1847
  call void @tinygo_futex_wake(ptr %1), !dbg !1848
  ret void, !dbg !1849

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1847
  unreachable, !dbg !1847
}

declare void @tinygo_futex_wake(ptr nocapture dereferenceable_or_null(4)) #1

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/futex.Futex).WakeAll"(ptr dereferenceable_or_null(4) %f, ptr %context) #0 !dbg !1850 {
entry:
    #dbg_value(ptr %f, !1852, !DIExpression(), !1853)
    #dbg_value(ptr %f, !1852, !DIExpression(), !1854)
  %0 = icmp eq ptr %f, null, !dbg !1855
  br i1 %0, label %gep.throw, label %gep.next, !dbg !1855

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/futex.Futex", ptr %f, i32 0, i32 0, !dbg !1855
  call void @tinygo_futex_wake_all(ptr %1), !dbg !1856
  ret void, !dbg !1857

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !1855
  unreachable, !dbg !1855
}

declare void @tinygo_futex_wake_all(ptr nocapture dereferenceable_or_null(4)) #1

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(internal/gclayout.Layout).AsPtr"(i64 %l, ptr %context) #0 !dbg !1858 {
entry:
    #dbg_value(i64 %l, !1864, !DIExpression(), !1865)
    #dbg_value(i64 %l, !1864, !DIExpression(), !1866)
  %0 = inttoptr i64 %l to ptr, !dbg !1867
  ret ptr %0, !dbg !1868
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/itoa.Itoa"(i64 %val, ptr %context) #0 !dbg !1869 {
entry:
    #dbg_value(i64 %val, !1874, !DIExpression(), !1875)
    #dbg_value(i64 %val, !1874, !DIExpression(), !1876)
  %0 = icmp slt i64 %val, 0, !dbg !1877
  br i1 %0, label %if.then, label %if.done, !dbg !1878

if.then:                                          ; preds = %entry
    #dbg_value(i64 %val, !1874, !DIExpression(), !1879)
  %1 = sub i64 0, %val, !dbg !1880
  %2 = call %runtime._string @"internal/itoa.Uitoa"(i64 %1, ptr undef), !dbg !1881
  %3 = extractvalue %runtime._string %2, 0, !dbg !1882
  %4 = extractvalue %runtime._string %2, 1, !dbg !1882
  %5 = call %runtime._string @runtime.stringConcat(ptr @"internal/itoa$string", i64 1, ptr %3, i64 %4, ptr undef), !dbg !1882
  ret %runtime._string %5, !dbg !1883

if.done:                                          ; preds = %entry
    #dbg_value(i64 %val, !1874, !DIExpression(), !1884)
  %6 = call %runtime._string @"internal/itoa.Uitoa"(i64 %val, ptr undef), !dbg !1885
  ret %runtime._string %6, !dbg !1886
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/itoa.Uitoa"(i64 %val, ptr %context) unnamed_addr #0 !dbg !1887 {
entry:
    #dbg_value(i64 %val, !1892, !DIExpression(), !1895)
    #dbg_value(i64 %val, !1892, !DIExpression(), !1896)
  %0 = icmp eq i64 %val, 0, !dbg !1897
  br i1 %0, label %if.then, label %if.done, !dbg !1898

if.then:                                          ; preds = %entry
  ret %runtime._string { ptr @"internal/itoa$string.1", i64 1 }, !dbg !1899

if.done:                                          ; preds = %entry
  %buf = call align 1 ptr @runtime.alloc(i64 20, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !1900
    #dbg_value(i64 19, !1893, !DIExpression(), !1901)
  br label %for.loop, !dbg !1898

for.loop:                                         ; preds = %lookup.next, %if.done
  %1 = phi i64 [ %val, %if.done ], [ %4, %lookup.next ], !dbg !1902
  %2 = phi i64 [ 19, %if.done ], [ %11, %lookup.next ], !dbg !1901
    #dbg_value(i64 %1, !1892, !DIExpression(), !1903)
  %3 = icmp uge i64 %1, 10, !dbg !1904
  br i1 %3, label %for.body, label %for.done, !dbg !1898

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !1892, !DIExpression(), !1905)
  %4 = udiv i64 %1, 10, !dbg !1906
    #dbg_value(i64 %4, !1894, !DIExpression(), !1907)
    #dbg_value(i64 %2, !1893, !DIExpression(), !1908)
    #dbg_value(i64 %1, !1892, !DIExpression(), !1909)
  %5 = add i64 48, %1, !dbg !1910
    #dbg_value(i64 %4, !1894, !DIExpression(), !1911)
  %6 = mul i64 %4, 10, !dbg !1912
  %7 = sub i64 %5, %6, !dbg !1913
  %8 = trunc i64 %7 to i8, !dbg !1914
  %9 = icmp uge i64 %2, 20, !dbg !1915
  br i1 %9, label %lookup.throw, label %lookup.next, !dbg !1915

lookup.next:                                      ; preds = %for.body
  %10 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1915
  store i8 %8, ptr %10, align 1, !dbg !1915
  %11 = sub i64 %2, 1, !dbg !1916
    #dbg_value(i64 %11, !1893, !DIExpression(), !1916)
    #dbg_value(i64 %4, !1894, !DIExpression(), !1917)
    #dbg_value(i64 %4, !1892, !DIExpression(), !1918)
  br label %for.loop, !dbg !1898

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !1893, !DIExpression(), !1919)
    #dbg_value(i64 %1, !1892, !DIExpression(), !1920)
  %12 = add i64 48, %1, !dbg !1921
  %13 = trunc i64 %12 to i8, !dbg !1922
  %14 = icmp uge i64 %2, 20, !dbg !1923
  br i1 %14, label %lookup.throw1, label %lookup.next2, !dbg !1923

lookup.next2:                                     ; preds = %for.done
  %15 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1923
  store i8 %13, ptr %15, align 1, !dbg !1923
    #dbg_value(i64 %2, !1893, !DIExpression(), !1924)
  %slice.lowhigh = icmp ugt i64 %2, 20, !dbg !1925
  %slice.lowmax = or i1 %slice.lowhigh, false, !dbg !1925
  %slice.lowcap = or i1 %slice.lowmax, false, !dbg !1925
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !1925

slice.next:                                       ; preds = %lookup.next2
  %slice.len = sub i64 20, %2, !dbg !1925
  %slice.ptr = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i64 %2, !dbg !1925
  %slice.cap = sub i64 20, %2, !dbg !1925
  %16 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !1925
  %17 = insertvalue { ptr, i64, i64 } %16, i64 %slice.len, 1, !dbg !1925
  %18 = insertvalue { ptr, i64, i64 } %17, i64 %slice.cap, 2, !dbg !1925
  %19 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !1926
  %20 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !1926
  %21 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !1926
  %22 = call %runtime._string @runtime.stringFromBytes(ptr %19, i64 %20, i64 %21, ptr undef), !dbg !1926
  ret %runtime._string %22, !dbg !1927

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !1915
  unreachable, !dbg !1915

lookup.throw1:                                    ; preds = %for.done
  call void @runtime.lookupPanic(ptr undef), !dbg !1923
  unreachable, !dbg !1923

slice.throw:                                      ; preds = %lookup.next2
  call void @runtime.slicePanic(ptr undef), !dbg !1925
  unreachable, !dbg !1925
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"math/bits.Len"(i64 %x, ptr %context) #0 !dbg !1928 {
entry:
    #dbg_value(i64 %x, !1930, !DIExpression(), !1931)
  %0 = call i64 @llvm.ctlz.i64(i64 %x, i1 false), !dbg !1931
  %1 = sub i64 64, %0, !dbg !1931
  ret i64 %1, !dbg !1931
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"unicode/utf8.DecodeRuneInString"(ptr readonly %s.data, i64 %s.len, ptr %context) #0 !dbg !1932 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !1940
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !1940
    #dbg_value(ptr %s.data, !1936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1940)
    #dbg_value(i64 %s.len, !1936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1940)
    #dbg_value(%runtime._string %1, !1936, !DIExpression(), !1941)
  %2 = extractvalue %runtime._string %1, 0, !dbg !1942
  %3 = extractvalue %runtime._string %1, 1, !dbg !1942
  %4 = call i1 @runtime.stringEqual(ptr %2, i64 %3, ptr null, i64 0, ptr undef), !dbg !1942
  %5 = xor i1 %4, true, !dbg !1942
  br i1 %5, label %cond.true, label %if.else, !dbg !1943

cond.true:                                        ; preds = %entry
    #dbg_value(%runtime._string %1, !1936, !DIExpression(), !1944)
  %len = extractvalue %runtime._string %1, 1, !dbg !1945
  %6 = icmp uge i64 0, %len, !dbg !1945
  br i1 %6, label %lookup.throw, label %lookup.next, !dbg !1945

lookup.next:                                      ; preds = %cond.true
  %7 = extractvalue %runtime._string %1, 0, !dbg !1945
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !1945
  %9 = load i8, ptr %8, align 1, !dbg !1945
  %10 = icmp ult i8 %9, -128, !dbg !1946
  br i1 %10, label %if.then, label %if.else, !dbg !1943

if.then:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !1936, !DIExpression(), !1947)
  %len1 = extractvalue %runtime._string %1, 1, !dbg !1948
  %11 = icmp uge i64 0, %len1, !dbg !1948
  br i1 %11, label %lookup.throw2, label %lookup.next3, !dbg !1948

lookup.next3:                                     ; preds = %if.then
  %12 = extractvalue %runtime._string %1, 0, !dbg !1948
  %13 = getelementptr inbounds i8, ptr %12, i64 0, !dbg !1948
  %14 = load i8, ptr %13, align 1, !dbg !1948
  %15 = zext i8 %14 to i32, !dbg !1949
  %16 = insertvalue { i32, i64 } zeroinitializer, i32 %15, 0, !dbg !1950
  %17 = insertvalue { i32, i64 } %16, i64 1, 1, !dbg !1950
  ret { i32, i64 } %17, !dbg !1950

if.else:                                          ; preds = %lookup.next, %entry
    #dbg_value(%runtime._string %1, !1936, !DIExpression(), !1951)
  %18 = extractvalue %runtime._string %1, 0, !dbg !1952
  %19 = extractvalue %runtime._string %1, 1, !dbg !1952
  %20 = call { i32, i64 } @"unicode/utf8.decodeRuneInStringSlow"(ptr %18, i64 %19, ptr undef), !dbg !1952
  %21 = extractvalue { i32, i64 } %20, 0, !dbg !1952
    #dbg_value(i32 %21, !1937, !DIExpression(), !1953)
  %22 = extractvalue { i32, i64 } %20, 1, !dbg !1952
    #dbg_value(i64 %22, !1939, !DIExpression(), !1954)
  %23 = insertvalue { i32, i64 } zeroinitializer, i32 %21, 0, !dbg !1955
  %24 = insertvalue { i32, i64 } %23, i64 %22, 1, !dbg !1955
  ret { i32, i64 } %24, !dbg !1955

lookup.throw:                                     ; preds = %cond.true
  call void @runtime.lookupPanic(ptr undef), !dbg !1945
  unreachable, !dbg !1945

lookup.throw2:                                    ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !1948
  unreachable, !dbg !1948
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"unicode/utf8.decodeRuneInStringSlow"(ptr readonly %s.data, i64 %s.len, ptr %context) unnamed_addr #0 !dbg !1956 {
entry:
  %accept = alloca %"unicode/utf8.acceptRange", align 8, !dbg !1968
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !1968
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !1968
    #dbg_value(ptr %s.data, !1958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1968)
    #dbg_value(i64 %s.len, !1958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1968)
    #dbg_value(%runtime._string %1, !1958, !DIExpression(), !1969)
  %len = extractvalue %runtime._string %1, 1, !dbg !1970
    #dbg_value(i64 %len, !1959, !DIExpression(), !1971)
    #dbg_value(i64 %len, !1959, !DIExpression(), !1972)
  %2 = icmp slt i64 %len, 1, !dbg !1973
  br i1 %2, label %if.then, label %if.done, !dbg !1974

if.then:                                          ; preds = %entry
  ret { i32, i64 } { i32 65533, i64 0 }, !dbg !1975

if.done:                                          ; preds = %entry
    #dbg_value(%runtime._string %1, !1958, !DIExpression(), !1976)
  %len17 = extractvalue %runtime._string %1, 1, !dbg !1977
  %3 = icmp uge i64 0, %len17, !dbg !1977
  br i1 %3, label %lookup.throw, label %lookup.next, !dbg !1977

lookup.next:                                      ; preds = %if.done
  %4 = extractvalue %runtime._string %1, 0, !dbg !1977
  %5 = getelementptr inbounds i8, ptr %4, i64 0, !dbg !1977
  %6 = load i8, ptr %5, align 1, !dbg !1977
    #dbg_value(i8 %6, !1960, !DIExpression(), !1978)
    #dbg_value(i8 %6, !1960, !DIExpression(), !1979)
  %7 = zext i8 %6 to i64, !dbg !1980
  %8 = icmp uge i64 %7, 256, !dbg !1980
  br i1 %8, label %lookup.throw18, label %lookup.next19, !dbg !1980

lookup.next19:                                    ; preds = %lookup.next
  %9 = getelementptr inbounds [256 x i8], ptr @"unicode/utf8.first", i32 0, i64 %7, !dbg !1980
  %10 = load i8, ptr %9, align 1, !dbg !1980
    #dbg_value(i8 %10, !1961, !DIExpression(), !1981)
    #dbg_value(i8 %10, !1961, !DIExpression(), !1982)
  %11 = icmp uge i8 %10, -16, !dbg !1983
  br i1 %11, label %if.then1, label %if.done2, !dbg !1974

if.then1:                                         ; preds = %lookup.next19
    #dbg_value(i8 %10, !1961, !DIExpression(), !1984)
  %12 = zext i8 %10 to i32, !dbg !1985
  %13 = shl i32 %12, 31, !dbg !1986
  %shift.result = select i1 false, i32 0, i32 %13, !dbg !1986
  %14 = ashr i32 %shift.result, 31, !dbg !1987
    #dbg_value(i32 %14, !1962, !DIExpression(), !1988)
    #dbg_value(%runtime._string %1, !1958, !DIExpression(), !1989)
  %len20 = extractvalue %runtime._string %1, 1, !dbg !1990
  %15 = icmp uge i64 0, %len20, !dbg !1990
  br i1 %15, label %lookup.throw21, label %lookup.next22, !dbg !1990

lookup.next22:                                    ; preds = %if.then1
  %16 = extractvalue %runtime._string %1, 0, !dbg !1990
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !1990
  %18 = load i8, ptr %17, align 1, !dbg !1990
  %19 = zext i8 %18 to i32, !dbg !1991
    #dbg_value(i32 %14, !1962, !DIExpression(), !1992)
  %20 = xor i32 %14, -1, !dbg !1993
  %21 = and i32 %19, %20, !dbg !1993
    #dbg_value(i32 %14, !1962, !DIExpression(), !1994)
  %22 = and i32 65533, %14, !dbg !1995
  %23 = or i32 %21, %22, !dbg !1996
  %24 = insertvalue { i32, i64 } zeroinitializer, i32 %23, 0, !dbg !1997
  %25 = insertvalue { i32, i64 } %24, i64 1, 1, !dbg !1997
  ret { i32, i64 } %25, !dbg !1997

if.done2:                                         ; preds = %lookup.next19
    #dbg_value(i8 %10, !1961, !DIExpression(), !1998)
  %26 = and i8 %10, 7, !dbg !1999
  %27 = zext i8 %26 to i64, !dbg !2000
    #dbg_value(i64 %27, !1963, !DIExpression(), !2001)
  store %"unicode/utf8.acceptRange" zeroinitializer, ptr %accept, align 1, !dbg !1968
    #dbg_value(i8 %10, !1961, !DIExpression(), !2002)
  %28 = lshr i8 %10, 4, !dbg !2003
  %shift.result23 = select i1 false, i8 0, i8 %28, !dbg !2003
  %29 = zext i8 %shift.result23 to i64, !dbg !2004
  %30 = icmp uge i64 %29, 16, !dbg !2004
  br i1 %30, label %lookup.throw24, label %lookup.next25, !dbg !2004

lookup.next25:                                    ; preds = %if.done2
  %31 = getelementptr inbounds [16 x %"unicode/utf8.acceptRange"], ptr @"unicode/utf8.acceptRanges", i32 0, i64 %29, !dbg !2004
  %32 = load %"unicode/utf8.acceptRange", ptr %31, align 1, !dbg !2004
  store %"unicode/utf8.acceptRange" %32, ptr %accept, align 1, !dbg !2005
    #dbg_value(%"unicode/utf8.acceptRange" %32, !1964, !DIExpression(), !2005)
    #dbg_value(i64 %len, !1959, !DIExpression(), !2006)
    #dbg_value(i64 %27, !1963, !DIExpression(), !2007)
  %33 = icmp slt i64 %len, %27, !dbg !2008
  br i1 %33, label %if.then3, label %if.done4, !dbg !1974

if.then3:                                         ; preds = %lookup.next25
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2009

if.done4:                                         ; preds = %lookup.next25
    #dbg_value(%runtime._string %1, !1958, !DIExpression(), !2010)
  %len26 = extractvalue %runtime._string %1, 1, !dbg !2011
  %34 = icmp uge i64 1, %len26, !dbg !2011
  br i1 %34, label %lookup.throw27, label %lookup.next28, !dbg !2011

lookup.next28:                                    ; preds = %if.done4
  %35 = extractvalue %runtime._string %1, 0, !dbg !2011
  %36 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !2011
  %37 = load i8, ptr %36, align 1, !dbg !2011
    #dbg_value(i8 %37, !1965, !DIExpression(), !2012)
    #dbg_value(i8 %37, !1965, !DIExpression(), !2013)
  %38 = getelementptr inbounds %"unicode/utf8.acceptRange", ptr %accept, i32 0, i32 0, !dbg !2014
  %39 = icmp eq ptr %38, null, !dbg !2014
  br i1 %39, label %deref.throw, label %deref.next, !dbg !2014

deref.next:                                       ; preds = %lookup.next28
  %40 = load i8, ptr %38, align 1, !dbg !2014
  %41 = icmp ult i8 %37, %40, !dbg !2015
  br i1 %41, label %if.then5, label %cond.false, !dbg !1974

if.then5:                                         ; preds = %deref.next30, %deref.next
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2016

cond.false:                                       ; preds = %deref.next
  %42 = getelementptr inbounds %"unicode/utf8.acceptRange", ptr %accept, i32 0, i32 1, !dbg !2017
  %43 = icmp eq ptr %42, null, !dbg !2017
  br i1 %43, label %deref.throw29, label %deref.next30, !dbg !2017

deref.next30:                                     ; preds = %cond.false
  %44 = load i8, ptr %42, align 1, !dbg !2017
    #dbg_value(i8 %37, !1965, !DIExpression(), !2018)
  %45 = icmp ult i8 %44, %37, !dbg !2019
  br i1 %45, label %if.then5, label %if.done6, !dbg !1974

if.done6:                                         ; preds = %deref.next30
    #dbg_value(i64 %27, !1963, !DIExpression(), !2020)
  %46 = icmp sle i64 %27, 2, !dbg !2021
  br i1 %46, label %if.then7, label %if.done8, !dbg !1974

if.then7:                                         ; preds = %if.done6
    #dbg_value(i8 %6, !1960, !DIExpression(), !2022)
  %47 = and i8 %6, 31, !dbg !2023
  %48 = zext i8 %47 to i32, !dbg !2024
  %49 = shl i32 %48, 6, !dbg !2025
  %shift.result31 = select i1 false, i32 0, i32 %49, !dbg !2025
    #dbg_value(i8 %37, !1965, !DIExpression(), !2026)
  %50 = and i8 %37, 63, !dbg !2027
  %51 = zext i8 %50 to i32, !dbg !2028
  %52 = or i32 %shift.result31, %51, !dbg !2029
  %53 = insertvalue { i32, i64 } zeroinitializer, i32 %52, 0, !dbg !2030
  %54 = insertvalue { i32, i64 } %53, i64 2, 1, !dbg !2030
  ret { i32, i64 } %54, !dbg !2030

if.done8:                                         ; preds = %if.done6
    #dbg_value(%runtime._string %1, !1958, !DIExpression(), !2031)
  %len32 = extractvalue %runtime._string %1, 1, !dbg !2032
  %55 = icmp uge i64 2, %len32, !dbg !2032
  br i1 %55, label %lookup.throw33, label %lookup.next34, !dbg !2032

lookup.next34:                                    ; preds = %if.done8
  %56 = extractvalue %runtime._string %1, 0, !dbg !2032
  %57 = getelementptr inbounds i8, ptr %56, i64 2, !dbg !2032
  %58 = load i8, ptr %57, align 1, !dbg !2032
    #dbg_value(i8 %58, !1966, !DIExpression(), !2033)
    #dbg_value(i8 %58, !1966, !DIExpression(), !2034)
  %59 = icmp ult i8 %58, -128, !dbg !2035
  br i1 %59, label %if.then9, label %cond.false10, !dbg !1974

if.then9:                                         ; preds = %cond.false10, %lookup.next34
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2036

cond.false10:                                     ; preds = %lookup.next34
    #dbg_value(i8 %58, !1966, !DIExpression(), !2037)
  %60 = icmp ult i8 -65, %58, !dbg !2038
  br i1 %60, label %if.then9, label %if.done11, !dbg !1974

if.done11:                                        ; preds = %cond.false10
    #dbg_value(i64 %27, !1963, !DIExpression(), !2039)
  %61 = icmp sle i64 %27, 3, !dbg !2040
  br i1 %61, label %if.then12, label %if.done13, !dbg !1974

if.then12:                                        ; preds = %if.done11
    #dbg_value(i8 %6, !1960, !DIExpression(), !2041)
  %62 = and i8 %6, 15, !dbg !2042
  %63 = zext i8 %62 to i32, !dbg !2043
  %64 = shl i32 %63, 12, !dbg !2044
  %shift.result35 = select i1 false, i32 0, i32 %64, !dbg !2044
    #dbg_value(i8 %37, !1965, !DIExpression(), !2045)
  %65 = and i8 %37, 63, !dbg !2046
  %66 = zext i8 %65 to i32, !dbg !2047
  %67 = shl i32 %66, 6, !dbg !2048
  %shift.result36 = select i1 false, i32 0, i32 %67, !dbg !2048
  %68 = or i32 %shift.result35, %shift.result36, !dbg !2049
    #dbg_value(i8 %58, !1966, !DIExpression(), !2050)
  %69 = and i8 %58, 63, !dbg !2051
  %70 = zext i8 %69 to i32, !dbg !2052
  %71 = or i32 %68, %70, !dbg !2053
  %72 = insertvalue { i32, i64 } zeroinitializer, i32 %71, 0, !dbg !2054
  %73 = insertvalue { i32, i64 } %72, i64 3, 1, !dbg !2054
  ret { i32, i64 } %73, !dbg !2054

if.done13:                                        ; preds = %if.done11
    #dbg_value(%runtime._string %1, !1958, !DIExpression(), !2055)
  %len37 = extractvalue %runtime._string %1, 1, !dbg !2056
  %74 = icmp uge i64 3, %len37, !dbg !2056
  br i1 %74, label %lookup.throw38, label %lookup.next39, !dbg !2056

lookup.next39:                                    ; preds = %if.done13
  %75 = extractvalue %runtime._string %1, 0, !dbg !2056
  %76 = getelementptr inbounds i8, ptr %75, i64 3, !dbg !2056
  %77 = load i8, ptr %76, align 1, !dbg !2056
    #dbg_value(i8 %77, !1967, !DIExpression(), !2057)
    #dbg_value(i8 %77, !1967, !DIExpression(), !2058)
  %78 = icmp ult i8 %77, -128, !dbg !2059
  br i1 %78, label %if.then14, label %cond.false15, !dbg !1974

if.then14:                                        ; preds = %cond.false15, %lookup.next39
  ret { i32, i64 } { i32 65533, i64 1 }, !dbg !2060

cond.false15:                                     ; preds = %lookup.next39
    #dbg_value(i8 %77, !1967, !DIExpression(), !2061)
  %79 = icmp ult i8 -65, %77, !dbg !2062
  br i1 %79, label %if.then14, label %if.done16, !dbg !1974

if.done16:                                        ; preds = %cond.false15
    #dbg_value(i8 %6, !1960, !DIExpression(), !2063)
  %80 = and i8 %6, 7, !dbg !2064
  %81 = zext i8 %80 to i32, !dbg !2065
  %82 = shl i32 %81, 18, !dbg !2066
  %shift.result40 = select i1 false, i32 0, i32 %82, !dbg !2066
    #dbg_value(i8 %37, !1965, !DIExpression(), !2067)
  %83 = and i8 %37, 63, !dbg !2068
  %84 = zext i8 %83 to i32, !dbg !2069
  %85 = shl i32 %84, 12, !dbg !2070
  %shift.result41 = select i1 false, i32 0, i32 %85, !dbg !2070
  %86 = or i32 %shift.result40, %shift.result41, !dbg !2071
    #dbg_value(i8 %58, !1966, !DIExpression(), !2072)
  %87 = and i8 %58, 63, !dbg !2073
  %88 = zext i8 %87 to i32, !dbg !2074
  %89 = shl i32 %88, 6, !dbg !2075
  %shift.result42 = select i1 false, i32 0, i32 %89, !dbg !2075
  %90 = or i32 %86, %shift.result42, !dbg !2076
    #dbg_value(i8 %77, !1967, !DIExpression(), !2077)
  %91 = and i8 %77, 63, !dbg !2078
  %92 = zext i8 %91 to i32, !dbg !2079
  %93 = or i32 %90, %92, !dbg !2080
  %94 = insertvalue { i32, i64 } zeroinitializer, i32 %93, 0, !dbg !2081
  %95 = insertvalue { i32, i64 } %94, i64 4, 1, !dbg !2081
  ret { i32, i64 } %95, !dbg !2081

lookup.throw:                                     ; preds = %if.done
  call void @runtime.lookupPanic(ptr undef), !dbg !1977
  unreachable, !dbg !1977

lookup.throw18:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !1980
  unreachable, !dbg !1980

lookup.throw21:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !1990
  unreachable, !dbg !1990

lookup.throw24:                                   ; preds = %if.done2
  call void @runtime.lookupPanic(ptr undef), !dbg !2004
  unreachable, !dbg !2004

lookup.throw27:                                   ; preds = %if.done4
  call void @runtime.lookupPanic(ptr undef), !dbg !2011
  unreachable, !dbg !2011

deref.throw:                                      ; preds = %lookup.next28
  call void @runtime.nilPanic(ptr undef), !dbg !2014
  unreachable, !dbg !2014

deref.throw29:                                    ; preds = %cond.false
  call void @runtime.nilPanic(ptr undef), !dbg !2017
  unreachable, !dbg !2017

lookup.throw33:                                   ; preds = %if.done8
  call void @runtime.lookupPanic(ptr undef), !dbg !2032
  unreachable, !dbg !2032

lookup.throw38:                                   ; preds = %if.done13
  call void @runtime.lookupPanic(ptr undef), !dbg !2056
  unreachable, !dbg !2056
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"unicode/utf8.EncodeRune"(ptr %p.data, i64 %p.len, i64 %p.cap, i32 %r, ptr %context) #0 !dbg !2082 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !2092
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !2092
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !2092
    #dbg_value(ptr %p.data, !2090, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2092)
    #dbg_value(i64 %p.len, !2090, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2092)
    #dbg_value(i64 %p.cap, !2090, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2092)
    #dbg_value(i32 %r, !2091, !DIExpression(), !2092)
    #dbg_value(i32 %r, !2091, !DIExpression(), !2093)
  %3 = icmp ule i32 %r, 127, !dbg !2094
  br i1 %3, label %if.then, label %if.done, !dbg !2095

if.then:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2090, !DIExpression(), !2096)
    #dbg_value(i32 %r, !2091, !DIExpression(), !2097)
  %4 = trunc i32 %r to i8, !dbg !2098
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2099
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2099
  %5 = icmp uge i64 0, %indexaddr.len, !dbg !2099
  br i1 %5, label %lookup.throw, label %lookup.next, !dbg !2099

lookup.next:                                      ; preds = %if.then
  %6 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 0, !dbg !2099
  store i8 %4, ptr %6, align 1, !dbg !2099
  ret i64 1, !dbg !2100

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2090, !DIExpression(), !2101)
    #dbg_value(i32 %r, !2091, !DIExpression(), !2102)
  %7 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2103
  %8 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2103
  %9 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2103
  %10 = call i64 @"unicode/utf8.encodeRuneNonASCII"(ptr %7, i64 %8, i64 %9, i32 %r, ptr undef), !dbg !2103
  ret i64 %10, !dbg !2104

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2099
  unreachable, !dbg !2099
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"unicode/utf8.encodeRuneNonASCII"(ptr %p.data, i64 %p.len, i64 %p.cap, i32 %r, ptr %context) unnamed_addr #0 !dbg !2105 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %p.data, 0, !dbg !2110
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %p.len, 1, !dbg !2110
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %p.cap, 2, !dbg !2110
    #dbg_value(ptr %p.data, !2107, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2110)
    #dbg_value(i64 %p.len, !2107, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2110)
    #dbg_value(i64 %p.cap, !2107, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2110)
    #dbg_value(i32 %r, !2108, !DIExpression(), !2110)
    #dbg_value(i32 %r, !2108, !DIExpression(), !2111)
    #dbg_value(i32 %r, !2109, !DIExpression(), !2112)
    #dbg_value(i32 %r, !2109, !DIExpression(), !2113)
  %3 = icmp ule i32 %r, 2047, !dbg !2114
  br i1 %3, label %switch.body, label %switch.next, !dbg !2115

switch.body:                                      ; preds = %entry
    #dbg_value({ ptr, i64, i64 } %2, !2107, !DIExpression(), !2116)
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2117
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2117
  %4 = icmp uge i64 1, %indexaddr.len, !dbg !2117
  br i1 %4, label %lookup.throw, label %lookup.next, !dbg !2117

lookup.next:                                      ; preds = %switch.body
  %5 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 1, !dbg !2117
  %6 = load i8, ptr %5, align 1, !dbg !2117
    #dbg_value({ ptr, i64, i64 } %2, !2107, !DIExpression(), !2118)
    #dbg_value(i32 %r, !2108, !DIExpression(), !2119)
  %7 = ashr i32 %r, 6, !dbg !2120
  %8 = trunc i32 %7 to i8, !dbg !2121
  %9 = or i8 -64, %8, !dbg !2122
  %indexaddr.ptr8 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2123
  %indexaddr.len9 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2123
  %10 = icmp uge i64 0, %indexaddr.len9, !dbg !2123
  br i1 %10, label %lookup.throw10, label %lookup.next11, !dbg !2123

lookup.next11:                                    ; preds = %lookup.next
  %11 = getelementptr inbounds i8, ptr %indexaddr.ptr8, i64 0, !dbg !2123
  store i8 %9, ptr %11, align 1, !dbg !2123
    #dbg_value({ ptr, i64, i64 } %2, !2107, !DIExpression(), !2124)
    #dbg_value(i32 %r, !2108, !DIExpression(), !2125)
  %12 = trunc i32 %r to i8, !dbg !2126
  %13 = and i8 %12, 63, !dbg !2127
  %14 = or i8 -128, %13, !dbg !2128
  %indexaddr.ptr12 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2129
  %indexaddr.len13 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2129
  %15 = icmp uge i64 1, %indexaddr.len13, !dbg !2129
  br i1 %15, label %lookup.throw14, label %lookup.next15, !dbg !2129

lookup.next15:                                    ; preds = %lookup.next11
  %16 = getelementptr inbounds i8, ptr %indexaddr.ptr12, i64 1, !dbg !2129
  store i8 %14, ptr %16, align 1, !dbg !2129
  ret i64 2, !dbg !2130

switch.next:                                      ; preds = %entry
    #dbg_value(i32 %r, !2109, !DIExpression(), !2131)
  %17 = icmp ult i32 %r, 55296, !dbg !2132
  br i1 %17, label %switch.body1, label %switch.next2, !dbg !2115

switch.body1:                                     ; preds = %binop.done, %switch.next
    #dbg_value({ ptr, i64, i64 } %2, !2107, !DIExpression(), !2133)
  %indexaddr.ptr16 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2134
  %indexaddr.len17 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2134
  %18 = icmp uge i64 2, %indexaddr.len17, !dbg !2134
  br i1 %18, label %lookup.throw18, label %lookup.next19, !dbg !2134

lookup.next19:                                    ; preds = %switch.body1
  %19 = getelementptr inbounds i8, ptr %indexaddr.ptr16, i64 2, !dbg !2134
  %20 = load i8, ptr %19, align 1, !dbg !2134
    #dbg_value({ ptr, i64, i64 } %2, !2107, !DIExpression(), !2135)
    #dbg_value(i32 %r, !2108, !DIExpression(), !2136)
  %21 = ashr i32 %r, 12, !dbg !2137
  %22 = trunc i32 %21 to i8, !dbg !2138
  %23 = or i8 -32, %22, !dbg !2139
  %indexaddr.ptr20 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2140
  %indexaddr.len21 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2140
  %24 = icmp uge i64 0, %indexaddr.len21, !dbg !2140
  br i1 %24, label %lookup.throw22, label %lookup.next23, !dbg !2140

lookup.next23:                                    ; preds = %lookup.next19
  %25 = getelementptr inbounds i8, ptr %indexaddr.ptr20, i64 0, !dbg !2140
  store i8 %23, ptr %25, align 1, !dbg !2140
    #dbg_value({ ptr, i64, i64 } %2, !2107, !DIExpression(), !2141)
    #dbg_value(i32 %r, !2108, !DIExpression(), !2142)
  %26 = ashr i32 %r, 6, !dbg !2143
  %27 = trunc i32 %26 to i8, !dbg !2144
  %28 = and i8 %27, 63, !dbg !2145
  %29 = or i8 -128, %28, !dbg !2146
  %indexaddr.ptr24 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2147
  %indexaddr.len25 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2147
  %30 = icmp uge i64 1, %indexaddr.len25, !dbg !2147
  br i1 %30, label %lookup.throw26, label %lookup.next27, !dbg !2147

lookup.next27:                                    ; preds = %lookup.next23
  %31 = getelementptr inbounds i8, ptr %indexaddr.ptr24, i64 1, !dbg !2147
  store i8 %29, ptr %31, align 1, !dbg !2147
    #dbg_value({ ptr, i64, i64 } %2, !2107, !DIExpression(), !2148)
    #dbg_value(i32 %r, !2108, !DIExpression(), !2149)
  %32 = trunc i32 %r to i8, !dbg !2150
  %33 = and i8 %32, 63, !dbg !2151
  %34 = or i8 -128, %33, !dbg !2152
  %indexaddr.ptr28 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2153
  %indexaddr.len29 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2153
  %35 = icmp uge i64 2, %indexaddr.len29, !dbg !2153
  br i1 %35, label %lookup.throw30, label %lookup.next31, !dbg !2153

lookup.next31:                                    ; preds = %lookup.next27
  %36 = getelementptr inbounds i8, ptr %indexaddr.ptr28, i64 2, !dbg !2153
  store i8 %34, ptr %36, align 1, !dbg !2153
  ret i64 3, !dbg !2154

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i32 %r, !2109, !DIExpression(), !2155)
  %37 = icmp ult i32 57343, %r, !dbg !2156
  br i1 %37, label %binop.rhs, label %binop.done, !dbg !2115

binop.rhs:                                        ; preds = %switch.next2
    #dbg_value(i32 %r, !2109, !DIExpression(), !2157)
  %38 = icmp ule i32 %r, 65535, !dbg !2158
  br label %binop.done, !dbg !2115

binop.done:                                       ; preds = %binop.rhs, %switch.next2
  %39 = phi i1 [ false, %switch.next2 ], [ %38, %binop.rhs ], !dbg !2159
  br i1 %39, label %switch.body1, label %switch.next3, !dbg !2115

switch.next3:                                     ; preds = %binop.done
    #dbg_value(i32 %r, !2109, !DIExpression(), !2160)
  %40 = icmp ugt i32 %r, 65535, !dbg !2161
  br i1 %40, label %binop.rhs4, label %binop.done5, !dbg !2115

binop.rhs4:                                       ; preds = %switch.next3
    #dbg_value(i32 %r, !2109, !DIExpression(), !2162)
  %41 = icmp ule i32 %r, 1114111, !dbg !2163
  br label %binop.done5, !dbg !2115

binop.done5:                                      ; preds = %binop.rhs4, %switch.next3
  %42 = phi i1 [ false, %switch.next3 ], [ %41, %binop.rhs4 ], !dbg !2164
  br i1 %42, label %switch.body6, label %switch.next7, !dbg !2115

switch.body6:                                     ; preds = %binop.done5
    #dbg_value({ ptr, i64, i64 } %2, !2107, !DIExpression(), !2165)
  %indexaddr.ptr32 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2166
  %indexaddr.len33 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2166
  %43 = icmp uge i64 3, %indexaddr.len33, !dbg !2166
  br i1 %43, label %lookup.throw34, label %lookup.next35, !dbg !2166

lookup.next35:                                    ; preds = %switch.body6
  %44 = getelementptr inbounds i8, ptr %indexaddr.ptr32, i64 3, !dbg !2166
  %45 = load i8, ptr %44, align 1, !dbg !2166
    #dbg_value({ ptr, i64, i64 } %2, !2107, !DIExpression(), !2167)
    #dbg_value(i32 %r, !2108, !DIExpression(), !2168)
  %46 = ashr i32 %r, 18, !dbg !2169
  %47 = trunc i32 %46 to i8, !dbg !2170
  %48 = or i8 -16, %47, !dbg !2171
  %indexaddr.ptr36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2172
  %indexaddr.len37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2172
  %49 = icmp uge i64 0, %indexaddr.len37, !dbg !2172
  br i1 %49, label %lookup.throw38, label %lookup.next39, !dbg !2172

lookup.next39:                                    ; preds = %lookup.next35
  %50 = getelementptr inbounds i8, ptr %indexaddr.ptr36, i64 0, !dbg !2172
  store i8 %48, ptr %50, align 1, !dbg !2172
    #dbg_value({ ptr, i64, i64 } %2, !2107, !DIExpression(), !2173)
    #dbg_value(i32 %r, !2108, !DIExpression(), !2174)
  %51 = ashr i32 %r, 12, !dbg !2175
  %52 = trunc i32 %51 to i8, !dbg !2176
  %53 = and i8 %52, 63, !dbg !2177
  %54 = or i8 -128, %53, !dbg !2178
  %indexaddr.ptr40 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2179
  %indexaddr.len41 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2179
  %55 = icmp uge i64 1, %indexaddr.len41, !dbg !2179
  br i1 %55, label %lookup.throw42, label %lookup.next43, !dbg !2179

lookup.next43:                                    ; preds = %lookup.next39
  %56 = getelementptr inbounds i8, ptr %indexaddr.ptr40, i64 1, !dbg !2179
  store i8 %54, ptr %56, align 1, !dbg !2179
    #dbg_value({ ptr, i64, i64 } %2, !2107, !DIExpression(), !2180)
    #dbg_value(i32 %r, !2108, !DIExpression(), !2181)
  %57 = ashr i32 %r, 6, !dbg !2182
  %58 = trunc i32 %57 to i8, !dbg !2183
  %59 = and i8 %58, 63, !dbg !2184
  %60 = or i8 -128, %59, !dbg !2185
  %indexaddr.ptr44 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2186
  %indexaddr.len45 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2186
  %61 = icmp uge i64 2, %indexaddr.len45, !dbg !2186
  br i1 %61, label %lookup.throw46, label %lookup.next47, !dbg !2186

lookup.next47:                                    ; preds = %lookup.next43
  %62 = getelementptr inbounds i8, ptr %indexaddr.ptr44, i64 2, !dbg !2186
  store i8 %60, ptr %62, align 1, !dbg !2186
    #dbg_value({ ptr, i64, i64 } %2, !2107, !DIExpression(), !2187)
    #dbg_value(i32 %r, !2108, !DIExpression(), !2188)
  %63 = trunc i32 %r to i8, !dbg !2189
  %64 = and i8 %63, 63, !dbg !2190
  %65 = or i8 -128, %64, !dbg !2191
  %indexaddr.ptr48 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2192
  %indexaddr.len49 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2192
  %66 = icmp uge i64 3, %indexaddr.len49, !dbg !2192
  br i1 %66, label %lookup.throw50, label %lookup.next51, !dbg !2192

lookup.next51:                                    ; preds = %lookup.next47
  %67 = getelementptr inbounds i8, ptr %indexaddr.ptr48, i64 3, !dbg !2192
  store i8 %65, ptr %67, align 1, !dbg !2192
  ret i64 4, !dbg !2193

switch.next7:                                     ; preds = %binop.done5
    #dbg_value({ ptr, i64, i64 } %2, !2107, !DIExpression(), !2194)
  %indexaddr.ptr52 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2195
  %indexaddr.len53 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2195
  %68 = icmp uge i64 2, %indexaddr.len53, !dbg !2195
  br i1 %68, label %lookup.throw54, label %lookup.next55, !dbg !2195

lookup.next55:                                    ; preds = %switch.next7
  %69 = getelementptr inbounds i8, ptr %indexaddr.ptr52, i64 2, !dbg !2195
  %70 = load i8, ptr %69, align 1, !dbg !2195
    #dbg_value({ ptr, i64, i64 } %2, !2107, !DIExpression(), !2196)
  %indexaddr.ptr56 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2197
  %indexaddr.len57 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2197
  %71 = icmp uge i64 0, %indexaddr.len57, !dbg !2197
  br i1 %71, label %lookup.throw58, label %lookup.next59, !dbg !2197

lookup.next59:                                    ; preds = %lookup.next55
  %72 = getelementptr inbounds i8, ptr %indexaddr.ptr56, i64 0, !dbg !2197
  store i8 -17, ptr %72, align 1, !dbg !2197
    #dbg_value({ ptr, i64, i64 } %2, !2107, !DIExpression(), !2198)
  %indexaddr.ptr60 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2199
  %indexaddr.len61 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2199
  %73 = icmp uge i64 1, %indexaddr.len61, !dbg !2199
  br i1 %73, label %lookup.throw62, label %lookup.next63, !dbg !2199

lookup.next63:                                    ; preds = %lookup.next59
  %74 = getelementptr inbounds i8, ptr %indexaddr.ptr60, i64 1, !dbg !2199
  store i8 -65, ptr %74, align 1, !dbg !2199
    #dbg_value({ ptr, i64, i64 } %2, !2107, !DIExpression(), !2200)
  %indexaddr.ptr64 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2201
  %indexaddr.len65 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2201
  %75 = icmp uge i64 2, %indexaddr.len65, !dbg !2201
  br i1 %75, label %lookup.throw66, label %lookup.next67, !dbg !2201

lookup.next67:                                    ; preds = %lookup.next63
  %76 = getelementptr inbounds i8, ptr %indexaddr.ptr64, i64 2, !dbg !2201
  store i8 -67, ptr %76, align 1, !dbg !2201
  ret i64 3, !dbg !2202

lookup.throw:                                     ; preds = %switch.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2117
  unreachable, !dbg !2117

lookup.throw10:                                   ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !2123
  unreachable, !dbg !2123

lookup.throw14:                                   ; preds = %lookup.next11
  call void @runtime.lookupPanic(ptr undef), !dbg !2129
  unreachable, !dbg !2129

lookup.throw18:                                   ; preds = %switch.body1
  call void @runtime.lookupPanic(ptr undef), !dbg !2134
  unreachable, !dbg !2134

lookup.throw22:                                   ; preds = %lookup.next19
  call void @runtime.lookupPanic(ptr undef), !dbg !2140
  unreachable, !dbg !2140

lookup.throw26:                                   ; preds = %lookup.next23
  call void @runtime.lookupPanic(ptr undef), !dbg !2147
  unreachable, !dbg !2147

lookup.throw30:                                   ; preds = %lookup.next27
  call void @runtime.lookupPanic(ptr undef), !dbg !2153
  unreachable, !dbg !2153

lookup.throw34:                                   ; preds = %switch.body6
  call void @runtime.lookupPanic(ptr undef), !dbg !2166
  unreachable, !dbg !2166

lookup.throw38:                                   ; preds = %lookup.next35
  call void @runtime.lookupPanic(ptr undef), !dbg !2172
  unreachable, !dbg !2172

lookup.throw42:                                   ; preds = %lookup.next39
  call void @runtime.lookupPanic(ptr undef), !dbg !2179
  unreachable, !dbg !2179

lookup.throw46:                                   ; preds = %lookup.next43
  call void @runtime.lookupPanic(ptr undef), !dbg !2186
  unreachable, !dbg !2186

lookup.throw50:                                   ; preds = %lookup.next47
  call void @runtime.lookupPanic(ptr undef), !dbg !2192
  unreachable, !dbg !2192

lookup.throw54:                                   ; preds = %switch.next7
  call void @runtime.lookupPanic(ptr undef), !dbg !2195
  unreachable, !dbg !2195

lookup.throw58:                                   ; preds = %lookup.next55
  call void @runtime.lookupPanic(ptr undef), !dbg !2197
  unreachable, !dbg !2197

lookup.throw62:                                   ; preds = %lookup.next59
  call void @runtime.lookupPanic(ptr undef), !dbg !2199
  unreachable, !dbg !2199

lookup.throw66:                                   ; preds = %lookup.next63
  call void @runtime.lookupPanic(ptr undef), !dbg !2201
  unreachable, !dbg !2201
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"unicode/utf8.ValidRune"(i32 %r, ptr %context) #0 !dbg !2203 {
entry:
    #dbg_value(i32 %r, !2207, !DIExpression(), !2208)
    #dbg_value(i32 %r, !2207, !DIExpression(), !2209)
  %0 = icmp sle i32 0, %r, !dbg !2210
  br i1 %0, label %binop.rhs, label %binop.done, !dbg !2211

binop.rhs:                                        ; preds = %entry
    #dbg_value(i32 %r, !2207, !DIExpression(), !2212)
  %1 = icmp slt i32 %r, 55296, !dbg !2213
  br label %binop.done, !dbg !2211

binop.done:                                       ; preds = %binop.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %1, %binop.rhs ], !dbg !2214
  br i1 %2, label %switch.body, label %switch.next, !dbg !2211

switch.body:                                      ; preds = %binop.done
  ret i1 true, !dbg !2215

switch.next:                                      ; preds = %binop.done
    #dbg_value(i32 %r, !2207, !DIExpression(), !2216)
  %3 = icmp slt i32 57343, %r, !dbg !2217
  br i1 %3, label %binop.rhs1, label %binop.done2, !dbg !2211

binop.rhs1:                                       ; preds = %switch.next
    #dbg_value(i32 %r, !2207, !DIExpression(), !2218)
  %4 = icmp sle i32 %r, 1114111, !dbg !2219
  br label %binop.done2, !dbg !2211

binop.done2:                                      ; preds = %binop.rhs1, %switch.next
  %5 = phi i1 [ false, %switch.next ], [ %4, %binop.rhs1 ], !dbg !2220
  br i1 %5, label %switch.body3, label %switch.next4, !dbg !2211

switch.body3:                                     ; preds = %binop.done2
  ret i1 true, !dbg !2221

switch.next4:                                     ; preds = %binop.done2
  ret i1 false, !dbg !2222
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable(sync)
define internal i8 @"(*internal/reflectlite.RawType).Kind"(ptr dereferenceable_or_null(1) %t, ptr %context) #0 !dbg !2223 {
entry:
    #dbg_value(ptr %t, !2227, !DIExpression(), !2229)
    #dbg_value(ptr %t, !2227, !DIExpression(), !2230)
  %0 = icmp eq ptr %t, null, !dbg !2231
  br i1 %0, label %if.then, label %if.done, !dbg !2232

if.then:                                          ; preds = %entry
  ret i8 0, !dbg !2233

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2227, !DIExpression(), !2234)
  %1 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2235
    #dbg_value(i64 %1, !2228, !DIExpression(), !2236)
    #dbg_value(i64 %1, !2228, !DIExpression(), !2237)
  %2 = icmp ne i64 %1, 0, !dbg !2238
  br i1 %2, label %if.then1, label %if.done2, !dbg !2232

if.then1:                                         ; preds = %if.done
  ret i8 21, !dbg !2239

if.done2:                                         ; preds = %if.done
    #dbg_value(ptr %t, !2227, !DIExpression(), !2240)
  %3 = icmp eq ptr %t, null, !dbg !2241
  br i1 %3, label %gep.throw, label %gep.next, !dbg !2241

gep.next:                                         ; preds = %if.done2
  %4 = getelementptr inbounds %"internal/reflectlite.RawType", ptr %t, i32 0, i32 0, !dbg !2241
  %5 = icmp eq ptr %4, null, !dbg !2241
  br i1 %5, label %deref.throw, label %deref.next, !dbg !2241

deref.next:                                       ; preds = %gep.next
  %6 = load i8, ptr %4, align 1, !dbg !2241
  %7 = and i8 %6, 31, !dbg !2242
  ret i8 %7, !dbg !2243

gep.throw:                                        ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2241
  unreachable, !dbg !2241

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2241
  unreachable, !dbg !2241
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).elem"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #0 !dbg !2244 {
entry:
    #dbg_value(ptr %t, !2246, !DIExpression(), !2250)
    #dbg_value(ptr %t, !2246, !DIExpression(), !2251)
  %0 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2252
    #dbg_value(i64 %0, !2247, !DIExpression(), !2253)
    #dbg_value(i64 %0, !2247, !DIExpression(), !2254)
  %1 = icmp ne i64 %0, 0, !dbg !2255
  br i1 %1, label %if.then, label %if.done, !dbg !2256

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2246, !DIExpression(), !2257)
  %2 = getelementptr i8, ptr %t, i64 -1, !dbg !2258
  ret ptr %2, !dbg !2259

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2246, !DIExpression(), !2260)
  %3 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2261
    #dbg_value(ptr %3, !2248, !DIExpression(), !2262)
    #dbg_value(ptr %3, !2248, !DIExpression(), !2263)
  %4 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %3, ptr undef), !dbg !2264
  %5 = icmp eq i8 %4, 21, !dbg !2265
  br i1 %5, label %switch.body, label %switch.next, !dbg !2256

switch.body:                                      ; preds = %if.done
    #dbg_value(ptr %3, !2248, !DIExpression(), !2266)
  %6 = getelementptr inbounds %"internal/reflectlite.ptrType", ptr %3, i32 0, i32 2, !dbg !2267
  %7 = icmp eq ptr %6, null, !dbg !2267
  br i1 %7, label %deref.throw, label %deref.next, !dbg !2267

deref.next:                                       ; preds = %switch.body
  %8 = load ptr, ptr %6, align 8, !dbg !2267
  ret ptr %8, !dbg !2268

switch.next:                                      ; preds = %if.done
  %9 = icmp eq i8 %4, 19, !dbg !2269
  br i1 %9, label %switch.body1, label %switch.next2, !dbg !2256

switch.body1:                                     ; preds = %switch.next4, %switch.next3, %switch.next2, %switch.next
    #dbg_value(ptr %3, !2248, !DIExpression(), !2270)
  %10 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %3, i32 0, i32 3, !dbg !2271
  %11 = icmp eq ptr %10, null, !dbg !2271
  br i1 %11, label %deref.throw6, label %deref.next7, !dbg !2271

deref.next7:                                      ; preds = %switch.body1
  %12 = load ptr, ptr %10, align 8, !dbg !2271
  ret ptr %12, !dbg !2272

switch.next2:                                     ; preds = %switch.next
  %13 = icmp eq i8 %4, 22, !dbg !2273
  br i1 %13, label %switch.body1, label %switch.next3, !dbg !2256

switch.next3:                                     ; preds = %switch.next2
  %14 = icmp eq i8 %4, 23, !dbg !2274
  br i1 %14, label %switch.body1, label %switch.next4, !dbg !2256

switch.next4:                                     ; preds = %switch.next3
  %15 = icmp eq i8 %4, 25, !dbg !2275
  br i1 %15, label %switch.body1, label %switch.next5, !dbg !2256

switch.next5:                                     ; preds = %switch.next4
  %16 = load ptr, ptr @"internal/reflectlite.errTypeElem", align 8, !dbg !2276
    #dbg_value(ptr %16, !2249, !DIExpression(), !2276)
  %17 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %16, 1, !dbg !2276
  %18 = extractvalue { ptr, ptr } %17, 0, !dbg !2277
  %19 = extractvalue { ptr, ptr } %17, 1, !dbg !2277
  call void @runtime._panic(ptr %18, ptr %19, ptr undef), !dbg !2277
  unreachable, !dbg !2277

deref.throw:                                      ; preds = %switch.body
  call void @runtime.nilPanic(ptr undef), !dbg !2267
  unreachable, !dbg !2267

deref.throw6:                                     ; preds = %switch.body1
  call void @runtime.nilPanic(ptr undef), !dbg !2271
  unreachable, !dbg !2271
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).Len"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #0 !dbg !2278 {
entry:
    #dbg_value(ptr %t, !2280, !DIExpression(), !2282)
    #dbg_value(ptr %t, !2280, !DIExpression(), !2283)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2284
  %1 = icmp ne i8 %0, 23, !dbg !2285
  br i1 %1, label %if.then, label %if.done, !dbg !2286

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeLen", align 8, !dbg !2287
    #dbg_value(ptr %2, !2281, !DIExpression(), !2287)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2287
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2288
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2288
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2288
  unreachable, !dbg !2288

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2280, !DIExpression(), !2289)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2290
  %7 = getelementptr inbounds %"internal/reflectlite.arrayType", ptr %6, i32 0, i32 4, !dbg !2291
  %8 = icmp eq ptr %7, null, !dbg !2291
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2291

deref.next:                                       ; preds = %if.done
  %9 = load i64, ptr %7, align 8, !dbg !2291
  ret i64 %9, !dbg !2292

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2291
  unreachable, !dbg !2291
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).underlying"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #0 !dbg !2293 {
entry:
    #dbg_value(ptr %t, !2295, !DIExpression(), !2296)
    #dbg_value(ptr %t, !2295, !DIExpression(), !2297)
  %0 = call i1 @"(*internal/reflectlite.RawType).isNamed"(ptr %t, ptr undef), !dbg !2298
  br i1 %0, label %if.then, label %if.done, !dbg !2299

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2295, !DIExpression(), !2300)
  %1 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %t, i32 0, i32 3, !dbg !2301
  %2 = icmp eq ptr %1, null, !dbg !2301
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2301

deref.next:                                       ; preds = %if.then
  %3 = load ptr, ptr %1, align 8, !dbg !2301
  ret ptr %3, !dbg !2302

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2295, !DIExpression(), !2303)
  ret ptr %t, !dbg !2304

deref.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2301
  unreachable, !dbg !2301
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"(*internal/reflectlite.RawType).isNamed"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #0 !dbg !2305 {
entry:
    #dbg_value(ptr %t, !2307, !DIExpression(), !2309)
    #dbg_value(ptr %t, !2307, !DIExpression(), !2310)
  %0 = call i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr %t, ptr undef), !dbg !2311
    #dbg_value(i64 %0, !2308, !DIExpression(), !2312)
    #dbg_value(i64 %0, !2308, !DIExpression(), !2313)
  %1 = icmp ne i64 %0, 0, !dbg !2314
  br i1 %1, label %if.then, label %if.done, !dbg !2315

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !2316

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2307, !DIExpression(), !2317)
  %2 = icmp eq ptr %t, null, !dbg !2318
  br i1 %2, label %gep.throw, label %gep.next, !dbg !2318

gep.next:                                         ; preds = %if.done
  %3 = getelementptr inbounds %"internal/reflectlite.RawType", ptr %t, i32 0, i32 0, !dbg !2318
  %4 = icmp eq ptr %3, null, !dbg !2318
  br i1 %4, label %deref.throw, label %deref.next, !dbg !2318

deref.next:                                       ; preds = %gep.next
  %5 = load i8, ptr %3, align 1, !dbg !2318
  %6 = and i8 %5, 32, !dbg !2319
  %7 = icmp ne i8 %6, 0, !dbg !2320
  ret i1 %7, !dbg !2321

gep.throw:                                        ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2318
  unreachable, !dbg !2318

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2318
  unreachable, !dbg !2318
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).ptrtag"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #0 !dbg !2322 {
entry:
    #dbg_value(ptr %t, !2324, !DIExpression(), !2325)
    #dbg_value(ptr %t, !2324, !DIExpression(), !2326)
  %0 = ptrtoint ptr %t to i64, !dbg !2327
  %1 = and i64 %0, 3, !dbg !2328
  ret i64 %1, !dbg !2329
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.TypeError).Error"(ptr dereferenceable_or_null(16) %e, ptr %context) unnamed_addr #0 !dbg !2330 {
entry:
    #dbg_value(ptr %e, !2334, !DIExpression(), !2335)
    #dbg_value(ptr %e, !2334, !DIExpression(), !2336)
  %0 = icmp eq ptr %e, null, !dbg !2337
  br i1 %0, label %gep.throw, label %gep.next, !dbg !2337

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds { %runtime._string }, ptr %e, i32 0, i32 0, !dbg !2337
  %2 = icmp eq ptr %1, null, !dbg !2337
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2337

deref.next:                                       ; preds = %gep.next
  %3 = load %runtime._string, ptr %1, align 8, !dbg !2337
  %4 = extractvalue %runtime._string %3, 0, !dbg !2338
  %5 = extractvalue %runtime._string %3, 1, !dbg !2338
  %6 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.111", i64 30, ptr %4, i64 %5, ptr undef), !dbg !2338
  %7 = extractvalue %runtime._string %6, 0, !dbg !2339
  %8 = extractvalue %runtime._string %6, 1, !dbg !2339
  %9 = call %runtime._string @runtime.stringConcat(ptr %7, i64 %8, ptr @"internal/reflectlite$string.112", i64 16, ptr undef), !dbg !2339
  ret %runtime._string %9, !dbg !2340

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2337
  unreachable, !dbg !2337

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2337
  unreachable, !dbg !2337
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).ChanDir"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #0 !dbg !2341 {
entry:
    #dbg_value(ptr %t, !2343, !DIExpression(), !2346)
    #dbg_value(ptr %t, !2343, !DIExpression(), !2347)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2348
  %1 = icmp ne i8 %0, 19, !dbg !2349
  br i1 %1, label %if.then, label %if.done, !dbg !2350

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeChanDir", align 8, !dbg !2351
    #dbg_value(ptr %2, !2344, !DIExpression(), !2351)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2351
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2352
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2352
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2352
  unreachable, !dbg !2352

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2343, !DIExpression(), !2353)
  %6 = getelementptr inbounds %"internal/reflectlite.elemType", ptr %t, i32 0, i32 1, !dbg !2354
  %7 = icmp eq ptr %6, null, !dbg !2354
  br i1 %7, label %deref.throw, label %deref.next, !dbg !2354

deref.next:                                       ; preds = %if.done
  %8 = load i16, ptr %6, align 2, !dbg !2354
  %9 = zext i16 %8 to i64, !dbg !2355
    #dbg_value(i64 %9, !2345, !DIExpression(), !2356)
    #dbg_value(i64 %9, !2345, !DIExpression(), !2357)
  ret i64 %9, !dbg !2358

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2354
  unreachable, !dbg !2354
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"(*internal/reflectlite.RawType).NumField"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #0 !dbg !2359 {
entry:
    #dbg_value(ptr %t, !2361, !DIExpression(), !2363)
    #dbg_value(ptr %t, !2361, !DIExpression(), !2364)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2365
  %1 = icmp ne i8 %0, 26, !dbg !2366
  br i1 %1, label %if.then, label %if.done, !dbg !2367

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeNumField", align 8, !dbg !2368
    #dbg_value(ptr %2, !2362, !DIExpression(), !2368)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2368
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2369
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2369
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2369
  unreachable, !dbg !2369

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2361, !DIExpression(), !2370)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2371
  %7 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 5, !dbg !2372
  %8 = icmp eq ptr %7, null, !dbg !2372
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2372

deref.next:                                       ; preds = %if.done
  %9 = load i16, ptr %7, align 2, !dbg !2372
  %10 = zext i16 %9 to i64, !dbg !2373
  ret i64 %10, !dbg !2374

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2372
  unreachable, !dbg !2372
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.RawType).String"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #0 !dbg !2375 {
entry:
    #dbg_value(ptr %t, !2377, !DIExpression(), !2393)
    #dbg_value(ptr %t, !2377, !DIExpression(), !2394)
  %f = alloca %"internal/reflectlite.rawStructField", align 8, !dbg !2395
  %0 = call i1 @"(*internal/reflectlite.RawType).isNamed"(ptr %t, ptr undef), !dbg !2395
  br i1 %0, label %if.then, label %if.done2, !dbg !2396

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !2377, !DIExpression(), !2397)
  %1 = call %runtime._string @"(*internal/reflectlite.RawType).name"(ptr %t, ptr undef), !dbg !2398
    #dbg_value(%runtime._string %1, !2378, !DIExpression(), !2399)
    #dbg_value(%runtime._string %1, !2378, !DIExpression(), !2400)
  %len = extractvalue %runtime._string %1, 1, !dbg !2401
  %2 = icmp uge i64 0, %len, !dbg !2401
  br i1 %2, label %lookup.throw, label %lookup.next, !dbg !2401

lookup.next:                                      ; preds = %if.then
  %3 = extractvalue %runtime._string %1, 0, !dbg !2401
  %4 = getelementptr inbounds i8, ptr %3, i64 0, !dbg !2401
  %5 = load i8, ptr %4, align 1, !dbg !2401
  %6 = icmp eq i8 %5, 46, !dbg !2402
  br i1 %6, label %if.then1, label %if.done, !dbg !2396

if.then1:                                         ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2378, !DIExpression(), !2403)
  %7 = extractvalue %runtime._string %1, 0, !dbg !2404
  %8 = extractvalue %runtime._string %1, 1, !dbg !2404
  %slice.lowhigh = icmp ugt i64 1, %8, !dbg !2404
  %slice.highmax = icmp ugt i64 %8, %8, !dbg !2404
  %slice.maxcap = icmp ugt i64 %8, %8, !dbg !2404
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2404
  %slice.lowcap = or i1 %slice.lowmax, %slice.maxcap, !dbg !2404
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2404

slice.next:                                       ; preds = %if.then1
  %9 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !2404
  %10 = sub i64 %8, 1, !dbg !2404
  %11 = insertvalue %runtime._string undef, ptr %9, 0, !dbg !2404
  %12 = insertvalue %runtime._string %11, i64 %10, 1, !dbg !2404
  ret %runtime._string %12, !dbg !2405

if.done:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %1, !2378, !DIExpression(), !2406)
  ret %runtime._string %1, !dbg !2407

if.done2:                                         ; preds = %entry
    #dbg_value(ptr %t, !2377, !DIExpression(), !2408)
  %13 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2409
  %14 = icmp eq i8 %13, 19, !dbg !2410
  br i1 %14, label %switch.body, label %switch.next10, !dbg !2396

switch.body:                                      ; preds = %if.done2
    #dbg_value(ptr %t, !2377, !DIExpression(), !2411)
  %15 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2412
  %16 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %15, ptr undef), !dbg !2413
    #dbg_value(%runtime._string %16, !2379, !DIExpression(), !2414)
    #dbg_value(ptr %t, !2377, !DIExpression(), !2415)
  %17 = call i64 @"(*internal/reflectlite.RawType).ChanDir"(ptr %t, ptr undef), !dbg !2416
  %18 = icmp eq i64 %17, 2, !dbg !2417
  br i1 %18, label %switch.body3, label %switch.next, !dbg !2396

switch.body3:                                     ; preds = %switch.body
    #dbg_value(%runtime._string %16, !2379, !DIExpression(), !2418)
  %19 = extractvalue %runtime._string %16, 0, !dbg !2419
  %20 = extractvalue %runtime._string %16, 1, !dbg !2419
  %21 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.87", i64 7, ptr %19, i64 %20, ptr undef), !dbg !2419
  ret %runtime._string %21, !dbg !2420

switch.next:                                      ; preds = %switch.body
  %22 = icmp eq i64 %17, 1, !dbg !2421
  br i1 %22, label %switch.body4, label %switch.next5, !dbg !2396

switch.body4:                                     ; preds = %switch.next
    #dbg_value(%runtime._string %16, !2379, !DIExpression(), !2422)
  %23 = extractvalue %runtime._string %16, 0, !dbg !2423
  %24 = extractvalue %runtime._string %16, 1, !dbg !2423
  %25 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.88", i64 7, ptr %23, i64 %24, ptr undef), !dbg !2423
  ret %runtime._string %25, !dbg !2424

switch.next5:                                     ; preds = %switch.next
  %26 = icmp eq i64 %17, 3, !dbg !2425
  br i1 %26, label %switch.body6, label %switch.next9, !dbg !2396

switch.body6:                                     ; preds = %switch.next5
    #dbg_value(%runtime._string %16, !2379, !DIExpression(), !2426)
  %len29 = extractvalue %runtime._string %16, 1, !dbg !2427
  %27 = icmp uge i64 0, %len29, !dbg !2427
  br i1 %27, label %lookup.throw30, label %lookup.next31, !dbg !2427

lookup.next31:                                    ; preds = %switch.body6
  %28 = extractvalue %runtime._string %16, 0, !dbg !2427
  %29 = getelementptr inbounds i8, ptr %28, i64 0, !dbg !2427
  %30 = load i8, ptr %29, align 1, !dbg !2427
  %31 = icmp eq i8 %30, 60, !dbg !2428
  br i1 %31, label %if.then7, label %if.done8, !dbg !2396

if.then7:                                         ; preds = %lookup.next31
    #dbg_value(%runtime._string %16, !2379, !DIExpression(), !2429)
  %32 = extractvalue %runtime._string %16, 0, !dbg !2430
  %33 = extractvalue %runtime._string %16, 1, !dbg !2430
  %34 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.89", i64 6, ptr %32, i64 %33, ptr undef), !dbg !2430
  %35 = extractvalue %runtime._string %34, 0, !dbg !2431
  %36 = extractvalue %runtime._string %34, 1, !dbg !2431
  %37 = call %runtime._string @runtime.stringConcat(ptr %35, i64 %36, ptr @"internal/reflectlite$string.90", i64 1, ptr undef), !dbg !2431
  ret %runtime._string %37, !dbg !2432

if.done8:                                         ; preds = %lookup.next31
    #dbg_value(%runtime._string %16, !2379, !DIExpression(), !2433)
  %38 = extractvalue %runtime._string %16, 0, !dbg !2434
  %39 = extractvalue %runtime._string %16, 1, !dbg !2434
  %40 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.91", i64 5, ptr %38, i64 %39, ptr undef), !dbg !2434
  ret %runtime._string %40, !dbg !2435

switch.next9:                                     ; preds = %switch.next5
    #dbg_value(ptr %t, !2377, !DIExpression(), !2436)
  %41 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2437
  %42 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %41, ptr undef), !dbg !2438
  ret %runtime._string %42, !dbg !2439

switch.next10:                                    ; preds = %if.done2
  %43 = icmp eq i8 %13, 21, !dbg !2440
  br i1 %43, label %switch.body11, label %switch.next12, !dbg !2396

switch.body11:                                    ; preds = %switch.next10
    #dbg_value(ptr %t, !2377, !DIExpression(), !2441)
  %44 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2442
  %45 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %44, ptr undef), !dbg !2443
  %46 = extractvalue %runtime._string %45, 0, !dbg !2444
  %47 = extractvalue %runtime._string %45, 1, !dbg !2444
  %48 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.92", i64 1, ptr %46, i64 %47, ptr undef), !dbg !2444
  ret %runtime._string %48, !dbg !2445

switch.next12:                                    ; preds = %switch.next10
  %49 = icmp eq i8 %13, 22, !dbg !2446
  br i1 %49, label %switch.body13, label %switch.next14, !dbg !2396

switch.body13:                                    ; preds = %switch.next12
    #dbg_value(ptr %t, !2377, !DIExpression(), !2447)
  %50 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2448
  %51 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %50, ptr undef), !dbg !2449
  %52 = extractvalue %runtime._string %51, 0, !dbg !2450
  %53 = extractvalue %runtime._string %51, 1, !dbg !2450
  %54 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.93", i64 2, ptr %52, i64 %53, ptr undef), !dbg !2450
  ret %runtime._string %54, !dbg !2451

switch.next14:                                    ; preds = %switch.next12
  %55 = icmp eq i8 %13, 23, !dbg !2452
  br i1 %55, label %switch.body15, label %switch.next16, !dbg !2396

switch.body15:                                    ; preds = %switch.next14
    #dbg_value(ptr %t, !2377, !DIExpression(), !2453)
  %56 = call i64 @"(*internal/reflectlite.RawType).Len"(ptr %t, ptr undef), !dbg !2454
  %57 = call %runtime._string @"internal/itoa.Itoa"(i64 %56, ptr undef), !dbg !2455
  %58 = extractvalue %runtime._string %57, 0, !dbg !2456
  %59 = extractvalue %runtime._string %57, 1, !dbg !2456
  %60 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.94", i64 1, ptr %58, i64 %59, ptr undef), !dbg !2456
  %61 = extractvalue %runtime._string %60, 0, !dbg !2457
  %62 = extractvalue %runtime._string %60, 1, !dbg !2457
  %63 = call %runtime._string @runtime.stringConcat(ptr %61, i64 %62, ptr @"internal/reflectlite$string.95", i64 1, ptr undef), !dbg !2457
    #dbg_value(ptr %t, !2377, !DIExpression(), !2458)
  %64 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2459
  %65 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %64, ptr undef), !dbg !2460
  %66 = extractvalue %runtime._string %63, 0, !dbg !2461
  %67 = extractvalue %runtime._string %63, 1, !dbg !2461
  %68 = extractvalue %runtime._string %65, 0, !dbg !2461
  %69 = extractvalue %runtime._string %65, 1, !dbg !2461
  %70 = call %runtime._string @runtime.stringConcat(ptr %66, i64 %67, ptr %68, i64 %69, ptr undef), !dbg !2461
  ret %runtime._string %70, !dbg !2462

switch.next16:                                    ; preds = %switch.next14
  %71 = icmp eq i8 %13, 25, !dbg !2463
  br i1 %71, label %switch.body17, label %switch.next18, !dbg !2396

switch.body17:                                    ; preds = %switch.next16
    #dbg_value(ptr %t, !2377, !DIExpression(), !2464)
  %72 = call ptr @"(*internal/reflectlite.RawType).key"(ptr %t, ptr undef), !dbg !2465
  %73 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %72, ptr undef), !dbg !2466
  %74 = extractvalue %runtime._string %73, 0, !dbg !2467
  %75 = extractvalue %runtime._string %73, 1, !dbg !2467
  %76 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.96", i64 4, ptr %74, i64 %75, ptr undef), !dbg !2467
  %77 = extractvalue %runtime._string %76, 0, !dbg !2468
  %78 = extractvalue %runtime._string %76, 1, !dbg !2468
  %79 = call %runtime._string @runtime.stringConcat(ptr %77, i64 %78, ptr @"internal/reflectlite$string.97", i64 1, ptr undef), !dbg !2468
    #dbg_value(ptr %t, !2377, !DIExpression(), !2469)
  %80 = call ptr @"(*internal/reflectlite.RawType).elem"(ptr %t, ptr undef), !dbg !2470
  %81 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %80, ptr undef), !dbg !2471
  %82 = extractvalue %runtime._string %79, 0, !dbg !2472
  %83 = extractvalue %runtime._string %79, 1, !dbg !2472
  %84 = extractvalue %runtime._string %81, 0, !dbg !2472
  %85 = extractvalue %runtime._string %81, 1, !dbg !2472
  %86 = call %runtime._string @runtime.stringConcat(ptr %82, i64 %83, ptr %84, i64 %85, ptr undef), !dbg !2472
  ret %runtime._string %86, !dbg !2473

switch.next18:                                    ; preds = %switch.next16
  %87 = icmp eq i8 %13, 26, !dbg !2474
  br i1 %87, label %switch.body19, label %switch.next26, !dbg !2396

switch.body19:                                    ; preds = %switch.next18
    #dbg_value(ptr %t, !2377, !DIExpression(), !2475)
  %88 = call i64 @"(*internal/reflectlite.RawType).NumField"(ptr %t, ptr undef), !dbg !2476
    #dbg_value(i64 %88, !2380, !DIExpression(), !2477)
    #dbg_value(i64 %88, !2380, !DIExpression(), !2478)
  %89 = icmp eq i64 %88, 0, !dbg !2479
  br i1 %89, label %if.then20, label %if.done21, !dbg !2396

if.then20:                                        ; preds = %switch.body19
  ret %runtime._string { ptr @"internal/reflectlite$string.98", i64 9 }, !dbg !2480

if.done21:                                        ; preds = %switch.body19
    #dbg_value(%runtime._string poison, !2381, !DIExpression(), !2481)
    #dbg_value(i64 0, !2382, !DIExpression(), !2482)
  br label %for.loop, !dbg !2396

for.loop:                                         ; preds = %if.done25, %if.done21
  %90 = phi %runtime._string [ { ptr @"internal/reflectlite$string.106", i64 8 }, %if.done21 ], [ %144, %if.done25 ], !dbg !2481
  %91 = phi i64 [ 0, %if.done21 ], [ %145, %if.done25 ], !dbg !2482
    #dbg_value(i64 %91, !2382, !DIExpression(), !2483)
    #dbg_value(i64 %88, !2380, !DIExpression(), !2484)
  %92 = icmp slt i64 %91, %88, !dbg !2485
  br i1 %92, label %for.body, label %for.done, !dbg !2396

for.body:                                         ; preds = %for.loop
  store %"internal/reflectlite.rawStructField" zeroinitializer, ptr %f, align 8, !dbg !2395
    #dbg_value(ptr %t, !2377, !DIExpression(), !2486)
    #dbg_value(i64 %91, !2382, !DIExpression(), !2487)
  %93 = call %"internal/reflectlite.rawStructField" @"(*internal/reflectlite.RawType).rawField"(ptr %t, i64 %91, ptr undef), !dbg !2488
  store %"internal/reflectlite.rawStructField" %93, ptr %f, align 8, !dbg !2489
    #dbg_value(%"internal/reflectlite.rawStructField" %93, !2383, !DIExpression(), !2489)
  %94 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 0, !dbg !2490
  %95 = icmp eq ptr %94, null, !dbg !2490
  br i1 %95, label %deref.throw, label %deref.next, !dbg !2490

deref.next:                                       ; preds = %for.body
  %96 = load %runtime._string, ptr %94, align 8, !dbg !2490
  %97 = extractvalue %runtime._string %96, 0, !dbg !2491
  %98 = extractvalue %runtime._string %96, 1, !dbg !2491
  %99 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.100", i64 1, ptr %97, i64 %98, ptr undef), !dbg !2491
  %100 = extractvalue %runtime._string %99, 0, !dbg !2492
  %101 = extractvalue %runtime._string %99, 1, !dbg !2492
  %102 = call %runtime._string @runtime.stringConcat(ptr %100, i64 %101, ptr @"internal/reflectlite$string.101", i64 1, ptr undef), !dbg !2492
  %103 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 2, !dbg !2493
  %104 = icmp eq ptr %103, null, !dbg !2493
  br i1 %104, label %deref.throw32, label %deref.next33, !dbg !2493

deref.next33:                                     ; preds = %deref.next
  %105 = load ptr, ptr %103, align 8, !dbg !2493
  %106 = call %runtime._string @"(*internal/reflectlite.RawType).String"(ptr %105, ptr undef), !dbg !2494
  %107 = extractvalue %runtime._string %102, 0, !dbg !2495
  %108 = extractvalue %runtime._string %102, 1, !dbg !2495
  %109 = extractvalue %runtime._string %106, 0, !dbg !2495
  %110 = extractvalue %runtime._string %106, 1, !dbg !2495
  %111 = call %runtime._string @runtime.stringConcat(ptr %107, i64 %108, ptr %109, i64 %110, ptr undef), !dbg !2495
  %112 = extractvalue %runtime._string %90, 0, !dbg !2496
  %113 = extractvalue %runtime._string %90, 1, !dbg !2496
  %114 = extractvalue %runtime._string %111, 0, !dbg !2496
  %115 = extractvalue %runtime._string %111, 1, !dbg !2496
  %116 = call %runtime._string @runtime.stringConcat(ptr %112, i64 %113, ptr %114, i64 %115, ptr undef), !dbg !2496
    #dbg_value(%runtime._string %116, !2381, !DIExpression(), !2496)
  %117 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 3, !dbg !2497
  %118 = icmp eq ptr %117, null, !dbg !2497
  br i1 %118, label %deref.throw34, label %deref.next35, !dbg !2497

deref.next35:                                     ; preds = %deref.next33
  %119 = load %runtime._string, ptr %117, align 8, !dbg !2497
  %120 = extractvalue %runtime._string %119, 0, !dbg !2498
  %121 = extractvalue %runtime._string %119, 1, !dbg !2498
  %122 = call i1 @runtime.stringEqual(ptr %120, i64 %121, ptr null, i64 0, ptr undef), !dbg !2498
  %123 = xor i1 %122, true, !dbg !2498
  br i1 %123, label %if.then22, label %if.done23, !dbg !2396

if.then22:                                        ; preds = %deref.next35
  %124 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %f, i32 0, i32 3, !dbg !2499
  %125 = icmp eq ptr %124, null, !dbg !2499
  br i1 %125, label %deref.throw36, label %deref.next37, !dbg !2499

deref.next37:                                     ; preds = %if.then22
  %126 = load %runtime._string, ptr %124, align 8, !dbg !2499
  %127 = extractvalue %runtime._string %126, 0, !dbg !2500
  %128 = extractvalue %runtime._string %126, 1, !dbg !2500
  %129 = call %runtime._string @"internal/reflectlite.quote"(ptr %127, i64 %128, ptr undef), !dbg !2500
  %130 = extractvalue %runtime._string %129, 0, !dbg !2501
  %131 = extractvalue %runtime._string %129, 1, !dbg !2501
  %132 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.102", i64 1, ptr %130, i64 %131, ptr undef), !dbg !2501
  %133 = extractvalue %runtime._string %116, 0, !dbg !2502
  %134 = extractvalue %runtime._string %116, 1, !dbg !2502
  %135 = extractvalue %runtime._string %132, 0, !dbg !2502
  %136 = extractvalue %runtime._string %132, 1, !dbg !2502
  %137 = call %runtime._string @runtime.stringConcat(ptr %133, i64 %134, ptr %135, i64 %136, ptr undef), !dbg !2502
    #dbg_value(%runtime._string %137, !2381, !DIExpression(), !2502)
  br label %if.done23, !dbg !2396

if.done23:                                        ; preds = %deref.next37, %deref.next35
  %138 = phi %runtime._string [ %116, %deref.next35 ], [ %137, %deref.next37 ], !dbg !2481
    #dbg_value(i64 %91, !2382, !DIExpression(), !2503)
    #dbg_value(i64 %88, !2380, !DIExpression(), !2504)
  %139 = sub i64 %88, 1, !dbg !2505
  %140 = icmp slt i64 %91, %139, !dbg !2506
  br i1 %140, label %if.then24, label %if.done25, !dbg !2396

if.then24:                                        ; preds = %if.done23
  %141 = extractvalue %runtime._string %138, 0, !dbg !2507
  %142 = extractvalue %runtime._string %138, 1, !dbg !2507
  %143 = call %runtime._string @runtime.stringConcat(ptr %141, i64 %142, ptr @"internal/reflectlite$string.103", i64 1, ptr undef), !dbg !2507
    #dbg_value(%runtime._string %143, !2381, !DIExpression(), !2507)
  br label %if.done25, !dbg !2396

if.done25:                                        ; preds = %if.then24, %if.done23
  %144 = phi %runtime._string [ %138, %if.done23 ], [ %143, %if.then24 ], !dbg !2481
  %145 = add i64 %91, 1, !dbg !2508
    #dbg_value(i64 %145, !2382, !DIExpression(), !2508)
  br label %for.loop, !dbg !2396

for.done:                                         ; preds = %for.loop
  %146 = extractvalue %runtime._string %90, 0, !dbg !2509
  %147 = extractvalue %runtime._string %90, 1, !dbg !2509
  %148 = call %runtime._string @runtime.stringConcat(ptr %146, i64 %147, ptr @"internal/reflectlite$string.104", i64 2, ptr undef), !dbg !2509
    #dbg_value(%runtime._string %148, !2381, !DIExpression(), !2509)
    #dbg_value(%runtime._string %148, !2381, !DIExpression(), !2510)
  ret %runtime._string %148, !dbg !2511

switch.next26:                                    ; preds = %switch.next18
  %149 = icmp eq i8 %13, 20, !dbg !2512
  br i1 %149, label %switch.body27, label %switch.next28, !dbg !2396

switch.body27:                                    ; preds = %switch.next26
  ret %runtime._string { ptr @"internal/reflectlite$string.105", i64 12 }, !dbg !2513

switch.next28:                                    ; preds = %switch.next26
    #dbg_value(ptr %t, !2377, !DIExpression(), !2514)
  %150 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2515
  %151 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %150, ptr undef), !dbg !2516
  ret %runtime._string %151, !dbg !2517

lookup.throw:                                     ; preds = %if.then
  call void @runtime.lookupPanic(ptr undef), !dbg !2401
  unreachable, !dbg !2401

slice.throw:                                      ; preds = %if.then1
  call void @runtime.slicePanic(ptr undef), !dbg !2404
  unreachable, !dbg !2404

lookup.throw30:                                   ; preds = %switch.body6
  call void @runtime.lookupPanic(ptr undef), !dbg !2427
  unreachable, !dbg !2427

deref.throw:                                      ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !2490
  unreachable, !dbg !2490

deref.throw32:                                    ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !2493
  unreachable, !dbg !2493

deref.throw34:                                    ; preds = %deref.next33
  call void @runtime.nilPanic(ptr undef), !dbg !2497
  unreachable, !dbg !2497

deref.throw36:                                    ; preds = %if.then22
  call void @runtime.nilPanic(ptr undef), !dbg !2499
  unreachable, !dbg !2499
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"(*internal/reflectlite.RawType).key"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #0 !dbg !2518 {
entry:
    #dbg_value(ptr %t, !2520, !DIExpression(), !2523)
    #dbg_value(ptr %t, !2520, !DIExpression(), !2524)
  %0 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2525
    #dbg_value(ptr %0, !2521, !DIExpression(), !2526)
    #dbg_value(ptr %0, !2521, !DIExpression(), !2527)
  %1 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %0, ptr undef), !dbg !2528
  %2 = icmp ne i8 %1, 25, !dbg !2529
  br i1 %2, label %if.then, label %if.done, !dbg !2530

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @"internal/reflectlite.errTypeKey", align 8, !dbg !2531
    #dbg_value(ptr %3, !2522, !DIExpression(), !2531)
  %4 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %3, 1, !dbg !2531
  %5 = extractvalue { ptr, ptr } %4, 0, !dbg !2532
  %6 = extractvalue { ptr, ptr } %4, 1, !dbg !2532
  call void @runtime._panic(ptr %5, ptr %6, ptr undef), !dbg !2532
  unreachable, !dbg !2532

if.done:                                          ; preds = %entry
    #dbg_value(ptr %0, !2521, !DIExpression(), !2533)
  %7 = getelementptr inbounds %"internal/reflectlite.namedType", ptr %0, i32 0, i32 4, !dbg !2534
  %8 = icmp eq ptr %7, null, !dbg !2534
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2534

deref.next:                                       ; preds = %if.done
  %9 = load ptr, ptr %7, align 8, !dbg !2534
  ret ptr %9, !dbg !2535

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2534
  unreachable, !dbg !2534
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.RawType).name"(ptr dereferenceable_or_null(1) %t, ptr %context) unnamed_addr #0 !dbg !2536 {
entry:
    #dbg_value(ptr %t, !2538, !DIExpression(), !2557)
    #dbg_value(ptr %t, !2538, !DIExpression(), !2558)
    #dbg_value(ptr %t, !2539, !DIExpression(), !2559)
    #dbg_value(ptr %t, !2539, !DIExpression(), !2560)
  %0 = getelementptr i8, ptr %t, i64 32, !dbg !2561
    #dbg_value(ptr %0, !2549, !DIExpression(), !2562)
    #dbg_value(ptr %t, !2539, !DIExpression(), !2563)
  %1 = getelementptr inbounds %"internal/reflectlite.namedType", ptr %t, i32 0, i32 1, !dbg !2564
  %2 = icmp eq ptr %1, null, !dbg !2564
  br i1 %2, label %deref.throw, label %deref.next, !dbg !2564

deref.next:                                       ; preds = %entry
  %3 = load i16, ptr %1, align 2, !dbg !2564
  %4 = and i16 %3, -32768, !dbg !2565
  %5 = icmp ne i16 %4, 0, !dbg !2566
  br i1 %5, label %if.then, label %if.done, !dbg !2567

if.then:                                          ; preds = %deref.next
    #dbg_value(ptr %0, !2549, !DIExpression(), !2568)
    #dbg_value(ptr %0, !2550, !DIExpression(), !2569)
    #dbg_value(ptr %0, !2549, !DIExpression(), !2570)
    #dbg_value(ptr %0, !2550, !DIExpression(), !2571)
  %6 = getelementptr inbounds %"internal/reflectlite.methodSet", ptr %0, i32 0, i32 0, !dbg !2572
  %7 = icmp eq ptr %6, null, !dbg !2572
  br i1 %7, label %deref.throw1, label %deref.next2, !dbg !2572

deref.next2:                                      ; preds = %if.then
  %8 = load i64, ptr %6, align 8, !dbg !2572
  %9 = mul i64 %8, 8, !dbg !2573
  %10 = add i64 8, %9, !dbg !2574
  %11 = getelementptr i8, ptr %0, i64 %10, !dbg !2575
    #dbg_value(ptr %11, !2549, !DIExpression(), !2576)
  br label %if.done, !dbg !2567

if.done:                                          ; preds = %deref.next2, %deref.next
  %12 = phi ptr [ %0, %deref.next ], [ %11, %deref.next2 ], !dbg !2562
    #dbg_value(ptr %12, !2549, !DIExpression(), !2577)
  %13 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %12, ptr undef), !dbg !2578
  ret %runtime._string %13, !dbg !2579

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !2564
  unreachable, !dbg !2564

deref.throw1:                                     ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2572
  unreachable, !dbg !2572
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/reflectlite.rawStructField" @"(*internal/reflectlite.RawType).rawField"(ptr dereferenceable_or_null(1) %t, i64 %n, ptr %context) unnamed_addr #0 !dbg !2580 {
entry:
    #dbg_value(ptr %t, !2584, !DIExpression(), !2608)
    #dbg_value(i64 %n, !2585, !DIExpression(), !2608)
    #dbg_value(ptr %t, !2584, !DIExpression(), !2609)
  %0 = call i8 @"(*internal/reflectlite.RawType).Kind"(ptr %t, ptr undef), !dbg !2610
  %1 = icmp ne i8 %0, 26, !dbg !2611
  br i1 %1, label %if.then, label %if.done, !dbg !2612

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"internal/reflectlite.errTypeField", align 8, !dbg !2613
    #dbg_value(ptr %2, !2586, !DIExpression(), !2613)
  %3 = insertvalue { ptr, ptr } { ptr @"reflect/types.type:pointer:named:internal/reflectlite.TypeError", ptr undef }, ptr %2, 1, !dbg !2613
  %4 = extractvalue { ptr, ptr } %3, 0, !dbg !2614
  %5 = extractvalue { ptr, ptr } %3, 1, !dbg !2614
  call void @runtime._panic(ptr %4, ptr %5, ptr undef), !dbg !2614
  unreachable, !dbg !2614

if.done:                                          ; preds = %entry
    #dbg_value(ptr %t, !2584, !DIExpression(), !2615)
  %6 = call ptr @"(*internal/reflectlite.RawType).underlying"(ptr %t, ptr undef), !dbg !2616
    #dbg_value(ptr %6, !2587, !DIExpression(), !2617)
    #dbg_value(i64 %n, !2585, !DIExpression(), !2618)
    #dbg_value(ptr %6, !2587, !DIExpression(), !2619)
  %7 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 5, !dbg !2620
  %8 = icmp eq ptr %7, null, !dbg !2620
  br i1 %8, label %deref.throw, label %deref.next, !dbg !2620

deref.next:                                       ; preds = %if.done
  %9 = load i16, ptr %7, align 2, !dbg !2620
  %10 = zext i16 %9 to i64, !dbg !2621
  %11 = icmp uge i64 %n, %10, !dbg !2622
  br i1 %11, label %if.then1, label %if.done2, !dbg !2612

if.then1:                                         ; preds = %deref.next
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"internal/reflectlite$pack.108", ptr undef), !dbg !2623
  unreachable, !dbg !2623

if.done2:                                         ; preds = %deref.next
    #dbg_value(ptr %6, !2587, !DIExpression(), !2624)
  %12 = getelementptr inbounds %"internal/reflectlite.structType", ptr %6, i32 0, i32 6, !dbg !2625
  %13 = icmp eq ptr %12, null, !dbg !2626
  br i1 %13, label %gep.throw, label %gep.next, !dbg !2626

gep.next:                                         ; preds = %if.done2
  %14 = getelementptr inbounds [1 x { ptr, ptr }], ptr %12, i32 0, i64 0, !dbg !2626
    #dbg_value(i64 %n, !2585, !DIExpression(), !2627)
  %15 = mul i64 %n, 16, !dbg !2628
  %16 = getelementptr i8, ptr %14, i64 %15, !dbg !2629
    #dbg_value(ptr %16, !2601, !DIExpression(), !2630)
    #dbg_value(ptr %16, !2601, !DIExpression(), !2631)
  %17 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 1, !dbg !2632
  %18 = icmp eq ptr %17, null, !dbg !2632
  br i1 %18, label %deref.throw3, label %deref.next4, !dbg !2632

deref.next4:                                      ; preds = %gep.next
  %19 = load ptr, ptr %17, align 8, !dbg !2632
    #dbg_value(ptr %19, !2603, !DIExpression(), !2633)
    #dbg_value(ptr %19, !2603, !DIExpression(), !2634)
  %20 = load i8, ptr %19, align 1, !dbg !2635
    #dbg_value(i8 %20, !2604, !DIExpression(), !2636)
    #dbg_value(ptr %19, !2603, !DIExpression(), !2637)
  %21 = getelementptr i8, ptr %19, i64 1, !dbg !2638
    #dbg_value(ptr %21, !2603, !DIExpression(), !2639)
    #dbg_value(ptr %21, !2603, !DIExpression(), !2640)
  %22 = icmp eq ptr %21, null, !dbg !2641
  %23 = and i1 %22, true, !dbg !2641
  %24 = or i1 %23, false, !dbg !2641
  br i1 %24, label %unsafe.Slice.throw, label %unsafe.Slice.next, !dbg !2641

unsafe.Slice.next:                                ; preds = %deref.next4
  %25 = insertvalue { ptr, i64, i64 } undef, ptr %21, 0, !dbg !2641
  %26 = insertvalue { ptr, i64, i64 } %25, i64 5, 1, !dbg !2641
  %27 = insertvalue { ptr, i64, i64 } %26, i64 5, 2, !dbg !2641
  %28 = extractvalue { ptr, i64, i64 } %27, 0, !dbg !2642
  %29 = extractvalue { ptr, i64, i64 } %27, 1, !dbg !2642
  %30 = extractvalue { ptr, i64, i64 } %27, 2, !dbg !2642
  %31 = call { i32, i64 } @"internal/reflectlite.uvarint32"(ptr %28, i64 %29, i64 %30, ptr undef), !dbg !2642
  %32 = extractvalue { i32, i64 } %31, 0, !dbg !2642
    #dbg_value(i32 %32, !2605, !DIExpression(), !2643)
  %33 = extractvalue { i32, i64 } %31, 1, !dbg !2642
    #dbg_value(i64 %33, !2606, !DIExpression(), !2644)
    #dbg_value(ptr %21, !2603, !DIExpression(), !2645)
    #dbg_value(i64 %33, !2606, !DIExpression(), !2646)
  %34 = getelementptr i8, ptr %21, i64 %33, !dbg !2647
    #dbg_value(ptr %34, !2603, !DIExpression(), !2648)
    #dbg_value(ptr %34, !2603, !DIExpression(), !2649)
  %35 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %34, ptr undef), !dbg !2650
    #dbg_value(%runtime._string %35, !2607, !DIExpression(), !2651)
    #dbg_value(ptr %34, !2603, !DIExpression(), !2652)
    #dbg_value(%runtime._string %35, !2607, !DIExpression(), !2653)
  %len = extractvalue %runtime._string %35, 1, !dbg !2654
  %36 = getelementptr i8, ptr %34, i64 %len, !dbg !2655
    #dbg_value(ptr %36, !2603, !DIExpression(), !2656)
    #dbg_value(ptr %6, !2587, !DIExpression(), !2657)
    #dbg_value(ptr %16, !2601, !DIExpression(), !2658)
  %37 = getelementptr inbounds { ptr, ptr }, ptr %16, i32 0, i32 0, !dbg !2659
  %38 = icmp eq ptr %37, null, !dbg !2659
  br i1 %38, label %deref.throw5, label %deref.next6, !dbg !2659

deref.next6:                                      ; preds = %unsafe.Slice.next
  %39 = load ptr, ptr %37, align 8, !dbg !2659
    #dbg_value(ptr %36, !2603, !DIExpression(), !2660)
    #dbg_value(i8 %20, !2604, !DIExpression(), !2661)
    #dbg_value(%runtime._string %35, !2607, !DIExpression(), !2662)
    #dbg_value(i32 %32, !2605, !DIExpression(), !2663)
  %40 = extractvalue %runtime._string %35, 0, !dbg !2664
  %41 = extractvalue %runtime._string %35, 1, !dbg !2664
  %42 = call %"internal/reflectlite.rawStructField" @"internal/reflectlite.rawStructFieldFromPointer"(ptr %6, ptr %39, ptr %36, i8 %20, ptr %40, i64 %41, i32 %32, ptr undef), !dbg !2664
  ret %"internal/reflectlite.rawStructField" %42, !dbg !2665

deref.throw:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !2620
  unreachable, !dbg !2620

gep.throw:                                        ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2626
  unreachable, !dbg !2626

deref.throw3:                                     ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2632
  unreachable, !dbg !2632

unsafe.Slice.throw:                               ; preds = %deref.next4
  call void @runtime.unsafeSlicePanic(ptr undef), !dbg !2641
  unreachable, !dbg !2641

deref.throw5:                                     ; preds = %unsafe.Slice.next
  call void @runtime.nilPanic(ptr undef), !dbg !2659
  unreachable, !dbg !2659
}

; Function Attrs: nounwind uwtable(sync)
define internal { i32, i64 } @"internal/reflectlite.uvarint32"(ptr %buf.data, i64 %buf.len, i64 %buf.cap, ptr %context) unnamed_addr #0 !dbg !2666 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %buf.data, 0, !dbg !2675
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %buf.len, 1, !dbg !2675
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %buf.cap, 2, !dbg !2675
    #dbg_value(ptr %buf.data, !2670, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2675)
    #dbg_value(i64 %buf.len, !2670, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2675)
    #dbg_value(i64 %buf.cap, !2670, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2675)
    #dbg_value(i32 0, !2671, !DIExpression(), !2676)
    #dbg_value(i64 0, !2672, !DIExpression(), !2677)
    #dbg_value({ ptr, i64, i64 } %2, !2670, !DIExpression(), !2678)
  %len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2679
  br label %rangeindex.loop, !dbg !2679

rangeindex.loop:                                  ; preds = %if.done, %entry
  %3 = phi i32 [ 0, %entry ], [ %23, %if.done ], !dbg !2676
  %4 = phi i64 [ 0, %entry ], [ %24, %if.done ], !dbg !2677
  %5 = phi i64 [ -1, %entry ], [ %6, %if.done ], !dbg !2679
  %6 = add i64 %5, 1, !dbg !2679
  %7 = icmp slt i64 %6, %len, !dbg !2679
  br i1 %7, label %rangeindex.body, label %rangeindex.done, !dbg !2679

rangeindex.body:                                  ; preds = %rangeindex.loop
  %indexaddr.ptr = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2678
  %indexaddr.len = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2678
  %8 = icmp uge i64 %6, %indexaddr.len, !dbg !2678
  br i1 %8, label %lookup.throw, label %lookup.next, !dbg !2678

lookup.next:                                      ; preds = %rangeindex.body
  %9 = getelementptr inbounds i8, ptr %indexaddr.ptr, i64 %6, !dbg !2678
  %10 = load i8, ptr %9, align 1, !dbg !2679
    #dbg_value(i64 %6, !2673, !DIExpression(), !2680)
    #dbg_value(i8 %10, !2674, !DIExpression(), !2681)
    #dbg_value(i8 %10, !2674, !DIExpression(), !2682)
  %11 = icmp ult i8 %10, -128, !dbg !2683
  br i1 %11, label %if.then, label %if.done, !dbg !2679

if.then:                                          ; preds = %lookup.next
    #dbg_value(i32 %3, !2671, !DIExpression(), !2684)
    #dbg_value(i8 %10, !2674, !DIExpression(), !2685)
  %12 = zext i8 %10 to i32, !dbg !2686
    #dbg_value(i64 %4, !2672, !DIExpression(), !2687)
  %shift.overflow = icmp uge i64 %4, 32, !dbg !2688
  %13 = trunc i64 %4 to i32, !dbg !2688
  %14 = shl i32 %12, %13, !dbg !2688
  %shift.result = select i1 %shift.overflow, i32 0, i32 %14, !dbg !2688
  %15 = or i32 %3, %shift.result, !dbg !2689
    #dbg_value(i64 %6, !2673, !DIExpression(), !2690)
  %16 = add i64 %6, 1, !dbg !2691
  %17 = insertvalue { i32, i64 } zeroinitializer, i32 %15, 0, !dbg !2692
  %18 = insertvalue { i32, i64 } %17, i64 %16, 1, !dbg !2692
  ret { i32, i64 } %18, !dbg !2692

if.done:                                          ; preds = %lookup.next
    #dbg_value(i8 %10, !2674, !DIExpression(), !2693)
  %19 = and i8 %10, 127, !dbg !2694
  %20 = zext i8 %19 to i32, !dbg !2695
    #dbg_value(i64 %4, !2672, !DIExpression(), !2696)
  %shift.overflow1 = icmp uge i64 %4, 32, !dbg !2697
  %21 = trunc i64 %4 to i32, !dbg !2697
  %22 = shl i32 %20, %21, !dbg !2697
  %shift.result2 = select i1 %shift.overflow1, i32 0, i32 %22, !dbg !2697
  %23 = or i32 %3, %shift.result2, !dbg !2698
    #dbg_value(i32 %23, !2671, !DIExpression(), !2698)
  %24 = add i64 %4, 7, !dbg !2699
    #dbg_value(i64 %24, !2672, !DIExpression(), !2699)
  br label %rangeindex.loop, !dbg !2679

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret { i32, i64 } zeroinitializer, !dbg !2700

lookup.throw:                                     ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2678
  unreachable, !dbg !2678
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/reflectlite.readStringZ"(ptr %data, ptr %context) unnamed_addr #0 !dbg !2701 {
entry:
    #dbg_value(ptr %data, !2705, !DIExpression(), !2708)
    #dbg_value(ptr %data, !2705, !DIExpression(), !2709)
    #dbg_value(ptr %data, !2706, !DIExpression(), !2710)
    #dbg_value(i64 0, !2707, !DIExpression(), !2711)
  br label %for.loop, !dbg !2712

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi ptr [ %data, %entry ], [ %5, %for.body ], !dbg !2713
  %1 = phi i64 [ 0, %entry ], [ %4, %for.body ], !dbg !2711
    #dbg_value(ptr %0, !2705, !DIExpression(), !2714)
  %2 = load i8, ptr %0, align 1, !dbg !2715
  %3 = icmp ne i8 %2, 0, !dbg !2716
  br i1 %3, label %for.body, label %for.done, !dbg !2712

for.body:                                         ; preds = %for.loop
  %4 = add i64 %1, 1, !dbg !2717
    #dbg_value(i64 %4, !2707, !DIExpression(), !2717)
    #dbg_value(ptr %0, !2705, !DIExpression(), !2718)
  %5 = getelementptr i8, ptr %0, i64 1, !dbg !2719
    #dbg_value(ptr %5, !2705, !DIExpression(), !2720)
  br label %for.loop, !dbg !2712

for.done:                                         ; preds = %for.loop
  %complit = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 133 to ptr), ptr undef), !dbg !2721
  %6 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !2722
    #dbg_value(ptr %data, !2706, !DIExpression(), !2723)
  %7 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !2724
    #dbg_value(i64 %1, !2707, !DIExpression(), !2725)
  %8 = icmp eq ptr %6, null, !dbg !2722
  br i1 %8, label %store.throw, label %store.next, !dbg !2722

store.next:                                       ; preds = %for.done
  store ptr %data, ptr %6, align 8, !dbg !2722
    #dbg_value(ptr %data, !2706, !DIExpression(), !2723)
  %9 = icmp eq ptr %7, null, !dbg !2724
  br i1 %9, label %store.throw1, label %store.next2, !dbg !2724

store.next2:                                      ; preds = %store.next
  store i64 %1, ptr %7, align 8, !dbg !2724
    #dbg_value(i64 %1, !2707, !DIExpression(), !2725)
  %10 = load %runtime._string, ptr %complit, align 8, !dbg !2726
  ret %runtime._string %10, !dbg !2727

store.throw:                                      ; preds = %for.done
  call void @runtime.nilPanic(ptr undef), !dbg !2722
  unreachable, !dbg !2722

store.throw1:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !2724
  unreachable, !dbg !2724
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/reflectlite.rawStructField" @"internal/reflectlite.rawStructFieldFromPointer"(ptr dereferenceable_or_null(48) %descriptor, ptr dereferenceable_or_null(1) %fieldType, ptr %data, i8 %flagsByte, ptr readonly %name.data, i64 %name.len, i32 %offset, ptr %context) unnamed_addr #0 !dbg !2728 {
entry:
    #dbg_value(ptr %descriptor, !2732, !DIExpression(), !2741)
    #dbg_value(ptr %fieldType, !2733, !DIExpression(), !2741)
    #dbg_value(ptr %data, !2734, !DIExpression(), !2741)
    #dbg_value(i8 %flagsByte, !2735, !DIExpression(), !2741)
  %complit5 = alloca %"internal/reflectlite.rawStructField", align 8, !dbg !2741
  %0 = insertvalue %runtime._string zeroinitializer, ptr %name.data, 0, !dbg !2741
  %1 = insertvalue %runtime._string %0, i64 %name.len, 1, !dbg !2741
    #dbg_value(ptr %name.data, !2736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2741)
    #dbg_value(i64 %name.len, !2736, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2741)
    #dbg_value(i32 %offset, !2737, !DIExpression(), !2741)
    #dbg_value(%runtime._string zeroinitializer, !2738, !DIExpression(), !2742)
    #dbg_value(i8 %flagsByte, !2735, !DIExpression(), !2743)
  %2 = and i8 %flagsByte, 2, !dbg !2744
  %3 = icmp ne i8 %2, 0, !dbg !2745
  br i1 %3, label %if.then, label %if.done, !dbg !2746

if.then:                                          ; preds = %entry
    #dbg_value(ptr %data, !2734, !DIExpression(), !2747)
  %4 = getelementptr i8, ptr %data, i64 1, !dbg !2748
    #dbg_value(ptr %4, !2734, !DIExpression(), !2749)
    #dbg_value(ptr %4, !2734, !DIExpression(), !2750)
  %5 = load i8, ptr %4, align 1, !dbg !2751
  %6 = zext i8 %5 to i64, !dbg !2752
    #dbg_value(i64 %6, !2739, !DIExpression(), !2753)
    #dbg_value(ptr %4, !2734, !DIExpression(), !2754)
  %7 = getelementptr i8, ptr %4, i64 1, !dbg !2755
    #dbg_value(ptr %7, !2734, !DIExpression(), !2756)
  %complit = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 133 to ptr), ptr undef), !dbg !2757
  %8 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !2758
    #dbg_value(ptr %7, !2734, !DIExpression(), !2759)
  %9 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !2760
    #dbg_value(i64 %6, !2739, !DIExpression(), !2761)
  %10 = icmp eq ptr %8, null, !dbg !2758
  br i1 %10, label %store.throw, label %store.next, !dbg !2758

store.next:                                       ; preds = %if.then
  store ptr %7, ptr %8, align 8, !dbg !2758
    #dbg_value(ptr %7, !2734, !DIExpression(), !2759)
  %11 = icmp eq ptr %9, null, !dbg !2760
  br i1 %11, label %store.throw3, label %store.next4, !dbg !2760

store.next4:                                      ; preds = %store.next
  store i64 %6, ptr %9, align 8, !dbg !2760
    #dbg_value(i64 %6, !2739, !DIExpression(), !2761)
  %12 = load %runtime._string, ptr %complit, align 8, !dbg !2762
    #dbg_value(%runtime._string %12, !2738, !DIExpression(), !2763)
  br label %if.done, !dbg !2746

if.done:                                          ; preds = %store.next4, %entry
  %13 = phi %runtime._string [ zeroinitializer, %entry ], [ %12, %store.next4 ], !dbg !2742
    #dbg_value(%runtime._string zeroinitializer, !2740, !DIExpression(), !2764)
    #dbg_value(i8 %flagsByte, !2735, !DIExpression(), !2765)
  %14 = and i8 %flagsByte, 4, !dbg !2766
  %15 = icmp eq i8 %14, 0, !dbg !2767
  br i1 %15, label %if.then1, label %if.done2, !dbg !2746

if.then1:                                         ; preds = %if.done
    #dbg_value(ptr %descriptor, !2732, !DIExpression(), !2768)
  %16 = icmp eq ptr %descriptor, null, !dbg !2769
  br i1 %16, label %gep.throw, label %gep.next, !dbg !2769

gep.next:                                         ; preds = %if.then1
  %17 = getelementptr inbounds %"internal/reflectlite.structType", ptr %descriptor, i32 0, i32 3, !dbg !2769
  %18 = icmp eq ptr %17, null, !dbg !2769
  br i1 %18, label %deref.throw, label %deref.next, !dbg !2769

deref.next:                                       ; preds = %gep.next
  %19 = load ptr, ptr %17, align 8, !dbg !2769
  %20 = call %runtime._string @"internal/reflectlite.readStringZ"(ptr %19, ptr undef), !dbg !2770
    #dbg_value(%runtime._string %20, !2740, !DIExpression(), !2771)
  br label %if.done2, !dbg !2746

if.done2:                                         ; preds = %deref.next, %if.done
  %21 = phi %runtime._string [ zeroinitializer, %if.done ], [ %20, %deref.next ], !dbg !2764
  store %"internal/reflectlite.rawStructField" zeroinitializer, ptr %complit5, align 8, !dbg !2741
  %22 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 0, !dbg !2772
    #dbg_value(%runtime._string %1, !2736, !DIExpression(), !2773)
  %23 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 1, !dbg !2774
    #dbg_value(%runtime._string %21, !2740, !DIExpression(), !2775)
  %24 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 2, !dbg !2776
    #dbg_value(ptr %fieldType, !2733, !DIExpression(), !2777)
  %25 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 3, !dbg !2778
    #dbg_value(%runtime._string %13, !2738, !DIExpression(), !2779)
  %26 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 5, !dbg !2780
    #dbg_value(i8 %flagsByte, !2735, !DIExpression(), !2781)
  %27 = and i8 %flagsByte, 1, !dbg !2782
  %28 = icmp ne i8 %27, 0, !dbg !2783
  %29 = getelementptr inbounds %"internal/reflectlite.rawStructField", ptr %complit5, i32 0, i32 4, !dbg !2784
    #dbg_value(i32 %offset, !2737, !DIExpression(), !2785)
  %30 = zext i32 %offset to i64, !dbg !2786
  %31 = icmp eq ptr %22, null, !dbg !2772
  br i1 %31, label %store.throw6, label %store.next7, !dbg !2772

store.next7:                                      ; preds = %if.done2
  store %runtime._string %1, ptr %22, align 8, !dbg !2772
    #dbg_value(%runtime._string %1, !2736, !DIExpression(), !2773)
  %32 = icmp eq ptr %23, null, !dbg !2774
  br i1 %32, label %store.throw8, label %store.next9, !dbg !2774

store.next9:                                      ; preds = %store.next7
  store %runtime._string %21, ptr %23, align 8, !dbg !2774
    #dbg_value(%runtime._string %21, !2740, !DIExpression(), !2775)
  %33 = icmp eq ptr %24, null, !dbg !2776
  br i1 %33, label %store.throw10, label %store.next11, !dbg !2776

store.next11:                                     ; preds = %store.next9
  store ptr %fieldType, ptr %24, align 8, !dbg !2776
    #dbg_value(ptr %fieldType, !2733, !DIExpression(), !2777)
  %34 = icmp eq ptr %25, null, !dbg !2778
  br i1 %34, label %store.throw12, label %store.next13, !dbg !2778

store.next13:                                     ; preds = %store.next11
  store %runtime._string %13, ptr %25, align 8, !dbg !2778
  %35 = icmp eq ptr %26, null, !dbg !2780
  br i1 %35, label %store.throw14, label %store.next15, !dbg !2780

store.next15:                                     ; preds = %store.next13
  store i1 %28, ptr %26, align 1, !dbg !2780
  %36 = icmp eq ptr %29, null, !dbg !2784
  br i1 %36, label %store.throw16, label %store.next17, !dbg !2784

store.next17:                                     ; preds = %store.next15
  store i64 %30, ptr %29, align 8, !dbg !2784
  %37 = load %"internal/reflectlite.rawStructField", ptr %complit5, align 8, !dbg !2787
  ret %"internal/reflectlite.rawStructField" %37, !dbg !2788

store.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !2758
  unreachable, !dbg !2758

store.throw3:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !2760
  unreachable, !dbg !2760

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !2769
  unreachable, !dbg !2769

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !2769
  unreachable, !dbg !2769

store.throw6:                                     ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !2772
  unreachable, !dbg !2772

store.throw8:                                     ; preds = %store.next7
  call void @runtime.nilPanic(ptr undef), !dbg !2774
  unreachable, !dbg !2774

store.throw10:                                    ; preds = %store.next9
  call void @runtime.nilPanic(ptr undef), !dbg !2776
  unreachable, !dbg !2776

store.throw12:                                    ; preds = %store.next11
  call void @runtime.nilPanic(ptr undef), !dbg !2778
  unreachable, !dbg !2778

store.throw14:                                    ; preds = %store.next13
  call void @runtime.nilPanic(ptr undef), !dbg !2780
  unreachable, !dbg !2780

store.throw16:                                    ; preds = %store.next15
  call void @runtime.nilPanic(ptr undef), !dbg !2784
  unreachable, !dbg !2784
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.Kind).String"(i8 %k, ptr %context) unnamed_addr #0 !dbg !2789 {
entry:
    #dbg_value(i8 %k, !2794, !DIExpression(), !2795)
    #dbg_value(i8 %k, !2794, !DIExpression(), !2796)
  %0 = icmp eq i8 %k, 0, !dbg !2797
  br i1 %0, label %switch.body, label %switch.next, !dbg !2798

switch.body:                                      ; preds = %entry
  ret %runtime._string { ptr @"internal/reflectlite$string.41", i64 7 }, !dbg !2799

switch.next:                                      ; preds = %entry
  %1 = icmp eq i8 %k, 1, !dbg !2800
  br i1 %1, label %switch.body1, label %switch.next2, !dbg !2798

switch.body1:                                     ; preds = %switch.next
  ret %runtime._string { ptr @"internal/reflectlite$string.42", i64 4 }, !dbg !2801

switch.next2:                                     ; preds = %switch.next
  %2 = icmp eq i8 %k, 2, !dbg !2802
  br i1 %2, label %switch.body3, label %switch.next4, !dbg !2798

switch.body3:                                     ; preds = %switch.next2
  ret %runtime._string { ptr @"internal/reflectlite$string.43", i64 3 }, !dbg !2803

switch.next4:                                     ; preds = %switch.next2
  %3 = icmp eq i8 %k, 3, !dbg !2804
  br i1 %3, label %switch.body5, label %switch.next6, !dbg !2798

switch.body5:                                     ; preds = %switch.next4
  ret %runtime._string { ptr @"internal/reflectlite$string.44", i64 4 }, !dbg !2805

switch.next6:                                     ; preds = %switch.next4
  %4 = icmp eq i8 %k, 4, !dbg !2806
  br i1 %4, label %switch.body7, label %switch.next8, !dbg !2798

switch.body7:                                     ; preds = %switch.next6
  ret %runtime._string { ptr @"internal/reflectlite$string.45", i64 5 }, !dbg !2807

switch.next8:                                     ; preds = %switch.next6
  %5 = icmp eq i8 %k, 5, !dbg !2808
  br i1 %5, label %switch.body9, label %switch.next10, !dbg !2798

switch.body9:                                     ; preds = %switch.next8
  ret %runtime._string { ptr @"internal/reflectlite$string.46", i64 5 }, !dbg !2809

switch.next10:                                    ; preds = %switch.next8
  %6 = icmp eq i8 %k, 6, !dbg !2810
  br i1 %6, label %switch.body11, label %switch.next12, !dbg !2798

switch.body11:                                    ; preds = %switch.next10
  ret %runtime._string { ptr @"internal/reflectlite$string.47", i64 5 }, !dbg !2811

switch.next12:                                    ; preds = %switch.next10
  %7 = icmp eq i8 %k, 7, !dbg !2812
  br i1 %7, label %switch.body13, label %switch.next14, !dbg !2798

switch.body13:                                    ; preds = %switch.next12
  ret %runtime._string { ptr @"internal/reflectlite$string.48", i64 4 }, !dbg !2813

switch.next14:                                    ; preds = %switch.next12
  %8 = icmp eq i8 %k, 8, !dbg !2814
  br i1 %8, label %switch.body15, label %switch.next16, !dbg !2798

switch.body15:                                    ; preds = %switch.next14
  ret %runtime._string { ptr @"internal/reflectlite$string.49", i64 5 }, !dbg !2815

switch.next16:                                    ; preds = %switch.next14
  %9 = icmp eq i8 %k, 9, !dbg !2816
  br i1 %9, label %switch.body17, label %switch.next18, !dbg !2798

switch.body17:                                    ; preds = %switch.next16
  ret %runtime._string { ptr @"internal/reflectlite$string.50", i64 6 }, !dbg !2817

switch.next18:                                    ; preds = %switch.next16
  %10 = icmp eq i8 %k, 10, !dbg !2818
  br i1 %10, label %switch.body19, label %switch.next20, !dbg !2798

switch.body19:                                    ; preds = %switch.next18
  ret %runtime._string { ptr @"internal/reflectlite$string.51", i64 6 }, !dbg !2819

switch.next20:                                    ; preds = %switch.next18
  %11 = icmp eq i8 %k, 11, !dbg !2820
  br i1 %11, label %switch.body21, label %switch.next22, !dbg !2798

switch.body21:                                    ; preds = %switch.next20
  ret %runtime._string { ptr @"internal/reflectlite$string.52", i64 6 }, !dbg !2821

switch.next22:                                    ; preds = %switch.next20
  %12 = icmp eq i8 %k, 12, !dbg !2822
  br i1 %12, label %switch.body23, label %switch.next24, !dbg !2798

switch.body23:                                    ; preds = %switch.next22
  ret %runtime._string { ptr @"internal/reflectlite$string.53", i64 7 }, !dbg !2823

switch.next24:                                    ; preds = %switch.next22
  %13 = icmp eq i8 %k, 13, !dbg !2824
  br i1 %13, label %switch.body25, label %switch.next26, !dbg !2798

switch.body25:                                    ; preds = %switch.next24
  ret %runtime._string { ptr @"internal/reflectlite$string.54", i64 7 }, !dbg !2825

switch.next26:                                    ; preds = %switch.next24
  %14 = icmp eq i8 %k, 14, !dbg !2826
  br i1 %14, label %switch.body27, label %switch.next28, !dbg !2798

switch.body27:                                    ; preds = %switch.next26
  ret %runtime._string { ptr @"internal/reflectlite$string.55", i64 7 }, !dbg !2827

switch.next28:                                    ; preds = %switch.next26
  %15 = icmp eq i8 %k, 15, !dbg !2828
  br i1 %15, label %switch.body29, label %switch.next30, !dbg !2798

switch.body29:                                    ; preds = %switch.next28
  ret %runtime._string { ptr @"internal/reflectlite$string.56", i64 9 }, !dbg !2829

switch.next30:                                    ; preds = %switch.next28
  %16 = icmp eq i8 %k, 16, !dbg !2830
  br i1 %16, label %switch.body31, label %switch.next32, !dbg !2798

switch.body31:                                    ; preds = %switch.next30
  ret %runtime._string { ptr @"internal/reflectlite$string.57", i64 10 }, !dbg !2831

switch.next32:                                    ; preds = %switch.next30
  %17 = icmp eq i8 %k, 17, !dbg !2832
  br i1 %17, label %switch.body33, label %switch.next34, !dbg !2798

switch.body33:                                    ; preds = %switch.next32
  ret %runtime._string { ptr @"internal/reflectlite$string.58", i64 6 }, !dbg !2833

switch.next34:                                    ; preds = %switch.next32
  %18 = icmp eq i8 %k, 18, !dbg !2834
  br i1 %18, label %switch.body35, label %switch.next36, !dbg !2798

switch.body35:                                    ; preds = %switch.next34
  ret %runtime._string { ptr @"internal/reflectlite$string.59", i64 14 }, !dbg !2835

switch.next36:                                    ; preds = %switch.next34
  %19 = icmp eq i8 %k, 19, !dbg !2836
  br i1 %19, label %switch.body37, label %switch.next38, !dbg !2798

switch.body37:                                    ; preds = %switch.next36
  ret %runtime._string { ptr @"internal/reflectlite$string.60", i64 4 }, !dbg !2837

switch.next38:                                    ; preds = %switch.next36
  %20 = icmp eq i8 %k, 20, !dbg !2838
  br i1 %20, label %switch.body39, label %switch.next40, !dbg !2798

switch.body39:                                    ; preds = %switch.next38
  ret %runtime._string { ptr @"internal/reflectlite$string.61", i64 9 }, !dbg !2839

switch.next40:                                    ; preds = %switch.next38
  %21 = icmp eq i8 %k, 21, !dbg !2840
  br i1 %21, label %switch.body41, label %switch.next42, !dbg !2798

switch.body41:                                    ; preds = %switch.next40
  ret %runtime._string { ptr @"internal/reflectlite$string.62", i64 3 }, !dbg !2841

switch.next42:                                    ; preds = %switch.next40
  %22 = icmp eq i8 %k, 22, !dbg !2842
  br i1 %22, label %switch.body43, label %switch.next44, !dbg !2798

switch.body43:                                    ; preds = %switch.next42
  ret %runtime._string { ptr @"internal/reflectlite$string.63", i64 5 }, !dbg !2843

switch.next44:                                    ; preds = %switch.next42
  %23 = icmp eq i8 %k, 23, !dbg !2844
  br i1 %23, label %switch.body45, label %switch.next46, !dbg !2798

switch.body45:                                    ; preds = %switch.next44
  ret %runtime._string { ptr @"internal/reflectlite$string.64", i64 5 }, !dbg !2845

switch.next46:                                    ; preds = %switch.next44
  %24 = icmp eq i8 %k, 24, !dbg !2846
  br i1 %24, label %switch.body47, label %switch.next48, !dbg !2798

switch.body47:                                    ; preds = %switch.next46
  ret %runtime._string { ptr @"internal/reflectlite$string.65", i64 4 }, !dbg !2847

switch.next48:                                    ; preds = %switch.next46
  %25 = icmp eq i8 %k, 25, !dbg !2848
  br i1 %25, label %switch.body49, label %switch.next50, !dbg !2798

switch.body49:                                    ; preds = %switch.next48
  ret %runtime._string { ptr @"internal/reflectlite$string.66", i64 3 }, !dbg !2849

switch.next50:                                    ; preds = %switch.next48
  %26 = icmp eq i8 %k, 26, !dbg !2850
  br i1 %26, label %switch.body51, label %switch.next52, !dbg !2798

switch.body51:                                    ; preds = %switch.next50
  ret %runtime._string { ptr @"internal/reflectlite$string.67", i64 6 }, !dbg !2851

switch.next52:                                    ; preds = %switch.next50
    #dbg_value(i8 %k, !2794, !DIExpression(), !2852)
  %27 = sext i8 %k to i64, !dbg !2853
  %28 = call %runtime._string @"internal/itoa.Itoa"(i64 %27, ptr undef), !dbg !2854
  %29 = extractvalue %runtime._string %28, 0, !dbg !2855
  %30 = extractvalue %runtime._string %28, 1, !dbg !2855
  %31 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.68", i64 4, ptr %29, i64 %30, ptr undef), !dbg !2855
  ret %runtime._string %31, !dbg !2856
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"internal/reflectlite.quote"(ptr readonly %s.data, i64 %s.len, ptr %context) unnamed_addr #0 !dbg !2857 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !2863
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !2863
    #dbg_value(ptr %s.data, !2859, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2863)
    #dbg_value(i64 %s.len, !2859, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2863)
    #dbg_value(%runtime._string %1, !2859, !DIExpression(), !2864)
  %len = extractvalue %runtime._string %1, 1, !dbg !2865
  %2 = mul i64 3, %len, !dbg !2866
  %3 = icmp eq i64 %2, -9223372036854775808, !dbg !2867
  %4 = and i1 false, %3, !dbg !2867
  %5 = select i1 %4, i64 1, i64 2, !dbg !2867
  %6 = sdiv i64 %2, %5, !dbg !2867
  %slice.lowhigh = icmp ugt i64 0, %6, !dbg !2868
  %slice.highmax = icmp ugt i64 %6, %6, !dbg !2868
  %slice.maxcap = icmp ugt i64 %6, 9223372036854775807, !dbg !2868
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2868
  %slice.lowcap = or i1 %slice.lowmax, %slice.maxcap, !dbg !2868
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2868

slice.next:                                       ; preds = %entry
  %makeslice.cap = mul i64 1, %6, !dbg !2868
  %makeslice.buf = call align 1 ptr @runtime.alloc(i64 %makeslice.cap, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2868
  %7 = insertvalue { ptr, i64, i64 } undef, ptr %makeslice.buf, 0, !dbg !2868
  %8 = insertvalue { ptr, i64, i64 } %7, i64 0, 1, !dbg !2868
  %9 = insertvalue { ptr, i64, i64 } %8, i64 %6, 2, !dbg !2868
    #dbg_value({ ptr, i64, i64 } %9, !2860, !DIExpression(), !2869)
    #dbg_value({ ptr, i64, i64 } %9, !2860, !DIExpression(), !2870)
  %varargs = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2871
  %10 = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2871
  store i8 34, ptr %10, align 1, !dbg !2871
  %slice.ptr = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2871
  %11 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !2871
  %12 = insertvalue { ptr, i64, i64 } %11, i64 1, 1, !dbg !2871
  %13 = insertvalue { ptr, i64, i64 } %12, i64 1, 2, !dbg !2871
  %append.srcBuf = extractvalue { ptr, i64, i64 } %9, 0, !dbg !2872
  %append.srcLen = extractvalue { ptr, i64, i64 } %9, 1, !dbg !2872
  %append.srcCap = extractvalue { ptr, i64, i64 } %9, 2, !dbg !2872
  %append.elemsBuf = extractvalue { ptr, i64, i64 } %13, 0, !dbg !2872
  %append.elemsLen = extractvalue { ptr, i64, i64 } %13, 1, !dbg !2872
  %append.new = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf, ptr %append.elemsBuf, i64 %append.srcLen, i64 %append.srcCap, i64 %append.elemsLen, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2872
  %append.newPtr = extractvalue { ptr, i64, i64 } %append.new, 0, !dbg !2872
  %append.newLen = extractvalue { ptr, i64, i64 } %append.new, 1, !dbg !2872
  %append.newCap = extractvalue { ptr, i64, i64 } %append.new, 2, !dbg !2872
  %14 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr, 0, !dbg !2872
  %15 = insertvalue { ptr, i64, i64 } %14, i64 %append.newLen, 1, !dbg !2872
  %16 = insertvalue { ptr, i64, i64 } %15, i64 %append.newCap, 2, !dbg !2872
    #dbg_value({ ptr, i64, i64 } %16, !2860, !DIExpression(), !2873)
    #dbg_value(i64 0, !2861, !DIExpression(), !2874)
  br label %for.loop, !dbg !2875

for.loop:                                         ; preds = %slice.next50, %slice.next
  %17 = phi %runtime._string [ %1, %slice.next ], [ %76, %slice.next50 ], !dbg !2876
  %18 = phi { ptr, i64, i64 } [ %16, %slice.next ], [ %70, %slice.next50 ], !dbg !2869
    #dbg_value(%runtime._string %17, !2859, !DIExpression(), !2877)
  %len3 = extractvalue %runtime._string %17, 1, !dbg !2878
  %19 = icmp sgt i64 %len3, 0, !dbg !2879
  br i1 %19, label %for.body, label %for.done, !dbg !2875

for.body:                                         ; preds = %for.loop
    #dbg_value(%runtime._string %17, !2859, !DIExpression(), !2880)
  %len4 = extractvalue %runtime._string %17, 1, !dbg !2881
  %20 = icmp uge i64 0, %len4, !dbg !2881
  br i1 %20, label %lookup.throw, label %lookup.next, !dbg !2881

lookup.next:                                      ; preds = %for.body
  %21 = extractvalue %runtime._string %17, 0, !dbg !2881
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !2881
  %23 = load i8, ptr %22, align 1, !dbg !2881
  %24 = zext i8 %23 to i32, !dbg !2882
    #dbg_value(i32 %24, !2862, !DIExpression(), !2883)
    #dbg_value(i64 1, !2861, !DIExpression(), !2884)
    #dbg_value(i32 %24, !2862, !DIExpression(), !2885)
  %25 = icmp sge i32 %24, 128, !dbg !2886
  br i1 %25, label %if.then, label %if.done, !dbg !2875

if.then:                                          ; preds = %lookup.next
    #dbg_value(%runtime._string %17, !2859, !DIExpression(), !2887)
  %26 = extractvalue %runtime._string %17, 0, !dbg !2888
  %27 = extractvalue %runtime._string %17, 1, !dbg !2888
  %28 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(ptr %26, i64 %27, ptr undef), !dbg !2888
  %29 = extractvalue { i32, i64 } %28, 0, !dbg !2888
    #dbg_value(i32 %29, !2862, !DIExpression(), !2889)
  %30 = extractvalue { i32, i64 } %28, 1, !dbg !2888
    #dbg_value(i64 %30, !2861, !DIExpression(), !2890)
  br label %if.done, !dbg !2875

if.done:                                          ; preds = %if.then, %lookup.next
  %31 = phi i64 [ 1, %lookup.next ], [ %30, %if.then ], !dbg !2874
  %32 = phi i32 [ %24, %lookup.next ], [ %29, %if.then ], !dbg !2883
    #dbg_value(i64 %31, !2861, !DIExpression(), !2891)
  %33 = icmp eq i64 %31, 1, !dbg !2892
  br i1 %33, label %cond.true, label %if.done2, !dbg !2875

cond.true:                                        ; preds = %if.done
    #dbg_value(i32 %32, !2862, !DIExpression(), !2893)
  %34 = icmp eq i32 %32, 65533, !dbg !2894
  br i1 %34, label %if.then1, label %if.done2, !dbg !2875

if.then1:                                         ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } %18, !2860, !DIExpression(), !2895)
  %append.srcBuf5 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2896
  %append.srcLen6 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2896
  %append.srcCap7 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2896
  %append.new8 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf5, ptr @"internal/reflectlite$string.20", i64 %append.srcLen6, i64 %append.srcCap7, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2896
  %append.newPtr9 = extractvalue { ptr, i64, i64 } %append.new8, 0, !dbg !2896
  %append.newLen10 = extractvalue { ptr, i64, i64 } %append.new8, 1, !dbg !2896
  %append.newCap11 = extractvalue { ptr, i64, i64 } %append.new8, 2, !dbg !2896
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr9, 0, !dbg !2896
  %36 = insertvalue { ptr, i64, i64 } %35, i64 %append.newLen10, 1, !dbg !2896
  %37 = insertvalue { ptr, i64, i64 } %36, i64 %append.newCap11, 2, !dbg !2896
    #dbg_value({ ptr, i64, i64 } %37, !2860, !DIExpression(), !2897)
    #dbg_value({ ptr, i64, i64 } %37, !2860, !DIExpression(), !2898)
    #dbg_value(%runtime._string %17, !2859, !DIExpression(), !2899)
  %len12 = extractvalue %runtime._string %17, 1, !dbg !2900
  %38 = icmp uge i64 0, %len12, !dbg !2900
  br i1 %38, label %lookup.throw13, label %lookup.next14, !dbg !2900

lookup.next14:                                    ; preds = %if.then1
  %39 = extractvalue %runtime._string %17, 0, !dbg !2900
  %40 = getelementptr inbounds i8, ptr %39, i64 0, !dbg !2900
  %41 = load i8, ptr %40, align 1, !dbg !2900
  %42 = lshr i8 %41, 4, !dbg !2901
  %shift.result = select i1 false, i8 0, i8 %42, !dbg !2901
  %43 = zext i8 %shift.result to i64, !dbg !2902
  %44 = icmp uge i64 %43, 15, !dbg !2902
  br i1 %44, label %lookup.throw15, label %lookup.next16, !dbg !2902

lookup.next16:                                    ; preds = %lookup.next14
  %45 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.21", i64 %43, !dbg !2902
  %46 = load i8, ptr %45, align 1, !dbg !2902
  %varargs17 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2903
  %47 = getelementptr inbounds [1 x i8], ptr %varargs17, i32 0, i64 0, !dbg !2903
  store i8 %46, ptr %47, align 1, !dbg !2902
  %slice.ptr18 = getelementptr inbounds [1 x i8], ptr %varargs17, i32 0, i64 0, !dbg !2903
  %48 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr18, 0, !dbg !2903
  %49 = insertvalue { ptr, i64, i64 } %48, i64 1, 1, !dbg !2903
  %50 = insertvalue { ptr, i64, i64 } %49, i64 1, 2, !dbg !2903
  %append.srcBuf19 = extractvalue { ptr, i64, i64 } %37, 0, !dbg !2904
  %append.srcLen20 = extractvalue { ptr, i64, i64 } %37, 1, !dbg !2904
  %append.srcCap21 = extractvalue { ptr, i64, i64 } %37, 2, !dbg !2904
  %append.elemsBuf22 = extractvalue { ptr, i64, i64 } %50, 0, !dbg !2904
  %append.elemsLen23 = extractvalue { ptr, i64, i64 } %50, 1, !dbg !2904
  %append.new24 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf19, ptr %append.elemsBuf22, i64 %append.srcLen20, i64 %append.srcCap21, i64 %append.elemsLen23, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2904
  %append.newPtr25 = extractvalue { ptr, i64, i64 } %append.new24, 0, !dbg !2904
  %append.newLen26 = extractvalue { ptr, i64, i64 } %append.new24, 1, !dbg !2904
  %append.newCap27 = extractvalue { ptr, i64, i64 } %append.new24, 2, !dbg !2904
  %51 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr25, 0, !dbg !2904
  %52 = insertvalue { ptr, i64, i64 } %51, i64 %append.newLen26, 1, !dbg !2904
  %53 = insertvalue { ptr, i64, i64 } %52, i64 %append.newCap27, 2, !dbg !2904
    #dbg_value({ ptr, i64, i64 } %53, !2860, !DIExpression(), !2905)
    #dbg_value({ ptr, i64, i64 } %53, !2860, !DIExpression(), !2906)
    #dbg_value(%runtime._string %17, !2859, !DIExpression(), !2907)
  %len28 = extractvalue %runtime._string %17, 1, !dbg !2908
  %54 = icmp uge i64 0, %len28, !dbg !2908
  br i1 %54, label %lookup.throw29, label %lookup.next30, !dbg !2908

lookup.next30:                                    ; preds = %lookup.next16
  %55 = extractvalue %runtime._string %17, 0, !dbg !2908
  %56 = getelementptr inbounds i8, ptr %55, i64 0, !dbg !2908
  %57 = load i8, ptr %56, align 1, !dbg !2908
  %58 = and i8 %57, 15, !dbg !2909
  %59 = zext i8 %58 to i64, !dbg !2910
  %60 = icmp uge i64 %59, 15, !dbg !2910
  br i1 %60, label %lookup.throw31, label %lookup.next32, !dbg !2910

lookup.next32:                                    ; preds = %lookup.next30
  %61 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.22", i64 %59, !dbg !2910
  %62 = load i8, ptr %61, align 1, !dbg !2910
  %varargs33 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2911
  %63 = getelementptr inbounds [1 x i8], ptr %varargs33, i32 0, i64 0, !dbg !2911
  store i8 %62, ptr %63, align 1, !dbg !2910
  %slice.ptr34 = getelementptr inbounds [1 x i8], ptr %varargs33, i32 0, i64 0, !dbg !2911
  %64 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr34, 0, !dbg !2911
  %65 = insertvalue { ptr, i64, i64 } %64, i64 1, 1, !dbg !2911
  %66 = insertvalue { ptr, i64, i64 } %65, i64 1, 2, !dbg !2911
  %append.srcBuf35 = extractvalue { ptr, i64, i64 } %53, 0, !dbg !2912
  %append.srcLen36 = extractvalue { ptr, i64, i64 } %53, 1, !dbg !2912
  %append.srcCap37 = extractvalue { ptr, i64, i64 } %53, 2, !dbg !2912
  %append.elemsBuf38 = extractvalue { ptr, i64, i64 } %66, 0, !dbg !2912
  %append.elemsLen39 = extractvalue { ptr, i64, i64 } %66, 1, !dbg !2912
  %append.new40 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf35, ptr %append.elemsBuf38, i64 %append.srcLen36, i64 %append.srcCap37, i64 %append.elemsLen39, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2912
  %append.newPtr41 = extractvalue { ptr, i64, i64 } %append.new40, 0, !dbg !2912
  %append.newLen42 = extractvalue { ptr, i64, i64 } %append.new40, 1, !dbg !2912
  %append.newCap43 = extractvalue { ptr, i64, i64 } %append.new40, 2, !dbg !2912
  %67 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr41, 0, !dbg !2912
  %68 = insertvalue { ptr, i64, i64 } %67, i64 %append.newLen42, 1, !dbg !2912
  %69 = insertvalue { ptr, i64, i64 } %68, i64 %append.newCap43, 2, !dbg !2912
    #dbg_value({ ptr, i64, i64 } %69, !2860, !DIExpression(), !2913)
  br label %for.post, !dbg !2875

for.post:                                         ; preds = %if.done2, %lookup.next32
  %70 = phi { ptr, i64, i64 } [ %69, %lookup.next32 ], [ %80, %if.done2 ], !dbg !2869
    #dbg_value(%runtime._string %17, !2859, !DIExpression(), !2914)
    #dbg_value(i64 %31, !2861, !DIExpression(), !2915)
  %71 = extractvalue %runtime._string %17, 0, !dbg !2916
  %72 = extractvalue %runtime._string %17, 1, !dbg !2916
  %slice.lowhigh44 = icmp ugt i64 %31, %72, !dbg !2916
  %slice.highmax45 = icmp ugt i64 %72, %72, !dbg !2916
  %slice.maxcap46 = icmp ugt i64 %72, %72, !dbg !2916
  %slice.lowmax47 = or i1 %slice.lowhigh44, %slice.highmax45, !dbg !2916
  %slice.lowcap48 = or i1 %slice.lowmax47, %slice.maxcap46, !dbg !2916
  br i1 %slice.lowcap48, label %slice.throw49, label %slice.next50, !dbg !2916

slice.next50:                                     ; preds = %for.post
  %73 = getelementptr inbounds i8, ptr %71, i64 %31, !dbg !2916
  %74 = sub i64 %72, %31, !dbg !2916
  %75 = insertvalue %runtime._string undef, ptr %73, 0, !dbg !2916
  %76 = insertvalue %runtime._string %75, i64 %74, 1, !dbg !2916
    #dbg_value(%runtime._string %76, !2859, !DIExpression(), !2917)
  br label %for.loop, !dbg !2875

if.done2:                                         ; preds = %cond.true, %if.done
    #dbg_value({ ptr, i64, i64 } %18, !2860, !DIExpression(), !2918)
    #dbg_value(i32 %32, !2862, !DIExpression(), !2919)
  %77 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2920
  %78 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2920
  %79 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2920
  %80 = call { ptr, i64, i64 } @"internal/reflectlite.appendEscapedRune"(ptr %77, i64 %78, i64 %79, i32 %32, ptr undef), !dbg !2920
    #dbg_value({ ptr, i64, i64 } %80, !2860, !DIExpression(), !2921)
  br label %for.post, !dbg !2875

for.done:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %18, !2860, !DIExpression(), !2922)
  %varargs51 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2923
  %81 = getelementptr inbounds [1 x i8], ptr %varargs51, i32 0, i64 0, !dbg !2923
  store i8 34, ptr %81, align 1, !dbg !2923
  %slice.ptr52 = getelementptr inbounds [1 x i8], ptr %varargs51, i32 0, i64 0, !dbg !2923
  %82 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr52, 0, !dbg !2923
  %83 = insertvalue { ptr, i64, i64 } %82, i64 1, 1, !dbg !2923
  %84 = insertvalue { ptr, i64, i64 } %83, i64 1, 2, !dbg !2923
  %append.srcBuf53 = extractvalue { ptr, i64, i64 } %18, 0, !dbg !2924
  %append.srcLen54 = extractvalue { ptr, i64, i64 } %18, 1, !dbg !2924
  %append.srcCap55 = extractvalue { ptr, i64, i64 } %18, 2, !dbg !2924
  %append.elemsBuf56 = extractvalue { ptr, i64, i64 } %84, 0, !dbg !2924
  %append.elemsLen57 = extractvalue { ptr, i64, i64 } %84, 1, !dbg !2924
  %append.new58 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf53, ptr %append.elemsBuf56, i64 %append.srcLen54, i64 %append.srcCap55, i64 %append.elemsLen57, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2924
  %append.newPtr59 = extractvalue { ptr, i64, i64 } %append.new58, 0, !dbg !2924
  %append.newLen60 = extractvalue { ptr, i64, i64 } %append.new58, 1, !dbg !2924
  %append.newCap61 = extractvalue { ptr, i64, i64 } %append.new58, 2, !dbg !2924
  %85 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr59, 0, !dbg !2924
  %86 = insertvalue { ptr, i64, i64 } %85, i64 %append.newLen60, 1, !dbg !2924
  %87 = insertvalue { ptr, i64, i64 } %86, i64 %append.newCap61, 2, !dbg !2924
    #dbg_value({ ptr, i64, i64 } %87, !2860, !DIExpression(), !2925)
    #dbg_value({ ptr, i64, i64 } %87, !2860, !DIExpression(), !2926)
  %88 = extractvalue { ptr, i64, i64 } %87, 0, !dbg !2927
  %89 = extractvalue { ptr, i64, i64 } %87, 1, !dbg !2927
  %90 = extractvalue { ptr, i64, i64 } %87, 2, !dbg !2927
  %91 = call %runtime._string @runtime.stringFromBytes(ptr %88, i64 %89, i64 %90, ptr undef), !dbg !2927
  ret %runtime._string %91, !dbg !2928

slice.throw:                                      ; preds = %entry
  call void @runtime.slicePanic(ptr undef), !dbg !2868
  unreachable, !dbg !2868

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !2881
  unreachable, !dbg !2881

lookup.throw13:                                   ; preds = %if.then1
  call void @runtime.lookupPanic(ptr undef), !dbg !2900
  unreachable, !dbg !2900

lookup.throw15:                                   ; preds = %lookup.next14
  call void @runtime.lookupPanic(ptr undef), !dbg !2902
  unreachable, !dbg !2902

lookup.throw29:                                   ; preds = %lookup.next16
  call void @runtime.lookupPanic(ptr undef), !dbg !2908
  unreachable, !dbg !2908

lookup.throw31:                                   ; preds = %lookup.next30
  call void @runtime.lookupPanic(ptr undef), !dbg !2910
  unreachable, !dbg !2910

slice.throw49:                                    ; preds = %for.post
  call void @runtime.slicePanic(ptr undef), !dbg !2916
  unreachable, !dbg !2916
}

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @"internal/reflectlite.appendEscapedRune"(ptr %buf.data, i64 %buf.len, i64 %buf.cap, i32 %r, ptr %context) unnamed_addr #0 !dbg !2929 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %buf.data, 0, !dbg !2936
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %buf.len, 1, !dbg !2936
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %buf.cap, 2, !dbg !2936
    #dbg_value(ptr %buf.data, !2931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2936)
    #dbg_value(i64 %buf.len, !2931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2936)
    #dbg_value(i64 %buf.cap, !2931, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2936)
    #dbg_value(i32 %r, !2932, !DIExpression(), !2936)
  %runeTmp = call align 1 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2937
    #dbg_value(i32 %r, !2932, !DIExpression(), !2938)
  %3 = icmp eq i32 %r, 34, !dbg !2939
  br i1 %3, label %if.then, label %cond.false, !dbg !2940

if.then:                                          ; preds = %cond.false, %entry
    #dbg_value({ ptr, i64, i64 } %2, !2931, !DIExpression(), !2941)
  %varargs = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2942
  %4 = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2942
  store i8 92, ptr %4, align 1, !dbg !2942
  %slice.ptr = getelementptr inbounds [1 x i8], ptr %varargs, i32 0, i64 0, !dbg !2942
  %5 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr, 0, !dbg !2942
  %6 = insertvalue { ptr, i64, i64 } %5, i64 1, 1, !dbg !2942
  %7 = insertvalue { ptr, i64, i64 } %6, i64 1, 2, !dbg !2942
  %append.srcBuf = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2943
  %append.srcLen = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2943
  %append.srcCap = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2943
  %append.elemsBuf = extractvalue { ptr, i64, i64 } %7, 0, !dbg !2943
  %append.elemsLen = extractvalue { ptr, i64, i64 } %7, 1, !dbg !2943
  %append.new = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf, ptr %append.elemsBuf, i64 %append.srcLen, i64 %append.srcCap, i64 %append.elemsLen, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2943
  %append.newPtr = extractvalue { ptr, i64, i64 } %append.new, 0, !dbg !2943
  %append.newLen = extractvalue { ptr, i64, i64 } %append.new, 1, !dbg !2943
  %append.newCap = extractvalue { ptr, i64, i64 } %append.new, 2, !dbg !2943
  %8 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr, 0, !dbg !2943
  %9 = insertvalue { ptr, i64, i64 } %8, i64 %append.newLen, 1, !dbg !2943
  %10 = insertvalue { ptr, i64, i64 } %9, i64 %append.newCap, 2, !dbg !2943
    #dbg_value({ ptr, i64, i64 } %10, !2931, !DIExpression(), !2944)
    #dbg_value({ ptr, i64, i64 } %10, !2931, !DIExpression(), !2945)
    #dbg_value(i32 %r, !2932, !DIExpression(), !2946)
  %11 = trunc i32 %r to i8, !dbg !2947
  %varargs23 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2948
  %12 = getelementptr inbounds [1 x i8], ptr %varargs23, i32 0, i64 0, !dbg !2948
  store i8 %11, ptr %12, align 1, !dbg !2947
  %slice.ptr24 = getelementptr inbounds [1 x i8], ptr %varargs23, i32 0, i64 0, !dbg !2948
  %13 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr24, 0, !dbg !2948
  %14 = insertvalue { ptr, i64, i64 } %13, i64 1, 1, !dbg !2948
  %15 = insertvalue { ptr, i64, i64 } %14, i64 1, 2, !dbg !2948
  %append.srcBuf25 = extractvalue { ptr, i64, i64 } %10, 0, !dbg !2949
  %append.srcLen26 = extractvalue { ptr, i64, i64 } %10, 1, !dbg !2949
  %append.srcCap27 = extractvalue { ptr, i64, i64 } %10, 2, !dbg !2949
  %append.elemsBuf28 = extractvalue { ptr, i64, i64 } %15, 0, !dbg !2949
  %append.elemsLen29 = extractvalue { ptr, i64, i64 } %15, 1, !dbg !2949
  %append.new30 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf25, ptr %append.elemsBuf28, i64 %append.srcLen26, i64 %append.srcCap27, i64 %append.elemsLen29, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2949
  %append.newPtr31 = extractvalue { ptr, i64, i64 } %append.new30, 0, !dbg !2949
  %append.newLen32 = extractvalue { ptr, i64, i64 } %append.new30, 1, !dbg !2949
  %append.newCap33 = extractvalue { ptr, i64, i64 } %append.new30, 2, !dbg !2949
  %16 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr31, 0, !dbg !2949
  %17 = insertvalue { ptr, i64, i64 } %16, i64 %append.newLen32, 1, !dbg !2949
  %18 = insertvalue { ptr, i64, i64 } %17, i64 %append.newCap33, 2, !dbg !2949
    #dbg_value({ ptr, i64, i64 } %18, !2931, !DIExpression(), !2950)
    #dbg_value({ ptr, i64, i64 } %18, !2931, !DIExpression(), !2951)
  ret { ptr, i64, i64 } %18, !dbg !2952

cond.false:                                       ; preds = %entry
    #dbg_value(i32 %r, !2932, !DIExpression(), !2953)
  %19 = icmp eq i32 %r, 92, !dbg !2954
  br i1 %19, label %if.then, label %if.done, !dbg !2940

if.done:                                          ; preds = %cond.false
    #dbg_value(i32 %r, !2932, !DIExpression(), !2955)
  %20 = call i1 @"internal/reflectlite.isPrint"(i32 %r, ptr undef), !dbg !2956
  br i1 %20, label %if.then1, label %if.done2, !dbg !2940

if.then1:                                         ; preds = %if.done
  %slice.ptr34 = getelementptr inbounds [4 x i8], ptr %runeTmp, i32 0, i64 0, !dbg !2957
  %21 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr34, 0, !dbg !2957
  %22 = insertvalue { ptr, i64, i64 } %21, i64 4, 1, !dbg !2957
  %23 = insertvalue { ptr, i64, i64 } %22, i64 4, 2, !dbg !2957
    #dbg_value(i32 %r, !2932, !DIExpression(), !2958)
  %24 = extractvalue { ptr, i64, i64 } %23, 0, !dbg !2959
  %25 = extractvalue { ptr, i64, i64 } %23, 1, !dbg !2959
  %26 = extractvalue { ptr, i64, i64 } %23, 2, !dbg !2959
  %27 = call i64 @"unicode/utf8.EncodeRune"(ptr %24, i64 %25, i64 %26, i32 %r, ptr undef), !dbg !2959
    #dbg_value(i64 %27, !2933, !DIExpression(), !2960)
    #dbg_value({ ptr, i64, i64 } %2, !2931, !DIExpression(), !2961)
    #dbg_value(i64 %27, !2933, !DIExpression(), !2962)
  %slice.lowhigh = icmp ugt i64 0, %27, !dbg !2963
  %slice.highmax = icmp ugt i64 %27, 4, !dbg !2963
  %slice.lowmax = or i1 %slice.lowhigh, %slice.highmax, !dbg !2963
  %slice.lowcap = or i1 %slice.lowmax, false, !dbg !2963
  br i1 %slice.lowcap, label %slice.throw, label %slice.next, !dbg !2963

slice.next:                                       ; preds = %if.then1
  %slice.len = sub i64 %27, 0, !dbg !2963
  %slice.ptr35 = getelementptr inbounds [4 x i8], ptr %runeTmp, i32 0, i64 0, !dbg !2963
  %28 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr35, 0, !dbg !2963
  %29 = insertvalue { ptr, i64, i64 } %28, i64 %slice.len, 1, !dbg !2963
  %30 = insertvalue { ptr, i64, i64 } %29, i64 4, 2, !dbg !2963
  %append.srcBuf36 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2964
  %append.srcLen37 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2964
  %append.srcCap38 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2964
  %append.elemsBuf39 = extractvalue { ptr, i64, i64 } %30, 0, !dbg !2964
  %append.elemsLen40 = extractvalue { ptr, i64, i64 } %30, 1, !dbg !2964
  %append.new41 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf36, ptr %append.elemsBuf39, i64 %append.srcLen37, i64 %append.srcCap38, i64 %append.elemsLen40, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2964
  %append.newPtr42 = extractvalue { ptr, i64, i64 } %append.new41, 0, !dbg !2964
  %append.newLen43 = extractvalue { ptr, i64, i64 } %append.new41, 1, !dbg !2964
  %append.newCap44 = extractvalue { ptr, i64, i64 } %append.new41, 2, !dbg !2964
  %31 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr42, 0, !dbg !2964
  %32 = insertvalue { ptr, i64, i64 } %31, i64 %append.newLen43, 1, !dbg !2964
  %33 = insertvalue { ptr, i64, i64 } %32, i64 %append.newCap44, 2, !dbg !2964
    #dbg_value({ ptr, i64, i64 } %33, !2931, !DIExpression(), !2965)
    #dbg_value({ ptr, i64, i64 } %33, !2931, !DIExpression(), !2966)
  ret { ptr, i64, i64 } %33, !dbg !2967

if.done2:                                         ; preds = %if.done
    #dbg_value(i32 %r, !2932, !DIExpression(), !2968)
  %34 = icmp eq i32 %r, 7, !dbg !2969
  br i1 %34, label %switch.body, label %switch.next, !dbg !2940

switch.body:                                      ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } %2, !2931, !DIExpression(), !2970)
  %append.srcBuf45 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2971
  %append.srcLen46 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2971
  %append.srcCap47 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2971
  %append.new48 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf45, ptr @"internal/reflectlite$string.23", i64 %append.srcLen46, i64 %append.srcCap47, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2971
  %append.newPtr49 = extractvalue { ptr, i64, i64 } %append.new48, 0, !dbg !2971
  %append.newLen50 = extractvalue { ptr, i64, i64 } %append.new48, 1, !dbg !2971
  %append.newCap51 = extractvalue { ptr, i64, i64 } %append.new48, 2, !dbg !2971
  %35 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr49, 0, !dbg !2971
  %36 = insertvalue { ptr, i64, i64 } %35, i64 %append.newLen50, 1, !dbg !2971
  %37 = insertvalue { ptr, i64, i64 } %36, i64 %append.newCap51, 2, !dbg !2971
    #dbg_value({ ptr, i64, i64 } %37, !2931, !DIExpression(), !2972)
  br label %switch.done, !dbg !2940

switch.done:                                      ; preds = %for.loop21, %for.loop, %lookup.next113, %switch.body13, %switch.body11, %switch.body9, %switch.body7, %switch.body5, %switch.body3, %switch.body
  %38 = phi { ptr, i64, i64 } [ %37, %switch.body ], [ %42, %switch.body3 ], [ %46, %switch.body5 ], [ %50, %switch.body7 ], [ %54, %switch.body9 ], [ %58, %switch.body11 ], [ %62, %switch.body13 ], [ %93, %lookup.next113 ], [ %100, %for.loop ], [ %122, %for.loop21 ], !dbg !2973
    #dbg_value({ ptr, i64, i64 } %38, !2931, !DIExpression(), !2974)
  ret { ptr, i64, i64 } %38, !dbg !2975

switch.next:                                      ; preds = %if.done2
  %39 = icmp eq i32 %r, 8, !dbg !2976
  br i1 %39, label %switch.body3, label %switch.next4, !dbg !2940

switch.body3:                                     ; preds = %switch.next
    #dbg_value({ ptr, i64, i64 } %2, !2931, !DIExpression(), !2977)
  %append.srcBuf52 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2978
  %append.srcLen53 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2978
  %append.srcCap54 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2978
  %append.new55 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf52, ptr @"internal/reflectlite$string.24", i64 %append.srcLen53, i64 %append.srcCap54, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2978
  %append.newPtr56 = extractvalue { ptr, i64, i64 } %append.new55, 0, !dbg !2978
  %append.newLen57 = extractvalue { ptr, i64, i64 } %append.new55, 1, !dbg !2978
  %append.newCap58 = extractvalue { ptr, i64, i64 } %append.new55, 2, !dbg !2978
  %40 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr56, 0, !dbg !2978
  %41 = insertvalue { ptr, i64, i64 } %40, i64 %append.newLen57, 1, !dbg !2978
  %42 = insertvalue { ptr, i64, i64 } %41, i64 %append.newCap58, 2, !dbg !2978
    #dbg_value({ ptr, i64, i64 } %42, !2931, !DIExpression(), !2979)
  br label %switch.done, !dbg !2940

switch.next4:                                     ; preds = %switch.next
  %43 = icmp eq i32 %r, 12, !dbg !2980
  br i1 %43, label %switch.body5, label %switch.next6, !dbg !2940

switch.body5:                                     ; preds = %switch.next4
    #dbg_value({ ptr, i64, i64 } %2, !2931, !DIExpression(), !2981)
  %append.srcBuf59 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2982
  %append.srcLen60 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2982
  %append.srcCap61 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2982
  %append.new62 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf59, ptr @"internal/reflectlite$string.25", i64 %append.srcLen60, i64 %append.srcCap61, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2982
  %append.newPtr63 = extractvalue { ptr, i64, i64 } %append.new62, 0, !dbg !2982
  %append.newLen64 = extractvalue { ptr, i64, i64 } %append.new62, 1, !dbg !2982
  %append.newCap65 = extractvalue { ptr, i64, i64 } %append.new62, 2, !dbg !2982
  %44 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr63, 0, !dbg !2982
  %45 = insertvalue { ptr, i64, i64 } %44, i64 %append.newLen64, 1, !dbg !2982
  %46 = insertvalue { ptr, i64, i64 } %45, i64 %append.newCap65, 2, !dbg !2982
    #dbg_value({ ptr, i64, i64 } %46, !2931, !DIExpression(), !2983)
  br label %switch.done, !dbg !2940

switch.next6:                                     ; preds = %switch.next4
  %47 = icmp eq i32 %r, 10, !dbg !2984
  br i1 %47, label %switch.body7, label %switch.next8, !dbg !2940

switch.body7:                                     ; preds = %switch.next6
    #dbg_value({ ptr, i64, i64 } %2, !2931, !DIExpression(), !2985)
  %append.srcBuf66 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2986
  %append.srcLen67 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2986
  %append.srcCap68 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2986
  %append.new69 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf66, ptr @"internal/reflectlite$string.26", i64 %append.srcLen67, i64 %append.srcCap68, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2986
  %append.newPtr70 = extractvalue { ptr, i64, i64 } %append.new69, 0, !dbg !2986
  %append.newLen71 = extractvalue { ptr, i64, i64 } %append.new69, 1, !dbg !2986
  %append.newCap72 = extractvalue { ptr, i64, i64 } %append.new69, 2, !dbg !2986
  %48 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr70, 0, !dbg !2986
  %49 = insertvalue { ptr, i64, i64 } %48, i64 %append.newLen71, 1, !dbg !2986
  %50 = insertvalue { ptr, i64, i64 } %49, i64 %append.newCap72, 2, !dbg !2986
    #dbg_value({ ptr, i64, i64 } %50, !2931, !DIExpression(), !2987)
  br label %switch.done, !dbg !2940

switch.next8:                                     ; preds = %switch.next6
  %51 = icmp eq i32 %r, 13, !dbg !2988
  br i1 %51, label %switch.body9, label %switch.next10, !dbg !2940

switch.body9:                                     ; preds = %switch.next8
    #dbg_value({ ptr, i64, i64 } %2, !2931, !DIExpression(), !2989)
  %append.srcBuf73 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2990
  %append.srcLen74 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2990
  %append.srcCap75 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2990
  %append.new76 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf73, ptr @"internal/reflectlite$string.27", i64 %append.srcLen74, i64 %append.srcCap75, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2990
  %append.newPtr77 = extractvalue { ptr, i64, i64 } %append.new76, 0, !dbg !2990
  %append.newLen78 = extractvalue { ptr, i64, i64 } %append.new76, 1, !dbg !2990
  %append.newCap79 = extractvalue { ptr, i64, i64 } %append.new76, 2, !dbg !2990
  %52 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr77, 0, !dbg !2990
  %53 = insertvalue { ptr, i64, i64 } %52, i64 %append.newLen78, 1, !dbg !2990
  %54 = insertvalue { ptr, i64, i64 } %53, i64 %append.newCap79, 2, !dbg !2990
    #dbg_value({ ptr, i64, i64 } %54, !2931, !DIExpression(), !2991)
  br label %switch.done, !dbg !2940

switch.next10:                                    ; preds = %switch.next8
  %55 = icmp eq i32 %r, 9, !dbg !2992
  br i1 %55, label %switch.body11, label %switch.next12, !dbg !2940

switch.body11:                                    ; preds = %switch.next10
    #dbg_value({ ptr, i64, i64 } %2, !2931, !DIExpression(), !2993)
  %append.srcBuf80 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2994
  %append.srcLen81 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2994
  %append.srcCap82 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2994
  %append.new83 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf80, ptr @"internal/reflectlite$string.28", i64 %append.srcLen81, i64 %append.srcCap82, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2994
  %append.newPtr84 = extractvalue { ptr, i64, i64 } %append.new83, 0, !dbg !2994
  %append.newLen85 = extractvalue { ptr, i64, i64 } %append.new83, 1, !dbg !2994
  %append.newCap86 = extractvalue { ptr, i64, i64 } %append.new83, 2, !dbg !2994
  %56 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr84, 0, !dbg !2994
  %57 = insertvalue { ptr, i64, i64 } %56, i64 %append.newLen85, 1, !dbg !2994
  %58 = insertvalue { ptr, i64, i64 } %57, i64 %append.newCap86, 2, !dbg !2994
    #dbg_value({ ptr, i64, i64 } %58, !2931, !DIExpression(), !2995)
  br label %switch.done, !dbg !2940

switch.next12:                                    ; preds = %switch.next10
  %59 = icmp eq i32 %r, 11, !dbg !2996
  br i1 %59, label %switch.body13, label %switch.next14, !dbg !2940

switch.body13:                                    ; preds = %switch.next12
    #dbg_value({ ptr, i64, i64 } %2, !2931, !DIExpression(), !2997)
  %append.srcBuf87 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !2998
  %append.srcLen88 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !2998
  %append.srcCap89 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !2998
  %append.new90 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf87, ptr @"internal/reflectlite$string.29", i64 %append.srcLen88, i64 %append.srcCap89, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !2998
  %append.newPtr91 = extractvalue { ptr, i64, i64 } %append.new90, 0, !dbg !2998
  %append.newLen92 = extractvalue { ptr, i64, i64 } %append.new90, 1, !dbg !2998
  %append.newCap93 = extractvalue { ptr, i64, i64 } %append.new90, 2, !dbg !2998
  %60 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr91, 0, !dbg !2998
  %61 = insertvalue { ptr, i64, i64 } %60, i64 %append.newLen92, 1, !dbg !2998
  %62 = insertvalue { ptr, i64, i64 } %61, i64 %append.newCap93, 2, !dbg !2998
    #dbg_value({ ptr, i64, i64 } %62, !2931, !DIExpression(), !2999)
  br label %switch.done, !dbg !2940

switch.next14:                                    ; preds = %switch.next12
    #dbg_value(i32 %r, !2932, !DIExpression(), !3000)
  %63 = icmp slt i32 %r, 32, !dbg !3001
  br i1 %63, label %binop.done, label %binop.rhs, !dbg !2940

binop.done:                                       ; preds = %binop.rhs, %switch.next14
  %64 = phi i1 [ true, %switch.next14 ], [ %140, %binop.rhs ], !dbg !3002
  br i1 %64, label %switch.body15, label %switch.next16, !dbg !2940

switch.body15:                                    ; preds = %binop.done
    #dbg_value({ ptr, i64, i64 } %2, !2931, !DIExpression(), !3003)
  %append.srcBuf94 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3004
  %append.srcLen95 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3004
  %append.srcCap96 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3004
  %append.new97 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf94, ptr @"internal/reflectlite$string.30", i64 %append.srcLen95, i64 %append.srcCap96, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3004
  %append.newPtr98 = extractvalue { ptr, i64, i64 } %append.new97, 0, !dbg !3004
  %append.newLen99 = extractvalue { ptr, i64, i64 } %append.new97, 1, !dbg !3004
  %append.newCap100 = extractvalue { ptr, i64, i64 } %append.new97, 2, !dbg !3004
  %65 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr98, 0, !dbg !3004
  %66 = insertvalue { ptr, i64, i64 } %65, i64 %append.newLen99, 1, !dbg !3004
  %67 = insertvalue { ptr, i64, i64 } %66, i64 %append.newCap100, 2, !dbg !3004
    #dbg_value({ ptr, i64, i64 } %67, !2931, !DIExpression(), !3005)
    #dbg_value({ ptr, i64, i64 } %67, !2931, !DIExpression(), !3006)
    #dbg_value(i32 %r, !2932, !DIExpression(), !3007)
  %68 = trunc i32 %r to i8, !dbg !3008
  %69 = lshr i8 %68, 4, !dbg !3009
  %shift.result = select i1 false, i8 0, i8 %69, !dbg !3009
  %70 = zext i8 %shift.result to i64, !dbg !3010
  %71 = icmp uge i64 %70, 15, !dbg !3010
  br i1 %71, label %lookup.throw, label %lookup.next, !dbg !3010

lookup.next:                                      ; preds = %switch.body15
  %72 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.31", i64 %70, !dbg !3010
  %73 = load i8, ptr %72, align 1, !dbg !3010
  %varargs101 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3011
  %74 = getelementptr inbounds [1 x i8], ptr %varargs101, i32 0, i64 0, !dbg !3011
  store i8 %73, ptr %74, align 1, !dbg !3010
  %slice.ptr102 = getelementptr inbounds [1 x i8], ptr %varargs101, i32 0, i64 0, !dbg !3011
  %75 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr102, 0, !dbg !3011
  %76 = insertvalue { ptr, i64, i64 } %75, i64 1, 1, !dbg !3011
  %77 = insertvalue { ptr, i64, i64 } %76, i64 1, 2, !dbg !3011
  %append.srcBuf103 = extractvalue { ptr, i64, i64 } %67, 0, !dbg !3012
  %append.srcLen104 = extractvalue { ptr, i64, i64 } %67, 1, !dbg !3012
  %append.srcCap105 = extractvalue { ptr, i64, i64 } %67, 2, !dbg !3012
  %append.elemsBuf106 = extractvalue { ptr, i64, i64 } %77, 0, !dbg !3012
  %append.elemsLen107 = extractvalue { ptr, i64, i64 } %77, 1, !dbg !3012
  %append.new108 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf103, ptr %append.elemsBuf106, i64 %append.srcLen104, i64 %append.srcCap105, i64 %append.elemsLen107, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3012
  %append.newPtr109 = extractvalue { ptr, i64, i64 } %append.new108, 0, !dbg !3012
  %append.newLen110 = extractvalue { ptr, i64, i64 } %append.new108, 1, !dbg !3012
  %append.newCap111 = extractvalue { ptr, i64, i64 } %append.new108, 2, !dbg !3012
  %78 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr109, 0, !dbg !3012
  %79 = insertvalue { ptr, i64, i64 } %78, i64 %append.newLen110, 1, !dbg !3012
  %80 = insertvalue { ptr, i64, i64 } %79, i64 %append.newCap111, 2, !dbg !3012
    #dbg_value({ ptr, i64, i64 } %80, !2931, !DIExpression(), !3013)
    #dbg_value({ ptr, i64, i64 } %80, !2931, !DIExpression(), !3014)
    #dbg_value(i32 %r, !2932, !DIExpression(), !3015)
  %81 = trunc i32 %r to i8, !dbg !3016
  %82 = and i8 %81, 15, !dbg !3017
  %83 = zext i8 %82 to i64, !dbg !3018
  %84 = icmp uge i64 %83, 15, !dbg !3018
  br i1 %84, label %lookup.throw112, label %lookup.next113, !dbg !3018

lookup.next113:                                   ; preds = %lookup.next
  %85 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.32", i64 %83, !dbg !3018
  %86 = load i8, ptr %85, align 1, !dbg !3018
  %varargs114 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3019
  %87 = getelementptr inbounds [1 x i8], ptr %varargs114, i32 0, i64 0, !dbg !3019
  store i8 %86, ptr %87, align 1, !dbg !3018
  %slice.ptr115 = getelementptr inbounds [1 x i8], ptr %varargs114, i32 0, i64 0, !dbg !3019
  %88 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr115, 0, !dbg !3019
  %89 = insertvalue { ptr, i64, i64 } %88, i64 1, 1, !dbg !3019
  %90 = insertvalue { ptr, i64, i64 } %89, i64 1, 2, !dbg !3019
  %append.srcBuf116 = extractvalue { ptr, i64, i64 } %80, 0, !dbg !3020
  %append.srcLen117 = extractvalue { ptr, i64, i64 } %80, 1, !dbg !3020
  %append.srcCap118 = extractvalue { ptr, i64, i64 } %80, 2, !dbg !3020
  %append.elemsBuf119 = extractvalue { ptr, i64, i64 } %90, 0, !dbg !3020
  %append.elemsLen120 = extractvalue { ptr, i64, i64 } %90, 1, !dbg !3020
  %append.new121 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf116, ptr %append.elemsBuf119, i64 %append.srcLen117, i64 %append.srcCap118, i64 %append.elemsLen120, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3020
  %append.newPtr122 = extractvalue { ptr, i64, i64 } %append.new121, 0, !dbg !3020
  %append.newLen123 = extractvalue { ptr, i64, i64 } %append.new121, 1, !dbg !3020
  %append.newCap124 = extractvalue { ptr, i64, i64 } %append.new121, 2, !dbg !3020
  %91 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr122, 0, !dbg !3020
  %92 = insertvalue { ptr, i64, i64 } %91, i64 %append.newLen123, 1, !dbg !3020
  %93 = insertvalue { ptr, i64, i64 } %92, i64 %append.newCap124, 2, !dbg !3020
    #dbg_value({ ptr, i64, i64 } %93, !2931, !DIExpression(), !3021)
  br label %switch.done, !dbg !2940

switch.next16:                                    ; preds = %binop.done
    #dbg_value(i32 %r, !2932, !DIExpression(), !3022)
  %94 = call i1 @"unicode/utf8.ValidRune"(i32 %r, ptr undef), !dbg !3023
  %95 = xor i1 %94, true, !dbg !3024
  br i1 %95, label %switch.body17, label %switch.next19, !dbg !2940

switch.body17:                                    ; preds = %switch.next16
    #dbg_value(i32 65533, !2932, !DIExpression(), !3025)
  br label %switch.body18, !dbg !2940

switch.body18:                                    ; preds = %switch.next19, %switch.body17
  %96 = phi i32 [ 65533, %switch.body17 ], [ %r, %switch.next19 ], !dbg !3026
    #dbg_value({ ptr, i64, i64 } %2, !2931, !DIExpression(), !3027)
  %append.srcBuf125 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3028
  %append.srcLen126 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3028
  %append.srcCap127 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3028
  %append.new128 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf125, ptr @"internal/reflectlite$string.33", i64 %append.srcLen126, i64 %append.srcCap127, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3028
  %append.newPtr129 = extractvalue { ptr, i64, i64 } %append.new128, 0, !dbg !3028
  %append.newLen130 = extractvalue { ptr, i64, i64 } %append.new128, 1, !dbg !3028
  %append.newCap131 = extractvalue { ptr, i64, i64 } %append.new128, 2, !dbg !3028
  %97 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr129, 0, !dbg !3028
  %98 = insertvalue { ptr, i64, i64 } %97, i64 %append.newLen130, 1, !dbg !3028
  %99 = insertvalue { ptr, i64, i64 } %98, i64 %append.newCap131, 2, !dbg !3028
    #dbg_value({ ptr, i64, i64 } %99, !2931, !DIExpression(), !3029)
    #dbg_value(i64 12, !2934, !DIExpression(), !3030)
  br label %for.loop, !dbg !2940

for.loop:                                         ; preds = %lookup.next133, %switch.body18
  %100 = phi { ptr, i64, i64 } [ %99, %switch.body18 ], [ %116, %lookup.next133 ], !dbg !2973
  %101 = phi i64 [ 12, %switch.body18 ], [ %117, %lookup.next133 ], !dbg !3030
    #dbg_value(i64 %101, !2934, !DIExpression(), !3031)
  %102 = icmp sge i64 %101, 0, !dbg !3032
  br i1 %102, label %for.body, label %switch.done, !dbg !2940

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } %100, !2931, !DIExpression(), !3033)
    #dbg_value(i32 %96, !2932, !DIExpression(), !3034)
    #dbg_value(i64 %101, !2934, !DIExpression(), !3035)
  %shift.overflow = icmp uge i64 %101, 32, !dbg !3036
  %103 = trunc i64 %101 to i32, !dbg !3036
  %shift.offset = select i1 %shift.overflow, i32 31, i32 %103, !dbg !3036
  %104 = ashr i32 %96, %shift.offset, !dbg !3036
  %105 = and i32 %104, 15, !dbg !3037
  %106 = sext i32 %105 to i64, !dbg !3038
  %107 = icmp uge i64 %106, 15, !dbg !3038
  br i1 %107, label %lookup.throw132, label %lookup.next133, !dbg !3038

lookup.next133:                                   ; preds = %for.body
  %108 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.34", i64 %106, !dbg !3038
  %109 = load i8, ptr %108, align 1, !dbg !3038
  %varargs134 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3039
  %110 = getelementptr inbounds [1 x i8], ptr %varargs134, i32 0, i64 0, !dbg !3039
  store i8 %109, ptr %110, align 1, !dbg !3038
  %slice.ptr135 = getelementptr inbounds [1 x i8], ptr %varargs134, i32 0, i64 0, !dbg !3039
  %111 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr135, 0, !dbg !3039
  %112 = insertvalue { ptr, i64, i64 } %111, i64 1, 1, !dbg !3039
  %113 = insertvalue { ptr, i64, i64 } %112, i64 1, 2, !dbg !3039
  %append.srcBuf136 = extractvalue { ptr, i64, i64 } %100, 0, !dbg !3040
  %append.srcLen137 = extractvalue { ptr, i64, i64 } %100, 1, !dbg !3040
  %append.srcCap138 = extractvalue { ptr, i64, i64 } %100, 2, !dbg !3040
  %append.elemsBuf139 = extractvalue { ptr, i64, i64 } %113, 0, !dbg !3040
  %append.elemsLen140 = extractvalue { ptr, i64, i64 } %113, 1, !dbg !3040
  %append.new141 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf136, ptr %append.elemsBuf139, i64 %append.srcLen137, i64 %append.srcCap138, i64 %append.elemsLen140, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3040
  %append.newPtr142 = extractvalue { ptr, i64, i64 } %append.new141, 0, !dbg !3040
  %append.newLen143 = extractvalue { ptr, i64, i64 } %append.new141, 1, !dbg !3040
  %append.newCap144 = extractvalue { ptr, i64, i64 } %append.new141, 2, !dbg !3040
  %114 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr142, 0, !dbg !3040
  %115 = insertvalue { ptr, i64, i64 } %114, i64 %append.newLen143, 1, !dbg !3040
  %116 = insertvalue { ptr, i64, i64 } %115, i64 %append.newCap144, 2, !dbg !3040
    #dbg_value({ ptr, i64, i64 } %116, !2931, !DIExpression(), !3041)
  %117 = sub i64 %101, 4, !dbg !3042
    #dbg_value(i64 %117, !2934, !DIExpression(), !3042)
  br label %for.loop, !dbg !2940

switch.next19:                                    ; preds = %switch.next16
    #dbg_value(i32 %r, !2932, !DIExpression(), !3043)
  %118 = icmp slt i32 %r, 65536, !dbg !3044
  br i1 %118, label %switch.body18, label %switch.next20, !dbg !2940

switch.next20:                                    ; preds = %switch.next19
    #dbg_value({ ptr, i64, i64 } %2, !2931, !DIExpression(), !3045)
  %append.srcBuf145 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !3046
  %append.srcLen146 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !3046
  %append.srcCap147 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !3046
  %append.new148 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf145, ptr @"internal/reflectlite$string.35", i64 %append.srcLen146, i64 %append.srcCap147, i64 2, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3046
  %append.newPtr149 = extractvalue { ptr, i64, i64 } %append.new148, 0, !dbg !3046
  %append.newLen150 = extractvalue { ptr, i64, i64 } %append.new148, 1, !dbg !3046
  %append.newCap151 = extractvalue { ptr, i64, i64 } %append.new148, 2, !dbg !3046
  %119 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr149, 0, !dbg !3046
  %120 = insertvalue { ptr, i64, i64 } %119, i64 %append.newLen150, 1, !dbg !3046
  %121 = insertvalue { ptr, i64, i64 } %120, i64 %append.newCap151, 2, !dbg !3046
    #dbg_value({ ptr, i64, i64 } %121, !2931, !DIExpression(), !3047)
    #dbg_value(i64 28, !2935, !DIExpression(), !3048)
  br label %for.loop21, !dbg !2940

for.loop21:                                       ; preds = %lookup.next155, %switch.next20
  %122 = phi { ptr, i64, i64 } [ %121, %switch.next20 ], [ %138, %lookup.next155 ], !dbg !2973
  %123 = phi i64 [ 28, %switch.next20 ], [ %139, %lookup.next155 ], !dbg !3048
    #dbg_value(i64 %123, !2935, !DIExpression(), !3049)
  %124 = icmp sge i64 %123, 0, !dbg !3050
  br i1 %124, label %for.body22, label %switch.done, !dbg !2940

for.body22:                                       ; preds = %for.loop21
    #dbg_value({ ptr, i64, i64 } %122, !2931, !DIExpression(), !3051)
    #dbg_value(i32 %r, !2932, !DIExpression(), !3052)
    #dbg_value(i64 %123, !2935, !DIExpression(), !3053)
  %shift.overflow152 = icmp uge i64 %123, 32, !dbg !3054
  %125 = trunc i64 %123 to i32, !dbg !3054
  %shift.offset153 = select i1 %shift.overflow152, i32 31, i32 %125, !dbg !3054
  %126 = ashr i32 %r, %shift.offset153, !dbg !3054
  %127 = and i32 %126, 15, !dbg !3055
  %128 = sext i32 %127 to i64, !dbg !3056
  %129 = icmp uge i64 %128, 15, !dbg !3056
  br i1 %129, label %lookup.throw154, label %lookup.next155, !dbg !3056

lookup.next155:                                   ; preds = %for.body22
  %130 = getelementptr inbounds i8, ptr @"internal/reflectlite$string.36", i64 %128, !dbg !3056
  %131 = load i8, ptr %130, align 1, !dbg !3056
  %varargs156 = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3057
  %132 = getelementptr inbounds [1 x i8], ptr %varargs156, i32 0, i64 0, !dbg !3057
  store i8 %131, ptr %132, align 1, !dbg !3056
  %slice.ptr157 = getelementptr inbounds [1 x i8], ptr %varargs156, i32 0, i64 0, !dbg !3057
  %133 = insertvalue { ptr, i64, i64 } undef, ptr %slice.ptr157, 0, !dbg !3057
  %134 = insertvalue { ptr, i64, i64 } %133, i64 1, 1, !dbg !3057
  %135 = insertvalue { ptr, i64, i64 } %134, i64 1, 2, !dbg !3057
  %append.srcBuf158 = extractvalue { ptr, i64, i64 } %122, 0, !dbg !3058
  %append.srcLen159 = extractvalue { ptr, i64, i64 } %122, 1, !dbg !3058
  %append.srcCap160 = extractvalue { ptr, i64, i64 } %122, 2, !dbg !3058
  %append.elemsBuf161 = extractvalue { ptr, i64, i64 } %135, 0, !dbg !3058
  %append.elemsLen162 = extractvalue { ptr, i64, i64 } %135, 1, !dbg !3058
  %append.new163 = call { ptr, i64, i64 } @runtime.sliceAppend(ptr %append.srcBuf158, ptr %append.elemsBuf161, i64 %append.srcLen159, i64 %append.srcCap160, i64 %append.elemsLen162, i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3058
  %append.newPtr164 = extractvalue { ptr, i64, i64 } %append.new163, 0, !dbg !3058
  %append.newLen165 = extractvalue { ptr, i64, i64 } %append.new163, 1, !dbg !3058
  %append.newCap166 = extractvalue { ptr, i64, i64 } %append.new163, 2, !dbg !3058
  %136 = insertvalue { ptr, i64, i64 } undef, ptr %append.newPtr164, 0, !dbg !3058
  %137 = insertvalue { ptr, i64, i64 } %136, i64 %append.newLen165, 1, !dbg !3058
  %138 = insertvalue { ptr, i64, i64 } %137, i64 %append.newCap166, 2, !dbg !3058
    #dbg_value({ ptr, i64, i64 } %138, !2931, !DIExpression(), !3059)
  %139 = sub i64 %123, 4, !dbg !3060
    #dbg_value(i64 %139, !2935, !DIExpression(), !3060)
  br label %for.loop21, !dbg !2940

binop.rhs:                                        ; preds = %switch.next14
    #dbg_value(i32 %r, !2932, !DIExpression(), !3061)
  %140 = icmp eq i32 %r, 127, !dbg !3062
  br label %binop.done, !dbg !2940

slice.throw:                                      ; preds = %if.then1
  call void @runtime.slicePanic(ptr undef), !dbg !2963
  unreachable, !dbg !2963

lookup.throw:                                     ; preds = %switch.body15
  call void @runtime.lookupPanic(ptr undef), !dbg !3010
  unreachable, !dbg !3010

lookup.throw112:                                  ; preds = %lookup.next
  call void @runtime.lookupPanic(ptr undef), !dbg !3018
  unreachable, !dbg !3018

lookup.throw132:                                  ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !3038
  unreachable, !dbg !3038

lookup.throw154:                                  ; preds = %for.body22
  call void @runtime.lookupPanic(ptr undef), !dbg !3056
  unreachable, !dbg !3056
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"internal/reflectlite.isPrint"(i32 %r, ptr %context) unnamed_addr #0 !dbg !3063 {
entry:
    #dbg_value(i32 %r, !3065, !DIExpression(), !3066)
    #dbg_value(i32 %r, !3065, !DIExpression(), !3067)
  %0 = icmp sle i32 %r, 255, !dbg !3068
  br i1 %0, label %if.then, label %if.done5, !dbg !3069

if.then:                                          ; preds = %entry
    #dbg_value(i32 %r, !3065, !DIExpression(), !3070)
  %1 = icmp sle i32 32, %r, !dbg !3071
  br i1 %1, label %cond.true, label %if.done, !dbg !3069

cond.true:                                        ; preds = %if.then
    #dbg_value(i32 %r, !3065, !DIExpression(), !3072)
  %2 = icmp sle i32 %r, 126, !dbg !3073
  br i1 %2, label %if.then1, label %if.done, !dbg !3069

if.then1:                                         ; preds = %cond.true
  ret i1 true, !dbg !3074

if.done:                                          ; preds = %cond.true, %if.then
    #dbg_value(i32 %r, !3065, !DIExpression(), !3075)
  %3 = icmp sle i32 161, %r, !dbg !3076
  br i1 %3, label %cond.true2, label %if.done4, !dbg !3069

cond.true2:                                       ; preds = %if.done
    #dbg_value(i32 %r, !3065, !DIExpression(), !3077)
  %4 = icmp sle i32 %r, 255, !dbg !3078
  br i1 %4, label %if.then3, label %if.done4, !dbg !3069

if.then3:                                         ; preds = %cond.true2
    #dbg_value(i32 %r, !3065, !DIExpression(), !3079)
  %5 = icmp ne i32 %r, 173, !dbg !3080
  ret i1 %5, !dbg !3081

if.done4:                                         ; preds = %cond.true2, %if.done
  ret i1 false, !dbg !3082

if.done5:                                         ; preds = %entry
  ret i1 false, !dbg !3083
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.Kind).String"(ptr dereferenceable_or_null(1) %k, ptr %context) unnamed_addr #0 {
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
define internal %runtime._string @"(internal/reflectlite.Kind).String$invoke"(ptr %0, ptr %1) unnamed_addr #0 !dbg !3084 {
entry:
  %unpack.int = ptrtoint ptr %0 to i8, !dbg !3085
  %ret = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %unpack.int, ptr %1), !dbg !3085
  ret %runtime._string %ret, !dbg !3085
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.ValueError).Error"(ptr dereferenceable_or_null(24) %e, ptr %context) unnamed_addr #0 !dbg !3086 {
entry:
    #dbg_value(ptr %e, !3095, !DIExpression(), !3096)
    #dbg_value(ptr %e, !3095, !DIExpression(), !3097)
  %0 = icmp eq ptr %e, null, !dbg !3098
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3098

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 1, !dbg !3098
  %2 = icmp eq ptr %1, null, !dbg !3098
  br i1 %2, label %deref.throw, label %deref.next, !dbg !3098

deref.next:                                       ; preds = %gep.next
  %3 = load i8, ptr %1, align 1, !dbg !3098
  %4 = icmp eq i8 %3, 0, !dbg !3099
  br i1 %4, label %if.then, label %if.done, !dbg !3100

if.then:                                          ; preds = %deref.next
    #dbg_value(ptr %e, !3095, !DIExpression(), !3101)
  %5 = icmp eq ptr %e, null, !dbg !3102
  br i1 %5, label %gep.throw1, label %gep.next2, !dbg !3102

gep.next2:                                        ; preds = %if.then
  %6 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 0, !dbg !3102
  %7 = icmp eq ptr %6, null, !dbg !3102
  br i1 %7, label %deref.throw3, label %deref.next4, !dbg !3102

deref.next4:                                      ; preds = %gep.next2
  %8 = load %runtime._string, ptr %6, align 8, !dbg !3102
  %9 = extractvalue %runtime._string %8, 0, !dbg !3103
  %10 = extractvalue %runtime._string %8, 1, !dbg !3103
  %11 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.229", i64 17, ptr %9, i64 %10, ptr undef), !dbg !3103
  %12 = extractvalue %runtime._string %11, 0, !dbg !3104
  %13 = extractvalue %runtime._string %11, 1, !dbg !3104
  %14 = call %runtime._string @runtime.stringConcat(ptr %12, i64 %13, ptr @"internal/reflectlite$string.230", i64 14, ptr undef), !dbg !3104
  ret %runtime._string %14, !dbg !3105

if.done:                                          ; preds = %deref.next
    #dbg_value(ptr %e, !3095, !DIExpression(), !3106)
  %15 = icmp eq ptr %e, null, !dbg !3107
  br i1 %15, label %gep.throw5, label %gep.next6, !dbg !3107

gep.next6:                                        ; preds = %if.done
  %16 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 0, !dbg !3107
  %17 = icmp eq ptr %16, null, !dbg !3107
  br i1 %17, label %deref.throw7, label %deref.next8, !dbg !3107

deref.next8:                                      ; preds = %gep.next6
  %18 = load %runtime._string, ptr %16, align 8, !dbg !3107
  %19 = extractvalue %runtime._string %18, 0, !dbg !3108
  %20 = extractvalue %runtime._string %18, 1, !dbg !3108
  %21 = call %runtime._string @runtime.stringConcat(ptr @"internal/reflectlite$string.231", i64 17, ptr %19, i64 %20, ptr undef), !dbg !3108
  %22 = extractvalue %runtime._string %21, 0, !dbg !3109
  %23 = extractvalue %runtime._string %21, 1, !dbg !3109
  %24 = call %runtime._string @runtime.stringConcat(ptr %22, i64 %23, ptr @"internal/reflectlite$string.232", i64 4, ptr undef), !dbg !3109
    #dbg_value(ptr %e, !3095, !DIExpression(), !3110)
  %25 = icmp eq ptr %e, null, !dbg !3111
  br i1 %25, label %gep.throw9, label %gep.next10, !dbg !3111

gep.next10:                                       ; preds = %deref.next8
  %26 = getelementptr inbounds %"internal/reflectlite.ValueError", ptr %e, i32 0, i32 1, !dbg !3111
  %27 = icmp eq ptr %26, null, !dbg !3111
  br i1 %27, label %deref.throw11, label %deref.next12, !dbg !3111

deref.next12:                                     ; preds = %gep.next10
  %28 = load i8, ptr %26, align 1, !dbg !3111
  %29 = call %runtime._string @"(internal/reflectlite.Kind).String"(i8 %28, ptr undef), !dbg !3112
  %30 = extractvalue %runtime._string %24, 0, !dbg !3113
  %31 = extractvalue %runtime._string %24, 1, !dbg !3113
  %32 = extractvalue %runtime._string %29, 0, !dbg !3113
  %33 = extractvalue %runtime._string %29, 1, !dbg !3113
  %34 = call %runtime._string @runtime.stringConcat(ptr %30, i64 %31, ptr %32, i64 %33, ptr undef), !dbg !3113
  %35 = extractvalue %runtime._string %34, 0, !dbg !3114
  %36 = extractvalue %runtime._string %34, 1, !dbg !3114
  %37 = call %runtime._string @runtime.stringConcat(ptr %35, i64 %36, ptr @"internal/reflectlite$string.233", i64 6, ptr undef), !dbg !3114
  ret %runtime._string %37, !dbg !3115

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3098
  unreachable, !dbg !3098

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3098
  unreachable, !dbg !3098

gep.throw1:                                       ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3102
  unreachable, !dbg !3102

deref.throw3:                                     ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3102
  unreachable, !dbg !3102

gep.throw5:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3107
  unreachable, !dbg !3107

deref.throw7:                                     ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3107
  unreachable, !dbg !3107

gep.throw9:                                       ; preds = %deref.next8
  call void @runtime.nilPanic(ptr undef), !dbg !3111
  unreachable, !dbg !3111

deref.throw11:                                    ; preds = %gep.next10
  call void @runtime.nilPanic(ptr undef), !dbg !3111
  unreachable, !dbg !3111
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr %context) unnamed_addr #0 !dbg !3116 {
entry:
  ret %runtime._string { ptr @"internal/reflectlite$string.17", i64 14 }, !dbg !3121
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(*internal/reflectlite.badSyntax).Error"(ptr %arg0, ptr %context) unnamed_addr #0 {
entry:
  %0 = call %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr undef)
  ret %runtime._string %0
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @"(internal/reflectlite.badSyntax).Error$invoke"(ptr %0, ptr %1) unnamed_addr #0 !dbg !3122 {
entry:
  %ret = call %runtime._string @"(internal/reflectlite.badSyntax).Error"(ptr %1), !dbg !3123
  ret %runtime._string %ret, !dbg !3123
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @"runtime/interrupt.In"(ptr %context) #0 !dbg !3124 {
entry:
  ret i1 false, !dbg !3127
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Mutex).Lock"(ptr dereferenceable_or_null(4) %m, ptr %context) #0 !dbg !3128 {
entry:
    #dbg_value(ptr %m, !3133, !DIExpression(), !3134)
    #dbg_value(ptr %m, !3133, !DIExpression(), !3135)
  %0 = icmp eq ptr %m, null, !dbg !3136
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3136

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3136
  %2 = icmp eq ptr %1, null, !dbg !3135
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3135

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3135
  %4 = call i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr %3, i32 0, i32 1, ptr undef), !dbg !3137
  br i1 %4, label %if.then, label %for.loop, !dbg !3138

if.then:                                          ; preds = %gep.next2
  ret void, !dbg !3139

for.loop:                                         ; preds = %gep.next8, %gep.next2
    #dbg_value(ptr %m, !3133, !DIExpression(), !3140)
  %5 = icmp eq ptr %m, null, !dbg !3141
  br i1 %5, label %gep.throw3, label %gep.next4, !dbg !3141

gep.next4:                                        ; preds = %for.loop
  %6 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3141
  %7 = icmp eq ptr %6, null, !dbg !3140
  br i1 %7, label %gep.throw5, label %gep.next6, !dbg !3140

gep.next6:                                        ; preds = %gep.next4
  %8 = getelementptr inbounds %"internal/futex.Futex", ptr %6, i32 0, i32 0, !dbg !3140
  %9 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr %8, i32 2, ptr undef), !dbg !3142
  %10 = icmp ne i32 %9, 0, !dbg !3143
  br i1 %10, label %for.body, label %for.done, !dbg !3138

for.body:                                         ; preds = %gep.next6
    #dbg_value(ptr %m, !3133, !DIExpression(), !3144)
  %11 = icmp eq ptr %m, null, !dbg !3145
  br i1 %11, label %gep.throw7, label %gep.next8, !dbg !3145

gep.next8:                                        ; preds = %for.body
  %12 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3145
  %13 = call i1 @"(*internal/futex.Futex).Wait"(ptr %12, i32 2, ptr undef), !dbg !3146
  br label %for.loop, !dbg !3138

for.done:                                         ; preds = %gep.next6
  ret void, !dbg !3147

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3136
  unreachable, !dbg !3136

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3135
  unreachable, !dbg !3135

gep.throw3:                                       ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !3141
  unreachable, !dbg !3141

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3140
  unreachable, !dbg !3140

gep.throw7:                                       ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3145
  unreachable, !dbg !3145
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Mutex).Unlock"(ptr dereferenceable_or_null(4) %m, ptr %context) #0 !dbg !3148 {
entry:
    #dbg_value(ptr %m, !3150, !DIExpression(), !3152)
    #dbg_value(ptr %m, !3150, !DIExpression(), !3153)
  %0 = icmp eq ptr %m, null, !dbg !3154
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3154

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3154
  %2 = icmp eq ptr %1, null, !dbg !3153
  br i1 %2, label %gep.throw2, label %gep.next3, !dbg !3153

gep.next3:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3153
  %4 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr %3, i32 0, ptr undef), !dbg !3155
    #dbg_value(i32 %4, !3151, !DIExpression(), !3156)
    #dbg_value(i32 %4, !3151, !DIExpression(), !3157)
  %5 = icmp eq i32 %4, 0, !dbg !3158
  br i1 %5, label %if.then, label %if.else, !dbg !3159

if.then:                                          ; preds = %gep.next3
  call void @runtime._panic(ptr @"reflect/types.type:basic:string", ptr @"internal/task$pack", ptr undef), !dbg !3160
  unreachable, !dbg !3160

if.else:                                          ; preds = %gep.next3
    #dbg_value(i32 %4, !3151, !DIExpression(), !3161)
  %6 = icmp eq i32 %4, 2, !dbg !3162
  br i1 %6, label %if.then1, label %if.done, !dbg !3159

if.then1:                                         ; preds = %if.else
    #dbg_value(ptr %m, !3150, !DIExpression(), !3163)
  %7 = icmp eq ptr %m, null, !dbg !3164
  br i1 %7, label %gep.throw4, label %gep.next5, !dbg !3164

gep.next5:                                        ; preds = %if.then1
  %8 = getelementptr inbounds %"internal/task.Semaphore", ptr %m, i32 0, i32 0, !dbg !3164
  call void @"(*internal/futex.Futex).Wake"(ptr %8, ptr undef), !dbg !3165
  br label %if.done, !dbg !3159

if.done:                                          ; preds = %gep.next5, %if.else
  ret void, !dbg !3166

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3154
  unreachable, !dbg !3154

gep.throw2:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3153
  unreachable, !dbg !3153

gep.throw4:                                       ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3164
  unreachable, !dbg !3164
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.Semaphore).Wait"(ptr dereferenceable_or_null(4) %s, ptr %context) unnamed_addr #0 !dbg !3167 {
entry:
    #dbg_value(ptr %s, !3173, !DIExpression(), !3176)
    #dbg_value(i32 -1, !3174, !DIExpression(), !3177)
    #dbg_value(ptr %s, !3173, !DIExpression(), !3178)
  %0 = icmp eq ptr %s, null, !dbg !3179
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3179

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3179
  %2 = icmp eq ptr %1, null, !dbg !3178
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3178

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3178
    #dbg_value(i32 -1, !3174, !DIExpression(), !3180)
  %4 = call i32 @"(*sync/atomic.Uint32).Add"(ptr %3, i32 -1, ptr undef), !dbg !3181
    #dbg_value(i32 %4, !3175, !DIExpression(), !3182)
  br label %for.body, !dbg !3183

for.body:                                         ; preds = %gep.next8, %gep.next2
  %5 = phi i32 [ %4, %gep.next2 ], [ %14, %gep.next8 ], !dbg !3182
    #dbg_value(i32 %5, !3175, !DIExpression(), !3184)
  %6 = icmp sge i32 %5, 0, !dbg !3185
  br i1 %6, label %if.then, label %if.done, !dbg !3183

if.then:                                          ; preds = %for.body
  ret void, !dbg !3186

if.done:                                          ; preds = %for.body
    #dbg_value(ptr %s, !3173, !DIExpression(), !3187)
  %7 = icmp eq ptr %s, null, !dbg !3188
  br i1 %7, label %gep.throw3, label %gep.next4, !dbg !3188

gep.next4:                                        ; preds = %if.done
  %8 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3188
    #dbg_value(i32 %5, !3175, !DIExpression(), !3189)
  %9 = call i1 @"(*internal/futex.Futex).Wait"(ptr %8, i32 %5, ptr undef), !dbg !3190
    #dbg_value(ptr %s, !3173, !DIExpression(), !3191)
  %10 = icmp eq ptr %s, null, !dbg !3192
  br i1 %10, label %gep.throw5, label %gep.next6, !dbg !3192

gep.next6:                                        ; preds = %gep.next4
  %11 = getelementptr inbounds %"internal/task.Semaphore", ptr %s, i32 0, i32 0, !dbg !3192
  %12 = icmp eq ptr %11, null, !dbg !3191
  br i1 %12, label %gep.throw7, label %gep.next8, !dbg !3191

gep.next8:                                        ; preds = %gep.next6
  %13 = getelementptr inbounds %"internal/futex.Futex", ptr %11, i32 0, i32 0, !dbg !3191
  %14 = call i32 @"(*sync/atomic.Uint32).Load"(ptr %13, ptr undef), !dbg !3193
    #dbg_value(i32 %14, !3175, !DIExpression(), !3194)
  br label %for.body, !dbg !3183

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3179
  unreachable, !dbg !3179

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3178
  unreachable, !dbg !3178

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3188
  unreachable, !dbg !3188

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3192
  unreachable, !dbg !3192

gep.throw7:                                       ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3191
  unreachable, !dbg !3191
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.Init"(i64 %sp, ptr %context) #0 !dbg !3195 {
entry:
    #dbg_value(i64 %sp, !3199, !DIExpression(), !3201)
    #dbg_value(i64 %sp, !3199, !DIExpression(), !3202)
  %0 = icmp eq ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 2), null, !dbg !3203
  br i1 %0, label %store.throw, label %store.next, !dbg !3203

store.next:                                       ; preds = %entry
  store i64 %sp, ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 2), align 8, !dbg !3203
    #dbg_value(i64 %sp, !3200, !DIExpression(), !3203)
  call void @tinygo_task_init(ptr @"internal/task.mainTask", ptr getelementptr inbounds (%"internal/task.state", ptr getelementptr inbounds (%"internal/task.Task", ptr @"internal/task.mainTask", i32 0, i32 4), i32 0, i32 1), ptr @"internal/task.numCPU", ptr undef), !dbg !3204
  ret void, !dbg !3205

store.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3203
  unreachable, !dbg !3203
}

declare void @tinygo_task_init(ptr dereferenceable_or_null(88), ptr dereferenceable_or_null(8), ptr dereferenceable_or_null(4), ptr) #1

; Function Attrs: nounwind uwtable(sync)
define internal ptr @"internal/task.Current"(ptr %context) #0 !dbg !3206 {
entry:
  %0 = call ptr @tinygo_task_current(), !dbg !3209
    #dbg_value(ptr %0, !3208, !DIExpression(), !3210)
    #dbg_value(ptr %0, !3208, !DIExpression(), !3211)
  %1 = icmp eq ptr %0, null, !dbg !3212
  br i1 %1, label %if.then, label %if.done, !dbg !3213

if.then:                                          ; preds = %entry
  call void @runtime.runtimePanic(ptr @"internal/task$string.7", i64 20, ptr undef), !dbg !3214
  br label %if.done, !dbg !3213

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(ptr %0, !3208, !DIExpression(), !3215)
  ret ptr %0, !dbg !3216
}

declare ptr @tinygo_task_current() #1

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.Pause"(ptr %context) #0 !dbg !3217 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3220
    #dbg_value(ptr %0, !3219, !DIExpression(), !3221)
  br i1 false, label %if.then, label %if.done, !dbg !3222

if.then:                                          ; preds = %entry
    #dbg_value(ptr %0, !3219, !DIExpression(), !3223)
  %1 = icmp eq ptr %0, null, !dbg !3224
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3224

gep.next:                                         ; preds = %if.then
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3224
  %3 = icmp eq ptr %2, null, !dbg !3225
  br i1 %3, label %gep.throw1, label %gep.next2, !dbg !3225

gep.next2:                                        ; preds = %gep.next
  %4 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 0, !dbg !3225
  %5 = icmp eq ptr %4, null, !dbg !3225
  br i1 %5, label %deref.throw, label %deref.next, !dbg !3225

deref.next:                                       ; preds = %gep.next2
  %6 = load i64, ptr %4, align 8, !dbg !3225
  call void @runtime.printlock(ptr undef), !dbg !3226
  call void @runtime.printstring(ptr @"internal/task$string.8", i64 12, ptr undef), !dbg !3226
  call void @runtime.printspace(ptr undef), !dbg !3226
  call void @runtime.printptr(i64 %6, ptr undef), !dbg !3226
  call void @runtime.printnl(ptr undef), !dbg !3226
  call void @runtime.printunlock(ptr undef), !dbg !3226
  br label %if.done, !dbg !3222

if.done:                                          ; preds = %deref.next, %entry
    #dbg_value(ptr %0, !3219, !DIExpression(), !3227)
  %7 = icmp eq ptr %0, null, !dbg !3228
  br i1 %7, label %gep.throw3, label %gep.next4, !dbg !3228

gep.next4:                                        ; preds = %if.done
  %8 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3228
  %9 = icmp eq ptr %8, null, !dbg !3229
  br i1 %9, label %gep.throw5, label %gep.next6, !dbg !3229

gep.next6:                                        ; preds = %gep.next4
  %10 = getelementptr inbounds %"internal/task.state", ptr %8, i32 0, i32 5, !dbg !3229
  call void @"(*internal/task.Semaphore).Wait"(ptr %10, ptr undef), !dbg !3230
  ret void, !dbg !3231

gep.throw:                                        ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3224
  unreachable, !dbg !3224

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3225
  unreachable, !dbg !3225

deref.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3225
  unreachable, !dbg !3225

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3228
  unreachable, !dbg !3228

gep.throw5:                                       ; preds = %gep.next4
  call void @runtime.nilPanic(ptr undef), !dbg !3229
  unreachable, !dbg !3229
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_exited(ptr nocapture dereferenceable_or_null(88) %t) #0 !dbg !3232 {
entry:
    #dbg_value(ptr %t, !3236, !DIExpression(), !3241)
  br i1 false, label %if.then, label %if.done, !dbg !3242

if.then:                                          ; preds = %entry
    #dbg_value(ptr %t, !3236, !DIExpression(), !3243)
  %0 = icmp eq ptr %t, null, !dbg !3244
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3244

gep.next:                                         ; preds = %if.then
  %1 = getelementptr inbounds %"internal/task.Task", ptr %t, i32 0, i32 4, !dbg !3244
  %2 = icmp eq ptr %1, null, !dbg !3245
  br i1 %2, label %gep.throw5, label %gep.next6, !dbg !3245

gep.next6:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/task.state", ptr %1, i32 0, i32 0, !dbg !3245
  %4 = icmp eq ptr %3, null, !dbg !3245
  br i1 %4, label %deref.throw, label %deref.next, !dbg !3245

deref.next:                                       ; preds = %gep.next6
  %5 = load i64, ptr %3, align 8, !dbg !3245
  call void @runtime.printlock(ptr undef), !dbg !3246
  call void @runtime.printstring(ptr @"internal/task$string.12", i64 9, ptr undef), !dbg !3246
  call void @runtime.printspace(ptr undef), !dbg !3246
  call void @runtime.printptr(i64 %5, ptr undef), !dbg !3246
  call void @runtime.printnl(ptr undef), !dbg !3246
  call void @runtime.printunlock(ptr undef), !dbg !3246
  br label %if.done, !dbg !3242

if.done:                                          ; preds = %deref.next, %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3247
    #dbg_value(i1 false, !3237, !DIExpression(), !3248)
    #dbg_value(ptr @"internal/task.activeTasks", !3238, !DIExpression(), !3249)
  br label %for.loop, !dbg !3242

for.loop:                                         ; preds = %gep.next22, %if.done
  %6 = phi ptr [ @"internal/task.activeTasks", %if.done ], [ %25, %gep.next22 ], !dbg !3249
    #dbg_value(ptr %6, !3238, !DIExpression(), !3250)
  %7 = icmp eq ptr %6, null, !dbg !3251
  br i1 %7, label %deref.throw7, label %deref.next8, !dbg !3251

deref.next8:                                      ; preds = %for.loop
  %8 = load ptr, ptr %6, align 8, !dbg !3251
  %9 = icmp ne ptr %8, null, !dbg !3252
  br i1 %9, label %for.body, label %for.done, !dbg !3242

for.body:                                         ; preds = %deref.next8
    #dbg_value(ptr %6, !3238, !DIExpression(), !3253)
  %10 = icmp eq ptr %6, null, !dbg !3254
  br i1 %10, label %deref.throw9, label %deref.next10, !dbg !3254

deref.next10:                                     ; preds = %for.body
  %11 = load ptr, ptr %6, align 8, !dbg !3254
    #dbg_value(ptr %t, !3236, !DIExpression(), !3255)
  %12 = icmp eq ptr %11, %t, !dbg !3256
  br i1 %12, label %if.then1, label %if.done2, !dbg !3242

if.then1:                                         ; preds = %deref.next10
    #dbg_value(ptr %6, !3238, !DIExpression(), !3257)
    #dbg_value(ptr %t, !3236, !DIExpression(), !3258)
  %13 = icmp eq ptr %t, null, !dbg !3259
  br i1 %13, label %gep.throw11, label %gep.next12, !dbg !3259

gep.next12:                                       ; preds = %if.then1
  %14 = getelementptr inbounds %"internal/task.Task", ptr %t, i32 0, i32 4, !dbg !3259
  %15 = icmp eq ptr %14, null, !dbg !3260
  br i1 %15, label %gep.throw13, label %gep.next14, !dbg !3260

gep.next14:                                       ; preds = %gep.next12
  %16 = getelementptr inbounds %"internal/task.state", ptr %14, i32 0, i32 4, !dbg !3260
  %17 = icmp eq ptr %16, null, !dbg !3260
  br i1 %17, label %deref.throw15, label %deref.next16, !dbg !3260

deref.next16:                                     ; preds = %gep.next14
  %18 = load ptr, ptr %16, align 8, !dbg !3260
  %19 = icmp eq ptr %6, null, !dbg !3261
  br i1 %19, label %store.throw, label %store.next, !dbg !3261

store.next:                                       ; preds = %deref.next16
  store ptr %18, ptr %6, align 8, !dbg !3261
    #dbg_value(i1 true, !3237, !DIExpression(), !3262)
  br label %for.done, !dbg !3242

if.done2:                                         ; preds = %deref.next10
    #dbg_value(ptr %6, !3238, !DIExpression(), !3263)
  %20 = icmp eq ptr %6, null, !dbg !3264
  br i1 %20, label %deref.throw17, label %deref.next18, !dbg !3264

deref.next18:                                     ; preds = %if.done2
  %21 = load ptr, ptr %6, align 8, !dbg !3264
  %22 = icmp eq ptr %21, null, !dbg !3265
  br i1 %22, label %gep.throw19, label %gep.next20, !dbg !3265

gep.next20:                                       ; preds = %deref.next18
  %23 = getelementptr inbounds %"internal/task.Task", ptr %21, i32 0, i32 4, !dbg !3265
  %24 = icmp eq ptr %23, null, !dbg !3266
  br i1 %24, label %gep.throw21, label %gep.next22, !dbg !3266

gep.next22:                                       ; preds = %gep.next20
  %25 = getelementptr inbounds %"internal/task.state", ptr %23, i32 0, i32 4, !dbg !3266
    #dbg_value(ptr %25, !3238, !DIExpression(), !3267)
  br label %for.loop, !dbg !3242

for.done:                                         ; preds = %store.next, %deref.next8
  %26 = phi i1 [ false, %deref.next8 ], [ true, %store.next ], !dbg !3248
  %27 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3268
  %28 = sub i32 %27, 1, !dbg !3268
  store i32 %28, ptr @"internal/task.otherGoroutines", align 4, !dbg !3268
    #dbg_value(i32 %28, !3240, !DIExpression(), !3268)
  call void @"(*internal/task.Mutex).Unlock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3269
    #dbg_value(i1 %26, !3237, !DIExpression(), !3270)
  br i1 %26, label %if.done3, label %if.then4, !dbg !3242

if.done3:                                         ; preds = %if.then4, %for.done
  ret void, !dbg !3271

if.then4:                                         ; preds = %for.done
  call void @runtime.runtimePanic(ptr @"internal/task$string.13", i64 17, ptr undef), !dbg !3272
  br label %if.done3, !dbg !3242

gep.throw:                                        ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3244
  unreachable, !dbg !3244

gep.throw5:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3245
  unreachable, !dbg !3245

deref.throw:                                      ; preds = %gep.next6
  call void @runtime.nilPanic(ptr undef), !dbg !3245
  unreachable, !dbg !3245

deref.throw7:                                     ; preds = %for.loop
  call void @runtime.nilPanic(ptr undef), !dbg !3251
  unreachable, !dbg !3251

deref.throw9:                                     ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3254
  unreachable, !dbg !3254

gep.throw11:                                      ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3259
  unreachable, !dbg !3259

gep.throw13:                                      ; preds = %gep.next12
  call void @runtime.nilPanic(ptr undef), !dbg !3260
  unreachable, !dbg !3260

deref.throw15:                                    ; preds = %gep.next14
  call void @runtime.nilPanic(ptr undef), !dbg !3260
  unreachable, !dbg !3260

store.throw:                                      ; preds = %deref.next16
  call void @runtime.nilPanic(ptr undef), !dbg !3261
  unreachable, !dbg !3261

deref.throw17:                                    ; preds = %if.done2
  call void @runtime.nilPanic(ptr undef), !dbg !3264
  unreachable, !dbg !3264

gep.throw19:                                      ; preds = %deref.next18
  call void @runtime.nilPanic(ptr undef), !dbg !3265
  unreachable, !dbg !3265

gep.throw21:                                      ; preds = %gep.next20
  call void @runtime.nilPanic(ptr undef), !dbg !3266
  unreachable, !dbg !3266
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.waitGroup).done"(ptr dereferenceable_or_null(4) %wg, ptr %context) unnamed_addr #0 !dbg !3273 {
entry:
    #dbg_value(ptr %wg, !3278, !DIExpression(), !3279)
    #dbg_value(ptr %wg, !3278, !DIExpression(), !3280)
  %0 = icmp eq ptr %wg, null, !dbg !3281
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3281

gep.next:                                         ; preds = %entry
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3281
  %2 = icmp eq ptr %1, null, !dbg !3280
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3280

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3280
  %4 = call i32 @"(*sync/atomic.Uint32).Add"(ptr %3, i32 -1, ptr undef), !dbg !3282
  %5 = icmp eq i32 %4, 0, !dbg !3283
  br i1 %5, label %if.then, label %if.done, !dbg !3284

if.then:                                          ; preds = %gep.next2
    #dbg_value(ptr %wg, !3278, !DIExpression(), !3285)
  %6 = icmp eq ptr %wg, null, !dbg !3286
  br i1 %6, label %gep.throw3, label %gep.next4, !dbg !3286

gep.next4:                                        ; preds = %if.then
  %7 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3286
  call void @"(*internal/futex.Futex).WakeAll"(ptr %7, ptr undef), !dbg !3287
  br label %if.done, !dbg !3284

if.done:                                          ; preds = %gep.next4, %gep.next2
  ret void, !dbg !3288

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3281
  unreachable, !dbg !3281

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3280
  unreachable, !dbg !3280

gep.throw3:                                       ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !3286
  unreachable, !dbg !3286
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"(*internal/task.waitGroup).wait"(ptr dereferenceable_or_null(4) %wg, ptr %context) unnamed_addr #0 !dbg !3289 {
entry:
    #dbg_value(ptr %wg, !3291, !DIExpression(), !3293)
  br label %for.body, !dbg !3294

for.body:                                         ; preds = %gep.next4, %entry
    #dbg_value(ptr %wg, !3291, !DIExpression(), !3295)
  %0 = icmp eq ptr %wg, null, !dbg !3296
  br i1 %0, label %gep.throw, label %gep.next, !dbg !3296

gep.next:                                         ; preds = %for.body
  %1 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3296
  %2 = icmp eq ptr %1, null, !dbg !3295
  br i1 %2, label %gep.throw1, label %gep.next2, !dbg !3295

gep.next2:                                        ; preds = %gep.next
  %3 = getelementptr inbounds %"internal/futex.Futex", ptr %1, i32 0, i32 0, !dbg !3295
  %4 = call i32 @"(*sync/atomic.Uint32).Load"(ptr %3, ptr undef), !dbg !3297
    #dbg_value(i32 %4, !3292, !DIExpression(), !3298)
    #dbg_value(i32 %4, !3292, !DIExpression(), !3299)
  %5 = icmp eq i32 %4, 0, !dbg !3300
  br i1 %5, label %if.then, label %if.done, !dbg !3294

if.then:                                          ; preds = %gep.next2
  ret void, !dbg !3301

if.done:                                          ; preds = %gep.next2
    #dbg_value(ptr %wg, !3291, !DIExpression(), !3302)
  %6 = icmp eq ptr %wg, null, !dbg !3303
  br i1 %6, label %gep.throw3, label %gep.next4, !dbg !3303

gep.next4:                                        ; preds = %if.done
  %7 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3303
    #dbg_value(i32 %4, !3292, !DIExpression(), !3304)
  %8 = call i1 @"(*internal/futex.Futex).Wait"(ptr %7, i32 %4, ptr undef), !dbg !3305
  br label %for.body, !dbg !3294

gep.throw:                                        ; preds = %for.body
  call void @runtime.nilPanic(ptr undef), !dbg !3296
  unreachable, !dbg !3296

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3295
  unreachable, !dbg !3295

gep.throw3:                                       ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3303
  unreachable, !dbg !3303
}

; Function Attrs: nounwind uwtable(sync)
define internal %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %n, ptr %context) unnamed_addr #0 !dbg !3306 {
entry:
    #dbg_value(i32 %n, !3310, !DIExpression(), !3312)
  %wg = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3313
  %0 = getelementptr inbounds %"internal/task.Semaphore", ptr %wg, i32 0, i32 0, !dbg !3314
  %1 = icmp eq ptr %0, null, !dbg !3315
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3315

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/futex.Futex", ptr %0, i32 0, i32 0, !dbg !3315
    #dbg_value(i32 %n, !3310, !DIExpression(), !3316)
  call void @"(*sync/atomic.Uint32).Store"(ptr %2, i32 %n, ptr undef), !dbg !3317
  %3 = load %"internal/task.Semaphore", ptr %wg, align 4, !dbg !3318
    #dbg_value(%"internal/task.Semaphore" %3, !3311, !DIExpression(), !3318)
  ret %"internal/task.Semaphore" %3, !dbg !3319

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3315
  unreachable, !dbg !3315
}

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.GCStopWorldAndScan"(ptr %context) #0 !dbg !3320 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3328
    #dbg_value(ptr %0, !3322, !DIExpression(), !3329)
  %1 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3330
  %2 = icmp eq i32 %1, 0, !dbg !3331
  br i1 %2, label %if.then, label %if.done2, !dbg !3332

if.then:                                          ; preds = %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3333
  call void @"(*internal/task.waitGroup).wait"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3334
  call void @"(*sync/atomic.Uint32).Store"(ptr @"internal/task.gcState", i32 1, ptr undef), !dbg !3335
  %3 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3336
    #dbg_value(i32 %3, !3323, !DIExpression(), !3336)
  %4 = call %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %3, ptr undef), !dbg !3337
  store %"internal/task.Semaphore" %4, ptr @"internal/task.scanWaitGroup", align 4, !dbg !3338
    #dbg_value(%"internal/task.Semaphore" %4, !3324, !DIExpression(), !3338)
  %5 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !3339
    #dbg_value(ptr %5, !3325, !DIExpression(), !3339)
    #dbg_value(ptr %5, !3326, !DIExpression(), !3340)
  br label %for.loop, !dbg !3332

for.loop:                                         ; preds = %deref.next15, %if.then
  %6 = phi ptr [ %5, %if.then ], [ %20, %deref.next15 ], !dbg !3340
    #dbg_value(ptr %6, !3326, !DIExpression(), !3341)
  %7 = icmp ne ptr %6, null, !dbg !3342
  br i1 %7, label %for.body, label %for.done, !dbg !3332

for.body:                                         ; preds = %for.loop
    #dbg_value(ptr %6, !3326, !DIExpression(), !3343)
    #dbg_value(ptr %0, !3322, !DIExpression(), !3344)
  %8 = icmp ne ptr %6, %0, !dbg !3345
  br i1 %8, label %if.then1, label %if.done, !dbg !3332

if.then1:                                         ; preds = %for.body
    #dbg_value(ptr %6, !3326, !DIExpression(), !3346)
  %9 = icmp eq ptr %6, null, !dbg !3347
  br i1 %9, label %gep.throw, label %gep.next, !dbg !3347

gep.next:                                         ; preds = %if.then1
  %10 = getelementptr inbounds %"internal/task.Task", ptr %6, i32 0, i32 4, !dbg !3347
  %11 = icmp eq ptr %10, null, !dbg !3348
  br i1 %11, label %gep.throw8, label %gep.next9, !dbg !3348

gep.next9:                                        ; preds = %gep.next
  %12 = getelementptr inbounds %"internal/task.state", ptr %10, i32 0, i32 1, !dbg !3348
  %13 = icmp eq ptr %12, null, !dbg !3348
  br i1 %13, label %deref.throw, label %deref.next, !dbg !3348

deref.next:                                       ; preds = %gep.next9
  %14 = load ptr, ptr %12, align 8, !dbg !3348
  call void @tinygo_task_send_gc_signal(ptr %14), !dbg !3349
  br label %if.done, !dbg !3332

if.done:                                          ; preds = %deref.next, %for.body
    #dbg_value(ptr %6, !3326, !DIExpression(), !3350)
  %15 = icmp eq ptr %6, null, !dbg !3351
  br i1 %15, label %gep.throw10, label %gep.next11, !dbg !3351

gep.next11:                                       ; preds = %if.done
  %16 = getelementptr inbounds %"internal/task.Task", ptr %6, i32 0, i32 4, !dbg !3351
  %17 = icmp eq ptr %16, null, !dbg !3352
  br i1 %17, label %gep.throw12, label %gep.next13, !dbg !3352

gep.next13:                                       ; preds = %gep.next11
  %18 = getelementptr inbounds %"internal/task.state", ptr %16, i32 0, i32 4, !dbg !3352
  %19 = icmp eq ptr %18, null, !dbg !3352
  br i1 %19, label %deref.throw14, label %deref.next15, !dbg !3352

deref.next15:                                     ; preds = %gep.next13
  %20 = load ptr, ptr %18, align 8, !dbg !3352
    #dbg_value(ptr %20, !3326, !DIExpression(), !3353)
  br label %for.loop, !dbg !3332

for.done:                                         ; preds = %for.loop
  call void @"(*internal/task.waitGroup).wait"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3354
  br label %if.done2, !dbg !3332

if.done2:                                         ; preds = %for.done, %entry
  %21 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !3355
    #dbg_value(ptr %21, !3325, !DIExpression(), !3355)
    #dbg_value(ptr %21, !3327, !DIExpression(), !3356)
  br label %for.loop3, !dbg !3332

for.loop3:                                        ; preds = %deref.next33, %if.done2
  %22 = phi ptr [ %21, %if.done2 ], [ %42, %deref.next33 ], !dbg !3356
    #dbg_value(ptr %22, !3327, !DIExpression(), !3357)
  %23 = icmp ne ptr %22, null, !dbg !3358
  br i1 %23, label %for.body4, label %for.done7, !dbg !3332

for.body4:                                        ; preds = %for.loop3
    #dbg_value(ptr %22, !3327, !DIExpression(), !3359)
    #dbg_value(ptr %0, !3322, !DIExpression(), !3360)
  %24 = icmp ne ptr %22, %0, !dbg !3361
  br i1 %24, label %if.then5, label %if.done6, !dbg !3332

if.then5:                                         ; preds = %for.body4
    #dbg_value(ptr %22, !3327, !DIExpression(), !3362)
  %25 = icmp eq ptr %22, null, !dbg !3363
  br i1 %25, label %gep.throw16, label %gep.next17, !dbg !3363

gep.next17:                                       ; preds = %if.then5
  %26 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3363
  %27 = icmp eq ptr %26, null, !dbg !3364
  br i1 %27, label %gep.throw18, label %gep.next19, !dbg !3364

gep.next19:                                       ; preds = %gep.next17
  %28 = getelementptr inbounds %"internal/task.state", ptr %26, i32 0, i32 3, !dbg !3364
  %29 = icmp eq ptr %28, null, !dbg !3364
  br i1 %29, label %deref.throw20, label %deref.next21, !dbg !3364

deref.next21:                                     ; preds = %gep.next19
  %30 = load i64, ptr %28, align 8, !dbg !3364
    #dbg_value(ptr %22, !3327, !DIExpression(), !3365)
  %31 = icmp eq ptr %22, null, !dbg !3366
  br i1 %31, label %gep.throw22, label %gep.next23, !dbg !3366

gep.next23:                                       ; preds = %deref.next21
  %32 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3366
  %33 = icmp eq ptr %32, null, !dbg !3367
  br i1 %33, label %gep.throw24, label %gep.next25, !dbg !3367

gep.next25:                                       ; preds = %gep.next23
  %34 = getelementptr inbounds %"internal/task.state", ptr %32, i32 0, i32 2, !dbg !3367
  %35 = icmp eq ptr %34, null, !dbg !3367
  br i1 %35, label %deref.throw26, label %deref.next27, !dbg !3367

deref.next27:                                     ; preds = %gep.next25
  %36 = load i64, ptr %34, align 8, !dbg !3367
  call void @runtime.markRoots(i64 %30, i64 %36, ptr undef), !dbg !3368
  br label %if.done6, !dbg !3332

if.done6:                                         ; preds = %deref.next27, %for.body4
    #dbg_value(ptr %22, !3327, !DIExpression(), !3369)
  %37 = icmp eq ptr %22, null, !dbg !3370
  br i1 %37, label %gep.throw28, label %gep.next29, !dbg !3370

gep.next29:                                       ; preds = %if.done6
  %38 = getelementptr inbounds %"internal/task.Task", ptr %22, i32 0, i32 4, !dbg !3370
  %39 = icmp eq ptr %38, null, !dbg !3371
  br i1 %39, label %gep.throw30, label %gep.next31, !dbg !3371

gep.next31:                                       ; preds = %gep.next29
  %40 = getelementptr inbounds %"internal/task.state", ptr %38, i32 0, i32 4, !dbg !3371
  %41 = icmp eq ptr %40, null, !dbg !3371
  br i1 %41, label %deref.throw32, label %deref.next33, !dbg !3371

deref.next33:                                     ; preds = %gep.next31
  %42 = load ptr, ptr %40, align 8, !dbg !3371
    #dbg_value(ptr %42, !3327, !DIExpression(), !3372)
  br label %for.loop3, !dbg !3332

for.done7:                                        ; preds = %for.loop3
  call void @tinygo_scanCurrentStack(), !dbg !3373
  call void @"internal/task.gcScanGlobals"(ptr undef), !dbg !3374
  ret void, !dbg !3375

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3347
  unreachable, !dbg !3347

gep.throw8:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3348
  unreachable, !dbg !3348

deref.throw:                                      ; preds = %gep.next9
  call void @runtime.nilPanic(ptr undef), !dbg !3348
  unreachable, !dbg !3348

gep.throw10:                                      ; preds = %if.done
  call void @runtime.nilPanic(ptr undef), !dbg !3351
  unreachable, !dbg !3351

gep.throw12:                                      ; preds = %gep.next11
  call void @runtime.nilPanic(ptr undef), !dbg !3352
  unreachable, !dbg !3352

deref.throw14:                                    ; preds = %gep.next13
  call void @runtime.nilPanic(ptr undef), !dbg !3352
  unreachable, !dbg !3352

gep.throw16:                                      ; preds = %if.then5
  call void @runtime.nilPanic(ptr undef), !dbg !3363
  unreachable, !dbg !3363

gep.throw18:                                      ; preds = %gep.next17
  call void @runtime.nilPanic(ptr undef), !dbg !3364
  unreachable, !dbg !3364

deref.throw20:                                    ; preds = %gep.next19
  call void @runtime.nilPanic(ptr undef), !dbg !3364
  unreachable, !dbg !3364

gep.throw22:                                      ; preds = %deref.next21
  call void @runtime.nilPanic(ptr undef), !dbg !3366
  unreachable, !dbg !3366

gep.throw24:                                      ; preds = %gep.next23
  call void @runtime.nilPanic(ptr undef), !dbg !3367
  unreachable, !dbg !3367

deref.throw26:                                    ; preds = %gep.next25
  call void @runtime.nilPanic(ptr undef), !dbg !3367
  unreachable, !dbg !3367

gep.throw28:                                      ; preds = %if.done6
  call void @runtime.nilPanic(ptr undef), !dbg !3370
  unreachable, !dbg !3370

gep.throw30:                                      ; preds = %gep.next29
  call void @runtime.nilPanic(ptr undef), !dbg !3371
  unreachable, !dbg !3371

deref.throw32:                                    ; preds = %gep.next31
  call void @runtime.nilPanic(ptr undef), !dbg !3371
  unreachable, !dbg !3371
}

declare void @tinygo_task_send_gc_signal(ptr nocapture) #1

declare void @tinygo_scanCurrentStack() #1

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.GCResumeWorld"(ptr %context) #0 !dbg !3376 {
entry:
  %0 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3380
  %1 = icmp eq i32 %0, 0, !dbg !3381
  br i1 %1, label %if.then, label %if.done, !dbg !3382

if.then:                                          ; preds = %entry
  ret void, !dbg !3383

if.done:                                          ; preds = %entry
  %2 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !3384
    #dbg_value(i32 %2, !3378, !DIExpression(), !3384)
  %3 = call %"internal/task.Semaphore" @"internal/task.initWaitGroup"(i32 %2, ptr undef), !dbg !3385
  store %"internal/task.Semaphore" %3, ptr @"internal/task.scanWaitGroup", align 4, !dbg !3386
    #dbg_value(%"internal/task.Semaphore" %3, !3379, !DIExpression(), !3386)
  call void @"(*sync/atomic.Uint32).Store"(ptr @"internal/task.gcState", i32 0, ptr undef), !dbg !3387
  call void @"(*internal/futex.Futex).WakeAll"(ptr @"internal/task.gcState", ptr undef), !dbg !3388
  call void @"(*internal/task.Mutex).Unlock"(ptr @"internal/task.activeTaskLock", ptr undef), !dbg !3389
  ret void, !dbg !3390
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_gc_pause(i32 %sig) #0 !dbg !3391 {
entry:
    #dbg_value(i32 %sig, !3395, !DIExpression(), !3397)
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3398
  %1 = icmp eq ptr %0, null, !dbg !3399
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3399

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3399
  %3 = call ptr @runtime.stacksave(ptr undef), !dbg !3400
  %4 = ptrtoint ptr %3 to i64, !dbg !3401
  %5 = icmp eq ptr %2, null, !dbg !3402
  br i1 %5, label %gep.throw1, label %gep.next2, !dbg !3402

gep.next2:                                        ; preds = %gep.next
  %6 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 3, !dbg !3402
  %7 = icmp eq ptr %6, null, !dbg !3402
  br i1 %7, label %store.throw, label %store.next, !dbg !3402

store.next:                                       ; preds = %gep.next2
  store i64 %4, ptr %6, align 8, !dbg !3402
    #dbg_value(i64 %4, !3396, !DIExpression(), !3402)
  call void @"(*internal/task.waitGroup).done"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3403
  br label %for.loop, !dbg !3404

for.loop:                                         ; preds = %for.body, %store.next
  %8 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @"internal/task.gcState", ptr undef), !dbg !3405
  %9 = icmp eq i32 %8, 1, !dbg !3406
  br i1 %9, label %for.body, label %for.done, !dbg !3404

for.body:                                         ; preds = %for.loop
  %10 = call i1 @"(*internal/futex.Futex).Wait"(ptr @"internal/task.gcState", i32 1, ptr undef), !dbg !3407
  br label %for.loop, !dbg !3404

for.done:                                         ; preds = %for.loop
  call void @"(*internal/task.waitGroup).done"(ptr @"internal/task.scanWaitGroup", ptr undef), !dbg !3408
  ret void, !dbg !3409

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3399
  unreachable, !dbg !3399

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3402
  unreachable, !dbg !3402

store.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3402
  unreachable, !dbg !3402
}

; Function Attrs: nounwind uwtable(sync)
define internal i64 @"internal/task.StackTop"(ptr %context) #0 !dbg !3410 {
entry:
  %0 = call ptr @"internal/task.Current"(ptr undef), !dbg !3411
  %1 = icmp eq ptr %0, null, !dbg !3412
  br i1 %1, label %gep.throw, label %gep.next, !dbg !3412

gep.next:                                         ; preds = %entry
  %2 = getelementptr inbounds %"internal/task.Task", ptr %0, i32 0, i32 4, !dbg !3412
  %3 = icmp eq ptr %2, null, !dbg !3413
  br i1 %3, label %gep.throw1, label %gep.next2, !dbg !3413

gep.next2:                                        ; preds = %gep.next
  %4 = getelementptr inbounds %"internal/task.state", ptr %2, i32 0, i32 2, !dbg !3413
  %5 = icmp eq ptr %4, null, !dbg !3413
  br i1 %5, label %deref.throw, label %deref.next, !dbg !3413

deref.next:                                       ; preds = %gep.next2
  %6 = load i64, ptr %4, align 8, !dbg !3413
  ret i64 %6, !dbg !3414

gep.throw:                                        ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !3412
  unreachable, !dbg !3412

gep.throw1:                                       ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3413
  unreachable, !dbg !3413

deref.throw:                                      ; preds = %gep.next2
  call void @runtime.nilPanic(ptr undef), !dbg !3413
  unreachable, !dbg !3413
}

; Function Attrs: noinline nounwind allockind("alloc,zeroed") allocsize(0) uwtable(sync)
define internal noalias nonnull ptr @runtime.alloc(i64 %size, ptr %layout, ptr %context) #4 !dbg !3415 {
entry:
    #dbg_value(i64 %size, !3419, !DIExpression(), !3422)
    #dbg_value(ptr %layout, !3420, !DIExpression(), !3422)
    #dbg_value(i64 %size, !3419, !DIExpression(), !3423)
  %0 = icmp eq i64 %size, 0, !dbg !3424
  br i1 %0, label %if.then, label %if.done, !dbg !3425

if.then:                                          ; preds = %entry
  ret ptr @runtime.zeroSizedAlloc, !dbg !3426

if.done:                                          ; preds = %entry
  call void @"(*internal/task.Mutex).Lock"(ptr @runtime.gcLock, ptr undef), !dbg !3427
    #dbg_value(ptr null, !3421, !DIExpression(), !3428)
    #dbg_value(ptr %layout, !3420, !DIExpression(), !3429)
  %1 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !3430
  %2 = icmp eq ptr %layout, %1, !dbg !3431
  br i1 %2, label %if.then1, label %if.else, !dbg !3425

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %size, !3419, !DIExpression(), !3432)
  %3 = call ptr @GC_malloc_atomic(i64 %size), !dbg !3433
    #dbg_value(ptr %3, !3421, !DIExpression(), !3434)
    #dbg_value(ptr %3, !3421, !DIExpression(), !3435)
    #dbg_value(i64 %size, !3419, !DIExpression(), !3436)
  call void @runtime.memzero(ptr %3, i64 %size, ptr undef), !dbg !3437
  br label %if.done2, !dbg !3425

if.done2:                                         ; preds = %if.else, %if.then1
  %4 = phi ptr [ %3, %if.then1 ], [ %6, %if.else ], !dbg !3428
  call void @runtime.gcResumeWorld(ptr undef), !dbg !3438
  call void @"(*internal/task.Mutex).Unlock"(ptr @runtime.gcLock, ptr undef), !dbg !3439
    #dbg_value(ptr %4, !3421, !DIExpression(), !3440)
  %5 = icmp eq ptr %4, null, !dbg !3441
  br i1 %5, label %if.then3, label %if.done4, !dbg !3425

if.then3:                                         ; preds = %if.done2
  call void @runtime.runtimePanic(ptr @"runtime$string.7", i64 17, ptr undef), !dbg !3442
  br label %if.done4, !dbg !3425

if.done4:                                         ; preds = %if.then3, %if.done2
    #dbg_value(ptr %4, !3421, !DIExpression(), !3443)
  ret ptr %4, !dbg !3444

if.else:                                          ; preds = %if.done
    #dbg_value(i64 %size, !3419, !DIExpression(), !3445)
  %6 = call ptr @GC_malloc(i64 %size), !dbg !3446
    #dbg_value(ptr %6, !3421, !DIExpression(), !3447)
  br label %if.done2, !dbg !3425
}

declare ptr @GC_malloc_atomic(i64) #1

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memzero(ptr %ptr, i64 %size, ptr %context) #0 !dbg !3448 {
entry:
    #dbg_value(ptr %ptr, !3452, !DIExpression(), !3454)
    #dbg_value(i64 %size, !3453, !DIExpression(), !3454)
  call void @llvm.memset.p0.i64(ptr %ptr, i8 0, i64 %size, i1 false), !dbg !3454
  ret void, !dbg !3454
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.gcResumeWorld(ptr %context) unnamed_addr #0 !dbg !3455 {
entry:
  call void @"internal/task.GCResumeWorld"(ptr undef), !dbg !3457
  ret void, !dbg !3458
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.runtimePanic(ptr readonly %msg.data, i64 %msg.len, ptr %context) #0 !dbg !3459 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %msg.data, 0, !dbg !3462
  %1 = insertvalue %runtime._string %0, i64 %msg.len, 1, !dbg !3462
    #dbg_value(ptr %msg.data, !3461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3462)
    #dbg_value(i64 %msg.len, !3461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3462)
  %2 = call ptr @llvm.returnaddress(i32 0), !dbg !3463
    #dbg_value(%runtime._string %1, !3461, !DIExpression(), !3464)
  %3 = extractvalue %runtime._string %1, 0, !dbg !3465
  %4 = extractvalue %runtime._string %1, 1, !dbg !3465
  call void @runtime.runtimePanicAt(ptr %2, ptr %3, i64 %4, ptr undef), !dbg !3465
  ret void, !dbg !3466
}

declare ptr @GC_malloc(i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.runtimePanicAt(ptr %addr, ptr readonly %msg.data, i64 %msg.len, ptr %context) unnamed_addr #0 !dbg !3467 {
entry:
    #dbg_value(ptr %addr, !3471, !DIExpression(), !3473)
  %0 = insertvalue %runtime._string zeroinitializer, ptr %msg.data, 0, !dbg !3473
  %1 = insertvalue %runtime._string %0, i64 %msg.len, 1, !dbg !3473
    #dbg_value(ptr %msg.data, !3472, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3473)
    #dbg_value(i64 %msg.len, !3472, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3473)
  br i1 false, label %if.then, label %if.done, !dbg !3474

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !3475
  br label %if.done, !dbg !3474

if.done:                                          ; preds = %if.then, %entry
  br i1 true, label %if.then1, label %if.else, !dbg !3474

if.then1:                                         ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.13", i64 24, ptr undef), !dbg !3476
    #dbg_value(ptr %addr, !3471, !DIExpression(), !3477)
  %2 = ptrtoint ptr %addr to i64, !dbg !3478
  %3 = sub i64 %2, 5, !dbg !3479
  call void @runtime.printptr(i64 %3, ptr undef), !dbg !3480
  call void @runtime.printstring(ptr @"runtime$string.14", i64 2, ptr undef), !dbg !3481
  br label %if.done2, !dbg !3474

if.done2:                                         ; preds = %if.else, %if.then1
    #dbg_value(%runtime._string %1, !3472, !DIExpression(), !3482)
  %4 = extractvalue %runtime._string %1, 0, !dbg !3483
  %5 = extractvalue %runtime._string %1, 1, !dbg !3483
  call void @runtime.printstring(ptr %4, i64 %5, ptr undef), !dbg !3483
  call void @runtime.printnl(ptr undef), !dbg !3484
  call void @abort(), !dbg !3485
  ret void, !dbg !3486

if.else:                                          ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.15", i64 22, ptr undef), !dbg !3487
  br label %if.done2, !dbg !3474
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printstring(ptr readonly %s.data, i64 %s.len, ptr %context) #0 !dbg !3488 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %s.data, 0, !dbg !3492
  %1 = insertvalue %runtime._string %0, i64 %s.len, 1, !dbg !3492
    #dbg_value(ptr %s.data, !3490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3492)
    #dbg_value(i64 %s.len, !3490, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3492)
    #dbg_value(i64 0, !3491, !DIExpression(), !3493)
  br label %for.loop, !dbg !3494

for.loop:                                         ; preds = %for.body, %entry
  %2 = phi i64 [ 0, %entry ], [ %7, %for.body ], !dbg !3493
    #dbg_value(i64 %2, !3491, !DIExpression(), !3495)
    #dbg_value(%runtime._string %1, !3490, !DIExpression(), !3496)
  %len = extractvalue %runtime._string %1, 1, !dbg !3497
  %3 = icmp slt i64 %2, %len, !dbg !3498
  br i1 %3, label %for.body, label %for.done, !dbg !3494

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !3491, !DIExpression(), !3499)
    #dbg_value(%runtime._string %1, !3490, !DIExpression(), !3500)
  %len1 = extractvalue %runtime._string %1, 1, !dbg !3501
  %4 = extractvalue %runtime._string %1, 0, !dbg !3501
  %5 = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !3501
  %6 = load i8, ptr %5, align 1, !dbg !3501
  call void @runtime.putchar(i8 %6, ptr undef), !dbg !3502
  %7 = add i64 %2, 1, !dbg !3503
    #dbg_value(i64 %7, !3491, !DIExpression(), !3503)
  br label %for.loop, !dbg !3494

for.done:                                         ; preds = %for.loop
  ret void, !dbg !3504
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printptr(i64 %ptr, ptr %context) #0 !dbg !3505 {
entry:
    #dbg_value(i64 %ptr, !3507, !DIExpression(), !3510)
    #dbg_value(i64 %ptr, !3507, !DIExpression(), !3511)
  %0 = icmp eq i64 %ptr, 0, !dbg !3512
  br i1 %0, label %if.then, label %if.done, !dbg !3513

if.then:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.45", i64 3, ptr undef), !dbg !3514
  ret void, !dbg !3515

if.done:                                          ; preds = %entry
  call void @runtime.putchar(i8 48, ptr undef), !dbg !3516
  call void @runtime.putchar(i8 120, ptr undef), !dbg !3517
    #dbg_value(i64 0, !3508, !DIExpression(), !3518)
  br label %for.loop, !dbg !3513

for.loop:                                         ; preds = %if.done2, %if.done
  %1 = phi i64 [ %ptr, %if.done ], [ %shift.result3, %if.done2 ], !dbg !3519
  %2 = phi i64 [ 0, %if.done ], [ %9, %if.done2 ], !dbg !3518
    #dbg_value(i64 %2, !3508, !DIExpression(), !3520)
  %3 = icmp slt i64 %2, 16, !dbg !3521
  br i1 %3, label %for.body, label %for.done, !dbg !3513

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !3507, !DIExpression(), !3522)
  %4 = lshr i64 %1, 60, !dbg !3523
  %shift.result = select i1 false, i64 0, i64 %4, !dbg !3523
  %5 = trunc i64 %shift.result to i8, !dbg !3524
    #dbg_value(i8 %5, !3509, !DIExpression(), !3525)
    #dbg_value(i8 %5, !3509, !DIExpression(), !3526)
  %6 = icmp ult i8 %5, 10, !dbg !3527
  br i1 %6, label %if.then1, label %if.else, !dbg !3513

if.then1:                                         ; preds = %for.body
    #dbg_value(i8 %5, !3509, !DIExpression(), !3528)
  %7 = add i8 %5, 48, !dbg !3529
  call void @runtime.putchar(i8 %7, ptr undef), !dbg !3530
  br label %if.done2, !dbg !3513

if.done2:                                         ; preds = %if.else, %if.then1
  %8 = shl i64 %1, 4, !dbg !3531
  %shift.result3 = select i1 false, i64 0, i64 %8, !dbg !3531
    #dbg_value(i64 %shift.result3, !3507, !DIExpression(), !3531)
  %9 = add i64 %2, 1, !dbg !3532
    #dbg_value(i64 %9, !3508, !DIExpression(), !3532)
  br label %for.loop, !dbg !3513

if.else:                                          ; preds = %for.body
    #dbg_value(i8 %5, !3509, !DIExpression(), !3533)
  %10 = sub i8 %5, 10, !dbg !3534
  %11 = add i8 %10, 97, !dbg !3535
  call void @runtime.putchar(i8 %11, ptr undef), !dbg !3536
  br label %if.done2, !dbg !3513

for.done:                                         ; preds = %for.loop
  ret void, !dbg !3537
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printnl(ptr %context) #0 !dbg !3538 {
entry:
  br i1 false, label %if.then, label %if.done, !dbg !3539

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 13, ptr undef), !dbg !3540
  br label %if.done, !dbg !3539

if.done:                                          ; preds = %if.then, %entry
  call void @runtime.putchar(i8 10, ptr undef), !dbg !3541
  ret void, !dbg !3542
}

; Function Attrs: noreturn
declare void @abort() #7

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.putchar(i8 %c, ptr %context) unnamed_addr #0 !dbg !3543 {
entry:
    #dbg_value(i8 %c, !3547, !DIExpression(), !3548)
  %buf = call align 1 ptr @runtime.alloc(i64 1, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3549
  %0 = getelementptr inbounds [1 x i8], ptr %buf, i32 0, i64 0, !dbg !3549
    #dbg_value(i8 %c, !3547, !DIExpression(), !3550)
  store i8 %c, ptr %0, align 1, !dbg !3550
    #dbg_value(i8 %c, !3547, !DIExpression(), !3550)
  %1 = getelementptr inbounds [1 x i8], ptr %buf, i32 0, i64 0, !dbg !3551
  %2 = call i64 @write(i32 1, ptr %1, i64 1), !dbg !3552
  ret void, !dbg !3553
}

declare i64 @write(i32, ptr nocapture, i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.initRand(ptr %context) unnamed_addr #0 !dbg !3554 {
entry:
  %0 = call { i64, i1 } @runtime.hardwareRand(ptr undef), !dbg !3559
  %1 = extractvalue { i64, i1 } %0, 0, !dbg !3559
    #dbg_value(i64 %1, !3556, !DIExpression(), !3560)
  %2 = extractvalue { i64, i1 } %0, 1, !dbg !3559
    #dbg_value(i64 %1, !3556, !DIExpression(), !3561)
  %3 = or i64 %1, 1, !dbg !3562
  store i64 %3, ptr @runtime.xorshift64State, align 8, !dbg !3563
    #dbg_value(i64 %3, !3557, !DIExpression(), !3563)
  %4 = load i64, ptr @runtime.xorshift64State, align 8, !dbg !3564
    #dbg_value(i64 %4, !3557, !DIExpression(), !3564)
  %5 = trunc i64 %4 to i32, !dbg !3565
  store i32 %5, ptr @runtime.xorshift32State, align 4, !dbg !3566
    #dbg_value(i32 %5, !3558, !DIExpression(), !3566)
  ret void, !dbg !3567
}

; Function Attrs: nounwind uwtable(sync)
define internal { i64, i1 } @runtime.hardwareRand(ptr %context) unnamed_addr #0 !dbg !3568 {
entry:
  %n = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !3573
  %0 = call i32 @getrandom(ptr %n, i64 8, i32 0), !dbg !3574
    #dbg_value(i32 %0, !3571, !DIExpression(), !3575)
    #dbg_value(i32 %0, !3571, !DIExpression(), !3576)
  %1 = icmp ne i32 %0, 8, !dbg !3577
  br i1 %1, label %if.then, label %if.done, !dbg !3578

if.then:                                          ; preds = %entry
  store i64 0, ptr %n, align 8, !dbg !3579
  %2 = load i64, ptr %n, align 8, !dbg !3578
  %3 = insertvalue { i64, i1 } zeroinitializer, i64 %2, 0, !dbg !3579
  %4 = insertvalue { i64, i1 } %3, i1 false, 1, !dbg !3579
  ret { i64, i1 } %4, !dbg !3579

if.done:                                          ; preds = %entry
  %5 = load i64, ptr %n, align 8, !dbg !3580
    #dbg_value(i64 %5, !3572, !DIExpression(), !3580)
  store i64 %5, ptr %n, align 8, !dbg !3581
  %6 = load i64, ptr %n, align 8, !dbg !3578
  %7 = insertvalue { i64, i1 } zeroinitializer, i64 %6, 0, !dbg !3581
  %8 = insertvalue { i64, i1 } %7, i1 true, 1, !dbg !3581
  ret { i64, i1 } %8, !dbg !3581
}

declare i32 @getrandom(ptr nocapture, i64, i32) #1

; Function Attrs: nounwind uwtable(sync)
define internal i64 @runtime.getCurrentStackPointer(ptr %context) unnamed_addr #0 !dbg !3582 {
entry:
  %0 = call ptr @runtime.stacksave(ptr undef), !dbg !3584
  %1 = ptrtoint ptr %0 to i64, !dbg !3585
  ret i64 %1, !dbg !3586
}

; Function Attrs: nounwind uwtable(sync)
define internal ptr @runtime.stacksave(ptr %context) #0 !dbg !3587 {
entry:
  %0 = call ptr @llvm.stacksave.p0(), !dbg !3588
  ret ptr %0, !dbg !3588
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #9

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memcpy(ptr %dst, ptr %src, i64 %size, ptr %context) #0 !dbg !3589 {
entry:
    #dbg_value(ptr %dst, !3593, !DIExpression(), !3596)
    #dbg_value(ptr %src, !3594, !DIExpression(), !3596)
    #dbg_value(i64 %size, !3595, !DIExpression(), !3596)
  call void @llvm.memcpy.p0.p0.i64(ptr %dst, ptr %src, i64 %size, i1 false), !dbg !3596
  ret void, !dbg !3596
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.nilPanic(ptr %context) #0 !dbg !3597 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !3598
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.17", i64 23, ptr undef), !dbg !3599
  ret void, !dbg !3600
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.deadlock(ptr %context) unnamed_addr #0 !dbg !3601 {
entry:
  call void @"internal/task.Pause"(ptr undef), !dbg !3602
  ret void, !dbg !3603
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.lookupPanic(ptr %context) #0 !dbg !3604 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !3605
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.19", i64 18, ptr undef), !dbg !3606
  ret void, !dbg !3607
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.panicOrGoexit(ptr %message.typecode, ptr %message.value, i8 %panicking, ptr %context) unnamed_addr #0 !dbg !3608 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %message.typecode, 0, !dbg !3628
  %1 = insertvalue { ptr, ptr } %0, ptr %message.value, 1, !dbg !3628
    #dbg_value(ptr %message.typecode, !3613, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3628)
    #dbg_value(ptr %message.value, !3613, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3628)
    #dbg_value(i8 %panicking, !3614, !DIExpression(), !3628)
  br i1 false, label %if.then, label %if.done, !dbg !3629

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !3630
  br label %if.done, !dbg !3629

if.done:                                          ; preds = %if.then, %entry
  br i1 true, label %cond.true, label %if.done3, !dbg !3629

cond.true:                                        ; preds = %if.done
  %2 = call i1 @"runtime/interrupt.In"(ptr undef), !dbg !3631
  br i1 %2, label %if.done3, label %if.then1, !dbg !3629

if.then1:                                         ; preds = %cond.true
  %3 = call ptr @"internal/task.Current"(ptr undef), !dbg !3632
  %4 = icmp eq ptr %3, null, !dbg !3633
  br i1 %4, label %gep.throw, label %gep.next, !dbg !3633

gep.next:                                         ; preds = %if.then1
  %5 = getelementptr inbounds %"internal/task.Task", ptr %3, i32 0, i32 8, !dbg !3633
  %6 = icmp eq ptr %5, null, !dbg !3633
  br i1 %6, label %deref.throw, label %deref.next, !dbg !3633

deref.next:                                       ; preds = %gep.next
  %7 = load ptr, ptr %5, align 8, !dbg !3633
    #dbg_value(ptr %7, !3615, !DIExpression(), !3634)
    #dbg_value(ptr %7, !3615, !DIExpression(), !3635)
  %8 = icmp ne ptr %7, null, !dbg !3636
  br i1 %8, label %if.then2, label %if.done3, !dbg !3629

if.then2:                                         ; preds = %deref.next
    #dbg_value(ptr %7, !3615, !DIExpression(), !3637)
    #dbg_value({ ptr, ptr } %1, !3613, !DIExpression(), !3638)
  %9 = getelementptr inbounds %runtime.deferFrame, ptr %7, i32 0, i32 5, !dbg !3639
  %10 = icmp eq ptr %9, null, !dbg !3639
  br i1 %10, label %store.throw, label %store.next, !dbg !3639

store.next:                                       ; preds = %if.then2
  store { ptr, ptr } %1, ptr %9, align 8, !dbg !3639
    #dbg_value({ ptr, ptr } %1, !3626, !DIExpression(), !3639)
    #dbg_value(ptr %7, !3615, !DIExpression(), !3640)
    #dbg_value(i8 %panicking, !3614, !DIExpression(), !3641)
  %11 = getelementptr inbounds %runtime.deferFrame, ptr %7, i32 0, i32 4, !dbg !3642
  %12 = icmp eq ptr %11, null, !dbg !3642
  br i1 %12, label %store.throw6, label %store.next7, !dbg !3642

store.next7:                                      ; preds = %store.next
  store i8 %panicking, ptr %11, align 1, !dbg !3642
    #dbg_value(i8 %panicking, !3627, !DIExpression(), !3642)
    #dbg_value(ptr %7, !3615, !DIExpression(), !3643)
  call void @tinygo_longjmp(ptr %7), !dbg !3644
  br label %if.done3, !dbg !3629

if.done3:                                         ; preds = %store.next7, %deref.next, %cond.true, %if.done
    #dbg_value(i8 %panicking, !3614, !DIExpression(), !3645)
  %13 = icmp eq i8 %panicking, 2, !dbg !3646
  br i1 %13, label %if.then4, label %if.done5, !dbg !3629

if.then4:                                         ; preds = %if.done3
  call void @runtime.deadlock(ptr undef), !dbg !3647
  br label %if.done5, !dbg !3629

if.done5:                                         ; preds = %if.then4, %if.done3
  call void @runtime.printstring(ptr @"runtime$string.12", i64 7, ptr undef), !dbg !3648
    #dbg_value({ ptr, ptr } %1, !3613, !DIExpression(), !3649)
  %14 = extractvalue { ptr, ptr } %1, 0, !dbg !3650
  %15 = extractvalue { ptr, ptr } %1, 1, !dbg !3650
  call void @runtime.printitf(ptr %14, ptr %15, ptr undef), !dbg !3650
  call void @runtime.printnl(ptr undef), !dbg !3651
  call void @abort(), !dbg !3652
  ret void, !dbg !3653

gep.throw:                                        ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !3633
  unreachable, !dbg !3633

deref.throw:                                      ; preds = %gep.next
  call void @runtime.nilPanic(ptr undef), !dbg !3633
  unreachable, !dbg !3633

store.throw:                                      ; preds = %if.then2
  call void @runtime.nilPanic(ptr undef), !dbg !3639
  unreachable, !dbg !3639

store.throw6:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !3642
  unreachable, !dbg !3642
}

declare void @tinygo_longjmp(ptr nocapture dereferenceable_or_null(48)) #1

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printitf(ptr %msg.typecode, ptr %msg.value, ptr %context) unnamed_addr #0 !dbg !3654 {
entry:
  %itf = alloca { ptr, ptr }, align 8, !dbg !3684
  %unpack.raw.alloc136 = alloca ptr, align 8, !dbg !3684
  %unpack.raw.alloc129 = alloca ptr, align 8, !dbg !3684
  %unpack.raw.alloc = alloca ptr, align 8, !dbg !3684
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %msg.typecode, 0, !dbg !3684
  %1 = insertvalue { ptr, ptr } %0, ptr %msg.value, 1, !dbg !3684
    #dbg_value(ptr %msg.typecode, !3658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3684)
    #dbg_value(ptr %msg.value, !3658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3684)
    #dbg_value({ ptr, ptr } %1, !3658, !DIExpression(), !3685)
  %interface.type = extractvalue { ptr, ptr } %1, 0, !dbg !3686
  br i1 false, label %typeassert.ok, label %typeassert.next, !dbg !3686

typeassert.next:                                  ; preds = %typeassert.ok, %entry
  %typeassert.value = phi i1 [ false, %entry ], [ %unpack.int, %typeassert.ok ], !dbg !3686
  %2 = insertvalue { i1, i1 } undef, i1 %typeassert.value, 0, !dbg !3686
  %3 = insertvalue { i1, i1 } %2, i1 false, 1, !dbg !3686
  %4 = extractvalue { i1, i1 } %3, 0, !dbg !3686
  %5 = extractvalue { i1, i1 } %3, 1, !dbg !3686
  br i1 %5, label %typeswitch.body, label %typeswitch.next, !dbg !3687

typeassert.ok:                                    ; preds = %entry
  %typeassert.value.ptr = extractvalue { ptr, ptr } %1, 1, !dbg !3686
  %unpack.int = ptrtoint ptr %typeassert.value.ptr to i1, !dbg !3686
  br label %typeassert.next, !dbg !3686

typeswitch.body:                                  ; preds = %typeassert.next
    #dbg_value(i1 %4, !3659, !DIExpression(), !3688)
  call void @runtime.printbool(i1 %4, ptr undef), !dbg !3689
  br label %typeswitch.done, !dbg !3687

typeswitch.done:                                  ; preds = %deref.next161, %typeswitch.body39, %typeswitch.body37, %typeswitch.body35, %typeswitch.body33, %typeswitch.body31, %typeswitch.body29, %typeswitch.body27, %typeswitch.body25, %typeswitch.body23, %typeswitch.body21, %typeswitch.body19, %typeswitch.body17, %switch.body15, %switch.next14, %switch.body13, %typeswitch.body10, %typeswitch.body8, %typeswitch.body6, %typeswitch.body4, %switch.body2, %switch.next, %switch.body, %typeswitch.body
  ret void, !dbg !3690

typeswitch.next:                                  ; preds = %typeassert.next
  %interface.type41 = extractvalue { ptr, ptr } %1, 0, !dbg !3691
  br i1 false, label %typeassert.ok43, label %typeassert.next44, !dbg !3691

typeassert.next44:                                ; preds = %typeassert.ok43, %typeswitch.next
  %typeassert.value47 = phi i64 [ 0, %typeswitch.next ], [ %unpack.int46, %typeassert.ok43 ], !dbg !3691
  %6 = insertvalue { i64, i1 } undef, i64 %typeassert.value47, 0, !dbg !3691
  %7 = insertvalue { i64, i1 } %6, i1 false, 1, !dbg !3691
  %8 = extractvalue { i64, i1 } %7, 0, !dbg !3691
  %9 = extractvalue { i64, i1 } %7, 1, !dbg !3691
  br i1 %9, label %typeswitch.body1, label %typeswitch.next3, !dbg !3687

typeassert.ok43:                                  ; preds = %typeswitch.next
  %typeassert.value.ptr45 = extractvalue { ptr, ptr } %1, 1, !dbg !3691
  %unpack.int46 = ptrtoint ptr %typeassert.value.ptr45 to i64, !dbg !3691
  br label %typeassert.next44, !dbg !3691

typeswitch.body1:                                 ; preds = %typeassert.next44
  br i1 true, label %switch.body, label %switch.next, !dbg !3687

switch.body:                                      ; preds = %typeswitch.body1
    #dbg_value(i64 %8, !3660, !DIExpression(), !3692)
  call void @runtime.printint64(i64 %8, ptr undef), !dbg !3693
  br label %typeswitch.done, !dbg !3687

switch.next:                                      ; preds = %typeswitch.body1
  br i1 false, label %switch.body2, label %typeswitch.done, !dbg !3687

switch.body2:                                     ; preds = %switch.next
    #dbg_value(i64 %8, !3660, !DIExpression(), !3694)
  %10 = trunc i64 %8 to i32, !dbg !3695
  call void @runtime.printint32(i32 %10, ptr undef), !dbg !3696
  br label %typeswitch.done, !dbg !3687

typeswitch.next3:                                 ; preds = %typeassert.next44
  %interface.type48 = extractvalue { ptr, ptr } %1, 0, !dbg !3697
  br i1 false, label %typeassert.ok50, label %typeassert.next51, !dbg !3697

typeassert.next51:                                ; preds = %typeassert.ok50, %typeswitch.next3
  %typeassert.value54 = phi i8 [ 0, %typeswitch.next3 ], [ %unpack.int53, %typeassert.ok50 ], !dbg !3697
  %11 = insertvalue { i8, i1 } undef, i8 %typeassert.value54, 0, !dbg !3697
  %12 = insertvalue { i8, i1 } %11, i1 false, 1, !dbg !3697
  %13 = extractvalue { i8, i1 } %12, 0, !dbg !3697
  %14 = extractvalue { i8, i1 } %12, 1, !dbg !3697
  br i1 %14, label %typeswitch.body4, label %typeswitch.next5, !dbg !3687

typeassert.ok50:                                  ; preds = %typeswitch.next3
  %typeassert.value.ptr52 = extractvalue { ptr, ptr } %1, 1, !dbg !3697
  %unpack.int53 = ptrtoint ptr %typeassert.value.ptr52 to i8, !dbg !3697
  br label %typeassert.next51, !dbg !3697

typeswitch.body4:                                 ; preds = %typeassert.next51
    #dbg_value(i8 %13, !3661, !DIExpression(), !3698)
  call void @runtime.printint8(i8 %13, ptr undef), !dbg !3699
  br label %typeswitch.done, !dbg !3687

typeswitch.next5:                                 ; preds = %typeassert.next51
  %interface.type55 = extractvalue { ptr, ptr } %1, 0, !dbg !3700
  br i1 false, label %typeassert.ok57, label %typeassert.next58, !dbg !3700

typeassert.next58:                                ; preds = %typeassert.ok57, %typeswitch.next5
  %typeassert.value61 = phi i16 [ 0, %typeswitch.next5 ], [ %unpack.int60, %typeassert.ok57 ], !dbg !3700
  %15 = insertvalue { i16, i1 } undef, i16 %typeassert.value61, 0, !dbg !3700
  %16 = insertvalue { i16, i1 } %15, i1 false, 1, !dbg !3700
  %17 = extractvalue { i16, i1 } %16, 0, !dbg !3700
  %18 = extractvalue { i16, i1 } %16, 1, !dbg !3700
  br i1 %18, label %typeswitch.body6, label %typeswitch.next7, !dbg !3687

typeassert.ok57:                                  ; preds = %typeswitch.next5
  %typeassert.value.ptr59 = extractvalue { ptr, ptr } %1, 1, !dbg !3700
  %unpack.int60 = ptrtoint ptr %typeassert.value.ptr59 to i16, !dbg !3700
  br label %typeassert.next58, !dbg !3700

typeswitch.body6:                                 ; preds = %typeassert.next58
    #dbg_value(i16 %17, !3662, !DIExpression(), !3701)
  call void @runtime.printint16(i16 %17, ptr undef), !dbg !3702
  br label %typeswitch.done, !dbg !3687

typeswitch.next7:                                 ; preds = %typeassert.next58
  %interface.type62 = extractvalue { ptr, ptr } %1, 0, !dbg !3703
  br i1 false, label %typeassert.ok64, label %typeassert.next65, !dbg !3703

typeassert.next65:                                ; preds = %typeassert.ok64, %typeswitch.next7
  %typeassert.value68 = phi i32 [ 0, %typeswitch.next7 ], [ %unpack.int67, %typeassert.ok64 ], !dbg !3703
  %19 = insertvalue { i32, i1 } undef, i32 %typeassert.value68, 0, !dbg !3703
  %20 = insertvalue { i32, i1 } %19, i1 false, 1, !dbg !3703
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !3703
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !3703
  br i1 %22, label %typeswitch.body8, label %typeswitch.next9, !dbg !3687

typeassert.ok64:                                  ; preds = %typeswitch.next7
  %typeassert.value.ptr66 = extractvalue { ptr, ptr } %1, 1, !dbg !3703
  %unpack.int67 = ptrtoint ptr %typeassert.value.ptr66 to i32, !dbg !3703
  br label %typeassert.next65, !dbg !3703

typeswitch.body8:                                 ; preds = %typeassert.next65
    #dbg_value(i32 %21, !3664, !DIExpression(), !3704)
  call void @runtime.printint32(i32 %21, ptr undef), !dbg !3705
  br label %typeswitch.done, !dbg !3687

typeswitch.next9:                                 ; preds = %typeassert.next65
  %interface.type69 = extractvalue { ptr, ptr } %1, 0, !dbg !3706
  br i1 false, label %typeassert.ok71, label %typeassert.next72, !dbg !3706

typeassert.next72:                                ; preds = %typeassert.ok71, %typeswitch.next9
  %typeassert.value75 = phi i64 [ 0, %typeswitch.next9 ], [ %unpack.int74, %typeassert.ok71 ], !dbg !3706
  %23 = insertvalue { i64, i1 } undef, i64 %typeassert.value75, 0, !dbg !3706
  %24 = insertvalue { i64, i1 } %23, i1 false, 1, !dbg !3706
  %25 = extractvalue { i64, i1 } %24, 0, !dbg !3706
  %26 = extractvalue { i64, i1 } %24, 1, !dbg !3706
  br i1 %26, label %typeswitch.body10, label %typeswitch.next11, !dbg !3687

typeassert.ok71:                                  ; preds = %typeswitch.next9
  %typeassert.value.ptr73 = extractvalue { ptr, ptr } %1, 1, !dbg !3706
  %unpack.int74 = ptrtoint ptr %typeassert.value.ptr73 to i64, !dbg !3706
  br label %typeassert.next72, !dbg !3706

typeswitch.body10:                                ; preds = %typeassert.next72
    #dbg_value(i64 %25, !3665, !DIExpression(), !3707)
  call void @runtime.printint64(i64 %25, ptr undef), !dbg !3708
  br label %typeswitch.done, !dbg !3687

typeswitch.next11:                                ; preds = %typeassert.next72
  %interface.type76 = extractvalue { ptr, ptr } %1, 0, !dbg !3709
  br i1 false, label %typeassert.ok78, label %typeassert.next79, !dbg !3709

typeassert.next79:                                ; preds = %typeassert.ok78, %typeswitch.next11
  %typeassert.value82 = phi i64 [ 0, %typeswitch.next11 ], [ %unpack.int81, %typeassert.ok78 ], !dbg !3709
  %27 = insertvalue { i64, i1 } undef, i64 %typeassert.value82, 0, !dbg !3709
  %28 = insertvalue { i64, i1 } %27, i1 false, 1, !dbg !3709
  %29 = extractvalue { i64, i1 } %28, 0, !dbg !3709
  %30 = extractvalue { i64, i1 } %28, 1, !dbg !3709
  br i1 %30, label %typeswitch.body12, label %typeswitch.next16, !dbg !3687

typeassert.ok78:                                  ; preds = %typeswitch.next11
  %typeassert.value.ptr80 = extractvalue { ptr, ptr } %1, 1, !dbg !3709
  %unpack.int81 = ptrtoint ptr %typeassert.value.ptr80 to i64, !dbg !3709
  br label %typeassert.next79, !dbg !3709

typeswitch.body12:                                ; preds = %typeassert.next79
  br i1 true, label %switch.body13, label %switch.next14, !dbg !3687

switch.body13:                                    ; preds = %typeswitch.body12
    #dbg_value(i64 %29, !3666, !DIExpression(), !3710)
  call void @runtime.printuint64(i64 %29, ptr undef), !dbg !3711
  br label %typeswitch.done, !dbg !3687

switch.next14:                                    ; preds = %typeswitch.body12
  br i1 false, label %switch.body15, label %typeswitch.done, !dbg !3687

switch.body15:                                    ; preds = %switch.next14
    #dbg_value(i64 %29, !3666, !DIExpression(), !3712)
  %31 = trunc i64 %29 to i32, !dbg !3713
  call void @runtime.printuint32(i32 %31, ptr undef), !dbg !3714
  br label %typeswitch.done, !dbg !3687

typeswitch.next16:                                ; preds = %typeassert.next79
  %interface.type83 = extractvalue { ptr, ptr } %1, 0, !dbg !3715
  %typeassert.ok2 = icmp eq ptr @"reflect/types.type:basic:uint8", %interface.type83, !dbg !3715
  br i1 %typeassert.ok2, label %typeassert.ok85, label %typeassert.next86, !dbg !3715

typeassert.next86:                                ; preds = %typeassert.ok85, %typeswitch.next16
  %typeassert.value89 = phi i8 [ 0, %typeswitch.next16 ], [ %unpack.int88, %typeassert.ok85 ], !dbg !3715
  %32 = insertvalue { i8, i1 } undef, i8 %typeassert.value89, 0, !dbg !3715
  %33 = insertvalue { i8, i1 } %32, i1 %typeassert.ok2, 1, !dbg !3715
  %34 = extractvalue { i8, i1 } %33, 0, !dbg !3715
  %35 = extractvalue { i8, i1 } %33, 1, !dbg !3715
  br i1 %35, label %typeswitch.body17, label %typeswitch.next18, !dbg !3687

typeassert.ok85:                                  ; preds = %typeswitch.next16
  %typeassert.value.ptr87 = extractvalue { ptr, ptr } %1, 1, !dbg !3715
  %unpack.int88 = ptrtoint ptr %typeassert.value.ptr87 to i8, !dbg !3715
  br label %typeassert.next86, !dbg !3715

typeswitch.body17:                                ; preds = %typeassert.next86
    #dbg_value(i8 %34, !3667, !DIExpression(), !3716)
  call void @runtime.printuint8(i8 %34, ptr undef), !dbg !3717
  br label %typeswitch.done, !dbg !3687

typeswitch.next18:                                ; preds = %typeassert.next86
  %interface.type90 = extractvalue { ptr, ptr } %1, 0, !dbg !3718
  br i1 false, label %typeassert.ok92, label %typeassert.next93, !dbg !3718

typeassert.next93:                                ; preds = %typeassert.ok92, %typeswitch.next18
  %typeassert.value96 = phi i16 [ 0, %typeswitch.next18 ], [ %unpack.int95, %typeassert.ok92 ], !dbg !3718
  %36 = insertvalue { i16, i1 } undef, i16 %typeassert.value96, 0, !dbg !3718
  %37 = insertvalue { i16, i1 } %36, i1 false, 1, !dbg !3718
  %38 = extractvalue { i16, i1 } %37, 0, !dbg !3718
  %39 = extractvalue { i16, i1 } %37, 1, !dbg !3718
  br i1 %39, label %typeswitch.body19, label %typeswitch.next20, !dbg !3687

typeassert.ok92:                                  ; preds = %typeswitch.next18
  %typeassert.value.ptr94 = extractvalue { ptr, ptr } %1, 1, !dbg !3718
  %unpack.int95 = ptrtoint ptr %typeassert.value.ptr94 to i16, !dbg !3718
  br label %typeassert.next93, !dbg !3718

typeswitch.body19:                                ; preds = %typeassert.next93
    #dbg_value(i16 %38, !3668, !DIExpression(), !3719)
  call void @runtime.printuint16(i16 %38, ptr undef), !dbg !3720
  br label %typeswitch.done, !dbg !3687

typeswitch.next20:                                ; preds = %typeassert.next93
  %interface.type97 = extractvalue { ptr, ptr } %1, 0, !dbg !3721
  br i1 false, label %typeassert.ok99, label %typeassert.next100, !dbg !3721

typeassert.next100:                               ; preds = %typeassert.ok99, %typeswitch.next20
  %typeassert.value103 = phi i32 [ 0, %typeswitch.next20 ], [ %unpack.int102, %typeassert.ok99 ], !dbg !3721
  %40 = insertvalue { i32, i1 } undef, i32 %typeassert.value103, 0, !dbg !3721
  %41 = insertvalue { i32, i1 } %40, i1 false, 1, !dbg !3721
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !3721
  %43 = extractvalue { i32, i1 } %41, 1, !dbg !3721
  br i1 %43, label %typeswitch.body21, label %typeswitch.next22, !dbg !3687

typeassert.ok99:                                  ; preds = %typeswitch.next20
  %typeassert.value.ptr101 = extractvalue { ptr, ptr } %1, 1, !dbg !3721
  %unpack.int102 = ptrtoint ptr %typeassert.value.ptr101 to i32, !dbg !3721
  br label %typeassert.next100, !dbg !3721

typeswitch.body21:                                ; preds = %typeassert.next100
    #dbg_value(i32 %42, !3669, !DIExpression(), !3722)
  call void @runtime.printuint32(i32 %42, ptr undef), !dbg !3723
  br label %typeswitch.done, !dbg !3687

typeswitch.next22:                                ; preds = %typeassert.next100
  %interface.type104 = extractvalue { ptr, ptr } %1, 0, !dbg !3724
  br i1 false, label %typeassert.ok106, label %typeassert.next107, !dbg !3724

typeassert.next107:                               ; preds = %typeassert.ok106, %typeswitch.next22
  %typeassert.value110 = phi i64 [ 0, %typeswitch.next22 ], [ %unpack.int109, %typeassert.ok106 ], !dbg !3724
  %44 = insertvalue { i64, i1 } undef, i64 %typeassert.value110, 0, !dbg !3724
  %45 = insertvalue { i64, i1 } %44, i1 false, 1, !dbg !3724
  %46 = extractvalue { i64, i1 } %45, 0, !dbg !3724
  %47 = extractvalue { i64, i1 } %45, 1, !dbg !3724
  br i1 %47, label %typeswitch.body23, label %typeswitch.next24, !dbg !3687

typeassert.ok106:                                 ; preds = %typeswitch.next22
  %typeassert.value.ptr108 = extractvalue { ptr, ptr } %1, 1, !dbg !3724
  %unpack.int109 = ptrtoint ptr %typeassert.value.ptr108 to i64, !dbg !3724
  br label %typeassert.next107, !dbg !3724

typeswitch.body23:                                ; preds = %typeassert.next107
    #dbg_value(i64 %46, !3670, !DIExpression(), !3725)
  call void @runtime.printuint64(i64 %46, ptr undef), !dbg !3726
  br label %typeswitch.done, !dbg !3687

typeswitch.next24:                                ; preds = %typeassert.next107
  %interface.type111 = extractvalue { ptr, ptr } %1, 0, !dbg !3727
  br i1 false, label %typeassert.ok113, label %typeassert.next114, !dbg !3727

typeassert.next114:                               ; preds = %typeassert.ok113, %typeswitch.next24
  %typeassert.value117 = phi i64 [ 0, %typeswitch.next24 ], [ %unpack.int116, %typeassert.ok113 ], !dbg !3727
  %48 = insertvalue { i64, i1 } undef, i64 %typeassert.value117, 0, !dbg !3727
  %49 = insertvalue { i64, i1 } %48, i1 false, 1, !dbg !3727
  %50 = extractvalue { i64, i1 } %49, 0, !dbg !3727
  %51 = extractvalue { i64, i1 } %49, 1, !dbg !3727
  br i1 %51, label %typeswitch.body25, label %typeswitch.next26, !dbg !3687

typeassert.ok113:                                 ; preds = %typeswitch.next24
  %typeassert.value.ptr115 = extractvalue { ptr, ptr } %1, 1, !dbg !3727
  %unpack.int116 = ptrtoint ptr %typeassert.value.ptr115 to i64, !dbg !3727
  br label %typeassert.next114, !dbg !3727

typeswitch.body25:                                ; preds = %typeassert.next114
    #dbg_value(i64 %50, !3671, !DIExpression(), !3728)
  call void @runtime.printuintptr(i64 %50, ptr undef), !dbg !3729
  br label %typeswitch.done, !dbg !3687

typeswitch.next26:                                ; preds = %typeassert.next114
  %interface.type118 = extractvalue { ptr, ptr } %1, 0, !dbg !3730
  br i1 false, label %typeassert.ok120, label %typeassert.next121, !dbg !3730

typeassert.next121:                               ; preds = %typeassert.ok120, %typeswitch.next26
  %typeassert.value123 = phi float [ 0.000000e+00, %typeswitch.next26 ], [ %57, %typeassert.ok120 ], !dbg !3684
  %52 = insertvalue { float, i1 } undef, float %typeassert.value123, 0, !dbg !3684
  %53 = insertvalue { float, i1 } %52, i1 false, 1, !dbg !3684
  %54 = extractvalue { float, i1 } %53, 0, !dbg !3730
  %55 = extractvalue { float, i1 } %53, 1, !dbg !3730
  br i1 %55, label %typeswitch.body27, label %typeswitch.next28, !dbg !3687

typeassert.ok120:                                 ; preds = %typeswitch.next26
  %typeassert.value.ptr122 = extractvalue { ptr, ptr } %1, 1, !dbg !3730
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc), !dbg !3684
  store ptr %typeassert.value.ptr122, ptr %unpack.raw.alloc, align 8, !dbg !3684
  %56 = getelementptr inbounds { float }, ptr %unpack.raw.alloc, i32 0, i32 0, !dbg !3684
  %57 = load float, ptr %56, align 4, !dbg !3684
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc), !dbg !3684
  br label %typeassert.next121, !dbg !3684

typeswitch.body27:                                ; preds = %typeassert.next121
    #dbg_value(float %54, !3672, !DIExpression(), !3731)
  call void @runtime.printfloat32(float %54, ptr undef), !dbg !3732
  br label %typeswitch.done, !dbg !3687

typeswitch.next28:                                ; preds = %typeassert.next121
  %interface.type124 = extractvalue { ptr, ptr } %1, 0, !dbg !3733
  br i1 false, label %typeassert.ok126, label %typeassert.next127, !dbg !3733

typeassert.next127:                               ; preds = %typeassert.ok126, %typeswitch.next28
  %typeassert.value130 = phi double [ 0.000000e+00, %typeswitch.next28 ], [ %63, %typeassert.ok126 ], !dbg !3684
  %58 = insertvalue { double, i1 } undef, double %typeassert.value130, 0, !dbg !3684
  %59 = insertvalue { double, i1 } %58, i1 false, 1, !dbg !3684
  %60 = extractvalue { double, i1 } %59, 0, !dbg !3733
  %61 = extractvalue { double, i1 } %59, 1, !dbg !3733
  br i1 %61, label %typeswitch.body29, label %typeswitch.next30, !dbg !3687

typeassert.ok126:                                 ; preds = %typeswitch.next28
  %typeassert.value.ptr128 = extractvalue { ptr, ptr } %1, 1, !dbg !3733
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc129), !dbg !3684
  store ptr %typeassert.value.ptr128, ptr %unpack.raw.alloc129, align 8, !dbg !3684
  %62 = getelementptr inbounds { double }, ptr %unpack.raw.alloc129, i32 0, i32 0, !dbg !3684
  %63 = load double, ptr %62, align 8, !dbg !3684
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc129), !dbg !3684
  br label %typeassert.next127, !dbg !3684

typeswitch.body29:                                ; preds = %typeassert.next127
    #dbg_value(double %60, !3674, !DIExpression(), !3734)
  call void @runtime.printfloat64(double %60, ptr undef), !dbg !3735
  br label %typeswitch.done, !dbg !3687

typeswitch.next30:                                ; preds = %typeassert.next127
  %interface.type131 = extractvalue { ptr, ptr } %1, 0, !dbg !3736
  br i1 false, label %typeassert.ok133, label %typeassert.next134, !dbg !3736

typeassert.next134:                               ; preds = %typeassert.ok133, %typeswitch.next30
  %typeassert.value137 = phi { float, float } [ zeroinitializer, %typeswitch.next30 ], [ %69, %typeassert.ok133 ], !dbg !3684
  %64 = insertvalue { { float, float }, i1 } undef, { float, float } %typeassert.value137, 0, !dbg !3684
  %65 = insertvalue { { float, float }, i1 } %64, i1 false, 1, !dbg !3684
  %66 = extractvalue { { float, float }, i1 } %65, 0, !dbg !3736
  %67 = extractvalue { { float, float }, i1 } %65, 1, !dbg !3736
  br i1 %67, label %typeswitch.body31, label %typeswitch.next32, !dbg !3687

typeassert.ok133:                                 ; preds = %typeswitch.next30
  %typeassert.value.ptr135 = extractvalue { ptr, ptr } %1, 1, !dbg !3736
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpack.raw.alloc136), !dbg !3684
  store ptr %typeassert.value.ptr135, ptr %unpack.raw.alloc136, align 8, !dbg !3684
  %68 = getelementptr inbounds { { float, float } }, ptr %unpack.raw.alloc136, i32 0, i32 0, !dbg !3684
  %69 = load { float, float }, ptr %68, align 4, !dbg !3684
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpack.raw.alloc136), !dbg !3684
  br label %typeassert.next134, !dbg !3684

typeswitch.body31:                                ; preds = %typeassert.next134
    #dbg_value({ float, float } %66, !3675, !DIExpression(), !3737)
  %70 = extractvalue { float, float } %66, 0, !dbg !3738
  %71 = extractvalue { float, float } %66, 1, !dbg !3738
  call void @runtime.printcomplex64(float %70, float %71, ptr undef), !dbg !3738
  br label %typeswitch.done, !dbg !3687

typeswitch.next32:                                ; preds = %typeassert.next134
  %interface.type138 = extractvalue { ptr, ptr } %1, 0, !dbg !3739
  br i1 false, label %typeassert.ok140, label %typeassert.next141, !dbg !3739

typeassert.next141:                               ; preds = %typeassert.ok140, %typeswitch.next32
  %typeassert.value143 = phi { double, double } [ zeroinitializer, %typeswitch.next32 ], [ %77, %typeassert.ok140 ], !dbg !3739
  %72 = insertvalue { { double, double }, i1 } undef, { double, double } %typeassert.value143, 0, !dbg !3739
  %73 = insertvalue { { double, double }, i1 } %72, i1 false, 1, !dbg !3739
  %74 = extractvalue { { double, double }, i1 } %73, 0, !dbg !3739
  %75 = extractvalue { { double, double }, i1 } %73, 1, !dbg !3739
  br i1 %75, label %typeswitch.body33, label %typeswitch.next34, !dbg !3687

typeassert.ok140:                                 ; preds = %typeswitch.next32
  %typeassert.value.ptr142 = extractvalue { ptr, ptr } %1, 1, !dbg !3739
  %76 = getelementptr inbounds { { double, double } }, ptr %typeassert.value.ptr142, i32 0, i32 0, !dbg !3739
  %77 = load { double, double }, ptr %76, align 8, !dbg !3739
  br label %typeassert.next141, !dbg !3739

typeswitch.body33:                                ; preds = %typeassert.next141
    #dbg_value({ double, double } %74, !3677, !DIExpression(), !3740)
  %78 = extractvalue { double, double } %74, 0, !dbg !3741
  %79 = extractvalue { double, double } %74, 1, !dbg !3741
  call void @runtime.printcomplex128(double %78, double %79, ptr undef), !dbg !3741
  br label %typeswitch.done, !dbg !3687

typeswitch.next34:                                ; preds = %typeassert.next141
  %interface.type144 = extractvalue { ptr, ptr } %1, 0, !dbg !3742
  %typeassert.ok1 = icmp eq ptr @"reflect/types.type:basic:string", %interface.type144, !dbg !3742
  br i1 %typeassert.ok1, label %typeassert.ok146, label %typeassert.next147, !dbg !3742

typeassert.next147:                               ; preds = %typeassert.ok146, %typeswitch.next34
  %typeassert.value149 = phi %runtime._string [ zeroinitializer, %typeswitch.next34 ], [ %85, %typeassert.ok146 ], !dbg !3742
  %80 = insertvalue { %runtime._string, i1 } undef, %runtime._string %typeassert.value149, 0, !dbg !3742
  %81 = insertvalue { %runtime._string, i1 } %80, i1 %typeassert.ok1, 1, !dbg !3742
  %82 = extractvalue { %runtime._string, i1 } %81, 0, !dbg !3742
  %83 = extractvalue { %runtime._string, i1 } %81, 1, !dbg !3742
  br i1 %83, label %typeswitch.body35, label %typeswitch.next36, !dbg !3687

typeassert.ok146:                                 ; preds = %typeswitch.next34
  %typeassert.value.ptr148 = extractvalue { ptr, ptr } %1, 1, !dbg !3742
  %84 = getelementptr inbounds { %runtime._string }, ptr %typeassert.value.ptr148, i32 0, i32 0, !dbg !3742
  %85 = load %runtime._string, ptr %84, align 8, !dbg !3742
  br label %typeassert.next147, !dbg !3742

typeswitch.body35:                                ; preds = %typeassert.next147
    #dbg_value(%runtime._string %82, !3679, !DIExpression(), !3743)
  %86 = extractvalue %runtime._string %82, 0, !dbg !3744
  %87 = extractvalue %runtime._string %82, 1, !dbg !3744
  call void @runtime.printstring(ptr %86, i64 %87, ptr undef), !dbg !3744
  br label %typeswitch.done, !dbg !3687

typeswitch.next36:                                ; preds = %typeassert.next147
  %interface.type150 = extractvalue { ptr, ptr } %1, 0, !dbg !3745
  %88 = call i1 @"interface:{Error:func:{}{basic:string}}.$typeassert"(ptr %interface.type150), !dbg !3745
  br i1 %88, label %typeassert.ok151, label %typeassert.next152, !dbg !3745

typeassert.next152:                               ; preds = %typeassert.ok151, %typeswitch.next36
  %typeassert.value153 = phi { ptr, ptr } [ zeroinitializer, %typeswitch.next36 ], [ %1, %typeassert.ok151 ], !dbg !3745
  %89 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %typeassert.value153, 0, !dbg !3745
  %90 = insertvalue { { ptr, ptr }, i1 } %89, i1 %88, 1, !dbg !3745
  %91 = extractvalue { { ptr, ptr }, i1 } %90, 0, !dbg !3745
  %92 = extractvalue { { ptr, ptr }, i1 } %90, 1, !dbg !3745
  br i1 %92, label %typeswitch.body37, label %typeswitch.next38, !dbg !3687

typeassert.ok151:                                 ; preds = %typeswitch.next36
  br label %typeassert.next152, !dbg !3745

typeswitch.body37:                                ; preds = %typeassert.next152
    #dbg_value({ ptr, ptr } %91, !3680, !DIExpression(), !3746)
  %invoke.func.typecode = extractvalue { ptr, ptr } %91, 0, !dbg !3747
  %invoke.func.value = extractvalue { ptr, ptr } %91, 1, !dbg !3747
  %93 = call %runtime._string @"interface:{Error:func:{}{basic:string}}.Error$invoke"(ptr %invoke.func.value, ptr %invoke.func.typecode, ptr undef), !dbg !3747
  %94 = extractvalue %runtime._string %93, 0, !dbg !3748
  %95 = extractvalue %runtime._string %93, 1, !dbg !3748
  call void @runtime.printstring(ptr %94, i64 %95, ptr undef), !dbg !3748
  br label %typeswitch.done, !dbg !3687

typeswitch.next38:                                ; preds = %typeassert.next152
  %interface.type154 = extractvalue { ptr, ptr } %1, 0, !dbg !3749
  %96 = call i1 @"interface:{String:func:{}{basic:string}}.$typeassert"(ptr %interface.type154), !dbg !3749
  br i1 %96, label %typeassert.ok155, label %typeassert.next156, !dbg !3749

typeassert.next156:                               ; preds = %typeassert.ok155, %typeswitch.next38
  %typeassert.value157 = phi { ptr, ptr } [ zeroinitializer, %typeswitch.next38 ], [ %1, %typeassert.ok155 ], !dbg !3749
  %97 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %typeassert.value157, 0, !dbg !3749
  %98 = insertvalue { { ptr, ptr }, i1 } %97, i1 %96, 1, !dbg !3749
  %99 = extractvalue { { ptr, ptr }, i1 } %98, 0, !dbg !3749
  %100 = extractvalue { { ptr, ptr }, i1 } %98, 1, !dbg !3749
  br i1 %100, label %typeswitch.body39, label %typeswitch.next40, !dbg !3687

typeassert.ok155:                                 ; preds = %typeswitch.next38
  br label %typeassert.next156, !dbg !3749

typeswitch.body39:                                ; preds = %typeassert.next156
    #dbg_value({ ptr, ptr } %99, !3681, !DIExpression(), !3750)
  %invoke.func.typecode158 = extractvalue { ptr, ptr } %99, 0, !dbg !3751
  %invoke.func.value159 = extractvalue { ptr, ptr } %99, 1, !dbg !3751
  %101 = call %runtime._string @"interface:{String:func:{}{basic:string}}.String$invoke"(ptr %invoke.func.value159, ptr %invoke.func.typecode158, ptr undef), !dbg !3751
  %102 = extractvalue %runtime._string %101, 0, !dbg !3752
  %103 = extractvalue %runtime._string %101, 1, !dbg !3752
  call void @runtime.printstring(ptr %102, i64 %103, ptr undef), !dbg !3752
  br label %typeswitch.done, !dbg !3687

typeswitch.next40:                                ; preds = %typeassert.next156
  %msg = call align 8 ptr @runtime.alloc(i64 16, ptr inttoptr (i64 389 to ptr), ptr undef), !dbg !3753
  store { ptr, ptr } %1, ptr %msg, align 8, !dbg !3753
  store { ptr, ptr } zeroinitializer, ptr %itf, align 8, !dbg !3684
  %104 = load { ptr, ptr }, ptr %msg, align 8, !dbg !3754
  store { ptr, ptr } %104, ptr %itf, align 8, !dbg !3755
    #dbg_value({ ptr, ptr } %104, !3683, !DIExpression(), !3755)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !3756
  %105 = getelementptr inbounds { ptr, ptr }, ptr %itf, i32 0, i32 0, !dbg !3757
  %106 = icmp eq ptr %105, null, !dbg !3757
  br i1 %106, label %deref.throw, label %deref.next, !dbg !3757

deref.next:                                       ; preds = %typeswitch.next40
  %107 = load ptr, ptr %105, align 8, !dbg !3757
  %108 = ptrtoint ptr %107 to i64, !dbg !3758
  call void @runtime.printuintptr(i64 %108, ptr undef), !dbg !3759
  call void @runtime.putchar(i8 58, ptr undef), !dbg !3760
  %109 = getelementptr inbounds { ptr, ptr }, ptr %itf, i32 0, i32 1, !dbg !3761
  %110 = icmp eq ptr %109, null, !dbg !3761
  br i1 %110, label %deref.throw160, label %deref.next161, !dbg !3761

deref.next161:                                    ; preds = %deref.next
  %111 = load ptr, ptr %109, align 8, !dbg !3761
  %112 = ptrtoint ptr %111 to i64, !dbg !3762
  call void @runtime.printptr(i64 %112, ptr undef), !dbg !3763
  call void @runtime.putchar(i8 41, ptr undef), !dbg !3764
  br label %typeswitch.done, !dbg !3687

deref.throw:                                      ; preds = %typeswitch.next40
  call void @runtime.nilPanic(ptr undef), !dbg !3757
  unreachable, !dbg !3757

deref.throw160:                                   ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !3761
  unreachable, !dbg !3761
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printbool(i1 %b, ptr %context) unnamed_addr #0 !dbg !3765 {
entry:
    #dbg_value(i1 %b, !3769, !DIExpression(), !3770)
    #dbg_value(i1 %b, !3769, !DIExpression(), !3771)
  br i1 %b, label %if.then, label %if.else, !dbg !3772

if.then:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.46", i64 4, ptr undef), !dbg !3773
  br label %if.done, !dbg !3772

if.done:                                          ; preds = %if.else, %if.then
  ret void, !dbg !3774

if.else:                                          ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.47", i64 5, ptr undef), !dbg !3775
  br label %if.done, !dbg !3772
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint64(i64 %n, ptr %context) unnamed_addr #0 !dbg !3776 {
entry:
    #dbg_value(i64 %n, !3780, !DIExpression(), !3781)
    #dbg_value(i64 %n, !3780, !DIExpression(), !3782)
  %0 = icmp slt i64 %n, 0, !dbg !3783
  br i1 %0, label %if.then, label %if.done, !dbg !3784

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3785
    #dbg_value(i64 %n, !3780, !DIExpression(), !3786)
  %1 = sub i64 0, %n, !dbg !3787
    #dbg_value(i64 %1, !3780, !DIExpression(), !3788)
  br label %if.done, !dbg !3784

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i64 [ %n, %entry ], [ %1, %if.then ], !dbg !3789
    #dbg_value(i64 %2, !3780, !DIExpression(), !3790)
  call void @runtime.printuint64(i64 %2, ptr undef), !dbg !3791
  ret void, !dbg !3792
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint32(i32 %n, ptr %context) unnamed_addr #0 !dbg !3793 {
entry:
    #dbg_value(i32 %n, !3795, !DIExpression(), !3796)
    #dbg_value(i32 %n, !3795, !DIExpression(), !3797)
  %0 = icmp slt i32 %n, 0, !dbg !3798
  br i1 %0, label %if.then, label %if.done, !dbg !3799

if.then:                                          ; preds = %entry
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3800
    #dbg_value(i32 %n, !3795, !DIExpression(), !3801)
  %1 = sub i32 0, %n, !dbg !3802
    #dbg_value(i32 %1, !3795, !DIExpression(), !3803)
  br label %if.done, !dbg !3799

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i32 [ %n, %entry ], [ %1, %if.then ], !dbg !3804
    #dbg_value(i32 %2, !3795, !DIExpression(), !3805)
  call void @runtime.printuint32(i32 %2, ptr undef), !dbg !3806
  ret void, !dbg !3807
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint8(i8 %n, ptr %context) unnamed_addr #0 !dbg !3808 {
entry:
    #dbg_value(i8 %n, !3812, !DIExpression(), !3813)
  br i1 true, label %if.then, label %if.else, !dbg !3814

if.then:                                          ; preds = %entry
    #dbg_value(i8 %n, !3812, !DIExpression(), !3815)
  %0 = sext i8 %n to i32, !dbg !3816
  call void @runtime.printint32(i32 %0, ptr undef), !dbg !3817
  br label %if.done, !dbg !3814

if.done:                                          ; preds = %if.done2, %if.then
  ret void, !dbg !3818

if.else:                                          ; preds = %entry
    #dbg_value(i8 %n, !3812, !DIExpression(), !3819)
  %1 = icmp slt i8 %n, 0, !dbg !3820
  br i1 %1, label %if.then1, label %if.done2, !dbg !3814

if.then1:                                         ; preds = %if.else
  call void @runtime.putchar(i8 45, ptr undef), !dbg !3821
    #dbg_value(i8 %n, !3812, !DIExpression(), !3822)
  %2 = sub i8 0, %n, !dbg !3823
    #dbg_value(i8 %2, !3812, !DIExpression(), !3824)
  br label %if.done2, !dbg !3814

if.done2:                                         ; preds = %if.then1, %if.else
  %3 = phi i8 [ %n, %if.else ], [ %2, %if.then1 ], !dbg !3825
    #dbg_value(i8 %3, !3812, !DIExpression(), !3826)
  call void @runtime.printuint8(i8 %3, ptr undef), !dbg !3827
  br label %if.done, !dbg !3814
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printint16(i16 %n, ptr %context) unnamed_addr #0 !dbg !3828 {
entry:
    #dbg_value(i16 %n, !3832, !DIExpression(), !3833)
    #dbg_value(i16 %n, !3832, !DIExpression(), !3834)
  %0 = sext i16 %n to i32, !dbg !3835
  call void @runtime.printint32(i32 %0, ptr undef), !dbg !3836
  ret void, !dbg !3837
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint64(i64 %n, ptr %context) unnamed_addr #0 !dbg !3838 {
entry:
    #dbg_value(i64 %n, !3842, !DIExpression(), !3847)
  %digits = alloca [20 x i8], align 1, !dbg !3848
  store [20 x i8] zeroinitializer, ptr %digits, align 1, !dbg !3848
    #dbg_value(i64 19, !3843, !DIExpression(), !3849)
    #dbg_value(i64 19, !3844, !DIExpression(), !3850)
  br label %for.loop, !dbg !3851

for.loop:                                         ; preds = %if.done, %entry
  %0 = phi i64 [ %n, %entry ], [ %10, %if.done ], !dbg !3852
  %1 = phi i64 [ 19, %entry ], [ %9, %if.done ], !dbg !3849
  %2 = phi i64 [ 19, %entry ], [ %11, %if.done ], !dbg !3850
    #dbg_value(i64 %2, !3844, !DIExpression(), !3853)
  %3 = icmp sge i64 %2, 0, !dbg !3854
  br i1 %3, label %for.body, label %for.done, !dbg !3851

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !3842, !DIExpression(), !3855)
  %4 = urem i64 %0, 10, !dbg !3856
  %5 = add i64 %4, 48, !dbg !3857
  %6 = trunc i64 %5 to i8, !dbg !3858
    #dbg_value(i8 %6, !3845, !DIExpression(), !3859)
    #dbg_value(i64 %2, !3844, !DIExpression(), !3860)
    #dbg_value(i8 %6, !3845, !DIExpression(), !3861)
  %7 = getelementptr inbounds [20 x i8], ptr %digits, i32 0, i64 %2, !dbg !3862
  store i8 %6, ptr %7, align 1, !dbg !3862
    #dbg_value(i8 %6, !3845, !DIExpression(), !3863)
  %8 = icmp ne i8 %6, 48, !dbg !3864
  br i1 %8, label %if.then, label %if.done, !dbg !3851

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %2, !3844, !DIExpression(), !3865)
    #dbg_value(i64 %2, !3843, !DIExpression(), !3866)
  br label %if.done, !dbg !3851

if.done:                                          ; preds = %if.then, %for.body
  %9 = phi i64 [ %1, %for.body ], [ %2, %if.then ], !dbg !3849
  %10 = udiv i64 %0, 10, !dbg !3867
    #dbg_value(i64 %10, !3842, !DIExpression(), !3867)
  %11 = sub i64 %2, 1, !dbg !3868
    #dbg_value(i64 %11, !3844, !DIExpression(), !3868)
  br label %for.loop, !dbg !3851

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !3843, !DIExpression(), !3869)
    #dbg_value(i64 %1, !3846, !DIExpression(), !3870)
  br label %for.loop1, !dbg !3851

for.loop1:                                        ; preds = %for.body2, %for.done
  %12 = phi i64 [ %1, %for.done ], [ %16, %for.body2 ], !dbg !3870
    #dbg_value(i64 %12, !3846, !DIExpression(), !3871)
  %13 = icmp slt i64 %12, 20, !dbg !3872
  br i1 %13, label %for.body2, label %for.done3, !dbg !3851

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %12, !3846, !DIExpression(), !3873)
  %14 = getelementptr inbounds [20 x i8], ptr %digits, i32 0, i64 %12, !dbg !3874
  %15 = load i8, ptr %14, align 1, !dbg !3874
  call void @runtime.putchar(i8 %15, ptr undef), !dbg !3875
  %16 = add i64 %12, 1, !dbg !3876
    #dbg_value(i64 %16, !3846, !DIExpression(), !3876)
  br label %for.loop1, !dbg !3851

for.done3:                                        ; preds = %for.loop1
  ret void, !dbg !3877
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint32(i32 %n, ptr %context) unnamed_addr #0 !dbg !3878 {
entry:
    #dbg_value(i32 %n, !3880, !DIExpression(), !3881)
    #dbg_value(i32 %n, !3880, !DIExpression(), !3882)
  %0 = zext i32 %n to i64, !dbg !3883
  call void @runtime.printuint64(i64 %0, ptr undef), !dbg !3884
  ret void, !dbg !3885
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint8(i8 %n, ptr %context) unnamed_addr #0 !dbg !3886 {
entry:
    #dbg_value(i8 %n, !3890, !DIExpression(), !3892)
  br i1 true, label %if.then, label %if.else, !dbg !3893

if.then:                                          ; preds = %entry
    #dbg_value(i8 %n, !3890, !DIExpression(), !3894)
  %0 = zext i8 %n to i32, !dbg !3895
  call void @runtime.printuint32(i32 %0, ptr undef), !dbg !3896
  br label %if.done, !dbg !3893

if.done:                                          ; preds = %if.done2, %if.then
  ret void, !dbg !3897

if.else:                                          ; preds = %entry
    #dbg_value(i8 %n, !3890, !DIExpression(), !3898)
  %1 = udiv i8 %n, 10, !dbg !3899
    #dbg_value(i8 %1, !3891, !DIExpression(), !3900)
    #dbg_value(i8 %1, !3891, !DIExpression(), !3901)
  %2 = icmp ne i8 %1, 0, !dbg !3902
  br i1 %2, label %if.then1, label %if.done2, !dbg !3893

if.then1:                                         ; preds = %if.else
    #dbg_value(i8 %1, !3891, !DIExpression(), !3903)
  call void @runtime.printuint8(i8 %1, ptr undef), !dbg !3904
  br label %if.done2, !dbg !3893

if.done2:                                         ; preds = %if.then1, %if.else
    #dbg_value(i8 %n, !3890, !DIExpression(), !3905)
  %3 = urem i8 %n, 10, !dbg !3906
  %4 = add i8 %3, 48, !dbg !3907
  call void @runtime.putchar(i8 %4, ptr undef), !dbg !3908
  br label %if.done, !dbg !3893
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuint16(i16 %n, ptr %context) unnamed_addr #0 !dbg !3909 {
entry:
    #dbg_value(i16 %n, !3913, !DIExpression(), !3914)
    #dbg_value(i16 %n, !3913, !DIExpression(), !3915)
  %0 = zext i16 %n to i32, !dbg !3916
  call void @runtime.printuint32(i32 %0, ptr undef), !dbg !3917
  ret void, !dbg !3918
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printuintptr(i64 %n, ptr %context) unnamed_addr #0 !dbg !3919 {
entry:
    #dbg_value(i64 %n, !3921, !DIExpression(), !3922)
  br i1 false, label %switch.body, label %switch.next, !dbg !3923

switch.body:                                      ; preds = %entry
    #dbg_value(i64 %n, !3921, !DIExpression(), !3924)
  %0 = trunc i64 %n to i16, !dbg !3925
  call void @runtime.printuint16(i16 %0, ptr undef), !dbg !3926
  br label %switch.done, !dbg !3923

switch.done:                                      ; preds = %switch.body3, %switch.next2, %switch.body1, %switch.body
  ret void, !dbg !3927

switch.next:                                      ; preds = %entry
  br i1 false, label %switch.body1, label %switch.next2, !dbg !3923

switch.body1:                                     ; preds = %switch.next
    #dbg_value(i64 %n, !3921, !DIExpression(), !3928)
  %1 = trunc i64 %n to i32, !dbg !3929
  call void @runtime.printuint32(i32 %1, ptr undef), !dbg !3930
  br label %switch.done, !dbg !3923

switch.next2:                                     ; preds = %switch.next
  br i1 true, label %switch.body3, label %switch.done, !dbg !3923

switch.body3:                                     ; preds = %switch.next2
    #dbg_value(i64 %n, !3921, !DIExpression(), !3931)
  call void @runtime.printuint64(i64 %n, ptr undef), !dbg !3932
  br label %switch.done, !dbg !3923
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printfloat32(float %v, ptr %context) unnamed_addr #0 !dbg !3933 {
entry:
    #dbg_value(float %v, !3937, !DIExpression(), !3946)
    #dbg_value(float %v, !3937, !DIExpression(), !3947)
    #dbg_value(float %v, !3937, !DIExpression(), !3948)
  %index.alloca = alloca [14 x i8], align 1, !dbg !3949
  %buf = alloca [14 x i8], align 1, !dbg !3949
  %0 = fcmp une float %v, %v, !dbg !3949
  br i1 %0, label %switch.body, label %switch.next, !dbg !3950

switch.body:                                      ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.35", i64 3, ptr undef), !dbg !3951
  ret void, !dbg !3952

switch.next:                                      ; preds = %entry
    #dbg_value(float %v, !3937, !DIExpression(), !3953)
    #dbg_value(float %v, !3937, !DIExpression(), !3954)
  %1 = fadd float %v, %v, !dbg !3955
    #dbg_value(float %v, !3937, !DIExpression(), !3956)
  %2 = fcmp oeq float %1, %v, !dbg !3957
  br i1 %2, label %binop.rhs, label %binop.done, !dbg !3950

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(float %v, !3937, !DIExpression(), !3958)
  %3 = fcmp ogt float %v, 0.000000e+00, !dbg !3959
  br label %binop.done, !dbg !3950

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ false, %switch.next ], [ %3, %binop.rhs ], !dbg !3960
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !3950

switch.body1:                                     ; preds = %binop.done
  call void @runtime.printstring(ptr @"runtime$string.36", i64 4, ptr undef), !dbg !3961
  ret void, !dbg !3962

switch.next2:                                     ; preds = %binop.done
    #dbg_value(float %v, !3937, !DIExpression(), !3963)
    #dbg_value(float %v, !3937, !DIExpression(), !3964)
  %5 = fadd float %v, %v, !dbg !3965
    #dbg_value(float %v, !3937, !DIExpression(), !3966)
  %6 = fcmp oeq float %5, %v, !dbg !3967
  br i1 %6, label %binop.rhs3, label %binop.done4, !dbg !3950

binop.rhs3:                                       ; preds = %switch.next2
    #dbg_value(float %v, !3937, !DIExpression(), !3968)
  %7 = fcmp olt float %v, 0.000000e+00, !dbg !3969
  br label %binop.done4, !dbg !3950

binop.done4:                                      ; preds = %binop.rhs3, %switch.next2
  %8 = phi i1 [ false, %switch.next2 ], [ %7, %binop.rhs3 ], !dbg !3970
  br i1 %8, label %switch.body5, label %switch.next6, !dbg !3950

switch.body5:                                     ; preds = %binop.done4
  call void @runtime.printstring(ptr @"runtime$string.37", i64 4, ptr undef), !dbg !3971
  ret void, !dbg !3972

switch.next6:                                     ; preds = %binop.done4
  store [14 x i8] zeroinitializer, ptr %buf, align 1, !dbg !3949
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !3973
  store i8 43, ptr %9, align 1, !dbg !3973
    #dbg_value(i64 0, !3938, !DIExpression(), !3974)
    #dbg_value(float %v, !3937, !DIExpression(), !3975)
  %10 = fcmp oeq float %v, 0.000000e+00, !dbg !3976
  br i1 %10, label %if.then, label %if.else, !dbg !3950

if.then:                                          ; preds = %switch.next6
    #dbg_value(float %v, !3937, !DIExpression(), !3977)
  %11 = fdiv float 1.000000e+00, %v, !dbg !3978
  %12 = fcmp olt float %11, 0.000000e+00, !dbg !3979
  br i1 %12, label %if.then7, label %if.done, !dbg !3950

if.then7:                                         ; preds = %if.then
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !3980
  store i8 45, ptr %13, align 1, !dbg !3980
  br label %if.done, !dbg !3950

if.done:                                          ; preds = %if.then19, %for.done18, %if.then7, %if.then
  %14 = phi float [ %v, %if.then ], [ %84, %for.done18 ], [ %v, %if.then7 ], [ %87, %if.then19 ], !dbg !3981
  %15 = phi i64 [ 0, %if.then ], [ %75, %for.done18 ], [ 0, %if.then7 ], [ %86, %if.then19 ], !dbg !3974
    #dbg_value(i64 0, !3939, !DIExpression(), !3982)
  br label %for.loop, !dbg !3950

for.loop:                                         ; preds = %lookup.next, %if.done
  %16 = phi float [ %14, %if.done ], [ %27, %lookup.next ], !dbg !3981
  %17 = phi i64 [ 0, %if.done ], [ %28, %lookup.next ], !dbg !3982
    #dbg_value(i64 %17, !3939, !DIExpression(), !3983)
  %18 = icmp slt i64 %17, 7, !dbg !3984
  br i1 %18, label %for.body, label %for.done, !dbg !3950

for.body:                                         ; preds = %for.loop
    #dbg_value(float %16, !3937, !DIExpression(), !3985)
  %abovemin = fcmp ole float 0xC3E0000000000000, %16, !dbg !3986
  %belowmax = fcmp ole float %16, 0x43DFFFFFC0000000, !dbg !3986
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3986
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3986
  %isnan = fcmp uno float %16, %16, !dbg !3986
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3986
  %normal = fptosi float %16 to i64, !dbg !3986
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3986
    #dbg_value(i64 %19, !3940, !DIExpression(), !3987)
    #dbg_value(i64 %17, !3939, !DIExpression(), !3988)
  %20 = add i64 %17, 2, !dbg !3989
    #dbg_value(i64 %19, !3940, !DIExpression(), !3990)
  %21 = add i64 %19, 48, !dbg !3991
  %22 = trunc i64 %21 to i8, !dbg !3992
  %23 = icmp uge i64 %20, 14, !dbg !3993
  br i1 %23, label %lookup.throw, label %lookup.next, !dbg !3993

lookup.next:                                      ; preds = %for.body
  %24 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 %20, !dbg !3993
  store i8 %22, ptr %24, align 1, !dbg !3993
    #dbg_value(i64 %19, !3940, !DIExpression(), !3994)
  %25 = sitofp i64 %19 to float, !dbg !3995
  %26 = fsub float %16, %25, !dbg !3996
    #dbg_value(float %26, !3937, !DIExpression(), !3996)
  %27 = fmul float %26, 1.000000e+01, !dbg !3997
    #dbg_value(float %27, !3937, !DIExpression(), !3997)
  %28 = add i64 %17, 1, !dbg !3998
    #dbg_value(i64 %28, !3939, !DIExpression(), !3998)
  br label %for.loop, !dbg !3950

for.done:                                         ; preds = %for.loop
  %29 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !3999
  %30 = load i8, ptr %29, align 1, !dbg !3999
  %31 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 1, !dbg !4000
  store i8 %30, ptr %31, align 1, !dbg !4000
  %32 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4001
  store i8 46, ptr %32, align 1, !dbg !4001
  %33 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 9, !dbg !4002
  store i8 101, ptr %33, align 1, !dbg !4002
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4003
  store i8 43, ptr %34, align 1, !dbg !4003
    #dbg_value(i64 %15, !3938, !DIExpression(), !4004)
  %35 = icmp slt i64 %15, 0, !dbg !4005
  br i1 %35, label %if.then8, label %if.done9, !dbg !3950

if.then8:                                         ; preds = %for.done
    #dbg_value(i64 %15, !3938, !DIExpression(), !4006)
  %36 = sub i64 0, %15, !dbg !4007
    #dbg_value(i64 %36, !3938, !DIExpression(), !4008)
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4009
  store i8 45, ptr %37, align 1, !dbg !4009
  br label %if.done9, !dbg !3950

if.done9:                                         ; preds = %if.then8, %for.done
  %38 = phi i64 [ %15, %for.done ], [ %36, %if.then8 ], !dbg !3974
    #dbg_value(i64 %38, !3938, !DIExpression(), !4010)
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !4011
  %40 = and i1 false, %39, !dbg !4011
  %41 = select i1 %40, i64 1, i64 100, !dbg !4011
  %42 = sdiv i64 %38, %41, !dbg !4011
  %43 = trunc i64 %42 to i8, !dbg !4012
  %44 = add i8 %43, 48, !dbg !4013
  %45 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 11, !dbg !4014
  store i8 %44, ptr %45, align 1, !dbg !4014
    #dbg_value(i64 %38, !3938, !DIExpression(), !4015)
  %46 = icmp eq i64 %38, -9223372036854775808, !dbg !4016
  %47 = and i1 false, %46, !dbg !4016
  %48 = select i1 %47, i64 1, i64 10, !dbg !4016
  %49 = sdiv i64 %38, %48, !dbg !4016
  %50 = trunc i64 %49 to i8, !dbg !4017
  %51 = urem i8 %50, 10, !dbg !4018
  %52 = add i8 %51, 48, !dbg !4019
  %53 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 12, !dbg !4020
  store i8 %52, ptr %53, align 1, !dbg !4020
    #dbg_value(i64 %38, !3938, !DIExpression(), !4021)
  %54 = icmp eq i64 %38, -9223372036854775808, !dbg !4022
  %55 = and i1 false, %54, !dbg !4022
  %56 = select i1 %55, i64 1, i64 10, !dbg !4022
  %57 = srem i64 %38, %56, !dbg !4022
  %58 = trunc i64 %57 to i8, !dbg !4023
  %59 = add i8 %58, 48, !dbg !4024
  %60 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 13, !dbg !4025
  store i8 %59, ptr %60, align 1, !dbg !4025
  %61 = load [14 x i8], ptr %buf, align 1, !dbg !4026
    #dbg_value([14 x i8] %61, !3941, !DIExpression(), !4026)
  br label %rangeindex.loop, !dbg !3950

rangeindex.loop:                                  ; preds = %lookup.next21, %if.done9
  %62 = phi i64 [ -1, %if.done9 ], [ %63, %lookup.next21 ], !dbg !3950
  %63 = add i64 %62, 1, !dbg !3950
  %64 = icmp slt i64 %63, 14, !dbg !3950
  br i1 %64, label %rangeindex.body, label %rangeindex.done, !dbg !3950

rangeindex.body:                                  ; preds = %rangeindex.loop
  %65 = icmp uge i64 %63, 14, !dbg !4026
  br i1 %65, label %lookup.throw20, label %lookup.next21, !dbg !4026

lookup.next21:                                    ; preds = %rangeindex.body
  call void @llvm.lifetime.start.p0(i64 14, ptr %index.alloca), !dbg !3949
  store [14 x i8] %61, ptr %index.alloca, align 1, !dbg !3949
  %index.gep = getelementptr inbounds [14 x i8], ptr %index.alloca, i32 0, i64 %63, !dbg !3949
  %index.load = load i8, ptr %index.gep, align 1, !dbg !3949
  call void @llvm.lifetime.end.p0(i64 14, ptr %index.alloca), !dbg !3949
    #dbg_value(i8 %index.load, !3943, !DIExpression(), !4027)
    #dbg_value(i8 %index.load, !3943, !DIExpression(), !4028)
  call void @runtime.putchar(i8 %index.load, ptr undef), !dbg !4029
  br label %rangeindex.loop, !dbg !3950

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret void, !dbg !4030

if.else:                                          ; preds = %switch.next6
    #dbg_value(float %v, !3937, !DIExpression(), !4031)
  %66 = fcmp olt float %v, 0.000000e+00, !dbg !4032
  br i1 %66, label %if.then10, label %for.loop11, !dbg !3950

if.then10:                                        ; preds = %if.else
    #dbg_value(float %v, !3937, !DIExpression(), !4033)
  %67 = fneg float %v, !dbg !4034
    #dbg_value(float %67, !3937, !DIExpression(), !4035)
  %68 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4036
  store i8 45, ptr %68, align 1, !dbg !4036
  br label %for.loop11, !dbg !3950

for.loop11:                                       ; preds = %for.body12, %if.then10, %if.else
  %69 = phi float [ %v, %if.else ], [ %73, %for.body12 ], [ %67, %if.then10 ], !dbg !3981
  %70 = phi i64 [ 0, %if.else ], [ %72, %for.body12 ], [ 0, %if.then10 ], !dbg !3974
    #dbg_value(float %69, !3937, !DIExpression(), !4037)
  %71 = fcmp oge float %69, 1.000000e+01, !dbg !4038
  br i1 %71, label %for.body12, label %for.loop13, !dbg !3950

for.body12:                                       ; preds = %for.loop11
  %72 = add i64 %70, 1, !dbg !4039
    #dbg_value(i64 %72, !3938, !DIExpression(), !4039)
  %73 = fdiv float %69, 1.000000e+01, !dbg !4040
    #dbg_value(float %73, !3937, !DIExpression(), !4040)
  br label %for.loop11, !dbg !3950

for.loop13:                                       ; preds = %for.body14, %for.loop11
  %74 = phi float [ %69, %for.loop11 ], [ %78, %for.body14 ], !dbg !3981
  %75 = phi i64 [ %70, %for.loop11 ], [ %77, %for.body14 ], !dbg !3974
    #dbg_value(float %74, !3937, !DIExpression(), !4041)
  %76 = fcmp olt float %74, 1.000000e+00, !dbg !4042
  br i1 %76, label %for.body14, label %for.done15, !dbg !3950

for.body14:                                       ; preds = %for.loop13
  %77 = sub i64 %75, 1, !dbg !4043
    #dbg_value(i64 %77, !3938, !DIExpression(), !4043)
  %78 = fmul float %74, 1.000000e+01, !dbg !4044
    #dbg_value(float %78, !3937, !DIExpression(), !4044)
  br label %for.loop13, !dbg !3950

for.done15:                                       ; preds = %for.loop13
    #dbg_value(float 5.000000e+00, !3944, !DIExpression(), !4045)
    #dbg_value(i64 0, !3945, !DIExpression(), !4046)
  br label %for.loop16, !dbg !3950

for.loop16:                                       ; preds = %for.body17, %for.done15
  %79 = phi float [ 5.000000e+00, %for.done15 ], [ %82, %for.body17 ], !dbg !4045
  %80 = phi i64 [ 0, %for.done15 ], [ %83, %for.body17 ], !dbg !4046
    #dbg_value(i64 %80, !3945, !DIExpression(), !4047)
  %81 = icmp slt i64 %80, 7, !dbg !4048
  br i1 %81, label %for.body17, label %for.done18, !dbg !3950

for.body17:                                       ; preds = %for.loop16
  %82 = fdiv float %79, 1.000000e+01, !dbg !4049
    #dbg_value(float %82, !3944, !DIExpression(), !4049)
  %83 = add i64 %80, 1, !dbg !4050
    #dbg_value(i64 %83, !3945, !DIExpression(), !4050)
  br label %for.loop16, !dbg !3950

for.done18:                                       ; preds = %for.loop16
    #dbg_value(float %79, !3944, !DIExpression(), !4051)
  %84 = fadd float %74, %79, !dbg !4052
    #dbg_value(float %84, !3937, !DIExpression(), !4052)
    #dbg_value(float %84, !3937, !DIExpression(), !4053)
  %85 = fcmp oge float %84, 1.000000e+01, !dbg !4054
  br i1 %85, label %if.then19, label %if.done, !dbg !3950

if.then19:                                        ; preds = %for.done18
  %86 = add i64 %75, 1, !dbg !4055
    #dbg_value(i64 %86, !3938, !DIExpression(), !4055)
  %87 = fdiv float %84, 1.000000e+01, !dbg !4056
    #dbg_value(float %87, !3937, !DIExpression(), !4056)
  br label %if.done, !dbg !3950

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !3993
  unreachable, !dbg !3993

lookup.throw20:                                   ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4026
  unreachable, !dbg !4026
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printfloat64(double %v, ptr %context) unnamed_addr #0 !dbg !4057 {
entry:
    #dbg_value(double %v, !4061, !DIExpression(), !4069)
    #dbg_value(double %v, !4061, !DIExpression(), !4070)
    #dbg_value(double %v, !4061, !DIExpression(), !4071)
  %index.alloca = alloca [14 x i8], align 1, !dbg !4072
  %buf = alloca [14 x i8], align 1, !dbg !4072
  %0 = fcmp une double %v, %v, !dbg !4072
  br i1 %0, label %switch.body, label %switch.next, !dbg !4073

switch.body:                                      ; preds = %entry
  call void @runtime.printstring(ptr @"runtime$string.38", i64 3, ptr undef), !dbg !4074
  ret void, !dbg !4075

switch.next:                                      ; preds = %entry
    #dbg_value(double %v, !4061, !DIExpression(), !4076)
    #dbg_value(double %v, !4061, !DIExpression(), !4077)
  %1 = fadd double %v, %v, !dbg !4078
    #dbg_value(double %v, !4061, !DIExpression(), !4079)
  %2 = fcmp oeq double %1, %v, !dbg !4080
  br i1 %2, label %binop.rhs, label %binop.done, !dbg !4073

binop.rhs:                                        ; preds = %switch.next
    #dbg_value(double %v, !4061, !DIExpression(), !4081)
  %3 = fcmp ogt double %v, 0.000000e+00, !dbg !4082
  br label %binop.done, !dbg !4073

binop.done:                                       ; preds = %binop.rhs, %switch.next
  %4 = phi i1 [ false, %switch.next ], [ %3, %binop.rhs ], !dbg !4083
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4073

switch.body1:                                     ; preds = %binop.done
  call void @runtime.printstring(ptr @"runtime$string.39", i64 4, ptr undef), !dbg !4084
  ret void, !dbg !4085

switch.next2:                                     ; preds = %binop.done
    #dbg_value(double %v, !4061, !DIExpression(), !4086)
    #dbg_value(double %v, !4061, !DIExpression(), !4087)
  %5 = fadd double %v, %v, !dbg !4088
    #dbg_value(double %v, !4061, !DIExpression(), !4089)
  %6 = fcmp oeq double %5, %v, !dbg !4090
  br i1 %6, label %binop.rhs3, label %binop.done4, !dbg !4073

binop.rhs3:                                       ; preds = %switch.next2
    #dbg_value(double %v, !4061, !DIExpression(), !4091)
  %7 = fcmp olt double %v, 0.000000e+00, !dbg !4092
  br label %binop.done4, !dbg !4073

binop.done4:                                      ; preds = %binop.rhs3, %switch.next2
  %8 = phi i1 [ false, %switch.next2 ], [ %7, %binop.rhs3 ], !dbg !4093
  br i1 %8, label %switch.body5, label %switch.next6, !dbg !4073

switch.body5:                                     ; preds = %binop.done4
  call void @runtime.printstring(ptr @"runtime$string.40", i64 4, ptr undef), !dbg !4094
  ret void, !dbg !4095

switch.next6:                                     ; preds = %binop.done4
  store [14 x i8] zeroinitializer, ptr %buf, align 1, !dbg !4072
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4096
  store i8 43, ptr %9, align 1, !dbg !4096
    #dbg_value(i64 0, !4062, !DIExpression(), !4097)
    #dbg_value(double %v, !4061, !DIExpression(), !4098)
  %10 = fcmp oeq double %v, 0.000000e+00, !dbg !4099
  br i1 %10, label %if.then, label %if.else, !dbg !4073

if.then:                                          ; preds = %switch.next6
    #dbg_value(double %v, !4061, !DIExpression(), !4100)
  %11 = fdiv double 1.000000e+00, %v, !dbg !4101
  %12 = fcmp olt double %11, 0.000000e+00, !dbg !4102
  br i1 %12, label %if.then7, label %if.done, !dbg !4073

if.then7:                                         ; preds = %if.then
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4103
  store i8 45, ptr %13, align 1, !dbg !4103
  br label %if.done, !dbg !4073

if.done:                                          ; preds = %if.then19, %for.done18, %if.then7, %if.then
  %14 = phi double [ %v, %if.then ], [ %84, %for.done18 ], [ %v, %if.then7 ], [ %87, %if.then19 ], !dbg !4104
  %15 = phi i64 [ 0, %if.then ], [ %75, %for.done18 ], [ 0, %if.then7 ], [ %86, %if.then19 ], !dbg !4097
    #dbg_value(i64 0, !4063, !DIExpression(), !4105)
  br label %for.loop, !dbg !4073

for.loop:                                         ; preds = %lookup.next, %if.done
  %16 = phi double [ %14, %if.done ], [ %27, %lookup.next ], !dbg !4104
  %17 = phi i64 [ 0, %if.done ], [ %28, %lookup.next ], !dbg !4105
    #dbg_value(i64 %17, !4063, !DIExpression(), !4106)
  %18 = icmp slt i64 %17, 7, !dbg !4107
  br i1 %18, label %for.body, label %for.done, !dbg !4073

for.body:                                         ; preds = %for.loop
    #dbg_value(double %16, !4061, !DIExpression(), !4108)
  %abovemin = fcmp ole double 0xC3E0000000000000, %16, !dbg !4109
  %belowmax = fcmp ole double %16, 0x43DFFFFFFFFFFFFE, !dbg !4109
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4109
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4109
  %isnan = fcmp uno double %16, %16, !dbg !4109
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4109
  %normal = fptosi double %16 to i64, !dbg !4109
  %19 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4109
    #dbg_value(i64 %19, !4064, !DIExpression(), !4110)
    #dbg_value(i64 %17, !4063, !DIExpression(), !4111)
  %20 = add i64 %17, 2, !dbg !4112
    #dbg_value(i64 %19, !4064, !DIExpression(), !4113)
  %21 = add i64 %19, 48, !dbg !4114
  %22 = trunc i64 %21 to i8, !dbg !4115
  %23 = icmp uge i64 %20, 14, !dbg !4116
  br i1 %23, label %lookup.throw, label %lookup.next, !dbg !4116

lookup.next:                                      ; preds = %for.body
  %24 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 %20, !dbg !4116
  store i8 %22, ptr %24, align 1, !dbg !4116
    #dbg_value(i64 %19, !4064, !DIExpression(), !4117)
  %25 = sitofp i64 %19 to double, !dbg !4118
  %26 = fsub double %16, %25, !dbg !4119
    #dbg_value(double %26, !4061, !DIExpression(), !4119)
  %27 = fmul double %26, 1.000000e+01, !dbg !4120
    #dbg_value(double %27, !4061, !DIExpression(), !4120)
  %28 = add i64 %17, 1, !dbg !4121
    #dbg_value(i64 %28, !4063, !DIExpression(), !4121)
  br label %for.loop, !dbg !4073

for.done:                                         ; preds = %for.loop
  %29 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4122
  %30 = load i8, ptr %29, align 1, !dbg !4122
  %31 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 1, !dbg !4123
  store i8 %30, ptr %31, align 1, !dbg !4123
  %32 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 2, !dbg !4124
  store i8 46, ptr %32, align 1, !dbg !4124
  %33 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 9, !dbg !4125
  store i8 101, ptr %33, align 1, !dbg !4125
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4126
  store i8 43, ptr %34, align 1, !dbg !4126
    #dbg_value(i64 %15, !4062, !DIExpression(), !4127)
  %35 = icmp slt i64 %15, 0, !dbg !4128
  br i1 %35, label %if.then8, label %if.done9, !dbg !4073

if.then8:                                         ; preds = %for.done
    #dbg_value(i64 %15, !4062, !DIExpression(), !4129)
  %36 = sub i64 0, %15, !dbg !4130
    #dbg_value(i64 %36, !4062, !DIExpression(), !4131)
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 10, !dbg !4132
  store i8 45, ptr %37, align 1, !dbg !4132
  br label %if.done9, !dbg !4073

if.done9:                                         ; preds = %if.then8, %for.done
  %38 = phi i64 [ %15, %for.done ], [ %36, %if.then8 ], !dbg !4097
    #dbg_value(i64 %38, !4062, !DIExpression(), !4133)
  %39 = icmp eq i64 %38, -9223372036854775808, !dbg !4134
  %40 = and i1 false, %39, !dbg !4134
  %41 = select i1 %40, i64 1, i64 100, !dbg !4134
  %42 = sdiv i64 %38, %41, !dbg !4134
  %43 = trunc i64 %42 to i8, !dbg !4135
  %44 = add i8 %43, 48, !dbg !4136
  %45 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 11, !dbg !4137
  store i8 %44, ptr %45, align 1, !dbg !4137
    #dbg_value(i64 %38, !4062, !DIExpression(), !4138)
  %46 = icmp eq i64 %38, -9223372036854775808, !dbg !4139
  %47 = and i1 false, %46, !dbg !4139
  %48 = select i1 %47, i64 1, i64 10, !dbg !4139
  %49 = sdiv i64 %38, %48, !dbg !4139
  %50 = trunc i64 %49 to i8, !dbg !4140
  %51 = urem i8 %50, 10, !dbg !4141
  %52 = add i8 %51, 48, !dbg !4142
  %53 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 12, !dbg !4143
  store i8 %52, ptr %53, align 1, !dbg !4143
    #dbg_value(i64 %38, !4062, !DIExpression(), !4144)
  %54 = icmp eq i64 %38, -9223372036854775808, !dbg !4145
  %55 = and i1 false, %54, !dbg !4145
  %56 = select i1 %55, i64 1, i64 10, !dbg !4145
  %57 = srem i64 %38, %56, !dbg !4145
  %58 = trunc i64 %57 to i8, !dbg !4146
  %59 = add i8 %58, 48, !dbg !4147
  %60 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 13, !dbg !4148
  store i8 %59, ptr %60, align 1, !dbg !4148
  %61 = load [14 x i8], ptr %buf, align 1, !dbg !4149
    #dbg_value([14 x i8] %61, !4065, !DIExpression(), !4149)
  br label %rangeindex.loop, !dbg !4073

rangeindex.loop:                                  ; preds = %lookup.next21, %if.done9
  %62 = phi i64 [ -1, %if.done9 ], [ %63, %lookup.next21 ], !dbg !4073
  %63 = add i64 %62, 1, !dbg !4073
  %64 = icmp slt i64 %63, 14, !dbg !4073
  br i1 %64, label %rangeindex.body, label %rangeindex.done, !dbg !4073

rangeindex.body:                                  ; preds = %rangeindex.loop
  %65 = icmp uge i64 %63, 14, !dbg !4149
  br i1 %65, label %lookup.throw20, label %lookup.next21, !dbg !4149

lookup.next21:                                    ; preds = %rangeindex.body
  call void @llvm.lifetime.start.p0(i64 14, ptr %index.alloca), !dbg !4072
  store [14 x i8] %61, ptr %index.alloca, align 1, !dbg !4072
  %index.gep = getelementptr inbounds [14 x i8], ptr %index.alloca, i32 0, i64 %63, !dbg !4072
  %index.load = load i8, ptr %index.gep, align 1, !dbg !4072
  call void @llvm.lifetime.end.p0(i64 14, ptr %index.alloca), !dbg !4072
    #dbg_value(i8 %index.load, !4066, !DIExpression(), !4150)
    #dbg_value(i8 %index.load, !4066, !DIExpression(), !4151)
  call void @runtime.putchar(i8 %index.load, ptr undef), !dbg !4152
  br label %rangeindex.loop, !dbg !4073

rangeindex.done:                                  ; preds = %rangeindex.loop
  ret void, !dbg !4153

if.else:                                          ; preds = %switch.next6
    #dbg_value(double %v, !4061, !DIExpression(), !4154)
  %66 = fcmp olt double %v, 0.000000e+00, !dbg !4155
  br i1 %66, label %if.then10, label %for.loop11, !dbg !4073

if.then10:                                        ; preds = %if.else
    #dbg_value(double %v, !4061, !DIExpression(), !4156)
  %67 = fneg double %v, !dbg !4157
    #dbg_value(double %67, !4061, !DIExpression(), !4158)
  %68 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i64 0, !dbg !4159
  store i8 45, ptr %68, align 1, !dbg !4159
  br label %for.loop11, !dbg !4073

for.loop11:                                       ; preds = %for.body12, %if.then10, %if.else
  %69 = phi double [ %v, %if.else ], [ %73, %for.body12 ], [ %67, %if.then10 ], !dbg !4104
  %70 = phi i64 [ 0, %if.else ], [ %72, %for.body12 ], [ 0, %if.then10 ], !dbg !4097
    #dbg_value(double %69, !4061, !DIExpression(), !4160)
  %71 = fcmp oge double %69, 1.000000e+01, !dbg !4161
  br i1 %71, label %for.body12, label %for.loop13, !dbg !4073

for.body12:                                       ; preds = %for.loop11
  %72 = add i64 %70, 1, !dbg !4162
    #dbg_value(i64 %72, !4062, !DIExpression(), !4162)
  %73 = fdiv double %69, 1.000000e+01, !dbg !4163
    #dbg_value(double %73, !4061, !DIExpression(), !4163)
  br label %for.loop11, !dbg !4073

for.loop13:                                       ; preds = %for.body14, %for.loop11
  %74 = phi double [ %69, %for.loop11 ], [ %78, %for.body14 ], !dbg !4104
  %75 = phi i64 [ %70, %for.loop11 ], [ %77, %for.body14 ], !dbg !4097
    #dbg_value(double %74, !4061, !DIExpression(), !4164)
  %76 = fcmp olt double %74, 1.000000e+00, !dbg !4165
  br i1 %76, label %for.body14, label %for.done15, !dbg !4073

for.body14:                                       ; preds = %for.loop13
  %77 = sub i64 %75, 1, !dbg !4166
    #dbg_value(i64 %77, !4062, !DIExpression(), !4166)
  %78 = fmul double %74, 1.000000e+01, !dbg !4167
    #dbg_value(double %78, !4061, !DIExpression(), !4167)
  br label %for.loop13, !dbg !4073

for.done15:                                       ; preds = %for.loop13
    #dbg_value(double 5.000000e+00, !4067, !DIExpression(), !4168)
    #dbg_value(i64 0, !4068, !DIExpression(), !4169)
  br label %for.loop16, !dbg !4073

for.loop16:                                       ; preds = %for.body17, %for.done15
  %79 = phi double [ 5.000000e+00, %for.done15 ], [ %82, %for.body17 ], !dbg !4168
  %80 = phi i64 [ 0, %for.done15 ], [ %83, %for.body17 ], !dbg !4169
    #dbg_value(i64 %80, !4068, !DIExpression(), !4170)
  %81 = icmp slt i64 %80, 7, !dbg !4171
  br i1 %81, label %for.body17, label %for.done18, !dbg !4073

for.body17:                                       ; preds = %for.loop16
  %82 = fdiv double %79, 1.000000e+01, !dbg !4172
    #dbg_value(double %82, !4067, !DIExpression(), !4172)
  %83 = add i64 %80, 1, !dbg !4173
    #dbg_value(i64 %83, !4068, !DIExpression(), !4173)
  br label %for.loop16, !dbg !4073

for.done18:                                       ; preds = %for.loop16
    #dbg_value(double %79, !4067, !DIExpression(), !4174)
  %84 = fadd double %74, %79, !dbg !4175
    #dbg_value(double %84, !4061, !DIExpression(), !4175)
    #dbg_value(double %84, !4061, !DIExpression(), !4176)
  %85 = fcmp oge double %84, 1.000000e+01, !dbg !4177
  br i1 %85, label %if.then19, label %if.done, !dbg !4073

if.then19:                                        ; preds = %for.done18
  %86 = add i64 %75, 1, !dbg !4178
    #dbg_value(i64 %86, !4062, !DIExpression(), !4178)
  %87 = fdiv double %84, 1.000000e+01, !dbg !4179
    #dbg_value(double %87, !4061, !DIExpression(), !4179)
  br label %if.done, !dbg !4073

lookup.throw:                                     ; preds = %for.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4116
  unreachable, !dbg !4116

lookup.throw20:                                   ; preds = %rangeindex.body
  call void @runtime.lookupPanic(ptr undef), !dbg !4149
  unreachable, !dbg !4149
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printcomplex64(float %c.r, float %c.i, ptr %context) unnamed_addr #0 !dbg !4180 {
entry:
  %0 = insertvalue { float, float } zeroinitializer, float %c.r, 0, !dbg !4185
  %1 = insertvalue { float, float } %0, float %c.i, 1, !dbg !4185
    #dbg_value(float %c.r, !4184, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4185)
    #dbg_value(float %c.i, !4184, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4185)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4186
    #dbg_value({ float, float } %1, !4184, !DIExpression(), !4187)
  %real = extractvalue { float, float } %1, 0, !dbg !4188
  call void @runtime.printfloat32(float %real, ptr undef), !dbg !4189
    #dbg_value({ float, float } %1, !4184, !DIExpression(), !4190)
  %imag = extractvalue { float, float } %1, 1, !dbg !4191
  call void @runtime.printfloat32(float %imag, ptr undef), !dbg !4192
  call void @runtime.printstring(ptr @"runtime$string.41", i64 2, ptr undef), !dbg !4193
  ret void, !dbg !4194
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printcomplex128(double %c.r, double %c.i, ptr %context) unnamed_addr #0 !dbg !4195 {
entry:
  %0 = insertvalue { double, double } zeroinitializer, double %c.r, 0, !dbg !4200
  %1 = insertvalue { double, double } %0, double %c.i, 1, !dbg !4200
    #dbg_value(double %c.r, !4199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4200)
    #dbg_value(double %c.i, !4199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4200)
  call void @runtime.putchar(i8 40, ptr undef), !dbg !4201
    #dbg_value({ double, double } %1, !4199, !DIExpression(), !4202)
  %real = extractvalue { double, double } %1, 0, !dbg !4203
  call void @runtime.printfloat64(double %real, ptr undef), !dbg !4204
    #dbg_value({ double, double } %1, !4199, !DIExpression(), !4205)
  %imag = extractvalue { double, double } %1, 1, !dbg !4206
  call void @runtime.printfloat64(double %imag, ptr undef), !dbg !4207
  call void @runtime.printstring(ptr @"runtime$string.42", i64 2, ptr undef), !dbg !4208
  ret void, !dbg !4209
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
define internal void @runtime._panic(ptr %message.typecode, ptr %message.value, ptr %context) #0 !dbg !4210 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %message.typecode, 0, !dbg !4213
  %1 = insertvalue { ptr, ptr } %0, ptr %message.value, 1, !dbg !4213
    #dbg_value(ptr %message.typecode, !4212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4213)
    #dbg_value(ptr %message.value, !4212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4213)
    #dbg_value({ ptr, ptr } %1, !4212, !DIExpression(), !4214)
  %2 = extractvalue { ptr, ptr } %1, 0, !dbg !4215
  %3 = extractvalue { ptr, ptr } %1, 1, !dbg !4215
  call void @runtime.panicOrGoexit(ptr %2, ptr %3, i8 1, ptr undef), !dbg !4215
  ret void, !dbg !4216
}

; Function Attrs: nounwind uwtable(sync)
define internal i1 @runtime.stringEqual(ptr readonly %x.data, i64 %x.len, ptr readonly %y.data, i64 %y.len, ptr %context) #0 !dbg !4217 {
entry:
  %0 = insertvalue %runtime._string zeroinitializer, ptr %x.data, 0, !dbg !4225
  %1 = insertvalue %runtime._string %0, i64 %x.len, 1, !dbg !4225
    #dbg_value(ptr %x.data, !4222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4225)
    #dbg_value(i64 %x.len, !4222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4225)
  %2 = insertvalue %runtime._string zeroinitializer, ptr %y.data, 0, !dbg !4225
  %3 = insertvalue %runtime._string %2, i64 %y.len, 1, !dbg !4225
    #dbg_value(ptr %y.data, !4223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4225)
    #dbg_value(i64 %y.len, !4223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4225)
    #dbg_value(%runtime._string %1, !4222, !DIExpression(), !4226)
  %len = extractvalue %runtime._string %1, 1, !dbg !4227
    #dbg_value(%runtime._string %3, !4223, !DIExpression(), !4228)
  %len3 = extractvalue %runtime._string %3, 1, !dbg !4229
  %4 = icmp ne i64 %len, %len3, !dbg !4230
  br i1 %4, label %if.then, label %if.done, !dbg !4231

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !4232

if.done:                                          ; preds = %entry
    #dbg_value(i64 0, !4224, !DIExpression(), !4233)
  br label %for.loop, !dbg !4231

for.loop:                                         ; preds = %if.done2, %if.done
  %5 = phi i64 [ 0, %if.done ], [ %14, %if.done2 ], !dbg !4233
    #dbg_value(i64 %5, !4224, !DIExpression(), !4234)
    #dbg_value(%runtime._string %1, !4222, !DIExpression(), !4235)
  %len4 = extractvalue %runtime._string %1, 1, !dbg !4236
  %6 = icmp slt i64 %5, %len4, !dbg !4237
  br i1 %6, label %for.body, label %for.done, !dbg !4231

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4224, !DIExpression(), !4238)
    #dbg_value(%runtime._string %1, !4222, !DIExpression(), !4239)
  %len5 = extractvalue %runtime._string %1, 1, !dbg !4240
  %7 = extractvalue %runtime._string %1, 0, !dbg !4240
  %8 = getelementptr inbounds i8, ptr %7, i64 %5, !dbg !4240
  %9 = load i8, ptr %8, align 1, !dbg !4240
    #dbg_value(i64 %5, !4224, !DIExpression(), !4241)
    #dbg_value(%runtime._string %3, !4223, !DIExpression(), !4242)
  %len6 = extractvalue %runtime._string %3, 1, !dbg !4243
  %10 = extractvalue %runtime._string %3, 0, !dbg !4243
  %11 = getelementptr inbounds i8, ptr %10, i64 %5, !dbg !4243
  %12 = load i8, ptr %11, align 1, !dbg !4243
  %13 = icmp ne i8 %9, %12, !dbg !4244
  br i1 %13, label %if.then1, label %if.done2, !dbg !4231

if.then1:                                         ; preds = %for.body
  ret i1 false, !dbg !4245

if.done2:                                         ; preds = %for.body
  %14 = add i64 %5, 1, !dbg !4246
    #dbg_value(i64 %14, !4224, !DIExpression(), !4246)
  br label %for.loop, !dbg !4231

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4247
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.slicePanic(ptr %context) #0 !dbg !4248 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4249
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.20", i64 18, ptr undef), !dbg !4250
  ret void, !dbg !4251
}

; Function Attrs: nounwind uwtable(sync)
define double @fminimum(double %x, double %y) #0 !dbg !4252 {
entry:
    #dbg_value(double %x, !4256, !DIExpression(), !4258)
    #dbg_value(double %y, !4257, !DIExpression(), !4258)
    #dbg_value(double %x, !4256, !DIExpression(), !4259)
    #dbg_value(double %y, !4257, !DIExpression(), !4260)
  %0 = call double @runtime.minimumFloat64(double %x, double %y, ptr undef), !dbg !4261
  ret double %0, !dbg !4262
}

; Function Attrs: nounwind uwtable(sync)
define internal double @runtime.minimumFloat64(double %x, double %y, ptr %context) unnamed_addr #0 !dbg !4263 {
entry:
    #dbg_value(double %x, !4265, !DIExpression(), !4267)
    #dbg_value(double %y, !4266, !DIExpression(), !4267)
    #dbg_value(double %x, !4265, !DIExpression(), !4268)
    #dbg_value(double %y, !4266, !DIExpression(), !4269)
  %0 = call double @"runtime.minimumFloat[float64 int64]"(double %x, double %y, i64 9218868437227405313, i64 9223372036854775807, ptr undef), !dbg !4270
  ret double %0, !dbg !4271
}

; Function Attrs: nounwind uwtable(sync)
define internal double @"runtime.minimumFloat[float64 int64]"(double %x, double %y, i64 %minPosNaN, i64 %magMask, ptr %context) unnamed_addr #0 !dbg !4272 {
entry:
    #dbg_value(double %x, !4276, !DIExpression(), !4282)
    #dbg_value(double %y, !4277, !DIExpression(), !4282)
    #dbg_value(i64 %minPosNaN, !4278, !DIExpression(), !4282)
    #dbg_value(i64 %magMask, !4279, !DIExpression(), !4282)
  %x6 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4283
  store double %x, ptr %x6, align 8, !dbg !4283
  %y7 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4284
  store double %y, ptr %y7, align 8, !dbg !4284
  %0 = load i64, ptr %x6, align 8, !dbg !4285
    #dbg_value(i64 %0, !4280, !DIExpression(), !4286)
  %1 = load i64, ptr %y7, align 8, !dbg !4287
    #dbg_value(i64 %1, !4281, !DIExpression(), !4288)
    #dbg_value(i64 %0, !4280, !DIExpression(), !4289)
    #dbg_value(i64 %minPosNaN, !4278, !DIExpression(), !4290)
  %2 = icmp sge i64 %0, %minPosNaN, !dbg !4291
  br i1 %2, label %switch.body, label %switch.next, !dbg !4292

switch.body:                                      ; preds = %entry
  %3 = load double, ptr %x6, align 8, !dbg !4293
    #dbg_value(double %3, !4276, !DIExpression(), !4293)
  ret double %3, !dbg !4294

switch.next:                                      ; preds = %entry
    #dbg_value(i64 %1, !4281, !DIExpression(), !4295)
    #dbg_value(i64 %minPosNaN, !4278, !DIExpression(), !4296)
  %4 = icmp sge i64 %1, %minPosNaN, !dbg !4297
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4292

switch.body1:                                     ; preds = %switch.next
  %5 = load double, ptr %y7, align 8, !dbg !4298
    #dbg_value(double %5, !4277, !DIExpression(), !4298)
  ret double %5, !dbg !4299

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i64 %0, !4280, !DIExpression(), !4300)
  %6 = icmp slt i64 %0, 0, !dbg !4301
  br i1 %6, label %if.then, label %if.done, !dbg !4292

if.then:                                          ; preds = %switch.next2
    #dbg_value(i64 %magMask, !4279, !DIExpression(), !4302)
  %7 = xor i64 %0, %magMask, !dbg !4303
    #dbg_value(i64 %7, !4280, !DIExpression(), !4303)
  br label %if.done, !dbg !4292

if.done:                                          ; preds = %if.then, %switch.next2
  %8 = phi i64 [ %0, %switch.next2 ], [ %7, %if.then ], !dbg !4286
    #dbg_value(i64 %1, !4281, !DIExpression(), !4304)
  %9 = icmp slt i64 %1, 0, !dbg !4305
  br i1 %9, label %if.then3, label %if.done4, !dbg !4292

if.then3:                                         ; preds = %if.done
    #dbg_value(i64 %magMask, !4279, !DIExpression(), !4306)
  %10 = xor i64 %1, %magMask, !dbg !4307
    #dbg_value(i64 %10, !4281, !DIExpression(), !4307)
  br label %if.done4, !dbg !4292

if.done4:                                         ; preds = %if.then3, %if.done
  %11 = phi i64 [ %1, %if.done ], [ %10, %if.then3 ], !dbg !4288
    #dbg_value(i64 %8, !4280, !DIExpression(), !4308)
    #dbg_value(i64 %11, !4281, !DIExpression(), !4309)
  %12 = icmp sle i64 %8, %11, !dbg !4310
  br i1 %12, label %if.then5, label %if.else, !dbg !4292

if.then5:                                         ; preds = %if.done4
  %13 = load double, ptr %x6, align 8, !dbg !4311
    #dbg_value(double %13, !4276, !DIExpression(), !4311)
  ret double %13, !dbg !4312

if.else:                                          ; preds = %if.done4
  %14 = load double, ptr %y7, align 8, !dbg !4313
    #dbg_value(double %14, !4277, !DIExpression(), !4313)
  ret double %14, !dbg !4314
}

; Function Attrs: nounwind uwtable(sync)
define float @fminimumf(float %x, float %y) #0 !dbg !4315 {
entry:
    #dbg_value(float %x, !4319, !DIExpression(), !4321)
    #dbg_value(float %y, !4320, !DIExpression(), !4321)
    #dbg_value(float %x, !4319, !DIExpression(), !4322)
    #dbg_value(float %y, !4320, !DIExpression(), !4323)
  %0 = call float @runtime.minimumFloat32(float %x, float %y, ptr undef), !dbg !4324
  ret float %0, !dbg !4325
}

; Function Attrs: nounwind uwtable(sync)
define internal float @runtime.minimumFloat32(float %x, float %y, ptr %context) unnamed_addr #0 !dbg !4326 {
entry:
    #dbg_value(float %x, !4328, !DIExpression(), !4330)
    #dbg_value(float %y, !4329, !DIExpression(), !4330)
    #dbg_value(float %x, !4328, !DIExpression(), !4331)
    #dbg_value(float %y, !4329, !DIExpression(), !4332)
  %0 = call float @"runtime.minimumFloat[float32 int32]"(float %x, float %y, i32 2139095041, i32 2147483647, ptr undef), !dbg !4333
  ret float %0, !dbg !4334
}

; Function Attrs: nounwind uwtable(sync)
define internal float @"runtime.minimumFloat[float32 int32]"(float %x, float %y, i32 %minPosNaN, i32 %magMask, ptr %context) unnamed_addr #0 !dbg !4335 {
entry:
    #dbg_value(float %x, !4339, !DIExpression(), !4345)
    #dbg_value(float %y, !4340, !DIExpression(), !4345)
    #dbg_value(i32 %minPosNaN, !4341, !DIExpression(), !4345)
    #dbg_value(i32 %magMask, !4342, !DIExpression(), !4345)
  %x6 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4346
  store float %x, ptr %x6, align 4, !dbg !4346
  %y7 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4347
  store float %y, ptr %y7, align 4, !dbg !4347
  %0 = load i32, ptr %x6, align 4, !dbg !4348
    #dbg_value(i32 %0, !4343, !DIExpression(), !4349)
  %1 = load i32, ptr %y7, align 4, !dbg !4350
    #dbg_value(i32 %1, !4344, !DIExpression(), !4351)
    #dbg_value(i32 %0, !4343, !DIExpression(), !4352)
    #dbg_value(i32 %minPosNaN, !4341, !DIExpression(), !4353)
  %2 = icmp sge i32 %0, %minPosNaN, !dbg !4354
  br i1 %2, label %switch.body, label %switch.next, !dbg !4355

switch.body:                                      ; preds = %entry
  %3 = load float, ptr %x6, align 4, !dbg !4356
    #dbg_value(float %3, !4339, !DIExpression(), !4356)
  ret float %3, !dbg !4357

switch.next:                                      ; preds = %entry
    #dbg_value(i32 %1, !4344, !DIExpression(), !4358)
    #dbg_value(i32 %minPosNaN, !4341, !DIExpression(), !4359)
  %4 = icmp sge i32 %1, %minPosNaN, !dbg !4360
  br i1 %4, label %switch.body1, label %switch.next2, !dbg !4355

switch.body1:                                     ; preds = %switch.next
  %5 = load float, ptr %y7, align 4, !dbg !4361
    #dbg_value(float %5, !4340, !DIExpression(), !4361)
  ret float %5, !dbg !4362

switch.next2:                                     ; preds = %switch.next
    #dbg_value(i32 %0, !4343, !DIExpression(), !4363)
  %6 = icmp slt i32 %0, 0, !dbg !4364
  br i1 %6, label %if.then, label %if.done, !dbg !4355

if.then:                                          ; preds = %switch.next2
    #dbg_value(i32 %magMask, !4342, !DIExpression(), !4365)
  %7 = xor i32 %0, %magMask, !dbg !4366
    #dbg_value(i32 %7, !4343, !DIExpression(), !4366)
  br label %if.done, !dbg !4355

if.done:                                          ; preds = %if.then, %switch.next2
  %8 = phi i32 [ %0, %switch.next2 ], [ %7, %if.then ], !dbg !4349
    #dbg_value(i32 %1, !4344, !DIExpression(), !4367)
  %9 = icmp slt i32 %1, 0, !dbg !4368
  br i1 %9, label %if.then3, label %if.done4, !dbg !4355

if.then3:                                         ; preds = %if.done
    #dbg_value(i32 %magMask, !4342, !DIExpression(), !4369)
  %10 = xor i32 %1, %magMask, !dbg !4370
    #dbg_value(i32 %10, !4344, !DIExpression(), !4370)
  br label %if.done4, !dbg !4355

if.done4:                                         ; preds = %if.then3, %if.done
  %11 = phi i32 [ %1, %if.done ], [ %10, %if.then3 ], !dbg !4351
    #dbg_value(i32 %8, !4343, !DIExpression(), !4371)
    #dbg_value(i32 %11, !4344, !DIExpression(), !4372)
  %12 = icmp sle i32 %8, %11, !dbg !4373
  br i1 %12, label %if.then5, label %if.else, !dbg !4355

if.then5:                                         ; preds = %if.done4
  %13 = load float, ptr %x6, align 4, !dbg !4374
    #dbg_value(float %13, !4339, !DIExpression(), !4374)
  ret float %13, !dbg !4375

if.else:                                          ; preds = %if.done4
  %14 = load float, ptr %y7, align 4, !dbg !4376
    #dbg_value(float %14, !4340, !DIExpression(), !4376)
  ret float %14, !dbg !4377
}

; Function Attrs: nounwind uwtable(sync)
define double @fmaximum(double %x, double %y) #0 !dbg !4378 {
entry:
    #dbg_value(double %x, !4380, !DIExpression(), !4382)
    #dbg_value(double %y, !4381, !DIExpression(), !4382)
    #dbg_value(double %x, !4380, !DIExpression(), !4383)
    #dbg_value(double %y, !4381, !DIExpression(), !4384)
  %0 = call double @runtime.maximumFloat64(double %x, double %y, ptr undef), !dbg !4385
  ret double %0, !dbg !4386
}

; Function Attrs: nounwind uwtable(sync)
define internal double @runtime.maximumFloat64(double %x, double %y, ptr %context) unnamed_addr #0 !dbg !4387 {
entry:
    #dbg_value(double %x, !4389, !DIExpression(), !4391)
    #dbg_value(double %y, !4390, !DIExpression(), !4391)
    #dbg_value(double %x, !4389, !DIExpression(), !4392)
    #dbg_value(double %y, !4390, !DIExpression(), !4393)
  %0 = call double @"runtime.maximumFloat[float64 int64]"(double %x, double %y, i64 9218868437227405313, i64 9223372036854775807, ptr undef), !dbg !4394
  ret double %0, !dbg !4395
}

; Function Attrs: nounwind uwtable(sync)
define internal double @"runtime.maximumFloat[float64 int64]"(double %x, double %y, i64 %minPosNaN, i64 %magMask, ptr %context) unnamed_addr #0 !dbg !4396 {
entry:
    #dbg_value(double %x, !4398, !DIExpression(), !4405)
    #dbg_value(double %y, !4399, !DIExpression(), !4405)
    #dbg_value(i64 %minPosNaN, !4400, !DIExpression(), !4405)
    #dbg_value(i64 %magMask, !4401, !DIExpression(), !4405)
  %x6 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4406
  store double %x, ptr %x6, align 8, !dbg !4406
  %y7 = call align 8 ptr @runtime.alloc(i64 8, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4407
  store double %y, ptr %y7, align 8, !dbg !4407
  %0 = load i64, ptr %x6, align 8, !dbg !4408
    #dbg_value(i64 %0, !4402, !DIExpression(), !4409)
  %1 = load i64, ptr %y7, align 8, !dbg !4410
    #dbg_value(i64 %1, !4403, !DIExpression(), !4411)
    #dbg_value(i64 %0, !4402, !DIExpression(), !4412)
  %2 = icmp slt i64 %0, 0, !dbg !4413
  br i1 %2, label %if.then, label %if.done, !dbg !4414

if.then:                                          ; preds = %entry
    #dbg_value(i64 %magMask, !4401, !DIExpression(), !4415)
  %3 = xor i64 %0, %magMask, !dbg !4416
    #dbg_value(i64 %3, !4402, !DIExpression(), !4416)
  br label %if.done, !dbg !4414

if.done:                                          ; preds = %if.then, %entry
  %4 = phi i64 [ %0, %entry ], [ %3, %if.then ], !dbg !4409
    #dbg_value(i64 %1, !4403, !DIExpression(), !4417)
  %5 = icmp slt i64 %1, 0, !dbg !4418
  br i1 %5, label %if.then1, label %if.done2, !dbg !4414

if.then1:                                         ; preds = %if.done
    #dbg_value(i64 %magMask, !4401, !DIExpression(), !4419)
  %6 = xor i64 %1, %magMask, !dbg !4420
    #dbg_value(i64 %6, !4403, !DIExpression(), !4420)
  br label %if.done2, !dbg !4414

if.done2:                                         ; preds = %if.then1, %if.done
  %7 = phi i64 [ %1, %if.done ], [ %6, %if.then1 ], !dbg !4411
    #dbg_value(i64 %minPosNaN, !4400, !DIExpression(), !4421)
  %8 = xor i64 %minPosNaN, -1, !dbg !4422
    #dbg_value(i64 %8, !4404, !DIExpression(), !4423)
    #dbg_value(i64 %4, !4402, !DIExpression(), !4424)
    #dbg_value(i64 %8, !4404, !DIExpression(), !4425)
  %9 = icmp sle i64 %4, %8, !dbg !4426
  br i1 %9, label %switch.body, label %switch.next, !dbg !4414

switch.body:                                      ; preds = %if.done2
  %10 = load double, ptr %x6, align 8, !dbg !4427
    #dbg_value(double %10, !4398, !DIExpression(), !4427)
  ret double %10, !dbg !4428

switch.next:                                      ; preds = %if.done2
    #dbg_value(i64 %7, !4403, !DIExpression(), !4429)
    #dbg_value(i64 %8, !4404, !DIExpression(), !4430)
  %11 = icmp sle i64 %7, %8, !dbg !4431
  br i1 %11, label %switch.body3, label %switch.next4, !dbg !4414

switch.body3:                                     ; preds = %switch.next
  %12 = load double, ptr %y7, align 8, !dbg !4432
    #dbg_value(double %12, !4399, !DIExpression(), !4432)
  ret double %12, !dbg !4433

switch.next4:                                     ; preds = %switch.next
    #dbg_value(i64 %4, !4402, !DIExpression(), !4434)
    #dbg_value(i64 %7, !4403, !DIExpression(), !4435)
  %13 = icmp sge i64 %4, %7, !dbg !4436
  br i1 %13, label %if.then5, label %if.else, !dbg !4414

if.then5:                                         ; preds = %switch.next4
  %14 = load double, ptr %x6, align 8, !dbg !4437
    #dbg_value(double %14, !4398, !DIExpression(), !4437)
  ret double %14, !dbg !4438

if.else:                                          ; preds = %switch.next4
  %15 = load double, ptr %y7, align 8, !dbg !4439
    #dbg_value(double %15, !4399, !DIExpression(), !4439)
  ret double %15, !dbg !4440
}

; Function Attrs: nounwind uwtable(sync)
define float @fmaximumf(float %x, float %y) #0 !dbg !4441 {
entry:
    #dbg_value(float %x, !4443, !DIExpression(), !4445)
    #dbg_value(float %y, !4444, !DIExpression(), !4445)
    #dbg_value(float %x, !4443, !DIExpression(), !4446)
    #dbg_value(float %y, !4444, !DIExpression(), !4447)
  %0 = call float @runtime.maximumFloat32(float %x, float %y, ptr undef), !dbg !4448
  ret float %0, !dbg !4449
}

; Function Attrs: nounwind uwtable(sync)
define internal float @runtime.maximumFloat32(float %x, float %y, ptr %context) unnamed_addr #0 !dbg !4450 {
entry:
    #dbg_value(float %x, !4452, !DIExpression(), !4454)
    #dbg_value(float %y, !4453, !DIExpression(), !4454)
    #dbg_value(float %x, !4452, !DIExpression(), !4455)
    #dbg_value(float %y, !4453, !DIExpression(), !4456)
  %0 = call float @"runtime.maximumFloat[float32 int32]"(float %x, float %y, i32 2139095041, i32 2147483647, ptr undef), !dbg !4457
  ret float %0, !dbg !4458
}

; Function Attrs: nounwind uwtable(sync)
define internal float @"runtime.maximumFloat[float32 int32]"(float %x, float %y, i32 %minPosNaN, i32 %magMask, ptr %context) unnamed_addr #0 !dbg !4459 {
entry:
    #dbg_value(float %x, !4461, !DIExpression(), !4468)
    #dbg_value(float %y, !4462, !DIExpression(), !4468)
    #dbg_value(i32 %minPosNaN, !4463, !DIExpression(), !4468)
    #dbg_value(i32 %magMask, !4464, !DIExpression(), !4468)
  %x6 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4469
  store float %x, ptr %x6, align 4, !dbg !4469
  %y7 = call align 4 ptr @runtime.alloc(i64 4, ptr inttoptr (i64 3 to ptr), ptr undef), !dbg !4470
  store float %y, ptr %y7, align 4, !dbg !4470
  %0 = load i32, ptr %x6, align 4, !dbg !4471
    #dbg_value(i32 %0, !4465, !DIExpression(), !4472)
  %1 = load i32, ptr %y7, align 4, !dbg !4473
    #dbg_value(i32 %1, !4466, !DIExpression(), !4474)
    #dbg_value(i32 %0, !4465, !DIExpression(), !4475)
  %2 = icmp slt i32 %0, 0, !dbg !4476
  br i1 %2, label %if.then, label %if.done, !dbg !4477

if.then:                                          ; preds = %entry
    #dbg_value(i32 %magMask, !4464, !DIExpression(), !4478)
  %3 = xor i32 %0, %magMask, !dbg !4479
    #dbg_value(i32 %3, !4465, !DIExpression(), !4479)
  br label %if.done, !dbg !4477

if.done:                                          ; preds = %if.then, %entry
  %4 = phi i32 [ %0, %entry ], [ %3, %if.then ], !dbg !4472
    #dbg_value(i32 %1, !4466, !DIExpression(), !4480)
  %5 = icmp slt i32 %1, 0, !dbg !4481
  br i1 %5, label %if.then1, label %if.done2, !dbg !4477

if.then1:                                         ; preds = %if.done
    #dbg_value(i32 %magMask, !4464, !DIExpression(), !4482)
  %6 = xor i32 %1, %magMask, !dbg !4483
    #dbg_value(i32 %6, !4466, !DIExpression(), !4483)
  br label %if.done2, !dbg !4477

if.done2:                                         ; preds = %if.then1, %if.done
  %7 = phi i32 [ %1, %if.done ], [ %6, %if.then1 ], !dbg !4474
    #dbg_value(i32 %minPosNaN, !4463, !DIExpression(), !4484)
  %8 = xor i32 %minPosNaN, -1, !dbg !4485
    #dbg_value(i32 %8, !4467, !DIExpression(), !4486)
    #dbg_value(i32 %4, !4465, !DIExpression(), !4487)
    #dbg_value(i32 %8, !4467, !DIExpression(), !4488)
  %9 = icmp sle i32 %4, %8, !dbg !4489
  br i1 %9, label %switch.body, label %switch.next, !dbg !4477

switch.body:                                      ; preds = %if.done2
  %10 = load float, ptr %x6, align 4, !dbg !4490
    #dbg_value(float %10, !4461, !DIExpression(), !4490)
  ret float %10, !dbg !4491

switch.next:                                      ; preds = %if.done2
    #dbg_value(i32 %7, !4466, !DIExpression(), !4492)
    #dbg_value(i32 %8, !4467, !DIExpression(), !4493)
  %11 = icmp sle i32 %7, %8, !dbg !4494
  br i1 %11, label %switch.body3, label %switch.next4, !dbg !4477

switch.body3:                                     ; preds = %switch.next
  %12 = load float, ptr %y7, align 4, !dbg !4495
    #dbg_value(float %12, !4462, !DIExpression(), !4495)
  ret float %12, !dbg !4496

switch.next4:                                     ; preds = %switch.next
    #dbg_value(i32 %4, !4465, !DIExpression(), !4497)
    #dbg_value(i32 %7, !4466, !DIExpression(), !4498)
  %13 = icmp sge i32 %4, %7, !dbg !4499
  br i1 %13, label %if.then5, label %if.else, !dbg !4477

if.then5:                                         ; preds = %switch.next4
  %14 = load float, ptr %x6, align 4, !dbg !4500
    #dbg_value(float %14, !4461, !DIExpression(), !4500)
  ret float %14, !dbg !4501

if.else:                                          ; preds = %switch.next4
  %15 = load float, ptr %y7, align 4, !dbg !4502
    #dbg_value(float %15, !4462, !DIExpression(), !4502)
  ret float %15, !dbg !4503
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.initHeap(ptr %context) unnamed_addr #0 !dbg !4504 {
entry:
  call void @GC_init(), !dbg !4505
  call void @tinygo_runtime_bdwgc_init(), !dbg !4506
  ret void, !dbg !4507
}

declare void @GC_init() #1

declare void @tinygo_runtime_bdwgc_init() #1

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_runtime_bdwgc_callback() #0 !dbg !4508 {
entry:
  call void @runtime.gcMarkReachable(ptr undef), !dbg !4509
  ret void, !dbg !4510
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.gcMarkReachable(ptr %context) unnamed_addr #0 !dbg !4511 {
entry:
  call void @"internal/task.GCStopWorldAndScan"(ptr undef), !dbg !4512
  ret void, !dbg !4513
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.markRoots(i64 %start, i64 %end, ptr %context) #0 !dbg !4514 {
entry:
    #dbg_value(i64 %start, !4518, !DIExpression(), !4520)
    #dbg_value(i64 %end, !4519, !DIExpression(), !4520)
    #dbg_value(i64 %start, !4518, !DIExpression(), !4521)
    #dbg_value(i64 %end, !4519, !DIExpression(), !4522)
  call void @GC_push_all(i64 %start, i64 %end), !dbg !4523
  ret void, !dbg !4524
}

declare void @GC_push_all(i64, i64) #1

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.free(ptr %ptr, ptr %context) unnamed_addr #0 !dbg !4525 {
entry:
    #dbg_value(ptr %ptr, !4527, !DIExpression(), !4528)
    #dbg_value(ptr %ptr, !4527, !DIExpression(), !4529)
  call void @GC_free(ptr %ptr), !dbg !4530
  ret void, !dbg !4531
}

declare void @GC_free(ptr nocapture) #1

; Function Attrs: nounwind uwtable(sync)
define internal void @"internal/task.gcScanGlobals"(ptr %context) #0 !dbg !4532 {
entry:
  call void @runtime.findGlobals(ptr undef, ptr @runtime.markRoots, ptr undef), !dbg !4533
  ret void, !dbg !4534
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.findGlobals(ptr %found.context, ptr %found.funcptr, ptr %context) unnamed_addr #0 !dbg !4535 {
entry:
  %0 = insertvalue { ptr, ptr } zeroinitializer, ptr %found.context, 0, !dbg !4566
  %1 = insertvalue { ptr, ptr } %0, ptr %found.funcptr, 1, !dbg !4566
    #dbg_value(ptr %found.context, !4539, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4566)
    #dbg_value(ptr %found.funcptr, !4539, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4566)
  %2 = load i64, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 11), align 8, !dbg !4567
  %3 = add i64 ptrtoint (ptr @__ehdr_start to i64), %2, !dbg !4568
  %4 = inttoptr i64 %3 to ptr, !dbg !4569
    #dbg_value(ptr %4, !4540, !DIExpression(), !4570)
    #dbg_value(i64 0, !4541, !DIExpression(), !4571)
  br label %for.loop, !dbg !4572

for.loop:                                         ; preds = %if.done, %entry
  %5 = phi ptr [ %4, %entry ], [ %30, %if.done ], !dbg !4570
  %6 = phi i64 [ 0, %entry ], [ %31, %if.done ], !dbg !4571
    #dbg_value(i64 %6, !4541, !DIExpression(), !4573)
  %7 = load i16, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 16), align 2, !dbg !4574
  %8 = zext i16 %7 to i64, !dbg !4575
  %9 = icmp slt i64 %6, %8, !dbg !4576
  br i1 %9, label %for.body, label %for.done, !dbg !4572

for.body:                                         ; preds = %for.loop
  br i1 true, label %if.then, label %if.else, !dbg !4572

if.then:                                          ; preds = %for.body
    #dbg_value(ptr %5, !4540, !DIExpression(), !4577)
    #dbg_value(ptr %5, !4542, !DIExpression(), !4578)
    #dbg_value(ptr %5, !4542, !DIExpression(), !4579)
  %10 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 0, !dbg !4580
  %11 = icmp eq ptr %10, null, !dbg !4580
  br i1 %11, label %deref.throw, label %deref.next, !dbg !4580

deref.next:                                       ; preds = %if.then
  %12 = load i32, ptr %10, align 4, !dbg !4580
  %13 = icmp eq i32 %12, 1, !dbg !4581
  br i1 %13, label %cond.true, label %if.done, !dbg !4572

cond.true:                                        ; preds = %deref.next
    #dbg_value(ptr %5, !4542, !DIExpression(), !4582)
  %14 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 1, !dbg !4583
  %15 = icmp eq ptr %14, null, !dbg !4583
  br i1 %15, label %deref.throw4, label %deref.next5, !dbg !4583

deref.next5:                                      ; preds = %cond.true
  %16 = load i32, ptr %14, align 4, !dbg !4583
  %17 = and i32 %16, 2, !dbg !4584
  %18 = icmp ne i32 %17, 0, !dbg !4585
  br i1 %18, label %if.then1, label %if.done, !dbg !4572

if.then1:                                         ; preds = %deref.next5
    #dbg_value(ptr %5, !4542, !DIExpression(), !4586)
  %19 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 3, !dbg !4587
  %20 = icmp eq ptr %19, null, !dbg !4587
  br i1 %20, label %deref.throw6, label %deref.next7, !dbg !4587

deref.next7:                                      ; preds = %if.then1
  %21 = load i64, ptr %19, align 8, !dbg !4587
    #dbg_value(i64 %21, !4555, !DIExpression(), !4588)
    #dbg_value(i64 %21, !4555, !DIExpression(), !4589)
    #dbg_value(ptr %5, !4542, !DIExpression(), !4590)
  %22 = getelementptr inbounds %runtime.elfProgramHeader64, ptr %5, i32 0, i32 6, !dbg !4591
  %23 = icmp eq ptr %22, null, !dbg !4591
  br i1 %23, label %deref.throw8, label %deref.next9, !dbg !4591

deref.next9:                                      ; preds = %deref.next7
  %24 = load i64, ptr %22, align 8, !dbg !4591
  %25 = add i64 %21, %24, !dbg !4592
    #dbg_value(i64 %25, !4556, !DIExpression(), !4593)
    #dbg_value({ ptr, ptr } %1, !4539, !DIExpression(), !4594)
    #dbg_value(i64 %21, !4555, !DIExpression(), !4595)
    #dbg_value(i64 %25, !4556, !DIExpression(), !4596)
  %26 = extractvalue { ptr, ptr } %1, 0, !dbg !4597
  %27 = extractvalue { ptr, ptr } %1, 1, !dbg !4597
  %28 = icmp eq ptr %27, null, !dbg !4597
  br i1 %28, label %fpcall.throw, label %fpcall.next, !dbg !4597

fpcall.next:                                      ; preds = %deref.next9
  call void %27(i64 %21, i64 %25, ptr %26), !dbg !4597
  br label %if.done, !dbg !4572

if.done:                                          ; preds = %fpcall.next19, %deref.next13, %deref.next11, %fpcall.next, %deref.next5, %deref.next
    #dbg_value(ptr %5, !4540, !DIExpression(), !4598)
  %29 = load i16, ptr getelementptr inbounds (%runtime.elfHeader, ptr @__ehdr_start, i32 0, i32 15), align 2, !dbg !4599
  %30 = getelementptr i8, ptr %5, i16 %29, !dbg !4600
    #dbg_value(ptr %30, !4540, !DIExpression(), !4601)
  %31 = add i64 %6, 1, !dbg !4602
    #dbg_value(i64 %31, !4541, !DIExpression(), !4602)
  br label %for.loop, !dbg !4572

if.else:                                          ; preds = %for.body
    #dbg_value(ptr %5, !4540, !DIExpression(), !4603)
    #dbg_value(ptr %5, !4557, !DIExpression(), !4604)
    #dbg_value(ptr %5, !4557, !DIExpression(), !4605)
  %32 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 0, !dbg !4606
  %33 = icmp eq ptr %32, null, !dbg !4606
  br i1 %33, label %deref.throw10, label %deref.next11, !dbg !4606

deref.next11:                                     ; preds = %if.else
  %34 = load i32, ptr %32, align 4, !dbg !4606
  %35 = icmp eq i32 %34, 1, !dbg !4607
  br i1 %35, label %cond.true2, label %if.done, !dbg !4572

cond.true2:                                       ; preds = %deref.next11
    #dbg_value(ptr %5, !4557, !DIExpression(), !4608)
  %36 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 6, !dbg !4609
  %37 = icmp eq ptr %36, null, !dbg !4609
  br i1 %37, label %deref.throw12, label %deref.next13, !dbg !4609

deref.next13:                                     ; preds = %cond.true2
  %38 = load i32, ptr %36, align 4, !dbg !4609
  %39 = and i32 %38, 2, !dbg !4610
  %40 = icmp ne i32 %39, 0, !dbg !4611
  br i1 %40, label %if.then3, label %if.done, !dbg !4572

if.then3:                                         ; preds = %deref.next13
    #dbg_value(ptr %5, !4557, !DIExpression(), !4612)
  %41 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 2, !dbg !4613
  %42 = icmp eq ptr %41, null, !dbg !4613
  br i1 %42, label %deref.throw14, label %deref.next15, !dbg !4613

deref.next15:                                     ; preds = %if.then3
  %43 = load i64, ptr %41, align 8, !dbg !4613
    #dbg_value(i64 %43, !4564, !DIExpression(), !4614)
    #dbg_value(i64 %43, !4564, !DIExpression(), !4615)
    #dbg_value(ptr %5, !4557, !DIExpression(), !4616)
  %44 = getelementptr inbounds %runtime.elfProgramHeader32, ptr %5, i32 0, i32 5, !dbg !4617
  %45 = icmp eq ptr %44, null, !dbg !4617
  br i1 %45, label %deref.throw16, label %deref.next17, !dbg !4617

deref.next17:                                     ; preds = %deref.next15
  %46 = load i64, ptr %44, align 8, !dbg !4617
  %47 = add i64 %43, %46, !dbg !4618
    #dbg_value(i64 %47, !4565, !DIExpression(), !4619)
    #dbg_value({ ptr, ptr } %1, !4539, !DIExpression(), !4620)
    #dbg_value(i64 %43, !4564, !DIExpression(), !4621)
    #dbg_value(i64 %47, !4565, !DIExpression(), !4622)
  %48 = extractvalue { ptr, ptr } %1, 0, !dbg !4623
  %49 = extractvalue { ptr, ptr } %1, 1, !dbg !4623
  %50 = icmp eq ptr %49, null, !dbg !4623
  br i1 %50, label %fpcall.throw18, label %fpcall.next19, !dbg !4623

fpcall.next19:                                    ; preds = %deref.next17
  call void %49(i64 %43, i64 %47, ptr %48), !dbg !4623
  br label %if.done, !dbg !4572

for.done:                                         ; preds = %for.loop
  ret void, !dbg !4624

deref.throw:                                      ; preds = %if.then
  call void @runtime.nilPanic(ptr undef), !dbg !4580
  unreachable, !dbg !4580

deref.throw4:                                     ; preds = %cond.true
  call void @runtime.nilPanic(ptr undef), !dbg !4583
  unreachable, !dbg !4583

deref.throw6:                                     ; preds = %if.then1
  call void @runtime.nilPanic(ptr undef), !dbg !4587
  unreachable, !dbg !4587

deref.throw8:                                     ; preds = %deref.next7
  call void @runtime.nilPanic(ptr undef), !dbg !4591
  unreachable, !dbg !4591

fpcall.throw:                                     ; preds = %deref.next9
  call void @runtime.nilPanic(ptr undef), !dbg !4597
  unreachable, !dbg !4597

deref.throw10:                                    ; preds = %if.else
  call void @runtime.nilPanic(ptr undef), !dbg !4606
  unreachable, !dbg !4606

deref.throw12:                                    ; preds = %cond.true2
  call void @runtime.nilPanic(ptr undef), !dbg !4609
  unreachable, !dbg !4609

deref.throw14:                                    ; preds = %if.then3
  call void @runtime.nilPanic(ptr undef), !dbg !4613
  unreachable, !dbg !4613

deref.throw16:                                    ; preds = %deref.next15
  call void @runtime.nilPanic(ptr undef), !dbg !4617
  unreachable, !dbg !4617

fpcall.throw18:                                   ; preds = %deref.next17
  call void @runtime.nilPanic(ptr undef), !dbg !4623
  unreachable, !dbg !4623
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_scanstack(i64 %sp) #0 !dbg !4625 {
entry:
    #dbg_value(i64 %sp, !4627, !DIExpression(), !4628)
    #dbg_value(i64 %sp, !4627, !DIExpression(), !4629)
  %0 = call i64 @"internal/task.StackTop"(ptr undef), !dbg !4630
  call void @runtime.markRoots(i64 %sp, i64 %0, ptr undef), !dbg !4631
  ret void, !dbg !4632
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.unsafeSlicePanic(ptr %context) #0 !dbg !4633 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4634
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.22", i64 37, ptr undef), !dbg !4635
  ret void, !dbg !4636
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.negativeShiftPanic(ptr %context) #0 !dbg !4637 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !4638
  call void @runtime.runtimePanicAt(ptr %0, ptr @"runtime$string.24", i64 14, ptr undef), !dbg !4639
  ret void, !dbg !4640
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printspace(ptr %context) #0 !dbg !4641 {
entry:
  call void @runtime.putchar(i8 32, ptr undef), !dbg !4642
  ret void, !dbg !4643
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.memmove(ptr %dst, ptr %src, i64 %size, ptr %context) #0 !dbg !4644 {
entry:
    #dbg_value(ptr %dst, !4646, !DIExpression(), !4649)
    #dbg_value(ptr %src, !4647, !DIExpression(), !4649)
    #dbg_value(i64 %size, !4648, !DIExpression(), !4649)
  call void @llvm.memmove.p0.p0.i64(ptr %dst, ptr %src, i64 %size, i1 false), !dbg !4649
  ret void, !dbg !4649
}

; Function Attrs: nounwind uwtable(sync)
define i64 @main(i32 %argc, ptr nocapture dereferenceable_or_null(8) %argv) #0 !dbg !4650 {
entry:
    #dbg_value(i32 %argc, !4654, !DIExpression(), !4659)
    #dbg_value(ptr %argv, !4655, !DIExpression(), !4659)
  br i1 false, label %if.then, label %if.done, !dbg !4660

if.then:                                          ; preds = %entry
  call void @runtime.allocateHeap(ptr undef), !dbg !4661
  br label %if.done, !dbg !4660

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(i32 %argc, !4654, !DIExpression(), !4662)
  store i32 %argc, ptr @runtime.main_argc, align 4, !dbg !4663
    #dbg_value(i32 %argc, !4656, !DIExpression(), !4663)
    #dbg_value(ptr %argv, !4655, !DIExpression(), !4664)
  store ptr %argv, ptr @runtime.main_argv, align 8, !dbg !4665
    #dbg_value(ptr %argv, !4657, !DIExpression(), !4665)
  call void @tinygo_register_fatal_signals(), !dbg !4666
  %0 = call i64 @runtime.getCurrentStackPointer(ptr undef), !dbg !4667
  store i64 %0, ptr @runtime.stackTop, align 8, !dbg !4668
    #dbg_value(i64 %0, !4658, !DIExpression(), !4668)
  call void @runtime.runMain(ptr undef), !dbg !4669
  ret i64 0, !dbg !4670
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.allocateHeap(ptr %context) unnamed_addr #0 !dbg !4671 {
entry:
  store i64 1073741824, ptr @runtime.heapMaxSize, align 8, !dbg !4678
    #dbg_value(i64 1073741824, !4673, !DIExpression(), !4678)
  br label %for.body, !dbg !4679

for.body:                                         ; preds = %if.then1, %if.then, %entry
  %0 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4680
    #dbg_value(i64 %0, !4673, !DIExpression(), !4680)
  %1 = call ptr @mmap(ptr null, i64 %0, i64 3, i64 34, i64 -1, i64 0), !dbg !4681
    #dbg_value(ptr %1, !4674, !DIExpression(), !4682)
    #dbg_value(ptr %1, !4674, !DIExpression(), !4683)
  %2 = icmp eq ptr %1, inttoptr (i64 -1 to ptr), !dbg !4684
  br i1 %2, label %if.then, label %if.done, !dbg !4679

if.then:                                          ; preds = %for.body
  %3 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4685
  %4 = udiv i64 %3, 2, !dbg !4685
  store i64 %4, ptr @runtime.heapMaxSize, align 8, !dbg !4685
    #dbg_value(i64 %4, !4673, !DIExpression(), !4685)
  %5 = load i64, ptr @runtime.heapMaxSize, align 8, !dbg !4686
    #dbg_value(i64 %5, !4673, !DIExpression(), !4686)
  %6 = icmp ult i64 %5, 4096, !dbg !4687
  br i1 %6, label %if.then1, label %for.body, !dbg !4679

if.then1:                                         ; preds = %if.then
  call void @runtime.runtimePanic(ptr @"runtime$string.56", i64 27, ptr undef), !dbg !4688
  br label %for.body, !dbg !4679

if.done:                                          ; preds = %for.body
    #dbg_value(ptr %1, !4674, !DIExpression(), !4689)
  %7 = ptrtoint ptr %1 to i64, !dbg !4690
  store i64 %7, ptr @runtime.heapStart, align 8, !dbg !4691
    #dbg_value(i64 %7, !4675, !DIExpression(), !4691)
  %8 = load i64, ptr @runtime.heapStart, align 8, !dbg !4692
    #dbg_value(i64 %8, !4675, !DIExpression(), !4692)
  %9 = load i64, ptr @runtime.heapSize, align 8, !dbg !4693
    #dbg_value(i64 %9, !4676, !DIExpression(), !4693)
  %10 = add i64 %8, %9, !dbg !4694
  store i64 %10, ptr @runtime.heapEnd, align 8, !dbg !4695
    #dbg_value(i64 %10, !4677, !DIExpression(), !4695)
  ret void, !dbg !4696
}

declare void @tinygo_register_fatal_signals() #1

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @runtime.runMain(ptr %context) unnamed_addr #15 !dbg !4697 {
entry:
  call void @runtime.run(ptr undef), !dbg !4698
  ret void, !dbg !4699
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.run(ptr %context) unnamed_addr #0 !dbg !4700 {
entry:
  call void @runtime.initRand(ptr undef), !dbg !4703
  call void @runtime.initHeap(ptr undef), !dbg !4704
  %0 = load i64, ptr @runtime.stackTop, align 8, !dbg !4705
    #dbg_value(i64 %0, !4702, !DIExpression(), !4705)
  call void @"internal/task.Init"(i64 %0, ptr undef), !dbg !4706
  call void @runtime.initAll(ptr undef), !dbg !4707
  call void @main.main(ptr undef), !dbg !4708
  ret void, !dbg !4709
}

define internal void @runtime.initAll(ptr %context) unnamed_addr #1 {
entry:
  ret void
}

declare void @main.main(ptr) #1

declare ptr @mmap(ptr nocapture, i64, i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_handle_fatal_signal(i32 %sig, i64 %addr) #0 !dbg !4710 {
entry:
    #dbg_value(i32 %sig, !4714, !DIExpression(), !4716)
    #dbg_value(i64 %addr, !4715, !DIExpression(), !4716)
  br i1 false, label %if.then, label %if.done, !dbg !4717

if.then:                                          ; preds = %entry
  call void @llvm.trap(), !dbg !4718
  br label %if.done, !dbg !4717

if.done:                                          ; preds = %if.then, %entry
    #dbg_value(i64 %addr, !4715, !DIExpression(), !4719)
  %0 = icmp ne i64 %addr, 0, !dbg !4720
  br i1 %0, label %if.then1, label %if.else, !dbg !4717

if.then1:                                         ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.50", i64 24, ptr undef), !dbg !4721
    #dbg_value(i64 %addr, !4715, !DIExpression(), !4722)
  call void @runtime.printptr(i64 %addr, ptr undef), !dbg !4723
  br label %if.done2, !dbg !4717

if.done2:                                         ; preds = %if.else, %if.then1
  call void @runtime.printstring(ptr @"runtime$string.51", i64 16, ptr undef), !dbg !4724
    #dbg_value(i32 %sig, !4714, !DIExpression(), !4725)
  %1 = icmp eq i32 %sig, 7, !dbg !4726
  br i1 %1, label %switch.body, label %switch.next, !dbg !4717

switch.body:                                      ; preds = %if.done2
  call void @runtime.printlock(ptr undef), !dbg !4727
  call void @runtime.printstring(ptr @"runtime$string.52", i64 6, ptr undef), !dbg !4727
  call void @runtime.printnl(ptr undef), !dbg !4727
  call void @runtime.printunlock(ptr undef), !dbg !4727
  br label %switch.done, !dbg !4717

switch.done:                                      ; preds = %switch.next6, %switch.body5, %switch.body3, %switch.body
    #dbg_value(i32 %sig, !4714, !DIExpression(), !4728)
  call void @raise(i32 %sig), !dbg !4729
  ret void, !dbg !4730

switch.next:                                      ; preds = %if.done2
  %2 = icmp eq i32 %sig, 4, !dbg !4731
  br i1 %2, label %switch.body3, label %switch.next4, !dbg !4717

switch.body3:                                     ; preds = %switch.next
  call void @runtime.printlock(ptr undef), !dbg !4732
  call void @runtime.printstring(ptr @"runtime$string.53", i64 6, ptr undef), !dbg !4732
  call void @runtime.printnl(ptr undef), !dbg !4732
  call void @runtime.printunlock(ptr undef), !dbg !4732
  br label %switch.done, !dbg !4717

switch.next4:                                     ; preds = %switch.next
  %3 = icmp eq i32 %sig, 11, !dbg !4733
  br i1 %3, label %switch.body5, label %switch.next6, !dbg !4717

switch.body5:                                     ; preds = %switch.next4
  call void @runtime.printlock(ptr undef), !dbg !4734
  call void @runtime.printstring(ptr @"runtime$string.54", i64 7, ptr undef), !dbg !4734
  call void @runtime.printnl(ptr undef), !dbg !4734
  call void @runtime.printunlock(ptr undef), !dbg !4734
  br label %switch.done, !dbg !4717

switch.next6:                                     ; preds = %switch.next4
    #dbg_value(i32 %sig, !4714, !DIExpression(), !4735)
  call void @runtime.printlock(ptr undef), !dbg !4736
  call void @runtime.printint32(i32 %sig, ptr undef), !dbg !4736
  call void @runtime.printnl(ptr undef), !dbg !4736
  call void @runtime.printunlock(ptr undef), !dbg !4736
  br label %switch.done, !dbg !4717

if.else:                                          ; preds = %if.done
  call void @runtime.printstring(ptr @"runtime$string.55", i64 20, ptr undef), !dbg !4737
  br label %if.done2, !dbg !4717
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printlock(ptr %context) #0 !dbg !4738 {
entry:
  call void @"(*internal/task.Mutex).Lock"(ptr @runtime.printLock, ptr undef), !dbg !4739
  ret void, !dbg !4740
}

; Function Attrs: nounwind uwtable(sync)
define internal void @runtime.printunlock(ptr %context) #0 !dbg !4741 {
entry:
  call void @"(*internal/task.Mutex).Unlock"(ptr @runtime.printLock, ptr undef), !dbg !4742
  ret void, !dbg !4743
}

declare void @raise(i32) #1

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @runtime.sliceAppend(ptr %srcBuf, ptr nocapture readonly %elemsBuf, i64 %srcLen, i64 %srcCap, i64 %elemsLen, i64 %elemSize, ptr %layout, ptr %context) #0 !dbg !4744 {
entry:
    #dbg_value(ptr %srcBuf, !4749, !DIExpression(), !4757)
    #dbg_value(ptr %elemsBuf, !4750, !DIExpression(), !4757)
    #dbg_value(i64 %srcLen, !4751, !DIExpression(), !4757)
    #dbg_value(i64 %srcCap, !4752, !DIExpression(), !4757)
    #dbg_value(i64 %elemsLen, !4753, !DIExpression(), !4757)
    #dbg_value(i64 %elemSize, !4754, !DIExpression(), !4757)
    #dbg_value(ptr %layout, !4755, !DIExpression(), !4757)
    #dbg_value(i64 %srcLen, !4751, !DIExpression(), !4758)
    #dbg_value(i64 %elemsLen, !4753, !DIExpression(), !4759)
  %0 = add i64 %srcLen, %elemsLen, !dbg !4760
    #dbg_value(i64 %0, !4756, !DIExpression(), !4761)
    #dbg_value(i64 %elemsLen, !4753, !DIExpression(), !4762)
  %1 = icmp ugt i64 %elemsLen, 0, !dbg !4763
  br i1 %1, label %if.then, label %if.done, !dbg !4764

if.then:                                          ; preds = %entry
    #dbg_value(ptr %srcBuf, !4749, !DIExpression(), !4765)
    #dbg_value(i64 %srcLen, !4751, !DIExpression(), !4766)
    #dbg_value(i64 %srcCap, !4752, !DIExpression(), !4767)
    #dbg_value(i64 %0, !4756, !DIExpression(), !4768)
    #dbg_value(i64 %elemSize, !4754, !DIExpression(), !4769)
    #dbg_value(ptr %layout, !4755, !DIExpression(), !4770)
  %2 = call { ptr, i64, i64 } @runtime.sliceGrow(ptr %srcBuf, i64 %srcLen, i64 %srcCap, i64 %0, i64 %elemSize, ptr %layout, ptr undef), !dbg !4771
  %3 = extractvalue { ptr, i64, i64 } %2, 0, !dbg !4771
    #dbg_value(ptr %3, !4749, !DIExpression(), !4772)
  %4 = extractvalue { ptr, i64, i64 } %2, 1, !dbg !4771
  %5 = extractvalue { ptr, i64, i64 } %2, 2, !dbg !4771
    #dbg_value(i64 %5, !4752, !DIExpression(), !4773)
    #dbg_value(ptr %3, !4749, !DIExpression(), !4774)
    #dbg_value(i64 %srcLen, !4751, !DIExpression(), !4775)
    #dbg_value(i64 %elemSize, !4754, !DIExpression(), !4776)
  %6 = mul i64 %srcLen, %elemSize, !dbg !4777
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !4778
    #dbg_value(ptr %elemsBuf, !4750, !DIExpression(), !4779)
    #dbg_value(i64 %elemsLen, !4753, !DIExpression(), !4780)
    #dbg_value(i64 %elemSize, !4754, !DIExpression(), !4781)
  %8 = mul i64 %elemsLen, %elemSize, !dbg !4782
  call void @runtime.memmove(ptr %7, ptr %elemsBuf, i64 %8, ptr undef), !dbg !4783
  br label %if.done, !dbg !4764

if.done:                                          ; preds = %if.then, %entry
  %9 = phi ptr [ %srcBuf, %entry ], [ %3, %if.then ], !dbg !4784
  %10 = phi i64 [ %srcCap, %entry ], [ %5, %if.then ], !dbg !4785
    #dbg_value(ptr %9, !4749, !DIExpression(), !4786)
    #dbg_value(i64 %0, !4756, !DIExpression(), !4787)
    #dbg_value(i64 %10, !4752, !DIExpression(), !4788)
  %11 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %9, 0, !dbg !4789
  %12 = insertvalue { ptr, i64, i64 } %11, i64 %0, 1, !dbg !4789
  %13 = insertvalue { ptr, i64, i64 } %12, i64 %10, 2, !dbg !4789
  ret { ptr, i64, i64 } %13, !dbg !4789
}

; Function Attrs: nounwind uwtable(sync)
define internal { ptr, i64, i64 } @runtime.sliceGrow(ptr %oldBuf, i64 %oldLen, i64 %oldCap, i64 %newCap, i64 %elemSize, ptr %layout, ptr %context) #0 !dbg !4790 {
entry:
    #dbg_value(ptr %oldBuf, !4794, !DIExpression(), !4801)
    #dbg_value(i64 %oldLen, !4795, !DIExpression(), !4801)
    #dbg_value(i64 %oldCap, !4796, !DIExpression(), !4801)
    #dbg_value(i64 %newCap, !4797, !DIExpression(), !4801)
    #dbg_value(i64 %elemSize, !4798, !DIExpression(), !4801)
    #dbg_value(ptr %layout, !4799, !DIExpression(), !4801)
    #dbg_value(i64 %oldCap, !4796, !DIExpression(), !4802)
    #dbg_value(i64 %newCap, !4797, !DIExpression(), !4803)
  %0 = icmp uge i64 %oldCap, %newCap, !dbg !4804
  br i1 %0, label %if.then, label %if.done, !dbg !4805

if.then:                                          ; preds = %entry
    #dbg_value(ptr %oldBuf, !4794, !DIExpression(), !4806)
    #dbg_value(i64 %oldLen, !4795, !DIExpression(), !4807)
    #dbg_value(i64 %oldCap, !4796, !DIExpression(), !4808)
  %1 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %oldBuf, 0, !dbg !4809
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %oldLen, 1, !dbg !4809
  %3 = insertvalue { ptr, i64, i64 } %2, i64 %oldCap, 2, !dbg !4809
  ret { ptr, i64, i64 } %3, !dbg !4809

if.done:                                          ; preds = %entry
    #dbg_value(i64 %newCap, !4797, !DIExpression(), !4810)
  %4 = call i64 @"math/bits.Len"(i64 %newCap, ptr undef), !dbg !4811
  %5 = icmp slt i64 %4, 0, !dbg !4812
  br i1 %5, label %shift.throw, label %shift.next, !dbg !4812

shift.next:                                       ; preds = %if.done
  %shift.overflow = icmp uge i64 %4, 64, !dbg !4812
  %6 = shl i64 1, %4, !dbg !4812
  %shift.result = select i1 %shift.overflow, i64 0, i64 %6, !dbg !4812
    #dbg_value(i64 %shift.result, !4797, !DIExpression(), !4813)
    #dbg_value(i64 %shift.result, !4797, !DIExpression(), !4814)
    #dbg_value(i64 %elemSize, !4798, !DIExpression(), !4815)
  %7 = mul i64 %shift.result, %elemSize, !dbg !4816
    #dbg_value(ptr %layout, !4799, !DIExpression(), !4817)
  %8 = call ptr @runtime.alloc(i64 %7, ptr %layout, ptr undef), !dbg !4818
    #dbg_value(ptr %8, !4800, !DIExpression(), !4819)
    #dbg_value(i64 %oldLen, !4795, !DIExpression(), !4820)
  %9 = icmp ugt i64 %oldLen, 0, !dbg !4821
  br i1 %9, label %if.then1, label %if.done2, !dbg !4805

if.then1:                                         ; preds = %shift.next
    #dbg_value(ptr %8, !4800, !DIExpression(), !4822)
    #dbg_value(ptr %oldBuf, !4794, !DIExpression(), !4823)
    #dbg_value(i64 %oldLen, !4795, !DIExpression(), !4824)
    #dbg_value(i64 %elemSize, !4798, !DIExpression(), !4825)
  %10 = mul i64 %oldLen, %elemSize, !dbg !4826
  call void @runtime.memmove(ptr %8, ptr %oldBuf, i64 %10, ptr undef), !dbg !4827
  br label %if.done2, !dbg !4805

if.done2:                                         ; preds = %if.then1, %shift.next
    #dbg_value(ptr %8, !4800, !DIExpression(), !4828)
    #dbg_value(i64 %oldLen, !4795, !DIExpression(), !4829)
    #dbg_value(i64 %shift.result, !4797, !DIExpression(), !4830)
  %11 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %8, 0, !dbg !4831
  %12 = insertvalue { ptr, i64, i64 } %11, i64 %oldLen, 1, !dbg !4831
  %13 = insertvalue { ptr, i64, i64 } %12, i64 %shift.result, 2, !dbg !4831
  ret { ptr, i64, i64 } %13, !dbg !4831

shift.throw:                                      ; preds = %if.done
  call void @runtime.negativeShiftPanic(ptr undef), !dbg !4812
  unreachable, !dbg !4812
}

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_signal_handler(i32 %s) #0 !dbg !4832 {
entry:
    #dbg_value(i32 %s, !4834, !DIExpression(), !4838)
  br label %for.body, !dbg !4839

for.body:                                         ; preds = %for.body, %entry
    #dbg_value(i32 %s, !4834, !DIExpression(), !4840)
  %shift.overflow = icmp uge i32 %s, 32, !dbg !4841
  %0 = shl i32 1, %s, !dbg !4841
  %shift.result = select i1 %shift.overflow, i32 0, i32 %0, !dbg !4841
    #dbg_value(i32 %shift.result, !4835, !DIExpression(), !4842)
  %1 = call i32 @"(*sync/atomic.Uint32).Load"(ptr @runtime.receivedSignals, ptr undef), !dbg !4843
    #dbg_value(i32 %1, !4836, !DIExpression(), !4844)
    #dbg_value(i32 %1, !4836, !DIExpression(), !4845)
    #dbg_value(i32 %1, !4836, !DIExpression(), !4846)
    #dbg_value(i32 %shift.result, !4835, !DIExpression(), !4847)
  %2 = or i32 %1, %shift.result, !dbg !4848
  %3 = call i1 @"(*sync/atomic.Uint32).CompareAndSwap"(ptr @runtime.receivedSignals, i32 %1, i32 %2, ptr undef), !dbg !4849
    #dbg_value(i1 %3, !4837, !DIExpression(), !4850)
    #dbg_value(i1 %3, !4837, !DIExpression(), !4851)
  br i1 %3, label %if.then, label %for.body, !dbg !4839

if.then:                                          ; preds = %for.body
  %4 = call i32 @"(*sync/atomic.Uint32).Swap"(ptr @runtime.signalFutex, i32 1, ptr undef), !dbg !4852
  %5 = icmp eq i32 %4, 0, !dbg !4853
  br i1 %5, label %if.then1, label %if.done, !dbg !4839

if.then1:                                         ; preds = %if.then
  call void @"(*internal/futex.Futex).WakeAll"(ptr @runtime.signalFutex, ptr undef), !dbg !4854
  br label %if.done, !dbg !4839

if.done:                                          ; preds = %if.then1, %if.then
  ret void, !dbg !4855
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @runtime.stringConcat(ptr dereferenceable_or_null(1) %x.ptr, i64 %x.length, ptr dereferenceable_or_null(1) %y.ptr, i64 %y.length, ptr %context) #0 !dbg !4856 {
entry:
  %complit = alloca %runtime._string, align 8, !dbg !4868
  %y = alloca %runtime._string, align 8, !dbg !4868
  %x = alloca %runtime._string, align 8, !dbg !4868
  %0 = insertvalue %runtime._string zeroinitializer, ptr %x.ptr, 0, !dbg !4868
  %1 = insertvalue %runtime._string %0, i64 %x.length, 1, !dbg !4868
    #dbg_value(ptr %x.ptr, !4864, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4868)
    #dbg_value(i64 %x.length, !4864, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4868)
  %2 = insertvalue %runtime._string zeroinitializer, ptr %y.ptr, 0, !dbg !4868
  %3 = insertvalue %runtime._string %2, i64 %y.length, 1, !dbg !4868
    #dbg_value(ptr %y.ptr, !4865, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4868)
    #dbg_value(i64 %y.length, !4865, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4868)
  store %runtime._string zeroinitializer, ptr %x, align 8, !dbg !4868
  store %runtime._string %1, ptr %x, align 8, !dbg !4869
  store %runtime._string zeroinitializer, ptr %y, align 8, !dbg !4868
  store %runtime._string %3, ptr %y, align 8, !dbg !4870
  %4 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4871
  %5 = icmp eq ptr %4, null, !dbg !4871
  br i1 %5, label %deref.throw, label %deref.next, !dbg !4871

deref.next:                                       ; preds = %entry
  %6 = load i64, ptr %4, align 8, !dbg !4871
  %7 = icmp eq i64 %6, 0, !dbg !4872
  br i1 %7, label %if.then, label %if.else, !dbg !4873

if.then:                                          ; preds = %deref.next
  %8 = load %runtime._string, ptr %y, align 8, !dbg !4874
    #dbg_value(%runtime._string %8, !4865, !DIExpression(), !4874)
  ret %runtime._string %8, !dbg !4875

if.else:                                          ; preds = %deref.next
  %9 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4876
  %10 = icmp eq ptr %9, null, !dbg !4876
  br i1 %10, label %deref.throw3, label %deref.next4, !dbg !4876

deref.next4:                                      ; preds = %if.else
  %11 = load i64, ptr %9, align 8, !dbg !4876
  %12 = icmp eq i64 %11, 0, !dbg !4877
  br i1 %12, label %if.then1, label %if.else2, !dbg !4873

if.then1:                                         ; preds = %deref.next4
  %13 = load %runtime._string, ptr %x, align 8, !dbg !4878
    #dbg_value(%runtime._string %13, !4864, !DIExpression(), !4878)
  ret %runtime._string %13, !dbg !4879

if.else2:                                         ; preds = %deref.next4
  %14 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4880
  %15 = icmp eq ptr %14, null, !dbg !4880
  br i1 %15, label %deref.throw5, label %deref.next6, !dbg !4880

deref.next6:                                      ; preds = %if.else2
  %16 = load i64, ptr %14, align 8, !dbg !4880
  %17 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4881
  %18 = icmp eq ptr %17, null, !dbg !4881
  br i1 %18, label %deref.throw7, label %deref.next8, !dbg !4881

deref.next8:                                      ; preds = %deref.next6
  %19 = load i64, ptr %17, align 8, !dbg !4881
  %20 = add i64 %16, %19, !dbg !4882
    #dbg_value(i64 %20, !4866, !DIExpression(), !4883)
    #dbg_value(i64 %20, !4866, !DIExpression(), !4884)
  %21 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !4885
  %22 = call ptr @runtime.alloc(i64 %20, ptr %21, ptr undef), !dbg !4886
    #dbg_value(ptr %22, !4867, !DIExpression(), !4887)
    #dbg_value(ptr %22, !4867, !DIExpression(), !4888)
  %23 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 0, !dbg !4889
  %24 = icmp eq ptr %23, null, !dbg !4889
  br i1 %24, label %deref.throw9, label %deref.next10, !dbg !4889

deref.next10:                                     ; preds = %deref.next8
  %25 = load ptr, ptr %23, align 8, !dbg !4889
  %26 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4890
  %27 = icmp eq ptr %26, null, !dbg !4890
  br i1 %27, label %deref.throw11, label %deref.next12, !dbg !4890

deref.next12:                                     ; preds = %deref.next10
  %28 = load i64, ptr %26, align 8, !dbg !4890
  call void @runtime.memcpy(ptr %22, ptr %25, i64 %28, ptr undef), !dbg !4891
    #dbg_value(ptr %22, !4867, !DIExpression(), !4892)
  %29 = getelementptr inbounds %runtime._string, ptr %x, i32 0, i32 1, !dbg !4893
  %30 = icmp eq ptr %29, null, !dbg !4893
  br i1 %30, label %deref.throw13, label %deref.next14, !dbg !4893

deref.next14:                                     ; preds = %deref.next12
  %31 = load i64, ptr %29, align 8, !dbg !4893
  %32 = getelementptr i8, ptr %22, i64 %31, !dbg !4894
  %33 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 0, !dbg !4895
  %34 = icmp eq ptr %33, null, !dbg !4895
  br i1 %34, label %deref.throw15, label %deref.next16, !dbg !4895

deref.next16:                                     ; preds = %deref.next14
  %35 = load ptr, ptr %33, align 8, !dbg !4895
  %36 = getelementptr inbounds %runtime._string, ptr %y, i32 0, i32 1, !dbg !4896
  %37 = icmp eq ptr %36, null, !dbg !4896
  br i1 %37, label %deref.throw17, label %deref.next18, !dbg !4896

deref.next18:                                     ; preds = %deref.next16
  %38 = load i64, ptr %36, align 8, !dbg !4896
  call void @runtime.memcpy(ptr %32, ptr %35, i64 %38, ptr undef), !dbg !4897
  store %runtime._string zeroinitializer, ptr %complit, align 8, !dbg !4868
  %39 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !4898
    #dbg_value(ptr %22, !4867, !DIExpression(), !4899)
  %40 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !4900
    #dbg_value(i64 %20, !4866, !DIExpression(), !4901)
  %41 = icmp eq ptr %39, null, !dbg !4898
  br i1 %41, label %store.throw, label %store.next, !dbg !4898

store.next:                                       ; preds = %deref.next18
  store ptr %22, ptr %39, align 8, !dbg !4898
  %42 = icmp eq ptr %40, null, !dbg !4900
  br i1 %42, label %store.throw19, label %store.next20, !dbg !4900

store.next20:                                     ; preds = %store.next
  store i64 %20, ptr %40, align 8, !dbg !4900
    #dbg_value(i64 %20, !4866, !DIExpression(), !4901)
  %43 = load %runtime._string, ptr %complit, align 8, !dbg !4902
  ret %runtime._string %43, !dbg !4903

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !4871
  unreachable, !dbg !4871

deref.throw3:                                     ; preds = %if.else
  call void @runtime.nilPanic(ptr undef), !dbg !4876
  unreachable, !dbg !4876

deref.throw5:                                     ; preds = %if.else2
  call void @runtime.nilPanic(ptr undef), !dbg !4880
  unreachable, !dbg !4880

deref.throw7:                                     ; preds = %deref.next6
  call void @runtime.nilPanic(ptr undef), !dbg !4881
  unreachable, !dbg !4881

deref.throw9:                                     ; preds = %deref.next8
  call void @runtime.nilPanic(ptr undef), !dbg !4889
  unreachable, !dbg !4889

deref.throw11:                                    ; preds = %deref.next10
  call void @runtime.nilPanic(ptr undef), !dbg !4890
  unreachable, !dbg !4890

deref.throw13:                                    ; preds = %deref.next12
  call void @runtime.nilPanic(ptr undef), !dbg !4893
  unreachable, !dbg !4893

deref.throw15:                                    ; preds = %deref.next14
  call void @runtime.nilPanic(ptr undef), !dbg !4895
  unreachable, !dbg !4895

deref.throw17:                                    ; preds = %deref.next16
  call void @runtime.nilPanic(ptr undef), !dbg !4896
  unreachable, !dbg !4896

store.throw:                                      ; preds = %deref.next18
  call void @runtime.nilPanic(ptr undef), !dbg !4898
  unreachable, !dbg !4898

store.throw19:                                    ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !4900
  unreachable, !dbg !4900
}

; Function Attrs: nounwind uwtable(sync)
define internal %runtime._string @runtime.stringFromBytes(ptr nocapture readonly dereferenceable_or_null(1) %x.ptr, i64 %x.len, i64 %x.cap, ptr %context) #0 !dbg !4904 {
entry:
  %complit = alloca %runtime._string, align 8, !dbg !4911
  %x = alloca { ptr, i64, i64 }, align 8, !dbg !4911
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %x.ptr, 0, !dbg !4911
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %x.len, 1, !dbg !4911
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %x.cap, 2, !dbg !4911
    #dbg_value(ptr %x.ptr, !4909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4911)
    #dbg_value(i64 %x.len, !4909, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4911)
    #dbg_value(i64 %x.cap, !4909, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4911)
  store { ptr, i64, i64 } zeroinitializer, ptr %x, align 8, !dbg !4911
  store { ptr, i64, i64 } %2, ptr %x, align 8, !dbg !4912
  %3 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4913
  %4 = icmp eq ptr %3, null, !dbg !4913
  br i1 %4, label %deref.throw, label %deref.next, !dbg !4913

deref.next:                                       ; preds = %entry
  %5 = load i64, ptr %3, align 8, !dbg !4913
  %6 = call ptr @"(internal/gclayout.Layout).AsPtr"(i64 3, ptr undef), !dbg !4914
  %7 = call ptr @runtime.alloc(i64 %5, ptr %6, ptr undef), !dbg !4915
    #dbg_value(ptr %7, !4910, !DIExpression(), !4916)
    #dbg_value(ptr %7, !4910, !DIExpression(), !4917)
  %8 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 0, !dbg !4918
  %9 = icmp eq ptr %8, null, !dbg !4918
  br i1 %9, label %deref.throw1, label %deref.next2, !dbg !4918

deref.next2:                                      ; preds = %deref.next
  %10 = load ptr, ptr %8, align 8, !dbg !4918
  %11 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4919
  %12 = icmp eq ptr %11, null, !dbg !4919
  br i1 %12, label %deref.throw3, label %deref.next4, !dbg !4919

deref.next4:                                      ; preds = %deref.next2
  %13 = load i64, ptr %11, align 8, !dbg !4919
  call void @runtime.memcpy(ptr %7, ptr %10, i64 %13, ptr undef), !dbg !4920
  store %runtime._string zeroinitializer, ptr %complit, align 8, !dbg !4911
  %14 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 0, !dbg !4921
    #dbg_value(ptr %7, !4910, !DIExpression(), !4922)
  %15 = getelementptr inbounds %runtime._string, ptr %complit, i32 0, i32 1, !dbg !4923
  %16 = getelementptr inbounds { ptr, i64, i64 }, ptr %x, i32 0, i32 1, !dbg !4924
  %17 = icmp eq ptr %16, null, !dbg !4924
  br i1 %17, label %deref.throw5, label %deref.next6, !dbg !4924

deref.next6:                                      ; preds = %deref.next4
  %18 = load i64, ptr %16, align 8, !dbg !4924
  %19 = icmp eq ptr %14, null, !dbg !4921
  br i1 %19, label %store.throw, label %store.next, !dbg !4921

store.next:                                       ; preds = %deref.next6
  store ptr %7, ptr %14, align 8, !dbg !4921
  %20 = icmp eq ptr %15, null, !dbg !4923
  br i1 %20, label %store.throw7, label %store.next8, !dbg !4923

store.next8:                                      ; preds = %store.next
  store i64 %18, ptr %15, align 8, !dbg !4923
  %21 = load %runtime._string, ptr %complit, align 8, !dbg !4925
  ret %runtime._string %21, !dbg !4926

deref.throw:                                      ; preds = %entry
  call void @runtime.nilPanic(ptr undef), !dbg !4913
  unreachable, !dbg !4913

deref.throw1:                                     ; preds = %deref.next
  call void @runtime.nilPanic(ptr undef), !dbg !4918
  unreachable, !dbg !4918

deref.throw3:                                     ; preds = %deref.next2
  call void @runtime.nilPanic(ptr undef), !dbg !4919
  unreachable, !dbg !4919

deref.throw5:                                     ; preds = %deref.next4
  call void @runtime.nilPanic(ptr undef), !dbg !4924
  unreachable, !dbg !4924

store.throw:                                      ; preds = %deref.next6
  call void @runtime.nilPanic(ptr undef), !dbg !4921
  unreachable, !dbg !4921

store.throw7:                                     ; preds = %store.next
  call void @runtime.nilPanic(ptr undef), !dbg !4923
  unreachable, !dbg !4923
}

; Function Attrs: nounwind uwtable(sync)
define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
  %0 = icmp eq i64 %n, 0, !dbg !4933
  br i1 %0, label %if.then, label %if.done, !dbg !4934

if.then:                                          ; preds = %entry
  ret i64 1, !dbg !4935

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !4930, !DIExpression(), !4936)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4937)
  %1 = sub i64 %n, 1, !dbg !4938
  %2 = call i64 @f_gold(i64 %1), !dbg !4939
  %3 = mul i64 %n, %2, !dbg !4940
  ret i64 %3, !dbg !4941
}

attributes #0 = { nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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

!llvm.dbg.cu = !{!516, !518, !559, !560, !561, !569, !820, !838, !1030, !1032, !1516, !1527, !1555, !1556, !1731}
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
!519 = !{!520, !417, !415, !526, !531, !534, !539, !544, !549, !554}
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !522, line: 1, type: !523, isLocal: true, isDefinition: true)
!522 = !DIFile(filename: "value.go", directory: "/usr/local/go/src/sync/atomic")
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, align: 8, elements: !524)
!524 = !{!525}
!525 = !DISubrange(count: 53, lowerBound: 0)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !522, line: 1, type: !528, isLocal: true, isDefinition: true)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, align: 8, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 60, lowerBound: 0)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(name: "sync/atomic.firstStoreInProgress", linkageName: "sync/atomic.firstStoreInProgress", scope: !522, file: !522, line: 42, type: !533, isLocal: false, isDefinition: true, align: 8)
!533 = !DIBasicType(name: "byte", size: 8, encoding: DW_ATE_unsigned)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !522, line: 1, type: !536, isLocal: true, isDefinition: true)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, align: 8, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 70, lowerBound: 0)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !522, line: 1, type: !541, isLocal: true, isDefinition: true)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, align: 8, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 42, lowerBound: 0)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !522, line: 1, type: !546, isLocal: true, isDefinition: true)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, align: 8, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 59, lowerBound: 0)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !522, line: 1, type: !551, isLocal: true, isDefinition: true)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, align: 8, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 41, lowerBound: 0)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !522, line: 1, type: !556, isLocal: true, isDefinition: true)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, align: 8, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 58, lowerBound: 0)
!559 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!560 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!561 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !562)
!562 = !{!0, !7, !563, !565, !567}
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !46, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !313, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !313, isLocal: true, isDefinition: true)
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !570)
!570 = !{!571, !574, !622, !630, !645, !655, !661, !670, !696, !703, !709, !724, !726, !728, !730, !732, !734, !736, !738, !740, !742, !747, !749, !754, !756, !759, !761, !763, !765, !767, !769, !771, !773, !775, !777, !779, !781, !783, !785, !787, !789, !791, !793, !795, !797, !799, !801, !803, !805, !811, !813, !815}
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "internal/cpu.CacheLineSize", linkageName: "internal/cpu.CacheLineSize", scope: !573, file: !573, line: 17, type: !43, isLocal: false, isDefinition: true, align: 64)
!573 = !DIFile(filename: "cpu.go", directory: "/usr/local/go/src/internal/cpu")
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !573, file: !573, line: 23, type: !576, isLocal: false, isDefinition: true, align: 8)
!576 = !DICompositeType(tag: DW_TAG_structure_type, size: 1304, align: 8, elements: !577)
!577 = !{!578, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !579, size: 512, align: 8)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.CacheLinePad", baseType: !580)
!580 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 8, elements: !581)
!581 = !{!582}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !583, size: 512, align: 8)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 512, align: 8, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 64, lowerBound: 0)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !371, size: 8, align: 8, offset: 512)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "HasADX", baseType: !371, size: 8, align: 8, offset: 520)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX", baseType: !371, size: 8, align: 8, offset: 528)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVXVNNI", baseType: !371, size: 8, align: 8, offset: 536)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX2", baseType: !371, size: 8, align: 8, offset: 544)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512", baseType: !371, size: 8, align: 8, offset: 552)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512F", baseType: !371, size: 8, align: 8, offset: 560)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512CD", baseType: !371, size: 8, align: 8, offset: 568)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BW", baseType: !371, size: 8, align: 8, offset: 576)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512DQ", baseType: !371, size: 8, align: 8, offset: 584)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VL", baseType: !371, size: 8, align: 8, offset: 592)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512GFNI", baseType: !371, size: 8, align: 8, offset: 600)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VAES", baseType: !371, size: 8, align: 8, offset: 608)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VNNI", baseType: !371, size: 8, align: 8, offset: 616)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI", baseType: !371, size: 8, align: 8, offset: 624)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI2", baseType: !371, size: 8, align: 8, offset: 632)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BITALG", baseType: !371, size: 8, align: 8, offset: 640)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPOPCNTDQ", baseType: !371, size: 8, align: 8, offset: 648)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPCLMULQDQ", baseType: !371, size: 8, align: 8, offset: 656)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI1", baseType: !371, size: 8, align: 8, offset: 664)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI2", baseType: !371, size: 8, align: 8, offset: 672)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "HasERMS", baseType: !371, size: 8, align: 8, offset: 680)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "HasFSRM", baseType: !371, size: 8, align: 8, offset: 688)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "HasFMA", baseType: !371, size: 8, align: 8, offset: 696)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "HasGFNI", baseType: !371, size: 8, align: 8, offset: 704)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "HasOSXSAVE", baseType: !371, size: 8, align: 8, offset: 712)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "HasPCLMULQDQ", baseType: !371, size: 8, align: 8, offset: 720)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "HasPOPCNT", baseType: !371, size: 8, align: 8, offset: 728)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "HasRDTSCP", baseType: !371, size: 8, align: 8, offset: 736)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA", baseType: !371, size: 8, align: 8, offset: 744)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE3", baseType: !371, size: 8, align: 8, offset: 752)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSSE3", baseType: !371, size: 8, align: 8, offset: 760)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE41", baseType: !371, size: 8, align: 8, offset: 768)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE42", baseType: !371, size: 8, align: 8, offset: 776)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "HasVAES", baseType: !371, size: 8, align: 8, offset: 784)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !579, size: 512, align: 8, offset: 792)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(name: "internal/cpu.ARM", linkageName: "internal/cpu.ARM", scope: !573, file: !573, line: 65, type: !624, isLocal: false, isDefinition: true, align: 8)
!624 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !625)
!625 = !{!578, !626, !627, !628, !629}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "HasVFPv4", baseType: !371, size: 8, align: 8, offset: 512)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "HasIDIVA", baseType: !371, size: 8, align: 8, offset: 520)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "HasV7Atomics", baseType: !371, size: 8, align: 8, offset: 528)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !579, size: 512, align: 8, offset: 536)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "internal/cpu.ARM64", linkageName: "internal/cpu.ARM64", scope: !573, file: !573, line: 75, type: !632, isLocal: false, isDefinition: true, align: 8)
!632 = !DICompositeType(tag: DW_TAG_structure_type, size: 1112, align: 8, elements: !633)
!633 = !{!578, !586, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "HasPMULL", baseType: !371, size: 8, align: 8, offset: 520)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !371, size: 8, align: 8, offset: 528)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA2", baseType: !371, size: 8, align: 8, offset: 536)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !371, size: 8, align: 8, offset: 544)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !371, size: 8, align: 8, offset: 552)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !371, size: 8, align: 8, offset: 560)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "HasATOMICS", baseType: !371, size: 8, align: 8, offset: 568)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "HasCPUID", baseType: !371, size: 8, align: 8, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "HasDIT", baseType: !371, size: 8, align: 8, offset: 584)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "IsNeoverse", baseType: !371, size: 8, align: 8, offset: 592)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !579, size: 512, align: 8, offset: 600)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(name: "internal/cpu.Loong64", linkageName: "internal/cpu.Loong64", scope: !573, file: !573, line: 93, type: !647, isLocal: false, isDefinition: true, align: 8)
!647 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !648)
!648 = !{!578, !649, !650, !651, !652, !653, !654}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "HasLSX", baseType: !371, size: 8, align: 8, offset: 512)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "HasLASX", baseType: !371, size: 8, align: 8, offset: 520)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !371, size: 8, align: 8, offset: 528)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAMCAS", baseType: !371, size: 8, align: 8, offset: 536)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAM_BH", baseType: !371, size: 8, align: 8, offset: 544)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !579, size: 512, align: 8, offset: 552)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(name: "internal/cpu.MIPS64X", linkageName: "internal/cpu.MIPS64X", scope: !573, file: !573, line: 103, type: !657, isLocal: false, isDefinition: true, align: 8)
!657 = !DICompositeType(tag: DW_TAG_structure_type, size: 1032, align: 8, elements: !658)
!658 = !{!578, !659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !371, size: 8, align: 8, offset: 512)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !579, size: 512, align: 8, offset: 520)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(name: "internal/cpu.PPC64", linkageName: "internal/cpu.PPC64", scope: !573, file: !573, line: 114, type: !663, isLocal: false, isDefinition: true, align: 8)
!663 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !664)
!664 = !{!578, !665, !666, !667, !668, !669, !654}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "HasDARN", baseType: !371, size: 8, align: 8, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "HasSCV", baseType: !371, size: 8, align: 8, offset: 520)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER8", baseType: !371, size: 8, align: 8, offset: 528)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER9", baseType: !371, size: 8, align: 8, offset: 536)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER10", baseType: !371, size: 8, align: 8, offset: 544)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(name: "internal/cpu.S390X", linkageName: "internal/cpu.S390X", scope: !573, file: !573, line: 124, type: !672, isLocal: false, isDefinition: true, align: 8)
!672 = !DICompositeType(tag: DW_TAG_structure_type, size: 1192, align: 8, elements: !673)
!673 = !{!578, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "HasZARCH", baseType: !371, size: 8, align: 8, offset: 512)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "HasSTFLE", baseType: !371, size: 8, align: 8, offset: 520)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "HasLDISP", baseType: !371, size: 8, align: 8, offset: 528)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "HasEIMM", baseType: !371, size: 8, align: 8, offset: 536)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "HasDFP", baseType: !371, size: 8, align: 8, offset: 544)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "HasETF3EH", baseType: !371, size: 8, align: 8, offset: 552)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !371, size: 8, align: 8, offset: 560)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !371, size: 8, align: 8, offset: 568)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCBC", baseType: !371, size: 8, align: 8, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCTR", baseType: !371, size: 8, align: 8, offset: 584)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESGCM", baseType: !371, size: 8, align: 8, offset: 592)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "HasGHASH", baseType: !371, size: 8, align: 8, offset: 600)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !371, size: 8, align: 8, offset: 608)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA256", baseType: !371, size: 8, align: 8, offset: 616)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !371, size: 8, align: 8, offset: 624)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !371, size: 8, align: 8, offset: 632)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "HasVX", baseType: !371, size: 8, align: 8, offset: 640)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "HasVXE", baseType: !371, size: 8, align: 8, offset: 648)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "HasKDSA", baseType: !371, size: 8, align: 8, offset: 656)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "HasECDSA", baseType: !371, size: 8, align: 8, offset: 664)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "HasEDDSA", baseType: !371, size: 8, align: 8, offset: 672)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !579, size: 512, align: 8, offset: 680)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(name: "internal/cpu.RISCV64", linkageName: "internal/cpu.RISCV64", scope: !573, file: !573, line: 154, type: !698, isLocal: false, isDefinition: true, align: 8)
!698 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !699)
!699 = !{!578, !700, !701, !702, !629}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "HasFastMisaligned", baseType: !371, size: 8, align: 8, offset: 512)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "HasV", baseType: !371, size: 8, align: 8, offset: 520)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "HasZbb", baseType: !371, size: 8, align: 8, offset: 528)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(name: "internal/cpu.doDerived", linkageName: "internal/cpu.doDerived", scope: !573, file: !573, line: 174, type: !705, isLocal: false, isDefinition: true, align: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "context", baseType: !84, size: 64, align: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "fn", baseType: !84, size: 64, align: 64, offset: 64)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "internal/cpu.options", linkageName: "internal/cpu.options", scope: !573, file: !573, line: 192, type: !711, isLocal: false, isDefinition: true, align: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]internal/cpu.option", size: 192, align: 64, elements: !712)
!712 = !{!713, !42, !723}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !714, size: 64, align: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64, align: 64, dwarfAddressSpace: 0)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.option", baseType: !716)
!716 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !717)
!717 = !{!718, !719, !721, !722}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "Name", baseType: !38, size: 128, align: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "Feature", baseType: !720, size: 64, align: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64, dwarfAddressSpace: 0)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "Specified", baseType: !371, size: 8, align: 8, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "Enable", baseType: !371, size: 8, align: 8, offset: 200)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "cap", baseType: !43, size: 64, align: 64, offset: 128)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !573, line: 218, type: !28, isLocal: true, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !573, line: 223, type: !303, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !573, line: 223, type: !127, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !573, line: 230, type: !127, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !573, line: 239, type: !46, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !573, line: 255, type: !308, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !573, line: 255, type: !127, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !573, line: 232, type: !46, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !573, line: 235, type: !313, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !573, line: 235, type: !744, isLocal: true, isDefinition: true)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, align: 8, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 32, lowerBound: 0)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !573, line: 235, type: !127, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !573, line: 264, type: !751, isLocal: true, isDefinition: true)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, align: 8, elements: !752)
!752 = !{!753}
!753 = !DISubrange(count: 25, lowerBound: 0)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !573, line: 264, type: !441, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(name: "internal/cpu.maxExtendedFunctionInformation", linkageName: "internal/cpu.maxExtendedFunctionInformation", scope: !758, file: !758, line: 69, type: !98, isLocal: false, isDefinition: true, align: 32)
!758 = !DIFile(filename: "cpu_x86.go", directory: "/usr/local/go/src/internal/cpu")
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !758, line: 73, type: !46, isLocal: true, isDefinition: true)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !758, line: 74, type: !46, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !758, line: 75, type: !28, isLocal: true, isDefinition: true)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !758, line: 76, type: !28, isLocal: true, isDefinition: true)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(scope: null, file: !758, line: 77, type: !218, isLocal: true, isDefinition: true)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !758, line: 78, type: !203, isLocal: true, isDefinition: true)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !758, line: 79, type: !46, isLocal: true, isDefinition: true)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !758, line: 80, type: !223, isLocal: true, isDefinition: true)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !758, line: 87, type: !203, isLocal: true, isDefinition: true)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !758, line: 88, type: !28, isLocal: true, isDefinition: true)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !758, line: 89, type: !53, isLocal: true, isDefinition: true)
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(scope: null, file: !758, line: 90, type: !53, isLocal: true, isDefinition: true)
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(scope: null, file: !758, line: 91, type: !53, isLocal: true, isDefinition: true)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(scope: null, file: !758, line: 97, type: !46, isLocal: true, isDefinition: true)
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(scope: null, file: !758, line: 98, type: !28, isLocal: true, isDefinition: true)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(scope: null, file: !758, line: 99, type: !28, isLocal: true, isDefinition: true)
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(scope: null, file: !758, line: 100, type: !28, isLocal: true, isDefinition: true)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(scope: null, file: !758, line: 101, type: !46, isLocal: true, isDefinition: true)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(scope: null, file: !758, line: 107, type: !71, isLocal: true, isDefinition: true)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(scope: null, file: !758, line: 108, type: !64, isLocal: true, isDefinition: true)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !758, line: 109, type: !64, isLocal: true, isDefinition: true)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(scope: null, file: !758, line: 110, type: !64, isLocal: true, isDefinition: true)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(scope: null, file: !758, line: 111, type: !64, isLocal: true, isDefinition: true)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !807, line: 1, type: !808, isLocal: true, isDefinition: true)
!807 = !DIFile(filename: "datacache_x86.go", directory: "/usr/local/go/src/internal/cpu")
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, align: 8, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 13, lowerBound: 0)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(name: "type *string", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(name: "type string", scope: !78, file: !78, line: 1, type: !79, isLocal: false, isDefinition: true, align: 64)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !807, line: 1, type: !817, isLocal: true, isDefinition: true)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 664, align: 8, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 83, lowerBound: 0)
!820 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !821)
!821 = !{!822, !826, !828, !836}
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(name: "math/bits.deBruijn32tab", linkageName: "math/bits.deBruijn32tab", scope: !824, file: !824, line: 44, type: !825, isLocal: false, isDefinition: true, align: 8)
!824 = !DIFile(filename: "bits.go", directory: "/usr/local/go/src/math/bits")
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 256, align: 8, elements: !745)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(name: "math/bits.deBruijn64tab", linkageName: "math/bits.deBruijn64tab", scope: !824, file: !824, line: 51, type: !583, isLocal: false, isDefinition: true, align: 8)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(name: "math/bits.overflowError", linkageName: "runtime.overflowError", scope: !830, file: !830, line: 12, type: !831, isLocal: false, isDefinition: true, align: 64)
!830 = !DIFile(filename: "bits_errors.go", directory: "/usr/local/go/src/math/bits")
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", baseType: !832)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._interface", baseType: !833)
!833 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !834)
!834 = !{!105, !835}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "value", baseType: !84, size: 64, align: 64, offset: 64)
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(name: "math/bits.divideError", linkageName: "runtime.divideError", scope: !830, file: !830, line: 15, type: !831, isLocal: false, isDefinition: true, align: 64)
!838 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !839)
!839 = !{!840, !842, !845, !850, !853, !856, !860, !862, !864, !866, !868, !870, !872, !874, !876, !878, !880, !882, !884, !886, !888, !890, !893, !895, !897, !899, !901, !903, !905, !907, !909, !911, !913, !915, !917, !919, !921, !923, !927, !929, !931, !934, !936, !938, !940, !944, !947, !952, !955, !957, !961, !963, !966, !968, !972, !975, !977, !979, !982, !984, !986, !988, !990, !992, !994, !996, !998, !1000, !1002, !1004, !1006, !1008, !1010, !1012, !1014, !1016, !1018, !1020, !1022, !1024, !1026, !1028}
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !573, file: !573, line: 23, type: !576, isLocal: false, isDefinition: true, align: 8)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(name: "math.useFMA", linkageName: "math.useFMA", scope: !844, file: !844, line: 11, type: !371, isLocal: false, isDefinition: true, align: 8)
!844 = !DIFile(filename: "exp_amd64.go", directory: "/usr/local/go/src/math")
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(name: "math._gamP", linkageName: "math._gamP", scope: !847, file: !847, line: 66, type: !848, isLocal: false, isDefinition: true, align: 64)
!847 = !DIFile(filename: "gamma.go", directory: "/usr/local/go/src/math")
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 448, align: 64, elements: !72)
!849 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(name: "math._gamQ", linkageName: "math._gamQ", scope: !847, file: !847, line: 75, type: !852, isLocal: false, isDefinition: true, align: 64)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 512, align: 64, elements: !65)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(name: "math._gamS", linkageName: "math._gamS", scope: !847, file: !847, line: 85, type: !855, isLocal: false, isDefinition: true, align: 64)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 320, align: 64, elements: !54)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(name: "math.p0R8", linkageName: "math.p0R8", scope: !858, file: !858, line: 240, type: !859, isLocal: false, isDefinition: true, align: 64)
!858 = !DIFile(filename: "j0.go", directory: "/usr/local/go/src/math")
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 384, align: 64, elements: !204)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(name: "math.p0S8", linkageName: "math.p0S8", scope: !858, file: !858, line: 248, type: !855, isLocal: false, isDefinition: true, align: 64)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(name: "math.p0R5", linkageName: "math.p0R5", scope: !858, file: !858, line: 257, type: !859, isLocal: false, isDefinition: true, align: 64)
!864 = !DIGlobalVariableExpression(var: !865, expr: !DIExpression())
!865 = distinct !DIGlobalVariable(name: "math.p0S5", linkageName: "math.p0S5", scope: !858, file: !858, line: 265, type: !855, isLocal: false, isDefinition: true, align: 64)
!866 = !DIGlobalVariableExpression(var: !867, expr: !DIExpression())
!867 = distinct !DIGlobalVariable(name: "math.p0R3", linkageName: "math.p0R3", scope: !858, file: !858, line: 274, type: !859, isLocal: false, isDefinition: true, align: 64)
!868 = !DIGlobalVariableExpression(var: !869, expr: !DIExpression())
!869 = distinct !DIGlobalVariable(name: "math.p0S3", linkageName: "math.p0S3", scope: !858, file: !858, line: 282, type: !855, isLocal: false, isDefinition: true, align: 64)
!870 = !DIGlobalVariableExpression(var: !871, expr: !DIExpression())
!871 = distinct !DIGlobalVariable(name: "math.p0R2", linkageName: "math.p0R2", scope: !858, file: !858, line: 291, type: !859, isLocal: false, isDefinition: true, align: 64)
!872 = !DIGlobalVariableExpression(var: !873, expr: !DIExpression())
!873 = distinct !DIGlobalVariable(name: "math.p0S2", linkageName: "math.p0S2", scope: !858, file: !858, line: 299, type: !855, isLocal: false, isDefinition: true, align: 64)
!874 = !DIGlobalVariableExpression(var: !875, expr: !DIExpression())
!875 = distinct !DIGlobalVariable(name: "math.q0R8", linkageName: "math.q0R8", scope: !858, file: !858, line: 339, type: !859, isLocal: false, isDefinition: true, align: 64)
!876 = !DIGlobalVariableExpression(var: !877, expr: !DIExpression())
!877 = distinct !DIGlobalVariable(name: "math.q0S8", linkageName: "math.q0S8", scope: !858, file: !858, line: 347, type: !859, isLocal: false, isDefinition: true, align: 64)
!878 = !DIGlobalVariableExpression(var: !879, expr: !DIExpression())
!879 = distinct !DIGlobalVariable(name: "math.q0R5", linkageName: "math.q0R5", scope: !858, file: !858, line: 357, type: !859, isLocal: false, isDefinition: true, align: 64)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(name: "math.q0S5", linkageName: "math.q0S5", scope: !858, file: !858, line: 365, type: !859, isLocal: false, isDefinition: true, align: 64)
!882 = !DIGlobalVariableExpression(var: !883, expr: !DIExpression())
!883 = distinct !DIGlobalVariable(name: "math.q0R3", linkageName: "math.q0R3", scope: !858, file: !858, line: 375, type: !859, isLocal: false, isDefinition: true, align: 64)
!884 = !DIGlobalVariableExpression(var: !885, expr: !DIExpression())
!885 = distinct !DIGlobalVariable(name: "math.q0S3", linkageName: "math.q0S3", scope: !858, file: !858, line: 383, type: !859, isLocal: false, isDefinition: true, align: 64)
!886 = !DIGlobalVariableExpression(var: !887, expr: !DIExpression())
!887 = distinct !DIGlobalVariable(name: "math.q0R2", linkageName: "math.q0R2", scope: !858, file: !858, line: 393, type: !859, isLocal: false, isDefinition: true, align: 64)
!888 = !DIGlobalVariableExpression(var: !889, expr: !DIExpression())
!889 = distinct !DIGlobalVariable(name: "math.q0S2", linkageName: "math.q0S2", scope: !858, file: !858, line: 401, type: !859, isLocal: false, isDefinition: true, align: 64)
!890 = !DIGlobalVariableExpression(var: !891, expr: !DIExpression())
!891 = distinct !DIGlobalVariable(name: "math.p1R8", linkageName: "math.p1R8", scope: !892, file: !892, line: 235, type: !859, isLocal: false, isDefinition: true, align: 64)
!892 = !DIFile(filename: "j1.go", directory: "/usr/local/go/src/math")
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression())
!894 = distinct !DIGlobalVariable(name: "math.p1S8", linkageName: "math.p1S8", scope: !892, file: !892, line: 243, type: !855, isLocal: false, isDefinition: true, align: 64)
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(name: "math.p1R5", linkageName: "math.p1R5", scope: !892, file: !892, line: 252, type: !859, isLocal: false, isDefinition: true, align: 64)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(name: "math.p1S5", linkageName: "math.p1S5", scope: !892, file: !892, line: 260, type: !855, isLocal: false, isDefinition: true, align: 64)
!899 = !DIGlobalVariableExpression(var: !900, expr: !DIExpression())
!900 = distinct !DIGlobalVariable(name: "math.p1R3", linkageName: "math.p1R3", scope: !892, file: !892, line: 269, type: !859, isLocal: false, isDefinition: true, align: 64)
!901 = !DIGlobalVariableExpression(var: !902, expr: !DIExpression())
!902 = distinct !DIGlobalVariable(name: "math.p1S3", linkageName: "math.p1S3", scope: !892, file: !892, line: 277, type: !855, isLocal: false, isDefinition: true, align: 64)
!903 = !DIGlobalVariableExpression(var: !904, expr: !DIExpression())
!904 = distinct !DIGlobalVariable(name: "math.p1R2", linkageName: "math.p1R2", scope: !892, file: !892, line: 286, type: !859, isLocal: false, isDefinition: true, align: 64)
!905 = !DIGlobalVariableExpression(var: !906, expr: !DIExpression())
!906 = distinct !DIGlobalVariable(name: "math.p1S2", linkageName: "math.p1S2", scope: !892, file: !892, line: 294, type: !855, isLocal: false, isDefinition: true, align: 64)
!907 = !DIGlobalVariableExpression(var: !908, expr: !DIExpression())
!908 = distinct !DIGlobalVariable(name: "math.q1R8", linkageName: "math.q1R8", scope: !892, file: !892, line: 334, type: !859, isLocal: false, isDefinition: true, align: 64)
!909 = !DIGlobalVariableExpression(var: !910, expr: !DIExpression())
!910 = distinct !DIGlobalVariable(name: "math.q1S8", linkageName: "math.q1S8", scope: !892, file: !892, line: 342, type: !859, isLocal: false, isDefinition: true, align: 64)
!911 = !DIGlobalVariableExpression(var: !912, expr: !DIExpression())
!912 = distinct !DIGlobalVariable(name: "math.q1R5", linkageName: "math.q1R5", scope: !892, file: !892, line: 352, type: !859, isLocal: false, isDefinition: true, align: 64)
!913 = !DIGlobalVariableExpression(var: !914, expr: !DIExpression())
!914 = distinct !DIGlobalVariable(name: "math.q1S5", linkageName: "math.q1S5", scope: !892, file: !892, line: 360, type: !859, isLocal: false, isDefinition: true, align: 64)
!915 = !DIGlobalVariableExpression(var: !916, expr: !DIExpression())
!916 = distinct !DIGlobalVariable(name: "math.q1R3", linkageName: "math.q1R3", scope: !892, file: !892, line: 370, type: !859, isLocal: false, isDefinition: true, align: 64)
!917 = !DIGlobalVariableExpression(var: !918, expr: !DIExpression())
!918 = distinct !DIGlobalVariable(name: "math.q1S3", linkageName: "math.q1S3", scope: !892, file: !892, line: 378, type: !859, isLocal: false, isDefinition: true, align: 64)
!919 = !DIGlobalVariableExpression(var: !920, expr: !DIExpression())
!920 = distinct !DIGlobalVariable(name: "math.q1R2", linkageName: "math.q1R2", scope: !892, file: !892, line: 388, type: !859, isLocal: false, isDefinition: true, align: 64)
!921 = !DIGlobalVariableExpression(var: !922, expr: !DIExpression())
!922 = distinct !DIGlobalVariable(name: "math.q1S2", linkageName: "math.q1S2", scope: !892, file: !892, line: 396, type: !859, isLocal: false, isDefinition: true, align: 64)
!923 = !DIGlobalVariableExpression(var: !924, expr: !DIExpression())
!924 = distinct !DIGlobalVariable(name: "math._lgamA", linkageName: "math._lgamA", scope: !925, file: !925, line: 91, type: !926, isLocal: false, isDefinition: true, align: 64)
!925 = !DIFile(filename: "lgamma.go", directory: "/usr/local/go/src/math")
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 768, align: 64, elements: !297)
!927 = !DIGlobalVariableExpression(var: !928, expr: !DIExpression())
!928 = distinct !DIGlobalVariable(name: "math._lgamR", linkageName: "math._lgamR", scope: !925, file: !925, line: 105, type: !848, isLocal: false, isDefinition: true, align: 64)
!929 = !DIGlobalVariableExpression(var: !930, expr: !DIExpression())
!930 = distinct !DIGlobalVariable(name: "math._lgamS", linkageName: "math._lgamS", scope: !925, file: !925, line: 114, type: !848, isLocal: false, isDefinition: true, align: 64)
!931 = !DIGlobalVariableExpression(var: !932, expr: !DIExpression())
!932 = distinct !DIGlobalVariable(name: "math._lgamT", linkageName: "math._lgamT", scope: !925, file: !925, line: 123, type: !933, isLocal: false, isDefinition: true, align: 64)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 960, align: 64, elements: !133)
!934 = !DIGlobalVariableExpression(var: !935, expr: !DIExpression())
!935 = distinct !DIGlobalVariable(name: "math._lgamU", linkageName: "math._lgamU", scope: !925, file: !925, line: 140, type: !859, isLocal: false, isDefinition: true, align: 64)
!936 = !DIGlobalVariableExpression(var: !937, expr: !DIExpression())
!937 = distinct !DIGlobalVariable(name: "math._lgamV", linkageName: "math._lgamV", scope: !925, file: !925, line: 148, type: !859, isLocal: false, isDefinition: true, align: 64)
!938 = !DIGlobalVariableExpression(var: !939, expr: !DIExpression())
!939 = distinct !DIGlobalVariable(name: "math._lgamW", linkageName: "math._lgamW", scope: !925, file: !925, line: 156, type: !848, isLocal: false, isDefinition: true, align: 64)
!940 = !DIGlobalVariableExpression(var: !941, expr: !DIExpression())
!941 = distinct !DIGlobalVariable(name: "math.pow10tab", linkageName: "math.pow10tab", scope: !942, file: !942, line: 8, type: !943, isLocal: false, isDefinition: true, align: 64)
!942 = !DIFile(filename: "pow10.go", directory: "/usr/local/go/src/math")
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 2048, align: 64, elements: !745)
!944 = !DIGlobalVariableExpression(var: !945, expr: !DIExpression())
!945 = distinct !DIGlobalVariable(name: "math.pow10postab32", linkageName: "math.pow10postab32", scope: !942, file: !942, line: 16, type: !946, isLocal: false, isDefinition: true, align: 64)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 640, align: 64, elements: !224)
!947 = !DIGlobalVariableExpression(var: !948, expr: !DIExpression())
!948 = distinct !DIGlobalVariable(name: "math.pow10negtab32", linkageName: "math.pow10negtab32", scope: !942, file: !942, line: 21, type: !949, isLocal: false, isDefinition: true, align: 64)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 704, align: 64, elements: !950)
!950 = !{!951}
!951 = !DISubrange(count: 11, lowerBound: 0)
!952 = !DIGlobalVariableExpression(var: !953, expr: !DIExpression())
!953 = distinct !DIGlobalVariable(name: "math._sin", linkageName: "math._sin", scope: !954, file: !954, line: 93, type: !859, isLocal: false, isDefinition: true, align: 64)
!954 = !DIFile(filename: "sin.go", directory: "/usr/local/go/src/math")
!955 = !DIGlobalVariableExpression(var: !956, expr: !DIExpression())
!956 = distinct !DIGlobalVariable(name: "math._cos", linkageName: "math._cos", scope: !954, file: !954, line: 103, type: !859, isLocal: false, isDefinition: true, align: 64)
!957 = !DIGlobalVariableExpression(var: !958, expr: !DIExpression())
!958 = distinct !DIGlobalVariable(name: "math._tanP", linkageName: "math._tanP", scope: !959, file: !959, line: 63, type: !960, isLocal: false, isDefinition: true, align: 64)
!959 = !DIFile(filename: "tan.go", directory: "/usr/local/go/src/math")
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 192, align: 64, elements: !47)
!961 = !DIGlobalVariableExpression(var: !962, expr: !DIExpression())
!962 = distinct !DIGlobalVariable(name: "math._tanQ", linkageName: "math._tanQ", scope: !959, file: !959, line: 68, type: !855, isLocal: false, isDefinition: true, align: 64)
!963 = !DIGlobalVariableExpression(var: !964, expr: !DIExpression())
!964 = distinct !DIGlobalVariable(name: "math.tanhP", linkageName: "math.tanhP", scope: !965, file: !965, line: 57, type: !960, isLocal: false, isDefinition: true, align: 64)
!965 = !DIFile(filename: "tanh.go", directory: "/usr/local/go/src/math")
!966 = !DIGlobalVariableExpression(var: !967, expr: !DIExpression())
!967 = distinct !DIGlobalVariable(name: "math.tanhQ", linkageName: "math.tanhQ", scope: !965, file: !965, line: 62, type: !960, isLocal: false, isDefinition: true, align: 64)
!968 = !DIGlobalVariableExpression(var: !969, expr: !DIExpression())
!969 = distinct !DIGlobalVariable(name: "math.mPi4", linkageName: "math.mPi4", scope: !970, file: !970, line: 81, type: !971, isLocal: false, isDefinition: true, align: 64)
!970 = !DIFile(filename: "trig_reduce.go", directory: "/usr/local/go/src/math")
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 1280, align: 64, elements: !389)
!972 = !DIGlobalVariableExpression(var: !973, expr: !DIExpression())
!973 = distinct !DIGlobalVariable(scope: null, file: !974, line: 1, type: !132, isLocal: true, isDefinition: true)
!974 = !DIFile(filename: "exp2_noasm.go", directory: "/usr/local/go/src/math")
!975 = !DIGlobalVariableExpression(var: !976, expr: !DIExpression())
!976 = distinct !DIGlobalVariable(name: "type *string", scope: !78, file: !78, line: 1, type: !87, isLocal: false, isDefinition: true, align: 64)
!977 = !DIGlobalVariableExpression(var: !978, expr: !DIExpression())
!978 = distinct !DIGlobalVariable(name: "type string", scope: !78, file: !78, line: 1, type: !79, isLocal: false, isDefinition: true, align: 64)
!979 = !DIGlobalVariableExpression(var: !980, expr: !DIExpression())
!980 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!981 = !DIFile(filename: "stubs.go", directory: "/usr/local/go/src/math")
!982 = !DIGlobalVariableExpression(var: !983, expr: !DIExpression())
!983 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!984 = !DIGlobalVariableExpression(var: !985, expr: !DIExpression())
!985 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!986 = !DIGlobalVariableExpression(var: !987, expr: !DIExpression())
!987 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!988 = !DIGlobalVariableExpression(var: !989, expr: !DIExpression())
!989 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!990 = !DIGlobalVariableExpression(var: !991, expr: !DIExpression())
!991 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!992 = !DIGlobalVariableExpression(var: !993, expr: !DIExpression())
!993 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!994 = !DIGlobalVariableExpression(var: !995, expr: !DIExpression())
!995 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!996 = !DIGlobalVariableExpression(var: !997, expr: !DIExpression())
!997 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!998 = !DIGlobalVariableExpression(var: !999, expr: !DIExpression())
!999 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!1000 = !DIGlobalVariableExpression(var: !1001, expr: !DIExpression())
!1001 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!1002 = !DIGlobalVariableExpression(var: !1003, expr: !DIExpression())
!1003 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!1004 = !DIGlobalVariableExpression(var: !1005, expr: !DIExpression())
!1005 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!1006 = !DIGlobalVariableExpression(var: !1007, expr: !DIExpression())
!1007 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!1008 = !DIGlobalVariableExpression(var: !1009, expr: !DIExpression())
!1009 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!1010 = !DIGlobalVariableExpression(var: !1011, expr: !DIExpression())
!1011 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!1012 = !DIGlobalVariableExpression(var: !1013, expr: !DIExpression())
!1013 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!1014 = !DIGlobalVariableExpression(var: !1015, expr: !DIExpression())
!1015 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!1016 = !DIGlobalVariableExpression(var: !1017, expr: !DIExpression())
!1017 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!1018 = !DIGlobalVariableExpression(var: !1019, expr: !DIExpression())
!1019 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!1020 = !DIGlobalVariableExpression(var: !1021, expr: !DIExpression())
!1021 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!1022 = !DIGlobalVariableExpression(var: !1023, expr: !DIExpression())
!1023 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!1024 = !DIGlobalVariableExpression(var: !1025, expr: !DIExpression())
!1025 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!1026 = !DIGlobalVariableExpression(var: !1027, expr: !DIExpression())
!1027 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
!1028 = !DIGlobalVariableExpression(var: !1029, expr: !DIExpression())
!1029 = distinct !DIGlobalVariable(scope: null, file: !981, line: 1, type: !132, isLocal: true, isDefinition: true)
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
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, align: 8, elements: !950)
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
!1160 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !808, isLocal: true, isDefinition: true)
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
!1225 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !751, isLocal: true, isDefinition: true)
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
!1261 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !744, isLocal: true, isDefinition: true)
!1262 = !DIGlobalVariableExpression(var: !1263, expr: !DIExpression())
!1263 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.TypeError", scope: !78, file: !78, line: 1, type: !1204, isLocal: false, isDefinition: true, align: 64)
!1264 = !DIGlobalVariableExpression(var: !1265, expr: !DIExpression())
!1265 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1059, type: !132, isLocal: true, isDefinition: true)
!1266 = !DIGlobalVariableExpression(var: !1267, expr: !DIExpression())
!1267 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !523, isLocal: true, isDefinition: true)
!1268 = !DIGlobalVariableExpression(var: !1269, expr: !DIExpression())
!1269 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !317, isLocal: true, isDefinition: true)
!1270 = !DIGlobalVariableExpression(var: !1271, expr: !DIExpression())
!1271 = distinct !DIGlobalVariable(scope: null, file: !27, line: 965, type: !71, isLocal: true, isDefinition: true)
!1272 = !DIGlobalVariableExpression(var: !1273, expr: !DIExpression())
!1273 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !508, isLocal: true, isDefinition: true)
!1274 = !DIGlobalVariableExpression(var: !1275, expr: !DIExpression())
!1275 = distinct !DIGlobalVariable(scope: null, file: !27, line: 356, type: !64, isLocal: true, isDefinition: true)
!1276 = !DIGlobalVariableExpression(var: !1277, expr: !DIExpression())
!1277 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !744, isLocal: true, isDefinition: true)
!1278 = !DIGlobalVariableExpression(var: !1279, expr: !DIExpression())
!1279 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !744, isLocal: true, isDefinition: true)
!1280 = !DIGlobalVariableExpression(var: !1281, expr: !DIExpression())
!1281 = distinct !DIGlobalVariable(scope: null, file: !27, line: 1, type: !744, isLocal: true, isDefinition: true)
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
!1292 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !551, isLocal: true, isDefinition: true)
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
!1304 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !541, isLocal: true, isDefinition: true)
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
!1334 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !546, isLocal: true, isDefinition: true)
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
!1394 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1398, type: !751, isLocal: true, isDefinition: true)
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
!1436 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !523, isLocal: true, isDefinition: true)
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
!1452 = distinct !DIGlobalVariable(scope: null, file: !316, line: 273, type: !808, isLocal: true, isDefinition: true)
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
!1483 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1716, type: !744, isLocal: true, isDefinition: true)
!1484 = !DIGlobalVariableExpression(var: !1485, expr: !DIExpression())
!1485 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1716, type: !744, isLocal: true, isDefinition: true)
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
!1496 = distinct !DIGlobalVariable(scope: null, file: !316, line: 1, type: !541, isLocal: true, isDefinition: true)
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
!1526 = distinct !DIGlobalVariable(scope: null, file: !1520, line: 1, type: !541, isLocal: true, isDefinition: true)
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
!1559 = distinct !DIGlobalVariable(name: "runtime.inf", linkageName: "runtime.inf", scope: !1560, file: !1560, line: 9, type: !849, isLocal: false, isDefinition: true, align: 64)
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
!1583 = distinct !DIGlobalVariable(name: "runtime.godebugUpdate", linkageName: "runtime.godebugUpdate", scope: !1584, file: !1584, line: 142, type: !705, isLocal: false, isDefinition: true, align: 64)
!1584 = !DIFile(filename: "runtime.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1585 = !DIGlobalVariableExpression(var: !1586, expr: !DIExpression())
!1586 = distinct !DIGlobalVariable(name: "runtime.buildVersion", linkageName: "runtime.buildVersion", scope: !1587, file: !1587, line: 10, type: !38, isLocal: false, isDefinition: true, align: 64)
!1587 = !DIFile(filename: "extern.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1588 = !DIGlobalVariableExpression(var: !1589, expr: !DIExpression())
!1589 = distinct !DIGlobalVariable(scope: null, file: !421, line: 61, type: !551, isLocal: true, isDefinition: true)
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
!1640 = distinct !DIGlobalVariable(scope: null, file: !1634, line: 1, type: !751, isLocal: true, isDefinition: true)
!1641 = !DIGlobalVariableExpression(var: !1642, expr: !DIExpression())
!1642 = distinct !DIGlobalVariable(scope: null, file: !458, line: 355, type: !28, isLocal: true, isDefinition: true)
!1643 = !DIGlobalVariableExpression(var: !1644, expr: !DIExpression())
!1644 = distinct !DIGlobalVariable(scope: null, file: !458, line: 357, type: !46, isLocal: true, isDefinition: true)
!1645 = !DIGlobalVariableExpression(var: !1646, expr: !DIExpression())
!1646 = distinct !DIGlobalVariable(scope: null, file: !1584, line: 36, type: !808, isLocal: true, isDefinition: true)
!1647 = !DIGlobalVariableExpression(var: !1648, expr: !DIExpression())
!1648 = distinct !DIGlobalVariable(scope: null, file: !1584, line: 97, type: !308, isLocal: true, isDefinition: true)
!1649 = !DIGlobalVariableExpression(var: !1650, expr: !DIExpression())
!1650 = distinct !DIGlobalVariable(name: "runtime.args", linkageName: "runtime.args", scope: !414, file: !414, line: 107, type: !1651, isLocal: false, isDefinition: true, align: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]string", size: 192, align: 64, elements: !1652)
!1652 = !{!1653, !42, !723}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !1654, size: 64, align: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64, dwarfAddressSpace: 0)
!1655 = !DIGlobalVariableExpression(var: !1656, expr: !DIExpression())
!1656 = distinct !DIGlobalVariable(name: "runtime.hasSignals", linkageName: "runtime.hasSignals", scope: !414, file: !414, line: 345, type: !371, isLocal: false, isDefinition: true, align: 8)
!1657 = !DIGlobalVariableExpression(var: !1658, expr: !DIExpression())
!1658 = distinct !DIGlobalVariable(scope: null, file: !414, line: 365, type: !751, isLocal: true, isDefinition: true)
!1659 = !DIGlobalVariableExpression(var: !1660, expr: !DIExpression())
!1660 = distinct !DIGlobalVariable(scope: null, file: !414, line: 382, type: !751, isLocal: true, isDefinition: true)
!1661 = !DIGlobalVariableExpression(var: !1662, expr: !DIExpression())
!1662 = distinct !DIGlobalVariable(scope: null, file: !414, line: 392, type: !751, isLocal: true, isDefinition: true)
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
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !705, size: 128, align: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "arg", baseType: !1703, size: 128, align: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "any", baseType: !832)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "callback", baseType: !705, size: 128, align: 64, offset: 128)
!1705 = !DIGlobalVariableExpression(var: !1706, expr: !DIExpression())
!1706 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 12, type: !46, isLocal: true, isDefinition: true)
!1707 = !DIGlobalVariableExpression(var: !1708, expr: !DIExpression())
!1708 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 19, type: !46, isLocal: true, isDefinition: true)
!1709 = !DIGlobalVariableExpression(var: !1710, expr: !DIExpression())
!1710 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 26, type: !46, isLocal: true, isDefinition: true)
!1711 = !DIGlobalVariableExpression(var: !1712, expr: !DIExpression())
!1712 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 45, type: !808, isLocal: true, isDefinition: true)
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
!1735 = distinct !DISubprogram(name: "sync/atomic.SwapUint32", linkageName: "sync/atomic.SwapUint32", scope: !1736, file: !1736, line: 77, type: !1737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !518, retainedNodes: !1740)
!1736 = !DIFile(filename: "doc.go", directory: "/usr/local/go/src/sync/atomic")
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!1739, !98}
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64, dwarfAddressSpace: 0)
!1740 = !{!1741, !1742}
!1741 = !DILocalVariable(name: "addr", arg: 1, scope: !1735, file: !1736, line: 77, type: !1739)
!1742 = !DILocalVariable(name: "new", arg: 2, scope: !1735, file: !1736, line: 77, type: !98)
!1743 = !DILocation(line: 77, column: 6, scope: !1735)
!1744 = distinct !DISubprogram(name: "sync/atomic.CompareAndSwapUint32", linkageName: "sync/atomic.CompareAndSwapUint32", scope: !1736, file: !1736, line: 99, type: !1745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !518, retainedNodes: !1747)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!1739, !98, !98}
!1747 = !{!1748, !1749, !1750}
!1748 = !DILocalVariable(name: "addr", arg: 1, scope: !1744, file: !1736, line: 99, type: !1739)
!1749 = !DILocalVariable(name: "old", arg: 2, scope: !1744, file: !1736, line: 99, type: !98)
!1750 = !DILocalVariable(name: "new", arg: 3, scope: !1744, file: !1736, line: 99, type: !98)
!1751 = !DILocation(line: 99, column: 6, scope: !1744)
!1752 = distinct !DISubprogram(name: "sync/atomic.AddUint32", linkageName: "sync/atomic.AddUint32", scope: !1736, file: !1736, line: 123, type: !1737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !518, retainedNodes: !1753)
!1753 = !{!1754, !1755}
!1754 = !DILocalVariable(name: "addr", arg: 1, scope: !1752, file: !1736, line: 123, type: !1739)
!1755 = !DILocalVariable(name: "delta", arg: 2, scope: !1752, file: !1736, line: 123, type: !98)
!1756 = !DILocation(line: 123, column: 6, scope: !1752)
!1757 = distinct !DISubprogram(name: "sync/atomic.LoadUint32", linkageName: "sync/atomic.LoadUint32", scope: !1736, file: !1736, line: 183, type: !1758, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !518, retainedNodes: !1760)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!1739}
!1760 = !{!1761}
!1761 = !DILocalVariable(name: "addr", arg: 1, scope: !1757, file: !1736, line: 183, type: !1739)
!1762 = !DILocation(line: 183, column: 6, scope: !1757)
!1763 = distinct !DISubprogram(name: "sync/atomic.StoreUint32", linkageName: "sync/atomic.StoreUint32", scope: !1736, file: !1736, line: 205, type: !1737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !518, retainedNodes: !1764)
!1764 = !{!1765, !1766}
!1765 = !DILocalVariable(name: "addr", arg: 1, scope: !1763, file: !1736, line: 205, type: !1739)
!1766 = !DILocalVariable(name: "val", arg: 2, scope: !1763, file: !1736, line: 205, type: !98)
!1767 = !DILocation(line: 205, column: 6, scope: !1763)
!1768 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Add", linkageName: "(*sync/atomic.Uint32).Add", scope: !1769, file: !1769, line: 161, type: !1770, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !518, retainedNodes: !1773)
!1769 = !DIFile(filename: "type.go", directory: "/usr/local/go/src/sync/atomic")
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!1772, !98}
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64, dwarfAddressSpace: 0)
!1773 = !{!1774, !1775}
!1774 = !DILocalVariable(name: "x", arg: 1, scope: !1768, file: !1769, line: 161, type: !1772)
!1775 = !DILocalVariable(name: "delta", arg: 2, scope: !1768, file: !1769, line: 161, type: !98)
!1776 = !DILocation(line: 161, column: 18, scope: !1768)
!1777 = !DILocation(line: 161, column: 69, scope: !1768)
!1778 = !DILocation(line: 161, column: 71, scope: !1768)
!1779 = !DILocation(line: 161, column: 74, scope: !1768)
!1780 = !DILocation(line: 161, column: 67, scope: !1768)
!1781 = !DILocation(line: 161, column: 51, scope: !1768)
!1782 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).CompareAndSwap", linkageName: "(*sync/atomic.Uint32).CompareAndSwap", scope: !1769, file: !1769, line: 156, type: !1783, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !518, retainedNodes: !1785)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!1772, !98, !98}
!1785 = !{!1786, !1787, !1788}
!1786 = !DILocalVariable(name: "x", arg: 1, scope: !1782, file: !1769, line: 156, type: !1772)
!1787 = !DILocalVariable(name: "old", arg: 2, scope: !1782, file: !1769, line: 156, type: !98)
!1788 = !DILocalVariable(name: "new", arg: 3, scope: !1782, file: !1769, line: 156, type: !98)
!1789 = !DILocation(line: 156, column: 18, scope: !1782)
!1790 = !DILocation(line: 157, column: 31, scope: !1782)
!1791 = !DILocation(line: 157, column: 33, scope: !1782)
!1792 = !DILocation(line: 157, column: 36, scope: !1782)
!1793 = !DILocation(line: 157, column: 41, scope: !1782)
!1794 = !DILocation(line: 157, column: 29, scope: !1782)
!1795 = !DILocation(line: 157, column: 2, scope: !1782)
!1796 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Load", linkageName: "(*sync/atomic.Uint32).Load", scope: !1769, file: !1769, line: 147, type: !1797, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !518, retainedNodes: !1799)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!1772}
!1799 = !{!1800}
!1800 = !DILocalVariable(name: "x", arg: 1, scope: !1796, file: !1769, line: 147, type: !1772)
!1801 = !DILocation(line: 147, column: 18, scope: !1796)
!1802 = !DILocation(line: 147, column: 53, scope: !1796)
!1803 = !DILocation(line: 147, column: 55, scope: !1796)
!1804 = !DILocation(line: 147, column: 51, scope: !1796)
!1805 = !DILocation(line: 147, column: 34, scope: !1796)
!1806 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Store", linkageName: "(*sync/atomic.Uint32).Store", scope: !1769, file: !1769, line: 150, type: !1770, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !518, retainedNodes: !1807)
!1807 = !{!1808, !1809}
!1808 = !DILocalVariable(name: "x", arg: 1, scope: !1806, file: !1769, line: 150, type: !1772)
!1809 = !DILocalVariable(name: "val", arg: 2, scope: !1806, file: !1769, line: 150, type: !98)
!1810 = !DILocation(line: 150, column: 18, scope: !1806)
!1811 = !DILocation(line: 150, column: 51, scope: !1806)
!1812 = !DILocation(line: 150, column: 53, scope: !1806)
!1813 = !DILocation(line: 150, column: 56, scope: !1806)
!1814 = !DILocation(line: 150, column: 49, scope: !1806)
!1815 = !DILocation(line: 150, column: 62, scope: !1806)
!1816 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Swap", linkageName: "(*sync/atomic.Uint32).Swap", scope: !1769, file: !1769, line: 153, type: !1770, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !518, retainedNodes: !1817)
!1817 = !{!1818, !1819}
!1818 = !DILocalVariable(name: "x", arg: 1, scope: !1816, file: !1769, line: 153, type: !1772)
!1819 = !DILocalVariable(name: "new", arg: 2, scope: !1816, file: !1769, line: 153, type: !98)
!1820 = !DILocation(line: 153, column: 18, scope: !1816)
!1821 = !DILocation(line: 153, column: 69, scope: !1816)
!1822 = !DILocation(line: 153, column: 71, scope: !1816)
!1823 = !DILocation(line: 153, column: 74, scope: !1816)
!1824 = !DILocation(line: 153, column: 67, scope: !1816)
!1825 = !DILocation(line: 153, column: 50, scope: !1816)
!1826 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wait", linkageName: "(*internal/futex.Futex).Wait", scope: !1827, file: !1827, line: 25, type: !1828, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !559, retainedNodes: !1831)
!1827 = !DIFile(filename: "futex.go", directory: "/usr/local/lib/tinygo/src/internal/futex")
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!1830, !98}
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64, dwarfAddressSpace: 0)
!1831 = !{!1832, !1833}
!1832 = !DILocalVariable(name: "f", arg: 1, scope: !1826, file: !1827, line: 25, type: !1830)
!1833 = !DILocalVariable(name: "cmp", arg: 2, scope: !1826, file: !1827, line: 25, type: !98)
!1834 = !DILocation(line: 25, column: 17, scope: !1826)
!1835 = !DILocation(line: 26, column: 46, scope: !1826)
!1836 = !DILocation(line: 26, column: 48, scope: !1826)
!1837 = !DILocation(line: 26, column: 58, scope: !1826)
!1838 = !DILocation(line: 26, column: 19, scope: !1826)
!1839 = !DILocation(line: 44, column: 2, scope: !1826)
!1840 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wake", linkageName: "(*internal/futex.Futex).Wake", scope: !1827, file: !1827, line: 53, type: !1841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !559, retainedNodes: !1843)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!1830}
!1843 = !{!1844}
!1844 = !DILocalVariable(name: "f", arg: 1, scope: !1840, file: !1827, line: 53, type: !1830)
!1845 = !DILocation(line: 53, column: 17, scope: !1840)
!1846 = !DILocation(line: 54, column: 46, scope: !1840)
!1847 = !DILocation(line: 54, column: 48, scope: !1840)
!1848 = !DILocation(line: 54, column: 19, scope: !1840)
!1849 = !DILocation(line: 55, column: 2, scope: !1840)
!1850 = distinct !DISubprogram(name: "(*internal/futex.Futex).WakeAll", linkageName: "(*internal/futex.Futex).WakeAll", scope: !1827, file: !1827, line: 58, type: !1841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !559, retainedNodes: !1851)
!1851 = !{!1852}
!1852 = !DILocalVariable(name: "f", arg: 1, scope: !1850, file: !1827, line: 58, type: !1830)
!1853 = !DILocation(line: 58, column: 17, scope: !1850)
!1854 = !DILocation(line: 59, column: 50, scope: !1850)
!1855 = !DILocation(line: 59, column: 52, scope: !1850)
!1856 = !DILocation(line: 59, column: 23, scope: !1850)
!1857 = !DILocation(line: 60, column: 2, scope: !1850)
!1858 = distinct !DISubprogram(name: "(internal/gclayout.Layout).AsPtr", linkageName: "(internal/gclayout.Layout).AsPtr", scope: !1859, file: !1859, line: 26, type: !1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1863)
!1859 = !DIFile(filename: "gclayout.go", directory: "/usr/local/lib/tinygo/src/internal/gclayout")
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!1862}
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/gclayout.Layout", baseType: !43)
!1863 = !{!1864}
!1864 = !DILocalVariable(name: "l", arg: 1, scope: !1858, file: !1859, line: 26, type: !1862)
!1865 = !DILocation(line: 26, column: 17, scope: !1858)
!1866 = !DILocation(line: 26, column: 64, scope: !1858)
!1867 = !DILocation(line: 26, column: 63, scope: !1858)
!1868 = !DILocation(line: 26, column: 42, scope: !1858)
!1869 = distinct !DISubprogram(name: "internal/itoa.Itoa", linkageName: "internal/itoa.Itoa", scope: !2, file: !2, line: 10, type: !1870, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !1873)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!1872}
!1872 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!1873 = !{!1874}
!1874 = !DILocalVariable(name: "val", arg: 1, scope: !1869, file: !2, line: 10, type: !1872)
!1875 = !DILocation(line: 10, column: 6, scope: !1869)
!1876 = !DILocation(line: 11, column: 5, scope: !1869)
!1877 = !DILocation(line: 11, column: 9, scope: !1869)
!1878 = !DILocation(line: 0, scope: !1869)
!1879 = !DILocation(line: 12, column: 28, scope: !1869)
!1880 = !DILocation(line: 12, column: 27, scope: !1869)
!1881 = !DILocation(line: 12, column: 21, scope: !1869)
!1882 = !DILocation(line: 12, column: 14, scope: !1869)
!1883 = !DILocation(line: 12, column: 3, scope: !1869)
!1884 = !DILocation(line: 14, column: 20, scope: !1869)
!1885 = !DILocation(line: 14, column: 14, scope: !1869)
!1886 = !DILocation(line: 14, column: 2, scope: !1869)
!1887 = distinct !DISubprogram(name: "internal/itoa.Uitoa", linkageName: "internal/itoa.Uitoa", scope: !2, file: !2, line: 18, type: !1888, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !1891)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!1890}
!1890 = !DIBasicType(name: "uint", size: 64, encoding: DW_ATE_unsigned)
!1891 = !{!1892, !1893, !1894}
!1892 = !DILocalVariable(name: "val", arg: 1, scope: !1887, file: !2, line: 18, type: !1890)
!1893 = !DILocalVariable(name: "i", scope: !1887, file: !2, line: 23, type: !1872)
!1894 = !DILocalVariable(name: "q", scope: !1887, file: !2, line: 25, type: !1890)
!1895 = !DILocation(line: 18, column: 6, scope: !1887)
!1896 = !DILocation(line: 19, column: 5, scope: !1887)
!1897 = !DILocation(line: 19, column: 9, scope: !1887)
!1898 = !DILocation(line: 0, scope: !1887)
!1899 = !DILocation(line: 20, column: 3, scope: !1887)
!1900 = !DILocation(line: 22, column: 6, scope: !1887)
!1901 = !DILocation(line: 23, column: 2, scope: !1887)
!1902 = !DILocation(line: 18, column: 12, scope: !1887)
!1903 = !DILocation(line: 24, column: 6, scope: !1887)
!1904 = !DILocation(line: 24, column: 10, scope: !1887)
!1905 = !DILocation(line: 25, column: 8, scope: !1887)
!1906 = !DILocation(line: 25, column: 12, scope: !1887)
!1907 = !DILocation(line: 25, column: 3, scope: !1887)
!1908 = !DILocation(line: 26, column: 7, scope: !1887)
!1909 = !DILocation(line: 26, column: 23, scope: !1887)
!1910 = !DILocation(line: 26, column: 21, scope: !1887)
!1911 = !DILocation(line: 26, column: 29, scope: !1887)
!1912 = !DILocation(line: 26, column: 30, scope: !1887)
!1913 = !DILocation(line: 26, column: 27, scope: !1887)
!1914 = !DILocation(line: 26, column: 16, scope: !1887)
!1915 = !DILocation(line: 26, column: 6, scope: !1887)
!1916 = !DILocation(line: 27, column: 3, scope: !1887)
!1917 = !DILocation(line: 28, column: 9, scope: !1887)
!1918 = !DILocation(line: 28, column: 3, scope: !1887)
!1919 = !DILocation(line: 31, column: 6, scope: !1887)
!1920 = !DILocation(line: 31, column: 22, scope: !1887)
!1921 = !DILocation(line: 31, column: 20, scope: !1887)
!1922 = !DILocation(line: 31, column: 15, scope: !1887)
!1923 = !DILocation(line: 31, column: 5, scope: !1887)
!1924 = !DILocation(line: 32, column: 20, scope: !1887)
!1925 = !DILocation(line: 32, column: 19, scope: !1887)
!1926 = !DILocation(line: 32, column: 15, scope: !1887)
!1927 = !DILocation(line: 32, column: 2, scope: !1887)
!1928 = distinct !DISubprogram(name: "math/bits.Len", linkageName: "math/bits.Len", scope: !824, file: !824, line: 302, type: !1888, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !1929)
!1929 = !{!1930}
!1930 = !DILocalVariable(name: "x", arg: 1, scope: !1928, file: !824, line: 302, type: !1890)
!1931 = !DILocation(line: 302, column: 6, scope: !1928)
!1932 = distinct !DISubprogram(name: "unicode/utf8.DecodeRuneInString", linkageName: "unicode/utf8.DecodeRuneInString", scope: !11, file: !11, line: 219, type: !1933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !1935)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!38}
!1935 = !{!1936, !1937, !1939}
!1936 = !DILocalVariable(name: "s", arg: 1, scope: !1932, file: !11, line: 219, type: !38)
!1937 = !DILocalVariable(name: "r", scope: !1932, file: !11, line: 219, type: !1938)
!1938 = !DIBasicType(name: "rune", size: 32, encoding: DW_ATE_signed)
!1939 = !DILocalVariable(name: "size", scope: !1932, file: !11, line: 219, type: !1872)
!1940 = !DILocation(line: 219, column: 6, scope: !1932)
!1941 = !DILocation(line: 223, column: 5, scope: !1932)
!1942 = !DILocation(line: 223, column: 7, scope: !1932)
!1943 = !DILocation(line: 0, scope: !1932)
!1944 = !DILocation(line: 223, column: 16, scope: !1932)
!1945 = !DILocation(line: 223, column: 17, scope: !1932)
!1946 = !DILocation(line: 223, column: 21, scope: !1932)
!1947 = !DILocation(line: 224, column: 15, scope: !1932)
!1948 = !DILocation(line: 224, column: 16, scope: !1932)
!1949 = !DILocation(line: 224, column: 14, scope: !1932)
!1950 = !DILocation(line: 224, column: 3, scope: !1932)
!1951 = !DILocation(line: 226, column: 36, scope: !1932)
!1952 = !DILocation(line: 226, column: 35, scope: !1932)
!1953 = !DILocation(line: 226, column: 3, scope: !1932)
!1954 = !DILocation(line: 226, column: 6, scope: !1932)
!1955 = !DILocation(line: 228, column: 2, scope: !1932)
!1956 = distinct !DISubprogram(name: "unicode/utf8.decodeRuneInStringSlow", linkageName: "unicode/utf8.decodeRuneInStringSlow", scope: !11, file: !11, line: 231, type: !1933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !1957)
!1957 = !{!1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967}
!1958 = !DILocalVariable(name: "s", arg: 1, scope: !1956, file: !11, line: 231, type: !38)
!1959 = !DILocalVariable(name: "n", scope: !1956, file: !11, line: 232, type: !1872)
!1960 = !DILocalVariable(name: "s0", scope: !1956, file: !11, line: 236, type: !533)
!1961 = !DILocalVariable(name: "x", scope: !1956, file: !11, line: 237, type: !4)
!1962 = !DILocalVariable(name: "mask", scope: !1956, file: !11, line: 242, type: !1938)
!1963 = !DILocalVariable(name: "sz", scope: !1956, file: !11, line: 245, type: !1872)
!1964 = !DILocalVariable(name: "accept", scope: !1956, file: !11, line: 246, type: !18)
!1965 = !DILocalVariable(name: "s1", scope: !1956, file: !11, line: 250, type: !533)
!1966 = !DILocalVariable(name: "s2", scope: !1956, file: !11, line: 257, type: !533)
!1967 = !DILocalVariable(name: "s3", scope: !1956, file: !11, line: 264, type: !533)
!1968 = !DILocation(line: 231, column: 6, scope: !1956)
!1969 = !DILocation(line: 232, column: 11, scope: !1956)
!1970 = !DILocation(line: 232, column: 10, scope: !1956)
!1971 = !DILocation(line: 232, column: 2, scope: !1956)
!1972 = !DILocation(line: 233, column: 5, scope: !1956)
!1973 = !DILocation(line: 233, column: 7, scope: !1956)
!1974 = !DILocation(line: 0, scope: !1956)
!1975 = !DILocation(line: 234, column: 3, scope: !1956)
!1976 = !DILocation(line: 236, column: 8, scope: !1956)
!1977 = !DILocation(line: 236, column: 9, scope: !1956)
!1978 = !DILocation(line: 236, column: 2, scope: !1956)
!1979 = !DILocation(line: 237, column: 13, scope: !1956)
!1980 = !DILocation(line: 237, column: 12, scope: !1956)
!1981 = !DILocation(line: 237, column: 2, scope: !1956)
!1982 = !DILocation(line: 238, column: 5, scope: !1956)
!1983 = !DILocation(line: 238, column: 7, scope: !1956)
!1984 = !DILocation(line: 242, column: 16, scope: !1956)
!1985 = !DILocation(line: 242, column: 15, scope: !1956)
!1986 = !DILocation(line: 242, column: 19, scope: !1956)
!1987 = !DILocation(line: 242, column: 25, scope: !1956)
!1988 = !DILocation(line: 242, column: 3, scope: !1956)
!1989 = !DILocation(line: 243, column: 15, scope: !1956)
!1990 = !DILocation(line: 243, column: 16, scope: !1956)
!1991 = !DILocation(line: 243, column: 14, scope: !1956)
!1992 = !DILocation(line: 243, column: 22, scope: !1956)
!1993 = !DILocation(line: 243, column: 20, scope: !1956)
!1994 = !DILocation(line: 243, column: 39, scope: !1956)
!1995 = !DILocation(line: 243, column: 38, scope: !1956)
!1996 = !DILocation(line: 243, column: 27, scope: !1956)
!1997 = !DILocation(line: 243, column: 3, scope: !1956)
!1998 = !DILocation(line: 245, column: 12, scope: !1956)
!1999 = !DILocation(line: 245, column: 14, scope: !1956)
!2000 = !DILocation(line: 245, column: 11, scope: !1956)
!2001 = !DILocation(line: 245, column: 2, scope: !1956)
!2002 = !DILocation(line: 246, column: 25, scope: !1956)
!2003 = !DILocation(line: 246, column: 26, scope: !1956)
!2004 = !DILocation(line: 246, column: 24, scope: !1956)
!2005 = !DILocation(line: 246, column: 2, scope: !1956)
!2006 = !DILocation(line: 247, column: 5, scope: !1956)
!2007 = !DILocation(line: 247, column: 9, scope: !1956)
!2008 = !DILocation(line: 247, column: 7, scope: !1956)
!2009 = !DILocation(line: 248, column: 3, scope: !1956)
!2010 = !DILocation(line: 250, column: 8, scope: !1956)
!2011 = !DILocation(line: 250, column: 9, scope: !1956)
!2012 = !DILocation(line: 250, column: 2, scope: !1956)
!2013 = !DILocation(line: 251, column: 5, scope: !1956)
!2014 = !DILocation(line: 251, column: 17, scope: !1956)
!2015 = !DILocation(line: 251, column: 8, scope: !1956)
!2016 = !DILocation(line: 252, column: 3, scope: !1956)
!2017 = !DILocation(line: 251, column: 30, scope: !1956)
!2018 = !DILocation(line: 251, column: 35, scope: !1956)
!2019 = !DILocation(line: 251, column: 33, scope: !1956)
!2020 = !DILocation(line: 254, column: 5, scope: !1956)
!2021 = !DILocation(line: 254, column: 8, scope: !1956)
!2022 = !DILocation(line: 255, column: 15, scope: !1956)
!2023 = !DILocation(line: 255, column: 17, scope: !1956)
!2024 = !DILocation(line: 255, column: 14, scope: !1956)
!2025 = !DILocation(line: 255, column: 24, scope: !1956)
!2026 = !DILocation(line: 255, column: 35, scope: !1956)
!2027 = !DILocation(line: 255, column: 37, scope: !1956)
!2028 = !DILocation(line: 255, column: 34, scope: !1956)
!2029 = !DILocation(line: 255, column: 28, scope: !1956)
!2030 = !DILocation(line: 255, column: 3, scope: !1956)
!2031 = !DILocation(line: 257, column: 8, scope: !1956)
!2032 = !DILocation(line: 257, column: 9, scope: !1956)
!2033 = !DILocation(line: 257, column: 2, scope: !1956)
!2034 = !DILocation(line: 258, column: 5, scope: !1956)
!2035 = !DILocation(line: 258, column: 8, scope: !1956)
!2036 = !DILocation(line: 259, column: 3, scope: !1956)
!2037 = !DILocation(line: 258, column: 25, scope: !1956)
!2038 = !DILocation(line: 258, column: 23, scope: !1956)
!2039 = !DILocation(line: 261, column: 5, scope: !1956)
!2040 = !DILocation(line: 261, column: 8, scope: !1956)
!2041 = !DILocation(line: 262, column: 15, scope: !1956)
!2042 = !DILocation(line: 262, column: 17, scope: !1956)
!2043 = !DILocation(line: 262, column: 14, scope: !1956)
!2044 = !DILocation(line: 262, column: 24, scope: !1956)
!2045 = !DILocation(line: 262, column: 36, scope: !1956)
!2046 = !DILocation(line: 262, column: 38, scope: !1956)
!2047 = !DILocation(line: 262, column: 35, scope: !1956)
!2048 = !DILocation(line: 262, column: 45, scope: !1956)
!2049 = !DILocation(line: 262, column: 29, scope: !1956)
!2050 = !DILocation(line: 262, column: 56, scope: !1956)
!2051 = !DILocation(line: 262, column: 58, scope: !1956)
!2052 = !DILocation(line: 262, column: 55, scope: !1956)
!2053 = !DILocation(line: 262, column: 49, scope: !1956)
!2054 = !DILocation(line: 262, column: 3, scope: !1956)
!2055 = !DILocation(line: 264, column: 8, scope: !1956)
!2056 = !DILocation(line: 264, column: 9, scope: !1956)
!2057 = !DILocation(line: 264, column: 2, scope: !1956)
!2058 = !DILocation(line: 265, column: 5, scope: !1956)
!2059 = !DILocation(line: 265, column: 8, scope: !1956)
!2060 = !DILocation(line: 266, column: 3, scope: !1956)
!2061 = !DILocation(line: 265, column: 25, scope: !1956)
!2062 = !DILocation(line: 265, column: 23, scope: !1956)
!2063 = !DILocation(line: 268, column: 14, scope: !1956)
!2064 = !DILocation(line: 268, column: 16, scope: !1956)
!2065 = !DILocation(line: 268, column: 13, scope: !1956)
!2066 = !DILocation(line: 268, column: 23, scope: !1956)
!2067 = !DILocation(line: 268, column: 35, scope: !1956)
!2068 = !DILocation(line: 268, column: 37, scope: !1956)
!2069 = !DILocation(line: 268, column: 34, scope: !1956)
!2070 = !DILocation(line: 268, column: 44, scope: !1956)
!2071 = !DILocation(line: 268, column: 28, scope: !1956)
!2072 = !DILocation(line: 268, column: 56, scope: !1956)
!2073 = !DILocation(line: 268, column: 58, scope: !1956)
!2074 = !DILocation(line: 268, column: 55, scope: !1956)
!2075 = !DILocation(line: 268, column: 65, scope: !1956)
!2076 = !DILocation(line: 268, column: 49, scope: !1956)
!2077 = !DILocation(line: 268, column: 76, scope: !1956)
!2078 = !DILocation(line: 268, column: 78, scope: !1956)
!2079 = !DILocation(line: 268, column: 75, scope: !1956)
!2080 = !DILocation(line: 268, column: 69, scope: !1956)
!2081 = !DILocation(line: 268, column: 2, scope: !1956)
!2082 = distinct !DISubprogram(name: "unicode/utf8.EncodeRune", linkageName: "unicode/utf8.EncodeRune", scope: !11, file: !11, line: 368, type: !2083, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2089)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!2085, !1938}
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]byte", size: 192, align: 64, elements: !2086)
!2086 = !{!2087, !42, !723}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !2088, size: 64, align: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64, align: 64, dwarfAddressSpace: 0)
!2089 = !{!2090, !2091}
!2090 = !DILocalVariable(name: "p", arg: 1, scope: !2082, file: !11, line: 368, type: !2085)
!2091 = !DILocalVariable(name: "r", arg: 2, scope: !2082, file: !11, line: 368, type: !1938)
!2092 = !DILocation(line: 368, column: 6, scope: !2082)
!2093 = !DILocation(line: 370, column: 12, scope: !2082)
!2094 = !DILocation(line: 370, column: 15, scope: !2082)
!2095 = !DILocation(line: 0, scope: !2082)
!2096 = !DILocation(line: 371, column: 3, scope: !2082)
!2097 = !DILocation(line: 371, column: 15, scope: !2082)
!2098 = !DILocation(line: 371, column: 14, scope: !2082)
!2099 = !DILocation(line: 371, column: 4, scope: !2082)
!2100 = !DILocation(line: 372, column: 3, scope: !2082)
!2101 = !DILocation(line: 374, column: 28, scope: !2082)
!2102 = !DILocation(line: 374, column: 31, scope: !2082)
!2103 = !DILocation(line: 374, column: 27, scope: !2082)
!2104 = !DILocation(line: 374, column: 2, scope: !2082)
!2105 = distinct !DISubprogram(name: "unicode/utf8.encodeRuneNonASCII", linkageName: "unicode/utf8.encodeRuneNonASCII", scope: !11, file: !11, line: 377, type: !2083, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2106)
!2106 = !{!2107, !2108, !2109}
!2107 = !DILocalVariable(name: "p", arg: 1, scope: !2105, file: !11, line: 377, type: !2085)
!2108 = !DILocalVariable(name: "r", arg: 2, scope: !2105, file: !11, line: 377, type: !1938)
!2109 = !DILocalVariable(name: "i", scope: !2105, file: !11, line: 379, type: !98)
!2110 = !DILocation(line: 377, column: 6, scope: !2105)
!2111 = !DILocation(line: 379, column: 21, scope: !2105)
!2112 = !DILocation(line: 379, column: 9, scope: !2105)
!2113 = !DILocation(line: 380, column: 7, scope: !2105)
!2114 = !DILocation(line: 380, column: 9, scope: !2105)
!2115 = !DILocation(line: 0, scope: !2105)
!2116 = !DILocation(line: 381, column: 7, scope: !2105)
!2117 = !DILocation(line: 381, column: 8, scope: !2105)
!2118 = !DILocation(line: 382, column: 3, scope: !2105)
!2119 = !DILocation(line: 382, column: 20, scope: !2105)
!2120 = !DILocation(line: 382, column: 21, scope: !2105)
!2121 = !DILocation(line: 382, column: 19, scope: !2105)
!2122 = !DILocation(line: 382, column: 13, scope: !2105)
!2123 = !DILocation(line: 382, column: 4, scope: !2105)
!2124 = !DILocation(line: 383, column: 3, scope: !2105)
!2125 = !DILocation(line: 383, column: 20, scope: !2105)
!2126 = !DILocation(line: 383, column: 19, scope: !2105)
!2127 = !DILocation(line: 383, column: 22, scope: !2105)
!2128 = !DILocation(line: 383, column: 13, scope: !2105)
!2129 = !DILocation(line: 383, column: 4, scope: !2105)
!2130 = !DILocation(line: 384, column: 3, scope: !2105)
!2131 = !DILocation(line: 385, column: 7, scope: !2105)
!2132 = !DILocation(line: 385, column: 9, scope: !2105)
!2133 = !DILocation(line: 386, column: 7, scope: !2105)
!2134 = !DILocation(line: 386, column: 8, scope: !2105)
!2135 = !DILocation(line: 387, column: 3, scope: !2105)
!2136 = !DILocation(line: 387, column: 20, scope: !2105)
!2137 = !DILocation(line: 387, column: 21, scope: !2105)
!2138 = !DILocation(line: 387, column: 19, scope: !2105)
!2139 = !DILocation(line: 387, column: 13, scope: !2105)
!2140 = !DILocation(line: 387, column: 4, scope: !2105)
!2141 = !DILocation(line: 388, column: 3, scope: !2105)
!2142 = !DILocation(line: 388, column: 20, scope: !2105)
!2143 = !DILocation(line: 388, column: 21, scope: !2105)
!2144 = !DILocation(line: 388, column: 19, scope: !2105)
!2145 = !DILocation(line: 388, column: 25, scope: !2105)
!2146 = !DILocation(line: 388, column: 13, scope: !2105)
!2147 = !DILocation(line: 388, column: 4, scope: !2105)
!2148 = !DILocation(line: 389, column: 3, scope: !2105)
!2149 = !DILocation(line: 389, column: 20, scope: !2105)
!2150 = !DILocation(line: 389, column: 19, scope: !2105)
!2151 = !DILocation(line: 389, column: 22, scope: !2105)
!2152 = !DILocation(line: 389, column: 13, scope: !2105)
!2153 = !DILocation(line: 389, column: 4, scope: !2105)
!2154 = !DILocation(line: 390, column: 3, scope: !2105)
!2155 = !DILocation(line: 385, column: 40, scope: !2105)
!2156 = !DILocation(line: 385, column: 38, scope: !2105)
!2157 = !DILocation(line: 385, column: 45, scope: !2105)
!2158 = !DILocation(line: 385, column: 47, scope: !2105)
!2159 = !DILocation(line: 385, column: 42, scope: !2105)
!2160 = !DILocation(line: 391, column: 7, scope: !2105)
!2161 = !DILocation(line: 391, column: 9, scope: !2105)
!2162 = !DILocation(line: 391, column: 23, scope: !2105)
!2163 = !DILocation(line: 391, column: 25, scope: !2105)
!2164 = !DILocation(line: 391, column: 20, scope: !2105)
!2165 = !DILocation(line: 392, column: 7, scope: !2105)
!2166 = !DILocation(line: 392, column: 8, scope: !2105)
!2167 = !DILocation(line: 393, column: 3, scope: !2105)
!2168 = !DILocation(line: 393, column: 20, scope: !2105)
!2169 = !DILocation(line: 393, column: 21, scope: !2105)
!2170 = !DILocation(line: 393, column: 19, scope: !2105)
!2171 = !DILocation(line: 393, column: 13, scope: !2105)
!2172 = !DILocation(line: 393, column: 4, scope: !2105)
!2173 = !DILocation(line: 394, column: 3, scope: !2105)
!2174 = !DILocation(line: 394, column: 20, scope: !2105)
!2175 = !DILocation(line: 394, column: 21, scope: !2105)
!2176 = !DILocation(line: 394, column: 19, scope: !2105)
!2177 = !DILocation(line: 394, column: 26, scope: !2105)
!2178 = !DILocation(line: 394, column: 13, scope: !2105)
!2179 = !DILocation(line: 394, column: 4, scope: !2105)
!2180 = !DILocation(line: 395, column: 3, scope: !2105)
!2181 = !DILocation(line: 395, column: 20, scope: !2105)
!2182 = !DILocation(line: 395, column: 21, scope: !2105)
!2183 = !DILocation(line: 395, column: 19, scope: !2105)
!2184 = !DILocation(line: 395, column: 25, scope: !2105)
!2185 = !DILocation(line: 395, column: 13, scope: !2105)
!2186 = !DILocation(line: 395, column: 4, scope: !2105)
!2187 = !DILocation(line: 396, column: 3, scope: !2105)
!2188 = !DILocation(line: 396, column: 20, scope: !2105)
!2189 = !DILocation(line: 396, column: 19, scope: !2105)
!2190 = !DILocation(line: 396, column: 22, scope: !2105)
!2191 = !DILocation(line: 396, column: 13, scope: !2105)
!2192 = !DILocation(line: 396, column: 4, scope: !2105)
!2193 = !DILocation(line: 397, column: 3, scope: !2105)
!2194 = !DILocation(line: 399, column: 7, scope: !2105)
!2195 = !DILocation(line: 399, column: 8, scope: !2105)
!2196 = !DILocation(line: 400, column: 3, scope: !2105)
!2197 = !DILocation(line: 400, column: 4, scope: !2105)
!2198 = !DILocation(line: 401, column: 3, scope: !2105)
!2199 = !DILocation(line: 401, column: 4, scope: !2105)
!2200 = !DILocation(line: 402, column: 3, scope: !2105)
!2201 = !DILocation(line: 402, column: 4, scope: !2105)
!2202 = !DILocation(line: 403, column: 3, scope: !2105)
!2203 = distinct !DISubprogram(name: "unicode/utf8.ValidRune", linkageName: "unicode/utf8.ValidRune", scope: !11, file: !11, line: 577, type: !2204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!1938}
!2206 = !{!2207}
!2207 = !DILocalVariable(name: "r", arg: 1, scope: !2203, file: !11, line: 577, type: !1938)
!2208 = !DILocation(line: 577, column: 6, scope: !2203)
!2209 = !DILocation(line: 579, column: 12, scope: !2203)
!2210 = !DILocation(line: 579, column: 9, scope: !2203)
!2211 = !DILocation(line: 0, scope: !2203)
!2212 = !DILocation(line: 579, column: 17, scope: !2203)
!2213 = !DILocation(line: 579, column: 19, scope: !2203)
!2214 = !DILocation(line: 579, column: 14, scope: !2203)
!2215 = !DILocation(line: 580, column: 3, scope: !2203)
!2216 = !DILocation(line: 581, column: 22, scope: !2203)
!2217 = !DILocation(line: 581, column: 20, scope: !2203)
!2218 = !DILocation(line: 581, column: 27, scope: !2203)
!2219 = !DILocation(line: 581, column: 29, scope: !2203)
!2220 = !DILocation(line: 581, column: 24, scope: !2203)
!2221 = !DILocation(line: 582, column: 3, scope: !2203)
!2222 = !DILocation(line: 584, column: 2, scope: !2203)
!2223 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).Kind", linkageName: "(*internal/reflectlite.RawType).Kind", scope: !27, file: !27, line: 380, type: !2224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2226)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!1049}
!2226 = !{!2227, !2228}
!2227 = !DILocalVariable(name: "t", arg: 1, scope: !2223, file: !27, line: 380, type: !1049)
!2228 = !DILocalVariable(name: "tag", scope: !2223, file: !27, line: 385, type: !43)
!2229 = !DILocation(line: 380, column: 19, scope: !2223)
!2230 = !DILocation(line: 381, column: 5, scope: !2223)
!2231 = !DILocation(line: 381, column: 7, scope: !2223)
!2232 = !DILocation(line: 0, scope: !2223)
!2233 = !DILocation(line: 382, column: 3, scope: !2223)
!2234 = !DILocation(line: 385, column: 12, scope: !2223)
!2235 = !DILocation(line: 385, column: 20, scope: !2223)
!2236 = !DILocation(line: 385, column: 5, scope: !2223)
!2237 = !DILocation(line: 385, column: 24, scope: !2223)
!2238 = !DILocation(line: 385, column: 28, scope: !2223)
!2239 = !DILocation(line: 386, column: 3, scope: !2223)
!2240 = !DILocation(line: 389, column: 14, scope: !2223)
!2241 = !DILocation(line: 389, column: 16, scope: !2223)
!2242 = !DILocation(line: 389, column: 21, scope: !2223)
!2243 = !DILocation(line: 389, column: 2, scope: !2223)
!2244 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).elem", linkageName: "(*internal/reflectlite.RawType).elem", scope: !27, file: !27, line: 410, type: !2224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2245)
!2245 = !{!2246, !2247, !2248, !2249}
!2246 = !DILocalVariable(name: "t", arg: 1, scope: !2244, file: !27, line: 410, type: !1049)
!2247 = !DILocalVariable(name: "tag", scope: !2244, file: !27, line: 411, type: !43)
!2248 = !DILocalVariable(name: "underlying", scope: !2244, file: !27, line: 415, type: !1049)
!2249 = !DILocalVariable(name: "errTypeElem", scope: !2244, file: !27, line: 393, type: !33)
!2250 = !DILocation(line: 410, column: 19, scope: !2244)
!2251 = !DILocation(line: 411, column: 12, scope: !2244)
!2252 = !DILocation(line: 411, column: 20, scope: !2244)
!2253 = !DILocation(line: 411, column: 5, scope: !2244)
!2254 = !DILocation(line: 411, column: 24, scope: !2244)
!2255 = !DILocation(line: 411, column: 28, scope: !2244)
!2256 = !DILocation(line: 0, scope: !2244)
!2257 = !DILocation(line: 412, column: 47, scope: !2244)
!2258 = !DILocation(line: 412, column: 31, scope: !2244)
!2259 = !DILocation(line: 412, column: 3, scope: !2244)
!2260 = !DILocation(line: 415, column: 16, scope: !2244)
!2261 = !DILocation(line: 415, column: 28, scope: !2244)
!2262 = !DILocation(line: 415, column: 2, scope: !2244)
!2263 = !DILocation(line: 416, column: 9, scope: !2244)
!2264 = !DILocation(line: 416, column: 24, scope: !2244)
!2265 = !DILocation(line: 417, column: 7, scope: !2244)
!2266 = !DILocation(line: 418, column: 36, scope: !2244)
!2267 = !DILocation(line: 418, column: 49, scope: !2244)
!2268 = !DILocation(line: 418, column: 3, scope: !2244)
!2269 = !DILocation(line: 419, column: 7, scope: !2244)
!2270 = !DILocation(line: 420, column: 37, scope: !2244)
!2271 = !DILocation(line: 420, column: 50, scope: !2244)
!2272 = !DILocation(line: 420, column: 3, scope: !2244)
!2273 = !DILocation(line: 419, column: 13, scope: !2244)
!2274 = !DILocation(line: 419, column: 20, scope: !2244)
!2275 = !DILocation(line: 419, column: 27, scope: !2244)
!2276 = !DILocation(line: 422, column: 9, scope: !2244)
!2277 = !DILocation(line: 422, column: 8, scope: !2244)
!2278 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).Len", linkageName: "(*internal/reflectlite.RawType).Len", scope: !27, file: !27, line: 620, type: !2224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2279)
!2279 = !{!2280, !2281}
!2280 = !DILocalVariable(name: "t", arg: 1, scope: !2278, file: !27, line: 620, type: !1049)
!2281 = !DILocalVariable(name: "errTypeLen", scope: !2278, file: !27, line: 397, type: !33)
!2282 = !DILocation(line: 620, column: 19, scope: !2278)
!2283 = !DILocation(line: 621, column: 5, scope: !2278)
!2284 = !DILocation(line: 621, column: 11, scope: !2278)
!2285 = !DILocation(line: 621, column: 14, scope: !2278)
!2286 = !DILocation(line: 0, scope: !2278)
!2287 = !DILocation(line: 622, column: 9, scope: !2278)
!2288 = !DILocation(line: 622, column: 8, scope: !2278)
!2289 = !DILocation(line: 625, column: 41, scope: !2278)
!2290 = !DILocation(line: 625, column: 53, scope: !2278)
!2291 = !DILocation(line: 625, column: 58, scope: !2278)
!2292 = !DILocation(line: 625, column: 2, scope: !2278)
!2293 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).underlying", linkageName: "(*internal/reflectlite.RawType).underlying", scope: !27, file: !27, line: 263, type: !2224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2294)
!2294 = !{!2295}
!2295 = !DILocalVariable(name: "t", arg: 1, scope: !2293, file: !27, line: 263, type: !1049)
!2296 = !DILocation(line: 263, column: 19, scope: !2293)
!2297 = !DILocation(line: 264, column: 5, scope: !2293)
!2298 = !DILocation(line: 264, column: 14, scope: !2293)
!2299 = !DILocation(line: 0, scope: !2293)
!2300 = !DILocation(line: 265, column: 37, scope: !2293)
!2301 = !DILocation(line: 265, column: 41, scope: !2293)
!2302 = !DILocation(line: 265, column: 3, scope: !2293)
!2303 = !DILocation(line: 267, column: 9, scope: !2293)
!2304 = !DILocation(line: 267, column: 2, scope: !2293)
!2305 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).isNamed", linkageName: "(*internal/reflectlite.RawType).isNamed", scope: !27, file: !27, line: 274, type: !2224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2306)
!2306 = !{!2307, !2308}
!2307 = !DILocalVariable(name: "t", arg: 1, scope: !2305, file: !27, line: 274, type: !1049)
!2308 = !DILocalVariable(name: "tag", scope: !2305, file: !27, line: 275, type: !43)
!2309 = !DILocation(line: 274, column: 19, scope: !2305)
!2310 = !DILocation(line: 275, column: 12, scope: !2305)
!2311 = !DILocation(line: 275, column: 20, scope: !2305)
!2312 = !DILocation(line: 275, column: 5, scope: !2305)
!2313 = !DILocation(line: 275, column: 24, scope: !2305)
!2314 = !DILocation(line: 275, column: 28, scope: !2305)
!2315 = !DILocation(line: 0, scope: !2305)
!2316 = !DILocation(line: 276, column: 3, scope: !2305)
!2317 = !DILocation(line: 278, column: 9, scope: !2305)
!2318 = !DILocation(line: 278, column: 11, scope: !2305)
!2319 = !DILocation(line: 278, column: 15, scope: !2305)
!2320 = !DILocation(line: 278, column: 26, scope: !2305)
!2321 = !DILocation(line: 278, column: 2, scope: !2305)
!2322 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).ptrtag", linkageName: "(*internal/reflectlite.RawType).ptrtag", scope: !27, file: !27, line: 270, type: !2224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2323)
!2323 = !{!2324}
!2324 = !DILocalVariable(name: "t", arg: 1, scope: !2322, file: !27, line: 270, type: !1049)
!2325 = !DILocation(line: 270, column: 19, scope: !2322)
!2326 = !DILocation(line: 271, column: 32, scope: !2322)
!2327 = !DILocation(line: 271, column: 16, scope: !2322)
!2328 = !DILocation(line: 271, column: 36, scope: !2322)
!2329 = !DILocation(line: 271, column: 2, scope: !2322)
!2330 = distinct !DISubprogram(name: "(*internal/reflectlite.TypeError).Error", linkageName: "(*internal/reflectlite.TypeError).Error", scope: !27, file: !27, line: 1211, type: !2331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2333)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!33}
!2333 = !{!2334}
!2334 = !DILocalVariable(name: "e", arg: 1, scope: !2330, file: !27, line: 1211, type: !33)
!2335 = !DILocation(line: 1211, column: 21, scope: !2330)
!2336 = !DILocation(line: 1212, column: 44, scope: !2330)
!2337 = !DILocation(line: 1212, column: 46, scope: !2330)
!2338 = !DILocation(line: 1212, column: 42, scope: !2330)
!2339 = !DILocation(line: 1212, column: 53, scope: !2330)
!2340 = !DILocation(line: 1212, column: 2, scope: !2330)
!2341 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).ChanDir", linkageName: "(*internal/reflectlite.RawType).ChanDir", scope: !27, file: !27, line: 893, type: !2224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2342)
!2342 = !{!2343, !2344, !2345}
!2343 = !DILocalVariable(name: "t", arg: 1, scope: !2341, file: !27, line: 893, type: !1049)
!2344 = !DILocalVariable(name: "errTypeChanDir", scope: !2341, file: !27, line: 399, type: !33)
!2345 = !DILocalVariable(name: "dir", scope: !2341, file: !27, line: 898, type: !1872)
!2346 = !DILocation(line: 893, column: 19, scope: !2341)
!2347 = !DILocation(line: 894, column: 5, scope: !2341)
!2348 = !DILocation(line: 894, column: 11, scope: !2341)
!2349 = !DILocation(line: 894, column: 14, scope: !2341)
!2350 = !DILocation(line: 0, scope: !2341)
!2351 = !DILocation(line: 895, column: 9, scope: !2341)
!2352 = !DILocation(line: 895, column: 8, scope: !2341)
!2353 = !DILocation(line: 898, column: 40, scope: !2341)
!2354 = !DILocation(line: 898, column: 44, scope: !2341)
!2355 = !DILocation(line: 898, column: 12, scope: !2341)
!2356 = !DILocation(line: 898, column: 2, scope: !2341)
!2357 = !DILocation(line: 901, column: 17, scope: !2341)
!2358 = !DILocation(line: 901, column: 2, scope: !2341)
!2359 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).NumField", linkageName: "(*internal/reflectlite.RawType).NumField", scope: !27, file: !27, line: 630, type: !2224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2360)
!2360 = !{!2361, !2362}
!2361 = !DILocalVariable(name: "t", arg: 1, scope: !2359, file: !27, line: 630, type: !1049)
!2362 = !DILocalVariable(name: "errTypeNumField", scope: !2359, file: !27, line: 398, type: !33)
!2363 = !DILocation(line: 630, column: 19, scope: !2359)
!2364 = !DILocation(line: 631, column: 5, scope: !2359)
!2365 = !DILocation(line: 631, column: 11, scope: !2359)
!2366 = !DILocation(line: 631, column: 14, scope: !2359)
!2367 = !DILocation(line: 0, scope: !2359)
!2368 = !DILocation(line: 632, column: 9, scope: !2359)
!2369 = !DILocation(line: 632, column: 8, scope: !2359)
!2370 = !DILocation(line: 634, column: 42, scope: !2359)
!2371 = !DILocation(line: 634, column: 54, scope: !2359)
!2372 = !DILocation(line: 634, column: 59, scope: !2359)
!2373 = !DILocation(line: 634, column: 12, scope: !2359)
!2374 = !DILocation(line: 634, column: 2, scope: !2359)
!2375 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).String", linkageName: "(*internal/reflectlite.RawType).String", scope: !27, file: !27, line: 316, type: !2224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2376)
!2376 = !{!2377, !2378, !2379, !2380, !2381, !2382, !2383}
!2377 = !DILocalVariable(name: "t", arg: 1, scope: !2375, file: !27, line: 316, type: !1049)
!2378 = !DILocalVariable(name: "s", scope: !2375, file: !27, line: 318, type: !38)
!2379 = !DILocalVariable(name: "elem", scope: !2375, file: !27, line: 326, type: !38)
!2380 = !DILocalVariable(name: "numField", scope: !2375, file: !27, line: 352, type: !1872)
!2381 = !DILocalVariable(name: "s", scope: !2375, file: !27, line: 356, type: !38)
!2382 = !DILocalVariable(name: "i", scope: !2375, file: !27, line: 357, type: !1872)
!2383 = !DILocalVariable(name: "f", scope: !2375, file: !27, line: 358, type: !2384)
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.rawStructField", baseType: !2385)
!2385 = !DICompositeType(tag: DW_TAG_structure_type, size: 576, align: 64, elements: !2386)
!2386 = !{!718, !2387, !2388, !2389, !2391, !2392}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "PkgPath", baseType: !38, size: 128, align: 64, offset: 128)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "Type", baseType: !1049, size: 64, align: 64, offset: 256)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "Tag", baseType: !2390, size: 128, align: 64, offset: 320)
!2390 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.StructTag", baseType: !38)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "Offset", baseType: !43, size: 64, align: 64, offset: 448)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "Anonymous", baseType: !371, size: 8, align: 8, offset: 512)
!2393 = !DILocation(line: 316, column: 19, scope: !2375)
!2394 = !DILocation(line: 317, column: 5, scope: !2375)
!2395 = !DILocation(line: 317, column: 14, scope: !2375)
!2396 = !DILocation(line: 0, scope: !2375)
!2397 = !DILocation(line: 318, column: 8, scope: !2375)
!2398 = !DILocation(line: 318, column: 14, scope: !2375)
!2399 = !DILocation(line: 318, column: 3, scope: !2375)
!2400 = !DILocation(line: 319, column: 6, scope: !2375)
!2401 = !DILocation(line: 319, column: 7, scope: !2375)
!2402 = !DILocation(line: 319, column: 11, scope: !2375)
!2403 = !DILocation(line: 320, column: 11, scope: !2375)
!2404 = !DILocation(line: 320, column: 12, scope: !2375)
!2405 = !DILocation(line: 320, column: 4, scope: !2375)
!2406 = !DILocation(line: 322, column: 10, scope: !2375)
!2407 = !DILocation(line: 322, column: 3, scope: !2375)
!2408 = !DILocation(line: 324, column: 9, scope: !2375)
!2409 = !DILocation(line: 324, column: 15, scope: !2375)
!2410 = !DILocation(line: 325, column: 7, scope: !2375)
!2411 = !DILocation(line: 326, column: 11, scope: !2375)
!2412 = !DILocation(line: 326, column: 17, scope: !2375)
!2413 = !DILocation(line: 326, column: 26, scope: !2375)
!2414 = !DILocation(line: 326, column: 3, scope: !2375)
!2415 = !DILocation(line: 327, column: 10, scope: !2375)
!2416 = !DILocation(line: 327, column: 19, scope: !2375)
!2417 = !DILocation(line: 328, column: 8, scope: !2375)
!2418 = !DILocation(line: 329, column: 23, scope: !2375)
!2419 = !DILocation(line: 329, column: 21, scope: !2375)
!2420 = !DILocation(line: 329, column: 4, scope: !2375)
!2421 = !DILocation(line: 330, column: 8, scope: !2375)
!2422 = !DILocation(line: 331, column: 23, scope: !2375)
!2423 = !DILocation(line: 331, column: 21, scope: !2375)
!2424 = !DILocation(line: 331, column: 4, scope: !2375)
!2425 = !DILocation(line: 332, column: 8, scope: !2375)
!2426 = !DILocation(line: 333, column: 7, scope: !2375)
!2427 = !DILocation(line: 333, column: 11, scope: !2375)
!2428 = !DILocation(line: 333, column: 15, scope: !2375)
!2429 = !DILocation(line: 338, column: 23, scope: !2375)
!2430 = !DILocation(line: 338, column: 21, scope: !2375)
!2431 = !DILocation(line: 338, column: 28, scope: !2375)
!2432 = !DILocation(line: 338, column: 5, scope: !2375)
!2433 = !DILocation(line: 340, column: 21, scope: !2375)
!2434 = !DILocation(line: 340, column: 19, scope: !2375)
!2435 = !DILocation(line: 340, column: 4, scope: !2375)
!2436 = !DILocation(line: 377, column: 9, scope: !2375)
!2437 = !DILocation(line: 377, column: 15, scope: !2375)
!2438 = !DILocation(line: 377, column: 24, scope: !2375)
!2439 = !DILocation(line: 377, column: 2, scope: !2375)
!2440 = !DILocation(line: 343, column: 7, scope: !2375)
!2441 = !DILocation(line: 344, column: 16, scope: !2375)
!2442 = !DILocation(line: 344, column: 22, scope: !2375)
!2443 = !DILocation(line: 344, column: 31, scope: !2375)
!2444 = !DILocation(line: 344, column: 14, scope: !2375)
!2445 = !DILocation(line: 344, column: 3, scope: !2375)
!2446 = !DILocation(line: 345, column: 7, scope: !2375)
!2447 = !DILocation(line: 346, column: 17, scope: !2375)
!2448 = !DILocation(line: 346, column: 23, scope: !2375)
!2449 = !DILocation(line: 346, column: 32, scope: !2375)
!2450 = !DILocation(line: 346, column: 15, scope: !2375)
!2451 = !DILocation(line: 346, column: 3, scope: !2375)
!2452 = !DILocation(line: 347, column: 7, scope: !2375)
!2453 = !DILocation(line: 348, column: 26, scope: !2375)
!2454 = !DILocation(line: 348, column: 31, scope: !2375)
!2455 = !DILocation(line: 348, column: 25, scope: !2375)
!2456 = !DILocation(line: 348, column: 14, scope: !2375)
!2457 = !DILocation(line: 348, column: 35, scope: !2375)
!2458 = !DILocation(line: 348, column: 43, scope: !2375)
!2459 = !DILocation(line: 348, column: 49, scope: !2375)
!2460 = !DILocation(line: 348, column: 58, scope: !2375)
!2461 = !DILocation(line: 348, column: 41, scope: !2375)
!2462 = !DILocation(line: 348, column: 3, scope: !2375)
!2463 = !DILocation(line: 349, column: 7, scope: !2375)
!2464 = !DILocation(line: 350, column: 19, scope: !2375)
!2465 = !DILocation(line: 350, column: 24, scope: !2375)
!2466 = !DILocation(line: 350, column: 33, scope: !2375)
!2467 = !DILocation(line: 350, column: 17, scope: !2375)
!2468 = !DILocation(line: 350, column: 36, scope: !2375)
!2469 = !DILocation(line: 350, column: 44, scope: !2375)
!2470 = !DILocation(line: 350, column: 50, scope: !2375)
!2471 = !DILocation(line: 350, column: 59, scope: !2375)
!2472 = !DILocation(line: 350, column: 42, scope: !2375)
!2473 = !DILocation(line: 350, column: 3, scope: !2375)
!2474 = !DILocation(line: 351, column: 7, scope: !2375)
!2475 = !DILocation(line: 352, column: 15, scope: !2375)
!2476 = !DILocation(line: 352, column: 25, scope: !2375)
!2477 = !DILocation(line: 352, column: 3, scope: !2375)
!2478 = !DILocation(line: 353, column: 6, scope: !2375)
!2479 = !DILocation(line: 353, column: 15, scope: !2375)
!2480 = !DILocation(line: 354, column: 4, scope: !2375)
!2481 = !DILocation(line: 356, column: 3, scope: !2375)
!2482 = !DILocation(line: 357, column: 7, scope: !2375)
!2483 = !DILocation(line: 357, column: 15, scope: !2375)
!2484 = !DILocation(line: 357, column: 19, scope: !2375)
!2485 = !DILocation(line: 357, column: 17, scope: !2375)
!2486 = !DILocation(line: 358, column: 9, scope: !2375)
!2487 = !DILocation(line: 358, column: 20, scope: !2375)
!2488 = !DILocation(line: 358, column: 19, scope: !2375)
!2489 = !DILocation(line: 358, column: 4, scope: !2375)
!2490 = !DILocation(line: 359, column: 17, scope: !2375)
!2491 = !DILocation(line: 359, column: 13, scope: !2375)
!2492 = !DILocation(line: 359, column: 22, scope: !2375)
!2493 = !DILocation(line: 359, column: 32, scope: !2375)
!2494 = !DILocation(line: 359, column: 43, scope: !2375)
!2495 = !DILocation(line: 359, column: 28, scope: !2375)
!2496 = !DILocation(line: 359, column: 4, scope: !2375)
!2497 = !DILocation(line: 360, column: 9, scope: !2375)
!2498 = !DILocation(line: 360, column: 13, scope: !2375)
!2499 = !DILocation(line: 361, column: 31, scope: !2375)
!2500 = !DILocation(line: 361, column: 21, scope: !2375)
!2501 = !DILocation(line: 361, column: 14, scope: !2375)
!2502 = !DILocation(line: 361, column: 5, scope: !2375)
!2503 = !DILocation(line: 364, column: 7, scope: !2375)
!2504 = !DILocation(line: 364, column: 11, scope: !2375)
!2505 = !DILocation(line: 364, column: 19, scope: !2375)
!2506 = !DILocation(line: 364, column: 9, scope: !2375)
!2507 = !DILocation(line: 365, column: 5, scope: !2375)
!2508 = !DILocation(line: 357, column: 29, scope: !2375)
!2509 = !DILocation(line: 368, column: 3, scope: !2375)
!2510 = !DILocation(line: 369, column: 10, scope: !2375)
!2511 = !DILocation(line: 369, column: 3, scope: !2375)
!2512 = !DILocation(line: 370, column: 7, scope: !2375)
!2513 = !DILocation(line: 372, column: 3, scope: !2375)
!2514 = !DILocation(line: 374, column: 10, scope: !2375)
!2515 = !DILocation(line: 374, column: 16, scope: !2375)
!2516 = !DILocation(line: 374, column: 25, scope: !2375)
!2517 = !DILocation(line: 374, column: 3, scope: !2375)
!2518 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).key", linkageName: "(*internal/reflectlite.RawType).key", scope: !27, file: !27, line: 426, type: !2224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2519)
!2519 = !{!2520, !2521, !2522}
!2520 = !DILocalVariable(name: "t", arg: 1, scope: !2518, file: !27, line: 426, type: !1049)
!2521 = !DILocalVariable(name: "underlying", scope: !2518, file: !27, line: 427, type: !1049)
!2522 = !DILocalVariable(name: "errTypeKey", scope: !2518, file: !27, line: 394, type: !33)
!2523 = !DILocation(line: 426, column: 19, scope: !2518)
!2524 = !DILocation(line: 427, column: 16, scope: !2518)
!2525 = !DILocation(line: 427, column: 28, scope: !2518)
!2526 = !DILocation(line: 427, column: 2, scope: !2518)
!2527 = !DILocation(line: 428, column: 5, scope: !2518)
!2528 = !DILocation(line: 428, column: 20, scope: !2518)
!2529 = !DILocation(line: 428, column: 23, scope: !2518)
!2530 = !DILocation(line: 0, scope: !2518)
!2531 = !DILocation(line: 429, column: 9, scope: !2518)
!2532 = !DILocation(line: 429, column: 8, scope: !2518)
!2533 = !DILocation(line: 431, column: 35, scope: !2518)
!2534 = !DILocation(line: 431, column: 48, scope: !2518)
!2535 = !DILocation(line: 431, column: 2, scope: !2518)
!2536 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).name", linkageName: "(*internal/reflectlite.RawType).name", scope: !27, file: !27, line: 939, type: !2224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2537)
!2537 = !{!2538, !2539, !2549, !2550}
!2538 = !DILocalVariable(name: "t", arg: 1, scope: !2536, file: !27, line: 939, type: !1049)
!2539 = !DILocalVariable(name: "ntype", scope: !2536, file: !27, line: 940, type: !2540)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64, align: 64, dwarfAddressSpace: 0)
!2541 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.namedType", baseType: !2542)
!2542 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !2543)
!2543 = !{!2544, !2545, !2546, !2547, !2548}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "RawType", baseType: !1050, size: 8, align: 8)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "numMethod", baseType: !90, size: 16, align: 16, offset: 16)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !1049, size: 64, align: 64, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "elem", baseType: !1049, size: 64, align: 64, offset: 128)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", baseType: !2088, size: 64, align: 64, offset: 192)
!2549 = !DILocalVariable(name: "ptr", scope: !2536, file: !27, line: 942, type: !84)
!2550 = !DILocalVariable(name: "ms", scope: !2536, file: !27, line: 944, type: !2551)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64, align: 64, dwarfAddressSpace: 0)
!2552 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.methodSet", baseType: !2553)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !2554)
!2554 = !{!1145, !2555}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !2556, align: 64, offset: 64)
!2556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, align: 64, elements: !121)
!2557 = !DILocation(line: 939, column: 19, scope: !2536)
!2558 = !DILocation(line: 940, column: 39, scope: !2536)
!2559 = !DILocation(line: 940, column: 2, scope: !2536)
!2560 = !DILocation(line: 942, column: 35, scope: !2536)
!2561 = !DILocation(line: 942, column: 19, scope: !2536)
!2562 = !DILocation(line: 942, column: 2, scope: !2536)
!2563 = !DILocation(line: 943, column: 5, scope: !2536)
!2564 = !DILocation(line: 943, column: 11, scope: !2536)
!2565 = !DILocation(line: 943, column: 20, scope: !2536)
!2566 = !DILocation(line: 943, column: 43, scope: !2536)
!2567 = !DILocation(line: 0, scope: !2536)
!2568 = !DILocation(line: 944, column: 22, scope: !2536)
!2569 = !DILocation(line: 944, column: 3, scope: !2536)
!2570 = !DILocation(line: 946, column: 20, scope: !2536)
!2571 = !DILocation(line: 946, column: 59, scope: !2536)
!2572 = !DILocation(line: 946, column: 62, scope: !2536)
!2573 = !DILocation(line: 946, column: 69, scope: !2536)
!2574 = !DILocation(line: 946, column: 50, scope: !2536)
!2575 = !DILocation(line: 946, column: 19, scope: !2536)
!2576 = !DILocation(line: 946, column: 3, scope: !2536)
!2577 = !DILocation(line: 948, column: 21, scope: !2536)
!2578 = !DILocation(line: 948, column: 20, scope: !2536)
!2579 = !DILocation(line: 948, column: 2, scope: !2536)
!2580 = distinct !DISubprogram(name: "(*internal/reflectlite.RawType).rawField", linkageName: "(*internal/reflectlite.RawType).rawField", scope: !27, file: !27, line: 484, type: !2581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2583)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!1049, !1872}
!2583 = !{!2584, !2585, !2586, !2587, !2601, !2603, !2604, !2605, !2606, !2607}
!2584 = !DILocalVariable(name: "t", arg: 1, scope: !2580, file: !27, line: 484, type: !1049)
!2585 = !DILocalVariable(name: "n", arg: 2, scope: !2580, file: !27, line: 484, type: !1872)
!2586 = !DILocalVariable(name: "errTypeField", scope: !2580, file: !27, line: 395, type: !33)
!2587 = !DILocalVariable(name: "descriptor", scope: !2580, file: !27, line: 488, type: !2588)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64, align: 64, dwarfAddressSpace: 0)
!2589 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.structType", baseType: !2590)
!2590 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !2591)
!2591 = !{!2544, !2545, !2546, !2592, !97, !2593, !2594}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !2088, size: 64, align: 64, offset: 128)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "numField", baseType: !90, size: 16, align: 16, offset: 224)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !2595, size: 128, align: 64, offset: 256)
!2595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2596, size: 128, align: 64, elements: !5)
!2596 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.structField", baseType: !2597)
!2597 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !2598)
!2598 = !{!2599, !2600}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "fieldType", baseType: !1049, size: 64, align: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !84, size: 64, align: 64, offset: 64)
!2601 = !DILocalVariable(name: "field", scope: !2580, file: !27, line: 497, type: !2602)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64, align: 64, dwarfAddressSpace: 0)
!2603 = !DILocalVariable(name: "data", scope: !2580, file: !27, line: 498, type: !84)
!2604 = !DILocalVariable(name: "flagsByte", scope: !2580, file: !27, line: 502, type: !533)
!2605 = !DILocalVariable(name: "offset", scope: !2580, file: !27, line: 504, type: !98)
!2606 = !DILocalVariable(name: "lenOffs", scope: !2580, file: !27, line: 504, type: !1872)
!2607 = !DILocalVariable(name: "name", scope: !2580, file: !27, line: 507, type: !38)
!2608 = !DILocation(line: 484, column: 19, scope: !2580)
!2609 = !DILocation(line: 485, column: 5, scope: !2580)
!2610 = !DILocation(line: 485, column: 11, scope: !2580)
!2611 = !DILocation(line: 485, column: 14, scope: !2580)
!2612 = !DILocation(line: 0, scope: !2580)
!2613 = !DILocation(line: 486, column: 9, scope: !2580)
!2614 = !DILocation(line: 486, column: 8, scope: !2580)
!2615 = !DILocation(line: 488, column: 45, scope: !2580)
!2616 = !DILocation(line: 488, column: 57, scope: !2580)
!2617 = !DILocation(line: 488, column: 2, scope: !2580)
!2618 = !DILocation(line: 489, column: 10, scope: !2580)
!2619 = !DILocation(line: 489, column: 21, scope: !2580)
!2620 = !DILocation(line: 489, column: 32, scope: !2580)
!2621 = !DILocation(line: 489, column: 20, scope: !2580)
!2622 = !DILocation(line: 489, column: 13, scope: !2580)
!2623 = !DILocation(line: 490, column: 8, scope: !2580)
!2624 = !DILocation(line: 497, column: 53, scope: !2580)
!2625 = !DILocation(line: 497, column: 64, scope: !2580)
!2626 = !DILocation(line: 497, column: 70, scope: !2580)
!2627 = !DILocation(line: 497, column: 84, scope: !2580)
!2628 = !DILocation(line: 497, column: 86, scope: !2580)
!2629 = !DILocation(line: 497, column: 36, scope: !2580)
!2630 = !DILocation(line: 497, column: 2, scope: !2580)
!2631 = !DILocation(line: 498, column: 10, scope: !2580)
!2632 = !DILocation(line: 498, column: 16, scope: !2580)
!2633 = !DILocation(line: 498, column: 2, scope: !2580)
!2634 = !DILocation(line: 502, column: 24, scope: !2580)
!2635 = !DILocation(line: 502, column: 15, scope: !2580)
!2636 = !DILocation(line: 502, column: 2, scope: !2580)
!2637 = !DILocation(line: 503, column: 20, scope: !2580)
!2638 = !DILocation(line: 503, column: 19, scope: !2580)
!2639 = !DILocation(line: 503, column: 2, scope: !2580)
!2640 = !DILocation(line: 504, column: 52, scope: !2580)
!2641 = !DILocation(line: 504, column: 43, scope: !2580)
!2642 = !DILocation(line: 504, column: 30, scope: !2580)
!2643 = !DILocation(line: 504, column: 2, scope: !2580)
!2644 = !DILocation(line: 504, column: 10, scope: !2580)
!2645 = !DILocation(line: 505, column: 20, scope: !2580)
!2646 = !DILocation(line: 505, column: 26, scope: !2580)
!2647 = !DILocation(line: 505, column: 19, scope: !2580)
!2648 = !DILocation(line: 505, column: 2, scope: !2580)
!2649 = !DILocation(line: 507, column: 22, scope: !2580)
!2650 = !DILocation(line: 507, column: 21, scope: !2580)
!2651 = !DILocation(line: 507, column: 2, scope: !2580)
!2652 = !DILocation(line: 508, column: 20, scope: !2580)
!2653 = !DILocation(line: 508, column: 30, scope: !2580)
!2654 = !DILocation(line: 508, column: 29, scope: !2580)
!2655 = !DILocation(line: 508, column: 19, scope: !2580)
!2656 = !DILocation(line: 508, column: 2, scope: !2580)
!2657 = !DILocation(line: 510, column: 35, scope: !2580)
!2658 = !DILocation(line: 510, column: 47, scope: !2580)
!2659 = !DILocation(line: 510, column: 53, scope: !2580)
!2660 = !DILocation(line: 510, column: 64, scope: !2580)
!2661 = !DILocation(line: 510, column: 70, scope: !2580)
!2662 = !DILocation(line: 510, column: 81, scope: !2580)
!2663 = !DILocation(line: 510, column: 87, scope: !2580)
!2664 = !DILocation(line: 510, column: 34, scope: !2580)
!2665 = !DILocation(line: 510, column: 2, scope: !2580)
!2666 = distinct !DISubprogram(name: "internal/reflectlite.uvarint32", linkageName: "internal/reflectlite.uvarint32", scope: !27, file: !27, line: 1242, type: !2667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!2085}
!2669 = !{!2670, !2671, !2672, !2673, !2674}
!2670 = !DILocalVariable(name: "buf", arg: 1, scope: !2666, file: !27, line: 1242, type: !2085)
!2671 = !DILocalVariable(name: "x", scope: !2666, file: !27, line: 1243, type: !98)
!2672 = !DILocalVariable(name: "s", scope: !2666, file: !27, line: 1244, type: !1890)
!2673 = !DILocalVariable(name: "i", scope: !2666, file: !27, line: 1245, type: !1872)
!2674 = !DILocalVariable(name: "b", scope: !2666, file: !27, line: 1245, type: !533)
!2675 = !DILocation(line: 1242, column: 6, scope: !2666)
!2676 = !DILocation(line: 1243, column: 6, scope: !2666)
!2677 = !DILocation(line: 1244, column: 6, scope: !2666)
!2678 = !DILocation(line: 1245, column: 20, scope: !2666)
!2679 = !DILocation(line: 0, scope: !2666)
!2680 = !DILocation(line: 1245, column: 6, scope: !2666)
!2681 = !DILocation(line: 1245, column: 9, scope: !2666)
!2682 = !DILocation(line: 1246, column: 6, scope: !2666)
!2683 = !DILocation(line: 1246, column: 8, scope: !2666)
!2684 = !DILocation(line: 1247, column: 11, scope: !2666)
!2685 = !DILocation(line: 1247, column: 22, scope: !2666)
!2686 = !DILocation(line: 1247, column: 21, scope: !2666)
!2687 = !DILocation(line: 1247, column: 26, scope: !2666)
!2688 = !DILocation(line: 1247, column: 24, scope: !2666)
!2689 = !DILocation(line: 1247, column: 13, scope: !2666)
!2690 = !DILocation(line: 1247, column: 29, scope: !2666)
!2691 = !DILocation(line: 1247, column: 31, scope: !2666)
!2692 = !DILocation(line: 1247, column: 4, scope: !2666)
!2693 = !DILocation(line: 1249, column: 15, scope: !2666)
!2694 = !DILocation(line: 1249, column: 16, scope: !2666)
!2695 = !DILocation(line: 1249, column: 14, scope: !2666)
!2696 = !DILocation(line: 1249, column: 26, scope: !2666)
!2697 = !DILocation(line: 1249, column: 23, scope: !2666)
!2698 = !DILocation(line: 1249, column: 3, scope: !2666)
!2699 = !DILocation(line: 1250, column: 3, scope: !2666)
!2700 = !DILocation(line: 1252, column: 2, scope: !2666)
!2701 = distinct !DISubprogram(name: "internal/reflectlite.readStringZ", linkageName: "internal/reflectlite.readStringZ", scope: !27, file: !27, line: 925, type: !2702, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2704)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!84}
!2704 = !{!2705, !2706, !2707}
!2705 = !DILocalVariable(name: "data", arg: 1, scope: !2701, file: !27, line: 925, type: !84)
!2706 = !DILocalVariable(name: "start", scope: !2701, file: !27, line: 926, type: !84)
!2707 = !DILocalVariable(name: "len", scope: !2701, file: !27, line: 927, type: !43)
!2708 = !DILocation(line: 925, column: 6, scope: !2701)
!2709 = !DILocation(line: 926, column: 11, scope: !2701)
!2710 = !DILocation(line: 926, column: 2, scope: !2701)
!2711 = !DILocation(line: 927, column: 6, scope: !2701)
!2712 = !DILocation(line: 0, scope: !2701)
!2713 = !DILocation(line: 925, column: 18, scope: !2701)
!2714 = !DILocation(line: 928, column: 15, scope: !2701)
!2715 = !DILocation(line: 928, column: 6, scope: !2701)
!2716 = !DILocation(line: 928, column: 21, scope: !2701)
!2717 = !DILocation(line: 929, column: 3, scope: !2701)
!2718 = !DILocation(line: 930, column: 21, scope: !2701)
!2719 = !DILocation(line: 930, column: 20, scope: !2701)
!2720 = !DILocation(line: 930, column: 3, scope: !2701)
!2721 = !DILocation(line: 933, column: 48, scope: !2701)
!2722 = !DILocation(line: 934, column: 7, scope: !2701)
!2723 = !DILocation(line: 934, column: 9, scope: !2701)
!2724 = !DILocation(line: 935, column: 6, scope: !2701)
!2725 = !DILocation(line: 935, column: 9, scope: !2701)
!2726 = !DILocation(line: 933, column: 9, scope: !2701)
!2727 = !DILocation(line: 933, column: 2, scope: !2701)
!2728 = distinct !DISubprogram(name: "internal/reflectlite.rawStructFieldFromPointer", linkageName: "internal/reflectlite.rawStructFieldFromPointer", scope: !27, file: !27, line: 449, type: !2729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2731)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!2588, !1049, !84, !4, !38, !98}
!2731 = !{!2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740}
!2732 = !DILocalVariable(name: "descriptor", arg: 1, scope: !2728, file: !27, line: 449, type: !2588)
!2733 = !DILocalVariable(name: "fieldType", arg: 2, scope: !2728, file: !27, line: 449, type: !1049)
!2734 = !DILocalVariable(name: "data", arg: 3, scope: !2728, file: !27, line: 449, type: !84)
!2735 = !DILocalVariable(name: "flagsByte", arg: 4, scope: !2728, file: !27, line: 449, type: !4)
!2736 = !DILocalVariable(name: "name", arg: 5, scope: !2728, file: !27, line: 449, type: !38)
!2737 = !DILocalVariable(name: "offset", arg: 6, scope: !2728, file: !27, line: 449, type: !98)
!2738 = !DILocalVariable(name: "tag", scope: !2728, file: !27, line: 451, type: !38)
!2739 = !DILocalVariable(name: "tagLen", scope: !2728, file: !27, line: 454, type: !43)
!2740 = !DILocalVariable(name: "pkgPath", scope: !2728, file: !27, line: 464, type: !38)
!2741 = !DILocation(line: 449, column: 6, scope: !2728)
!2742 = !DILocation(line: 451, column: 6, scope: !2728)
!2743 = !DILocation(line: 452, column: 5, scope: !2728)
!2744 = !DILocation(line: 452, column: 14, scope: !2728)
!2745 = !DILocation(line: 452, column: 37, scope: !2728)
!2746 = !DILocation(line: 0, scope: !2728)
!2747 = !DILocation(line: 453, column: 21, scope: !2728)
!2748 = !DILocation(line: 453, column: 20, scope: !2728)
!2749 = !DILocation(line: 453, column: 3, scope: !2728)
!2750 = !DILocation(line: 454, column: 30, scope: !2728)
!2751 = !DILocation(line: 454, column: 21, scope: !2728)
!2752 = !DILocation(line: 454, column: 20, scope: !2728)
!2753 = !DILocation(line: 454, column: 3, scope: !2728)
!2754 = !DILocation(line: 455, column: 21, scope: !2728)
!2755 = !DILocation(line: 455, column: 20, scope: !2728)
!2756 = !DILocation(line: 455, column: 3, scope: !2728)
!2757 = !DILocation(line: 456, column: 48, scope: !2728)
!2758 = !DILocation(line: 457, column: 8, scope: !2728)
!2759 = !DILocation(line: 457, column: 10, scope: !2728)
!2760 = !DILocation(line: 458, column: 7, scope: !2728)
!2761 = !DILocation(line: 458, column: 10, scope: !2728)
!2762 = !DILocation(line: 456, column: 9, scope: !2728)
!2763 = !DILocation(line: 456, column: 3, scope: !2728)
!2764 = !DILocation(line: 464, column: 2, scope: !2728)
!2765 = !DILocation(line: 465, column: 5, scope: !2728)
!2766 = !DILocation(line: 465, column: 14, scope: !2728)
!2767 = !DILocation(line: 465, column: 41, scope: !2728)
!2768 = !DILocation(line: 467, column: 40, scope: !2728)
!2769 = !DILocation(line: 467, column: 51, scope: !2728)
!2770 = !DILocation(line: 467, column: 24, scope: !2728)
!2771 = !DILocation(line: 467, column: 3, scope: !2728)
!2772 = !DILocation(line: 471, column: 7, scope: !2728)
!2773 = !DILocation(line: 471, column: 14, scope: !2728)
!2774 = !DILocation(line: 472, column: 10, scope: !2728)
!2775 = !DILocation(line: 472, column: 14, scope: !2728)
!2776 = !DILocation(line: 473, column: 7, scope: !2728)
!2777 = !DILocation(line: 473, column: 14, scope: !2728)
!2778 = !DILocation(line: 474, column: 6, scope: !2728)
!2779 = !DILocation(line: 474, column: 24, scope: !2728)
!2780 = !DILocation(line: 475, column: 12, scope: !2728)
!2781 = !DILocation(line: 475, column: 14, scope: !2728)
!2782 = !DILocation(line: 475, column: 23, scope: !2728)
!2783 = !DILocation(line: 475, column: 49, scope: !2728)
!2784 = !DILocation(line: 476, column: 9, scope: !2728)
!2785 = !DILocation(line: 476, column: 22, scope: !2728)
!2786 = !DILocation(line: 476, column: 21, scope: !2728)
!2787 = !DILocation(line: 470, column: 23, scope: !2728)
!2788 = !DILocation(line: 470, column: 2, scope: !2728)
!2789 = distinct !DISubprogram(name: "(internal/reflectlite.Kind).String", linkageName: "(internal/reflectlite.Kind).String", scope: !27, file: !27, line: 57, type: !2790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2793)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!2792}
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.Kind", baseType: !4)
!2793 = !{!2794}
!2794 = !DILocalVariable(name: "k", arg: 1, scope: !2789, file: !27, line: 57, type: !2792)
!2795 = !DILocation(line: 57, column: 15, scope: !2789)
!2796 = !DILocation(line: 58, column: 9, scope: !2789)
!2797 = !DILocation(line: 59, column: 7, scope: !2789)
!2798 = !DILocation(line: 0, scope: !2789)
!2799 = !DILocation(line: 60, column: 3, scope: !2789)
!2800 = !DILocation(line: 61, column: 7, scope: !2789)
!2801 = !DILocation(line: 62, column: 3, scope: !2789)
!2802 = !DILocation(line: 63, column: 7, scope: !2789)
!2803 = !DILocation(line: 64, column: 3, scope: !2789)
!2804 = !DILocation(line: 65, column: 7, scope: !2789)
!2805 = !DILocation(line: 66, column: 3, scope: !2789)
!2806 = !DILocation(line: 67, column: 7, scope: !2789)
!2807 = !DILocation(line: 68, column: 3, scope: !2789)
!2808 = !DILocation(line: 69, column: 7, scope: !2789)
!2809 = !DILocation(line: 70, column: 3, scope: !2789)
!2810 = !DILocation(line: 71, column: 7, scope: !2789)
!2811 = !DILocation(line: 72, column: 3, scope: !2789)
!2812 = !DILocation(line: 73, column: 7, scope: !2789)
!2813 = !DILocation(line: 74, column: 3, scope: !2789)
!2814 = !DILocation(line: 75, column: 7, scope: !2789)
!2815 = !DILocation(line: 76, column: 3, scope: !2789)
!2816 = !DILocation(line: 77, column: 7, scope: !2789)
!2817 = !DILocation(line: 78, column: 3, scope: !2789)
!2818 = !DILocation(line: 79, column: 7, scope: !2789)
!2819 = !DILocation(line: 80, column: 3, scope: !2789)
!2820 = !DILocation(line: 81, column: 7, scope: !2789)
!2821 = !DILocation(line: 82, column: 3, scope: !2789)
!2822 = !DILocation(line: 83, column: 7, scope: !2789)
!2823 = !DILocation(line: 84, column: 3, scope: !2789)
!2824 = !DILocation(line: 85, column: 7, scope: !2789)
!2825 = !DILocation(line: 86, column: 3, scope: !2789)
!2826 = !DILocation(line: 87, column: 7, scope: !2789)
!2827 = !DILocation(line: 88, column: 3, scope: !2789)
!2828 = !DILocation(line: 89, column: 7, scope: !2789)
!2829 = !DILocation(line: 90, column: 3, scope: !2789)
!2830 = !DILocation(line: 91, column: 7, scope: !2789)
!2831 = !DILocation(line: 92, column: 3, scope: !2789)
!2832 = !DILocation(line: 93, column: 7, scope: !2789)
!2833 = !DILocation(line: 94, column: 3, scope: !2789)
!2834 = !DILocation(line: 95, column: 7, scope: !2789)
!2835 = !DILocation(line: 96, column: 3, scope: !2789)
!2836 = !DILocation(line: 97, column: 7, scope: !2789)
!2837 = !DILocation(line: 98, column: 3, scope: !2789)
!2838 = !DILocation(line: 99, column: 7, scope: !2789)
!2839 = !DILocation(line: 100, column: 3, scope: !2789)
!2840 = !DILocation(line: 101, column: 7, scope: !2789)
!2841 = !DILocation(line: 102, column: 3, scope: !2789)
!2842 = !DILocation(line: 103, column: 7, scope: !2789)
!2843 = !DILocation(line: 104, column: 3, scope: !2789)
!2844 = !DILocation(line: 105, column: 7, scope: !2789)
!2845 = !DILocation(line: 106, column: 3, scope: !2789)
!2846 = !DILocation(line: 107, column: 7, scope: !2789)
!2847 = !DILocation(line: 108, column: 3, scope: !2789)
!2848 = !DILocation(line: 109, column: 7, scope: !2789)
!2849 = !DILocation(line: 110, column: 3, scope: !2789)
!2850 = !DILocation(line: 111, column: 7, scope: !2789)
!2851 = !DILocation(line: 112, column: 3, scope: !2789)
!2852 = !DILocation(line: 114, column: 38, scope: !2789)
!2853 = !DILocation(line: 114, column: 32, scope: !2789)
!2854 = !DILocation(line: 114, column: 28, scope: !2789)
!2855 = !DILocation(line: 114, column: 17, scope: !2789)
!2856 = !DILocation(line: 114, column: 3, scope: !2789)
!2857 = distinct !DISubprogram(name: "internal/reflectlite.quote", linkageName: "internal/reflectlite.quote", scope: !111, file: !111, line: 238, type: !1933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2858)
!2858 = !{!2859, !2860, !2861, !2862}
!2859 = !DILocalVariable(name: "s", arg: 1, scope: !2857, file: !111, line: 238, type: !38)
!2860 = !DILocalVariable(name: "buf", scope: !2857, file: !111, line: 239, type: !2085)
!2861 = !DILocalVariable(name: "width", scope: !2857, file: !111, line: 243, type: !1872)
!2862 = !DILocalVariable(name: "r", scope: !2857, file: !111, line: 244, type: !1938)
!2863 = !DILocation(line: 238, column: 6, scope: !2857)
!2864 = !DILocation(line: 239, column: 31, scope: !2857)
!2865 = !DILocation(line: 239, column: 30, scope: !2857)
!2866 = !DILocation(line: 239, column: 26, scope: !2857)
!2867 = !DILocation(line: 239, column: 33, scope: !2857)
!2868 = !DILocation(line: 239, column: 13, scope: !2857)
!2869 = !DILocation(line: 239, column: 2, scope: !2857)
!2870 = !DILocation(line: 242, column: 15, scope: !2857)
!2871 = !DILocation(line: 242, column: 25, scope: !2857)
!2872 = !DILocation(line: 242, column: 14, scope: !2857)
!2873 = !DILocation(line: 242, column: 2, scope: !2857)
!2874 = !DILocation(line: 243, column: 6, scope: !2857)
!2875 = !DILocation(line: 0, scope: !2857)
!2876 = !DILocation(line: 238, column: 12, scope: !2857)
!2877 = !DILocation(line: 243, column: 22, scope: !2857)
!2878 = !DILocation(line: 243, column: 21, scope: !2857)
!2879 = !DILocation(line: 243, column: 25, scope: !2857)
!2880 = !DILocation(line: 244, column: 13, scope: !2857)
!2881 = !DILocation(line: 244, column: 14, scope: !2857)
!2882 = !DILocation(line: 244, column: 12, scope: !2857)
!2883 = !DILocation(line: 244, column: 3, scope: !2857)
!2884 = !DILocation(line: 245, column: 3, scope: !2857)
!2885 = !DILocation(line: 246, column: 6, scope: !2857)
!2886 = !DILocation(line: 246, column: 8, scope: !2857)
!2887 = !DILocation(line: 247, column: 39, scope: !2857)
!2888 = !DILocation(line: 247, column: 38, scope: !2857)
!2889 = !DILocation(line: 247, column: 4, scope: !2857)
!2890 = !DILocation(line: 247, column: 7, scope: !2857)
!2891 = !DILocation(line: 249, column: 6, scope: !2857)
!2892 = !DILocation(line: 249, column: 12, scope: !2857)
!2893 = !DILocation(line: 249, column: 20, scope: !2857)
!2894 = !DILocation(line: 249, column: 22, scope: !2857)
!2895 = !DILocation(line: 250, column: 17, scope: !2857)
!2896 = !DILocation(line: 250, column: 16, scope: !2857)
!2897 = !DILocation(line: 250, column: 4, scope: !2857)
!2898 = !DILocation(line: 251, column: 17, scope: !2857)
!2899 = !DILocation(line: 251, column: 31, scope: !2857)
!2900 = !DILocation(line: 251, column: 32, scope: !2857)
!2901 = !DILocation(line: 251, column: 35, scope: !2857)
!2902 = !DILocation(line: 251, column: 30, scope: !2857)
!2903 = !DILocation(line: 251, column: 39, scope: !2857)
!2904 = !DILocation(line: 251, column: 16, scope: !2857)
!2905 = !DILocation(line: 251, column: 4, scope: !2857)
!2906 = !DILocation(line: 252, column: 17, scope: !2857)
!2907 = !DILocation(line: 252, column: 31, scope: !2857)
!2908 = !DILocation(line: 252, column: 32, scope: !2857)
!2909 = !DILocation(line: 252, column: 35, scope: !2857)
!2910 = !DILocation(line: 252, column: 30, scope: !2857)
!2911 = !DILocation(line: 252, column: 40, scope: !2857)
!2912 = !DILocation(line: 252, column: 16, scope: !2857)
!2913 = !DILocation(line: 252, column: 4, scope: !2857)
!2914 = !DILocation(line: 243, column: 34, scope: !2857)
!2915 = !DILocation(line: 243, column: 36, scope: !2857)
!2916 = !DILocation(line: 243, column: 35, scope: !2857)
!2917 = !DILocation(line: 243, column: 30, scope: !2857)
!2918 = !DILocation(line: 255, column: 27, scope: !2857)
!2919 = !DILocation(line: 255, column: 32, scope: !2857)
!2920 = !DILocation(line: 255, column: 26, scope: !2857)
!2921 = !DILocation(line: 255, column: 3, scope: !2857)
!2922 = !DILocation(line: 257, column: 15, scope: !2857)
!2923 = !DILocation(line: 257, column: 25, scope: !2857)
!2924 = !DILocation(line: 257, column: 14, scope: !2857)
!2925 = !DILocation(line: 257, column: 2, scope: !2857)
!2926 = !DILocation(line: 258, column: 16, scope: !2857)
!2927 = !DILocation(line: 258, column: 15, scope: !2857)
!2928 = !DILocation(line: 258, column: 2, scope: !2857)
!2929 = distinct !DISubprogram(name: "internal/reflectlite.appendEscapedRune", linkageName: "internal/reflectlite.appendEscapedRune", scope: !111, file: !111, line: 261, type: !2083, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !2930)
!2930 = !{!2931, !2932, !2933, !2934, !2935}
!2931 = !DILocalVariable(name: "buf", arg: 1, scope: !2929, file: !111, line: 261, type: !2085)
!2932 = !DILocalVariable(name: "r", arg: 2, scope: !2929, file: !111, line: 261, type: !1938)
!2933 = !DILocalVariable(name: "n", scope: !2929, file: !111, line: 272, type: !1872)
!2934 = !DILocalVariable(name: "s", scope: !2929, file: !111, line: 302, type: !1872)
!2935 = !DILocalVariable(name: "s", scope: !2929, file: !111, line: 307, type: !1872)
!2936 = !DILocation(line: 261, column: 6, scope: !2929)
!2937 = !DILocation(line: 265, column: 6, scope: !2929)
!2938 = !DILocation(line: 266, column: 5, scope: !2929)
!2939 = !DILocation(line: 266, column: 7, scope: !2929)
!2940 = !DILocation(line: 0, scope: !2929)
!2941 = !DILocation(line: 267, column: 16, scope: !2929)
!2942 = !DILocation(line: 267, column: 25, scope: !2929)
!2943 = !DILocation(line: 267, column: 15, scope: !2929)
!2944 = !DILocation(line: 267, column: 3, scope: !2929)
!2945 = !DILocation(line: 268, column: 16, scope: !2929)
!2946 = !DILocation(line: 268, column: 26, scope: !2929)
!2947 = !DILocation(line: 268, column: 25, scope: !2929)
!2948 = !DILocation(line: 268, column: 28, scope: !2929)
!2949 = !DILocation(line: 268, column: 15, scope: !2929)
!2950 = !DILocation(line: 268, column: 3, scope: !2929)
!2951 = !DILocation(line: 269, column: 10, scope: !2929)
!2952 = !DILocation(line: 269, column: 3, scope: !2929)
!2953 = !DILocation(line: 266, column: 25, scope: !2929)
!2954 = !DILocation(line: 266, column: 27, scope: !2929)
!2955 = !DILocation(line: 271, column: 13, scope: !2929)
!2956 = !DILocation(line: 271, column: 12, scope: !2929)
!2957 = !DILocation(line: 272, column: 31, scope: !2929)
!2958 = !DILocation(line: 272, column: 36, scope: !2929)
!2959 = !DILocation(line: 272, column: 23, scope: !2929)
!2960 = !DILocation(line: 272, column: 3, scope: !2929)
!2961 = !DILocation(line: 273, column: 16, scope: !2929)
!2962 = !DILocation(line: 273, column: 30, scope: !2929)
!2963 = !DILocation(line: 273, column: 28, scope: !2929)
!2964 = !DILocation(line: 273, column: 15, scope: !2929)
!2965 = !DILocation(line: 273, column: 3, scope: !2929)
!2966 = !DILocation(line: 274, column: 10, scope: !2929)
!2967 = !DILocation(line: 274, column: 3, scope: !2929)
!2968 = !DILocation(line: 276, column: 9, scope: !2929)
!2969 = !DILocation(line: 277, column: 7, scope: !2929)
!2970 = !DILocation(line: 278, column: 16, scope: !2929)
!2971 = !DILocation(line: 278, column: 15, scope: !2929)
!2972 = !DILocation(line: 278, column: 3, scope: !2929)
!2973 = !DILocation(line: 261, column: 24, scope: !2929)
!2974 = !DILocation(line: 312, column: 9, scope: !2929)
!2975 = !DILocation(line: 312, column: 2, scope: !2929)
!2976 = !DILocation(line: 279, column: 7, scope: !2929)
!2977 = !DILocation(line: 280, column: 16, scope: !2929)
!2978 = !DILocation(line: 280, column: 15, scope: !2929)
!2979 = !DILocation(line: 280, column: 3, scope: !2929)
!2980 = !DILocation(line: 281, column: 7, scope: !2929)
!2981 = !DILocation(line: 282, column: 16, scope: !2929)
!2982 = !DILocation(line: 282, column: 15, scope: !2929)
!2983 = !DILocation(line: 282, column: 3, scope: !2929)
!2984 = !DILocation(line: 283, column: 7, scope: !2929)
!2985 = !DILocation(line: 284, column: 16, scope: !2929)
!2986 = !DILocation(line: 284, column: 15, scope: !2929)
!2987 = !DILocation(line: 284, column: 3, scope: !2929)
!2988 = !DILocation(line: 285, column: 7, scope: !2929)
!2989 = !DILocation(line: 286, column: 16, scope: !2929)
!2990 = !DILocation(line: 286, column: 15, scope: !2929)
!2991 = !DILocation(line: 286, column: 3, scope: !2929)
!2992 = !DILocation(line: 287, column: 7, scope: !2929)
!2993 = !DILocation(line: 288, column: 16, scope: !2929)
!2994 = !DILocation(line: 288, column: 15, scope: !2929)
!2995 = !DILocation(line: 288, column: 3, scope: !2929)
!2996 = !DILocation(line: 289, column: 7, scope: !2929)
!2997 = !DILocation(line: 290, column: 16, scope: !2929)
!2998 = !DILocation(line: 290, column: 15, scope: !2929)
!2999 = !DILocation(line: 290, column: 3, scope: !2929)
!3000 = !DILocation(line: 293, column: 8, scope: !2929)
!3001 = !DILocation(line: 293, column: 10, scope: !2929)
!3002 = !DILocation(line: 293, column: 16, scope: !2929)
!3003 = !DILocation(line: 294, column: 17, scope: !2929)
!3004 = !DILocation(line: 294, column: 16, scope: !2929)
!3005 = !DILocation(line: 294, column: 4, scope: !2929)
!3006 = !DILocation(line: 295, column: 17, scope: !2929)
!3007 = !DILocation(line: 295, column: 36, scope: !2929)
!3008 = !DILocation(line: 295, column: 35, scope: !2929)
!3009 = !DILocation(line: 295, column: 38, scope: !2929)
!3010 = !DILocation(line: 295, column: 30, scope: !2929)
!3011 = !DILocation(line: 295, column: 42, scope: !2929)
!3012 = !DILocation(line: 295, column: 16, scope: !2929)
!3013 = !DILocation(line: 295, column: 4, scope: !2929)
!3014 = !DILocation(line: 296, column: 17, scope: !2929)
!3015 = !DILocation(line: 296, column: 36, scope: !2929)
!3016 = !DILocation(line: 296, column: 35, scope: !2929)
!3017 = !DILocation(line: 296, column: 38, scope: !2929)
!3018 = !DILocation(line: 296, column: 30, scope: !2929)
!3019 = !DILocation(line: 296, column: 43, scope: !2929)
!3020 = !DILocation(line: 296, column: 16, scope: !2929)
!3021 = !DILocation(line: 296, column: 4, scope: !2929)
!3022 = !DILocation(line: 297, column: 24, scope: !2929)
!3023 = !DILocation(line: 297, column: 23, scope: !2929)
!3024 = !DILocation(line: 297, column: 8, scope: !2929)
!3025 = !DILocation(line: 298, column: 4, scope: !2929)
!3026 = !DILocation(line: 261, column: 36, scope: !2929)
!3027 = !DILocation(line: 301, column: 17, scope: !2929)
!3028 = !DILocation(line: 301, column: 16, scope: !2929)
!3029 = !DILocation(line: 301, column: 4, scope: !2929)
!3030 = !DILocation(line: 302, column: 8, scope: !2929)
!3031 = !DILocation(line: 302, column: 17, scope: !2929)
!3032 = !DILocation(line: 302, column: 19, scope: !2929)
!3033 = !DILocation(line: 303, column: 18, scope: !2929)
!3034 = !DILocation(line: 303, column: 32, scope: !2929)
!3035 = !DILocation(line: 303, column: 40, scope: !2929)
!3036 = !DILocation(line: 303, column: 33, scope: !2929)
!3037 = !DILocation(line: 303, column: 42, scope: !2929)
!3038 = !DILocation(line: 303, column: 31, scope: !2929)
!3039 = !DILocation(line: 303, column: 47, scope: !2929)
!3040 = !DILocation(line: 303, column: 17, scope: !2929)
!3041 = !DILocation(line: 303, column: 5, scope: !2929)
!3042 = !DILocation(line: 302, column: 25, scope: !2929)
!3043 = !DILocation(line: 300, column: 8, scope: !2929)
!3044 = !DILocation(line: 300, column: 10, scope: !2929)
!3045 = !DILocation(line: 306, column: 17, scope: !2929)
!3046 = !DILocation(line: 306, column: 16, scope: !2929)
!3047 = !DILocation(line: 306, column: 4, scope: !2929)
!3048 = !DILocation(line: 307, column: 8, scope: !2929)
!3049 = !DILocation(line: 307, column: 17, scope: !2929)
!3050 = !DILocation(line: 307, column: 19, scope: !2929)
!3051 = !DILocation(line: 308, column: 18, scope: !2929)
!3052 = !DILocation(line: 308, column: 32, scope: !2929)
!3053 = !DILocation(line: 308, column: 40, scope: !2929)
!3054 = !DILocation(line: 308, column: 33, scope: !2929)
!3055 = !DILocation(line: 308, column: 42, scope: !2929)
!3056 = !DILocation(line: 308, column: 31, scope: !2929)
!3057 = !DILocation(line: 308, column: 47, scope: !2929)
!3058 = !DILocation(line: 308, column: 17, scope: !2929)
!3059 = !DILocation(line: 308, column: 5, scope: !2929)
!3060 = !DILocation(line: 307, column: 25, scope: !2929)
!3061 = !DILocation(line: 293, column: 19, scope: !2929)
!3062 = !DILocation(line: 293, column: 21, scope: !2929)
!3063 = distinct !DISubprogram(name: "internal/reflectlite.isPrint", linkageName: "internal/reflectlite.isPrint", scope: !111, file: !111, line: 316, type: !2204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3064)
!3064 = !{!3065}
!3065 = !DILocalVariable(name: "r", arg: 1, scope: !3063, file: !111, line: 316, type: !1938)
!3066 = !DILocation(line: 316, column: 6, scope: !3063)
!3067 = !DILocation(line: 317, column: 5, scope: !3063)
!3068 = !DILocation(line: 317, column: 7, scope: !3063)
!3069 = !DILocation(line: 0, scope: !3063)
!3070 = !DILocation(line: 318, column: 14, scope: !3063)
!3071 = !DILocation(line: 318, column: 11, scope: !3063)
!3072 = !DILocation(line: 318, column: 19, scope: !3063)
!3073 = !DILocation(line: 318, column: 21, scope: !3063)
!3074 = !DILocation(line: 320, column: 4, scope: !3063)
!3075 = !DILocation(line: 322, column: 14, scope: !3063)
!3076 = !DILocation(line: 322, column: 11, scope: !3063)
!3077 = !DILocation(line: 322, column: 19, scope: !3063)
!3078 = !DILocation(line: 322, column: 21, scope: !3063)
!3079 = !DILocation(line: 324, column: 11, scope: !3063)
!3080 = !DILocation(line: 324, column: 13, scope: !3063)
!3081 = !DILocation(line: 324, column: 4, scope: !3063)
!3082 = !DILocation(line: 326, column: 3, scope: !3063)
!3083 = !DILocation(line: 330, column: 2, scope: !3063)
!3084 = distinct !DISubprogram(name: "(internal/reflectlite.Kind).String$invoke", linkageName: "(internal/reflectlite.Kind).String$invoke", scope: !27, file: !27, line: 57, type: !2790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032)
!3085 = !DILocation(line: 57, column: 15, scope: !3084)
!3086 = distinct !DISubprogram(name: "(*internal/reflectlite.ValueError).Error", linkageName: "(*internal/reflectlite.ValueError).Error", scope: !316, file: !316, line: 1789, type: !3087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3094)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!3089}
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64, align: 64, dwarfAddressSpace: 0)
!3090 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.ValueError", baseType: !3091)
!3091 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !3092)
!3092 = !{!37, !3093}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "Kind", baseType: !2792, size: 8, align: 8, offset: 128)
!3094 = !{!3095}
!3095 = !DILocalVariable(name: "e", arg: 1, scope: !3086, file: !316, line: 1789, type: !3089)
!3096 = !DILocation(line: 1789, column: 22, scope: !3086)
!3097 = !DILocation(line: 1790, column: 5, scope: !3086)
!3098 = !DILocation(line: 1790, column: 7, scope: !3086)
!3099 = !DILocation(line: 1790, column: 12, scope: !3086)
!3100 = !DILocation(line: 0, scope: !3086)
!3101 = !DILocation(line: 1791, column: 32, scope: !3086)
!3102 = !DILocation(line: 1791, column: 34, scope: !3086)
!3103 = !DILocation(line: 1791, column: 30, scope: !3086)
!3104 = !DILocation(line: 1791, column: 41, scope: !3086)
!3105 = !DILocation(line: 1791, column: 3, scope: !3086)
!3106 = !DILocation(line: 1793, column: 31, scope: !3086)
!3107 = !DILocation(line: 1793, column: 33, scope: !3086)
!3108 = !DILocation(line: 1793, column: 29, scope: !3086)
!3109 = !DILocation(line: 1793, column: 40, scope: !3086)
!3110 = !DILocation(line: 1793, column: 51, scope: !3086)
!3111 = !DILocation(line: 1793, column: 53, scope: !3086)
!3112 = !DILocation(line: 1793, column: 64, scope: !3086)
!3113 = !DILocation(line: 1793, column: 49, scope: !3086)
!3114 = !DILocation(line: 1793, column: 67, scope: !3086)
!3115 = !DILocation(line: 1793, column: 2, scope: !3086)
!3116 = distinct !DISubprogram(name: "(internal/reflectlite.badSyntax).Error", linkageName: "(internal/reflectlite.badSyntax).Error", scope: !111, file: !111, line: 16, type: !3117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !3119)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!1195}
!3119 = !{!3120}
!3120 = !DILocalVariable(name: "arg0", arg: 1, scope: !3116, file: !111, line: 16, type: !1195)
!3121 = !DILocation(line: 17, column: 2, scope: !3116)
!3122 = distinct !DISubprogram(name: "(internal/reflectlite.badSyntax).Error$invoke", linkageName: "(internal/reflectlite.badSyntax).Error$invoke", scope: !111, file: !111, line: 16, type: !3117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032)
!3123 = !DILocation(line: 16, column: 18, scope: !3122)
!3124 = distinct !DISubprogram(name: "runtime/interrupt.In", linkageName: "runtime/interrupt.In", scope: !3125, file: !3125, line: 28, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1516)
!3125 = !DIFile(filename: "interrupt_none.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!3126 = !DISubroutineType(types: !342)
!3127 = !DILocation(line: 30, column: 2, scope: !3124)
!3128 = distinct !DISubprogram(name: "(*internal/task.Mutex).Lock", linkageName: "(*internal/task.Mutex).Lock", scope: !378, file: !378, line: 31, type: !3129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3132)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!3131}
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64, dwarfAddressSpace: 0)
!3132 = !{!3133}
!3133 = !DILocalVariable(name: "m", arg: 1, scope: !3128, file: !378, line: 31, type: !3131)
!3134 = !DILocation(line: 31, column: 17, scope: !3128)
!3135 = !DILocation(line: 33, column: 5, scope: !3128)
!3136 = !DILocation(line: 33, column: 7, scope: !3128)
!3137 = !DILocation(line: 33, column: 27, scope: !3128)
!3138 = !DILocation(line: 0, scope: !3128)
!3139 = !DILocation(line: 35, column: 3, scope: !3128)
!3140 = !DILocation(line: 43, column: 6, scope: !3128)
!3141 = !DILocation(line: 43, column: 8, scope: !3128)
!3142 = !DILocation(line: 43, column: 18, scope: !3128)
!3143 = !DILocation(line: 43, column: 22, scope: !3128)
!3144 = !DILocation(line: 45, column: 3, scope: !3128)
!3145 = !DILocation(line: 45, column: 5, scope: !3128)
!3146 = !DILocation(line: 45, column: 15, scope: !3128)
!3147 = !DILocation(line: 47, column: 2, scope: !3128)
!3148 = distinct !DISubprogram(name: "(*internal/task.Mutex).Unlock", linkageName: "(*internal/task.Mutex).Unlock", scope: !378, file: !378, line: 49, type: !3129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3149)
!3149 = !{!3150, !3151}
!3150 = !DILocalVariable(name: "m", arg: 1, scope: !3148, file: !378, line: 49, type: !3131)
!3151 = !DILocalVariable(name: "old", scope: !3148, file: !378, line: 50, type: !98)
!3152 = !DILocation(line: 49, column: 17, scope: !3148)
!3153 = !DILocation(line: 50, column: 12, scope: !3148)
!3154 = !DILocation(line: 50, column: 14, scope: !3148)
!3155 = !DILocation(line: 50, column: 24, scope: !3148)
!3156 = !DILocation(line: 50, column: 5, scope: !3148)
!3157 = !DILocation(line: 50, column: 29, scope: !3148)
!3158 = !DILocation(line: 50, column: 33, scope: !3148)
!3159 = !DILocation(line: 0, scope: !3148)
!3160 = !DILocation(line: 52, column: 8, scope: !3148)
!3161 = !DILocation(line: 53, column: 12, scope: !3148)
!3162 = !DILocation(line: 53, column: 16, scope: !3148)
!3163 = !DILocation(line: 55, column: 3, scope: !3148)
!3164 = !DILocation(line: 55, column: 5, scope: !3148)
!3165 = !DILocation(line: 55, column: 15, scope: !3148)
!3166 = !DILocation(line: 57, column: 2, scope: !3148)
!3167 = distinct !DISubprogram(name: "(*internal/task.Semaphore).Wait", linkageName: "(*internal/task.Semaphore).Wait", scope: !3168, file: !3168, line: 21, type: !3169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3172)
!3168 = !DIFile(filename: "semaphore.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!3171}
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64, dwarfAddressSpace: 0)
!3172 = !{!3173, !3174, !3175}
!3173 = !DILocalVariable(name: "s", arg: 1, scope: !3167, file: !3168, line: 21, type: !3171)
!3174 = !DILocalVariable(name: "delta", scope: !3167, file: !3168, line: 22, type: !381)
!3175 = !DILocalVariable(name: "value", scope: !3167, file: !3168, line: 23, type: !98)
!3176 = !DILocation(line: 21, column: 21, scope: !3167)
!3177 = !DILocation(line: 22, column: 2, scope: !3167)
!3178 = !DILocation(line: 23, column: 11, scope: !3167)
!3179 = !DILocation(line: 23, column: 13, scope: !3167)
!3180 = !DILocation(line: 23, column: 30, scope: !3167)
!3181 = !DILocation(line: 23, column: 22, scope: !3167)
!3182 = !DILocation(line: 23, column: 2, scope: !3167)
!3183 = !DILocation(line: 0, scope: !3167)
!3184 = !DILocation(line: 25, column: 12, scope: !3167)
!3185 = !DILocation(line: 25, column: 19, scope: !3167)
!3186 = !DILocation(line: 27, column: 4, scope: !3167)
!3187 = !DILocation(line: 29, column: 3, scope: !3167)
!3188 = !DILocation(line: 29, column: 5, scope: !3167)
!3189 = !DILocation(line: 29, column: 16, scope: !3167)
!3190 = !DILocation(line: 29, column: 15, scope: !3167)
!3191 = !DILocation(line: 30, column: 11, scope: !3167)
!3192 = !DILocation(line: 30, column: 13, scope: !3167)
!3193 = !DILocation(line: 30, column: 23, scope: !3167)
!3194 = !DILocation(line: 30, column: 3, scope: !3167)
!3195 = distinct !DISubprogram(name: "internal/task.Init", linkageName: "internal/task.Init", scope: !330, file: !330, line: 55, type: !3196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3198)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!43}
!3198 = !{!3199, !3200}
!3199 = !DILocalVariable(name: "sp", arg: 1, scope: !3195, file: !330, line: 55, type: !43)
!3200 = !DILocalVariable(name: "stackTop", scope: !3195, file: !330, line: 24, type: !43)
!3201 = !DILocation(line: 55, column: 6, scope: !3195)
!3202 = !DILocation(line: 56, column: 28, scope: !3195)
!3203 = !DILocation(line: 56, column: 17, scope: !3195)
!3204 = !DILocation(line: 57, column: 18, scope: !3195)
!3205 = !DILocation(line: 58, column: 2, scope: !3195)
!3206 = distinct !DISubprogram(name: "internal/task.Current", linkageName: "internal/task.Current", scope: !330, file: !330, line: 61, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3207)
!3207 = !{!3208}
!3208 = !DILocalVariable(name: "t", scope: !3206, file: !330, line: 62, type: !331)
!3209 = !DILocation(line: 62, column: 34, scope: !3206)
!3210 = !DILocation(line: 62, column: 2, scope: !3206)
!3211 = !DILocation(line: 63, column: 5, scope: !3206)
!3212 = !DILocation(line: 63, column: 7, scope: !3206)
!3213 = !DILocation(line: 0, scope: !3206)
!3214 = !DILocation(line: 64, column: 15, scope: !3206)
!3215 = !DILocation(line: 66, column: 9, scope: !3206)
!3216 = !DILocation(line: 66, column: 2, scope: !3206)
!3217 = distinct !DISubprogram(name: "internal/task.Pause", linkageName: "internal/task.Pause", scope: !330, file: !330, line: 73, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3218)
!3218 = !{!3219}
!3219 = !DILocalVariable(name: "t", scope: !3217, file: !330, line: 75, type: !331)
!3220 = !DILocation(line: 75, column: 14, scope: !3217)
!3221 = !DILocation(line: 75, column: 2, scope: !3217)
!3222 = !DILocation(line: 0, scope: !3217)
!3223 = !DILocation(line: 77, column: 27, scope: !3217)
!3224 = !DILocation(line: 77, column: 29, scope: !3217)
!3225 = !DILocation(line: 77, column: 35, scope: !3217)
!3226 = !DILocation(line: 77, column: 10, scope: !3217)
!3227 = !DILocation(line: 79, column: 2, scope: !3217)
!3228 = !DILocation(line: 79, column: 4, scope: !3217)
!3229 = !DILocation(line: 79, column: 10, scope: !3217)
!3230 = !DILocation(line: 79, column: 23, scope: !3217)
!3231 = !DILocation(line: 80, column: 2, scope: !3217)
!3232 = distinct !DISubprogram(name: "internal/task.taskExited", linkageName: "tinygo_task_exited", scope: !330, file: !330, line: 125, type: !3233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3235)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!331}
!3235 = !{!3236, !3237, !3238, !3240}
!3236 = !DILocalVariable(name: "t", arg: 1, scope: !3232, file: !330, line: 125, type: !331)
!3237 = !DILocalVariable(name: "found", scope: !3232, file: !330, line: 133, type: !371)
!3238 = !DILocalVariable(name: "q", scope: !3232, file: !330, line: 134, type: !3239)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64, dwarfAddressSpace: 0)
!3240 = !DILocalVariable(name: "otherGoroutines", scope: !3232, file: !330, line: 99, type: !98)
!3241 = !DILocation(line: 125, column: 6, scope: !3232)
!3242 = !DILocation(line: 0, scope: !3232)
!3243 = !DILocation(line: 127, column: 24, scope: !3232)
!3244 = !DILocation(line: 127, column: 26, scope: !3232)
!3245 = !DILocation(line: 127, column: 32, scope: !3232)
!3246 = !DILocation(line: 127, column: 10, scope: !3232)
!3247 = !DILocation(line: 132, column: 21, scope: !3232)
!3248 = !DILocation(line: 133, column: 2, scope: !3232)
!3249 = !DILocation(line: 134, column: 6, scope: !3232)
!3250 = !DILocation(line: 134, column: 26, scope: !3232)
!3251 = !DILocation(line: 134, column: 25, scope: !3232)
!3252 = !DILocation(line: 134, column: 28, scope: !3232)
!3253 = !DILocation(line: 135, column: 7, scope: !3232)
!3254 = !DILocation(line: 135, column: 6, scope: !3232)
!3255 = !DILocation(line: 135, column: 12, scope: !3232)
!3256 = !DILocation(line: 135, column: 9, scope: !3232)
!3257 = !DILocation(line: 136, column: 5, scope: !3232)
!3258 = !DILocation(line: 136, column: 9, scope: !3232)
!3259 = !DILocation(line: 136, column: 11, scope: !3232)
!3260 = !DILocation(line: 136, column: 17, scope: !3232)
!3261 = !DILocation(line: 136, column: 4, scope: !3232)
!3262 = !DILocation(line: 137, column: 4, scope: !3232)
!3263 = !DILocation(line: 134, column: 43, scope: !3232)
!3264 = !DILocation(line: 134, column: 42, scope: !3232)
!3265 = !DILocation(line: 134, column: 46, scope: !3232)
!3266 = !DILocation(line: 134, column: 52, scope: !3232)
!3267 = !DILocation(line: 134, column: 36, scope: !3232)
!3268 = !DILocation(line: 141, column: 2, scope: !3232)
!3269 = !DILocation(line: 142, column: 23, scope: !3232)
!3270 = !DILocation(line: 145, column: 6, scope: !3232)
!3271 = !DILocation(line: 148, column: 2, scope: !3232)
!3272 = !DILocation(line: 146, column: 15, scope: !3232)
!3273 = distinct !DISubprogram(name: "(*internal/task.waitGroup).done", linkageName: "(*internal/task.waitGroup).done", scope: !330, file: !330, line: 163, type: !3274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3277)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!3276}
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64, dwarfAddressSpace: 0)
!3277 = !{!3278}
!3278 = !DILocalVariable(name: "wg", arg: 1, scope: !3273, file: !330, line: 163, type: !3276)
!3279 = !DILocation(line: 163, column: 22, scope: !3273)
!3280 = !DILocation(line: 164, column: 5, scope: !3273)
!3281 = !DILocation(line: 164, column: 8, scope: !3273)
!3282 = !DILocation(line: 164, column: 13, scope: !3273)
!3283 = !DILocation(line: 164, column: 26, scope: !3273)
!3284 = !DILocation(line: 0, scope: !3273)
!3285 = !DILocation(line: 165, column: 3, scope: !3273)
!3286 = !DILocation(line: 165, column: 6, scope: !3273)
!3287 = !DILocation(line: 165, column: 15, scope: !3273)
!3288 = !DILocation(line: 167, column: 2, scope: !3273)
!3289 = distinct !DISubprogram(name: "(*internal/task.waitGroup).wait", linkageName: "(*internal/task.waitGroup).wait", scope: !330, file: !330, line: 169, type: !3274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3290)
!3290 = !{!3291, !3292}
!3291 = !DILocalVariable(name: "wg", arg: 1, scope: !3289, file: !330, line: 169, type: !3276)
!3292 = !DILocalVariable(name: "val", scope: !3289, file: !330, line: 171, type: !98)
!3293 = !DILocation(line: 169, column: 22, scope: !3289)
!3294 = !DILocation(line: 0, scope: !3289)
!3295 = !DILocation(line: 171, column: 10, scope: !3289)
!3296 = !DILocation(line: 171, column: 13, scope: !3289)
!3297 = !DILocation(line: 171, column: 19, scope: !3289)
!3298 = !DILocation(line: 171, column: 3, scope: !3289)
!3299 = !DILocation(line: 172, column: 6, scope: !3289)
!3300 = !DILocation(line: 172, column: 10, scope: !3289)
!3301 = !DILocation(line: 173, column: 4, scope: !3289)
!3302 = !DILocation(line: 175, column: 3, scope: !3289)
!3303 = !DILocation(line: 175, column: 6, scope: !3289)
!3304 = !DILocation(line: 175, column: 13, scope: !3289)
!3305 = !DILocation(line: 175, column: 12, scope: !3289)
!3306 = distinct !DISubprogram(name: "internal/task.initWaitGroup", linkageName: "internal/task.initWaitGroup", scope: !330, file: !330, line: 157, type: !3307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3309)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!98}
!3309 = !{!3310, !3311}
!3310 = !DILocalVariable(name: "n", arg: 1, scope: !3306, file: !330, line: 157, type: !98)
!3311 = !DILocalVariable(name: "wg", scope: !3306, file: !330, line: 158, type: !401)
!3312 = !DILocation(line: 157, column: 6, scope: !3306)
!3313 = !DILocation(line: 158, column: 6, scope: !3306)
!3314 = !DILocation(line: 159, column: 5, scope: !3306)
!3315 = !DILocation(line: 159, column: 2, scope: !3306)
!3316 = !DILocation(line: 159, column: 13, scope: !3306)
!3317 = !DILocation(line: 159, column: 12, scope: !3306)
!3318 = !DILocation(line: 160, column: 9, scope: !3306)
!3319 = !DILocation(line: 160, column: 2, scope: !3306)
!3320 = distinct !DISubprogram(name: "internal/task.GCStopWorldAndScan", linkageName: "internal/task.GCStopWorldAndScan", scope: !330, file: !330, line: 192, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3321)
!3321 = !{!3322, !3323, !3324, !3325, !3326, !3327}
!3322 = !DILocalVariable(name: "current", scope: !3320, file: !330, line: 193, type: !331)
!3323 = !DILocalVariable(name: "otherGoroutines", scope: !3320, file: !330, line: 99, type: !98)
!3324 = !DILocalVariable(name: "scanWaitGroup", scope: !3320, file: !330, line: 151, type: !401)
!3325 = !DILocalVariable(name: "activeTasks", scope: !3320, file: !330, line: 45, type: !331)
!3326 = !DILocalVariable(name: "t", scope: !3320, file: !330, line: 212, type: !331)
!3327 = !DILocalVariable(name: "t", scope: !3320, file: !330, line: 223, type: !331)
!3328 = !DILocation(line: 193, column: 20, scope: !3320)
!3329 = !DILocation(line: 193, column: 2, scope: !3320)
!3330 = !DILocation(line: 196, column: 17, scope: !3320)
!3331 = !DILocation(line: 196, column: 20, scope: !3320)
!3332 = !DILocation(line: 0, scope: !3320)
!3333 = !DILocation(line: 199, column: 22, scope: !3320)
!3334 = !DILocation(line: 202, column: 21, scope: !3320)
!3335 = !DILocation(line: 206, column: 16, scope: !3320)
!3336 = !DILocation(line: 209, column: 33, scope: !3320)
!3337 = !DILocation(line: 209, column: 32, scope: !3320)
!3338 = !DILocation(line: 209, column: 3, scope: !3320)
!3339 = !DILocation(line: 212, column: 12, scope: !3320)
!3340 = !DILocation(line: 212, column: 7, scope: !3320)
!3341 = !DILocation(line: 212, column: 25, scope: !3320)
!3342 = !DILocation(line: 212, column: 27, scope: !3320)
!3343 = !DILocation(line: 213, column: 7, scope: !3320)
!3344 = !DILocation(line: 213, column: 12, scope: !3320)
!3345 = !DILocation(line: 213, column: 9, scope: !3320)
!3346 = !DILocation(line: 214, column: 32, scope: !3320)
!3347 = !DILocation(line: 214, column: 34, scope: !3320)
!3348 = !DILocation(line: 214, column: 40, scope: !3320)
!3349 = !DILocation(line: 214, column: 31, scope: !3320)
!3350 = !DILocation(line: 212, column: 39, scope: !3320)
!3351 = !DILocation(line: 212, column: 41, scope: !3320)
!3352 = !DILocation(line: 212, column: 47, scope: !3320)
!3353 = !DILocation(line: 212, column: 35, scope: !3320)
!3354 = !DILocation(line: 219, column: 21, scope: !3320)
!3355 = !DILocation(line: 223, column: 11, scope: !3320)
!3356 = !DILocation(line: 223, column: 6, scope: !3320)
!3357 = !DILocation(line: 223, column: 24, scope: !3320)
!3358 = !DILocation(line: 223, column: 26, scope: !3320)
!3359 = !DILocation(line: 224, column: 6, scope: !3320)
!3360 = !DILocation(line: 224, column: 11, scope: !3320)
!3361 = !DILocation(line: 224, column: 8, scope: !3320)
!3362 = !DILocation(line: 225, column: 14, scope: !3320)
!3363 = !DILocation(line: 225, column: 16, scope: !3320)
!3364 = !DILocation(line: 225, column: 22, scope: !3320)
!3365 = !DILocation(line: 225, column: 35, scope: !3320)
!3366 = !DILocation(line: 225, column: 37, scope: !3320)
!3367 = !DILocation(line: 225, column: 43, scope: !3320)
!3368 = !DILocation(line: 225, column: 13, scope: !3320)
!3369 = !DILocation(line: 223, column: 38, scope: !3320)
!3370 = !DILocation(line: 223, column: 40, scope: !3320)
!3371 = !DILocation(line: 223, column: 46, scope: !3320)
!3372 = !DILocation(line: 223, column: 34, scope: !3320)
!3373 = !DILocation(line: 230, column: 18, scope: !3320)
!3374 = !DILocation(line: 233, column: 15, scope: !3320)
!3375 = !DILocation(line: 234, column: 2, scope: !3320)
!3376 = distinct !DISubprogram(name: "internal/task.GCResumeWorld", linkageName: "internal/task.GCResumeWorld", scope: !330, file: !330, line: 237, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3377)
!3377 = !{!3378, !3379}
!3378 = !DILocalVariable(name: "otherGoroutines", scope: !3376, file: !330, line: 99, type: !98)
!3379 = !DILocalVariable(name: "scanWaitGroup", scope: !3376, file: !330, line: 151, type: !401)
!3380 = !DILocation(line: 239, column: 17, scope: !3376)
!3381 = !DILocation(line: 239, column: 20, scope: !3376)
!3382 = !DILocation(line: 0, scope: !3376)
!3383 = !DILocation(line: 241, column: 3, scope: !3376)
!3384 = !DILocation(line: 245, column: 32, scope: !3376)
!3385 = !DILocation(line: 245, column: 31, scope: !3376)
!3386 = !DILocation(line: 245, column: 2, scope: !3376)
!3387 = !DILocation(line: 248, column: 15, scope: !3376)
!3388 = !DILocation(line: 251, column: 17, scope: !3376)
!3389 = !DILocation(line: 254, column: 23, scope: !3376)
!3390 = !DILocation(line: 255, column: 2, scope: !3376)
!3391 = distinct !DISubprogram(name: "internal/task.tingyo_task_gc_pause", linkageName: "tinygo_task_gc_pause", scope: !330, file: !330, line: 266, type: !3392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527, retainedNodes: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!381}
!3394 = !{!3395, !3396}
!3395 = !DILocalVariable(name: "sig", arg: 1, scope: !3391, file: !330, line: 266, type: !381)
!3396 = !DILocalVariable(name: "stackBottom", scope: !3391, file: !330, line: 28, type: !43)
!3397 = !DILocation(line: 266, column: 6, scope: !3391)
!3398 = !DILocation(line: 268, column: 9, scope: !3391)
!3399 = !DILocation(line: 268, column: 12, scope: !3391)
!3400 = !DILocation(line: 268, column: 49, scope: !3391)
!3401 = !DILocation(line: 268, column: 39, scope: !3391)
!3402 = !DILocation(line: 268, column: 18, scope: !3391)
!3403 = !DILocation(line: 271, column: 20, scope: !3391)
!3404 = !DILocation(line: 0, scope: !3391)
!3405 = !DILocation(line: 274, column: 18, scope: !3391)
!3406 = !DILocation(line: 274, column: 21, scope: !3391)
!3407 = !DILocation(line: 275, column: 15, scope: !3391)
!3408 = !DILocation(line: 279, column: 20, scope: !3391)
!3409 = !DILocation(line: 280, column: 2, scope: !3391)
!3410 = distinct !DISubprogram(name: "internal/task.StackTop", linkageName: "internal/task.StackTop", scope: !330, file: !330, line: 289, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1527)
!3411 = !DILocation(line: 290, column: 16, scope: !3410)
!3412 = !DILocation(line: 290, column: 19, scope: !3410)
!3413 = !DILocation(line: 290, column: 25, scope: !3410)
!3414 = !DILocation(line: 290, column: 2, scope: !3410)
!3415 = distinct !DISubprogram(name: "runtime.alloc", linkageName: "runtime.alloc", scope: !421, file: !421, line: 68, type: !3416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!43, !84}
!3418 = !{!3419, !3420, !3421}
!3419 = !DILocalVariable(name: "size", arg: 1, scope: !3415, file: !421, line: 68, type: !43)
!3420 = !DILocalVariable(name: "layout", arg: 2, scope: !3415, file: !421, line: 68, type: !84)
!3421 = !DILocalVariable(name: "ptr", scope: !3415, file: !421, line: 74, type: !84)
!3422 = !DILocation(line: 68, column: 6, scope: !3415)
!3423 = !DILocation(line: 69, column: 5, scope: !3415)
!3424 = !DILocation(line: 69, column: 10, scope: !3415)
!3425 = !DILocation(line: 0, scope: !3415)
!3426 = !DILocation(line: 70, column: 3, scope: !3415)
!3427 = !DILocation(line: 73, column: 13, scope: !3415)
!3428 = !DILocation(line: 74, column: 6, scope: !3415)
!3429 = !DILocation(line: 75, column: 5, scope: !3415)
!3430 = !DILocation(line: 75, column: 36, scope: !3415)
!3431 = !DILocation(line: 75, column: 12, scope: !3415)
!3432 = !DILocation(line: 79, column: 29, scope: !3415)
!3433 = !DILocation(line: 79, column: 28, scope: !3415)
!3434 = !DILocation(line: 79, column: 3, scope: !3415)
!3435 = !DILocation(line: 82, column: 11, scope: !3415)
!3436 = !DILocation(line: 82, column: 16, scope: !3415)
!3437 = !DILocation(line: 82, column: 10, scope: !3415)
!3438 = !DILocation(line: 90, column: 15, scope: !3415)
!3439 = !DILocation(line: 91, column: 15, scope: !3415)
!3440 = !DILocation(line: 92, column: 5, scope: !3415)
!3441 = !DILocation(line: 92, column: 9, scope: !3415)
!3442 = !DILocation(line: 93, column: 15, scope: !3415)
!3443 = !DILocation(line: 96, column: 9, scope: !3415)
!3444 = !DILocation(line: 96, column: 2, scope: !3415)
!3445 = !DILocation(line: 86, column: 22, scope: !3415)
!3446 = !DILocation(line: 86, column: 21, scope: !3415)
!3447 = !DILocation(line: 86, column: 3, scope: !3415)
!3448 = distinct !DISubprogram(name: "runtime.memzero", linkageName: "runtime.memzero", scope: !1584, file: !1584, line: 53, type: !3449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!84, !43}
!3451 = !{!3452, !3453}
!3452 = !DILocalVariable(name: "ptr", arg: 1, scope: !3448, file: !1584, line: 53, type: !84)
!3453 = !DILocalVariable(name: "size", arg: 2, scope: !3448, file: !1584, line: 53, type: !43)
!3454 = !DILocation(line: 53, column: 6, scope: !3448)
!3455 = distinct !DISubprogram(name: "runtime.gcResumeWorld", linkageName: "runtime.gcResumeWorld", scope: !3456, file: !3456, line: 27, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3456 = !DIFile(filename: "gc_stack_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3457 = !DILocation(line: 28, column: 20, scope: !3455)
!3458 = !DILocation(line: 29, column: 2, scope: !3455)
!3459 = distinct !DISubprogram(name: "runtime.runtimePanic", linkageName: "runtime.runtimePanic", scope: !428, file: !428, line: 85, type: !1933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3460)
!3460 = !{!3461}
!3461 = !DILocalVariable(name: "msg", arg: 1, scope: !3459, file: !428, line: 85, type: !38)
!3462 = !DILocation(line: 85, column: 6, scope: !3459)
!3463 = !DILocation(line: 88, column: 30, scope: !3459)
!3464 = !DILocation(line: 88, column: 35, scope: !3459)
!3465 = !DILocation(line: 88, column: 16, scope: !3459)
!3466 = !DILocation(line: 89, column: 2, scope: !3459)
!3467 = distinct !DISubprogram(name: "runtime.runtimePanicAt", linkageName: "runtime.runtimePanicAt", scope: !428, file: !428, line: 91, type: !3468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3470)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!84, !38}
!3470 = !{!3471, !3472}
!3471 = !DILocalVariable(name: "addr", arg: 1, scope: !3467, file: !428, line: 91, type: !84)
!3472 = !DILocalVariable(name: "msg", arg: 2, scope: !3467, file: !428, line: 91, type: !38)
!3473 = !DILocation(line: 91, column: 6, scope: !3467)
!3474 = !DILocation(line: 0, scope: !3467)
!3475 = !DILocation(line: 93, column: 7, scope: !3467)
!3476 = !DILocation(line: 99, column: 14, scope: !3467)
!3477 = !DILocation(line: 100, column: 20, scope: !3467)
!3478 = !DILocation(line: 100, column: 19, scope: !3467)
!3479 = !DILocation(line: 100, column: 26, scope: !3467)
!3480 = !DILocation(line: 100, column: 11, scope: !3467)
!3481 = !DILocation(line: 101, column: 14, scope: !3467)
!3482 = !DILocation(line: 105, column: 14, scope: !3467)
!3483 = !DILocation(line: 105, column: 13, scope: !3467)
!3484 = !DILocation(line: 106, column: 9, scope: !3467)
!3485 = !DILocation(line: 107, column: 7, scope: !3467)
!3486 = !DILocation(line: 108, column: 2, scope: !3467)
!3487 = !DILocation(line: 103, column: 14, scope: !3467)
!3488 = distinct !DISubprogram(name: "runtime.printstring", linkageName: "runtime.printstring", scope: !458, file: !458, line: 12, type: !1933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3489)
!3489 = !{!3490, !3491}
!3490 = !DILocalVariable(name: "s", arg: 1, scope: !3488, file: !458, line: 12, type: !38)
!3491 = !DILocalVariable(name: "i", scope: !3488, file: !458, line: 13, type: !1872)
!3492 = !DILocation(line: 12, column: 6, scope: !3488)
!3493 = !DILocation(line: 13, column: 6, scope: !3488)
!3494 = !DILocation(line: 0, scope: !3488)
!3495 = !DILocation(line: 13, column: 14, scope: !3488)
!3496 = !DILocation(line: 13, column: 22, scope: !3488)
!3497 = !DILocation(line: 13, column: 21, scope: !3488)
!3498 = !DILocation(line: 13, column: 16, scope: !3488)
!3499 = !DILocation(line: 14, column: 13, scope: !3488)
!3500 = !DILocation(line: 14, column: 11, scope: !3488)
!3501 = !DILocation(line: 14, column: 12, scope: !3488)
!3502 = !DILocation(line: 14, column: 10, scope: !3488)
!3503 = !DILocation(line: 13, column: 26, scope: !3488)
!3504 = !DILocation(line: 16, column: 2, scope: !3488)
!3505 = distinct !DISubprogram(name: "runtime.printptr", linkageName: "runtime.printptr", scope: !458, file: !458, line: 371, type: !3196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3506)
!3506 = !{!3507, !3508, !3509}
!3507 = !DILocalVariable(name: "ptr", arg: 1, scope: !3505, file: !458, line: 371, type: !43)
!3508 = !DILocalVariable(name: "i", scope: !3505, file: !458, line: 378, type: !1872)
!3509 = !DILocalVariable(name: "nibble", scope: !3505, file: !458, line: 379, type: !533)
!3510 = !DILocation(line: 371, column: 6, scope: !3505)
!3511 = !DILocation(line: 372, column: 5, scope: !3505)
!3512 = !DILocation(line: 372, column: 9, scope: !3505)
!3513 = !DILocation(line: 0, scope: !3505)
!3514 = !DILocation(line: 373, column: 14, scope: !3505)
!3515 = !DILocation(line: 374, column: 3, scope: !3505)
!3516 = !DILocation(line: 376, column: 9, scope: !3505)
!3517 = !DILocation(line: 377, column: 9, scope: !3505)
!3518 = !DILocation(line: 378, column: 6, scope: !3505)
!3519 = !DILocation(line: 371, column: 15, scope: !3505)
!3520 = !DILocation(line: 378, column: 14, scope: !3505)
!3521 = !DILocation(line: 378, column: 16, scope: !3505)
!3522 = !DILocation(line: 379, column: 18, scope: !3505)
!3523 = !DILocation(line: 379, column: 22, scope: !3505)
!3524 = !DILocation(line: 379, column: 17, scope: !3505)
!3525 = !DILocation(line: 379, column: 3, scope: !3505)
!3526 = !DILocation(line: 380, column: 6, scope: !3505)
!3527 = !DILocation(line: 380, column: 13, scope: !3505)
!3528 = !DILocation(line: 381, column: 12, scope: !3505)
!3529 = !DILocation(line: 381, column: 19, scope: !3505)
!3530 = !DILocation(line: 381, column: 11, scope: !3505)
!3531 = !DILocation(line: 385, column: 3, scope: !3505)
!3532 = !DILocation(line: 378, column: 45, scope: !3505)
!3533 = !DILocation(line: 383, column: 12, scope: !3505)
!3534 = !DILocation(line: 383, column: 19, scope: !3505)
!3535 = !DILocation(line: 383, column: 24, scope: !3505)
!3536 = !DILocation(line: 383, column: 11, scope: !3505)
!3537 = !DILocation(line: 387, column: 2, scope: !3505)
!3538 = distinct !DISubprogram(name: "runtime.printnl", linkageName: "runtime.printnl", scope: !458, file: !458, line: 286, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3539 = !DILocation(line: 0, scope: !3538)
!3540 = !DILocation(line: 288, column: 10, scope: !3538)
!3541 = !DILocation(line: 290, column: 9, scope: !3538)
!3542 = !DILocation(line: 291, column: 2, scope: !3538)
!3543 = distinct !DISubprogram(name: "runtime.putchar", linkageName: "runtime.putchar", scope: !414, file: !414, line: 214, type: !3544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3546)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!533}
!3546 = !{!3547}
!3547 = !DILocalVariable(name: "c", arg: 1, scope: !3543, file: !414, line: 214, type: !533)
!3548 = !DILocation(line: 214, column: 6, scope: !3543)
!3549 = !DILocation(line: 215, column: 2, scope: !3543)
!3550 = !DILocation(line: 215, column: 17, scope: !3543)
!3551 = !DILocation(line: 216, column: 35, scope: !3543)
!3552 = !DILocation(line: 216, column: 12, scope: !3543)
!3553 = !DILocation(line: 217, column: 2, scope: !3543)
!3554 = distinct !DISubprogram(name: "runtime.initRand", linkageName: "runtime.initRand", scope: !409, file: !409, line: 26, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3555)
!3555 = !{!3556, !3557, !3558}
!3556 = !DILocalVariable(name: "r", scope: !3554, file: !409, line: 27, type: !338)
!3557 = !DILocalVariable(name: "xorshift64State", scope: !3554, file: !409, line: 52, type: !338)
!3558 = !DILocalVariable(name: "xorshift32State", scope: !3554, file: !409, line: 32, type: !98)
!3559 = !DILocation(line: 27, column: 22, scope: !3554)
!3560 = !DILocation(line: 27, column: 2, scope: !3554)
!3561 = !DILocation(line: 28, column: 27, scope: !3554)
!3562 = !DILocation(line: 28, column: 29, scope: !3554)
!3563 = !DILocation(line: 28, column: 2, scope: !3554)
!3564 = !DILocation(line: 29, column: 27, scope: !3554)
!3565 = !DILocation(line: 29, column: 26, scope: !3554)
!3566 = !DILocation(line: 29, column: 2, scope: !3554)
!3567 = !DILocation(line: 30, column: 2, scope: !3554)
!3568 = distinct !DISubprogram(name: "runtime.hardwareRand", linkageName: "runtime.hardwareRand", scope: !3569, file: !3569, line: 137, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3570)
!3569 = !DIFile(filename: "os_linux.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3570 = !{!3571, !3572}
!3571 = !DILocalVariable(name: "read", scope: !3568, file: !3569, line: 138, type: !98)
!3572 = !DILocalVariable(name: "n", scope: !3568, file: !3569, line: 137, type: !338)
!3573 = !DILocation(line: 137, column: 22, scope: !3568)
!3574 = !DILocation(line: 138, column: 24, scope: !3568)
!3575 = !DILocation(line: 138, column: 2, scope: !3568)
!3576 = !DILocation(line: 139, column: 5, scope: !3568)
!3577 = !DILocation(line: 139, column: 10, scope: !3568)
!3578 = !DILocation(line: 0, scope: !3568)
!3579 = !DILocation(line: 140, column: 3, scope: !3568)
!3580 = !DILocation(line: 142, column: 9, scope: !3568)
!3581 = !DILocation(line: 142, column: 2, scope: !3568)
!3582 = distinct !DISubprogram(name: "runtime.getCurrentStackPointer", linkageName: "runtime.getCurrentStackPointer", scope: !3583, file: !3583, line: 26, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3583 = !DIFile(filename: "arch_amd64.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3584 = !DILocation(line: 27, column: 26, scope: !3582)
!3585 = !DILocation(line: 27, column: 16, scope: !3582)
!3586 = !DILocation(line: 27, column: 2, scope: !3582)
!3587 = distinct !DISubprogram(name: "runtime.stacksave", linkageName: "runtime.stacksave", scope: !1584, file: !1584, line: 58, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3588 = !DILocation(line: 58, column: 6, scope: !3587)
!3589 = distinct !DISubprogram(name: "runtime.memcpy", linkageName: "runtime.memcpy", scope: !1584, file: !1584, line: 42, type: !3590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3592)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!84, !84, !43}
!3592 = !{!3593, !3594, !3595}
!3593 = !DILocalVariable(name: "dst", arg: 1, scope: !3589, file: !1584, line: 42, type: !84)
!3594 = !DILocalVariable(name: "src", arg: 2, scope: !3589, file: !1584, line: 42, type: !84)
!3595 = !DILocalVariable(name: "size", arg: 3, scope: !3589, file: !1584, line: 42, type: !43)
!3596 = !DILocation(line: 42, column: 6, scope: !3589)
!3597 = distinct !DISubprogram(name: "runtime.nilPanic", linkageName: "runtime.nilPanic", scope: !428, file: !428, line: 183, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3598 = !DILocation(line: 184, column: 30, scope: !3597)
!3599 = !DILocation(line: 184, column: 16, scope: !3597)
!3600 = !DILocation(line: 185, column: 2, scope: !3597)
!3601 = distinct !DISubprogram(name: "runtime.deadlock", linkageName: "runtime.deadlock", scope: !515, file: !515, line: 42, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3602 = !DILocation(line: 44, column: 12, scope: !3601)
!3603 = !DILocation(line: 45, column: 2, scope: !3601)
!3604 = distinct !DISubprogram(name: "runtime.lookupPanic", linkageName: "runtime.lookupPanic", scope: !428, file: !428, line: 193, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!3605 = !DILocation(line: 194, column: 30, scope: !3604)
!3606 = !DILocation(line: 194, column: 16, scope: !3604)
!3607 = !DILocation(line: 195, column: 2, scope: !3604)
!3608 = distinct !DISubprogram(name: "runtime.panicOrGoexit", linkageName: "runtime.panicOrGoexit", scope: !428, file: !428, line: 58, type: !3609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3612)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!832, !3611}
!3611 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.panicState", baseType: !4)
!3612 = !{!3613, !3614, !3615, !3626, !3627}
!3613 = !DILocalVariable(name: "message", arg: 1, scope: !3608, file: !428, line: 58, type: !832)
!3614 = !DILocalVariable(name: "panicking", arg: 2, scope: !3608, file: !428, line: 58, type: !3611)
!3615 = !DILocalVariable(name: "frame", scope: !3608, file: !428, line: 65, type: !3616)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64, align: 64, dwarfAddressSpace: 0)
!3617 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.deferFrame", baseType: !3618)
!3618 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !3619)
!3619 = !{!3620, !3621, !3622, !3623, !3624, !3625}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "JumpSP", baseType: !84, size: 64, align: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "JumpPC", baseType: !84, size: 64, align: 64, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraRegs", baseType: !2556, align: 64, offset: 128)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "Previous", baseType: !3616, size: 64, align: 64, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "Panicking", baseType: !3611, size: 8, align: 8, offset: 192)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "PanicValue", baseType: !832, size: 128, align: 64, offset: 256)
!3626 = !DILocalVariable(name: "PanicValue", scope: !3608, file: !428, line: 42, type: !832)
!3627 = !DILocalVariable(name: "Panicking", scope: !3608, file: !428, line: 41, type: !3611)
!3628 = !DILocation(line: 58, column: 6, scope: !3608)
!3629 = !DILocation(line: 0, scope: !3608)
!3630 = !DILocation(line: 60, column: 7, scope: !3608)
!3631 = !DILocation(line: 64, column: 39, scope: !3608)
!3632 = !DILocation(line: 65, column: 38, scope: !3608)
!3633 = !DILocation(line: 65, column: 41, scope: !3608)
!3634 = !DILocation(line: 65, column: 3, scope: !3608)
!3635 = !DILocation(line: 66, column: 6, scope: !3608)
!3636 = !DILocation(line: 66, column: 12, scope: !3608)
!3637 = !DILocation(line: 67, column: 4, scope: !3608)
!3638 = !DILocation(line: 67, column: 23, scope: !3608)
!3639 = !DILocation(line: 67, column: 10, scope: !3608)
!3640 = !DILocation(line: 68, column: 4, scope: !3608)
!3641 = !DILocation(line: 68, column: 22, scope: !3608)
!3642 = !DILocation(line: 68, column: 10, scope: !3608)
!3643 = !DILocation(line: 69, column: 19, scope: !3608)
!3644 = !DILocation(line: 69, column: 18, scope: !3608)
!3645 = !DILocation(line: 73, column: 5, scope: !3608)
!3646 = !DILocation(line: 73, column: 15, scope: !3608)
!3647 = !DILocation(line: 76, column: 11, scope: !3608)
!3648 = !DILocation(line: 78, column: 13, scope: !3608)
!3649 = !DILocation(line: 79, column: 11, scope: !3608)
!3650 = !DILocation(line: 79, column: 10, scope: !3608)
!3651 = !DILocation(line: 80, column: 9, scope: !3608)
!3652 = !DILocation(line: 81, column: 7, scope: !3608)
!3653 = !DILocation(line: 82, column: 2, scope: !3608)
!3654 = distinct !DISubprogram(name: "runtime.printitf", linkageName: "runtime.printitf", scope: !458, file: !458, line: 293, type: !3655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3657)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!832}
!3657 = !{!3658, !3659, !3660, !3661, !3662, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3674, !3675, !3677, !3679, !3680, !3681, !3683}
!3658 = !DILocalVariable(name: "msg", arg: 1, scope: !3654, file: !458, line: 293, type: !832)
!3659 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !371)
!3660 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !1872)
!3661 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !82)
!3662 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !3663)
!3663 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!3664 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !381)
!3665 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !1699)
!3666 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !1890)
!3667 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !4)
!3668 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !90)
!3669 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !98)
!3670 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !338)
!3671 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !43)
!3672 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !3673)
!3673 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!3674 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !849)
!3675 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !3676)
!3676 = !DIBasicType(name: "complex64", size: 64, encoding: DW_ATE_complex_float)
!3677 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !3678)
!3678 = !DIBasicType(name: "complex128", size: 128, encoding: DW_ATE_complex_float)
!3679 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !38)
!3680 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !831)
!3681 = !DILocalVariable(name: "msg", scope: !3654, file: !458, line: 294, type: !3682)
!3682 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.stringer", baseType: !832)
!3683 = !DILocalVariable(name: "itf", scope: !3654, file: !458, line: 345, type: !832)
!3684 = !DILocation(line: 293, column: 6, scope: !3654)
!3685 = !DILocation(line: 294, column: 16, scope: !3654)
!3686 = !DILocation(line: 295, column: 2, scope: !3654)
!3687 = !DILocation(line: 0, scope: !3654)
!3688 = !DILocation(line: 296, column: 13, scope: !3654)
!3689 = !DILocation(line: 296, column: 12, scope: !3654)
!3690 = !DILocation(line: 352, column: 2, scope: !3654)
!3691 = !DILocation(line: 297, column: 2, scope: !3654)
!3692 = !DILocation(line: 300, column: 21, scope: !3654)
!3693 = !DILocation(line: 300, column: 14, scope: !3654)
!3694 = !DILocation(line: 302, column: 21, scope: !3654)
!3695 = !DILocation(line: 302, column: 20, scope: !3654)
!3696 = !DILocation(line: 302, column: 14, scope: !3654)
!3697 = !DILocation(line: 304, column: 2, scope: !3654)
!3698 = !DILocation(line: 305, column: 13, scope: !3654)
!3699 = !DILocation(line: 305, column: 12, scope: !3654)
!3700 = !DILocation(line: 306, column: 2, scope: !3654)
!3701 = !DILocation(line: 307, column: 14, scope: !3654)
!3702 = !DILocation(line: 307, column: 13, scope: !3654)
!3703 = !DILocation(line: 308, column: 2, scope: !3654)
!3704 = !DILocation(line: 309, column: 14, scope: !3654)
!3705 = !DILocation(line: 309, column: 13, scope: !3654)
!3706 = !DILocation(line: 310, column: 2, scope: !3654)
!3707 = !DILocation(line: 311, column: 14, scope: !3654)
!3708 = !DILocation(line: 311, column: 13, scope: !3654)
!3709 = !DILocation(line: 312, column: 2, scope: !3654)
!3710 = !DILocation(line: 315, column: 23, scope: !3654)
!3711 = !DILocation(line: 315, column: 15, scope: !3654)
!3712 = !DILocation(line: 317, column: 23, scope: !3654)
!3713 = !DILocation(line: 317, column: 22, scope: !3654)
!3714 = !DILocation(line: 317, column: 15, scope: !3654)
!3715 = !DILocation(line: 319, column: 2, scope: !3654)
!3716 = !DILocation(line: 320, column: 14, scope: !3654)
!3717 = !DILocation(line: 320, column: 13, scope: !3654)
!3718 = !DILocation(line: 321, column: 2, scope: !3654)
!3719 = !DILocation(line: 322, column: 15, scope: !3654)
!3720 = !DILocation(line: 322, column: 14, scope: !3654)
!3721 = !DILocation(line: 323, column: 2, scope: !3654)
!3722 = !DILocation(line: 324, column: 15, scope: !3654)
!3723 = !DILocation(line: 324, column: 14, scope: !3654)
!3724 = !DILocation(line: 325, column: 2, scope: !3654)
!3725 = !DILocation(line: 326, column: 15, scope: !3654)
!3726 = !DILocation(line: 326, column: 14, scope: !3654)
!3727 = !DILocation(line: 327, column: 2, scope: !3654)
!3728 = !DILocation(line: 328, column: 16, scope: !3654)
!3729 = !DILocation(line: 328, column: 15, scope: !3654)
!3730 = !DILocation(line: 329, column: 2, scope: !3654)
!3731 = !DILocation(line: 330, column: 16, scope: !3654)
!3732 = !DILocation(line: 330, column: 15, scope: !3654)
!3733 = !DILocation(line: 331, column: 2, scope: !3654)
!3734 = !DILocation(line: 332, column: 16, scope: !3654)
!3735 = !DILocation(line: 332, column: 15, scope: !3654)
!3736 = !DILocation(line: 333, column: 2, scope: !3654)
!3737 = !DILocation(line: 334, column: 18, scope: !3654)
!3738 = !DILocation(line: 334, column: 17, scope: !3654)
!3739 = !DILocation(line: 335, column: 2, scope: !3654)
!3740 = !DILocation(line: 336, column: 19, scope: !3654)
!3741 = !DILocation(line: 336, column: 18, scope: !3654)
!3742 = !DILocation(line: 337, column: 2, scope: !3654)
!3743 = !DILocation(line: 338, column: 15, scope: !3654)
!3744 = !DILocation(line: 338, column: 14, scope: !3654)
!3745 = !DILocation(line: 339, column: 2, scope: !3654)
!3746 = !DILocation(line: 340, column: 15, scope: !3654)
!3747 = !DILocation(line: 340, column: 24, scope: !3654)
!3748 = !DILocation(line: 340, column: 14, scope: !3654)
!3749 = !DILocation(line: 341, column: 2, scope: !3654)
!3750 = !DILocation(line: 342, column: 15, scope: !3654)
!3751 = !DILocation(line: 342, column: 25, scope: !3654)
!3752 = !DILocation(line: 342, column: 14, scope: !3654)
!3753 = !DILocation(line: 294, column: 9, scope: !3654)
!3754 = !DILocation(line: 345, column: 10, scope: !3654)
!3755 = !DILocation(line: 345, column: 3, scope: !3654)
!3756 = !DILocation(line: 346, column: 10, scope: !3654)
!3757 = !DILocation(line: 347, column: 28, scope: !3654)
!3758 = !DILocation(line: 347, column: 23, scope: !3654)
!3759 = !DILocation(line: 347, column: 15, scope: !3654)
!3760 = !DILocation(line: 348, column: 10, scope: !3654)
!3761 = !DILocation(line: 349, column: 24, scope: !3654)
!3762 = !DILocation(line: 349, column: 19, scope: !3654)
!3763 = !DILocation(line: 349, column: 11, scope: !3654)
!3764 = !DILocation(line: 350, column: 10, scope: !3654)
!3765 = distinct !DISubprogram(name: "runtime.printbool", linkageName: "runtime.printbool", scope: !458, file: !458, line: 389, type: !3766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3768)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!371}
!3768 = !{!3769}
!3769 = !DILocalVariable(name: "b", arg: 1, scope: !3765, file: !458, line: 389, type: !371)
!3770 = !DILocation(line: 389, column: 6, scope: !3765)
!3771 = !DILocation(line: 390, column: 5, scope: !3765)
!3772 = !DILocation(line: 0, scope: !3765)
!3773 = !DILocation(line: 391, column: 14, scope: !3765)
!3774 = !DILocation(line: 395, column: 2, scope: !3765)
!3775 = !DILocation(line: 393, column: 14, scope: !3765)
!3776 = distinct !DISubprogram(name: "runtime.printint64", linkageName: "runtime.printint64", scope: !458, file: !458, line: 94, type: !3777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3779)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!1699}
!3779 = !{!3780}
!3780 = !DILocalVariable(name: "n", arg: 1, scope: !3776, file: !458, line: 94, type: !1699)
!3781 = !DILocation(line: 94, column: 6, scope: !3776)
!3782 = !DILocation(line: 95, column: 5, scope: !3776)
!3783 = !DILocation(line: 95, column: 7, scope: !3776)
!3784 = !DILocation(line: 0, scope: !3776)
!3785 = !DILocation(line: 96, column: 10, scope: !3776)
!3786 = !DILocation(line: 97, column: 8, scope: !3776)
!3787 = !DILocation(line: 97, column: 7, scope: !3776)
!3788 = !DILocation(line: 97, column: 3, scope: !3776)
!3789 = !DILocation(line: 94, column: 17, scope: !3776)
!3790 = !DILocation(line: 99, column: 21, scope: !3776)
!3791 = !DILocation(line: 99, column: 13, scope: !3776)
!3792 = !DILocation(line: 100, column: 2, scope: !3776)
!3793 = distinct !DISubprogram(name: "runtime.printint32", linkageName: "runtime.printint32", scope: !458, file: !458, line: 65, type: !3392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3794)
!3794 = !{!3795}
!3795 = !DILocalVariable(name: "n", arg: 1, scope: !3793, file: !458, line: 65, type: !381)
!3796 = !DILocation(line: 65, column: 6, scope: !3793)
!3797 = !DILocation(line: 68, column: 5, scope: !3793)
!3798 = !DILocation(line: 68, column: 7, scope: !3793)
!3799 = !DILocation(line: 0, scope: !3793)
!3800 = !DILocation(line: 69, column: 10, scope: !3793)
!3801 = !DILocation(line: 70, column: 8, scope: !3793)
!3802 = !DILocation(line: 70, column: 7, scope: !3793)
!3803 = !DILocation(line: 70, column: 3, scope: !3793)
!3804 = !DILocation(line: 65, column: 17, scope: !3793)
!3805 = !DILocation(line: 72, column: 21, scope: !3793)
!3806 = !DILocation(line: 72, column: 13, scope: !3793)
!3807 = !DILocation(line: 73, column: 2, scope: !3793)
!3808 = distinct !DISubprogram(name: "runtime.printint8", linkageName: "runtime.printint8", scope: !458, file: !458, line: 30, type: !3809, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3811)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!82}
!3811 = !{!3812}
!3812 = !DILocalVariable(name: "n", arg: 1, scope: !3808, file: !458, line: 30, type: !82)
!3813 = !DILocation(line: 30, column: 6, scope: !3808)
!3814 = !DILocation(line: 0, scope: !3808)
!3815 = !DILocation(line: 32, column: 20, scope: !3808)
!3816 = !DILocation(line: 32, column: 19, scope: !3808)
!3817 = !DILocation(line: 32, column: 13, scope: !3808)
!3818 = !DILocation(line: 40, column: 2, scope: !3808)
!3819 = !DILocation(line: 34, column: 6, scope: !3808)
!3820 = !DILocation(line: 34, column: 8, scope: !3808)
!3821 = !DILocation(line: 35, column: 11, scope: !3808)
!3822 = !DILocation(line: 36, column: 9, scope: !3808)
!3823 = !DILocation(line: 36, column: 8, scope: !3808)
!3824 = !DILocation(line: 36, column: 4, scope: !3808)
!3825 = !DILocation(line: 30, column: 16, scope: !3808)
!3826 = !DILocation(line: 38, column: 20, scope: !3808)
!3827 = !DILocation(line: 38, column: 13, scope: !3808)
!3828 = distinct !DISubprogram(name: "runtime.printint16", linkageName: "runtime.printint16", scope: !458, file: !458, line: 57, type: !3829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3831)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!3663}
!3831 = !{!3832}
!3832 = !DILocalVariable(name: "n", arg: 1, scope: !3828, file: !458, line: 57, type: !3663)
!3833 = !DILocation(line: 57, column: 6, scope: !3828)
!3834 = !DILocation(line: 58, column: 19, scope: !3828)
!3835 = !DILocation(line: 58, column: 18, scope: !3828)
!3836 = !DILocation(line: 58, column: 12, scope: !3828)
!3837 = !DILocation(line: 59, column: 2, scope: !3828)
!3838 = distinct !DISubprogram(name: "runtime.printuint64", linkageName: "runtime.printuint64", scope: !458, file: !458, line: 76, type: !3839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3841)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!338}
!3841 = !{!3842, !3843, !3844, !3845, !3846}
!3842 = !DILocalVariable(name: "n", arg: 1, scope: !3838, file: !458, line: 76, type: !338)
!3843 = !DILocalVariable(name: "firstdigit", scope: !3838, file: !458, line: 79, type: !1872)
!3844 = !DILocalVariable(name: "i", scope: !3838, file: !458, line: 80, type: !1872)
!3845 = !DILocalVariable(name: "digit", scope: !3838, file: !458, line: 81, type: !533)
!3846 = !DILocalVariable(name: "i", scope: !3838, file: !458, line: 89, type: !1872)
!3847 = !DILocation(line: 76, column: 6, scope: !3838)
!3848 = !DILocation(line: 77, column: 2, scope: !3838)
!3849 = !DILocation(line: 79, column: 2, scope: !3838)
!3850 = !DILocation(line: 80, column: 6, scope: !3838)
!3851 = !DILocation(line: 0, scope: !3838)
!3852 = !DILocation(line: 76, column: 18, scope: !3838)
!3853 = !DILocation(line: 80, column: 15, scope: !3838)
!3854 = !DILocation(line: 80, column: 17, scope: !3838)
!3855 = !DILocation(line: 81, column: 17, scope: !3838)
!3856 = !DILocation(line: 81, column: 18, scope: !3838)
!3857 = !DILocation(line: 81, column: 22, scope: !3838)
!3858 = !DILocation(line: 81, column: 16, scope: !3838)
!3859 = !DILocation(line: 81, column: 3, scope: !3838)
!3860 = !DILocation(line: 82, column: 10, scope: !3838)
!3861 = !DILocation(line: 82, column: 15, scope: !3838)
!3862 = !DILocation(line: 82, column: 9, scope: !3838)
!3863 = !DILocation(line: 83, column: 6, scope: !3838)
!3864 = !DILocation(line: 83, column: 12, scope: !3838)
!3865 = !DILocation(line: 84, column: 17, scope: !3838)
!3866 = !DILocation(line: 84, column: 4, scope: !3838)
!3867 = !DILocation(line: 86, column: 3, scope: !3838)
!3868 = !DILocation(line: 80, column: 23, scope: !3838)
!3869 = !DILocation(line: 89, column: 11, scope: !3838)
!3870 = !DILocation(line: 89, column: 6, scope: !3838)
!3871 = !DILocation(line: 89, column: 23, scope: !3838)
!3872 = !DILocation(line: 89, column: 25, scope: !3838)
!3873 = !DILocation(line: 90, column: 18, scope: !3838)
!3874 = !DILocation(line: 90, column: 17, scope: !3838)
!3875 = !DILocation(line: 90, column: 10, scope: !3838)
!3876 = !DILocation(line: 89, column: 31, scope: !3838)
!3877 = !DILocation(line: 92, column: 2, scope: !3838)
!3878 = distinct !DISubprogram(name: "runtime.printuint32", linkageName: "runtime.printuint32", scope: !458, file: !458, line: 61, type: !3307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3879)
!3879 = !{!3880}
!3880 = !DILocalVariable(name: "n", arg: 1, scope: !3878, file: !458, line: 61, type: !98)
!3881 = !DILocation(line: 61, column: 6, scope: !3878)
!3882 = !DILocation(line: 62, column: 21, scope: !3878)
!3883 = !DILocation(line: 62, column: 20, scope: !3878)
!3884 = !DILocation(line: 62, column: 13, scope: !3878)
!3885 = !DILocation(line: 63, column: 2, scope: !3878)
!3886 = distinct !DISubprogram(name: "runtime.printuint8", linkageName: "runtime.printuint8", scope: !458, file: !458, line: 18, type: !3887, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3889)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!4}
!3889 = !{!3890, !3891}
!3890 = !DILocalVariable(name: "n", arg: 1, scope: !3886, file: !458, line: 18, type: !4)
!3891 = !DILocalVariable(name: "prevdigits", scope: !3886, file: !458, line: 22, type: !4)
!3892 = !DILocation(line: 18, column: 6, scope: !3886)
!3893 = !DILocation(line: 0, scope: !3886)
!3894 = !DILocation(line: 20, column: 22, scope: !3886)
!3895 = !DILocation(line: 20, column: 21, scope: !3886)
!3896 = !DILocation(line: 20, column: 14, scope: !3886)
!3897 = !DILocation(line: 28, column: 2, scope: !3886)
!3898 = !DILocation(line: 22, column: 17, scope: !3886)
!3899 = !DILocation(line: 22, column: 19, scope: !3886)
!3900 = !DILocation(line: 22, column: 3, scope: !3886)
!3901 = !DILocation(line: 23, column: 6, scope: !3886)
!3902 = !DILocation(line: 23, column: 17, scope: !3886)
!3903 = !DILocation(line: 24, column: 15, scope: !3886)
!3904 = !DILocation(line: 24, column: 14, scope: !3886)
!3905 = !DILocation(line: 26, column: 17, scope: !3886)
!3906 = !DILocation(line: 26, column: 19, scope: !3886)
!3907 = !DILocation(line: 26, column: 25, scope: !3886)
!3908 = !DILocation(line: 26, column: 10, scope: !3886)
!3909 = distinct !DISubprogram(name: "runtime.printuint16", linkageName: "runtime.printuint16", scope: !458, file: !458, line: 53, type: !3910, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3912)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!90}
!3912 = !{!3913}
!3913 = !DILocalVariable(name: "n", arg: 1, scope: !3909, file: !458, line: 53, type: !90)
!3914 = !DILocation(line: 53, column: 6, scope: !3909)
!3915 = !DILocation(line: 54, column: 21, scope: !3909)
!3916 = !DILocation(line: 54, column: 20, scope: !3909)
!3917 = !DILocation(line: 54, column: 13, scope: !3909)
!3918 = !DILocation(line: 55, column: 2, scope: !3909)
!3919 = distinct !DISubprogram(name: "runtime.printuintptr", linkageName: "runtime.printuintptr", scope: !458, file: !458, line: 42, type: !3196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3920)
!3920 = !{!3921}
!3921 = !DILocalVariable(name: "n", arg: 1, scope: !3919, file: !458, line: 42, type: !43)
!3922 = !DILocation(line: 42, column: 6, scope: !3919)
!3923 = !DILocation(line: 0, scope: !3919)
!3924 = !DILocation(line: 45, column: 22, scope: !3919)
!3925 = !DILocation(line: 45, column: 21, scope: !3919)
!3926 = !DILocation(line: 45, column: 14, scope: !3919)
!3927 = !DILocation(line: 51, column: 2, scope: !3919)
!3928 = !DILocation(line: 47, column: 22, scope: !3919)
!3929 = !DILocation(line: 47, column: 21, scope: !3919)
!3930 = !DILocation(line: 47, column: 14, scope: !3919)
!3931 = !DILocation(line: 49, column: 22, scope: !3919)
!3932 = !DILocation(line: 49, column: 14, scope: !3919)
!3933 = distinct !DISubprogram(name: "runtime.printfloat32", linkageName: "runtime.printfloat32", scope: !458, file: !458, line: 114, type: !3934, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !3936)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!3673}
!3936 = !{!3937, !3938, !3939, !3940, !3941, !3943, !3944, !3945}
!3937 = !DILocalVariable(name: "v", arg: 1, scope: !3933, file: !458, line: 114, type: !3673)
!3938 = !DILocalVariable(name: "e", scope: !3933, file: !458, line: 130, type: !1872)
!3939 = !DILocalVariable(name: "i", scope: !3933, file: !458, line: 164, type: !1872)
!3940 = !DILocalVariable(name: "s", scope: !3933, file: !458, line: 165, type: !1872)
!3941 = !DILocalVariable(name: "buf", scope: !3933, file: !458, line: 128, type: !3942)
!3942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 112, align: 8, elements: !113)
!3943 = !DILocalVariable(name: "c", scope: !3933, file: !458, line: 183, type: !533)
!3944 = !DILocalVariable(name: "h", scope: !3933, file: !458, line: 152, type: !3673)
!3945 = !DILocalVariable(name: "i", scope: !3933, file: !458, line: 153, type: !1872)
!3946 = !DILocation(line: 114, column: 6, scope: !3933)
!3947 = !DILocation(line: 116, column: 7, scope: !3933)
!3948 = !DILocation(line: 116, column: 12, scope: !3933)
!3949 = !DILocation(line: 116, column: 9, scope: !3933)
!3950 = !DILocation(line: 0, scope: !3933)
!3951 = !DILocation(line: 117, column: 14, scope: !3933)
!3952 = !DILocation(line: 118, column: 3, scope: !3933)
!3953 = !DILocation(line: 119, column: 7, scope: !3933)
!3954 = !DILocation(line: 119, column: 9, scope: !3933)
!3955 = !DILocation(line: 119, column: 8, scope: !3933)
!3956 = !DILocation(line: 119, column: 14, scope: !3933)
!3957 = !DILocation(line: 119, column: 11, scope: !3933)
!3958 = !DILocation(line: 119, column: 19, scope: !3933)
!3959 = !DILocation(line: 119, column: 21, scope: !3933)
!3960 = !DILocation(line: 119, column: 16, scope: !3933)
!3961 = !DILocation(line: 120, column: 14, scope: !3933)
!3962 = !DILocation(line: 121, column: 3, scope: !3933)
!3963 = !DILocation(line: 122, column: 7, scope: !3933)
!3964 = !DILocation(line: 122, column: 9, scope: !3933)
!3965 = !DILocation(line: 122, column: 8, scope: !3933)
!3966 = !DILocation(line: 122, column: 14, scope: !3933)
!3967 = !DILocation(line: 122, column: 11, scope: !3933)
!3968 = !DILocation(line: 122, column: 19, scope: !3933)
!3969 = !DILocation(line: 122, column: 21, scope: !3933)
!3970 = !DILocation(line: 122, column: 16, scope: !3933)
!3971 = !DILocation(line: 123, column: 14, scope: !3933)
!3972 = !DILocation(line: 124, column: 3, scope: !3933)
!3973 = !DILocation(line: 129, column: 5, scope: !3933)
!3974 = !DILocation(line: 130, column: 2, scope: !3933)
!3975 = !DILocation(line: 131, column: 5, scope: !3933)
!3976 = !DILocation(line: 131, column: 7, scope: !3933)
!3977 = !DILocation(line: 132, column: 8, scope: !3933)
!3978 = !DILocation(line: 132, column: 7, scope: !3933)
!3979 = !DILocation(line: 132, column: 10, scope: !3933)
!3980 = !DILocation(line: 133, column: 7, scope: !3933)
!3981 = !DILocation(line: 114, column: 19, scope: !3933)
!3982 = !DILocation(line: 164, column: 6, scope: !3933)
!3983 = !DILocation(line: 164, column: 14, scope: !3933)
!3984 = !DILocation(line: 164, column: 16, scope: !3933)
!3985 = !DILocation(line: 165, column: 12, scope: !3933)
!3986 = !DILocation(line: 165, column: 11, scope: !3933)
!3987 = !DILocation(line: 165, column: 3, scope: !3933)
!3988 = !DILocation(line: 166, column: 7, scope: !3933)
!3989 = !DILocation(line: 166, column: 8, scope: !3933)
!3990 = !DILocation(line: 166, column: 19, scope: !3933)
!3991 = !DILocation(line: 166, column: 21, scope: !3933)
!3992 = !DILocation(line: 166, column: 18, scope: !3933)
!3993 = !DILocation(line: 166, column: 6, scope: !3933)
!3994 = !DILocation(line: 167, column: 16, scope: !3933)
!3995 = !DILocation(line: 167, column: 15, scope: !3933)
!3996 = !DILocation(line: 167, column: 3, scope: !3933)
!3997 = !DILocation(line: 168, column: 3, scope: !3933)
!3998 = !DILocation(line: 164, column: 21, scope: !3933)
!3999 = !DILocation(line: 170, column: 14, scope: !3933)
!4000 = !DILocation(line: 170, column: 5, scope: !3933)
!4001 = !DILocation(line: 171, column: 5, scope: !3933)
!4002 = !DILocation(line: 173, column: 5, scope: !3933)
!4003 = !DILocation(line: 174, column: 5, scope: !3933)
!4004 = !DILocation(line: 175, column: 5, scope: !3933)
!4005 = !DILocation(line: 175, column: 7, scope: !3933)
!4006 = !DILocation(line: 176, column: 8, scope: !3933)
!4007 = !DILocation(line: 176, column: 7, scope: !3933)
!4008 = !DILocation(line: 176, column: 3, scope: !3933)
!4009 = !DILocation(line: 177, column: 6, scope: !3933)
!4010 = !DILocation(line: 180, column: 18, scope: !3933)
!4011 = !DILocation(line: 180, column: 19, scope: !3933)
!4012 = !DILocation(line: 180, column: 17, scope: !3933)
!4013 = !DILocation(line: 180, column: 25, scope: !3933)
!4014 = !DILocation(line: 180, column: 5, scope: !3933)
!4015 = !DILocation(line: 181, column: 18, scope: !3933)
!4016 = !DILocation(line: 181, column: 19, scope: !3933)
!4017 = !DILocation(line: 181, column: 17, scope: !3933)
!4018 = !DILocation(line: 181, column: 23, scope: !3933)
!4019 = !DILocation(line: 181, column: 27, scope: !3933)
!4020 = !DILocation(line: 181, column: 5, scope: !3933)
!4021 = !DILocation(line: 182, column: 18, scope: !3933)
!4022 = !DILocation(line: 182, column: 19, scope: !3933)
!4023 = !DILocation(line: 182, column: 17, scope: !3933)
!4024 = !DILocation(line: 182, column: 24, scope: !3933)
!4025 = !DILocation(line: 182, column: 5, scope: !3933)
!4026 = !DILocation(line: 183, column: 20, scope: !3933)
!4027 = !DILocation(line: 183, column: 9, scope: !3933)
!4028 = !DILocation(line: 184, column: 11, scope: !3933)
!4029 = !DILocation(line: 184, column: 10, scope: !3933)
!4030 = !DILocation(line: 186, column: 2, scope: !3933)
!4031 = !DILocation(line: 136, column: 6, scope: !3933)
!4032 = !DILocation(line: 136, column: 8, scope: !3933)
!4033 = !DILocation(line: 137, column: 9, scope: !3933)
!4034 = !DILocation(line: 137, column: 8, scope: !3933)
!4035 = !DILocation(line: 137, column: 4, scope: !3933)
!4036 = !DILocation(line: 138, column: 7, scope: !3933)
!4037 = !DILocation(line: 142, column: 7, scope: !3933)
!4038 = !DILocation(line: 142, column: 9, scope: !3933)
!4039 = !DILocation(line: 143, column: 4, scope: !3933)
!4040 = !DILocation(line: 144, column: 4, scope: !3933)
!4041 = !DILocation(line: 146, column: 7, scope: !3933)
!4042 = !DILocation(line: 146, column: 9, scope: !3933)
!4043 = !DILocation(line: 147, column: 4, scope: !3933)
!4044 = !DILocation(line: 148, column: 4, scope: !3933)
!4045 = !DILocation(line: 152, column: 3, scope: !3933)
!4046 = !DILocation(line: 153, column: 7, scope: !3933)
!4047 = !DILocation(line: 153, column: 15, scope: !3933)
!4048 = !DILocation(line: 153, column: 17, scope: !3933)
!4049 = !DILocation(line: 154, column: 4, scope: !3933)
!4050 = !DILocation(line: 153, column: 22, scope: !3933)
!4051 = !DILocation(line: 156, column: 8, scope: !3933)
!4052 = !DILocation(line: 156, column: 3, scope: !3933)
!4053 = !DILocation(line: 157, column: 6, scope: !3933)
!4054 = !DILocation(line: 157, column: 8, scope: !3933)
!4055 = !DILocation(line: 158, column: 4, scope: !3933)
!4056 = !DILocation(line: 159, column: 4, scope: !3933)
!4057 = distinct !DISubprogram(name: "runtime.printfloat64", linkageName: "runtime.printfloat64", scope: !458, file: !458, line: 194, type: !4058, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4060)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!849}
!4060 = !{!4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068}
!4061 = !DILocalVariable(name: "v", arg: 1, scope: !4057, file: !458, line: 194, type: !849)
!4062 = !DILocalVariable(name: "e", scope: !4057, file: !458, line: 210, type: !1872)
!4063 = !DILocalVariable(name: "i", scope: !4057, file: !458, line: 244, type: !1872)
!4064 = !DILocalVariable(name: "s", scope: !4057, file: !458, line: 245, type: !1872)
!4065 = !DILocalVariable(name: "buf", scope: !4057, file: !458, line: 208, type: !3942)
!4066 = !DILocalVariable(name: "c", scope: !4057, file: !458, line: 263, type: !533)
!4067 = !DILocalVariable(name: "h", scope: !4057, file: !458, line: 232, type: !849)
!4068 = !DILocalVariable(name: "i", scope: !4057, file: !458, line: 233, type: !1872)
!4069 = !DILocation(line: 194, column: 6, scope: !4057)
!4070 = !DILocation(line: 196, column: 7, scope: !4057)
!4071 = !DILocation(line: 196, column: 12, scope: !4057)
!4072 = !DILocation(line: 196, column: 9, scope: !4057)
!4073 = !DILocation(line: 0, scope: !4057)
!4074 = !DILocation(line: 197, column: 14, scope: !4057)
!4075 = !DILocation(line: 198, column: 3, scope: !4057)
!4076 = !DILocation(line: 199, column: 7, scope: !4057)
!4077 = !DILocation(line: 199, column: 9, scope: !4057)
!4078 = !DILocation(line: 199, column: 8, scope: !4057)
!4079 = !DILocation(line: 199, column: 14, scope: !4057)
!4080 = !DILocation(line: 199, column: 11, scope: !4057)
!4081 = !DILocation(line: 199, column: 19, scope: !4057)
!4082 = !DILocation(line: 199, column: 21, scope: !4057)
!4083 = !DILocation(line: 199, column: 16, scope: !4057)
!4084 = !DILocation(line: 200, column: 14, scope: !4057)
!4085 = !DILocation(line: 201, column: 3, scope: !4057)
!4086 = !DILocation(line: 202, column: 7, scope: !4057)
!4087 = !DILocation(line: 202, column: 9, scope: !4057)
!4088 = !DILocation(line: 202, column: 8, scope: !4057)
!4089 = !DILocation(line: 202, column: 14, scope: !4057)
!4090 = !DILocation(line: 202, column: 11, scope: !4057)
!4091 = !DILocation(line: 202, column: 19, scope: !4057)
!4092 = !DILocation(line: 202, column: 21, scope: !4057)
!4093 = !DILocation(line: 202, column: 16, scope: !4057)
!4094 = !DILocation(line: 203, column: 14, scope: !4057)
!4095 = !DILocation(line: 204, column: 3, scope: !4057)
!4096 = !DILocation(line: 209, column: 5, scope: !4057)
!4097 = !DILocation(line: 210, column: 2, scope: !4057)
!4098 = !DILocation(line: 211, column: 5, scope: !4057)
!4099 = !DILocation(line: 211, column: 7, scope: !4057)
!4100 = !DILocation(line: 212, column: 8, scope: !4057)
!4101 = !DILocation(line: 212, column: 7, scope: !4057)
!4102 = !DILocation(line: 212, column: 10, scope: !4057)
!4103 = !DILocation(line: 213, column: 7, scope: !4057)
!4104 = !DILocation(line: 194, column: 19, scope: !4057)
!4105 = !DILocation(line: 244, column: 6, scope: !4057)
!4106 = !DILocation(line: 244, column: 14, scope: !4057)
!4107 = !DILocation(line: 244, column: 16, scope: !4057)
!4108 = !DILocation(line: 245, column: 12, scope: !4057)
!4109 = !DILocation(line: 245, column: 11, scope: !4057)
!4110 = !DILocation(line: 245, column: 3, scope: !4057)
!4111 = !DILocation(line: 246, column: 7, scope: !4057)
!4112 = !DILocation(line: 246, column: 8, scope: !4057)
!4113 = !DILocation(line: 246, column: 19, scope: !4057)
!4114 = !DILocation(line: 246, column: 21, scope: !4057)
!4115 = !DILocation(line: 246, column: 18, scope: !4057)
!4116 = !DILocation(line: 246, column: 6, scope: !4057)
!4117 = !DILocation(line: 247, column: 16, scope: !4057)
!4118 = !DILocation(line: 247, column: 15, scope: !4057)
!4119 = !DILocation(line: 247, column: 3, scope: !4057)
!4120 = !DILocation(line: 248, column: 3, scope: !4057)
!4121 = !DILocation(line: 244, column: 21, scope: !4057)
!4122 = !DILocation(line: 250, column: 14, scope: !4057)
!4123 = !DILocation(line: 250, column: 5, scope: !4057)
!4124 = !DILocation(line: 251, column: 5, scope: !4057)
!4125 = !DILocation(line: 253, column: 5, scope: !4057)
!4126 = !DILocation(line: 254, column: 5, scope: !4057)
!4127 = !DILocation(line: 255, column: 5, scope: !4057)
!4128 = !DILocation(line: 255, column: 7, scope: !4057)
!4129 = !DILocation(line: 256, column: 8, scope: !4057)
!4130 = !DILocation(line: 256, column: 7, scope: !4057)
!4131 = !DILocation(line: 256, column: 3, scope: !4057)
!4132 = !DILocation(line: 257, column: 6, scope: !4057)
!4133 = !DILocation(line: 260, column: 18, scope: !4057)
!4134 = !DILocation(line: 260, column: 19, scope: !4057)
!4135 = !DILocation(line: 260, column: 17, scope: !4057)
!4136 = !DILocation(line: 260, column: 25, scope: !4057)
!4137 = !DILocation(line: 260, column: 5, scope: !4057)
!4138 = !DILocation(line: 261, column: 18, scope: !4057)
!4139 = !DILocation(line: 261, column: 19, scope: !4057)
!4140 = !DILocation(line: 261, column: 17, scope: !4057)
!4141 = !DILocation(line: 261, column: 23, scope: !4057)
!4142 = !DILocation(line: 261, column: 27, scope: !4057)
!4143 = !DILocation(line: 261, column: 5, scope: !4057)
!4144 = !DILocation(line: 262, column: 18, scope: !4057)
!4145 = !DILocation(line: 262, column: 19, scope: !4057)
!4146 = !DILocation(line: 262, column: 17, scope: !4057)
!4147 = !DILocation(line: 262, column: 24, scope: !4057)
!4148 = !DILocation(line: 262, column: 5, scope: !4057)
!4149 = !DILocation(line: 263, column: 20, scope: !4057)
!4150 = !DILocation(line: 263, column: 9, scope: !4057)
!4151 = !DILocation(line: 264, column: 11, scope: !4057)
!4152 = !DILocation(line: 264, column: 10, scope: !4057)
!4153 = !DILocation(line: 266, column: 2, scope: !4057)
!4154 = !DILocation(line: 216, column: 6, scope: !4057)
!4155 = !DILocation(line: 216, column: 8, scope: !4057)
!4156 = !DILocation(line: 217, column: 9, scope: !4057)
!4157 = !DILocation(line: 217, column: 8, scope: !4057)
!4158 = !DILocation(line: 217, column: 4, scope: !4057)
!4159 = !DILocation(line: 218, column: 7, scope: !4057)
!4160 = !DILocation(line: 222, column: 7, scope: !4057)
!4161 = !DILocation(line: 222, column: 9, scope: !4057)
!4162 = !DILocation(line: 223, column: 4, scope: !4057)
!4163 = !DILocation(line: 224, column: 4, scope: !4057)
!4164 = !DILocation(line: 226, column: 7, scope: !4057)
!4165 = !DILocation(line: 226, column: 9, scope: !4057)
!4166 = !DILocation(line: 227, column: 4, scope: !4057)
!4167 = !DILocation(line: 228, column: 4, scope: !4057)
!4168 = !DILocation(line: 232, column: 3, scope: !4057)
!4169 = !DILocation(line: 233, column: 7, scope: !4057)
!4170 = !DILocation(line: 233, column: 15, scope: !4057)
!4171 = !DILocation(line: 233, column: 17, scope: !4057)
!4172 = !DILocation(line: 234, column: 4, scope: !4057)
!4173 = !DILocation(line: 233, column: 22, scope: !4057)
!4174 = !DILocation(line: 236, column: 8, scope: !4057)
!4175 = !DILocation(line: 236, column: 3, scope: !4057)
!4176 = !DILocation(line: 237, column: 6, scope: !4057)
!4177 = !DILocation(line: 237, column: 8, scope: !4057)
!4178 = !DILocation(line: 238, column: 4, scope: !4057)
!4179 = !DILocation(line: 239, column: 4, scope: !4057)
!4180 = distinct !DISubprogram(name: "runtime.printcomplex64", linkageName: "runtime.printcomplex64", scope: !458, file: !458, line: 268, type: !4181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4183)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!3676}
!4183 = !{!4184}
!4184 = !DILocalVariable(name: "c", arg: 1, scope: !4180, file: !458, line: 268, type: !3676)
!4185 = !DILocation(line: 268, column: 6, scope: !4180)
!4186 = !DILocation(line: 269, column: 9, scope: !4180)
!4187 = !DILocation(line: 270, column: 20, scope: !4180)
!4188 = !DILocation(line: 270, column: 19, scope: !4180)
!4189 = !DILocation(line: 270, column: 14, scope: !4180)
!4190 = !DILocation(line: 271, column: 20, scope: !4180)
!4191 = !DILocation(line: 271, column: 19, scope: !4180)
!4192 = !DILocation(line: 271, column: 14, scope: !4180)
!4193 = !DILocation(line: 272, column: 13, scope: !4180)
!4194 = !DILocation(line: 273, column: 2, scope: !4180)
!4195 = distinct !DISubprogram(name: "runtime.printcomplex128", linkageName: "runtime.printcomplex128", scope: !458, file: !458, line: 275, type: !4196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4198)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!3678}
!4198 = !{!4199}
!4199 = !DILocalVariable(name: "c", arg: 1, scope: !4195, file: !458, line: 275, type: !3678)
!4200 = !DILocation(line: 275, column: 6, scope: !4195)
!4201 = !DILocation(line: 276, column: 9, scope: !4195)
!4202 = !DILocation(line: 277, column: 20, scope: !4195)
!4203 = !DILocation(line: 277, column: 19, scope: !4195)
!4204 = !DILocation(line: 277, column: 14, scope: !4195)
!4205 = !DILocation(line: 278, column: 20, scope: !4195)
!4206 = !DILocation(line: 278, column: 19, scope: !4195)
!4207 = !DILocation(line: 278, column: 14, scope: !4195)
!4208 = !DILocation(line: 279, column: 13, scope: !4195)
!4209 = !DILocation(line: 280, column: 2, scope: !4195)
!4210 = distinct !DISubprogram(name: "runtime._panic", linkageName: "runtime._panic", scope: !428, file: !428, line: 54, type: !3655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4211)
!4211 = !{!4212}
!4212 = !DILocalVariable(name: "message", arg: 1, scope: !4210, file: !428, line: 54, type: !832)
!4213 = !DILocation(line: 54, column: 6, scope: !4210)
!4214 = !DILocation(line: 55, column: 16, scope: !4210)
!4215 = !DILocation(line: 55, column: 15, scope: !4210)
!4216 = !DILocation(line: 56, column: 2, scope: !4210)
!4217 = distinct !DISubprogram(name: "runtime.stringEqual", linkageName: "runtime.stringEqual", scope: !4218, file: !4218, line: 24, type: !4219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4221)
!4218 = !DIFile(filename: "string.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!38, !38}
!4221 = !{!4222, !4223, !4224}
!4222 = !DILocalVariable(name: "x", arg: 1, scope: !4217, file: !4218, line: 24, type: !38)
!4223 = !DILocalVariable(name: "y", arg: 2, scope: !4217, file: !4218, line: 24, type: !38)
!4224 = !DILocalVariable(name: "i", scope: !4217, file: !4218, line: 28, type: !1872)
!4225 = !DILocation(line: 24, column: 6, scope: !4217)
!4226 = !DILocation(line: 25, column: 9, scope: !4217)
!4227 = !DILocation(line: 25, column: 8, scope: !4217)
!4228 = !DILocation(line: 25, column: 19, scope: !4217)
!4229 = !DILocation(line: 25, column: 18, scope: !4217)
!4230 = !DILocation(line: 25, column: 12, scope: !4217)
!4231 = !DILocation(line: 0, scope: !4217)
!4232 = !DILocation(line: 26, column: 3, scope: !4217)
!4233 = !DILocation(line: 28, column: 6, scope: !4217)
!4234 = !DILocation(line: 28, column: 14, scope: !4217)
!4235 = !DILocation(line: 28, column: 22, scope: !4217)
!4236 = !DILocation(line: 28, column: 21, scope: !4217)
!4237 = !DILocation(line: 28, column: 16, scope: !4217)
!4238 = !DILocation(line: 29, column: 8, scope: !4217)
!4239 = !DILocation(line: 29, column: 6, scope: !4217)
!4240 = !DILocation(line: 29, column: 7, scope: !4217)
!4241 = !DILocation(line: 29, column: 16, scope: !4217)
!4242 = !DILocation(line: 29, column: 14, scope: !4217)
!4243 = !DILocation(line: 29, column: 15, scope: !4217)
!4244 = !DILocation(line: 29, column: 11, scope: !4217)
!4245 = !DILocation(line: 30, column: 4, scope: !4217)
!4246 = !DILocation(line: 28, column: 26, scope: !4217)
!4247 = !DILocation(line: 33, column: 2, scope: !4217)
!4248 = distinct !DISubprogram(name: "runtime.slicePanic", linkageName: "runtime.slicePanic", scope: !428, file: !428, line: 198, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4249 = !DILocation(line: 199, column: 30, scope: !4248)
!4250 = !DILocation(line: 199, column: 16, scope: !4248)
!4251 = !DILocation(line: 200, column: 2, scope: !4248)
!4252 = distinct !DISubprogram(name: "runtime.fminimum", linkageName: "fminimum", scope: !1560, file: !1560, line: 60, type: !4253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4255)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!849, !849}
!4255 = !{!4256, !4257}
!4256 = !DILocalVariable(name: "x", arg: 1, scope: !4252, file: !1560, line: 60, type: !849)
!4257 = !DILocalVariable(name: "y", arg: 2, scope: !4252, file: !1560, line: 60, type: !849)
!4258 = !DILocation(line: 60, column: 6, scope: !4252)
!4259 = !DILocation(line: 61, column: 24, scope: !4252)
!4260 = !DILocation(line: 61, column: 27, scope: !4252)
!4261 = !DILocation(line: 61, column: 23, scope: !4252)
!4262 = !DILocation(line: 61, column: 2, scope: !4252)
!4263 = distinct !DISubprogram(name: "runtime.minimumFloat64", linkageName: "runtime.minimumFloat64", scope: !1560, file: !1560, line: 87, type: !4253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4264)
!4264 = !{!4265, !4266}
!4265 = !DILocalVariable(name: "x", arg: 1, scope: !4263, file: !1560, line: 87, type: !849)
!4266 = !DILocalVariable(name: "y", arg: 2, scope: !4263, file: !1560, line: 87, type: !849)
!4267 = !DILocation(line: 87, column: 6, scope: !4263)
!4268 = !DILocation(line: 88, column: 38, scope: !4263)
!4269 = !DILocation(line: 88, column: 41, scope: !4263)
!4270 = !DILocation(line: 88, column: 37, scope: !4263)
!4271 = !DILocation(line: 88, column: 2, scope: !4263)
!4272 = distinct !DISubprogram(name: "runtime.minimumFloat[float64 int64]", linkageName: "runtime.minimumFloat[float64 int64]", scope: !1560, file: !1560, line: 101, type: !4273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4275)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!849, !849, !1699, !1699}
!4275 = !{!4276, !4277, !4278, !4279, !4280, !4281}
!4276 = !DILocalVariable(name: "x", arg: 1, scope: !4272, file: !1560, line: 101, type: !849)
!4277 = !DILocalVariable(name: "y", arg: 2, scope: !4272, file: !1560, line: 101, type: !849)
!4278 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4272, file: !1560, line: 101, type: !1699)
!4279 = !DILocalVariable(name: "magMask", arg: 4, scope: !4272, file: !1560, line: 101, type: !1699)
!4280 = !DILocalVariable(name: "xBits", scope: !4272, file: !1560, line: 102, type: !832)
!4281 = !DILocalVariable(name: "yBits", scope: !4272, file: !1560, line: 103, type: !832)
!4282 = !DILocation(line: 101, column: 6, scope: !4272)
!4283 = !DILocation(line: 101, column: 40, scope: !4272)
!4284 = !DILocation(line: 101, column: 43, scope: !4272)
!4285 = !DILocation(line: 102, column: 11, scope: !4272)
!4286 = !DILocation(line: 102, column: 2, scope: !4272)
!4287 = !DILocation(line: 103, column: 11, scope: !4272)
!4288 = !DILocation(line: 103, column: 2, scope: !4272)
!4289 = !DILocation(line: 107, column: 7, scope: !4272)
!4290 = !DILocation(line: 107, column: 16, scope: !4272)
!4291 = !DILocation(line: 107, column: 13, scope: !4272)
!4292 = !DILocation(line: 0, scope: !4272)
!4293 = !DILocation(line: 108, column: 10, scope: !4272)
!4294 = !DILocation(line: 108, column: 3, scope: !4272)
!4295 = !DILocation(line: 109, column: 7, scope: !4272)
!4296 = !DILocation(line: 109, column: 16, scope: !4272)
!4297 = !DILocation(line: 109, column: 13, scope: !4272)
!4298 = !DILocation(line: 110, column: 10, scope: !4272)
!4299 = !DILocation(line: 110, column: 3, scope: !4272)
!4300 = !DILocation(line: 118, column: 5, scope: !4272)
!4301 = !DILocation(line: 118, column: 11, scope: !4272)
!4302 = !DILocation(line: 119, column: 12, scope: !4272)
!4303 = !DILocation(line: 119, column: 3, scope: !4272)
!4304 = !DILocation(line: 121, column: 5, scope: !4272)
!4305 = !DILocation(line: 121, column: 11, scope: !4272)
!4306 = !DILocation(line: 122, column: 12, scope: !4272)
!4307 = !DILocation(line: 122, column: 3, scope: !4272)
!4308 = !DILocation(line: 124, column: 5, scope: !4272)
!4309 = !DILocation(line: 124, column: 14, scope: !4272)
!4310 = !DILocation(line: 124, column: 11, scope: !4272)
!4311 = !DILocation(line: 125, column: 10, scope: !4272)
!4312 = !DILocation(line: 125, column: 3, scope: !4272)
!4313 = !DILocation(line: 127, column: 10, scope: !4272)
!4314 = !DILocation(line: 127, column: 3, scope: !4272)
!4315 = distinct !DISubprogram(name: "runtime.fminimumf", linkageName: "fminimumf", scope: !1560, file: !1560, line: 65, type: !4316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4318)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!3673, !3673}
!4318 = !{!4319, !4320}
!4319 = !DILocalVariable(name: "x", arg: 1, scope: !4315, file: !1560, line: 65, type: !3673)
!4320 = !DILocalVariable(name: "y", arg: 2, scope: !4315, file: !1560, line: 65, type: !3673)
!4321 = !DILocation(line: 65, column: 6, scope: !4315)
!4322 = !DILocation(line: 66, column: 24, scope: !4315)
!4323 = !DILocation(line: 66, column: 27, scope: !4315)
!4324 = !DILocation(line: 66, column: 23, scope: !4315)
!4325 = !DILocation(line: 66, column: 2, scope: !4315)
!4326 = distinct !DISubprogram(name: "runtime.minimumFloat32", linkageName: "runtime.minimumFloat32", scope: !1560, file: !1560, line: 83, type: !4316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4327)
!4327 = !{!4328, !4329}
!4328 = !DILocalVariable(name: "x", arg: 1, scope: !4326, file: !1560, line: 83, type: !3673)
!4329 = !DILocalVariable(name: "y", arg: 2, scope: !4326, file: !1560, line: 83, type: !3673)
!4330 = !DILocation(line: 83, column: 6, scope: !4326)
!4331 = !DILocation(line: 84, column: 38, scope: !4326)
!4332 = !DILocation(line: 84, column: 41, scope: !4326)
!4333 = !DILocation(line: 84, column: 37, scope: !4326)
!4334 = !DILocation(line: 84, column: 2, scope: !4326)
!4335 = distinct !DISubprogram(name: "runtime.minimumFloat[float32 int32]", linkageName: "runtime.minimumFloat[float32 int32]", scope: !1560, file: !1560, line: 101, type: !4336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4338)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!3673, !3673, !381, !381}
!4338 = !{!4339, !4340, !4341, !4342, !4343, !4344}
!4339 = !DILocalVariable(name: "x", arg: 1, scope: !4335, file: !1560, line: 101, type: !3673)
!4340 = !DILocalVariable(name: "y", arg: 2, scope: !4335, file: !1560, line: 101, type: !3673)
!4341 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4335, file: !1560, line: 101, type: !381)
!4342 = !DILocalVariable(name: "magMask", arg: 4, scope: !4335, file: !1560, line: 101, type: !381)
!4343 = !DILocalVariable(name: "xBits", scope: !4335, file: !1560, line: 102, type: !832)
!4344 = !DILocalVariable(name: "yBits", scope: !4335, file: !1560, line: 103, type: !832)
!4345 = !DILocation(line: 101, column: 6, scope: !4335)
!4346 = !DILocation(line: 101, column: 40, scope: !4335)
!4347 = !DILocation(line: 101, column: 43, scope: !4335)
!4348 = !DILocation(line: 102, column: 11, scope: !4335)
!4349 = !DILocation(line: 102, column: 2, scope: !4335)
!4350 = !DILocation(line: 103, column: 11, scope: !4335)
!4351 = !DILocation(line: 103, column: 2, scope: !4335)
!4352 = !DILocation(line: 107, column: 7, scope: !4335)
!4353 = !DILocation(line: 107, column: 16, scope: !4335)
!4354 = !DILocation(line: 107, column: 13, scope: !4335)
!4355 = !DILocation(line: 0, scope: !4335)
!4356 = !DILocation(line: 108, column: 10, scope: !4335)
!4357 = !DILocation(line: 108, column: 3, scope: !4335)
!4358 = !DILocation(line: 109, column: 7, scope: !4335)
!4359 = !DILocation(line: 109, column: 16, scope: !4335)
!4360 = !DILocation(line: 109, column: 13, scope: !4335)
!4361 = !DILocation(line: 110, column: 10, scope: !4335)
!4362 = !DILocation(line: 110, column: 3, scope: !4335)
!4363 = !DILocation(line: 118, column: 5, scope: !4335)
!4364 = !DILocation(line: 118, column: 11, scope: !4335)
!4365 = !DILocation(line: 119, column: 12, scope: !4335)
!4366 = !DILocation(line: 119, column: 3, scope: !4335)
!4367 = !DILocation(line: 121, column: 5, scope: !4335)
!4368 = !DILocation(line: 121, column: 11, scope: !4335)
!4369 = !DILocation(line: 122, column: 12, scope: !4335)
!4370 = !DILocation(line: 122, column: 3, scope: !4335)
!4371 = !DILocation(line: 124, column: 5, scope: !4335)
!4372 = !DILocation(line: 124, column: 14, scope: !4335)
!4373 = !DILocation(line: 124, column: 11, scope: !4335)
!4374 = !DILocation(line: 125, column: 10, scope: !4335)
!4375 = !DILocation(line: 125, column: 3, scope: !4335)
!4376 = !DILocation(line: 127, column: 10, scope: !4335)
!4377 = !DILocation(line: 127, column: 3, scope: !4335)
!4378 = distinct !DISubprogram(name: "runtime.fmaximum", linkageName: "fmaximum", scope: !1560, file: !1560, line: 70, type: !4253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4379)
!4379 = !{!4380, !4381}
!4380 = !DILocalVariable(name: "x", arg: 1, scope: !4378, file: !1560, line: 70, type: !849)
!4381 = !DILocalVariable(name: "y", arg: 2, scope: !4378, file: !1560, line: 70, type: !849)
!4382 = !DILocation(line: 70, column: 6, scope: !4378)
!4383 = !DILocation(line: 71, column: 24, scope: !4378)
!4384 = !DILocation(line: 71, column: 27, scope: !4378)
!4385 = !DILocation(line: 71, column: 23, scope: !4378)
!4386 = !DILocation(line: 71, column: 2, scope: !4378)
!4387 = distinct !DISubprogram(name: "runtime.maximumFloat64", linkageName: "runtime.maximumFloat64", scope: !1560, file: !1560, line: 95, type: !4253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4388)
!4388 = !{!4389, !4390}
!4389 = !DILocalVariable(name: "x", arg: 1, scope: !4387, file: !1560, line: 95, type: !849)
!4390 = !DILocalVariable(name: "y", arg: 2, scope: !4387, file: !1560, line: 95, type: !849)
!4391 = !DILocation(line: 95, column: 6, scope: !4387)
!4392 = !DILocation(line: 96, column: 38, scope: !4387)
!4393 = !DILocation(line: 96, column: 41, scope: !4387)
!4394 = !DILocation(line: 96, column: 37, scope: !4387)
!4395 = !DILocation(line: 96, column: 2, scope: !4387)
!4396 = distinct !DISubprogram(name: "runtime.maximumFloat[float64 int64]", linkageName: "runtime.maximumFloat[float64 int64]", scope: !1560, file: !1560, line: 133, type: !4273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4397)
!4397 = !{!4398, !4399, !4400, !4401, !4402, !4403, !4404}
!4398 = !DILocalVariable(name: "x", arg: 1, scope: !4396, file: !1560, line: 133, type: !849)
!4399 = !DILocalVariable(name: "y", arg: 2, scope: !4396, file: !1560, line: 133, type: !849)
!4400 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4396, file: !1560, line: 133, type: !1699)
!4401 = !DILocalVariable(name: "magMask", arg: 4, scope: !4396, file: !1560, line: 133, type: !1699)
!4402 = !DILocalVariable(name: "xBits", scope: !4396, file: !1560, line: 134, type: !832)
!4403 = !DILocalVariable(name: "yBits", scope: !4396, file: !1560, line: 135, type: !832)
!4404 = !DILocalVariable(name: "maxNegNaN", scope: !4396, file: !1560, line: 149, type: !832)
!4405 = !DILocation(line: 133, column: 6, scope: !4396)
!4406 = !DILocation(line: 133, column: 40, scope: !4396)
!4407 = !DILocation(line: 133, column: 43, scope: !4396)
!4408 = !DILocation(line: 134, column: 11, scope: !4396)
!4409 = !DILocation(line: 134, column: 2, scope: !4396)
!4410 = !DILocation(line: 135, column: 11, scope: !4396)
!4411 = !DILocation(line: 135, column: 2, scope: !4396)
!4412 = !DILocation(line: 142, column: 5, scope: !4396)
!4413 = !DILocation(line: 142, column: 11, scope: !4396)
!4414 = !DILocation(line: 0, scope: !4396)
!4415 = !DILocation(line: 143, column: 12, scope: !4396)
!4416 = !DILocation(line: 143, column: 3, scope: !4396)
!4417 = !DILocation(line: 145, column: 5, scope: !4396)
!4418 = !DILocation(line: 145, column: 11, scope: !4396)
!4419 = !DILocation(line: 146, column: 12, scope: !4396)
!4420 = !DILocation(line: 146, column: 3, scope: !4396)
!4421 = !DILocation(line: 149, column: 16, scope: !4396)
!4422 = !DILocation(line: 149, column: 15, scope: !4396)
!4423 = !DILocation(line: 149, column: 2, scope: !4396)
!4424 = !DILocation(line: 151, column: 7, scope: !4396)
!4425 = !DILocation(line: 151, column: 16, scope: !4396)
!4426 = !DILocation(line: 151, column: 13, scope: !4396)
!4427 = !DILocation(line: 152, column: 10, scope: !4396)
!4428 = !DILocation(line: 152, column: 3, scope: !4396)
!4429 = !DILocation(line: 153, column: 7, scope: !4396)
!4430 = !DILocation(line: 153, column: 16, scope: !4396)
!4431 = !DILocation(line: 153, column: 13, scope: !4396)
!4432 = !DILocation(line: 154, column: 10, scope: !4396)
!4433 = !DILocation(line: 154, column: 3, scope: !4396)
!4434 = !DILocation(line: 156, column: 5, scope: !4396)
!4435 = !DILocation(line: 156, column: 14, scope: !4396)
!4436 = !DILocation(line: 156, column: 11, scope: !4396)
!4437 = !DILocation(line: 157, column: 10, scope: !4396)
!4438 = !DILocation(line: 157, column: 3, scope: !4396)
!4439 = !DILocation(line: 159, column: 10, scope: !4396)
!4440 = !DILocation(line: 159, column: 3, scope: !4396)
!4441 = distinct !DISubprogram(name: "runtime.fmaximumf", linkageName: "fmaximumf", scope: !1560, file: !1560, line: 75, type: !4316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4442)
!4442 = !{!4443, !4444}
!4443 = !DILocalVariable(name: "x", arg: 1, scope: !4441, file: !1560, line: 75, type: !3673)
!4444 = !DILocalVariable(name: "y", arg: 2, scope: !4441, file: !1560, line: 75, type: !3673)
!4445 = !DILocation(line: 75, column: 6, scope: !4441)
!4446 = !DILocation(line: 76, column: 24, scope: !4441)
!4447 = !DILocation(line: 76, column: 27, scope: !4441)
!4448 = !DILocation(line: 76, column: 23, scope: !4441)
!4449 = !DILocation(line: 76, column: 2, scope: !4441)
!4450 = distinct !DISubprogram(name: "runtime.maximumFloat32", linkageName: "runtime.maximumFloat32", scope: !1560, file: !1560, line: 91, type: !4316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4451)
!4451 = !{!4452, !4453}
!4452 = !DILocalVariable(name: "x", arg: 1, scope: !4450, file: !1560, line: 91, type: !3673)
!4453 = !DILocalVariable(name: "y", arg: 2, scope: !4450, file: !1560, line: 91, type: !3673)
!4454 = !DILocation(line: 91, column: 6, scope: !4450)
!4455 = !DILocation(line: 92, column: 38, scope: !4450)
!4456 = !DILocation(line: 92, column: 41, scope: !4450)
!4457 = !DILocation(line: 92, column: 37, scope: !4450)
!4458 = !DILocation(line: 92, column: 2, scope: !4450)
!4459 = distinct !DISubprogram(name: "runtime.maximumFloat[float32 int32]", linkageName: "runtime.maximumFloat[float32 int32]", scope: !1560, file: !1560, line: 133, type: !4336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4460)
!4460 = !{!4461, !4462, !4463, !4464, !4465, !4466, !4467}
!4461 = !DILocalVariable(name: "x", arg: 1, scope: !4459, file: !1560, line: 133, type: !3673)
!4462 = !DILocalVariable(name: "y", arg: 2, scope: !4459, file: !1560, line: 133, type: !3673)
!4463 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !4459, file: !1560, line: 133, type: !381)
!4464 = !DILocalVariable(name: "magMask", arg: 4, scope: !4459, file: !1560, line: 133, type: !381)
!4465 = !DILocalVariable(name: "xBits", scope: !4459, file: !1560, line: 134, type: !832)
!4466 = !DILocalVariable(name: "yBits", scope: !4459, file: !1560, line: 135, type: !832)
!4467 = !DILocalVariable(name: "maxNegNaN", scope: !4459, file: !1560, line: 149, type: !832)
!4468 = !DILocation(line: 133, column: 6, scope: !4459)
!4469 = !DILocation(line: 133, column: 40, scope: !4459)
!4470 = !DILocation(line: 133, column: 43, scope: !4459)
!4471 = !DILocation(line: 134, column: 11, scope: !4459)
!4472 = !DILocation(line: 134, column: 2, scope: !4459)
!4473 = !DILocation(line: 135, column: 11, scope: !4459)
!4474 = !DILocation(line: 135, column: 2, scope: !4459)
!4475 = !DILocation(line: 142, column: 5, scope: !4459)
!4476 = !DILocation(line: 142, column: 11, scope: !4459)
!4477 = !DILocation(line: 0, scope: !4459)
!4478 = !DILocation(line: 143, column: 12, scope: !4459)
!4479 = !DILocation(line: 143, column: 3, scope: !4459)
!4480 = !DILocation(line: 145, column: 5, scope: !4459)
!4481 = !DILocation(line: 145, column: 11, scope: !4459)
!4482 = !DILocation(line: 146, column: 12, scope: !4459)
!4483 = !DILocation(line: 146, column: 3, scope: !4459)
!4484 = !DILocation(line: 149, column: 16, scope: !4459)
!4485 = !DILocation(line: 149, column: 15, scope: !4459)
!4486 = !DILocation(line: 149, column: 2, scope: !4459)
!4487 = !DILocation(line: 151, column: 7, scope: !4459)
!4488 = !DILocation(line: 151, column: 16, scope: !4459)
!4489 = !DILocation(line: 151, column: 13, scope: !4459)
!4490 = !DILocation(line: 152, column: 10, scope: !4459)
!4491 = !DILocation(line: 152, column: 3, scope: !4459)
!4492 = !DILocation(line: 153, column: 7, scope: !4459)
!4493 = !DILocation(line: 153, column: 16, scope: !4459)
!4494 = !DILocation(line: 153, column: 13, scope: !4459)
!4495 = !DILocation(line: 154, column: 10, scope: !4459)
!4496 = !DILocation(line: 154, column: 3, scope: !4459)
!4497 = !DILocation(line: 156, column: 5, scope: !4459)
!4498 = !DILocation(line: 156, column: 14, scope: !4459)
!4499 = !DILocation(line: 156, column: 11, scope: !4459)
!4500 = !DILocation(line: 157, column: 10, scope: !4459)
!4501 = !DILocation(line: 157, column: 3, scope: !4459)
!4502 = !DILocation(line: 159, column: 10, scope: !4459)
!4503 = !DILocation(line: 159, column: 3, scope: !4459)
!4504 = distinct !DISubprogram(name: "runtime.initHeap", linkageName: "runtime.initHeap", scope: !421, file: !421, line: 34, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4505 = !DILocation(line: 35, column: 12, scope: !4504)
!4506 = !DILocation(line: 39, column: 8, scope: !4504)
!4507 = !DILocation(line: 40, column: 2, scope: !4504)
!4508 = distinct !DISubprogram(name: "runtime.gcCallback", linkageName: "tinygo_runtime_bdwgc_callback", scope: !421, file: !421, line: 46, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4509 = !DILocation(line: 48, column: 17, scope: !4508)
!4510 = !DILocation(line: 49, column: 2, scope: !4508)
!4511 = distinct !DISubprogram(name: "runtime.gcMarkReachable", linkageName: "runtime.gcMarkReachable", scope: !3456, file: !3456, line: 7, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4512 = !DILocation(line: 8, column: 25, scope: !4511)
!4513 = !DILocation(line: 9, column: 2, scope: !4511)
!4514 = distinct !DISubprogram(name: "runtime.markRoots", linkageName: "runtime.markRoots", scope: !421, file: !421, line: 51, type: !4515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4517)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!43, !43}
!4517 = !{!4518, !4519}
!4518 = !DILocalVariable(name: "start", arg: 1, scope: !4514, file: !421, line: 51, type: !43)
!4519 = !DILocalVariable(name: "end", arg: 2, scope: !4514, file: !421, line: 51, type: !43)
!4520 = !DILocation(line: 51, column: 6, scope: !4514)
!4521 = !DILocation(line: 52, column: 17, scope: !4514)
!4522 = !DILocation(line: 52, column: 24, scope: !4514)
!4523 = !DILocation(line: 52, column: 16, scope: !4514)
!4524 = !DILocation(line: 53, column: 2, scope: !4514)
!4525 = distinct !DISubprogram(name: "runtime.free", linkageName: "runtime.free", scope: !421, file: !421, line: 99, type: !2702, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4526)
!4526 = !{!4527}
!4527 = !DILocalVariable(name: "ptr", arg: 1, scope: !4525, file: !421, line: 99, type: !84)
!4528 = !DILocation(line: 99, column: 6, scope: !4525)
!4529 = !DILocation(line: 100, column: 13, scope: !4525)
!4530 = !DILocation(line: 100, column: 12, scope: !4525)
!4531 = !DILocation(line: 101, column: 2, scope: !4525)
!4532 = distinct !DISubprogram(name: "runtime.gcScanGlobals", linkageName: "internal/task.gcScanGlobals", scope: !3456, file: !3456, line: 15, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4533 = !DILocation(line: 16, column: 13, scope: !4532)
!4534 = !DILocation(line: 17, column: 2, scope: !4532)
!4535 = distinct !DISubprogram(name: "runtime.findGlobals", linkageName: "runtime.findGlobals", scope: !3569, file: !3569, line: 95, type: !4536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4538)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!705}
!4538 = !{!4539, !4540, !4541, !4542, !4555, !4556, !4557, !4564, !4565}
!4539 = !DILocalVariable(name: "found", arg: 1, scope: !4535, file: !3569, line: 95, type: !705)
!4540 = !DILocalVariable(name: "headerPtr", scope: !4535, file: !3569, line: 103, type: !84)
!4541 = !DILocalVariable(name: "i", scope: !4535, file: !3569, line: 104, type: !1872)
!4542 = !DILocalVariable(name: "header", scope: !4535, file: !3569, line: 111, type: !4543)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64, align: 64, dwarfAddressSpace: 0)
!4544 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader64", baseType: !4545)
!4545 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !4546)
!4546 = !{!4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_type", baseType: !98, size: 32, align: 32)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !98, size: 32, align: 32, offset: 32)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "offset", baseType: !43, size: 64, align: 64, offset: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", baseType: !43, size: 64, align: 64, offset: 128)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", baseType: !43, size: 64, align: 64, offset: 192)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "filesz", baseType: !43, size: 64, align: 64, offset: 256)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", baseType: !43, size: 64, align: 64, offset: 320)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !43, size: 64, align: 64, offset: 384)
!4555 = !DILocalVariable(name: "start", scope: !4535, file: !3569, line: 113, type: !43)
!4556 = !DILocalVariable(name: "end", scope: !4535, file: !3569, line: 114, type: !43)
!4557 = !DILocalVariable(name: "header", scope: !4535, file: !3569, line: 118, type: !4558)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64, align: 64, dwarfAddressSpace: 0)
!4559 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader32", baseType: !4560)
!4560 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !4561)
!4561 = !{!4547, !4549, !4550, !4551, !4552, !4553, !4562, !4563}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !98, size: 32, align: 32, offset: 384)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !43, size: 64, align: 64, offset: 448)
!4564 = !DILocalVariable(name: "start", scope: !4535, file: !3569, line: 120, type: !43)
!4565 = !DILocalVariable(name: "end", scope: !4535, file: !3569, line: 121, type: !43)
!4566 = !DILocation(line: 95, column: 6, scope: !4535)
!4567 = !DILocation(line: 103, column: 80, scope: !4535)
!4568 = !DILocation(line: 103, column: 67, scope: !4535)
!4569 = !DILocation(line: 103, column: 29, scope: !4535)
!4570 = !DILocation(line: 103, column: 2, scope: !4535)
!4571 = !DILocation(line: 104, column: 6, scope: !4535)
!4572 = !DILocation(line: 0, scope: !4535)
!4573 = !DILocation(line: 104, column: 14, scope: !4535)
!4574 = !DILocation(line: 104, column: 33, scope: !4535)
!4575 = !DILocation(line: 104, column: 21, scope: !4535)
!4576 = !DILocation(line: 104, column: 16, scope: !4535)
!4577 = !DILocation(line: 111, column: 36, scope: !4535)
!4578 = !DILocation(line: 111, column: 4, scope: !4535)
!4579 = !DILocation(line: 112, column: 7, scope: !4535)
!4580 = !DILocation(line: 112, column: 14, scope: !4535)
!4581 = !DILocation(line: 112, column: 20, scope: !4535)
!4582 = !DILocation(line: 112, column: 34, scope: !4535)
!4583 = !DILocation(line: 112, column: 41, scope: !4535)
!4584 = !DILocation(line: 112, column: 46, scope: !4535)
!4585 = !DILocation(line: 112, column: 52, scope: !4535)
!4586 = !DILocation(line: 113, column: 14, scope: !4535)
!4587 = !DILocation(line: 113, column: 21, scope: !4535)
!4588 = !DILocation(line: 113, column: 5, scope: !4535)
!4589 = !DILocation(line: 114, column: 12, scope: !4535)
!4590 = !DILocation(line: 114, column: 20, scope: !4535)
!4591 = !DILocation(line: 114, column: 27, scope: !4535)
!4592 = !DILocation(line: 114, column: 18, scope: !4535)
!4593 = !DILocation(line: 114, column: 5, scope: !4535)
!4594 = !DILocation(line: 115, column: 5, scope: !4535)
!4595 = !DILocation(line: 115, column: 11, scope: !4535)
!4596 = !DILocation(line: 115, column: 18, scope: !4535)
!4597 = !DILocation(line: 115, column: 10, scope: !4535)
!4598 = !DILocation(line: 125, column: 26, scope: !4535)
!4599 = !DILocation(line: 125, column: 48, scope: !4535)
!4600 = !DILocation(line: 125, column: 25, scope: !4535)
!4601 = !DILocation(line: 125, column: 3, scope: !4535)
!4602 = !DILocation(line: 104, column: 41, scope: !4535)
!4603 = !DILocation(line: 118, column: 36, scope: !4535)
!4604 = !DILocation(line: 118, column: 4, scope: !4535)
!4605 = !DILocation(line: 119, column: 7, scope: !4535)
!4606 = !DILocation(line: 119, column: 14, scope: !4535)
!4607 = !DILocation(line: 119, column: 20, scope: !4535)
!4608 = !DILocation(line: 119, column: 34, scope: !4535)
!4609 = !DILocation(line: 119, column: 41, scope: !4535)
!4610 = !DILocation(line: 119, column: 46, scope: !4535)
!4611 = !DILocation(line: 119, column: 52, scope: !4535)
!4612 = !DILocation(line: 120, column: 14, scope: !4535)
!4613 = !DILocation(line: 120, column: 21, scope: !4535)
!4614 = !DILocation(line: 120, column: 5, scope: !4535)
!4615 = !DILocation(line: 121, column: 12, scope: !4535)
!4616 = !DILocation(line: 121, column: 20, scope: !4535)
!4617 = !DILocation(line: 121, column: 27, scope: !4535)
!4618 = !DILocation(line: 121, column: 18, scope: !4535)
!4619 = !DILocation(line: 121, column: 5, scope: !4535)
!4620 = !DILocation(line: 122, column: 5, scope: !4535)
!4621 = !DILocation(line: 122, column: 11, scope: !4535)
!4622 = !DILocation(line: 122, column: 18, scope: !4535)
!4623 = !DILocation(line: 122, column: 10, scope: !4535)
!4624 = !DILocation(line: 127, column: 2, scope: !4535)
!4625 = distinct !DISubprogram(name: "runtime.scanstack", linkageName: "tinygo_scanstack", scope: !3456, file: !3456, line: 23, type: !3196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4626)
!4626 = !{!4627}
!4627 = !DILocalVariable(name: "sp", arg: 1, scope: !4625, file: !3456, line: 23, type: !43)
!4628 = !DILocation(line: 23, column: 6, scope: !4625)
!4629 = !DILocation(line: 24, column: 12, scope: !4625)
!4630 = !DILocation(line: 24, column: 29, scope: !4625)
!4631 = !DILocation(line: 24, column: 11, scope: !4625)
!4632 = !DILocation(line: 25, column: 2, scope: !4625)
!4633 = distinct !DISubprogram(name: "runtime.unsafeSlicePanic", linkageName: "runtime.unsafeSlicePanic", scope: !428, file: !428, line: 211, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4634 = !DILocation(line: 212, column: 30, scope: !4633)
!4635 = !DILocation(line: 212, column: 16, scope: !4633)
!4636 = !DILocation(line: 213, column: 2, scope: !4633)
!4637 = distinct !DISubprogram(name: "runtime.negativeShiftPanic", linkageName: "runtime.negativeShiftPanic", scope: !428, file: !428, line: 221, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4638 = !DILocation(line: 222, column: 30, scope: !4637)
!4639 = !DILocation(line: 222, column: 16, scope: !4637)
!4640 = !DILocation(line: 223, column: 2, scope: !4637)
!4641 = distinct !DISubprogram(name: "runtime.printspace", linkageName: "runtime.printspace", scope: !458, file: !458, line: 282, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4642 = !DILocation(line: 283, column: 9, scope: !4641)
!4643 = !DILocation(line: 284, column: 2, scope: !4641)
!4644 = distinct !DISubprogram(name: "runtime.memmove", linkageName: "runtime.memmove", scope: !1584, file: !1584, line: 48, type: !3590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4645)
!4645 = !{!4646, !4647, !4648}
!4646 = !DILocalVariable(name: "dst", arg: 1, scope: !4644, file: !1584, line: 48, type: !84)
!4647 = !DILocalVariable(name: "src", arg: 2, scope: !4644, file: !1584, line: 48, type: !84)
!4648 = !DILocalVariable(name: "size", arg: 3, scope: !4644, file: !1584, line: 48, type: !43)
!4649 = !DILocation(line: 48, column: 6, scope: !4644)
!4650 = distinct !DISubprogram(name: "runtime.main", linkageName: "main", scope: !414, file: !414, line: 80, type: !4651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4653)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!381, !485}
!4653 = !{!4654, !4655, !4656, !4657, !4658}
!4654 = !DILocalVariable(name: "argc", arg: 1, scope: !4650, file: !414, line: 80, type: !381)
!4655 = !DILocalVariable(name: "argv", arg: 2, scope: !4650, file: !414, line: 80, type: !485)
!4656 = !DILocalVariable(name: "main_argc", scope: !4650, file: !414, line: 105, type: !381)
!4657 = !DILocalVariable(name: "main_argv", scope: !4650, file: !414, line: 106, type: !485)
!4658 = !DILocalVariable(name: "stackTop", scope: !4650, file: !414, line: 75, type: !43)
!4659 = !DILocation(line: 80, column: 6, scope: !4650)
!4660 = !DILocation(line: 0, scope: !4650)
!4661 = !DILocation(line: 83, column: 15, scope: !4650)
!4662 = !DILocation(line: 87, column: 14, scope: !4650)
!4663 = !DILocation(line: 87, column: 2, scope: !4650)
!4664 = !DILocation(line: 88, column: 14, scope: !4650)
!4665 = !DILocation(line: 88, column: 2, scope: !4650)
!4666 = !DILocation(line: 92, column: 31, scope: !4650)
!4667 = !DILocation(line: 97, column: 35, scope: !4650)
!4668 = !DILocation(line: 97, column: 2, scope: !4650)
!4669 = !DILocation(line: 98, column: 9, scope: !4650)
!4670 = !DILocation(line: 101, column: 2, scope: !4650)
!4671 = distinct !DISubprogram(name: "runtime.allocateHeap", linkageName: "runtime.allocateHeap", scope: !414, file: !414, line: 303, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4672)
!4672 = !{!4673, !4674, !4675, !4676, !4677}
!4673 = !DILocalVariable(name: "heapMaxSize", scope: !4671, file: !414, line: 299, type: !43)
!4674 = !DILocalVariable(name: "addr", scope: !4671, file: !414, line: 309, type: !84)
!4675 = !DILocalVariable(name: "heapStart", scope: !4671, file: !414, line: 301, type: !43)
!4676 = !DILocalVariable(name: "heapSize", scope: !4671, file: !414, line: 298, type: !43)
!4677 = !DILocalVariable(name: "heapEnd", scope: !4671, file: !414, line: 301, type: !43)
!4678 = !DILocation(line: 307, column: 2, scope: !4671)
!4679 = !DILocation(line: 0, scope: !4671)
!4680 = !DILocation(line: 309, column: 21, scope: !4671)
!4681 = !DILocation(line: 309, column: 15, scope: !4671)
!4682 = !DILocation(line: 309, column: 3, scope: !4671)
!4683 = !DILocation(line: 310, column: 6, scope: !4671)
!4684 = !DILocation(line: 310, column: 11, scope: !4671)
!4685 = !DILocation(line: 315, column: 4, scope: !4671)
!4686 = !DILocation(line: 316, column: 7, scope: !4671)
!4687 = !DILocation(line: 316, column: 19, scope: !4671)
!4688 = !DILocation(line: 317, column: 17, scope: !4671)
!4689 = !DILocation(line: 321, column: 23, scope: !4671)
!4690 = !DILocation(line: 321, column: 22, scope: !4671)
!4691 = !DILocation(line: 321, column: 3, scope: !4671)
!4692 = !DILocation(line: 322, column: 13, scope: !4671)
!4693 = !DILocation(line: 322, column: 25, scope: !4671)
!4694 = !DILocation(line: 322, column: 23, scope: !4671)
!4695 = !DILocation(line: 322, column: 3, scope: !4671)
!4696 = !DILocation(line: 325, column: 2, scope: !4671)
!4697 = distinct !DISubprogram(name: "runtime.runMain", linkageName: "runtime.runMain", scope: !414, file: !414, line: 135, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4698 = !DILocation(line: 136, column: 5, scope: !4697)
!4699 = !DILocation(line: 137, column: 2, scope: !4697)
!4700 = distinct !DISubprogram(name: "runtime.run", linkageName: "runtime.run", scope: !515, file: !515, line: 23, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4701)
!4701 = !{!4702}
!4702 = !DILocalVariable(name: "stackTop", scope: !4700, file: !414, line: 75, type: !43)
!4703 = !DILocation(line: 24, column: 10, scope: !4700)
!4704 = !DILocation(line: 25, column: 10, scope: !4700)
!4705 = !DILocation(line: 26, column: 12, scope: !4700)
!4706 = !DILocation(line: 26, column: 11, scope: !4700)
!4707 = !DILocation(line: 27, column: 9, scope: !4700)
!4708 = !DILocation(line: 28, column: 10, scope: !4700)
!4709 = !DILocation(line: 29, column: 2, scope: !4700)
!4710 = distinct !DISubprogram(name: "runtime.tinygo_handle_fatal_signal", linkageName: "tinygo_handle_fatal_signal", scope: !414, file: !414, line: 148, type: !4711, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4713)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!381, !43}
!4713 = !{!4714, !4715}
!4714 = !DILocalVariable(name: "sig", arg: 1, scope: !4710, file: !414, line: 148, type: !381)
!4715 = !DILocalVariable(name: "addr", arg: 2, scope: !4710, file: !414, line: 148, type: !43)
!4716 = !DILocation(line: 148, column: 6, scope: !4710)
!4717 = !DILocation(line: 0, scope: !4710)
!4718 = !DILocation(line: 150, column: 7, scope: !4710)
!4719 = !DILocation(line: 154, column: 5, scope: !4710)
!4720 = !DILocation(line: 154, column: 10, scope: !4710)
!4721 = !DILocation(line: 155, column: 14, scope: !4710)
!4722 = !DILocation(line: 156, column: 12, scope: !4710)
!4723 = !DILocation(line: 156, column: 11, scope: !4710)
!4724 = !DILocation(line: 160, column: 13, scope: !4710)
!4725 = !DILocation(line: 161, column: 9, scope: !4710)
!4726 = !DILocation(line: 162, column: 7, scope: !4710)
!4727 = !DILocation(line: 163, column: 10, scope: !4710)
!4728 = !DILocation(line: 180, column: 8, scope: !4710)
!4729 = !DILocation(line: 180, column: 7, scope: !4710)
!4730 = !DILocation(line: 181, column: 2, scope: !4710)
!4731 = !DILocation(line: 164, column: 7, scope: !4710)
!4732 = !DILocation(line: 165, column: 10, scope: !4710)
!4733 = !DILocation(line: 166, column: 7, scope: !4710)
!4734 = !DILocation(line: 167, column: 10, scope: !4710)
!4735 = !DILocation(line: 169, column: 11, scope: !4710)
!4736 = !DILocation(line: 169, column: 10, scope: !4710)
!4737 = !DILocation(line: 158, column: 14, scope: !4710)
!4738 = distinct !DISubprogram(name: "runtime.printlock", linkageName: "runtime.printlock", scope: !515, file: !515, line: 138, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4739 = !DILocation(line: 139, column: 16, scope: !4738)
!4740 = !DILocation(line: 140, column: 2, scope: !4738)
!4741 = distinct !DISubprogram(name: "runtime.printunlock", linkageName: "runtime.printunlock", scope: !515, file: !515, line: 142, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556)
!4742 = !DILocation(line: 143, column: 18, scope: !4741)
!4743 = !DILocation(line: 144, column: 2, scope: !4741)
!4744 = distinct !DISubprogram(name: "runtime.sliceAppend", linkageName: "runtime.sliceAppend", scope: !4745, file: !4745, line: 12, type: !4746, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4748)
!4745 = !DIFile(filename: "slice.go", directory: "/usr/local/lib/tinygo/src/runtime")
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!84, !84, !43, !43, !43, !43, !84}
!4748 = !{!4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756}
!4749 = !DILocalVariable(name: "srcBuf", arg: 1, scope: !4744, file: !4745, line: 12, type: !84)
!4750 = !DILocalVariable(name: "elemsBuf", arg: 2, scope: !4744, file: !4745, line: 12, type: !84)
!4751 = !DILocalVariable(name: "srcLen", arg: 3, scope: !4744, file: !4745, line: 12, type: !43)
!4752 = !DILocalVariable(name: "srcCap", arg: 4, scope: !4744, file: !4745, line: 12, type: !43)
!4753 = !DILocalVariable(name: "elemsLen", arg: 5, scope: !4744, file: !4745, line: 12, type: !43)
!4754 = !DILocalVariable(name: "elemSize", arg: 6, scope: !4744, file: !4745, line: 12, type: !43)
!4755 = !DILocalVariable(name: "layout", arg: 7, scope: !4744, file: !4745, line: 12, type: !84)
!4756 = !DILocalVariable(name: "newLen", scope: !4744, file: !4745, line: 13, type: !43)
!4757 = !DILocation(line: 12, column: 6, scope: !4744)
!4758 = !DILocation(line: 13, column: 12, scope: !4744)
!4759 = !DILocation(line: 13, column: 21, scope: !4744)
!4760 = !DILocation(line: 13, column: 19, scope: !4744)
!4761 = !DILocation(line: 13, column: 2, scope: !4744)
!4762 = !DILocation(line: 14, column: 5, scope: !4744)
!4763 = !DILocation(line: 14, column: 14, scope: !4744)
!4764 = !DILocation(line: 0, scope: !4744)
!4765 = !DILocation(line: 17, column: 33, scope: !4744)
!4766 = !DILocation(line: 17, column: 41, scope: !4744)
!4767 = !DILocation(line: 17, column: 49, scope: !4744)
!4768 = !DILocation(line: 17, column: 57, scope: !4744)
!4769 = !DILocation(line: 17, column: 65, scope: !4744)
!4770 = !DILocation(line: 17, column: 75, scope: !4744)
!4771 = !DILocation(line: 17, column: 32, scope: !4744)
!4772 = !DILocation(line: 17, column: 3, scope: !4744)
!4773 = !DILocation(line: 17, column: 14, scope: !4744)
!4774 = !DILocation(line: 20, column: 22, scope: !4744)
!4775 = !DILocation(line: 20, column: 30, scope: !4744)
!4776 = !DILocation(line: 20, column: 37, scope: !4744)
!4777 = !DILocation(line: 20, column: 36, scope: !4744)
!4778 = !DILocation(line: 20, column: 21, scope: !4744)
!4779 = !DILocation(line: 20, column: 48, scope: !4744)
!4780 = !DILocation(line: 20, column: 58, scope: !4744)
!4781 = !DILocation(line: 20, column: 67, scope: !4744)
!4782 = !DILocation(line: 20, column: 66, scope: !4744)
!4783 = !DILocation(line: 20, column: 10, scope: !4744)
!4784 = !DILocation(line: 12, column: 18, scope: !4744)
!4785 = !DILocation(line: 12, column: 59, scope: !4744)
!4786 = !DILocation(line: 23, column: 9, scope: !4744)
!4787 = !DILocation(line: 23, column: 17, scope: !4744)
!4788 = !DILocation(line: 23, column: 25, scope: !4744)
!4789 = !DILocation(line: 23, column: 2, scope: !4744)
!4790 = distinct !DISubprogram(name: "runtime.sliceGrow", linkageName: "runtime.sliceGrow", scope: !4745, file: !4745, line: 27, type: !4791, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4793)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!84, !43, !43, !43, !43, !84}
!4793 = !{!4794, !4795, !4796, !4797, !4798, !4799, !4800}
!4794 = !DILocalVariable(name: "oldBuf", arg: 1, scope: !4790, file: !4745, line: 27, type: !84)
!4795 = !DILocalVariable(name: "oldLen", arg: 2, scope: !4790, file: !4745, line: 27, type: !43)
!4796 = !DILocalVariable(name: "oldCap", arg: 3, scope: !4790, file: !4745, line: 27, type: !43)
!4797 = !DILocalVariable(name: "newCap", arg: 4, scope: !4790, file: !4745, line: 27, type: !43)
!4798 = !DILocalVariable(name: "elemSize", arg: 5, scope: !4790, file: !4745, line: 27, type: !43)
!4799 = !DILocalVariable(name: "layout", arg: 6, scope: !4790, file: !4745, line: 27, type: !84)
!4800 = !DILocalVariable(name: "buf", scope: !4790, file: !4745, line: 39, type: !84)
!4801 = !DILocation(line: 27, column: 6, scope: !4790)
!4802 = !DILocation(line: 28, column: 5, scope: !4790)
!4803 = !DILocation(line: 28, column: 15, scope: !4790)
!4804 = !DILocation(line: 28, column: 12, scope: !4790)
!4805 = !DILocation(line: 0, scope: !4790)
!4806 = !DILocation(line: 30, column: 10, scope: !4790)
!4807 = !DILocation(line: 30, column: 18, scope: !4790)
!4808 = !DILocation(line: 30, column: 26, scope: !4790)
!4809 = !DILocation(line: 30, column: 3, scope: !4790)
!4810 = !DILocation(line: 37, column: 30, scope: !4790)
!4811 = !DILocation(line: 37, column: 24, scope: !4790)
!4812 = !DILocation(line: 37, column: 13, scope: !4790)
!4813 = !DILocation(line: 37, column: 2, scope: !4790)
!4814 = !DILocation(line: 39, column: 15, scope: !4790)
!4815 = !DILocation(line: 39, column: 22, scope: !4790)
!4816 = !DILocation(line: 39, column: 21, scope: !4790)
!4817 = !DILocation(line: 39, column: 32, scope: !4790)
!4818 = !DILocation(line: 39, column: 14, scope: !4790)
!4819 = !DILocation(line: 39, column: 2, scope: !4790)
!4820 = !DILocation(line: 40, column: 5, scope: !4790)
!4821 = !DILocation(line: 40, column: 12, scope: !4790)
!4822 = !DILocation(line: 42, column: 11, scope: !4790)
!4823 = !DILocation(line: 42, column: 16, scope: !4790)
!4824 = !DILocation(line: 42, column: 24, scope: !4790)
!4825 = !DILocation(line: 42, column: 31, scope: !4790)
!4826 = !DILocation(line: 42, column: 30, scope: !4790)
!4827 = !DILocation(line: 42, column: 10, scope: !4790)
!4828 = !DILocation(line: 45, column: 9, scope: !4790)
!4829 = !DILocation(line: 45, column: 14, scope: !4790)
!4830 = !DILocation(line: 45, column: 22, scope: !4790)
!4831 = !DILocation(line: 45, column: 2, scope: !4790)
!4832 = distinct !DISubprogram(name: "runtime.tinygo_signal_handler", linkageName: "tinygo_signal_handler", scope: !414, file: !414, line: 420, type: !3392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4833)
!4833 = !{!4834, !4835, !4836, !4837}
!4834 = !DILocalVariable(name: "s", arg: 1, scope: !4832, file: !414, line: 420, type: !381)
!4835 = !DILocalVariable(name: "mask", scope: !4832, file: !414, line: 427, type: !98)
!4836 = !DILocalVariable(name: "val", scope: !4832, file: !414, line: 428, type: !98)
!4837 = !DILocalVariable(name: "swapped", scope: !4832, file: !414, line: 429, type: !371)
!4838 = !DILocation(line: 420, column: 6, scope: !4832)
!4839 = !DILocation(line: 0, scope: !4832)
!4840 = !DILocation(line: 427, column: 31, scope: !4832)
!4841 = !DILocation(line: 427, column: 21, scope: !4832)
!4842 = !DILocation(line: 427, column: 3, scope: !4832)
!4843 = !DILocation(line: 428, column: 30, scope: !4832)
!4844 = !DILocation(line: 428, column: 3, scope: !4832)
!4845 = !DILocation(line: 429, column: 45, scope: !4832)
!4846 = !DILocation(line: 429, column: 50, scope: !4832)
!4847 = !DILocation(line: 429, column: 54, scope: !4832)
!4848 = !DILocation(line: 429, column: 53, scope: !4832)
!4849 = !DILocation(line: 429, column: 44, scope: !4832)
!4850 = !DILocation(line: 429, column: 3, scope: !4832)
!4851 = !DILocation(line: 430, column: 6, scope: !4832)
!4852 = !DILocation(line: 437, column: 21, scope: !4832)
!4853 = !DILocation(line: 437, column: 25, scope: !4832)
!4854 = !DILocation(line: 441, column: 22, scope: !4832)
!4855 = !DILocation(line: 443, column: 2, scope: !4832)
!4856 = distinct !DISubprogram(name: "runtime.stringConcat", linkageName: "runtime.stringConcat", scope: !4218, file: !4218, line: 56, type: !4857, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4863)
!4857 = !DISubroutineType(types: !4858)
!4858 = !{!4859, !4859}
!4859 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._string", baseType: !4860)
!4860 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !4861)
!4861 = !{!2087, !4862}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !43, size: 64, align: 64, offset: 64)
!4863 = !{!4864, !4865, !4866, !4867}
!4864 = !DILocalVariable(name: "x", arg: 1, scope: !4856, file: !4218, line: 56, type: !4859)
!4865 = !DILocalVariable(name: "y", arg: 2, scope: !4856, file: !4218, line: 56, type: !4859)
!4866 = !DILocalVariable(name: "length", scope: !4856, file: !4218, line: 62, type: !43)
!4867 = !DILocalVariable(name: "buf", scope: !4856, file: !4218, line: 63, type: !84)
!4868 = !DILocation(line: 56, column: 6, scope: !4856)
!4869 = !DILocation(line: 56, column: 19, scope: !4856)
!4870 = !DILocation(line: 56, column: 22, scope: !4856)
!4871 = !DILocation(line: 57, column: 7, scope: !4856)
!4872 = !DILocation(line: 57, column: 14, scope: !4856)
!4873 = !DILocation(line: 0, scope: !4856)
!4874 = !DILocation(line: 58, column: 10, scope: !4856)
!4875 = !DILocation(line: 58, column: 3, scope: !4856)
!4876 = !DILocation(line: 59, column: 14, scope: !4856)
!4877 = !DILocation(line: 59, column: 21, scope: !4856)
!4878 = !DILocation(line: 60, column: 10, scope: !4856)
!4879 = !DILocation(line: 60, column: 3, scope: !4856)
!4880 = !DILocation(line: 62, column: 15, scope: !4856)
!4881 = !DILocation(line: 62, column: 26, scope: !4856)
!4882 = !DILocation(line: 62, column: 22, scope: !4856)
!4883 = !DILocation(line: 62, column: 3, scope: !4856)
!4884 = !DILocation(line: 63, column: 16, scope: !4856)
!4885 = !DILocation(line: 63, column: 45, scope: !4856)
!4886 = !DILocation(line: 63, column: 15, scope: !4856)
!4887 = !DILocation(line: 63, column: 3, scope: !4856)
!4888 = !DILocation(line: 64, column: 10, scope: !4856)
!4889 = !DILocation(line: 64, column: 32, scope: !4856)
!4890 = !DILocation(line: 64, column: 40, scope: !4856)
!4891 = !DILocation(line: 64, column: 9, scope: !4856)
!4892 = !DILocation(line: 65, column: 21, scope: !4856)
!4893 = !DILocation(line: 65, column: 28, scope: !4856)
!4894 = !DILocation(line: 65, column: 20, scope: !4856)
!4895 = !DILocation(line: 65, column: 54, scope: !4856)
!4896 = !DILocation(line: 65, column: 62, scope: !4856)
!4897 = !DILocation(line: 65, column: 9, scope: !4856)
!4898 = !DILocation(line: 66, column: 21, scope: !4856)
!4899 = !DILocation(line: 66, column: 31, scope: !4856)
!4900 = !DILocation(line: 66, column: 43, scope: !4856)
!4901 = !DILocation(line: 66, column: 45, scope: !4856)
!4902 = !DILocation(line: 66, column: 17, scope: !4856)
!4903 = !DILocation(line: 66, column: 3, scope: !4856)
!4904 = distinct !DISubprogram(name: "runtime.stringFromBytes", linkageName: "runtime.stringFromBytes", scope: !4218, file: !4218, line: 71, type: !4905, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1556, retainedNodes: !4908)
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!4907}
!4907 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !2086)
!4908 = !{!4909, !4910}
!4909 = !DILocalVariable(name: "x", arg: 1, scope: !4904, file: !4218, line: 71, type: !4907)
!4910 = !DILocalVariable(name: "buf", scope: !4904, file: !4218, line: 76, type: !84)
!4911 = !DILocation(line: 71, column: 6, scope: !4904)
!4912 = !DILocation(line: 71, column: 22, scope: !4904)
!4913 = !DILocation(line: 76, column: 17, scope: !4904)
!4914 = !DILocation(line: 76, column: 43, scope: !4904)
!4915 = !DILocation(line: 76, column: 14, scope: !4904)
!4916 = !DILocation(line: 76, column: 2, scope: !4904)
!4917 = !DILocation(line: 77, column: 9, scope: !4904)
!4918 = !DILocation(line: 77, column: 31, scope: !4904)
!4919 = !DILocation(line: 77, column: 39, scope: !4904)
!4920 = !DILocation(line: 77, column: 8, scope: !4904)
!4921 = !DILocation(line: 78, column: 20, scope: !4904)
!4922 = !DILocation(line: 78, column: 30, scope: !4904)
!4923 = !DILocation(line: 78, column: 42, scope: !4904)
!4924 = !DILocation(line: 78, column: 46, scope: !4904)
!4925 = !DILocation(line: 78, column: 16, scope: !4904)
!4926 = !DILocation(line: 78, column: 2, scope: !4904)
!4927 = distinct !DISubprogram(name: "main.f_gold", linkageName: "f_gold", scope: !4928, file: !4928, line: 4, type: !1888, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !4929)
!4928 = !DIFile(filename: "TAIL_RECURSION_emit.go", directory: "/root/es/vert/vert/source_funs/go_transcoder/TAIL_RECURSION")
!4929 = !{!4930}
!4930 = !DILocalVariable(name: "n", arg: 1, scope: !4927, file: !4928, line: 4, type: !1890)
!4931 = !DILocation(line: 4, column: 6, scope: !4927)
!4932 = !DILocation(line: 5, column: 5, scope: !4927)
!4933 = !DILocation(line: 5, column: 7, scope: !4927)
!4934 = !DILocation(line: 0, scope: !4927)
!4935 = !DILocation(line: 6, column: 3, scope: !4927)
!4936 = !DILocation(line: 8, column: 9, scope: !4927)
!4937 = !DILocation(line: 8, column: 20, scope: !4927)
!4938 = !DILocation(line: 8, column: 21, scope: !4927)
!4939 = !DILocation(line: 8, column: 19, scope: !4927)
!4940 = !DILocation(line: 8, column: 11, scope: !4927)
!4941 = !DILocation(line: 8, column: 2, scope: !4927)
