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
  %0 = icmp eq ptr %m, null, !dbg !1936
  br i1 %0, label %gep.throw, label %"(*sync/atomic.Uint32).Swap.exit", !dbg !1936

"(*sync/atomic.Uint32).Swap.exit":                ; preds = %entry
    #dbg_value(ptr %m, !1937, !DIExpression(), !1945)
    #dbg_value(i32 0, !1944, !DIExpression(), !1947)
    #dbg_value(ptr %m, !1948, !DIExpression(), !1956)
    #dbg_value(i32 0, !1955, !DIExpression(), !1956)
  %1 = atomicrmw xchg ptr %m, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !1956
    #dbg_value(i32 %1, !1934, !DIExpression(), !1958)
  switch i32 %1, label %if.done [
    i32 0, label %if.then
    i32 2, label %gep.next5
  ], !dbg !1959

if.then:                                          ; preds = %"(*sync/atomic.Uint32).Swap.exit"
  tail call fastcc void @runtime._panic(), !dbg !1960
  unreachable, !dbg !1960

gep.next5:                                        ; preds = %"(*sync/atomic.Uint32).Swap.exit"
    #dbg_value(ptr %m, !1933, !DIExpression(), !1961)
    #dbg_value(ptr %m, !1962, !DIExpression(), !1969)
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) %m) #15, !dbg !1971
  br label %if.done, !dbg !1959

if.done:                                          ; preds = %"(*sync/atomic.Uint32).Swap.exit", %gep.next5
  ret void, !dbg !1972

gep.throw:                                        ; preds = %entry
  tail call fastcc void @runtime.nilPanic(), !dbg !1936
  unreachable, !dbg !1936
}

declare void @tinygo_task_init(ptr dereferenceable_or_null(88), ptr dereferenceable_or_null(8), ptr dereferenceable_or_null(4), ptr) local_unnamed_addr #1

declare ptr @tinygo_task_current() local_unnamed_addr #1

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_exited(ptr nocapture readonly dereferenceable_or_null(88) %t) local_unnamed_addr #2 !dbg !1973 {
entry:
    #dbg_value(ptr %t, !1977, !DIExpression(), !1982)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1983, !DIExpression(), !1987)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1989, !DIExpression(), !1996)
    #dbg_value(i32 0, !1994, !DIExpression(), !1998)
    #dbg_value(i32 1, !1995, !DIExpression(), !1999)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2000, !DIExpression(), !2007)
    #dbg_value(i32 0, !2005, !DIExpression(), !2007)
    #dbg_value(i32 1, !2006, !DIExpression(), !2007)
  %0 = cmpxchg ptr @"internal/task.activeTaskLock", i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2007
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !2007
  br i1 %1, label %"(*internal/task.Mutex).Lock.exit", label %"(*sync/atomic.Uint32).Swap.exit.preheader.i", !dbg !2009

"(*sync/atomic.Uint32).Swap.exit.preheader.i":    ; preds = %entry
    #dbg_value(ptr @"internal/task.activeTaskLock", !1983, !DIExpression(), !2010)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1937, !DIExpression(), !2011)
    #dbg_value(i32 2, !1944, !DIExpression(), !2013)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1948, !DIExpression(), !2014)
    #dbg_value(i32 2, !1955, !DIExpression(), !2014)
  %2 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2014
  %.not4.i = icmp eq i32 %2, 0, !dbg !2016
  br i1 %.not4.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !2009

"(*internal/futex.Futex).Wait.exit.i":            ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i", %"(*internal/futex.Futex).Wait.exit.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1983, !DIExpression(), !2017)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2018, !DIExpression(), !2024)
    #dbg_value(i32 2, !2023, !DIExpression(), !2026)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock", i32 2) #15, !dbg !2027
    #dbg_value(ptr @"internal/task.activeTaskLock", !1937, !DIExpression(), !2011)
    #dbg_value(i32 2, !1944, !DIExpression(), !2013)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1948, !DIExpression(), !2014)
    #dbg_value(i32 2, !1955, !DIExpression(), !2014)
  %3 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2014
  %.not.i = icmp eq i32 %3, 0, !dbg !2016
  br i1 %.not.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !2009

"(*internal/task.Mutex).Lock.exit":               ; preds = %"(*internal/futex.Futex).Wait.exit.i", %entry, %"(*sync/atomic.Uint32).Swap.exit.preheader.i"
    #dbg_value(i1 false, !1978, !DIExpression(), !2028)
    #dbg_value(ptr @"internal/task.activeTasks", !1979, !DIExpression(), !2029)
  %4 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2030
  %.not.not6 = icmp eq ptr %4, null, !dbg !2031
  br i1 %.not.not6, label %if.then4.critedge, label %deref.next10, !dbg !2032

for.loop:                                         ; preds = %deref.next10
  %5 = getelementptr inbounds nuw i8, ptr %7, i64 56, !dbg !2033
    #dbg_value(ptr %5, !1979, !DIExpression(), !2034)
  %6 = load ptr, ptr %5, align 8, !dbg !2030
  %.not.not = icmp eq ptr %6, null, !dbg !2031
  br i1 %.not.not, label %if.then4.critedge, label %deref.next10, !dbg !2032

deref.next10:                                     ; preds = %"(*internal/task.Mutex).Lock.exit", %for.loop
  %7 = phi ptr [ %6, %for.loop ], [ %4, %"(*internal/task.Mutex).Lock.exit" ]
  %8 = phi ptr [ %5, %for.loop ], [ @"internal/task.activeTasks", %"(*internal/task.Mutex).Lock.exit" ]
    #dbg_value(ptr %8, !1979, !DIExpression(), !2035)
    #dbg_value(ptr %t, !1977, !DIExpression(), !2036)
  %9 = icmp eq ptr %7, %t, !dbg !2037
    #dbg_value(ptr %7, !1979, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !2038)
  br i1 %9, label %store.next, label %for.loop, !dbg !2032

store.next:                                       ; preds = %deref.next10
    #dbg_value(ptr %8, !1979, !DIExpression(), !2039)
    #dbg_value(ptr %t, !1977, !DIExpression(), !2040)
  %10 = getelementptr inbounds nuw i8, ptr %t, i64 56, !dbg !2041
  %11 = load ptr, ptr %10, align 8, !dbg !2041
  store ptr %11, ptr %8, align 8, !dbg !2042
    #dbg_value(i1 true, !1978, !DIExpression(), !2043)
  %12 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2044
  %13 = add i32 %12, -1, !dbg !2044
  store i32 %13, ptr @"internal/task.otherGoroutines", align 4, !dbg !2044
    #dbg_value(i32 %13, !1981, !DIExpression(), !2044)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1933, !DIExpression(), !2045)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1937, !DIExpression(), !2047)
    #dbg_value(i32 0, !1944, !DIExpression(), !2049)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1948, !DIExpression(), !2050)
    #dbg_value(i32 0, !1955, !DIExpression(), !2050)
  %14 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2050
    #dbg_value(i32 %14, !1934, !DIExpression(), !2052)
  switch i32 %14, label %"(*internal/task.Mutex).Unlock.exit" [
    i32 0, label %if.then.i
    i32 2, label %gep.next5.i
  ], !dbg !2053

if.then.i:                                        ; preds = %store.next
  tail call fastcc void @runtime._panic(), !dbg !2054
  unreachable, !dbg !2054

gep.next5.i:                                      ; preds = %store.next
    #dbg_value(ptr @"internal/task.activeTaskLock", !1933, !DIExpression(), !2055)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1962, !DIExpression(), !2056)
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock") #15, !dbg !2058
  br label %"(*internal/task.Mutex).Unlock.exit", !dbg !2053

"(*internal/task.Mutex).Unlock.exit":             ; preds = %store.next, %gep.next5.i
    #dbg_value(i1 poison, !1978, !DIExpression(), !2059)
  ret void, !dbg !2060

if.then4.critedge:                                ; preds = %for.loop, %"(*internal/task.Mutex).Lock.exit"
  %15 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2044
  %16 = add i32 %15, -1, !dbg !2044
  store i32 %16, ptr @"internal/task.otherGoroutines", align 4, !dbg !2044
    #dbg_value(i32 %13, !1981, !DIExpression(), !2044)
  tail call fastcc void @"(*internal/task.Mutex).Unlock"(ptr nonnull @"internal/task.activeTaskLock"), !dbg !2061
    #dbg_value(i1 poison, !1978, !DIExpression(), !2059)
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.13", i64 17), !dbg !2062
  unreachable, !dbg !2032
}

declare void @tinygo_task_send_gc_signal(ptr nocapture) local_unnamed_addr #1

declare void @tinygo_scanCurrentStack() local_unnamed_addr #1

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_gc_pause(i32 %sig) local_unnamed_addr #2 !dbg !2063 {
entry:
    #dbg_value(i32 %sig, !2067, !DIExpression(), !2069)
  %0 = tail call ptr @tinygo_task_current() #15, !dbg !2070
    #dbg_value(ptr %0, !2074, !DIExpression(), !2076)
  %1 = icmp eq ptr %0, null, !dbg !2077
  br i1 %1, label %if.then.i, label %"internal/task.Current.exit", !dbg !2078

if.then.i:                                        ; preds = %entry
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2079
  unreachable, !dbg !2078

"internal/task.Current.exit":                     ; preds = %entry
    #dbg_value(ptr %0, !2074, !DIExpression(), !2080)
  %2 = tail call ptr @llvm.stacksave.p0(), !dbg !2081
  %3 = ptrtoint ptr %2 to i64, !dbg !2084
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2085
  store i64 %3, ptr %4, align 8, !dbg !2085
    #dbg_value(i64 %3, !2068, !DIExpression(), !2085)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2086, !DIExpression(), !2092)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2094, !DIExpression(), !2098)
    #dbg_value(i32 -1, !2097, !DIExpression(), !2100)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2101, !DIExpression(), !2105)
    #dbg_value(i32 -1, !2104, !DIExpression(), !2105)
  %5 = atomicrmw add ptr @"internal/task.scanWaitGroup", i32 -1 syncscope("singlethread") seq_cst, align 4, !dbg !2105
  %6 = icmp eq i32 %5, 1, !dbg !2107
  br i1 %6, label %gep.next4.i, label %"(*internal/task.waitGroup).done.exit", !dbg !2108

gep.next4.i:                                      ; preds = %"internal/task.Current.exit"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2086, !DIExpression(), !2109)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2110, !DIExpression(), !2113)
  tail call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.scanWaitGroup") #15, !dbg !2115
  br label %"(*internal/task.waitGroup).done.exit", !dbg !2108

"(*internal/task.waitGroup).done.exit":           ; preds = %"internal/task.Current.exit", %gep.next4.i
    #dbg_value(ptr @"internal/task.gcState", !2116, !DIExpression(), !2121)
    #dbg_value(ptr @"internal/task.gcState", !2123, !DIExpression(), !2128)
  %7 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2128
  %8 = icmp eq i32 %7, 1, !dbg !2130
  br i1 %8, label %for.body, label %for.done, !dbg !2131

for.body:                                         ; preds = %"(*internal/task.waitGroup).done.exit", %for.body
    #dbg_value(ptr @"internal/task.gcState", !2018, !DIExpression(), !2132)
    #dbg_value(i32 1, !2023, !DIExpression(), !2134)
  tail call void @tinygo_futex_wait(ptr nonnull @"internal/task.gcState", i32 1) #15, !dbg !2135
    #dbg_value(ptr @"internal/task.gcState", !2116, !DIExpression(), !2121)
    #dbg_value(ptr @"internal/task.gcState", !2123, !DIExpression(), !2128)
  %9 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2128
  %10 = icmp eq i32 %9, 1, !dbg !2130
  br i1 %10, label %for.body, label %for.done, !dbg !2131

for.done:                                         ; preds = %for.body, %"(*internal/task.waitGroup).done.exit"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2086, !DIExpression(), !2136)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2094, !DIExpression(), !2138)
    #dbg_value(i32 -1, !2097, !DIExpression(), !2140)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2101, !DIExpression(), !2141)
    #dbg_value(i32 -1, !2104, !DIExpression(), !2141)
  %11 = atomicrmw add ptr @"internal/task.scanWaitGroup", i32 -1 syncscope("singlethread") seq_cst, align 4, !dbg !2141
  %12 = icmp eq i32 %11, 1, !dbg !2143
  br i1 %12, label %gep.next4.i3, label %"(*internal/task.waitGroup).done.exit4", !dbg !2144

gep.next4.i3:                                     ; preds = %for.done
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2086, !DIExpression(), !2145)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2110, !DIExpression(), !2146)
  tail call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.scanWaitGroup") #15, !dbg !2148
  br label %"(*internal/task.waitGroup).done.exit4", !dbg !2144

"(*internal/task.waitGroup).done.exit4":          ; preds = %for.done, %gep.next4.i3
  ret void, !dbg !2149
}

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.runtimePanic(ptr nocapture readonly %msg.data, i64 range(i64 17, 21) %msg.len) unnamed_addr #3 !dbg !2150 {
entry:
    #dbg_value(ptr %msg.data, !2154, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2155)
    #dbg_value(i64 %msg.len, !2154, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2155)
  %0 = tail call ptr @llvm.returnaddress(i32 0), !dbg !2156
    #dbg_value(%runtime._string poison, !2154, !DIExpression(), !2157)
  tail call fastcc void @runtime.runtimePanicAt(ptr %0, ptr %msg.data, i64 %msg.len), !dbg !2158
  unreachable, !dbg !2159
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.runtimePanicAt(ptr %addr, ptr nocapture readonly %msg.data, i64 range(i64 17, 24) %msg.len) unnamed_addr #3 !dbg !2160 {
entry:
    #dbg_value(ptr %addr, !2164, !DIExpression(), !2166)
    #dbg_value(ptr %msg.data, !2165, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2166)
    #dbg_value(i64 %msg.len, !2165, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2166)
  tail call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.13", i64 24), !dbg !2167
    #dbg_value(ptr %addr, !2164, !DIExpression(), !2168)
  %0 = ptrtoint ptr %addr to i64, !dbg !2169
  %1 = add i64 %0, -5, !dbg !2170
  tail call fastcc void @runtime.printptr(i64 %1), !dbg !2171
  tail call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.14", i64 2), !dbg !2172
    #dbg_value(%runtime._string poison, !2165, !DIExpression(), !2173)
  tail call fastcc void @runtime.printstring(ptr %msg.data, i64 %msg.len), !dbg !2174
  tail call fastcc void @runtime.printnl(), !dbg !2175
  tail call void @abort() #15, !dbg !2176
  unreachable, !dbg !2177
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printstring(ptr nocapture readonly %s.data, i64 range(i64 2, 31) %s.len) unnamed_addr #5 !dbg !2178 {
entry:
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2183
    #dbg_value(ptr %s.data, !2180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2190)
    #dbg_value(i64 %s.len, !2180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2190)
    #dbg_value(i64 0, !2181, !DIExpression(), !2191)
    #dbg_value(%runtime._string poison, !2180, !DIExpression(), !2192)
  br label %for.body, !dbg !2193

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ 0, %entry ], [ %4, %for.body ]
    #dbg_value(i64 %0, !2181, !DIExpression(), !2194)
    #dbg_value(%runtime._string poison, !2180, !DIExpression(), !2195)
  %1 = getelementptr inbounds nuw i8, ptr %s.data, i64 %0, !dbg !2196
  %2 = load i8, ptr %1, align 1, !dbg !2196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2197
    #dbg_value(i8 %2, !2188, !DIExpression(), !2197)
  store i8 %2, ptr %stackalloc.i, align 1, !dbg !2197
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #15, !dbg !2198
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2199
  %4 = add nuw nsw i64 %0, 1, !dbg !2200
    #dbg_value(i64 %4, !2181, !DIExpression(), !2201)
  %exitcond.not = icmp eq i64 %4, %s.len, !dbg !2202
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !2193

for.done:                                         ; preds = %for.body
  ret void, !dbg !2203
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printptr(i64 %ptr) unnamed_addr #5 !dbg !2204 {
entry:
  %stackalloc.i4 = alloca [1 x i8], align 1, !dbg !2211
  %stackalloc.i3 = alloca [1 x i8], align 1, !dbg !2213
  %stackalloc.i2 = alloca [1 x i8], align 1, !dbg !2215
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2217
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2219
    #dbg_value(i64 %ptr, !2208, !DIExpression(), !2222)
  %0 = icmp eq i64 %ptr, 0, !dbg !2223
  br i1 %0, label %for.body.i.preheader, label %if.done, !dbg !2224

for.body.i.preheader:                             ; preds = %entry
    #dbg_value(i64 0, !2181, !DIExpression(), !2225)
    #dbg_value(%runtime._string poison, !2180, !DIExpression(), !2226)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2227
    #dbg_value(i8 110, !2188, !DIExpression(), !2227)
  store i8 110, ptr %stackalloc.i.i, align 1, !dbg !2227
  %1 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #15, !dbg !2228
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2229
    #dbg_value(i64 1, !2181, !DIExpression(), !2230)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2227
    #dbg_value(i8 105, !2188, !DIExpression(), !2227)
  store i8 105, ptr %stackalloc.i.i, align 1, !dbg !2227
  %2 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #15, !dbg !2228
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2229
    #dbg_value(i64 2, !2181, !DIExpression(), !2230)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2227
    #dbg_value(i8 108, !2188, !DIExpression(), !2227)
  store i8 108, ptr %stackalloc.i.i, align 1, !dbg !2227
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #15, !dbg !2228
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2229
    #dbg_value(i64 3, !2181, !DIExpression(), !2230)
  br label %common.ret, !dbg !2224

common.ret:                                       ; preds = %if.done2, %for.body.i.preheader
  ret void, !dbg !2224

if.done:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2231
    #dbg_value(i8 48, !2188, !DIExpression(), !2231)
  store i8 48, ptr %stackalloc.i, align 1, !dbg !2231
  %4 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #15, !dbg !2232
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2233
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i2), !dbg !2234
    #dbg_value(i8 120, !2188, !DIExpression(), !2234)
  store i8 120, ptr %stackalloc.i2, align 1, !dbg !2234
  %5 = call i64 @write(i32 1, ptr nonnull %stackalloc.i2, i64 1) #15, !dbg !2235
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i2), !dbg !2236
    #dbg_value(i64 0, !2209, !DIExpression(), !2237)
  br label %for.body, !dbg !2224

for.body:                                         ; preds = %if.done, %if.done2
  %6 = phi i64 [ 0, %if.done ], [ %14, %if.done2 ]
  %7 = phi i64 [ %ptr, %if.done ], [ %13, %if.done2 ]
    #dbg_value(i64 %6, !2209, !DIExpression(), !2238)
    #dbg_value(i64 %7, !2208, !DIExpression(), !2239)
  %8 = lshr i64 %7, 60, !dbg !2240
  %9 = trunc nuw nsw i64 %8 to i8, !dbg !2241
    #dbg_value(i8 %9, !2210, !DIExpression(), !2242)
  %10 = icmp ult i64 %7, -6917529027641081856, !dbg !2243
  br i1 %10, label %if.then1, label %if.else, !dbg !2224

if.then1:                                         ; preds = %for.body
    #dbg_value(i8 %9, !2210, !DIExpression(), !2244)
  %11 = or disjoint i8 %9, 48, !dbg !2245
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i3), !dbg !2246
    #dbg_value(i8 %11, !2188, !DIExpression(), !2246)
  store i8 %11, ptr %stackalloc.i3, align 1, !dbg !2246
  %12 = call i64 @write(i32 1, ptr nonnull %stackalloc.i3, i64 1) #15, !dbg !2247
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i3), !dbg !2248
  br label %if.done2, !dbg !2224

if.done2:                                         ; preds = %if.else, %if.then1
  %13 = shl i64 %7, 4, !dbg !2249
    #dbg_value(i64 %13, !2208, !DIExpression(), !2249)
  %14 = add nuw nsw i64 %6, 1, !dbg !2250
    #dbg_value(i64 %14, !2209, !DIExpression(), !2238)
  %exitcond.not = icmp eq i64 %14, 16, !dbg !2251
  br i1 %exitcond.not, label %common.ret, label %for.body, !dbg !2224

if.else:                                          ; preds = %for.body
    #dbg_value(i8 %9, !2210, !DIExpression(), !2252)
  %15 = add nuw nsw i8 %9, 87, !dbg !2253
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i4), !dbg !2254
    #dbg_value(i8 %15, !2188, !DIExpression(), !2254)
  store i8 %15, ptr %stackalloc.i4, align 1, !dbg !2254
  %16 = call i64 @write(i32 1, ptr nonnull %stackalloc.i4, i64 1) #15, !dbg !2255
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i4), !dbg !2256
  br label %if.done2, !dbg !2224
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printnl() unnamed_addr #5 !dbg !2257 {
entry:
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2259
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2261
    #dbg_value(i8 10, !2188, !DIExpression(), !2262)
    #dbg_value(i8 10, !2188, !DIExpression(), !2261)
  store i8 10, ptr %stackalloc.i, align 1, !dbg !2261
    #dbg_value(i8 10, !2188, !DIExpression(), !2261)
  %0 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #15, !dbg !2263
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2264
  ret void, !dbg !2265
}

; Function Attrs: cold nofree noreturn
declare void @abort() local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

declare i32 @getrandom(ptr nocapture, i64, i32) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #8

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.nilPanic() unnamed_addr #3 !dbg !2266 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0), !dbg !2267
  tail call fastcc void @runtime.runtimePanicAt(ptr %0, ptr nonnull @"runtime$string.17", i64 23), !dbg !2268
  unreachable, !dbg !2269
}

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.lookupPanic() unnamed_addr #3 !dbg !2270 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0), !dbg !2271
  tail call fastcc void @runtime.runtimePanicAt(ptr %0, ptr nonnull @"runtime$string.19", i64 18), !dbg !2272
  unreachable, !dbg !2273
}

; Function Attrs: noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.panicOrGoexit() unnamed_addr #9 !dbg !2274 {
entry:
    #dbg_value(ptr @"reflect/types.type:basic:string", !2279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2295)
    #dbg_value(ptr @"internal/task$pack", !2279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2295)
    #dbg_value(i8 1, !2280, !DIExpression(), !2295)
  %0 = tail call ptr @tinygo_task_current() #15, !dbg !2296
    #dbg_value(ptr %0, !2074, !DIExpression(), !2298)
    #dbg_value(ptr %0, !2074, !DIExpression(), !2299)
  %1 = icmp eq ptr %0, null, !dbg !2300
  br i1 %1, label %if.then.i, label %"internal/task.Current.exit", !dbg !2301

if.then.i:                                        ; preds = %entry
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2302
  unreachable, !dbg !2301

"internal/task.Current.exit":                     ; preds = %entry
    #dbg_value(ptr %0, !2074, !DIExpression(), !2303)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !2304
  %3 = load ptr, ptr %2, align 8, !dbg !2304
    #dbg_value(ptr %3, !2281, !DIExpression(), !2305)
    #dbg_value(ptr %3, !2281, !DIExpression(), !2306)
  %.not = icmp eq ptr %3, null, !dbg !2307
  br i1 %.not, label %if.done5, label %store.next, !dbg !2308

store.next:                                       ; preds = %"internal/task.Current.exit"
    #dbg_value(ptr %3, !2281, !DIExpression(), !2309)
    #dbg_value({ ptr, ptr } poison, !2279, !DIExpression(), !2310)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !2311
  store ptr @"reflect/types.type:basic:string", ptr %4, align 8, !dbg !2311
  %.repack5 = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !2311
  store ptr @"internal/task$pack", ptr %.repack5, align 8, !dbg !2311
    #dbg_value({ ptr, ptr } poison, !2293, !DIExpression(), !2311)
    #dbg_value(ptr %3, !2281, !DIExpression(), !2312)
    #dbg_value(i8 1, !2280, !DIExpression(), !2313)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !2314
  store i8 1, ptr %5, align 1, !dbg !2314
    #dbg_value(i8 1, !2294, !DIExpression(), !2314)
    #dbg_value(ptr %3, !2281, !DIExpression(), !2315)
  tail call void @tinygo_longjmp(ptr nonnull %3) #15, !dbg !2316
  br label %if.done5, !dbg !2308

if.done5:                                         ; preds = %"internal/task.Current.exit", %store.next
    #dbg_value(i8 1, !2280, !DIExpression(), !2317)
  tail call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.12", i64 7), !dbg !2318
    #dbg_value({ ptr, ptr } poison, !2279, !DIExpression(), !2319)
  tail call fastcc void @runtime.printitf(), !dbg !2320
  tail call fastcc void @runtime.printnl(), !dbg !2321
  tail call void @abort() #15, !dbg !2322
  unreachable, !dbg !2323
}

declare void @tinygo_longjmp(ptr nocapture dereferenceable_or_null(48)) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printitf() unnamed_addr #5 !dbg !2324 {
entry:
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2355
    #dbg_value(ptr @"reflect/types.type:basic:string", !2328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2358)
    #dbg_value(ptr @"internal/task$pack", !2328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2358)
    #dbg_value({ ptr, ptr } poison, !2328, !DIExpression(), !2359)
    #dbg_value(%runtime._string { ptr @"internal/task$string", i64 30 }, !2350, !DIExpression(), !2360)
    #dbg_value(ptr @"internal/task$string", !2180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2361)
    #dbg_value(i64 30, !2180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2361)
    #dbg_value(i64 0, !2181, !DIExpression(), !2362)
    #dbg_value(%runtime._string poison, !2180, !DIExpression(), !2363)
  br label %for.body.i, !dbg !2364

for.body.i:                                       ; preds = %for.body.i, %entry
  %0 = phi i64 [ 0, %entry ], [ %4, %for.body.i ]
    #dbg_value(i64 %0, !2181, !DIExpression(), !2365)
    #dbg_value(%runtime._string poison, !2180, !DIExpression(), !2366)
  %1 = getelementptr inbounds nuw i8, ptr @"internal/task$string", i64 %0, !dbg !2367
  %2 = load i8, ptr %1, align 1, !dbg !2367
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2368
    #dbg_value(i8 %2, !2188, !DIExpression(), !2368)
  store i8 %2, ptr %stackalloc.i.i, align 1, !dbg !2368
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #15, !dbg !2369
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2370
  %4 = add nuw nsw i64 %0, 1, !dbg !2371
    #dbg_value(i64 %4, !2181, !DIExpression(), !2372)
  %exitcond.not.i = icmp eq i64 %4, 30, !dbg !2373
  br i1 %exitcond.not.i, label %runtime.printstring.exit, label %for.body.i, !dbg !2364

runtime.printstring.exit:                         ; preds = %for.body.i
  ret void, !dbg !2374
}

; Function Attrs: noreturn nounwind uwtable(sync)
define internal fastcc void @runtime._panic() unnamed_addr #9 !dbg !2375 {
entry:
    #dbg_value(ptr @"reflect/types.type:basic:string", !2377, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2378)
    #dbg_value(ptr @"internal/task$pack", !2377, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2378)
    #dbg_value({ ptr, ptr } poison, !2377, !DIExpression(), !2379)
  tail call fastcc void @runtime.panicOrGoexit(), !dbg !2380
  unreachable, !dbg !2381
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define double @fminimum(double %x, double %y) local_unnamed_addr #10 !dbg !2382 {
entry:
    #dbg_value(double %x, !2386, !DIExpression(), !2388)
    #dbg_value(double %y, !2387, !DIExpression(), !2388)
    #dbg_value(double %x, !2386, !DIExpression(), !2389)
    #dbg_value(double %y, !2387, !DIExpression(), !2390)
    #dbg_value(double %x, !2391, !DIExpression(), !2395)
    #dbg_value(double %y, !2394, !DIExpression(), !2395)
    #dbg_value(double %x, !2391, !DIExpression(), !2397)
    #dbg_value(double %y, !2394, !DIExpression(), !2398)
    #dbg_value(double %x, !2399, !DIExpression(), !2409)
    #dbg_value(double %y, !2404, !DIExpression(), !2409)
    #dbg_value(i64 9218868437227405313, !2405, !DIExpression(), !2409)
    #dbg_value(i64 9223372036854775807, !2406, !DIExpression(), !2409)
  %.cast.i.i = bitcast double %x to i64, !dbg !2411
    #dbg_value(i64 %.cast.i.i, !2407, !DIExpression(), !2412)
  %.cast2.i.i = bitcast double %y to i64, !dbg !2413
    #dbg_value(i64 %.cast2.i.i, !2408, !DIExpression(), !2414)
    #dbg_value(i64 %.cast.i.i, !2407, !DIExpression(), !2415)
    #dbg_value(i64 9218868437227405313, !2405, !DIExpression(), !2416)
  %0 = icmp sgt i64 %.cast.i.i, 9218868437227405312, !dbg !2417
  br i1 %0, label %runtime.minimumFloat64.exit, label %switch.next.i.i, !dbg !2418

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i64 %.cast2.i.i, !2408, !DIExpression(), !2419)
    #dbg_value(i64 9218868437227405313, !2405, !DIExpression(), !2420)
  %1 = icmp sgt i64 %.cast2.i.i, 9218868437227405312, !dbg !2421
  br i1 %1, label %runtime.minimumFloat64.exit, label %switch.next2.i.i, !dbg !2418

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i64 %.cast.i.i, !2407, !DIExpression(), !2422)
  %2 = icmp slt i64 %.cast.i.i, 0, !dbg !2423
  %3 = xor i64 %.cast.i.i, 9223372036854775807
  %spec.select.i.i = select i1 %2, i64 %3, i64 %.cast.i.i, !dbg !2418
    #dbg_value(i64 %.cast2.i.i, !2408, !DIExpression(), !2424)
  %4 = icmp slt i64 %.cast2.i.i, 0, !dbg !2425
  %5 = xor i64 %.cast2.i.i, 9223372036854775807, !dbg !2418
  %6 = select i1 %4, i64 %5, i64 %.cast2.i.i, !dbg !2418
    #dbg_value(i64 %spec.select.i.i, !2407, !DIExpression(), !2426)
    #dbg_value(i64 %6, !2408, !DIExpression(), !2427)
  %.not.i.i = icmp sgt i64 %spec.select.i.i, %6, !dbg !2428
  %y.x.i.i = select i1 %.not.i.i, double %y, double %x, !dbg !2418
  br label %runtime.minimumFloat64.exit, !dbg !2418

runtime.minimumFloat64.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next2.i.i
  %common.ret.op.i.i = phi double [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next2.i.i ]
  ret double %common.ret.op.i.i, !dbg !2429
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define float @fminimumf(float %x, float %y) local_unnamed_addr #10 !dbg !2430 {
entry:
    #dbg_value(float %x, !2434, !DIExpression(), !2436)
    #dbg_value(float %y, !2435, !DIExpression(), !2436)
    #dbg_value(float %x, !2434, !DIExpression(), !2437)
    #dbg_value(float %y, !2435, !DIExpression(), !2438)
    #dbg_value(float %x, !2439, !DIExpression(), !2443)
    #dbg_value(float %y, !2442, !DIExpression(), !2443)
    #dbg_value(float %x, !2439, !DIExpression(), !2445)
    #dbg_value(float %y, !2442, !DIExpression(), !2446)
    #dbg_value(float %x, !2447, !DIExpression(), !2457)
    #dbg_value(float %y, !2452, !DIExpression(), !2457)
    #dbg_value(i32 2139095041, !2453, !DIExpression(), !2457)
    #dbg_value(i32 2147483647, !2454, !DIExpression(), !2457)
  %.cast.i.i = bitcast float %x to i32, !dbg !2459
    #dbg_value(i32 %.cast.i.i, !2455, !DIExpression(), !2460)
  %.cast2.i.i = bitcast float %y to i32, !dbg !2461
    #dbg_value(i32 %.cast2.i.i, !2456, !DIExpression(), !2462)
    #dbg_value(i32 %.cast.i.i, !2455, !DIExpression(), !2463)
    #dbg_value(i32 2139095041, !2453, !DIExpression(), !2464)
  %0 = icmp sgt i32 %.cast.i.i, 2139095040, !dbg !2465
  br i1 %0, label %runtime.minimumFloat32.exit, label %switch.next.i.i, !dbg !2466

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i32 %.cast2.i.i, !2456, !DIExpression(), !2467)
    #dbg_value(i32 2139095041, !2453, !DIExpression(), !2468)
  %1 = icmp sgt i32 %.cast2.i.i, 2139095040, !dbg !2469
  br i1 %1, label %runtime.minimumFloat32.exit, label %switch.next2.i.i, !dbg !2466

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i32 %.cast.i.i, !2455, !DIExpression(), !2470)
  %2 = icmp slt i32 %.cast.i.i, 0, !dbg !2471
  %3 = xor i32 %.cast.i.i, 2147483647
  %spec.select.i.i = select i1 %2, i32 %3, i32 %.cast.i.i, !dbg !2466
    #dbg_value(i32 %.cast2.i.i, !2456, !DIExpression(), !2472)
  %4 = icmp slt i32 %.cast2.i.i, 0, !dbg !2473
  %5 = xor i32 %.cast2.i.i, 2147483647, !dbg !2466
  %6 = select i1 %4, i32 %5, i32 %.cast2.i.i, !dbg !2466
    #dbg_value(i32 %spec.select.i.i, !2455, !DIExpression(), !2474)
    #dbg_value(i32 %6, !2456, !DIExpression(), !2475)
  %.not.i.i = icmp sgt i32 %spec.select.i.i, %6, !dbg !2476
  %y.x.i.i = select i1 %.not.i.i, float %y, float %x, !dbg !2466
  br label %runtime.minimumFloat32.exit, !dbg !2466

runtime.minimumFloat32.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next2.i.i
  %common.ret.op.i.i = phi float [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next2.i.i ]
  ret float %common.ret.op.i.i, !dbg !2477
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define double @fmaximum(double %x, double %y) local_unnamed_addr #10 !dbg !2478 {
entry:
    #dbg_value(double %x, !2480, !DIExpression(), !2482)
    #dbg_value(double %y, !2481, !DIExpression(), !2482)
    #dbg_value(double %x, !2480, !DIExpression(), !2483)
    #dbg_value(double %y, !2481, !DIExpression(), !2484)
    #dbg_value(double %x, !2485, !DIExpression(), !2489)
    #dbg_value(double %y, !2488, !DIExpression(), !2489)
    #dbg_value(double %x, !2485, !DIExpression(), !2491)
    #dbg_value(double %y, !2488, !DIExpression(), !2492)
    #dbg_value(double %x, !2493, !DIExpression(), !2502)
    #dbg_value(double %y, !2496, !DIExpression(), !2502)
    #dbg_value(i64 9218868437227405313, !2497, !DIExpression(), !2502)
    #dbg_value(i64 9223372036854775807, !2498, !DIExpression(), !2502)
  %.cast.i.i = bitcast double %x to i64, !dbg !2504
    #dbg_value(i64 %.cast.i.i, !2499, !DIExpression(), !2505)
  %.cast6.i.i = bitcast double %y to i64, !dbg !2506
    #dbg_value(i64 %.cast6.i.i, !2500, !DIExpression(), !2507)
    #dbg_value(i64 %.cast.i.i, !2499, !DIExpression(), !2508)
  %0 = icmp slt i64 %.cast.i.i, 0, !dbg !2509
  %1 = xor i64 %.cast.i.i, 9223372036854775807
  %spec.select.i.i = select i1 %0, i64 %1, i64 %.cast.i.i, !dbg !2510
    #dbg_value(i64 %.cast6.i.i, !2500, !DIExpression(), !2511)
  %2 = icmp slt i64 %.cast6.i.i, 0, !dbg !2512
  %3 = xor i64 %.cast6.i.i, 9223372036854775807, !dbg !2510
  %4 = select i1 %2, i64 %3, i64 %.cast6.i.i, !dbg !2510
    #dbg_value(i64 9218868437227405313, !2497, !DIExpression(), !2513)
    #dbg_value(i64 -9218868437227405314, !2501, !DIExpression(), !2514)
    #dbg_value(i64 %spec.select.i.i, !2499, !DIExpression(), !2515)
    #dbg_value(i64 -9218868437227405314, !2501, !DIExpression(), !2516)
  %5 = icmp slt i64 %spec.select.i.i, -9218868437227405313, !dbg !2517
  br i1 %5, label %runtime.maximumFloat64.exit, label %switch.next.i.i, !dbg !2510

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i64 %4, !2500, !DIExpression(), !2518)
    #dbg_value(i64 -9218868437227405314, !2501, !DIExpression(), !2519)
  %6 = icmp slt i64 %4, -9218868437227405313, !dbg !2520
  br i1 %6, label %runtime.maximumFloat64.exit, label %switch.next4.i.i, !dbg !2510

switch.next4.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i64 %spec.select.i.i, !2499, !DIExpression(), !2521)
    #dbg_value(i64 %4, !2500, !DIExpression(), !2522)
  %.not.i.i = icmp slt i64 %spec.select.i.i, %4, !dbg !2523
  %y.x.i.i = select i1 %.not.i.i, double %y, double %x, !dbg !2510
  br label %runtime.maximumFloat64.exit, !dbg !2510

runtime.maximumFloat64.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next4.i.i
  %common.ret.op.i.i = phi double [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next4.i.i ]
  ret double %common.ret.op.i.i, !dbg !2524
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define float @fmaximumf(float %x, float %y) local_unnamed_addr #10 !dbg !2525 {
entry:
    #dbg_value(float %x, !2527, !DIExpression(), !2529)
    #dbg_value(float %y, !2528, !DIExpression(), !2529)
    #dbg_value(float %x, !2527, !DIExpression(), !2530)
    #dbg_value(float %y, !2528, !DIExpression(), !2531)
    #dbg_value(float %x, !2532, !DIExpression(), !2536)
    #dbg_value(float %y, !2535, !DIExpression(), !2536)
    #dbg_value(float %x, !2532, !DIExpression(), !2538)
    #dbg_value(float %y, !2535, !DIExpression(), !2539)
    #dbg_value(float %x, !2540, !DIExpression(), !2549)
    #dbg_value(float %y, !2543, !DIExpression(), !2549)
    #dbg_value(i32 2139095041, !2544, !DIExpression(), !2549)
    #dbg_value(i32 2147483647, !2545, !DIExpression(), !2549)
  %.cast.i.i = bitcast float %x to i32, !dbg !2551
    #dbg_value(i32 %.cast.i.i, !2546, !DIExpression(), !2552)
  %.cast6.i.i = bitcast float %y to i32, !dbg !2553
    #dbg_value(i32 %.cast6.i.i, !2547, !DIExpression(), !2554)
    #dbg_value(i32 %.cast.i.i, !2546, !DIExpression(), !2555)
  %0 = icmp slt i32 %.cast.i.i, 0, !dbg !2556
  %1 = xor i32 %.cast.i.i, 2147483647
  %spec.select.i.i = select i1 %0, i32 %1, i32 %.cast.i.i, !dbg !2557
    #dbg_value(i32 %.cast6.i.i, !2547, !DIExpression(), !2558)
  %2 = icmp slt i32 %.cast6.i.i, 0, !dbg !2559
  %3 = xor i32 %.cast6.i.i, 2147483647, !dbg !2557
  %4 = select i1 %2, i32 %3, i32 %.cast6.i.i, !dbg !2557
    #dbg_value(i32 2139095041, !2544, !DIExpression(), !2560)
    #dbg_value(i32 -2139095042, !2548, !DIExpression(), !2561)
    #dbg_value(i32 %spec.select.i.i, !2546, !DIExpression(), !2562)
    #dbg_value(i32 -2139095042, !2548, !DIExpression(), !2563)
  %5 = icmp slt i32 %spec.select.i.i, -2139095041, !dbg !2564
  br i1 %5, label %runtime.maximumFloat32.exit, label %switch.next.i.i, !dbg !2557

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i32 %4, !2547, !DIExpression(), !2565)
    #dbg_value(i32 -2139095042, !2548, !DIExpression(), !2566)
  %6 = icmp slt i32 %4, -2139095041, !dbg !2567
  br i1 %6, label %runtime.maximumFloat32.exit, label %switch.next4.i.i, !dbg !2557

switch.next4.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i32 %spec.select.i.i, !2546, !DIExpression(), !2568)
    #dbg_value(i32 %4, !2547, !DIExpression(), !2569)
  %.not.i.i = icmp slt i32 %spec.select.i.i, %4, !dbg !2570
  %y.x.i.i = select i1 %.not.i.i, float %y, float %x, !dbg !2557
  br label %runtime.maximumFloat32.exit, !dbg !2557

runtime.maximumFloat32.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next4.i.i
  %common.ret.op.i.i = phi float [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next4.i.i ]
  ret float %common.ret.op.i.i, !dbg !2571
}

declare void @GC_init() local_unnamed_addr #1

declare void @tinygo_runtime_bdwgc_init() local_unnamed_addr #1

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_runtime_bdwgc_callback() local_unnamed_addr #2 !dbg !2572 {
entry:
  %0 = tail call ptr @tinygo_task_current() #15, !dbg !2573
    #dbg_value(ptr %0, !2074, !DIExpression(), !2587)
  %1 = icmp eq ptr %0, null, !dbg !2588
  br i1 %1, label %if.then.i.i.i, label %"internal/task.Current.exit.i.i", !dbg !2589

if.then.i.i.i:                                    ; preds = %entry
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2590
  unreachable, !dbg !2589

"internal/task.Current.exit.i.i":                 ; preds = %entry
    #dbg_value(ptr %0, !2074, !DIExpression(), !2591)
    #dbg_value(ptr %0, !2577, !DIExpression(), !2592)
    #dbg_value(ptr @"internal/task.gcState", !2116, !DIExpression(), !2593)
    #dbg_value(ptr @"internal/task.gcState", !2123, !DIExpression(), !2595)
  %2 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2595
  %3 = icmp eq i32 %2, 0, !dbg !2597
  br i1 %3, label %if.then.i.i, label %if.done2.i.i, !dbg !2598

if.then.i.i:                                      ; preds = %"internal/task.Current.exit.i.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1983, !DIExpression(), !2599)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1989, !DIExpression(), !2601)
    #dbg_value(i32 0, !1994, !DIExpression(), !2603)
    #dbg_value(i32 1, !1995, !DIExpression(), !2604)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2000, !DIExpression(), !2605)
    #dbg_value(i32 0, !2005, !DIExpression(), !2605)
    #dbg_value(i32 1, !2006, !DIExpression(), !2605)
  %4 = cmpxchg ptr @"internal/task.activeTaskLock", i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2605
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !2605
  br i1 %5, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i", !dbg !2607

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i": ; preds = %if.then.i.i
    #dbg_value(ptr @"internal/task.activeTaskLock", !1983, !DIExpression(), !2608)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1937, !DIExpression(), !2609)
    #dbg_value(i32 2, !1944, !DIExpression(), !2611)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1948, !DIExpression(), !2612)
    #dbg_value(i32 2, !1955, !DIExpression(), !2612)
  %6 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2612
  %.not4.i.i.i = icmp eq i32 %6, 0, !dbg !2614
  br i1 %.not4.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i", !dbg !2607

"(*internal/futex.Futex).Wait.exit.i.i.i":        ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i", %"(*internal/futex.Futex).Wait.exit.i.i.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1983, !DIExpression(), !2615)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2018, !DIExpression(), !2616)
    #dbg_value(i32 2, !2023, !DIExpression(), !2618)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock", i32 2) #15, !dbg !2619
    #dbg_value(ptr @"internal/task.activeTaskLock", !1937, !DIExpression(), !2609)
    #dbg_value(i32 2, !1944, !DIExpression(), !2611)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1948, !DIExpression(), !2612)
    #dbg_value(i32 2, !1955, !DIExpression(), !2612)
  %7 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2612
  %.not.i.i.i = icmp eq i32 %7, 0, !dbg !2614
  br i1 %.not.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i", !dbg !2607

"(*internal/task.Mutex).Lock.exit.i.i":           ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i", %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i", %if.then.i.i
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2620, !DIExpression(), !2624)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2116, !DIExpression(), !2626)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2123, !DIExpression(), !2628)
  %8 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2628
  %9 = icmp eq i32 %8, 0, !dbg !2630
  br i1 %9, label %"(*internal/task.waitGroup).wait.exit.i.i", label %gep.next4.i.i.i, !dbg !2631

gep.next4.i.i.i:                                  ; preds = %"(*internal/task.Mutex).Lock.exit.i.i", %gep.next4.i.i.i
  %10 = phi i32 [ %11, %gep.next4.i.i.i ], [ %8, %"(*internal/task.Mutex).Lock.exit.i.i" ]
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2620, !DIExpression(), !2632)
    #dbg_value(i32 %10, !2623, !DIExpression(), !2633)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2018, !DIExpression(), !2634)
    #dbg_value(i32 %10, !2023, !DIExpression(), !2636)
  tail call void @tinygo_futex_wait(ptr nonnull @"internal/task.scanWaitGroup", i32 range(i32 1, 0) %10) #15, !dbg !2637
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2116, !DIExpression(), !2626)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2123, !DIExpression(), !2628)
  %11 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2628
    #dbg_value(i32 %11, !2623, !DIExpression(), !2638)
  %12 = icmp eq i32 %11, 0, !dbg !2630
  br i1 %12, label %"(*internal/task.waitGroup).wait.exit.i.i", label %gep.next4.i.i.i, !dbg !2631

"(*internal/task.waitGroup).wait.exit.i.i":       ; preds = %gep.next4.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i"
    #dbg_value(ptr @"internal/task.gcState", !2639, !DIExpression(), !2643)
    #dbg_value(i32 1, !2642, !DIExpression(), !2645)
    #dbg_value(ptr @"internal/task.gcState", !2646, !DIExpression(), !2650)
    #dbg_value(i32 1, !2649, !DIExpression(), !2650)
  store atomic i32 1, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2650
  %13 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2652
    #dbg_value(i32 %13, !2578, !DIExpression(), !2652)
  store i32 %13, ptr @"internal/task.scanWaitGroup", align 4, !dbg !2653
    #dbg_value(%"internal/task.Semaphore" poison, !2579, !DIExpression(), !2653)
    #dbg_value(ptr poison, !2580, !DIExpression(), !2654)
    #dbg_value(ptr poison, !2581, !DIExpression(), !2655)
  %14 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2656
  %.not23.i.i = icmp eq ptr %14, null, !dbg !2657
  br i1 %.not23.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !2598

for.body.i.i:                                     ; preds = %"(*internal/task.waitGroup).wait.exit.i.i", %deref.next15.i.i
  %15 = phi ptr [ %19, %deref.next15.i.i ], [ %14, %"(*internal/task.waitGroup).wait.exit.i.i" ]
    #dbg_value(ptr %15, !2581, !DIExpression(), !2658)
    #dbg_value(ptr %0, !2577, !DIExpression(), !2659)
  %.not16.i.i = icmp eq ptr %15, %0, !dbg !2660
  br i1 %.not16.i.i, label %deref.next15.i.i, label %deref.next.i.i, !dbg !2598

deref.next.i.i:                                   ; preds = %for.body.i.i
    #dbg_value(ptr %15, !2581, !DIExpression(), !2661)
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 32, !dbg !2662
  %17 = load ptr, ptr %16, align 8, !dbg !2662
  tail call void @tinygo_task_send_gc_signal(ptr %17) #15, !dbg !2663
  br label %deref.next15.i.i, !dbg !2598

deref.next15.i.i:                                 ; preds = %deref.next.i.i, %for.body.i.i
    #dbg_value(ptr %15, !2581, !DIExpression(), !2664)
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 56, !dbg !2665
    #dbg_value(ptr poison, !2581, !DIExpression(), !2666)
  %19 = load ptr, ptr %18, align 8, !dbg !2656
    #dbg_value(ptr %19, !2581, !DIExpression(), !2667)
  %.not.i.i = icmp eq ptr %19, null, !dbg !2657
  br i1 %.not.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !2598

for.done.i.i:                                     ; preds = %deref.next15.i.i, %"(*internal/task.waitGroup).wait.exit.i.i"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2620, !DIExpression(), !2668)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2116, !DIExpression(), !2670)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2123, !DIExpression(), !2672)
  %20 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2672
  %21 = icmp eq i32 %20, 0, !dbg !2674
  br i1 %21, label %if.done2.i.i, label %gep.next4.i20.i.i, !dbg !2675

gep.next4.i20.i.i:                                ; preds = %for.done.i.i, %gep.next4.i20.i.i
  %22 = phi i32 [ %23, %gep.next4.i20.i.i ], [ %20, %for.done.i.i ]
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2620, !DIExpression(), !2676)
    #dbg_value(i32 %22, !2623, !DIExpression(), !2677)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2018, !DIExpression(), !2678)
    #dbg_value(i32 %22, !2023, !DIExpression(), !2680)
  tail call void @tinygo_futex_wait(ptr nonnull @"internal/task.scanWaitGroup", i32 range(i32 1, 0) %22) #15, !dbg !2681
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2116, !DIExpression(), !2670)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2123, !DIExpression(), !2672)
  %23 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2672
    #dbg_value(i32 %23, !2623, !DIExpression(), !2682)
  %24 = icmp eq i32 %23, 0, !dbg !2674
  br i1 %24, label %if.done2.i.i, label %gep.next4.i20.i.i, !dbg !2675

if.done2.i.i:                                     ; preds = %gep.next4.i20.i.i, %for.done.i.i, %"internal/task.Current.exit.i.i"
    #dbg_value(ptr poison, !2580, !DIExpression(), !2683)
    #dbg_value(ptr poison, !2582, !DIExpression(), !2684)
  %25 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2685
  %.not1424.i.i = icmp eq ptr %25, null, !dbg !2686
  br i1 %.not1424.i.i, label %for.done7.i.i, label %for.body4.i.i, !dbg !2598

for.body4.i.i:                                    ; preds = %if.done2.i.i, %deref.next33.i.i
  %26 = phi ptr [ %32, %deref.next33.i.i ], [ %25, %if.done2.i.i ]
    #dbg_value(ptr %26, !2582, !DIExpression(), !2687)
    #dbg_value(ptr %0, !2577, !DIExpression(), !2688)
  %.not15.i.i = icmp eq ptr %26, %0, !dbg !2689
  br i1 %.not15.i.i, label %deref.next33.i.i, label %deref.next21.i.i, !dbg !2598

deref.next21.i.i:                                 ; preds = %for.body4.i.i
    #dbg_value(ptr %26, !2582, !DIExpression(), !2690)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 48, !dbg !2691
  %28 = load i64, ptr %27, align 8, !dbg !2691
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 40, !dbg !2692
  %30 = load i64, ptr %29, align 8, !dbg !2692
    #dbg_value(i64 %28, !2693, !DIExpression(), !2699)
    #dbg_value(i64 %30, !2698, !DIExpression(), !2701)
  tail call void @GC_push_all(i64 %28, i64 %30) #15, !dbg !2702
  br label %deref.next33.i.i, !dbg !2598

deref.next33.i.i:                                 ; preds = %deref.next21.i.i, %for.body4.i.i
    #dbg_value(ptr %26, !2582, !DIExpression(), !2703)
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 56, !dbg !2704
    #dbg_value(ptr poison, !2582, !DIExpression(), !2705)
  %32 = load ptr, ptr %31, align 8, !dbg !2685
    #dbg_value(ptr %32, !2582, !DIExpression(), !2706)
  %.not14.i.i = icmp eq ptr %32, null, !dbg !2686
  br i1 %.not14.i.i, label %for.done7.i.i, label %for.body4.i.i, !dbg !2598

for.done7.i.i:                                    ; preds = %deref.next33.i.i, %if.done2.i.i
  tail call void @tinygo_scanCurrentStack() #15, !dbg !2707
    #dbg_value(ptr undef, !2708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2740)
    #dbg_value(ptr poison, !2708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2740)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2714, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2744)
    #dbg_value(i64 0, !2715, !DIExpression(), !2745)
  %33 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 56), align 2, !dbg !2746
  %.not8.i.i.i.i = icmp eq i16 %33, 0, !dbg !2747
  br i1 %.not8.i.i.i.i, label %runtime.gcMarkReachable.exit, label %if.then.preheader.i.i.i.i, !dbg !2748

if.then.preheader.i.i.i.i:                        ; preds = %for.done7.i.i
  %34 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 32), align 8, !dbg !2749
    #dbg_value(!DIArgList(i64 %34, i64 ptrtoint (ptr @__ehdr_start to i64)), !2714, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2744)
  %35 = add i64 %34, ptrtoint (ptr @__ehdr_start to i64), !dbg !2750
    #dbg_value(i64 %35, !2714, !DIExpression(), !2744)
  %36 = inttoptr i64 %35 to ptr, !dbg !2751
    #dbg_value(ptr %36, !2714, !DIExpression(), !2744)
  br label %if.then.i.i.i.i, !dbg !2752

if.then.i.i.i.i:                                  ; preds = %if.done.i.i.i.i, %if.then.preheader.i.i.i.i
  %37 = phi i16 [ %51, %if.done.i.i.i.i ], [ %33, %if.then.preheader.i.i.i.i ]
  %38 = phi i64 [ %55, %if.done.i.i.i.i ], [ 0, %if.then.preheader.i.i.i.i ]
  %39 = phi ptr [ %54, %if.done.i.i.i.i ], [ %36, %if.then.preheader.i.i.i.i ]
    #dbg_value(i64 %38, !2715, !DIExpression(), !2753)
    #dbg_value(ptr %39, !2714, !DIExpression(), !2754)
    #dbg_value(ptr %39, !2716, !DIExpression(), !2755)
  %40 = icmp eq ptr %39, null, !dbg !2752
  br i1 %40, label %deref.throw.i.i.i.i, label %deref.next.i.i.i.i, !dbg !2752

deref.next.i.i.i.i:                               ; preds = %if.then.i.i.i.i
  %41 = load i32, ptr %39, align 4, !dbg !2752
  %42 = icmp eq i32 %41, 1, !dbg !2756
  br i1 %42, label %deref.next5.i.i.i.i, label %if.done.i.i.i.i, !dbg !2748

deref.next5.i.i.i.i:                              ; preds = %deref.next.i.i.i.i
    #dbg_value(ptr %39, !2716, !DIExpression(), !2757)
  %43 = getelementptr inbounds nuw i8, ptr %39, i64 4, !dbg !2758
  %44 = load i32, ptr %43, align 4, !dbg !2758
  %45 = and i32 %44, 2, !dbg !2759
  %.not.i.i.i.i = icmp eq i32 %45, 0, !dbg !2760
  br i1 %.not.i.i.i.i, label %if.done.i.i.i.i, label %deref.next7.i.i.i.i, !dbg !2748

deref.next7.i.i.i.i:                              ; preds = %deref.next5.i.i.i.i
    #dbg_value(ptr %39, !2716, !DIExpression(), !2761)
  %46 = getelementptr inbounds nuw i8, ptr %39, i64 16, !dbg !2762
  %47 = load i64, ptr %46, align 8, !dbg !2762
    #dbg_value({ ptr, ptr } poison, !2708, !DIExpression(), !2763)
    #dbg_value(i64 %47, !2729, !DIExpression(), !2764)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2730, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2765)
  %48 = getelementptr inbounds nuw i8, ptr %39, i64 40, !dbg !2766
  %49 = load i64, ptr %48, align 8, !dbg !2766
    #dbg_value(!DIArgList(i64 %47, i64 %49), !2730, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2765)
  %50 = add i64 %49, %47, !dbg !2767
    #dbg_value(i64 %50, !2730, !DIExpression(), !2765)
    #dbg_value(i64 %47, !2693, !DIExpression(), !2768)
    #dbg_value(i64 %50, !2698, !DIExpression(), !2770)
  tail call void @GC_push_all(i64 %47, i64 %50) #15, !dbg !2771
  %.pre.i.i.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 56), align 2, !dbg !2746
  br label %if.done.i.i.i.i, !dbg !2748

if.done.i.i.i.i:                                  ; preds = %deref.next7.i.i.i.i, %deref.next5.i.i.i.i, %deref.next.i.i.i.i
  %51 = phi i16 [ %.pre.i.i.i.i, %deref.next7.i.i.i.i ], [ %37, %deref.next5.i.i.i.i ], [ %37, %deref.next.i.i.i.i ], !dbg !2746
    #dbg_value(ptr %39, !2714, !DIExpression(), !2772)
  %52 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 54), align 2, !dbg !2773
  %53 = sext i16 %52 to i64, !dbg !2774
  %54 = getelementptr i8, ptr %39, i64 %53, !dbg !2774
    #dbg_value(ptr %54, !2714, !DIExpression(), !2775)
  %55 = add nuw nsw i64 %38, 1, !dbg !2776
    #dbg_value(i64 %55, !2715, !DIExpression(), !2753)
  %56 = zext i16 %51 to i64, !dbg !2777
  %57 = icmp samesign ult i64 %55, %56, !dbg !2747
  br i1 %57, label %if.then.i.i.i.i, label %runtime.gcMarkReachable.exit, !dbg !2748

deref.throw.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  tail call fastcc void @runtime.nilPanic(), !dbg !2752
  unreachable, !dbg !2752

runtime.gcMarkReachable.exit:                     ; preds = %if.done.i.i.i.i, %for.done7.i.i
  ret void, !dbg !2778
}

declare void @GC_push_all(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_scanstack(i64 %sp) local_unnamed_addr #2 !dbg !2779 {
entry:
    #dbg_value(i64 %sp, !2782, !DIExpression(), !2783)
    #dbg_value(i64 %sp, !2782, !DIExpression(), !2784)
  %0 = tail call ptr @tinygo_task_current() #15, !dbg !2785
    #dbg_value(ptr %0, !2074, !DIExpression(), !2789)
    #dbg_value(ptr %0, !2074, !DIExpression(), !2790)
  %1 = icmp eq ptr %0, null, !dbg !2791
  br i1 %1, label %if.then.i.i, label %"internal/task.StackTop.exit", !dbg !2792

if.then.i.i:                                      ; preds = %entry
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2793
  unreachable, !dbg !2792

"internal/task.StackTop.exit":                    ; preds = %entry
    #dbg_value(ptr %0, !2074, !DIExpression(), !2794)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2795
  %3 = load i64, ptr %2, align 8, !dbg !2795
    #dbg_value(i64 %sp, !2693, !DIExpression(), !2796)
    #dbg_value(i64 %3, !2698, !DIExpression(), !2796)
    #dbg_value(i64 %sp, !2693, !DIExpression(), !2798)
    #dbg_value(i64 %3, !2698, !DIExpression(), !2799)
  tail call void @GC_push_all(i64 %sp, i64 %3) #15, !dbg !2800
  ret void, !dbg !2801
}

; Function Attrs: nounwind uwtable(sync)
define noundef i64 @main(i32 %argc, ptr nocapture dereferenceable_or_null(8) %argv) local_unnamed_addr #2 !dbg !2802 {
entry:
    #dbg_value(i32 %argc, !2806, !DIExpression(), !2811)
    #dbg_value(ptr %argv, !2807, !DIExpression(), !2811)
    #dbg_value(i32 %argc, !2806, !DIExpression(), !2812)
    #dbg_value(i32 %argc, !2808, !DIExpression(), !2813)
    #dbg_value(ptr %argv, !2807, !DIExpression(), !2814)
  store ptr %argv, ptr @runtime.main_argv, align 8, !dbg !2815
    #dbg_value(ptr %argv, !2809, !DIExpression(), !2815)
  tail call void @tinygo_register_fatal_signals() #15, !dbg !2816
  %0 = tail call ptr @llvm.stacksave.p0(), !dbg !2817
  %1 = ptrtoint ptr %0 to i64, !dbg !2822
  store i64 %1, ptr @runtime.stackTop, align 8, !dbg !2823
    #dbg_value(i64 %1, !2810, !DIExpression(), !2823)
  tail call fastcc void @runtime.runMain(), !dbg !2824
  ret i64 0, !dbg !2825
}

declare void @tinygo_register_fatal_signals() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable(sync)
define internal fastcc void @runtime.runMain() unnamed_addr #11 !dbg !2826 {
entry:
  %stackalloc.i.i.i = alloca [8 x i8], align 8, !dbg !2827
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stackalloc.i.i.i), !dbg !2827
  store i64 0, ptr %stackalloc.i.i.i, align 8, !dbg !2827
  %0 = call i32 @getrandom(ptr nonnull %stackalloc.i.i.i, i64 8, i32 0) #15, !dbg !2843
    #dbg_value(i32 %0, !2830, !DIExpression(), !2844)
    #dbg_value(i32 %0, !2830, !DIExpression(), !2845)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stackalloc.i.i.i), !dbg !2846
    #dbg_value(i64 poison, !2835, !DIExpression(), !2847)
    #dbg_value(i64 poison, !2835, !DIExpression(), !2848)
    #dbg_value(i64 poison, !2836, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !2849)
    #dbg_value(i64 poison, !2836, !DIExpression(), !2850)
    #dbg_value(i64 poison, !2837, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2851)
  tail call void @GC_init() #15, !dbg !2852
  tail call void @tinygo_runtime_bdwgc_init() #15, !dbg !2855
  %1 = load i64, ptr @runtime.stackTop, align 8, !dbg !2856
    #dbg_value(i64 %1, !2841, !DIExpression(), !2856)
    #dbg_value(i64 %1, !2857, !DIExpression(), !2861)
    #dbg_value(i64 %1, !2857, !DIExpression(), !2863)
  store i64 %1, ptr getelementptr inbounds nuw (i8, ptr @"internal/task.mainTask", i64 40), align 8, !dbg !2864
    #dbg_value(i64 %1, !2860, !DIExpression(), !2864)
  tail call void @tinygo_task_init(ptr nonnull @"internal/task.mainTask", ptr nonnull getelementptr inbounds nuw (i8, ptr @"internal/task.mainTask", i64 32), ptr nonnull @"internal/task.numCPU", ptr undef) #15, !dbg !2865
  tail call void @main.main(ptr undef) #15, !dbg !2866
  ret void, !dbg !2867
}

declare void @main.main(ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_handle_fatal_signal(i32 %sig, i64 %addr) local_unnamed_addr #2 !dbg !2868 {
entry:
  %stackalloc.i.i46 = alloca [1 x i8], align 1, !dbg !2874
  %stackalloc.i.i42 = alloca [1 x i8], align 1, !dbg !2877
  %stackalloc.i.i.i.i = alloca [1 x i8], align 1, !dbg !2880
    #dbg_value(i64 %60, !2886, !DIExpression(), !2902)
  %digits.i.i.i = alloca [20 x i8], align 1, !dbg !2903
  %stackalloc.i.i41 = alloca [1 x i8], align 1, !dbg !2904
  %stackalloc.i.i32 = alloca [1 x i8], align 1, !dbg !2906
  %stackalloc.i.i28 = alloca [1 x i8], align 1, !dbg !2909
  %stackalloc.i.i19 = alloca [1 x i8], align 1, !dbg !2912
  %stackalloc.i.i15 = alloca [1 x i8], align 1, !dbg !2915
  %stackalloc.i.i9 = alloca [1 x i8], align 1, !dbg !2918
  %stackalloc.i.i5 = alloca [1 x i8], align 1, !dbg !2921
  %stackalloc.i.i1 = alloca [1 x i8], align 1, !dbg !2924
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2927
    #dbg_value(i32 %sig, !2872, !DIExpression(), !2930)
    #dbg_value(i64 %addr, !2873, !DIExpression(), !2931)
  %.not = icmp eq i64 %addr, 0, !dbg !2932
  br i1 %.not, label %for.body.i47, label %for.body.i, !dbg !2933

for.body.i:                                       ; preds = %entry, %for.body.i
  %0 = phi i64 [ %4, %for.body.i ], [ 0, %entry ]
    #dbg_value(i64 %0, !2181, !DIExpression(), !2934)
    #dbg_value(%runtime._string poison, !2180, !DIExpression(), !2935)
  %1 = getelementptr inbounds nuw i8, ptr @"runtime$string.50", i64 %0, !dbg !2936
  %2 = load i8, ptr %1, align 1, !dbg !2936
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2937
    #dbg_value(i8 %2, !2188, !DIExpression(), !2937)
  store i8 %2, ptr %stackalloc.i.i, align 1, !dbg !2937
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #15, !dbg !2938
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2939
  %4 = add nuw nsw i64 %0, 1, !dbg !2940
    #dbg_value(i64 %4, !2181, !DIExpression(), !2941)
  %exitcond.not.i = icmp eq i64 %4, 24, !dbg !2942
  br i1 %exitcond.not.i, label %runtime.printstring.exit, label %for.body.i, !dbg !2943

runtime.printstring.exit:                         ; preds = %for.body.i
    #dbg_value(i64 %addr, !2873, !DIExpression(), !2944)
  tail call fastcc void @runtime.printptr(i64 %addr), !dbg !2945
  br label %if.done2, !dbg !2933

if.done2:                                         ; preds = %for.body.i47, %runtime.printstring.exit
    #dbg_value(ptr poison, !2180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2946)
    #dbg_value(i64 16, !2180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2946)
    #dbg_value(i64 0, !2181, !DIExpression(), !2947)
    #dbg_value(%runtime._string poison, !2180, !DIExpression(), !2948)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2949
    #dbg_value(i8 58, !2188, !DIExpression(), !2949)
  store i8 58, ptr %stackalloc.i.i1, align 1, !dbg !2949
  %5 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2950
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2951
    #dbg_value(i64 1, !2181, !DIExpression(), !2952)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2949
    #dbg_value(i8 32, !2188, !DIExpression(), !2949)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2949
  %6 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2950
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2951
    #dbg_value(i64 2, !2181, !DIExpression(), !2952)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2949
    #dbg_value(i8 99, !2188, !DIExpression(), !2949)
  store i8 99, ptr %stackalloc.i.i1, align 1, !dbg !2949
  %7 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2950
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2951
    #dbg_value(i64 3, !2181, !DIExpression(), !2952)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2949
    #dbg_value(i8 97, !2188, !DIExpression(), !2949)
  store i8 97, ptr %stackalloc.i.i1, align 1, !dbg !2949
  %8 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2950
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2951
    #dbg_value(i64 4, !2181, !DIExpression(), !2952)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2949
    #dbg_value(i8 117, !2188, !DIExpression(), !2949)
  store i8 117, ptr %stackalloc.i.i1, align 1, !dbg !2949
  %9 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2950
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2951
    #dbg_value(i64 5, !2181, !DIExpression(), !2952)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2949
    #dbg_value(i8 103, !2188, !DIExpression(), !2949)
  store i8 103, ptr %stackalloc.i.i1, align 1, !dbg !2949
  %10 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2950
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2951
    #dbg_value(i64 6, !2181, !DIExpression(), !2952)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2949
    #dbg_value(i8 104, !2188, !DIExpression(), !2949)
  store i8 104, ptr %stackalloc.i.i1, align 1, !dbg !2949
  %11 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2950
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2951
    #dbg_value(i64 7, !2181, !DIExpression(), !2952)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2949
    #dbg_value(i8 116, !2188, !DIExpression(), !2949)
  store i8 116, ptr %stackalloc.i.i1, align 1, !dbg !2949
  %12 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2950
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2951
    #dbg_value(i64 8, !2181, !DIExpression(), !2952)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2949
    #dbg_value(i8 32, !2188, !DIExpression(), !2949)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2949
  %13 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2950
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2951
    #dbg_value(i64 9, !2181, !DIExpression(), !2952)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2949
    #dbg_value(i8 115, !2188, !DIExpression(), !2949)
  store i8 115, ptr %stackalloc.i.i1, align 1, !dbg !2949
  %14 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2950
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2951
    #dbg_value(i64 10, !2181, !DIExpression(), !2952)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2949
    #dbg_value(i8 105, !2188, !DIExpression(), !2949)
  store i8 105, ptr %stackalloc.i.i1, align 1, !dbg !2949
  %15 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2950
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2951
    #dbg_value(i64 11, !2181, !DIExpression(), !2952)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2949
    #dbg_value(i8 103, !2188, !DIExpression(), !2949)
  store i8 103, ptr %stackalloc.i.i1, align 1, !dbg !2949
  %16 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2950
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2951
    #dbg_value(i64 12, !2181, !DIExpression(), !2952)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2949
    #dbg_value(i8 110, !2188, !DIExpression(), !2949)
  store i8 110, ptr %stackalloc.i.i1, align 1, !dbg !2949
  %17 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2950
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2951
    #dbg_value(i64 13, !2181, !DIExpression(), !2952)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2949
    #dbg_value(i8 97, !2188, !DIExpression(), !2949)
  store i8 97, ptr %stackalloc.i.i1, align 1, !dbg !2949
  %18 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2950
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2951
    #dbg_value(i64 14, !2181, !DIExpression(), !2952)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2949
    #dbg_value(i8 108, !2188, !DIExpression(), !2949)
  store i8 108, ptr %stackalloc.i.i1, align 1, !dbg !2949
  %19 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2950
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2951
    #dbg_value(i64 15, !2181, !DIExpression(), !2952)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2949
    #dbg_value(i8 32, !2188, !DIExpression(), !2949)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2949
  %20 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #15, !dbg !2950
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2951
    #dbg_value(i64 16, !2181, !DIExpression(), !2952)
    #dbg_value(i32 %sig, !2872, !DIExpression(), !2953)
  %21 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2954
  %22 = extractvalue { i32, i1 } %21, 1, !dbg !2954
  switch i32 %sig, label %switch.next6 [
    i32 7, label %switch.body
    i32 4, label %switch.body3
    i32 11, label %switch.body5
  ], !dbg !2933

switch.body:                                      ; preds = %if.done2
    #dbg_value(ptr @runtime.printLock, !1983, !DIExpression(), !2959)
    #dbg_value(ptr @runtime.printLock, !1989, !DIExpression(), !2962)
    #dbg_value(i32 0, !1994, !DIExpression(), !2964)
    #dbg_value(i32 1, !1995, !DIExpression(), !2965)
    #dbg_value(ptr @runtime.printLock, !2000, !DIExpression(), !2966)
    #dbg_value(i32 0, !2005, !DIExpression(), !2966)
    #dbg_value(i32 1, !2006, !DIExpression(), !2966)
  br i1 %22, label %runtime.printlock.exit, label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i", !dbg !2968

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i":  ; preds = %switch.body
    #dbg_value(ptr @runtime.printLock, !1983, !DIExpression(), !2969)
    #dbg_value(ptr @runtime.printLock, !1937, !DIExpression(), !2970)
    #dbg_value(i32 2, !1944, !DIExpression(), !2972)
    #dbg_value(ptr @runtime.printLock, !1948, !DIExpression(), !2973)
    #dbg_value(i32 2, !1955, !DIExpression(), !2973)
  %23 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2973
  %.not4.i.i = icmp eq i32 %23, 0, !dbg !2975
  br i1 %.not4.i.i, label %runtime.printlock.exit, label %"(*internal/futex.Futex).Wait.exit.i.i", !dbg !2968

"(*internal/futex.Futex).Wait.exit.i.i":          ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i", %"(*internal/futex.Futex).Wait.exit.i.i"
    #dbg_value(ptr @runtime.printLock, !1983, !DIExpression(), !2976)
    #dbg_value(ptr @runtime.printLock, !2018, !DIExpression(), !2977)
    #dbg_value(i32 2, !2023, !DIExpression(), !2979)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #15, !dbg !2980
    #dbg_value(ptr @runtime.printLock, !1937, !DIExpression(), !2970)
    #dbg_value(i32 2, !1944, !DIExpression(), !2972)
    #dbg_value(ptr @runtime.printLock, !1948, !DIExpression(), !2973)
    #dbg_value(i32 2, !1955, !DIExpression(), !2973)
  %24 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2973
  %.not.i.i = icmp eq i32 %24, 0, !dbg !2975
  br i1 %.not.i.i, label %runtime.printlock.exit, label %"(*internal/futex.Futex).Wait.exit.i.i", !dbg !2968

runtime.printlock.exit:                           ; preds = %"(*internal/futex.Futex).Wait.exit.i.i", %switch.body, %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i"
    #dbg_value(ptr poison, !2180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2981)
    #dbg_value(i64 6, !2180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2981)
    #dbg_value(i64 0, !2181, !DIExpression(), !2982)
    #dbg_value(%runtime._string poison, !2180, !DIExpression(), !2983)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2984
    #dbg_value(i8 83, !2188, !DIExpression(), !2984)
  store i8 83, ptr %stackalloc.i.i5, align 1, !dbg !2984
  %25 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #15, !dbg !2985
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2986
    #dbg_value(i64 1, !2181, !DIExpression(), !2987)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2984
    #dbg_value(i8 73, !2188, !DIExpression(), !2984)
  store i8 73, ptr %stackalloc.i.i5, align 1, !dbg !2984
  %26 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #15, !dbg !2985
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2986
    #dbg_value(i64 2, !2181, !DIExpression(), !2987)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2984
    #dbg_value(i8 71, !2188, !DIExpression(), !2984)
  store i8 71, ptr %stackalloc.i.i5, align 1, !dbg !2984
  %27 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #15, !dbg !2985
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2986
    #dbg_value(i64 3, !2181, !DIExpression(), !2987)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2984
    #dbg_value(i8 66, !2188, !DIExpression(), !2984)
  store i8 66, ptr %stackalloc.i.i5, align 1, !dbg !2984
  %28 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #15, !dbg !2985
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2986
    #dbg_value(i64 4, !2181, !DIExpression(), !2987)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2984
    #dbg_value(i8 85, !2188, !DIExpression(), !2984)
  store i8 85, ptr %stackalloc.i.i5, align 1, !dbg !2984
  %29 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #15, !dbg !2985
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2986
    #dbg_value(i64 5, !2181, !DIExpression(), !2987)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2984
    #dbg_value(i8 83, !2188, !DIExpression(), !2984)
  store i8 83, ptr %stackalloc.i.i5, align 1, !dbg !2984
  %30 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #15, !dbg !2985
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2986
    #dbg_value(i64 6, !2181, !DIExpression(), !2987)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i9), !dbg !2988
    #dbg_value(i8 10, !2188, !DIExpression(), !2988)
  store i8 10, ptr %stackalloc.i.i9, align 1, !dbg !2988
  %31 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i9, i64 1) #15, !dbg !2989
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i9), !dbg !2990
    #dbg_value(ptr @runtime.printLock, !1933, !DIExpression(), !2991)
    #dbg_value(ptr @runtime.printLock, !1937, !DIExpression(), !2995)
    #dbg_value(i32 0, !1944, !DIExpression(), !2997)
    #dbg_value(ptr @runtime.printLock, !1948, !DIExpression(), !2998)
    #dbg_value(i32 0, !1955, !DIExpression(), !2998)
  %32 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2998
    #dbg_value(i32 %32, !1934, !DIExpression(), !3000)
  switch i32 %32, label %switch.done [
    i32 0, label %if.then.i.i
    i32 2, label %switch.done.sink.split
  ], !dbg !3001

if.then.i.i:                                      ; preds = %runtime.printlock.exit
  tail call fastcc void @runtime._panic(), !dbg !3002
  unreachable, !dbg !3002

switch.done.sink.split:                           ; preds = %runtime.printlock.exit, %runtime.printint32.exit, %runtime.printlock.exit27, %runtime.printlock.exit14
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #15, !dbg !3003
  br label %switch.done, !dbg !3006

switch.done:                                      ; preds = %switch.done.sink.split, %runtime.printint32.exit, %runtime.printlock.exit27, %runtime.printlock.exit14, %runtime.printlock.exit
    #dbg_value(i32 %sig, !2872, !DIExpression(), !3007)
  tail call void @raise(i32 %sig) #15, !dbg !3006
  ret void, !dbg !3008

switch.body3:                                     ; preds = %if.done2
    #dbg_value(ptr @runtime.printLock, !1983, !DIExpression(), !3009)
    #dbg_value(ptr @runtime.printLock, !1989, !DIExpression(), !3012)
    #dbg_value(i32 0, !1994, !DIExpression(), !3014)
    #dbg_value(i32 1, !1995, !DIExpression(), !3015)
    #dbg_value(ptr @runtime.printLock, !2000, !DIExpression(), !3016)
    #dbg_value(i32 0, !2005, !DIExpression(), !3016)
    #dbg_value(i32 1, !2006, !DIExpression(), !3016)
  br i1 %22, label %runtime.printlock.exit14, label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i10", !dbg !3018

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i10": ; preds = %switch.body3
    #dbg_value(ptr @runtime.printLock, !1983, !DIExpression(), !3019)
    #dbg_value(ptr @runtime.printLock, !1937, !DIExpression(), !3020)
    #dbg_value(i32 2, !1944, !DIExpression(), !3022)
    #dbg_value(ptr @runtime.printLock, !1948, !DIExpression(), !3023)
    #dbg_value(i32 2, !1955, !DIExpression(), !3023)
  %33 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3023
  %.not4.i.i11 = icmp eq i32 %33, 0, !dbg !3025
  br i1 %.not4.i.i11, label %runtime.printlock.exit14, label %"(*internal/futex.Futex).Wait.exit.i.i12", !dbg !3018

"(*internal/futex.Futex).Wait.exit.i.i12":        ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i10", %"(*internal/futex.Futex).Wait.exit.i.i12"
    #dbg_value(ptr @runtime.printLock, !1983, !DIExpression(), !3026)
    #dbg_value(ptr @runtime.printLock, !2018, !DIExpression(), !3027)
    #dbg_value(i32 2, !2023, !DIExpression(), !3029)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #15, !dbg !3030
    #dbg_value(ptr @runtime.printLock, !1937, !DIExpression(), !3020)
    #dbg_value(i32 2, !1944, !DIExpression(), !3022)
    #dbg_value(ptr @runtime.printLock, !1948, !DIExpression(), !3023)
    #dbg_value(i32 2, !1955, !DIExpression(), !3023)
  %34 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3023
  %.not.i.i13 = icmp eq i32 %34, 0, !dbg !3025
  br i1 %.not.i.i13, label %runtime.printlock.exit14, label %"(*internal/futex.Futex).Wait.exit.i.i12", !dbg !3018

runtime.printlock.exit14:                         ; preds = %"(*internal/futex.Futex).Wait.exit.i.i12", %switch.body3, %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i10"
    #dbg_value(ptr poison, !2180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3031)
    #dbg_value(i64 6, !2180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3031)
    #dbg_value(i64 0, !2181, !DIExpression(), !3032)
    #dbg_value(%runtime._string poison, !2180, !DIExpression(), !3033)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3034
    #dbg_value(i8 83, !2188, !DIExpression(), !3034)
  store i8 83, ptr %stackalloc.i.i15, align 1, !dbg !3034
  %35 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #15, !dbg !3035
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3036
    #dbg_value(i64 1, !2181, !DIExpression(), !3037)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3034
    #dbg_value(i8 73, !2188, !DIExpression(), !3034)
  store i8 73, ptr %stackalloc.i.i15, align 1, !dbg !3034
  %36 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #15, !dbg !3035
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3036
    #dbg_value(i64 2, !2181, !DIExpression(), !3037)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3034
    #dbg_value(i8 71, !2188, !DIExpression(), !3034)
  store i8 71, ptr %stackalloc.i.i15, align 1, !dbg !3034
  %37 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #15, !dbg !3035
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3036
    #dbg_value(i64 3, !2181, !DIExpression(), !3037)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3034
    #dbg_value(i8 73, !2188, !DIExpression(), !3034)
  store i8 73, ptr %stackalloc.i.i15, align 1, !dbg !3034
  %38 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #15, !dbg !3035
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3036
    #dbg_value(i64 4, !2181, !DIExpression(), !3037)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3034
    #dbg_value(i8 76, !2188, !DIExpression(), !3034)
  store i8 76, ptr %stackalloc.i.i15, align 1, !dbg !3034
  %39 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #15, !dbg !3035
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3036
    #dbg_value(i64 5, !2181, !DIExpression(), !3037)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3034
  store i8 76, ptr %stackalloc.i.i15, align 1, !dbg !3034
  %40 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #15, !dbg !3035
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3036
    #dbg_value(i64 6, !2181, !DIExpression(), !3037)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i19), !dbg !3038
    #dbg_value(i8 10, !2188, !DIExpression(), !3038)
  store i8 10, ptr %stackalloc.i.i19, align 1, !dbg !3038
  %41 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i19, i64 1) #15, !dbg !3039
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i19), !dbg !3040
    #dbg_value(ptr @runtime.printLock, !1933, !DIExpression(), !3041)
    #dbg_value(ptr @runtime.printLock, !1937, !DIExpression(), !3044)
    #dbg_value(i32 0, !1944, !DIExpression(), !3046)
    #dbg_value(ptr @runtime.printLock, !1948, !DIExpression(), !3047)
    #dbg_value(i32 0, !1955, !DIExpression(), !3047)
  %42 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3047
    #dbg_value(i32 %42, !1934, !DIExpression(), !3049)
  switch i32 %42, label %switch.done [
    i32 0, label %if.then.i.i21
    i32 2, label %switch.done.sink.split
  ], !dbg !3050

if.then.i.i21:                                    ; preds = %runtime.printlock.exit14
  tail call fastcc void @runtime._panic(), !dbg !3051
  unreachable, !dbg !3051

switch.body5:                                     ; preds = %if.done2
    #dbg_value(ptr @runtime.printLock, !1983, !DIExpression(), !3052)
    #dbg_value(ptr @runtime.printLock, !1989, !DIExpression(), !3055)
    #dbg_value(i32 0, !1994, !DIExpression(), !3057)
    #dbg_value(i32 1, !1995, !DIExpression(), !3058)
    #dbg_value(ptr @runtime.printLock, !2000, !DIExpression(), !3059)
    #dbg_value(i32 0, !2005, !DIExpression(), !3059)
    #dbg_value(i32 1, !2006, !DIExpression(), !3059)
  br i1 %22, label %runtime.printlock.exit27, label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i23", !dbg !3061

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i23": ; preds = %switch.body5
    #dbg_value(ptr @runtime.printLock, !1983, !DIExpression(), !3062)
    #dbg_value(ptr @runtime.printLock, !1937, !DIExpression(), !3063)
    #dbg_value(i32 2, !1944, !DIExpression(), !3065)
    #dbg_value(ptr @runtime.printLock, !1948, !DIExpression(), !3066)
    #dbg_value(i32 2, !1955, !DIExpression(), !3066)
  %43 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3066
  %.not4.i.i24 = icmp eq i32 %43, 0, !dbg !3068
  br i1 %.not4.i.i24, label %runtime.printlock.exit27, label %"(*internal/futex.Futex).Wait.exit.i.i25", !dbg !3061

"(*internal/futex.Futex).Wait.exit.i.i25":        ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i23", %"(*internal/futex.Futex).Wait.exit.i.i25"
    #dbg_value(ptr @runtime.printLock, !1983, !DIExpression(), !3069)
    #dbg_value(ptr @runtime.printLock, !2018, !DIExpression(), !3070)
    #dbg_value(i32 2, !2023, !DIExpression(), !3072)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #15, !dbg !3073
    #dbg_value(ptr @runtime.printLock, !1937, !DIExpression(), !3063)
    #dbg_value(i32 2, !1944, !DIExpression(), !3065)
    #dbg_value(ptr @runtime.printLock, !1948, !DIExpression(), !3066)
    #dbg_value(i32 2, !1955, !DIExpression(), !3066)
  %44 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3066
  %.not.i.i26 = icmp eq i32 %44, 0, !dbg !3068
  br i1 %.not.i.i26, label %runtime.printlock.exit27, label %"(*internal/futex.Futex).Wait.exit.i.i25", !dbg !3061

runtime.printlock.exit27:                         ; preds = %"(*internal/futex.Futex).Wait.exit.i.i25", %switch.body5, %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i23"
    #dbg_value(ptr poison, !2180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3074)
    #dbg_value(i64 7, !2180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3074)
    #dbg_value(i64 0, !2181, !DIExpression(), !3075)
    #dbg_value(%runtime._string poison, !2180, !DIExpression(), !3076)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3077
    #dbg_value(i8 83, !2188, !DIExpression(), !3077)
  store i8 83, ptr %stackalloc.i.i28, align 1, !dbg !3077
  %45 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3078
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3079
    #dbg_value(i64 1, !2181, !DIExpression(), !3080)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3077
    #dbg_value(i8 73, !2188, !DIExpression(), !3077)
  store i8 73, ptr %stackalloc.i.i28, align 1, !dbg !3077
  %46 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3078
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3079
    #dbg_value(i64 2, !2181, !DIExpression(), !3080)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3077
    #dbg_value(i8 71, !2188, !DIExpression(), !3077)
  store i8 71, ptr %stackalloc.i.i28, align 1, !dbg !3077
  %47 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3078
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3079
    #dbg_value(i64 3, !2181, !DIExpression(), !3080)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3077
    #dbg_value(i8 83, !2188, !DIExpression(), !3077)
  store i8 83, ptr %stackalloc.i.i28, align 1, !dbg !3077
  %48 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3078
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3079
    #dbg_value(i64 4, !2181, !DIExpression(), !3080)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3077
    #dbg_value(i8 69, !2188, !DIExpression(), !3077)
  store i8 69, ptr %stackalloc.i.i28, align 1, !dbg !3077
  %49 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3078
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3079
    #dbg_value(i64 5, !2181, !DIExpression(), !3080)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3077
    #dbg_value(i8 71, !2188, !DIExpression(), !3077)
  store i8 71, ptr %stackalloc.i.i28, align 1, !dbg !3077
  %50 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3078
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3079
    #dbg_value(i64 6, !2181, !DIExpression(), !3080)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3077
    #dbg_value(i8 86, !2188, !DIExpression(), !3077)
  store i8 86, ptr %stackalloc.i.i28, align 1, !dbg !3077
  %51 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #15, !dbg !3078
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3079
    #dbg_value(i64 7, !2181, !DIExpression(), !3080)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i32), !dbg !3081
    #dbg_value(i8 10, !2188, !DIExpression(), !3081)
  store i8 10, ptr %stackalloc.i.i32, align 1, !dbg !3081
  %52 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i32, i64 1) #15, !dbg !3082
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i32), !dbg !3083
    #dbg_value(ptr @runtime.printLock, !1933, !DIExpression(), !3084)
    #dbg_value(ptr @runtime.printLock, !1937, !DIExpression(), !3087)
    #dbg_value(i32 0, !1944, !DIExpression(), !3089)
    #dbg_value(ptr @runtime.printLock, !1948, !DIExpression(), !3090)
    #dbg_value(i32 0, !1955, !DIExpression(), !3090)
  %53 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3090
    #dbg_value(i32 %53, !1934, !DIExpression(), !3092)
  switch i32 %53, label %switch.done [
    i32 0, label %if.then.i.i34
    i32 2, label %switch.done.sink.split
  ], !dbg !3093

if.then.i.i34:                                    ; preds = %runtime.printlock.exit27
  tail call fastcc void @runtime._panic(), !dbg !3094
  unreachable, !dbg !3094

switch.next6:                                     ; preds = %if.done2
    #dbg_value(i32 %sig, !2872, !DIExpression(), !3095)
    #dbg_value(ptr @runtime.printLock, !1983, !DIExpression(), !3096)
    #dbg_value(ptr @runtime.printLock, !1989, !DIExpression(), !3099)
    #dbg_value(i32 0, !1994, !DIExpression(), !3101)
    #dbg_value(i32 1, !1995, !DIExpression(), !3102)
    #dbg_value(ptr @runtime.printLock, !2000, !DIExpression(), !3103)
    #dbg_value(i32 0, !2005, !DIExpression(), !3103)
    #dbg_value(i32 1, !2006, !DIExpression(), !3103)
  br i1 %22, label %runtime.printlock.exit40, label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i36", !dbg !3105

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i36": ; preds = %switch.next6
    #dbg_value(ptr @runtime.printLock, !1983, !DIExpression(), !3106)
    #dbg_value(ptr @runtime.printLock, !1937, !DIExpression(), !3107)
    #dbg_value(i32 2, !1944, !DIExpression(), !3109)
    #dbg_value(ptr @runtime.printLock, !1948, !DIExpression(), !3110)
    #dbg_value(i32 2, !1955, !DIExpression(), !3110)
  %54 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3110
  %.not4.i.i37 = icmp eq i32 %54, 0, !dbg !3112
  br i1 %.not4.i.i37, label %runtime.printlock.exit40, label %"(*internal/futex.Futex).Wait.exit.i.i38", !dbg !3105

"(*internal/futex.Futex).Wait.exit.i.i38":        ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i36", %"(*internal/futex.Futex).Wait.exit.i.i38"
    #dbg_value(ptr @runtime.printLock, !1983, !DIExpression(), !3113)
    #dbg_value(ptr @runtime.printLock, !2018, !DIExpression(), !3114)
    #dbg_value(i32 2, !2023, !DIExpression(), !3116)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #15, !dbg !3117
    #dbg_value(ptr @runtime.printLock, !1937, !DIExpression(), !3107)
    #dbg_value(i32 2, !1944, !DIExpression(), !3109)
    #dbg_value(ptr @runtime.printLock, !1948, !DIExpression(), !3110)
    #dbg_value(i32 2, !1955, !DIExpression(), !3110)
  %55 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3110
  %.not.i.i39 = icmp eq i32 %55, 0, !dbg !3112
  br i1 %.not.i.i39, label %runtime.printlock.exit40, label %"(*internal/futex.Futex).Wait.exit.i.i38", !dbg !3105

runtime.printlock.exit40:                         ; preds = %"(*internal/futex.Futex).Wait.exit.i.i38", %switch.next6, %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i36"
    #dbg_value(i32 %sig, !2900, !DIExpression(), !3118)
  %56 = icmp slt i32 %sig, 0, !dbg !3119
  br i1 %56, label %if.then.i, label %if.done.i, !dbg !3120

if.then.i:                                        ; preds = %runtime.printlock.exit40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i41), !dbg !3121
    #dbg_value(i8 45, !2188, !DIExpression(), !3121)
  store i8 45, ptr %stackalloc.i.i41, align 1, !dbg !3121
  %57 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i41, i64 1) #15, !dbg !3122
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i41), !dbg !3123
    #dbg_value(i32 %sig, !2900, !DIExpression(), !3124)
  %58 = sub i32 0, %sig, !dbg !3125
    #dbg_value(i32 %58, !2900, !DIExpression(), !3126)
  br label %if.done.i, !dbg !3120

if.done.i:                                        ; preds = %if.then.i, %runtime.printlock.exit40
  %59 = phi i32 [ %sig, %runtime.printlock.exit40 ], [ %58, %if.then.i ], !dbg !3127
    #dbg_value(i32 %59, !2900, !DIExpression(), !3128)
    #dbg_value(i32 %59, !2896, !DIExpression(), !3129)
  %60 = zext i32 %59 to i64, !dbg !3130
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %digits.i.i.i), !dbg !2903
    #dbg_value(i64 19, !2887, !DIExpression(), !3131)
    #dbg_value(i64 19, !2888, !DIExpression(), !3132)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %digits.i.i.i, i8 0, i64 20, i1 false), !dbg !2903
  br label %for.body.i.i.i, !dbg !3133

for.loop1.preheader.i.i.i:                        ; preds = %for.body.i.i.i
    #dbg_value(i64 %spec.select.i.i.i, !2890, !DIExpression(), !3134)
  %61 = icmp slt i64 %spec.select.i.i.i, 20, !dbg !3135
  br i1 %61, label %for.body2.i.i.i, label %runtime.printint32.exit, !dbg !3133

for.body.i.i.i:                                   ; preds = %for.body.i.i.i, %if.done.i
  %62 = phi i64 [ 19, %if.done.i ], [ %70, %for.body.i.i.i ]
  %63 = phi i64 [ 19, %if.done.i ], [ %spec.select.i.i.i, %for.body.i.i.i ]
  %64 = phi i64 [ %60, %if.done.i ], [ %69, %for.body.i.i.i ]
    #dbg_value(i64 %62, !2888, !DIExpression(), !3136)
    #dbg_value(i64 %64, !2886, !DIExpression(), !3137)
  %65 = urem i64 %64, 10, !dbg !3138
  %66 = trunc nuw nsw i64 %65 to i8, !dbg !3139
  %67 = or disjoint i8 %66, 48, !dbg !3139
    #dbg_value(i8 %67, !2889, !DIExpression(), !3140)
  %68 = getelementptr inbounds nuw [20 x i8], ptr %digits.i.i.i, i64 0, i64 %62, !dbg !3141
  store i8 %67, ptr %68, align 1, !dbg !3141
  %.not.i.i.i = icmp eq i64 %65, 0, !dbg !3142
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 %63, i64 %62, !dbg !3133
  %69 = udiv i64 %64, 10, !dbg !3143
    #dbg_value(i64 %69, !2886, !DIExpression(), !3143)
  %70 = add nsw i64 %62, -1, !dbg !3144
    #dbg_value(i64 %70, !2888, !DIExpression(), !3136)
  %.not23.i.i.i = icmp eq i64 %62, 0, !dbg !3145
  br i1 %.not23.i.i.i, label %for.loop1.preheader.i.i.i, label %for.body.i.i.i, !dbg !3133

for.body2.i.i.i:                                  ; preds = %for.loop1.preheader.i.i.i, %for.body2.i.i.i
  %71 = phi i64 [ %75, %for.body2.i.i.i ], [ %spec.select.i.i.i, %for.loop1.preheader.i.i.i ]
    #dbg_value(i64 %71, !2890, !DIExpression(), !3146)
  %72 = getelementptr inbounds nuw [20 x i8], ptr %digits.i.i.i, i64 0, i64 %71, !dbg !3147
  %73 = load i8, ptr %72, align 1, !dbg !3147
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i.i.i), !dbg !3148
    #dbg_value(i8 %73, !2188, !DIExpression(), !3148)
  store i8 %73, ptr %stackalloc.i.i.i.i, align 1, !dbg !3148
  %74 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i.i.i, i64 1) #15, !dbg !3149
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i.i.i), !dbg !3150
  %75 = add i64 %71, 1, !dbg !3151
    #dbg_value(i64 %75, !2890, !DIExpression(), !3134)
  %exitcond.not.i.i.i = icmp eq i64 %75, 20, !dbg !3135
  br i1 %exitcond.not.i.i.i, label %runtime.printint32.exit, label %for.body2.i.i.i, !dbg !3133

runtime.printint32.exit:                          ; preds = %for.body2.i.i.i, %for.loop1.preheader.i.i.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %digits.i.i.i), !dbg !3152
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i42), !dbg !3153
    #dbg_value(i8 10, !2188, !DIExpression(), !3153)
  store i8 10, ptr %stackalloc.i.i42, align 1, !dbg !3153
  %76 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i42, i64 1) #15, !dbg !3154
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i42), !dbg !3155
    #dbg_value(ptr @runtime.printLock, !1933, !DIExpression(), !3156)
    #dbg_value(ptr @runtime.printLock, !1937, !DIExpression(), !3159)
    #dbg_value(i32 0, !1944, !DIExpression(), !3161)
    #dbg_value(ptr @runtime.printLock, !1948, !DIExpression(), !3162)
    #dbg_value(i32 0, !1955, !DIExpression(), !3162)
  %77 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3162
    #dbg_value(i32 %77, !1934, !DIExpression(), !3164)
  switch i32 %77, label %switch.done [
    i32 0, label %if.then.i.i44
    i32 2, label %switch.done.sink.split
  ], !dbg !3165

if.then.i.i44:                                    ; preds = %runtime.printint32.exit
  tail call fastcc void @runtime._panic(), !dbg !3166
  unreachable, !dbg !3166

for.body.i47:                                     ; preds = %entry, %for.body.i47
  %78 = phi i64 [ %82, %for.body.i47 ], [ 0, %entry ]
    #dbg_value(i64 %78, !2181, !DIExpression(), !3167)
    #dbg_value(%runtime._string poison, !2180, !DIExpression(), !3168)
  %79 = getelementptr inbounds nuw i8, ptr @"runtime$string.55", i64 %78, !dbg !3169
  %80 = load i8, ptr %79, align 1, !dbg !3169
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i46), !dbg !3170
    #dbg_value(i8 %80, !2188, !DIExpression(), !3170)
  store i8 %80, ptr %stackalloc.i.i46, align 1, !dbg !3170
  %81 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i46, i64 1) #15, !dbg !3171
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i46), !dbg !3172
  %82 = add nuw nsw i64 %78, 1, !dbg !3173
    #dbg_value(i64 %82, !2181, !DIExpression(), !3174)
  %exitcond.not.i48 = icmp eq i64 %82, 20, !dbg !3175
  br i1 %exitcond.not.i48, label %if.done2, label %for.body.i47, !dbg !3176
}

declare void @raise(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_signal_handler(i32 %s) local_unnamed_addr #2 !dbg !3177 {
entry:
    #dbg_value(i32 %s, !3179, !DIExpression(), !3183)
  %shift.overflow = icmp ugt i32 %s, 31
  %0 = shl nuw i32 1, %s
  %shift.result = select i1 %shift.overflow, i32 0, i32 %0
  br label %for.body, !dbg !3184

for.body:                                         ; preds = %for.body, %entry
    #dbg_value(i32 %s, !3179, !DIExpression(), !3185)
    #dbg_value(i32 %shift.result, !3180, !DIExpression(), !3186)
    #dbg_value(ptr @runtime.receivedSignals, !2116, !DIExpression(), !3187)
    #dbg_value(ptr @runtime.receivedSignals, !2116, !DIExpression(), !3189)
    #dbg_value(ptr @runtime.receivedSignals, !2123, !DIExpression(), !3190)
  %1 = load atomic i32, ptr @runtime.receivedSignals seq_cst, align 4, !dbg !3190
    #dbg_value(i32 %1, !3181, !DIExpression(), !3192)
    #dbg_value(i32 %1, !3181, !DIExpression(), !3193)
    #dbg_value(i32 %1, !3181, !DIExpression(), !3194)
    #dbg_value(i32 %shift.result, !3180, !DIExpression(), !3195)
  %2 = or i32 %1, %shift.result, !dbg !3196
    #dbg_value(ptr @runtime.receivedSignals, !1989, !DIExpression(), !3197)
    #dbg_value(i32 %1, !1994, !DIExpression(), !3197)
    #dbg_value(i32 %2, !1995, !DIExpression(), !3197)
    #dbg_value(ptr @runtime.receivedSignals, !1989, !DIExpression(), !3199)
    #dbg_value(i32 %1, !1994, !DIExpression(), !3200)
    #dbg_value(i32 %2, !1995, !DIExpression(), !3201)
    #dbg_value(ptr @runtime.receivedSignals, !2000, !DIExpression(), !3202)
    #dbg_value(i32 %1, !2005, !DIExpression(), !3202)
    #dbg_value(i32 %2, !2006, !DIExpression(), !3202)
  %3 = cmpxchg ptr @runtime.receivedSignals, i32 %1, i32 %2 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3202
  %4 = extractvalue { i32, i1 } %3, 1, !dbg !3202
    #dbg_value(i1 %4, !3182, !DIExpression(), !3204)
    #dbg_value(i1 %4, !3182, !DIExpression(), !3205)
  br i1 %4, label %if.then, label %for.body, !dbg !3184

if.then:                                          ; preds = %for.body
    #dbg_value(ptr @runtime.signalFutex, !1937, !DIExpression(), !3206)
    #dbg_value(i32 1, !1944, !DIExpression(), !3206)
    #dbg_value(ptr @runtime.signalFutex, !1937, !DIExpression(), !3208)
    #dbg_value(i32 1, !1944, !DIExpression(), !3209)
    #dbg_value(ptr @runtime.signalFutex, !1948, !DIExpression(), !3210)
    #dbg_value(i32 1, !1955, !DIExpression(), !3210)
  %5 = atomicrmw xchg ptr @runtime.signalFutex, i32 1 syncscope("singlethread") seq_cst, align 4, !dbg !3210
  %6 = icmp eq i32 %5, 0, !dbg !3212
  br i1 %6, label %if.then1, label %if.done, !dbg !3184

if.then1:                                         ; preds = %if.then
    #dbg_value(ptr @runtime.signalFutex, !2110, !DIExpression(), !3213)
    #dbg_value(ptr @runtime.signalFutex, !2110, !DIExpression(), !3215)
  tail call void @tinygo_futex_wake_all(ptr nonnull @runtime.signalFutex) #15, !dbg !3216
  br label %if.done, !dbg !3184

if.done:                                          ; preds = %if.then1, %if.then
  ret void, !dbg !3217
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @"slices.pdqsortOrdered[int]"(ptr %data.data, i64 %data.len, i64 %a, i64 %b, i64 range(i64 0, 65) %limit) unnamed_addr #5 !dbg !3218 {
entry:
  %stackalloc.i = alloca [8 x i8], align 8, !dbg !3243
    #dbg_value(ptr %data.data, !3227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3257)
    #dbg_value(i64 %data.len, !3227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3257)
    #dbg_value(i64 poison, !3227, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3257)
    #dbg_value(i64 %a, !3228, !DIExpression(), !3257)
    #dbg_value(i64 %b, !3229, !DIExpression(), !3257)
    #dbg_value(i64 %limit, !3230, !DIExpression(), !3257)
    #dbg_value(i1 true, !3231, !DIExpression(), !3258)
    #dbg_value(i1 true, !3232, !DIExpression(), !3259)
  %0 = sub i64 %b, %a, !dbg !3260
  %1 = icmp slt i64 %0, 13, !dbg !3261
  br i1 %1, label %if.then, label %if.done.lr.ph.lr.ph, !dbg !3262

if.done.lr.ph.lr.ph:                              ; preds = %entry
  %invariant.gep.i = getelementptr i8, ptr %data.data, i64 -16
  %2 = add i64 %data.len, -1
  br label %if.done.lr.ph, !dbg !3262

if.done.lr.ph:                                    ; preds = %if.done.lr.ph.lr.ph, %for.body.outer.backedge
  %3 = phi i64 [ %0, %if.done.lr.ph.lr.ph ], [ %130, %for.body.outer.backedge ]
  %.ph91328 = phi i1 [ true, %if.done.lr.ph.lr.ph ], [ %.ph91.be, %for.body.outer.backedge ]
  %.ph90327 = phi i1 [ true, %if.done.lr.ph.lr.ph ], [ %.ph90.be, %for.body.outer.backedge ]
  %.ph89326 = phi i64 [ %limit, %if.done.lr.ph.lr.ph ], [ %37, %for.body.outer.backedge ]
  %.ph88325 = phi i64 [ %b, %if.done.lr.ph.lr.ph ], [ %24, %for.body.outer.backedge ]
  %.ph324 = phi i64 [ %a, %if.done.lr.ph.lr.ph ], [ %.ph.be, %for.body.outer.backedge ]
  %invariant.op329 = add i64 %.ph324, -1, !dbg !3262
  %invariant.op317330 = add i64 %.ph324, 1, !dbg !3262
    #dbg_value(i64 %.ph88325, !3229, !DIExpression(), !3263)
    #dbg_value(i64 %.ph324, !3228, !DIExpression(), !3264)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.ph324, i64 %data.len)
  %4 = icmp sgt i64 %.ph324, 0
  %.not = icmp ult i64 %invariant.op329, %data.len
  %5 = getelementptr inbounds nuw i64, ptr %data.data, i64 %invariant.op329
  %.not11.i59 = icmp ult i64 %.ph324, %data.len
  %6 = getelementptr inbounds i64, ptr %data.data, i64 %.ph324
  br label %if.done, !dbg !3262

common.ret:                                       ; preds = %"slices.partialInsertionSortOrdered[int].exit", %for.body.i45, %lookup.next7.i30, %for.done.i, %if.then
  ret void, !dbg !3262

if.then:                                          ; preds = %for.body.outer.backedge, %if.else, %entry
  %.ph.lcssa316 = phi i64 [ %a, %entry ], [ %.ph324, %if.else ], [ %.ph.be, %for.body.outer.backedge ]
  %.lcssa218 = phi i64 [ %b, %entry ], [ %.lcssa62.sink.i, %if.else ], [ %24, %for.body.outer.backedge ], !dbg !3265
    #dbg_value({ ptr, i64, i64 } poison, !3227, !DIExpression(), !3266)
    #dbg_value(i64 %.ph.lcssa316, !3228, !DIExpression(), !3267)
    #dbg_value(i64 %.lcssa218, !3229, !DIExpression(), !3268)
    #dbg_value(ptr %data.data, !3269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3276)
    #dbg_value(i64 %data.len, !3269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3276)
    #dbg_value(i64 poison, !3269, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3276)
    #dbg_value(i64 %.lcssa218, !3273, !DIExpression(), !3276)
    #dbg_value(i64 %.ph.lcssa316, !3272, !DIExpression(), !3278)
    #dbg_value(i64 %.ph.lcssa316, !3274, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3279)
  %7 = add i64 %.ph.lcssa316, 1, !dbg !3280
  %8 = icmp slt i64 %7, %.lcssa218, !dbg !3281
  br i1 %8, label %for.loop1.preheader.i, label %common.ret, !dbg !3282

for.loop1.preheader.i:                            ; preds = %if.then, %for.done.i
  %9 = phi i64 [ %19, %for.done.i ], [ %7, %if.then ]
    #dbg_value(i64 %9, !3275, !DIExpression(), !3283)
    #dbg_value(i64 %.ph.lcssa316, !3272, !DIExpression(), !3284)
  %10 = icmp sgt i64 %9, %.ph.lcssa316, !dbg !3285
  br i1 %10, label %cond.true.i, label %for.done.i, !dbg !3282

cond.true.i:                                      ; preds = %for.loop1.preheader.i, %lookup.next15.i
  %11 = phi i64 [ %12, %lookup.next15.i ], [ %9, %for.loop1.preheader.i ]
    #dbg_value({ ptr, i64, i64 } poison, !3269, !DIExpression(), !3286)
    #dbg_value(i64 %11, !3275, !DIExpression(), !3287)
  %.not.i = icmp ult i64 %11, %data.len, !dbg !3288
  br i1 %.not.i, label %lookup.next.i, label %lookup.throw.i, !dbg !3288

lookup.next.i:                                    ; preds = %cond.true.i
    #dbg_value({ ptr, i64, i64 } poison, !3269, !DIExpression(), !3289)
    #dbg_value(i64 %11, !3275, !DIExpression(), !3290)
  %12 = add nsw i64 %11, -1, !dbg !3291
  %.not5.i = icmp ult i64 %12, %data.len, !dbg !3292
  br i1 %.not5.i, label %lookup.next7.i, label %lookup.throw6.i, !dbg !3292

lookup.next7.i:                                   ; preds = %lookup.next.i
  %13 = getelementptr inbounds i64, ptr %data.data, i64 %11, !dbg !3288
  %14 = load i64, ptr %13, align 8, !dbg !3288
  %15 = getelementptr inbounds i64, ptr %data.data, i64 %12, !dbg !3292
  %16 = load i64, ptr %15, align 8, !dbg !3292
    #dbg_value(i64 %14, !3293, !DIExpression(), !3300)
    #dbg_value(i64 %16, !3299, !DIExpression(), !3302)
  %17 = icmp slt i64 %14, %16, !dbg !3303
  br i1 %17, label %lookup.next15.i, label %for.done.i, !dbg !3282

lookup.next15.i:                                  ; preds = %lookup.next7.i
    #dbg_value({ ptr, i64, i64 } poison, !3269, !DIExpression(), !3304)
    #dbg_value(i64 poison, !3275, !DIExpression(), !3305)
  store i64 %16, ptr %13, align 8, !dbg !3306
  store i64 %14, ptr %15, align 8, !dbg !3307
    #dbg_value(i64 %12, !3275, !DIExpression(), !3283)
    #dbg_value(i64 %.ph.lcssa316, !3272, !DIExpression(), !3284)
  %18 = icmp sgt i64 %12, %.ph.lcssa316, !dbg !3285
  br i1 %18, label %cond.true.i, label %for.done.i, !dbg !3282

for.done.i:                                       ; preds = %lookup.next15.i, %lookup.next7.i, %for.loop1.preheader.i
    #dbg_value(i64 %9, !3274, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3308)
  %19 = add nsw i64 %9, 1, !dbg !3280
    #dbg_value(i64 %19, !3274, !DIExpression(), !3309)
    #dbg_value(i64 %.lcssa218, !3273, !DIExpression(), !3310)
  %exitcond.not.i = icmp eq i64 %19, %.lcssa218, !dbg !3281
  br i1 %exitcond.not.i, label %common.ret, label %for.loop1.preheader.i, !dbg !3282

lookup.throw.i:                                   ; preds = %cond.true.i
  tail call fastcc void @runtime.lookupPanic(), !dbg !3288
  unreachable, !dbg !3288

lookup.throw6.i:                                  ; preds = %lookup.next.i
  tail call fastcc void @runtime.lookupPanic(), !dbg !3292
  unreachable, !dbg !3292

if.done:                                          ; preds = %if.done.lr.ph, %if.else
  %20 = phi i64 [ %3, %if.done.lr.ph ], [ %165, %if.else ]
  %21 = phi i1 [ %.ph91328, %if.done.lr.ph ], [ %.not1669.i, %if.else ]
  %22 = phi i1 [ %.ph90327, %if.done.lr.ph ], [ %171, %if.else ]
  %23 = phi i64 [ %.ph89326, %if.done.lr.ph ], [ %37, %if.else ]
  %24 = phi i64 [ %.ph88325, %if.done.lr.ph ], [ %.lcssa62.sink.i, %if.else ]
    #dbg_value(i64 %24, !3229, !DIExpression(), !3263)
    #dbg_value(i64 %23, !3230, !DIExpression(), !3311)
  %25 = icmp eq i64 %23, 0, !dbg !3312
  br i1 %25, label %for.body.preheader.i, label %if.done2, !dbg !3262

for.body.preheader.i:                             ; preds = %if.done
    #dbg_value({ ptr, i64, i64 } poison, !3227, !DIExpression(), !3313)
    #dbg_value(i64 %.ph324, !3228, !DIExpression(), !3314)
    #dbg_value(i64 undef, !3229, !DIExpression(), !3315)
    #dbg_value(ptr %data.data, !3316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3326)
    #dbg_value(i64 %data.len, !3316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3326)
    #dbg_value(i64 poison, !3316, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3326)
    #dbg_value(i64 %.ph324, !3321, !DIExpression(), !3328)
    #dbg_value(i64 0, !3322, !DIExpression(), !3329)
    #dbg_value(i64 undef, !3320, !DIExpression(), !3330)
    #dbg_value(i64 %.ph324, !3319, !DIExpression(), !3331)
    #dbg_value(i64 %20, !3323, !DIExpression(), !3332)
  %26 = add nsw i64 %20, -1, !dbg !3333
    #dbg_value(i64 %26, !3324, !DIExpression(DW_OP_constu, 2, DW_OP_div, DW_OP_stack_value), !3334)
  %27 = lshr i64 %26, 1, !dbg !3335
    #dbg_value(i64 %27, !3324, !DIExpression(), !3334)
  br label %for.body.i, !dbg !3336

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %28 = phi i64 [ %29, %for.body.i ], [ %27, %for.body.preheader.i ]
    #dbg_value({ ptr, i64, i64 } poison, !3316, !DIExpression(), !3337)
    #dbg_value(i64 %28, !3324, !DIExpression(), !3338)
    #dbg_value(i64 %20, !3323, !DIExpression(), !3339)
    #dbg_value(i64 %.ph324, !3321, !DIExpression(), !3340)
  tail call fastcc void @"slices.siftDownOrdered[int]"(ptr %data.data, i64 %data.len, i64 %28, i64 %20, i64 %.ph324), !dbg !3341
  %29 = add nsw i64 %28, -1, !dbg !3342
    #dbg_value(i64 %29, !3324, !DIExpression(), !3343)
  %.not11.i = icmp eq i64 %28, 0, !dbg !3344
  br i1 %.not11.i, label %for.body2.i, label %for.body.i, !dbg !3336

for.body2.i:                                      ; preds = %for.body.i, %lookup.next7.i30
  %30 = phi i64 [ %35, %lookup.next7.i30 ], [ %26, %for.body.i ]
    #dbg_value({ ptr, i64, i64 } poison, !3316, !DIExpression(), !3345)
    #dbg_value(i64 %.ph324, !3321, !DIExpression(), !3346)
    #dbg_value(i64 %30, !3325, !DIExpression(), !3347)
  %31 = add i64 %30, %.ph324, !dbg !3348
  %.not.i26 = icmp ult i64 %31, %data.len, !dbg !3349
  br i1 %.not.i26, label %lookup.next.i28, label %lookup.throw.i27, !dbg !3349

lookup.next.i28:                                  ; preds = %for.body2.i
    #dbg_value({ ptr, i64, i64 } poison, !3316, !DIExpression(), !3350)
    #dbg_value(i64 %.ph324, !3321, !DIExpression(), !3351)
  br i1 %.not11.i59, label %lookup.next7.i30, label %lookup.throw6.i29, !dbg !3352

lookup.next7.i30:                                 ; preds = %lookup.next.i28
  %32 = getelementptr inbounds i64, ptr %data.data, i64 %31, !dbg !3349
  %33 = load i64, ptr %32, align 8, !dbg !3349
  %34 = load i64, ptr %6, align 8, !dbg !3352
  store i64 %33, ptr %6, align 8, !dbg !3353
  store i64 %34, ptr %32, align 8, !dbg !3354
    #dbg_value({ ptr, i64, i64 } poison, !3316, !DIExpression(), !3355)
    #dbg_value(i64 0, !3322, !DIExpression(), !3356)
    #dbg_value(i64 %30, !3325, !DIExpression(), !3357)
    #dbg_value(i64 %.ph324, !3321, !DIExpression(), !3358)
  tail call fastcc void @"slices.siftDownOrdered[int]"(ptr %data.data, i64 %data.len, i64 0, i64 %30, i64 %.ph324), !dbg !3359
    #dbg_value(i64 %30, !3325, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3360)
  %35 = add nsw i64 %30, -1, !dbg !3361
    #dbg_value(i64 %35, !3325, !DIExpression(), !3362)
  %36 = icmp sgt i64 %30, 0, !dbg !3363
  br i1 %36, label %for.body2.i, label %common.ret, !dbg !3336

lookup.throw.i27:                                 ; preds = %for.body2.i
  tail call fastcc void @runtime.lookupPanic(), !dbg !3349
  unreachable, !dbg !3349

lookup.throw6.i29:                                ; preds = %lookup.next.i28
  tail call fastcc void @runtime.lookupPanic(), !dbg !3352
  unreachable, !dbg !3352

if.done2:                                         ; preds = %if.done
    #dbg_value(i1 %22, !3231, !DIExpression(), !3364)
  br i1 %22, label %if.done3, label %if.then.i71, !dbg !3262

if.done3:                                         ; preds = %"slices.breakPatternsOrdered[int].exit", %if.done2
  %37 = phi i64 [ %23, %if.done2 ], [ %194, %"slices.breakPatternsOrdered[int].exit" ], !dbg !3365
    #dbg_value({ ptr, i64, i64 } poison, !3227, !DIExpression(), !3366)
    #dbg_value(i64 %.ph324, !3228, !DIExpression(), !3367)
    #dbg_value(i64 %24, !3229, !DIExpression(), !3368)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stackalloc.i), !dbg !3243
    #dbg_value(ptr %data.data, !3248, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3369)
    #dbg_value(i64 %data.len, !3248, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3369)
    #dbg_value(i64 poison, !3248, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3369)
    #dbg_value(i64 %24, !3250, !DIExpression(), !3370)
    #dbg_value(i64 %.ph324, !3249, !DIExpression(), !3371)
    #dbg_value(i64 %20, !3251, !DIExpression(), !3372)
  %38 = lshr i64 %20, 2, !dbg !3373
  %39 = add i64 %38, %.ph324, !dbg !3374
    #dbg_value(i64 %39, !3252, !DIExpression(), !3375)
  %40 = shl nuw nsw i64 %38, 1, !dbg !3376
  %41 = add i64 %40, %.ph324, !dbg !3377
    #dbg_value(i64 %41, !3253, !DIExpression(), !3378)
  %42 = mul nuw nsw i64 %38, 3, !dbg !3379
  %43 = add i64 %42, %.ph324, !dbg !3380
    #dbg_value(i64 %43, !3254, !DIExpression(), !3381)
  store i64 0, ptr %stackalloc.i, align 8, !dbg !3382
  %44 = icmp samesign ugt i64 %20, 49, !dbg !3383
  br i1 %44, label %if.then1.i, label %if.done.i, !dbg !3384

if.then1.i:                                       ; preds = %if.done3
    #dbg_value({ ptr, i64, i64 } poison, !3248, !DIExpression(), !3385)
    #dbg_value(i64 %39, !3252, !DIExpression(), !3386)
    #dbg_value(ptr %data.data, !3387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3394)
    #dbg_value(i64 %data.len, !3387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3394)
    #dbg_value(i64 poison, !3387, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3394)
    #dbg_value(ptr %stackalloc.i, !3393, !DIExpression(), !3394)
    #dbg_value({ ptr, i64, i64 } poison, !3387, !DIExpression(), !3396)
    #dbg_value(i64 %39, !3392, !DIExpression(), !3397)
  %45 = add i64 %39, -1, !dbg !3398
  %46 = add i64 %39, 1, !dbg !3399
  %47 = call fastcc range(i64 0, -1) i64 @"slices.medianOrdered[int]"(ptr readonly %data.data, i64 %data.len, i64 %45, i64 %39, i64 %46, ptr nonnull dereferenceable_or_null(8) %stackalloc.i), !dbg !3400
    #dbg_value(i64 %47, !3252, !DIExpression(), !3401)
    #dbg_value(i64 %41, !3253, !DIExpression(), !3402)
    #dbg_value(ptr %data.data, !3387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3403)
    #dbg_value(i64 %data.len, !3387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3403)
    #dbg_value(i64 poison, !3387, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3403)
    #dbg_value(ptr %stackalloc.i, !3393, !DIExpression(), !3403)
    #dbg_value({ ptr, i64, i64 } poison, !3387, !DIExpression(), !3405)
    #dbg_value(i64 %41, !3392, !DIExpression(), !3406)
  %48 = add i64 %41, -1, !dbg !3407
  %49 = add i64 %41, 1, !dbg !3408
  %50 = call fastcc range(i64 0, -1) i64 @"slices.medianOrdered[int]"(ptr readonly %data.data, i64 %data.len, i64 %48, i64 %41, i64 %49, ptr nonnull dereferenceable_or_null(8) %stackalloc.i), !dbg !3409
    #dbg_value(i64 %50, !3253, !DIExpression(), !3410)
    #dbg_value(i64 %43, !3254, !DIExpression(), !3411)
    #dbg_value(ptr %data.data, !3387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3412)
    #dbg_value(i64 %data.len, !3387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3412)
    #dbg_value(i64 poison, !3387, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3412)
    #dbg_value(ptr %stackalloc.i, !3393, !DIExpression(), !3412)
    #dbg_value({ ptr, i64, i64 } poison, !3387, !DIExpression(), !3414)
    #dbg_value(i64 %43, !3392, !DIExpression(), !3415)
  %51 = add i64 %43, -1, !dbg !3416
  %52 = add i64 %43, 1, !dbg !3417
  %53 = call fastcc range(i64 0, -1) i64 @"slices.medianOrdered[int]"(ptr readonly %data.data, i64 %data.len, i64 %51, i64 %43, i64 %52, ptr nonnull dereferenceable_or_null(8) %stackalloc.i), !dbg !3418
    #dbg_value(i64 %53, !3254, !DIExpression(), !3419)
  br label %if.done.i, !dbg !3384

if.done.i:                                        ; preds = %if.then1.i, %if.done3
  %54 = phi i64 [ %39, %if.done3 ], [ %47, %if.then1.i ], !dbg !3375
  %55 = phi i64 [ %41, %if.done3 ], [ %50, %if.then1.i ], !dbg !3378
  %56 = phi i64 [ %43, %if.done3 ], [ %53, %if.then1.i ], !dbg !3381
    #dbg_value({ ptr, i64, i64 } poison, !3248, !DIExpression(), !3420)
    #dbg_value(i64 %54, !3252, !DIExpression(), !3421)
    #dbg_value(i64 %55, !3253, !DIExpression(), !3422)
    #dbg_value(i64 %56, !3254, !DIExpression(), !3423)
  %57 = call fastcc i64 @"slices.medianOrdered[int]"(ptr readonly %data.data, i64 %data.len, i64 %54, i64 %55, i64 %56, ptr nonnull %stackalloc.i), !dbg !3424
    #dbg_value(i64 %57, !3253, !DIExpression(), !3425)
  %58 = load i64, ptr %stackalloc.i, align 8, !dbg !3426
    #dbg_value(i64 %58, !3255, !DIExpression(), !3426)
  %switch.selectcmp.i = icmp eq i64 %58, 12, !dbg !3384
  %switch.selectcmp13.i = icmp eq i64 %58, 0, !dbg !3384
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stackalloc.i), !dbg !3384
    #dbg_value(i64 %57, !3234, !DIExpression(), !3427)
    #dbg_value(i64 poison, !3235, !DIExpression(), !3428)
  br i1 %switch.selectcmp.i, label %if.then4, label %if.done5, !dbg !3262

if.then4:                                         ; preds = %if.done.i
    #dbg_value({ ptr, i64, i64 } poison, !3227, !DIExpression(), !3429)
    #dbg_value(i64 %.ph324, !3228, !DIExpression(), !3430)
    #dbg_value(i64 %24, !3229, !DIExpression(), !3431)
    #dbg_value(ptr %data.data, !3432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3439)
    #dbg_value(i64 %data.len, !3432, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3439)
    #dbg_value(i64 poison, !3432, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3439)
    #dbg_value(i64 %.ph324, !3435, !DIExpression(), !3441)
    #dbg_value(i64 %.ph324, !3437, !DIExpression(), !3442)
    #dbg_value(i64 %24, !3436, !DIExpression(), !3443)
    #dbg_value(i64 %24, !3438, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3444)
  %59 = add i64 %24, -1, !dbg !3445
  %60 = icmp slt i64 %.ph324, %59, !dbg !3446
  br i1 %60, label %for.body.i33, label %"slices.reverseRangeOrdered[int].exit", !dbg !3445

for.body.i33:                                     ; preds = %if.then4, %lookup.next4.i
  %61 = phi i64 [ %68, %lookup.next4.i ], [ %59, %if.then4 ]
  %62 = phi i64 [ %67, %lookup.next4.i ], [ %.ph324, %if.then4 ]
    #dbg_value(i64 %62, !3437, !DIExpression(), !3447)
    #dbg_value({ ptr, i64, i64 } poison, !3432, !DIExpression(), !3448)
    #dbg_value(i64 %61, !3438, !DIExpression(), !3449)
  %.not.i34 = icmp ult i64 %61, %data.len, !dbg !3450
  br i1 %.not.i34, label %lookup.next.i36, label %lookup.throw.i35, !dbg !3450

lookup.next.i36:                                  ; preds = %for.body.i33
    #dbg_value({ ptr, i64, i64 } poison, !3432, !DIExpression(), !3451)
    #dbg_value(i64 %62, !3437, !DIExpression(), !3452)
  %exitcond.not.i37 = icmp eq i64 %62, %umax.i, !dbg !3453
  br i1 %exitcond.not.i37, label %lookup.throw3.i, label %lookup.next4.i, !dbg !3453

lookup.next4.i:                                   ; preds = %lookup.next.i36
  %63 = getelementptr inbounds i64, ptr %data.data, i64 %61, !dbg !3450
  %64 = load i64, ptr %63, align 8, !dbg !3450
  %65 = getelementptr inbounds i64, ptr %data.data, i64 %62, !dbg !3453
  %66 = load i64, ptr %65, align 8, !dbg !3453
  store i64 %64, ptr %65, align 8, !dbg !3454
  store i64 %66, ptr %63, align 8, !dbg !3455
  %67 = add nsw i64 %62, 1, !dbg !3456
    #dbg_value(i64 %67, !3437, !DIExpression(), !3456)
    #dbg_value(i64 %61, !3438, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3457)
  %68 = add nsw i64 %61, -1, !dbg !3445
    #dbg_value(i64 %68, !3438, !DIExpression(), !3458)
  %69 = icmp slt i64 %67, %68, !dbg !3446
  br i1 %69, label %for.body.i33, label %"slices.reverseRangeOrdered[int].exit", !dbg !3445

lookup.throw.i35:                                 ; preds = %for.body.i33
  tail call fastcc void @runtime.lookupPanic(), !dbg !3450
  unreachable, !dbg !3450

lookup.throw3.i:                                  ; preds = %lookup.next.i36
  tail call fastcc void @runtime.lookupPanic(), !dbg !3453
  unreachable, !dbg !3453

"slices.reverseRangeOrdered[int].exit":           ; preds = %lookup.next4.i, %if.then4
    #dbg_value(i64 %24, !3229, !DIExpression(), !3459)
    #dbg_value(i64 %57, !3234, !DIExpression(), !3460)
    #dbg_value(i64 %.ph324, !3228, !DIExpression(), !3461)
  %.neg = add i64 %59, %.ph324, !dbg !3462
  %70 = sub i64 %.neg, %57, !dbg !3463
    #dbg_value(i64 %70, !3234, !DIExpression(), !3464)
    #dbg_value(i64 1, !3235, !DIExpression(), !3465)
  br label %if.done5, !dbg !3262

if.done5:                                         ; preds = %"slices.reverseRangeOrdered[int].exit", %if.done.i
  %71 = phi i64 [ %57, %if.done.i ], [ %70, %"slices.reverseRangeOrdered[int].exit" ], !dbg !3427
  %72 = phi i1 [ %switch.selectcmp13.i, %if.done.i ], [ true, %"slices.reverseRangeOrdered[int].exit" ], !dbg !3466
    #dbg_value(i1 %22, !3231, !DIExpression(), !3467)
    #dbg_value(i64 poison, !3235, !DIExpression(), !3468)
  %73 = and i1 %21, %72, !dbg !3262
  %or.cond = and i1 %22, %73, !dbg !3262
  br i1 %or.cond, label %if.then7, label %if.done9, !dbg !3262

if.then7:                                         ; preds = %if.done5
    #dbg_value({ ptr, i64, i64 } poison, !3227, !DIExpression(), !3469)
    #dbg_value(i64 %.ph324, !3228, !DIExpression(), !3470)
    #dbg_value(i64 %24, !3229, !DIExpression(), !3471)
    #dbg_value(ptr %data.data, !3472, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3481)
    #dbg_value(i64 %data.len, !3472, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3481)
    #dbg_value(i64 poison, !3472, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3481)
    #dbg_value(i64 %24, !3476, !DIExpression(), !3481)
    #dbg_value(i64 %.ph324, !3475, !DIExpression(), !3483)
    #dbg_value(i64 %invariant.op317330, !3477, !DIExpression(), !3484)
    #dbg_value(i64 0, !3478, !DIExpression(), !3485)
  %74 = icmp slt i64 %20, 50
  br label %for.loop1.preheader.i38, !dbg !3486

for.loop1.preheader.i38:                          ; preds = %if.done13.i, %if.then7
  %75 = phi i64 [ 0, %if.then7 ], [ %114, %if.done13.i ]
  %76 = phi i64 [ %invariant.op317330, %if.then7 ], [ %.lcssa.i, %if.done13.i ]
    #dbg_value(i64 %75, !3478, !DIExpression(), !3487)
    #dbg_value(i64 %76, !3477, !DIExpression(), !3488)
    #dbg_value(i64 %24, !3476, !DIExpression(), !3489)
  %77 = icmp slt i64 %76, %24, !dbg !3490
  br i1 %77, label %cond.true.preheader.i, label %for.done.i39, !dbg !3486

cond.true.preheader.i:                            ; preds = %for.loop1.preheader.i38
  %umax.i41 = tail call i64 @llvm.umax.i64(i64 %76, i64 %data.len), !dbg !3491
  br label %cond.true.i42, !dbg !3491

cond.true.i42:                                    ; preds = %for.body.i45, %cond.true.preheader.i
  %78 = phi i64 [ %85, %for.body.i45 ], [ %76, %cond.true.preheader.i ]
    #dbg_value({ ptr, i64, i64 } poison, !3472, !DIExpression(), !3492)
    #dbg_value(i64 %78, !3477, !DIExpression(), !3493)
  %exitcond.not.i43 = icmp eq i64 %78, %umax.i41, !dbg !3491
  br i1 %exitcond.not.i43, label %lookup.throw.i46, label %lookup.next.i44, !dbg !3491

lookup.next.i44:                                  ; preds = %cond.true.i42
    #dbg_value({ ptr, i64, i64 } poison, !3472, !DIExpression(), !3494)
    #dbg_value(i64 %78, !3477, !DIExpression(), !3495)
  %79 = add i64 %78, -1, !dbg !3496
  %.not12.i = icmp ult i64 %79, %data.len, !dbg !3497
  br i1 %.not12.i, label %lookup.next18.i, label %lookup.throw17.i, !dbg !3497

lookup.next18.i:                                  ; preds = %lookup.next.i44
  %80 = getelementptr inbounds i64, ptr %data.data, i64 %78, !dbg !3491
  %81 = load i64, ptr %80, align 8, !dbg !3491
  %82 = getelementptr inbounds i64, ptr %data.data, i64 %79, !dbg !3497
  %83 = load i64, ptr %82, align 8, !dbg !3497
    #dbg_value(i64 %81, !3293, !DIExpression(), !3498)
    #dbg_value(i64 %83, !3299, !DIExpression(), !3500)
  %84 = icmp slt i64 %81, %83, !dbg !3501
  br i1 %84, label %for.done.i39, label %for.body.i45, !dbg !3486

for.body.i45:                                     ; preds = %lookup.next18.i
  %85 = add nsw i64 %78, 1, !dbg !3502
    #dbg_value(i64 %85, !3477, !DIExpression(), !3488)
    #dbg_value(i64 %24, !3476, !DIExpression(), !3489)
  %exitcond48.not.i = icmp eq i64 %85, %24, !dbg !3490
  br i1 %exitcond48.not.i, label %common.ret, label %cond.true.i42, !dbg !3486

for.done.i39:                                     ; preds = %lookup.next18.i, %for.loop1.preheader.i38
  %.lcssa.i = phi i64 [ %76, %for.loop1.preheader.i38 ], [ %78, %lookup.next18.i ], !dbg !3484
    #dbg_value(i64 %.lcssa.i, !3477, !DIExpression(), !3503)
    #dbg_value(i64 %24, !3476, !DIExpression(), !3504)
  %86 = icmp eq i64 %.lcssa.i, %24, !dbg !3505
  %brmerge.i = or i1 %74, %86, !dbg !3486
  br i1 %brmerge.i, label %"slices.partialInsertionSortOrdered[int].exit", label %if.done3.i, !dbg !3486

if.done3.i:                                       ; preds = %for.done.i39
    #dbg_value({ ptr, i64, i64 } poison, !3472, !DIExpression(), !3506)
    #dbg_value(i64 %.lcssa.i, !3477, !DIExpression(), !3507)
  %87 = add i64 %.lcssa.i, -1, !dbg !3508
  %.not13.i = icmp ult i64 %87, %data.len, !dbg !3509
  br i1 %.not13.i, label %lookup.next22.i, label %lookup.throw21.i, !dbg !3509

lookup.next22.i:                                  ; preds = %if.done3.i
    #dbg_value({ ptr, i64, i64 } poison, !3472, !DIExpression(), !3510)
    #dbg_value(i64 %.lcssa.i, !3477, !DIExpression(), !3511)
  %.not14.i = icmp ult i64 %.lcssa.i, %data.len, !dbg !3512
  br i1 %.not14.i, label %lookup.next26.i, label %lookup.throw25.i, !dbg !3512

lookup.next26.i:                                  ; preds = %lookup.next22.i
  %88 = getelementptr inbounds i64, ptr %data.data, i64 %87, !dbg !3509
  %89 = load i64, ptr %88, align 8, !dbg !3509
  %90 = getelementptr inbounds i64, ptr %data.data, i64 %.lcssa.i, !dbg !3512
  %91 = load i64, ptr %90, align 8, !dbg !3512
  store i64 %89, ptr %90, align 8, !dbg !3513
  store i64 %91, ptr %88, align 8, !dbg !3514
    #dbg_value(i64 %.lcssa.i, !3477, !DIExpression(), !3515)
    #dbg_value(i64 %.ph324, !3475, !DIExpression(), !3516)
  %92 = sub i64 %.lcssa.i, %.ph324, !dbg !3517
  %93 = icmp sgt i64 %92, 1, !dbg !3518
  %94 = icmp sgt i64 %87, 0
  %or.cond.i = and i1 %93, %94, !dbg !3486
  br i1 %or.cond.i, label %for.body6.preheader.i, label %if.done8.i, !dbg !3486

for.body6.preheader.i:                            ; preds = %lookup.next26.i
  %95 = add i64 %.lcssa.i, -2, !dbg !3519
  %.not17.first_iter.i = icmp ult i64 %95, %data.len, !dbg !3519
  br i1 %.not17.first_iter.i, label %lookup.next38.i, label %lookup.throw41.i, !dbg !3520

lookup.next38.i:                                  ; preds = %for.body6.preheader.i, %lookup.next50.i
  %96 = phi i64 [ %101, %lookup.next50.i ], [ %87, %for.body6.preheader.i ]
  %.in2643.i = phi i64 [ %96, %lookup.next50.i ], [ %.lcssa.i, %for.body6.preheader.i ]
    #dbg_value({ ptr, i64, i64 } poison, !3472, !DIExpression(), !3521)
    #dbg_value(i64 %96, !3479, !DIExpression(), !3522)
  %97 = getelementptr inbounds nuw i64, ptr %data.data, i64 %96, !dbg !3519
  %98 = load i64, ptr %97, align 8, !dbg !3519
  %gep.i = getelementptr i64, ptr %invariant.gep.i, i64 %.in2643.i, !dbg !3520
  %99 = load i64, ptr %gep.i, align 8, !dbg !3520
    #dbg_value(i64 %98, !3293, !DIExpression(), !3523)
    #dbg_value(i64 %99, !3299, !DIExpression(), !3525)
  %100 = icmp slt i64 %98, %99, !dbg !3526
  br i1 %100, label %lookup.next50.i, label %if.done8.i, !dbg !3486

lookup.next50.i:                                  ; preds = %lookup.next38.i
    #dbg_value({ ptr, i64, i64 } poison, !3472, !DIExpression(), !3527)
    #dbg_value(i64 %96, !3479, !DIExpression(), !3528)
  store i64 %99, ptr %97, align 8, !dbg !3529
  store i64 %98, ptr %gep.i, align 8, !dbg !3530
    #dbg_value(i64 %96, !3479, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3531)
  %101 = add nsw i64 %96, -1, !dbg !3532
    #dbg_value(i64 %101, !3479, !DIExpression(), !3533)
  %102 = icmp sgt i64 %96, 1, !dbg !3534
  br i1 %102, label %lookup.next38.i, label %if.done8.i, !dbg !3486

if.done8.i:                                       ; preds = %lookup.next50.i, %lookup.next38.i, %lookup.next26.i
    #dbg_value(i64 %24, !3476, !DIExpression(), !3535)
    #dbg_value(i64 %.lcssa.i, !3477, !DIExpression(), !3536)
  %103 = sub i64 %24, %.lcssa.i, !dbg !3537
  %104 = icmp sgt i64 %103, 1, !dbg !3538
  %105 = add i64 %.lcssa.i, 1
  %106 = icmp slt i64 %105, %24
  %or.cond47.i = and i1 %104, %106, !dbg !3486
  br i1 %or.cond47.i, label %for.body11.i, label %if.done13.i, !dbg !3486

for.body11.i:                                     ; preds = %if.done8.i, %lookup.next74.i
  %107 = phi i64 [ %113, %lookup.next74.i ], [ %105, %if.done8.i ]
  %.in44.i = phi i64 [ %107, %lookup.next74.i ], [ %.lcssa.i, %if.done8.i ]
    #dbg_value({ ptr, i64, i64 } poison, !3472, !DIExpression(), !3539)
    #dbg_value(i64 %107, !3480, !DIExpression(), !3540)
  %.not18.i = icmp ult i64 %107, %data.len, !dbg !3541
  br i1 %.not18.i, label %lookup.next62.i, label %lookup.throw61.i, !dbg !3541

lookup.next62.i:                                  ; preds = %for.body11.i
    #dbg_value({ ptr, i64, i64 } poison, !3472, !DIExpression(), !3542)
    #dbg_value(i64 %107, !3480, !DIExpression(), !3543)
  %.not19.i = icmp ult i64 %.in44.i, %data.len, !dbg !3544
  br i1 %.not19.i, label %lookup.next66.i, label %lookup.throw65.i, !dbg !3544

lookup.next66.i:                                  ; preds = %lookup.next62.i
  %108 = getelementptr inbounds i64, ptr %data.data, i64 %107, !dbg !3541
  %109 = load i64, ptr %108, align 8, !dbg !3541
  %110 = getelementptr inbounds i64, ptr %data.data, i64 %.in44.i, !dbg !3544
  %111 = load i64, ptr %110, align 8, !dbg !3544
    #dbg_value(i64 %109, !3293, !DIExpression(), !3545)
    #dbg_value(i64 %111, !3299, !DIExpression(), !3547)
  %112 = icmp slt i64 %109, %111, !dbg !3548
  br i1 %112, label %lookup.next74.i, label %if.done13.i, !dbg !3486

lookup.next74.i:                                  ; preds = %lookup.next66.i
    #dbg_value({ ptr, i64, i64 } poison, !3472, !DIExpression(), !3549)
    #dbg_value(i64 %107, !3480, !DIExpression(), !3550)
  store i64 %111, ptr %108, align 8, !dbg !3551
  store i64 %109, ptr %110, align 8, !dbg !3552
    #dbg_value(i64 %107, !3480, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3553)
  %113 = add nuw nsw i64 %107, 1, !dbg !3554
    #dbg_value(i64 %113, !3480, !DIExpression(), !3555)
    #dbg_value(i64 %24, !3476, !DIExpression(), !3556)
  %exitcond50.not.i = icmp eq i64 %113, %24, !dbg !3557
  br i1 %exitcond50.not.i, label %if.done13.i, label %for.body11.i, !dbg !3486

if.done13.i:                                      ; preds = %lookup.next74.i, %lookup.next66.i, %if.done8.i
  %114 = add nuw nsw i64 %75, 1, !dbg !3558
    #dbg_value(i64 %114, !3478, !DIExpression(), !3487)
  %exitcond51.not.i = icmp eq i64 %114, 5, !dbg !3559
  br i1 %exitcond51.not.i, label %if.done9, label %for.loop1.preheader.i38, !dbg !3486

lookup.throw.i46:                                 ; preds = %cond.true.i42
  tail call fastcc void @runtime.lookupPanic(), !dbg !3491
  unreachable, !dbg !3491

lookup.throw17.i:                                 ; preds = %lookup.next.i44
  tail call fastcc void @runtime.lookupPanic(), !dbg !3497
  unreachable, !dbg !3497

lookup.throw21.i:                                 ; preds = %if.done3.i
  tail call fastcc void @runtime.lookupPanic(), !dbg !3509
  unreachable, !dbg !3509

lookup.throw25.i:                                 ; preds = %lookup.next22.i
  tail call fastcc void @runtime.lookupPanic(), !dbg !3512
  unreachable, !dbg !3512

lookup.throw41.i:                                 ; preds = %for.body6.preheader.i
  tail call fastcc void @runtime.lookupPanic(), !dbg !3520
  unreachable, !dbg !3520

lookup.throw61.i:                                 ; preds = %for.body11.i
  tail call fastcc void @runtime.lookupPanic(), !dbg !3541
  unreachable, !dbg !3541

lookup.throw65.i:                                 ; preds = %lookup.next62.i
  tail call fastcc void @runtime.lookupPanic(), !dbg !3544
  unreachable, !dbg !3544

"slices.partialInsertionSortOrdered[int].exit":   ; preds = %for.done.i39
  br i1 %86, label %common.ret, label %if.done9, !dbg !3262

if.done9:                                         ; preds = %if.done13.i, %if.done5, %"slices.partialInsertionSortOrdered[int].exit"
    #dbg_value(i64 %.ph324, !3228, !DIExpression(), !3560)
  br i1 %4, label %cond.true10, label %if.done12, !dbg !3262

cond.true10:                                      ; preds = %if.done9
    #dbg_value({ ptr, i64, i64 } poison, !3227, !DIExpression(), !3561)
    #dbg_value(i64 %.ph324, !3228, !DIExpression(), !3562)
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3563

lookup.next:                                      ; preds = %cond.true10
    #dbg_value({ ptr, i64, i64 } poison, !3227, !DIExpression(), !3564)
    #dbg_value(i64 %71, !3234, !DIExpression(), !3565)
  %.not8 = icmp ult i64 %71, %data.len, !dbg !3566
  br i1 %.not8, label %lookup.next18, label %lookup.throw17, !dbg !3566

lookup.next18:                                    ; preds = %lookup.next
  %115 = load i64, ptr %5, align 8, !dbg !3563
  %116 = getelementptr inbounds i64, ptr %data.data, i64 %71, !dbg !3566
  %117 = load i64, ptr %116, align 8, !dbg !3566
    #dbg_value(i64 %115, !3293, !DIExpression(), !3567)
    #dbg_value(i64 %117, !3299, !DIExpression(), !3569)
  %118 = icmp slt i64 %115, %117, !dbg !3570
  br i1 %118, label %if.done12, label %lookup.next.i49, !dbg !3262

lookup.next.i49:                                  ; preds = %lookup.next18
    #dbg_value({ ptr, i64, i64 } poison, !3227, !DIExpression(), !3571)
    #dbg_value(i64 %.ph324, !3228, !DIExpression(), !3572)
    #dbg_value(i64 %24, !3229, !DIExpression(), !3573)
    #dbg_value(i64 %71, !3234, !DIExpression(), !3574)
    #dbg_value(ptr %data.data, !3575, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3584)
    #dbg_value(i64 %data.len, !3575, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3584)
    #dbg_value(i64 poison, !3575, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3584)
    #dbg_value(i64 %24, !3580, !DIExpression(), !3584)
    #dbg_value(i64 %71, !3581, !DIExpression(), !3586)
    #dbg_value({ ptr, i64, i64 } poison, !3575, !DIExpression(), !3587)
    #dbg_value(i64 %.ph324, !3579, !DIExpression(), !3588)
  br i1 %.not11.i59, label %lookup.next7.i52, label %lookup.throw6.i51, !dbg !3589

lookup.next7.i52:                                 ; preds = %lookup.next.i49
  %119 = load i64, ptr %6, align 8, !dbg !3589
  store i64 %117, ptr %6, align 8, !dbg !3590
  store i64 %119, ptr %116, align 8, !dbg !3591
    #dbg_value(i64 %.ph324, !3579, !DIExpression(), !3592)
    #dbg_value(i64 %24, !3580, !DIExpression(), !3593)
    #dbg_value(i64 %.ph324, !3582, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3594)
    #dbg_value(i64 %24, !3583, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3595)
  br label %for.loop.outer.i, !dbg !3596

for.loop.outer.i:                                 ; preds = %lookup.next39.i, %lookup.next7.i52
  %.in.ph.i = phi i64 [ %120, %lookup.next39.i ], [ %.ph324, %lookup.next7.i52 ]
  %.ph.in.i = phi i64 [ %125, %lookup.next39.i ], [ %24, %lookup.next7.i52 ]
  %.ph.i = add i64 %.ph.in.i, -1, !dbg !3596
  br label %for.loop.i, !dbg !3596

for.loop.i:                                       ; preds = %lookup.next23.i, %for.loop.outer.i
  %.in.i = phi i64 [ %120, %lookup.next23.i ], [ %.in.ph.i, %for.loop.outer.i ]
  %120 = add i64 %.in.i, 1, !dbg !3596
    #dbg_value(i64 %120, !3582, !DIExpression(), !3597)
    #dbg_value(i64 %.ph.i, !3583, !DIExpression(), !3598)
  %.not6.i = icmp sgt i64 %120, %.ph.i, !dbg !3599
  br i1 %.not6.i, label %for.body.outer.backedge, label %lookup.next19.i, !dbg !3596

lookup.next19.i:                                  ; preds = %for.loop.i
    #dbg_value(i64 poison, !3579, !DIExpression(), !3600)
    #dbg_value({ ptr, i64, i64 } poison, !3575, !DIExpression(), !3601)
    #dbg_value(i64 %120, !3582, !DIExpression(), !3602)
  %.not8.i = icmp ult i64 %120, %data.len, !dbg !3603
  br i1 %.not8.i, label %lookup.next23.i, label %lookup.throw22.i, !dbg !3603

lookup.next23.i:                                  ; preds = %lookup.next19.i
  %121 = load i64, ptr %6, align 8, !dbg !3604
  %122 = getelementptr inbounds i64, ptr %data.data, i64 %120, !dbg !3603
  %123 = load i64, ptr %122, align 8, !dbg !3603
    #dbg_value(i64 %121, !3293, !DIExpression(), !3605)
    #dbg_value(i64 %123, !3299, !DIExpression(), !3607)
  %124 = icmp slt i64 %121, %123, !dbg !3608
  br i1 %124, label %lookup.next27.i.preheader, label %for.loop.i, !dbg !3596

lookup.next27.i.preheader:                        ; preds = %lookup.next23.i
  br label %lookup.next27.i, !dbg !3609

lookup.next27.i:                                  ; preds = %lookup.next27.i.preheader, %for.body3.i
  %125 = phi i64 [ %129, %for.body3.i ], [ %.ph.i, %lookup.next27.i.preheader ]
    #dbg_value(i64 poison, !3579, !DIExpression(), !3610)
    #dbg_value({ ptr, i64, i64 } poison, !3575, !DIExpression(), !3611)
    #dbg_value(i64 %125, !3583, !DIExpression(), !3612)
  %.not11.i53 = icmp ult i64 %125, %data.len, !dbg !3609
  br i1 %.not11.i53, label %lookup.next31.i, label %lookup.throw30.i, !dbg !3609

lookup.next31.i:                                  ; preds = %lookup.next27.i
  %126 = getelementptr inbounds i64, ptr %data.data, i64 %125, !dbg !3609
  %127 = load i64, ptr %126, align 8, !dbg !3609
    #dbg_value(i64 %121, !3293, !DIExpression(), !3613)
    #dbg_value(i64 %127, !3299, !DIExpression(), !3615)
  %128 = icmp slt i64 %121, %127, !dbg !3616
  br i1 %128, label %for.body3.i, label %lookup.next39.i, !dbg !3596

for.body3.i:                                      ; preds = %lookup.next31.i
  %129 = add i64 %125, -1, !dbg !3617
    #dbg_value(i64 %120, !3582, !DIExpression(), !3618)
    #dbg_value(i64 %129, !3583, !DIExpression(), !3619)
  %.not9.i = icmp sgt i64 %120, %129, !dbg !3620
  br i1 %.not9.i, label %for.body.outer.backedge, label %lookup.next27.i, !dbg !3596

lookup.next39.i:                                  ; preds = %lookup.next31.i
    #dbg_value(i64 %125, !3583, !DIExpression(), !3621)
    #dbg_value({ ptr, i64, i64 } poison, !3575, !DIExpression(), !3622)
    #dbg_value(i64 %120, !3582, !DIExpression(), !3623)
  store i64 %127, ptr %122, align 8, !dbg !3624
  store i64 %123, ptr %126, align 8, !dbg !3625
    #dbg_value(i64 %120, !3582, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3626)
    #dbg_value(i64 %125, !3583, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3627)
  br label %for.loop.outer.i, !dbg !3596

lookup.throw6.i51:                                ; preds = %lookup.next.i49
  tail call fastcc void @runtime.lookupPanic(), !dbg !3589
  unreachable, !dbg !3589

lookup.throw22.i:                                 ; preds = %lookup.next19.i
  tail call fastcc void @runtime.lookupPanic(), !dbg !3603
  unreachable, !dbg !3603

lookup.throw30.i:                                 ; preds = %lookup.next27.i
  tail call fastcc void @runtime.lookupPanic(), !dbg !3609
  unreachable, !dbg !3609

for.body.outer.backedge:                          ; preds = %for.loop.i, %for.body3.i, %if.then13
  %.ph.be = phi i64 [ %170, %if.then13 ], [ %120, %for.body3.i ], [ %120, %for.loop.i ]
  %.ph90.be = phi i1 [ %169, %if.then13 ], [ %22, %for.body3.i ], [ %22, %for.loop.i ]
  %.ph91.be = phi i1 [ %.not1669.i, %if.then13 ], [ %21, %for.body3.i ], [ %21, %for.loop.i ]
    #dbg_value(i64 %24, !3229, !DIExpression(), !3263)
    #dbg_value(i64 %.ph.be, !3228, !DIExpression(), !3264)
  %130 = sub i64 %24, %.ph.be, !dbg !3260
  %131 = icmp slt i64 %130, 13, !dbg !3261
  br i1 %131, label %if.then, label %if.done.lr.ph, !dbg !3262

if.done12:                                        ; preds = %lookup.next18, %if.done9
    #dbg_value({ ptr, i64, i64 } poison, !3227, !DIExpression(), !3628)
    #dbg_value(i64 %.ph324, !3228, !DIExpression(), !3629)
    #dbg_value(i64 %24, !3229, !DIExpression(), !3630)
    #dbg_value(i64 %71, !3234, !DIExpression(), !3631)
    #dbg_value(ptr %data.data, !3632, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3640)
    #dbg_value(i64 %data.len, !3632, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3640)
    #dbg_value(i64 poison, !3632, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3640)
    #dbg_value(i64 %24, !3636, !DIExpression(), !3640)
    #dbg_value(i64 %.ph324, !3635, !DIExpression(), !3642)
    #dbg_value({ ptr, i64, i64 } poison, !3632, !DIExpression(), !3643)
    #dbg_value(i64 %71, !3637, !DIExpression(), !3644)
  %.not.i56 = icmp ult i64 %71, %data.len, !dbg !3645
  br i1 %.not.i56, label %lookup.next.i58, label %lookup.throw.i57, !dbg !3645

lookup.next.i58:                                  ; preds = %if.done12
    #dbg_value({ ptr, i64, i64 } poison, !3632, !DIExpression(), !3646)
    #dbg_value(i64 %.ph324, !3635, !DIExpression(), !3647)
  br i1 %.not11.i59, label %lookup.next16.i, label %lookup.throw15.i, !dbg !3648

lookup.next16.i:                                  ; preds = %lookup.next.i58
  %132 = getelementptr inbounds i64, ptr %data.data, i64 %71, !dbg !3645
  %133 = load i64, ptr %132, align 8, !dbg !3645
  %134 = load i64, ptr %6, align 8, !dbg !3648
  store i64 %133, ptr %6, align 8, !dbg !3649
  store i64 %134, ptr %132, align 8, !dbg !3650
    #dbg_value(i64 %.ph324, !3635, !DIExpression(), !3651)
    #dbg_value(i64 %24, !3636, !DIExpression(), !3652)
  %135 = add i64 %24, -1, !dbg !3653
    #dbg_value(i64 %.ph324, !3638, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3654)
    #dbg_value(i64 %135, !3639, !DIExpression(), !3655)
  br label %for.loop.i60, !dbg !3656

for.loop.i60:                                     ; preds = %lookup.next32.i, %lookup.next16.i
  %.in.i61 = phi i64 [ %.ph324, %lookup.next16.i ], [ %136, %lookup.next32.i ]
  %136 = add nuw i64 %.in.i61, 1, !dbg !3656
    #dbg_value(i64 %136, !3638, !DIExpression(), !3657)
    #dbg_value(i64 %135, !3639, !DIExpression(), !3658)
  %.not13.i62 = icmp sgt i64 %136, %135, !dbg !3659
  br i1 %.not13.i62, label %lookup.next44.i, label %cond.true.i63, !dbg !3656

cond.true.i63:                                    ; preds = %for.loop.i60
    #dbg_value({ ptr, i64, i64 } poison, !3632, !DIExpression(), !3660)
    #dbg_value(i64 %136, !3638, !DIExpression(), !3661)
  %exitcond.not.i64 = icmp eq i64 %.in.i61, %2, !dbg !3662
  br i1 %exitcond.not.i64, label %lookup.throw27.i, label %lookup.next32.i, !dbg !3662

lookup.next32.i:                                  ; preds = %cond.true.i63
    #dbg_value({ ptr, i64, i64 } poison, !3632, !DIExpression(), !3663)
    #dbg_value(i64 %.ph324, !3635, !DIExpression(), !3664)
  %137 = getelementptr inbounds i64, ptr %data.data, i64 %136, !dbg !3662
  %138 = load i64, ptr %137, align 8, !dbg !3662
  %139 = load i64, ptr %6, align 8, !dbg !3665
    #dbg_value(i64 %138, !3293, !DIExpression(), !3666)
    #dbg_value(i64 %139, !3299, !DIExpression(), !3668)
  %140 = icmp slt i64 %138, %139, !dbg !3669
  br i1 %140, label %for.loop.i60, label %cond.true2.i.preheader, !dbg !3656

cond.true2.i.preheader:                           ; preds = %lookup.next32.i
  br label %cond.true2.i, !dbg !3670

cond.true2.i:                                     ; preds = %cond.true2.i.preheader, %for.body3.i65
  %141 = phi i64 [ %145, %for.body3.i65 ], [ %135, %cond.true2.i.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3632, !DIExpression(), !3671)
    #dbg_value(i64 %141, !3639, !DIExpression(), !3672)
  %.not17.i = icmp ult i64 %141, %data.len, !dbg !3670
  br i1 %.not17.i, label %lookup.next40.i, label %lookup.throw35.i, !dbg !3670

lookup.next40.i:                                  ; preds = %cond.true2.i
    #dbg_value({ ptr, i64, i64 } poison, !3632, !DIExpression(), !3673)
    #dbg_value(i64 %.ph324, !3635, !DIExpression(), !3674)
  %142 = getelementptr inbounds i64, ptr %data.data, i64 %141, !dbg !3670
  %143 = load i64, ptr %142, align 8, !dbg !3670
    #dbg_value(i64 %143, !3293, !DIExpression(), !3675)
    #dbg_value(i64 %139, !3299, !DIExpression(), !3677)
  %144 = icmp slt i64 %143, %139, !dbg !3678
  br i1 %144, label %lookup.next60.i, label %for.body3.i65, !dbg !3656

for.body3.i65:                                    ; preds = %lookup.next40.i
  %145 = add i64 %141, -1, !dbg !3679
    #dbg_value(i64 %136, !3638, !DIExpression(), !3680)
    #dbg_value(i64 %145, !3639, !DIExpression(), !3681)
  %.not16.i = icmp sgt i64 %136, %145, !dbg !3682
  br i1 %.not16.i, label %lookup.next44.i, label %cond.true2.i, !dbg !3656

lookup.next44.i:                                  ; preds = %for.loop.i60, %for.body3.i65
  %.lcssa70.i = phi i64 [ %145, %for.body3.i65 ], [ %135, %for.loop.i60 ], !dbg !3655
    #dbg_value(i64 %.ph324, !3635, !DIExpression(), !3683)
    #dbg_value({ ptr, i64, i64 } poison, !3632, !DIExpression(), !3684)
    #dbg_value(i64 %.lcssa70.i, !3639, !DIExpression(), !3685)
  %.not35.i = icmp ult i64 %.lcssa70.i, %data.len, !dbg !3686
  br i1 %.not35.i, label %"slices.partitionOrdered[int].exit", label %lookup.throw47.i, !dbg !3686

lookup.next60.i:                                  ; preds = %lookup.next40.i
    #dbg_value(i64 %141, !3639, !DIExpression(), !3687)
    #dbg_value({ ptr, i64, i64 } poison, !3632, !DIExpression(), !3688)
    #dbg_value(i64 %136, !3638, !DIExpression(), !3689)
  %.not20.i = icmp ult i64 %136, %data.len, !dbg !3690
  br i1 %.not20.i, label %lookup.next64.i, label %lookup.throw63.i, !dbg !3690

lookup.next64.i:                                  ; preds = %lookup.next60.i
  store i64 %143, ptr %137, align 8, !dbg !3691
  store i64 %138, ptr %142, align 8, !dbg !3692
  %146 = add i64 %.in.i61, 2, !dbg !3693
    #dbg_value(i64 %146, !3638, !DIExpression(), !3693)
    #dbg_value(i64 %141, !3639, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3694)
  br label %for.loop4.outer.i, !dbg !3656

for.loop4.outer.i:                                ; preds = %lookup.next112.i, %lookup.next64.i
  %.ph.i68 = phi i64 [ %161, %lookup.next112.i ], [ %146, %lookup.next64.i ]
  %.ph60.in.i = phi i64 [ %153, %lookup.next112.i ], [ %141, %lookup.next64.i ]
  %.ph60.i = add i64 %.ph60.in.i, -1, !dbg !3656
    #dbg_value(i64 %.ph.i68, !3638, !DIExpression(), !3695)
    #dbg_value(i64 %.ph60.i, !3639, !DIExpression(), !3696)
  %.not2281.i = icmp sgt i64 %.ph.i68, %.ph60.i, !dbg !3697
  br i1 %.not2281.i, label %for.loop7.preheader.i, label %cond.true5.preheader.i, !dbg !3656

cond.true5.preheader.i:                           ; preds = %for.loop4.outer.i
  %umax.i69 = tail call i64 @llvm.umax.i64(i64 %.ph.i68, i64 %data.len), !dbg !3698
  br label %cond.true5.i, !dbg !3698

cond.true5.i:                                     ; preds = %for.body6.i, %cond.true5.preheader.i
  %147 = phi i64 [ %152, %for.body6.i ], [ %.ph.i68, %cond.true5.preheader.i ]
    #dbg_value({ ptr, i64, i64 } poison, !3632, !DIExpression(), !3699)
    #dbg_value(i64 %147, !3638, !DIExpression(), !3700)
  %exitcond111.not.i = icmp eq i64 %147, %umax.i69, !dbg !3698
  br i1 %exitcond111.not.i, label %lookup.throw75.i, label %lookup.next80.i, !dbg !3698

lookup.next80.i:                                  ; preds = %cond.true5.i
    #dbg_value({ ptr, i64, i64 } poison, !3632, !DIExpression(), !3701)
    #dbg_value(i64 %.ph324, !3635, !DIExpression(), !3702)
  %148 = getelementptr inbounds i64, ptr %data.data, i64 %147, !dbg !3698
  %149 = load i64, ptr %148, align 8, !dbg !3698
  %150 = load i64, ptr %6, align 8, !dbg !3703
    #dbg_value(i64 %149, !3293, !DIExpression(), !3704)
    #dbg_value(i64 %150, !3299, !DIExpression(), !3706)
  %151 = icmp slt i64 %149, %150, !dbg !3707
  br i1 %151, label %for.body6.i, label %for.loop7.preheader.i, !dbg !3656

for.loop7.preheader.i:                            ; preds = %for.body6.i, %lookup.next80.i, %for.loop4.outer.i
  %.lcssa.i70 = phi i64 [ %.ph.i68, %for.loop4.outer.i ], [ %147, %lookup.next80.i ], [ %152, %for.body6.i ], !dbg !3654
    #dbg_value(i64 %.lcssa.i70, !3638, !DIExpression(), !3708)
    #dbg_value(i64 %.ph60.i, !3639, !DIExpression(), !3709)
  %.not2584.i = icmp sgt i64 %.lcssa.i70, %.ph60.i, !dbg !3710
  br i1 %.not2584.i, label %lookup.next92.i, label %cond.true8.i, !dbg !3656

for.body6.i:                                      ; preds = %lookup.next80.i
  %152 = add i64 %147, 1, !dbg !3711
    #dbg_value(i64 %152, !3638, !DIExpression(), !3695)
    #dbg_value(i64 %.ph60.i, !3639, !DIExpression(), !3696)
  %.not22.i = icmp sgt i64 %152, %.ph60.i, !dbg !3697
  br i1 %.not22.i, label %for.loop7.preheader.i, label %cond.true5.i, !dbg !3656

cond.true8.i:                                     ; preds = %for.loop7.preheader.i, %for.body9.i
  %153 = phi i64 [ %158, %for.body9.i ], [ %.ph60.i, %for.loop7.preheader.i ]
    #dbg_value({ ptr, i64, i64 } poison, !3632, !DIExpression(), !3712)
    #dbg_value(i64 %153, !3639, !DIExpression(), !3713)
  %.not26.i = icmp ult i64 %153, %data.len, !dbg !3714
  br i1 %.not26.i, label %lookup.next88.i, label %lookup.throw83.i, !dbg !3714

lookup.next88.i:                                  ; preds = %cond.true8.i
    #dbg_value({ ptr, i64, i64 } poison, !3632, !DIExpression(), !3715)
    #dbg_value(i64 %.ph324, !3635, !DIExpression(), !3716)
  %154 = getelementptr inbounds i64, ptr %data.data, i64 %153, !dbg !3714
  %155 = load i64, ptr %154, align 8, !dbg !3714
  %156 = load i64, ptr %6, align 8, !dbg !3717
    #dbg_value(i64 %155, !3293, !DIExpression(), !3718)
    #dbg_value(i64 %156, !3299, !DIExpression(), !3720)
  %157 = icmp slt i64 %155, %156, !dbg !3721
  br i1 %157, label %lookup.next108.i, label %for.body9.i, !dbg !3656

for.body9.i:                                      ; preds = %lookup.next88.i
  %158 = add i64 %153, -1, !dbg !3722
    #dbg_value(i64 %.lcssa.i70, !3638, !DIExpression(), !3708)
    #dbg_value(i64 %158, !3639, !DIExpression(), !3709)
  %.not25.i = icmp sgt i64 %.lcssa.i70, %158, !dbg !3710
  br i1 %.not25.i, label %lookup.next92.i, label %cond.true8.i, !dbg !3656

lookup.next92.i:                                  ; preds = %for.loop7.preheader.i, %for.body9.i
  %.lcssa62.i = phi i64 [ %158, %for.body9.i ], [ %.ph60.i, %for.loop7.preheader.i ], !dbg !3655
    #dbg_value(i64 %.ph324, !3635, !DIExpression(), !3723)
    #dbg_value({ ptr, i64, i64 } poison, !3632, !DIExpression(), !3724)
    #dbg_value(i64 %.lcssa62.i, !3639, !DIExpression(), !3725)
  %.not32.i = icmp ult i64 %.lcssa62.i, %data.len, !dbg !3726
  br i1 %.not32.i, label %"slices.partitionOrdered[int].exit", label %lookup.throw95.i, !dbg !3726

lookup.next108.i:                                 ; preds = %lookup.next88.i
    #dbg_value(i64 %153, !3639, !DIExpression(), !3727)
    #dbg_value({ ptr, i64, i64 } poison, !3632, !DIExpression(), !3728)
    #dbg_value(i64 %.lcssa.i70, !3638, !DIExpression(), !3729)
  %.not29.i = icmp ult i64 %.lcssa.i70, %data.len, !dbg !3730
  br i1 %.not29.i, label %lookup.next112.i, label %lookup.throw111.i, !dbg !3730

lookup.next112.i:                                 ; preds = %lookup.next108.i
  %159 = getelementptr inbounds i64, ptr %data.data, i64 %.lcssa.i70, !dbg !3730
  %160 = load i64, ptr %159, align 8, !dbg !3730
  store i64 %155, ptr %159, align 8, !dbg !3731
  store i64 %160, ptr %154, align 8, !dbg !3732
  %161 = add nuw i64 %.lcssa.i70, 1, !dbg !3733
    #dbg_value(i64 %161, !3638, !DIExpression(), !3733)
    #dbg_value(i64 %153, !3639, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3734)
  br label %for.loop4.outer.i, !dbg !3656

lookup.throw.i57:                                 ; preds = %if.done12
  tail call fastcc void @runtime.lookupPanic(), !dbg !3645
  unreachable, !dbg !3645

lookup.throw15.i:                                 ; preds = %lookup.next.i58
  tail call fastcc void @runtime.lookupPanic(), !dbg !3648
  unreachable, !dbg !3648

lookup.throw27.i:                                 ; preds = %cond.true.i63
  tail call fastcc void @runtime.lookupPanic(), !dbg !3662
  unreachable, !dbg !3662

lookup.throw35.i:                                 ; preds = %cond.true2.i
  tail call fastcc void @runtime.lookupPanic(), !dbg !3670
  unreachable, !dbg !3670

lookup.throw47.i:                                 ; preds = %lookup.next44.i
  tail call fastcc void @runtime.lookupPanic(), !dbg !3686
  unreachable, !dbg !3686

lookup.throw63.i:                                 ; preds = %lookup.next60.i
  tail call fastcc void @runtime.lookupPanic(), !dbg !3690
  unreachable, !dbg !3690

lookup.throw75.i:                                 ; preds = %cond.true5.i
  tail call fastcc void @runtime.lookupPanic(), !dbg !3698
  unreachable, !dbg !3698

lookup.throw83.i:                                 ; preds = %cond.true8.i
  tail call fastcc void @runtime.lookupPanic(), !dbg !3714
  unreachable, !dbg !3714

lookup.throw95.i:                                 ; preds = %lookup.next92.i
  tail call fastcc void @runtime.lookupPanic(), !dbg !3726
  unreachable, !dbg !3726

lookup.throw111.i:                                ; preds = %lookup.next108.i
  tail call fastcc void @runtime.lookupPanic(), !dbg !3730
  unreachable, !dbg !3730

"slices.partitionOrdered[int].exit":              ; preds = %lookup.next44.i, %lookup.next92.i
  %.lcssa62.sink.i = phi i64 [ %.lcssa62.i, %lookup.next92.i ], [ %.lcssa70.i, %lookup.next44.i ]
  %.not1669.i = phi i1 [ false, %lookup.next92.i ], [ true, %lookup.next44.i ]
  %162 = load i64, ptr %6, align 8, !dbg !3656
  %163 = getelementptr inbounds i64, ptr %data.data, i64 %.lcssa62.sink.i, !dbg !3656
  %164 = load i64, ptr %163, align 8, !dbg !3656
  store i64 %162, ptr %163, align 8, !dbg !3656
  store i64 %164, ptr %6, align 8, !dbg !3656
    #dbg_value(i1 %.not1669.i, !3239, !DIExpression(), !3735)
    #dbg_value(i1 %.not1669.i, !3232, !DIExpression(), !3736)
    #dbg_value(i64 %.lcssa62.sink.i, !3238, !DIExpression(), !3737)
    #dbg_value(i64 %.ph324, !3228, !DIExpression(), !3738)
  %165 = sub i64 %.lcssa62.sink.i, %.ph324, !dbg !3739
    #dbg_value(i64 %24, !3229, !DIExpression(), !3740)
  %166 = sub i64 %24, %.lcssa62.sink.i, !dbg !3741
    #dbg_value(i64 %165, !3240, !DIExpression(), !3742)
    #dbg_value(i64 %166, !3241, !DIExpression(), !3743)
    #dbg_value(i64 %20, !3233, !DIExpression(), !3744)
  %167 = lshr i64 %20, 3, !dbg !3745
    #dbg_value(i64 %167, !3242, !DIExpression(), !3746)
  %168 = icmp slt i64 %165, %166, !dbg !3747
  br i1 %168, label %if.then13, label %if.else, !dbg !3262

if.then13:                                        ; preds = %"slices.partitionOrdered[int].exit"
    #dbg_value(i64 %165, !3240, !DIExpression(), !3748)
    #dbg_value(i64 %167, !3242, !DIExpression(), !3749)
  %169 = icmp sge i64 %165, %167, !dbg !3750
    #dbg_value(i1 %169, !3231, !DIExpression(), !3751)
    #dbg_value({ ptr, i64, i64 } poison, !3227, !DIExpression(), !3752)
    #dbg_value(i64 %.ph324, !3228, !DIExpression(), !3753)
    #dbg_value(i64 %.lcssa62.sink.i, !3238, !DIExpression(), !3754)
    #dbg_value(i64 %37, !3230, !DIExpression(), !3755)
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr nonnull %data.data, i64 %data.len, i64 %.ph324, i64 %.lcssa62.sink.i, i64 %37), !dbg !3756
  %170 = add nuw i64 %.lcssa62.sink.i, 1, !dbg !3757
    #dbg_value(i64 %170, !3228, !DIExpression(), !3758)
  br label %for.body.outer.backedge, !dbg !3262

if.else:                                          ; preds = %"slices.partitionOrdered[int].exit"
    #dbg_value(i64 %166, !3241, !DIExpression(), !3759)
    #dbg_value(i64 %167, !3242, !DIExpression(), !3760)
  %171 = icmp sge i64 %166, %167, !dbg !3761
    #dbg_value(i1 %171, !3231, !DIExpression(), !3762)
    #dbg_value({ ptr, i64, i64 } poison, !3227, !DIExpression(), !3763)
    #dbg_value(i64 %.lcssa62.sink.i, !3238, !DIExpression(), !3764)
  %172 = add nuw i64 %.lcssa62.sink.i, 1, !dbg !3765
    #dbg_value(i64 %24, !3229, !DIExpression(), !3766)
    #dbg_value(i64 %37, !3230, !DIExpression(), !3767)
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr nonnull %data.data, i64 %data.len, i64 %172, i64 %24, i64 %37), !dbg !3768
    #dbg_value(i64 %.lcssa62.sink.i, !3229, !DIExpression(), !3263)
    #dbg_value(i64 %.ph324, !3228, !DIExpression(), !3264)
    #dbg_value(i64 %165, !3233, !DIExpression(), !3769)
  %173 = icmp slt i64 %165, 13, !dbg !3261
  br i1 %173, label %if.then, label %if.done, !dbg !3262

if.then.i71:                                      ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } poison, !3227, !DIExpression(), !3770)
    #dbg_value(i64 %.ph324, !3228, !DIExpression(), !3771)
    #dbg_value(i64 %24, !3229, !DIExpression(), !3772)
    #dbg_value(ptr %data.data, !3773, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3784)
    #dbg_value(i64 %data.len, !3773, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3784)
    #dbg_value(i64 poison, !3773, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3784)
    #dbg_value(i64 %24, !3777, !DIExpression(), !3786)
    #dbg_value(ptr undef, !3787, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3794)
    #dbg_value(ptr undef, !3787, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3794)
    #dbg_value(ptr undef, !3787, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !3794)
    #dbg_value(ptr undef, !3787, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !3794)
    #dbg_value(ptr undef, !3787, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3794)
    #dbg_value(ptr undef, !3787, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !3794)
    #dbg_value(ptr undef, !3787, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !3794)
    #dbg_value(ptr undef, !3787, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !3794)
    #dbg_value(i64 %20, !3779, !DIExpression(), !3796)
    #dbg_value(i64 %20, !3797, !DIExpression(), !3802)
    #dbg_value(i64 %20, !3804, !DIExpression(), !3809)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3781, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_shl, DW_OP_stack_value), !3811)
    #dbg_value(i64 %.ph324, !3776, !DIExpression(), !3812)
    #dbg_value(i64 %20, !3778, !DIExpression(), !3813)
  %174 = lshr i64 %20, 1, !dbg !3814
  %175 = and i64 %174, 4611686018427387902, !dbg !3814
  %.reass = add i64 %175, %invariant.op329
    #dbg_value(i64 %.reass, !3782, !DIExpression(), !3815)
  %.reass318 = add i64 %175, %invariant.op317330
  %.not37.i = icmp sgt i64 %.reass, %.reass318, !dbg !3816
  br i1 %.not37.i, label %"slices.breakPatternsOrdered[int].exit", label %for.body.lr.ph.i, !dbg !3817

for.body.lr.ph.i:                                 ; preds = %if.then.i71
  %176 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8, -9223372036854775808) %20, i1 true), !dbg !3809
    #dbg_value(!DIArgList(i64 1, i64 64, i64 %176), !3781, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_shl, DW_OP_stack_value), !3811)
  %177 = sub nuw nsw i64 64, %176, !dbg !3809
    #dbg_value(!DIArgList(i64 1, i64 %177), !3781, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !3811)
  %notmask.i = shl nsw i64 -1, %177
  %178 = xor i64 %notmask.i, -1
  br label %for.body.i72, !dbg !3817

for.body.i72:                                     ; preds = %lookup.next6.i, %for.body.lr.ph.i
  %179 = phi i64 [ %.reass, %for.body.lr.ph.i ], [ %193, %lookup.next6.i ]
  %stackalloc.sroa.10.0.in.in38.i = phi i64 [ %20, %for.body.lr.ph.i ], [ %185, %lookup.next6.i ]
    #dbg_value(i64 %179, !3782, !DIExpression(), !3818)
    #dbg_value(ptr undef, !3787, !DIExpression(), !3819)
  %180 = shl i64 %stackalloc.sroa.10.0.in.in38.i, 13, !dbg !3820
  %181 = xor i64 %180, %stackalloc.sroa.10.0.in.in38.i, !dbg !3821
  %182 = lshr i64 %181, 7, !dbg !3822
  %183 = xor i64 %182, %181, !dbg !3823
  %184 = shl i64 %183, 17, !dbg !3824
  %185 = xor i64 %184, %183, !dbg !3825
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3781, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_shl, DW_OP_stack_value), !3826)
  %186 = and i64 %185, %178, !dbg !3827
    #dbg_value(i64 %186, !3783, !DIExpression(), !3828)
    #dbg_value(i64 %20, !3778, !DIExpression(), !3829)
  %.not5.i73 = icmp slt i64 %186, %20, !dbg !3830
  %187 = select i1 %.not5.i73, i64 0, i64 %20, !dbg !3817
  %spec.select.i = sub nsw i64 %186, %187, !dbg !3817
    #dbg_value({ ptr, i64, i64 } poison, !3773, !DIExpression(), !3831)
    #dbg_value(i64 %.ph324, !3776, !DIExpression(), !3832)
    #dbg_value(i64 %spec.select.i, !3783, !DIExpression(), !3833)
  %188 = add i64 %spec.select.i, %.ph324, !dbg !3834
  %.not6.i74 = icmp ult i64 %188, %data.len, !dbg !3835
  br i1 %.not6.i74, label %lookup.next.i76, label %lookup.throw.i75, !dbg !3835

lookup.next.i76:                                  ; preds = %for.body.i72
    #dbg_value({ ptr, i64, i64 } poison, !3773, !DIExpression(), !3836)
    #dbg_value(i64 %179, !3782, !DIExpression(), !3837)
  %.not7.i = icmp ult i64 %179, %data.len, !dbg !3838
  br i1 %.not7.i, label %lookup.next6.i, label %lookup.throw5.i, !dbg !3838

lookup.next6.i:                                   ; preds = %lookup.next.i76
  %189 = getelementptr inbounds i64, ptr %data.data, i64 %188, !dbg !3835
  %190 = load i64, ptr %189, align 8, !dbg !3835
  %191 = getelementptr inbounds i64, ptr %data.data, i64 %179, !dbg !3838
  %192 = load i64, ptr %191, align 8, !dbg !3838
  store i64 %190, ptr %191, align 8, !dbg !3839
  store i64 %192, ptr %189, align 8, !dbg !3840
  %193 = add nuw i64 %179, 1, !dbg !3841
    #dbg_value(i64 %193, !3782, !DIExpression(), !3818)
    #dbg_value(i64 %.ph324, !3776, !DIExpression(), !3842)
    #dbg_value(i64 %20, !3778, !DIExpression(), !3843)
  %.not.i77 = icmp sgt i64 %193, %.reass318, !dbg !3816
  br i1 %.not.i77, label %"slices.breakPatternsOrdered[int].exit", label %for.body.i72, !dbg !3817

lookup.throw.i75:                                 ; preds = %for.body.i72
  tail call fastcc void @runtime.lookupPanic(), !dbg !3835
  unreachable, !dbg !3835

lookup.throw5.i:                                  ; preds = %lookup.next.i76
  tail call fastcc void @runtime.lookupPanic(), !dbg !3838
  unreachable, !dbg !3838

"slices.breakPatternsOrdered[int].exit":          ; preds = %lookup.next6.i, %if.then.i71
  %194 = add nsw i64 %23, -1, !dbg !3844
    #dbg_value(i64 %194, !3230, !DIExpression(), !3844)
  br label %if.done3, !dbg !3262

lookup.throw:                                     ; preds = %cond.true10
  tail call fastcc void @runtime.lookupPanic(), !dbg !3563
  unreachable, !dbg !3563

lookup.throw17:                                   ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3566
  unreachable, !dbg !3566
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc range(i64 0, -1) i64 @"slices.medianOrdered[int]"(ptr nocapture readonly %data.data, i64 %data.len, i64 %a, i64 %b, i64 %c, ptr nocapture nonnull dereferenceable_or_null(8) %swaps) unnamed_addr #5 !dbg !3845 {
entry:
    #dbg_value(ptr %data.data, !3849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3854)
    #dbg_value(i64 %data.len, !3849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3854)
    #dbg_value(i64 poison, !3849, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3854)
    #dbg_value(i64 %a, !3850, !DIExpression(), !3854)
    #dbg_value(i64 %b, !3851, !DIExpression(), !3854)
    #dbg_value(i64 %c, !3852, !DIExpression(), !3854)
    #dbg_value(ptr %swaps, !3853, !DIExpression(), !3854)
    #dbg_value({ ptr, i64, i64 } poison, !3849, !DIExpression(), !3855)
    #dbg_value(i64 %a, !3850, !DIExpression(), !3856)
    #dbg_value(i64 %b, !3851, !DIExpression(), !3857)
    #dbg_value(ptr %swaps, !3853, !DIExpression(), !3858)
    #dbg_value(ptr %data.data, !3859, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3867)
    #dbg_value(i64 %data.len, !3859, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3867)
    #dbg_value(i64 poison, !3859, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3867)
    #dbg_value(i64 %a, !3864, !DIExpression(), !3867)
    #dbg_value(i64 %b, !3865, !DIExpression(), !3867)
    #dbg_value(ptr %swaps, !3866, !DIExpression(), !3867)
    #dbg_value({ ptr, i64, i64 } poison, !3859, !DIExpression(), !3869)
    #dbg_value(i64 %b, !3865, !DIExpression(), !3870)
  %.not.i = icmp ult i64 %b, %data.len, !dbg !3871
  br i1 %.not.i, label %lookup.next.i, label %lookup.throw.i, !dbg !3871

lookup.next.i:                                    ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !3859, !DIExpression(), !3869)
    #dbg_value({ ptr, i64, i64 } poison, !3859, !DIExpression(), !3872)
    #dbg_value(i64 %a, !3864, !DIExpression(), !3873)
  %.not1.i = icmp ult i64 %a, %data.len, !dbg !3874
  br i1 %.not1.i, label %lookup.next4.i, label %lookup.throw3.i, !dbg !3874

lookup.next4.i:                                   ; preds = %lookup.next.i
  %0 = getelementptr inbounds i64, ptr %data.data, i64 %b, !dbg !3871
  %1 = load i64, ptr %0, align 8, !dbg !3871
  %2 = getelementptr inbounds i64, ptr %data.data, i64 %a, !dbg !3874
  %3 = load i64, ptr %2, align 8, !dbg !3874
    #dbg_value(i64 %1, !3293, !DIExpression(), !3875)
    #dbg_value(i64 %3, !3299, !DIExpression(), !3875)
    #dbg_value(i64 %1, !3293, !DIExpression(), !3877)
    #dbg_value(i64 %1, !3293, !DIExpression(), !3878)
    #dbg_value(i64 %3, !3299, !DIExpression(), !3879)
  %4 = icmp slt i64 %1, %3, !dbg !3880
  br i1 %4, label %store.next.i, label %"slices.order2Ordered[int].exit", !dbg !3881

store.next.i:                                     ; preds = %lookup.next4.i
    #dbg_value(ptr %swaps, !3866, !DIExpression(), !3882)
  %5 = load i64, ptr %swaps, align 8, !dbg !3883
  %6 = add i64 %5, 1, !dbg !3883
  store i64 %6, ptr %swaps, align 8, !dbg !3883
    #dbg_value(i64 %b, !3865, !DIExpression(), !3884)
    #dbg_value(i64 %a, !3864, !DIExpression(), !3885)
  br label %"slices.order2Ordered[int].exit", !dbg !3886

lookup.throw.i:                                   ; preds = %entry
  tail call fastcc void @runtime.lookupPanic(), !dbg !3871
  unreachable, !dbg !3871

lookup.throw3.i:                                  ; preds = %lookup.next.i
  tail call fastcc void @runtime.lookupPanic(), !dbg !3874
  unreachable, !dbg !3874

"slices.order2Ordered[int].exit":                 ; preds = %lookup.next4.i, %store.next.i
  %b.pn.i = phi i64 [ %b, %store.next.i ], [ %a, %lookup.next4.i ]
  %a.pn.i = phi i64 [ %a, %store.next.i ], [ %b, %lookup.next4.i ]
    #dbg_value(i64 %b.pn.i, !3850, !DIExpression(), !3887)
    #dbg_value(i64 %a.pn.i, !3851, !DIExpression(), !3888)
    #dbg_value({ ptr, i64, i64 } poison, !3849, !DIExpression(), !3889)
    #dbg_value(i64 %a.pn.i, !3851, !DIExpression(), !3890)
    #dbg_value(i64 %c, !3852, !DIExpression(), !3891)
    #dbg_value(ptr %swaps, !3853, !DIExpression(), !3892)
    #dbg_value(ptr %data.data, !3859, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3893)
    #dbg_value(i64 %data.len, !3859, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3893)
    #dbg_value(i64 poison, !3859, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3893)
    #dbg_value(i64 %a.pn.i, !3864, !DIExpression(), !3893)
    #dbg_value(i64 %c, !3865, !DIExpression(), !3893)
    #dbg_value(ptr %swaps, !3866, !DIExpression(), !3893)
    #dbg_value({ ptr, i64, i64 } poison, !3859, !DIExpression(), !3895)
    #dbg_value(i64 %c, !3865, !DIExpression(), !3896)
  %.not.i1 = icmp ult i64 %c, %data.len, !dbg !3897
  br i1 %.not.i1, label %lookup.next.i3, label %lookup.throw.i2, !dbg !3897

lookup.next.i3:                                   ; preds = %"slices.order2Ordered[int].exit"
    #dbg_value({ ptr, i64, i64 } poison, !3859, !DIExpression(), !3895)
    #dbg_value({ ptr, i64, i64 } poison, !3859, !DIExpression(), !3898)
    #dbg_value(i64 %a.pn.i, !3864, !DIExpression(), !3899)
  %.not1.i4 = icmp ult i64 %a.pn.i, %data.len, !dbg !3900
  br i1 %.not1.i4, label %lookup.next4.i6, label %lookup.throw3.i5, !dbg !3900

lookup.next4.i6:                                  ; preds = %lookup.next.i3
  %7 = getelementptr inbounds i64, ptr %data.data, i64 %c, !dbg !3897
  %8 = load i64, ptr %7, align 8, !dbg !3897
  %9 = getelementptr inbounds i64, ptr %data.data, i64 %a.pn.i, !dbg !3900
  %10 = load i64, ptr %9, align 8, !dbg !3900
    #dbg_value(i64 %8, !3293, !DIExpression(), !3901)
    #dbg_value(i64 %10, !3299, !DIExpression(), !3901)
    #dbg_value(i64 %8, !3293, !DIExpression(), !3903)
    #dbg_value(i64 %8, !3293, !DIExpression(), !3904)
    #dbg_value(i64 %10, !3299, !DIExpression(), !3905)
  %11 = icmp slt i64 %8, %10, !dbg !3906
  br i1 %11, label %store.next.i11, label %"slices.order2Ordered[int].exit12", !dbg !3907

store.next.i11:                                   ; preds = %lookup.next4.i6
    #dbg_value(ptr %swaps, !3866, !DIExpression(), !3908)
  %12 = load i64, ptr %swaps, align 8, !dbg !3909
  %13 = add i64 %12, 1, !dbg !3909
  store i64 %13, ptr %swaps, align 8, !dbg !3909
    #dbg_value(i64 %c, !3865, !DIExpression(), !3910)
    #dbg_value(i64 %a.pn.i, !3864, !DIExpression(), !3911)
  br label %"slices.order2Ordered[int].exit12", !dbg !3912

lookup.throw.i2:                                  ; preds = %"slices.order2Ordered[int].exit"
  tail call fastcc void @runtime.lookupPanic(), !dbg !3897
  unreachable, !dbg !3897

lookup.throw3.i5:                                 ; preds = %lookup.next.i3
  tail call fastcc void @runtime.lookupPanic(), !dbg !3900
  unreachable, !dbg !3900

"slices.order2Ordered[int].exit12":               ; preds = %lookup.next4.i6, %store.next.i11
  %b.pn.i7 = phi i64 [ %c, %store.next.i11 ], [ %a.pn.i, %lookup.next4.i6 ]
    #dbg_value(i64 %b.pn.i7, !3851, !DIExpression(), !3913)
    #dbg_value(i64 poison, !3852, !DIExpression(), !3914)
    #dbg_value({ ptr, i64, i64 } poison, !3849, !DIExpression(), !3915)
    #dbg_value(i64 %b.pn.i, !3850, !DIExpression(), !3916)
    #dbg_value(i64 %b.pn.i7, !3851, !DIExpression(), !3917)
    #dbg_value(ptr %swaps, !3853, !DIExpression(), !3918)
    #dbg_value(ptr %data.data, !3859, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3919)
    #dbg_value(i64 %data.len, !3859, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3919)
    #dbg_value(i64 poison, !3859, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3919)
    #dbg_value(i64 %b.pn.i, !3864, !DIExpression(), !3919)
    #dbg_value(i64 %b.pn.i7, !3865, !DIExpression(), !3919)
    #dbg_value(ptr %swaps, !3866, !DIExpression(), !3919)
    #dbg_value({ ptr, i64, i64 } poison, !3859, !DIExpression(), !3921)
    #dbg_value(i64 %b.pn.i7, !3865, !DIExpression(), !3922)
  %.not.i13 = icmp ult i64 %b.pn.i7, %data.len, !dbg !3923
  br i1 %.not.i13, label %lookup.next.i15, label %lookup.throw.i14, !dbg !3923

lookup.next.i15:                                  ; preds = %"slices.order2Ordered[int].exit12"
    #dbg_value({ ptr, i64, i64 } poison, !3859, !DIExpression(), !3921)
    #dbg_value({ ptr, i64, i64 } poison, !3859, !DIExpression(), !3924)
    #dbg_value(i64 %b.pn.i, !3864, !DIExpression(), !3925)
  %.not1.i16 = icmp ult i64 %b.pn.i, %data.len, !dbg !3926
  br i1 %.not1.i16, label %lookup.next4.i18, label %lookup.throw3.i17, !dbg !3926

lookup.next4.i18:                                 ; preds = %lookup.next.i15
  %14 = getelementptr inbounds i64, ptr %data.data, i64 %b.pn.i7, !dbg !3923
  %15 = load i64, ptr %14, align 8, !dbg !3923
  %16 = getelementptr inbounds i64, ptr %data.data, i64 %b.pn.i, !dbg !3926
  %17 = load i64, ptr %16, align 8, !dbg !3926
    #dbg_value(i64 %15, !3293, !DIExpression(), !3927)
    #dbg_value(i64 %17, !3299, !DIExpression(), !3927)
    #dbg_value(i64 %15, !3293, !DIExpression(), !3929)
    #dbg_value(i64 %15, !3293, !DIExpression(), !3930)
    #dbg_value(i64 %17, !3299, !DIExpression(), !3931)
  %18 = icmp slt i64 %15, %17, !dbg !3932
  br i1 %18, label %store.next.i23, label %"slices.order2Ordered[int].exit24", !dbg !3933

store.next.i23:                                   ; preds = %lookup.next4.i18
    #dbg_value(ptr %swaps, !3866, !DIExpression(), !3934)
  %19 = load i64, ptr %swaps, align 8, !dbg !3935
  %20 = add i64 %19, 1, !dbg !3935
  store i64 %20, ptr %swaps, align 8, !dbg !3935
    #dbg_value(i64 %b.pn.i7, !3865, !DIExpression(), !3936)
    #dbg_value(i64 %b.pn.i, !3864, !DIExpression(), !3937)
  br label %"slices.order2Ordered[int].exit24", !dbg !3938

lookup.throw.i14:                                 ; preds = %"slices.order2Ordered[int].exit12"
  tail call fastcc void @runtime.lookupPanic(), !dbg !3923
  unreachable, !dbg !3923

lookup.throw3.i17:                                ; preds = %lookup.next.i15
  tail call fastcc void @runtime.lookupPanic(), !dbg !3926
  unreachable, !dbg !3926

"slices.order2Ordered[int].exit24":               ; preds = %lookup.next4.i18, %store.next.i23
  %a.pn.i20 = phi i64 [ %b.pn.i, %store.next.i23 ], [ %b.pn.i7, %lookup.next4.i18 ]
    #dbg_value(i64 poison, !3850, !DIExpression(), !3939)
    #dbg_value(i64 %a.pn.i20, !3851, !DIExpression(), !3940)
    #dbg_value(i64 %a.pn.i20, !3851, !DIExpression(), !3941)
  ret i64 %a.pn.i20, !dbg !3942
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @"slices.siftDownOrdered[int]"(ptr nocapture %data.data, i64 %data.len, i64 range(i64 0, 4611686018427387904) %lo, i64 %hi, i64 %first) unnamed_addr #5 !dbg !3943 {
entry:
    #dbg_value(ptr %data.data, !3945, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3951)
    #dbg_value(i64 %data.len, !3945, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3951)
    #dbg_value(i64 poison, !3945, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3951)
    #dbg_value(i64 %hi, !3947, !DIExpression(), !3951)
    #dbg_value(i64 %first, !3948, !DIExpression(), !3951)
    #dbg_value(i64 %lo, !3946, !DIExpression(), !3952)
    #dbg_value(i64 %lo, !3949, !DIExpression(), !3953)
  %0 = shl nuw nsw i64 %lo, 1, !dbg !3954
  %1 = or disjoint i64 %0, 1, !dbg !3955
  %.not30 = icmp slt i64 %1, %hi, !dbg !3956
  br i1 %.not30, label %if.done, label %common.ret, !dbg !3957

common.ret:                                       ; preds = %lookup.next28, %lookup.next16, %entry
  ret void, !dbg !3957

if.done:                                          ; preds = %entry, %lookup.next28
  %2 = phi i64 [ %23, %lookup.next28 ], [ %1, %entry ]
  %3 = phi i64 [ %22, %lookup.next28 ], [ %0, %entry ]
  %4 = phi i64 [ %14, %lookup.next28 ], [ %lo, %entry ]
    #dbg_value(i64 %4, !3949, !DIExpression(), !3958)
    #dbg_value(i64 %2, !3950, !DIExpression(), !3959)
  %5 = add i64 %3, 2, !dbg !3960
    #dbg_value(i64 %hi, !3947, !DIExpression(), !3961)
  %6 = icmp slt i64 %5, %hi, !dbg !3962
  br i1 %6, label %cond.true, label %if.done2, !dbg !3957

cond.true:                                        ; preds = %if.done
    #dbg_value({ ptr, i64, i64 } poison, !3945, !DIExpression(), !3963)
    #dbg_value(i64 %first, !3948, !DIExpression(), !3964)
    #dbg_value(i64 %2, !3950, !DIExpression(), !3965)
  %7 = add i64 %2, %first, !dbg !3966
  %.not9 = icmp ult i64 %7, %data.len, !dbg !3967
  br i1 %.not9, label %lookup.next, label %lookup.throw, !dbg !3967

lookup.next:                                      ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } poison, !3945, !DIExpression(), !3968)
    #dbg_value(i64 %first, !3948, !DIExpression(), !3969)
    #dbg_value(i64 %2, !3950, !DIExpression(), !3970)
  %8 = add nuw i64 %7, 1, !dbg !3971
  %.not10 = icmp ult i64 %8, %data.len, !dbg !3972
  br i1 %.not10, label %lookup.next8, label %lookup.throw7, !dbg !3972

lookup.next8:                                     ; preds = %lookup.next
  %9 = getelementptr inbounds i64, ptr %data.data, i64 %7, !dbg !3967
  %10 = load i64, ptr %9, align 8, !dbg !3967
  %11 = getelementptr inbounds i64, ptr %data.data, i64 %8, !dbg !3972
  %12 = load i64, ptr %11, align 8, !dbg !3972
    #dbg_value(i64 %10, !3293, !DIExpression(), !3973)
    #dbg_value(i64 %12, !3299, !DIExpression(), !3975)
  %13 = icmp slt i64 %10, %12, !dbg !3976
  %spec.select = select i1 %13, i64 %5, i64 %2, !dbg !3957
  br label %if.done2, !dbg !3957

if.done2:                                         ; preds = %lookup.next8, %if.done
  %14 = phi i64 [ %2, %if.done ], [ %spec.select, %lookup.next8 ], !dbg !3977
    #dbg_value({ ptr, i64, i64 } poison, !3945, !DIExpression(), !3978)
    #dbg_value(i64 %first, !3948, !DIExpression(), !3979)
    #dbg_value(i64 %4, !3949, !DIExpression(), !3980)
  %15 = add i64 %4, %first, !dbg !3981
  %.not11 = icmp ult i64 %15, %data.len, !dbg !3982
  br i1 %.not11, label %lookup.next12, label %lookup.throw11, !dbg !3982

lookup.next12:                                    ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } poison, !3945, !DIExpression(), !3983)
    #dbg_value(i64 %first, !3948, !DIExpression(), !3984)
    #dbg_value(i64 %14, !3950, !DIExpression(), !3985)
  %16 = add i64 %14, %first, !dbg !3986
  %.not12 = icmp ult i64 %16, %data.len, !dbg !3987
  br i1 %.not12, label %lookup.next16, label %lookup.throw15, !dbg !3987

lookup.next16:                                    ; preds = %lookup.next12
  %17 = getelementptr inbounds i64, ptr %data.data, i64 %15, !dbg !3982
  %18 = load i64, ptr %17, align 8, !dbg !3982
  %19 = getelementptr inbounds i64, ptr %data.data, i64 %16, !dbg !3987
  %20 = load i64, ptr %19, align 8, !dbg !3987
    #dbg_value(i64 %18, !3293, !DIExpression(), !3988)
    #dbg_value(i64 %20, !3299, !DIExpression(), !3990)
  %21 = icmp slt i64 %18, %20, !dbg !3991
  br i1 %21, label %lookup.next28, label %common.ret, !dbg !3957

lookup.next28:                                    ; preds = %lookup.next16
    #dbg_value(i64 %14, !3950, !DIExpression(), !3992)
    #dbg_value({ ptr, i64, i64 } poison, !3945, !DIExpression(), !3993)
    #dbg_value(i64 %first, !3948, !DIExpression(), !3994)
    #dbg_value(i64 poison, !3949, !DIExpression(), !3995)
  store i64 %20, ptr %17, align 8, !dbg !3996
  store i64 %18, ptr %19, align 8, !dbg !3997
    #dbg_value(i64 %14, !3949, !DIExpression(), !3958)
  %22 = shl i64 %14, 1, !dbg !3954
  %23 = or disjoint i64 %22, 1, !dbg !3955
    #dbg_value(i64 %23, !3950, !DIExpression(), !3998)
    #dbg_value(i64 %hi, !3947, !DIExpression(), !3999)
  %.not = icmp slt i64 %23, %hi, !dbg !3956
  br i1 %.not, label %if.done, label %common.ret, !dbg !3957

lookup.throw:                                     ; preds = %cond.true
  tail call fastcc void @runtime.lookupPanic(), !dbg !3967
  unreachable, !dbg !3967

lookup.throw7:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3972
  unreachable, !dbg !3972

lookup.throw11:                                   ; preds = %if.done2
  tail call fastcc void @runtime.lookupPanic(), !dbg !3982
  unreachable, !dbg !3982

lookup.throw15:                                   ; preds = %lookup.next12
  tail call fastcc void @runtime.lookupPanic(), !dbg !3987
  unreachable, !dbg !3987
}

; Function Attrs: nofree nounwind uwtable(sync)
define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #5 !dbg !4000 {
entry:
    #dbg_value(ptr %arr.data, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4010)
    #dbg_value(i64 %arr.len, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4010)
    #dbg_value(i64 %arr.cap, !4005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4010)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4010)
    #dbg_value(i64 0, !4007, !DIExpression(), !4011)
    #dbg_value(i64 0, !4008, !DIExpression(), !4012)
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4013)
    #dbg_value(ptr %arr.data, !4014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4019)
    #dbg_value(i64 %arr.len, !4014, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4019)
    #dbg_value(i64 %arr.cap, !4014, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4019)
    #dbg_value({ ptr, i64, i64 } poison, !4014, !DIExpression(), !4021)
    #dbg_value(ptr %arr.data, !4022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4026)
    #dbg_value(i64 %arr.len, !4022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4026)
    #dbg_value(i64 %arr.cap, !4022, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4026)
    #dbg_value({ ptr, i64, i64 } poison, !4022, !DIExpression(), !4028)
    #dbg_value(i64 %arr.len, !4025, !DIExpression(), !4029)
    #dbg_value(i64 %arr.len, !3804, !DIExpression(), !4030)
  %n.fr = freeze i64 %n, !dbg !4032
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %arr.len, i1 false), !dbg !4030
  %1 = sub nuw nsw i64 64, %0, !dbg !4030
  tail call fastcc void @"slices.pdqsortOrdered[int]"(ptr %arr.data, i64 %arr.len, i64 0, i64 %arr.len, i64 %1), !dbg !4033
    #dbg_value(i64 0, !4009, !DIExpression(), !4034)
  %2 = icmp sgt i64 %n.fr, 0, !dbg !4035
  br i1 %2, label %for.body.preheader, label %for.done, !dbg !4036

for.body.preheader:                               ; preds = %entry
  %3 = add nsw i64 %n.fr, -1, !dbg !4032
  %.not.not = icmp ugt i64 %arr.len, %3, !dbg !4032
  br i1 %.not.not, label %for.body, label %lookup.throw, !dbg !4032

for.body:                                         ; preds = %for.body.preheader, %for.body
  %4 = phi i64 [ %13, %for.body ], [ 0, %for.body.preheader ]
  %5 = phi i64 [ %12, %for.body ], [ 0, %for.body.preheader ]
  %6 = phi i64 [ %10, %for.body ], [ 0, %for.body.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !4005, !DIExpression(), !4037)
    #dbg_value(i64 %4, !4009, !DIExpression(), !4038)
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4, !dbg !4032
  %8 = load i64, ptr %7, align 8, !dbg !4032
    #dbg_value(i64 %5, !4008, !DIExpression(), !4039)
  %.not2 = icmp sge i64 %8, %5, !dbg !4040
  %9 = zext i1 %.not2 to i64, !dbg !4036
  %10 = add i64 %6, %9, !dbg !4036
  %11 = select i1 %.not2, i64 %8, i64 0, !dbg !4036
  %12 = add i64 %11, %5, !dbg !4036
  %13 = add nuw nsw i64 %4, 1, !dbg !4041
    #dbg_value(i64 %13, !4009, !DIExpression(), !4042)
    #dbg_value(i64 %n, !4006, !DIExpression(), !4043)
  %exitcond.not = icmp eq i64 %13, %n.fr, !dbg !4035
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !4036

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %10, %for.body ], !dbg !4011
    #dbg_value(i64 %.lcssa, !4007, !DIExpression(), !4044)
  ret i64 %.lcssa, !dbg !4045

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !4032
  unreachable, !dbg !4032
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

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
!1935 = !DILocation(line: 50, column: 12, scope: !1928)
!1936 = !DILocation(line: 50, column: 14, scope: !1928)
!1937 = !DILocalVariable(name: "x", arg: 1, scope: !1938, file: !1939, line: 153, type: !1942)
!1938 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Swap", linkageName: "(*sync/atomic.Uint32).Swap", scope: !1939, file: !1939, line: 153, type: !1940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !1943)
!1939 = !DIFile(filename: "type.go", directory: "/usr/local/go/src/sync/atomic")
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!1942, !43}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64, dwarfAddressSpace: 0)
!1943 = !{!1937, !1944}
!1944 = !DILocalVariable(name: "new", arg: 2, scope: !1938, file: !1939, line: 153, type: !43)
!1945 = !DILocation(line: 153, column: 69, scope: !1938, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 50, column: 24, scope: !1928)
!1947 = !DILocation(line: 153, column: 74, scope: !1938, inlinedAt: !1946)
!1948 = !DILocalVariable(name: "addr", arg: 1, scope: !1949, file: !1950, line: 77, type: !1953)
!1949 = distinct !DISubprogram(name: "sync/atomic.SwapUint32", linkageName: "sync/atomic.SwapUint32", scope: !1950, file: !1950, line: 77, type: !1951, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !1954)
!1950 = !DIFile(filename: "doc.go", directory: "/usr/local/go/src/sync/atomic")
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!1953, !43}
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64, dwarfAddressSpace: 0)
!1954 = !{!1948, !1955}
!1955 = !DILocalVariable(name: "new", arg: 2, scope: !1949, file: !1950, line: 77, type: !43)
!1956 = !DILocation(line: 77, column: 6, scope: !1949, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 153, column: 67, scope: !1938, inlinedAt: !1946)
!1958 = !DILocation(line: 50, column: 29, scope: !1928)
!1959 = !DILocation(line: 0, scope: !1928)
!1960 = !DILocation(line: 52, column: 8, scope: !1928)
!1961 = !DILocation(line: 55, column: 3, scope: !1928)
!1962 = !DILocalVariable(name: "f", arg: 1, scope: !1963, file: !1964, line: 53, type: !1967)
!1963 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wake", linkageName: "(*internal/futex.Futex).Wake", scope: !1964, file: !1964, line: 53, type: !1965, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1450, retainedNodes: !1968)
!1964 = !DIFile(filename: "futex.go", directory: "/usr/local/lib/tinygo/src/internal/futex")
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!1967}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64, dwarfAddressSpace: 0)
!1968 = !{!1962}
!1969 = !DILocation(line: 54, column: 46, scope: !1963, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 55, column: 15, scope: !1928)
!1971 = !DILocation(line: 54, column: 19, scope: !1963, inlinedAt: !1970)
!1972 = !DILocation(line: 57, column: 2, scope: !1928)
!1973 = distinct !DISubprogram(name: "internal/task.taskExited", linkageName: "tinygo_task_exited", scope: !2, file: !2, line: 125, type: !1974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !1976)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!3}
!1976 = !{!1977, !1978, !1979, !1981}
!1977 = !DILocalVariable(name: "t", arg: 1, scope: !1973, file: !2, line: 125, type: !3)
!1978 = !DILocalVariable(name: "found", scope: !1973, file: !2, line: 133, type: !47)
!1979 = !DILocalVariable(name: "q", scope: !1973, file: !2, line: 134, type: !1980)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64, align: 64, dwarfAddressSpace: 0)
!1981 = !DILocalVariable(name: "otherGoroutines", scope: !1973, file: !2, line: 99, type: !43)
!1982 = !DILocation(line: 125, column: 6, scope: !1973)
!1983 = !DILocalVariable(name: "m", arg: 1, scope: !1984, file: !54, line: 31, type: !1931)
!1984 = distinct !DISubprogram(name: "(*internal/task.Mutex).Lock", linkageName: "(*internal/task.Mutex).Lock", scope: !54, file: !54, line: 31, type: !1985, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !1986)
!1985 = !DISubroutineType(types: !1930)
!1986 = !{!1983}
!1987 = !DILocation(line: 33, column: 5, scope: !1984, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 132, column: 21, scope: !1973)
!1989 = !DILocalVariable(name: "x", arg: 1, scope: !1990, file: !1939, line: 156, type: !1942)
!1990 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).CompareAndSwap", linkageName: "(*sync/atomic.Uint32).CompareAndSwap", scope: !1939, file: !1939, line: 156, type: !1991, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !1993)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!1942, !43, !43}
!1993 = !{!1989, !1994, !1995}
!1994 = !DILocalVariable(name: "old", arg: 2, scope: !1990, file: !1939, line: 156, type: !43)
!1995 = !DILocalVariable(name: "new", arg: 3, scope: !1990, file: !1939, line: 156, type: !43)
!1996 = !DILocation(line: 157, column: 31, scope: !1990, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 33, column: 27, scope: !1984, inlinedAt: !1988)
!1998 = !DILocation(line: 157, column: 36, scope: !1990, inlinedAt: !1997)
!1999 = !DILocation(line: 157, column: 41, scope: !1990, inlinedAt: !1997)
!2000 = !DILocalVariable(name: "addr", arg: 1, scope: !2001, file: !1950, line: 99, type: !1953)
!2001 = distinct !DISubprogram(name: "sync/atomic.CompareAndSwapUint32", linkageName: "sync/atomic.CompareAndSwapUint32", scope: !1950, file: !1950, line: 99, type: !2002, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!1953, !43, !43}
!2004 = !{!2000, !2005, !2006}
!2005 = !DILocalVariable(name: "old", arg: 2, scope: !2001, file: !1950, line: 99, type: !43)
!2006 = !DILocalVariable(name: "new", arg: 3, scope: !2001, file: !1950, line: 99, type: !43)
!2007 = !DILocation(line: 99, column: 6, scope: !2001, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 157, column: 29, scope: !1990, inlinedAt: !1997)
!2009 = !DILocation(line: 0, scope: !1984, inlinedAt: !1988)
!2010 = !DILocation(line: 43, column: 6, scope: !1984, inlinedAt: !1988)
!2011 = !DILocation(line: 153, column: 69, scope: !1938, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 43, column: 18, scope: !1984, inlinedAt: !1988)
!2013 = !DILocation(line: 153, column: 74, scope: !1938, inlinedAt: !2012)
!2014 = !DILocation(line: 77, column: 6, scope: !1949, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 153, column: 67, scope: !1938, inlinedAt: !2012)
!2016 = !DILocation(line: 43, column: 22, scope: !1984, inlinedAt: !1988)
!2017 = !DILocation(line: 45, column: 3, scope: !1984, inlinedAt: !1988)
!2018 = !DILocalVariable(name: "f", arg: 1, scope: !2019, file: !1964, line: 25, type: !1967)
!2019 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wait", linkageName: "(*internal/futex.Futex).Wait", scope: !1964, file: !1964, line: 25, type: !2020, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1450, retainedNodes: !2022)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!1967, !43}
!2022 = !{!2018, !2023}
!2023 = !DILocalVariable(name: "cmp", arg: 2, scope: !2019, file: !1964, line: 25, type: !43)
!2024 = !DILocation(line: 26, column: 46, scope: !2019, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 45, column: 15, scope: !1984, inlinedAt: !1988)
!2026 = !DILocation(line: 26, column: 58, scope: !2019, inlinedAt: !2025)
!2027 = !DILocation(line: 26, column: 19, scope: !2019, inlinedAt: !2025)
!2028 = !DILocation(line: 133, column: 2, scope: !1973)
!2029 = !DILocation(line: 134, column: 6, scope: !1973)
!2030 = !DILocation(line: 134, column: 25, scope: !1973)
!2031 = !DILocation(line: 134, column: 28, scope: !1973)
!2032 = !DILocation(line: 0, scope: !1973)
!2033 = !DILocation(line: 134, column: 52, scope: !1973)
!2034 = !DILocation(line: 134, column: 26, scope: !1973)
!2035 = !DILocation(line: 135, column: 7, scope: !1973)
!2036 = !DILocation(line: 135, column: 12, scope: !1973)
!2037 = !DILocation(line: 135, column: 9, scope: !1973)
!2038 = !DILocation(line: 134, column: 36, scope: !1973)
!2039 = !DILocation(line: 136, column: 5, scope: !1973)
!2040 = !DILocation(line: 136, column: 9, scope: !1973)
!2041 = !DILocation(line: 136, column: 17, scope: !1973)
!2042 = !DILocation(line: 136, column: 4, scope: !1973)
!2043 = !DILocation(line: 137, column: 4, scope: !1973)
!2044 = !DILocation(line: 141, column: 2, scope: !1973)
!2045 = !DILocation(line: 50, column: 12, scope: !1928, inlinedAt: !2046)
!2046 = distinct !DILocation(line: 142, column: 23, scope: !1973)
!2047 = !DILocation(line: 153, column: 69, scope: !1938, inlinedAt: !2048)
!2048 = distinct !DILocation(line: 50, column: 24, scope: !1928, inlinedAt: !2046)
!2049 = !DILocation(line: 153, column: 74, scope: !1938, inlinedAt: !2048)
!2050 = !DILocation(line: 77, column: 6, scope: !1949, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 153, column: 67, scope: !1938, inlinedAt: !2048)
!2052 = !DILocation(line: 50, column: 29, scope: !1928, inlinedAt: !2046)
!2053 = !DILocation(line: 0, scope: !1928, inlinedAt: !2046)
!2054 = !DILocation(line: 52, column: 8, scope: !1928, inlinedAt: !2046)
!2055 = !DILocation(line: 55, column: 3, scope: !1928, inlinedAt: !2046)
!2056 = !DILocation(line: 54, column: 46, scope: !1963, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 55, column: 15, scope: !1928, inlinedAt: !2046)
!2058 = !DILocation(line: 54, column: 19, scope: !1963, inlinedAt: !2057)
!2059 = !DILocation(line: 145, column: 6, scope: !1973)
!2060 = !DILocation(line: 148, column: 2, scope: !1973)
!2061 = !DILocation(line: 142, column: 23, scope: !1973)
!2062 = !DILocation(line: 146, column: 15, scope: !1973)
!2063 = distinct !DISubprogram(name: "internal/task.tingyo_task_gc_pause", linkageName: "tinygo_task_gc_pause", scope: !2, file: !2, line: 266, type: !2064, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!60}
!2066 = !{!2067, !2068}
!2067 = !DILocalVariable(name: "sig", arg: 1, scope: !2063, file: !2, line: 266, type: !60)
!2068 = !DILocalVariable(name: "stackBottom", scope: !2063, file: !2, line: 28, type: !21)
!2069 = !DILocation(line: 266, column: 6, scope: !2063)
!2070 = !DILocation(line: 62, column: 34, scope: !2071, inlinedAt: !2075)
!2071 = distinct !DISubprogram(name: "internal/task.Current", linkageName: "internal/task.Current", scope: !2, file: !2, line: 61, type: !2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !2073)
!2072 = !DISubroutineType(types: !15)
!2073 = !{!2074}
!2074 = !DILocalVariable(name: "t", scope: !2071, file: !2, line: 62, type: !3)
!2075 = distinct !DILocation(line: 268, column: 9, scope: !2063)
!2076 = !DILocation(line: 63, column: 5, scope: !2071, inlinedAt: !2075)
!2077 = !DILocation(line: 63, column: 7, scope: !2071, inlinedAt: !2075)
!2078 = !DILocation(line: 0, scope: !2071, inlinedAt: !2075)
!2079 = !DILocation(line: 64, column: 15, scope: !2071, inlinedAt: !2075)
!2080 = !DILocation(line: 66, column: 9, scope: !2071, inlinedAt: !2075)
!2081 = !DILocation(line: 58, column: 6, scope: !2082, inlinedAt: !2083)
!2082 = distinct !DISubprogram(name: "runtime.stacksave", linkageName: "runtime.stacksave", scope: !1531, file: !1531, line: 58, type: !2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2083 = distinct !DILocation(line: 268, column: 49, scope: !2063)
!2084 = !DILocation(line: 268, column: 39, scope: !2063)
!2085 = !DILocation(line: 268, column: 18, scope: !2063)
!2086 = !DILocalVariable(name: "wg", arg: 1, scope: !2087, file: !2, line: 163, type: !2090)
!2087 = distinct !DISubprogram(name: "(*internal/task.waitGroup).done", linkageName: "(*internal/task.waitGroup).done", scope: !2, file: !2, line: 163, type: !2088, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !2091)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!2090}
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64, dwarfAddressSpace: 0)
!2091 = !{!2086}
!2092 = !DILocation(line: 164, column: 5, scope: !2087, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 271, column: 20, scope: !2063)
!2094 = !DILocalVariable(name: "x", arg: 1, scope: !2095, file: !1939, line: 161, type: !1942)
!2095 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Add", linkageName: "(*sync/atomic.Uint32).Add", scope: !1939, file: !1939, line: 161, type: !1940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !2096)
!2096 = !{!2094, !2097}
!2097 = !DILocalVariable(name: "delta", arg: 2, scope: !2095, file: !1939, line: 161, type: !43)
!2098 = !DILocation(line: 161, column: 69, scope: !2095, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 164, column: 13, scope: !2087, inlinedAt: !2093)
!2100 = !DILocation(line: 161, column: 74, scope: !2095, inlinedAt: !2099)
!2101 = !DILocalVariable(name: "addr", arg: 1, scope: !2102, file: !1950, line: 123, type: !1953)
!2102 = distinct !DISubprogram(name: "sync/atomic.AddUint32", linkageName: "sync/atomic.AddUint32", scope: !1950, file: !1950, line: 123, type: !1951, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !2103)
!2103 = !{!2101, !2104}
!2104 = !DILocalVariable(name: "delta", arg: 2, scope: !2102, file: !1950, line: 123, type: !43)
!2105 = !DILocation(line: 123, column: 6, scope: !2102, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 161, column: 67, scope: !2095, inlinedAt: !2099)
!2107 = !DILocation(line: 164, column: 26, scope: !2087, inlinedAt: !2093)
!2108 = !DILocation(line: 0, scope: !2087, inlinedAt: !2093)
!2109 = !DILocation(line: 165, column: 3, scope: !2087, inlinedAt: !2093)
!2110 = !DILocalVariable(name: "f", arg: 1, scope: !2111, file: !1964, line: 58, type: !1967)
!2111 = distinct !DISubprogram(name: "(*internal/futex.Futex).WakeAll", linkageName: "(*internal/futex.Futex).WakeAll", scope: !1964, file: !1964, line: 58, type: !1965, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1450, retainedNodes: !2112)
!2112 = !{!2110}
!2113 = !DILocation(line: 59, column: 50, scope: !2111, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 165, column: 15, scope: !2087, inlinedAt: !2093)
!2115 = !DILocation(line: 59, column: 23, scope: !2111, inlinedAt: !2114)
!2116 = !DILocalVariable(name: "x", arg: 1, scope: !2117, file: !1939, line: 147, type: !1942)
!2117 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Load", linkageName: "(*sync/atomic.Uint32).Load", scope: !1939, file: !1939, line: 147, type: !2118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !2120)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!1942}
!2120 = !{!2116}
!2121 = !DILocation(line: 147, column: 53, scope: !2117, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 274, column: 18, scope: !2063)
!2123 = !DILocalVariable(name: "addr", arg: 1, scope: !2124, file: !1950, line: 183, type: !1953)
!2124 = distinct !DISubprogram(name: "sync/atomic.LoadUint32", linkageName: "sync/atomic.LoadUint32", scope: !1950, file: !1950, line: 183, type: !2125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !2127)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!1953}
!2127 = !{!2123}
!2128 = !DILocation(line: 183, column: 6, scope: !2124, inlinedAt: !2129)
!2129 = distinct !DILocation(line: 147, column: 51, scope: !2117, inlinedAt: !2122)
!2130 = !DILocation(line: 274, column: 21, scope: !2063)
!2131 = !DILocation(line: 0, scope: !2063)
!2132 = !DILocation(line: 26, column: 46, scope: !2019, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 275, column: 15, scope: !2063)
!2134 = !DILocation(line: 26, column: 58, scope: !2019, inlinedAt: !2133)
!2135 = !DILocation(line: 26, column: 19, scope: !2019, inlinedAt: !2133)
!2136 = !DILocation(line: 164, column: 5, scope: !2087, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 279, column: 20, scope: !2063)
!2138 = !DILocation(line: 161, column: 69, scope: !2095, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 164, column: 13, scope: !2087, inlinedAt: !2137)
!2140 = !DILocation(line: 161, column: 74, scope: !2095, inlinedAt: !2139)
!2141 = !DILocation(line: 123, column: 6, scope: !2102, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 161, column: 67, scope: !2095, inlinedAt: !2139)
!2143 = !DILocation(line: 164, column: 26, scope: !2087, inlinedAt: !2137)
!2144 = !DILocation(line: 0, scope: !2087, inlinedAt: !2137)
!2145 = !DILocation(line: 165, column: 3, scope: !2087, inlinedAt: !2137)
!2146 = !DILocation(line: 59, column: 50, scope: !2111, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 165, column: 15, scope: !2087, inlinedAt: !2137)
!2148 = !DILocation(line: 59, column: 23, scope: !2111, inlinedAt: !2147)
!2149 = !DILocation(line: 280, column: 2, scope: !2063)
!2150 = distinct !DISubprogram(name: "runtime.runtimePanic", linkageName: "runtime.runtimePanic", scope: !87, file: !87, line: 85, type: !2151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2153)
!2151 = !DISubroutineType(cc: DW_CC_nocall, types: !2152)
!2152 = !{!319}
!2153 = !{!2154}
!2154 = !DILocalVariable(name: "msg", arg: 1, scope: !2150, file: !87, line: 85, type: !319)
!2155 = !DILocation(line: 85, column: 6, scope: !2150)
!2156 = !DILocation(line: 88, column: 30, scope: !2150)
!2157 = !DILocation(line: 88, column: 35, scope: !2150)
!2158 = !DILocation(line: 88, column: 16, scope: !2150)
!2159 = !DILocation(line: 89, column: 2, scope: !2150)
!2160 = distinct !DISubprogram(name: "runtime.runtimePanicAt", linkageName: "runtime.runtimePanicAt", scope: !87, file: !87, line: 91, type: !2161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2163)
!2161 = !DISubroutineType(cc: DW_CC_nocall, types: !2162)
!2162 = !{!9, !319}
!2163 = !{!2164, !2165}
!2164 = !DILocalVariable(name: "addr", arg: 1, scope: !2160, file: !87, line: 91, type: !9)
!2165 = !DILocalVariable(name: "msg", arg: 2, scope: !2160, file: !87, line: 91, type: !319)
!2166 = !DILocation(line: 91, column: 6, scope: !2160)
!2167 = !DILocation(line: 99, column: 14, scope: !2160)
!2168 = !DILocation(line: 100, column: 20, scope: !2160)
!2169 = !DILocation(line: 100, column: 19, scope: !2160)
!2170 = !DILocation(line: 100, column: 26, scope: !2160)
!2171 = !DILocation(line: 100, column: 11, scope: !2160)
!2172 = !DILocation(line: 101, column: 14, scope: !2160)
!2173 = !DILocation(line: 105, column: 14, scope: !2160)
!2174 = !DILocation(line: 105, column: 13, scope: !2160)
!2175 = !DILocation(line: 106, column: 9, scope: !2160)
!2176 = !DILocation(line: 107, column: 7, scope: !2160)
!2177 = !DILocation(line: 108, column: 2, scope: !2160)
!2178 = distinct !DISubprogram(name: "runtime.printstring", linkageName: "runtime.printstring", scope: !1605, file: !1605, line: 12, type: !2151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2179)
!2179 = !{!2180, !2181}
!2180 = !DILocalVariable(name: "s", arg: 1, scope: !2178, file: !1605, line: 12, type: !319)
!2181 = !DILocalVariable(name: "i", scope: !2178, file: !1605, line: 13, type: !2182)
!2182 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!2183 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2189)
!2184 = distinct !DISubprogram(name: "runtime.putchar", linkageName: "runtime.putchar", scope: !113, file: !113, line: 214, type: !2185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2187)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!183}
!2187 = !{!2188}
!2188 = !DILocalVariable(name: "c", arg: 1, scope: !2184, file: !113, line: 214, type: !183)
!2189 = distinct !DILocation(line: 14, column: 10, scope: !2178)
!2190 = !DILocation(line: 12, column: 6, scope: !2178)
!2191 = !DILocation(line: 13, column: 6, scope: !2178)
!2192 = !DILocation(line: 13, column: 22, scope: !2178)
!2193 = !DILocation(line: 0, scope: !2178)
!2194 = !DILocation(line: 14, column: 13, scope: !2178)
!2195 = !DILocation(line: 14, column: 11, scope: !2178)
!2196 = !DILocation(line: 14, column: 12, scope: !2178)
!2197 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2189)
!2198 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2189)
!2199 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2189)
!2200 = !DILocation(line: 13, column: 26, scope: !2178)
!2201 = !DILocation(line: 13, column: 14, scope: !2178)
!2202 = !DILocation(line: 13, column: 16, scope: !2178)
!2203 = !DILocation(line: 16, column: 2, scope: !2178)
!2204 = distinct !DISubprogram(name: "runtime.printptr", linkageName: "runtime.printptr", scope: !1605, file: !1605, line: 371, type: !2205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2207)
!2205 = !DISubroutineType(cc: DW_CC_nocall, types: !2206)
!2206 = !{!21}
!2207 = !{!2208, !2209, !2210}
!2208 = !DILocalVariable(name: "ptr", arg: 1, scope: !2204, file: !1605, line: 371, type: !21)
!2209 = !DILocalVariable(name: "i", scope: !2204, file: !1605, line: 378, type: !2182)
!2210 = !DILocalVariable(name: "nibble", scope: !2204, file: !1605, line: 379, type: !183)
!2211 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 383, column: 11, scope: !2204)
!2213 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2214)
!2214 = distinct !DILocation(line: 381, column: 11, scope: !2204)
!2215 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 377, column: 9, scope: !2204)
!2217 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 376, column: 9, scope: !2204)
!2219 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 14, column: 10, scope: !2178, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 373, column: 14, scope: !2204)
!2222 = !DILocation(line: 372, column: 5, scope: !2204)
!2223 = !DILocation(line: 372, column: 9, scope: !2204)
!2224 = !DILocation(line: 0, scope: !2204)
!2225 = !DILocation(line: 14, column: 13, scope: !2178, inlinedAt: !2221)
!2226 = !DILocation(line: 14, column: 11, scope: !2178, inlinedAt: !2221)
!2227 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2220)
!2228 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2220)
!2229 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2220)
!2230 = !DILocation(line: 13, column: 14, scope: !2178, inlinedAt: !2221)
!2231 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2218)
!2232 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2218)
!2233 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2218)
!2234 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2216)
!2235 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2216)
!2236 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2216)
!2237 = !DILocation(line: 378, column: 6, scope: !2204)
!2238 = !DILocation(line: 378, column: 14, scope: !2204)
!2239 = !DILocation(line: 379, column: 18, scope: !2204)
!2240 = !DILocation(line: 379, column: 22, scope: !2204)
!2241 = !DILocation(line: 379, column: 17, scope: !2204)
!2242 = !DILocation(line: 380, column: 6, scope: !2204)
!2243 = !DILocation(line: 380, column: 13, scope: !2204)
!2244 = !DILocation(line: 381, column: 12, scope: !2204)
!2245 = !DILocation(line: 381, column: 19, scope: !2204)
!2246 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2214)
!2247 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2214)
!2248 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2214)
!2249 = !DILocation(line: 385, column: 3, scope: !2204)
!2250 = !DILocation(line: 378, column: 45, scope: !2204)
!2251 = !DILocation(line: 378, column: 16, scope: !2204)
!2252 = !DILocation(line: 383, column: 12, scope: !2204)
!2253 = !DILocation(line: 383, column: 24, scope: !2204)
!2254 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2212)
!2255 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2212)
!2256 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2212)
!2257 = distinct !DISubprogram(name: "runtime.printnl", linkageName: "runtime.printnl", scope: !1605, file: !1605, line: 286, type: !2258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2258 = !DISubroutineType(cc: DW_CC_nocall, types: !15)
!2259 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 290, column: 9, scope: !2257)
!2261 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2260)
!2262 = !DILocation(line: 214, column: 6, scope: !2184, inlinedAt: !2260)
!2263 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2260)
!2264 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2260)
!2265 = !DILocation(line: 291, column: 2, scope: !2257)
!2266 = distinct !DISubprogram(name: "runtime.nilPanic", linkageName: "runtime.nilPanic", scope: !87, file: !87, line: 183, type: !2258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2267 = !DILocation(line: 184, column: 30, scope: !2266)
!2268 = !DILocation(line: 184, column: 16, scope: !2266)
!2269 = !DILocation(line: 185, column: 2, scope: !2266)
!2270 = distinct !DISubprogram(name: "runtime.lookupPanic", linkageName: "runtime.lookupPanic", scope: !87, file: !87, line: 193, type: !2258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2271 = !DILocation(line: 194, column: 30, scope: !2270)
!2272 = !DILocation(line: 194, column: 16, scope: !2270)
!2273 = !DILocation(line: 195, column: 2, scope: !2270)
!2274 = distinct !DISubprogram(name: "runtime.panicOrGoexit", linkageName: "runtime.panicOrGoexit", scope: !87, file: !87, line: 58, type: !2275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2278)
!2275 = !DISubroutineType(cc: DW_CC_nocall, types: !2276)
!2276 = !{!454, !2277}
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.panicState", baseType: !45)
!2278 = !{!2279, !2280, !2281, !2293, !2294}
!2279 = !DILocalVariable(name: "message", arg: 1, scope: !2274, file: !87, line: 58, type: !454)
!2280 = !DILocalVariable(name: "panicking", arg: 2, scope: !2274, file: !87, line: 58, type: !2277)
!2281 = !DILocalVariable(name: "frame", scope: !2274, file: !87, line: 65, type: !2282)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64, align: 64, dwarfAddressSpace: 0)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.deferFrame", baseType: !2284)
!2284 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !2285)
!2285 = !{!2286, !2287, !2288, !2290, !2291, !2292}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "JumpSP", baseType: !9, size: 64, align: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "JumpPC", baseType: !9, size: 64, align: 64, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraRegs", baseType: !2289, align: 64, offset: 128)
!2289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, align: 64, elements: !920)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "Previous", baseType: !2282, size: 64, align: 64, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "Panicking", baseType: !2277, size: 8, align: 8, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "PanicValue", baseType: !454, size: 128, align: 64, offset: 256)
!2293 = !DILocalVariable(name: "PanicValue", scope: !2274, file: !87, line: 42, type: !454)
!2294 = !DILocalVariable(name: "Panicking", scope: !2274, file: !87, line: 41, type: !2277)
!2295 = !DILocation(line: 58, column: 6, scope: !2274)
!2296 = !DILocation(line: 62, column: 34, scope: !2071, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 65, column: 38, scope: !2274)
!2298 = !DILocation(line: 62, column: 2, scope: !2071, inlinedAt: !2297)
!2299 = !DILocation(line: 63, column: 5, scope: !2071, inlinedAt: !2297)
!2300 = !DILocation(line: 63, column: 7, scope: !2071, inlinedAt: !2297)
!2301 = !DILocation(line: 0, scope: !2071, inlinedAt: !2297)
!2302 = !DILocation(line: 64, column: 15, scope: !2071, inlinedAt: !2297)
!2303 = !DILocation(line: 66, column: 9, scope: !2071, inlinedAt: !2297)
!2304 = !DILocation(line: 65, column: 41, scope: !2274)
!2305 = !DILocation(line: 65, column: 3, scope: !2274)
!2306 = !DILocation(line: 66, column: 6, scope: !2274)
!2307 = !DILocation(line: 66, column: 12, scope: !2274)
!2308 = !DILocation(line: 0, scope: !2274)
!2309 = !DILocation(line: 67, column: 4, scope: !2274)
!2310 = !DILocation(line: 67, column: 23, scope: !2274)
!2311 = !DILocation(line: 67, column: 10, scope: !2274)
!2312 = !DILocation(line: 68, column: 4, scope: !2274)
!2313 = !DILocation(line: 68, column: 22, scope: !2274)
!2314 = !DILocation(line: 68, column: 10, scope: !2274)
!2315 = !DILocation(line: 69, column: 19, scope: !2274)
!2316 = !DILocation(line: 69, column: 18, scope: !2274)
!2317 = !DILocation(line: 73, column: 5, scope: !2274)
!2318 = !DILocation(line: 78, column: 13, scope: !2274)
!2319 = !DILocation(line: 79, column: 11, scope: !2274)
!2320 = !DILocation(line: 79, column: 10, scope: !2274)
!2321 = !DILocation(line: 80, column: 9, scope: !2274)
!2322 = !DILocation(line: 81, column: 7, scope: !2274)
!2323 = !DILocation(line: 82, column: 2, scope: !2274)
!2324 = distinct !DISubprogram(name: "runtime.printitf", linkageName: "runtime.printitf", scope: !1605, file: !1605, line: 293, type: !2325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2327)
!2325 = !DISubroutineType(cc: DW_CC_nocall, types: !2326)
!2326 = !{!454}
!2327 = !{!2328, !2329, !2330, !2331, !2332, !2334, !2335, !2336, !2338, !2339, !2340, !2341, !2342, !2343, !2345, !2346, !2348, !2350, !2351, !2352, !2354}
!2328 = !DILocalVariable(name: "msg", arg: 1, scope: !2324, file: !1605, line: 293, type: !454)
!2329 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !47)
!2330 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !2182)
!2331 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !134)
!2332 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !2333)
!2333 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!2334 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !60)
!2335 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !1702)
!2336 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !2337)
!2337 = !DIBasicType(name: "uint", size: 64, encoding: DW_ATE_unsigned)
!2338 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !45)
!2339 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !141)
!2340 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !43)
!2341 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !11)
!2342 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !21)
!2343 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !2344)
!2344 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!2345 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !472)
!2346 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !2347)
!2347 = !DIBasicType(name: "complex64", size: 64, encoding: DW_ATE_complex_float)
!2348 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !2349)
!2349 = !DIBasicType(name: "complex128", size: 128, encoding: DW_ATE_complex_float)
!2350 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !319)
!2351 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !453)
!2352 = !DILocalVariable(name: "msg", scope: !2324, file: !1605, line: 294, type: !2353)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.stringer", baseType: !454)
!2354 = !DILocalVariable(name: "itf", scope: !2324, file: !1605, line: 345, type: !454)
!2355 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 14, column: 10, scope: !2178, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 338, column: 14, scope: !2324)
!2358 = !DILocation(line: 293, column: 6, scope: !2324)
!2359 = !DILocation(line: 294, column: 16, scope: !2324)
!2360 = !DILocation(line: 338, column: 15, scope: !2324)
!2361 = !DILocation(line: 12, column: 6, scope: !2178, inlinedAt: !2357)
!2362 = !DILocation(line: 13, column: 6, scope: !2178, inlinedAt: !2357)
!2363 = !DILocation(line: 13, column: 22, scope: !2178, inlinedAt: !2357)
!2364 = !DILocation(line: 0, scope: !2178, inlinedAt: !2357)
!2365 = !DILocation(line: 14, column: 13, scope: !2178, inlinedAt: !2357)
!2366 = !DILocation(line: 14, column: 11, scope: !2178, inlinedAt: !2357)
!2367 = !DILocation(line: 14, column: 12, scope: !2178, inlinedAt: !2357)
!2368 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2356)
!2369 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2356)
!2370 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2356)
!2371 = !DILocation(line: 13, column: 26, scope: !2178, inlinedAt: !2357)
!2372 = !DILocation(line: 13, column: 14, scope: !2178, inlinedAt: !2357)
!2373 = !DILocation(line: 13, column: 16, scope: !2178, inlinedAt: !2357)
!2374 = !DILocation(line: 352, column: 2, scope: !2324)
!2375 = distinct !DISubprogram(name: "runtime._panic", linkageName: "runtime._panic", scope: !87, file: !87, line: 54, type: !2325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2376)
!2376 = !{!2377}
!2377 = !DILocalVariable(name: "message", arg: 1, scope: !2375, file: !87, line: 54, type: !454)
!2378 = !DILocation(line: 54, column: 6, scope: !2375)
!2379 = !DILocation(line: 55, column: 16, scope: !2375)
!2380 = !DILocation(line: 55, column: 15, scope: !2375)
!2381 = !DILocation(line: 56, column: 2, scope: !2375)
!2382 = distinct !DISubprogram(name: "runtime.fminimum", linkageName: "fminimum", scope: !1505, file: !1505, line: 60, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2385)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!472, !472}
!2385 = !{!2386, !2387}
!2386 = !DILocalVariable(name: "x", arg: 1, scope: !2382, file: !1505, line: 60, type: !472)
!2387 = !DILocalVariable(name: "y", arg: 2, scope: !2382, file: !1505, line: 60, type: !472)
!2388 = !DILocation(line: 60, column: 6, scope: !2382)
!2389 = !DILocation(line: 61, column: 24, scope: !2382)
!2390 = !DILocation(line: 61, column: 27, scope: !2382)
!2391 = !DILocalVariable(name: "x", arg: 1, scope: !2392, file: !1505, line: 87, type: !472)
!2392 = distinct !DISubprogram(name: "runtime.minimumFloat64", linkageName: "runtime.minimumFloat64", scope: !1505, file: !1505, line: 87, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2393)
!2393 = !{!2391, !2394}
!2394 = !DILocalVariable(name: "y", arg: 2, scope: !2392, file: !1505, line: 87, type: !472)
!2395 = !DILocation(line: 87, column: 6, scope: !2392, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 61, column: 23, scope: !2382)
!2397 = !DILocation(line: 88, column: 38, scope: !2392, inlinedAt: !2396)
!2398 = !DILocation(line: 88, column: 41, scope: !2392, inlinedAt: !2396)
!2399 = !DILocalVariable(name: "x", arg: 1, scope: !2400, file: !1505, line: 101, type: !472)
!2400 = distinct !DISubprogram(name: "runtime.minimumFloat[float64 int64]", linkageName: "runtime.minimumFloat[float64 int64]", scope: !1505, file: !1505, line: 101, type: !2401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!472, !472, !1702, !1702}
!2403 = !{!2399, !2404, !2405, !2406, !2407, !2408}
!2404 = !DILocalVariable(name: "y", arg: 2, scope: !2400, file: !1505, line: 101, type: !472)
!2405 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2400, file: !1505, line: 101, type: !1702)
!2406 = !DILocalVariable(name: "magMask", arg: 4, scope: !2400, file: !1505, line: 101, type: !1702)
!2407 = !DILocalVariable(name: "xBits", scope: !2400, file: !1505, line: 102, type: !454)
!2408 = !DILocalVariable(name: "yBits", scope: !2400, file: !1505, line: 103, type: !454)
!2409 = !DILocation(line: 101, column: 6, scope: !2400, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 88, column: 37, scope: !2392, inlinedAt: !2396)
!2411 = !DILocation(line: 102, column: 11, scope: !2400, inlinedAt: !2410)
!2412 = !DILocation(line: 102, column: 2, scope: !2400, inlinedAt: !2410)
!2413 = !DILocation(line: 103, column: 11, scope: !2400, inlinedAt: !2410)
!2414 = !DILocation(line: 103, column: 2, scope: !2400, inlinedAt: !2410)
!2415 = !DILocation(line: 107, column: 7, scope: !2400, inlinedAt: !2410)
!2416 = !DILocation(line: 107, column: 16, scope: !2400, inlinedAt: !2410)
!2417 = !DILocation(line: 107, column: 13, scope: !2400, inlinedAt: !2410)
!2418 = !DILocation(line: 0, scope: !2400, inlinedAt: !2410)
!2419 = !DILocation(line: 109, column: 7, scope: !2400, inlinedAt: !2410)
!2420 = !DILocation(line: 109, column: 16, scope: !2400, inlinedAt: !2410)
!2421 = !DILocation(line: 109, column: 13, scope: !2400, inlinedAt: !2410)
!2422 = !DILocation(line: 118, column: 5, scope: !2400, inlinedAt: !2410)
!2423 = !DILocation(line: 118, column: 11, scope: !2400, inlinedAt: !2410)
!2424 = !DILocation(line: 121, column: 5, scope: !2400, inlinedAt: !2410)
!2425 = !DILocation(line: 121, column: 11, scope: !2400, inlinedAt: !2410)
!2426 = !DILocation(line: 124, column: 5, scope: !2400, inlinedAt: !2410)
!2427 = !DILocation(line: 124, column: 14, scope: !2400, inlinedAt: !2410)
!2428 = !DILocation(line: 124, column: 11, scope: !2400, inlinedAt: !2410)
!2429 = !DILocation(line: 61, column: 2, scope: !2382)
!2430 = distinct !DISubprogram(name: "runtime.fminimumf", linkageName: "fminimumf", scope: !1505, file: !1505, line: 65, type: !2431, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2433)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!2344, !2344}
!2433 = !{!2434, !2435}
!2434 = !DILocalVariable(name: "x", arg: 1, scope: !2430, file: !1505, line: 65, type: !2344)
!2435 = !DILocalVariable(name: "y", arg: 2, scope: !2430, file: !1505, line: 65, type: !2344)
!2436 = !DILocation(line: 65, column: 6, scope: !2430)
!2437 = !DILocation(line: 66, column: 24, scope: !2430)
!2438 = !DILocation(line: 66, column: 27, scope: !2430)
!2439 = !DILocalVariable(name: "x", arg: 1, scope: !2440, file: !1505, line: 83, type: !2344)
!2440 = distinct !DISubprogram(name: "runtime.minimumFloat32", linkageName: "runtime.minimumFloat32", scope: !1505, file: !1505, line: 83, type: !2431, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2441)
!2441 = !{!2439, !2442}
!2442 = !DILocalVariable(name: "y", arg: 2, scope: !2440, file: !1505, line: 83, type: !2344)
!2443 = !DILocation(line: 83, column: 6, scope: !2440, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 66, column: 23, scope: !2430)
!2445 = !DILocation(line: 84, column: 38, scope: !2440, inlinedAt: !2444)
!2446 = !DILocation(line: 84, column: 41, scope: !2440, inlinedAt: !2444)
!2447 = !DILocalVariable(name: "x", arg: 1, scope: !2448, file: !1505, line: 101, type: !2344)
!2448 = distinct !DISubprogram(name: "runtime.minimumFloat[float32 int32]", linkageName: "runtime.minimumFloat[float32 int32]", scope: !1505, file: !1505, line: 101, type: !2449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2451)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!2344, !2344, !60, !60}
!2451 = !{!2447, !2452, !2453, !2454, !2455, !2456}
!2452 = !DILocalVariable(name: "y", arg: 2, scope: !2448, file: !1505, line: 101, type: !2344)
!2453 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2448, file: !1505, line: 101, type: !60)
!2454 = !DILocalVariable(name: "magMask", arg: 4, scope: !2448, file: !1505, line: 101, type: !60)
!2455 = !DILocalVariable(name: "xBits", scope: !2448, file: !1505, line: 102, type: !454)
!2456 = !DILocalVariable(name: "yBits", scope: !2448, file: !1505, line: 103, type: !454)
!2457 = !DILocation(line: 101, column: 6, scope: !2448, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 84, column: 37, scope: !2440, inlinedAt: !2444)
!2459 = !DILocation(line: 102, column: 11, scope: !2448, inlinedAt: !2458)
!2460 = !DILocation(line: 102, column: 2, scope: !2448, inlinedAt: !2458)
!2461 = !DILocation(line: 103, column: 11, scope: !2448, inlinedAt: !2458)
!2462 = !DILocation(line: 103, column: 2, scope: !2448, inlinedAt: !2458)
!2463 = !DILocation(line: 107, column: 7, scope: !2448, inlinedAt: !2458)
!2464 = !DILocation(line: 107, column: 16, scope: !2448, inlinedAt: !2458)
!2465 = !DILocation(line: 107, column: 13, scope: !2448, inlinedAt: !2458)
!2466 = !DILocation(line: 0, scope: !2448, inlinedAt: !2458)
!2467 = !DILocation(line: 109, column: 7, scope: !2448, inlinedAt: !2458)
!2468 = !DILocation(line: 109, column: 16, scope: !2448, inlinedAt: !2458)
!2469 = !DILocation(line: 109, column: 13, scope: !2448, inlinedAt: !2458)
!2470 = !DILocation(line: 118, column: 5, scope: !2448, inlinedAt: !2458)
!2471 = !DILocation(line: 118, column: 11, scope: !2448, inlinedAt: !2458)
!2472 = !DILocation(line: 121, column: 5, scope: !2448, inlinedAt: !2458)
!2473 = !DILocation(line: 121, column: 11, scope: !2448, inlinedAt: !2458)
!2474 = !DILocation(line: 124, column: 5, scope: !2448, inlinedAt: !2458)
!2475 = !DILocation(line: 124, column: 14, scope: !2448, inlinedAt: !2458)
!2476 = !DILocation(line: 124, column: 11, scope: !2448, inlinedAt: !2458)
!2477 = !DILocation(line: 66, column: 2, scope: !2430)
!2478 = distinct !DISubprogram(name: "runtime.fmaximum", linkageName: "fmaximum", scope: !1505, file: !1505, line: 70, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2479)
!2479 = !{!2480, !2481}
!2480 = !DILocalVariable(name: "x", arg: 1, scope: !2478, file: !1505, line: 70, type: !472)
!2481 = !DILocalVariable(name: "y", arg: 2, scope: !2478, file: !1505, line: 70, type: !472)
!2482 = !DILocation(line: 70, column: 6, scope: !2478)
!2483 = !DILocation(line: 71, column: 24, scope: !2478)
!2484 = !DILocation(line: 71, column: 27, scope: !2478)
!2485 = !DILocalVariable(name: "x", arg: 1, scope: !2486, file: !1505, line: 95, type: !472)
!2486 = distinct !DISubprogram(name: "runtime.maximumFloat64", linkageName: "runtime.maximumFloat64", scope: !1505, file: !1505, line: 95, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2487)
!2487 = !{!2485, !2488}
!2488 = !DILocalVariable(name: "y", arg: 2, scope: !2486, file: !1505, line: 95, type: !472)
!2489 = !DILocation(line: 95, column: 6, scope: !2486, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 71, column: 23, scope: !2478)
!2491 = !DILocation(line: 96, column: 38, scope: !2486, inlinedAt: !2490)
!2492 = !DILocation(line: 96, column: 41, scope: !2486, inlinedAt: !2490)
!2493 = !DILocalVariable(name: "x", arg: 1, scope: !2494, file: !1505, line: 133, type: !472)
!2494 = distinct !DISubprogram(name: "runtime.maximumFloat[float64 int64]", linkageName: "runtime.maximumFloat[float64 int64]", scope: !1505, file: !1505, line: 133, type: !2401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2495)
!2495 = !{!2493, !2496, !2497, !2498, !2499, !2500, !2501}
!2496 = !DILocalVariable(name: "y", arg: 2, scope: !2494, file: !1505, line: 133, type: !472)
!2497 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2494, file: !1505, line: 133, type: !1702)
!2498 = !DILocalVariable(name: "magMask", arg: 4, scope: !2494, file: !1505, line: 133, type: !1702)
!2499 = !DILocalVariable(name: "xBits", scope: !2494, file: !1505, line: 134, type: !454)
!2500 = !DILocalVariable(name: "yBits", scope: !2494, file: !1505, line: 135, type: !454)
!2501 = !DILocalVariable(name: "maxNegNaN", scope: !2494, file: !1505, line: 149, type: !454)
!2502 = !DILocation(line: 133, column: 6, scope: !2494, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 96, column: 37, scope: !2486, inlinedAt: !2490)
!2504 = !DILocation(line: 134, column: 11, scope: !2494, inlinedAt: !2503)
!2505 = !DILocation(line: 134, column: 2, scope: !2494, inlinedAt: !2503)
!2506 = !DILocation(line: 135, column: 11, scope: !2494, inlinedAt: !2503)
!2507 = !DILocation(line: 135, column: 2, scope: !2494, inlinedAt: !2503)
!2508 = !DILocation(line: 142, column: 5, scope: !2494, inlinedAt: !2503)
!2509 = !DILocation(line: 142, column: 11, scope: !2494, inlinedAt: !2503)
!2510 = !DILocation(line: 0, scope: !2494, inlinedAt: !2503)
!2511 = !DILocation(line: 145, column: 5, scope: !2494, inlinedAt: !2503)
!2512 = !DILocation(line: 145, column: 11, scope: !2494, inlinedAt: !2503)
!2513 = !DILocation(line: 149, column: 16, scope: !2494, inlinedAt: !2503)
!2514 = !DILocation(line: 149, column: 2, scope: !2494, inlinedAt: !2503)
!2515 = !DILocation(line: 151, column: 7, scope: !2494, inlinedAt: !2503)
!2516 = !DILocation(line: 151, column: 16, scope: !2494, inlinedAt: !2503)
!2517 = !DILocation(line: 151, column: 13, scope: !2494, inlinedAt: !2503)
!2518 = !DILocation(line: 153, column: 7, scope: !2494, inlinedAt: !2503)
!2519 = !DILocation(line: 153, column: 16, scope: !2494, inlinedAt: !2503)
!2520 = !DILocation(line: 153, column: 13, scope: !2494, inlinedAt: !2503)
!2521 = !DILocation(line: 156, column: 5, scope: !2494, inlinedAt: !2503)
!2522 = !DILocation(line: 156, column: 14, scope: !2494, inlinedAt: !2503)
!2523 = !DILocation(line: 156, column: 11, scope: !2494, inlinedAt: !2503)
!2524 = !DILocation(line: 71, column: 2, scope: !2478)
!2525 = distinct !DISubprogram(name: "runtime.fmaximumf", linkageName: "fmaximumf", scope: !1505, file: !1505, line: 75, type: !2431, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2526)
!2526 = !{!2527, !2528}
!2527 = !DILocalVariable(name: "x", arg: 1, scope: !2525, file: !1505, line: 75, type: !2344)
!2528 = !DILocalVariable(name: "y", arg: 2, scope: !2525, file: !1505, line: 75, type: !2344)
!2529 = !DILocation(line: 75, column: 6, scope: !2525)
!2530 = !DILocation(line: 76, column: 24, scope: !2525)
!2531 = !DILocation(line: 76, column: 27, scope: !2525)
!2532 = !DILocalVariable(name: "x", arg: 1, scope: !2533, file: !1505, line: 91, type: !2344)
!2533 = distinct !DISubprogram(name: "runtime.maximumFloat32", linkageName: "runtime.maximumFloat32", scope: !1505, file: !1505, line: 91, type: !2431, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2534)
!2534 = !{!2532, !2535}
!2535 = !DILocalVariable(name: "y", arg: 2, scope: !2533, file: !1505, line: 91, type: !2344)
!2536 = !DILocation(line: 91, column: 6, scope: !2533, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 76, column: 23, scope: !2525)
!2538 = !DILocation(line: 92, column: 38, scope: !2533, inlinedAt: !2537)
!2539 = !DILocation(line: 92, column: 41, scope: !2533, inlinedAt: !2537)
!2540 = !DILocalVariable(name: "x", arg: 1, scope: !2541, file: !1505, line: 133, type: !2344)
!2541 = distinct !DISubprogram(name: "runtime.maximumFloat[float32 int32]", linkageName: "runtime.maximumFloat[float32 int32]", scope: !1505, file: !1505, line: 133, type: !2449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2542)
!2542 = !{!2540, !2543, !2544, !2545, !2546, !2547, !2548}
!2543 = !DILocalVariable(name: "y", arg: 2, scope: !2541, file: !1505, line: 133, type: !2344)
!2544 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2541, file: !1505, line: 133, type: !60)
!2545 = !DILocalVariable(name: "magMask", arg: 4, scope: !2541, file: !1505, line: 133, type: !60)
!2546 = !DILocalVariable(name: "xBits", scope: !2541, file: !1505, line: 134, type: !454)
!2547 = !DILocalVariable(name: "yBits", scope: !2541, file: !1505, line: 135, type: !454)
!2548 = !DILocalVariable(name: "maxNegNaN", scope: !2541, file: !1505, line: 149, type: !454)
!2549 = !DILocation(line: 133, column: 6, scope: !2541, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 92, column: 37, scope: !2533, inlinedAt: !2537)
!2551 = !DILocation(line: 134, column: 11, scope: !2541, inlinedAt: !2550)
!2552 = !DILocation(line: 134, column: 2, scope: !2541, inlinedAt: !2550)
!2553 = !DILocation(line: 135, column: 11, scope: !2541, inlinedAt: !2550)
!2554 = !DILocation(line: 135, column: 2, scope: !2541, inlinedAt: !2550)
!2555 = !DILocation(line: 142, column: 5, scope: !2541, inlinedAt: !2550)
!2556 = !DILocation(line: 142, column: 11, scope: !2541, inlinedAt: !2550)
!2557 = !DILocation(line: 0, scope: !2541, inlinedAt: !2550)
!2558 = !DILocation(line: 145, column: 5, scope: !2541, inlinedAt: !2550)
!2559 = !DILocation(line: 145, column: 11, scope: !2541, inlinedAt: !2550)
!2560 = !DILocation(line: 149, column: 16, scope: !2541, inlinedAt: !2550)
!2561 = !DILocation(line: 149, column: 2, scope: !2541, inlinedAt: !2550)
!2562 = !DILocation(line: 151, column: 7, scope: !2541, inlinedAt: !2550)
!2563 = !DILocation(line: 151, column: 16, scope: !2541, inlinedAt: !2550)
!2564 = !DILocation(line: 151, column: 13, scope: !2541, inlinedAt: !2550)
!2565 = !DILocation(line: 153, column: 7, scope: !2541, inlinedAt: !2550)
!2566 = !DILocation(line: 153, column: 16, scope: !2541, inlinedAt: !2550)
!2567 = !DILocation(line: 153, column: 13, scope: !2541, inlinedAt: !2550)
!2568 = !DILocation(line: 156, column: 5, scope: !2541, inlinedAt: !2550)
!2569 = !DILocation(line: 156, column: 14, scope: !2541, inlinedAt: !2550)
!2570 = !DILocation(line: 156, column: 11, scope: !2541, inlinedAt: !2550)
!2571 = !DILocation(line: 76, column: 2, scope: !2525)
!2572 = distinct !DISubprogram(name: "runtime.gcCallback", linkageName: "tinygo_runtime_bdwgc_callback", scope: !1537, file: !1537, line: 46, type: !2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2573 = !DILocation(line: 62, column: 34, scope: !2071, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 193, column: 20, scope: !2575, inlinedAt: !2583)
!2575 = distinct !DISubprogram(name: "internal/task.GCStopWorldAndScan", linkageName: "internal/task.GCStopWorldAndScan", scope: !2, file: !2, line: 192, type: !2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !2576)
!2576 = !{!2577, !2578, !2579, !2580, !2581, !2582}
!2577 = !DILocalVariable(name: "current", scope: !2575, file: !2, line: 193, type: !3)
!2578 = !DILocalVariable(name: "otherGoroutines", scope: !2575, file: !2, line: 99, type: !43)
!2579 = !DILocalVariable(name: "scanWaitGroup", scope: !2575, file: !2, line: 151, type: !79)
!2580 = !DILocalVariable(name: "activeTasks", scope: !2575, file: !2, line: 45, type: !3)
!2581 = !DILocalVariable(name: "t", scope: !2575, file: !2, line: 212, type: !3)
!2582 = !DILocalVariable(name: "t", scope: !2575, file: !2, line: 223, type: !3)
!2583 = distinct !DILocation(line: 8, column: 25, scope: !2584, inlinedAt: !2586)
!2584 = distinct !DISubprogram(name: "runtime.gcMarkReachable", linkageName: "runtime.gcMarkReachable", scope: !2585, file: !2585, line: 7, type: !2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2585 = !DIFile(filename: "gc_stack_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2586 = distinct !DILocation(line: 48, column: 17, scope: !2572)
!2587 = !DILocation(line: 63, column: 5, scope: !2071, inlinedAt: !2574)
!2588 = !DILocation(line: 63, column: 7, scope: !2071, inlinedAt: !2574)
!2589 = !DILocation(line: 0, scope: !2071, inlinedAt: !2574)
!2590 = !DILocation(line: 64, column: 15, scope: !2071, inlinedAt: !2574)
!2591 = !DILocation(line: 66, column: 9, scope: !2071, inlinedAt: !2574)
!2592 = !DILocation(line: 193, column: 2, scope: !2575, inlinedAt: !2583)
!2593 = !DILocation(line: 147, column: 53, scope: !2117, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 196, column: 17, scope: !2575, inlinedAt: !2583)
!2595 = !DILocation(line: 183, column: 6, scope: !2124, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 147, column: 51, scope: !2117, inlinedAt: !2594)
!2597 = !DILocation(line: 196, column: 20, scope: !2575, inlinedAt: !2583)
!2598 = !DILocation(line: 0, scope: !2575, inlinedAt: !2583)
!2599 = !DILocation(line: 33, column: 5, scope: !1984, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 199, column: 22, scope: !2575, inlinedAt: !2583)
!2601 = !DILocation(line: 157, column: 31, scope: !1990, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 33, column: 27, scope: !1984, inlinedAt: !2600)
!2603 = !DILocation(line: 157, column: 36, scope: !1990, inlinedAt: !2602)
!2604 = !DILocation(line: 157, column: 41, scope: !1990, inlinedAt: !2602)
!2605 = !DILocation(line: 99, column: 6, scope: !2001, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 157, column: 29, scope: !1990, inlinedAt: !2602)
!2607 = !DILocation(line: 0, scope: !1984, inlinedAt: !2600)
!2608 = !DILocation(line: 43, column: 6, scope: !1984, inlinedAt: !2600)
!2609 = !DILocation(line: 153, column: 69, scope: !1938, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 43, column: 18, scope: !1984, inlinedAt: !2600)
!2611 = !DILocation(line: 153, column: 74, scope: !1938, inlinedAt: !2610)
!2612 = !DILocation(line: 77, column: 6, scope: !1949, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 153, column: 67, scope: !1938, inlinedAt: !2610)
!2614 = !DILocation(line: 43, column: 22, scope: !1984, inlinedAt: !2600)
!2615 = !DILocation(line: 45, column: 3, scope: !1984, inlinedAt: !2600)
!2616 = !DILocation(line: 26, column: 46, scope: !2019, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 45, column: 15, scope: !1984, inlinedAt: !2600)
!2618 = !DILocation(line: 26, column: 58, scope: !2019, inlinedAt: !2617)
!2619 = !DILocation(line: 26, column: 19, scope: !2019, inlinedAt: !2617)
!2620 = !DILocalVariable(name: "wg", arg: 1, scope: !2621, file: !2, line: 169, type: !2090)
!2621 = distinct !DISubprogram(name: "(*internal/task.waitGroup).wait", linkageName: "(*internal/task.waitGroup).wait", scope: !2, file: !2, line: 169, type: !2088, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !2622)
!2622 = !{!2620, !2623}
!2623 = !DILocalVariable(name: "val", scope: !2621, file: !2, line: 171, type: !43)
!2624 = !DILocation(line: 169, column: 22, scope: !2621, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 202, column: 21, scope: !2575, inlinedAt: !2583)
!2626 = !DILocation(line: 147, column: 53, scope: !2117, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 171, column: 19, scope: !2621, inlinedAt: !2625)
!2628 = !DILocation(line: 183, column: 6, scope: !2124, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 147, column: 51, scope: !2117, inlinedAt: !2627)
!2630 = !DILocation(line: 172, column: 10, scope: !2621, inlinedAt: !2625)
!2631 = !DILocation(line: 0, scope: !2621, inlinedAt: !2625)
!2632 = !DILocation(line: 175, column: 3, scope: !2621, inlinedAt: !2625)
!2633 = !DILocation(line: 175, column: 13, scope: !2621, inlinedAt: !2625)
!2634 = !DILocation(line: 26, column: 46, scope: !2019, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 175, column: 12, scope: !2621, inlinedAt: !2625)
!2636 = !DILocation(line: 26, column: 58, scope: !2019, inlinedAt: !2635)
!2637 = !DILocation(line: 26, column: 19, scope: !2019, inlinedAt: !2635)
!2638 = !DILocation(line: 172, column: 6, scope: !2621, inlinedAt: !2625)
!2639 = !DILocalVariable(name: "x", arg: 1, scope: !2640, file: !1939, line: 150, type: !1942)
!2640 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Store", linkageName: "(*sync/atomic.Uint32).Store", scope: !1939, file: !1939, line: 150, type: !1940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !2641)
!2641 = !{!2639, !2642}
!2642 = !DILocalVariable(name: "val", arg: 2, scope: !2640, file: !1939, line: 150, type: !43)
!2643 = !DILocation(line: 150, column: 51, scope: !2640, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 206, column: 16, scope: !2575, inlinedAt: !2583)
!2645 = !DILocation(line: 150, column: 56, scope: !2640, inlinedAt: !2644)
!2646 = !DILocalVariable(name: "addr", arg: 1, scope: !2647, file: !1950, line: 205, type: !1953)
!2647 = distinct !DISubprogram(name: "sync/atomic.StoreUint32", linkageName: "sync/atomic.StoreUint32", scope: !1950, file: !1950, line: 205, type: !1951, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1418, retainedNodes: !2648)
!2648 = !{!2646, !2649}
!2649 = !DILocalVariable(name: "val", arg: 2, scope: !2647, file: !1950, line: 205, type: !43)
!2650 = !DILocation(line: 205, column: 6, scope: !2647, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 150, column: 49, scope: !2640, inlinedAt: !2644)
!2652 = !DILocation(line: 209, column: 33, scope: !2575, inlinedAt: !2583)
!2653 = !DILocation(line: 209, column: 3, scope: !2575, inlinedAt: !2583)
!2654 = !DILocation(line: 212, column: 12, scope: !2575, inlinedAt: !2583)
!2655 = !DILocation(line: 212, column: 7, scope: !2575, inlinedAt: !2583)
!2656 = !DILocation(line: 212, scope: !2575, inlinedAt: !2583)
!2657 = !DILocation(line: 212, column: 27, scope: !2575, inlinedAt: !2583)
!2658 = !DILocation(line: 213, column: 7, scope: !2575, inlinedAt: !2583)
!2659 = !DILocation(line: 213, column: 12, scope: !2575, inlinedAt: !2583)
!2660 = !DILocation(line: 213, column: 9, scope: !2575, inlinedAt: !2583)
!2661 = !DILocation(line: 214, column: 32, scope: !2575, inlinedAt: !2583)
!2662 = !DILocation(line: 214, column: 40, scope: !2575, inlinedAt: !2583)
!2663 = !DILocation(line: 214, column: 31, scope: !2575, inlinedAt: !2583)
!2664 = !DILocation(line: 212, column: 39, scope: !2575, inlinedAt: !2583)
!2665 = !DILocation(line: 212, column: 47, scope: !2575, inlinedAt: !2583)
!2666 = !DILocation(line: 212, column: 35, scope: !2575, inlinedAt: !2583)
!2667 = !DILocation(line: 212, column: 25, scope: !2575, inlinedAt: !2583)
!2668 = !DILocation(line: 169, column: 22, scope: !2621, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 219, column: 21, scope: !2575, inlinedAt: !2583)
!2670 = !DILocation(line: 147, column: 53, scope: !2117, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 171, column: 19, scope: !2621, inlinedAt: !2669)
!2672 = !DILocation(line: 183, column: 6, scope: !2124, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 147, column: 51, scope: !2117, inlinedAt: !2671)
!2674 = !DILocation(line: 172, column: 10, scope: !2621, inlinedAt: !2669)
!2675 = !DILocation(line: 0, scope: !2621, inlinedAt: !2669)
!2676 = !DILocation(line: 175, column: 3, scope: !2621, inlinedAt: !2669)
!2677 = !DILocation(line: 175, column: 13, scope: !2621, inlinedAt: !2669)
!2678 = !DILocation(line: 26, column: 46, scope: !2019, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 175, column: 12, scope: !2621, inlinedAt: !2669)
!2680 = !DILocation(line: 26, column: 58, scope: !2019, inlinedAt: !2679)
!2681 = !DILocation(line: 26, column: 19, scope: !2019, inlinedAt: !2679)
!2682 = !DILocation(line: 172, column: 6, scope: !2621, inlinedAt: !2669)
!2683 = !DILocation(line: 223, column: 11, scope: !2575, inlinedAt: !2583)
!2684 = !DILocation(line: 223, column: 6, scope: !2575, inlinedAt: !2583)
!2685 = !DILocation(line: 223, scope: !2575, inlinedAt: !2583)
!2686 = !DILocation(line: 223, column: 26, scope: !2575, inlinedAt: !2583)
!2687 = !DILocation(line: 224, column: 6, scope: !2575, inlinedAt: !2583)
!2688 = !DILocation(line: 224, column: 11, scope: !2575, inlinedAt: !2583)
!2689 = !DILocation(line: 224, column: 8, scope: !2575, inlinedAt: !2583)
!2690 = !DILocation(line: 225, column: 14, scope: !2575, inlinedAt: !2583)
!2691 = !DILocation(line: 225, column: 22, scope: !2575, inlinedAt: !2583)
!2692 = !DILocation(line: 225, column: 43, scope: !2575, inlinedAt: !2583)
!2693 = !DILocalVariable(name: "start", arg: 1, scope: !2694, file: !1537, line: 51, type: !21)
!2694 = distinct !DISubprogram(name: "runtime.markRoots", linkageName: "runtime.markRoots", scope: !1537, file: !1537, line: 51, type: !2695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!21, !21}
!2697 = !{!2693, !2698}
!2698 = !DILocalVariable(name: "end", arg: 2, scope: !2694, file: !1537, line: 51, type: !21)
!2699 = !DILocation(line: 52, column: 17, scope: !2694, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 225, column: 13, scope: !2575, inlinedAt: !2583)
!2701 = !DILocation(line: 52, column: 24, scope: !2694, inlinedAt: !2700)
!2702 = !DILocation(line: 52, column: 16, scope: !2694, inlinedAt: !2700)
!2703 = !DILocation(line: 223, column: 38, scope: !2575, inlinedAt: !2583)
!2704 = !DILocation(line: 223, column: 46, scope: !2575, inlinedAt: !2583)
!2705 = !DILocation(line: 223, column: 34, scope: !2575, inlinedAt: !2583)
!2706 = !DILocation(line: 223, column: 24, scope: !2575, inlinedAt: !2583)
!2707 = !DILocation(line: 230, column: 18, scope: !2575, inlinedAt: !2583)
!2708 = !DILocalVariable(name: "found", arg: 1, scope: !2709, file: !2710, line: 95, type: !305)
!2709 = distinct !DISubprogram(name: "runtime.findGlobals", linkageName: "runtime.findGlobals", scope: !2710, file: !2710, line: 95, type: !2711, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2713)
!2710 = !DIFile(filename: "os_linux.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!305}
!2713 = !{!2708, !2714, !2715, !2716, !2729, !2730, !2731, !2738, !2739}
!2714 = !DILocalVariable(name: "headerPtr", scope: !2709, file: !2710, line: 103, type: !9)
!2715 = !DILocalVariable(name: "i", scope: !2709, file: !2710, line: 104, type: !2182)
!2716 = !DILocalVariable(name: "header", scope: !2709, file: !2710, line: 111, type: !2717)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64, align: 64, dwarfAddressSpace: 0)
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader64", baseType: !2719)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !2720)
!2720 = !{!2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_type", baseType: !43, size: 32, align: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !43, size: 32, align: 32, offset: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "offset", baseType: !21, size: 64, align: 64, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", baseType: !21, size: 64, align: 64, offset: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", baseType: !21, size: 64, align: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "filesz", baseType: !21, size: 64, align: 64, offset: 256)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", baseType: !21, size: 64, align: 64, offset: 320)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !21, size: 64, align: 64, offset: 384)
!2729 = !DILocalVariable(name: "start", scope: !2709, file: !2710, line: 113, type: !21)
!2730 = !DILocalVariable(name: "end", scope: !2709, file: !2710, line: 114, type: !21)
!2731 = !DILocalVariable(name: "header", scope: !2709, file: !2710, line: 118, type: !2732)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64, align: 64, dwarfAddressSpace: 0)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader32", baseType: !2734)
!2734 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !2735)
!2735 = !{!2721, !2723, !2724, !2725, !2726, !2727, !2736, !2737}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !43, size: 32, align: 32, offset: 384)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !21, size: 64, align: 64, offset: 448)
!2738 = !DILocalVariable(name: "start", scope: !2709, file: !2710, line: 120, type: !21)
!2739 = !DILocalVariable(name: "end", scope: !2709, file: !2710, line: 121, type: !21)
!2740 = !DILocation(line: 95, column: 6, scope: !2709, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 16, column: 13, scope: !2742, inlinedAt: !2743)
!2742 = distinct !DISubprogram(name: "runtime.gcScanGlobals", linkageName: "internal/task.gcScanGlobals", scope: !2585, file: !2585, line: 15, type: !2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2743 = distinct !DILocation(line: 233, column: 15, scope: !2575, inlinedAt: !2583)
!2744 = !DILocation(line: 103, column: 2, scope: !2709, inlinedAt: !2741)
!2745 = !DILocation(line: 104, column: 6, scope: !2709, inlinedAt: !2741)
!2746 = !DILocation(line: 104, column: 33, scope: !2709, inlinedAt: !2741)
!2747 = !DILocation(line: 104, column: 16, scope: !2709, inlinedAt: !2741)
!2748 = !DILocation(line: 0, scope: !2709, inlinedAt: !2741)
!2749 = !DILocation(line: 103, column: 80, scope: !2709, inlinedAt: !2741)
!2750 = !DILocation(line: 103, column: 67, scope: !2709, inlinedAt: !2741)
!2751 = !DILocation(line: 103, column: 29, scope: !2709, inlinedAt: !2741)
!2752 = !DILocation(line: 112, column: 14, scope: !2709, inlinedAt: !2741)
!2753 = !DILocation(line: 104, column: 14, scope: !2709, inlinedAt: !2741)
!2754 = !DILocation(line: 111, column: 36, scope: !2709, inlinedAt: !2741)
!2755 = !DILocation(line: 112, column: 7, scope: !2709, inlinedAt: !2741)
!2756 = !DILocation(line: 112, column: 20, scope: !2709, inlinedAt: !2741)
!2757 = !DILocation(line: 112, column: 34, scope: !2709, inlinedAt: !2741)
!2758 = !DILocation(line: 112, column: 41, scope: !2709, inlinedAt: !2741)
!2759 = !DILocation(line: 112, column: 46, scope: !2709, inlinedAt: !2741)
!2760 = !DILocation(line: 112, column: 52, scope: !2709, inlinedAt: !2741)
!2761 = !DILocation(line: 113, column: 14, scope: !2709, inlinedAt: !2741)
!2762 = !DILocation(line: 113, column: 21, scope: !2709, inlinedAt: !2741)
!2763 = !DILocation(line: 115, column: 5, scope: !2709, inlinedAt: !2741)
!2764 = !DILocation(line: 115, column: 11, scope: !2709, inlinedAt: !2741)
!2765 = !DILocation(line: 115, column: 18, scope: !2709, inlinedAt: !2741)
!2766 = !DILocation(line: 114, column: 27, scope: !2709, inlinedAt: !2741)
!2767 = !DILocation(line: 114, column: 18, scope: !2709, inlinedAt: !2741)
!2768 = !DILocation(line: 52, column: 17, scope: !2694, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 115, column: 10, scope: !2709, inlinedAt: !2741)
!2770 = !DILocation(line: 52, column: 24, scope: !2694, inlinedAt: !2769)
!2771 = !DILocation(line: 52, column: 16, scope: !2694, inlinedAt: !2769)
!2772 = !DILocation(line: 125, column: 26, scope: !2709, inlinedAt: !2741)
!2773 = !DILocation(line: 125, column: 48, scope: !2709, inlinedAt: !2741)
!2774 = !DILocation(line: 125, column: 25, scope: !2709, inlinedAt: !2741)
!2775 = !DILocation(line: 125, column: 3, scope: !2709, inlinedAt: !2741)
!2776 = !DILocation(line: 104, column: 41, scope: !2709, inlinedAt: !2741)
!2777 = !DILocation(line: 104, column: 21, scope: !2709, inlinedAt: !2741)
!2778 = !DILocation(line: 49, column: 2, scope: !2572)
!2779 = distinct !DISubprogram(name: "runtime.scanstack", linkageName: "tinygo_scanstack", scope: !2585, file: !2585, line: 23, type: !2780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2781)
!2780 = !DISubroutineType(types: !2206)
!2781 = !{!2782}
!2782 = !DILocalVariable(name: "sp", arg: 1, scope: !2779, file: !2585, line: 23, type: !21)
!2783 = !DILocation(line: 23, column: 6, scope: !2779)
!2784 = !DILocation(line: 24, column: 12, scope: !2779)
!2785 = !DILocation(line: 62, column: 34, scope: !2071, inlinedAt: !2786)
!2786 = distinct !DILocation(line: 290, column: 16, scope: !2787, inlinedAt: !2788)
!2787 = distinct !DISubprogram(name: "internal/task.StackTop", linkageName: "internal/task.StackTop", scope: !2, file: !2, line: 289, type: !2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462)
!2788 = distinct !DILocation(line: 24, column: 29, scope: !2779)
!2789 = !DILocation(line: 62, column: 2, scope: !2071, inlinedAt: !2786)
!2790 = !DILocation(line: 63, column: 5, scope: !2071, inlinedAt: !2786)
!2791 = !DILocation(line: 63, column: 7, scope: !2071, inlinedAt: !2786)
!2792 = !DILocation(line: 0, scope: !2071, inlinedAt: !2786)
!2793 = !DILocation(line: 64, column: 15, scope: !2071, inlinedAt: !2786)
!2794 = !DILocation(line: 66, column: 9, scope: !2071, inlinedAt: !2786)
!2795 = !DILocation(line: 290, column: 25, scope: !2787, inlinedAt: !2788)
!2796 = !DILocation(line: 51, column: 6, scope: !2694, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 24, column: 11, scope: !2779)
!2798 = !DILocation(line: 52, column: 17, scope: !2694, inlinedAt: !2797)
!2799 = !DILocation(line: 52, column: 24, scope: !2694, inlinedAt: !2797)
!2800 = !DILocation(line: 52, column: 16, scope: !2694, inlinedAt: !2797)
!2801 = !DILocation(line: 25, column: 2, scope: !2779)
!2802 = distinct !DISubprogram(name: "runtime.main", linkageName: "main", scope: !113, file: !113, line: 80, type: !2803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!60, !116}
!2805 = !{!2806, !2807, !2808, !2809, !2810}
!2806 = !DILocalVariable(name: "argc", arg: 1, scope: !2802, file: !113, line: 80, type: !60)
!2807 = !DILocalVariable(name: "argv", arg: 2, scope: !2802, file: !113, line: 80, type: !116)
!2808 = !DILocalVariable(name: "main_argc", scope: !2802, file: !113, line: 105, type: !60)
!2809 = !DILocalVariable(name: "main_argv", scope: !2802, file: !113, line: 106, type: !116)
!2810 = !DILocalVariable(name: "stackTop", scope: !2802, file: !113, line: 75, type: !21)
!2811 = !DILocation(line: 80, column: 6, scope: !2802)
!2812 = !DILocation(line: 87, column: 14, scope: !2802)
!2813 = !DILocation(line: 87, column: 2, scope: !2802)
!2814 = !DILocation(line: 88, column: 14, scope: !2802)
!2815 = !DILocation(line: 88, column: 2, scope: !2802)
!2816 = !DILocation(line: 92, column: 31, scope: !2802)
!2817 = !DILocation(line: 58, column: 6, scope: !2082, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 27, column: 26, scope: !2819, inlinedAt: !2821)
!2819 = distinct !DISubprogram(name: "runtime.getCurrentStackPointer", linkageName: "runtime.getCurrentStackPointer", scope: !2820, file: !2820, line: 26, type: !2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2820 = !DIFile(filename: "arch_amd64.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2821 = distinct !DILocation(line: 97, column: 35, scope: !2802)
!2822 = !DILocation(line: 27, column: 16, scope: !2819, inlinedAt: !2821)
!2823 = !DILocation(line: 97, column: 2, scope: !2802)
!2824 = !DILocation(line: 98, column: 9, scope: !2802)
!2825 = !DILocation(line: 101, column: 2, scope: !2802)
!2826 = distinct !DISubprogram(name: "runtime.runMain", linkageName: "runtime.runMain", scope: !113, file: !113, line: 135, type: !2258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2827 = !DILocation(line: 137, column: 22, scope: !2828, inlinedAt: !2832)
!2828 = distinct !DISubprogram(name: "runtime.hardwareRand", linkageName: "runtime.hardwareRand", scope: !2710, file: !2710, line: 137, type: !2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2829)
!2829 = !{!2830, !2831}
!2830 = !DILocalVariable(name: "read", scope: !2828, file: !2710, line: 138, type: !43)
!2831 = !DILocalVariable(name: "n", scope: !2828, file: !2710, line: 137, type: !11)
!2832 = distinct !DILocation(line: 27, column: 22, scope: !2833, inlinedAt: !2838)
!2833 = distinct !DISubprogram(name: "runtime.initRand", linkageName: "runtime.initRand", scope: !1500, file: !1500, line: 26, type: !2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2834)
!2834 = !{!2835, !2836, !2837}
!2835 = !DILocalVariable(name: "r", scope: !2833, file: !1500, line: 27, type: !11)
!2836 = !DILocalVariable(name: "xorshift64State", scope: !2833, file: !1500, line: 52, type: !11)
!2837 = !DILocalVariable(name: "xorshift32State", scope: !2833, file: !1500, line: 32, type: !43)
!2838 = distinct !DILocation(line: 24, column: 10, scope: !2839, inlinedAt: !2842)
!2839 = distinct !DISubprogram(name: "runtime.run", linkageName: "runtime.run", scope: !127, file: !127, line: 23, type: !2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2840)
!2840 = !{!2841}
!2841 = !DILocalVariable(name: "stackTop", scope: !2839, file: !113, line: 75, type: !21)
!2842 = distinct !DILocation(line: 136, column: 5, scope: !2826)
!2843 = !DILocation(line: 138, column: 24, scope: !2828, inlinedAt: !2832)
!2844 = !DILocation(line: 138, column: 2, scope: !2828, inlinedAt: !2832)
!2845 = !DILocation(line: 139, column: 5, scope: !2828, inlinedAt: !2832)
!2846 = !DILocation(line: 0, scope: !2828, inlinedAt: !2832)
!2847 = !DILocation(line: 27, column: 2, scope: !2833, inlinedAt: !2838)
!2848 = !DILocation(line: 28, column: 27, scope: !2833, inlinedAt: !2838)
!2849 = !DILocation(line: 28, column: 2, scope: !2833, inlinedAt: !2838)
!2850 = !DILocation(line: 29, column: 27, scope: !2833, inlinedAt: !2838)
!2851 = !DILocation(line: 29, column: 2, scope: !2833, inlinedAt: !2838)
!2852 = !DILocation(line: 35, column: 12, scope: !2853, inlinedAt: !2854)
!2853 = distinct !DISubprogram(name: "runtime.initHeap", linkageName: "runtime.initHeap", scope: !1537, file: !1537, line: 34, type: !2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2854 = distinct !DILocation(line: 25, column: 10, scope: !2839, inlinedAt: !2842)
!2855 = !DILocation(line: 39, column: 8, scope: !2853, inlinedAt: !2854)
!2856 = !DILocation(line: 26, column: 12, scope: !2839, inlinedAt: !2842)
!2857 = !DILocalVariable(name: "sp", arg: 1, scope: !2858, file: !2, line: 55, type: !21)
!2858 = distinct !DISubprogram(name: "internal/task.Init", linkageName: "internal/task.Init", scope: !2, file: !2, line: 55, type: !2780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !2859)
!2859 = !{!2857, !2860}
!2860 = !DILocalVariable(name: "stackTop", scope: !2858, file: !2, line: 24, type: !21)
!2861 = !DILocation(line: 55, column: 6, scope: !2858, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 26, column: 11, scope: !2839, inlinedAt: !2842)
!2863 = !DILocation(line: 56, column: 28, scope: !2858, inlinedAt: !2862)
!2864 = !DILocation(line: 56, column: 17, scope: !2858, inlinedAt: !2862)
!2865 = !DILocation(line: 57, column: 18, scope: !2858, inlinedAt: !2862)
!2866 = !DILocation(line: 28, column: 10, scope: !2839, inlinedAt: !2842)
!2867 = !DILocation(line: 137, column: 2, scope: !2826)
!2868 = distinct !DISubprogram(name: "runtime.tinygo_handle_fatal_signal", linkageName: "tinygo_handle_fatal_signal", scope: !113, file: !113, line: 148, type: !2869, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2871)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!60, !21}
!2871 = !{!2872, !2873}
!2872 = !DILocalVariable(name: "sig", arg: 1, scope: !2868, file: !113, line: 148, type: !60)
!2873 = !DILocalVariable(name: "addr", arg: 2, scope: !2868, file: !113, line: 148, type: !21)
!2874 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 14, column: 10, scope: !2178, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 158, column: 14, scope: !2868)
!2877 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 290, column: 9, scope: !2257, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 169, column: 10, scope: !2868)
!2880 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 90, column: 10, scope: !2882, inlinedAt: !2891)
!2882 = distinct !DISubprogram(name: "runtime.printuint64", linkageName: "runtime.printuint64", scope: !1605, file: !1605, line: 76, type: !2883, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!11}
!2885 = !{!2886, !2887, !2888, !2889, !2890}
!2886 = !DILocalVariable(name: "n", arg: 1, scope: !2882, file: !1605, line: 76, type: !11)
!2887 = !DILocalVariable(name: "firstdigit", scope: !2882, file: !1605, line: 79, type: !2182)
!2888 = !DILocalVariable(name: "i", scope: !2882, file: !1605, line: 80, type: !2182)
!2889 = !DILocalVariable(name: "digit", scope: !2882, file: !1605, line: 81, type: !183)
!2890 = !DILocalVariable(name: "i", scope: !2882, file: !1605, line: 89, type: !2182)
!2891 = distinct !DILocation(line: 62, column: 13, scope: !2892, inlinedAt: !2897)
!2892 = distinct !DISubprogram(name: "runtime.printuint32", linkageName: "runtime.printuint32", scope: !1605, file: !1605, line: 61, type: !2893, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!43}
!2895 = !{!2896}
!2896 = !DILocalVariable(name: "n", arg: 1, scope: !2892, file: !1605, line: 61, type: !43)
!2897 = distinct !DILocation(line: 72, column: 13, scope: !2898, inlinedAt: !2901)
!2898 = distinct !DISubprogram(name: "runtime.printint32", linkageName: "runtime.printint32", scope: !1605, file: !1605, line: 65, type: !2064, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2899)
!2899 = !{!2900}
!2900 = !DILocalVariable(name: "n", arg: 1, scope: !2898, file: !1605, line: 65, type: !60)
!2901 = distinct !DILocation(line: 169, column: 10, scope: !2868)
!2902 = !DILocation(line: 76, column: 6, scope: !2882, inlinedAt: !2891)
!2903 = !DILocation(line: 77, column: 2, scope: !2882, inlinedAt: !2891)
!2904 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 69, column: 10, scope: !2898, inlinedAt: !2901)
!2906 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 290, column: 9, scope: !2257, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 167, column: 10, scope: !2868)
!2909 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 14, column: 10, scope: !2178, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 167, column: 10, scope: !2868)
!2912 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 290, column: 9, scope: !2257, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 165, column: 10, scope: !2868)
!2915 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 14, column: 10, scope: !2178, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 165, column: 10, scope: !2868)
!2918 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 290, column: 9, scope: !2257, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 163, column: 10, scope: !2868)
!2921 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 14, column: 10, scope: !2178, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 163, column: 10, scope: !2868)
!2924 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 14, column: 10, scope: !2178, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 160, column: 13, scope: !2868)
!2927 = !DILocation(line: 215, column: 2, scope: !2184, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 14, column: 10, scope: !2178, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 155, column: 14, scope: !2868)
!2930 = !DILocation(line: 148, column: 6, scope: !2868)
!2931 = !DILocation(line: 154, column: 5, scope: !2868)
!2932 = !DILocation(line: 154, column: 10, scope: !2868)
!2933 = !DILocation(line: 0, scope: !2868)
!2934 = !DILocation(line: 14, column: 13, scope: !2178, inlinedAt: !2929)
!2935 = !DILocation(line: 14, column: 11, scope: !2178, inlinedAt: !2929)
!2936 = !DILocation(line: 14, column: 12, scope: !2178, inlinedAt: !2929)
!2937 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2928)
!2938 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2928)
!2939 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2928)
!2940 = !DILocation(line: 13, column: 26, scope: !2178, inlinedAt: !2929)
!2941 = !DILocation(line: 13, column: 14, scope: !2178, inlinedAt: !2929)
!2942 = !DILocation(line: 13, column: 16, scope: !2178, inlinedAt: !2929)
!2943 = !DILocation(line: 0, scope: !2178, inlinedAt: !2929)
!2944 = !DILocation(line: 156, column: 12, scope: !2868)
!2945 = !DILocation(line: 156, column: 11, scope: !2868)
!2946 = !DILocation(line: 12, column: 6, scope: !2178, inlinedAt: !2926)
!2947 = !DILocation(line: 14, column: 13, scope: !2178, inlinedAt: !2926)
!2948 = !DILocation(line: 14, column: 11, scope: !2178, inlinedAt: !2926)
!2949 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2925)
!2950 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2925)
!2951 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2925)
!2952 = !DILocation(line: 13, column: 14, scope: !2178, inlinedAt: !2926)
!2953 = !DILocation(line: 161, column: 9, scope: !2868)
!2954 = !DILocation(line: 99, column: 6, scope: !2001, inlinedAt: !2955)
!2955 = !DILocation(line: 157, column: 29, scope: !1990, inlinedAt: !2956)
!2956 = !DILocation(line: 33, column: 27, scope: !1984, inlinedAt: !2957)
!2957 = !DILocation(line: 139, column: 16, scope: !2958, inlinedAt: !2933)
!2958 = distinct !DISubprogram(name: "runtime.printlock", linkageName: "runtime.printlock", scope: !127, file: !127, line: 138, type: !2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2959 = !DILocation(line: 33, column: 5, scope: !1984, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 139, column: 16, scope: !2958, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 163, column: 10, scope: !2868)
!2962 = !DILocation(line: 157, column: 31, scope: !1990, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 33, column: 27, scope: !1984, inlinedAt: !2960)
!2964 = !DILocation(line: 157, column: 36, scope: !1990, inlinedAt: !2963)
!2965 = !DILocation(line: 157, column: 41, scope: !1990, inlinedAt: !2963)
!2966 = !DILocation(line: 99, column: 6, scope: !2001, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 157, column: 29, scope: !1990, inlinedAt: !2963)
!2968 = !DILocation(line: 0, scope: !1984, inlinedAt: !2960)
!2969 = !DILocation(line: 43, column: 6, scope: !1984, inlinedAt: !2960)
!2970 = !DILocation(line: 153, column: 69, scope: !1938, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 43, column: 18, scope: !1984, inlinedAt: !2960)
!2972 = !DILocation(line: 153, column: 74, scope: !1938, inlinedAt: !2971)
!2973 = !DILocation(line: 77, column: 6, scope: !1949, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 153, column: 67, scope: !1938, inlinedAt: !2971)
!2975 = !DILocation(line: 43, column: 22, scope: !1984, inlinedAt: !2960)
!2976 = !DILocation(line: 45, column: 3, scope: !1984, inlinedAt: !2960)
!2977 = !DILocation(line: 26, column: 46, scope: !2019, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 45, column: 15, scope: !1984, inlinedAt: !2960)
!2979 = !DILocation(line: 26, column: 58, scope: !2019, inlinedAt: !2978)
!2980 = !DILocation(line: 26, column: 19, scope: !2019, inlinedAt: !2978)
!2981 = !DILocation(line: 12, column: 6, scope: !2178, inlinedAt: !2923)
!2982 = !DILocation(line: 14, column: 13, scope: !2178, inlinedAt: !2923)
!2983 = !DILocation(line: 14, column: 11, scope: !2178, inlinedAt: !2923)
!2984 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2922)
!2985 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2922)
!2986 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2922)
!2987 = !DILocation(line: 13, column: 14, scope: !2178, inlinedAt: !2923)
!2988 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2919)
!2989 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2919)
!2990 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2919)
!2991 = !DILocation(line: 50, column: 12, scope: !1928, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 143, column: 18, scope: !2993, inlinedAt: !2994)
!2993 = distinct !DISubprogram(name: "runtime.printunlock", linkageName: "runtime.printunlock", scope: !127, file: !127, line: 142, type: !2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2994 = distinct !DILocation(line: 163, column: 10, scope: !2868)
!2995 = !DILocation(line: 153, column: 69, scope: !1938, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 50, column: 24, scope: !1928, inlinedAt: !2992)
!2997 = !DILocation(line: 153, column: 74, scope: !1938, inlinedAt: !2996)
!2998 = !DILocation(line: 77, column: 6, scope: !1949, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 153, column: 67, scope: !1938, inlinedAt: !2996)
!3000 = !DILocation(line: 50, column: 29, scope: !1928, inlinedAt: !2992)
!3001 = !DILocation(line: 0, scope: !1928, inlinedAt: !2992)
!3002 = !DILocation(line: 52, column: 8, scope: !1928, inlinedAt: !2992)
!3003 = !DILocation(line: 54, column: 19, scope: !1963, inlinedAt: !3004)
!3004 = !DILocation(line: 55, column: 15, scope: !1928, inlinedAt: !3005)
!3005 = !DILocation(line: 143, column: 18, scope: !2993, inlinedAt: !2933)
!3006 = !DILocation(line: 180, column: 7, scope: !2868)
!3007 = !DILocation(line: 180, column: 8, scope: !2868)
!3008 = !DILocation(line: 181, column: 2, scope: !2868)
!3009 = !DILocation(line: 33, column: 5, scope: !1984, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 139, column: 16, scope: !2958, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 165, column: 10, scope: !2868)
!3012 = !DILocation(line: 157, column: 31, scope: !1990, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 33, column: 27, scope: !1984, inlinedAt: !3010)
!3014 = !DILocation(line: 157, column: 36, scope: !1990, inlinedAt: !3013)
!3015 = !DILocation(line: 157, column: 41, scope: !1990, inlinedAt: !3013)
!3016 = !DILocation(line: 99, column: 6, scope: !2001, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 157, column: 29, scope: !1990, inlinedAt: !3013)
!3018 = !DILocation(line: 0, scope: !1984, inlinedAt: !3010)
!3019 = !DILocation(line: 43, column: 6, scope: !1984, inlinedAt: !3010)
!3020 = !DILocation(line: 153, column: 69, scope: !1938, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 43, column: 18, scope: !1984, inlinedAt: !3010)
!3022 = !DILocation(line: 153, column: 74, scope: !1938, inlinedAt: !3021)
!3023 = !DILocation(line: 77, column: 6, scope: !1949, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 153, column: 67, scope: !1938, inlinedAt: !3021)
!3025 = !DILocation(line: 43, column: 22, scope: !1984, inlinedAt: !3010)
!3026 = !DILocation(line: 45, column: 3, scope: !1984, inlinedAt: !3010)
!3027 = !DILocation(line: 26, column: 46, scope: !2019, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 45, column: 15, scope: !1984, inlinedAt: !3010)
!3029 = !DILocation(line: 26, column: 58, scope: !2019, inlinedAt: !3028)
!3030 = !DILocation(line: 26, column: 19, scope: !2019, inlinedAt: !3028)
!3031 = !DILocation(line: 12, column: 6, scope: !2178, inlinedAt: !2917)
!3032 = !DILocation(line: 14, column: 13, scope: !2178, inlinedAt: !2917)
!3033 = !DILocation(line: 14, column: 11, scope: !2178, inlinedAt: !2917)
!3034 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2916)
!3035 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2916)
!3036 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2916)
!3037 = !DILocation(line: 13, column: 14, scope: !2178, inlinedAt: !2917)
!3038 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2913)
!3039 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2913)
!3040 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2913)
!3041 = !DILocation(line: 50, column: 12, scope: !1928, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 143, column: 18, scope: !2993, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 165, column: 10, scope: !2868)
!3044 = !DILocation(line: 153, column: 69, scope: !1938, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 50, column: 24, scope: !1928, inlinedAt: !3042)
!3046 = !DILocation(line: 153, column: 74, scope: !1938, inlinedAt: !3045)
!3047 = !DILocation(line: 77, column: 6, scope: !1949, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 153, column: 67, scope: !1938, inlinedAt: !3045)
!3049 = !DILocation(line: 50, column: 29, scope: !1928, inlinedAt: !3042)
!3050 = !DILocation(line: 0, scope: !1928, inlinedAt: !3042)
!3051 = !DILocation(line: 52, column: 8, scope: !1928, inlinedAt: !3042)
!3052 = !DILocation(line: 33, column: 5, scope: !1984, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 139, column: 16, scope: !2958, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 167, column: 10, scope: !2868)
!3055 = !DILocation(line: 157, column: 31, scope: !1990, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 33, column: 27, scope: !1984, inlinedAt: !3053)
!3057 = !DILocation(line: 157, column: 36, scope: !1990, inlinedAt: !3056)
!3058 = !DILocation(line: 157, column: 41, scope: !1990, inlinedAt: !3056)
!3059 = !DILocation(line: 99, column: 6, scope: !2001, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 157, column: 29, scope: !1990, inlinedAt: !3056)
!3061 = !DILocation(line: 0, scope: !1984, inlinedAt: !3053)
!3062 = !DILocation(line: 43, column: 6, scope: !1984, inlinedAt: !3053)
!3063 = !DILocation(line: 153, column: 69, scope: !1938, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 43, column: 18, scope: !1984, inlinedAt: !3053)
!3065 = !DILocation(line: 153, column: 74, scope: !1938, inlinedAt: !3064)
!3066 = !DILocation(line: 77, column: 6, scope: !1949, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 153, column: 67, scope: !1938, inlinedAt: !3064)
!3068 = !DILocation(line: 43, column: 22, scope: !1984, inlinedAt: !3053)
!3069 = !DILocation(line: 45, column: 3, scope: !1984, inlinedAt: !3053)
!3070 = !DILocation(line: 26, column: 46, scope: !2019, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 45, column: 15, scope: !1984, inlinedAt: !3053)
!3072 = !DILocation(line: 26, column: 58, scope: !2019, inlinedAt: !3071)
!3073 = !DILocation(line: 26, column: 19, scope: !2019, inlinedAt: !3071)
!3074 = !DILocation(line: 12, column: 6, scope: !2178, inlinedAt: !2911)
!3075 = !DILocation(line: 14, column: 13, scope: !2178, inlinedAt: !2911)
!3076 = !DILocation(line: 14, column: 11, scope: !2178, inlinedAt: !2911)
!3077 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2910)
!3078 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2910)
!3079 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2910)
!3080 = !DILocation(line: 13, column: 14, scope: !2178, inlinedAt: !2911)
!3081 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2907)
!3082 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2907)
!3083 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2907)
!3084 = !DILocation(line: 50, column: 12, scope: !1928, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 143, column: 18, scope: !2993, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 167, column: 10, scope: !2868)
!3087 = !DILocation(line: 153, column: 69, scope: !1938, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 50, column: 24, scope: !1928, inlinedAt: !3085)
!3089 = !DILocation(line: 153, column: 74, scope: !1938, inlinedAt: !3088)
!3090 = !DILocation(line: 77, column: 6, scope: !1949, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 153, column: 67, scope: !1938, inlinedAt: !3088)
!3092 = !DILocation(line: 50, column: 29, scope: !1928, inlinedAt: !3085)
!3093 = !DILocation(line: 0, scope: !1928, inlinedAt: !3085)
!3094 = !DILocation(line: 52, column: 8, scope: !1928, inlinedAt: !3085)
!3095 = !DILocation(line: 169, column: 11, scope: !2868)
!3096 = !DILocation(line: 33, column: 5, scope: !1984, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 139, column: 16, scope: !2958, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 169, column: 10, scope: !2868)
!3099 = !DILocation(line: 157, column: 31, scope: !1990, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 33, column: 27, scope: !1984, inlinedAt: !3097)
!3101 = !DILocation(line: 157, column: 36, scope: !1990, inlinedAt: !3100)
!3102 = !DILocation(line: 157, column: 41, scope: !1990, inlinedAt: !3100)
!3103 = !DILocation(line: 99, column: 6, scope: !2001, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 157, column: 29, scope: !1990, inlinedAt: !3100)
!3105 = !DILocation(line: 0, scope: !1984, inlinedAt: !3097)
!3106 = !DILocation(line: 43, column: 6, scope: !1984, inlinedAt: !3097)
!3107 = !DILocation(line: 153, column: 69, scope: !1938, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 43, column: 18, scope: !1984, inlinedAt: !3097)
!3109 = !DILocation(line: 153, column: 74, scope: !1938, inlinedAt: !3108)
!3110 = !DILocation(line: 77, column: 6, scope: !1949, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 153, column: 67, scope: !1938, inlinedAt: !3108)
!3112 = !DILocation(line: 43, column: 22, scope: !1984, inlinedAt: !3097)
!3113 = !DILocation(line: 45, column: 3, scope: !1984, inlinedAt: !3097)
!3114 = !DILocation(line: 26, column: 46, scope: !2019, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 45, column: 15, scope: !1984, inlinedAt: !3097)
!3116 = !DILocation(line: 26, column: 58, scope: !2019, inlinedAt: !3115)
!3117 = !DILocation(line: 26, column: 19, scope: !2019, inlinedAt: !3115)
!3118 = !DILocation(line: 68, column: 5, scope: !2898, inlinedAt: !2901)
!3119 = !DILocation(line: 68, column: 7, scope: !2898, inlinedAt: !2901)
!3120 = !DILocation(line: 0, scope: !2898, inlinedAt: !2901)
!3121 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2905)
!3122 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2905)
!3123 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2905)
!3124 = !DILocation(line: 70, column: 8, scope: !2898, inlinedAt: !2901)
!3125 = !DILocation(line: 70, column: 7, scope: !2898, inlinedAt: !2901)
!3126 = !DILocation(line: 70, column: 3, scope: !2898, inlinedAt: !2901)
!3127 = !DILocation(line: 65, column: 17, scope: !2898, inlinedAt: !2901)
!3128 = !DILocation(line: 72, column: 21, scope: !2898, inlinedAt: !2901)
!3129 = !DILocation(line: 62, column: 21, scope: !2892, inlinedAt: !2897)
!3130 = !DILocation(line: 62, column: 20, scope: !2892, inlinedAt: !2897)
!3131 = !DILocation(line: 79, column: 2, scope: !2882, inlinedAt: !2891)
!3132 = !DILocation(line: 80, column: 6, scope: !2882, inlinedAt: !2891)
!3133 = !DILocation(line: 0, scope: !2882, inlinedAt: !2891)
!3134 = !DILocation(line: 89, column: 23, scope: !2882, inlinedAt: !2891)
!3135 = !DILocation(line: 89, column: 25, scope: !2882, inlinedAt: !2891)
!3136 = !DILocation(line: 80, column: 15, scope: !2882, inlinedAt: !2891)
!3137 = !DILocation(line: 81, column: 17, scope: !2882, inlinedAt: !2891)
!3138 = !DILocation(line: 81, column: 18, scope: !2882, inlinedAt: !2891)
!3139 = !DILocation(line: 81, column: 16, scope: !2882, inlinedAt: !2891)
!3140 = !DILocation(line: 82, column: 15, scope: !2882, inlinedAt: !2891)
!3141 = !DILocation(line: 82, column: 9, scope: !2882, inlinedAt: !2891)
!3142 = !DILocation(line: 83, column: 12, scope: !2882, inlinedAt: !2891)
!3143 = !DILocation(line: 86, column: 3, scope: !2882, inlinedAt: !2891)
!3144 = !DILocation(line: 80, column: 23, scope: !2882, inlinedAt: !2891)
!3145 = !DILocation(line: 80, column: 17, scope: !2882, inlinedAt: !2891)
!3146 = !DILocation(line: 90, column: 18, scope: !2882, inlinedAt: !2891)
!3147 = !DILocation(line: 90, column: 17, scope: !2882, inlinedAt: !2891)
!3148 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2881)
!3149 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2881)
!3150 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2881)
!3151 = !DILocation(line: 89, column: 31, scope: !2882, inlinedAt: !2891)
!3152 = !DILocation(line: 92, column: 2, scope: !2882, inlinedAt: !2891)
!3153 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2878)
!3154 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2878)
!3155 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2878)
!3156 = !DILocation(line: 50, column: 12, scope: !1928, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 143, column: 18, scope: !2993, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 169, column: 10, scope: !2868)
!3159 = !DILocation(line: 153, column: 69, scope: !1938, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 50, column: 24, scope: !1928, inlinedAt: !3157)
!3161 = !DILocation(line: 153, column: 74, scope: !1938, inlinedAt: !3160)
!3162 = !DILocation(line: 77, column: 6, scope: !1949, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 153, column: 67, scope: !1938, inlinedAt: !3160)
!3164 = !DILocation(line: 50, column: 29, scope: !1928, inlinedAt: !3157)
!3165 = !DILocation(line: 0, scope: !1928, inlinedAt: !3157)
!3166 = !DILocation(line: 52, column: 8, scope: !1928, inlinedAt: !3157)
!3167 = !DILocation(line: 14, column: 13, scope: !2178, inlinedAt: !2876)
!3168 = !DILocation(line: 14, column: 11, scope: !2178, inlinedAt: !2876)
!3169 = !DILocation(line: 14, column: 12, scope: !2178, inlinedAt: !2876)
!3170 = !DILocation(line: 215, column: 17, scope: !2184, inlinedAt: !2875)
!3171 = !DILocation(line: 216, column: 12, scope: !2184, inlinedAt: !2875)
!3172 = !DILocation(line: 217, column: 2, scope: !2184, inlinedAt: !2875)
!3173 = !DILocation(line: 13, column: 26, scope: !2178, inlinedAt: !2876)
!3174 = !DILocation(line: 13, column: 14, scope: !2178, inlinedAt: !2876)
!3175 = !DILocation(line: 13, column: 16, scope: !2178, inlinedAt: !2876)
!3176 = !DILocation(line: 0, scope: !2178, inlinedAt: !2876)
!3177 = distinct !DISubprogram(name: "runtime.tinygo_signal_handler", linkageName: "tinygo_signal_handler", scope: !113, file: !113, line: 420, type: !2064, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !3178)
!3178 = !{!3179, !3180, !3181, !3182}
!3179 = !DILocalVariable(name: "s", arg: 1, scope: !3177, file: !113, line: 420, type: !60)
!3180 = !DILocalVariable(name: "mask", scope: !3177, file: !113, line: 427, type: !43)
!3181 = !DILocalVariable(name: "val", scope: !3177, file: !113, line: 428, type: !43)
!3182 = !DILocalVariable(name: "swapped", scope: !3177, file: !113, line: 429, type: !47)
!3183 = !DILocation(line: 420, column: 6, scope: !3177)
!3184 = !DILocation(line: 0, scope: !3177)
!3185 = !DILocation(line: 427, column: 31, scope: !3177)
!3186 = !DILocation(line: 427, column: 3, scope: !3177)
!3187 = !DILocation(line: 147, column: 18, scope: !2117, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 428, column: 30, scope: !3177)
!3189 = !DILocation(line: 147, column: 53, scope: !2117, inlinedAt: !3188)
!3190 = !DILocation(line: 183, column: 6, scope: !2124, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 147, column: 51, scope: !2117, inlinedAt: !3188)
!3192 = !DILocation(line: 428, column: 3, scope: !3177)
!3193 = !DILocation(line: 429, column: 45, scope: !3177)
!3194 = !DILocation(line: 429, column: 50, scope: !3177)
!3195 = !DILocation(line: 429, column: 54, scope: !3177)
!3196 = !DILocation(line: 429, column: 53, scope: !3177)
!3197 = !DILocation(line: 156, column: 18, scope: !1990, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 429, column: 44, scope: !3177)
!3199 = !DILocation(line: 157, column: 31, scope: !1990, inlinedAt: !3198)
!3200 = !DILocation(line: 157, column: 36, scope: !1990, inlinedAt: !3198)
!3201 = !DILocation(line: 157, column: 41, scope: !1990, inlinedAt: !3198)
!3202 = !DILocation(line: 99, column: 6, scope: !2001, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 157, column: 29, scope: !1990, inlinedAt: !3198)
!3204 = !DILocation(line: 429, column: 3, scope: !3177)
!3205 = !DILocation(line: 430, column: 6, scope: !3177)
!3206 = !DILocation(line: 153, column: 18, scope: !1938, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 437, column: 21, scope: !3177)
!3208 = !DILocation(line: 153, column: 69, scope: !1938, inlinedAt: !3207)
!3209 = !DILocation(line: 153, column: 74, scope: !1938, inlinedAt: !3207)
!3210 = !DILocation(line: 77, column: 6, scope: !1949, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 153, column: 67, scope: !1938, inlinedAt: !3207)
!3212 = !DILocation(line: 437, column: 25, scope: !3177)
!3213 = !DILocation(line: 58, column: 17, scope: !2111, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 441, column: 22, scope: !3177)
!3215 = !DILocation(line: 59, column: 50, scope: !2111, inlinedAt: !3214)
!3216 = !DILocation(line: 59, column: 23, scope: !2111, inlinedAt: !3214)
!3217 = !DILocation(line: 443, column: 2, scope: !3177)
!3218 = distinct !DISubprogram(name: "slices.pdqsortOrdered[int]", linkageName: "slices.pdqsortOrdered[int]", scope: !3219, file: !3219, line: 63, type: !3220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3226)
!3219 = !DIFile(filename: "zsortordered.go", directory: "/usr/local/go/src/slices")
!3220 = !DISubroutineType(cc: DW_CC_nocall, types: !3221)
!3221 = !{!3222, !2182, !2182, !2182}
!3222 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]int", size: 192, align: 64, elements: !3223)
!3223 = !{!3224, !323, !328}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !3225, size: 64, align: 64)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64, align: 64, dwarfAddressSpace: 0)
!3226 = !{!3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3237, !3238, !3239, !3240, !3241, !3242}
!3227 = !DILocalVariable(name: "data", arg: 1, scope: !3218, file: !3219, line: 63, type: !3222)
!3228 = !DILocalVariable(name: "a", arg: 2, scope: !3218, file: !3219, line: 63, type: !2182)
!3229 = !DILocalVariable(name: "b", arg: 3, scope: !3218, file: !3219, line: 63, type: !2182)
!3230 = !DILocalVariable(name: "limit", arg: 4, scope: !3218, file: !3219, line: 63, type: !2182)
!3231 = !DILocalVariable(name: "wasBalanced", scope: !3218, file: !3219, line: 67, type: !47)
!3232 = !DILocalVariable(name: "wasPartitioned", scope: !3218, file: !3219, line: 68, type: !47)
!3233 = !DILocalVariable(name: "length", scope: !3218, file: !3219, line: 72, type: !2182)
!3234 = !DILocalVariable(name: "pivot", scope: !3218, file: !3219, line: 91, type: !2182)
!3235 = !DILocalVariable(name: "hint", scope: !3218, file: !3219, line: 91, type: !3236)
!3236 = !DIDerivedType(tag: DW_TAG_typedef, name: "slices.sortedHint", baseType: !2182)
!3237 = !DILocalVariable(name: "mid", scope: !3218, file: !3219, line: 111, type: !2182)
!3238 = !DILocalVariable(name: "mid", scope: !3218, file: !3219, line: 116, type: !2182)
!3239 = !DILocalVariable(name: "alreadyPartitioned", scope: !3218, file: !3219, line: 116, type: !47)
!3240 = !DILocalVariable(name: "leftLen", scope: !3218, file: !3219, line: 119, type: !2182)
!3241 = !DILocalVariable(name: "rightLen", scope: !3218, file: !3219, line: 119, type: !2182)
!3242 = !DILocalVariable(name: "balanceThreshold", scope: !3218, file: !3219, line: 120, type: !2182)
!3243 = !DILocation(line: 269, column: 9, scope: !3244, inlinedAt: !3256)
!3244 = distinct !DISubprogram(name: "slices.choosePivotOrdered[int]", linkageName: "slices.choosePivotOrdered[int]", scope: !3219, file: !3219, line: 263, type: !3245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3247)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!3222, !2182, !2182}
!3247 = !{!3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255}
!3248 = !DILocalVariable(name: "data", arg: 1, scope: !3244, file: !3219, line: 263, type: !3222)
!3249 = !DILocalVariable(name: "a", arg: 2, scope: !3244, file: !3219, line: 263, type: !2182)
!3250 = !DILocalVariable(name: "b", arg: 3, scope: !3244, file: !3219, line: 263, type: !2182)
!3251 = !DILocalVariable(name: "l", scope: !3244, file: !3219, line: 269, type: !2182)
!3252 = !DILocalVariable(name: "i", scope: !3244, file: !3219, line: 273, type: !2182)
!3253 = !DILocalVariable(name: "j", scope: !3244, file: !3219, line: 274, type: !2182)
!3254 = !DILocalVariable(name: "k", scope: !3244, file: !3219, line: 275, type: !2182)
!3255 = !DILocalVariable(name: "swaps", scope: !3244, file: !3219, line: 272, type: !2182)
!3256 = distinct !DILocation(line: 91, column: 36, scope: !3218)
!3257 = !DILocation(line: 63, column: 6, scope: !3218)
!3258 = !DILocation(line: 67, column: 3, scope: !3218)
!3259 = !DILocation(line: 68, column: 3, scope: !3218)
!3260 = !DILocation(line: 72, column: 15, scope: !3218)
!3261 = !DILocation(line: 74, column: 13, scope: !3218)
!3262 = !DILocation(line: 0, scope: !3218)
!3263 = !DILocation(line: 72, column: 13, scope: !3218)
!3264 = !DILocation(line: 72, column: 17, scope: !3218)
!3265 = !DILocation(line: 63, column: 49, scope: !3218)
!3266 = !DILocation(line: 75, column: 25, scope: !3218)
!3267 = !DILocation(line: 75, column: 31, scope: !3218)
!3268 = !DILocation(line: 75, column: 34, scope: !3218)
!3269 = !DILocalVariable(name: "data", arg: 1, scope: !3270, file: !3219, line: 12, type: !3222)
!3270 = distinct !DISubprogram(name: "slices.insertionSortOrdered[int]", linkageName: "slices.insertionSortOrdered[int]", scope: !3219, file: !3219, line: 12, type: !3245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3271)
!3271 = !{!3269, !3272, !3273, !3274, !3275}
!3272 = !DILocalVariable(name: "a", arg: 2, scope: !3270, file: !3219, line: 12, type: !2182)
!3273 = !DILocalVariable(name: "b", arg: 3, scope: !3270, file: !3219, line: 12, type: !2182)
!3274 = !DILocalVariable(name: "i", scope: !3270, file: !3219, line: 13, type: !2182)
!3275 = !DILocalVariable(name: "j", scope: !3270, file: !3219, line: 14, type: !2182)
!3276 = !DILocation(line: 12, column: 6, scope: !3270, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 75, column: 24, scope: !3218)
!3278 = !DILocation(line: 13, column: 11, scope: !3270, inlinedAt: !3277)
!3279 = !DILocation(line: 13, column: 6, scope: !3270, inlinedAt: !3277)
!3280 = !DILocation(line: 13, scope: !3270, inlinedAt: !3277)
!3281 = !DILocation(line: 13, column: 20, scope: !3270, inlinedAt: !3277)
!3282 = !DILocation(line: 0, scope: !3270, inlinedAt: !3277)
!3283 = !DILocation(line: 14, column: 15, scope: !3270, inlinedAt: !3277)
!3284 = !DILocation(line: 14, column: 19, scope: !3270, inlinedAt: !3277)
!3285 = !DILocation(line: 14, column: 17, scope: !3270, inlinedAt: !3277)
!3286 = !DILocation(line: 14, column: 33, scope: !3270, inlinedAt: !3277)
!3287 = !DILocation(line: 14, column: 38, scope: !3270, inlinedAt: !3277)
!3288 = !DILocation(line: 14, column: 37, scope: !3270, inlinedAt: !3277)
!3289 = !DILocation(line: 14, column: 42, scope: !3270, inlinedAt: !3277)
!3290 = !DILocation(line: 14, column: 47, scope: !3270, inlinedAt: !3277)
!3291 = !DILocation(line: 14, column: 48, scope: !3270, inlinedAt: !3277)
!3292 = !DILocation(line: 14, column: 46, scope: !3270, inlinedAt: !3277)
!3293 = !DILocalVariable(name: "x", arg: 1, scope: !3294, file: !3295, line: 28, type: !2182)
!3294 = distinct !DISubprogram(name: "cmp.Less[int]", linkageName: "cmp.Less[int]", scope: !3295, file: !3295, line: 28, type: !3296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3298)
!3295 = !DIFile(filename: "cmp.go", directory: "/usr/local/go/src/cmp")
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!2182, !2182}
!3298 = !{!3293, !3299}
!3299 = !DILocalVariable(name: "y", arg: 2, scope: !3294, file: !3295, line: 28, type: !2182)
!3300 = !DILocation(line: 29, column: 36, scope: !3294, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 14, column: 32, scope: !3270, inlinedAt: !3277)
!3302 = !DILocation(line: 29, column: 40, scope: !3294, inlinedAt: !3301)
!3303 = !DILocation(line: 29, column: 38, scope: !3294, inlinedAt: !3301)
!3304 = !DILocation(line: 15, column: 36, scope: !3270, inlinedAt: !3277)
!3305 = !DILocation(line: 15, column: 41, scope: !3270, inlinedAt: !3277)
!3306 = !DILocation(line: 15, column: 8, scope: !3270, inlinedAt: !3277)
!3307 = !DILocation(line: 15, column: 17, scope: !3270, inlinedAt: !3277)
!3308 = !DILocation(line: 13, column: 25, scope: !3270, inlinedAt: !3277)
!3309 = !DILocation(line: 13, column: 18, scope: !3270, inlinedAt: !3277)
!3310 = !DILocation(line: 13, column: 22, scope: !3270, inlinedAt: !3277)
!3311 = !DILocation(line: 80, column: 6, scope: !3218)
!3312 = !DILocation(line: 80, column: 12, scope: !3218)
!3313 = !DILocation(line: 81, column: 20, scope: !3218)
!3314 = !DILocation(line: 81, column: 26, scope: !3218)
!3315 = !DILocation(line: 81, column: 29, scope: !3218)
!3316 = !DILocalVariable(name: "data", arg: 1, scope: !3317, file: !3219, line: 40, type: !3222)
!3317 = distinct !DISubprogram(name: "slices.heapSortOrdered[int]", linkageName: "slices.heapSortOrdered[int]", scope: !3219, file: !3219, line: 40, type: !3245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3318)
!3318 = !{!3316, !3319, !3320, !3321, !3322, !3323, !3324, !3325}
!3319 = !DILocalVariable(name: "a", arg: 2, scope: !3317, file: !3219, line: 40, type: !2182)
!3320 = !DILocalVariable(name: "b", arg: 3, scope: !3317, file: !3219, line: 40, type: !2182)
!3321 = !DILocalVariable(name: "first", scope: !3317, file: !3219, line: 41, type: !2182)
!3322 = !DILocalVariable(name: "lo", scope: !3317, file: !3219, line: 42, type: !2182)
!3323 = !DILocalVariable(name: "hi", scope: !3317, file: !3219, line: 43, type: !2182)
!3324 = !DILocalVariable(name: "i", scope: !3317, file: !3219, line: 46, type: !2182)
!3325 = !DILocalVariable(name: "i", scope: !3317, file: !3219, line: 51, type: !2182)
!3326 = !DILocation(line: 40, column: 6, scope: !3317, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 81, column: 19, scope: !3218)
!3328 = !DILocation(line: 41, column: 2, scope: !3317, inlinedAt: !3327)
!3329 = !DILocation(line: 42, column: 2, scope: !3317, inlinedAt: !3327)
!3330 = !DILocation(line: 43, column: 8, scope: !3317, inlinedAt: !3327)
!3331 = !DILocation(line: 43, column: 12, scope: !3317, inlinedAt: !3327)
!3332 = !DILocation(line: 46, column: 12, scope: !3317, inlinedAt: !3327)
!3333 = !DILocation(line: 46, column: 15, scope: !3317, inlinedAt: !3327)
!3334 = !DILocation(line: 46, column: 6, scope: !3317, inlinedAt: !3327)
!3335 = !DILocation(line: 46, column: 20, scope: !3317, inlinedAt: !3327)
!3336 = !DILocation(line: 0, scope: !3317, inlinedAt: !3327)
!3337 = !DILocation(line: 47, column: 19, scope: !3317, inlinedAt: !3327)
!3338 = !DILocation(line: 47, column: 25, scope: !3317, inlinedAt: !3327)
!3339 = !DILocation(line: 47, column: 28, scope: !3317, inlinedAt: !3327)
!3340 = !DILocation(line: 47, column: 32, scope: !3317, inlinedAt: !3327)
!3341 = !DILocation(line: 47, column: 18, scope: !3317, inlinedAt: !3327)
!3342 = !DILocation(line: 46, column: 33, scope: !3317, inlinedAt: !3327)
!3343 = !DILocation(line: 46, column: 25, scope: !3317, inlinedAt: !3327)
!3344 = !DILocation(line: 46, column: 27, scope: !3317, inlinedAt: !3327)
!3345 = !DILocation(line: 52, column: 16, scope: !3317, inlinedAt: !3327)
!3346 = !DILocation(line: 52, column: 21, scope: !3317, inlinedAt: !3327)
!3347 = !DILocation(line: 52, column: 27, scope: !3317, inlinedAt: !3327)
!3348 = !DILocation(line: 52, column: 26, scope: !3317, inlinedAt: !3327)
!3349 = !DILocation(line: 52, column: 36, scope: !3317, inlinedAt: !3327)
!3350 = !DILocation(line: 52, column: 47, scope: !3317, inlinedAt: !3327)
!3351 = !DILocation(line: 52, column: 52, scope: !3317, inlinedAt: !3327)
!3352 = !DILocation(line: 52, column: 51, scope: !3317, inlinedAt: !3327)
!3353 = !DILocation(line: 52, column: 7, scope: !3317, inlinedAt: !3327)
!3354 = !DILocation(line: 52, column: 20, scope: !3317, inlinedAt: !3327)
!3355 = !DILocation(line: 53, column: 19, scope: !3317, inlinedAt: !3327)
!3356 = !DILocation(line: 53, column: 25, scope: !3317, inlinedAt: !3327)
!3357 = !DILocation(line: 53, column: 29, scope: !3317, inlinedAt: !3327)
!3358 = !DILocation(line: 53, column: 32, scope: !3317, inlinedAt: !3327)
!3359 = !DILocation(line: 53, column: 18, scope: !3317, inlinedAt: !3327)
!3360 = !DILocation(line: 51, column: 27, scope: !3317, inlinedAt: !3327)
!3361 = !DILocation(line: 51, scope: !3317, inlinedAt: !3327)
!3362 = !DILocation(line: 51, column: 19, scope: !3317, inlinedAt: !3327)
!3363 = !DILocation(line: 51, column: 21, scope: !3317, inlinedAt: !3327)
!3364 = !DILocation(line: 86, column: 7, scope: !3218)
!3365 = !DILocation(line: 63, column: 52, scope: !3218)
!3366 = !DILocation(line: 91, column: 37, scope: !3218)
!3367 = !DILocation(line: 91, column: 43, scope: !3218)
!3368 = !DILocation(line: 91, column: 46, scope: !3218)
!3369 = !DILocation(line: 263, column: 6, scope: !3244, inlinedAt: !3256)
!3370 = !DILocation(line: 269, column: 7, scope: !3244, inlinedAt: !3256)
!3371 = !DILocation(line: 273, column: 11, scope: !3244, inlinedAt: !3256)
!3372 = !DILocation(line: 273, column: 15, scope: !3244, inlinedAt: !3256)
!3373 = !DILocation(line: 273, column: 16, scope: !3244, inlinedAt: !3256)
!3374 = !DILocation(line: 273, column: 13, scope: !3244, inlinedAt: !3256)
!3375 = !DILocation(line: 273, column: 3, scope: !3244, inlinedAt: !3256)
!3376 = !DILocation(line: 274, column: 18, scope: !3244, inlinedAt: !3256)
!3377 = !DILocation(line: 274, column: 13, scope: !3244, inlinedAt: !3256)
!3378 = !DILocation(line: 274, column: 3, scope: !3244, inlinedAt: !3256)
!3379 = !DILocation(line: 275, column: 18, scope: !3244, inlinedAt: !3256)
!3380 = !DILocation(line: 275, column: 13, scope: !3244, inlinedAt: !3256)
!3381 = !DILocation(line: 275, column: 3, scope: !3244, inlinedAt: !3256)
!3382 = !DILocation(line: 272, column: 3, scope: !3244, inlinedAt: !3256)
!3383 = !DILocation(line: 279, column: 8, scope: !3244, inlinedAt: !3256)
!3384 = !DILocation(line: 0, scope: !3244, inlinedAt: !3256)
!3385 = !DILocation(line: 281, column: 30, scope: !3244, inlinedAt: !3256)
!3386 = !DILocation(line: 281, column: 36, scope: !3244, inlinedAt: !3256)
!3387 = !DILocalVariable(name: "data", arg: 1, scope: !3388, file: !3219, line: 317, type: !3222)
!3388 = distinct !DISubprogram(name: "slices.medianAdjacentOrdered[int]", linkageName: "slices.medianAdjacentOrdered[int]", scope: !3219, file: !3219, line: 317, type: !3389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3391)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!3222, !2182, !3225}
!3391 = !{!3387, !3392, !3393}
!3392 = !DILocalVariable(name: "a", arg: 2, scope: !3388, file: !3219, line: 317, type: !2182)
!3393 = !DILocalVariable(name: "swaps", arg: 3, scope: !3388, file: !3219, line: 317, type: !3225)
!3394 = !DILocation(line: 317, column: 6, scope: !3388, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 281, column: 29, scope: !3244, inlinedAt: !3256)
!3396 = !DILocation(line: 318, column: 23, scope: !3388, inlinedAt: !3395)
!3397 = !DILocation(line: 318, column: 29, scope: !3388, inlinedAt: !3395)
!3398 = !DILocation(line: 318, column: 30, scope: !3388, inlinedAt: !3395)
!3399 = !DILocation(line: 318, column: 38, scope: !3388, inlinedAt: !3395)
!3400 = !DILocation(line: 318, column: 22, scope: !3388, inlinedAt: !3395)
!3401 = !DILocation(line: 281, column: 4, scope: !3244, inlinedAt: !3256)
!3402 = !DILocation(line: 282, column: 36, scope: !3244, inlinedAt: !3256)
!3403 = !DILocation(line: 317, column: 6, scope: !3388, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 282, column: 29, scope: !3244, inlinedAt: !3256)
!3405 = !DILocation(line: 318, column: 23, scope: !3388, inlinedAt: !3404)
!3406 = !DILocation(line: 318, column: 29, scope: !3388, inlinedAt: !3404)
!3407 = !DILocation(line: 318, column: 30, scope: !3388, inlinedAt: !3404)
!3408 = !DILocation(line: 318, column: 38, scope: !3388, inlinedAt: !3404)
!3409 = !DILocation(line: 318, column: 22, scope: !3388, inlinedAt: !3404)
!3410 = !DILocation(line: 282, column: 4, scope: !3244, inlinedAt: !3256)
!3411 = !DILocation(line: 283, column: 36, scope: !3244, inlinedAt: !3256)
!3412 = !DILocation(line: 317, column: 6, scope: !3388, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 283, column: 29, scope: !3244, inlinedAt: !3256)
!3414 = !DILocation(line: 318, column: 23, scope: !3388, inlinedAt: !3413)
!3415 = !DILocation(line: 318, column: 29, scope: !3388, inlinedAt: !3413)
!3416 = !DILocation(line: 318, column: 30, scope: !3388, inlinedAt: !3413)
!3417 = !DILocation(line: 318, column: 38, scope: !3388, inlinedAt: !3413)
!3418 = !DILocation(line: 318, column: 22, scope: !3388, inlinedAt: !3413)
!3419 = !DILocation(line: 283, column: 4, scope: !3244, inlinedAt: !3256)
!3420 = !DILocation(line: 286, column: 21, scope: !3244, inlinedAt: !3256)
!3421 = !DILocation(line: 286, column: 27, scope: !3244, inlinedAt: !3256)
!3422 = !DILocation(line: 286, column: 30, scope: !3244, inlinedAt: !3256)
!3423 = !DILocation(line: 286, column: 33, scope: !3244, inlinedAt: !3256)
!3424 = !DILocation(line: 286, column: 20, scope: !3244, inlinedAt: !3256)
!3425 = !DILocation(line: 286, column: 3, scope: !3244, inlinedAt: !3256)
!3426 = !DILocation(line: 289, column: 9, scope: !3244, inlinedAt: !3256)
!3427 = !DILocation(line: 91, column: 3, scope: !3218)
!3428 = !DILocation(line: 92, column: 6, scope: !3218)
!3429 = !DILocation(line: 93, column: 24, scope: !3218)
!3430 = !DILocation(line: 93, column: 30, scope: !3218)
!3431 = !DILocation(line: 93, column: 33, scope: !3218)
!3432 = !DILocalVariable(name: "data", arg: 1, scope: !3433, file: !3219, line: 321, type: !3222)
!3433 = distinct !DISubprogram(name: "slices.reverseRangeOrdered[int]", linkageName: "slices.reverseRangeOrdered[int]", scope: !3219, file: !3219, line: 321, type: !3245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3434)
!3434 = !{!3432, !3435, !3436, !3437, !3438}
!3435 = !DILocalVariable(name: "a", arg: 2, scope: !3433, file: !3219, line: 321, type: !2182)
!3436 = !DILocalVariable(name: "b", arg: 3, scope: !3433, file: !3219, line: 321, type: !2182)
!3437 = !DILocalVariable(name: "i", scope: !3433, file: !3219, line: 322, type: !2182)
!3438 = !DILocalVariable(name: "j", scope: !3433, file: !3219, line: 323, type: !2182)
!3439 = !DILocation(line: 321, column: 6, scope: !3433, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 93, column: 23, scope: !3218)
!3441 = !DILocation(line: 322, column: 7, scope: !3433, inlinedAt: !3440)
!3442 = !DILocation(line: 322, column: 2, scope: !3433, inlinedAt: !3440)
!3443 = !DILocation(line: 323, column: 7, scope: !3433, inlinedAt: !3440)
!3444 = !DILocation(line: 323, column: 2, scope: !3433, inlinedAt: !3440)
!3445 = !DILocation(line: 0, scope: !3433, inlinedAt: !3440)
!3446 = !DILocation(line: 324, column: 8, scope: !3433, inlinedAt: !3440)
!3447 = !DILocation(line: 325, column: 8, scope: !3433, inlinedAt: !3440)
!3448 = !DILocation(line: 325, column: 22, scope: !3433, inlinedAt: !3440)
!3449 = !DILocation(line: 325, column: 27, scope: !3433, inlinedAt: !3440)
!3450 = !DILocation(line: 325, column: 26, scope: !3433, inlinedAt: !3440)
!3451 = !DILocation(line: 325, column: 31, scope: !3433, inlinedAt: !3440)
!3452 = !DILocation(line: 325, column: 36, scope: !3433, inlinedAt: !3440)
!3453 = !DILocation(line: 325, column: 35, scope: !3433, inlinedAt: !3440)
!3454 = !DILocation(line: 325, column: 7, scope: !3433, inlinedAt: !3440)
!3455 = !DILocation(line: 325, column: 16, scope: !3433, inlinedAt: !3440)
!3456 = !DILocation(line: 326, column: 3, scope: !3433, inlinedAt: !3440)
!3457 = !DILocation(line: 327, column: 3, scope: !3433, inlinedAt: !3440)
!3458 = !DILocation(line: 324, column: 10, scope: !3433, inlinedAt: !3440)
!3459 = !DILocation(line: 97, column: 13, scope: !3218)
!3460 = !DILocation(line: 97, column: 23, scope: !3218)
!3461 = !DILocation(line: 97, column: 31, scope: !3218)
!3462 = !DILocation(line: 97, column: 29, scope: !3218)
!3463 = !DILocation(line: 97, column: 20, scope: !3218)
!3464 = !DILocation(line: 97, column: 4, scope: !3218)
!3465 = !DILocation(line: 98, column: 4, scope: !3218)
!3466 = !DILocation(line: 91, column: 10, scope: !3218)
!3467 = !DILocation(line: 102, column: 6, scope: !3218)
!3468 = !DILocation(line: 102, column: 39, scope: !3218)
!3469 = !DILocation(line: 103, column: 35, scope: !3218)
!3470 = !DILocation(line: 103, column: 41, scope: !3218)
!3471 = !DILocation(line: 103, column: 44, scope: !3218)
!3472 = !DILocalVariable(name: "data", arg: 1, scope: !3473, file: !3219, line: 197, type: !3222)
!3473 = distinct !DISubprogram(name: "slices.partialInsertionSortOrdered[int]", linkageName: "slices.partialInsertionSortOrdered[int]", scope: !3219, file: !3219, line: 197, type: !3245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3474)
!3474 = !{!3472, !3475, !3476, !3477, !3478, !3479, !3480}
!3475 = !DILocalVariable(name: "a", arg: 2, scope: !3473, file: !3219, line: 197, type: !2182)
!3476 = !DILocalVariable(name: "b", arg: 3, scope: !3473, file: !3219, line: 197, type: !2182)
!3477 = !DILocalVariable(name: "i", scope: !3473, file: !3219, line: 202, type: !2182)
!3478 = !DILocalVariable(name: "j", scope: !3473, file: !3219, line: 203, type: !2182)
!3479 = !DILocalVariable(name: "j", scope: !3473, file: !3219, line: 220, type: !2182)
!3480 = !DILocalVariable(name: "j", scope: !3473, file: !3219, line: 229, type: !2182)
!3481 = !DILocation(line: 197, column: 6, scope: !3473, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 103, column: 34, scope: !3218)
!3483 = !DILocation(line: 202, column: 7, scope: !3473, inlinedAt: !3482)
!3484 = !DILocation(line: 202, column: 2, scope: !3473, inlinedAt: !3482)
!3485 = !DILocation(line: 203, column: 6, scope: !3473, inlinedAt: !3482)
!3486 = !DILocation(line: 0, scope: !3473, inlinedAt: !3482)
!3487 = !DILocation(line: 203, column: 14, scope: !3473, inlinedAt: !3482)
!3488 = !DILocation(line: 204, column: 7, scope: !3473, inlinedAt: !3482)
!3489 = !DILocation(line: 204, column: 11, scope: !3473, inlinedAt: !3482)
!3490 = !DILocation(line: 204, column: 9, scope: !3473, inlinedAt: !3482)
!3491 = !DILocation(line: 204, column: 30, scope: !3473, inlinedAt: !3482)
!3492 = !DILocation(line: 204, column: 26, scope: !3473, inlinedAt: !3482)
!3493 = !DILocation(line: 204, column: 31, scope: !3473, inlinedAt: !3482)
!3494 = !DILocation(line: 204, column: 35, scope: !3473, inlinedAt: !3482)
!3495 = !DILocation(line: 204, column: 40, scope: !3473, inlinedAt: !3482)
!3496 = !DILocation(line: 204, column: 41, scope: !3473, inlinedAt: !3482)
!3497 = !DILocation(line: 204, column: 39, scope: !3473, inlinedAt: !3482)
!3498 = !DILocation(line: 29, column: 36, scope: !3294, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 204, column: 25, scope: !3473, inlinedAt: !3482)
!3500 = !DILocation(line: 29, column: 40, scope: !3294, inlinedAt: !3499)
!3501 = !DILocation(line: 29, column: 38, scope: !3294, inlinedAt: !3499)
!3502 = !DILocation(line: 205, column: 4, scope: !3473, inlinedAt: !3482)
!3503 = !DILocation(line: 208, column: 6, scope: !3473, inlinedAt: !3482)
!3504 = !DILocation(line: 208, column: 11, scope: !3473, inlinedAt: !3482)
!3505 = !DILocation(line: 208, column: 8, scope: !3473, inlinedAt: !3482)
!3506 = !DILocation(line: 216, column: 12, scope: !3473, inlinedAt: !3482)
!3507 = !DILocation(line: 216, column: 17, scope: !3473, inlinedAt: !3482)
!3508 = !DILocation(line: 216, column: 18, scope: !3473, inlinedAt: !3482)
!3509 = !DILocation(line: 216, column: 28, scope: !3473, inlinedAt: !3482)
!3510 = !DILocation(line: 216, column: 35, scope: !3473, inlinedAt: !3482)
!3511 = !DILocation(line: 216, column: 40, scope: !3473, inlinedAt: !3482)
!3512 = !DILocation(line: 216, column: 39, scope: !3473, inlinedAt: !3482)
!3513 = !DILocation(line: 216, column: 7, scope: !3473, inlinedAt: !3482)
!3514 = !DILocation(line: 216, column: 16, scope: !3473, inlinedAt: !3482)
!3515 = !DILocation(line: 219, column: 6, scope: !3473, inlinedAt: !3482)
!3516 = !DILocation(line: 219, column: 8, scope: !3473, inlinedAt: !3482)
!3517 = !DILocation(line: 219, column: 7, scope: !3473, inlinedAt: !3482)
!3518 = !DILocation(line: 219, column: 10, scope: !3473, inlinedAt: !3482)
!3519 = !DILocation(line: 221, column: 22, scope: !3473, inlinedAt: !3482)
!3520 = !DILocation(line: 221, column: 31, scope: !3473, inlinedAt: !3482)
!3521 = !DILocation(line: 221, column: 27, scope: !3473, inlinedAt: !3482)
!3522 = !DILocation(line: 221, column: 32, scope: !3473, inlinedAt: !3482)
!3523 = !DILocation(line: 29, column: 36, scope: !3294, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 221, column: 17, scope: !3473, inlinedAt: !3482)
!3525 = !DILocation(line: 29, column: 40, scope: !3294, inlinedAt: !3524)
!3526 = !DILocation(line: 29, column: 38, scope: !3294, inlinedAt: !3524)
!3527 = !DILocation(line: 224, column: 37, scope: !3473, inlinedAt: !3482)
!3528 = !DILocation(line: 224, column: 42, scope: !3473, inlinedAt: !3482)
!3529 = !DILocation(line: 224, column: 9, scope: !3473, inlinedAt: !3482)
!3530 = !DILocation(line: 224, column: 18, scope: !3473, inlinedAt: !3482)
!3531 = !DILocation(line: 220, column: 28, scope: !3473, inlinedAt: !3482)
!3532 = !DILocation(line: 220, scope: !3473, inlinedAt: !3482)
!3533 = !DILocation(line: 220, column: 20, scope: !3473, inlinedAt: !3482)
!3534 = !DILocation(line: 220, column: 22, scope: !3473, inlinedAt: !3482)
!3535 = !DILocation(line: 228, column: 6, scope: !3473, inlinedAt: !3482)
!3536 = !DILocation(line: 228, column: 8, scope: !3473, inlinedAt: !3482)
!3537 = !DILocation(line: 228, column: 7, scope: !3473, inlinedAt: !3482)
!3538 = !DILocation(line: 228, column: 10, scope: !3473, inlinedAt: !3482)
!3539 = !DILocation(line: 230, column: 18, scope: !3473, inlinedAt: !3482)
!3540 = !DILocation(line: 230, column: 23, scope: !3473, inlinedAt: !3482)
!3541 = !DILocation(line: 230, column: 22, scope: !3473, inlinedAt: !3482)
!3542 = !DILocation(line: 230, column: 27, scope: !3473, inlinedAt: !3482)
!3543 = !DILocation(line: 230, column: 32, scope: !3473, inlinedAt: !3482)
!3544 = !DILocation(line: 230, column: 31, scope: !3473, inlinedAt: !3482)
!3545 = !DILocation(line: 29, column: 36, scope: !3294, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 230, column: 17, scope: !3473, inlinedAt: !3482)
!3547 = !DILocation(line: 29, column: 40, scope: !3294, inlinedAt: !3546)
!3548 = !DILocation(line: 29, column: 38, scope: !3294, inlinedAt: !3546)
!3549 = !DILocation(line: 233, column: 37, scope: !3473, inlinedAt: !3482)
!3550 = !DILocation(line: 233, column: 42, scope: !3473, inlinedAt: !3482)
!3551 = !DILocation(line: 233, column: 9, scope: !3473, inlinedAt: !3482)
!3552 = !DILocation(line: 233, column: 18, scope: !3473, inlinedAt: !3482)
!3553 = !DILocation(line: 229, column: 27, scope: !3473, inlinedAt: !3482)
!3554 = !DILocation(line: 229, scope: !3473, inlinedAt: !3482)
!3555 = !DILocation(line: 229, column: 20, scope: !3473, inlinedAt: !3482)
!3556 = !DILocation(line: 229, column: 24, scope: !3473, inlinedAt: !3482)
!3557 = !DILocation(line: 229, column: 22, scope: !3473, inlinedAt: !3482)
!3558 = !DILocation(line: 203, column: 28, scope: !3473, inlinedAt: !3482)
!3559 = !DILocation(line: 203, column: 16, scope: !3473, inlinedAt: !3482)
!3560 = !DILocation(line: 110, column: 6, scope: !3218)
!3561 = !DILocation(line: 110, column: 25, scope: !3218)
!3562 = !DILocation(line: 110, column: 30, scope: !3218)
!3563 = !DILocation(line: 110, column: 29, scope: !3218)
!3564 = !DILocation(line: 110, column: 36, scope: !3218)
!3565 = !DILocation(line: 110, column: 41, scope: !3218)
!3566 = !DILocation(line: 110, column: 40, scope: !3218)
!3567 = !DILocation(line: 29, column: 36, scope: !3294, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 110, column: 24, scope: !3218)
!3569 = !DILocation(line: 29, column: 40, scope: !3294, inlinedAt: !3568)
!3570 = !DILocation(line: 29, column: 38, scope: !3294, inlinedAt: !3568)
!3571 = !DILocation(line: 111, column: 33, scope: !3218)
!3572 = !DILocation(line: 111, column: 39, scope: !3218)
!3573 = !DILocation(line: 111, column: 42, scope: !3218)
!3574 = !DILocation(line: 111, column: 45, scope: !3218)
!3575 = !DILocalVariable(name: "data", arg: 1, scope: !3576, file: !3219, line: 175, type: !3222)
!3576 = distinct !DISubprogram(name: "slices.partitionEqualOrdered[int]", linkageName: "slices.partitionEqualOrdered[int]", scope: !3219, file: !3219, line: 175, type: !3577, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3578)
!3577 = !DISubroutineType(types: !3221)
!3578 = !{!3575, !3579, !3580, !3581, !3582, !3583}
!3579 = !DILocalVariable(name: "a", arg: 2, scope: !3576, file: !3219, line: 175, type: !2182)
!3580 = !DILocalVariable(name: "b", arg: 3, scope: !3576, file: !3219, line: 175, type: !2182)
!3581 = !DILocalVariable(name: "pivot", arg: 4, scope: !3576, file: !3219, line: 175, type: !2182)
!3582 = !DILocalVariable(name: "i", scope: !3576, file: !3219, line: 177, type: !2182)
!3583 = !DILocalVariable(name: "j", scope: !3576, file: !3219, line: 177, type: !2182)
!3584 = !DILocation(line: 175, column: 6, scope: !3576, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 111, column: 32, scope: !3218)
!3586 = !DILocation(line: 176, column: 30, scope: !3576, inlinedAt: !3585)
!3587 = !DILocation(line: 176, column: 38, scope: !3576, inlinedAt: !3585)
!3588 = !DILocation(line: 176, column: 43, scope: !3576, inlinedAt: !3585)
!3589 = !DILocation(line: 176, column: 42, scope: !3576, inlinedAt: !3585)
!3590 = !DILocation(line: 176, column: 6, scope: !3576, inlinedAt: !3585)
!3591 = !DILocation(line: 176, column: 15, scope: !3576, inlinedAt: !3585)
!3592 = !DILocation(line: 177, column: 10, scope: !3576, inlinedAt: !3585)
!3593 = !DILocation(line: 177, column: 15, scope: !3576, inlinedAt: !3585)
!3594 = !DILocation(line: 177, column: 2, scope: !3576, inlinedAt: !3585)
!3595 = !DILocation(line: 177, column: 5, scope: !3576, inlinedAt: !3585)
!3596 = !DILocation(line: 0, scope: !3576, inlinedAt: !3585)
!3597 = !DILocation(line: 180, column: 7, scope: !3576, inlinedAt: !3585)
!3598 = !DILocation(line: 180, column: 12, scope: !3576, inlinedAt: !3585)
!3599 = !DILocation(line: 180, column: 9, scope: !3576, inlinedAt: !3585)
!3600 = !DILocation(line: 180, column: 32, scope: !3576, inlinedAt: !3585)
!3601 = !DILocation(line: 180, column: 36, scope: !3576, inlinedAt: !3585)
!3602 = !DILocation(line: 180, column: 41, scope: !3576, inlinedAt: !3585)
!3603 = !DILocation(line: 180, column: 40, scope: !3576, inlinedAt: !3585)
!3604 = !DILocation(line: 180, column: 31, scope: !3576, inlinedAt: !3585)
!3605 = !DILocation(line: 29, column: 36, scope: !3294, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 180, column: 26, scope: !3576, inlinedAt: !3585)
!3607 = !DILocation(line: 29, column: 40, scope: !3294, inlinedAt: !3606)
!3608 = !DILocation(line: 29, column: 38, scope: !3294, inlinedAt: !3606)
!3609 = !DILocation(line: 183, column: 39, scope: !3576, inlinedAt: !3585)
!3610 = !DILocation(line: 183, column: 31, scope: !3576, inlinedAt: !3585)
!3611 = !DILocation(line: 183, column: 35, scope: !3576, inlinedAt: !3585)
!3612 = !DILocation(line: 183, column: 40, scope: !3576, inlinedAt: !3585)
!3613 = !DILocation(line: 29, column: 36, scope: !3294, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 183, column: 25, scope: !3576, inlinedAt: !3585)
!3615 = !DILocation(line: 29, column: 40, scope: !3294, inlinedAt: !3614)
!3616 = !DILocation(line: 29, column: 38, scope: !3294, inlinedAt: !3614)
!3617 = !DILocation(line: 184, column: 4, scope: !3576, inlinedAt: !3585)
!3618 = !DILocation(line: 183, column: 7, scope: !3576, inlinedAt: !3585)
!3619 = !DILocation(line: 183, column: 12, scope: !3576, inlinedAt: !3585)
!3620 = !DILocation(line: 183, column: 9, scope: !3576, inlinedAt: !3585)
!3621 = !DILocation(line: 189, column: 27, scope: !3576, inlinedAt: !3585)
!3622 = !DILocation(line: 189, column: 31, scope: !3576, inlinedAt: !3585)
!3623 = !DILocation(line: 189, column: 36, scope: !3576, inlinedAt: !3585)
!3624 = !DILocation(line: 189, column: 7, scope: !3576, inlinedAt: !3585)
!3625 = !DILocation(line: 189, column: 16, scope: !3576, inlinedAt: !3585)
!3626 = !DILocation(line: 190, column: 3, scope: !3576, inlinedAt: !3585)
!3627 = !DILocation(line: 191, column: 3, scope: !3576, inlinedAt: !3585)
!3628 = !DILocation(line: 116, column: 47, scope: !3218)
!3629 = !DILocation(line: 116, column: 53, scope: !3218)
!3630 = !DILocation(line: 116, column: 56, scope: !3218)
!3631 = !DILocation(line: 116, column: 59, scope: !3218)
!3632 = !DILocalVariable(name: "data", arg: 1, scope: !3633, file: !3219, line: 137, type: !3222)
!3633 = distinct !DISubprogram(name: "slices.partitionOrdered[int]", linkageName: "slices.partitionOrdered[int]", scope: !3219, file: !3219, line: 137, type: !3577, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3634)
!3634 = !{!3632, !3635, !3636, !3637, !3638, !3639}
!3635 = !DILocalVariable(name: "a", arg: 2, scope: !3633, file: !3219, line: 137, type: !2182)
!3636 = !DILocalVariable(name: "b", arg: 3, scope: !3633, file: !3219, line: 137, type: !2182)
!3637 = !DILocalVariable(name: "pivot", arg: 4, scope: !3633, file: !3219, line: 137, type: !2182)
!3638 = !DILocalVariable(name: "i", scope: !3633, file: !3219, line: 139, type: !2182)
!3639 = !DILocalVariable(name: "j", scope: !3633, file: !3219, line: 139, type: !2182)
!3640 = !DILocation(line: 137, column: 6, scope: !3633, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 116, column: 46, scope: !3218)
!3642 = !DILocation(line: 138, column: 7, scope: !3633, inlinedAt: !3641)
!3643 = !DILocation(line: 138, column: 25, scope: !3633, inlinedAt: !3641)
!3644 = !DILocation(line: 138, column: 30, scope: !3633, inlinedAt: !3641)
!3645 = !DILocation(line: 138, column: 29, scope: !3633, inlinedAt: !3641)
!3646 = !DILocation(line: 138, column: 38, scope: !3633, inlinedAt: !3641)
!3647 = !DILocation(line: 138, column: 43, scope: !3633, inlinedAt: !3641)
!3648 = !DILocation(line: 138, column: 42, scope: !3633, inlinedAt: !3641)
!3649 = !DILocation(line: 138, column: 6, scope: !3633, inlinedAt: !3641)
!3650 = !DILocation(line: 138, column: 15, scope: !3633, inlinedAt: !3641)
!3651 = !DILocation(line: 139, column: 10, scope: !3633, inlinedAt: !3641)
!3652 = !DILocation(line: 139, column: 15, scope: !3633, inlinedAt: !3641)
!3653 = !DILocation(line: 139, column: 16, scope: !3633, inlinedAt: !3641)
!3654 = !DILocation(line: 139, column: 2, scope: !3633, inlinedAt: !3641)
!3655 = !DILocation(line: 139, column: 5, scope: !3633, inlinedAt: !3641)
!3656 = !DILocation(line: 0, scope: !3633, inlinedAt: !3641)
!3657 = !DILocation(line: 141, column: 6, scope: !3633, inlinedAt: !3641)
!3658 = !DILocation(line: 141, column: 11, scope: !3633, inlinedAt: !3641)
!3659 = !DILocation(line: 141, column: 8, scope: !3633, inlinedAt: !3641)
!3660 = !DILocation(line: 141, column: 25, scope: !3633, inlinedAt: !3641)
!3661 = !DILocation(line: 141, column: 30, scope: !3633, inlinedAt: !3641)
!3662 = !DILocation(line: 141, column: 29, scope: !3633, inlinedAt: !3641)
!3663 = !DILocation(line: 141, column: 34, scope: !3633, inlinedAt: !3641)
!3664 = !DILocation(line: 141, column: 39, scope: !3633, inlinedAt: !3641)
!3665 = !DILocation(line: 141, column: 38, scope: !3633, inlinedAt: !3641)
!3666 = !DILocation(line: 29, column: 36, scope: !3294, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 141, column: 24, scope: !3633, inlinedAt: !3641)
!3668 = !DILocation(line: 29, column: 40, scope: !3294, inlinedAt: !3667)
!3669 = !DILocation(line: 29, column: 38, scope: !3294, inlinedAt: !3667)
!3670 = !DILocation(line: 144, column: 30, scope: !3633, inlinedAt: !3641)
!3671 = !DILocation(line: 144, column: 26, scope: !3633, inlinedAt: !3641)
!3672 = !DILocation(line: 144, column: 31, scope: !3633, inlinedAt: !3641)
!3673 = !DILocation(line: 144, column: 35, scope: !3633, inlinedAt: !3641)
!3674 = !DILocation(line: 144, column: 40, scope: !3633, inlinedAt: !3641)
!3675 = !DILocation(line: 29, column: 36, scope: !3294, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 144, column: 25, scope: !3633, inlinedAt: !3641)
!3677 = !DILocation(line: 29, column: 40, scope: !3294, inlinedAt: !3676)
!3678 = !DILocation(line: 29, column: 38, scope: !3294, inlinedAt: !3676)
!3679 = !DILocation(line: 145, column: 3, scope: !3633, inlinedAt: !3641)
!3680 = !DILocation(line: 144, column: 6, scope: !3633, inlinedAt: !3641)
!3681 = !DILocation(line: 144, column: 11, scope: !3633, inlinedAt: !3641)
!3682 = !DILocation(line: 144, column: 8, scope: !3633, inlinedAt: !3641)
!3683 = !DILocation(line: 148, column: 27, scope: !3633, inlinedAt: !3641)
!3684 = !DILocation(line: 148, column: 31, scope: !3633, inlinedAt: !3641)
!3685 = !DILocation(line: 148, column: 36, scope: !3633, inlinedAt: !3641)
!3686 = !DILocation(line: 148, column: 35, scope: !3633, inlinedAt: !3641)
!3687 = !DILocation(line: 151, column: 26, scope: !3633, inlinedAt: !3641)
!3688 = !DILocation(line: 151, column: 30, scope: !3633, inlinedAt: !3641)
!3689 = !DILocation(line: 151, column: 35, scope: !3633, inlinedAt: !3641)
!3690 = !DILocation(line: 151, column: 34, scope: !3633, inlinedAt: !3641)
!3691 = !DILocation(line: 151, column: 6, scope: !3633, inlinedAt: !3641)
!3692 = !DILocation(line: 151, column: 15, scope: !3633, inlinedAt: !3641)
!3693 = !DILocation(line: 152, column: 2, scope: !3633, inlinedAt: !3641)
!3694 = !DILocation(line: 153, column: 2, scope: !3633, inlinedAt: !3641)
!3695 = !DILocation(line: 156, column: 7, scope: !3633, inlinedAt: !3641)
!3696 = !DILocation(line: 156, column: 12, scope: !3633, inlinedAt: !3641)
!3697 = !DILocation(line: 156, column: 9, scope: !3633, inlinedAt: !3641)
!3698 = !DILocation(line: 156, column: 30, scope: !3633, inlinedAt: !3641)
!3699 = !DILocation(line: 156, column: 26, scope: !3633, inlinedAt: !3641)
!3700 = !DILocation(line: 156, column: 31, scope: !3633, inlinedAt: !3641)
!3701 = !DILocation(line: 156, column: 35, scope: !3633, inlinedAt: !3641)
!3702 = !DILocation(line: 156, column: 40, scope: !3633, inlinedAt: !3641)
!3703 = !DILocation(line: 156, column: 39, scope: !3633, inlinedAt: !3641)
!3704 = !DILocation(line: 29, column: 36, scope: !3294, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 156, column: 25, scope: !3633, inlinedAt: !3641)
!3706 = !DILocation(line: 29, column: 40, scope: !3294, inlinedAt: !3705)
!3707 = !DILocation(line: 29, column: 38, scope: !3294, inlinedAt: !3705)
!3708 = !DILocation(line: 159, column: 7, scope: !3633, inlinedAt: !3641)
!3709 = !DILocation(line: 159, column: 12, scope: !3633, inlinedAt: !3641)
!3710 = !DILocation(line: 159, column: 9, scope: !3633, inlinedAt: !3641)
!3711 = !DILocation(line: 157, column: 4, scope: !3633, inlinedAt: !3641)
!3712 = !DILocation(line: 159, column: 27, scope: !3633, inlinedAt: !3641)
!3713 = !DILocation(line: 159, column: 32, scope: !3633, inlinedAt: !3641)
!3714 = !DILocation(line: 159, column: 31, scope: !3633, inlinedAt: !3641)
!3715 = !DILocation(line: 159, column: 36, scope: !3633, inlinedAt: !3641)
!3716 = !DILocation(line: 159, column: 41, scope: !3633, inlinedAt: !3641)
!3717 = !DILocation(line: 159, column: 40, scope: !3633, inlinedAt: !3641)
!3718 = !DILocation(line: 29, column: 36, scope: !3294, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 159, column: 26, scope: !3633, inlinedAt: !3641)
!3720 = !DILocation(line: 29, column: 40, scope: !3294, inlinedAt: !3719)
!3721 = !DILocation(line: 29, column: 38, scope: !3294, inlinedAt: !3719)
!3722 = !DILocation(line: 160, column: 4, scope: !3633, inlinedAt: !3641)
!3723 = !DILocation(line: 169, column: 26, scope: !3633, inlinedAt: !3641)
!3724 = !DILocation(line: 169, column: 30, scope: !3633, inlinedAt: !3641)
!3725 = !DILocation(line: 169, column: 35, scope: !3633, inlinedAt: !3641)
!3726 = !DILocation(line: 169, column: 34, scope: !3633, inlinedAt: !3641)
!3727 = !DILocation(line: 165, column: 27, scope: !3633, inlinedAt: !3641)
!3728 = !DILocation(line: 165, column: 31, scope: !3633, inlinedAt: !3641)
!3729 = !DILocation(line: 165, column: 36, scope: !3633, inlinedAt: !3641)
!3730 = !DILocation(line: 165, column: 35, scope: !3633, inlinedAt: !3641)
!3731 = !DILocation(line: 165, column: 7, scope: !3633, inlinedAt: !3641)
!3732 = !DILocation(line: 165, column: 16, scope: !3633, inlinedAt: !3641)
!3733 = !DILocation(line: 166, column: 3, scope: !3633, inlinedAt: !3641)
!3734 = !DILocation(line: 167, column: 3, scope: !3633, inlinedAt: !3641)
!3735 = !DILocation(line: 117, column: 20, scope: !3218)
!3736 = !DILocation(line: 117, column: 3, scope: !3218)
!3737 = !DILocation(line: 119, column: 24, scope: !3218)
!3738 = !DILocation(line: 119, column: 28, scope: !3218)
!3739 = !DILocation(line: 119, column: 27, scope: !3218)
!3740 = !DILocation(line: 119, column: 31, scope: !3218)
!3741 = !DILocation(line: 119, column: 32, scope: !3218)
!3742 = !DILocation(line: 119, column: 3, scope: !3218)
!3743 = !DILocation(line: 119, column: 12, scope: !3218)
!3744 = !DILocation(line: 120, column: 23, scope: !3218)
!3745 = !DILocation(line: 120, column: 30, scope: !3218)
!3746 = !DILocation(line: 120, column: 3, scope: !3218)
!3747 = !DILocation(line: 121, column: 14, scope: !3218)
!3748 = !DILocation(line: 122, column: 18, scope: !3218)
!3749 = !DILocation(line: 122, column: 29, scope: !3218)
!3750 = !DILocation(line: 122, column: 26, scope: !3218)
!3751 = !DILocation(line: 122, column: 4, scope: !3218)
!3752 = !DILocation(line: 123, column: 19, scope: !3218)
!3753 = !DILocation(line: 123, column: 25, scope: !3218)
!3754 = !DILocation(line: 123, column: 28, scope: !3218)
!3755 = !DILocation(line: 123, column: 33, scope: !3218)
!3756 = !DILocation(line: 123, column: 18, scope: !3218)
!3757 = !DILocation(line: 124, column: 12, scope: !3218)
!3758 = !DILocation(line: 124, column: 4, scope: !3218)
!3759 = !DILocation(line: 126, column: 18, scope: !3218)
!3760 = !DILocation(line: 126, column: 30, scope: !3218)
!3761 = !DILocation(line: 126, column: 27, scope: !3218)
!3762 = !DILocation(line: 126, column: 4, scope: !3218)
!3763 = !DILocation(line: 127, column: 19, scope: !3218)
!3764 = !DILocation(line: 127, column: 25, scope: !3218)
!3765 = !DILocation(line: 127, column: 28, scope: !3218)
!3766 = !DILocation(line: 127, column: 32, scope: !3218)
!3767 = !DILocation(line: 127, column: 35, scope: !3218)
!3768 = !DILocation(line: 127, column: 18, scope: !3218)
!3769 = !DILocation(line: 74, column: 6, scope: !3218)
!3770 = !DILocation(line: 87, column: 25, scope: !3218)
!3771 = !DILocation(line: 87, column: 31, scope: !3218)
!3772 = !DILocation(line: 87, column: 34, scope: !3218)
!3773 = !DILocalVariable(name: "data", arg: 1, scope: !3774, file: !3219, line: 242, type: !3222)
!3774 = distinct !DISubprogram(name: "slices.breakPatternsOrdered[int]", linkageName: "slices.breakPatternsOrdered[int]", scope: !3219, file: !3219, line: 242, type: !3245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3775)
!3775 = !{!3773, !3776, !3777, !3778, !3779, !3781, !3782, !3783}
!3776 = !DILocalVariable(name: "a", arg: 2, scope: !3774, file: !3219, line: 242, type: !2182)
!3777 = !DILocalVariable(name: "b", arg: 3, scope: !3774, file: !3219, line: 242, type: !2182)
!3778 = !DILocalVariable(name: "length", scope: !3774, file: !3219, line: 243, type: !2182)
!3779 = !DILocalVariable(name: "random", scope: !3774, file: !3219, line: 245, type: !3780)
!3780 = !DIDerivedType(tag: DW_TAG_typedef, name: "slices.xorshift", baseType: !11)
!3781 = !DILocalVariable(name: "modulus", scope: !3774, file: !3219, line: 246, type: !2337)
!3782 = !DILocalVariable(name: "idx", scope: !3774, file: !3219, line: 248, type: !2182)
!3783 = !DILocalVariable(name: "other", scope: !3774, file: !3219, line: 249, type: !2182)
!3784 = !DILocation(line: 242, column: 6, scope: !3774, inlinedAt: !3785)
!3785 = distinct !DILocation(line: 87, column: 24, scope: !3218)
!3786 = !DILocation(line: 243, column: 12, scope: !3774, inlinedAt: !3785)
!3787 = !DILocalVariable(name: "r", arg: 1, scope: !3788, file: !3789, line: 181, type: !3792)
!3788 = distinct !DISubprogram(name: "(*slices.xorshift).Next", linkageName: "(*slices.xorshift).Next", scope: !3789, file: !3789, line: 181, type: !3790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1743, retainedNodes: !3793)
!3789 = !DIFile(filename: "sort.go", directory: "/usr/local/go/src/slices")
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!3792}
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64, align: 64, dwarfAddressSpace: 0)
!3793 = !{!3787}
!3794 = !DILocation(line: 181, column: 20, scope: !3788, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 249, column: 33, scope: !3774, inlinedAt: !3785)
!3796 = !DILocation(line: 245, column: 3, scope: !3774, inlinedAt: !3785)
!3797 = !DILocalVariable(name: "length", arg: 1, scope: !3798, file: !3789, line: 188, type: !2182)
!3798 = distinct !DISubprogram(name: "slices.nextPowerOfTwo", linkageName: "slices.nextPowerOfTwo", scope: !3789, file: !3789, line: 188, type: !3799, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1743, retainedNodes: !3801)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!2182}
!3801 = !{!3797}
!3802 = !DILocation(line: 189, column: 28, scope: !3798, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 246, column: 28, scope: !3774, inlinedAt: !3785)
!3804 = !DILocalVariable(name: "x", arg: 1, scope: !3805, file: !446, line: 302, type: !2337)
!3805 = distinct !DISubprogram(name: "math/bits.Len", linkageName: "math/bits.Len", scope: !446, file: !446, line: 302, type: !3806, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3808)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!2337}
!3808 = !{!3804}
!3809 = !DILocation(line: 302, column: 6, scope: !3805, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 189, column: 22, scope: !3798, inlinedAt: !3803)
!3811 = !DILocation(line: 246, column: 3, scope: !3774, inlinedAt: !3785)
!3812 = !DILocation(line: 248, column: 14, scope: !3774, inlinedAt: !3785)
!3813 = !DILocation(line: 248, column: 19, scope: !3774, inlinedAt: !3785)
!3814 = !DILocation(line: 248, column: 28, scope: !3774, inlinedAt: !3785)
!3815 = !DILocation(line: 248, column: 7, scope: !3774, inlinedAt: !3785)
!3816 = !DILocation(line: 248, column: 40, scope: !3774, inlinedAt: !3785)
!3817 = !DILocation(line: 0, scope: !3774, inlinedAt: !3785)
!3818 = !DILocation(line: 248, column: 36, scope: !3774, inlinedAt: !3785)
!3819 = !DILocation(line: 182, column: 9, scope: !3788, inlinedAt: !3795)
!3820 = !DILocation(line: 182, column: 11, scope: !3788, inlinedAt: !3795)
!3821 = !DILocation(line: 182, column: 2, scope: !3788, inlinedAt: !3795)
!3822 = !DILocation(line: 183, column: 11, scope: !3788, inlinedAt: !3795)
!3823 = !DILocation(line: 183, column: 2, scope: !3788, inlinedAt: !3795)
!3824 = !DILocation(line: 184, column: 11, scope: !3788, inlinedAt: !3795)
!3825 = !DILocation(line: 184, column: 2, scope: !3788, inlinedAt: !3795)
!3826 = !DILocation(line: 249, column: 40, scope: !3774, inlinedAt: !3785)
!3827 = !DILocation(line: 249, column: 37, scope: !3774, inlinedAt: !3785)
!3828 = !DILocation(line: 250, column: 7, scope: !3774, inlinedAt: !3785)
!3829 = !DILocation(line: 250, column: 16, scope: !3774, inlinedAt: !3785)
!3830 = !DILocation(line: 250, column: 13, scope: !3774, inlinedAt: !3785)
!3831 = !DILocation(line: 253, column: 15, scope: !3774, inlinedAt: !3785)
!3832 = !DILocation(line: 253, column: 20, scope: !3774, inlinedAt: !3785)
!3833 = !DILocation(line: 253, column: 22, scope: !3774, inlinedAt: !3785)
!3834 = !DILocation(line: 253, column: 21, scope: !3774, inlinedAt: !3785)
!3835 = !DILocation(line: 253, column: 35, scope: !3774, inlinedAt: !3785)
!3836 = !DILocation(line: 253, column: 46, scope: !3774, inlinedAt: !3785)
!3837 = !DILocation(line: 253, column: 51, scope: !3774, inlinedAt: !3785)
!3838 = !DILocation(line: 253, column: 50, scope: !3774, inlinedAt: !3785)
!3839 = !DILocation(line: 253, column: 8, scope: !3774, inlinedAt: !3785)
!3840 = !DILocation(line: 253, column: 19, scope: !3774, inlinedAt: !3785)
!3841 = !DILocation(line: 248, column: 61, scope: !3774, inlinedAt: !3785)
!3842 = !DILocation(line: 248, column: 43, scope: !3774, inlinedAt: !3785)
!3843 = !DILocation(line: 248, column: 46, scope: !3774, inlinedAt: !3785)
!3844 = !DILocation(line: 88, column: 4, scope: !3218)
!3845 = distinct !DISubprogram(name: "slices.medianOrdered[int]", linkageName: "slices.medianOrdered[int]", scope: !3219, file: !3219, line: 309, type: !3846, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3848)
!3846 = !DISubroutineType(cc: DW_CC_nocall, types: !3847)
!3847 = !{!3222, !2182, !2182, !2182, !3225}
!3848 = !{!3849, !3850, !3851, !3852, !3853}
!3849 = !DILocalVariable(name: "data", arg: 1, scope: !3845, file: !3219, line: 309, type: !3222)
!3850 = !DILocalVariable(name: "a", arg: 2, scope: !3845, file: !3219, line: 309, type: !2182)
!3851 = !DILocalVariable(name: "b", arg: 3, scope: !3845, file: !3219, line: 309, type: !2182)
!3852 = !DILocalVariable(name: "c", arg: 4, scope: !3845, file: !3219, line: 309, type: !2182)
!3853 = !DILocalVariable(name: "swaps", arg: 5, scope: !3845, file: !3219, line: 309, type: !3225)
!3854 = !DILocation(line: 309, column: 6, scope: !3845)
!3855 = !DILocation(line: 310, column: 23, scope: !3845)
!3856 = !DILocation(line: 310, column: 29, scope: !3845)
!3857 = !DILocation(line: 310, column: 32, scope: !3845)
!3858 = !DILocation(line: 310, column: 35, scope: !3845)
!3859 = !DILocalVariable(name: "data", arg: 1, scope: !3860, file: !3219, line: 300, type: !3222)
!3860 = distinct !DISubprogram(name: "slices.order2Ordered[int]", linkageName: "slices.order2Ordered[int]", scope: !3219, file: !3219, line: 300, type: !3861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3863)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!3222, !2182, !2182, !3225}
!3863 = !{!3859, !3864, !3865, !3866}
!3864 = !DILocalVariable(name: "a", arg: 2, scope: !3860, file: !3219, line: 300, type: !2182)
!3865 = !DILocalVariable(name: "b", arg: 3, scope: !3860, file: !3219, line: 300, type: !2182)
!3866 = !DILocalVariable(name: "swaps", arg: 4, scope: !3860, file: !3219, line: 300, type: !3225)
!3867 = !DILocation(line: 300, column: 6, scope: !3860, inlinedAt: !3868)
!3868 = distinct !DILocation(line: 310, column: 22, scope: !3845)
!3869 = !DILocation(line: 301, column: 14, scope: !3860, inlinedAt: !3868)
!3870 = !DILocation(line: 301, column: 19, scope: !3860, inlinedAt: !3868)
!3871 = !DILocation(line: 301, column: 18, scope: !3860, inlinedAt: !3868)
!3872 = !DILocation(line: 301, column: 23, scope: !3860, inlinedAt: !3868)
!3873 = !DILocation(line: 301, column: 28, scope: !3860, inlinedAt: !3868)
!3874 = !DILocation(line: 301, column: 27, scope: !3860, inlinedAt: !3868)
!3875 = !DILocation(line: 28, column: 6, scope: !3294, inlinedAt: !3876)
!3876 = distinct !DILocation(line: 301, column: 13, scope: !3860, inlinedAt: !3868)
!3877 = !DILocation(line: 29, column: 16, scope: !3294, inlinedAt: !3876)
!3878 = !DILocation(line: 29, column: 36, scope: !3294, inlinedAt: !3876)
!3879 = !DILocation(line: 29, column: 40, scope: !3294, inlinedAt: !3876)
!3880 = !DILocation(line: 29, column: 38, scope: !3294, inlinedAt: !3876)
!3881 = !DILocation(line: 0, scope: !3860, inlinedAt: !3868)
!3882 = !DILocation(line: 302, column: 4, scope: !3860, inlinedAt: !3868)
!3883 = !DILocation(line: 302, column: 3, scope: !3860, inlinedAt: !3868)
!3884 = !DILocation(line: 303, column: 10, scope: !3860, inlinedAt: !3868)
!3885 = !DILocation(line: 303, column: 13, scope: !3860, inlinedAt: !3868)
!3886 = !DILocation(line: 303, column: 3, scope: !3860, inlinedAt: !3868)
!3887 = !DILocation(line: 310, column: 2, scope: !3845)
!3888 = !DILocation(line: 310, column: 5, scope: !3845)
!3889 = !DILocation(line: 311, column: 23, scope: !3845)
!3890 = !DILocation(line: 311, column: 29, scope: !3845)
!3891 = !DILocation(line: 311, column: 32, scope: !3845)
!3892 = !DILocation(line: 311, column: 35, scope: !3845)
!3893 = !DILocation(line: 300, column: 6, scope: !3860, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 311, column: 22, scope: !3845)
!3895 = !DILocation(line: 301, column: 14, scope: !3860, inlinedAt: !3894)
!3896 = !DILocation(line: 301, column: 19, scope: !3860, inlinedAt: !3894)
!3897 = !DILocation(line: 301, column: 18, scope: !3860, inlinedAt: !3894)
!3898 = !DILocation(line: 301, column: 23, scope: !3860, inlinedAt: !3894)
!3899 = !DILocation(line: 301, column: 28, scope: !3860, inlinedAt: !3894)
!3900 = !DILocation(line: 301, column: 27, scope: !3860, inlinedAt: !3894)
!3901 = !DILocation(line: 28, column: 6, scope: !3294, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 301, column: 13, scope: !3860, inlinedAt: !3894)
!3903 = !DILocation(line: 29, column: 16, scope: !3294, inlinedAt: !3902)
!3904 = !DILocation(line: 29, column: 36, scope: !3294, inlinedAt: !3902)
!3905 = !DILocation(line: 29, column: 40, scope: !3294, inlinedAt: !3902)
!3906 = !DILocation(line: 29, column: 38, scope: !3294, inlinedAt: !3902)
!3907 = !DILocation(line: 0, scope: !3860, inlinedAt: !3894)
!3908 = !DILocation(line: 302, column: 4, scope: !3860, inlinedAt: !3894)
!3909 = !DILocation(line: 302, column: 3, scope: !3860, inlinedAt: !3894)
!3910 = !DILocation(line: 303, column: 10, scope: !3860, inlinedAt: !3894)
!3911 = !DILocation(line: 303, column: 13, scope: !3860, inlinedAt: !3894)
!3912 = !DILocation(line: 303, column: 3, scope: !3860, inlinedAt: !3894)
!3913 = !DILocation(line: 311, column: 2, scope: !3845)
!3914 = !DILocation(line: 311, column: 5, scope: !3845)
!3915 = !DILocation(line: 312, column: 23, scope: !3845)
!3916 = !DILocation(line: 312, column: 29, scope: !3845)
!3917 = !DILocation(line: 312, column: 32, scope: !3845)
!3918 = !DILocation(line: 312, column: 35, scope: !3845)
!3919 = !DILocation(line: 300, column: 6, scope: !3860, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 312, column: 22, scope: !3845)
!3921 = !DILocation(line: 301, column: 14, scope: !3860, inlinedAt: !3920)
!3922 = !DILocation(line: 301, column: 19, scope: !3860, inlinedAt: !3920)
!3923 = !DILocation(line: 301, column: 18, scope: !3860, inlinedAt: !3920)
!3924 = !DILocation(line: 301, column: 23, scope: !3860, inlinedAt: !3920)
!3925 = !DILocation(line: 301, column: 28, scope: !3860, inlinedAt: !3920)
!3926 = !DILocation(line: 301, column: 27, scope: !3860, inlinedAt: !3920)
!3927 = !DILocation(line: 28, column: 6, scope: !3294, inlinedAt: !3928)
!3928 = distinct !DILocation(line: 301, column: 13, scope: !3860, inlinedAt: !3920)
!3929 = !DILocation(line: 29, column: 16, scope: !3294, inlinedAt: !3928)
!3930 = !DILocation(line: 29, column: 36, scope: !3294, inlinedAt: !3928)
!3931 = !DILocation(line: 29, column: 40, scope: !3294, inlinedAt: !3928)
!3932 = !DILocation(line: 29, column: 38, scope: !3294, inlinedAt: !3928)
!3933 = !DILocation(line: 0, scope: !3860, inlinedAt: !3920)
!3934 = !DILocation(line: 302, column: 4, scope: !3860, inlinedAt: !3920)
!3935 = !DILocation(line: 302, column: 3, scope: !3860, inlinedAt: !3920)
!3936 = !DILocation(line: 303, column: 10, scope: !3860, inlinedAt: !3920)
!3937 = !DILocation(line: 303, column: 13, scope: !3860, inlinedAt: !3920)
!3938 = !DILocation(line: 303, column: 3, scope: !3860, inlinedAt: !3920)
!3939 = !DILocation(line: 312, column: 2, scope: !3845)
!3940 = !DILocation(line: 312, column: 5, scope: !3845)
!3941 = !DILocation(line: 313, column: 9, scope: !3845)
!3942 = !DILocation(line: 313, column: 2, scope: !3845)
!3943 = distinct !DISubprogram(name: "slices.siftDownOrdered[int]", linkageName: "slices.siftDownOrdered[int]", scope: !3219, file: !3219, line: 22, type: !3220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !3944)
!3944 = !{!3945, !3946, !3947, !3948, !3949, !3950}
!3945 = !DILocalVariable(name: "data", arg: 1, scope: !3943, file: !3219, line: 22, type: !3222)
!3946 = !DILocalVariable(name: "lo", arg: 2, scope: !3943, file: !3219, line: 22, type: !2182)
!3947 = !DILocalVariable(name: "hi", arg: 3, scope: !3943, file: !3219, line: 22, type: !2182)
!3948 = !DILocalVariable(name: "first", arg: 4, scope: !3943, file: !3219, line: 22, type: !2182)
!3949 = !DILocalVariable(name: "root", scope: !3943, file: !3219, line: 23, type: !2182)
!3950 = !DILocalVariable(name: "child", scope: !3943, file: !3219, line: 25, type: !2182)
!3951 = !DILocation(line: 22, column: 6, scope: !3943)
!3952 = !DILocation(line: 23, column: 10, scope: !3943)
!3953 = !DILocation(line: 23, column: 2, scope: !3943)
!3954 = !DILocation(line: 25, column: 13, scope: !3943)
!3955 = !DILocation(line: 25, column: 19, scope: !3943)
!3956 = !DILocation(line: 26, column: 12, scope: !3943)
!3957 = !DILocation(line: 0, scope: !3943)
!3958 = !DILocation(line: 25, column: 14, scope: !3943)
!3959 = !DILocation(line: 29, column: 6, scope: !3943)
!3960 = !DILocation(line: 29, column: 11, scope: !3943)
!3961 = !DILocation(line: 29, column: 16, scope: !3943)
!3962 = !DILocation(line: 29, column: 14, scope: !3943)
!3963 = !DILocation(line: 29, column: 31, scope: !3943)
!3964 = !DILocation(line: 29, column: 36, scope: !3943)
!3965 = !DILocation(line: 29, column: 42, scope: !3943)
!3966 = !DILocation(line: 29, column: 41, scope: !3943)
!3967 = !DILocation(line: 29, column: 35, scope: !3943)
!3968 = !DILocation(line: 29, column: 50, scope: !3943)
!3969 = !DILocation(line: 29, column: 55, scope: !3943)
!3970 = !DILocation(line: 29, column: 61, scope: !3943)
!3971 = !DILocation(line: 29, column: 66, scope: !3943)
!3972 = !DILocation(line: 29, column: 54, scope: !3943)
!3973 = !DILocation(line: 29, column: 36, scope: !3294, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 29, column: 30, scope: !3943)
!3975 = !DILocation(line: 29, column: 40, scope: !3294, inlinedAt: !3974)
!3976 = !DILocation(line: 29, column: 38, scope: !3294, inlinedAt: !3974)
!3977 = !DILocation(line: 25, column: 3, scope: !3943)
!3978 = !DILocation(line: 32, column: 16, scope: !3943)
!3979 = !DILocation(line: 32, column: 21, scope: !3943)
!3980 = !DILocation(line: 32, column: 27, scope: !3943)
!3981 = !DILocation(line: 32, column: 26, scope: !3943)
!3982 = !DILocation(line: 32, column: 20, scope: !3943)
!3983 = !DILocation(line: 32, column: 34, scope: !3943)
!3984 = !DILocation(line: 32, column: 39, scope: !3943)
!3985 = !DILocation(line: 32, column: 45, scope: !3943)
!3986 = !DILocation(line: 32, column: 44, scope: !3943)
!3987 = !DILocation(line: 32, column: 38, scope: !3943)
!3988 = !DILocation(line: 29, column: 36, scope: !3294, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 32, column: 15, scope: !3943)
!3990 = !DILocation(line: 29, column: 40, scope: !3294, inlinedAt: !3989)
!3991 = !DILocation(line: 29, column: 38, scope: !3294, inlinedAt: !3989)
!3992 = !DILocation(line: 35, column: 52, scope: !3943)
!3993 = !DILocation(line: 35, column: 60, scope: !3943)
!3994 = !DILocation(line: 35, column: 65, scope: !3943)
!3995 = !DILocation(line: 35, column: 71, scope: !3943)
!3996 = !DILocation(line: 35, column: 7, scope: !3943)
!3997 = !DILocation(line: 35, column: 25, scope: !3943)
!3998 = !DILocation(line: 26, column: 6, scope: !3943)
!3999 = !DILocation(line: 26, column: 15, scope: !3943)
!4000 = distinct !DISubprogram(name: "main.f_gold", linkageName: "f_gold", scope: !4001, file: !4001, line: 6, type: !4002, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1924, retainedNodes: !4004)
!4001 = !DIFile(filename: "MAXIMUM_REMOVAL_FROM_ARRAY_WHEN_REMOVAL_TIME_WAITING_TIME_emit.go", directory: "/root/es/vert/vert/source_funs/go_transcoder/MAXIMUM_REMOVAL_FROM_ARRAY_WHEN_REMOVAL_TIME_WAITING_TIME")
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!3222, !2182}
!4004 = !{!4005, !4006, !4007, !4008, !4009}
!4005 = !DILocalVariable(name: "arr", arg: 1, scope: !4000, file: !4001, line: 6, type: !3222)
!4006 = !DILocalVariable(name: "n", arg: 2, scope: !4000, file: !4001, line: 6, type: !2182)
!4007 = !DILocalVariable(name: "count", scope: !4000, file: !4001, line: 8, type: !2182)
!4008 = !DILocalVariable(name: "cummulative_sum", scope: !4000, file: !4001, line: 9, type: !2182)
!4009 = !DILocalVariable(name: "i", scope: !4000, file: !4001, line: 12, type: !2182)
!4010 = !DILocation(line: 6, column: 6, scope: !4000)
!4011 = !DILocation(line: 8, column: 3, scope: !4000)
!4012 = !DILocation(line: 9, column: 3, scope: !4000)
!4013 = !DILocation(line: 11, column: 12, scope: !4000)
!4014 = !DILocalVariable(name: "x", arg: 1, scope: !4015, file: !1794, line: 170, type: !3222)
!4015 = distinct !DISubprogram(name: "sort.Ints", linkageName: "sort.Ints", scope: !1794, file: !1794, line: 170, type: !4016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !4018)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!3222}
!4018 = !{!4014}
!4019 = !DILocation(line: 170, column: 6, scope: !4015, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 11, column: 11, scope: !4000)
!4021 = !DILocation(line: 170, column: 34, scope: !4015, inlinedAt: !4020)
!4022 = !DILocalVariable(name: "x", arg: 1, scope: !4023, file: !3789, line: 16, type: !3222)
!4023 = distinct !DISubprogram(name: "slices.Sort[[]int int]", linkageName: "slices.Sort[[]int int]", scope: !3789, file: !3789, line: 16, type: !4016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1744, retainedNodes: !4024)
!4024 = !{!4022, !4025}
!4025 = !DILocalVariable(name: "n", scope: !4023, file: !3789, line: 17, type: !2182)
!4026 = !DILocation(line: 16, column: 6, scope: !4023, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 170, column: 33, scope: !4015, inlinedAt: !4020)
!4028 = !DILocation(line: 18, column: 17, scope: !4023, inlinedAt: !4027)
!4029 = !DILocation(line: 18, column: 40, scope: !4023, inlinedAt: !4027)
!4030 = !DILocation(line: 302, column: 6, scope: !3805, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 18, column: 34, scope: !4023, inlinedAt: !4027)
!4032 = !DILocation(line: 13, column: 9, scope: !4000)
!4033 = !DILocation(line: 18, column: 16, scope: !4023, inlinedAt: !4027)
!4034 = !DILocation(line: 12, column: 6, scope: !4000)
!4035 = !DILocation(line: 12, column: 21, scope: !4000)
!4036 = !DILocation(line: 0, scope: !4000)
!4037 = !DILocation(line: 13, column: 6, scope: !4000)
!4038 = !DILocation(line: 13, column: 10, scope: !4000)
!4039 = !DILocation(line: 13, column: 16, scope: !4000)
!4040 = !DILocation(line: 13, column: 13, scope: !4000)
!4041 = !DILocation(line: 12, column: 26, scope: !4000)
!4042 = !DILocation(line: 12, column: 19, scope: !4000)
!4043 = !DILocation(line: 12, column: 23, scope: !4000)
!4044 = !DILocation(line: 18, column: 9, scope: !4000)
!4045 = !DILocation(line: 18, column: 2, scope: !4000)
