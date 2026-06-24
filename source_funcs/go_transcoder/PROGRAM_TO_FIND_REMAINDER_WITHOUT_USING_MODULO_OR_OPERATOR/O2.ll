; ModuleID = 'main'
source_filename = "main"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-musleabihf"

%"internal/task.Task" = type { ptr, ptr, i64, %"sync/atomic.noCopy", %"internal/task.state", i8, i1, i8, ptr }
%"sync/atomic.noCopy" = type {}
%"internal/task.state" = type { i64, ptr, i64, i64, ptr, %"internal/task.Semaphore" }
%"internal/task.Semaphore" = type { %"internal/futex.Futex" }
%"internal/futex.Futex" = type { %"sync/atomic.Bool" }
%"sync/atomic.Bool" = type { %"sync/atomic.noCopy", i32 }
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
@"reflect/types.type:basic:string" = internal constant { i8, ptr } { i8 81, ptr @"reflect/types.type:pointer:basic:string" }, align 8, !dbg !85
@"reflect/types.type:pointer:basic:string" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:basic:string" }, align 8, !dbg !93
@__ehdr_start = external global %runtime.elfHeader, align 8
@"runtime$string.12" = internal unnamed_addr constant [7 x i8] c"panic: ", align 1, !dbg !100
@"runtime$string.13" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !106
@"runtime$string.14" = internal unnamed_addr constant [2 x i8] c": ", align 1, !dbg !111
@"runtime$string.17" = internal unnamed_addr constant [23 x i8] c"nil pointer dereference", align 1, !dbg !116
@"runtime$string.25" = internal unnamed_addr constant [14 x i8] c"divide by zero", align 1, !dbg !121
@runtime.stackTop = internal unnamed_addr global i64 0, align 8, !dbg !126
@runtime.main_argv = internal unnamed_addr global ptr null, align 8, !dbg !129
@"runtime$string.50" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !132
@"runtime$string.55" = internal unnamed_addr constant [20 x i8] c"panic: runtime error", align 1, !dbg !134
@runtime.signalFutex = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !136
@runtime.receivedSignals = internal global %"sync/atomic.Bool" zeroinitializer, align 4, !dbg !138
@runtime.printLock = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !140
@.string = private unnamed_addr global [6 x i8] c"0.41.1", align 1
@runtime.buildVersion = local_unnamed_addr global %runtime._string { ptr @.string, i64 6 }, align 8

declare void @tinygo_futex_wait(ptr nocapture dereferenceable_or_null(4), i32) local_unnamed_addr #0

declare void @tinygo_futex_wake(ptr nocapture dereferenceable_or_null(4)) local_unnamed_addr #0

declare void @tinygo_futex_wake_all(ptr nocapture dereferenceable_or_null(4)) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define internal fastcc void @"(*internal/task.Mutex).Unlock"(ptr nocapture dereferenceable_or_null(4) %m) unnamed_addr #1 !dbg !1735 {
entry:
    #dbg_value(ptr %m, !1740, !DIExpression(), !1742)
  %0 = icmp eq ptr %m, null, !dbg !1743
  br i1 %0, label %gep.throw, label %"(*sync/atomic.Uint32).Swap.exit", !dbg !1743

"(*sync/atomic.Uint32).Swap.exit":                ; preds = %entry
    #dbg_value(ptr %m, !1744, !DIExpression(), !1752)
    #dbg_value(i32 0, !1751, !DIExpression(), !1754)
    #dbg_value(ptr %m, !1755, !DIExpression(), !1763)
    #dbg_value(i32 0, !1762, !DIExpression(), !1763)
  %1 = atomicrmw xchg ptr %m, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !1763
    #dbg_value(i32 %1, !1741, !DIExpression(), !1765)
  switch i32 %1, label %if.done [
    i32 0, label %if.then
    i32 2, label %gep.next5
  ], !dbg !1766

if.then:                                          ; preds = %"(*sync/atomic.Uint32).Swap.exit"
  tail call fastcc void @runtime._panic(), !dbg !1767
  unreachable, !dbg !1767

gep.next5:                                        ; preds = %"(*sync/atomic.Uint32).Swap.exit"
    #dbg_value(ptr %m, !1740, !DIExpression(), !1768)
    #dbg_value(ptr %m, !1769, !DIExpression(), !1776)
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) %m) #13, !dbg !1778
  br label %if.done, !dbg !1766

if.done:                                          ; preds = %"(*sync/atomic.Uint32).Swap.exit", %gep.next5
  ret void, !dbg !1779

gep.throw:                                        ; preds = %entry
  tail call fastcc void @runtime.nilPanic(), !dbg !1743
  unreachable, !dbg !1743
}

declare void @tinygo_task_init(ptr dereferenceable_or_null(88), ptr dereferenceable_or_null(8), ptr dereferenceable_or_null(4), ptr) local_unnamed_addr #0

declare ptr @tinygo_task_current() local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_exited(ptr nocapture readonly dereferenceable_or_null(88) %t) local_unnamed_addr #1 !dbg !1780 {
entry:
    #dbg_value(ptr %t, !1784, !DIExpression(), !1789)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1790, !DIExpression(), !1794)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1796, !DIExpression(), !1803)
    #dbg_value(i32 0, !1801, !DIExpression(), !1805)
    #dbg_value(i32 1, !1802, !DIExpression(), !1806)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1807, !DIExpression(), !1814)
    #dbg_value(i32 0, !1812, !DIExpression(), !1814)
    #dbg_value(i32 1, !1813, !DIExpression(), !1814)
  %0 = cmpxchg ptr @"internal/task.activeTaskLock", i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !1814
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !1814
  br i1 %1, label %"(*internal/task.Mutex).Lock.exit", label %"(*sync/atomic.Uint32).Swap.exit.preheader.i", !dbg !1816

"(*sync/atomic.Uint32).Swap.exit.preheader.i":    ; preds = %entry
    #dbg_value(ptr @"internal/task.activeTaskLock", !1790, !DIExpression(), !1817)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1744, !DIExpression(), !1818)
    #dbg_value(i32 2, !1751, !DIExpression(), !1820)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1755, !DIExpression(), !1821)
    #dbg_value(i32 2, !1762, !DIExpression(), !1821)
  %2 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !1821
  %.not4.i = icmp eq i32 %2, 0, !dbg !1823
  br i1 %.not4.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !1816

"(*internal/futex.Futex).Wait.exit.i":            ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i", %"(*internal/futex.Futex).Wait.exit.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1790, !DIExpression(), !1824)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1825, !DIExpression(), !1831)
    #dbg_value(i32 2, !1830, !DIExpression(), !1833)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock", i32 2) #13, !dbg !1834
    #dbg_value(ptr @"internal/task.activeTaskLock", !1744, !DIExpression(), !1818)
    #dbg_value(i32 2, !1751, !DIExpression(), !1820)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1755, !DIExpression(), !1821)
    #dbg_value(i32 2, !1762, !DIExpression(), !1821)
  %3 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !1821
  %.not.i = icmp eq i32 %3, 0, !dbg !1823
  br i1 %.not.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !1816

"(*internal/task.Mutex).Lock.exit":               ; preds = %"(*internal/futex.Futex).Wait.exit.i", %entry, %"(*sync/atomic.Uint32).Swap.exit.preheader.i"
    #dbg_value(i1 false, !1785, !DIExpression(), !1835)
    #dbg_value(ptr @"internal/task.activeTasks", !1786, !DIExpression(), !1836)
  %4 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !1837
  %.not.not6 = icmp eq ptr %4, null, !dbg !1838
  br i1 %.not.not6, label %if.then4.critedge, label %deref.next10, !dbg !1839

for.loop:                                         ; preds = %deref.next10
  %5 = getelementptr inbounds nuw i8, ptr %7, i64 56, !dbg !1840
    #dbg_value(ptr %5, !1786, !DIExpression(), !1841)
  %6 = load ptr, ptr %5, align 8, !dbg !1837
  %.not.not = icmp eq ptr %6, null, !dbg !1838
  br i1 %.not.not, label %if.then4.critedge, label %deref.next10, !dbg !1839

deref.next10:                                     ; preds = %"(*internal/task.Mutex).Lock.exit", %for.loop
  %7 = phi ptr [ %6, %for.loop ], [ %4, %"(*internal/task.Mutex).Lock.exit" ]
  %8 = phi ptr [ %5, %for.loop ], [ @"internal/task.activeTasks", %"(*internal/task.Mutex).Lock.exit" ]
    #dbg_value(ptr %8, !1786, !DIExpression(), !1842)
    #dbg_value(ptr %t, !1784, !DIExpression(), !1843)
  %9 = icmp eq ptr %7, %t, !dbg !1844
    #dbg_value(ptr %7, !1786, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !1845)
  br i1 %9, label %store.next, label %for.loop, !dbg !1839

store.next:                                       ; preds = %deref.next10
    #dbg_value(ptr %8, !1786, !DIExpression(), !1846)
    #dbg_value(ptr %t, !1784, !DIExpression(), !1847)
  %10 = getelementptr inbounds nuw i8, ptr %t, i64 56, !dbg !1848
  %11 = load ptr, ptr %10, align 8, !dbg !1848
  store ptr %11, ptr %8, align 8, !dbg !1849
    #dbg_value(i1 true, !1785, !DIExpression(), !1850)
  %12 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !1851
  %13 = add i32 %12, -1, !dbg !1851
  store i32 %13, ptr @"internal/task.otherGoroutines", align 4, !dbg !1851
    #dbg_value(i32 %13, !1788, !DIExpression(), !1851)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1740, !DIExpression(), !1852)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1744, !DIExpression(), !1854)
    #dbg_value(i32 0, !1751, !DIExpression(), !1856)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1755, !DIExpression(), !1857)
    #dbg_value(i32 0, !1762, !DIExpression(), !1857)
  %14 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !1857
    #dbg_value(i32 %14, !1741, !DIExpression(), !1859)
  switch i32 %14, label %"(*internal/task.Mutex).Unlock.exit" [
    i32 0, label %if.then.i
    i32 2, label %gep.next5.i
  ], !dbg !1860

if.then.i:                                        ; preds = %store.next
  tail call fastcc void @runtime._panic(), !dbg !1861
  unreachable, !dbg !1861

gep.next5.i:                                      ; preds = %store.next
    #dbg_value(ptr @"internal/task.activeTaskLock", !1740, !DIExpression(), !1862)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1769, !DIExpression(), !1863)
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock") #13, !dbg !1865
  br label %"(*internal/task.Mutex).Unlock.exit", !dbg !1860

"(*internal/task.Mutex).Unlock.exit":             ; preds = %store.next, %gep.next5.i
    #dbg_value(i1 poison, !1785, !DIExpression(), !1866)
  ret void, !dbg !1867

if.then4.critedge:                                ; preds = %for.loop, %"(*internal/task.Mutex).Lock.exit"
  %15 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !1851
  %16 = add i32 %15, -1, !dbg !1851
  store i32 %16, ptr @"internal/task.otherGoroutines", align 4, !dbg !1851
    #dbg_value(i32 %13, !1788, !DIExpression(), !1851)
  tail call fastcc void @"(*internal/task.Mutex).Unlock"(ptr nonnull @"internal/task.activeTaskLock"), !dbg !1868
    #dbg_value(i1 poison, !1785, !DIExpression(), !1866)
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.13", i64 17), !dbg !1869
  unreachable, !dbg !1839
}

declare void @tinygo_task_send_gc_signal(ptr nocapture) local_unnamed_addr #0

declare void @tinygo_scanCurrentStack() local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_gc_pause(i32 %sig) local_unnamed_addr #1 !dbg !1870 {
entry:
    #dbg_value(i32 %sig, !1874, !DIExpression(), !1876)
  %0 = tail call ptr @tinygo_task_current() #13, !dbg !1877
    #dbg_value(ptr %0, !1881, !DIExpression(), !1883)
  %1 = icmp eq ptr %0, null, !dbg !1884
  br i1 %1, label %if.then.i, label %"internal/task.Current.exit", !dbg !1885

if.then.i:                                        ; preds = %entry
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !1886
  unreachable, !dbg !1885

"internal/task.Current.exit":                     ; preds = %entry
    #dbg_value(ptr %0, !1881, !DIExpression(), !1887)
  %2 = tail call ptr @llvm.stacksave.p0(), !dbg !1888
  %3 = ptrtoint ptr %2 to i64, !dbg !1891
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !1892
  store i64 %3, ptr %4, align 8, !dbg !1892
    #dbg_value(i64 %3, !1875, !DIExpression(), !1892)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1893, !DIExpression(), !1899)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1901, !DIExpression(), !1905)
    #dbg_value(i32 -1, !1904, !DIExpression(), !1907)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1908, !DIExpression(), !1912)
    #dbg_value(i32 -1, !1911, !DIExpression(), !1912)
  %5 = atomicrmw add ptr @"internal/task.scanWaitGroup", i32 -1 syncscope("singlethread") seq_cst, align 4, !dbg !1912
  %6 = icmp eq i32 %5, 1, !dbg !1914
  br i1 %6, label %gep.next4.i, label %"(*internal/task.waitGroup).done.exit", !dbg !1915

gep.next4.i:                                      ; preds = %"internal/task.Current.exit"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1893, !DIExpression(), !1916)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1917, !DIExpression(), !1920)
  tail call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.scanWaitGroup") #13, !dbg !1922
  br label %"(*internal/task.waitGroup).done.exit", !dbg !1915

"(*internal/task.waitGroup).done.exit":           ; preds = %"internal/task.Current.exit", %gep.next4.i
    #dbg_value(ptr @"internal/task.gcState", !1923, !DIExpression(), !1928)
    #dbg_value(ptr @"internal/task.gcState", !1930, !DIExpression(), !1935)
  %7 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !1935
  %8 = icmp eq i32 %7, 1, !dbg !1937
  br i1 %8, label %for.body, label %for.done, !dbg !1938

for.body:                                         ; preds = %"(*internal/task.waitGroup).done.exit", %for.body
    #dbg_value(ptr @"internal/task.gcState", !1825, !DIExpression(), !1939)
    #dbg_value(i32 1, !1830, !DIExpression(), !1941)
  tail call void @tinygo_futex_wait(ptr nonnull @"internal/task.gcState", i32 1) #13, !dbg !1942
    #dbg_value(ptr @"internal/task.gcState", !1923, !DIExpression(), !1928)
    #dbg_value(ptr @"internal/task.gcState", !1930, !DIExpression(), !1935)
  %9 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !1935
  %10 = icmp eq i32 %9, 1, !dbg !1937
  br i1 %10, label %for.body, label %for.done, !dbg !1938

for.done:                                         ; preds = %for.body, %"(*internal/task.waitGroup).done.exit"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1893, !DIExpression(), !1943)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1901, !DIExpression(), !1945)
    #dbg_value(i32 -1, !1904, !DIExpression(), !1947)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1908, !DIExpression(), !1948)
    #dbg_value(i32 -1, !1911, !DIExpression(), !1948)
  %11 = atomicrmw add ptr @"internal/task.scanWaitGroup", i32 -1 syncscope("singlethread") seq_cst, align 4, !dbg !1948
  %12 = icmp eq i32 %11, 1, !dbg !1950
  br i1 %12, label %gep.next4.i3, label %"(*internal/task.waitGroup).done.exit4", !dbg !1951

gep.next4.i3:                                     ; preds = %for.done
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1893, !DIExpression(), !1952)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1917, !DIExpression(), !1953)
  tail call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.scanWaitGroup") #13, !dbg !1955
  br label %"(*internal/task.waitGroup).done.exit4", !dbg !1951

"(*internal/task.waitGroup).done.exit4":          ; preds = %for.done, %gep.next4.i3
  ret void, !dbg !1956
}

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.runtimePanic(ptr nocapture readonly %msg.data, i64 range(i64 17, 21) %msg.len) unnamed_addr #2 !dbg !1957 {
entry:
    #dbg_value(ptr %msg.data, !1961, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1962)
    #dbg_value(i64 %msg.len, !1961, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1962)
  %0 = tail call ptr @llvm.returnaddress(i32 0), !dbg !1963
    #dbg_value(%runtime._string poison, !1961, !DIExpression(), !1964)
  tail call fastcc void @runtime.runtimePanicAt(ptr %0, ptr %msg.data, i64 %msg.len), !dbg !1965
  unreachable, !dbg !1966
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.runtimePanicAt(ptr %addr, ptr nocapture readonly %msg.data, i64 range(i64 14, 24) %msg.len) unnamed_addr #2 !dbg !1967 {
entry:
    #dbg_value(ptr %addr, !1971, !DIExpression(), !1973)
    #dbg_value(ptr %msg.data, !1972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1973)
    #dbg_value(i64 %msg.len, !1972, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1973)
  tail call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.13", i64 24), !dbg !1974
    #dbg_value(ptr %addr, !1971, !DIExpression(), !1975)
  %0 = ptrtoint ptr %addr to i64, !dbg !1976
  %1 = add i64 %0, -5, !dbg !1977
  tail call fastcc void @runtime.printptr(i64 %1), !dbg !1978
  tail call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.14", i64 2), !dbg !1979
    #dbg_value(%runtime._string poison, !1972, !DIExpression(), !1980)
  tail call fastcc void @runtime.printstring(ptr %msg.data, i64 %msg.len), !dbg !1981
  tail call fastcc void @runtime.printnl(), !dbg !1982
  tail call void @abort() #13, !dbg !1983
  unreachable, !dbg !1984
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printstring(ptr nocapture readonly %s.data, i64 range(i64 2, 31) %s.len) unnamed_addr #4 !dbg !1985 {
entry:
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !1990
    #dbg_value(ptr %s.data, !1987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1997)
    #dbg_value(i64 %s.len, !1987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1997)
    #dbg_value(i64 0, !1988, !DIExpression(), !1998)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !1999)
  br label %for.body, !dbg !2000

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ 0, %entry ], [ %4, %for.body ]
    #dbg_value(i64 %0, !1988, !DIExpression(), !2001)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2002)
  %1 = getelementptr inbounds nuw i8, ptr %s.data, i64 %0, !dbg !2003
  %2 = load i8, ptr %1, align 1, !dbg !2003
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2004
    #dbg_value(i8 %2, !1995, !DIExpression(), !2004)
  store i8 %2, ptr %stackalloc.i, align 1, !dbg !2004
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #13, !dbg !2005
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2006
  %4 = add nuw nsw i64 %0, 1, !dbg !2007
    #dbg_value(i64 %4, !1988, !DIExpression(), !2008)
  %exitcond.not = icmp eq i64 %4, %s.len, !dbg !2009
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !2000

for.done:                                         ; preds = %for.body
  ret void, !dbg !2010
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printptr(i64 %ptr) unnamed_addr #4 !dbg !2011 {
entry:
  %stackalloc.i4 = alloca [1 x i8], align 1, !dbg !2018
  %stackalloc.i3 = alloca [1 x i8], align 1, !dbg !2020
  %stackalloc.i2 = alloca [1 x i8], align 1, !dbg !2022
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2024
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2026
    #dbg_value(i64 %ptr, !2015, !DIExpression(), !2029)
  %0 = icmp eq i64 %ptr, 0, !dbg !2030
  br i1 %0, label %for.body.i.preheader, label %if.done, !dbg !2031

for.body.i.preheader:                             ; preds = %entry
    #dbg_value(i64 0, !1988, !DIExpression(), !2032)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2033)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2034
    #dbg_value(i8 110, !1995, !DIExpression(), !2034)
  store i8 110, ptr %stackalloc.i.i, align 1, !dbg !2034
  %1 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #13, !dbg !2035
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2036
    #dbg_value(i64 1, !1988, !DIExpression(), !2037)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2034
    #dbg_value(i8 105, !1995, !DIExpression(), !2034)
  store i8 105, ptr %stackalloc.i.i, align 1, !dbg !2034
  %2 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #13, !dbg !2035
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2036
    #dbg_value(i64 2, !1988, !DIExpression(), !2037)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2034
    #dbg_value(i8 108, !1995, !DIExpression(), !2034)
  store i8 108, ptr %stackalloc.i.i, align 1, !dbg !2034
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #13, !dbg !2035
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2036
    #dbg_value(i64 3, !1988, !DIExpression(), !2037)
  br label %common.ret, !dbg !2031

common.ret:                                       ; preds = %if.done2, %for.body.i.preheader
  ret void, !dbg !2031

if.done:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2038
    #dbg_value(i8 48, !1995, !DIExpression(), !2038)
  store i8 48, ptr %stackalloc.i, align 1, !dbg !2038
  %4 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #13, !dbg !2039
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2040
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i2), !dbg !2041
    #dbg_value(i8 120, !1995, !DIExpression(), !2041)
  store i8 120, ptr %stackalloc.i2, align 1, !dbg !2041
  %5 = call i64 @write(i32 1, ptr nonnull %stackalloc.i2, i64 1) #13, !dbg !2042
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i2), !dbg !2043
    #dbg_value(i64 0, !2016, !DIExpression(), !2044)
  br label %for.body, !dbg !2031

for.body:                                         ; preds = %if.done, %if.done2
  %6 = phi i64 [ 0, %if.done ], [ %14, %if.done2 ]
  %7 = phi i64 [ %ptr, %if.done ], [ %13, %if.done2 ]
    #dbg_value(i64 %6, !2016, !DIExpression(), !2045)
    #dbg_value(i64 %7, !2015, !DIExpression(), !2046)
  %8 = lshr i64 %7, 60, !dbg !2047
  %9 = trunc nuw nsw i64 %8 to i8, !dbg !2048
    #dbg_value(i8 %9, !2017, !DIExpression(), !2049)
  %10 = icmp ult i64 %7, -6917529027641081856, !dbg !2050
  br i1 %10, label %if.then1, label %if.else, !dbg !2031

if.then1:                                         ; preds = %for.body
    #dbg_value(i8 %9, !2017, !DIExpression(), !2051)
  %11 = or disjoint i8 %9, 48, !dbg !2052
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i3), !dbg !2053
    #dbg_value(i8 %11, !1995, !DIExpression(), !2053)
  store i8 %11, ptr %stackalloc.i3, align 1, !dbg !2053
  %12 = call i64 @write(i32 1, ptr nonnull %stackalloc.i3, i64 1) #13, !dbg !2054
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i3), !dbg !2055
  br label %if.done2, !dbg !2031

if.done2:                                         ; preds = %if.else, %if.then1
  %13 = shl i64 %7, 4, !dbg !2056
    #dbg_value(i64 %13, !2015, !DIExpression(), !2056)
  %14 = add nuw nsw i64 %6, 1, !dbg !2057
    #dbg_value(i64 %14, !2016, !DIExpression(), !2045)
  %exitcond.not = icmp eq i64 %14, 16, !dbg !2058
  br i1 %exitcond.not, label %common.ret, label %for.body, !dbg !2031

if.else:                                          ; preds = %for.body
    #dbg_value(i8 %9, !2017, !DIExpression(), !2059)
  %15 = add nuw nsw i8 %9, 87, !dbg !2060
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i4), !dbg !2061
    #dbg_value(i8 %15, !1995, !DIExpression(), !2061)
  store i8 %15, ptr %stackalloc.i4, align 1, !dbg !2061
  %16 = call i64 @write(i32 1, ptr nonnull %stackalloc.i4, i64 1) #13, !dbg !2062
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i4), !dbg !2063
  br label %if.done2, !dbg !2031
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printnl() unnamed_addr #4 !dbg !2064 {
entry:
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2066
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2068
    #dbg_value(i8 10, !1995, !DIExpression(), !2069)
    #dbg_value(i8 10, !1995, !DIExpression(), !2068)
  store i8 10, ptr %stackalloc.i, align 1, !dbg !2068
    #dbg_value(i8 10, !1995, !DIExpression(), !2068)
  %0 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #13, !dbg !2070
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2071
  ret void, !dbg !2072
}

; Function Attrs: cold nofree noreturn
declare void @abort() local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #6

declare i32 @getrandom(ptr nocapture, i64, i32) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #7

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.nilPanic() unnamed_addr #2 !dbg !2073 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0), !dbg !2074
  tail call fastcc void @runtime.runtimePanicAt(ptr %0, ptr nonnull @"runtime$string.17", i64 23), !dbg !2075
  unreachable, !dbg !2076
}

; Function Attrs: noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.panicOrGoexit() unnamed_addr #8 !dbg !2077 {
entry:
    #dbg_value(ptr @"reflect/types.type:basic:string", !2082, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2098)
    #dbg_value(ptr @"internal/task$pack", !2082, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2098)
    #dbg_value(i8 1, !2083, !DIExpression(), !2098)
  %0 = tail call ptr @tinygo_task_current() #13, !dbg !2099
    #dbg_value(ptr %0, !1881, !DIExpression(), !2101)
    #dbg_value(ptr %0, !1881, !DIExpression(), !2102)
  %1 = icmp eq ptr %0, null, !dbg !2103
  br i1 %1, label %if.then.i, label %"internal/task.Current.exit", !dbg !2104

if.then.i:                                        ; preds = %entry
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2105
  unreachable, !dbg !2104

"internal/task.Current.exit":                     ; preds = %entry
    #dbg_value(ptr %0, !1881, !DIExpression(), !2106)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !2107
  %3 = load ptr, ptr %2, align 8, !dbg !2107
    #dbg_value(ptr %3, !2084, !DIExpression(), !2108)
    #dbg_value(ptr %3, !2084, !DIExpression(), !2109)
  %.not = icmp eq ptr %3, null, !dbg !2110
  br i1 %.not, label %if.done5, label %store.next, !dbg !2111

store.next:                                       ; preds = %"internal/task.Current.exit"
    #dbg_value(ptr %3, !2084, !DIExpression(), !2112)
    #dbg_value({ ptr, ptr } poison, !2082, !DIExpression(), !2113)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !2114
  store ptr @"reflect/types.type:basic:string", ptr %4, align 8, !dbg !2114
  %.repack5 = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !2114
  store ptr @"internal/task$pack", ptr %.repack5, align 8, !dbg !2114
    #dbg_value({ ptr, ptr } poison, !2096, !DIExpression(), !2114)
    #dbg_value(ptr %3, !2084, !DIExpression(), !2115)
    #dbg_value(i8 1, !2083, !DIExpression(), !2116)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !2117
  store i8 1, ptr %5, align 1, !dbg !2117
    #dbg_value(i8 1, !2097, !DIExpression(), !2117)
    #dbg_value(ptr %3, !2084, !DIExpression(), !2118)
  tail call void @tinygo_longjmp(ptr nonnull %3) #13, !dbg !2119
  br label %if.done5, !dbg !2111

if.done5:                                         ; preds = %"internal/task.Current.exit", %store.next
    #dbg_value(i8 1, !2083, !DIExpression(), !2120)
  tail call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.12", i64 7), !dbg !2121
    #dbg_value({ ptr, ptr } poison, !2082, !DIExpression(), !2122)
  tail call fastcc void @runtime.printitf(), !dbg !2123
  tail call fastcc void @runtime.printnl(), !dbg !2124
  tail call void @abort() #13, !dbg !2125
  unreachable, !dbg !2126
}

declare void @tinygo_longjmp(ptr nocapture dereferenceable_or_null(48)) local_unnamed_addr #0

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printitf() unnamed_addr #4 !dbg !2127 {
entry:
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2158
    #dbg_value(ptr @"reflect/types.type:basic:string", !2131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2161)
    #dbg_value(ptr @"internal/task$pack", !2131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2161)
    #dbg_value({ ptr, ptr } poison, !2131, !DIExpression(), !2162)
    #dbg_value(%runtime._string { ptr @"internal/task$string", i64 30 }, !2153, !DIExpression(), !2163)
    #dbg_value(ptr @"internal/task$string", !1987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2164)
    #dbg_value(i64 30, !1987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2164)
    #dbg_value(i64 0, !1988, !DIExpression(), !2165)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2166)
  br label %for.body.i, !dbg !2167

for.body.i:                                       ; preds = %for.body.i, %entry
  %0 = phi i64 [ 0, %entry ], [ %4, %for.body.i ]
    #dbg_value(i64 %0, !1988, !DIExpression(), !2168)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2169)
  %1 = getelementptr inbounds nuw i8, ptr @"internal/task$string", i64 %0, !dbg !2170
  %2 = load i8, ptr %1, align 1, !dbg !2170
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2171
    #dbg_value(i8 %2, !1995, !DIExpression(), !2171)
  store i8 %2, ptr %stackalloc.i.i, align 1, !dbg !2171
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #13, !dbg !2172
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2173
  %4 = add nuw nsw i64 %0, 1, !dbg !2174
    #dbg_value(i64 %4, !1988, !DIExpression(), !2175)
  %exitcond.not.i = icmp eq i64 %4, 30, !dbg !2176
  br i1 %exitcond.not.i, label %runtime.printstring.exit, label %for.body.i, !dbg !2167

runtime.printstring.exit:                         ; preds = %for.body.i
  ret void, !dbg !2177
}

; Function Attrs: noreturn nounwind uwtable(sync)
define internal fastcc void @runtime._panic() unnamed_addr #8 !dbg !2178 {
entry:
    #dbg_value(ptr @"reflect/types.type:basic:string", !2180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2181)
    #dbg_value(ptr @"internal/task$pack", !2180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2181)
    #dbg_value({ ptr, ptr } poison, !2180, !DIExpression(), !2182)
  tail call fastcc void @runtime.panicOrGoexit(), !dbg !2183
  unreachable, !dbg !2184
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define double @fminimum(double %x, double %y) local_unnamed_addr #9 !dbg !2185 {
entry:
    #dbg_value(double %x, !2189, !DIExpression(), !2191)
    #dbg_value(double %y, !2190, !DIExpression(), !2191)
    #dbg_value(double %x, !2189, !DIExpression(), !2192)
    #dbg_value(double %y, !2190, !DIExpression(), !2193)
    #dbg_value(double %x, !2194, !DIExpression(), !2198)
    #dbg_value(double %y, !2197, !DIExpression(), !2198)
    #dbg_value(double %x, !2194, !DIExpression(), !2200)
    #dbg_value(double %y, !2197, !DIExpression(), !2201)
    #dbg_value(double %x, !2202, !DIExpression(), !2212)
    #dbg_value(double %y, !2207, !DIExpression(), !2212)
    #dbg_value(i64 9218868437227405313, !2208, !DIExpression(), !2212)
    #dbg_value(i64 9223372036854775807, !2209, !DIExpression(), !2212)
  %.cast.i.i = bitcast double %x to i64, !dbg !2214
    #dbg_value(i64 %.cast.i.i, !2210, !DIExpression(), !2215)
  %.cast2.i.i = bitcast double %y to i64, !dbg !2216
    #dbg_value(i64 %.cast2.i.i, !2211, !DIExpression(), !2217)
    #dbg_value(i64 %.cast.i.i, !2210, !DIExpression(), !2218)
    #dbg_value(i64 9218868437227405313, !2208, !DIExpression(), !2219)
  %0 = icmp sgt i64 %.cast.i.i, 9218868437227405312, !dbg !2220
  br i1 %0, label %runtime.minimumFloat64.exit, label %switch.next.i.i, !dbg !2221

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i64 %.cast2.i.i, !2211, !DIExpression(), !2222)
    #dbg_value(i64 9218868437227405313, !2208, !DIExpression(), !2223)
  %1 = icmp sgt i64 %.cast2.i.i, 9218868437227405312, !dbg !2224
  br i1 %1, label %runtime.minimumFloat64.exit, label %switch.next2.i.i, !dbg !2221

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i64 %.cast.i.i, !2210, !DIExpression(), !2225)
  %2 = icmp slt i64 %.cast.i.i, 0, !dbg !2226
  %3 = xor i64 %.cast.i.i, 9223372036854775807
  %spec.select.i.i = select i1 %2, i64 %3, i64 %.cast.i.i, !dbg !2221
    #dbg_value(i64 %.cast2.i.i, !2211, !DIExpression(), !2227)
  %4 = icmp slt i64 %.cast2.i.i, 0, !dbg !2228
  %5 = xor i64 %.cast2.i.i, 9223372036854775807, !dbg !2221
  %6 = select i1 %4, i64 %5, i64 %.cast2.i.i, !dbg !2221
    #dbg_value(i64 %spec.select.i.i, !2210, !DIExpression(), !2229)
    #dbg_value(i64 %6, !2211, !DIExpression(), !2230)
  %.not.i.i = icmp sgt i64 %spec.select.i.i, %6, !dbg !2231
  %y.x.i.i = select i1 %.not.i.i, double %y, double %x, !dbg !2221
  br label %runtime.minimumFloat64.exit, !dbg !2221

runtime.minimumFloat64.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next2.i.i
  %common.ret.op.i.i = phi double [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next2.i.i ]
  ret double %common.ret.op.i.i, !dbg !2232
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define float @fminimumf(float %x, float %y) local_unnamed_addr #9 !dbg !2233 {
entry:
    #dbg_value(float %x, !2237, !DIExpression(), !2239)
    #dbg_value(float %y, !2238, !DIExpression(), !2239)
    #dbg_value(float %x, !2237, !DIExpression(), !2240)
    #dbg_value(float %y, !2238, !DIExpression(), !2241)
    #dbg_value(float %x, !2242, !DIExpression(), !2246)
    #dbg_value(float %y, !2245, !DIExpression(), !2246)
    #dbg_value(float %x, !2242, !DIExpression(), !2248)
    #dbg_value(float %y, !2245, !DIExpression(), !2249)
    #dbg_value(float %x, !2250, !DIExpression(), !2260)
    #dbg_value(float %y, !2255, !DIExpression(), !2260)
    #dbg_value(i32 2139095041, !2256, !DIExpression(), !2260)
    #dbg_value(i32 2147483647, !2257, !DIExpression(), !2260)
  %.cast.i.i = bitcast float %x to i32, !dbg !2262
    #dbg_value(i32 %.cast.i.i, !2258, !DIExpression(), !2263)
  %.cast2.i.i = bitcast float %y to i32, !dbg !2264
    #dbg_value(i32 %.cast2.i.i, !2259, !DIExpression(), !2265)
    #dbg_value(i32 %.cast.i.i, !2258, !DIExpression(), !2266)
    #dbg_value(i32 2139095041, !2256, !DIExpression(), !2267)
  %0 = icmp sgt i32 %.cast.i.i, 2139095040, !dbg !2268
  br i1 %0, label %runtime.minimumFloat32.exit, label %switch.next.i.i, !dbg !2269

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i32 %.cast2.i.i, !2259, !DIExpression(), !2270)
    #dbg_value(i32 2139095041, !2256, !DIExpression(), !2271)
  %1 = icmp sgt i32 %.cast2.i.i, 2139095040, !dbg !2272
  br i1 %1, label %runtime.minimumFloat32.exit, label %switch.next2.i.i, !dbg !2269

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i32 %.cast.i.i, !2258, !DIExpression(), !2273)
  %2 = icmp slt i32 %.cast.i.i, 0, !dbg !2274
  %3 = xor i32 %.cast.i.i, 2147483647
  %spec.select.i.i = select i1 %2, i32 %3, i32 %.cast.i.i, !dbg !2269
    #dbg_value(i32 %.cast2.i.i, !2259, !DIExpression(), !2275)
  %4 = icmp slt i32 %.cast2.i.i, 0, !dbg !2276
  %5 = xor i32 %.cast2.i.i, 2147483647, !dbg !2269
  %6 = select i1 %4, i32 %5, i32 %.cast2.i.i, !dbg !2269
    #dbg_value(i32 %spec.select.i.i, !2258, !DIExpression(), !2277)
    #dbg_value(i32 %6, !2259, !DIExpression(), !2278)
  %.not.i.i = icmp sgt i32 %spec.select.i.i, %6, !dbg !2279
  %y.x.i.i = select i1 %.not.i.i, float %y, float %x, !dbg !2269
  br label %runtime.minimumFloat32.exit, !dbg !2269

runtime.minimumFloat32.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next2.i.i
  %common.ret.op.i.i = phi float [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next2.i.i ]
  ret float %common.ret.op.i.i, !dbg !2280
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define double @fmaximum(double %x, double %y) local_unnamed_addr #9 !dbg !2281 {
entry:
    #dbg_value(double %x, !2283, !DIExpression(), !2285)
    #dbg_value(double %y, !2284, !DIExpression(), !2285)
    #dbg_value(double %x, !2283, !DIExpression(), !2286)
    #dbg_value(double %y, !2284, !DIExpression(), !2287)
    #dbg_value(double %x, !2288, !DIExpression(), !2292)
    #dbg_value(double %y, !2291, !DIExpression(), !2292)
    #dbg_value(double %x, !2288, !DIExpression(), !2294)
    #dbg_value(double %y, !2291, !DIExpression(), !2295)
    #dbg_value(double %x, !2296, !DIExpression(), !2305)
    #dbg_value(double %y, !2299, !DIExpression(), !2305)
    #dbg_value(i64 9218868437227405313, !2300, !DIExpression(), !2305)
    #dbg_value(i64 9223372036854775807, !2301, !DIExpression(), !2305)
  %.cast.i.i = bitcast double %x to i64, !dbg !2307
    #dbg_value(i64 %.cast.i.i, !2302, !DIExpression(), !2308)
  %.cast6.i.i = bitcast double %y to i64, !dbg !2309
    #dbg_value(i64 %.cast6.i.i, !2303, !DIExpression(), !2310)
    #dbg_value(i64 %.cast.i.i, !2302, !DIExpression(), !2311)
  %0 = icmp slt i64 %.cast.i.i, 0, !dbg !2312
  %1 = xor i64 %.cast.i.i, 9223372036854775807
  %spec.select.i.i = select i1 %0, i64 %1, i64 %.cast.i.i, !dbg !2313
    #dbg_value(i64 %.cast6.i.i, !2303, !DIExpression(), !2314)
  %2 = icmp slt i64 %.cast6.i.i, 0, !dbg !2315
  %3 = xor i64 %.cast6.i.i, 9223372036854775807, !dbg !2313
  %4 = select i1 %2, i64 %3, i64 %.cast6.i.i, !dbg !2313
    #dbg_value(i64 9218868437227405313, !2300, !DIExpression(), !2316)
    #dbg_value(i64 -9218868437227405314, !2304, !DIExpression(), !2317)
    #dbg_value(i64 %spec.select.i.i, !2302, !DIExpression(), !2318)
    #dbg_value(i64 -9218868437227405314, !2304, !DIExpression(), !2319)
  %5 = icmp slt i64 %spec.select.i.i, -9218868437227405313, !dbg !2320
  br i1 %5, label %runtime.maximumFloat64.exit, label %switch.next.i.i, !dbg !2313

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i64 %4, !2303, !DIExpression(), !2321)
    #dbg_value(i64 -9218868437227405314, !2304, !DIExpression(), !2322)
  %6 = icmp slt i64 %4, -9218868437227405313, !dbg !2323
  br i1 %6, label %runtime.maximumFloat64.exit, label %switch.next4.i.i, !dbg !2313

