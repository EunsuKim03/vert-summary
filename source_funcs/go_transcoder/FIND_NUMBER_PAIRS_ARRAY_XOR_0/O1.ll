; ModuleID = 'main'
source_filename = "main"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-musleabihf"

%"internal/task.Task" = type { ptr, ptr, i64, %"internal/reflectlite.badSyntax", %"internal/task.state", i8, i1, i8, ptr }
%"internal/reflectlite.badSyntax" = type {}
%"internal/task.state" = type { i64, ptr, i64, i64, ptr, %"internal/task.Semaphore" }
%"internal/task.Semaphore" = type { %"internal/futex.Futex" }
%"internal/futex.Futex" = type { %"sync/atomic.Bool" }
%"sync/atomic.Bool" = type { %"internal/reflectlite.badSyntax", i32 }
%runtime._string = type { ptr, i64 }
%runtime.elfHeader = type { i32, i8, i8, i8, i8, i8, [7 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }

@"internal/task.activeTasks" = internal unnamed_addr global ptr @"internal/task.mainTask", align 8, !dbg !0
@"internal/task.mainTask" = internal global %"internal/task.Task" zeroinitializer, align 8, !dbg !50
@"internal/task$string" = internal unnamed_addr constant [30 x i8] c"sync: unlock of unlocked Mutex", align 1, !dbg !52
@"internal/task$pack" = internal unnamed_addr constant { %runtime._string } { %runtime._string { ptr @"internal/task$string", i64 30 } }
@"internal/task.numCPU" = internal global i32 0, align 4, !dbg !58
@"internal/task.activeTaskLock" = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !61
@"internal/task$string.7" = internal unnamed_addr constant [20 x i8] c"unknown current task", align 1, !dbg !65
@"internal/task.otherGoroutines" = internal unnamed_addr global i32 0, align 4, !dbg !70
@"internal/task$string.13" = internal unnamed_addr constant [17 x i8] c"taskExited failed", align 1, !dbg !72
@"internal/task.scanWaitGroup" = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !77
@"internal/task.gcState" = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !83
@__ehdr_start = external global %runtime.elfHeader, align 8
@"runtime$string.12" = internal unnamed_addr constant [7 x i8] c"panic: ", align 1, !dbg !85
@"runtime$string.13" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !91
@"runtime$string.14" = internal unnamed_addr constant [2 x i8] c": ", align 1, !dbg !96
@"runtime$string.17" = internal unnamed_addr constant [23 x i8] c"nil pointer dereference", align 1, !dbg !101
@"runtime$string.19" = internal unnamed_addr constant [18 x i8] c"index out of range", align 1, !dbg !106
@runtime.stackTop = internal unnamed_addr global i64 0, align 8, !dbg !111
@runtime.main_argv = internal unnamed_addr global ptr null, align 8, !dbg !114
@"runtime$string.50" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !117
@"runtime$string.55" = internal unnamed_addr constant [20 x i8] c"panic: runtime error", align 1, !dbg !119
@runtime.signalFutex = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !121
@runtime.receivedSignals = internal global %"sync/atomic.Bool" zeroinitializer, align 4, !dbg !123
@runtime.printLock = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !125
@"reflect/types.type:basic:string" = internal constant { i8, ptr } { i8 81, ptr @"reflect/types.type:pointer:basic:string" }, align 8, !dbg !128
@"reflect/types.type:pointer:basic:string" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:basic:string" }, align 8, !dbg !136
@.string = private unnamed_addr global [6 x i8] c"0.41.1", align 1
@runtime.buildVersion = local_unnamed_addr global %runtime._string { ptr @.string, i64 6 }, align 8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #0

declare void @tinygo_futex_wait(ptr nocapture dereferenceable_or_null(4), i32) local_unnamed_addr #1

declare void @tinygo_futex_wake(ptr nocapture dereferenceable_or_null(4)) local_unnamed_addr #1

declare void @tinygo_futex_wake_all(ptr nocapture dereferenceable_or_null(4)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable(sync)
define internal fastcc void @"(*internal/task.Mutex).Unlock"(ptr nocapture dereferenceable_or_null(4) %m) unnamed_addr #2 !dbg !1928 {
entry:
    #dbg_value(ptr %m, !1933, !DIExpression(), !1935)
    #dbg_value(ptr %m, !1933, !DIExpression(), !1936)
  %0 = icmp eq ptr %m, null, !dbg !1937
  br i1 %0, label %gep.throw, label %"(*sync/atomic.Uint32).Swap.exit", !dbg !1937

"(*sync/atomic.Uint32).Swap.exit":                ; preds = %entry
    #dbg_value(ptr %m, !1938, !DIExpression(), !1946)
    #dbg_value(i32 0, !1945, !DIExpression(), !1946)
    #dbg_value(ptr %m, !1938, !DIExpression(), !1948)
    #dbg_value(i32 0, !1945, !DIExpression(), !1949)
    #dbg_value(ptr %m, !1950, !DIExpression(), !1958)
    #dbg_value(i32 0, !1957, !DIExpression(), !1958)
  %1 = atomicrmw xchg ptr %m, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !1958
    #dbg_value(i32 %1, !1934, !DIExpression(), !1960)
    #dbg_value(i32 %1, !1934, !DIExpression(), !1961)
  switch i32 %1, label %if.done [
    i32 0, label %if.then
    i32 2, label %gep.next5
  ], !dbg !1962

if.then:                                          ; preds = %"(*sync/atomic.Uint32).Swap.exit"
  call fastcc void @runtime._panic(), !dbg !1963
  unreachable, !dbg !1963

gep.next5:                                        ; preds = %"(*sync/atomic.Uint32).Swap.exit"
    #dbg_value(ptr %m, !1933, !DIExpression(), !1964)
    #dbg_value(ptr %m, !1965, !DIExpression(), !1972)
    #dbg_value(ptr %m, !1965, !DIExpression(), !1974)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) %m) #15, !dbg !1975
  br label %if.done, !dbg !1962

if.done:                                          ; preds = %"(*sync/atomic.Uint32).Swap.exit", %gep.next5
  ret void, !dbg !1976

gep.throw:                                        ; preds = %entry
  call fastcc void @runtime.nilPanic(), !dbg !1937
  unreachable, !dbg !1937
}

declare void @tinygo_task_init(ptr dereferenceable_or_null(88), ptr dereferenceable_or_null(8), ptr dereferenceable_or_null(4), ptr) local_unnamed_addr #1

declare ptr @tinygo_task_current() local_unnamed_addr #1

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_exited(ptr nocapture readonly dereferenceable_or_null(88) %t) local_unnamed_addr #2 !dbg !1977 {
entry:
    #dbg_value(ptr %t, !1981, !DIExpression(), !1986)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1987, !DIExpression(), !1991)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1987, !DIExpression(), !1993)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1994, !DIExpression(), !2001)
    #dbg_value(i32 0, !1999, !DIExpression(), !2001)
    #dbg_value(i32 1, !2000, !DIExpression(), !2001)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1994, !DIExpression(), !2003)
    #dbg_value(i32 0, !1999, !DIExpression(), !2004)
    #dbg_value(i32 1, !2000, !DIExpression(), !2005)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2006, !DIExpression(), !2013)
    #dbg_value(i32 0, !2011, !DIExpression(), !2013)
    #dbg_value(i32 1, !2012, !DIExpression(), !2013)
  %0 = cmpxchg ptr @"internal/task.activeTaskLock", i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2013
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !2013
  br i1 %1, label %"(*internal/task.Mutex).Lock.exit", label %for.loop.preheader.i, !dbg !2015

for.loop.preheader.i:                             ; preds = %entry
    #dbg_value(ptr @"internal/task.activeTaskLock", !1987, !DIExpression(), !2016)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1938, !DIExpression(), !2017)
    #dbg_value(i32 2, !1945, !DIExpression(), !2017)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1938, !DIExpression(), !2019)
    #dbg_value(i32 2, !1945, !DIExpression(), !2020)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1950, !DIExpression(), !2021)
    #dbg_value(i32 2, !1957, !DIExpression(), !2021)
  %2 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2021
  %.not4.i = icmp eq i32 %2, 0, !dbg !2023
  br i1 %.not4.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !2015

"(*internal/futex.Futex).Wait.exit.i":            ; preds = %for.loop.preheader.i, %"(*internal/futex.Futex).Wait.exit.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1987, !DIExpression(), !2024)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2025, !DIExpression(), !2031)
    #dbg_value(i32 2, !2030, !DIExpression(), !2033)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock", i32 2) #15, !dbg !2034
    #dbg_value(ptr @"internal/task.activeTaskLock", !1938, !DIExpression(), !2019)
    #dbg_value(i32 2, !1945, !DIExpression(), !2020)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1950, !DIExpression(), !2021)
    #dbg_value(i32 2, !1957, !DIExpression(), !2021)
  %3 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2021
  %.not.i = icmp eq i32 %3, 0, !dbg !2023
  br i1 %.not.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !2015

"(*internal/task.Mutex).Lock.exit":               ; preds = %"(*internal/futex.Futex).Wait.exit.i", %entry, %for.loop.preheader.i
    #dbg_value(i1 false, !1982, !DIExpression(), !2035)
    #dbg_value(ptr @"internal/task.activeTasks", !1983, !DIExpression(), !2036)
  %4 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2037
  %.not.not6 = icmp eq ptr %4, null, !dbg !2038
  br i1 %.not.not6, label %if.then4.critedge, label %deref.next10, !dbg !2039

for.loop:                                         ; preds = %deref.next10
  %5 = getelementptr inbounds nuw i8, ptr %7, i64 56, !dbg !2040
    #dbg_value(ptr %5, !1983, !DIExpression(), !2041)
    #dbg_value(ptr %5, !1983, !DIExpression(), !2042)
  %6 = load ptr, ptr %5, align 8, !dbg !2037
  %.not.not = icmp eq ptr %6, null, !dbg !2038
  br i1 %.not.not, label %if.then4.critedge, label %deref.next10, !dbg !2039

deref.next10:                                     ; preds = %"(*internal/task.Mutex).Lock.exit", %for.loop
  %7 = phi ptr [ %6, %for.loop ], [ %4, %"(*internal/task.Mutex).Lock.exit" ]
  %8 = phi ptr [ %5, %for.loop ], [ @"internal/task.activeTasks", %"(*internal/task.Mutex).Lock.exit" ]
    #dbg_value(ptr %8, !1983, !DIExpression(), !2042)
    #dbg_value(ptr %8, !1983, !DIExpression(), !2043)
    #dbg_value(ptr %t, !1981, !DIExpression(), !2044)
  %9 = icmp eq ptr %7, %t, !dbg !2045
    #dbg_value(ptr %8, !1983, !DIExpression(), !2046)
    #dbg_value(ptr %7, !1983, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !2041)
  br i1 %9, label %store.next, label %for.loop, !dbg !2039

store.next:                                       ; preds = %deref.next10
    #dbg_value(ptr %8, !1983, !DIExpression(), !2047)
    #dbg_value(ptr %t, !1981, !DIExpression(), !2048)
  %10 = getelementptr inbounds nuw i8, ptr %t, i64 56, !dbg !2049
  %11 = load ptr, ptr %10, align 8, !dbg !2049
  store ptr %11, ptr %8, align 8, !dbg !2050
    #dbg_value(i1 true, !1982, !DIExpression(), !2051)
  %12 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2052
  %13 = add i32 %12, -1, !dbg !2052
  store i32 %13, ptr @"internal/task.otherGoroutines", align 4, !dbg !2052
    #dbg_value(i32 %13, !1985, !DIExpression(), !2052)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1933, !DIExpression(), !2053)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1933, !DIExpression(), !2055)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1938, !DIExpression(), !2056)
    #dbg_value(i32 0, !1945, !DIExpression(), !2056)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1938, !DIExpression(), !2058)
    #dbg_value(i32 0, !1945, !DIExpression(), !2059)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1950, !DIExpression(), !2060)
    #dbg_value(i32 0, !1957, !DIExpression(), !2060)
  %14 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2060
    #dbg_value(i32 %14, !1934, !DIExpression(), !2062)
    #dbg_value(i32 %14, !1934, !DIExpression(), !2063)
  switch i32 %14, label %"(*internal/task.Mutex).Unlock.exit" [
    i32 0, label %if.then.i
    i32 2, label %gep.next5.i
  ], !dbg !2064

if.then.i:                                        ; preds = %store.next
  call fastcc void @runtime._panic(), !dbg !2065
  unreachable, !dbg !2065

gep.next5.i:                                      ; preds = %store.next
    #dbg_value(ptr @"internal/task.activeTaskLock", !1933, !DIExpression(), !2066)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1965, !DIExpression(), !2067)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1965, !DIExpression(), !2069)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock") #15, !dbg !2070
  br label %"(*internal/task.Mutex).Unlock.exit", !dbg !2064

"(*internal/task.Mutex).Unlock.exit":             ; preds = %store.next, %gep.next5.i
    #dbg_value(i1 poison, !1982, !DIExpression(), !2071)
  ret void, !dbg !2072

if.then4.critedge:                                ; preds = %for.loop, %"(*internal/task.Mutex).Lock.exit"
  %15 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2052
  %16 = add i32 %15, -1, !dbg !2052
  store i32 %16, ptr @"internal/task.otherGoroutines", align 4, !dbg !2052
    #dbg_value(i32 %13, !1985, !DIExpression(), !2052)
  call fastcc void @"(*internal/task.Mutex).Unlock"(ptr nonnull @"internal/task.activeTaskLock"), !dbg !2073
    #dbg_value(i1 poison, !1982, !DIExpression(), !2071)
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.13", i64 17), !dbg !2074
  unreachable, !dbg !2039
}

declare void @tinygo_task_send_gc_signal(ptr nocapture) local_unnamed_addr #1

declare void @tinygo_scanCurrentStack() local_unnamed_addr #1

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_gc_pause(i32 %sig) local_unnamed_addr #2 !dbg !2075 {
entry:
    #dbg_value(i32 %sig, !2079, !DIExpression(), !2081)
  %0 = call ptr @tinygo_task_current() #15, !dbg !2082
    #dbg_value(ptr %0, !2086, !DIExpression(), !2088)
    #dbg_value(ptr %0, !2086, !DIExpression(), !2089)
  %1 = icmp eq ptr %0, null, !dbg !2090
  br i1 %1, label %if.then.i, label %"internal/task.Current.exit", !dbg !2091

if.then.i:                                        ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2092
  unreachable, !dbg !2091

"internal/task.Current.exit":                     ; preds = %entry
    #dbg_value(ptr %0, !2086, !DIExpression(), !2093)
  %2 = call ptr @llvm.stacksave.p0(), !dbg !2094
  %3 = ptrtoint ptr %2 to i64, !dbg !2097
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2098
  store i64 %3, ptr %4, align 8, !dbg !2098
    #dbg_value(i64 %3, !2080, !DIExpression(), !2098)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2099, !DIExpression(), !2105)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2099, !DIExpression(), !2107)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2108, !DIExpression(), !2112)
    #dbg_value(i32 -1, !2111, !DIExpression(), !2112)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2108, !DIExpression(), !2114)
    #dbg_value(i32 -1, !2111, !DIExpression(), !2115)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2116, !DIExpression(), !2120)
    #dbg_value(i32 -1, !2119, !DIExpression(), !2120)
  %5 = atomicrmw add ptr @"internal/task.scanWaitGroup", i32 -1 syncscope("singlethread") seq_cst, align 4, !dbg !2120
  %6 = icmp eq i32 %5, 1, !dbg !2122
  br i1 %6, label %gep.next4.i, label %"(*internal/task.waitGroup).done.exit", !dbg !2123

gep.next4.i:                                      ; preds = %"internal/task.Current.exit"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2099, !DIExpression(), !2124)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2125, !DIExpression(), !2128)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2125, !DIExpression(), !2130)
  call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.scanWaitGroup") #15, !dbg !2131
  br label %"(*internal/task.waitGroup).done.exit", !dbg !2123

"(*internal/task.waitGroup).done.exit":           ; preds = %"internal/task.Current.exit", %gep.next4.i
    #dbg_value(ptr @"internal/task.gcState", !2132, !DIExpression(), !2137)
    #dbg_value(ptr @"internal/task.gcState", !2132, !DIExpression(), !2139)
    #dbg_value(ptr @"internal/task.gcState", !2140, !DIExpression(), !2145)
  %7 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2145
  %8 = icmp eq i32 %7, 1, !dbg !2147
  br i1 %8, label %for.body, label %for.done, !dbg !2148

for.body:                                         ; preds = %"(*internal/task.waitGroup).done.exit", %for.body
    #dbg_value(ptr @"internal/task.gcState", !2025, !DIExpression(), !2149)
    #dbg_value(i32 1, !2030, !DIExpression(), !2151)
  call void @tinygo_futex_wait(ptr nonnull @"internal/task.gcState", i32 1) #15, !dbg !2152
    #dbg_value(ptr @"internal/task.gcState", !2132, !DIExpression(), !2139)
    #dbg_value(ptr @"internal/task.gcState", !2140, !DIExpression(), !2145)
  %9 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2145
  %10 = icmp eq i32 %9, 1, !dbg !2147
  br i1 %10, label %for.body, label %for.done, !dbg !2148

for.done:                                         ; preds = %for.body, %"(*internal/task.waitGroup).done.exit"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2099, !DIExpression(), !2153)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2099, !DIExpression(), !2155)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2108, !DIExpression(), !2156)
    #dbg_value(i32 -1, !2111, !DIExpression(), !2156)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2108, !DIExpression(), !2158)
    #dbg_value(i32 -1, !2111, !DIExpression(), !2159)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2116, !DIExpression(), !2160)
    #dbg_value(i32 -1, !2119, !DIExpression(), !2160)
  %11 = atomicrmw add ptr @"internal/task.scanWaitGroup", i32 -1 syncscope("singlethread") seq_cst, align 4, !dbg !2160
  %12 = icmp eq i32 %11, 1, !dbg !2162
  br i1 %12, label %gep.next4.i3, label %"(*internal/task.waitGroup).done.exit4", !dbg !2163

gep.next4.i3:                                     ; preds = %for.done
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2099, !DIExpression(), !2164)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2125, !DIExpression(), !2165)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2125, !DIExpression(), !2167)
  call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.scanWaitGroup") #15, !dbg !2168
  br label %"(*internal/task.waitGroup).done.exit4", !dbg !2163

"(*internal/task.waitGroup).done.exit4":          ; preds = %for.done, %gep.next4.i3
  ret void, !dbg !2169
}

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.runtimePanic(ptr nocapture readonly %msg.data, i64 range(i64 17, 21) %msg.len) unnamed_addr #3 !dbg !2170 {
entry:
    #dbg_value(ptr %msg.data, !2174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2175)
    #dbg_value(i64 %msg.len, !2174, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2175)
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !2176
    #dbg_value(%runtime._string poison, !2174, !DIExpression(), !2177)
  call fastcc void @runtime.runtimePanicAt(ptr %0, ptr %msg.data, i64 %msg.len), !dbg !2178
  unreachable, !dbg !2179
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.runtimePanicAt(ptr %addr, ptr nocapture readonly %msg.data, i64 range(i64 17, 24) %msg.len) unnamed_addr #3 !dbg !2180 {
entry:
    #dbg_value(ptr %addr, !2184, !DIExpression(), !2186)
    #dbg_value(ptr %msg.data, !2185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2186)
    #dbg_value(i64 %msg.len, !2185, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2186)
  call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.13", i64 24), !dbg !2187
    #dbg_value(ptr %addr, !2184, !DIExpression(), !2188)
  %0 = ptrtoint ptr %addr to i64, !dbg !2189
  %1 = add i64 %0, -5, !dbg !2190
  call fastcc void @runtime.printptr(i64 %1), !dbg !2191
  call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.14", i64 2), !dbg !2192
    #dbg_value(%runtime._string poison, !2185, !DIExpression(), !2193)
  call fastcc void @runtime.printstring(ptr %msg.data, i64 %msg.len), !dbg !2194
  call fastcc void @runtime.printnl(), !dbg !2195
  call void @abort() #15, !dbg !2196
  unreachable, !dbg !2197
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printstring(ptr nocapture readonly %s.data, i64 range(i64 2, 31) %s.len) unnamed_addr #5 !dbg !2198 {
entry:
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2203
    #dbg_value(ptr %s.data, !2200, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2210)
    #dbg_value(i64 %s.len, !2200, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2210)
    #dbg_value(i64 0, !2201, !DIExpression(), !2211)
    #dbg_value(%runtime._string poison, !2200, !DIExpression(), !2212)
  br label %for.body, !dbg !2213

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ 0, %entry ], [ %4, %for.body ]
    #dbg_value(i64 %0, !2201, !DIExpression(), !2214)
    #dbg_value(%runtime._string poison, !2200, !DIExpression(), !2215)
  %1 = getelementptr inbounds nuw i8, ptr %s.data, i64 %0, !dbg !2216
  %2 = load i8, ptr %1, align 1, !dbg !2216
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2217
    #dbg_value(i8 %2, !2208, !DIExpression(), !2217)
  store i8 %2, ptr %stackalloc.i, align 1, !dbg !2217
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #15, !dbg !2218
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2219
  %4 = add nuw nsw i64 %0, 1, !dbg !2220
    #dbg_value(i64 %4, !2201, !DIExpression(), !2221)
  %exitcond.not = icmp eq i64 %4, %s.len, !dbg !2222
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !2213

for.done:                                         ; preds = %for.body
  ret void, !dbg !2223
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printptr(i64 %ptr) unnamed_addr #5 !dbg !2224 {
entry:
  %stackalloc.i4 = alloca [1 x i8], align 1, !dbg !2231
  %stackalloc.i3 = alloca [1 x i8], align 1, !dbg !2233
  %stackalloc.i2 = alloca [1 x i8], align 1, !dbg !2235
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2237
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2239
    #dbg_value(i64 %ptr, !2228, !DIExpression(), !2242)
    #dbg_value(i64 %ptr, !2228, !DIExpression(), !2243)
  %0 = icmp eq i64 %ptr, 0, !dbg !2244
  br i1 %0, label %for.body.i, label %if.done, !dbg !2245

common.ret:                                       ; preds = %if.done2, %for.body.i
  ret void, !dbg !2245

for.body.i:                                       ; preds = %entry
    #dbg_value(i64 0, !2201, !DIExpression(), !2246)
    #dbg_value(%runtime._string poison, !2200, !DIExpression(), !2247)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2248
    #dbg_value(i8 110, !2208, !DIExpression(), !2248)
  store i8 110, ptr %stackalloc.i.i, align 1, !dbg !2248
  %1 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #15, !dbg !2249
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2250
    #dbg_value(i64 1, !2201, !DIExpression(), !2251)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2248
    #dbg_value(i8 105, !2208, !DIExpression(), !2248)
  store i8 105, ptr %stackalloc.i.i, align 1, !dbg !2248
  %2 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #15, !dbg !2249
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2250
    #dbg_value(i64 2, !2201, !DIExpression(), !2251)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2248
    #dbg_value(i8 108, !2208, !DIExpression(), !2248)
  store i8 108, ptr %stackalloc.i.i, align 1, !dbg !2248
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #15, !dbg !2249
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2250
    #dbg_value(i64 3, !2201, !DIExpression(), !2251)
  br label %common.ret, !dbg !2245

if.done:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2252
    #dbg_value(i8 48, !2208, !DIExpression(), !2253)
    #dbg_value(i8 48, !2208, !DIExpression(), !2252)
  store i8 48, ptr %stackalloc.i, align 1, !dbg !2252
    #dbg_value(i8 48, !2208, !DIExpression(), !2252)
  %4 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #15, !dbg !2254
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2255
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i2), !dbg !2256
    #dbg_value(i8 120, !2208, !DIExpression(), !2257)
    #dbg_value(i8 120, !2208, !DIExpression(), !2256)
  store i8 120, ptr %stackalloc.i2, align 1, !dbg !2256
    #dbg_value(i8 120, !2208, !DIExpression(), !2256)
  %5 = call i64 @write(i32 1, ptr nonnull %stackalloc.i2, i64 1) #15, !dbg !2258
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i2), !dbg !2259
    #dbg_value(i64 0, !2229, !DIExpression(), !2260)
  br label %for.body, !dbg !2245

for.body:                                         ; preds = %if.done, %if.done2
  %6 = phi i64 [ 0, %if.done ], [ %14, %if.done2 ]
  %7 = phi i64 [ %ptr, %if.done ], [ %13, %if.done2 ]
    #dbg_value(i64 %6, !2229, !DIExpression(), !2261)
    #dbg_value(i64 %7, !2228, !DIExpression(), !2262)
  %8 = lshr i64 %7, 60, !dbg !2263
  %9 = trunc nuw nsw i64 %8 to i8, !dbg !2264
    #dbg_value(i8 %9, !2230, !DIExpression(), !2265)
    #dbg_value(i8 %9, !2230, !DIExpression(), !2266)
  %10 = icmp ult i64 %7, -6917529027641081856, !dbg !2267
  br i1 %10, label %if.then1, label %if.else, !dbg !2245

if.then1:                                         ; preds = %for.body
    #dbg_value(i8 %9, !2230, !DIExpression(), !2268)
  %11 = or disjoint i8 %9, 48, !dbg !2269
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i3), !dbg !2270
    #dbg_value(i8 %11, !2208, !DIExpression(), !2271)
    #dbg_value(i8 %11, !2208, !DIExpression(), !2270)
  store i8 %11, ptr %stackalloc.i3, align 1, !dbg !2270
    #dbg_value(i8 %11, !2208, !DIExpression(), !2270)
  %12 = call i64 @write(i32 1, ptr nonnull %stackalloc.i3, i64 1) #15, !dbg !2272
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i3), !dbg !2273
  br label %if.done2, !dbg !2245

if.done2:                                         ; preds = %if.else, %if.then1
  %13 = shl i64 %7, 4, !dbg !2274
    #dbg_value(i64 %13, !2228, !DIExpression(), !2274)
  %14 = add nuw nsw i64 %6, 1, !dbg !2275
    #dbg_value(i64 %14, !2229, !DIExpression(), !2261)
  %exitcond.not = icmp eq i64 %14, 16, !dbg !2276
  br i1 %exitcond.not, label %common.ret, label %for.body, !dbg !2245

if.else:                                          ; preds = %for.body
    #dbg_value(i8 %9, !2230, !DIExpression(), !2277)
  %15 = add nuw nsw i8 %9, 87, !dbg !2278
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i4), !dbg !2279
    #dbg_value(i8 %15, !2208, !DIExpression(), !2280)
    #dbg_value(i8 %15, !2208, !DIExpression(), !2279)
  store i8 %15, ptr %stackalloc.i4, align 1, !dbg !2279
    #dbg_value(i8 %15, !2208, !DIExpression(), !2279)
  %16 = call i64 @write(i32 1, ptr nonnull %stackalloc.i4, i64 1) #15, !dbg !2281
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i4), !dbg !2282
  br label %if.done2, !dbg !2245
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printnl() unnamed_addr #5 !dbg !2283 {
entry:
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2285
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2287
    #dbg_value(i8 10, !2208, !DIExpression(), !2288)
    #dbg_value(i8 10, !2208, !DIExpression(), !2287)
  store i8 10, ptr %stackalloc.i, align 1, !dbg !2287
    #dbg_value(i8 10, !2208, !DIExpression(), !2287)
  %0 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #15, !dbg !2289
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2290
  ret void, !dbg !2291
}

; Function Attrs: cold nofree noreturn
declare void @abort() local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

declare i32 @getrandom(ptr nocapture, i64, i32) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #8

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.nilPanic() unnamed_addr #3 !dbg !2292 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !2293
  call fastcc void @runtime.runtimePanicAt(ptr %0, ptr nonnull @"runtime$string.17", i64 23), !dbg !2294
  unreachable, !dbg !2295
}

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.lookupPanic() unnamed_addr #3 !dbg !2296 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !2297
  call fastcc void @runtime.runtimePanicAt(ptr %0, ptr nonnull @"runtime$string.19", i64 18), !dbg !2298
  unreachable, !dbg !2299
}

; Function Attrs: noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.panicOrGoexit() unnamed_addr #9 !dbg !2300 {
entry:
    #dbg_value(ptr @"reflect/types.type:basic:string", !2305, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2321)
    #dbg_value(ptr @"internal/task$pack", !2305, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2321)
    #dbg_value(i8 1, !2306, !DIExpression(), !2321)
  %0 = call ptr @tinygo_task_current() #15, !dbg !2322
    #dbg_value(ptr %0, !2086, !DIExpression(), !2324)
    #dbg_value(ptr %0, !2086, !DIExpression(), !2325)
  %1 = icmp eq ptr %0, null, !dbg !2326
  br i1 %1, label %if.then.i, label %"internal/task.Current.exit", !dbg !2327

if.then.i:                                        ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2328
  unreachable, !dbg !2327

"internal/task.Current.exit":                     ; preds = %entry
    #dbg_value(ptr %0, !2086, !DIExpression(), !2329)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !2330
  %3 = load ptr, ptr %2, align 8, !dbg !2330
    #dbg_value(ptr %3, !2307, !DIExpression(), !2331)
    #dbg_value(ptr %3, !2307, !DIExpression(), !2332)
  %.not = icmp eq ptr %3, null, !dbg !2333
  br i1 %.not, label %if.done5, label %store.next, !dbg !2334

store.next:                                       ; preds = %"internal/task.Current.exit"
    #dbg_value(ptr %3, !2307, !DIExpression(), !2335)
    #dbg_value({ ptr, ptr } poison, !2305, !DIExpression(), !2336)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !2337
  store ptr @"reflect/types.type:basic:string", ptr %4, align 8, !dbg !2337
  %.repack5 = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !2337
  store ptr @"internal/task$pack", ptr %.repack5, align 8, !dbg !2337
    #dbg_value({ ptr, ptr } poison, !2319, !DIExpression(), !2337)
    #dbg_value(ptr %3, !2307, !DIExpression(), !2338)
    #dbg_value(i8 1, !2306, !DIExpression(), !2339)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !2340
  store i8 1, ptr %5, align 1, !dbg !2340
    #dbg_value(i8 1, !2320, !DIExpression(), !2340)
    #dbg_value(ptr %3, !2307, !DIExpression(), !2341)
  call void @tinygo_longjmp(ptr nonnull %3) #15, !dbg !2342
  br label %if.done5, !dbg !2334

if.done5:                                         ; preds = %"internal/task.Current.exit", %store.next
    #dbg_value(i8 1, !2306, !DIExpression(), !2343)
  call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.12", i64 7), !dbg !2344
    #dbg_value({ ptr, ptr } poison, !2305, !DIExpression(), !2345)
  call fastcc void @runtime.printitf(), !dbg !2346
  call fastcc void @runtime.printnl(), !dbg !2347
  call void @abort() #15, !dbg !2348
  unreachable, !dbg !2349
}

declare void @tinygo_longjmp(ptr nocapture dereferenceable_or_null(48)) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printitf() unnamed_addr #5 !dbg !2350 {
entry:
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2381
    #dbg_value(ptr @"reflect/types.type:basic:string", !2354, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2384)
    #dbg_value(ptr @"internal/task$pack", !2354, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2384)
    #dbg_value({ ptr, ptr } poison, !2354, !DIExpression(), !2385)
    #dbg_value(%runtime._string { ptr @"internal/task$string", i64 30 }, !2376, !DIExpression(), !2386)
    #dbg_value(ptr @"internal/task$string", !2200, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2387)
    #dbg_value(i64 30, !2200, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2387)
    #dbg_value(i64 0, !2201, !DIExpression(), !2388)
    #dbg_value(%runtime._string poison, !2200, !DIExpression(), !2389)
  br label %for.body.i, !dbg !2390

for.body.i:                                       ; preds = %for.body.i, %entry
  %0 = phi i64 [ 0, %entry ], [ %4, %for.body.i ]
    #dbg_value(i64 %0, !2201, !DIExpression(), !2391)
    #dbg_value(%runtime._string poison, !2200, !DIExpression(), !2392)
  %1 = getelementptr inbounds nuw i8, ptr @"internal/task$string", i64 %0, !dbg !2393
  %2 = load i8, ptr %1, align 1, !dbg !2393
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2394
    #dbg_value(i8 %2, !2208, !DIExpression(), !2394)
  store i8 %2, ptr %stackalloc.i.i, align 1, !dbg !2394
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #15, !dbg !2395
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2396
  %4 = add nuw nsw i64 %0, 1, !dbg !2397
    #dbg_value(i64 %4, !2201, !DIExpression(), !2398)
  %exitcond.not.i = icmp eq i64 %4, 30, !dbg !2399
  br i1 %exitcond.not.i, label %runtime.printstring.exit, label %for.body.i, !dbg !2390

runtime.printstring.exit:                         ; preds = %for.body.i
  ret void, !dbg !2400
}

; Function Attrs: noreturn nounwind uwtable(sync)
define internal fastcc void @runtime._panic() unnamed_addr #9 !dbg !2401 {
entry:
    #dbg_value(ptr @"reflect/types.type:basic:string", !2403, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2404)
    #dbg_value(ptr @"internal/task$pack", !2403, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2404)
    #dbg_value({ ptr, ptr } poison, !2403, !DIExpression(), !2405)
  call fastcc void @runtime.panicOrGoexit(), !dbg !2406
  unreachable, !dbg !2407
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define double @fminimum(double %x, double %y) local_unnamed_addr #10 !dbg !2408 {
entry:
    #dbg_value(double %x, !2412, !DIExpression(), !2414)
    #dbg_value(double %y, !2413, !DIExpression(), !2414)
    #dbg_value(double %x, !2412, !DIExpression(), !2415)
    #dbg_value(double %y, !2413, !DIExpression(), !2416)
    #dbg_value(double %x, !2417, !DIExpression(), !2421)
    #dbg_value(double %y, !2420, !DIExpression(), !2421)
    #dbg_value(double %x, !2417, !DIExpression(), !2423)
    #dbg_value(double %y, !2420, !DIExpression(), !2424)
    #dbg_value(double %x, !2425, !DIExpression(), !2435)
    #dbg_value(double %y, !2430, !DIExpression(), !2435)
    #dbg_value(i64 9218868437227405313, !2431, !DIExpression(), !2435)
    #dbg_value(i64 9223372036854775807, !2432, !DIExpression(), !2435)
  %.cast.i.i = bitcast double %x to i64, !dbg !2437
    #dbg_value(i64 %.cast.i.i, !2433, !DIExpression(), !2438)
  %.cast2.i.i = bitcast double %y to i64, !dbg !2439
    #dbg_value(i64 %.cast2.i.i, !2434, !DIExpression(), !2440)
    #dbg_value(i64 %.cast.i.i, !2433, !DIExpression(), !2441)
    #dbg_value(i64 9218868437227405313, !2431, !DIExpression(), !2442)
  %0 = icmp sgt i64 %.cast.i.i, 9218868437227405312, !dbg !2443
  br i1 %0, label %runtime.minimumFloat64.exit, label %switch.next.i.i, !dbg !2444

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i64 %.cast2.i.i, !2434, !DIExpression(), !2445)
    #dbg_value(i64 9218868437227405313, !2431, !DIExpression(), !2446)
  %1 = icmp sgt i64 %.cast2.i.i, 9218868437227405312, !dbg !2447
  br i1 %1, label %runtime.minimumFloat64.exit, label %switch.next2.i.i, !dbg !2444

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i64 %.cast.i.i, !2433, !DIExpression(), !2448)
  %2 = icmp slt i64 %.cast.i.i, 0, !dbg !2449
  %3 = xor i64 %.cast.i.i, 9223372036854775807
  %spec.select.i.i = select i1 %2, i64 %3, i64 %.cast.i.i, !dbg !2444
    #dbg_value(i64 %.cast2.i.i, !2434, !DIExpression(), !2450)
  %4 = icmp slt i64 %.cast2.i.i, 0, !dbg !2451
  %5 = xor i64 %.cast2.i.i, 9223372036854775807, !dbg !2444
  %6 = select i1 %4, i64 %5, i64 %.cast2.i.i, !dbg !2444
    #dbg_value(i64 %spec.select.i.i, !2433, !DIExpression(), !2452)
    #dbg_value(i64 %6, !2434, !DIExpression(), !2453)
  %.not.i.i = icmp sgt i64 %spec.select.i.i, %6, !dbg !2454
  %y.x.i.i = select i1 %.not.i.i, double %y, double %x, !dbg !2444
  br label %runtime.minimumFloat64.exit, !dbg !2444

runtime.minimumFloat64.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next2.i.i
  %common.ret.op.i.i = phi double [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next2.i.i ]
  ret double %common.ret.op.i.i, !dbg !2455
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define float @fminimumf(float %x, float %y) local_unnamed_addr #10 !dbg !2456 {
entry:
    #dbg_value(float %x, !2460, !DIExpression(), !2462)
    #dbg_value(float %y, !2461, !DIExpression(), !2462)
    #dbg_value(float %x, !2460, !DIExpression(), !2463)
    #dbg_value(float %y, !2461, !DIExpression(), !2464)
    #dbg_value(float %x, !2465, !DIExpression(), !2469)
    #dbg_value(float %y, !2468, !DIExpression(), !2469)
    #dbg_value(float %x, !2465, !DIExpression(), !2471)
    #dbg_value(float %y, !2468, !DIExpression(), !2472)
    #dbg_value(float %x, !2473, !DIExpression(), !2483)
    #dbg_value(float %y, !2478, !DIExpression(), !2483)
    #dbg_value(i32 2139095041, !2479, !DIExpression(), !2483)
    #dbg_value(i32 2147483647, !2480, !DIExpression(), !2483)
  %.cast.i.i = bitcast float %x to i32, !dbg !2485
    #dbg_value(i32 %.cast.i.i, !2481, !DIExpression(), !2486)
  %.cast2.i.i = bitcast float %y to i32, !dbg !2487
    #dbg_value(i32 %.cast2.i.i, !2482, !DIExpression(), !2488)
    #dbg_value(i32 %.cast.i.i, !2481, !DIExpression(), !2489)
    #dbg_value(i32 2139095041, !2479, !DIExpression(), !2490)
  %0 = icmp sgt i32 %.cast.i.i, 2139095040, !dbg !2491
  br i1 %0, label %runtime.minimumFloat32.exit, label %switch.next.i.i, !dbg !2492

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i32 %.cast2.i.i, !2482, !DIExpression(), !2493)
    #dbg_value(i32 2139095041, !2479, !DIExpression(), !2494)
  %1 = icmp sgt i32 %.cast2.i.i, 2139095040, !dbg !2495
  br i1 %1, label %runtime.minimumFloat32.exit, label %switch.next2.i.i, !dbg !2492

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i32 %.cast.i.i, !2481, !DIExpression(), !2496)
  %2 = icmp slt i32 %.cast.i.i, 0, !dbg !2497
  %3 = xor i32 %.cast.i.i, 2147483647
  %spec.select.i.i = select i1 %2, i32 %3, i32 %.cast.i.i, !dbg !2492
    #dbg_value(i32 %.cast2.i.i, !2482, !DIExpression(), !2498)
  %4 = icmp slt i32 %.cast2.i.i, 0, !dbg !2499
  %5 = xor i32 %.cast2.i.i, 2147483647, !dbg !2492
  %6 = select i1 %4, i32 %5, i32 %.cast2.i.i, !dbg !2492
    #dbg_value(i32 %spec.select.i.i, !2481, !DIExpression(), !2500)
    #dbg_value(i32 %6, !2482, !DIExpression(), !2501)
  %.not.i.i = icmp sgt i32 %spec.select.i.i, %6, !dbg !2502
  %y.x.i.i = select i1 %.not.i.i, float %y, float %x, !dbg !2492
  br label %runtime.minimumFloat32.exit, !dbg !2492

runtime.minimumFloat32.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next2.i.i
  %common.ret.op.i.i = phi float [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next2.i.i ]
  ret float %common.ret.op.i.i, !dbg !2503
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define double @fmaximum(double %x, double %y) local_unnamed_addr #10 !dbg !2504 {
entry:
    #dbg_value(double %x, !2506, !DIExpression(), !2508)
    #dbg_value(double %y, !2507, !DIExpression(), !2508)
    #dbg_value(double %x, !2506, !DIExpression(), !2509)
    #dbg_value(double %y, !2507, !DIExpression(), !2510)
    #dbg_value(double %x, !2511, !DIExpression(), !2515)
    #dbg_value(double %y, !2514, !DIExpression(), !2515)
    #dbg_value(double %x, !2511, !DIExpression(), !2517)
    #dbg_value(double %y, !2514, !DIExpression(), !2518)
    #dbg_value(double %x, !2519, !DIExpression(), !2528)
    #dbg_value(double %y, !2522, !DIExpression(), !2528)
    #dbg_value(i64 9218868437227405313, !2523, !DIExpression(), !2528)
    #dbg_value(i64 9223372036854775807, !2524, !DIExpression(), !2528)
  %.cast.i.i = bitcast double %x to i64, !dbg !2530
    #dbg_value(i64 %.cast.i.i, !2525, !DIExpression(), !2531)
  %.cast6.i.i = bitcast double %y to i64, !dbg !2532
    #dbg_value(i64 %.cast6.i.i, !2526, !DIExpression(), !2533)
    #dbg_value(i64 %.cast.i.i, !2525, !DIExpression(), !2534)
  %0 = icmp slt i64 %.cast.i.i, 0, !dbg !2535
  %1 = xor i64 %.cast.i.i, 9223372036854775807
  %spec.select.i.i = select i1 %0, i64 %1, i64 %.cast.i.i, !dbg !2536
    #dbg_value(i64 %.cast6.i.i, !2526, !DIExpression(), !2537)
  %2 = icmp slt i64 %.cast6.i.i, 0, !dbg !2538
  %3 = xor i64 %.cast6.i.i, 9223372036854775807, !dbg !2536
  %4 = select i1 %2, i64 %3, i64 %.cast6.i.i, !dbg !2536
    #dbg_value(i64 9218868437227405313, !2523, !DIExpression(), !2539)
    #dbg_value(i64 -9218868437227405314, !2527, !DIExpression(), !2540)
    #dbg_value(i64 %spec.select.i.i, !2525, !DIExpression(), !2541)
    #dbg_value(i64 -9218868437227405314, !2527, !DIExpression(), !2542)
  %5 = icmp slt i64 %spec.select.i.i, -9218868437227405313, !dbg !2543
  br i1 %5, label %runtime.maximumFloat64.exit, label %switch.next.i.i, !dbg !2536

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i64 %4, !2526, !DIExpression(), !2544)
    #dbg_value(i64 -9218868437227405314, !2527, !DIExpression(), !2545)
  %6 = icmp slt i64 %4, -9218868437227405313, !dbg !2546
  br i1 %6, label %runtime.maximumFloat64.exit, label %switch.next4.i.i, !dbg !2536

switch.next4.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i64 %spec.select.i.i, !2525, !DIExpression(), !2547)
    #dbg_value(i64 %4, !2526, !DIExpression(), !2548)
  %.not.i.i = icmp slt i64 %spec.select.i.i, %4, !dbg !2549
  %y.x.i.i = select i1 %.not.i.i, double %y, double %x, !dbg !2536
  br label %runtime.maximumFloat64.exit, !dbg !2536

runtime.maximumFloat64.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next4.i.i
  %common.ret.op.i.i = phi double [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next4.i.i ]
  ret double %common.ret.op.i.i, !dbg !2550
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define float @fmaximumf(float %x, float %y) local_unnamed_addr #10 !dbg !2551 {
entry:
    #dbg_value(float %x, !2553, !DIExpression(), !2555)
    #dbg_value(float %y, !2554, !DIExpression(), !2555)
    #dbg_value(float %x, !2553, !DIExpression(), !2556)
    #dbg_value(float %y, !2554, !DIExpression(), !2557)
    #dbg_value(float %x, !2558, !DIExpression(), !2562)
    #dbg_value(float %y, !2561, !DIExpression(), !2562)
    #dbg_value(float %x, !2558, !DIExpression(), !2564)
    #dbg_value(float %y, !2561, !DIExpression(), !2565)
    #dbg_value(float %x, !2566, !DIExpression(), !2575)
    #dbg_value(float %y, !2569, !DIExpression(), !2575)
    #dbg_value(i32 2139095041, !2570, !DIExpression(), !2575)
    #dbg_value(i32 2147483647, !2571, !DIExpression(), !2575)
  %.cast.i.i = bitcast float %x to i32, !dbg !2577
    #dbg_value(i32 %.cast.i.i, !2572, !DIExpression(), !2578)
  %.cast6.i.i = bitcast float %y to i32, !dbg !2579
    #dbg_value(i32 %.cast6.i.i, !2573, !DIExpression(), !2580)
    #dbg_value(i32 %.cast.i.i, !2572, !DIExpression(), !2581)
  %0 = icmp slt i32 %.cast.i.i, 0, !dbg !2582
  %1 = xor i32 %.cast.i.i, 2147483647
  %spec.select.i.i = select i1 %0, i32 %1, i32 %.cast.i.i, !dbg !2583
    #dbg_value(i32 %.cast6.i.i, !2573, !DIExpression(), !2584)
  %2 = icmp slt i32 %.cast6.i.i, 0, !dbg !2585
  %3 = xor i32 %.cast6.i.i, 2147483647, !dbg !2583
  %4 = select i1 %2, i32 %3, i32 %.cast6.i.i, !dbg !2583
    #dbg_value(i32 2139095041, !2570, !DIExpression(), !2586)
    #dbg_value(i32 -2139095042, !2574, !DIExpression(), !2587)
    #dbg_value(i32 %spec.select.i.i, !2572, !DIExpression(), !2588)
    #dbg_value(i32 -2139095042, !2574, !DIExpression(), !2589)
  %5 = icmp slt i32 %spec.select.i.i, -2139095041, !dbg !2590
  br i1 %5, label %runtime.maximumFloat32.exit, label %switch.next.i.i, !dbg !2583

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i32 %4, !2573, !DIExpression(), !2591)
    #dbg_value(i32 -2139095042, !2574, !DIExpression(), !2592)
  %6 = icmp slt i32 %4, -2139095041, !dbg !2593
  br i1 %6, label %runtime.maximumFloat32.exit, label %switch.next4.i.i, !dbg !2583

switch.next4.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i32 %spec.select.i.i, !2572, !DIExpression(), !2594)
    #dbg_value(i32 %4, !2573, !DIExpression(), !2595)
  %.not.i.i = icmp slt i32 %spec.select.i.i, %4, !dbg !2596
  %y.x.i.i = select i1 %.not.i.i, float %y, float %x, !dbg !2583
  br label %runtime.maximumFloat32.exit, !dbg !2583

runtime.maximumFloat32.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next4.i.i
  %common.ret.op.i.i = phi float [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next4.i.i ]
  ret float %common.ret.op.i.i, !dbg !2597
}

declare void @GC_init() local_unnamed_addr #1

declare void @tinygo_runtime_bdwgc_init() local_unnamed_addr #1

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_runtime_bdwgc_callback() local_unnamed_addr #2 !dbg !2598 {
entry:
  %0 = call ptr @tinygo_task_current() #15, !dbg !2599
    #dbg_value(ptr %0, !2086, !DIExpression(), !2613)
    #dbg_value(ptr %0, !2086, !DIExpression(), !2614)
  %1 = icmp eq ptr %0, null, !dbg !2615
  br i1 %1, label %if.then.i.i.i, label %"internal/task.Current.exit.i.i", !dbg !2616

if.then.i.i.i:                                    ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2617
  unreachable, !dbg !2616

"internal/task.Current.exit.i.i":                 ; preds = %entry
    #dbg_value(ptr %0, !2086, !DIExpression(), !2618)
    #dbg_value(ptr %0, !2603, !DIExpression(), !2619)
    #dbg_value(ptr @"internal/task.gcState", !2132, !DIExpression(), !2620)
    #dbg_value(ptr @"internal/task.gcState", !2132, !DIExpression(), !2622)
    #dbg_value(ptr @"internal/task.gcState", !2140, !DIExpression(), !2623)
  %2 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2623
  %3 = icmp eq i32 %2, 0, !dbg !2625
  br i1 %3, label %if.then.i.i, label %if.done2.i.i, !dbg !2626

if.then.i.i:                                      ; preds = %"internal/task.Current.exit.i.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1987, !DIExpression(), !2627)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1987, !DIExpression(), !2629)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1994, !DIExpression(), !2630)
    #dbg_value(i32 0, !1999, !DIExpression(), !2630)
    #dbg_value(i32 1, !2000, !DIExpression(), !2630)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1994, !DIExpression(), !2632)
    #dbg_value(i32 0, !1999, !DIExpression(), !2633)
    #dbg_value(i32 1, !2000, !DIExpression(), !2634)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2006, !DIExpression(), !2635)
    #dbg_value(i32 0, !2011, !DIExpression(), !2635)
    #dbg_value(i32 1, !2012, !DIExpression(), !2635)
  %4 = cmpxchg ptr @"internal/task.activeTaskLock", i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2635
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !2635
  br i1 %5, label %"(*internal/task.Mutex).Lock.exit.i.i", label %for.loop.preheader.i.i.i, !dbg !2637

for.loop.preheader.i.i.i:                         ; preds = %if.then.i.i
    #dbg_value(ptr @"internal/task.activeTaskLock", !1987, !DIExpression(), !2638)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1938, !DIExpression(), !2639)
    #dbg_value(i32 2, !1945, !DIExpression(), !2639)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1938, !DIExpression(), !2641)
    #dbg_value(i32 2, !1945, !DIExpression(), !2642)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1950, !DIExpression(), !2643)
    #dbg_value(i32 2, !1957, !DIExpression(), !2643)
  %6 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2643
  %.not4.i.i.i = icmp eq i32 %6, 0, !dbg !2645
  br i1 %.not4.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i", !dbg !2637

"(*internal/futex.Futex).Wait.exit.i.i.i":        ; preds = %for.loop.preheader.i.i.i, %"(*internal/futex.Futex).Wait.exit.i.i.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1987, !DIExpression(), !2646)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2025, !DIExpression(), !2647)
    #dbg_value(i32 2, !2030, !DIExpression(), !2649)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock", i32 2) #15, !dbg !2650
    #dbg_value(ptr @"internal/task.activeTaskLock", !1938, !DIExpression(), !2641)
    #dbg_value(i32 2, !1945, !DIExpression(), !2642)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1950, !DIExpression(), !2643)
    #dbg_value(i32 2, !1957, !DIExpression(), !2643)
  %7 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2643
  %.not.i.i.i = icmp eq i32 %7, 0, !dbg !2645
  br i1 %.not.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i", !dbg !2637

"(*internal/task.Mutex).Lock.exit.i.i":           ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i", %for.loop.preheader.i.i.i, %if.then.i.i
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2651, !DIExpression(), !2655)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2132, !DIExpression(), !2657)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2132, !DIExpression(), !2659)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2140, !DIExpression(), !2660)
  %8 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2660
  %9 = icmp eq i32 %8, 0, !dbg !2662
  br i1 %9, label %"(*internal/task.waitGroup).wait.exit.i.i", label %gep.next4.i.i.i, !dbg !2663

gep.next4.i.i.i:                                  ; preds = %"(*internal/task.Mutex).Lock.exit.i.i", %gep.next4.i.i.i
  %10 = phi i32 [ %11, %gep.next4.i.i.i ], [ %8, %"(*internal/task.Mutex).Lock.exit.i.i" ]
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2651, !DIExpression(), !2664)
    #dbg_value(i32 %10, !2654, !DIExpression(), !2665)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2025, !DIExpression(), !2666)
    #dbg_value(i32 %10, !2030, !DIExpression(), !2668)
  call void @tinygo_futex_wait(ptr nonnull @"internal/task.scanWaitGroup", i32 range(i32 1, 0) %10) #15, !dbg !2669
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2132, !DIExpression(), !2659)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2140, !DIExpression(), !2660)
  %11 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2660
    #dbg_value(i32 %11, !2654, !DIExpression(), !2670)
  %12 = icmp eq i32 %11, 0, !dbg !2662
  br i1 %12, label %"(*internal/task.waitGroup).wait.exit.i.i", label %gep.next4.i.i.i, !dbg !2663

"(*internal/task.waitGroup).wait.exit.i.i":       ; preds = %gep.next4.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i"
    #dbg_value(ptr @"internal/task.gcState", !2671, !DIExpression(), !2675)
    #dbg_value(i32 1, !2674, !DIExpression(), !2675)
    #dbg_value(ptr @"internal/task.gcState", !2671, !DIExpression(), !2677)
    #dbg_value(i32 1, !2674, !DIExpression(), !2678)
    #dbg_value(ptr @"internal/task.gcState", !2679, !DIExpression(), !2683)
    #dbg_value(i32 1, !2682, !DIExpression(), !2683)
  store atomic i32 1, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2683
  %13 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2685
    #dbg_value(i32 %13, !2604, !DIExpression(), !2685)
  store i32 %13, ptr @"internal/task.scanWaitGroup", align 4, !dbg !2686
    #dbg_value(%"internal/task.Semaphore" poison, !2605, !DIExpression(), !2686)
    #dbg_value(ptr poison, !2606, !DIExpression(), !2687)
    #dbg_value(ptr poison, !2607, !DIExpression(), !2688)
  %14 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2689
  %.not23.i.i = icmp eq ptr %14, null, !dbg !2690
  br i1 %.not23.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !2626

for.body.i.i:                                     ; preds = %"(*internal/task.waitGroup).wait.exit.i.i", %deref.next15.i.i
  %15 = phi ptr [ %19, %deref.next15.i.i ], [ %14, %"(*internal/task.waitGroup).wait.exit.i.i" ]
    #dbg_value(ptr %15, !2607, !DIExpression(), !2691)
    #dbg_value(ptr %0, !2603, !DIExpression(), !2692)
  %.not16.i.i = icmp eq ptr %15, %0, !dbg !2693
  br i1 %.not16.i.i, label %deref.next15.i.i, label %deref.next.i.i, !dbg !2626

deref.next.i.i:                                   ; preds = %for.body.i.i
    #dbg_value(ptr %15, !2607, !DIExpression(), !2694)
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 32, !dbg !2695
  %17 = load ptr, ptr %16, align 8, !dbg !2695
  call void @tinygo_task_send_gc_signal(ptr %17) #15, !dbg !2696
  br label %deref.next15.i.i, !dbg !2626

deref.next15.i.i:                                 ; preds = %deref.next.i.i, %for.body.i.i
    #dbg_value(ptr %15, !2607, !DIExpression(), !2697)
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 56, !dbg !2698
    #dbg_value(ptr poison, !2607, !DIExpression(), !2699)
  %19 = load ptr, ptr %18, align 8, !dbg !2689
    #dbg_value(ptr %19, !2607, !DIExpression(), !2700)
  %.not.i.i = icmp eq ptr %19, null, !dbg !2690
  br i1 %.not.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !2626

for.done.i.i:                                     ; preds = %deref.next15.i.i, %"(*internal/task.waitGroup).wait.exit.i.i"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2651, !DIExpression(), !2701)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2132, !DIExpression(), !2703)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2132, !DIExpression(), !2705)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2140, !DIExpression(), !2706)
  %20 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2706
  %21 = icmp eq i32 %20, 0, !dbg !2708
  br i1 %21, label %if.done2.i.i, label %gep.next4.i20.i.i, !dbg !2709

gep.next4.i20.i.i:                                ; preds = %for.done.i.i, %gep.next4.i20.i.i
  %22 = phi i32 [ %23, %gep.next4.i20.i.i ], [ %20, %for.done.i.i ]
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2651, !DIExpression(), !2710)
    #dbg_value(i32 %22, !2654, !DIExpression(), !2711)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2025, !DIExpression(), !2712)
    #dbg_value(i32 %22, !2030, !DIExpression(), !2714)
  call void @tinygo_futex_wait(ptr nonnull @"internal/task.scanWaitGroup", i32 range(i32 1, 0) %22) #15, !dbg !2715
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2132, !DIExpression(), !2705)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2140, !DIExpression(), !2706)
  %23 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2706
    #dbg_value(i32 %23, !2654, !DIExpression(), !2716)
  %24 = icmp eq i32 %23, 0, !dbg !2708
  br i1 %24, label %if.done2.i.i, label %gep.next4.i20.i.i, !dbg !2709

if.done2.i.i:                                     ; preds = %gep.next4.i20.i.i, %for.done.i.i, %"internal/task.Current.exit.i.i"
    #dbg_value(ptr poison, !2606, !DIExpression(), !2717)
    #dbg_value(ptr poison, !2608, !DIExpression(), !2718)
  %25 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2719
  %.not1424.i.i = icmp eq ptr %25, null, !dbg !2720
  br i1 %.not1424.i.i, label %for.done7.i.i, label %for.body4.i.i, !dbg !2626

for.body4.i.i:                                    ; preds = %if.done2.i.i, %deref.next33.i.i
  %26 = phi ptr [ %32, %deref.next33.i.i ], [ %25, %if.done2.i.i ]
    #dbg_value(ptr %26, !2608, !DIExpression(), !2721)
    #dbg_value(ptr %0, !2603, !DIExpression(), !2722)
  %.not15.i.i = icmp eq ptr %26, %0, !dbg !2723
  br i1 %.not15.i.i, label %deref.next33.i.i, label %deref.next21.i.i, !dbg !2626

deref.next21.i.i:                                 ; preds = %for.body4.i.i
    #dbg_value(ptr %26, !2608, !DIExpression(), !2724)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 48, !dbg !2725
  %28 = load i64, ptr %27, align 8, !dbg !2725
    #dbg_value(ptr %26, !2608, !DIExpression(), !2726)
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 40, !dbg !2727
  %30 = load i64, ptr %29, align 8, !dbg !2727
    #dbg_value(i64 %28, !2728, !DIExpression(), !2734)
    #dbg_value(i64 %30, !2733, !DIExpression(), !2734)
    #dbg_value(i64 %28, !2728, !DIExpression(), !2736)
    #dbg_value(i64 %30, !2733, !DIExpression(), !2737)
  call void @GC_push_all(i64 %28, i64 %30) #15, !dbg !2738
  br label %deref.next33.i.i, !dbg !2626

deref.next33.i.i:                                 ; preds = %deref.next21.i.i, %for.body4.i.i
    #dbg_value(ptr %26, !2608, !DIExpression(), !2739)
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 56, !dbg !2740
    #dbg_value(ptr poison, !2608, !DIExpression(), !2741)
  %32 = load ptr, ptr %31, align 8, !dbg !2719
    #dbg_value(ptr %32, !2608, !DIExpression(), !2742)
  %.not14.i.i = icmp eq ptr %32, null, !dbg !2720
  br i1 %.not14.i.i, label %for.done7.i.i, label %for.body4.i.i, !dbg !2626

for.done7.i.i:                                    ; preds = %deref.next33.i.i, %if.done2.i.i
  call void @tinygo_scanCurrentStack() #15, !dbg !2743
    #dbg_value(ptr undef, !2744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2776)
    #dbg_value(ptr poison, !2744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2776)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2750, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2780)
    #dbg_value(i64 0, !2751, !DIExpression(), !2781)
  %33 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 56), align 2, !dbg !2782
  %.not8.i.i.i.i = icmp eq i16 %33, 0, !dbg !2783
  br i1 %.not8.i.i.i.i, label %runtime.gcMarkReachable.exit, label %if.then.preheader.i.i.i.i, !dbg !2784

if.then.preheader.i.i.i.i:                        ; preds = %for.done7.i.i
  %34 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 32), align 8, !dbg !2785
    #dbg_value(!DIArgList(i64 %34, i64 ptrtoint (ptr @__ehdr_start to i64)), !2750, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2780)
  %35 = add i64 %34, ptrtoint (ptr @__ehdr_start to i64), !dbg !2786
    #dbg_value(i64 %35, !2750, !DIExpression(), !2780)
  %36 = inttoptr i64 %35 to ptr, !dbg !2787
    #dbg_value(ptr %36, !2750, !DIExpression(), !2780)
  br label %if.then.i.i.i.i, !dbg !2788

if.then.i.i.i.i:                                  ; preds = %if.done.i.i.i.i, %if.then.preheader.i.i.i.i
  %37 = phi i64 [ %53, %if.done.i.i.i.i ], [ 0, %if.then.preheader.i.i.i.i ]
  %38 = phi ptr [ %52, %if.done.i.i.i.i ], [ %36, %if.then.preheader.i.i.i.i ]
    #dbg_value(i64 %37, !2751, !DIExpression(), !2789)
    #dbg_value(ptr %38, !2750, !DIExpression(), !2790)
    #dbg_value(ptr %38, !2752, !DIExpression(), !2791)
    #dbg_value(ptr %38, !2752, !DIExpression(), !2792)
  %39 = icmp eq ptr %38, null, !dbg !2788
  br i1 %39, label %deref.throw.i.i.i.i, label %deref.next.i.i.i.i, !dbg !2788

deref.next.i.i.i.i:                               ; preds = %if.then.i.i.i.i
  %40 = load i32, ptr %38, align 4, !dbg !2788
  %41 = icmp eq i32 %40, 1, !dbg !2793
  br i1 %41, label %deref.next5.i.i.i.i, label %if.done.i.i.i.i, !dbg !2784

deref.next5.i.i.i.i:                              ; preds = %deref.next.i.i.i.i
    #dbg_value(ptr %38, !2752, !DIExpression(), !2794)
  %42 = getelementptr inbounds nuw i8, ptr %38, i64 4, !dbg !2795
  %43 = load i32, ptr %42, align 4, !dbg !2795
  %44 = and i32 %43, 2, !dbg !2796
  %.not.i.i.i.i = icmp eq i32 %44, 0, !dbg !2797
  br i1 %.not.i.i.i.i, label %if.done.i.i.i.i, label %deref.next7.i.i.i.i, !dbg !2784

deref.next7.i.i.i.i:                              ; preds = %deref.next5.i.i.i.i
    #dbg_value(ptr %38, !2752, !DIExpression(), !2798)
  %45 = getelementptr inbounds nuw i8, ptr %38, i64 16, !dbg !2799
  %46 = load i64, ptr %45, align 8, !dbg !2799
    #dbg_value(i64 %46, !2765, !DIExpression(), !2800)
    #dbg_value(i64 %46, !2765, !DIExpression(), !2801)
    #dbg_value(ptr %38, !2752, !DIExpression(), !2802)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2766, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2803)
    #dbg_value({ ptr, ptr } poison, !2744, !DIExpression(), !2804)
    #dbg_value(i64 %46, !2765, !DIExpression(), !2805)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2766, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2806)
  %47 = getelementptr inbounds nuw i8, ptr %38, i64 40, !dbg !2807
  %48 = load i64, ptr %47, align 8, !dbg !2807
    #dbg_value(!DIArgList(i64 %46, i64 %48), !2766, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2806)
  %49 = add i64 %48, %46, !dbg !2808
    #dbg_value(i64 %49, !2766, !DIExpression(), !2806)
    #dbg_value(i64 %46, !2728, !DIExpression(), !2809)
    #dbg_value(i64 %49, !2733, !DIExpression(), !2809)
    #dbg_value(i64 %46, !2728, !DIExpression(), !2811)
    #dbg_value(i64 %49, !2733, !DIExpression(), !2812)
  call void @GC_push_all(i64 %46, i64 %49) #15, !dbg !2813
  br label %if.done.i.i.i.i, !dbg !2784

if.done.i.i.i.i:                                  ; preds = %deref.next7.i.i.i.i, %deref.next5.i.i.i.i, %deref.next.i.i.i.i
    #dbg_value(ptr %38, !2750, !DIExpression(), !2814)
  %50 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 54), align 2, !dbg !2815
  %51 = sext i16 %50 to i64, !dbg !2816
  %52 = getelementptr i8, ptr %38, i64 %51, !dbg !2816
    #dbg_value(ptr %52, !2750, !DIExpression(), !2817)
  %53 = add nuw nsw i64 %37, 1, !dbg !2818
    #dbg_value(i64 %53, !2751, !DIExpression(), !2789)
  %54 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 56), align 2, !dbg !2782
  %55 = zext i16 %54 to i64, !dbg !2819
  %56 = icmp samesign ult i64 %53, %55, !dbg !2783
  br i1 %56, label %if.then.i.i.i.i, label %runtime.gcMarkReachable.exit, !dbg !2784

deref.throw.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  call fastcc void @runtime.nilPanic(), !dbg !2788
  unreachable, !dbg !2788

runtime.gcMarkReachable.exit:                     ; preds = %if.done.i.i.i.i, %for.done7.i.i
  ret void, !dbg !2820
}

declare void @GC_push_all(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_scanstack(i64 %sp) local_unnamed_addr #2 !dbg !2821 {
entry:
    #dbg_value(i64 %sp, !2824, !DIExpression(), !2825)
    #dbg_value(i64 %sp, !2824, !DIExpression(), !2826)
  %0 = call ptr @tinygo_task_current() #15, !dbg !2827
    #dbg_value(ptr %0, !2086, !DIExpression(), !2831)
    #dbg_value(ptr %0, !2086, !DIExpression(), !2832)
  %1 = icmp eq ptr %0, null, !dbg !2833
  br i1 %1, label %if.then.i.i, label %"internal/task.StackTop.exit", !dbg !2834

if.then.i.i:                                      ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2835
  unreachable, !dbg !2834

"internal/task.StackTop.exit":                    ; preds = %entry
    #dbg_value(ptr %0, !2086, !DIExpression(), !2836)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2837
  %3 = load i64, ptr %2, align 8, !dbg !2837
    #dbg_value(i64 %sp, !2728, !DIExpression(), !2838)
    #dbg_value(i64 %3, !2733, !DIExpression(), !2838)
    #dbg_value(i64 %sp, !2728, !DIExpression(), !2840)
    #dbg_value(i64 %3, !2733, !DIExpression(), !2841)
  call void @GC_push_all(i64 %sp, i64 %3) #15, !dbg !2842
  ret void, !dbg !2843
}

; Function Attrs: nounwind uwtable(sync)
define noundef i64 @main(i32 %argc, ptr nocapture dereferenceable_or_null(8) %argv) local_unnamed_addr #2 !dbg !2844 {
entry:
    #dbg_value(i32 %argc, !2848, !DIExpression(), !2853)
    #dbg_value(ptr %argv, !2849, !DIExpression(), !2853)
    #dbg_value(i32 %argc, !2848, !DIExpression(), !2854)
    #dbg_value(i32 %argc, !2850, !DIExpression(), !2855)
    #dbg_value(ptr %argv, !2849, !DIExpression(), !2856)
  store ptr %argv, ptr @runtime.main_argv, align 8, !dbg !2857
    #dbg_value(ptr %argv, !2851, !DIExpression(), !2857)
  call void @tinygo_register_fatal_signals() #15, !dbg !2858
  %0 = call ptr @llvm.stacksave.p0(), !dbg !2859
  %1 = ptrtoint ptr %0 to i64, !dbg !2864
  store i64 %1, ptr @runtime.stackTop, align 8, !dbg !2865
    #dbg_value(i64 %1, !2852, !DIExpression(), !2865)
  call fastcc void @runtime.runMain(), !dbg !2866
  ret i64 0, !dbg !2867
}

declare void @tinygo_register_fatal_signals() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable(sync)
define internal fastcc void @runtime.runMain() unnamed_addr #11 !dbg !2868 {
entry:
  %stackalloc.i.i.i = alloca [8 x i8], align 8, !dbg !2869
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stackalloc.i.i.i), !dbg !2869
  store i64 0, ptr %stackalloc.i.i.i, align 8, !dbg !2869
  %0 = call i32 @getrandom(ptr nonnull %stackalloc.i.i.i, i64 8, i32 0) #15, !dbg !2885
    #dbg_value(i32 %0, !2872, !DIExpression(), !2886)
    #dbg_value(i32 %0, !2872, !DIExpression(), !2887)
  %.not.i.i.i = icmp eq i32 %0, 8, !dbg !2888
  br i1 %.not.i.i.i, label %runtime.run.exit, label %if.then.i.i.i, !dbg !2889

if.then.i.i.i:                                    ; preds = %entry
  store i64 0, ptr %stackalloc.i.i.i, align 8, !dbg !2890
  br label %runtime.run.exit, !dbg !2890

runtime.run.exit:                                 ; preds = %entry, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stackalloc.i.i.i), !dbg !2889
    #dbg_value(i64 poison, !2877, !DIExpression(), !2891)
    #dbg_value(i64 poison, !2877, !DIExpression(), !2892)
    #dbg_value(i64 poison, !2878, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !2893)
    #dbg_value(i64 poison, !2878, !DIExpression(), !2894)
    #dbg_value(i64 poison, !2879, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2895)
  call void @GC_init() #15, !dbg !2896
  call void @tinygo_runtime_bdwgc_init() #15, !dbg !2899
  %1 = load i64, ptr @runtime.stackTop, align 8, !dbg !2900
    #dbg_value(i64 %1, !2883, !DIExpression(), !2900)
    #dbg_value(i64 %1, !2901, !DIExpression(), !2905)
    #dbg_value(i64 %1, !2901, !DIExpression(), !2907)
  store i64 %1, ptr getelementptr inbounds nuw (i8, ptr @"internal/task.mainTask", i64 40), align 8, !dbg !2908
    #dbg_value(i64 %1, !2904, !DIExpression(), !2908)
  call void @tinygo_task_init(ptr nonnull @"internal/task.mainTask", ptr nonnull getelementptr inbounds nuw (i8, ptr @"internal/task.mainTask", i64 32), ptr nonnull @"internal/task.numCPU", ptr undef) #15, !dbg !2909
  call void @main.main(ptr undef) #15, !dbg !2910
  ret void, !dbg !2911
}

declare void @main.main(ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_handle_fatal_signal(i32 %sig, i64 %addr) local_unnamed_addr #2 !dbg !2912 {
entry:
  %stackalloc.i.i46 = alloca [1 x i8], align 1, !dbg !2918
  %stackalloc.i.i42 = alloca [1 x i8], align 1, !dbg !2921
  %stackalloc.i.i.i.i = alloca [1 x i8], align 1, !dbg !2924
    #dbg_value(i64 %66, !2930, !DIExpression(), !2946)
  %digits.i.i.i = alloca [20 x i8], align 1, !dbg !2947
  %stackalloc.i.i41 = alloca [1 x i8], align 1, !dbg !2948
  %stackalloc.i.i32 = alloca [1 x i8], align 1, !dbg !2950
  %stackalloc.i.i28 = alloca [1 x i8], align 1, !dbg !2953
  %stackalloc.i.i19 = alloca [1 x i8], align 1, !dbg !2956
  %stackalloc.i.i15 = alloca [1 x i8], align 1, !dbg !2959
  %stackalloc.i.i9 = alloca [1 x i8], align 1, !dbg !2962
  %stackalloc.i.i5 = alloca [1 x i8], align 1, !dbg !2965
  %stackalloc.i.i1 = alloca [1 x i8], align 1, !dbg !2968
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2971
    #dbg_value(i32 %sig, !2916, !DIExpression(), !2974)
    #dbg_value(i64 %addr, !2917, !DIExpression(), !2974)
    #dbg_value(i64 %addr, !2917, !DIExpression(), !2975)
  %.not = icmp eq i64 %addr, 0, !dbg !2976
  br i1 %.not, label %for.body.i47, label %for.body.i, !dbg !2977

for.body.i:                                       ; preds = %entry, %for.body.i
  %0 = phi i64 [ %4, %for.body.i ], [ 0, %entry ]
    #dbg_value(i64 %0, !2201, !DIExpression(), !2978)
    #dbg_value(%runtime._string poison, !2200, !DIExpression(), !2979)
  %1 = getelementptr inbounds nuw i8, ptr @"runtime$string.50", i64 %0, !dbg !2980
  %2 = load i8, ptr %1, align 1, !dbg !2980
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2981
    #dbg_value(i8 %2, !2208, !DIExpression(), !2981)
  store i8 %2, ptr %stackalloc.i.i, align 1, !dbg !2981
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #15, !dbg !2982
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2983
  %4 = add nuw nsw i64 %0, 1, !dbg !2984
    #dbg_value(i64 %4, !2201, !DIExpression(), !2985)
  %exitcond.not.i = icmp eq i64 %4, 24, !dbg !2986
  br i1 %exitcond.not.i, label %runtime.printstring.exit, label %for.body.i, !dbg !2987

runtime.printstring.exit:                         ; preds = %for.body.i
    #dbg_value(i64 %addr, !2917, !DIExpression(), !2988)
  call fastcc void @runtime.printptr(i64 %addr), !dbg !2989
  br label %for.body.i2, !dbg !2977

for.body.i2:                                      ; preds = %runtime.printstring.exit, %for.body.i47
    #dbg_value(ptr poison, !2200, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2990)
    #dbg_value(i64 16, !2200, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2990)
    #dbg_value(i64 0, !2201, !DIExpression(), !2991)
    #dbg_value(%runtime._string poison, !2200, !DIExpression(), !2992)
    #dbg_value(i64 0, !2201, !DIExpression(), !2993)
    #dbg_value(%runtime._string poison, !2200, !DIExpression(), !2994)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2995
    #dbg_value(i8 58, !2208, !DIExpression(), !2995)
  store i8 58, ptr %stackalloc.i.i1, align 1, !dbg !2995
  %5 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2997
    #dbg_value(i64 1, !2201, !DIExpression(), !2998)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2995
    #dbg_value(i8 32, !2208, !DIExpression(), !2995)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2995
  %6 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2997
    #dbg_value(i64 2, !2201, !DIExpression(), !2998)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2995
    #dbg_value(i8 99, !2208, !DIExpression(), !2995)
  store i8 99, ptr %stackalloc.i.i1, align 1, !dbg !2995
  %7 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2997
    #dbg_value(i64 3, !2201, !DIExpression(), !2998)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2995
    #dbg_value(i8 97, !2208, !DIExpression(), !2995)
  store i8 97, ptr %stackalloc.i.i1, align 1, !dbg !2995
  %8 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2997
    #dbg_value(i64 4, !2201, !DIExpression(), !2998)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2995
    #dbg_value(i8 117, !2208, !DIExpression(), !2995)
  store i8 117, ptr %stackalloc.i.i1, align 1, !dbg !2995
  %9 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2997
    #dbg_value(i64 5, !2201, !DIExpression(), !2998)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2995
    #dbg_value(i8 103, !2208, !DIExpression(), !2995)
  store i8 103, ptr %stackalloc.i.i1, align 1, !dbg !2995
  %10 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2997
    #dbg_value(i64 6, !2201, !DIExpression(), !2998)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2995
    #dbg_value(i8 104, !2208, !DIExpression(), !2995)
  store i8 104, ptr %stackalloc.i.i1, align 1, !dbg !2995
  %11 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2997
    #dbg_value(i64 7, !2201, !DIExpression(), !2998)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2995
    #dbg_value(i8 116, !2208, !DIExpression(), !2995)
  store i8 116, ptr %stackalloc.i.i1, align 1, !dbg !2995
  %12 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2997
    #dbg_value(i64 8, !2201, !DIExpression(), !2998)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2995
    #dbg_value(i8 32, !2208, !DIExpression(), !2995)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2995
  %13 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2997
    #dbg_value(i64 9, !2201, !DIExpression(), !2998)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2995
    #dbg_value(i8 115, !2208, !DIExpression(), !2995)
  store i8 115, ptr %stackalloc.i.i1, align 1, !dbg !2995
  %14 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2997
    #dbg_value(i64 10, !2201, !DIExpression(), !2998)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2995
    #dbg_value(i8 105, !2208, !DIExpression(), !2995)
  store i8 105, ptr %stackalloc.i.i1, align 1, !dbg !2995
  %15 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2997
    #dbg_value(i64 11, !2201, !DIExpression(), !2998)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2995
    #dbg_value(i8 103, !2208, !DIExpression(), !2995)
  store i8 103, ptr %stackalloc.i.i1, align 1, !dbg !2995
  %16 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2997
    #dbg_value(i64 12, !2201, !DIExpression(), !2998)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2995
    #dbg_value(i8 110, !2208, !DIExpression(), !2995)
  store i8 110, ptr %stackalloc.i.i1, align 1, !dbg !2995
  %17 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2997
    #dbg_value(i64 13, !2201, !DIExpression(), !2998)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2995
    #dbg_value(i8 97, !2208, !DIExpression(), !2995)
  store i8 97, ptr %stackalloc.i.i1, align 1, !dbg !2995
  %18 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2997
    #dbg_value(i64 14, !2201, !DIExpression(), !2998)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2995
    #dbg_value(i8 108, !2208, !DIExpression(), !2995)
  store i8 108, ptr %stackalloc.i.i1, align 1, !dbg !2995
  %19 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2997
    #dbg_value(i64 15, !2201, !DIExpression(), !2998)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2995
    #dbg_value(i8 32, !2208, !DIExpression(), !2995)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2995
  %20 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2997
    #dbg_value(i64 16, !2201, !DIExpression(), !2998)
    #dbg_value(i32 %sig, !2916, !DIExpression(), !2999)
  switch i32 %sig, label %switch.next6 [
    i32 7, label %switch.body
    i32 4, label %switch.body3
    i32 11, label %switch.body5
  ], !dbg !2977

switch.body:                                      ; preds = %for.body.i2
    #dbg_value(ptr @runtime.printLock, !1987, !DIExpression(), !3000)
    #dbg_value(ptr @runtime.printLock, !1987, !DIExpression(), !3004)
    #dbg_value(ptr @runtime.printLock, !1994, !DIExpression(), !3005)
    #dbg_value(i32 0, !1999, !DIExpression(), !3005)
    #dbg_value(i32 1, !2000, !DIExpression(), !3005)
    #dbg_value(ptr @runtime.printLock, !1994, !DIExpression(), !3007)
    #dbg_value(i32 0, !1999, !DIExpression(), !3008)
    #dbg_value(i32 1, !2000, !DIExpression(), !3009)
    #dbg_value(ptr @runtime.printLock, !2006, !DIExpression(), !3010)
    #dbg_value(i32 0, !2011, !DIExpression(), !3010)
    #dbg_value(i32 1, !2012, !DIExpression(), !3010)
  %21 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3010
  %22 = extractvalue { i32, i1 } %21, 1, !dbg !3010
  br i1 %22, label %for.body.i6, label %for.loop.preheader.i.i, !dbg !3012

for.loop.preheader.i.i:                           ; preds = %switch.body
    #dbg_value(ptr @runtime.printLock, !1987, !DIExpression(), !3013)
    #dbg_value(ptr @runtime.printLock, !1938, !DIExpression(), !3014)
    #dbg_value(i32 2, !1945, !DIExpression(), !3014)
    #dbg_value(ptr @runtime.printLock, !1938, !DIExpression(), !3016)
    #dbg_value(i32 2, !1945, !DIExpression(), !3017)
    #dbg_value(ptr @runtime.printLock, !1950, !DIExpression(), !3018)
    #dbg_value(i32 2, !1957, !DIExpression(), !3018)
  %23 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3018
  %.not4.i.i = icmp eq i32 %23, 0, !dbg !3020
  br i1 %.not4.i.i, label %for.body.i6, label %"(*internal/futex.Futex).Wait.exit.i.i", !dbg !3012

"(*internal/futex.Futex).Wait.exit.i.i":          ; preds = %for.loop.preheader.i.i, %"(*internal/futex.Futex).Wait.exit.i.i"
    #dbg_value(ptr @runtime.printLock, !1987, !DIExpression(), !3021)
    #dbg_value(ptr @runtime.printLock, !2025, !DIExpression(), !3022)
    #dbg_value(i32 2, !2030, !DIExpression(), !3024)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #15, !dbg !3025
    #dbg_value(ptr @runtime.printLock, !1938, !DIExpression(), !3016)
    #dbg_value(i32 2, !1945, !DIExpression(), !3017)
    #dbg_value(ptr @runtime.printLock, !1950, !DIExpression(), !3018)
    #dbg_value(i32 2, !1957, !DIExpression(), !3018)
  %24 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3018
  %.not.i.i = icmp eq i32 %24, 0, !dbg !3020
  br i1 %.not.i.i, label %for.body.i6, label %"(*internal/futex.Futex).Wait.exit.i.i", !dbg !3012

for.body.i6:                                      ; preds = %for.loop.preheader.i.i, %switch.body, %"(*internal/futex.Futex).Wait.exit.i.i"
    #dbg_value(ptr poison, !2200, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3026)
    #dbg_value(i64 6, !2200, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3026)
    #dbg_value(i64 0, !2201, !DIExpression(), !3027)
    #dbg_value(%runtime._string poison, !2200, !DIExpression(), !3028)
    #dbg_value(i64 0, !2201, !DIExpression(), !3029)
    #dbg_value(%runtime._string poison, !2200, !DIExpression(), !3030)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3031
    #dbg_value(i8 83, !2208, !DIExpression(), !3031)
  store i8 83, ptr %stackalloc.i.i5, align 1, !dbg !3031
  %25 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #15, !dbg !3032
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3033
    #dbg_value(i64 1, !2201, !DIExpression(), !3034)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3031
    #dbg_value(i8 73, !2208, !DIExpression(), !3031)
  store i8 73, ptr %stackalloc.i.i5, align 1, !dbg !3031
  %26 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #15, !dbg !3032
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3033
    #dbg_value(i64 2, !2201, !DIExpression(), !3034)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3031
    #dbg_value(i8 71, !2208, !DIExpression(), !3031)
  store i8 71, ptr %stackalloc.i.i5, align 1, !dbg !3031
  %27 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #15, !dbg !3032
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3033
    #dbg_value(i64 3, !2201, !DIExpression(), !3034)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3031
    #dbg_value(i8 66, !2208, !DIExpression(), !3031)
  store i8 66, ptr %stackalloc.i.i5, align 1, !dbg !3031
  %28 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #15, !dbg !3032
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3033
    #dbg_value(i64 4, !2201, !DIExpression(), !3034)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3031
    #dbg_value(i8 85, !2208, !DIExpression(), !3031)
  store i8 85, ptr %stackalloc.i.i5, align 1, !dbg !3031
  %29 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #15, !dbg !3032
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3033
    #dbg_value(i64 5, !2201, !DIExpression(), !3034)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3031
    #dbg_value(i8 83, !2208, !DIExpression(), !3031)
  store i8 83, ptr %stackalloc.i.i5, align 1, !dbg !3031
  %30 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #15, !dbg !3032
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3033
    #dbg_value(i64 6, !2201, !DIExpression(), !3034)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i9), !dbg !3035
    #dbg_value(i8 10, !2208, !DIExpression(), !3035)
  store i8 10, ptr %stackalloc.i.i9, align 1, !dbg !3035
  %31 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i9, i64 1) #15, !dbg !3036
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i9), !dbg !3037
    #dbg_value(ptr @runtime.printLock, !1933, !DIExpression(), !3038)
    #dbg_value(ptr @runtime.printLock, !1938, !DIExpression(), !3042)
    #dbg_value(i32 0, !1945, !DIExpression(), !3044)
    #dbg_value(ptr @runtime.printLock, !1950, !DIExpression(), !3045)
    #dbg_value(i32 0, !1957, !DIExpression(), !3045)
  %32 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3045
    #dbg_value(i32 %32, !1934, !DIExpression(), !3047)
  switch i32 %32, label %switch.done [
    i32 0, label %if.then.i.i
    i32 2, label %gep.next5.i.i
  ], !dbg !3048

if.then.i.i:                                      ; preds = %for.body.i6
  call fastcc void @runtime._panic(), !dbg !3049
  unreachable, !dbg !3049

gep.next5.i.i:                                    ; preds = %for.body.i6
    #dbg_value(ptr @runtime.printLock, !1933, !DIExpression(), !3050)
    #dbg_value(ptr @runtime.printLock, !1965, !DIExpression(), !3051)
    #dbg_value(ptr @runtime.printLock, !1965, !DIExpression(), !3053)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #15, !dbg !3054
  br label %switch.done, !dbg !3048

switch.done:                                      ; preds = %gep.next5.i.i43, %runtime.printint32.exit, %gep.next5.i.i33, %for.body.i29, %gep.next5.i.i20, %for.body.i16, %gep.next5.i.i, %for.body.i6
    #dbg_value(i32 %sig, !2916, !DIExpression(), !3055)
  call void @raise(i32 %sig) #15, !dbg !3056
  ret void, !dbg !3057

switch.body3:                                     ; preds = %for.body.i2
    #dbg_value(ptr @runtime.printLock, !1987, !DIExpression(), !3058)
    #dbg_value(ptr @runtime.printLock, !1987, !DIExpression(), !3061)
    #dbg_value(ptr @runtime.printLock, !1994, !DIExpression(), !3062)
    #dbg_value(i32 0, !1999, !DIExpression(), !3062)
    #dbg_value(i32 1, !2000, !DIExpression(), !3062)
    #dbg_value(ptr @runtime.printLock, !1994, !DIExpression(), !3064)
    #dbg_value(i32 0, !1999, !DIExpression(), !3065)
    #dbg_value(i32 1, !2000, !DIExpression(), !3066)
    #dbg_value(ptr @runtime.printLock, !2006, !DIExpression(), !3067)
    #dbg_value(i32 0, !2011, !DIExpression(), !3067)
    #dbg_value(i32 1, !2012, !DIExpression(), !3067)
  %33 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3067
  %34 = extractvalue { i32, i1 } %33, 1, !dbg !3067
  br i1 %34, label %for.body.i16, label %for.loop.preheader.i.i10, !dbg !3069

for.loop.preheader.i.i10:                         ; preds = %switch.body3
    #dbg_value(ptr @runtime.printLock, !1987, !DIExpression(), !3070)
    #dbg_value(ptr @runtime.printLock, !1938, !DIExpression(), !3071)
    #dbg_value(i32 2, !1945, !DIExpression(), !3071)
    #dbg_value(ptr @runtime.printLock, !1938, !DIExpression(), !3073)
    #dbg_value(i32 2, !1945, !DIExpression(), !3074)
    #dbg_value(ptr @runtime.printLock, !1950, !DIExpression(), !3075)
    #dbg_value(i32 2, !1957, !DIExpression(), !3075)
  %35 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3075
  %.not4.i.i11 = icmp eq i32 %35, 0, !dbg !3077
  br i1 %.not4.i.i11, label %for.body.i16, label %"(*internal/futex.Futex).Wait.exit.i.i12", !dbg !3069

"(*internal/futex.Futex).Wait.exit.i.i12":        ; preds = %for.loop.preheader.i.i10, %"(*internal/futex.Futex).Wait.exit.i.i12"
    #dbg_value(ptr @runtime.printLock, !1987, !DIExpression(), !3078)
    #dbg_value(ptr @runtime.printLock, !2025, !DIExpression(), !3079)
    #dbg_value(i32 2, !2030, !DIExpression(), !3081)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #15, !dbg !3082
    #dbg_value(ptr @runtime.printLock, !1938, !DIExpression(), !3073)
    #dbg_value(i32 2, !1945, !DIExpression(), !3074)
    #dbg_value(ptr @runtime.printLock, !1950, !DIExpression(), !3075)
    #dbg_value(i32 2, !1957, !DIExpression(), !3075)
  %36 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3075
  %.not.i.i13 = icmp eq i32 %36, 0, !dbg !3077
  br i1 %.not.i.i13, label %for.body.i16, label %"(*internal/futex.Futex).Wait.exit.i.i12", !dbg !3069

for.body.i16:                                     ; preds = %for.loop.preheader.i.i10, %switch.body3, %"(*internal/futex.Futex).Wait.exit.i.i12"
    #dbg_value(ptr poison, !2200, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3083)
    #dbg_value(i64 6, !2200, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3083)
    #dbg_value(i64 0, !2201, !DIExpression(), !3084)
    #dbg_value(%runtime._string poison, !2200, !DIExpression(), !3085)
    #dbg_value(i64 0, !2201, !DIExpression(), !3086)
    #dbg_value(%runtime._string poison, !2200, !DIExpression(), !3087)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3088
    #dbg_value(i8 83, !2208, !DIExpression(), !3088)
  store i8 83, ptr %stackalloc.i.i15, align 1, !dbg !3088
  %37 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #15, !dbg !3089
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3090
    #dbg_value(i64 1, !2201, !DIExpression(), !3091)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3088
    #dbg_value(i8 73, !2208, !DIExpression(), !3088)
  store i8 73, ptr %stackalloc.i.i15, align 1, !dbg !3088
  %38 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #15, !dbg !3089
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3090
    #dbg_value(i64 2, !2201, !DIExpression(), !3091)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3088
    #dbg_value(i8 71, !2208, !DIExpression(), !3088)
  store i8 71, ptr %stackalloc.i.i15, align 1, !dbg !3088
  %39 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #15, !dbg !3089
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3090
    #dbg_value(i64 3, !2201, !DIExpression(), !3091)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3088
    #dbg_value(i8 73, !2208, !DIExpression(), !3088)
  store i8 73, ptr %stackalloc.i.i15, align 1, !dbg !3088
  %40 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #15, !dbg !3089
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3090
    #dbg_value(i64 4, !2201, !DIExpression(), !3091)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3088
    #dbg_value(i8 76, !2208, !DIExpression(), !3088)
  store i8 76, ptr %stackalloc.i.i15, align 1, !dbg !3088
  %41 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #15, !dbg !3089
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3090
    #dbg_value(i64 5, !2201, !DIExpression(), !3091)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3088
    #dbg_value(i8 76, !2208, !DIExpression(), !3088)
  store i8 76, ptr %stackalloc.i.i15, align 1, !dbg !3088
  %42 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #15, !dbg !3089
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3090
    #dbg_value(i64 6, !2201, !DIExpression(), !3091)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i19), !dbg !3092
    #dbg_value(i8 10, !2208, !DIExpression(), !3092)
  store i8 10, ptr %stackalloc.i.i19, align 1, !dbg !3092
  %43 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i19, i64 1) #15, !dbg !3093
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i19), !dbg !3094
    #dbg_value(ptr @runtime.printLock, !1933, !DIExpression(), !3095)
    #dbg_value(ptr @runtime.printLock, !1938, !DIExpression(), !3098)
    #dbg_value(i32 0, !1945, !DIExpression(), !3100)
    #dbg_value(ptr @runtime.printLock, !1950, !DIExpression(), !3101)
    #dbg_value(i32 0, !1957, !DIExpression(), !3101)
  %44 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3101
    #dbg_value(i32 %44, !1934, !DIExpression(), !3103)
  switch i32 %44, label %switch.done [
    i32 0, label %if.then.i.i21
    i32 2, label %gep.next5.i.i20
  ], !dbg !3104

if.then.i.i21:                                    ; preds = %for.body.i16
  call fastcc void @runtime._panic(), !dbg !3105
  unreachable, !dbg !3105

gep.next5.i.i20:                                  ; preds = %for.body.i16
    #dbg_value(ptr @runtime.printLock, !1933, !DIExpression(), !3106)
    #dbg_value(ptr @runtime.printLock, !1965, !DIExpression(), !3107)
    #dbg_value(ptr @runtime.printLock, !1965, !DIExpression(), !3109)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #15, !dbg !3110
  br label %switch.done, !dbg !3104

switch.body5:                                     ; preds = %for.body.i2
    #dbg_value(ptr @runtime.printLock, !1987, !DIExpression(), !3111)
    #dbg_value(ptr @runtime.printLock, !1987, !DIExpression(), !3114)
    #dbg_value(ptr @runtime.printLock, !1994, !DIExpression(), !3115)
    #dbg_value(i32 0, !1999, !DIExpression(), !3115)
    #dbg_value(i32 1, !2000, !DIExpression(), !3115)
    #dbg_value(ptr @runtime.printLock, !1994, !DIExpression(), !3117)
    #dbg_value(i32 0, !1999, !DIExpression(), !3118)
    #dbg_value(i32 1, !2000, !DIExpression(), !3119)
    #dbg_value(ptr @runtime.printLock, !2006, !DIExpression(), !3120)
    #dbg_value(i32 0, !2011, !DIExpression(), !3120)
    #dbg_value(i32 1, !2012, !DIExpression(), !3120)
  %45 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3120
  %46 = extractvalue { i32, i1 } %45, 1, !dbg !3120
  br i1 %46, label %for.body.i29, label %for.loop.preheader.i.i23, !dbg !3122

for.loop.preheader.i.i23:                         ; preds = %switch.body5
    #dbg_value(ptr @runtime.printLock, !1987, !DIExpression(), !3123)
    #dbg_value(ptr @runtime.printLock, !1938, !DIExpression(), !3124)
    #dbg_value(i32 2, !1945, !DIExpression(), !3124)
    #dbg_value(ptr @runtime.printLock, !1938, !DIExpression(), !3126)
    #dbg_value(i32 2, !1945, !DIExpression(), !3127)
    #dbg_value(ptr @runtime.printLock, !1950, !DIExpression(), !3128)
    #dbg_value(i32 2, !1957, !DIExpression(), !3128)
  %47 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3128
  %.not4.i.i24 = icmp eq i32 %47, 0, !dbg !3130
  br i1 %.not4.i.i24, label %for.body.i29, label %"(*internal/futex.Futex).Wait.exit.i.i25", !dbg !3122

"(*internal/futex.Futex).Wait.exit.i.i25":        ; preds = %for.loop.preheader.i.i23, %"(*internal/futex.Futex).Wait.exit.i.i25"
    #dbg_value(ptr @runtime.printLock, !1987, !DIExpression(), !3131)
    #dbg_value(ptr @runtime.printLock, !2025, !DIExpression(), !3132)
    #dbg_value(i32 2, !2030, !DIExpression(), !3134)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #15, !dbg !3135
    #dbg_value(ptr @runtime.printLock, !1938, !DIExpression(), !3126)
    #dbg_value(i32 2, !1945, !DIExpression(), !3127)
    #dbg_value(ptr @runtime.printLock, !1950, !DIExpression(), !3128)
    #dbg_value(i32 2, !1957, !DIExpression(), !3128)
  %48 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3128
  %.not.i.i26 = icmp eq i32 %48, 0, !dbg !3130
  br i1 %.not.i.i26, label %for.body.i29, label %"(*internal/futex.Futex).Wait.exit.i.i25", !dbg !3122

for.body.i29:                                     ; preds = %for.loop.preheader.i.i23, %switch.body5, %"(*internal/futex.Futex).Wait.exit.i.i25"
    #dbg_value(ptr poison, !2200, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3136)
    #dbg_value(i64 7, !2200, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3136)
    #dbg_value(i64 0, !2201, !DIExpression(), !3137)
    #dbg_value(%runtime._string poison, !2200, !DIExpression(), !3138)
    #dbg_value(i64 0, !2201, !DIExpression(), !3139)
    #dbg_value(%runtime._string poison, !2200, !DIExpression(), !3140)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3141
    #dbg_value(i8 83, !2208, !DIExpression(), !3141)
  store i8 83, ptr %stackalloc.i.i28, align 1, !dbg !3141
  %49 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3142
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3143
    #dbg_value(i64 1, !2201, !DIExpression(), !3144)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3141
    #dbg_value(i8 73, !2208, !DIExpression(), !3141)
  store i8 73, ptr %stackalloc.i.i28, align 1, !dbg !3141
  %50 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3142
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3143
    #dbg_value(i64 2, !2201, !DIExpression(), !3144)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3141
    #dbg_value(i8 71, !2208, !DIExpression(), !3141)
  store i8 71, ptr %stackalloc.i.i28, align 1, !dbg !3141
  %51 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3142
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3143
    #dbg_value(i64 3, !2201, !DIExpression(), !3144)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3141
    #dbg_value(i8 83, !2208, !DIExpression(), !3141)
  store i8 83, ptr %stackalloc.i.i28, align 1, !dbg !3141
  %52 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3142
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3143
    #dbg_value(i64 4, !2201, !DIExpression(), !3144)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3141
    #dbg_value(i8 69, !2208, !DIExpression(), !3141)
  store i8 69, ptr %stackalloc.i.i28, align 1, !dbg !3141
  %53 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3142
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3143
    #dbg_value(i64 5, !2201, !DIExpression(), !3144)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3141
    #dbg_value(i8 71, !2208, !DIExpression(), !3141)
  store i8 71, ptr %stackalloc.i.i28, align 1, !dbg !3141
  %54 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3142
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3143
    #dbg_value(i64 6, !2201, !DIExpression(), !3144)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3141
    #dbg_value(i8 86, !2208, !DIExpression(), !3141)
  store i8 86, ptr %stackalloc.i.i28, align 1, !dbg !3141
  %55 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3142
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3143
    #dbg_value(i64 7, !2201, !DIExpression(), !3144)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i32), !dbg !3145
    #dbg_value(i8 10, !2208, !DIExpression(), !3145)
  store i8 10, ptr %stackalloc.i.i32, align 1, !dbg !3145
  %56 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i32, i64 1) #15, !dbg !3146
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i32), !dbg !3147
    #dbg_value(ptr @runtime.printLock, !1933, !DIExpression(), !3148)
    #dbg_value(ptr @runtime.printLock, !1938, !DIExpression(), !3151)
    #dbg_value(i32 0, !1945, !DIExpression(), !3153)
    #dbg_value(ptr @runtime.printLock, !1950, !DIExpression(), !3154)
    #dbg_value(i32 0, !1957, !DIExpression(), !3154)
  %57 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3154
    #dbg_value(i32 %57, !1934, !DIExpression(), !3156)
  switch i32 %57, label %switch.done [
    i32 0, label %if.then.i.i34
    i32 2, label %gep.next5.i.i33
  ], !dbg !3157

if.then.i.i34:                                    ; preds = %for.body.i29
  call fastcc void @runtime._panic(), !dbg !3158
  unreachable, !dbg !3158

gep.next5.i.i33:                                  ; preds = %for.body.i29
    #dbg_value(ptr @runtime.printLock, !1933, !DIExpression(), !3159)
    #dbg_value(ptr @runtime.printLock, !1965, !DIExpression(), !3160)
    #dbg_value(ptr @runtime.printLock, !1965, !DIExpression(), !3162)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #15, !dbg !3163
  br label %switch.done, !dbg !3157

switch.next6:                                     ; preds = %for.body.i2
    #dbg_value(i32 %sig, !2916, !DIExpression(), !3164)
    #dbg_value(ptr @runtime.printLock, !1987, !DIExpression(), !3165)
    #dbg_value(ptr @runtime.printLock, !1987, !DIExpression(), !3168)
    #dbg_value(ptr @runtime.printLock, !1994, !DIExpression(), !3169)
    #dbg_value(i32 0, !1999, !DIExpression(), !3169)
    #dbg_value(i32 1, !2000, !DIExpression(), !3169)
    #dbg_value(ptr @runtime.printLock, !1994, !DIExpression(), !3171)
    #dbg_value(i32 0, !1999, !DIExpression(), !3172)
    #dbg_value(i32 1, !2000, !DIExpression(), !3173)
    #dbg_value(ptr @runtime.printLock, !2006, !DIExpression(), !3174)
    #dbg_value(i32 0, !2011, !DIExpression(), !3174)
    #dbg_value(i32 1, !2012, !DIExpression(), !3174)
  %58 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3174
  %59 = extractvalue { i32, i1 } %58, 1, !dbg !3174
  br i1 %59, label %runtime.printlock.exit40, label %for.loop.preheader.i.i36, !dbg !3176

for.loop.preheader.i.i36:                         ; preds = %switch.next6
    #dbg_value(ptr @runtime.printLock, !1987, !DIExpression(), !3177)
    #dbg_value(ptr @runtime.printLock, !1938, !DIExpression(), !3178)
    #dbg_value(i32 2, !1945, !DIExpression(), !3178)
    #dbg_value(ptr @runtime.printLock, !1938, !DIExpression(), !3180)
    #dbg_value(i32 2, !1945, !DIExpression(), !3181)
    #dbg_value(ptr @runtime.printLock, !1950, !DIExpression(), !3182)
    #dbg_value(i32 2, !1957, !DIExpression(), !3182)
  %60 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3182
  %.not4.i.i37 = icmp eq i32 %60, 0, !dbg !3184
  br i1 %.not4.i.i37, label %runtime.printlock.exit40, label %"(*internal/futex.Futex).Wait.exit.i.i38", !dbg !3176

"(*internal/futex.Futex).Wait.exit.i.i38":        ; preds = %for.loop.preheader.i.i36, %"(*internal/futex.Futex).Wait.exit.i.i38"
    #dbg_value(ptr @runtime.printLock, !1987, !DIExpression(), !3185)
    #dbg_value(ptr @runtime.printLock, !2025, !DIExpression(), !3186)
    #dbg_value(i32 2, !2030, !DIExpression(), !3188)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #15, !dbg !3189
    #dbg_value(ptr @runtime.printLock, !1938, !DIExpression(), !3180)
    #dbg_value(i32 2, !1945, !DIExpression(), !3181)
    #dbg_value(ptr @runtime.printLock, !1950, !DIExpression(), !3182)
    #dbg_value(i32 2, !1957, !DIExpression(), !3182)
  %61 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3182
  %.not.i.i39 = icmp eq i32 %61, 0, !dbg !3184
  br i1 %.not.i.i39, label %runtime.printlock.exit40, label %"(*internal/futex.Futex).Wait.exit.i.i38", !dbg !3176

runtime.printlock.exit40:                         ; preds = %"(*internal/futex.Futex).Wait.exit.i.i38", %switch.next6, %for.loop.preheader.i.i36
    #dbg_value(i32 %sig, !2944, !DIExpression(), !3190)
    #dbg_value(i32 %sig, !2944, !DIExpression(), !3191)
  %62 = icmp slt i32 %sig, 0, !dbg !3192
  br i1 %62, label %if.then.i, label %if.done.i, !dbg !3193

if.then.i:                                        ; preds = %runtime.printlock.exit40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i41), !dbg !3194
    #dbg_value(i8 45, !2208, !DIExpression(), !3195)
    #dbg_value(i8 45, !2208, !DIExpression(), !3194)
  store i8 45, ptr %stackalloc.i.i41, align 1, !dbg !3194
    #dbg_value(i8 45, !2208, !DIExpression(), !3194)
  %63 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i41, i64 1) #15, !dbg !3196
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i41), !dbg !3197
    #dbg_value(i32 %sig, !2944, !DIExpression(), !3198)
  %64 = sub i32 0, %sig, !dbg !3199
    #dbg_value(i32 %64, !2944, !DIExpression(), !3200)
  br label %if.done.i, !dbg !3193

if.done.i:                                        ; preds = %if.then.i, %runtime.printlock.exit40
  %65 = phi i32 [ %sig, %runtime.printlock.exit40 ], [ %64, %if.then.i ], !dbg !3201
    #dbg_value(i32 %65, !2944, !DIExpression(), !3202)
    #dbg_value(i32 %65, !2940, !DIExpression(), !3203)
    #dbg_value(i32 %65, !2940, !DIExpression(), !3204)
  %66 = zext i32 %65 to i64, !dbg !3205
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %digits.i.i.i), !dbg !2947
    #dbg_value(i64 19, !2931, !DIExpression(), !3206)
    #dbg_value(i64 19, !2932, !DIExpression(), !3207)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %digits.i.i.i, i8 0, i64 20, i1 false), !dbg !2947
  br label %for.body.i.i.i, !dbg !3208

for.loop1.preheader.i.i.i:                        ; preds = %for.body.i.i.i
    #dbg_value(i64 %spec.select.i.i.i, !2934, !DIExpression(), !3209)
  %67 = icmp slt i64 %spec.select.i.i.i, 20, !dbg !3210
  br i1 %67, label %for.body2.i.i.i, label %runtime.printint32.exit, !dbg !3208

for.body.i.i.i:                                   ; preds = %for.body.i.i.i, %if.done.i
  %68 = phi i64 [ 19, %if.done.i ], [ %76, %for.body.i.i.i ]
  %69 = phi i64 [ 19, %if.done.i ], [ %spec.select.i.i.i, %for.body.i.i.i ]
  %70 = phi i64 [ %66, %if.done.i ], [ %75, %for.body.i.i.i ]
    #dbg_value(i64 %68, !2932, !DIExpression(), !3211)
    #dbg_value(i64 %70, !2930, !DIExpression(), !3212)
  %71 = urem i64 %70, 10, !dbg !3213
  %72 = trunc nuw nsw i64 %71 to i8, !dbg !3214
  %73 = or disjoint i8 %72, 48, !dbg !3214
    #dbg_value(i8 %73, !2933, !DIExpression(), !3215)
  %74 = getelementptr inbounds nuw [20 x i8], ptr %digits.i.i.i, i64 0, i64 %68, !dbg !3216
  store i8 %73, ptr %74, align 1, !dbg !3216
  %.not.i.i.i = icmp eq i64 %71, 0, !dbg !3217
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 %69, i64 %68, !dbg !3208
  %75 = udiv i64 %70, 10, !dbg !3218
    #dbg_value(i64 %75, !2930, !DIExpression(), !3218)
  %76 = add nsw i64 %68, -1, !dbg !3219
    #dbg_value(i64 %76, !2932, !DIExpression(), !3211)
  %.not23.i.i.i = icmp eq i64 %68, 0, !dbg !3220
  br i1 %.not23.i.i.i, label %for.loop1.preheader.i.i.i, label %for.body.i.i.i, !dbg !3208

for.body2.i.i.i:                                  ; preds = %for.loop1.preheader.i.i.i, %for.body2.i.i.i
  %77 = phi i64 [ %81, %for.body2.i.i.i ], [ %spec.select.i.i.i, %for.loop1.preheader.i.i.i ]
    #dbg_value(i64 %77, !2934, !DIExpression(), !3221)
  %78 = getelementptr inbounds nuw [20 x i8], ptr %digits.i.i.i, i64 0, i64 %77, !dbg !3222
  %79 = load i8, ptr %78, align 1, !dbg !3222
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i.i.i), !dbg !3223
    #dbg_value(i8 %79, !2208, !DIExpression(), !3223)
  store i8 %79, ptr %stackalloc.i.i.i.i, align 1, !dbg !3223
  %80 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i.i.i, i64 1) #15, !dbg !3224
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i.i.i), !dbg !3225
  %81 = add i64 %77, 1, !dbg !3226
    #dbg_value(i64 %81, !2934, !DIExpression(), !3209)
  %exitcond.not.i.i.i = icmp eq i64 %81, 20, !dbg !3210
  br i1 %exitcond.not.i.i.i, label %runtime.printint32.exit, label %for.body2.i.i.i, !dbg !3208

runtime.printint32.exit:                          ; preds = %for.body2.i.i.i, %for.loop1.preheader.i.i.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %digits.i.i.i), !dbg !3227
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i42), !dbg !3228
    #dbg_value(i8 10, !2208, !DIExpression(), !3229)
    #dbg_value(i8 10, !2208, !DIExpression(), !3228)
  store i8 10, ptr %stackalloc.i.i42, align 1, !dbg !3228
    #dbg_value(i8 10, !2208, !DIExpression(), !3228)
  %82 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i42, i64 1) #15, !dbg !3230
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i42), !dbg !3231
    #dbg_value(ptr @runtime.printLock, !1933, !DIExpression(), !3232)
    #dbg_value(ptr @runtime.printLock, !1933, !DIExpression(), !3235)
    #dbg_value(ptr @runtime.printLock, !1938, !DIExpression(), !3236)
    #dbg_value(i32 0, !1945, !DIExpression(), !3236)
    #dbg_value(ptr @runtime.printLock, !1938, !DIExpression(), !3238)
    #dbg_value(i32 0, !1945, !DIExpression(), !3239)
    #dbg_value(ptr @runtime.printLock, !1950, !DIExpression(), !3240)
    #dbg_value(i32 0, !1957, !DIExpression(), !3240)
  %83 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3240
    #dbg_value(i32 %83, !1934, !DIExpression(), !3242)
    #dbg_value(i32 %83, !1934, !DIExpression(), !3243)
  switch i32 %83, label %switch.done [
    i32 0, label %if.then.i.i44
    i32 2, label %gep.next5.i.i43
  ], !dbg !3244

if.then.i.i44:                                    ; preds = %runtime.printint32.exit
  call fastcc void @runtime._panic(), !dbg !3245
  unreachable, !dbg !3245

gep.next5.i.i43:                                  ; preds = %runtime.printint32.exit
    #dbg_value(ptr @runtime.printLock, !1933, !DIExpression(), !3246)
    #dbg_value(ptr @runtime.printLock, !1965, !DIExpression(), !3247)
    #dbg_value(ptr @runtime.printLock, !1965, !DIExpression(), !3249)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #15, !dbg !3250
  br label %switch.done, !dbg !3244

for.body.i47:                                     ; preds = %entry, %for.body.i47
  %84 = phi i64 [ %88, %for.body.i47 ], [ 0, %entry ]
    #dbg_value(i64 %84, !2201, !DIExpression(), !3251)
    #dbg_value(%runtime._string poison, !2200, !DIExpression(), !3252)
  %85 = getelementptr inbounds nuw i8, ptr @"runtime$string.55", i64 %84, !dbg !3253
  %86 = load i8, ptr %85, align 1, !dbg !3253
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i46), !dbg !3254
    #dbg_value(i8 %86, !2208, !DIExpression(), !3254)
  store i8 %86, ptr %stackalloc.i.i46, align 1, !dbg !3254
  %87 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i46, i64 1) #15, !dbg !3255
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i46), !dbg !3256
  %88 = add nuw nsw i64 %84, 1, !dbg !3257
    #dbg_value(i64 %88, !2201, !DIExpression(), !3258)
  %exitcond.not.i48 = icmp eq i64 %88, 20, !dbg !3259
  br i1 %exitcond.not.i48, label %for.body.i2, label %for.body.i47, !dbg !3260
}

declare void @raise(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_signal_handler(i32 %s) local_unnamed_addr #2 !dbg !3261 {
entry:
    #dbg_value(i32 %s, !3263, !DIExpression(), !3267)
  %shift.overflow = icmp ugt i32 %s, 31
  %0 = shl nuw i32 1, %s
  %shift.result = select i1 %shift.overflow, i32 0, i32 %0
  br label %for.body, !dbg !3268

for.body:                                         ; preds = %for.body, %entry
    #dbg_value(i32 %s, !3263, !DIExpression(), !3269)
    #dbg_value(i32 %shift.result, !3264, !DIExpression(), !3270)
    #dbg_value(ptr @runtime.receivedSignals, !2132, !DIExpression(), !3271)
    #dbg_value(ptr @runtime.receivedSignals, !2132, !DIExpression(), !3273)
    #dbg_value(ptr @runtime.receivedSignals, !2140, !DIExpression(), !3274)
  %1 = load atomic i32, ptr @runtime.receivedSignals seq_cst, align 4, !dbg !3274
    #dbg_value(i32 %1, !3265, !DIExpression(), !3276)
    #dbg_value(i32 %1, !3265, !DIExpression(), !3277)
    #dbg_value(i32 %1, !3265, !DIExpression(), !3278)
    #dbg_value(i32 %shift.result, !3264, !DIExpression(), !3279)
  %2 = or i32 %1, %shift.result, !dbg !3280
    #dbg_value(ptr @runtime.receivedSignals, !1994, !DIExpression(), !3281)
    #dbg_value(i32 %1, !1999, !DIExpression(), !3281)
    #dbg_value(i32 %2, !2000, !DIExpression(), !3281)
    #dbg_value(ptr @runtime.receivedSignals, !1994, !DIExpression(), !3283)
    #dbg_value(i32 %1, !1999, !DIExpression(), !3284)
    #dbg_value(i32 %2, !2000, !DIExpression(), !3285)
    #dbg_value(ptr @runtime.receivedSignals, !2006, !DIExpression(), !3286)
    #dbg_value(i32 %1, !2011, !DIExpression(), !3286)
    #dbg_value(i32 %2, !2012, !DIExpression(), !3286)
  %3 = cmpxchg ptr @runtime.receivedSignals, i32 %1, i32 %2 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3286
  %4 = extractvalue { i32, i1 } %3, 1, !dbg !3286
    #dbg_value(i1 %4, !3266, !DIExpression(), !3288)
    #dbg_value(i1 %4, !3266, !DIExpression(), !3289)
  br i1 %4, label %if.then, label %for.body, !dbg !3268

if.then:                                          ; preds = %for.body
    #dbg_value(ptr @runtime.signalFutex, !1938, !DIExpression(), !3290)
    #dbg_value(i32 1, !1945, !DIExpression(), !3290)
    #dbg_value(ptr @runtime.signalFutex, !1938, !DIExpression(), !3292)
    #dbg_value(i32 1, !1945, !DIExpression(), !3293)
    #dbg_value(ptr @runtime.signalFutex, !1950, !DIExpression(), !3294)
    #dbg_value(i32 1, !1957, !DIExpression(), !3294)
  %5 = atomicrmw xchg ptr @runtime.signalFutex, i32 1 syncscope("singlethread") seq_cst, align 4, !dbg !3294
  %6 = icmp eq i32 %5, 0, !dbg !3296
  br i1 %6, label %if.then1, label %if.done, !dbg !3268

if.then1:                                         ; preds = %if.then
    #dbg_value(ptr @runtime.signalFutex, !2125, !DIExpression(), !3297)
    #dbg_value(ptr @runtime.signalFutex, !2125, !DIExpression(), !3299)
  call void @tinygo_futex_wake_all(ptr nonnull @runtime.signalFutex) #15, !dbg !3300
  br label %if.done, !dbg !3268

if.done:                                          ; preds = %if.then1, %if.then
  ret void, !dbg !3301
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @"slices.pdqsortOrdered[int]"(ptr %data.data, i64 %data.len, i64 %a, i64 %b, i64 range(i64 0, 65) %limit) unnamed_addr #5 !dbg !3302 {
entry:
  %stackalloc.i = alloca [8 x i8], align 8, !dbg !3327
    #dbg_value(ptr %data.data, !3311, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3341)
    #dbg_value(i64 %data.len, !3311, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3341)
    #dbg_value(i64 poison, !3311, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3341)
    #dbg_value(i64 %a, !3312, !DIExpression(), !3341)
    #dbg_value(i64 %b, !3313, !DIExpression(), !3341)
    #dbg_value(i64 %limit, !3314, !DIExpression(), !3341)
    #dbg_value(i1 true, !3315, !DIExpression(), !3342)
    #dbg_value(i1 true, !3316, !DIExpression(), !3343)
  %0 = sub i64 %b, %a, !dbg !3344
  %1 = icmp slt i64 %0, 13, !dbg !3345
  br i1 %1, label %if.then, label %if.done.lr.ph.lr.ph, !dbg !3346

if.done.lr.ph.lr.ph:                              ; preds = %entry
  %invariant.gep = getelementptr i8, ptr %data.data, i64 -16
  %2 = add i64 %data.len, -1
  br label %if.done.lr.ph, !dbg !3346

if.done.lr.ph:                                    ; preds = %if.done.lr.ph.lr.ph, %for.body.outer.backedge
  %3 = phi i64 [ %0, %if.done.lr.ph.lr.ph ], [ %137, %for.body.outer.backedge ]
  %.ph89313 = phi i1 [ true, %if.done.lr.ph.lr.ph ], [ %.ph89.be, %for.body.outer.backedge ]
  %.ph88312 = phi i1 [ true, %if.done.lr.ph.lr.ph ], [ %.ph88.be, %for.body.outer.backedge ]
  %.ph87311 = phi i64 [ %limit, %if.done.lr.ph.lr.ph ], [ %40, %for.body.outer.backedge ]
  %.ph86310 = phi i64 [ %b, %if.done.lr.ph.lr.ph ], [ %26, %for.body.outer.backedge ]
  %.ph309 = phi i64 [ %a, %if.done.lr.ph.lr.ph ], [ %.ph.be, %for.body.outer.backedge ]
  %invariant.op314 = add i64 %.ph309, -1, !dbg !3346
  %invariant.op302315 = add i64 %.ph309, 1, !dbg !3346
    #dbg_value(i64 %.ph86310, !3313, !DIExpression(), !3347)
    #dbg_value(i64 %.ph309, !3312, !DIExpression(), !3348)
  %umax.i = call i64 @llvm.umax.i64(i64 %.ph309, i64 %data.len)
  %4 = add i64 %.ph309, 1
  %5 = icmp sgt i64 %.ph309, 0
  %6 = add nsw i64 %.ph309, -1
  %.not = icmp ult i64 %6, %data.len
  %7 = getelementptr inbounds nuw i64, ptr %data.data, i64 %6
  %.not11.i59 = icmp ult i64 %.ph309, %data.len
  %8 = getelementptr inbounds i64, ptr %data.data, i64 %.ph309
  br label %if.done, !dbg !3346

common.ret:                                       ; preds = %"slices.partialInsertionSortOrdered[int].exit", %lookup.next7.i30, %for.done.i, %if.then
  ret void, !dbg !3346

if.then:                                          ; preds = %for.body.outer.backedge, %if.else, %entry
  %.ph.lcssa301 = phi i64 [ %a, %entry ], [ %.ph309, %if.else ], [ %.ph.be, %for.body.outer.backedge ]
  %.lcssa207 = phi i64 [ %b, %entry ], [ %.pn59.i, %if.else ], [ %26, %for.body.outer.backedge ], !dbg !3349
    #dbg_value({ ptr, i64, i64 } poison, !3311, !DIExpression(), !3350)
    #dbg_value(i64 %.ph.lcssa301, !3312, !DIExpression(), !3351)
    #dbg_value(i64 %.lcssa207, !3313, !DIExpression(), !3352)
    #dbg_value(ptr %data.data, !3353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3360)
    #dbg_value(i64 %data.len, !3353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3360)
    #dbg_value(i64 poison, !3353, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3360)
    #dbg_value(i64 %.ph.lcssa301, !3356, !DIExpression(), !3360)
    #dbg_value(i64 %.lcssa207, !3357, !DIExpression(), !3360)
    #dbg_value(i64 %.ph.lcssa301, !3356, !DIExpression(), !3362)
    #dbg_value(i64 %.ph.lcssa301, !3358, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3363)
  %9 = add i64 %.ph.lcssa301, 1, !dbg !3364
  %10 = icmp slt i64 %9, %.lcssa207, !dbg !3365
  br i1 %10, label %for.loop1.preheader.i, label %common.ret, !dbg !3366

for.loop1.preheader.i:                            ; preds = %if.then, %for.done.i
  %11 = phi i64 [ %21, %for.done.i ], [ %9, %if.then ]
    #dbg_value(i64 %11, !3359, !DIExpression(), !3367)
    #dbg_value(i64 %.ph.lcssa301, !3356, !DIExpression(), !3368)
  %12 = icmp sgt i64 %11, %.ph.lcssa301, !dbg !3369
  br i1 %12, label %cond.true.i, label %for.done.i, !dbg !3366

cond.true.i:                                      ; preds = %for.loop1.preheader.i, %lookup.next15.i
  %13 = phi i64 [ %14, %lookup.next15.i ], [ %11, %for.loop1.preheader.i ]
    #dbg_value(i64 %13, !3359, !DIExpression(), !3367)
    #dbg_value({ ptr, i64, i64 } poison, !3353, !DIExpression(), !3370)
    #dbg_value(i64 %13, !3359, !DIExpression(), !3371)
  %.not.i = icmp ult i64 %13, %data.len, !dbg !3372
  br i1 %.not.i, label %lookup.next.i, label %lookup.throw.i, !dbg !3372

lookup.next.i:                                    ; preds = %cond.true.i
    #dbg_value({ ptr, i64, i64 } poison, !3353, !DIExpression(), !3373)
    #dbg_value(i64 %13, !3359, !DIExpression(), !3374)
  %14 = add nsw i64 %13, -1, !dbg !3375
  %.not5.i = icmp ult i64 %14, %data.len, !dbg !3376
  br i1 %.not5.i, label %lookup.next7.i, label %lookup.throw6.i, !dbg !3376

lookup.next7.i:                                   ; preds = %lookup.next.i
  %15 = getelementptr inbounds i64, ptr %data.data, i64 %13, !dbg !3372
  %16 = load i64, ptr %15, align 8, !dbg !3372
  %17 = getelementptr inbounds i64, ptr %data.data, i64 %14, !dbg !3376
  %18 = load i64, ptr %17, align 8, !dbg !3376
    #dbg_value(i64 %16, !3377, !DIExpression(), !3384)
    #dbg_value(i64 %18, !3383, !DIExpression(), !3384)
    #dbg_value(i64 %16, !3377, !DIExpression(), !3386)
    #dbg_value(i64 %16, !3377, !DIExpression(), !3387)
    #dbg_value(i64 %18, !3383, !DIExpression(), !3388)
  %19 = icmp slt i64 %16, %18, !dbg !3389
  br i1 %19, label %lookup.next15.i, label %for.done.i, !dbg !3366

lookup.next15.i:                                  ; preds = %lookup.next7.i
    #dbg_value({ ptr, i64, i64 } poison, !3353, !DIExpression(), !3390)
    #dbg_value(i64 poison, !3359, !DIExpression(), !3391)
  store i64 %18, ptr %15, align 8, !dbg !3392
  store i64 %16, ptr %17, align 8, !dbg !3393
    #dbg_value(i64 %14, !3359, !DIExpression(), !3367)
    #dbg_value(i64 %.ph.lcssa301, !3356, !DIExpression(), !3368)
  %20 = icmp sgt i64 %14, %.ph.lcssa301, !dbg !3369
  br i1 %20, label %cond.true.i, label %for.done.i, !dbg !3366

for.done.i:                                       ; preds = %lookup.next15.i, %lookup.next7.i, %for.loop1.preheader.i
    #dbg_value(i64 %11, !3358, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3394)
  %21 = add nsw i64 %11, 1, !dbg !3364
    #dbg_value(i64 %21, !3358, !DIExpression(), !3395)
    #dbg_value(i64 %.lcssa207, !3357, !DIExpression(), !3396)
  %exitcond.not.i = icmp eq i64 %21, %.lcssa207, !dbg !3365
  br i1 %exitcond.not.i, label %common.ret, label %for.loop1.preheader.i, !dbg !3366

lookup.throw.i:                                   ; preds = %cond.true.i
  call fastcc void @runtime.lookupPanic(), !dbg !3372
  unreachable, !dbg !3372

lookup.throw6.i:                                  ; preds = %lookup.next.i
  call fastcc void @runtime.lookupPanic(), !dbg !3376
  unreachable, !dbg !3376

if.done:                                          ; preds = %if.done.lr.ph, %if.else
  %22 = phi i64 [ %3, %if.done.lr.ph ], [ %186, %if.else ]
  %23 = phi i1 [ %.ph89313, %if.done.lr.ph ], [ %.not1669.i, %if.else ]
  %24 = phi i1 [ %.ph88312, %if.done.lr.ph ], [ %184, %if.else ]
  %25 = phi i64 [ %.ph87311, %if.done.lr.ph ], [ %40, %if.else ]
  %26 = phi i64 [ %.ph86310, %if.done.lr.ph ], [ %.pn59.i, %if.else ]
    #dbg_value(i64 %26, !3313, !DIExpression(), !3347)
    #dbg_value(i64 %25, !3314, !DIExpression(), !3397)
  %27 = icmp eq i64 %25, 0, !dbg !3398
  br i1 %27, label %for.body.preheader.i, label %if.done2, !dbg !3346

for.body.preheader.i:                             ; preds = %if.done
    #dbg_value({ ptr, i64, i64 } poison, !3311, !DIExpression(), !3399)
    #dbg_value(i64 %.ph309, !3312, !DIExpression(), !3400)
    #dbg_value(i64 undef, !3313, !DIExpression(), !3401)
    #dbg_value(ptr %data.data, !3402, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3412)
    #dbg_value(i64 %data.len, !3402, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3412)
    #dbg_value(i64 poison, !3402, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3412)
    #dbg_value(i64 %.ph309, !3405, !DIExpression(), !3412)
    #dbg_value(i64 undef, !3406, !DIExpression(), !3412)
    #dbg_value(i64 %.ph309, !3405, !DIExpression(), !3414)
    #dbg_value(i64 %.ph309, !3407, !DIExpression(), !3415)
    #dbg_value(i64 0, !3408, !DIExpression(), !3416)
    #dbg_value(i64 undef, !3406, !DIExpression(), !3417)
    #dbg_value(i64 %.ph309, !3405, !DIExpression(), !3418)
    #dbg_value(i64 %22, !3409, !DIExpression(), !3419)
    #dbg_value(i64 %22, !3409, !DIExpression(), !3420)
    #dbg_value(i64 %22, !3410, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !3421)
  %28 = add nsw i64 %22, -1, !dbg !3422
    #dbg_value(i64 %28, !3410, !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !3421)
  %29 = sdiv i64 %28, 2, !dbg !3423
    #dbg_value(i64 %29, !3410, !DIExpression(), !3421)
  br label %for.body.i, !dbg !3424

for.body2.lr.ph.i:                                ; preds = %for.body.i
  %.not4.i = icmp ult i64 %.ph309, %data.len
  %30 = getelementptr inbounds i64, ptr %data.data, i64 %.ph309
  br label %for.body2.i, !dbg !3424

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %31 = phi i64 [ %32, %for.body.i ], [ %29, %for.body.preheader.i ]
    #dbg_value({ ptr, i64, i64 } poison, !3402, !DIExpression(), !3425)
    #dbg_value(i64 %31, !3410, !DIExpression(), !3426)
    #dbg_value(i64 %22, !3409, !DIExpression(), !3427)
    #dbg_value(i64 %.ph309, !3407, !DIExpression(), !3428)
  call fastcc void @"slices.siftDownOrdered[int]"(ptr %data.data, i64 %data.len, i64 %31, i64 %22, i64 %.ph309), !dbg !3429
  %32 = add nsw i64 %31, -1, !dbg !3430
    #dbg_value(i64 %32, !3410, !DIExpression(), !3431)
  %33 = icmp sgt i64 %31, 0, !dbg !3432
  br i1 %33, label %for.body.i, label %for.body2.lr.ph.i, !dbg !3424

for.body2.i:                                      ; preds = %lookup.next7.i30, %for.body2.lr.ph.i
  %.in = phi i64 [ %22, %for.body2.lr.ph.i ], [ %34, %lookup.next7.i30 ]
  %34 = add nsw i64 %.in, -1, !dbg !3433
    #dbg_value({ ptr, i64, i64 } poison, !3402, !DIExpression(), !3434)
    #dbg_value(i64 %.ph309, !3407, !DIExpression(), !3435)
    #dbg_value({ ptr, i64, i64 } poison, !3402, !DIExpression(), !3436)
    #dbg_value(i64 %.ph309, !3407, !DIExpression(), !3437)
    #dbg_value(i64 %34, !3411, !DIExpression(), !3438)
  %35 = add i64 %34, %.ph309, !dbg !3439
    #dbg_value({ ptr, i64, i64 } poison, !3402, !DIExpression(), !3440)
    #dbg_value(i64 %.ph309, !3407, !DIExpression(), !3441)
    #dbg_value(i64 %34, !3411, !DIExpression(), !3442)
  %.not.i26 = icmp ult i64 %35, %data.len, !dbg !3443
  br i1 %.not.i26, label %lookup.next.i28, label %lookup.throw.i27, !dbg !3443

lookup.next.i28:                                  ; preds = %for.body2.i
    #dbg_value({ ptr, i64, i64 } poison, !3402, !DIExpression(), !3444)
    #dbg_value(i64 %.ph309, !3407, !DIExpression(), !3445)
  br i1 %.not4.i, label %lookup.next7.i30, label %lookup.throw6.i29, !dbg !3446

lookup.next7.i30:                                 ; preds = %lookup.next.i28
  %36 = getelementptr inbounds i64, ptr %data.data, i64 %35, !dbg !3443
  %37 = load i64, ptr %36, align 8, !dbg !3443
  %38 = load i64, ptr %30, align 8, !dbg !3446
  store i64 %37, ptr %30, align 8, !dbg !3447
  store i64 %38, ptr %36, align 8, !dbg !3448
    #dbg_value({ ptr, i64, i64 } poison, !3402, !DIExpression(), !3449)
    #dbg_value(i64 0, !3408, !DIExpression(), !3450)
    #dbg_value(i64 %34, !3411, !DIExpression(), !3451)
    #dbg_value(i64 %.ph309, !3407, !DIExpression(), !3452)
  call fastcc void @"slices.siftDownOrdered[int]"(ptr %data.data, i64 %data.len, i64 0, i64 %34, i64 %.ph309), !dbg !3453
    #dbg_value(i64 %34, !3411, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3454)
    #dbg_value(i64 %34, !3411, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3455)
  %39 = icmp sgt i64 %.in, 1, !dbg !3456
  br i1 %39, label %for.body2.i, label %common.ret, !dbg !3424

lookup.throw.i27:                                 ; preds = %for.body2.i
  call fastcc void @runtime.lookupPanic(), !dbg !3443
  unreachable, !dbg !3443

lookup.throw6.i29:                                ; preds = %lookup.next.i28
  call fastcc void @runtime.lookupPanic(), !dbg !3446
  unreachable, !dbg !3446

if.done2:                                         ; preds = %if.done
    #dbg_value(i1 %24, !3315, !DIExpression(), !3457)
  br i1 %24, label %if.done3, label %if.then.i73, !dbg !3346

if.done3:                                         ; preds = %"slices.breakPatternsOrdered[int].exit", %if.done2
  %40 = phi i64 [ %25, %if.done2 ], [ %208, %"slices.breakPatternsOrdered[int].exit" ], !dbg !3458
    #dbg_value({ ptr, i64, i64 } poison, !3311, !DIExpression(), !3459)
    #dbg_value(i64 %.ph309, !3312, !DIExpression(), !3460)
    #dbg_value(i64 %26, !3313, !DIExpression(), !3461)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stackalloc.i), !dbg !3327
    #dbg_value(ptr %data.data, !3332, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3462)
    #dbg_value(i64 %data.len, !3332, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3462)
    #dbg_value(i64 poison, !3332, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3462)
    #dbg_value(i64 %.ph309, !3333, !DIExpression(), !3462)
    #dbg_value(i64 %26, !3334, !DIExpression(), !3462)
    #dbg_value(i64 %26, !3334, !DIExpression(), !3463)
    #dbg_value(i64 %.ph309, !3333, !DIExpression(), !3464)
    #dbg_value(i64 %22, !3335, !DIExpression(), !3465)
    #dbg_value(i64 %.ph309, !3333, !DIExpression(), !3466)
    #dbg_value(i64 %22, !3335, !DIExpression(), !3467)
  %41 = lshr i64 %22, 2, !dbg !3468
  %42 = add i64 %41, %.ph309, !dbg !3469
    #dbg_value(i64 %42, !3336, !DIExpression(), !3470)
    #dbg_value(i64 %.ph309, !3333, !DIExpression(), !3471)
    #dbg_value(i64 %22, !3335, !DIExpression(), !3472)
  %43 = shl nuw nsw i64 %41, 1, !dbg !3473
  %44 = add i64 %43, %.ph309, !dbg !3474
    #dbg_value(i64 %44, !3337, !DIExpression(), !3475)
    #dbg_value(i64 %.ph309, !3333, !DIExpression(), !3476)
    #dbg_value(i64 %22, !3335, !DIExpression(), !3477)
  %45 = mul nuw nsw i64 %41, 3, !dbg !3478
  %46 = add i64 %45, %.ph309, !dbg !3479
    #dbg_value(i64 %46, !3338, !DIExpression(), !3480)
    #dbg_value(i64 %22, !3335, !DIExpression(), !3481)
  store i64 0, ptr %stackalloc.i, align 8, !dbg !3482
    #dbg_value(i64 %22, !3335, !DIExpression(), !3483)
  %47 = icmp sgt i64 %22, 49, !dbg !3484
  br i1 %47, label %if.then1.i, label %if.done.i, !dbg !3485

if.then1.i:                                       ; preds = %if.done3
    #dbg_value({ ptr, i64, i64 } poison, !3332, !DIExpression(), !3486)
    #dbg_value(i64 %42, !3336, !DIExpression(), !3487)
    #dbg_value(ptr %data.data, !3488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3495)
    #dbg_value(i64 %data.len, !3488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3495)
    #dbg_value(i64 poison, !3488, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3495)
    #dbg_value(i64 %42, !3493, !DIExpression(), !3495)
    #dbg_value(ptr %stackalloc.i, !3494, !DIExpression(), !3495)
    #dbg_value({ ptr, i64, i64 } poison, !3488, !DIExpression(), !3497)
    #dbg_value(i64 %42, !3493, !DIExpression(), !3498)
  %48 = add i64 %42, -1, !dbg !3499
    #dbg_value(i64 %42, !3493, !DIExpression(), !3500)
    #dbg_value(i64 %42, !3493, !DIExpression(), !3501)
  %49 = add i64 %42, 1, !dbg !3502
    #dbg_value(ptr %stackalloc.i, !3494, !DIExpression(), !3503)
  %50 = call fastcc i64 @"slices.medianOrdered[int]"(ptr readonly %data.data, i64 %data.len, i64 %48, i64 %42, i64 %49, ptr nonnull dereferenceable_or_null(8) %stackalloc.i), !dbg !3504
    #dbg_value(i64 %50, !3336, !DIExpression(), !3505)
    #dbg_value({ ptr, i64, i64 } poison, !3332, !DIExpression(), !3506)
    #dbg_value(i64 %44, !3337, !DIExpression(), !3507)
    #dbg_value(ptr %data.data, !3488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3508)
    #dbg_value(i64 %data.len, !3488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3508)
    #dbg_value(i64 poison, !3488, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3508)
    #dbg_value(i64 %44, !3493, !DIExpression(), !3508)
    #dbg_value(ptr %stackalloc.i, !3494, !DIExpression(), !3508)
    #dbg_value({ ptr, i64, i64 } poison, !3488, !DIExpression(), !3510)
    #dbg_value(i64 %44, !3493, !DIExpression(), !3511)
  %51 = add i64 %44, -1, !dbg !3512
    #dbg_value(i64 %44, !3493, !DIExpression(), !3513)
    #dbg_value(i64 %44, !3493, !DIExpression(), !3514)
  %52 = add i64 %44, 1, !dbg !3515
    #dbg_value(ptr %stackalloc.i, !3494, !DIExpression(), !3516)
  %53 = call fastcc i64 @"slices.medianOrdered[int]"(ptr readonly %data.data, i64 %data.len, i64 %51, i64 %44, i64 %52, ptr nonnull dereferenceable_or_null(8) %stackalloc.i), !dbg !3517
    #dbg_value(i64 %53, !3337, !DIExpression(), !3518)
    #dbg_value({ ptr, i64, i64 } poison, !3332, !DIExpression(), !3519)
    #dbg_value(i64 %46, !3338, !DIExpression(), !3520)
    #dbg_value(ptr %data.data, !3488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3521)
    #dbg_value(i64 %data.len, !3488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3521)
    #dbg_value(i64 poison, !3488, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3521)
    #dbg_value(i64 %46, !3493, !DIExpression(), !3521)
    #dbg_value(ptr %stackalloc.i, !3494, !DIExpression(), !3521)
    #dbg_value({ ptr, i64, i64 } poison, !3488, !DIExpression(), !3523)
    #dbg_value(i64 %46, !3493, !DIExpression(), !3524)
  %54 = add i64 %46, -1, !dbg !3525
    #dbg_value(i64 %46, !3493, !DIExpression(), !3526)
    #dbg_value(i64 %46, !3493, !DIExpression(), !3527)
  %55 = add i64 %46, 1, !dbg !3528
    #dbg_value(ptr %stackalloc.i, !3494, !DIExpression(), !3529)
  %56 = call fastcc i64 @"slices.medianOrdered[int]"(ptr readonly %data.data, i64 %data.len, i64 %54, i64 %46, i64 %55, ptr nonnull dereferenceable_or_null(8) %stackalloc.i), !dbg !3530
    #dbg_value(i64 %56, !3338, !DIExpression(), !3531)
  br label %if.done.i, !dbg !3485

if.done.i:                                        ; preds = %if.then1.i, %if.done3
  %57 = phi i64 [ %42, %if.done3 ], [ %50, %if.then1.i ], !dbg !3470
  %58 = phi i64 [ %44, %if.done3 ], [ %53, %if.then1.i ], !dbg !3475
  %59 = phi i64 [ %46, %if.done3 ], [ %56, %if.then1.i ], !dbg !3480
    #dbg_value({ ptr, i64, i64 } poison, !3332, !DIExpression(), !3532)
    #dbg_value(i64 %57, !3336, !DIExpression(), !3533)
    #dbg_value(i64 %58, !3337, !DIExpression(), !3534)
    #dbg_value(i64 %59, !3338, !DIExpression(), !3535)
  %60 = call fastcc i64 @"slices.medianOrdered[int]"(ptr readonly %data.data, i64 %data.len, i64 %57, i64 %58, i64 %59, ptr nonnull %stackalloc.i), !dbg !3536
    #dbg_value(i64 %60, !3337, !DIExpression(), !3537)
  %61 = load i64, ptr %stackalloc.i, align 8, !dbg !3538
    #dbg_value(i64 %61, !3339, !DIExpression(), !3538)
  %switch.selectcmp.i = icmp eq i64 %61, 12, !dbg !3485
  %switch.selectcmp13.i = icmp eq i64 %61, 0, !dbg !3485
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stackalloc.i), !dbg !3485
    #dbg_value(i64 %60, !3318, !DIExpression(), !3539)
    #dbg_value(i64 poison, !3319, !DIExpression(), !3540)
    #dbg_value(i64 poison, !3319, !DIExpression(), !3541)
  br i1 %switch.selectcmp.i, label %if.then4, label %if.done5, !dbg !3346

if.then4:                                         ; preds = %if.done.i
    #dbg_value({ ptr, i64, i64 } poison, !3311, !DIExpression(), !3542)
    #dbg_value(i64 %.ph309, !3312, !DIExpression(), !3543)
    #dbg_value(i64 %26, !3313, !DIExpression(), !3544)
    #dbg_value(ptr %data.data, !3545, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3552)
    #dbg_value(i64 %data.len, !3545, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3552)
    #dbg_value(i64 poison, !3545, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3552)
    #dbg_value(i64 %.ph309, !3548, !DIExpression(), !3552)
    #dbg_value(i64 %26, !3549, !DIExpression(), !3552)
    #dbg_value(i64 %.ph309, !3548, !DIExpression(), !3554)
    #dbg_value(i64 %.ph309, !3550, !DIExpression(), !3555)
    #dbg_value(i64 %26, !3549, !DIExpression(), !3556)
    #dbg_value(i64 %26, !3551, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3557)
  %62 = add i64 %26, -1, !dbg !3558
  %63 = icmp slt i64 %.ph309, %62, !dbg !3559
  br i1 %63, label %for.body.i33, label %"slices.reverseRangeOrdered[int].exit", !dbg !3558

for.body.i33:                                     ; preds = %if.then4, %lookup.next4.i
  %64 = phi i64 [ %71, %lookup.next4.i ], [ %62, %if.then4 ]
  %65 = phi i64 [ %70, %lookup.next4.i ], [ %.ph309, %if.then4 ]
    #dbg_value(i64 %65, !3550, !DIExpression(), !3560)
    #dbg_value({ ptr, i64, i64 } poison, !3545, !DIExpression(), !3561)
    #dbg_value(i64 %65, !3550, !DIExpression(), !3562)
    #dbg_value({ ptr, i64, i64 } poison, !3545, !DIExpression(), !3563)
    #dbg_value(i64 %64, !3551, !DIExpression(), !3564)
    #dbg_value({ ptr, i64, i64 } poison, !3545, !DIExpression(), !3565)
    #dbg_value(i64 %64, !3551, !DIExpression(), !3566)
  %.not.i34 = icmp ult i64 %64, %data.len, !dbg !3567
  br i1 %.not.i34, label %lookup.next.i36, label %lookup.throw.i35, !dbg !3567

lookup.next.i36:                                  ; preds = %for.body.i33
    #dbg_value({ ptr, i64, i64 } poison, !3545, !DIExpression(), !3568)
    #dbg_value(i64 %65, !3550, !DIExpression(), !3569)
  %exitcond.not.i37 = icmp eq i64 %65, %umax.i, !dbg !3570
  br i1 %exitcond.not.i37, label %lookup.throw3.i, label %lookup.next4.i, !dbg !3570

lookup.next4.i:                                   ; preds = %lookup.next.i36
  %66 = getelementptr inbounds i64, ptr %data.data, i64 %64, !dbg !3567
  %67 = load i64, ptr %66, align 8, !dbg !3567
  %68 = getelementptr inbounds i64, ptr %data.data, i64 %65, !dbg !3570
  %69 = load i64, ptr %68, align 8, !dbg !3570
  store i64 %67, ptr %68, align 8, !dbg !3571
  store i64 %69, ptr %66, align 8, !dbg !3572
  %70 = add nsw i64 %65, 1, !dbg !3573
    #dbg_value(i64 %70, !3550, !DIExpression(), !3573)
    #dbg_value(i64 %64, !3551, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3574)
  %71 = add nsw i64 %64, -1, !dbg !3558
    #dbg_value(i64 %71, !3551, !DIExpression(), !3575)
  %72 = icmp slt i64 %70, %71, !dbg !3559
  br i1 %72, label %for.body.i33, label %"slices.reverseRangeOrdered[int].exit", !dbg !3558

lookup.throw.i35:                                 ; preds = %for.body.i33
  call fastcc void @runtime.lookupPanic(), !dbg !3567
  unreachable, !dbg !3567

lookup.throw3.i:                                  ; preds = %lookup.next.i36
  call fastcc void @runtime.lookupPanic(), !dbg !3570
  unreachable, !dbg !3570

"slices.reverseRangeOrdered[int].exit":           ; preds = %lookup.next4.i, %if.then4
    #dbg_value(i64 %26, !3313, !DIExpression(), !3576)
    #dbg_value(i64 %60, !3318, !DIExpression(), !3577)
    #dbg_value(i64 %.ph309, !3312, !DIExpression(), !3578)
  %.neg = add i64 %62, %.ph309, !dbg !3579
  %73 = sub i64 %.neg, %60, !dbg !3580
    #dbg_value(i64 %73, !3318, !DIExpression(), !3581)
    #dbg_value(i64 1, !3319, !DIExpression(), !3582)
  br label %if.done5, !dbg !3346

if.done5:                                         ; preds = %"slices.reverseRangeOrdered[int].exit", %if.done.i
  %74 = phi i64 [ %60, %if.done.i ], [ %73, %"slices.reverseRangeOrdered[int].exit" ], !dbg !3539
  %75 = phi i1 [ %switch.selectcmp13.i, %if.done.i ], [ true, %"slices.reverseRangeOrdered[int].exit" ], !dbg !3540
    #dbg_value(i1 %24, !3315, !DIExpression(), !3583)
    #dbg_value(i64 poison, !3319, !DIExpression(), !3584)
  %76 = and i1 %23, %75, !dbg !3346
  %or.cond = and i1 %24, %76, !dbg !3346
  br i1 %or.cond, label %if.then7, label %if.done9, !dbg !3346

if.then7:                                         ; preds = %if.done5
    #dbg_value({ ptr, i64, i64 } poison, !3311, !DIExpression(), !3585)
    #dbg_value(i64 %.ph309, !3312, !DIExpression(), !3586)
    #dbg_value(i64 %26, !3313, !DIExpression(), !3587)
    #dbg_value(ptr %data.data, !3588, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3597)
    #dbg_value(i64 %data.len, !3588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3597)
    #dbg_value(i64 poison, !3588, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3597)
    #dbg_value(i64 %.ph309, !3591, !DIExpression(), !3597)
    #dbg_value(i64 %26, !3592, !DIExpression(), !3597)
    #dbg_value(i64 %.ph309, !3591, !DIExpression(), !3599)
    #dbg_value(i64 %4, !3593, !DIExpression(), !3600)
    #dbg_value(i64 0, !3594, !DIExpression(), !3601)
  %77 = icmp slt i64 %22, 50
  br label %for.loop1.preheader.i38, !dbg !3602

for.loop1.preheader.i38:                          ; preds = %if.done13.i, %if.then7
  %78 = phi i64 [ 0, %if.then7 ], [ %117, %if.done13.i ]
  %79 = phi i64 [ %4, %if.then7 ], [ %.lcssa.i, %if.done13.i ]
    #dbg_value(i64 %78, !3594, !DIExpression(), !3603)
    #dbg_value(i64 %79, !3593, !DIExpression(), !3604)
    #dbg_value(i64 %26, !3592, !DIExpression(), !3605)
  %80 = icmp slt i64 %79, %26, !dbg !3606
  br i1 %80, label %cond.true.preheader.i, label %for.done.i39, !dbg !3602

cond.true.preheader.i:                            ; preds = %for.loop1.preheader.i38
  %umax.i41 = call i64 @llvm.umax.i64(i64 %79, i64 %data.len), !dbg !3607
  br label %cond.true.i42, !dbg !3607

cond.true.i42:                                    ; preds = %for.body.i45, %cond.true.preheader.i
  %81 = phi i64 [ %88, %for.body.i45 ], [ %79, %cond.true.preheader.i ]
    #dbg_value(i64 %81, !3593, !DIExpression(), !3604)
    #dbg_value({ ptr, i64, i64 } poison, !3588, !DIExpression(), !3608)
    #dbg_value(i64 %81, !3593, !DIExpression(), !3609)
  %exitcond.not.i43 = icmp eq i64 %81, %umax.i41, !dbg !3607
  br i1 %exitcond.not.i43, label %lookup.throw.i46, label %lookup.next.i44, !dbg !3607

lookup.next.i44:                                  ; preds = %cond.true.i42
    #dbg_value({ ptr, i64, i64 } poison, !3588, !DIExpression(), !3610)
    #dbg_value(i64 %81, !3593, !DIExpression(), !3611)
  %82 = add i64 %81, -1, !dbg !3612
  %.not12.i = icmp ult i64 %82, %data.len, !dbg !3613
  br i1 %.not12.i, label %lookup.next18.i, label %lookup.throw17.i, !dbg !3613

lookup.next18.i:                                  ; preds = %lookup.next.i44
  %83 = getelementptr inbounds i64, ptr %data.data, i64 %81, !dbg !3607
  %84 = load i64, ptr %83, align 8, !dbg !3607
  %85 = getelementptr inbounds i64, ptr %data.data, i64 %82, !dbg !3613
  %86 = load i64, ptr %85, align 8, !dbg !3613
    #dbg_value(i64 %84, !3377, !DIExpression(), !3614)
    #dbg_value(i64 %86, !3383, !DIExpression(), !3614)
    #dbg_value(i64 %84, !3377, !DIExpression(), !3616)
    #dbg_value(i64 %84, !3377, !DIExpression(), !3617)
    #dbg_value(i64 %86, !3383, !DIExpression(), !3618)
  %87 = icmp slt i64 %84, %86, !dbg !3619
  br i1 %87, label %for.done.i39, label %for.body.i45, !dbg !3602

for.body.i45:                                     ; preds = %lookup.next18.i
  %88 = add nsw i64 %81, 1, !dbg !3620
    #dbg_value(i64 %88, !3593, !DIExpression(), !3604)
    #dbg_value(i64 %26, !3592, !DIExpression(), !3605)
  %exitcond48.not.i = icmp eq i64 %88, %26, !dbg !3606
  br i1 %exitcond48.not.i, label %for.done.i39, label %cond.true.i42, !dbg !3602

for.done.i39:                                     ; preds = %for.body.i45, %lookup.next18.i, %for.loop1.preheader.i38
  %.lcssa.i = phi i64 [ %79, %for.loop1.preheader.i38 ], [ %26, %for.body.i45 ], [ %81, %lookup.next18.i ], !dbg !3600
    #dbg_value(i64 %.lcssa.i, !3593, !DIExpression(), !3621)
    #dbg_value(i64 %26, !3592, !DIExpression(), !3622)
  %89 = icmp eq i64 %.lcssa.i, %26, !dbg !3623
  %brmerge.i = or i1 %77, %89, !dbg !3602
  br i1 %brmerge.i, label %"slices.partialInsertionSortOrdered[int].exit", label %if.done3.i, !dbg !3602

if.done3.i:                                       ; preds = %for.done.i39
    #dbg_value({ ptr, i64, i64 } poison, !3588, !DIExpression(), !3624)
    #dbg_value(i64 %.lcssa.i, !3593, !DIExpression(), !3625)
    #dbg_value({ ptr, i64, i64 } poison, !3588, !DIExpression(), !3626)
    #dbg_value(i64 %.lcssa.i, !3593, !DIExpression(), !3627)
  %90 = add i64 %.lcssa.i, -1, !dbg !3628
    #dbg_value({ ptr, i64, i64 } poison, !3588, !DIExpression(), !3629)
    #dbg_value(i64 %.lcssa.i, !3593, !DIExpression(), !3630)
  %.not13.i = icmp ult i64 %90, %data.len, !dbg !3631
  br i1 %.not13.i, label %lookup.next22.i, label %lookup.throw21.i, !dbg !3631

lookup.next22.i:                                  ; preds = %if.done3.i
    #dbg_value({ ptr, i64, i64 } poison, !3588, !DIExpression(), !3632)
    #dbg_value(i64 %.lcssa.i, !3593, !DIExpression(), !3633)
  %.not14.i = icmp ult i64 %.lcssa.i, %data.len, !dbg !3634
  br i1 %.not14.i, label %lookup.next26.i, label %lookup.throw25.i, !dbg !3634

lookup.next26.i:                                  ; preds = %lookup.next22.i
  %91 = getelementptr inbounds i64, ptr %data.data, i64 %90, !dbg !3631
  %92 = load i64, ptr %91, align 8, !dbg !3631
  %93 = getelementptr inbounds i64, ptr %data.data, i64 %.lcssa.i, !dbg !3634
  %94 = load i64, ptr %93, align 8, !dbg !3634
  store i64 %92, ptr %93, align 8, !dbg !3635
  store i64 %94, ptr %91, align 8, !dbg !3636
    #dbg_value(i64 %.lcssa.i, !3593, !DIExpression(), !3637)
    #dbg_value(i64 %.ph309, !3591, !DIExpression(), !3638)
  %95 = sub i64 %.lcssa.i, %.ph309, !dbg !3639
  %96 = icmp sgt i64 %95, 1, !dbg !3640
  %97 = icmp sgt i64 %90, 0
  %or.cond.i = and i1 %96, %97, !dbg !3602
  br i1 %or.cond.i, label %for.body6.preheader.i, label %if.done8.i, !dbg !3602

for.body6.preheader.i:                            ; preds = %lookup.next26.i
  %98 = add i64 %.lcssa.i, -2, !dbg !3641
  %.not17.first_iter.i = icmp ult i64 %98, %data.len, !dbg !3641
  br i1 %.not17.first_iter.i, label %for.body6.i, label %lookup.throw41.i, !dbg !3642

for.body6.i:                                      ; preds = %for.body6.preheader.i, %lookup.next50.i
  %99 = phi i64 [ %104, %lookup.next50.i ], [ %90, %for.body6.preheader.i ]
  %.in2643.i = phi i64 [ %99, %lookup.next50.i ], [ %.lcssa.i, %for.body6.preheader.i ]
    #dbg_value({ ptr, i64, i64 } poison, !3588, !DIExpression(), !3643)
    #dbg_value(i64 %99, !3595, !DIExpression(), !3644)
    #dbg_value({ ptr, i64, i64 } poison, !3588, !DIExpression(), !3645)
    #dbg_value(i64 %99, !3595, !DIExpression(), !3646)
  %100 = getelementptr inbounds nuw i64, ptr %data.data, i64 %99, !dbg !3641
  %101 = load i64, ptr %100, align 8, !dbg !3641
  %gep = getelementptr i64, ptr %invariant.gep, i64 %.in2643.i, !dbg !3642
  %102 = load i64, ptr %gep, align 8, !dbg !3642
    #dbg_value(i64 %101, !3377, !DIExpression(), !3647)
    #dbg_value(i64 %102, !3383, !DIExpression(), !3647)
    #dbg_value(i64 %101, !3377, !DIExpression(), !3649)
    #dbg_value(i64 %101, !3377, !DIExpression(), !3650)
    #dbg_value(i64 %102, !3383, !DIExpression(), !3651)
  %103 = icmp slt i64 %101, %102, !dbg !3652
  br i1 %103, label %lookup.next50.i, label %if.done8.i, !dbg !3602

lookup.next50.i:                                  ; preds = %for.body6.i
    #dbg_value({ ptr, i64, i64 } poison, !3588, !DIExpression(), !3653)
    #dbg_value(i64 %99, !3595, !DIExpression(), !3654)
  store i64 %102, ptr %100, align 8, !dbg !3655
  store i64 %101, ptr %gep, align 8, !dbg !3656
    #dbg_value(i64 %99, !3595, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3657)
  %104 = add nsw i64 %99, -1, !dbg !3658
    #dbg_value(i64 %104, !3595, !DIExpression(), !3659)
  %105 = icmp sgt i64 %99, 1, !dbg !3660
  br i1 %105, label %for.body6.i, label %if.done8.i, !dbg !3602

if.done8.i:                                       ; preds = %lookup.next50.i, %for.body6.i, %lookup.next26.i
    #dbg_value(i64 %26, !3592, !DIExpression(), !3661)
    #dbg_value(i64 %.lcssa.i, !3593, !DIExpression(), !3662)
  %106 = sub i64 %26, %.lcssa.i, !dbg !3663
  %107 = icmp sgt i64 %106, 1, !dbg !3664
  %108 = add i64 %.lcssa.i, 1
  %109 = icmp slt i64 %108, %26
  %or.cond47.i = and i1 %107, %109, !dbg !3602
  br i1 %or.cond47.i, label %for.body11.i, label %if.done13.i, !dbg !3602

for.body11.i:                                     ; preds = %if.done8.i, %lookup.next74.i
  %110 = phi i64 [ %116, %lookup.next74.i ], [ %108, %if.done8.i ]
  %.in44.i = phi i64 [ %110, %lookup.next74.i ], [ %.lcssa.i, %if.done8.i ]
    #dbg_value({ ptr, i64, i64 } poison, !3588, !DIExpression(), !3665)
    #dbg_value(i64 %110, !3596, !DIExpression(), !3666)
  %.not18.i = icmp ult i64 %110, %data.len, !dbg !3667
  br i1 %.not18.i, label %lookup.next62.i, label %lookup.throw61.i, !dbg !3667

lookup.next62.i:                                  ; preds = %for.body11.i
    #dbg_value({ ptr, i64, i64 } poison, !3588, !DIExpression(), !3668)
    #dbg_value(i64 %110, !3596, !DIExpression(), !3669)
  %.not19.i = icmp ult i64 %.in44.i, %data.len, !dbg !3670
  br i1 %.not19.i, label %lookup.next66.i, label %lookup.throw65.i, !dbg !3670

lookup.next66.i:                                  ; preds = %lookup.next62.i
  %111 = getelementptr inbounds i64, ptr %data.data, i64 %110, !dbg !3667
  %112 = load i64, ptr %111, align 8, !dbg !3667
  %113 = getelementptr inbounds i64, ptr %data.data, i64 %.in44.i, !dbg !3670
  %114 = load i64, ptr %113, align 8, !dbg !3670
    #dbg_value(i64 %112, !3377, !DIExpression(), !3671)
    #dbg_value(i64 %114, !3383, !DIExpression(), !3671)
    #dbg_value(i64 %112, !3377, !DIExpression(), !3673)
    #dbg_value(i64 %112, !3377, !DIExpression(), !3674)
    #dbg_value(i64 %114, !3383, !DIExpression(), !3675)
  %115 = icmp slt i64 %112, %114, !dbg !3676
  br i1 %115, label %lookup.next74.i, label %if.done13.i, !dbg !3602

lookup.next74.i:                                  ; preds = %lookup.next66.i
    #dbg_value({ ptr, i64, i64 } poison, !3588, !DIExpression(), !3677)
    #dbg_value(i64 %110, !3596, !DIExpression(), !3678)
  store i64 %114, ptr %111, align 8, !dbg !3679
  store i64 %112, ptr %113, align 8, !dbg !3680
    #dbg_value(i64 %110, !3596, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3681)
  %116 = add nuw nsw i64 %110, 1, !dbg !3682
    #dbg_value(i64 %116, !3596, !DIExpression(), !3683)
    #dbg_value(i64 %26, !3592, !DIExpression(), !3684)
  %exitcond50.not.i = icmp eq i64 %116, %26, !dbg !3685
  br i1 %exitcond50.not.i, label %if.done13.i, label %for.body11.i, !dbg !3602

if.done13.i:                                      ; preds = %lookup.next74.i, %lookup.next66.i, %if.done8.i
  %117 = add nuw nsw i64 %78, 1, !dbg !3686
    #dbg_value(i64 %117, !3594, !DIExpression(), !3603)
  %exitcond51.not.i = icmp eq i64 %117, 5, !dbg !3687
  br i1 %exitcond51.not.i, label %if.done9, label %for.loop1.preheader.i38, !dbg !3602

lookup.throw.i46:                                 ; preds = %cond.true.i42
  call fastcc void @runtime.lookupPanic(), !dbg !3607
  unreachable, !dbg !3607

lookup.throw17.i:                                 ; preds = %lookup.next.i44
  call fastcc void @runtime.lookupPanic(), !dbg !3613
  unreachable, !dbg !3613

lookup.throw21.i:                                 ; preds = %if.done3.i
  call fastcc void @runtime.lookupPanic(), !dbg !3631
  unreachable, !dbg !3631

lookup.throw25.i:                                 ; preds = %lookup.next22.i
  call fastcc void @runtime.lookupPanic(), !dbg !3634
  unreachable, !dbg !3634

lookup.throw41.i:                                 ; preds = %for.body6.preheader.i
  call fastcc void @runtime.lookupPanic(), !dbg !3642
  unreachable, !dbg !3642

lookup.throw61.i:                                 ; preds = %for.body11.i
  call fastcc void @runtime.lookupPanic(), !dbg !3667
  unreachable, !dbg !3667

lookup.throw65.i:                                 ; preds = %lookup.next62.i
  call fastcc void @runtime.lookupPanic(), !dbg !3670
  unreachable, !dbg !3670

"slices.partialInsertionSortOrdered[int].exit":   ; preds = %for.done.i39
  br i1 %89, label %common.ret, label %if.done9, !dbg !3346

if.done9:                                         ; preds = %if.done13.i, %if.done5, %"slices.partialInsertionSortOrdered[int].exit"
    #dbg_value(i64 %.ph309, !3312, !DIExpression(), !3688)
  br i1 %5, label %cond.true10, label %if.done12, !dbg !3346

cond.true10:                                      ; preds = %if.done9
    #dbg_value({ ptr, i64, i64 } poison, !3311, !DIExpression(), !3689)
    #dbg_value(i64 %.ph309, !3312, !DIExpression(), !3690)
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3691

lookup.next:                                      ; preds = %cond.true10
    #dbg_value({ ptr, i64, i64 } poison, !3311, !DIExpression(), !3692)
    #dbg_value(i64 %74, !3318, !DIExpression(), !3693)
  %.not8 = icmp ult i64 %74, %data.len, !dbg !3694
  br i1 %.not8, label %lookup.next18, label %lookup.throw17, !dbg !3694

lookup.next18:                                    ; preds = %lookup.next
  %118 = load i64, ptr %7, align 8, !dbg !3691
  %119 = getelementptr inbounds i64, ptr %data.data, i64 %74, !dbg !3694
  %120 = load i64, ptr %119, align 8, !dbg !3694
    #dbg_value(i64 %118, !3377, !DIExpression(), !3695)
    #dbg_value(i64 %120, !3383, !DIExpression(), !3695)
    #dbg_value(i64 %118, !3377, !DIExpression(), !3697)
    #dbg_value(i64 %118, !3377, !DIExpression(), !3698)
    #dbg_value(i64 %120, !3383, !DIExpression(), !3699)
  %121 = icmp slt i64 %118, %120, !dbg !3700
  br i1 %121, label %if.done12, label %lookup.next.i49, !dbg !3346

lookup.next.i49:                                  ; preds = %lookup.next18
    #dbg_value({ ptr, i64, i64 } poison, !3311, !DIExpression(), !3701)
    #dbg_value(i64 %.ph309, !3312, !DIExpression(), !3702)
    #dbg_value(i64 %26, !3313, !DIExpression(), !3703)
    #dbg_value(i64 %74, !3318, !DIExpression(), !3704)
    #dbg_value(ptr %data.data, !3705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3714)
    #dbg_value(i64 %data.len, !3705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3714)
    #dbg_value(i64 poison, !3705, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3714)
    #dbg_value(i64 %.ph309, !3709, !DIExpression(), !3714)
    #dbg_value(i64 %26, !3710, !DIExpression(), !3714)
    #dbg_value(i64 %74, !3711, !DIExpression(), !3714)
    #dbg_value({ ptr, i64, i64 } poison, !3705, !DIExpression(), !3716)
    #dbg_value(i64 %.ph309, !3709, !DIExpression(), !3717)
    #dbg_value({ ptr, i64, i64 } poison, !3705, !DIExpression(), !3718)
    #dbg_value(i64 %74, !3711, !DIExpression(), !3719)
    #dbg_value({ ptr, i64, i64 } poison, !3705, !DIExpression(), !3720)
    #dbg_value(i64 %74, !3711, !DIExpression(), !3721)
    #dbg_value({ ptr, i64, i64 } poison, !3705, !DIExpression(), !3722)
    #dbg_value(i64 %.ph309, !3709, !DIExpression(), !3723)
  %.not4.i50 = icmp ult i64 %.ph309, %data.len, !dbg !3724
  br i1 %.not4.i50, label %lookup.next7.i52, label %lookup.throw6.i51, !dbg !3724

lookup.next7.i52:                                 ; preds = %lookup.next.i49
  %122 = getelementptr inbounds nuw i64, ptr %data.data, i64 %.ph309, !dbg !3724
  %123 = load i64, ptr %122, align 8, !dbg !3724
  store i64 %120, ptr %122, align 8, !dbg !3725
  store i64 %123, ptr %119, align 8, !dbg !3726
    #dbg_value(i64 %.ph309, !3709, !DIExpression(), !3727)
    #dbg_value(i64 %26, !3710, !DIExpression(), !3728)
    #dbg_value(i64 %.ph309, !3712, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3729)
    #dbg_value(i64 %26, !3713, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3730)
  br label %for.loop.outer.i, !dbg !3731

for.loop.outer.i:                                 ; preds = %lookup.next39.i, %lookup.next7.i52
  %.in.ph.i = phi i64 [ %124, %lookup.next39.i ], [ %.ph309, %lookup.next7.i52 ]
  %.ph.in.i = phi i64 [ %129, %lookup.next39.i ], [ %26, %lookup.next7.i52 ]
  %.ph.i = add i64 %.ph.in.i, -1, !dbg !3731
  br label %for.loop.i, !dbg !3731

for.loop.i:                                       ; preds = %lookup.next23.i, %for.loop.outer.i
  %.in.i = phi i64 [ %124, %lookup.next23.i ], [ %.in.ph.i, %for.loop.outer.i ]
  %124 = add i64 %.in.i, 1, !dbg !3731
    #dbg_value(i64 %124, !3712, !DIExpression(), !3732)
    #dbg_value(i64 %.ph.i, !3713, !DIExpression(), !3733)
  %.not6.i = icmp sgt i64 %124, %.ph.i, !dbg !3734
  br i1 %.not6.i, label %for.body.outer.backedge, label %lookup.next19.i, !dbg !3731

lookup.next19.i:                                  ; preds = %for.loop.i
    #dbg_value({ ptr, i64, i64 } poison, !3705, !DIExpression(), !3735)
    #dbg_value(i64 poison, !3709, !DIExpression(), !3736)
    #dbg_value({ ptr, i64, i64 } poison, !3705, !DIExpression(), !3737)
    #dbg_value(i64 %124, !3712, !DIExpression(), !3738)
  %.not8.i = icmp ult i64 %124, %data.len, !dbg !3739
  br i1 %.not8.i, label %lookup.next23.i, label %lookup.throw22.i, !dbg !3739

lookup.next23.i:                                  ; preds = %lookup.next19.i
  %125 = load i64, ptr %122, align 8, !dbg !3740
  %126 = getelementptr inbounds i64, ptr %data.data, i64 %124, !dbg !3739
  %127 = load i64, ptr %126, align 8, !dbg !3739
    #dbg_value(i64 %125, !3377, !DIExpression(), !3741)
    #dbg_value(i64 %127, !3383, !DIExpression(), !3741)
    #dbg_value(i64 %125, !3377, !DIExpression(), !3743)
    #dbg_value(i64 %125, !3377, !DIExpression(), !3744)
    #dbg_value(i64 %127, !3383, !DIExpression(), !3745)
  %128 = icmp slt i64 %125, %127, !dbg !3746
  br i1 %128, label %lookup.next27.i, label %for.loop.i, !dbg !3731

lookup.next27.i:                                  ; preds = %lookup.next23.i, %for.body3.i
  %129 = phi i64 [ %134, %for.body3.i ], [ %.ph.i, %lookup.next23.i ]
    #dbg_value(i64 %129, !3713, !DIExpression(), !3747)
    #dbg_value({ ptr, i64, i64 } poison, !3705, !DIExpression(), !3748)
    #dbg_value(i64 poison, !3709, !DIExpression(), !3749)
    #dbg_value({ ptr, i64, i64 } poison, !3705, !DIExpression(), !3750)
    #dbg_value(i64 %129, !3713, !DIExpression(), !3751)
  %.not11.i = icmp ult i64 %129, %data.len, !dbg !3752
  br i1 %.not11.i, label %lookup.next31.i, label %lookup.throw30.i, !dbg !3752

lookup.next31.i:                                  ; preds = %lookup.next27.i
  %130 = load i64, ptr %122, align 8, !dbg !3753
  %131 = getelementptr inbounds i64, ptr %data.data, i64 %129, !dbg !3752
  %132 = load i64, ptr %131, align 8, !dbg !3752
    #dbg_value(i64 %130, !3377, !DIExpression(), !3754)
    #dbg_value(i64 %132, !3383, !DIExpression(), !3754)
    #dbg_value(i64 %130, !3377, !DIExpression(), !3756)
    #dbg_value(i64 %130, !3377, !DIExpression(), !3757)
    #dbg_value(i64 %132, !3383, !DIExpression(), !3758)
  %133 = icmp slt i64 %130, %132, !dbg !3759
  br i1 %133, label %for.body3.i, label %lookup.next39.i, !dbg !3731

for.body3.i:                                      ; preds = %lookup.next31.i
  %134 = add i64 %129, -1, !dbg !3760
    #dbg_value(i64 %124, !3712, !DIExpression(), !3761)
    #dbg_value(i64 %134, !3713, !DIExpression(), !3747)
  %.not9.i = icmp sgt i64 %124, %134, !dbg !3762
  br i1 %.not9.i, label %for.body.outer.backedge, label %lookup.next27.i, !dbg !3731

lookup.next39.i:                                  ; preds = %lookup.next31.i
    #dbg_value(i64 %124, !3712, !DIExpression(), !3763)
    #dbg_value(i64 %129, !3713, !DIExpression(), !3764)
    #dbg_value({ ptr, i64, i64 } poison, !3705, !DIExpression(), !3765)
    #dbg_value(i64 %124, !3712, !DIExpression(), !3766)
    #dbg_value({ ptr, i64, i64 } poison, !3705, !DIExpression(), !3767)
    #dbg_value(i64 %129, !3713, !DIExpression(), !3768)
    #dbg_value({ ptr, i64, i64 } poison, !3705, !DIExpression(), !3769)
    #dbg_value(i64 %129, !3713, !DIExpression(), !3770)
    #dbg_value({ ptr, i64, i64 } poison, !3705, !DIExpression(), !3771)
    #dbg_value(i64 %124, !3712, !DIExpression(), !3772)
  %135 = getelementptr inbounds i64, ptr %data.data, i64 %124, !dbg !3773
  %136 = load i64, ptr %135, align 8, !dbg !3773
  store i64 %132, ptr %135, align 8, !dbg !3774
  store i64 %136, ptr %131, align 8, !dbg !3775
    #dbg_value(i64 %124, !3712, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3776)
    #dbg_value(i64 %129, !3713, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3777)
  br label %for.loop.outer.i, !dbg !3731

lookup.throw6.i51:                                ; preds = %lookup.next.i49
  call fastcc void @runtime.lookupPanic(), !dbg !3724
  unreachable, !dbg !3724

lookup.throw22.i:                                 ; preds = %lookup.next19.i
  call fastcc void @runtime.lookupPanic(), !dbg !3739
  unreachable, !dbg !3739

lookup.throw30.i:                                 ; preds = %lookup.next27.i
  call fastcc void @runtime.lookupPanic(), !dbg !3752
  unreachable, !dbg !3752

for.body.outer.backedge:                          ; preds = %for.loop.i, %for.body3.i, %if.then13
  %.ph.be = phi i64 [ %183, %if.then13 ], [ %124, %for.body3.i ], [ %124, %for.loop.i ]
  %.ph88.be = phi i1 [ %182, %if.then13 ], [ %24, %for.body3.i ], [ %24, %for.loop.i ]
  %.ph89.be = phi i1 [ %.not1669.i, %if.then13 ], [ %23, %for.body3.i ], [ %23, %for.loop.i ]
    #dbg_value(i64 %26, !3313, !DIExpression(), !3347)
    #dbg_value(i64 %.ph.be, !3312, !DIExpression(), !3348)
  %137 = sub i64 %26, %.ph.be, !dbg !3344
  %138 = icmp slt i64 %137, 13, !dbg !3345
  br i1 %138, label %if.then, label %if.done.lr.ph, !dbg !3346

if.done12:                                        ; preds = %lookup.next18, %if.done9
    #dbg_value({ ptr, i64, i64 } poison, !3311, !DIExpression(), !3778)
    #dbg_value(i64 %.ph309, !3312, !DIExpression(), !3779)
    #dbg_value(i64 %26, !3313, !DIExpression(), !3780)
    #dbg_value(i64 %74, !3318, !DIExpression(), !3781)
    #dbg_value(ptr %data.data, !3782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3790)
    #dbg_value(i64 %data.len, !3782, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3790)
    #dbg_value(i64 poison, !3782, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3790)
    #dbg_value(i64 %.ph309, !3785, !DIExpression(), !3790)
    #dbg_value(i64 %26, !3786, !DIExpression(), !3790)
    #dbg_value(i64 %74, !3787, !DIExpression(), !3790)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3792)
    #dbg_value(i64 %.ph309, !3785, !DIExpression(), !3793)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3794)
    #dbg_value(i64 %74, !3787, !DIExpression(), !3795)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3796)
    #dbg_value(i64 %74, !3787, !DIExpression(), !3797)
  %.not.i56 = icmp ult i64 %74, %data.len, !dbg !3798
  br i1 %.not.i56, label %lookup.next.i58, label %lookup.throw.i57, !dbg !3798

lookup.next.i58:                                  ; preds = %if.done12
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3799)
    #dbg_value(i64 %.ph309, !3785, !DIExpression(), !3800)
  br i1 %.not11.i59, label %lookup.next16.i, label %lookup.throw15.i, !dbg !3801

lookup.next16.i:                                  ; preds = %lookup.next.i58
  %139 = getelementptr inbounds i64, ptr %data.data, i64 %74, !dbg !3798
  %140 = load i64, ptr %139, align 8, !dbg !3798
  %141 = load i64, ptr %8, align 8, !dbg !3801
  store i64 %140, ptr %8, align 8, !dbg !3802
  store i64 %141, ptr %139, align 8, !dbg !3803
    #dbg_value(i64 %.ph309, !3785, !DIExpression(), !3804)
    #dbg_value(i64 %26, !3786, !DIExpression(), !3805)
  %142 = add i64 %26, -1, !dbg !3806
    #dbg_value(i64 %.ph309, !3788, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3807)
    #dbg_value(i64 %142, !3789, !DIExpression(), !3808)
  br label %for.loop.i60, !dbg !3809

for.loop.i60:                                     ; preds = %lookup.next32.i, %lookup.next16.i
  %.in.i61 = phi i64 [ %.ph309, %lookup.next16.i ], [ %143, %lookup.next32.i ]
  %143 = add nuw i64 %.in.i61, 1, !dbg !3809
    #dbg_value(i64 %143, !3788, !DIExpression(), !3810)
    #dbg_value(i64 %142, !3789, !DIExpression(), !3811)
  %.not13.i62 = icmp sgt i64 %143, %142, !dbg !3812
  br i1 %.not13.i62, label %lookup.next44.i, label %cond.true.i63, !dbg !3809

cond.true.i63:                                    ; preds = %for.loop.i60
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3813)
    #dbg_value(i64 %143, !3788, !DIExpression(), !3814)
  %exitcond.not.i64 = icmp eq i64 %.in.i61, %2, !dbg !3815
  br i1 %exitcond.not.i64, label %lookup.throw27.i, label %lookup.next32.i, !dbg !3815

lookup.next32.i:                                  ; preds = %cond.true.i63
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3816)
    #dbg_value(i64 %.ph309, !3785, !DIExpression(), !3817)
  %144 = getelementptr inbounds i64, ptr %data.data, i64 %143, !dbg !3815
  %145 = load i64, ptr %144, align 8, !dbg !3815
  %146 = load i64, ptr %8, align 8, !dbg !3818
    #dbg_value(i64 %145, !3377, !DIExpression(), !3819)
    #dbg_value(i64 %146, !3383, !DIExpression(), !3819)
    #dbg_value(i64 %145, !3377, !DIExpression(), !3821)
    #dbg_value(i64 %145, !3377, !DIExpression(), !3822)
    #dbg_value(i64 %146, !3383, !DIExpression(), !3823)
  %147 = icmp slt i64 %145, %146, !dbg !3824
  br i1 %147, label %for.loop.i60, label %cond.true2.i, !dbg !3809

cond.true2.i:                                     ; preds = %lookup.next32.i, %for.body3.i66
  %148 = phi i64 [ %153, %for.body3.i66 ], [ %142, %lookup.next32.i ]
    #dbg_value(i64 %148, !3789, !DIExpression(), !3825)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3826)
    #dbg_value(i64 %148, !3789, !DIExpression(), !3827)
  %.not17.i = icmp ult i64 %148, %data.len, !dbg !3828
  br i1 %.not17.i, label %lookup.next40.i, label %lookup.throw35.i, !dbg !3828

lookup.next40.i:                                  ; preds = %cond.true2.i
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3829)
    #dbg_value(i64 %.ph309, !3785, !DIExpression(), !3830)
  %149 = getelementptr inbounds i64, ptr %data.data, i64 %148, !dbg !3828
  %150 = load i64, ptr %149, align 8, !dbg !3828
  %151 = load i64, ptr %8, align 8, !dbg !3831
    #dbg_value(i64 %150, !3377, !DIExpression(), !3832)
    #dbg_value(i64 %151, !3383, !DIExpression(), !3832)
    #dbg_value(i64 %150, !3377, !DIExpression(), !3834)
    #dbg_value(i64 %150, !3377, !DIExpression(), !3835)
    #dbg_value(i64 %151, !3383, !DIExpression(), !3836)
  %152 = icmp slt i64 %150, %151, !dbg !3837
  br i1 %152, label %lookup.next60.i, label %for.body3.i66, !dbg !3809

for.body3.i66:                                    ; preds = %lookup.next40.i
  %153 = add i64 %148, -1, !dbg !3838
    #dbg_value(i64 %143, !3788, !DIExpression(), !3839)
    #dbg_value(i64 %153, !3789, !DIExpression(), !3825)
  %.not16.i = icmp sgt i64 %143, %153, !dbg !3840
  br i1 %.not16.i, label %lookup.next44.i, label %cond.true2.i, !dbg !3809

lookup.next44.i:                                  ; preds = %for.loop.i60, %for.body3.i66
  %.lcssa70.i = phi i64 [ %153, %for.body3.i66 ], [ %142, %for.loop.i60 ], !dbg !3808
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3841)
    #dbg_value(i64 %.lcssa70.i, !3789, !DIExpression(), !3842)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3843)
    #dbg_value(i64 %.ph309, !3785, !DIExpression(), !3844)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3845)
    #dbg_value(i64 %.ph309, !3785, !DIExpression(), !3846)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3847)
    #dbg_value(i64 %.lcssa70.i, !3789, !DIExpression(), !3848)
  %.not35.i = icmp ult i64 %.lcssa70.i, %data.len, !dbg !3849
  br i1 %.not35.i, label %lookup.next48.i, label %lookup.throw47.i, !dbg !3849

lookup.next48.i:                                  ; preds = %lookup.next44.i
  %154 = load i64, ptr %8, align 8, !dbg !3850
  %155 = getelementptr inbounds i64, ptr %data.data, i64 %.lcssa70.i, !dbg !3849
  %156 = load i64, ptr %155, align 8, !dbg !3849
  store i64 %154, ptr %155, align 8, !dbg !3851
    #dbg_value(i64 %.lcssa70.i, !3789, !DIExpression(), !3852)
  br label %"slices.partitionOrdered[int].exit", !dbg !3853

lookup.next60.i:                                  ; preds = %lookup.next40.i
    #dbg_value(i64 %143, !3788, !DIExpression(), !3854)
    #dbg_value(i64 %148, !3789, !DIExpression(), !3855)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3856)
    #dbg_value(i64 %143, !3788, !DIExpression(), !3857)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3858)
    #dbg_value(i64 %148, !3789, !DIExpression(), !3859)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3860)
    #dbg_value(i64 %148, !3789, !DIExpression(), !3861)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3862)
    #dbg_value(i64 %143, !3788, !DIExpression(), !3863)
  %.not20.i = icmp ult i64 %143, %data.len, !dbg !3864
  br i1 %.not20.i, label %lookup.next64.i, label %lookup.throw63.i, !dbg !3864

lookup.next64.i:                                  ; preds = %lookup.next60.i
  %157 = getelementptr inbounds i64, ptr %data.data, i64 %143, !dbg !3864
  %158 = load i64, ptr %157, align 8, !dbg !3864
  store i64 %150, ptr %157, align 8, !dbg !3865
  store i64 %158, ptr %149, align 8, !dbg !3866
  %159 = add i64 %.in.i61, 2, !dbg !3867
    #dbg_value(i64 %159, !3788, !DIExpression(), !3867)
    #dbg_value(i64 %148, !3789, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3868)
  br label %for.loop4.outer.i, !dbg !3809

for.loop4.outer.i:                                ; preds = %lookup.next112.i, %lookup.next64.i
  %.ph.i69 = phi i64 [ %177, %lookup.next112.i ], [ %159, %lookup.next64.i ]
  %.ph60.in.i = phi i64 [ %166, %lookup.next112.i ], [ %148, %lookup.next64.i ]
  %.ph60.i = add i64 %.ph60.in.i, -1, !dbg !3809
    #dbg_value(i64 %.ph.i69, !3788, !DIExpression(), !3869)
    #dbg_value(i64 %.ph60.i, !3789, !DIExpression(), !3870)
  %.not2281.i = icmp sgt i64 %.ph.i69, %.ph60.i, !dbg !3871
  br i1 %.not2281.i, label %for.loop7.preheader.i, label %cond.true5.preheader.i, !dbg !3809

cond.true5.preheader.i:                           ; preds = %for.loop4.outer.i
  %umax.i70 = call i64 @llvm.umax.i64(i64 %.ph.i69, i64 %data.len), !dbg !3872
  br label %cond.true5.i, !dbg !3872

cond.true5.i:                                     ; preds = %for.body6.i72, %cond.true5.preheader.i
  %160 = phi i64 [ %165, %for.body6.i72 ], [ %.ph.i69, %cond.true5.preheader.i ]
    #dbg_value(i64 %160, !3788, !DIExpression(), !3869)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3873)
    #dbg_value(i64 %160, !3788, !DIExpression(), !3874)
  %exitcond111.not.i = icmp eq i64 %160, %umax.i70, !dbg !3872
  br i1 %exitcond111.not.i, label %lookup.throw75.i, label %lookup.next80.i, !dbg !3872

lookup.next80.i:                                  ; preds = %cond.true5.i
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3875)
    #dbg_value(i64 %.ph309, !3785, !DIExpression(), !3876)
  %161 = getelementptr inbounds i64, ptr %data.data, i64 %160, !dbg !3872
  %162 = load i64, ptr %161, align 8, !dbg !3872
  %163 = load i64, ptr %8, align 8, !dbg !3877
    #dbg_value(i64 %162, !3377, !DIExpression(), !3878)
    #dbg_value(i64 %163, !3383, !DIExpression(), !3878)
    #dbg_value(i64 %162, !3377, !DIExpression(), !3880)
    #dbg_value(i64 %162, !3377, !DIExpression(), !3881)
    #dbg_value(i64 %163, !3383, !DIExpression(), !3882)
  %164 = icmp slt i64 %162, %163, !dbg !3883
  br i1 %164, label %for.body6.i72, label %for.loop7.preheader.i, !dbg !3809

for.loop7.preheader.i:                            ; preds = %for.body6.i72, %lookup.next80.i, %for.loop4.outer.i
  %.lcssa.i71 = phi i64 [ %.ph.i69, %for.loop4.outer.i ], [ %160, %lookup.next80.i ], [ %165, %for.body6.i72 ], !dbg !3807
    #dbg_value(i64 %.lcssa.i71, !3788, !DIExpression(), !3884)
    #dbg_value(i64 %.ph60.i, !3789, !DIExpression(), !3885)
  %.not2584.i = icmp sgt i64 %.lcssa.i71, %.ph60.i, !dbg !3886
  br i1 %.not2584.i, label %lookup.next92.i, label %cond.true8.i, !dbg !3809

for.body6.i72:                                    ; preds = %lookup.next80.i
  %165 = add i64 %160, 1, !dbg !3887
    #dbg_value(i64 %165, !3788, !DIExpression(), !3869)
    #dbg_value(i64 %.ph60.i, !3789, !DIExpression(), !3870)
  %.not22.i = icmp sgt i64 %165, %.ph60.i, !dbg !3871
  br i1 %.not22.i, label %for.loop7.preheader.i, label %cond.true5.i, !dbg !3809

cond.true8.i:                                     ; preds = %for.loop7.preheader.i, %for.body9.i
  %166 = phi i64 [ %171, %for.body9.i ], [ %.ph60.i, %for.loop7.preheader.i ]
    #dbg_value(i64 %166, !3789, !DIExpression(), !3885)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3888)
    #dbg_value(i64 %166, !3789, !DIExpression(), !3889)
  %.not26.i = icmp ult i64 %166, %data.len, !dbg !3890
  br i1 %.not26.i, label %lookup.next88.i, label %lookup.throw83.i, !dbg !3890

lookup.next88.i:                                  ; preds = %cond.true8.i
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3891)
    #dbg_value(i64 %.ph309, !3785, !DIExpression(), !3892)
  %167 = getelementptr inbounds i64, ptr %data.data, i64 %166, !dbg !3890
  %168 = load i64, ptr %167, align 8, !dbg !3890
  %169 = load i64, ptr %8, align 8, !dbg !3893
    #dbg_value(i64 %168, !3377, !DIExpression(), !3894)
    #dbg_value(i64 %169, !3383, !DIExpression(), !3894)
    #dbg_value(i64 %168, !3377, !DIExpression(), !3896)
    #dbg_value(i64 %168, !3377, !DIExpression(), !3897)
    #dbg_value(i64 %169, !3383, !DIExpression(), !3898)
  %170 = icmp slt i64 %168, %169, !dbg !3899
  br i1 %170, label %lookup.next108.i, label %for.body9.i, !dbg !3809

for.body9.i:                                      ; preds = %lookup.next88.i
  %171 = add i64 %166, -1, !dbg !3900
    #dbg_value(i64 %.lcssa.i71, !3788, !DIExpression(), !3884)
    #dbg_value(i64 %171, !3789, !DIExpression(), !3885)
  %.not25.i = icmp sgt i64 %.lcssa.i71, %171, !dbg !3886
  br i1 %.not25.i, label %lookup.next92.i, label %cond.true8.i, !dbg !3809

lookup.next92.i:                                  ; preds = %for.loop7.preheader.i, %for.body9.i
  %.lcssa62.i = phi i64 [ %171, %for.body9.i ], [ %.ph60.i, %for.loop7.preheader.i ], !dbg !3808
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3901)
    #dbg_value(i64 %.lcssa62.i, !3789, !DIExpression(), !3902)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3903)
    #dbg_value(i64 %.ph309, !3785, !DIExpression(), !3904)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3905)
    #dbg_value(i64 %.ph309, !3785, !DIExpression(), !3906)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3907)
    #dbg_value(i64 %.lcssa62.i, !3789, !DIExpression(), !3908)
  %.not32.i = icmp ult i64 %.lcssa62.i, %data.len, !dbg !3909
  br i1 %.not32.i, label %lookup.next96.i, label %lookup.throw95.i, !dbg !3909

lookup.next96.i:                                  ; preds = %lookup.next92.i
  %172 = load i64, ptr %8, align 8, !dbg !3910
  %173 = getelementptr inbounds i64, ptr %data.data, i64 %.lcssa62.i, !dbg !3909
  %174 = load i64, ptr %173, align 8, !dbg !3909
  store i64 %172, ptr %173, align 8, !dbg !3911
    #dbg_value(i64 %.lcssa62.i, !3789, !DIExpression(), !3912)
  br label %"slices.partitionOrdered[int].exit", !dbg !3913

lookup.next108.i:                                 ; preds = %lookup.next88.i
    #dbg_value(i64 %.lcssa.i71, !3788, !DIExpression(), !3914)
    #dbg_value(i64 %166, !3789, !DIExpression(), !3915)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3916)
    #dbg_value(i64 %.lcssa.i71, !3788, !DIExpression(), !3917)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3918)
    #dbg_value(i64 %166, !3789, !DIExpression(), !3919)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3920)
    #dbg_value(i64 %166, !3789, !DIExpression(), !3921)
    #dbg_value({ ptr, i64, i64 } poison, !3782, !DIExpression(), !3922)
    #dbg_value(i64 %.lcssa.i71, !3788, !DIExpression(), !3923)
  %.not29.i = icmp ult i64 %.lcssa.i71, %data.len, !dbg !3924
  br i1 %.not29.i, label %lookup.next112.i, label %lookup.throw111.i, !dbg !3924

lookup.next112.i:                                 ; preds = %lookup.next108.i
  %175 = getelementptr inbounds i64, ptr %data.data, i64 %.lcssa.i71, !dbg !3924
  %176 = load i64, ptr %175, align 8, !dbg !3924
  store i64 %168, ptr %175, align 8, !dbg !3925
  store i64 %176, ptr %167, align 8, !dbg !3926
  %177 = add i64 %.lcssa.i71, 1, !dbg !3927
    #dbg_value(i64 %177, !3788, !DIExpression(), !3927)
    #dbg_value(i64 %166, !3789, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3928)
  br label %for.loop4.outer.i, !dbg !3809

lookup.throw.i57:                                 ; preds = %if.done12
  call fastcc void @runtime.lookupPanic(), !dbg !3798
  unreachable, !dbg !3798

lookup.throw15.i:                                 ; preds = %lookup.next.i58
  call fastcc void @runtime.lookupPanic(), !dbg !3801
  unreachable, !dbg !3801

lookup.throw27.i:                                 ; preds = %cond.true.i63
  call fastcc void @runtime.lookupPanic(), !dbg !3815
  unreachable, !dbg !3815

lookup.throw35.i:                                 ; preds = %cond.true2.i
  call fastcc void @runtime.lookupPanic(), !dbg !3828
  unreachable, !dbg !3828

lookup.throw47.i:                                 ; preds = %lookup.next44.i
  call fastcc void @runtime.lookupPanic(), !dbg !3849
  unreachable, !dbg !3849

lookup.throw63.i:                                 ; preds = %lookup.next60.i
  call fastcc void @runtime.lookupPanic(), !dbg !3864
  unreachable, !dbg !3864

lookup.throw75.i:                                 ; preds = %cond.true5.i
  call fastcc void @runtime.lookupPanic(), !dbg !3872
  unreachable, !dbg !3872

lookup.throw83.i:                                 ; preds = %cond.true8.i
  call fastcc void @runtime.lookupPanic(), !dbg !3890
  unreachable, !dbg !3890

lookup.throw95.i:                                 ; preds = %lookup.next92.i
  call fastcc void @runtime.lookupPanic(), !dbg !3909
  unreachable, !dbg !3909

lookup.throw111.i:                                ; preds = %lookup.next108.i
  call fastcc void @runtime.lookupPanic(), !dbg !3924
  unreachable, !dbg !3924

"slices.partitionOrdered[int].exit":              ; preds = %lookup.next48.i, %lookup.next96.i
  %.not1669.i = phi i1 [ false, %lookup.next96.i ], [ true, %lookup.next48.i ]
  %storemerge.i = phi i64 [ %174, %lookup.next96.i ], [ %156, %lookup.next48.i ], !dbg !3809
  %.pn59.i = phi i64 [ %.lcssa62.i, %lookup.next96.i ], [ %.lcssa70.i, %lookup.next48.i ]
  store i64 %storemerge.i, ptr %8, align 8, !dbg !3809
    #dbg_value(i64 %.pn59.i, !3322, !DIExpression(), !3929)
    #dbg_value(i1 %.not1669.i, !3323, !DIExpression(), !3930)
    #dbg_value(i1 %.not1669.i, !3323, !DIExpression(), !3931)
    #dbg_value(i1 %.not1669.i, !3316, !DIExpression(), !3932)
    #dbg_value(i64 %.pn59.i, !3322, !DIExpression(), !3933)
    #dbg_value(i64 %.ph309, !3312, !DIExpression(), !3934)
  %178 = sub i64 %.pn59.i, %.ph309, !dbg !3935
    #dbg_value(i64 %26, !3313, !DIExpression(), !3936)
    #dbg_value(i64 %.pn59.i, !3322, !DIExpression(), !3937)
  %179 = sub i64 %26, %.pn59.i, !dbg !3938
    #dbg_value(i64 %178, !3324, !DIExpression(), !3939)
    #dbg_value(i64 %179, !3325, !DIExpression(), !3940)
    #dbg_value(i64 %22, !3317, !DIExpression(), !3941)
  %180 = lshr i64 %22, 3, !dbg !3942
    #dbg_value(i64 %180, !3326, !DIExpression(), !3943)
    #dbg_value(i64 %178, !3324, !DIExpression(), !3944)
    #dbg_value(i64 %179, !3325, !DIExpression(), !3945)
  %181 = icmp slt i64 %178, %179, !dbg !3946
  br i1 %181, label %if.then13, label %if.else, !dbg !3346

if.then13:                                        ; preds = %"slices.partitionOrdered[int].exit"
    #dbg_value(i64 %178, !3324, !DIExpression(), !3947)
    #dbg_value(i64 %180, !3326, !DIExpression(), !3948)
  %182 = icmp sge i64 %178, %180, !dbg !3949
    #dbg_value(i1 %182, !3315, !DIExpression(), !3950)
    #dbg_value({ ptr, i64, i64 } poison, !3311, !DIExpression(), !3951)
    #dbg_value(i64 %.ph309, !3312, !DIExpression(), !3952)
    #dbg_value(i64 %.pn59.i, !3322, !DIExpression(), !3953)
    #dbg_value(i64 %40, !3314, !DIExpression(), !3954)
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %data.data, i64 %data.len, i64 %.ph309, i64 %.pn59.i, i64 %40), !dbg !3955
    #dbg_value(i64 %.pn59.i, !3322, !DIExpression(), !3956)
  %183 = add i64 %.pn59.i, 1, !dbg !3957
    #dbg_value(i64 %183, !3312, !DIExpression(), !3958)
  br label %for.body.outer.backedge, !dbg !3346

if.else:                                          ; preds = %"slices.partitionOrdered[int].exit"
    #dbg_value(i64 %179, !3325, !DIExpression(), !3959)
    #dbg_value(i64 %180, !3326, !DIExpression(), !3960)
  %184 = icmp sge i64 %179, %180, !dbg !3961
    #dbg_value(i1 %184, !3315, !DIExpression(), !3962)
    #dbg_value({ ptr, i64, i64 } poison, !3311, !DIExpression(), !3963)
    #dbg_value(i64 %.pn59.i, !3322, !DIExpression(), !3964)
  %185 = add i64 %.pn59.i, 1, !dbg !3965
    #dbg_value(i64 %26, !3313, !DIExpression(), !3966)
    #dbg_value(i64 %40, !3314, !DIExpression(), !3967)
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %data.data, i64 %data.len, i64 %185, i64 %26, i64 %40), !dbg !3968
    #dbg_value(i64 %.pn59.i, !3313, !DIExpression(), !3347)
    #dbg_value(i64 %.ph309, !3312, !DIExpression(), !3348)
  %186 = sub i64 %.pn59.i, %.ph309, !dbg !3344
    #dbg_value(i64 %186, !3317, !DIExpression(), !3969)
  %187 = icmp slt i64 %186, 13, !dbg !3345
  br i1 %187, label %if.then, label %if.done, !dbg !3346

if.then.i73:                                      ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } poison, !3311, !DIExpression(), !3970)
    #dbg_value(i64 %.ph309, !3312, !DIExpression(), !3971)
    #dbg_value(i64 %26, !3313, !DIExpression(), !3972)
    #dbg_value(ptr %data.data, !3973, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3984)
    #dbg_value(i64 %data.len, !3973, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3984)
    #dbg_value(i64 poison, !3973, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3984)
    #dbg_value(i64 %.ph309, !3976, !DIExpression(), !3984)
    #dbg_value(i64 %26, !3977, !DIExpression(), !3984)
    #dbg_value(i64 %26, !3977, !DIExpression(), !3986)
    #dbg_value(i64 %.ph309, !3976, !DIExpression(), !3987)
    #dbg_value(ptr undef, !3988, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3995)
    #dbg_value(ptr undef, !3988, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3995)
    #dbg_value(ptr undef, !3988, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !3995)
    #dbg_value(ptr undef, !3988, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !3995)
    #dbg_value(ptr undef, !3988, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3995)
    #dbg_value(ptr undef, !3988, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !3995)
    #dbg_value(ptr undef, !3988, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !3995)
    #dbg_value(ptr undef, !3988, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !3995)
    #dbg_value(i64 %22, !3978, !DIExpression(), !3997)
    #dbg_value(i64 %22, !3978, !DIExpression(), !3998)
    #dbg_value(i64 %22, !3978, !DIExpression(), !3999)
    #dbg_value(i64 %22, !3979, !DIExpression(), !4000)
    #dbg_value(i64 %22, !3978, !DIExpression(), !4001)
    #dbg_value(i64 %22, !4002, !DIExpression(), !4007)
    #dbg_value(i64 %22, !4002, !DIExpression(), !4009)
    #dbg_value(i64 %22, !4010, !DIExpression(), !4015)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3981, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_shl, DW_OP_stack_value), !4017)
    #dbg_value(i64 %.ph309, !3976, !DIExpression(), !4018)
    #dbg_value(i64 %22, !3978, !DIExpression(), !4019)
  %188 = lshr i64 %22, 1, !dbg !4020
  %189 = and i64 %188, 4611686018427387902, !dbg !4020
  %.reass = add i64 %189, %invariant.op314
    #dbg_value(i64 %.reass, !3982, !DIExpression(), !4021)
  %.reass303 = add i64 %189, %invariant.op302315
    #dbg_value(i64 %.reass, !3982, !DIExpression(), !4022)
    #dbg_value(i64 %.ph309, !3976, !DIExpression(), !4023)
    #dbg_value(i64 %22, !3978, !DIExpression(), !4024)
  %.not37.i = icmp sgt i64 %.reass, %.reass303, !dbg !4025
  br i1 %.not37.i, label %"slices.breakPatternsOrdered[int].exit", label %for.body.lr.ph.i, !dbg !4026

for.body.lr.ph.i:                                 ; preds = %if.then.i73
  %190 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8, -9223372036854775808) %22, i1 true), !dbg !4015
    #dbg_value(!DIArgList(i64 1, i64 64, i64 %190), !3981, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_shl, DW_OP_stack_value), !4017)
  %191 = sub nuw nsw i64 64, %190, !dbg !4015
    #dbg_value(!DIArgList(i64 1, i64 %191), !3981, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !4017)
  %notmask.i = shl nsw i64 -1, %191
  %192 = xor i64 %notmask.i, -1
  br label %for.body.i74, !dbg !4026

for.body.i74:                                     ; preds = %lookup.next6.i, %for.body.lr.ph.i
  %193 = phi i64 [ %.reass, %for.body.lr.ph.i ], [ %207, %lookup.next6.i ]
  %stackalloc.sroa.10.0.in.in38.i = phi i64 [ %22, %for.body.lr.ph.i ], [ %199, %lookup.next6.i ]
    #dbg_value(i64 %193, !3982, !DIExpression(), !4022)
    #dbg_value(ptr undef, !3988, !DIExpression(), !3995)
    #dbg_value(ptr undef, !3988, !DIExpression(), !4027)
    #dbg_value(ptr undef, !3988, !DIExpression(), !4028)
  %194 = shl i64 %stackalloc.sroa.10.0.in.in38.i, 13, !dbg !4029
  %195 = xor i64 %194, %stackalloc.sroa.10.0.in.in38.i, !dbg !4030
    #dbg_value(ptr undef, !3988, !DIExpression(), !4031)
    #dbg_value(ptr undef, !3988, !DIExpression(), !4032)
  %196 = lshr i64 %195, 7, !dbg !4033
  %197 = xor i64 %196, %195, !dbg !4034
    #dbg_value(ptr undef, !3988, !DIExpression(), !4035)
    #dbg_value(ptr undef, !3988, !DIExpression(), !4036)
  %198 = shl i64 %197, 17, !dbg !4037
  %199 = xor i64 %198, %197, !dbg !4038
    #dbg_value(ptr undef, !3988, !DIExpression(), !4039)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3981, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_shl, DW_OP_stack_value), !4040)
  %200 = and i64 %199, %192, !dbg !4041
    #dbg_value(i64 %200, !3983, !DIExpression(), !4042)
    #dbg_value(i64 %200, !3983, !DIExpression(), !4043)
    #dbg_value(i64 %22, !3978, !DIExpression(), !4044)
  %.not5.i75 = icmp slt i64 %200, %22, !dbg !4045
  %201 = select i1 %.not5.i75, i64 0, i64 %22, !dbg !4026
  %spec.select.i = sub nsw i64 %200, %201, !dbg !4026
    #dbg_value({ ptr, i64, i64 } poison, !3973, !DIExpression(), !4046)
    #dbg_value(i64 %193, !3982, !DIExpression(), !4047)
    #dbg_value({ ptr, i64, i64 } poison, !3973, !DIExpression(), !4048)
    #dbg_value(i64 %.ph309, !3976, !DIExpression(), !4049)
    #dbg_value(i64 %spec.select.i, !3983, !DIExpression(), !4050)
  %202 = add i64 %spec.select.i, %.ph309, !dbg !4051
    #dbg_value({ ptr, i64, i64 } poison, !3973, !DIExpression(), !4052)
    #dbg_value(i64 %.ph309, !3976, !DIExpression(), !4053)
    #dbg_value(i64 %spec.select.i, !3983, !DIExpression(), !4054)
  %.not6.i76 = icmp ult i64 %202, %data.len, !dbg !4055
  br i1 %.not6.i76, label %lookup.next.i78, label %lookup.throw.i77, !dbg !4055

lookup.next.i78:                                  ; preds = %for.body.i74
    #dbg_value({ ptr, i64, i64 } poison, !3973, !DIExpression(), !4056)
    #dbg_value(i64 %193, !3982, !DIExpression(), !4057)
  %.not7.i = icmp ult i64 %193, %data.len, !dbg !4058
  br i1 %.not7.i, label %lookup.next6.i, label %lookup.throw5.i, !dbg !4058

lookup.next6.i:                                   ; preds = %lookup.next.i78
  %203 = getelementptr inbounds i64, ptr %data.data, i64 %202, !dbg !4055
  %204 = load i64, ptr %203, align 8, !dbg !4055
  %205 = getelementptr inbounds i64, ptr %data.data, i64 %193, !dbg !4058
  %206 = load i64, ptr %205, align 8, !dbg !4058
  store i64 %204, ptr %205, align 8, !dbg !4059
  store i64 %206, ptr %203, align 8, !dbg !4060
  %207 = add nuw i64 %193, 1, !dbg !4061
    #dbg_value(i64 %207, !3982, !DIExpression(), !4022)
    #dbg_value(i64 %.ph309, !3976, !DIExpression(), !4023)
    #dbg_value(i64 %22, !3978, !DIExpression(), !4024)
  %.not.i79 = icmp sgt i64 %207, %.reass303, !dbg !4025
  br i1 %.not.i79, label %"slices.breakPatternsOrdered[int].exit", label %for.body.i74, !dbg !4026

lookup.throw.i77:                                 ; preds = %for.body.i74
  call fastcc void @runtime.lookupPanic(), !dbg !4055
  unreachable, !dbg !4055

lookup.throw5.i:                                  ; preds = %lookup.next.i78
  call fastcc void @runtime.lookupPanic(), !dbg !4058
  unreachable, !dbg !4058

"slices.breakPatternsOrdered[int].exit":          ; preds = %lookup.next6.i, %if.then.i73
  %208 = add nsw i64 %25, -1, !dbg !4062
    #dbg_value(i64 %208, !3314, !DIExpression(), !4062)
  br label %if.done3, !dbg !3346

lookup.throw:                                     ; preds = %cond.true10
  call fastcc void @runtime.lookupPanic(), !dbg !3691
  unreachable, !dbg !3691

lookup.throw17:                                   ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3694
  unreachable, !dbg !3694
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc i64 @"slices.medianOrdered[int]"(ptr nocapture readonly %data.data, i64 %data.len, i64 %a, i64 %b, i64 %c, ptr nocapture nonnull dereferenceable_or_null(8) %swaps) unnamed_addr #5 !dbg !4063 {
entry:
    #dbg_value(ptr %data.data, !4067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4072)
    #dbg_value(i64 %data.len, !4067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4072)
    #dbg_value(i64 poison, !4067, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4072)
    #dbg_value(i64 %a, !4068, !DIExpression(), !4072)
    #dbg_value(i64 %b, !4069, !DIExpression(), !4072)
    #dbg_value(i64 %c, !4070, !DIExpression(), !4072)
    #dbg_value(ptr %swaps, !4071, !DIExpression(), !4072)
    #dbg_value({ ptr, i64, i64 } poison, !4067, !DIExpression(), !4073)
    #dbg_value(i64 %a, !4068, !DIExpression(), !4074)
    #dbg_value(i64 %b, !4069, !DIExpression(), !4075)
    #dbg_value(ptr %swaps, !4071, !DIExpression(), !4076)
    #dbg_value(ptr %data.data, !4077, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4085)
    #dbg_value(i64 %data.len, !4077, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4085)
    #dbg_value(i64 poison, !4077, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4085)
    #dbg_value(i64 %a, !4082, !DIExpression(), !4085)
    #dbg_value(i64 %b, !4083, !DIExpression(), !4085)
    #dbg_value(ptr %swaps, !4084, !DIExpression(), !4085)
    #dbg_value({ ptr, i64, i64 } poison, !4077, !DIExpression(), !4087)
    #dbg_value(i64 %b, !4083, !DIExpression(), !4088)
  %.not.i = icmp ult i64 %b, %data.len, !dbg !4089
  br i1 %.not.i, label %lookup.next.i, label %lookup.throw.i, !dbg !4089

lookup.next.i:                                    ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !4077, !DIExpression(), !4087)
    #dbg_value({ ptr, i64, i64 } poison, !4077, !DIExpression(), !4090)
    #dbg_value(i64 %a, !4082, !DIExpression(), !4091)
  %.not1.i = icmp ult i64 %a, %data.len, !dbg !4092
  br i1 %.not1.i, label %lookup.next4.i, label %lookup.throw3.i, !dbg !4092

lookup.next4.i:                                   ; preds = %lookup.next.i
  %0 = getelementptr inbounds i64, ptr %data.data, i64 %b, !dbg !4089
  %1 = load i64, ptr %0, align 8, !dbg !4089
  %2 = getelementptr inbounds i64, ptr %data.data, i64 %a, !dbg !4092
  %3 = load i64, ptr %2, align 8, !dbg !4092
    #dbg_value(i64 %1, !3377, !DIExpression(), !4093)
    #dbg_value(i64 %3, !3383, !DIExpression(), !4093)
    #dbg_value(i64 %1, !3377, !DIExpression(), !4095)
    #dbg_value(i64 %1, !3377, !DIExpression(), !4096)
    #dbg_value(i64 %3, !3383, !DIExpression(), !4097)
  %4 = icmp slt i64 %1, %3, !dbg !4098
  br i1 %4, label %store.next.i, label %"slices.order2Ordered[int].exit", !dbg !4099

store.next.i:                                     ; preds = %lookup.next4.i
    #dbg_value(ptr %swaps, !4084, !DIExpression(), !4100)
  %5 = load i64, ptr %swaps, align 8, !dbg !4101
  %6 = add i64 %5, 1, !dbg !4101
  store i64 %6, ptr %swaps, align 8, !dbg !4101
    #dbg_value(i64 %b, !4083, !DIExpression(), !4102)
    #dbg_value(i64 %a, !4082, !DIExpression(), !4103)
  br label %"slices.order2Ordered[int].exit", !dbg !4104

lookup.throw.i:                                   ; preds = %entry
  call fastcc void @runtime.lookupPanic(), !dbg !4089
  unreachable, !dbg !4089

lookup.throw3.i:                                  ; preds = %lookup.next.i
  call fastcc void @runtime.lookupPanic(), !dbg !4092
  unreachable, !dbg !4092

"slices.order2Ordered[int].exit":                 ; preds = %lookup.next4.i, %store.next.i
  %b.pn.i = phi i64 [ %b, %store.next.i ], [ %a, %lookup.next4.i ]
  %a.pn.i = phi i64 [ %a, %store.next.i ], [ %b, %lookup.next4.i ]
    #dbg_value(i64 %b.pn.i, !4068, !DIExpression(), !4105)
    #dbg_value(i64 %a.pn.i, !4069, !DIExpression(), !4106)
    #dbg_value({ ptr, i64, i64 } poison, !4067, !DIExpression(), !4107)
    #dbg_value(i64 %a.pn.i, !4069, !DIExpression(), !4108)
    #dbg_value(i64 %c, !4070, !DIExpression(), !4109)
    #dbg_value(ptr %swaps, !4071, !DIExpression(), !4110)
    #dbg_value(ptr %data.data, !4077, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4111)
    #dbg_value(i64 %data.len, !4077, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4111)
    #dbg_value(i64 poison, !4077, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4111)
    #dbg_value(i64 %a.pn.i, !4082, !DIExpression(), !4111)
    #dbg_value(i64 %c, !4083, !DIExpression(), !4111)
    #dbg_value(ptr %swaps, !4084, !DIExpression(), !4111)
    #dbg_value({ ptr, i64, i64 } poison, !4077, !DIExpression(), !4113)
    #dbg_value(i64 %c, !4083, !DIExpression(), !4114)
  %.not.i1 = icmp ult i64 %c, %data.len, !dbg !4115
  br i1 %.not.i1, label %lookup.next.i3, label %lookup.throw.i2, !dbg !4115

lookup.next.i3:                                   ; preds = %"slices.order2Ordered[int].exit"
    #dbg_value({ ptr, i64, i64 } poison, !4077, !DIExpression(), !4113)
    #dbg_value({ ptr, i64, i64 } poison, !4077, !DIExpression(), !4116)
    #dbg_value(i64 %a.pn.i, !4082, !DIExpression(), !4117)
  %.not1.i4 = icmp ult i64 %a.pn.i, %data.len, !dbg !4118
  br i1 %.not1.i4, label %lookup.next4.i6, label %lookup.throw3.i5, !dbg !4118

lookup.next4.i6:                                  ; preds = %lookup.next.i3
  %7 = getelementptr inbounds i64, ptr %data.data, i64 %c, !dbg !4115
  %8 = load i64, ptr %7, align 8, !dbg !4115
  %9 = getelementptr inbounds i64, ptr %data.data, i64 %a.pn.i, !dbg !4118
  %10 = load i64, ptr %9, align 8, !dbg !4118
    #dbg_value(i64 %8, !3377, !DIExpression(), !4119)
    #dbg_value(i64 %10, !3383, !DIExpression(), !4119)
    #dbg_value(i64 %8, !3377, !DIExpression(), !4121)
    #dbg_value(i64 %8, !3377, !DIExpression(), !4122)
    #dbg_value(i64 %10, !3383, !DIExpression(), !4123)
  %11 = icmp slt i64 %8, %10, !dbg !4124
  br i1 %11, label %store.next.i11, label %"slices.order2Ordered[int].exit12", !dbg !4125

store.next.i11:                                   ; preds = %lookup.next4.i6
    #dbg_value(ptr %swaps, !4084, !DIExpression(), !4126)
  %12 = load i64, ptr %swaps, align 8, !dbg !4127
  %13 = add i64 %12, 1, !dbg !4127
  store i64 %13, ptr %swaps, align 8, !dbg !4127
    #dbg_value(i64 %c, !4083, !DIExpression(), !4128)
    #dbg_value(i64 %a.pn.i, !4082, !DIExpression(), !4129)
  br label %"slices.order2Ordered[int].exit12", !dbg !4130

lookup.throw.i2:                                  ; preds = %"slices.order2Ordered[int].exit"
  call fastcc void @runtime.lookupPanic(), !dbg !4115
  unreachable, !dbg !4115

lookup.throw3.i5:                                 ; preds = %lookup.next.i3
  call fastcc void @runtime.lookupPanic(), !dbg !4118
  unreachable, !dbg !4118

"slices.order2Ordered[int].exit12":               ; preds = %lookup.next4.i6, %store.next.i11
  %b.pn.i7 = phi i64 [ %c, %store.next.i11 ], [ %a.pn.i, %lookup.next4.i6 ]
    #dbg_value(i64 %b.pn.i7, !4069, !DIExpression(), !4131)
    #dbg_value(i64 poison, !4070, !DIExpression(), !4132)
    #dbg_value({ ptr, i64, i64 } poison, !4067, !DIExpression(), !4133)
    #dbg_value(i64 %b.pn.i, !4068, !DIExpression(), !4134)
    #dbg_value(i64 %b.pn.i7, !4069, !DIExpression(), !4135)
    #dbg_value(ptr %swaps, !4071, !DIExpression(), !4136)
    #dbg_value(ptr %data.data, !4077, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4137)
    #dbg_value(i64 %data.len, !4077, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4137)
    #dbg_value(i64 poison, !4077, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4137)
    #dbg_value(i64 %b.pn.i, !4082, !DIExpression(), !4137)
    #dbg_value(i64 %b.pn.i7, !4083, !DIExpression(), !4137)
    #dbg_value(ptr %swaps, !4084, !DIExpression(), !4137)
    #dbg_value({ ptr, i64, i64 } poison, !4077, !DIExpression(), !4139)
    #dbg_value(i64 %b.pn.i7, !4083, !DIExpression(), !4140)
  %.not.i13 = icmp ult i64 %b.pn.i7, %data.len, !dbg !4141
  br i1 %.not.i13, label %lookup.next.i15, label %lookup.throw.i14, !dbg !4141

lookup.next.i15:                                  ; preds = %"slices.order2Ordered[int].exit12"
    #dbg_value({ ptr, i64, i64 } poison, !4077, !DIExpression(), !4139)
    #dbg_value({ ptr, i64, i64 } poison, !4077, !DIExpression(), !4142)
    #dbg_value(i64 %b.pn.i, !4082, !DIExpression(), !4143)
  %.not1.i16 = icmp ult i64 %b.pn.i, %data.len, !dbg !4144
  br i1 %.not1.i16, label %lookup.next4.i18, label %lookup.throw3.i17, !dbg !4144

lookup.next4.i18:                                 ; preds = %lookup.next.i15
  %14 = getelementptr inbounds i64, ptr %data.data, i64 %b.pn.i7, !dbg !4141
  %15 = load i64, ptr %14, align 8, !dbg !4141
  %16 = getelementptr inbounds i64, ptr %data.data, i64 %b.pn.i, !dbg !4144
  %17 = load i64, ptr %16, align 8, !dbg !4144
    #dbg_value(i64 %15, !3377, !DIExpression(), !4145)
    #dbg_value(i64 %17, !3383, !DIExpression(), !4145)
    #dbg_value(i64 %15, !3377, !DIExpression(), !4147)
    #dbg_value(i64 %15, !3377, !DIExpression(), !4148)
    #dbg_value(i64 %17, !3383, !DIExpression(), !4149)
  %18 = icmp slt i64 %15, %17, !dbg !4150
  br i1 %18, label %store.next.i23, label %"slices.order2Ordered[int].exit24", !dbg !4151

store.next.i23:                                   ; preds = %lookup.next4.i18
    #dbg_value(ptr %swaps, !4084, !DIExpression(), !4152)
  %19 = load i64, ptr %swaps, align 8, !dbg !4153
  %20 = add i64 %19, 1, !dbg !4153
  store i64 %20, ptr %swaps, align 8, !dbg !4153
    #dbg_value(i64 %b.pn.i7, !4083, !DIExpression(), !4154)
    #dbg_value(i64 %b.pn.i, !4082, !DIExpression(), !4155)
  br label %"slices.order2Ordered[int].exit24", !dbg !4156

lookup.throw.i14:                                 ; preds = %"slices.order2Ordered[int].exit12"
  call fastcc void @runtime.lookupPanic(), !dbg !4141
  unreachable, !dbg !4141

lookup.throw3.i17:                                ; preds = %lookup.next.i15
  call fastcc void @runtime.lookupPanic(), !dbg !4144
  unreachable, !dbg !4144

"slices.order2Ordered[int].exit24":               ; preds = %lookup.next4.i18, %store.next.i23
  %a.pn.i20 = phi i64 [ %b.pn.i, %store.next.i23 ], [ %b.pn.i7, %lookup.next4.i18 ]
    #dbg_value(i64 poison, !4068, !DIExpression(), !4157)
    #dbg_value(i64 %a.pn.i20, !4069, !DIExpression(), !4158)
    #dbg_value(i64 %a.pn.i20, !4069, !DIExpression(), !4159)
  ret i64 %a.pn.i20, !dbg !4160
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @"slices.siftDownOrdered[int]"(ptr nocapture %data.data, i64 %data.len, i64 range(i64 0, 4611686018427387904) %lo, i64 %hi, i64 %first) unnamed_addr #5 !dbg !4161 {
entry:
    #dbg_value(ptr %data.data, !4163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4169)
    #dbg_value(i64 %data.len, !4163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4169)
    #dbg_value(i64 poison, !4163, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4169)
    #dbg_value(i64 %lo, !4164, !DIExpression(), !4169)
    #dbg_value(i64 %hi, !4165, !DIExpression(), !4169)
    #dbg_value(i64 %first, !4166, !DIExpression(), !4169)
    #dbg_value(i64 %lo, !4164, !DIExpression(), !4170)
    #dbg_value(i64 %lo, !4167, !DIExpression(), !4171)
  %0 = shl nuw nsw i64 %lo, 1, !dbg !4172
  %1 = or disjoint i64 %0, 1, !dbg !4173
  %.not30 = icmp slt i64 %1, %hi, !dbg !4174
  br i1 %.not30, label %if.done, label %common.ret, !dbg !4175

common.ret:                                       ; preds = %lookup.next28, %lookup.next16, %entry
  ret void, !dbg !4175

if.done:                                          ; preds = %entry, %lookup.next28
  %2 = phi i64 [ %23, %lookup.next28 ], [ %1, %entry ]
  %3 = phi i64 [ %22, %lookup.next28 ], [ %0, %entry ]
  %4 = phi i64 [ %14, %lookup.next28 ], [ %lo, %entry ]
    #dbg_value(i64 %4, !4167, !DIExpression(), !4176)
    #dbg_value(i64 %2, !4168, !DIExpression(), !4177)
  %5 = add i64 %3, 2, !dbg !4178
    #dbg_value(i64 %hi, !4165, !DIExpression(), !4179)
  %6 = icmp slt i64 %5, %hi, !dbg !4180
  br i1 %6, label %cond.true, label %if.done2, !dbg !4175

cond.true:                                        ; preds = %if.done
    #dbg_value({ ptr, i64, i64 } poison, !4163, !DIExpression(), !4181)
    #dbg_value(i64 %first, !4166, !DIExpression(), !4182)
    #dbg_value(i64 %2, !4168, !DIExpression(), !4183)
  %7 = add i64 %2, %first, !dbg !4184
  %.not9 = icmp ult i64 %7, %data.len, !dbg !4185
  br i1 %.not9, label %lookup.next, label %lookup.throw, !dbg !4185

lookup.next:                                      ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } poison, !4163, !DIExpression(), !4186)
    #dbg_value(i64 %first, !4166, !DIExpression(), !4187)
    #dbg_value(i64 %2, !4168, !DIExpression(), !4188)
  %8 = add i64 %7, 1, !dbg !4189
  %.not10 = icmp ult i64 %8, %data.len, !dbg !4190
  br i1 %.not10, label %lookup.next8, label %lookup.throw7, !dbg !4190

lookup.next8:                                     ; preds = %lookup.next
  %9 = getelementptr inbounds i64, ptr %data.data, i64 %7, !dbg !4185
  %10 = load i64, ptr %9, align 8, !dbg !4185
  %11 = getelementptr inbounds i64, ptr %data.data, i64 %8, !dbg !4190
  %12 = load i64, ptr %11, align 8, !dbg !4190
    #dbg_value(i64 %10, !3377, !DIExpression(), !4191)
    #dbg_value(i64 %12, !3383, !DIExpression(), !4191)
    #dbg_value(i64 %10, !3377, !DIExpression(), !4193)
    #dbg_value(i64 %10, !3377, !DIExpression(), !4194)
    #dbg_value(i64 %12, !3383, !DIExpression(), !4195)
  %13 = icmp slt i64 %10, %12, !dbg !4196
  %spec.select = select i1 %13, i64 %5, i64 %2, !dbg !4175
  br label %if.done2, !dbg !4175

if.done2:                                         ; preds = %lookup.next8, %if.done
  %14 = phi i64 [ %2, %if.done ], [ %spec.select, %lookup.next8 ], !dbg !4197
    #dbg_value({ ptr, i64, i64 } poison, !4163, !DIExpression(), !4198)
    #dbg_value(i64 %first, !4166, !DIExpression(), !4199)
    #dbg_value(i64 %4, !4167, !DIExpression(), !4200)
  %15 = add i64 %4, %first, !dbg !4201
  %.not11 = icmp ult i64 %15, %data.len, !dbg !4202
  br i1 %.not11, label %lookup.next12, label %lookup.throw11, !dbg !4202

lookup.next12:                                    ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } poison, !4163, !DIExpression(), !4203)
    #dbg_value(i64 %first, !4166, !DIExpression(), !4204)
    #dbg_value(i64 %14, !4168, !DIExpression(), !4205)
  %16 = add i64 %14, %first, !dbg !4206
  %.not12 = icmp ult i64 %16, %data.len, !dbg !4207
  br i1 %.not12, label %lookup.next16, label %lookup.throw15, !dbg !4207

lookup.next16:                                    ; preds = %lookup.next12
  %17 = getelementptr inbounds i64, ptr %data.data, i64 %15, !dbg !4202
  %18 = load i64, ptr %17, align 8, !dbg !4202
  %19 = getelementptr inbounds i64, ptr %data.data, i64 %16, !dbg !4207
  %20 = load i64, ptr %19, align 8, !dbg !4207
    #dbg_value(i64 %18, !3377, !DIExpression(), !4208)
    #dbg_value(i64 %20, !3383, !DIExpression(), !4208)
    #dbg_value(i64 %18, !3377, !DIExpression(), !4210)
    #dbg_value(i64 %18, !3377, !DIExpression(), !4211)
    #dbg_value(i64 %20, !3383, !DIExpression(), !4212)
  %21 = icmp slt i64 %18, %20, !dbg !4213
  br i1 %21, label %lookup.next28, label %common.ret, !dbg !4175

lookup.next28:                                    ; preds = %lookup.next16
    #dbg_value(i64 %14, !4168, !DIExpression(), !4214)
    #dbg_value({ ptr, i64, i64 } poison, !4163, !DIExpression(), !4215)
    #dbg_value(i64 %first, !4166, !DIExpression(), !4216)
    #dbg_value(i64 poison, !4167, !DIExpression(), !4217)
  store i64 %20, ptr %17, align 8, !dbg !4218
  store i64 %18, ptr %19, align 8, !dbg !4219
    #dbg_value(i64 %14, !4167, !DIExpression(), !4176)
  %22 = shl i64 %14, 1, !dbg !4172
  %23 = or disjoint i64 %22, 1, !dbg !4173
    #dbg_value(i64 %23, !4168, !DIExpression(), !4220)
    #dbg_value(i64 %hi, !4165, !DIExpression(), !4221)
  %.not = icmp slt i64 %23, %hi, !dbg !4174
  br i1 %.not, label %if.done, label %common.ret, !dbg !4175

lookup.throw:                                     ; preds = %cond.true
  call fastcc void @runtime.lookupPanic(), !dbg !4185
  unreachable, !dbg !4185

lookup.throw7:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !4190
  unreachable, !dbg !4190

lookup.throw11:                                   ; preds = %if.done2
  call fastcc void @runtime.lookupPanic(), !dbg !4202
  unreachable, !dbg !4202

lookup.throw15:                                   ; preds = %lookup.next12
  call fastcc void @runtime.lookupPanic(), !dbg !4207
  unreachable, !dbg !4207
}

; Function Attrs: nofree nounwind uwtable(sync)
define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, i64 %n) local_unnamed_addr #5 !dbg !4222 {
entry:
    #dbg_value(ptr %a.data, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4232)
    #dbg_value(i64 %a.len, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4232)
    #dbg_value(i64 %a.cap, !4227, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4232)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4232)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4233)
    #dbg_value(ptr %a.data, !4234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4239)
    #dbg_value(i64 %a.len, !4234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4239)
    #dbg_value(i64 %a.cap, !4234, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4239)
    #dbg_value({ ptr, i64, i64 } poison, !4234, !DIExpression(), !4241)
    #dbg_value(ptr %a.data, !4242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4246)
    #dbg_value(i64 %a.len, !4242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4246)
    #dbg_value(i64 %a.cap, !4242, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4246)
    #dbg_value({ ptr, i64, i64 } poison, !4242, !DIExpression(), !4248)
    #dbg_value(i64 %a.len, !4245, !DIExpression(), !4249)
    #dbg_value({ ptr, i64, i64 } poison, !4242, !DIExpression(), !4250)
    #dbg_value(i64 %a.len, !4245, !DIExpression(), !4251)
    #dbg_value(i64 %a.len, !4245, !DIExpression(), !4252)
    #dbg_value(i64 %a.len, !4010, !DIExpression(), !4253)
  %n.fr = freeze i64 %n, !dbg !4255
  %0 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %a.len, i1 false), !dbg !4253
  %1 = sub nuw nsw i64 64, %0, !dbg !4253
  call fastcc void @"slices.pdqsortOrdered[int]"(ptr %a.data, i64 %a.len, i64 0, i64 %a.len, i64 %1), !dbg !4256
    #dbg_value(i64 1, !4229, !DIExpression(), !4257)
    #dbg_value(i64 0, !4230, !DIExpression(), !4258)
    #dbg_value(i64 1, !4231, !DIExpression(), !4259)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4260)
  %2 = icmp sgt i64 %n.fr, 1, !dbg !4261
  br i1 %2, label %for.body.preheader, label %for.done, !dbg !4262

for.body.preheader:                               ; preds = %entry
  %3 = call i64 @llvm.usub.sat.i64(i64 %a.len, i64 1), !dbg !4255
  %4 = add nsw i64 %n.fr, -2, !dbg !4255
  %.not.not = icmp ugt i64 %3, %4, !dbg !4255
  br label %for.body, !dbg !4255

for.body:                                         ; preds = %for.body.preheader, %if.done
  %5 = phi i64 [ %17, %if.done ], [ 1, %for.body.preheader ]
  %6 = phi i64 [ %16, %if.done ], [ 0, %for.body.preheader ]
  %7 = phi i64 [ %15, %if.done ], [ 1, %for.body.preheader ]
    #dbg_value(i64 %5, !4231, !DIExpression(), !4263)
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4264)
    #dbg_value(i64 %5, !4231, !DIExpression(), !4265)
  br i1 %.not.not, label %lookup.next4, label %lookup.throw, !dbg !4255

lookup.next4:                                     ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !4227, !DIExpression(), !4266)
    #dbg_value(i64 %5, !4231, !DIExpression(), !4267)
  %8 = getelementptr inbounds nuw i64, ptr %a.data, i64 %5, !dbg !4255
  %9 = load i64, ptr %8, align 8, !dbg !4255
  %10 = getelementptr i64, ptr %a.data, i64 %5, !dbg !4268
  %11 = getelementptr i8, ptr %10, i64 -8, !dbg !4268
  %12 = load i64, ptr %11, align 8, !dbg !4268
  %13 = icmp eq i64 %9, %12, !dbg !4269
  br i1 %13, label %if.then, label %if.else, !dbg !4262

if.then:                                          ; preds = %lookup.next4
  %14 = add i64 %7, 1, !dbg !4270
    #dbg_value(i64 %14, !4229, !DIExpression(), !4270)
  br label %if.done, !dbg !4262

if.done:                                          ; preds = %if.else, %if.then
  %15 = phi i64 [ %14, %if.then ], [ 1, %if.else ], !dbg !4257
  %16 = phi i64 [ %6, %if.then ], [ %21, %if.else ], !dbg !4258
  %17 = add nuw nsw i64 %5, 1, !dbg !4271
    #dbg_value(i64 %17, !4231, !DIExpression(), !4263)
    #dbg_value(i64 %n, !4228, !DIExpression(), !4260)
  %exitcond.not = icmp eq i64 %17, %n.fr, !dbg !4261
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4262

if.else:                                          ; preds = %lookup.next4
    #dbg_value(i64 %6, !4230, !DIExpression(), !4272)
    #dbg_value(i64 %7, !4229, !DIExpression(), !4273)
    #dbg_value(i64 %7, !4229, !DIExpression(), !4274)
  %18 = add i64 %7, -1, !dbg !4275
  %19 = mul i64 %18, %7, !dbg !4276
  %20 = sdiv i64 %19, 2, !dbg !4277
  %21 = add i64 %20, %6, !dbg !4278
    #dbg_value(i64 %21, !4230, !DIExpression(), !4279)
    #dbg_value(i64 1, !4229, !DIExpression(), !4280)
  br label %if.done, !dbg !4262

for.done:                                         ; preds = %if.done, %entry
  %.lcssa7 = phi i64 [ 1, %entry ], [ %15, %if.done ], !dbg !4257
  %.lcssa = phi i64 [ 0, %entry ], [ %16, %if.done ], !dbg !4258
    #dbg_value(i64 %.lcssa, !4230, !DIExpression(), !4281)
    #dbg_value(i64 %.lcssa7, !4229, !DIExpression(), !4282)
    #dbg_value(i64 %.lcssa7, !4229, !DIExpression(), !4283)
  %22 = add i64 %.lcssa7, -1, !dbg !4284
  %23 = mul i64 %22, %.lcssa7, !dbg !4285
  %24 = sdiv i64 %23, 2, !dbg !4286
  %25 = add i64 %24, %.lcssa, !dbg !4287
    #dbg_value(i64 %25, !4230, !DIExpression(), !4288)
    #dbg_value(i64 %25, !4230, !DIExpression(), !4289)
  ret i64 %25, !dbg !4290

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !4255
  unreachable, !dbg !4255
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

attributes #0 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { cold nofree noreturn nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nofree nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #6 = { cold nofree noreturn "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #7 = { nofree "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #9 = { noreturn nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #11 = { noinline nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }

!llvm.dbg.cu = !{!143, !145, !146, !168, !442, !461, !658, !674, !1415, !1416, !1417, !1418, !1450, !1451, !1462, !1495, !1496, !1734, !1743, !1744, !1924}
!llvm.ident = !{!1925, !1925, !1925, !1925, !1925, !1925, !1925, !1925, !1925, !1925, !1925, !1925, !1925, !1925, !1925, !1925, !1925, !1925, !1925, !1925, !1925}
!llvm.module.flags = !{!1926, !1927}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "internal/task.activeTasks", linkageName: "internal/task.activeTasks", scope: !2, file: !2, line: 45, type: !3, isLocal: false, isDefinition: true, align: 64)
!2 = !DIFile(filename: "task_threads.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64, dwarfAddressSpace: 0)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !5)
!5 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !6)
!6 = !{!7, !8, !10, !12, !16, !44, !46, !48, !49}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !3, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "Ptr", baseType: !9, size: 64, align: 64, offset: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe.Pointer", baseType: null, size: 64, align: 64, dwarfAddressSpace: 0)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "Data", baseType: !11, size: 64, align: 64, offset: 128)
!11 = !DIBasicType(name: "uint64", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "gcData", baseType: !13, align: 8, offset: 192)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.gcData", baseType: !14)
!14 = !DICompositeType(tag: DW_TAG_structure_type, align: 8, elements: !15)
!15 = !{}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !17, size: 384, align: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !18)
!18 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !19)
!19 = !{!20, !22, !24, !25, !26, !27}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "id", baseType: !21, size: 64, align: 64)
!21 = !DIBasicType(name: "uintptr", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "thread", baseType: !23, size: 64, align: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.threadID", baseType: !9)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "stackTop", baseType: !21, size: 64, align: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "stackBottom", baseType: !21, size: 64, align: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !3, size: 64, align: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "pauseSem", baseType: !28, size: 32, align: 32, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Semaphore", baseType: !29)
!29 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "futex", baseType: !32, size: 32, align: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Futex", baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/futex.Futex", baseType: !34)
!34 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !35)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "Uint32", baseType: !37, size: 32, align: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Uint32", baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !39)
!39 = !{!40, !42}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !41, align: 8)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.noCopy", baseType: !14)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !43, size: 32, align: 32)
!43 = !DIBasicType(name: "uint32", size: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "FipsIndicator", baseType: !45, size: 8, align: 8, offset: 576)
!45 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "FipsOnlyBypass", baseType: !47, size: 8, align: 8, offset: 584)
!47 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "RunState", baseType: !45, size: 8, align: 8, offset: 592)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "DeferFrame", baseType: !9, size: 64, align: 64, offset: 640)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "internal/task.mainTask", linkageName: "internal/task.mainTask", scope: !2, file: !2, line: 42, type: !4, isLocal: false, isDefinition: true, align: 64)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !54, line: 1, type: !55, isLocal: true, isDefinition: true)
!54 = !DIFile(filename: "mutex-preemptive.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 240, align: 8, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 30, lowerBound: 0)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "internal/task.numCPU", linkageName: "internal/task.numCPU", scope: !2, file: !2, line: 40, type: !60, isLocal: false, isDefinition: true, align: 32)
!60 = !DIBasicType(name: "int32", size: 32, encoding: DW_ATE_signed)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "internal/task.activeTaskLock", linkageName: "internal/task.activeTaskLock", scope: !2, file: !2, line: 46, type: !63, isLocal: false, isDefinition: true, align: 32)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.PMutex", baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Mutex", baseType: !29)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, align: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 20, lowerBound: 0)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "internal/task.otherGoroutines", linkageName: "internal/task.otherGoroutines", scope: !2, file: !2, line: 99, type: !43, isLocal: false, isDefinition: true, align: 32)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 136, align: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 17, lowerBound: 0)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "internal/task.scanWaitGroup", linkageName: "internal/task.scanWaitGroup", scope: !2, file: !2, line: 151, type: !79, isLocal: false, isDefinition: true, align: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.waitGroup", baseType: !80)
!80 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !32, size: 32, align: 32)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "internal/task.gcState", linkageName: "internal/task.gcState", scope: !2, file: !2, line: 180, type: !32, isLocal: false, isDefinition: true, align: 32)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !87, line: 78, type: !88, isLocal: true, isDefinition: true)
!87 = !DIFile(filename: "panic.go", directory: "/usr/local/lib/tinygo/src/runtime")
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 56, align: 8, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 7, lowerBound: 0)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !87, line: 99, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 192, align: 8, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 24, lowerBound: 0)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !87, line: 101, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 16, align: 8, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 2, lowerBound: 0)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !87, line: 184, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 184, align: 8, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 23, lowerBound: 0)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !87, line: 194, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 144, align: 8, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 18, lowerBound: 0)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "runtime.stackTop", linkageName: "runtime.stackTop", scope: !113, file: !113, line: 75, type: !21, isLocal: false, isDefinition: true, align: 64)
!113 = !DIFile(filename: "runtime_unix.go", directory: "/usr/local/lib/tinygo/src/runtime")
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "runtime.main_argv", linkageName: "runtime.main_argv", scope: !113, file: !113, line: 106, type: !116, isLocal: false, isDefinition: true, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64, dwarfAddressSpace: 0)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !113, line: 155, type: !93, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !113, line: 158, type: !67, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "runtime.signalFutex", linkageName: "runtime.signalFutex", scope: !113, file: !113, line: 354, type: !33, isLocal: false, isDefinition: true, align: 32)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "runtime.receivedSignals", linkageName: "runtime.receivedSignals", scope: !113, file: !113, line: 358, type: !37, isLocal: false, isDefinition: true, align: 32)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "runtime.printLock", linkageName: "runtime.printLock", scope: !127, file: !127, line: 136, type: !64, isLocal: false, isDefinition: true, align: 32)
!127 = !DIFile(filename: "scheduler_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "type string", scope: !130, file: !130, line: 1, type: !131, isLocal: false, isDefinition: true, align: 64)
!130 = !DIFile(filename: "<Go type>", directory: "")
!131 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !132)
!132 = !{!133, !135}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !134, size: 8, align: 8)
!134 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !9, size: 64, align: 64, offset: 64)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "type *string", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!138 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !139)
!139 = !{!133, !140, !142}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !141, size: 16, align: 16, offset: 16)
!141 = !DIBasicType(name: "uint16", size: 16, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !9, size: 64, align: 64, offset: 64)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!144 = !DIFile(filename: "<unknown>", directory: "")
!145 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !147)
!147 = !{!148, !154, !156, !161, !166}
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !150, line: 12, type: !151, isLocal: true, isDefinition: true)
!150 = !DIFile(filename: "itoa.go", directory: "/usr/local/lib/tinygo/src/internal/itoa")
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, align: 8, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 1, lowerBound: 0)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !150, line: 20, type: !151, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !150, line: 40, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 24, align: 8, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 3, lowerBound: 0)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !150, line: 46, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, align: 8, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 16, lowerBound: 0)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !150, line: 51, type: !163, isLocal: true, isDefinition: true)
!168 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !169)
!169 = !{!170, !173, !222, !230, !245, !255, !261, !270, !296, !303, !309, !329, !334, !339, !341, !343, !345, !347, !349, !351, !353, !358, !360, !365, !367, !370, !372, !374, !376, !378, !383, !388, !390, !395, !397, !399, !404, !406, !408, !410, !412, !414, !416, !418, !420, !425, !427, !429, !431, !136, !128, !437}
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "internal/cpu.CacheLineSize", linkageName: "internal/cpu.CacheLineSize", scope: !172, file: !172, line: 17, type: !21, isLocal: false, isDefinition: true, align: 64)
!172 = !DIFile(filename: "cpu.go", directory: "/usr/local/go/src/internal/cpu")
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !172, file: !172, line: 23, type: !175, isLocal: false, isDefinition: true, align: 8)
!175 = !DICompositeType(tag: DW_TAG_structure_type, size: 1304, align: 8, elements: !176)
!176 = !{!177, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !178, size: 512, align: 8)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.CacheLinePad", baseType: !179)
!179 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 8, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !182, size: 512, align: 8)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 512, align: 8, elements: !184)
!183 = !DIBasicType(name: "byte", size: 8, encoding: DW_ATE_unsigned)
!184 = !{!185}
!185 = !DISubrange(count: 64, lowerBound: 0)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !47, size: 8, align: 8, offset: 512)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "HasADX", baseType: !47, size: 8, align: 8, offset: 520)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX", baseType: !47, size: 8, align: 8, offset: 528)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVXVNNI", baseType: !47, size: 8, align: 8, offset: 536)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX2", baseType: !47, size: 8, align: 8, offset: 544)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512", baseType: !47, size: 8, align: 8, offset: 552)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512F", baseType: !47, size: 8, align: 8, offset: 560)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512CD", baseType: !47, size: 8, align: 8, offset: 568)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BW", baseType: !47, size: 8, align: 8, offset: 576)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512DQ", baseType: !47, size: 8, align: 8, offset: 584)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VL", baseType: !47, size: 8, align: 8, offset: 592)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512GFNI", baseType: !47, size: 8, align: 8, offset: 600)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VAES", baseType: !47, size: 8, align: 8, offset: 608)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VNNI", baseType: !47, size: 8, align: 8, offset: 616)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI", baseType: !47, size: 8, align: 8, offset: 624)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI2", baseType: !47, size: 8, align: 8, offset: 632)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BITALG", baseType: !47, size: 8, align: 8, offset: 640)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPOPCNTDQ", baseType: !47, size: 8, align: 8, offset: 648)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPCLMULQDQ", baseType: !47, size: 8, align: 8, offset: 656)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI1", baseType: !47, size: 8, align: 8, offset: 664)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI2", baseType: !47, size: 8, align: 8, offset: 672)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "HasERMS", baseType: !47, size: 8, align: 8, offset: 680)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "HasFSRM", baseType: !47, size: 8, align: 8, offset: 688)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "HasFMA", baseType: !47, size: 8, align: 8, offset: 696)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "HasGFNI", baseType: !47, size: 8, align: 8, offset: 704)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "HasOSXSAVE", baseType: !47, size: 8, align: 8, offset: 712)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "HasPCLMULQDQ", baseType: !47, size: 8, align: 8, offset: 720)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "HasPOPCNT", baseType: !47, size: 8, align: 8, offset: 728)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "HasRDTSCP", baseType: !47, size: 8, align: 8, offset: 736)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA", baseType: !47, size: 8, align: 8, offset: 744)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE3", baseType: !47, size: 8, align: 8, offset: 752)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSSE3", baseType: !47, size: 8, align: 8, offset: 760)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE41", baseType: !47, size: 8, align: 8, offset: 768)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE42", baseType: !47, size: 8, align: 8, offset: 776)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "HasVAES", baseType: !47, size: 8, align: 8, offset: 784)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !178, size: 512, align: 8, offset: 792)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "internal/cpu.ARM", linkageName: "internal/cpu.ARM", scope: !172, file: !172, line: 65, type: !224, isLocal: false, isDefinition: true, align: 8)
!224 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !225)
!225 = !{!177, !226, !227, !228, !229}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "HasVFPv4", baseType: !47, size: 8, align: 8, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "HasIDIVA", baseType: !47, size: 8, align: 8, offset: 520)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "HasV7Atomics", baseType: !47, size: 8, align: 8, offset: 528)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !178, size: 512, align: 8, offset: 536)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "internal/cpu.ARM64", linkageName: "internal/cpu.ARM64", scope: !172, file: !172, line: 75, type: !232, isLocal: false, isDefinition: true, align: 8)
!232 = !DICompositeType(tag: DW_TAG_structure_type, size: 1112, align: 8, elements: !233)
!233 = !{!177, !186, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "HasPMULL", baseType: !47, size: 8, align: 8, offset: 520)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !47, size: 8, align: 8, offset: 528)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA2", baseType: !47, size: 8, align: 8, offset: 536)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !47, size: 8, align: 8, offset: 544)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !47, size: 8, align: 8, offset: 552)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !47, size: 8, align: 8, offset: 560)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "HasATOMICS", baseType: !47, size: 8, align: 8, offset: 568)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "HasCPUID", baseType: !47, size: 8, align: 8, offset: 576)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "HasDIT", baseType: !47, size: 8, align: 8, offset: 584)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "IsNeoverse", baseType: !47, size: 8, align: 8, offset: 592)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !178, size: 512, align: 8, offset: 600)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "internal/cpu.Loong64", linkageName: "internal/cpu.Loong64", scope: !172, file: !172, line: 93, type: !247, isLocal: false, isDefinition: true, align: 8)
!247 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !248)
!248 = !{!177, !249, !250, !251, !252, !253, !254}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "HasLSX", baseType: !47, size: 8, align: 8, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "HasLASX", baseType: !47, size: 8, align: 8, offset: 520)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !47, size: 8, align: 8, offset: 528)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAMCAS", baseType: !47, size: 8, align: 8, offset: 536)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAM_BH", baseType: !47, size: 8, align: 8, offset: 544)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !178, size: 512, align: 8, offset: 552)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "internal/cpu.MIPS64X", linkageName: "internal/cpu.MIPS64X", scope: !172, file: !172, line: 103, type: !257, isLocal: false, isDefinition: true, align: 8)
!257 = !DICompositeType(tag: DW_TAG_structure_type, size: 1032, align: 8, elements: !258)
!258 = !{!177, !259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !47, size: 8, align: 8, offset: 512)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !178, size: 512, align: 8, offset: 520)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "internal/cpu.PPC64", linkageName: "internal/cpu.PPC64", scope: !172, file: !172, line: 114, type: !263, isLocal: false, isDefinition: true, align: 8)
!263 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !264)
!264 = !{!177, !265, !266, !267, !268, !269, !254}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "HasDARN", baseType: !47, size: 8, align: 8, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "HasSCV", baseType: !47, size: 8, align: 8, offset: 520)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER8", baseType: !47, size: 8, align: 8, offset: 528)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER9", baseType: !47, size: 8, align: 8, offset: 536)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER10", baseType: !47, size: 8, align: 8, offset: 544)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "internal/cpu.S390X", linkageName: "internal/cpu.S390X", scope: !172, file: !172, line: 124, type: !272, isLocal: false, isDefinition: true, align: 8)
!272 = !DICompositeType(tag: DW_TAG_structure_type, size: 1192, align: 8, elements: !273)
!273 = !{!177, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "HasZARCH", baseType: !47, size: 8, align: 8, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "HasSTFLE", baseType: !47, size: 8, align: 8, offset: 520)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "HasLDISP", baseType: !47, size: 8, align: 8, offset: 528)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "HasEIMM", baseType: !47, size: 8, align: 8, offset: 536)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "HasDFP", baseType: !47, size: 8, align: 8, offset: 544)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "HasETF3EH", baseType: !47, size: 8, align: 8, offset: 552)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !47, size: 8, align: 8, offset: 560)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !47, size: 8, align: 8, offset: 568)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCBC", baseType: !47, size: 8, align: 8, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCTR", baseType: !47, size: 8, align: 8, offset: 584)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESGCM", baseType: !47, size: 8, align: 8, offset: 592)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "HasGHASH", baseType: !47, size: 8, align: 8, offset: 600)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !47, size: 8, align: 8, offset: 608)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA256", baseType: !47, size: 8, align: 8, offset: 616)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !47, size: 8, align: 8, offset: 624)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !47, size: 8, align: 8, offset: 632)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "HasVX", baseType: !47, size: 8, align: 8, offset: 640)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "HasVXE", baseType: !47, size: 8, align: 8, offset: 648)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "HasKDSA", baseType: !47, size: 8, align: 8, offset: 656)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "HasECDSA", baseType: !47, size: 8, align: 8, offset: 664)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "HasEDDSA", baseType: !47, size: 8, align: 8, offset: 672)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !178, size: 512, align: 8, offset: 680)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "internal/cpu.RISCV64", linkageName: "internal/cpu.RISCV64", scope: !172, file: !172, line: 154, type: !298, isLocal: false, isDefinition: true, align: 8)
!298 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !299)
!299 = !{!177, !300, !301, !302, !229}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "HasFastMisaligned", baseType: !47, size: 8, align: 8, offset: 512)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "HasV", baseType: !47, size: 8, align: 8, offset: 520)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "HasZbb", baseType: !47, size: 8, align: 8, offset: 528)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "internal/cpu.doDerived", linkageName: "internal/cpu.doDerived", scope: !172, file: !172, line: 174, type: !305, isLocal: false, isDefinition: true, align: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "context", baseType: !9, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "fn", baseType: !9, size: 64, align: 64, offset: 64)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "internal/cpu.options", linkageName: "internal/cpu.options", scope: !172, file: !172, line: 192, type: !311, isLocal: false, isDefinition: true, align: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]internal/cpu.option", size: 192, align: 64, elements: !312)
!312 = !{!313, !323, !328}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !314, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64, dwarfAddressSpace: 0)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.option", baseType: !316)
!316 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !317)
!317 = !{!318, !324, !326, !327}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "Name", baseType: !319, size: 128, align: 64)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", size: 128, align: 64, elements: !320)
!320 = !{!321, !323}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !322, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64, dwarfAddressSpace: 0)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "len", baseType: !21, size: 64, align: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "Feature", baseType: !325, size: 64, align: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64, dwarfAddressSpace: 0)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "Specified", baseType: !47, size: 8, align: 8, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "Enable", baseType: !47, size: 8, align: 8, offset: 200)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "cap", baseType: !21, size: 64, align: 64, offset: 128)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !172, line: 218, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, align: 8, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 4, lowerBound: 0)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !172, line: 223, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 264, align: 8, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 33, lowerBound: 0)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !172, line: 223, type: !98, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !172, line: 230, type: !98, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !172, line: 239, type: !158, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !172, line: 255, type: !55, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !172, line: 255, type: !98, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !172, line: 232, type: !158, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !172, line: 235, type: !163, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !172, line: 235, type: !355, isLocal: true, isDefinition: true)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, align: 8, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 32, lowerBound: 0)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !172, line: 235, type: !98, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !172, line: 264, type: !362, isLocal: true, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 200, align: 8, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 25, lowerBound: 0)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !172, line: 264, type: !103, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "internal/cpu.maxExtendedFunctionInformation", linkageName: "internal/cpu.maxExtendedFunctionInformation", scope: !369, file: !369, line: 69, type: !43, isLocal: false, isDefinition: true, align: 32)
!369 = !DIFile(filename: "cpu_x86.go", directory: "/usr/local/go/src/internal/cpu")
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !369, line: 73, type: !158, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !369, line: 74, type: !158, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !369, line: 75, type: !331, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !369, line: 76, type: !331, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !369, line: 77, type: !380, isLocal: true, isDefinition: true)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 72, align: 8, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 9, lowerBound: 0)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !369, line: 78, type: !385, isLocal: true, isDefinition: true)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 48, align: 8, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 6, lowerBound: 0)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !369, line: 79, type: !158, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !369, line: 80, type: !392, isLocal: true, isDefinition: true)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 80, align: 8, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 10, lowerBound: 0)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !369, line: 87, type: !385, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !369, line: 88, type: !331, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !369, line: 89, type: !401, isLocal: true, isDefinition: true)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 40, align: 8, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 5, lowerBound: 0)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !369, line: 90, type: !401, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !369, line: 91, type: !401, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !369, line: 97, type: !158, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !369, line: 98, type: !331, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !369, line: 99, type: !331, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !369, line: 100, type: !331, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !369, line: 101, type: !158, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !369, line: 107, type: !88, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !369, line: 108, type: !422, isLocal: true, isDefinition: true)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, align: 8, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 8, lowerBound: 0)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !369, line: 109, type: !422, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !369, line: 110, type: !422, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !369, line: 111, type: !422, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !433, line: 1, type: !434, isLocal: true, isDefinition: true)
!433 = !DIFile(filename: "datacache_x86.go", directory: "/usr/local/go/src/internal/cpu")
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 104, align: 8, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 13, lowerBound: 0)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !433, line: 1, type: !439, isLocal: true, isDefinition: true)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 664, align: 8, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 83, lowerBound: 0)
!442 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !443)
!443 = !{!444, !448, !450, !459}
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(name: "math/bits.deBruijn32tab", linkageName: "math/bits.deBruijn32tab", scope: !446, file: !446, line: 44, type: !447, isLocal: false, isDefinition: true, align: 8)
!446 = !DIFile(filename: "bits.go", directory: "/usr/local/go/src/math/bits")
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 256, align: 8, elements: !356)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "math/bits.deBruijn64tab", linkageName: "math/bits.deBruijn64tab", scope: !446, file: !446, line: 51, type: !182, isLocal: false, isDefinition: true, align: 8)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(name: "math/bits.overflowError", linkageName: "runtime.overflowError", scope: !452, file: !452, line: 12, type: !453, isLocal: false, isDefinition: true, align: 64)
!452 = !DIFile(filename: "bits_errors.go", directory: "/usr/local/go/src/math/bits")
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._interface", baseType: !455)
!455 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "typecode", baseType: !9, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "value", baseType: !9, size: 64, align: 64, offset: 64)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(name: "math/bits.divideError", linkageName: "runtime.divideError", scope: !452, file: !452, line: 15, type: !453, isLocal: false, isDefinition: true, align: 64)
!461 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !462)
!462 = !{!463, !465, !468, !473, !476, !479, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !552, !554, !556, !561, !563, !565, !567, !571, !574, !579, !582, !584, !588, !590, !593, !595, !599, !603, !605, !607, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656}
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !172, file: !172, line: 23, type: !175, isLocal: false, isDefinition: true, align: 8)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(name: "math.useFMA", linkageName: "math.useFMA", scope: !467, file: !467, line: 11, type: !47, isLocal: false, isDefinition: true, align: 8)
!467 = !DIFile(filename: "exp_amd64.go", directory: "/usr/local/go/src/math")
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "math._gamP", linkageName: "math._gamP", scope: !470, file: !470, line: 66, type: !471, isLocal: false, isDefinition: true, align: 64)
!470 = !DIFile(filename: "gamma.go", directory: "/usr/local/go/src/math")
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 448, align: 64, elements: !89)
!472 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "math._gamQ", linkageName: "math._gamQ", scope: !470, file: !470, line: 75, type: !475, isLocal: false, isDefinition: true, align: 64)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 512, align: 64, elements: !423)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "math._gamS", linkageName: "math._gamS", scope: !470, file: !470, line: 85, type: !478, isLocal: false, isDefinition: true, align: 64)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 320, align: 64, elements: !402)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(name: "math.p0R8", linkageName: "math.p0R8", scope: !481, file: !481, line: 240, type: !482, isLocal: false, isDefinition: true, align: 64)
!481 = !DIFile(filename: "j0.go", directory: "/usr/local/go/src/math")
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 384, align: 64, elements: !386)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "math.p0S8", linkageName: "math.p0S8", scope: !481, file: !481, line: 248, type: !478, isLocal: false, isDefinition: true, align: 64)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "math.p0R5", linkageName: "math.p0R5", scope: !481, file: !481, line: 257, type: !482, isLocal: false, isDefinition: true, align: 64)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "math.p0S5", linkageName: "math.p0S5", scope: !481, file: !481, line: 265, type: !478, isLocal: false, isDefinition: true, align: 64)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(name: "math.p0R3", linkageName: "math.p0R3", scope: !481, file: !481, line: 274, type: !482, isLocal: false, isDefinition: true, align: 64)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(name: "math.p0S3", linkageName: "math.p0S3", scope: !481, file: !481, line: 282, type: !478, isLocal: false, isDefinition: true, align: 64)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "math.p0R2", linkageName: "math.p0R2", scope: !481, file: !481, line: 291, type: !482, isLocal: false, isDefinition: true, align: 64)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "math.p0S2", linkageName: "math.p0S2", scope: !481, file: !481, line: 299, type: !478, isLocal: false, isDefinition: true, align: 64)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(name: "math.q0R8", linkageName: "math.q0R8", scope: !481, file: !481, line: 339, type: !482, isLocal: false, isDefinition: true, align: 64)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(name: "math.q0S8", linkageName: "math.q0S8", scope: !481, file: !481, line: 347, type: !482, isLocal: false, isDefinition: true, align: 64)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "math.q0R5", linkageName: "math.q0R5", scope: !481, file: !481, line: 357, type: !482, isLocal: false, isDefinition: true, align: 64)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(name: "math.q0S5", linkageName: "math.q0S5", scope: !481, file: !481, line: 365, type: !482, isLocal: false, isDefinition: true, align: 64)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "math.q0R3", linkageName: "math.q0R3", scope: !481, file: !481, line: 375, type: !482, isLocal: false, isDefinition: true, align: 64)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "math.q0S3", linkageName: "math.q0S3", scope: !481, file: !481, line: 383, type: !482, isLocal: false, isDefinition: true, align: 64)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "math.q0R2", linkageName: "math.q0R2", scope: !481, file: !481, line: 393, type: !482, isLocal: false, isDefinition: true, align: 64)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(name: "math.q0S2", linkageName: "math.q0S2", scope: !481, file: !481, line: 401, type: !482, isLocal: false, isDefinition: true, align: 64)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "math.p1R8", linkageName: "math.p1R8", scope: !515, file: !515, line: 235, type: !482, isLocal: false, isDefinition: true, align: 64)
!515 = !DIFile(filename: "j1.go", directory: "/usr/local/go/src/math")
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "math.p1S8", linkageName: "math.p1S8", scope: !515, file: !515, line: 243, type: !478, isLocal: false, isDefinition: true, align: 64)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "math.p1R5", linkageName: "math.p1R5", scope: !515, file: !515, line: 252, type: !482, isLocal: false, isDefinition: true, align: 64)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "math.p1S5", linkageName: "math.p1S5", scope: !515, file: !515, line: 260, type: !478, isLocal: false, isDefinition: true, align: 64)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(name: "math.p1R3", linkageName: "math.p1R3", scope: !515, file: !515, line: 269, type: !482, isLocal: false, isDefinition: true, align: 64)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "math.p1S3", linkageName: "math.p1S3", scope: !515, file: !515, line: 277, type: !478, isLocal: false, isDefinition: true, align: 64)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "math.p1R2", linkageName: "math.p1R2", scope: !515, file: !515, line: 286, type: !482, isLocal: false, isDefinition: true, align: 64)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "math.p1S2", linkageName: "math.p1S2", scope: !515, file: !515, line: 294, type: !478, isLocal: false, isDefinition: true, align: 64)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "math.q1R8", linkageName: "math.q1R8", scope: !515, file: !515, line: 334, type: !482, isLocal: false, isDefinition: true, align: 64)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(name: "math.q1S8", linkageName: "math.q1S8", scope: !515, file: !515, line: 342, type: !482, isLocal: false, isDefinition: true, align: 64)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(name: "math.q1R5", linkageName: "math.q1R5", scope: !515, file: !515, line: 352, type: !482, isLocal: false, isDefinition: true, align: 64)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(name: "math.q1S5", linkageName: "math.q1S5", scope: !515, file: !515, line: 360, type: !482, isLocal: false, isDefinition: true, align: 64)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "math.q1R3", linkageName: "math.q1R3", scope: !515, file: !515, line: 370, type: !482, isLocal: false, isDefinition: true, align: 64)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(name: "math.q1S3", linkageName: "math.q1S3", scope: !515, file: !515, line: 378, type: !482, isLocal: false, isDefinition: true, align: 64)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(name: "math.q1R2", linkageName: "math.q1R2", scope: !515, file: !515, line: 388, type: !482, isLocal: false, isDefinition: true, align: 64)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "math.q1S2", linkageName: "math.q1S2", scope: !515, file: !515, line: 396, type: !482, isLocal: false, isDefinition: true, align: 64)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "math._lgamA", linkageName: "math._lgamA", scope: !548, file: !548, line: 91, type: !549, isLocal: false, isDefinition: true, align: 64)
!548 = !DIFile(filename: "lgamma.go", directory: "/usr/local/go/src/math")
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 768, align: 64, elements: !550)
!550 = !{!551}
!551 = !DISubrange(count: 12, lowerBound: 0)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "math._lgamR", linkageName: "math._lgamR", scope: !548, file: !548, line: 105, type: !471, isLocal: false, isDefinition: true, align: 64)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "math._lgamS", linkageName: "math._lgamS", scope: !548, file: !548, line: 114, type: !471, isLocal: false, isDefinition: true, align: 64)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(name: "math._lgamT", linkageName: "math._lgamT", scope: !548, file: !548, line: 123, type: !558, isLocal: false, isDefinition: true, align: 64)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 960, align: 64, elements: !559)
!559 = !{!560}
!560 = !DISubrange(count: 15, lowerBound: 0)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "math._lgamU", linkageName: "math._lgamU", scope: !548, file: !548, line: 140, type: !482, isLocal: false, isDefinition: true, align: 64)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(name: "math._lgamV", linkageName: "math._lgamV", scope: !548, file: !548, line: 148, type: !482, isLocal: false, isDefinition: true, align: 64)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(name: "math._lgamW", linkageName: "math._lgamW", scope: !548, file: !548, line: 156, type: !471, isLocal: false, isDefinition: true, align: 64)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(name: "math.pow10tab", linkageName: "math.pow10tab", scope: !569, file: !569, line: 8, type: !570, isLocal: false, isDefinition: true, align: 64)
!569 = !DIFile(filename: "pow10.go", directory: "/usr/local/go/src/math")
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 2048, align: 64, elements: !356)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "math.pow10postab32", linkageName: "math.pow10postab32", scope: !569, file: !569, line: 16, type: !573, isLocal: false, isDefinition: true, align: 64)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 640, align: 64, elements: !393)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(name: "math.pow10negtab32", linkageName: "math.pow10negtab32", scope: !569, file: !569, line: 21, type: !576, isLocal: false, isDefinition: true, align: 64)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 704, align: 64, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 11, lowerBound: 0)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(name: "math._sin", linkageName: "math._sin", scope: !581, file: !581, line: 93, type: !482, isLocal: false, isDefinition: true, align: 64)
!581 = !DIFile(filename: "sin.go", directory: "/usr/local/go/src/math")
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "math._cos", linkageName: "math._cos", scope: !581, file: !581, line: 103, type: !482, isLocal: false, isDefinition: true, align: 64)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(name: "math._tanP", linkageName: "math._tanP", scope: !586, file: !586, line: 63, type: !587, isLocal: false, isDefinition: true, align: 64)
!586 = !DIFile(filename: "tan.go", directory: "/usr/local/go/src/math")
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 192, align: 64, elements: !159)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(name: "math._tanQ", linkageName: "math._tanQ", scope: !586, file: !586, line: 68, type: !478, isLocal: false, isDefinition: true, align: 64)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(name: "math.tanhP", linkageName: "math.tanhP", scope: !592, file: !592, line: 57, type: !587, isLocal: false, isDefinition: true, align: 64)
!592 = !DIFile(filename: "tanh.go", directory: "/usr/local/go/src/math")
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(name: "math.tanhQ", linkageName: "math.tanhQ", scope: !592, file: !592, line: 62, type: !587, isLocal: false, isDefinition: true, align: 64)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(name: "math.mPi4", linkageName: "math.mPi4", scope: !597, file: !597, line: 81, type: !598, isLocal: false, isDefinition: true, align: 64)
!597 = !DIFile(filename: "trig_reduce.go", directory: "/usr/local/go/src/math")
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1280, align: 64, elements: !68)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !601, line: 1, type: !602, isLocal: true, isDefinition: true)
!601 = !DIFile(filename: "exp2_noasm.go", directory: "/usr/local/go/src/math")
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 120, align: 8, elements: !559)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(name: "type *string", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(name: "type string", scope: !130, file: !130, line: 1, type: !131, isLocal: false, isDefinition: true, align: 64)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!609 = !DIFile(filename: "stubs.go", directory: "/usr/local/go/src/math")
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !609, line: 1, type: !602, isLocal: true, isDefinition: true)
!658 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !659)
!659 = !{!660, !666}
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(name: "unicode/utf8.first", linkageName: "unicode/utf8.first", scope: !662, file: !662, line: 71, type: !663, isLocal: false, isDefinition: true, align: 8)
!662 = !DIFile(filename: "utf8.go", directory: "/usr/local/lib/tinygo/src/unicode/utf8")
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, align: 8, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 256, lowerBound: 0)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(name: "unicode/utf8.acceptRanges", linkageName: "unicode/utf8.acceptRanges", scope: !662, file: !662, line: 100, type: !668, isLocal: false, isDefinition: true, align: 8)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 256, align: 8, elements: !164)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "unicode/utf8.acceptRange", baseType: !670)
!670 = !DICompositeType(tag: DW_TAG_structure_type, size: 16, align: 8, elements: !671)
!671 = !{!672, !673}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "lo", baseType: !45, size: 8, align: 8)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "hi", baseType: !45, size: 8, align: 8, offset: 8)
!674 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !675)
!675 = !{!676, !679, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708, !710, !713, !715, !718, !720, !722, !724, !732, !734, !736, !738, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !762, !764, !766, !768, !770, !772, !774, !776, !778, !780, !782, !784, !786, !788, !790, !792, !794, !796, !798, !800, !802, !804, !806, !808, !810, !812, !825, !843, !848, !850, !852, !854, !856, !858, !860, !862, !874, !880, !888, !892, !897, !899, !901, !903, !912, !914, !922, !931, !933, !935, !937, !939, !941, !943, !945, !947, !949, !951, !953, !955, !957, !959, !961, !963, !965, !968, !970, !972, !974, !976, !978, !980, !986, !992, !998, !1000, !1002, !1004, !1006, !1008, !1010, !1012, !1014, !1016, !1018, !1020, !1022, !1024, !1026, !1028, !1030, !1032, !1034, !1036, !1038, !1040, !1042, !1044, !1046, !1048, !1050, !1052, !1054, !1056, !1058, !1063, !1068, !1073, !1078, !1080, !1082, !1084, !1089, !1091, !1093, !1098, !1100, !1102, !1107, !1109, !1111, !1113, !1115, !1117, !1119, !1121, !1123, !1125, !1127, !1129, !1131, !1133, !1135, !1137, !1139, !1141, !1143, !1145, !1147, !1149, !1151, !1153, !1155, !1157, !1159, !1161, !1163, !1168, !1173, !1175, !1177, !1179, !1181, !1186, !1191, !1193, !1195, !1197, !1199, !1204, !1206, !1208, !1213, !1215, !1217, !1219, !1224, !1226, !1228, !1230, !1232, !1234, !1236, !1238, !1240, !1245, !1247, !1249, !1251, !1253, !1255, !1257, !1259, !1261, !1266, !1268, !1273, !1278, !1280, !1282, !1284, !1289, !1291, !1293, !1295, !1297, !1302, !1304, !1306, !1308, !1310, !1312, !1317, !1319, !1324, !1326, !1328, !1330, !1332, !1334, !1336, !1338, !1340, !1342, !1344, !1346, !1351, !1353, !1358, !1360, !1362, !1364, !1366, !1369, !1371, !1373, !1375, !1377, !1379, !1381, !1383, !1385, !1387, !1392, !1394, !1396, !1398, !1400, !1402, !1404, !1406, !1408, !1410, !1413}
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !678, line: 393, type: !331, isLocal: true, isDefinition: true)
!678 = !DIFile(filename: "type.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeElem", linkageName: "internal/reflectlite.errTypeElem", scope: !678, file: !678, line: 393, type: !681, isLocal: false, isDefinition: true, align: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64, align: 64, dwarfAddressSpace: 0)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.TypeError", baseType: !683)
!683 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !684)
!684 = !{!685}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "Method", baseType: !319, size: 128, align: 64)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !678, line: 394, type: !158, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeKey", linkageName: "internal/reflectlite.errTypeKey", scope: !678, file: !678, line: 394, type: !681, isLocal: false, isDefinition: true, align: 64)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !678, line: 395, type: !401, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeField", linkageName: "internal/reflectlite.errTypeField", scope: !678, file: !678, line: 395, type: !681, isLocal: false, isDefinition: true, align: 64)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !678, line: 396, type: !331, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeBits", linkageName: "internal/reflectlite.errTypeBits", scope: !678, file: !678, line: 396, type: !681, isLocal: false, isDefinition: true, align: 64)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !678, line: 397, type: !158, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeLen", linkageName: "internal/reflectlite.errTypeLen", scope: !678, file: !678, line: 397, type: !681, isLocal: false, isDefinition: true, align: 64)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !678, line: 398, type: !422, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeNumField", linkageName: "internal/reflectlite.errTypeNumField", scope: !678, file: !678, line: 398, type: !681, isLocal: false, isDefinition: true, align: 64)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !678, line: 399, type: !88, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeChanDir", linkageName: "internal/reflectlite.errTypeChanDir", scope: !678, file: !678, line: 399, type: !681, isLocal: false, isDefinition: true, align: 64)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !678, line: 400, type: !712, isLocal: true, isDefinition: true)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 88, align: 8, elements: !577)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByName", linkageName: "internal/reflectlite.errTypeFieldByName", scope: !678, file: !678, line: 400, type: !681, isLocal: false, isDefinition: true, align: 64)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !678, line: 401, type: !717, isLocal: true, isDefinition: true)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 96, align: 8, elements: !550)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByIndex", linkageName: "internal/reflectlite.errTypeFieldByIndex", scope: !678, file: !678, line: 401, type: !681, isLocal: false, isDefinition: true, align: 64)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(name: "type *uint8", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(name: "type uint8", scope: !130, file: !130, line: 1, type: !131, isLocal: false, isDefinition: true, align: 64)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(name: "internal/reflectlite.uint8Type", linkageName: "internal/reflectlite.uint8Type", scope: !726, file: !726, line: 956, type: !727, isLocal: false, isDefinition: true, align: 64)
!726 = !DIFile(filename: "value.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64, align: 64, dwarfAddressSpace: 0)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.RawType", baseType: !729)
!729 = !DICompositeType(tag: DW_TAG_structure_type, size: 8, align: 8, elements: !730)
!730 = !{!731}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "meta", baseType: !45, size: 8, align: 8)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.visit", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(name: "type *struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(name: "type *unsafe.Pointer", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(name: "type unsafe.Pointer", scope: !130, file: !130, line: 1, type: !131, isLocal: false, isDefinition: true, align: 64)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(name: "reflect/types.signature:Align:func:{}{basic:int}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(name: "reflect/types.signature:AssignableTo:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(name: "reflect/types.signature:Bits:func:{}{basic:int}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(name: "reflect/types.signature:ChanDir:func:{}{named:internal/reflectlite.ChanDir}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(name: "reflect/types.signature:Comparable:func:{}{basic:bool}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(name: "reflect/types.signature:Elem:func:{}{named:internal/reflectlite.Type}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(name: "reflect/types.signature:Field:func:{basic:int}{named:internal/reflectlite.StructField}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldAlign:func:{}{basic:int}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByIndex:func:{slice:basic:int}{named:internal/reflectlite.StructField}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByName:func:{basic:string}{named:internal/reflectlite.StructField,basic:bool}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.StructField,basic:bool}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(name: "reflect/types.signature:Implements:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(name: "reflect/types.signature:Key:func:{}{named:internal/reflectlite.Type}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(name: "reflect/types.signature:Kind:func:{}{named:internal/reflectlite.Kind}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(name: "reflect/types.signature:Len:func:{}{basic:int}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(name: "reflect/types.signature:Name:func:{}{basic:string}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumField:func:{}{basic:int}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumMethod:func:{}{basic:int}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowComplex:func:{basic:complex128}{basic:bool}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowFloat:func:{basic:float64}{basic:bool}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowInt:func:{basic:int64}{basic:bool}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowUint:func:{basic:uint64}{basic:bool}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(name: "reflect/types.signature:PkgPath:func:{}{basic:string}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(name: "reflect/types.signature:Size:func:{}{basic:uintptr}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(name: "reflect/types.signature:String:func:{}{basic:string}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.elem:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.gcLayout:func:{}{basic:unsafe.Pointer}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isBinary:func:{}{basic:bool}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isNamed:func:{}{basic:bool}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.key:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.name:func:{}{basic:string}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.ptrtag:func:{}{basic:uintptr}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawField:func:{basic:int}{named:internal/reflectlite.rawStructField}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawFieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.rawStructField,slice:basic:int,basic:bool}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.underlying:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(name: "type *struct{meta uint8}", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(name: "type struct{meta uint8}", scope: !130, file: !130, line: 1, type: !814, isLocal: false, isDefinition: true, align: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !815)
!815 = !{!133, !140, !135, !816, !817, !818, !819}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "size", baseType: !43, size: 32, align: 32, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "numFields", baseType: !141, size: 16, align: 16, offset: 224)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !820, size: 128, align: 64, offset: 256)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !821, size: 128, align: 64, elements: !152)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.structField", baseType: !822)
!822 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !823)
!823 = !{!457, !824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !322, size: 64, align: 64, offset: 64)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(name: "type internal/reflectlite.RawType", scope: !130, file: !130, line: 1, type: !827, isLocal: false, isDefinition: true, align: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, size: 832, align: 64, elements: !828)
!828 = !{!829, !830, !831, !832, !833, !834, !835, !841}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "methodSet", baseType: !9, size: 64, align: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !134, size: 8, align: 8, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !141, size: 16, align: 16, offset: 80)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !9, size: 64, align: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !9, size: 64, align: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !836, size: 320, align: 64, offset: 320)
!836 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !837)
!837 = !{!838, !839}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !21, size: 64, align: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !840, size: 256, align: 64, offset: 64)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, align: 64, elements: !332)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !842, size: 160, align: 8, offset: 640)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 160, align: 8, elements: !68)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !845, isLocal: true, isDefinition: true)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 224, align: 8, elements: !846)
!846 = !{!847}
!847 = !DISubrange(count: 28, lowerBound: 0)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !602, isLocal: true, isDefinition: true)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !845, isLocal: true, isDefinition: true)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !434, isLocal: true, isDefinition: true)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !845, isLocal: true, isDefinition: true)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !712, isLocal: true, isDefinition: true)
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !845, isLocal: true, isDefinition: true)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !717, isLocal: true, isDefinition: true)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.RawType", scope: !130, file: !130, line: 1, type: !864, isLocal: false, isDefinition: true, align: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, size: 2496, align: 64, elements: !865)
!865 = !{!829, !830, !831, !866, !867}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !9, size: 64, align: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !868, size: 2304, align: 64, offset: 192)
!868 = !DICompositeType(tag: DW_TAG_structure_type, size: 2304, align: 64, elements: !869)
!869 = !{!838, !870}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !871, size: 2240, align: 64, offset: 64)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2240, align: 64, elements: !872)
!872 = !{!873}
!873 = !DISubrange(count: 35, lowerBound: 0)
!874 = !DIGlobalVariableExpression(var: !875, expr: !DIExpression())
!875 = distinct !DIGlobalVariable(name: "type struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !130, file: !130, line: 1, type: !876, isLocal: false, isDefinition: true, align: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !877)
!877 = !{!133, !140, !135, !816, !817, !818, !878}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !879, size: 384, align: 64, offset: 256)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !821, size: 384, align: 64, elements: !159)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(name: "type internal/reflectlite.visit", scope: !130, file: !130, line: 1, type: !882, isLocal: false, isDefinition: true, align: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !883)
!883 = !{!133, !140, !135, !884, !885, !886}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !9, size: 64, align: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !887, size: 144, align: 8, offset: 256)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 144, align: 8, elements: !109)
!888 = !DIGlobalVariableExpression(var: !889, expr: !DIExpression())
!889 = distinct !DIGlobalVariable(name: "internal/reflectlite.errSyntax", linkageName: "internal/reflectlite.errSyntax", scope: !890, file: !890, line: 12, type: !891, isLocal: false, isDefinition: true, align: 8)
!890 = !DIFile(filename: "strconv.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.badSyntax", baseType: !14)
!892 = !DIGlobalVariableExpression(var: !893, expr: !DIExpression())
!893 = distinct !DIGlobalVariable(scope: null, file: !890, line: 17, type: !894, isLocal: true, isDefinition: true)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 112, align: 8, elements: !895)
!895 = !{!896}
!896 = !DISubrange(count: 14, lowerBound: 0)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(name: "reflect/types.signature:Error:func:{}{basic:string}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!899 = !DIGlobalVariableExpression(var: !900, expr: !DIExpression())
!900 = distinct !DIGlobalVariable(scope: null, file: !890, line: 1, type: !55, isLocal: true, isDefinition: true)
!901 = !DIGlobalVariableExpression(var: !902, expr: !DIExpression())
!902 = distinct !DIGlobalVariable(scope: null, file: !890, line: 1, type: !401, isLocal: true, isDefinition: true)
!903 = !DIGlobalVariableExpression(var: !904, expr: !DIExpression())
!904 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.badSyntax", scope: !130, file: !130, line: 1, type: !905, isLocal: false, isDefinition: true, align: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !906)
!906 = !{!829, !830, !831, !866, !907}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !908, size: 128, align: 64, offset: 192)
!908 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !909)
!909 = !{!838, !910}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !911, size: 64, align: 64, offset: 64)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, align: 64, elements: !152)
!912 = !DIGlobalVariableExpression(var: !913, expr: !DIExpression())
!913 = distinct !DIGlobalVariable(name: "type *struct{}", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!914 = !DIGlobalVariableExpression(var: !915, expr: !DIExpression())
!915 = distinct !DIGlobalVariable(name: "type struct{}", scope: !130, file: !130, line: 1, type: !916, isLocal: false, isDefinition: true, align: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !917)
!917 = !{!133, !140, !135, !816, !817, !818, !918}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !919, align: 64, offset: 256)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !821, align: 64, elements: !920)
!920 = !{!921}
!921 = !DISubrange(count: 0, lowerBound: 0)
!922 = !DIGlobalVariableExpression(var: !923, expr: !DIExpression())
!923 = distinct !DIGlobalVariable(name: "type internal/reflectlite.badSyntax", scope: !130, file: !130, line: 1, type: !924, isLocal: false, isDefinition: true, align: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !925)
!925 = !{!829, !830, !831, !832, !833, !834, !926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !908, size: 128, align: 64, offset: 320)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !928, size: 176, align: 8, offset: 448)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 176, align: 8, elements: !929)
!929 = !{!930}
!930 = !DISubrange(count: 22, lowerBound: 0)
!931 = !DIGlobalVariableExpression(var: !932, expr: !DIExpression())
!932 = distinct !DIGlobalVariable(scope: null, file: !890, line: 250, type: !98, isLocal: true, isDefinition: true)
!933 = !DIGlobalVariableExpression(var: !934, expr: !DIExpression())
!934 = distinct !DIGlobalVariable(scope: null, file: !890, line: 251, type: !602, isLocal: true, isDefinition: true)
!935 = !DIGlobalVariableExpression(var: !936, expr: !DIExpression())
!936 = distinct !DIGlobalVariable(scope: null, file: !890, line: 252, type: !602, isLocal: true, isDefinition: true)
!937 = !DIGlobalVariableExpression(var: !938, expr: !DIExpression())
!938 = distinct !DIGlobalVariable(scope: null, file: !890, line: 278, type: !98, isLocal: true, isDefinition: true)
!939 = !DIGlobalVariableExpression(var: !940, expr: !DIExpression())
!940 = distinct !DIGlobalVariable(scope: null, file: !890, line: 280, type: !98, isLocal: true, isDefinition: true)
!941 = !DIGlobalVariableExpression(var: !942, expr: !DIExpression())
!942 = distinct !DIGlobalVariable(scope: null, file: !890, line: 282, type: !98, isLocal: true, isDefinition: true)
!943 = !DIGlobalVariableExpression(var: !944, expr: !DIExpression())
!944 = distinct !DIGlobalVariable(scope: null, file: !890, line: 284, type: !98, isLocal: true, isDefinition: true)
!945 = !DIGlobalVariableExpression(var: !946, expr: !DIExpression())
!946 = distinct !DIGlobalVariable(scope: null, file: !890, line: 286, type: !98, isLocal: true, isDefinition: true)
!947 = !DIGlobalVariableExpression(var: !948, expr: !DIExpression())
!948 = distinct !DIGlobalVariable(scope: null, file: !890, line: 288, type: !98, isLocal: true, isDefinition: true)
!949 = !DIGlobalVariableExpression(var: !950, expr: !DIExpression())
!950 = distinct !DIGlobalVariable(scope: null, file: !890, line: 290, type: !98, isLocal: true, isDefinition: true)
!951 = !DIGlobalVariableExpression(var: !952, expr: !DIExpression())
!952 = distinct !DIGlobalVariable(scope: null, file: !890, line: 294, type: !98, isLocal: true, isDefinition: true)
!953 = !DIGlobalVariableExpression(var: !954, expr: !DIExpression())
!954 = distinct !DIGlobalVariable(scope: null, file: !890, line: 295, type: !602, isLocal: true, isDefinition: true)
!955 = !DIGlobalVariableExpression(var: !956, expr: !DIExpression())
!956 = distinct !DIGlobalVariable(scope: null, file: !890, line: 296, type: !602, isLocal: true, isDefinition: true)
!957 = !DIGlobalVariableExpression(var: !958, expr: !DIExpression())
!958 = distinct !DIGlobalVariable(scope: null, file: !890, line: 301, type: !98, isLocal: true, isDefinition: true)
!959 = !DIGlobalVariableExpression(var: !960, expr: !DIExpression())
!960 = distinct !DIGlobalVariable(scope: null, file: !890, line: 303, type: !602, isLocal: true, isDefinition: true)
!961 = !DIGlobalVariableExpression(var: !962, expr: !DIExpression())
!962 = distinct !DIGlobalVariable(scope: null, file: !890, line: 306, type: !98, isLocal: true, isDefinition: true)
!963 = !DIGlobalVariableExpression(var: !964, expr: !DIExpression())
!964 = distinct !DIGlobalVariable(scope: null, file: !890, line: 308, type: !602, isLocal: true, isDefinition: true)
!965 = !DIGlobalVariableExpression(var: !966, expr: !DIExpression())
!966 = distinct !DIGlobalVariable(scope: null, file: !967, line: 16, type: !88, isLocal: true, isDefinition: true)
!967 = !DIFile(filename: "swapper.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!968 = !DIGlobalVariableExpression(var: !969, expr: !DIExpression())
!969 = distinct !DIGlobalVariable(name: "type *struct{Method string; Kind internal/reflectlite.Kind}", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!970 = !DIGlobalVariableExpression(var: !971, expr: !DIExpression())
!971 = distinct !DIGlobalVariable(name: "type *string", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!972 = !DIGlobalVariableExpression(var: !973, expr: !DIExpression())
!973 = distinct !DIGlobalVariable(name: "type string", scope: !130, file: !130, line: 1, type: !131, isLocal: false, isDefinition: true, align: 64)
!974 = !DIGlobalVariableExpression(var: !975, expr: !DIExpression())
!975 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !362, isLocal: true, isDefinition: true)
!976 = !DIGlobalVariableExpression(var: !977, expr: !DIExpression())
!977 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !385, isLocal: true, isDefinition: true)
!978 = !DIGlobalVariableExpression(var: !979, expr: !DIExpression())
!979 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.Kind", scope: !130, file: !130, line: 1, type: !905, isLocal: false, isDefinition: true, align: 64)
!980 = !DIGlobalVariableExpression(var: !981, expr: !DIExpression())
!981 = distinct !DIGlobalVariable(name: "type internal/reflectlite.Kind", scope: !130, file: !130, line: 1, type: !982, isLocal: false, isDefinition: true, align: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !983)
!983 = !{!829, !830, !831, !832, !833, !834, !926, !984}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !985, size: 136, align: 8, offset: 448)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 136, align: 8, elements: !75)
!986 = !DIGlobalVariableExpression(var: !987, expr: !DIExpression())
!987 = distinct !DIGlobalVariable(name: "type struct{Method string; Kind internal/reflectlite.Kind}", scope: !130, file: !130, line: 1, type: !988, isLocal: false, isDefinition: true, align: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !989)
!989 = !{!133, !140, !135, !816, !817, !818, !990}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !991, size: 256, align: 64, offset: 256)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !821, size: 256, align: 64, elements: !99)
!992 = !DIGlobalVariableExpression(var: !993, expr: !DIExpression())
!993 = distinct !DIGlobalVariable(name: "type internal/reflectlite.ValueError", scope: !130, file: !130, line: 1, type: !994, isLocal: false, isDefinition: true, align: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !995)
!995 = !{!133, !140, !135, !884, !885, !996}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !997, size: 184, align: 8, offset: 256)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 184, align: 8, elements: !104)
!998 = !DIGlobalVariableExpression(var: !999, expr: !DIExpression())
!999 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.ValueError", scope: !130, file: !130, line: 1, type: !905, isLocal: false, isDefinition: true, align: 64)
!1000 = !DIGlobalVariableExpression(var: !1001, expr: !DIExpression())
!1001 = distinct !DIGlobalVariable(scope: null, file: !967, line: 1, type: !336, isLocal: true, isDefinition: true)
!1002 = !DIGlobalVariableExpression(var: !1003, expr: !DIExpression())
!1003 = distinct !DIGlobalVariable(scope: null, file: !678, line: 60, type: !88, isLocal: true, isDefinition: true)
!1004 = !DIGlobalVariableExpression(var: !1005, expr: !DIExpression())
!1005 = distinct !DIGlobalVariable(scope: null, file: !678, line: 62, type: !331, isLocal: true, isDefinition: true)
!1006 = !DIGlobalVariableExpression(var: !1007, expr: !DIExpression())
!1007 = distinct !DIGlobalVariable(scope: null, file: !678, line: 64, type: !158, isLocal: true, isDefinition: true)
!1008 = !DIGlobalVariableExpression(var: !1009, expr: !DIExpression())
!1009 = distinct !DIGlobalVariable(scope: null, file: !678, line: 66, type: !331, isLocal: true, isDefinition: true)
!1010 = !DIGlobalVariableExpression(var: !1011, expr: !DIExpression())
!1011 = distinct !DIGlobalVariable(scope: null, file: !678, line: 68, type: !401, isLocal: true, isDefinition: true)
!1012 = !DIGlobalVariableExpression(var: !1013, expr: !DIExpression())
!1013 = distinct !DIGlobalVariable(scope: null, file: !678, line: 70, type: !401, isLocal: true, isDefinition: true)
!1014 = !DIGlobalVariableExpression(var: !1015, expr: !DIExpression())
!1015 = distinct !DIGlobalVariable(scope: null, file: !678, line: 72, type: !401, isLocal: true, isDefinition: true)
!1016 = !DIGlobalVariableExpression(var: !1017, expr: !DIExpression())
!1017 = distinct !DIGlobalVariable(scope: null, file: !678, line: 74, type: !331, isLocal: true, isDefinition: true)
!1018 = !DIGlobalVariableExpression(var: !1019, expr: !DIExpression())
!1019 = distinct !DIGlobalVariable(scope: null, file: !678, line: 76, type: !401, isLocal: true, isDefinition: true)
!1020 = !DIGlobalVariableExpression(var: !1021, expr: !DIExpression())
!1021 = distinct !DIGlobalVariable(scope: null, file: !678, line: 78, type: !385, isLocal: true, isDefinition: true)
!1022 = !DIGlobalVariableExpression(var: !1023, expr: !DIExpression())
!1023 = distinct !DIGlobalVariable(scope: null, file: !678, line: 80, type: !385, isLocal: true, isDefinition: true)
!1024 = !DIGlobalVariableExpression(var: !1025, expr: !DIExpression())
!1025 = distinct !DIGlobalVariable(scope: null, file: !678, line: 82, type: !385, isLocal: true, isDefinition: true)
!1026 = !DIGlobalVariableExpression(var: !1027, expr: !DIExpression())
!1027 = distinct !DIGlobalVariable(scope: null, file: !678, line: 84, type: !88, isLocal: true, isDefinition: true)
!1028 = !DIGlobalVariableExpression(var: !1029, expr: !DIExpression())
!1029 = distinct !DIGlobalVariable(scope: null, file: !678, line: 86, type: !88, isLocal: true, isDefinition: true)
!1030 = !DIGlobalVariableExpression(var: !1031, expr: !DIExpression())
!1031 = distinct !DIGlobalVariable(scope: null, file: !678, line: 88, type: !88, isLocal: true, isDefinition: true)
!1032 = !DIGlobalVariableExpression(var: !1033, expr: !DIExpression())
!1033 = distinct !DIGlobalVariable(scope: null, file: !678, line: 90, type: !380, isLocal: true, isDefinition: true)
!1034 = !DIGlobalVariableExpression(var: !1035, expr: !DIExpression())
!1035 = distinct !DIGlobalVariable(scope: null, file: !678, line: 92, type: !392, isLocal: true, isDefinition: true)
!1036 = !DIGlobalVariableExpression(var: !1037, expr: !DIExpression())
!1037 = distinct !DIGlobalVariable(scope: null, file: !678, line: 94, type: !385, isLocal: true, isDefinition: true)
!1038 = !DIGlobalVariableExpression(var: !1039, expr: !DIExpression())
!1039 = distinct !DIGlobalVariable(scope: null, file: !678, line: 96, type: !894, isLocal: true, isDefinition: true)
!1040 = !DIGlobalVariableExpression(var: !1041, expr: !DIExpression())
!1041 = distinct !DIGlobalVariable(scope: null, file: !678, line: 98, type: !331, isLocal: true, isDefinition: true)
!1042 = !DIGlobalVariableExpression(var: !1043, expr: !DIExpression())
!1043 = distinct !DIGlobalVariable(scope: null, file: !678, line: 100, type: !380, isLocal: true, isDefinition: true)
!1044 = !DIGlobalVariableExpression(var: !1045, expr: !DIExpression())
!1045 = distinct !DIGlobalVariable(scope: null, file: !678, line: 102, type: !158, isLocal: true, isDefinition: true)
!1046 = !DIGlobalVariableExpression(var: !1047, expr: !DIExpression())
!1047 = distinct !DIGlobalVariable(scope: null, file: !678, line: 104, type: !401, isLocal: true, isDefinition: true)
!1048 = !DIGlobalVariableExpression(var: !1049, expr: !DIExpression())
!1049 = distinct !DIGlobalVariable(scope: null, file: !678, line: 106, type: !401, isLocal: true, isDefinition: true)
!1050 = !DIGlobalVariableExpression(var: !1051, expr: !DIExpression())
!1051 = distinct !DIGlobalVariable(scope: null, file: !678, line: 108, type: !331, isLocal: true, isDefinition: true)
!1052 = !DIGlobalVariableExpression(var: !1053, expr: !DIExpression())
!1053 = distinct !DIGlobalVariable(scope: null, file: !678, line: 110, type: !158, isLocal: true, isDefinition: true)
!1054 = !DIGlobalVariableExpression(var: !1055, expr: !DIExpression())
!1055 = distinct !DIGlobalVariable(scope: null, file: !678, line: 112, type: !385, isLocal: true, isDefinition: true)
!1056 = !DIGlobalVariableExpression(var: !1057, expr: !DIExpression())
!1057 = distinct !DIGlobalVariable(scope: null, file: !678, line: 114, type: !331, isLocal: true, isDefinition: true)
!1058 = !DIGlobalVariableExpression(var: !1059, expr: !DIExpression())
!1059 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !1060, isLocal: true, isDefinition: true)
!1060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 352, align: 8, elements: !1061)
!1061 = !{!1062}
!1062 = !DISubrange(count: 44, lowerBound: 0)
!1063 = !DIGlobalVariableExpression(var: !1064, expr: !DIExpression())
!1064 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !1065, isLocal: true, isDefinition: true)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 320, align: 8, elements: !1066)
!1066 = !{!1067}
!1067 = !DISubrange(count: 40, lowerBound: 0)
!1068 = !DIGlobalVariableExpression(var: !1069, expr: !DIExpression())
!1069 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !1070, isLocal: true, isDefinition: true)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 288, align: 8, elements: !1071)
!1071 = !{!1072}
!1072 = !DISubrange(count: 36, lowerBound: 0)
!1073 = !DIGlobalVariableExpression(var: !1074, expr: !DIExpression())
!1074 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !1075, isLocal: true, isDefinition: true)
!1075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 304, align: 8, elements: !1076)
!1076 = !{!1077}
!1077 = !DISubrange(count: 38, lowerBound: 0)
!1078 = !DIGlobalVariableExpression(var: !1079, expr: !DIExpression())
!1079 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !355, isLocal: true, isDefinition: true)
!1080 = !DIGlobalVariableExpression(var: !1081, expr: !DIExpression())
!1081 = distinct !DIGlobalVariable(name: "type *struct{Method string}", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!1082 = !DIGlobalVariableExpression(var: !1083, expr: !DIExpression())
!1083 = distinct !DIGlobalVariable(name: "type struct{Method string}", scope: !130, file: !130, line: 1, type: !814, isLocal: false, isDefinition: true, align: 64)
!1084 = !DIGlobalVariableExpression(var: !1085, expr: !DIExpression())
!1085 = distinct !DIGlobalVariable(name: "type internal/reflectlite.TypeError", scope: !130, file: !130, line: 1, type: !1086, isLocal: false, isDefinition: true, align: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1087)
!1087 = !{!133, !140, !135, !884, !885, !1088}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !928, size: 176, align: 8, offset: 256)
!1089 = !DIGlobalVariableExpression(var: !1090, expr: !DIExpression())
!1090 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.TypeError", scope: !130, file: !130, line: 1, type: !905, isLocal: false, isDefinition: true, align: 64)
!1091 = !DIGlobalVariableExpression(var: !1092, expr: !DIExpression())
!1092 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1059, type: !602, isLocal: true, isDefinition: true)
!1093 = !DIGlobalVariableExpression(var: !1094, expr: !DIExpression())
!1094 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !1095, isLocal: true, isDefinition: true)
!1095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 424, align: 8, elements: !1096)
!1096 = !{!1097}
!1097 = !DISubrange(count: 53, lowerBound: 0)
!1098 = !DIGlobalVariableExpression(var: !1099, expr: !DIExpression())
!1099 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !74, isLocal: true, isDefinition: true)
!1100 = !DIGlobalVariableExpression(var: !1101, expr: !DIExpression())
!1101 = distinct !DIGlobalVariable(scope: null, file: !678, line: 965, type: !88, isLocal: true, isDefinition: true)
!1102 = !DIGlobalVariableExpression(var: !1103, expr: !DIExpression())
!1103 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !1104, isLocal: true, isDefinition: true)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 216, align: 8, elements: !1105)
!1105 = !{!1106}
!1106 = !DISubrange(count: 27, lowerBound: 0)
!1107 = !DIGlobalVariableExpression(var: !1108, expr: !DIExpression())
!1108 = distinct !DIGlobalVariable(scope: null, file: !678, line: 329, type: !88, isLocal: true, isDefinition: true)
!1109 = !DIGlobalVariableExpression(var: !1110, expr: !DIExpression())
!1110 = distinct !DIGlobalVariable(scope: null, file: !678, line: 331, type: !88, isLocal: true, isDefinition: true)
!1111 = !DIGlobalVariableExpression(var: !1112, expr: !DIExpression())
!1112 = distinct !DIGlobalVariable(scope: null, file: !678, line: 338, type: !385, isLocal: true, isDefinition: true)
!1113 = !DIGlobalVariableExpression(var: !1114, expr: !DIExpression())
!1114 = distinct !DIGlobalVariable(scope: null, file: !678, line: 338, type: !151, isLocal: true, isDefinition: true)
!1115 = !DIGlobalVariableExpression(var: !1116, expr: !DIExpression())
!1116 = distinct !DIGlobalVariable(scope: null, file: !678, line: 340, type: !401, isLocal: true, isDefinition: true)
!1117 = !DIGlobalVariableExpression(var: !1118, expr: !DIExpression())
!1118 = distinct !DIGlobalVariable(scope: null, file: !678, line: 344, type: !151, isLocal: true, isDefinition: true)
!1119 = !DIGlobalVariableExpression(var: !1120, expr: !DIExpression())
!1120 = distinct !DIGlobalVariable(scope: null, file: !678, line: 346, type: !98, isLocal: true, isDefinition: true)
!1121 = !DIGlobalVariableExpression(var: !1122, expr: !DIExpression())
!1122 = distinct !DIGlobalVariable(scope: null, file: !678, line: 348, type: !151, isLocal: true, isDefinition: true)
!1123 = !DIGlobalVariableExpression(var: !1124, expr: !DIExpression())
!1124 = distinct !DIGlobalVariable(scope: null, file: !678, line: 348, type: !151, isLocal: true, isDefinition: true)
!1125 = !DIGlobalVariableExpression(var: !1126, expr: !DIExpression())
!1126 = distinct !DIGlobalVariable(scope: null, file: !678, line: 350, type: !331, isLocal: true, isDefinition: true)
!1127 = !DIGlobalVariableExpression(var: !1128, expr: !DIExpression())
!1128 = distinct !DIGlobalVariable(scope: null, file: !678, line: 350, type: !151, isLocal: true, isDefinition: true)
!1129 = !DIGlobalVariableExpression(var: !1130, expr: !DIExpression())
!1130 = distinct !DIGlobalVariable(scope: null, file: !678, line: 354, type: !380, isLocal: true, isDefinition: true)
!1131 = !DIGlobalVariableExpression(var: !1132, expr: !DIExpression())
!1132 = distinct !DIGlobalVariable(scope: null, file: !678, line: 356, type: !422, isLocal: true, isDefinition: true)
!1133 = !DIGlobalVariableExpression(var: !1134, expr: !DIExpression())
!1134 = distinct !DIGlobalVariable(scope: null, file: !678, line: 359, type: !151, isLocal: true, isDefinition: true)
!1135 = !DIGlobalVariableExpression(var: !1136, expr: !DIExpression())
!1136 = distinct !DIGlobalVariable(scope: null, file: !678, line: 359, type: !151, isLocal: true, isDefinition: true)
!1137 = !DIGlobalVariableExpression(var: !1138, expr: !DIExpression())
!1138 = distinct !DIGlobalVariable(scope: null, file: !678, line: 361, type: !151, isLocal: true, isDefinition: true)
!1139 = !DIGlobalVariableExpression(var: !1140, expr: !DIExpression())
!1140 = distinct !DIGlobalVariable(scope: null, file: !678, line: 365, type: !151, isLocal: true, isDefinition: true)
!1141 = !DIGlobalVariableExpression(var: !1142, expr: !DIExpression())
!1142 = distinct !DIGlobalVariable(scope: null, file: !678, line: 368, type: !98, isLocal: true, isDefinition: true)
!1143 = !DIGlobalVariableExpression(var: !1144, expr: !DIExpression())
!1144 = distinct !DIGlobalVariable(scope: null, file: !678, line: 372, type: !717, isLocal: true, isDefinition: true)
!1145 = !DIGlobalVariableExpression(var: !1146, expr: !DIExpression())
!1146 = distinct !DIGlobalVariable(scope: null, file: !678, line: 356, type: !422, isLocal: true, isDefinition: true)
!1147 = !DIGlobalVariableExpression(var: !1148, expr: !DIExpression())
!1148 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !336, isLocal: true, isDefinition: true)
!1149 = !DIGlobalVariableExpression(var: !1150, expr: !DIExpression())
!1150 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !355, isLocal: true, isDefinition: true)
!1151 = !DIGlobalVariableExpression(var: !1152, expr: !DIExpression())
!1152 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1212, type: !55, isLocal: true, isDefinition: true)
!1153 = !DIGlobalVariableExpression(var: !1154, expr: !DIExpression())
!1154 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1212, type: !163, isLocal: true, isDefinition: true)
!1155 = !DIGlobalVariableExpression(var: !1156, expr: !DIExpression())
!1156 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !355, isLocal: true, isDefinition: true)
!1157 = !DIGlobalVariableExpression(var: !1158, expr: !DIExpression())
!1158 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !355, isLocal: true, isDefinition: true)
!1159 = !DIGlobalVariableExpression(var: !1160, expr: !DIExpression())
!1160 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !336, isLocal: true, isDefinition: true)
!1161 = !DIGlobalVariableExpression(var: !1162, expr: !DIExpression())
!1162 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !55, isLocal: true, isDefinition: true)
!1163 = !DIGlobalVariableExpression(var: !1164, expr: !DIExpression())
!1164 = distinct !DIGlobalVariable(scope: null, file: !678, line: 1, type: !1165, isLocal: true, isDefinition: true)
!1165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 248, align: 8, elements: !1166)
!1166 = !{!1167}
!1167 = !DISubrange(count: 31, lowerBound: 0)
!1168 = !DIGlobalVariableExpression(var: !1169, expr: !DIExpression())
!1169 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1170, isLocal: true, isDefinition: true)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 328, align: 8, elements: !1171)
!1171 = !{!1172}
!1172 = !DISubrange(count: 41, lowerBound: 0)
!1173 = !DIGlobalVariableExpression(var: !1174, expr: !DIExpression())
!1174 = distinct !DIGlobalVariable(scope: null, file: !726, line: 441, type: !331, isLocal: true, isDefinition: true)
!1175 = !DIGlobalVariableExpression(var: !1176, expr: !DIExpression())
!1176 = distinct !DIGlobalVariable(scope: null, file: !726, line: 650, type: !401, isLocal: true, isDefinition: true)
!1177 = !DIGlobalVariableExpression(var: !1178, expr: !DIExpression())
!1178 = distinct !DIGlobalVariable(scope: null, file: !726, line: 658, type: !401, isLocal: true, isDefinition: true)
!1179 = !DIGlobalVariableExpression(var: !1180, expr: !DIExpression())
!1180 = distinct !DIGlobalVariable(scope: null, file: !726, line: 667, type: !401, isLocal: true, isDefinition: true)
!1181 = !DIGlobalVariableExpression(var: !1182, expr: !DIExpression())
!1182 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1183, isLocal: true, isDefinition: true)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 296, align: 8, elements: !1184)
!1184 = !{!1185}
!1185 = !DISubrange(count: 37, lowerBound: 0)
!1186 = !DIGlobalVariableExpression(var: !1187, expr: !DIExpression())
!1187 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1188, isLocal: true, isDefinition: true)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 336, align: 8, elements: !1189)
!1189 = !{!1190}
!1190 = !DISubrange(count: 42, lowerBound: 0)
!1191 = !DIGlobalVariableExpression(var: !1192, expr: !DIExpression())
!1192 = distinct !DIGlobalVariable(scope: null, file: !726, line: 824, type: !158, isLocal: true, isDefinition: true)
!1193 = !DIGlobalVariableExpression(var: !1194, expr: !DIExpression())
!1194 = distinct !DIGlobalVariable(scope: null, file: !726, line: 843, type: !401, isLocal: true, isDefinition: true)
!1195 = !DIGlobalVariableExpression(var: !1196, expr: !DIExpression())
!1196 = distinct !DIGlobalVariable(scope: null, file: !726, line: 630, type: !88, isLocal: true, isDefinition: true)
!1197 = !DIGlobalVariableExpression(var: !1198, expr: !DIExpression())
!1198 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1425, type: !1183, isLocal: true, isDefinition: true)
!1199 = !DIGlobalVariableExpression(var: !1200, expr: !DIExpression())
!1200 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1425, type: !1201, isLocal: true, isDefinition: true)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 232, align: 8, elements: !1202)
!1202 = !{!1203}
!1203 = !DISubrange(count: 29, lowerBound: 0)
!1204 = !DIGlobalVariableExpression(var: !1205, expr: !DIExpression())
!1205 = distinct !DIGlobalVariable(scope: null, file: !726, line: 875, type: !331, isLocal: true, isDefinition: true)
!1206 = !DIGlobalVariableExpression(var: !1207, expr: !DIExpression())
!1207 = distinct !DIGlobalVariable(scope: null, file: !726, line: 407, type: !1070, isLocal: true, isDefinition: true)
!1208 = !DIGlobalVariableExpression(var: !1209, expr: !DIExpression())
!1209 = distinct !DIGlobalVariable(scope: null, file: !726, line: 407, type: !1210, isLocal: true, isDefinition: true)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 152, align: 8, elements: !1211)
!1211 = !{!1212}
!1212 = !DISubrange(count: 19, lowerBound: 0)
!1213 = !DIGlobalVariableExpression(var: !1214, expr: !DIExpression())
!1214 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !336, isLocal: true, isDefinition: true)
!1215 = !DIGlobalVariableExpression(var: !1216, expr: !DIExpression())
!1216 = distinct !DIGlobalVariable(scope: null, file: !726, line: 882, type: !401, isLocal: true, isDefinition: true)
!1217 = !DIGlobalVariableExpression(var: !1218, expr: !DIExpression())
!1218 = distinct !DIGlobalVariable(scope: null, file: !726, line: 2067, type: !717, isLocal: true, isDefinition: true)
!1219 = !DIGlobalVariableExpression(var: !1220, expr: !DIExpression())
!1220 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1221, isLocal: true, isDefinition: true)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 472, align: 8, elements: !1222)
!1222 = !{!1223}
!1223 = !DISubrange(count: 59, lowerBound: 0)
!1224 = !DIGlobalVariableExpression(var: !1225, expr: !DIExpression())
!1225 = distinct !DIGlobalVariable(scope: null, file: !726, line: 2085, type: !602, isLocal: true, isDefinition: true)
!1226 = !DIGlobalVariableExpression(var: !1227, expr: !DIExpression())
!1227 = distinct !DIGlobalVariable(scope: null, file: !726, line: 2090, type: !712, isLocal: true, isDefinition: true)
!1228 = !DIGlobalVariableExpression(var: !1229, expr: !DIExpression())
!1229 = distinct !DIGlobalVariable(scope: null, file: !726, line: 2101, type: !712, isLocal: true, isDefinition: true)
!1230 = !DIGlobalVariableExpression(var: !1231, expr: !DIExpression())
!1231 = distinct !DIGlobalVariable(scope: null, file: !726, line: 598, type: !401, isLocal: true, isDefinition: true)
!1232 = !DIGlobalVariableExpression(var: !1233, expr: !DIExpression())
!1233 = distinct !DIGlobalVariable(scope: null, file: !726, line: 573, type: !401, isLocal: true, isDefinition: true)
!1234 = !DIGlobalVariableExpression(var: !1235, expr: !DIExpression())
!1235 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1201, isLocal: true, isDefinition: true)
!1236 = !DIGlobalVariableExpression(var: !1237, expr: !DIExpression())
!1237 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1957, type: !331, isLocal: true, isDefinition: true)
!1238 = !DIGlobalVariableExpression(var: !1239, expr: !DIExpression())
!1239 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !336, isLocal: true, isDefinition: true)
!1240 = !DIGlobalVariableExpression(var: !1241, expr: !DIExpression())
!1241 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1242, isLocal: true, isDefinition: true)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 272, align: 8, elements: !1243)
!1243 = !{!1244}
!1244 = !DISubrange(count: 34, lowerBound: 0)
!1245 = !DIGlobalVariableExpression(var: !1246, expr: !DIExpression())
!1246 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1041, type: !401, isLocal: true, isDefinition: true)
!1247 = !DIGlobalVariableExpression(var: !1248, expr: !DIExpression())
!1248 = distinct !DIGlobalVariable(scope: null, file: !726, line: 488, type: !158, isLocal: true, isDefinition: true)
!1249 = !DIGlobalVariableExpression(var: !1250, expr: !DIExpression())
!1250 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1183, isLocal: true, isDefinition: true)
!1251 = !DIGlobalVariableExpression(var: !1252, expr: !DIExpression())
!1252 = distinct !DIGlobalVariable(scope: null, file: !726, line: 247, type: !401, isLocal: true, isDefinition: true)
!1253 = !DIGlobalVariableExpression(var: !1254, expr: !DIExpression())
!1254 = distinct !DIGlobalVariable(scope: null, file: !726, line: 201, type: !151, isLocal: true, isDefinition: true)
!1255 = !DIGlobalVariableExpression(var: !1256, expr: !DIExpression())
!1256 = distinct !DIGlobalVariable(scope: null, file: !726, line: 209, type: !67, isLocal: true, isDefinition: true)
!1257 = !DIGlobalVariableExpression(var: !1258, expr: !DIExpression())
!1258 = distinct !DIGlobalVariable(scope: null, file: !726, line: 806, type: !158, isLocal: true, isDefinition: true)
!1259 = !DIGlobalVariableExpression(var: !1260, expr: !DIExpression())
!1260 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1117, type: !422, isLocal: true, isDefinition: true)
!1261 = !DIGlobalVariableExpression(var: !1262, expr: !DIExpression())
!1262 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1263, isLocal: true, isDefinition: true)
!1263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 400, align: 8, elements: !1264)
!1264 = !{!1265}
!1265 = !DISubrange(count: 50, lowerBound: 0)
!1266 = !DIGlobalVariableExpression(var: !1267, expr: !DIExpression())
!1267 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1074, type: !88, isLocal: true, isDefinition: true)
!1268 = !DIGlobalVariableExpression(var: !1269, expr: !DIExpression())
!1269 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1270, isLocal: true, isDefinition: true)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 312, align: 8, elements: !1271)
!1271 = !{!1272}
!1272 = !DISubrange(count: 39, lowerBound: 0)
!1273 = !DIGlobalVariableExpression(var: !1274, expr: !DIExpression())
!1274 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1275, isLocal: true, isDefinition: true)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 360, align: 8, elements: !1276)
!1276 = !{!1277}
!1277 = !DISubrange(count: 45, lowerBound: 0)
!1278 = !DIGlobalVariableExpression(var: !1279, expr: !DIExpression())
!1279 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1047, type: !103, isLocal: true, isDefinition: true)
!1280 = !DIGlobalVariableExpression(var: !1281, expr: !DIExpression())
!1281 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1062, type: !1104, isLocal: true, isDefinition: true)
!1282 = !DIGlobalVariableExpression(var: !1283, expr: !DIExpression())
!1283 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1398, type: !362, isLocal: true, isDefinition: true)
!1284 = !DIGlobalVariableExpression(var: !1285, expr: !DIExpression())
!1285 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1411, type: !1286, isLocal: true, isDefinition: true)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 208, align: 8, elements: !1287)
!1287 = !{!1288}
!1288 = !DISubrange(count: 26, lowerBound: 0)
!1289 = !DIGlobalVariableExpression(var: !1290, expr: !DIExpression())
!1290 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1183, isLocal: true, isDefinition: true)
!1291 = !DIGlobalVariableExpression(var: !1292, expr: !DIExpression())
!1292 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1237, type: !336, isLocal: true, isDefinition: true)
!1293 = !DIGlobalVariableExpression(var: !1294, expr: !DIExpression())
!1294 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1237, type: !845, isLocal: true, isDefinition: true)
!1295 = !DIGlobalVariableExpression(var: !1296, expr: !DIExpression())
!1296 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1275, type: !88, isLocal: true, isDefinition: true)
!1297 = !DIGlobalVariableExpression(var: !1298, expr: !DIExpression())
!1298 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1299, isLocal: true, isDefinition: true)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 344, align: 8, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 43, lowerBound: 0)
!1302 = !DIGlobalVariableExpression(var: !1303, expr: !DIExpression())
!1303 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1270, isLocal: true, isDefinition: true)
!1304 = !DIGlobalVariableExpression(var: !1305, expr: !DIExpression())
!1305 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1341, type: !392, isLocal: true, isDefinition: true)
!1306 = !DIGlobalVariableExpression(var: !1307, expr: !DIExpression())
!1307 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1328, type: !422, isLocal: true, isDefinition: true)
!1308 = !DIGlobalVariableExpression(var: !1309, expr: !DIExpression())
!1309 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1294, type: !385, isLocal: true, isDefinition: true)
!1310 = !DIGlobalVariableExpression(var: !1311, expr: !DIExpression())
!1311 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1373, type: !67, isLocal: true, isDefinition: true)
!1312 = !DIGlobalVariableExpression(var: !1313, expr: !DIExpression())
!1313 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1314, isLocal: true, isDefinition: true)
!1314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 376, align: 8, elements: !1315)
!1315 = !{!1316}
!1316 = !DISubrange(count: 47, lowerBound: 0)
!1317 = !DIGlobalVariableExpression(var: !1318, expr: !DIExpression())
!1318 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1987, type: !712, isLocal: true, isDefinition: true)
!1319 = !DIGlobalVariableExpression(var: !1320, expr: !DIExpression())
!1320 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1321, isLocal: true, isDefinition: true)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 440, align: 8, elements: !1322)
!1322 = !{!1323}
!1323 = !DISubrange(count: 55, lowerBound: 0)
!1324 = !DIGlobalVariableExpression(var: !1325, expr: !DIExpression())
!1325 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1095, isLocal: true, isDefinition: true)
!1326 = !DIGlobalVariableExpression(var: !1327, expr: !DIExpression())
!1327 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1352, type: !380, isLocal: true, isDefinition: true)
!1328 = !DIGlobalVariableExpression(var: !1329, expr: !DIExpression())
!1329 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1315, type: !88, isLocal: true, isDefinition: true)
!1330 = !DIGlobalVariableExpression(var: !1331, expr: !DIExpression())
!1331 = distinct !DIGlobalVariable(scope: null, file: !726, line: 734, type: !401, isLocal: true, isDefinition: true)
!1332 = !DIGlobalVariableExpression(var: !1333, expr: !DIExpression())
!1333 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1270, isLocal: true, isDefinition: true)
!1334 = !DIGlobalVariableExpression(var: !1335, expr: !DIExpression())
!1335 = distinct !DIGlobalVariable(scope: null, file: !726, line: 642, type: !151, isLocal: true, isDefinition: true)
!1336 = !DIGlobalVariableExpression(var: !1337, expr: !DIExpression())
!1337 = distinct !DIGlobalVariable(scope: null, file: !726, line: 642, type: !88, isLocal: true, isDefinition: true)
!1338 = !DIGlobalVariableExpression(var: !1339, expr: !DIExpression())
!1339 = distinct !DIGlobalVariable(scope: null, file: !726, line: 541, type: !331, isLocal: true, isDefinition: true)
!1340 = !DIGlobalVariableExpression(var: !1341, expr: !DIExpression())
!1341 = distinct !DIGlobalVariable(scope: null, file: !726, line: 273, type: !434, isLocal: true, isDefinition: true)
!1342 = !DIGlobalVariableExpression(var: !1343, expr: !DIExpression())
!1343 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !336, isLocal: true, isDefinition: true)
!1344 = !DIGlobalVariableExpression(var: !1345, expr: !DIExpression())
!1345 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !55, isLocal: true, isDefinition: true)
!1346 = !DIGlobalVariableExpression(var: !1347, expr: !DIExpression())
!1347 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1348, isLocal: true, isDefinition: true)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 368, align: 8, elements: !1349)
!1349 = !{!1350}
!1350 = !DISubrange(count: 46, lowerBound: 0)
!1351 = !DIGlobalVariableExpression(var: !1352, expr: !DIExpression())
!1352 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1218, type: !422, isLocal: true, isDefinition: true)
!1353 = !DIGlobalVariableExpression(var: !1354, expr: !DIExpression())
!1354 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1355, isLocal: true, isDefinition: true)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 384, align: 8, elements: !1356)
!1356 = !{!1357}
!1357 = !DISubrange(count: 48, lowerBound: 0)
!1358 = !DIGlobalVariableExpression(var: !1359, expr: !DIExpression())
!1359 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !845, isLocal: true, isDefinition: true)
!1360 = !DIGlobalVariableExpression(var: !1361, expr: !DIExpression())
!1361 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !845, isLocal: true, isDefinition: true)
!1362 = !DIGlobalVariableExpression(var: !1363, expr: !DIExpression())
!1363 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1201, isLocal: true, isDefinition: true)
!1364 = !DIGlobalVariableExpression(var: !1365, expr: !DIExpression())
!1365 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1201, isLocal: true, isDefinition: true)
!1366 = !DIGlobalVariableExpression(var: !1367, expr: !DIExpression())
!1367 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1368, isLocal: true, isDefinition: true)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 280, align: 8, elements: !872)
!1369 = !DIGlobalVariableExpression(var: !1370, expr: !DIExpression())
!1370 = distinct !DIGlobalVariable(name: "internal/reflectlite.zerobuffer", linkageName: "internal/reflectlite.zerobuffer", scope: !726, file: !726, line: 1710, type: !9, isLocal: false, isDefinition: true, align: 64)
!1371 = !DIGlobalVariableExpression(var: !1372, expr: !DIExpression())
!1372 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1716, type: !355, isLocal: true, isDefinition: true)
!1373 = !DIGlobalVariableExpression(var: !1374, expr: !DIExpression())
!1374 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1716, type: !355, isLocal: true, isDefinition: true)
!1375 = !DIGlobalVariableExpression(var: !1376, expr: !DIExpression())
!1376 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1791, type: !74, isLocal: true, isDefinition: true)
!1377 = !DIGlobalVariableExpression(var: !1378, expr: !DIExpression())
!1378 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1791, type: !894, isLocal: true, isDefinition: true)
!1379 = !DIGlobalVariableExpression(var: !1380, expr: !DIExpression())
!1380 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1793, type: !74, isLocal: true, isDefinition: true)
!1381 = !DIGlobalVariableExpression(var: !1382, expr: !DIExpression())
!1382 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1793, type: !331, isLocal: true, isDefinition: true)
!1383 = !DIGlobalVariableExpression(var: !1384, expr: !DIExpression())
!1384 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1793, type: !385, isLocal: true, isDefinition: true)
!1385 = !DIGlobalVariableExpression(var: !1386, expr: !DIExpression())
!1386 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1270, isLocal: true, isDefinition: true)
!1387 = !DIGlobalVariableExpression(var: !1388, expr: !DIExpression())
!1388 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1825, type: !1389, isLocal: true, isDefinition: true)
!1389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 168, align: 8, elements: !1390)
!1390 = !{!1391}
!1391 = !DISubrange(count: 21, lowerBound: 0)
!1392 = !DIGlobalVariableExpression(var: !1393, expr: !DIExpression())
!1393 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1825, type: !151, isLocal: true, isDefinition: true)
!1394 = !DIGlobalVariableExpression(var: !1395, expr: !DIExpression())
!1395 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1188, isLocal: true, isDefinition: true)
!1396 = !DIGlobalVariableExpression(var: !1397, expr: !DIExpression())
!1397 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1879, type: !712, isLocal: true, isDefinition: true)
!1398 = !DIGlobalVariableExpression(var: !1399, expr: !DIExpression())
!1399 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1903, type: !385, isLocal: true, isDefinition: true)
!1400 = !DIGlobalVariableExpression(var: !1401, expr: !DIExpression())
!1401 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1242, isLocal: true, isDefinition: true)
!1402 = !DIGlobalVariableExpression(var: !1403, expr: !DIExpression())
!1403 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1165, isLocal: true, isDefinition: true)
!1404 = !DIGlobalVariableExpression(var: !1405, expr: !DIExpression())
!1405 = distinct !DIGlobalVariable(scope: null, file: !726, line: 2125, type: !88, isLocal: true, isDefinition: true)
!1406 = !DIGlobalVariableExpression(var: !1407, expr: !DIExpression())
!1407 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1299, isLocal: true, isDefinition: true)
!1408 = !DIGlobalVariableExpression(var: !1409, expr: !DIExpression())
!1409 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !845, isLocal: true, isDefinition: true)
!1410 = !DIGlobalVariableExpression(var: !1411, expr: !DIExpression())
!1411 = distinct !DIGlobalVariable(scope: null, file: !1412, line: 1, type: !1104, isLocal: true, isDefinition: true)
!1412 = !DIFile(filename: "visiblefields.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1413 = !DIGlobalVariableExpression(var: !1414, expr: !DIExpression())
!1414 = distinct !DIGlobalVariable(scope: null, file: !1412, line: 1, type: !1065, isLocal: true, isDefinition: true)
!1415 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1416 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1417 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1418 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1419)
!1419 = !{!1420, !1423, !1425, !1427, !1432, !1434, !1439, !1441, !1443, !1445}
!1420 = !DIGlobalVariableExpression(var: !1421, expr: !DIExpression())
!1421 = distinct !DIGlobalVariable(scope: null, file: !1422, line: 1, type: !1095, isLocal: true, isDefinition: true)
!1422 = !DIFile(filename: "value.go", directory: "/usr/local/go/src/sync/atomic")
!1423 = !DIGlobalVariableExpression(var: !1424, expr: !DIExpression())
!1424 = distinct !DIGlobalVariable(name: "type *string", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!1425 = !DIGlobalVariableExpression(var: !1426, expr: !DIExpression())
!1426 = distinct !DIGlobalVariable(name: "type string", scope: !130, file: !130, line: 1, type: !131, isLocal: false, isDefinition: true, align: 64)
!1427 = !DIGlobalVariableExpression(var: !1428, expr: !DIExpression())
!1428 = distinct !DIGlobalVariable(scope: null, file: !1422, line: 1, type: !1429, isLocal: true, isDefinition: true)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 480, align: 8, elements: !1430)
!1430 = !{!1431}
!1431 = !DISubrange(count: 60, lowerBound: 0)
!1432 = !DIGlobalVariableExpression(var: !1433, expr: !DIExpression())
!1433 = distinct !DIGlobalVariable(name: "sync/atomic.firstStoreInProgress", linkageName: "sync/atomic.firstStoreInProgress", scope: !1422, file: !1422, line: 42, type: !183, isLocal: false, isDefinition: true, align: 8)
!1434 = !DIGlobalVariableExpression(var: !1435, expr: !DIExpression())
!1435 = distinct !DIGlobalVariable(scope: null, file: !1422, line: 1, type: !1436, isLocal: true, isDefinition: true)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 560, align: 8, elements: !1437)
!1437 = !{!1438}
!1438 = !DISubrange(count: 70, lowerBound: 0)
!1439 = !DIGlobalVariableExpression(var: !1440, expr: !DIExpression())
!1440 = distinct !DIGlobalVariable(scope: null, file: !1422, line: 1, type: !1188, isLocal: true, isDefinition: true)
!1441 = !DIGlobalVariableExpression(var: !1442, expr: !DIExpression())
!1442 = distinct !DIGlobalVariable(scope: null, file: !1422, line: 1, type: !1221, isLocal: true, isDefinition: true)
!1443 = !DIGlobalVariableExpression(var: !1444, expr: !DIExpression())
!1444 = distinct !DIGlobalVariable(scope: null, file: !1422, line: 1, type: !1170, isLocal: true, isDefinition: true)
!1445 = !DIGlobalVariableExpression(var: !1446, expr: !DIExpression())
!1446 = distinct !DIGlobalVariable(scope: null, file: !1422, line: 1, type: !1447, isLocal: true, isDefinition: true)
!1447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 464, align: 8, elements: !1448)
!1448 = !{!1449}
!1449 = !DISubrange(count: 58, lowerBound: 0)
!1450 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1451 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1452)
!1452 = !{!1453, !1456, !1458, !1460}
!1453 = !DIGlobalVariableExpression(var: !1454, expr: !DIExpression())
!1454 = distinct !DIGlobalVariable(scope: null, file: !1455, line: 1, type: !717, isLocal: true, isDefinition: true)
!1455 = !DIFile(filename: "checkpoint.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!1456 = !DIGlobalVariableExpression(var: !1457, expr: !DIExpression())
!1457 = distinct !DIGlobalVariable(name: "type *string", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!1458 = !DIGlobalVariableExpression(var: !1459, expr: !DIExpression())
!1459 = distinct !DIGlobalVariable(name: "type string", scope: !130, file: !130, line: 1, type: !131, isLocal: false, isDefinition: true, align: 64)
!1460 = !DIGlobalVariableExpression(var: !1461, expr: !DIExpression())
!1461 = distinct !DIGlobalVariable(scope: null, file: !1455, line: 1, type: !1188, isLocal: true, isDefinition: true)
!1462 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1463)
!1463 = !{!0, !50, !52, !1464, !1466, !1468, !1474, !1476, !1478, !58, !61, !1480, !65, !1482, !70, !1484, !1486, !1488, !1491, !72, !77, !83, !1493}
!1464 = !DIGlobalVariableExpression(var: !1465, expr: !DIExpression())
!1465 = distinct !DIGlobalVariable(name: "type *string", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!1466 = !DIGlobalVariableExpression(var: !1467, expr: !DIExpression())
!1467 = distinct !DIGlobalVariable(name: "type string", scope: !130, file: !130, line: 1, type: !131, isLocal: false, isDefinition: true, align: 64)
!1468 = !DIGlobalVariableExpression(var: !1469, expr: !DIExpression())
!1469 = distinct !DIGlobalVariable(scope: null, file: !1470, line: 1, type: !1471, isLocal: true, isDefinition: true)
!1470 = !DIFile(filename: "queue.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 496, align: 8, elements: !1472)
!1472 = !{!1473}
!1473 = !DISubrange(count: 62, lowerBound: 0)
!1474 = !DIGlobalVariableExpression(var: !1475, expr: !DIExpression())
!1475 = distinct !DIGlobalVariable(scope: null, file: !1470, line: 1, type: !1471, isLocal: true, isDefinition: true)
!1476 = !DIGlobalVariableExpression(var: !1477, expr: !DIExpression())
!1477 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !717, isLocal: true, isDefinition: true)
!1478 = !DIGlobalVariableExpression(var: !1479, expr: !DIExpression())
!1479 = distinct !DIGlobalVariable(name: "internal/task.goroutineID", linkageName: "internal/task.goroutineID", scope: !2, file: !2, line: 38, type: !21, isLocal: false, isDefinition: true, align: 64)
!1480 = !DIGlobalVariableExpression(var: !1481, expr: !DIExpression())
!1481 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !93, isLocal: true, isDefinition: true)
!1482 = !DIGlobalVariableExpression(var: !1483, expr: !DIExpression())
!1483 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !717, isLocal: true, isDefinition: true)
!1484 = !DIGlobalVariableExpression(var: !1485, expr: !DIExpression())
!1485 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !717, isLocal: true, isDefinition: true)
!1486 = !DIGlobalVariableExpression(var: !1487, expr: !DIExpression())
!1487 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !331, isLocal: true, isDefinition: true)
!1488 = !DIGlobalVariableExpression(var: !1489, expr: !DIExpression())
!1489 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !1490, isLocal: true, isDefinition: true)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 176, align: 8, elements: !929)
!1491 = !DIGlobalVariableExpression(var: !1492, expr: !DIExpression())
!1492 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !380, isLocal: true, isDefinition: true)
!1493 = !DIGlobalVariableExpression(var: !1494, expr: !DIExpression())
!1494 = distinct !DIGlobalVariable(name: "internal/task.stackScanLock", linkageName: "internal/task.stackScanLock", scope: !2, file: !2, line: 263, type: !63, isLocal: false, isDefinition: true, align: 32)
!1495 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1496 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1497)
!1497 = !{!1498, !1501, !1503, !1506, !1508, !1511, !1513, !1515, !1517, !1519, !1522, !1524, !1526, !1529, !1532, !1535, !1538, !1540, !1542, !1544, !1561, !1563, !1566, !1569, !85, !91, !96, !1571, !1573, !101, !1575, !106, !1577, !1579, !1581, !1583, !1585, !1587, !1589, !1594, !1597, !1599, !1601, !1603, !1606, !1608, !1610, !1612, !1614, !1616, !1618, !1620, !1622, !1624, !1626, !1628, !1630, !1632, !111, !1634, !114, !1636, !117, !1642, !1644, !1646, !1648, !119, !121, !1650, !1652, !1654, !1656, !1658, !123, !1660, !1662, !1664, !1666, !1684, !1686, !1688, !1708, !1710, !1712, !1714, !1716, !1718, !1720, !1722, !125, !1724, !1726, !1729, !1731}
!1498 = !DIGlobalVariableExpression(var: !1499, expr: !DIExpression())
!1499 = distinct !DIGlobalVariable(name: "runtime.xorshift32State", linkageName: "runtime.xorshift32State", scope: !1500, file: !1500, line: 32, type: !43, isLocal: false, isDefinition: true, align: 32)
!1500 = !DIFile(filename: "algorithm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1501 = !DIGlobalVariableExpression(var: !1502, expr: !DIExpression())
!1502 = distinct !DIGlobalVariable(name: "runtime.xorshift64State", linkageName: "runtime.xorshift64State", scope: !1500, file: !1500, line: 52, type: !11, isLocal: false, isDefinition: true, align: 64)
!1503 = !DIGlobalVariableExpression(var: !1504, expr: !DIExpression())
!1504 = distinct !DIGlobalVariable(name: "runtime.inf", linkageName: "runtime.inf", scope: !1505, file: !1505, line: 9, type: !472, isLocal: false, isDefinition: true, align: 64)
!1505 = !DIFile(filename: "float.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1506 = !DIGlobalVariableExpression(var: !1507, expr: !DIExpression())
!1507 = distinct !DIGlobalVariable(name: "runtime.heapSize", linkageName: "runtime.heapSize", scope: !113, file: !113, line: 298, type: !21, isLocal: false, isDefinition: true, align: 64)
!1508 = !DIGlobalVariableExpression(var: !1509, expr: !DIExpression())
!1509 = distinct !DIGlobalVariable(scope: null, file: !1510, line: 210, type: !1490, isLocal: true, isDefinition: true)
!1510 = !DIFile(filename: "chan.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1511 = !DIGlobalVariableExpression(var: !1512, expr: !DIExpression())
!1512 = distinct !DIGlobalVariable(scope: null, file: !1510, line: 267, type: !1490, isLocal: true, isDefinition: true)
!1513 = !DIGlobalVariableExpression(var: !1514, expr: !DIExpression())
!1514 = distinct !DIGlobalVariable(scope: null, file: !1510, line: 348, type: !67, isLocal: true, isDefinition: true)
!1515 = !DIGlobalVariableExpression(var: !1516, expr: !DIExpression())
!1516 = distinct !DIGlobalVariable(scope: null, file: !1510, line: 358, type: !103, isLocal: true, isDefinition: true)
!1517 = !DIGlobalVariableExpression(var: !1518, expr: !DIExpression())
!1518 = distinct !DIGlobalVariable(name: "runtime.chanSelectLock", linkageName: "runtime.chanSelectLock", scope: !1510, file: !1510, line: 402, type: !63, isLocal: false, isDefinition: true, align: 32)
!1519 = !DIGlobalVariableExpression(var: !1520, expr: !DIExpression())
!1520 = distinct !DIGlobalVariable(scope: null, file: !1521, line: 1, type: !93, isLocal: true, isDefinition: true)
!1521 = !DIFile(filename: "debug.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1522 = !DIGlobalVariableExpression(var: !1523, expr: !DIExpression())
!1523 = distinct !DIGlobalVariable(name: "type *string", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!1524 = !DIGlobalVariableExpression(var: !1525, expr: !DIExpression())
!1525 = distinct !DIGlobalVariable(name: "type string", scope: !130, file: !130, line: 1, type: !131, isLocal: false, isDefinition: true, align: 64)
!1526 = !DIGlobalVariableExpression(var: !1527, expr: !DIExpression())
!1527 = distinct !DIGlobalVariable(scope: null, file: !1528, line: 13, type: !88, isLocal: true, isDefinition: true)
!1528 = !DIFile(filename: "env.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1529 = !DIGlobalVariableExpression(var: !1530, expr: !DIExpression())
!1530 = distinct !DIGlobalVariable(name: "runtime.godebugUpdate", linkageName: "runtime.godebugUpdate", scope: !1531, file: !1531, line: 142, type: !305, isLocal: false, isDefinition: true, align: 64)
!1531 = !DIFile(filename: "runtime.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1532 = !DIGlobalVariableExpression(var: !1533, expr: !DIExpression())
!1533 = distinct !DIGlobalVariable(name: "runtime.buildVersion", linkageName: "runtime.buildVersion", scope: !1534, file: !1534, line: 10, type: !319, isLocal: false, isDefinition: true, align: 64)
!1534 = !DIFile(filename: "extern.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1535 = !DIGlobalVariableExpression(var: !1536, expr: !DIExpression())
!1536 = distinct !DIGlobalVariable(name: "runtime.zeroSizedAlloc", linkageName: "runtime.zeroSizedAlloc", scope: !1537, file: !1537, line: 30, type: !45, isLocal: false, isDefinition: true, align: 8)
!1537 = !DIFile(filename: "gc_boehm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1538 = !DIGlobalVariableExpression(var: !1539, expr: !DIExpression())
!1539 = distinct !DIGlobalVariable(name: "runtime.gcLock", linkageName: "runtime.gcLock", scope: !1537, file: !1537, line: 32, type: !63, isLocal: false, isDefinition: true, align: 32)
!1540 = !DIGlobalVariableExpression(var: !1541, expr: !DIExpression())
!1541 = distinct !DIGlobalVariable(scope: null, file: !1537, line: 61, type: !1170, isLocal: true, isDefinition: true)
!1542 = !DIGlobalVariableExpression(var: !1543, expr: !DIExpression())
!1543 = distinct !DIGlobalVariable(scope: null, file: !1537, line: 93, type: !74, isLocal: true, isDefinition: true)
!1544 = !DIGlobalVariableExpression(var: !1545, expr: !DIExpression())
!1545 = distinct !DIGlobalVariable(name: "runtime.gcMemStats", linkageName: "runtime.gcMemStats", scope: !1537, file: !1537, line: 112, type: !1546, isLocal: false, isDefinition: true, align: 64)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.libgc_prof_stats", baseType: !1547)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, size: 768, align: 64, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "heapsize_full", baseType: !21, size: 64, align: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "free_bytes_full", baseType: !21, size: 64, align: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "unmapped_bytes", baseType: !21, size: 64, align: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_allocd_since_gc", baseType: !21, size: 64, align: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "allocd_bytes_before_gc", baseType: !21, size: 64, align: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "non_gc_bytes", baseType: !21, size: 64, align: 64, offset: 320)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "gc_no", baseType: !21, size: 64, align: 64, offset: 384)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "markers_m1", baseType: !21, size: 64, align: 64, offset: 448)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_reclaimed_since_gc", baseType: !21, size: 64, align: 64, offset: 512)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_bytes_before_gc", baseType: !21, size: 64, align: 64, offset: 576)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "expl_freed_bytes_since_gc", baseType: !21, size: 64, align: 64, offset: 640)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "obtained_from_os_bytes", baseType: !21, size: 64, align: 64, offset: 704)
!1561 = !DIGlobalVariableExpression(var: !1562, expr: !DIExpression())
!1562 = distinct !DIGlobalVariable(scope: null, file: !1537, line: 135, type: !1242, isLocal: true, isDefinition: true)
!1563 = !DIGlobalVariableExpression(var: !1564, expr: !DIExpression())
!1564 = distinct !DIGlobalVariable(scope: null, file: !1565, line: 616, type: !845, isLocal: true, isDefinition: true)
!1565 = !DIFile(filename: "hashmap.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1566 = !DIGlobalVariableExpression(var: !1567, expr: !DIExpression())
!1567 = distinct !DIGlobalVariable(scope: null, file: !1568, line: 80, type: !845, isLocal: true, isDefinition: true)
!1568 = !DIFile(filename: "interface.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1569 = !DIGlobalVariableExpression(var: !1570, expr: !DIExpression())
!1570 = distinct !DIGlobalVariable(scope: null, file: !1568, line: 89, type: !108, isLocal: true, isDefinition: true)
!1571 = !DIGlobalVariableExpression(var: !1572, expr: !DIExpression())
!1572 = distinct !DIGlobalVariable(scope: null, file: !87, line: 103, type: !1490, isLocal: true, isDefinition: true)
!1573 = !DIGlobalVariableExpression(var: !1574, expr: !DIExpression())
!1574 = distinct !DIGlobalVariable(scope: null, file: !87, line: 122, type: !108, isLocal: true, isDefinition: true)
!1575 = !DIGlobalVariableExpression(var: !1576, expr: !DIExpression())
!1576 = distinct !DIGlobalVariable(scope: null, file: !87, line: 189, type: !55, isLocal: true, isDefinition: true)
!1577 = !DIGlobalVariableExpression(var: !1578, expr: !DIExpression())
!1578 = distinct !DIGlobalVariable(scope: null, file: !87, line: 199, type: !108, isLocal: true, isDefinition: true)
!1579 = !DIGlobalVariableExpression(var: !1580, expr: !DIExpression())
!1580 = distinct !DIGlobalVariable(scope: null, file: !87, line: 205, type: !93, isLocal: true, isDefinition: true)
!1581 = !DIGlobalVariableExpression(var: !1582, expr: !DIExpression())
!1582 = distinct !DIGlobalVariable(scope: null, file: !87, line: 212, type: !1183, isLocal: true, isDefinition: true)
!1583 = !DIGlobalVariableExpression(var: !1584, expr: !DIExpression())
!1584 = distinct !DIGlobalVariable(scope: null, file: !87, line: 217, type: !1490, isLocal: true, isDefinition: true)
!1585 = !DIGlobalVariableExpression(var: !1586, expr: !DIExpression())
!1586 = distinct !DIGlobalVariable(scope: null, file: !87, line: 222, type: !894, isLocal: true, isDefinition: true)
!1587 = !DIGlobalVariableExpression(var: !1588, expr: !DIExpression())
!1588 = distinct !DIGlobalVariable(scope: null, file: !87, line: 227, type: !894, isLocal: true, isDefinition: true)
!1589 = !DIGlobalVariableExpression(var: !1590, expr: !DIExpression())
!1590 = distinct !DIGlobalVariable(scope: null, file: !87, line: 231, type: !1591, isLocal: true, isDefinition: true)
!1591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 416, align: 8, elements: !1592)
!1592 = !{!1593}
!1593 = !DISubrange(count: 52, lowerBound: 0)
!1594 = !DIGlobalVariableExpression(var: !1595, expr: !DIExpression())
!1595 = distinct !DIGlobalVariable(scope: null, file: !1596, line: 1, type: !845, isLocal: true, isDefinition: true)
!1596 = !DIFile(filename: "poll.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1597 = !DIGlobalVariableExpression(var: !1598, expr: !DIExpression())
!1598 = distinct !DIGlobalVariable(scope: null, file: !1596, line: 1, type: !1490, isLocal: true, isDefinition: true)
!1599 = !DIGlobalVariableExpression(var: !1600, expr: !DIExpression())
!1600 = distinct !DIGlobalVariable(scope: null, file: !1596, line: 1, type: !103, isLocal: true, isDefinition: true)
!1601 = !DIGlobalVariableExpression(var: !1602, expr: !DIExpression())
!1602 = distinct !DIGlobalVariable(scope: null, file: !1596, line: 1, type: !362, isLocal: true, isDefinition: true)
!1603 = !DIGlobalVariableExpression(var: !1604, expr: !DIExpression())
!1604 = distinct !DIGlobalVariable(scope: null, file: !1605, line: 117, type: !158, isLocal: true, isDefinition: true)
!1605 = !DIFile(filename: "print.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1606 = !DIGlobalVariableExpression(var: !1607, expr: !DIExpression())
!1607 = distinct !DIGlobalVariable(scope: null, file: !1605, line: 120, type: !331, isLocal: true, isDefinition: true)
!1608 = !DIGlobalVariableExpression(var: !1609, expr: !DIExpression())
!1609 = distinct !DIGlobalVariable(scope: null, file: !1605, line: 123, type: !331, isLocal: true, isDefinition: true)
!1610 = !DIGlobalVariableExpression(var: !1611, expr: !DIExpression())
!1611 = distinct !DIGlobalVariable(scope: null, file: !1605, line: 197, type: !158, isLocal: true, isDefinition: true)
!1612 = !DIGlobalVariableExpression(var: !1613, expr: !DIExpression())
!1613 = distinct !DIGlobalVariable(scope: null, file: !1605, line: 200, type: !331, isLocal: true, isDefinition: true)
!1614 = !DIGlobalVariableExpression(var: !1615, expr: !DIExpression())
!1615 = distinct !DIGlobalVariable(scope: null, file: !1605, line: 203, type: !331, isLocal: true, isDefinition: true)
!1616 = !DIGlobalVariableExpression(var: !1617, expr: !DIExpression())
!1617 = distinct !DIGlobalVariable(scope: null, file: !1605, line: 272, type: !98, isLocal: true, isDefinition: true)
!1618 = !DIGlobalVariableExpression(var: !1619, expr: !DIExpression())
!1619 = distinct !DIGlobalVariable(scope: null, file: !1605, line: 279, type: !98, isLocal: true, isDefinition: true)
!1620 = !DIGlobalVariableExpression(var: !1621, expr: !DIExpression())
!1621 = distinct !DIGlobalVariable(scope: null, file: !1605, line: 355, type: !331, isLocal: true, isDefinition: true)
!1622 = !DIGlobalVariableExpression(var: !1623, expr: !DIExpression())
!1623 = distinct !DIGlobalVariable(scope: null, file: !1605, line: 357, type: !158, isLocal: true, isDefinition: true)
!1624 = !DIGlobalVariableExpression(var: !1625, expr: !DIExpression())
!1625 = distinct !DIGlobalVariable(scope: null, file: !1605, line: 373, type: !158, isLocal: true, isDefinition: true)
!1626 = !DIGlobalVariableExpression(var: !1627, expr: !DIExpression())
!1627 = distinct !DIGlobalVariable(scope: null, file: !1605, line: 391, type: !331, isLocal: true, isDefinition: true)
!1628 = !DIGlobalVariableExpression(var: !1629, expr: !DIExpression())
!1629 = distinct !DIGlobalVariable(scope: null, file: !1605, line: 393, type: !401, isLocal: true, isDefinition: true)
!1630 = !DIGlobalVariableExpression(var: !1631, expr: !DIExpression())
!1631 = distinct !DIGlobalVariable(scope: null, file: !1531, line: 36, type: !434, isLocal: true, isDefinition: true)
!1632 = !DIGlobalVariableExpression(var: !1633, expr: !DIExpression())
!1633 = distinct !DIGlobalVariable(scope: null, file: !1531, line: 97, type: !55, isLocal: true, isDefinition: true)
!1634 = !DIGlobalVariableExpression(var: !1635, expr: !DIExpression())
!1635 = distinct !DIGlobalVariable(name: "runtime.main_argc", linkageName: "runtime.main_argc", scope: !113, file: !113, line: 105, type: !60, isLocal: false, isDefinition: true, align: 32)
!1636 = !DIGlobalVariableExpression(var: !1637, expr: !DIExpression())
!1637 = distinct !DIGlobalVariable(name: "runtime.args", linkageName: "runtime.args", scope: !113, file: !113, line: 107, type: !1638, isLocal: false, isDefinition: true, align: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]string", size: 192, align: 64, elements: !1639)
!1639 = !{!1640, !323, !328}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !1641, size: 64, align: 64)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64, dwarfAddressSpace: 0)
!1642 = !DIGlobalVariableExpression(var: !1643, expr: !DIExpression())
!1643 = distinct !DIGlobalVariable(scope: null, file: !113, line: 160, type: !163, isLocal: true, isDefinition: true)
!1644 = !DIGlobalVariableExpression(var: !1645, expr: !DIExpression())
!1645 = distinct !DIGlobalVariable(scope: null, file: !113, line: 163, type: !385, isLocal: true, isDefinition: true)
!1646 = !DIGlobalVariableExpression(var: !1647, expr: !DIExpression())
!1647 = distinct !DIGlobalVariable(scope: null, file: !113, line: 165, type: !385, isLocal: true, isDefinition: true)
!1648 = !DIGlobalVariableExpression(var: !1649, expr: !DIExpression())
!1649 = distinct !DIGlobalVariable(scope: null, file: !113, line: 167, type: !88, isLocal: true, isDefinition: true)
!1650 = !DIGlobalVariableExpression(var: !1651, expr: !DIExpression())
!1651 = distinct !DIGlobalVariable(name: "runtime.heapMaxSize", linkageName: "runtime.heapMaxSize", scope: !113, file: !113, line: 299, type: !21, isLocal: false, isDefinition: true, align: 64)
!1652 = !DIGlobalVariableExpression(var: !1653, expr: !DIExpression())
!1653 = distinct !DIGlobalVariable(name: "runtime.heapStart", linkageName: "runtime.heapStart", scope: !113, file: !113, line: 301, type: !21, isLocal: false, isDefinition: true, align: 64)
!1654 = !DIGlobalVariableExpression(var: !1655, expr: !DIExpression())
!1655 = distinct !DIGlobalVariable(name: "runtime.heapEnd", linkageName: "runtime.heapEnd", scope: !113, file: !113, line: 301, type: !21, isLocal: false, isDefinition: true, align: 64)
!1656 = !DIGlobalVariableExpression(var: !1657, expr: !DIExpression())
!1657 = distinct !DIGlobalVariable(scope: null, file: !113, line: 317, type: !1104, isLocal: true, isDefinition: true)
!1658 = !DIGlobalVariableExpression(var: !1659, expr: !DIExpression())
!1659 = distinct !DIGlobalVariable(name: "runtime.hasSignals", linkageName: "runtime.hasSignals", scope: !113, file: !113, line: 345, type: !47, isLocal: false, isDefinition: true, align: 8)
!1660 = !DIGlobalVariableExpression(var: !1661, expr: !DIExpression())
!1661 = distinct !DIGlobalVariable(scope: null, file: !113, line: 365, type: !362, isLocal: true, isDefinition: true)
!1662 = !DIGlobalVariableExpression(var: !1663, expr: !DIExpression())
!1663 = distinct !DIGlobalVariable(scope: null, file: !113, line: 382, type: !362, isLocal: true, isDefinition: true)
!1664 = !DIGlobalVariableExpression(var: !1665, expr: !DIExpression())
!1665 = distinct !DIGlobalVariable(scope: null, file: !113, line: 392, type: !362, isLocal: true, isDefinition: true)
!1666 = !DIGlobalVariableExpression(var: !1667, expr: !DIExpression())
!1667 = distinct !DIGlobalVariable(name: "runtime.signalRecvWaiter", linkageName: "runtime.signalRecvWaiter", scope: !113, file: !113, line: 447, type: !1668, isLocal: false, isDefinition: true, align: 64)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Pointer[internal/task.Task]", baseType: !1669)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !1670)
!1670 = !{!1671, !40, !1683}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !1672, align: 64)
!1672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1673, align: 64, elements: !920)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64, align: 64, dwarfAddressSpace: 0)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !1675)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !1676)
!1676 = !{!1677, !8, !10, !12, !1678, !44, !46, !48, !49}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !1673, size: 64, align: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !1679, size: 384, align: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !1680)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !1681)
!1681 = !{!20, !22, !24, !25, !1682, !27}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !1673, size: 64, align: 64, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !9, size: 64, align: 64)
!1684 = !DIGlobalVariableExpression(var: !1685, expr: !DIExpression())
!1685 = distinct !DIGlobalVariable(scope: null, file: !113, line: 458, type: !1165, isLocal: true, isDefinition: true)
!1686 = !DIGlobalVariableExpression(var: !1687, expr: !DIExpression())
!1687 = distinct !DIGlobalVariable(scope: null, file: !113, line: 514, type: !1104, isLocal: true, isDefinition: true)
!1688 = !DIGlobalVariableExpression(var: !1689, expr: !DIExpression())
!1689 = distinct !DIGlobalVariable(name: "runtime.timerQueue", linkageName: "runtime.timerQueue", scope: !1690, file: !1690, line: 7, type: !1691, isLocal: false, isDefinition: true, align: 64)
!1690 = !DIFile(filename: "scheduler.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64, align: 64, dwarfAddressSpace: 0)
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.timerNode", baseType: !1693)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !1694)
!1694 = !{!1695, !1696, !1707}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "next", baseType: !1691, size: 64, align: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "timer", baseType: !1697, size: 64, align: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64, align: 64, dwarfAddressSpace: 0)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.timer", baseType: !1699)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !1700)
!1700 = !{!1701, !1703, !1704, !1705}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "when", baseType: !1702, size: 64, align: 64)
!1702 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "period", baseType: !1702, size: 64, align: 64, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !305, size: 128, align: 64, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "arg", baseType: !1706, size: 128, align: 64, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "any", baseType: !454)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "callback", baseType: !305, size: 128, align: 64, offset: 128)
!1708 = !DIGlobalVariableExpression(var: !1709, expr: !DIExpression())
!1709 = distinct !DIGlobalVariable(scope: null, file: !1690, line: 12, type: !158, isLocal: true, isDefinition: true)
!1710 = !DIGlobalVariableExpression(var: !1711, expr: !DIExpression())
!1711 = distinct !DIGlobalVariable(scope: null, file: !1690, line: 19, type: !158, isLocal: true, isDefinition: true)
!1712 = !DIGlobalVariableExpression(var: !1713, expr: !DIExpression())
!1713 = distinct !DIGlobalVariable(scope: null, file: !1690, line: 26, type: !158, isLocal: true, isDefinition: true)
!1714 = !DIGlobalVariableExpression(var: !1715, expr: !DIExpression())
!1715 = distinct !DIGlobalVariable(scope: null, file: !1690, line: 45, type: !434, isLocal: true, isDefinition: true)
!1716 = !DIGlobalVariableExpression(var: !1717, expr: !DIExpression())
!1717 = distinct !DIGlobalVariable(scope: null, file: !1690, line: 51, type: !67, isLocal: true, isDefinition: true)
!1718 = !DIGlobalVariableExpression(var: !1719, expr: !DIExpression())
!1719 = distinct !DIGlobalVariable(name: "runtime.timerQueueLock", linkageName: "runtime.timerQueueLock", scope: !127, file: !127, line: 16, type: !63, isLocal: false, isDefinition: true, align: 32)
!1720 = !DIGlobalVariableExpression(var: !1721, expr: !DIExpression())
!1721 = distinct !DIGlobalVariable(name: "runtime.timerQueueStarted", linkageName: "runtime.timerQueueStarted", scope: !127, file: !127, line: 17, type: !47, isLocal: false, isDefinition: true, align: 8)
!1722 = !DIGlobalVariableExpression(var: !1723, expr: !DIExpression())
!1723 = distinct !DIGlobalVariable(name: "runtime.timerFutex", linkageName: "runtime.timerFutex", scope: !127, file: !127, line: 18, type: !32, isLocal: false, isDefinition: true, align: 32)
!1724 = !DIGlobalVariableExpression(var: !1725, expr: !DIExpression())
!1725 = distinct !DIGlobalVariable(name: "runtime.atomicsLock", linkageName: "runtime.atomicsLock", scope: !127, file: !127, line: 151, type: !64, isLocal: false, isDefinition: true, align: 32)
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(scope: null, file: !1728, line: 1, type: !163, isLocal: true, isDefinition: true)
!1728 = !DIFile(filename: "sync.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1729 = !DIGlobalVariableExpression(var: !1730, expr: !DIExpression())
!1730 = distinct !DIGlobalVariable(scope: null, file: !1728, line: 1, type: !163, isLocal: true, isDefinition: true)
!1731 = !DIGlobalVariableExpression(var: !1732, expr: !DIExpression())
!1732 = distinct !DIGlobalVariable(scope: null, file: !1733, line: 45, type: !380, isLocal: true, isDefinition: true)
!1733 = !DIFile(filename: "time_go123.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1734 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1735)
!1735 = !{!1736, !1738, !1740}
!1736 = !DIGlobalVariableExpression(var: !1737, expr: !DIExpression())
!1737 = distinct !DIGlobalVariable(name: "type int", scope: !130, file: !130, line: 1, type: !131, isLocal: false, isDefinition: true, align: 64)
!1738 = !DIGlobalVariableExpression(var: !1739, expr: !DIExpression())
!1739 = distinct !DIGlobalVariable(name: "type *int", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!1740 = !DIGlobalVariableExpression(var: !1741, expr: !DIExpression())
!1741 = distinct !DIGlobalVariable(name: "iter.goexitPanicValue", linkageName: "iter.goexitPanicValue", scope: !1742, file: !1742, line: 473, type: !1706, isLocal: false, isDefinition: true, align: 64)
!1742 = !DIFile(filename: "iter.go", directory: "/usr/local/go/src/iter")
!1743 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1744 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1745)
!1745 = !{!1746, !1748, !1750, !1752, !1761, !1763, !1765, !1770, !1777, !1785, !1792, !1795, !1797, !1799, !1801, !1803, !1805, !1807, !1809, !1811, !1814, !1816, !1818, !1820, !1822, !1824, !1833, !1835, !1837, !1839, !1843, !1850, !1852, !1854, !1856, !1858, !1860, !1862, !1864, !1866, !1868, !1870, !1872, !1874, !1876, !1878, !1880, !1882, !1887, !1889, !1891, !1893, !1895, !1897, !1899, !1901, !1903, !1905, !1907, !1909, !1911, !1913, !1915, !1917, !1919}
!1746 = !DIGlobalVariableExpression(var: !1747, expr: !DIExpression())
!1747 = distinct !DIGlobalVariable(name: "reflect/types.signature:Len:func:{}{basic:int}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!1748 = !DIGlobalVariableExpression(var: !1749, expr: !DIExpression())
!1749 = distinct !DIGlobalVariable(name: "reflect/types.signature:Less:func:{basic:int,basic:int}{basic:bool}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!1750 = !DIGlobalVariableExpression(var: !1751, expr: !DIExpression())
!1751 = distinct !DIGlobalVariable(name: "reflect/types.signature:Swap:func:{basic:int,basic:int}{}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!1752 = !DIGlobalVariableExpression(var: !1753, expr: !DIExpression())
!1753 = distinct !DIGlobalVariable(name: "type *struct{sort.Interface}", scope: !130, file: !130, line: 1, type: !1754, isLocal: false, isDefinition: true, align: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1755)
!1755 = !{!829, !830, !831, !866, !1756}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1757, size: 256, align: 64, offset: 192)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !1758)
!1758 = !{!838, !1759}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1760, size: 192, align: 64, offset: 64)
!1760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, align: 64, elements: !159)
!1761 = !DIGlobalVariableExpression(var: !1762, expr: !DIExpression())
!1762 = distinct !DIGlobalVariable(name: "type *sort.Interface", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!1763 = !DIGlobalVariableExpression(var: !1764, expr: !DIExpression())
!1764 = distinct !DIGlobalVariable(name: "type *interface{Len() int; Less(i int, j int) bool; Swap(i int, j int)}", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!1765 = !DIGlobalVariableExpression(var: !1766, expr: !DIExpression())
!1766 = distinct !DIGlobalVariable(name: "type interface{Len() int; Less(i int, j int) bool; Swap(i int, j int)}", scope: !130, file: !130, line: 1, type: !1767, isLocal: false, isDefinition: true, align: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !1768)
!1768 = !{!133, !135, !1769}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1757, size: 256, align: 64, offset: 128)
!1770 = !DIGlobalVariableExpression(var: !1771, expr: !DIExpression())
!1771 = distinct !DIGlobalVariable(name: "type sort.Interface", scope: !130, file: !130, line: 1, type: !1772, isLocal: false, isDefinition: true, align: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1773)
!1773 = !{!133, !140, !135, !884, !885, !1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1757, size: 256, align: 64, offset: 256)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1776, size: 120, align: 8, offset: 512)
!1776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 120, align: 8, elements: !559)
!1777 = !DIGlobalVariableExpression(var: !1778, expr: !DIExpression())
!1778 = distinct !DIGlobalVariable(name: "type struct{sort.Interface}", scope: !130, file: !130, line: 1, type: !1779, isLocal: false, isDefinition: true, align: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !1780)
!1780 = !{!829, !830, !831, !832, !885, !1781, !1782, !1783, !1784}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "size", baseType: !43, size: 32, align: 32, offset: 256)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "numFields", baseType: !141, size: 16, align: 16, offset: 288)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !820, size: 128, align: 64, offset: 320)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1757, size: 256, align: 64, offset: 448)
!1785 = !DIGlobalVariableExpression(var: !1786, expr: !DIExpression())
!1786 = distinct !DIGlobalVariable(name: "type sort.reverse", scope: !130, file: !130, line: 1, type: !1787, isLocal: false, isDefinition: true, align: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !1788)
!1788 = !{!829, !830, !831, !832, !833, !834, !1789, !1790}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1757, size: 256, align: 64, offset: 320)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1791, size: 104, align: 8, offset: 576)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 104, align: 8, elements: !435)
!1792 = !DIGlobalVariableExpression(var: !1793, expr: !DIExpression())
!1793 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !717, isLocal: true, isDefinition: true)
!1794 = !DIFile(filename: "sort.go", directory: "/usr/local/go/src/sort")
!1795 = !DIGlobalVariableExpression(var: !1796, expr: !DIExpression())
!1796 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !331, isLocal: true, isDefinition: true)
!1797 = !DIGlobalVariableExpression(var: !1798, expr: !DIExpression())
!1798 = distinct !DIGlobalVariable(name: "type *sort.reverse", scope: !130, file: !130, line: 1, type: !1754, isLocal: false, isDefinition: true, align: 64)
!1799 = !DIGlobalVariableExpression(var: !1800, expr: !DIExpression())
!1800 = distinct !DIGlobalVariable(name: "reflect/types.signature:Search:func:{basic:int}{basic:int}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!1801 = !DIGlobalVariableExpression(var: !1802, expr: !DIExpression())
!1802 = distinct !DIGlobalVariable(name: "reflect/types.signature:Sort:func:{}{}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!1803 = !DIGlobalVariableExpression(var: !1804, expr: !DIExpression())
!1804 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !434, isLocal: true, isDefinition: true)
!1805 = !DIGlobalVariableExpression(var: !1806, expr: !DIExpression())
!1806 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !158, isLocal: true, isDefinition: true)
!1807 = !DIGlobalVariableExpression(var: !1808, expr: !DIExpression())
!1808 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !434, isLocal: true, isDefinition: true)
!1809 = !DIGlobalVariableExpression(var: !1810, expr: !DIExpression())
!1810 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !331, isLocal: true, isDefinition: true)
!1811 = !DIGlobalVariableExpression(var: !1812, expr: !DIExpression())
!1812 = distinct !DIGlobalVariable(scope: null, file: !1813, line: 1, type: !434, isLocal: true, isDefinition: true)
!1813 = !DIFile(filename: "search.go", directory: "/usr/local/go/src/sort")
!1814 = !DIGlobalVariableExpression(var: !1815, expr: !DIExpression())
!1815 = distinct !DIGlobalVariable(scope: null, file: !1813, line: 1, type: !385, isLocal: true, isDefinition: true)
!1816 = !DIGlobalVariableExpression(var: !1817, expr: !DIExpression())
!1817 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !434, isLocal: true, isDefinition: true)
!1818 = !DIGlobalVariableExpression(var: !1819, expr: !DIExpression())
!1819 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !331, isLocal: true, isDefinition: true)
!1820 = !DIGlobalVariableExpression(var: !1821, expr: !DIExpression())
!1821 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !434, isLocal: true, isDefinition: true)
!1822 = !DIGlobalVariableExpression(var: !1823, expr: !DIExpression())
!1823 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !331, isLocal: true, isDefinition: true)
!1824 = !DIGlobalVariableExpression(var: !1825, expr: !DIExpression())
!1825 = distinct !DIGlobalVariable(name: "type *sort.IntSlice", scope: !130, file: !130, line: 1, type: !1826, isLocal: false, isDefinition: true, align: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, size: 576, align: 64, elements: !1827)
!1827 = !{!829, !830, !831, !866, !1828}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1829, size: 384, align: 64, offset: 192)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !1830)
!1830 = !{!838, !1831}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1832, size: 320, align: 64, offset: 64)
!1832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 320, align: 64, elements: !402)
!1833 = !DIGlobalVariableExpression(var: !1834, expr: !DIExpression())
!1834 = distinct !DIGlobalVariable(name: "type *[]int", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!1835 = !DIGlobalVariableExpression(var: !1836, expr: !DIExpression())
!1836 = distinct !DIGlobalVariable(name: "type *int", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!1837 = !DIGlobalVariableExpression(var: !1838, expr: !DIExpression())
!1838 = distinct !DIGlobalVariable(name: "type int", scope: !130, file: !130, line: 1, type: !131, isLocal: false, isDefinition: true, align: 64)
!1839 = !DIGlobalVariableExpression(var: !1840, expr: !DIExpression())
!1840 = distinct !DIGlobalVariable(name: "type []int", scope: !130, file: !130, line: 1, type: !1841, isLocal: false, isDefinition: true, align: 64)
!1841 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !1842)
!1842 = !{!133, !140, !135, !866}
!1843 = !DIGlobalVariableExpression(var: !1844, expr: !DIExpression())
!1844 = distinct !DIGlobalVariable(name: "type sort.IntSlice", scope: !130, file: !130, line: 1, type: !1845, isLocal: false, isDefinition: true, align: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, size: 832, align: 64, elements: !1846)
!1846 = !{!829, !830, !831, !832, !833, !834, !1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !1829, size: 384, align: 64, offset: 320)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1849, size: 112, align: 8, offset: 704)
!1849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 112, align: 8, elements: !895)
!1850 = !DIGlobalVariableExpression(var: !1851, expr: !DIExpression())
!1851 = distinct !DIGlobalVariable(name: "reflect/types.signature:Search:func:{basic:float64}{basic:int}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!1852 = !DIGlobalVariableExpression(var: !1853, expr: !DIExpression())
!1853 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !74, isLocal: true, isDefinition: true)
!1854 = !DIGlobalVariableExpression(var: !1855, expr: !DIExpression())
!1855 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !158, isLocal: true, isDefinition: true)
!1856 = !DIGlobalVariableExpression(var: !1857, expr: !DIExpression())
!1857 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !74, isLocal: true, isDefinition: true)
!1858 = !DIGlobalVariableExpression(var: !1859, expr: !DIExpression())
!1859 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !331, isLocal: true, isDefinition: true)
!1860 = !DIGlobalVariableExpression(var: !1861, expr: !DIExpression())
!1861 = distinct !DIGlobalVariable(scope: null, file: !1813, line: 1, type: !74, isLocal: true, isDefinition: true)
!1862 = !DIGlobalVariableExpression(var: !1863, expr: !DIExpression())
!1863 = distinct !DIGlobalVariable(scope: null, file: !1813, line: 1, type: !385, isLocal: true, isDefinition: true)
!1864 = !DIGlobalVariableExpression(var: !1865, expr: !DIExpression())
!1865 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !74, isLocal: true, isDefinition: true)
!1866 = !DIGlobalVariableExpression(var: !1867, expr: !DIExpression())
!1867 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !331, isLocal: true, isDefinition: true)
!1868 = !DIGlobalVariableExpression(var: !1869, expr: !DIExpression())
!1869 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !74, isLocal: true, isDefinition: true)
!1870 = !DIGlobalVariableExpression(var: !1871, expr: !DIExpression())
!1871 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !331, isLocal: true, isDefinition: true)
!1872 = !DIGlobalVariableExpression(var: !1873, expr: !DIExpression())
!1873 = distinct !DIGlobalVariable(name: "type *sort.Float64Slice", scope: !130, file: !130, line: 1, type: !1826, isLocal: false, isDefinition: true, align: 64)
!1874 = !DIGlobalVariableExpression(var: !1875, expr: !DIExpression())
!1875 = distinct !DIGlobalVariable(name: "type *[]float64", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!1876 = !DIGlobalVariableExpression(var: !1877, expr: !DIExpression())
!1877 = distinct !DIGlobalVariable(name: "type *float64", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!1878 = !DIGlobalVariableExpression(var: !1879, expr: !DIExpression())
!1879 = distinct !DIGlobalVariable(name: "type float64", scope: !130, file: !130, line: 1, type: !131, isLocal: false, isDefinition: true, align: 64)
!1880 = !DIGlobalVariableExpression(var: !1881, expr: !DIExpression())
!1881 = distinct !DIGlobalVariable(name: "type []float64", scope: !130, file: !130, line: 1, type: !1841, isLocal: false, isDefinition: true, align: 64)
!1882 = !DIGlobalVariableExpression(var: !1883, expr: !DIExpression())
!1883 = distinct !DIGlobalVariable(name: "type sort.Float64Slice", scope: !130, file: !130, line: 1, type: !1884, isLocal: false, isDefinition: true, align: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, size: 896, align: 64, elements: !1885)
!1885 = !{!829, !830, !831, !832, !833, !834, !1847, !1886}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !887, size: 144, align: 8, offset: 704)
!1887 = !DIGlobalVariableExpression(var: !1888, expr: !DIExpression())
!1888 = distinct !DIGlobalVariable(name: "reflect/types.signature:Search:func:{basic:string}{basic:int}", scope: !130, file: !130, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!1889 = !DIGlobalVariableExpression(var: !1890, expr: !DIExpression())
!1890 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !163, isLocal: true, isDefinition: true)
!1891 = !DIGlobalVariableExpression(var: !1892, expr: !DIExpression())
!1892 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !158, isLocal: true, isDefinition: true)
!1893 = !DIGlobalVariableExpression(var: !1894, expr: !DIExpression())
!1894 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !163, isLocal: true, isDefinition: true)
!1895 = !DIGlobalVariableExpression(var: !1896, expr: !DIExpression())
!1896 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !331, isLocal: true, isDefinition: true)
!1897 = !DIGlobalVariableExpression(var: !1898, expr: !DIExpression())
!1898 = distinct !DIGlobalVariable(scope: null, file: !1813, line: 1, type: !163, isLocal: true, isDefinition: true)
!1899 = !DIGlobalVariableExpression(var: !1900, expr: !DIExpression())
!1900 = distinct !DIGlobalVariable(scope: null, file: !1813, line: 1, type: !385, isLocal: true, isDefinition: true)
!1901 = !DIGlobalVariableExpression(var: !1902, expr: !DIExpression())
!1902 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !163, isLocal: true, isDefinition: true)
!1903 = !DIGlobalVariableExpression(var: !1904, expr: !DIExpression())
!1904 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !331, isLocal: true, isDefinition: true)
!1905 = !DIGlobalVariableExpression(var: !1906, expr: !DIExpression())
!1906 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !163, isLocal: true, isDefinition: true)
!1907 = !DIGlobalVariableExpression(var: !1908, expr: !DIExpression())
!1908 = distinct !DIGlobalVariable(scope: null, file: !1794, line: 1, type: !331, isLocal: true, isDefinition: true)
!1909 = !DIGlobalVariableExpression(var: !1910, expr: !DIExpression())
!1910 = distinct !DIGlobalVariable(name: "type *sort.StringSlice", scope: !130, file: !130, line: 1, type: !1826, isLocal: false, isDefinition: true, align: 64)
!1911 = !DIGlobalVariableExpression(var: !1912, expr: !DIExpression())
!1912 = distinct !DIGlobalVariable(name: "type *[]string", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!1913 = !DIGlobalVariableExpression(var: !1914, expr: !DIExpression())
!1914 = distinct !DIGlobalVariable(name: "type *string", scope: !130, file: !130, line: 1, type: !138, isLocal: false, isDefinition: true, align: 64)
!1915 = !DIGlobalVariableExpression(var: !1916, expr: !DIExpression())
!1916 = distinct !DIGlobalVariable(name: "type string", scope: !130, file: !130, line: 1, type: !131, isLocal: false, isDefinition: true, align: 64)
!1917 = !DIGlobalVariableExpression(var: !1918, expr: !DIExpression())
!1918 = distinct !DIGlobalVariable(name: "type []string", scope: !130, file: !130, line: 1, type: !1841, isLocal: false, isDefinition: true, align: 64)
!1919 = !DIGlobalVariableExpression(var: !1920, expr: !DIExpression())
!1920 = distinct !DIGlobalVariable(name: "type sort.StringSlice", scope: !130, file: !130, line: 1, type: !1921, isLocal: false, isDefinition: true, align: 64)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, size: 896, align: 64, elements: !1922)
!1922 = !{!829, !830, !831, !832, !833, !834, !1847, !1923}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !985, size: 136, align: 8, offset: 704)
!1924 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1925 = !{!"TinyGo version 0.41.1"}
!1926 = !{i32 2, !"Debug Info Version", i32 3}
!1927 = !{i32 7, !"Dwarf Version", i32 4}
!1928 = distinct !DISubprogram(name: "(*internal/task.Mutex).Unlock", linkageName: "(*internal/task.Mutex).Unlock", scope: !54, file: !54, line: 49, type: !1929, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !1932)
!1929 = !DISubroutineType(cc: DW_CC_nocall, types: !1930)
!1930 = !{!1931}
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64, dwarfAddressSpace: 0)
!1932 = !{!1933, !1934}
!1933 = !DILocalVariable(name: "m", arg: 1, scope: !1928, file: !54, line: 49, type: !1931)
!1934 = !DILocalVariable(name: "old", scope: !1928, file: !54, line: 50, type: !43)
!1935 = !DILocation(line: 49, column: 17, scope: !1928)
!1936 = !DILocation(line: 50, column: 12, scope: !1928)
!1937 = !DILocation(line: 50, column: 14, scope: !1928)
!1938 = !DILocalVariable(name: "x", arg: 1, scope: !1939, file: !1940, line: 153, type: !1943)
!1939 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Swap", linkageName: "(*sync/atomic.Uint32).Swap", scope: !1940, file: !1940, line: 153, type: !1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !1944)
!1940 = !DIFile(filename: "type.go", directory: "/usr/local/go/src/sync/atomic")
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!1943, !43}
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64, dwarfAddressSpace: 0)
!1944 = !{!1938, !1945}
!1945 = !DILocalVariable(name: "new", arg: 2, scope: !1939, file: !1940, line: 153, type: !43)
!1946 = !DILocation(line: 153, column: 18, scope: !1939, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 50, column: 24, scope: !1928)
!1948 = !DILocation(line: 153, column: 69, scope: !1939, inlinedAt: !1947)
!1949 = !DILocation(line: 153, column: 74, scope: !1939, inlinedAt: !1947)
!1950 = !DILocalVariable(name: "addr", arg: 1, scope: !1951, file: !1952, line: 77, type: !1955)
!1951 = distinct !DISubprogram(name: "sync/atomic.SwapUint32", linkageName: "sync/atomic.SwapUint32", scope: !1952, file: !1952, line: 77, type: !1953, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !1956)
!1952 = !DIFile(filename: "doc.go", directory: "/usr/local/go/src/sync/atomic")
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!1955, !43}
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64, dwarfAddressSpace: 0)
!1956 = !{!1950, !1957}
!1957 = !DILocalVariable(name: "new", arg: 2, scope: !1951, file: !1952, line: 77, type: !43)
!1958 = !DILocation(line: 77, column: 6, scope: !1951, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 153, column: 67, scope: !1939, inlinedAt: !1947)
!1960 = !DILocation(line: 50, column: 5, scope: !1928)
!1961 = !DILocation(line: 50, column: 29, scope: !1928)
!1962 = !DILocation(line: 0, scope: !1928)
!1963 = !DILocation(line: 52, column: 8, scope: !1928)
!1964 = !DILocation(line: 55, column: 3, scope: !1928)
!1965 = !DILocalVariable(name: "f", arg: 1, scope: !1966, file: !1967, line: 53, type: !1970)
!1966 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wake", linkageName: "(*internal/futex.Futex).Wake", scope: !1967, file: !1967, line: 53, type: !1968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1450, retainedNodes: !1971)
!1967 = !DIFile(filename: "futex.go", directory: "/usr/local/lib/tinygo/src/internal/futex")
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!1970}
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64, dwarfAddressSpace: 0)
!1971 = !{!1965}
!1972 = !DILocation(line: 53, column: 17, scope: !1966, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 55, column: 15, scope: !1928)
!1974 = !DILocation(line: 54, column: 46, scope: !1966, inlinedAt: !1973)
!1975 = !DILocation(line: 54, column: 19, scope: !1966, inlinedAt: !1973)
!1976 = !DILocation(line: 57, column: 2, scope: !1928)
!1977 = distinct !DISubprogram(name: "internal/task.taskExited", linkageName: "tinygo_task_exited", scope: !2, file: !2, line: 125, type: !1978, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !1980)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!3}
!1980 = !{!1981, !1982, !1983, !1985}
!1981 = !DILocalVariable(name: "t", arg: 1, scope: !1977, file: !2, line: 125, type: !3)
!1982 = !DILocalVariable(name: "found", scope: !1977, file: !2, line: 133, type: !47)
!1983 = !DILocalVariable(name: "q", scope: !1977, file: !2, line: 134, type: !1984)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64, align: 64, dwarfAddressSpace: 0)
!1985 = !DILocalVariable(name: "otherGoroutines", scope: !1977, file: !2, line: 99, type: !43)
!1986 = !DILocation(line: 125, column: 6, scope: !1977)
!1987 = !DILocalVariable(name: "m", arg: 1, scope: !1988, file: !54, line: 31, type: !1931)
!1988 = distinct !DISubprogram(name: "(*internal/task.Mutex).Lock", linkageName: "(*internal/task.Mutex).Lock", scope: !54, file: !54, line: 31, type: !1989, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !1990)
!1989 = !DISubroutineType(types: !1930)
!1990 = !{!1987}
!1991 = !DILocation(line: 31, column: 17, scope: !1988, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 132, column: 21, scope: !1977)
!1993 = !DILocation(line: 33, column: 5, scope: !1988, inlinedAt: !1992)
!1994 = !DILocalVariable(name: "x", arg: 1, scope: !1995, file: !1940, line: 156, type: !1943)
!1995 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).CompareAndSwap", linkageName: "(*sync/atomic.Uint32).CompareAndSwap", scope: !1940, file: !1940, line: 156, type: !1996, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !1998)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!1943, !43, !43}
!1998 = !{!1994, !1999, !2000}
!1999 = !DILocalVariable(name: "old", arg: 2, scope: !1995, file: !1940, line: 156, type: !43)
!2000 = !DILocalVariable(name: "new", arg: 3, scope: !1995, file: !1940, line: 156, type: !43)
!2001 = !DILocation(line: 156, column: 18, scope: !1995, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 33, column: 27, scope: !1988, inlinedAt: !1992)
!2003 = !DILocation(line: 157, column: 31, scope: !1995, inlinedAt: !2002)
!2004 = !DILocation(line: 157, column: 36, scope: !1995, inlinedAt: !2002)
!2005 = !DILocation(line: 157, column: 41, scope: !1995, inlinedAt: !2002)
!2006 = !DILocalVariable(name: "addr", arg: 1, scope: !2007, file: !1952, line: 99, type: !1955)
!2007 = distinct !DISubprogram(name: "sync/atomic.CompareAndSwapUint32", linkageName: "sync/atomic.CompareAndSwapUint32", scope: !1952, file: !1952, line: 99, type: !2008, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!1955, !43, !43}
!2010 = !{!2006, !2011, !2012}
!2011 = !DILocalVariable(name: "old", arg: 2, scope: !2007, file: !1952, line: 99, type: !43)
!2012 = !DILocalVariable(name: "new", arg: 3, scope: !2007, file: !1952, line: 99, type: !43)
!2013 = !DILocation(line: 99, column: 6, scope: !2007, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 157, column: 29, scope: !1995, inlinedAt: !2002)
!2015 = !DILocation(line: 0, scope: !1988, inlinedAt: !1992)
!2016 = !DILocation(line: 43, column: 6, scope: !1988, inlinedAt: !1992)
!2017 = !DILocation(line: 153, column: 18, scope: !1939, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 43, column: 18, scope: !1988, inlinedAt: !1992)
!2019 = !DILocation(line: 153, column: 69, scope: !1939, inlinedAt: !2018)
!2020 = !DILocation(line: 153, column: 74, scope: !1939, inlinedAt: !2018)
!2021 = !DILocation(line: 77, column: 6, scope: !1951, inlinedAt: !2022)
!2022 = distinct !DILocation(line: 153, column: 67, scope: !1939, inlinedAt: !2018)
!2023 = !DILocation(line: 43, column: 22, scope: !1988, inlinedAt: !1992)
!2024 = !DILocation(line: 45, column: 3, scope: !1988, inlinedAt: !1992)
!2025 = !DILocalVariable(name: "f", arg: 1, scope: !2026, file: !1967, line: 25, type: !1970)
!2026 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wait", linkageName: "(*internal/futex.Futex).Wait", scope: !1967, file: !1967, line: 25, type: !2027, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1450, retainedNodes: !2029)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!1970, !43}
!2029 = !{!2025, !2030}
!2030 = !DILocalVariable(name: "cmp", arg: 2, scope: !2026, file: !1967, line: 25, type: !43)
!2031 = !DILocation(line: 26, column: 46, scope: !2026, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 45, column: 15, scope: !1988, inlinedAt: !1992)
!2033 = !DILocation(line: 26, column: 58, scope: !2026, inlinedAt: !2032)
!2034 = !DILocation(line: 26, column: 19, scope: !2026, inlinedAt: !2032)
!2035 = !DILocation(line: 133, column: 2, scope: !1977)
!2036 = !DILocation(line: 134, column: 6, scope: !1977)
!2037 = !DILocation(line: 134, column: 25, scope: !1977)
!2038 = !DILocation(line: 134, column: 28, scope: !1977)
!2039 = !DILocation(line: 0, scope: !1977)
!2040 = !DILocation(line: 134, column: 52, scope: !1977)
!2041 = !DILocation(line: 134, column: 36, scope: !1977)
!2042 = !DILocation(line: 134, column: 26, scope: !1977)
!2043 = !DILocation(line: 135, column: 7, scope: !1977)
!2044 = !DILocation(line: 135, column: 12, scope: !1977)
!2045 = !DILocation(line: 135, column: 9, scope: !1977)
!2046 = !DILocation(line: 134, column: 43, scope: !1977)
!2047 = !DILocation(line: 136, column: 5, scope: !1977)
!2048 = !DILocation(line: 136, column: 9, scope: !1977)
!2049 = !DILocation(line: 136, column: 17, scope: !1977)
!2050 = !DILocation(line: 136, column: 4, scope: !1977)
!2051 = !DILocation(line: 137, column: 4, scope: !1977)
!2052 = !DILocation(line: 141, column: 2, scope: !1977)
!2053 = !DILocation(line: 49, column: 17, scope: !1928, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 142, column: 23, scope: !1977)
!2055 = !DILocation(line: 50, column: 12, scope: !1928, inlinedAt: !2054)
!2056 = !DILocation(line: 153, column: 18, scope: !1939, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 50, column: 24, scope: !1928, inlinedAt: !2054)
!2058 = !DILocation(line: 153, column: 69, scope: !1939, inlinedAt: !2057)
!2059 = !DILocation(line: 153, column: 74, scope: !1939, inlinedAt: !2057)
!2060 = !DILocation(line: 77, column: 6, scope: !1951, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 153, column: 67, scope: !1939, inlinedAt: !2057)
!2062 = !DILocation(line: 50, column: 5, scope: !1928, inlinedAt: !2054)
!2063 = !DILocation(line: 50, column: 29, scope: !1928, inlinedAt: !2054)
!2064 = !DILocation(line: 0, scope: !1928, inlinedAt: !2054)
!2065 = !DILocation(line: 52, column: 8, scope: !1928, inlinedAt: !2054)
!2066 = !DILocation(line: 55, column: 3, scope: !1928, inlinedAt: !2054)
!2067 = !DILocation(line: 53, column: 17, scope: !1966, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 55, column: 15, scope: !1928, inlinedAt: !2054)
!2069 = !DILocation(line: 54, column: 46, scope: !1966, inlinedAt: !2068)
!2070 = !DILocation(line: 54, column: 19, scope: !1966, inlinedAt: !2068)
!2071 = !DILocation(line: 145, column: 6, scope: !1977)
!2072 = !DILocation(line: 148, column: 2, scope: !1977)
!2073 = !DILocation(line: 142, column: 23, scope: !1977)
!2074 = !DILocation(line: 146, column: 15, scope: !1977)
!2075 = distinct !DISubprogram(name: "internal/task.tingyo_task_gc_pause", linkageName: "tinygo_task_gc_pause", scope: !2, file: !2, line: 266, type: !2076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !2078)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!60}
!2078 = !{!2079, !2080}
!2079 = !DILocalVariable(name: "sig", arg: 1, scope: !2075, file: !2, line: 266, type: !60)
!2080 = !DILocalVariable(name: "stackBottom", scope: !2075, file: !2, line: 28, type: !21)
!2081 = !DILocation(line: 266, column: 6, scope: !2075)
!2082 = !DILocation(line: 62, column: 34, scope: !2083, inlinedAt: !2087)
!2083 = distinct !DISubprogram(name: "internal/task.Current", linkageName: "internal/task.Current", scope: !2, file: !2, line: 61, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !2085)
!2084 = !DISubroutineType(types: !15)
!2085 = !{!2086}
!2086 = !DILocalVariable(name: "t", scope: !2083, file: !2, line: 62, type: !3)
!2087 = distinct !DILocation(line: 268, column: 9, scope: !2075)
!2088 = !DILocation(line: 62, column: 2, scope: !2083, inlinedAt: !2087)
!2089 = !DILocation(line: 63, column: 5, scope: !2083, inlinedAt: !2087)
!2090 = !DILocation(line: 63, column: 7, scope: !2083, inlinedAt: !2087)
!2091 = !DILocation(line: 0, scope: !2083, inlinedAt: !2087)
!2092 = !DILocation(line: 64, column: 15, scope: !2083, inlinedAt: !2087)
!2093 = !DILocation(line: 66, column: 9, scope: !2083, inlinedAt: !2087)
!2094 = !DILocation(line: 58, column: 6, scope: !2095, inlinedAt: !2096)
!2095 = distinct !DISubprogram(name: "runtime.stacksave", linkageName: "runtime.stacksave", scope: !1531, file: !1531, line: 58, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2096 = distinct !DILocation(line: 268, column: 49, scope: !2075)
!2097 = !DILocation(line: 268, column: 39, scope: !2075)
!2098 = !DILocation(line: 268, column: 18, scope: !2075)
!2099 = !DILocalVariable(name: "wg", arg: 1, scope: !2100, file: !2, line: 163, type: !2103)
!2100 = distinct !DISubprogram(name: "(*internal/task.waitGroup).done", linkageName: "(*internal/task.waitGroup).done", scope: !2, file: !2, line: 163, type: !2101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !2104)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!2103}
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64, dwarfAddressSpace: 0)
!2104 = !{!2099}
!2105 = !DILocation(line: 163, column: 22, scope: !2100, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 271, column: 20, scope: !2075)
!2107 = !DILocation(line: 164, column: 5, scope: !2100, inlinedAt: !2106)
!2108 = !DILocalVariable(name: "x", arg: 1, scope: !2109, file: !1940, line: 161, type: !1943)
!2109 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Add", linkageName: "(*sync/atomic.Uint32).Add", scope: !1940, file: !1940, line: 161, type: !1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !2110)
!2110 = !{!2108, !2111}
!2111 = !DILocalVariable(name: "delta", arg: 2, scope: !2109, file: !1940, line: 161, type: !43)
!2112 = !DILocation(line: 161, column: 18, scope: !2109, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 164, column: 13, scope: !2100, inlinedAt: !2106)
!2114 = !DILocation(line: 161, column: 69, scope: !2109, inlinedAt: !2113)
!2115 = !DILocation(line: 161, column: 74, scope: !2109, inlinedAt: !2113)
!2116 = !DILocalVariable(name: "addr", arg: 1, scope: !2117, file: !1952, line: 123, type: !1955)
!2117 = distinct !DISubprogram(name: "sync/atomic.AddUint32", linkageName: "sync/atomic.AddUint32", scope: !1952, file: !1952, line: 123, type: !1953, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !2118)
!2118 = !{!2116, !2119}
!2119 = !DILocalVariable(name: "delta", arg: 2, scope: !2117, file: !1952, line: 123, type: !43)
!2120 = !DILocation(line: 123, column: 6, scope: !2117, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 161, column: 67, scope: !2109, inlinedAt: !2113)
!2122 = !DILocation(line: 164, column: 26, scope: !2100, inlinedAt: !2106)
!2123 = !DILocation(line: 0, scope: !2100, inlinedAt: !2106)
!2124 = !DILocation(line: 165, column: 3, scope: !2100, inlinedAt: !2106)
!2125 = !DILocalVariable(name: "f", arg: 1, scope: !2126, file: !1967, line: 58, type: !1970)
!2126 = distinct !DISubprogram(name: "(*internal/futex.Futex).WakeAll", linkageName: "(*internal/futex.Futex).WakeAll", scope: !1967, file: !1967, line: 58, type: !1968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1450, retainedNodes: !2127)
!2127 = !{!2125}
!2128 = !DILocation(line: 58, column: 17, scope: !2126, inlinedAt: !2129)
!2129 = distinct !DILocation(line: 165, column: 15, scope: !2100, inlinedAt: !2106)
!2130 = !DILocation(line: 59, column: 50, scope: !2126, inlinedAt: !2129)
!2131 = !DILocation(line: 59, column: 23, scope: !2126, inlinedAt: !2129)
!2132 = !DILocalVariable(name: "x", arg: 1, scope: !2133, file: !1940, line: 147, type: !1943)
!2133 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Load", linkageName: "(*sync/atomic.Uint32).Load", scope: !1940, file: !1940, line: 147, type: !2134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !2136)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!1943}
!2136 = !{!2132}
!2137 = !DILocation(line: 147, column: 18, scope: !2133, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 274, column: 18, scope: !2075)
!2139 = !DILocation(line: 147, column: 53, scope: !2133, inlinedAt: !2138)
!2140 = !DILocalVariable(name: "addr", arg: 1, scope: !2141, file: !1952, line: 183, type: !1955)
!2141 = distinct !DISubprogram(name: "sync/atomic.LoadUint32", linkageName: "sync/atomic.LoadUint32", scope: !1952, file: !1952, line: 183, type: !2142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!1955}
!2144 = !{!2140}
!2145 = !DILocation(line: 183, column: 6, scope: !2141, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 147, column: 51, scope: !2133, inlinedAt: !2138)
!2147 = !DILocation(line: 274, column: 21, scope: !2075)
!2148 = !DILocation(line: 0, scope: !2075)
!2149 = !DILocation(line: 26, column: 46, scope: !2026, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 275, column: 15, scope: !2075)
!2151 = !DILocation(line: 26, column: 58, scope: !2026, inlinedAt: !2150)
!2152 = !DILocation(line: 26, column: 19, scope: !2026, inlinedAt: !2150)
!2153 = !DILocation(line: 163, column: 22, scope: !2100, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 279, column: 20, scope: !2075)
!2155 = !DILocation(line: 164, column: 5, scope: !2100, inlinedAt: !2154)
!2156 = !DILocation(line: 161, column: 18, scope: !2109, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 164, column: 13, scope: !2100, inlinedAt: !2154)
!2158 = !DILocation(line: 161, column: 69, scope: !2109, inlinedAt: !2157)
!2159 = !DILocation(line: 161, column: 74, scope: !2109, inlinedAt: !2157)
!2160 = !DILocation(line: 123, column: 6, scope: !2117, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 161, column: 67, scope: !2109, inlinedAt: !2157)
!2162 = !DILocation(line: 164, column: 26, scope: !2100, inlinedAt: !2154)
!2163 = !DILocation(line: 0, scope: !2100, inlinedAt: !2154)
!2164 = !DILocation(line: 165, column: 3, scope: !2100, inlinedAt: !2154)
!2165 = !DILocation(line: 58, column: 17, scope: !2126, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 165, column: 15, scope: !2100, inlinedAt: !2154)
!2167 = !DILocation(line: 59, column: 50, scope: !2126, inlinedAt: !2166)
!2168 = !DILocation(line: 59, column: 23, scope: !2126, inlinedAt: !2166)
!2169 = !DILocation(line: 280, column: 2, scope: !2075)
!2170 = distinct !DISubprogram(name: "runtime.runtimePanic", linkageName: "runtime.runtimePanic", scope: !87, file: !87, line: 85, type: !2171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2173)
!2171 = !DISubroutineType(cc: DW_CC_nocall, types: !2172)
!2172 = !{!319}
!2173 = !{!2174}
!2174 = !DILocalVariable(name: "msg", arg: 1, scope: !2170, file: !87, line: 85, type: !319)
!2175 = !DILocation(line: 85, column: 6, scope: !2170)
!2176 = !DILocation(line: 88, column: 30, scope: !2170)
!2177 = !DILocation(line: 88, column: 35, scope: !2170)
!2178 = !DILocation(line: 88, column: 16, scope: !2170)
!2179 = !DILocation(line: 89, column: 2, scope: !2170)
!2180 = distinct !DISubprogram(name: "runtime.runtimePanicAt", linkageName: "runtime.runtimePanicAt", scope: !87, file: !87, line: 91, type: !2181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2183)
!2181 = !DISubroutineType(cc: DW_CC_nocall, types: !2182)
!2182 = !{!9, !319}
!2183 = !{!2184, !2185}
!2184 = !DILocalVariable(name: "addr", arg: 1, scope: !2180, file: !87, line: 91, type: !9)
!2185 = !DILocalVariable(name: "msg", arg: 2, scope: !2180, file: !87, line: 91, type: !319)
!2186 = !DILocation(line: 91, column: 6, scope: !2180)
!2187 = !DILocation(line: 99, column: 14, scope: !2180)
!2188 = !DILocation(line: 100, column: 20, scope: !2180)
!2189 = !DILocation(line: 100, column: 19, scope: !2180)
!2190 = !DILocation(line: 100, column: 26, scope: !2180)
!2191 = !DILocation(line: 100, column: 11, scope: !2180)
!2192 = !DILocation(line: 101, column: 14, scope: !2180)
!2193 = !DILocation(line: 105, column: 14, scope: !2180)
!2194 = !DILocation(line: 105, column: 13, scope: !2180)
!2195 = !DILocation(line: 106, column: 9, scope: !2180)
!2196 = !DILocation(line: 107, column: 7, scope: !2180)
!2197 = !DILocation(line: 108, column: 2, scope: !2180)
!2198 = distinct !DISubprogram(name: "runtime.printstring", linkageName: "runtime.printstring", scope: !1605, file: !1605, line: 12, type: !2171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2199)
!2199 = !{!2200, !2201}
!2200 = !DILocalVariable(name: "s", arg: 1, scope: !2198, file: !1605, line: 12, type: !319)
!2201 = !DILocalVariable(name: "i", scope: !2198, file: !1605, line: 13, type: !2202)
!2202 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!2203 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2209)
!2204 = distinct !DISubprogram(name: "runtime.putchar", linkageName: "runtime.putchar", scope: !113, file: !113, line: 214, type: !2205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!183}
!2207 = !{!2208}
!2208 = !DILocalVariable(name: "c", arg: 1, scope: !2204, file: !113, line: 214, type: !183)
!2209 = distinct !DILocation(line: 14, column: 10, scope: !2198)
!2210 = !DILocation(line: 12, column: 6, scope: !2198)
!2211 = !DILocation(line: 13, column: 6, scope: !2198)
!2212 = !DILocation(line: 13, column: 22, scope: !2198)
!2213 = !DILocation(line: 0, scope: !2198)
!2214 = !DILocation(line: 14, column: 13, scope: !2198)
!2215 = !DILocation(line: 14, column: 11, scope: !2198)
!2216 = !DILocation(line: 14, column: 12, scope: !2198)
!2217 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2209)
!2218 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2209)
!2219 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2209)
!2220 = !DILocation(line: 13, column: 26, scope: !2198)
!2221 = !DILocation(line: 13, column: 14, scope: !2198)
!2222 = !DILocation(line: 13, column: 16, scope: !2198)
!2223 = !DILocation(line: 16, column: 2, scope: !2198)
!2224 = distinct !DISubprogram(name: "runtime.printptr", linkageName: "runtime.printptr", scope: !1605, file: !1605, line: 371, type: !2225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2227)
!2225 = !DISubroutineType(cc: DW_CC_nocall, types: !2226)
!2226 = !{!21}
!2227 = !{!2228, !2229, !2230}
!2228 = !DILocalVariable(name: "ptr", arg: 1, scope: !2224, file: !1605, line: 371, type: !21)
!2229 = !DILocalVariable(name: "i", scope: !2224, file: !1605, line: 378, type: !2202)
!2230 = !DILocalVariable(name: "nibble", scope: !2224, file: !1605, line: 379, type: !183)
!2231 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 383, column: 11, scope: !2224)
!2233 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 381, column: 11, scope: !2224)
!2235 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 377, column: 9, scope: !2224)
!2237 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 376, column: 9, scope: !2224)
!2239 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 14, column: 10, scope: !2198, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 373, column: 14, scope: !2224)
!2242 = !DILocation(line: 371, column: 6, scope: !2224)
!2243 = !DILocation(line: 372, column: 5, scope: !2224)
!2244 = !DILocation(line: 372, column: 9, scope: !2224)
!2245 = !DILocation(line: 0, scope: !2224)
!2246 = !DILocation(line: 14, column: 13, scope: !2198, inlinedAt: !2241)
!2247 = !DILocation(line: 14, column: 11, scope: !2198, inlinedAt: !2241)
!2248 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2240)
!2249 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2240)
!2250 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2240)
!2251 = !DILocation(line: 13, column: 14, scope: !2198, inlinedAt: !2241)
!2252 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2238)
!2253 = !DILocation(line: 214, column: 6, scope: !2204, inlinedAt: !2238)
!2254 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2238)
!2255 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2238)
!2256 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2236)
!2257 = !DILocation(line: 214, column: 6, scope: !2204, inlinedAt: !2236)
!2258 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2236)
!2259 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2236)
!2260 = !DILocation(line: 378, column: 6, scope: !2224)
!2261 = !DILocation(line: 378, column: 14, scope: !2224)
!2262 = !DILocation(line: 379, column: 18, scope: !2224)
!2263 = !DILocation(line: 379, column: 22, scope: !2224)
!2264 = !DILocation(line: 379, column: 17, scope: !2224)
!2265 = !DILocation(line: 379, column: 3, scope: !2224)
!2266 = !DILocation(line: 380, column: 6, scope: !2224)
!2267 = !DILocation(line: 380, column: 13, scope: !2224)
!2268 = !DILocation(line: 381, column: 12, scope: !2224)
!2269 = !DILocation(line: 381, column: 19, scope: !2224)
!2270 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2234)
!2271 = !DILocation(line: 214, column: 6, scope: !2204, inlinedAt: !2234)
!2272 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2234)
!2273 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2234)
!2274 = !DILocation(line: 385, column: 3, scope: !2224)
!2275 = !DILocation(line: 378, column: 45, scope: !2224)
!2276 = !DILocation(line: 378, column: 16, scope: !2224)
!2277 = !DILocation(line: 383, column: 12, scope: !2224)
!2278 = !DILocation(line: 383, column: 24, scope: !2224)
!2279 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2232)
!2280 = !DILocation(line: 214, column: 6, scope: !2204, inlinedAt: !2232)
!2281 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2232)
!2282 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2232)
!2283 = distinct !DISubprogram(name: "runtime.printnl", linkageName: "runtime.printnl", scope: !1605, file: !1605, line: 286, type: !2284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2284 = !DISubroutineType(cc: DW_CC_nocall, types: !15)
!2285 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 290, column: 9, scope: !2283)
!2287 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2286)
!2288 = !DILocation(line: 214, column: 6, scope: !2204, inlinedAt: !2286)
!2289 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2286)
!2290 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2286)
!2291 = !DILocation(line: 291, column: 2, scope: !2283)
!2292 = distinct !DISubprogram(name: "runtime.nilPanic", linkageName: "runtime.nilPanic", scope: !87, file: !87, line: 183, type: !2284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2293 = !DILocation(line: 184, column: 30, scope: !2292)
!2294 = !DILocation(line: 184, column: 16, scope: !2292)
!2295 = !DILocation(line: 185, column: 2, scope: !2292)
!2296 = distinct !DISubprogram(name: "runtime.lookupPanic", linkageName: "runtime.lookupPanic", scope: !87, file: !87, line: 193, type: !2284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2297 = !DILocation(line: 194, column: 30, scope: !2296)
!2298 = !DILocation(line: 194, column: 16, scope: !2296)
!2299 = !DILocation(line: 195, column: 2, scope: !2296)
!2300 = distinct !DISubprogram(name: "runtime.panicOrGoexit", linkageName: "runtime.panicOrGoexit", scope: !87, file: !87, line: 58, type: !2301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2304)
!2301 = !DISubroutineType(cc: DW_CC_nocall, types: !2302)
!2302 = !{!454, !2303}
!2303 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.panicState", baseType: !45)
!2304 = !{!2305, !2306, !2307, !2319, !2320}
!2305 = !DILocalVariable(name: "message", arg: 1, scope: !2300, file: !87, line: 58, type: !454)
!2306 = !DILocalVariable(name: "panicking", arg: 2, scope: !2300, file: !87, line: 58, type: !2303)
!2307 = !DILocalVariable(name: "frame", scope: !2300, file: !87, line: 65, type: !2308)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64, align: 64, dwarfAddressSpace: 0)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.deferFrame", baseType: !2310)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !2311)
!2311 = !{!2312, !2313, !2314, !2316, !2317, !2318}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "JumpSP", baseType: !9, size: 64, align: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "JumpPC", baseType: !9, size: 64, align: 64, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraRegs", baseType: !2315, align: 64, offset: 128)
!2315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, align: 64, elements: !920)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "Previous", baseType: !2308, size: 64, align: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "Panicking", baseType: !2303, size: 8, align: 8, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "PanicValue", baseType: !454, size: 128, align: 64, offset: 256)
!2319 = !DILocalVariable(name: "PanicValue", scope: !2300, file: !87, line: 42, type: !454)
!2320 = !DILocalVariable(name: "Panicking", scope: !2300, file: !87, line: 41, type: !2303)
!2321 = !DILocation(line: 58, column: 6, scope: !2300)
!2322 = !DILocation(line: 62, column: 34, scope: !2083, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 65, column: 38, scope: !2300)
!2324 = !DILocation(line: 62, column: 2, scope: !2083, inlinedAt: !2323)
!2325 = !DILocation(line: 63, column: 5, scope: !2083, inlinedAt: !2323)
!2326 = !DILocation(line: 63, column: 7, scope: !2083, inlinedAt: !2323)
!2327 = !DILocation(line: 0, scope: !2083, inlinedAt: !2323)
!2328 = !DILocation(line: 64, column: 15, scope: !2083, inlinedAt: !2323)
!2329 = !DILocation(line: 66, column: 9, scope: !2083, inlinedAt: !2323)
!2330 = !DILocation(line: 65, column: 41, scope: !2300)
!2331 = !DILocation(line: 65, column: 3, scope: !2300)
!2332 = !DILocation(line: 66, column: 6, scope: !2300)
!2333 = !DILocation(line: 66, column: 12, scope: !2300)
!2334 = !DILocation(line: 0, scope: !2300)
!2335 = !DILocation(line: 67, column: 4, scope: !2300)
!2336 = !DILocation(line: 67, column: 23, scope: !2300)
!2337 = !DILocation(line: 67, column: 10, scope: !2300)
!2338 = !DILocation(line: 68, column: 4, scope: !2300)
!2339 = !DILocation(line: 68, column: 22, scope: !2300)
!2340 = !DILocation(line: 68, column: 10, scope: !2300)
!2341 = !DILocation(line: 69, column: 19, scope: !2300)
!2342 = !DILocation(line: 69, column: 18, scope: !2300)
!2343 = !DILocation(line: 73, column: 5, scope: !2300)
!2344 = !DILocation(line: 78, column: 13, scope: !2300)
!2345 = !DILocation(line: 79, column: 11, scope: !2300)
!2346 = !DILocation(line: 79, column: 10, scope: !2300)
!2347 = !DILocation(line: 80, column: 9, scope: !2300)
!2348 = !DILocation(line: 81, column: 7, scope: !2300)
!2349 = !DILocation(line: 82, column: 2, scope: !2300)
!2350 = distinct !DISubprogram(name: "runtime.printitf", linkageName: "runtime.printitf", scope: !1605, file: !1605, line: 293, type: !2351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2353)
!2351 = !DISubroutineType(cc: DW_CC_nocall, types: !2352)
!2352 = !{!454}
!2353 = !{!2354, !2355, !2356, !2357, !2358, !2360, !2361, !2362, !2364, !2365, !2366, !2367, !2368, !2369, !2371, !2372, !2374, !2376, !2377, !2378, !2380}
!2354 = !DILocalVariable(name: "msg", arg: 1, scope: !2350, file: !1605, line: 293, type: !454)
!2355 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !47)
!2356 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !2202)
!2357 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !134)
!2358 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !2359)
!2359 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!2360 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !60)
!2361 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !1702)
!2362 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !2363)
!2363 = !DIBasicType(name: "uint", size: 64, encoding: DW_ATE_unsigned)
!2364 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !45)
!2365 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !141)
!2366 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !43)
!2367 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !11)
!2368 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !21)
!2369 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !2370)
!2370 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!2371 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !472)
!2372 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !2373)
!2373 = !DIBasicType(name: "complex64", size: 64, encoding: DW_ATE_complex_float)
!2374 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !2375)
!2375 = !DIBasicType(name: "complex128", size: 128, encoding: DW_ATE_complex_float)
!2376 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !319)
!2377 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !453)
!2378 = !DILocalVariable(name: "msg", scope: !2350, file: !1605, line: 294, type: !2379)
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.stringer", baseType: !454)
!2380 = !DILocalVariable(name: "itf", scope: !2350, file: !1605, line: 345, type: !454)
!2381 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 14, column: 10, scope: !2198, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 338, column: 14, scope: !2350)
!2384 = !DILocation(line: 293, column: 6, scope: !2350)
!2385 = !DILocation(line: 294, column: 16, scope: !2350)
!2386 = !DILocation(line: 338, column: 15, scope: !2350)
!2387 = !DILocation(line: 12, column: 6, scope: !2198, inlinedAt: !2383)
!2388 = !DILocation(line: 13, column: 6, scope: !2198, inlinedAt: !2383)
!2389 = !DILocation(line: 13, column: 22, scope: !2198, inlinedAt: !2383)
!2390 = !DILocation(line: 0, scope: !2198, inlinedAt: !2383)
!2391 = !DILocation(line: 14, column: 13, scope: !2198, inlinedAt: !2383)
!2392 = !DILocation(line: 14, column: 11, scope: !2198, inlinedAt: !2383)
!2393 = !DILocation(line: 14, column: 12, scope: !2198, inlinedAt: !2383)
!2394 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2382)
!2395 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2382)
!2396 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2382)
!2397 = !DILocation(line: 13, column: 26, scope: !2198, inlinedAt: !2383)
!2398 = !DILocation(line: 13, column: 14, scope: !2198, inlinedAt: !2383)
!2399 = !DILocation(line: 13, column: 16, scope: !2198, inlinedAt: !2383)
!2400 = !DILocation(line: 352, column: 2, scope: !2350)
!2401 = distinct !DISubprogram(name: "runtime._panic", linkageName: "runtime._panic", scope: !87, file: !87, line: 54, type: !2351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2402)
!2402 = !{!2403}
!2403 = !DILocalVariable(name: "message", arg: 1, scope: !2401, file: !87, line: 54, type: !454)
!2404 = !DILocation(line: 54, column: 6, scope: !2401)
!2405 = !DILocation(line: 55, column: 16, scope: !2401)
!2406 = !DILocation(line: 55, column: 15, scope: !2401)
!2407 = !DILocation(line: 56, column: 2, scope: !2401)
!2408 = distinct !DISubprogram(name: "runtime.fminimum", linkageName: "fminimum", scope: !1505, file: !1505, line: 60, type: !2409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!472, !472}
!2411 = !{!2412, !2413}
!2412 = !DILocalVariable(name: "x", arg: 1, scope: !2408, file: !1505, line: 60, type: !472)
!2413 = !DILocalVariable(name: "y", arg: 2, scope: !2408, file: !1505, line: 60, type: !472)
!2414 = !DILocation(line: 60, column: 6, scope: !2408)
!2415 = !DILocation(line: 61, column: 24, scope: !2408)
!2416 = !DILocation(line: 61, column: 27, scope: !2408)
!2417 = !DILocalVariable(name: "x", arg: 1, scope: !2418, file: !1505, line: 87, type: !472)
!2418 = distinct !DISubprogram(name: "runtime.minimumFloat64", linkageName: "runtime.minimumFloat64", scope: !1505, file: !1505, line: 87, type: !2409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2419)
!2419 = !{!2417, !2420}
!2420 = !DILocalVariable(name: "y", arg: 2, scope: !2418, file: !1505, line: 87, type: !472)
!2421 = !DILocation(line: 87, column: 6, scope: !2418, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 61, column: 23, scope: !2408)
!2423 = !DILocation(line: 88, column: 38, scope: !2418, inlinedAt: !2422)
!2424 = !DILocation(line: 88, column: 41, scope: !2418, inlinedAt: !2422)
!2425 = !DILocalVariable(name: "x", arg: 1, scope: !2426, file: !1505, line: 101, type: !472)
!2426 = distinct !DISubprogram(name: "runtime.minimumFloat[float64 int64]", linkageName: "runtime.minimumFloat[float64 int64]", scope: !1505, file: !1505, line: 101, type: !2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!472, !472, !1702, !1702}
!2429 = !{!2425, !2430, !2431, !2432, !2433, !2434}
!2430 = !DILocalVariable(name: "y", arg: 2, scope: !2426, file: !1505, line: 101, type: !472)
!2431 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2426, file: !1505, line: 101, type: !1702)
!2432 = !DILocalVariable(name: "magMask", arg: 4, scope: !2426, file: !1505, line: 101, type: !1702)
!2433 = !DILocalVariable(name: "xBits", scope: !2426, file: !1505, line: 102, type: !454)
!2434 = !DILocalVariable(name: "yBits", scope: !2426, file: !1505, line: 103, type: !454)
!2435 = !DILocation(line: 101, column: 6, scope: !2426, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 88, column: 37, scope: !2418, inlinedAt: !2422)
!2437 = !DILocation(line: 102, column: 11, scope: !2426, inlinedAt: !2436)
!2438 = !DILocation(line: 102, column: 2, scope: !2426, inlinedAt: !2436)
!2439 = !DILocation(line: 103, column: 11, scope: !2426, inlinedAt: !2436)
!2440 = !DILocation(line: 103, column: 2, scope: !2426, inlinedAt: !2436)
!2441 = !DILocation(line: 107, column: 7, scope: !2426, inlinedAt: !2436)
!2442 = !DILocation(line: 107, column: 16, scope: !2426, inlinedAt: !2436)
!2443 = !DILocation(line: 107, column: 13, scope: !2426, inlinedAt: !2436)
!2444 = !DILocation(line: 0, scope: !2426, inlinedAt: !2436)
!2445 = !DILocation(line: 109, column: 7, scope: !2426, inlinedAt: !2436)
!2446 = !DILocation(line: 109, column: 16, scope: !2426, inlinedAt: !2436)
!2447 = !DILocation(line: 109, column: 13, scope: !2426, inlinedAt: !2436)
!2448 = !DILocation(line: 118, column: 5, scope: !2426, inlinedAt: !2436)
!2449 = !DILocation(line: 118, column: 11, scope: !2426, inlinedAt: !2436)
!2450 = !DILocation(line: 121, column: 5, scope: !2426, inlinedAt: !2436)
!2451 = !DILocation(line: 121, column: 11, scope: !2426, inlinedAt: !2436)
!2452 = !DILocation(line: 124, column: 5, scope: !2426, inlinedAt: !2436)
!2453 = !DILocation(line: 124, column: 14, scope: !2426, inlinedAt: !2436)
!2454 = !DILocation(line: 124, column: 11, scope: !2426, inlinedAt: !2436)
!2455 = !DILocation(line: 61, column: 2, scope: !2408)
!2456 = distinct !DISubprogram(name: "runtime.fminimumf", linkageName: "fminimumf", scope: !1505, file: !1505, line: 65, type: !2457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2459)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!2370, !2370}
!2459 = !{!2460, !2461}
!2460 = !DILocalVariable(name: "x", arg: 1, scope: !2456, file: !1505, line: 65, type: !2370)
!2461 = !DILocalVariable(name: "y", arg: 2, scope: !2456, file: !1505, line: 65, type: !2370)
!2462 = !DILocation(line: 65, column: 6, scope: !2456)
!2463 = !DILocation(line: 66, column: 24, scope: !2456)
!2464 = !DILocation(line: 66, column: 27, scope: !2456)
!2465 = !DILocalVariable(name: "x", arg: 1, scope: !2466, file: !1505, line: 83, type: !2370)
!2466 = distinct !DISubprogram(name: "runtime.minimumFloat32", linkageName: "runtime.minimumFloat32", scope: !1505, file: !1505, line: 83, type: !2457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2467)
!2467 = !{!2465, !2468}
!2468 = !DILocalVariable(name: "y", arg: 2, scope: !2466, file: !1505, line: 83, type: !2370)
!2469 = !DILocation(line: 83, column: 6, scope: !2466, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 66, column: 23, scope: !2456)
!2471 = !DILocation(line: 84, column: 38, scope: !2466, inlinedAt: !2470)
!2472 = !DILocation(line: 84, column: 41, scope: !2466, inlinedAt: !2470)
!2473 = !DILocalVariable(name: "x", arg: 1, scope: !2474, file: !1505, line: 101, type: !2370)
!2474 = distinct !DISubprogram(name: "runtime.minimumFloat[float32 int32]", linkageName: "runtime.minimumFloat[float32 int32]", scope: !1505, file: !1505, line: 101, type: !2475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2477)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!2370, !2370, !60, !60}
!2477 = !{!2473, !2478, !2479, !2480, !2481, !2482}
!2478 = !DILocalVariable(name: "y", arg: 2, scope: !2474, file: !1505, line: 101, type: !2370)
!2479 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2474, file: !1505, line: 101, type: !60)
!2480 = !DILocalVariable(name: "magMask", arg: 4, scope: !2474, file: !1505, line: 101, type: !60)
!2481 = !DILocalVariable(name: "xBits", scope: !2474, file: !1505, line: 102, type: !454)
!2482 = !DILocalVariable(name: "yBits", scope: !2474, file: !1505, line: 103, type: !454)
!2483 = !DILocation(line: 101, column: 6, scope: !2474, inlinedAt: !2484)
!2484 = distinct !DILocation(line: 84, column: 37, scope: !2466, inlinedAt: !2470)
!2485 = !DILocation(line: 102, column: 11, scope: !2474, inlinedAt: !2484)
!2486 = !DILocation(line: 102, column: 2, scope: !2474, inlinedAt: !2484)
!2487 = !DILocation(line: 103, column: 11, scope: !2474, inlinedAt: !2484)
!2488 = !DILocation(line: 103, column: 2, scope: !2474, inlinedAt: !2484)
!2489 = !DILocation(line: 107, column: 7, scope: !2474, inlinedAt: !2484)
!2490 = !DILocation(line: 107, column: 16, scope: !2474, inlinedAt: !2484)
!2491 = !DILocation(line: 107, column: 13, scope: !2474, inlinedAt: !2484)
!2492 = !DILocation(line: 0, scope: !2474, inlinedAt: !2484)
!2493 = !DILocation(line: 109, column: 7, scope: !2474, inlinedAt: !2484)
!2494 = !DILocation(line: 109, column: 16, scope: !2474, inlinedAt: !2484)
!2495 = !DILocation(line: 109, column: 13, scope: !2474, inlinedAt: !2484)
!2496 = !DILocation(line: 118, column: 5, scope: !2474, inlinedAt: !2484)
!2497 = !DILocation(line: 118, column: 11, scope: !2474, inlinedAt: !2484)
!2498 = !DILocation(line: 121, column: 5, scope: !2474, inlinedAt: !2484)
!2499 = !DILocation(line: 121, column: 11, scope: !2474, inlinedAt: !2484)
!2500 = !DILocation(line: 124, column: 5, scope: !2474, inlinedAt: !2484)
!2501 = !DILocation(line: 124, column: 14, scope: !2474, inlinedAt: !2484)
!2502 = !DILocation(line: 124, column: 11, scope: !2474, inlinedAt: !2484)
!2503 = !DILocation(line: 66, column: 2, scope: !2456)
!2504 = distinct !DISubprogram(name: "runtime.fmaximum", linkageName: "fmaximum", scope: !1505, file: !1505, line: 70, type: !2409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2505)
!2505 = !{!2506, !2507}
!2506 = !DILocalVariable(name: "x", arg: 1, scope: !2504, file: !1505, line: 70, type: !472)
!2507 = !DILocalVariable(name: "y", arg: 2, scope: !2504, file: !1505, line: 70, type: !472)
!2508 = !DILocation(line: 70, column: 6, scope: !2504)
!2509 = !DILocation(line: 71, column: 24, scope: !2504)
!2510 = !DILocation(line: 71, column: 27, scope: !2504)
!2511 = !DILocalVariable(name: "x", arg: 1, scope: !2512, file: !1505, line: 95, type: !472)
!2512 = distinct !DISubprogram(name: "runtime.maximumFloat64", linkageName: "runtime.maximumFloat64", scope: !1505, file: !1505, line: 95, type: !2409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2513)
!2513 = !{!2511, !2514}
!2514 = !DILocalVariable(name: "y", arg: 2, scope: !2512, file: !1505, line: 95, type: !472)
!2515 = !DILocation(line: 95, column: 6, scope: !2512, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 71, column: 23, scope: !2504)
!2517 = !DILocation(line: 96, column: 38, scope: !2512, inlinedAt: !2516)
!2518 = !DILocation(line: 96, column: 41, scope: !2512, inlinedAt: !2516)
!2519 = !DILocalVariable(name: "x", arg: 1, scope: !2520, file: !1505, line: 133, type: !472)
!2520 = distinct !DISubprogram(name: "runtime.maximumFloat[float64 int64]", linkageName: "runtime.maximumFloat[float64 int64]", scope: !1505, file: !1505, line: 133, type: !2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2521)
!2521 = !{!2519, !2522, !2523, !2524, !2525, !2526, !2527}
!2522 = !DILocalVariable(name: "y", arg: 2, scope: !2520, file: !1505, line: 133, type: !472)
!2523 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2520, file: !1505, line: 133, type: !1702)
!2524 = !DILocalVariable(name: "magMask", arg: 4, scope: !2520, file: !1505, line: 133, type: !1702)
!2525 = !DILocalVariable(name: "xBits", scope: !2520, file: !1505, line: 134, type: !454)
!2526 = !DILocalVariable(name: "yBits", scope: !2520, file: !1505, line: 135, type: !454)
!2527 = !DILocalVariable(name: "maxNegNaN", scope: !2520, file: !1505, line: 149, type: !454)
!2528 = !DILocation(line: 133, column: 6, scope: !2520, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 96, column: 37, scope: !2512, inlinedAt: !2516)
!2530 = !DILocation(line: 134, column: 11, scope: !2520, inlinedAt: !2529)
!2531 = !DILocation(line: 134, column: 2, scope: !2520, inlinedAt: !2529)
!2532 = !DILocation(line: 135, column: 11, scope: !2520, inlinedAt: !2529)
!2533 = !DILocation(line: 135, column: 2, scope: !2520, inlinedAt: !2529)
!2534 = !DILocation(line: 142, column: 5, scope: !2520, inlinedAt: !2529)
!2535 = !DILocation(line: 142, column: 11, scope: !2520, inlinedAt: !2529)
!2536 = !DILocation(line: 0, scope: !2520, inlinedAt: !2529)
!2537 = !DILocation(line: 145, column: 5, scope: !2520, inlinedAt: !2529)
!2538 = !DILocation(line: 145, column: 11, scope: !2520, inlinedAt: !2529)
!2539 = !DILocation(line: 149, column: 16, scope: !2520, inlinedAt: !2529)
!2540 = !DILocation(line: 149, column: 2, scope: !2520, inlinedAt: !2529)
!2541 = !DILocation(line: 151, column: 7, scope: !2520, inlinedAt: !2529)
!2542 = !DILocation(line: 151, column: 16, scope: !2520, inlinedAt: !2529)
!2543 = !DILocation(line: 151, column: 13, scope: !2520, inlinedAt: !2529)
!2544 = !DILocation(line: 153, column: 7, scope: !2520, inlinedAt: !2529)
!2545 = !DILocation(line: 153, column: 16, scope: !2520, inlinedAt: !2529)
!2546 = !DILocation(line: 153, column: 13, scope: !2520, inlinedAt: !2529)
!2547 = !DILocation(line: 156, column: 5, scope: !2520, inlinedAt: !2529)
!2548 = !DILocation(line: 156, column: 14, scope: !2520, inlinedAt: !2529)
!2549 = !DILocation(line: 156, column: 11, scope: !2520, inlinedAt: !2529)
!2550 = !DILocation(line: 71, column: 2, scope: !2504)
!2551 = distinct !DISubprogram(name: "runtime.fmaximumf", linkageName: "fmaximumf", scope: !1505, file: !1505, line: 75, type: !2457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2552)
!2552 = !{!2553, !2554}
!2553 = !DILocalVariable(name: "x", arg: 1, scope: !2551, file: !1505, line: 75, type: !2370)
!2554 = !DILocalVariable(name: "y", arg: 2, scope: !2551, file: !1505, line: 75, type: !2370)
!2555 = !DILocation(line: 75, column: 6, scope: !2551)
!2556 = !DILocation(line: 76, column: 24, scope: !2551)
!2557 = !DILocation(line: 76, column: 27, scope: !2551)
!2558 = !DILocalVariable(name: "x", arg: 1, scope: !2559, file: !1505, line: 91, type: !2370)
!2559 = distinct !DISubprogram(name: "runtime.maximumFloat32", linkageName: "runtime.maximumFloat32", scope: !1505, file: !1505, line: 91, type: !2457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2560)
!2560 = !{!2558, !2561}
!2561 = !DILocalVariable(name: "y", arg: 2, scope: !2559, file: !1505, line: 91, type: !2370)
!2562 = !DILocation(line: 91, column: 6, scope: !2559, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 76, column: 23, scope: !2551)
!2564 = !DILocation(line: 92, column: 38, scope: !2559, inlinedAt: !2563)
!2565 = !DILocation(line: 92, column: 41, scope: !2559, inlinedAt: !2563)
!2566 = !DILocalVariable(name: "x", arg: 1, scope: !2567, file: !1505, line: 133, type: !2370)
!2567 = distinct !DISubprogram(name: "runtime.maximumFloat[float32 int32]", linkageName: "runtime.maximumFloat[float32 int32]", scope: !1505, file: !1505, line: 133, type: !2475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2568)
!2568 = !{!2566, !2569, !2570, !2571, !2572, !2573, !2574}
!2569 = !DILocalVariable(name: "y", arg: 2, scope: !2567, file: !1505, line: 133, type: !2370)
!2570 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2567, file: !1505, line: 133, type: !60)
!2571 = !DILocalVariable(name: "magMask", arg: 4, scope: !2567, file: !1505, line: 133, type: !60)
!2572 = !DILocalVariable(name: "xBits", scope: !2567, file: !1505, line: 134, type: !454)
!2573 = !DILocalVariable(name: "yBits", scope: !2567, file: !1505, line: 135, type: !454)
!2574 = !DILocalVariable(name: "maxNegNaN", scope: !2567, file: !1505, line: 149, type: !454)
!2575 = !DILocation(line: 133, column: 6, scope: !2567, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 92, column: 37, scope: !2559, inlinedAt: !2563)
!2577 = !DILocation(line: 134, column: 11, scope: !2567, inlinedAt: !2576)
!2578 = !DILocation(line: 134, column: 2, scope: !2567, inlinedAt: !2576)
!2579 = !DILocation(line: 135, column: 11, scope: !2567, inlinedAt: !2576)
!2580 = !DILocation(line: 135, column: 2, scope: !2567, inlinedAt: !2576)
!2581 = !DILocation(line: 142, column: 5, scope: !2567, inlinedAt: !2576)
!2582 = !DILocation(line: 142, column: 11, scope: !2567, inlinedAt: !2576)
!2583 = !DILocation(line: 0, scope: !2567, inlinedAt: !2576)
!2584 = !DILocation(line: 145, column: 5, scope: !2567, inlinedAt: !2576)
!2585 = !DILocation(line: 145, column: 11, scope: !2567, inlinedAt: !2576)
!2586 = !DILocation(line: 149, column: 16, scope: !2567, inlinedAt: !2576)
!2587 = !DILocation(line: 149, column: 2, scope: !2567, inlinedAt: !2576)
!2588 = !DILocation(line: 151, column: 7, scope: !2567, inlinedAt: !2576)
!2589 = !DILocation(line: 151, column: 16, scope: !2567, inlinedAt: !2576)
!2590 = !DILocation(line: 151, column: 13, scope: !2567, inlinedAt: !2576)
!2591 = !DILocation(line: 153, column: 7, scope: !2567, inlinedAt: !2576)
!2592 = !DILocation(line: 153, column: 16, scope: !2567, inlinedAt: !2576)
!2593 = !DILocation(line: 153, column: 13, scope: !2567, inlinedAt: !2576)
!2594 = !DILocation(line: 156, column: 5, scope: !2567, inlinedAt: !2576)
!2595 = !DILocation(line: 156, column: 14, scope: !2567, inlinedAt: !2576)
!2596 = !DILocation(line: 156, column: 11, scope: !2567, inlinedAt: !2576)
!2597 = !DILocation(line: 76, column: 2, scope: !2551)
!2598 = distinct !DISubprogram(name: "runtime.gcCallback", linkageName: "tinygo_runtime_bdwgc_callback", scope: !1537, file: !1537, line: 46, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2599 = !DILocation(line: 62, column: 34, scope: !2083, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 193, column: 20, scope: !2601, inlinedAt: !2609)
!2601 = distinct !DISubprogram(name: "internal/task.GCStopWorldAndScan", linkageName: "internal/task.GCStopWorldAndScan", scope: !2, file: !2, line: 192, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !2602)
!2602 = !{!2603, !2604, !2605, !2606, !2607, !2608}
!2603 = !DILocalVariable(name: "current", scope: !2601, file: !2, line: 193, type: !3)
!2604 = !DILocalVariable(name: "otherGoroutines", scope: !2601, file: !2, line: 99, type: !43)
!2605 = !DILocalVariable(name: "scanWaitGroup", scope: !2601, file: !2, line: 151, type: !79)
!2606 = !DILocalVariable(name: "activeTasks", scope: !2601, file: !2, line: 45, type: !3)
!2607 = !DILocalVariable(name: "t", scope: !2601, file: !2, line: 212, type: !3)
!2608 = !DILocalVariable(name: "t", scope: !2601, file: !2, line: 223, type: !3)
!2609 = distinct !DILocation(line: 8, column: 25, scope: !2610, inlinedAt: !2612)
!2610 = distinct !DISubprogram(name: "runtime.gcMarkReachable", linkageName: "runtime.gcMarkReachable", scope: !2611, file: !2611, line: 7, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2611 = !DIFile(filename: "gc_stack_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2612 = distinct !DILocation(line: 48, column: 17, scope: !2598)
!2613 = !DILocation(line: 62, column: 2, scope: !2083, inlinedAt: !2600)
!2614 = !DILocation(line: 63, column: 5, scope: !2083, inlinedAt: !2600)
!2615 = !DILocation(line: 63, column: 7, scope: !2083, inlinedAt: !2600)
!2616 = !DILocation(line: 0, scope: !2083, inlinedAt: !2600)
!2617 = !DILocation(line: 64, column: 15, scope: !2083, inlinedAt: !2600)
!2618 = !DILocation(line: 66, column: 9, scope: !2083, inlinedAt: !2600)
!2619 = !DILocation(line: 193, column: 2, scope: !2601, inlinedAt: !2609)
!2620 = !DILocation(line: 147, column: 18, scope: !2133, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 196, column: 17, scope: !2601, inlinedAt: !2609)
!2622 = !DILocation(line: 147, column: 53, scope: !2133, inlinedAt: !2621)
!2623 = !DILocation(line: 183, column: 6, scope: !2141, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 147, column: 51, scope: !2133, inlinedAt: !2621)
!2625 = !DILocation(line: 196, column: 20, scope: !2601, inlinedAt: !2609)
!2626 = !DILocation(line: 0, scope: !2601, inlinedAt: !2609)
!2627 = !DILocation(line: 31, column: 17, scope: !1988, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 199, column: 22, scope: !2601, inlinedAt: !2609)
!2629 = !DILocation(line: 33, column: 5, scope: !1988, inlinedAt: !2628)
!2630 = !DILocation(line: 156, column: 18, scope: !1995, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 33, column: 27, scope: !1988, inlinedAt: !2628)
!2632 = !DILocation(line: 157, column: 31, scope: !1995, inlinedAt: !2631)
!2633 = !DILocation(line: 157, column: 36, scope: !1995, inlinedAt: !2631)
!2634 = !DILocation(line: 157, column: 41, scope: !1995, inlinedAt: !2631)
!2635 = !DILocation(line: 99, column: 6, scope: !2007, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 157, column: 29, scope: !1995, inlinedAt: !2631)
!2637 = !DILocation(line: 0, scope: !1988, inlinedAt: !2628)
!2638 = !DILocation(line: 43, column: 6, scope: !1988, inlinedAt: !2628)
!2639 = !DILocation(line: 153, column: 18, scope: !1939, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 43, column: 18, scope: !1988, inlinedAt: !2628)
!2641 = !DILocation(line: 153, column: 69, scope: !1939, inlinedAt: !2640)
!2642 = !DILocation(line: 153, column: 74, scope: !1939, inlinedAt: !2640)
!2643 = !DILocation(line: 77, column: 6, scope: !1951, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 153, column: 67, scope: !1939, inlinedAt: !2640)
!2645 = !DILocation(line: 43, column: 22, scope: !1988, inlinedAt: !2628)
!2646 = !DILocation(line: 45, column: 3, scope: !1988, inlinedAt: !2628)
!2647 = !DILocation(line: 26, column: 46, scope: !2026, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 45, column: 15, scope: !1988, inlinedAt: !2628)
!2649 = !DILocation(line: 26, column: 58, scope: !2026, inlinedAt: !2648)
!2650 = !DILocation(line: 26, column: 19, scope: !2026, inlinedAt: !2648)
!2651 = !DILocalVariable(name: "wg", arg: 1, scope: !2652, file: !2, line: 169, type: !2103)
!2652 = distinct !DISubprogram(name: "(*internal/task.waitGroup).wait", linkageName: "(*internal/task.waitGroup).wait", scope: !2, file: !2, line: 169, type: !2101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !2653)
!2653 = !{!2651, !2654}
!2654 = !DILocalVariable(name: "val", scope: !2652, file: !2, line: 171, type: !43)
!2655 = !DILocation(line: 169, column: 22, scope: !2652, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 202, column: 21, scope: !2601, inlinedAt: !2609)
!2657 = !DILocation(line: 147, column: 18, scope: !2133, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 171, column: 19, scope: !2652, inlinedAt: !2656)
!2659 = !DILocation(line: 147, column: 53, scope: !2133, inlinedAt: !2658)
!2660 = !DILocation(line: 183, column: 6, scope: !2141, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 147, column: 51, scope: !2133, inlinedAt: !2658)
!2662 = !DILocation(line: 172, column: 10, scope: !2652, inlinedAt: !2656)
!2663 = !DILocation(line: 0, scope: !2652, inlinedAt: !2656)
!2664 = !DILocation(line: 175, column: 3, scope: !2652, inlinedAt: !2656)
!2665 = !DILocation(line: 175, column: 13, scope: !2652, inlinedAt: !2656)
!2666 = !DILocation(line: 26, column: 46, scope: !2026, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 175, column: 12, scope: !2652, inlinedAt: !2656)
!2668 = !DILocation(line: 26, column: 58, scope: !2026, inlinedAt: !2667)
!2669 = !DILocation(line: 26, column: 19, scope: !2026, inlinedAt: !2667)
!2670 = !DILocation(line: 172, column: 6, scope: !2652, inlinedAt: !2656)
!2671 = !DILocalVariable(name: "x", arg: 1, scope: !2672, file: !1940, line: 150, type: !1943)
!2672 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Store", linkageName: "(*sync/atomic.Uint32).Store", scope: !1940, file: !1940, line: 150, type: !1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !2673)
!2673 = !{!2671, !2674}
!2674 = !DILocalVariable(name: "val", arg: 2, scope: !2672, file: !1940, line: 150, type: !43)
!2675 = !DILocation(line: 150, column: 18, scope: !2672, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 206, column: 16, scope: !2601, inlinedAt: !2609)
!2677 = !DILocation(line: 150, column: 51, scope: !2672, inlinedAt: !2676)
!2678 = !DILocation(line: 150, column: 56, scope: !2672, inlinedAt: !2676)
!2679 = !DILocalVariable(name: "addr", arg: 1, scope: !2680, file: !1952, line: 205, type: !1955)
!2680 = distinct !DISubprogram(name: "sync/atomic.StoreUint32", linkageName: "sync/atomic.StoreUint32", scope: !1952, file: !1952, line: 205, type: !1953, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !2681)
!2681 = !{!2679, !2682}
!2682 = !DILocalVariable(name: "val", arg: 2, scope: !2680, file: !1952, line: 205, type: !43)
!2683 = !DILocation(line: 205, column: 6, scope: !2680, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 150, column: 49, scope: !2672, inlinedAt: !2676)
!2685 = !DILocation(line: 209, column: 33, scope: !2601, inlinedAt: !2609)
!2686 = !DILocation(line: 209, column: 3, scope: !2601, inlinedAt: !2609)
!2687 = !DILocation(line: 212, column: 12, scope: !2601, inlinedAt: !2609)
!2688 = !DILocation(line: 212, column: 7, scope: !2601, inlinedAt: !2609)
!2689 = !DILocation(line: 212, scope: !2601, inlinedAt: !2609)
!2690 = !DILocation(line: 212, column: 27, scope: !2601, inlinedAt: !2609)
!2691 = !DILocation(line: 213, column: 7, scope: !2601, inlinedAt: !2609)
!2692 = !DILocation(line: 213, column: 12, scope: !2601, inlinedAt: !2609)
!2693 = !DILocation(line: 213, column: 9, scope: !2601, inlinedAt: !2609)
!2694 = !DILocation(line: 214, column: 32, scope: !2601, inlinedAt: !2609)
!2695 = !DILocation(line: 214, column: 40, scope: !2601, inlinedAt: !2609)
!2696 = !DILocation(line: 214, column: 31, scope: !2601, inlinedAt: !2609)
!2697 = !DILocation(line: 212, column: 39, scope: !2601, inlinedAt: !2609)
!2698 = !DILocation(line: 212, column: 47, scope: !2601, inlinedAt: !2609)
!2699 = !DILocation(line: 212, column: 35, scope: !2601, inlinedAt: !2609)
!2700 = !DILocation(line: 212, column: 25, scope: !2601, inlinedAt: !2609)
!2701 = !DILocation(line: 169, column: 22, scope: !2652, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 219, column: 21, scope: !2601, inlinedAt: !2609)
!2703 = !DILocation(line: 147, column: 18, scope: !2133, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 171, column: 19, scope: !2652, inlinedAt: !2702)
!2705 = !DILocation(line: 147, column: 53, scope: !2133, inlinedAt: !2704)
!2706 = !DILocation(line: 183, column: 6, scope: !2141, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 147, column: 51, scope: !2133, inlinedAt: !2704)
!2708 = !DILocation(line: 172, column: 10, scope: !2652, inlinedAt: !2702)
!2709 = !DILocation(line: 0, scope: !2652, inlinedAt: !2702)
!2710 = !DILocation(line: 175, column: 3, scope: !2652, inlinedAt: !2702)
!2711 = !DILocation(line: 175, column: 13, scope: !2652, inlinedAt: !2702)
!2712 = !DILocation(line: 26, column: 46, scope: !2026, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 175, column: 12, scope: !2652, inlinedAt: !2702)
!2714 = !DILocation(line: 26, column: 58, scope: !2026, inlinedAt: !2713)
!2715 = !DILocation(line: 26, column: 19, scope: !2026, inlinedAt: !2713)
!2716 = !DILocation(line: 172, column: 6, scope: !2652, inlinedAt: !2702)
!2717 = !DILocation(line: 223, column: 11, scope: !2601, inlinedAt: !2609)
!2718 = !DILocation(line: 223, column: 6, scope: !2601, inlinedAt: !2609)
!2719 = !DILocation(line: 223, scope: !2601, inlinedAt: !2609)
!2720 = !DILocation(line: 223, column: 26, scope: !2601, inlinedAt: !2609)
!2721 = !DILocation(line: 224, column: 6, scope: !2601, inlinedAt: !2609)
!2722 = !DILocation(line: 224, column: 11, scope: !2601, inlinedAt: !2609)
!2723 = !DILocation(line: 224, column: 8, scope: !2601, inlinedAt: !2609)
!2724 = !DILocation(line: 225, column: 14, scope: !2601, inlinedAt: !2609)
!2725 = !DILocation(line: 225, column: 22, scope: !2601, inlinedAt: !2609)
!2726 = !DILocation(line: 225, column: 35, scope: !2601, inlinedAt: !2609)
!2727 = !DILocation(line: 225, column: 43, scope: !2601, inlinedAt: !2609)
!2728 = !DILocalVariable(name: "start", arg: 1, scope: !2729, file: !1537, line: 51, type: !21)
!2729 = distinct !DISubprogram(name: "runtime.markRoots", linkageName: "runtime.markRoots", scope: !1537, file: !1537, line: 51, type: !2730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2732)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!21, !21}
!2732 = !{!2728, !2733}
!2733 = !DILocalVariable(name: "end", arg: 2, scope: !2729, file: !1537, line: 51, type: !21)
!2734 = !DILocation(line: 51, column: 6, scope: !2729, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 225, column: 13, scope: !2601, inlinedAt: !2609)
!2736 = !DILocation(line: 52, column: 17, scope: !2729, inlinedAt: !2735)
!2737 = !DILocation(line: 52, column: 24, scope: !2729, inlinedAt: !2735)
!2738 = !DILocation(line: 52, column: 16, scope: !2729, inlinedAt: !2735)
!2739 = !DILocation(line: 223, column: 38, scope: !2601, inlinedAt: !2609)
!2740 = !DILocation(line: 223, column: 46, scope: !2601, inlinedAt: !2609)
!2741 = !DILocation(line: 223, column: 34, scope: !2601, inlinedAt: !2609)
!2742 = !DILocation(line: 223, column: 24, scope: !2601, inlinedAt: !2609)
!2743 = !DILocation(line: 230, column: 18, scope: !2601, inlinedAt: !2609)
!2744 = !DILocalVariable(name: "found", arg: 1, scope: !2745, file: !2746, line: 95, type: !305)
!2745 = distinct !DISubprogram(name: "runtime.findGlobals", linkageName: "runtime.findGlobals", scope: !2746, file: !2746, line: 95, type: !2747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2749)
!2746 = !DIFile(filename: "os_linux.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!305}
!2749 = !{!2744, !2750, !2751, !2752, !2765, !2766, !2767, !2774, !2775}
!2750 = !DILocalVariable(name: "headerPtr", scope: !2745, file: !2746, line: 103, type: !9)
!2751 = !DILocalVariable(name: "i", scope: !2745, file: !2746, line: 104, type: !2202)
!2752 = !DILocalVariable(name: "header", scope: !2745, file: !2746, line: 111, type: !2753)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64, align: 64, dwarfAddressSpace: 0)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader64", baseType: !2755)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !2756)
!2756 = !{!2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_type", baseType: !43, size: 32, align: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !43, size: 32, align: 32, offset: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "offset", baseType: !21, size: 64, align: 64, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", baseType: !21, size: 64, align: 64, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", baseType: !21, size: 64, align: 64, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "filesz", baseType: !21, size: 64, align: 64, offset: 256)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", baseType: !21, size: 64, align: 64, offset: 320)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !21, size: 64, align: 64, offset: 384)
!2765 = !DILocalVariable(name: "start", scope: !2745, file: !2746, line: 113, type: !21)
!2766 = !DILocalVariable(name: "end", scope: !2745, file: !2746, line: 114, type: !21)
!2767 = !DILocalVariable(name: "header", scope: !2745, file: !2746, line: 118, type: !2768)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64, align: 64, dwarfAddressSpace: 0)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader32", baseType: !2770)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !2771)
!2771 = !{!2757, !2759, !2760, !2761, !2762, !2763, !2772, !2773}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !43, size: 32, align: 32, offset: 384)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !21, size: 64, align: 64, offset: 448)
!2774 = !DILocalVariable(name: "start", scope: !2745, file: !2746, line: 120, type: !21)
!2775 = !DILocalVariable(name: "end", scope: !2745, file: !2746, line: 121, type: !21)
!2776 = !DILocation(line: 95, column: 6, scope: !2745, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 16, column: 13, scope: !2778, inlinedAt: !2779)
!2778 = distinct !DISubprogram(name: "runtime.gcScanGlobals", linkageName: "internal/task.gcScanGlobals", scope: !2611, file: !2611, line: 15, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2779 = distinct !DILocation(line: 233, column: 15, scope: !2601, inlinedAt: !2609)
!2780 = !DILocation(line: 103, column: 2, scope: !2745, inlinedAt: !2777)
!2781 = !DILocation(line: 104, column: 6, scope: !2745, inlinedAt: !2777)
!2782 = !DILocation(line: 104, column: 33, scope: !2745, inlinedAt: !2777)
!2783 = !DILocation(line: 104, column: 16, scope: !2745, inlinedAt: !2777)
!2784 = !DILocation(line: 0, scope: !2745, inlinedAt: !2777)
!2785 = !DILocation(line: 103, column: 80, scope: !2745, inlinedAt: !2777)
!2786 = !DILocation(line: 103, column: 67, scope: !2745, inlinedAt: !2777)
!2787 = !DILocation(line: 103, column: 29, scope: !2745, inlinedAt: !2777)
!2788 = !DILocation(line: 112, column: 14, scope: !2745, inlinedAt: !2777)
!2789 = !DILocation(line: 104, column: 14, scope: !2745, inlinedAt: !2777)
!2790 = !DILocation(line: 111, column: 36, scope: !2745, inlinedAt: !2777)
!2791 = !DILocation(line: 111, column: 4, scope: !2745, inlinedAt: !2777)
!2792 = !DILocation(line: 112, column: 7, scope: !2745, inlinedAt: !2777)
!2793 = !DILocation(line: 112, column: 20, scope: !2745, inlinedAt: !2777)
!2794 = !DILocation(line: 112, column: 34, scope: !2745, inlinedAt: !2777)
!2795 = !DILocation(line: 112, column: 41, scope: !2745, inlinedAt: !2777)
!2796 = !DILocation(line: 112, column: 46, scope: !2745, inlinedAt: !2777)
!2797 = !DILocation(line: 112, column: 52, scope: !2745, inlinedAt: !2777)
!2798 = !DILocation(line: 113, column: 14, scope: !2745, inlinedAt: !2777)
!2799 = !DILocation(line: 113, column: 21, scope: !2745, inlinedAt: !2777)
!2800 = !DILocation(line: 113, column: 5, scope: !2745, inlinedAt: !2777)
!2801 = !DILocation(line: 114, column: 12, scope: !2745, inlinedAt: !2777)
!2802 = !DILocation(line: 114, column: 20, scope: !2745, inlinedAt: !2777)
!2803 = !DILocation(line: 114, column: 5, scope: !2745, inlinedAt: !2777)
!2804 = !DILocation(line: 115, column: 5, scope: !2745, inlinedAt: !2777)
!2805 = !DILocation(line: 115, column: 11, scope: !2745, inlinedAt: !2777)
!2806 = !DILocation(line: 115, column: 18, scope: !2745, inlinedAt: !2777)
!2807 = !DILocation(line: 114, column: 27, scope: !2745, inlinedAt: !2777)
!2808 = !DILocation(line: 114, column: 18, scope: !2745, inlinedAt: !2777)
!2809 = !DILocation(line: 51, column: 6, scope: !2729, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 115, column: 10, scope: !2745, inlinedAt: !2777)
!2811 = !DILocation(line: 52, column: 17, scope: !2729, inlinedAt: !2810)
!2812 = !DILocation(line: 52, column: 24, scope: !2729, inlinedAt: !2810)
!2813 = !DILocation(line: 52, column: 16, scope: !2729, inlinedAt: !2810)
!2814 = !DILocation(line: 125, column: 26, scope: !2745, inlinedAt: !2777)
!2815 = !DILocation(line: 125, column: 48, scope: !2745, inlinedAt: !2777)
!2816 = !DILocation(line: 125, column: 25, scope: !2745, inlinedAt: !2777)
!2817 = !DILocation(line: 125, column: 3, scope: !2745, inlinedAt: !2777)
!2818 = !DILocation(line: 104, column: 41, scope: !2745, inlinedAt: !2777)
!2819 = !DILocation(line: 104, column: 21, scope: !2745, inlinedAt: !2777)
!2820 = !DILocation(line: 49, column: 2, scope: !2598)
!2821 = distinct !DISubprogram(name: "runtime.scanstack", linkageName: "tinygo_scanstack", scope: !2611, file: !2611, line: 23, type: !2822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2823)
!2822 = !DISubroutineType(types: !2226)
!2823 = !{!2824}
!2824 = !DILocalVariable(name: "sp", arg: 1, scope: !2821, file: !2611, line: 23, type: !21)
!2825 = !DILocation(line: 23, column: 6, scope: !2821)
!2826 = !DILocation(line: 24, column: 12, scope: !2821)
!2827 = !DILocation(line: 62, column: 34, scope: !2083, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 290, column: 16, scope: !2829, inlinedAt: !2830)
!2829 = distinct !DISubprogram(name: "internal/task.StackTop", linkageName: "internal/task.StackTop", scope: !2, file: !2, line: 289, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462)
!2830 = distinct !DILocation(line: 24, column: 29, scope: !2821)
!2831 = !DILocation(line: 62, column: 2, scope: !2083, inlinedAt: !2828)
!2832 = !DILocation(line: 63, column: 5, scope: !2083, inlinedAt: !2828)
!2833 = !DILocation(line: 63, column: 7, scope: !2083, inlinedAt: !2828)
!2834 = !DILocation(line: 0, scope: !2083, inlinedAt: !2828)
!2835 = !DILocation(line: 64, column: 15, scope: !2083, inlinedAt: !2828)
!2836 = !DILocation(line: 66, column: 9, scope: !2083, inlinedAt: !2828)
!2837 = !DILocation(line: 290, column: 25, scope: !2829, inlinedAt: !2830)
!2838 = !DILocation(line: 51, column: 6, scope: !2729, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 24, column: 11, scope: !2821)
!2840 = !DILocation(line: 52, column: 17, scope: !2729, inlinedAt: !2839)
!2841 = !DILocation(line: 52, column: 24, scope: !2729, inlinedAt: !2839)
!2842 = !DILocation(line: 52, column: 16, scope: !2729, inlinedAt: !2839)
!2843 = !DILocation(line: 25, column: 2, scope: !2821)
!2844 = distinct !DISubprogram(name: "runtime.main", linkageName: "main", scope: !113, file: !113, line: 80, type: !2845, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2847)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!60, !116}
!2847 = !{!2848, !2849, !2850, !2851, !2852}
!2848 = !DILocalVariable(name: "argc", arg: 1, scope: !2844, file: !113, line: 80, type: !60)
!2849 = !DILocalVariable(name: "argv", arg: 2, scope: !2844, file: !113, line: 80, type: !116)
!2850 = !DILocalVariable(name: "main_argc", scope: !2844, file: !113, line: 105, type: !60)
!2851 = !DILocalVariable(name: "main_argv", scope: !2844, file: !113, line: 106, type: !116)
!2852 = !DILocalVariable(name: "stackTop", scope: !2844, file: !113, line: 75, type: !21)
!2853 = !DILocation(line: 80, column: 6, scope: !2844)
!2854 = !DILocation(line: 87, column: 14, scope: !2844)
!2855 = !DILocation(line: 87, column: 2, scope: !2844)
!2856 = !DILocation(line: 88, column: 14, scope: !2844)
!2857 = !DILocation(line: 88, column: 2, scope: !2844)
!2858 = !DILocation(line: 92, column: 31, scope: !2844)
!2859 = !DILocation(line: 58, column: 6, scope: !2095, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 27, column: 26, scope: !2861, inlinedAt: !2863)
!2861 = distinct !DISubprogram(name: "runtime.getCurrentStackPointer", linkageName: "runtime.getCurrentStackPointer", scope: !2862, file: !2862, line: 26, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2862 = !DIFile(filename: "arch_amd64.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2863 = distinct !DILocation(line: 97, column: 35, scope: !2844)
!2864 = !DILocation(line: 27, column: 16, scope: !2861, inlinedAt: !2863)
!2865 = !DILocation(line: 97, column: 2, scope: !2844)
!2866 = !DILocation(line: 98, column: 9, scope: !2844)
!2867 = !DILocation(line: 101, column: 2, scope: !2844)
!2868 = distinct !DISubprogram(name: "runtime.runMain", linkageName: "runtime.runMain", scope: !113, file: !113, line: 135, type: !2284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2869 = !DILocation(line: 137, column: 22, scope: !2870, inlinedAt: !2874)
!2870 = distinct !DISubprogram(name: "runtime.hardwareRand", linkageName: "runtime.hardwareRand", scope: !2746, file: !2746, line: 137, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2871)
!2871 = !{!2872, !2873}
!2872 = !DILocalVariable(name: "read", scope: !2870, file: !2746, line: 138, type: !43)
!2873 = !DILocalVariable(name: "n", scope: !2870, file: !2746, line: 137, type: !11)
!2874 = distinct !DILocation(line: 27, column: 22, scope: !2875, inlinedAt: !2880)
!2875 = distinct !DISubprogram(name: "runtime.initRand", linkageName: "runtime.initRand", scope: !1500, file: !1500, line: 26, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2876)
!2876 = !{!2877, !2878, !2879}
!2877 = !DILocalVariable(name: "r", scope: !2875, file: !1500, line: 27, type: !11)
!2878 = !DILocalVariable(name: "xorshift64State", scope: !2875, file: !1500, line: 52, type: !11)
!2879 = !DILocalVariable(name: "xorshift32State", scope: !2875, file: !1500, line: 32, type: !43)
!2880 = distinct !DILocation(line: 24, column: 10, scope: !2881, inlinedAt: !2884)
!2881 = distinct !DISubprogram(name: "runtime.run", linkageName: "runtime.run", scope: !127, file: !127, line: 23, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2882)
!2882 = !{!2883}
!2883 = !DILocalVariable(name: "stackTop", scope: !2881, file: !113, line: 75, type: !21)
!2884 = distinct !DILocation(line: 136, column: 5, scope: !2868)
!2885 = !DILocation(line: 138, column: 24, scope: !2870, inlinedAt: !2874)
!2886 = !DILocation(line: 138, column: 2, scope: !2870, inlinedAt: !2874)
!2887 = !DILocation(line: 139, column: 5, scope: !2870, inlinedAt: !2874)
!2888 = !DILocation(line: 139, column: 10, scope: !2870, inlinedAt: !2874)
!2889 = !DILocation(line: 0, scope: !2870, inlinedAt: !2874)
!2890 = !DILocation(line: 140, column: 3, scope: !2870, inlinedAt: !2874)
!2891 = !DILocation(line: 27, column: 2, scope: !2875, inlinedAt: !2880)
!2892 = !DILocation(line: 28, column: 27, scope: !2875, inlinedAt: !2880)
!2893 = !DILocation(line: 28, column: 2, scope: !2875, inlinedAt: !2880)
!2894 = !DILocation(line: 29, column: 27, scope: !2875, inlinedAt: !2880)
!2895 = !DILocation(line: 29, column: 2, scope: !2875, inlinedAt: !2880)
!2896 = !DILocation(line: 35, column: 12, scope: !2897, inlinedAt: !2898)
!2897 = distinct !DISubprogram(name: "runtime.initHeap", linkageName: "runtime.initHeap", scope: !1537, file: !1537, line: 34, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2898 = distinct !DILocation(line: 25, column: 10, scope: !2881, inlinedAt: !2884)
!2899 = !DILocation(line: 39, column: 8, scope: !2897, inlinedAt: !2898)
!2900 = !DILocation(line: 26, column: 12, scope: !2881, inlinedAt: !2884)
!2901 = !DILocalVariable(name: "sp", arg: 1, scope: !2902, file: !2, line: 55, type: !21)
!2902 = distinct !DISubprogram(name: "internal/task.Init", linkageName: "internal/task.Init", scope: !2, file: !2, line: 55, type: !2822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !2903)
!2903 = !{!2901, !2904}
!2904 = !DILocalVariable(name: "stackTop", scope: !2902, file: !2, line: 24, type: !21)
!2905 = !DILocation(line: 55, column: 6, scope: !2902, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 26, column: 11, scope: !2881, inlinedAt: !2884)
!2907 = !DILocation(line: 56, column: 28, scope: !2902, inlinedAt: !2906)
!2908 = !DILocation(line: 56, column: 17, scope: !2902, inlinedAt: !2906)
!2909 = !DILocation(line: 57, column: 18, scope: !2902, inlinedAt: !2906)
!2910 = !DILocation(line: 28, column: 10, scope: !2881, inlinedAt: !2884)
!2911 = !DILocation(line: 137, column: 2, scope: !2868)
!2912 = distinct !DISubprogram(name: "runtime.tinygo_handle_fatal_signal", linkageName: "tinygo_handle_fatal_signal", scope: !113, file: !113, line: 148, type: !2913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2915)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!60, !21}
!2915 = !{!2916, !2917}
!2916 = !DILocalVariable(name: "sig", arg: 1, scope: !2912, file: !113, line: 148, type: !60)
!2917 = !DILocalVariable(name: "addr", arg: 2, scope: !2912, file: !113, line: 148, type: !21)
!2918 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 14, column: 10, scope: !2198, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 158, column: 14, scope: !2912)
!2921 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 290, column: 9, scope: !2283, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 169, column: 10, scope: !2912)
!2924 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 90, column: 10, scope: !2926, inlinedAt: !2935)
!2926 = distinct !DISubprogram(name: "runtime.printuint64", linkageName: "runtime.printuint64", scope: !1605, file: !1605, line: 76, type: !2927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2929)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!11}
!2929 = !{!2930, !2931, !2932, !2933, !2934}
!2930 = !DILocalVariable(name: "n", arg: 1, scope: !2926, file: !1605, line: 76, type: !11)
!2931 = !DILocalVariable(name: "firstdigit", scope: !2926, file: !1605, line: 79, type: !2202)
!2932 = !DILocalVariable(name: "i", scope: !2926, file: !1605, line: 80, type: !2202)
!2933 = !DILocalVariable(name: "digit", scope: !2926, file: !1605, line: 81, type: !183)
!2934 = !DILocalVariable(name: "i", scope: !2926, file: !1605, line: 89, type: !2202)
!2935 = distinct !DILocation(line: 62, column: 13, scope: !2936, inlinedAt: !2941)
!2936 = distinct !DISubprogram(name: "runtime.printuint32", linkageName: "runtime.printuint32", scope: !1605, file: !1605, line: 61, type: !2937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2939)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!43}
!2939 = !{!2940}
!2940 = !DILocalVariable(name: "n", arg: 1, scope: !2936, file: !1605, line: 61, type: !43)
!2941 = distinct !DILocation(line: 72, column: 13, scope: !2942, inlinedAt: !2945)
!2942 = distinct !DISubprogram(name: "runtime.printint32", linkageName: "runtime.printint32", scope: !1605, file: !1605, line: 65, type: !2076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2943)
!2943 = !{!2944}
!2944 = !DILocalVariable(name: "n", arg: 1, scope: !2942, file: !1605, line: 65, type: !60)
!2945 = distinct !DILocation(line: 169, column: 10, scope: !2912)
!2946 = !DILocation(line: 76, column: 6, scope: !2926, inlinedAt: !2935)
!2947 = !DILocation(line: 77, column: 2, scope: !2926, inlinedAt: !2935)
!2948 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 69, column: 10, scope: !2942, inlinedAt: !2945)
!2950 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 290, column: 9, scope: !2283, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 167, column: 10, scope: !2912)
!2953 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 14, column: 10, scope: !2198, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 167, column: 10, scope: !2912)
!2956 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 290, column: 9, scope: !2283, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 165, column: 10, scope: !2912)
!2959 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 14, column: 10, scope: !2198, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 165, column: 10, scope: !2912)
!2962 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 290, column: 9, scope: !2283, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 163, column: 10, scope: !2912)
!2965 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 14, column: 10, scope: !2198, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 163, column: 10, scope: !2912)
!2968 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 14, column: 10, scope: !2198, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 160, column: 13, scope: !2912)
!2971 = !DILocation(line: 215, column: 2, scope: !2204, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 14, column: 10, scope: !2198, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 155, column: 14, scope: !2912)
!2974 = !DILocation(line: 148, column: 6, scope: !2912)
!2975 = !DILocation(line: 154, column: 5, scope: !2912)
!2976 = !DILocation(line: 154, column: 10, scope: !2912)
!2977 = !DILocation(line: 0, scope: !2912)
!2978 = !DILocation(line: 14, column: 13, scope: !2198, inlinedAt: !2973)
!2979 = !DILocation(line: 14, column: 11, scope: !2198, inlinedAt: !2973)
!2980 = !DILocation(line: 14, column: 12, scope: !2198, inlinedAt: !2973)
!2981 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2972)
!2982 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2972)
!2983 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2972)
!2984 = !DILocation(line: 13, column: 26, scope: !2198, inlinedAt: !2973)
!2985 = !DILocation(line: 13, column: 14, scope: !2198, inlinedAt: !2973)
!2986 = !DILocation(line: 13, column: 16, scope: !2198, inlinedAt: !2973)
!2987 = !DILocation(line: 0, scope: !2198, inlinedAt: !2973)
!2988 = !DILocation(line: 156, column: 12, scope: !2912)
!2989 = !DILocation(line: 156, column: 11, scope: !2912)
!2990 = !DILocation(line: 12, column: 6, scope: !2198, inlinedAt: !2970)
!2991 = !DILocation(line: 13, column: 6, scope: !2198, inlinedAt: !2970)
!2992 = !DILocation(line: 13, column: 22, scope: !2198, inlinedAt: !2970)
!2993 = !DILocation(line: 14, column: 13, scope: !2198, inlinedAt: !2970)
!2994 = !DILocation(line: 14, column: 11, scope: !2198, inlinedAt: !2970)
!2995 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2969)
!2996 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2969)
!2997 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2969)
!2998 = !DILocation(line: 13, column: 14, scope: !2198, inlinedAt: !2970)
!2999 = !DILocation(line: 161, column: 9, scope: !2912)
!3000 = !DILocation(line: 31, column: 17, scope: !1988, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 139, column: 16, scope: !3002, inlinedAt: !3003)
!3002 = distinct !DISubprogram(name: "runtime.printlock", linkageName: "runtime.printlock", scope: !127, file: !127, line: 138, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!3003 = distinct !DILocation(line: 163, column: 10, scope: !2912)
!3004 = !DILocation(line: 33, column: 5, scope: !1988, inlinedAt: !3001)
!3005 = !DILocation(line: 156, column: 18, scope: !1995, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 33, column: 27, scope: !1988, inlinedAt: !3001)
!3007 = !DILocation(line: 157, column: 31, scope: !1995, inlinedAt: !3006)
!3008 = !DILocation(line: 157, column: 36, scope: !1995, inlinedAt: !3006)
!3009 = !DILocation(line: 157, column: 41, scope: !1995, inlinedAt: !3006)
!3010 = !DILocation(line: 99, column: 6, scope: !2007, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 157, column: 29, scope: !1995, inlinedAt: !3006)
!3012 = !DILocation(line: 0, scope: !1988, inlinedAt: !3001)
!3013 = !DILocation(line: 43, column: 6, scope: !1988, inlinedAt: !3001)
!3014 = !DILocation(line: 153, column: 18, scope: !1939, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 43, column: 18, scope: !1988, inlinedAt: !3001)
!3016 = !DILocation(line: 153, column: 69, scope: !1939, inlinedAt: !3015)
!3017 = !DILocation(line: 153, column: 74, scope: !1939, inlinedAt: !3015)
!3018 = !DILocation(line: 77, column: 6, scope: !1951, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 153, column: 67, scope: !1939, inlinedAt: !3015)
!3020 = !DILocation(line: 43, column: 22, scope: !1988, inlinedAt: !3001)
!3021 = !DILocation(line: 45, column: 3, scope: !1988, inlinedAt: !3001)
!3022 = !DILocation(line: 26, column: 46, scope: !2026, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 45, column: 15, scope: !1988, inlinedAt: !3001)
!3024 = !DILocation(line: 26, column: 58, scope: !2026, inlinedAt: !3023)
!3025 = !DILocation(line: 26, column: 19, scope: !2026, inlinedAt: !3023)
!3026 = !DILocation(line: 12, column: 6, scope: !2198, inlinedAt: !2967)
!3027 = !DILocation(line: 13, column: 6, scope: !2198, inlinedAt: !2967)
!3028 = !DILocation(line: 13, column: 22, scope: !2198, inlinedAt: !2967)
!3029 = !DILocation(line: 14, column: 13, scope: !2198, inlinedAt: !2967)
!3030 = !DILocation(line: 14, column: 11, scope: !2198, inlinedAt: !2967)
!3031 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2966)
!3032 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2966)
!3033 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2966)
!3034 = !DILocation(line: 13, column: 14, scope: !2198, inlinedAt: !2967)
!3035 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2963)
!3036 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2963)
!3037 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2963)
!3038 = !DILocation(line: 50, column: 12, scope: !1928, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 143, column: 18, scope: !3040, inlinedAt: !3041)
!3040 = distinct !DISubprogram(name: "runtime.printunlock", linkageName: "runtime.printunlock", scope: !127, file: !127, line: 142, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!3041 = distinct !DILocation(line: 163, column: 10, scope: !2912)
!3042 = !DILocation(line: 153, column: 69, scope: !1939, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 50, column: 24, scope: !1928, inlinedAt: !3039)
!3044 = !DILocation(line: 153, column: 74, scope: !1939, inlinedAt: !3043)
!3045 = !DILocation(line: 77, column: 6, scope: !1951, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 153, column: 67, scope: !1939, inlinedAt: !3043)
!3047 = !DILocation(line: 50, column: 29, scope: !1928, inlinedAt: !3039)
!3048 = !DILocation(line: 0, scope: !1928, inlinedAt: !3039)
!3049 = !DILocation(line: 52, column: 8, scope: !1928, inlinedAt: !3039)
!3050 = !DILocation(line: 55, column: 3, scope: !1928, inlinedAt: !3039)
!3051 = !DILocation(line: 53, column: 17, scope: !1966, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 55, column: 15, scope: !1928, inlinedAt: !3039)
!3053 = !DILocation(line: 54, column: 46, scope: !1966, inlinedAt: !3052)
!3054 = !DILocation(line: 54, column: 19, scope: !1966, inlinedAt: !3052)
!3055 = !DILocation(line: 180, column: 8, scope: !2912)
!3056 = !DILocation(line: 180, column: 7, scope: !2912)
!3057 = !DILocation(line: 181, column: 2, scope: !2912)
!3058 = !DILocation(line: 31, column: 17, scope: !1988, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 139, column: 16, scope: !3002, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 165, column: 10, scope: !2912)
!3061 = !DILocation(line: 33, column: 5, scope: !1988, inlinedAt: !3059)
!3062 = !DILocation(line: 156, column: 18, scope: !1995, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 33, column: 27, scope: !1988, inlinedAt: !3059)
!3064 = !DILocation(line: 157, column: 31, scope: !1995, inlinedAt: !3063)
!3065 = !DILocation(line: 157, column: 36, scope: !1995, inlinedAt: !3063)
!3066 = !DILocation(line: 157, column: 41, scope: !1995, inlinedAt: !3063)
!3067 = !DILocation(line: 99, column: 6, scope: !2007, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 157, column: 29, scope: !1995, inlinedAt: !3063)
!3069 = !DILocation(line: 0, scope: !1988, inlinedAt: !3059)
!3070 = !DILocation(line: 43, column: 6, scope: !1988, inlinedAt: !3059)
!3071 = !DILocation(line: 153, column: 18, scope: !1939, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 43, column: 18, scope: !1988, inlinedAt: !3059)
!3073 = !DILocation(line: 153, column: 69, scope: !1939, inlinedAt: !3072)
!3074 = !DILocation(line: 153, column: 74, scope: !1939, inlinedAt: !3072)
!3075 = !DILocation(line: 77, column: 6, scope: !1951, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 153, column: 67, scope: !1939, inlinedAt: !3072)
!3077 = !DILocation(line: 43, column: 22, scope: !1988, inlinedAt: !3059)
!3078 = !DILocation(line: 45, column: 3, scope: !1988, inlinedAt: !3059)
!3079 = !DILocation(line: 26, column: 46, scope: !2026, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 45, column: 15, scope: !1988, inlinedAt: !3059)
!3081 = !DILocation(line: 26, column: 58, scope: !2026, inlinedAt: !3080)
!3082 = !DILocation(line: 26, column: 19, scope: !2026, inlinedAt: !3080)
!3083 = !DILocation(line: 12, column: 6, scope: !2198, inlinedAt: !2961)
!3084 = !DILocation(line: 13, column: 6, scope: !2198, inlinedAt: !2961)
!3085 = !DILocation(line: 13, column: 22, scope: !2198, inlinedAt: !2961)
!3086 = !DILocation(line: 14, column: 13, scope: !2198, inlinedAt: !2961)
!3087 = !DILocation(line: 14, column: 11, scope: !2198, inlinedAt: !2961)
!3088 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2960)
!3089 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2960)
!3090 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2960)
!3091 = !DILocation(line: 13, column: 14, scope: !2198, inlinedAt: !2961)
!3092 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2957)
!3093 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2957)
!3094 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2957)
!3095 = !DILocation(line: 50, column: 12, scope: !1928, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 143, column: 18, scope: !3040, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 165, column: 10, scope: !2912)
!3098 = !DILocation(line: 153, column: 69, scope: !1939, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 50, column: 24, scope: !1928, inlinedAt: !3096)
!3100 = !DILocation(line: 153, column: 74, scope: !1939, inlinedAt: !3099)
!3101 = !DILocation(line: 77, column: 6, scope: !1951, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 153, column: 67, scope: !1939, inlinedAt: !3099)
!3103 = !DILocation(line: 50, column: 29, scope: !1928, inlinedAt: !3096)
!3104 = !DILocation(line: 0, scope: !1928, inlinedAt: !3096)
!3105 = !DILocation(line: 52, column: 8, scope: !1928, inlinedAt: !3096)
!3106 = !DILocation(line: 55, column: 3, scope: !1928, inlinedAt: !3096)
!3107 = !DILocation(line: 53, column: 17, scope: !1966, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 55, column: 15, scope: !1928, inlinedAt: !3096)
!3109 = !DILocation(line: 54, column: 46, scope: !1966, inlinedAt: !3108)
!3110 = !DILocation(line: 54, column: 19, scope: !1966, inlinedAt: !3108)
!3111 = !DILocation(line: 31, column: 17, scope: !1988, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 139, column: 16, scope: !3002, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 167, column: 10, scope: !2912)
!3114 = !DILocation(line: 33, column: 5, scope: !1988, inlinedAt: !3112)
!3115 = !DILocation(line: 156, column: 18, scope: !1995, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 33, column: 27, scope: !1988, inlinedAt: !3112)
!3117 = !DILocation(line: 157, column: 31, scope: !1995, inlinedAt: !3116)
!3118 = !DILocation(line: 157, column: 36, scope: !1995, inlinedAt: !3116)
!3119 = !DILocation(line: 157, column: 41, scope: !1995, inlinedAt: !3116)
!3120 = !DILocation(line: 99, column: 6, scope: !2007, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 157, column: 29, scope: !1995, inlinedAt: !3116)
!3122 = !DILocation(line: 0, scope: !1988, inlinedAt: !3112)
!3123 = !DILocation(line: 43, column: 6, scope: !1988, inlinedAt: !3112)
!3124 = !DILocation(line: 153, column: 18, scope: !1939, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 43, column: 18, scope: !1988, inlinedAt: !3112)
!3126 = !DILocation(line: 153, column: 69, scope: !1939, inlinedAt: !3125)
!3127 = !DILocation(line: 153, column: 74, scope: !1939, inlinedAt: !3125)
!3128 = !DILocation(line: 77, column: 6, scope: !1951, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 153, column: 67, scope: !1939, inlinedAt: !3125)
!3130 = !DILocation(line: 43, column: 22, scope: !1988, inlinedAt: !3112)
!3131 = !DILocation(line: 45, column: 3, scope: !1988, inlinedAt: !3112)
!3132 = !DILocation(line: 26, column: 46, scope: !2026, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 45, column: 15, scope: !1988, inlinedAt: !3112)
!3134 = !DILocation(line: 26, column: 58, scope: !2026, inlinedAt: !3133)
!3135 = !DILocation(line: 26, column: 19, scope: !2026, inlinedAt: !3133)
!3136 = !DILocation(line: 12, column: 6, scope: !2198, inlinedAt: !2955)
!3137 = !DILocation(line: 13, column: 6, scope: !2198, inlinedAt: !2955)
!3138 = !DILocation(line: 13, column: 22, scope: !2198, inlinedAt: !2955)
!3139 = !DILocation(line: 14, column: 13, scope: !2198, inlinedAt: !2955)
!3140 = !DILocation(line: 14, column: 11, scope: !2198, inlinedAt: !2955)
!3141 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2954)
!3142 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2954)
!3143 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2954)
!3144 = !DILocation(line: 13, column: 14, scope: !2198, inlinedAt: !2955)
!3145 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2951)
!3146 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2951)
!3147 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2951)
!3148 = !DILocation(line: 50, column: 12, scope: !1928, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 143, column: 18, scope: !3040, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 167, column: 10, scope: !2912)
!3151 = !DILocation(line: 153, column: 69, scope: !1939, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 50, column: 24, scope: !1928, inlinedAt: !3149)
!3153 = !DILocation(line: 153, column: 74, scope: !1939, inlinedAt: !3152)
!3154 = !DILocation(line: 77, column: 6, scope: !1951, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 153, column: 67, scope: !1939, inlinedAt: !3152)
!3156 = !DILocation(line: 50, column: 29, scope: !1928, inlinedAt: !3149)
!3157 = !DILocation(line: 0, scope: !1928, inlinedAt: !3149)
!3158 = !DILocation(line: 52, column: 8, scope: !1928, inlinedAt: !3149)
!3159 = !DILocation(line: 55, column: 3, scope: !1928, inlinedAt: !3149)
!3160 = !DILocation(line: 53, column: 17, scope: !1966, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 55, column: 15, scope: !1928, inlinedAt: !3149)
!3162 = !DILocation(line: 54, column: 46, scope: !1966, inlinedAt: !3161)
!3163 = !DILocation(line: 54, column: 19, scope: !1966, inlinedAt: !3161)
!3164 = !DILocation(line: 169, column: 11, scope: !2912)
!3165 = !DILocation(line: 31, column: 17, scope: !1988, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 139, column: 16, scope: !3002, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 169, column: 10, scope: !2912)
!3168 = !DILocation(line: 33, column: 5, scope: !1988, inlinedAt: !3166)
!3169 = !DILocation(line: 156, column: 18, scope: !1995, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 33, column: 27, scope: !1988, inlinedAt: !3166)
!3171 = !DILocation(line: 157, column: 31, scope: !1995, inlinedAt: !3170)
!3172 = !DILocation(line: 157, column: 36, scope: !1995, inlinedAt: !3170)
!3173 = !DILocation(line: 157, column: 41, scope: !1995, inlinedAt: !3170)
!3174 = !DILocation(line: 99, column: 6, scope: !2007, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 157, column: 29, scope: !1995, inlinedAt: !3170)
!3176 = !DILocation(line: 0, scope: !1988, inlinedAt: !3166)
!3177 = !DILocation(line: 43, column: 6, scope: !1988, inlinedAt: !3166)
!3178 = !DILocation(line: 153, column: 18, scope: !1939, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 43, column: 18, scope: !1988, inlinedAt: !3166)
!3180 = !DILocation(line: 153, column: 69, scope: !1939, inlinedAt: !3179)
!3181 = !DILocation(line: 153, column: 74, scope: !1939, inlinedAt: !3179)
!3182 = !DILocation(line: 77, column: 6, scope: !1951, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 153, column: 67, scope: !1939, inlinedAt: !3179)
!3184 = !DILocation(line: 43, column: 22, scope: !1988, inlinedAt: !3166)
!3185 = !DILocation(line: 45, column: 3, scope: !1988, inlinedAt: !3166)
!3186 = !DILocation(line: 26, column: 46, scope: !2026, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 45, column: 15, scope: !1988, inlinedAt: !3166)
!3188 = !DILocation(line: 26, column: 58, scope: !2026, inlinedAt: !3187)
!3189 = !DILocation(line: 26, column: 19, scope: !2026, inlinedAt: !3187)
!3190 = !DILocation(line: 65, column: 6, scope: !2942, inlinedAt: !2945)
!3191 = !DILocation(line: 68, column: 5, scope: !2942, inlinedAt: !2945)
!3192 = !DILocation(line: 68, column: 7, scope: !2942, inlinedAt: !2945)
!3193 = !DILocation(line: 0, scope: !2942, inlinedAt: !2945)
!3194 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2949)
!3195 = !DILocation(line: 214, column: 6, scope: !2204, inlinedAt: !2949)
!3196 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2949)
!3197 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2949)
!3198 = !DILocation(line: 70, column: 8, scope: !2942, inlinedAt: !2945)
!3199 = !DILocation(line: 70, column: 7, scope: !2942, inlinedAt: !2945)
!3200 = !DILocation(line: 70, column: 3, scope: !2942, inlinedAt: !2945)
!3201 = !DILocation(line: 65, column: 17, scope: !2942, inlinedAt: !2945)
!3202 = !DILocation(line: 72, column: 21, scope: !2942, inlinedAt: !2945)
!3203 = !DILocation(line: 61, column: 6, scope: !2936, inlinedAt: !2941)
!3204 = !DILocation(line: 62, column: 21, scope: !2936, inlinedAt: !2941)
!3205 = !DILocation(line: 62, column: 20, scope: !2936, inlinedAt: !2941)
!3206 = !DILocation(line: 79, column: 2, scope: !2926, inlinedAt: !2935)
!3207 = !DILocation(line: 80, column: 6, scope: !2926, inlinedAt: !2935)
!3208 = !DILocation(line: 0, scope: !2926, inlinedAt: !2935)
!3209 = !DILocation(line: 89, column: 23, scope: !2926, inlinedAt: !2935)
!3210 = !DILocation(line: 89, column: 25, scope: !2926, inlinedAt: !2935)
!3211 = !DILocation(line: 80, column: 15, scope: !2926, inlinedAt: !2935)
!3212 = !DILocation(line: 81, column: 17, scope: !2926, inlinedAt: !2935)
!3213 = !DILocation(line: 81, column: 18, scope: !2926, inlinedAt: !2935)
!3214 = !DILocation(line: 81, column: 16, scope: !2926, inlinedAt: !2935)
!3215 = !DILocation(line: 82, column: 15, scope: !2926, inlinedAt: !2935)
!3216 = !DILocation(line: 82, column: 9, scope: !2926, inlinedAt: !2935)
!3217 = !DILocation(line: 83, column: 12, scope: !2926, inlinedAt: !2935)
!3218 = !DILocation(line: 86, column: 3, scope: !2926, inlinedAt: !2935)
!3219 = !DILocation(line: 80, column: 23, scope: !2926, inlinedAt: !2935)
!3220 = !DILocation(line: 80, column: 17, scope: !2926, inlinedAt: !2935)
!3221 = !DILocation(line: 90, column: 18, scope: !2926, inlinedAt: !2935)
!3222 = !DILocation(line: 90, column: 17, scope: !2926, inlinedAt: !2935)
!3223 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2925)
!3224 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2925)
!3225 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2925)
!3226 = !DILocation(line: 89, column: 31, scope: !2926, inlinedAt: !2935)
!3227 = !DILocation(line: 92, column: 2, scope: !2926, inlinedAt: !2935)
!3228 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2922)
!3229 = !DILocation(line: 214, column: 6, scope: !2204, inlinedAt: !2922)
!3230 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2922)
!3231 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2922)
!3232 = !DILocation(line: 49, column: 17, scope: !1928, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 143, column: 18, scope: !3040, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 169, column: 10, scope: !2912)
!3235 = !DILocation(line: 50, column: 12, scope: !1928, inlinedAt: !3233)
!3236 = !DILocation(line: 153, column: 18, scope: !1939, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 50, column: 24, scope: !1928, inlinedAt: !3233)
!3238 = !DILocation(line: 153, column: 69, scope: !1939, inlinedAt: !3237)
!3239 = !DILocation(line: 153, column: 74, scope: !1939, inlinedAt: !3237)
!3240 = !DILocation(line: 77, column: 6, scope: !1951, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 153, column: 67, scope: !1939, inlinedAt: !3237)
!3242 = !DILocation(line: 50, column: 5, scope: !1928, inlinedAt: !3233)
!3243 = !DILocation(line: 50, column: 29, scope: !1928, inlinedAt: !3233)
!3244 = !DILocation(line: 0, scope: !1928, inlinedAt: !3233)
!3245 = !DILocation(line: 52, column: 8, scope: !1928, inlinedAt: !3233)
!3246 = !DILocation(line: 55, column: 3, scope: !1928, inlinedAt: !3233)
!3247 = !DILocation(line: 53, column: 17, scope: !1966, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 55, column: 15, scope: !1928, inlinedAt: !3233)
!3249 = !DILocation(line: 54, column: 46, scope: !1966, inlinedAt: !3248)
!3250 = !DILocation(line: 54, column: 19, scope: !1966, inlinedAt: !3248)
!3251 = !DILocation(line: 14, column: 13, scope: !2198, inlinedAt: !2920)
!3252 = !DILocation(line: 14, column: 11, scope: !2198, inlinedAt: !2920)
!3253 = !DILocation(line: 14, column: 12, scope: !2198, inlinedAt: !2920)
!3254 = !DILocation(line: 215, column: 17, scope: !2204, inlinedAt: !2919)
!3255 = !DILocation(line: 216, column: 12, scope: !2204, inlinedAt: !2919)
!3256 = !DILocation(line: 217, column: 2, scope: !2204, inlinedAt: !2919)
!3257 = !DILocation(line: 13, column: 26, scope: !2198, inlinedAt: !2920)
!3258 = !DILocation(line: 13, column: 14, scope: !2198, inlinedAt: !2920)
!3259 = !DILocation(line: 13, column: 16, scope: !2198, inlinedAt: !2920)
!3260 = !DILocation(line: 0, scope: !2198, inlinedAt: !2920)
!3261 = distinct !DISubprogram(name: "runtime.tinygo_signal_handler", linkageName: "tinygo_signal_handler", scope: !113, file: !113, line: 420, type: !2076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !3262)
!3262 = !{!3263, !3264, !3265, !3266}
!3263 = !DILocalVariable(name: "s", arg: 1, scope: !3261, file: !113, line: 420, type: !60)
!3264 = !DILocalVariable(name: "mask", scope: !3261, file: !113, line: 427, type: !43)
!3265 = !DILocalVariable(name: "val", scope: !3261, file: !113, line: 428, type: !43)
!3266 = !DILocalVariable(name: "swapped", scope: !3261, file: !113, line: 429, type: !47)
!3267 = !DILocation(line: 420, column: 6, scope: !3261)
!3268 = !DILocation(line: 0, scope: !3261)
!3269 = !DILocation(line: 427, column: 31, scope: !3261)
!3270 = !DILocation(line: 427, column: 3, scope: !3261)
!3271 = !DILocation(line: 147, column: 18, scope: !2133, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 428, column: 30, scope: !3261)
!3273 = !DILocation(line: 147, column: 53, scope: !2133, inlinedAt: !3272)
!3274 = !DILocation(line: 183, column: 6, scope: !2141, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 147, column: 51, scope: !2133, inlinedAt: !3272)
!3276 = !DILocation(line: 428, column: 3, scope: !3261)
!3277 = !DILocation(line: 429, column: 45, scope: !3261)
!3278 = !DILocation(line: 429, column: 50, scope: !3261)
!3279 = !DILocation(line: 429, column: 54, scope: !3261)
!3280 = !DILocation(line: 429, column: 53, scope: !3261)
!3281 = !DILocation(line: 156, column: 18, scope: !1995, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 429, column: 44, scope: !3261)
!3283 = !DILocation(line: 157, column: 31, scope: !1995, inlinedAt: !3282)
!3284 = !DILocation(line: 157, column: 36, scope: !1995, inlinedAt: !3282)
!3285 = !DILocation(line: 157, column: 41, scope: !1995, inlinedAt: !3282)
!3286 = !DILocation(line: 99, column: 6, scope: !2007, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 157, column: 29, scope: !1995, inlinedAt: !3282)
!3288 = !DILocation(line: 429, column: 3, scope: !3261)
!3289 = !DILocation(line: 430, column: 6, scope: !3261)
!3290 = !DILocation(line: 153, column: 18, scope: !1939, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 437, column: 21, scope: !3261)
!3292 = !DILocation(line: 153, column: 69, scope: !1939, inlinedAt: !3291)
!3293 = !DILocation(line: 153, column: 74, scope: !1939, inlinedAt: !3291)
!3294 = !DILocation(line: 77, column: 6, scope: !1951, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 153, column: 67, scope: !1939, inlinedAt: !3291)
!3296 = !DILocation(line: 437, column: 25, scope: !3261)
!3297 = !DILocation(line: 58, column: 17, scope: !2126, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 441, column: 22, scope: !3261)
!3299 = !DILocation(line: 59, column: 50, scope: !2126, inlinedAt: !3298)
!3300 = !DILocation(line: 59, column: 23, scope: !2126, inlinedAt: !3298)
!3301 = !DILocation(line: 443, column: 2, scope: !3261)
!3302 = distinct !DISubprogram(name: "slices.pdqsortOrdered[int]", linkageName: "slices.pdqsortOrdered[int]", scope: !3303, file: !3303, line: 63, type: !3304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3310)
!3303 = !DIFile(filename: "zsortordered.go", directory: "/usr/local/go/src/slices")
!3304 = !DISubroutineType(cc: DW_CC_nocall, types: !3305)
!3305 = !{!3306, !2202, !2202, !2202}
!3306 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]int", size: 192, align: 64, elements: !3307)
!3307 = !{!3308, !323, !328}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !3309, size: 64, align: 64)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64, align: 64, dwarfAddressSpace: 0)
!3310 = !{!3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3321, !3322, !3323, !3324, !3325, !3326}
!3311 = !DILocalVariable(name: "data", arg: 1, scope: !3302, file: !3303, line: 63, type: !3306)
!3312 = !DILocalVariable(name: "a", arg: 2, scope: !3302, file: !3303, line: 63, type: !2202)
!3313 = !DILocalVariable(name: "b", arg: 3, scope: !3302, file: !3303, line: 63, type: !2202)
!3314 = !DILocalVariable(name: "limit", arg: 4, scope: !3302, file: !3303, line: 63, type: !2202)
!3315 = !DILocalVariable(name: "wasBalanced", scope: !3302, file: !3303, line: 67, type: !47)
!3316 = !DILocalVariable(name: "wasPartitioned", scope: !3302, file: !3303, line: 68, type: !47)
!3317 = !DILocalVariable(name: "length", scope: !3302, file: !3303, line: 72, type: !2202)
!3318 = !DILocalVariable(name: "pivot", scope: !3302, file: !3303, line: 91, type: !2202)
!3319 = !DILocalVariable(name: "hint", scope: !3302, file: !3303, line: 91, type: !3320)
!3320 = !DIDerivedType(tag: DW_TAG_typedef, name: "slices.sortedHint", baseType: !2202)
!3321 = !DILocalVariable(name: "mid", scope: !3302, file: !3303, line: 111, type: !2202)
!3322 = !DILocalVariable(name: "mid", scope: !3302, file: !3303, line: 116, type: !2202)
!3323 = !DILocalVariable(name: "alreadyPartitioned", scope: !3302, file: !3303, line: 116, type: !47)
!3324 = !DILocalVariable(name: "leftLen", scope: !3302, file: !3303, line: 119, type: !2202)
!3325 = !DILocalVariable(name: "rightLen", scope: !3302, file: !3303, line: 119, type: !2202)
!3326 = !DILocalVariable(name: "balanceThreshold", scope: !3302, file: !3303, line: 120, type: !2202)
!3327 = !DILocation(line: 269, column: 9, scope: !3328, inlinedAt: !3340)
!3328 = distinct !DISubprogram(name: "slices.choosePivotOrdered[int]", linkageName: "slices.choosePivotOrdered[int]", scope: !3303, file: !3303, line: 263, type: !3329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3331)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!3306, !2202, !2202}
!3331 = !{!3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339}
!3332 = !DILocalVariable(name: "data", arg: 1, scope: !3328, file: !3303, line: 263, type: !3306)
!3333 = !DILocalVariable(name: "a", arg: 2, scope: !3328, file: !3303, line: 263, type: !2202)
!3334 = !DILocalVariable(name: "b", arg: 3, scope: !3328, file: !3303, line: 263, type: !2202)
!3335 = !DILocalVariable(name: "l", scope: !3328, file: !3303, line: 269, type: !2202)
!3336 = !DILocalVariable(name: "i", scope: !3328, file: !3303, line: 273, type: !2202)
!3337 = !DILocalVariable(name: "j", scope: !3328, file: !3303, line: 274, type: !2202)
!3338 = !DILocalVariable(name: "k", scope: !3328, file: !3303, line: 275, type: !2202)
!3339 = !DILocalVariable(name: "swaps", scope: !3328, file: !3303, line: 272, type: !2202)
!3340 = distinct !DILocation(line: 91, column: 36, scope: !3302)
!3341 = !DILocation(line: 63, column: 6, scope: !3302)
!3342 = !DILocation(line: 67, column: 3, scope: !3302)
!3343 = !DILocation(line: 68, column: 3, scope: !3302)
!3344 = !DILocation(line: 72, column: 15, scope: !3302)
!3345 = !DILocation(line: 74, column: 13, scope: !3302)
!3346 = !DILocation(line: 0, scope: !3302)
!3347 = !DILocation(line: 72, column: 13, scope: !3302)
!3348 = !DILocation(line: 72, column: 17, scope: !3302)
!3349 = !DILocation(line: 63, column: 49, scope: !3302)
!3350 = !DILocation(line: 75, column: 25, scope: !3302)
!3351 = !DILocation(line: 75, column: 31, scope: !3302)
!3352 = !DILocation(line: 75, column: 34, scope: !3302)
!3353 = !DILocalVariable(name: "data", arg: 1, scope: !3354, file: !3303, line: 12, type: !3306)
!3354 = distinct !DISubprogram(name: "slices.insertionSortOrdered[int]", linkageName: "slices.insertionSortOrdered[int]", scope: !3303, file: !3303, line: 12, type: !3329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3355)
!3355 = !{!3353, !3356, !3357, !3358, !3359}
!3356 = !DILocalVariable(name: "a", arg: 2, scope: !3354, file: !3303, line: 12, type: !2202)
!3357 = !DILocalVariable(name: "b", arg: 3, scope: !3354, file: !3303, line: 12, type: !2202)
!3358 = !DILocalVariable(name: "i", scope: !3354, file: !3303, line: 13, type: !2202)
!3359 = !DILocalVariable(name: "j", scope: !3354, file: !3303, line: 14, type: !2202)
!3360 = !DILocation(line: 12, column: 6, scope: !3354, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 75, column: 24, scope: !3302)
!3362 = !DILocation(line: 13, column: 11, scope: !3354, inlinedAt: !3361)
!3363 = !DILocation(line: 13, column: 6, scope: !3354, inlinedAt: !3361)
!3364 = !DILocation(line: 13, scope: !3354, inlinedAt: !3361)
!3365 = !DILocation(line: 13, column: 20, scope: !3354, inlinedAt: !3361)
!3366 = !DILocation(line: 0, scope: !3354, inlinedAt: !3361)
!3367 = !DILocation(line: 14, column: 15, scope: !3354, inlinedAt: !3361)
!3368 = !DILocation(line: 14, column: 19, scope: !3354, inlinedAt: !3361)
!3369 = !DILocation(line: 14, column: 17, scope: !3354, inlinedAt: !3361)
!3370 = !DILocation(line: 14, column: 33, scope: !3354, inlinedAt: !3361)
!3371 = !DILocation(line: 14, column: 38, scope: !3354, inlinedAt: !3361)
!3372 = !DILocation(line: 14, column: 37, scope: !3354, inlinedAt: !3361)
!3373 = !DILocation(line: 14, column: 42, scope: !3354, inlinedAt: !3361)
!3374 = !DILocation(line: 14, column: 47, scope: !3354, inlinedAt: !3361)
!3375 = !DILocation(line: 14, column: 48, scope: !3354, inlinedAt: !3361)
!3376 = !DILocation(line: 14, column: 46, scope: !3354, inlinedAt: !3361)
!3377 = !DILocalVariable(name: "x", arg: 1, scope: !3378, file: !3379, line: 28, type: !2202)
!3378 = distinct !DISubprogram(name: "cmp.Less[int]", linkageName: "cmp.Less[int]", scope: !3379, file: !3379, line: 28, type: !3380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3382)
!3379 = !DIFile(filename: "cmp.go", directory: "/usr/local/go/src/cmp")
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!2202, !2202}
!3382 = !{!3377, !3383}
!3383 = !DILocalVariable(name: "y", arg: 2, scope: !3378, file: !3379, line: 28, type: !2202)
!3384 = !DILocation(line: 28, column: 6, scope: !3378, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 14, column: 32, scope: !3354, inlinedAt: !3361)
!3386 = !DILocation(line: 29, column: 16, scope: !3378, inlinedAt: !3385)
!3387 = !DILocation(line: 29, column: 36, scope: !3378, inlinedAt: !3385)
!3388 = !DILocation(line: 29, column: 40, scope: !3378, inlinedAt: !3385)
!3389 = !DILocation(line: 29, column: 38, scope: !3378, inlinedAt: !3385)
!3390 = !DILocation(line: 15, column: 36, scope: !3354, inlinedAt: !3361)
!3391 = !DILocation(line: 15, column: 41, scope: !3354, inlinedAt: !3361)
!3392 = !DILocation(line: 15, column: 8, scope: !3354, inlinedAt: !3361)
!3393 = !DILocation(line: 15, column: 17, scope: !3354, inlinedAt: !3361)
!3394 = !DILocation(line: 13, column: 25, scope: !3354, inlinedAt: !3361)
!3395 = !DILocation(line: 13, column: 18, scope: !3354, inlinedAt: !3361)
!3396 = !DILocation(line: 13, column: 22, scope: !3354, inlinedAt: !3361)
!3397 = !DILocation(line: 80, column: 6, scope: !3302)
!3398 = !DILocation(line: 80, column: 12, scope: !3302)
!3399 = !DILocation(line: 81, column: 20, scope: !3302)
!3400 = !DILocation(line: 81, column: 26, scope: !3302)
!3401 = !DILocation(line: 81, column: 29, scope: !3302)
!3402 = !DILocalVariable(name: "data", arg: 1, scope: !3403, file: !3303, line: 40, type: !3306)
!3403 = distinct !DISubprogram(name: "slices.heapSortOrdered[int]", linkageName: "slices.heapSortOrdered[int]", scope: !3303, file: !3303, line: 40, type: !3329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3404)
!3404 = !{!3402, !3405, !3406, !3407, !3408, !3409, !3410, !3411}
!3405 = !DILocalVariable(name: "a", arg: 2, scope: !3403, file: !3303, line: 40, type: !2202)
!3406 = !DILocalVariable(name: "b", arg: 3, scope: !3403, file: !3303, line: 40, type: !2202)
!3407 = !DILocalVariable(name: "first", scope: !3403, file: !3303, line: 41, type: !2202)
!3408 = !DILocalVariable(name: "lo", scope: !3403, file: !3303, line: 42, type: !2202)
!3409 = !DILocalVariable(name: "hi", scope: !3403, file: !3303, line: 43, type: !2202)
!3410 = !DILocalVariable(name: "i", scope: !3403, file: !3303, line: 46, type: !2202)
!3411 = !DILocalVariable(name: "i", scope: !3403, file: !3303, line: 51, type: !2202)
!3412 = !DILocation(line: 40, column: 6, scope: !3403, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 81, column: 19, scope: !3302)
!3414 = !DILocation(line: 41, column: 11, scope: !3403, inlinedAt: !3413)
!3415 = !DILocation(line: 41, column: 2, scope: !3403, inlinedAt: !3413)
!3416 = !DILocation(line: 42, column: 2, scope: !3403, inlinedAt: !3413)
!3417 = !DILocation(line: 43, column: 8, scope: !3403, inlinedAt: !3413)
!3418 = !DILocation(line: 43, column: 12, scope: !3403, inlinedAt: !3413)
!3419 = !DILocation(line: 43, column: 2, scope: !3403, inlinedAt: !3413)
!3420 = !DILocation(line: 46, column: 12, scope: !3403, inlinedAt: !3413)
!3421 = !DILocation(line: 46, column: 6, scope: !3403, inlinedAt: !3413)
!3422 = !DILocation(line: 46, column: 15, scope: !3403, inlinedAt: !3413)
!3423 = !DILocation(line: 46, column: 20, scope: !3403, inlinedAt: !3413)
!3424 = !DILocation(line: 0, scope: !3403, inlinedAt: !3413)
!3425 = !DILocation(line: 47, column: 19, scope: !3403, inlinedAt: !3413)
!3426 = !DILocation(line: 47, column: 25, scope: !3403, inlinedAt: !3413)
!3427 = !DILocation(line: 47, column: 28, scope: !3403, inlinedAt: !3413)
!3428 = !DILocation(line: 47, column: 32, scope: !3403, inlinedAt: !3413)
!3429 = !DILocation(line: 47, column: 18, scope: !3403, inlinedAt: !3413)
!3430 = !DILocation(line: 46, column: 33, scope: !3403, inlinedAt: !3413)
!3431 = !DILocation(line: 46, column: 25, scope: !3403, inlinedAt: !3413)
!3432 = !DILocation(line: 46, column: 27, scope: !3403, inlinedAt: !3413)
!3433 = !DILocation(line: 51, scope: !3403, inlinedAt: !3413)
!3434 = !DILocation(line: 52, column: 3, scope: !3403, inlinedAt: !3413)
!3435 = !DILocation(line: 52, column: 8, scope: !3403, inlinedAt: !3413)
!3436 = !DILocation(line: 52, column: 16, scope: !3403, inlinedAt: !3413)
!3437 = !DILocation(line: 52, column: 21, scope: !3403, inlinedAt: !3413)
!3438 = !DILocation(line: 52, column: 27, scope: !3403, inlinedAt: !3413)
!3439 = !DILocation(line: 52, column: 26, scope: !3403, inlinedAt: !3413)
!3440 = !DILocation(line: 52, column: 32, scope: !3403, inlinedAt: !3413)
!3441 = !DILocation(line: 52, column: 37, scope: !3403, inlinedAt: !3413)
!3442 = !DILocation(line: 52, column: 43, scope: !3403, inlinedAt: !3413)
!3443 = !DILocation(line: 52, column: 36, scope: !3403, inlinedAt: !3413)
!3444 = !DILocation(line: 52, column: 47, scope: !3403, inlinedAt: !3413)
!3445 = !DILocation(line: 52, column: 52, scope: !3403, inlinedAt: !3413)
!3446 = !DILocation(line: 52, column: 51, scope: !3403, inlinedAt: !3413)
!3447 = !DILocation(line: 52, column: 7, scope: !3403, inlinedAt: !3413)
!3448 = !DILocation(line: 52, column: 20, scope: !3403, inlinedAt: !3413)
!3449 = !DILocation(line: 53, column: 19, scope: !3403, inlinedAt: !3413)
!3450 = !DILocation(line: 53, column: 25, scope: !3403, inlinedAt: !3413)
!3451 = !DILocation(line: 53, column: 29, scope: !3403, inlinedAt: !3413)
!3452 = !DILocation(line: 53, column: 32, scope: !3403, inlinedAt: !3413)
!3453 = !DILocation(line: 53, column: 18, scope: !3403, inlinedAt: !3413)
!3454 = !DILocation(line: 51, column: 27, scope: !3403, inlinedAt: !3413)
!3455 = !DILocation(line: 51, column: 19, scope: !3403, inlinedAt: !3413)
!3456 = !DILocation(line: 51, column: 21, scope: !3403, inlinedAt: !3413)
!3457 = !DILocation(line: 86, column: 7, scope: !3302)
!3458 = !DILocation(line: 63, column: 52, scope: !3302)
!3459 = !DILocation(line: 91, column: 37, scope: !3302)
!3460 = !DILocation(line: 91, column: 43, scope: !3302)
!3461 = !DILocation(line: 91, column: 46, scope: !3302)
!3462 = !DILocation(line: 263, column: 6, scope: !3328, inlinedAt: !3340)
!3463 = !DILocation(line: 269, column: 7, scope: !3328, inlinedAt: !3340)
!3464 = !DILocation(line: 269, column: 11, scope: !3328, inlinedAt: !3340)
!3465 = !DILocation(line: 269, column: 2, scope: !3328, inlinedAt: !3340)
!3466 = !DILocation(line: 273, column: 11, scope: !3328, inlinedAt: !3340)
!3467 = !DILocation(line: 273, column: 15, scope: !3328, inlinedAt: !3340)
!3468 = !DILocation(line: 273, column: 16, scope: !3328, inlinedAt: !3340)
!3469 = !DILocation(line: 273, column: 13, scope: !3328, inlinedAt: !3340)
!3470 = !DILocation(line: 273, column: 3, scope: !3328, inlinedAt: !3340)
!3471 = !DILocation(line: 274, column: 11, scope: !3328, inlinedAt: !3340)
!3472 = !DILocation(line: 274, column: 15, scope: !3328, inlinedAt: !3340)
!3473 = !DILocation(line: 274, column: 18, scope: !3328, inlinedAt: !3340)
!3474 = !DILocation(line: 274, column: 13, scope: !3328, inlinedAt: !3340)
!3475 = !DILocation(line: 274, column: 3, scope: !3328, inlinedAt: !3340)
!3476 = !DILocation(line: 275, column: 11, scope: !3328, inlinedAt: !3340)
!3477 = !DILocation(line: 275, column: 15, scope: !3328, inlinedAt: !3340)
!3478 = !DILocation(line: 275, column: 18, scope: !3328, inlinedAt: !3340)
!3479 = !DILocation(line: 275, column: 13, scope: !3328, inlinedAt: !3340)
!3480 = !DILocation(line: 275, column: 3, scope: !3328, inlinedAt: !3340)
!3481 = !DILocation(line: 278, column: 5, scope: !3328, inlinedAt: !3340)
!3482 = !DILocation(line: 272, column: 3, scope: !3328, inlinedAt: !3340)
!3483 = !DILocation(line: 279, column: 6, scope: !3328, inlinedAt: !3340)
!3484 = !DILocation(line: 279, column: 8, scope: !3328, inlinedAt: !3340)
!3485 = !DILocation(line: 0, scope: !3328, inlinedAt: !3340)
!3486 = !DILocation(line: 281, column: 30, scope: !3328, inlinedAt: !3340)
!3487 = !DILocation(line: 281, column: 36, scope: !3328, inlinedAt: !3340)
!3488 = !DILocalVariable(name: "data", arg: 1, scope: !3489, file: !3303, line: 317, type: !3306)
!3489 = distinct !DISubprogram(name: "slices.medianAdjacentOrdered[int]", linkageName: "slices.medianAdjacentOrdered[int]", scope: !3303, file: !3303, line: 317, type: !3490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3492)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!3306, !2202, !3309}
!3492 = !{!3488, !3493, !3494}
!3493 = !DILocalVariable(name: "a", arg: 2, scope: !3489, file: !3303, line: 317, type: !2202)
!3494 = !DILocalVariable(name: "swaps", arg: 3, scope: !3489, file: !3303, line: 317, type: !3309)
!3495 = !DILocation(line: 317, column: 6, scope: !3489, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 281, column: 29, scope: !3328, inlinedAt: !3340)
!3497 = !DILocation(line: 318, column: 23, scope: !3489, inlinedAt: !3496)
!3498 = !DILocation(line: 318, column: 29, scope: !3489, inlinedAt: !3496)
!3499 = !DILocation(line: 318, column: 30, scope: !3489, inlinedAt: !3496)
!3500 = !DILocation(line: 318, column: 34, scope: !3489, inlinedAt: !3496)
!3501 = !DILocation(line: 318, column: 37, scope: !3489, inlinedAt: !3496)
!3502 = !DILocation(line: 318, column: 38, scope: !3489, inlinedAt: !3496)
!3503 = !DILocation(line: 318, column: 42, scope: !3489, inlinedAt: !3496)
!3504 = !DILocation(line: 318, column: 22, scope: !3489, inlinedAt: !3496)
!3505 = !DILocation(line: 281, column: 4, scope: !3328, inlinedAt: !3340)
!3506 = !DILocation(line: 282, column: 30, scope: !3328, inlinedAt: !3340)
!3507 = !DILocation(line: 282, column: 36, scope: !3328, inlinedAt: !3340)
!3508 = !DILocation(line: 317, column: 6, scope: !3489, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 282, column: 29, scope: !3328, inlinedAt: !3340)
!3510 = !DILocation(line: 318, column: 23, scope: !3489, inlinedAt: !3509)
!3511 = !DILocation(line: 318, column: 29, scope: !3489, inlinedAt: !3509)
!3512 = !DILocation(line: 318, column: 30, scope: !3489, inlinedAt: !3509)
!3513 = !DILocation(line: 318, column: 34, scope: !3489, inlinedAt: !3509)
!3514 = !DILocation(line: 318, column: 37, scope: !3489, inlinedAt: !3509)
!3515 = !DILocation(line: 318, column: 38, scope: !3489, inlinedAt: !3509)
!3516 = !DILocation(line: 318, column: 42, scope: !3489, inlinedAt: !3509)
!3517 = !DILocation(line: 318, column: 22, scope: !3489, inlinedAt: !3509)
!3518 = !DILocation(line: 282, column: 4, scope: !3328, inlinedAt: !3340)
!3519 = !DILocation(line: 283, column: 30, scope: !3328, inlinedAt: !3340)
!3520 = !DILocation(line: 283, column: 36, scope: !3328, inlinedAt: !3340)
!3521 = !DILocation(line: 317, column: 6, scope: !3489, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 283, column: 29, scope: !3328, inlinedAt: !3340)
!3523 = !DILocation(line: 318, column: 23, scope: !3489, inlinedAt: !3522)
!3524 = !DILocation(line: 318, column: 29, scope: !3489, inlinedAt: !3522)
!3525 = !DILocation(line: 318, column: 30, scope: !3489, inlinedAt: !3522)
!3526 = !DILocation(line: 318, column: 34, scope: !3489, inlinedAt: !3522)
!3527 = !DILocation(line: 318, column: 37, scope: !3489, inlinedAt: !3522)
!3528 = !DILocation(line: 318, column: 38, scope: !3489, inlinedAt: !3522)
!3529 = !DILocation(line: 318, column: 42, scope: !3489, inlinedAt: !3522)
!3530 = !DILocation(line: 318, column: 22, scope: !3489, inlinedAt: !3522)
!3531 = !DILocation(line: 283, column: 4, scope: !3328, inlinedAt: !3340)
!3532 = !DILocation(line: 286, column: 21, scope: !3328, inlinedAt: !3340)
!3533 = !DILocation(line: 286, column: 27, scope: !3328, inlinedAt: !3340)
!3534 = !DILocation(line: 286, column: 30, scope: !3328, inlinedAt: !3340)
!3535 = !DILocation(line: 286, column: 33, scope: !3328, inlinedAt: !3340)
!3536 = !DILocation(line: 286, column: 20, scope: !3328, inlinedAt: !3340)
!3537 = !DILocation(line: 286, column: 3, scope: !3328, inlinedAt: !3340)
!3538 = !DILocation(line: 289, column: 9, scope: !3328, inlinedAt: !3340)
!3539 = !DILocation(line: 91, column: 3, scope: !3302)
!3540 = !DILocation(line: 91, column: 10, scope: !3302)
!3541 = !DILocation(line: 92, column: 6, scope: !3302)
!3542 = !DILocation(line: 93, column: 24, scope: !3302)
!3543 = !DILocation(line: 93, column: 30, scope: !3302)
!3544 = !DILocation(line: 93, column: 33, scope: !3302)
!3545 = !DILocalVariable(name: "data", arg: 1, scope: !3546, file: !3303, line: 321, type: !3306)
!3546 = distinct !DISubprogram(name: "slices.reverseRangeOrdered[int]", linkageName: "slices.reverseRangeOrdered[int]", scope: !3303, file: !3303, line: 321, type: !3329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3547)
!3547 = !{!3545, !3548, !3549, !3550, !3551}
!3548 = !DILocalVariable(name: "a", arg: 2, scope: !3546, file: !3303, line: 321, type: !2202)
!3549 = !DILocalVariable(name: "b", arg: 3, scope: !3546, file: !3303, line: 321, type: !2202)
!3550 = !DILocalVariable(name: "i", scope: !3546, file: !3303, line: 322, type: !2202)
!3551 = !DILocalVariable(name: "j", scope: !3546, file: !3303, line: 323, type: !2202)
!3552 = !DILocation(line: 321, column: 6, scope: !3546, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 93, column: 23, scope: !3302)
!3554 = !DILocation(line: 322, column: 7, scope: !3546, inlinedAt: !3553)
!3555 = !DILocation(line: 322, column: 2, scope: !3546, inlinedAt: !3553)
!3556 = !DILocation(line: 323, column: 7, scope: !3546, inlinedAt: !3553)
!3557 = !DILocation(line: 323, column: 2, scope: !3546, inlinedAt: !3553)
!3558 = !DILocation(line: 0, scope: !3546, inlinedAt: !3553)
!3559 = !DILocation(line: 324, column: 8, scope: !3546, inlinedAt: !3553)
!3560 = !DILocation(line: 324, column: 6, scope: !3546, inlinedAt: !3553)
!3561 = !DILocation(line: 325, column: 3, scope: !3546, inlinedAt: !3553)
!3562 = !DILocation(line: 325, column: 8, scope: !3546, inlinedAt: !3553)
!3563 = !DILocation(line: 325, column: 12, scope: !3546, inlinedAt: !3553)
!3564 = !DILocation(line: 325, column: 17, scope: !3546, inlinedAt: !3553)
!3565 = !DILocation(line: 325, column: 22, scope: !3546, inlinedAt: !3553)
!3566 = !DILocation(line: 325, column: 27, scope: !3546, inlinedAt: !3553)
!3567 = !DILocation(line: 325, column: 26, scope: !3546, inlinedAt: !3553)
!3568 = !DILocation(line: 325, column: 31, scope: !3546, inlinedAt: !3553)
!3569 = !DILocation(line: 325, column: 36, scope: !3546, inlinedAt: !3553)
!3570 = !DILocation(line: 325, column: 35, scope: !3546, inlinedAt: !3553)
!3571 = !DILocation(line: 325, column: 7, scope: !3546, inlinedAt: !3553)
!3572 = !DILocation(line: 325, column: 16, scope: !3546, inlinedAt: !3553)
!3573 = !DILocation(line: 326, column: 3, scope: !3546, inlinedAt: !3553)
!3574 = !DILocation(line: 327, column: 3, scope: !3546, inlinedAt: !3553)
!3575 = !DILocation(line: 324, column: 10, scope: !3546, inlinedAt: !3553)
!3576 = !DILocation(line: 97, column: 13, scope: !3302)
!3577 = !DILocation(line: 97, column: 23, scope: !3302)
!3578 = !DILocation(line: 97, column: 31, scope: !3302)
!3579 = !DILocation(line: 97, column: 29, scope: !3302)
!3580 = !DILocation(line: 97, column: 20, scope: !3302)
!3581 = !DILocation(line: 97, column: 4, scope: !3302)
!3582 = !DILocation(line: 98, column: 4, scope: !3302)
!3583 = !DILocation(line: 102, column: 6, scope: !3302)
!3584 = !DILocation(line: 102, column: 39, scope: !3302)
!3585 = !DILocation(line: 103, column: 35, scope: !3302)
!3586 = !DILocation(line: 103, column: 41, scope: !3302)
!3587 = !DILocation(line: 103, column: 44, scope: !3302)
!3588 = !DILocalVariable(name: "data", arg: 1, scope: !3589, file: !3303, line: 197, type: !3306)
!3589 = distinct !DISubprogram(name: "slices.partialInsertionSortOrdered[int]", linkageName: "slices.partialInsertionSortOrdered[int]", scope: !3303, file: !3303, line: 197, type: !3329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3590)
!3590 = !{!3588, !3591, !3592, !3593, !3594, !3595, !3596}
!3591 = !DILocalVariable(name: "a", arg: 2, scope: !3589, file: !3303, line: 197, type: !2202)
!3592 = !DILocalVariable(name: "b", arg: 3, scope: !3589, file: !3303, line: 197, type: !2202)
!3593 = !DILocalVariable(name: "i", scope: !3589, file: !3303, line: 202, type: !2202)
!3594 = !DILocalVariable(name: "j", scope: !3589, file: !3303, line: 203, type: !2202)
!3595 = !DILocalVariable(name: "j", scope: !3589, file: !3303, line: 220, type: !2202)
!3596 = !DILocalVariable(name: "j", scope: !3589, file: !3303, line: 229, type: !2202)
!3597 = !DILocation(line: 197, column: 6, scope: !3589, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 103, column: 34, scope: !3302)
!3599 = !DILocation(line: 202, column: 7, scope: !3589, inlinedAt: !3598)
!3600 = !DILocation(line: 202, column: 2, scope: !3589, inlinedAt: !3598)
!3601 = !DILocation(line: 203, column: 6, scope: !3589, inlinedAt: !3598)
!3602 = !DILocation(line: 0, scope: !3589, inlinedAt: !3598)
!3603 = !DILocation(line: 203, column: 14, scope: !3589, inlinedAt: !3598)
!3604 = !DILocation(line: 204, column: 7, scope: !3589, inlinedAt: !3598)
!3605 = !DILocation(line: 204, column: 11, scope: !3589, inlinedAt: !3598)
!3606 = !DILocation(line: 204, column: 9, scope: !3589, inlinedAt: !3598)
!3607 = !DILocation(line: 204, column: 30, scope: !3589, inlinedAt: !3598)
!3608 = !DILocation(line: 204, column: 26, scope: !3589, inlinedAt: !3598)
!3609 = !DILocation(line: 204, column: 31, scope: !3589, inlinedAt: !3598)
!3610 = !DILocation(line: 204, column: 35, scope: !3589, inlinedAt: !3598)
!3611 = !DILocation(line: 204, column: 40, scope: !3589, inlinedAt: !3598)
!3612 = !DILocation(line: 204, column: 41, scope: !3589, inlinedAt: !3598)
!3613 = !DILocation(line: 204, column: 39, scope: !3589, inlinedAt: !3598)
!3614 = !DILocation(line: 28, column: 6, scope: !3378, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 204, column: 25, scope: !3589, inlinedAt: !3598)
!3616 = !DILocation(line: 29, column: 16, scope: !3378, inlinedAt: !3615)
!3617 = !DILocation(line: 29, column: 36, scope: !3378, inlinedAt: !3615)
!3618 = !DILocation(line: 29, column: 40, scope: !3378, inlinedAt: !3615)
!3619 = !DILocation(line: 29, column: 38, scope: !3378, inlinedAt: !3615)
!3620 = !DILocation(line: 205, column: 4, scope: !3589, inlinedAt: !3598)
!3621 = !DILocation(line: 208, column: 6, scope: !3589, inlinedAt: !3598)
!3622 = !DILocation(line: 208, column: 11, scope: !3589, inlinedAt: !3598)
!3623 = !DILocation(line: 208, column: 8, scope: !3589, inlinedAt: !3598)
!3624 = !DILocation(line: 216, column: 3, scope: !3589, inlinedAt: !3598)
!3625 = !DILocation(line: 216, column: 8, scope: !3589, inlinedAt: !3598)
!3626 = !DILocation(line: 216, column: 12, scope: !3589, inlinedAt: !3598)
!3627 = !DILocation(line: 216, column: 17, scope: !3589, inlinedAt: !3598)
!3628 = !DILocation(line: 216, column: 18, scope: !3589, inlinedAt: !3598)
!3629 = !DILocation(line: 216, column: 24, scope: !3589, inlinedAt: !3598)
!3630 = !DILocation(line: 216, column: 29, scope: !3589, inlinedAt: !3598)
!3631 = !DILocation(line: 216, column: 28, scope: !3589, inlinedAt: !3598)
!3632 = !DILocation(line: 216, column: 35, scope: !3589, inlinedAt: !3598)
!3633 = !DILocation(line: 216, column: 40, scope: !3589, inlinedAt: !3598)
!3634 = !DILocation(line: 216, column: 39, scope: !3589, inlinedAt: !3598)
!3635 = !DILocation(line: 216, column: 7, scope: !3589, inlinedAt: !3598)
!3636 = !DILocation(line: 216, column: 16, scope: !3589, inlinedAt: !3598)
!3637 = !DILocation(line: 219, column: 6, scope: !3589, inlinedAt: !3598)
!3638 = !DILocation(line: 219, column: 8, scope: !3589, inlinedAt: !3598)
!3639 = !DILocation(line: 219, column: 7, scope: !3589, inlinedAt: !3598)
!3640 = !DILocation(line: 219, column: 10, scope: !3589, inlinedAt: !3598)
!3641 = !DILocation(line: 221, column: 22, scope: !3589, inlinedAt: !3598)
!3642 = !DILocation(line: 221, column: 31, scope: !3589, inlinedAt: !3598)
!3643 = !DILocation(line: 221, column: 18, scope: !3589, inlinedAt: !3598)
!3644 = !DILocation(line: 221, column: 23, scope: !3589, inlinedAt: !3598)
!3645 = !DILocation(line: 221, column: 27, scope: !3589, inlinedAt: !3598)
!3646 = !DILocation(line: 221, column: 32, scope: !3589, inlinedAt: !3598)
!3647 = !DILocation(line: 28, column: 6, scope: !3378, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 221, column: 17, scope: !3589, inlinedAt: !3598)
!3649 = !DILocation(line: 29, column: 16, scope: !3378, inlinedAt: !3648)
!3650 = !DILocation(line: 29, column: 36, scope: !3378, inlinedAt: !3648)
!3651 = !DILocation(line: 29, column: 40, scope: !3378, inlinedAt: !3648)
!3652 = !DILocation(line: 29, column: 38, scope: !3378, inlinedAt: !3648)
!3653 = !DILocation(line: 224, column: 37, scope: !3589, inlinedAt: !3598)
!3654 = !DILocation(line: 224, column: 42, scope: !3589, inlinedAt: !3598)
!3655 = !DILocation(line: 224, column: 9, scope: !3589, inlinedAt: !3598)
!3656 = !DILocation(line: 224, column: 18, scope: !3589, inlinedAt: !3598)
!3657 = !DILocation(line: 220, column: 28, scope: !3589, inlinedAt: !3598)
!3658 = !DILocation(line: 220, scope: !3589, inlinedAt: !3598)
!3659 = !DILocation(line: 220, column: 20, scope: !3589, inlinedAt: !3598)
!3660 = !DILocation(line: 220, column: 22, scope: !3589, inlinedAt: !3598)
!3661 = !DILocation(line: 228, column: 6, scope: !3589, inlinedAt: !3598)
!3662 = !DILocation(line: 228, column: 8, scope: !3589, inlinedAt: !3598)
!3663 = !DILocation(line: 228, column: 7, scope: !3589, inlinedAt: !3598)
!3664 = !DILocation(line: 228, column: 10, scope: !3589, inlinedAt: !3598)
!3665 = !DILocation(line: 230, column: 18, scope: !3589, inlinedAt: !3598)
!3666 = !DILocation(line: 230, column: 23, scope: !3589, inlinedAt: !3598)
!3667 = !DILocation(line: 230, column: 22, scope: !3589, inlinedAt: !3598)
!3668 = !DILocation(line: 230, column: 27, scope: !3589, inlinedAt: !3598)
!3669 = !DILocation(line: 230, column: 32, scope: !3589, inlinedAt: !3598)
!3670 = !DILocation(line: 230, column: 31, scope: !3589, inlinedAt: !3598)
!3671 = !DILocation(line: 28, column: 6, scope: !3378, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 230, column: 17, scope: !3589, inlinedAt: !3598)
!3673 = !DILocation(line: 29, column: 16, scope: !3378, inlinedAt: !3672)
!3674 = !DILocation(line: 29, column: 36, scope: !3378, inlinedAt: !3672)
!3675 = !DILocation(line: 29, column: 40, scope: !3378, inlinedAt: !3672)
!3676 = !DILocation(line: 29, column: 38, scope: !3378, inlinedAt: !3672)
!3677 = !DILocation(line: 233, column: 37, scope: !3589, inlinedAt: !3598)
!3678 = !DILocation(line: 233, column: 42, scope: !3589, inlinedAt: !3598)
!3679 = !DILocation(line: 233, column: 9, scope: !3589, inlinedAt: !3598)
!3680 = !DILocation(line: 233, column: 18, scope: !3589, inlinedAt: !3598)
!3681 = !DILocation(line: 229, column: 27, scope: !3589, inlinedAt: !3598)
!3682 = !DILocation(line: 229, scope: !3589, inlinedAt: !3598)
!3683 = !DILocation(line: 229, column: 20, scope: !3589, inlinedAt: !3598)
!3684 = !DILocation(line: 229, column: 24, scope: !3589, inlinedAt: !3598)
!3685 = !DILocation(line: 229, column: 22, scope: !3589, inlinedAt: !3598)
!3686 = !DILocation(line: 203, column: 28, scope: !3589, inlinedAt: !3598)
!3687 = !DILocation(line: 203, column: 16, scope: !3589, inlinedAt: !3598)
!3688 = !DILocation(line: 110, column: 6, scope: !3302)
!3689 = !DILocation(line: 110, column: 25, scope: !3302)
!3690 = !DILocation(line: 110, column: 30, scope: !3302)
!3691 = !DILocation(line: 110, column: 29, scope: !3302)
!3692 = !DILocation(line: 110, column: 36, scope: !3302)
!3693 = !DILocation(line: 110, column: 41, scope: !3302)
!3694 = !DILocation(line: 110, column: 40, scope: !3302)
!3695 = !DILocation(line: 28, column: 6, scope: !3378, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 110, column: 24, scope: !3302)
!3697 = !DILocation(line: 29, column: 16, scope: !3378, inlinedAt: !3696)
!3698 = !DILocation(line: 29, column: 36, scope: !3378, inlinedAt: !3696)
!3699 = !DILocation(line: 29, column: 40, scope: !3378, inlinedAt: !3696)
!3700 = !DILocation(line: 29, column: 38, scope: !3378, inlinedAt: !3696)
!3701 = !DILocation(line: 111, column: 33, scope: !3302)
!3702 = !DILocation(line: 111, column: 39, scope: !3302)
!3703 = !DILocation(line: 111, column: 42, scope: !3302)
!3704 = !DILocation(line: 111, column: 45, scope: !3302)
!3705 = !DILocalVariable(name: "data", arg: 1, scope: !3706, file: !3303, line: 175, type: !3306)
!3706 = distinct !DISubprogram(name: "slices.partitionEqualOrdered[int]", linkageName: "slices.partitionEqualOrdered[int]", scope: !3303, file: !3303, line: 175, type: !3707, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3708)
!3707 = !DISubroutineType(types: !3305)
!3708 = !{!3705, !3709, !3710, !3711, !3712, !3713}
!3709 = !DILocalVariable(name: "a", arg: 2, scope: !3706, file: !3303, line: 175, type: !2202)
!3710 = !DILocalVariable(name: "b", arg: 3, scope: !3706, file: !3303, line: 175, type: !2202)
!3711 = !DILocalVariable(name: "pivot", arg: 4, scope: !3706, file: !3303, line: 175, type: !2202)
!3712 = !DILocalVariable(name: "i", scope: !3706, file: !3303, line: 177, type: !2202)
!3713 = !DILocalVariable(name: "j", scope: !3706, file: !3303, line: 177, type: !2202)
!3714 = !DILocation(line: 175, column: 6, scope: !3706, inlinedAt: !3715)
!3715 = distinct !DILocation(line: 111, column: 32, scope: !3302)
!3716 = !DILocation(line: 176, column: 2, scope: !3706, inlinedAt: !3715)
!3717 = !DILocation(line: 176, column: 7, scope: !3706, inlinedAt: !3715)
!3718 = !DILocation(line: 176, column: 11, scope: !3706, inlinedAt: !3715)
!3719 = !DILocation(line: 176, column: 16, scope: !3706, inlinedAt: !3715)
!3720 = !DILocation(line: 176, column: 25, scope: !3706, inlinedAt: !3715)
!3721 = !DILocation(line: 176, column: 30, scope: !3706, inlinedAt: !3715)
!3722 = !DILocation(line: 176, column: 38, scope: !3706, inlinedAt: !3715)
!3723 = !DILocation(line: 176, column: 43, scope: !3706, inlinedAt: !3715)
!3724 = !DILocation(line: 176, column: 42, scope: !3706, inlinedAt: !3715)
!3725 = !DILocation(line: 176, column: 6, scope: !3706, inlinedAt: !3715)
!3726 = !DILocation(line: 176, column: 15, scope: !3706, inlinedAt: !3715)
!3727 = !DILocation(line: 177, column: 10, scope: !3706, inlinedAt: !3715)
!3728 = !DILocation(line: 177, column: 15, scope: !3706, inlinedAt: !3715)
!3729 = !DILocation(line: 177, column: 2, scope: !3706, inlinedAt: !3715)
!3730 = !DILocation(line: 177, column: 5, scope: !3706, inlinedAt: !3715)
!3731 = !DILocation(line: 0, scope: !3706, inlinedAt: !3715)
!3732 = !DILocation(line: 180, column: 7, scope: !3706, inlinedAt: !3715)
!3733 = !DILocation(line: 180, column: 12, scope: !3706, inlinedAt: !3715)
!3734 = !DILocation(line: 180, column: 9, scope: !3706, inlinedAt: !3715)
!3735 = !DILocation(line: 180, column: 27, scope: !3706, inlinedAt: !3715)
!3736 = !DILocation(line: 180, column: 32, scope: !3706, inlinedAt: !3715)
!3737 = !DILocation(line: 180, column: 36, scope: !3706, inlinedAt: !3715)
!3738 = !DILocation(line: 180, column: 41, scope: !3706, inlinedAt: !3715)
!3739 = !DILocation(line: 180, column: 40, scope: !3706, inlinedAt: !3715)
!3740 = !DILocation(line: 180, column: 31, scope: !3706, inlinedAt: !3715)
!3741 = !DILocation(line: 28, column: 6, scope: !3378, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 180, column: 26, scope: !3706, inlinedAt: !3715)
!3743 = !DILocation(line: 29, column: 16, scope: !3378, inlinedAt: !3742)
!3744 = !DILocation(line: 29, column: 36, scope: !3378, inlinedAt: !3742)
!3745 = !DILocation(line: 29, column: 40, scope: !3378, inlinedAt: !3742)
!3746 = !DILocation(line: 29, column: 38, scope: !3378, inlinedAt: !3742)
!3747 = !DILocation(line: 183, column: 12, scope: !3706, inlinedAt: !3715)
!3748 = !DILocation(line: 183, column: 26, scope: !3706, inlinedAt: !3715)
!3749 = !DILocation(line: 183, column: 31, scope: !3706, inlinedAt: !3715)
!3750 = !DILocation(line: 183, column: 35, scope: !3706, inlinedAt: !3715)
!3751 = !DILocation(line: 183, column: 40, scope: !3706, inlinedAt: !3715)
!3752 = !DILocation(line: 183, column: 39, scope: !3706, inlinedAt: !3715)
!3753 = !DILocation(line: 183, column: 30, scope: !3706, inlinedAt: !3715)
!3754 = !DILocation(line: 28, column: 6, scope: !3378, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 183, column: 25, scope: !3706, inlinedAt: !3715)
!3756 = !DILocation(line: 29, column: 16, scope: !3378, inlinedAt: !3755)
!3757 = !DILocation(line: 29, column: 36, scope: !3378, inlinedAt: !3755)
!3758 = !DILocation(line: 29, column: 40, scope: !3378, inlinedAt: !3755)
!3759 = !DILocation(line: 29, column: 38, scope: !3378, inlinedAt: !3755)
!3760 = !DILocation(line: 184, column: 4, scope: !3706, inlinedAt: !3715)
!3761 = !DILocation(line: 183, column: 7, scope: !3706, inlinedAt: !3715)
!3762 = !DILocation(line: 183, column: 9, scope: !3706, inlinedAt: !3715)
!3763 = !DILocation(line: 186, column: 6, scope: !3706, inlinedAt: !3715)
!3764 = !DILocation(line: 186, column: 10, scope: !3706, inlinedAt: !3715)
!3765 = !DILocation(line: 189, column: 3, scope: !3706, inlinedAt: !3715)
!3766 = !DILocation(line: 189, column: 8, scope: !3706, inlinedAt: !3715)
!3767 = !DILocation(line: 189, column: 12, scope: !3706, inlinedAt: !3715)
!3768 = !DILocation(line: 189, column: 17, scope: !3706, inlinedAt: !3715)
!3769 = !DILocation(line: 189, column: 22, scope: !3706, inlinedAt: !3715)
!3770 = !DILocation(line: 189, column: 27, scope: !3706, inlinedAt: !3715)
!3771 = !DILocation(line: 189, column: 31, scope: !3706, inlinedAt: !3715)
!3772 = !DILocation(line: 189, column: 36, scope: !3706, inlinedAt: !3715)
!3773 = !DILocation(line: 189, column: 35, scope: !3706, inlinedAt: !3715)
!3774 = !DILocation(line: 189, column: 7, scope: !3706, inlinedAt: !3715)
!3775 = !DILocation(line: 189, column: 16, scope: !3706, inlinedAt: !3715)
!3776 = !DILocation(line: 190, column: 3, scope: !3706, inlinedAt: !3715)
!3777 = !DILocation(line: 191, column: 3, scope: !3706, inlinedAt: !3715)
!3778 = !DILocation(line: 116, column: 47, scope: !3302)
!3779 = !DILocation(line: 116, column: 53, scope: !3302)
!3780 = !DILocation(line: 116, column: 56, scope: !3302)
!3781 = !DILocation(line: 116, column: 59, scope: !3302)
!3782 = !DILocalVariable(name: "data", arg: 1, scope: !3783, file: !3303, line: 137, type: !3306)
!3783 = distinct !DISubprogram(name: "slices.partitionOrdered[int]", linkageName: "slices.partitionOrdered[int]", scope: !3303, file: !3303, line: 137, type: !3707, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3784)
!3784 = !{!3782, !3785, !3786, !3787, !3788, !3789}
!3785 = !DILocalVariable(name: "a", arg: 2, scope: !3783, file: !3303, line: 137, type: !2202)
!3786 = !DILocalVariable(name: "b", arg: 3, scope: !3783, file: !3303, line: 137, type: !2202)
!3787 = !DILocalVariable(name: "pivot", arg: 4, scope: !3783, file: !3303, line: 137, type: !2202)
!3788 = !DILocalVariable(name: "i", scope: !3783, file: !3303, line: 139, type: !2202)
!3789 = !DILocalVariable(name: "j", scope: !3783, file: !3303, line: 139, type: !2202)
!3790 = !DILocation(line: 137, column: 6, scope: !3783, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 116, column: 46, scope: !3302)
!3792 = !DILocation(line: 138, column: 2, scope: !3783, inlinedAt: !3791)
!3793 = !DILocation(line: 138, column: 7, scope: !3783, inlinedAt: !3791)
!3794 = !DILocation(line: 138, column: 11, scope: !3783, inlinedAt: !3791)
!3795 = !DILocation(line: 138, column: 16, scope: !3783, inlinedAt: !3791)
!3796 = !DILocation(line: 138, column: 25, scope: !3783, inlinedAt: !3791)
!3797 = !DILocation(line: 138, column: 30, scope: !3783, inlinedAt: !3791)
!3798 = !DILocation(line: 138, column: 29, scope: !3783, inlinedAt: !3791)
!3799 = !DILocation(line: 138, column: 38, scope: !3783, inlinedAt: !3791)
!3800 = !DILocation(line: 138, column: 43, scope: !3783, inlinedAt: !3791)
!3801 = !DILocation(line: 138, column: 42, scope: !3783, inlinedAt: !3791)
!3802 = !DILocation(line: 138, column: 6, scope: !3783, inlinedAt: !3791)
!3803 = !DILocation(line: 138, column: 15, scope: !3783, inlinedAt: !3791)
!3804 = !DILocation(line: 139, column: 10, scope: !3783, inlinedAt: !3791)
!3805 = !DILocation(line: 139, column: 15, scope: !3783, inlinedAt: !3791)
!3806 = !DILocation(line: 139, column: 16, scope: !3783, inlinedAt: !3791)
!3807 = !DILocation(line: 139, column: 2, scope: !3783, inlinedAt: !3791)
!3808 = !DILocation(line: 139, column: 5, scope: !3783, inlinedAt: !3791)
!3809 = !DILocation(line: 0, scope: !3783, inlinedAt: !3791)
!3810 = !DILocation(line: 141, column: 6, scope: !3783, inlinedAt: !3791)
!3811 = !DILocation(line: 141, column: 11, scope: !3783, inlinedAt: !3791)
!3812 = !DILocation(line: 141, column: 8, scope: !3783, inlinedAt: !3791)
!3813 = !DILocation(line: 141, column: 25, scope: !3783, inlinedAt: !3791)
!3814 = !DILocation(line: 141, column: 30, scope: !3783, inlinedAt: !3791)
!3815 = !DILocation(line: 141, column: 29, scope: !3783, inlinedAt: !3791)
!3816 = !DILocation(line: 141, column: 34, scope: !3783, inlinedAt: !3791)
!3817 = !DILocation(line: 141, column: 39, scope: !3783, inlinedAt: !3791)
!3818 = !DILocation(line: 141, column: 38, scope: !3783, inlinedAt: !3791)
!3819 = !DILocation(line: 28, column: 6, scope: !3378, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 141, column: 24, scope: !3783, inlinedAt: !3791)
!3821 = !DILocation(line: 29, column: 16, scope: !3378, inlinedAt: !3820)
!3822 = !DILocation(line: 29, column: 36, scope: !3378, inlinedAt: !3820)
!3823 = !DILocation(line: 29, column: 40, scope: !3378, inlinedAt: !3820)
!3824 = !DILocation(line: 29, column: 38, scope: !3378, inlinedAt: !3820)
!3825 = !DILocation(line: 144, column: 11, scope: !3783, inlinedAt: !3791)
!3826 = !DILocation(line: 144, column: 26, scope: !3783, inlinedAt: !3791)
!3827 = !DILocation(line: 144, column: 31, scope: !3783, inlinedAt: !3791)
!3828 = !DILocation(line: 144, column: 30, scope: !3783, inlinedAt: !3791)
!3829 = !DILocation(line: 144, column: 35, scope: !3783, inlinedAt: !3791)
!3830 = !DILocation(line: 144, column: 40, scope: !3783, inlinedAt: !3791)
!3831 = !DILocation(line: 144, column: 39, scope: !3783, inlinedAt: !3791)
!3832 = !DILocation(line: 28, column: 6, scope: !3378, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 144, column: 25, scope: !3783, inlinedAt: !3791)
!3834 = !DILocation(line: 29, column: 16, scope: !3378, inlinedAt: !3833)
!3835 = !DILocation(line: 29, column: 36, scope: !3378, inlinedAt: !3833)
!3836 = !DILocation(line: 29, column: 40, scope: !3378, inlinedAt: !3833)
!3837 = !DILocation(line: 29, column: 38, scope: !3378, inlinedAt: !3833)
!3838 = !DILocation(line: 145, column: 3, scope: !3783, inlinedAt: !3791)
!3839 = !DILocation(line: 144, column: 6, scope: !3783, inlinedAt: !3791)
!3840 = !DILocation(line: 144, column: 8, scope: !3783, inlinedAt: !3791)
!3841 = !DILocation(line: 148, column: 3, scope: !3783, inlinedAt: !3791)
!3842 = !DILocation(line: 148, column: 8, scope: !3783, inlinedAt: !3791)
!3843 = !DILocation(line: 148, column: 12, scope: !3783, inlinedAt: !3791)
!3844 = !DILocation(line: 148, column: 17, scope: !3783, inlinedAt: !3791)
!3845 = !DILocation(line: 148, column: 22, scope: !3783, inlinedAt: !3791)
!3846 = !DILocation(line: 148, column: 27, scope: !3783, inlinedAt: !3791)
!3847 = !DILocation(line: 148, column: 31, scope: !3783, inlinedAt: !3791)
!3848 = !DILocation(line: 148, column: 36, scope: !3783, inlinedAt: !3791)
!3849 = !DILocation(line: 148, column: 35, scope: !3783, inlinedAt: !3791)
!3850 = !DILocation(line: 148, column: 26, scope: !3783, inlinedAt: !3791)
!3851 = !DILocation(line: 148, column: 7, scope: !3783, inlinedAt: !3791)
!3852 = !DILocation(line: 149, column: 10, scope: !3783, inlinedAt: !3791)
!3853 = !DILocation(line: 149, column: 3, scope: !3783, inlinedAt: !3791)
!3854 = !DILocation(line: 147, column: 5, scope: !3783, inlinedAt: !3791)
!3855 = !DILocation(line: 147, column: 9, scope: !3783, inlinedAt: !3791)
!3856 = !DILocation(line: 151, column: 2, scope: !3783, inlinedAt: !3791)
!3857 = !DILocation(line: 151, column: 7, scope: !3783, inlinedAt: !3791)
!3858 = !DILocation(line: 151, column: 11, scope: !3783, inlinedAt: !3791)
!3859 = !DILocation(line: 151, column: 16, scope: !3783, inlinedAt: !3791)
!3860 = !DILocation(line: 151, column: 21, scope: !3783, inlinedAt: !3791)
!3861 = !DILocation(line: 151, column: 26, scope: !3783, inlinedAt: !3791)
!3862 = !DILocation(line: 151, column: 30, scope: !3783, inlinedAt: !3791)
!3863 = !DILocation(line: 151, column: 35, scope: !3783, inlinedAt: !3791)
!3864 = !DILocation(line: 151, column: 34, scope: !3783, inlinedAt: !3791)
!3865 = !DILocation(line: 151, column: 6, scope: !3783, inlinedAt: !3791)
!3866 = !DILocation(line: 151, column: 15, scope: !3783, inlinedAt: !3791)
!3867 = !DILocation(line: 152, column: 2, scope: !3783, inlinedAt: !3791)
!3868 = !DILocation(line: 153, column: 2, scope: !3783, inlinedAt: !3791)
!3869 = !DILocation(line: 156, column: 7, scope: !3783, inlinedAt: !3791)
!3870 = !DILocation(line: 156, column: 12, scope: !3783, inlinedAt: !3791)
!3871 = !DILocation(line: 156, column: 9, scope: !3783, inlinedAt: !3791)
!3872 = !DILocation(line: 156, column: 30, scope: !3783, inlinedAt: !3791)
!3873 = !DILocation(line: 156, column: 26, scope: !3783, inlinedAt: !3791)
!3874 = !DILocation(line: 156, column: 31, scope: !3783, inlinedAt: !3791)
!3875 = !DILocation(line: 156, column: 35, scope: !3783, inlinedAt: !3791)
!3876 = !DILocation(line: 156, column: 40, scope: !3783, inlinedAt: !3791)
!3877 = !DILocation(line: 156, column: 39, scope: !3783, inlinedAt: !3791)
!3878 = !DILocation(line: 28, column: 6, scope: !3378, inlinedAt: !3879)
!3879 = distinct !DILocation(line: 156, column: 25, scope: !3783, inlinedAt: !3791)
!3880 = !DILocation(line: 29, column: 16, scope: !3378, inlinedAt: !3879)
!3881 = !DILocation(line: 29, column: 36, scope: !3378, inlinedAt: !3879)
!3882 = !DILocation(line: 29, column: 40, scope: !3378, inlinedAt: !3879)
!3883 = !DILocation(line: 29, column: 38, scope: !3378, inlinedAt: !3879)
!3884 = !DILocation(line: 159, column: 7, scope: !3783, inlinedAt: !3791)
!3885 = !DILocation(line: 159, column: 12, scope: !3783, inlinedAt: !3791)
!3886 = !DILocation(line: 159, column: 9, scope: !3783, inlinedAt: !3791)
!3887 = !DILocation(line: 157, column: 4, scope: !3783, inlinedAt: !3791)
!3888 = !DILocation(line: 159, column: 27, scope: !3783, inlinedAt: !3791)
!3889 = !DILocation(line: 159, column: 32, scope: !3783, inlinedAt: !3791)
!3890 = !DILocation(line: 159, column: 31, scope: !3783, inlinedAt: !3791)
!3891 = !DILocation(line: 159, column: 36, scope: !3783, inlinedAt: !3791)
!3892 = !DILocation(line: 159, column: 41, scope: !3783, inlinedAt: !3791)
!3893 = !DILocation(line: 159, column: 40, scope: !3783, inlinedAt: !3791)
!3894 = !DILocation(line: 28, column: 6, scope: !3378, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 159, column: 26, scope: !3783, inlinedAt: !3791)
!3896 = !DILocation(line: 29, column: 16, scope: !3378, inlinedAt: !3895)
!3897 = !DILocation(line: 29, column: 36, scope: !3378, inlinedAt: !3895)
!3898 = !DILocation(line: 29, column: 40, scope: !3378, inlinedAt: !3895)
!3899 = !DILocation(line: 29, column: 38, scope: !3378, inlinedAt: !3895)
!3900 = !DILocation(line: 160, column: 4, scope: !3783, inlinedAt: !3791)
!3901 = !DILocation(line: 169, column: 2, scope: !3783, inlinedAt: !3791)
!3902 = !DILocation(line: 169, column: 7, scope: !3783, inlinedAt: !3791)
!3903 = !DILocation(line: 169, column: 11, scope: !3783, inlinedAt: !3791)
!3904 = !DILocation(line: 169, column: 16, scope: !3783, inlinedAt: !3791)
!3905 = !DILocation(line: 169, column: 21, scope: !3783, inlinedAt: !3791)
!3906 = !DILocation(line: 169, column: 26, scope: !3783, inlinedAt: !3791)
!3907 = !DILocation(line: 169, column: 30, scope: !3783, inlinedAt: !3791)
!3908 = !DILocation(line: 169, column: 35, scope: !3783, inlinedAt: !3791)
!3909 = !DILocation(line: 169, column: 34, scope: !3783, inlinedAt: !3791)
!3910 = !DILocation(line: 169, column: 25, scope: !3783, inlinedAt: !3791)
!3911 = !DILocation(line: 169, column: 6, scope: !3783, inlinedAt: !3791)
!3912 = !DILocation(line: 170, column: 9, scope: !3783, inlinedAt: !3791)
!3913 = !DILocation(line: 170, column: 2, scope: !3783, inlinedAt: !3791)
!3914 = !DILocation(line: 162, column: 6, scope: !3783, inlinedAt: !3791)
!3915 = !DILocation(line: 162, column: 10, scope: !3783, inlinedAt: !3791)
!3916 = !DILocation(line: 165, column: 3, scope: !3783, inlinedAt: !3791)
!3917 = !DILocation(line: 165, column: 8, scope: !3783, inlinedAt: !3791)
!3918 = !DILocation(line: 165, column: 12, scope: !3783, inlinedAt: !3791)
!3919 = !DILocation(line: 165, column: 17, scope: !3783, inlinedAt: !3791)
!3920 = !DILocation(line: 165, column: 22, scope: !3783, inlinedAt: !3791)
!3921 = !DILocation(line: 165, column: 27, scope: !3783, inlinedAt: !3791)
!3922 = !DILocation(line: 165, column: 31, scope: !3783, inlinedAt: !3791)
!3923 = !DILocation(line: 165, column: 36, scope: !3783, inlinedAt: !3791)
!3924 = !DILocation(line: 165, column: 35, scope: !3783, inlinedAt: !3791)
!3925 = !DILocation(line: 165, column: 7, scope: !3783, inlinedAt: !3791)
!3926 = !DILocation(line: 165, column: 16, scope: !3783, inlinedAt: !3791)
!3927 = !DILocation(line: 166, column: 3, scope: !3783, inlinedAt: !3791)
!3928 = !DILocation(line: 167, column: 3, scope: !3783, inlinedAt: !3791)
!3929 = !DILocation(line: 116, column: 3, scope: !3302)
!3930 = !DILocation(line: 116, column: 8, scope: !3302)
!3931 = !DILocation(line: 117, column: 20, scope: !3302)
!3932 = !DILocation(line: 117, column: 3, scope: !3302)
!3933 = !DILocation(line: 119, column: 24, scope: !3302)
!3934 = !DILocation(line: 119, column: 28, scope: !3302)
!3935 = !DILocation(line: 119, column: 27, scope: !3302)
!3936 = !DILocation(line: 119, column: 31, scope: !3302)
!3937 = !DILocation(line: 119, column: 33, scope: !3302)
!3938 = !DILocation(line: 119, column: 32, scope: !3302)
!3939 = !DILocation(line: 119, column: 3, scope: !3302)
!3940 = !DILocation(line: 119, column: 12, scope: !3302)
!3941 = !DILocation(line: 120, column: 23, scope: !3302)
!3942 = !DILocation(line: 120, column: 30, scope: !3302)
!3943 = !DILocation(line: 120, column: 3, scope: !3302)
!3944 = !DILocation(line: 121, column: 6, scope: !3302)
!3945 = !DILocation(line: 121, column: 16, scope: !3302)
!3946 = !DILocation(line: 121, column: 14, scope: !3302)
!3947 = !DILocation(line: 122, column: 18, scope: !3302)
!3948 = !DILocation(line: 122, column: 29, scope: !3302)
!3949 = !DILocation(line: 122, column: 26, scope: !3302)
!3950 = !DILocation(line: 122, column: 4, scope: !3302)
!3951 = !DILocation(line: 123, column: 19, scope: !3302)
!3952 = !DILocation(line: 123, column: 25, scope: !3302)
!3953 = !DILocation(line: 123, column: 28, scope: !3302)
!3954 = !DILocation(line: 123, column: 33, scope: !3302)
!3955 = !DILocation(line: 123, column: 18, scope: !3302)
!3956 = !DILocation(line: 124, column: 8, scope: !3302)
!3957 = !DILocation(line: 124, column: 12, scope: !3302)
!3958 = !DILocation(line: 124, column: 4, scope: !3302)
!3959 = !DILocation(line: 126, column: 18, scope: !3302)
!3960 = !DILocation(line: 126, column: 30, scope: !3302)
!3961 = !DILocation(line: 126, column: 27, scope: !3302)
!3962 = !DILocation(line: 126, column: 4, scope: !3302)
!3963 = !DILocation(line: 127, column: 19, scope: !3302)
!3964 = !DILocation(line: 127, column: 25, scope: !3302)
!3965 = !DILocation(line: 127, column: 28, scope: !3302)
!3966 = !DILocation(line: 127, column: 32, scope: !3302)
!3967 = !DILocation(line: 127, column: 35, scope: !3302)
!3968 = !DILocation(line: 127, column: 18, scope: !3302)
!3969 = !DILocation(line: 74, column: 6, scope: !3302)
!3970 = !DILocation(line: 87, column: 25, scope: !3302)
!3971 = !DILocation(line: 87, column: 31, scope: !3302)
!3972 = !DILocation(line: 87, column: 34, scope: !3302)
!3973 = !DILocalVariable(name: "data", arg: 1, scope: !3974, file: !3303, line: 242, type: !3306)
!3974 = distinct !DISubprogram(name: "slices.breakPatternsOrdered[int]", linkageName: "slices.breakPatternsOrdered[int]", scope: !3303, file: !3303, line: 242, type: !3329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3975)
!3975 = !{!3973, !3976, !3977, !3978, !3979, !3981, !3982, !3983}
!3976 = !DILocalVariable(name: "a", arg: 2, scope: !3974, file: !3303, line: 242, type: !2202)
!3977 = !DILocalVariable(name: "b", arg: 3, scope: !3974, file: !3303, line: 242, type: !2202)
!3978 = !DILocalVariable(name: "length", scope: !3974, file: !3303, line: 243, type: !2202)
!3979 = !DILocalVariable(name: "random", scope: !3974, file: !3303, line: 245, type: !3980)
!3980 = !DIDerivedType(tag: DW_TAG_typedef, name: "slices.xorshift", baseType: !11)
!3981 = !DILocalVariable(name: "modulus", scope: !3974, file: !3303, line: 246, type: !2363)
!3982 = !DILocalVariable(name: "idx", scope: !3974, file: !3303, line: 248, type: !2202)
!3983 = !DILocalVariable(name: "other", scope: !3974, file: !3303, line: 249, type: !2202)
!3984 = !DILocation(line: 242, column: 6, scope: !3974, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 87, column: 24, scope: !3302)
!3986 = !DILocation(line: 243, column: 12, scope: !3974, inlinedAt: !3985)
!3987 = !DILocation(line: 243, column: 16, scope: !3974, inlinedAt: !3985)
!3988 = !DILocalVariable(name: "r", arg: 1, scope: !3989, file: !3990, line: 181, type: !3993)
!3989 = distinct !DISubprogram(name: "(*slices.xorshift).Next", linkageName: "(*slices.xorshift).Next", scope: !3990, file: !3990, line: 181, type: !3991, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1743, retainedNodes: !3994)
!3990 = !DIFile(filename: "sort.go", directory: "/usr/local/go/src/slices")
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!3993}
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64, align: 64, dwarfAddressSpace: 0)
!3994 = !{!3988}
!3995 = !DILocation(line: 181, column: 20, scope: !3989, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 249, column: 33, scope: !3974, inlinedAt: !3985)
!3997 = !DILocation(line: 243, column: 2, scope: !3974, inlinedAt: !3985)
!3998 = !DILocation(line: 244, column: 5, scope: !3974, inlinedAt: !3985)
!3999 = !DILocation(line: 245, column: 22, scope: !3974, inlinedAt: !3985)
!4000 = !DILocation(line: 245, column: 3, scope: !3974, inlinedAt: !3985)
!4001 = !DILocation(line: 246, column: 29, scope: !3974, inlinedAt: !3985)
!4002 = !DILocalVariable(name: "length", arg: 1, scope: !4003, file: !3990, line: 188, type: !2202)
!4003 = distinct !DISubprogram(name: "slices.nextPowerOfTwo", linkageName: "slices.nextPowerOfTwo", scope: !3990, file: !3990, line: 188, type: !4004, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1743, retainedNodes: !4006)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!2202}
!4006 = !{!4002}
!4007 = !DILocation(line: 188, column: 6, scope: !4003, inlinedAt: !4008)
!4008 = distinct !DILocation(line: 246, column: 28, scope: !3974, inlinedAt: !3985)
!4009 = !DILocation(line: 189, column: 28, scope: !4003, inlinedAt: !4008)
!4010 = !DILocalVariable(name: "x", arg: 1, scope: !4011, file: !446, line: 302, type: !2363)
!4011 = distinct !DISubprogram(name: "math/bits.Len", linkageName: "math/bits.Len", scope: !446, file: !446, line: 302, type: !4012, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4014)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!2363}
!4014 = !{!4010}
!4015 = !DILocation(line: 302, column: 6, scope: !4011, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 189, column: 22, scope: !4003, inlinedAt: !4008)
!4017 = !DILocation(line: 246, column: 3, scope: !3974, inlinedAt: !3985)
!4018 = !DILocation(line: 248, column: 14, scope: !3974, inlinedAt: !3985)
!4019 = !DILocation(line: 248, column: 19, scope: !3974, inlinedAt: !3985)
!4020 = !DILocation(line: 248, column: 28, scope: !3974, inlinedAt: !3985)
!4021 = !DILocation(line: 248, column: 7, scope: !3974, inlinedAt: !3985)
!4022 = !DILocation(line: 248, column: 36, scope: !3974, inlinedAt: !3985)
!4023 = !DILocation(line: 248, column: 43, scope: !3974, inlinedAt: !3985)
!4024 = !DILocation(line: 248, column: 46, scope: !3974, inlinedAt: !3985)
!4025 = !DILocation(line: 248, column: 40, scope: !3974, inlinedAt: !3985)
!4026 = !DILocation(line: 0, scope: !3974, inlinedAt: !3985)
!4027 = !DILocation(line: 182, column: 3, scope: !3989, inlinedAt: !3996)
!4028 = !DILocation(line: 182, column: 9, scope: !3989, inlinedAt: !3996)
!4029 = !DILocation(line: 182, column: 11, scope: !3989, inlinedAt: !3996)
!4030 = !DILocation(line: 182, column: 2, scope: !3989, inlinedAt: !3996)
!4031 = !DILocation(line: 183, column: 3, scope: !3989, inlinedAt: !3996)
!4032 = !DILocation(line: 183, column: 9, scope: !3989, inlinedAt: !3996)
!4033 = !DILocation(line: 183, column: 11, scope: !3989, inlinedAt: !3996)
!4034 = !DILocation(line: 183, column: 2, scope: !3989, inlinedAt: !3996)
!4035 = !DILocation(line: 184, column: 3, scope: !3989, inlinedAt: !3996)
!4036 = !DILocation(line: 184, column: 9, scope: !3989, inlinedAt: !3996)
!4037 = !DILocation(line: 184, column: 11, scope: !3989, inlinedAt: !3996)
!4038 = !DILocation(line: 184, column: 2, scope: !3989, inlinedAt: !3996)
!4039 = !DILocation(line: 185, column: 17, scope: !3989, inlinedAt: !3996)
!4040 = !DILocation(line: 249, column: 40, scope: !3974, inlinedAt: !3985)
!4041 = !DILocation(line: 249, column: 37, scope: !3974, inlinedAt: !3985)
!4042 = !DILocation(line: 249, column: 4, scope: !3974, inlinedAt: !3985)
!4043 = !DILocation(line: 250, column: 7, scope: !3974, inlinedAt: !3985)
!4044 = !DILocation(line: 250, column: 16, scope: !3974, inlinedAt: !3985)
!4045 = !DILocation(line: 250, column: 13, scope: !3974, inlinedAt: !3985)
!4046 = !DILocation(line: 253, column: 4, scope: !3974, inlinedAt: !3985)
!4047 = !DILocation(line: 253, column: 9, scope: !3974, inlinedAt: !3985)
!4048 = !DILocation(line: 253, column: 15, scope: !3974, inlinedAt: !3985)
!4049 = !DILocation(line: 253, column: 20, scope: !3974, inlinedAt: !3985)
!4050 = !DILocation(line: 253, column: 22, scope: !3974, inlinedAt: !3985)
!4051 = !DILocation(line: 253, column: 21, scope: !3974, inlinedAt: !3985)
!4052 = !DILocation(line: 253, column: 31, scope: !3974, inlinedAt: !3985)
!4053 = !DILocation(line: 253, column: 36, scope: !3974, inlinedAt: !3985)
!4054 = !DILocation(line: 253, column: 38, scope: !3974, inlinedAt: !3985)
!4055 = !DILocation(line: 253, column: 35, scope: !3974, inlinedAt: !3985)
!4056 = !DILocation(line: 253, column: 46, scope: !3974, inlinedAt: !3985)
!4057 = !DILocation(line: 253, column: 51, scope: !3974, inlinedAt: !3985)
!4058 = !DILocation(line: 253, column: 50, scope: !3974, inlinedAt: !3985)
!4059 = !DILocation(line: 253, column: 8, scope: !3974, inlinedAt: !3985)
!4060 = !DILocation(line: 253, column: 19, scope: !3974, inlinedAt: !3985)
!4061 = !DILocation(line: 248, column: 61, scope: !3974, inlinedAt: !3985)
!4062 = !DILocation(line: 88, column: 4, scope: !3302)
!4063 = distinct !DISubprogram(name: "slices.medianOrdered[int]", linkageName: "slices.medianOrdered[int]", scope: !3303, file: !3303, line: 309, type: !4064, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !4066)
!4064 = !DISubroutineType(cc: DW_CC_nocall, types: !4065)
!4065 = !{!3306, !2202, !2202, !2202, !3309}
!4066 = !{!4067, !4068, !4069, !4070, !4071}
!4067 = !DILocalVariable(name: "data", arg: 1, scope: !4063, file: !3303, line: 309, type: !3306)
!4068 = !DILocalVariable(name: "a", arg: 2, scope: !4063, file: !3303, line: 309, type: !2202)
!4069 = !DILocalVariable(name: "b", arg: 3, scope: !4063, file: !3303, line: 309, type: !2202)
!4070 = !DILocalVariable(name: "c", arg: 4, scope: !4063, file: !3303, line: 309, type: !2202)
!4071 = !DILocalVariable(name: "swaps", arg: 5, scope: !4063, file: !3303, line: 309, type: !3309)
!4072 = !DILocation(line: 309, column: 6, scope: !4063)
!4073 = !DILocation(line: 310, column: 23, scope: !4063)
!4074 = !DILocation(line: 310, column: 29, scope: !4063)
!4075 = !DILocation(line: 310, column: 32, scope: !4063)
!4076 = !DILocation(line: 310, column: 35, scope: !4063)
!4077 = !DILocalVariable(name: "data", arg: 1, scope: !4078, file: !3303, line: 300, type: !3306)
!4078 = distinct !DISubprogram(name: "slices.order2Ordered[int]", linkageName: "slices.order2Ordered[int]", scope: !3303, file: !3303, line: 300, type: !4079, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !4081)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!3306, !2202, !2202, !3309}
!4081 = !{!4077, !4082, !4083, !4084}
!4082 = !DILocalVariable(name: "a", arg: 2, scope: !4078, file: !3303, line: 300, type: !2202)
!4083 = !DILocalVariable(name: "b", arg: 3, scope: !4078, file: !3303, line: 300, type: !2202)
!4084 = !DILocalVariable(name: "swaps", arg: 4, scope: !4078, file: !3303, line: 300, type: !3309)
!4085 = !DILocation(line: 300, column: 6, scope: !4078, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 310, column: 22, scope: !4063)
!4087 = !DILocation(line: 301, column: 14, scope: !4078, inlinedAt: !4086)
!4088 = !DILocation(line: 301, column: 19, scope: !4078, inlinedAt: !4086)
!4089 = !DILocation(line: 301, column: 18, scope: !4078, inlinedAt: !4086)
!4090 = !DILocation(line: 301, column: 23, scope: !4078, inlinedAt: !4086)
!4091 = !DILocation(line: 301, column: 28, scope: !4078, inlinedAt: !4086)
!4092 = !DILocation(line: 301, column: 27, scope: !4078, inlinedAt: !4086)
!4093 = !DILocation(line: 28, column: 6, scope: !3378, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 301, column: 13, scope: !4078, inlinedAt: !4086)
!4095 = !DILocation(line: 29, column: 16, scope: !3378, inlinedAt: !4094)
!4096 = !DILocation(line: 29, column: 36, scope: !3378, inlinedAt: !4094)
!4097 = !DILocation(line: 29, column: 40, scope: !3378, inlinedAt: !4094)
!4098 = !DILocation(line: 29, column: 38, scope: !3378, inlinedAt: !4094)
!4099 = !DILocation(line: 0, scope: !4078, inlinedAt: !4086)
!4100 = !DILocation(line: 302, column: 4, scope: !4078, inlinedAt: !4086)
!4101 = !DILocation(line: 302, column: 3, scope: !4078, inlinedAt: !4086)
!4102 = !DILocation(line: 303, column: 10, scope: !4078, inlinedAt: !4086)
!4103 = !DILocation(line: 303, column: 13, scope: !4078, inlinedAt: !4086)
!4104 = !DILocation(line: 303, column: 3, scope: !4078, inlinedAt: !4086)
!4105 = !DILocation(line: 310, column: 2, scope: !4063)
!4106 = !DILocation(line: 310, column: 5, scope: !4063)
!4107 = !DILocation(line: 311, column: 23, scope: !4063)
!4108 = !DILocation(line: 311, column: 29, scope: !4063)
!4109 = !DILocation(line: 311, column: 32, scope: !4063)
!4110 = !DILocation(line: 311, column: 35, scope: !4063)
!4111 = !DILocation(line: 300, column: 6, scope: !4078, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 311, column: 22, scope: !4063)
!4113 = !DILocation(line: 301, column: 14, scope: !4078, inlinedAt: !4112)
!4114 = !DILocation(line: 301, column: 19, scope: !4078, inlinedAt: !4112)
!4115 = !DILocation(line: 301, column: 18, scope: !4078, inlinedAt: !4112)
!4116 = !DILocation(line: 301, column: 23, scope: !4078, inlinedAt: !4112)
!4117 = !DILocation(line: 301, column: 28, scope: !4078, inlinedAt: !4112)
!4118 = !DILocation(line: 301, column: 27, scope: !4078, inlinedAt: !4112)
!4119 = !DILocation(line: 28, column: 6, scope: !3378, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 301, column: 13, scope: !4078, inlinedAt: !4112)
!4121 = !DILocation(line: 29, column: 16, scope: !3378, inlinedAt: !4120)
!4122 = !DILocation(line: 29, column: 36, scope: !3378, inlinedAt: !4120)
!4123 = !DILocation(line: 29, column: 40, scope: !3378, inlinedAt: !4120)
!4124 = !DILocation(line: 29, column: 38, scope: !3378, inlinedAt: !4120)
!4125 = !DILocation(line: 0, scope: !4078, inlinedAt: !4112)
!4126 = !DILocation(line: 302, column: 4, scope: !4078, inlinedAt: !4112)
!4127 = !DILocation(line: 302, column: 3, scope: !4078, inlinedAt: !4112)
!4128 = !DILocation(line: 303, column: 10, scope: !4078, inlinedAt: !4112)
!4129 = !DILocation(line: 303, column: 13, scope: !4078, inlinedAt: !4112)
!4130 = !DILocation(line: 303, column: 3, scope: !4078, inlinedAt: !4112)
!4131 = !DILocation(line: 311, column: 2, scope: !4063)
!4132 = !DILocation(line: 311, column: 5, scope: !4063)
!4133 = !DILocation(line: 312, column: 23, scope: !4063)
!4134 = !DILocation(line: 312, column: 29, scope: !4063)
!4135 = !DILocation(line: 312, column: 32, scope: !4063)
!4136 = !DILocation(line: 312, column: 35, scope: !4063)
!4137 = !DILocation(line: 300, column: 6, scope: !4078, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 312, column: 22, scope: !4063)
!4139 = !DILocation(line: 301, column: 14, scope: !4078, inlinedAt: !4138)
!4140 = !DILocation(line: 301, column: 19, scope: !4078, inlinedAt: !4138)
!4141 = !DILocation(line: 301, column: 18, scope: !4078, inlinedAt: !4138)
!4142 = !DILocation(line: 301, column: 23, scope: !4078, inlinedAt: !4138)
!4143 = !DILocation(line: 301, column: 28, scope: !4078, inlinedAt: !4138)
!4144 = !DILocation(line: 301, column: 27, scope: !4078, inlinedAt: !4138)
!4145 = !DILocation(line: 28, column: 6, scope: !3378, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 301, column: 13, scope: !4078, inlinedAt: !4138)
!4147 = !DILocation(line: 29, column: 16, scope: !3378, inlinedAt: !4146)
!4148 = !DILocation(line: 29, column: 36, scope: !3378, inlinedAt: !4146)
!4149 = !DILocation(line: 29, column: 40, scope: !3378, inlinedAt: !4146)
!4150 = !DILocation(line: 29, column: 38, scope: !3378, inlinedAt: !4146)
!4151 = !DILocation(line: 0, scope: !4078, inlinedAt: !4138)
!4152 = !DILocation(line: 302, column: 4, scope: !4078, inlinedAt: !4138)
!4153 = !DILocation(line: 302, column: 3, scope: !4078, inlinedAt: !4138)
!4154 = !DILocation(line: 303, column: 10, scope: !4078, inlinedAt: !4138)
!4155 = !DILocation(line: 303, column: 13, scope: !4078, inlinedAt: !4138)
!4156 = !DILocation(line: 303, column: 3, scope: !4078, inlinedAt: !4138)
!4157 = !DILocation(line: 312, column: 2, scope: !4063)
!4158 = !DILocation(line: 312, column: 5, scope: !4063)
!4159 = !DILocation(line: 313, column: 9, scope: !4063)
!4160 = !DILocation(line: 313, column: 2, scope: !4063)
!4161 = distinct !DISubprogram(name: "slices.siftDownOrdered[int]", linkageName: "slices.siftDownOrdered[int]", scope: !3303, file: !3303, line: 22, type: !3304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !4162)
!4162 = !{!4163, !4164, !4165, !4166, !4167, !4168}
!4163 = !DILocalVariable(name: "data", arg: 1, scope: !4161, file: !3303, line: 22, type: !3306)
!4164 = !DILocalVariable(name: "lo", arg: 2, scope: !4161, file: !3303, line: 22, type: !2202)
!4165 = !DILocalVariable(name: "hi", arg: 3, scope: !4161, file: !3303, line: 22, type: !2202)
!4166 = !DILocalVariable(name: "first", arg: 4, scope: !4161, file: !3303, line: 22, type: !2202)
!4167 = !DILocalVariable(name: "root", scope: !4161, file: !3303, line: 23, type: !2202)
!4168 = !DILocalVariable(name: "child", scope: !4161, file: !3303, line: 25, type: !2202)
!4169 = !DILocation(line: 22, column: 6, scope: !4161)
!4170 = !DILocation(line: 23, column: 10, scope: !4161)
!4171 = !DILocation(line: 23, column: 2, scope: !4161)
!4172 = !DILocation(line: 25, column: 13, scope: !4161)
!4173 = !DILocation(line: 25, column: 19, scope: !4161)
!4174 = !DILocation(line: 26, column: 12, scope: !4161)
!4175 = !DILocation(line: 0, scope: !4161)
!4176 = !DILocation(line: 25, column: 14, scope: !4161)
!4177 = !DILocation(line: 29, column: 6, scope: !4161)
!4178 = !DILocation(line: 29, column: 11, scope: !4161)
!4179 = !DILocation(line: 29, column: 16, scope: !4161)
!4180 = !DILocation(line: 29, column: 14, scope: !4161)
!4181 = !DILocation(line: 29, column: 31, scope: !4161)
!4182 = !DILocation(line: 29, column: 36, scope: !4161)
!4183 = !DILocation(line: 29, column: 42, scope: !4161)
!4184 = !DILocation(line: 29, column: 41, scope: !4161)
!4185 = !DILocation(line: 29, column: 35, scope: !4161)
!4186 = !DILocation(line: 29, column: 50, scope: !4161)
!4187 = !DILocation(line: 29, column: 55, scope: !4161)
!4188 = !DILocation(line: 29, column: 61, scope: !4161)
!4189 = !DILocation(line: 29, column: 66, scope: !4161)
!4190 = !DILocation(line: 29, column: 54, scope: !4161)
!4191 = !DILocation(line: 28, column: 6, scope: !3378, inlinedAt: !4192)
!4192 = distinct !DILocation(line: 29, column: 30, scope: !4161)
!4193 = !DILocation(line: 29, column: 16, scope: !3378, inlinedAt: !4192)
!4194 = !DILocation(line: 29, column: 36, scope: !3378, inlinedAt: !4192)
!4195 = !DILocation(line: 29, column: 40, scope: !3378, inlinedAt: !4192)
!4196 = !DILocation(line: 29, column: 38, scope: !3378, inlinedAt: !4192)
!4197 = !DILocation(line: 25, column: 3, scope: !4161)
!4198 = !DILocation(line: 32, column: 16, scope: !4161)
!4199 = !DILocation(line: 32, column: 21, scope: !4161)
!4200 = !DILocation(line: 32, column: 27, scope: !4161)
!4201 = !DILocation(line: 32, column: 26, scope: !4161)
!4202 = !DILocation(line: 32, column: 20, scope: !4161)
!4203 = !DILocation(line: 32, column: 34, scope: !4161)
!4204 = !DILocation(line: 32, column: 39, scope: !4161)
!4205 = !DILocation(line: 32, column: 45, scope: !4161)
!4206 = !DILocation(line: 32, column: 44, scope: !4161)
!4207 = !DILocation(line: 32, column: 38, scope: !4161)
!4208 = !DILocation(line: 28, column: 6, scope: !3378, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 32, column: 15, scope: !4161)
!4210 = !DILocation(line: 29, column: 16, scope: !3378, inlinedAt: !4209)
!4211 = !DILocation(line: 29, column: 36, scope: !3378, inlinedAt: !4209)
!4212 = !DILocation(line: 29, column: 40, scope: !3378, inlinedAt: !4209)
!4213 = !DILocation(line: 29, column: 38, scope: !3378, inlinedAt: !4209)
!4214 = !DILocation(line: 35, column: 52, scope: !4161)
!4215 = !DILocation(line: 35, column: 60, scope: !4161)
!4216 = !DILocation(line: 35, column: 65, scope: !4161)
!4217 = !DILocation(line: 35, column: 71, scope: !4161)
!4218 = !DILocation(line: 35, column: 7, scope: !4161)
!4219 = !DILocation(line: 35, column: 25, scope: !4161)
!4220 = !DILocation(line: 26, column: 6, scope: !4161)
!4221 = !DILocation(line: 26, column: 15, scope: !4161)
!4222 = distinct !DISubprogram(name: "main.f_gold", linkageName: "f_gold", scope: !4223, file: !4223, line: 6, type: !4224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1924, retainedNodes: !4226)
!4223 = !DIFile(filename: "FIND_NUMBER_PAIRS_ARRAY_XOR_0_emit.go", directory: "/root/es/vert/vert/source_funs/go_transcoder/FIND_NUMBER_PAIRS_ARRAY_XOR_0")
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!3306, !2202}
!4226 = !{!4227, !4228, !4229, !4230, !4231}
!4227 = !DILocalVariable(name: "a", arg: 1, scope: !4222, file: !4223, line: 6, type: !3306)
!4228 = !DILocalVariable(name: "n", arg: 2, scope: !4222, file: !4223, line: 6, type: !2202)
!4229 = !DILocalVariable(name: "count", scope: !4222, file: !4223, line: 8, type: !2202)
!4230 = !DILocalVariable(name: "answer", scope: !4222, file: !4223, line: 9, type: !2202)
!4231 = !DILocalVariable(name: "i", scope: !4222, file: !4223, line: 10, type: !2202)
!4232 = !DILocation(line: 6, column: 6, scope: !4222)
!4233 = !DILocation(line: 7, column: 12, scope: !4222)
!4234 = !DILocalVariable(name: "x", arg: 1, scope: !4235, file: !1794, line: 170, type: !3306)
!4235 = distinct !DISubprogram(name: "sort.Ints", linkageName: "sort.Ints", scope: !1794, file: !1794, line: 170, type: !4236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !4238)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!3306}
!4238 = !{!4234}
!4239 = !DILocation(line: 170, column: 6, scope: !4235, inlinedAt: !4240)
!4240 = distinct !DILocation(line: 7, column: 11, scope: !4222)
!4241 = !DILocation(line: 170, column: 34, scope: !4235, inlinedAt: !4240)
!4242 = !DILocalVariable(name: "x", arg: 1, scope: !4243, file: !3990, line: 16, type: !3306)
!4243 = distinct !DISubprogram(name: "slices.Sort[[]int int]", linkageName: "slices.Sort[[]int int]", scope: !3990, file: !3990, line: 16, type: !4236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !4244)
!4244 = !{!4242, !4245}
!4245 = !DILocalVariable(name: "n", scope: !4243, file: !3990, line: 17, type: !2202)
!4246 = !DILocation(line: 16, column: 6, scope: !4243, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 170, column: 33, scope: !4235, inlinedAt: !4240)
!4248 = !DILocation(line: 17, column: 11, scope: !4243, inlinedAt: !4247)
!4249 = !DILocation(line: 17, column: 2, scope: !4243, inlinedAt: !4247)
!4250 = !DILocation(line: 18, column: 17, scope: !4243, inlinedAt: !4247)
!4251 = !DILocation(line: 18, column: 23, scope: !4243, inlinedAt: !4247)
!4252 = !DILocation(line: 18, column: 40, scope: !4243, inlinedAt: !4247)
!4253 = !DILocation(line: 302, column: 6, scope: !4011, inlinedAt: !4254)
!4254 = distinct !DILocation(line: 18, column: 34, scope: !4243, inlinedAt: !4247)
!4255 = !DILocation(line: 11, column: 7, scope: !4222)
!4256 = !DILocation(line: 18, column: 16, scope: !4243, inlinedAt: !4247)
!4257 = !DILocation(line: 8, column: 6, scope: !4222)
!4258 = !DILocation(line: 9, column: 6, scope: !4222)
!4259 = !DILocation(line: 10, column: 6, scope: !4222)
!4260 = !DILocation(line: 10, column: 23, scope: !4222)
!4261 = !DILocation(line: 10, column: 21, scope: !4222)
!4262 = !DILocation(line: 0, scope: !4222)
!4263 = !DILocation(line: 10, column: 19, scope: !4222)
!4264 = !DILocation(line: 11, column: 6, scope: !4222)
!4265 = !DILocation(line: 11, column: 8, scope: !4222)
!4266 = !DILocation(line: 11, column: 14, scope: !4222)
!4267 = !DILocation(line: 11, column: 16, scope: !4222)
!4268 = !DILocation(line: 11, column: 15, scope: !4222)
!4269 = !DILocation(line: 11, column: 11, scope: !4222)
!4270 = !DILocation(line: 12, column: 4, scope: !4222)
!4271 = !DILocation(line: 10, column: 26, scope: !4222)
!4272 = !DILocation(line: 14, column: 13, scope: !4222)
!4273 = !DILocation(line: 14, column: 23, scope: !4222)
!4274 = !DILocation(line: 14, column: 30, scope: !4222)
!4275 = !DILocation(line: 14, column: 35, scope: !4222)
!4276 = !DILocation(line: 14, column: 28, scope: !4222)
!4277 = !DILocation(line: 14, column: 39, scope: !4222)
!4278 = !DILocation(line: 14, column: 20, scope: !4222)
!4279 = !DILocation(line: 14, column: 4, scope: !4222)
!4280 = !DILocation(line: 15, column: 4, scope: !4222)
!4281 = !DILocation(line: 18, column: 11, scope: !4222)
!4282 = !DILocation(line: 18, column: 21, scope: !4222)
!4283 = !DILocation(line: 18, column: 28, scope: !4222)
!4284 = !DILocation(line: 18, column: 33, scope: !4222)
!4285 = !DILocation(line: 18, column: 26, scope: !4222)
!4286 = !DILocation(line: 18, column: 37, scope: !4222)
!4287 = !DILocation(line: 18, column: 18, scope: !4222)
!4288 = !DILocation(line: 18, column: 2, scope: !4222)
!4289 = !DILocation(line: 19, column: 9, scope: !4222)
!4290 = !DILocation(line: 19, column: 2, scope: !4222)