switch.next4.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i64 %spec.select.i.i, !2302, !DIExpression(), !2324)
    #dbg_value(i64 %4, !2303, !DIExpression(), !2325)
  %.not.i.i = icmp slt i64 %spec.select.i.i, %4, !dbg !2326
  %y.x.i.i = select i1 %.not.i.i, double %y, double %x, !dbg !2313
  br label %runtime.maximumFloat64.exit, !dbg !2313

runtime.maximumFloat64.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next4.i.i
  %common.ret.op.i.i = phi double [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next4.i.i ]
  ret double %common.ret.op.i.i, !dbg !2327
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define float @fmaximumf(float %x, float %y) local_unnamed_addr #9 !dbg !2328 {
entry:
    #dbg_value(float %x, !2330, !DIExpression(), !2332)
    #dbg_value(float %y, !2331, !DIExpression(), !2332)
    #dbg_value(float %x, !2330, !DIExpression(), !2333)
    #dbg_value(float %y, !2331, !DIExpression(), !2334)
    #dbg_value(float %x, !2335, !DIExpression(), !2339)
    #dbg_value(float %y, !2338, !DIExpression(), !2339)
    #dbg_value(float %x, !2335, !DIExpression(), !2341)
    #dbg_value(float %y, !2338, !DIExpression(), !2342)
    #dbg_value(float %x, !2343, !DIExpression(), !2352)
    #dbg_value(float %y, !2346, !DIExpression(), !2352)
    #dbg_value(i32 2139095041, !2347, !DIExpression(), !2352)
    #dbg_value(i32 2147483647, !2348, !DIExpression(), !2352)
  %.cast.i.i = bitcast float %x to i32, !dbg !2354
    #dbg_value(i32 %.cast.i.i, !2349, !DIExpression(), !2355)
  %.cast6.i.i = bitcast float %y to i32, !dbg !2356
    #dbg_value(i32 %.cast6.i.i, !2350, !DIExpression(), !2357)
    #dbg_value(i32 %.cast.i.i, !2349, !DIExpression(), !2358)
  %0 = icmp slt i32 %.cast.i.i, 0, !dbg !2359
  %1 = xor i32 %.cast.i.i, 2147483647
  %spec.select.i.i = select i1 %0, i32 %1, i32 %.cast.i.i, !dbg !2360
    #dbg_value(i32 %.cast6.i.i, !2350, !DIExpression(), !2361)
  %2 = icmp slt i32 %.cast6.i.i, 0, !dbg !2362
  %3 = xor i32 %.cast6.i.i, 2147483647, !dbg !2360
  %4 = select i1 %2, i32 %3, i32 %.cast6.i.i, !dbg !2360
    #dbg_value(i32 2139095041, !2347, !DIExpression(), !2363)
    #dbg_value(i32 -2139095042, !2351, !DIExpression(), !2364)
    #dbg_value(i32 %spec.select.i.i, !2349, !DIExpression(), !2365)
    #dbg_value(i32 -2139095042, !2351, !DIExpression(), !2366)
  %5 = icmp slt i32 %spec.select.i.i, -2139095041, !dbg !2367
  br i1 %5, label %runtime.maximumFloat32.exit, label %switch.next.i.i, !dbg !2360

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i32 %4, !2350, !DIExpression(), !2368)
    #dbg_value(i32 -2139095042, !2351, !DIExpression(), !2369)
  %6 = icmp slt i32 %4, -2139095041, !dbg !2370
  br i1 %6, label %runtime.maximumFloat32.exit, label %switch.next4.i.i, !dbg !2360

switch.next4.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i32 %spec.select.i.i, !2349, !DIExpression(), !2371)
    #dbg_value(i32 %4, !2350, !DIExpression(), !2372)
  %.not.i.i = icmp slt i32 %spec.select.i.i, %4, !dbg !2373
  %y.x.i.i = select i1 %.not.i.i, float %y, float %x, !dbg !2360
  br label %runtime.maximumFloat32.exit, !dbg !2360

runtime.maximumFloat32.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next4.i.i
  %common.ret.op.i.i = phi float [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next4.i.i ]
  ret float %common.ret.op.i.i, !dbg !2374
}

declare void @GC_init() local_unnamed_addr #0

declare void @tinygo_runtime_bdwgc_init() local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_runtime_bdwgc_callback() local_unnamed_addr #1 !dbg !2375 {
entry:
  %0 = tail call ptr @tinygo_task_current() #13, !dbg !2376
    #dbg_value(ptr %0, !1881, !DIExpression(), !2390)
  %1 = icmp eq ptr %0, null, !dbg !2391
  br i1 %1, label %if.then.i.i.i, label %"internal/task.Current.exit.i.i", !dbg !2392

if.then.i.i.i:                                    ; preds = %entry
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2393
  unreachable, !dbg !2392

"internal/task.Current.exit.i.i":                 ; preds = %entry
    #dbg_value(ptr %0, !1881, !DIExpression(), !2394)
    #dbg_value(ptr %0, !2380, !DIExpression(), !2395)
    #dbg_value(ptr @"internal/task.gcState", !1923, !DIExpression(), !2396)
    #dbg_value(ptr @"internal/task.gcState", !1930, !DIExpression(), !2398)
  %2 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2398
  %3 = icmp eq i32 %2, 0, !dbg !2400
  br i1 %3, label %if.then.i.i, label %if.done2.i.i, !dbg !2401

if.then.i.i:                                      ; preds = %"internal/task.Current.exit.i.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1790, !DIExpression(), !2402)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1796, !DIExpression(), !2404)
    #dbg_value(i32 0, !1801, !DIExpression(), !2406)
    #dbg_value(i32 1, !1802, !DIExpression(), !2407)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1807, !DIExpression(), !2408)
    #dbg_value(i32 0, !1812, !DIExpression(), !2408)
    #dbg_value(i32 1, !1813, !DIExpression(), !2408)
  %4 = cmpxchg ptr @"internal/task.activeTaskLock", i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2408
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !2408
  br i1 %5, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i", !dbg !2410

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i": ; preds = %if.then.i.i
    #dbg_value(ptr @"internal/task.activeTaskLock", !1790, !DIExpression(), !2411)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1744, !DIExpression(), !2412)
    #dbg_value(i32 2, !1751, !DIExpression(), !2414)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1755, !DIExpression(), !2415)
    #dbg_value(i32 2, !1762, !DIExpression(), !2415)
  %6 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2415
  %.not4.i.i.i = icmp eq i32 %6, 0, !dbg !2417
  br i1 %.not4.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i", !dbg !2410

"(*internal/futex.Futex).Wait.exit.i.i.i":        ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i", %"(*internal/futex.Futex).Wait.exit.i.i.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1790, !DIExpression(), !2418)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1825, !DIExpression(), !2419)
    #dbg_value(i32 2, !1830, !DIExpression(), !2421)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock", i32 2) #13, !dbg !2422
    #dbg_value(ptr @"internal/task.activeTaskLock", !1744, !DIExpression(), !2412)
    #dbg_value(i32 2, !1751, !DIExpression(), !2414)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1755, !DIExpression(), !2415)
    #dbg_value(i32 2, !1762, !DIExpression(), !2415)
  %7 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2415
  %.not.i.i.i = icmp eq i32 %7, 0, !dbg !2417
  br i1 %.not.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i", !dbg !2410

"(*internal/task.Mutex).Lock.exit.i.i":           ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i", %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i", %if.then.i.i
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2423, !DIExpression(), !2427)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1923, !DIExpression(), !2429)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1930, !DIExpression(), !2431)
  %8 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2431
  %9 = icmp eq i32 %8, 0, !dbg !2433
  br i1 %9, label %"(*internal/task.waitGroup).wait.exit.i.i", label %gep.next4.i.i.i, !dbg !2434

gep.next4.i.i.i:                                  ; preds = %"(*internal/task.Mutex).Lock.exit.i.i", %gep.next4.i.i.i
  %10 = phi i32 [ %11, %gep.next4.i.i.i ], [ %8, %"(*internal/task.Mutex).Lock.exit.i.i" ]
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2423, !DIExpression(), !2435)
    #dbg_value(i32 %10, !2426, !DIExpression(), !2436)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1825, !DIExpression(), !2437)
    #dbg_value(i32 %10, !1830, !DIExpression(), !2439)
  tail call void @tinygo_futex_wait(ptr nonnull @"internal/task.scanWaitGroup", i32 range(i32 1, 0) %10) #13, !dbg !2440
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1923, !DIExpression(), !2429)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1930, !DIExpression(), !2431)
  %11 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2431
    #dbg_value(i32 %11, !2426, !DIExpression(), !2441)
  %12 = icmp eq i32 %11, 0, !dbg !2433
  br i1 %12, label %"(*internal/task.waitGroup).wait.exit.i.i", label %gep.next4.i.i.i, !dbg !2434

"(*internal/task.waitGroup).wait.exit.i.i":       ; preds = %gep.next4.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i"
    #dbg_value(ptr @"internal/task.gcState", !2442, !DIExpression(), !2446)
    #dbg_value(i32 1, !2445, !DIExpression(), !2448)
    #dbg_value(ptr @"internal/task.gcState", !2449, !DIExpression(), !2453)
    #dbg_value(i32 1, !2452, !DIExpression(), !2453)
  store atomic i32 1, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2453
  %13 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2455
    #dbg_value(i32 %13, !2381, !DIExpression(), !2455)
  store i32 %13, ptr @"internal/task.scanWaitGroup", align 4, !dbg !2456
    #dbg_value(%"internal/task.Semaphore" poison, !2382, !DIExpression(), !2456)
    #dbg_value(ptr poison, !2383, !DIExpression(), !2457)
    #dbg_value(ptr poison, !2384, !DIExpression(), !2458)
  %14 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2459
  %.not23.i.i = icmp eq ptr %14, null, !dbg !2460
  br i1 %.not23.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !2401

for.body.i.i:                                     ; preds = %"(*internal/task.waitGroup).wait.exit.i.i", %deref.next15.i.i
  %15 = phi ptr [ %19, %deref.next15.i.i ], [ %14, %"(*internal/task.waitGroup).wait.exit.i.i" ]
    #dbg_value(ptr %15, !2384, !DIExpression(), !2461)
    #dbg_value(ptr %0, !2380, !DIExpression(), !2462)
  %.not16.i.i = icmp eq ptr %15, %0, !dbg !2463
  br i1 %.not16.i.i, label %deref.next15.i.i, label %deref.next.i.i, !dbg !2401

deref.next.i.i:                                   ; preds = %for.body.i.i
    #dbg_value(ptr %15, !2384, !DIExpression(), !2464)
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 32, !dbg !2465
  %17 = load ptr, ptr %16, align 8, !dbg !2465
  tail call void @tinygo_task_send_gc_signal(ptr %17) #13, !dbg !2466
  br label %deref.next15.i.i, !dbg !2401

deref.next15.i.i:                                 ; preds = %deref.next.i.i, %for.body.i.i
    #dbg_value(ptr %15, !2384, !DIExpression(), !2467)
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 56, !dbg !2468
    #dbg_value(ptr poison, !2384, !DIExpression(), !2469)
  %19 = load ptr, ptr %18, align 8, !dbg !2459
    #dbg_value(ptr %19, !2384, !DIExpression(), !2470)
  %.not.i.i = icmp eq ptr %19, null, !dbg !2460
  br i1 %.not.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !2401

for.done.i.i:                                     ; preds = %deref.next15.i.i, %"(*internal/task.waitGroup).wait.exit.i.i"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2423, !DIExpression(), !2471)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1923, !DIExpression(), !2473)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1930, !DIExpression(), !2475)
  %20 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2475
  %21 = icmp eq i32 %20, 0, !dbg !2477
  br i1 %21, label %if.done2.i.i, label %gep.next4.i20.i.i, !dbg !2478

gep.next4.i20.i.i:                                ; preds = %for.done.i.i, %gep.next4.i20.i.i
  %22 = phi i32 [ %23, %gep.next4.i20.i.i ], [ %20, %for.done.i.i ]
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2423, !DIExpression(), !2479)
    #dbg_value(i32 %22, !2426, !DIExpression(), !2480)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1825, !DIExpression(), !2481)
    #dbg_value(i32 %22, !1830, !DIExpression(), !2483)
  tail call void @tinygo_futex_wait(ptr nonnull @"internal/task.scanWaitGroup", i32 range(i32 1, 0) %22) #13, !dbg !2484
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1923, !DIExpression(), !2473)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1930, !DIExpression(), !2475)
  %23 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2475
    #dbg_value(i32 %23, !2426, !DIExpression(), !2485)
  %24 = icmp eq i32 %23, 0, !dbg !2477
  br i1 %24, label %if.done2.i.i, label %gep.next4.i20.i.i, !dbg !2478

if.done2.i.i:                                     ; preds = %gep.next4.i20.i.i, %for.done.i.i, %"internal/task.Current.exit.i.i"
    #dbg_value(ptr poison, !2383, !DIExpression(), !2486)
    #dbg_value(ptr poison, !2385, !DIExpression(), !2487)
  %25 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2488
  %.not1424.i.i = icmp eq ptr %25, null, !dbg !2489
  br i1 %.not1424.i.i, label %for.done7.i.i, label %for.body4.i.i, !dbg !2401

for.body4.i.i:                                    ; preds = %if.done2.i.i, %deref.next33.i.i
  %26 = phi ptr [ %32, %deref.next33.i.i ], [ %25, %if.done2.i.i ]
    #dbg_value(ptr %26, !2385, !DIExpression(), !2490)
    #dbg_value(ptr %0, !2380, !DIExpression(), !2491)
  %.not15.i.i = icmp eq ptr %26, %0, !dbg !2492
  br i1 %.not15.i.i, label %deref.next33.i.i, label %deref.next21.i.i, !dbg !2401

deref.next21.i.i:                                 ; preds = %for.body4.i.i
    #dbg_value(ptr %26, !2385, !DIExpression(), !2493)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 48, !dbg !2494
  %28 = load i64, ptr %27, align 8, !dbg !2494
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 40, !dbg !2495
  %30 = load i64, ptr %29, align 8, !dbg !2495
    #dbg_value(i64 %28, !2496, !DIExpression(), !2502)
    #dbg_value(i64 %30, !2501, !DIExpression(), !2504)
  tail call void @GC_push_all(i64 %28, i64 %30) #13, !dbg !2505
  br label %deref.next33.i.i, !dbg !2401

deref.next33.i.i:                                 ; preds = %deref.next21.i.i, %for.body4.i.i
    #dbg_value(ptr %26, !2385, !DIExpression(), !2506)
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 56, !dbg !2507
    #dbg_value(ptr poison, !2385, !DIExpression(), !2508)
  %32 = load ptr, ptr %31, align 8, !dbg !2488
    #dbg_value(ptr %32, !2385, !DIExpression(), !2509)
  %.not14.i.i = icmp eq ptr %32, null, !dbg !2489
  br i1 %.not14.i.i, label %for.done7.i.i, label %for.body4.i.i, !dbg !2401

for.done7.i.i:                                    ; preds = %deref.next33.i.i, %if.done2.i.i
  tail call void @tinygo_scanCurrentStack() #13, !dbg !2510
    #dbg_value(ptr undef, !2511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2543)
    #dbg_value(ptr poison, !2511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2543)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2547)
    #dbg_value(i64 0, !2518, !DIExpression(), !2548)
  %33 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 56), align 2, !dbg !2549
  %.not8.i.i.i.i = icmp eq i16 %33, 0, !dbg !2550
  br i1 %.not8.i.i.i.i, label %runtime.gcMarkReachable.exit, label %if.then.preheader.i.i.i.i, !dbg !2551

if.then.preheader.i.i.i.i:                        ; preds = %for.done7.i.i
  %34 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 32), align 8, !dbg !2552
    #dbg_value(!DIArgList(i64 %34, i64 ptrtoint (ptr @__ehdr_start to i64)), !2517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2547)
  %35 = add i64 %34, ptrtoint (ptr @__ehdr_start to i64), !dbg !2553
    #dbg_value(i64 %35, !2517, !DIExpression(), !2547)
  %36 = inttoptr i64 %35 to ptr, !dbg !2554
    #dbg_value(ptr %36, !2517, !DIExpression(), !2547)
  br label %if.then.i.i.i.i, !dbg !2555

if.then.i.i.i.i:                                  ; preds = %if.done.i.i.i.i, %if.then.preheader.i.i.i.i
  %37 = phi i16 [ %51, %if.done.i.i.i.i ], [ %33, %if.then.preheader.i.i.i.i ]
  %38 = phi i64 [ %55, %if.done.i.i.i.i ], [ 0, %if.then.preheader.i.i.i.i ]
  %39 = phi ptr [ %54, %if.done.i.i.i.i ], [ %36, %if.then.preheader.i.i.i.i ]
    #dbg_value(i64 %38, !2518, !DIExpression(), !2556)
    #dbg_value(ptr %39, !2517, !DIExpression(), !2557)
    #dbg_value(ptr %39, !2519, !DIExpression(), !2558)
  %40 = icmp eq ptr %39, null, !dbg !2555
  br i1 %40, label %deref.throw.i.i.i.i, label %deref.next.i.i.i.i, !dbg !2555

deref.next.i.i.i.i:                               ; preds = %if.then.i.i.i.i
  %41 = load i32, ptr %39, align 4, !dbg !2555
  %42 = icmp eq i32 %41, 1, !dbg !2559
  br i1 %42, label %deref.next5.i.i.i.i, label %if.done.i.i.i.i, !dbg !2551

deref.next5.i.i.i.i:                              ; preds = %deref.next.i.i.i.i
    #dbg_value(ptr %39, !2519, !DIExpression(), !2560)
  %43 = getelementptr inbounds nuw i8, ptr %39, i64 4, !dbg !2561
  %44 = load i32, ptr %43, align 4, !dbg !2561
  %45 = and i32 %44, 2, !dbg !2562
  %.not.i.i.i.i = icmp eq i32 %45, 0, !dbg !2563
  br i1 %.not.i.i.i.i, label %if.done.i.i.i.i, label %deref.next7.i.i.i.i, !dbg !2551

deref.next7.i.i.i.i:                              ; preds = %deref.next5.i.i.i.i
    #dbg_value(ptr %39, !2519, !DIExpression(), !2564)
  %46 = getelementptr inbounds nuw i8, ptr %39, i64 16, !dbg !2565
  %47 = load i64, ptr %46, align 8, !dbg !2565
    #dbg_value({ ptr, ptr } poison, !2511, !DIExpression(), !2566)
    #dbg_value(i64 %47, !2532, !DIExpression(), !2567)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2568)
  %48 = getelementptr inbounds nuw i8, ptr %39, i64 40, !dbg !2569
  %49 = load i64, ptr %48, align 8, !dbg !2569
    #dbg_value(!DIArgList(i64 %47, i64 %49), !2533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2568)
  %50 = add i64 %49, %47, !dbg !2570
    #dbg_value(i64 %50, !2533, !DIExpression(), !2568)
    #dbg_value(i64 %47, !2496, !DIExpression(), !2571)
    #dbg_value(i64 %50, !2501, !DIExpression(), !2573)
  tail call void @GC_push_all(i64 %47, i64 %50) #13, !dbg !2574
  %.pre.i.i.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 56), align 2, !dbg !2549
  br label %if.done.i.i.i.i, !dbg !2551

if.done.i.i.i.i:                                  ; preds = %deref.next7.i.i.i.i, %deref.next5.i.i.i.i, %deref.next.i.i.i.i
  %51 = phi i16 [ %.pre.i.i.i.i, %deref.next7.i.i.i.i ], [ %37, %deref.next5.i.i.i.i ], [ %37, %deref.next.i.i.i.i ], !dbg !2549
    #dbg_value(ptr %39, !2517, !DIExpression(), !2575)
  %52 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 54), align 2, !dbg !2576
  %53 = sext i16 %52 to i64, !dbg !2577
  %54 = getelementptr i8, ptr %39, i64 %53, !dbg !2577
    #dbg_value(ptr %54, !2517, !DIExpression(), !2578)
  %55 = add nuw nsw i64 %38, 1, !dbg !2579
    #dbg_value(i64 %55, !2518, !DIExpression(), !2556)
  %56 = zext i16 %51 to i64, !dbg !2580
  %57 = icmp samesign ult i64 %55, %56, !dbg !2550
  br i1 %57, label %if.then.i.i.i.i, label %runtime.gcMarkReachable.exit, !dbg !2551

deref.throw.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  tail call fastcc void @runtime.nilPanic(), !dbg !2555
  unreachable, !dbg !2555

runtime.gcMarkReachable.exit:                     ; preds = %if.done.i.i.i.i, %for.done7.i.i
  ret void, !dbg !2581
}

declare void @GC_push_all(i64, i64) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_scanstack(i64 %sp) local_unnamed_addr #1 !dbg !2582 {
entry:
    #dbg_value(i64 %sp, !2585, !DIExpression(), !2586)
    #dbg_value(i64 %sp, !2585, !DIExpression(), !2587)
  %0 = tail call ptr @tinygo_task_current() #13, !dbg !2588
    #dbg_value(ptr %0, !1881, !DIExpression(), !2592)
    #dbg_value(ptr %0, !1881, !DIExpression(), !2593)
  %1 = icmp eq ptr %0, null, !dbg !2594
  br i1 %1, label %if.then.i.i, label %"internal/task.StackTop.exit", !dbg !2595

if.then.i.i:                                      ; preds = %entry
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2596
  unreachable, !dbg !2595

"internal/task.StackTop.exit":                    ; preds = %entry
    #dbg_value(ptr %0, !1881, !DIExpression(), !2597)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2598
  %3 = load i64, ptr %2, align 8, !dbg !2598
    #dbg_value(i64 %sp, !2496, !DIExpression(), !2599)
    #dbg_value(i64 %3, !2501, !DIExpression(), !2599)
    #dbg_value(i64 %sp, !2496, !DIExpression(), !2601)
    #dbg_value(i64 %3, !2501, !DIExpression(), !2602)
  tail call void @GC_push_all(i64 %sp, i64 %3) #13, !dbg !2603
  ret void, !dbg !2604
}

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.divideByZeroPanic() unnamed_addr #2 !dbg !2605 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0), !dbg !2606
  tail call fastcc void @runtime.runtimePanicAt(ptr %0, ptr nonnull @"runtime$string.25", i64 14), !dbg !2607
  unreachable, !dbg !2608
}

; Function Attrs: nounwind uwtable(sync)
define noundef i64 @main(i32 %argc, ptr nocapture dereferenceable_or_null(8) %argv) local_unnamed_addr #1 !dbg !2609 {
entry:
    #dbg_value(i32 %argc, !2613, !DIExpression(), !2618)
    #dbg_value(ptr %argv, !2614, !DIExpression(), !2618)
    #dbg_value(i32 %argc, !2613, !DIExpression(), !2619)
    #dbg_value(i32 %argc, !2615, !DIExpression(), !2620)
    #dbg_value(ptr %argv, !2614, !DIExpression(), !2621)
  store ptr %argv, ptr @runtime.main_argv, align 8, !dbg !2622
    #dbg_value(ptr %argv, !2616, !DIExpression(), !2622)
  tail call void @tinygo_register_fatal_signals() #13, !dbg !2623
  %0 = tail call ptr @llvm.stacksave.p0(), !dbg !2624
  %1 = ptrtoint ptr %0 to i64, !dbg !2629
  store i64 %1, ptr @runtime.stackTop, align 8, !dbg !2630
    #dbg_value(i64 %1, !2617, !DIExpression(), !2630)
  tail call fastcc void @runtime.runMain(), !dbg !2631
  ret i64 0, !dbg !2632
}

declare void @tinygo_register_fatal_signals() local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable(sync)
define internal fastcc void @runtime.runMain() unnamed_addr #10 !dbg !2633 {
entry:
  %stackalloc.i.i.i = alloca [8 x i8], align 8, !dbg !2634
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stackalloc.i.i.i), !dbg !2634
  store i64 0, ptr %stackalloc.i.i.i, align 8, !dbg !2634
  %0 = call i32 @getrandom(ptr nonnull %stackalloc.i.i.i, i64 8, i32 0) #13, !dbg !2650
    #dbg_value(i32 %0, !2637, !DIExpression(), !2651)
    #dbg_value(i32 %0, !2637, !DIExpression(), !2652)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stackalloc.i.i.i), !dbg !2653
    #dbg_value(i64 poison, !2642, !DIExpression(), !2654)
    #dbg_value(i64 poison, !2642, !DIExpression(), !2655)
    #dbg_value(i64 poison, !2643, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !2656)
    #dbg_value(i64 poison, !2643, !DIExpression(), !2657)
    #dbg_value(i64 poison, !2644, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2658)
  tail call void @GC_init() #13, !dbg !2659
  tail call void @tinygo_runtime_bdwgc_init() #13, !dbg !2662
  %1 = load i64, ptr @runtime.stackTop, align 8, !dbg !2663
    #dbg_value(i64 %1, !2648, !DIExpression(), !2663)
    #dbg_value(i64 %1, !2664, !DIExpression(), !2668)
    #dbg_value(i64 %1, !2664, !DIExpression(), !2670)
  store i64 %1, ptr getelementptr inbounds nuw (i8, ptr @"internal/task.mainTask", i64 40), align 8, !dbg !2671
    #dbg_value(i64 %1, !2667, !DIExpression(), !2671)
  tail call void @tinygo_task_init(ptr nonnull @"internal/task.mainTask", ptr nonnull getelementptr inbounds nuw (i8, ptr @"internal/task.mainTask", i64 32), ptr nonnull @"internal/task.numCPU", ptr undef) #13, !dbg !2672
  tail call void @main.main(ptr undef) #13, !dbg !2673
  ret void, !dbg !2674
}

declare void @main.main(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_handle_fatal_signal(i32 %sig, i64 %addr) local_unnamed_addr #1 !dbg !2675 {
entry:
  %stackalloc.i.i46 = alloca [1 x i8], align 1, !dbg !2681
  %stackalloc.i.i42 = alloca [1 x i8], align 1, !dbg !2684
  %stackalloc.i.i.i.i = alloca [1 x i8], align 1, !dbg !2687
    #dbg_value(i64 %60, !2693, !DIExpression(), !2709)
  %digits.i.i.i = alloca [20 x i8], align 1, !dbg !2710
  %stackalloc.i.i41 = alloca [1 x i8], align 1, !dbg !2711
  %stackalloc.i.i32 = alloca [1 x i8], align 1, !dbg !2713
  %stackalloc.i.i28 = alloca [1 x i8], align 1, !dbg !2716
  %stackalloc.i.i19 = alloca [1 x i8], align 1, !dbg !2719
  %stackalloc.i.i15 = alloca [1 x i8], align 1, !dbg !2722
  %stackalloc.i.i9 = alloca [1 x i8], align 1, !dbg !2725
  %stackalloc.i.i5 = alloca [1 x i8], align 1, !dbg !2728
  %stackalloc.i.i1 = alloca [1 x i8], align 1, !dbg !2731
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2734
    #dbg_value(i32 %sig, !2679, !DIExpression(), !2737)
    #dbg_value(i64 %addr, !2680, !DIExpression(), !2738)
  %.not = icmp eq i64 %addr, 0, !dbg !2739
  br i1 %.not, label %for.body.i47, label %for.body.i, !dbg !2740

for.body.i:                                       ; preds = %entry, %for.body.i
  %0 = phi i64 [ %4, %for.body.i ], [ 0, %entry ]
    #dbg_value(i64 %0, !1988, !DIExpression(), !2741)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2742)
  %1 = getelementptr inbounds nuw i8, ptr @"runtime$string.50", i64 %0, !dbg !2743
  %2 = load i8, ptr %1, align 1, !dbg !2743
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2744
    #dbg_value(i8 %2, !1995, !DIExpression(), !2744)
  store i8 %2, ptr %stackalloc.i.i, align 1, !dbg !2744
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #13, !dbg !2745
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2746
  %4 = add nuw nsw i64 %0, 1, !dbg !2747
    #dbg_value(i64 %4, !1988, !DIExpression(), !2748)
  %exitcond.not.i = icmp eq i64 %4, 24, !dbg !2749
  br i1 %exitcond.not.i, label %runtime.printstring.exit, label %for.body.i, !dbg !2750

runtime.printstring.exit:                         ; preds = %for.body.i
    #dbg_value(i64 %addr, !2680, !DIExpression(), !2751)
  tail call fastcc void @runtime.printptr(i64 %addr), !dbg !2752
  br label %if.done2, !dbg !2740

if.done2:                                         ; preds = %for.body.i47, %runtime.printstring.exit
    #dbg_value(ptr poison, !1987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2753)
    #dbg_value(i64 16, !1987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2753)
    #dbg_value(i64 0, !1988, !DIExpression(), !2754)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2755)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2756
    #dbg_value(i8 58, !1995, !DIExpression(), !2756)
  store i8 58, ptr %stackalloc.i.i1, align 1, !dbg !2756
  %5 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2758
    #dbg_value(i64 1, !1988, !DIExpression(), !2759)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2756
    #dbg_value(i8 32, !1995, !DIExpression(), !2756)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2756
  %6 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2758
    #dbg_value(i64 2, !1988, !DIExpression(), !2759)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2756
    #dbg_value(i8 99, !1995, !DIExpression(), !2756)
  store i8 99, ptr %stackalloc.i.i1, align 1, !dbg !2756
  %7 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2758
    #dbg_value(i64 3, !1988, !DIExpression(), !2759)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2756
    #dbg_value(i8 97, !1995, !DIExpression(), !2756)
  store i8 97, ptr %stackalloc.i.i1, align 1, !dbg !2756
  %8 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2758
    #dbg_value(i64 4, !1988, !DIExpression(), !2759)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2756
    #dbg_value(i8 117, !1995, !DIExpression(), !2756)
  store i8 117, ptr %stackalloc.i.i1, align 1, !dbg !2756
  %9 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2758
    #dbg_value(i64 5, !1988, !DIExpression(), !2759)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2756
    #dbg_value(i8 103, !1995, !DIExpression(), !2756)
  store i8 103, ptr %stackalloc.i.i1, align 1, !dbg !2756
  %10 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2758
    #dbg_value(i64 6, !1988, !DIExpression(), !2759)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2756
    #dbg_value(i8 104, !1995, !DIExpression(), !2756)
  store i8 104, ptr %stackalloc.i.i1, align 1, !dbg !2756
  %11 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2758
    #dbg_value(i64 7, !1988, !DIExpression(), !2759)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2756
    #dbg_value(i8 116, !1995, !DIExpression(), !2756)
  store i8 116, ptr %stackalloc.i.i1, align 1, !dbg !2756
  %12 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2758
    #dbg_value(i64 8, !1988, !DIExpression(), !2759)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2756
    #dbg_value(i8 32, !1995, !DIExpression(), !2756)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2756
  %13 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2758
    #dbg_value(i64 9, !1988, !DIExpression(), !2759)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2756
    #dbg_value(i8 115, !1995, !DIExpression(), !2756)
  store i8 115, ptr %stackalloc.i.i1, align 1, !dbg !2756
  %14 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2758
    #dbg_value(i64 10, !1988, !DIExpression(), !2759)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2756
    #dbg_value(i8 105, !1995, !DIExpression(), !2756)
  store i8 105, ptr %stackalloc.i.i1, align 1, !dbg !2756
  %15 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2758
    #dbg_value(i64 11, !1988, !DIExpression(), !2759)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2756
    #dbg_value(i8 103, !1995, !DIExpression(), !2756)
  store i8 103, ptr %stackalloc.i.i1, align 1, !dbg !2756
  %16 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2758
    #dbg_value(i64 12, !1988, !DIExpression(), !2759)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2756
    #dbg_value(i8 110, !1995, !DIExpression(), !2756)
  store i8 110, ptr %stackalloc.i.i1, align 1, !dbg !2756
  %17 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2758
    #dbg_value(i64 13, !1988, !DIExpression(), !2759)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2756
    #dbg_value(i8 97, !1995, !DIExpression(), !2756)
  store i8 97, ptr %stackalloc.i.i1, align 1, !dbg !2756
  %18 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2758
    #dbg_value(i64 14, !1988, !DIExpression(), !2759)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2756
    #dbg_value(i8 108, !1995, !DIExpression(), !2756)
  store i8 108, ptr %stackalloc.i.i1, align 1, !dbg !2756
  %19 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2758
    #dbg_value(i64 15, !1988, !DIExpression(), !2759)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2756
    #dbg_value(i8 32, !1995, !DIExpression(), !2756)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2756
  %20 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2758
    #dbg_value(i64 16, !1988, !DIExpression(), !2759)
    #dbg_value(i32 %sig, !2679, !DIExpression(), !2760)
  %21 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2761
  %22 = extractvalue { i32, i1 } %21, 1, !dbg !2761
  switch i32 %sig, label %switch.next6 [
    i32 7, label %switch.body
    i32 4, label %switch.body3
    i32 11, label %switch.body5
  ], !dbg !2740

switch.body:                                      ; preds = %if.done2
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2766)
    #dbg_value(ptr @runtime.printLock, !1796, !DIExpression(), !2769)
    #dbg_value(i32 0, !1801, !DIExpression(), !2771)
    #dbg_value(i32 1, !1802, !DIExpression(), !2772)
    #dbg_value(ptr @runtime.printLock, !1807, !DIExpression(), !2773)
    #dbg_value(i32 0, !1812, !DIExpression(), !2773)
    #dbg_value(i32 1, !1813, !DIExpression(), !2773)
  br i1 %22, label %runtime.printlock.exit, label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i", !dbg !2775

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i":  ; preds = %switch.body
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2776)
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2777)
    #dbg_value(i32 2, !1751, !DIExpression(), !2779)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2780)
    #dbg_value(i32 2, !1762, !DIExpression(), !2780)
  %23 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2780
  %.not4.i.i = icmp eq i32 %23, 0, !dbg !2782
  br i1 %.not4.i.i, label %runtime.printlock.exit, label %"(*internal/futex.Futex).Wait.exit.i.i", !dbg !2775

"(*internal/futex.Futex).Wait.exit.i.i":          ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i", %"(*internal/futex.Futex).Wait.exit.i.i"
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2783)
    #dbg_value(ptr @runtime.printLock, !1825, !DIExpression(), !2784)
    #dbg_value(i32 2, !1830, !DIExpression(), !2786)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #13, !dbg !2787
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2777)
    #dbg_value(i32 2, !1751, !DIExpression(), !2779)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2780)
    #dbg_value(i32 2, !1762, !DIExpression(), !2780)
  %24 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2780
  %.not.i.i = icmp eq i32 %24, 0, !dbg !2782
  br i1 %.not.i.i, label %runtime.printlock.exit, label %"(*internal/futex.Futex).Wait.exit.i.i", !dbg !2775

runtime.printlock.exit:                           ; preds = %"(*internal/futex.Futex).Wait.exit.i.i", %switch.body, %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i"
    #dbg_value(ptr poison, !1987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2788)
    #dbg_value(i64 6, !1987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2788)
    #dbg_value(i64 0, !1988, !DIExpression(), !2789)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2790)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2791
    #dbg_value(i8 83, !1995, !DIExpression(), !2791)
  store i8 83, ptr %stackalloc.i.i5, align 1, !dbg !2791
  %25 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #13, !dbg !2792
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2793
    #dbg_value(i64 1, !1988, !DIExpression(), !2794)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2791
    #dbg_value(i8 73, !1995, !DIExpression(), !2791)
  store i8 73, ptr %stackalloc.i.i5, align 1, !dbg !2791
  %26 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #13, !dbg !2792
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2793
    #dbg_value(i64 2, !1988, !DIExpression(), !2794)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2791
    #dbg_value(i8 71, !1995, !DIExpression(), !2791)
  store i8 71, ptr %stackalloc.i.i5, align 1, !dbg !2791
  %27 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #13, !dbg !2792
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2793
    #dbg_value(i64 3, !1988, !DIExpression(), !2794)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2791
    #dbg_value(i8 66, !1995, !DIExpression(), !2791)
  store i8 66, ptr %stackalloc.i.i5, align 1, !dbg !2791
  %28 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #13, !dbg !2792
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2793
    #dbg_value(i64 4, !1988, !DIExpression(), !2794)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2791
    #dbg_value(i8 85, !1995, !DIExpression(), !2791)
  store i8 85, ptr %stackalloc.i.i5, align 1, !dbg !2791
  %29 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #13, !dbg !2792
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2793
    #dbg_value(i64 5, !1988, !DIExpression(), !2794)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2791
    #dbg_value(i8 83, !1995, !DIExpression(), !2791)
  store i8 83, ptr %stackalloc.i.i5, align 1, !dbg !2791
  %30 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #13, !dbg !2792
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2793
    #dbg_value(i64 6, !1988, !DIExpression(), !2794)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i9), !dbg !2795
    #dbg_value(i8 10, !1995, !DIExpression(), !2795)
  store i8 10, ptr %stackalloc.i.i9, align 1, !dbg !2795
  %31 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i9, i64 1) #13, !dbg !2796
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i9), !dbg !2797
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !2798)
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2802)
    #dbg_value(i32 0, !1751, !DIExpression(), !2804)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2805)
    #dbg_value(i32 0, !1762, !DIExpression(), !2805)
  %32 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2805
    #dbg_value(i32 %32, !1741, !DIExpression(), !2807)
  switch i32 %32, label %switch.done [
    i32 0, label %if.then.i.i
    i32 2, label %switch.done.sink.split
  ], !dbg !2808

if.then.i.i:                                      ; preds = %runtime.printlock.exit
  tail call fastcc void @runtime._panic(), !dbg !2809
  unreachable, !dbg !2809

switch.done.sink.split:                           ; preds = %runtime.printlock.exit, %runtime.printint32.exit, %runtime.printlock.exit27, %runtime.printlock.exit14
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #13, !dbg !2810
  br label %switch.done, !dbg !2813

switch.done:                                      ; preds = %switch.done.sink.split, %runtime.printint32.exit, %runtime.printlock.exit27, %runtime.printlock.exit14, %runtime.printlock.exit
    #dbg_value(i32 %sig, !2679, !DIExpression(), !2814)
  tail call void @raise(i32 %sig) #13, !dbg !2813
  ret void, !dbg !2815

switch.body3:                                     ; preds = %if.done2
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2816)
    #dbg_value(ptr @runtime.printLock, !1796, !DIExpression(), !2819)
    #dbg_value(i32 0, !1801, !DIExpression(), !2821)
    #dbg_value(i32 1, !1802, !DIExpression(), !2822)
    #dbg_value(ptr @runtime.printLock, !1807, !DIExpression(), !2823)
    #dbg_value(i32 0, !1812, !DIExpression(), !2823)
    #dbg_value(i32 1, !1813, !DIExpression(), !2823)
  br i1 %22, label %runtime.printlock.exit14, label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i10", !dbg !2825

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i10": ; preds = %switch.body3
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2826)
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2827)
    #dbg_value(i32 2, !1751, !DIExpression(), !2829)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2830)
    #dbg_value(i32 2, !1762, !DIExpression(), !2830)
  %33 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2830
  %.not4.i.i11 = icmp eq i32 %33, 0, !dbg !2832
  br i1 %.not4.i.i11, label %runtime.printlock.exit14, label %"(*internal/futex.Futex).Wait.exit.i.i12", !dbg !2825

"(*internal/futex.Futex).Wait.exit.i.i12":        ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i10", %"(*internal/futex.Futex).Wait.exit.i.i12"
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2833)
    #dbg_value(ptr @runtime.printLock, !1825, !DIExpression(), !2834)
    #dbg_value(i32 2, !1830, !DIExpression(), !2836)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #13, !dbg !2837
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2827)
    #dbg_value(i32 2, !1751, !DIExpression(), !2829)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2830)
    #dbg_value(i32 2, !1762, !DIExpression(), !2830)
  %34 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2830
  %.not.i.i13 = icmp eq i32 %34, 0, !dbg !2832
  br i1 %.not.i.i13, label %runtime.printlock.exit14, label %"(*internal/futex.Futex).Wait.exit.i.i12", !dbg !2825

runtime.printlock.exit14:                         ; preds = %"(*internal/futex.Futex).Wait.exit.i.i12", %switch.body3, %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i10"
    #dbg_value(ptr poison, !1987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2838)
    #dbg_value(i64 6, !1987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2838)
    #dbg_value(i64 0, !1988, !DIExpression(), !2839)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2840)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2841
    #dbg_value(i8 83, !1995, !DIExpression(), !2841)
  store i8 83, ptr %stackalloc.i.i15, align 1, !dbg !2841
  %35 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #13, !dbg !2842
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2843
    #dbg_value(i64 1, !1988, !DIExpression(), !2844)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2841
    #dbg_value(i8 73, !1995, !DIExpression(), !2841)
  store i8 73, ptr %stackalloc.i.i15, align 1, !dbg !2841
  %36 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #13, !dbg !2842
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2843
    #dbg_value(i64 2, !1988, !DIExpression(), !2844)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2841
    #dbg_value(i8 71, !1995, !DIExpression(), !2841)
  store i8 71, ptr %stackalloc.i.i15, align 1, !dbg !2841
  %37 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #13, !dbg !2842
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2843
    #dbg_value(i64 3, !1988, !DIExpression(), !2844)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2841
    #dbg_value(i8 73, !1995, !DIExpression(), !2841)
  store i8 73, ptr %stackalloc.i.i15, align 1, !dbg !2841
  %38 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #13, !dbg !2842
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2843
    #dbg_value(i64 4, !1988, !DIExpression(), !2844)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2841
    #dbg_value(i8 76, !1995, !DIExpression(), !2841)
  store i8 76, ptr %stackalloc.i.i15, align 1, !dbg !2841
  %39 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #13, !dbg !2842
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2843
    #dbg_value(i64 5, !1988, !DIExpression(), !2844)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2841
  store i8 76, ptr %stackalloc.i.i15, align 1, !dbg !2841
  %40 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #13, !dbg !2842
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2843
    #dbg_value(i64 6, !1988, !DIExpression(), !2844)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i19), !dbg !2845
    #dbg_value(i8 10, !1995, !DIExpression(), !2845)
  store i8 10, ptr %stackalloc.i.i19, align 1, !dbg !2845
  %41 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i19, i64 1) #13, !dbg !2846
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i19), !dbg !2847
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !2848)
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2851)
    #dbg_value(i32 0, !1751, !DIExpression(), !2853)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2854)
    #dbg_value(i32 0, !1762, !DIExpression(), !2854)
  %42 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2854
    #dbg_value(i32 %42, !1741, !DIExpression(), !2856)
  switch i32 %42, label %switch.done [
    i32 0, label %if.then.i.i21
    i32 2, label %switch.done.sink.split
  ], !dbg !2857

if.then.i.i21:                                    ; preds = %runtime.printlock.exit14
  tail call fastcc void @runtime._panic(), !dbg !2858
  unreachable, !dbg !2858

switch.body5:                                     ; preds = %if.done2
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2859)
    #dbg_value(ptr @runtime.printLock, !1796, !DIExpression(), !2862)
    #dbg_value(i32 0, !1801, !DIExpression(), !2864)
    #dbg_value(i32 1, !1802, !DIExpression(), !2865)
    #dbg_value(ptr @runtime.printLock, !1807, !DIExpression(), !2866)
    #dbg_value(i32 0, !1812, !DIExpression(), !2866)
    #dbg_value(i32 1, !1813, !DIExpression(), !2866)
  br i1 %22, label %runtime.printlock.exit27, label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i23", !dbg !2868

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i23": ; preds = %switch.body5
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2869)
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2870)
    #dbg_value(i32 2, !1751, !DIExpression(), !2872)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2873)
    #dbg_value(i32 2, !1762, !DIExpression(), !2873)
  %43 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2873
  %.not4.i.i24 = icmp eq i32 %43, 0, !dbg !2875
  br i1 %.not4.i.i24, label %runtime.printlock.exit27, label %"(*internal/futex.Futex).Wait.exit.i.i25", !dbg !2868

"(*internal/futex.Futex).Wait.exit.i.i25":        ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i23", %"(*internal/futex.Futex).Wait.exit.i.i25"
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2876)
    #dbg_value(ptr @runtime.printLock, !1825, !DIExpression(), !2877)
    #dbg_value(i32 2, !1830, !DIExpression(), !2879)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #13, !dbg !2880
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2870)
    #dbg_value(i32 2, !1751, !DIExpression(), !2872)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2873)
    #dbg_value(i32 2, !1762, !DIExpression(), !2873)
  %44 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2873
  %.not.i.i26 = icmp eq i32 %44, 0, !dbg !2875
  br i1 %.not.i.i26, label %runtime.printlock.exit27, label %"(*internal/futex.Futex).Wait.exit.i.i25", !dbg !2868

runtime.printlock.exit27:                         ; preds = %"(*internal/futex.Futex).Wait.exit.i.i25", %switch.body5, %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i23"
    #dbg_value(ptr poison, !1987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2881)
    #dbg_value(i64 7, !1987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2881)
    #dbg_value(i64 0, !1988, !DIExpression(), !2882)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2883)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2884
    #dbg_value(i8 83, !1995, !DIExpression(), !2884)
  store i8 83, ptr %stackalloc.i.i28, align 1, !dbg !2884
  %45 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #13, !dbg !2885
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2886
    #dbg_value(i64 1, !1988, !DIExpression(), !2887)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2884
    #dbg_value(i8 73, !1995, !DIExpression(), !2884)
  store i8 73, ptr %stackalloc.i.i28, align 1, !dbg !2884
  %46 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #13, !dbg !2885
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2886
    #dbg_value(i64 2, !1988, !DIExpression(), !2887)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2884
    #dbg_value(i8 71, !1995, !DIExpression(), !2884)
  store i8 71, ptr %stackalloc.i.i28, align 1, !dbg !2884
  %47 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #13, !dbg !2885
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2886
    #dbg_value(i64 3, !1988, !DIExpression(), !2887)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2884
    #dbg_value(i8 83, !1995, !DIExpression(), !2884)
  store i8 83, ptr %stackalloc.i.i28, align 1, !dbg !2884
  %48 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #13, !dbg !2885
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2886
    #dbg_value(i64 4, !1988, !DIExpression(), !2887)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2884
    #dbg_value(i8 69, !1995, !DIExpression(), !2884)
  store i8 69, ptr %stackalloc.i.i28, align 1, !dbg !2884
  %49 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #13, !dbg !2885
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2886
    #dbg_value(i64 5, !1988, !DIExpression(), !2887)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2884
    #dbg_value(i8 71, !1995, !DIExpression(), !2884)
  store i8 71, ptr %stackalloc.i.i28, align 1, !dbg !2884
  %50 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #13, !dbg !2885
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2886
    #dbg_value(i64 6, !1988, !DIExpression(), !2887)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2884
    #dbg_value(i8 86, !1995, !DIExpression(), !2884)
  store i8 86, ptr %stackalloc.i.i28, align 1, !dbg !2884
  %51 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #13, !dbg !2885
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2886
    #dbg_value(i64 7, !1988, !DIExpression(), !2887)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i32), !dbg !2888
    #dbg_value(i8 10, !1995, !DIExpression(), !2888)
  store i8 10, ptr %stackalloc.i.i32, align 1, !dbg !2888
  %52 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i32, i64 1) #13, !dbg !2889
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i32), !dbg !2890
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !2891)
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2894)
    #dbg_value(i32 0, !1751, !DIExpression(), !2896)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2897)
    #dbg_value(i32 0, !1762, !DIExpression(), !2897)
  %53 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2897
    #dbg_value(i32 %53, !1741, !DIExpression(), !2899)
  switch i32 %53, label %switch.done [
    i32 0, label %if.then.i.i34
    i32 2, label %switch.done.sink.split
  ], !dbg !2900

if.then.i.i34:                                    ; preds = %runtime.printlock.exit27
  tail call fastcc void @runtime._panic(), !dbg !2901
  unreachable, !dbg !2901

switch.next6:                                     ; preds = %if.done2
    #dbg_value(i32 %sig, !2679, !DIExpression(), !2902)
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2903)
    #dbg_value(ptr @runtime.printLock, !1796, !DIExpression(), !2906)
    #dbg_value(i32 0, !1801, !DIExpression(), !2908)
    #dbg_value(i32 1, !1802, !DIExpression(), !2909)
    #dbg_value(ptr @runtime.printLock, !1807, !DIExpression(), !2910)
    #dbg_value(i32 0, !1812, !DIExpression(), !2910)
    #dbg_value(i32 1, !1813, !DIExpression(), !2910)
  br i1 %22, label %runtime.printlock.exit40, label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i36", !dbg !2912

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i36": ; preds = %switch.next6
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2913)
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2914)
    #dbg_value(i32 2, !1751, !DIExpression(), !2916)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2917)
    #dbg_value(i32 2, !1762, !DIExpression(), !2917)
  %54 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2917
  %.not4.i.i37 = icmp eq i32 %54, 0, !dbg !2919
  br i1 %.not4.i.i37, label %runtime.printlock.exit40, label %"(*internal/futex.Futex).Wait.exit.i.i38", !dbg !2912

"(*internal/futex.Futex).Wait.exit.i.i38":        ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i36", %"(*internal/futex.Futex).Wait.exit.i.i38"
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2920)
    #dbg_value(ptr @runtime.printLock, !1825, !DIExpression(), !2921)
    #dbg_value(i32 2, !1830, !DIExpression(), !2923)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #13, !dbg !2924
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2914)
    #dbg_value(i32 2, !1751, !DIExpression(), !2916)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2917)
    #dbg_value(i32 2, !1762, !DIExpression(), !2917)
  %55 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2917
  %.not.i.i39 = icmp eq i32 %55, 0, !dbg !2919
  br i1 %.not.i.i39, label %runtime.printlock.exit40, label %"(*internal/futex.Futex).Wait.exit.i.i38", !dbg !2912

runtime.printlock.exit40:                         ; preds = %"(*internal/futex.Futex).Wait.exit.i.i38", %switch.next6, %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i36"
    #dbg_value(i32 %sig, !2707, !DIExpression(), !2925)
  %56 = icmp slt i32 %sig, 0, !dbg !2926
  br i1 %56, label %if.then.i, label %if.done.i, !dbg !2927

if.then.i:                                        ; preds = %runtime.printlock.exit40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i41), !dbg !2928
    #dbg_value(i8 45, !1995, !DIExpression(), !2928)
  store i8 45, ptr %stackalloc.i.i41, align 1, !dbg !2928
  %57 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i41, i64 1) #13, !dbg !2929
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i41), !dbg !2930
    #dbg_value(i32 %sig, !2707, !DIExpression(), !2931)
  %58 = sub i32 0, %sig, !dbg !2932
    #dbg_value(i32 %58, !2707, !DIExpression(), !2933)
  br label %if.done.i, !dbg !2927

if.done.i:                                        ; preds = %if.then.i, %runtime.printlock.exit40
  %59 = phi i32 [ %sig, %runtime.printlock.exit40 ], [ %58, %if.then.i ], !dbg !2934
    #dbg_value(i32 %59, !2707, !DIExpression(), !2935)
    #dbg_value(i32 %59, !2703, !DIExpression(), !2936)
  %60 = zext i32 %59 to i64, !dbg !2937
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %digits.i.i.i), !dbg !2710
    #dbg_value(i64 19, !2694, !DIExpression(), !2938)
    #dbg_value(i64 19, !2695, !DIExpression(), !2939)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %digits.i.i.i, i8 0, i64 20, i1 false), !dbg !2710
  br label %for.body.i.i.i, !dbg !2940

for.loop1.preheader.i.i.i:                        ; preds = %for.body.i.i.i
    #dbg_value(i64 %spec.select.i.i.i, !2697, !DIExpression(), !2941)
  %61 = icmp slt i64 %spec.select.i.i.i, 20, !dbg !2942
  br i1 %61, label %for.body2.i.i.i, label %runtime.printint32.exit, !dbg !2940

for.body.i.i.i:                                   ; preds = %for.body.i.i.i, %if.done.i
  %62 = phi i64 [ 19, %if.done.i ], [ %70, %for.body.i.i.i ]
  %63 = phi i64 [ 19, %if.done.i ], [ %spec.select.i.i.i, %for.body.i.i.i ]
  %64 = phi i64 [ %60, %if.done.i ], [ %69, %for.body.i.i.i ]
    #dbg_value(i64 %62, !2695, !DIExpression(), !2943)
    #dbg_value(i64 %64, !2693, !DIExpression(), !2944)
  %65 = urem i64 %64, 10, !dbg !2945
  %66 = trunc nuw nsw i64 %65 to i8, !dbg !2946
  %67 = or disjoint i8 %66, 48, !dbg !2946
    #dbg_value(i8 %67, !2696, !DIExpression(), !2947)
  %68 = getelementptr inbounds nuw [20 x i8], ptr %digits.i.i.i, i64 0, i64 %62, !dbg !2948
  store i8 %67, ptr %68, align 1, !dbg !2948
  %.not.i.i.i = icmp eq i64 %65, 0, !dbg !2949
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 %63, i64 %62, !dbg !2940
  %69 = udiv i64 %64, 10, !dbg !2950
    #dbg_value(i64 %69, !2693, !DIExpression(), !2950)
  %70 = add nsw i64 %62, -1, !dbg !2951
    #dbg_value(i64 %70, !2695, !DIExpression(), !2943)
  %.not23.i.i.i = icmp eq i64 %62, 0, !dbg !2952
  br i1 %.not23.i.i.i, label %for.loop1.preheader.i.i.i, label %for.body.i.i.i, !dbg !2940

for.body2.i.i.i:                                  ; preds = %for.loop1.preheader.i.i.i, %for.body2.i.i.i
  %71 = phi i64 [ %75, %for.body2.i.i.i ], [ %spec.select.i.i.i, %for.loop1.preheader.i.i.i ]
    #dbg_value(i64 %71, !2697, !DIExpression(), !2953)
  %72 = getelementptr inbounds nuw [20 x i8], ptr %digits.i.i.i, i64 0, i64 %71, !dbg !2954
  %73 = load i8, ptr %72, align 1, !dbg !2954
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i.i.i), !dbg !2955
    #dbg_value(i8 %73, !1995, !DIExpression(), !2955)
  store i8 %73, ptr %stackalloc.i.i.i.i, align 1, !dbg !2955
  %74 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i.i.i, i64 1) #13, !dbg !2956
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i.i.i), !dbg !2957
  %75 = add i64 %71, 1, !dbg !2958
    #dbg_value(i64 %75, !2697, !DIExpression(), !2941)
  %exitcond.not.i.i.i = icmp eq i64 %75, 20, !dbg !2942
  br i1 %exitcond.not.i.i.i, label %runtime.printint32.exit, label %for.body2.i.i.i, !dbg !2940

runtime.printint32.exit:                          ; preds = %for.body2.i.i.i, %for.loop1.preheader.i.i.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %digits.i.i.i), !dbg !2959
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i42), !dbg !2960
    #dbg_value(i8 10, !1995, !DIExpression(), !2960)
  store i8 10, ptr %stackalloc.i.i42, align 1, !dbg !2960
  %76 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i42, i64 1) #13, !dbg !2961
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i42), !dbg !2962
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !2963)
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2966)
    #dbg_value(i32 0, !1751, !DIExpression(), !2968)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2969)
    #dbg_value(i32 0, !1762, !DIExpression(), !2969)
  %77 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2969
    #dbg_value(i32 %77, !1741, !DIExpression(), !2971)
  switch i32 %77, label %switch.done [
    i32 0, label %if.then.i.i44
    i32 2, label %switch.done.sink.split
  ], !dbg !2972

if.then.i.i44:                                    ; preds = %runtime.printint32.exit
  tail call fastcc void @runtime._panic(), !dbg !2973
  unreachable, !dbg !2973

for.body.i47:                                     ; preds = %entry, %for.body.i47
  %78 = phi i64 [ %82, %for.body.i47 ], [ 0, %entry ]
    #dbg_value(i64 %78, !1988, !DIExpression(), !2974)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2975)
  %79 = getelementptr inbounds nuw i8, ptr @"runtime$string.55", i64 %78, !dbg !2976
  %80 = load i8, ptr %79, align 1, !dbg !2976
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i46), !dbg !2977
    #dbg_value(i8 %80, !1995, !DIExpression(), !2977)
  store i8 %80, ptr %stackalloc.i.i46, align 1, !dbg !2977
  %81 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i46, i64 1) #13, !dbg !2978
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i46), !dbg !2979
  %82 = add nuw nsw i64 %78, 1, !dbg !2980
    #dbg_value(i64 %82, !1988, !DIExpression(), !2981)
  %exitcond.not.i48 = icmp eq i64 %82, 20, !dbg !2982
  br i1 %exitcond.not.i48, label %if.done2, label %for.body.i47, !dbg !2983
}

declare void @raise(i32) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_signal_handler(i32 %s) local_unnamed_addr #1 !dbg !2984 {
entry:
    #dbg_value(i32 %s, !2986, !DIExpression(), !2990)
  %shift.overflow = icmp ugt i32 %s, 31
  %0 = shl nuw i32 1, %s
  %shift.result = select i1 %shift.overflow, i32 0, i32 %0
  br label %for.body, !dbg !2991

for.body:                                         ; preds = %for.body, %entry
    #dbg_value(i32 %s, !2986, !DIExpression(), !2992)
    #dbg_value(i32 %shift.result, !2987, !DIExpression(), !2993)
    #dbg_value(ptr @runtime.receivedSignals, !1923, !DIExpression(), !2994)
    #dbg_value(ptr @runtime.receivedSignals, !1923, !DIExpression(), !2996)
    #dbg_value(ptr @runtime.receivedSignals, !1930, !DIExpression(), !2997)
  %1 = load atomic i32, ptr @runtime.receivedSignals seq_cst, align 4, !dbg !2997
    #dbg_value(i32 %1, !2988, !DIExpression(), !2999)
    #dbg_value(i32 %1, !2988, !DIExpression(), !3000)
    #dbg_value(i32 %1, !2988, !DIExpression(), !3001)
    #dbg_value(i32 %shift.result, !2987, !DIExpression(), !3002)
  %2 = or i32 %1, %shift.result, !dbg !3003
    #dbg_value(ptr @runtime.receivedSignals, !1796, !DIExpression(), !3004)
    #dbg_value(i32 %1, !1801, !DIExpression(), !3004)
    #dbg_value(i32 %2, !1802, !DIExpression(), !3004)
    #dbg_value(ptr @runtime.receivedSignals, !1796, !DIExpression(), !3006)
    #dbg_value(i32 %1, !1801, !DIExpression(), !3007)
    #dbg_value(i32 %2, !1802, !DIExpression(), !3008)
    #dbg_value(ptr @runtime.receivedSignals, !1807, !DIExpression(), !3009)
    #dbg_value(i32 %1, !1812, !DIExpression(), !3009)
    #dbg_value(i32 %2, !1813, !DIExpression(), !3009)
  %3 = cmpxchg ptr @runtime.receivedSignals, i32 %1, i32 %2 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3009
  %4 = extractvalue { i32, i1 } %3, 1, !dbg !3009
    #dbg_value(i1 %4, !2989, !DIExpression(), !3011)
    #dbg_value(i1 %4, !2989, !DIExpression(), !3012)
  br i1 %4, label %if.then, label %for.body, !dbg !2991

if.then:                                          ; preds = %for.body
    #dbg_value(ptr @runtime.signalFutex, !1744, !DIExpression(), !3013)
    #dbg_value(i32 1, !1751, !DIExpression(), !3013)
    #dbg_value(ptr @runtime.signalFutex, !1744, !DIExpression(), !3015)
    #dbg_value(i32 1, !1751, !DIExpression(), !3016)
    #dbg_value(ptr @runtime.signalFutex, !1755, !DIExpression(), !3017)
    #dbg_value(i32 1, !1762, !DIExpression(), !3017)
  %5 = atomicrmw xchg ptr @runtime.signalFutex, i32 1 syncscope("singlethread") seq_cst, align 4, !dbg !3017
  %6 = icmp eq i32 %5, 0, !dbg !3019
  br i1 %6, label %if.then1, label %if.done, !dbg !2991

if.then1:                                         ; preds = %if.then
    #dbg_value(ptr @runtime.signalFutex, !1917, !DIExpression(), !3020)
    #dbg_value(ptr @runtime.signalFutex, !1917, !DIExpression(), !3022)
  tail call void @tinygo_futex_wake_all(ptr nonnull @runtime.signalFutex) #13, !dbg !3023
  br label %if.done, !dbg !2991

if.done:                                          ; preds = %if.then1, %if.then
  ret void, !dbg !3024
}

; Function Attrs: nofree nounwind uwtable(sync)
define i64 @f_gold(i64 %num, i64 %divisor) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %num, !3030, !DIExpression(), !3032)
    #dbg_value(i64 %divisor, !3031, !DIExpression(), !3032)
    #dbg_value(i64 %num, !3030, !DIExpression(), !3033)
    #dbg_value(i64 %divisor, !3031, !DIExpression(), !3034)
    #dbg_value(i64 %num, !3030, !DIExpression(), !3035)
    #dbg_value(i64 %divisor, !3031, !DIExpression(), !3036)
  %0 = icmp eq i64 %divisor, 0, !dbg !3037
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !3037

divbyzero.next:                                   ; preds = %entry
  %1 = icmp eq i64 %divisor, -1, !dbg !3037
  %2 = icmp eq i64 %num, -9223372036854775808, !dbg !3037
  %3 = and i1 %2, %1, !dbg !3037
  %4 = select i1 %3, i64 1, i64 %divisor, !dbg !3037
  %5 = sdiv i64 %num, %4, !dbg !3037
  %6 = mul i64 %5, %divisor, !dbg !3038
  %7 = sub i64 %num, %6, !dbg !3039
  ret i64 %7, !dbg !3040

divbyzero.throw:                                  ; preds = %entry
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3037
  unreachable, !dbg !3037
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { cold nofree noreturn nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nofree nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #5 = { cold nofree noreturn "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #6 = { nofree "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #8 = { noreturn nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #10 = { noinline nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }

!llvm.dbg.cu = !{!143, !145, !186, !187, !188, !210, !487, !506, !703, !719, !1447, !1458, !1491, !1492, !1731}
!llvm.ident = !{!1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732}
!llvm.module.flags = !{!1733, !1734}

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
!86 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!87 = !DIFile(filename: "<Go type>", directory: "")
!88 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !89)
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !91, size: 8, align: 8)
!91 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !9, size: 64, align: 64, offset: 64)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !96)
!96 = !{!90, !97, !99}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !98, size: 16, align: 16, offset: 16)
!98 = !DIBasicType(name: "uint16", size: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !9, size: 64, align: 64, offset: 64)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !102, line: 78, type: !103, isLocal: true, isDefinition: true)
!102 = !DIFile(filename: "panic.go", directory: "/usr/local/lib/tinygo/src/runtime")
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 56, align: 8, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 7, lowerBound: 0)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !102, line: 99, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 192, align: 8, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 24, lowerBound: 0)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !102, line: 101, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 16, align: 8, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 2, lowerBound: 0)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !102, line: 184, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 184, align: 8, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 23, lowerBound: 0)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !102, line: 227, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 112, align: 8, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 14, lowerBound: 0)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "runtime.stackTop", linkageName: "runtime.stackTop", scope: !128, file: !128, line: 75, type: !21, isLocal: false, isDefinition: true, align: 64)
!128 = !DIFile(filename: "runtime_unix.go", directory: "/usr/local/lib/tinygo/src/runtime")
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "runtime.main_argv", linkageName: "runtime.main_argv", scope: !128, file: !128, line: 106, type: !131, isLocal: false, isDefinition: true, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64, dwarfAddressSpace: 0)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !128, line: 155, type: !108, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !128, line: 158, type: !67, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "runtime.signalFutex", linkageName: "runtime.signalFutex", scope: !128, file: !128, line: 354, type: !33, isLocal: false, isDefinition: true, align: 32)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "runtime.receivedSignals", linkageName: "runtime.receivedSignals", scope: !128, file: !128, line: 358, type: !37, isLocal: false, isDefinition: true, align: 32)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "runtime.printLock", linkageName: "runtime.printLock", scope: !142, file: !142, line: 136, type: !64, isLocal: false, isDefinition: true, align: 32)
!142 = !DIFile(filename: "scheduler_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!144 = !DIFile(filename: "<unknown>", directory: "")
!145 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !146)
!146 = !{!147, !93, !85, !153, !158, !161, !166, !171, !176, !181}
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !149, line: 1, type: !150, isLocal: true, isDefinition: true)
!149 = !DIFile(filename: "value.go", directory: "/usr/local/go/src/sync/atomic")
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 424, align: 8, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 53, lowerBound: 0)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !149, line: 1, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 480, align: 8, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 60, lowerBound: 0)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "sync/atomic.firstStoreInProgress", linkageName: "sync/atomic.firstStoreInProgress", scope: !149, file: !149, line: 42, type: !160, isLocal: false, isDefinition: true, align: 8)
!160 = !DIBasicType(name: "byte", size: 8, encoding: DW_ATE_unsigned)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !149, line: 1, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 560, align: 8, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 70, lowerBound: 0)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !149, line: 1, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 336, align: 8, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 42, lowerBound: 0)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !149, line: 1, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 472, align: 8, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 59, lowerBound: 0)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !149, line: 1, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 328, align: 8, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 41, lowerBound: 0)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !149, line: 1, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 464, align: 8, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 58, lowerBound: 0)
!186 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!188 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !189)
!189 = !{!190, !196, !198, !203, !208}
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !192, line: 12, type: !193, isLocal: true, isDefinition: true)
!192 = !DIFile(filename: "itoa.go", directory: "/usr/local/lib/tinygo/src/internal/itoa")
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, align: 8, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 1, lowerBound: 0)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !192, line: 20, type: !193, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !192, line: 40, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 24, align: 8, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 3, lowerBound: 0)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !192, line: 46, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, align: 8, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 16, lowerBound: 0)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !192, line: 51, type: !205, isLocal: true, isDefinition: true)
!210 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !211)
!211 = !{!212, !215, !263, !271, !286, !296, !302, !311, !337, !344, !350, !370, !375, !380, !382, !384, !386, !388, !390, !392, !394, !399, !401, !406, !408, !411, !413, !415, !417, !419, !424, !429, !431, !436, !438, !440, !445, !447, !449, !451, !453, !455, !457, !459, !461, !466, !468, !470, !472, !478, !480, !482}
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "internal/cpu.CacheLineSize", linkageName: "internal/cpu.CacheLineSize", scope: !214, file: !214, line: 17, type: !21, isLocal: false, isDefinition: true, align: 64)
!214 = !DIFile(filename: "cpu.go", directory: "/usr/local/go/src/internal/cpu")
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !214, file: !214, line: 23, type: !217, isLocal: false, isDefinition: true, align: 8)
!217 = !DICompositeType(tag: DW_TAG_structure_type, size: 1304, align: 8, elements: !218)
!218 = !{!219, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !220, size: 512, align: 8)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.CacheLinePad", baseType: !221)
!221 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 8, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !224, size: 512, align: 8)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 512, align: 8, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 64, lowerBound: 0)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !47, size: 8, align: 8, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "HasADX", baseType: !47, size: 8, align: 8, offset: 520)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX", baseType: !47, size: 8, align: 8, offset: 528)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVXVNNI", baseType: !47, size: 8, align: 8, offset: 536)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX2", baseType: !47, size: 8, align: 8, offset: 544)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512", baseType: !47, size: 8, align: 8, offset: 552)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512F", baseType: !47, size: 8, align: 8, offset: 560)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512CD", baseType: !47, size: 8, align: 8, offset: 568)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BW", baseType: !47, size: 8, align: 8, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512DQ", baseType: !47, size: 8, align: 8, offset: 584)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VL", baseType: !47, size: 8, align: 8, offset: 592)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512GFNI", baseType: !47, size: 8, align: 8, offset: 600)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VAES", baseType: !47, size: 8, align: 8, offset: 608)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VNNI", baseType: !47, size: 8, align: 8, offset: 616)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI", baseType: !47, size: 8, align: 8, offset: 624)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI2", baseType: !47, size: 8, align: 8, offset: 632)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BITALG", baseType: !47, size: 8, align: 8, offset: 640)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPOPCNTDQ", baseType: !47, size: 8, align: 8, offset: 648)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPCLMULQDQ", baseType: !47, size: 8, align: 8, offset: 656)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI1", baseType: !47, size: 8, align: 8, offset: 664)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI2", baseType: !47, size: 8, align: 8, offset: 672)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "HasERMS", baseType: !47, size: 8, align: 8, offset: 680)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "HasFSRM", baseType: !47, size: 8, align: 8, offset: 688)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "HasFMA", baseType: !47, size: 8, align: 8, offset: 696)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "HasGFNI", baseType: !47, size: 8, align: 8, offset: 704)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "HasOSXSAVE", baseType: !47, size: 8, align: 8, offset: 712)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "HasPCLMULQDQ", baseType: !47, size: 8, align: 8, offset: 720)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "HasPOPCNT", baseType: !47, size: 8, align: 8, offset: 728)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "HasRDTSCP", baseType: !47, size: 8, align: 8, offset: 736)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA", baseType: !47, size: 8, align: 8, offset: 744)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE3", baseType: !47, size: 8, align: 8, offset: 752)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSSE3", baseType: !47, size: 8, align: 8, offset: 760)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE41", baseType: !47, size: 8, align: 8, offset: 768)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE42", baseType: !47, size: 8, align: 8, offset: 776)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "HasVAES", baseType: !47, size: 8, align: 8, offset: 784)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !220, size: 512, align: 8, offset: 792)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "internal/cpu.ARM", linkageName: "internal/cpu.ARM", scope: !214, file: !214, line: 65, type: !265, isLocal: false, isDefinition: true, align: 8)
!265 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !266)
!266 = !{!219, !267, !268, !269, !270}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "HasVFPv4", baseType: !47, size: 8, align: 8, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "HasIDIVA", baseType: !47, size: 8, align: 8, offset: 520)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "HasV7Atomics", baseType: !47, size: 8, align: 8, offset: 528)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !220, size: 512, align: 8, offset: 536)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "internal/cpu.ARM64", linkageName: "internal/cpu.ARM64", scope: !214, file: !214, line: 75, type: !273, isLocal: false, isDefinition: true, align: 8)
!273 = !DICompositeType(tag: DW_TAG_structure_type, size: 1112, align: 8, elements: !274)
!274 = !{!219, !227, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "HasPMULL", baseType: !47, size: 8, align: 8, offset: 520)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !47, size: 8, align: 8, offset: 528)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA2", baseType: !47, size: 8, align: 8, offset: 536)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !47, size: 8, align: 8, offset: 544)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !47, size: 8, align: 8, offset: 552)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !47, size: 8, align: 8, offset: 560)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "HasATOMICS", baseType: !47, size: 8, align: 8, offset: 568)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "HasCPUID", baseType: !47, size: 8, align: 8, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "HasDIT", baseType: !47, size: 8, align: 8, offset: 584)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "IsNeoverse", baseType: !47, size: 8, align: 8, offset: 592)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !220, size: 512, align: 8, offset: 600)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(name: "internal/cpu.Loong64", linkageName: "internal/cpu.Loong64", scope: !214, file: !214, line: 93, type: !288, isLocal: false, isDefinition: true, align: 8)
!288 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !289)
!289 = !{!219, !290, !291, !292, !293, !294, !295}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "HasLSX", baseType: !47, size: 8, align: 8, offset: 512)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "HasLASX", baseType: !47, size: 8, align: 8, offset: 520)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !47, size: 8, align: 8, offset: 528)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAMCAS", baseType: !47, size: 8, align: 8, offset: 536)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAM_BH", baseType: !47, size: 8, align: 8, offset: 544)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !220, size: 512, align: 8, offset: 552)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "internal/cpu.MIPS64X", linkageName: "internal/cpu.MIPS64X", scope: !214, file: !214, line: 103, type: !298, isLocal: false, isDefinition: true, align: 8)
!298 = !DICompositeType(tag: DW_TAG_structure_type, size: 1032, align: 8, elements: !299)
!299 = !{!219, !300, !301}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !47, size: 8, align: 8, offset: 512)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !220, size: 512, align: 8, offset: 520)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "internal/cpu.PPC64", linkageName: "internal/cpu.PPC64", scope: !214, file: !214, line: 114, type: !304, isLocal: false, isDefinition: true, align: 8)
!304 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !305)
!305 = !{!219, !306, !307, !308, !309, !310, !295}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "HasDARN", baseType: !47, size: 8, align: 8, offset: 512)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "HasSCV", baseType: !47, size: 8, align: 8, offset: 520)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER8", baseType: !47, size: 8, align: 8, offset: 528)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER9", baseType: !47, size: 8, align: 8, offset: 536)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER10", baseType: !47, size: 8, align: 8, offset: 544)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "internal/cpu.S390X", linkageName: "internal/cpu.S390X", scope: !214, file: !214, line: 124, type: !313, isLocal: false, isDefinition: true, align: 8)
!313 = !DICompositeType(tag: DW_TAG_structure_type, size: 1192, align: 8, elements: !314)
!314 = !{!219, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "HasZARCH", baseType: !47, size: 8, align: 8, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "HasSTFLE", baseType: !47, size: 8, align: 8, offset: 520)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "HasLDISP", baseType: !47, size: 8, align: 8, offset: 528)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "HasEIMM", baseType: !47, size: 8, align: 8, offset: 536)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "HasDFP", baseType: !47, size: 8, align: 8, offset: 544)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "HasETF3EH", baseType: !47, size: 8, align: 8, offset: 552)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !47, size: 8, align: 8, offset: 560)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !47, size: 8, align: 8, offset: 568)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCBC", baseType: !47, size: 8, align: 8, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCTR", baseType: !47, size: 8, align: 8, offset: 584)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESGCM", baseType: !47, size: 8, align: 8, offset: 592)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "HasGHASH", baseType: !47, size: 8, align: 8, offset: 600)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !47, size: 8, align: 8, offset: 608)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA256", baseType: !47, size: 8, align: 8, offset: 616)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !47, size: 8, align: 8, offset: 624)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !47, size: 8, align: 8, offset: 632)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "HasVX", baseType: !47, size: 8, align: 8, offset: 640)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "HasVXE", baseType: !47, size: 8, align: 8, offset: 648)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "HasKDSA", baseType: !47, size: 8, align: 8, offset: 656)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "HasECDSA", baseType: !47, size: 8, align: 8, offset: 664)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "HasEDDSA", baseType: !47, size: 8, align: 8, offset: 672)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !220, size: 512, align: 8, offset: 680)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "internal/cpu.RISCV64", linkageName: "internal/cpu.RISCV64", scope: !214, file: !214, line: 154, type: !339, isLocal: false, isDefinition: true, align: 8)
!339 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !340)
!340 = !{!219, !341, !342, !343, !270}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "HasFastMisaligned", baseType: !47, size: 8, align: 8, offset: 512)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "HasV", baseType: !47, size: 8, align: 8, offset: 520)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "HasZbb", baseType: !47, size: 8, align: 8, offset: 528)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "internal/cpu.doDerived", linkageName: "internal/cpu.doDerived", scope: !214, file: !214, line: 174, type: !346, isLocal: false, isDefinition: true, align: 64)
!346 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "context", baseType: !9, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "fn", baseType: !9, size: 64, align: 64, offset: 64)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "internal/cpu.options", linkageName: "internal/cpu.options", scope: !214, file: !214, line: 192, type: !352, isLocal: false, isDefinition: true, align: 64)
!352 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]internal/cpu.option", size: 192, align: 64, elements: !353)
!353 = !{!354, !364, !369}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64, dwarfAddressSpace: 0)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.option", baseType: !357)
!357 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !358)
!358 = !{!359, !365, !367, !368}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "Name", baseType: !360, size: 128, align: 64)
!360 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", size: 128, align: 64, elements: !361)
!361 = !{!362, !364}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64, dwarfAddressSpace: 0)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "len", baseType: !21, size: 64, align: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "Feature", baseType: !366, size: 64, align: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64, dwarfAddressSpace: 0)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "Specified", baseType: !47, size: 8, align: 8, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "Enable", baseType: !47, size: 8, align: 8, offset: 200)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "cap", baseType: !21, size: 64, align: 64, offset: 128)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !214, line: 218, type: !372, isLocal: true, isDefinition: true)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, align: 8, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 4, lowerBound: 0)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !214, line: 223, type: !377, isLocal: true, isDefinition: true)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 264, align: 8, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 33, lowerBound: 0)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !214, line: 223, type: !113, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !214, line: 230, type: !113, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !214, line: 239, type: !200, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !214, line: 255, type: !55, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !214, line: 255, type: !113, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !214, line: 232, type: !200, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !214, line: 235, type: !205, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !214, line: 235, type: !396, isLocal: true, isDefinition: true)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, align: 8, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 32, lowerBound: 0)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !214, line: 235, type: !113, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !214, line: 264, type: !403, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 200, align: 8, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 25, lowerBound: 0)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !214, line: 264, type: !118, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "internal/cpu.maxExtendedFunctionInformation", linkageName: "internal/cpu.maxExtendedFunctionInformation", scope: !410, file: !410, line: 69, type: !43, isLocal: false, isDefinition: true, align: 32)
!410 = !DIFile(filename: "cpu_x86.go", directory: "/usr/local/go/src/internal/cpu")
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !410, line: 73, type: !200, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !410, line: 74, type: !200, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !410, line: 75, type: !372, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !410, line: 76, type: !372, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !410, line: 77, type: !421, isLocal: true, isDefinition: true)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 72, align: 8, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 9, lowerBound: 0)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !410, line: 78, type: !426, isLocal: true, isDefinition: true)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 48, align: 8, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 6, lowerBound: 0)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !410, line: 79, type: !200, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !410, line: 80, type: !433, isLocal: true, isDefinition: true)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 80, align: 8, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 10, lowerBound: 0)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !410, line: 87, type: !426, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !410, line: 88, type: !372, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !410, line: 89, type: !442, isLocal: true, isDefinition: true)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 40, align: 8, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 5, lowerBound: 0)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !410, line: 90, type: !442, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !410, line: 91, type: !442, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !410, line: 97, type: !200, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !410, line: 98, type: !372, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !410, line: 99, type: !372, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !410, line: 100, type: !372, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !410, line: 101, type: !200, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !410, line: 107, type: !103, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !410, line: 108, type: !463, isLocal: true, isDefinition: true)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, align: 8, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 8, lowerBound: 0)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !410, line: 109, type: !463, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !410, line: 110, type: !463, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !410, line: 111, type: !463, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !474, line: 1, type: !475, isLocal: true, isDefinition: true)
!474 = !DIFile(filename: "datacache_x86.go", directory: "/usr/local/go/src/internal/cpu")
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 104, align: 8, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 13, lowerBound: 0)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !474, line: 1, type: !484, isLocal: true, isDefinition: true)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 664, align: 8, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 83, lowerBound: 0)
!487 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !488)
!488 = !{!489, !493, !495, !504}
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(name: "math/bits.deBruijn32tab", linkageName: "math/bits.deBruijn32tab", scope: !491, file: !491, line: 44, type: !492, isLocal: false, isDefinition: true, align: 8)
!491 = !DIFile(filename: "bits.go", directory: "/usr/local/go/src/math/bits")
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 256, align: 8, elements: !397)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "math/bits.deBruijn64tab", linkageName: "math/bits.deBruijn64tab", scope: !491, file: !491, line: 51, type: !224, isLocal: false, isDefinition: true, align: 8)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "math/bits.overflowError", linkageName: "runtime.overflowError", scope: !497, file: !497, line: 12, type: !498, isLocal: false, isDefinition: true, align: 64)
!497 = !DIFile(filename: "bits_errors.go", directory: "/usr/local/go/src/math/bits")
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._interface", baseType: !500)
!500 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "typecode", baseType: !9, size: 64, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "value", baseType: !9, size: 64, align: 64, offset: 64)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "math/bits.divideError", linkageName: "runtime.divideError", scope: !497, file: !497, line: 15, type: !498, isLocal: false, isDefinition: true, align: 64)
!506 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !507)
!507 = !{!508, !510, !513, !518, !521, !524, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !597, !599, !601, !606, !608, !610, !612, !616, !619, !624, !627, !629, !633, !635, !638, !640, !644, !648, !650, !652, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701}
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !214, file: !214, line: 23, type: !217, isLocal: false, isDefinition: true, align: 8)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "math.useFMA", linkageName: "math.useFMA", scope: !512, file: !512, line: 11, type: !47, isLocal: false, isDefinition: true, align: 8)
!512 = !DIFile(filename: "exp_amd64.go", directory: "/usr/local/go/src/math")
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "math._gamP", linkageName: "math._gamP", scope: !515, file: !515, line: 66, type: !516, isLocal: false, isDefinition: true, align: 64)
!515 = !DIFile(filename: "gamma.go", directory: "/usr/local/go/src/math")
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 448, align: 64, elements: !104)
!517 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "math._gamQ", linkageName: "math._gamQ", scope: !515, file: !515, line: 75, type: !520, isLocal: false, isDefinition: true, align: 64)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 512, align: 64, elements: !464)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(name: "math._gamS", linkageName: "math._gamS", scope: !515, file: !515, line: 85, type: !523, isLocal: false, isDefinition: true, align: 64)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 320, align: 64, elements: !443)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "math.p0R8", linkageName: "math.p0R8", scope: !526, file: !526, line: 240, type: !527, isLocal: false, isDefinition: true, align: 64)
!526 = !DIFile(filename: "j0.go", directory: "/usr/local/go/src/math")
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 384, align: 64, elements: !427)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "math.p0S8", linkageName: "math.p0S8", scope: !526, file: !526, line: 248, type: !523, isLocal: false, isDefinition: true, align: 64)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "math.p0R5", linkageName: "math.p0R5", scope: !526, file: !526, line: 257, type: !527, isLocal: false, isDefinition: true, align: 64)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(name: "math.p0S5", linkageName: "math.p0S5", scope: !526, file: !526, line: 265, type: !523, isLocal: false, isDefinition: true, align: 64)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(name: "math.p0R3", linkageName: "math.p0R3", scope: !526, file: !526, line: 274, type: !527, isLocal: false, isDefinition: true, align: 64)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(name: "math.p0S3", linkageName: "math.p0S3", scope: !526, file: !526, line: 282, type: !523, isLocal: false, isDefinition: true, align: 64)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "math.p0R2", linkageName: "math.p0R2", scope: !526, file: !526, line: 291, type: !527, isLocal: false, isDefinition: true, align: 64)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(name: "math.p0S2", linkageName: "math.p0S2", scope: !526, file: !526, line: 299, type: !523, isLocal: false, isDefinition: true, align: 64)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(name: "math.q0R8", linkageName: "math.q0R8", scope: !526, file: !526, line: 339, type: !527, isLocal: false, isDefinition: true, align: 64)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "math.q0S8", linkageName: "math.q0S8", scope: !526, file: !526, line: 347, type: !527, isLocal: false, isDefinition: true, align: 64)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "math.q0R5", linkageName: "math.q0R5", scope: !526, file: !526, line: 357, type: !527, isLocal: false, isDefinition: true, align: 64)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "math.q0S5", linkageName: "math.q0S5", scope: !526, file: !526, line: 365, type: !527, isLocal: false, isDefinition: true, align: 64)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "math.q0R3", linkageName: "math.q0R3", scope: !526, file: !526, line: 375, type: !527, isLocal: false, isDefinition: true, align: 64)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "math.q0S3", linkageName: "math.q0S3", scope: !526, file: !526, line: 383, type: !527, isLocal: false, isDefinition: true, align: 64)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "math.q0R2", linkageName: "math.q0R2", scope: !526, file: !526, line: 393, type: !527, isLocal: false, isDefinition: true, align: 64)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(name: "math.q0S2", linkageName: "math.q0S2", scope: !526, file: !526, line: 401, type: !527, isLocal: false, isDefinition: true, align: 64)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "math.p1R8", linkageName: "math.p1R8", scope: !560, file: !560, line: 235, type: !527, isLocal: false, isDefinition: true, align: 64)
!560 = !DIFile(filename: "j1.go", directory: "/usr/local/go/src/math")
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "math.p1S8", linkageName: "math.p1S8", scope: !560, file: !560, line: 243, type: !523, isLocal: false, isDefinition: true, align: 64)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(name: "math.p1R5", linkageName: "math.p1R5", scope: !560, file: !560, line: 252, type: !527, isLocal: false, isDefinition: true, align: 64)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(name: "math.p1S5", linkageName: "math.p1S5", scope: !560, file: !560, line: 260, type: !523, isLocal: false, isDefinition: true, align: 64)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(name: "math.p1R3", linkageName: "math.p1R3", scope: !560, file: !560, line: 269, type: !527, isLocal: false, isDefinition: true, align: 64)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(name: "math.p1S3", linkageName: "math.p1S3", scope: !560, file: !560, line: 277, type: !523, isLocal: false, isDefinition: true, align: 64)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "math.p1R2", linkageName: "math.p1R2", scope: !560, file: !560, line: 286, type: !527, isLocal: false, isDefinition: true, align: 64)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "math.p1S2", linkageName: "math.p1S2", scope: !560, file: !560, line: 294, type: !523, isLocal: false, isDefinition: true, align: 64)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "math.q1R8", linkageName: "math.q1R8", scope: !560, file: !560, line: 334, type: !527, isLocal: false, isDefinition: true, align: 64)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(name: "math.q1S8", linkageName: "math.q1S8", scope: !560, file: !560, line: 342, type: !527, isLocal: false, isDefinition: true, align: 64)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(name: "math.q1R5", linkageName: "math.q1R5", scope: !560, file: !560, line: 352, type: !527, isLocal: false, isDefinition: true, align: 64)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(name: "math.q1S5", linkageName: "math.q1S5", scope: !560, file: !560, line: 360, type: !527, isLocal: false, isDefinition: true, align: 64)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(name: "math.q1R3", linkageName: "math.q1R3", scope: !560, file: !560, line: 370, type: !527, isLocal: false, isDefinition: true, align: 64)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(name: "math.q1S3", linkageName: "math.q1S3", scope: !560, file: !560, line: 378, type: !527, isLocal: false, isDefinition: true, align: 64)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(name: "math.q1R2", linkageName: "math.q1R2", scope: !560, file: !560, line: 388, type: !527, isLocal: false, isDefinition: true, align: 64)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(name: "math.q1S2", linkageName: "math.q1S2", scope: !560, file: !560, line: 396, type: !527, isLocal: false, isDefinition: true, align: 64)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "math._lgamA", linkageName: "math._lgamA", scope: !593, file: !593, line: 91, type: !594, isLocal: false, isDefinition: true, align: 64)
!593 = !DIFile(filename: "lgamma.go", directory: "/usr/local/go/src/math")
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 768, align: 64, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 12, lowerBound: 0)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(name: "math._lgamR", linkageName: "math._lgamR", scope: !593, file: !593, line: 105, type: !516, isLocal: false, isDefinition: true, align: 64)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(name: "math._lgamS", linkageName: "math._lgamS", scope: !593, file: !593, line: 114, type: !516, isLocal: false, isDefinition: true, align: 64)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(name: "math._lgamT", linkageName: "math._lgamT", scope: !593, file: !593, line: 123, type: !603, isLocal: false, isDefinition: true, align: 64)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 960, align: 64, elements: !604)
!604 = !{!605}
!605 = !DISubrange(count: 15, lowerBound: 0)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(name: "math._lgamU", linkageName: "math._lgamU", scope: !593, file: !593, line: 140, type: !527, isLocal: false, isDefinition: true, align: 64)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(name: "math._lgamV", linkageName: "math._lgamV", scope: !593, file: !593, line: 148, type: !527, isLocal: false, isDefinition: true, align: 64)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(name: "math._lgamW", linkageName: "math._lgamW", scope: !593, file: !593, line: 156, type: !516, isLocal: false, isDefinition: true, align: 64)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(name: "math.pow10tab", linkageName: "math.pow10tab", scope: !614, file: !614, line: 8, type: !615, isLocal: false, isDefinition: true, align: 64)
!614 = !DIFile(filename: "pow10.go", directory: "/usr/local/go/src/math")
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 2048, align: 64, elements: !397)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(name: "math.pow10postab32", linkageName: "math.pow10postab32", scope: !614, file: !614, line: 16, type: !618, isLocal: false, isDefinition: true, align: 64)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 640, align: 64, elements: !434)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(name: "math.pow10negtab32", linkageName: "math.pow10negtab32", scope: !614, file: !614, line: 21, type: !621, isLocal: false, isDefinition: true, align: 64)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 704, align: 64, elements: !622)
!622 = !{!623}
!623 = !DISubrange(count: 11, lowerBound: 0)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(name: "math._sin", linkageName: "math._sin", scope: !626, file: !626, line: 93, type: !527, isLocal: false, isDefinition: true, align: 64)
!626 = !DIFile(filename: "sin.go", directory: "/usr/local/go/src/math")
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(name: "math._cos", linkageName: "math._cos", scope: !626, file: !626, line: 103, type: !527, isLocal: false, isDefinition: true, align: 64)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(name: "math._tanP", linkageName: "math._tanP", scope: !631, file: !631, line: 63, type: !632, isLocal: false, isDefinition: true, align: 64)
!631 = !DIFile(filename: "tan.go", directory: "/usr/local/go/src/math")
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 192, align: 64, elements: !201)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(name: "math._tanQ", linkageName: "math._tanQ", scope: !631, file: !631, line: 68, type: !523, isLocal: false, isDefinition: true, align: 64)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "math.tanhP", linkageName: "math.tanhP", scope: !637, file: !637, line: 57, type: !632, isLocal: false, isDefinition: true, align: 64)
!637 = !DIFile(filename: "tanh.go", directory: "/usr/local/go/src/math")
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(name: "math.tanhQ", linkageName: "math.tanhQ", scope: !637, file: !637, line: 62, type: !632, isLocal: false, isDefinition: true, align: 64)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(name: "math.mPi4", linkageName: "math.mPi4", scope: !642, file: !642, line: 81, type: !643, isLocal: false, isDefinition: true, align: 64)
!642 = !DIFile(filename: "trig_reduce.go", directory: "/usr/local/go/src/math")
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1280, align: 64, elements: !68)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !646, line: 1, type: !647, isLocal: true, isDefinition: true)
!646 = !DIFile(filename: "exp2_noasm.go", directory: "/usr/local/go/src/math")
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 120, align: 8, elements: !604)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!654 = !DIFile(filename: "stubs.go", directory: "/usr/local/go/src/math")
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !654, line: 1, type: !647, isLocal: true, isDefinition: true)
!703 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !704)
!704 = !{!705, !711}
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(name: "unicode/utf8.first", linkageName: "unicode/utf8.first", scope: !707, file: !707, line: 71, type: !708, isLocal: false, isDefinition: true, align: 8)
!707 = !DIFile(filename: "utf8.go", directory: "/usr/local/lib/tinygo/src/unicode/utf8")
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, align: 8, elements: !709)
!709 = !{!710}
!710 = !DISubrange(count: 256, lowerBound: 0)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(name: "unicode/utf8.acceptRanges", linkageName: "unicode/utf8.acceptRanges", scope: !707, file: !707, line: 100, type: !713, isLocal: false, isDefinition: true, align: 8)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 256, align: 8, elements: !206)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "unicode/utf8.acceptRange", baseType: !715)
!715 = !DICompositeType(tag: DW_TAG_structure_type, size: 16, align: 8, elements: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "lo", baseType: !45, size: 8, align: 8)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "hi", baseType: !45, size: 8, align: 8, offset: 8)
!719 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !720)
!720 = !{!721, !724, !731, !733, !735, !737, !739, !741, !743, !745, !747, !749, !751, !753, !755, !758, !760, !763, !765, !767, !769, !777, !779, !781, !783, !785, !787, !789, !791, !793, !795, !797, !799, !801, !803, !805, !807, !809, !811, !813, !815, !817, !819, !821, !823, !825, !827, !829, !831, !833, !835, !837, !839, !841, !843, !845, !847, !849, !851, !853, !855, !857, !870, !888, !893, !895, !897, !899, !901, !903, !905, !907, !919, !925, !935, !939, !941, !943, !945, !947, !956, !958, !966, !975, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !999, !1001, !1003, !1005, !1007, !1009, !1012, !1014, !1016, !1018, !1020, !1022, !1024, !1030, !1036, !1042, !1044, !1046, !1048, !1050, !1052, !1054, !1056, !1058, !1060, !1062, !1064, !1066, !1068, !1070, !1072, !1074, !1076, !1078, !1080, !1082, !1084, !1086, !1088, !1090, !1092, !1094, !1096, !1098, !1100, !1102, !1107, !1112, !1117, !1122, !1124, !1126, !1128, !1133, !1135, !1137, !1139, !1141, !1143, !1148, !1150, !1152, !1154, !1156, !1158, !1160, !1162, !1164, !1166, !1168, !1170, !1172, !1174, !1176, !1178, !1180, !1182, !1184, !1186, !1188, !1190, !1192, !1194, !1196, !1198, !1200, !1202, !1204, !1209, !1211, !1213, !1215, !1217, !1219, !1224, !1226, !1228, !1230, !1232, !1234, !1239, !1241, !1243, !1248, !1250, !1252, !1254, !1256, !1258, !1260, !1262, !1264, !1266, !1268, !1270, !1272, !1277, !1279, !1281, !1283, !1285, !1287, !1289, !1291, !1293, !1298, !1300, !1305, !1310, !1312, !1314, !1316, !1321, !1323, !1325, !1327, !1329, !1334, !1336, !1338, !1340, !1342, !1344, !1349, !1351, !1356, !1358, !1360, !1362, !1364, !1366, !1368, !1370, !1372, !1374, !1376, !1378, !1383, !1385, !1390, !1392, !1394, !1396, !1398, !1401, !1403, !1405, !1407, !1409, !1411, !1413, !1415, !1417, !1419, !1424, !1426, !1428, !1430, !1432, !1434, !1436, !1438, !1440, !1442, !1445}
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !723, line: 393, type: !372, isLocal: true, isDefinition: true)
!723 = !DIFile(filename: "type.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeElem", linkageName: "internal/reflectlite.errTypeElem", scope: !723, file: !723, line: 393, type: !726, isLocal: false, isDefinition: true, align: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64, align: 64, dwarfAddressSpace: 0)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.TypeError", baseType: !728)
!728 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !729)
!729 = !{!730}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "Method", baseType: !360, size: 128, align: 64)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !723, line: 394, type: !200, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeKey", linkageName: "internal/reflectlite.errTypeKey", scope: !723, file: !723, line: 394, type: !726, isLocal: false, isDefinition: true, align: 64)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !723, line: 395, type: !442, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeField", linkageName: "internal/reflectlite.errTypeField", scope: !723, file: !723, line: 395, type: !726, isLocal: false, isDefinition: true, align: 64)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !723, line: 396, type: !372, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeBits", linkageName: "internal/reflectlite.errTypeBits", scope: !723, file: !723, line: 396, type: !726, isLocal: false, isDefinition: true, align: 64)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !723, line: 397, type: !200, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeLen", linkageName: "internal/reflectlite.errTypeLen", scope: !723, file: !723, line: 397, type: !726, isLocal: false, isDefinition: true, align: 64)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !723, line: 398, type: !463, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeNumField", linkageName: "internal/reflectlite.errTypeNumField", scope: !723, file: !723, line: 398, type: !726, isLocal: false, isDefinition: true, align: 64)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !723, line: 399, type: !103, isLocal: true, isDefinition: true)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeChanDir", linkageName: "internal/reflectlite.errTypeChanDir", scope: !723, file: !723, line: 399, type: !726, isLocal: false, isDefinition: true, align: 64)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !723, line: 400, type: !757, isLocal: true, isDefinition: true)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 88, align: 8, elements: !622)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByName", linkageName: "internal/reflectlite.errTypeFieldByName", scope: !723, file: !723, line: 400, type: !726, isLocal: false, isDefinition: true, align: 64)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !723, line: 401, type: !762, isLocal: true, isDefinition: true)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 96, align: 8, elements: !595)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByIndex", linkageName: "internal/reflectlite.errTypeFieldByIndex", scope: !723, file: !723, line: 401, type: !726, isLocal: false, isDefinition: true, align: 64)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(name: "type *uint8", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(name: "type uint8", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(name: "internal/reflectlite.uint8Type", linkageName: "internal/reflectlite.uint8Type", scope: !771, file: !771, line: 956, type: !772, isLocal: false, isDefinition: true, align: 64)
!771 = !DIFile(filename: "value.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64, align: 64, dwarfAddressSpace: 0)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.RawType", baseType: !774)
!774 = !DICompositeType(tag: DW_TAG_structure_type, size: 8, align: 8, elements: !775)
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "meta", baseType: !45, size: 8, align: 8)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.visit", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(name: "type *struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(name: "type *unsafe.Pointer", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(name: "type unsafe.Pointer", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(name: "reflect/types.signature:Align:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(name: "reflect/types.signature:AssignableTo:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(name: "reflect/types.signature:Bits:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(name: "reflect/types.signature:ChanDir:func:{}{named:internal/reflectlite.ChanDir}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(name: "reflect/types.signature:Comparable:func:{}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(name: "reflect/types.signature:Elem:func:{}{named:internal/reflectlite.Type}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(name: "reflect/types.signature:Field:func:{basic:int}{named:internal/reflectlite.StructField}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldAlign:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByIndex:func:{slice:basic:int}{named:internal/reflectlite.StructField}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByName:func:{basic:string}{named:internal/reflectlite.StructField,basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.StructField,basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(name: "reflect/types.signature:Implements:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(name: "reflect/types.signature:Key:func:{}{named:internal/reflectlite.Type}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(name: "reflect/types.signature:Kind:func:{}{named:internal/reflectlite.Kind}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(name: "reflect/types.signature:Len:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(name: "reflect/types.signature:Name:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumField:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumMethod:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowComplex:func:{basic:complex128}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowFloat:func:{basic:float64}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowInt:func:{basic:int64}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!827 = !DIGlobalVariableExpression(var: !828, expr: !DIExpression())
!828 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowUint:func:{basic:uint64}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!829 = !DIGlobalVariableExpression(var: !830, expr: !DIExpression())
!830 = distinct !DIGlobalVariable(name: "reflect/types.signature:PkgPath:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(name: "reflect/types.signature:Size:func:{}{basic:uintptr}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(name: "reflect/types.signature:String:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.elem:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.gcLayout:func:{}{basic:unsafe.Pointer}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isBinary:func:{}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!841 = !DIGlobalVariableExpression(var: !842, expr: !DIExpression())
!842 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isNamed:func:{}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.key:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.name:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!847 = !DIGlobalVariableExpression(var: !848, expr: !DIExpression())
!848 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.ptrtag:func:{}{basic:uintptr}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawField:func:{basic:int}{named:internal/reflectlite.rawStructField}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawFieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.rawStructField,slice:basic:int,basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.underlying:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(name: "type *struct{meta uint8}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(name: "type struct{meta uint8}", scope: !87, file: !87, line: 1, type: !859, isLocal: false, isDefinition: true, align: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !860)
!860 = !{!90, !97, !92, !861, !862, !863, !864}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "size", baseType: !43, size: 32, align: 32, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "numFields", baseType: !98, size: 16, align: 16, offset: 224)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !865, size: 128, align: 64, offset: 256)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 128, align: 64, elements: !194)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.structField", baseType: !867)
!867 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !868)
!868 = !{!502, !869}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !363, size: 64, align: 64, offset: 64)
!870 = !DIGlobalVariableExpression(var: !871, expr: !DIExpression())
!871 = distinct !DIGlobalVariable(name: "type internal/reflectlite.RawType", scope: !87, file: !87, line: 1, type: !872, isLocal: false, isDefinition: true, align: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, size: 832, align: 64, elements: !873)
!873 = !{!874, !875, !876, !877, !878, !879, !880, !886}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "methodSet", baseType: !9, size: 64, align: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !91, size: 8, align: 8, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !98, size: 16, align: 16, offset: 80)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !9, size: 64, align: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !9, size: 64, align: 64, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !881, size: 320, align: 64, offset: 320)
!881 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !21, size: 64, align: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !885, size: 256, align: 64, offset: 64)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, align: 64, elements: !373)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !887, size: 160, align: 8, offset: 640)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 160, align: 8, elements: !68)
!888 = !DIGlobalVariableExpression(var: !889, expr: !DIExpression())
!889 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !890, isLocal: true, isDefinition: true)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 224, align: 8, elements: !891)
!891 = !{!892}
!892 = !DISubrange(count: 28, lowerBound: 0)
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression())
!894 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !647, isLocal: true, isDefinition: true)
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !890, isLocal: true, isDefinition: true)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !475, isLocal: true, isDefinition: true)
!899 = !DIGlobalVariableExpression(var: !900, expr: !DIExpression())
!900 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !890, isLocal: true, isDefinition: true)
!901 = !DIGlobalVariableExpression(var: !902, expr: !DIExpression())
!902 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !757, isLocal: true, isDefinition: true)
!903 = !DIGlobalVariableExpression(var: !904, expr: !DIExpression())
!904 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !890, isLocal: true, isDefinition: true)
!905 = !DIGlobalVariableExpression(var: !906, expr: !DIExpression())
!906 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !762, isLocal: true, isDefinition: true)
!907 = !DIGlobalVariableExpression(var: !908, expr: !DIExpression())
!908 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.RawType", scope: !87, file: !87, line: 1, type: !909, isLocal: false, isDefinition: true, align: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, size: 2496, align: 64, elements: !910)
!910 = !{!874, !875, !876, !911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !9, size: 64, align: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !913, size: 2304, align: 64, offset: 192)
!913 = !DICompositeType(tag: DW_TAG_structure_type, size: 2304, align: 64, elements: !914)
!914 = !{!883, !915}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !916, size: 2240, align: 64, offset: 64)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2240, align: 64, elements: !917)
!917 = !{!918}
!918 = !DISubrange(count: 35, lowerBound: 0)
!919 = !DIGlobalVariableExpression(var: !920, expr: !DIExpression())
!920 = distinct !DIGlobalVariable(name: "type struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !921, isLocal: false, isDefinition: true, align: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !922)
!922 = !{!90, !97, !92, !861, !862, !863, !923}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !924, size: 384, align: 64, offset: 256)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 384, align: 64, elements: !201)
!925 = !DIGlobalVariableExpression(var: !926, expr: !DIExpression())
!926 = distinct !DIGlobalVariable(name: "type internal/reflectlite.visit", scope: !87, file: !87, line: 1, type: !927, isLocal: false, isDefinition: true, align: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !928)
!928 = !{!90, !97, !92, !929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !9, size: 64, align: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !932, size: 144, align: 8, offset: 256)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 144, align: 8, elements: !933)
!933 = !{!934}
!934 = !DISubrange(count: 18, lowerBound: 0)
!935 = !DIGlobalVariableExpression(var: !936, expr: !DIExpression())
!936 = distinct !DIGlobalVariable(name: "internal/reflectlite.errSyntax", linkageName: "internal/reflectlite.errSyntax", scope: !937, file: !937, line: 12, type: !938, isLocal: false, isDefinition: true, align: 8)
!937 = !DIFile(filename: "strconv.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.badSyntax", baseType: !14)
!939 = !DIGlobalVariableExpression(var: !940, expr: !DIExpression())
!940 = distinct !DIGlobalVariable(scope: null, file: !937, line: 17, type: !123, isLocal: true, isDefinition: true)
!941 = !DIGlobalVariableExpression(var: !942, expr: !DIExpression())
!942 = distinct !DIGlobalVariable(name: "reflect/types.signature:Error:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!943 = !DIGlobalVariableExpression(var: !944, expr: !DIExpression())
!944 = distinct !DIGlobalVariable(scope: null, file: !937, line: 1, type: !55, isLocal: true, isDefinition: true)
!945 = !DIGlobalVariableExpression(var: !946, expr: !DIExpression())
!946 = distinct !DIGlobalVariable(scope: null, file: !937, line: 1, type: !442, isLocal: true, isDefinition: true)
!947 = !DIGlobalVariableExpression(var: !948, expr: !DIExpression())
!948 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.badSyntax", scope: !87, file: !87, line: 1, type: !949, isLocal: false, isDefinition: true, align: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !950)
!950 = !{!874, !875, !876, !911, !951}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !952, size: 128, align: 64, offset: 192)
!952 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !953)
!953 = !{!883, !954}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !955, size: 64, align: 64, offset: 64)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, align: 64, elements: !194)
!956 = !DIGlobalVariableExpression(var: !957, expr: !DIExpression())
!957 = distinct !DIGlobalVariable(name: "type *struct{}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!958 = !DIGlobalVariableExpression(var: !959, expr: !DIExpression())
!959 = distinct !DIGlobalVariable(name: "type struct{}", scope: !87, file: !87, line: 1, type: !960, isLocal: false, isDefinition: true, align: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !961)
!961 = !{!90, !97, !92, !861, !862, !863, !962}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !963, align: 64, offset: 256)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, align: 64, elements: !964)
!964 = !{!965}
!965 = !DISubrange(count: 0, lowerBound: 0)
!966 = !DIGlobalVariableExpression(var: !967, expr: !DIExpression())
!967 = distinct !DIGlobalVariable(name: "type internal/reflectlite.badSyntax", scope: !87, file: !87, line: 1, type: !968, isLocal: false, isDefinition: true, align: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !969)
!969 = !{!874, !875, !876, !877, !878, !879, !970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !952, size: 128, align: 64, offset: 320)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !972, size: 176, align: 8, offset: 448)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 176, align: 8, elements: !973)
!973 = !{!974}
!974 = !DISubrange(count: 22, lowerBound: 0)
!975 = !DIGlobalVariableExpression(var: !976, expr: !DIExpression())
!976 = distinct !DIGlobalVariable(scope: null, file: !937, line: 250, type: !113, isLocal: true, isDefinition: true)
!977 = !DIGlobalVariableExpression(var: !978, expr: !DIExpression())
!978 = distinct !DIGlobalVariable(scope: null, file: !937, line: 251, type: !647, isLocal: true, isDefinition: true)
!979 = !DIGlobalVariableExpression(var: !980, expr: !DIExpression())
!980 = distinct !DIGlobalVariable(scope: null, file: !937, line: 252, type: !647, isLocal: true, isDefinition: true)
!981 = !DIGlobalVariableExpression(var: !982, expr: !DIExpression())
!982 = distinct !DIGlobalVariable(scope: null, file: !937, line: 278, type: !113, isLocal: true, isDefinition: true)
!983 = !DIGlobalVariableExpression(var: !984, expr: !DIExpression())
!984 = distinct !DIGlobalVariable(scope: null, file: !937, line: 280, type: !113, isLocal: true, isDefinition: true)
!985 = !DIGlobalVariableExpression(var: !986, expr: !DIExpression())
!986 = distinct !DIGlobalVariable(scope: null, file: !937, line: 282, type: !113, isLocal: true, isDefinition: true)
!987 = !DIGlobalVariableExpression(var: !988, expr: !DIExpression())
!988 = distinct !DIGlobalVariable(scope: null, file: !937, line: 284, type: !113, isLocal: true, isDefinition: true)
!989 = !DIGlobalVariableExpression(var: !990, expr: !DIExpression())
!990 = distinct !DIGlobalVariable(scope: null, file: !937, line: 286, type: !113, isLocal: true, isDefinition: true)
!991 = !DIGlobalVariableExpression(var: !992, expr: !DIExpression())
!992 = distinct !DIGlobalVariable(scope: null, file: !937, line: 288, type: !113, isLocal: true, isDefinition: true)
!993 = !DIGlobalVariableExpression(var: !994, expr: !DIExpression())
!994 = distinct !DIGlobalVariable(scope: null, file: !937, line: 290, type: !113, isLocal: true, isDefinition: true)
!995 = !DIGlobalVariableExpression(var: !996, expr: !DIExpression())
!996 = distinct !DIGlobalVariable(scope: null, file: !937, line: 294, type: !113, isLocal: true, isDefinition: true)
!997 = !DIGlobalVariableExpression(var: !998, expr: !DIExpression())
!998 = distinct !DIGlobalVariable(scope: null, file: !937, line: 295, type: !647, isLocal: true, isDefinition: true)
!999 = !DIGlobalVariableExpression(var: !1000, expr: !DIExpression())
!1000 = distinct !DIGlobalVariable(scope: null, file: !937, line: 296, type: !647, isLocal: true, isDefinition: true)
!1001 = !DIGlobalVariableExpression(var: !1002, expr: !DIExpression())
!1002 = distinct !DIGlobalVariable(scope: null, file: !937, line: 301, type: !113, isLocal: true, isDefinition: true)
!1003 = !DIGlobalVariableExpression(var: !1004, expr: !DIExpression())
!1004 = distinct !DIGlobalVariable(scope: null, file: !937, line: 303, type: !647, isLocal: true, isDefinition: true)
!1005 = !DIGlobalVariableExpression(var: !1006, expr: !DIExpression())
!1006 = distinct !DIGlobalVariable(scope: null, file: !937, line: 306, type: !113, isLocal: true, isDefinition: true)
!1007 = !DIGlobalVariableExpression(var: !1008, expr: !DIExpression())
!1008 = distinct !DIGlobalVariable(scope: null, file: !937, line: 308, type: !647, isLocal: true, isDefinition: true)
!1009 = !DIGlobalVariableExpression(var: !1010, expr: !DIExpression())
!1010 = distinct !DIGlobalVariable(scope: null, file: !1011, line: 16, type: !103, isLocal: true, isDefinition: true)
!1011 = !DIFile(filename: "swapper.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1012 = !DIGlobalVariableExpression(var: !1013, expr: !DIExpression())
!1013 = distinct !DIGlobalVariable(name: "type *struct{Method string; Kind internal/reflectlite.Kind}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1014 = !DIGlobalVariableExpression(var: !1015, expr: !DIExpression())
!1015 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1016 = !DIGlobalVariableExpression(var: !1017, expr: !DIExpression())
!1017 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1018 = !DIGlobalVariableExpression(var: !1019, expr: !DIExpression())
!1019 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !403, isLocal: true, isDefinition: true)
!1020 = !DIGlobalVariableExpression(var: !1021, expr: !DIExpression())
!1021 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !426, isLocal: true, isDefinition: true)
!1022 = !DIGlobalVariableExpression(var: !1023, expr: !DIExpression())
!1023 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.Kind", scope: !87, file: !87, line: 1, type: !949, isLocal: false, isDefinition: true, align: 64)
!1024 = !DIGlobalVariableExpression(var: !1025, expr: !DIExpression())
!1025 = distinct !DIGlobalVariable(name: "type internal/reflectlite.Kind", scope: !87, file: !87, line: 1, type: !1026, isLocal: false, isDefinition: true, align: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1027)
!1027 = !{!874, !875, !876, !877, !878, !879, !970, !1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1029, size: 136, align: 8, offset: 448)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 136, align: 8, elements: !75)
!1030 = !DIGlobalVariableExpression(var: !1031, expr: !DIExpression())
!1031 = distinct !DIGlobalVariable(name: "type struct{Method string; Kind internal/reflectlite.Kind}", scope: !87, file: !87, line: 1, type: !1032, isLocal: false, isDefinition: true, align: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !1033)
!1033 = !{!90, !97, !92, !861, !862, !863, !1034}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !1035, size: 256, align: 64, offset: 256)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 256, align: 64, elements: !114)
!1036 = !DIGlobalVariableExpression(var: !1037, expr: !DIExpression())
!1037 = distinct !DIGlobalVariable(name: "type internal/reflectlite.ValueError", scope: !87, file: !87, line: 1, type: !1038, isLocal: false, isDefinition: true, align: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1039)
!1039 = !{!90, !97, !92, !929, !930, !1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1041, size: 184, align: 8, offset: 256)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 184, align: 8, elements: !119)
!1042 = !DIGlobalVariableExpression(var: !1043, expr: !DIExpression())
!1043 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.ValueError", scope: !87, file: !87, line: 1, type: !949, isLocal: false, isDefinition: true, align: 64)
!1044 = !DIGlobalVariableExpression(var: !1045, expr: !DIExpression())
!1045 = distinct !DIGlobalVariable(scope: null, file: !1011, line: 1, type: !377, isLocal: true, isDefinition: true)
!1046 = !DIGlobalVariableExpression(var: !1047, expr: !DIExpression())
!1047 = distinct !DIGlobalVariable(scope: null, file: !723, line: 60, type: !103, isLocal: true, isDefinition: true)
!1048 = !DIGlobalVariableExpression(var: !1049, expr: !DIExpression())
!1049 = distinct !DIGlobalVariable(scope: null, file: !723, line: 62, type: !372, isLocal: true, isDefinition: true)
!1050 = !DIGlobalVariableExpression(var: !1051, expr: !DIExpression())
!1051 = distinct !DIGlobalVariable(scope: null, file: !723, line: 64, type: !200, isLocal: true, isDefinition: true)
!1052 = !DIGlobalVariableExpression(var: !1053, expr: !DIExpression())
!1053 = distinct !DIGlobalVariable(scope: null, file: !723, line: 66, type: !372, isLocal: true, isDefinition: true)
!1054 = !DIGlobalVariableExpression(var: !1055, expr: !DIExpression())
!1055 = distinct !DIGlobalVariable(scope: null, file: !723, line: 68, type: !442, isLocal: true, isDefinition: true)
!1056 = !DIGlobalVariableExpression(var: !1057, expr: !DIExpression())
!1057 = distinct !DIGlobalVariable(scope: null, file: !723, line: 70, type: !442, isLocal: true, isDefinition: true)
!1058 = !DIGlobalVariableExpression(var: !1059, expr: !DIExpression())
!1059 = distinct !DIGlobalVariable(scope: null, file: !723, line: 72, type: !442, isLocal: true, isDefinition: true)
!1060 = !DIGlobalVariableExpression(var: !1061, expr: !DIExpression())
!1061 = distinct !DIGlobalVariable(scope: null, file: !723, line: 74, type: !372, isLocal: true, isDefinition: true)
!1062 = !DIGlobalVariableExpression(var: !1063, expr: !DIExpression())
!1063 = distinct !DIGlobalVariable(scope: null, file: !723, line: 76, type: !442, isLocal: true, isDefinition: true)
!1064 = !DIGlobalVariableExpression(var: !1065, expr: !DIExpression())
!1065 = distinct !DIGlobalVariable(scope: null, file: !723, line: 78, type: !426, isLocal: true, isDefinition: true)
!1066 = !DIGlobalVariableExpression(var: !1067, expr: !DIExpression())
!1067 = distinct !DIGlobalVariable(scope: null, file: !723, line: 80, type: !426, isLocal: true, isDefinition: true)
!1068 = !DIGlobalVariableExpression(var: !1069, expr: !DIExpression())
!1069 = distinct !DIGlobalVariable(scope: null, file: !723, line: 82, type: !426, isLocal: true, isDefinition: true)
!1070 = !DIGlobalVariableExpression(var: !1071, expr: !DIExpression())
!1071 = distinct !DIGlobalVariable(scope: null, file: !723, line: 84, type: !103, isLocal: true, isDefinition: true)
!1072 = !DIGlobalVariableExpression(var: !1073, expr: !DIExpression())
!1073 = distinct !DIGlobalVariable(scope: null, file: !723, line: 86, type: !103, isLocal: true, isDefinition: true)
!1074 = !DIGlobalVariableExpression(var: !1075, expr: !DIExpression())
!1075 = distinct !DIGlobalVariable(scope: null, file: !723, line: 88, type: !103, isLocal: true, isDefinition: true)
!1076 = !DIGlobalVariableExpression(var: !1077, expr: !DIExpression())
!1077 = distinct !DIGlobalVariable(scope: null, file: !723, line: 90, type: !421, isLocal: true, isDefinition: true)
!1078 = !DIGlobalVariableExpression(var: !1079, expr: !DIExpression())
!1079 = distinct !DIGlobalVariable(scope: null, file: !723, line: 92, type: !433, isLocal: true, isDefinition: true)
!1080 = !DIGlobalVariableExpression(var: !1081, expr: !DIExpression())
!1081 = distinct !DIGlobalVariable(scope: null, file: !723, line: 94, type: !426, isLocal: true, isDefinition: true)
!1082 = !DIGlobalVariableExpression(var: !1083, expr: !DIExpression())
!1083 = distinct !DIGlobalVariable(scope: null, file: !723, line: 96, type: !123, isLocal: true, isDefinition: true)
!1084 = !DIGlobalVariableExpression(var: !1085, expr: !DIExpression())
!1085 = distinct !DIGlobalVariable(scope: null, file: !723, line: 98, type: !372, isLocal: true, isDefinition: true)
!1086 = !DIGlobalVariableExpression(var: !1087, expr: !DIExpression())
!1087 = distinct !DIGlobalVariable(scope: null, file: !723, line: 100, type: !421, isLocal: true, isDefinition: true)
!1088 = !DIGlobalVariableExpression(var: !1089, expr: !DIExpression())
!1089 = distinct !DIGlobalVariable(scope: null, file: !723, line: 102, type: !200, isLocal: true, isDefinition: true)
!1090 = !DIGlobalVariableExpression(var: !1091, expr: !DIExpression())
!1091 = distinct !DIGlobalVariable(scope: null, file: !723, line: 104, type: !442, isLocal: true, isDefinition: true)
!1092 = !DIGlobalVariableExpression(var: !1093, expr: !DIExpression())
!1093 = distinct !DIGlobalVariable(scope: null, file: !723, line: 106, type: !442, isLocal: true, isDefinition: true)
!1094 = !DIGlobalVariableExpression(var: !1095, expr: !DIExpression())
!1095 = distinct !DIGlobalVariable(scope: null, file: !723, line: 108, type: !372, isLocal: true, isDefinition: true)
!1096 = !DIGlobalVariableExpression(var: !1097, expr: !DIExpression())
!1097 = distinct !DIGlobalVariable(scope: null, file: !723, line: 110, type: !200, isLocal: true, isDefinition: true)
!1098 = !DIGlobalVariableExpression(var: !1099, expr: !DIExpression())
!1099 = distinct !DIGlobalVariable(scope: null, file: !723, line: 112, type: !426, isLocal: true, isDefinition: true)
!1100 = !DIGlobalVariableExpression(var: !1101, expr: !DIExpression())
!1101 = distinct !DIGlobalVariable(scope: null, file: !723, line: 114, type: !372, isLocal: true, isDefinition: true)
!1102 = !DIGlobalVariableExpression(var: !1103, expr: !DIExpression())
!1103 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !1104, isLocal: true, isDefinition: true)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 352, align: 8, elements: !1105)
!1105 = !{!1106}
!1106 = !DISubrange(count: 44, lowerBound: 0)
!1107 = !DIGlobalVariableExpression(var: !1108, expr: !DIExpression())
!1108 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !1109, isLocal: true, isDefinition: true)
!1109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 320, align: 8, elements: !1110)
!1110 = !{!1111}
!1111 = !DISubrange(count: 40, lowerBound: 0)
!1112 = !DIGlobalVariableExpression(var: !1113, expr: !DIExpression())
!1113 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !1114, isLocal: true, isDefinition: true)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 288, align: 8, elements: !1115)
!1115 = !{!1116}
!1116 = !DISubrange(count: 36, lowerBound: 0)
!1117 = !DIGlobalVariableExpression(var: !1118, expr: !DIExpression())
!1118 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !1119, isLocal: true, isDefinition: true)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 304, align: 8, elements: !1120)
!1120 = !{!1121}
!1121 = !DISubrange(count: 38, lowerBound: 0)
!1122 = !DIGlobalVariableExpression(var: !1123, expr: !DIExpression())
!1123 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !396, isLocal: true, isDefinition: true)
!1124 = !DIGlobalVariableExpression(var: !1125, expr: !DIExpression())
!1125 = distinct !DIGlobalVariable(name: "type *struct{Method string}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1126 = !DIGlobalVariableExpression(var: !1127, expr: !DIExpression())
!1127 = distinct !DIGlobalVariable(name: "type struct{Method string}", scope: !87, file: !87, line: 1, type: !859, isLocal: false, isDefinition: true, align: 64)
!1128 = !DIGlobalVariableExpression(var: !1129, expr: !DIExpression())
!1129 = distinct !DIGlobalVariable(name: "type internal/reflectlite.TypeError", scope: !87, file: !87, line: 1, type: !1130, isLocal: false, isDefinition: true, align: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1131)
!1131 = !{!90, !97, !92, !929, !930, !1132}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !972, size: 176, align: 8, offset: 256)
!1133 = !DIGlobalVariableExpression(var: !1134, expr: !DIExpression())
!1134 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.TypeError", scope: !87, file: !87, line: 1, type: !949, isLocal: false, isDefinition: true, align: 64)
!1135 = !DIGlobalVariableExpression(var: !1136, expr: !DIExpression())
!1136 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1059, type: !647, isLocal: true, isDefinition: true)
!1137 = !DIGlobalVariableExpression(var: !1138, expr: !DIExpression())
!1138 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !150, isLocal: true, isDefinition: true)
!1139 = !DIGlobalVariableExpression(var: !1140, expr: !DIExpression())
!1140 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !74, isLocal: true, isDefinition: true)
!1141 = !DIGlobalVariableExpression(var: !1142, expr: !DIExpression())
!1142 = distinct !DIGlobalVariable(scope: null, file: !723, line: 965, type: !103, isLocal: true, isDefinition: true)
!1143 = !DIGlobalVariableExpression(var: !1144, expr: !DIExpression())
!1144 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !1145, isLocal: true, isDefinition: true)
!1145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 216, align: 8, elements: !1146)
!1146 = !{!1147}
!1147 = !DISubrange(count: 27, lowerBound: 0)
!1148 = !DIGlobalVariableExpression(var: !1149, expr: !DIExpression())
!1149 = distinct !DIGlobalVariable(scope: null, file: !723, line: 329, type: !103, isLocal: true, isDefinition: true)
!1150 = !DIGlobalVariableExpression(var: !1151, expr: !DIExpression())
!1151 = distinct !DIGlobalVariable(scope: null, file: !723, line: 331, type: !103, isLocal: true, isDefinition: true)
!1152 = !DIGlobalVariableExpression(var: !1153, expr: !DIExpression())
!1153 = distinct !DIGlobalVariable(scope: null, file: !723, line: 338, type: !426, isLocal: true, isDefinition: true)
!1154 = !DIGlobalVariableExpression(var: !1155, expr: !DIExpression())
!1155 = distinct !DIGlobalVariable(scope: null, file: !723, line: 338, type: !193, isLocal: true, isDefinition: true)
!1156 = !DIGlobalVariableExpression(var: !1157, expr: !DIExpression())
!1157 = distinct !DIGlobalVariable(scope: null, file: !723, line: 340, type: !442, isLocal: true, isDefinition: true)
!1158 = !DIGlobalVariableExpression(var: !1159, expr: !DIExpression())
!1159 = distinct !DIGlobalVariable(scope: null, file: !723, line: 344, type: !193, isLocal: true, isDefinition: true)
!1160 = !DIGlobalVariableExpression(var: !1161, expr: !DIExpression())
!1161 = distinct !DIGlobalVariable(scope: null, file: !723, line: 346, type: !113, isLocal: true, isDefinition: true)
!1162 = !DIGlobalVariableExpression(var: !1163, expr: !DIExpression())
!1163 = distinct !DIGlobalVariable(scope: null, file: !723, line: 348, type: !193, isLocal: true, isDefinition: true)
!1164 = !DIGlobalVariableExpression(var: !1165, expr: !DIExpression())
!1165 = distinct !DIGlobalVariable(scope: null, file: !723, line: 348, type: !193, isLocal: true, isDefinition: true)
!1166 = !DIGlobalVariableExpression(var: !1167, expr: !DIExpression())
!1167 = distinct !DIGlobalVariable(scope: null, file: !723, line: 350, type: !372, isLocal: true, isDefinition: true)
!1168 = !DIGlobalVariableExpression(var: !1169, expr: !DIExpression())
!1169 = distinct !DIGlobalVariable(scope: null, file: !723, line: 350, type: !193, isLocal: true, isDefinition: true)
!1170 = !DIGlobalVariableExpression(var: !1171, expr: !DIExpression())
!1171 = distinct !DIGlobalVariable(scope: null, file: !723, line: 354, type: !421, isLocal: true, isDefinition: true)
!1172 = !DIGlobalVariableExpression(var: !1173, expr: !DIExpression())
!1173 = distinct !DIGlobalVariable(scope: null, file: !723, line: 356, type: !463, isLocal: true, isDefinition: true)
!1174 = !DIGlobalVariableExpression(var: !1175, expr: !DIExpression())
!1175 = distinct !DIGlobalVariable(scope: null, file: !723, line: 359, type: !193, isLocal: true, isDefinition: true)
!1176 = !DIGlobalVariableExpression(var: !1177, expr: !DIExpression())
!1177 = distinct !DIGlobalVariable(scope: null, file: !723, line: 359, type: !193, isLocal: true, isDefinition: true)
!1178 = !DIGlobalVariableExpression(var: !1179, expr: !DIExpression())
!1179 = distinct !DIGlobalVariable(scope: null, file: !723, line: 361, type: !193, isLocal: true, isDefinition: true)
!1180 = !DIGlobalVariableExpression(var: !1181, expr: !DIExpression())
!1181 = distinct !DIGlobalVariable(scope: null, file: !723, line: 365, type: !193, isLocal: true, isDefinition: true)
!1182 = !DIGlobalVariableExpression(var: !1183, expr: !DIExpression())
!1183 = distinct !DIGlobalVariable(scope: null, file: !723, line: 368, type: !113, isLocal: true, isDefinition: true)
!1184 = !DIGlobalVariableExpression(var: !1185, expr: !DIExpression())
!1185 = distinct !DIGlobalVariable(scope: null, file: !723, line: 372, type: !762, isLocal: true, isDefinition: true)
!1186 = !DIGlobalVariableExpression(var: !1187, expr: !DIExpression())
!1187 = distinct !DIGlobalVariable(scope: null, file: !723, line: 356, type: !463, isLocal: true, isDefinition: true)
!1188 = !DIGlobalVariableExpression(var: !1189, expr: !DIExpression())
!1189 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !377, isLocal: true, isDefinition: true)
!1190 = !DIGlobalVariableExpression(var: !1191, expr: !DIExpression())
!1191 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !396, isLocal: true, isDefinition: true)
!1192 = !DIGlobalVariableExpression(var: !1193, expr: !DIExpression())
!1193 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1212, type: !55, isLocal: true, isDefinition: true)
!1194 = !DIGlobalVariableExpression(var: !1195, expr: !DIExpression())
!1195 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1212, type: !205, isLocal: true, isDefinition: true)
!1196 = !DIGlobalVariableExpression(var: !1197, expr: !DIExpression())
!1197 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !396, isLocal: true, isDefinition: true)
!1198 = !DIGlobalVariableExpression(var: !1199, expr: !DIExpression())
!1199 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !396, isLocal: true, isDefinition: true)
!1200 = !DIGlobalVariableExpression(var: !1201, expr: !DIExpression())
!1201 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !377, isLocal: true, isDefinition: true)
!1202 = !DIGlobalVariableExpression(var: !1203, expr: !DIExpression())
!1203 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !55, isLocal: true, isDefinition: true)
!1204 = !DIGlobalVariableExpression(var: !1205, expr: !DIExpression())
!1205 = distinct !DIGlobalVariable(scope: null, file: !723, line: 1, type: !1206, isLocal: true, isDefinition: true)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 248, align: 8, elements: !1207)
!1207 = !{!1208}
!1208 = !DISubrange(count: 31, lowerBound: 0)
!1209 = !DIGlobalVariableExpression(var: !1210, expr: !DIExpression())
!1210 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !178, isLocal: true, isDefinition: true)
!1211 = !DIGlobalVariableExpression(var: !1212, expr: !DIExpression())
!1212 = distinct !DIGlobalVariable(scope: null, file: !771, line: 441, type: !372, isLocal: true, isDefinition: true)
!1213 = !DIGlobalVariableExpression(var: !1214, expr: !DIExpression())
!1214 = distinct !DIGlobalVariable(scope: null, file: !771, line: 650, type: !442, isLocal: true, isDefinition: true)
!1215 = !DIGlobalVariableExpression(var: !1216, expr: !DIExpression())
!1216 = distinct !DIGlobalVariable(scope: null, file: !771, line: 658, type: !442, isLocal: true, isDefinition: true)
!1217 = !DIGlobalVariableExpression(var: !1218, expr: !DIExpression())
!1218 = distinct !DIGlobalVariable(scope: null, file: !771, line: 667, type: !442, isLocal: true, isDefinition: true)
!1219 = !DIGlobalVariableExpression(var: !1220, expr: !DIExpression())
!1220 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1221, isLocal: true, isDefinition: true)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 296, align: 8, elements: !1222)
!1222 = !{!1223}
!1223 = !DISubrange(count: 37, lowerBound: 0)
!1224 = !DIGlobalVariableExpression(var: !1225, expr: !DIExpression())
!1225 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !168, isLocal: true, isDefinition: true)
!1226 = !DIGlobalVariableExpression(var: !1227, expr: !DIExpression())
!1227 = distinct !DIGlobalVariable(scope: null, file: !771, line: 824, type: !200, isLocal: true, isDefinition: true)
!1228 = !DIGlobalVariableExpression(var: !1229, expr: !DIExpression())
!1229 = distinct !DIGlobalVariable(scope: null, file: !771, line: 843, type: !442, isLocal: true, isDefinition: true)
!1230 = !DIGlobalVariableExpression(var: !1231, expr: !DIExpression())
!1231 = distinct !DIGlobalVariable(scope: null, file: !771, line: 630, type: !103, isLocal: true, isDefinition: true)
!1232 = !DIGlobalVariableExpression(var: !1233, expr: !DIExpression())
!1233 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1425, type: !1221, isLocal: true, isDefinition: true)
!1234 = !DIGlobalVariableExpression(var: !1235, expr: !DIExpression())
!1235 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1425, type: !1236, isLocal: true, isDefinition: true)
!1236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 232, align: 8, elements: !1237)
!1237 = !{!1238}
!1238 = !DISubrange(count: 29, lowerBound: 0)
!1239 = !DIGlobalVariableExpression(var: !1240, expr: !DIExpression())
!1240 = distinct !DIGlobalVariable(scope: null, file: !771, line: 875, type: !372, isLocal: true, isDefinition: true)
!1241 = !DIGlobalVariableExpression(var: !1242, expr: !DIExpression())
!1242 = distinct !DIGlobalVariable(scope: null, file: !771, line: 407, type: !1114, isLocal: true, isDefinition: true)
!1243 = !DIGlobalVariableExpression(var: !1244, expr: !DIExpression())
!1244 = distinct !DIGlobalVariable(scope: null, file: !771, line: 407, type: !1245, isLocal: true, isDefinition: true)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 152, align: 8, elements: !1246)
!1246 = !{!1247}
!1247 = !DISubrange(count: 19, lowerBound: 0)
!1248 = !DIGlobalVariableExpression(var: !1249, expr: !DIExpression())
!1249 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !377, isLocal: true, isDefinition: true)
!1250 = !DIGlobalVariableExpression(var: !1251, expr: !DIExpression())
!1251 = distinct !DIGlobalVariable(scope: null, file: !771, line: 882, type: !442, isLocal: true, isDefinition: true)
!1252 = !DIGlobalVariableExpression(var: !1253, expr: !DIExpression())
!1253 = distinct !DIGlobalVariable(scope: null, file: !771, line: 2067, type: !762, isLocal: true, isDefinition: true)
!1254 = !DIGlobalVariableExpression(var: !1255, expr: !DIExpression())
!1255 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !173, isLocal: true, isDefinition: true)
!1256 = !DIGlobalVariableExpression(var: !1257, expr: !DIExpression())
!1257 = distinct !DIGlobalVariable(scope: null, file: !771, line: 2085, type: !647, isLocal: true, isDefinition: true)
!1258 = !DIGlobalVariableExpression(var: !1259, expr: !DIExpression())
!1259 = distinct !DIGlobalVariable(scope: null, file: !771, line: 2090, type: !757, isLocal: true, isDefinition: true)
!1260 = !DIGlobalVariableExpression(var: !1261, expr: !DIExpression())
!1261 = distinct !DIGlobalVariable(scope: null, file: !771, line: 2101, type: !757, isLocal: true, isDefinition: true)
!1262 = !DIGlobalVariableExpression(var: !1263, expr: !DIExpression())
!1263 = distinct !DIGlobalVariable(scope: null, file: !771, line: 598, type: !442, isLocal: true, isDefinition: true)
!1264 = !DIGlobalVariableExpression(var: !1265, expr: !DIExpression())
!1265 = distinct !DIGlobalVariable(scope: null, file: !771, line: 573, type: !442, isLocal: true, isDefinition: true)
!1266 = !DIGlobalVariableExpression(var: !1267, expr: !DIExpression())
!1267 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1236, isLocal: true, isDefinition: true)
!1268 = !DIGlobalVariableExpression(var: !1269, expr: !DIExpression())
!1269 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1957, type: !372, isLocal: true, isDefinition: true)
!1270 = !DIGlobalVariableExpression(var: !1271, expr: !DIExpression())
!1271 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !377, isLocal: true, isDefinition: true)
!1272 = !DIGlobalVariableExpression(var: !1273, expr: !DIExpression())
!1273 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1274, isLocal: true, isDefinition: true)
!1274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 272, align: 8, elements: !1275)
!1275 = !{!1276}
!1276 = !DISubrange(count: 34, lowerBound: 0)
!1277 = !DIGlobalVariableExpression(var: !1278, expr: !DIExpression())
!1278 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1041, type: !442, isLocal: true, isDefinition: true)
!1279 = !DIGlobalVariableExpression(var: !1280, expr: !DIExpression())
!1280 = distinct !DIGlobalVariable(scope: null, file: !771, line: 488, type: !200, isLocal: true, isDefinition: true)
!1281 = !DIGlobalVariableExpression(var: !1282, expr: !DIExpression())
!1282 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1221, isLocal: true, isDefinition: true)
!1283 = !DIGlobalVariableExpression(var: !1284, expr: !DIExpression())
!1284 = distinct !DIGlobalVariable(scope: null, file: !771, line: 247, type: !442, isLocal: true, isDefinition: true)
!1285 = !DIGlobalVariableExpression(var: !1286, expr: !DIExpression())
!1286 = distinct !DIGlobalVariable(scope: null, file: !771, line: 201, type: !193, isLocal: true, isDefinition: true)
!1287 = !DIGlobalVariableExpression(var: !1288, expr: !DIExpression())
!1288 = distinct !DIGlobalVariable(scope: null, file: !771, line: 209, type: !67, isLocal: true, isDefinition: true)
!1289 = !DIGlobalVariableExpression(var: !1290, expr: !DIExpression())
!1290 = distinct !DIGlobalVariable(scope: null, file: !771, line: 806, type: !200, isLocal: true, isDefinition: true)
!1291 = !DIGlobalVariableExpression(var: !1292, expr: !DIExpression())
!1292 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1117, type: !463, isLocal: true, isDefinition: true)
!1293 = !DIGlobalVariableExpression(var: !1294, expr: !DIExpression())
!1294 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1295, isLocal: true, isDefinition: true)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 400, align: 8, elements: !1296)
!1296 = !{!1297}
!1297 = !DISubrange(count: 50, lowerBound: 0)
!1298 = !DIGlobalVariableExpression(var: !1299, expr: !DIExpression())
!1299 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1074, type: !103, isLocal: true, isDefinition: true)
!1300 = !DIGlobalVariableExpression(var: !1301, expr: !DIExpression())
!1301 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1302, isLocal: true, isDefinition: true)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 312, align: 8, elements: !1303)
!1303 = !{!1304}
!1304 = !DISubrange(count: 39, lowerBound: 0)
!1305 = !DIGlobalVariableExpression(var: !1306, expr: !DIExpression())
!1306 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1307, isLocal: true, isDefinition: true)
!1307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 360, align: 8, elements: !1308)
!1308 = !{!1309}
!1309 = !DISubrange(count: 45, lowerBound: 0)
!1310 = !DIGlobalVariableExpression(var: !1311, expr: !DIExpression())
!1311 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1047, type: !118, isLocal: true, isDefinition: true)
!1312 = !DIGlobalVariableExpression(var: !1313, expr: !DIExpression())
!1313 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1062, type: !1145, isLocal: true, isDefinition: true)
!1314 = !DIGlobalVariableExpression(var: !1315, expr: !DIExpression())
!1315 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1398, type: !403, isLocal: true, isDefinition: true)
!1316 = !DIGlobalVariableExpression(var: !1317, expr: !DIExpression())
!1317 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1411, type: !1318, isLocal: true, isDefinition: true)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 208, align: 8, elements: !1319)
!1319 = !{!1320}
!1320 = !DISubrange(count: 26, lowerBound: 0)
!1321 = !DIGlobalVariableExpression(var: !1322, expr: !DIExpression())
!1322 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1221, isLocal: true, isDefinition: true)
!1323 = !DIGlobalVariableExpression(var: !1324, expr: !DIExpression())
!1324 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1237, type: !377, isLocal: true, isDefinition: true)
!1325 = !DIGlobalVariableExpression(var: !1326, expr: !DIExpression())
!1326 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1237, type: !890, isLocal: true, isDefinition: true)
!1327 = !DIGlobalVariableExpression(var: !1328, expr: !DIExpression())
!1328 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1275, type: !103, isLocal: true, isDefinition: true)
!1329 = !DIGlobalVariableExpression(var: !1330, expr: !DIExpression())
!1330 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1331, isLocal: true, isDefinition: true)
!1331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 344, align: 8, elements: !1332)
!1332 = !{!1333}
!1333 = !DISubrange(count: 43, lowerBound: 0)
!1334 = !DIGlobalVariableExpression(var: !1335, expr: !DIExpression())
!1335 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1302, isLocal: true, isDefinition: true)
!1336 = !DIGlobalVariableExpression(var: !1337, expr: !DIExpression())
!1337 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1341, type: !433, isLocal: true, isDefinition: true)
!1338 = !DIGlobalVariableExpression(var: !1339, expr: !DIExpression())
!1339 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1328, type: !463, isLocal: true, isDefinition: true)
!1340 = !DIGlobalVariableExpression(var: !1341, expr: !DIExpression())
!1341 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1294, type: !426, isLocal: true, isDefinition: true)
!1342 = !DIGlobalVariableExpression(var: !1343, expr: !DIExpression())
!1343 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1373, type: !67, isLocal: true, isDefinition: true)
!1344 = !DIGlobalVariableExpression(var: !1345, expr: !DIExpression())
!1345 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1346, isLocal: true, isDefinition: true)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 376, align: 8, elements: !1347)
!1347 = !{!1348}
!1348 = !DISubrange(count: 47, lowerBound: 0)
!1349 = !DIGlobalVariableExpression(var: !1350, expr: !DIExpression())
!1350 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1987, type: !757, isLocal: true, isDefinition: true)
!1351 = !DIGlobalVariableExpression(var: !1352, expr: !DIExpression())
!1352 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1353, isLocal: true, isDefinition: true)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 440, align: 8, elements: !1354)
!1354 = !{!1355}
!1355 = !DISubrange(count: 55, lowerBound: 0)
!1356 = !DIGlobalVariableExpression(var: !1357, expr: !DIExpression())
!1357 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !150, isLocal: true, isDefinition: true)
!1358 = !DIGlobalVariableExpression(var: !1359, expr: !DIExpression())
!1359 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1352, type: !421, isLocal: true, isDefinition: true)
!1360 = !DIGlobalVariableExpression(var: !1361, expr: !DIExpression())
!1361 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1315, type: !103, isLocal: true, isDefinition: true)
!1362 = !DIGlobalVariableExpression(var: !1363, expr: !DIExpression())
!1363 = distinct !DIGlobalVariable(scope: null, file: !771, line: 734, type: !442, isLocal: true, isDefinition: true)
!1364 = !DIGlobalVariableExpression(var: !1365, expr: !DIExpression())
!1365 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1302, isLocal: true, isDefinition: true)
!1366 = !DIGlobalVariableExpression(var: !1367, expr: !DIExpression())
!1367 = distinct !DIGlobalVariable(scope: null, file: !771, line: 642, type: !193, isLocal: true, isDefinition: true)
!1368 = !DIGlobalVariableExpression(var: !1369, expr: !DIExpression())
!1369 = distinct !DIGlobalVariable(scope: null, file: !771, line: 642, type: !103, isLocal: true, isDefinition: true)
!1370 = !DIGlobalVariableExpression(var: !1371, expr: !DIExpression())
!1371 = distinct !DIGlobalVariable(scope: null, file: !771, line: 541, type: !372, isLocal: true, isDefinition: true)
!1372 = !DIGlobalVariableExpression(var: !1373, expr: !DIExpression())
!1373 = distinct !DIGlobalVariable(scope: null, file: !771, line: 273, type: !475, isLocal: true, isDefinition: true)
!1374 = !DIGlobalVariableExpression(var: !1375, expr: !DIExpression())
!1375 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !377, isLocal: true, isDefinition: true)
!1376 = !DIGlobalVariableExpression(var: !1377, expr: !DIExpression())
!1377 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !55, isLocal: true, isDefinition: true)
!1378 = !DIGlobalVariableExpression(var: !1379, expr: !DIExpression())
!1379 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1380, isLocal: true, isDefinition: true)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 368, align: 8, elements: !1381)
!1381 = !{!1382}
!1382 = !DISubrange(count: 46, lowerBound: 0)
!1383 = !DIGlobalVariableExpression(var: !1384, expr: !DIExpression())
!1384 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1218, type: !463, isLocal: true, isDefinition: true)
!1385 = !DIGlobalVariableExpression(var: !1386, expr: !DIExpression())
!1386 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1387, isLocal: true, isDefinition: true)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 384, align: 8, elements: !1388)
!1388 = !{!1389}
!1389 = !DISubrange(count: 48, lowerBound: 0)
!1390 = !DIGlobalVariableExpression(var: !1391, expr: !DIExpression())
!1391 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !890, isLocal: true, isDefinition: true)
!1392 = !DIGlobalVariableExpression(var: !1393, expr: !DIExpression())
!1393 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !890, isLocal: true, isDefinition: true)
!1394 = !DIGlobalVariableExpression(var: !1395, expr: !DIExpression())
!1395 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1236, isLocal: true, isDefinition: true)
!1396 = !DIGlobalVariableExpression(var: !1397, expr: !DIExpression())
!1397 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1236, isLocal: true, isDefinition: true)
!1398 = !DIGlobalVariableExpression(var: !1399, expr: !DIExpression())
!1399 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1400, isLocal: true, isDefinition: true)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 280, align: 8, elements: !917)
!1401 = !DIGlobalVariableExpression(var: !1402, expr: !DIExpression())
!1402 = distinct !DIGlobalVariable(name: "internal/reflectlite.zerobuffer", linkageName: "internal/reflectlite.zerobuffer", scope: !771, file: !771, line: 1710, type: !9, isLocal: false, isDefinition: true, align: 64)
!1403 = !DIGlobalVariableExpression(var: !1404, expr: !DIExpression())
!1404 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1716, type: !396, isLocal: true, isDefinition: true)
!1405 = !DIGlobalVariableExpression(var: !1406, expr: !DIExpression())
!1406 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1716, type: !396, isLocal: true, isDefinition: true)
!1407 = !DIGlobalVariableExpression(var: !1408, expr: !DIExpression())
!1408 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1791, type: !74, isLocal: true, isDefinition: true)
!1409 = !DIGlobalVariableExpression(var: !1410, expr: !DIExpression())
!1410 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1791, type: !123, isLocal: true, isDefinition: true)
!1411 = !DIGlobalVariableExpression(var: !1412, expr: !DIExpression())
!1412 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1793, type: !74, isLocal: true, isDefinition: true)
!1413 = !DIGlobalVariableExpression(var: !1414, expr: !DIExpression())
!1414 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1793, type: !372, isLocal: true, isDefinition: true)
!1415 = !DIGlobalVariableExpression(var: !1416, expr: !DIExpression())
!1416 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1793, type: !426, isLocal: true, isDefinition: true)
!1417 = !DIGlobalVariableExpression(var: !1418, expr: !DIExpression())
!1418 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1302, isLocal: true, isDefinition: true)
!1419 = !DIGlobalVariableExpression(var: !1420, expr: !DIExpression())
!1420 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1825, type: !1421, isLocal: true, isDefinition: true)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 168, align: 8, elements: !1422)
!1422 = !{!1423}
!1423 = !DISubrange(count: 21, lowerBound: 0)
!1424 = !DIGlobalVariableExpression(var: !1425, expr: !DIExpression())
!1425 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1825, type: !193, isLocal: true, isDefinition: true)
!1426 = !DIGlobalVariableExpression(var: !1427, expr: !DIExpression())
!1427 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !168, isLocal: true, isDefinition: true)
!1428 = !DIGlobalVariableExpression(var: !1429, expr: !DIExpression())
!1429 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1879, type: !757, isLocal: true, isDefinition: true)
!1430 = !DIGlobalVariableExpression(var: !1431, expr: !DIExpression())
!1431 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1903, type: !426, isLocal: true, isDefinition: true)
!1432 = !DIGlobalVariableExpression(var: !1433, expr: !DIExpression())
!1433 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1274, isLocal: true, isDefinition: true)
!1434 = !DIGlobalVariableExpression(var: !1435, expr: !DIExpression())
!1435 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1206, isLocal: true, isDefinition: true)
!1436 = !DIGlobalVariableExpression(var: !1437, expr: !DIExpression())
!1437 = distinct !DIGlobalVariable(scope: null, file: !771, line: 2125, type: !103, isLocal: true, isDefinition: true)
!1438 = !DIGlobalVariableExpression(var: !1439, expr: !DIExpression())
!1439 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !1331, isLocal: true, isDefinition: true)
!1440 = !DIGlobalVariableExpression(var: !1441, expr: !DIExpression())
!1441 = distinct !DIGlobalVariable(scope: null, file: !771, line: 1, type: !890, isLocal: true, isDefinition: true)
!1442 = !DIGlobalVariableExpression(var: !1443, expr: !DIExpression())
!1443 = distinct !DIGlobalVariable(scope: null, file: !1444, line: 1, type: !1145, isLocal: true, isDefinition: true)
!1444 = !DIFile(filename: "visiblefields.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1445 = !DIGlobalVariableExpression(var: !1446, expr: !DIExpression())
!1446 = distinct !DIGlobalVariable(scope: null, file: !1444, line: 1, type: !1109, isLocal: true, isDefinition: true)
!1447 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1448)
!1448 = !{!1449, !1452, !1454, !1456}
!1449 = !DIGlobalVariableExpression(var: !1450, expr: !DIExpression())
!1450 = distinct !DIGlobalVariable(scope: null, file: !1451, line: 1, type: !762, isLocal: true, isDefinition: true)
!1451 = !DIFile(filename: "checkpoint.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!1452 = !DIGlobalVariableExpression(var: !1453, expr: !DIExpression())
!1453 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1454 = !DIGlobalVariableExpression(var: !1455, expr: !DIExpression())
!1455 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1456 = !DIGlobalVariableExpression(var: !1457, expr: !DIExpression())
!1457 = distinct !DIGlobalVariable(scope: null, file: !1451, line: 1, type: !168, isLocal: true, isDefinition: true)
!1458 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1459)
!1459 = !{!0, !50, !52, !1460, !1462, !1464, !1470, !1472, !1474, !58, !61, !1476, !65, !1478, !70, !1480, !1482, !1484, !1487, !72, !77, !83, !1489}
!1460 = !DIGlobalVariableExpression(var: !1461, expr: !DIExpression())
!1461 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1462 = !DIGlobalVariableExpression(var: !1463, expr: !DIExpression())
!1463 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1464 = !DIGlobalVariableExpression(var: !1465, expr: !DIExpression())
!1465 = distinct !DIGlobalVariable(scope: null, file: !1466, line: 1, type: !1467, isLocal: true, isDefinition: true)
!1466 = !DIFile(filename: "queue.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!1467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 496, align: 8, elements: !1468)
!1468 = !{!1469}
!1469 = !DISubrange(count: 62, lowerBound: 0)
!1470 = !DIGlobalVariableExpression(var: !1471, expr: !DIExpression())
!1471 = distinct !DIGlobalVariable(scope: null, file: !1466, line: 1, type: !1467, isLocal: true, isDefinition: true)
!1472 = !DIGlobalVariableExpression(var: !1473, expr: !DIExpression())
!1473 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !762, isLocal: true, isDefinition: true)
!1474 = !DIGlobalVariableExpression(var: !1475, expr: !DIExpression())
!1475 = distinct !DIGlobalVariable(name: "internal/task.goroutineID", linkageName: "internal/task.goroutineID", scope: !2, file: !2, line: 38, type: !21, isLocal: false, isDefinition: true, align: 64)
!1476 = !DIGlobalVariableExpression(var: !1477, expr: !DIExpression())
!1477 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !108, isLocal: true, isDefinition: true)
!1478 = !DIGlobalVariableExpression(var: !1479, expr: !DIExpression())
!1479 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !762, isLocal: true, isDefinition: true)
!1480 = !DIGlobalVariableExpression(var: !1481, expr: !DIExpression())
!1481 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !762, isLocal: true, isDefinition: true)
!1482 = !DIGlobalVariableExpression(var: !1483, expr: !DIExpression())
!1483 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !372, isLocal: true, isDefinition: true)
!1484 = !DIGlobalVariableExpression(var: !1485, expr: !DIExpression())
!1485 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !1486, isLocal: true, isDefinition: true)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 176, align: 8, elements: !973)
!1487 = !DIGlobalVariableExpression(var: !1488, expr: !DIExpression())
!1488 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !421, isLocal: true, isDefinition: true)
!1489 = !DIGlobalVariableExpression(var: !1490, expr: !DIExpression())
!1490 = distinct !DIGlobalVariable(name: "internal/task.stackScanLock", linkageName: "internal/task.stackScanLock", scope: !2, file: !2, line: 263, type: !63, isLocal: false, isDefinition: true, align: 32)
!1491 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1492 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1493)
!1493 = !{!1494, !1497, !1499, !1502, !1504, !1507, !1509, !1511, !1513, !1515, !1518, !1520, !1522, !1525, !1528, !1531, !1534, !1536, !1538, !1540, !1557, !1559, !1562, !1565, !100, !106, !111, !1568, !1570, !116, !1572, !1574, !1576, !1578, !1580, !1582, !1584, !121, !1586, !1591, !1594, !1596, !1598, !1600, !1603, !1605, !1607, !1609, !1611, !1613, !1615, !1617, !1619, !1621, !1623, !1625, !1627, !1629, !126, !1631, !129, !1633, !132, !1639, !1641, !1643, !1645, !134, !136, !1647, !1649, !1651, !1653, !1655, !138, !1657, !1659, !1661, !1663, !1681, !1683, !1685, !1705, !1707, !1709, !1711, !1713, !1715, !1717, !1719, !140, !1721, !1723, !1726, !1728}
!1494 = !DIGlobalVariableExpression(var: !1495, expr: !DIExpression())
!1495 = distinct !DIGlobalVariable(name: "runtime.xorshift32State", linkageName: "runtime.xorshift32State", scope: !1496, file: !1496, line: 32, type: !43, isLocal: false, isDefinition: true, align: 32)
!1496 = !DIFile(filename: "algorithm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1497 = !DIGlobalVariableExpression(var: !1498, expr: !DIExpression())
!1498 = distinct !DIGlobalVariable(name: "runtime.xorshift64State", linkageName: "runtime.xorshift64State", scope: !1496, file: !1496, line: 52, type: !11, isLocal: false, isDefinition: true, align: 64)
!1499 = !DIGlobalVariableExpression(var: !1500, expr: !DIExpression())
!1500 = distinct !DIGlobalVariable(name: "runtime.inf", linkageName: "runtime.inf", scope: !1501, file: !1501, line: 9, type: !517, isLocal: false, isDefinition: true, align: 64)
!1501 = !DIFile(filename: "float.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1502 = !DIGlobalVariableExpression(var: !1503, expr: !DIExpression())
!1503 = distinct !DIGlobalVariable(name: "runtime.heapSize", linkageName: "runtime.heapSize", scope: !128, file: !128, line: 298, type: !21, isLocal: false, isDefinition: true, align: 64)
!1504 = !DIGlobalVariableExpression(var: !1505, expr: !DIExpression())
!1505 = distinct !DIGlobalVariable(scope: null, file: !1506, line: 210, type: !1486, isLocal: true, isDefinition: true)
!1506 = !DIFile(filename: "chan.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1507 = !DIGlobalVariableExpression(var: !1508, expr: !DIExpression())
!1508 = distinct !DIGlobalVariable(scope: null, file: !1506, line: 267, type: !1486, isLocal: true, isDefinition: true)
!1509 = !DIGlobalVariableExpression(var: !1510, expr: !DIExpression())
!1510 = distinct !DIGlobalVariable(scope: null, file: !1506, line: 348, type: !67, isLocal: true, isDefinition: true)
!1511 = !DIGlobalVariableExpression(var: !1512, expr: !DIExpression())
!1512 = distinct !DIGlobalVariable(scope: null, file: !1506, line: 358, type: !118, isLocal: true, isDefinition: true)
!1513 = !DIGlobalVariableExpression(var: !1514, expr: !DIExpression())
!1514 = distinct !DIGlobalVariable(name: "runtime.chanSelectLock", linkageName: "runtime.chanSelectLock", scope: !1506, file: !1506, line: 402, type: !63, isLocal: false, isDefinition: true, align: 32)
!1515 = !DIGlobalVariableExpression(var: !1516, expr: !DIExpression())
!1516 = distinct !DIGlobalVariable(scope: null, file: !1517, line: 1, type: !108, isLocal: true, isDefinition: true)
!1517 = !DIFile(filename: "debug.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1518 = !DIGlobalVariableExpression(var: !1519, expr: !DIExpression())
!1519 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1520 = !DIGlobalVariableExpression(var: !1521, expr: !DIExpression())
!1521 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1522 = !DIGlobalVariableExpression(var: !1523, expr: !DIExpression())
!1523 = distinct !DIGlobalVariable(scope: null, file: !1524, line: 13, type: !103, isLocal: true, isDefinition: true)
!1524 = !DIFile(filename: "env.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1525 = !DIGlobalVariableExpression(var: !1526, expr: !DIExpression())
!1526 = distinct !DIGlobalVariable(name: "runtime.godebugUpdate", linkageName: "runtime.godebugUpdate", scope: !1527, file: !1527, line: 142, type: !346, isLocal: false, isDefinition: true, align: 64)
!1527 = !DIFile(filename: "runtime.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1528 = !DIGlobalVariableExpression(var: !1529, expr: !DIExpression())
!1529 = distinct !DIGlobalVariable(name: "runtime.buildVersion", linkageName: "runtime.buildVersion", scope: !1530, file: !1530, line: 10, type: !360, isLocal: false, isDefinition: true, align: 64)
!1530 = !DIFile(filename: "extern.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1531 = !DIGlobalVariableExpression(var: !1532, expr: !DIExpression())
!1532 = distinct !DIGlobalVariable(name: "runtime.zeroSizedAlloc", linkageName: "runtime.zeroSizedAlloc", scope: !1533, file: !1533, line: 30, type: !45, isLocal: false, isDefinition: true, align: 8)
!1533 = !DIFile(filename: "gc_boehm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1534 = !DIGlobalVariableExpression(var: !1535, expr: !DIExpression())
!1535 = distinct !DIGlobalVariable(name: "runtime.gcLock", linkageName: "runtime.gcLock", scope: !1533, file: !1533, line: 32, type: !63, isLocal: false, isDefinition: true, align: 32)
!1536 = !DIGlobalVariableExpression(var: !1537, expr: !DIExpression())
!1537 = distinct !DIGlobalVariable(scope: null, file: !1533, line: 61, type: !178, isLocal: true, isDefinition: true)
!1538 = !DIGlobalVariableExpression(var: !1539, expr: !DIExpression())
!1539 = distinct !DIGlobalVariable(scope: null, file: !1533, line: 93, type: !74, isLocal: true, isDefinition: true)
!1540 = !DIGlobalVariableExpression(var: !1541, expr: !DIExpression())
!1541 = distinct !DIGlobalVariable(name: "runtime.gcMemStats", linkageName: "runtime.gcMemStats", scope: !1533, file: !1533, line: 112, type: !1542, isLocal: false, isDefinition: true, align: 64)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.libgc_prof_stats", baseType: !1543)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, size: 768, align: 64, elements: !1544)
!1544 = !{!1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "heapsize_full", baseType: !21, size: 64, align: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "free_bytes_full", baseType: !21, size: 64, align: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "unmapped_bytes", baseType: !21, size: 64, align: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_allocd_since_gc", baseType: !21, size: 64, align: 64, offset: 192)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "allocd_bytes_before_gc", baseType: !21, size: 64, align: 64, offset: 256)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "non_gc_bytes", baseType: !21, size: 64, align: 64, offset: 320)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "gc_no", baseType: !21, size: 64, align: 64, offset: 384)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "markers_m1", baseType: !21, size: 64, align: 64, offset: 448)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_reclaimed_since_gc", baseType: !21, size: 64, align: 64, offset: 512)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_bytes_before_gc", baseType: !21, size: 64, align: 64, offset: 576)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "expl_freed_bytes_since_gc", baseType: !21, size: 64, align: 64, offset: 640)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "obtained_from_os_bytes", baseType: !21, size: 64, align: 64, offset: 704)
!1557 = !DIGlobalVariableExpression(var: !1558, expr: !DIExpression())
!1558 = distinct !DIGlobalVariable(scope: null, file: !1533, line: 135, type: !1274, isLocal: true, isDefinition: true)
!1559 = !DIGlobalVariableExpression(var: !1560, expr: !DIExpression())
!1560 = distinct !DIGlobalVariable(scope: null, file: !1561, line: 616, type: !890, isLocal: true, isDefinition: true)
!1561 = !DIFile(filename: "hashmap.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1562 = !DIGlobalVariableExpression(var: !1563, expr: !DIExpression())
!1563 = distinct !DIGlobalVariable(scope: null, file: !1564, line: 80, type: !890, isLocal: true, isDefinition: true)
!1564 = !DIFile(filename: "interface.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1565 = !DIGlobalVariableExpression(var: !1566, expr: !DIExpression())
!1566 = distinct !DIGlobalVariable(scope: null, file: !1564, line: 89, type: !1567, isLocal: true, isDefinition: true)
!1567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 144, align: 8, elements: !933)
!1568 = !DIGlobalVariableExpression(var: !1569, expr: !DIExpression())
!1569 = distinct !DIGlobalVariable(scope: null, file: !102, line: 103, type: !1486, isLocal: true, isDefinition: true)
!1570 = !DIGlobalVariableExpression(var: !1571, expr: !DIExpression())
!1571 = distinct !DIGlobalVariable(scope: null, file: !102, line: 122, type: !1567, isLocal: true, isDefinition: true)
!1572 = !DIGlobalVariableExpression(var: !1573, expr: !DIExpression())
!1573 = distinct !DIGlobalVariable(scope: null, file: !102, line: 189, type: !55, isLocal: true, isDefinition: true)
!1574 = !DIGlobalVariableExpression(var: !1575, expr: !DIExpression())
!1575 = distinct !DIGlobalVariable(scope: null, file: !102, line: 194, type: !1567, isLocal: true, isDefinition: true)
!1576 = !DIGlobalVariableExpression(var: !1577, expr: !DIExpression())
!1577 = distinct !DIGlobalVariable(scope: null, file: !102, line: 199, type: !1567, isLocal: true, isDefinition: true)
!1578 = !DIGlobalVariableExpression(var: !1579, expr: !DIExpression())
!1579 = distinct !DIGlobalVariable(scope: null, file: !102, line: 205, type: !108, isLocal: true, isDefinition: true)
!1580 = !DIGlobalVariableExpression(var: !1581, expr: !DIExpression())
!1581 = distinct !DIGlobalVariable(scope: null, file: !102, line: 212, type: !1221, isLocal: true, isDefinition: true)
!1582 = !DIGlobalVariableExpression(var: !1583, expr: !DIExpression())
!1583 = distinct !DIGlobalVariable(scope: null, file: !102, line: 217, type: !1486, isLocal: true, isDefinition: true)
!1584 = !DIGlobalVariableExpression(var: !1585, expr: !DIExpression())
!1585 = distinct !DIGlobalVariable(scope: null, file: !102, line: 222, type: !123, isLocal: true, isDefinition: true)
!1586 = !DIGlobalVariableExpression(var: !1587, expr: !DIExpression())
!1587 = distinct !DIGlobalVariable(scope: null, file: !102, line: 231, type: !1588, isLocal: true, isDefinition: true)
!1588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 416, align: 8, elements: !1589)
!1589 = !{!1590}
!1590 = !DISubrange(count: 52, lowerBound: 0)
!1591 = !DIGlobalVariableExpression(var: !1592, expr: !DIExpression())
!1592 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !890, isLocal: true, isDefinition: true)
!1593 = !DIFile(filename: "poll.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1594 = !DIGlobalVariableExpression(var: !1595, expr: !DIExpression())
!1595 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !1486, isLocal: true, isDefinition: true)
!1596 = !DIGlobalVariableExpression(var: !1597, expr: !DIExpression())
!1597 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !118, isLocal: true, isDefinition: true)
!1598 = !DIGlobalVariableExpression(var: !1599, expr: !DIExpression())
!1599 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !403, isLocal: true, isDefinition: true)
!1600 = !DIGlobalVariableExpression(var: !1601, expr: !DIExpression())
!1601 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 117, type: !200, isLocal: true, isDefinition: true)
!1602 = !DIFile(filename: "print.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1603 = !DIGlobalVariableExpression(var: !1604, expr: !DIExpression())
!1604 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 120, type: !372, isLocal: true, isDefinition: true)
!1605 = !DIGlobalVariableExpression(var: !1606, expr: !DIExpression())
!1606 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 123, type: !372, isLocal: true, isDefinition: true)
!1607 = !DIGlobalVariableExpression(var: !1608, expr: !DIExpression())
!1608 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 197, type: !200, isLocal: true, isDefinition: true)
!1609 = !DIGlobalVariableExpression(var: !1610, expr: !DIExpression())
!1610 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 200, type: !372, isLocal: true, isDefinition: true)
!1611 = !DIGlobalVariableExpression(var: !1612, expr: !DIExpression())
!1612 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 203, type: !372, isLocal: true, isDefinition: true)
!1613 = !DIGlobalVariableExpression(var: !1614, expr: !DIExpression())
!1614 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 272, type: !113, isLocal: true, isDefinition: true)
!1615 = !DIGlobalVariableExpression(var: !1616, expr: !DIExpression())
!1616 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 279, type: !113, isLocal: true, isDefinition: true)
!1617 = !DIGlobalVariableExpression(var: !1618, expr: !DIExpression())
!1618 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 355, type: !372, isLocal: true, isDefinition: true)
!1619 = !DIGlobalVariableExpression(var: !1620, expr: !DIExpression())
!1620 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 357, type: !200, isLocal: true, isDefinition: true)
!1621 = !DIGlobalVariableExpression(var: !1622, expr: !DIExpression())
!1622 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 373, type: !200, isLocal: true, isDefinition: true)
!1623 = !DIGlobalVariableExpression(var: !1624, expr: !DIExpression())
!1624 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 391, type: !372, isLocal: true, isDefinition: true)
!1625 = !DIGlobalVariableExpression(var: !1626, expr: !DIExpression())
!1626 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 393, type: !442, isLocal: true, isDefinition: true)
!1627 = !DIGlobalVariableExpression(var: !1628, expr: !DIExpression())
!1628 = distinct !DIGlobalVariable(scope: null, file: !1527, line: 36, type: !475, isLocal: true, isDefinition: true)
!1629 = !DIGlobalVariableExpression(var: !1630, expr: !DIExpression())
!1630 = distinct !DIGlobalVariable(scope: null, file: !1527, line: 97, type: !55, isLocal: true, isDefinition: true)
!1631 = !DIGlobalVariableExpression(var: !1632, expr: !DIExpression())
!1632 = distinct !DIGlobalVariable(name: "runtime.main_argc", linkageName: "runtime.main_argc", scope: !128, file: !128, line: 105, type: !60, isLocal: false, isDefinition: true, align: 32)
!1633 = !DIGlobalVariableExpression(var: !1634, expr: !DIExpression())
!1634 = distinct !DIGlobalVariable(name: "runtime.args", linkageName: "runtime.args", scope: !128, file: !128, line: 107, type: !1635, isLocal: false, isDefinition: true, align: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]string", size: 192, align: 64, elements: !1636)
!1636 = !{!1637, !364, !369}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !1638, size: 64, align: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64, dwarfAddressSpace: 0)
!1639 = !DIGlobalVariableExpression(var: !1640, expr: !DIExpression())
!1640 = distinct !DIGlobalVariable(scope: null, file: !128, line: 160, type: !205, isLocal: true, isDefinition: true)
!1641 = !DIGlobalVariableExpression(var: !1642, expr: !DIExpression())
!1642 = distinct !DIGlobalVariable(scope: null, file: !128, line: 163, type: !426, isLocal: true, isDefinition: true)
!1643 = !DIGlobalVariableExpression(var: !1644, expr: !DIExpression())
!1644 = distinct !DIGlobalVariable(scope: null, file: !128, line: 165, type: !426, isLocal: true, isDefinition: true)
!1645 = !DIGlobalVariableExpression(var: !1646, expr: !DIExpression())
!1646 = distinct !DIGlobalVariable(scope: null, file: !128, line: 167, type: !103, isLocal: true, isDefinition: true)
!1647 = !DIGlobalVariableExpression(var: !1648, expr: !DIExpression())
!1648 = distinct !DIGlobalVariable(name: "runtime.heapMaxSize", linkageName: "runtime.heapMaxSize", scope: !128, file: !128, line: 299, type: !21, isLocal: false, isDefinition: true, align: 64)
!1649 = !DIGlobalVariableExpression(var: !1650, expr: !DIExpression())
!1650 = distinct !DIGlobalVariable(name: "runtime.heapStart", linkageName: "runtime.heapStart", scope: !128, file: !128, line: 301, type: !21, isLocal: false, isDefinition: true, align: 64)
!1651 = !DIGlobalVariableExpression(var: !1652, expr: !DIExpression())
!1652 = distinct !DIGlobalVariable(name: "runtime.heapEnd", linkageName: "runtime.heapEnd", scope: !128, file: !128, line: 301, type: !21, isLocal: false, isDefinition: true, align: 64)
!1653 = !DIGlobalVariableExpression(var: !1654, expr: !DIExpression())
!1654 = distinct !DIGlobalVariable(scope: null, file: !128, line: 317, type: !1145, isLocal: true, isDefinition: true)
!1655 = !DIGlobalVariableExpression(var: !1656, expr: !DIExpression())
!1656 = distinct !DIGlobalVariable(name: "runtime.hasSignals", linkageName: "runtime.hasSignals", scope: !128, file: !128, line: 345, type: !47, isLocal: false, isDefinition: true, align: 8)
!1657 = !DIGlobalVariableExpression(var: !1658, expr: !DIExpression())
!1658 = distinct !DIGlobalVariable(scope: null, file: !128, line: 365, type: !403, isLocal: true, isDefinition: true)
!1659 = !DIGlobalVariableExpression(var: !1660, expr: !DIExpression())
!1660 = distinct !DIGlobalVariable(scope: null, file: !128, line: 382, type: !403, isLocal: true, isDefinition: true)
!1661 = !DIGlobalVariableExpression(var: !1662, expr: !DIExpression())
!1662 = distinct !DIGlobalVariable(scope: null, file: !128, line: 392, type: !403, isLocal: true, isDefinition: true)
!1663 = !DIGlobalVariableExpression(var: !1664, expr: !DIExpression())
!1664 = distinct !DIGlobalVariable(name: "runtime.signalRecvWaiter", linkageName: "runtime.signalRecvWaiter", scope: !128, file: !128, line: 447, type: !1665, isLocal: false, isDefinition: true, align: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Pointer[internal/task.Task]", baseType: !1666)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !1667)
!1667 = !{!1668, !40, !1680}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !1669, align: 64)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1670, align: 64, elements: !964)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64, align: 64, dwarfAddressSpace: 0)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !1672)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !1673)
!1673 = !{!1674, !8, !10, !12, !1675, !44, !46, !48, !49}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !1670, size: 64, align: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !1676, size: 384, align: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !1677)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !1678)
!1678 = !{!20, !22, !24, !25, !1679, !27}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !1670, size: 64, align: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !9, size: 64, align: 64)
!1681 = !DIGlobalVariableExpression(var: !1682, expr: !DIExpression())
!1682 = distinct !DIGlobalVariable(scope: null, file: !128, line: 458, type: !1206, isLocal: true, isDefinition: true)
!1683 = !DIGlobalVariableExpression(var: !1684, expr: !DIExpression())
!1684 = distinct !DIGlobalVariable(scope: null, file: !128, line: 514, type: !1145, isLocal: true, isDefinition: true)
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
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !346, size: 128, align: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "arg", baseType: !1703, size: 128, align: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "any", baseType: !499)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "callback", baseType: !346, size: 128, align: 64, offset: 128)
!1705 = !DIGlobalVariableExpression(var: !1706, expr: !DIExpression())
!1706 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 12, type: !200, isLocal: true, isDefinition: true)
!1707 = !DIGlobalVariableExpression(var: !1708, expr: !DIExpression())
!1708 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 19, type: !200, isLocal: true, isDefinition: true)
!1709 = !DIGlobalVariableExpression(var: !1710, expr: !DIExpression())
!1710 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 26, type: !200, isLocal: true, isDefinition: true)
!1711 = !DIGlobalVariableExpression(var: !1712, expr: !DIExpression())
!1712 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 45, type: !475, isLocal: true, isDefinition: true)
!1713 = !DIGlobalVariableExpression(var: !1714, expr: !DIExpression())
!1714 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 51, type: !67, isLocal: true, isDefinition: true)
!1715 = !DIGlobalVariableExpression(var: !1716, expr: !DIExpression())
!1716 = distinct !DIGlobalVariable(name: "runtime.timerQueueLock", linkageName: "runtime.timerQueueLock", scope: !142, file: !142, line: 16, type: !63, isLocal: false, isDefinition: true, align: 32)
!1717 = !DIGlobalVariableExpression(var: !1718, expr: !DIExpression())
!1718 = distinct !DIGlobalVariable(name: "runtime.timerQueueStarted", linkageName: "runtime.timerQueueStarted", scope: !142, file: !142, line: 17, type: !47, isLocal: false, isDefinition: true, align: 8)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(name: "runtime.timerFutex", linkageName: "runtime.timerFutex", scope: !142, file: !142, line: 18, type: !32, isLocal: false, isDefinition: true, align: 32)
!1721 = !DIGlobalVariableExpression(var: !1722, expr: !DIExpression())
!1722 = distinct !DIGlobalVariable(name: "runtime.atomicsLock", linkageName: "runtime.atomicsLock", scope: !142, file: !142, line: 151, type: !64, isLocal: false, isDefinition: true, align: 32)
!1723 = !DIGlobalVariableExpression(var: !1724, expr: !DIExpression())
!1724 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !205, isLocal: true, isDefinition: true)
!1725 = !DIFile(filename: "sync.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !205, isLocal: true, isDefinition: true)
!1728 = !DIGlobalVariableExpression(var: !1729, expr: !DIExpression())
!1729 = distinct !DIGlobalVariable(scope: null, file: !1730, line: 45, type: !421, isLocal: true, isDefinition: true)
!1730 = !DIFile(filename: "time_go123.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1731 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1732 = !{!"TinyGo version 0.41.1"}
!1733 = !{i32 2, !"Debug Info Version", i32 3}
!1734 = !{i32 7, !"Dwarf Version", i32 4}
!1735 = distinct !DISubprogram(name: "(*internal/task.Mutex).Unlock", linkageName: "(*internal/task.Mutex).Unlock", scope: !54, file: !54, line: 49, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1458, retainedNodes: !1739)
!1736 = !DISubroutineType(cc: DW_CC_nocall, types: !1737)
!1737 = !{!1738}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64, dwarfAddressSpace: 0)
!1739 = !{!1740, !1741}
!1740 = !DILocalVariable(name: "m", arg: 1, scope: !1735, file: !54, line: 49, type: !1738)
!1741 = !DILocalVariable(name: "old", scope: !1735, file: !54, line: 50, type: !43)
!1742 = !DILocation(line: 50, column: 12, scope: !1735)
!1743 = !DILocation(line: 50, column: 14, scope: !1735)
!1744 = !DILocalVariable(name: "x", arg: 1, scope: !1745, file: !1746, line: 153, type: !1749)
!1745 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Swap", linkageName: "(*sync/atomic.Uint32).Swap", scope: !1746, file: !1746, line: 153, type: !1747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1750)
!1746 = !DIFile(filename: "type.go", directory: "/usr/local/go/src/sync/atomic")
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!1749, !43}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64, dwarfAddressSpace: 0)
!1750 = !{!1744, !1751}
!1751 = !DILocalVariable(name: "new", arg: 2, scope: !1745, file: !1746, line: 153, type: !43)
!1752 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 50, column: 24, scope: !1735)
!1754 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !1753)
!1755 = !DILocalVariable(name: "addr", arg: 1, scope: !1756, file: !1757, line: 77, type: !1760)
!1756 = distinct !DISubprogram(name: "sync/atomic.SwapUint32", linkageName: "sync/atomic.SwapUint32", scope: !1757, file: !1757, line: 77, type: !1758, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1761)
!1757 = !DIFile(filename: "doc.go", directory: "/usr/local/go/src/sync/atomic")
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!1760, !43}
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64, dwarfAddressSpace: 0)
!1761 = !{!1755, !1762}
!1762 = !DILocalVariable(name: "new", arg: 2, scope: !1756, file: !1757, line: 77, type: !43)
!1763 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !1753)
!1765 = !DILocation(line: 50, column: 29, scope: !1735)
!1766 = !DILocation(line: 0, scope: !1735)
!1767 = !DILocation(line: 52, column: 8, scope: !1735)
!1768 = !DILocation(line: 55, column: 3, scope: !1735)
!1769 = !DILocalVariable(name: "f", arg: 1, scope: !1770, file: !1771, line: 53, type: !1774)
!1770 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wake", linkageName: "(*internal/futex.Futex).Wake", scope: !1771, file: !1771, line: 53, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !1775)
!1771 = !DIFile(filename: "futex.go", directory: "/usr/local/lib/tinygo/src/internal/futex")
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!1774}
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64, dwarfAddressSpace: 0)
!1775 = !{!1769}
!1776 = !DILocation(line: 54, column: 46, scope: !1770, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 55, column: 15, scope: !1735)
!1778 = !DILocation(line: 54, column: 19, scope: !1770, inlinedAt: !1777)
!1779 = !DILocation(line: 57, column: 2, scope: !1735)
!1780 = distinct !DISubprogram(name: "internal/task.taskExited", linkageName: "tinygo_task_exited", scope: !2, file: !2, line: 125, type: !1781, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1458, retainedNodes: !1783)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!3}
!1783 = !{!1784, !1785, !1786, !1788}
!1784 = !DILocalVariable(name: "t", arg: 1, scope: !1780, file: !2, line: 125, type: !3)
!1785 = !DILocalVariable(name: "found", scope: !1780, file: !2, line: 133, type: !47)
!1786 = !DILocalVariable(name: "q", scope: !1780, file: !2, line: 134, type: !1787)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64, align: 64, dwarfAddressSpace: 0)
!1788 = !DILocalVariable(name: "otherGoroutines", scope: !1780, file: !2, line: 99, type: !43)
!1789 = !DILocation(line: 125, column: 6, scope: !1780)
!1790 = !DILocalVariable(name: "m", arg: 1, scope: !1791, file: !54, line: 31, type: !1738)
!1791 = distinct !DISubprogram(name: "(*internal/task.Mutex).Lock", linkageName: "(*internal/task.Mutex).Lock", scope: !54, file: !54, line: 31, type: !1792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1458, retainedNodes: !1793)
!1792 = !DISubroutineType(types: !1737)
!1793 = !{!1790}
!1794 = !DILocation(line: 33, column: 5, scope: !1791, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 132, column: 21, scope: !1780)
!1796 = !DILocalVariable(name: "x", arg: 1, scope: !1797, file: !1746, line: 156, type: !1749)
!1797 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).CompareAndSwap", linkageName: "(*sync/atomic.Uint32).CompareAndSwap", scope: !1746, file: !1746, line: 156, type: !1798, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1800)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!1749, !43, !43}
!1800 = !{!1796, !1801, !1802}
!1801 = !DILocalVariable(name: "old", arg: 2, scope: !1797, file: !1746, line: 156, type: !43)
!1802 = !DILocalVariable(name: "new", arg: 3, scope: !1797, file: !1746, line: 156, type: !43)
!1803 = !DILocation(line: 157, column: 31, scope: !1797, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 33, column: 27, scope: !1791, inlinedAt: !1795)
!1805 = !DILocation(line: 157, column: 36, scope: !1797, inlinedAt: !1804)
!1806 = !DILocation(line: 157, column: 41, scope: !1797, inlinedAt: !1804)
!1807 = !DILocalVariable(name: "addr", arg: 1, scope: !1808, file: !1757, line: 99, type: !1760)
!1808 = distinct !DISubprogram(name: "sync/atomic.CompareAndSwapUint32", linkageName: "sync/atomic.CompareAndSwapUint32", scope: !1757, file: !1757, line: 99, type: !1809, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1811)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!1760, !43, !43}
!1811 = !{!1807, !1812, !1813}
!1812 = !DILocalVariable(name: "old", arg: 2, scope: !1808, file: !1757, line: 99, type: !43)
!1813 = !DILocalVariable(name: "new", arg: 3, scope: !1808, file: !1757, line: 99, type: !43)
!1814 = !DILocation(line: 99, column: 6, scope: !1808, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 157, column: 29, scope: !1797, inlinedAt: !1804)
!1816 = !DILocation(line: 0, scope: !1791, inlinedAt: !1795)
!1817 = !DILocation(line: 43, column: 6, scope: !1791, inlinedAt: !1795)
!1818 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 43, column: 18, scope: !1791, inlinedAt: !1795)
!1820 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !1819)
!1821 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !1819)
!1823 = !DILocation(line: 43, column: 22, scope: !1791, inlinedAt: !1795)
!1824 = !DILocation(line: 45, column: 3, scope: !1791, inlinedAt: !1795)
!1825 = !DILocalVariable(name: "f", arg: 1, scope: !1826, file: !1771, line: 25, type: !1774)
!1826 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wait", linkageName: "(*internal/futex.Futex).Wait", scope: !1771, file: !1771, line: 25, type: !1827, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !1829)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!1774, !43}
!1829 = !{!1825, !1830}
!1830 = !DILocalVariable(name: "cmp", arg: 2, scope: !1826, file: !1771, line: 25, type: !43)
!1831 = !DILocation(line: 26, column: 46, scope: !1826, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 45, column: 15, scope: !1791, inlinedAt: !1795)
!1833 = !DILocation(line: 26, column: 58, scope: !1826, inlinedAt: !1832)
!1834 = !DILocation(line: 26, column: 19, scope: !1826, inlinedAt: !1832)
!1835 = !DILocation(line: 133, column: 2, scope: !1780)
!1836 = !DILocation(line: 134, column: 6, scope: !1780)
!1837 = !DILocation(line: 134, column: 25, scope: !1780)
!1838 = !DILocation(line: 134, column: 28, scope: !1780)
!1839 = !DILocation(line: 0, scope: !1780)
!1840 = !DILocation(line: 134, column: 52, scope: !1780)
!1841 = !DILocation(line: 134, column: 26, scope: !1780)
!1842 = !DILocation(line: 135, column: 7, scope: !1780)
!1843 = !DILocation(line: 135, column: 12, scope: !1780)
!1844 = !DILocation(line: 135, column: 9, scope: !1780)
!1845 = !DILocation(line: 134, column: 36, scope: !1780)
!1846 = !DILocation(line: 136, column: 5, scope: !1780)
!1847 = !DILocation(line: 136, column: 9, scope: !1780)
!1848 = !DILocation(line: 136, column: 17, scope: !1780)
!1849 = !DILocation(line: 136, column: 4, scope: !1780)
!1850 = !DILocation(line: 137, column: 4, scope: !1780)
!1851 = !DILocation(line: 141, column: 2, scope: !1780)
!1852 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 142, column: 23, scope: !1780)
!1854 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !1853)
!1856 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !1855)
!1857 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !1855)
!1859 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !1853)
!1860 = !DILocation(line: 0, scope: !1735, inlinedAt: !1853)
!1861 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !1853)
!1862 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !1853)
!1863 = !DILocation(line: 54, column: 46, scope: !1770, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !1853)
!1865 = !DILocation(line: 54, column: 19, scope: !1770, inlinedAt: !1864)
!1866 = !DILocation(line: 145, column: 6, scope: !1780)
!1867 = !DILocation(line: 148, column: 2, scope: !1780)
!1868 = !DILocation(line: 142, column: 23, scope: !1780)
!1869 = !DILocation(line: 146, column: 15, scope: !1780)
!1870 = distinct !DISubprogram(name: "internal/task.tingyo_task_gc_pause", linkageName: "tinygo_task_gc_pause", scope: !2, file: !2, line: 266, type: !1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1458, retainedNodes: !1873)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!60}
!1873 = !{!1874, !1875}
!1874 = !DILocalVariable(name: "sig", arg: 1, scope: !1870, file: !2, line: 266, type: !60)
!1875 = !DILocalVariable(name: "stackBottom", scope: !1870, file: !2, line: 28, type: !21)
!1876 = !DILocation(line: 266, column: 6, scope: !1870)
!1877 = !DILocation(line: 62, column: 34, scope: !1878, inlinedAt: !1882)
!1878 = distinct !DISubprogram(name: "internal/task.Current", linkageName: "internal/task.Current", scope: !2, file: !2, line: 61, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1458, retainedNodes: !1880)
!1879 = !DISubroutineType(types: !15)
!1880 = !{!1881}
!1881 = !DILocalVariable(name: "t", scope: !1878, file: !2, line: 62, type: !3)
!1882 = distinct !DILocation(line: 268, column: 9, scope: !1870)
!1883 = !DILocation(line: 63, column: 5, scope: !1878, inlinedAt: !1882)
!1884 = !DILocation(line: 63, column: 7, scope: !1878, inlinedAt: !1882)
!1885 = !DILocation(line: 0, scope: !1878, inlinedAt: !1882)
!1886 = !DILocation(line: 64, column: 15, scope: !1878, inlinedAt: !1882)
!1887 = !DILocation(line: 66, column: 9, scope: !1878, inlinedAt: !1882)
!1888 = !DILocation(line: 58, column: 6, scope: !1889, inlinedAt: !1890)
!1889 = distinct !DISubprogram(name: "runtime.stacksave", linkageName: "runtime.stacksave", scope: !1527, file: !1527, line: 58, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492)
!1890 = distinct !DILocation(line: 268, column: 49, scope: !1870)
!1891 = !DILocation(line: 268, column: 39, scope: !1870)
!1892 = !DILocation(line: 268, column: 18, scope: !1870)
!1893 = !DILocalVariable(name: "wg", arg: 1, scope: !1894, file: !2, line: 163, type: !1897)
!1894 = distinct !DISubprogram(name: "(*internal/task.waitGroup).done", linkageName: "(*internal/task.waitGroup).done", scope: !2, file: !2, line: 163, type: !1895, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1458, retainedNodes: !1898)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64, dwarfAddressSpace: 0)
!1898 = !{!1893}
!1899 = !DILocation(line: 164, column: 5, scope: !1894, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 271, column: 20, scope: !1870)
!1901 = !DILocalVariable(name: "x", arg: 1, scope: !1902, file: !1746, line: 161, type: !1749)
!1902 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Add", linkageName: "(*sync/atomic.Uint32).Add", scope: !1746, file: !1746, line: 161, type: !1747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1903)
!1903 = !{!1901, !1904}
!1904 = !DILocalVariable(name: "delta", arg: 2, scope: !1902, file: !1746, line: 161, type: !43)
!1905 = !DILocation(line: 161, column: 69, scope: !1902, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 164, column: 13, scope: !1894, inlinedAt: !1900)
!1907 = !DILocation(line: 161, column: 74, scope: !1902, inlinedAt: !1906)
!1908 = !DILocalVariable(name: "addr", arg: 1, scope: !1909, file: !1757, line: 123, type: !1760)
!1909 = distinct !DISubprogram(name: "sync/atomic.AddUint32", linkageName: "sync/atomic.AddUint32", scope: !1757, file: !1757, line: 123, type: !1758, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1910)
!1910 = !{!1908, !1911}
!1911 = !DILocalVariable(name: "delta", arg: 2, scope: !1909, file: !1757, line: 123, type: !43)
!1912 = !DILocation(line: 123, column: 6, scope: !1909, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 161, column: 67, scope: !1902, inlinedAt: !1906)
!1914 = !DILocation(line: 164, column: 26, scope: !1894, inlinedAt: !1900)
!1915 = !DILocation(line: 0, scope: !1894, inlinedAt: !1900)
!1916 = !DILocation(line: 165, column: 3, scope: !1894, inlinedAt: !1900)
!1917 = !DILocalVariable(name: "f", arg: 1, scope: !1918, file: !1771, line: 58, type: !1774)
!1918 = distinct !DISubprogram(name: "(*internal/futex.Futex).WakeAll", linkageName: "(*internal/futex.Futex).WakeAll", scope: !1771, file: !1771, line: 58, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !1919)
!1919 = !{!1917}
!1920 = !DILocation(line: 59, column: 50, scope: !1918, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 165, column: 15, scope: !1894, inlinedAt: !1900)
!1922 = !DILocation(line: 59, column: 23, scope: !1918, inlinedAt: !1921)
!1923 = !DILocalVariable(name: "x", arg: 1, scope: !1924, file: !1746, line: 147, type: !1749)
!1924 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Load", linkageName: "(*sync/atomic.Uint32).Load", scope: !1746, file: !1746, line: 147, type: !1925, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1927)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!1749}
!1927 = !{!1923}
!1928 = !DILocation(line: 147, column: 53, scope: !1924, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 274, column: 18, scope: !1870)
!1930 = !DILocalVariable(name: "addr", arg: 1, scope: !1931, file: !1757, line: 183, type: !1760)
!1931 = distinct !DISubprogram(name: "sync/atomic.LoadUint32", linkageName: "sync/atomic.LoadUint32", scope: !1757, file: !1757, line: 183, type: !1932, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1934)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1760}
!1934 = !{!1930}
!1935 = !DILocation(line: 183, column: 6, scope: !1931, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 147, column: 51, scope: !1924, inlinedAt: !1929)
!1937 = !DILocation(line: 274, column: 21, scope: !1870)
!1938 = !DILocation(line: 0, scope: !1870)
!1939 = !DILocation(line: 26, column: 46, scope: !1826, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 275, column: 15, scope: !1870)
!1941 = !DILocation(line: 26, column: 58, scope: !1826, inlinedAt: !1940)
!1942 = !DILocation(line: 26, column: 19, scope: !1826, inlinedAt: !1940)
!1943 = !DILocation(line: 164, column: 5, scope: !1894, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 279, column: 20, scope: !1870)
!1945 = !DILocation(line: 161, column: 69, scope: !1902, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 164, column: 13, scope: !1894, inlinedAt: !1944)
!1947 = !DILocation(line: 161, column: 74, scope: !1902, inlinedAt: !1946)
!1948 = !DILocation(line: 123, column: 6, scope: !1909, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 161, column: 67, scope: !1902, inlinedAt: !1946)
!1950 = !DILocation(line: 164, column: 26, scope: !1894, inlinedAt: !1944)
!1951 = !DILocation(line: 0, scope: !1894, inlinedAt: !1944)
!1952 = !DILocation(line: 165, column: 3, scope: !1894, inlinedAt: !1944)
!1953 = !DILocation(line: 59, column: 50, scope: !1918, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 165, column: 15, scope: !1894, inlinedAt: !1944)
!1955 = !DILocation(line: 59, column: 23, scope: !1918, inlinedAt: !1954)
!1956 = !DILocation(line: 280, column: 2, scope: !1870)
!1957 = distinct !DISubprogram(name: "runtime.runtimePanic", linkageName: "runtime.runtimePanic", scope: !102, file: !102, line: 85, type: !1958, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !1960)
!1958 = !DISubroutineType(cc: DW_CC_nocall, types: !1959)
!1959 = !{!360}
!1960 = !{!1961}
!1961 = !DILocalVariable(name: "msg", arg: 1, scope: !1957, file: !102, line: 85, type: !360)
!1962 = !DILocation(line: 85, column: 6, scope: !1957)
!1963 = !DILocation(line: 88, column: 30, scope: !1957)
!1964 = !DILocation(line: 88, column: 35, scope: !1957)
!1965 = !DILocation(line: 88, column: 16, scope: !1957)
!1966 = !DILocation(line: 89, column: 2, scope: !1957)
!1967 = distinct !DISubprogram(name: "runtime.runtimePanicAt", linkageName: "runtime.runtimePanicAt", scope: !102, file: !102, line: 91, type: !1968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !1970)
!1968 = !DISubroutineType(cc: DW_CC_nocall, types: !1969)
!1969 = !{!9, !360}
!1970 = !{!1971, !1972}
!1971 = !DILocalVariable(name: "addr", arg: 1, scope: !1967, file: !102, line: 91, type: !9)
!1972 = !DILocalVariable(name: "msg", arg: 2, scope: !1967, file: !102, line: 91, type: !360)
!1973 = !DILocation(line: 91, column: 6, scope: !1967)
!1974 = !DILocation(line: 99, column: 14, scope: !1967)
!1975 = !DILocation(line: 100, column: 20, scope: !1967)
!1976 = !DILocation(line: 100, column: 19, scope: !1967)
!1977 = !DILocation(line: 100, column: 26, scope: !1967)
!1978 = !DILocation(line: 100, column: 11, scope: !1967)
!1979 = !DILocation(line: 101, column: 14, scope: !1967)
!1980 = !DILocation(line: 105, column: 14, scope: !1967)
!1981 = !DILocation(line: 105, column: 13, scope: !1967)
!1982 = !DILocation(line: 106, column: 9, scope: !1967)
!1983 = !DILocation(line: 107, column: 7, scope: !1967)
!1984 = !DILocation(line: 108, column: 2, scope: !1967)
!1985 = distinct !DISubprogram(name: "runtime.printstring", linkageName: "runtime.printstring", scope: !1602, file: !1602, line: 12, type: !1958, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !1986)
!1986 = !{!1987, !1988}
!1987 = !DILocalVariable(name: "s", arg: 1, scope: !1985, file: !1602, line: 12, type: !360)
!1988 = !DILocalVariable(name: "i", scope: !1985, file: !1602, line: 13, type: !1989)
!1989 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!1990 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !1996)
!1991 = distinct !DISubprogram(name: "runtime.putchar", linkageName: "runtime.putchar", scope: !128, file: !128, line: 214, type: !1992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !1994)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!160}
!1994 = !{!1995}
!1995 = !DILocalVariable(name: "c", arg: 1, scope: !1991, file: !128, line: 214, type: !160)
!1996 = distinct !DILocation(line: 14, column: 10, scope: !1985)
!1997 = !DILocation(line: 12, column: 6, scope: !1985)
!1998 = !DILocation(line: 13, column: 6, scope: !1985)
!1999 = !DILocation(line: 13, column: 22, scope: !1985)
!2000 = !DILocation(line: 0, scope: !1985)
!2001 = !DILocation(line: 14, column: 13, scope: !1985)
!2002 = !DILocation(line: 14, column: 11, scope: !1985)
!2003 = !DILocation(line: 14, column: 12, scope: !1985)
!2004 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !1996)
!2005 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !1996)
!2006 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !1996)
!2007 = !DILocation(line: 13, column: 26, scope: !1985)
!2008 = !DILocation(line: 13, column: 14, scope: !1985)
!2009 = !DILocation(line: 13, column: 16, scope: !1985)
!2010 = !DILocation(line: 16, column: 2, scope: !1985)
!2011 = distinct !DISubprogram(name: "runtime.printptr", linkageName: "runtime.printptr", scope: !1602, file: !1602, line: 371, type: !2012, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2014)
!2012 = !DISubroutineType(cc: DW_CC_nocall, types: !2013)
!2013 = !{!21}
!2014 = !{!2015, !2016, !2017}
!2015 = !DILocalVariable(name: "ptr", arg: 1, scope: !2011, file: !1602, line: 371, type: !21)
!2016 = !DILocalVariable(name: "i", scope: !2011, file: !1602, line: 378, type: !1989)
!2017 = !DILocalVariable(name: "nibble", scope: !2011, file: !1602, line: 379, type: !160)
!2018 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 383, column: 11, scope: !2011)
!2020 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 381, column: 11, scope: !2011)
!2022 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 377, column: 9, scope: !2011)
!2024 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 376, column: 9, scope: !2011)
!2026 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 14, column: 10, scope: !1985, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 373, column: 14, scope: !2011)
!2029 = !DILocation(line: 372, column: 5, scope: !2011)
!2030 = !DILocation(line: 372, column: 9, scope: !2011)
!2031 = !DILocation(line: 0, scope: !2011)
!2032 = !DILocation(line: 14, column: 13, scope: !1985, inlinedAt: !2028)
!2033 = !DILocation(line: 14, column: 11, scope: !1985, inlinedAt: !2028)
!2034 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2027)
!2035 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2027)
!2036 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2027)
!2037 = !DILocation(line: 13, column: 14, scope: !1985, inlinedAt: !2028)
!2038 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2025)
!2039 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2025)
!2040 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2025)
!2041 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2023)
!2042 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2023)
!2043 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2023)
!2044 = !DILocation(line: 378, column: 6, scope: !2011)
!2045 = !DILocation(line: 378, column: 14, scope: !2011)
!2046 = !DILocation(line: 379, column: 18, scope: !2011)
!2047 = !DILocation(line: 379, column: 22, scope: !2011)
!2048 = !DILocation(line: 379, column: 17, scope: !2011)
!2049 = !DILocation(line: 380, column: 6, scope: !2011)
!2050 = !DILocation(line: 380, column: 13, scope: !2011)
!2051 = !DILocation(line: 381, column: 12, scope: !2011)
!2052 = !DILocation(line: 381, column: 19, scope: !2011)
!2053 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2021)
!2054 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2021)
!2055 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2021)
!2056 = !DILocation(line: 385, column: 3, scope: !2011)
!2057 = !DILocation(line: 378, column: 45, scope: !2011)
!2058 = !DILocation(line: 378, column: 16, scope: !2011)
!2059 = !DILocation(line: 383, column: 12, scope: !2011)
!2060 = !DILocation(line: 383, column: 24, scope: !2011)
!2061 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2019)
!2062 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2019)
!2063 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2019)
!2064 = distinct !DISubprogram(name: "runtime.printnl", linkageName: "runtime.printnl", scope: !1602, file: !1602, line: 286, type: !2065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492)
!2065 = !DISubroutineType(cc: DW_CC_nocall, types: !15)
!2066 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 290, column: 9, scope: !2064)
!2068 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2067)
!2069 = !DILocation(line: 214, column: 6, scope: !1991, inlinedAt: !2067)
!2070 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2067)
!2071 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2067)
!2072 = !DILocation(line: 291, column: 2, scope: !2064)
!2073 = distinct !DISubprogram(name: "runtime.nilPanic", linkageName: "runtime.nilPanic", scope: !102, file: !102, line: 183, type: !2065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492)
!2074 = !DILocation(line: 184, column: 30, scope: !2073)
!2075 = !DILocation(line: 184, column: 16, scope: !2073)
!2076 = !DILocation(line: 185, column: 2, scope: !2073)
!2077 = distinct !DISubprogram(name: "runtime.panicOrGoexit", linkageName: "runtime.panicOrGoexit", scope: !102, file: !102, line: 58, type: !2078, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2081)
!2078 = !DISubroutineType(cc: DW_CC_nocall, types: !2079)
!2079 = !{!499, !2080}
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.panicState", baseType: !45)
!2081 = !{!2082, !2083, !2084, !2096, !2097}
!2082 = !DILocalVariable(name: "message", arg: 1, scope: !2077, file: !102, line: 58, type: !499)
!2083 = !DILocalVariable(name: "panicking", arg: 2, scope: !2077, file: !102, line: 58, type: !2080)
!2084 = !DILocalVariable(name: "frame", scope: !2077, file: !102, line: 65, type: !2085)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64, align: 64, dwarfAddressSpace: 0)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.deferFrame", baseType: !2087)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !2088)
!2088 = !{!2089, !2090, !2091, !2093, !2094, !2095}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "JumpSP", baseType: !9, size: 64, align: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "JumpPC", baseType: !9, size: 64, align: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraRegs", baseType: !2092, align: 64, offset: 128)
!2092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, align: 64, elements: !964)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "Previous", baseType: !2085, size: 64, align: 64, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "Panicking", baseType: !2080, size: 8, align: 8, offset: 192)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "PanicValue", baseType: !499, size: 128, align: 64, offset: 256)
!2096 = !DILocalVariable(name: "PanicValue", scope: !2077, file: !102, line: 42, type: !499)
!2097 = !DILocalVariable(name: "Panicking", scope: !2077, file: !102, line: 41, type: !2080)
!2098 = !DILocation(line: 58, column: 6, scope: !2077)
!2099 = !DILocation(line: 62, column: 34, scope: !1878, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 65, column: 38, scope: !2077)
!2101 = !DILocation(line: 62, column: 2, scope: !1878, inlinedAt: !2100)
!2102 = !DILocation(line: 63, column: 5, scope: !1878, inlinedAt: !2100)
!2103 = !DILocation(line: 63, column: 7, scope: !1878, inlinedAt: !2100)
!2104 = !DILocation(line: 0, scope: !1878, inlinedAt: !2100)
!2105 = !DILocation(line: 64, column: 15, scope: !1878, inlinedAt: !2100)
!2106 = !DILocation(line: 66, column: 9, scope: !1878, inlinedAt: !2100)
!2107 = !DILocation(line: 65, column: 41, scope: !2077)
!2108 = !DILocation(line: 65, column: 3, scope: !2077)
!2109 = !DILocation(line: 66, column: 6, scope: !2077)
!2110 = !DILocation(line: 66, column: 12, scope: !2077)
!2111 = !DILocation(line: 0, scope: !2077)
!2112 = !DILocation(line: 67, column: 4, scope: !2077)
!2113 = !DILocation(line: 67, column: 23, scope: !2077)
!2114 = !DILocation(line: 67, column: 10, scope: !2077)
!2115 = !DILocation(line: 68, column: 4, scope: !2077)
!2116 = !DILocation(line: 68, column: 22, scope: !2077)
!2117 = !DILocation(line: 68, column: 10, scope: !2077)
!2118 = !DILocation(line: 69, column: 19, scope: !2077)
!2119 = !DILocation(line: 69, column: 18, scope: !2077)
!2120 = !DILocation(line: 73, column: 5, scope: !2077)
!2121 = !DILocation(line: 78, column: 13, scope: !2077)
!2122 = !DILocation(line: 79, column: 11, scope: !2077)
!2123 = !DILocation(line: 79, column: 10, scope: !2077)
!2124 = !DILocation(line: 80, column: 9, scope: !2077)
!2125 = !DILocation(line: 81, column: 7, scope: !2077)
!2126 = !DILocation(line: 82, column: 2, scope: !2077)
!2127 = distinct !DISubprogram(name: "runtime.printitf", linkageName: "runtime.printitf", scope: !1602, file: !1602, line: 293, type: !2128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2130)
!2128 = !DISubroutineType(cc: DW_CC_nocall, types: !2129)
!2129 = !{!499}
!2130 = !{!2131, !2132, !2133, !2134, !2135, !2137, !2138, !2139, !2141, !2142, !2143, !2144, !2145, !2146, !2148, !2149, !2151, !2153, !2154, !2155, !2157}
!2131 = !DILocalVariable(name: "msg", arg: 1, scope: !2127, file: !1602, line: 293, type: !499)
!2132 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !47)
!2133 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !1989)
!2134 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !91)
!2135 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !2136)
!2136 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!2137 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !60)
!2138 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !1699)
!2139 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !2140)
!2140 = !DIBasicType(name: "uint", size: 64, encoding: DW_ATE_unsigned)
!2141 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !45)
!2142 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !98)
!2143 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !43)
!2144 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !11)
!2145 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !21)
!2146 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !2147)
!2147 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!2148 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !517)
!2149 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !2150)
!2150 = !DIBasicType(name: "complex64", size: 64, encoding: DW_ATE_complex_float)
!2151 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !2152)
!2152 = !DIBasicType(name: "complex128", size: 128, encoding: DW_ATE_complex_float)
!2153 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !360)
!2154 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !498)
!2155 = !DILocalVariable(name: "msg", scope: !2127, file: !1602, line: 294, type: !2156)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.stringer", baseType: !499)
!2157 = !DILocalVariable(name: "itf", scope: !2127, file: !1602, line: 345, type: !499)
!2158 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 14, column: 10, scope: !1985, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 338, column: 14, scope: !2127)
!2161 = !DILocation(line: 293, column: 6, scope: !2127)
!2162 = !DILocation(line: 294, column: 16, scope: !2127)
!2163 = !DILocation(line: 338, column: 15, scope: !2127)
!2164 = !DILocation(line: 12, column: 6, scope: !1985, inlinedAt: !2160)
!2165 = !DILocation(line: 13, column: 6, scope: !1985, inlinedAt: !2160)
!2166 = !DILocation(line: 13, column: 22, scope: !1985, inlinedAt: !2160)
!2167 = !DILocation(line: 0, scope: !1985, inlinedAt: !2160)
!2168 = !DILocation(line: 14, column: 13, scope: !1985, inlinedAt: !2160)
!2169 = !DILocation(line: 14, column: 11, scope: !1985, inlinedAt: !2160)
!2170 = !DILocation(line: 14, column: 12, scope: !1985, inlinedAt: !2160)
!2171 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2159)
!2172 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2159)
!2173 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2159)
!2174 = !DILocation(line: 13, column: 26, scope: !1985, inlinedAt: !2160)
!2175 = !DILocation(line: 13, column: 14, scope: !1985, inlinedAt: !2160)
!2176 = !DILocation(line: 13, column: 16, scope: !1985, inlinedAt: !2160)
!2177 = !DILocation(line: 352, column: 2, scope: !2127)
!2178 = distinct !DISubprogram(name: "runtime._panic", linkageName: "runtime._panic", scope: !102, file: !102, line: 54, type: !2128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2179)
!2179 = !{!2180}
!2180 = !DILocalVariable(name: "message", arg: 1, scope: !2178, file: !102, line: 54, type: !499)
!2181 = !DILocation(line: 54, column: 6, scope: !2178)
!2182 = !DILocation(line: 55, column: 16, scope: !2178)
!2183 = !DILocation(line: 55, column: 15, scope: !2178)
!2184 = !DILocation(line: 56, column: 2, scope: !2178)
!2185 = distinct !DISubprogram(name: "runtime.fminimum", linkageName: "fminimum", scope: !1501, file: !1501, line: 60, type: !2186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2188)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!517, !517}
!2188 = !{!2189, !2190}
!2189 = !DILocalVariable(name: "x", arg: 1, scope: !2185, file: !1501, line: 60, type: !517)
!2190 = !DILocalVariable(name: "y", arg: 2, scope: !2185, file: !1501, line: 60, type: !517)
!2191 = !DILocation(line: 60, column: 6, scope: !2185)
!2192 = !DILocation(line: 61, column: 24, scope: !2185)
!2193 = !DILocation(line: 61, column: 27, scope: !2185)
!2194 = !DILocalVariable(name: "x", arg: 1, scope: !2195, file: !1501, line: 87, type: !517)
!2195 = distinct !DISubprogram(name: "runtime.minimumFloat64", linkageName: "runtime.minimumFloat64", scope: !1501, file: !1501, line: 87, type: !2186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2196)
!2196 = !{!2194, !2197}
!2197 = !DILocalVariable(name: "y", arg: 2, scope: !2195, file: !1501, line: 87, type: !517)
!2198 = !DILocation(line: 87, column: 6, scope: !2195, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 61, column: 23, scope: !2185)
!2200 = !DILocation(line: 88, column: 38, scope: !2195, inlinedAt: !2199)
!2201 = !DILocation(line: 88, column: 41, scope: !2195, inlinedAt: !2199)
!2202 = !DILocalVariable(name: "x", arg: 1, scope: !2203, file: !1501, line: 101, type: !517)
!2203 = distinct !DISubprogram(name: "runtime.minimumFloat[float64 int64]", linkageName: "runtime.minimumFloat[float64 int64]", scope: !1501, file: !1501, line: 101, type: !2204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!517, !517, !1699, !1699}
!2206 = !{!2202, !2207, !2208, !2209, !2210, !2211}
!2207 = !DILocalVariable(name: "y", arg: 2, scope: !2203, file: !1501, line: 101, type: !517)
!2208 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2203, file: !1501, line: 101, type: !1699)
!2209 = !DILocalVariable(name: "magMask", arg: 4, scope: !2203, file: !1501, line: 101, type: !1699)
!2210 = !DILocalVariable(name: "xBits", scope: !2203, file: !1501, line: 102, type: !499)
!2211 = !DILocalVariable(name: "yBits", scope: !2203, file: !1501, line: 103, type: !499)
!2212 = !DILocation(line: 101, column: 6, scope: !2203, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 88, column: 37, scope: !2195, inlinedAt: !2199)
!2214 = !DILocation(line: 102, column: 11, scope: !2203, inlinedAt: !2213)
!2215 = !DILocation(line: 102, column: 2, scope: !2203, inlinedAt: !2213)
!2216 = !DILocation(line: 103, column: 11, scope: !2203, inlinedAt: !2213)
!2217 = !DILocation(line: 103, column: 2, scope: !2203, inlinedAt: !2213)
!2218 = !DILocation(line: 107, column: 7, scope: !2203, inlinedAt: !2213)
!2219 = !DILocation(line: 107, column: 16, scope: !2203, inlinedAt: !2213)
!2220 = !DILocation(line: 107, column: 13, scope: !2203, inlinedAt: !2213)
!2221 = !DILocation(line: 0, scope: !2203, inlinedAt: !2213)
!2222 = !DILocation(line: 109, column: 7, scope: !2203, inlinedAt: !2213)
!2223 = !DILocation(line: 109, column: 16, scope: !2203, inlinedAt: !2213)
!2224 = !DILocation(line: 109, column: 13, scope: !2203, inlinedAt: !2213)
!2225 = !DILocation(line: 118, column: 5, scope: !2203, inlinedAt: !2213)
!2226 = !DILocation(line: 118, column: 11, scope: !2203, inlinedAt: !2213)
!2227 = !DILocation(line: 121, column: 5, scope: !2203, inlinedAt: !2213)
!2228 = !DILocation(line: 121, column: 11, scope: !2203, inlinedAt: !2213)
!2229 = !DILocation(line: 124, column: 5, scope: !2203, inlinedAt: !2213)
!2230 = !DILocation(line: 124, column: 14, scope: !2203, inlinedAt: !2213)
!2231 = !DILocation(line: 124, column: 11, scope: !2203, inlinedAt: !2213)
!2232 = !DILocation(line: 61, column: 2, scope: !2185)
!2233 = distinct !DISubprogram(name: "runtime.fminimumf", linkageName: "fminimumf", scope: !1501, file: !1501, line: 65, type: !2234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2236)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!2147, !2147}
!2236 = !{!2237, !2238}
!2237 = !DILocalVariable(name: "x", arg: 1, scope: !2233, file: !1501, line: 65, type: !2147)
!2238 = !DILocalVariable(name: "y", arg: 2, scope: !2233, file: !1501, line: 65, type: !2147)
!2239 = !DILocation(line: 65, column: 6, scope: !2233)
!2240 = !DILocation(line: 66, column: 24, scope: !2233)
!2241 = !DILocation(line: 66, column: 27, scope: !2233)
!2242 = !DILocalVariable(name: "x", arg: 1, scope: !2243, file: !1501, line: 83, type: !2147)
!2243 = distinct !DISubprogram(name: "runtime.minimumFloat32", linkageName: "runtime.minimumFloat32", scope: !1501, file: !1501, line: 83, type: !2234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2244)
!2244 = !{!2242, !2245}
!2245 = !DILocalVariable(name: "y", arg: 2, scope: !2243, file: !1501, line: 83, type: !2147)
!2246 = !DILocation(line: 83, column: 6, scope: !2243, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 66, column: 23, scope: !2233)
!2248 = !DILocation(line: 84, column: 38, scope: !2243, inlinedAt: !2247)
!2249 = !DILocation(line: 84, column: 41, scope: !2243, inlinedAt: !2247)
!2250 = !DILocalVariable(name: "x", arg: 1, scope: !2251, file: !1501, line: 101, type: !2147)
!2251 = distinct !DISubprogram(name: "runtime.minimumFloat[float32 int32]", linkageName: "runtime.minimumFloat[float32 int32]", scope: !1501, file: !1501, line: 101, type: !2252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2254)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!2147, !2147, !60, !60}
!2254 = !{!2250, !2255, !2256, !2257, !2258, !2259}
!2255 = !DILocalVariable(name: "y", arg: 2, scope: !2251, file: !1501, line: 101, type: !2147)
!2256 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2251, file: !1501, line: 101, type: !60)
!2257 = !DILocalVariable(name: "magMask", arg: 4, scope: !2251, file: !1501, line: 101, type: !60)
!2258 = !DILocalVariable(name: "xBits", scope: !2251, file: !1501, line: 102, type: !499)
!2259 = !DILocalVariable(name: "yBits", scope: !2251, file: !1501, line: 103, type: !499)
!2260 = !DILocation(line: 101, column: 6, scope: !2251, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 84, column: 37, scope: !2243, inlinedAt: !2247)
!2262 = !DILocation(line: 102, column: 11, scope: !2251, inlinedAt: !2261)
!2263 = !DILocation(line: 102, column: 2, scope: !2251, inlinedAt: !2261)
!2264 = !DILocation(line: 103, column: 11, scope: !2251, inlinedAt: !2261)
!2265 = !DILocation(line: 103, column: 2, scope: !2251, inlinedAt: !2261)
!2266 = !DILocation(line: 107, column: 7, scope: !2251, inlinedAt: !2261)
!2267 = !DILocation(line: 107, column: 16, scope: !2251, inlinedAt: !2261)
!2268 = !DILocation(line: 107, column: 13, scope: !2251, inlinedAt: !2261)
!2269 = !DILocation(line: 0, scope: !2251, inlinedAt: !2261)
!2270 = !DILocation(line: 109, column: 7, scope: !2251, inlinedAt: !2261)
!2271 = !DILocation(line: 109, column: 16, scope: !2251, inlinedAt: !2261)
!2272 = !DILocation(line: 109, column: 13, scope: !2251, inlinedAt: !2261)
!2273 = !DILocation(line: 118, column: 5, scope: !2251, inlinedAt: !2261)
!2274 = !DILocation(line: 118, column: 11, scope: !2251, inlinedAt: !2261)
!2275 = !DILocation(line: 121, column: 5, scope: !2251, inlinedAt: !2261)
!2276 = !DILocation(line: 121, column: 11, scope: !2251, inlinedAt: !2261)
!2277 = !DILocation(line: 124, column: 5, scope: !2251, inlinedAt: !2261)
!2278 = !DILocation(line: 124, column: 14, scope: !2251, inlinedAt: !2261)
!2279 = !DILocation(line: 124, column: 11, scope: !2251, inlinedAt: !2261)
!2280 = !DILocation(line: 66, column: 2, scope: !2233)
!2281 = distinct !DISubprogram(name: "runtime.fmaximum", linkageName: "fmaximum", scope: !1501, file: !1501, line: 70, type: !2186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2282)
!2282 = !{!2283, !2284}
!2283 = !DILocalVariable(name: "x", arg: 1, scope: !2281, file: !1501, line: 70, type: !517)
!2284 = !DILocalVariable(name: "y", arg: 2, scope: !2281, file: !1501, line: 70, type: !517)
!2285 = !DILocation(line: 70, column: 6, scope: !2281)
!2286 = !DILocation(line: 71, column: 24, scope: !2281)
!2287 = !DILocation(line: 71, column: 27, scope: !2281)
!2288 = !DILocalVariable(name: "x", arg: 1, scope: !2289, file: !1501, line: 95, type: !517)
!2289 = distinct !DISubprogram(name: "runtime.maximumFloat64", linkageName: "runtime.maximumFloat64", scope: !1501, file: !1501, line: 95, type: !2186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2290)
!2290 = !{!2288, !2291}
!2291 = !DILocalVariable(name: "y", arg: 2, scope: !2289, file: !1501, line: 95, type: !517)
!2292 = !DILocation(line: 95, column: 6, scope: !2289, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 71, column: 23, scope: !2281)
!2294 = !DILocation(line: 96, column: 38, scope: !2289, inlinedAt: !2293)
!2295 = !DILocation(line: 96, column: 41, scope: !2289, inlinedAt: !2293)
!2296 = !DILocalVariable(name: "x", arg: 1, scope: !2297, file: !1501, line: 133, type: !517)
!2297 = distinct !DISubprogram(name: "runtime.maximumFloat[float64 int64]", linkageName: "runtime.maximumFloat[float64 int64]", scope: !1501, file: !1501, line: 133, type: !2204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2298)
!2298 = !{!2296, !2299, !2300, !2301, !2302, !2303, !2304}
!2299 = !DILocalVariable(name: "y", arg: 2, scope: !2297, file: !1501, line: 133, type: !517)
!2300 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2297, file: !1501, line: 133, type: !1699)
!2301 = !DILocalVariable(name: "magMask", arg: 4, scope: !2297, file: !1501, line: 133, type: !1699)
!2302 = !DILocalVariable(name: "xBits", scope: !2297, file: !1501, line: 134, type: !499)
!2303 = !DILocalVariable(name: "yBits", scope: !2297, file: !1501, line: 135, type: !499)
!2304 = !DILocalVariable(name: "maxNegNaN", scope: !2297, file: !1501, line: 149, type: !499)
!2305 = !DILocation(line: 133, column: 6, scope: !2297, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 96, column: 37, scope: !2289, inlinedAt: !2293)
!2307 = !DILocation(line: 134, column: 11, scope: !2297, inlinedAt: !2306)
!2308 = !DILocation(line: 134, column: 2, scope: !2297, inlinedAt: !2306)
!2309 = !DILocation(line: 135, column: 11, scope: !2297, inlinedAt: !2306)
!2310 = !DILocation(line: 135, column: 2, scope: !2297, inlinedAt: !2306)
!2311 = !DILocation(line: 142, column: 5, scope: !2297, inlinedAt: !2306)
!2312 = !DILocation(line: 142, column: 11, scope: !2297, inlinedAt: !2306)
!2313 = !DILocation(line: 0, scope: !2297, inlinedAt: !2306)
!2314 = !DILocation(line: 145, column: 5, scope: !2297, inlinedAt: !2306)
!2315 = !DILocation(line: 145, column: 11, scope: !2297, inlinedAt: !2306)
!2316 = !DILocation(line: 149, column: 16, scope: !2297, inlinedAt: !2306)
!2317 = !DILocation(line: 149, column: 2, scope: !2297, inlinedAt: !2306)
!2318 = !DILocation(line: 151, column: 7, scope: !2297, inlinedAt: !2306)
!2319 = !DILocation(line: 151, column: 16, scope: !2297, inlinedAt: !2306)
!2320 = !DILocation(line: 151, column: 13, scope: !2297, inlinedAt: !2306)
!2321 = !DILocation(line: 153, column: 7, scope: !2297, inlinedAt: !2306)
!2322 = !DILocation(line: 153, column: 16, scope: !2297, inlinedAt: !2306)
!2323 = !DILocation(line: 153, column: 13, scope: !2297, inlinedAt: !2306)
!2324 = !DILocation(line: 156, column: 5, scope: !2297, inlinedAt: !2306)
!2325 = !DILocation(line: 156, column: 14, scope: !2297, inlinedAt: !2306)
!2326 = !DILocation(line: 156, column: 11, scope: !2297, inlinedAt: !2306)
!2327 = !DILocation(line: 71, column: 2, scope: !2281)
!2328 = distinct !DISubprogram(name: "runtime.fmaximumf", linkageName: "fmaximumf", scope: !1501, file: !1501, line: 75, type: !2234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2329)
!2329 = !{!2330, !2331}
!2330 = !DILocalVariable(name: "x", arg: 1, scope: !2328, file: !1501, line: 75, type: !2147)
!2331 = !DILocalVariable(name: "y", arg: 2, scope: !2328, file: !1501, line: 75, type: !2147)
!2332 = !DILocation(line: 75, column: 6, scope: !2328)
!2333 = !DILocation(line: 76, column: 24, scope: !2328)
!2334 = !DILocation(line: 76, column: 27, scope: !2328)
!2335 = !DILocalVariable(name: "x", arg: 1, scope: !2336, file: !1501, line: 91, type: !2147)
!2336 = distinct !DISubprogram(name: "runtime.maximumFloat32", linkageName: "runtime.maximumFloat32", scope: !1501, file: !1501, line: 91, type: !2234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2337)
!2337 = !{!2335, !2338}
!2338 = !DILocalVariable(name: "y", arg: 2, scope: !2336, file: !1501, line: 91, type: !2147)
!2339 = !DILocation(line: 91, column: 6, scope: !2336, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 76, column: 23, scope: !2328)
!2341 = !DILocation(line: 92, column: 38, scope: !2336, inlinedAt: !2340)
!2342 = !DILocation(line: 92, column: 41, scope: !2336, inlinedAt: !2340)
!2343 = !DILocalVariable(name: "x", arg: 1, scope: !2344, file: !1501, line: 133, type: !2147)
!2344 = distinct !DISubprogram(name: "runtime.maximumFloat[float32 int32]", linkageName: "runtime.maximumFloat[float32 int32]", scope: !1501, file: !1501, line: 133, type: !2252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2345)
!2345 = !{!2343, !2346, !2347, !2348, !2349, !2350, !2351}
!2346 = !DILocalVariable(name: "y", arg: 2, scope: !2344, file: !1501, line: 133, type: !2147)
!2347 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2344, file: !1501, line: 133, type: !60)
!2348 = !DILocalVariable(name: "magMask", arg: 4, scope: !2344, file: !1501, line: 133, type: !60)
!2349 = !DILocalVariable(name: "xBits", scope: !2344, file: !1501, line: 134, type: !499)
!2350 = !DILocalVariable(name: "yBits", scope: !2344, file: !1501, line: 135, type: !499)
!2351 = !DILocalVariable(name: "maxNegNaN", scope: !2344, file: !1501, line: 149, type: !499)
!2352 = !DILocation(line: 133, column: 6, scope: !2344, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 92, column: 37, scope: !2336, inlinedAt: !2340)
!2354 = !DILocation(line: 134, column: 11, scope: !2344, inlinedAt: !2353)
!2355 = !DILocation(line: 134, column: 2, scope: !2344, inlinedAt: !2353)
!2356 = !DILocation(line: 135, column: 11, scope: !2344, inlinedAt: !2353)
!2357 = !DILocation(line: 135, column: 2, scope: !2344, inlinedAt: !2353)
!2358 = !DILocation(line: 142, column: 5, scope: !2344, inlinedAt: !2353)
!2359 = !DILocation(line: 142, column: 11, scope: !2344, inlinedAt: !2353)
!2360 = !DILocation(line: 0, scope: !2344, inlinedAt: !2353)
!2361 = !DILocation(line: 145, column: 5, scope: !2344, inlinedAt: !2353)
!2362 = !DILocation(line: 145, column: 11, scope: !2344, inlinedAt: !2353)
!2363 = !DILocation(line: 149, column: 16, scope: !2344, inlinedAt: !2353)
!2364 = !DILocation(line: 149, column: 2, scope: !2344, inlinedAt: !2353)
!2365 = !DILocation(line: 151, column: 7, scope: !2344, inlinedAt: !2353)
!2366 = !DILocation(line: 151, column: 16, scope: !2344, inlinedAt: !2353)
!2367 = !DILocation(line: 151, column: 13, scope: !2344, inlinedAt: !2353)
!2368 = !DILocation(line: 153, column: 7, scope: !2344, inlinedAt: !2353)
!2369 = !DILocation(line: 153, column: 16, scope: !2344, inlinedAt: !2353)
!2370 = !DILocation(line: 153, column: 13, scope: !2344, inlinedAt: !2353)
!2371 = !DILocation(line: 156, column: 5, scope: !2344, inlinedAt: !2353)
!2372 = !DILocation(line: 156, column: 14, scope: !2344, inlinedAt: !2353)
!2373 = !DILocation(line: 156, column: 11, scope: !2344, inlinedAt: !2353)
!2374 = !DILocation(line: 76, column: 2, scope: !2328)
!2375 = distinct !DISubprogram(name: "runtime.gcCallback", linkageName: "tinygo_runtime_bdwgc_callback", scope: !1533, file: !1533, line: 46, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492)
!2376 = !DILocation(line: 62, column: 34, scope: !1878, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 193, column: 20, scope: !2378, inlinedAt: !2386)
!2378 = distinct !DISubprogram(name: "internal/task.GCStopWorldAndScan", linkageName: "internal/task.GCStopWorldAndScan", scope: !2, file: !2, line: 192, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1458, retainedNodes: !2379)
!2379 = !{!2380, !2381, !2382, !2383, !2384, !2385}
!2380 = !DILocalVariable(name: "current", scope: !2378, file: !2, line: 193, type: !3)
!2381 = !DILocalVariable(name: "otherGoroutines", scope: !2378, file: !2, line: 99, type: !43)
!2382 = !DILocalVariable(name: "scanWaitGroup", scope: !2378, file: !2, line: 151, type: !79)
!2383 = !DILocalVariable(name: "activeTasks", scope: !2378, file: !2, line: 45, type: !3)
!2384 = !DILocalVariable(name: "t", scope: !2378, file: !2, line: 212, type: !3)
!2385 = !DILocalVariable(name: "t", scope: !2378, file: !2, line: 223, type: !3)
!2386 = distinct !DILocation(line: 8, column: 25, scope: !2387, inlinedAt: !2389)
!2387 = distinct !DISubprogram(name: "runtime.gcMarkReachable", linkageName: "runtime.gcMarkReachable", scope: !2388, file: !2388, line: 7, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492)
!2388 = !DIFile(filename: "gc_stack_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2389 = distinct !DILocation(line: 48, column: 17, scope: !2375)
!2390 = !DILocation(line: 63, column: 5, scope: !1878, inlinedAt: !2377)
!2391 = !DILocation(line: 63, column: 7, scope: !1878, inlinedAt: !2377)
!2392 = !DILocation(line: 0, scope: !1878, inlinedAt: !2377)
!2393 = !DILocation(line: 64, column: 15, scope: !1878, inlinedAt: !2377)
!2394 = !DILocation(line: 66, column: 9, scope: !1878, inlinedAt: !2377)
!2395 = !DILocation(line: 193, column: 2, scope: !2378, inlinedAt: !2386)
!2396 = !DILocation(line: 147, column: 53, scope: !1924, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 196, column: 17, scope: !2378, inlinedAt: !2386)
!2398 = !DILocation(line: 183, column: 6, scope: !1931, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 147, column: 51, scope: !1924, inlinedAt: !2397)
!2400 = !DILocation(line: 196, column: 20, scope: !2378, inlinedAt: !2386)
!2401 = !DILocation(line: 0, scope: !2378, inlinedAt: !2386)
!2402 = !DILocation(line: 33, column: 5, scope: !1791, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 199, column: 22, scope: !2378, inlinedAt: !2386)
!2404 = !DILocation(line: 157, column: 31, scope: !1797, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 33, column: 27, scope: !1791, inlinedAt: !2403)
!2406 = !DILocation(line: 157, column: 36, scope: !1797, inlinedAt: !2405)
!2407 = !DILocation(line: 157, column: 41, scope: !1797, inlinedAt: !2405)
!2408 = !DILocation(line: 99, column: 6, scope: !1808, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 157, column: 29, scope: !1797, inlinedAt: !2405)
!2410 = !DILocation(line: 0, scope: !1791, inlinedAt: !2403)
!2411 = !DILocation(line: 43, column: 6, scope: !1791, inlinedAt: !2403)
!2412 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 43, column: 18, scope: !1791, inlinedAt: !2403)
!2414 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !2413)
!2415 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !2413)
!2417 = !DILocation(line: 43, column: 22, scope: !1791, inlinedAt: !2403)
!2418 = !DILocation(line: 45, column: 3, scope: !1791, inlinedAt: !2403)
!2419 = !DILocation(line: 26, column: 46, scope: !1826, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 45, column: 15, scope: !1791, inlinedAt: !2403)
!2421 = !DILocation(line: 26, column: 58, scope: !1826, inlinedAt: !2420)
!2422 = !DILocation(line: 26, column: 19, scope: !1826, inlinedAt: !2420)
!2423 = !DILocalVariable(name: "wg", arg: 1, scope: !2424, file: !2, line: 169, type: !1897)
!2424 = distinct !DISubprogram(name: "(*internal/task.waitGroup).wait", linkageName: "(*internal/task.waitGroup).wait", scope: !2, file: !2, line: 169, type: !1895, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1458, retainedNodes: !2425)
!2425 = !{!2423, !2426}
!2426 = !DILocalVariable(name: "val", scope: !2424, file: !2, line: 171, type: !43)
!2427 = !DILocation(line: 169, column: 22, scope: !2424, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 202, column: 21, scope: !2378, inlinedAt: !2386)
!2429 = !DILocation(line: 147, column: 53, scope: !1924, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 171, column: 19, scope: !2424, inlinedAt: !2428)
!2431 = !DILocation(line: 183, column: 6, scope: !1931, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 147, column: 51, scope: !1924, inlinedAt: !2430)
!2433 = !DILocation(line: 172, column: 10, scope: !2424, inlinedAt: !2428)
!2434 = !DILocation(line: 0, scope: !2424, inlinedAt: !2428)
!2435 = !DILocation(line: 175, column: 3, scope: !2424, inlinedAt: !2428)
!2436 = !DILocation(line: 175, column: 13, scope: !2424, inlinedAt: !2428)
!2437 = !DILocation(line: 26, column: 46, scope: !1826, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 175, column: 12, scope: !2424, inlinedAt: !2428)
!2439 = !DILocation(line: 26, column: 58, scope: !1826, inlinedAt: !2438)
!2440 = !DILocation(line: 26, column: 19, scope: !1826, inlinedAt: !2438)
!2441 = !DILocation(line: 172, column: 6, scope: !2424, inlinedAt: !2428)
!2442 = !DILocalVariable(name: "x", arg: 1, scope: !2443, file: !1746, line: 150, type: !1749)
!2443 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Store", linkageName: "(*sync/atomic.Uint32).Store", scope: !1746, file: !1746, line: 150, type: !1747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !2444)
!2444 = !{!2442, !2445}
!2445 = !DILocalVariable(name: "val", arg: 2, scope: !2443, file: !1746, line: 150, type: !43)
!2446 = !DILocation(line: 150, column: 51, scope: !2443, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 206, column: 16, scope: !2378, inlinedAt: !2386)
!2448 = !DILocation(line: 150, column: 56, scope: !2443, inlinedAt: !2447)
!2449 = !DILocalVariable(name: "addr", arg: 1, scope: !2450, file: !1757, line: 205, type: !1760)
!2450 = distinct !DISubprogram(name: "sync/atomic.StoreUint32", linkageName: "sync/atomic.StoreUint32", scope: !1757, file: !1757, line: 205, type: !1758, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !2451)
!2451 = !{!2449, !2452}
!2452 = !DILocalVariable(name: "val", arg: 2, scope: !2450, file: !1757, line: 205, type: !43)
!2453 = !DILocation(line: 205, column: 6, scope: !2450, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 150, column: 49, scope: !2443, inlinedAt: !2447)
!2455 = !DILocation(line: 209, column: 33, scope: !2378, inlinedAt: !2386)
!2456 = !DILocation(line: 209, column: 3, scope: !2378, inlinedAt: !2386)
!2457 = !DILocation(line: 212, column: 12, scope: !2378, inlinedAt: !2386)
!2458 = !DILocation(line: 212, column: 7, scope: !2378, inlinedAt: !2386)
!2459 = !DILocation(line: 212, scope: !2378, inlinedAt: !2386)
!2460 = !DILocation(line: 212, column: 27, scope: !2378, inlinedAt: !2386)
!2461 = !DILocation(line: 213, column: 7, scope: !2378, inlinedAt: !2386)
!2462 = !DILocation(line: 213, column: 12, scope: !2378, inlinedAt: !2386)
!2463 = !DILocation(line: 213, column: 9, scope: !2378, inlinedAt: !2386)
!2464 = !DILocation(line: 214, column: 32, scope: !2378, inlinedAt: !2386)
!2465 = !DILocation(line: 214, column: 40, scope: !2378, inlinedAt: !2386)
!2466 = !DILocation(line: 214, column: 31, scope: !2378, inlinedAt: !2386)
!2467 = !DILocation(line: 212, column: 39, scope: !2378, inlinedAt: !2386)
!2468 = !DILocation(line: 212, column: 47, scope: !2378, inlinedAt: !2386)
!2469 = !DILocation(line: 212, column: 35, scope: !2378, inlinedAt: !2386)
!2470 = !DILocation(line: 212, column: 25, scope: !2378, inlinedAt: !2386)
!2471 = !DILocation(line: 169, column: 22, scope: !2424, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 219, column: 21, scope: !2378, inlinedAt: !2386)
!2473 = !DILocation(line: 147, column: 53, scope: !1924, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 171, column: 19, scope: !2424, inlinedAt: !2472)
!2475 = !DILocation(line: 183, column: 6, scope: !1931, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 147, column: 51, scope: !1924, inlinedAt: !2474)
!2477 = !DILocation(line: 172, column: 10, scope: !2424, inlinedAt: !2472)
!2478 = !DILocation(line: 0, scope: !2424, inlinedAt: !2472)
!2479 = !DILocation(line: 175, column: 3, scope: !2424, inlinedAt: !2472)
!2480 = !DILocation(line: 175, column: 13, scope: !2424, inlinedAt: !2472)
!2481 = !DILocation(line: 26, column: 46, scope: !1826, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 175, column: 12, scope: !2424, inlinedAt: !2472)
!2483 = !DILocation(line: 26, column: 58, scope: !1826, inlinedAt: !2482)
!2484 = !DILocation(line: 26, column: 19, scope: !1826, inlinedAt: !2482)
!2485 = !DILocation(line: 172, column: 6, scope: !2424, inlinedAt: !2472)
!2486 = !DILocation(line: 223, column: 11, scope: !2378, inlinedAt: !2386)
!2487 = !DILocation(line: 223, column: 6, scope: !2378, inlinedAt: !2386)
!2488 = !DILocation(line: 223, scope: !2378, inlinedAt: !2386)
!2489 = !DILocation(line: 223, column: 26, scope: !2378, inlinedAt: !2386)
!2490 = !DILocation(line: 224, column: 6, scope: !2378, inlinedAt: !2386)
!2491 = !DILocation(line: 224, column: 11, scope: !2378, inlinedAt: !2386)
!2492 = !DILocation(line: 224, column: 8, scope: !2378, inlinedAt: !2386)
!2493 = !DILocation(line: 225, column: 14, scope: !2378, inlinedAt: !2386)
!2494 = !DILocation(line: 225, column: 22, scope: !2378, inlinedAt: !2386)
!2495 = !DILocation(line: 225, column: 43, scope: !2378, inlinedAt: !2386)
!2496 = !DILocalVariable(name: "start", arg: 1, scope: !2497, file: !1533, line: 51, type: !21)
!2497 = distinct !DISubprogram(name: "runtime.markRoots", linkageName: "runtime.markRoots", scope: !1533, file: !1533, line: 51, type: !2498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2500)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!21, !21}
!2500 = !{!2496, !2501}
!2501 = !DILocalVariable(name: "end", arg: 2, scope: !2497, file: !1533, line: 51, type: !21)
!2502 = !DILocation(line: 52, column: 17, scope: !2497, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 225, column: 13, scope: !2378, inlinedAt: !2386)
!2504 = !DILocation(line: 52, column: 24, scope: !2497, inlinedAt: !2503)
!2505 = !DILocation(line: 52, column: 16, scope: !2497, inlinedAt: !2503)
!2506 = !DILocation(line: 223, column: 38, scope: !2378, inlinedAt: !2386)
!2507 = !DILocation(line: 223, column: 46, scope: !2378, inlinedAt: !2386)
!2508 = !DILocation(line: 223, column: 34, scope: !2378, inlinedAt: !2386)
!2509 = !DILocation(line: 223, column: 24, scope: !2378, inlinedAt: !2386)
!2510 = !DILocation(line: 230, column: 18, scope: !2378, inlinedAt: !2386)
!2511 = !DILocalVariable(name: "found", arg: 1, scope: !2512, file: !2513, line: 95, type: !346)
!2512 = distinct !DISubprogram(name: "runtime.findGlobals", linkageName: "runtime.findGlobals", scope: !2513, file: !2513, line: 95, type: !2514, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2516)
!2513 = !DIFile(filename: "os_linux.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!346}
!2516 = !{!2511, !2517, !2518, !2519, !2532, !2533, !2534, !2541, !2542}
!2517 = !DILocalVariable(name: "headerPtr", scope: !2512, file: !2513, line: 103, type: !9)
!2518 = !DILocalVariable(name: "i", scope: !2512, file: !2513, line: 104, type: !1989)
!2519 = !DILocalVariable(name: "header", scope: !2512, file: !2513, line: 111, type: !2520)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64, align: 64, dwarfAddressSpace: 0)
!2521 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader64", baseType: !2522)
!2522 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !2523)
!2523 = !{!2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_type", baseType: !43, size: 32, align: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !43, size: 32, align: 32, offset: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "offset", baseType: !21, size: 64, align: 64, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", baseType: !21, size: 64, align: 64, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", baseType: !21, size: 64, align: 64, offset: 192)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "filesz", baseType: !21, size: 64, align: 64, offset: 256)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", baseType: !21, size: 64, align: 64, offset: 320)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !21, size: 64, align: 64, offset: 384)
!2532 = !DILocalVariable(name: "start", scope: !2512, file: !2513, line: 113, type: !21)
!2533 = !DILocalVariable(name: "end", scope: !2512, file: !2513, line: 114, type: !21)
!2534 = !DILocalVariable(name: "header", scope: !2512, file: !2513, line: 118, type: !2535)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64, align: 64, dwarfAddressSpace: 0)
!2536 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader32", baseType: !2537)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !2538)
!2538 = !{!2524, !2526, !2527, !2528, !2529, !2530, !2539, !2540}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !43, size: 32, align: 32, offset: 384)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !21, size: 64, align: 64, offset: 448)
!2541 = !DILocalVariable(name: "start", scope: !2512, file: !2513, line: 120, type: !21)
!2542 = !DILocalVariable(name: "end", scope: !2512, file: !2513, line: 121, type: !21)
!2543 = !DILocation(line: 95, column: 6, scope: !2512, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 16, column: 13, scope: !2545, inlinedAt: !2546)
!2545 = distinct !DISubprogram(name: "runtime.gcScanGlobals", linkageName: "internal/task.gcScanGlobals", scope: !2388, file: !2388, line: 15, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492)
!2546 = distinct !DILocation(line: 233, column: 15, scope: !2378, inlinedAt: !2386)
!2547 = !DILocation(line: 103, column: 2, scope: !2512, inlinedAt: !2544)
!2548 = !DILocation(line: 104, column: 6, scope: !2512, inlinedAt: !2544)
!2549 = !DILocation(line: 104, column: 33, scope: !2512, inlinedAt: !2544)
!2550 = !DILocation(line: 104, column: 16, scope: !2512, inlinedAt: !2544)
!2551 = !DILocation(line: 0, scope: !2512, inlinedAt: !2544)
!2552 = !DILocation(line: 103, column: 80, scope: !2512, inlinedAt: !2544)
!2553 = !DILocation(line: 103, column: 67, scope: !2512, inlinedAt: !2544)
!2554 = !DILocation(line: 103, column: 29, scope: !2512, inlinedAt: !2544)
!2555 = !DILocation(line: 112, column: 14, scope: !2512, inlinedAt: !2544)
!2556 = !DILocation(line: 104, column: 14, scope: !2512, inlinedAt: !2544)
!2557 = !DILocation(line: 111, column: 36, scope: !2512, inlinedAt: !2544)
!2558 = !DILocation(line: 112, column: 7, scope: !2512, inlinedAt: !2544)
!2559 = !DILocation(line: 112, column: 20, scope: !2512, inlinedAt: !2544)
!2560 = !DILocation(line: 112, column: 34, scope: !2512, inlinedAt: !2544)
!2561 = !DILocation(line: 112, column: 41, scope: !2512, inlinedAt: !2544)
!2562 = !DILocation(line: 112, column: 46, scope: !2512, inlinedAt: !2544)
!2563 = !DILocation(line: 112, column: 52, scope: !2512, inlinedAt: !2544)
!2564 = !DILocation(line: 113, column: 14, scope: !2512, inlinedAt: !2544)
!2565 = !DILocation(line: 113, column: 21, scope: !2512, inlinedAt: !2544)
!2566 = !DILocation(line: 115, column: 5, scope: !2512, inlinedAt: !2544)
!2567 = !DILocation(line: 115, column: 11, scope: !2512, inlinedAt: !2544)
!2568 = !DILocation(line: 115, column: 18, scope: !2512, inlinedAt: !2544)
!2569 = !DILocation(line: 114, column: 27, scope: !2512, inlinedAt: !2544)
!2570 = !DILocation(line: 114, column: 18, scope: !2512, inlinedAt: !2544)
!2571 = !DILocation(line: 52, column: 17, scope: !2497, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 115, column: 10, scope: !2512, inlinedAt: !2544)
!2573 = !DILocation(line: 52, column: 24, scope: !2497, inlinedAt: !2572)
!2574 = !DILocation(line: 52, column: 16, scope: !2497, inlinedAt: !2572)
!2575 = !DILocation(line: 125, column: 26, scope: !2512, inlinedAt: !2544)
!2576 = !DILocation(line: 125, column: 48, scope: !2512, inlinedAt: !2544)
!2577 = !DILocation(line: 125, column: 25, scope: !2512, inlinedAt: !2544)
!2578 = !DILocation(line: 125, column: 3, scope: !2512, inlinedAt: !2544)
!2579 = !DILocation(line: 104, column: 41, scope: !2512, inlinedAt: !2544)
!2580 = !DILocation(line: 104, column: 21, scope: !2512, inlinedAt: !2544)
!2581 = !DILocation(line: 49, column: 2, scope: !2375)
!2582 = distinct !DISubprogram(name: "runtime.scanstack", linkageName: "tinygo_scanstack", scope: !2388, file: !2388, line: 23, type: !2583, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2584)
!2583 = !DISubroutineType(types: !2013)
!2584 = !{!2585}
!2585 = !DILocalVariable(name: "sp", arg: 1, scope: !2582, file: !2388, line: 23, type: !21)
!2586 = !DILocation(line: 23, column: 6, scope: !2582)
!2587 = !DILocation(line: 24, column: 12, scope: !2582)
!2588 = !DILocation(line: 62, column: 34, scope: !1878, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 290, column: 16, scope: !2590, inlinedAt: !2591)
!2590 = distinct !DISubprogram(name: "internal/task.StackTop", linkageName: "internal/task.StackTop", scope: !2, file: !2, line: 289, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1458)
!2591 = distinct !DILocation(line: 24, column: 29, scope: !2582)
!2592 = !DILocation(line: 62, column: 2, scope: !1878, inlinedAt: !2589)
!2593 = !DILocation(line: 63, column: 5, scope: !1878, inlinedAt: !2589)
!2594 = !DILocation(line: 63, column: 7, scope: !1878, inlinedAt: !2589)
!2595 = !DILocation(line: 0, scope: !1878, inlinedAt: !2589)
!2596 = !DILocation(line: 64, column: 15, scope: !1878, inlinedAt: !2589)
!2597 = !DILocation(line: 66, column: 9, scope: !1878, inlinedAt: !2589)
!2598 = !DILocation(line: 290, column: 25, scope: !2590, inlinedAt: !2591)
!2599 = !DILocation(line: 51, column: 6, scope: !2497, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 24, column: 11, scope: !2582)
!2601 = !DILocation(line: 52, column: 17, scope: !2497, inlinedAt: !2600)
!2602 = !DILocation(line: 52, column: 24, scope: !2497, inlinedAt: !2600)
!2603 = !DILocation(line: 52, column: 16, scope: !2497, inlinedAt: !2600)
!2604 = !DILocation(line: 25, column: 2, scope: !2582)
!2605 = distinct !DISubprogram(name: "runtime.divideByZeroPanic", linkageName: "runtime.divideByZeroPanic", scope: !102, file: !102, line: 226, type: !2065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492)
!2606 = !DILocation(line: 227, column: 30, scope: !2605)
!2607 = !DILocation(line: 227, column: 16, scope: !2605)
!2608 = !DILocation(line: 228, column: 2, scope: !2605)
!2609 = distinct !DISubprogram(name: "runtime.main", linkageName: "main", scope: !128, file: !128, line: 80, type: !2610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2612)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!60, !131}
!2612 = !{!2613, !2614, !2615, !2616, !2617}
!2613 = !DILocalVariable(name: "argc", arg: 1, scope: !2609, file: !128, line: 80, type: !60)
!2614 = !DILocalVariable(name: "argv", arg: 2, scope: !2609, file: !128, line: 80, type: !131)
!2615 = !DILocalVariable(name: "main_argc", scope: !2609, file: !128, line: 105, type: !60)
!2616 = !DILocalVariable(name: "main_argv", scope: !2609, file: !128, line: 106, type: !131)
!2617 = !DILocalVariable(name: "stackTop", scope: !2609, file: !128, line: 75, type: !21)
!2618 = !DILocation(line: 80, column: 6, scope: !2609)
!2619 = !DILocation(line: 87, column: 14, scope: !2609)
!2620 = !DILocation(line: 87, column: 2, scope: !2609)
!2621 = !DILocation(line: 88, column: 14, scope: !2609)
!2622 = !DILocation(line: 88, column: 2, scope: !2609)
!2623 = !DILocation(line: 92, column: 31, scope: !2609)
!2624 = !DILocation(line: 58, column: 6, scope: !1889, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 27, column: 26, scope: !2626, inlinedAt: !2628)
!2626 = distinct !DISubprogram(name: "runtime.getCurrentStackPointer", linkageName: "runtime.getCurrentStackPointer", scope: !2627, file: !2627, line: 26, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492)
!2627 = !DIFile(filename: "arch_amd64.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2628 = distinct !DILocation(line: 97, column: 35, scope: !2609)
!2629 = !DILocation(line: 27, column: 16, scope: !2626, inlinedAt: !2628)
!2630 = !DILocation(line: 97, column: 2, scope: !2609)
!2631 = !DILocation(line: 98, column: 9, scope: !2609)
!2632 = !DILocation(line: 101, column: 2, scope: !2609)
!2633 = distinct !DISubprogram(name: "runtime.runMain", linkageName: "runtime.runMain", scope: !128, file: !128, line: 135, type: !2065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492)
!2634 = !DILocation(line: 137, column: 22, scope: !2635, inlinedAt: !2639)
!2635 = distinct !DISubprogram(name: "runtime.hardwareRand", linkageName: "runtime.hardwareRand", scope: !2513, file: !2513, line: 137, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2636)
!2636 = !{!2637, !2638}
!2637 = !DILocalVariable(name: "read", scope: !2635, file: !2513, line: 138, type: !43)
!2638 = !DILocalVariable(name: "n", scope: !2635, file: !2513, line: 137, type: !11)
!2639 = distinct !DILocation(line: 27, column: 22, scope: !2640, inlinedAt: !2645)
!2640 = distinct !DISubprogram(name: "runtime.initRand", linkageName: "runtime.initRand", scope: !1496, file: !1496, line: 26, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2641)
!2641 = !{!2642, !2643, !2644}
!2642 = !DILocalVariable(name: "r", scope: !2640, file: !1496, line: 27, type: !11)
!2643 = !DILocalVariable(name: "xorshift64State", scope: !2640, file: !1496, line: 52, type: !11)
!2644 = !DILocalVariable(name: "xorshift32State", scope: !2640, file: !1496, line: 32, type: !43)
!2645 = distinct !DILocation(line: 24, column: 10, scope: !2646, inlinedAt: !2649)
!2646 = distinct !DISubprogram(name: "runtime.run", linkageName: "runtime.run", scope: !142, file: !142, line: 23, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2647)
!2647 = !{!2648}
!2648 = !DILocalVariable(name: "stackTop", scope: !2646, file: !128, line: 75, type: !21)
!2649 = distinct !DILocation(line: 136, column: 5, scope: !2633)
!2650 = !DILocation(line: 138, column: 24, scope: !2635, inlinedAt: !2639)
!2651 = !DILocation(line: 138, column: 2, scope: !2635, inlinedAt: !2639)
!2652 = !DILocation(line: 139, column: 5, scope: !2635, inlinedAt: !2639)
!2653 = !DILocation(line: 0, scope: !2635, inlinedAt: !2639)
!2654 = !DILocation(line: 27, column: 2, scope: !2640, inlinedAt: !2645)
!2655 = !DILocation(line: 28, column: 27, scope: !2640, inlinedAt: !2645)
!2656 = !DILocation(line: 28, column: 2, scope: !2640, inlinedAt: !2645)
!2657 = !DILocation(line: 29, column: 27, scope: !2640, inlinedAt: !2645)
!2658 = !DILocation(line: 29, column: 2, scope: !2640, inlinedAt: !2645)
!2659 = !DILocation(line: 35, column: 12, scope: !2660, inlinedAt: !2661)
!2660 = distinct !DISubprogram(name: "runtime.initHeap", linkageName: "runtime.initHeap", scope: !1533, file: !1533, line: 34, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492)
!2661 = distinct !DILocation(line: 25, column: 10, scope: !2646, inlinedAt: !2649)
!2662 = !DILocation(line: 39, column: 8, scope: !2660, inlinedAt: !2661)
!2663 = !DILocation(line: 26, column: 12, scope: !2646, inlinedAt: !2649)
!2664 = !DILocalVariable(name: "sp", arg: 1, scope: !2665, file: !2, line: 55, type: !21)
!2665 = distinct !DISubprogram(name: "internal/task.Init", linkageName: "internal/task.Init", scope: !2, file: !2, line: 55, type: !2583, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1458, retainedNodes: !2666)
!2666 = !{!2664, !2667}
!2667 = !DILocalVariable(name: "stackTop", scope: !2665, file: !2, line: 24, type: !21)
!2668 = !DILocation(line: 55, column: 6, scope: !2665, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 26, column: 11, scope: !2646, inlinedAt: !2649)
!2670 = !DILocation(line: 56, column: 28, scope: !2665, inlinedAt: !2669)
!2671 = !DILocation(line: 56, column: 17, scope: !2665, inlinedAt: !2669)
!2672 = !DILocation(line: 57, column: 18, scope: !2665, inlinedAt: !2669)
!2673 = !DILocation(line: 28, column: 10, scope: !2646, inlinedAt: !2649)
!2674 = !DILocation(line: 137, column: 2, scope: !2633)
!2675 = distinct !DISubprogram(name: "runtime.tinygo_handle_fatal_signal", linkageName: "tinygo_handle_fatal_signal", scope: !128, file: !128, line: 148, type: !2676, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!60, !21}
!2678 = !{!2679, !2680}
!2679 = !DILocalVariable(name: "sig", arg: 1, scope: !2675, file: !128, line: 148, type: !60)
!2680 = !DILocalVariable(name: "addr", arg: 2, scope: !2675, file: !128, line: 148, type: !21)
!2681 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 14, column: 10, scope: !1985, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 158, column: 14, scope: !2675)
!2684 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 290, column: 9, scope: !2064, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 169, column: 10, scope: !2675)
!2687 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 90, column: 10, scope: !2689, inlinedAt: !2698)
!2689 = distinct !DISubprogram(name: "runtime.printuint64", linkageName: "runtime.printuint64", scope: !1602, file: !1602, line: 76, type: !2690, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2692)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!11}
!2692 = !{!2693, !2694, !2695, !2696, !2697}
!2693 = !DILocalVariable(name: "n", arg: 1, scope: !2689, file: !1602, line: 76, type: !11)
!2694 = !DILocalVariable(name: "firstdigit", scope: !2689, file: !1602, line: 79, type: !1989)
!2695 = !DILocalVariable(name: "i", scope: !2689, file: !1602, line: 80, type: !1989)
!2696 = !DILocalVariable(name: "digit", scope: !2689, file: !1602, line: 81, type: !160)
!2697 = !DILocalVariable(name: "i", scope: !2689, file: !1602, line: 89, type: !1989)
!2698 = distinct !DILocation(line: 62, column: 13, scope: !2699, inlinedAt: !2704)
!2699 = distinct !DISubprogram(name: "runtime.printuint32", linkageName: "runtime.printuint32", scope: !1602, file: !1602, line: 61, type: !2700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!43}
!2702 = !{!2703}
!2703 = !DILocalVariable(name: "n", arg: 1, scope: !2699, file: !1602, line: 61, type: !43)
!2704 = distinct !DILocation(line: 72, column: 13, scope: !2705, inlinedAt: !2708)
!2705 = distinct !DISubprogram(name: "runtime.printint32", linkageName: "runtime.printint32", scope: !1602, file: !1602, line: 65, type: !1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2706)
!2706 = !{!2707}
!2707 = !DILocalVariable(name: "n", arg: 1, scope: !2705, file: !1602, line: 65, type: !60)
!2708 = distinct !DILocation(line: 169, column: 10, scope: !2675)
!2709 = !DILocation(line: 76, column: 6, scope: !2689, inlinedAt: !2698)
!2710 = !DILocation(line: 77, column: 2, scope: !2689, inlinedAt: !2698)
!2711 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 69, column: 10, scope: !2705, inlinedAt: !2708)
!2713 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 290, column: 9, scope: !2064, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 167, column: 10, scope: !2675)
!2716 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 14, column: 10, scope: !1985, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 167, column: 10, scope: !2675)
!2719 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 290, column: 9, scope: !2064, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 165, column: 10, scope: !2675)
!2722 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 14, column: 10, scope: !1985, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 165, column: 10, scope: !2675)
!2725 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 290, column: 9, scope: !2064, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 163, column: 10, scope: !2675)
!2728 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 14, column: 10, scope: !1985, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 163, column: 10, scope: !2675)
!2731 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 14, column: 10, scope: !1985, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 160, column: 13, scope: !2675)
!2734 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 14, column: 10, scope: !1985, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 155, column: 14, scope: !2675)
!2737 = !DILocation(line: 148, column: 6, scope: !2675)
!2738 = !DILocation(line: 154, column: 5, scope: !2675)
!2739 = !DILocation(line: 154, column: 10, scope: !2675)
!2740 = !DILocation(line: 0, scope: !2675)
!2741 = !DILocation(line: 14, column: 13, scope: !1985, inlinedAt: !2736)
!2742 = !DILocation(line: 14, column: 11, scope: !1985, inlinedAt: !2736)
!2743 = !DILocation(line: 14, column: 12, scope: !1985, inlinedAt: !2736)
!2744 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2735)
!2745 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2735)
!2746 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2735)
!2747 = !DILocation(line: 13, column: 26, scope: !1985, inlinedAt: !2736)
!2748 = !DILocation(line: 13, column: 14, scope: !1985, inlinedAt: !2736)
!2749 = !DILocation(line: 13, column: 16, scope: !1985, inlinedAt: !2736)
!2750 = !DILocation(line: 0, scope: !1985, inlinedAt: !2736)
!2751 = !DILocation(line: 156, column: 12, scope: !2675)
!2752 = !DILocation(line: 156, column: 11, scope: !2675)
!2753 = !DILocation(line: 12, column: 6, scope: !1985, inlinedAt: !2733)
!2754 = !DILocation(line: 14, column: 13, scope: !1985, inlinedAt: !2733)
!2755 = !DILocation(line: 14, column: 11, scope: !1985, inlinedAt: !2733)
!2756 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2732)
!2757 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2732)
!2758 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2732)
!2759 = !DILocation(line: 13, column: 14, scope: !1985, inlinedAt: !2733)
!2760 = !DILocation(line: 161, column: 9, scope: !2675)
!2761 = !DILocation(line: 99, column: 6, scope: !1808, inlinedAt: !2762)
!2762 = !DILocation(line: 157, column: 29, scope: !1797, inlinedAt: !2763)
!2763 = !DILocation(line: 33, column: 27, scope: !1791, inlinedAt: !2764)
!2764 = !DILocation(line: 139, column: 16, scope: !2765, inlinedAt: !2740)
!2765 = distinct !DISubprogram(name: "runtime.printlock", linkageName: "runtime.printlock", scope: !142, file: !142, line: 138, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492)
!2766 = !DILocation(line: 33, column: 5, scope: !1791, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 139, column: 16, scope: !2765, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 163, column: 10, scope: !2675)
!2769 = !DILocation(line: 157, column: 31, scope: !1797, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 33, column: 27, scope: !1791, inlinedAt: !2767)
!2771 = !DILocation(line: 157, column: 36, scope: !1797, inlinedAt: !2770)
!2772 = !DILocation(line: 157, column: 41, scope: !1797, inlinedAt: !2770)
!2773 = !DILocation(line: 99, column: 6, scope: !1808, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 157, column: 29, scope: !1797, inlinedAt: !2770)
!2775 = !DILocation(line: 0, scope: !1791, inlinedAt: !2767)
!2776 = !DILocation(line: 43, column: 6, scope: !1791, inlinedAt: !2767)
!2777 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 43, column: 18, scope: !1791, inlinedAt: !2767)
!2779 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !2778)
!2780 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !2778)
!2782 = !DILocation(line: 43, column: 22, scope: !1791, inlinedAt: !2767)
!2783 = !DILocation(line: 45, column: 3, scope: !1791, inlinedAt: !2767)
!2784 = !DILocation(line: 26, column: 46, scope: !1826, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 45, column: 15, scope: !1791, inlinedAt: !2767)
!2786 = !DILocation(line: 26, column: 58, scope: !1826, inlinedAt: !2785)
!2787 = !DILocation(line: 26, column: 19, scope: !1826, inlinedAt: !2785)
!2788 = !DILocation(line: 12, column: 6, scope: !1985, inlinedAt: !2730)
!2789 = !DILocation(line: 14, column: 13, scope: !1985, inlinedAt: !2730)
!2790 = !DILocation(line: 14, column: 11, scope: !1985, inlinedAt: !2730)
!2791 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2729)
!2792 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2729)
!2793 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2729)
!2794 = !DILocation(line: 13, column: 14, scope: !1985, inlinedAt: !2730)
!2795 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2726)
!2796 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2726)
!2797 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2726)
!2798 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 143, column: 18, scope: !2800, inlinedAt: !2801)
!2800 = distinct !DISubprogram(name: "runtime.printunlock", linkageName: "runtime.printunlock", scope: !142, file: !142, line: 142, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492)
!2801 = distinct !DILocation(line: 163, column: 10, scope: !2675)
!2802 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !2799)
!2804 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !2803)
!2805 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !2803)
!2807 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !2799)
!2808 = !DILocation(line: 0, scope: !1735, inlinedAt: !2799)
!2809 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !2799)
!2810 = !DILocation(line: 54, column: 19, scope: !1770, inlinedAt: !2811)
!2811 = !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !2812)
!2812 = !DILocation(line: 143, column: 18, scope: !2800, inlinedAt: !2740)
!2813 = !DILocation(line: 180, column: 7, scope: !2675)
!2814 = !DILocation(line: 180, column: 8, scope: !2675)
!2815 = !DILocation(line: 181, column: 2, scope: !2675)
!2816 = !DILocation(line: 33, column: 5, scope: !1791, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 139, column: 16, scope: !2765, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 165, column: 10, scope: !2675)
!2819 = !DILocation(line: 157, column: 31, scope: !1797, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 33, column: 27, scope: !1791, inlinedAt: !2817)
!2821 = !DILocation(line: 157, column: 36, scope: !1797, inlinedAt: !2820)
!2822 = !DILocation(line: 157, column: 41, scope: !1797, inlinedAt: !2820)
!2823 = !DILocation(line: 99, column: 6, scope: !1808, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 157, column: 29, scope: !1797, inlinedAt: !2820)
!2825 = !DILocation(line: 0, scope: !1791, inlinedAt: !2817)
!2826 = !DILocation(line: 43, column: 6, scope: !1791, inlinedAt: !2817)
!2827 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 43, column: 18, scope: !1791, inlinedAt: !2817)
!2829 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !2828)
!2830 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !2828)
!2832 = !DILocation(line: 43, column: 22, scope: !1791, inlinedAt: !2817)
!2833 = !DILocation(line: 45, column: 3, scope: !1791, inlinedAt: !2817)
!2834 = !DILocation(line: 26, column: 46, scope: !1826, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 45, column: 15, scope: !1791, inlinedAt: !2817)
!2836 = !DILocation(line: 26, column: 58, scope: !1826, inlinedAt: !2835)
!2837 = !DILocation(line: 26, column: 19, scope: !1826, inlinedAt: !2835)
!2838 = !DILocation(line: 12, column: 6, scope: !1985, inlinedAt: !2724)
!2839 = !DILocation(line: 14, column: 13, scope: !1985, inlinedAt: !2724)
!2840 = !DILocation(line: 14, column: 11, scope: !1985, inlinedAt: !2724)
!2841 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2723)
!2842 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2723)
!2843 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2723)
!2844 = !DILocation(line: 13, column: 14, scope: !1985, inlinedAt: !2724)
!2845 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2720)
!2846 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2720)
!2847 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2720)
!2848 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 143, column: 18, scope: !2800, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 165, column: 10, scope: !2675)
!2851 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !2849)
!2853 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !2852)
!2854 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !2852)
!2856 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !2849)
!2857 = !DILocation(line: 0, scope: !1735, inlinedAt: !2849)
!2858 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !2849)
!2859 = !DILocation(line: 33, column: 5, scope: !1791, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 139, column: 16, scope: !2765, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 167, column: 10, scope: !2675)
!2862 = !DILocation(line: 157, column: 31, scope: !1797, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 33, column: 27, scope: !1791, inlinedAt: !2860)
!2864 = !DILocation(line: 157, column: 36, scope: !1797, inlinedAt: !2863)
!2865 = !DILocation(line: 157, column: 41, scope: !1797, inlinedAt: !2863)
!2866 = !DILocation(line: 99, column: 6, scope: !1808, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 157, column: 29, scope: !1797, inlinedAt: !2863)
!2868 = !DILocation(line: 0, scope: !1791, inlinedAt: !2860)
!2869 = !DILocation(line: 43, column: 6, scope: !1791, inlinedAt: !2860)
!2870 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 43, column: 18, scope: !1791, inlinedAt: !2860)
!2872 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !2871)
!2873 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !2871)
!2875 = !DILocation(line: 43, column: 22, scope: !1791, inlinedAt: !2860)
!2876 = !DILocation(line: 45, column: 3, scope: !1791, inlinedAt: !2860)
!2877 = !DILocation(line: 26, column: 46, scope: !1826, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 45, column: 15, scope: !1791, inlinedAt: !2860)
!2879 = !DILocation(line: 26, column: 58, scope: !1826, inlinedAt: !2878)
!2880 = !DILocation(line: 26, column: 19, scope: !1826, inlinedAt: !2878)
!2881 = !DILocation(line: 12, column: 6, scope: !1985, inlinedAt: !2718)
!2882 = !DILocation(line: 14, column: 13, scope: !1985, inlinedAt: !2718)
!2883 = !DILocation(line: 14, column: 11, scope: !1985, inlinedAt: !2718)
!2884 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2717)
!2885 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2717)
!2886 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2717)
!2887 = !DILocation(line: 13, column: 14, scope: !1985, inlinedAt: !2718)
!2888 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2714)
!2889 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2714)
!2890 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2714)
!2891 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 143, column: 18, scope: !2800, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 167, column: 10, scope: !2675)
!2894 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !2892)
!2896 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !2895)
!2897 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !2895)
!2899 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !2892)
!2900 = !DILocation(line: 0, scope: !1735, inlinedAt: !2892)
!2901 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !2892)
!2902 = !DILocation(line: 169, column: 11, scope: !2675)
!2903 = !DILocation(line: 33, column: 5, scope: !1791, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 139, column: 16, scope: !2765, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 169, column: 10, scope: !2675)
!2906 = !DILocation(line: 157, column: 31, scope: !1797, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 33, column: 27, scope: !1791, inlinedAt: !2904)
!2908 = !DILocation(line: 157, column: 36, scope: !1797, inlinedAt: !2907)
!2909 = !DILocation(line: 157, column: 41, scope: !1797, inlinedAt: !2907)
!2910 = !DILocation(line: 99, column: 6, scope: !1808, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 157, column: 29, scope: !1797, inlinedAt: !2907)
!2912 = !DILocation(line: 0, scope: !1791, inlinedAt: !2904)
!2913 = !DILocation(line: 43, column: 6, scope: !1791, inlinedAt: !2904)
!2914 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 43, column: 18, scope: !1791, inlinedAt: !2904)
!2916 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !2915)
!2917 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !2915)
!2919 = !DILocation(line: 43, column: 22, scope: !1791, inlinedAt: !2904)
!2920 = !DILocation(line: 45, column: 3, scope: !1791, inlinedAt: !2904)
!2921 = !DILocation(line: 26, column: 46, scope: !1826, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 45, column: 15, scope: !1791, inlinedAt: !2904)
!2923 = !DILocation(line: 26, column: 58, scope: !1826, inlinedAt: !2922)
!2924 = !DILocation(line: 26, column: 19, scope: !1826, inlinedAt: !2922)
!2925 = !DILocation(line: 68, column: 5, scope: !2705, inlinedAt: !2708)
!2926 = !DILocation(line: 68, column: 7, scope: !2705, inlinedAt: !2708)
!2927 = !DILocation(line: 0, scope: !2705, inlinedAt: !2708)
!2928 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2712)
!2929 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2712)
!2930 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2712)
!2931 = !DILocation(line: 70, column: 8, scope: !2705, inlinedAt: !2708)
!2932 = !DILocation(line: 70, column: 7, scope: !2705, inlinedAt: !2708)
!2933 = !DILocation(line: 70, column: 3, scope: !2705, inlinedAt: !2708)
!2934 = !DILocation(line: 65, column: 17, scope: !2705, inlinedAt: !2708)
!2935 = !DILocation(line: 72, column: 21, scope: !2705, inlinedAt: !2708)
!2936 = !DILocation(line: 62, column: 21, scope: !2699, inlinedAt: !2704)
!2937 = !DILocation(line: 62, column: 20, scope: !2699, inlinedAt: !2704)
!2938 = !DILocation(line: 79, column: 2, scope: !2689, inlinedAt: !2698)
!2939 = !DILocation(line: 80, column: 6, scope: !2689, inlinedAt: !2698)
!2940 = !DILocation(line: 0, scope: !2689, inlinedAt: !2698)
!2941 = !DILocation(line: 89, column: 23, scope: !2689, inlinedAt: !2698)
!2942 = !DILocation(line: 89, column: 25, scope: !2689, inlinedAt: !2698)
!2943 = !DILocation(line: 80, column: 15, scope: !2689, inlinedAt: !2698)
!2944 = !DILocation(line: 81, column: 17, scope: !2689, inlinedAt: !2698)
!2945 = !DILocation(line: 81, column: 18, scope: !2689, inlinedAt: !2698)
!2946 = !DILocation(line: 81, column: 16, scope: !2689, inlinedAt: !2698)
!2947 = !DILocation(line: 82, column: 15, scope: !2689, inlinedAt: !2698)
!2948 = !DILocation(line: 82, column: 9, scope: !2689, inlinedAt: !2698)
!2949 = !DILocation(line: 83, column: 12, scope: !2689, inlinedAt: !2698)
!2950 = !DILocation(line: 86, column: 3, scope: !2689, inlinedAt: !2698)
!2951 = !DILocation(line: 80, column: 23, scope: !2689, inlinedAt: !2698)
!2952 = !DILocation(line: 80, column: 17, scope: !2689, inlinedAt: !2698)
!2953 = !DILocation(line: 90, column: 18, scope: !2689, inlinedAt: !2698)
!2954 = !DILocation(line: 90, column: 17, scope: !2689, inlinedAt: !2698)
!2955 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2688)
!2956 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2688)
!2957 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2688)
!2958 = !DILocation(line: 89, column: 31, scope: !2689, inlinedAt: !2698)
!2959 = !DILocation(line: 92, column: 2, scope: !2689, inlinedAt: !2698)
!2960 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2685)
!2961 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2685)
!2962 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2685)
!2963 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 143, column: 18, scope: !2800, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 169, column: 10, scope: !2675)
!2966 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !2964)
!2968 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !2967)
!2969 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !2967)
!2971 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !2964)
!2972 = !DILocation(line: 0, scope: !1735, inlinedAt: !2964)
!2973 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !2964)
!2974 = !DILocation(line: 14, column: 13, scope: !1985, inlinedAt: !2683)
!2975 = !DILocation(line: 14, column: 11, scope: !1985, inlinedAt: !2683)
!2976 = !DILocation(line: 14, column: 12, scope: !1985, inlinedAt: !2683)
!2977 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2682)
!2978 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2682)
!2979 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2682)
!2980 = !DILocation(line: 13, column: 26, scope: !1985, inlinedAt: !2683)
!2981 = !DILocation(line: 13, column: 14, scope: !1985, inlinedAt: !2683)
!2982 = !DILocation(line: 13, column: 16, scope: !1985, inlinedAt: !2683)
!2983 = !DILocation(line: 0, scope: !1985, inlinedAt: !2683)
!2984 = distinct !DISubprogram(name: "runtime.tinygo_signal_handler", linkageName: "tinygo_signal_handler", scope: !128, file: !128, line: 420, type: !1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1492, retainedNodes: !2985)
!2985 = !{!2986, !2987, !2988, !2989}
!2986 = !DILocalVariable(name: "s", arg: 1, scope: !2984, file: !128, line: 420, type: !60)
!2987 = !DILocalVariable(name: "mask", scope: !2984, file: !128, line: 427, type: !43)
!2988 = !DILocalVariable(name: "val", scope: !2984, file: !128, line: 428, type: !43)
!2989 = !DILocalVariable(name: "swapped", scope: !2984, file: !128, line: 429, type: !47)
!2990 = !DILocation(line: 420, column: 6, scope: !2984)
!2991 = !DILocation(line: 0, scope: !2984)
!2992 = !DILocation(line: 427, column: 31, scope: !2984)
!2993 = !DILocation(line: 427, column: 3, scope: !2984)
!2994 = !DILocation(line: 147, column: 18, scope: !1924, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 428, column: 30, scope: !2984)
!2996 = !DILocation(line: 147, column: 53, scope: !1924, inlinedAt: !2995)
!2997 = !DILocation(line: 183, column: 6, scope: !1931, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 147, column: 51, scope: !1924, inlinedAt: !2995)
!2999 = !DILocation(line: 428, column: 3, scope: !2984)
!3000 = !DILocation(line: 429, column: 45, scope: !2984)
!3001 = !DILocation(line: 429, column: 50, scope: !2984)
!3002 = !DILocation(line: 429, column: 54, scope: !2984)
!3003 = !DILocation(line: 429, column: 53, scope: !2984)
!3004 = !DILocation(line: 156, column: 18, scope: !1797, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 429, column: 44, scope: !2984)
!3006 = !DILocation(line: 157, column: 31, scope: !1797, inlinedAt: !3005)
!3007 = !DILocation(line: 157, column: 36, scope: !1797, inlinedAt: !3005)
!3008 = !DILocation(line: 157, column: 41, scope: !1797, inlinedAt: !3005)
!3009 = !DILocation(line: 99, column: 6, scope: !1808, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 157, column: 29, scope: !1797, inlinedAt: !3005)
!3011 = !DILocation(line: 429, column: 3, scope: !2984)
!3012 = !DILocation(line: 430, column: 6, scope: !2984)
!3013 = !DILocation(line: 153, column: 18, scope: !1745, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 437, column: 21, scope: !2984)
!3015 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !3014)
!3016 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !3014)
!3017 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !3014)
!3019 = !DILocation(line: 437, column: 25, scope: !2984)
!3020 = !DILocation(line: 58, column: 17, scope: !1918, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 441, column: 22, scope: !2984)
!3022 = !DILocation(line: 59, column: 50, scope: !1918, inlinedAt: !3021)
!3023 = !DILocation(line: 59, column: 23, scope: !1918, inlinedAt: !3021)
!3024 = !DILocation(line: 443, column: 2, scope: !2984)
!3025 = distinct !DISubprogram(name: "main.f_gold", linkageName: "f_gold", scope: !3026, file: !3026, line: 4, type: !3027, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !3029)
!3026 = !DIFile(filename: "PROGRAM_TO_FIND_REMAINDER_WITHOUT_USING_MODULO_OR_OPERATOR_emit.go", directory: "/root/es/vert/vert/source_funs/go_transcoder/PROGRAM_TO_FIND_REMAINDER_WITHOUT_USING_MODULO_OR_OPERATOR")
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!1989, !1989}
!3029 = !{!3030, !3031}
!3030 = !DILocalVariable(name: "num", arg: 1, scope: !3025, file: !3026, line: 4, type: !1989)
!3031 = !DILocalVariable(name: "divisor", arg: 2, scope: !3025, file: !3026, line: 4, type: !1989)
!3032 = !DILocation(line: 4, column: 6, scope: !3025)
!3033 = !DILocation(line: 5, column: 9, scope: !3025)
!3034 = !DILocation(line: 5, column: 15, scope: !3025)
!3035 = !DILocation(line: 5, column: 24, scope: !3025)
!3036 = !DILocation(line: 5, column: 28, scope: !3025)
!3037 = !DILocation(line: 5, column: 27, scope: !3025)
!3038 = !DILocation(line: 5, column: 22, scope: !3025)
!3039 = !DILocation(line: 5, column: 13, scope: !3025)
!3040 = !DILocation(line: 5, column: 2, scope: !3025)
